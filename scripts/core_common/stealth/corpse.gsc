#using script_2d443451ce681a;
#using scripts\core_common\flag_shared;
#using scripts\core_common\stealth\enemy;
#using scripts\core_common\stealth\utility;
#using scripts\cp_common\util;

#namespace corpse;

// Namespace corpse/corpse
// Params 2, eflags: 0x0
// Checksum 0x503e29d0, Offset: 0x110
// Size: 0x14
function scalevolume( *ent, *vol )
{
    
}

#namespace namespace_cc4354b9;

// Namespace namespace_cc4354b9/corpse
// Params 0, eflags: 0x0
// Checksum 0xb2ee8469, Offset: 0x130
// Size: 0x42
function corpse_init_entity()
{
    assert( isdefined( self.stealth ) );
    self.stealth.corpse = spawnstruct();
}

// Namespace namespace_cc4354b9/corpse
// Params 0, eflags: 0x0
// Checksum 0x57de38f9, Offset: 0x180
// Size: 0xe4
function corpse_init_level()
{
    if ( isdefined( level.stealth ) && isdefined( level.stealth.corpse ) )
    {
        return;
    }
    
    level.stealth.corpse = spawnstruct();
    level.stealth.corpse.reset_time = 30;
    level.fngetcorpsearrayfunc = &ai::function_4f84c3ed;
    level namespace_979752dc::set_stealth_func( "saw_corpse", &corpse_seen );
    level namespace_979752dc::set_stealth_func( "found_corpse", &corpse_found );
    set_corpse_ranges_default();
}

// Namespace namespace_cc4354b9/corpse
// Params 0, eflags: 0x0
// Checksum 0xa68f3d83, Offset: 0x270
// Size: 0x64
function set_corpse_ranges_default()
{
    array[ #"sight_dist" ] = 600;
    array[ #"detect_dist" ] = 300;
    array[ #"found_dist" ] = 100;
    set_corpse_ranges( array );
}

// Namespace namespace_cc4354b9/corpse
// Params 1, eflags: 0x0
// Checksum 0xab4d29aa, Offset: 0x2e0
// Size: 0x66
function set_corpse_ranges( array )
{
    if ( !isdefined( array[ #"shadow_dist" ] ) )
    {
        array[ #"shadow_dist" ] = array[ #"found_dist" ];
    }
    
    level.stealth.corpse.dists = array;
}

// Namespace namespace_cc4354b9/corpse
// Params 0, eflags: 0x0
// Checksum 0x3d795d7b, Offset: 0x350
// Size: 0x74
function set_corpse_ignore()
{
    assert( isdefined( level.stealth ) );
    assert( isentity( self ) );
    level.stealth.ignore_corpse[ self getentitynumber() ] = self.origin;
}

// Namespace namespace_cc4354b9/corpse
// Params 0, eflags: 0x0
// Checksum 0x34acb71a, Offset: 0x3d0
// Size: 0x74
function set_corpse_entity()
{
    assert( isdefined( level.stealth ) );
    assert( isentity( self ) );
    level.stealth.additional_corpse[ self getentitynumber() ] = self;
}

// Namespace namespace_cc4354b9/corpse
// Params 1, eflags: 0x0
// Checksum 0x3a636a36, Offset: 0x450
// Size: 0x152
function corpse_check_shadow( origin )
{
    if ( !isdefined( self.in_shadow_origin ) || distancesquared( self.in_shadow_origin, origin ) > 1 )
    {
        self.in_shadow = undefined;
        
        if ( isdefined( level.var_5ca45f26 ) && isdefined( level.var_5ca45f26[ #"stealth_in_shadow" ] ) )
        {
            foreach ( trigger in level.var_5ca45f26[ #"stealth_in_shadow" ] )
            {
                if ( isdefined( trigger ) && trigger istouching( origin ) )
                {
                    self.in_shadow = 1;
                    break;
                }
            }
        }
        
        self.in_shadow_origin = origin;
    }
    
    return is_true( self.in_shadow );
}

// Namespace namespace_cc4354b9/corpse
// Params 0, eflags: 0x0
// Checksum 0xaaedcf90, Offset: 0x5b0
// Size: 0x874
function corpse_sight()
{
    if ( isdefined( self.stealth.corpse_nexttime ) && gettime() < self.stealth.corpse_nexttime )
    {
        return;
    }
    
    if ( level.stealth.var_69fc8bf2 >= 1 )
    {
        return;
    }
    
    if ( self flag::get( "stealth_hold_position" ) )
    {
        return;
    }
    
    if ( self.ignoreall )
    {
        return;
    }
    
    if ( is_true( self.stealth.corpse.investigating ) )
    {
        return;
    }
    
    if ( isdefined( self.stealth.corpse.ent ) )
    {
        self.stealth.corpse_nexttime = gettime() + 200;
    }
    else
    {
        self.stealth.corpse_nexttime = gettime() + 1500;
    }
    
    found_dist = level.stealth.corpse.dists[ #"found_dist" ];
    
    if ( isdefined( self.stealth.override_corpse_found_dist ) )
    {
        found_dist = self.stealth.override_corpse_found_dist;
    }
    
    sight_dist = level.stealth.corpse.dists[ #"sight_dist" ];
    
    if ( isdefined( self.stealth.override_corpse_sight_dist ) )
    {
        sight_dist = self.stealth.override_corpse_sight_dist;
    }
    
    detect_dist = level.stealth.corpse.dists[ #"detect_dist" ];
    
    if ( isdefined( self.stealth.override_corpse_detect_dist ) )
    {
        detect_dist = self.stealth.override_corpse_detect_dist;
    }
    
    var_9f3728b2 = sqr( found_dist );
    var_1adb66c8 = sqr( sight_dist );
    var_3ff1021a = sqr( detect_dist );
    check_dist = max( found_dist, max( sight_dist, detect_dist ) );
    corpses = [];
    
    if ( isdefined( level.fngetcorpsearrayfunc ) )
    {
        corpses = [[ level.fngetcorpsearrayfunc ]]( self.origin, check_dist );
    }
    
    level.stealth.var_69fc8bf2++;
    found_corpse = undefined;
    saw_corpse = undefined;
    
    foreach ( corpse in corpses )
    {
        corpseorigin = corpse namespace_979752dc::getcorpseorigin();
        corpseentnum = corpse getentitynumber();
        
        if ( isdefined( level.stealth.ignore_corpse ) && isdefined( level.stealth.ignore_corpse[ corpseentnum ] ) && distancesquared( level.stealth.ignore_corpse[ corpseentnum ], corpseorigin ) < sqr( 100 ) )
        {
            level.stealth.ignore_corpse[ corpseentnum ] = undefined;
            corpse.found = 1;
        }
        
        if ( isdefined( corpse.found ) )
        {
            continue;
        }
        
        distsq = distancesquared( self.origin, corpseorigin );
        
        if ( corpse corpse_check_shadow( corpseorigin ) )
        {
            assert( level.stealth.corpse.dists[ #"shadow_dist" ] <= check_dist );
            var_1adb66c8 = sqr( level.stealth.corpse.dists[ #"shadow_dist" ] );
            var_3ff1021a = var_1adb66c8;
        }
        
        if ( distsq < var_9f3728b2 )
        {
            if ( abs( self.origin[ 2 ] - corpseorigin[ 2 ] ) < 60 )
            {
                found_corpse = corpse;
                break;
            }
        }
        
        if ( isdefined( self.stealth.corpse.ent ) )
        {
            if ( self.stealth.corpse.ent == corpse )
            {
                continue;
            }
            
            var_db8d2405 = self.stealth.corpse.ent namespace_979752dc::getcorpseorigin();
            dist2sq = distancesquared( self.origin, var_db8d2405 );
            
            if ( dist2sq <= distsq )
            {
                continue;
            }
        }
        
        if ( distsq > var_1adb66c8 )
        {
            continue;
        }
        
        if ( corpseorigin[ 2 ] - self.origin[ 2 ] > 128 )
        {
            continue;
        }
        
        if ( distsq < var_3ff1021a )
        {
            if ( !isdefined( corpse.seen ) && self cansee( corpse ) )
            {
                saw_corpse = corpse;
                break;
            }
        }
        
        sight = anglestoforward( self gettagangles( "tag_eye" ) );
        var_b455e74a = vectornormalize( corpseorigin + ( 0, 0, 30 ) - self geteye() );
        
        if ( vectordot( sight, var_b455e74a ) > 0.55 )
        {
            if ( !isdefined( corpse.seen ) && self cansee( corpse ) )
            {
                saw_corpse = corpse;
                break;
            }
        }
    }
    
    if ( isdefined( found_corpse ) )
    {
        found_corpse.found = 1;
        
        if ( is_true( found_corpse.seen ) && isdefined( self.stealth.corpse.ent ) && self.stealth.corpse.ent == found_corpse )
        {
            self.stealth.patrol_react_last = gettime();
        }
        
        self function_a3fcf9e0( "found_corpse", found_corpse, found_corpse namespace_979752dc::getcorpseorigin() );
        return;
    }
    
    if ( isdefined( saw_corpse ) )
    {
        self thread corpse_seen_claim( saw_corpse );
        self function_a3fcf9e0( "saw_corpse", saw_corpse, saw_corpse namespace_979752dc::getcorpseorigin() );
    }
}

// Namespace namespace_cc4354b9/corpse
// Params 1, eflags: 0x0
// Checksum 0x3f3466e0, Offset: 0xe30
// Size: 0x11c
function corpse_found( event )
{
    self notify( #"corpse_found" );
    self endon( #"corpse_found" );
    self endon( #"death" );
    corpse = event.entity;
    corpseorigin = corpse namespace_979752dc::getcorpseorigin();
    
    if ( isdefined( self.stealth.corpse.ent ) )
    {
        self.stealth.corpse.ent.seen = undefined;
    }
    
    self.stealth.corpse.ent = corpse;
    self.stealth.bexaminerequested = 1;
    
    if ( isdefined( level.fnsetcorpseremovetimerfunc ) )
    {
        corpse [[ level.fnsetcorpseremovetimerfunc ]]( level.stealth.corpse.reset_time );
    }
}

// Namespace namespace_cc4354b9/corpse
// Params 1, eflags: 0x0
// Checksum 0xae0ff27a, Offset: 0xf58
// Size: 0x84
function corpse_seen( event )
{
    corpse = event.entity;
    corpseorigin = corpse namespace_979752dc::getcorpseorigin();
    self.stealth.corpse.origin = corpseorigin;
    self.stealth.bexaminerequested = 1;
    self thread corpse_seen_claim( corpse );
}

// Namespace namespace_cc4354b9/corpse
// Params 1, eflags: 0x0
// Checksum 0x31f650f7, Offset: 0xfe8
// Size: 0xdc
function corpse_seen_claim( corpse )
{
    self notify( #"corpse_seen_claim" );
    self endon( #"corpse_seen_claim" );
    
    if ( isdefined( self.stealth.corpse.ent ) )
    {
        self.stealth.corpse.ent.seen = undefined;
    }
    
    corpse.seen = 1;
    self.stealth.corpse.ent = corpse;
    self waittill( #"death" );
    
    if ( isdefined( corpse ) )
    {
        corpse.seen = undefined;
    }
    
    if ( isdefined( self ) )
    {
        self thread corpse_clear();
    }
}

// Namespace namespace_cc4354b9/corpse
// Params 0, eflags: 0x0
// Checksum 0x22536ff7, Offset: 0x10d0
// Size: 0x82
function corpse_clear()
{
    if ( isdefined( self.stealth.corpse ) )
    {
        if ( isdefined( self.stealth.corpse.ent ) )
        {
            self.stealth.corpse.ent.seen = undefined;
        }
        
        self.stealth.corpse.ent = undefined;
        self.stealth.corpse.investigating = undefined;
    }
}

// Namespace namespace_cc4354b9/corpse
// Params 0, eflags: 0x0
// Checksum 0xacd89fdf, Offset: 0x1160
// Size: 0x644
function suspicious_door_sighting()
{
    if ( !isdefined( self.stealth.suspicious_door ) )
    {
        self.stealth.suspicious_door = spawnstruct();
    }
    
    if ( isdefined( self.stealth.suspicious_door.nexttime ) && gettime() < self.stealth.suspicious_door.nexttime )
    {
        return;
    }
    
    if ( self flag::get( "stealth_hold_position" ) )
    {
        return;
    }
    
    if ( self.ignoreall )
    {
        return;
    }
    
    if ( is_true( self.stealth.suspicious_door.investigating ) )
    {
        return;
    }
    
    if ( isdefined( self.stealth.suspicious_door.ent ) )
    {
        self.stealth.suspicious_door.nexttime = gettime() + 100;
    }
    else
    {
        self.stealth.suspicious_door.nexttime = gettime() + 1000;
    }
    
    doors = level.stealth.suspicious_door.doors;
    found_door = undefined;
    saw_door = undefined;
    door = undefined;
    
    foreach ( door in doors )
    {
        doorentnum = door getentitynumber();
        
        if ( isdefined( door.found ) )
        {
            continue;
        }
        
        doororigin = door.origin;
        distsq = distancesquared( self.origin, doororigin );
        var_9f3728b2 = level.stealth.suspicious_door.found_distsqrd;
        var_1adb66c8 = level.stealth.suspicious_door.sight_distsqrd;
        var_3ff1021a = level.stealth.suspicious_door.detect_distsqrd;
        
        if ( distsq < var_9f3728b2 )
        {
            if ( abs( self.origin[ 2 ] - doororigin[ 2 ] ) < 60 )
            {
                found_door = door;
                break;
            }
        }
        
        if ( isdefined( self.stealth.suspicious_door.ent ) )
        {
            if ( self.stealth.suspicious_door.ent == door )
            {
                continue;
            }
            
            var_7e90842d = self.stealth.suspicious_door.ent.origin;
            dist2sq = distancesquared( self.origin, var_7e90842d );
            
            if ( dist2sq <= distsq )
            {
                continue;
            }
        }
        
        if ( distsq > var_1adb66c8 )
        {
            continue;
        }
        
        if ( doororigin[ 2 ] - self.origin[ 2 ] > 128 )
        {
            continue;
        }
        
        if ( distsq < var_3ff1021a )
        {
            if ( !isdefined( door.seen ) && self cansee( door ) && util::can_see_ai( door.origin, self, 250, getplayers()[ 0 ] ) )
            {
                saw_door = door;
                break;
            }
        }
        
        sight = anglestoforward( self gettagangles( "tag_eye" ) );
        var_385f9620 = vectornormalize( doororigin + ( 0, 0, 30 ) - self geteye() );
        
        if ( vectordot( sight, var_385f9620 ) > 0.55 )
        {
            if ( !isdefined( door.seen ) && self cansee( door ) && util::can_see_ai( door.origin, self, 250, getplayers()[ 0 ] ) )
            {
                saw_door = door;
                break;
            }
        }
    }
    
    if ( isdefined( found_door ) )
    {
        found_door.found = 1;
        spot = undefined;
        
        if ( is_true( found_door.seen ) && isdefined( self.stealth.suspicious_door.ent ) && self.stealth.suspicious_door.ent == found_door )
        {
            self.stealth.patrol_react_last = gettime();
        }
        
        if ( isdefined( door.cam_structs ) )
        {
            spot = door.cam_structs[ 0 ].origin;
        }
        else
        {
            spot = door.origin;
        }
        
        self function_a3fcf9e0( "suspicious_door", found_door, spot );
    }
}

// Namespace namespace_cc4354b9/corpse
// Params 1, eflags: 0x0
// Checksum 0xf0cb03c1, Offset: 0x17b0
// Size: 0x16c
function suspicious_door_found( event )
{
    door = event.entity;
    
    if ( isdefined( door.aiopener ) )
    {
        return;
    }
    
    door.aiopener = self;
    
    if ( isdefined( door.cam_structs ) && isdefined( door.cam_structs[ 0 ] ) )
    {
        spot = door.cam_structs[ 0 ].origin;
    }
    else
    {
        spot = door.origin;
    }
    
    point = getclosestpointonnavmesh( spot, 500, 16 );
    
    if ( !isdefined( point ) )
    {
        point = spot;
    }
    
    event.origin = spot + anglestoforward( ( 0, randomfloatrange( 0, 360 ), 0 ) ) * 75;
    event.investigate_pos = getclosestpointonnavmesh( event.origin, 500, 16 );
    
    if ( !isdefined( event.investigate_pos ) )
    {
        event.investigate_pos = event.origin;
    }
    
    self stealth_enemy::bt_set_stealth_state( "investigate", event );
}

