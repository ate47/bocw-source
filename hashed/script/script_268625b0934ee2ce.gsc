// Atian COD Tools GSC CW decompiler test
#using script_1883fa4e60abbf9f;
#using script_42e8ee8721f5e6ef;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\util_shared.gsc;

#namespace player;

// Namespace player/player
// Params 2, eflags: 0x0
// Checksum 0xd4f6b558, Offset: 0x1f8
// Size: 0x14
function function_aec6058a(*ent, *vol) {
    
}

#namespace namespace_7a865494;

// Namespace namespace_7a865494/player
// Params 2, eflags: 0x0
// Checksum 0x5a68c9e4, Offset: 0x218
// Size: 0x506
function function_3c5d1e97(enabled, var_6d949755) {
    self notify(#"hash_5a910e5ce1ac3843");
    if (!isdefined(enabled)) {
        enabled = 1;
    }
    if (!enabled) {
        return;
    }
    self endoncallback(&function_19d52da4, #"hash_5a910e5ce1ac3843", #"disconnect");
    /#
        assert(isplayer(self));
    #/
    while (!isdefined(self.stealth)) {
        wait(1);
    }
    callback::on_ai_killed(&function_3a7a5076);
    function_ae930bb0();
    /#
        self thread function_1e099116();
    #/
    if (!isdefined(self.stealth.var_3d105d55)) {
        self.stealth.var_3d105d55 = [];
    }
    self childthread function_9ffb7e50();
    if (is_true(var_6d949755)) {
        self childthread function_3b54da5f(1);
    }
    var_8652fcd1 = function_21d2aa1e();
    while (1) {
        level flag::wait_till("stealth_enabled");
        level flag::wait_till_clear("stealth_spotted");
        bestdot = -1;
        var_17280c7c = undefined;
        if (self playerads() > level.stealth.noteworthy.var_bd548979) {
            eye = self getplayercamerapos();
            var_a74a4e75 = anglestoforward(self getplayerangles());
            targets = function_b23bcd6d(self.origin, 20000, "axis", level.stealth.noteworthy.var_b81b734c, level.stealth.noteworthy.var_21dd1e31);
            foreach (var_acbf85fc in targets) {
                entnum = var_acbf85fc getentitynumber();
                if (isdefined(self.stealth.var_3d105d55[entnum])) {
                    continue;
                }
                var_dfc74aa8 = var_acbf85fc function_55b0a099();
                dir = vectornormalize(var_dfc74aa8 - eye);
                dot = vectordot(var_a74a4e75, dir);
                if (dot > level.stealth.noteworthy.var_db75baf5 && dot > bestdot) {
                    if (sighttracepassed(var_dfc74aa8, eye, 0, self)) {
                        bestdot = dot;
                        var_17280c7c = var_acbf85fc;
                    }
                }
            }
            if (isdefined(var_17280c7c)) {
                self thread function_bb5769fe("aim", var_17280c7c);
            }
            foreach (entnum, ent in self.stealth.var_3d105d55) {
                if (!isdefined(self.stealth.var_3d105d55[entnum])) {
                    self.stealth.var_3d105d55[entnum] = undefined;
                }
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_7a865494/player
// Params 1, eflags: 0x6 linked
// Checksum 0x64a9f84, Offset: 0x728
// Size: 0x2c
function private function_19d52da4(*var_352058a) {
    callback::remove_on_ai_killed(&function_3a7a5076);
}

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x6 linked
// Checksum 0xb938374a, Offset: 0x760
// Size: 0x33a
function private function_ae930bb0() {
    if (isdefined(level.stealth.noteworthy)) {
        return;
    }
    /#
        function_5ac4dc99("<unknown string>", 0);
    #/
    level.stealth.noteworthy = spawnstruct();
    level.stealth.noteworthy.var_d44d8df8 = &function_6fc2f529;
    level.stealth.noteworthy.var_bd548979 = 0.3;
    level.stealth.noteworthy.var_db75baf5 = 0.99;
    level.stealth.noteworthy.var_fc9c0374 = 0.25;
    level.stealth.noteworthy.var_2a8b18f9 = 0.5;
    level.stealth.noteworthy.var_a436a870 = [];
    level.stealth.noteworthy.var_a436a870[#"left"] = 1;
    level.stealth.noteworthy.var_a436a870[#"right"] = 1;
    level.stealth.noteworthy.var_a436a870[#"ahead"] = 0;
    level.stealth.noteworthy.var_a436a870[#"behind"] = 1;
    level.stealth.noteworthy.var_a436a870[#"below"] = 1;
    level.stealth.noteworthy.var_21dd1e31 = 1;
    level.stealth.noteworthy.var_f4ee87c1 = 0;
    level.stealth.noteworthy.var_b81b734c = 1;
    level.stealth.noteworthy.var_585beac6 = 1;
    level.stealth.noteworthy.var_4281ec08 = 60000;
    level.stealth.noteworthy.var_7c30eb70 = 15000;
    level.stealth.noteworthy.var_8977757d = 800;
    level.stealth.noteworthy.var_a2ea2822 = 0;
    level.stealth.noteworthy.var_a588b4f5 = 100;
    level.stealth.noteworthy.var_e6f81ae0 = undefined;
    level.stealth.noteworthy.var_1d886259 = 0;
    level.stealth.noteworthy.var_64b5ca93 = 0;
}

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x6 linked
// Checksum 0x303f37ee, Offset: 0xaa8
// Size: 0x340
function private function_9ffb7e50() {
    /#
        assert(isplayer(self));
    #/
    var_a57f6402 = 0;
    kills = undefined;
    while (1) {
        kills = self.stats[#"kills"];
        if (!isdefined(kills)) {
            kills = 0;
        }
        var_9be355ac = kills;
        lastkilltime = gettime();
        level flag::wait_till("stealth_enabled");
        level flag::wait_till_clear("stealth_spotted");
        var_7f729179 = undefined;
        var_7f729179 = level waittill(#"ai_killed");
        victim = var_7f729179.evictim;
        attacker = var_7f729179.eattacker;
        meansofdeath = var_7f729179.smeansofdeath;
        weapon = var_7f729179.weapon;
        if (isdefined(attacker) && attacker != self) {
            continue;
        }
        if (!level flag::get("stealth_enabled") || level flag::get("stealth_spotted")) {
            continue;
        }
        if (isdefined(victim) && isdefined(victim.team) && victim.team != "axis") {
            self thread function_bb5769fe("civilian_kill", victim);
        }
        kills = self.stats[#"kills"];
        if (!isdefined(kills)) {
            kills = 1;
        }
        var_7cc7f71e = kills - var_9be355ac;
        if (gettime() - lastkilltime > 1000) {
            var_a57f6402 = 0;
        }
        isbullet = isdefined(weapon) && weapon.isbulletweapon;
        if (var_7cc7f71e >= 2 && isbullet) {
            self thread function_bb5769fe("good_kill_double", victim, 1);
        }
        var_a57f6402 = var_a57f6402 + var_7cc7f71e;
        if (var_a57f6402 > 1) {
            self thread function_bb5769fe("good_kill_impressive", victim, 1);
        } else if (isbullet) {
            self thread function_bb5769fe("good_kill_bullet", victim, 1);
        } else {
            self thread function_bb5769fe("good_kill", victim, 1);
        }
    }
}

// Namespace namespace_7a865494/player
// Params 1, eflags: 0x6 linked
// Checksum 0x89c8998a, Offset: 0xdf0
// Size: 0x30
function private function_3a7a5076(var_854423c5) {
    var_854423c5.evictim = self;
    level notify(#"ai_killed", var_854423c5);
}

// Namespace namespace_7a865494/player
// Params 4, eflags: 0x6 linked
// Checksum 0x2261ead0, Offset: 0xe28
// Size: 0x5d6
function private function_bb5769fe(eventname, target, var_78a2f9b6, delay) {
    targets = undefined;
    entnum = undefined;
    if (isarray(target)) {
        targets = target;
    } else {
        entnum = target getentitynumber();
        targets = [];
        targets[entnum] = target;
    }
    if (isdefined(self.stealth.var_26703f4a)) {
        if ([[ level.stealth.noteworthy.var_d44d8df8 ]](self.stealth.var_26703f4a) > [[ level.stealth.noteworthy.var_d44d8df8 ]](eventname)) {
            return;
        }
        if (eventname == "aim") {
            if (isdefined(self.stealth.var_999115c7[entnum])) {
                return;
            }
            self.stealth.var_999115c7 = targets;
        } else if (self.stealth.var_26703f4a == eventname) {
            self.stealth.var_999115c7[entnum] = target;
        } else {
            self.stealth.var_999115c7 = targets;
        }
    } else {
        self.stealth.var_26703f4a = eventname;
        self.stealth.var_999115c7 = targets;
    }
    self notify(#"hash_681faa61584bb5fb");
    self endon(#"hash_681faa61584bb5fb");
    self endon(#"disconnect");
    if (is_true(var_78a2f9b6) && isdefined(self.stealth.var_96052c58)) {
        self.stealth.var_6cfbc212 = self.stealth.var_96052c58;
    }
    if (!isdefined(delay)) {
        delay = randomfloatrange(level.stealth.noteworthy.var_fc9c0374, level.stealth.noteworthy.var_2a8b18f9);
    }
    if (delay > 0) {
        wait(delay);
    }
    function_1eaaceab(self.stealth.var_999115c7);
    if (is_true(var_78a2f9b6) && isdefined(self.stealth.var_96052c58) && self.stealth.var_6cfbc212 < self.stealth.var_96052c58) {
        self.stealth.var_26703f4a = undefined;
        self.stealth.var_999115c7 = undefined;
        return;
    }
    if (eventname == "aim") {
        eye = self getplayercamerapos();
        var_a74a4e75 = anglestoforward(self getplayerangles());
        var_8652fcd1 = function_21d2aa1e();
        foreach (ent in self.stealth.var_999115c7) {
            var_dfc74aa8 = ent function_55b0a099();
            dir = vectornormalize(var_dfc74aa8 - eye);
            dot = vectordot(var_a74a4e75, dir);
            if (dot < level.stealth.noteworthy.var_db75baf5 || !sighttracepassed(var_dfc74aa8, eye, 0, self)) {
                self.stealth.var_26703f4a = undefined;
                self.stealth.var_999115c7 = undefined;
                return;
            }
        }
        foreach (target in self.stealth.var_999115c7) {
            self.stealth.var_3d105d55[target getentitynumber()] = target;
        }
    }
    self notify("stealth_noteworthy", {#targets:self.stealth.var_999115c7, #event:eventname});
    self.stealth.var_26703f4a = undefined;
    self.stealth.var_999115c7 = undefined;
}

// Namespace namespace_7a865494/player
// Params 1, eflags: 0x6 linked
// Checksum 0x9c984061, Offset: 0x1408
// Size: 0x10c
function private function_6fc2f529(eventname) {
    if (!isdefined(eventname)) {
        return -1;
    }
    switch (eventname) {
    case #"civilian_kill":
        return 70;
    case #"good_kill_double":
        return 60;
    case #"good_kill_impressive":
        return 50;
    case #"good_kill_bullet":
        return 40;
    case #"good_kill":
        return 30;
    case #"aim":
        return 20;
    case #"hash_a82fa1391355735":
    case #"hash_32b3037d0c7237a1":
    case #"hash_41c5f724238aa06e":
    case #"hash_5f71ade4df457495":
    case #"hash_66e5f6a038177fe8":
        return 10;
        break;
    }
    return 0;
}

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x4
// Checksum 0x3959c489, Offset: 0x1520
// Size: 0x174
function private function_1e099116() {
    /#
        while (1) {
            var_7f729179 = undefined;
            var_7f729179 = getplayers()[0] waittill("<unknown string>");
            eventname = var_7f729179.event;
            var_e6eef508 = var_7f729179.targets;
            if (getdvarint(#"hash_3ca672bc9412d156")) {
                foreach (var_65b3dce8 in var_e6eef508) {
                    if (isdefined(var_65b3dce8)) {
                        iprintln("<unknown string>" + eventname + "<unknown string>" + var_65b3dce8 getentitynumber());
                    } else {
                        iprintln("<unknown string>" + eventname + "<unknown string>");
                    }
                }
            }
        }
    #/
}

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x16a0
// Size: 0x4
function private function_21d2aa1e() {
    
}

// Namespace namespace_7a865494/player
// Params 5, eflags: 0x6 linked
// Checksum 0xebada70b, Offset: 0x16b0
// Size: 0x1ae
function private function_b23bcd6d(origin, radius, team = "axis", civilians, var_13e88db5) {
    if (is_true(civilians)) {
        entities = function_e45cbe76(origin, radius, team, "neutral");
    } else {
        entities = function_e45cbe76(origin, radius, team);
    }
    function_1eaaceab(entities);
    if (is_true(var_13e88db5)) {
        var_33ed2ca8 = [];
        foreach (var_2b0a1046 in var_33ed2ca8) {
            if (isdefined(var_2b0a1046.team) && (var_2b0a1046.team == team || is_true(civilians) && var_2b0a1046.team == "neutral")) {
                entities[entities.size] = var_2b0a1046;
            }
        }
    }
    return entities;
}

// Namespace namespace_7a865494/player
// Params 1, eflags: 0x2 linked
// Checksum 0x266d3ce, Offset: 0x1868
// Size: 0x8c0
function function_3b54da5f(enabled) {
    self notify(#"hash_7c0feaab4085921a");
    self endon(#"hash_7c0feaab4085921a");
    if (!is_true(enabled)) {
        return;
    }
    level.stealth.noteworthy.var_503e6ce5 = 0;
    while (1) {
        wait(0.5);
        level flag::wait_till("stealth_enabled");
        if (!level.stealth.noteworthy.var_64b5ca93) {
            level flag::wait_till_clear("stealth_spotted");
        }
        entities = function_b23bcd6d(self.origin, level.stealth.noteworthy.var_8977757d, undefined, level.stealth.noteworthy.var_585beac6, level.stealth.noteworthy.var_f4ee87c1);
        var_6d949755 = function_143c4599();
        var_2f138f98 = self getplayercamerapos();
        foreach (ent in entities) {
            if (!isdefined(ent.stealth)) {
                continue;
            }
            if (is_true(ent.stealth.var_ec2b183c)) {
                continue;
            }
            if (isdefined(ent.stealth.var_503e6ce5) && gettime() < ent.stealth.var_503e6ce5) {
                continue;
            }
            if (isdefined(level.stealth.noteworthy.var_e6f81ae0) && !self [[ level.stealth.noteworthy.var_e6f81ae0 ]](ent)) {
                continue;
            }
            var_b7f614b4 = distancesquared(self.origin, ent.origin) > level.stealth.noteworthy.var_a2ea2822 * level.stealth.noteworthy.var_a2ea2822;
            if (var_b7f614b4 && !function_707a2560(ent function_55b0a099(), var_2f138f98, ent)) {
                continue;
            }
            if (self function_1aaf5c2d(ent, var_b7f614b4)) {
                ent.stealth.var_503e6ce5 = gettime() + level.stealth.noteworthy.var_4281ec08;
            } else {
                if (gettime() < level.stealth.noteworthy.var_503e6ce5) {
                    continue;
                }
                type = self function_680e04ab(ent);
                if (isdefined(type)) {
                    entnum = ent getentitynumber();
                    if (is_true(level.stealth.noteworthy.var_dc4f5164)) {
                        foreach (var_edce0829 in var_6d949755.results[#"all"]) {
                            if (var_edce0829.team != ent.team && var_edce0829.team == "neutral") {
                                var_6d949755 = function_143c4599();
                            }
                            break;
                        }
                    }
                    var_6d949755.results[#"all"][entnum] = ent;
                    dist_sq = distancesquared(self.origin, ent.origin);
                    if (dist_sq < var_6d949755.var_62575984) {
                        var_6d949755.var_62575984 = dist_sq;
                        var_6d949755.var_281be7dc = type;
                    }
                    var_6d949755.results[type][entnum] = ent;
                }
            }
        }
        if (isdefined(var_6d949755.var_281be7dc)) {
            type = var_6d949755.var_281be7dc;
            foreach (ent in var_6d949755.results[type]) {
                ent.stealth.var_503e6ce5 = gettime() + level.stealth.noteworthy.var_4281ec08;
            }
            level.stealth.noteworthy.var_503e6ce5 = gettime() + level.stealth.noteworthy.var_7c30eb70;
            var_2a0b59fb = [];
            foreach (ent in var_6d949755.results[type]) {
                var_d853ee3f = function_b23bcd6d(ent.origin, level.stealth.noteworthy.var_a588b4f5, ent.team, 0, level.stealth.noteworthy.var_f4ee87c1);
                foreach (var_b07265a2 in var_d853ee3f) {
                    var_2a0b59fb[var_b07265a2 getentitynumber()] = var_b07265a2;
                    var_b07265a2.stealth.var_503e6ce5 = gettime() + level.stealth.noteworthy.var_4281ec08;
                }
            }
            foreach (ent in var_2a0b59fb) {
                var_6d949755.results[type][ent getentitynumber()] = ent;
            }
            self function_bb5769fe("callout_" + type, var_6d949755.results[type], undefined, 0);
        }
    }
}

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x6 linked
// Checksum 0xb4cf1570, Offset: 0x2130
// Size: 0xd6
function private function_143c4599() {
    var_6d949755 = spawnstruct();
    var_6d949755.results[#"left"] = [];
    var_6d949755.results[#"right"] = [];
    var_6d949755.results[#"ahead"] = [];
    var_6d949755.results[#"behind"] = [];
    var_6d949755.results[#"below"] = [];
    var_6d949755.results[#"all"] = [];
    var_6d949755.var_281be7dc = undefined;
    var_6d949755.var_62575984 = function_a3f6cdac(20000);
    return var_6d949755;
}

// Namespace namespace_7a865494/player
// Params 1, eflags: 0x6 linked
// Checksum 0xe7c418f3, Offset: 0x2210
// Size: 0x1f2
function private function_680e04ab(ent) {
    type = undefined;
    var_bae3b774 = anglestoforward(self.angles);
    var_77a0ea82 = vectorcross(var_bae3b774, (0, 0, 1));
    dir = vectornormalize(ent.origin - self.origin);
    var_35a5aae = vectordot(var_bae3b774, dir);
    if (var_35a5aae > 0.7) {
        type = "ahead";
    } else if (var_35a5aae < -0.6) {
        type = "behind";
    } else {
        height = ent.origin[2] - self.origin[2];
        if (var_35a5aae > 0 && height < -100) {
            type = "below";
        } else {
            dot_right = vectordot(var_77a0ea82, dir);
            if (dot_right < -0.7) {
                type = "left";
            } else if (dot_right > 0.7) {
                type = "right";
            }
        }
    }
    if (isdefined(type) && !is_true(level.stealth.noteworthy.var_a436a870[type])) {
        return undefined;
    }
    return type;
}

// Namespace namespace_7a865494/player
// Params 2, eflags: 0x6 linked
// Checksum 0xc95905b0, Offset: 0x2410
// Size: 0xf8
function private function_1aaf5c2d(other, var_5958f865) {
    if (!util::within_fov(self.origin, self.angles, other.origin, 0.7)) {
        return 0;
    }
    eye = self geteye();
    if (isplayer(self)) {
        eye = self getplayercamerapos();
    }
    if (function_707a2560(eye, other.origin, other)) {
        return 1;
    }
    if (var_5958f865 || function_707a2560(eye, other function_55b0a099(), other)) {
        return 1;
    }
    return 0;
}

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x6 linked
// Checksum 0x6ce671d2, Offset: 0x2510
// Size: 0x8a
function private function_55b0a099() {
    eye = self.origin + vectorscale((0, 0, 1), 50);
    if (isplayer(self)) {
        eye = self getplayercamerapos();
    } else if (issentient(self)) {
        eye = self geteye();
    }
    return eye;
}

// Namespace namespace_7a865494/player
// Params 3, eflags: 0x6 linked
// Checksum 0x7aefa0d8, Offset: 0x25a8
// Size: 0x9a
function private function_707a2560(start, end, ignore_ent) {
    level.stealth.noteworthy.var_1d886259++;
    if (level.stealth.noteworthy.var_1d886259 > 3) {
        waitframe(1);
        level.stealth.noteworthy.var_1d886259 = 1;
    }
    return sighttracepassed(start, end, 0, self, ignore_ent);
}

// Namespace namespace_7a865494/player
// Params 4, eflags: 0x2 linked
// Checksum 0x768763e4, Offset: 0x2650
// Size: 0x27a
function function_3e0fb8b7(var_bfd9f922, var_ececce87, var_d572c578, var_4fb611ad) {
    /#
        assert(isplayer(self));
    #/
    self notify(#"hash_55784a87cc9f57ae");
    self endon(#"hash_55784a87cc9f57ae", #"disconnect");
    if (!isdefined(var_bfd9f922)) {
        var_bfd9f922 = 10;
    }
    if (!isdefined(var_ececce87)) {
        var_ececce87 = 15;
    }
    if (!isdefined(var_d572c578)) {
        var_d572c578 = 20;
    }
    if (!isdefined(var_4fb611ad)) {
        var_4fb611ad = 40;
    }
    level.stealth.var_d162b8a6 = [];
    while (1) {
        if (!isalive(self)) {
            waitframe(1);
            continue;
        }
        self flag::wait_till("stealth_enabled");
        if (level.stealth.var_d162b8a6.size == 0) {
            wait(1);
        } else {
            wait(randomfloatrange(var_bfd9f922, var_ececce87));
        }
        if (level flag::get("stealth_spotted")) {
            continue;
        }
        level.stealth.var_d162b8a6 = self function_561c2127(0, 1);
        if (level.stealth.var_d162b8a6.size > 0) {
            speaker = level.stealth.var_d162b8a6[0];
            type = "idle";
            if (isdefined(speaker.var_29203a97) && speaker.var_29203a97 == "alert") {
                type = "idle_alert";
            }
            speaker thread namespace_979752dc::function_fc882f9f("stealth", type);
            speaker.stealth.var_ab2bf9b9 = gettime() + randomfloatrange(var_d572c578, var_4fb611ad) * 1000;
        }
    }
}

// Namespace namespace_7a865494/player
// Params 2, eflags: 0x6 linked
// Checksum 0xa8fbd5b7, Offset: 0x28d8
// Size: 0x362
function private function_561c2127(var_af882d4b, var_b5e49a23) {
    maxdist = 1000;
    candidates = [];
    if (!var_af882d4b && !var_b5e49a23) {
        return candidates;
    }
    if (var_af882d4b && !var_b5e49a23 && !namespace_bec1e8ca::exists("stealth", "radio", "convo")) {
        return candidates;
    }
    var_349e927f = function_e45cbe76(self.origin, maxdist, "axis");
    foreach (enemy in var_349e927f) {
        if (!var_af882d4b && !isalive(enemy)) {
            continue;
        }
        if (!var_af882d4b && (!isdefined(enemy.stealth) || issentient(enemy) && enemy.alertlevel == "combat")) {
            continue;
        }
        if (issentient(enemy) && enemy.ignoreall) {
            continue;
        }
        if (issentient(enemy) && !isdefined(enemy.stealth)) {
            continue;
        }
        if (enemy isinscriptedstate()) {
            continue;
        }
        if (isdefined(enemy.var_c6018f4) && !is_true(enemy [[ enemy.var_c6018f4 ]]())) {
            continue;
        }
        if (enemy.species == "dog") {
            continue;
        }
        if (isdefined(enemy.stealth)) {
            if (isdefined(enemy.stealth.var_ab2bf9b9) && gettime() < enemy.stealth.var_ab2bf9b9) {
                continue;
            }
            if (isdefined(enemy.stealth.var_d5484846) && gettime() - enemy.stealth.var_d5484846 < 10000) {
                continue;
            }
            jumpiffalse(isdefined(enemy.stealth.var_fc47e73b) && gettime() - enemy.stealth.var_fc47e73b < 10000) LOC_00000322;
        } else {
        LOC_00000322:
            candidates[candidates.size] = enemy;
        }
    }
    candidates = arraysortclosest(candidates, self.origin);
    return candidates;
}

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x2 linked
// Checksum 0xf4f740f6, Offset: 0x2c48
// Size: 0x16
function function_1a351a0c() {
    self notify(#"hash_55784a87cc9f57ae");
}

