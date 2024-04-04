// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_roots_health_bar;

// Namespace zm_roots_health_bar
// Method(s) 8 Total 15
class class_f91fc158 : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_f91fc158/zm_roots_health_bar
    // Params 2, eflags: 0x0
    // Checksum 0x820b6cde, Offset: 0x328
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_f91fc158/zm_roots_health_bar
    // Params 1, eflags: 0x0
    // Checksum 0xf144ff53, Offset: 0x370
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_f91fc158/zm_roots_health_bar
    // Params 2, eflags: 0x0
    // Checksum 0xdacd0248, Offset: 0x440
    // Size: 0x44
    function function_74adcd8a(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "armor_vis", value);
    }

    // Namespace namespace_f91fc158/zm_roots_health_bar
    // Params 0, eflags: 0x0
    // Checksum 0x2f848dfa, Offset: 0x288
    // Size: 0x94
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_roots_health_bar");
        cluielem::add_clientfield("health", 4000, 7, "float");
        cluielem::add_clientfield("armor", 4000, 7, "float");
        cluielem::add_clientfield("armor_vis", 4000, 1, "int");
    }

    // Namespace namespace_f91fc158/zm_roots_health_bar
    // Params 2, eflags: 0x0
    // Checksum 0x7af5c84, Offset: 0x3f0
    // Size: 0x44
    function set_armor(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "armor", value);
    }

    // Namespace namespace_f91fc158/zm_roots_health_bar
    // Params 2, eflags: 0x0
    // Checksum 0x56079d0f, Offset: 0x3a0
    // Size: 0x44
    function set_health(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "health", value);
    }

}

// Namespace zm_roots_health_bar/zm_roots_health_bar
// Params 0, eflags: 0x0
// Checksum 0x1068438f, Offset: 0x108
// Size: 0x34
function register() {
    elem = new class_f91fc158();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace zm_roots_health_bar/zm_roots_health_bar
// Params 2, eflags: 0x0
// Checksum 0xf79ebb64, Offset: 0x148
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace zm_roots_health_bar/zm_roots_health_bar
// Params 1, eflags: 0x0
// Checksum 0x8223fa61, Offset: 0x188
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_roots_health_bar/zm_roots_health_bar
// Params 1, eflags: 0x0
// Checksum 0xc4970c2c, Offset: 0x1b0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace zm_roots_health_bar/zm_roots_health_bar
// Params 2, eflags: 0x0
// Checksum 0xdc0bd1d1, Offset: 0x1d8
// Size: 0x28
function set_health(player, value) {
    [[ self ]]->set_health(player, value);
}

// Namespace zm_roots_health_bar/zm_roots_health_bar
// Params 2, eflags: 0x0
// Checksum 0x9d9eaddf, Offset: 0x208
// Size: 0x28
function set_armor(player, value) {
    [[ self ]]->set_armor(player, value);
}

// Namespace zm_roots_health_bar/zm_roots_health_bar
// Params 2, eflags: 0x0
// Checksum 0x62c777d3, Offset: 0x238
// Size: 0x28
function function_74adcd8a(player, value) {
    [[ self ]]->function_74adcd8a(player, value);
}

