// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace namespace_9ffd16b9;

// Namespace namespace_9ffd16b9
// Method(s) 13 Total 20
class class_35ee22bc : cluielem {

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 1, eflags: 0x0
    // Checksum 0x10c77f54, Offset: 0x7c8
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 2, eflags: 0x0
    // Checksum 0x9463b42a, Offset: 0x8a0
    // Size: 0x30
    function function_16715e9f(localclientnum, value) {
        set_data(localclientnum, "guardian_count", value);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 2, eflags: 0x0
    // Checksum 0x1a5bec8a, Offset: 0x910
    // Size: 0x30
    function function_191323ee(localclientnum, value) {
        set_data(localclientnum, "raps_count", value);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 2, eflags: 0x0
    // Checksum 0x7886dbf, Offset: 0x948
    // Size: 0x30
    function function_461034d2(localclientnum, value) {
        set_data(localclientnum, "selector_state", value);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 0, eflags: 0x0
    // Checksum 0xc320422, Offset: 0x6b0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("cp_captured_supplydrop");
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 2, eflags: 0x0
    // Checksum 0x6f846515, Offset: 0x830
    // Size: 0x30
    function function_69d88480(localclientnum, value) {
        set_data(localclientnum, "wasp_count", value);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 7, eflags: 0x0
    // Checksum 0x304c9803, Offset: 0x538
    // Size: 0x16c
    function setup_clientfields(var_e4f88108, var_a5022382, var_cad0ba31, var_dc5e3aea, var_efc8a38a, var_28bdc188, var_61794ad8) {
        cluielem::setup_clientfields("cp_captured_supplydrop");
        cluielem::add_clientfield("micromissile_count", 1, 2, "int", var_e4f88108);
        cluielem::add_clientfield("wasp_count", 1, 2, "int", var_a5022382);
        cluielem::add_clientfield("rcxd_count", 1, 2, "int", var_cad0ba31);
        cluielem::add_clientfield("guardian_count", 1, 2, "int", var_dc5e3aea);
        cluielem::add_clientfield("robot_count", 1, 2, "int", var_efc8a38a);
        cluielem::add_clientfield("raps_count", 1, 2, "int", var_28bdc188);
        cluielem::add_clientfield("selector_state", 1, 3, "int", var_61794ad8);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 2, eflags: 0x0
    // Checksum 0xcb006d19, Offset: 0x8d8
    // Size: 0x30
    function function_de1ece9c(localclientnum, value) {
        set_data(localclientnum, "robot_count", value);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 2, eflags: 0x0
    // Checksum 0x61c2f74e, Offset: 0x868
    // Size: 0x30
    function function_ebe4fe7a(localclientnum, value) {
        set_data(localclientnum, "rcxd_count", value);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 1, eflags: 0x0
    // Checksum 0x62bbe2bd, Offset: 0x6d8
    // Size: 0xe8
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "micromissile_count", 0);
        set_data(localclientnum, "wasp_count", 0);
        set_data(localclientnum, "rcxd_count", 0);
        set_data(localclientnum, "guardian_count", 0);
        set_data(localclientnum, "robot_count", 0);
        set_data(localclientnum, "raps_count", 0);
        set_data(localclientnum, "selector_state", 0);
    }

    // Namespace namespace_35ee22bc/namespace_9ffd16b9
    // Params 2, eflags: 0x0
    // Checksum 0x6bfdbe37, Offset: 0x7f8
    // Size: 0x30
    function function_fdfe76bb(localclientnum, value) {
        set_data(localclientnum, "micromissile_count", value);
    }

}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 7, eflags: 0x0
// Checksum 0xb0295375, Offset: 0x150
// Size: 0x1b6
function register(var_e4f88108, var_a5022382, var_cad0ba31, var_dc5e3aea, var_efc8a38a, var_28bdc188, var_61794ad8) {
    elem = new class_35ee22bc();
    [[ elem ]]->setup_clientfields(var_e4f88108, var_a5022382, var_cad0ba31, var_dc5e3aea, var_efc8a38a, var_28bdc188, var_61794ad8);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"hash_1fa9b2d6c53def8c"])) {
        level.var_ae746e8f[#"hash_1fa9b2d6c53def8c"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"hash_1fa9b2d6c53def8c"])) {
        level.var_ae746e8f[#"hash_1fa9b2d6c53def8c"] = [];
    } else if (!isarray(level.var_ae746e8f[#"hash_1fa9b2d6c53def8c"])) {
        level.var_ae746e8f[#"hash_1fa9b2d6c53def8c"] = array(level.var_ae746e8f[#"hash_1fa9b2d6c53def8c"]);
    }
    level.var_ae746e8f[#"hash_1fa9b2d6c53def8c"][level.var_ae746e8f[#"hash_1fa9b2d6c53def8c"].size] = elem;
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 0, eflags: 0x0
// Checksum 0x39330d52, Offset: 0x310
// Size: 0x34
function register_clientside() {
    elem = new class_35ee22bc();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 1, eflags: 0x0
// Checksum 0xc1fd25ef, Offset: 0x350
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 1, eflags: 0x0
// Checksum 0x255108dc, Offset: 0x378
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 1, eflags: 0x0
// Checksum 0xeae39130, Offset: 0x3a0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 2, eflags: 0x0
// Checksum 0x4436effd, Offset: 0x3c8
// Size: 0x28
function function_fdfe76bb(localclientnum, value) {
    [[ self ]]->function_fdfe76bb(localclientnum, value);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 2, eflags: 0x0
// Checksum 0xb56ccdd, Offset: 0x3f8
// Size: 0x28
function function_69d88480(localclientnum, value) {
    [[ self ]]->function_69d88480(localclientnum, value);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 2, eflags: 0x0
// Checksum 0x921c05f3, Offset: 0x428
// Size: 0x28
function function_ebe4fe7a(localclientnum, value) {
    [[ self ]]->function_ebe4fe7a(localclientnum, value);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 2, eflags: 0x0
// Checksum 0xf06a1c74, Offset: 0x458
// Size: 0x28
function function_16715e9f(localclientnum, value) {
    [[ self ]]->function_16715e9f(localclientnum, value);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 2, eflags: 0x0
// Checksum 0x733d2ba4, Offset: 0x488
// Size: 0x28
function function_de1ece9c(localclientnum, value) {
    [[ self ]]->function_de1ece9c(localclientnum, value);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 2, eflags: 0x0
// Checksum 0x5ef3c6b2, Offset: 0x4b8
// Size: 0x28
function function_191323ee(localclientnum, value) {
    [[ self ]]->function_191323ee(localclientnum, value);
}

// Namespace namespace_9ffd16b9/namespace_9ffd16b9
// Params 2, eflags: 0x0
// Checksum 0xec6d7577, Offset: 0x4e8
// Size: 0x28
function function_461034d2(localclientnum, value) {
    [[ self ]]->function_461034d2(localclientnum, value);
}

