// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace stealth_meter_display;

// Namespace stealth_meter_display
// Method(s) 10 Total 17
class class_d4941e5e : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_d4941e5e/stealth_meter_display
    // Params 2, eflags: 0x0
    // Checksum 0x13f5aa26, Offset: 0x400
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_d4941e5e/stealth_meter_display
    // Params 2, eflags: 0x0
    // Checksum 0x6f6c2e, Offset: 0x568
    // Size: 0x44
    function function_18066380(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "direction", value);
    }

    // Namespace namespace_d4941e5e/stealth_meter_display
    // Params 2, eflags: 0x0
    // Checksum 0x75f67276, Offset: 0x4c8
    // Size: 0x44
    function function_4d628707(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "awarenessState", value);
    }

    // Namespace namespace_d4941e5e/stealth_meter_display
    // Params 1, eflags: 0x0
    // Checksum 0xcd25b4dd, Offset: 0x448
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_d4941e5e/stealth_meter_display
    // Params 2, eflags: 0x0
    // Checksum 0x4a3982c8, Offset: 0x518
    // Size: 0x44
    function function_7425637b(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "awarenessProgress", value);
    }

    // Namespace namespace_d4941e5e/stealth_meter_display
    // Params 0, eflags: 0x0
    // Checksum 0xa6de38ca, Offset: 0x310
    // Size: 0xe4
    function setup_clientfields() {
        cluielem::setup_clientfields("stealth_meter_display");
        cluielem::add_clientfield("entNum", 1, 10, "int");
        cluielem::add_clientfield("awarenessState", 1, 4, "int");
        cluielem::add_clientfield("awarenessProgress", 1, 4, "float");
        cluielem::add_clientfield("direction", 1, 4, "float");
        cluielem::add_clientfield("clamped", 1, 1, "int");
    }

    // Namespace namespace_d4941e5e/stealth_meter_display
    // Params 2, eflags: 0x0
    // Checksum 0x6f09793d, Offset: 0x478
    // Size: 0x44
    function set_entnum(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "entNum", value);
    }

    // Namespace namespace_d4941e5e/stealth_meter_display
    // Params 2, eflags: 0x0
    // Checksum 0xb641a3dc, Offset: 0x5b8
    // Size: 0x44
    function function_fae2a569(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "clamped", value);
    }

}

// Namespace stealth_meter_display/stealth_meter_display
// Params 0, eflags: 0x0
// Checksum 0xf5e918e1, Offset: 0x130
// Size: 0x34
function register() {
    elem = new class_d4941e5e();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace stealth_meter_display/stealth_meter_display
// Params 2, eflags: 0x0
// Checksum 0x40d59cb0, Offset: 0x170
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace stealth_meter_display/stealth_meter_display
// Params 1, eflags: 0x0
// Checksum 0x6221b1b7, Offset: 0x1b0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace stealth_meter_display/stealth_meter_display
// Params 1, eflags: 0x0
// Checksum 0xd7920db2, Offset: 0x1d8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace stealth_meter_display/stealth_meter_display
// Params 2, eflags: 0x0
// Checksum 0xaa5bd378, Offset: 0x200
// Size: 0x28
function set_entnum(player, value) {
    [[ self ]]->set_entnum(player, value);
}

// Namespace stealth_meter_display/stealth_meter_display
// Params 2, eflags: 0x0
// Checksum 0x8e553c9a, Offset: 0x230
// Size: 0x28
function function_4d628707(player, value) {
    [[ self ]]->function_4d628707(player, value);
}

// Namespace stealth_meter_display/stealth_meter_display
// Params 2, eflags: 0x0
// Checksum 0x48c01a0a, Offset: 0x260
// Size: 0x28
function function_7425637b(player, value) {
    [[ self ]]->function_7425637b(player, value);
}

// Namespace stealth_meter_display/stealth_meter_display
// Params 2, eflags: 0x0
// Checksum 0x76137a8, Offset: 0x290
// Size: 0x28
function function_18066380(player, value) {
    [[ self ]]->function_18066380(player, value);
}

// Namespace stealth_meter_display/stealth_meter_display
// Params 2, eflags: 0x0
// Checksum 0x7940e455, Offset: 0x2c0
// Size: 0x28
function function_fae2a569(player, value) {
    [[ self ]]->function_fae2a569(player, value);
}

