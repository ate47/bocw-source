// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_control_point_hud;

// Namespace zm_control_point_hud
// Method(s) 11 Total 18
class class_a0b518ca : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 2, eflags: 0x0
    // Checksum 0xb8ef73ca, Offset: 0x460
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 2, eflags: 0x0
    // Checksum 0x832e6da3, Offset: 0x668
    // Size: 0x44
    function function_338d48a0(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "hasDamage", value);
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 1, eflags: 0x0
    // Checksum 0x2d75e372, Offset: 0x4a8
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 2, eflags: 0x0
    // Checksum 0xe01c8bb1, Offset: 0x4d8
    // Size: 0x44
    function function_62264c81(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "chargePct", value);
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 2, eflags: 0x0
    // Checksum 0x456dad00, Offset: 0x618
    // Size: 0x44
    function function_751f7270(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "hasCharge", value);
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 0, eflags: 0x0
    // Checksum 0x6f814eaa, Offset: 0x348
    // Size: 0x10c
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_control_point_hud");
        cluielem::add_clientfield("chargePct", 8000, 7, "float");
        cluielem::add_clientfield("damagePct", 8000, 7, "float");
        cluielem::add_clientfield("ordaHealthPct", 16000, 7, "float");
        cluielem::add_clientfield("hasOrda", 16000, 1, "int");
        cluielem::add_clientfield("hasCharge", 16000, 1, "int");
        cluielem::add_clientfield("hasDamage", 16000, 1, "int");
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 2, eflags: 0x0
    // Checksum 0xd2b03b1f, Offset: 0x528
    // Size: 0x44
    function function_a04ff29a(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "damagePct", value);
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 2, eflags: 0x0
    // Checksum 0x52f11e48, Offset: 0x578
    // Size: 0x44
    function function_a59aefa6(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "ordaHealthPct", value);
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 2, eflags: 0x0
    // Checksum 0xe7b9ea6a, Offset: 0x5c8
    // Size: 0x44
    function function_a95c34f3(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "hasOrda", value);
    }

}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 0, eflags: 0x0
// Checksum 0xc0b971f3, Offset: 0x138
// Size: 0x34
function register() {
    elem = new class_a0b518ca();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 2, eflags: 0x0
// Checksum 0x3a6790e3, Offset: 0x178
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 1, eflags: 0x0
// Checksum 0x2ad0b106, Offset: 0x1b8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 1, eflags: 0x0
// Checksum 0x1e0592ea, Offset: 0x1e0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 2, eflags: 0x0
// Checksum 0x49892a03, Offset: 0x208
// Size: 0x28
function function_62264c81(player, value) {
    [[ self ]]->function_62264c81(player, value);
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 2, eflags: 0x0
// Checksum 0xb40559a1, Offset: 0x238
// Size: 0x28
function function_a04ff29a(player, value) {
    [[ self ]]->function_a04ff29a(player, value);
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 2, eflags: 0x0
// Checksum 0x240fb947, Offset: 0x268
// Size: 0x28
function function_a59aefa6(player, value) {
    [[ self ]]->function_a59aefa6(player, value);
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 2, eflags: 0x0
// Checksum 0x418ac2f9, Offset: 0x298
// Size: 0x28
function function_a95c34f3(player, value) {
    [[ self ]]->function_a95c34f3(player, value);
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 2, eflags: 0x0
// Checksum 0xdd69489, Offset: 0x2c8
// Size: 0x28
function function_751f7270(player, value) {
    [[ self ]]->function_751f7270(player, value);
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 2, eflags: 0x0
// Checksum 0xd973f8d9, Offset: 0x2f8
// Size: 0x28
function function_338d48a0(player, value) {
    [[ self ]]->function_338d48a0(player, value);
}

