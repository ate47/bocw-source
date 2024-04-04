// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\archetype_utility.gsc;
#using script_42e8ee8721f5e6ef;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace battlechatter;

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x5
// Checksum 0xc75ca4e, Offset: 0x350
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_2c8719a97b3c90fa", &preinit, undefined, undefined, undefined);
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x6 linked
// Checksum 0x2c745a48, Offset: 0x398
// Size: 0xac
function private preinit() {
    callback::on_start_gametype(&init);
    var_1d952608 = getactorspawnerarray();
    callback::on_ai_spawned(&function_b791d0e4);
    /#
        function_5ac4dc99("<unknown string>", 0);
    #/
    battlechatter_table::function_c5dda35e("combat", [#"hash_2a1fada6b78bcec4"]);
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0xa97b3f8, Offset: 0x450
// Size: 0xec
function init() {
    callback::on_spawned(&on_player_spawned);
    level.battlechatter_init = 1;
    level.allowbattlechatter = [];
    level.allowbattlechatter[#"bc"] = 1;
    level.allowbattlechatter[#"allies"] = 1;
    level.allowbattlechatter[#"axis"] = 1;
    level.allowbattlechatter[#"team3"] = 1;
    level.var_69427377 = [];
    level.var_69427377[#"hash_5e59b0cdc0164ead"] = "cover_break";
    level.var_69427377[#"hash_608b12a472a0cc75"] = "moving_up_other";
}

// Namespace battlechatter/battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0xdb2a3fbc, Offset: 0x548
// Size: 0x46
function is_hero(ai) {
    if (!isstring(ai.voiceprefix)) {
        return false;
    }
    if (ai.voiceprefix.size >= 8) {
        return true;
    }
    return false;
}

// Namespace battlechatter/battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x21cc8362, Offset: 0x598
// Size: 0x16e
function function_51759b03(var_84d1299, eventstruct = undefined) {
    if (is_true(level.var_cc83507)) {
        return false;
    }
    if (!isactor(self)) {
        if (isplayer(self)) {
            if (!is_true(var_84d1299)) {
                return false;
            }
        } else {
            return false;
        }
    }
    if (isdefined(self.archetype) && self.archetype == "zombie") {
        return false;
    }
    if (isdefined(self.archetype) && self.archetype == "direwolf") {
        return false;
    }
    if (isdefined(self.team) && !is_true(level.allowbattlechatter[self.team])) {
        return false;
    }
    if (isdefined(level.var_8b7cb19c) && isdefined(eventstruct)) {
        result = self [[ level.var_8b7cb19c ]](eventstruct);
        if (!is_true(result)) {
            return false;
        }
    }
    return true;
}

// Namespace battlechatter/battlechatter
// Params 1, eflags: 0x6 linked
// Checksum 0x39f9133b, Offset: 0x710
// Size: 0x6e
function private function_2346ea47(event) {
    if (event == #"hash_48185d924876594c") {
        if (self haspath() || absangleclamp180(self aiutility::function_dc8e1a0a()) < 45) {
            return false;
        }
    }
    return true;
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x9d560087, Offset: 0x788
// Size: 0x112
function function_4a19b47a() {
    assert(isdefined(self.voiceprefix));
    if (is_hero(self)) {
        self.var_3d0026c9 = "";
        return;
    }
    switch (self.voiceprefix) {
    case #"hash_6600f5c535189183":
        self.var_3d0026c9 = randomintrange(1, 3);
        break;
    case #"hash_6d6e10c538f37ef3":
        self.var_3d0026c9 = randomintrange(1, 5);
        break;
    default:
        self.var_3d0026c9 = randomintrange(1, 4);
        break;
    }
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x439163b4, Offset: 0x8a8
// Size: 0x10c
function function_b791d0e4() {
    self endon(#"disconnect");
    if (!self function_51759b03()) {
        return;
    }
    if (isdefined(self.archetype) && self.archetype == "zombie_dog") {
        self thread function_d85f6f61();
        self thread function_124ccedf();
        return;
    }
    if (!isdefined(self.voiceprefix)) {
        self.voiceprefix = "vox_ax";
    }
    self function_4a19b47a();
    self.isspeaking = 0;
    self.soundmod = "player";
    self thread function_158cbf3();
    if (self.team == #"allies") {
        self thread function_e1c920f9();
    }
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x6 linked
// Checksum 0x27edd084, Offset: 0x9c0
// Size: 0x88
function private function_158cbf3() {
    self endon(#"death");
    while (true) {
        result = self waittill(#"asm_notify");
        if (self function_2346ea47(result.param)) {
            self function_bd51deb1(result.param);
        }
    }
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x4e671add, Offset: 0xa50
// Size: 0xa0
function function_e1c920f9() {
    self endon(#"death");
    while (true) {
        result = self waittill(#"damage");
        if (isplayer(result.attacker) && damage_is_valid_for_friendlyfire_warning(result.mod)) {
            self function_bd51deb1("friendlyfire");
        }
    }
}

// Namespace battlechatter/battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x1fe9cf3b, Offset: 0xaf8
// Size: 0x86
function damage_is_valid_for_friendlyfire_warning(mod) {
    if (!isdefined(mod)) {
        return false;
    }
    switch (mod) {
    case #"mod_grenade":
    case #"mod_crush":
    case #"mod_grenade_splash":
    case #"mod_impact":
    case #"mod_melee":
        return false;
    }
    return true;
}

// Namespace battlechatter/actor_killed
// Params 1, eflags: 0x20
// Checksum 0xd95436ae, Offset: 0xb88
// Size: 0x40c
function event_handler[actor_killed] function_a94f4749(eventstruct) {
    if (!self function_51759b03()) {
        return;
    }
    if (isdefined(self.archetype) && self.archetype == "zombie_dog") {
        return;
    }
    if (is_true(self.diequietly)) {
        return;
    }
    if (!isdefined(self.voiceprefix) || !isdefined(self.var_3d0026c9)) {
        return;
    }
    attacker = eventstruct.attacker;
    meansofdeath = eventstruct.mod;
    if (isdefined(self.archetype) && self.archetype == #"robot") {
        if (isdefined(attacker) && !isplayer(attacker)) {
            if (meansofdeath == "MOD_MELEE") {
                attacker thread function_bd51deb1("meleeKill");
            } else {
                attacker thread function_bd51deb1("enemyKill");
            }
        }
        return;
    }
    if (isdefined(self)) {
        meleeassassinate = isdefined(meansofdeath) && meansofdeath == "MOD_MELEE_ASSASSINATE";
        if (isdefined(self.archetype) && self.archetype == "warlord") {
            self playsound(#"hash_2083f6ebc94b5bc7");
        }
        if (!is_true(self.var_ff22950d) && !meleeassassinate && isdefined(attacker)) {
            if (battlechatter_table::function_4e83ff35("combat", "announce", meansofdeath) > 0) {
                self thread function_bd51deb1(meansofdeath);
            } else {
                self thread function_bd51deb1("death");
            }
            self.var_c719b698 = 1;
        }
        if (is_true(self.var_e598a03f) && isdefined(attacker) && !isplayer(attacker)) {
            attacker thread function_bd51deb1("sniperdown");
            return;
        }
        if (isdefined(attacker) && !isplayer(attacker)) {
            if (meansofdeath == "MOD_MELEE") {
                attacker thread function_bd51deb1("meleeKill");
            } else {
                attacker thread function_bd51deb1("enemyKill");
            }
        }
        sniper = isdefined(attacker) && isdefined(attacker.scoretype) && attacker.scoretype == "_sniper";
        if (!meleeassassinate) {
            close_ai = function_c17c8a8e(self);
            if (isdefined(close_ai) && !is_true(close_ai.var_ff22950d)) {
                if (sniper) {
                    attacker.var_e598a03f = 1;
                    close_ai thread function_bd51deb1("sniperthreat");
                    return;
                }
                close_ai thread function_bd51deb1("friendlydown");
            }
        }
    }
}

// Namespace battlechatter/bhtn_action_start
// Params 1, eflags: 0x20
// Checksum 0xaedb1154, Offset: 0xfa0
// Size: 0xbc
function event_handler[bhtn_action_start] function_8f82e45e(eventstruct) {
    if (!self function_51759b03(0, eventstruct)) {
        return;
    }
    if ((is_true(self.diequietly) || is_true(self.var_c719b698)) && eventstruct.action === "death") {
        return;
    }
    if (isdefined(self.archetype) && self.archetype == "zombie_dog") {
        return;
    }
    self thread function_bd51deb1(eventstruct.action);
}

// Namespace battlechatter/bhtn_action_terminate
// Params 1, eflags: 0x20
// Checksum 0x84719d09, Offset: 0x1068
// Size: 0xc
function event_handler[bhtn_action_terminate] function_535f1141(*eventstruct) {
    
}

// Namespace battlechatter/battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x54ebaba9, Offset: 0x1080
// Size: 0xb4
function function_bd51deb1(notify_string) {
    self function_4e7b6f6d("combat", "announce", notify_string);
    var_73691c34 = level.var_69427377[notify_string];
    if (isdefined(var_73691c34)) {
        var_97a035a7 = self function_fb35fc43(1, 15);
        if (var_97a035a7.size > 0) {
            var_97a035a7[randomint(var_97a035a7.size)] function_bd51deb1(var_73691c34);
        }
    }
}

// Namespace battlechatter/battlechatter
// Params 3, eflags: 0x2 linked
// Checksum 0xd81e4fca, Offset: 0x1140
// Size: 0x23a
function function_4e7b6f6d(category, type, modifier) {
    if (!isdefined(modifier)) {
        return;
    }
    var_c25ca4e6 = (isdefined(modifier) ? modifier : "") == "death";
    probability = battlechatter_table::function_4e83ff35(category, type, modifier);
    if (probability >= 100 || randomfloatrange(0, 100) <= probability) {
        delay = battlechatter_table::function_2d2570e3(category, type, modifier);
        key = modifier;
        if (!ishash(modifier)) {
            key = "" + category + "_" + type + "_" + modifier;
        }
        var_db05b8ae = isdefined(level.var_5eabfd9[key]) ? level.var_5eabfd9[key] : 0;
        if (delay <= 0 || gettime() > var_db05b8ae) {
            var_cba6af0b = battlechatter_table::function_ac3d3b19(category, type, modifier);
            if (isdefined(var_cba6af0b) && isdefined(var_cba6af0b[0]) && var_cba6af0b[0] != "") {
                alias = var_cba6af0b[randomint(var_cba6af0b.size)];
                self function_9cb2c120(self, alias, undefined, undefined, 1, undefined, var_c25ca4e6);
                if (delay > 0) {
                    level.var_5eabfd9[key] = gettime() + delay * 1000;
                }
                return 1;
            }
        }
    }
}

// Namespace battlechatter/grenade_fire
// Params 1, eflags: 0x20
// Checksum 0xb146e9b7, Offset: 0x1388
// Size: 0x1dc
function event_handler[grenade_fire] function_edd0c161(eventstruct) {
    if (!self function_51759b03(1)) {
        return;
    }
    if (isai(self) && isdefined(self.archetype) && self.archetype == "zombie_dog") {
        return;
    }
    grenade = eventstruct.projectile;
    weapon = eventstruct.weapon;
    if (weapon.name == #"eq_frag_grenade" || weapon.name == #"frag_grenade" || weapon.name == #"hash_15ed0347f1459a04") {
        self thread function_bd51deb1("grenadetoss");
        level thread function_8be08180(self, grenade, "grenadeincoming");
        return;
    }
    if (weapon.name == #"hash_5453c9b880261bcb" || weapon.name == #"flash_grenade" || weapon.name == #"hash_ae7d40bb12f5ab6") {
        self thread function_bd51deb1("flashtoss");
        level thread function_8be08180(self, grenade, "flashincoming");
    }
}

// Namespace battlechatter/battlechatter
// Params 3, eflags: 0x2 linked
// Checksum 0x6ba59ca4, Offset: 0x1570
// Size: 0xc4
function function_8be08180(thrower, grenade, event) {
    wait(1);
    if (!isdefined(thrower) || !isdefined(grenade)) {
        return;
    }
    team = #"axis";
    if (isdefined(thrower.team) && team == thrower.team) {
        team = #"allies";
    }
    ai = function_c9f7a37c(team, grenade);
    if (isdefined(ai)) {
        ai thread function_bd51deb1(event);
    }
}

// Namespace battlechatter/grenade_stuck
// Params 1, eflags: 0x20
// Checksum 0x5921f8be, Offset: 0x1640
// Size: 0xac
function event_handler[grenade_stuck] function_2a82bb92(eventstruct) {
    if (!self function_51759b03()) {
        return;
    }
    if (isdefined(self.archetype) && self.archetype == "zombie_dog") {
        return;
    }
    grenade = eventstruct.projectile;
    if (isdefined(grenade)) {
        grenade.stucktoplayer = self;
    }
    if (isalive(self)) {
        self thread function_bd51deb1("stickyincoming");
    }
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x0
// Checksum 0x99af7cd4, Offset: 0x16f8
// Size: 0xdc
function function_e0d850d2() {
    self endon(#"disconnect");
    waitresult = self waittill(#"death");
    attacker = waitresult.attacker;
    meansofdeath = waitresult.mod;
    if (isdefined(attacker) && !isplayer(attacker)) {
        if (meansofdeath == "MOD_MELEE") {
            attacker thread function_bd51deb1("meleeKill");
            return;
        }
        attacker thread function_bd51deb1("enemyKill");
    }
}

// Namespace battlechatter/battlechatter
// Params 2, eflags: 0x0
// Checksum 0x2f3905b1, Offset: 0x17e0
// Size: 0xc4
function function_413ce774(object, type) {
    wait(randomfloatrange(0.1, 0.4));
    ai = function_c9f7a37c("both", object, 500);
    if (isdefined(ai)) {
        if (type == "car") {
            level thread function_9cb2c120(ai, "destructiblecar");
            return;
        }
        level thread function_9cb2c120(ai, "destructiblebarrel");
    }
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x1ad78bca, Offset: 0x18b0
// Size: 0x4e6
function function_bf0a663a() {
    level endon(#"unloaded");
    self endon(#"death", #"disconnect", #"hash_2e0d16928139b87e");
    if (!isdefined(level.var_85c7869d)) {
        level.var_85c7869d = 0;
        enemies = getaiteamarray(#"axis", #"team3");
        level.var_ecbd73e7 = array();
        foreach (enemy in enemies) {
            if (isdefined(enemy.archetype) && enemy.archetype == #"robot") {
                array::add(level.var_ecbd73e7, enemy, 0);
            }
        }
    }
    while (true) {
        wait(1);
        t = gettime();
        if (t > level.var_85c7869d + 1000) {
            level.var_85c7869d = t;
            enemies = getaiteamarray(#"axis", #"team3");
            function_1eaaceab(level.var_ecbd73e7);
            arrayremovevalue(level.var_ecbd73e7, undefined);
            foreach (enemy in enemies) {
                if (isdefined(enemy.archetype) && enemy.archetype == #"robot") {
                    array::add(level.var_ecbd73e7, enemy, 0);
                }
            }
        }
        if (level.var_ecbd73e7.size <= 0) {
            continue;
        }
        played_sound = 0;
        foreach (robot in level.var_ecbd73e7) {
            if (!isdefined(robot)) {
                continue;
            }
            if (distancesquared(robot.origin, self.origin) < 90000) {
                if (isdefined(robot.current_scene)) {
                    continue;
                }
                if (isdefined(robot.health) && robot.health <= 0) {
                    continue;
                }
                if (isdefined(level.scenes) && level.scenes.size >= 1) {
                    continue;
                }
                yaw = self getyawtospot(robot.origin);
                diff = self.origin[2] - robot.origin[2];
                if ((yaw < -95 || yaw > 95) && abs(diff) < 200) {
                    robot playsound(#"hash_49057ee50c660740");
                    played_sound = 1;
                    break;
                }
            }
        }
        if (played_sound) {
            wait(5);
        }
    }
}

// Namespace battlechatter/battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x70d33b68, Offset: 0x1da0
// Size: 0x62
function getyawtospot(spot) {
    pos = spot;
    yaw = self.angles[1] - getyaw(pos);
    yaw = angleclamp180(yaw);
    return yaw;
}

// Namespace battlechatter/battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0x5b2901ad, Offset: 0x1e10
// Size: 0x3e
function getyaw(org) {
    angles = vectortoangles(org - self.origin);
    return angles[1];
}

// Namespace battlechatter/battlechatter
// Params 1, eflags: 0x24
// Checksum 0x5c0eeb1c, Offset: 0x1e58
// Size: 0x34
function private event_handler[battlechatter] function_bf4d6a54(parms) {
    self function_9cb2c120(self, parms.suffix, undefined, undefined, 1);
}

// Namespace battlechatter/battlechatter
// Params 7, eflags: 0x2 linked
// Checksum 0xaa71bdb0, Offset: 0x1e98
// Size: 0x1ec
function function_9cb2c120(ai, line, var_7488e05b, category, var_954826ad, var_a8bd89dd, var_c25ca4e6 = 0) {
    if (!isdefined(ai)) {
        return;
    }
    ai endon(#"death", #"disconnect");
    if (isdefined(var_7488e05b)) {
        assert(!isdefined(var_a8bd89dd));
        var_a8bd89dd = [line + "_response"];
    }
    if (!isdefined(ai.voiceprefix) || !isdefined(ai.var_3d0026c9)) {
        return;
    }
    if (isdefined(ai.archetype) && ai.archetype == #"robot") {
        soundalias = ai.voiceprefix + ai.var_3d0026c9 + "_" + "chatter";
    } else if (!is_hero(ai) && strstartswith(line, "exert_")) {
        if (line == "exert_immolation") {
            line = "exert_death_scream";
        }
        soundalias = "vox_male_" + line;
    } else {
        soundalias = ai.voiceprefix + ai.var_3d0026c9 + "_" + line;
    }
    ai thread function_7e56a9a1(soundalias, var_954826ad, var_a8bd89dd, category, var_c25ca4e6);
}

// Namespace battlechatter/battlechatter
// Params 5, eflags: 0x2 linked
// Checksum 0x2ae659f2, Offset: 0x2090
// Size: 0x44c
function function_7e56a9a1(soundalias, var_954826ad, var_a8bd89dd, category, var_c25ca4e6 = 0) {
    if (!isdefined(soundalias)) {
        return;
    }
    if (!isdefined(var_954826ad)) {
        var_954826ad = 0;
    }
    if (self function_96dd94f5(category) && (!is_true(self.isspeaking) || var_954826ad)) {
        if (!isdefined(self.enemy) && !var_954826ad) {
            return;
        }
        function_14984343();
        if (!isalive(self) && !var_c25ca4e6) {
            return;
        }
        if (!isdefined(self)) {
            return;
        }
        if (is_true(self.istalking)) {
            return;
        }
        if (is_true(self.isspeaking)) {
            self notify(#"bc_interrupt");
        }
        if (soundexists(soundalias)) {
            /#
                if (getdvarint(#"hash_2abde9f4bcb01a86")) {
                    print3d(self.origin + (0, 0, 60), soundalias, (0, 1, 0), 1, 1, 100);
                }
            #/
            if (isalive(self) && isactor(self) && self.archetype !== #"zombie_dog" && self.archetype !== #"mp_dog") {
                self playsoundontag(soundalias, "j_head");
            } else {
                self playsound(soundalias);
            }
            self thread wait_playback_time(soundalias);
            result = self waittill(soundalias, #"death", #"disconnect", #"bc_interrupt");
            if (isdefined(self)) {
                if (result._notify == soundalias) {
                    if (isdefined(var_a8bd89dd) && var_a8bd89dd.size > 0) {
                        response = var_a8bd89dd[0];
                        arrayremovevalue(var_a8bd89dd, response);
                        ai = function_c17c8a8e(self);
                        if (isdefined(ai) && isdefined(response)) {
                            level thread function_9cb2c120(ai, response, undefined, undefined, undefined, var_a8bd89dd);
                        }
                    }
                } else if (result._notify == "bc_interrupt") {
                    self stopsound(soundalias);
                } else if (!is_true(var_c25ca4e6)) {
                    self stopsound(soundalias);
                }
            }
            return;
        }
        /#
            if (getdvarint(#"hash_2abde9f4bcb01a86")) {
                print3d(self.origin + (0, 0, 60), soundalias, (1, 0, 0), 1, 1, 100);
            }
        #/
    }
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x8b185076, Offset: 0x24e8
// Size: 0x64
function function_14984343() {
    if (!isdefined(level.var_c3687237)) {
        level thread function_aacf773a();
    }
    while (level.var_c3687237 != 0) {
        util::wait_network_frame();
    }
    level.var_c3687237++;
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x1c6542c1, Offset: 0x2558
// Size: 0x30
function function_aacf773a() {
    while (true) {
        level.var_c3687237 = 0;
        util::wait_network_frame();
    }
}

// Namespace battlechatter/battlechatter
// Params 1, eflags: 0x2 linked
// Checksum 0xced9cd6c, Offset: 0x2590
// Size: 0x92
function function_96dd94f5(str_category = "bc") {
    if (isdefined(level.allowbattlechatter) && !is_true(level.allowbattlechatter[str_category])) {
        return false;
    }
    if (isdefined(self.allowbattlechatter) && !is_true(self.allowbattlechatter[str_category])) {
        return false;
    }
    return true;
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x2443f932, Offset: 0x2630
// Size: 0x74
function on_player_spawned() {
    self endon(#"disconnect");
    self.soundmod = "player";
    self.var_c7a2467a = 0;
    self.var_2503219f = 1;
    self.isspeaking = 0;
    self thread pain_vox();
    self thread function_bf0a663a();
}

// Namespace battlechatter/battlechatter
// Params 1, eflags: 0x0
// Checksum 0x2dc951a2, Offset: 0x26b0
// Size: 0xac
function function_a0ec1dc0(suffix) {
    soundalias = "vox_plyr_" + suffix;
    if (self function_96dd94f5() && !is_true(self.istalking) && !is_true(self.isspeaking)) {
        self playsoundtoplayer(soundalias, self);
        self thread wait_playback_time(soundalias);
    }
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x9f9977a3, Offset: 0x2768
// Size: 0x118
function pain_vox() {
    self endon(#"death", #"disconnect");
    while (true) {
        waitresult = self waittill(#"hash_3ac4241a987b394f");
        if (randomintrange(0, 100) <= 100) {
            if (isalive(self)) {
                if (waitresult.mod == "MOD_DROWN") {
                    soundalias = "chr_swimming_drown";
                    self.var_c7a2467a = 1;
                    if (self.var_2503219f) {
                        self thread function_5ef33d49();
                    }
                }
                soundalias = "vox_plyr_exert_pain";
                self thread function_7e56a9a1(soundalias, 1);
            }
        }
        wait(0.5);
    }
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x20baccb1, Offset: 0x2888
// Size: 0xdc
function function_5ef33d49() {
    self endon(#"death", #"disconnect", #"hash_306970a8f0f651fe");
    level endon(#"game_ended");
    self.var_2503219f = 0;
    while (true) {
        if (!self isplayerunderwater() && self.var_c7a2467a) {
            self.var_c7a2467a = 0;
            self.var_2503219f = 1;
            self thread function_7e56a9a1("vox_pm1_gas_gasp", 1);
            self notify(#"hash_306970a8f0f651fe");
        }
        wait(0.5);
    }
}

// Namespace battlechatter/battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0xa914a576, Offset: 0x2970
// Size: 0xae
function wait_playback_time(soundalias, *timeout) {
    self endon(#"death", #"disconnect");
    playbacktime = soundgetplaybacktime(timeout);
    self.isspeaking = 1;
    if (playbacktime >= 0) {
        waittime = playbacktime * 0.001;
        wait(waittime);
    } else {
        wait(1);
    }
    self notify(timeout);
    self.isspeaking = 0;
}

// Namespace battlechatter/battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x4c14e7af, Offset: 0x2a28
// Size: 0x202
function function_c17c8a8e(var_928cff8, maxdist) {
    if (isdefined(var_928cff8)) {
        aiarray = getaiteamarray(var_928cff8.team);
        aiarray = arraysort(aiarray, var_928cff8.origin);
        if (!isdefined(maxdist)) {
            maxdist = 1000;
        }
        foreach (dude in aiarray) {
            if (!isdefined(var_928cff8)) {
                return undefined;
            }
            if (!isdefined(dude) || !isalive(dude) || !isdefined(dude.var_3d0026c9)) {
                continue;
            }
            if (dude == var_928cff8) {
                continue;
            }
            if (isvehicle(dude)) {
                continue;
            }
            if (isdefined(dude.archetype) && dude.archetype == #"robot") {
                continue;
            }
            if (!is_hero(dude) && !is_hero(var_928cff8)) {
                if (dude.var_3d0026c9 == var_928cff8.var_3d0026c9) {
                    continue;
                }
            }
            if (distance(var_928cff8.origin, dude.origin) > maxdist) {
                continue;
            }
            return dude;
        }
    }
    return undefined;
}

// Namespace battlechatter/battlechatter
// Params 3, eflags: 0x2 linked
// Checksum 0xcb223e6, Offset: 0x2c38
// Size: 0x1fa
function function_c9f7a37c(team, object, maxdist) {
    if (!isdefined(object)) {
        return;
    }
    if (team == "both") {
        aiarray = getaiteamarray(#"axis", #"allies");
    } else {
        aiarray = getaiteamarray(team);
    }
    aiarray = arraysort(aiarray, object.origin);
    if (!isdefined(maxdist)) {
        maxdist = 1000;
    }
    foreach (dude in aiarray) {
        if (!isdefined(dude) || !isalive(dude)) {
            continue;
        }
        if (isvehicle(dude)) {
            continue;
        }
        if (isdefined(dude.archetype) && dude.archetype == #"robot") {
            continue;
        }
        if (!isdefined(dude.voiceprefix) || !isdefined(dude.var_3d0026c9)) {
            continue;
        }
        if (distance(dude.origin, object.origin) > maxdist) {
            continue;
        }
        return dude;
    }
    return undefined;
}

// Namespace battlechatter/battlechatter
// Params 2, eflags: 0x2 linked
// Checksum 0x61bd141f, Offset: 0x2e40
// Size: 0x54
function function_2ab9360b(b_allow, str_category = "bc") {
    assert(isdefined(b_allow), "<unknown string>");
    self.allowbattlechatter[str_category] = b_allow;
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0xdad1d065, Offset: 0x2ea0
// Size: 0x78
function function_d85f6f61() {
    self endon(#"death", #"disconnect");
    while (true) {
        self playsoundontag("aml_dog_bark", "tag_eye");
        wait(randomfloatrange(1, 3.5));
    }
}

// Namespace battlechatter/battlechatter
// Params 0, eflags: 0x2 linked
// Checksum 0x6a6e9d19, Offset: 0x2f20
// Size: 0x44
function function_124ccedf() {
    self waittill(#"death");
    if (isdefined(self)) {
        self playsound(#"hash_4c37db042a332449");
    }
}

