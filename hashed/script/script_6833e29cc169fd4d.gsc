// Atian COD Tools GSC CW decompiler test
#using script_6a0921d005260773;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_8a67e6b6;

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 0, eflags: 0x2 linked
// Checksum 0x81802b32, Offset: 0xd0
// Size: 0x122
function function_a780da8() {
    self abilities::function_6d4cf28e();
    if (!isdefined(self.var_25fa785)) {
        self.var_25fa785 = spawnstruct();
    }
    if (!isdefined(self.var_25fa785.lockon)) {
        self.var_25fa785.lockon = spawnstruct();
    }
    if (!isdefined(self.var_25fa785.lockon.var_1ce9ea0e)) {
        self.var_25fa785.lockon.var_1ce9ea0e = [];
    }
    if (!isdefined(self.var_25fa785.lockon.var_d6c3c148)) {
        self.var_25fa785.lockon.var_d6c3c148 = [];
    }
    if (!isdefined(self.var_25fa785.lockon.var_4e8096b0)) {
        self.var_25fa785.lockon.var_4e8096b0 = 0;
    }
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 6, eflags: 0x0
// Checksum 0xa9f89cb, Offset: 0x200
// Size: 0xbc
function function_6e4ec2c4(slot, weapon, maxtargets, var_e08793c0, var_efb1ea62, var_8ff7e677) {
    function_a780da8();
    if (!isdefined(maxtargets)) {
        maxtargets = getdvarint(#"scr_max_simlocks", 3);
    }
    assert(maxtargets <= 5, "<unknown string>");
    self thread function_4b7f8060(slot, weapon, maxtargets, var_e08793c0, var_efb1ea62, var_8ff7e677);
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 1, eflags: 0x2 linked
// Checksum 0x3d59f9a, Offset: 0x2c8
// Size: 0x66
function function_6af99b2e(weapon) {
    self function_b4c3d402(weapon);
    waittillframeend();
    function_2ebec96e(1);
    self function_92c4b561();
    self notify(#"hash_28f4b4a3d8b7ffae");
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 1, eflags: 0x2 linked
// Checksum 0x7a2e04ae, Offset: 0x338
// Size: 0xbc
function function_8c4799(weapon) {
    self endon(#"death");
    self notify(#"hash_fd27c03c2898a7b");
    self endon(#"hash_fd27c03c2898a7b", #"hash_28f4b4a3d8b7ffae");
    waitresult = self waittill(#"gadget_forced_off");
    if (weapon == waitresult.weapon) {
        self function_6af99b2e(weapon);
        return;
    }
    self thread function_8c4799(weapon);
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 1, eflags: 0x6 linked
// Checksum 0xf3bd0bdf, Offset: 0x400
// Size: 0x1bc
function private function_2b5f5ecf(weapon) {
    self endon(#"disconnect", #"death", #"hash_28f4b4a3d8b7ffae");
    self waittill(weapon.name + "_fired");
    level notify(#"hash_565f18effb8adf04", {#owner:self, #weapon:weapon});
    foreach (item in self.var_25fa785.lockon.var_d6c3c148) {
        if (isdefined(item.target)) {
            item.target notify(#"hash_565f18effb8adf04", {#owner:self, #weapon:weapon});
            if (isdefined(item.target.var_b6268463) && item.target.var_b6268463 == self) {
                item.target.var_b6268463 = undefined;
            }
        }
    }
    self function_6af99b2e(weapon);
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 2, eflags: 0x6 linked
// Checksum 0xff21b342, Offset: 0x5c8
// Size: 0x560
function private function_c0251c1e(target, var_4f358117 = 1) {
    eyepos = self geteye();
    if (!isdefined(target)) {
        return 0;
    }
    if (!isalive(target)) {
        return 0;
    }
    if (target isragdoll()) {
        return 0;
    }
    if (!isdefined(target.var_25fa785)) {
        target.var_25fa785 = spawnstruct();
    }
    if (!isdefined(target.var_25fa785.lockon)) {
        target.var_25fa785.lockon = spawnstruct();
    }
    if (!isdefined(target.var_25fa785.lockon.var_61980861)) {
        target.var_25fa785.lockon.var_61980861 = [];
    }
    pos = target getshootatpos();
    if (isdefined(pos)) {
        passed = bullettracepassed(eyepos, pos, 0, target, undefined, 1, 1);
        if (passed) {
            target.var_25fa785.lockon.var_61980861[self getentitynumber()] = gettime();
            return 1;
        }
    }
    pos = target getcentroid();
    if (isdefined(pos)) {
        passed = bullettracepassed(eyepos, pos, 0, target, undefined, 1, 1);
        if (passed) {
            target.var_25fa785.lockon.var_61980861[self getentitynumber()] = gettime();
            return 1;
        }
    }
    if (var_4f358117) {
        mins = target getmins();
        maxs = target getmaxs();
        var_a0e635a9 = (maxs[2] - mins[2]) / 4;
        for (i = 0; i <= 4; i++) {
            pos = target.origin + (0, 0, var_a0e635a9 * i);
            passed = bullettracepassed(eyepos, pos, 0, target, undefined, 1, 1);
            if (passed) {
                target.var_25fa785.lockon.var_61980861[self getentitynumber()] = gettime();
                return 1;
            }
            pos = target.origin + (mins[0], mins[1], var_a0e635a9 * i);
            passed = bullettracepassed(eyepos, pos, 0, target, undefined, 1, 1);
            if (passed) {
                target.var_25fa785.lockon.var_61980861[self getentitynumber()] = gettime();
                return 1;
            }
            pos = target.origin + (maxs[0], maxs[1], var_a0e635a9 * i);
            passed = bullettracepassed(eyepos, pos, 0, target, undefined, 1, 1);
            if (passed) {
                target.var_25fa785.lockon.var_61980861[self getentitynumber()] = gettime();
                return 1;
            }
        }
        lastseen = target.var_25fa785.lockon.var_61980861[self getentitynumber()];
        if (isdefined(lastseen) && lastseen + getdvarint(#"hash_592433ab4ddff207", 3000) > gettime()) {
            trace = bullettrace(eyepos, pos, 0, target);
            distsq = distancesquared(pos, trace[#"position"]);
            if (distsq <= getdvarint(#"hash_1fd2e213720ddfb3", sqr(315))) {
                return 2;
            } else {
                return 0;
            }
        }
    }
    return 0;
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 3, eflags: 0x2 linked
// Checksum 0xb3c14b94, Offset: 0xb30
// Size: 0x22c
function function_e2ce3b3d(target, weapon, var_54396394 = 1) {
    result = 1;
    if (!isdefined(target)) {
        return 0;
    }
    if (!isalive(target)) {
        return 0;
    }
    if (target isragdoll()) {
        return 0;
    }
    if (is_true(target.is_disabled)) {
        return 0;
    }
    if (!is_true(target.takedamage)) {
        return 0;
    }
    if (isdefined(target._ai_melee_opponent)) {
        return 0;
    }
    if (isactor(target) && (!target isonground() || isdefined(target.traversestartnode))) {
        return 0;
    }
    if (isdefined(target.var_6f4d7125)) {
        if (target.var_6f4d7125 == 0) {
            return 0;
        }
    } else {
        if (is_true(target.magic_bullet_shield)) {
            return 0;
        }
        if (isactor(target) && target isinscriptedstate()) {
            return 0;
        }
    }
    if (var_54396394 && isdefined(self.var_25fa785) && isdefined(self.var_25fa785.lockon.var_50ac8140)) {
        result = self [[ self.var_25fa785.lockon.var_50ac8140 ]](target);
    }
    if (result && isdefined(level.var_f320af85)) {
        result &= [[ level.var_f320af85 ]](self, target, weapon);
    }
    return result;
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 3, eflags: 0x2 linked
// Checksum 0xc8ec74cb, Offset: 0xd68
// Size: 0x6e
function function_397e4d13(target, maxrange, *weapon) {
    if (isdefined(weapon)) {
        distancesqr = distancesquared(maxrange.origin, self.origin);
        if (distancesqr > sqr(weapon)) {
            return false;
        }
    }
    return true;
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 5, eflags: 0x2 linked
// Checksum 0x2b91501b, Offset: 0xde0
// Size: 0x258
function function_2684c502(target, radius, weapon, maxrange, var_efb1ea62) {
    result = 1;
    isvalid = self function_e2ce3b3d(target, weapon);
    if (!is_true(isvalid)) {
        self function_a1dd4489(target, 1);
        return 0;
    }
    var_584c7fc2 = target [[ var_efb1ea62 ]](self, weapon);
    if (!is_true(var_584c7fc2)) {
        self function_a1dd4489(target, 1);
        return 0;
    }
    if (isdefined(maxrange)) {
        distancesqr = distancesquared(target.origin, self.origin);
        if (distancesqr > sqr(maxrange)) {
            self function_a1dd4489(target, 3);
            return 0;
        }
    }
    var_a7e5784a = self function_c0251c1e(target);
    if (var_a7e5784a == 0) {
        self function_a1dd4489(target, 5);
        return 0;
    }
    if (var_a7e5784a == 2) {
        radius *= 2;
    }
    if (isdefined(radius)) {
        distsq = distancesquared(self.origin, target.origin);
        if (distsq > sqr(144)) {
            result = target_isincircle(target, self, 65, radius);
        }
    }
    if (result == 0) {
        self function_a1dd4489(target, 1);
    }
    return result;
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 2, eflags: 0x2 linked
// Checksum 0xbdfc0283, Offset: 0x1040
// Size: 0x28
function function_568e9d1f(a, b) {
    return a.dot < b.dot;
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 1, eflags: 0x2 linked
// Checksum 0x5fc83f2f, Offset: 0x1070
// Size: 0xe6
function function_bb2cd3c1(target) {
    if (isdefined(target.var_b6268463) && target.var_b6268463 == self) {
        function_f9f09e3f(self);
        target.var_7a48f1af = gettime() - target.var_6a1a4bf6;
        target thread function_ddd62d1c();
        target.var_6a1a4bf6 = undefined;
        target.var_784d850f = gettime() + 150;
        target.var_b6268463 = undefined;
        target.var_6a1a4bf6 = undefined;
        target.var_3f53671 = undefined;
        self notify(#"hash_5c27ba8c4f6d6d7a");
        self notify(#"ccom_lost_lock", {#target:target});
    }
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 3, eflags: 0x2 linked
// Checksum 0x9aec270a, Offset: 0x1160
// Size: 0x10e
function function_a8d75f2f(slot, note, var_bf4c2932) {
    if (isdefined(self.var_25fa785.lockon.var_d6c3c148[slot])) {
        item = self.var_25fa785.lockon.var_d6c3c148[slot];
        if (isdefined(item.target)) {
            if (isdefined(note)) {
                item.target notify(note);
            }
            self weaponlocknoclearance(0, item.var_feac9e76);
            self weaponlockremoveslot(item.var_feac9e76);
            if (is_true(var_bf4c2932)) {
                self function_bb2cd3c1(item.target);
            }
            item.target = undefined;
        }
    }
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 1, eflags: 0x6 linked
// Checksum 0x7dc240a3, Offset: 0x1278
// Size: 0xd4
function private function_b44cb841(player) {
    self endon(#"ccom_lost_lock");
    self notify(#"hash_2a729778ba08a118");
    self endon(#"hash_2a729778ba08a118");
    slot = player function_cc4e7260(self);
    self waittill(#"death", #"hash_565f18effb8adf04", #"hash_68de5a70849dff37");
    player weaponlocknoclearance(0, slot);
    player weaponlockremoveslot(slot);
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 5, eflags: 0x2 linked
// Checksum 0x2bbbb673, Offset: 0x1358
// Size: 0x5b4
function function_5085f9ce(slot, target, maxrange, weapon, maxtargets) {
    if (slot == -1 || slot >= maxtargets) {
        return;
    }
    if (isdefined(target.var_784d850f) && gettime() < target.var_784d850f) {
        return;
    }
    if (isdefined(self.var_25fa785.lockon.var_d6c3c148[slot])) {
        self function_a8d75f2f(slot, "ccom_lost_lock");
        newitem = self.var_25fa785.lockon.var_d6c3c148[slot];
        newitem.target = target;
    } else {
        newitem = spawnstruct();
        newitem.target = target;
        newitem.var_feac9e76 = slot;
        self.var_25fa785.lockon.var_d6c3c148[slot] = newitem;
    }
    if (isdefined(newitem.target)) {
        if (isdefined(newitem.target.var_fedddeb8) && isdefined(newitem.target.var_fedddeb8[self.var_25fa785.lockon.var_50087796.name])) {
            if (!isdefined(newitem.target.var_b6268463)) {
                newitem.target.var_6a1a4bf6 = gettime() - newitem.target.var_7a48f1af;
                newitem.target.var_b6268463 = self;
                newitem.target notify(#"hash_4e379ec4e6f3cb69");
                curstart = newitem.target.var_7a48f1af / newitem.target.var_fedddeb8[self.var_25fa785.lockon.var_50087796.name] * 1000;
                function_ea7b2cb3(self, newitem.target.var_fedddeb8[self.var_25fa785.lockon.var_50087796.name], curstart);
                level thread function_eeb4c5eb(self);
            }
            if (isdefined(newitem.target.var_b6268463) && newitem.target.var_b6268463 == self) {
                newitem.target.var_3f53671 = math::clamp((gettime() - newitem.target.var_6a1a4bf6) / newitem.target.var_fedddeb8[self.var_25fa785.lockon.var_50087796.name] * 1000, 0, 1);
            }
        }
        self weaponlockstart(newitem.target, newitem.var_feac9e76);
        newitem.inrange = 1;
        if (!self function_397e4d13(newitem.target, maxrange, weapon)) {
            newitem.inrange = 0;
            self weaponlocknoclearance(1, slot);
        }
        if (isdefined(newitem.target.var_3f53671)) {
            if (newitem.target.var_b6268463 == self) {
                if (newitem.target.var_3f53671 != 1) {
                    newitem.inrange = 2;
                    self weaponlocknoclearance(1, slot);
                }
            } else {
                newitem.inrange = 0;
                self weaponlocknoclearance(1, slot);
            }
        }
        if (newitem.inrange == 1) {
            function_f9f09e3f(self);
            self weaponlocknoclearance(0, slot);
            self weaponlockfinalize(newitem.target, newitem.var_feac9e76);
            newitem.target notify(#"hash_3e74cb35c04b5632", self);
            level notify(#"hash_3e74cb35c04b5632", newitem.target);
        } else {
            newitem.target notify(#"ccom_lock_being_targeted", {#hijacking_player:self});
            level notify(#"ccom_lock_being_targeted", {#target:newitem.target, #hijacking_player:self});
        }
        newitem.target thread function_b44cb841(self);
    }
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 3, eflags: 0x2 linked
// Checksum 0x801833e6, Offset: 0x1918
// Size: 0x9e
function function_ea7b2cb3(*hacker, duration, var_f97b5169) {
    val = duration & 31;
    if (var_f97b5169 > 0) {
        cur = math::clamp(var_f97b5169, 0, 1);
        offset = int(cur * 128) << 5;
        val += offset;
    }
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 1, eflags: 0x2 linked
// Checksum 0xcfe57f23, Offset: 0x19c0
// Size: 0x14
function function_f9f09e3f(hacker) {
    if (isdefined(hacker)) {
    }
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 1, eflags: 0x2 linked
// Checksum 0xd7de971a, Offset: 0x19e0
// Size: 0xac
function function_eeb4c5eb(hacker) {
    hacker endon(#"disconnect");
    hacker notify(#"hash_5c27ba8c4f6d6d7a");
    hacker endon(#"hash_5c27ba8c4f6d6d7a");
    hacker waittill(#"death", #"hash_4b778a3139f80d62", #"ccom_lost_lock", #"hash_3e74cb35c04b5632");
    function_f9f09e3f(hacker);
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 1, eflags: 0x2 linked
// Checksum 0x48d02b08, Offset: 0x1a98
// Size: 0xa6
function function_cc4e7260(target) {
    for (i = 0; i < self.var_25fa785.lockon.var_d6c3c148.size; i++) {
        if (!isdefined(self.var_25fa785.lockon.var_d6c3c148[i].target)) {
            continue;
        }
        if (self.var_25fa785.lockon.var_d6c3c148[i].target == target) {
            return i;
        }
    }
    return -1;
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 0, eflags: 0x0
// Checksum 0x5316ecb9, Offset: 0x1b48
// Size: 0xa6
function function_14c54c6d() {
    targets = [];
    for (i = 0; i < self.var_25fa785.lockon.var_d6c3c148.size; i++) {
        if (!isdefined(self.var_25fa785.lockon.var_d6c3c148[i].target)) {
            continue;
        }
        targets[targets.size] = self.var_25fa785.lockon.var_d6c3c148[i].target;
    }
    return targets;
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 2, eflags: 0x2 linked
// Checksum 0x5ff1a2f4, Offset: 0x1bf8
// Size: 0x2b2
function function_dd8587b2(target, maxtargets) {
    if (self.var_25fa785.lockon.var_d6c3c148.size < maxtargets) {
        return self.var_25fa785.lockon.var_d6c3c148.size;
    }
    playerforward = anglestoforward(self getplayerangles());
    dots = [];
    for (i = 0; i < self.var_25fa785.lockon.var_d6c3c148.size; i++) {
        locktarget = self.var_25fa785.lockon.var_d6c3c148[i].target;
        if (!isdefined(locktarget)) {
            return i;
        }
        newitem = spawnstruct();
        newitem.dot = vectordot(playerforward, vectornormalize(locktarget.origin - self.origin));
        var_3d797059 = isdefined(self.var_25fa785.lockon.var_3d797059) ? self.var_25fa785.lockon.var_3d797059 : 0.95;
        if (newitem.dot > var_3d797059) {
            newitem.target = locktarget;
            array::add_sorted(dots, newitem, 0, &function_568e9d1f);
        }
    }
    newitem = spawnstruct();
    newitem.dot = vectordot(playerforward, vectornormalize(target.origin - self.origin));
    newitem.target = target;
    array::add_sorted(dots, newitem, 0, &function_568e9d1f);
    var_fa05e32a = dots[dots.size - 1].target;
    if (var_fa05e32a == target) {
        return -1;
    }
    return self function_cc4e7260(var_fa05e32a);
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 1, eflags: 0x2 linked
// Checksum 0x23a84228, Offset: 0x1eb8
// Size: 0xce
function function_2ebec96e(var_bf4c2932 = 0) {
    if (isdefined(self.var_25fa785) && isdefined(self.var_25fa785.lockon.var_d6c3c148)) {
        for (i = 0; i < self.var_25fa785.lockon.var_d6c3c148.size; i++) {
            self function_a8d75f2f(i, undefined, var_bf4c2932);
        }
    }
    self weaponlockremoveslot(-1);
    self.var_25fa785.lockon.var_d6c3c148 = [];
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 0, eflags: 0x2 linked
// Checksum 0xca627a5d, Offset: 0x1f90
// Size: 0xe6
function function_ddd62d1c() {
    self endon(#"death");
    self notify(#"hash_5527196024cbab2a");
    self endon(#"hash_5527196024cbab2a", #"hash_4e379ec4e6f3cb69");
    var_8c73eccc = int(getdvarfloat(#"hash_20ef93f02210f3f0", 0.25) / 20 * 1000);
    while (self.var_7a48f1af > 0) {
        waitframe(1);
        self.var_7a48f1af -= var_8c73eccc;
        if (self.var_7a48f1af < 0) {
            self.var_7a48f1af = 0;
        }
    }
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 0, eflags: 0x2 linked
// Checksum 0x95d0d5b7, Offset: 0x2080
// Size: 0x262
function function_92c4b561() {
    if (!isdefined(self.var_25fa785.lockon.var_1ce9ea0e) || self.var_25fa785.lockon.var_1ce9ea0e.size == 0) {
        return;
    }
    var_1ce9ea0e = [];
    foreach (target in self.var_25fa785.lockon.var_1ce9ea0e) {
        if (!isdefined(target)) {
            continue;
        }
        found = 0;
        if (self.var_25fa785.lockon.var_d6c3c148.size) {
            foreach (var_50af7828 in self.var_25fa785.lockon.var_d6c3c148) {
                if (!isdefined(var_50af7828.target)) {
                    continue;
                }
                if (var_50af7828.target == target) {
                    found = 1;
                    break;
                }
            }
        }
        if (!found) {
            target notify(#"ccom_lost_lock", {#owner:self});
            level notify(#"ccom_lost_lock", {#target:target, #owner:self});
            self function_bb2cd3c1(target);
            continue;
        }
        var_1ce9ea0e[var_1ce9ea0e.size] = target;
    }
    self.var_25fa785.lockon.var_1ce9ea0e = var_1ce9ea0e;
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 1, eflags: 0x2 linked
// Checksum 0x956a3382, Offset: 0x22f0
// Size: 0x10
function function_a73ea525(*weapon) {
    return true;
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 1, eflags: 0x2 linked
// Checksum 0xf987008e, Offset: 0x2308
// Size: 0x22
function function_80119fb6(*weapon) {
    return self getenemies();
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 4, eflags: 0x0
// Checksum 0x51b994e9, Offset: 0x2338
// Size: 0x32a
function function_d2bc8bb1(enemies, weapon, var_efb1ea62, earlyout = 0) {
    var_5c118373 = [];
    if (!isdefined(enemies) || enemies.size == 0) {
        return var_5c118373;
    }
    playerforward = anglestoforward(self getplayerangles());
    var_9c8f2bcc = self gettagorigin("tag_aim");
    foreach (enemy in enemies) {
        center = enemy getcentroid();
        dirtotarget = vectornormalize(center - var_9c8f2bcc);
        enemy.var_5425b76c = vectordot(dirtotarget, playerforward);
        var_3d797059 = isdefined(self.var_25fa785.lockon.var_3d797059) ? self.var_25fa785.lockon.var_3d797059 : 0.95;
        if (enemy.var_5425b76c < var_3d797059) {
            continue;
        }
        if (!function_e2ce3b3d(enemy, weapon)) {
            continue;
        }
        if (!self [[ var_efb1ea62 ]](enemy, weapon)) {
            continue;
        }
        eyepos = self geteye();
        pos = enemy getshootatpos();
        if (isdefined(pos)) {
            passed = bullettracepassed(eyepos, pos, 0, enemy, undefined, 1, 1);
            if (passed) {
                var_5c118373[var_5c118373.size] = enemy;
                if (earlyout) {
                    break;
                }
                continue;
            }
        }
        pos = enemy getcentroid();
        if (isdefined(pos)) {
            passed = bullettracepassed(eyepos, pos, 0, enemy, undefined, 1, 1);
            if (passed) {
                var_5c118373[var_5c118373.size] = enemy;
                if (earlyout) {
                    break;
                }
            }
        }
    }
    return var_5c118373;
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 6, eflags: 0x2 linked
// Checksum 0x9729ddc6, Offset: 0x2670
// Size: 0x90e
function function_4b7f8060(slot, weapon, maxtargets, var_e08793c0, var_efb1ea62, var_8ff7e677) {
    self notify(#"hash_28f4b4a3d8b7ffae");
    self endon(#"hash_28f4b4a3d8b7ffae", #"disconnect", #"game_ended", #"death");
    radius = self.var_25fa785.lockon.var_4ce73a98;
    if (!isdefined(radius)) {
        radius = 130;
    }
    self thread function_2b5f5ecf(weapon);
    self thread function_8c4799(weapon);
    if (!isdefined(maxtargets)) {
        maxtargets = getdvarint(#"scr_max_simlocks", 3);
    }
    if (maxtargets < 1) {
        maxtargets = 1;
    }
    if (maxtargets > 5) {
        maxtargets = 5;
    }
    maxrange = weapon.lockonmaxrange;
    if (!isdefined(maxrange)) {
        maxrange = 1500;
    }
    validtargets = [];
    dots = [];
    if (!isdefined(var_8ff7e677)) {
        var_8ff7e677 = &function_a73ea525;
    }
    if (!isdefined(var_efb1ea62)) {
        var_efb1ea62 = &function_a73ea525;
    }
    if (!isdefined(var_e08793c0)) {
        var_e08793c0 = &function_80119fb6;
    }
    while (!self [[ var_8ff7e677 ]](weapon)) {
        waitframe(1);
    }
    while (self [[ var_8ff7e677 ]](weapon)) {
        waitframe(1);
        self function_92c4b561();
        self function_2ebec96e();
        self.var_25fa785.lockon.var_4e8096b0 = 0;
        var_56842206 = self.var_25fa785.lockon.var_1ce9ea0e.size;
        enemies = self [[ var_e08793c0 ]](weapon);
        if (!isdefined(enemies) || enemies.size == 0) {
            self function_a1dd4489(undefined, 1);
            continue;
        }
        var_7bc97a0f = [];
        playerforward = anglestoforward(self getplayerangles());
        var_9c8f2bcc = self gettagorigin("tag_aim");
        foreach (enemy in enemies) {
            center = enemy getcentroid();
            dirtotarget = vectornormalize(center - var_9c8f2bcc);
            enemy.var_5425b76c = vectordot(dirtotarget, playerforward);
            var_3d797059 = isdefined(self.var_25fa785.lockon.var_3d797059) ? self.var_25fa785.lockon.var_3d797059 : 0.95;
            if (enemy.var_5425b76c > var_3d797059) {
                var_7bc97a0f[var_7bc97a0f.size] = enemy;
            }
        }
        if (var_7bc97a0f.size == 0) {
            self function_a1dd4489(undefined, 1);
            continue;
        }
        validtargets = [];
        potentialtargets = [];
        foreach (enemy in var_7bc97a0f) {
            if (!isdefined(enemy)) {
                continue;
            }
            if (!self function_2684c502(enemy, radius, weapon, maxrange, var_efb1ea62)) {
                continue;
            }
            validtargets[validtargets.size] = enemy;
        }
        dots = [];
        foreach (target in validtargets) {
            newitem = spawnstruct();
            newitem.dot = target.var_5425b76c;
            newitem.target = target;
            array::add_sorted(dots, newitem, 0, &function_568e9d1f);
        }
        if (dots.size) {
            i = 0;
            foreach (item in dots) {
                i++;
                if (i > maxtargets) {
                    break;
                }
                if (isdefined(item.target)) {
                    weapon_slot = self function_cc4e7260(item.target);
                    if (weapon_slot != -1) {
                        continue;
                    }
                    if (is_true(item.target.var_2285319)) {
                        foreach (other in self.var_25fa785.lockon.var_1ce9ea0e) {
                            if (other == item.target) {
                                continue;
                            }
                            if (is_true(other.var_2285319)) {
                                item.target = undefined;
                                break;
                            }
                        }
                    }
                    if (!isdefined(item.target)) {
                        continue;
                    }
                    slot = self function_dd8587b2(item.target, maxtargets);
                    if (slot == -1) {
                        continue;
                    }
                    if (!isinarray(self.var_25fa785.lockon.var_1ce9ea0e, item.target)) {
                        self.var_25fa785.lockon.var_1ce9ea0e[self.var_25fa785.lockon.var_1ce9ea0e.size] = item.target;
                    }
                    self function_5085f9ce(slot, item.target, maxrange, weapon, maxtargets);
                }
            }
            if (var_56842206 < self.var_25fa785.lockon.var_1ce9ea0e.size) {
                self playrumbleonentity("damage_light");
            }
        }
    }
    self notify(#"hash_28f4b4a3d8b7ffae");
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 1, eflags: 0x2 linked
// Checksum 0xac5c02eb, Offset: 0x2f88
// Size: 0x292
function function_b4c3d402(weapon) {
    if (self.var_25fa785.lockon.var_4e8096b0 !== 0 && (self.var_25fa785.lockon.var_d6c3c148.size == 0 || self.var_25fa785.lockon.var_4e8096b0 == 8)) {
        if (self.var_25fa785.lockon.var_4e8096b0 == 2 && isdefined(self.var_25fa785.lockon.var_bf4fab3f)) {
            var_a7e5784a = self function_c0251c1e(self.var_25fa785.lockon.var_bf4fab3f, 0);
            if (var_a7e5784a == 0) {
                self.var_25fa785.lockon.var_4e8096b0 = 1;
            }
        }
        switch (self.var_25fa785.lockon.var_4e8096b0) {
        case 2:
            self settargetwrongtypehint(weapon);
            break;
        case 3:
            self settargetoorhint(weapon);
            break;
        case 4:
            self settargetalreadyinusehint(weapon);
            break;
        case 1:
            self setnotargetshint(weapon);
            break;
        case 5:
            self setnolosontargetshint(weapon);
            break;
        case 6:
            self setdisabledtargethint(weapon);
            break;
        case 7:
            self settargetalreadytargetedhint(weapon);
            break;
        case 8:
            self settargetingabortedhint(weapon);
            break;
        }
        self.var_25fa785.lockon.var_4e8096b0 = 0;
    }
}

// Namespace namespace_8a67e6b6/namespace_8a67e6b6
// Params 4, eflags: 0x2 linked
// Checksum 0xf5a1d10, Offset: 0x3228
// Size: 0x172
function function_a1dd4489(var_bf4fab3f, var_4e8096b0, var_d217d303 = 1, priority = 1) {
    if (!isplayer(self) || !isdefined(self.var_25fa785)) {
        return;
    }
    if (var_d217d303 && !is_true(self.var_25fa785.lockon.var_45d4eb19)) {
        return;
    }
    if (!is_true(self.var_25fa785.lockon.var_d1052697)) {
        return;
    }
    if (priority) {
        if (var_4e8096b0 > self.var_25fa785.lockon.var_4e8096b0) {
            self.var_25fa785.lockon.var_4e8096b0 = var_4e8096b0;
            self.var_25fa785.lockon.var_bf4fab3f = var_bf4fab3f;
        }
        return;
    }
    self.var_25fa785.lockon.var_4e8096b0 = var_4e8096b0;
    self.var_25fa785.lockon.var_bf4fab3f = var_bf4fab3f;
}

