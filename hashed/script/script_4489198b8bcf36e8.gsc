#using scripts\core_common\ai\archetype_cover_utility;
#using scripts\core_common\ai\archetype_damage_effects;
#using scripts\core_common\ai\archetype_damage_utility;
#using scripts\core_common\ai\archetype_human;
#using scripts\core_common\ai\archetype_human_cover;
#using scripts\core_common\ai\archetype_utility;
#using scripts\core_common\ai\systems\ai_blackboard;
#using scripts\core_common\ai\systems\ai_interface;
#using scripts\core_common\ai\systems\behavior_state_machine;
#using scripts\core_common\ai\systems\behavior_tree_utility;
#using scripts\core_common\ai\systems\init;
#using scripts\core_common\ai\systems\shared;
#using scripts\core_common\ai_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\laststand_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\status_effects\status_effect_util;
#using scripts\core_common\util_shared;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\gametypes\battlechatter;
#using scripts\weapons\smokegrenade;

#namespace namespace_631d466b;

// Namespace namespace_631d466b/namespace_54e681de
// Params 0, eflags: 0x1
// Checksum 0x39d92fc1, Offset: 0x530
// Size: 0x774
function autoexec registerbehaviorscriptfunctions()
{
    assert( isscriptfunctionptr( &function_79851615 ) );
    behaviortreenetworkutility::registerbehaviortreescriptapi( #"hash_47be693473e9692c", &function_79851615 );
    assert( isscriptfunctionptr( &function_7824de4c ) );
    behaviortreenetworkutility::registerbehaviortreescriptapi( #"hash_654ce4348b98bfde", &function_7824de4c );
    assert( isscriptfunctionptr( &function_77665587 ) );
    behaviortreenetworkutility::registerbehaviortreescriptapi( #"hash_6f04d954f4577817", &function_77665587 );
    assert( isscriptfunctionptr( &function_d1c62181 ) );
    behaviortreenetworkutility::registerbehaviortreescriptapi( #"hash_1ff6aa5c2e418bc8", &function_d1c62181 );
    assert( isscriptfunctionptr( &function_688012ea ) );
    behaviortreenetworkutility::registerbehaviortreescriptapi( #"hash_2b53ff05d478313b", &function_688012ea );
    assert( isscriptfunctionptr( &function_5b111fb9 ) );
    behaviortreenetworkutility::registerbehaviortreescriptapi( #"hash_15601f0c63b984a6", &function_5b111fb9 );
    assert( isscriptfunctionptr( &function_1a2603c6 ) );
    behaviortreenetworkutility::registerbehaviortreescriptapi( #"hash_6c3bde7eb37cdc74", &function_1a2603c6 );
    assert( isscriptfunctionptr( &function_80e2cf4f ) );
    behaviortreenetworkutility::registerbehaviortreescriptapi( #"hash_4a1bee71cf8bb157", &function_80e2cf4f );
    assert( isscriptfunctionptr( &function_73106246 ) );
    behaviortreenetworkutility::registerbehaviortreescriptapi( #"hash_bd15348dce98cd2", &function_73106246 );
    assert( isscriptfunctionptr( &function_252576e7 ) );
    behaviortreenetworkutility::registerbehaviortreescriptapi( #"hash_2f0462d43f653cec", &function_252576e7 );
    assert( isscriptfunctionptr( &function_10f4a44d ) );
    behaviortreenetworkutility::registerbehaviortreescriptapi( #"hash_18f1d5133fa14804", &function_10f4a44d );
    assert( isscriptfunctionptr( &function_910f816c ) );
    behaviortreenetworkutility::registerbehaviortreescriptapi( #"hash_503a578ed715f79d", &function_910f816c );
    assert( isscriptfunctionptr( &function_23828655 ) );
    behaviortreenetworkutility::registerbehaviortreescriptapi( #"hash_62e92c17d57b75c8", &function_23828655 );
    assert( isscriptfunctionptr( &function_7e8e056c ) );
    behaviortreenetworkutility::registerbehaviortreescriptapi( #"hash_2a3755babdf15b3c", &function_7e8e056c );
    assert( isscriptfunctionptr( &function_5364406f ) );
    behaviortreenetworkutility::registerbehaviortreescriptapi( #"hash_157f5426deea01a7", &function_5364406f );
    assert( isscriptfunctionptr( &function_1d556d92 ) );
    behaviortreenetworkutility::registerbehaviortreescriptapi( #"hash_cfcee0fc40b300b", &function_1d556d92 );
    assert( isscriptfunctionptr( &function_23828655 ) );
    behaviorstatemachine::registerbsmscriptapiinternal( #"hash_62e92c17d57b75c8", &function_23828655 );
    assert( isscriptfunctionptr( &function_d086ffd3 ) );
    behaviorstatemachine::registerbsmscriptapiinternal( #"hash_26f309f92f859f46", &function_d086ffd3 );
    callback::on_actor_damage( &function_d7041770 );
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 3, eflags: 0x0
// Checksum 0x604a6dd7, Offset: 0xcb0
// Size: 0x62
function function_6aedb63( goalpos, goalradius, goalheight = 128 )
{
    self.var_6d5624e1 = getclosestpointonnavmesh( goalpos, 400 );
    self.var_61ec1050 = goalradius;
    self.var_2295e0e8 = goalheight;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 0, eflags: 0x0
// Checksum 0x877e4e88, Offset: 0xd20
// Size: 0x1e
function function_3d1e9e1c()
{
    self.var_6d5624e1 = undefined;
    self.var_61ec1050 = undefined;
    self.var_2295e0e8 = undefined;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 2, eflags: 0x0
// Checksum 0xf057490e, Offset: 0xd48
// Size: 0xea
function function_efd568bc( goalpos, goalradius )
{
    self endon( #"death" );
    self.juggernautdisablemovebehavior = 1;
    self.var_419d64f3 = 1;
    waitframe( 2 );
    self ai::set_behavior_attribute( "demeanor", "combat" );
    self setdesiredspeed( 170 );
    self.ignorepathenemyfightdist = 1;
    self setgoal( goalpos, 0, goalradius, 128 );
    self waittill( #"goal" );
    self.ignorepathenemyfightdist = 0;
    self.juggernautdisablemovebehavior = 0;
    self.var_419d64f3 = undefined;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x0
// Checksum 0xd028d249, Offset: 0xe40
// Size: 0xba
function function_19eec9a6( enable )
{
    if ( enable )
    {
        self.ignoreall = 1;
        self.juggernautdisablemovebehavior = 1;
        self.var_419d64f3 = 1;
        waitframe( 2 );
        self ai::set_behavior_attribute( "demeanor", "cqb" );
        self setdesiredspeed( 50 );
        self.ignorepathenemyfightdist = 1;
        return;
    }
    
    self.ignoreall = 0;
    self.ignorepathenemyfightdist = 0;
    self.juggernautdisablemovebehavior = 0;
    self.var_419d64f3 = undefined;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x0
// Checksum 0x10b7515f, Offset: 0xf08
// Size: 0x5a
function function_f94404c3( stop )
{
    if ( stop )
    {
        self.juggernautdisablemovebehavior = 1;
        waitframe( 2 );
        self setgoal( self.origin, 0, 64, 128 );
        return;
    }
    
    self.juggernautdisablemovebehavior = 0;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x0
// Checksum 0xd2d25583, Offset: 0xf70
// Size: 0x96
function function_712776a6( enable )
{
    if ( enable )
    {
        self ai::set_behavior_attribute( #"demeanor", "patrol" );
        self.juggernautdisablemovebehavior = 1;
        self.var_419d64f3 = 1;
        return;
    }
    
    self ai::set_behavior_attribute( #"demeanor", "combat" );
    self.juggernautdisablemovebehavior = 0;
    self.var_419d64f3 = undefined;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x0
// Checksum 0xb25de592, Offset: 0x1010
// Size: 0x2e
function function_eaf1039d( timeinseconds )
{
    self.var_dc3a7edb = gettime() + timeinseconds * 1000;
    self.forcefire = 1;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 0, eflags: 0x0
// Checksum 0xa9e7b129, Offset: 0x1048
// Size: 0xe
function function_8ddee935()
{
    self.var_dc3a7edb = undefined;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x0
// Checksum 0xc5f12453, Offset: 0x1060
// Size: 0x4c
function function_57a875b1( use )
{
    if ( use )
    {
        self function_94575fdf();
        return;
    }
    
    self function_678d90a1( 0.001001 );
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x0
// Checksum 0xfdc04430, Offset: 0x10b8
// Size: 0x1a
function function_2709867b( target )
{
    self.var_2709867b = target;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x0
// Checksum 0xf3aed097, Offset: 0x10e0
// Size: 0x1a
function function_90791fca( target )
{
    self.var_90791fca = target;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 0, eflags: 0x4
// Checksum 0xc82b5436, Offset: 0x1108
// Size: 0x32, Type: bool
function private function_8fa0d5bb()
{
    return isdefined( self.weapon.weapclass ) && self.weapon.weapclass == "spread";
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 0, eflags: 0x4
// Checksum 0xee4ab8d8, Offset: 0x1148
// Size: 0x2e
function private function_d94c6dc3()
{
    goalheight = 128;
    
    if ( isdefined( self.var_2295e0e8 ) )
    {
        goalheight = self.var_2295e0e8;
    }
    
    return goalheight;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0xb9592a11, Offset: 0x1180
// Size: 0x9a
function private function_c13c8494( newweapon )
{
    self aiutility::setprimaryweapon( newweapon );
    self aiutility::setcurrentweapon( self.primaryweapon );
    self init::initweapon( self.primaryweapon );
    shared::placeweaponon( self.primaryweapon, "right" );
    self.bulletsinclip = self.weapon.clipsize;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 0, eflags: 0x4
// Checksum 0x1e54f8fb, Offset: 0x1228
// Size: 0x4e4
function private function_d4384490()
{
    self.var_64d9b494 = 2000;
    self.juggernautgoalradius = 25;
    self.juggernautoutsidegoalradius = 200;
    self.juggernautacceleration = 50;
    self.var_9faa712a = 1;
    self.var_9a235db6 = 2;
    self.juggernautrundelaymin = 1000;
    self.juggernautrundelaymax = 2000;
    self.var_537b6b78 = 5;
    self.var_80b41b50 = 1250;
    self.var_f9175e43 = 300;
    self.var_9a446bf6 = 10;
    self.var_a9e18506 = 100;
    self.var_e53dfc1f = 1000;
    self.var_c60594c9 = 2500;
    self.var_1fd9bbb3 = 500;
    self.var_331669d0 = 10;
    self.var_400176c9 = 5;
    self.var_1a382d61 = sqr( 400 );
    self.var_e35951cc = 15;
    self.var_eb130816 = 20;
    self.var_97dd5ffd = 0;
    self.var_83fcb9db = 2;
    self.var_5e31da98 = 90000;
    self.var_882d3d5 = "juggernaut_strafe_tacquery";
    self.var_f87cb2a2 = "juggernaut_strafe_avoid_tacquery";
    self.var_f722fc63 = "juggernaut_flank_tacquery";
    self.var_53d1f3ac = 400;
    self.var_e476f092 = 150;
    self.var_ea308069 = 100;
    self.var_7953693a = 10000;
    self.var_539db273 = 50;
    self.var_6e25b9eb = 1000;
    self.var_9d625afe = 5000;
    
    if ( self function_8fa0d5bb() )
    {
        self.juggernautwalkdist = 500;
        self.juggernautstopdistance = 300;
        self.var_bad61c0 = 1;
        self.var_a9d9477c = 1;
        self.var_c3d1e9bb = 1;
        self.var_400176c9 = 3;
        self.var_eb130816 = 5;
        self.var_97dd5ffd = 1;
        self.var_83fcb9db = 1;
        self.var_882d3d5 = "juggernaut_shotgun_tacquery";
        self.var_f87cb2a2 = "juggernaut_shotgun_avoid_tacquery";
        self.var_53d1f3ac = 150;
        self.var_539db273 = 70;
        self.var_5e31da98 = 10000;
        self.var_80b41b50 = 1000;
        shotgun = getweapon( #"hash_3140acb46e8a7fc4", "steadyaim", "sprintout", "reflex" );
        self function_c13c8494( shotgun );
    }
    else
    {
        self.juggernautwalkdist = 1400;
        self.juggernautstopdistance = 850;
        self.var_bad61c0 = 1;
        self.var_a9d9477c = 1;
        self.var_c3d1e9bb = 1;
        lmg = getweapon( #"hash_228ab35af2dae712", "reflex", "fastreload" );
        self function_c13c8494( lmg );
    }
    
    self.var_d3fb5ec5 = 1;
    self.var_c681e4c1 = 1;
    self.canbemeleed = 0;
    self.ignoresuppression = 1;
    self.var_d53c164a = gettime();
    self.var_3d0026c9 = "";
    self.var_1e901925 = 0;
    self.var_dfbbb21e = 0;
    aiutility::addaioverridedamagecallback( self, &function_be9a301c );
    self.var_fe72f961 = &function_defc3831;
    self.var_b7884e7f = &function_6ca9ecd8;
    self.var_ce7a311e = &function_5852aae6;
    
    if ( !isdefined( level.juggernauts ) )
    {
        level.juggernauts = [ self ];
    }
    else
    {
        array::add( level.juggernauts, self, 0 );
    }
    
    self thread function_af0da1ce();
    self thread function_17535560();
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 0, eflags: 0x4
// Checksum 0x29a05bf, Offset: 0x1718
// Size: 0x6c
function private function_af0da1ce()
{
    self waittill( #"death" );
    function_1eaaceab( level.juggernauts, 0 );
    
    if ( isdefined( self.var_27ee369f.shoottarget ) )
    {
        self.var_27ee369f.shoottarget delete();
    }
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 0, eflags: 0x4
// Checksum 0x6b7f5f50, Offset: 0x1790
// Size: 0x7a
function private function_17535560()
{
    self endon( #"death" );
    
    while ( true )
    {
        self waittill( #"damage" );
        wait 2;
        
        if ( self.health < self.var_6e25b9eb )
        {
            self battlechatter::function_4e7b6f6d( "combat", "announce", "juggernaut_lowhealth" );
            return;
        }
    }
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x76c0461b, Offset: 0x1818
// Size: 0xa6, Type: bool
function private function_f5711280( enemy )
{
    if ( is_true( self.juggernautdisablemovebehavior ) )
    {
        return false;
    }
    
    if ( isdefined( self.go_to_node ) )
    {
        return false;
    }
    
    if ( !isdefined( enemy ) )
    {
        return false;
    }
    
    if ( !issentient( enemy ) )
    {
        return false;
    }
    
    if ( self lastknowntime( enemy ) <= 0 )
    {
        return false;
    }
    
    if ( isdefined( self.meleeenemy ) )
    {
        self.juggernautlastmeleetime = gettime();
        return false;
    }
    
    return true;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0xd2b177c6, Offset: 0x18c8
// Size: 0x352
function private function_250ee533( enemy )
{
    canseeenemy = self cansee( enemy, 250 ) && self canshootenemy( 250 );
    
    if ( canseeenemy )
    {
        var_4da29fa1 = angleclamp180( vectortopitch( enemy.origin - self.origin ) );
        
        if ( var_4da29fa1 > self.upaimlimit || var_4da29fa1 < self.downaimlimit )
        {
            canseeenemy = 0;
        }
    }
    
    if ( canseeenemy && !is_true( self.var_104bdc52.var_56aa83a7 ) )
    {
        self.var_104bdc52.var_37e78afb = gettime();
    }
    else if ( !canseeenemy && is_true( self.var_104bdc52.var_56aa83a7 ) )
    {
        if ( !isdefined( self.var_104bdc52.var_eb33ee02 ) )
        {
            self.var_104bdc52.var_7664177c = gettime();
            self.var_104bdc52.var_eb33ee02 = randomfloatrange( self.var_9faa712a, self.var_9a235db6 );
        }
    }
    
    if ( !canseeenemy && ( !is_true( self.var_c3d1e9bb ) || self isatgoal() ) )
    {
        if ( !util::time_has_passed( self.var_104bdc52.var_7664177c, self.var_104bdc52.var_eb33ee02 ) )
        {
            canseeenemy = 1;
        }
    }
    
    if ( canseeenemy )
    {
        self.var_104bdc52.var_22215135 = undefined;
        self.var_104bdc52.var_eb33ee02 = undefined;
    }
    
    if ( !is_true( self.isspeaking ) )
    {
        if ( !is_true( self.var_39afae67 ) && canseeenemy )
        {
            self.var_39afae67 = 1;
            self battlechatter::function_9cb2c120( self, "enemy_contact", undefined, undefined, 1 );
        }
        else if ( isdefined( self.var_104bdc52.var_56aa83a7 ) && self.var_104bdc52.var_56aa83a7 != canseeenemy )
        {
            if ( canseeenemy )
            {
                self battlechatter::function_4e7b6f6d( "combat", "announce", "juggernaut_taunt_found" );
            }
            else
            {
                self battlechatter::function_4e7b6f6d( "combat", "announce", "juggernaut_taunt_hide" );
            }
        }
    }
    
    self.var_104bdc52.var_56aa83a7 = canseeenemy;
    return canseeenemy;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0xae78afd7, Offset: 0x1c28
// Size: 0x13e
function private function_3e7faeb8( cansee )
{
    if ( is_true( self.var_104bdc52.var_66d11fb1 ) && !cansee )
    {
        if ( !util::time_has_passed( self.var_104bdc52.var_7664177c, 2 ) )
        {
            cansee = 1;
        }
    }
    
    if ( !is_true( self.var_104bdc52.var_66d11fb1 ) && cansee )
    {
        self.var_104bdc52.var_ebf31abe = gettime();
    }
    
    accuracy = 0;
    
    if ( cansee )
    {
        assert( self.var_9d625afe > 0 );
        accuracy = min( ( gettime() - self.var_104bdc52.var_ebf31abe ) / self.var_9d625afe, 1 );
    }
    
    self.var_104bdc52.var_66d11fb1 = cansee;
    return accuracy;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x8cec4393, Offset: 0x1d70
// Size: 0x17e
function private function_eec699a0( position )
{
    self.var_104bdc52.targetoutsidegoal = 0;
    
    if ( !( isdefined( self.var_6d5624e1 ) && isdefined( self.var_61ec1050 ) ) )
    {
        return position;
    }
    
    if ( distancesquared( position, self.var_6d5624e1 ) <= sqr( self.var_61ec1050 ) )
    {
        return position;
    }
    
    self.var_104bdc52.targetoutsidegoal = 1;
    var_9482199b = position - self.var_6d5624e1;
    var_9482199b = vectornormalize( var_9482199b );
    newposition = self.var_6d5624e1 + self.var_61ec1050 * var_9482199b;
    var_db87855d = 150;
    verticaloffset = 70;
    startposition = newposition + ( 0, 0, verticaloffset - var_db87855d );
    droppedpos = function_9cc082d2( startposition, var_db87855d );
    
    if ( isdefined( droppedpos[ #"point" ] ) )
    {
        newposition = droppedpos[ #"point" ];
    }
    
    return newposition;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x4179cfd4, Offset: 0x1ef8
// Size: 0x1c2
function private function_8f80ae76( goalposition )
{
    var_e3dbb13d = 0;
    newgoalposition = goalposition;
    
    foreach ( other in level.juggernauts )
    {
        if ( other != self && isdefined( other.var_104bdc52.enemy ) && other.var_104bdc52.enemy == self.var_104bdc52.enemy && distancesquared( other.origin, goalposition ) < sqr( 128 ) )
        {
            var_ce7b333c = goalposition - other.origin;
            var_ce7b333c = ( var_ce7b333c[ 0 ], var_ce7b333c[ 1 ], 0 );
            newgoalposition += vectornormalize( var_ce7b333c ) * 128;
            var_e3dbb13d = 1;
        }
    }
    
    if ( var_e3dbb13d )
    {
        goalposition = self function_eec699a0( newgoalposition );
        goalposition = getclosestpointonnavmesh( goalposition, 500, 25 );
    }
    
    return goalposition;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 3, eflags: 0x4
// Checksum 0x81db2d45, Offset: 0x20c8
// Size: 0x1f6
function private function_e3a04b59( distancetotarget, currentspeed, walkdist )
{
    var_533af8f8 = !is_true( self.juggernautforcewalk ) && distancetotarget > walkdist;
    
    if ( var_533af8f8 && ( !isdefined( self.var_104bdc52.running ) || !self.var_104bdc52.running ) )
    {
        if ( !isdefined( self.var_104bdc52.rundelay ) )
        {
            self.var_104bdc52.rundelay = gettime() + randomintrange( self.juggernautrundelaymin, self.juggernautrundelaymax );
        }
        
        if ( self.var_104bdc52.rundelay > gettime() )
        {
            var_533af8f8 = 0;
        }
    }
    
    if ( !isdefined( self.var_104bdc52.running ) || self.var_104bdc52.runcooldown < gettime() && var_533af8f8 != self.var_104bdc52.running )
    {
        if ( var_533af8f8 )
        {
            if ( !isdefined( self.var_104bdc52.running ) || currentspeed > 0 )
            {
                self.var_104bdc52.runcooldown = gettime() + self.var_64d9b494;
                self.var_104bdc52.running = 1;
                self.var_104bdc52.targetmovespeed = 170;
                self.var_104bdc52.rundelay = undefined;
            }
            
            return;
        }
        
        self.var_104bdc52.runcooldown = gettime() + self.var_64d9b494;
        self.var_104bdc52.running = 0;
        self.var_104bdc52.targetmovespeed = self.var_539db273;
    }
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 3, eflags: 0x4
// Checksum 0xa47b736a, Offset: 0x22c8
// Size: 0x946
function private function_420d19e0( enemy, currentspeed, canseeenemy )
{
    curtime = gettime();
    
    if ( curtime >= self.var_104bdc52.nextupdatetime )
    {
        self.var_104bdc52.targetpos = function_eec699a0( enemy.origin );
        self.var_104bdc52.targetpos = getclosestpointonnavmesh( self.var_104bdc52.targetpos, 500, 25 );
        self getenemyinfo( enemy );
    }
    
    if ( !isdefined( self.var_104bdc52.targetpos ) )
    {
        self function_ff58993b();
        return;
    }
    
    var_2c6a6e68 = generatenavmeshpath( self.origin, self.var_104bdc52.targetpos, self );
    
    if ( isdefined( var_2c6a6e68 ) && isdefined( var_2c6a6e68.pathpoints ) )
    {
        distancetotarget = var_2c6a6e68.pathdistance;
    }
    else
    {
        distancetotarget = distance( self.origin, self.var_104bdc52.targetpos );
    }
    
    goalposition = undefined;
    var_2760151b = 1;
    var_11dbb576 = enemy.origin;
    
    if ( !canseeenemy || is_true( self.var_104bdc52.targetoutsidegoal ) )
    {
        var_d3e584bc = distance2dsquared( self.var_104bdc52.targetpos, self.origin ) < 4 && abs( self.var_104bdc52.targetpos[ 2 ] - self.origin[ 2 ] ) < 60;
        
        if ( var_d3e584bc || is_true( self.var_104bdc52.backup ) )
        {
            var_11dbb576 = self.var_104bdc52.targetpos;
        }
        else
        {
            self.var_104bdc52.stopping = 0;
            goalposition = self.var_104bdc52.targetpos;
            var_2760151b = 0;
        }
    }
    
    stopdistance = self.juggernautstopdistance;
    
    if ( isdefined( self.var_29aecd37 ) && self.var_29aecd37 > gettime() )
    {
        stopdistance = self.var_ea308069;
    }
    
    if ( var_2760151b )
    {
        var_ef8ccbb8 = stopdistance + 150;
        insmoke = 0;
        
        if ( isdefined( self.var_df0989d ) && isdefined( self.smokegrenadetime ) && isdefined( self.var_47a7add4 ) && isdefined( self.smokegrenadeposition ) && !util::time_has_passed( self.smokegrenadetime, self.var_47a7add4 ) && distance( self.smokegrenadeposition, self.origin ) < self.var_df0989d )
        {
            insmoke = 1;
        }
        
        if ( !insmoke && distance( self.origin, var_11dbb576 ) < 150 )
        {
            if ( !isdefined( self.var_104bdc52.backuptime ) )
            {
                self.var_104bdc52.backuptime = gettime() + 1000;
            }
            
            if ( self.var_104bdc52.backuptime < gettime() && !is_true( self.var_104bdc52.backup ) || curtime >= self.var_104bdc52.nextupdatetime )
            {
                var_d7231236 = self.origin - var_11dbb576;
                var_d7231236 = ( var_d7231236[ 0 ], var_d7231236[ 1 ], 0 );
                self.var_104bdc52.stopposition = var_11dbb576 + vectornormalize( var_d7231236 ) * 150;
                self.var_104bdc52.stopposition = getclosestpointonnavmesh( self.var_104bdc52.stopposition, 500, 25 );
                self.var_104bdc52.stopping = 1;
                self.var_104bdc52.backup = 1;
            }
        }
        else
        {
            self.var_104bdc52.backup = 0;
            self.var_104bdc52.backuptime = undefined;
        }
        
        if ( is_true( self.var_104bdc52.backup ) )
        {
            goalposition = self.var_104bdc52.stopposition;
        }
        else
        {
            if ( is_true( self.var_104bdc52.stopping ) )
            {
                testdistance = var_ef8ccbb8 + 50;
            }
            else
            {
                testdistance = stopdistance + 50;
            }
            
            if ( distancetotarget > testdistance )
            {
                self.var_104bdc52.stopping = 0;
                goalposition = self.var_104bdc52.targetpos;
            }
            else if ( !is_true( self.var_104bdc52.stopping ) )
            {
                self.var_104bdc52.stopping = 1;
                goalposition = self getposonpath( 50 );
                goalposition = self function_8f80ae76( goalposition );
                self.var_104bdc52.stopposition = goalposition;
            }
            else
            {
                goalposition = self.var_104bdc52.stopposition;
            }
        }
    }
    
    goalradius = self.juggernautgoalradius;
    
    if ( is_true( self.var_104bdc52.targetoutsidegoal ) && canseeenemy )
    {
        goalradius = self.juggernautoutsidegoalradius;
    }
    
    toenemy = enemy.origin - goalposition;
    faceangles = vectortoangles( toenemy );
    self setgoal( goalposition, 0, goalradius, self function_d94c6dc3(), faceangles );
    
    /#
        if ( getdvarint( #"hash_66f7f4e4b4f61e99", 0 ) == 1 )
        {
            sphere( goalposition, 5, ( 0, 0, 1 ), 1, 0, 10, 1 );
            line( self.origin, goalposition, ( 0, 0, 1 ), 1, 0, 1 );
            recordsphere( goalposition, 5, ( 0, 0, 1 ), "<dev string:x38>", self );
            recordline( self.origin, goalposition, ( 0, 0, 1 ), "<dev string:x38>", self );
        }
    #/
    
    self function_e3a04b59( distancetotarget, currentspeed, self.juggernautwalkdist );
    
    /#
        if ( getdvarint( #"hash_7362b665dd679b46", 0 ) == 1 )
        {
            text = "<dev string:x42>" + canseeenemy + "<dev string:x4e>" + distancetotarget + "<dev string:x59>" + self.juggernautwalkdist;
            print3d( self.origin + ( 0, 0, 60 ), text );
            record3dtext( text, self.origin + ( 0, 0, 60 ), ( 1, 1, 1 ), "<dev string:x38>", self, 1 );
        }
    #/
    
    if ( curtime >= self.var_104bdc52.nextupdatetime )
    {
        self.var_104bdc52.nextupdatetime = curtime + 500;
    }
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0xd74bead6, Offset: 0x2c18
// Size: 0x34c
function private function_7d6831f7( enemy )
{
    self.var_104bdc52.var_ca3a6f54 = undefined;
    self.var_104bdc52.var_15576457 = gettime();
    self.var_104bdc52.var_be1be68b = enemy.origin;
    self.var_104bdc52.var_ae99337 = undefined;
    self.var_104bdc52.var_d030bf7e = undefined;
    
    /#
        self.var_ffe5c2cc = 0;
    #/
    
    var_35d04e24 = self function_eec699a0( self.var_104bdc52.var_be1be68b );
    
    if ( isdefined( self.smokegrenadetime ) && isdefined( self.var_47a7add4 ) && !util::time_has_passed( self.smokegrenadetime, self.var_47a7add4 ) )
    {
        tacpoints = tacticalquery( self.var_f722fc63, enemy, self );
        self.var_104bdc52.var_ae99337 = 1;
    }
    else
    {
        if ( !( isdefined( self.var_61ec1050 ) && isdefined( self.var_6d5624e1 ) && isdefined( self.var_2295e0e8 ) ) )
        {
            cylinder = ai::t_cylinder( enemy.origin, 700, 64 );
            var_e0995b29 = enemy.origin;
        }
        else
        {
            cylinder = ai::t_cylinder( self.var_6d5624e1, self.var_61ec1050, self.var_2295e0e8 / 2 );
            var_e0995b29 = self.var_6d5624e1;
        }
        
        if ( isdefined( self.var_90791fca ) )
        {
            tacpoints = tacticalquery( self.var_f87cb2a2, enemy, self, self.var_90791fca, cylinder, var_e0995b29 );
        }
        else
        {
            tacpoints = tacticalquery( self.var_882d3d5, enemy, self, cylinder, var_e0995b29 );
        }
    }
    
    if ( !isdefined( tacpoints ) || tacpoints.size == 0 )
    {
        /#
            if ( getdvarint( #"hash_6683a7e64b5079ce", 0 ) )
            {
                record3dtext( "<dev string:x60>", self.origin, ( 1, 0, 0 ), "<dev string:x77>", self, 0.5 );
            }
        #/
        
        self.var_104bdc52.tacpoints = undefined;
        self.var_104bdc52.var_bd6cc3ff = undefined;
        return 0;
    }
    
    self.var_104bdc52.tacpoints = [];
    
    for (i = 0; i < 10 && i < tacpoints.size; i++) {
        self.var_104bdc52.tacpoints[ self.var_104bdc52.tacpoints.size ] = tacpoints[ i ];
    }
    
    self.var_104bdc52.var_bd6cc3ff = -1;
    return 1;
}

/#

    // Namespace namespace_631d466b/namespace_54e681de
    // Params 3, eflags: 0x4
    // Checksum 0xba375499, Offset: 0x2f70
    // Size: 0xdc, Type: dev
    function private function_daa06c57( tacpoint, success, message )
    {
        /#
            if ( !isdefined( self.var_ffe5c2cc ) )
            {
                self.var_ffe5c2cc = 0;
            }
        #/
        
        self.var_ffe5c2cc += 1;
        
        if ( getdvarint( #"hash_6683a7e64b5079ce", 0 ) )
        {
            color = ( 1, 0, 0 );
            
            if ( success )
            {
                color = ( 0, 1, 0 );
            }
            
            record3dtext( self.var_ffe5c2cc + "<dev string:x81>" + message, tacpoint.origin, color, "<dev string:x77>", self, 0.5 );
        }
    }

#/

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x3e74934b, Offset: 0x3058
// Size: 0x678, Type: bool
function private function_e2a815e9( enemy )
{
    if ( !( isdefined( self.var_104bdc52.tacpoints ) && isdefined( self.var_104bdc52.var_bd6cc3ff ) ) )
    {
        return true;
    }
    
    self.var_104bdc52.var_bd6cc3ff += 1;
    
    if ( self.var_104bdc52.var_bd6cc3ff >= self.var_104bdc52.tacpoints.size )
    {
        if ( is_true( self.var_104bdc52.var_d030bf7e ) )
        {
            tacpoint = self.var_104bdc52.tacpoints[ 0 ];
            self.var_104bdc52.var_bd6cc3ff = undefined;
            self.var_104bdc52.tacpoints = undefined;
            self.var_104bdc52.stopposition = tacpoint.origin;
            self.var_104bdc52.var_22215135 = 1;
            self.var_104bdc52.var_d030bf7e = undefined;
            toenemy = enemy.origin - tacpoint.origin;
            faceangles = vectortoangles( toenemy );
            self setgoal( tacpoint.origin, 0, self.juggernautgoalradius, self function_d94c6dc3(), faceangles );
            
            /#
                self function_daa06c57( tacpoint, 1, "<dev string:x87>" );
            #/
            
            return true;
        }
        else
        {
            self.var_104bdc52.var_d030bf7e = 1;
            self.var_104bdc52.var_bd6cc3ff = 0;
        }
    }
    
    tacpoint = self.var_104bdc52.tacpoints[ self.var_104bdc52.var_bd6cc3ff ];
    
    if ( !is_true( self.var_104bdc52.var_d030bf7e ) )
    {
        if ( isdefined( self.var_61ec1050 ) && isdefined( self.var_6d5624e1 ) && isdefined( self.var_2295e0e8 ) )
        {
            if ( distance( tacpoint.origin, self.var_6d5624e1 ) > self.var_61ec1050 )
            {
                /#
                    self function_daa06c57( tacpoint, 0, "<dev string:x9a>" );
                #/
                
                return true;
            }
            
            if ( abs( tacpoint.origin[ 2 ] - self.var_6d5624e1[ 2 ] ) > self.var_2295e0e8 )
            {
                /#
                    self function_daa06c57( tacpoint, 0, "<dev string:xb1>" );
                #/
                
                return true;
            }
        }
        
        if ( isdefined( self.var_104bdc52.var_960e4dad ) && distancesquared( self.var_104bdc52.var_960e4dad, tacpoint.origin ) <= 1 )
        {
            /#
                self function_daa06c57( tacpoint, 0, "<dev string:xc8>" );
            #/
            
            return true;
        }
        
        if ( self isposinclaimedlocation( tacpoint.origin ) )
        {
            /#
                self function_daa06c57( tacpoint, 0, "<dev string:xde>" );
            #/
            
            return true;
        }
        
        traceoffset = ( 0, 0, 30 );
        tracestart = tacpoint.origin + traceoffset;
        traceend = enemy.origin + traceoffset;
        
        if ( !is_true( self.var_104bdc52.var_ae99337 ) && !sighttracepassed( tracestart, traceend, 0, enemy, self ) )
        {
            /#
                self function_daa06c57( tacpoint, 0, "<dev string:xf2>" );
            #/
            
            return true;
        }
    }
    
    result = generatenavmeshpath( self.origin, tacpoint.origin, self );
    
    if ( !isdefined( result ) || !isdefined( result.pathpoints ) || result.pathpoints.size == 0 )
    {
        /#
            self function_daa06c57( tacpoint, 0, "<dev string:x10b>" );
        #/
        
        return true;
    }
    
    if ( isdefined( self.var_104bdc52.stopposition ) )
    {
        self.var_104bdc52.var_960e4dad = self.var_104bdc52.stopposition;
    }
    
    /#
        self function_daa06c57( tacpoint, 1, "<dev string:x11f>" );
    #/
    
    if ( is_true( self.var_104bdc52.var_d030bf7e ) )
    {
        self.var_104bdc52.var_22215135 = 1;
    }
    
    self.var_104bdc52.var_bd6cc3ff = undefined;
    self.var_104bdc52.tacpoints = undefined;
    self.var_104bdc52.var_d030bf7e = undefined;
    self.var_104bdc52.stopposition = tacpoint.origin;
    toenemy = enemy.origin - tacpoint.origin;
    faceangles = vectortoangles( toenemy );
    self setgoal( tacpoint.origin, 0, self.juggernautgoalradius, self function_d94c6dc3(), faceangles );
    return true;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 3, eflags: 0x4
// Checksum 0xb5012381, Offset: 0x36d8
// Size: 0x788, Type: bool
function private function_c3d1e9bb( enemy, currentspeed, canseeenemy )
{
    var_1d1d42ba = 0;
    
    if ( !isdefined( self.var_104bdc52.var_be1be68b ) )
    {
        var_1d1d42ba = 1;
    }
    else if ( !isdefined( self.var_104bdc52.var_15576457 ) || util::time_has_passed( self.var_104bdc52.var_15576457, self.var_400176c9 ) )
    {
        if ( !self isatgoal() )
        {
            self.var_104bdc52.var_ca3a6f54 = undefined;
            self.var_104bdc52.var_898f3134 = undefined;
            self.var_104bdc52.stopping = 0;
            
            if ( distancesquared( self.var_104bdc52.var_be1be68b, enemy.origin ) > self.var_1a382d61 )
            {
                var_1d1d42ba = 1;
            }
            else if ( isdefined( self.var_104bdc52.var_15576457 ) && util::time_has_passed( self.var_104bdc52.var_15576457, self.var_e35951cc ) )
            {
                var_1d1d42ba = 1;
            }
        }
        else
        {
            self.var_104bdc52.stopping = 1;
            
            if ( !isdefined( self.var_104bdc52.var_ca3a6f54 ) )
            {
                self.var_104bdc52.var_ca3a6f54 = gettime();
            }
            
            if ( isdefined( self.var_104bdc52.var_ca3a6f54 ) && util::time_has_passed( self.var_104bdc52.var_ca3a6f54, self.var_eb130816 ) )
            {
                var_1d1d42ba = 1;
            }
            else if ( !canseeenemy && !is_true( self.var_104bdc52.var_22215135 ) )
            {
                var_1d1d42ba = 1;
            }
            else if ( isdefined( self.var_104bdc52.var_ca3a6f54 ) && util::time_has_passed( self.var_104bdc52.var_ca3a6f54, self.var_83fcb9db ) )
            {
                if ( distancesquared( enemy.origin, self.origin ) < self.var_5e31da98 )
                {
                    var_1d1d42ba = 1;
                }
                else if ( isdefined( self.var_90791fca ) )
                {
                    var_e3483df5 = self.var_90791fca.origin;
                    
                    if ( isdefined( self.var_90791fca.var_104bdc52.stopposition ) )
                    {
                        var_e3483df5 = self.var_90791fca.var_104bdc52.stopposition;
                    }
                    
                    if ( distancesquared( var_e3483df5, self.origin ) < self.var_5e31da98 )
                    {
                        var_1d1d42ba = 1;
                    }
                }
            }
        }
    }
    
    if ( var_1d1d42ba )
    {
        if ( !self function_7d6831f7( enemy ) )
        {
            return false;
        }
    }
    
    var_86d1b13c = var_1d1d42ba && !isdefined( self.var_104bdc52.stopposition );
    
    /#
        if ( getdvarint( #"hash_6683a7e64b5079ce", 0 ) )
        {
            var_86d1b13c = 1;
        }
    #/
    
    if ( var_86d1b13c )
    {
        while ( isdefined( self.var_104bdc52.tacpoints ) )
        {
            if ( !function_e2a815e9( enemy ) )
            {
                return false;
            }
        }
    }
    else if ( !function_e2a815e9( enemy ) )
    {
        return false;
    }
    
    if ( !isdefined( self.var_104bdc52.stopposition ) )
    {
        return false;
    }
    
    walkdist = self.var_53d1f3ac;
    
    if ( !canseeenemy )
    {
        walkdist = self.var_e476f092;
    }
    
    distancetotarget = distance( self.var_104bdc52.stopposition, self.origin );
    self function_e3a04b59( distancetotarget, currentspeed, walkdist );
    toenemy = enemy.origin - self.var_104bdc52.stopposition;
    faceangles = vectortoangles( toenemy );
    self setgoal( self.var_104bdc52.stopposition, 0, self.juggernautgoalradius, self function_d94c6dc3(), faceangles );
    
    if ( canseeenemy && !is_true( self.var_104bdc52.var_898f3134 ) && isdefined( self.var_104bdc52.var_ca3a6f54 ) && util::time_has_passed( self.var_104bdc52.var_ca3a6f54, 5 ) )
    {
        self.var_104bdc52.var_898f3134 = 1;
        
        if ( !is_true( self.isspeaking ) )
        {
            self battlechatter::function_4e7b6f6d( "combat", "announce", "juggernaut_taunt_shoot" );
        }
    }
    
    /#
        if ( isdefined( self.var_104bdc52.stopposition ) && getdvarint( #"hash_66f7f4e4b4f61e99", 0 ) == 1 )
        {
            sphere( self.var_104bdc52.stopposition, 5, ( 0, 0, 1 ), 1, 0, 10, 1 );
            line( self.origin, self.var_104bdc52.stopposition, ( 0, 0, 1 ), 1, 0, 1 );
        }
        
        if ( getdvarint( #"hash_7362b665dd679b46", 0 ) == 1 )
        {
            text = "<dev string:x12a>" + canseeenemy + "<dev string:x4e>" + distance( self.origin, enemy.origin );
            print3d( self.origin + ( 0, 0, 60 ), text, ( 0, 1, 0 ) );
            record3dtext( text, self.origin + ( 0, 0, 60 ), ( 1, 1, 1 ), "<dev string:x38>", self, 1 );
        }
    #/
    
    return true;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 0, eflags: 0x4
// Checksum 0x1f56fdbc, Offset: 0x3e68
// Size: 0x7c
function private function_ff58993b()
{
    if ( isdefined( self.var_61ec1050 ) && isdefined( self.var_6d5624e1 ) && isdefined( self.var_2295e0e8 ) )
    {
        self setgoal( self.var_6d5624e1, 0, self.var_61ec1050, self.var_2295e0e8 );
        return;
    }
    
    self setgoal( self.origin, 0, 2000, 2000 );
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x788f98cd, Offset: 0x3ef0
// Size: 0x3c, Type: bool
function private function_1d556d92( entity )
{
    return !aiutility::shouldstopmoving( entity ) && btapi_locomotionbehaviorcondition( entity );
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x1248f3a4, Offset: 0x3f38
// Size: 0xca0
function private function_79851615( *entity )
{
    if ( !isalive( self ) )
    {
        return;
    }
    
    if ( !is_true( self.var_d3fb5ec5 ) )
    {
        self function_d4384490();
    }
    
    enemy = self.enemy;
    
    if ( !isdefined( enemy ) )
    {
        self.var_39afae67 = undefined;
    }
    
    if ( isdefined( self.var_2709867b ) && isalive( self.var_2709867b ) )
    {
        enemy = self.var_2709867b;
        
        if ( !isdefined( self.var_27ee369f ) )
        {
            self.var_27ee369f = spawnstruct();
            self.var_27ee369f.shoottarget = spawn( "script_model", enemy.origin );
            self.var_27ee369f.shoottarget makesentient();
            self.var_27ee369f.shoottarget setteam( enemy.team );
            self setentitytarget( self.var_27ee369f.shoottarget );
            self.favoriteenemy = self.var_27ee369f.shoottarget;
        }
        
        self function_3fc3c5ba( enemy );
    }
    else if ( isdefined( self.var_27ee369f ) )
    {
        self.favoriteenemy = undefined;
        self clearentitytarget();
        self.var_27ee369f.shoottarget delete();
        self.var_27ee369f = undefined;
    }
    
    var_ac2db49a = isdefined( self.var_104bdc52 );
    shouldmove = self function_f5711280( enemy );
    currentvelocity = self getvelocity();
    currentspeed = length( currentvelocity );
    
    if ( !shouldmove )
    {
        if ( isdefined( self.var_104bdc52 ) )
        {
            self.var_104bdc52 = undefined;
            self.forcefire = 0;
            self.perfectaim = 0;
            self.script_accuracy = 1;
            function_ff58993b();
        }
    }
    else
    {
        if ( !isdefined( self.var_104bdc52 ) )
        {
            self.var_104bdc52 = spawnstruct();
            self.var_104bdc52.nextupdatetime = 0;
            self.var_104bdc52.runcooldown = 0;
            self.var_104bdc52.currentmovespeed = 0;
            self.var_104bdc52.targetmovespeed = self.var_104bdc52.currentmovespeed;
            
            if ( currentspeed == 0 )
            {
                self.var_104bdc52.stopping = 1;
                self.var_104bdc52.stopposition = self.origin;
            }
        }
        
        self.var_104bdc52.enemy = enemy;
        
        if ( isdefined( self.var_dc3a7edb ) && self.var_dc3a7edb >= gettime() )
        {
            self.forcefire = 1;
            self.perfectaim = 1;
        }
        else
        {
            self.forcefire = 0;
            self.perfectaim = 0;
        }
        
        canseeenemy = self function_250ee533( enemy );
        
        if ( isdefined( self.juggernautlastmeleetime ) && gettime() - self.juggernautlastmeleetime < 500 )
        {
            self setgoal( self.origin, 0, self.juggernautgoalradius, 128 );
            return 1;
        }
        
        if ( isdefined( self.grenade ) )
        {
            if ( util::time_has_passed( self.grenade.birthtime, 1.5 ) && distance( self.grenade.origin, self.origin ) < self.grenade.weapon.explosionradius * 1.4 )
            {
                self.var_d5688d21 = self.grenade.origin + vectornormalize( self.origin - self.grenade.origin ) * self.grenade.weapon.explosionradius * 1.2;
                self.var_d5688d21 = getclosestpointonnavmesh( self.var_d5688d21, 64, 25 );
            }
        }
        else
        {
            self.var_d5688d21 = undefined;
        }
        
        if ( isdefined( self.var_d5688d21 ) )
        {
            self.var_104bdc52.targetmovespeed = 170;
            self.var_104bdc52.running = 1;
            self.var_104bdc52.rundelay = undefined;
            self.var_104bdc52.runcooldown = gettime() + self.var_64d9b494;
            self setgoal( self.var_d5688d21, 0, self.juggernautgoalradius, 128 );
        }
        else if ( isdefined( self.var_6d5624e1 ) && isdefined( self.var_61ec1050 ) && self.var_61ec1050 <= 100 )
        {
            toenemy = enemy.origin - self.var_6d5624e1;
            faceangles = vectortoangles( toenemy );
            self setgoal( self.var_6d5624e1, 0, self.var_61ec1050, self function_d94c6dc3(), faceangles );
            distancetotarget = distance( self.var_6d5624e1, self.origin );
            self function_e3a04b59( distancetotarget, currentspeed, self.juggernautwalkdist );
        }
        else
        {
            if ( isdefined( self.var_9c584383 ) && util::time_has_passed( self.var_9c584383, self.var_331669d0 ) && self isatgoal() )
            {
                self.var_c3d1e9bb = 1;
            }
            
            if ( isdefined( self.var_29aecd37 ) && self.var_29aecd37 > gettime() )
            {
                self function_420d19e0( enemy, currentspeed, canseeenemy );
            }
            else if ( !is_true( self.var_c3d1e9bb ) || !self function_c3d1e9bb( enemy, currentspeed, canseeenemy ) )
            {
                self function_420d19e0( enemy, currentspeed, canseeenemy );
                
                if ( isdefined( self.var_c3d1e9bb ) )
                {
                    self.var_c3d1e9bb = undefined;
                    self.var_9c584383 = gettime();
                }
            }
        }
        
        diff = self.var_104bdc52.targetmovespeed - self.var_104bdc52.currentmovespeed;
        
        if ( diff < 0 || currentspeed > 0 )
        {
            assert( isdefined( self.juggernautacceleration ) && self.juggernautacceleration > 0 );
            acceleration = self.juggernautacceleration * float( function_60d95f53() ) / 1000;
            
            if ( diff < acceleration * -1 )
            {
                diff = acceleration * -1;
            }
            else if ( diff > acceleration )
            {
                diff = acceleration;
            }
            
            self.var_104bdc52.currentmovespeed += diff;
        }
        
        if ( self.var_104bdc52.currentmovespeed > 113 )
        {
            self ai::set_behavior_attribute( "demeanor", "combat" );
        }
        else
        {
            self ai::set_behavior_attribute( "demeanor", "cqb" );
        }
        
        self.var_104bdc52.currentmovespeed = max( self.var_104bdc52.currentmovespeed, 20 );
        self setdesiredspeed( self.var_104bdc52.currentmovespeed );
        var_b2fdaac3 = self.var_bad61c0;
        
        if ( is_true( self.var_104bdc52.stopping ) )
        {
            var_b2fdaac3 = self.var_a9d9477c;
        }
        
        var_a5c59559 = self function_3e7faeb8( canseeenemy );
        self.script_accuracy = var_b2fdaac3 * var_a5c59559;
        
        /#
            if ( getdvarint( #"hash_7362b665dd679b46", 0 ) == 1 )
            {
                var_bfcfaf12 = "<dev string:x141>";
                
                if ( is_true( self.var_104bdc52.backup ) )
                {
                    var_bfcfaf12 = "<dev string:x14c>";
                }
                else if ( is_true( self.var_104bdc52.stopping ) )
                {
                    var_bfcfaf12 = "<dev string:x156>";
                }
                else if ( is_true( self.var_104bdc52.running ) )
                {
                    var_bfcfaf12 = "<dev string:x162>";
                }
                
                var_bfcfaf12 = var_bfcfaf12 + "<dev string:x16d>" + self.var_104bdc52.currentmovespeed;
                print3d( self.origin + ( 0, 0, 100 ), var_bfcfaf12 );
                record3dtext( var_bfcfaf12, self.origin + ( 0, 0, 100 ), ( 1, 1, 1 ), "<dev string:x38>", self, 1 );
                record3dtext( "<dev string:x177>" + var_b2fdaac3 + "<dev string:x18a>" + var_a5c59559, self.origin + ( 0, 0, 50 ), ( 1, 1, 1 ), "<dev string:x38>", self, 1 );
            }
        #/
        
        /#
            if ( getdvarint( #"hash_66f7f4e4b4f61e99", 0 ) == 1 )
            {
                if ( isdefined( self.var_6d5624e1 ) && isdefined( self.var_61ec1050 ) )
                {
                    circle( self.var_6d5624e1, self.var_61ec1050, ( 0, 1, 0 ), 0, 1, 1 );
                    debugaxis( self.var_6d5624e1, ( 0, 0, 0 ), 16, 1, 0, 1 );
                }
            }
        #/
    }
    
    return 1;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x26f57375, Offset: 0x4be0
// Size: 0x64, Type: bool
function private function_7824de4c( entity )
{
    switch ( entity.var_dfbbb21e )
    {
        case 4:
            self.var_675676f6 = gettime();
            return true;
        case 5:
            return true;
    }
    
    return false;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x2b9d92b9, Offset: 0x4c50
// Size: 0x64, Type: bool
function private function_d086ffd3( entity )
{
    return entity hasvalidinterrupt( "pain" ) && entity function_7824de4c( entity ) && entity archetypehuman::function_3e09cbf3( entity );
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0xc1b6359d, Offset: 0x4cc0
// Size: 0x36, Type: bool
function private function_5b111fb9( entity )
{
    if ( self.var_dfbbb21e == 6 && isdefined( entity.var_40543c03 ) )
    {
        return true;
    }
    
    return false;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x0
// Checksum 0xa4425aa9, Offset: 0x4d00
// Size: 0x26
function function_1a2603c6( entity )
{
    entity.var_1e901925 = 6;
    entity.var_dfbbb21e = 0;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x0
// Checksum 0x30962921, Offset: 0x4d30
// Size: 0x2a
function function_80e2cf4f( entity )
{
    entity.var_1e901925 = entity.var_dfbbb21e;
    entity.var_dfbbb21e = 0;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x0
// Checksum 0xabc9f6d4, Offset: 0x4d68
// Size: 0x16
function function_73106246( entity )
{
    entity.var_1e901925 = 0;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x15e2e7fb, Offset: 0x4d88
// Size: 0x32
function private function_910f816c( entity )
{
    if ( isdefined( entity.var_3081e854 ) )
    {
        return entity.var_3081e854;
    }
    
    return entity.var_1fd9bbb3;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0xa391f770, Offset: 0x4dc8
// Size: 0x84, Type: bool
function private function_10f4a44d( entity )
{
    switch ( entity.var_dfbbb21e )
    {
        case 1:
        case 3:
            entity.var_3081e854 = entity.var_1fd9bbb3;
            return true;
        case 2:
            entity.var_3081e854 = entity.var_c60594c9;
            return true;
    }
    
    return false;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0xc9ce5b22, Offset: 0x4e58
// Size: 0x3e
function private function_252576e7( entity )
{
    entity.var_1e901925 = 0;
    entity.var_23e5e045 = gettime();
    entity.var_675676f6 = gettime();
    entity.var_3d0026c9 = "";
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 0, eflags: 0x4
// Checksum 0xfbbfb433, Offset: 0x4ea0
// Size: 0x42, Type: bool
function private function_1dbd366f()
{
    if ( self.var_1e901925 == 1 || self.var_1e901925 == 2 || self.var_1e901925 == 3 )
    {
        return true;
    }
    
    return false;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 13, eflags: 0x4
// Checksum 0x50718e32, Offset: 0x4ef0
// Size: 0x5f6
function private function_be9a301c( *einflictor, eattacker, idamage, *idflags, smeansofdeath, weapon, *var_fd90b0bb, vpoint, vdir, shitloc, *psoffsettime, *boneindex, *modelindex )
{
    if ( self.var_dfbbb21e == 0 )
    {
        self.allowpain = 0;
    }
    
    isexplosive = vdir == "MOD_EXPLOSIVE" || vdir == "MOD_GRENADE_SPLASH" || vdir == "MOD_PROJECTILE_SPLASH" || is_true( shitloc.islauncher );
    isheadshot = isdefined( var_fd90b0bb ) && isplayer( var_fd90b0bb ) && ( vdir === "MOD_RIFLE_BULLET" || vdir === "MOD_PISTOL_BULLET" || vdir === "MOD_HEAD_SHOT" || vdir === "MOD_IMPACT" ) && isdefined( modelindex ) && isinarray( array( "helmet", "head", "neck" ), modelindex );
    var_1ea69304 = shitloc.name == "hatchet";
    var_a0ddc52e = is_true( shitloc.islauncher ) && vdir == "MOD_PROJECTILE_SPLASH";
    var_a355d472 = is_true( shitloc.islauncher ) && vdir == "MOD_PROJECTILE";
    
    if ( !isheadshot )
    {
        playfx( "maps/cp_rus_siege/fx9_juggernaut_impact_body", psoffsettime, boneindex * -1 );
    }
    else if ( !is_true( self.var_afc00716 ) )
    {
        playfx( "maps/cp_rus_siege/fx9_juggernaut_impact_head", psoffsettime, boneindex * -1 );
    }
    
    if ( is_true( self.var_afc00716 ) )
    {
        if ( isheadshot || isexplosive )
        {
            level.var_d7e2833c = self.var_a9e18506 > 1;
            vpoint = int( vpoint * self.var_a9e18506 );
            
            if ( var_1ea69304 )
            {
                vpoint = self.health + 1;
            }
        }
    }
    else
    {
        if ( !isexplosive && vpoint > self.var_e53dfc1f )
        {
            vpoint = self.var_e53dfc1f;
        }
        
        if ( isheadshot && var_1ea69304 )
        {
            vpoint = int( max( vpoint, self.var_80b41b50 / 2 + 1 ) );
        }
        else if ( var_a0ddc52e )
        {
            vpoint = 500;
        }
        else if ( var_a355d472 )
        {
            vpoint = 1500;
        }
        
        if ( isexplosive || isheadshot || var_1ea69304 || var_a355d472 )
        {
            if ( !isdefined( self.var_33d2ead7 ) )
            {
                self.var_33d2ead7 = 0;
            }
            
            self.var_33d2ead7 += vpoint;
            
            if ( self.var_33d2ead7 > self.var_80b41b50 || vpoint > self.health )
            {
                if ( !is_true( self.var_afc00716 ) )
                {
                    if ( isdefined( self.hatmodel ) )
                    {
                        self detach( self.hatmodel, "" );
                    }
                    
                    self forcepainon();
                    self.var_afc00716 = 1;
                    self.var_dfbbb21e = 3;
                    playfxontag( "maps/cp_rus_siege/fx9_juggernaut_impact_head_explosion", self, "j_neck" );
                    self.var_3d0026c9 = "_helmet";
                }
            }
            else if ( !function_1dbd366f() && ( !isdefined( self.var_23e5e045 ) || util::time_has_passed( self.var_23e5e045, self.var_537b6b78 ) ) )
            {
                if ( !( isdefined( self.var_26cb85ef ) && isdefined( self.var_85c754 ) ) || util::time_has_passed( self.var_26cb85ef, 1 ) )
                {
                    self.var_85c754 = 0;
                }
                
                self.var_26cb85ef = gettime();
                self.var_85c754 += vpoint;
                
                if ( self.var_85c754 > self.var_f9175e43 )
                {
                    self forcepainon();
                    self.var_dfbbb21e = 1;
                }
            }
        }
    }
    
    return vpoint;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x8c6fc28b, Offset: 0x54f0
// Size: 0x3f2
function private function_d7041770( params )
{
    if ( !is_true( self.var_d3fb5ec5 ) )
    {
        return;
    }
    
    if ( self.var_dfbbb21e != 0 )
    {
        return;
    }
    
    archetype_damage_effects::onactordamage( params );
    isexplosive = ( params.smeansofdeath == "MOD_EXPLOSIVE" || params.smeansofdeath == "MOD_GRENADE_SPLASH" || params.smeansofdeath == "MOD_PROJECTILE_SPLASH" || is_true( params.weapon.islauncher ) ) && ( !isdefined( self.var_40543c03 ) || self.var_40543c03 != "flash" );
    isheadshot = isdefined( params.eattacker ) && isplayer( params.eattacker ) && ( params.smeansofdeath === "MOD_RIFLE_BULLET" || params.smeansofdeath === "MOD_PISTOL_BULLET" || params.smeansofdeath === "MOD_HEAD_SHOT" || params.smeansofdeath === "MOD_IMPACT" ) && isdefined( params.shitloc ) && isinarray( array( "helmet", "head", "neck" ), params.shitloc );
    var_1ea69304 = params.weapon.name == "hatchet";
    var_a355d472 = is_true( params.weapon.islauncher ) && params.smeansofdeath == "MOD_PROJECTILE";
    
    if ( is_true( self.var_afc00716 ) )
    {
        if ( isheadshot && !isai( params.eattacker ) || isexplosive || var_1ea69304 )
        {
            self.allowpain = 1;
            self.var_dfbbb21e = 5;
            return;
        }
    }
    
    if ( isai( params.eattacker ) && !isexplosive )
    {
        self.allowpain = 0;
        return;
    }
    
    if ( isdefined( self.var_40543c03 ) && self.var_1e901925 != 6 && params.smeansofdeath != "MOD_IMPACT" )
    {
        self.var_dfbbb21e = 6;
    }
    else if ( isheadshot && var_1ea69304 )
    {
        self.var_dfbbb21e = 1;
    }
    else if ( isexplosive )
    {
        self.var_dfbbb21e = 2;
    }
    else if ( self.var_1e901925 == 0 && isheadshot && ( !isdefined( self.var_675676f6 ) || util::time_has_passed( self.var_675676f6, self.var_9a446bf6 ) ) )
    {
        self.var_dfbbb21e = 4;
    }
    
    self.allowpain = self.var_dfbbb21e != 0;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x5de104fc, Offset: 0x58f0
// Size: 0x2a
function private function_defc3831( *ratio )
{
    if ( self.var_1e901925 == 4 )
    {
        return "light";
    }
    
    return "heavy";
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 0, eflags: 0x4
// Checksum 0x13da478c, Offset: 0x5928
// Size: 0xa
function private function_6ca9ecd8()
{
    return "head";
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 0, eflags: 0x4
// Checksum 0x5b29f423, Offset: 0x5940
// Size: 0x24, Type: bool
function private function_27cfa452()
{
    return self.grenadeweapon.name == #"hash_34fa23e332e34886";
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 2, eflags: 0x0
// Checksum 0xf097bd10, Offset: 0x5970
// Size: 0xe0
function function_5852aae6( entity, *throwposition )
{
    stance = throwposition getblackboardattribute( "_stance" );
    arm_offset = undefined;
    
    if ( throwposition function_8fa0d5bb() )
    {
        if ( stance == "crouch" )
        {
            arm_offset = ( 13, 1, 56 );
        }
        else
        {
            arm_offset = ( -6, 30, 60 );
        }
    }
    else if ( stance == "crouch" )
    {
        arm_offset = ( 13, -1, 56 );
    }
    else
    {
        arm_offset = ( 14, -3, 80 );
    }
    
    return arm_offset;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x5c0bbf64, Offset: 0x5a58
// Size: 0x7b8, Type: bool
function private function_23828655( entity )
{
    if ( !self aiutility::function_e0454a8b( entity ) )
    {
        return false;
    }
    
    if ( is_true( level.aidisablegrenadethrows ) )
    {
        return false;
    }
    
    if ( !isdefined( entity.enemy ) )
    {
        return false;
    }
    
    if ( !issentient( entity.enemy ) )
    {
        return false;
    }
    
    if ( !isplayer( entity.enemy ) && ( !isdefined( self.var_27ee369f.shoottarget ) || self.var_27ee369f.shoottarget != entity.enemy ) )
    {
        return false;
    }
    
    if ( isvehicle( entity.enemy ) && isairborne( entity.enemy ) )
    {
        return false;
    }
    
    if ( !util::time_has_passed( self.var_d53c164a, 10 ) )
    {
        return false;
    }
    
    if ( isdefined( self.var_c12e0cea ) && !util::time_has_passed( self.var_c12e0cea, 1 ) )
    {
        return false;
    }
    
    if ( isdefined( self.var_effd9610 ) && !util::time_has_passed( self.var_effd9610, 2 ) )
    {
        return false;
    }
    
    if ( is_true( self.var_419d64f3 ) )
    {
        return false;
    }
    
    if ( !isdefined( entity.grenadeammo ) || entity.grenadeammo <= 0 )
    {
        entity.grenadeammo = 10;
    }
    
    if ( ai::hasaiattribute( entity, "useGrenades" ) && !ai::getaiattribute( entity, "useGrenades" ) )
    {
        return false;
    }
    
    grenadethrowinfos = blackboard::getblackboardevents( "juggernaut_grenade_throw" );
    
    if ( isdefined( grenadethrowinfos ) && grenadethrowinfos.size > 0 )
    {
        return false;
    }
    
    entityangles = entity.angles;
    toenemy = entity.enemy.origin - entity.origin;
    toenemy = vectornormalize( ( toenemy[ 0 ], toenemy[ 1 ], 0 ) );
    entityforward = anglestoforward( entityangles );
    entityforward = vectornormalize( ( entityforward[ 0 ], entityforward[ 1 ], 0 ) );
    
    if ( vectordot( toenemy, entityforward ) < 0.5 )
    {
        return false;
    }
    
    allplayers = getplayers();
    
    if ( isdefined( allplayers ) && allplayers.size )
    {
        foreach ( player in allplayers )
        {
            if ( isdefined( player ) && player laststand::player_is_in_laststand() && distancesquared( entity.enemy.origin, player.origin ) <= 640000 )
            {
                return false;
            }
        }
    }
    
    throw_pos = entity lastknownpos( entity.enemy );
    throw_dist = distance2dsquared( entity.origin, throw_pos );
    var_50ef4b12 = self function_27cfa452();
    
    if ( !var_50ef4b12 )
    {
        if ( !self canshootenemy( 300 ) )
        {
            self.var_c12e0cea = gettime();
            tacpoints = tacticalquery( "juggernaut_grenade_tacquery", throw_pos, entity.origin );
            
            if ( isdefined( tacpoints ) && tacpoints.size > 0 )
            {
                throw_pos = tacpoints[ 0 ].origin;
                throw_dist = distance2dsquared( entity.origin, throw_pos );
            }
            else
            {
                return false;
            }
        }
    }
    else
    {
        trace_pos = self.origin + anglestoforward( self.angles ) * 100;
        result = bullettrace( trace_pos + ( 0, 0, 50 ), trace_pos + ( 0, 0, -300 ), 0, self );
        
        if ( !is_true( result[ #"startsolid" ] ) && result[ #"fraction" ] < 1 )
        {
            throw_pos = result[ #"position" ];
        }
        else
        {
            return false;
        }
    }
    
    if ( var_50ef4b12 )
    {
        if ( throw_dist < sqr( 250 ) || throw_dist > sqr( 1250 ) )
        {
            return false;
        }
    }
    else if ( throw_dist < sqr( 300 ) || throw_dist > sqr( 1250 ) )
    {
        return false;
    }
    
    arm_offset = function_5852aae6( entity, throw_pos );
    entity.var_38754eac = throw_pos;
    throw_vel = entity canthrowgrenadepos( arm_offset, throw_pos );
    
    if ( !isdefined( throw_vel ) )
    {
        entity.var_38754eac = undefined;
        return false;
    }
    
    grenadethrowinfo = spawnstruct();
    grenadethrowinfo.grenadethrower = entity;
    grenadethrowinfo.grenadethrowerteam = entity.team;
    grenadethrowinfo.grenadethrownat = entity.enemy;
    grenadethrowinfo.grenadethrownposition = entity.var_38754eac;
    blackboard::addblackboardevent( "juggernaut_grenade_throw", grenadethrowinfo, 2000 );
    return true;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x129890e7, Offset: 0x6218
// Size: 0x146
function private function_7e8e056c( entity )
{
    aiutility::keepclaimednodeandchoosecoverdirection( entity );
    entity.grenadethrowposition = entity.var_38754eac;
    grenadethrowinfo = spawnstruct();
    grenadethrowinfo.grenadethrower = entity;
    grenadethrowinfo.grenadethrowerteam = entity.team;
    grenadethrowinfo.grenadethrownat = entity.enemy;
    grenadethrowinfo.grenadethrownposition = entity.grenadethrowposition;
    blackboard::addblackboardevent( "juggernaut_grenade_throw", grenadethrowinfo, randomintrange( 10000, 15000 ) );
    blackboard::addblackboardevent( "team_grenade_throw", grenadethrowinfo, randomintrange( 5000, 10000 ) );
    blackboard::addblackboardevent( "target_grenade_throw", grenadethrowinfo, randomintrange( 30000, 60000 ) );
    entity.preparegrenadeammo = entity.grenadeammo;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x7942d6f9, Offset: 0x6368
// Size: 0x27a
function private function_5364406f( entity )
{
    aiutility::resetcoverparameters( entity );
    aiutility::releaseclaimnode( entity );
    
    if ( entity.preparegrenadeammo == entity.grenadeammo )
    {
        if ( entity.health <= 0 )
        {
            grenade = undefined;
            
            if ( isactor( entity.enemy ) && isdefined( entity.grenadeweapon ) )
            {
                grenade = entity.enemy magicgrenadetype( entity.grenadeweapon, entity gettagorigin( "j_wrist_ri" ), ( 0, 0, 0 ), float( entity.grenadeweapon.aifusetime ) / 1000 );
            }
            else if ( isplayer( entity.enemy ) && isdefined( entity.grenadeweapon ) )
            {
                grenade = entity.enemy magicgrenadeplayer( entity.grenadeweapon, entity gettagorigin( "j_wrist_ri" ), ( 0, 0, 0 ) );
            }
            
            if ( isdefined( grenade ) )
            {
                grenade.owner = entity;
                grenade.team = entity.team;
                grenade setcontents( grenade setcontents( 0 ) & ~( 32768 | 16777216 | 2097152 | 8388608 ) );
            }
        }
    }
    
    if ( self function_27cfa452() && entity.health > 0 )
    {
        self.var_47a7add4 = entity smokegrenade::function_f199623f( self.grenadeweapon );
        self.var_df0989d = entity smokegrenade::function_79d42bea( self.grenadeweapon );
        self.var_104bdc52.var_be1be68b = undefined;
    }
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0xd4ec6b29, Offset: 0x65f0
// Size: 0x33c
function private function_3fc3c5ba( enemy )
{
    var_18779b5c = 0.3;
    
    /#
        var_18779b5c = getdvarfloat( #"hash_2bfc95c2e9325ec9", 0.3 );
    #/
    
    if ( !isdefined( self.var_27ee369f.var_f8f51306 ) || length( self.var_27ee369f.var_f8f51306 - enemy.origin ) != 0 )
    {
        if ( issentient( enemy ) )
        {
            self.var_27ee369f.var_f8f51306 = enemy geteye() - ( 0, 0, 10 );
        }
        else
        {
            self.var_27ee369f.var_f8f51306 = enemy.origin;
        }
        
        self.var_27ee369f.var_126c242e = 0;
    }
    
    self.var_27ee369f.var_126c242e += float( function_60d95f53() ) / 1000;
    
    if ( self.var_27ee369f.var_126c242e < var_18779b5c )
    {
        time = self.var_27ee369f.var_126c242e / var_18779b5c;
        self.var_27ee369f.shoottarget.origin = lerpvector( self.var_27ee369f.shoottarget.origin, self.var_27ee369f.var_f8f51306, time );
    }
    else
    {
        self.var_27ee369f.shoottarget.origin = self.var_27ee369f.var_f8f51306;
        self.var_27ee369f.var_126c242e = var_18779b5c;
    }
    
    /#
        if ( getdvarint( #"hash_747737fad8f899cb", 0 ) == 1 )
        {
            recordsphere( self.var_27ee369f.shoottarget.origin, 5, ( 1, 0, 0 ), "<dev string:x38>", self );
            recordline( self.var_27ee369f.shoottarget.origin, self.origin, ( 1, 0, 0 ), "<dev string:x38>", self );
            recordsphere( enemy.origin, 4, ( 0, 0, 1 ), "<dev string:x38>", self );
            recordline( enemy.origin, self.origin, ( 0, 0, 1 ), "<dev string:x38>", self );
        }
    #/
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 0, eflags: 0x0
// Checksum 0xcc5705b8, Offset: 0x6938
// Size: 0x12
function function_cd09bfcf()
{
    self.var_bfc15948 = 1;
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x21b8a87e, Offset: 0x6958
// Size: 0x4a
function private function_77665587( entity )
{
    if ( is_true( entity.var_bfc15948 ) )
    {
        entity.var_bfc15948 = undefined;
        return 1;
    }
    
    return btapi_haslowammo( entity );
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x8149607d, Offset: 0x69b0
// Size: 0x4c
function private function_d1c62181( entity )
{
    entity battlechatter::function_9cb2c120( self, "action_reloading", undefined, undefined, undefined );
    aiutility::function_43a090a8( entity );
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x8602bac9, Offset: 0x6a08
// Size: 0x5e
function private function_688012ea( entity )
{
    if ( isalive( entity ) )
    {
        aiutility::reloadterminate( entity );
    }
    
    aiutility::releaseclaimnode( entity );
    entity.var_effd9610 = gettime();
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 0, eflags: 0x1
// Checksum 0xf9d43a49, Offset: 0x6a70
// Size: 0xc4
function autoexec function_998cd770()
{
    level.var_89f8a37b = [ #"hash_6856ae089c2dc339", #"hash_6856ab089c2dbe20", #"hash_6856ac089c2dbfd3", #"hash_6856b1089c2dc852", #"hash_6856b2089c2dca05", #"hash_6856af089c2dc4ec" ];
    callback::function_c046382d( &function_45ab28c7 );
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 1, eflags: 0x4
// Checksum 0x1d24f5cf, Offset: 0x6b40
// Size: 0xdc
function private function_45ab28c7( s_info )
{
    if ( self function_d3b23b75() )
    {
        level.var_85b00b2b = #"hash_e086893b3cc6931";
        level.var_30eb363 = #"hash_6856b5089c2dcf1e";
        return;
    }
    
    if ( isdefined( s_info.eattacker.var_d3fb5ec5 ) )
    {
        level.var_85b00b2b = #"hash_e086593b3cc6418";
        
        if ( s_info.smeansofdeath == "MOD_MELEE_WEAPON_BUTT" )
        {
            level.var_30eb363 = #"hash_6856b0089c2dc69f";
            return;
        }
        
        level.var_30eb363 = array::random( level.var_89f8a37b );
    }
}

// Namespace namespace_631d466b/namespace_54e681de
// Params 0, eflags: 0x4
// Checksum 0x21fa7504, Offset: 0x6c28
// Size: 0xd0, Type: bool
function private function_d3b23b75()
{
    if ( !isdefined( self.var_121392a1 ) )
    {
        self.var_121392a1 = [];
    }
    
    var_20653505 = getweapon( #"hash_3b8965a9728db4e1" );
    
    foreach ( effect in self.var_121392a1 )
    {
        if ( effect.var_3d1ed4bd === var_20653505 )
        {
            return true;
        }
    }
    
    return false;
}

