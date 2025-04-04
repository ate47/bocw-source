#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\contracts_shared;
#using scripts\core_common\gameobjects_shared;
#using scripts\core_common\scoreevents_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\values_shared;

#namespace spycraft_shared;

// Namespace spycraft_shared/spycraft_shared
// Params 0, eflags: 0x5
// Checksum 0x8d9d8a5c, Offset: 0x1a8
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"spycraft", &preinit, undefined, undefined, undefined );
}

// Namespace spycraft_shared/player_disconnect
// Params 1, eflags: 0x20
// Checksum 0xc46a1c2a, Offset: 0x1f0
// Size: 0x74
function event_handler[player_disconnect] codecallback_playerdisconnect( *eventstruct )
{
    if ( isdefined( level.spycraft.activeplayers[ self getentitynumber() ] ) )
    {
        arrayremoveindex( level.spycraft.activeplayers, self getentitynumber(), 1 );
    }
}

// Namespace spycraft_shared/spycraft_shared
// Params 0, eflags: 0x0
// Checksum 0x1e9d980c, Offset: 0x270
// Size: 0x42
function getscriptbundle()
{
    var_526b0ab0 = "spycraft_customsettings" + "_" + sessionmodeabbreviation();
    return getscriptbundle( var_526b0ab0 );
}

// Namespace spycraft_shared/spycraft_shared
// Params 0, eflags: 0x4
// Checksum 0x8764fca5, Offset: 0x2c0
// Size: 0xb4
function private preinit()
{
    register_clientfields();
    var_f4452fa1 = getscriptbundle();
    
    if ( !isdefined( var_f4452fa1 ) )
    {
        return;
    }
    
    level.spycraft = spawnstruct();
    level.spycraft.activeplayers = [];
    level.spycraft.var_b274cf54 = 0;
    callback::on_loadout( &on_loadout );
    level.var_1b900c1d = &function_1b900c1d;
}

// Namespace spycraft_shared/spycraft_shared
// Params 0, eflags: 0x4
// Checksum 0x9e967194, Offset: 0x380
// Size: 0x84
function private register_clientfields()
{
    clientfield::register( "vehicle", "" + #"hash_2d5a2cd7892a4fdc", 1, 1, "counter" );
    clientfield::register( "missile", "" + #"hash_2d5a2cd7892a4fdc", 1, 1, "counter" );
}

// Namespace spycraft_shared/spycraft_shared
// Params 2, eflags: 0x0
// Checksum 0xbbe85b54, Offset: 0x410
// Size: 0x44
function function_1b900c1d( weapon, var_5651313e )
{
    if ( !isdefined( level.var_ff6f539f ) )
    {
        level.var_ff6f539f = [];
    }
    
    level.var_ff6f539f[ weapon.name ] = var_5651313e;
}

// Namespace spycraft_shared/spycraft_shared
// Params 0, eflags: 0x0
// Checksum 0xdac8bfee, Offset: 0x460
// Size: 0x1e2
function on_loadout()
{
    if ( self hasperk( "specialty_spycraft" ) )
    {
        level.spycraft.activeplayers[ self getentitynumber() ] = self;
        
        if ( !is_true( level.spycraft.var_b274cf54 ) )
        {
            thread function_ad98ca86();
        }
        
        return;
    }
    
    if ( isdefined( level.spycraft.activeplayers[ self getentitynumber() ] ) )
    {
        arrayremoveindex( level.spycraft.activeplayers, self getentitynumber(), 1 );
        
        if ( isdefined( self.var_c1e0dff3 ) )
        {
            self.var_c1e0dff3 notify( #"hash_6e16842532e5aadc" );
            self.var_c1e0dff3 delete();
        }
        
        if ( isdefined( self.var_7faf6953 ) )
        {
            arrayremovevalue( self.var_7faf6953, undefined, 1 );
            
            foreach ( trigger in self.var_7faf6953 )
            {
                trigger setvisibletoplayer( self );
            }
            
            self.var_7faf6953 = undefined;
        }
    }
}

// Namespace spycraft_shared/spycraft_shared
// Params 0, eflags: 0x0
// Checksum 0xcc83556e, Offset: 0x650
// Size: 0x126
function function_ad98ca86()
{
    level.spycraft.var_b274cf54 = 1;
    var_f4452fa1 = getscriptbundle( "spycraft_customsettings" + "_" + sessionmodeabbreviation() );
    
    if ( !isdefined( var_f4452fa1 ) )
    {
        return;
    }
    
    while ( level.spycraft.activeplayers.size > 0 )
    {
        foreach ( player in level.spycraft.activeplayers )
        {
            function_3e9e9071( player, var_f4452fa1 );
        }
        
        waitframe( 1 );
    }
    
    level.spycraft.var_b274cf54 = 0;
}

// Namespace spycraft_shared/spycraft_shared
// Params 1, eflags: 0x4
// Checksum 0xa64ccef3, Offset: 0x780
// Size: 0xb2
function private findweapon( entity )
{
    if ( isdefined( entity.identifier_weapon ) )
    {
        return entity.identifier_weapon;
    }
    else if ( isdefined( entity.weapon ) )
    {
        return entity.weapon;
    }
    else if ( isdefined( entity.var_22a05c26 ) && isdefined( entity.var_22a05c26.ksweapon ) )
    {
        return entity.var_22a05c26.ksweapon;
    }
    else if ( isdefined( entity.defaultweapon ) )
    {
        return entity.defaultweapon;
    }
    
    return level.weaponnone;
}

// Namespace spycraft_shared/spycraft_shared
// Params 2, eflags: 0x4
// Checksum 0x9bbbb5f9, Offset: 0x840
// Size: 0xfe, Type: bool
function private function_808efdee( hacker, entity )
{
    if ( isplayer( entity ) )
    {
        return false;
    }
    
    entityweapon = findweapon( entity );
    
    if ( ( !isdefined( entityweapon ) || entityweapon == level.weaponnone ) && !isplayer( entity ) )
    {
        return false;
    }
    
    if ( entity.team == hacker.team )
    {
        return false;
    }
    
    if ( entity.team == #"spectator" )
    {
        return false;
    }
    
    if ( is_true( entity.canthack ) )
    {
        return false;
    }
    
    if ( !entityweapon.ishackable )
    {
        return false;
    }
    
    return true;
}

// Namespace spycraft_shared/spycraft_shared
// Params 2, eflags: 0x0
// Checksum 0x790be27, Offset: 0x948
// Size: 0x48c
function function_3e9e9071( player, var_f4452fa1 )
{
    if ( !isdefined( player.var_c1e0dff3 ) )
    {
        player.var_c1e0dff3 = spawn( "trigger_radius_use", ( 0, 0, -10000 ), 0, var_f4452fa1.var_b19ab876, var_f4452fa1.var_b19ab876, 1 );
        player.var_c1e0dff3.objid = gameobjects::get_next_obj_id();
        objective_add( player.var_c1e0dff3.objid, "invisible", player.var_c1e0dff3.origin, "spycraft_progress_bar" );
        objective_setinvisibletoall( player.var_c1e0dff3.objid );
        objective_setvisibletoplayer( player.var_c1e0dff3.objid, player );
        thread function_73e0b42c( player, player.var_c1e0dff3 );
        player.var_7faf6953 = [];
    }
    
    entities = getentitiesinradius( player.origin, var_f4452fa1.var_b19ab876 * 2 );
    closestdistance = 2147483647;
    var_dd56041e = undefined;
    
    foreach ( entity in entities )
    {
        if ( !function_808efdee( player, entity ) )
        {
            continue;
        }
        
        distancesqr = distancesquared( entity.origin, player.origin );
        
        if ( distancesqr < closestdistance )
        {
            closestdistance = distancesqr;
            var_dd56041e = entity;
        }
        
        if ( isdefined( entity.enemytrigger ) && !isdefined( player.var_7faf6953[ entity.enemytrigger getentitynumber() ] ) )
        {
            entity.enemytrigger setinvisibletoplayer( player );
            player.var_7faf6953[ entity.enemytrigger getentitynumber() ] = entity.enemytrigger;
        }
    }
    
    if ( !isdefined( var_dd56041e ) && player.var_8f044438 !== 1 )
    {
        player.var_c1e0dff3 triggerenable( 0 );
        player.var_c1e0dff3.targetentity = undefined;
        return;
    }
    
    if ( player.var_c1e0dff3.targetentity !== var_dd56041e && player.var_8f044438 !== 1 )
    {
        player.var_c1e0dff3 triggerenable( 1 );
        player.var_c1e0dff3.origin = var_dd56041e.origin + ( 0, 0, 50 );
        player.var_c1e0dff3.targetentity = var_dd56041e;
        player.var_c1e0dff3 setinvisibletoall();
        player.var_c1e0dff3 setvisibletoplayer( player );
        player.var_c1e0dff3 setcursorhint( "HINT_NOICON" );
        player.var_c1e0dff3 sethintstring( #"hash_60e73c729474ea50" );
        player.var_c1e0dff3 setteamfortrigger( player.team );
        player.var_c1e0dff3 function_49462027( 1, 1 );
    }
}

// Namespace spycraft_shared/spycraft_shared
// Params 2, eflags: 0x0
// Checksum 0x6303775, Offset: 0xde0
// Size: 0x10a
function function_fa58758( objid, var_288da8b5 )
{
    objective_setstate( objid, "active" );
    objective_setprogress( objid, 0 );
    objective_setplayerusing( objid, var_288da8b5 );
    var_288da8b5 val::set( #"spycraft", "freezecontrols" );
    var_288da8b5 val::set( #"spycraft", "disable_weapons" );
    var_288da8b5 val::set( #"spycraft", "disable_offhand_weapons" );
    var_288da8b5 playsound( #"hash_777a719a05382baf" );
    var_288da8b5.var_8f044438 = 1;
}

// Namespace spycraft_shared/spycraft_shared
// Params 4, eflags: 0x0
// Checksum 0x312cad54, Offset: 0xef8
// Size: 0x10e, Type: bool
function function_56762cd0( objid, var_288da8b5, hacktimems, targetentity )
{
    if ( hacktimems == 0 )
    {
        return true;
    }
    
    lasttime = gettime();
    currentprogress = 0;
    
    while ( isdefined( var_288da8b5 ) && isdefined( targetentity ) && function_808efdee( var_288da8b5, targetentity ) && isalive( var_288da8b5 ) && var_288da8b5 usebuttonpressed() && currentprogress < 1 )
    {
        currentprogress += ( gettime() - lasttime ) / hacktimems;
        objective_setprogress( objid, currentprogress );
        lasttime = gettime();
        waitframe( 1 );
    }
    
    return currentprogress >= 1;
}

// Namespace spycraft_shared/spycraft_shared
// Params 3, eflags: 0x0
// Checksum 0x3354ffbf, Offset: 0x1010
// Size: 0x154
function function_dce89a3e( entityweapon, targetentity, var_288da8b5 )
{
    targetentity.ishacked = 1;
    targetentity notify( #"hash_3a9500a4f045d0f3" );
    thread [[ level.var_ff6f539f[ entityweapon.name ] ]]( targetentity, var_288da8b5 );
    
    if ( !isdefined( targetentity.var_e2131267 ) )
    {
        targetentity.var_e2131267 = [];
    }
    
    playerentnum = var_288da8b5 getentitynumber();
    var_b1e8c44 = targetentity.var_e2131267[ playerentnum ];
    
    if ( var_b1e8c44 !== var_288da8b5.connect_time )
    {
        targetentity.var_e2131267[ playerentnum ] = var_288da8b5.connect_time;
        scoreevents::processscoreevent( #"hash_51f891de58ee2281", var_288da8b5, undefined, entityweapon );
        var_288da8b5 contracts::increment_contract( #"hash_43530a1351ecbed6" );
    }
    
    targetentity clientfield::increment( "" + #"hash_2d5a2cd7892a4fdc" );
}

// Namespace spycraft_shared/spycraft_shared
// Params 2, eflags: 0x0
// Checksum 0xa92c6c92, Offset: 0x1170
// Size: 0xee
function function_b82a484d( objid, var_288da8b5 )
{
    objective_setstate( objid, "invisible" );
    objective_clearallusing( objid );
    var_288da8b5 val::reset( #"spycraft", "freezecontrols" );
    var_288da8b5 val::reset( #"spycraft", "disable_weapons" );
    var_288da8b5 val::reset( #"spycraft", "disable_offhand_weapons" );
    var_288da8b5 stopsound( #"hash_777a719a05382baf" );
    var_288da8b5.var_8f044438 = 0;
}

// Namespace spycraft_shared/spycraft_shared
// Params 1, eflags: 0x0
// Checksum 0xf43d3c0f, Offset: 0x1268
// Size: 0x4c
function function_31502dd( *notifyhash )
{
    if ( !isdefined( self ) || !isdefined( self.var_c1e0dff3 ) )
    {
        return;
    }
    
    function_b82a484d( self.var_c1e0dff3.objid, self );
}

// Namespace spycraft_shared/spycraft_shared
// Params 3, eflags: 0x0
// Checksum 0x454535d2, Offset: 0x12c0
// Size: 0x154
function function_d3d359e7( objid, targetentity, var_288da8b5 )
{
    var_288da8b5 endoncallback( &function_31502dd, #"death" );
    entityweapon = findweapon( targetentity );
    
    if ( !isdefined( level.var_ff6f539f[ entityweapon.name ] ) )
    {
        return;
    }
    
    bundle = getscriptbundle();
    hacktimems = int( ( isdefined( bundle.var_43e4e625 ) ? bundle.var_43e4e625 : 0 ) * 1000 );
    function_fa58758( objid, var_288da8b5 );
    
    if ( function_56762cd0( objid, var_288da8b5, hacktimems, targetentity ) && isdefined( targetentity ) )
    {
        function_dce89a3e( entityweapon, targetentity, var_288da8b5 );
    }
    
    function_b82a484d( objid, var_288da8b5 );
}

// Namespace spycraft_shared/spycraft_shared
// Params 2, eflags: 0x0
// Checksum 0xc0c50bdd, Offset: 0x1420
// Size: 0xb8
function function_73e0b42c( player, trigger )
{
    trigger endon( #"hash_6e16842532e5aadc" );
    player endon( #"disconnect" );
    
    while ( true )
    {
        trigger waittill( #"trigger" );
        
        if ( !isdefined( trigger.targetentity ) )
        {
            continue;
        }
        
        if ( player.var_8f044438 === 1 )
        {
            continue;
        }
        
        thread function_d3d359e7( trigger.objid, trigger.targetentity, player );
    }
}

