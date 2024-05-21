// Atian COD Tools GSC CW decompiler test
#using script_176597095ddfaa17;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_ping.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_intel;

// Namespace zm_intel/zm_intel
// Params 0, eflags: 0x5
// Checksum 0xa89843d5, Offset: 0x220
// Size: 0x54
function private autoexec __init__system__() {
    system::register(#"zm_intel", &preinit, &postinit, undefined, #"content_manager");
}

// Namespace zm_intel/zm_intel
// Params 0, eflags: 0x2 linked
// Checksum 0xdd25552c, Offset: 0x280
// Size: 0x234
function preinit() {
    clientfield::register("scriptmover", "" + #"hash_475f3329eaf62eaf", 1, 1, "int");
    clientfield::register("toplayer", "" + #"hash_1a818fdb4337dc5e", 1, 1, "counter");
    clientfield::register("toplayer", "" + #"hash_711c8fee28432b7", 1, getminbitcountfornum(28), "int");
    level.var_238bd723 = struct::get_script_bundle_instances("zmintel");
    level.var_14e8600c = 6;
    level.var_eb704e15 = [];
    level.var_35aa6043 = [];
    level.var_54f9341 = function_9b30a057();
    level.var_731907e8 = level.var_54f9341.size;
    if (!isdefined(level.var_df1d1235)) {
        level.var_df1d1235 = 0;
    }
    callback::on_connect(&on_connect);
    callback::on_spawned(&function_9799c283);
    callback::on_ai_killed(&on_ai_killed);
    callback::on_item_pickup(&function_b0049c2a);
    level thread function_696dd88b();
    level thread function_aa317cfe();
    /#
        level thread function_ded2880a();
    #/
}

// Namespace zm_intel/zm_intel
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x4c0
// Size: 0x4
function postinit() {
    
}

// Namespace zm_intel/zm_intel
// Params 0, eflags: 0x6 linked
// Checksum 0x8894b072, Offset: 0x4d0
// Size: 0x27e
function private function_9b30a057() {
    var_ce9ccdf6 = getscriptbundles(#"zmintel");
    var_a2b0b0d1 = [];
    foreach (var_19a3087c in var_ce9ccdf6) {
        if (zm_utility::is_survival()) {
            if (var_19a3087c.var_824079e7 === #"survival" && function_46181f8c(var_19a3087c) && function_fe74d984(var_19a3087c)) {
                if (!isdefined(var_a2b0b0d1)) {
                    var_a2b0b0d1 = [];
                } else if (!isarray(var_a2b0b0d1)) {
                    var_a2b0b0d1 = array(var_a2b0b0d1);
                }
                if (!isinarray(var_a2b0b0d1, hash(var_19a3087c.name))) {
                    var_a2b0b0d1[var_a2b0b0d1.size] = hash(var_19a3087c.name);
                }
            }
            continue;
        }
        if (var_19a3087c.mapname === level.script && function_46181f8c(var_19a3087c) && function_fe74d984(var_19a3087c)) {
            if (!isdefined(var_a2b0b0d1)) {
                var_a2b0b0d1 = [];
            } else if (!isarray(var_a2b0b0d1)) {
                var_a2b0b0d1 = array(var_a2b0b0d1);
            }
            if (!isinarray(var_a2b0b0d1, hash(var_19a3087c.name))) {
                var_a2b0b0d1[var_a2b0b0d1.size] = hash(var_19a3087c.name);
            }
        }
    }
    return var_a2b0b0d1;
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x2 linked
// Checksum 0x80c59e94, Offset: 0x758
// Size: 0x6c
function function_43abed5a(var_d5fa8477) {
    if (!isdefined(level.var_54f9341)) {
        level.var_54f9341 = function_9b30a057();
    }
    return isdefined(var_d5fa8477) && isinarray(level.var_54f9341, hash(var_d5fa8477));
}

// Namespace zm_intel/zm_intel
// Params 0, eflags: 0x6 linked
// Checksum 0xd679a224, Offset: 0x7d0
// Size: 0xa2
function private function_32b4eecc() {
    var_731907e8 = 0;
    foreach (var_d5fa8477 in level.var_54f9341) {
        if (self function_f0f36d47(var_d5fa8477)) {
            var_731907e8++;
        }
    }
    return var_731907e8;
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x6 linked
// Checksum 0xe49b1900, Offset: 0x880
// Size: 0x6e
function private function_fe74d984(var_37a01ce0) {
    if (isstring(var_37a01ce0) || ishash(var_37a01ce0)) {
        var_19a3087c = getscriptbundle(var_37a01ce0);
    } else {
        var_19a3087c = var_37a01ce0;
    }
    return true;
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x6 linked
// Checksum 0x25a39870, Offset: 0x8f8
// Size: 0x9a
function private function_46181f8c(var_37a01ce0) {
    if (isstring(var_37a01ce0) || ishash(var_37a01ce0)) {
        var_19a3087c = getscriptbundle(var_37a01ce0);
    } else {
        var_19a3087c = var_37a01ce0;
    }
    if (!isdefined(var_19a3087c.season) || var_19a3087c.season <= level.var_14e8600c) {
        return true;
    }
    return false;
}

// Namespace zm_intel/zm_intel
// Params 9, eflags: 0x2 linked
// Checksum 0x1aa60831, Offset: 0x9a0
// Size: 0xdc
function function_88645994(var_6f94d397, var_c14aedb3, var_539eabc0, var_765715e3, var_d5f7338b, var_cb9b032f, var_e082343f, var_3e815633, var_baa9c135) {
    level.var_9ff51719 = var_6f94d397;
    level.var_64d3d5c4 = var_c14aedb3;
    level.var_13ebf509 = var_539eabc0;
    level.var_1e898375 = var_765715e3;
    level.var_b131552c = var_d5f7338b;
    level.var_a62e1750 = var_cb9b032f;
    level.var_bc543de = var_e082343f;
    level.var_fc3c65a7 = var_3e815633;
    level.var_4b66954c = var_baa9c135;
}

// Namespace zm_intel/zm_intel
// Params 0, eflags: 0x6 linked
// Checksum 0xda5d3be1, Offset: 0xa88
// Size: 0xcc
function private on_connect() {
    self.var_9d781602 = [];
    if (!isdefined(self.var_e2d764da)) {
        self.var_e2d764da = 0;
    }
    if (!isdefined(self.var_b21b857[#"hash_1303dcb8d0e80e33"])) {
        self.var_b21b857[#"hash_1303dcb8d0e80e33"] = 0;
    }
    if (!isdefined(self.var_b21b857[#"maxis"])) {
        self.var_b21b857[#"maxis"] = 0;
    }
    if (!isdefined(self.var_b21b857[#"omega"])) {
        self.var_b21b857[#"omega"] = 0;
    }
}

// Namespace zm_intel/zm_intel
// Params 0, eflags: 0x2 linked
// Checksum 0xd8f24281, Offset: 0xb60
// Size: 0x5d2
function function_9799c283() {
    if (level flag::get(#"spawn_intel_at_start_complete") && !is_true(self.var_d02cff4e)) {
        foreach (var_495fa1f8 in level.var_238bd723) {
            if (isdefined(var_495fa1f8.var_bdb97676)) {
                if (isarray(var_495fa1f8.var_de540b3a)) {
                    if (self function_f0f36d47(var_495fa1f8.scriptbundlename)) {
                        continue;
                    }
                    arrayremovevalue(var_495fa1f8.var_de540b3a, undefined);
                    foreach (var_6a51d7c1 in var_495fa1f8.var_de540b3a) {
                        if (isdefined(var_6a51d7c1.var_b09e2381) && self.name != var_495fa1f8.var_bdb97676.var_b09e2381) {
                            var_6a51d7c1 hidefromplayer(self);
                            if (!isdefined(var_6a51d7c1.var_699c6bfb)) {
                                var_6a51d7c1.var_699c6bfb = [];
                            } else if (!isarray(var_6a51d7c1.var_699c6bfb)) {
                                var_6a51d7c1.var_699c6bfb = array(var_6a51d7c1.var_699c6bfb);
                            }
                            if (!isinarray(var_6a51d7c1.var_699c6bfb, self)) {
                                var_6a51d7c1.var_699c6bfb[var_6a51d7c1.var_699c6bfb.size] = self;
                            }
                        }
                    }
                    var_495fa1f8.var_bdb97676 = function_2ba45c94(var_495fa1f8.scriptbundlename, var_495fa1f8.origin, var_495fa1f8.angles, (64, 64, 64), undefined, undefined, self.name, 0);
                    if (!isdefined(var_495fa1f8.var_de540b3a)) {
                        var_495fa1f8.var_de540b3a = [];
                    } else if (!isarray(var_495fa1f8.var_de540b3a)) {
                        var_495fa1f8.var_de540b3a = array(var_495fa1f8.var_de540b3a);
                    }
                    if (!isinarray(var_495fa1f8.var_de540b3a, var_495fa1f8.var_bdb97676)) {
                        var_495fa1f8.var_de540b3a[var_495fa1f8.var_de540b3a.size] = var_495fa1f8.var_bdb97676;
                    }
                    var_495fa1f8.var_bdb97676.var_d86211f5 = 1;
                } else if (self function_f0f36d47(var_495fa1f8.var_bdb97676.var_d5fa8477) || isdefined(var_495fa1f8.var_bdb97676.var_b09e2381) && self.name != var_495fa1f8.var_bdb97676.var_b09e2381) {
                    var_495fa1f8.var_bdb97676 hidefromplayer(self);
                }
                continue;
            }
            if (is_true(var_495fa1f8.script_enable_on_start)) {
                var_495fa1f8 thread function_23255935();
            }
        }
        arrayremovevalue(level.var_35aa6043, undefined);
        foreach (var_db4d0036 in level.var_35aa6043) {
            if (is_true(var_db4d0036.var_d86211f5)) {
                continue;
            }
            if (self function_f0f36d47(var_db4d0036.var_d5fa8477) || isdefined(var_db4d0036.var_b09e2381) && self.name != var_db4d0036.var_b09e2381) {
                var_db4d0036 hidefromplayer(self);
                if (!isdefined(var_db4d0036.var_699c6bfb)) {
                    var_db4d0036.var_699c6bfb = [];
                } else if (!isarray(var_db4d0036.var_699c6bfb)) {
                    var_db4d0036.var_699c6bfb = array(var_db4d0036.var_699c6bfb);
                }
                if (!isinarray(var_db4d0036.var_699c6bfb, self)) {
                    var_db4d0036.var_699c6bfb[var_db4d0036.var_699c6bfb.size] = self;
                }
            }
        }
    }
    self.var_d02cff4e = 1;
}

// Namespace zm_intel/zm_intel
// Params 0, eflags: 0x2 linked
// Checksum 0xab0d6aa1, Offset: 0x1140
// Size: 0x400
function function_aa317cfe() {
    level flag::wait_till("start_zombie_round_logic");
    var_80198f58 = struct::get_array("zm_intel_radio_transmission_locations");
    foreach (var_41c6d68b in var_80198f58) {
        if (!isdefined(var_41c6d68b.faction)) {
            var_41c6d68b.faction = isdefined(var_41c6d68b.script_string) ? var_41c6d68b.script_string : "";
        }
        switch (var_41c6d68b.faction) {
        case #"hash_1303dcb8d0e80e33":
            var_bed5445b = #"hash_4fe1a0b748461f0f";
            var_32edbef9 = #"hash_405e81feb85c5162";
            break;
        case #"maxis":
            var_bed5445b = #"hash_2a2df769d600b242";
            var_32edbef9 = #"hash_6fec31948ca2058c";
            break;
        case #"omega":
            var_bed5445b = #"hash_4fe193b7484608f8";
            var_32edbef9 = #"hash_28fec49f37a535b9";
            break;
        }
        if (!isdefined(var_32edbef9)) {
            continue;
        }
        var_41c6d68b.var_bdb97676 = util::spawn_model(isdefined(var_41c6d68b.model) ? var_41c6d68b.model : var_bed5445b, var_41c6d68b.origin, var_41c6d68b.angles);
        if (isdefined(var_41c6d68b.modelscale) && var_41c6d68b.modelscale != 1) {
            var_41c6d68b.var_bdb97676 setscale(var_41c6d68b.modelscale);
        }
        var_41c6d68b.var_bdb97676.var_32edbef9 = var_32edbef9;
        var_41c6d68b.var_bdb97676.var_9be0526e = #"hash_20ea75a25d912949";
        var_41c6d68b.var_bdb97676.faction = var_41c6d68b.faction;
        var_41c6d68b.var_bdb97676.var_71396476 = 1;
        var_41c6d68b.var_bdb97676 function_619a5c20();
        var_41c6d68b.var_bdb97676 zm_ping::function_9e0598bb(6);
        if (isdefined(var_41c6d68b.var_75b8887d) && var_41c6d68b.var_75b8887d != (0, 0, 0)) {
            dimensions = var_41c6d68b.var_75b8887d;
        } else if (isdefined(var_41c6d68b.radius) && var_41c6d68b.radius != 0) {
            dimensions = var_41c6d68b.radius;
        }
        var_41c6d68b.var_bdb97676 zm_unitrigger::create(&function_8176b2c7, isdefined(dimensions) ? dimensions : (64, 64, 64), &function_a78987b);
        zm_unitrigger::unitrigger_force_per_player_triggers(var_41c6d68b.var_bdb97676.s_unitrigger, 1);
        zm_unitrigger::function_89380dda(var_41c6d68b.var_bdb97676.s_unitrigger);
    }
}

// Namespace zm_intel/zm_intel
// Params 0, eflags: 0x2 linked
// Checksum 0x89f4be52, Offset: 0x1548
// Size: 0xe4
function function_696dd88b() {
    level flag::wait_till("start_zombie_round_logic");
    foreach (var_495fa1f8 in level.var_238bd723) {
        if (is_true(var_495fa1f8.script_enable_on_start)) {
            var_495fa1f8 thread function_23255935();
        }
    }
    level flag::set("spawn_intel_at_start_complete");
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x2 linked
// Checksum 0xd9aa0d38, Offset: 0x1638
// Size: 0x87c
function function_23255935(str_targetname) {
    var_99bf2e73 = self;
    if (isdefined(str_targetname)) {
        var_99bf2e73 = struct::get(str_targetname);
    }
    var_d5fa8477 = var_99bf2e73.scriptbundlename;
    if (!function_43abed5a(var_d5fa8477)) {
        return;
    }
    if (isdefined(var_99bf2e73.scriptbundlename) && !isdefined(var_99bf2e73.var_bdb97676) && !function_1a594d26(var_d5fa8477)) {
        s_bundle = getscriptbundle(var_99bf2e73.scriptbundlename);
        if (isdefined(s_bundle.itemspawnentry)) {
            point = function_4ba8fde(s_bundle.itemspawnentry);
            if (isdefined(point.itementry)) {
                foreach (player in getplayers()) {
                    if (isdefined(player) && !player function_f0f36d47(var_d5fa8477)) {
                        var_99bf2e73.var_bdb97676 = function_2ba45c94(var_d5fa8477, var_99bf2e73.origin, var_99bf2e73.angles, (64, 64, 64), undefined, undefined, player.name, 0);
                        if (!isdefined(var_99bf2e73.var_de540b3a)) {
                            var_99bf2e73.var_de540b3a = [];
                        } else if (!isarray(var_99bf2e73.var_de540b3a)) {
                            var_99bf2e73.var_de540b3a = array(var_99bf2e73.var_de540b3a);
                        }
                        if (!isinarray(var_99bf2e73.var_de540b3a, var_99bf2e73.var_bdb97676)) {
                            var_99bf2e73.var_de540b3a[var_99bf2e73.var_de540b3a.size] = var_99bf2e73.var_bdb97676;
                        }
                        var_99bf2e73.var_bdb97676.var_d86211f5 = 1;
                    }
                }
                return;
            } else if (isdefined(s_bundle.model)) {
                var_99bf2e73.var_bdb97676 = util::spawn_model(s_bundle.model, var_99bf2e73.origin, var_99bf2e73.angles);
                if (!isdefined(level.var_35aa6043)) {
                    level.var_35aa6043 = [];
                } else if (!isarray(level.var_35aa6043)) {
                    level.var_35aa6043 = array(level.var_35aa6043);
                }
                if (!isinarray(level.var_35aa6043, var_99bf2e73.var_bdb97676)) {
                    level.var_35aa6043[level.var_35aa6043.size] = var_99bf2e73.var_bdb97676;
                }
            }
        } else if (isdefined(s_bundle.model)) {
            var_99bf2e73.var_bdb97676 = util::spawn_model(s_bundle.model, var_99bf2e73.origin, var_99bf2e73.angles);
            if (!isdefined(level.var_35aa6043)) {
                level.var_35aa6043 = [];
            } else if (!isarray(level.var_35aa6043)) {
                level.var_35aa6043 = array(level.var_35aa6043);
            }
            if (!isinarray(level.var_35aa6043, var_99bf2e73.var_bdb97676)) {
                level.var_35aa6043[level.var_35aa6043.size] = var_99bf2e73.var_bdb97676;
            }
        } else {
            return;
        }
        foreach (player in getplayers()) {
            if (player function_f0f36d47(var_d5fa8477)) {
                var_99bf2e73.var_bdb97676 hidefromplayer(player);
            }
        }
        var_99bf2e73.var_bdb97676.var_d86211f5 = 1;
        var_99bf2e73.var_bdb97676 function_619a5c20();
        var_99bf2e73.var_bdb97676 zm_ping::function_9e0598bb(6);
        var_99bf2e73.var_bdb97676.var_d5fa8477 = var_99bf2e73.scriptbundlename;
        var_99bf2e73.var_bdb97676.script_flag_true = var_99bf2e73.script_flag_true;
        var_99bf2e73.var_bdb97676.str_faction = s_bundle.var_ad4ad686;
        var_99bf2e73.var_bdb97676.var_2b372cf6 = s_bundle.var_9be0526e;
        var_99bf2e73.var_bdb97676.var_9be0526e = s_bundle.var_9be0526e;
        if (isdefined(var_99bf2e73.modelscale) && var_99bf2e73.modelscale != 1) {
            var_99bf2e73.var_bdb97676 setscale(var_99bf2e73.modelscale);
            if (isarray(var_99bf2e73.var_bdb97676.var_9981940d)) {
                foreach (var_56541b8b in var_99bf2e73.var_bdb97676.var_9981940d) {
                    var_56541b8b setscale(var_99bf2e73.modelscale);
                }
            }
        }
        if (!is_true(var_99bf2e73.var_bdb97676.var_cbbbaf39)) {
            if (isdefined(var_99bf2e73.var_75b8887d) && var_99bf2e73.var_75b8887d != (0, 0, 0)) {
                dimensions = var_99bf2e73.var_75b8887d;
            } else if (isdefined(var_99bf2e73.radius) && var_99bf2e73.radius != 0) {
                dimensions = var_99bf2e73.radius;
            }
            var_99bf2e73.var_bdb97676 zm_unitrigger::create(&function_8176b2c7, isdefined(dimensions) ? dimensions : (64, 64, 64), &function_a78987b);
            zm_unitrigger::unitrigger_force_per_player_triggers(var_99bf2e73.var_bdb97676.s_unitrigger, 1);
            zm_unitrigger::function_89380dda(var_99bf2e73.var_bdb97676.s_unitrigger);
        }
        if (isdefined(var_99bf2e73.var_bdb97676) && isdefined(s_bundle.soundloop)) {
            var_99bf2e73.var_bdb97676 playloopsound(s_bundle.soundloop);
        }
        /#
            var_99bf2e73.var_bdb97676 thread function_6efd4108();
        #/
    }
}

// Namespace zm_intel/zm_intel
// Params 8, eflags: 0x2 linked
// Checksum 0x49c319ae, Offset: 0x1ec0
// Size: 0x720
function function_2ba45c94(var_d5fa8477, v_pos, v_ang = (0, 0, 0), var_cd038aea, var_d65061b2 = 0, b_play_fx = 0, var_b09e2381, var_7e1bf71f = 2) {
    if (!function_43abed5a(var_d5fa8477)) {
        return;
    }
    s_bundle = getscriptbundle(var_d5fa8477);
    if (isdefined(s_bundle.itemspawnentry)) {
        point = function_4ba8fde(s_bundle.itemspawnentry);
        if (isdefined(point.itementry)) {
            var_bdb97676 = item_drop::drop_item(0, undefined, 1, 0, point.id, v_pos, v_ang, var_7e1bf71f);
            var_bdb97676.var_d5fa8477 = hash(var_d5fa8477);
            var_bdb97676.var_cbbbaf39 = 1;
            var_bdb97676.var_b09e2381 = var_b09e2381;
            if (!isdefined(level.var_35aa6043)) {
                level.var_35aa6043 = [];
            } else if (!isarray(level.var_35aa6043)) {
                level.var_35aa6043 = array(level.var_35aa6043);
            }
            if (!isinarray(level.var_35aa6043, var_bdb97676)) {
                level.var_35aa6043[level.var_35aa6043.size] = var_bdb97676;
            }
            foreach (player in getplayers()) {
                if (player function_f0f36d47(var_d5fa8477) || isdefined(var_bdb97676.var_b09e2381) && player.name != var_bdb97676.var_b09e2381) {
                    var_bdb97676 hidefromplayer(player);
                    if (!isdefined(var_bdb97676.var_699c6bfb)) {
                        var_bdb97676.var_699c6bfb = [];
                    } else if (!isarray(var_bdb97676.var_699c6bfb)) {
                        var_bdb97676.var_699c6bfb = array(var_bdb97676.var_699c6bfb);
                    }
                    if (!isinarray(var_bdb97676.var_699c6bfb, player)) {
                        var_bdb97676.var_699c6bfb[var_bdb97676.var_699c6bfb.size] = player;
                    }
                }
            }
        } else {
            var_bdb97676 = util::spawn_model(isdefined(s_bundle.model) ? s_bundle.model : "tag_origin", v_pos, v_ang);
            var_bdb97676 function_619a5c20();
            var_bdb97676 zm_ping::function_9e0598bb(6);
            var_bdb97676.var_d5fa8477 = hash(var_d5fa8477);
            if (!isdefined(level.var_35aa6043)) {
                level.var_35aa6043 = [];
            } else if (!isarray(level.var_35aa6043)) {
                level.var_35aa6043 = array(level.var_35aa6043);
            }
            if (!isinarray(level.var_35aa6043, var_bdb97676)) {
                level.var_35aa6043[level.var_35aa6043.size] = var_bdb97676;
            }
            var_3e4e3c6a = 1;
        }
    } else {
        var_bdb97676 = util::spawn_model(isdefined(s_bundle.model) ? s_bundle.model : "tag_origin", v_pos, v_ang);
        var_bdb97676.var_d5fa8477 = hash(var_d5fa8477);
        if (!isdefined(level.var_35aa6043)) {
            level.var_35aa6043 = [];
        } else if (!isarray(level.var_35aa6043)) {
            level.var_35aa6043 = array(level.var_35aa6043);
        }
        if (!isinarray(level.var_35aa6043, var_bdb97676)) {
            level.var_35aa6043[level.var_35aa6043.size] = var_bdb97676;
        }
        var_3e4e3c6a = 1;
    }
    if (var_d65061b2) {
        var_bdb97676 rotate((0, 90, 0));
        var_bdb97676 bobbing((0, 0, 1), 2, 1.5);
    }
    if (b_play_fx) {
        var_bdb97676 clientfield::set("" + #"hash_475f3329eaf62eaf", 1);
    }
    if (is_true(var_3e4e3c6a)) {
        s_unitrigger = var_bdb97676 zm_unitrigger::create(&function_8176b2c7, isdefined(var_cd038aea) ? var_cd038aea : 100, &function_a78987b);
        zm_unitrigger::unitrigger_force_per_player_triggers(s_unitrigger, 1);
        zm_unitrigger::function_89380dda(s_unitrigger);
    }
    if (isdefined(s_bundle.soundloop)) {
        var_bdb97676 playloopsound(s_bundle.soundloop);
    }
    /#
        var_bdb97676 thread function_6efd4108();
    #/
    return var_bdb97676;
}

/#

    // Namespace zm_intel/zm_intel
    // Params 0, eflags: 0x4
    // Checksum 0x5f30bb84, Offset: 0x25e8
    // Size: 0x23e
    function private function_6efd4108() {
        if (!isdefined(self)) {
            return;
        }
        self notify("<unknown string>");
        self endon("<unknown string>");
        self endon(#"death");
        while (true) {
            if (!getdvarint(#"hash_6aad5d3866085387", 0)) {
                waitframe(1);
                continue;
            }
            var_db08e6c3 = "<unknown string>";
            foreach (player in getplayers()) {
                if (isdefined(self.var_b09e2381) && player.name == self.var_b09e2381 || !isdefined(self.var_b09e2381) && !player function_f0f36d47(self.var_d5fa8477)) {
                    v_offset = (player getentitynumber() + 1) * (0, 0, -5);
                    print3d(self.origin + v_offset, player.name, (0, 1, 0), undefined, 0.2);
                }
            }
            print3d(self.origin, "<unknown string>" + function_9e72a96(self.var_d5fa8477), (0, 1, 0), undefined, 0.2);
            circle(self.origin, 40, (0, 1, 0));
            waitframe(1);
        }
    }

#/

// Namespace zm_intel/zm_intel
// Params 2, eflags: 0x2 linked
// Checksum 0xc441a5ce, Offset: 0x2830
// Size: 0x27e
function function_c1974629(v_target_loc, n_power = 200) {
    if (isstruct(self)) {
        var_bdb97676 = self.var_bdb97676;
    } else {
        var_bdb97676 = self;
    }
    if (!isdefined(var_bdb97676)) {
        return;
    }
    if (!isdefined(v_target_loc) && isdefined(self.target)) {
        target = getent(self.target, "targetname");
        if (!isdefined(target)) {
            target = struct::get(self.target, "targetname");
        }
        v_target_loc = target.origin;
        var_efc184d0 = target.angles;
    }
    assert(isdefined(v_target_loc), "<unknown string>" + function_9e72a96(var_bdb97676.var_d5fa8477));
    if (is_true(var_bdb97676.var_cbbbaf39)) {
        n_time = var_bdb97676 zm_utility::fake_physicslaunch(v_target_loc, n_power);
        wait(n_time);
        var_bdb97676.origin = v_target_loc;
        if (isdefined(var_efc184d0)) {
            var_bdb97676.angles = var_efc184d0;
        }
        if (isstruct(self)) {
            self.origin = var_bdb97676.origin;
            self.angles = var_bdb97676.angles;
        }
        return;
    }
    n_time = var_bdb97676 zm_utility::fake_physicslaunch(v_target_loc, n_power);
    wait(n_time);
    var_bdb97676.origin = v_target_loc;
    if (isdefined(var_efc184d0)) {
        var_bdb97676.angles = var_efc184d0;
    }
    zm_unitrigger::function_47625e58(var_bdb97676.s_unitrigger, var_bdb97676.origin, var_bdb97676.angles);
    if (isstruct(self)) {
        self.origin = var_bdb97676.origin;
        self.angles = var_bdb97676.angles;
    }
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x6 linked
// Checksum 0x4529268e, Offset: 0x2ab8
// Size: 0x8c
function private function_b0049c2a(params) {
    item = params.item;
    if (isplayer(self) && isdefined(item.var_d5fa8477) && !self function_f0f36d47(item.var_d5fa8477)) {
        self collect_intel(item.var_d5fa8477, item);
    }
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x6 linked
// Checksum 0x269a3ce0, Offset: 0x2b50
// Size: 0x428
function private function_8176b2c7(e_player) {
    var_bdb97676 = self.stub.related_parent;
    if (isdefined(var_bdb97676.script_flag_true) && !level flag::get(var_bdb97676.script_flag_true)) {
        var_bdb97676 ghost();
        var_bdb97676 notsolid();
        var_bdb97676 function_23a29590();
        if (isarray(var_bdb97676.var_9981940d)) {
            array::run_all(var_bdb97676.var_9981940d, &ghost);
        }
        return false;
    } else if (isdefined(var_bdb97676.script_flag_true) && level flag::get(var_bdb97676.script_flag_true)) {
        var_bdb97676 function_619a5c20();
        var_bdb97676 solid();
    }
    if (var_bdb97676.var_9be0526e === #"hash_20ea75a25d912949" && level flag::get(#"dark_aether_active")) {
        return false;
    }
    if (isdefined(var_bdb97676.var_32edbef9)) {
        if (!isdefined(var_bdb97676.var_56c62073)) {
            var_bdb97676.var_56c62073 = [];
        }
        if (!isdefined(var_bdb97676.var_56c62073[e_player.name]) || isdefined(level.var_fa1d4366)) {
            var_bdb97676.var_56c62073[e_player.name] = function_2bcfd899(var_bdb97676.var_32edbef9, e_player);
        }
        var_d5fa8477 = var_bdb97676.var_56c62073[e_player.name];
    } else {
        var_d5fa8477 = var_bdb97676.var_d5fa8477;
    }
    if (!isdefined(var_d5fa8477) || e_player function_f0f36d47(var_d5fa8477) || var_bdb97676.var_9be0526e === #"hash_20ea75a25d912949" && e_player.var_b21b857[var_bdb97676.faction] >= 1) {
        if (isdefined(var_d5fa8477) && is_true(level.var_eb704e15[var_d5fa8477][e_player.name])) {
            return false;
        } else if (var_bdb97676.var_9be0526e === #"hash_20ea75a25d912949") {
            if (e_player function_a3e4f9a1(var_bdb97676.var_32edbef9)) {
                self sethintstringforplayer(e_player, #"hash_4c0799e45640f98c");
            } else {
                return false;
            }
        } else {
            var_bdb97676 hidefromplayer(e_player);
            return false;
        }
        return true;
    }
    var_bdb97676 showtoplayer(e_player);
    if (isarray(var_bdb97676.var_9981940d)) {
        array::run_all(var_bdb97676.var_9981940d, &showtoplayer, e_player);
    }
    self sethintstringforplayer(e_player, e_player zm_utility::function_d6046228(#"hash_33ae89d6ac634cd3", #"hash_5ab1861040dfa3f9"));
    return true;
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x6 linked
// Checksum 0x502fd116, Offset: 0x2f80
// Size: 0x120
function private function_a78987b(e_player) {
    self endon(#"death");
    var_bdb97676 = self.stub.related_parent;
    while (true) {
        s_waitresult = self waittill(#"trigger");
        e_player = s_waitresult.activator;
        if (isdefined(var_bdb97676.var_56c62073[e_player.name])) {
            var_d5fa8477 = var_bdb97676.var_56c62073[e_player.name];
        } else {
            var_d5fa8477 = var_bdb97676.var_d5fa8477;
        }
        if (!isdefined(var_d5fa8477) || !zm_utility::can_use(e_player, 0) || e_player function_f0f36d47(var_d5fa8477)) {
            continue;
        }
        e_player thread collect_intel(var_d5fa8477, var_bdb97676);
    }
}

// Namespace zm_intel/zm_intel
// Params 4, eflags: 0x2 linked
// Checksum 0xd85e691c, Offset: 0x30a8
// Size: 0x5cc
function collect_intel(var_d5fa8477, var_bdb97676, var_eac6151d, var_54c59ebe = 0) {
    if (isstring(var_d5fa8477)) {
        var_d5fa8477 = hash(var_d5fa8477);
    }
    /#
        var_65679637 = getscriptbundlenames("<unknown string>");
        assert(isinarray(var_65679637, var_d5fa8477), function_9e72a96(var_d5fa8477) + "<unknown string>");
    #/
    if (!self function_f0f36d47(var_d5fa8477)) {
        var_f83e960b = 1;
        if (var_bdb97676.var_9be0526e === #"hash_20ea75a25d912949") {
            self.var_b21b857[var_bdb97676.faction]++;
        }
    }
    self function_7e211a10(var_d5fa8477);
    self zm_stats::function_a6b15f2c(var_d5fa8477, 1);
    self function_bc82f900(#"zm_interact_rumble");
    if (!isdefined(self.var_9d781602)) {
        self.var_9d781602 = [];
    } else if (!isarray(self.var_9d781602)) {
        self.var_9d781602 = array(self.var_9d781602);
    }
    if (!isinarray(self.var_9d781602, var_d5fa8477)) {
        self.var_9d781602[self.var_9d781602.size] = var_d5fa8477;
    }
    self notify(#"intel_collected");
    if (is_true(var_f83e960b)) {
        currentprogress = self function_32b4eecc();
        totalprogress = level.var_731907e8;
        self luinotifyevent(#"hash_c587d2e4faec420", 3, var_d5fa8477, currentprogress, totalprogress);
        self playlocalsound(#"hash_68c4c53739928215");
    }
    /#
        iprintln("<unknown string>" + self getentitynumber() + "<unknown string>" + function_9e72a96(var_d5fa8477));
    #/
    level.var_eb704e15[var_d5fa8477][self.name] = 1;
    if (!var_54c59ebe) {
        self function_3f3be625(var_d5fa8477, isdefined(var_eac6151d) ? var_eac6151d : var_bdb97676);
    }
    if (isplayer(self)) {
        level.var_eb704e15[var_d5fa8477][self.name] = undefined;
    }
    if (isarray(level.var_eb704e15[var_d5fa8477])) {
        foreach (var_f619e4d in level.var_eb704e15[var_d5fa8477]) {
            if (is_true(var_f619e4d)) {
                var_71396476 = 1;
                break;
            }
        }
    }
    if (isdefined(var_bdb97676) && !is_true(var_bdb97676.var_71396476) && !is_true(var_71396476)) {
        if (function_1a594d26(var_d5fa8477) || isdefined(var_bdb97676.var_b09e2381) && isdefined(self.name) && var_bdb97676.var_b09e2381 == self.name) {
            if (isdefined(var_bdb97676.s_unitrigger)) {
                zm_unitrigger::unregister_unitrigger(var_bdb97676.s_unitrigger);
            }
            if (isarray(var_bdb97676.var_9981940d)) {
                array::delete_all(var_bdb97676.var_9981940d);
                var_bdb97676.var_9981940d = undefined;
            }
            if (is_true(var_bdb97676.var_cbbbaf39)) {
                item_world::consume_item(var_bdb97676);
            } else {
                var_bdb97676 delete();
            }
            return;
        }
        if (isdefined(var_bdb97676) && isplayer(self)) {
            var_bdb97676 hidefromplayer(self);
        }
    }
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x2 linked
// Checksum 0x250bb6a2, Offset: 0x3680
// Size: 0x8ea
function function_7e211a10(var_d5fa8477) {
    if (isdefined(level.var_a62e1750)) {
        var_6c41667f = getscriptbundle(level.var_a62e1750);
        if (isarray(var_6c41667f.var_572513bb) && var_6c41667f.var_572513bb.size) {
            foreach (var_ea06eccb in var_6c41667f.var_572513bb) {
                if (var_ea06eccb.season === #"hash_3c8cc59cdaa4bb29") {
                    continue;
                }
                if (isdefined(self) && var_d5fa8477 === hash(var_ea06eccb.var_cb9cd317) && !self function_f0f36d47(var_ea06eccb.var_cb9cd317)) {
                    if (is_true(level.var_92c52eed)) {
                        self zm_stats::increment_challenge_stat(#"hash_607cee7194682397");
                        return;
                    }
                    if (is_true(level.var_ce7af4fa)) {
                        self zm_stats::increment_challenge_stat(#"hash_255cd64167fc9d64");
                        return;
                    }
                    if (is_true(level.var_775a83a7)) {
                        self zm_stats::increment_challenge_stat(#"hash_2edbb2ffba8d18c2");
                        return;
                    }
                    if (is_true(level.var_f937a06e)) {
                        self zm_stats::increment_challenge_stat(#"hash_444372d7b49ca39a");
                    }
                    return;
                }
            }
        }
    }
    if (isdefined(level.var_fc3c65a7)) {
        var_bd7c92ca = getscriptbundle(level.var_fc3c65a7);
        if (isarray(var_bd7c92ca.var_572513bb) && var_bd7c92ca.var_572513bb.size) {
            foreach (var_71fdaa63 in var_bd7c92ca.var_572513bb) {
                if (var_71fdaa63.season === #"hash_3c8cc59cdaa4bb29") {
                    continue;
                }
                if (isdefined(self) && var_d5fa8477 === hash(var_71fdaa63.var_cb9cd317) && !self function_f0f36d47(var_71fdaa63.var_cb9cd317)) {
                    if (is_true(level.var_92c52eed)) {
                        self zm_stats::increment_challenge_stat(#"hash_1cb9f04cdc593ac2");
                        return;
                    }
                    if (is_true(level.var_ce7af4fa)) {
                        self zm_stats::increment_challenge_stat(#"hash_474edef2893daed1");
                        return;
                    }
                    if (is_true(level.var_f937a06e)) {
                        self zm_stats::increment_challenge_stat(#"hash_b672726889db04a");
                    }
                    return;
                }
            }
        }
    }
    if (isdefined(level.var_bc543de)) {
        var_24cb44c7 = getscriptbundle(level.var_bc543de);
        if (isarray(var_24cb44c7.var_572513bb) && var_24cb44c7.var_572513bb.size) {
            foreach (var_edc4bdb7 in var_24cb44c7.var_572513bb) {
                if (var_edc4bdb7.season === #"hash_3c8cc59cdaa4bb29") {
                    continue;
                }
                if (isdefined(self) && var_d5fa8477 === hash(var_edc4bdb7.var_cb9cd317) && !self function_f0f36d47(var_edc4bdb7.var_cb9cd317)) {
                    if (is_true(level.var_92c52eed)) {
                        self zm_stats::increment_challenge_stat(#"hash_6289f0dc7ba983ec");
                        return;
                    }
                    if (is_true(level.var_ce7af4fa)) {
                        self zm_stats::increment_challenge_stat(#"hash_57f49fd5e493248f");
                        return;
                    }
                    if (is_true(level.var_775a83a7)) {
                        self zm_stats::increment_challenge_stat(#"hash_c3db4d34d330b35");
                        return;
                    }
                    if (is_true(level.var_f937a06e)) {
                        self zm_stats::increment_challenge_stat(#"hash_b672726889db04a");
                    }
                    return;
                }
            }
        }
    }
    if (isdefined(level.var_4b66954c)) {
        var_16642490 = getscriptbundle(level.var_4b66954c);
        if (isarray(var_16642490.var_572513bb) && var_16642490.var_572513bb.size) {
            foreach (var_32d7f225 in var_16642490.var_572513bb) {
                if (var_32d7f225.season === #"hash_3c8cc59cdaa4bb29") {
                    continue;
                }
                if (isdefined(self) && var_d5fa8477 === hash(var_32d7f225.var_cb9cd317) && !self function_f0f36d47(var_32d7f225.var_cb9cd317)) {
                    if (is_true(level.var_92c52eed)) {
                        self zm_stats::increment_challenge_stat(#"hash_4748a07c715661dc");
                        return;
                    }
                    if (is_true(level.var_ce7af4fa)) {
                        self zm_stats::increment_challenge_stat(#"hash_56778cda5cdf54df");
                        return;
                    }
                    if (is_true(level.var_775a83a7)) {
                        self zm_stats::increment_challenge_stat(#"hash_3464a638f7ae0cf1");
                        return;
                    }
                    if (is_true(level.var_f937a06e)) {
                        self zm_stats::increment_challenge_stat(#"hash_43cf01ce2a0622c9");
                    }
                    return;
                }
            }
        }
    }
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x2 linked
// Checksum 0x6960b279, Offset: 0x3f78
// Size: 0x2f4
function function_a2579c2d(map_name) {
    var_e1227fd2 = function_6f647eeb(level.var_a62e1750);
    var_8c4114bc = function_6f647eeb(level.var_fc3c65a7);
    var_a660a64f = function_6f647eeb(level.var_bc543de);
    var_835505eb = function_6f647eeb(level.var_4b66954c);
    var_4fc22493 = var_8c4114bc + var_a660a64f;
    if (map_name === #"zm_tungsten") {
        self function_4bd91776(#"hash_444372d7b49ca39a", var_e1227fd2);
        self function_4bd91776(#"hash_b672726889db04a", var_4fc22493);
        self function_4bd91776(#"hash_43cf01ce2a0622c9", var_835505eb);
        return;
    }
    if (map_name === #"zm_platinum") {
        self function_4bd91776(#"hash_2edbb2ffba8d18c2", var_e1227fd2);
        self function_4bd91776(#"hash_c3db4d34d330b35", var_a660a64f);
        self function_4bd91776(#"hash_3464a638f7ae0cf1", var_835505eb);
        return;
    }
    if (map_name === #"zm_gold") {
        self function_4bd91776(#"hash_255cd64167fc9d64", var_e1227fd2);
        self function_4bd91776(#"hash_474edef2893daed1", var_8c4114bc);
        self function_4bd91776(#"hash_57f49fd5e493248f", var_a660a64f);
        self function_4bd91776(#"hash_56778cda5cdf54df", var_835505eb);
        return;
    }
    if (map_name === #"zm_silver") {
        self function_4bd91776(#"hash_607cee7194682397", var_e1227fd2);
        self function_4bd91776(#"hash_1cb9f04cdc593ac2", var_8c4114bc);
        self function_4bd91776(#"hash_6289f0dc7ba983ec", var_a660a64f);
        self function_4bd91776(#"hash_4748a07c715661dc", var_835505eb);
    }
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x2 linked
// Checksum 0x6e7577b, Offset: 0x4278
// Size: 0x13a
function function_6f647eeb(var_318b924a) {
    var_33bc9fa1 = 0;
    if (isdefined(var_318b924a)) {
        var_71b26808 = getscriptbundle(var_318b924a);
        if (isarray(var_71b26808.var_572513bb) && var_71b26808.var_572513bb.size) {
            foreach (var_99bf2e73 in var_71b26808.var_572513bb) {
                if (var_99bf2e73.season === #"hash_3c8cc59cdaa4bb29") {
                    continue;
                }
                var_89052c1 = self function_f0f36d47(var_99bf2e73.var_cb9cd317);
                if (var_89052c1) {
                    var_33bc9fa1++;
                }
            }
        }
    }
    return var_33bc9fa1;
}

// Namespace zm_intel/zm_intel
// Params 2, eflags: 0x2 linked
// Checksum 0xf5cf541e, Offset: 0x43c0
// Size: 0xec
function function_4bd91776(stat_name, var_af7a9e0b) {
    var_77a3e2b8 = self stats::get_stat(#"playerstatslist", stat_name, #"challengetier");
    if (!isdefined(var_77a3e2b8)) {
        var_77a3e2b8 = 0;
    }
    if (var_77a3e2b8 == 0 && var_af7a9e0b > self stats::get_stat(#"playerstatslist", stat_name, #"challengevalue")) {
        self stats::set_stat(#"playerstatslist", stat_name, #"challengevalue", 0);
        self zm_stats::increment_challenge_stat(stat_name, var_af7a9e0b);
    }
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x2 linked
// Checksum 0xd304feea, Offset: 0x44b8
// Size: 0x88
function function_f0f36d47(var_d5fa8477) {
    assert(isdefined(var_d5fa8477), "<unknown string>");
    if (self zm_stats::function_376778d3(var_d5fa8477) || isinarray(self.var_9d781602, hash(var_d5fa8477))) {
        return true;
    }
    return false;
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x2 linked
// Checksum 0x9305f88c, Offset: 0x4548
// Size: 0xc4
function function_3a2dd570(e_player) {
    if (isplayer(e_player)) {
        if (!isplayer(self) && isdefined(self.var_9be0526e) && self.var_9be0526e != #"hash_20ea75a25d912949") {
            self hidefromplayer(e_player);
        }
        e_player clientfield::increment_to_player("" + #"hash_1a818fdb4337dc5e");
        util::wait_network_frame();
    }
}

// Namespace zm_intel/zm_intel
// Params 2, eflags: 0x2 linked
// Checksum 0x8b19a74, Offset: 0x4618
// Size: 0x54c
function function_3f3be625(var_d5fa8477, var_eac6151d) {
    self endon(#"disconnect");
    /#
        if (getdvarint(#"hash_4f30c8114ee899d3", 0)) {
            return;
        }
    #/
    if (isdefined(var_eac6151d)) {
        var_eac6151d stoploopsound();
        var_eac6151d endon(#"death");
    } else {
        var_eac6151d = self;
    }
    if (self issplitscreen()) {
        foreach (other_player in getplayers()) {
            if (self === other_player) {
                continue;
            }
            if (self isplayeronsamemachine(other_player) && is_true(level.var_eb704e15[var_d5fa8477][other_player.name])) {
                var_1bdc121e = 1;
                break;
            }
        }
    }
    if (isarray(var_eac6151d.var_7e1c3be1) && var_eac6151d.var_7e1c3be1.size && !is_true(var_1bdc121e)) {
        foreach (var_b3130155 in var_eac6151d.var_7e1c3be1) {
            var_eac6151d stopsound(var_b3130155);
        }
        var_eac6151d.var_7e1c3be1 = [];
    }
    s_bundle = getscriptbundle(var_d5fa8477);
    var_eac6151d function_bd78aea0(s_bundle, self);
    if (isarray(s_bundle.var_1ad142ee) && s_bundle.var_1ad142ee.size) {
        if (is_true(s_bundle.var_2a12d36)) {
            foreach (index, var_73a92203 in s_bundle.var_1ad142ee) {
                if (index == s_bundle.var_1ad142ee.size - 1) {
                    var_eac6151d function_8a6749e9(var_73a92203.soundevent, self, var_73a92203.var_f35c5951, undefined, var_73a92203.var_5d4b5964, var_1bdc121e);
                    continue;
                }
                var_eac6151d thread function_8a6749e9(var_73a92203.soundevent, self, var_73a92203.var_f35c5951, undefined, undefined, var_1bdc121e);
            }
        } else {
            foreach (var_73a92203 in s_bundle.var_1ad142ee) {
                var_eac6151d function_8a6749e9(var_73a92203.soundevent, self, undefined, var_73a92203.var_f35c5951, var_73a92203.var_5d4b5964, var_1bdc121e);
            }
        }
        if (isdefined(var_eac6151d.script_flag_true) && !level flag::get(var_eac6151d.script_flag_true)) {
            var_eac6151d showtoplayer(self);
            var_eac6151d stopsounds();
            util::wait_network_frame();
            if (isdefined(var_eac6151d) && isplayer(self)) {
                var_eac6151d hidefromplayer(self);
            }
        }
    }
    var_eac6151d function_8f6791a4(s_bundle, self);
}

// Namespace zm_intel/zm_intel
// Params 6, eflags: 0x6 linked
// Checksum 0x992ae31d, Offset: 0x4b70
// Size: 0x29c
function private function_8a6749e9(var_9c1ebb19, e_player, var_dcfc156f, var_c736b731, var_70da3e8f, var_1bdc121e) {
    if (!isdefined(self) || !isdefined(e_player)) {
        return;
    }
    if (isplayer(self)) {
        self endon(#"disconnect");
    } else {
        self endon(#"death");
    }
    if (isplayer(e_player)) {
        e_player endon(#"disconnect");
    }
    if (isdefined(self.script_flag_true)) {
        if (level flag::get(self.script_flag_true)) {
            level endon(self.script_flag_true);
        } else {
            return;
        }
    }
    if (isdefined(var_9c1ebb19)) {
        if (isdefined(var_dcfc156f)) {
            wait(var_dcfc156f);
        }
        if (!is_true(var_1bdc121e)) {
            self playsoundtoplayer(var_9c1ebb19, e_player);
            if (!isdefined(self.var_7e1c3be1)) {
                self.var_7e1c3be1 = [];
            } else if (!isarray(self.var_7e1c3be1)) {
                self.var_7e1c3be1 = array(self.var_7e1c3be1);
            }
            self.var_7e1c3be1[self.var_7e1c3be1.size] = var_9c1ebb19;
        }
        if (zm_vo::function_32464c29()) {
            if (isdefined(var_70da3e8f)) {
                var_2690dae = var_70da3e8f;
            } else {
                var_2690dae = 3;
            }
        } else {
            var_2690dae = float(isdefined(soundgetplaybacktime(var_9c1ebb19)) ? soundgetplaybacktime(var_9c1ebb19) : 0) / 1000;
            var_2690dae = max(var_2690dae, 0.1);
        }
        wait(var_2690dae);
        if (isdefined(var_c736b731)) {
            wait(var_c736b731);
        }
        if (!is_true(var_1bdc121e)) {
            arrayremovevalue(self.var_7e1c3be1, var_9c1ebb19);
        }
    }
}

// Namespace zm_intel/zm_intel
// Params 2, eflags: 0x6 linked
// Checksum 0xcf6f01f5, Offset: 0x4e18
// Size: 0x1c4
function private function_bd78aea0(var_19a3087c, e_player) {
    if (isdefined(self.script_flag_true)) {
        if (level flag::get(self.script_flag_true)) {
            level endon(self.script_flag_true);
        } else {
            return;
        }
    }
    if (isdefined(var_19a3087c.var_348b91fd)) {
        switch (var_19a3087c.var_348b91fd) {
        case #"tape":
            var_27c5b5a9 = #"hash_ea30fff000de600";
            var_42e4e060 = #"hash_aa0fa647067d823";
            break;
        case #"radio":
            var_27c5b5a9 = #"hash_5c60481ce158163d";
            var_42e4e060 = #"hash_274981480733b7d0";
            break;
        default:
            var_27c5b5a9 = #"hash_23e6a36fce4ab6ef";
            var_42e4e060 = #"hash_6e621d4031bf8c5a";
            break;
        }
    }
    if (isdefined(var_27c5b5a9)) {
        self playsoundtoplayer(var_27c5b5a9, e_player);
    }
    self function_3a2dd570(e_player);
    wait(1);
    if (isdefined(self) && isplayer(e_player) && isdefined(var_19a3087c.var_3bb3493d)) {
        self playsoundtoplayer(var_19a3087c.var_3bb3493d, e_player);
    }
}

// Namespace zm_intel/zm_intel
// Params 2, eflags: 0x6 linked
// Checksum 0xea3a6d8c, Offset: 0x4fe8
// Size: 0x144
function private function_8f6791a4(var_19a3087c, e_player) {
    self function_3a2dd570(e_player);
    if (isdefined(var_19a3087c.var_348b91fd)) {
        switch (var_19a3087c.var_348b91fd) {
        case #"tape":
            var_37b08e30 = #"hash_f315a8d18c2e535";
            break;
        case #"radio":
            var_37b08e30 = #"hash_203997b7ca5c0dd4";
            break;
        default:
            var_37b08e30 = #"hash_6071229013cd6a96";
            break;
        }
    }
    if (isdefined(self) && isplayer(e_player) && isdefined(var_37b08e30)) {
        self playsoundtoplayer(var_37b08e30, e_player);
        if (isdefined(var_19a3087c.var_3bb3493d)) {
            self stopsound(var_19a3087c.var_3bb3493d);
        }
    }
}

// Namespace zm_intel/zm_intel
// Params 2, eflags: 0x2 linked
// Checksum 0x95456153, Offset: 0x5138
// Size: 0x340
function function_2bcfd899(var_f84ece9f, player) {
    if (isdefined(level.var_fa1d4366)) {
        var_d5fa8477 = level.var_fa1d4366;
        level.var_fa1d4366 = undefined;
        return var_d5fa8477;
    }
    switch (var_f84ece9f) {
    case #"hash_76270a10851f51d8":
        var_bf0df48d = level.var_9ff51719;
        break;
    case #"hash_71c51f24f7f3037d":
        var_bf0df48d = level.var_64d3d5c4;
        break;
    case #"hash_405e81feb85c5162":
        var_bf0df48d = level.var_13ebf509;
        break;
    case #"hash_6fec31948ca2058c":
        var_bf0df48d = level.var_1e898375;
        break;
    case #"hash_28fec49f37a535b9":
        var_bf0df48d = level.var_b131552c;
        break;
    default:
        assertmsg("<unknown string>");
        return;
    }
    if (!isdefined(var_bf0df48d)) {
        println("<unknown string>" + var_f84ece9f);
        return;
    }
    var_71b26808 = getscriptbundle(var_bf0df48d);
    if (!isarray(var_71b26808.var_572513bb) || !var_71b26808.var_572513bb.size) {
        return;
    }
    foreach (n_index, var_a36fa2c6 in var_71b26808.var_572513bb) {
        if (var_a36fa2c6.season === #"hash_3c8cc59cdaa4bb29") {
            continue;
        }
        if (isdefined(player)) {
            if (!player function_f0f36d47(var_a36fa2c6.var_cb9cd317) && function_43abed5a(var_a36fa2c6.var_cb9cd317)) {
                if (var_f84ece9f === #"hash_71c51f24f7f3037d") {
                    player clientfield::set_to_player("" + #"hash_711c8fee28432b7", n_index);
                }
                return var_a36fa2c6.var_cb9cd317;
            }
            continue;
        }
        if (!function_1a594d26(var_a36fa2c6.var_cb9cd317) && function_43abed5a(var_a36fa2c6.var_cb9cd317)) {
            return var_a36fa2c6.var_cb9cd317;
        }
    }
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x2 linked
// Checksum 0xc452de46, Offset: 0x5480
// Size: 0x242
function function_a3e4f9a1(var_f84ece9f) {
    if (isdefined(var_f84ece9f)) {
        switch (var_f84ece9f) {
        case #"hash_76270a10851f51d8":
            var_bf0df48d = level.var_9ff51719;
            break;
        case #"hash_71c51f24f7f3037d":
            var_bf0df48d = level.var_64d3d5c4;
            break;
        case #"hash_405e81feb85c5162":
            var_bf0df48d = level.var_13ebf509;
            break;
        case #"hash_6fec31948ca2058c":
            var_bf0df48d = level.var_1e898375;
            break;
        case #"hash_28fec49f37a535b9":
            var_bf0df48d = level.var_b131552c;
            break;
        default:
            assertmsg("<unknown string>");
            return true;
        }
    }
    if (!isdefined(var_bf0df48d)) {
        println("<unknown string>" + var_f84ece9f);
        return true;
    }
    var_71b26808 = getscriptbundle(var_bf0df48d);
    if (!isarray(var_71b26808.var_572513bb) || !var_71b26808.var_572513bb.size) {
        return true;
    }
    foreach (var_a36fa2c6 in var_71b26808.var_572513bb) {
        if (var_a36fa2c6.season === #"hash_3c8cc59cdaa4bb29") {
            continue;
        }
        if (!self function_f0f36d47(var_a36fa2c6.var_cb9cd317)) {
            return false;
        }
    }
    return true;
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x2 linked
// Checksum 0x60afc174, Offset: 0x56d0
// Size: 0xa2
function function_1a594d26(var_d5fa8477) {
    foreach (player in getplayers()) {
        if (!player function_f0f36d47(var_d5fa8477)) {
            return false;
        }
    }
    return true;
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x6 linked
// Checksum 0xa935d49a, Offset: 0x5780
// Size: 0x25c
function private on_ai_killed(params) {
    if (isplayer(params.eattacker) && (self.var_6f84b820 === #"elite" || self.var_6f84b820 === #"special")) {
        if (self.var_9fde8624 === #"hash_12fa854f3a7721b9" || self.var_9fde8624 === #"hash_3498fb1fbfcd0cf" || self.var_9fde8624 === #"hash_5653bbc44a034094" || self.var_9fde8624 === #"hash_70162f4bc795092") {
            level.var_df1d1235 += 0.5;
        } else {
            level.var_df1d1235 += 1;
        }
    }
    if ((isdefined(level.var_fa1d4366) || (self.var_6f84b820 === #"special" || self.var_6f84b820 === #"elite") && isplayer(params.eattacker) && (level.var_df1d1235 >= 4 || math::cointoss(10))) && function_44fcc093(self.origin)) {
        var_44a24b57 = self.origin + (0, 0, 36);
        if (self.archetype === #"avogadro" && level.script === "zm_tungsten") {
            var_44a24b57 += (0, 0, 16);
        }
        level thread function_20c3dbfd(getplayers(), var_44a24b57);
    }
}

// Namespace zm_intel/zm_intel
// Params 4, eflags: 0x2 linked
// Checksum 0x1f85be67, Offset: 0x59e8
// Size: 0x236
function function_20c3dbfd(a_players, var_44a24b57, var_85225c01 = 0, var_7e1bf71f) {
    if (zm_utility::is_survival()) {
        var_16532ad3 = 3;
    } else {
        var_16532ad3 = 1;
    }
    foreach (player in a_players) {
        if ((!isdefined(player) || player.var_e2d764da >= var_16532ad3 || is_true(player.var_cfc2f4bc)) && !isdefined(level.var_fa1d4366)) {
            continue;
        }
        var_d5fa8477 = function_2bcfd899(#"hash_76270a10851f51d8", player);
        var_e041507a = player getentitynumber();
        if (isdefined(var_d5fa8477)) {
            v_angles = (0, var_e041507a * 90 + var_85225c01, 0);
            var_bdb97676 = function_2ba45c94(var_d5fa8477, var_44a24b57, v_angles, (64, 64, 64), undefined, undefined, player.name, var_7e1bf71f);
            player.var_e2d764da++;
            if (isdefined(var_bdb97676.itementry)) {
                var_bdb97676.itementry.var_4cd830a = 1;
            }
            if (zm_utility::is_survival()) {
                player.var_cfc2f4bc = 1;
            }
        }
    }
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x6 linked
// Checksum 0xbbe7b0af, Offset: 0x5c28
// Size: 0x118
function private function_44fcc093(v_pos) {
    if (zm_utility::is_survival()) {
        if (ispointonnavmesh(v_pos, 15)) {
            var_b65c6fdd = function_9cc082d2(v_pos, 128);
            if (isdefined(var_b65c6fdd[#"point"]) && namespace_d0ab5955::function_3824d2dc(var_b65c6fdd[#"point"]) && function_39c955d5(var_b65c6fdd[#"point"])) {
                return true;
            }
        }
    } else if (zm_utility::check_point_in_playable_area(self.origin) || is_true(level.var_374c2805)) {
        return true;
    }
    return false;
}

// Namespace zm_intel/zm_intel
// Params 1, eflags: 0x6 linked
// Checksum 0xc78abbee, Offset: 0x5d48
// Size: 0x72
function private function_39c955d5(var_ab528fee) {
    v_trace_start = var_ab528fee + (0, 0, 70);
    trace = physicstraceex(v_trace_start, var_ab528fee);
    if (trace[#"fraction"] < 0.99) {
        return false;
    }
    return true;
}

// Namespace zm_intel/zm_intel
// Params 3, eflags: 0x2 linked
// Checksum 0xc4c03312, Offset: 0x5dc8
// Size: 0x1bc
function function_d0e6ff7a(var_d5fa8477, var_8f788dfa, n_power) {
    var_99bf2e73 = struct::get(var_d5fa8477, "scriptbundlename");
    if (isdefined(var_8f788dfa)) {
        t_damage = getent(var_8f788dfa, "targetname");
    }
    if (!isdefined(var_99bf2e73)) {
        return;
    }
    if (isdefined(t_damage)) {
        t_damage setcandamage(1);
        s_waitresult = t_damage waittill(#"trigger", #"damage");
    } else if (isdefined(var_99bf2e73.var_bdb97676)) {
        var_99bf2e73.var_bdb97676 val::set("zmintel", "takedamage", 1);
        var_99bf2e73.var_bdb97676 val::set("zmintel", "allowdeath", 0);
        s_waitresult = var_99bf2e73.var_bdb97676 waittill(#"damage");
    } else {
        return;
    }
    var_99bf2e73 function_c1974629(undefined, n_power);
    util::wait_network_frame();
    if (isdefined(t_damage)) {
        t_damage delete();
    }
}

/#

    // Namespace zm_intel/zm_intel
    // Params 0, eflags: 0x0
    // Checksum 0x698817b2, Offset: 0x5f90
    // Size: 0x360
    function function_ded2880a() {
        util::init_dvar(#"hash_82bcb0445b8db9", "<unknown string>", &function_2ced1cf7);
        util::init_dvar(#"hash_10552bfd7317e7d1", "<unknown string>", &function_2ced1cf7);
        util::init_dvar(#"hash_4bb23fc5179a1812", "<unknown string>", &function_2ced1cf7);
        util::init_dvar(#"hash_6aad5d3866085387", "<unknown string>", &function_2ced1cf7);
        util::add_debug_command("<unknown string>");
        foreach (var_d5fa8477 in level.var_54f9341) {
            var_d5fa8477 = function_9e72a96(var_d5fa8477);
            s_bundle = getscriptbundle(var_d5fa8477);
            if (isdefined(s_bundle)) {
                if (isdefined(s_bundle.var_ad4ad686)) {
                    str_faction = function_9e72a96(s_bundle.var_ad4ad686);
                } else {
                    str_faction = "<unknown string>";
                }
                if (isdefined(s_bundle.var_9be0526e)) {
                    str_type = function_9e72a96(s_bundle.var_9be0526e);
                } else {
                    str_type = "<unknown string>";
                }
                if (isdefined(s_bundle.season)) {
                    var_7e4f1bf = "<unknown string>" + s_bundle.season;
                } else {
                    var_7e4f1bf = "<unknown string>";
                }
                var_2b65c1ac = str_faction + "<unknown string>" + str_type + "<unknown string>" + var_7e4f1bf + "<unknown string>" + var_d5fa8477;
            } else {
                var_2b65c1ac = var_d5fa8477;
            }
            util::add_debug_command("<unknown string>" + var_2b65c1ac + "<unknown string>" + var_d5fa8477 + "<unknown string>");
            util::add_debug_command("<unknown string>" + var_2b65c1ac + "<unknown string>" + var_d5fa8477 + "<unknown string>");
            util::add_debug_command("<unknown string>" + var_2b65c1ac + "<unknown string>" + var_d5fa8477 + "<unknown string>");
        }
    }

    // Namespace zm_intel/zm_intel
    // Params 1, eflags: 0x0
    // Checksum 0xb3177a9a, Offset: 0x62f8
    // Size: 0x4b4
    function function_2ced1cf7(params) {
        if (params.value === "<unknown string>") {
            return;
        }
        switch (params.name) {
        case #"hash_6aad5d3866085387":
            if (int(params.value)) {
                iprintlnbold("<unknown string>");
            } else {
                iprintlnbold("<unknown string>");
            }
            break;
        case #"hash_82bcb0445b8db9":
            foreach (player in getplayers()) {
                player thread collect_intel(params.value);
            }
            break;
        case #"hash_10552bfd7317e7d1":
            foreach (var_99bf2e73 in level.var_238bd723) {
                if (var_99bf2e73.scriptbundlename === params.value) {
                    v_pos = var_99bf2e73.origin;
                    break;
                }
            }
            if (!isdefined(v_pos)) {
                var_a3d40366 = struct::get_array("<unknown string>");
                var_99bf2e73 = getscriptbundle(params.value);
                foreach (var_927876a9 in var_a3d40366) {
                    if (var_99bf2e73.var_9be0526e === #"hash_20ea75a25d912949" && var_927876a9.faction === var_99bf2e73.var_ad4ad686) {
                        v_pos = var_927876a9.origin;
                        break;
                    }
                }
            }
            if (isdefined(v_pos)) {
                getplayers()[0] dontinterpolate();
                getplayers()[0] setorigin(v_pos);
            } else {
                /#
                    iprintlnbold("<unknown string>" + params.value);
                #/
            }
            break;
        case #"hash_4bb23fc5179a1812":
            if (function_1a594d26(params.value)) {
                iprintlnbold("<unknown string>" + params.value);
            } else {
                iprintln("<unknown string>" + params.value + "<unknown string>");
                level.var_fa1d4366 = params.value;
            }
            break;
        default:
            break;
        }
        setdvar(#"hash_82bcb0445b8db9", "<unknown string>");
        setdvar(#"hash_10552bfd7317e7d1", "<unknown string>");
        setdvar(#"hash_4bb23fc5179a1812", "<unknown string>");
    }

#/
