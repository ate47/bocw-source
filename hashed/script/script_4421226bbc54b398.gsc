// Atian COD Tools GSC CW decompiler test
#using script_5e96d104c70be5ac;
#using scripts\zm_common\zm_score.gsc;
#using script_18077945bb84ede7;
#using scripts\zm_common\callbacks.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_contracts.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_d4ecbbf0;

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 0, eflags: 0x5
// Checksum 0x63ce5aad, Offset: 0x378
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_6750752a31e788e2", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 0, eflags: 0x6 linked
// Checksum 0xa7014598, Offset: 0x3c0
// Size: 0x12c
function private preinit() {
    callback::on_item_pickup(&on_item_pickup);
    callback::add_callback(#"objective_ended", &function_37c1c391);
    callback::on_connect(&_on_player_connect);
    level.var_da7a41e7 = 0;
    level.var_e5e795ee = 0;
    level.var_7d3f22bd = 0;
    level.var_e578d0db = 0;
    level.var_5ed8f6ba = 0;
    level.var_8a84008 = 0;
    level.var_97f56902 = 0;
    level.var_fb82a5bd = 0;
    if (zm_utility::is_classic()) {
        level thread function_d5926b26();
    }
    /#
        level function_14defa19();
        level thread function_868c9a6e();
    #/
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 0, eflags: 0x2 linked
// Checksum 0x1e427b09, Offset: 0x4f8
// Size: 0xd0
function function_d5926b26() {
    level endon(#"game_ended");
    level flag::wait_till(#"main_quest_completed");
    foreach (player in getplayers()) {
        player function_e6a712db(1);
    }
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 0, eflags: 0x6 linked
// Checksum 0xb473e803, Offset: 0x5d0
// Size: 0x394
function private _on_player_connect() {
    var_584385da = self stats::get_stat(#"hash_65febbdf3f1ab4d7", #"rare");
    var_747e72f5 = self stats::get_stat(#"hash_65febbdf3f1ab4d7", #"epic");
    var_25f431fd = self stats::get_stat(#"hash_65febbdf3f1ab4d7", #"legendary");
    var_31f76426 = self stats::get_stat(#"hash_51b649399e73640c", #"rare");
    var_70e5cdc5 = self stats::get_stat(#"hash_51b649399e73640c", #"epic");
    var_a014dfc0 = self stats::get_stat(#"hash_51b649399e73640c", #"legendary");
    if (isint(var_584385da) && var_584385da > 198) {
        self stats::set_stat(#"hash_65febbdf3f1ab4d7", #"rare", 198);
    }
    if (isint(var_31f76426) && var_31f76426 > 198) {
        self stats::set_stat(#"hash_51b649399e73640c", #"rare", 198);
    }
    if (isint(var_747e72f5) && var_747e72f5 > 132) {
        self stats::set_stat(#"hash_65febbdf3f1ab4d7", #"epic", 132);
    }
    if (isint(var_70e5cdc5) && var_70e5cdc5 > 132) {
        self stats::set_stat(#"hash_51b649399e73640c", #"epic", 132);
    }
    if (isint(var_25f431fd) && var_25f431fd > 165) {
        self stats::set_stat(#"hash_65febbdf3f1ab4d7", #"legendary", 165);
    }
    if (isint(var_a014dfc0) && var_a014dfc0 > 165) {
        self stats::set_stat(#"hash_51b649399e73640c", #"legendary", 165);
    }
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x6 linked
// Checksum 0x8c679511, Offset: 0x970
// Size: 0x62
function private function_6daf57e7(type) {
    switch (type) {
    case #"rare":
        return 1;
    case #"epic":
        return 2;
    case #"legendary":
        return 3;
    }
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 2, eflags: 0x2 linked
// Checksum 0x254aa2ee, Offset: 0x9e0
// Size: 0xfc
function function_7b6ac8d5(type, reason = undefined) {
    level endon(#"game_ended");
    self endon(#"death");
    n_delay = isdefined(level.var_d1572d48) ? level.var_d1572d48 : 5;
    wait(n_delay);
    if (zm_utility::function_1a01f2f7(self)) {
        return;
    }
    if (isdefined(reason)) {
        self luinotifyevent(#"hash_79cee3d30d7eb785", 2, type, reason);
        return;
    }
    self luinotifyevent(#"hash_79cee3d30d7eb785", 1, type);
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x2 linked
// Checksum 0x46005658, Offset: 0xae8
// Size: 0x124
function function_e439076f(var_5937b8ee) {
    level endon(#"game_ended");
    self endon(#"death");
    wait(5);
    level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:self, #scoreevent:var_5937b8ee});
    assert(isdefined(level.scoreinfo[var_5937b8ee][#"xp"]), "<unknown string>");
    var_370ac26d = level.scoreinfo[var_5937b8ee][#"xp"];
    self luinotifyevent(#"hash_6743fb07d8c3b4b0", 1, var_370ac26d);
    namespace_8d0ae0b4::function_b9cd2b6c(var_370ac26d);
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 3, eflags: 0x6 linked
// Checksum 0xeb145e4f, Offset: 0xc18
// Size: 0xb4
function private function_2ea9419c(type, amount = 1, var_8e592166 = 1) {
    if (zm_utility::function_1a01f2f7(self)) {
        return;
    }
    self stats::inc_stat(#"hash_65febbdf3f1ab4d7", type, amount);
    if (is_true(var_8e592166)) {
        self thread function_6e4a862f(type, amount);
    }
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 2, eflags: 0x6 linked
// Checksum 0xfb555a90, Offset: 0xcd8
// Size: 0x9c
function private function_6e4a862f(type, amount) {
    level endon(#"game_ended");
    self endon(#"death");
    wait(5);
    typeindex = function_6daf57e7(type);
    if (isdefined(typeindex)) {
        self luinotifyevent(#"hash_519f4dd76b2e3e49", 2, typeindex, amount);
    }
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 2, eflags: 0x2 linked
// Checksum 0xf97d211, Offset: 0xd80
// Size: 0xfc
function function_d59d7b74(amount = 1, var_8e592166 = 1) {
    var_1c26a346 = stats::get_stat(#"hash_65febbdf3f1ab4d7", #"rare");
    if (!isint(var_1c26a346)) {
        var_1c26a346 = 0;
    }
    if (var_1c26a346 >= 198) {
        return;
    }
    var_e867d41f = var_1c26a346 + amount;
    if (var_e867d41f > 198) {
        amount = 198 - var_1c26a346;
        if (amount < 0) {
            return;
        }
    }
    function_2ea9419c(#"rare", amount, var_8e592166);
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 2, eflags: 0x2 linked
// Checksum 0xbcd1d4b0, Offset: 0xe88
// Size: 0xfc
function function_89a45cd4(amount = 1, var_8e592166 = 1) {
    var_34979522 = stats::get_stat(#"hash_65febbdf3f1ab4d7", #"epic");
    if (!isint(var_34979522)) {
        var_34979522 = 0;
    }
    if (var_34979522 >= 132) {
        return;
    }
    var_4c9e77b1 = var_34979522 + amount;
    if (var_4c9e77b1 > 132) {
        amount = 132 - var_34979522;
        if (amount < 0) {
            return;
        }
    }
    function_2ea9419c(#"epic", amount, var_8e592166);
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 2, eflags: 0x2 linked
// Checksum 0x70ae096b, Offset: 0xf90
// Size: 0xfc
function function_74f5b460(amount = 1, var_8e592166 = 1) {
    var_abde766a = stats::get_stat(#"hash_65febbdf3f1ab4d7", #"legendary");
    if (!isint(var_abde766a)) {
        var_abde766a = 0;
    }
    if (var_abde766a >= 165) {
        return;
    }
    var_2fae51d5 = var_abde766a + amount;
    if (var_2fae51d5 > 165) {
        amount = 165 - var_abde766a;
        if (amount < 0) {
            return;
        }
    }
    function_2ea9419c(#"legendary", amount, var_8e592166);
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x2 linked
// Checksum 0x5c6755e9, Offset: 0x1098
// Size: 0xf0
function function_37c1c391(eventstruct) {
    if (level.var_fdcaf3a6 === level.contentmanager.var_1d9d92ba) {
        return;
    }
    if (!is_true(eventstruct.completed)) {
        return;
    }
    players = getplayers();
    foreach (player in players) {
        player function_73cddc69();
    }
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x6 linked
// Checksum 0x766704aa, Offset: 0x1190
// Size: 0x12a
function private function_3e6a3070(var_b48509f9) {
    switch (var_b48509f9) {
    case 1:
        return "exfil_sr_rank_1";
    case 2:
        return "exfil_sr_rank_2";
    case 3:
        return "exfil_sr_rank_3";
    case 4:
        return "exfil_sr_rank_4";
    case 5:
        return "exfil_sr_rank_5";
    case 6:
        return "exfil_sr_rank_6";
    case 7:
        return "exfil_sr_rank_7";
    case 8:
        return "exfil_sr_rank_8";
    case 9:
        return "exfil_sr_rank_9";
    case 10:
        return "exfil_sr_rank_10";
    default:
        return "exfil_sr_rank_10";
    }
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x6 linked
// Checksum 0x5937c109, Offset: 0x12c8
// Size: 0x202
function private function_75ecd524(var_14326bba) {
    switch (var_14326bba) {
    case 10:
        return "exfil_rbz_round_10";
    case 15:
        return "exfil_rbz_round_15";
    case 20:
        return "exfil_rbz_round_20";
    case 25:
        return "exfil_rbz_round_25";
    case 30:
        return "exfil_rbz_round_30";
    case 35:
        return "exfil_rbz_round_35";
    case 40:
        return "exfil_rbz_round_40";
    case 45:
        return "exfil_rbz_round_45";
    case 50:
        return "exfil_rbz_round_50";
    case 55:
        return "exfil_rbz_round_55";
    case 60:
        return "exfil_rbz_round_60";
    case 65:
        return "exfil_rbz_round_65";
    case 70:
        return "exfil_rbz_round_70";
    case 75:
        return "exfil_rbz_round_75";
    case 80:
        return "exfil_rbz_round_80";
    case 85:
        return "exfil_rbz_round_85";
    case 90:
        return "exfil_rbz_round_90";
    case 95:
        return "exfil_rbz_round_95";
    case 100:
        return "exfil_rbz_round_100";
    }
    if (var_14326bba > 100) {
        return "exfil_rbz_round_100";
    }
    return undefined;
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x2 linked
// Checksum 0x38ee40d6, Offset: 0x14d8
// Size: 0xfc
function function_9ab33c13(var_b48509f9 = 1) {
    switch (var_b48509f9) {
    case 1:
    case 2:
    case 3:
        return 1;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
        return 2;
    case 9:
    case 10:
    default:
        return 3;
    }
    return 0;
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x2 linked
// Checksum 0x7cbfa6f8, Offset: 0x15e0
// Size: 0x104
function function_1cda88b8(var_b48509f9 = 1) {
    switch (var_b48509f9) {
    case 1:
        return 0;
    case 2:
    case 3:
    case 4:
        return 1;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
        return 2;
    case 10:
    default:
        return 3;
    }
    return 0;
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x2 linked
// Checksum 0x252d4c47, Offset: 0x16f0
// Size: 0x154
function function_b299bcd5(round = 10) {
    switch (round) {
    case 10:
        return 0;
    case 15:
    case 20:
    case 25:
        return 1;
    case 30:
    case 35:
    case 40:
    case 45:
    case 50:
        return 2;
    case 55:
    case 60:
    case 65:
    case 70:
    case 75:
    case 100:
    default:
        return 3;
    }
    return 0;
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x2 linked
// Checksum 0x923b1e48, Offset: 0x1850
// Size: 0x74
function function_15c36044(var_b48509f9 = 1) {
    switch (var_b48509f9) {
    case 1:
    case 2:
        return false;
    default:
        return true;
    }
    return false;
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x2 linked
// Checksum 0xfd475391, Offset: 0x18d0
// Size: 0x42c
function function_e6a712db(var_8e592166 = 1) {
    if (!is_true(level.onlinegame)) {
        var_8e592166 = 0;
    }
    self thread function_7b6ac8d5(4);
    if (zm_utility::is_survival()) {
        var_b48509f9 = zm_utility::function_e3025ca5();
        var_3bf72bdb = function_9ab33c13(var_b48509f9);
        function_d59d7b74(var_3bf72bdb, var_8e592166);
        if (is_true(getgametypesetting(#"hash_534a70940dadf3e7"))) {
            var_8f88887b = function_1cda88b8(var_b48509f9);
            var_a1b51775 = function_15c36044(var_b48509f9);
            if (var_8f88887b > 0) {
                function_89a45cd4(var_8f88887b, var_8e592166);
            }
            if (var_a1b51775 > 0) {
                function_74f5b460(var_a1b51775, var_8e592166);
            }
        }
        return;
    }
    round = level.round_number;
    if (round <= 11) {
        round = 10;
    } else if (round <= 16) {
        round = 15;
    } else if (round <= 21) {
        round = 20;
    } else if (round <= 26) {
        round = 25;
    } else if (round <= 31) {
        round = 30;
    } else if (round <= 36) {
        round = 35;
    } else if (round <= 41) {
        round = 40;
    } else if (round <= 46) {
        round = 45;
    } else if (round <= 51) {
        round = 50;
    } else if (round <= 56) {
        round = 55;
    } else if (round <= 61) {
        round = 60;
    } else if (round <= 56) {
        round = 65;
    } else if (round <= 71) {
        round = 70;
    } else if (round <= 76) {
        round = 75;
    } else if (round <= 81) {
        round = 80;
    } else if (round <= 86) {
        round = 85;
    } else if (round <= 91) {
        round = 90;
    } else if (round <= 96) {
        round = 95;
    } else {
        round = 100;
    }
    var_3bf72bdb = function_a5fde6a9(round);
    function_d59d7b74(var_3bf72bdb, var_8e592166);
    if (is_true(getgametypesetting(#"hash_534a70940dadf3e7"))) {
        var_8f88887b = function_b299bcd5(round);
        if (var_8f88887b > 0) {
            function_89a45cd4(var_8f88887b, var_8e592166);
        }
        if (round >= 20) {
            function_74f5b460(1, var_8e592166);
        }
    }
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x2 linked
// Checksum 0xbc9e730e, Offset: 0x1d08
// Size: 0x25a
function function_a5fde6a9(round) {
    var_32ea0039 = 1;
    switch (round) {
    case 10:
        var_eeeff6bf = 50;
        break;
    case 15:
        var_eeeff6bf = 75;
        break;
    case 20:
        break;
    case 25:
        var_32ea0039 = 2;
        break;
    case 30:
        var_32ea0039 = 2;
        break;
    case 35:
        var_32ea0039 = 2;
        break;
    case 40:
        var_32ea0039 = 2;
        break;
    case 45:
        var_32ea0039 = 2;
        break;
    case 50:
        var_32ea0039 = 3;
        break;
    case 55:
        var_32ea0039 = 3;
        break;
    case 60:
        var_32ea0039 = 3;
        break;
    case 65:
        var_32ea0039 = 3;
        break;
    case 70:
        var_32ea0039 = 4;
        break;
    case 75:
        var_32ea0039 = 4;
        break;
    case 80:
        var_32ea0039 = 4;
        break;
    case 85:
        var_32ea0039 = 4;
        break;
    case 90:
        var_32ea0039 = 5;
        break;
    case 95:
        var_32ea0039 = 5;
        break;
    case 100:
        var_32ea0039 = 5;
        break;
    }
    if (round > 100) {
        var_32ea0039 = 5;
    }
    return var_32ea0039;
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x2 linked
// Checksum 0x4e9600f4, Offset: 0x1f70
// Size: 0x35c
function function_3a2e46e0(var_8e592166 = 1) {
    if (!is_true(level.onlinegame)) {
        var_8e592166 = 0;
    }
    self thread function_7b6ac8d5(1);
    if (zm_utility::is_survival()) {
        var_b48509f9 = zm_utility::function_e3025ca5();
        var_5937b8ee = function_3e6a3070(var_b48509f9);
        self thread function_e439076f(var_5937b8ee);
        var_3bf72bdb = function_9ab33c13(var_b48509f9);
        function_d59d7b74(var_3bf72bdb, var_8e592166);
        if (is_true(getgametypesetting(#"hash_534a70940dadf3e7"))) {
            var_8f88887b = function_1cda88b8(var_b48509f9);
            var_a1b51775 = function_15c36044(var_b48509f9);
            if (var_8f88887b > 0) {
                function_89a45cd4(var_8f88887b, var_8e592166);
            }
            if (var_a1b51775 > 0) {
                function_74f5b460(var_a1b51775, var_8e592166);
            }
        }
        return;
    }
    round = level.round_number;
    var_1fb4cd01 = round - 1;
    var_eeeff6bf = 100;
    var_32ea0039 = function_a5fde6a9(var_1fb4cd01);
    var_5937b8ee = function_75ecd524(var_1fb4cd01);
    if (isdefined(var_5937b8ee)) {
        self thread function_e439076f(var_5937b8ee);
    }
    if (!is_true(level.var_da7a41e7)) {
        level.var_da7a41e7 = 1;
        if (math::cointoss(var_eeeff6bf)) {
            level.var_e5e795ee = 1;
        }
    }
    if (is_true(level.var_e5e795ee)) {
        function_d59d7b74(var_32ea0039, var_8e592166);
    }
    if (is_true(getgametypesetting(#"hash_534a70940dadf3e7"))) {
        var_8f88887b = function_b299bcd5(var_1fb4cd01);
        if (var_8f88887b > 0) {
            function_89a45cd4(var_8f88887b, var_8e592166);
        }
        if (var_1fb4cd01 >= 20) {
            function_74f5b460(1, var_8e592166);
        }
    }
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x2 linked
// Checksum 0x1cde0d6a, Offset: 0x22d8
// Size: 0x14e
function function_ef580a0c(var_8f426cc8) {
    if (zm_utility::is_survival()) {
        switch (var_8f426cc8) {
        case 1:
            return 1;
        case 2:
            return 2;
        case 3:
            return 3;
        case 4:
            return 4;
        default:
            return 5;
        }
    } else {
        switch (var_8f426cc8) {
        case 10:
            return 1;
        case 15:
            return 2;
        case 20:
            return 3;
        case 25:
            return 4;
        default:
            return 5;
        }
    }
    return 1;
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x2 linked
// Checksum 0xb670cf1f, Offset: 0x2430
// Size: 0x11e
function function_b03d7dd0(var_8f426cc8) {
    if (zm_utility::is_survival()) {
        switch (var_8f426cc8) {
        case 1:
            return 2;
        case 2:
            return 3;
        case 3:
            return 4;
        default:
            return 5;
        }
    } else {
        switch (var_8f426cc8) {
        case 10:
            return 2;
        case 15:
            return 3;
        case 20:
            return 4;
        default:
            return 5;
        }
    }
    return 1;
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 2, eflags: 0x2 linked
// Checksum 0x76ad2eb1, Offset: 0x2558
// Size: 0x512
function function_4f5dff62(starlevel = 1, type = #"rare") {
    switch (starlevel) {
    case 1:
        switch (type) {
        case #"rare":
            return 1;
        case #"epic":
            return 0;
        case #"legendary":
            return 0;
        }
        break;
    case 2:
        switch (type) {
        case #"rare":
            return 1;
        case #"epic":
            return 1;
        case #"legendary":
            return 0;
        }
        break;
    case 3:
        switch (type) {
        case #"rare":
            return 1;
        case #"epic":
            return 1;
        case #"legendary":
            return 1;
        }
        break;
    case 4:
        switch (type) {
        case #"rare":
            return 1;
        case #"epic":
            return 1;
        case #"legendary":
            return 1;
        }
        break;
    case 5:
        switch (type) {
        case #"rare":
            return 2;
        case #"epic":
            return 1;
        case #"legendary":
            return 1;
        }
        break;
    case 6:
        switch (type) {
        case #"rare":
            return 2;
        case #"epic":
            return 2;
        case #"legendary":
            return 1;
        }
        break;
    case 7:
        switch (type) {
        case #"rare":
            return 3;
        case #"epic":
            return 2;
        case #"legendary":
            return 2;
        }
        break;
    case 8:
        switch (type) {
        case #"rare":
            return 3;
        case #"epic":
            return 2;
        case #"legendary":
            return 2;
        }
        break;
    case 9:
        switch (type) {
        case #"rare":
            return 4;
        case #"epic":
            return 3;
        case #"legendary":
            return 2;
        }
        break;
    case 10:
    default:
        switch (type) {
        case #"rare":
            return 4;
        case #"epic":
            return 3;
        case #"legendary":
            return 2;
        }
        break;
    }
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x2 linked
// Checksum 0x4b9652c2, Offset: 0x2a78
// Size: 0x84
function function_1c7ac571(round = 20) {
    switch (round) {
    case 20:
    case 25:
    case 30:
        return 1;
    default:
        return 2;
    }
    return 0;
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x2 linked
// Checksum 0x8ee9f3f2, Offset: 0x2b08
// Size: 0x10
function function_70067981(*round) {
    return true;
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x2 linked
// Checksum 0x97b34a22, Offset: 0x2b20
// Size: 0x814
function function_73cddc69(var_8e592166 = 1) {
    if (isdefined(level.var_24a62388)) {
        self [[ level.var_24a62388 ]]();
    }
    if (!is_true(level.onlinegame)) {
        var_8e592166 = 0;
    }
    if (!isdefined(self.var_204e6c25)) {
        self.var_204e6c25 = 0;
    }
    self.var_204e6c25++;
    self zm_stats::increment_challenge_stat(#"hash_775bd6b063e325ff");
    self contracts::increment_zm_contract(#"hash_ddd05a3c6891d38");
    self zm_stats::function_17ee4529(#"hash_4713f96a0917e2", 1, "event_test_enabled");
    self zm_stats::function_fbce465a(#"hash_76bf5df08a08de17");
    self zm_stats::function_fbce465a(#"hash_24abab59aafa481e");
    if (is_true(level.var_92c52eed)) {
        self contracts::increment_zm_contract(#"hash_52d7aad059ba306a");
    } else if (is_true(level.var_ce7af4fa)) {
        self contracts::increment_zm_contract(#"hash_5962be83752b7345");
    } else if (is_true(level.var_775a83a7)) {
        self zm_stats::function_7ec42fbf(#"hash_39c86e169b57d8b5");
    }
    if (zm_utility::is_survival()) {
        self thread function_7b6ac8d5(3);
        var_b48509f9 = zm_utility::function_e3025ca5();
        self function_a2d61378(var_b48509f9);
        self function_e32813ee(var_b48509f9);
        var_64bd84cc = function_4f5dff62(var_b48509f9, #"rare");
        self function_d59d7b74(var_64bd84cc, var_8e592166);
        if (is_true(getgametypesetting(#"hash_534a70940dadf3e7"))) {
            var_bc3885e0 = function_4f5dff62(var_b48509f9, #"epic");
            var_629196dd = function_4f5dff62(var_b48509f9, #"legendary");
            if (var_b48509f9 <= 2 && var_bc3885e0 > 0) {
                if (!is_true(level.var_7d3f22bd)) {
                    level.var_7d3f22bd = 1;
                    if (math::cointoss()) {
                        level.var_e578d0db = 1;
                    }
                }
                if (is_true(level.var_e578d0db)) {
                    self function_89a45cd4(var_bc3885e0, var_8e592166);
                }
            } else {
                self function_89a45cd4(var_bc3885e0, var_8e592166);
            }
            if (var_b48509f9 <= 3 && var_629196dd > 0) {
                if (!is_true(level.var_5ed8f6ba)) {
                    level.var_5ed8f6ba = 1;
                    if (math::cointoss()) {
                        level.var_8a84008 = 1;
                    }
                }
                if (is_true(level.var_8a84008)) {
                    self function_74f5b460(var_629196dd, var_8e592166);
                }
            } else {
                self function_74f5b460(var_629196dd, var_8e592166);
            }
        }
        return;
    }
    round = level.round_number;
    if (round <= 5) {
        return;
    }
    self thread function_7b6ac8d5(2, round);
    milestones = level.round_number / 5;
    self function_88beee50(round);
    if (round >= 10) {
        amount = int(round / 10) - 1;
        amount = math::clamp(amount, 1, 9);
        self function_d59d7b74(amount, var_8e592166);
    } else {
        self function_d59d7b74(1, var_8e592166);
    }
    if (is_true(getgametypesetting(#"hash_534a70940dadf3e7"))) {
        if (round == 15) {
            if (!is_true(level.var_7d3f22bd)) {
                level.var_7d3f22bd = 1;
                if (math::cointoss()) {
                    level.var_e578d0db = 1;
                }
            }
            if (is_true(level.var_e578d0db)) {
                function_89a45cd4(1, var_8e592166);
            }
        } else if (round > 15) {
            var_8f88887b = function_1c7ac571(round);
            function_89a45cd4(var_8f88887b, var_8e592166);
        }
        if (round == 20) {
            if (!is_true(level.var_5ed8f6ba)) {
                level.var_5ed8f6ba = 1;
                if (math::cointoss()) {
                    level.var_8a84008 = 1;
                }
            }
            if (is_true(level.var_8a84008)) {
                function_74f5b460(1, var_8e592166);
            }
            return;
        }
        if (round == 25) {
            if (!is_true(level.var_97f56902)) {
                level.var_97f56902 = 1;
                if (math::cointoss()) {
                    level.var_fb82a5bd = 1;
                }
            }
            if (is_true(level.var_fb82a5bd)) {
                function_74f5b460(1, var_8e592166);
            }
            return;
        }
        if (round > 25) {
            var_a1b51775 = function_70067981(round);
            function_74f5b460(var_a1b51775, var_8e592166);
        }
    }
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 2, eflags: 0x2 linked
// Checksum 0x6d06fdc3, Offset: 0x3340
// Size: 0xe4
function function_a2d61378(var_b48509f9, var_2993280f = 1) {
    if (var_b48509f9 <= 1) {
        var_b8bcc6d = 1000 * var_2993280f;
        self thread zm_score::add_to_player_score(var_b8bcc6d);
        return;
    }
    score = 2500 * (var_b48509f9 - 1) * var_2993280f;
    if (var_2993280f <= 1) {
        score = math::clamp(score, 0, 15000);
    }
    self thread zm_score::add_to_player_score(int(score));
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 3, eflags: 0x2 linked
// Checksum 0x23672ee9, Offset: 0x3430
// Size: 0x13c
function function_e32813ee(var_b48509f9, var_eb3616b4 = 1, var_492ebc70 = 1) {
    var_36bda4b = function_ef580a0c(var_b48509f9);
    var_ef5aac55 = var_36bda4b * 100 * var_eb3616b4;
    if (var_eb3616b4 <= 1) {
        var_ef5aac55 = math::clamp(var_ef5aac55, 0, 500);
    }
    var_1ac981fc = function_b03d7dd0(var_b48509f9);
    var_a9b93bb4 = var_1ac981fc * 50 * var_492ebc70;
    if (var_492ebc70 <= 1) {
        var_a9b93bb4 = math::clamp(var_a9b93bb4, 0, 250);
    }
    self thread namespace_2a9f256a::function_afab250a(var_ef5aac55);
    self thread namespace_2a9f256a::function_a6d4221f(var_a9b93bb4);
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x2 linked
// Checksum 0x3c6e029c, Offset: 0x3578
// Size: 0xec
function function_88beee50(round) {
    var_36bda4b = function_ef580a0c(round);
    var_ef5aac55 = var_36bda4b * 100;
    var_ef5aac55 = math::clamp(var_ef5aac55, 0, 500);
    var_1ac981fc = function_b03d7dd0(round);
    var_a9b93bb4 = var_1ac981fc * 50;
    var_a9b93bb4 = math::clamp(var_a9b93bb4, 0, 250);
    self thread namespace_2a9f256a::function_afab250a(var_ef5aac55);
    self thread namespace_2a9f256a::function_a6d4221f(var_a9b93bb4);
}

// Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
// Params 1, eflags: 0x2 linked
// Checksum 0x29a6cffa, Offset: 0x3670
// Size: 0x11a
function on_item_pickup(params) {
    item = params.item;
    if (isplayer(self)) {
        if (isdefined(item.itementry)) {
            if (item.itementry.itemtype === #"hash_6a8c9b279aa1c2c5") {
                if (isdefined(item.itementry.rarity)) {
                    switch (item.itementry.rarity) {
                    case #"rare":
                        self function_d59d7b74();
                        break;
                    case #"epic":
                        self function_89a45cd4();
                        break;
                    case #"legendary":
                        self function_74f5b460();
                        break;
                    }
                }
            }
        }
    }
}

/#

    // Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
    // Params 0, eflags: 0x0
    // Checksum 0x32884a77, Offset: 0x3798
    // Size: 0x224
    function function_14defa19() {
        setdvar(#"hash_45e7c4e448c5fdd3", "<unknown string>");
        var_5084d761 = ["<unknown string>", "<unknown string>", "<unknown string>"];
        var_d2d49534 = [1, 2, 5, 10, 20, 50, 100];
        for (var_19c3d01e = 0; var_19c3d01e < var_5084d761.size; var_19c3d01e++) {
            rarity = var_5084d761[var_19c3d01e];
            for (var_6665791e = 0; var_6665791e < var_d2d49534.size; var_6665791e++) {
                amount = var_d2d49534[var_6665791e];
                cmdstring = "<unknown string>" + rarity + "<unknown string>" + (isdefined(var_19c3d01e) ? "<unknown string>" + var_19c3d01e : "<unknown string>") + "<unknown string>" + (isdefined(amount) ? "<unknown string>" + amount : "<unknown string>") + "<unknown string>" + (isdefined(var_6665791e) ? "<unknown string>" + var_6665791e : "<unknown string>") + "<unknown string>" + rarity + "<unknown string>" + (isdefined(amount) ? "<unknown string>" + amount : "<unknown string>") + "<unknown string>";
                adddebugcommand(cmdstring);
            }
        }
    }

    // Namespace namespace_d4ecbbf0/namespace_d4ecbbf0
    // Params 0, eflags: 0x0
    // Checksum 0xc2b20e14, Offset: 0x39c8
    // Size: 0x22e
    function function_868c9a6e() {
        while (true) {
            str_command = getdvarstring(#"hash_45e7c4e448c5fdd3", "<unknown string>");
            if (str_command != "<unknown string>") {
                if (strstartswith(str_command, "<unknown string>")) {
                    str = strreplace(str_command, "<unknown string>", "<unknown string>");
                    arr = strtok(str, "<unknown string>");
                    var_a4a3ca3a = arr[0];
                    amount = arr[1];
                    var_e1f0e492 = [#"hash_65febbdf3f1ab4d7", hash(var_a4a3ca3a)];
                    players = getplayers();
                    foreach (player in players) {
                        player function_2ea9419c(hash(var_a4a3ca3a), int(amount));
                    }
                }
                setdvar(#"hash_45e7c4e448c5fdd3", "<unknown string>");
            }
            waitframe(1);
        }
    }

#/
