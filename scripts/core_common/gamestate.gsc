// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\gamestate_util.gsc;

#namespace gamestate;

// Namespace gamestate/gamestate
// Params 0, eflags: 0x5
// Checksum 0x58db7158, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"gamestate", &preinit, undefined, undefined, undefined);
}

// Namespace gamestate/gamestate
// Params 0, eflags: 0x6 linked
// Checksum 0x49a92143, Offset: 0xd8
// Size: 0x2c
function private preinit() {
    if (!isdefined(game.state)) {
        game.state = #"pregame";
    }
}

// Namespace gamestate/gamestate
// Params 1, eflags: 0x2 linked
// Checksum 0x5324827a, Offset: 0x110
// Size: 0x64
function set_state(state) {
    game.state = state;
    function_cab6408d(state);
    level notify(state);
    println("<unknown string>" + state);
}

