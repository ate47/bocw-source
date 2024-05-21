// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_32399001bdb550da;
#using scripts\cp_common\collectibles.gsc;

#namespace player_decision;

// Namespace player_decision/player_decision
// Params 0, eflags: 0x5
// Checksum 0xea8cbd0f, Offset: 0xc0
// Size: 0x34
function private autoexec __init__system__() {
    system::register("player_decision", &preinit, undefined, undefined, undefined);
}

// Namespace player_decision/player_decision
// Params 0, eflags: 0x6 linked
// Checksum 0x91293c20, Offset: 0x100
// Size: 0x1b4
function private preinit() {
    /#
        if (!isdefined(level.var_cc2922d)) {
            level.var_cc2922d = [];
        }
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
        util::init_dvar("<unknown string>", -1, &function_db698ba5);
    #/
}

/#

    // Namespace player_decision/player_decision
    // Params 1, eflags: 0x4
    // Checksum 0xdee6ac49, Offset: 0x2c0
    // Size: 0x3c
    function private function_db698ba5(dvar) {
        level.var_cc2922d[dvar.name] = int(dvar.value);
    }

#/

// Namespace player_decision/player_decision
// Params 2, eflags: 0x6 linked
// Checksum 0x9228ed78, Offset: 0x308
// Size: 0xa8
function private function_4f0f89(var_6176a8ab, var_de282b38) {
    var_6c8b1954 = savegame::function_6440b06b(#"transient");
    if (!isdefined(var_6c8b1954.var_6e64bcd)) {
        var_6c8b1954.var_6e64bcd = [];
    } else if (!isarray(var_6c8b1954.var_6e64bcd)) {
        var_6c8b1954.var_6e64bcd = array(var_6c8b1954.var_6e64bcd);
    }
    var_6c8b1954.var_6e64bcd[var_6176a8ab] = var_de282b38;
}

// Namespace player_decision/player_decision
// Params 2, eflags: 0x6 linked
// Checksum 0x39837c0e, Offset: 0x3b8
// Size: 0x7c
function private function_9240114e(var_6176a8ab, default_value) {
    var_6c8b1954 = savegame::function_6440b06b(#"transient");
    if (isdefined(var_6c8b1954.var_6e64bcd[var_6176a8ab])) {
        return var_6c8b1954.var_6e64bcd[var_6176a8ab];
    }
    return savegame::function_2ee66e93(var_6176a8ab, default_value);
}

// Namespace player_decision/player_decision
// Params 0, eflags: 0x2 linked
// Checksum 0xe0443ffb, Offset: 0x440
// Size: 0xc8
function function_d04c220e() {
    var_6c8b1954 = savegame::function_6440b06b(#"transient");
    if (!isdefined(var_6c8b1954.var_6e64bcd)) {
        return;
    }
    foreach (var_6176a8ab, var_de282b38 in var_6c8b1954.var_6e64bcd) {
        savegame::set_player_data(var_6176a8ab, var_de282b38);
    }
}

// Namespace player_decision/player_decision
// Params 1, eflags: 0x2 linked
// Checksum 0xdfe3945c, Offset: 0x510
// Size: 0xe4
function function_ff7e19cb(var_6aeabb95) {
    /#
        var_2c1ecd1d = [0, 1, 2];
        if (!isinarray(var_2c1ecd1d, var_6aeabb95)) {
            assertmsg("<unknown string>" + var_6aeabb95);
        }
    #/
    function_4f0f89(#"hash_3650eaf15ceb89e7", var_6aeabb95);
    if (var_6aeabb95 == 2) {
        getplayers()[0] stats::function_dad108fa(#"hash_2fe1208e904dc380", 1);
    }
}

// Namespace player_decision/player_decision
// Params 0, eflags: 0x2 linked
// Checksum 0x8bbc1c30, Offset: 0x600
// Size: 0x100
function function_1c4fb6d4() {
    var_313a5853 = int(function_9240114e(#"hash_3650eaf15ceb89e7", 0));
    /#
        if (level.var_cc2922d[#"hash_3c471eb0b4890d28"] >= 0) {
            var_313a5853 = level.var_cc2922d[#"hash_3c471eb0b4890d28"];
        }
        var_2c1ecd1d = [0, 1, 2];
        if (!isinarray(var_2c1ecd1d, var_313a5853)) {
            assertmsg("<unknown string>" + var_313a5853);
        }
    #/
    return var_313a5853;
}

// Namespace player_decision/player_decision
// Params 1, eflags: 0x2 linked
// Checksum 0xc5fdb2e3, Offset: 0x708
// Size: 0x9c
function function_cde4f4e9(var_fda79bf3) {
    /#
        var_2c1ecd1d = [0, 1];
        if (!isinarray(var_2c1ecd1d, var_fda79bf3)) {
            assertmsg("<unknown string>" + var_fda79bf3);
        }
    #/
    function_4f0f89(#"hash_5cdfba0959eb3c63", var_fda79bf3);
}

// Namespace player_decision/player_decision
// Params 0, eflags: 0x0
// Checksum 0x3e852d56, Offset: 0x7b0
// Size: 0xf8
function function_d9f060cc() {
    var_fda79bf3 = int(function_9240114e(#"hash_5cdfba0959eb3c63", 0));
    /#
        if (level.var_cc2922d[#"hash_1d0ba9436c1b8160"] >= 0) {
            var_fda79bf3 = level.var_cc2922d[#"hash_1d0ba9436c1b8160"];
        }
        var_2c1ecd1d = [0, 1];
        if (!isinarray(var_2c1ecd1d, var_fda79bf3)) {
            assertmsg("<unknown string>" + var_fda79bf3);
        }
    #/
    return var_fda79bf3;
}

// Namespace player_decision/player_decision
// Params 1, eflags: 0x0
// Checksum 0x88448a6e, Offset: 0x8b0
// Size: 0x2c
function function_83bb4d9c(iskilled) {
    function_4f0f89(#"hash_78916ab4267af9ff", iskilled);
}

// Namespace player_decision/player_decision
// Params 0, eflags: 0x0
// Checksum 0xcd443f82, Offset: 0x8e8
// Size: 0x62
function function_2da4c32c() {
    /#
        if (level.var_cc2922d[#"hash_4ba5f5e5135a166e"] >= 0) {
            return level.var_cc2922d[#"hash_4ba5f5e5135a166e"];
        }
    #/
    return function_9240114e(#"hash_78916ab4267af9ff", 0);
}

// Namespace player_decision/player_decision
// Params 1, eflags: 0x2 linked
// Checksum 0x83ec6796, Offset: 0x958
// Size: 0x6c
function function_a029a114(iskilled) {
    function_4f0f89(#"hash_2209b7d4d5e867da", iskilled);
    if (!iskilled) {
        getplayers()[0] stats::function_dad108fa(#"hash_397cbd8ba6842423", 1);
    }
}

// Namespace player_decision/player_decision
// Params 0, eflags: 0x0
// Checksum 0xda4be3d3, Offset: 0x9d0
// Size: 0x62
function function_251a57bb() {
    /#
        if (level.var_cc2922d[#"hash_3ac48e6f15883c17"] >= 0) {
            return level.var_cc2922d[#"hash_3ac48e6f15883c17"];
        }
    #/
    return function_9240114e(#"hash_2209b7d4d5e867da", 0);
}

// Namespace player_decision/player_decision
// Params 1, eflags: 0x0
// Checksum 0x9d5b3679, Offset: 0xa40
// Size: 0xa4
function function_5d2eb7fa(iskilled) {
    function_4f0f89(#"hash_19be69882298b84a", iskilled);
    if (!iskilled) {
        getplayers()[0] stats::function_dad108fa(#"hash_a8df4bf1b167949", 1);
        return;
    }
    getplayers()[0] stats::function_dad108fa(#"hash_3449b16b901d6430", 1);
}

// Namespace player_decision/player_decision
// Params 0, eflags: 0x0
// Checksum 0xf7f89187, Offset: 0xaf0
// Size: 0x62
function function_5584c739() {
    /#
        if (level.var_cc2922d[#"hash_653b4358e2685205"] >= 0) {
            return level.var_cc2922d[#"hash_653b4358e2685205"];
        }
    #/
    return function_9240114e(#"hash_19be69882298b84a", 0);
}

// Namespace player_decision/player_decision
// Params 1, eflags: 0x0
// Checksum 0x915be15, Offset: 0xb60
// Size: 0x2c
function function_b95efbcd(iskilled) {
    function_4f0f89(#"hash_2c88ea06da308fcc", iskilled);
}

// Namespace player_decision/player_decision
// Params 0, eflags: 0x0
// Checksum 0x42b0a8c8, Offset: 0xb98
// Size: 0x62
function function_733a5c27() {
    /#
        if (level.var_cc2922d[#"hash_5050d4ae63037c35"] >= 0) {
            return level.var_cc2922d[#"hash_5050d4ae63037c35"];
        }
    #/
    return function_9240114e(#"hash_2c88ea06da308fcc", 0);
}

// Namespace player_decision/player_decision
// Params 0, eflags: 0x2 linked
// Checksum 0xd2caaef0, Offset: 0xc08
// Size: 0x5a
function function_fc8e281d() {
    /#
        if (level.var_cc2922d[#"hash_709460f14c72da1d"] >= 0) {
            return level.var_cc2922d[#"hash_709460f14c72da1d"];
        }
    #/
    return savegame::function_ac15668a(#"cp_sidemission_tundra");
}

// Namespace player_decision/player_decision
// Params 1, eflags: 0x2 linked
// Checksum 0xe1a846cb, Offset: 0xc70
// Size: 0x4c
function function_e0bd7f7a(var_b8291d8f) {
    assert(var_b8291d8f <= 3);
    savegame::set_player_data(#"hash_ce196830d20c798", var_b8291d8f);
}

// Namespace player_decision/player_decision
// Params 0, eflags: 0x2 linked
// Checksum 0x48f2bd6f, Offset: 0xcc8
// Size: 0x7a
function function_e40c7d56() {
    /#
        if (level.var_cc2922d[#"hash_395dca7924a7661c"] >= 0) {
            return level.var_cc2922d[#"hash_395dca7924a7661c"];
        }
    #/
    if (!function_fc8e281d()) {
        return 0;
    }
    return savegame::function_2ee66e93(#"hash_ce196830d20c798", 0);
}

// Namespace player_decision/player_decision
// Params 0, eflags: 0x2 linked
// Checksum 0x876ae659, Offset: 0xd50
// Size: 0x64
function function_557c31b1() {
    savegame::set_player_data(#"hash_1353a738ffed49d7", 1);
    getplayers()[0] stats::function_dad108fa(#"hash_40fb0ec1661625f4", 1);
}

// Namespace player_decision/player_decision
// Params 0, eflags: 0x2 linked
// Checksum 0xfc31cb68, Offset: 0xdc0
// Size: 0x62
function function_ee124ba3() {
    /#
        if (level.var_cc2922d[#"hash_9b807de107e21ef"] >= 0) {
            return level.var_cc2922d[#"hash_9b807de107e21ef"];
        }
    #/
    return savegame::function_2ee66e93(#"hash_1353a738ffed49d7", 0);
}

// Namespace player_decision/player_decision
// Params 0, eflags: 0x0
// Checksum 0x1dbc84c4, Offset: 0xe30
// Size: 0x5a
function function_c8718964() {
    /#
        if (level.var_cc2922d[#"hash_2576aa389eb6fa86"] >= 0) {
            return level.var_cc2922d[#"hash_2576aa389eb6fa86"];
        }
    #/
    return savegame::function_ac15668a(#"cp_sidemission_takedown");
}

// Namespace player_decision/player_decision
// Params 1, eflags: 0x2 linked
// Checksum 0x29f02c4e, Offset: 0xe98
// Size: 0x158
function function_8c0836dd(var_2b7725a) {
    assert(var_2b7725a >= 0 && var_2b7725a < 10);
    var_6c8b1954 = savegame::function_6440b06b(#"transient");
    if (!isdefined(var_6c8b1954.var_f4d7790b)) {
        var_6c8b1954.var_f4d7790b = [];
    } else if (!isarray(var_6c8b1954.var_f4d7790b)) {
        var_6c8b1954.var_f4d7790b = array(var_6c8b1954.var_f4d7790b);
    }
    if (!isdefined(var_6c8b1954.var_f4d7790b)) {
        var_6c8b1954.var_f4d7790b = [];
    } else if (!isarray(var_6c8b1954.var_f4d7790b)) {
        var_6c8b1954.var_f4d7790b = array(var_6c8b1954.var_f4d7790b);
    }
    if (!isinarray(var_6c8b1954.var_f4d7790b, var_2b7725a)) {
        var_6c8b1954.var_f4d7790b[var_6c8b1954.var_f4d7790b.size] = var_2b7725a;
    }
}

// Namespace player_decision/player_decision
// Params 2, eflags: 0x2 linked
// Checksum 0xaf813fe7, Offset: 0xff8
// Size: 0x54
function function_430ebd4b(var_2b7725a, var_2a51713) {
    if (is_true(collectibles::function_ab921f3d(var_2a51713))) {
        function_8c0836dd(var_2b7725a);
    }
}

// Namespace player_decision/player_decision
// Params 2, eflags: 0x2 linked
// Checksum 0x5fa076ef, Offset: 0x1058
// Size: 0x122
function function_6efc0ff8(var_3740aa91, var_2b7725a) {
    assert(var_2b7725a >= 0 && var_2b7725a < 10);
    var_a268cecc = savegame::function_8136eb5a();
    if (var_3740aa91 == var_a268cecc) {
        var_6c8b1954 = savegame::function_6440b06b(#"transient");
        if (isdefined(var_6c8b1954.var_f4d7790b) && isinarray(var_6c8b1954.var_f4d7790b, var_2b7725a)) {
            return 1;
        }
    }
    player = getplayers()[0];
    return player stats::get_stat(#"mapdata", var_3740aa91, #"hash_43a738b893199779", var_2b7725a);
}

// Namespace player_decision/player_decision
// Params 0, eflags: 0x2 linked
// Checksum 0xf766b484, Offset: 0x1188
// Size: 0x15c
function function_ef22e409() {
    var_6c8b1954 = savegame::function_6440b06b(#"transient");
    if (!isdefined(var_6c8b1954.var_f4d7790b)) {
        return;
    }
    player = getplayers()[0];
    var_a268cecc = savegame::function_8136eb5a();
    for (var_2b7725a = 0; var_2b7725a < 10; var_2b7725a++) {
        if (isinarray(var_6c8b1954.var_f4d7790b, var_2b7725a)) {
            player stats::set_stat(#"mapdata", var_a268cecc, #"hash_43a738b893199779", var_2b7725a, 1);
            continue;
        }
        player stats::set_stat(#"mapdata", var_a268cecc, #"hash_43a738b893199779", var_2b7725a, 0);
    }
    player function_d0c3d0ce();
    uploadstats(player);
}

// Namespace player_decision/player_decision
// Params 0, eflags: 0x6 linked
// Checksum 0x6cf4c646, Offset: 0x12f0
// Size: 0x4b4
function private function_d0c3d0ce() {
    player = self;
    var_a268cecc = savegame::function_8136eb5a();
    var_6c8b1954 = savegame::function_6440b06b(#"transient");
    if (var_a268cecc == #"cp_ger_stakeout") {
        if (!isinarray(var_6c8b1954.var_f4d7790b, 4)) {
            player stats::set_stat(#"mapdata", #"cp_rus_kgb", #"hash_43a738b893199779", 2, 0);
        }
        return;
    }
    if (var_a268cecc == #"cp_ger_hub8") {
        if (isinarray(var_6c8b1954.var_f4d7790b, 0)) {
            player stats::set_stat(#"mapdata", #"cp_rus_duga", #"hash_43a738b893199779", 0, 0);
            player stats::set_stat(#"mapdata", #"cp_rus_duga", #"hash_43a738b893199779", 1, 0);
        }
        if (isinarray(var_6c8b1954.var_f4d7790b, 1)) {
            player stats::set_stat(#"mapdata", #"cp_rus_siege", #"hash_43a738b893199779", 0, 0);
        }
        return;
    }
    if (var_a268cecc == #"cp_rus_siege") {
        if (isinarray(var_6c8b1954.var_f4d7790b, 0)) {
            player stats::set_stat(#"mapdata", #"cp_rus_duga", #"hash_43a738b893199779", 0, 0);
            player stats::set_stat(#"mapdata", #"cp_rus_duga", #"hash_43a738b893199779", 1, 0);
            player stats::set_stat(#"mapdata", #"cp_ger_hub8", #"hash_43a738b893199779", 0, 1);
            player stats::set_stat(#"mapdata", #"cp_ger_hub8", #"hash_43a738b893199779", 1, 0);
            player stats::set_stat(#"mapdata", #"cp_ger_hub8", #"hash_43a738b893199779", 2, 0);
        }
        return;
    }
    if (var_a268cecc == #"cp_rus_duga") {
        if (isinarray(var_6c8b1954.var_f4d7790b, 0)) {
            player stats::set_stat(#"mapdata", #"cp_rus_siege", #"hash_43a738b893199779", 0, 0);
            player stats::set_stat(#"mapdata", #"cp_ger_hub8", #"hash_43a738b893199779", 0, 0);
            player stats::set_stat(#"mapdata", #"cp_ger_hub8", #"hash_43a738b893199779", 1, 1);
        }
    }
}

