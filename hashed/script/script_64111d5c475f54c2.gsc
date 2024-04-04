// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_silver_hud;

// Namespace zm_silver_hud
// Method(s) 7 Total 14
class class_5813c56a : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_5813c56a/zm_silver_hud
    // Params 2, eflags: 0x0
    // Checksum 0xd2759495, Offset: 0x2c0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_5813c56a/zm_silver_hud
    // Params 2, eflags: 0x0
    // Checksum 0x79f1778c, Offset: 0x388
    // Size: 0x44
    function function_39ee9107(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "showPhoto", value);
    }

    // Namespace namespace_5813c56a/zm_silver_hud
    // Params 1, eflags: 0x0
    // Checksum 0x187d1183, Offset: 0x308
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_5813c56a/zm_silver_hud
    // Params 0, eflags: 0x0
    // Checksum 0xc04b82c5, Offset: 0x248
    // Size: 0x6c
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_silver_hud");
        cluielem::add_clientfield("aetherscopeStatus", 1, 2, "int", 0);
        cluielem::add_clientfield("showPhoto", 1, 1, "int");
    }

    // Namespace namespace_5813c56a/zm_silver_hud
    // Params 2, eflags: 0x0
    // Checksum 0x82c3e1b5, Offset: 0x338
    // Size: 0x44
    function function_9efecfd1(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "aetherscopeStatus", value);
    }

}

// Namespace zm_silver_hud/zm_silver_hud
// Params 0, eflags: 0x0
// Checksum 0x3cb5189a, Offset: 0xf8
// Size: 0x34
function register() {
    elem = new class_5813c56a();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace zm_silver_hud/zm_silver_hud
// Params 2, eflags: 0x0
// Checksum 0x40d59cb0, Offset: 0x138
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace zm_silver_hud/zm_silver_hud
// Params 1, eflags: 0x0
// Checksum 0x6221b1b7, Offset: 0x178
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_silver_hud/zm_silver_hud
// Params 1, eflags: 0x0
// Checksum 0xd7920db2, Offset: 0x1a0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace zm_silver_hud/zm_silver_hud
// Params 2, eflags: 0x0
// Checksum 0xcdb8b147, Offset: 0x1c8
// Size: 0x28
function function_9efecfd1(player, value) {
    [[ self ]]->function_9efecfd1(player, value);
}

// Namespace zm_silver_hud/zm_silver_hud
// Params 2, eflags: 0x0
// Checksum 0xef7b07c2, Offset: 0x1f8
// Size: 0x28
function function_39ee9107(player, value) {
    [[ self ]]->function_39ee9107(player, value);
}

