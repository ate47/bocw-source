// Atian COD Tools GSC CW decompiler test
#using script_5450c003e8a913b7;
#using script_1883fa4e60abbf9f;
#using script_2d443451ce681a;
#using scripts\cp_common\util.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace corpse;

// Namespace corpse/corpse
// Params 2, eflags: 0x0
// Checksum 0x503e29d0, Offset: 0x110
// Size: 0x14
function function_aec6058a(*ent, *vol) {
    
}

#namespace namespace_cc4354b9;

// Namespace namespace_cc4354b9/corpse
// Params 0, eflags: 0x2 linked
// Checksum 0xb2ee8469, Offset: 0x130
// Size: 0x42
function function_6d3dfd1e() {
    /#
        assert(isdefined(self.stealth));
    #/
    self.stealth.corpse = spawnstruct();
}

// Namespace namespace_cc4354b9/corpse
// Params 0, eflags: 0x2 linked
// Checksum 0x57de38f9, Offset: 0x180
// Size: 0xe4
function function_5ad0e5ed() {
    if (isdefined(level.stealth) && isdefined(level.stealth.corpse)) {
        return;
    }
    level.stealth.corpse = spawnstruct();
    level.stealth.corpse.var_a17effe9 = 30;
    level.var_d3a7bebd = &ai::function_4f84c3ed;
    level namespace_979752dc::function_16184343("saw_corpse", &function_dce4334);
    level namespace_979752dc::function_16184343("found_corpse", &function_1241e0b);
    function_950e6902();
}

// Namespace namespace_cc4354b9/corpse
// Params 0, eflags: 0x2 linked
// Checksum 0xa68f3d83, Offset: 0x270
// Size: 0x64
function function_950e6902() {
    array[#"hash_256cce7120ab0043"] = 600;
    array[#"hash_17048ea9eae820a7"] = 300;
    array[#"hash_2655f95437d45490"] = 100;
    function_2a1c56d9(array);
}

// Namespace namespace_cc4354b9/corpse
// Params 1, eflags: 0x2 linked
// Checksum 0xab4d29aa, Offset: 0x2e0
// Size: 0x66
function function_2a1c56d9(array) {
    if (!isdefined(array[#"hash_67ecb968e26f1dee"])) {
        array[#"hash_67ecb968e26f1dee"] = array[#"hash_2655f95437d45490"];
    }
    level.stealth.corpse.dists = array;
}

// Namespace namespace_cc4354b9/corpse
// Params 0, eflags: 0x0
// Checksum 0x3d795d7b, Offset: 0x350
// Size: 0x74
function function_6835fec1() {
    /#
        assert(isdefined(level.stealth));
    #/
    /#
        assert(isentity(self));
    #/
    level.stealth.var_a9e01a52[self getentitynumber()] = self.origin;
}

// Namespace namespace_cc4354b9/corpse
// Params 0, eflags: 0x0
// Checksum 0x34acb71a, Offset: 0x3d0
// Size: 0x74
function function_d0474f22() {
    /#
        assert(isdefined(level.stealth));
    #/
    /#
        assert(isentity(self));
    #/
    level.stealth.var_df8e6ed1[self getentitynumber()] = self;
}

// Namespace namespace_cc4354b9/corpse
// Params 1, eflags: 0x2 linked
// Checksum 0x3a636a36, Offset: 0x450
// Size: 0x152
function function_c40851c(origin) {
    if (!isdefined(self.var_95e4102c) || distancesquared(self.var_95e4102c, origin) > 1) {
        self.var_36ea912d = undefined;
        if (isdefined(level.var_5ca45f26) && isdefined(level.var_5ca45f26[#"stealth_in_shadow"])) {
            foreach (trigger in level.var_5ca45f26[#"stealth_in_shadow"]) {
                if (isdefined(trigger) && trigger istouching(origin)) {
                    self.var_36ea912d = 1;
                    break;
                }
            }
        }
        self.var_95e4102c = origin;
    }
    return is_true(self.var_36ea912d);
}

// Namespace namespace_cc4354b9/corpse
// Params 0, eflags: 0x2 linked
// Checksum 0xaaedcf90, Offset: 0x5b0
// Size: 0x874
function function_eb8c5f46() {
    if (isdefined(self.stealth.var_af995864) && gettime() < self.stealth.var_af995864) {
        return;
    }
    if (level.stealth.var_69fc8bf2 >= 1) {
        return;
    }
    if (self flag::get("stealth_hold_position")) {
        return;
    }
    if (self.ignoreall) {
        return;
    }
    if (is_true(self.stealth.corpse.var_209809da)) {
        return;
    }
    if (isdefined(self.stealth.corpse.ent)) {
        self.stealth.var_af995864 = gettime() + 200;
    } else {
        self.stealth.var_af995864 = gettime() + 1500;
    }
    var_4aaee197 = level.stealth.corpse.dists[#"hash_2655f95437d45490"];
    if (isdefined(self.stealth.var_680aa2f0)) {
        var_4aaee197 = self.stealth.var_680aa2f0;
    }
    var_2a6bd4de = level.stealth.corpse.dists[#"hash_256cce7120ab0043"];
    if (isdefined(self.stealth.var_9576da53)) {
        var_2a6bd4de = self.stealth.var_9576da53;
    }
    var_64df9187 = level.stealth.corpse.dists[#"hash_17048ea9eae820a7"];
    if (isdefined(self.stealth.var_173f86f3)) {
        var_64df9187 = self.stealth.var_173f86f3;
    }
    var_9f3728b2 = function_a3f6cdac(var_4aaee197);
    var_1adb66c8 = function_a3f6cdac(var_2a6bd4de);
    var_3ff1021a = function_a3f6cdac(var_64df9187);
    var_e69a8d31 = max(var_4aaee197, max(var_2a6bd4de, var_64df9187));
    corpses = [];
    if (isdefined(level.var_d3a7bebd)) {
        corpses = [[ level.var_d3a7bebd ]](self.origin, var_e69a8d31);
    }
    level.stealth.var_69fc8bf2++;
    found_corpse = undefined;
    saw_corpse = undefined;
    foreach (corpse in corpses) {
        var_2501cbe2 = corpse namespace_979752dc::function_5b776bd1();
        var_4ac4d617 = corpse getentitynumber();
        if (isdefined(level.stealth.var_a9e01a52) && isdefined(level.stealth.var_a9e01a52[var_4ac4d617]) && distancesquared(level.stealth.var_a9e01a52[var_4ac4d617], var_2501cbe2) < function_a3f6cdac(100)) {
            level.stealth.var_a9e01a52[var_4ac4d617] = undefined;
            corpse.found = 1;
        }
        if (isdefined(corpse.found)) {
            continue;
        }
        distsq = distancesquared(self.origin, var_2501cbe2);
        if (corpse function_c40851c(var_2501cbe2)) {
            /#
                assert(level.stealth.corpse.dists[#"hash_67ecb968e26f1dee"] <= var_e69a8d31);
            #/
            var_1adb66c8 = function_a3f6cdac(level.stealth.corpse.dists[#"hash_67ecb968e26f1dee"]);
            var_3ff1021a = var_1adb66c8;
        }
        if (distsq < var_9f3728b2) {
            if (abs(self.origin[2] - var_2501cbe2[2]) < 60) {
                found_corpse = corpse;
                break;
            }
        }
        if (isdefined(self.stealth.corpse.ent)) {
            if (self.stealth.corpse.ent == corpse) {
                continue;
            }
            var_db8d2405 = self.stealth.corpse.ent namespace_979752dc::function_5b776bd1();
            var_2a0fe92a = distancesquared(self.origin, var_db8d2405);
            jumpiffalse(var_2a0fe92a <= distsq) LOC_0000061a;
        } else {
        LOC_0000061a:
            if (distsq > var_1adb66c8) {
                continue;
            }
            if (var_2501cbe2[2] - self.origin[2] > 128) {
                continue;
            }
            if (distsq < var_3ff1021a) {
                if (!isdefined(corpse.var_17022cd4) && self cansee(corpse)) {
                    saw_corpse = corpse;
                    break;
                }
            }
            sight = anglestoforward(self gettagangles("tag_eye"));
            var_b455e74a = vectornormalize(var_2501cbe2 + vectorscale((0, 0, 1), 30) - self geteye());
            if (vectordot(sight, var_b455e74a) > 0.55) {
                if (!isdefined(corpse.var_17022cd4) && self cansee(corpse)) {
                    saw_corpse = corpse;
                    break;
                }
            }
        }
    }
    if (isdefined(found_corpse)) {
        found_corpse.found = 1;
        if (is_true(found_corpse.var_17022cd4) && isdefined(self.stealth.corpse.ent) && self.stealth.corpse.ent == found_corpse) {
            self.stealth.var_e72a0096 = gettime();
        }
        self function_a3fcf9e0("found_corpse", found_corpse, found_corpse namespace_979752dc::function_5b776bd1());
    } else if (isdefined(saw_corpse)) {
        self thread function_94ebd1f5(saw_corpse);
        self function_a3fcf9e0("saw_corpse", saw_corpse, saw_corpse namespace_979752dc::function_5b776bd1());
    }
}

// Namespace namespace_cc4354b9/corpse
// Params 1, eflags: 0x2 linked
// Checksum 0x3f3466e0, Offset: 0xe30
// Size: 0x11c
function function_1241e0b(event) {
    self notify(#"hash_21d4d8bed465f3e2");
    self endon(#"hash_21d4d8bed465f3e2");
    self endon(#"death");
    corpse = event.entity;
    var_2501cbe2 = corpse namespace_979752dc::function_5b776bd1();
    if (isdefined(self.stealth.corpse.ent)) {
        self.stealth.corpse.ent.var_17022cd4 = undefined;
    }
    self.stealth.corpse.ent = corpse;
    self.stealth.var_36261740 = 1;
    if (isdefined(level.var_92c2e8d0)) {
        corpse [[ level.var_92c2e8d0 ]](level.stealth.corpse.var_a17effe9);
    }
}

// Namespace namespace_cc4354b9/corpse
// Params 1, eflags: 0x2 linked
// Checksum 0xae0ff27a, Offset: 0xf58
// Size: 0x84
function function_dce4334(event) {
    corpse = event.entity;
    var_2501cbe2 = corpse namespace_979752dc::function_5b776bd1();
    self.stealth.corpse.origin = var_2501cbe2;
    self.stealth.var_36261740 = 1;
    self thread function_94ebd1f5(corpse);
}

// Namespace namespace_cc4354b9/corpse
// Params 1, eflags: 0x2 linked
// Checksum 0x31f650f7, Offset: 0xfe8
// Size: 0xdc
function function_94ebd1f5(corpse) {
    self notify(#"hash_ae1b97f508220da");
    self endon(#"hash_ae1b97f508220da");
    if (isdefined(self.stealth.corpse.ent)) {
        self.stealth.corpse.ent.var_17022cd4 = undefined;
    }
    corpse.var_17022cd4 = 1;
    self.stealth.corpse.ent = corpse;
    self waittill(#"death");
    if (isdefined(corpse)) {
        corpse.var_17022cd4 = undefined;
    }
    if (isdefined(self)) {
        self thread function_f4ede6b0();
    }
}

// Namespace namespace_cc4354b9/corpse
// Params 0, eflags: 0x2 linked
// Checksum 0x22536ff7, Offset: 0x10d0
// Size: 0x82
function function_f4ede6b0() {
    if (isdefined(self.stealth.corpse)) {
        if (isdefined(self.stealth.corpse.ent)) {
            self.stealth.corpse.ent.var_17022cd4 = undefined;
        }
        self.stealth.corpse.ent = undefined;
        self.stealth.corpse.var_209809da = undefined;
    }
}

// Namespace namespace_cc4354b9/corpse
// Params 0, eflags: 0x0
// Checksum 0xacd89fdf, Offset: 0x1160
// Size: 0x644
function function_808b81d8() {
    if (!isdefined(self.stealth.suspicious_door)) {
        self.stealth.suspicious_door = spawnstruct();
    }
    if (isdefined(self.stealth.suspicious_door.nexttime) && gettime() < self.stealth.suspicious_door.nexttime) {
        return;
    }
    if (self flag::get("stealth_hold_position")) {
        return;
    }
    if (self.ignoreall) {
        return;
    }
    if (is_true(self.stealth.suspicious_door.var_209809da)) {
        return;
    }
    if (isdefined(self.stealth.suspicious_door.ent)) {
        self.stealth.suspicious_door.nexttime = gettime() + 100;
    } else {
        self.stealth.suspicious_door.nexttime = gettime() + 1000;
    }
    doors = level.stealth.suspicious_door.doors;
    var_e51f89c2 = undefined;
    var_cc3596e8 = undefined;
    door = undefined;
    foreach (door in doors) {
        var_ed1e6fa2 = door getentitynumber();
        if (isdefined(door.found)) {
            continue;
        }
        var_715a5cbd = door.origin;
        distsq = distancesquared(self.origin, var_715a5cbd);
        var_9f3728b2 = level.stealth.suspicious_door.var_e055a590;
        var_1adb66c8 = level.stealth.suspicious_door.var_9dc56984;
        var_3ff1021a = level.stealth.suspicious_door.var_afbd85c2;
        if (distsq < var_9f3728b2) {
            if (abs(self.origin[2] - var_715a5cbd[2]) < 60) {
                var_e51f89c2 = door;
                break;
            }
        }
        if (isdefined(self.stealth.suspicious_door.ent)) {
            if (self.stealth.suspicious_door.ent == door) {
                continue;
            }
            var_7e90842d = self.stealth.suspicious_door.ent.origin;
            var_2a0fe92a = distancesquared(self.origin, var_7e90842d);
            jumpiffalse(var_2a0fe92a <= distsq) LOC_000003b2;
        } else {
        LOC_000003b2:
            if (distsq > var_1adb66c8) {
                continue;
            }
            if (var_715a5cbd[2] - self.origin[2] > 128) {
                continue;
            }
            if (distsq < var_3ff1021a) {
                if (!isdefined(door.var_17022cd4) && self cansee(door) && util::can_see_ai(door.origin, self, 250, getplayers()[0])) {
                    var_cc3596e8 = door;
                    break;
                }
            }
            sight = anglestoforward(self gettagangles("tag_eye"));
            var_385f9620 = vectornormalize(var_715a5cbd + vectorscale((0, 0, 1), 30) - self geteye());
            if (vectordot(sight, var_385f9620) > 0.55) {
                if (!isdefined(door.var_17022cd4) && self cansee(door) && util::can_see_ai(door.origin, self, 250, getplayers()[0])) {
                    var_cc3596e8 = door;
                    break;
                }
            }
        }
    }
    if (isdefined(var_e51f89c2)) {
        var_e51f89c2.found = 1;
        spot = undefined;
        if (is_true(var_e51f89c2.var_17022cd4) && isdefined(self.stealth.suspicious_door.ent) && self.stealth.suspicious_door.ent == var_e51f89c2) {
            self.stealth.var_e72a0096 = gettime();
        }
        if (isdefined(door.var_2fd025b)) {
            spot = door.var_2fd025b[0].origin;
        } else {
            spot = door.origin;
        }
        self function_a3fcf9e0("suspicious_door", var_e51f89c2, spot);
    }
}

// Namespace namespace_cc4354b9/corpse
// Params 1, eflags: 0x2 linked
// Checksum 0xf0cb03c1, Offset: 0x17b0
// Size: 0x16c
function function_bd918ca2(event) {
    door = event.entity;
    if (isdefined(door.var_c1969778)) {
        return;
    }
    door.var_c1969778 = self;
    if (isdefined(door.var_2fd025b) && isdefined(door.var_2fd025b[0])) {
        spot = door.var_2fd025b[0].origin;
    } else {
        spot = door.origin;
    }
    point = getclosestpointonnavmesh(spot, 500, 16);
    if (!isdefined(point)) {
        point = spot;
    }
    event.origin = spot + anglestoforward((0, randomfloatrange(0, 360), 0)) * 75;
    event.var_ce3a18c7 = getclosestpointonnavmesh(event.origin, 500, 16);
    if (!isdefined(event.var_ce3a18c7)) {
        event.var_ce3a18c7 = event.origin;
    }
    self namespace_f1f700ac::function_52839330("investigate", event);
}

