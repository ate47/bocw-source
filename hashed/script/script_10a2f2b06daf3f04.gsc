// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace scream_deathmatch_timer;

// Namespace scream_deathmatch_timer
// Method(s) 6 Total 13
class class_d49eac9b : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_d49eac9b/scream_deathmatch_timer
    // Params 2, eflags: 0x0
    // Checksum 0x1fc523a, Offset: 0x268
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_d49eac9b/scream_deathmatch_timer
    // Params 2, eflags: 0x0
    // Checksum 0xb73c1a9d, Offset: 0x2e0
    // Size: 0x44
    function function_302c4b81(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "slasherCountDownTime", value);
    }

    // Namespace namespace_d49eac9b/scream_deathmatch_timer
    // Params 1, eflags: 0x0
    // Checksum 0xd5a16f45, Offset: 0x2b0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_d49eac9b/scream_deathmatch_timer
    // Params 0, eflags: 0x0
    // Checksum 0x241c478, Offset: 0x218
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("scream_deathmatch_timer");
        cluielem::add_clientfield("slasherCountDownTime", 1, 4, "int", 0);
    }

}

// Namespace scream_deathmatch_timer/scream_deathmatch_timer
// Params 0, eflags: 0x0
// Checksum 0xdda2537d, Offset: 0xf8
// Size: 0x34
function register() {
    elem = new class_d49eac9b();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace scream_deathmatch_timer/scream_deathmatch_timer
// Params 2, eflags: 0x0
// Checksum 0x40d59cb0, Offset: 0x138
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace scream_deathmatch_timer/scream_deathmatch_timer
// Params 1, eflags: 0x0
// Checksum 0x6221b1b7, Offset: 0x178
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace scream_deathmatch_timer/scream_deathmatch_timer
// Params 1, eflags: 0x0
// Checksum 0xd7920db2, Offset: 0x1a0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace scream_deathmatch_timer/scream_deathmatch_timer
// Params 2, eflags: 0x0
// Checksum 0x742610b3, Offset: 0x1c8
// Size: 0x28
function function_302c4b81(player, value) {
    [[ self ]]->function_302c4b81(player, value);
}

