// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace sr_beacon_menu;

// Namespace sr_beacon_menu
// Method(s) 6 Total 13
class csr_beacon_menu : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace csr_beacon_menu/sr_beacon_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0x610bbcc, Offset: 0x2d8
    // Size: 0x44
    function function_666779d(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "respond_enabled", value);
    }

    // Namespace csr_beacon_menu/sr_beacon_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0xd1acef65, Offset: 0x260
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace csr_beacon_menu/sr_beacon_menu
    // Params 1, eflags: 0x2 linked
    // Checksum 0x5770f9dd, Offset: 0x2a8
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace csr_beacon_menu/sr_beacon_menu
    // Params 0, eflags: 0x2 linked
    // Checksum 0x1172350a, Offset: 0x210
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("sr_beacon_menu");
        cluielem::add_clientfield("respond_enabled", 4000, 2, "int");
    }

}

// Namespace sr_beacon_menu/sr_beacon_menu
// Params 0, eflags: 0x2 linked
// Checksum 0x4e194b9b, Offset: 0xf0
// Size: 0x34
function register() {
    elem = new csr_beacon_menu();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace sr_beacon_menu/sr_beacon_menu
// Params 2, eflags: 0x2 linked
// Checksum 0x22b7d0a0, Offset: 0x130
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace sr_beacon_menu/sr_beacon_menu
// Params 1, eflags: 0x2 linked
// Checksum 0xbeec1ac2, Offset: 0x170
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace sr_beacon_menu/sr_beacon_menu
// Params 1, eflags: 0x2 linked
// Checksum 0xd0ca6291, Offset: 0x198
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace sr_beacon_menu/sr_beacon_menu
// Params 2, eflags: 0x2 linked
// Checksum 0x3b11785e, Offset: 0x1c0
// Size: 0x28
function function_666779d(player, value) {
    [[ self ]]->function_666779d(player, value);
}

