// Atian COD Tools GSC CW decompiler test
#using script_3dc93ca9902a9cda;
#using script_21cbc79d1d70402;
#using script_1883fa4e60abbf9f;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;

#namespace namespace_214c1803;

// Namespace namespace_214c1803/namespace_214c1803
// Params 2, eflags: 0x0
// Checksum 0xb928678a, Offset: 0x288
// Size: 0x14
function function_aec6058a(*ent, *vol) {
    
}

#namespace namespace_6c0cd084;

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 0, eflags: 0x5
// Checksum 0xac5e67f4, Offset: 0x2a8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_299575137124db03", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 0, eflags: 0x6 linked
// Checksum 0x5d5d77b4, Offset: 0x2f0
// Size: 0x1b4
function private function_70a657d8() {
    register_clientfields();
    level.var_53ad6e22 = [];
    util::init_dvar("ai_threatForcedRate", 0.4, &function_4c75a19);
    util::init_dvar("ai_threatForcedMax", 0.5, &function_4c75a19);
    util::init_dvar("ai_threatsight", 0, &function_4c75a19);
    util::init_dvar("ai_threatForcedRate", 0, &function_4c75a19);
    util::init_dvar("ai_threatsightFakeThreat", 0, &function_4c75a19);
    util::init_dvar("ai_threatsightFakeX", 0, &function_4c75a19);
    util::init_dvar("ai_threatsightFakeY", 0, &function_4c75a19);
    util::init_dvar("ai_threatsightFakeZ", 0, &function_4c75a19);
    util::init_dvar("ai_threatUseDisplay", 0, &function_4c75a19);
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 0, eflags: 0x6 linked
// Checksum 0x4d9bbd5b, Offset: 0x4b0
// Size: 0x64
function private register_clientfields() {
    clientfield::register("actor", "threat_sight", 1, 6, "int");
    clientfield::register("actor", "threat_state", 1, 2, "int");
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x6 linked
// Checksum 0x39c816ed, Offset: 0x520
// Size: 0x28
function private function_4c75a19(dvar) {
    level.var_53ad6e22[dvar.name] = dvar.value;
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x2 linked
// Checksum 0x458ef145, Offset: 0x550
// Size: 0x260
function function_bcf622ce(enabled) {
    /#
        assert(isdefined(level.stealth));
    #/
    wasenabled = isdefined(level.stealth.var_c08727b4) && level.stealth.var_c08727b4;
    level.stealth.var_c08727b4 = enabled;
    function_c5861edc(enabled);
    if (!enabled && wasenabled) {
        level notify(#"hash_34d443ce908d0498");
        foreach (player in getplayers()) {
            player.stealth.var_ffd732c4 = undefined;
        }
    } else if (enabled && !wasenabled) {
        level notify(#"hash_47d94a76d1448431");
    }
    var_b1d2e312 = getactorarray();
    foreach (guy in var_b1d2e312) {
        if (isalive(guy) && isdefined(guy.stealth) && isdefined(guy.stealth.var_68585806)) {
            guy function_13bd3fad(guy.stealth.var_68585806);
        }
    }
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x2 linked
// Checksum 0xdf73ddd, Offset: 0x7b8
// Size: 0x84
function function_c5861edc(enabled) {
    if (enabled && (!isdefined(level.stealth.var_c08727b4) || !level.stealth.var_c08727b4)) {
        return;
    }
    setsaveddvar(#"ai_threatsight", enabled);
    level thread function_9db9ee76(enabled);
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x2 linked
// Checksum 0x69f4194b, Offset: 0x848
// Size: 0x9c
function function_9db9ee76(enabled) {
    self notify(#"hash_628f0cf53414135d");
    self endon(#"hash_628f0cf53414135d");
    if (!enabled) {
        wait(1);
    }
    if (level.var_53ad6e22[#"hash_58c18472bda63bb3"]) {
        setsaveddvar(#"hash_7bf40e4b6a830d11", enabled);
    }
    setdvar(#"hash_28758912434b7866", enabled);
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 0, eflags: 0x0
// Checksum 0xeb2567d, Offset: 0x8f0
// Size: 0x74
function function_c08727b4() {
    if (!level.var_53ad6e22[#"ai_threatsight"]) {
        return 0;
    }
    if (self == level) {
        return (isdefined(level.stealth.var_c08727b4) && level.stealth.var_c08727b4);
    }
    return isdefined(self.var_eba34d84) && self.var_eba34d84;
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x2 linked
// Checksum 0x784a2cb4, Offset: 0x970
// Size: 0x2f4
function function_13bd3fad(statename) {
    if (isdefined(self.stealth)) {
        self.stealth.var_68585806 = statename;
    }
    if (!isdefined(level.stealth.var_c08727b4) || !level.stealth.var_c08727b4) {
        if (!is_true(self.var_36e0162b)) {
            self thread function_36e0162b();
            self.var_36e0162b = 1;
        }
        return;
    } else if (is_true(self.var_36e0162b)) {
        self notify(#"hash_1157f959aee315da");
        self.var_36e0162b = undefined;
    }
    switch (statename) {
    case #"hidden":
        self.var_eba34d84 = 1;
        self.stealth.var_683a9557 = undefined;
        self.stealth.var_2e86232e = undefined;
        break;
    case #"investigate":
        self.var_eba34d84 = 1;
        break;
    case #"hash_5689f41e8c0ad00":
    case #"combat_hunt":
        self.var_eba34d84 = 1;
        break;
    case #"blind":
        break;
    case #"hash_67ac95dafb7278ea":
        self.var_eba34d84 = 0;
        break;
    case #"death":
        self.var_eba34d84 = 0;
        break;
    case #"hash_defdefdefdefdef0":
        /#
            iprintlnbold("<unknown string>" + statename + "<unknown string>");
        #/
        break;
    }
    foreach (player in getplayers()) {
        if (isdefined(player)) {
            player function_6f46c787(self, statename);
        }
    }
    if (statename != "death") {
        self function_3c3f1684(statename);
    }
    if (self.var_eba34d84) {
        self thread function_3a739b35();
    }
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x2 linked
// Checksum 0x64cbc1d, Offset: 0xc70
// Size: 0x70
function function_3c3f1684(statename) {
    /#
        assert(isdefined(level.stealth));
    #/
    /#
        assert(isdefined(level.stealth.var_f9afefcc));
    #/
    self [[ level.stealth.var_f9afefcc ]](statename);
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x6 linked
// Checksum 0xca02aaee, Offset: 0xce8
// Size: 0x4c
function private function_eefd0bb3(*str_notify) {
    self clientfield::set("threat_sight", 0);
    self clientfield::set("threat_state", 0);
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 0, eflags: 0x2 linked
// Checksum 0x2a6edcbc, Offset: 0xd40
// Size: 0x16
function function_60514e0b() {
    self notify(#"hash_247b691774e7a2e2");
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 0, eflags: 0x6 linked
// Checksum 0x9b7b8cde, Offset: 0xd60
// Size: 0x388
function private function_3a739b35() {
    self notify(#"hash_3b836f1c1e601c4d");
    self endoncallback(&function_eefd0bb3, #"hash_3b836f1c1e601c4d", #"hash_247b691774e7a2e2", #"death");
    var_403d799 = 0;
    while (1) {
        waitframe(1);
        if (!self namespace_979752dc::function_b60a878a()) {
            self clientfield::set("threat_sight", 0);
            self clientfield::set("threat_state", 0);
        } else if (level flag::get("stealth_spotted") && level flag::get("stealth_meter_combat_alerted")) {
            self clientfield::set("threat_sight", 0);
            self clientfield::set("threat_state", 0);
        } else if (getplayers().size > 0) {
            player = getplayers()[0];
            var_214c1803 = self function_a884a736(player);
            var_97c4563c = 0;
            if (self.awarenesslevelcurrent === "combat") {
                var_97c4563c = 3;
                level flag::set("stealth_meter_combat_alerted");
            } else if (self.stealth.var_abf79234 === 2) {
                var_97c4563c = 2;
            } else if (self.awarenesslevelcurrent !== "unaware") {
                if (self namespace_979752dc::function_d58e1c1c() && self.awarenesslevelcurrent == "high_alert" && var_214c1803 > 0) {
                    var_214c1803 = 1;
                }
                if (var_214c1803 >= 1) {
                    var_97c4563c = 1;
                }
            }
            var_91b6ad45 = int(var_214c1803 * ((1 << 6) - 1));
            if ((var_97c4563c == 1 || var_97c4563c == 2) && var_91b6ad45 == 0) {
                var_403d799 = var_403d799 + float(function_60d95f53()) / 1000;
                if (var_403d799 > 1) {
                    var_97c4563c = 0;
                }
            } else {
                var_403d799 = 0;
            }
            self clientfield::set("threat_sight", var_91b6ad45);
            self clientfield::set("threat_state", var_97c4563c);
        }
    }
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 0, eflags: 0x2 linked
// Checksum 0x3ae3e0a8, Offset: 0x10f0
// Size: 0x194
function function_36e0162b() {
    self notify(#"hash_1157f959aee315da");
    self endon(#"hash_1157f959aee315da", #"death");
    level endon(#"hash_47d94a76d1448431");
    while (1) {
        level flag::wait_till("stealth_enabled");
        level flag::wait_till_clear("stealth_spotted");
        wait(randomfloatrange(0.4, 0.6));
        foreach (player in getplayers()) {
            if (isdefined(player.var_c6f40bba)) {
                continue;
            }
            if (player.ignoreme) {
                continue;
            }
            if (self cansee(player)) {
                self function_a3fcf9e0("sight", player, player.origin);
            }
        }
    }
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 0, eflags: 0x2 linked
// Checksum 0x39073e42, Offset: 0x1290
// Size: 0xa2
function function_a7d5995f() {
    if (!isdefined(self.stealth.var_2818e780)) {
        self.stealth.var_2818e780 = [];
    }
    if (!isdefined(self.stealth.var_bb1e2d94)) {
        self.stealth.var_bb1e2d94 = 0;
    }
    if (!isdefined(self.stealth.var_3a48cc02)) {
        self.stealth.var_3a48cc02 = 0;
    }
    if (!isdefined(self.stealth.var_a4965d8)) {
        self.stealth.var_a4965d8 = [];
    }
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 2, eflags: 0x2 linked
// Checksum 0x6ce293f1, Offset: 0x1340
// Size: 0x1dc
function function_6f46c787(ai, statename) {
    if (!isdefined(self.stealth)) {
        self thread namespace_7a865494::main();
    }
    self function_a7d5995f();
    entid = ai getentitynumber();
    switch (statename) {
    case #"hidden":
        self.stealth.var_a4965d8[entid] = undefined;
        break;
    case #"combat_hunt":
        ai function_8f5de442(self, 0);
        break;
    case #"investigate":
        break;
    case #"death":
        ai function_8f5de442(self, 0);
        break;
    }
    switch (statename) {
    case #"death":
        self.stealth.var_2818e780[entid] = undefined;
        self.stealth.var_a4965d8[entid] = undefined;
        break;
    case #"hash_defdefdefdefdef0":
        self.stealth.var_2818e780[entid] = ai;
        break;
    }
    if (!isdefined(self.stealth.var_ffd732c4)) {
        self.stealth.var_ffd732c4 = 1;
        self thread function_40733f9f();
    }
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 0, eflags: 0x2 linked
// Checksum 0x938a11eb, Offset: 0x1528
// Size: 0x22
function function_36a6a90() {
    return is_true(self.stealth.var_56d82ea8);
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x2 linked
// Checksum 0x8b8422fa, Offset: 0x1558
// Size: 0x84
function function_79fc894b(player) {
    if (self namespace_979752dc::function_a54113fb()) {
        snd::play("uin_stealth_alert", [1:"j_head", 0:self]);
    }
    self.stealth.var_56d82ea8 = 1;
    self function_5d0af9db(player);
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x2 linked
// Checksum 0x1fc797b6, Offset: 0x15e8
// Size: 0x74
function function_ee9635fa(player) {
    if (self namespace_979752dc::function_a54113fb()) {
        snd::play("uin_stealth_grace", [1:"j_head", 0:self]);
    }
    self function_5d0af9db(player);
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x2 linked
// Checksum 0xa0e0fd83, Offset: 0x1668
// Size: 0x74
function function_740f4859(player) {
    if (self namespace_979752dc::function_a54113fb()) {
        snd::play("uin_stealth_spotted", [1:"j_head", 0:self]);
    }
    self function_5d0af9db(player);
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x2 linked
// Checksum 0x4ded63a0, Offset: 0x16e8
// Size: 0x2ec
function function_5d0af9db(player) {
    self endon(#"death", #"hash_32b0a9d6ca03306f");
    player endon(#"death");
    /#
        assert(isdefined(player.stealth));
    #/
    /#
        assert(isdefined(player.stealth.var_a4965d8));
    #/
    entid = self getentitynumber();
    if (self [[ self.var_678afc31 ]]()) {
        self getenemyinfo(player);
        self function_a3fcf9e0("combat", player, player.origin);
        return;
    }
    player.stealth.var_a4965d8[entid] = self;
    self function_a3fcf9e0("sight", player, player.origin);
    if (!isdefined(self.stealth.var_683a9557)) {
        self.stealth.var_683a9557 = 0;
    } else {
        self.stealth.var_683a9557++;
    }
    waittime = self namespace_979752dc::function_7b651d3b(player);
    waittime = waittime / pow(2, self.stealth.var_683a9557);
    waittime = waittime * 1000;
    curtime = gettime();
    self.stealth.var_6f0ffbf8 = curtime + waittime;
    starttime = curtime;
    var_6f0ffbf8 = curtime + waittime;
    while (gettime() < var_6f0ffbf8) {
        if (is_true(self.stealth.blind) || !isdefined(self.stealth.var_683a9557)) {
            break;
        }
        waittime = self namespace_979752dc::function_7b651d3b(player);
        waittime = waittime / pow(2, self.stealth.var_683a9557);
        waittime = waittime * 1000;
        if (starttime + waittime < var_6f0ffbf8) {
            var_6f0ffbf8 = starttime + waittime;
        }
        waitframe(1);
    }
    self thread function_904262d0(player);
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x2 linked
// Checksum 0xd4c14815, Offset: 0x19e0
// Size: 0xfc
function function_904262d0(player) {
    var_4897dbc7 = player getentitynumber();
    self notify("threat_sight_sighted_wait_lost_" + var_4897dbc7);
    self endon("threat_sight_sighted_wait_lost_" + var_4897dbc7, #"death");
    player endon(#"death");
    entid = self getentitynumber();
    player.stealth.var_a4965d8[entid] = undefined;
    while (1) {
        self.stealth.var_2e86232e = self function_a884a736(player) < 0.75;
        if (self.stealth.var_2e86232e) {
            return;
        }
        wait(0.05);
    }
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 2, eflags: 0x2 linked
// Checksum 0x68c8a20d, Offset: 0x1ae8
// Size: 0x174
function function_ac3ca2d7(var_4efdd43, durationseconds) {
    end = gettime() + int(1000 * durationseconds);
    entnum = var_4efdd43 getentitynumber();
    if (!isdefined(self.stealth.var_6232c5c)) {
        self.stealth.var_6232c5c = [];
    }
    if (isdefined(self.stealth.var_6232c5c[entnum])) {
        self.stealth.var_6232c5c[entnum].end = max(self.stealth.var_6232c5c[entnum].end, end);
    } else {
        self.stealth.var_6232c5c[entnum] = spawnstruct();
        self.stealth.var_6232c5c[entnum].end = end;
    }
    self.stealth.var_6232c5c[entnum].ent = var_4efdd43;
    self thread function_ca2b6f35();
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 0, eflags: 0x2 linked
// Checksum 0x4c0c10a5, Offset: 0x1c68
// Size: 0x406
function function_ca2b6f35() {
    if (is_true(self.stealth.var_5ad4258c)) {
        return;
    }
    self notify(#"hash_3a63b755931a3e23");
    self endon(#"hash_3a63b755931a3e23", #"death");
    self.stealth.var_5ad4258c = 1;
    waittime = 0.05;
    notified = 0;
    while (isdefined(self.stealth.var_6232c5c) && self.stealth.var_6232c5c.size > 0) {
        now = gettime();
        remove = [];
        delta = level.var_53ad6e22[#"hash_558c10dc4ef11317"] * waittime;
        foreach (var_ece722e0 in self.stealth.var_6232c5c) {
            if (now < var_ece722e0.end && issentient(var_ece722e0.ent) && !self cansee(var_ece722e0.ent)) {
                var_c24fdf79 = self function_a884a736(var_ece722e0.ent);
                if (isplayer(var_ece722e0.ent)) {
                    var_ece722e0.ent thread function_7f381bc5(1, max(var_ece722e0.ent.stealth.var_dee4cb7d, var_c24fdf79));
                }
                if (var_c24fdf79 + delta < level.var_53ad6e22[#"hash_5d465b52a32fbc49"]) {
                    var_c24fdf79 = var_c24fdf79 + delta;
                    self function_8f5de442(var_ece722e0.ent, var_c24fdf79);
                    if (level.var_53ad6e22[#"hash_5d465b52a32fbc49"] >= 1 && var_c24fdf79 >= 1 && !notified) {
                        self function_a3fcf9e0("sight", var_ece722e0.ent, var_ece722e0.ent.origin);
                        notified = 1;
                    } else if (var_c24fdf79 < 0.75 && notified) {
                        notified = 0;
                    }
                }
            } else {
                remove[remove.size] = key;
            }
        }
        foreach (key in remove) {
            self.stealth.var_6232c5c[key] = undefined;
        }
        wait(waittime);
    }
    self.stealth.var_6232c5c = undefined;
    self.stealth.var_5ad4258c = undefined;
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x2 linked
// Checksum 0xd6d55a88, Offset: 0x2078
// Size: 0x2c
function function_7af4fa05(entity) {
    self function_8f5de442(entity, 0.05);
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 0, eflags: 0x2 linked
// Checksum 0xcd9afeb6, Offset: 0x20b0
// Size: 0x684
function function_40733f9f() {
    self endon(#"death");
    level endon(#"hash_34d443ce908d0498");
    var_94603cb7 = 0;
    while (1) {
        var_6330dd7b = 0;
        self.stealth.var_dee4cb7d = 0;
        self.stealth.var_96052c58 = -1;
        playereye = self getplayercamerapos();
        var_2efc79ea = 0.2588;
        foreach (entity in self.stealth.var_2818e780) {
            if (!isalive(entity)) {
                continue;
            }
            if (is_true(entity.var_fb9a2c03)) {
                continue;
            }
            entid = entity getentitynumber();
            self.stealth.var_96052c58 = max(self.stealth.var_96052c58, entity.alertlevelint);
            if (level.var_53ad6e22[#"ai_threatsight"]) {
                if (!isdefined(entity.var_1e36e368) || entity [[ entity.var_1e36e368 ]]()) {
                    continue;
                }
                var_17c874ba = entity function_a884a736(self);
                var_3f0097e8 = isdefined(entity.stealth.var_aa593a83) && entity.stealth.var_aa593a83.var_dd29a83a == "sight";
                var_566de12 = entity cansee(self);
                if (var_566de12) {
                    var_94603cb7 = gettime();
                }
                if (var_566de12 && isplayer(self) && var_17c874ba > 0.09 && self function_911cdf32(entity)) {
                    entity function_a3fcf9e0("sight", self, self.origin);
                } else if (!isdefined(entity.stealth.var_aa593a83) && !is_true(entity.var_c5553760) && !entity function_36a6a90() && var_17c874ba >= 0.5) {
                    if (!isdefined(self.stealth.var_a4965d8[entid])) {
                        entity thread function_79fc894b(self);
                    }
                } else if (var_17c874ba >= 1) {
                    if (entity namespace_979752dc::function_d58e1c1c() && entity.awarenesslevelcurrent != "high_alert") {
                        entity thread function_ee9635fa(self);
                    } else if (!isdefined(self.stealth.var_a4965d8[entid])) {
                        entity thread function_740f4859(self);
                    }
                } else if (var_3f0097e8 && entity namespace_979752dc::function_d58e1c1c() && entity.alertlevel == "high_alert") {
                    var_751fc2b7 = entity namespace_979752dc::function_196ad164();
                    if (var_17c874ba > 0) {
                        if (!var_751fc2b7) {
                            entity namespace_979752dc::function_3249d5ff();
                        }
                    } else if (var_751fc2b7) {
                        entity namespace_979752dc::function_64608a78();
                    }
                }
                var_8735c97f = self.stealth.var_dee4cb7d;
                self.stealth.var_dee4cb7d = max(self.stealth.var_dee4cb7d, entity function_a884a736(self));
                if (self.stealth.var_dee4cb7d > 0.05) {
                    if (!isdefined(self.stealth.var_2a34ee37) || self.stealth.var_dee4cb7d !== var_8735c97f) {
                        self.stealth.var_2a34ee37 = entity;
                    }
                }
            }
            if (entity.alertlevel == "combat" || !entity.var_eba34d84) {
                var_6330dd7b = 1;
            }
        }
        var_56a7a731 = !var_6330dd7b && var_94603cb7 > 0 && gettime() - var_94603cb7 < 250;
        if (level.var_53ad6e22[#"hash_aaa65a819f18898"] <= 0) {
            self thread function_7f381bc5(var_56a7a731, self.stealth.var_dee4cb7d);
        }
        self.stealth.var_bb1e2d94 = var_56a7a731;
        wait(0.05);
    }
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 1, eflags: 0x2 linked
// Checksum 0xb698c24f, Offset: 0x2740
// Size: 0xba
function function_911cdf32(ai) {
    if (!self issprinting()) {
        return 0;
    }
    if (isdefined(level.stealth.var_6fd6463b)) {
        distancesq = distancesquared(self.origin, ai.origin);
        if (distancesq > level.stealth.var_6fd6463b) {
            return 0;
        }
    }
    return util::within_fov(self.origin, self.angles, ai.origin, 0.93969);
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 2, eflags: 0x0
// Checksum 0xd178aca1, Offset: 0x2808
// Size: 0x184
function function_5ea66bc2(origin, amount) {
    self notify(#"hash_1240c1b6342c669");
    self endon(#"hash_1240c1b6342c669");
    setsaveddvar(#"hash_aaa65a819f18898", amount);
    setsaveddvar(#"hash_db3d6b4a347dd10", origin[0]);
    setsaveddvar(#"hash_db3d7b4a347dec3", origin[1]);
    setsaveddvar(#"hash_db3d8b4a347e076", origin[2]);
    if (!isdefined(self.stealth.var_dee4cb7d)) {
        self.stealth.var_dee4cb7d = 0;
    }
    while (amount > 0) {
        self thread function_7f381bc5(1, max(self.stealth.var_dee4cb7d, amount));
        wait(0.05);
    }
    self thread function_7f381bc5(0, max(self.stealth.var_dee4cb7d, amount));
}

// Namespace namespace_6c0cd084/namespace_214c1803
// Params 3, eflags: 0x2 linked
// Checksum 0xe5b0c426, Offset: 0x2998
// Size: 0x68
function function_7f381bc5(var_56a7a731, var_dee4cb7d, var_2107b994) {
    if (isdefined(level.stealth) && isdefined(level.stealth.var_32a3a19)) {
        self thread [[ level.stealth.var_32a3a19 ]](var_56a7a731, var_dee4cb7d, var_2107b994);
    }
}

