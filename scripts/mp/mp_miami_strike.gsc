#using script_44b0b8420eabacad;
#using script_67ce8e728d8f37ba;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\compass;
#using scripts\core_common\flag_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\oob;
#using scripts\core_common\scene_shared;
#using scripts\core_common\util_shared;
#using scripts\killstreaks\killstreaks_shared;

#namespace mp_miami_strike;

// Namespace mp_miami_strike/level_init
// Params 1, eflags: 0x20
// Checksum 0x4b98108d, Offset: 0x1f0
// Size: 0x154
function event_handler[level_init] main( *eventstruct )
{
    trigger = spawn( "trigger_radius_out_of_bounds", ( -5027, -2711, 60 ), 0, 330, 100 );
    trigger thread oob::run_oob_trigger();
    clientfield::register( "scriptmover", "neon_rob", 1, 1, "counter" );
    callback::on_end_game( &on_end_game );
    killstreaks::function_257a5f13( "straferun", 40 );
    killstreaks::function_257a5f13( "helicopter_comlink", 75 );
    level.missileremotelaunchvert = 10000;
    load::main();
    compass::setupminimap( "" );
    level thread function_f92fe90c();
    level thread function_3fbfa2de();
}

// Namespace mp_miami_strike/mp_miami_strike
// Params 0, eflags: 0x0
// Checksum 0x193ca067, Offset: 0x350
// Size: 0x19c
function function_24198689()
{
    var_780f74b5 = [];
    var_780f74b5[ var_780f74b5.size ] = "mp_spawn_point";
    var_780f74b5[ var_780f74b5.size ] = "mp_spawn_point_axis";
    var_780f74b5[ var_780f74b5.size ] = "mp_spawn_point_allies";
    spawning::move_spawn_point( var_780f74b5, ( -5509.5, -767.549, -8.375 ), ( -1211.33, -2559.36, 1.06126 ), ( 0, 158.654, 0 ) );
    spawning::move_spawn_point( var_780f74b5, ( -5508.32, -836.822, -8.375 ), ( -1202.32, -2486.35, -1.99246 ), ( 0, 158.983, 0 ) );
    spawning::move_spawn_point( var_780f74b5, ( -5506.7, -902.819, -8.375 ), ( -1202.32, -2417.14, 0 ), ( 0, 165.256, 0 ) );
    spawning::move_spawn_point( var_780f74b5, ( -5505.14, -965.254, -8.375 ), ( -1193.67, -2335.03, 0 ), ( 0, 168.448, 0 ) );
}

// Namespace mp_miami_strike/mp_miami_strike
// Params 0, eflags: 0x0
// Checksum 0xb5808cb4, Offset: 0x4f8
// Size: 0x9c
function function_f92fe90c()
{
    level endon( #"game_ended" );
    level flag::wait_till( "first_player_spawned" );
    waitframe( 1 );
    var_2555a1ec = getentarray( "neon_rob_sign", "targetname" );
    var_2555a1ec = array::sort_by_script_int( var_2555a1ec, 1 );
    level thread function_7858899c( var_2555a1ec );
}

// Namespace mp_miami_strike/mp_miami_strike
// Params 1, eflags: 0x0
// Checksum 0xd9c3f12d, Offset: 0x5a0
// Size: 0x124
function function_7858899c( var_37473ebc )
{
    level endon( #"game_ended" );
    
    while ( !isdefined( level.var_58bc5d04 ) )
    {
        wait 1;
    }
    
    while ( true )
    {
        foreach ( sign in var_37473ebc )
        {
            if ( !isdefined( sign ) )
            {
                continue;
            }
            
            sign clientfield::increment( "neon_rob", 1 );
            wait 0.5;
            
            if ( !isdefined( sign ) )
            {
                continue;
            }
            
            sign clientfield::increment( "neon_rob", 1 );
        }
        
        wait 1;
    }
}

// Namespace mp_miami_strike/mp_miami_strike
// Params 0, eflags: 0x0
// Checksum 0xc30e9088, Offset: 0x6d0
// Size: 0x54
function function_3fbfa2de()
{
    diving_board_trig = getent( "diving_board_trig", "targetname" );
    
    if ( isdefined( diving_board_trig ) )
    {
        diving_board_trig callback::on_trigger( &function_2e1e9186 );
    }
}

// Namespace mp_miami_strike/mp_miami_strike
// Params 1, eflags: 0x0
// Checksum 0x272d51a0, Offset: 0x730
// Size: 0xfe
function function_2e1e9186( info )
{
    player = info.activator;
    trigger = self;
    
    if ( isplayer( player ) && isdefined( trigger ) && !is_true( trigger.var_7033e9 ) )
    {
        trigger.var_7033e9 = 1;
        self playsound( "amb_diving_board" );
        
        while ( isplayer( player ) && isdefined( trigger ) && player istouching( trigger ) )
        {
            waitframe( 1 );
        }
        
        if ( isdefined( trigger ) )
        {
            trigger.var_7033e9 = 0;
        }
    }
}

// Namespace mp_miami_strike/mp_miami_strike
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x838
// Size: 0x4
function on_end_game()
{
    
}

