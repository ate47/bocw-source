// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_9ffd16b9;

// Namespace namespace_9ffd16b9
// Method(s) 12 Total 19
class class_35ee22bc : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 2, eflags: 0x0
    // Checksum 0x6905b833, Offset: 0x4d8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 2, eflags: 0x0
    // Checksum 0xcf8f4c31, Offset: 0x640
    // Size: 0x44
    function function_16715e9f(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "guardian_count", value);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 2, eflags: 0x0
    // Checksum 0x321f39c8, Offset: 0x6e0
    // Size: 0x44
    function function_191323ee(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "raps_count", value);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 2, eflags: 0x0
    // Checksum 0x34bceda1, Offset: 0x730
    // Size: 0x44
    function function_461034d2(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "selector_state", value);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 1, eflags: 0x0
    // Checksum 0xfef2f282, Offset: 0x520
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 2, eflags: 0x0
    // Checksum 0xe073d084, Offset: 0x5a0
    // Size: 0x44
    function function_69d88480(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "wasp_count", value);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 0, eflags: 0x0
    // Checksum 0xdbaff5bf, Offset: 0x398
    // Size: 0x134
    function setup_clientfields() {
        cluielem::setup_clientfields("cp_captured_supplydrop");
        cluielem::add_clientfield("micromissile_count", 1, 2, "int");
        cluielem::add_clientfield("wasp_count", 1, 2, "int");
        cluielem::add_clientfield("rcxd_count", 1, 2, "int");
        cluielem::add_clientfield("guardian_count", 1, 2, "int");
        cluielem::add_clientfield("robot_count", 1, 2, "int");
        cluielem::add_clientfield("raps_count", 1, 2, "int");
        cluielem::add_clientfield("selector_state", 1, 3, "int");
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 2, eflags: 0x0
    // Checksum 0xe537351d, Offset: 0x690
    // Size: 0x44
    function function_de1ece9c(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "robot_count", value);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 2, eflags: 0x0
    // Checksum 0x2be8fc09, Offset: 0x5f0
    // Size: 0x44
    function function_ebe4fe7a(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "rcxd_count", value);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 2, eflags: 0x0
    // Checksum 0x3806744, Offset: 0x550
    // Size: 0x44
    function function_fdfe76bb(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "micromissile_count", value);
    }

}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 0, eflags: 0x0
// Checksum 0x72662cec, Offset: 0x158
// Size: 0x34
function register() {
    elem = new class_35ee22bc();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 2, eflags: 0x0
// Checksum 0x22b7d0a0, Offset: 0x198
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 1, eflags: 0x0
// Checksum 0xbeec1ac2, Offset: 0x1d8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 1, eflags: 0x0
// Checksum 0xd0ca6291, Offset: 0x200
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 2, eflags: 0x0
// Checksum 0x6caeed59, Offset: 0x228
// Size: 0x28
function function_fdfe76bb(player, value) {
    [[ self ]]->function_fdfe76bb(player, value);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 2, eflags: 0x0
// Checksum 0x5ba9d309, Offset: 0x258
// Size: 0x28
function function_69d88480(player, value) {
    [[ self ]]->function_69d88480(player, value);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 2, eflags: 0x0
// Checksum 0x6cbf72f3, Offset: 0x288
// Size: 0x28
function function_ebe4fe7a(player, value) {
    [[ self ]]->function_ebe4fe7a(player, value);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 2, eflags: 0x0
// Checksum 0xe834147, Offset: 0x2b8
// Size: 0x28
function function_16715e9f(player, value) {
    [[ self ]]->function_16715e9f(player, value);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 2, eflags: 0x0
// Checksum 0xf8d64904, Offset: 0x2e8
// Size: 0x28
function function_de1ece9c(player, value) {
    [[ self ]]->function_de1ece9c(player, value);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 2, eflags: 0x0
// Checksum 0xae4e78c, Offset: 0x318
// Size: 0x28
function function_191323ee(player, value) {
    [[ self ]]->function_191323ee(player, value);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 2, eflags: 0x0
// Checksum 0xcea5b92a, Offset: 0x348
// Size: 0x28
function function_461034d2(player, value) {
    [[ self ]]->function_461034d2(player, value);
}

