// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace luielem_entity_bar;

// Namespace luielem_entity_bar
// Method(s) 14 Total 21
class class_276088fe : cluielem {

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 1, eflags: 0x0
    // Checksum 0x8b284b85, Offset: 0x970
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0xe4560bed, Offset: 0xba8
    // Size: 0x30
    function function_4f6e830d(localclientnum, value) {
        set_data(localclientnum, "offset_y", value);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 0, eflags: 0x0
    // Checksum 0x93116baa, Offset: 0x830
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("LUIelem_entity_bar");
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0xa9bce67c, Offset: 0xb70
    // Size: 0x30
    function function_61312692(localclientnum, value) {
        set_data(localclientnum, "offset_x", value);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0x5ded8a6a, Offset: 0xbe0
    // Size: 0x30
    function function_7ddfdfef(localclientnum, value) {
        set_data(localclientnum, "offset_z", value);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 9, eflags: 0x0
    // Checksum 0xd36f64d8, Offset: 0x680
    // Size: 0x1a4
    function setup_clientfields(var_aabf01c7, var_5a7b4b38, *var_bda3bf84, *var_f228b5fa, var_5957697a, var_90efc226, var_b77f41ee, var_255edd98, var_2c8aa656) {
        cluielem::setup_clientfields("LUIelem_entity_bar");
        cluielem::add_clientfield("_state", 1, 3, "int");
        cluielem::add_clientfield("progress_percent", 1, 7, "float", var_bda3bf84);
        cluielem::add_clientfield("entnum", 1, 7, "int", var_f228b5fa);
        cluielem::add_clientfield("offset_x", 1, 6, "int", var_5957697a);
        cluielem::add_clientfield("offset_y", 1, 6, "int", var_90efc226);
        cluielem::add_clientfield("offset_z", 1, 6, "int", var_b77f41ee);
        cluielem::add_clientfield("entityClamp", 1, 1, "int", var_255edd98);
        cluielem::add_clientfield("entityScale", 1, 1, "int", var_2c8aa656);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0x30081a44, Offset: 0xc50
    // Size: 0x30
    function function_a9793a65(localclientnum, value) {
        set_data(localclientnum, "entityScale", value);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0x57f89024, Offset: 0xb38
    // Size: 0x30
    function set_entnum(localclientnum, value) {
        set_data(localclientnum, "entnum", value);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0xe8310d8b, Offset: 0x9a0
    // Size: 0x154
    function set_state(localclientnum, state_name) {
        if (#"defaultstate" == state_name) {
            set_data(localclientnum, "_state", 0);
            return;
        }
        if (#"friendlyblue" == state_name) {
            set_data(localclientnum, "_state", 1);
            return;
        }
        if (#"green" == state_name) {
            set_data(localclientnum, "_state", 2);
            return;
        }
        if (#"yellow" == state_name) {
            set_data(localclientnum, "_state", 3);
            return;
        }
        if (#"red" == state_name) {
            set_data(localclientnum, "_state", 4);
            return;
        }
        assertmsg("<unknown string>");
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0x2be0de5a, Offset: 0xc18
    // Size: 0x30
    function function_dfed4b05(localclientnum, value) {
        set_data(localclientnum, "entityClamp", value);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 2, eflags: 0x0
    // Checksum 0x2f38e616, Offset: 0xb00
    // Size: 0x30
    function function_ecacbaa5(localclientnum, value) {
        set_data(localclientnum, "progress_percent", value);
    }

    // Namespace namespace_276088fe/luielem_entity_bar
    // Params 1, eflags: 0x0
    // Checksum 0x7149c8eb, Offset: 0x858
    // Size: 0x110
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_state(localclientnum, #"defaultstate");
        set_data(localclientnum, "progress_percent", 0);
        set_data(localclientnum, "entnum", 0);
        set_data(localclientnum, "offset_x", 0);
        set_data(localclientnum, "offset_y", 0);
        set_data(localclientnum, "offset_z", 0);
        set_data(localclientnum, "entityClamp", 0);
        set_data(localclientnum, "entityScale", 0);
    }

}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0xf3d30c21, Offset: 0x150
// Size: 0x30
function function_78098d4b(localclientnum, value) {
    [[ self ]]->set_data(localclientnum, "boneTag", value);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 3, eflags: 0x0
// Checksum 0xe2754e26, Offset: 0x188
// Size: 0x4c
function function_919052d(localclientnum, entnum, bonetag) {
    self set_entnum(localclientnum, entnum);
    self function_78098d4b(localclientnum, bonetag);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 4, eflags: 0x0
// Checksum 0xcb657f0d, Offset: 0x1e0
// Size: 0x6c
function set_offset(localclientnum, offsetx, offsety, offsetz) {
    self function_61312692(localclientnum, offsetx);
    self function_4f6e830d(localclientnum, offsety);
    self function_7ddfdfef(localclientnum, offsetz);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 9, eflags: 0x0
// Checksum 0x1ac8c1ec, Offset: 0x258
// Size: 0x1c6
function register(var_aabf01c7, var_5a7b4b38, var_bda3bf84, var_f228b5fa, var_5957697a, var_90efc226, var_b77f41ee, var_255edd98, var_2c8aa656) {
    elem = new class_276088fe();
    [[ elem ]]->setup_clientfields(var_aabf01c7, var_5a7b4b38, var_bda3bf84, var_f228b5fa, var_5957697a, var_90efc226, var_b77f41ee, var_255edd98, var_2c8aa656);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"luielem_entity_bar"])) {
        level.var_ae746e8f[#"luielem_entity_bar"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"luielem_entity_bar"])) {
        level.var_ae746e8f[#"luielem_entity_bar"] = [];
    } else if (!isarray(level.var_ae746e8f[#"luielem_entity_bar"])) {
        level.var_ae746e8f[#"luielem_entity_bar"] = array(level.var_ae746e8f[#"luielem_entity_bar"]);
    }
    level.var_ae746e8f[#"luielem_entity_bar"][level.var_ae746e8f[#"luielem_entity_bar"].size] = elem;
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 0, eflags: 0x0
// Checksum 0xf2c0af1, Offset: 0x428
// Size: 0x34
function register_clientside() {
    elem = new class_276088fe();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 1, eflags: 0x0
// Checksum 0x25137247, Offset: 0x468
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 1, eflags: 0x0
// Checksum 0xae297bc1, Offset: 0x490
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 1, eflags: 0x0
// Checksum 0x4c3e868d, Offset: 0x4b8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0xac866871, Offset: 0x4e0
// Size: 0x28
function set_state(localclientnum, state_name) {
    [[ self ]]->set_state(localclientnum, state_name);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0xdaa5a282, Offset: 0x510
// Size: 0x28
function function_ecacbaa5(localclientnum, value) {
    [[ self ]]->function_ecacbaa5(localclientnum, value);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0xb1cdabcd, Offset: 0x540
// Size: 0x28
function set_entnum(localclientnum, value) {
    [[ self ]]->set_entnum(localclientnum, value);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0xb8b3bccb, Offset: 0x570
// Size: 0x28
function function_61312692(localclientnum, value) {
    [[ self ]]->function_61312692(localclientnum, value);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0xd85ada7e, Offset: 0x5a0
// Size: 0x28
function function_4f6e830d(localclientnum, value) {
    [[ self ]]->function_4f6e830d(localclientnum, value);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0x9a3f3bd0, Offset: 0x5d0
// Size: 0x28
function function_7ddfdfef(localclientnum, value) {
    [[ self ]]->function_7ddfdfef(localclientnum, value);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0x60647144, Offset: 0x600
// Size: 0x28
function function_dfed4b05(localclientnum, value) {
    [[ self ]]->function_dfed4b05(localclientnum, value);
}

// Namespace luielem_entity_bar/luielem_entity_bar
// Params 2, eflags: 0x0
// Checksum 0x20660126, Offset: 0x630
// Size: 0x28
function function_a9793a65(localclientnum, value) {
    [[ self ]]->function_a9793a65(localclientnum, value);
}

