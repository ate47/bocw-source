// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace onslaught_hud;

// Namespace onslaught_hud
// Method(s) 15 Total 22
class class_b6739d61 : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0x81371b53, Offset: 0x618
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0x8f7a441d, Offset: 0x8c0
    // Size: 0x44
    function function_1c28d7c2(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "showBossAlert", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0xdce18c8a, Offset: 0x730
    // Size: 0x44
    function function_2a0b1f84(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "score3Points", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 1, eflags: 0x0
    // Checksum 0x2d0b6487, Offset: 0x660
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0x9437c19b, Offset: 0x960
    // Size: 0x44
    function function_71fd1345(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "showLottoLoadouts", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 0, eflags: 0x0
    // Checksum 0x2226b348, Offset: 0x460
    // Size: 0x1ac
    function setup_clientfields() {
        cluielem::setup_clientfields("onslaught_hud");
        cluielem::function_dcb34c80("string", "bossAlertText", 1);
        cluielem::function_dcb34c80("string", "objective2Text", 1);
        cluielem::add_clientfield("score3Points", 1, 8, "int");
        cluielem::function_dcb34c80("string", "objectiveText", 1);
        cluielem::add_clientfield("showEndScore", 1, 1, "int");
        cluielem::add_clientfield("showScore", 1, 1, "int");
        cluielem::add_clientfield("showObjective", 1, 1, "int");
        cluielem::add_clientfield("showBossAlert", 1, 1, "int");
        cluielem::add_clientfield("showObjective2", 1, 1, "int");
        cluielem::add_clientfield("showLottoLoadouts", 1, 2, "int");
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0xe231a804, Offset: 0x7d0
    // Size: 0x44
    function function_9b5f8a75(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "showEndScore", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0x5ac35a0b, Offset: 0x6e0
    // Size: 0x44
    function function_9c1c0811(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "objective2Text", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0x86d96eb3, Offset: 0x690
    // Size: 0x44
    function function_b73d2d7c(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "bossAlertText", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0xe6b0e967, Offset: 0x870
    // Size: 0x44
    function function_d0a02472(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "showObjective", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0x29b77a02, Offset: 0x910
    // Size: 0x44
    function function_d6b5fdc4(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "showObjective2", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0x15d36c8d, Offset: 0x820
    // Size: 0x44
    function function_da96c24e(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "showScore", value);
    }

    // Namespace namespace_b6739d61/onslaught_hud
    // Params 2, eflags: 0x0
    // Checksum 0xf795a7c, Offset: 0x780
    // Size: 0x44
    function set_objectivetext(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "objectiveText", value);
    }

}

// Namespace onslaught_hud/onslaught_hud
// Params 0, eflags: 0x0
// Checksum 0x91f5c152, Offset: 0x190
// Size: 0x34
function register() {
    elem = new class_b6739d61();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0x22b7d0a0, Offset: 0x1d0
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace onslaught_hud/onslaught_hud
// Params 1, eflags: 0x0
// Checksum 0xbeec1ac2, Offset: 0x210
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace onslaught_hud/onslaught_hud
// Params 1, eflags: 0x0
// Checksum 0xd0ca6291, Offset: 0x238
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0xb82032c8, Offset: 0x260
// Size: 0x28
function function_b73d2d7c(player, value) {
    [[ self ]]->function_b73d2d7c(player, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0xfd98646f, Offset: 0x290
// Size: 0x28
function function_9c1c0811(player, value) {
    [[ self ]]->function_9c1c0811(player, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0x10eeb114, Offset: 0x2c0
// Size: 0x28
function function_2a0b1f84(player, value) {
    [[ self ]]->function_2a0b1f84(player, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0xc9cddcdc, Offset: 0x2f0
// Size: 0x28
function set_objectivetext(player, value) {
    [[ self ]]->set_objectivetext(player, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0x801a28d4, Offset: 0x320
// Size: 0x28
function function_9b5f8a75(player, value) {
    [[ self ]]->function_9b5f8a75(player, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0xe5b6bac3, Offset: 0x350
// Size: 0x28
function function_da96c24e(player, value) {
    [[ self ]]->function_da96c24e(player, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0x47ba03ad, Offset: 0x380
// Size: 0x28
function function_d0a02472(player, value) {
    [[ self ]]->function_d0a02472(player, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0x1b49f9db, Offset: 0x3b0
// Size: 0x28
function function_1c28d7c2(player, value) {
    [[ self ]]->function_1c28d7c2(player, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0x3dc4feee, Offset: 0x3e0
// Size: 0x28
function function_d6b5fdc4(player, value) {
    [[ self ]]->function_d6b5fdc4(player, value);
}

// Namespace onslaught_hud/onslaught_hud
// Params 2, eflags: 0x0
// Checksum 0xeaae4b3, Offset: 0x410
// Size: 0x28
function function_71fd1345(player, value) {
    [[ self ]]->function_71fd1345(player, value);
}

