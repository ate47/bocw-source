// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace zm_roots_health_bar;

// Namespace zm_roots_health_bar
// Method(s) 9 Total 16
class class_f91fc158 : cluielem {

    // Namespace namespace_f91fc158/zm_roots_health_bar
    // Params 1, eflags: 0x0
    // Checksum 0x2b05c345, Offset: 0x570
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_f91fc158/zm_roots_health_bar
    // Params 0, eflags: 0x0
    // Checksum 0xbde8dd87, Offset: 0x4b8
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("zm_roots_health_bar");
    }

    // Namespace namespace_f91fc158/zm_roots_health_bar
    // Params 2, eflags: 0x0
    // Checksum 0xb8ddf899, Offset: 0x610
    // Size: 0x30
    function function_74adcd8a(localclientnum, value) {
        set_data(localclientnum, "armor_vis", value);
    }

    // Namespace namespace_f91fc158/zm_roots_health_bar
    // Params 3, eflags: 0x0
    // Checksum 0x6a054cf4, Offset: 0x400
    // Size: 0xac
    function setup_clientfields(healthcallback, var_4ec2b207, var_ed81ff07) {
        cluielem::setup_clientfields("zm_roots_health_bar");
        cluielem::add_clientfield("health", 4000, 7, "float", healthcallback);
        cluielem::add_clientfield("armor", 4000, 7, "float", var_4ec2b207);
        cluielem::add_clientfield("armor_vis", 4000, 1, "int", var_ed81ff07);
    }

    // Namespace namespace_f91fc158/zm_roots_health_bar
    // Params 2, eflags: 0x0
    // Checksum 0x4c5ce9b9, Offset: 0x5d8
    // Size: 0x30
    function set_armor(localclientnum, value) {
        set_data(localclientnum, "armor", value);
    }

    // Namespace namespace_f91fc158/zm_roots_health_bar
    // Params 2, eflags: 0x0
    // Checksum 0xff55eae, Offset: 0x5a0
    // Size: 0x30
    function set_health(localclientnum, value) {
        set_data(localclientnum, "health", value);
    }

    // Namespace namespace_f91fc158/zm_roots_health_bar
    // Params 1, eflags: 0x0
    // Checksum 0xb16a7852, Offset: 0x4e0
    // Size: 0x88
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "health", 0);
        set_data(localclientnum, "armor", 0);
        set_data(localclientnum, "armor_vis", 0);
    }

}

// Namespace zm_roots_health_bar/zm_roots_health_bar
// Params 3, eflags: 0x0
// Checksum 0xf0cd6a7f, Offset: 0x100
// Size: 0x18e
function register(healthcallback, var_4ec2b207, var_ed81ff07) {
    elem = new class_f91fc158();
    [[ elem ]]->setup_clientfields(healthcallback, var_4ec2b207, var_ed81ff07);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"zm_roots_health_bar"])) {
        level.var_ae746e8f[#"zm_roots_health_bar"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"zm_roots_health_bar"])) {
        level.var_ae746e8f[#"zm_roots_health_bar"] = [];
    } else if (!isarray(level.var_ae746e8f[#"zm_roots_health_bar"])) {
        level.var_ae746e8f[#"zm_roots_health_bar"] = array(level.var_ae746e8f[#"zm_roots_health_bar"]);
    }
    level.var_ae746e8f[#"zm_roots_health_bar"][level.var_ae746e8f[#"zm_roots_health_bar"].size] = elem;
}

// Namespace zm_roots_health_bar/zm_roots_health_bar
// Params 0, eflags: 0x0
// Checksum 0xfabb66bf, Offset: 0x298
// Size: 0x34
function register_clientside() {
    elem = new class_f91fc158();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace zm_roots_health_bar/zm_roots_health_bar
// Params 1, eflags: 0x0
// Checksum 0xc5abc4dd, Offset: 0x2d8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace zm_roots_health_bar/zm_roots_health_bar
// Params 1, eflags: 0x0
// Checksum 0x5109dab0, Offset: 0x300
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_roots_health_bar/zm_roots_health_bar
// Params 1, eflags: 0x0
// Checksum 0x16b5421b, Offset: 0x328
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace zm_roots_health_bar/zm_roots_health_bar
// Params 2, eflags: 0x0
// Checksum 0xce60ea1d, Offset: 0x350
// Size: 0x28
function set_health(localclientnum, value) {
    [[ self ]]->set_health(localclientnum, value);
}

// Namespace zm_roots_health_bar/zm_roots_health_bar
// Params 2, eflags: 0x0
// Checksum 0xebd4f0d3, Offset: 0x380
// Size: 0x28
function set_armor(localclientnum, value) {
    [[ self ]]->set_armor(localclientnum, value);
}

// Namespace zm_roots_health_bar/zm_roots_health_bar
// Params 2, eflags: 0x0
// Checksum 0xc0b2b6e, Offset: 0x3b0
// Size: 0x28
function function_74adcd8a(localclientnum, value) {
    [[ self ]]->function_74adcd8a(localclientnum, value);
}

