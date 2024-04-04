// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace namespace_8f760a1e;

// Namespace namespace_8f760a1e
// Method(s) 13 Total 20
class class_fb1bfa12 : cluielem {

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 1, eflags: 0x2 linked
    // Checksum 0x18c5b0d0, Offset: 0x808
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 2, eflags: 0x2 linked
    // Checksum 0x1ac9397e, Offset: 0x918
    // Size: 0x30
    function function_10415bce(localclientnum, value) {
        set_data(localclientnum, "lvlDescriptionShort", value);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 2, eflags: 0x2 linked
    // Checksum 0x5e687928, Offset: 0x950
    // Size: 0x30
    function function_275127c2(localclientnum, value) {
        set_data(localclientnum, "lvlDescriptionLong", value);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 2, eflags: 0x2 linked
    // Checksum 0xb8f77b3e, Offset: 0x988
    // Size: 0x30
    function function_3d5ae5d4(localclientnum, value) {
        set_data(localclientnum, "lvlProgress", value);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 2, eflags: 0x2 linked
    // Checksum 0xf0d3f5ae, Offset: 0x870
    // Size: 0x30
    function function_57d3362b(localclientnum, value) {
        set_data(localclientnum, "activeState", value);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 0, eflags: 0x2 linked
    // Checksum 0x6b7effc2, Offset: 0x6c0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("evidence_board_mission_preview");
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 7, eflags: 0x2 linked
    // Checksum 0xda3d5bed, Offset: 0x548
    // Size: 0x16c
    function setup_clientfields(var_5a7b4b38, var_ce679737, var_21c9fb3e, *var_370e913b, *var_4682a952, *var_72328549, var_8c8b5d16) {
        cluielem::setup_clientfields("evidence_board_mission_preview");
        cluielem::add_clientfield("entNum", 1, 10, "int", var_370e913b);
        cluielem::add_clientfield("activeState", 1, 2, "int", var_4682a952);
        cluielem::add_clientfield("lvlYear", 1, 11, "int", var_72328549);
        cluielem::function_dcb34c80("string", "lvlName", 1);
        cluielem::function_dcb34c80("string", "lvlDescriptionShort", 1);
        cluielem::function_dcb34c80("string", "lvlDescriptionLong", 1);
        cluielem::add_clientfield("lvlProgress", 1, 4, "float", var_8c8b5d16);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 2, eflags: 0x2 linked
    // Checksum 0x9384dc91, Offset: 0x8e0
    // Size: 0x30
    function function_c063a71c(localclientnum, value) {
        set_data(localclientnum, "lvlName", value);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 2, eflags: 0x2 linked
    // Checksum 0x9c4d499, Offset: 0x8a8
    // Size: 0x30
    function function_c2c6a8c3(localclientnum, value) {
        set_data(localclientnum, "lvlYear", value);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 2, eflags: 0x2 linked
    // Checksum 0xf598fb24, Offset: 0x838
    // Size: 0x30
    function set_entnum(localclientnum, value) {
        set_data(localclientnum, "entNum", value);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 1, eflags: 0x2 linked
    // Checksum 0x8ddc08e9, Offset: 0x6e8
    // Size: 0x118
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "entNum", 0);
        set_data(localclientnum, "activeState", 0);
        set_data(localclientnum, "lvlYear", 0);
        set_data(localclientnum, "lvlName", #"");
        set_data(localclientnum, "lvlDescriptionShort", #"");
        set_data(localclientnum, "lvlDescriptionLong", #"");
        set_data(localclientnum, "lvlProgress", 0);
    }

}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 7, eflags: 0x0
// Checksum 0x6e29f710, Offset: 0x160
// Size: 0x1b6
function register(var_5a7b4b38, var_ce679737, var_21c9fb3e, var_370e913b, var_4682a952, var_72328549, var_8c8b5d16) {
    elem = new class_fb1bfa12();
    [[ elem ]]->setup_clientfields(var_5a7b4b38, var_ce679737, var_21c9fb3e, var_370e913b, var_4682a952, var_72328549, var_8c8b5d16);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"hash_6fe462faad16c4e5"])) {
        level.var_ae746e8f[#"hash_6fe462faad16c4e5"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"hash_6fe462faad16c4e5"])) {
        level.var_ae746e8f[#"hash_6fe462faad16c4e5"] = [];
    } else if (!isarray(level.var_ae746e8f[#"hash_6fe462faad16c4e5"])) {
        level.var_ae746e8f[#"hash_6fe462faad16c4e5"] = array(level.var_ae746e8f[#"hash_6fe462faad16c4e5"]);
    }
    level.var_ae746e8f[#"hash_6fe462faad16c4e5"][level.var_ae746e8f[#"hash_6fe462faad16c4e5"].size] = elem;
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 0, eflags: 0x0
// Checksum 0x6b1c2d71, Offset: 0x320
// Size: 0x34
function register_clientside() {
    elem = new class_fb1bfa12();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 1, eflags: 0x0
// Checksum 0x9b201f4c, Offset: 0x360
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 1, eflags: 0x0
// Checksum 0xd999ff9b, Offset: 0x388
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 1, eflags: 0x0
// Checksum 0xdabe1528, Offset: 0x3b0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 2, eflags: 0x0
// Checksum 0x45de3893, Offset: 0x3d8
// Size: 0x28
function set_entnum(localclientnum, value) {
    [[ self ]]->set_entnum(localclientnum, value);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 2, eflags: 0x0
// Checksum 0x7a0d5c4, Offset: 0x408
// Size: 0x28
function function_57d3362b(localclientnum, value) {
    [[ self ]]->function_57d3362b(localclientnum, value);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 2, eflags: 0x0
// Checksum 0xe50c0d79, Offset: 0x438
// Size: 0x28
function function_c2c6a8c3(localclientnum, value) {
    [[ self ]]->function_c2c6a8c3(localclientnum, value);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 2, eflags: 0x0
// Checksum 0xf4e863da, Offset: 0x468
// Size: 0x28
function function_c063a71c(localclientnum, value) {
    [[ self ]]->function_c063a71c(localclientnum, value);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 2, eflags: 0x0
// Checksum 0xd7aeaa9c, Offset: 0x498
// Size: 0x28
function function_10415bce(localclientnum, value) {
    [[ self ]]->function_10415bce(localclientnum, value);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 2, eflags: 0x0
// Checksum 0xdb793ec4, Offset: 0x4c8
// Size: 0x28
function function_275127c2(localclientnum, value) {
    [[ self ]]->function_275127c2(localclientnum, value);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 2, eflags: 0x0
// Checksum 0xecf99c89, Offset: 0x4f8
// Size: 0x28
function function_3d5ae5d4(localclientnum, value) {
    [[ self ]]->function_3d5ae5d4(localclientnum, value);
}

