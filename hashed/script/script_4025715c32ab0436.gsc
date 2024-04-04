// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace zm_silver_hud;

// Namespace zm_silver_hud
// Method(s) 8 Total 15
class class_5813c56a : cluielem {

    // Namespace namespace_5813c56a/zm_silver_hud
    // Params 1, eflags: 0x0
    // Checksum 0xc19fb2c6, Offset: 0x4c8
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_5813c56a/zm_silver_hud
    // Params 2, eflags: 0x0
    // Checksum 0xfb11c6d6, Offset: 0x530
    // Size: 0x30
    function function_39ee9107(localclientnum, value) {
        set_data(localclientnum, "showPhoto", value);
    }

    // Namespace namespace_5813c56a/zm_silver_hud
    // Params 0, eflags: 0x0
    // Checksum 0x16754ae2, Offset: 0x438
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("zm_silver_hud");
    }

    // Namespace namespace_5813c56a/zm_silver_hud
    // Params 2, eflags: 0x0
    // Checksum 0x122fcc05, Offset: 0x3b0
    // Size: 0x7c
    function setup_clientfields(var_a7dcee14, var_5cdd6232) {
        cluielem::setup_clientfields("zm_silver_hud");
        cluielem::add_clientfield("aetherscopeStatus", 1, 2, "int", var_a7dcee14);
        cluielem::add_clientfield("showPhoto", 1, 1, "int", var_5cdd6232);
    }

    // Namespace namespace_5813c56a/zm_silver_hud
    // Params 2, eflags: 0x0
    // Checksum 0x604f0b5f, Offset: 0x4f8
    // Size: 0x30
    function function_9efecfd1(localclientnum, value) {
        set_data(localclientnum, "aetherscopeStatus", value);
    }

    // Namespace namespace_5813c56a/zm_silver_hud
    // Params 1, eflags: 0x0
    // Checksum 0x7752b8e3, Offset: 0x460
    // Size: 0x5c
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "aetherscopeStatus", 0);
        set_data(localclientnum, "showPhoto", 0);
    }

}

// Namespace zm_silver_hud/zm_silver_hud
// Params 2, eflags: 0x0
// Checksum 0x7f963e7a, Offset: 0xf0
// Size: 0x17e
function register(var_a7dcee14, var_5cdd6232) {
    elem = new class_5813c56a();
    [[ elem ]]->setup_clientfields(var_a7dcee14, var_5cdd6232);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"zm_silver_hud"])) {
        level.var_ae746e8f[#"zm_silver_hud"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"zm_silver_hud"])) {
        level.var_ae746e8f[#"zm_silver_hud"] = [];
    } else if (!isarray(level.var_ae746e8f[#"zm_silver_hud"])) {
        level.var_ae746e8f[#"zm_silver_hud"] = array(level.var_ae746e8f[#"zm_silver_hud"]);
    }
    level.var_ae746e8f[#"zm_silver_hud"][level.var_ae746e8f[#"zm_silver_hud"].size] = elem;
}

// Namespace zm_silver_hud/zm_silver_hud
// Params 0, eflags: 0x0
// Checksum 0x87a53e01, Offset: 0x278
// Size: 0x34
function register_clientside() {
    elem = new class_5813c56a();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace zm_silver_hud/zm_silver_hud
// Params 1, eflags: 0x0
// Checksum 0x8e37ed85, Offset: 0x2b8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace zm_silver_hud/zm_silver_hud
// Params 1, eflags: 0x0
// Checksum 0x30e117c8, Offset: 0x2e0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_silver_hud/zm_silver_hud
// Params 1, eflags: 0x0
// Checksum 0xe5a81192, Offset: 0x308
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace zm_silver_hud/zm_silver_hud
// Params 2, eflags: 0x0
// Checksum 0x6d0e0b80, Offset: 0x330
// Size: 0x28
function function_9efecfd1(localclientnum, value) {
    [[ self ]]->function_9efecfd1(localclientnum, value);
}

// Namespace zm_silver_hud/zm_silver_hud
// Params 2, eflags: 0x0
// Checksum 0x3fe969f9, Offset: 0x360
// Size: 0x28
function function_39ee9107(localclientnum, value) {
    [[ self ]]->function_39ee9107(localclientnum, value);
}

