// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace zm_control_point_hud;

// Namespace zm_control_point_hud
// Method(s) 12 Total 19
class class_a0b518ca : cluielem {

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 1, eflags: 0x0
    // Checksum 0x6cb4a5e9, Offset: 0x738
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 2, eflags: 0x0
    // Checksum 0xf919d998, Offset: 0x880
    // Size: 0x30
    function function_338d48a0(localclientnum, value) {
        set_data(localclientnum, "hasDamage", value);
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 0, eflags: 0x0
    // Checksum 0x50681d08, Offset: 0x620
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("zm_control_point_hud");
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 2, eflags: 0x0
    // Checksum 0xc7c85e5c, Offset: 0x768
    // Size: 0x30
    function function_62264c81(localclientnum, value) {
        set_data(localclientnum, "chargePct", value);
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 2, eflags: 0x0
    // Checksum 0xd9b3b77, Offset: 0x848
    // Size: 0x30
    function function_751f7270(localclientnum, value) {
        set_data(localclientnum, "hasCharge", value);
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 6, eflags: 0x0
    // Checksum 0x2e323b83, Offset: 0x4d8
    // Size: 0x13c
    function setup_clientfields(var_4bf38eea, var_7cc0b11d, var_14431277, var_db1c4294, var_87048abd, var_dd55685a) {
        cluielem::setup_clientfields("zm_control_point_hud");
        cluielem::add_clientfield("chargePct", 8000, 7, "float", var_4bf38eea);
        cluielem::add_clientfield("damagePct", 8000, 7, "float", var_7cc0b11d);
        cluielem::add_clientfield("ordaHealthPct", 16000, 7, "float", var_14431277);
        cluielem::add_clientfield("hasOrda", 16000, 1, "int", var_db1c4294);
        cluielem::add_clientfield("hasCharge", 16000, 1, "int", var_87048abd);
        cluielem::add_clientfield("hasDamage", 16000, 1, "int", var_dd55685a);
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 2, eflags: 0x0
    // Checksum 0x4d120c86, Offset: 0x7a0
    // Size: 0x30
    function function_a04ff29a(localclientnum, value) {
        set_data(localclientnum, "damagePct", value);
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 2, eflags: 0x0
    // Checksum 0x8f220bee, Offset: 0x7d8
    // Size: 0x30
    function function_a59aefa6(localclientnum, value) {
        set_data(localclientnum, "ordaHealthPct", value);
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 2, eflags: 0x0
    // Checksum 0x1427c44f, Offset: 0x810
    // Size: 0x30
    function function_a95c34f3(localclientnum, value) {
        set_data(localclientnum, "hasOrda", value);
    }

    // Namespace namespace_a0b518ca/zm_control_point_hud
    // Params 1, eflags: 0x0
    // Checksum 0x327e3d77, Offset: 0x648
    // Size: 0xe4
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "chargePct", 0);
        set_data(localclientnum, "damagePct", 0);
        set_data(localclientnum, "ordaHealthPct", 0);
        set_data(localclientnum, "hasOrda", 0);
        set_data(localclientnum, "hasCharge", 0);
        set_data(localclientnum, "hasDamage", 0);
    }

}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 6, eflags: 0x0
// Checksum 0x593fe275, Offset: 0x130
// Size: 0x1a6
function register(var_4bf38eea, var_7cc0b11d, var_14431277, var_db1c4294, var_87048abd, var_dd55685a) {
    elem = new class_a0b518ca();
    [[ elem ]]->setup_clientfields(var_4bf38eea, var_7cc0b11d, var_14431277, var_db1c4294, var_87048abd, var_dd55685a);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"zm_control_point_hud"])) {
        level.var_ae746e8f[#"zm_control_point_hud"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"zm_control_point_hud"])) {
        level.var_ae746e8f[#"zm_control_point_hud"] = [];
    } else if (!isarray(level.var_ae746e8f[#"zm_control_point_hud"])) {
        level.var_ae746e8f[#"zm_control_point_hud"] = array(level.var_ae746e8f[#"zm_control_point_hud"]);
    }
    level.var_ae746e8f[#"zm_control_point_hud"][level.var_ae746e8f[#"zm_control_point_hud"].size] = elem;
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 0, eflags: 0x0
// Checksum 0x715f0657, Offset: 0x2e0
// Size: 0x34
function register_clientside() {
    elem = new class_a0b518ca();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 1, eflags: 0x0
// Checksum 0xb48954b, Offset: 0x320
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 1, eflags: 0x0
// Checksum 0x1f89f37c, Offset: 0x348
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 1, eflags: 0x0
// Checksum 0x68a997eb, Offset: 0x370
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 2, eflags: 0x0
// Checksum 0xfb1617af, Offset: 0x398
// Size: 0x28
function function_62264c81(localclientnum, value) {
    [[ self ]]->function_62264c81(localclientnum, value);
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 2, eflags: 0x0
// Checksum 0x55d47f1f, Offset: 0x3c8
// Size: 0x28
function function_a04ff29a(localclientnum, value) {
    [[ self ]]->function_a04ff29a(localclientnum, value);
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 2, eflags: 0x0
// Checksum 0x979d2497, Offset: 0x3f8
// Size: 0x28
function function_a59aefa6(localclientnum, value) {
    [[ self ]]->function_a59aefa6(localclientnum, value);
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 2, eflags: 0x0
// Checksum 0xab8a1c2, Offset: 0x428
// Size: 0x28
function function_a95c34f3(localclientnum, value) {
    [[ self ]]->function_a95c34f3(localclientnum, value);
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 2, eflags: 0x0
// Checksum 0x2a676ea9, Offset: 0x458
// Size: 0x28
function function_751f7270(localclientnum, value) {
    [[ self ]]->function_751f7270(localclientnum, value);
}

// Namespace zm_control_point_hud/zm_control_point_hud
// Params 2, eflags: 0x0
// Checksum 0x64d1ee95, Offset: 0x488
// Size: 0x28
function function_338d48a0(localclientnum, value) {
    [[ self ]]->function_338d48a0(localclientnum, value);
}

