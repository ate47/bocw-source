// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace namespace_9833247d;

// Namespace namespace_9833247d
// Method(s) 11 Total 18
class class_d4941e5e : cluielem {

    // Namespace class_d4941e5e/namespace_9833247d
    // Params 0, eflags: 0xa linked
    // Checksum 0x5075bd65, Offset: 0x478
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_d4941e5e/namespace_9833247d
    // Params 0, eflags: 0x92 linked class_linked
    // Checksum 0x63a25521, Offset: 0x7e8
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_d4941e5e/namespace_9833247d
    // Params 1, eflags: 0x2 linked
    // Checksum 0x4bf0982b, Offset: 0x6a0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_d4941e5e/namespace_9833247d
    // Params 2, eflags: 0x2 linked
    // Checksum 0x65bf2179, Offset: 0x778
    // Size: 0x30
    function function_18066380(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "direction", value);
    }

    // Namespace namespace_d4941e5e/namespace_9833247d
    // Params 2, eflags: 0x2 linked
    // Checksum 0x1270e340, Offset: 0x708
    // Size: 0x30
    function function_4d628707(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "awarenessState", value);
    }

    // Namespace namespace_d4941e5e/namespace_9833247d
    // Params 0, eflags: 0x2 linked
    // Checksum 0x28f6635a, Offset: 0x5b0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("stealth_meter_display");
    }

    // Namespace namespace_d4941e5e/namespace_9833247d
    // Params 2, eflags: 0x2 linked
    // Checksum 0xf7e59ca9, Offset: 0x740
    // Size: 0x30
    function function_7425637b(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "awarenessProgress", value);
    }

    // Namespace namespace_d4941e5e/namespace_9833247d
    // Params 5, eflags: 0x2 linked
    // Checksum 0x2061eaf0, Offset: 0x498
    // Size: 0x10c
    function setup_clientfields(var_5a7b4b38, var_579b061b, var_f10a04a3, var_f228b5fa, var_bda3bf84) {
        cluielem::setup_clientfields("stealth_meter_display");
        cluielem::add_clientfield("entNum", 1, 10, "int", var_5a7b4b38);
        cluielem::add_clientfield("awarenessState", 1, 4, "int", var_579b061b);
        cluielem::add_clientfield("awarenessProgress", 1, 4, "float", var_f10a04a3);
        cluielem::add_clientfield("direction", 1, 4, "float", var_f228b5fa);
        cluielem::add_clientfield("clamped", 1, 1, "int", var_bda3bf84);
    }

    // Namespace namespace_d4941e5e/namespace_9833247d
    // Params 2, eflags: 0x2 linked
    // Checksum 0x5c125907, Offset: 0x6d0
    // Size: 0x30
    function set_entnum(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "entNum", value);
    }

    // Namespace namespace_d4941e5e/namespace_9833247d
    // Params 1, eflags: 0x2 linked
    // Checksum 0xc204e87e, Offset: 0x5d8
    // Size: 0xc0
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        [[ self ]]->set_data(localclientnum, "entNum", 0);
        [[ self ]]->set_data(localclientnum, "awarenessState", 0);
        [[ self ]]->set_data(localclientnum, "awarenessProgress", 0);
        [[ self ]]->set_data(localclientnum, "direction", 0);
        [[ self ]]->set_data(localclientnum, "clamped", 0);
    }

    // Namespace namespace_d4941e5e/namespace_9833247d
    // Params 2, eflags: 0x2 linked
    // Checksum 0xb5e228bc, Offset: 0x7b0
    // Size: 0x30
    function function_fae2a569(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "clamped", value);
    }

}

// Namespace namespace_9833247d/namespace_9833247d
// Params 5, eflags: 0x0
// Checksum 0x719ec839, Offset: 0x128
// Size: 0x19e
function register(var_5a7b4b38, var_579b061b, var_f10a04a3, var_f228b5fa, var_bda3bf84) {
    elem = new class_d4941e5e();
    [[ elem ]]->setup_clientfields(var_5a7b4b38, var_579b061b, var_f10a04a3, var_f228b5fa, var_bda3bf84);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"hash_5c29eddf3a6e30d3"])) {
        level.var_ae746e8f[#"hash_5c29eddf3a6e30d3"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"hash_5c29eddf3a6e30d3"])) {
        level.var_ae746e8f[#"hash_5c29eddf3a6e30d3"] = [];
    } else if (!isarray(level.var_ae746e8f[#"hash_5c29eddf3a6e30d3"])) {
        level.var_ae746e8f[#"hash_5c29eddf3a6e30d3"] = array(level.var_ae746e8f[#"hash_5c29eddf3a6e30d3"]);
    }
    level.var_ae746e8f[#"hash_5c29eddf3a6e30d3"][level.var_ae746e8f[#"hash_5c29eddf3a6e30d3"].size] = elem;
}

// Namespace namespace_9833247d/namespace_9833247d
// Params 0, eflags: 0x2 linked
// Checksum 0x6792cb88, Offset: 0x2d0
// Size: 0x34
function register_clientside() {
    elem = new class_d4941e5e();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace namespace_9833247d/namespace_9833247d
// Params 1, eflags: 0x2 linked
// Checksum 0x875e5960, Offset: 0x310
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace namespace_9833247d/namespace_9833247d
// Params 1, eflags: 0x2 linked
// Checksum 0x8a22208e, Offset: 0x338
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_9833247d/namespace_9833247d
// Params 1, eflags: 0x2 linked
// Checksum 0x1cfc583f, Offset: 0x360
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace namespace_9833247d/namespace_9833247d
// Params 2, eflags: 0x2 linked
// Checksum 0x4c2beda4, Offset: 0x388
// Size: 0x28
function set_entnum(localclientnum, value) {
    [[ self ]]->set_entnum(localclientnum, value);
}

// Namespace namespace_9833247d/namespace_9833247d
// Params 2, eflags: 0x2 linked
// Checksum 0x605138cb, Offset: 0x3b8
// Size: 0x28
function function_4d628707(localclientnum, value) {
    [[ self ]]->function_4d628707(localclientnum, value);
}

// Namespace namespace_9833247d/namespace_9833247d
// Params 2, eflags: 0x2 linked
// Checksum 0x534a825f, Offset: 0x3e8
// Size: 0x28
function function_7425637b(localclientnum, value) {
    [[ self ]]->function_7425637b(localclientnum, value);
}

// Namespace namespace_9833247d/namespace_9833247d
// Params 2, eflags: 0x0
// Checksum 0x424cfc5d, Offset: 0x418
// Size: 0x28
function function_18066380(localclientnum, value) {
    [[ self ]]->function_18066380(localclientnum, value);
}

// Namespace namespace_9833247d/namespace_9833247d
// Params 2, eflags: 0x2 linked
// Checksum 0x1acd70fd, Offset: 0x448
// Size: 0x28
function function_fae2a569(localclientnum, value) {
    [[ self ]]->function_fae2a569(localclientnum, value);
}
