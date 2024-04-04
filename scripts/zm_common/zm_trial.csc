// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\callbacks.csc;
#using scripts\zm_common\zm_utility.csc;
#using scripts\zm_common\zm_trial_util.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace zm_trial;

// Namespace zm_trial/zm_trial
// Params 0, eflags: 0x5
// Checksum 0x9d098e4b, Offset: 0x100
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial/zm_trial
// Params 0, eflags: 0x6 linked
// Checksum 0xb92ef6da, Offset: 0x148
// Size: 0x34
function private preinit() {
    if (!is_trial_mode()) {
        return;
    }
    level.var_c556bb2e = [];
    function_4dbf2663();
}

// Namespace zm_trial/zm_trial
// Params 1, eflags: 0x0
// Checksum 0x831ceaeb, Offset: 0x188
// Size: 0x98
function function_d02ffd(name) {
    foreach (var_6d87ac05 in level.var_c556bb2e) {
        if (var_6d87ac05.name == name) {
            return var_6d87ac05;
        }
    }
    return undefined;
}

// Namespace zm_trial/zm_trial
// Params 1, eflags: 0x2 linked
// Checksum 0x40723de4, Offset: 0x228
// Size: 0x48
function function_ce2fdd3b(index) {
    if (isdefined(level.var_c556bb2e) && isdefined(level.var_c556bb2e[index])) {
        return level.var_c556bb2e[index];
    }
    return undefined;
}

// Namespace zm_trial/zm_trial
// Params 0, eflags: 0x2 linked
// Checksum 0xaf4949a1, Offset: 0x278
// Size: 0x12
function is_trial_mode() {
    return zm_utility::is_trials();
}

// Namespace zm_trial/zm_trial
// Params 3, eflags: 0x2 linked
// Checksum 0xb995df4, Offset: 0x298
// Size: 0xb8
function register_challenge(name, var_c5dd8620, var_bbcdbff5) {
    if (!isdefined(level.var_75e93a54)) {
        level.var_75e93a54 = [];
    }
    assert(!isdefined(level.var_75e93a54[name]));
    info = {#name:name, #var_c5dd8620:var_c5dd8620, #var_bbcdbff5:var_bbcdbff5};
    level.var_75e93a54[name] = info;
}

// Namespace zm_trial/zm_trial
// Params 1, eflags: 0x2 linked
// Checksum 0x1f63f900, Offset: 0x358
// Size: 0xc0
function function_a36e8c38(name) {
    if (is_trial_mode() && isdefined(level.var_1420e3f6)) {
        foreach (active_challenge in level.var_1420e3f6.challenges) {
            if (active_challenge.name == name) {
                return active_challenge;
            }
        }
    }
    return undefined;
}

// Namespace zm_trial/zm_trial
// Params 0, eflags: 0x6 linked
// Checksum 0x315cd8f6, Offset: 0x420
// Size: 0x44c
function private function_4dbf2663() {
    var_3b363b7a = getgametypesetting(#"zmtrialsvariant");
    if (isdefined(var_3b363b7a) && var_3b363b7a > 0) {
        table = hash("gamedata/tables/zm/" + util::get_map_name() + "_trials_variant_" + var_3b363b7a + ".csv");
    } else {
        table = hash("gamedata/tables/zm/" + util::get_map_name() + "_trials.csv");
    }
    column_count = tablelookupcolumncount(table);
    var_e1617d73 = tablelookuprowcount(table);
    row = 0;
    while (row < var_e1617d73) {
        var_189d26ca = tablelookupcolumnforrow(table, row, 1);
        assert(!isdefined(function_d02ffd(var_189d26ca)));
        var_6d87ac05 = {#name:var_189d26ca, #rounds:[], #index:level.var_c556bb2e.size};
        level.var_c556bb2e[level.var_c556bb2e.size] = var_6d87ac05;
        do {
            row++;
            round = tablelookupcolumnforrow(table, row, 0);
            if (row < var_e1617d73 && round != 0) {
                round_index = round - 1;
                if (!isdefined(var_6d87ac05.rounds[round_index])) {
                    var_6d87ac05.rounds[round_index] = {};
                    round_info = var_6d87ac05.rounds[round_index];
                    round_info.name = tablelookupcolumnforrow(table, row, 1);
                    round_info.round = round;
                    round_info.name_str = tablelookupcolumnforrow(table, row, 2);
                    round_info.desc_str = tablelookupcolumnforrow(table, row, 3);
                    round_info.challenges = [];
                }
                assert(isdefined(var_6d87ac05.rounds[round_index]));
                round_info = var_6d87ac05.rounds[round_index];
                challenge_name = tablelookupcolumnforrow(table, row, 5);
                var_10a28798 = [];
                array::add(round_info.challenges, {#name:challenge_name, #row:row, #params:var_10a28798});
                for (i = 0; i < 8; i++) {
                    param = tablelookupcolumnforrow(table, row, 6 + i);
                    if (isdefined(param) && param != #"") {
                        var_10a28798[var_10a28798.size] = param;
                    }
                }
            }
        } while (row < var_e1617d73 && round != 0);
    }
    level.var_6d87ac05 = level.var_c556bb2e[0];
}

