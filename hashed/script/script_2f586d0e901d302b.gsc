// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace mobile_armory_loadout;

// Namespace mobile_armory_loadout
// Method(s) 6 Total 13
class class_8019ebdc : cluielem {

    // Namespace namespace_8019ebdc/mobile_armory_loadout
    // Params 1, eflags: 0x0
    // Checksum 0xe9672f07, Offset: 0x3a0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_8019ebdc/mobile_armory_loadout
    // Params 0, eflags: 0x0
    // Checksum 0x343720c7, Offset: 0x348
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("mobile_armory_loadout");
    }

    // Namespace namespace_8019ebdc/mobile_armory_loadout
    // Params 0, eflags: 0x0
    // Checksum 0xa460a7ea, Offset: 0x320
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("mobile_armory_loadout");
    }

    // Namespace namespace_8019ebdc/mobile_armory_loadout
    // Params 1, eflags: 0x0
    // Checksum 0xbb37dd6e, Offset: 0x370
    // Size: 0x24
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
    }

}

// Namespace mobile_armory_loadout/mobile_armory_loadout
// Params 0, eflags: 0x0
// Checksum 0xd22ce38c, Offset: 0xd0
// Size: 0x16e
function register() {
    elem = new class_8019ebdc();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"mobile_armory_loadout"])) {
        level.var_ae746e8f[#"mobile_armory_loadout"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"mobile_armory_loadout"])) {
        level.var_ae746e8f[#"mobile_armory_loadout"] = [];
    } else if (!isarray(level.var_ae746e8f[#"mobile_armory_loadout"])) {
        level.var_ae746e8f[#"mobile_armory_loadout"] = array(level.var_ae746e8f[#"mobile_armory_loadout"]);
    }
    level.var_ae746e8f[#"mobile_armory_loadout"][level.var_ae746e8f[#"mobile_armory_loadout"].size] = elem;
}

// Namespace mobile_armory_loadout/mobile_armory_loadout
// Params 0, eflags: 0x0
// Checksum 0x5723437d, Offset: 0x248
// Size: 0x34
function register_clientside() {
    elem = new class_8019ebdc();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace mobile_armory_loadout/mobile_armory_loadout
// Params 1, eflags: 0x0
// Checksum 0xb035c16b, Offset: 0x288
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace mobile_armory_loadout/mobile_armory_loadout
// Params 1, eflags: 0x0
// Checksum 0x8a5d773e, Offset: 0x2b0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace mobile_armory_loadout/mobile_armory_loadout
// Params 1, eflags: 0x0
// Checksum 0xeaa27b4e, Offset: 0x2d8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

