// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_game_timer;

// Namespace zm_game_timer
// Method(s) 8 Total 15
class czm_game_timer : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace czm_game_timer/zm_game_timer
    // Params 2, eflags: 0x2 linked
    // Checksum 0x820b6cde, Offset: 0x318
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace czm_game_timer/zm_game_timer
    // Params 2, eflags: 0x2 linked
    // Checksum 0xd177f5aa, Offset: 0x3e0
    // Size: 0x44
    function set_minutes(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "minutes", value);
    }

    // Namespace czm_game_timer/zm_game_timer
    // Params 1, eflags: 0x2 linked
    // Checksum 0xf144ff53, Offset: 0x360
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace czm_game_timer/zm_game_timer
    // Params 2, eflags: 0x2 linked
    // Checksum 0x2e858fbf, Offset: 0x430
    // Size: 0x44
    function set_showzero(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "showzero", value);
    }

    // Namespace czm_game_timer/zm_game_timer
    // Params 0, eflags: 0x2 linked
    // Checksum 0x954214a3, Offset: 0x278
    // Size: 0x94
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_game_timer");
        cluielem::add_clientfield("seconds", 1, 6, "int");
        cluielem::add_clientfield("minutes", 1, 9, "int");
        cluielem::add_clientfield("showzero", 1, 1, "int");
    }

    // Namespace czm_game_timer/zm_game_timer
    // Params 2, eflags: 0x2 linked
    // Checksum 0x8867289a, Offset: 0x390
    // Size: 0x44
    function set_seconds(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "seconds", value);
    }

}

// Namespace zm_game_timer/zm_game_timer
// Params 0, eflags: 0x0
// Checksum 0xe67bbfc, Offset: 0xf8
// Size: 0x34
function register() {
    elem = new czm_game_timer();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace zm_game_timer/zm_game_timer
// Params 2, eflags: 0x0
// Checksum 0x40d59cb0, Offset: 0x138
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace zm_game_timer/zm_game_timer
// Params 1, eflags: 0x0
// Checksum 0x6221b1b7, Offset: 0x178
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_game_timer/zm_game_timer
// Params 1, eflags: 0x0
// Checksum 0xd7920db2, Offset: 0x1a0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace zm_game_timer/zm_game_timer
// Params 2, eflags: 0x0
// Checksum 0xb9272781, Offset: 0x1c8
// Size: 0x28
function set_seconds(player, value) {
    [[ self ]]->set_seconds(player, value);
}

// Namespace zm_game_timer/zm_game_timer
// Params 2, eflags: 0x0
// Checksum 0xd9c0b78c, Offset: 0x1f8
// Size: 0x28
function set_minutes(player, value) {
    [[ self ]]->set_minutes(player, value);
}

// Namespace zm_game_timer/zm_game_timer
// Params 2, eflags: 0x0
// Checksum 0x7c666fc5, Offset: 0x228
// Size: 0x28
function set_showzero(player, value) {
    [[ self ]]->set_showzero(player, value);
}

