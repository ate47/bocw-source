// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\heatseekingmissile.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace multilockap_guidance;

// Namespace multilockap_guidance/multilockapguidance
// Params 0, eflags: 0x5
// Checksum 0xc9128b00, Offset: 0xd8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"multilockap_guidance", &preinit, undefined, undefined, undefined);
}

// Namespace multilockap_guidance/multilockapguidance
// Params 0, eflags: 0x6 linked
// Checksum 0xd676ba10, Offset: 0x120
// Size: 0x4c
function private preinit() {
    callback::on_spawned(&on_player_spawned);
    setdvar(#"scr_max_simlocks", 3);
}

// Namespace multilockap_guidance/multilockapguidance
// Params 0, eflags: 0x2 linked
// Checksum 0xcc643e73, Offset: 0x178
// Size: 0x4c
function on_player_spawned() {
    self endon(#"disconnect");
    self clearaptarget();
    self callback::on_weapon_change(&on_weapon_change);
}

// Namespace multilockap_guidance/multilockapguidance
// Params 2, eflags: 0x2 linked
// Checksum 0x4fc2ee23, Offset: 0x1d0
// Size: 0x22c
function clearaptarget(weapon, whom) {
    if (!isdefined(self.multilocklist)) {
        self.multilocklist = [];
    }
    if (isdefined(whom)) {
        for (i = 0; i < self.multilocklist.size; i++) {
            if (whom.aptarget == self.multilocklist[i].aptarget) {
                if (isdefined(self.multilocklist[i].aptarget)) {
                    self.multilocklist[i].aptarget notify(#"missile_unlocked");
                }
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

// Namespace multilockap_guidance/missile_fire
// Params 1, eflags: 0x20
// Checksum 0xd8848fdb, Offset: 0x408
// Size: 0x118
function event_handler[missile_fire] function_bfb94991(eventstruct) {
    if (!isplayer(self)) {
        return;
    }
    missile = eventstruct.projectile;
    weapon = eventstruct.weapon;
    if (weapon.lockontype == "AP Multi") {
        foreach (target in self.multilocklist) {
            if (isdefined(target.aptarget) && target.aplockfinalized) {
                target.aptarget heatseekingmissile::function_a439ae56(missile, weapon, self);
            }
        }
    }
}

// Namespace multilockap_guidance/multilockapguidance
// Params 1, eflags: 0x2 linked
// Checksum 0x5f047b75, Offset: 0x528
// Size: 0x14a
function on_weapon_change(params) {
    for (weapon = params.weapon; weapon.lockontype == "AP Multi"; weapon = self getcurrentweapon()) {
        abort = 0;
        while (!(self playerads() == 1)) {
            waitframe(1);
            currentweapon = self getcurrentweapon();
            if (currentweapon.lockontype != "AP Multi") {
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

// Namespace multilockap_guidance/multilockapguidance
// Params 1, eflags: 0x2 linked
// Checksum 0x38370ea, Offset: 0x680
// Size: 0x538
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
                    target.aptarget heatseekingmissile::function_5e6cd0ab(self getcurrentweapon(), self);
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
        if (self.multilocklist.size >= getdvarint(#"scr_max_simlocks", 0) || self.multilocklist.size >= self getweaponammoclip(weapon)) {
            continue;
        }
        besttarget = self getbesttarget(weapon);
        if (!isdefined(besttarget) && self.multilocklist.size == 0) {
            continue;
        }
        if (isdefined(besttarget) && self.multilocklist.size < getdvarint(#"scr_max_simlocks", 0) && self.multilocklist.size < self getweaponammoclip(weapon)) {
            self weaponlockstart(besttarget.aptarget, self.multilocklist.size);
            self.multilocklist[self.multilocklist.size] = besttarget;
        }
    }
}

// Namespace multilockap_guidance/multilockapguidance
// Params 1, eflags: 0x2 linked
// Checksum 0x2aa50dd6, Offset: 0xbc0
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

// Namespace multilockap_guidance/multilockapguidance
// Params 2, eflags: 0x2 linked
// Checksum 0x8666a179, Offset: 0x1058
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

// Namespace multilockap_guidance/multilockapguidance
// Params 1, eflags: 0x2 linked
// Checksum 0x435006ff, Offset: 0x10b0
// Size: 0x4a
function insideapreticlenolock(target) {
    radius = self getlockonradius();
    return target_isincircle(target, self, 65, radius);
}

// Namespace multilockap_guidance/multilockapguidance
// Params 1, eflags: 0x2 linked
// Checksum 0xa3a57790, Offset: 0x1108
// Size: 0x4a
function insideapreticlelocked(target) {
    radius = self getlockonlossradius();
    return target_isincircle(target, self, 65, radius);
}

// Namespace multilockap_guidance/multilockapguidance
// Params 2, eflags: 0x2 linked
// Checksum 0xee07ad3, Offset: 0x1160
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

// Namespace multilockap_guidance/multilockapguidance
// Params 3, eflags: 0x2 linked
// Checksum 0x4b93a4bd, Offset: 0x11d8
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

// Namespace multilockap_guidance/multilockapguidance
// Params 1, eflags: 0x2 linked
// Checksum 0x2d1cc863, Offset: 0x12d0
// Size: 0x156
function locksighttest(target) {
    eyepos = self geteye();
    if (!isdefined(target)) {
        return false;
    }
    if (!isalive(target)) {
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

