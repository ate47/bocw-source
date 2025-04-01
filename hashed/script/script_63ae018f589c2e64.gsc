#using script_3dc93ca9902a9cda;
#using scripts\core_common\array_shared;
#using scripts\core_common\audio_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\music_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\cp_common\snd;
#using scripts\cp_common\snd_draw;
#using scripts\cp_common\snd_sp;
#using scripts\cp_common\snd_utility;

#namespace namespace_e1ccb37b;

// Namespace namespace_e1ccb37b/level_preinit
// Params 1, eflags: 0x24
// Checksum 0x83f82578, Offset: 0x310
// Size: 0x2c
function private event_handler[level_preinit] function_b489bb7b( *eventstruct )
{
    snd::function_5e69f468( &_objective );
}

// Namespace namespace_e1ccb37b/event_cc819519
// Params 1, eflags: 0x24
// Checksum 0x806a3b5c, Offset: 0x348
// Size: 0x44
function private event_handler[event_cc819519] function_686b88aa( *eventstruct )
{
    snd::wait_init();
    snd::waitforplayers();
    level thread function_b297dffc();
}

// Namespace namespace_e1ccb37b/namespace_bf107587
// Params 1, eflags: 0x4
// Checksum 0xfece91bc, Offset: 0x398
// Size: 0x152
function private _objective( objective )
{
    player = snd::function_da785aa8()[ 0 ];
    
    switch ( objective )
    {
        case #"comprimised":
            snd::client_msg( "compromised_init" );
            break;
        case #"ambush":
            snd::client_msg( "start_combat" );
            break;
        case #"loose_ends":
            break;
        case #"safehouse_burns":
            break;
        case #"hash_fde5a9c153fb103":
            break;
        case #"no_game":
        case #"hash_6e531fb9475df744":
            break;
        default:
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:x38>" + objective + "<dev string:x5b>" );
            #/
            
            break;
    }
}

// Namespace namespace_e1ccb37b/namespace_bf107587
// Params 3, eflags: 0x0
// Checksum 0xdc3468e3, Offset: 0x4f8
// Size: 0x5c
function music( str_msg, n_delay = 0, var_37a6c96 )
{
    level thread function_7edafa59( str_msg, n_delay, var_37a6c96 );
    level thread function_e80c0ccf( str_msg );
}

// Namespace namespace_e1ccb37b/namespace_bf107587
// Params 3, eflags: 0x0
// Checksum 0x42c90fcc, Offset: 0x560
// Size: 0x20a
function function_7edafa59( str_msg, n_delay, var_37a6c96 )
{
    switch ( str_msg )
    {
        case #"4.1_adler_attack":
        case #"5.0_comrade":
        case #"1.5_times_up":
        case #"2.0_ambush":
        case #"4.0_adler":
        case #"4.2_adler_fail":
        case #"1.0_intro":
        case #"1.6_not_surprised":
            if ( isdefined( var_37a6c96 ) )
            {
                flag::wait_till( var_37a6c96 );
            }
            
            music::setmusicstate( str_msg, undefined, n_delay );
            break;
        case #"4.0_adler_shoot":
            snd::client_msg( #"hash_14488fae2db8c286" );
            break;
        case #"hash_581c2b78798ae4fb":
            music::function_edda155f( str_msg, n_delay );
            break;
        case #"hash_2193c42e21ea2e63":
            music::function_2af5f0ec( str_msg );
            break;
        case #"deactivate_2.0_ambush":
            if ( isdefined( var_37a6c96 ) )
            {
                flag::wait_till( var_37a6c96 );
            }
            
            music::setmusicstate( "none", undefined, n_delay );
            break;
        default:
            /#
                iprintlnbold( "<dev string:x60>" + str_msg + "<dev string:x72>" );
            #/
            
            break;
    }
}

// Namespace namespace_e1ccb37b/namespace_bf107587
// Params 1, eflags: 0x0
// Checksum 0x9efef70b, Offset: 0x778
// Size: 0x8a
function function_e80c0ccf( str_msg )
{
    switch ( str_msg )
    {
        case #"1.0_intro":
            snd::client_msg( #"musictrack_cp_duga_1" );
            break;
        case #"5.0_comrade":
            snd::client_msg( #"musictrack_cp_duga_2" );
            break;
    }
}

// Namespace namespace_e1ccb37b/namespace_bf107587
// Params 1, eflags: 0x0
// Checksum 0x1c1abca9, Offset: 0x810
// Size: 0xdc
function function_83409f31( *fade_time )
{
    music( "1.0_intro" );
    snd::client_msg( "compromised_fade" );
    level waittill( #"hash_544fed756e3555fd" );
    
    /#
        snd::function_81fac19d( snd::function_d78e3644(), "<dev string:x8d>" );
    #/
    
    wait 1.3;
    
    if ( is_true( level.var_96d76ea ) )
    {
        music( "1.6_not_surprised" );
        return;
    }
    
    music( "1.5_times_up" );
}

// Namespace namespace_e1ccb37b/namespace_bf107587
// Params 0, eflags: 0x0
// Checksum 0xae34408d, Offset: 0x8f8
// Size: 0x114
function function_b297dffc()
{
    level waittill( #"hash_7bf36e6da910340e" );
    var_e52e4221 = snd::play( "vox_duga_tappy_adl_exert_struggle_main_lp" );
    var_5b5c323d = snd::play( "fly_duga_tappy_struggle_2d_clothgear_lp" );
    var_eb0c1d64 = snd::emitter( "fly_emt_duga_tappy_struggle_short", level.player, [ 3, 6 ] );
    level waittill( #"hash_6538016321815bfb" );
    snd::stop( var_e52e4221 );
    snd::stop( var_5b5c323d, 3 );
    snd::stop( var_eb0c1d64, 1 );
}

// Namespace namespace_e1ccb37b/namespace_bf107587
// Params 0, eflags: 0x0
// Checksum 0xae1271c9, Offset: 0xa18
// Size: 0x34
function function_5d245761()
{
    level waittill( #"ending_fade_out" );
    snd::client_msg( "ending_fade_out" );
}

// Namespace namespace_e1ccb37b/namespace_bf107587
// Params 0, eflags: 0x0
// Checksum 0xcafc2d9f, Offset: 0xa58
// Size: 0x8c
function function_89070bfe()
{
    snd::play( "emt_fire_flareup_safehouse_03", ( -2.7, -569.5, 16.3 ) );
    var_f5de4997 = ( -2.7, -569.5, 16.3 );
    var_13cb0a3a = "emt_fire_gasoline_safehouse_hvy_01_lp";
    level.var_89070bfe = snd::play( var_13cb0a3a, var_f5de4997 );
}

// Namespace namespace_e1ccb37b/namespace_bf107587
// Params 0, eflags: 0x0
// Checksum 0x4942ea1d, Offset: 0xaf0
// Size: 0x7c
function function_8d5b23ae()
{
    snd::play( "emt_fire_flareup_safehouse_02", ( -368, 298, 7 ) );
    var_b22a1a58 = ( -368, 298, 7 );
    var_73f21acc = "emt_fire_gasoline_safehouse_hvy_02_lp";
    level.var_8d5b23ae = snd::play( var_73f21acc, var_b22a1a58 );
}

// Namespace namespace_e1ccb37b/namespace_bf107587
// Params 0, eflags: 0x0
// Checksum 0xd8a30a6b, Offset: 0xb78
// Size: 0xa4
function function_ef8c9b18()
{
    snd::play( "evt_fan_portable_idle_armada_lp", ( 73, 61, 54 ) );
    snd::play( "emt_fire_messageboard_hvy_01_lp", ( 42, 90, 15 ) );
    snd::play( "emt_fire_wood_hvy_01_lp", ( -395, -275, 14 ) );
    snd::play( "emt_fire_wood_med_01_lp", ( -281, 100, 47 ) );
}

// Namespace namespace_e1ccb37b/namespace_bf107587
// Params 0, eflags: 0x0
// Checksum 0xeab35cd2, Offset: 0xc28
// Size: 0x1c
function function_7f23d560()
{
    snd::client_msg( "post_prisoner_burn_scene" );
}

