// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace success_screen;

// Namespace success_screen
// Method(s) 6 Total 13
class csuccess_screen : cluielem {

    // Namespace csuccess_screen/success_screen
    // Params 1, eflags: 0x0
    // Checksum 0x6f7d0d69, Offset: 0x398
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace csuccess_screen/success_screen
    // Params 0, eflags: 0x0
    // Checksum 0xf9c8f613, Offset: 0x340
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("success_screen");
    }

    // Namespace csuccess_screen/success_screen
    // Params 0, eflags: 0x0
    // Checksum 0x23de0498, Offset: 0x318
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("success_screen");
    }

    // Namespace csuccess_screen/success_screen
    // Params 1, eflags: 0x0
    // Checksum 0xbf81c59, Offset: 0x368
    // Size: 0x24
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
    }

}

// Namespace success_screen/success_screen
// Params 0, eflags: 0x0
// Checksum 0x3ed13662, Offset: 0xc8
// Size: 0x16e
function register() {
    elem = new csuccess_screen();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"success_screen"])) {
        level.var_ae746e8f[#"success_screen"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"success_screen"])) {
        level.var_ae746e8f[#"success_screen"] = [];
    } else if (!isarray(level.var_ae746e8f[#"success_screen"])) {
        level.var_ae746e8f[#"success_screen"] = array(level.var_ae746e8f[#"success_screen"]);
    }
    level.var_ae746e8f[#"success_screen"][level.var_ae746e8f[#"success_screen"].size] = elem;
}

// Namespace success_screen/success_screen
// Params 0, eflags: 0x0
// Checksum 0x67c2d770, Offset: 0x240
// Size: 0x34
function register_clientside() {
    elem = new csuccess_screen();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace success_screen/success_screen
// Params 1, eflags: 0x0
// Checksum 0x4c92b014, Offset: 0x280
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace success_screen/success_screen
// Params 1, eflags: 0x0
// Checksum 0x9de286f, Offset: 0x2a8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace success_screen/success_screen
// Params 1, eflags: 0x0
// Checksum 0xc32f1927, Offset: 0x2d0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

