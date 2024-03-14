// Atian COD Tools GSC CW decompiler test
#using script_7e3221b6c80d8cc4;
#using script_1883fa4e60abbf9f;
#using script_3ad66e3076c279ab;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace event;

// Namespace event/event
// Params 2, eflags: 0x0
// Checksum 0xaacc1647, Offset: 0x2a8
// Size: 0x14
function function_aec6058a(*ent, *vol) {
    
}

#namespace namespace_cf88f507;

// Namespace namespace_cf88f507/event
// Params 0, eflags: 0x2 linked
// Checksum 0xaa89b08e, Offset: 0x2c8
// Size: 0x34
function function_b1459a4() {
    self thread function_f205a29();
    self function_9ef595c3(1);
}

// Namespace namespace_cf88f507/event
// Params 1, eflags: 0x2 linked
// Checksum 0x26b98cc, Offset: 0x308
// Size: 0x276
function function_9ef595c3(enabled) {
    if (!isdefined(level.stealth.var_5b485aba)) {
        level.stealth.var_5b485aba = [9:"silenced_shot", 8:"projectile_impact", 7:"gunshot_teammate", 6:"gunshot", 5:"footstep_walk", 4:"footstep_sprint", 3:"footstep_run", 2:"footstep", 1:"explode", 0:"bulletwhizby"];
    }
    if (enabled && !is_true(self.stealth.var_6b368eb9)) {
        foreach (eventname in level.stealth.var_5b485aba) {
            self addsentienteventlistener(eventname);
        }
        self.stealth.var_6b368eb9 = 1;
        return;
    }
    if (!enabled && is_true(self.stealth.var_6b368eb9)) {
        foreach (eventname in level.stealth.var_5b485aba) {
            self removesentienteventlistener(eventname);
        }
        self.stealth.var_6b368eb9 = undefined;
    }
}

// Namespace namespace_cf88f507/event
// Params 0, eflags: 0x2 linked
// Checksum 0x1a00db67, Offset: 0x588
// Size: 0x484
function function_b0b43e2d() {
    if (!isdefined(level.stealth.var_1ffc1de6)) {
        level.stealth.var_1ffc1de6 = [];
    }
    level.stealth.var_1ffc1de6["investigate"] = 0;
    level.stealth.var_1ffc1de6["cover_blown"] = 1;
    level.stealth.var_1ffc1de6["combat"] = 2;
    level.var_b19e4f0a = &function_51e96563;
    level namespace_979752dc::function_16184343("broadcast", &function_ebe9cc50);
    function_9b9a90d8("investigate", "footstep", 15, 0.07);
    function_9b9a90d8("investigate", "footstep_sprint", 10, 0.1);
    function_9b9a90d8("investigate", "unresponsive_teammate", 20, 0.05);
    function_9b9a90d8("investigate", "window_open", 0, 0.2);
    function_9b9a90d8("investigate", "ally_hurt_peripheral", 0, 0.1);
    function_9b9a90d8("cover_blown", "sight", 2, 0.45);
    function_9b9a90d8("cover_blown", "saw_corpse", 0, 0.3);
    function_9b9a90d8("cover_blown", "found_corpse", 0, 0.3);
    function_9b9a90d8("cover_blown", "thrown_projectile_impact", 6, 0.15);
    function_9b9a90d8("cover_blown", "silenced_shot", 5, 0.23);
    function_9b9a90d8("cover_blown", "explode", 2, 0.8);
    function_9b9a90d8("cover_blown", "seek_backup", 0, 0);
    function_9b9a90d8("cover_blown", "glass_destroyed", 2, 0.5);
    function_9b9a90d8("cover_blown", "light_killed", 3, 0.4);
    function_9b9a90d8("cover_blown", "door_bash", 4, 0.4);
    function_9b9a90d8("combat", "bulletwhizby");
    function_9b9a90d8("combat", "gunshot");
    function_9b9a90d8("combat", "gunshot_teammate");
    function_9b9a90d8("combat", "projectile_impact");
    function_9b9a90d8("combat", "attack");
    function_9b9a90d8("combat", "damage");
    function_9b9a90d8("combat", "proximity");
    function_9b9a90d8("combat", "ally_damaged");
    function_9b9a90d8("combat", "ally_killed");
}

// Namespace namespace_cf88f507/event
// Params 2, eflags: 0x2 linked
// Checksum 0x64645d3, Offset: 0xa18
// Size: 0xfe
function function_8ad03874(var_86dfea16, var_3ec8d9e9) {
    /#
        assert(isdefined(level.stealth));
    #/
    /#
        assert(isdefined(level.stealth.var_1ffc1de6));
    #/
    /#
        assert(isdefined(level.stealth.var_1ffc1de6[var_86dfea16]));
    #/
    /#
        assert(isdefined(level.stealth.var_1ffc1de6[var_3ec8d9e9]));
    #/
    result = level.stealth.var_1ffc1de6[var_86dfea16] - level.stealth.var_1ffc1de6[var_3ec8d9e9];
    return result;
}

// Namespace namespace_cf88f507/event
// Params 2, eflags: 0x2 linked
// Checksum 0x90e63f74, Offset: 0xb20
// Size: 0x142
function function_cc2b72fd(severity, direction) {
    /#
        assert(isdefined(level.stealth));
    #/
    /#
        assert(isdefined(level.stealth.var_1ffc1de6));
    #/
    /#
        assert(isdefined(level.stealth.var_1ffc1de6[severity]));
    #/
    priority = level.stealth.var_1ffc1de6[severity] + direction;
    foreach (var_64cba2ea, var_7b0f2b7f in level.stealth.var_1ffc1de6) {
        if (var_7b0f2b7f == priority) {
            return var_64cba2ea;
        }
    }
    return severity;
}

// Namespace namespace_cf88f507/event
// Params 5, eflags: 0x2 linked
// Checksum 0x139bafe, Offset: 0xc70
// Size: 0x1ac
function function_9b9a90d8(severity, eventname, var_b9f01157, var_4cca9730, var_af2ae264) {
    /#
        assert(!(severity == "<unknown string>" && isdefined(var_af2ae264)));
    #/
    /#
        assert(!(severity == "<unknown string>" && isdefined(var_b9f01157)));
    #/
    if (!isdefined(var_b9f01157)) {
        var_b9f01157 = 0;
    }
    if (!isdefined(var_4cca9730)) {
        var_4cca9730 = 0;
    }
    if (!isdefined(level.stealth.var_8f03d564)) {
        level.stealth.var_8f03d564 = [];
    }
    if (!isdefined(level.stealth.var_bb59b418)) {
        level.stealth.var_bb59b418 = [];
    }
    if (!isdefined(level.stealth.var_d93663f6)) {
        level.stealth.var_d93663f6 = [];
    }
    if (!isdefined(level.stealth.var_c6229ec2)) {
        level.stealth.var_c6229ec2 = [];
    }
    level.stealth.var_8f03d564[eventname] = severity;
    level.stealth.var_bb59b418[eventname] = var_b9f01157;
    level.stealth.var_d93663f6[eventname] = var_4cca9730;
    level.stealth.var_c6229ec2[eventname] = var_af2ae264;
}

// Namespace namespace_cf88f507/event
// Params 1, eflags: 0x2 linked
// Checksum 0x39659000, Offset: 0xe28
// Size: 0x4c
function function_abaf0e34(eventname) {
    /#
        assert(isdefined(level.stealth.var_8f03d564));
    #/
    return level.stealth.var_8f03d564[eventname];
}

// Namespace namespace_cf88f507/event
// Params 1, eflags: 0x2 linked
// Checksum 0xa67f879, Offset: 0xe80
// Size: 0x4c
function function_5aeed671(eventname) {
    /#
        assert(isdefined(level.stealth.var_bb59b418));
    #/
    return level.stealth.var_bb59b418[eventname];
}

// Namespace namespace_cf88f507/event
// Params 1, eflags: 0x2 linked
// Checksum 0xbe325a2c, Offset: 0xed8
// Size: 0x4c
function function_74c85018(eventname) {
    /#
        assert(isdefined(level.stealth.var_d93663f6));
    #/
    return level.stealth.var_d93663f6[eventname];
}

// Namespace namespace_cf88f507/event
// Params 1, eflags: 0x2 linked
// Checksum 0xeabce533, Offset: 0xf30
// Size: 0x4c
function function_dcd5fe5c(eventname) {
    /#
        assert(isdefined(level.stealth.var_c6229ec2));
    #/
    return level.stealth.var_c6229ec2[eventname];
}

// Namespace namespace_cf88f507/event
// Params 0, eflags: 0x2 linked
// Checksum 0xc820a17b, Offset: 0xf88
// Size: 0x2a
function function_a5831502() {
    self.stealth.var_8b3cf771 = undefined;
    self.stealth.var_84534a73 = 0;
}

// Namespace namespace_cf88f507/event
// Params 0, eflags: 0x2 linked
// Checksum 0x1b39c5d7, Offset: 0xfc0
// Size: 0x6e6
function function_f205a29() {
    self notify(#"hash_56408ad5d2de0751");
    self endon(#"hash_56408ad5d2de0751");
    self endon(#"death");
    while (true) {
        self flag::wait_till("stealth_enabled");
        var_7f729179 = undefined;
        var_7f729179 = self waittill(#"ai_events");
        waittillframeend();
        if (!self flag::get("stealth_enabled")) {
            continue;
        }
        if (self.ignoreall || self isragdoll()) {
            continue;
        }
        foreach (event in var_7f729179.events) {
            if (!isdefined(event.entity)) {
                continue;
            }
            if (issentient(event.entity) && (event.entity.ignoreme || is_true(event.entity isnotarget()))) {
                continue;
            }
            event.var_dd29a83a = event.type;
            if (event.type == "projectile_impact") {
                if (function_961c59a4(event)) {
                    event.type = "thrown_projectile_impact";
                }
                if (isdefined(event.entity.owner)) {
                    event.entity = event.entity.owner;
                }
            }
            event.receiver = self;
            var_33a263c4 = function_abaf0e34(event.type);
            var_b9f01157 = undefined;
            var_4cca9730 = undefined;
            var_af2ae264 = undefined;
            if (isdefined(var_33a263c4)) {
                if (!isdefined(self.var_bd3a6628) && var_33a263c4 != "combat") {
                    var_b9f01157 = function_5aeed671(event.type);
                    var_4cca9730 = function_74c85018(event.type);
                    var_af2ae264 = function_dcd5fe5c(event.type);
                    if (var_b9f01157 > 0) {
                        if (!isdefined(self.stealth.var_8b3cf771)) {
                            self.stealth.var_8b3cf771 = [];
                        }
                        if (!isdefined(self.stealth.var_8b3cf771[event.type])) {
                            self.stealth.var_8b3cf771[event.type] = 0;
                        }
                        if (isdefined(var_af2ae264) && self.stealth.var_8b3cf771[event.type] + 1 >= var_af2ae264) {
                            var_33a263c4 = function_cc2b72fd(var_33a263c4, 2);
                        } else if (self.stealth.var_8b3cf771[event.type] + 1 >= var_b9f01157) {
                            var_33a263c4 = function_cc2b72fd(var_33a263c4, 1);
                        } else if (self.stealth.var_84534a73 + var_4cca9730 >= 1) {
                            var_33a263c4 = function_cc2b72fd(var_33a263c4, 1);
                        }
                    }
                }
                event.type = var_33a263c4;
            }
            var_b3f16b56 = self namespace_b2b86d39::function_f96ed339(event.type, event);
            if (is_true(var_b3f16b56) && isdefined(var_b9f01157) && event.type != "combat") {
                if (var_b9f01157 > 0) {
                    if (!isdefined(self.stealth.var_8b3cf771)) {
                        self.stealth.var_8b3cf771 = [];
                    }
                    if (!isdefined(self.stealth.var_8b3cf771[event.var_dd29a83a])) {
                        self.stealth.var_8b3cf771[event.var_dd29a83a] = 0;
                    }
                    self.stealth.var_8b3cf771[event.var_dd29a83a]++;
                }
                self.stealth.var_84534a73 = self.stealth.var_84534a73 + var_4cca9730;
            }
            /#
                var_dd29a83a = "<unknown string>";
                if (isdefined(event.var_dd29a83a)) {
                    var_dd29a83a = "<unknown string>" + (ishash(event.var_dd29a83a) ? function_9e72a96(event.var_dd29a83a) : event.var_dd29a83a) + "<unknown string>";
                }
                event_str = "<unknown string>" + (ishash(event.type) ? function_9e72a96(event.type) : event.type) + var_dd29a83a;
                if (isdefined(var_b3f16b56) && !var_b3f16b56) {
                    event_str = event_str + "<unknown string>";
                }
                self thread function_314b7255(event_str, (1, 1, 1), 1, 0.5, vectorscale((0, 0, 1), 40), 4);
                self.stealth.var_8fb63790 = event.type;
            #/
        }
    }
}

// Namespace namespace_cf88f507/event
// Params 5, eflags: 0x2 linked
// Checksum 0xca700756, Offset: 0x16b0
// Size: 0x2e8
function function_51e96563(eventtype, var_fafdc97e, enemy, var_b2a2de70, var_a3dc7b53) {
    ais = getactorteamarray(self.team);
    var_1e5aa1c5 = function_a3f6cdac(var_b2a2de70);
    var_1cd11ac7 = function_a3f6cdac(var_a3dc7b53);
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
            broadcast = self util::function_748809fc(ai);
        }
        if (!broadcast && distsq <= var_1cd11ac7) {
            if (ai namespace_979752dc::is_visible(self) || ai namespace_979752dc::is_visible(enemy)) {
                broadcast = 1;
            }
        }
        if (!isdefined(ai.var_1e36e368) || ai [[ ai.var_1e36e368 ]]()) {
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
        if (ai function_683f03ef(self)) {
            ai function_a3fcf9e0(var_fafdc97e, enemy, self.origin);
        }
    }
}

// Namespace namespace_cf88f507/event
// Params 4, eflags: 0x2 linked
// Checksum 0x44b6e6e1, Offset: 0x19a0
// Size: 0x170
function function_ebe9cc50(eventtype, var_ef1d27a1, eventradius, var_d3429c8c) {
    ais = getactorteamarray("axis", "team3");
    if (!isdefined(var_d3429c8c)) {
        var_d3429c8c = getplayers()[0];
    }
    var_1e5aa1c5 = function_a3f6cdac(eventradius);
    foreach (ai in ais) {
        if (!isalive(ai)) {
            continue;
        }
        if (!isdefined(ai.stealth)) {
            continue;
        }
        if (distancesquared(ai.origin, var_ef1d27a1) <= var_1e5aa1c5) {
            ai function_a3fcf9e0(eventtype, var_d3429c8c, var_ef1d27a1);
        }
    }
}

// Namespace namespace_cf88f507/event
// Params 7, eflags: 0x0
// Checksum 0x5d36280a, Offset: 0x1b18
// Size: 0x1f0
function function_24d4358e(eventtype, enemy, var_ef1d27a1, eventradius, var_c5108979, var_a2b0f54d, var_683e4bdc) {
    ais = getactorteamarray("axis", "team3");
    var_4ab7d8de = eventradius * eventradius;
    if (!isdefined(var_c5108979)) {
        var_c5108979 = 1;
    }
    var_ca5ecc3c = undefined;
    if (isdefined(var_683e4bdc)) {
        var_ca5ecc3c = var_683e4bdc * var_683e4bdc;
    }
    if (!isdefined(var_a2b0f54d)) {
        var_a2b0f54d = var_ef1d27a1;
    }
    foreach (ai in ais) {
        if (!isalive(ai)) {
            continue;
        }
        if (!isdefined(ai.stealth)) {
            continue;
        }
        var_d60e3570 = distancesquared(ai.origin, var_ef1d27a1);
        if (var_d60e3570 > var_4ab7d8de) {
            continue;
        }
        var_b03a913a = var_c5108979;
        if (var_c5108979 && isdefined(var_ca5ecc3c) && var_d60e3570 <= var_ca5ecc3c) {
            var_b03a913a = 0;
        }
        if (!ai util::function_748809fc(var_a2b0f54d, var_b03a913a)) {
            continue;
        }
        ai function_a3fcf9e0(eventtype, enemy, var_ef1d27a1);
    }
}

// Namespace namespace_cf88f507/event
// Params 7, eflags: 0x0
// Checksum 0x30c0e301, Offset: 0x1d10
// Size: 0x5c
function function_81ea83c5(eventtype, enemy, var_ef1d27a1, eventradius, var_c5108979, var_a2b0f54d, var_aae03dee) {
    thread function_557b6ee1(eventtype, enemy, var_ef1d27a1, eventradius, var_c5108979, var_a2b0f54d, var_aae03dee);
}

// Namespace namespace_cf88f507/event
// Params 7, eflags: 0x2 linked
// Checksum 0x73dca09b, Offset: 0x1d78
// Size: 0x278
function function_557b6ee1(eventtype, enemy, var_ef1d27a1, eventradius, var_c5108979, var_a2b0f54d, var_aae03dee) {
    ais = getactorteamarray("axis", "team3");
    var_4ab7d8de = eventradius * eventradius;
    if (!isdefined(var_c5108979)) {
        var_c5108979 = 1;
    }
    if (!isdefined(var_a2b0f54d)) {
        var_a2b0f54d = var_ef1d27a1;
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
        distsq = distancesquared(ai.origin, var_ef1d27a1);
        if (distsq > var_4ab7d8de) {
            continue;
        }
        if (isdefined(var_aae03dee) && distsq <= function_a3f6cdac(var_aae03dee)) {
            ai function_a3fcf9e0(eventtype, enemy, var_ef1d27a1);
            continue;
        }
        if (!ai util::function_748809fc(var_a2b0f54d, var_c5108979)) {
            if (var_c5108979 && !ai function_f328659b(var_ef1d27a1)) {
                continue;
            }
            var_1389681c++;
            if (var_1389681c > var_a0229356) {
                waitframe(1);
                var_1389681c = 0;
            }
            if (!sighttracepassed(ai geteye(), var_ef1d27a1, 0, enemy)) {
                continue;
            }
        }
        ai function_a3fcf9e0(eventtype, enemy, var_ef1d27a1);
    }
}

// Namespace namespace_cf88f507/event
// Params 1, eflags: 0x2 linked
// Checksum 0x62277780, Offset: 0x1ff8
// Size: 0xc0
function function_961c59a4(event) {
    /#
        assert(event.type == "<unknown string>");
    #/
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

