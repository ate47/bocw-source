// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace debug_center_screen;

// Namespace debug_center_screen
// Method(s) 6 Total 13
class cdebug_center_screen : cluielem {

    // Namespace cdebug_center_screen/debug_center_screen
    // Params 1, eflags: 0x2 linked
    // Checksum 0x6bbe1073, Offset: 0x3a0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cdebug_center_screen/debug_center_screen
    // Params 0, eflags: 0x2 linked
    // Checksum 0x1c8ceaa7, Offset: 0x348
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("debug_center_screen");
    }

    // Namespace cdebug_center_screen/debug_center_screen
    // Params 0, eflags: 0x2 linked
    // Checksum 0xd6f94c2a, Offset: 0x320
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("debug_center_screen");
    }

    // Namespace cdebug_center_screen/debug_center_screen
    // Params 1, eflags: 0x2 linked
    // Checksum 0x1d2b076a, Offset: 0x370
    // Size: 0x24
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
    }

}

// Namespace debug_center_screen/debug_center_screen
// Params 0, eflags: 0x2 linked
// Checksum 0xdb21a0ae, Offset: 0xd0
// Size: 0x16e
function register() {
    elem = new cdebug_center_screen();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"debug_center_screen"])) {
        level.var_ae746e8f[#"debug_center_screen"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"debug_center_screen"])) {
        level.var_ae746e8f[#"debug_center_screen"] = [];
    } else if (!isarray(level.var_ae746e8f[#"debug_center_screen"])) {
        level.var_ae746e8f[#"debug_center_screen"] = array(level.var_ae746e8f[#"debug_center_screen"]);
    }
    level.var_ae746e8f[#"debug_center_screen"][level.var_ae746e8f[#"debug_center_screen"].size] = elem;
}

// Namespace debug_center_screen/debug_center_screen
// Params 0, eflags: 0x0
// Checksum 0xafd1561a, Offset: 0x248
// Size: 0x34
function register_clientside() {
    elem = new cdebug_center_screen();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace debug_center_screen/debug_center_screen
// Params 1, eflags: 0x0
// Checksum 0xdc8037a3, Offset: 0x288
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace debug_center_screen/debug_center_screen
// Params 1, eflags: 0x0
// Checksum 0x9a28cce, Offset: 0x2b0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace debug_center_screen/debug_center_screen
// Params 1, eflags: 0x0
// Checksum 0x9ac1cc48, Offset: 0x2d8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

