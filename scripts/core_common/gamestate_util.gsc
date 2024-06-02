// Atian COD Tools GSC CW decompiler test
#namespace gamestate;

// Namespace gamestate/gamestate_util
// Params 1, eflags: 0x2 linked
// Checksum 0x1ac05332, Offset: 0x80
// Size: 0x1c
function is_state(state) {
    return game.state == state;
}

// Namespace gamestate/gamestate_util
// Params 0, eflags: 0x2 linked
// Checksum 0x9a6b5c35, Offset: 0xa8
// Size: 0x3e
function is_game_over() {
    return game.state == #"postgame" || game.state == #"shutdown";
}

// Namespace gamestate/gamestate_util
// Params 0, eflags: 0x2 linked
// Checksum 0xbce36c14, Offset: 0xf0
// Size: 0x1c
function is_shutting_down() {
    return game.state == #"shutdown";
}

