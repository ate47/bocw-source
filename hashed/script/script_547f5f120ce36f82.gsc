// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace vip_notify_text;

// Namespace vip_notify_text
// Method(s) 7 Total 14
class class_302a48fc : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_302a48fc/vip_notify_text
    // Params 2, eflags: 0x0
    // Checksum 0x7619b44c, Offset: 0x2c8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_302a48fc/vip_notify_text
    // Params 1, eflags: 0x0
    // Checksum 0x46de8545, Offset: 0x310
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_302a48fc/vip_notify_text
    // Params 0, eflags: 0x0
    // Checksum 0xe16bf71a, Offset: 0x250
    // Size: 0x6c
    function setup_clientfields() {
        cluielem::setup_clientfields("vip_notify_text");
        cluielem::function_dcb34c80("string", "vipmessage", 1);
        cluielem::add_clientfield("alpha", 1, 8, "float");
    }

    // Namespace namespace_302a48fc/vip_notify_text
    // Params 2, eflags: 0x0
    // Checksum 0x118f27f9, Offset: 0x390
    // Size: 0x44
    function set_alpha(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "alpha", value);
    }

    // Namespace namespace_302a48fc/vip_notify_text
    // Params 2, eflags: 0x0
    // Checksum 0xd14571ed, Offset: 0x340
    // Size: 0x44
    function function_d01a102c(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "vipmessage", value);
    }

}

// Namespace vip_notify_text/vip_notify_text
// Params 0, eflags: 0x0
// Checksum 0x8653f2f9, Offset: 0x100
// Size: 0x34
function register() {
    elem = new class_302a48fc();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace vip_notify_text/vip_notify_text
// Params 2, eflags: 0x0
// Checksum 0xa4df70d2, Offset: 0x140
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace vip_notify_text/vip_notify_text
// Params 1, eflags: 0x0
// Checksum 0x2fdf789, Offset: 0x180
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace vip_notify_text/vip_notify_text
// Params 1, eflags: 0x0
// Checksum 0xe6010a6a, Offset: 0x1a8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace vip_notify_text/vip_notify_text
// Params 2, eflags: 0x0
// Checksum 0x38e07786, Offset: 0x1d0
// Size: 0x28
function function_d01a102c(player, value) {
    [[ self ]]->function_d01a102c(player, value);
}

// Namespace vip_notify_text/vip_notify_text
// Params 2, eflags: 0x0
// Checksum 0xeb4ba0b, Offset: 0x200
// Size: 0x28
function set_alpha(player, value) {
    [[ self ]]->set_alpha(player, value);
}

