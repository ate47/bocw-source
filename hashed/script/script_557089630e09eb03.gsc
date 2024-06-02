// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace onslaught_hud;

// Namespace onslaught_hud
// Method(s) 16 Total 23
class class_b6739d61 : cluielem {

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 1, eflags: 0x0
    // Checksum 0x60cbf04f, Offset: 0x9b8
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0xd2638cac, Offset: 0xb70
    // Size: 0x30
    function function_1c28d7c2(localclientnum, value) {
        set_data(localclientnum, "showBossAlert", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0xa981aae0, Offset: 0xa58
    // Size: 0x30
    function function_2a0b1f84(localclientnum, value) {
        set_data(localclientnum, "score3Points", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 0, eflags: 0x0
    // Checksum 0xd5936a4e, Offset: 0x820
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("onslaught_hud");
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0xd216a26, Offset: 0xbe0
    // Size: 0x30
    function function_71fd1345(localclientnum, value) {
        set_data(localclientnum, "showLottoLoadouts", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 10, eflags: 0x0
    // Checksum 0x804e02c2, Offset: 0x618
    // Size: 0x1fc
    function setup_clientfields(*var_ef8933e3, *var_61963aa5, var_964ac54, *var_a584bc49, var_52a170c, var_4e7bf429, var_9a88505e, var_e805c474, var_f1a2774e, var_c22b2a20) {
        cluielem::setup_clientfields("onslaught_hud");
        cluielem::function_dcb34c80("string", "bossAlertText", 1);
        cluielem::function_dcb34c80("string", "objective2Text", 1);
        cluielem::add_clientfield("score3Points", 1, 8, "int", var_a584bc49);
        cluielem::function_dcb34c80("string", "objectiveText", 1);
        cluielem::add_clientfield("showEndScore", 1, 1, "int", var_52a170c);
        cluielem::add_clientfield("showScore", 1, 1, "int", var_4e7bf429);
        cluielem::add_clientfield("showObjective", 1, 1, "int", var_9a88505e);
        cluielem::add_clientfield("showBossAlert", 1, 1, "int", var_e805c474);
        cluielem::add_clientfield("showObjective2", 1, 1, "int", var_f1a2774e);
        cluielem::add_clientfield("showLottoLoadouts", 1, 2, "int", var_c22b2a20);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0xd8264e2a, Offset: 0xac8
    // Size: 0x30
    function function_9b5f8a75(localclientnum, value) {
        set_data(localclientnum, "showEndScore", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0x4991d43d, Offset: 0xa20
    // Size: 0x30
    function function_9c1c0811(localclientnum, value) {
        set_data(localclientnum, "objective2Text", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0x51ef879d, Offset: 0x9e8
    // Size: 0x30
    function function_b73d2d7c(localclientnum, value) {
        set_data(localclientnum, "bossAlertText", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0x9fe07669, Offset: 0xb38
    // Size: 0x30
    function function_d0a02472(localclientnum, value) {
        set_data(localclientnum, "showObjective", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0x604eea20, Offset: 0xba8
    // Size: 0x30
    function function_d6b5fdc4(localclientnum, value) {
        set_data(localclientnum, "showObjective2", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0x525434b0, Offset: 0xb00
    // Size: 0x30
    function function_da96c24e(localclientnum, value) {
        set_data(localclientnum, "showScore", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0xe59e2109, Offset: 0xa90
    // Size: 0x30
    function set_objectivetext(localclientnum, value) {
        set_data(localclientnum, "objectiveText", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 1, eflags: 0x0
    // Checksum 0xc31adb10, Offset: 0x848
    // Size: 0x164
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "bossAlertText", #"");
        set_data(localclientnum, "objective2Text", #"");
        set_data(localclientnum, "score3Points", 0);
        set_data(localclientnum, "objectiveText", #"");
        set_data(localclientnum, "showEndScore", 0);
        set_data(localclientnum, "showScore", 0);
        set_data(localclientnum, "showObjective", 0);
        set_data(localclientnum, "showBossAlert", 0);
        set_data(localclientnum, "showObjective2", 0);
        set_data(localclientnum, "showLottoLoadouts", 0);
    }

}

// Namespace onslaught_hud/onslaught_hud
// Params 10, eflags: 0x0
// Checksum 0x7fd478cb, Offset: 0x188
// Size: 0x1ce
function register(var_ef8933e3, var_61963aa5, var_964ac54, var_a584bc49, var_52a170c, var_4e7bf429, var_9a88505e, var_e805c474, var_f1a2774e, var_c22b2a20) {
    elem = new class_b6739d61();
    [[ elem ]]->setup_clientfields(var_ef8933e3, var_61963aa5, var_964ac54, var_a584bc49, var_52a170c, var_4e7bf429, var_9a88505e, var_e805c474, var_f1a2774e, var_c22b2a20);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"onslaught_hud"])) {
        level.var_ae746e8f[#"onslaught_hud"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"onslaught_hud"])) {
        level.var_ae746e8f[#"onslaught_hud"] = [];
    } else if (!isarray(level.var_ae746e8f[#"onslaught_hud"])) {
        level.var_ae746e8f[#"onslaught_hud"] = array(level.var_ae746e8f[#"onslaught_hud"]);
    }
    level.var_ae746e8f[#"onslaught_hud"][level.var_ae746e8f[#"onslaught_hud"].size] = elem;
}

// Namespace onslaught_hud/onslaught_hud
// Params 0, eflags: 0x0
// Checksum 0xb3539b92, Offset: 0x360
// Size: 0x34
function register_clientside() {
    elem = new class_b6739d61();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace onslaught_hud/onslaught_hud
// Params 1, eflags: 0x0
// Checksum 0x145b9d2b, Offset: 0x3a0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace onslaught_hud/onslaught_hud
// Params 1, eflags: 0x0
// Checksum 0x98e325cb, Offset: 0x3c8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace onslaught_hud/onslaught_hud
// Params 1, eflags: 0x0
// Checksum 0xe2b9cd1c, Offset: 0x3f0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0xa9a07eb7, Offset: 0x418
// Size: 0x28
function function_b73d2d7c(localclientnum, value) {
    [[ self ]]->function_b73d2d7c(localclientnum, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0xb5f435a1, Offset: 0x448
// Size: 0x28
function function_9c1c0811(localclientnum, value) {
    [[ self ]]->function_9c1c0811(localclientnum, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0x27dec3e2, Offset: 0x478
// Size: 0x28
function function_2a0b1f84(localclientnum, value) {
    [[ self ]]->function_2a0b1f84(localclientnum, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0x6fef38ed, Offset: 0x4a8
// Size: 0x28
function set_objectivetext(localclientnum, value) {
    [[ self ]]->set_objectivetext(localclientnum, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0xa870392e, Offset: 0x4d8
// Size: 0x28
function function_9b5f8a75(localclientnum, value) {
    [[ self ]]->function_9b5f8a75(localclientnum, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0xeff69512, Offset: 0x508
// Size: 0x28
function function_da96c24e(localclientnum, value) {
    [[ self ]]->function_da96c24e(localclientnum, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0xff1ef472, Offset: 0x538
// Size: 0x28
function function_d0a02472(localclientnum, value) {
    [[ self ]]->function_d0a02472(localclientnum, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0x8a03a147, Offset: 0x568
// Size: 0x28
function function_1c28d7c2(localclientnum, value) {
    [[ self ]]->function_1c28d7c2(localclientnum, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0x66354e0c, Offset: 0x598
// Size: 0x28
function function_d6b5fdc4(localclientnum, value) {
    [[ self ]]->function_d6b5fdc4(localclientnum, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0x1ed6475f, Offset: 0x5c8
// Size: 0x28
function function_71fd1345(localclientnum, value) {
    [[ self ]]->function_71fd1345(localclientnum, value);
}

