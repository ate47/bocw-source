// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace namespace_bd5c58c7;

// Namespace namespace_bd5c58c7
// Method(s) 11 Total 18
class class_b20c2804 : cluielem {

    // Namespace class_b20c2804/namespace_bd5c58c7
    // Params 0, eflags: 0x8
    // Checksum 0x7c0cd366, Offset: 0x560
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_b20c2804/namespace_bd5c58c7
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0xfe6101f5, Offset: 0x808
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_b20c2804/namespace_bd5c58c7
    // Params 1, eflags: 0x0
    // Checksum 0x5009ded4, Offset: 0x6c0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_b20c2804/namespace_bd5c58c7
    // Params 2, eflags: 0x0
    // Checksum 0x2332828c, Offset: 0x798
    // Size: 0x30
    function function_4f6e830d(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "offset_y", value);
    }

    // Namespace namespace_b20c2804/namespace_bd5c58c7
    // Params 0, eflags: 0x0
    // Checksum 0xd8bb26da, Offset: 0x5d0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("DOA_TextBubble");
    }

    // Namespace namespace_b20c2804/namespace_bd5c58c7
    // Params 2, eflags: 0x0
    // Checksum 0xb88f04f2, Offset: 0x760
    // Size: 0x30
    function function_61312692(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "offset_x", value);
    }

    // Namespace namespace_b20c2804/namespace_bd5c58c7
    // Params 2, eflags: 0x0
    // Checksum 0xdcad69b9, Offset: 0x7d0
    // Size: 0x30
    function function_7ddfdfef(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "offset_z", value);
    }

    // Namespace namespace_b20c2804/namespace_bd5c58c7
    // Params 5, eflags: 0x0
    // Checksum 0x7ebdb5aa, Offset: 0x580
    // Size: 0x44
    function setup_clientfields(*var_5a7b4b38, *var_f5852d69, *var_5957697a, *var_90efc226, *var_b77f41ee) {
        cluielem::setup_clientfields("DOA_TextBubble");
    }

    // Namespace namespace_b20c2804/namespace_bd5c58c7
    // Params 2, eflags: 0x0
    // Checksum 0x363cb818, Offset: 0x6f0
    // Size: 0x30
    function set_entnum(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "entnum", value);
    }

    // Namespace namespace_b20c2804/namespace_bd5c58c7
    // Params 2, eflags: 0x0
    // Checksum 0x6fffa821, Offset: 0x728
    // Size: 0x30
    function set_text(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "text", value);
    }

    // Namespace namespace_b20c2804/namespace_bd5c58c7
    // Params 1, eflags: 0x0
    // Checksum 0xd055506c, Offset: 0x5f8
    // Size: 0xc0
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        [[ self ]]->set_data(localclientnum, "entnum", 0);
        [[ self ]]->set_data(localclientnum, "text", #"");
        [[ self ]]->set_data(localclientnum, "offset_x", 0);
        [[ self ]]->set_data(localclientnum, "offset_y", 0);
        [[ self ]]->set_data(localclientnum, "offset_z", 0);
    }

}

// Namespace namespace_bd5c58c7/namespace_bd5c58c7
// Params 4, eflags: 0x0
// Checksum 0xa413e92a, Offset: 0x108
// Size: 0x6c
function set_offset(localclientnum, offsetx, offsety, offsetz) {
    self function_61312692(localclientnum, offsetx);
    self function_4f6e830d(localclientnum, offsety);
    self function_7ddfdfef(localclientnum, offsetz);
}

// Namespace namespace_bd5c58c7/namespace_bd5c58c7
// Params 2, eflags: 0x0
// Checksum 0xb5405580, Offset: 0x180
// Size: 0x30
function function_78098d4b(localclientnum, value) {
    [[ self ]]->set_data(localclientnum, "boneTag", value);
}

// Namespace namespace_bd5c58c7/namespace_bd5c58c7
// Params 3, eflags: 0x0
// Checksum 0xd1e7a866, Offset: 0x1b8
// Size: 0x4c
function function_919052d(localclientnum, entnum, var_ee710169) {
    self set_entnum(localclientnum, entnum);
    self function_78098d4b(localclientnum, var_ee710169);
}

// Namespace namespace_bd5c58c7/namespace_bd5c58c7
// Params 5, eflags: 0x0
// Checksum 0xc526122, Offset: 0x210
// Size: 0x19e
function register(var_5a7b4b38, var_f5852d69, var_5957697a, var_90efc226, var_b77f41ee) {
    elem = new class_b20c2804();
    [[ elem ]]->setup_clientfields(var_5a7b4b38, var_f5852d69, var_5957697a, var_90efc226, var_b77f41ee);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"hash_71263c25659db73d"])) {
        level.var_ae746e8f[#"hash_71263c25659db73d"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"hash_71263c25659db73d"])) {
        level.var_ae746e8f[#"hash_71263c25659db73d"] = [];
    } else if (!isarray(level.var_ae746e8f[#"hash_71263c25659db73d"])) {
        level.var_ae746e8f[#"hash_71263c25659db73d"] = array(level.var_ae746e8f[#"hash_71263c25659db73d"]);
    }
    level.var_ae746e8f[#"hash_71263c25659db73d"][level.var_ae746e8f[#"hash_71263c25659db73d"].size] = elem;
}

// Namespace namespace_bd5c58c7/namespace_bd5c58c7
// Params 0, eflags: 0x0
// Checksum 0x94d5d8d9, Offset: 0x3b8
// Size: 0x34
function register_clientside() {
    elem = new class_b20c2804();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace namespace_bd5c58c7/namespace_bd5c58c7
// Params 1, eflags: 0x0
// Checksum 0x1f31ac01, Offset: 0x3f8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace namespace_bd5c58c7/namespace_bd5c58c7
// Params 1, eflags: 0x0
// Checksum 0x23dd11, Offset: 0x420
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_bd5c58c7/namespace_bd5c58c7
// Params 1, eflags: 0x0
// Checksum 0xc04d9549, Offset: 0x448
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace namespace_bd5c58c7/namespace_bd5c58c7
// Params 2, eflags: 0x0
// Checksum 0xafa8a384, Offset: 0x470
// Size: 0x28
function set_entnum(localclientnum, value) {
    [[ self ]]->set_entnum(localclientnum, value);
}

// Namespace namespace_bd5c58c7/namespace_bd5c58c7
// Params 2, eflags: 0x0
// Checksum 0x1517eb17, Offset: 0x4a0
// Size: 0x28
function set_text(localclientnum, value) {
    [[ self ]]->set_text(localclientnum, value);
}

// Namespace namespace_bd5c58c7/namespace_bd5c58c7
// Params 2, eflags: 0x0
// Checksum 0xdb3e99da, Offset: 0x4d0
// Size: 0x28
function function_61312692(localclientnum, value) {
    [[ self ]]->function_61312692(localclientnum, value);
}

// Namespace namespace_bd5c58c7/namespace_bd5c58c7
// Params 2, eflags: 0x0
// Checksum 0xeea35256, Offset: 0x500
// Size: 0x28
function function_4f6e830d(localclientnum, value) {
    [[ self ]]->function_4f6e830d(localclientnum, value);
}

// Namespace namespace_bd5c58c7/namespace_bd5c58c7
// Params 2, eflags: 0x0
// Checksum 0xb45fa8c8, Offset: 0x530
// Size: 0x28
function function_7ddfdfef(localclientnum, value) {
    [[ self ]]->function_7ddfdfef(localclientnum, value);
}

