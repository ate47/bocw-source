// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace sr_message_box;

// Namespace sr_message_box
// Method(s) 6 Total 13
class class_51e5626e : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_51e5626e/sr_message_box
    // Params 2, eflags: 0x0
    // Checksum 0x128c7998, Offset: 0x258
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_51e5626e/sr_message_box
    // Params 1, eflags: 0x0
    // Checksum 0x2666162d, Offset: 0x2a0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_51e5626e/sr_message_box
    // Params 2, eflags: 0x0
    // Checksum 0x1de1202e, Offset: 0x2d0
    // Size: 0x44
    function function_7a690474(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "messagebox", value);
    }

    // Namespace namespace_51e5626e/sr_message_box
    // Params 0, eflags: 0x0
    // Checksum 0xe9984f38, Offset: 0x208
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("sr_message_box");
        cluielem::function_dcb34c80("string", "messagebox", 1);
    }

}

// Namespace sr_message_box/sr_message_box
// Params 0, eflags: 0x0
// Checksum 0x2beba907, Offset: 0xe8
// Size: 0x34
function register() {
    elem = new class_51e5626e();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace sr_message_box/sr_message_box
// Params 2, eflags: 0x0
// Checksum 0x40d59cb0, Offset: 0x128
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace sr_message_box/sr_message_box
// Params 1, eflags: 0x0
// Checksum 0x6221b1b7, Offset: 0x168
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace sr_message_box/sr_message_box
// Params 1, eflags: 0x0
// Checksum 0xd7920db2, Offset: 0x190
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace sr_message_box/sr_message_box
// Params 2, eflags: 0x0
// Checksum 0x3c38d43a, Offset: 0x1b8
// Size: 0x28
function function_7a690474(player, value) {
    [[ self ]]->function_7a690474(player, value);
}

