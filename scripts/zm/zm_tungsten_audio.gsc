#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\music_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\zm_common\zm_audio;

#namespace zm_tungsten_audio;

// Namespace zm_tungsten_audio/zm_tungsten_audio
// Params 0, eflags: 0x0
// Checksum 0x45091804, Offset: 0x140
// Size: 0x7c
function init()
{
    level.var_a353323e = &function_cb5a4b1a;
    level.var_ae2fe3bd = &function_613a7ccc;
    level.var_da00670e = &function_da00670e;
    level thread function_acd83a15();
    util::registerclientsys( "tritonCmd" );
}

// Namespace zm_tungsten_audio/zm_tungsten_audio
// Params 0, eflags: 0x0
// Checksum 0x187e9d76, Offset: 0x1c8
// Size: 0xcc
function function_cb5a4b1a()
{
    foreach ( player in getplayers() )
    {
        player clientfield::set_to_player( "" + #"music_underscore", 2 );
    }
    
    music::setmusicstate( "common_exfil" );
}

// Namespace zm_tungsten_audio/zm_tungsten_audio
// Params 1, eflags: 0x0
// Checksum 0x78882fa1, Offset: 0x2a0
// Size: 0x5c
function function_613a7ccc( b_success = 0 )
{
    if ( b_success )
    {
        music::setmusicstate( "common_exfil_success" );
        return;
    }
    
    music::setmusicstate( "common_exfil_fail" );
}

// Namespace zm_tungsten_audio/zm_tungsten_audio
// Params 0, eflags: 0x0
// Checksum 0xab98566f, Offset: 0x308
// Size: 0xa0
function function_acd83a15()
{
    level endon( #"game_over" );
    
    while ( true )
    {
        waitresult = level waittill( #"musroundend", #"hash_350a3e373494a400" );
        
        if ( waitresult._notify === "musRoundEnd" )
        {
            level thread function_e2901362();
            continue;
        }
        
        level thread function_26113358();
    }
}

// Namespace zm_tungsten_audio/zm_tungsten_audio
// Params 0, eflags: 0x0
// Checksum 0xfcaeae9c, Offset: 0x3b0
// Size: 0x74, Type: bool
function function_e840d5a5()
{
    if ( is_true( level.musicsystemoverride ) )
    {
        return false;
    }
    
    if ( !isdefined( level.musicsystem ) )
    {
        return true;
    }
    
    if ( !isdefined( level.musicsystem.currentplaytype ) )
    {
        return true;
    }
    
    if ( level.musicsystem.currentplaytype >= 4 )
    {
        return false;
    }
    
    return true;
}

// Namespace zm_tungsten_audio/zm_tungsten_audio
// Params 0, eflags: 0x0
// Checksum 0x4d6d559, Offset: 0x430
// Size: 0xe0
function function_3c734339()
{
    level endon( #"game_over" );
    level flag::wait_till( "start_zombie_round_logic" );
    
    foreach ( player in getplayers() )
    {
        player clientfield::set_to_player( "" + #"music_underscore", 0 );
    }
}

// Namespace zm_tungsten_audio/zm_tungsten_audio
// Params 1, eflags: 0x0
// Checksum 0x8c9b5e83, Offset: 0x518
// Size: 0x8c
function function_8f85d169( var_dbd74b22 = 1 )
{
    if ( var_dbd74b22 )
    {
        level thread zm_audio::sndmusicsystem_stopandflush();
        level.musicsystemoverride = 1;
        level thread function_e2901362();
        return;
    }
    
    level.musicsystemoverride = 0;
    level thread function_26113358();
}

// Namespace zm_tungsten_audio/zm_tungsten_audio
// Params 0, eflags: 0x0
// Checksum 0x722dcc27, Offset: 0x5b0
// Size: 0x3c
function function_da00670e()
{
    level thread function_e2901362();
    wait 1;
    level thread function_d0f24e17();
}

// Namespace zm_tungsten_audio/zm_tungsten_audio
// Params 0, eflags: 0x0
// Checksum 0x91d1e14b, Offset: 0x5f8
// Size: 0x84
function function_d0f24e17()
{
    level endon( #"game_over" );
    
    if ( !isdefined( level.musicsystem ) )
    {
        return;
    }
    
    if ( is_true( level.musicsystemoverride ) )
    {
        return;
    }
    
    while ( level.musicsystem.currentplaytype === 4 )
    {
        wait 1;
    }
    
    level thread function_26113358();
}

// Namespace zm_tungsten_audio/zm_tungsten_audio
// Params 1, eflags: 0x0
// Checksum 0x772a0ab2, Offset: 0x688
// Size: 0x54
function function_2c40648c( b_active = 1 )
{
    if ( b_active )
    {
        level thread function_26113358();
        return;
    }
    
    level thread function_e2901362();
}

// Namespace zm_tungsten_audio/zm_tungsten_audio
// Params 0, eflags: 0x0
// Checksum 0x138f8a9, Offset: 0x6e8
// Size: 0xc8
function function_26113358()
{
    if ( function_e840d5a5() )
    {
        foreach ( player in getplayers() )
        {
            player clientfield::set_to_player( "" + #"music_underscore", 3 );
        }
    }
}

// Namespace zm_tungsten_audio/zm_tungsten_audio
// Params 0, eflags: 0x0
// Checksum 0xa314cd9c, Offset: 0x7b8
// Size: 0xb0
function function_e2901362()
{
    foreach ( player in getplayers() )
    {
        player clientfield::set_to_player( "" + #"music_underscore", 2 );
    }
}

