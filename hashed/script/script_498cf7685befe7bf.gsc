#using script_3dc93ca9902a9cda;
#using script_4937c6974f43bb71;
#using script_77f51076c7c89596;
#using script_e3ec3024527fc15;
#using scripts\core_common\animation_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\struct;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\core_common\vehicle_ai_shared;
#using scripts\core_common\vehicle_shared;
#using scripts\core_common\vehicleriders_shared;
#using scripts\cp_common\hms_util;
#using scripts\cp_common\snd;
#using scripts\cp_common\util;

#namespace namespace_604e2e22;

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 1, eflags: 0x0
// Checksum 0x8a4b17fe, Offset: 0x730
// Size: 0x1274
function function_4a3de7f5( var_57ef78ed )
{
    /#
        if ( isdefined( getdvar( #"hash_2fb8df40cf115959" ) ) && getdvar( #"hash_2fb8df40cf115959" ) == 1 )
        {
            return;
        }
    #/
    
    if ( var_57ef78ed != "courtyard" )
    {
        level.player disableweaponcycling();
        level.player setlowready( 1 );
        level.player showcrosshair( 0 );
        level.player val::set( #"intro", "show_weapon_hud", 0 );
    }
    
    foreach ( drone in level.var_2b626b67 )
    {
        drone notify( #"stop_idle" );
    }
    
    level.var_91a2890b[ #"player" ] = level.player;
    level.var_91a2890b[ #"hash_748bfe70c4a0c4b2" ] = level.var_f5b3bac1[ 0 ];
    level.var_91a2890b[ #"hash_31b597795f9f6dff" ] = level.var_f5b3bac1[ 1 ];
    level.var_91a2890b[ #"hash_782f409d2a0c38c1" ] = level.var_f5b3bac1[ 2 ];
    level.var_91a2890b[ #"hash_706cbac6505d2d50" ] = level.var_f5b3bac1[ 4 ];
    level.var_91a2890b[ #"hash_25b2d1b5b7e1bf44" ] = level.var_f5b3bac1[ 5 ];
    level.var_91a2890b[ #"hash_543f2d25272c0e01" ] = level.var_f5b3bac1[ 6 ];
    level.var_91a2890b[ #"hash_2bd5a7f563267a53" ] = level.var_f5b3bac1[ 3 ];
    level.var_91a2890b[ #"hash_6da15ea1787a56c2" ] = level.var_2b626b67[ 1 ];
    level.var_91a2890b[ #"hash_7c0d320838b152e6" ] = level.var_2b626b67[ 2 ];
    level.var_91a2890b[ #"hash_4482460af363269" ] = level.var_2b626b67[ 3 ];
    level.var_91a2890b[ #"hash_22ca791ab82377ca" ] = level.var_2b626b67[ 4 ];
    level.var_91a2890b[ #"hash_20cf7811e421e8dd" ] = level.var_2b626b67[ 5 ];
    level.var_91a2890b[ #"hash_3b8b6435841b1ffb" ] = level.var_2b626b67[ 6 ];
    level.var_91a2890b[ #"hash_64ab7061a3602064" ] = level.var_2b626b67[ 7 ];
    level.var_91a2890b[ #"hash_606ad42c20b03b94" ] = level.var_2b626b67[ 8 ];
    level.var_91a2890b[ #"hash_77cd4eb342584c21" ] = level.var_2b626b67[ 9 ];
    level.var_91a2890b[ #"hash_4e09da8eb5048ced" ] = level.var_2b626b67[ 10 ];
    level.var_91a2890b[ #"hash_56e9b99ffd6af7ce" ] = level.var_2b626b67[ 11 ];
    level.var_91a2890b[ #"hash_a83ce3ba2456ee" ] = level.var_2b626b67[ 12 ];
    level.var_91a2890b[ #"hash_3f60cf3cb13073e3" ] = level.var_2b626b67[ 13 ];
    level.var_91a2890b[ #"hash_648cdaf490d4356e" ] = level.var_2b626b67[ 14 ];
    level.var_91a2890b[ #"hash_3e1df2e0b1313b17" ] = level.var_2b626b67[ 15 ];
    level.var_91a2890b[ #"hash_7efecfcbc0b03931" ] = level.var_2b626b67[ 16 ];
    level.var_91a2890b[ #"hash_31a0bd626d18c692" ] = level.var_2b626b67[ 17 ];
    level.var_91a2890b[ #"hash_6c6bd4a552d8cf1b" ] = level.var_2b626b67[ 18 ];
    level.var_91a2890b[ #"hash_4e99287abf02e81a" ] = level.var_2b626b67[ 21 ];
    level.var_91a2890b[ #"hash_4601c9bc91ea2e03" ] = level.var_2b626b67[ 22 ];
    level.var_91a2890b[ #"hash_5c87eb394b4ff8e5" ] = level.var_2b626b67[ 23 ];
    level.var_91a2890b[ #"hash_45e202e27bb36afe" ] = level.var_2b626b67[ 24 ];
    level.var_91a2890b[ #"hash_2ab62c8fb0f15779" ] = level.var_2b626b67[ 25 ];
    level.var_91a2890b[ #"hash_79ca1452f187829a" ] = level.var_2b626b67[ 26 ];
    level.var_91a2890b[ #"hash_2bb2c212c16b1042" ] = level.var_2b626b67[ 27 ];
    level.var_91a2890b[ #"hash_1f414a3f2637564f" ] = level.var_2b626b67[ 28 ];
    level.var_91a2890b[ #"hash_3269d7e37c08286c" ] = level.var_2b626b67[ 0 ];
    level.var_91a2890b[ #"hash_28917c37bf68a96b" ] = level.var_2b626b67[ 19 ];
    level.var_91a2890b[ #"hash_1c1e95ab77a5953e" ] = level.var_2b626b67[ 20 ];
    level.var_a1030c4e = vehicle::simple_spawn( "background_fav" );
    level.var_a1030c4e[ level.var_a1030c4e.size ] = vehicle::simple_spawn_single( "background_fav_l3" );
    level.var_a1030c4e[ level.var_a1030c4e.size ] = vehicle::simple_spawn_single( "background_fav_r3" );
    level.var_a1030c4e[ level.var_a1030c4e.size ] = vehicle::simple_spawn_single( "background_fav_r4" );
    level.var_a1030c4e[ level.var_a1030c4e.size ] = vehicle::simple_spawn_single( "background_fav_r5" );
    level notify( #"hash_29db583983db73c" );
    level.var_91a2890b[ #"hash_1c1e95ab77a5953e" ] setmodel( "c_t9_usa_cia_sadsoc_loadout_a" );
    level.var_91a2890b[ #"hash_28917c37bf68a96b" ] setmodel( "c_t9_usa_cia_sadsoc_loadout_b" );
    level.var_91a2890b[ #"hash_3269d7e37c08286c" ] setmodel( "c_t9_usa_cia_sadsoc_loadout_c" );
    level.var_91a2890b[ #"hash_2ab62c8fb0f15779" ] setmodel( "c_t9_usa_cia_sadsoc_loadout_d" );
    level.var_91a2890b[ #"hash_4e99287abf02e81a" ] setmodel( "c_t9_usa_cia_sadsoc_loadout_a" );
    level.var_91a2890b[ #"hash_6c6bd4a552d8cf1b" ] setmodel( "c_t9_usa_cia_sadsoc_loadout_b" );
    level.var_91a2890b[ #"hash_648cdaf490d4356e" ] setmodel( "c_t9_usa_cia_sadsoc_loadout_c" );
    level.var_91a2890b[ #"hash_4e09da8eb5048ced" ] setmodel( "c_t9_usa_cia_sadsoc_loadout_d" );
    level.var_91a2890b[ #"hash_20cf7811e421e8dd" ] setmodel( "c_t9_usa_cia_sadsoc_loadout_a" );
    level.var_91a2890b[ #"hash_3b8b6435841b1ffb" ] setmodel( "c_t9_usa_cia_sadsoc_loadout_b" );
    level.var_91a2890b[ #"hash_4482460af363269" ] setmodel( "c_t9_usa_cia_sadsoc_loadout_c" );
    level.var_91a2890b[ #"hash_6da15ea1787a56c2" ] setmodel( "c_t9_usa_cia_sadsoc_loadout_d" );
    
    foreach ( fav in level.var_a1030c4e )
    {
        fav thread vehicle::lights_on();
        fav.overridevehicledamage = &fav::damage_override;
    }
    
    level thread function_1af0cb0( var_57ef78ed );
    
    if ( !isdefined( level.var_82e50b77 ) )
    {
        level.var_82e50b77 = vehicle::simple_spawn_single( "redshirt_fav" );
        level.var_82e50b77 thread vehicle::lights_on();
        level.var_82e50b77 val::set( #"hash_8a59e6b78571c5a", "ignoreme", 1 );
        level.var_82e50b77.overridevehicledamage = &fav::damage_override;
    }
    
    level.var_91a2890b[ #"redshirt_fav" ] = level.var_82e50b77;
    level.var_91a2890b[ #"hash_bc983862f6122d0" ] = level.var_a1030c4e[ 0 ];
    level.var_91a2890b[ #"hash_bc986862f6127e9" ] = level.var_a1030c4e[ 1 ];
    level.var_91a2890b[ #"hash_bc985862f612636" ] = level.var_a1030c4e[ 4 ];
    level.var_91a2890b[ #"hash_7bbe1d304b8239a1" ] = level.var_a1030c4e[ 3 ];
    level.var_91a2890b[ #"hash_7bbe1a304b823488" ] = level.var_a1030c4e[ 2 ];
    level.var_91a2890b[ #"hash_7bbe1b304b82363b" ] = level.var_a1030c4e[ 5 ];
    level.var_91a2890b[ #"hash_7bbe20304b823eba" ] = level.var_a1030c4e[ 6 ];
    level.var_91a2890b[ #"hash_7bbe21304b82406d" ] = level.var_a1030c4e[ 7 ];
    
    if ( isdefined( level.var_82e50b77 ) )
    {
        level.var_82e50b77 thread function_d36722fc( "fire_turret" );
    }
    
    if ( isdefined( level.var_7b278a4f ) )
    {
        level.var_7b278a4f thread function_d36722fc( "fire_turret" );
    }
    
    if ( isdefined( level.var_5d798cf2 ) )
    {
        level.var_5d798cf2 thread function_d36722fc( "fire_turret" );
    }
    
    array::thread_all( level.var_a1030c4e, &function_d36722fc, "fire_turret" );
    thread function_e1ec7a14( var_57ef78ed );
    fav::init( var_57ef78ed );
    level thread function_5fb6550();
    
    if ( var_57ef78ed == "infil" )
    {
        level scene::play( "scene_sge_1010_apr_intro", "1010_apr", level.var_91a2890b );
    }
    else if ( var_57ef78ed == "emp" )
    {
        level thread scene::play_from_time( "scene_sge_1010_apr_intro", "1010_apr", level.var_91a2890b, 1, 1, 1, 1 );
    }
    
    if ( var_57ef78ed != "courtyard" )
    {
        level.player flag::set( #"shared_igc" );
        level thread function_ca80bb7a( var_57ef78ed );
        level thread scene::play( "scene_sge_1010_apr_intro", "2010_emp", level.var_91a2890b );
        level thread function_62013e65();
        level waittill( #"emp_blast" );
        level flag::set( "flg_emp_blast" );
        level.player setlowready( 0 );
        level.player showcrosshair( 1 );
        level.player val::set( #"intro", "show_weapon_hud", 1 );
        level.player val::reset( "scene_system_stance", "allow_stand" );
        level.player val::reset( "scene_system_stance", "allow_crouch" );
        level.player val::reset( "scene_system_stance", "allow_prone" );
        level.player val::reset( #"intro", "show_weapon_hud" );
        level.player namespace_534279a::function_26a3516b();
        level.player namespace_534279a::function_7149a8();
    }
    
    if ( var_57ef78ed == "courtyard" )
    {
        level scene::play_from_time( "scene_sge_1010_apr_intro", "2010_emp", level.var_91a2890b, 1, 1, 1, 1 );
        level thread function_ca80bb7a( var_57ef78ed );
        level.adler unlink();
        level.woods unlink();
        level.mason unlink();
        s_adler_fav_exit_loc = struct::get( "s_adler_fav_exit_loc" );
        level.adler forceteleport( s_adler_fav_exit_loc.origin, s_adler_fav_exit_loc.angles );
        s_woods_fav_exit_loc = struct::get( "s_woods_fav_exit_loc" );
        level.woods forceteleport( s_woods_fav_exit_loc.origin, s_woods_fav_exit_loc.angles );
        s_mason_fav_exit_loc = struct::get( "s_mason_fav_exit_loc" );
        level.mason forceteleport( s_mason_fav_exit_loc.origin, s_mason_fav_exit_loc.angles );
    }
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 0, eflags: 0x0
// Checksum 0xe25ea281, Offset: 0x19b0
// Size: 0x104
function function_62013e65()
{
    while ( !isdefined( level.player.str_current_anim ) || isdefined( level.player.str_current_anim ) && level.player.str_current_anim != #"hash_48a062b24f466225" )
    {
        waitframe( 1 );
    }
    
    while ( isdefined( level.player.str_current_anim ) )
    {
        waitframe( 1 );
    }
    
    level.player playerlinktodelta( level.var_77be18d2, "tag_passenger1", 0, 0, 0, 0, 0, 1 );
    wait 0.5;
    level.player playerlinktodelta( level.var_77be18d2, "tag_passenger1", 0, 60, 60, 80, 20, 1 );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 0, eflags: 0x0
// Checksum 0x3395b583, Offset: 0x1ac0
// Size: 0xa0
function function_5fb6550()
{
    wait 0.1;
    
    foreach ( ai_actor in level.var_91a2890b )
    {
        if ( isdefined( ai_actor ) )
        {
            ai_actor sethighdetail( 0 );
        }
    }
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 0, eflags: 0x0
// Checksum 0x2cfc2ec9, Offset: 0x1b68
// Size: 0x8c
function debug_func()
{
    while ( isdefined( level.player.str_current_anim ) )
    {
        waitframe( 1 );
    }
    
    if ( level.player.angles[ 1 ] < -45 )
    {
        level.player setplayerangles( ( level.player.angles[ 0 ], -40, level.player.angles[ 2 ] ) );
    }
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 1, eflags: 0x0
// Checksum 0xdc385ed, Offset: 0x1c00
// Size: 0x19c
function function_ca80bb7a( var_57ef78ed )
{
    if ( var_57ef78ed != "courtyard" )
    {
        level waittill( #"play_outro" );
        level thread function_5b9d8176( var_57ef78ed );
        level thread function_e0210d09();
        level scene::play( "scene_sge_1010_apr_intro", "2050_emp_outro" );
    }
    else
    {
        level scene::play_from_time( "scene_sge_1010_apr_intro", "2050_emp_outro", 1, 1, 1, 1 );
    }
    
    level thread function_794f3996();
    level.player val::reset( "scene_system_stance", "allow_stand" );
    level.player val::reset( "scene_system_stance", "allow_crouch" );
    level.player val::reset( "scene_system_stance", "allow_prone" );
    level notify( #"hash_b491ea1039553f7" );
    level.player flag::clear( #"shared_igc" );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 1, eflags: 0x0
// Checksum 0xea086b01, Offset: 0x1da8
// Size: 0xb4
function function_5b9d8176( *var_57ef78ed )
{
    level.adler thread function_2dbdb669( level.var_77be18d2, "adler", "gunner1", "rumble_player_jump_out" );
    level.mason thread function_2dbdb669( level.var_5d798cf2, "mason", "passenger1", "audio_stop_player_fav" );
    level.woods thread function_2dbdb669( level.var_5d798cf2, "woods", "gunner1", "audio_stop_player_fav" );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 4, eflags: 0x0
// Checksum 0xdad71cf7, Offset: 0x1e68
// Size: 0xac
function function_2dbdb669( vehicle, name, seat, s_notify )
{
    vehicle thread vehicle::unload( seat );
    
    if ( isdefined( s_notify ) )
    {
        level waittill( s_notify );
    }
    
    var_7f8a423b = struct::get( "s_" + name + "_fav_exit_loc" );
    self forceteleport( var_7f8a423b.origin, var_7f8a423b.angles );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 1, eflags: 0x0
// Checksum 0x56a86d5b, Offset: 0x1f20
// Size: 0x68
function function_d36722fc( s_notify )
{
    level endon( #"flg_wall_crash", #"game_ended" );
    
    while ( true )
    {
        self waittill( s_notify );
        self vehicle_ai::fireturret( 1, undefined, ( 0, 0, 0 ) );
    }
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 0, eflags: 0x0
// Checksum 0x247e4936, Offset: 0x1f90
// Size: 0x90
function function_794f3996()
{
    foreach ( drone in level.var_2b626b67 )
    {
        if ( isdefined( drone ) )
        {
            drone delete();
        }
    }
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 0, eflags: 0x0
// Checksum 0xea2a80d9, Offset: 0x2028
// Size: 0x34
function function_e0210d09()
{
    level waittill( #"hash_6cf29f6d1d8baed3" );
    level.player namespace_534279a::function_a3c3a2b0();
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 1, eflags: 0x0
// Checksum 0xe73612cc, Offset: 0x2068
// Size: 0xc4
function function_e1ec7a14( var_57ef78ed )
{
    if ( var_57ef78ed != "courtyard" )
    {
    }
    else
    {
        level.var_2b626b67[ 6 ] kill();
        level.var_2b626b67[ 7 ] kill();
        level.var_2b626b67[ 8 ] kill();
        level.var_2b626b67[ 9 ] kill();
    }
    
    level thread function_e62003ac( level.var_2b626b67 );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 1, eflags: 0x0
// Checksum 0x5afe1c64, Offset: 0x2138
// Size: 0x15c
function function_e62003ac( var_2b626b67 )
{
    level endon( #"hash_b491ea1039553f7" );
    level waittill( #"hash_41aba0a908266df4" );
    var_2b626b67[ 6 ] unlink();
    var_2b626b67[ 7 ] unlink();
    var_2b626b67[ 8 ] unlink();
    var_2b626b67[ 9 ] unlink();
    var_2b626b67[ 6 ] animation::stop();
    var_2b626b67[ 7 ] animation::stop();
    var_2b626b67[ 8 ] animation::stop();
    var_2b626b67[ 9 ] animation::stop();
    var_2b626b67[ 6 ] delete();
    var_2b626b67[ 7 ] delete();
    var_2b626b67[ 8 ] delete();
    var_2b626b67[ 9 ] delete();
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 1, eflags: 0x0
// Checksum 0xc8f1d878, Offset: 0x22a0
// Size: 0x20c
function function_1b38152a( a_actors )
{
    level waittill( #"hash_b491ea1039553f7" );
    level thread scene::play( "scene_sge_1010_apr_intro", "Truck_Exit", a_actors );
    level waittill( #"hash_45a489d348cab436" );
    level thread scene::play( "scene_sge_1010_apr_intro", "Truck_Exit2", a_actors );
    level waittill( #"hash_45a489d348cab436" );
    level thread scene::play( "scene_sge_1010_apr_intro", "Truck_Exit3", a_actors );
    level waittill( #"hash_45a489d348cab436" );
    level thread scene::play( "scene_sge_1010_apr_intro", "Truck_Exit4", a_actors );
    level waittill( #"hash_45a489d348cab436" );
    level thread scene::play( "scene_sge_1010_apr_intro", "Truck_Exit5", a_actors );
    level waittill( #"hash_45a489d348cab436" );
    level thread scene::play( "scene_sge_1010_apr_intro", "Truck_Exit6", a_actors );
    level waittill( #"hash_45a489d348cab436" );
    level thread scene::play( "scene_sge_1010_apr_intro", "Truck_Exit7", a_actors );
    level waittill( #"hash_45a489d348cab436" );
    level thread scene::play( "scene_sge_1010_apr_intro", "Truck_Exit8", a_actors );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 1, eflags: 0x0
// Checksum 0xafb0ab8c, Offset: 0x24b8
// Size: 0xcc
function function_fe7687a9( str_side )
{
    level flag::clear( "flg_dish_destroyed" );
    scene::function_27f5972e( "p9_fxanim_cp_siege_" + str_side + "_radar_collapse_01_bundle" );
    level flag::wait_till( "flg_dish_destroyed" );
    scene::play_from_time( "p9_fxanim_cp_siege_" + str_side + "_radar_collapse_01_bundle", "play" );
    scene::function_f81475ae( "p9_fxanim_cp_siege_" + str_side + "_radar_collapse_01_bundle" );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 0, eflags: 0x0
// Checksum 0x35828957, Offset: 0x2590
// Size: 0x94
function scene_sge_4010_per_wall_breach()
{
    level flag::wait_till( "breach_trigger" );
    level scene::play( "scene_sge_4010_per_wall_breach", "wall_breach" );
    level.adler unlink();
    level.woods unlink();
    level.mason unlink();
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 1, eflags: 0x0
// Checksum 0x144540dc, Offset: 0x2630
// Size: 0xf4
function scene_sge_4020_per_bomb_plant( s_location )
{
    var_6dc21951 = struct::get( "c4_pos_" + s_location, "targetname" );
    var_6dc21951 waittill( #"trigger" );
    s_scene = struct::get( "scene_sge_4020_per_bomb_plant", "targetname" );
    level thread hms_util::function_78c3826c( "scene_sge_4020_per_bomb_plant" );
    wait 1;
    var_27aad476 = s_scene.scene_ents[ #"bomb" ];
    level waittill( #"hash_523968c9e8e5864" );
    var_27aad476 hide();
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 0, eflags: 0x0
// Checksum 0xc18c9541, Offset: 0x2730
// Size: 0x154
function scene_sge_5020_cat_stairway()
{
    level thread function_a9282699();
    level endon( #"flg_catacombs_adler_catchup" );
    level scene::play( "scene_sge_5020_cat_stairway", "enter" );
    level thread scene::play( "scene_sge_5020_cat_stairway", "loop" );
    level flag::wait_till( "flg_catacomb_advance_1" );
    level scene::play( "scene_sge_5020_cat_stairway", "exit" );
    level thread scene::play( "scene_sge_5020_cat_stairway", "hold_loop" );
    level flag::wait_till( "flg_catacomb_advance_2" );
    level scene::play( "scene_sge_5020_cat_stairway", "hold_exit" );
    level scene::stop( "scene_sge_5020_cat_stairway" );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 0, eflags: 0x0
// Checksum 0x459f74b9, Offset: 0x2890
// Size: 0x44
function function_a9282699()
{
    level flag::wait_till( "flg_catacombs_adler_catchup" );
    level scene::stop( "scene_sge_5020_cat_stairway" );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 1, eflags: 0x0
// Checksum 0x8b9693ef, Offset: 0x28e0
// Size: 0x54
function scene_sge_6010_int_juggernaut_intro( enemy01 )
{
    a_actors = [];
    a_actors[ #"enemy01" ] = enemy01;
    level thread scene::play( "scene_sge_6010_int_juggernaut_intro", "intro", a_actors );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 0, eflags: 0x0
// Checksum 0x96c0a762, Offset: 0x2940
// Size: 0x2bc
function function_f2f9526e()
{
    wait 0.2;
    level.player val::set( #"hash_389c8746cab3029f", "disable_weapons", 1 );
    level.player val::set( #"hash_389c8746cab3029f", "freezecontrols_allowlook", 1 );
    namespace_82bfe441::fade( 1, "FadeImmediate" );
    wait 0.1;
    level scene::play( "scene_sge_7010_out_outro" );
    exploder::kill_exploder( "fxexp_nuke_loop_fx" );
    ai_array = getaiteamarray();
    
    foreach ( ai in ai_array )
    {
        if ( isdefined( ai ) )
        {
            ai.ignoreall = 1;
            ai.ignoreme = 1;
        }
    }
    
    a_enemies = getaiteamarray( "axis" );
    
    foreach ( ai in a_enemies )
    {
        if ( isdefined( ai ) )
        {
            if ( !isvehicle( ai ) )
            {
                ai delete();
            }
        }
    }
    
    level scene::init( "scene_sge_8000_out_rescue" );
    level waittill( #"hash_1319460fd5c7e554" );
    level scene::play( "scene_sge_8000_out_rescue" );
    level.player val::reset_all( #"hash_389c8746cab3029f" );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 3, eflags: 0x0
// Checksum 0x52ef6a98, Offset: 0x2c08
// Size: 0x254
function function_1e2a0690( var_59483212, var_53914167, var_fa359e06 )
{
    level endon( #"game_ended" );
    
    while ( !isdefined( level.player ) )
    {
        waitframe( 1 );
    }
    
    ai_enemy = undefined;
    var_c31a6f62 = getent( var_59483212, "targetname" );
    
    while ( !isdefined( ai_enemy ) )
    {
        var_c31a6f62 namespace_534279a::function_c77b8a08();
        var_7e2d6981 = randomfloatrange( 2, 5 );
        f = var_7e2d6981;
        
        while ( f > 0 )
        {
            wait 0.05;
            ai_enemy = spawner::get_ai_group_ai( var_53914167 )[ 0 ];
            
            if ( isdefined( ai_enemy ) )
            {
                break;
            }
            
            f -= 0.05;
        }
    }
    
    level thread function_e969ae51( var_c31a6f62, ai_enemy, var_fa359e06 );
    level thread function_ab89d5ef( var_c31a6f62, ai_enemy, var_fa359e06 );
    ai_enemy endon( #"death" );
    ai_enemy endon( #"deathanim" );
    
    while ( distance2dsquared( level.player.origin, ai_enemy.origin ) > sqr( 625 ) )
    {
        level function_beb5d779( var_c31a6f62, ai_enemy, var_fa359e06 );
        var_7e2d6981 = randomfloatrange( 2, 5 );
        wait var_7e2d6981;
    }
    
    ai_enemy notify( #"hash_771d89dbae9683d1" );
    level function_c09d041f( var_c31a6f62, ai_enemy, var_fa359e06 );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 3, eflags: 0x0
// Checksum 0x93f24fa9, Offset: 0x2e68
// Size: 0x194
function function_e969ae51( var_c31a6f62, ai_enemy, var_fa359e06 )
{
    level endon( #"game_ended" );
    ai_enemy endon( #"hash_4b077f7b75104dbb", #"entitydeleted" );
    a_actors = [];
    a_actors[ #"hash_2c76c3576b102f5" ] = var_c31a6f62;
    a_actors[ #"actor 1" ] = ai_enemy;
    
    while ( ai_enemy.health === 100 )
    {
        waitframe( 1 );
    }
    
    ai_enemy notify( #"deathanim" );
    
    if ( isdefined( ai_enemy.str_current_anim ) && ai_enemy.str_current_anim != #"hash_7123e27ee7e0f94c" )
    {
        ai_enemy animation::set_death_anim( "t9_sge_0000_ambient_aa_gun_killed_enemy", var_c31a6f62.origin, var_c31a6f62.angles );
    }
    
    ai_enemy util::stop_magic_bullet_shield();
    ai_enemy kill( level.player.origin, level.player );
    level scene::play( var_fa359e06, "killed", a_actors );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 3, eflags: 0x0
// Checksum 0x383bac4b, Offset: 0x3008
// Size: 0xac
function function_ab89d5ef( var_c31a6f62, ai_enemy, var_fa359e06 )
{
    ai_enemy endon( #"death" );
    ai_enemy endon( #"deathanim" );
    a_actors = [];
    a_actors[ #"hash_2c76c3576b102f5" ] = var_c31a6f62;
    a_actors[ #"actor 1" ] = ai_enemy;
    level scene::play( var_fa359e06, "idle", a_actors );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 3, eflags: 0x0
// Checksum 0xe5fdf93a, Offset: 0x30c0
// Size: 0x10c
function function_beb5d779( var_c31a6f62, ai_enemy, var_fa359e06 )
{
    a_actors = [];
    a_actors[ #"hash_2c76c3576b102f5" ] = var_c31a6f62;
    a_actors[ #"actor 1" ] = ai_enemy;
    var_c31a6f62 thread function_e01fd728();
    
    if ( distance2dsquared( level.player.origin, ai_enemy.origin ) < sqr( 1100 ) )
    {
        level.player playrumbleonentity( "artillery_rumble" );
    }
    
    level scene::play( var_fa359e06, "fire", a_actors );
    level thread function_ab89d5ef( var_c31a6f62, ai_enemy, var_fa359e06 );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 0, eflags: 0x0
// Checksum 0x44611528, Offset: 0x31d8
// Size: 0x8c
function function_e01fd728()
{
    wait 0.15;
    playfx( #"hash_3bf1cff80bba48d", self gettagorigin( "tag_fx" ), anglestoforward( self gettagangles( "tag_fx" ) ) );
    snd::play( "wpn_aa_fire", self );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 3, eflags: 0x0
// Checksum 0xdbb4b289, Offset: 0x3270
// Size: 0xc0
function function_c09d041f( var_c31a6f62, ai_enemy, var_fa359e06 )
{
    ai_enemy endon( #"death" );
    ai_enemy endon( #"deathanim" );
    a_actors = [];
    a_actors[ #"hash_2c76c3576b102f5" ] = var_c31a6f62;
    a_actors[ #"actor 1" ] = ai_enemy;
    level scene::play( var_fa359e06, "exit", a_actors );
    level notify( #"hash_4b077f7b75104dbb" );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 1, eflags: 0x0
// Checksum 0x6f6155ff, Offset: 0x3338
// Size: 0x98
function function_b9170a35( var_59483212 )
{
    level endon( var_59483212 + "_endon" );
    var_c31a6f62 = getent( var_59483212, "targetname" );
    
    while ( true )
    {
        var_c31a6f62 namespace_534279a::function_c77b8a08();
        var_7e2d6981 = randomfloatrange( 2, 5 );
        wait var_7e2d6981;
    }
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 0, eflags: 0x0
// Checksum 0x5cf89879, Offset: 0x33d8
// Size: 0x204
function function_3b9e7104()
{
    level.var_f5b3bac1 = spawner::simple_spawn( "intro_ally_full" );
    level.var_2b626b67 = spawner::simple_spawn( "intro_ally_drone" );
    level.var_2b626b67 = arraycombine( level.var_2b626b67, spawner::simple_spawn( "intro_ally_drone" ), 1 );
    level.var_2b626b67 = arraycombine( level.var_2b626b67, spawner::simple_spawn( "intro_ally_drone" ), 1 );
    level.var_2b626b67 = arraycombine( level.var_2b626b67, spawner::simple_spawn( "intro_ally_drone" ), 1 );
    level.var_2b626b67 = arraycombine( level.var_2b626b67, spawner::simple_spawn( "intro_ally_drone" ), 1 );
    level.var_f5b3bac1 = arraycombine( level.var_f5b3bac1, spawner::simple_spawn( "intro_ally_full" ), 1 );
    level.var_f5b3bac1 = arraycombine( level.var_f5b3bac1, spawner::simple_spawn( "intro_ally_full" ), 1 );
    level.var_f5b3bac1 = arraycombine( level.var_f5b3bac1, spawner::simple_spawn( "intro_ally_full" ), 1 );
}

// Namespace namespace_604e2e22/namespace_8b2ed159
// Params 1, eflags: 0x0
// Checksum 0xd2b87ce7, Offset: 0x35e8
// Size: 0x150
function function_1af0cb0( var_57ef78ed )
{
    if ( function_72a9e321() == 0 )
    {
        if ( var_57ef78ed == "courtyard" )
        {
            wait 6;
            
            foreach ( ai_actor in level.var_91a2890b )
            {
                if ( isdefined( ai_actor ) )
                {
                    ai_actor removenosunshadow();
                }
            }
            
            return;
        }
        
        foreach ( ai_actor in level.var_91a2890b )
        {
            if ( isdefined( ai_actor ) )
            {
                ai_actor setnosunshadow();
            }
        }
    }
}

