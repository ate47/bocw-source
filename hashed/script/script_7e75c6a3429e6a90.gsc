// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace sr_weapon_upgrade_menu;

// Namespace sr_weapon_upgrade_menu
// Method(s) 7 Total 14
class class_ec90ce81 : cluielem {

    // Namespace namespace_ec90ce81/sr_weapon_upgrade_menu
    // Params 1, eflags: 0x0
    // Checksum 0xf3c11441, Offset: 0x438
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_ec90ce81/sr_weapon_upgrade_menu
    // Params 0, eflags: 0x0
    // Checksum 0x52775501, Offset: 0x3c8
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("sr_weapon_upgrade_menu");
    }

    // Namespace namespace_ec90ce81/sr_weapon_upgrade_menu
    // Params 2, eflags: 0x0
    // Checksum 0xa6e1c4b4, Offset: 0x468
    // Size: 0x30
    function function_83d182e9(localclientnum, value) {
        set_data(localclientnum, "cannotAmmoMod", value);
    }

    // Namespace namespace_ec90ce81/sr_weapon_upgrade_menu
    // Params 1, eflags: 0x0
    // Checksum 0xd2cb957e, Offset: 0x370
    // Size: 0x4c
    function setup_clientfields(var_52c93aa0) {
        cluielem::setup_clientfields("sr_weapon_upgrade_menu");
        cluielem::add_clientfield("cannotAmmoMod", 16000, 1, "int", var_52c93aa0);
    }

    // Namespace namespace_ec90ce81/sr_weapon_upgrade_menu
    // Params 1, eflags: 0x0
    // Checksum 0xaea28eb7, Offset: 0x3f0
    // Size: 0x40
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "cannotAmmoMod", 0);
    }

}

// Namespace sr_weapon_upgrade_menu/sr_weapon_upgrade_menu
// Params 1, eflags: 0x0
// Checksum 0x9d55e2f9, Offset: 0xe8
// Size: 0x176
function register(var_52c93aa0) {
    elem = new class_ec90ce81();
    [[ elem ]]->setup_clientfields(var_52c93aa0);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"sr_weapon_upgrade_menu"])) {
        level.var_ae746e8f[#"sr_weapon_upgrade_menu"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"sr_weapon_upgrade_menu"])) {
        level.var_ae746e8f[#"sr_weapon_upgrade_menu"] = [];
    } else if (!isarray(level.var_ae746e8f[#"sr_weapon_upgrade_menu"])) {
        level.var_ae746e8f[#"sr_weapon_upgrade_menu"] = array(level.var_ae746e8f[#"sr_weapon_upgrade_menu"]);
    }
    level.var_ae746e8f[#"sr_weapon_upgrade_menu"][level.var_ae746e8f[#"sr_weapon_upgrade_menu"].size] = elem;
}

// Namespace sr_weapon_upgrade_menu/sr_weapon_upgrade_menu
// Params 0, eflags: 0x0
// Checksum 0xd2d46173, Offset: 0x268
// Size: 0x34
function register_clientside() {
    elem = new class_ec90ce81();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace sr_weapon_upgrade_menu/sr_weapon_upgrade_menu
// Params 1, eflags: 0x0
// Checksum 0xab7c1abf, Offset: 0x2a8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace sr_weapon_upgrade_menu/sr_weapon_upgrade_menu
// Params 1, eflags: 0x0
// Checksum 0x2c2bb37, Offset: 0x2d0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace sr_weapon_upgrade_menu/sr_weapon_upgrade_menu
// Params 1, eflags: 0x0
// Checksum 0x71b19878, Offset: 0x2f8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace sr_weapon_upgrade_menu/sr_weapon_upgrade_menu
// Params 2, eflags: 0x0
// Checksum 0xa6bba6a6, Offset: 0x320
// Size: 0x28
function function_83d182e9(localclientnum, value) {
    [[ self ]]->function_83d182e9(localclientnum, value);
}

