#using scripts\core_common\callbacks_shared;
#using scripts\core_common\system_shared;

#namespace gamestate;

// Namespace gamestate/gamestate
// Params 0, eflags: 0x5
// Checksum 0x58db7158, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"gamestate", &preinit, undefined, undefined, undefined );
}

// Namespace gamestate/gamestate
// Params 0, eflags: 0x4
// Checksum 0x49a92143, Offset: 0xd8
// Size: 0x2c
function private preinit()
{
    if ( !isdefined( game.state ) )
    {
        game.state = #"pregame";
    }
}

// Namespace gamestate/event_f7d4a05b
// Params 1, eflags: 0x20
// Checksum 0xea30227e, Offset: 0x110
// Size: 0x172
function event_handler[event_f7d4a05b] function_69452d92( eventstruct )
{
    if ( !isdefined( game.state ) )
    {
        game.state = #"pregame";
    }
    
    if ( eventstruct.gamestate !== game.state )
    {
        game.state = eventstruct.gamestate;
        println( "<dev string:x38>" + game.state );
        callback::callback( #"hash_1184c2c2ed4c24b3", eventstruct );
        
        switch ( eventstruct.gamestate )
        {
            case #"playing":
                callback::callback( #"on_game_playing", eventstruct );
                break;
            case #"postgame":
                callback::callback( #"hash_3ca80e35288a78d0", eventstruct );
                break;
            case #"shutdown":
                callback::callback( #"on_game_shutdown", eventstruct );
                break;
        }
    }
}

