// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace zm_build_progress;

// Namespace zm_build_progress
// Method(s) 7 Total 14
class czm_build_progress : cluielem {

    // Namespace czm_build_progress/zm_build_progress
    // Params 1, eflags: 0x2 linked
    // Checksum 0x3eb10922, Offset: 0x438
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace czm_build_progress/zm_build_progress
    // Params 0, eflags: 0x2 linked
    // Checksum 0xb732f866, Offset: 0x3c0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("zm_build_progress");
    }

    // Namespace czm_build_progress/zm_build_progress
    // Params 1, eflags: 0x2 linked
    // Checksum 0xf50dc720, Offset: 0x368
    // Size: 0x4c
    function setup_clientfields(progresscallback) {
        cluielem::setup_clientfields("zm_build_progress");
        cluielem::add_clientfield("progress", 1, 6, "float", progresscallback);
    }

    // Namespace czm_build_progress/zm_build_progress
    // Params 2, eflags: 0x2 linked
    // Checksum 0xc2527994, Offset: 0x468
    // Size: 0x30
    function set_progress(localclientnum, value) {
        set_data(localclientnum, "progress", value);
    }

    // Namespace czm_build_progress/zm_build_progress
    // Params 1, eflags: 0x2 linked
    // Checksum 0x6130205e, Offset: 0x3e8
    // Size: 0x48
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "progress", 0);
    }

}

// Namespace zm_build_progress/zm_build_progress
// Params 1, eflags: 0x2 linked
// Checksum 0xd2173cf8, Offset: 0xe0
// Size: 0x176
function register(progresscallback) {
    elem = new czm_build_progress();
    [[ elem ]]->setup_clientfields(progresscallback);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"zm_build_progress"])) {
        level.var_ae746e8f[#"zm_build_progress"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"zm_build_progress"])) {
        level.var_ae746e8f[#"zm_build_progress"] = [];
    } else if (!isarray(level.var_ae746e8f[#"zm_build_progress"])) {
        level.var_ae746e8f[#"zm_build_progress"] = array(level.var_ae746e8f[#"zm_build_progress"]);
    }
    level.var_ae746e8f[#"zm_build_progress"][level.var_ae746e8f[#"zm_build_progress"].size] = elem;
}

// Namespace zm_build_progress/zm_build_progress
// Params 0, eflags: 0x0
// Checksum 0xa379aca6, Offset: 0x260
// Size: 0x34
function register_clientside() {
    elem = new czm_build_progress();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace zm_build_progress/zm_build_progress
// Params 1, eflags: 0x0
// Checksum 0xab7c1abf, Offset: 0x2a0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace zm_build_progress/zm_build_progress
// Params 1, eflags: 0x0
// Checksum 0x2c2bb37, Offset: 0x2c8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_build_progress/zm_build_progress
// Params 1, eflags: 0x0
// Checksum 0x71b19878, Offset: 0x2f0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace zm_build_progress/zm_build_progress
// Params 2, eflags: 0x0
// Checksum 0xb5792cef, Offset: 0x318
// Size: 0x28
function set_progress(localclientnum, value) {
    [[ self ]]->set_progress(localclientnum, value);
}

