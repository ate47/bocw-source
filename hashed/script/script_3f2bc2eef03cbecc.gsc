// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace sr_armor_menu;

// Namespace sr_armor_menu
// Method(s) 6 Total 13
class class_8ebbf51b : cluielem {

    // Namespace namespace_8ebbf51b/sr_armor_menu
    // Params 1, eflags: 0x0
    // Checksum 0xe9672f07, Offset: 0x398
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_8ebbf51b/sr_armor_menu
    // Params 0, eflags: 0x0
    // Checksum 0x343720c7, Offset: 0x340
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("sr_armor_menu");
    }

    // Namespace namespace_8ebbf51b/sr_armor_menu
    // Params 0, eflags: 0x0
    // Checksum 0xa460a7ea, Offset: 0x318
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("sr_armor_menu");
    }

    // Namespace namespace_8ebbf51b/sr_armor_menu
    // Params 1, eflags: 0x0
    // Checksum 0xbb37dd6e, Offset: 0x368
    // Size: 0x24
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
    }

}

// Namespace sr_armor_menu/sr_armor_menu
// Params 0, eflags: 0x0
// Checksum 0xdfc0b962, Offset: 0xc8
// Size: 0x16e
function register() {
    elem = new class_8ebbf51b();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"sr_armor_menu"])) {
        level.var_ae746e8f[#"sr_armor_menu"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"sr_armor_menu"])) {
        level.var_ae746e8f[#"sr_armor_menu"] = [];
    } else if (!isarray(level.var_ae746e8f[#"sr_armor_menu"])) {
        level.var_ae746e8f[#"sr_armor_menu"] = array(level.var_ae746e8f[#"sr_armor_menu"]);
    }
    level.var_ae746e8f[#"sr_armor_menu"][level.var_ae746e8f[#"sr_armor_menu"].size] = elem;
}

// Namespace sr_armor_menu/sr_armor_menu
// Params 0, eflags: 0x0
// Checksum 0xe1663481, Offset: 0x240
// Size: 0x34
function register_clientside() {
    elem = new class_8ebbf51b();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace sr_armor_menu/sr_armor_menu
// Params 1, eflags: 0x0
// Checksum 0xb035c16b, Offset: 0x280
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace sr_armor_menu/sr_armor_menu
// Params 1, eflags: 0x0
// Checksum 0x8a5d773e, Offset: 0x2a8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace sr_armor_menu/sr_armor_menu
// Params 1, eflags: 0x0
// Checksum 0xeaa27b4e, Offset: 0x2d0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

