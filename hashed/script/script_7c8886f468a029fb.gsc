// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace sr_orda_health_bar;

// Namespace sr_orda_health_bar
// Method(s) 8 Total 15
class class_90c2e4ec : cluielem {

    // Namespace namespace_90c2e4ec/sr_orda_health_bar
    // Params 1, eflags: 0x2 linked
    // Checksum 0xd9aa372b, Offset: 0x4d8
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_90c2e4ec/sr_orda_health_bar
    // Params 0, eflags: 0x2 linked
    // Checksum 0xad2ba357, Offset: 0x440
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("sr_orda_health_bar");
    }

    // Namespace namespace_90c2e4ec/sr_orda_health_bar
    // Params 2, eflags: 0x2 linked
    // Checksum 0xd72bfc53, Offset: 0x3b8
    // Size: 0x7c
    function setup_clientfields(healthcallback, var_d79cca54) {
        cluielem::setup_clientfields("sr_orda_health_bar");
        cluielem::add_clientfield("health", 4000, 7, "float", healthcallback);
        cluielem::add_clientfield("is_beast", 4000, 1, "int", var_d79cca54);
    }

    // Namespace namespace_90c2e4ec/sr_orda_health_bar
    // Params 2, eflags: 0x2 linked
    // Checksum 0x7ffd40de, Offset: 0x540
    // Size: 0x30
    function function_dff51e54(localclientnum, value) {
        set_data(localclientnum, "is_beast", value);
    }

    // Namespace namespace_90c2e4ec/sr_orda_health_bar
    // Params 2, eflags: 0x2 linked
    // Checksum 0x70d100b4, Offset: 0x508
    // Size: 0x30
    function set_health(localclientnum, value) {
        set_data(localclientnum, "health", value);
    }

    // Namespace namespace_90c2e4ec/sr_orda_health_bar
    // Params 1, eflags: 0x2 linked
    // Checksum 0xd972aba1, Offset: 0x468
    // Size: 0x64
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "health", 0);
        set_data(localclientnum, "is_beast", 0);
    }

}

// Namespace sr_orda_health_bar/sr_orda_health_bar
// Params 2, eflags: 0x2 linked
// Checksum 0x45795d4d, Offset: 0xf8
// Size: 0x17e
function register(healthcallback, var_d79cca54) {
    elem = new class_90c2e4ec();
    [[ elem ]]->setup_clientfields(healthcallback, var_d79cca54);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"sr_orda_health_bar"])) {
        level.var_ae746e8f[#"sr_orda_health_bar"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"sr_orda_health_bar"])) {
        level.var_ae746e8f[#"sr_orda_health_bar"] = [];
    } else if (!isarray(level.var_ae746e8f[#"sr_orda_health_bar"])) {
        level.var_ae746e8f[#"sr_orda_health_bar"] = array(level.var_ae746e8f[#"sr_orda_health_bar"]);
    }
    level.var_ae746e8f[#"sr_orda_health_bar"][level.var_ae746e8f[#"sr_orda_health_bar"].size] = elem;
}

// Namespace sr_orda_health_bar/sr_orda_health_bar
// Params 0, eflags: 0x0
// Checksum 0x74aab41f, Offset: 0x280
// Size: 0x34
function register_clientside() {
    elem = new class_90c2e4ec();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace sr_orda_health_bar/sr_orda_health_bar
// Params 1, eflags: 0x0
// Checksum 0x3e0abcb0, Offset: 0x2c0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace sr_orda_health_bar/sr_orda_health_bar
// Params 1, eflags: 0x0
// Checksum 0xbb0d2404, Offset: 0x2e8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace sr_orda_health_bar/sr_orda_health_bar
// Params 1, eflags: 0x0
// Checksum 0x7102ef49, Offset: 0x310
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace sr_orda_health_bar/sr_orda_health_bar
// Params 2, eflags: 0x0
// Checksum 0xd838ddd4, Offset: 0x338
// Size: 0x28
function set_health(localclientnum, value) {
    [[ self ]]->set_health(localclientnum, value);
}

// Namespace sr_orda_health_bar/sr_orda_health_bar
// Params 2, eflags: 0x0
// Checksum 0xa26feadc, Offset: 0x368
// Size: 0x28
function function_dff51e54(localclientnum, value) {
    [[ self ]]->function_dff51e54(localclientnum, value);
}

