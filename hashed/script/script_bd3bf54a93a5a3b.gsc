#using script_11d98532ca8f6c58;
#using script_34c07e36b76bab45;
#using script_3dc93ca9902a9cda;
#using script_758226507b1afa11;
#using script_86ebb5dd573a003;
#using scripts\core_common\ai_shared;
#using scripts\core_common\animation_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\doors_shared;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\flashlight;
#using scripts\core_common\music_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\stealth\manager;
#using scripts\core_common\stealth\threat_sight;
#using scripts\core_common\stealth\utility;
#using scripts\core_common\struct;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\core_common\vehicle_shared;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\gametypes\battlechatter;
#using scripts\cp_common\gametypes\globallogic_ui;
#using scripts\cp_common\objectives;
#using scripts\cp_common\skipto;
#using scripts\cp_common\snd;
#using scripts\cp_common\util;

#namespace namespace_a613430e;

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x16b0
// Size: 0x4
function function_22b7fffd()
{
    
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 1, eflags: 0x0
// Checksum 0x95fec64d, Offset: 0x16c0
// Size: 0x6c
function start( *var_1c513c79 )
{
    level flag::set( "player_jumped_off_train" );
    level scene::init( "p9_fxanim_cp_stakeout_subway_train_passing_01_bundle" );
    level scene::init( "p9_fxanim_cp_stakeout_subway_train_passing_02_bundle" );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x67aaedbf, Offset: 0x1738
// Size: 0x8c
function function_73c2b700()
{
    scene::function_d0d7d9f7( "cin_stakeout_train_jumpout", &namespace_4dd4b998::cin_stakeout_train_jumpout );
    util::function_268bdf4f( "adler", &namespace_11998b8f::function_2f0f0a84 );
    level thread scene::play_from_time( "cin_stakeout_train_jumpout", "jump_out_post_teleport", undefined, 10, 0, 1, 0, 1 );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 2, eflags: 0x0
// Checksum 0xbc936e12, Offset: 0x17d0
// Size: 0x2fc
function main( *str_objective, var_50cc0d4f )
{
    player = getplayers()[ 0 ];
    player endon( #"death" );
    namespace_5ceacc03::music( "2.0_tracks" );
    
    if ( var_50cc0d4f )
    {
        level function_73c2b700();
        player setmovespeedscale( 0.72 );
    }
    else
    {
        util::unmake_hero( "lazar", 1 );
        util::unmake_hero( "park", 1 );
        getplayers()[ 0 ] val::set( "stakeout_intro", "disable_oob", 0 );
    }
    
    level thread namespace_11998b8f::function_81fce913();
    level.stealth.threatsightratescale = 2.25;
    level.stealth.threatsightdistscale = 1.5;
    level namespace_979752dc::function_2324f175( 0 );
    level thread namespace_11998b8f::function_2cba9c65();
    level.adler thread function_788e23aa();
    level thread function_b30a2f32();
    level thread function_b0317237();
    level thread function_a6dfa615();
    level thread function_78d10ca2();
    level thread function_b3b12f9a();
    level thread function_48695888();
    level thread function_ad5010cb();
    level flag::wait_till_all( array( "ghost_station_right_platform_enemies_cleared", "ghost_station_left_platform_enemies_cleared" ) );
    level flag::set( "end_ghost_station_stealth_volume_check" );
    level.stealth.threatsightratescale = undefined;
    level.stealth.threatsightdistscale = undefined;
    level flag::wait_till( "ladder_vo_player" );
    skipto::function_4e3ab877( "ghost_station" );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 4, eflags: 0x0
// Checksum 0x3a28b242, Offset: 0x1ad8
// Size: 0x1cc
function cleanup( *str_objective, var_50cc0d4f, *var_aa1a6455, *player )
{
    ghost_station_volumes = getentarray( "ghost_station_volumes", "script_noteworthy" );
    array::delete_all( ghost_station_volumes );
    
    if ( player )
    {
        trigger::use( "cleanup_ghost_station_spawners", "targetname", undefined, 0 );
        level.var_71550d76 = util::spawn_model( "tag_origin" );
        level.var_71550d76.var_62b1eb0a = getent( "post_teleport_train_a", "targetname" );
        level.var_71550d76.var_fba19ceb = getent( "post_teleport_train_b", "targetname" );
        level.var_71550d76.var_55fb067 = getent( "post_teleport_train_c", "targetname" );
        level.var_71550d76.a_e_lights = getentarray( "light_train_jump_off", "targetname" );
        level.var_71550d76.var_49b85ad8 = getentarray( level.var_71550d76.var_55fb067.script_linkto, "script_linkname" );
        level thread namespace_4dd4b998::function_48b8f4be();
    }
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0xdf2f2d94, Offset: 0x1cb0
// Size: 0x174
function function_788e23aa()
{
    level endon( #"ghost_station_done" );
    self endon( #"death" );
    self val::set( "ghost_station", "ignoreall", 1 );
    self val::set( "ghost_station", "ignoreme", 1 );
    self.holdfire = 1;
    self battlechatter::function_2ab9360b( 0 );
    self ai::set_behavior_attribute( "demeanor", "cqb" );
    self thread function_1a1fde95();
    self flag::wait_till_clear( #"scriptedanim" );
    self thread function_8d9229cb();
    self thread function_c737b7bd();
    level flag::wait_till( "ghost_station_left_platform_enemies_cleared" );
    self thread function_8ed36a5a();
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0xf08f9327, Offset: 0x1e30
// Size: 0xbc
function function_1a1fde95()
{
    level endon( #"stealth_spotted" );
    self endon( #"death" );
    goal = struct::get( "ghost_station_adler_start_left_tracks", "targetname" );
    self.goalradius = 32;
    self thread spawner::go_to_node( goal );
    level flag::wait_till( "start_platform_traversal" );
    self thread function_851df264();
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x8f7e74ea, Offset: 0x1ef8
// Size: 0x146
function function_c737b7bd()
{
    player = getplayers()[ 0 ];
    player endon( #"death" );
    self endon( #"death" );
    
    while ( !level flag::get( "ghost_station_left_platform_enemies_cleared" ) )
    {
        if ( player istouching( self ) && !is_true( self.var_65544d13 ) )
        {
            self notsolid();
            self.var_65544d13 = 1;
        }
        else if ( !player istouching( self ) && is_true( self.var_65544d13 ) )
        {
            self solid();
            self.var_65544d13 = undefined;
        }
        
        waitframe( 1 );
    }
    
    self solid();
    self.var_65544d13 = undefined;
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0xcb6f854e, Offset: 0x2048
// Size: 0x6b6
function function_8d9229cb()
{
    self notify( "4815a19139c34665" );
    self endon( "4815a19139c34665" );
    level endon( #"ghost_station_done", #"hash_59bc0ffe214b3599" );
    self endon( #"death" );
    namespace_979752dc::function_740dbf99();
    
    while ( true )
    {
        level flag::wait_till_any( array( "ghost_station_right_platform_enemies_stealth_spotted", "ghost_station_left_platform_enemies_stealth_spotted" ) );
        
        if ( !is_true( self.var_71c9458e ) )
        {
            if ( !level flag::get_any( array( "guard_station_doors_opened", "player_in_guard_room" ) ) )
            {
                wait 1;
            }
            else
            {
                wait 2.6;
            }
        }
        
        if ( level flag::get_any( array( "ghost_station_right_platform_enemies_stealth_spotted", "ghost_station_left_platform_enemies_stealth_spotted" ) ) )
        {
            if ( level flag::get( "ghost_station_adler_mantling_left_platform" ) )
            {
                level flag::wait_till_clear( "ghost_station_adler_mantling_left_platform" );
            }
            
            if ( !is_true( self.var_71c9458e ) )
            {
                self.var_71c9458e = 1;
                self spawner::function_461ce3e9();
                self ai::set_behavior_attribute( "demeanor", "combat" );
                self ai::set_behavior_attribute( "disablearrivals", 0 );
                self val::reset( "ghost_station", "ignoreall" );
                self val::reset( "ghost_station", "ignoreme" );
                self battlechatter::function_2ab9360b( 1 );
                self.holdfire = 0;
                self allowedstances( "stand", "crouch" );
            }
            
            if ( !level flag::get( "ally_on_left_platform" ) && ( !level flag::get( "ghost_station_left_platform_enemies_stealth_spotted" ) || !level flag::get( "ghost_station_left_platform_enemies_cleared" ) ) )
            {
                self.var_b7bd887 = getent( "ghost_station_ally_combat_volume_1", "targetname" );
            }
            else if ( !level flag::get( "ally_on_left_platform" ) && level flag::get( "ghost_station_left_platform_enemies_stealth_spotted" ) && !level flag::get( "ghost_station_left_platform_enemies_cleared" ) )
            {
                self function_cbc5c328();
                self.var_b7bd887 = getent( "ghost_station_ally_combat_volume_2", "targetname" );
            }
            else if ( level flag::get( "ally_on_left_platform" ) && level flag::get_any( array( "guard_station_doors_opened", "player_in_guard_room" ) ) && ( !level flag::get( "ghost_station_right_platform_enemies_stealth_spotted" ) || level flag::get( "ghost_station_right_platform_enemies_cleared" ) ) )
            {
                node = getnode( "ghost_station_adler_start_node_left_platform_2", "targetname" );
                self.goalradius = 32;
                self thread spawner::go_to_node( node );
                self.var_b7bd887 = undefined;
            }
            else
            {
                self.var_b7bd887 = getent( "ghost_station_ally_combat_volume_2", "targetname" );
            }
            
            if ( isdefined( self.var_b7bd887 ) )
            {
                self setgoal( self.var_b7bd887 );
            }
            
            level flag::function_4bf6d64f( array( "ghost_station_right_platform_enemies_cleared", "ghost_station_left_platform_enemies_cleared" ), array( "stealth_spotted" ) );
            waitframe( 1 );
        }
        
        if ( !level flag::get( "ghost_station_right_platform_enemies_stealth_spotted" ) && !level flag::get( "ghost_station_left_platform_enemies_stealth_spotted" ) )
        {
            self cleargoalvolume();
            self val::set( "ghost_station", "ignoreall", 1 );
            
            if ( !flag::get( "flag_adler_seen" ) )
            {
                self val::set( "ghost_station", "ignoreme", 1 );
            }
            
            self battlechatter::function_2ab9360b( 0 );
            self.holdfire = 1;
            self ai::set_behavior_attribute( "demeanor", "cqb" );
            self allowedstances( "stand", "crouch" );
            self.var_71c9458e = undefined;
            self function_851df264();
        }
        
        waitframe( 1 );
    }
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x706c5ced, Offset: 0x2708
// Size: 0x2d4
function function_cbc5c328()
{
    self notify( "1ddf4f2d18ab05e1" );
    self endon( "1ddf4f2d18ab05e1" );
    level endon( #"ghost_station_done" );
    self endon( #"death" );
    
    if ( level flag::get( "ally_on_left_platform" ) )
    {
        return;
    }
    
    level flag::set( "ghost_station_adler_mantling_left_platform" );
    self ai::set_behavior_attribute( "disablearrivals", 1 );
    goal = getnode( "ghost_station_adler_platform_traverse", "targetname" );
    self.goalradius = 64;
    self thread spawner::go_to_node( goal );
    wait 2;
    level thread scene::play( "aib_vign_stakeout_ghost_station_platform_mantle_adler" );
    self waittill( #"mantle_over" );
    goal = getnode( "ghost_station_adler_start_node_left_platform", "targetname" );
    self thread spawner::go_to_node( goal );
    
    if ( level flag::get( "ghost_station_left_platform_enemies_cleared" ) )
    {
        level scene::stop( "aib_vign_stakeout_ghost_station_platform_mantle_adler" );
        self ai::set_behavior_attribute( "disablearrivals", 0 );
        level flag::clear( "ghost_station_adler_mantling_left_platform" );
        return;
    }
    
    while ( !level flag::get( "ghost_station_left_platform_enemies_stealth_spotted" ) && self flag::get( #"scriptedanim" ) )
    {
        waitframe( 1 );
    }
    
    if ( level flag::get( "ghost_station_left_platform_enemies_stealth_spotted" ) )
    {
        level scene::stop( "aib_vign_stakeout_ghost_station_platform_mantle_adler" );
        self ai::set_behavior_attribute( "disablearrivals", 0 );
        level flag::clear( "ghost_station_adler_mantling_left_platform" );
        return;
    }
    
    level flag::clear( "ghost_station_adler_mantling_left_platform" );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0xe5eb9fdf, Offset: 0x29e8
// Size: 0x374
function function_851df264()
{
    self notify( "13cc3e0dbbae2d94" );
    self endon( "13cc3e0dbbae2d94" );
    level endon( #"ghost_station_done" );
    self endon( #"death" );
    player = getplayers()[ 0 ];
    player endon( #"death" );
    self thread function_18b65165();
    
    if ( !level flag::get_any( array( "ally_on_left_platform", "ghost_station_left_platform_enemies_cleared" ) ) )
    {
        self function_cbc5c328();
    }
    
    if ( level flag::get_any( array( "ghost_station_right_platform_enemies_stealth_spotted", "ghost_station_left_platform_enemies_stealth_spotted" ) ) )
    {
        return;
    }
    
    level endon( #"ghost_station_right_platform_enemies_stealth_spotted", #"ghost_station_left_platform_enemies_stealth_spotted" );
    self.goalradius = 256;
    player = getplayers()[ 0 ];
    var_bf8b2610 = self scene::function_c935c42();
    
    if ( var_bf8b2610 )
    {
        self spawner::function_461ce3e9();
        level scene::stop( "aib_vign_stakeout_ghost_station_platform_mantle_adler" );
    }
    
    var_5e98e1e4 = player flag::get( "body_shield_active" );
    
    if ( !level flag::get( "ghost_station_flashlight_enemy_dead" ) && !is_true( var_5e98e1e4 ) )
    {
        goal = getnode( "ghost_station_adler_start_node_left_platform", "targetname" );
        self thread spawner::go_to_node( goal );
        util::waittill_any_ents_two( level, "ghost_station_flashlight_enemy_dead", player, "body_shield_active" );
    }
    
    self ai::set_behavior_attribute( "disablearrivals", 0 );
    level flag::set( "flag_adler_seen" );
    level flag::set( "move_ghost_station_allies_to_guard_station_door" );
    goal = getnode( "pre_ghost_station_left_platform_door_node", "targetname" );
    self ai::set_behavior_attribute( "demeanor", "cqb" );
    self thread spawner::go_to_node( goal );
    self waittill( #"goal" );
    self ai::set_behavior_attribute( "demeanor", "combat" );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x8217d233, Offset: 0x2d68
// Size: 0xec
function function_18b65165()
{
    level endon( #"ghost_station_done" );
    self endon( #"death" );
    level flag::wait_till( "flag_adler_seen" );
    self val::reset( "ghost_station", "ignoreme" );
    level flag::wait_till_any( array( "guard_station_door_left_opened_ai", "guard_station_door_right_opened_ai" ) );
    level flag::set( "left_guard_2_opened_door" );
    self val::reset( "ghost_station", "ignoreall" );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x60148df4, Offset: 0x2e60
// Size: 0xe4
function function_8ed36a5a()
{
    level endon( #"ghost_station_done" );
    self ai::set_behavior_attribute( "demeanor", "cqb" );
    level notify( #"hash_59bc0ffe214b3599" );
    self battlechatter::function_2ab9360b( 0 );
    
    if ( !level flag::get( "ally_on_left_platform" ) )
    {
        self function_cbc5c328();
    }
    
    if ( is_true( self.var_ce38a488 ) )
    {
        return;
    }
    
    self.var_ce38a488 = 1;
    level scene::play( "aib_vign_stakeout_ghost_station_guard_station_adler" );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x920570ae, Offset: 0x2f50
// Size: 0x26c
function function_b30a2f32()
{
    level scene::add_scene_func( "aib_vign_stakeout_ghost_station_platform_scene_enemy_2", &function_9ff740ab );
    level.ghost_station_right_platform_despawn_closet_door_1 = doors::get_doors( "ghost_station_right_platform_despawn_closet_door_1" )[ 0 ];
    level.ghost_station_right_platform_despawn_closet_door_2 = doors::get_doors( "ghost_station_right_platform_despawn_closet_door_2" )[ 0 ];
    ghost_station_right_platform_despawn_closet_door_3 = doors::get_doors( "ghost_station_right_platform_despawn_closet_door_3" )[ 0 ];
    ghost_station_right_platform_despawn_closet_door_3 doors::function_f35467ac();
    level thread function_a6e974cb();
    level.ghost_station_right_platform_despawn_closet_door_1 thread namespace_11998b8f::function_b9a028e4( "ghost_station_left_platform_enemies_cleared", "right_platform_door_opened" );
    level.ghost_station_right_platform_despawn_closet_door_2 thread namespace_11998b8f::function_b9a028e4( "ghost_station_left_platform_enemies_cleared", "right_platform_door_opened" );
    level.guard_station_door_left = doors::get_doors( "guard_station_door_left" )[ 0 ];
    level.guard_station_door_right = doors::get_doors( "guard_station_door_right" )[ 0 ];
    level.guard_station_door_left thread function_b1f03033( "guard_station_door_left_opened" );
    level.guard_station_door_right thread function_b1f03033( "guard_station_door_right_opened" );
    level.guard_station_door_left thread function_9a500e88( "guard_station_door_left_opened_ai", 0 );
    level.guard_station_door_right thread function_9a500e88( "guard_station_door_right_opened_ai", 0 );
    var_46e054c8 = level.guard_station_door_left doors::function_73f09315();
    var_46e054c8 thread function_c08d83ac();
    level flag::wait_till_any( array( "guard_station_door_left_stop_animating", "guard_station_door_left_done_animating" ) );
    var_46e054c8 unlink();
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0xd16ca1f9, Offset: 0x31c8
// Size: 0x70
function function_a6e974cb()
{
    e_vol = getent( "ghost_station_right_platform_player_closet_volume", "targetname" );
    level flag::wait_till( "right_platform_closet_closed" );
    player = getplayers()[ 0 ];
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 1, eflags: 0x0
// Checksum 0x80389560, Offset: 0x3240
// Size: 0x64
function function_9ff740ab( a_ents )
{
    mdl_door = level.guard_station_door_left doors::function_73f09315();
    mdl_door linkto( a_ents[ #"door_prop" ], "j_prop_1", ( 0, 0, 0 ), ( 0, 0, 0 ) );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 1, eflags: 0x0
// Checksum 0xdf4f4df1, Offset: 0x32b0
// Size: 0x2fc
function function_b1f03033( var_2a7f2052 )
{
    level endon( #"ghost_station_done" );
    self namespace_11998b8f::function_b9a028e4( "ghost_station_left_platform_enemies_cleared", var_2a7f2052, 1 );
    level flag::set( "guard_station_door_left_stop_animating" );
    level flag::set( "guard_station_doors_opened" );
    wait 0.3;
    player = getplayers()[ 0 ];
    var_5e98e1e4 = player flag::get( "body_shield_active" );
    
    if ( self.c_door.var_c4c3fa39 === 1 )
    {
        level notify( #"guard_door_bashed" );
    }
    else
    {
        level notify( #"guard_door_opened" );
    }
    
    if ( self.c_door.var_c4c3fa39 === 1 && isdefined( player.takedown.var_198a4d10 ) )
    {
        exploder::exploder( "fx_exp_gs_door_kick_dust" );
        
        if ( !isdefined( level.light_pulse ) && !level flag::get( "player_in_guard_room" ) )
        {
            level.light_pulse = 1;
            var_a94cb625 = struct::get( "light_physics_pulse_pos", "targetname" );
            
            if ( isalive( player.takedown.var_198a4d10 ) )
            {
                player.takedown.var_198a4d10 waittill( #"death" );
                forward = anglestoforward( var_a94cb625.angles );
                power = forward * 0.6;
                physicsjolt( var_a94cb625.origin, 100, 100, power );
                snd::play( "evt_stk_gs_gr_doorbreach_elec_arcing_spark_pop", ( -5892, 10892, -284 ) );
                level thread exploder::exploder( "fx_exp_elec_box_spark" );
                
                /#
                    iprintlnbold( "<dev string:x38>" );
                #/
            }
        }
    }
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 2, eflags: 0x0
// Checksum 0xdc60db91, Offset: 0x35b8
// Size: 0x4c
function function_9a500e88( var_2a7f2052, var_721023c5 )
{
    level endon( #"ghost_station_done" );
    self namespace_11998b8f::function_b9a028e4( "ghost_station_left_platform_enemies_cleared", var_2a7f2052, var_721023c5 );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0xf977eee8, Offset: 0x3610
// Size: 0xcc
function function_c08d83ac()
{
    level endon( #"guard_station_doors_opened" );
    self endon( #"death" );
    player = getplayers()[ 0 ];
    player endon( #"death" );
    
    while ( true )
    {
        waitframe( 1 );
        
        if ( distancesquared( self.origin, player.origin ) <= 32 * 32 )
        {
            level flag::set( "guard_station_door_left_stop_animating" );
            break;
        }
    }
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0xa5dadc47, Offset: 0x36e8
// Size: 0x154
function function_b0317237()
{
    level flag::wait_till( "spawn_ghost_station_right_platform_enemies" );
    level.ghost_station_right_platform_enemies = spawner::simple_spawn( "ghost_station_right_platform_enemies", &function_a6b0904f );
    level thread function_9da6d59e();
    level thread function_f838137();
    level flag::wait_till( "spawn_ghost_station_left_platform_enemies" );
    var_3465cc0c = getspawnerarray( "ghost_station_left_platform_enemies", "script_noteworthy" );
    level.ghost_station_left_platform_enemies = spawner::simple_spawn( var_3465cc0c, &function_7219a1eb );
    level thread function_2ee13cfe();
    
    if ( !flag::get( "stealth_spotted" ) )
    {
        level thread function_a9c4e7a();
    }
    
    level thread function_1ac563ed();
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x70bdbdd4, Offset: 0x3848
// Size: 0xc4
function function_627ffdac()
{
    self endon( #"death" );
    self waittill( #"stealth_combat" );
    wait 1.5;
    
    if ( level flag::get( "stealth_spotted" ) )
    {
        if ( !level flag::get( self.script_stealthgroup + "_stealth_spotted" ) )
        {
            level flag::set( self.script_stealthgroup + "_stealth_spotted" );
        }
    }
    
    level flag::set( "ghost_station_stealth_was_broken" );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x5a444cea, Offset: 0x3918
// Size: 0x144
function function_66163c33()
{
    self endon( #"death" );
    self waittill( #"stealth_investigate" );
    wait randomfloatrange( 0.4, 0.7 );
    level flag::set( "flag_adler_seen" );
    
    while ( true )
    {
        if ( distance2dsquared( self.origin, level.adler.origin ) < sqr( 180 ) )
        {
            if ( sighttracepassed( self geteye(), level.adler geteye(), 1, self ) )
            {
                self function_a3fcf9e0( "attack", level.player, level.player.origin );
                return;
            }
        }
        
        wait 0.25;
    }
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x91e6f013, Offset: 0x3a68
// Size: 0x1fc
function function_a6b0904f()
{
    self endon( #"death" );
    self thread function_627ffdac();
    self ai::set_behavior_attribute( "demeanor", "cqb" );
    self.goalradius = 16;
    self.flashlightoverride = 1;
    
    switch ( self.script_noteworthy )
    {
        case #"hash_7d70595d438ed901":
            level.var_59b550c1 = self;
            self thread function_f2f99070();
            break;
        case #"hash_7d70565d438ed3e8":
            level.var_9872ce3b = self;
            break;
        case #"hash_7d70575d438ed59b":
            level.var_a7316bb8 = self;
            break;
    }
    
    level flag::wait_till( "ghost_station_right_platform_enemies_stealth_spotted" );
    self spawner::function_461ce3e9();
    self.goalradius = 1024;
    
    if ( level flag::get( "ghost_station_left_platform_enemies_stealth_spotted" ) )
    {
        self thread function_834020c7();
    }
    else
    {
        vol = getent( "ghost_station_right_platform_enemy_combat_volume", "targetname" );
        self setgoal( vol, 1 );
    }
    
    level flag::wait_till( "ghost_station_left_platform_enemies_cleared" );
    self thread function_834020c7();
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0xf67457, Offset: 0x3c70
// Size: 0xfc
function function_834020c7()
{
    self endon( #"death" );
    self namespace_979752dc::enable_stealth_for_ai( 0 );
    self val::set( "ghost_station_flee", "ignoreall", 1 );
    self val::set( "ghost_station_flee", "ignoreme", 1 );
    level flag::clear( "ghost_station_right_platform_enemies_stealth_spotted" );
    waitframe( 1 );
    self thread function_8354d781();
    vol = getent( "ghost_station_right_platform_enemy_closet_volume", "targetname" );
    self setgoal( vol, 1 );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x6a150247, Offset: 0x3d78
// Size: 0xb6
function function_8354d781()
{
    self endon( #"death" );
    player = getplayers()[ 0 ];
    
    while ( true )
    {
        if ( distancesquared( player.origin, self.origin ) < 147456 )
        {
            self val::reset_all( "ghost_station_flee" );
            level flag::set( "ghost_station_right_platform_enemies_stealth_spotted" );
        }
        
        waitframe( 1 );
    }
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x2f28247a, Offset: 0x3e38
// Size: 0x3e
function function_f2f99070()
{
    self endon( #"death" );
    level flag::wait_till( "right_platform_enemy_flashlight_off" );
    self.flashlightoverride = 0;
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x5966c0c1, Offset: 0x3e80
// Size: 0x206
function function_9da6d59e()
{
    level endon( #"ghost_station_right_platform_enemies_cleared" );
    e_vol = getent( "ghost_station_right_platform_enemy_closet_volume", "targetname" );
    player = getplayers()[ 0 ];
    
    while ( true )
    {
        function_1eaaceab( level.ghost_station_right_platform_enemies );
        
        if ( level.ghost_station_right_platform_enemies.size > 0 && array::is_touching( level.ghost_station_right_platform_enemies, e_vol ) && distancesquared( player.origin, level.ghost_station_right_platform_despawn_closet_door_1.origin ) > 147456 )
        {
            level.ghost_station_right_platform_despawn_closet_door_1 doors::close();
            level flag::set( "right_platform_closet_closed" );
            
            if ( isdefined( level.ghost_station_right_platform_despawn_closet_door_1.c_door ) )
            {
                level.ghost_station_right_platform_despawn_closet_door_1.c_door flag::wait_till( "door_fully_closed" );
            }
            
            foreach ( guy in level.ghost_station_right_platform_enemies )
            {
                guy delete();
            }
            
            break;
        }
        
        waitframe( 1 );
    }
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x662d81d7, Offset: 0x4090
// Size: 0x3c
function function_f838137()
{
    level waittill( #"ghost_station_right_platform_enemies_cleared" );
    level flag::clear( "ghost_station_right_platform_enemies_stealth_spotted" );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x9220a27c, Offset: 0x40d8
// Size: 0x1d4
function function_7219a1eb()
{
    self endon( #"death" );
    self thread function_627ffdac();
    self thread function_66163c33();
    self ai::set_behavior_attribute( "demeanor", "cqb" );
    self.goalradius = 1;
    
    switch ( self.targetname )
    {
        case #"hash_375eddf303f2f9c5":
            level.var_da677ee8 = self;
            self thread function_4e03739a();
            self thread function_da677ee8();
            self thread function_5eb57821();
            break;
        case #"left_platform_guy_3":
            level.var_a8b99b8d = self;
            self thread function_a8b99b8d();
            break;
        case #"left_platform_guy_1":
            level.var_f3608e6d = self;
            self.var_c681e4c1 = 1;
            self flag::set( "push_immune" );
            break;
        case #"left_platform_guy_2":
            level.var_247ff0ab = self;
            self.var_c681e4c1 = 1;
            self flag::set( "push_immune" );
            break;
    }
    
    self thread function_5c001093();
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0xb7a911cd, Offset: 0x42b8
// Size: 0x30c
function function_5c001093()
{
    self endon( #"death" );
    s_result = level flag::wait_till_any( array( "guard_station_doors_opened", "stealth_spotted", "player_in_guard_room" ) );
    player = getplayers()[ 0 ];
    
    if ( isdefined( level.var_da677ee8 ) && level.var_da677ee8 == self )
    {
        if ( scene::is_active( "aib_vign_stakeout_ghost_station_platform_scene_enemy_1" ) )
        {
            level thread scene::stop( "aib_vign_stakeout_ghost_station_platform_scene_enemy_1" );
        }
        
        level.var_da677ee8 function_a3fcf9e0( "attack", player, player.origin );
    }
    
    if ( isdefined( level.var_a8b99b8d ) && level.var_a8b99b8d == self )
    {
        if ( scene::is_active( "aib_vign_stakeout_ghost_station_platform_scene_enemy_2" ) )
        {
            level thread scene::stop( "aib_vign_stakeout_ghost_station_platform_scene_enemy_2" );
        }
        
        level.var_a8b99b8d function_a3fcf9e0( "attack", player, player.origin );
    }
    
    self.goalradius = 64;
    self ai::set_behavior_attribute( "demeanor", "combat" );
    
    if ( s_result._notify == #"guard_station_doors_opened" || s_result._notify == #"player_in_guard_room" )
    {
        if ( self.targetname == "left_platform_guy_1" || self.targetname == "left_platform_guy_2" )
        {
            vol = getent( "ghost_station_left_platform_enemy_combat_volume", "targetname" );
            self setgoal( vol, 1 );
        }
        
        wait 4;
    }
    else
    {
        vol = getent( "ghost_station_left_platform_enemy_combat_volume2", "targetname" );
        self setgoal( vol, 1 );
        wait 6;
    }
    
    vol = getent( "ghost_station_left_platform_enemy_combat_volume2", "targetname" );
    self setgoal( vol, 1 );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x9da40dd4, Offset: 0x45d0
// Size: 0xbc
function function_a9c4e7a()
{
    level flag::wait_till( "start_ghost_station_left_platform_enemies_anims" );
    
    if ( level flag::get( "stealth_spotted" ) )
    {
        return;
    }
    
    if ( isalive( level.var_da677ee8 ) )
    {
        level thread scene::play( "aib_vign_stakeout_ghost_station_platform_scene_enemy_1" );
    }
    
    if ( isalive( level.var_a8b99b8d ) )
    {
        level thread scene::play( "aib_vign_stakeout_ghost_station_platform_scene_enemy_2" );
    }
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x89ed5e45, Offset: 0x4698
// Size: 0x34
function function_da677ee8()
{
    self waittill( #"death" );
    level flag::set( "ghost_station_flashlight_enemy_dead" );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x5710e38d, Offset: 0x46d8
// Size: 0x1cc
function function_5eb57821()
{
    if ( !isalive( self ) || flag::get( "ghost_station_left_platform_enemies_stealth_spotted" ) )
    {
        return;
    }
    
    waitresult = self waittill( #"takedown_begin", #"damage", #"death", #"set_alert_level", #"stealth_investigate", #"stealth_combat" );
    objectives::remove( #"hash_683a895dcd45e961", self );
    
    if ( waitresult._notify == "takedown_begin" )
    {
        loc = struct::get( "obj_ghost_station_door_bash", "targetname" );
        objectives::function_4eb5c04a( #"hash_3cf0d908a3c737c1", loc.origin, undefined, 0 );
        objectives::function_67f87f80( #"hash_3cf0d908a3c737c1", undefined, #"hash_7b11d2b59adb5e2a" );
        util::waittill_any_ents( self, "death", level, "guard_door_bashed", level, "guard_door_opened" );
        objectives::remove( #"hash_3cf0d908a3c737c1" );
    }
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x8ae6fe8b, Offset: 0x48b0
// Size: 0x3c
function function_4e03739a()
{
    self endon( #"death" );
    self waittill( #"flashlight_on" );
    self flashlight::function_7c2f623b();
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x64b19176, Offset: 0x48f8
// Size: 0x8c
function function_a8b99b8d()
{
    self endon( #"death" );
    self thread function_77b94778();
    self waittill( #"metal_door_close" );
    self thread function_c5a054db();
    level waittill( #"hash_7a945b898e544949" );
    level flag::set( "guard_station_door_left_done_animating" );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x42e8878, Offset: 0x4990
// Size: 0x94
function function_77b94778()
{
    self endon( #"metal_door_close" );
    self waittill( #"takedown_begin", #"stealth_combat", #"stealth_investigate", #"damage", #"death", #"set_alert_level" );
    level flag::set( "guard_station_door_left_stop_animating" );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x8ffcf2c6, Offset: 0x4a30
// Size: 0x15c
function function_c5a054db()
{
    self endon( #"death", #"takedown_begin", #"stealth_combat", #"stealth_investigate", #"damage", #"set_alert_level" );
    level waittill( #"hash_4d550d37737ca7b0" );
    struct = struct::get( "left_platform_guy_3_start_node", "targetname" );
    self.goalradius = 32;
    self thread spawner::go_to_node( struct );
    player = getplayers()[ 0 ];
    
    while ( isalive( player ) && distancesquared( player.origin, self.origin ) > 40000 )
    {
        wait 0.25;
    }
    
    level flag::set( "move_left_platform_guy_3" );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x8c86bdea, Offset: 0x4b98
// Size: 0x26c
function function_1ac563ed()
{
    level scene::init( "aib_vign_stakeout_ghost_station_guard_station_enemy" );
    level scene::init( "p9_fxanim_cp_stakeout_subway_door_breach_bundle" );
    var_a94cb625 = struct::get( "table_physics_pulse_pos", "targetname" );
    var_46c42381 = struct::get( "guard_room_magicbullet_shelf_1", "targetname" );
    var_3892871e = struct::get( "guard_room_magicbullet_shelf_2", "targetname" );
    var_81441884 = struct::get( "table_physics_pulse_pos2", "targetname" );
    
    while ( !isdefined( level.var_f3608e6d ) )
    {
        waitframe( 1 );
    }
    
    level function_7d87c283();
    guard_room_shelf_clip = getent( "guard_room_shelf_clip", "targetname" );
    
    if ( isdefined( guard_room_shelf_clip ) )
    {
        guard_room_shelf_clip delete();
    }
    
    level util::delay( 0.7, undefined, &scene::play, "p9_fxanim_cp_stakeout_subway_door_breach_bundle" );
    level scene::play( "aib_vign_stakeout_ghost_station_guard_station_enemy", "react" );
    player = getplayers()[ 0 ];
    
    if ( isalive( level.var_f3608e6d ) )
    {
        level.var_f3608e6d function_a3fcf9e0( "attack", player, player.origin );
    }
    
    if ( isalive( level.var_247ff0ab ) )
    {
        level.var_247ff0ab function_a3fcf9e0( "attack", player, player.origin );
    }
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 1, eflags: 0x0
// Checksum 0x3190f82a, Offset: 0x4e10
// Size: 0xea
function function_2bc795ba( struct )
{
    v_origin = self.origin;
    self waittill( #"death" );
    
    if ( isdefined( self ) && isdefined( self.origin ) )
    {
        v_origin = self.origin;
    }
    
    wait 0.25;
    n_distance = distance( v_origin, struct.origin );
    
    if ( n_distance <= 150 && !is_true( struct.var_4810471b ) )
    {
        physicsexplosionsphere( struct.origin, 100, 100, 0.25 );
        struct.var_4810471b = 1;
    }
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0xff7a6a0c, Offset: 0x4f08
// Size: 0xf4
function function_7d87c283()
{
    level.var_f3608e6d endon( #"death", #"stealth_combat", #"stealth_investigate", #"damage", #"set_alert_level" );
    level.var_247ff0ab endon( #"death", #"stealth_combat", #"stealth_investigate", #"damage", #"set_alert_level" );
    level flag::wait_till_any( array( "ghost_station_left_platform_enemies_stealth_spotted", "player_too_close_to_table_guards", "left_guard_2_opened_door" ) );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x7e2c7d74, Offset: 0x5008
// Size: 0x3c
function function_2ee13cfe()
{
    level waittill( #"ghost_station_left_platform_enemies_cleared" );
    level flag::clear( "ghost_station_left_platform_enemies_stealth_spotted" );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x36397212, Offset: 0x5050
// Size: 0x4f8
function function_48695888()
{
    level.var_2c3f2c7d = 0;
    level.var_91ee8248 = [];
    level.var_5679f947 = 28;
    level.var_e0c474ad = 0;
    scene::add_scene_func( "p9_fxanim_cp_stakeout_subway_train_passing_01_bundle", &function_afa07dfb, "done" );
    scene::add_scene_func( "p9_fxanim_cp_stakeout_subway_train_passing_02_bundle", &function_afa07dfb, "done" );
    level namespace_b4dbc583::function_26c67eeb( struct::get( "train_car_03_caboose" ), struct::get( "train_car_03_start_org" ), struct::get( "train_car_03_audio_org" ) );
    var_116e3c5f = namespace_b4dbc583::function_d02dc0ba();
    waitframe( 1 );
    var_116e3c5f[ #"vehicle 2" ] playrumbleonentity( #"hash_2df4857520a49abc" );
    var_116e3c5f[ #"hash_5c059914188784d8" ] playrumbleonentity( #"hash_2df4857520a49abc" );
    var_116e3c5f[ #"hash_5c05961418877fbf" ] playrumbleonentity( #"hash_2df4857520a49abc" );
    level thread scene::play( "p9_fxanim_cp_stakeout_subway_train_passing_01_bundle", var_116e3c5f );
    level flag::wait_till( "start_ghost_station_left_platform_enemies_anims" );
    wait 14;
    level flag::wait_till( "ally_on_left_platform" );
    level flag::set( "start_second_trains" );
    var_44fda395 = namespace_b4dbc583::function_9e2e1f19();
    waitframe( 1 );
    var_44fda395[ #"vehicle 2" ] playrumbleonentity( #"hash_2df4857520a49abc" );
    var_44fda395[ #"hash_5c059914188784d8" ] playrumbleonentity( #"hash_2df4857520a49abc" );
    var_44fda395[ #"hash_5c05961418877fbf" ] playrumbleonentity( #"hash_2df4857520a49abc" );
    level thread scene::play( "p9_fxanim_cp_stakeout_subway_train_passing_02_bundle", var_44fda395 );
    wait 2;
    var_116e3c5f namespace_b4dbc583::function_61fc8e84( 1 );
    waitframe( 1 );
    level scene::play( "p9_fxanim_cp_stakeout_subway_train_passing_01_bundle", var_116e3c5f );
    level notify( #"hash_23867b1a0132afc0" );
    
    foreach ( train in var_116e3c5f )
    {
        if ( isdefined( train.hurt_trigger ) )
        {
            train.hurt_trigger delete();
        }
        
        if ( isdefined( train.animnode ) )
        {
            train.animnode delete();
        }
        
        train delete();
    }
    
    foreach ( train in var_44fda395 )
    {
        if ( isdefined( train.hurt_trigger ) )
        {
            train.hurt_trigger delete();
        }
        
        if ( isdefined( train.animnode ) )
        {
            train.animnode delete();
        }
        
        train delete();
    }
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 1, eflags: 0x0
// Checksum 0xdd1d1df0, Offset: 0x5550
// Size: 0x24
function function_afa07dfb( a_ents )
{
    level thread namespace_b4dbc583::function_44e94ea4( a_ents );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 1, eflags: 0x0
// Checksum 0x84ce14bc, Offset: 0x5580
// Size: 0xec
function function_a6dfa615( skipto )
{
    if ( !is_true( skipto ) )
    {
        level flag::wait_till( "spawn_ghost_station_right_platform_enemies" );
    }
    
    level thread scene::play( "p9_fxanim_cp_stakeout_rats_subway_01_bundle" );
    guard_room_light = getent( "ghost_station_guard_room_light", "targetname" );
    guard_room_light clientfield::set( "guard_room_light", 1 );
    level flag::wait_till( "ghost_station_exit_done" );
    guard_room_light clientfield::set( "guard_room_light", 0 );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0xf2554992, Offset: 0x5678
// Size: 0xf6
function function_78d10ca2()
{
    level endon( #"hash_23867b1a0132afc0" );
    
    while ( true )
    {
        result = level waittill( #"hash_a52424b9eaac1c5" );
        
        switch ( result.bundle )
        {
            case #"hash_ac30731e7561675":
                level thread scene::play( "p9_fxanim_cp_stakeout_subway_train_passing_conduit_bundle" );
                break;
            case #"wires":
                level thread scene::play( "p9_fxanim_cp_stakeout_subway_train_passing_wires_bundle" );
                break;
            case #"bottles":
                level thread scene::play( "p9_fxanim_cp_stakeout_subway_train_passing_bottles_bundle" );
                break;
        }
    }
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 1, eflags: 0x0
// Checksum 0x54304f4c, Offset: 0x5778
// Size: 0x90
function function_b3b12f9a( skipto )
{
    if ( !is_true( skipto ) )
    {
        level flag::wait_till( "ladder_vo_player" );
        wait 6;
    }
    
    while ( !flag::get( "ghost_station_exit_done" ) )
    {
        level scene::play( "p9_fxanim_cp_stakeout_sewer_rats_bundle" );
        wait 10;
    }
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x4
// Checksum 0x935f29c0, Offset: 0x5810
// Size: 0x7c
function private function_ad5010cb()
{
    level thread function_2fb578af();
    level thread function_9cd9dd8c();
    level thread function_51069703();
    level thread function_b21f1c1b();
    level thread function_3286873a();
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x4
// Checksum 0xfa1256f9, Offset: 0x5898
// Size: 0x37c
function private function_2fb578af()
{
    level endon( #"ghost_station_done" );
    level flag::wait_till( "start_ghost_station_left_platform_enemies_anims" );
    
    if ( !isdefined( level.var_da677ee8 ) )
    {
        while ( !isdefined( level.var_da677ee8 ) )
        {
            waitframe( 1 );
        }
    }
    
    if ( !flag::get( "ghost_station_left_platform_enemies_stealth_spotted" ) )
    {
        level.adler dialogue::queue( "vox_cp_stkt_03024_adlr_movementonthepl_5c" );
    }
    
    level flag::wait_till( "adler_left_platform_vo_line_01" );
    
    if ( !isdefined( level.adler.var_71c9458e ) && !flag::get_all( array( "ghost_station_left_platform_enemies_stealth_spotted", "ghost_station_flashlight_enemy_dead", "flag_vo_left_platform" ) ) )
    {
        level.adler dialogue::queue( "vox_cp_stkt_03024_adlr_letstakehimoutq_b5" );
    }
    
    objectives::follow( #"hash_683a895dcd45e961", level.var_da677ee8, undefined, undefined, 0, #"hash_1fc6531898d32c94" );
    level flag::wait_till( "flag_vo_left_platform" );
    
    if ( !isdefined( level.adler.var_71c9458e ) && !flag::get_all( array( "ghost_station_left_platform_enemies_stealth_spotted", "ghost_station_flashlight_enemy_dead", "flag_vo_left_platform_2" ) ) )
    {
        wait 0.35;
        level.adler dialogue::queue( "vox_cp_stkt_03024_adlr_careful_f0" );
    }
    
    level flag::wait_till( "flag_vo_left_platform_2" );
    
    if ( !isdefined( level.adler.var_71c9458e ) && !flag::get_all( array( "ghost_station_left_platform_enemies_stealth_spotted", "ghost_station_flashlight_enemy_dead" ) ) )
    {
        level.adler dialogue::queue( "vox_cp_stkt_03024_adlr_takeitslow_95" );
    }
    
    level flag::wait_till_any( array( "move_ghost_station_allies_to_guard_station_door", "left_platform_clear" ) );
    wait 1;
    
    if ( !isdefined( level.adler.var_71c9458e ) )
    {
        level.adler thread dialogue::queue( "vox_cp_stkt_03024_adlr_moveup_ca" );
    }
    
    level flag::wait_till( "ally_at_guard_station_door" );
    
    if ( !flag::get( "guard_station_doors_opened" ) )
    {
        level.adler thread dialogue::queue( "vox_cp_stkt_03024_adlr_onyou_68" );
    }
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x0
// Checksum 0x3e727a5b, Offset: 0x5c20
// Size: 0xa4
function function_9cd9dd8c()
{
    e_vol = getent( "vol_touching_tracks", "targetname" );
    level flag::wait_till( "start_second_trains" );
    wait 4;
    player = getplayers()[ 0 ];
    
    if ( player istouching( e_vol ) )
    {
        dialogue::radio( "vox_cp_stkt_03025_adlr_traincominggeto_0e" );
    }
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x4
// Checksum 0x4391c2ee, Offset: 0x5cd0
// Size: 0x2bc
function private function_51069703()
{
    level flag::wait_till( "spawn_ghost_station_right_platform_enemies" );
    wait 2;
    
    if ( !isdefined( level.var_59b550c1 ) )
    {
        return;
    }
    
    if ( !isdefined( level.var_9872ce3b ) )
    {
        return;
    }
    
    if ( !isdefined( level.var_a7316bb8 ) )
    {
        return;
    }
    
    level.var_59b550c1 thread function_d8910c69();
    level.var_9872ce3b thread function_d8910c69();
    level.var_59b550c1 endon( #"death", #"stealth_combat", #"hash_7bbdc350f2b82c6" );
    level.var_9872ce3b endon( #"death", #"stealth_combat", #"hash_7bbdc350f2b82c6" );
    player = getplayers()[ 0 ];
    player endon( #"takedown_active" );
    var_6ca67914 = snd::play( "vox_cp_stkt_03040_gms1_squad3report_67", [ level.var_59b550c1, "j_head" ] );
    wait 2.5;
    level.var_59b550c1 dialogue::queue( "vox_cp_stkt_03040_gms2_wejuststartedse_73" );
    var_6ca67914 = snd::play( "vox_cp_stkt_03040_gms1_onceyourefinish_bf", [ level.var_59b550c1, "j_head" ] );
    wait 3.3;
    level.var_59b550c1 dialogue::queue( "vox_cp_stkt_03040_gms2_yessir_f9" );
    level.var_59b550c1 dialogue::queue( "vox_cp_stkt_03040_gms2_hoffmankrugeryo_42" );
    level.var_9872ce3b dialogue::queue( "vox_cp_stkt_03040_gms3_nothingyet_77" );
    level.var_59b550c1 dialogue::queue( "vox_cp_stkt_03040_gms2_allrightkeepsea_45" );
    level.var_9872ce3b dialogue::queue( "vox_cp_stkt_03040_gms3_whywewerejustth_fd" );
    level.var_59b550c1 dialogue::queue( "vox_cp_stkt_03040_gms2_idontknowcomman_0f" );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x4
// Checksum 0xf78d1800, Offset: 0x5f98
// Size: 0x1cc
function private function_b21f1c1b()
{
    level endon( #"stealth_spotted" );
    level flag::wait_till( "start_ghost_station_left_platform_enemies_anims" );
    level thread namespace_5ceacc03::function_60ca00d0();
    wait 2;
    
    if ( !isdefined( level.var_da677ee8 ) )
    {
        return;
    }
    
    if ( !isdefined( level.var_a8b99b8d ) )
    {
        return;
    }
    
    level.var_da677ee8 thread function_d8910c69();
    level.var_a8b99b8d thread function_d8910c69();
    level.var_da677ee8 endon( #"death", #"stealth_combat", #"hash_7bbdc350f2b82c6" );
    level.var_a8b99b8d endon( #"death", #"stealth_combat", #"hash_7bbdc350f2b82c6" );
    player = getplayers()[ 0 ];
    player endon( #"takedown_active" );
    level.var_a8b99b8d dialogue::queue( "vox_cp_stkt_03022_gms2_thesedamnbootsa_3b" );
    level.var_da677ee8 dialogue::queue( "vox_cp_stkt_03022_gms1_iknowbutspringw_87" );
    level.var_a8b99b8d dialogue::queue( "vox_cp_stkt_03022_gms2_goodyoufinishup_fa" );
    level.var_da677ee8 dialogue::queue( "vox_cp_stkt_03022_gms1_allrightillbeth_38" );
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x4
// Checksum 0x22a63a5c, Offset: 0x6170
// Size: 0xa4
function private function_d8910c69()
{
    ret = self waittill( #"damage", #"death", #"hash_295d670ae0fe711e", #"takedown_begin", #"stealth_combat", #"stealth_investigate" );
    self notify( #"hash_7bbdc350f2b82c6" );
    self dialogue::function_47b06180();
}

// Namespace namespace_a613430e/namespace_a613430e
// Params 0, eflags: 0x4
// Checksum 0x5b03572e, Offset: 0x6220
// Size: 0x23c
function private function_3286873a()
{
    level endon( #"stealth_spotted" );
    level flag::wait_till( "start_ghost_station_left_platform_enemies_anims" );
    wait 16;
    
    if ( !isdefined( level.var_f3608e6d ) )
    {
        return;
    }
    
    if ( !isdefined( level.var_247ff0ab ) )
    {
        return;
    }
    
    level.var_f3608e6d thread function_d8910c69();
    level.var_247ff0ab thread function_d8910c69();
    level.var_f3608e6d endon( #"death", #"stealth_combat", #"hash_7bbdc350f2b82c6" );
    level.var_247ff0ab endon( #"death", #"stealth_combat", #"hash_7bbdc350f2b82c6" );
    player = getplayers()[ 0 ];
    player endon( #"takedown_active" );
    level.var_f3608e6d dialogue::queue( "vox_cp_stkt_03065_gms2_whenarewesuppos_80" );
    level.var_247ff0ab dialogue::queue( "vox_cp_stkt_03065_gms3_in15minutes_90" );
    level.var_f3608e6d dialogue::queue( "vox_cp_stkt_03065_gms2_goodineedtositd_81" );
    level.var_247ff0ab dialogue::queue( "vox_cp_stkt_03065_gms3_whatareyoucompl_28" );
    wait 2;
    level.var_f3608e6d dialogue::queue( "vox_cp_stkt_03065_gms2_heykarlwhydothe_a0" );
    level.var_247ff0ab dialogue::queue( "vox_cp_stkt_03065_gms3_idontknowwhydot_aa" );
    level.var_f3608e6d dialogue::queue( "vox_cp_stkt_03065_gms2_youneedonewhoca_36" );
    level.var_247ff0ab dialogue::queue( "vox_cp_stkt_03065_gms3_thatsagoodone_05" );
}

