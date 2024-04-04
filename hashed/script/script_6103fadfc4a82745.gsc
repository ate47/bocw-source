// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace scavenger_icon;

// Namespace scavenger_icon
// Method(s) 9 Total 16
class cscavenger_icon : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cscavenger_icon/scavenger_icon
    // Params 1, eflags: 0x2 linked
    // Checksum 0xfc4ca4d, Offset: 0x438
    // Size: 0x3c
    function function_65b281a(player) {
        player clientfield::function_bb878fc3(var_d5213cbb, var_bf9c8c95, "armorPlatePulse");
    }

    // Namespace cscavenger_icon/scavenger_icon
    // Params 2, eflags: 0x2 linked
    // Checksum 0x31716144, Offset: 0x378
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cscavenger_icon/scavenger_icon
    // Params 1, eflags: 0x2 linked
    // Checksum 0xf47d9d44, Offset: 0x4c8
    // Size: 0x3c
    function function_417df30c(player) {
        player clientfield::function_bb878fc3(var_d5213cbb, var_bf9c8c95, "rareScrapPulse");
    }

    // Namespace cscavenger_icon/scavenger_icon
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2ab76318, Offset: 0x480
    // Size: 0x3c
    function function_47e82a09(player) {
        player clientfield::function_bb878fc3(var_d5213cbb, var_bf9c8c95, "scrapPulse");
    }

    // Namespace cscavenger_icon/scavenger_icon
    // Params 1, eflags: 0x2 linked
    // Checksum 0x4161a525, Offset: 0x3c0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cscavenger_icon/scavenger_icon
    // Params 0, eflags: 0x2 linked
    // Checksum 0xb2c40628, Offset: 0x2b0
    // Size: 0xbc
    function setup_clientfields() {
        cluielem::setup_clientfields("scavenger_icon");
        cluielem::add_clientfield("ammoPulse", 1, 1, "counter");
        cluielem::add_clientfield("armorPlatePulse", 1, 1, "counter");
        cluielem::add_clientfield("scrapPulse", 1, 1, "counter");
        cluielem::add_clientfield("rareScrapPulse", 4000, 1, "counter");
    }

    // Namespace cscavenger_icon/scavenger_icon
    // Params 1, eflags: 0x2 linked
    // Checksum 0x71ffc07a, Offset: 0x3f0
    // Size: 0x3c
    function function_e4e9c303(player) {
        player clientfield::function_bb878fc3(var_d5213cbb, var_bf9c8c95, "ammoPulse");
    }

}

// Namespace scavenger_icon/scavenger_icon
// Params 0, eflags: 0x2 linked
// Checksum 0xc6b58ed4, Offset: 0x120
// Size: 0x34
function register() {
    elem = new cscavenger_icon();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace scavenger_icon/scavenger_icon
// Params 2, eflags: 0x2 linked
// Checksum 0xa4df70d2, Offset: 0x160
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace scavenger_icon/scavenger_icon
// Params 1, eflags: 0x0
// Checksum 0x2fdf789, Offset: 0x1a0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace scavenger_icon/scavenger_icon
// Params 1, eflags: 0x2 linked
// Checksum 0xe6010a6a, Offset: 0x1c8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace scavenger_icon/scavenger_icon
// Params 1, eflags: 0x2 linked
// Checksum 0x1eda2909, Offset: 0x1f0
// Size: 0x1c
function function_e4e9c303(player) {
    [[ self ]]->function_e4e9c303(player);
}

// Namespace scavenger_icon/scavenger_icon
// Params 1, eflags: 0x2 linked
// Checksum 0x6d63a85d, Offset: 0x218
// Size: 0x1c
function function_65b281a(player) {
    [[ self ]]->function_65b281a(player);
}

// Namespace scavenger_icon/scavenger_icon
// Params 1, eflags: 0x2 linked
// Checksum 0x6372563f, Offset: 0x240
// Size: 0x1c
function function_47e82a09(player) {
    [[ self ]]->function_47e82a09(player);
}

// Namespace scavenger_icon/scavenger_icon
// Params 1, eflags: 0x2 linked
// Checksum 0x35ff7efd, Offset: 0x268
// Size: 0x1c
function function_417df30c(player) {
    [[ self ]]->function_417df30c(player);
}

