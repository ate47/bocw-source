// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace sr_orda_health_bar;

// Namespace sr_orda_health_bar
// Method(s) 7 Total 14
class class_90c2e4ec : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_90c2e4ec/sr_orda_health_bar
    // Params 2, eflags: 0x2 linked
    // Checksum 0xfe96c772, Offset: 0x2c8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_90c2e4ec/sr_orda_health_bar
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2b55242d, Offset: 0x310
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_90c2e4ec/sr_orda_health_bar
    // Params 0, eflags: 0x2 linked
    // Checksum 0x2023c517, Offset: 0x250
    // Size: 0x6c
    function setup_clientfields() {
        cluielem::setup_clientfields("sr_orda_health_bar");
        cluielem::add_clientfield("health", 4000, 7, "float");
        cluielem::add_clientfield("is_beast", 4000, 1, "int");
    }

    // Namespace namespace_90c2e4ec/sr_orda_health_bar
    // Params 2, eflags: 0x2 linked
    // Checksum 0xb230ff97, Offset: 0x390
    // Size: 0x44
    function function_dff51e54(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "is_beast", value);
    }

    // Namespace namespace_90c2e4ec/sr_orda_health_bar
    // Params 2, eflags: 0x2 linked
    // Checksum 0x6ce0eb4c, Offset: 0x340
    // Size: 0x44
    function set_health(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "health", value);
    }

}

// Namespace sr_orda_health_bar/sr_orda_health_bar
// Params 0, eflags: 0x2 linked
// Checksum 0xc6b82780, Offset: 0x100
// Size: 0x34
function register() {
    elem = new class_90c2e4ec();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace sr_orda_health_bar/sr_orda_health_bar
// Params 2, eflags: 0x2 linked
// Checksum 0x22b7d0a0, Offset: 0x140
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace sr_orda_health_bar/sr_orda_health_bar
// Params 1, eflags: 0x2 linked
// Checksum 0xbeec1ac2, Offset: 0x180
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace sr_orda_health_bar/sr_orda_health_bar
// Params 1, eflags: 0x2 linked
// Checksum 0xd0ca6291, Offset: 0x1a8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace sr_orda_health_bar/sr_orda_health_bar
// Params 2, eflags: 0x2 linked
// Checksum 0x8b533391, Offset: 0x1d0
// Size: 0x28
function set_health(player, value) {
    [[ self ]]->set_health(player, value);
}

// Namespace sr_orda_health_bar/sr_orda_health_bar
// Params 2, eflags: 0x2 linked
// Checksum 0xb6f369c1, Offset: 0x200
// Size: 0x28
function function_dff51e54(player, value) {
    [[ self ]]->function_dff51e54(player, value);
}

