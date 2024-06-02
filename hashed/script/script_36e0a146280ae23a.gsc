// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace sr_crafting_table_menu;

// Namespace sr_crafting_table_menu
// Method(s) 7 Total 14
class class_e1dc992f : cluielem {

    // Namespace namespace_e1dc992f/sr_crafting_table_menu
    // Params 1, eflags: 0x0
    // Checksum 0xb54779ee, Offset: 0x418
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_e1dc992f/sr_crafting_table_menu
    // Params 0, eflags: 0x0
    // Checksum 0xbe347342, Offset: 0x3a8
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("sr_crafting_table_menu");
    }

    // Namespace namespace_e1dc992f/sr_crafting_table_menu
    // Params 2, eflags: 0x0
    // Checksum 0x14c5fe4a, Offset: 0x448
    // Size: 0x30
    function function_8ec20f82(localclientnum, value) {
        set_data(localclientnum, "numSelfRevivesPurchased", value);
    }

    // Namespace namespace_e1dc992f/sr_crafting_table_menu
    // Params 1, eflags: 0x0
    // Checksum 0xe3709bbc, Offset: 0x378
    // Size: 0x24
    function setup_clientfields(*var_47a9b6dd) {
        cluielem::setup_clientfields("sr_crafting_table_menu");
    }

    // Namespace namespace_e1dc992f/sr_crafting_table_menu
    // Params 1, eflags: 0x0
    // Checksum 0x5c968632, Offset: 0x3d0
    // Size: 0x40
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "numSelfRevivesPurchased", 0);
    }

}

// Namespace sr_crafting_table_menu/sr_crafting_table_menu
// Params 1, eflags: 0x0
// Checksum 0x83f1a63, Offset: 0xf0
// Size: 0x176
function register(var_47a9b6dd) {
    elem = new class_e1dc992f();
    [[ elem ]]->setup_clientfields(var_47a9b6dd);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"sr_crafting_table_menu"])) {
        level.var_ae746e8f[#"sr_crafting_table_menu"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"sr_crafting_table_menu"])) {
        level.var_ae746e8f[#"sr_crafting_table_menu"] = [];
    } else if (!isarray(level.var_ae746e8f[#"sr_crafting_table_menu"])) {
        level.var_ae746e8f[#"sr_crafting_table_menu"] = array(level.var_ae746e8f[#"sr_crafting_table_menu"]);
    }
    level.var_ae746e8f[#"sr_crafting_table_menu"][level.var_ae746e8f[#"sr_crafting_table_menu"].size] = elem;
}

// Namespace sr_crafting_table_menu/sr_crafting_table_menu
// Params 0, eflags: 0x0
// Checksum 0xf8188c1d, Offset: 0x270
// Size: 0x34
function register_clientside() {
    elem = new class_e1dc992f();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace sr_crafting_table_menu/sr_crafting_table_menu
// Params 1, eflags: 0x0
// Checksum 0x4da297e1, Offset: 0x2b0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace sr_crafting_table_menu/sr_crafting_table_menu
// Params 1, eflags: 0x0
// Checksum 0xc510c8a8, Offset: 0x2d8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace sr_crafting_table_menu/sr_crafting_table_menu
// Params 1, eflags: 0x0
// Checksum 0xe65cac88, Offset: 0x300
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace sr_crafting_table_menu/sr_crafting_table_menu
// Params 2, eflags: 0x0
// Checksum 0x54d020f9, Offset: 0x328
// Size: 0x28
function function_8ec20f82(localclientnum, value) {
    [[ self ]]->function_8ec20f82(localclientnum, value);
}

