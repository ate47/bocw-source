// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace sr_beacon_menu;

// Namespace sr_beacon_menu
// Method(s) 7 Total 14
class csr_beacon_menu : cluielem {

    // Namespace csr_beacon_menu/sr_beacon_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0x22ccd385, Offset: 0x468
    // Size: 0x30
    function function_666779d(localclientnum, value) {
        set_data(localclientnum, "respond_enabled", value);
    }

    // Namespace csr_beacon_menu/sr_beacon_menu
    // Params 1, eflags: 0x2 linked
    // Checksum 0x417f4cce, Offset: 0x438
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace csr_beacon_menu/sr_beacon_menu
    // Params 0, eflags: 0x2 linked
    // Checksum 0x148641e6, Offset: 0x3c8
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("sr_beacon_menu");
    }

    // Namespace csr_beacon_menu/sr_beacon_menu
    // Params 1, eflags: 0x2 linked
    // Checksum 0x89f855af, Offset: 0x370
    // Size: 0x4c
    function setup_clientfields(var_d37c6da9) {
        cluielem::setup_clientfields("sr_beacon_menu");
        cluielem::add_clientfield("respond_enabled", 4000, 2, "int", var_d37c6da9);
    }

    // Namespace csr_beacon_menu/sr_beacon_menu
    // Params 1, eflags: 0x2 linked
    // Checksum 0xd2580397, Offset: 0x3f0
    // Size: 0x40
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "respond_enabled", 0);
    }

}

// Namespace sr_beacon_menu/sr_beacon_menu
// Params 1, eflags: 0x2 linked
// Checksum 0x82695396, Offset: 0xe8
// Size: 0x176
function register(var_d37c6da9) {
    elem = new csr_beacon_menu();
    [[ elem ]]->setup_clientfields(var_d37c6da9);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"sr_beacon_menu"])) {
        level.var_ae746e8f[#"sr_beacon_menu"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"sr_beacon_menu"])) {
        level.var_ae746e8f[#"sr_beacon_menu"] = [];
    } else if (!isarray(level.var_ae746e8f[#"sr_beacon_menu"])) {
        level.var_ae746e8f[#"sr_beacon_menu"] = array(level.var_ae746e8f[#"sr_beacon_menu"]);
    }
    level.var_ae746e8f[#"sr_beacon_menu"][level.var_ae746e8f[#"sr_beacon_menu"].size] = elem;
}

// Namespace sr_beacon_menu/sr_beacon_menu
// Params 0, eflags: 0x0
// Checksum 0x1c316383, Offset: 0x268
// Size: 0x34
function register_clientside() {
    elem = new csr_beacon_menu();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace sr_beacon_menu/sr_beacon_menu
// Params 1, eflags: 0x0
// Checksum 0xd796c27f, Offset: 0x2a8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace sr_beacon_menu/sr_beacon_menu
// Params 1, eflags: 0x0
// Checksum 0xcc475b03, Offset: 0x2d0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace sr_beacon_menu/sr_beacon_menu
// Params 1, eflags: 0x0
// Checksum 0x99547063, Offset: 0x2f8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace sr_beacon_menu/sr_beacon_menu
// Params 2, eflags: 0x0
// Checksum 0x2143b03e, Offset: 0x320
// Size: 0x28
function function_666779d(localclientnum, value) {
    [[ self ]]->function_666779d(localclientnum, value);
}

