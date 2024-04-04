// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace initial_black;

// Namespace initial_black
// Method(s) 7 Total 14
class cinitial_black : cluielem {

    // Namespace cinitial_black/initial_black
    // Params 1, eflags: 0x2 linked
    // Checksum 0xa7ba79ea, Offset: 0x430
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cinitial_black/initial_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0x81b6fc75, Offset: 0x460
    // Size: 0x30
    function function_2eb3f6e8(localclientnum, value) {
        set_data(localclientnum, "developer_mode", value);
    }

    // Namespace cinitial_black/initial_black
    // Params 0, eflags: 0x2 linked
    // Checksum 0xb732f866, Offset: 0x3c0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("initial_black");
    }

    // Namespace cinitial_black/initial_black
    // Params 1, eflags: 0x2 linked
    // Checksum 0x4dc96e5a, Offset: 0x368
    // Size: 0x4c
    function setup_clientfields(var_e303eae1) {
        cluielem::setup_clientfields("initial_black");
        cluielem::add_clientfield("developer_mode", 1, 1, "int", var_e303eae1);
    }

    // Namespace cinitial_black/initial_black
    // Params 1, eflags: 0x2 linked
    // Checksum 0x8024995a, Offset: 0x3e8
    // Size: 0x40
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "developer_mode", 0);
    }

}

// Namespace initial_black/initial_black
// Params 1, eflags: 0x2 linked
// Checksum 0x2db4d5ac, Offset: 0xe0
// Size: 0x176
function register(var_e303eae1) {
    elem = new cinitial_black();
    [[ elem ]]->setup_clientfields(var_e303eae1);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"initial_black"])) {
        level.var_ae746e8f[#"initial_black"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"initial_black"])) {
        level.var_ae746e8f[#"initial_black"] = [];
    } else if (!isarray(level.var_ae746e8f[#"initial_black"])) {
        level.var_ae746e8f[#"initial_black"] = array(level.var_ae746e8f[#"initial_black"]);
    }
    level.var_ae746e8f[#"initial_black"][level.var_ae746e8f[#"initial_black"].size] = elem;
}

// Namespace initial_black/initial_black
// Params 0, eflags: 0x0
// Checksum 0xa6c6e6f4, Offset: 0x260
// Size: 0x34
function register_clientside() {
    elem = new cinitial_black();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace initial_black/initial_black
// Params 1, eflags: 0x0
// Checksum 0xab7c1abf, Offset: 0x2a0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace initial_black/initial_black
// Params 1, eflags: 0x0
// Checksum 0x2c2bb37, Offset: 0x2c8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace initial_black/initial_black
// Params 1, eflags: 0x0
// Checksum 0x71b19878, Offset: 0x2f0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace initial_black/initial_black
// Params 2, eflags: 0x0
// Checksum 0xbfbda776, Offset: 0x318
// Size: 0x28
function function_2eb3f6e8(localclientnum, value) {
    [[ self ]]->function_2eb3f6e8(localclientnum, value);
}

