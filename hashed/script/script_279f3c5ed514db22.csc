#using script_1cd690a97dfca36e;
#using scripts\core_common\array_shared;
#using scripts\core_common\audio_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\music_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\cp_common\snd;
#using scripts\cp_common\snd_draw;
#using scripts\cp_common\snd_utility;

#namespace namespace_1b106d35;

// Namespace namespace_1b106d35/level_preinit
// Params 1, eflags: 0x20
// Checksum 0xb5daf62e, Offset: 0x660
// Size: 0x8c
function event_handler[level_preinit] function_b489bb7b( *eventstruct )
{
    snd::function_d4ec748e( &function_f2a2832d );
    snd::function_ce78b33b( &function_32ab045 );
    snd::trigger_init( &_trigger );
    snd::function_5e69f468( &_objective );
}

// Namespace namespace_1b106d35/event_cc819519
// Params 1, eflags: 0x20
// Checksum 0x2e05e8ab, Offset: 0x6f8
// Size: 0xb4
function event_handler[event_cc819519] function_686b88aa( *eventstruct )
{
    snd::wait_init();
    snd::waitforplayers();
    thread function_70bfbb49();
    level.player = snd::getplayerssafe()[ 0 ];
    thread function_b3665e44();
    thread function_96ace06();
    thread function_89309aa5();
    thread function_bd046ff2();
    thread function_7422beda();
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 2, eflags: 0x4
// Checksum 0x22d6baae, Offset: 0x7b8
// Size: 0x20a
function private function_32ab045( ent, name )
{
    switch ( name )
    {
        case #"hash_484b8b723a21da55":
            level.var_77be18d2 = ent;
            thread function_d9013492( ent );
            ent waittill( #"death" );
            level.var_77be18d2 = undefined;
            break;
        case #"hash_10dca2bc3c2e34e":
            level.var_77be18d2 = ent;
            level flag::set( "flg_audio_fav_started" );
            thread function_d9013492( ent );
            ent waittill( #"death" );
            level.var_77be18d2 = undefined;
            break;
        case #"hash_1bc644480960a85":
            level.var_47acec0 = ent;
            thread function_ed98c6a7( ent );
            ent waittill( #"death" );
            level.var_47acec0 = undefined;
            break;
        case #"hash_15f9e8ed7a4588e3":
            level.var_47acec0 = ent;
            thread function_a2b0a37d( ent );
            ent waittill( #"death" );
            level.var_47acec0 = undefined;
            break;
        default:
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:x38>" + snd::function_783b69( name, "<dev string:x5d>" ) );
            #/
            
            break;
    }
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 3, eflags: 0x4
// Checksum 0x338be007, Offset: 0x9d0
// Size: 0xd2
function private _trigger( *player, trigger, *var_ec80d14b )
{
    trigger_name = snd::function_ea2f17d1( var_ec80d14b.script_ambientroom, "$default" );
    
    switch ( trigger_name )
    {
        case #"hash_4f192f4756c79209":
        case #"$default":
            break;
        default:
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:x62>" + trigger_name + "<dev string:x5d>" );
            #/
            
            break;
    }
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 2, eflags: 0x4
// Checksum 0xb56e6144, Offset: 0xab0
// Size: 0x6a2
function private function_f2a2832d( *player, msg )
{
    switch ( msg )
    {
        case #"audio_level_begin_duck_start":
            thread function_563a791();
            break;
        case #"audio_level_begin_duck_stop":
            thread function_1cfbed4a();
            break;
        case #"hash_10de43eaa1582e98":
            function_b6407dd4( 0 );
            break;
        case #"hash_5261bc976db253b3":
            thread function_3478ae35();
            break;
        case #"hash_6010cf0b59441d62":
            thread function_82927216();
            break;
        case #"hash_390a58cb20fbbde2":
            level notify( #"hash_201c2ab5508a84de" );
            break;
        case #"hash_328de70fe2bffcc1":
            function_b6407dd4( 1 );
            break;
        case #"hash_4e1c23615a77bd97":
            thread function_c2a390ee();
            break;
        case #"hash_6452914c3682f6a6":
            thread function_3e4f581();
            break;
        case #"hash_6b212538d2746abd":
            thread power_on();
            break;
        case #"hash_1182c9e90f5942f":
            thread function_e45db9b2();
            break;
        case #"audio_table_flip":
            thread function_c40d0905();
            break;
        case #"ending_fade_out":
            function_5ea2c6e3( "cp_mute_amb", 3 );
            function_5ea2c6e3( "cp_mute_player", 3 );
            break;
        case #"hash_2dd0c033ce65b1b0":
            function_5ea2c6e3( "cp_mute_amb", 0 );
            function_5ea2c6e3( "cp_mute_fly", 0 );
            function_5ea2c6e3( "cp_mute_player", 0 );
            break;
        case #"hash_84c238741d1aa2":
            break;
        case #"hash_6f5b65f13dc8dc7b":
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:x86>" );
            #/
            
            function_b6407dd4( 0 );
            function_5ea2c6e3( "cp_mute_amb", 0 );
            function_5ea2c6e3( "cp_mute_fly", 0 );
            function_5ea2c6e3( "cp_mute_player", 0 );
            waitframe( 3 );
            function_ed62c9c2( "cp_mute_amb", 6 );
            function_ed62c9c2( "cp_mute_fly", 6 );
            function_ed62c9c2( "cp_mute_player", 6 );
            wait 50;
            function_5ea2c6e3( "cp_rus_siege_loose_end", 3, 0.69 );
            wait 3;
            function_672403ca( "cp_rus_siege_loose_end", 2, 0.99 );
            wait 2;
            function_672403ca( "cp_rus_siege_loose_end", 0.8, 1 );
            wait 0.8;
            break;
        case #"hash_4867b267b477d584":
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:x9c>" );
            #/
            
            break;
        case #"hash_4d4f51757e9ecc08":
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:xaf>" );
            #/
            
            break;
        case #"hash_56e4ce1949c3104d":
            snd::play( "wpn_loose_ends_pistol_fire" );
            snd::play( "evt_xfx_drone_hit_heartbeat" );
            
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:xc3>" );
            #/
            
            wait 0.1;
            function_672403ca( "cp_rus_siege_loose_end", 0, 1 );
            function_5ea2c6e3( "cp_mute_amb", 0.1 );
            break;
        case #"musictrack_cp_siege_1":
        case #"musictrack_cp_siege_2":
            function_2cca7b47( 0, msg );
            break;
        default:
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:xd7>" + snd::function_783b69( msg, "<dev string:x5d>" ) );
            #/
            
            break;
    }
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 1, eflags: 0x4
// Checksum 0x9935f319, Offset: 0x1160
// Size: 0x112
function private _objective( objective )
{
    switch ( objective )
    {
        case #"infil":
            break;
        case #"emp_flash":
            break;
        case #"Courtyard":
            break;
        case #"catacombs":
            break;
        case #"graveyard":
            break;
        case #"hash_7433baf853004942":
            break;
        case #"looseends":
            break;
        case #"no_game":
            break;
        default:
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:xf5>" + objective + "<dev string:x5d>" );
            #/
            
            break;
    }
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0x1db994ce, Offset: 0x1280
// Size: 0xc64
function function_befba10a()
{
    plr = undefined;
    var_58602358 = [ [ "tmp_animal_bird", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_animal_dog_angry_bark", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_animal_donkey", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_animal_horse", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_animal_rat", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_animal_seagulls", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_animal_wolf_howls", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ] ];
    snd::element_init( "$default", var_58602358 );
    interior = [ [ "tmp_env_cave_int_single_drips", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_debris_dust", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_debris_glass", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_debris_glass_metal_lrg", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_debris_glass_metal_sml", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_debris_metal_lrg", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_debris_metal_med", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_debris_metal_sml", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_debris_rocks_lrg", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_debris_rocks_med", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_debris_rocks_sml", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_debris_wood_med", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ], [ "tmp_debris_wood_sml", plr, [ 3, 12 ], [ 1200, 1800 ], [ -90, 90 ] ] ];
    snd::element_init( "interior", interior );
    snd::element_init( "interior_cave", "interior" );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0xac4e232, Offset: 0x1ef0
// Size: 0x3c
function function_b3665e44()
{
    level waittill( #"hash_5c0e295bf1c8ee37" );
    thread function_5271e091();
    thread function_34a0b2c1();
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0xd7b597ac, Offset: 0x1f38
// Size: 0x3c
function function_96ace06()
{
    level waittill( #"hash_73c8edce39fa397a" );
    thread function_5271e091();
    thread function_34a0b2c1();
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0x4147b085, Offset: 0x1f80
// Size: 0x1c
function function_563a791()
{
    function_5ea2c6e3( "cp_rus_siege_level_begin" );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0xc1329238, Offset: 0x1fa8
// Size: 0x1c
function function_1cfbed4a()
{
    function_ed62c9c2( "cp_rus_siege_level_begin" );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0x7eaaec95, Offset: 0x1fd0
// Size: 0x4c
function function_34a0b2c1()
{
    function_5ea2c6e3( "cp_rus_siege_intro_ride_scene" );
    level waittill( #"hash_7544c8e6cd7cd946" );
    function_ed62c9c2( "cp_rus_siege_intro_ride_scene" );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0x107e6e16, Offset: 0x2028
// Size: 0x18e
function function_5271e091()
{
    if ( level flag::get( "flg_audio_fav_started" ) == 1 )
    {
        return;
    }
    
    level flag::set( "flg_audio_fav_started" );
    level.var_456dc77d = snd::play( [ 0, "veh_intro_scripted_drive_lp_lr", 1 ] );
    level.var_9b00aa65 = snd::play( [ 0, "veh_intro_scripted_drive_lp_lsrs", 1 ] );
    level waittill( #"hash_6c03cbe4da70f5c4" );
    wait 1;
    snd::stop( level.var_456dc77d, 0.5 );
    snd::stop( level.var_9b00aa65, 0.5 );
    var_d5a0eda4 = snd::play( [ "veh_intro_scripted_drive_end_lr", 0.35 ] );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0xfa574c5f, Offset: 0x21c0
// Size: 0x34
function function_3e460f0a()
{
    level waittill( #"hash_5c0e295bf1c8ee37" );
    snd::play( "amb_aa_gun_distant_fire_lr" );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 1, eflags: 0x0
// Checksum 0xb0395f9e, Offset: 0x2200
// Size: 0xd4
function function_d9013492( ent )
{
    level waittill( #"hash_7544c8e6cd7cd946" );
    
    if ( level flag::get( "flg_audio_fav_idle" ) == 1 )
    {
        return;
    }
    
    level flag::set( "flg_audio_fav_idle" );
    var_ab2f53c3 = snd::play( [ 0.5, "veh_intro_scripted_idle_lp_lr", 2.5 ], ent );
    thread function_f82d04fd();
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0xba905f66, Offset: 0x22e0
// Size: 0xbe
function function_f82d04fd()
{
    var_ccffb456 = [ ( 7385, -3554, 176 ), ( 7588, -3548, 176 ), ( 7794, -3683, 183 ), ( 8013, -3514, 200 ), ( 7964, -3029, 182 ), ( 7779, -2814, 188 ) ];
    var_ccffb456 = snd::play( "veh_intro_scripted_npc_idle_lp", var_ccffb456 );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0xa90b0498, Offset: 0x23a8
// Size: 0x1c
function function_3478ae35()
{
    snd::play( "evt_emp_blast_screenshake_lr" );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0x4ad96f8, Offset: 0x23d0
// Size: 0x5c
function function_82927216()
{
    snd::play( "evt_emp_blast_shockwave_lr" );
    wait 0.75;
    function_5ea2c6e3( "cp_rus_siege_emp_pre_blast" );
    wait 3;
    function_ed62c9c2( "cp_rus_siege_emp_pre_blast" );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x2438
// Size: 0x4
function function_70bfbb49()
{
    
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0x9fc0592e, Offset: 0x2448
// Size: 0x2c
function function_c2a390ee()
{
    snd::play( "evt_church_door_kick_open", ( 10655, -4868, 262 ) );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0x909c7c4, Offset: 0x2480
// Size: 0x1c
function function_3e4f581()
{
    snd::play( "evt_catacombs_distant_bomb_explo" );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 1, eflags: 0x0
// Checksum 0x48d5c171, Offset: 0x24a8
// Size: 0x24
function function_ed98c6a7( ent )
{
    snd::play( "evt_juggernaut_door_close", ent );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 1, eflags: 0x0
// Checksum 0xfdf450fa, Offset: 0x24d8
// Size: 0x24
function function_a2b0a37d( ent )
{
    snd::play( "evt_juggernaut_door_open", ent );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0x37a2016f, Offset: 0x2508
// Size: 0x1c
function power_on()
{
    snd::play( "evt_power_on" );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0xebcb57b5, Offset: 0x2530
// Size: 0x74
function function_e45db9b2()
{
    if ( level flag::get( "flg_audio_graveyard_fire" ) == 1 )
    {
        return;
    }
    
    level flag::set( "flg_audio_graveyard_fire" );
    snd::play( "emt_fire_lrg_lp_no_occ", ( 10197, -5638, 269 ) );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0xa814c339, Offset: 0x25b0
// Size: 0x2c
function function_c40d0905()
{
    snd::play( "evt_graveyard_table_flip", ( 10197, -5638, 269 ) );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0xea3d0d9f, Offset: 0x25e8
// Size: 0x3c
function function_89309aa5()
{
    level waittill( #"hash_675d0ece373dc0bb" );
    function_5ea2c6e3( "cp_rus_siege_outro_aa_gun_mute", 0.5 );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0xda199a88, Offset: 0x2630
// Size: 0x74
function function_7422beda()
{
    level waittill( #"hash_411156e5e0cb50a2" );
    function_5ea2c6e3( "cp_rus_siege_sparks_outro", 0.5 );
    level waittill( #"hash_98e94d5912d24a2" );
    function_ed62c9c2( "cp_rus_siege_sparks_outro", 0.5 );
}

// Namespace namespace_1b106d35/namespace_1b106d35
// Params 0, eflags: 0x0
// Checksum 0x3714ff49, Offset: 0x26b0
// Size: 0xec
function function_bd046ff2()
{
    level waittill( #"hash_79f8bc047471afe3" );
    function_5ea2c6e3( "cp_rus_siege_outro_metal", 0.5 );
    snd::play( "emt_fire_med_lp_outro", ( 12673, -34914, 585 ) );
    snd::play( "emt_fire_lrg_lp_no_occ_outro", ( 1237, -34850, 574 ) );
    snd::play( "emt_fire_med_lp_outro", ( 12693, -34714, 588 ) );
    level waittill( #"hash_6a754a8a4f26d111" );
    function_ed62c9c2( "cp_rus_siege_outro_metal", 0.5 );
}

