// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_game_over;

// Namespace zm_game_over
// Method(s) 7 Total 14
class czm_game_over : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace czm_game_over/zm_game_over
    // Params 2, eflags: 0x2 linked
    // Checksum 0x59173f80, Offset: 0x2b0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace czm_game_over/zm_game_over
    // Params 1, eflags: 0x2 linked
    // Checksum 0xeff2f2ba, Offset: 0x2f8
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace czm_game_over/zm_game_over
    // Params 0, eflags: 0x2 linked
    // Checksum 0x8fea55d2, Offset: 0x238
    // Size: 0x6c
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_game_over");
        cluielem::add_clientfield("_state", 1, 2, "int");
        cluielem::add_clientfield("rounds", 1, 8, "int");
    }

    // Namespace czm_game_over/zm_game_over
    // Params 2, eflags: 0x2 linked
    // Checksum 0xbc8d2565, Offset: 0x490
    // Size: 0x44
    function set_rounds(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "rounds", value);
    }

    // Namespace czm_game_over/zm_game_over
    // Params 2, eflags: 0x2 linked
    // Checksum 0x7bce2467, Offset: 0x328
    // Size: 0x15c
    function set_state(player, state_name) {
        if (#"defaultstate" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 0);
            return;
        }
        if (#"hash_4677c7e6d02d1a65" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 1);
            return;
        }
        if (#"hash_5f1b73095bbb3a7a" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 2);
            return;
        }
        if (#"hash_6893db9b6c7b5a58" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 3);
            return;
        }
        assertmsg("<unknown string>");
    }

}

// Namespace zm_game_over/zm_game_over
// Params 0, eflags: 0x2 linked
// Checksum 0xe4ca50c9, Offset: 0xe8
// Size: 0x34
function register() {
    elem = new czm_game_over();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace zm_game_over/zm_game_over
// Params 2, eflags: 0x2 linked
// Checksum 0x584b4b43, Offset: 0x128
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace zm_game_over/zm_game_over
// Params 1, eflags: 0x2 linked
// Checksum 0x5189623b, Offset: 0x168
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_game_over/zm_game_over
// Params 1, eflags: 0x2 linked
// Checksum 0xc3d6ea8d, Offset: 0x190
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace zm_game_over/zm_game_over
// Params 2, eflags: 0x2 linked
// Checksum 0x9478374c, Offset: 0x1b8
// Size: 0x28
function set_state(player, state_name) {
    [[ self ]]->set_state(player, state_name);
}

// Namespace zm_game_over/zm_game_over
// Params 2, eflags: 0x2 linked
// Checksum 0xa960e340, Offset: 0x1e8
// Size: 0x28
function set_rounds(player, value) {
    [[ self ]]->set_rounds(player, value);
}

