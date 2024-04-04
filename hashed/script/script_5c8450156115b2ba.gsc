// Atian COD Tools GSC CW decompiler test
#using script_113dd7f0ea2a1d4f;
#using scripts\zm_common\objective_manager.gsc;
#using scripts\zm_common\zm_sq.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_fasttravel.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_ff7e490;

// Namespace namespace_ff7e490/namespace_ff7e490
// Params 0, eflags: 0x2 linked
// Checksum 0xf8dfca06, Offset: 0x380
// Size: 0x154
function init() {
    clientfield::register("world", "" + #"hash_666ad912cb4541f1", 28000, 1, "int");
    clientfield::register("world", "" + #"hash_6601c584f23761c4", 28000, 1, "int");
    level.var_5bfd847e = #"hash_1446e25b57f66305";
    level.var_352c9e03 = &function_af65fe93;
    level.var_e9737821 = &function_c52e8ba;
    level.var_a5a050c1 = 30;
    level.var_ce0f67cf = 5;
    level.var_d0fafce1 = 1;
    level.var_11b26237 = 96;
    level clientfield::set("" + #"hash_6601c584f23761c4", 1);
    function_56987d5e();
}

// Namespace namespace_ff7e490/namespace_ff7e490
// Params 0, eflags: 0x2 linked
// Checksum 0xde8a0382, Offset: 0x4e0
// Size: 0xec
function start_fasttravel() {
    level flag::set(#"hash_1446e25b57f66305");
    level clientfield::set("" + #"hash_666ad912cb4541f1", 1);
    function_becf7525("portal_fx_main_street_to_helipads");
    function_becf7525("portal_fx_main_street_to_anytown_usa");
    function_becf7525("portal_fx_anytown_usa_to_main_street");
    function_becf7525("portal_fx_bunker_to_anytown_usa");
    function_becf7525("portal_fx_observation_to_bunker");
    function_becf7525("portal_fx_observation_to_helipads");
}

// Namespace namespace_ff7e490/namespace_ff7e490
// Params 1, eflags: 0x6 linked
// Checksum 0x8fcac938, Offset: 0x5d8
// Size: 0x64
function private function_becf7525(var_a04ebe57) {
    e_portal = getent(var_a04ebe57, "targetname");
    playsoundatposition(#"hash_5f27432854b069c9", e_portal.origin);
}

// Namespace namespace_ff7e490/namespace_ff7e490
// Params 1, eflags: 0x2 linked
// Checksum 0x58604d7f, Offset: 0x648
// Size: 0x114
function function_af65fe93(var_79bf62e6) {
    if (!isplayer(self) || !isdefined(var_79bf62e6)) {
        return;
    }
    str_loc = var_79bf62e6.stub.script_string;
    s_loc = struct::get(str_loc + "_end_" + zm_fasttravel::get_player_index(self));
    self util::create_streamer_hint(s_loc.origin, s_loc.angles, 1);
    self util::delay("fasttravel_over", "disconnect", &util::clear_streamer_hint);
    if (str_loc === "bunker_to_observation") {
        self thread function_cb6d7ad5();
    }
}

// Namespace namespace_ff7e490/namespace_ff7e490
// Params 0, eflags: 0x2 linked
// Checksum 0x20e3224, Offset: 0x768
// Size: 0x84
function function_cb6d7ad5() {
    self endon(#"disconnect");
    self scene::function_27f5972e(#"hash_6252caedac411934");
    self waittill(#"death", #"fasttravel_over");
    self scene::function_f81475ae(#"hash_6252caedac411934");
}

// Namespace namespace_ff7e490/namespace_ff7e490
// Params 2, eflags: 0x2 linked
// Checksum 0xc9e8489a, Offset: 0x7f8
// Size: 0x54e
function function_c52e8ba(player, var_8d5d092c) {
    b_result = 0;
    if (!isdefined(self.hint_string)) {
        self.hint_string = [];
    }
    n_player_index = player getentitynumber();
    if (!self zm_fasttravel::function_d06e636b(player) || player isswitchingweapons()) {
        self.hint_string[n_player_index] = #"";
    } else if (isdefined(self.stub.var_a92d1b24) && !level flag::get_all(self.stub.var_a92d1b24)) {
        switch (self.stub.script_string) {
        case #"helipads_to_main_street":
            if (level flag::get(#"hash_5981a23fdea21f78")) {
                self.hint_string[n_player_index] = #"hash_5d6c42a597323f3c";
                b_result = 1;
            }
            break;
        case #"anytown_usa_to_bunker":
            if (!level flag::get(#"hash_bc6e6c4a2ea3f60")) {
                self.hint_string[n_player_index] = #"hash_116dced27129125c";
                b_result = 1;
            }
            break;
        case #"observation_to_helipads":
            if (!level flag::get(#"power_on1")) {
                self.hint_string[n_player_index] = #"hash_793db3dc20917334";
                b_result = 1;
            }
            break;
        default:
            self.hint_string[n_player_index] = #"zombie/fasttravel_locked";
            b_result = 1;
            break;
        }
    } else if (is_true(player.var_9c7b96ed[var_8d5d092c])) {
        switch (self.stub.script_string) {
        default:
            self.hint_string[n_player_index] = #"hash_7667bd0f83307360";
            b_result = 1;
            break;
        }
    } else if (isdefined(self.stub.delay) && !self.stub flag::get("delayed")) {
        switch (self.stub.script_string) {
        default:
            self.hint_string[n_player_index] = #"zombie/fasttravel_delay";
            b_result = 1;
            break;
        }
    } else {
        switch (self.stub.script_string) {
        case #"main_street_to_helipads":
        case #"observation_to_helipads":
            self.hint_string[n_player_index] = #"hash_304d3a663d56e57f";
            break;
        case #"helipads_to_main_street":
            self.hint_string[n_player_index] = #"hash_44a5bc69db5e0ee7";
            break;
        case #"anytown_usa_to_main_street":
            self.hint_string[n_player_index] = #"hash_423e9a8e530ed95a";
            break;
        case #"main_street_to_anytown_usa":
            self.hint_string[n_player_index] = #"hash_29eee6d6112fe209";
            break;
        case #"bunker_to_anytown_usa":
            self.hint_string[n_player_index] = #"hash_6250636afaff2f8b";
            break;
        case #"anytown_usa_to_bunker":
            self.hint_string[n_player_index] = #"hash_4c57d5cff43d2407";
            break;
        case #"observation_to_bunker":
            self.hint_string[n_player_index] = #"hash_656093d7320c2914";
            break;
        case #"helipads_to_observation":
        case #"bunker_to_observation":
            self.hint_string[n_player_index] = #"hash_3b286335feef3751";
            break;
        default:
            self.hint_string[n_player_index] = #"hash_2731cc5c1208e2e4";
            break;
        }
        b_result = 1;
    }
    return b_result;
}

// Namespace namespace_ff7e490/namespace_ff7e490
// Params 0, eflags: 0x6 linked
// Checksum 0xbd9a1a38, Offset: 0xd50
// Size: 0x7c
function private function_56987d5e() {
    level.var_c1bfcfe0 = array();
    level.var_7899bc18 = array();
    level.var_b2fde059 = &function_ee59489c;
    level.var_248a3989 = &function_10ff2c34;
    level.var_9fed8c8b = &function_e1579dc4;
}

// Namespace namespace_ff7e490/namespace_ff7e490
// Params 6, eflags: 0x2 linked
// Checksum 0x1b19bbfb, Offset: 0xdd8
// Size: 0x570
function function_a70fa155(var_74fbad21, var_af6496cd, var_54829af, var_32281137, var_95c6b9dd, var_c8bb51c4 = 0) {
    level endoncallback(&function_c8901681, var_95c6b9dd, #"hash_419cb6aea3c6771e");
    level endon(#"end_game");
    level.var_474108be = var_74fbad21;
    level.var_2918dbdf = var_af6496cd;
    foreach (e_player in getplayers()) {
        var_e3c700bd = e_player [[ level.var_248a3989 ]](var_54829af, var_32281137);
        if (isdefined(var_e3c700bd)) {
            if (array::function_460f3c24(var_e3c700bd, var_54829af)) {
                level.var_c1bfcfe0[e_player.playernum] = var_54829af;
            } else {
                e_player function_66c3f496(var_74fbad21);
                e_player zm_sq::function_266d66eb(var_af6496cd, var_e3c700bd, undefined, undefined, undefined, 96);
                level.var_7899bc18[e_player.playernum] = var_e3c700bd;
            }
            continue;
        }
        e_player function_66c3f496(var_74fbad21);
    }
    while (true) {
        wait(1);
        if (var_c8bb51c4) {
            var_32281137 = var_54829af[0] [[ level.var_9fed8c8b ]]();
        }
        foreach (e_player in getplayers()) {
            var_e3c700bd = e_player [[ level.var_248a3989 ]](var_54829af, var_32281137);
            if (isdefined(var_e3c700bd)) {
                if (array::function_460f3c24(var_e3c700bd, var_54829af)) {
                    if (isdefined(level.var_7899bc18[e_player.playernum])) {
                        e_player zm_sq::objective_complete(var_af6496cd);
                        level.var_7899bc18[e_player.playernum] = undefined;
                    }
                    if (!isdefined(level.var_c1bfcfe0[e_player.playernum])) {
                        e_player function_4f928bec(var_74fbad21, var_54829af);
                        level.var_c1bfcfe0[e_player.playernum] = var_54829af;
                    }
                } else {
                    if (isdefined(level.var_c1bfcfe0[e_player.playernum])) {
                        e_player function_66c3f496(var_74fbad21);
                        level.var_c1bfcfe0[e_player.playernum] = undefined;
                    }
                    if (isdefined(level.var_7899bc18[e_player.playernum])) {
                        if (!array::function_460f3c24(level.var_7899bc18[e_player.playernum], var_e3c700bd)) {
                            e_player zm_sq::objective_complete(var_af6496cd, level.var_7899bc18[e_player.playernum]);
                            e_player zm_sq::function_266d66eb(var_af6496cd, var_e3c700bd, undefined, undefined, undefined, 96);
                            level.var_7899bc18[e_player.playernum] = var_e3c700bd;
                        }
                    } else {
                        e_player zm_sq::function_266d66eb(var_af6496cd, var_e3c700bd, undefined, undefined, undefined, 96);
                        level.var_7899bc18[e_player.playernum] = var_e3c700bd;
                    }
                }
                if (level flag::get("rbz_exfil_started") && isdefined(level.var_31028c5d)) {
                    level.var_31028c5d prototype_hud::function_817e4d10(e_player, 2);
                }
                continue;
            }
            if (isdefined(level.var_c1bfcfe0[e_player.playernum])) {
                e_player function_66c3f496(var_74fbad21);
                level.var_c1bfcfe0[e_player.playernum] = undefined;
            }
            if (isdefined(level.var_7899bc18[e_player.playernum])) {
                e_player zm_sq::objective_complete(var_af6496cd);
                level.var_7899bc18[e_player.playernum] = undefined;
            }
        }
    }
}

// Namespace namespace_ff7e490/namespace_ff7e490
// Params 1, eflags: 0x6 linked
// Checksum 0xb9f7de8c, Offset: 0x1350
// Size: 0x1d4
function private function_c8901681(var_b09af3eb) {
    foreach (e_player in getplayers()) {
        if (isdefined(level.var_7899bc18[e_player.playernum])) {
            e_player zm_sq::objective_complete(level.var_2918dbdf);
            level.var_7899bc18[e_player.playernum] = undefined;
        }
        if (isdefined(level.var_c1bfcfe0[e_player.playernum])) {
            level.var_c1bfcfe0[e_player.playernum] = undefined;
        }
    }
    if (var_b09af3eb == #"hash_419cb6aea3c6771e") {
        if (isdefined(level.var_474108be)) {
            if (ishash(level.var_474108be) || isstring(level.var_474108be)) {
                level zm_sq::objective_complete(level.var_474108be);
                return;
            }
            if (isint(level.var_474108be)) {
                objective_setstate(level.var_474108be, "done");
                zm_utility::function_bc5a54a8(level.var_474108be);
            }
        }
    }
}

// Namespace namespace_ff7e490/namespace_ff7e490
// Params 1, eflags: 0x6 linked
// Checksum 0xb34ec704, Offset: 0x1530
// Size: 0x8c
function private function_66c3f496(var_74fbad21) {
    if (isdefined(var_74fbad21)) {
        if (ishash(var_74fbad21) || isstring(var_74fbad21)) {
            self zm_sq::function_3029d343(var_74fbad21);
            return;
        }
        if (isint(var_74fbad21)) {
            objective_setinvisibletoplayer(var_74fbad21, self);
        }
    }
}

// Namespace namespace_ff7e490/namespace_ff7e490
// Params 2, eflags: 0x6 linked
// Checksum 0x41bcdfcb, Offset: 0x15c8
// Size: 0x9c
function private function_4f928bec(var_74fbad21, var_54829af) {
    if (isdefined(var_74fbad21)) {
        if (ishash(var_74fbad21) || isstring(var_74fbad21)) {
            self zm_sq::function_aee0b4b4(var_74fbad21, var_54829af);
            return;
        }
        if (isint(var_74fbad21)) {
            objective_setvisibletoplayer(var_74fbad21, self);
        }
    }
}

// Namespace namespace_ff7e490/namespace_ff7e490
// Params 2, eflags: 0x2 linked
// Checksum 0x17a037ce, Offset: 0x1670
// Size: 0x9f6
function function_10ff2c34(var_54829af, var_32281137) {
    if (self zm_zonemgr::is_player_in_zone(level.var_dc2ca204)) {
        if (array::function_460f3c24(var_32281137, level.var_dc2ca204)) {
            return var_54829af;
        } else if (array::function_460f3c24(var_32281137, ["zone_observation"])) {
            if (level flag::get("power_on1")) {
                return struct::get_array("helipads_to_observation", "script_string");
            } else if (level flag::get(#"hash_67685d2c51bd61db")) {
                return struct::get_array("helipads_to_main_street", "script_string");
            }
        } else if (array::function_460f3c24(var_32281137, level.var_65c43c31)) {
            if (level flag::get("power_on1")) {
                return struct::get_array("helipads_to_observation", "script_string");
            } else if (level flag::get(#"hash_3976f9f041f5b338")) {
                return struct::get_array("helipads_to_main_street", "script_string");
            }
        } else if (array::function_460f3c24(var_32281137, level.var_2f941a56)) {
            if (level flag::get(#"connect_anytown_usa_west_zones")) {
                return struct::get_array("helipads_to_main_street", "script_string");
            }
        } else if (array::function_460f3c24(var_32281137, level.var_6097ff89)) {
            if (level flag::get(#"hash_23042147964b0bc2")) {
                return struct::get_array("helipads_to_main_street", "script_string");
            }
        }
    } else if (self zm_zonemgr::is_player_in_zone(level.var_6097ff89)) {
        if (array::function_460f3c24(var_32281137, level.var_6097ff89)) {
            return var_54829af;
        } else if (array::function_460f3c24(var_32281137, level.var_dc2ca204)) {
            return struct::get_array("main_street_to_helipads", "script_string");
        } else if (array::function_460f3c24(var_32281137, ["zone_observation"])) {
            if (level flag::get("power_on1")) {
                return var_54829af;
            } else if (level flag::get(#"hash_67685d2c51bd61db")) {
                return struct::get_array("main_street_to_anytown_usa", "script_string");
            }
        } else if (array::function_460f3c24(var_32281137, level.var_65c43c31)) {
            if (level flag::get(#"hash_3976f9f041f5b338")) {
                return struct::get_array("main_street_to_anytown_usa", "script_string");
            }
        } else if (array::function_460f3c24(var_32281137, level.var_2f941a56)) {
            if (level flag::get(#"connect_anytown_usa_west_zones")) {
                return struct::get_array("main_street_to_anytown_usa", "script_string");
            }
        }
    } else if (self zm_zonemgr::is_player_in_zone(level.var_2f941a56)) {
        if (array::function_460f3c24(var_32281137, level.var_2f941a56)) {
            return var_54829af;
        } else if (array::function_460f3c24(var_32281137, level.var_6097ff89)) {
            return struct::get_array("anytown_usa_to_main_street", "script_string");
        } else if (array::function_460f3c24(var_32281137, level.var_dc2ca204)) {
            return struct::get_array("anytown_usa_to_main_street", "script_string");
        } else if (array::function_460f3c24(var_32281137, ["zone_observation"])) {
            if (level flag::get("power_on1")) {
                return var_54829af;
            } else if (level flag::get(#"hash_67685d2c51bd61db")) {
                return struct::get_array("anytown_usa_to_bunker", "script_string");
            }
        } else if (array::function_460f3c24(var_32281137, level.var_65c43c31)) {
            if (level flag::get(#"hash_3976f9f041f5b338")) {
                return struct::get_array("anytown_usa_to_bunker", "script_string");
            }
        }
    } else if (self zm_zonemgr::is_player_in_zone(level.var_65c43c31)) {
        if (array::function_460f3c24(var_32281137, level.var_65c43c31)) {
            return var_54829af;
        } else if (array::function_460f3c24(var_32281137, level.var_2f941a56)) {
            return struct::get_array("bunker_to_anytown_usa", "script_string");
        } else if (array::function_460f3c24(var_32281137, level.var_6097ff89)) {
            return struct::get_array("bunker_to_anytown_usa", "script_string");
        } else if (array::function_460f3c24(var_32281137, level.var_dc2ca204)) {
            if (level flag::get("power_on1")) {
                return struct::get_array("bunker_to_observation", "script_string");
            } else {
                return struct::get_array("bunker_to_anytown_usa", "script_string");
            }
        } else if (array::function_460f3c24(var_32281137, ["zone_observation"])) {
            if (level flag::get(#"hash_67685d2c51bd61db")) {
                return struct::get_array("bunker_to_observation", "script_string");
            }
        }
    } else if (self zm_zonemgr::is_player_in_zone(["zone_observation"])) {
        if (array::function_460f3c24(var_32281137, ["zone_observation"])) {
            return var_54829af;
        } else if (array::function_460f3c24(var_32281137, level.var_65c43c31)) {
            return struct::get_array("observation_to_bunker", "script_string");
        } else if (array::function_460f3c24(var_32281137, level.var_2f941a56)) {
            if (level flag::get("power_on1")) {
                return var_54829af;
            } else {
                return struct::get_array("observation_to_bunker", "script_string");
            }
        } else if (array::function_460f3c24(var_32281137, level.var_6097ff89)) {
            if (level flag::get("power_on1")) {
                return var_54829af;
            } else {
                return struct::get_array("observation_to_bunker", "script_string");
            }
        } else if (array::function_460f3c24(var_32281137, level.var_dc2ca204)) {
            if (level flag::get("power_on1")) {
                return struct::get_array("observation_to_helipads", "script_string");
            } else {
                return struct::get_array("observation_to_bunker", "script_string");
            }
        }
    }
    return undefined;
}

// Namespace namespace_ff7e490/namespace_ff7e490
// Params 0, eflags: 0x2 linked
// Checksum 0x89e0dc8b, Offset: 0x2070
// Size: 0x124
function function_e1579dc4() {
    str_target_zone = self zm_utility::get_current_zone();
    if (function_5996e591(str_target_zone, level.var_dc2ca204)) {
        return level.var_dc2ca204;
    } else if (function_5996e591(str_target_zone, level.var_6097ff89)) {
        return level.var_6097ff89;
    } else if (function_5996e591(str_target_zone, level.var_2f941a56)) {
        return level.var_2f941a56;
    } else if (function_5996e591(str_target_zone, level.var_65c43c31)) {
        return level.var_65c43c31;
    } else if (function_5996e591(str_target_zone, ["zone_observation"])) {
        return ["zone_observation"];
    }
    return undefined;
}

// Namespace namespace_ff7e490/namespace_ff7e490
// Params 2, eflags: 0x6 linked
// Checksum 0xcfb987b5, Offset: 0x21a0
// Size: 0x92
function private function_5996e591(str_target_zone, a_str_zones) {
    foreach (str_zone in a_str_zones) {
        if (str_target_zone === str_zone) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_ff7e490/namespace_ff7e490
// Params 3, eflags: 0x6 linked
// Checksum 0xc1f5be41, Offset: 0x2240
// Size: 0xdc
function private function_ee59489c(var_331b7cc3, origin, instance) {
    objective_manager::function_9751c453(var_331b7cc3, origin, instance);
    level flag::set(#"hash_419cb6aea3c6771e");
    zm_sq::function_97aa577f();
    while (!isdefined(level.var_117d5f10)) {
        waitframe(1);
    }
    level thread function_a70fa155(level.var_fdcaf3a6.var_e55c8b4e, #"hash_53c181b5f1f2760f", array(level.var_117d5f10), level.var_dc2ca204, #"hash_4fbe4720f6f13107");
}

