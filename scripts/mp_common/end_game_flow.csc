#using scripts\core_common\clientfield_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace end_game_flow;

// Namespace end_game_flow/end_game_flow
// Params 0, eflags: 0x5
// Checksum 0xd316ac2c, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"end_game_flow", &preinit, undefined, undefined, undefined );
}

// Namespace end_game_flow/end_game_flow
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0xe8
// Size: 0x4
function private preinit()
{
    
}

