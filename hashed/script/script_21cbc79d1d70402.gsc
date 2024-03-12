// Atian COD Tools GSC CW decompiler test
#using script_7e3221b6c80d8cc4;
#using script_1883fa4e60abbf9f;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace player;

// Namespace player/player
// Params 2, eflags: 0x0
// Checksum 0xf6c5bdf6, Offset: 0x208
// Size: 0x14
function function_aec6058a(*ent, *vol) {
    
}

#namespace namespace_7a865494;

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x2 linked
// Checksum 0xd0930c02, Offset: 0x228
// Size: 0x174
function main() {
    if (isdefined(self.stealth)) {
        return;
    }
    self endon(#"death");
    self endon(#"hash_6de499574267aed9");
    self.stealth = spawnstruct();
    self.stealth.var_103386e8 = self namespace_979752dc::function_3c827c8f("stealth_spotted");
    self flag::init("stealth_enabled");
    self flag::set("stealth_enabled");
    self flag::init("stealth_use_real_lighting");
    self flag::set("stealth_use_real_lighting");
    self.stealth.var_2055753 = [];
    self namespace_979752dc::function_cc94df6e();
    self thread function_a5a4f7fc();
    if (sessionmodeiscampaigngame()) {
        self thread function_985c93ef();
    }
    /#
        self childthread debug_player();
    #/
}

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x2 linked
// Checksum 0x516c00af, Offset: 0x3a8
// Size: 0x6c
function function_a5a4f7fc() {
    self endon(#"death");
    self endon(#"disconnect");
    while (1) {
        if (self function_96ce44c4()) {
            self.maxvisibledist = self function_5fee4f6();
        }
        waitframe(1);
    }
}

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x2 linked
// Checksum 0xaf03cc80, Offset: 0x420
// Size: 0x8a
function function_96ce44c4() {
    if (is_true(self.var_9ee586cf)) {
        return 0;
    }
    if (!self flag::get("stealth_enabled")) {
        return 0;
    }
    if (self flag::get("stealth_in_shadow")) {
        return 1;
    }
    if (isdefined(self.var_df48dfb) && gettime() < self.var_df48dfb) {
        return 0;
    }
    return 1;
}

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x2 linked
// Checksum 0x9fe9ffbd, Offset: 0x4b8
// Size: 0x18a
function function_5fee4f6() {
    stance = self getstance();
    if (self namespace_979752dc::function_48fc612d()) {
        var_334eb858 = "spotted";
    } else {
        var_334eb858 = "hidden";
    }
    range = level.stealth.var_33b5cf8f.range[var_334eb858][stance];
    if (self flag::get("stealth_in_shadow")) {
        range = range * level.stealth.var_33b5cf8f.range[var_334eb858][#"shadow"];
        range = max(range, level.stealth.var_33b5cf8f.var_67773281[var_334eb858][stance]);
    }
    if (isdefined(self.stealth.var_f6c2537d) && self.stealth.var_f6c2537d.size > 0) {
        range = max(range, isdefined(self.var_1c936867) ? self.var_1c936867 : 850);
    }
    return range;
}

// Namespace namespace_7a865494/player
// Params 1, eflags: 0x0
// Checksum 0x4637e280, Offset: 0x650
// Size: 0x688
function function_74d32108(enabled = 1) {
    if (!enabled) {
        self notify(#"hash_4330b0368e7f1373");
        self.stealth.combatstate = undefined;
        return;
    } else if (isdefined(self.stealth.combatstate)) {
        return;
    }
    self endon(#"death");
    self endon(#"hash_6de499574267aed9");
    self endon(#"hash_4330b0368e7f1373");
    self endon(#"disconnect");
    self childthread function_815ac3de();
    self childthread function_56229e27();
    self.stealth.combatstate = spawnstruct();
    self.stealth.combatstate.name = "stealth";
    self.stealth.combatstate.type = "idle";
    self.stealth.combatstate.var_a0445fac = [];
    var_e8c14f37 = [];
    var_41b7c5cb = [];
    while (1) {
        self flag::wait_till("stealth_enabled");
        arrayremovevalue(var_e8c14f37, undefined);
        function_1eaaceab(var_e8c14f37);
        arrayremovevalue(var_41b7c5cb, undefined);
        function_1eaaceab(var_41b7c5cb);
        var_2034f2e1 = [];
        var_a1a15b6c = [];
        var_a01740d6 = 0;
        if (isdefined(self.var_19962bb4) && !util::function_33e5d0ac(self.var_19962bb4, 10)) {
            var_a01740d6 = 1;
        }
        foreach (enemy in getactorteamarray("axis")) {
            if (!isalive(enemy)) {
                continue;
            }
            if (!array::contains(var_e8c14f37, enemy)) {
                if (!isalive(enemy)) {
                    continue;
                }
                if (enemy.script === "pain") {
                    continue;
                }
            }
            if (!isdefined(enemy.var_1e36e368) || enemy [[ enemy.var_1e36e368 ]]()) {
                if (isdefined(self.stealth.combatstate.var_df83ea38)) {
                    dist = self.stealth.combatstate.var_df83ea38;
                    if (distancesquared(self.origin, enemy.origin) > function_a3f6cdac(dist)) {
                        var_a1a15b6c[var_a1a15b6c.size] = enemy;
                        continue;
                    }
                }
                var_2034f2e1[var_2034f2e1.size] = enemy;
                if (var_a01740d6) {
                    continue;
                }
                if (enemy.enemy !== self) {
                    continue;
                }
                if (enemy cansee(self)) {
                    var_a01740d6 = 1;
                }
                continue;
            }
            if (enemy [[ enemy.var_678afc31 ]]()) {
                var_a1a15b6c[var_a1a15b6c.size] = enemy;
            }
        }
        lastname = self.stealth.combatstate.name;
        var_832d48d3 = self.stealth.combatstate.type;
        name = lastname;
        type = undefined;
        if (lastname == "combat") {
            if (var_2034f2e1.size == 0) {
                name = "stealth";
                if (arrayintersect(var_e8c14f37, var_a1a15b6c).size > 0) {
                    type = "hunt";
                } else if (var_a1a15b6c.size == 0) {
                    type = "all_clear";
                } else {
                    type = "combat_clear";
                }
            } else if (var_832d48d3 === "unaware" && var_a01740d6) {
                type = "aware";
            }
        } else if (var_2034f2e1.size > 0) {
            name = "combat";
            if (var_a01740d6) {
                type = "aware";
            } else {
                type = "unaware";
            }
        } else if (var_832d48d3 === "hunt" && var_a1a15b6c.size == 0) {
            type = "all_clear";
        }
        if (name != lastname || isdefined(type) && type !== var_832d48d3) {
            self.stealth.combatstate.name = name;
            self.stealth.combatstate.type = type;
            self notify(#"hash_ec8c1a398bebc57", {#type:type, #name:name});
        }
        var_e8c14f37 = var_2034f2e1;
        var_41b7c5cb = var_a1a15b6c;
        waitframe(1);
    }
}

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x2 linked
// Checksum 0x44863108, Offset: 0xce0
// Size: 0xd6
function function_56229e27() {
    while (1) {
        result = undefined;
        result = self waittill(#"hash_ec8c1a398bebc57");
        foreach (func in self.stealth.combatstate.var_a0445fac) {
            self thread [[ func ]](result.name, result.type);
        }
    }
}

// Namespace namespace_7a865494/player
// Params 2, eflags: 0x0
// Checksum 0x1f23a016, Offset: 0xdc0
// Size: 0x110
function function_7db1ec36(key, func) {
    /#
        assert(isplayer(self));
    #/
    /#
        assert(isdefined(self.stealth));
    #/
    /#
        assert(isdefined(self.stealth.combatstate));
    #/
    /#
        assert(isdefined(key), "<unknown string>");
    #/
    /#
        assert(!isdefined(self.stealth.combatstate.var_a0445fac[key]), "<unknown string>" + key + "<unknown string>");
    #/
    self.stealth.combatstate.var_a0445fac[key] = func;
}

// Namespace namespace_7a865494/player
// Params 1, eflags: 0x0
// Checksum 0x79252853, Offset: 0xed8
// Size: 0x100
function function_1d29945c(key) {
    /#
        assert(isplayer(self));
    #/
    /#
        assert(isdefined(self.stealth));
    #/
    /#
        assert(isdefined(self.stealth.combatstate));
    #/
    /#
        assert(isdefined(key), "<unknown string>");
    #/
    /#
        assert(isdefined(self.stealth.combatstate.var_a0445fac[key]), "<unknown string>" + key + "<unknown string>");
    #/
    self.stealth.combatstate.var_a0445fac[key] = undefined;
}

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x2 linked
// Checksum 0x3c38066c, Offset: 0xfe0
// Size: 0x42
function function_815ac3de() {
    while (1) {
        level waittill(#"hash_58d740afedebc182", #"hash_58419cfa256da59b");
        self.var_19962bb4 = gettime();
    }
}

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x2 linked
// Checksum 0xeaeb71ba, Offset: 0x1030
// Size: 0x154
function function_985c93ef() {
    self endon(#"hash_6de499574267aed9");
    self.stealth.var_92b57f62 = spawnstruct();
    self.stealth.var_92b57f62.var_9d72f2de = undefined;
    self.stealth.var_92b57f62.var_74def2f9 = [];
    self.stealth.var_92b57f62.var_d8c2c54d[#"footstep_sprint"] = 6;
    self.stealth.var_92b57f62.var_d8c2c54d[#"gunshot"] = 8;
    self.stealth.var_92b57f62.var_d8c2c54d[#"proximity_speed"] = 16;
    self.stealth.var_92b57f62.var_d8c2c54d[#"sight_standing"] = 19;
    self childthread function_171246a9();
    self childthread function_5b410730();
    self childthread function_da7489b6();
}

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x2 linked
// Checksum 0x52293d8, Offset: 0x1190
// Size: 0x410
function function_171246a9() {
    self endon(#"death");
    while (1) {
        self flag::wait_till("stealth_enabled");
        var_7f729179 = undefined;
        var_7f729179 = level waittill(#"hash_733d7b56ac978e53");
        event = var_7f729179.event;
        receiver = var_7f729179.receiver;
        if (!isalive(receiver)) {
            continue;
        }
        if (event.entity !== getplayers()[0]) {
            continue;
        }
        if (!self flag::get("stealth_enabled")) {
            self.stealth.var_92b57f62.var_9d72f2de = undefined;
            self.stealth.var_92b57f62.var_74def2f9 = [];
            continue;
        }
        if (namespace_979752dc::function_e26ebe76()) {
            if (event.type != "combat") {
                continue;
            }
            var_f2013641 = 0;
            foreach (guy in getactorteamarray(receiver.team)) {
                if (guy == receiver) {
                    continue;
                }
                if (!isdefined(guy.var_1e36e368) || guy [[ guy.var_1e36e368 ]]()) {
                    var_f2013641 = 1;
                    break;
                }
            }
            if (var_f2013641) {
                continue;
            }
        }
        eventtype = event.var_dd29a83a;
        if (eventtype == "gunshot" && !is_true(level.var_e01e8892)) {
            continue;
        }
        if ((eventtype == "sight" || eventtype == "proximity") && self issprinting()) {
            eventtype = "footstep_sprint";
        } else if (eventtype == "proximity" && lengthsquared((getplayers()[0] getvelocity()[0], getplayers()[0] getvelocity()[1], 0)) > 11025) {
            eventtype = "proximity_speed";
        } else if (eventtype == "sight" && self getstance() == "stand") {
            eventtype = "sight_standing";
        }
        if (!isdefined(self.stealth.var_92b57f62.var_d8c2c54d[eventtype])) {
            continue;
        }
        if (array::contains(self.stealth.var_92b57f62.var_74def2f9, receiver)) {
            continue;
        }
        self childthread function_b8244ec0(receiver, eventtype);
    }
}

// Namespace namespace_7a865494/player
// Params 2, eflags: 0x2 linked
// Checksum 0xeec863f4, Offset: 0x15a8
// Size: 0x216
function function_b8244ec0(ai, eventtype) {
    self endon(#"combat_started");
    self endon(#"stealth_enabled");
    self.stealth.var_92b57f62.var_74def2f9[self.stealth.var_92b57f62.var_74def2f9.size] = ai;
    if (ai [[ ai.var_678afc31 ]]()) {
        ai util::delay(10, array("combat_started", "stealth_enabled"), &util::function_90dafe5, "stealthHints_timeout");
        ai waittill(#"stealth_combat", #"death", #"stealthhints_timeout");
    } else if (ai [[ ai.var_cd774402 ]]()) {
        ai waittill(#"stealth_idle", #"stealth_combat", #"death");
    }
    arrayremovevalue(self.stealth.var_92b57f62.var_74def2f9, ai);
    if (!isalive(ai) || isdefined(ai.var_1e36e368) && !ai [[ ai.var_1e36e368 ]]()) {
        return;
    }
    self.stealth.var_92b57f62.var_9d72f2de = eventtype;
    self.stealth.var_92b57f62.var_74def2f9 = [];
    self notify(#"combat_started");
}

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x2 linked
// Checksum 0x6f5c4af, Offset: 0x17c8
// Size: 0xa8
function function_5b410730() {
    self waittill(#"death");
    if (!self flag::get("stealth_enabled")) {
        return;
    }
    if (isdefined(level.var_cfb03f56)) {
        return;
    }
    if (!isdefined(self.stealth.var_92b57f62.var_9d72f2de)) {
        return;
    }
    level.var_cfb03f56 = self.stealth.var_92b57f62.var_d8c2c54d[self.stealth.var_92b57f62.var_9d72f2de];
}

// Namespace namespace_7a865494/player
// Params 0, eflags: 0x2 linked
// Checksum 0x28f58967, Offset: 0x1878
// Size: 0x9a
function function_da7489b6() {
    self endon(#"death");
    while (1) {
        self flag::wait_till("stealth_enabled");
        while (!isdefined(self.stealth.var_92b57f62.var_9d72f2de)) {
            waitframe(1);
        }
        while (namespace_979752dc::function_e26ebe76()) {
            waitframe(1);
        }
        self.stealth.var_92b57f62.var_9d72f2de = undefined;
    }
}

