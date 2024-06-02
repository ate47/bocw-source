// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\stealth\debug.gsc;
#using scripts\core_common\stealth\utility.gsc;
#using script_3ad66e3076c279ab;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace event;

// Namespace event/event
// Params 2, eflags: 0x0
// Checksum 0xaacc1647, Offset: 0x2a8
// Size: 0x14
function scalevolume(*ent, *vol) {
    
}

#namespace stealth_event;

// Namespace stealth_event/event
// Params 0, eflags: 0x2 linked
// Checksum 0xaa89b08e, Offset: 0x2c8
// Size: 0x34
function event_init_entity() {
    self thread event_listener_thread();
    self event_entity_core_set_enabled(1);
}

// Namespace stealth_event/event
// Params 1, eflags: 0x2 linked
// Checksum 0x26b98cc, Offset: 0x308
// Size: 0x276
function event_entity_core_set_enabled(enabled) {
    if (!isdefined(level.stealth.core_events)) {
        level.stealth.core_events = ["bulletwhizby", "explode", "footstep", "footstep_run", "footstep_sprint", "footstep_walk", "gunshot", "gunshot_teammate", "projectile_impact", "silenced_shot"];
    }
    if (enabled && !is_true(self.stealth.var_6b368eb9)) {
        foreach (eventname in level.stealth.core_events) {
            self addsentienteventlistener(eventname);
        }
        self.stealth.var_6b368eb9 = 1;
        return;
    }
    if (!enabled && is_true(self.stealth.var_6b368eb9)) {
        foreach (eventname in level.stealth.core_events) {
            self removesentienteventlistener(eventname);
        }
        self.stealth.var_6b368eb9 = undefined;
    }
}

// Namespace stealth_event/event
// Params 0, eflags: 0x2 linked
// Checksum 0x1a00db67, Offset: 0x588
// Size: 0x484
function event_init_level() {
    if (!isdefined(level.stealth.event_priority)) {
        level.stealth.event_priority = [];
    }
    level.stealth.event_priority["investigate"] = 0;
    level.stealth.event_priority["cover_blown"] = 1;
    level.stealth.event_priority["combat"] = 2;
    level.var_b19e4f0a = &event_broadcast_axis;
    level namespace_979752dc::set_stealth_func("broadcast", &event_broadcast_generic);
    event_severity_set("investigate", "footstep", 15, 0.07);
    event_severity_set("investigate", "footstep_sprint", 10, 0.1);
    event_severity_set("investigate", "unresponsive_teammate", 20, 0.05);
    event_severity_set("investigate", "window_open", 0, 0.2);
    event_severity_set("investigate", "ally_hurt_peripheral", 0, 0.1);
    event_severity_set("cover_blown", "sight", 2, 0.45);
    event_severity_set("cover_blown", "saw_corpse", 0, 0.3);
    event_severity_set("cover_blown", "found_corpse", 0, 0.3);
    event_severity_set("cover_blown", "thrown_projectile_impact", 6, 0.15);
    event_severity_set("cover_blown", "silenced_shot", 5, 0.23);
    event_severity_set("cover_blown", "explode", 2, 0.8);
    event_severity_set("cover_blown", "seek_backup", 0, 0);
    event_severity_set("cover_blown", "glass_destroyed", 2, 0.5);
    event_severity_set("cover_blown", "light_killed", 3, 0.4);
    event_severity_set("cover_blown", "door_bash", 4, 0.4);
    event_severity_set("combat", "bulletwhizby");
    event_severity_set("combat", "gunshot");
    event_severity_set("combat", "gunshot_teammate");
    event_severity_set("combat", "projectile_impact");
    event_severity_set("combat", "attack");
    event_severity_set("combat", "damage");
    event_severity_set("combat", "proximity");
    event_severity_set("combat", "ally_damaged");
    event_severity_set("combat", "ally_killed");
}

// Namespace stealth_event/event
// Params 2, eflags: 0x2 linked
// Checksum 0x64645d3, Offset: 0xa18
// Size: 0xfe
function event_severity_compare(var_86dfea16, var_3ec8d9e9) {
    assert(isdefined(level.stealth));
    assert(isdefined(level.stealth.event_priority));
    assert(isdefined(level.stealth.event_priority[var_86dfea16]));
    assert(isdefined(level.stealth.event_priority[var_3ec8d9e9]));
    result = level.stealth.event_priority[var_86dfea16] - level.stealth.event_priority[var_3ec8d9e9];
    return result;
}

// Namespace stealth_event/event
// Params 2, eflags: 0x2 linked
// Checksum 0x90e63f74, Offset: 0xb20
// Size: 0x142
function event_severity_shift(severity, direction) {
    assert(isdefined(level.stealth));
    assert(isdefined(level.stealth.event_priority));
    assert(isdefined(level.stealth.event_priority[severity]));
    priority = level.stealth.event_priority[severity] + direction;
    foreach (var_64cba2ea, priorityval in level.stealth.event_priority) {
        if (priorityval == priority) {
            return var_64cba2ea;
        }
    }
    return severity;
}

// Namespace stealth_event/event
// Params 5, eflags: 0x2 linked
// Checksum 0x139bafe, Offset: 0xc70
// Size: 0x1ac
function event_severity_set(severity, eventname, escalation, var_4cca9730, var_af2ae264) {
    assert(!(severity == "<unknown string>" && isdefined(var_af2ae264)));
    assert(!(severity == "<unknown string>" && isdefined(escalation)));
    if (!isdefined(escalation)) {
        escalation = 0;
    }
    if (!isdefined(var_4cca9730)) {
        var_4cca9730 = 0;
    }
    if (!isdefined(level.stealth.event_severity)) {
        level.stealth.event_severity = [];
    }
    if (!isdefined(level.stealth.event_escalation)) {
        level.stealth.event_escalation = [];
    }
    if (!isdefined(level.stealth.event_escalation_scalars)) {
        level.stealth.event_escalation_scalars = [];
    }
    if (!isdefined(level.stealth.event_escalation_to_combat)) {
        level.stealth.event_escalation_to_combat = [];
    }
    level.stealth.event_severity[eventname] = severity;
    level.stealth.event_escalation[eventname] = escalation;
    level.stealth.event_escalation_scalars[eventname] = var_4cca9730;
    level.stealth.event_escalation_to_combat[eventname] = var_af2ae264;
}

// Namespace stealth_event/event
// Params 1, eflags: 0x2 linked
// Checksum 0x39659000, Offset: 0xe28
// Size: 0x4c
function event_severity_get(eventname) {
    assert(isdefined(level.stealth.event_severity));
    return level.stealth.event_severity[eventname];
}

// Namespace stealth_event/event
// Params 1, eflags: 0x2 linked
// Checksum 0xa67f879, Offset: 0xe80
// Size: 0x4c
function event_escalation_get(eventname) {
    assert(isdefined(level.stealth.event_escalation));
    return level.stealth.event_escalation[eventname];
}

// Namespace stealth_event/event
// Params 1, eflags: 0x2 linked
// Checksum 0xbe325a2c, Offset: 0xed8
// Size: 0x4c
function event_escalation_scalar_get(eventname) {
    assert(isdefined(level.stealth.event_escalation_scalars));
    return level.stealth.event_escalation_scalars[eventname];
}

// Namespace stealth_event/event
// Params 1, eflags: 0x2 linked
// Checksum 0xeabce533, Offset: 0xf30
// Size: 0x4c
function event_escalation_to_combat_get(eventname) {
    assert(isdefined(level.stealth.event_escalation_to_combat));
    return level.stealth.event_escalation_to_combat[eventname];
}

// Namespace stealth_event/event
// Params 0, eflags: 0x2 linked
// Checksum 0xc820a17b, Offset: 0xf88
// Size: 0x2a
function event_escalation_clear() {
    self.stealth.event_escalation_count = undefined;
    self.stealth.event_escalation_scalar = 0;
}

// Namespace stealth_event/event
// Params 0, eflags: 0x2 linked
// Checksum 0x1b39c5d7, Offset: 0xfc0
// Size: 0x6e6
function event_listener_thread() {
    self notify(#"event_listener_thread");
    self endon(#"event_listener_thread");
    self endon(#"death");
    while (true) {
        self flag::wait_till("stealth_enabled");
        wait_result = self waittill(#"ai_events");
        waittillframeend();
        if (!self flag::get("stealth_enabled")) {
            continue;
        }
        if (self.ignoreall || self isragdoll()) {
            continue;
        }
        foreach (event in wait_result.events) {
            if (!isdefined(event.entity)) {
                continue;
            }
            if (issentient(event.entity) && (event.entity.ignoreme || is_true(event.entity isnotarget()))) {
                continue;
            }
            event.typeorig = event.type;
            if (event.type == "projectile_impact") {
                if (function_961c59a4(event)) {
                    event.type = "thrown_projectile_impact";
                }
                if (isdefined(event.entity.owner)) {
                    event.entity = event.entity.owner;
                }
            }
            event.receiver = self;
            var_33a263c4 = event_severity_get(event.type);
            escalation = undefined;
            var_4cca9730 = undefined;
            var_af2ae264 = undefined;
            if (isdefined(var_33a263c4)) {
                if (!isdefined(self.disableescalation) && var_33a263c4 != "combat") {
                    escalation = event_escalation_get(event.type);
                    var_4cca9730 = event_escalation_scalar_get(event.type);
                    var_af2ae264 = event_escalation_to_combat_get(event.type);
                    if (escalation > 0) {
                        if (!isdefined(self.stealth.event_escalation_count)) {
                            self.stealth.event_escalation_count = [];
                        }
                        if (!isdefined(self.stealth.event_escalation_count[event.type])) {
                            self.stealth.event_escalation_count[event.type] = 0;
                        }
                        if (isdefined(var_af2ae264) && self.stealth.event_escalation_count[event.type] + 1 >= var_af2ae264) {
                            var_33a263c4 = event_severity_shift(var_33a263c4, 2);
                        } else if (self.stealth.event_escalation_count[event.type] + 1 >= escalation) {
                            var_33a263c4 = event_severity_shift(var_33a263c4, 1);
                        } else if (self.stealth.event_escalation_scalar + var_4cca9730 >= 1) {
                            var_33a263c4 = event_severity_shift(var_33a263c4, 1);
                        }
                    }
                }
                event.type = var_33a263c4;
            }
            eventhandled = self namespace_b2b86d39::stealth_call(event.type, event);
            if (is_true(eventhandled) && isdefined(escalation) && event.type != "combat") {
                if (escalation > 0) {
                    if (!isdefined(self.stealth.event_escalation_count)) {
                        self.stealth.event_escalation_count = [];
                    }
                    if (!isdefined(self.stealth.event_escalation_count[event.typeorig])) {
                        self.stealth.event_escalation_count[event.typeorig] = 0;
                    }
                    self.stealth.event_escalation_count[event.typeorig]++;
                }
                self.stealth.event_escalation_scalar += var_4cca9730;
            }
            /#
                typeorig = "<unknown string>";
                if (isdefined(event.typeorig)) {
                    typeorig = "<unknown string>" + (ishash(event.typeorig) ? function_9e72a96(event.typeorig) : event.typeorig) + "<unknown string>";
                }
                event_str = "<unknown string>" + (ishash(event.type) ? function_9e72a96(event.type) : event.type) + typeorig;
                if (isdefined(eventhandled) && !eventhandled) {
                    event_str += "<unknown string>";
                }
                self thread stealth_debug::function_314b7255(event_str, (1, 1, 1), 1, 0.5, (0, 0, 40), 4);
                self.stealth.ai_event = event.type;
            #/
        }
    }
}

// Namespace stealth_event/event
// Params 5, eflags: 0x2 linked
// Checksum 0xca700756, Offset: 0x16b0
// Size: 0x2e8
function event_broadcast_axis(eventtype, eventtypeperipheral, enemy, rangeauto, rangesight) {
    ais = getactorteamarray(self.team);
    var_1e5aa1c5 = sqr(rangeauto);
    var_1cd11ac7 = sqr(rangesight);
    foreach (ai in ais) {
        if (!isalive(ai)) {
            continue;
        }
        if (ai == self) {
            continue;
        }
        if (!isdefined(ai.stealth)) {
            continue;
        }
        broadcast = 0;
        distsq = distancesquared(ai.origin, self.origin);
        if (distsq <= var_1e5aa1c5) {
            broadcast = self util::has_tac_vis(ai);
        }
        if (!broadcast && distsq <= var_1cd11ac7) {
            if (ai namespace_979752dc::is_visible(self) || ai namespace_979752dc::is_visible(enemy)) {
                broadcast = 1;
            }
        }
        if (!isdefined(ai.fnisinstealthcombat) || ai [[ ai.fnisinstealthcombat ]]()) {
            if (broadcast) {
                ai getenemyinfo(enemy);
            }
            continue;
        }
        if (broadcast) {
            if (ai lastknowntime(enemy) == 0) {
                ai function_a3fcf9e0(eventtype, enemy, self.origin);
            } else {
                ai function_a3fcf9e0(eventtype, enemy, enemy.origin);
            }
            continue;
        }
        if (ai canseeperipheral(self)) {
            ai function_a3fcf9e0(eventtypeperipheral, enemy, self.origin);
        }
    }
}

// Namespace stealth_event/event
// Params 4, eflags: 0x2 linked
// Checksum 0x44b6e6e1, Offset: 0x19a0
// Size: 0x170
function event_broadcast_generic(eventtype, eventposition, eventradius, evententity) {
    ais = getactorteamarray("axis", "team3");
    if (!isdefined(evententity)) {
        evententity = getplayers()[0];
    }
    var_1e5aa1c5 = sqr(eventradius);
    foreach (ai in ais) {
        if (!isalive(ai)) {
            continue;
        }
        if (!isdefined(ai.stealth)) {
            continue;
        }
        if (distancesquared(ai.origin, eventposition) <= var_1e5aa1c5) {
            ai function_a3fcf9e0(eventtype, evententity, eventposition);
        }
    }
}

// Namespace stealth_event/event
// Params 7, eflags: 0x0
// Checksum 0x5d36280a, Offset: 0x1b18
// Size: 0x1f0
function event_broadcast_axis_by_tacsight(eventtype, enemy, eventposition, eventradius, var_c5108979, tacposition, var_683e4bdc) {
    ais = getactorteamarray("axis", "team3");
    cradiussq = eventradius * eventradius;
    if (!isdefined(var_c5108979)) {
        var_c5108979 = 1;
    }
    var_ca5ecc3c = undefined;
    if (isdefined(var_683e4bdc)) {
        var_ca5ecc3c = var_683e4bdc * var_683e4bdc;
    }
    if (!isdefined(tacposition)) {
        tacposition = eventposition;
    }
    foreach (ai in ais) {
        if (!isalive(ai)) {
            continue;
        }
        if (!isdefined(ai.stealth)) {
            continue;
        }
        var_d60e3570 = distancesquared(ai.origin, eventposition);
        if (var_d60e3570 > cradiussq) {
            continue;
        }
        var_b03a913a = var_c5108979;
        if (var_c5108979 && isdefined(var_ca5ecc3c) && var_d60e3570 <= var_ca5ecc3c) {
            var_b03a913a = 0;
        }
        if (!ai util::has_tac_vis(tacposition, var_b03a913a)) {
            continue;
        }
        ai function_a3fcf9e0(eventtype, enemy, eventposition);
    }
}

// Namespace stealth_event/event
// Params 7, eflags: 0x0
// Checksum 0x30c0e301, Offset: 0x1d10
// Size: 0x5c
function event_broadcast_axis_by_sight(eventtype, enemy, eventposition, eventradius, var_c5108979, tacposition, autorange) {
    thread event_broadcast_axis_by_sight_thread(eventtype, enemy, eventposition, eventradius, var_c5108979, tacposition, autorange);
}

// Namespace stealth_event/event
// Params 7, eflags: 0x2 linked
// Checksum 0x73dca09b, Offset: 0x1d78
// Size: 0x278
function event_broadcast_axis_by_sight_thread(eventtype, enemy, eventposition, eventradius, var_c5108979, tacposition, autorange) {
    ais = getactorteamarray("axis", "team3");
    cradiussq = eventradius * eventradius;
    if (!isdefined(var_c5108979)) {
        var_c5108979 = 1;
    }
    if (!isdefined(tacposition)) {
        tacposition = eventposition;
    }
    var_a0229356 = 3;
    var_1389681c = 0;
    foreach (ai in ais) {
        if (!isalive(ai)) {
            continue;
        }
        if (!isdefined(ai.stealth)) {
            continue;
        }
        distsq = distancesquared(ai.origin, eventposition);
        if (distsq > cradiussq) {
            continue;
        }
        if (isdefined(autorange) && distsq <= sqr(autorange)) {
            ai function_a3fcf9e0(eventtype, enemy, eventposition);
            continue;
        }
        if (!ai util::has_tac_vis(tacposition, var_c5108979)) {
            if (var_c5108979 && !ai pointinfov(eventposition)) {
                continue;
            }
            var_1389681c++;
            if (var_1389681c > var_a0229356) {
                waitframe(1);
                var_1389681c = 0;
            }
            if (!sighttracepassed(ai geteye(), eventposition, 0, enemy)) {
                continue;
            }
        }
        ai function_a3fcf9e0(eventtype, enemy, eventposition);
    }
}

// Namespace stealth_event/event
// Params 1, eflags: 0x2 linked
// Checksum 0x62277780, Offset: 0x1ff8
// Size: 0xc0
function function_961c59a4(event) {
    assert(event.type == "<unknown string>");
    if (!isdefined(event.entity.item.name)) {
        return false;
    }
    if (event.entity.item.name == #"hatchet") {
        return true;
    }
    if (event.entity.item.name == #"hash_5453c9b880261bcb") {
        return true;
    }
    return false;
}

