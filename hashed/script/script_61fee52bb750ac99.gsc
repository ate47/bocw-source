#using script_3dc93ca9902a9cda;
#using scripts\core_common\array_shared;
#using scripts\core_common\audio_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\music_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\cp_common\snd;
#using scripts\cp_common\snd_draw;
#using scripts\cp_common\snd_sp;
#using scripts\cp_common\snd_utility;

#namespace namespace_b6fe1dbe;

// Namespace namespace_b6fe1dbe/level_preinit
// Params 1, eflags: 0x24
// Checksum 0xe378e12, Offset: 0x1778
// Size: 0x3c
function private event_handler[level_preinit] function_b489bb7b( *eventstruct )
{
    snd::function_5e69f468( &_objective );
    snd::wait_init();
}

// Namespace namespace_b6fe1dbe/event_cc819519
// Params 1, eflags: 0x20
// Checksum 0x46ac4924, Offset: 0x17c0
// Size: 0x4c
function event_handler[event_cc819519] function_686b88aa( *eventstruct )
{
    thread function_fe07a1d4();
    thread function_cb7fb7e7();
    thread global_submix();
    thread function_6c4a7b91();
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xead3ab48, Offset: 0x1818
// Size: 0x2c
function global_submix()
{
    snd::waitforplayers();
    snd::client_msg( "global_submix" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x4
// Checksum 0x2b321b1, Offset: 0x1850
// Size: 0x9a
function private _objective( objective )
{
    switch ( objective )
    {
        case #"hash_65e6eae762f128ac":
            break;
        case #"no_game":
            break;
        default:
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:x38>" + objective + "<dev string:x5b>" );
            #/
            
            break;
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 2, eflags: 0x0
// Checksum 0x2ecdfd4d, Offset: 0x18f8
// Size: 0x54
function music( str_msg, n_delay = 0 )
{
    level thread function_7edafa59( str_msg, n_delay );
    level thread function_e80c0ccf( str_msg );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 2, eflags: 0x0
// Checksum 0x1ee48ba7, Offset: 0x1958
// Size: 0x3ca
function function_7edafa59( str_msg, n_delay )
{
    if ( !isdefined( level.var_41fc1341 ) )
    {
        level.var_41fc1341 = "";
    }
    
    if ( !isdefined( level.var_2c9b406b ) )
    {
        level.var_2c9b406b = "";
    }
    
    if ( level.var_41fc1341 != str_msg )
    {
        level.var_2c9b406b = level.var_41fc1341;
    }
    
    level.var_41fc1341 = str_msg;
    
    switch ( str_msg )
    {
        case #"23.0_napalm_ending":
        case #"hash_80d6e8de9a9b724":
        case #"hash_fa148e8ff49700b":
        case #"3.0_ruins_1":
        case #"hash_14551414b13cbe8f":
        case #"hash_1d1e507e9e90544e":
        case #"12.0_reset_2":
        case #"17.0_door_3":
        case #"11.0_lab":
        case #"hash_362faeba3d857051":
        case #"6.0_reset_1":
        case #"7.0_paddy_2":
        case #"hash_434ffcd66b6b2766":
        case #"8.0_ruin_2":
        case #"hash_50c83da96c91915f":
        case #"9.0_zombies":
        case #"1.0_intro":
        case #"13.0_paddy_3":
        case #"hash_569fd9d5a21b5d1e":
        case #"hash_61febcbde8b3db9b":
        case #"20.0_reset_3":
        case #"2.0_paddy_1":
        case #"14.0_ruin_3":
            music::setmusicstate( str_msg, undefined, n_delay );
            break;
        case #"hash_7b78e5b141bb90d8":
            music::setmusicstate( "6.0_reset_1", undefined, n_delay );
            break;
        case #"hash_249b49c4ad232fc9":
            music::setmusicstate( "12.0_reset_2", undefined, n_delay );
            break;
        case #"memory_3_end":
            music::setmusicstate( "20.0_reset_3", undefined, n_delay );
            break;
        case #"hash_47f34399f2eee69b":
            break;
        case #"hash_20f2cf8ecfe3ec4f":
            music::function_2af5f0ec( str_msg );
            break;
        case #"11.3_window_stinger_3":
        case #"11.2_window_stinger_2":
        case #"11.1_window_stinger_1":
            music::function_edda155f( str_msg, n_delay );
            break;
        case #"deactivate_21.0_crazy_doors":
        case #"deactivate_3.0_ruins_1":
            music::setmusicstate( "none", undefined, n_delay );
            break;
        default:
            /#
                iprintlnbold( "<dev string:x60>" + str_msg + "<dev string:x72>" );
            #/
            
            break;
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0x84573338, Offset: 0x1d30
// Size: 0x16a
function function_e80c0ccf( str_msg )
{
    switch ( str_msg )
    {
        case #"1.0_intro":
            snd::client_msg( #"musictrack_cp_prisoner_1" );
            break;
        case #"2.0_paddy_1":
            snd::client_msg( #"musictrack_cp_prisoner_2" );
            break;
        case #"3.0_ruins_1":
            snd::client_msg( #"musictrack_cp_prisoner_3" );
            break;
        case #"7.0_paddy_2":
            snd::client_msg( #"musictrack_cp_prisoner_4" );
            break;
        case #"9.0_zombies":
            snd::client_msg( #"musictrack_cp_prisoner_5" );
            break;
        case #"13.0_paddy_3":
            snd::client_msg( #"musictrack_cp_prisoner_6" );
            break;
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0x5c1b6a94, Offset: 0x1ea8
// Size: 0x12a
function function_62dfea3e( location )
{
    snd::waitforplayers();
    waitframe( 1 );
    emi_allruns_stop();
    
    switch ( location )
    {
        case #"day":
            thread emi_allruns_play();
            thread emi_day_play();
            thread function_b15828b6();
            break;
        case #"night":
            thread emi_allruns_play();
            thread emi_night_play();
            thread function_1ac5a394();
            break;
        case #"bunker":
            break;
        case #"lab":
            break;
        default:
            assertmsg( "<dev string:x8d>" );
            break;
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xcc566e65, Offset: 0x1fe0
// Size: 0x19c
function function_6c4a7b91()
{
    level endon( #"visit_restart" );
    level endon( #"start_outro" );
    players = snd::function_da785aa8();
    player = players[ 0 ];
    player endon( #"death" );
    
    while ( !isdefined( level.stealth ) && !isdefined( level.player.stealth ) )
    {
        waitframe( 1 );
    }
    
    exploration_mix_on = 1;
    
    while ( true )
    {
        state = snd::function_ea2f17d1( level.stealth.detect.state, "disabled" );
        
        if ( isdefined( level.player.stealth ) )
        {
            if ( exploration_mix_on == 0 && state == "spotted" )
            {
                snd::client_msg( "exploration_mix_off" );
                exploration_mix_on = 1;
            }
            else if ( exploration_mix_on == 1 && state == "hidden" )
            {
                snd::client_msg( "exploration_mix_on" );
                exploration_mix_on = 0;
            }
        }
        
        waitframe( 1 );
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0x4a935ff3, Offset: 0x2188
// Size: 0x24
function function_34830cda( *location )
{
    snd::play( "evt_obey" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0x160adad6, Offset: 0x21b8
// Size: 0x24
function function_1e0e9b39( *location )
{
    snd::play( "evt_disobey" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 2, eflags: 0x0
// Checksum 0x27710a7b, Offset: 0x21e8
// Size: 0x164
function function_ee033aa( short, type )
{
    if ( type == "door" )
    {
        if ( is_true( short ) )
        {
            snd::play( "evt_teleport_short" );
        }
        else
        {
            snd::play( "evt_teleport_long" );
        }
        
        return;
    }
    
    if ( type == "bunker1" )
    {
        snd::play( "evt_bunker_scene_transition1" );
        return;
    }
    
    if ( type == "bunker2" )
    {
        snd::play( "evt_bunker_scene_transition2" );
        return;
    }
    
    if ( type == "bunker3" )
    {
        snd::play( "evt_bunker_scene_transition3" );
        return;
    }
    
    if ( type == "bunker4" )
    {
        snd::play( "evt_bunker_scene_transition4" );
        return;
    }
    
    if ( type == "bunker5" )
    {
        snd::play( "evt_bunker_scene_transition5" );
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x6c8cee4a, Offset: 0x2358
// Size: 0x1c
function function_b15828b6()
{
    snd::client_msg( "timeofday_day" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x3aad717a, Offset: 0x2380
// Size: 0x1c
function function_1ac5a394()
{
    snd::client_msg( "timeofday_night" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x2071e563, Offset: 0x23a8
// Size: 0x1c
function emi_allruns_play()
{
    snd::client_msg( "emi_allruns_play" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x77316430, Offset: 0x23d0
// Size: 0x1c
function emi_allruns_stop()
{
    snd::client_msg( "emi_allruns_stop" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xeabd989d, Offset: 0x23f8
// Size: 0x1c
function emi_day_play()
{
    snd::client_msg( "emi_day_play" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xee0b5489, Offset: 0x2420
// Size: 0x1c
function emi_night_play()
{
    snd::client_msg( "emi_night_play" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x2448
// Size: 0x4
function function_3587d33f()
{
    
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 2, eflags: 0x0
// Checksum 0xc9512c35, Offset: 0x2458
// Size: 0xd2
function function_a24fb2ab( entity, threshold )
{
    var_f5c0126e = 0;
    
    while ( var_f5c0126e == 0 )
    {
        players = snd::function_da785aa8();
        player = players[ 0 ];
        
        if ( isplayer( player ) )
        {
            var_3a170e9c = entity.origin[ 2 ] - player.origin[ 2 ];
            
            if ( abs( var_3a170e9c ) < threshold )
            {
                var_f5c0126e = 1;
            }
        }
        
        waitframe( 1 );
    }
    
    wait 1;
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0xf7609133, Offset: 0x2538
// Size: 0xb2
function function_a632951b( choice )
{
    players = snd::function_da785aa8();
    player = players[ 0 ];
    wait 0.5;
    
    switch ( choice )
    {
        case #"obey":
            snd::play( "evt_obey", player );
            break;
        case #"disobey":
            snd::play( "evt_disobey", player );
            break;
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x750d0f23, Offset: 0x25f8
// Size: 0x1c
function function_36b02bca()
{
    snd::play( "evt_injection_weapon" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x5b989499, Offset: 0x2620
// Size: 0x4c
function intro_scene()
{
    snd::client_msg( "intro_scene" );
    thread intro_mix_3();
    thread intro_mix_4();
    thread intro_mix_5();
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x880653fd, Offset: 0x2678
// Size: 0x34
function intro_mix_3()
{
    level waittill( #"intro_mix_3" );
    snd::client_msg( "intro_mix_3" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xc2dbf58e, Offset: 0x26b8
// Size: 0x34
function intro_mix_4()
{
    level waittill( #"intro_mix_4" );
    snd::client_msg( "intro_mix_4" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x26c91426, Offset: 0x26f8
// Size: 0x34
function intro_mix_5()
{
    level waittill( #"intro_mix_5" );
    snd::client_msg( "intro_mix_5" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x2dbd3ea2, Offset: 0x2738
// Size: 0x74
function function_890e00a5()
{
    explo = getent( "intro_long_anim_done_magicgrenade", "targetname" );
    snd::play( [ 5, "wpn_rice_paddies_water_impact", 0 ], explo.origin );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xb95235a, Offset: 0x27b8
// Size: 0x24
function function_6acff073()
{
    wait 0.2;
    snd::play( "amb_heli_start_2" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x607f558a, Offset: 0x27e8
// Size: 0x24
function function_6ec11225()
{
    wait 0.2;
    snd::play( "amb_heli_start_3" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xba07d4d7, Offset: 0x2818
// Size: 0x24
function function_9d794a0e()
{
    wait 0.2;
    snd::play( "amb_heli_start_4" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0xf01a818f, Offset: 0x2848
// Size: 0x15c
function function_8a5580af( var_c79d614f )
{
    level endon( #"visit_restart" );
    level endon( #"start_outro" );
    
    if ( level.var_731c10af.paths[ var_c79d614f ].count == 0 )
    {
        snd::client_msg( "rice_paddies_1_start" );
        level flag::wait_till_any( array( "rice_paddies_final_retreat", "rice_paddies_enemies_dead", "flag_jungle_path" ) );
        snd::client_msg( "rice_paddies_1_end" );
        return;
    }
    
    if ( level.var_731c10af.paths[ var_c79d614f ].count == 2 )
    {
        snd::client_msg( "rice_paddies_3_start" );
        level flag::wait_till_any( array( "rice_paddies_final_retreat", "rice_paddies_enemies_dead", "flag_jungle_path" ) );
        snd::client_msg( "rice_paddies_3_end" );
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xf439b766, Offset: 0x29b0
// Size: 0x1c
function rice_paddies_2_end()
{
    snd::client_msg( "rice_paddies_2_end" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0x56373bd, Offset: 0x29d8
// Size: 0xba
function function_f86833a( visit )
{
    switch ( visit )
    {
        case #"first":
            snd::client_msg( "rice_paddies_bc_1" );
            break;
        case #"second":
            snd::client_msg( "rice_paddies_bc_2" );
            break;
        case #"third":
            snd::client_msg( "rice_paddies_bc_3" );
            break;
        default:
            break;
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x27fd76f7, Offset: 0x2aa0
// Size: 0x3c
function function_3d24226a()
{
    loc = ( 141, -2888, 211 );
    wait 6;
    snd::play( "vox_cp_prsn_20200_vms2_retreatretreat_31", loc );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x9d6039f5, Offset: 0x2ae8
// Size: 0x4c
function function_f665ec56()
{
    players = snd::function_da785aa8();
    player = players[ 0 ];
    snd::play( "evt_fast_forward_rice_paddies", player );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x2b40
// Size: 0x4
function function_aa0b70f3()
{
    
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x8615d5ba, Offset: 0x2b50
// Size: 0x7c
function function_ae63d294()
{
    snd::stop( level.var_d596f17e );
    snd::stop( level.var_2297f82d );
    snd::stop( level.var_d9e47cb4 );
    snd::stop( level.var_f6953e44 );
    snd::stop( level.var_45064ee1 );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xf969f2be, Offset: 0x2bd8
// Size: 0x6c
function function_63e81473()
{
    chimes = snd::play( "amb_warpies_lp", ( -728, -227, 320 ) );
    level flag::wait_till( "flag_in_end_path" );
    snd::stop( chimes, 8 );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xc637ede9, Offset: 0x2c50
// Size: 0x6c
function function_7e2d7c54()
{
    chimes = snd::play( "amb_warpies_reverse_lp", ( -728, -227, 320 ) );
    level flag::wait_till( "flag_in_end_path" );
    snd::stop( chimes, 8 );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 2, eflags: 0x0
// Checksum 0x8605ad23, Offset: 0x2cc8
// Size: 0x194
function function_f34d98f2( origin, threshold )
{
    level endon( #"visit_restart" );
    level endon( #"start_outro" );
    buzz = snd::play( "amb_cp_nam_prisoner_crt_buzz_lp_path", origin );
    var_a24ddf98 = snd::play( "amb_cp_nam_prisoner_crt_fuzz_lp_path", origin );
    
    while ( !level flag::get( "flag_in_end_path" ) )
    {
        players = snd::function_da785aa8();
        player = players[ 0 ];
        
        if ( isplayer( player ) && isdefined( self ) )
        {
            player snd::waittilldistance( origin, threshold );
            tv = snd::play( "vox_cp_jungle_path_tv", origin );
            wait randomfloatrange( 5, 10 );
        }
        
        waitframe( 1 );
    }
    
    snd::stop( buzz );
    snd::stop( var_a24ddf98 );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x479ea5ba, Offset: 0x2e68
// Size: 0x54
function function_616b3f40()
{
    level flag::wait_till( "flag_fxanim_parrots_fly" );
    wait 1;
    snd::play( "evt_temple_birds_fly", ( -622, -473, 255 ) );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x80301885, Offset: 0x2ec8
// Size: 0x1c
function waterfall_kill_right()
{
    snd::client_msg( "waterfall_kill_right" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x31af98b, Offset: 0x2ef0
// Size: 0x1c
function waterfall_kill_left()
{
    snd::client_msg( "waterfall_kill_left" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x3c73d07, Offset: 0x2f18
// Size: 0x1c
function waterfall_slowmo_start()
{
    snd::client_msg( "waterfall_slowmo_start" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x63278ee5, Offset: 0x2f40
// Size: 0x1c
function waterfall_slowmo_stop()
{
    snd::client_msg( "waterfall_slowmo_stop" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xb8b7dd8a, Offset: 0x2f68
// Size: 0x1c
function waterfall_throw_knife()
{
    snd::client_msg( "waterfall_throw_knife" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0xcf18d2a4, Offset: 0x2f90
// Size: 0x24
function function_cc72a5fb( target )
{
    snd::play( "evt_cp_nam_prisoner_caves_zipline", target );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xbb2b88f2, Offset: 0x2fc0
// Size: 0x1c
function function_280d83da()
{
    snd::play( "evt_pris_bridge_heli_by_1", self );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x5c5bb077, Offset: 0x2fe8
// Size: 0x1c
function function_3dd3af66()
{
    snd::play( "evt_pris_bridge_heli_by_2", self );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x18df40a5, Offset: 0x3010
// Size: 0x1c
function function_8444bc3b()
{
    snd::play( "evt_pris_bridge_heli_by_3", self );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x73fee707, Offset: 0x3038
// Size: 0x1c
function function_9b2e941d()
{
    snd::play( "evt_pris_frozen_battle_heli_by_1", self );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xa2947802, Offset: 0x3060
// Size: 0x1c
function function_a6eaab95()
{
    snd::play( "evt_pris_frozen_battle_heli_by_2", self );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x54b9c20a, Offset: 0x3088
// Size: 0x1c
function function_49b6f127()
{
    snd::play( "evt_pris_frozen_battle_heli_by_3", self );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 2, eflags: 0x0
// Checksum 0x49a6a329, Offset: 0x30b0
// Size: 0x6c
function function_d282054f( target1, target2 )
{
    snd::play( "evt_pris_knife_heli_passby_first", target1 );
    snd::play( "evt_pris_knife_heli_passby_second", target2 );
    snd::play( "evt_pris_knife_heli_passby_distant_leave", ( 2149, 2165, 581 ) );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x7337519e, Offset: 0x3128
// Size: 0x33c
function function_cb7fb7e7()
{
    level flag::wait_till( "level_is_go" );
    players = snd::function_da785aa8();
    player = players[ 0 ];
    bridge = getent( "audio_bridge_vol", "targetname" );
    var_184f2cbe = getent( "audio_bridge_debris1", "targetname" );
    var_6998953 = getent( "audio_bridge_debris2", "targetname" );
    snd::play( "amb_pris_bridge_wind_rope_lp", ( -1179, 2764, 386 ) );
    
    while ( true )
    {
        if ( isdefined( bridge ) && player istouching( bridge ) && player getvelocity() != ( 0, 0, 0 ) )
        {
            if ( player issprinting() )
            {
                snd::play( "evt_pris_bridge_creak_sprint", player.origin );
                wait 0.23;
            }
            else
            {
                snd::play( "evt_pris_bridge_creak_walk", level.player.origin );
                wait 0.6;
            }
        }
        
        if ( isdefined( var_184f2cbe ) && player istouching( var_184f2cbe ) && player getvelocity() != ( 0, 0, 0 ) )
        {
            if ( player issprinting() )
            {
                snd::play( "evt_pris_bridge_metal_debris_sprint", player.origin );
                wait 1;
            }
            else
            {
                snd::play( "evt_pris_bridge_metal_debris", level.player.origin );
                wait 1;
            }
        }
        
        if ( isdefined( var_6998953 ) && player istouching( var_6998953 ) && player getvelocity() != ( 0, 0, 0 ) )
        {
            if ( player issprinting() )
            {
                snd::play( "evt_pris_bridge_metal_debris_sprint", player.origin );
                wait 1;
            }
            else
            {
                snd::play( "evt_pris_bridge_metal_debris", player.origin );
                wait 1;
            }
        }
        
        waitframe( 1 );
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xfc0e32e6, Offset: 0x3470
// Size: 0x1c
function function_df93683a()
{
    snd::play( "evt_pris_lazar_bridge_jumpscare" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xd483010c, Offset: 0x3498
// Size: 0x4c
function function_c17eddf0()
{
    level flag::wait_till( "flag_jungle_lab_rob" );
    snd::play( "evt_geo_appearance_med", ( -464, -935, 95 ) );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x91cec308, Offset: 0x34f0
// Size: 0x4c
function function_6db13656()
{
    level flag::wait_till( "flag_jungle_lab_rob2" );
    snd::play( "evt_geo_appearance_med", ( -464, -935, 95 ) );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xd7caf9f6, Offset: 0x3548
// Size: 0x4c
function function_823f75e6()
{
    level flag::wait_till( "flag_bridge_path_rob" );
    snd::play( "evt_geo_appearance_med", ( -1530, 1919, 368 ) );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x2e51c700, Offset: 0x35a0
// Size: 0x4c
function function_aaf2474b()
{
    level flag::wait_till( "flag_bridge_path_rob_2" );
    snd::play( "evt_geo_appearance_med", ( -1328, 2854, 381 ) );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xfc9d24f3, Offset: 0x35f8
// Size: 0x4c
function function_e4de9155()
{
    level flag::wait_till( "flag_river_path_rob" );
    snd::play( "evt_geo_appearance_med", ( 59, 2586, -337 ) );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x42fc2bb0, Offset: 0x3650
// Size: 0x8c
function function_3047c3a4()
{
    wait 5;
    snd::client_msg( "emi_allruns_stop" );
    wait 5;
    radio = snd::play( "evt_rat_tunnels_radio_lp", ( 1862, 1590, -1505 ) );
    snd::client_msg( "rat_tunnels_throb_low" );
    wait 6;
    thread function_a4db423c();
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x177e01aa, Offset: 0x36e8
// Size: 0x9c
function function_a4db423c()
{
    snd::play( "amb_rat_tunnels_zomb_amb", ( 1728, 1171, -1519 ) );
    wait 1;
    
    for (i = 0; i < 9; i++) {
        snd::play( "amb_rat_tunnels_zomb_step", ( 1728, 1171, -1519 ) );
        wait randomfloatrange( 0.5, 0.8 );
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0xf9de7106, Offset: 0x3790
// Size: 0x1dc
function function_8c05dc42( dude )
{
    players = snd::function_da785aa8();
    player = players[ 0 ];
    var_6ef21db4 = snd::emitter( "evt_rat_tunnels_amb_cave_walla", level.player, [ 3, 8 ], [ 500, 2000 ], [ -45, 45 ] );
    var_eabbb931 = snd::emitter( "evt_rat_tunnels_amb_steps", level.player, [ 2, 6 ], [ 500, 2000 ], [ -45, 45 ] );
    wait 0.5;
    snd::play( "evt_rat_tunnels_runner", dude );
    snd::play( "evt_rat_tunnels_amb_cave_walla_shout_close", dude );
    snd::client_msg( "rat_tunnels_throb_medium" );
    wait 0.5;
    level waittill( #"rat_tunnels_ambience_fade_out" );
    snd::stop( var_6ef21db4 );
    snd::stop( var_eabbb931 );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x2c012446, Offset: 0x3978
// Size: 0x1c
function rat_tunnels_amb_zombies()
{
    snd::client_msg( "rat_tunnels_amb_zombies" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xe2b9c640, Offset: 0x39a0
// Size: 0x1c
function rat_tunnels_throb_high()
{
    snd::client_msg( "rat_tunnels_throb_high" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x47ef1525, Offset: 0x39c8
// Size: 0x1c
function rat_tunnels_ambience_fade_out()
{
    snd::client_msg( "rat_tunnels_ambience_fade_out" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xab19fe64, Offset: 0x39f0
// Size: 0x1c
function function_64a39ad()
{
    snd::play( "mus_gameover_intro" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xf016311b, Offset: 0x3a18
// Size: 0x1c
function function_366915c()
{
    snd::client_msg( "emi_allruns_stop" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xd8b6ef2, Offset: 0x3a40
// Size: 0x1c
function function_19123a4f()
{
    snd::client_msg( "cave_entry" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x90f3cd44, Offset: 0x3a68
// Size: 0x1c
function cave_footsteps()
{
    snd::client_msg( "cave_footsteps" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x7fe5bf89, Offset: 0x3a90
// Size: 0x1c
function pre_injection_hallway_sfx()
{
    snd::client_msg( "pre_injection_hallway_sfx" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x484e71ab, Offset: 0x3ab8
// Size: 0x70
function function_fe07a1d4()
{
    while ( true )
    {
        level waittill( #"mkultra_sound_on" );
        snd::client_msg( "mkultra_sound_on" );
        level waittill( #"mkultra_sound_off" );
        snd::client_msg( "mkultra_sound_off" );
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xd61428d6, Offset: 0x3b30
// Size: 0x1c
function arcade_start()
{
    snd::client_msg( "arcade_start" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x71d2710a, Offset: 0x3b58
// Size: 0x1c
function arcade_exit()
{
    snd::client_msg( "arcade_exit" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x325d72b4, Offset: 0x3b80
// Size: 0x1c
function mus_hallway_test()
{
    snd::client_msg( "mus_hallway_test" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0x6a838494, Offset: 0x3ba8
// Size: 0xbc
function function_c635eb23( count )
{
    if ( count == 1 )
    {
        snd::client_msg( "infinite_hallway_ambience_1" );
        thread function_b216aefd();
        return;
    }
    
    if ( count == 2 )
    {
        snd::client_msg( "infinite_hallway_ambience_2" );
        return;
    }
    
    if ( count == 3 )
    {
        snd::client_msg( "infinite_hallway_ambience_3" );
        return;
    }
    
    if ( count == 4 )
    {
        snd::client_msg( "infinite_hallway_ambience_4" );
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x218c3f1c, Offset: 0x3c70
// Size: 0xde
function function_b216aefd()
{
    while ( true )
    {
        level waittill( #"hash_7e0ec26676ae3d41" );
        
        if ( level.var_f668e14a <= 1 )
        {
            snd::client_msg( "infinite_hallway_loop_start" );
        }
        else if ( level.var_f668e14a == 2 )
        {
            snd::client_msg( "infinite_hallway_loop_low" );
        }
        else if ( level.var_f668e14a == 3 )
        {
            snd::client_msg( "infinite_hallway_loop_mid" );
        }
        else
        {
            snd::client_msg( "infinite_hallway_loop_high" );
        }
        
        waitframe( 1 );
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xd8aaf233, Offset: 0x3d58
// Size: 0x1c
function infinite_hallway_ambience_end()
{
    snd::client_msg( "infinite_hallway_ambience_end" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xefb19db9, Offset: 0x3d80
// Size: 0x1c
function stop_hallway_sfx()
{
    snd::client_msg( "stop_hallway_sfx" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xba9bced, Offset: 0x3da8
// Size: 0x1c
function shrinking_hallway_start()
{
    snd::client_msg( "shrinking_hallway_start" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x8d8e082e, Offset: 0x3dd0
// Size: 0x1c
function shrinking_hallway1_hide()
{
    snd::client_msg( "shrinking_hallway1_hide" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xd52c97d, Offset: 0x3df8
// Size: 0x1c
function shrinking_hallway2_hide()
{
    snd::client_msg( "shrinking_hallway2_hide" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x45f494e6, Offset: 0x3e20
// Size: 0x1c
function shrinking_hallway3_hide()
{
    snd::client_msg( "shrinking_hallway3_hide" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xf2af7694, Offset: 0x3e48
// Size: 0x1c
function shrinking_hallway4_hide()
{
    snd::client_msg( "shrinking_hallway4_hide" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x71460366, Offset: 0x3e70
// Size: 0x1c
function shrinking_hallway1_unhide()
{
    snd::client_msg( "shrinking_hallway1_unhide" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x4f04040e, Offset: 0x3e98
// Size: 0x1c
function shrinking_hallway2_unhide()
{
    snd::client_msg( "shrinking_hallway2_unhide" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xda2beabf, Offset: 0x3ec0
// Size: 0x1c
function shrinking_hallway3_unhide()
{
    snd::client_msg( "shrinking_hallway3_unhide" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x10d9af79, Offset: 0x3ee8
// Size: 0x1c
function shrinking_hallway4_unhide()
{
    snd::client_msg( "shrinking_hallway4_unhide" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xf831c205, Offset: 0x3f10
// Size: 0x1c
function shrinking_hallway_end()
{
    snd::client_msg( "shrinking_hallway_end" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xd0385c54, Offset: 0x3f38
// Size: 0x12c
function function_46e4b64f()
{
    players = snd::function_da785aa8();
    player = players[ 0 ];
    self endon( #"death" );
    player endon( #"death" );
    
    while ( true )
    {
        distance = distancesquared( player.origin, self.origin );
        
        if ( distance < 902500 )
        {
            break;
        }
        
        waitframe( 1 );
    }
    
    loop = snd::play( "amb_hallway_door_pers_lp", self.origin );
    
    while ( true )
    {
        distance = distancesquared( player.origin, self.origin );
        
        if ( distance < 30625 )
        {
            break;
        }
        
        waitframe( 1 );
    }
    
    wait 0.6;
    snd::stop( loop );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xdfd55991, Offset: 0x4070
// Size: 0xac
function function_d4255748()
{
    org = ( -1704, 9214, -1216 );
    adler = snd::play( [ "evt_adler_hallway_drone_lp", 4 ], org );
    level waittill( #"hash_54d5f64c5f92585d" );
    snd::play( "evt_adler_hallway_drone_end", org );
    snd::stop( adler, 0.05 );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0xbe3d87d7, Offset: 0x4128
// Size: 0x17a
function function_1302e69b( line )
{
    switch ( line )
    {
        case #"hash_50e76364eb487ee7":
            snd::client_msg( "hallway_voice_1" );
            break;
        case #"hash_50e70b64eb47e95f":
            snd::client_msg( "hallway_voice_2" );
            break;
        case #"hash_52016a64ec381281":
            snd::client_msg( "hallway_voice_3" );
            break;
        case #"hash_299931c6bee06b56":
            snd::client_msg( "hallway_voice_4" );
            break;
        case #"hash_6574041af1ef9d8b":
            snd::client_msg( "hallway_voice_5" );
            break;
        case #"hash_5c474edbfa219fbb":
            snd::client_msg( "hallway_voice_6" );
            break;
        case #"hash_2e9614d78554ddd6":
            snd::client_msg( "hallway_voice_7" );
            break;
        default:
            break;
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x12756a73, Offset: 0x42b0
// Size: 0x5c
function function_99791793()
{
    snd::play( "evt_cp_nam_prisoner_memory_start" );
    amb = snd::play( "amb_cp_nam_prisoner_memory_lp" );
    wait 3;
    snd::stop( amb, 10 );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0x12daca7b, Offset: 0x4318
// Size: 0x84
function function_c298c625( *threshold )
{
    level endon( #"memory_reaction_vo_start" );
    snd::play( "amb_cp_nam_prisoner_crt_on", self );
    snd::play( "amb_cp_nam_prisoner_crt_on_ominous", self );
    snd::play( "amb_cp_nam_prisoner_crt_buzz_lp", self );
    snd::play( "amb_cp_nam_prisoner_crt_fuzz_lp", self );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xb5252cd8, Offset: 0x43a8
// Size: 0x1c
function projector_room_enter()
{
    snd::client_msg( "projector_room_enter" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xfafc735b, Offset: 0x43d0
// Size: 0x4a
function function_82b14d0c()
{
    snd::play( "amb_cp_nam_prisoner_slide_proj_switch", self );
    
    if ( !isdefined( self.idle ) )
    {
        self.idle = snd::play( "amb_cp_nam_prisoner_slide_proj_lp", self );
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x654b3498, Offset: 0x4428
// Size: 0x44
function function_6467c4e8()
{
    if ( !level flag::get( "bunker_puzzle_room_solved" ) )
    {
        snd::play( "amb_cp_nam_prisoner_slide_proj_advance", self );
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x9ddbcca6, Offset: 0x4478
// Size: 0x1c
function projector_room_exit()
{
    snd::client_msg( "projector_room_exit" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x74a453d3, Offset: 0x44a0
// Size: 0x2fc
function function_8d29676a()
{
    players = snd::function_da785aa8();
    player = players[ 0 ];
    tiles = snd::play( "evt_cp_nam_prisoner_hall_tile_destruct", player.origin );
    tiles moveto( ( 4809, 16823, -1009 ), 5, 0, 0 );
    rumble = snd::play( [ "amb_cp_nam_prisoner_memory_lp", 3 ] );
    var_2c28f512 = [ ( 4786.68, 16669.8, -965.327 ), ( 4862.88, 16593.1, -914.642 ), ( 4785.5, 16206.1, -951.072 ), ( 4859.87, 16066.4, -940.508 ), ( 4779.83, 15766.9, -941.054 ), ( 4849.75, 15382.3, -940.286 ), ( 4776.56, 15097.4, -947.083 ), ( 4830.7, 14657.6, -945.2 ), ( 4763.43, 14197.2, -939.182 ), ( 4840.77, 13903.6, -953.905 ), ( 4761.13, 13491.4, -934.264 ), ( 4857.89, 13106.7, -942.509 ), ( 4788.84, 12685.5, -945.196 ) ];
    tiles = snd::emitter( "amb_cp_nam_pris_tiles", var_2c28f512, [ 3, 12 ] );
    level flag::wait_till( "lab_hallway_exited" );
    snd::stop( tiles, 1 );
    snd::stop( rumble, 3 );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xb9aea11e, Offset: 0x47a8
// Size: 0x1c
function function_b44ada9a()
{
    snd::play( "evt_use_computer_plr_enter" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xefd60409, Offset: 0x47d0
// Size: 0x2c
function function_33f61b3()
{
    level.var_ff423960 = snd::play( "evt_pris_knife_heli_dist_approach_lp", level.var_56894b06 );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xe7877743, Offset: 0x4808
// Size: 0x8c
function function_c348d7ae()
{
    while ( true )
    {
        if ( isdefined( level.var_ff423960 ) )
        {
            wait 0.25;
            break;
        }
        
        waitframe( 1 );
    }
    
    wait 3;
    snd::stop( level.var_ff423960, 1.25 );
    wait 6.5;
    
    if ( isdefined( level.var_56894b06 ) )
    {
        level.var_56894b06 delete();
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xd56931da, Offset: 0x48a0
// Size: 0x34
function function_51f7c962()
{
    level.var_51f7c962 = snd::play( "evt_cp_nam_prisoner_helicopter_distant_lp", ( 2500, 2038, 1571 ) );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0x2efe26b, Offset: 0x48e0
// Size: 0x74
function function_25065c16( heli )
{
    wait 0.5;
    
    if ( isdefined( level.var_51f7c962 ) )
    {
        snd::stop( level.var_51f7c962, 5 );
    }
    
    snd::play( "evt_prs_village_heli", heli );
    snd::play( "evt_prs_village_heli_gusts_lp", heli );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0x9b5c4ad2, Offset: 0x4960
// Size: 0x84
function function_2c89f1cf( heli )
{
    level flag::wait_till( "flag_village_heli_turret_loop_start" );
    turret = snd::play( "wpn_prs_village_heli_m60_lp", heli );
    level flag::wait_till( "flag_village_heli_turret_loop_stop" );
    snd::stop( turret );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x2aa4926e, Offset: 0x49f0
// Size: 0x44
function function_2faf67e()
{
    thread function_e40b48c();
    thread function_2e38b089();
    thread function_e25083cf();
    thread function_d3a5e67a();
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xcbc47bd8, Offset: 0x4a40
// Size: 0xc0
function function_e40b48c()
{
    level flag::wait_till( "village_missile_strike_explo_1" );
    org = ( 1269, 7318, 1091 );
    snd::play( "evt_prs_village_heli_tower_explo_transient", org );
    snd::play( "evt_prs_village_heli_tower_explo", org );
    snd::play( "evt_prs_village_heli_left_tower_impacts", org );
    wait 3.5;
    snd::play( "evt_prs_village_heli_right_tower_impacts", ( 2174, 7130, 1160 ) );
    
    /#
    #/
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x9896a84f, Offset: 0x4b08
// Size: 0x58
function function_2e38b089()
{
    level waittill( #"hash_3db629f9bf3c2182" );
    org = ( 2255, 7072, 1274 );
    snd::play( "evt_prs_village_heli_tower_explo", org );
    
    /#
    #/
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x92fb0c3c, Offset: 0x4b68
// Size: 0x5c
function function_e25083cf()
{
    level flag::wait_till( "village_missile_strike_explo_barrel" );
    org = ( 1814, 7695, 1299 );
    snd::play( "evt_prs_village_heli_explo_1", org );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x30a833ee, Offset: 0x4bd0
// Size: 0x5c
function function_d3a5e67a()
{
    level flag::wait_till( "village_missile_strike_explo_2" );
    org = ( 1814, 7695, 1299 );
    snd::play( "evt_prs_village_heli_explo_2", org );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x42a1a48f, Offset: 0x4c38
// Size: 0x384
function function_544b6241()
{
    var_8d25d499 = [ ( 1632.97, 7775.84, 986.545 ), ( 1947.42, 7776.83, 976.33 ), ( 1666.4, 7680.21, 1208.97 ), ( 2019.62, 7623.81, 1231.41 ) ];
    var_eab91f1c = [ ( 1967.47, 7628.46, 980.568 ), ( 1619.87, 7558.62, 988.361 ), ( 1531.51, 7320.38, 992.528 ), ( 1354.19, 7328.2, 1024.28 ), ( 1216.91, 7255.09, 1025.66 ), ( 1876.26, 7615.53, 997.021 ), ( 1746.62, 7433.61, 948.833 ), ( 1664.67, 7575.65, 1106.78 ), ( 1404.55, 7117.53, 957.536 ), ( 1752.16, 8038.88, 965.756 ), ( 1855.14, 7959.76, 958.785 ), ( 1857.78, 7872.6, 961.125 ), ( 1791.41, 7927.75, 961.094 ), ( 1668.08, 7227.86, 949.07 ), ( 1939.93, 7406.78, 973.743 ), ( 1616.33, 7382.69, 992.563 ) ];
    var_cf877a64 = snd::play( [ 1, "env_nam_fire_village_sm_lp", 3 ], var_eab91f1c );
    var_9be9154c = snd::play( [ 1, "env_nam_fire_village_lg_lp", 3 ], var_8d25d499 );
    level waittill( #"hash_51ed2c8b384afa58" );
    wait 1;
    snd::stop( var_cf877a64, 1 );
    snd::stop( var_9be9154c, 1 );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xed675b4b, Offset: 0x4fc8
// Size: 0x6c
function function_4a9b10a8()
{
    gunfire = snd::play( "amb_village_dist_gunfire_lp", ( 147, 4367, 1228 ) );
    level flag::wait_till( "flag_village_start_wave_02" );
    snd::stop( gunfire, 20 );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0x11222c4d, Offset: 0x5040
// Size: 0x24
function function_46fb07f8( door )
{
    snd::play( "evt_cp_nam_bunk_door_slam", door );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0xd2779ba9, Offset: 0x5070
// Size: 0x24
function function_61bc0002( door )
{
    snd::play( "evt_prs_middle_paths_falling_door_incoming", door );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 2, eflags: 0x0
// Checksum 0x92627293, Offset: 0x50a0
// Size: 0x94
function function_501657c8( door, water = 0 )
{
    snd::play( "evt_prs_middle_paths_falling_door_impact", door );
    
    if ( is_true( water ) )
    {
        snd::play( "evt_prs_middle_paths_falling_door_water", door );
        return;
    }
    
    snd::play( "evt_prs_middle_paths_falling_door_dirt", door );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xc011e2a1, Offset: 0x5140
// Size: 0x1c
function evt_cp_nam_bunk_door_jumpback_01()
{
    snd::play( "evt_cp_nam_bunk_door_jumpback_01" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xec93ca7d, Offset: 0x5168
// Size: 0x1c
function evt_cp_nam_bunk_door_jumpback_02()
{
    snd::play( "evt_cp_nam_bunk_door_jumpback_02" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x34939d49, Offset: 0x5190
// Size: 0x1c
function evt_cp_nam_bunk_door_jumpback_03()
{
    snd::play( "evt_cp_nam_bunk_door_jumpback_03" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xc77bb526, Offset: 0x51b8
// Size: 0x1c
function evt_cp_nam_bunk_trap_floor()
{
    snd::play( "evt_cp_nam_bunk_trap_floor" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0xc683e67f, Offset: 0x51e0
// Size: 0x194
function function_2982df9f( *door_locked )
{
    self endon( #"death" );
    self endon( #"deleted" );
    players = snd::function_da785aa8();
    player = players[ 0 ];
    drone = undefined;
    
    if ( !isdefined( self.hidden ) || isdefined( self.hidden ) && self.hidden != 1 )
    {
        drone = snd::play( "amb_bunker_door_drone_close_lp", self.door_interact );
    }
    else
    {
        return;
    }
    
    self thread function_8bb241ce();
    util::waittill_any_ents( self, "deleted", self.door_interact, "trigger", level, "start_outro" );
    snd::client_msg( "bunker_door_used" );
    
    if ( level flag::get( "start_outro" ) )
    {
        return;
    }
    
    if ( isdefined( drone ) )
    {
        drone linkto( player );
        snd::stop( drone, 8 );
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x62a8defe, Offset: 0x5380
// Size: 0x278
function function_8bb241ce()
{
    self notify( "2bdee92c9f1adeb9" );
    self endon( "2bdee92c9f1adeb9" );
    playing = 0;
    
    while ( true )
    {
        players = snd::function_da785aa8();
        player = players[ 0 ];
        
        if ( isplayer( player ) && isdefined( self.door_interact ) )
        {
            if ( distance( self.door_interact.origin, player.origin ) <= 110 )
            {
                if ( playing == 0 )
                {
                    if ( !isdefined( self.hidden ) || isdefined( self.hidden ) && self.hidden != 1 )
                    {
                        playing = 1;
                        var_a5ce3a02 = snd::emitter( "amb_bunker_door_perseus_close", player, [ 1, 3 ], [ 5, 100 ], [ -60, 60 ] );
                        var_b2e8144d = snd::emitter( "amb_bunker_door_perseus_distant", player, [ 1, 5 ], [ 200, 800 ] );
                    }
                }
            }
            else if ( playing == 1 )
            {
                snd::stop( var_a5ce3a02 );
                snd::stop( var_b2e8144d );
                playing = 0;
            }
        }
        else
        {
            if ( playing == 1 )
            {
                snd::stop( var_a5ce3a02 );
                snd::stop( var_b2e8144d );
                playing = 0;
            }
            
            break;
        }
        
        waitframe( 1 );
    }
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0xe42b3153, Offset: 0x5600
// Size: 0x34
function function_2a68e42f( *target )
{
    snd::play( "evt_cp_nam_pris_jet_passby_1", ( -4125, 5966, 751 ) );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0x408404e4, Offset: 0x5640
// Size: 0x34
function function_189a4092( *target )
{
    snd::play( "evt_cp_nam_pris_jet_passby_2", ( -2749, 6879, 895 ) );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0x7fef6d1, Offset: 0x5680
// Size: 0x34
function function_51b332c3( *target )
{
    snd::play( "evt_cp_nam_pris_jet_passby_3", ( -2041, 6291, 975 ) );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x2034da07, Offset: 0x56c0
// Size: 0x2c
function function_117820e4()
{
    snd::play( "evt_cp_nam_pris_napalm_drop", ( -2765, 7047, 648 ) );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xc0fafc75, Offset: 0x56f8
// Size: 0x3c
function function_278e4d10()
{
    snd::play( "evt_cp_nam_pris_napalm_explode", ( -3510, 6266, 517 ) );
    thread function_86fac96();
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x6e0317bb, Offset: 0x5740
// Size: 0x2e4
function function_86fac96()
{
    wait 3;
    var_eab91f1c = [ ( -2350.58, 6528.08, 525.118 ), ( -2431.6, 6555.1, 596.221 ), ( -2973.43, 7143.96, 516.886 ), ( -3140.73, 7101.7, 525.518 ), ( -2841.93, 7043.43, 517.85 ), ( -2739.76, 6965.43, 518.109 ), ( -3113.21, 6795.42, 505.143 ), ( -3281.87, 6668.93, 404.85 ), ( -3613.67, 6629.01, 353.053 ), ( -3664.87, 6881.85, 325.65 ), ( -3345.33, 7030.93, 443.937 ), ( -3438.84, 6997.98, 422.394 ), ( -3151.1, 6613.35, 468.274 ), ( -2321.81, 6196.73, 549.574 ), ( -2647.51, 6870.11, 657.489 ), ( -2830.37, 7137.29, 666.561 ), ( -2371.86, 6323.8, 552 ) ];
    var_cf877a64 = snd::play( "env_nam_fire_napalm_small_lp", var_eab91f1c );
    var_9be9154c = snd::play( "env_nam_fire_napalm_large_lp", ( -2484.61, 6757.64, 567 ) );
    level flag::wait_till( "sniper_overlook_door_opened" );
    wait 1;
    snd::stop( var_cf877a64, 1 );
    snd::stop( var_9be9154c, 1 );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0xebe6eb3d, Offset: 0x5a30
// Size: 0x4c
function function_20018404()
{
    snd::client_msg( "start_frozen_battle" );
    level waittill( #"hash_135069eaafe77dc0" );
    snd::client_msg( "stop_frozen_battle" );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 0, eflags: 0x0
// Checksum 0x7af8eff9, Offset: 0x5a88
// Size: 0x8c
function bunker_room_final()
{
    voices = snd::play( "amb_perseus_whispers_bunker", ( -613, 11129, -1043 ) );
    level flag::wait_till( "flag_start_memory" );
    snd::client_msg( "bunker_room_final" );
    wait 3;
    snd::stop( voices, 8 );
}

// Namespace namespace_b6fe1dbe/namespace_b6fe1dbe
// Params 1, eflags: 0x0
// Checksum 0x27daaea9, Offset: 0x5b20
// Size: 0x74
function cinematic_duck_start( delay = 0 )
{
    wait delay;
    snd::client_msg( "cinematic_duck_start" );
    level flag::wait_till( "memory_reaction_vo_complete" );
    snd::client_msg( "cinematic_duck_end" );
}

