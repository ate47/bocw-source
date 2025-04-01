#using script_3dc93ca9902a9cda;
#using scripts\core_common\array_shared;
#using scripts\core_common\audio_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\music_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\cp_common\snd;
#using scripts\cp_common\snd_draw;
#using scripts\cp_common\snd_sp;
#using scripts\cp_common\snd_utility;

#namespace namespace_5d7a2dac;

// Namespace namespace_5d7a2dac/level_preinit
// Params 1, eflags: 0x24
// Checksum 0x76f67103, Offset: 0x100
// Size: 0x2c
function private event_handler[level_preinit] function_b489bb7b( *eventstruct )
{
    snd::function_5e69f468( &_objective );
}

// Namespace namespace_5d7a2dac/event_cc819519
// Params 1, eflags: 0x24
// Checksum 0xb5856f54, Offset: 0x138
// Size: 0x3c
function private event_handler[event_cc819519] function_686b88aa( *eventstruct )
{
    snd::wait_init();
    snd::waitforplayers();
    thread function_b7d8556a();
}

// Namespace namespace_5d7a2dac/namespace_63fe6111
// Params 1, eflags: 0x4
// Checksum 0x8c1358, Offset: 0x180
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

// Namespace namespace_5d7a2dac/namespace_63fe6111
// Params 2, eflags: 0x0
// Checksum 0xf499644a, Offset: 0x228
// Size: 0x54
function music( str_msg, n_delay = 0 )
{
    level thread function_7edafa59( str_msg, n_delay );
    level thread function_e80c0ccf( str_msg );
}

// Namespace namespace_5d7a2dac/namespace_63fe6111
// Params 2, eflags: 0x0
// Checksum 0x4856ea35, Offset: 0x288
// Size: 0x212
function function_7edafa59( str_msg, n_delay )
{
    switch ( str_msg )
    {
        case #"hash_2ee5843b582dba8":
        case #"hash_e896bbfc4467554":
        case #"7.0_combat_3":
        case #"hash_168af7f88044b6ce":
        case #"hash_3298180a203dc742":
        case #"8.0_ireadyou":
        case #"hash_58f346e277c63b97":
        case #"hash_5905b34ca4b2af82":
        case #"hash_5b9d3c7755ed2641":
        case #"6.0_tunnel":
        case #"10.0_surveying":
        case #"11.0_dig_site":
        case #"9.0_reunited":
        case #"11.2_airlift":
        case #"hash_7f14e478924d3d3f":
            music::setmusicstate( str_msg, undefined, n_delay );
            break;
        case #"hash_ce25a6502e59743":
        case #"hash_356eaedb9f6c3dc3":
            music::function_edda155f( str_msg, n_delay );
            break;
        case #"hash_2193c42e21ea2e63":
            music::function_2af5f0ec( str_msg );
            break;
        case #"hash_77247bb51de4a650":
            music::setmusicstate( "none", undefined, n_delay );
            break;
        default:
            /#
                iprintlnbold( "<dev string:x60>" + str_msg + "<dev string:x72>" );
            #/
            
            break;
    }
}

// Namespace namespace_5d7a2dac/namespace_63fe6111
// Params 1, eflags: 0x0
// Checksum 0x71723d9, Offset: 0x4a8
// Size: 0x132
function function_e80c0ccf( str_msg )
{
    switch ( str_msg )
    {
        case #"hash_58f346e277c63b97":
            snd::client_msg( #"musictrack_cp_yamantau_1" );
            break;
        case #"hash_7f14e478924d3d3f":
            snd::client_msg( #"musictrack_cp_yamantau_2" );
            break;
        case #"6.0_tunnel":
            snd::client_msg( #"musictrack_cp_yamantau_3" );
            break;
        case #"10.0_surveying":
            snd::client_msg( #"musictrack_cp_yamantau_4" );
            break;
        case #"11.0_dig_site":
            snd::client_msg( #"musictrack_cp_yamantau_5" );
            break;
    }
}

// Namespace namespace_5d7a2dac/namespace_63fe6111
// Params 0, eflags: 0x0
// Checksum 0xb051ba82, Offset: 0x5e8
// Size: 0x34
function function_b7d8556a()
{
    level waittill( #"chyron_menu_closed" );
    snd::client_msg( "audio_level_begin_duck_stop" );
}

