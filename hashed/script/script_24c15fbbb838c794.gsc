// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace interactive_shot;

// Namespace interactive_shot
// Method(s) 6 Total 13
class cinteractive_shot : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cinteractive_shot/interactive_shot
    // Params 2, eflags: 0x2 linked
    // Checksum 0xa2d77daf, Offset: 0x258
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cinteractive_shot/interactive_shot
    // Params 1, eflags: 0x2 linked
    // Checksum 0x9a9d75f9, Offset: 0x2a0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cinteractive_shot/interactive_shot
    // Params 0, eflags: 0x2 linked
    // Checksum 0x4fa789fe, Offset: 0x208
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("interactive_shot");
        cluielem::function_dcb34c80("string", "text", 1);
    }

    // Namespace cinteractive_shot/interactive_shot
    // Params 2, eflags: 0x2 linked
    // Checksum 0xf3d03845, Offset: 0x2d0
    // Size: 0x44
    function set_text(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "text", value);
    }

}

// Namespace interactive_shot/interactive_shot
// Params 0, eflags: 0x2 linked
// Checksum 0xe4dde142, Offset: 0xe8
// Size: 0x34
function register() {
    elem = new cinteractive_shot();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace interactive_shot/interactive_shot
// Params 2, eflags: 0x2 linked
// Checksum 0xaa4b8eb3, Offset: 0x128
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace interactive_shot/interactive_shot
// Params 1, eflags: 0x2 linked
// Checksum 0xf8a9ca82, Offset: 0x168
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace interactive_shot/interactive_shot
// Params 1, eflags: 0x2 linked
// Checksum 0xa2c3bd60, Offset: 0x190
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace interactive_shot/interactive_shot
// Params 2, eflags: 0x2 linked
// Checksum 0x20d43dac, Offset: 0x1b8
// Size: 0x28
function set_text(player, value) {
    [[ self ]]->set_text(player, value);
}

