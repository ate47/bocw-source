// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using script_4163291d6e693552;
#using scripts\killstreaks\zm\recon_car.gsc;
#using script_1940fc077a028a81;
#using script_3357acf79ce92f4b;
#using script_27347f09888ad15;
#using script_165beea08a63a243;
#using script_340a2e805e35f7a2;
#using scripts\core_common\ai\zombie_utility.gsc;
#using script_7464a3005f61a5f6;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\throttle_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\death_circle.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using script_37aecc8eb906ed91;
#using scripts\abilities\gadgets\gadget_homunculus.gsc;
#using scripts\abilities\gadgets\gadget_cymbal_monkey.gsc;

#namespace namespace_85745671;

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x5
// Checksum 0x70d79d42, Offset: 0x400
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_74761c506cae8855", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x6 linked
// Checksum 0xdcc0bdec, Offset: 0x448
// Size: 0x49c
function private preinit() {
    level.var_91a15ec0 = #"world";
    level.zombie_team = #"axis";
    level.attackables = [];
    level.var_7fc48a1a = [];
    /#
        level thread function_b4f41a02();
    #/
    level.var_8a3036cc = 0;
    level.var_57a77bb = 0;
    level.var_d5cd88c2 = 0;
    level.var_2510617f = 0;
    level.var_6eb6193a = 0;
    level.var_7dff87f1 = 0;
    level.var_d0c8ad06 = [#"ambush_zombie", #"soul_capture_zombie", #"hash_7f951f9c9843eb2b"];
    if (is_true(getgametypesetting(#"hash_3109a8794543000f"))) {
        if (is_true(getgametypesetting(#"hash_42471cb0cbc19544"))) {
            level.zombie_itemlist = #"zombie_itemlist_ammo_close_quarters";
        } else {
            level.zombie_itemlist = #"zombie_itemlist_close_quarters";
        }
    } else if (is_true(getgametypesetting(#"hash_42471cb0cbc19544"))) {
        level.zombie_itemlist = #"zombie_itemlist_ammo";
    } else {
        level.zombie_itemlist = #"zombie_itemlist";
    }
    level.var_db43cbd7 = #"zombie_raygun_itemlist";
    level.var_1b7acd6d = #"cu12_list";
    level.var_72151997 = #"cu13_list";
    level.var_14364e26 = #"cu30_list";
    level.var_7d2bc89 = #"cu31_list";
    if (!isdefined(level.var_454ed97e)) {
        level.var_454ed97e = new class_c6c0e94();
        [[ level.var_454ed97e ]]->initialize("aiCleanupThrottle", 1, float(function_60d95f53()) / 1000 * 5);
    }
    level.var_ee27c905 = &function_401070dd;
    level.var_34a02ce7 = &function_34a02ce7;
    level.var_81c6aa5b = &function_7ae2ef10;
    level.var_dbe79058 = &function_e4791424;
    level.var_7cee3713 = &function_ae04fa3e;
    level.var_6d2016b8 = &function_8f57dc52;
    level.var_9fbe660b = &function_4c48a301;
    clientfield::register("actor", "zombie_teleport", 1, 1, "counter");
    clientfield::register("toplayer", "zombie_vehicle_shake", 1, 1, "counter");
    clientfield::register("toplayer", "zombie_melee_shake", 1, 1, "counter");
    namespace_df7b10e3::register_slowdown(#"hash_4ec13a63f7786c40", 0.5, 1.5);
    if (zm_utility::is_survival()) {
        callback::on_ai_damage(&on_ai_damage);
    }
}

/#

    // Namespace namespace_85745671/namespace_85745671
    // Params 0, eflags: 0x0
    // Checksum 0x90791c13, Offset: 0x8f0
    // Size: 0x578
    function function_b4f41a02() {
        level endon(#"game_ended");
        aitypes = function_19df1c1c();
        setdvar(#"hash_70cb00491d863294", "<unknown string>");
        setdvar(#"hash_209287456d55fca1", "<unknown string>");
        foreach (type in aitypes) {
            if (function_e949cfd7(type)) {
                util::add_debug_command("<unknown string>" + function_9e72a96(type) + "<unknown string>" + function_9e72a96(type) + "<unknown string>");
                util::add_debug_command("<unknown string>" + function_9e72a96(type) + "<unknown string>" + function_9e72a96(type) + "<unknown string>");
            }
        }
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        while (true) {
            wait(0.1);
            cmd = getdvarstring(#"hash_209287456d55fca1", "<unknown string>");
            if (cmd == "<unknown string>") {
                continue;
            }
            cmd_tokens = strtok(cmd, "<unknown string>");
            switch (cmd_tokens[0]) {
            case #"hash_c0b89e8d4a71cff":
                player = level.players[0];
                direction = player getplayerangles();
                direction_vec = anglestoforward(direction);
                eye = player geteye();
                direction_vec = (direction_vec[0] * 8000, direction_vec[1] * 8000, direction_vec[2] * 8000);
                trace = bullettrace(eye, eye + direction_vec, 0, undefined);
                spawner::add_ai_spawn_function(&function_df8d461e);
                ai = spawnactor(cmd_tokens[1], trace[#"position"], (0, 0, 0), "<unknown string>", 1);
                spawner::function_932006d1(&function_df8d461e);
                break;
            case #"hash_deec03a3269d42":
                player = level.players[0];
                direction = player getplayerangles();
                direction_vec = anglestoforward(direction);
                eye = player geteye();
                direction_vec = (direction_vec[0] * 8000, direction_vec[1] * 8000, direction_vec[2] * 8000);
                trace = bullettrace(eye, eye + direction_vec, 0, undefined);
                spawner::add_ai_spawn_function(&function_df8d461e);
                ai = spawnactor(cmd_tokens[1], trace[#"position"], (0, 0, 0), "<unknown string>", 1);
                spawner::function_932006d1(&function_df8d461e);
                break;
            }
            setdvar(#"hash_209287456d55fca1", "<unknown string>");
        }
    }

    // Namespace namespace_85745671/namespace_85745671
    // Params 0, eflags: 0x4
    // Checksum 0x36b3a79e, Offset: 0xe70
    // Size: 0x3c
    function private function_df8d461e() {
        if (self.targetname === "<unknown string>") {
            self.ignoreall = 1;
            awareness::pause(self);
        }
    }

    // Namespace namespace_85745671/namespace_85745671
    // Params 0, eflags: 0x0
    // Checksum 0xffb97f3a, Offset: 0xeb8
    // Size: 0xdfe
    function debug_ai() {
        level endon(#"game_ended");
        level.var_b4702614 = [];
        level.var_b4702614[0] = "<unknown string>";
        level.var_b4702614[1] = "<unknown string>";
        level.var_b4702614[2] = "<unknown string>";
        level.var_b4702614[3] = "<unknown string>";
        level.var_b4702614[4] = "<unknown string>";
        level.var_b4702614[5] = "<unknown string>";
        level.var_b4702614[6] = "<unknown string>";
        while (true) {
            if (is_true(level.var_e066667d) && isdefined(level.var_91a15ec0)) {
                var_1795ed47 = getaiteamarray(level.var_91a15ec0);
                foreach (entity in var_1795ed47) {
                    if (!isalive(entity)) {
                        continue;
                    }
                    org = entity.origin + (0, 0, 100);
                    if (isdefined(entity.aistate)) {
                        org = entity.origin + (0, 0, 90);
                        if (getdvarint(#"recorder_enablerec", 0)) {
                            record3dtext((isdefined(level.var_b4702614[entity.aistate]) ? level.var_b4702614[entity.aistate] : "<unknown string>") + "<unknown string>" + entity.health, entity.origin, (1, 0.5, 0), "<unknown string>", entity);
                        } else {
                            print3d(org, (isdefined(level.var_b4702614[entity.aistate]) ? level.var_b4702614[entity.aistate] : "<unknown string>") + "<unknown string>" + entity.health, (1, 0.5, 0), 1, 0.2);
                        }
                    }
                    ai_cansee = 0;
                    if (isdefined(entity.enemy) && entity cansee(entity.enemy)) {
                        ai_cansee = 1;
                    }
                    if (isdefined(entity.canseeplayer)) {
                        org = entity.origin + (0, 0, 85);
                        if (getdvarint(#"recorder_enablerec", 0)) {
                            record3dtext("<unknown string>" + entity.canseeplayer + "<unknown string>" + ai_cansee + "<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity);
                        } else {
                            print3d(org, "<unknown string>" + entity.canseeplayer + "<unknown string>" + ai_cansee + "<unknown string>", (1, 0.5, 0), 1, 0.2);
                        }
                    }
                    if (isdefined(entity.allowoffnavmesh)) {
                        org = entity.origin + (0, 0, 80);
                        if (getdvarint(#"recorder_enablerec", 0)) {
                            record3dtext("<unknown string>" + entity.allowoffnavmesh, entity.origin, (1, 0.5, 0), "<unknown string>", entity);
                        } else {
                            print3d(org, "<unknown string>" + entity.allowoffnavmesh, (1, 0.5, 0), 1, 0.2);
                        }
                    }
                    if (isdefined(entity.var_6e3313ab)) {
                        org = entity.origin + (0, 0, 75);
                        if (getdvarint(#"recorder_enablerec", 0)) {
                            record3dtext("<unknown string>" + entity.var_6e3313ab, entity.origin, (1, 0.5, 0), "<unknown string>", entity);
                        } else {
                            print3d(org, "<unknown string>" + entity.var_6e3313ab, (1, 0.5, 0), 1, 0.2);
                        }
                    }
                    if (isdefined(entity.var_ad26639d)) {
                        org = entity.origin + (0, 0, 70);
                        if (getdvarint(#"recorder_enablerec", 0)) {
                            record3dtext("<unknown string>" + entity.var_ad26639d, entity.origin, (1, 0.5, 0), "<unknown string>", entity);
                        } else {
                            print3d(org, "<unknown string>" + entity.var_ad26639d, (1, 0.5, 0), 1, 0.2);
                        }
                    }
                    if (isdefined(entity.var_9a79d89d)) {
                        origin = entity.var_9a79d89d;
                        if (!isvec(entity.var_9a79d89d)) {
                            origin = entity.var_9a79d89d.origin;
                        }
                        if (getdvarint(#"recorder_enablerec", 0)) {
                            record3dtext("<unknown string>", entity.origin, (0, 0, 1), "<unknown string>", entity);
                        } else {
                            print3d(entity.var_9a79d89d + (0, 0, 10), "<unknown string>", (0, 0, 1), 1, 1);
                        }
                    }
                    if (isdefined(entity.var_db912cfe) && isdefined(entity.surfacetype)) {
                        org = entity.origin + (0, 0, 70);
                        if (getdvarint(#"recorder_enablerec", 0)) {
                            record3dtext("<unknown string>" + entity.surfacetype + "<unknown string>" + entity.var_db912cfe, entity.origin, (1, 0.5, 0), "<unknown string>", entity);
                        } else {
                            print3d(org, "<unknown string>" + entity.surfacetype + "<unknown string>" + entity.var_db912cfe, (1, 0.5, 0), 1, 0.2);
                        }
                    }
                    if (isdefined(entity.is_special)) {
                        org = entity.origin + (0, 0, 200);
                        if (getdvarint(#"recorder_enablerec", 0)) {
                            record3dtext("<unknown string>" + entity.is_special + "<unknown string>" + entity.is_special + "<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity);
                        } else {
                            print3d(org, "<unknown string>" + entity.is_special + "<unknown string>" + entity.is_special + "<unknown string>", (1, 0.5, 0), 1, 2);
                        }
                    }
                    if (isdefined(entity.movetime) && getdvarint(#"hash_1aebd3ffed21a22a", 0)) {
                        org = entity.origin + (0, 0, 90);
                        if (getdvarint(#"recorder_enablerec", 0)) {
                            record3dtext("<unknown string>" + gettime() - entity.movetime, entity.origin, (1, 0.5, 0), "<unknown string>", entity);
                        } else {
                            print3d(org, "<unknown string>" + gettime() - entity.movetime, (1, 0.5, 0), 1, 0.2);
                        }
                    }
                    if (isdefined(entity.idletime) && getdvarint(#"hash_1aebd3ffed21a22a", 0)) {
                        org = entity.origin + (0, 0, 95);
                        if (getdvarint(#"recorder_enablerec", 0)) {
                            record3dtext("<unknown string>" + gettime() - entity.idletime, entity.origin, (1, 0.5, 0), "<unknown string>", entity);
                        } else {
                            print3d(org, "<unknown string>" + gettime() - entity.idletime, (1, 0.5, 0), 1, 0.2);
                        }
                    }
                    if (isdefined(entity.attackable) && getdvarint(#"hash_6e5b3c35cb223a9d", 0)) {
                        recordline(entity.origin, entity.attackable_slot.origin, (0, 1, 0));
                        recordstar(entity.attackable_slot.origin, (0, 0, 1));
                        org = entity.origin + (0, 0, 100);
                        if (getdvarint(#"recorder_enablerec", 0)) {
                            record3dtext("<unknown string>" + distance2dsquared(entity.origin, entity.attackable_slot.origin), entity.origin, (1, 0.5, 0), "<unknown string>", entity);
                        } else {
                            print3d(org, "<unknown string>" + distance2dsquared(entity.origin, entity.attackable_slot.origin), (1, 0.5, 0), 1, 0.2);
                        }
                    }
                    if (isdefined(entity.var_6c408220)) {
                        entity [[ entity.var_6c408220 ]]();
                    }
                }
            }
            waitframe(1);
        }
    }

#/

// Namespace namespace_85745671/namespace_85745671
// Params 3, eflags: 0x2 linked
// Checksum 0xf8b93e5c, Offset: 0x1cc0
// Size: 0x12c
function function_55625f76(origin, angles, anim_name) {
    self endon(#"death");
    self ghost();
    self orientmode("face default");
    anim_length = getanimlength(anim_name);
    self animscripted("rise_anim", origin, angles, anim_name, "normal");
    util::wait_network_frame();
    self show();
    self waittillmatchtimeout(anim_length, {#notetrack:"end"}, #"rise_anim");
    self setgoal(self.origin);
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0xc260d9b3, Offset: 0x1df8
// Size: 0x1b6
function function_2089690e() {
    if (!isdefined(self)) {
        return;
    }
    self endon(#"death");
    if (is_true(self.var_83fa6083) || self isragdoll()) {
        return;
    }
    self show();
    var_90d0c0ff = isdefined(self.var_c9b11cb3) ? self.var_c9b11cb3 : self.var_90d0c0ff;
    spawn_anim = isdefined(self.var_d32d749d) ? self.var_d32d749d : self.spawn_anim;
    if (!isdefined(spawn_anim) && isdefined(var_90d0c0ff)) {
        spawn_anim = self animmappingsearch(var_90d0c0ff);
    }
    self.var_90d0c0ff = var_90d0c0ff;
    self.var_1a02009e = spawn_anim;
    if (!isdefined(spawn_anim)) {
        return;
    }
    if (isdefined(self.var_f8df968e)) {
        [[ self.var_f8df968e ]](self.origin, self.angles, spawn_anim);
    } else {
        function_55625f76(self.origin, self.angles, spawn_anim);
    }
    self callback::callback(#"hash_790882ac8688cee5", {#spawn_anim:spawn_anim});
    /#
        self notify(#"hash_790882ac8688cee5");
    #/
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x24342c20, Offset: 0x1fb8
// Size: 0x10a
function function_347f7d34(var_dc0c4612 = 0) {
    a_valid_players = [];
    foreach (player in getplayers()) {
        if (is_player_valid(player, var_dc0c4612)) {
            if (!isdefined(a_valid_players)) {
                a_valid_players = [];
            } else if (!isarray(a_valid_players)) {
                a_valid_players = array(a_valid_players);
            }
            a_valid_players[a_valid_players.size] = player;
        }
    }
    return a_valid_players;
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x2 linked
// Checksum 0x932fa90c, Offset: 0x20d0
// Size: 0x15a
function is_player_valid(player, var_dc0c4612 = 0) {
    if (!isdefined(player)) {
        return false;
    }
    if (!isalive(player)) {
        return false;
    }
    if (!isplayer(player) && !isdefined(player.var_d003d23c)) {
        return false;
    }
    if (isplayer(player)) {
        if (player.sessionstate == "spectator") {
            return false;
        }
        if (player.sessionstate == "intermission") {
            return false;
        }
        if (is_true(player.intermission)) {
            return false;
        }
        if (player laststand::player_is_in_laststand() && !is_true(player.var_b895a3ff)) {
            return false;
        }
    }
    if (!var_dc0c4612 && (player.ignoreme || player isnotarget())) {
        return false;
    }
    return true;
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x8f967d96, Offset: 0x2238
// Size: 0x78
function function_1b9ed9b0(companion) {
    if (!isalive(companion)) {
        return false;
    }
    if (!is_true(companion.var_d003d23c)) {
        return false;
    }
    if (companion.ignoreme || companion isnotarget()) {
        return false;
    }
    return true;
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x50af36d8, Offset: 0x22b8
// Size: 0x62
function function_65e1fbbe(target) {
    if (!isdefined(level.zombie_targets) || !isalive(target) || !isinarray(level.zombie_targets, target)) {
        return false;
    }
    return true;
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x2709b192, Offset: 0x2328
// Size: 0x2fc
function function_9fa1c215(ai_zone) {
    if (isdefined(level.var_18bf5e98)) {
        return [[ level.var_18bf5e98 ]]();
    }
    itemlist = level.zombie_itemlist;
    var_1130690 = 0;
    if (is_true(level.var_b4143320)) {
        var_d0c1e811 = 0;
        if (death_circle::is_active() && isdefined(level.deathcircleindex)) {
            if (level.deathcircleindex < level.var_1a35832e) {
                var_d0c1e811 = 1;
            }
        } else {
            var_d0c1e811 = 1;
        }
        if (var_d0c1e811 && isdefined(ai_zone) && ai_zone.var_c573acdd == ai_zone.var_ce8df1c9) {
            if (level.var_d5cd88c2 < level.var_acfc1745 && randomfloat(1) <= 0.3) {
                itemlist = level.var_1b7acd6d;
                level.var_d5cd88c2++;
                var_1130690 = 1;
                level.var_57a77bb = 1;
            }
            if (!level.var_2510617f < level.var_1b2f5c9d && randomfloat(1) <= 0.3) {
                itemlist = level.var_72151997;
                level.var_2510617f++;
                var_1130690 = 1;
                level.var_57a77bb = 0;
            }
            if (!level.var_6eb6193a < level.var_ad2edeba && randomfloat(1) <= 0.3) {
                itemlist = level.var_14364e26;
                level.var_6eb6193a++;
                var_1130690 = 1;
                level.var_57a77bb = 0;
            }
            if (!level.var_7dff87f1 < level.var_a71296ac && randomfloat(1) <= 0.3) {
                itemlist = level.var_7d2bc89;
                level.var_7dff87f1++;
                var_1130690 = 1;
                level.var_57a77bb = 0;
            }
        }
    }
    if (!var_1130690) {
        if (randomint(100) <= 2) {
            if (!level.var_8a3036cc) {
                itemlist = level.var_db43cbd7;
                level.var_8a3036cc = 1;
            }
        }
    }
    if (isdefined(ai_zone)) {
        ai_zone.var_c573acdd++;
    }
    return itemlist;
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x0
// Checksum 0x5df72477, Offset: 0x2630
// Size: 0x3b4
function function_f311bd4c(ai_zone, var_ee6563f8 = 1) {
    self notify("7ee7b0297f176ffd");
    self endon("7ee7b0297f176ffd");
    if (var_ee6563f8) {
        waitresult = self waittill(#"death");
    } else {
        waitresult = spawnstruct();
        waitresult.attacker = function_a1ef346b()[0];
    }
    var_a98b31aa = isdefined(self.ai_zone) && isdefined(self.ai_zone.def);
    self.ai_zone = undefined;
    if (isdefined(self.fxent)) {
        self clientfield::set("zombie_has_microwave", 0);
        self.fxent delete();
    }
    if (isplayer(waitresult.attacker)) {
        scoreevents::processscoreevent(#"zombie_kills", waitresult.attacker, undefined, undefined);
        var_b25650ab = spawnstruct();
        var_b25650ab.origin = self.origin;
        var_b25650ab.archetype = self.archetype;
        if (isdefined(self.var_e575a1bb)) {
            var_b25650ab.var_e575a1bb = self.var_e575a1bb;
        }
        if (isdefined(self.var_40c895b9)) {
            var_b25650ab.var_40c895b9 = self.var_40c895b9;
        }
        if (isdefined(self.var_e154425f)) {
            var_b25650ab.var_e154425f = self.var_e154425f;
        }
        if (isdefined(self.var_4f53e075)) {
            var_b25650ab.var_4f53e075 = self.var_4f53e075;
        }
        if (isdefined(var_a98b31aa) || is_true(self.var_54f8158e)) {
            if (!level.inprematchperiod) {
                waitresult.attacker stats::function_d40764f3(#"kills_zombie", 1);
            }
            if (isdefined(self.var_2cee3556)) {
                var_b25650ab.var_2cee3556 = self.var_2cee3556;
                foreach (item_list, drop_count in var_b25650ab.var_2cee3556) {
                    var_b25650ab.var_6a7537d8 = drop_count;
                    var_b25650ab namespace_7da6f8ca::function_d92e3c5a(waitresult.attacker, ai_zone, item_list);
                }
                return;
            }
            if (isdefined(self.var_ef46cd4)) {
                self namespace_7da6f8ca::function_d92e3c5a(waitresult.attacker, ai_zone, self.var_ef46cd4);
                return;
            }
            itemlist = function_9fa1c215(ai_zone);
            if (isdefined(itemlist)) {
                self namespace_7da6f8ca::function_d92e3c5a(waitresult.attacker, ai_zone, itemlist);
            }
        }
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x73d3f2cf, Offset: 0x29f0
// Size: 0x128
function function_9758722(speed) {
    if (self.zombie_move_speed === speed) {
        return;
    }
    self.zombie_move_speed = speed;
    if (!isdefined(self.zombie_arms_position)) {
        self.zombie_arms_position = math::cointoss() == 1 ? "up" : "down";
    }
    if (isdefined(level.var_9ee73630)) {
        self.variant_type = randomint(level.var_9ee73630[self.zombie_move_speed][self.zombie_arms_position]);
    }
    if (isdefined(self.zombie_move_speed_override)) {
        var_4d3692b7 = zombie_utility::function_33da7a07();
        new_move_speed = self.zombie_move_speed_override;
        new_move_speed = self zombie_utility::function_d2f660ce(new_move_speed);
        self.zombie_move_speed = new_move_speed;
        self.zombie_move_speed_restore = var_4d3692b7;
        return;
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x0
// Checksum 0x6a75c214, Offset: 0x2b20
// Size: 0x14c
function get_pathnode_path(pathnode) {
    path_struct = {#path:array(pathnode), #loops:0};
    var_592eaf7 = pathnode;
    while (isdefined(var_592eaf7.target)) {
        var_592eaf7 = getnode(var_592eaf7.target, "targetname");
        if (!isdefined(var_592eaf7)) {
            break;
        }
        if (isinarray(path_struct.path, var_592eaf7)) {
            path_struct.loops = 1;
            break;
        }
        if (!isdefined(path_struct.path)) {
            path_struct.path = [];
        } else if (!isarray(path_struct.path)) {
            path_struct.path = array(path_struct.path);
        }
        path_struct.path[path_struct.path.size] = var_592eaf7;
    }
    return path_struct;
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x2 linked
// Checksum 0x3d9e9d19, Offset: 0x2c78
// Size: 0xae
function function_9a5f0c0(startpt, endpt) {
    self endon(#"delete");
    self.origin = startpt + (0, 0, 10);
    time = self namespace_7da6f8ca::fake_physicslaunch(endpt, 100);
    self playsound(#"hash_52de50e5184d1c7");
    wait(time);
    if (isdefined(self)) {
        self.origin = endpt;
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x0
// Checksum 0x23830f2b, Offset: 0x2d30
// Size: 0x102
function function_bf357ddf(spawnpt, itemlist) {
    waitresult = self waittill(#"death");
    if (isdefined(spawnpt.target)) {
        var_10508147 = struct::get(spawnpt.target, "targetname");
        items = self namespace_65181344::function_fd87c780(itemlist, 1);
        for (i = 0; i < items.size; i++) {
            item = items[i];
            if (isdefined(item)) {
                item thread function_9a5f0c0(self.origin, var_10508147.origin);
            }
            waitframe(1);
        }
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x0
// Checksum 0x55bdcc6f, Offset: 0x2e40
// Size: 0x106
function function_f656f22e(ai_zone) {
    all_ai = getaiteamarray(#"world");
    if (isdefined(all_ai) && all_ai.size > 0) {
        foreach (ai in all_ai) {
            if (isdefined(ai.var_ea7e9b57) && ai.var_ea7e9b57 == ai_zone) {
                ai kill(undefined, undefined, undefined, undefined, 0, 1);
                waitframe(1);
            }
        }
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 6, eflags: 0x6 linked
// Checksum 0xbc030547, Offset: 0x2f50
// Size: 0x206
function private function_ebf83b77(origin, entity, var_c83b605b, var_da1bc9fc, max_range, attackable) {
    var_c7089ecd = origin - attackable.origin;
    var_7e365edf = randomfloatrange(var_da1bc9fc, max_range);
    var_c7089ecd = vectornormalize(var_c7089ecd);
    to_point = var_c7089ecd * var_7e365edf;
    var_72e946f3 = getclosestpointonnavmesh(var_c83b605b + var_c7089ecd * entity getpathfindingradius() * 1.1, 128, entity getpathfindingradius());
    if (!isdefined(var_72e946f3)) {
        return undefined;
    }
    var_812bc6e0 = checknavmeshdirection(var_72e946f3, to_point, var_7e365edf - entity getpathfindingradius() * 1.2, entity getpathfindingradius() * 1.1);
    /#
        recordline(var_c83b605b, var_c83b605b + to_point, (0, 0, 1), "<unknown string>");
        recordline(var_c83b605b, var_812bc6e0, (1, 0.5, 0), "<unknown string>");
    #/
    if (distancesquared(var_812bc6e0, var_72e946f3) < sqr(var_da1bc9fc)) {
        return undefined;
    }
    if (!function_57816a50(var_812bc6e0, entity, attackable)) {
        return undefined;
    }
    return var_812bc6e0;
}

// Namespace namespace_85745671/namespace_85745671
// Params 3, eflags: 0x6 linked
// Checksum 0xc0eb8510, Offset: 0x3160
// Size: 0x15c
function private function_57816a50(point, entity, attackable) {
    var_c76dd642 = entity getpathfindingradius();
    if (isdefined(attackable.var_b79a8ac7) && isdefined(attackable) && isdefined(attackable.var_b79a8ac7.var_3a3788af)) {
        foreach (attacker in attackable.var_b79a8ac7.var_3a3788af) {
            if (!isdefined(attacker.var_3f8ea75c)) {
                continue;
            }
            var_d0fcbffe = attacker getpathfindingradius();
            if (distancesquared(point, attacker.var_3f8ea75c) <= sqr(var_d0fcbffe + var_c76dd642)) {
                return false;
            }
        }
    }
    return true;
}

// Namespace namespace_85745671/namespace_85745671
// Params 4, eflags: 0x2 linked
// Checksum 0x63e7cf37, Offset: 0x32c8
// Size: 0x14a
function function_12d90bae(entity, var_da1bc9fc, max_range, attackable) {
    var_c83b605b = getclosestpointonnavmesh(attackable.origin, 128, entity getpathfindingradius());
    if (!isdefined(var_c83b605b)) {
        return undefined;
    }
    spots = arraysortclosest(attackable.var_b79a8ac7.slots, entity.origin);
    foreach (spot in spots) {
        var_812bc6e0 = function_ebf83b77(spot.origin, entity, var_c83b605b, var_da1bc9fc, max_range, attackable);
        if (isdefined(var_812bc6e0)) {
            return var_812bc6e0;
        }
    }
    return undefined;
}

// Namespace namespace_85745671/namespace_85745671
// Params 3, eflags: 0x2 linked
// Checksum 0x917553fb, Offset: 0x3420
// Size: 0x254
function get_attackable(entity, var_83917763, var_bb6705b) {
    if (isdefined(level.attackables) && level.attackables.size > 0) {
        if (!is_true(var_83917763) && !isinarray(level.var_8de0b84e, entity getentitynumber())) {
            return undefined;
        }
        arrayremovevalue(level.attackables, undefined);
        foreach (attackable in level.attackables) {
            if (is_true(entity.var_12af7864)) {
                return undefined;
            }
            if (!isdefined(attackable.var_b79a8ac7) || !isdefined(attackable.var_b79a8ac7.var_f019ea1a)) {
                continue;
            }
            dist = distancesquared(entity.origin, attackable.origin);
            if (dist < sqr(attackable.var_b79a8ac7.var_f019ea1a)) {
                if (attackable get_attackable_slot(entity)) {
                    return attackable;
                }
                if (is_true(var_bb6705b)) {
                    if (!isdefined(attackable.var_b79a8ac7.var_3a3788af)) {
                        attackable.var_b79a8ac7.var_3a3788af = [];
                    }
                    attackable.var_b79a8ac7.var_3a3788af[attackable.var_b79a8ac7.var_3a3788af.size] = entity;
                    return attackable;
                }
            }
        }
    }
    return undefined;
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x18b83a24, Offset: 0x3680
// Size: 0x23e
function get_attackable_slot(entity) {
    if (!isdefined(self.var_b79a8ac7)) {
        return false;
    }
    self clear_slots();
    var_4dbfc246 = [];
    available_slots = [];
    foreach (slot in self.var_b79a8ac7.slots) {
        if (isdefined(slot) && !isdefined(slot.entity)) {
            available_slots[available_slots.size] = slot;
        }
    }
    if (available_slots.size == 0) {
        return false;
    }
    var_754df93c = entity.origin;
    strteleportst = arraygetclosest(var_754df93c, available_slots);
    if (is_true(strteleportst.on_navmesh)) {
        var_acdc8d71 = getclosestpointonnavmesh(strteleportst.origin, entity getpathfindingradius(), entity getpathfindingradius());
        if (isdefined(var_acdc8d71)) {
            strteleportst.entity = entity;
            entity.var_b238ef38 = {#slot:strteleportst, #position:var_acdc8d71};
            return true;
        }
    } else if (isdefined(strteleportst)) {
        strteleportst.entity = entity;
        entity.var_b238ef38 = {#slot:strteleportst, #position:strteleportst.origin};
        return true;
    }
    return false;
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0x2a73e8d4, Offset: 0x38c8
// Size: 0xee
function clear_slots() {
    if (!isdefined(self.var_b79a8ac7)) {
        return;
    }
    foreach (slot in self.var_b79a8ac7.slots) {
        if (!isalive(slot.entity)) {
            slot.entity = undefined;
            continue;
        }
        if (is_true(slot.entity.missinglegs)) {
            slot.entity = undefined;
        }
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0xad87fe62, Offset: 0x39c0
// Size: 0x78
function function_2b925fa5(entity) {
    if (isdefined(entity.attackable)) {
        entity.attackable = undefined;
    }
    if (isdefined(entity.var_b238ef38)) {
        entity.var_b238ef38.slot.entity = undefined;
        entity.var_b238ef38 = undefined;
    }
    entity.var_3f8ea75c = undefined;
    entity notify(#"hash_5114eb062d7568b6");
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x7942b7b0, Offset: 0x3a40
// Size: 0x1b4
function function_b70e2a37(attackable) {
    if (!isdefined(attackable.var_b79a8ac7)) {
        return;
    }
    foreach (slot in attackable.var_b79a8ac7.slots) {
        if (!isalive(slot.entity)) {
            continue;
        }
        function_2b925fa5(slot.entity);
    }
    if (isdefined(attackable.var_b79a8ac7.var_3a3788af)) {
        foreach (attacker in attackable.var_b79a8ac7.var_3a3788af) {
            if (!isalive(attacker)) {
                continue;
            }
            function_2b925fa5(attacker);
        }
    }
    attackable.var_b79a8ac7 = undefined;
    arrayremovevalue(level.attackables, attackable);
}

// Namespace namespace_85745671/namespace_85745671
// Params 7, eflags: 0x2 linked
// Checksum 0x70b5c6cf, Offset: 0x3c00
// Size: 0x3d6
function function_bdb2b85b(entity, origin, angles, radius, num_spots, var_7a2632b5, var_6ec54658) {
    level endon(#"game_ended");
    slots = [];
    mins = (-10, -10, 0);
    maxs = (10, 10, 48);
    /#
        record3dtext("<unknown string>", origin, (0, 0, 1));
    #/
    for (i = 0; i < num_spots; i++) {
        t = mapfloat(0, num_spots, 0, 360, i);
        x = radius * cos(t + angles[1]);
        y = radius * sin(t + angles[1]);
        pos = (x, y, 0) + origin;
        if (!bullettracepassed(origin + (0, 0, 5), pos + (0, 0, 5), 0, entity)) {
            if (i % 2 == 1) {
                waitframe(1);
            }
            continue;
        }
        var_e07c7e8 = physicstrace(pos + (0, 0, 10), pos + (0, 0, -10), mins, maxs, self, 1);
        var_c060661b = var_e07c7e8[#"position"];
        var_3e98a413 = getclosestpointonnavmesh(var_c060661b, 64, 20);
        if (isdefined(var_3e98a413)) {
            /#
                recordstar(var_3e98a413, (0, 1, 0));
            #/
            slots[slots.size] = {#origin:var_3e98a413, #on_navmesh:1};
        } else if (isdefined(var_c060661b)) {
            if (isdefined(var_7a2632b5)) {
                var_acdc8d71 = getclosestpointonnavmesh(var_c060661b, var_7a2632b5, 15);
            }
            /#
                if (isdefined(var_acdc8d71)) {
                    recordstar(var_acdc8d71, (1, 0, 1));
                }
            #/
            /#
                recordstar(var_c060661b, (1, 0.5, 0));
            #/
            if (is_true(var_6ec54658) && (!isdefined(var_7a2632b5) || !isdefined(var_acdc8d71))) {
                continue;
            }
            slots[slots.size] = {#origin:var_c060661b, #on_navmesh:0, #var_acdc8d71:var_acdc8d71};
        }
        if (i % 2 == 1) {
            waitframe(1);
        }
    }
    return slots;
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0xbf0a7311, Offset: 0x3fe0
// Size: 0x2c4
function function_16e2f075(params) {
    self.var_cd7665dd = gettime();
    if (isdefined(self.var_1b5e8136) && gettime() - self.var_1b5e8136 > 1000) {
        return;
    }
    if (!is_true(self.var_85c3882d)) {
        self.var_1b5e8136 = gettime();
    }
    self.var_85c3882d = 1;
    if (!is_true(self.var_a9d9d11b) || self.var_a9d9d11b < gettime()) {
        self.var_a9d9d11b = gettime() + 500;
        if (is_true(level.is_survival)) {
            switch (self.archetype) {
            case #"zombie":
                damageamount = randomintrange(20, 60);
                self thread namespace_df7b10e3::slowdown(#"hash_4ec13a63f7786c40");
                break;
            case #"zombie_dog":
                damageamount = self.health;
                break;
            case #"avogadro":
                damageamount = 5;
                break;
            }
            if (!isdefined(damageamount)) {
                damageamount = int(self.health * 0.1);
            }
        } else {
            damageamount = isdefined(level.var_87226c31.bundle.var_a9502662) ? level.var_87226c31.bundle.var_a9502662 : 0;
        }
        self dodamage(damageamount, self.origin, params.wire.owner, params.wire, undefined, "MOD_IMPACT", 0, level.var_87226c31.var_3e7344ee);
    }
    if (isdefined(level.var_f2e76de4)) {
        if (!isinarray(level.var_f2e76de4, self)) {
            level.var_f2e76de4[level.var_f2e76de4.size] = self;
        }
        return;
    }
    level.var_f2e76de4 = array(self);
    level thread function_7a87d2a7();
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x70a00898, Offset: 0x42b0
// Size: 0x1fa
function function_7a87d2a7(*damageduration) {
    level endon(#"game_ended");
    self endon(#"death");
    while (true) {
        var_202d087b = [];
        foreach (ai in level.var_f2e76de4) {
            if (!isdefined(ai) || !isalive(ai)) {
                var_202d087b[var_202d087b.size] = ai;
                continue;
            }
            timesincestart = gettime() - ai.var_1b5e8136;
            if (timesincestart > 1000) {
                ai.var_85c3882d = undefined;
            }
            timesincelast = gettime() - ai.var_cd7665dd;
            if (timesincelast > 250) {
                ai.var_85c3882d = undefined;
                ai.var_1b5e8136 = undefined;
                var_202d087b[var_202d087b.size] = ai;
            }
        }
        foreach (ai in var_202d087b) {
            arrayremovevalue(level.var_f2e76de4, ai);
        }
        waitframe(1);
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0xce8f6fad, Offset: 0x44b8
// Size: 0x54
function function_b7dc3ab4(trigger_ents) {
    if (!getdvarint(#"hash_57db5678926e0c9c", 1)) {
        return;
    }
    level thread function_301d4089(trigger_ents);
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x6 linked
// Checksum 0x57a976e8, Offset: 0x4518
// Size: 0xa4
function private function_301d4089(trigger_ents) {
    level function_b0dc6ff2(trigger_ents);
    if (isdefined(getgametypesetting(#"hash_2d40f1434ed94a2b")) ? getgametypesetting(#"hash_2d40f1434ed94a2b") : 0) {
        level function_71578099();
        return;
    }
    level function_9caf8627();
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x69c1081c, Offset: 0x45c8
// Size: 0x72
function function_d65d6079(targetname) {
    if (!isdefined(targetname)) {
        return undefined;
    }
    dynentarray = function_c79d31c4(targetname);
    if (isdefined(dynentarray) && dynentarray.size > 0) {
        return dynentarray[0];
    }
    return getent(targetname, "target");
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x14be44ab, Offset: 0x4648
// Size: 0x296
function function_5a4a952a(node) {
    if (node.type === #"begin" || node.type === #"end") {
        return getothernodeinnegotiationpair(node);
    }
    if (node.type === #"volume") {
        var_41c9f1a0 = undefined;
        backwards = 0;
        if (isdefined(node.target)) {
            var_41c9f1a0 = getnodearray(node.target, "targetname");
        }
        if (!isdefined(var_41c9f1a0) && isdefined(node.targetname)) {
            backwards = 1;
            var_41c9f1a0 = getnodearray(node.targetname, "target");
        }
        if (isdefined(var_41c9f1a0) && var_41c9f1a0.size == 1) {
            foreach (othernode in var_41c9f1a0) {
                if (othernode.type === #"volume") {
                    return othernode;
                }
                if (othernode.type === #"mantle") {
                    if (backwards && isdefined(othernode.targetname)) {
                        nodearray = getnodearray(othernode.targetname, "target");
                        if (isdefined(nodearray) && nodearray.size == 1) {
                            return nodearray[0];
                        }
                        continue;
                    }
                    if (isdefined(othernode.target)) {
                        nodearray = getnodearray(othernode.target, "targetname");
                        if (isdefined(nodearray) && nodearray.size == 1) {
                            return nodearray[0];
                        }
                    }
                }
            }
        }
    }
    return undefined;
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x78c0ec90, Offset: 0x48e8
// Size: 0x154
function function_7085a000(node) {
    var_59476739 = function_d65d6079(node.targetname);
    if (!isdefined(var_59476739)) {
        othernode = function_5a4a952a(node);
        if (isdefined(othernode)) {
            var_59476739 = function_d65d6079(othernode.targetname);
        }
    }
    if (!getdvarint(#"hash_397bf855bf5ab4de", 1) && isdefined(var_59476739) && (var_59476739.var_15d44120 === #"p8_fxanim_wz_rollup_door_medium_mod" || var_59476739.var_15d44120 === #"hash_30cb30fe79cd7bc0" || var_59476739.var_15d44120 === #"p8_fxanim_wz_rollup_door_small_mod" || var_59476739.var_15d44120 === #"p8_fxanim_wz_rollup_door_large_mod")) {
        function_dc0a8e61(node, 1);
        return undefined;
    }
    return var_59476739;
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x22f6768a, Offset: 0x4a48
// Size: 0x2e4
function function_b0dc6ff2(trigger_ents) {
    nodes = getallnodes();
    var_4c106ee3 = 0;
    var_8d594927 = undefined;
    if (isarray(trigger_ents) && trigger_ents.size > 0) {
        var_8d594927 = util::spawn_model("tag_origin");
    }
    var_fa527c6d = 0;
    foreach (node in nodes) {
        var_4c106ee3 = (var_4c106ee3 + 1) % 50;
        if (!(var_4c106ee3 % 50)) {
            waitframe(1);
        }
        if (node.type != #"begin" && node.type != #"end" && node.type != #"volume") {
            continue;
        }
        var_59476739 = function_7085a000(node);
        if (!isdefined(var_59476739)) {
            continue;
        }
        if (isdefined(var_8d594927)) {
            var_8d594927.origin = var_59476739.origin;
            is_touching = 0;
            foreach (ent in trigger_ents) {
                if (var_8d594927 istouching(ent)) {
                    is_touching = 1;
                    var_fa527c6d++;
                    break;
                }
            }
            if (!is_touching) {
                continue;
            }
        }
        function_1ede0cd3(node, var_59476739, 1);
    }
    println("<unknown string>" + var_fa527c6d);
    if (isdefined(var_8d594927)) {
        var_8d594927 delete();
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0xe939604, Offset: 0x4d38
// Size: 0x1ce
function function_71578099() {
    nodes = getallnodes();
    foreach (node in nodes) {
        if (node.type != #"begin") {
            if (node.type === #"end" && getdvarint(#"hash_397bf855bf5ab4de", 1) && !isentity(node.var_597f08bf)) {
                function_dc0a8e61(node, 1);
            }
            continue;
        }
        if (isdefined(node.var_597f08bf)) {
            linktraversal(node);
            if (getdvarint(#"hash_397bf855bf5ab4de", 1) && !isentity(node.var_597f08bf)) {
                function_dc0a8e61(node, 1);
            }
            node.var_597f08bf.var_993e9bb0 = 1;
        }
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0x1a11cc57, Offset: 0x4f10
// Size: 0x106
function function_9caf8627() {
    nodes = getallnodes();
    foreach (node in nodes) {
        if (node.type != #"begin" && node.type != #"end") {
            continue;
        }
        if (isdefined(node.var_597f08bf)) {
            function_dc0a8e61(node, 1);
            node.var_597f08bf.var_993e9bb0 = 1;
        }
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 3, eflags: 0x2 linked
// Checksum 0x120addf7, Offset: 0x5020
// Size: 0x23c
function function_1ede0cd3(var_521b1043, var_59476739, var_be10591b) {
    if (!isdefined(var_521b1043)) {
        return;
    }
    var_e86e150a = undefined;
    if (ispathnode(var_521b1043)) {
        var_e86e150a = var_521b1043;
    } else {
        var_e86e150a = getnode(var_521b1043, "targetname");
    }
    if (!isdefined(var_e86e150a) || !isdefined(var_59476739)) {
        return;
    }
    var_76648d30 = array(var_e86e150a);
    other_node = function_5a4a952a(var_e86e150a);
    if (isdefined(other_node)) {
        var_76648d30[var_76648d30.size] = other_node;
    }
    foreach (node in var_76648d30) {
        node.var_597f08bf = var_59476739;
        if (!isdefined(node.var_74785dff)) {
            node.var_74785dff = node.cost_modifier;
        }
        node.var_3e7103ff = isdefined(var_be10591b) ? var_be10591b : 1;
    }
    if (isdefined(var_59476739.var_993e9bb0)) {
        if (var_59476739.var_939413d0 === 1) {
            var_59476739 function_aa894590();
        }
        return;
    }
    var_59476739.var_993e9bb0 = 1;
    var_59476739.var_fa527c6d = var_76648d30;
    if (isentity(var_59476739)) {
        var_59476739 callback::on_death(&function_af978c79);
    }
    var_59476739 function_aa894590();
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x3710168f, Offset: 0x5268
// Size: 0x36
function function_af978c79(params) {
    if (!isdefined(self.var_fa527c6d)) {
        return;
    }
    function_a63a9610(params);
    self.var_fa527c6d = undefined;
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x858c5e34, Offset: 0x52a8
// Size: 0xb6
function function_a63a9610(*params) {
    if (!isdefined(self.var_fa527c6d)) {
        return;
    }
    self.var_939413d0 = undefined;
    foreach (node in self.var_fa527c6d) {
        if (!isdefined(node.var_74785dff)) {
            continue;
        }
        node.cost_modifier = node.var_74785dff;
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x927e4c2a, Offset: 0x5368
// Size: 0xca
function function_aa894590(*params) {
    if (!isdefined(self.var_fa527c6d)) {
        return;
    }
    self.var_939413d0 = 1;
    foreach (node in self.var_fa527c6d) {
        if (!isdefined(node) || !isdefined(node.var_3e7103ff)) {
            continue;
        }
        node.cost_modifier = node.var_3e7103ff;
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0xce903b61, Offset: 0x5440
// Size: 0x46
function function_f4087909(blocker) {
    return isdefined(blocker.var_fa527c6d) && isdefined(blocker) && isdefined(blocker.var_939413d0) && blocker.var_939413d0 === 1;
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0xefaada80, Offset: 0x5490
// Size: 0x66
function function_142c3c86(entity) {
    if (is_true(entity.usingvehicle)) {
        vehicle = entity getvehicleoccupied();
        if (function_44a83b40(vehicle)) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x88f4e28a, Offset: 0x5500
// Size: 0x94
function function_397c3081(wait_time) {
    self notify("7ed90f19983e5905");
    self endon("7ed90f19983e5905");
    level endon(#"game_ended");
    wait(wait_time + float(function_60d95f53()) / 1000);
    if (!isdefined(self)) {
        return;
    }
    self.var_e3efbaaa = undefined;
    function_844c8b88(self);
}

// Namespace namespace_85745671/event_9673dc9a
// Params 1, eflags: 0x20
// Checksum 0x16632580, Offset: 0x55a0
// Size: 0x5b4
function event_handler[event_9673dc9a] function_3981d015(eventstruct) {
    if (!is_true(eventstruct.ent.destroyed) && is_true(eventstruct.ent.destructible)) {
        dynent = eventstruct.ent;
        var_16a4afdc = eventstruct.state;
        bundle = isdefined(dynent.bundle) ? dynent.bundle : zm_utility::function_b42da08a(dynent);
        if (isdefined(bundle) && var_16a4afdc === bundle.destroyed || var_16a4afdc === bundle.vehicledestroyed) {
            eventstruct.ent.destroyed = 1;
            eventstruct.ent.var_34e210ee = undefined;
            eventstruct.ent.var_a318096f = undefined;
        }
    }
    if (is_true(eventstruct.ent.var_993e9bb0)) {
        dynent = eventstruct.ent;
        var_16a4afdc = eventstruct.state;
        bundle = isdefined(dynent.bundle) ? dynent.bundle : zm_utility::function_b42da08a(dynent);
        if (isdefined(bundle) && isdefined(bundle.dynentstates) && isdefined(bundle.dynentstates[var_16a4afdc])) {
            newstate = bundle.dynentstates[var_16a4afdc];
            var_a852a7dd = isdefined(bundle.var_a852a7dd) ? bundle.var_a852a7dd : isdefined(newstate.var_b272e331) ? newstate.var_b272e331 : 0;
            if (var_a852a7dd > 0) {
                dynent.var_e3efbaaa = 1;
                dynent thread function_397c3081(var_a852a7dd);
            }
        }
    }
    if (isdefined(eventstruct.ent.target) && eventstruct.ent.target != "") {
        traversal_start_node = getnode(eventstruct.ent.target, "targetname");
        if (isdefined(traversal_start_node)) {
            other_node = getothernodeinnegotiationpair(traversal_start_node);
            if (eventstruct.state == 0) {
                if ((isdefined(getgametypesetting(#"hash_2d40f1434ed94a2b")) ? getgametypesetting(#"hash_2d40f1434ed94a2b") : 0) && isdefined(traversal_start_node.var_597f08bf)) {
                    function_dc0a8e61(traversal_start_node, getdvarint(#"hash_397bf855bf5ab4de", 1));
                    if (isdefined(other_node)) {
                        function_dc0a8e61(other_node, getdvarint(#"hash_397bf855bf5ab4de", 1));
                    }
                    if (isdefined(traversal_start_node.ai_zone)) {
                        if (is_true(traversal_start_node.ai_zone.var_6411ebfb)) {
                            linktraversal(traversal_start_node);
                        } else {
                            unlinktraversal(traversal_start_node);
                        }
                    }
                    eventstruct.ent function_aa894590();
                } else {
                    unlinktraversal(traversal_start_node);
                }
                return;
            }
            if (isdefined(getgametypesetting(#"hash_2d40f1434ed94a2b")) ? getgametypesetting(#"hash_2d40f1434ed94a2b") : 0) {
                if (eventstruct.ent.health > 0) {
                    forward = anglestoforward(eventstruct.ent.angles);
                    if (eventstruct.state == 2) {
                        forward *= -1;
                    }
                    function_d9a69cf2(eventstruct.ent.origin, forward);
                }
                function_dc0a8e61(traversal_start_node, 1);
                if (isdefined(other_node)) {
                    function_dc0a8e61(other_node, 1);
                }
                eventstruct.ent function_a63a9610();
                linktraversal(traversal_start_node);
                return;
            }
            linktraversal(traversal_start_node);
        }
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x2 linked
// Checksum 0x4fd8a8b6, Offset: 0x5b60
// Size: 0x12e
function function_d9a69cf2(origin, forward) {
    nearby_zombies = getentitiesinradius(origin, 50, 15);
    foreach (ent in nearby_zombies) {
        if (!isdefined(forward) || vectordot(origin - ent.origin, forward) < 0) {
            var_43b3242 = 0;
            if (isdefined(ent.var_834b0770)) {
                var_43b3242 = 1;
            }
            ent zombie_utility::setup_zombie_knockdown(origin, var_43b3242);
            ent.knockdown_type = "knockdown_shoved";
        }
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x54b5ba15, Offset: 0x5c98
// Size: 0x5a
function function_44a83b40(vehicle) {
    return isdefined(vehicle) && vehicle.scriptvehicletype !== "recon_wz" && vehicle.scriptvehicletype !== "dart_wz" && vehicle.scriptvehicletype !== "hawk";
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x0
// Checksum 0xaab42010, Offset: 0x5d00
// Size: 0x3a
function function_ab8b93d1(vehicle) {
    return vehicle.targetname === "exfil_heli" || vehicle.vehicleclass === "helicopter";
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x9dd69631, Offset: 0x5d48
// Size: 0x78
function function_7243fef2(vehicle) {
    if (!isvehicle(vehicle)) {
        return false;
    }
    var_562ae86f = 45;
    return abs(vehicle.origin[2] - getwaterheight(vehicle.origin)) < var_562ae86f;
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x2 linked
// Checksum 0xb503206a, Offset: 0x5dc8
// Size: 0x4f2
function function_401070dd(vehicle, enemy = self.favoriteenemy) {
    assert(isplayer(enemy) && enemy isinvehicle(), "<unknown string>");
    if (!isdefined(vehicle)) {
        vehicle = enemy getvehicleoccupied();
    }
    if (!isdefined(vehicle)) {
        return undefined;
    }
    function_13d991c7(vehicle);
    if (!isdefined(vehicle.attack_spots) || vehicle.attack_spots.size == 0) {
        return vehicle.origin;
    }
    var_65374bf9 = distance2dsquared(vehicle.origin, self.origin);
    if (abs(vehicle getspeed()) > 100) {
        vehicle.attack_spots = undefined;
        return vehicle.origin;
    }
    if (var_65374bf9 > sqr(300)) {
        var_af76c64c = arraygetclosest(self.origin, vehicle.attack_spots);
        return var_af76c64c.origin;
    }
    var_e7f6ebff = undefined;
    for (var_656ca683 = 0; var_656ca683 < 4; var_656ca683++) {
        var_a10e63f5 = &vehicle.var_30206623[var_656ca683];
        if (isinarray(var_a10e63f5, self)) {
            var_e7f6ebff = var_656ca683;
            break;
        }
    }
    if (!isdefined(var_e7f6ebff)) {
        var_a8b5fe0b = arraysortclosest(vehicle.var_cef3270f, self.origin);
        foreach (var_fea19523 in var_a8b5fe0b) {
            if (vehicle.var_30206623[var_fea19523.side].size < 2) {
                array::add(vehicle.var_30206623[var_fea19523.side], self);
                return var_fea19523.origin;
            }
        }
        var_847cb128 = arraysortclosest(vehicle.attack_spots, self.origin);
        foreach (spot in var_847cb128) {
            if (vehicle.var_30206623[spot.side].size < 3) {
                array::add(vehicle.var_30206623[spot.side], self);
                return spot.origin;
            }
        }
        array::add(vehicle.var_30206623[var_847cb128[0].side], self);
        return var_847cb128[0].origin;
    } else {
        var_8909d642 = vehicle.var_d9381ace[var_e7f6ebff];
        if (vehicle.var_30206623[var_e7f6ebff].size < 2) {
            var_5cdd8f0a = arrayintersect(vehicle.var_d9381ace[var_e7f6ebff], vehicle.var_cef3270f);
            if (var_5cdd8f0a.size > 0) {
                var_8909d642 = var_5cdd8f0a;
            }
        }
        var_d14dd1fa = arraygetclosest(self.origin, var_8909d642);
        return var_d14dd1fa.origin;
    }
    return vehicle.origin;
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0xe61d03ac, Offset: 0x62c8
// Size: 0x7f8
function function_13d991c7(vehicle) {
    if (abs(vehicle getspeed()) > 100) {
        vehicle.var_30206623 = [[], [], [], []];
        return;
    }
    if (!isdefined(vehicle.var_a5b3bf1)) {
        vehicle.var_a5b3bf1 = vehicle.origin;
    }
    var_30206623 = [[], [], [], []];
    if (!isdefined(vehicle.var_30206623)) {
        vehicle.var_30206623 = var_30206623;
    }
    var_d556ca21 = 30;
    if (!isdefined(vehicle.var_74193f59)) {
        vehicle.var_74193f59 = -1;
    }
    if (gettime() > vehicle.var_74193f59) {
        vehicle.var_74193f59 = gettime() + 1000;
        for (list_index = 0; list_index < vehicle.var_30206623.size; list_index++) {
            function_1eaaceab(vehicle.var_30206623[list_index]);
        }
        vehicle.attack_spots = undefined;
    }
    if (distancesquared(vehicle.var_a5b3bf1, vehicle.origin) > sqr(var_d556ca21) || !isdefined(vehicle.attack_spots)) {
        vehicle.var_a5b3bf1 = vehicle.origin;
        vehicle_forward = anglestoforward(vehicle.angles);
        var_63017913 = anglestoright(vehicle.angles);
        var_328f42e5 = function_5ea39be1(vehicle);
        var_11560bb5 = isdefined(var_328f42e5[1]) ? var_328f42e5[1] : 0;
        var_89eb7ad8 = isdefined(var_328f42e5[0]) ? var_328f42e5[0] : 0;
        var_35bc98c = var_63017913 * var_11560bb5;
        vehicle.var_cef3270f = [];
        vehicle.attack_spots = [];
        vehicle.var_d9381ace = [[], [], [], []];
        occupants = vehicle getvehoccupants();
        foreach (occupant in occupants) {
            projected = vectorprojection(vehicle.origin - occupant.origin, var_35bc98c);
            var_c090ff87 = lengthsquared(projected);
            var_4e5e0fc4 = (occupant.origin[0], occupant.origin[1], vehicle.origin[2]) + projected;
            var_bc4c0533 = [var_4e5e0fc4 + var_35bc98c, var_4e5e0fc4 - var_35bc98c];
            if (var_c090ff87 < sqr(var_11560bb5)) {
                if (var_c090ff87 > 2) {
                    var_81952387 = arraygetclosest(occupant.origin, var_bc4c0533);
                    side = var_81952387 === var_bc4c0533[0] ? 1 : 3;
                    function_3c2e73c7(vehicle, var_81952387, side, 1);
                    continue;
                }
                for (i = 0; i < var_bc4c0533.size; i++) {
                    side = i === 0 ? 1 : 3;
                    function_3c2e73c7(vehicle, var_bc4c0533[i], side, 1);
                }
            }
        }
        var_c8394a1c = 2 / var_89eb7ad8 * 2 / 35;
        var_e74e4ad9 = var_89eb7ad8 * 2 / 35 - 4;
        for (xx = -1; xx <= 1; xx += 2) {
            side = xx > 0 ? 3 : 1;
            spot = function_8b9f2fd7(vehicle, -1 + var_c8394a1c, xx, -1);
            for (spot_index = 0; spot_index < var_e74e4ad9; spot_index++) {
                spot += vehicle_forward * 35;
                function_3c2e73c7(vehicle, spot, side);
            }
        }
        var_a8beb071 = 2 / var_11560bb5 * 2 / 35;
        var_98185c02 = var_11560bb5 * 2 / 35 - 2;
        for (yy = -1; yy <= 1; yy += 2) {
            side = yy > 0 ? 0 : 2;
            spot = function_8b9f2fd7(vehicle, yy, -1 + var_a8beb071, -1);
            for (spot_index = 0; spot_index < var_98185c02; spot_index++) {
                spot -= var_63017913 * 35;
                function_3c2e73c7(vehicle, spot, side);
            }
        }
    }
    /#
        if (getdvarint(#"hash_24148fb67250b39a", 0)) {
            foreach (spot in vehicle.attack_spots) {
                debugstar(spot.origin, 40, (0, 0, 1));
            }
        }
    #/
}

// Namespace namespace_85745671/namespace_85745671
// Params 4, eflags: 0x6 linked
// Checksum 0xefa3010a, Offset: 0x6ac8
// Size: 0x2bc
function private function_3c2e73c7(vehicle, spot, side, var_5c331674) {
    assert(isdefined(vehicle.attack_spots), "<unknown string>");
    if (!(isdefined(side) && isdefined(spot) && isdefined(vehicle) && isdefined(vehicle.attack_spots))) {
        return;
    }
    var_4103e33e = arraygetclosest(spot, vehicle.attack_spots);
    if (isdefined(var_4103e33e) && distancesquared(var_4103e33e.origin, spot) < sqr(30)) {
        return;
    }
    struct = {#origin:spot, #side:side};
    if (!isdefined(vehicle.attack_spots)) {
        vehicle.attack_spots = [];
    } else if (!isarray(vehicle.attack_spots)) {
        vehicle.attack_spots = array(vehicle.attack_spots);
    }
    vehicle.attack_spots[vehicle.attack_spots.size] = struct;
    if (!isdefined(vehicle.var_d9381ace[side])) {
        vehicle.var_d9381ace[side] = [];
    } else if (!isarray(vehicle.var_d9381ace[side])) {
        vehicle.var_d9381ace[side] = array(vehicle.var_d9381ace[side]);
    }
    vehicle.var_d9381ace[side][vehicle.var_d9381ace[side].size] = struct;
    if (is_true(var_5c331674)) {
        if (!isdefined(vehicle.var_cef3270f)) {
            vehicle.var_cef3270f = [];
        } else if (!isarray(vehicle.var_cef3270f)) {
            vehicle.var_cef3270f = array(vehicle.var_cef3270f);
        }
        vehicle.var_cef3270f[vehicle.var_cef3270f.size] = struct;
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0xb774c63f, Offset: 0x6d90
// Size: 0xfa
function function_98e73b11(vehicle) {
    if (!isvehicle(vehicle) || !isdefined(vehicle.var_30206623)) {
        return 0;
    }
    result = 0;
    for (var_656ca683 = 0; var_656ca683 < 4; var_656ca683++) {
        var_a10e63f5 = &vehicle.var_30206623[var_656ca683];
        if (isinarray(var_a10e63f5, self)) {
            var_e7f6ebff = var_656ca683;
            break;
        }
    }
    if (isdefined(var_e7f6ebff) && function_758df15d(vehicle, self.origin) === var_e7f6ebff) {
        result = 1;
    }
    return result;
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x6 linked
// Checksum 0x498e6c82, Offset: 0x6e98
// Size: 0x24e
function private function_758df15d(vehicle, position) {
    vehicle_forward = anglestoforward((0, vehicle.angles[1], 0));
    var_63017913 = anglestoright((0, vehicle.angles[1], 0));
    half_bounds = function_5ea39be1(vehicle);
    var_b62b2d3 = vehicle.origin + vehicle_forward * half_bounds[0];
    var_3cf03ef4 = vehicle.origin - vehicle_forward * half_bounds[0];
    var_24927517 = vehicle.origin + var_63017913 * half_bounds[1];
    var_456fde32 = vehicle.origin - var_63017913 * half_bounds[1];
    b_right = vectordot(var_63017913, position - var_24927517) > 0;
    b_left = vectordot(var_63017913 * -1, position - var_456fde32) > 0;
    var_47c54be9 = vectordot(vehicle_forward, position - var_b62b2d3) > 0;
    var_7253c519 = vectordot(vehicle_forward * -1, position - var_3cf03ef4) > 0;
    if (!var_47c54be9 && !var_7253c519) {
        if (b_right) {
            return 1;
        } else if (b_left) {
            return 3;
        }
    }
    if (!b_right && !b_left) {
        if (var_47c54be9) {
            return 0;
        } else if (var_7253c519) {
            return 2;
        }
    }
    return undefined;
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x6 linked
// Checksum 0x6b554510, Offset: 0x70f0
// Size: 0x8a
function private function_5ea39be1(vehicle) {
    if (vehicle.scriptvehicletype === "player_tank") {
        bounds = vehicle getboundshalfsize();
        bounds = (bounds[0] - 100, bounds[1], bounds[2]);
        return bounds;
    }
    return vehicle getboundshalfsize();
}

// Namespace namespace_85745671/namespace_85745671
// Params 4, eflags: 0x6 linked
// Checksum 0x65466ceb, Offset: 0x7188
// Size: 0xaa
function private function_8b9f2fd7(vehicle, var_3a0547e2, var_26667c0, var_2f67e49) {
    if (vehicle.scriptvehicletype === "player_tank") {
        var_3a0547e2 = (var_3a0547e2 + 1) / 1.4 - 1;
        point = vehicle getpointinbounds(var_3a0547e2, var_26667c0, var_2f67e49);
        return point;
    }
    return vehicle getpointinbounds(var_3a0547e2, var_26667c0, var_2f67e49);
}

// Namespace namespace_85745671/event_9e981c4
// Params 1, eflags: 0x24
// Checksum 0x6175e009, Offset: 0x7240
// Size: 0x3c
function private event_handler[event_9e981c4] function_ff8b3908(eventstruct) {
    if (isdefined(eventstruct.ent.var_fa527c6d)) {
        eventstruct.ent function_af978c79();
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x2 linked
// Checksum 0x7f0cc898, Offset: 0x7288
// Size: 0x44
function function_34a02ce7(hitent, damage) {
    self function_e441487e(hitent);
    self function_2713ff17(hitent, damage);
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0xa316a38d, Offset: 0x72d8
// Size: 0x6e6
function custom_melee_fire() {
    idflags = 0;
    if (isdefined(self.enemy) && is_true(self.enemy.armor)) {
        idflags |= 2048;
    }
    melee_dir = undefined;
    if (isdefined(self.attackable)) {
        melee_dir = anglestoforward(self.angles);
    }
    hitent = self melee(melee_dir, idflags);
    if (isdefined(hitent) && hitent.team !== self.team) {
        if (self.attackable === hitent) {
            self function_924c0c6f(self.attackable);
            if (isvehicle(self.attackable)) {
                self function_e441487e(hitent);
            }
        } else if (isvehicle(hitent)) {
            damage = self.var_a0193213;
            if (self.var_6f84b820 === #"elite") {
                damage = randomintrange(850, 1200);
            }
            self function_e441487e(hitent);
            self function_2713ff17(hitent, damage);
        } else if (isplayer(hitent)) {
            function_95c99579(hitent);
            if (hitent isinvehicle()) {
                vehicle = hitent getvehicleoccupied();
                damage = self.var_a0193213;
                if (self.var_6f84b820 === #"elite") {
                    damage = randomintrange(850, 1200);
                }
                self function_e441487e(vehicle);
                self function_2713ff17(vehicle, damage);
            }
        }
    } else if (isdefined(self.var_b238ef38) && isdefined(self.attackable) && isdefined(self.var_b238ef38.position) && self isingoal(self.var_b238ef38.position)) {
        self function_924c0c6f(self.attackable);
    } else if (isdefined(self.enemy) && isplayer(self.enemy) && self.enemy getstance() != "stand") {
        z_dist = self.enemy.origin[2] - self.origin[2];
        if (abs(z_dist) < 24) {
            var_e98404d8 = self getcentroid();
            var_6bd1cb3c = self.enemy geteye();
            dist_sq = distancesquared(var_e98404d8, var_6bd1cb3c);
            if (dist_sq < sqr(64)) {
                if (self.enemy getstance() == "prone") {
                    var_6bd1cb3c = self.enemy getplayercamerapos();
                }
                /#
                    recordline(var_e98404d8, var_6bd1cb3c, (1, 0.5, 0), "<unknown string>", self);
                #/
                if (bullettracepassed(var_e98404d8, var_6bd1cb3c, 0, self)) {
                    self function_a7a7d0b2();
                }
            } else {
                /#
                    if (getdvarint(#"hash_44035b03496fb5de", 0)) {
                        recordstar(self.enemy.origin, (1, 0, 0));
                        recordstar(self.origin, (1, 0.5, 0));
                        record3dtext("<unknown string>" + sqrt(dist_sq), self.origin, (1, 0.5, 0));
                    }
                #/
            }
        } else {
            /#
                if (getdvarint(#"hash_44035b03496fb5de", 0)) {
                    recordstar(self.enemy.origin, (1, 0, 0));
                    recordstar(self.origin, (1, 0.5, 0));
                    record3dtext("<unknown string>" + z_dist, self.origin, (1, 0.5, 0));
                }
            #/
        }
    }
    if (!isdefined(self.var_46fc9994)) {
        self.var_46fc9994 = {};
    }
    self.var_46fc9994.hit_ent = hitent;
    self.var_46fc9994.time = gettime();
    self.var_46fc9994.position = self.origin;
    if (isdefined(self.enemy)) {
        self.var_46fc9994.var_7befcf25 = distancesquared(self.origin, self.enemy.origin);
    }
    return hitent;
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x2 linked
// Checksum 0x83da4193, Offset: 0x79c8
// Size: 0xe4
function function_95c99579(player = self.enemy, var_5f5d262c = 0) {
    if (!isplayer(player)) {
        return;
    }
    if (is_true(var_5f5d262c) && distancesquared(self getcentroid(), player geteye()) > sqr(self.meleeweapon.aimeleerange)) {
        return;
    }
    player clientfield::increment_to_player("zombie_melee_shake", 1);
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x807b7b4d, Offset: 0x7ab8
// Size: 0xec
function function_a7a7d0b2(damage_override) {
    melee_damage = self.meleeweapon.meleedamage;
    if (isdefined(damage_override)) {
        melee_damage = damage_override;
    }
    if (!isdefined(self.enemy)) {
        return;
    }
    self.enemy dodamage(melee_damage, self.origin, self, self, "torso_upper", "MOD_MELEE", 0, self.meleeweapon);
    if (!isdefined(self.enemy)) {
        return;
    }
    self.enemy playsoundtoplayer(#"hash_6307f941b1ae7ed4", self.enemy);
    if (!isdefined(self.enemy)) {
        return;
    }
    self function_95c99579(self.enemy);
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0xcc0e5ebf, Offset: 0x7bb0
// Size: 0x16c
function function_924c0c6f(attackable) {
    var_8b4a973a = undefined;
    if (isdefined(attackable.startinghealth)) {
        var_8b4a973a = attackable.startinghealth;
    } else if (isdefined(attackable.maxhealth)) {
        var_8b4a973a = attackable.maxhealth;
    }
    if (isdefined(var_8b4a973a)) {
        if (is_true(self.var_d8695234)) {
            damage = int(var_8b4a973a / 2) + 1;
            attackable dodamage(damage, attackable.origin, self, self);
            return;
        }
        if (is_true(self.var_d003d23c)) {
            damage = int(145);
            attackable dodamage(damage, attackable.origin, self, self, "torso_upper");
            return;
        }
        damage = int(var_8b4a973a / 20) + 1;
        attackable dodamage(damage, attackable.origin, self, self);
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x0
// Checksum 0x5e31326d, Offset: 0x7d28
// Size: 0x13c
function function_68cc8bce(params) {
    owner = params.owner;
    turret = params.turret;
    owner endon(#"death");
    turret endon(#"death");
    wait(1);
    slots = function_bdb2b85b(turret, turret.origin, turret.angles, 30, 4, 300);
    if (!isdefined(slots) || slots.size <= 0) {
        return;
    }
    turret.var_b79a8ac7 = {#var_f019ea1a:500, #slots:slots};
    turret.var_ba721a2c = 20;
    if (!isdefined(level.attackables)) {
        level.attackables = [];
    }
    turret.is_active = 1;
    level.attackables[level.attackables.size] = turret;
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x0
// Checksum 0x6e2efc16, Offset: 0x7e70
// Size: 0x4c
function on_turret_destroyed(params) {
    owner = params.owner;
    turret = params.turret;
    function_b70e2a37(turret);
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x4afe0df, Offset: 0x7ec8
// Size: 0x17c
function function_cf065988(params) {
    owner = params.owner;
    cover = params.cover;
    owner endon(#"death");
    cover endon(#"death");
    slots = function_bdb2b85b(cover, owner.smartcover.lastvalid.origin, owner.smartcover.lastvalid.angles, owner.smartcover.lastvalid.width / 2 + 12, 6, level.smartcoversettings.bundle.var_b345c668);
    if (!isdefined(slots) || slots.size <= 0) {
        return;
    }
    cover.var_b79a8ac7 = {#slots:slots};
    cover.var_ba721a2c = 1;
    cover.var_d83d7db3 = 100;
    if (!isdefined(level.attackables)) {
        level.attackables = [];
    }
    level.attackables[level.attackables.size] = cover;
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0xf91c9da0, Offset: 0x8050
// Size: 0x34
function function_b0503d98(params) {
    cover = params.cover;
    function_b70e2a37(cover);
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x2 linked
// Checksum 0x2a15097, Offset: 0x8090
// Size: 0x214
function function_2713ff17(vehicle, damage_amount) {
    if (isdefined(vehicle)) {
        if (isdefined(damage_amount)) {
            vehicle dodamage(damage_amount, vehicle.origin);
        } else {
            /#
                iprintlnbold("<unknown string>" + (isdefined(self.archetype) ? self.archetype : "<unknown string>") + "<unknown string>");
            #/
        }
        org = vehicle.origin;
        if (vehicle.radius > 0) {
            nearby_players = getentitiesinradius(vehicle.origin, vehicle.radius, 1);
            foreach (player in nearby_players) {
                if (isdefined(vehicle getoccupantseat(player)) || player getgroundent() === vehicle || player getmoverent() === vehicle && player istouching(player getmoverent())) {
                    player clientfield::increment_to_player("zombie_vehicle_shake", 1);
                }
            }
        }
        playrumbleonposition("grenade_rumble", org);
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0xd17ff3e2, Offset: 0x82b0
// Size: 0x1c4
function function_e441487e(vehicle) {
    var_496cfa10 = vehicle.origin + vehicle getboundsmidpoint();
    var_847f0ab4 = 15;
    ai_radius = self getpathfindingradius() + var_847f0ab4;
    var_c86c1e8e = self gettagorigin("j_spine4");
    var_747c692d = isdefined(var_c86c1e8e[2]) ? var_c86c1e8e[2] : var_496cfa10[2];
    var_14c32c86 = (self.origin[0], self.origin[1], var_747c692d);
    var_14c32c86 += vectornormalize(var_496cfa10 - var_14c32c86) * ai_radius;
    fx = #"hash_759f82a7cd698ae";
    if (self.var_6f84b820 === #"normal") {
        fx = #"hash_61a4124615c8df27";
    } else if (self.var_6f84b820 === #"elite") {
        fx = #"hash_61a11c4615c6ba4e";
    }
    if (!isdefined(fx)) {
        println("<unknown string>");
        return;
    }
    playfx(fx, var_14c32c86);
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x8dc70ae1, Offset: 0x8480
// Size: 0x7ac
function on_ai_damage(params) {
    if (isdefined(params.einflictor.scriptvehicletype) && isdefined(params.smeansofdeath) && isdefined(params.idamage)) {
        if (params.einflictor.classname === "script_vehicle" && params.smeansofdeath == "MOD_CRUSH") {
            var_80730518 = params.einflictor;
            var_b35e868f = 0;
            switch (var_80730518.scriptvehicletype) {
            case #"player_motorcycle_2wd":
                n_damage = 200;
                n_slowdown = 0.05;
                var_e96b9598 = 0.2;
                break;
            case #"player_uaz":
                n_damage = 75;
                n_slowdown = 0.05;
                var_e96b9598 = 0.55;
                break;
            case #"hash_2212824fabcc986c":
                n_damage = 100;
                n_slowdown = 0.05;
                var_e96b9598 = 0.25;
                break;
            case #"player_fav_light":
                n_damage = 90;
                n_slowdown = 0.05;
                var_e96b9598 = 0.7;
                break;
            case #"player_sedan":
                n_damage = 95;
                n_slowdown = 0.05;
                var_e96b9598 = 0.7;
                break;
            case #"player_truck_transport":
                n_damage = 15;
                n_slowdown = 0.05;
                var_e96b9598 = 0.85;
                break;
            case #"player_tank":
                n_damage = 10;
                n_slowdown = 0.05;
                var_e96b9598 = 0.85;
                var_b35e868f = params.idamage >= self.health;
                break;
            default:
                n_damage = 100;
                n_slowdown = 0.05;
                var_e96b9598 = 0.85;
                break;
            }
            if (isdefined(n_damage)) {
                if (isalive(self) && !is_true(self.var_490b950e)) {
                    self.var_490b950e = 1;
                    self thread function_595cd0e4();
                    v_forward = var_80730518.origin + vectornormalize(anglestoforward(var_80730518.angles)) * 110;
                    v_velocity = var_80730518 getvelocity();
                    v_launch = v_velocity * n_slowdown * -1;
                    v_hitloc = params.vpoint;
                    if (self.aitype === #"spawner_bo5_mechz_sr" || self.aitype === #"hash_4f87aa2a203d37d0" || self.aitype === #"spawner_zm_steiner" || self.aitype === #"hash_21f3d5d40d72e08d") {
                        v_launch = v_velocity * var_e96b9598 * -1;
                        n_damage *= 4;
                    } else if (self.aitype === #"hash_60d7855358ceb53d" || self.aitype === #"hash_acac3fe7a341329" || self.aitype === #"hash_3ff43755c44e6d3d" || self.aitype === #"hash_469e4baceeaf38f5") {
                        v_launch = v_velocity * var_e96b9598 * -1;
                        n_damage *= 8;
                    }
                    if (isdefined(var_80730518)) {
                        var_80730518 thread function_66c37f3b();
                        var_80730518 function_dbf5bfd3(self, params.idamage);
                        if (!(self.var_6f84b820 === #"boss")) {
                            var_80730518 function_117ab176(self);
                        }
                        if (isdefined(v_forward) && !isdefined(var_80730518.b_launched)) {
                            var_80730518.b_launched = 1;
                            var_80730518 thread function_695f2040();
                            n_damage = int(n_damage);
                            if (!is_true(self.var_bc8466c7) && !is_true(self.var_81568da5) && (!is_true(self.var_6cdeac5e) || !is_true(var_80730518.var_2b60f92f))) {
                                var_80730518 launchvehicle(v_launch, v_hitloc, 0, 0);
                            }
                        }
                        damage_percentage = params.idamage / (isdefined(self.maxhealth) ? self.maxhealth : 1);
                        if (damage_percentage >= 0.01 || self.var_6f84b820 === #"boss") {
                            if (damage_percentage > 2.4 || var_b35e868f) {
                                if (isdefined(self) && self.archetype === #"zombie") {
                                    if (math::cointoss(40) || isdefined(var_80730518.var_e955dfad) || var_b35e868f) {
                                        self thread zombie_utility::zombie_gut_explosion();
                                    } else {
                                        self thread zombie_utility::zombie_gib();
                                    }
                                }
                            } else if (damage_percentage > 1) {
                                if (isdefined(self) && self.archetype === #"zombie") {
                                    if (math::cointoss(50)) {
                                        self thread zombie_utility::zombie_gib();
                                    }
                                }
                            }
                            var_80730518 dodamage(n_damage, var_80730518.origin, self, undefined, "", "MOD_IMPACT");
                        }
                    }
                }
            }
        }
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0x65c95898, Offset: 0x8c38
// Size: 0x42
function function_595cd0e4() {
    self endon(#"death");
    wait(1);
    if (isalive(self)) {
        self.var_490b950e = 0;
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0x59a10e03, Offset: 0x8c88
// Size: 0x26
function function_695f2040() {
    self endon(#"death");
    waitframe(1);
    self.b_launched = undefined;
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0xeb8de5ea, Offset: 0x8cb8
// Size: 0x5c
function function_66c37f3b() {
    self endon(#"death");
    waitframe(1);
    self playrumbleonentity("sr_prototype_vehicle_run_over");
    self playsound(#"hash_7c72cea06ae4906c");
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x2 linked
// Checksum 0x3a6ab4d4, Offset: 0x8d20
// Size: 0x29c
function function_dbf5bfd3(victim, damage) {
    if (!isdefined(victim.var_97ca51c7) || victim.var_97ca51c7 === 0) {
        return;
    }
    var_496cfa10 = self.origin + self getboundsmidpoint();
    ai_radius = victim getpathfindingradius();
    var_14c32c86 = (victim.origin[0], victim.origin[1], var_496cfa10[2]);
    var_14c32c86 += vectornormalize(var_496cfa10 - var_14c32c86) * ai_radius;
    switch (victim.var_97ca51c7) {
    case 1:
        fx = #"hash_2a892324f9a00349";
        break;
    case 2:
        fx = #"hash_300ecf1e2906e7e1";
        break;
    case 3:
        fx = #"hash_55233930bd381063";
        break;
    case 4:
        fx = #"hash_7ce4d6b506f915e";
        break;
    }
    if (isdefined(damage) && damage > 100) {
        switch (victim.var_97ca51c7) {
        case 1:
            fx = #"hash_18293e40b9cad276";
            break;
        case 2:
            fx = #"hash_294ea8c5b97f912e";
            break;
        case 3:
            fx = #"hash_3938808083de38a4";
            break;
        case 4:
            fx = #"hash_17ad5569b3b11753";
            break;
        }
    }
    if (!isdefined(fx)) {
        println("<unknown string>");
        return;
    }
    playfx(fx, var_14c32c86);
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x6120aa33, Offset: 0x8fc8
// Size: 0x23e
function function_117ab176(victim) {
    current_time = gettime();
    victim.var_b99c0512 = current_time;
    victim.var_4ac8985e = current_time + getdvarfloat(#"hash_6180fc224acfa00f", 250);
    var_348afc81 = vectortoangles((self.origin[0], self.origin[1], 0) - (victim.origin[0], victim.origin[1], 0))[1];
    new_angles = (victim.angles[0], var_348afc81, victim.angles[2]);
    victim teleport(victim.origin, new_angles);
    speed = undefined;
    if (isvehicle(self)) {
        speed = abs(self getspeed());
    } else {
        speed = length(self getvelocity());
    }
    victim.var_24594a06 = speed;
    victim.var_331c8e1b = abs(anglestoup(self.angles)[2]);
    victim.var_b98d64dc = self getvelocity()[2];
    victim.var_d8481de = self.var_586465e4;
    /#
        var_bfc27406 = getdvarfloat(#"hash_29f0c6f284a3a04e", -1);
        if (var_bfc27406 >= 0) {
            victim.var_d8481de = var_bfc27406;
        }
    #/
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x2 linked
// Checksum 0x4f757e26, Offset: 0x9210
// Size: 0x5c
function function_7ae2ef10(fake_vehicle, victim) {
    fake_vehicle function_117ab176(victim);
    fake_vehicle function_dbf5bfd3(victim);
    victim function_e81afe0c();
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0xab4847e6, Offset: 0x9278
// Size: 0x54
function function_dc276637(ai) {
    if (!isdefined(ai.var_4ac8985e)) {
        ai.var_4ac8985e = 0;
    }
    return gettime() < ai.var_4ac8985e || is_true(ai.var_d667c9b7);
}

// Namespace namespace_85745671/namespace_85745671
// Params 5, eflags: 0x0
// Checksum 0x3cd0cd9d, Offset: 0x92d8
// Size: 0x132
function function_3cfa8bfe(str_model, v_offset, v_ang, n_forward, n_scale) {
    self setbrake(1);
    wait(0.5);
    v_forward = self.origin + vectornormalize(anglestoforward(self.angles)) * n_forward;
    var_6d29abb0 = util::spawn_model(str_model, v_forward + v_offset, v_ang);
    if (isdefined(var_6d29abb0)) {
        wait(0.1);
        var_6d29abb0.health = int(self.health * 0.4);
        var_6d29abb0 setscale(n_scale);
        var_6d29abb0 linkto(self);
        self.var_e955dfad = var_6d29abb0;
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x2 linked
// Checksum 0x2cd00e0e, Offset: 0x9418
// Size: 0x176
function function_8f57dc52(dynent, var_83085b86 = 0) {
    if (is_true(dynent.var_ba6fde59) && (var_83085b86 || !is_true(dynent.var_993e9bb0))) {
        return true;
    } else if (isdefined(dynent)) {
        dynentstate = function_ffdbe8c2(dynent);
        bundle = isdefined(dynent.bundle) ? dynent.bundle : zm_utility::function_b42da08a(dynent);
        if (!dynent.destructible || !dynent.var_e76c7e9f || !isdefined(bundle.destroyed) || dynentstate === bundle.destroyed || dynentstate === bundle.vehicledestroyed || is_true(dynent.var_993e9bb0) && !var_83085b86) {
            return false;
        }
        dynent.var_ba6fde59 = 1;
        return true;
    }
    return false;
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x77c7616f, Offset: 0x9598
// Size: 0xe4
function function_4c48a301(dynent) {
    should_break = 0;
    var_144ce0a0 = dynent.script_noteworthy == #"hash_4d1fb8524fdfd254";
    if (var_144ce0a0 || dynent.destructible) {
        bundle = isdefined(dynent.bundle) ? dynent.bundle : zm_utility::function_b42da08a(dynent);
        state = function_ffdbe8c2(dynent);
        should_break = !is_true(bundle.dynentstates[state].var_b7401b42);
    }
    return should_break;
}

// Namespace namespace_85745671/namespace_85745671
// Params 3, eflags: 0x2 linked
// Checksum 0x52377afa, Offset: 0x9688
// Size: 0xea
function ee_head(entity, var_30ce4d1e = 1, forwardoffset) {
    if (!isactor(entity)) {
        return [];
    }
    if (!isdefined(forwardoffset)) {
        forwardoffset = anglestoforward(entity.angles) * entity getpathfindingradius();
    }
    return function_c3d68575(entity.origin + forwardoffset, (entity getpathfindingradius() * var_30ce4d1e, entity getpathfindingradius() * var_30ce4d1e, entity function_6a9ae71() * var_30ce4d1e));
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x8bfcf50c, Offset: 0x9780
// Size: 0x142
function zombie_on_melee(*params) {
    var_d54999e4 = ee_head(self, 1.5);
    foreach (dynent in var_d54999e4) {
        if (!is_true(dynent.destroyed) && function_8f57dc52(dynent)) {
            bundle = isdefined(dynent.bundle) ? dynent.bundle : zm_utility::function_b42da08a(dynent);
            function_e2a06860(dynent, bundle.destroyed);
        }
    }
    self.var_4c85ebad = undefined;
}

// Namespace namespace_85745671/namespace_85745671
// Params 6, eflags: 0x2 linked
// Checksum 0x6113ef54, Offset: 0x98d0
// Size: 0x288
function function_9d3ad056(var_7ecdee63, v_origin, v_angles, str_name, var_c427317f = 1, var_1028910 = #"hash_5d96e8e3ed203968") {
    if (!isdefined(var_7ecdee63)) {
        /#
            iprintln("<unknown string>");
        #/
        return;
    }
    n_percent = min(0.8, level.var_b48509f9 * 0.1 + 0.5);
    if (var_c427317f && getaiarray().size >= int(getailimit() * n_percent)) {
        function_904d21fd();
    }
    var_abb82760 = function_3b941e5c(v_origin, var_7ecdee63);
    var_7ecdee63 = isdefined(var_abb82760) ? var_abb82760 : var_7ecdee63;
    ai_spawned = spawnactor(var_7ecdee63, v_origin, v_angles, str_name, 1);
    if (isdefined(ai_spawned)) {
        if (str_name === "kill_hvt_ai") {
            ai_spawned.var_c9b11cb3 = #"hash_1f92e0fae04824cd";
        } else if (ai_spawned.archetype === #"zombie") {
            ai_spawned.var_c9b11cb3 = var_1028910;
        }
        if (isdefined(str_name) && !isinarray(level.var_d0c8ad06, hash(str_name))) {
            ai_spawned.var_921627ad = 1;
        }
        if (ai_spawned.aitype === #"spawner_bo5_mimic" || ai_spawned.aitype === #"hash_4a900af3fc47cdd5") {
            ai_spawned.never_hide = 1;
        }
        ai_spawned.var_a2f87939 = 3;
        return ai_spawned;
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0xa844249d, Offset: 0x9b60
// Size: 0x394
function function_904d21fd() {
    var_808239f1 = arraycombine(getaiarchetypearray(#"zombie"), getaiarchetypearray(#"zombie_dog"));
    max_dist = 0;
    var_202d087b = undefined;
    foreach (i, actor in var_808239f1) {
        if (is_true(actor.var_921627ad) || is_true(actor.var_a950813d) || is_true(actor.var_4df707f6)) {
            var_808239f1[i] = -1;
        }
    }
    arrayremovevalue(var_808239f1, -1);
    players = getplayers();
    foreach (player in players) {
        if (player.sessionstate === "spectator") {
            continue;
        }
        while (true) {
            if (!isdefined(player)) {
                break;
            }
            var_3817a6b3 = arraygetfarthest(player.origin, var_808239f1);
            if (!isdefined(var_3817a6b3)) {
                return;
            }
            if (!player util::is_player_looking_at(var_3817a6b3 getcentroid(), level.var_11cc6ef9, 0)) {
                break;
            }
            arrayremovevalue(var_808239f1, var_3817a6b3);
            if (!var_808239f1.size) {
                return;
            }
            waitframe(1);
        }
        if (isdefined(var_3817a6b3)) {
            closest_player = arraygetclosest(var_3817a6b3.origin, getplayers());
        }
        if (isdefined(closest_player) && isdefined(var_3817a6b3)) {
            dist = distancesquared(closest_player.origin, var_3817a6b3.origin);
            if (max_dist < dist) {
                max_dist = dist;
                var_202d087b = var_3817a6b3;
            }
        }
    }
    if (!isdefined(var_202d087b)) {
        var_202d087b = array::random(var_808239f1);
    }
    if (isdefined(var_202d087b)) {
        var_202d087b callback::callback(#"hash_10ab46b52df7967a");
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x0
// Checksum 0xd56d54d4, Offset: 0x9f00
// Size: 0x196
function function_143a09ab(n_radius, v_loc) {
    level endon(#"hash_30fed423f5232678");
    self endon(#"death");
    if (!isdefined(v_loc)) {
        v_loc = self.origin;
    }
    a_ai_zombies = getaiarray();
    foreach (ai_zombie in a_ai_zombies) {
        if (isalive(ai_zombie) && !isdefined(ai_zombie.var_921627ad) && !isdefined(ai_zombie.var_4df707f6)) {
            if (distance2dsquared(v_loc, ai_zombie.origin) >= sqr(n_radius)) {
                ai_zombie callback::callback(#"hash_10ab46b52df7967a");
            } else {
                ai_zombie thread function_b7e28ade(v_loc, n_radius);
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x2 linked
// Checksum 0x2feb5975, Offset: 0xa0a0
// Size: 0x184
function function_b7e28ade(v_loc, var_743fe0c8 = 2000) {
    self endon(#"death");
    self.b_visible = 0;
    foreach (player in getplayers()) {
        if (isdefined(var_743fe0c8) && isdefined(v_loc) && distance2dsquared(self.origin, v_loc) > sqr(var_743fe0c8) && player util::is_looking_at(self, 0.7, 1)) {
            self.b_visible = 1;
        }
        waitframe(1);
    }
    if (!self.b_visible && !isdefined(self.enemy) && !isdefined(self.var_b238ef38)) {
        self callback::callback(#"hash_10ab46b52df7967a");
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0xe1873f50, Offset: 0xa230
// Size: 0x2c4
function function_5cb3181e(*params) {
    self endoncallback(&function_ed58e498, #"death");
    if (is_true(self.var_a950813d) || !isalive(self)) {
        return;
    }
    self.var_4df707f6 = 1;
    despawn_anim = self.despawn_anim;
    if (!isdefined(despawn_anim) && isdefined(self.var_ecbef856)) {
        despawn_anim = self animmappingsearch(self.var_ecbef856);
    }
    if (!isdefined(despawn_anim)) {
        self clientfield::increment("zombie_teleport", 1);
    }
    waitframe(randomintrange(2, 5));
    if (isdefined(self.attackable)) {
        function_2b925fa5(self);
    }
    self hide();
    self.ignoreall = 1;
    [[ level.var_454ed97e ]]->waitinqueue(self);
    if (isdefined(despawn_anim) && !self isragdoll()) {
        length = getanimlength(despawn_anim);
        self animscripted("despawn_anim", self.origin, self.angles, despawn_anim, "normal", undefined, 1, 0.2);
        self waittillmatchtimeout(length + 1, {#notetrack:"end"}, #"despawn_anim");
    }
    self util::stop_magic_bullet_shield();
    self ghost();
    self notsolid();
    waittillframeend();
    self.allowdeath = 1;
    self.var_98f1f37c = 1;
    if (self isplayinganimscripted()) {
        self stopanimscripted();
    }
    self deletedelay();
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x6 linked
// Checksum 0x3b2982ee, Offset: 0xa500
// Size: 0x24
function private function_ed58e498(*notifyhash) {
    [[ level.var_454ed97e ]]->leavequeue(self);
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0xc759ccb0, Offset: 0xa530
// Size: 0x72
function function_b67c088d() {
    enemy_override = undefined;
    if (self.archetype === #"zombie") {
        if (isdefined(level.zombielevelspecifictargetcallback)) {
            enemy_override = [[ level.zombielevelspecifictargetcallback ]]();
            return enemy_override;
        }
        enemy_override = self function_a9cfe717();
    }
    return enemy_override;
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0xd231c751, Offset: 0xa5b0
// Size: 0x1a2
function function_a9cfe717() {
    if (level.var_15e68c97.size <= 0 && level.var_432fa05c.var_402a4207.size <= 0 && level.var_2da60c10.size <= 0 && (!isarray(level.var_bced5d3c) || level.var_bced5d3c.size <= 0)) {
        return undefined;
    }
    var_38023c1a = [nightingale::function_29fbe24f(self), gadget_cymbal_monkey::function_4a5dff80(self), gadget_homunculus::function_bd59a592(self)];
    recon_car = recon_car::function_8030f1bd(self);
    if (!isdefined(var_38023c1a)) {
        var_38023c1a = [];
    } else if (!isarray(var_38023c1a)) {
        var_38023c1a = array(var_38023c1a);
    }
    if (!isinarray(var_38023c1a, recon_car)) {
        var_38023c1a[var_38023c1a.size] = recon_car;
    }
    arrayremovevalue(var_38023c1a, undefined);
    return arraygetclosest(self.origin, var_38023c1a);
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0xe5038fad, Offset: 0xa760
// Size: 0xb4
function function_9456addc(var_fb09158c = 15) {
    if (isalive(self)) {
        a_players = array::get_all_closest(self.origin, laststand::function_7fb2bbfc());
        enemy = a_players[0];
        if (isalive(enemy)) {
            awareness::function_c241ef9a(self, enemy, var_fb09158c);
        }
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x0
// Checksum 0xef9154dc, Offset: 0xa820
// Size: 0xf0
function function_a31a41e8(entity, attackable) {
    if (isdefined(entity.attackable)) {
        function_2b925fa5(entity);
    }
    entity.attackable = attackable;
    if (!entity.attackable get_attackable_slot(entity)) {
        function_2b925fa5(entity);
        return false;
    }
    entity.var_83562198 = attackable;
    if (!isdefined(attackable.var_76d60097)) {
        attackable.var_76d60097 = [];
        attackable callback::function_d8abfc3d(#"hash_6ac33a33b6b9eb88", &function_bffd7b5);
    }
    attackable.var_76d60097[attackable.var_76d60097.size] = entity;
    return true;
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0x86317947, Offset: 0xa918
// Size: 0xbe
function function_bffd7b5() {
    if (isarray(self.var_76d60097)) {
        function_1eaaceab(self.var_76d60097);
        foreach (entity in self.var_c5602ebe) {
            if (entity.var_83562198 === self) {
                entity.var_83562198 = undefined;
            }
        }
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x6efd4cb6, Offset: 0xa9e0
// Size: 0xd2
function function_744beb04(entity) {
    if (!isdefined(entity)) {
        return;
    }
    if (isdefined(entity.var_83562198)) {
        return;
    }
    if (entity.team !== level.zombie_team || isdefined(entity.var_ff290a61) || isdefined(entity.enemy_override) || isdefined(entity.var_b238ef38) && !isdefined(entity.attackable)) {
        function_2b925fa5(entity);
        return;
    }
    if (!isdefined(entity.attackable)) {
        entity.attackable = get_attackable(entity, 1, entity.var_c11b8a5a);
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 6, eflags: 0x0
// Checksum 0x7cc9b8e6, Offset: 0xaac0
// Size: 0x234
function function_caa890e2(origin, &spawn_points, var_79d43d2f, height, outer_radius, inner_radius) {
    var_31189d28 = isdefined(inner_radius) ? inner_radius : 0;
    queryresult = positionquery_source_navigation(origin, var_31189d28, outer_radius, height / 2, 20);
    var_c94c8429 = int(min(queryresult.data.size, var_79d43d2f));
    while (queryresult.data.size && spawn_points.size < var_c94c8429) {
        spawn_point = array::pop(queryresult.data, randomint(queryresult.data.size), 0);
        trace_start = (spawn_point.origin[0], spawn_point.origin[1], spawn_point.origin[2] + height);
        traceresult = physicstraceex(trace_start, spawn_point.origin, (-15, -15, 0), (15, 15, 72));
        var_d1a33279 = traceresult[#"position"];
        if (traceresult[#"fraction"] > 0 && abs(var_d1a33279[2] - spawn_point.origin[2]) < 32) {
            spawn_points[spawn_points.size] = var_d1a33279 - origin;
        }
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 5, eflags: 0x2 linked
// Checksum 0xba2da277, Offset: 0xad00
// Size: 0x262
function function_6b273d22(origin, var_1faf023a, outer_radius, inner_radius, var_b28b1642) {
    if (!isdefined(origin)) {
        return [];
    }
    point_start = (origin[0] + var_1faf023a[0], origin[1] + var_1faf023a[1], origin[2] + var_1faf023a[2]);
    point_end = (origin[0] + var_1faf023a[0], origin[1] + var_1faf023a[1], origin[2] - var_1faf023a[2]);
    traceresult = physicstraceex(point_start, point_end, (-15, -15, 0), (15, 15, 72));
    var_d1a33279 = traceresult[#"position"];
    if (is_true(var_b28b1642)) {
        waitframe(1);
    }
    if (traceresult[#"fraction"] > 0 && isdefined(var_d1a33279)) {
        var_47efca42 = getclosestpointonnavmesh(var_d1a33279, 500, 32);
    }
    if (isdefined(var_47efca42) && abs(var_d1a33279[2] - var_47efca42[2]) < 32) {
        if (distance2dsquared(var_47efca42, origin) <= sqr(outer_radius) && (!isdefined(inner_radius) || distance2dsquared(var_47efca42, origin) >= sqr(inner_radius))) {
            final_point = (var_47efca42[0], var_47efca42[1], max(var_d1a33279[2], var_47efca42[2]));
        }
    }
    return final_point;
}

// Namespace namespace_85745671/namespace_85745671
// Params 6, eflags: 0x2 linked
// Checksum 0x1c10a628, Offset: 0xaf70
// Size: 0x26a
function function_5f4ef4d0(origin, angles, var_1faf023a, width, length, height) {
    point_start = (origin[0] + var_1faf023a[0], origin[1] + var_1faf023a[1], origin[2] + var_1faf023a[2]);
    point_end = (origin[0] + var_1faf023a[0], origin[1] + var_1faf023a[1], origin[2] - var_1faf023a[2]);
    traceresult = physicstraceex(point_start, point_end, (-15, -15, 0), (15, 15, 72));
    var_d1a33279 = traceresult[#"position"];
    if (traceresult[#"fraction"] > 0 && isdefined(var_d1a33279)) {
        var_47efca42 = var_d1a33279;
    }
    if (isdefined(var_47efca42) && abs(var_d1a33279[2] - var_47efca42[2]) < 32) {
        rotated_offset = var_47efca42 - origin;
        var_1e98886a = function_72c0c267(rotated_offset, angles);
        mins = (-0.5 * width, -0.5 * length, -0.5 * height);
        maxs = mins * -1;
        if (function_fc3f770b(mins, maxs, var_1e98886a)) {
            final_point = (var_47efca42[0], var_47efca42[1], max(var_d1a33279[2], var_47efca42[2]));
        }
    }
    return final_point;
}

// Namespace namespace_85745671/namespace_85745671
// Params 4, eflags: 0x2 linked
// Checksum 0x199d1cc4, Offset: 0xb1e8
// Size: 0x10a
function function_72c54d21(*origin, height, outer_radius, inner_radius) {
    theta = randomfloatrange(0, 360);
    var_9bdfd = 0.2;
    if (isdefined(inner_radius)) {
        var_9bdfd = inner_radius / outer_radius;
    }
    x = sin(theta) * outer_radius * randomfloatrange(var_9bdfd, 1);
    y = cos(theta) * outer_radius * randomfloatrange(var_9bdfd, 1);
    z = height;
    return (x, y, z);
}

// Namespace namespace_85745671/namespace_85745671
// Params 7, eflags: 0x2 linked
// Checksum 0x3e3980ac, Offset: 0xb300
// Size: 0xea
function function_4ed3741d(*origin, angles, height, outer_radius, inner_radius, min_angle = 0, max_angle = 180) {
    return rotatepoint((1, 0, height) * randomfloatrange(isdefined(inner_radius) ? inner_radius / outer_radius : 0, outer_radius), (0, (randomintrange(0, 2) ? -1 : 1) * randomfloatrange(min_angle, max_angle) + angles[1], 0));
}

// Namespace namespace_85745671/namespace_85745671
// Params 5, eflags: 0x2 linked
// Checksum 0xca6be9af, Offset: 0xb3f8
// Size: 0xf2
function function_81a53f3b(*origin, angles, width, length, height) {
    x = randomfloatrange(-0.5 * width, 0.5 * width);
    y = randomfloatrange(-0.5 * length, 0.5 * length);
    z = height;
    point = (x, y, z);
    point = rotatepoint(point, (0, angles[1], 0));
    return point;
}

// Namespace namespace_85745671/namespace_85745671
// Params 8, eflags: 0x2 linked
// Checksum 0x63799334, Offset: 0xb4f8
// Size: 0x222
function function_e4791424(origin, var_79d43d2f, height, outer_radius, inner_radius = 0, return_offsets = 0, use_throttle = 1, var_632ad0e5 = 1) {
    level endon(#"game_ended");
    if (!isdefined(origin)) {
        return [];
    }
    throttle_index = 0;
    var_fa7134f3 = var_632ad0e5 ? 3 : 1;
    spawn_points = [];
    for (i = 0; i < var_79d43d2f; i++) {
        var_8b63a38e = 0;
        final_point = undefined;
        while (!isdefined(final_point) && var_8b63a38e < 5) {
            point = function_72c54d21(origin, height, outer_radius, inner_radius);
            final_point = function_6b273d22(origin, point, outer_radius, inner_radius, !var_632ad0e5);
            if (isdefined(final_point)) {
                if (return_offsets) {
                    spawn_points[spawn_points.size] = final_point - origin;
                } else {
                    angles = origin - final_point;
                    spawn_points[spawn_points.size] = {#origin:final_point, #angles:(0, angles[1], 0)};
                }
            } else {
                var_8b63a38e++;
            }
            throttle_index++;
            if (use_throttle && throttle_index % var_fa7134f3 == 0) {
                waitframe(1);
            }
        }
    }
    return spawn_points;
}

// Namespace namespace_85745671/namespace_85745671
// Params 8, eflags: 0x2 linked
// Checksum 0x773b90c3, Offset: 0xb728
// Size: 0x1e6
function function_7a1b21f6(origin, angles, var_79d43d2f, width, length, height, return_offsets = 0, use_throttle = 1) {
    level endon(#"game_ended");
    throttle_index = 0;
    spawn_points = [];
    for (i = 0; i < var_79d43d2f; i++) {
        var_8b63a38e = 0;
        final_point = undefined;
        while (!isdefined(final_point) && var_8b63a38e < 5) {
            point = function_81a53f3b(origin, angles, width, length, height);
            final_point = function_5f4ef4d0(origin, angles, point, width, length, height);
            if (isdefined(final_point)) {
                if (return_offsets) {
                    spawn_points[spawn_points.size] = final_point - origin;
                } else {
                    var_6f386fda = origin - final_point;
                    spawn_points[spawn_points.size] = {#origin:final_point, #angles:(0, var_6f386fda[1], 0)};
                }
            } else {
                var_8b63a38e++;
            }
            throttle_index++;
            if (use_throttle && throttle_index % 3 == 0) {
                waitframe(1);
            }
        }
    }
    return spawn_points;
}

// Namespace namespace_85745671/namespace_85745671
// Params 5, eflags: 0x0
// Checksum 0x737b68f8, Offset: 0xb918
// Size: 0x122
function function_af5f7fc8(id, var_44f5a49b, origin, angles, targetname) {
    assert(isdefined(id) && isdefined(var_44f5a49b));
    if (!isdefined(level.var_754b2a4a)) {
        level.var_754b2a4a = [];
    }
    if (!isdefined(level.var_754b2a4a[id])) {
        level.var_754b2a4a[id] = namespace_679a22ba::function_77be8a83(var_44f5a49b);
    }
    spawn_info = namespace_679a22ba::function_ca209564(var_44f5a49b, level.var_754b2a4a[id]);
    if (!isdefined(spawn_info)) {
        return undefined;
    }
    new_ai = spawnactor(spawn_info.var_990b33df, origin, angles, targetname, 1);
    if (isdefined(new_ai)) {
        new_ai.list_name = spawn_info.list_name;
    }
    return new_ai;
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x0
// Checksum 0x6fde4c97, Offset: 0xba48
// Size: 0x38
function function_eb8e8b81(id) {
    if (!isdefined(level.var_754b2a4a)) {
        level.var_754b2a4a = [];
    }
    level.var_754b2a4a[id] = undefined;
}

// Namespace namespace_85745671/namespace_85745671
// Params 3, eflags: 0x2 linked
// Checksum 0x201ccf7b, Offset: 0xba88
// Size: 0xca
function function_61418721(point, line_start, line_end) {
    var_1ad356b8 = vectornormalize(line_end - line_start);
    var_f6451fc1 = vectordot(point - line_start, var_1ad356b8);
    var_f6451fc1 = min(max(var_f6451fc1, 0), length(line_end - line_start));
    closest_point = line_start + var_1ad356b8 * var_f6451fc1;
    return closest_point;
}

// Namespace namespace_85745671/namespace_85745671
// Params 6, eflags: 0x2 linked
// Checksum 0x9fb0e92, Offset: 0xbb60
// Size: 0x2ae
function function_5ba8b9d4(entity, var_21bdf069, dynent, var_f3fec032, dynentstate, var_144ce0a0) {
    if (var_144ce0a0 && dynentstate != 0 || is_true(var_f3fec032.dynentstates[dynentstate].var_b7401b42) || !isdefined(dynent.var_34e210ee)) {
        return false;
    }
    /#
        recordline(dynent.var_34e210ee.start_point, dynent.var_34e210ee.end_point, (1, 0, 0), "<unknown string>");
        recordcircle(entity.origin, sqrt(var_21bdf069), (0, 1, 0), "<unknown string>");
    #/
    point = function_61418721(entity.origin, dynent.var_34e210ee.start_point, dynent.var_34e210ee.end_point);
    /#
        recordline(entity.origin, point, (1, 0, 1), "<unknown string>");
    #/
    var_6b2e7c97 = entity.origin + (0, 0, entity function_6a9ae71());
    if (length2dsquared(point - entity.origin) < var_21bdf069 && (entity.origin[2] <= dynent.origin[2] && var_6b2e7c97[2] >= dynent.origin[2] || entity.origin[2] <= dynent.var_34e210ee.var_b4daf97e && var_6b2e7c97[2] >= dynent.var_34e210ee.var_b4daf97e || entity.origin[2] >= dynent.origin[2] && var_6b2e7c97[2] <= dynent.var_34e210ee.var_b4daf97e)) {
        return true;
    }
    return false;
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x2 linked
// Checksum 0xe8f4ad3a, Offset: 0xbe18
// Size: 0x3d8
function function_dce54c8d(player, radius) {
    if (!getdvarint(#"hash_397bf855bf5ab4de", 1)) {
        return;
    }
    var_12caa762 = getentitiesinradius(player.origin, radius, 15);
    var_e86a4d9 = function_dde285a9(var_12caa762, 200);
    foreach (dynent in var_e86a4d9) {
        if (is_true(dynent.destroyed) || !function_8f57dc52(dynent, 1)) {
            continue;
        }
        should_break = 0;
        var_144ce0a0 = dynent.script_noteworthy == #"hash_4d1fb8524fdfd254";
        entity = undefined;
        if (var_144ce0a0 || dynent.destructible) {
            state = function_ffdbe8c2(dynent);
            if (dynent.var_34e210ee.state !== state || is_true(dynent.var_e3efbaaa)) {
                function_844c8b88(dynent);
                dynent.var_34e210ee.state = state;
            }
            var_f8ca59a8 = getentitiesinradius(dynent.var_34e210ee.center, dynent.var_34e210ee.len + 32, 15);
            if (!var_f8ca59a8.size) {
                continue;
            }
            bundle = isdefined(dynent.bundle) ? dynent.bundle : zm_utility::function_b42da08a(dynent);
            foreach (ai in var_f8ca59a8) {
                should_break = function_5ba8b9d4(ai, sqr(isdefined(ai.var_c50d964) ? ai.var_c50d964 : ai getpathfindingradius()), dynent, bundle, state, var_144ce0a0);
                if (should_break) {
                    entity = ai;
                    break;
                }
            }
        }
        if (should_break && isdefined(bundle)) {
            dynent dodamage(dynent.health, entity.origin, entity, entity, undefined, "MOD_MELEE");
        }
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 1, eflags: 0x2 linked
// Checksum 0x72056d70, Offset: 0xc1f8
// Size: 0x2be
function function_844c8b88(dynent) {
    bounds = function_c440d28e(dynent.var_15d44120);
    var_8c2f83ef = bounds.maxs - bounds.mins;
    var_cc87c802 = getxmodelcenteroffset(dynent.var_15d44120);
    if (var_8c2f83ef[0] < var_8c2f83ef[1]) {
        var_f712cb3c = anglestoright(dynent.angles);
        doorcenter = dynent.origin + var_f712cb3c * -1 * var_cc87c802[1];
        var_8d59f800 = var_f712cb3c * var_8c2f83ef[1] / 2;
        /#
            recordstar(doorcenter, (0, 1, 0), "<unknown string>");
        #/
        end_point = doorcenter + var_8d59f800;
        start_point = doorcenter - var_8d59f800;
    } else {
        var_71dfc5d4 = anglestoforward(dynent.angles);
        var_8d59f800 = var_71dfc5d4 * var_8c2f83ef[0] / 2;
        doorcenter = dynent.origin + var_71dfc5d4 * var_cc87c802[0];
        /#
            recordstar(doorcenter, (1, 0.5, 0), "<unknown string>");
        #/
        end_point = doorcenter + var_8d59f800;
        start_point = doorcenter - var_8d59f800;
    }
    /#
        recordline(start_point, end_point, (1, 0, 1), "<unknown string>");
    #/
    dynent.var_34e210ee = {#center:doorcenter + (0, 0, var_8c2f83ef[2] / 4), #len:max(var_8c2f83ef[2] / 4, distance(end_point, start_point)) / 2, #start_point:start_point, #end_point:end_point, #var_b4daf97e:dynent.origin[2] + var_8c2f83ef[2]};
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0x42f236a8, Offset: 0xc4c0
// Size: 0x4c
function function_6c308e81() {
    if (is_true(level.is_survival)) {
        self thread function_625a781d();
        return;
    }
    self thread play_ambient_zombie_vocals();
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0xf3a5a9f0, Offset: 0xc518
// Size: 0x188
function play_ambient_zombie_vocals() {
    self endon(#"death");
    self thread function_b8c2c5cc();
    while (true) {
        type = "ambient";
        float = 3;
        if (isdefined(self.aistate)) {
            switch (self.aistate) {
            case 0:
            case 1:
            case 2:
            case 4:
                type = "ambient";
                float = 3;
                break;
            case 3:
                type = "sprint";
                float = 3;
                break;
            }
        }
        if (is_true(self.missinglegs)) {
            float = 2;
            type = "crawler";
        }
        bhtnactionstartevent(self, type);
        self notify(#"bhtn_action_notify", {#action:type});
        wait(randomfloatrange(1, float));
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0x252151fe, Offset: 0xc6a8
// Size: 0x1b0
function function_625a781d() {
    self endon(#"death");
    self thread function_c2be61f2();
    while (true) {
        type = "ambient";
        float = 3;
        if (isdefined(self.current_state)) {
            switch (self.current_state.name) {
            case #"investigate":
            case #"wander":
                type = "ambient";
                float = 3;
                break;
            case #"chase":
                type = "sprint";
                float = 3;
                break;
            }
        }
        if (is_true(self.missinglegs)) {
            float = 2;
            type = "crawler";
        }
        bhtnactionstartevent(self, type);
        self notify(#"bhtn_action_notify", {#action:type});
        wait(0.1);
        while (is_true(self.talking)) {
            wait(0.1);
        }
        wait(randomfloatrange(0.25, 1.5));
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0x4ddd7eda, Offset: 0xc860
// Size: 0x78
function function_b8c2c5cc() {
    self endon(#"death", #"disconnect");
    while (true) {
        self waittill(#"reset_pathing");
        if (self.aistate == 3) {
            bhtnactionstartevent(self, "chase_state_start");
        }
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 0, eflags: 0x2 linked
// Checksum 0x5f70b87e, Offset: 0xc8e0
// Size: 0x98
function function_c2be61f2() {
    self endon(#"death", #"disconnect");
    while (true) {
        self waittill(#"state_changed");
        waitframe(1);
        if (isdefined(self.current_state) && self.current_state.name == #"chase") {
            bhtnactionstartevent(self, "chase_state_start");
        }
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 3, eflags: 0x2 linked
// Checksum 0x519eca64, Offset: 0xc980
// Size: 0xfa
function function_ae04fa3e(origin, angles, targetname) {
    var_2e6f77db = isdefined(level.zombie_spawners[0].aitype) ? level.zombie_spawners[0].aitype : #"hash_7cba8a05511ceedf";
    ai_spawned = spawnactor(var_2e6f77db, origin, angles, targetname, 1);
    if (isdefined(ai_spawned)) {
        ai_spawned.var_c9b11cb3 = #"hash_5d96e8e3ed203968";
        ai_spawned thread function_2089690e();
        ai_spawned pathmode("move allowed");
        ai_spawned.completed_emerging_into_playable_area = 1;
        ai_spawned.zombie_think_done = 1;
    }
    return ai_spawned;
}

// Namespace namespace_85745671/namespace_85745671
// Params 3, eflags: 0x0
// Checksum 0x25908d4a, Offset: 0xca88
// Size: 0xfc
function function_c85e46e9(location_name, archetype, &var_9e7cd9ac) {
    level.var_96b8c915 = 1;
    var_761da6ce = getentarray("location_zone", "targetname");
    foreach (volume in var_761da6ce) {
        if (volume.script_location === location_name) {
            if (!isdefined(volume.var_61a8df0d)) {
                volume.var_61a8df0d = [];
            }
            volume.var_61a8df0d[archetype] = var_9e7cd9ac;
        }
    }
}

// Namespace namespace_85745671/namespace_85745671
// Params 2, eflags: 0x2 linked
// Checksum 0xe5ae04db, Offset: 0xcb90
// Size: 0x152
function function_3b941e5c(origin, aitype) {
    if (!isdefined(aitype) || !is_true(level.var_96b8c915)) {
        return undefined;
    }
    archetype = getarchetypefromclassname(aitype);
    foreach (volume in getentarray("location_zone", "targetname")) {
        if (isdefined(volume.var_61a8df0d[archetype]) && istouching(origin, volume)) {
            return volume.var_61a8df0d[archetype][randomint(volume.var_61a8df0d[archetype].size)];
        }
    }
    return undefined;
}

