// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\stealth\debug.gsc;
#using scripts\core_common\stealth\utility.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace player;

// Namespace player/player
// Params 2, eflags: 0x0
// Checksum 0xf6c5bdf6, Offset: 0x208
// Size: 0x14
function scalevolume(*ent, *vol) {
    
}

#namespace stealth_player;

// Namespace stealth_player/player
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
    self.stealth.var_103386e8 = self namespace_979752dc::group_flag_init("stealth_spotted");
    self flag::init("stealth_enabled");
    self flag::set("stealth_enabled");
    self flag::init("stealth_use_real_lighting");
    self flag::set("stealth_use_real_lighting");
    self.stealth.spotted_list = [];
    self namespace_979752dc::group_add();
    self thread maxvisibility_thread();
    if (sessionmodeiscampaigngame()) {
        self thread stealthhints_thread();
    }
    /#
        self childthread stealth_debug::debug_player();
    #/
}

// Namespace stealth_player/player
// Params 0, eflags: 0x2 linked
// Checksum 0x516c00af, Offset: 0x3a8
// Size: 0x6c
function maxvisibility_thread() {
    self endon(#"death");
    self endon(#"disconnect");
    while (true) {
        if (self maxvisibility_shouldupdate()) {
            self.maxvisibledist = self get_detect_range();
        }
        waitframe(1);
    }
}

// Namespace stealth_player/player
// Params 0, eflags: 0x2 linked
// Checksum 0xaf03cc80, Offset: 0x420
// Size: 0x8a
function maxvisibility_shouldupdate() {
    if (is_true(self.maxvisibiltyupdate_disabled)) {
        return false;
    }
    if (!self flag::get("stealth_enabled")) {
        return false;
    }
    if (self flag::get("stealth_in_shadow")) {
        return true;
    }
    if (isdefined(self.lightmeterdelay) && gettime() < self.lightmeterdelay) {
        return false;
    }
    return true;
}

// Namespace stealth_player/player
// Params 0, eflags: 0x2 linked
// Checksum 0x9fe9ffbd, Offset: 0x4b8
// Size: 0x18a
function get_detect_range() {
    stance = self getstance();
    if (self namespace_979752dc::group_spotted_flag()) {
        detection = "spotted";
    } else {
        detection = "hidden";
    }
    range = level.stealth.detect.range[detection][stance];
    if (self flag::get("stealth_in_shadow")) {
        range *= level.stealth.detect.range[detection][#"shadow"];
        range = max(range, level.stealth.detect.minrangedarkness[detection][stance]);
    }
    if (isdefined(self.stealth.var_f6c2537d) && self.stealth.var_f6c2537d.size > 0) {
        range = max(range, isdefined(self.var_1c936867) ? self.var_1c936867 : 850);
    }
    return range;
}

// Namespace stealth_player/player
// Params 1, eflags: 0x0
// Checksum 0x4637e280, Offset: 0x650
// Size: 0x688
function combatstate_thread(enabled = 1) {
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
    self childthread playerattackedmonitor();
    self childthread combatstate_updatethread();
    self.stealth.combatstate = spawnstruct();
    self.stealth.combatstate.name = "stealth";
    self.stealth.combatstate.type = "idle";
    self.stealth.combatstate.updatefuncs = [];
    var_e8c14f37 = [];
    var_41b7c5cb = [];
    while (true) {
        self flag::wait_till("stealth_enabled");
        arrayremovevalue(var_e8c14f37, undefined);
        function_1eaaceab(var_e8c14f37);
        arrayremovevalue(var_41b7c5cb, undefined);
        function_1eaaceab(var_41b7c5cb);
        combatenemies = [];
        huntenemies = [];
        var_a01740d6 = 0;
        if (isdefined(self.lastattackedtime) && !util::time_has_passed(self.lastattackedtime, 10)) {
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
            if (!isdefined(enemy.fnisinstealthcombat) || enemy [[ enemy.fnisinstealthcombat ]]()) {
                if (isdefined(self.stealth.combatstate.maxcombatdist)) {
                    dist = self.stealth.combatstate.maxcombatdist;
                    if (distancesquared(self.origin, enemy.origin) > sqr(dist)) {
                        huntenemies[huntenemies.size] = enemy;
                        continue;
                    }
                }
                combatenemies[combatenemies.size] = enemy;
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
            if (enemy [[ enemy.fnisinstealthhunt ]]()) {
                huntenemies[huntenemies.size] = enemy;
            }
        }
        lastname = self.stealth.combatstate.name;
        lasttype = self.stealth.combatstate.type;
        name = lastname;
        type = undefined;
        if (lastname == "combat") {
            if (combatenemies.size == 0) {
                name = "stealth";
                if (arrayintersect(var_e8c14f37, huntenemies).size > 0) {
                    type = "hunt";
                } else if (huntenemies.size == 0) {
                    type = "all_clear";
                } else {
                    type = "combat_clear";
                }
            } else if (lasttype === "unaware" && var_a01740d6) {
                type = "aware";
            }
        } else if (combatenemies.size > 0) {
            name = "combat";
            if (var_a01740d6) {
                type = "aware";
            } else {
                type = "unaware";
            }
        } else if (lasttype === "hunt" && huntenemies.size == 0) {
            type = "all_clear";
        }
        if (name != lastname || isdefined(type) && type !== lasttype) {
            self.stealth.combatstate.name = name;
            self.stealth.combatstate.type = type;
            self notify(#"hash_ec8c1a398bebc57", {#name:name, #type:type});
        }
        var_e8c14f37 = combatenemies;
        var_41b7c5cb = huntenemies;
        waitframe(1);
    }
}

// Namespace stealth_player/player
// Params 0, eflags: 0x2 linked
// Checksum 0x44863108, Offset: 0xce0
// Size: 0xd6
function combatstate_updatethread() {
    while (true) {
        result = self waittill(#"hash_ec8c1a398bebc57");
        foreach (func in self.stealth.combatstate.updatefuncs) {
            self thread [[ func ]](result.name, result.type);
        }
    }
}

// Namespace stealth_player/player
// Params 2, eflags: 0x0
// Checksum 0x1f23a016, Offset: 0xdc0
// Size: 0x110
function combatstate_addupdatefunc(key, func) {
    assert(isplayer(self));
    assert(isdefined(self.stealth));
    assert(isdefined(self.stealth.combatstate));
    assert(isdefined(key), "<unknown string>");
    assert(!isdefined(self.stealth.combatstate.updatefuncs[key]), "<unknown string>" + key + "<unknown string>");
    self.stealth.combatstate.updatefuncs[key] = func;
}

// Namespace stealth_player/player
// Params 1, eflags: 0x0
// Checksum 0x79252853, Offset: 0xed8
// Size: 0x100
function combatstate_removeupdatefunc(key) {
    assert(isplayer(self));
    assert(isdefined(self.stealth));
    assert(isdefined(self.stealth.combatstate));
    assert(isdefined(key), "<unknown string>");
    assert(isdefined(self.stealth.combatstate.updatefuncs[key]), "<unknown string>" + key + "<unknown string>");
    self.stealth.combatstate.updatefuncs[key] = undefined;
}

// Namespace stealth_player/player
// Params 0, eflags: 0x2 linked
// Checksum 0x3c38066c, Offset: 0xfe0
// Size: 0x42
function playerattackedmonitor() {
    while (true) {
        level waittill(#"hash_58d740afedebc182", #"hash_58419cfa256da59b");
        self.lastattackedtime = gettime();
    }
}

// Namespace stealth_player/player
// Params 0, eflags: 0x2 linked
// Checksum 0xeaeb71ba, Offset: 0x1030
// Size: 0x154
function stealthhints_thread() {
    self endon(#"hash_6de499574267aed9");
    self.stealth.hints = spawnstruct();
    self.stealth.hints.causeofdeath = undefined;
    self.stealth.hints.investigators = [];
    self.stealth.hints.deathhints[#"footstep_sprint"] = 6;
    self.stealth.hints.deathhints[#"gunshot"] = 8;
    self.stealth.hints.deathhints[#"proximity_speed"] = 16;
    self.stealth.hints.deathhints[#"sight_standing"] = 19;
    self childthread stealthhints_eventmonitor();
    self childthread stealthhints_deathmonitor();
    self childthread stealthhints_combatmonitor();
}

// Namespace stealth_player/player
// Params 0, eflags: 0x2 linked
// Checksum 0x52293d8, Offset: 0x1190
// Size: 0x410
function stealthhints_eventmonitor() {
    self endon(#"death");
    while (true) {
        self flag::wait_till("stealth_enabled");
        wait_result = level waittill(#"stealth_event");
        event = wait_result.event;
        receiver = wait_result.receiver;
        if (!isalive(receiver)) {
            continue;
        }
        if (event.entity !== getplayers()[0]) {
            continue;
        }
        if (!self flag::get("stealth_enabled")) {
            self.stealth.hints.causeofdeath = undefined;
            self.stealth.hints.investigators = [];
            continue;
        }
        if (namespace_979752dc::any_groups_in_combat()) {
            if (event.type != "combat") {
                continue;
            }
            var_f2013641 = 0;
            foreach (guy in getactorteamarray(receiver.team)) {
                if (guy == receiver) {
                    continue;
                }
                if (!isdefined(guy.fnisinstealthcombat) || guy [[ guy.fnisinstealthcombat ]]()) {
                    var_f2013641 = 1;
                    break;
                }
            }
            if (var_f2013641) {
                continue;
            }
        }
        eventtype = event.typeorig;
        if (eventtype == "gunshot" && !is_true(level.hassuppressedweapons)) {
            continue;
        }
        if ((eventtype == "sight" || eventtype == "proximity") && self issprinting()) {
            eventtype = "footstep_sprint";
        } else if (eventtype == "proximity" && lengthsquared((getplayers()[0] getvelocity()[0], getplayers()[0] getvelocity()[1], 0)) > 11025) {
            eventtype = "proximity_speed";
        } else if (eventtype == "sight" && self getstance() == "stand") {
            eventtype = "sight_standing";
        }
        if (!isdefined(self.stealth.hints.deathhints[eventtype])) {
            continue;
        }
        if (array::contains(self.stealth.hints.investigators, receiver)) {
            continue;
        }
        self childthread stealthhints_aimonitor(receiver, eventtype);
    }
}

// Namespace stealth_player/player
// Params 2, eflags: 0x2 linked
// Checksum 0xeec863f4, Offset: 0x15a8
// Size: 0x216
function stealthhints_aimonitor(ai, eventtype) {
    self endon(#"combat_started");
    self endon(#"stealth_enabled");
    self.stealth.hints.investigators[self.stealth.hints.investigators.size] = ai;
    if (ai [[ ai.fnisinstealthhunt ]]()) {
        ai util::delay(10, array("combat_started", "stealth_enabled"), &util::send_notify, "stealthHints_timeout");
        ai waittill(#"stealth_combat", #"death", #"stealthhints_timeout");
    } else if (ai [[ ai.fnisinstealthinvestigate ]]()) {
        ai waittill(#"stealth_idle", #"stealth_combat", #"death");
    }
    arrayremovevalue(self.stealth.hints.investigators, ai);
    if (!isalive(ai) || isdefined(ai.fnisinstealthcombat) && !ai [[ ai.fnisinstealthcombat ]]()) {
        return;
    }
    self.stealth.hints.causeofdeath = eventtype;
    self.stealth.hints.investigators = [];
    self notify(#"combat_started");
}

// Namespace stealth_player/player
// Params 0, eflags: 0x2 linked
// Checksum 0x6f5c4af, Offset: 0x17c8
// Size: 0xa8
function stealthhints_deathmonitor() {
    self waittill(#"death");
    if (!self flag::get("stealth_enabled")) {
        return;
    }
    if (isdefined(level.custom_death_quote)) {
        return;
    }
    if (!isdefined(self.stealth.hints.causeofdeath)) {
        return;
    }
    level.custom_death_quote = self.stealth.hints.deathhints[self.stealth.hints.causeofdeath];
}

// Namespace stealth_player/player
// Params 0, eflags: 0x2 linked
// Checksum 0x28f58967, Offset: 0x1878
// Size: 0x9a
function stealthhints_combatmonitor() {
    self endon(#"death");
    while (true) {
        self flag::wait_till("stealth_enabled");
        while (!isdefined(self.stealth.hints.causeofdeath)) {
            waitframe(1);
        }
        while (namespace_979752dc::any_groups_in_combat()) {
            waitframe(1);
        }
        self.stealth.hints.causeofdeath = undefined;
    }
}

