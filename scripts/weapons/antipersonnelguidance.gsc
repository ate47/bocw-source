// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace singlelockap_guidance;

// Namespace singlelockap_guidance/antipersonnelguidance
// Params 0, eflags: 0x5
// Checksum 0x1b961633, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"singlelockap_guidance", &preinit, undefined, undefined, undefined);
}

// Namespace singlelockap_guidance/antipersonnelguidance
// Params 0, eflags: 0x4
// Checksum 0x73787166, Offset: 0x118
// Size: 0x24
function private preinit() {
    callback::on_spawned(&on_player_spawned);
}

// Namespace singlelockap_guidance/antipersonnelguidance
// Params 0, eflags: 0x0
// Checksum 0xda4e63c4, Offset: 0x148
// Size: 0x3c
function on_player_spawned() {
    self endon(#"disconnect");
    self clearaptarget();
    thread aptoggleloop();
}

// Namespace singlelockap_guidance/antipersonnelguidance
// Params 2, eflags: 0x0
// Checksum 0xb6b6ee5e, Offset: 0x190
// Size: 0x214
function clearaptarget(weapon, whom) {
    if (!isdefined(self.multilocklist)) {
        self.multilocklist = [];
    }
    if (isdefined(whom)) {
        for (i = 0; i < self.multilocklist.size; i++) {
            if (whom.aptarget == self.multilocklist[i].aptarget) {
                self.multilocklist[i].aptarget notify(#"missile_unlocked");
                self notify("stop_sound" + whom.apsoundid);
                self weaponlockremoveslot(i);
                arrayremovevalue(self.multilocklist, whom, 0);
                break;
            }
        }
    } else {
        for (i = 0; i < self.multilocklist.size; i++) {
            self.multilocklist[i].aptarget notify(#"missile_unlocked");
            self notify("stop_sound" + self.multilocklist[i].apsoundid);
        }
        self.multilocklist = [];
    }
    if (self.multilocklist.size == 0) {
        self stoprumble("stinger_lock_rumble");
        self weaponlockremoveslot(-1);
        if (isdefined(weapon)) {
            if (isdefined(weapon.lockonseekersearchsound)) {
                self stoplocalsound(weapon.lockonseekersearchsound);
            }
            if (isdefined(weapon.lockonseekerlockedsound)) {
                self stoplocalsound(weapon.lockonseekerlockedsound);
            }
        }
    }
}

// Namespace singlelockap_guidance/missile_fire
// Params 1, eflags: 0x20
// Checksum 0x1d3950e0, Offset: 0x3b0
// Size: 0x140
function event_handler[missile_fire] function_dc710809(eventstruct) {
    if (!isplayer(self)) {
        return;
    }
    missile = eventstruct.projectile;
    weapon = eventstruct.weapon;
    if (weapon.lockontype == "AP Single") {
        foreach (target in self.multilocklist) {
            if (isdefined(target.aptarget) && target.aplockfinalized) {
                target.aptarget notify(#"stinger_fired_at_me", {#projectile:missile, #weapon:weapon, #attacker:self});
            }
        }
    }
}

// Namespace singlelockap_guidance/antipersonnelguidance
// Params 0, eflags: 0x0
// Checksum 0xa1cae28e, Offset: 0x4f8
// Size: 0x17e
function aptoggleloop() {
    self endon(#"death");
    for (;;) {
        waitresult = self waittill(#"weapon_change");
        for (weapon = waitresult.weapon; weapon.lockontype == "AP Single"; weapon = self getcurrentweapon()) {
            abort = 0;
            while (!(self playerads() == 1)) {
                waitframe(1);
                currentweapon = self getcurrentweapon();
                if (currentweapon.lockontype != "AP Single") {
                    abort = 1;
                    break;
                }
            }
            if (abort) {
                break;
            }
            self thread aplockloop(weapon);
            while (self playerads() == 1) {
                waitframe(1);
            }
            self notify(#"ap_off");
            self clearaptarget(weapon);
        }
    }
}

// Namespace singlelockap_guidance/antipersonnelguidance
// Params 1, eflags: 0x0
// Checksum 0x7dee5df2, Offset: 0x680
// Size: 0x4c8
function aplockloop(weapon) {
    self endon(#"disconnect", #"death", #"ap_off");
    locklength = self getlockonspeed();
    self.multilocklist = [];
    for (;;) {
        waitframe(1);
        do {
            done = 1;
            foreach (target in self.multilocklist) {
                if (target.aplockfinalized) {
                    if (!isstillvalidtarget(weapon, target.aptarget)) {
                        self clearaptarget(weapon, target);
                        done = 0;
                        break;
                    }
                }
            }
        } while (!done);
        inlockingstate = 0;
        do {
            done = 1;
            for (i = 0; i < self.multilocklist.size; i++) {
                target = self.multilocklist[i];
                if (target.aplocking) {
                    if (!isstillvalidtarget(weapon, target.aptarget)) {
                        self clearaptarget(weapon, target);
                        done = 0;
                        break;
                    }
                    inlockingstate = 1;
                    timepassed = gettime() - target.aplockstarttime;
                    if (timepassed < locklength) {
                        continue;
                    }
                    assert(isdefined(target.aptarget));
                    target.aplockfinalized = 1;
                    target.aplocking = 0;
                    target.aplockpending = 0;
                    self weaponlockfinalize(target.aptarget, i);
                    self thread seekersound(weapon.lockonseekerlockedsound, weapon.lockonseekerlockedsoundloops, target.apsoundid);
                    target.aptarget notify(#"missile_lock", {#attacker:self, #weapon:weapon});
                }
            }
        } while (!done);
        if (!inlockingstate) {
            do {
                done = 1;
                for (i = 0; i < self.multilocklist.size; i++) {
                    target = self.multilocklist[i];
                    if (target.aplockpending) {
                        if (!isstillvalidtarget(weapon, target.aptarget)) {
                            self clearaptarget(weapon, target);
                            done = 0;
                            break;
                        }
                        target.aplockstarttime = gettime();
                        target.aplockfinalized = 0;
                        target.aplockpending = 0;
                        target.aplocking = 1;
                        self thread seekersound(weapon.lockonseekersearchsound, weapon.lockonseekersearchsoundloops, target.apsoundid);
                        done = 1;
                        break;
                    }
                }
            } while (!done);
        }
        if (self.multilocklist.size >= 1) {
            continue;
        }
        besttarget = self getbesttarget(weapon);
        if (!isdefined(besttarget) && self.multilocklist.size == 0) {
            continue;
        }
        if (isdefined(besttarget) && self.multilocklist.size < 1) {
            self weaponlockstart(besttarget.aptarget, self.multilocklist.size);
            self.multilocklist[self.multilocklist.size] = besttarget;
        }
    }
}

// Namespace singlelockap_guidance/antipersonnelguidance
// Params 1, eflags: 0x0
// Checksum 0x7fe3dfc4, Offset: 0xb50
// Size: 0x48e
function getbesttarget(*weapon) {
    playertargets = getplayers();
    vehicletargets = target_getarray();
    targetsall = getaiteamarray();
    targetsall = arraycombine(targetsall, playertargets, 0, 0);
    targetsall = arraycombine(targetsall, vehicletargets, 0, 0);
    targetsvalid = [];
    for (idx = 0; idx < targetsall.size; idx++) {
        if (level.teambased) {
            if (isdefined(targetsall[idx].team) && targetsall[idx].team != self.team) {
                if (self insideapreticlenolock(targetsall[idx])) {
                    if (self locksighttest(targetsall[idx])) {
                        targetsvalid[targetsvalid.size] = targetsall[idx];
                    }
                }
            }
            continue;
        }
        if (self insideapreticlenolock(targetsall[idx])) {
            if (isdefined(targetsall[idx].owner) && self != targetsall[idx].owner) {
                if (self locksighttest(targetsall[idx])) {
                    targetsvalid[targetsvalid.size] = targetsall[idx];
                }
            }
        }
    }
    if (targetsvalid.size == 0) {
        return undefined;
    }
    playerforward = anglestoforward(self getplayerangles());
    dots = [];
    for (i = 0; i < targetsvalid.size; i++) {
        newitem = spawnstruct();
        newitem.index = i;
        newitem.dot = vectordot(playerforward, vectornormalize(targetsvalid[i].origin - self.origin));
        array::add_sorted(dots, newitem, 0, &targetinsertionsortcompare);
    }
    index = 0;
    foreach (dot in dots) {
        found = 0;
        foreach (lock in self.multilocklist) {
            if (lock.aptarget == targetsvalid[dot.index]) {
                found = 1;
            }
        }
        if (found) {
            continue;
        }
        newentry = spawnstruct();
        newentry.aptarget = targetsvalid[dot.index];
        newentry.aplockstarttime = gettime();
        newentry.aplockpending = 1;
        newentry.aplocking = 0;
        newentry.aplockfinalized = 0;
        newentry.aplostsightlinetime = 0;
        newentry.apsoundid = randomint(2147483647);
        return newentry;
    }
    return undefined;
}

// Namespace singlelockap_guidance/antipersonnelguidance
// Params 2, eflags: 0x0
// Checksum 0xc5df6cc8, Offset: 0xfe8
// Size: 0x4e
function targetinsertionsortcompare(a, b) {
    if (a.dot < b.dot) {
        return -1;
    }
    if (a.dot > b.dot) {
        return 1;
    }
    return 0;
}

// Namespace singlelockap_guidance/antipersonnelguidance
// Params 1, eflags: 0x0
// Checksum 0x7aebbced, Offset: 0x1040
// Size: 0x4a
function insideapreticlenolock(target) {
    radius = self getlockonradius();
    return target_isincircle(target, self, 65, radius);
}

// Namespace singlelockap_guidance/antipersonnelguidance
// Params 1, eflags: 0x0
// Checksum 0xd64505a9, Offset: 0x1098
// Size: 0x4a
function insideapreticlelocked(target) {
    radius = self getlockonlossradius();
    return target_isincircle(target, self, 65, radius);
}

// Namespace singlelockap_guidance/antipersonnelguidance
// Params 2, eflags: 0x0
// Checksum 0x8de0b117, Offset: 0x10f0
// Size: 0x6e
function isstillvalidtarget(*weapon, ent) {
    if (!isdefined(ent)) {
        return false;
    }
    if (!insideapreticlelocked(ent)) {
        return false;
    }
    if (!isalive(ent)) {
        return false;
    }
    if (!locksighttest(ent)) {
        return false;
    }
    return true;
}

// Namespace singlelockap_guidance/antipersonnelguidance
// Params 3, eflags: 0x0
// Checksum 0x932a1bcf, Offset: 0x1168
// Size: 0xec
function seekersound(alias, looping, id) {
    self notify("stop_sound" + id);
    self endon("stop_sound" + id, #"disconnect", #"death");
    if (isdefined(alias)) {
        self playrumbleonentity("stinger_lock_rumble");
        time = soundgetplaybacktime(alias) * 0.001;
        do {
            self playlocalsound(alias);
            wait(time);
        } while (looping);
        self stoprumble("stinger_lock_rumble");
    }
}

// Namespace singlelockap_guidance/antipersonnelguidance
// Params 1, eflags: 0x0
// Checksum 0xaa3c1938, Offset: 0x1260
// Size: 0x176
function locksighttest(target) {
    eyepos = self geteye();
    if (!isdefined(target)) {
        return false;
    }
    if (!isalive(target)) {
        return false;
    }
    if (is_true(target.var_e8ec304d)) {
        return false;
    }
    pos = target getshootatpos();
    if (isdefined(pos)) {
        passed = bullettracepassed(eyepos, pos, 0, target, undefined, 1, 1);
        if (passed) {
            return true;
        }
    }
    pos = target getcentroid();
    if (isdefined(pos)) {
        passed = bullettracepassed(eyepos, pos, 0, target, undefined, 1, 1);
        if (passed) {
            return true;
        }
    }
    pos = target.origin;
    passed = bullettracepassed(eyepos, pos, 0, target, undefined, 1, 1);
    if (passed) {
        return true;
    }
    return false;
}

