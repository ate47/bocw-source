// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weapons.gsc;
#using scripts\core_common\throttle_shared.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\ai\systems\init.gsc;

#namespace shared;

// Namespace shared/shared
// Params 0, eflags: 0x1
// Checksum 0x27de8957, Offset: 0x160
// Size: 0x50
function autoexec main() {
    if (!isdefined(level.ai_weapon_throttle)) {
        level.ai_weapon_throttle = new throttle();
        [[ level.ai_weapon_throttle ]]->initialize(1, 0.1);
    }
}

// Namespace shared/shared
// Params 3, eflags: 0x6 linked
// Checksum 0xbc59f514, Offset: 0x1b8
// Size: 0x9c
function private _throwstowedweapon(entity, weapon, weaponmodel) {
    entity waittill(#"death");
    if (isdefined(entity)) {
        weaponmodel unlink();
        entity throwweapon(weapon, gettagforpos("back"), 0, 0);
    }
    weaponmodel delete();
}

// Namespace shared/shared
// Params 3, eflags: 0x0
// Checksum 0x691d196f, Offset: 0x260
// Size: 0xcc
function stowweapon(weapon, positionoffset, orientationoffset) {
    entity = self;
    if (!isdefined(positionoffset)) {
        positionoffset = (0, 0, 0);
    }
    if (!isdefined(orientationoffset)) {
        orientationoffset = (0, 0, 0);
    }
    weaponmodel = spawn("script_model", (0, 0, 0));
    weaponmodel setmodel(weapon.worldmodel);
    weaponmodel linkto(entity, "tag_stowed_back", positionoffset, orientationoffset);
    entity thread _throwstowedweapon(entity, weapon, weaponmodel);
}

// Namespace shared/shared
// Params 2, eflags: 0x2 linked
// Checksum 0xbc61502, Offset: 0x338
// Size: 0x3fc
function placeweaponon(weapon, position) {
    self notify(#"weapon_position_change");
    if (isstring(weapon) || ishash(weapon)) {
        weapon = getweapon(weapon);
    }
    if (!isdefined(self.weaponinfo[weapon.name])) {
        self init::initweapon(weapon);
    }
    curposition = self.weaponinfo[weapon.name].position;
    assert(curposition == "<unknown string>" || self.a.weaponpos[curposition] == weapon);
    if (!isarray(self.a.weaponpos)) {
        self.a.weaponpos = [];
    }
    assert(isarray(self.a.weaponpos));
    assert(position == "<unknown string>" || isdefined(self.a.weaponpos[position]), "<unknown string>" + position + "<unknown string>");
    assert(isweapon(weapon));
    if (position != "none" && self.a.weaponpos[position] == weapon) {
        return;
    }
    self detachallweaponmodels();
    if (curposition != "none") {
        self detachweapon(weapon);
    }
    if (position == "none") {
        self updateattachedweaponmodels();
        self aiutility::setcurrentweapon(level.weaponnone);
        return;
    }
    if (self.a.weaponpos[position] != level.weaponnone) {
        self detachweapon(self.a.weaponpos[position]);
    }
    if (position == "left" || position == "right") {
        self updatescriptweaponinfoandpos(weapon, position);
        self aiutility::setcurrentweapon(weapon);
    } else {
        self updatescriptweaponinfoandpos(weapon, position);
    }
    self updateattachedweaponmodels();
    assert(self.a.weaponpos[#"left"] == level.weaponnone || self.a.weaponpos[#"right"] == level.weaponnone);
}

// Namespace shared/shared
// Params 1, eflags: 0x2 linked
// Checksum 0x17d96dc4, Offset: 0x740
// Size: 0x62
function detachweapon(weapon) {
    self.a.weaponpos[self.weaponinfo[weapon.name].position] = level.weaponnone;
    self.weaponinfo[weapon.name].position = "none";
}

// Namespace shared/shared
// Params 2, eflags: 0x2 linked
// Checksum 0x56f8584d, Offset: 0x7b0
// Size: 0x48
function updatescriptweaponinfoandpos(weapon, position) {
    self.weaponinfo[weapon.name].position = position;
    self.a.weaponpos[position] = weapon;
}

// Namespace shared/shared
// Params 0, eflags: 0x2 linked
// Checksum 0x4638c155, Offset: 0x800
// Size: 0xb4
function detachallweaponmodels() {
    if (isdefined(self.weapon_positions)) {
        for (index = 0; index < self.weapon_positions.size; index++) {
            weapon = self.a.weaponpos[self.weapon_positions[index]];
            if (weapon == level.weaponnone) {
                continue;
            }
            self setactorweapon(level.weaponnone, self getactorweaponoptions(), self function_6a055ef4());
        }
    }
}

// Namespace shared/shared
// Params 0, eflags: 0x2 linked
// Checksum 0x8ad5b996, Offset: 0x8c0
// Size: 0x12c
function updateattachedweaponmodels() {
    if (isdefined(self.weapon_positions)) {
        for (index = 0; index < self.weapon_positions.size; index++) {
            weapon = self.a.weaponpos[self.weapon_positions[index]];
            if (weapon == level.weaponnone) {
                continue;
            }
            if (self.weapon_positions[index] != "right") {
                continue;
            }
            self setactorweapon(weapon, self getactorweaponoptions(), self function_6a055ef4());
            if (self.weaponinfo[weapon.name].useclip && !self.weaponinfo[weapon.name].hasclip) {
                self hidepart("tag_clip");
            }
        }
    }
}

// Namespace shared/shared
// Params 1, eflags: 0x2 linked
// Checksum 0xb2e5b304, Offset: 0x9f8
// Size: 0xd2
function gettagforpos(position) {
    switch (position) {
    case #"chest":
        return "tag_weapon_chest";
    case #"back":
        return "tag_stowed_back";
    case #"left":
        return "tag_weapon_left";
    case #"right":
        return "tag_weapon_right";
    case #"hand":
        return "tag_inhand";
    default:
        assertmsg("<unknown string>" + position);
        break;
    }
}

// Namespace shared/shared
// Params 0, eflags: 0x2 linked
// Checksum 0x941b3f63, Offset: 0xad8
// Size: 0x4c
function function_403d795c() {
    self endon(#"death");
    self waittilltimeout(3, #"stationary");
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace shared/shared
// Params 4, eflags: 0x2 linked
// Checksum 0x9a8032eb, Offset: 0xb30
// Size: 0x2ce
function throwweapon(weapon, positiontag, scavenger, deleteweaponafterdropping) {
    if (!getdvarint(#"hash_6b1268d7e44b1a20", 0) && (positiontag == "tag_weapon_right" || positiontag == "tag_weapon_left")) {
        throwweapon = self dropweapon(weapon, positiontag);
        if (isdefined(throwweapon)) {
            self weapons::dropweaponfordeathlaunch(throwweapon, 50, self.angles, weapon, 0.5, 0.15);
        }
        if (deleteweaponafterdropping) {
            throwweapon thread function_403d795c();
            return;
        }
        return throwweapon;
    }
    waittime = 0.1;
    linearscalar = 2;
    angularscalar = 10;
    startposition = self gettagorigin(positiontag);
    startangles = self gettagangles(positiontag);
    if (!isdefined(startposition) || !isdefined(startangles)) {
        return;
    }
    wait(waittime);
    if (isdefined(self)) {
        endposition = self gettagorigin(positiontag);
        endangles = self gettagangles(positiontag);
        linearvelocity = (endposition - startposition) * 1 / waittime * linearscalar;
        angularvelocity = vectornormalize(endangles - startangles) * angularscalar;
        throwweapon = self dropweapon(weapon, positiontag, linearvelocity, angularvelocity, scavenger);
        if (isdefined(throwweapon)) {
            throwweapon setcontents(throwweapon setcontents(0) & ~(32768 | 16777216 | 2097152 | 8388608));
        }
        if (deleteweaponafterdropping) {
            throwweapon delete();
            return;
        }
        return throwweapon;
    }
}

// Namespace shared/shared
// Params 0, eflags: 0x2 linked
// Checksum 0xc140f923, Offset: 0xe08
// Size: 0x314
function dropaiweapon() {
    self endon(#"death");
    if (self.weapon == level.weaponnone) {
        return;
    }
    if (is_true(self.script_nodropsecondaryweapon) && self.weapon == self.initial_secondaryweapon) {
        println("<unknown string>" + self.weapon.name + "<unknown string>");
        return;
    } else if (is_true(self.script_nodropsidearm) && self.weapon == self.sidearm) {
        println("<unknown string>" + self.weapon.name + "<unknown string>");
        return;
    }
    [[ level.ai_weapon_throttle ]]->waitinqueue(self);
    current_weapon = self.weapon;
    dropweaponname = player_weapon_drop(current_weapon);
    position = "right";
    if (isdefined(self.weaponinfo[current_weapon.name])) {
        position = self.weaponinfo[current_weapon.name].position;
    }
    shoulddropweapon = !isdefined(self.dontdropweapon) || self.dontdropweapon === 0;
    shoulddeleteafterdropping = current_weapon == getweapon("riotshield");
    if (current_weapon.isscavengable == 0) {
        shoulddropweapon = 0;
    }
    if (shoulddropweapon && self.dropweapon) {
        self.dontdropweapon = 1;
        positiontag = gettagforpos(position);
        throwweapon(dropweaponname, positiontag, 0, shoulddeleteafterdropping);
    }
    if (self.weapon != level.weaponnone) {
        placeweaponon(current_weapon, "none");
        if (self.weapon == self.primaryweapon) {
            self aiutility::setprimaryweapon(level.weaponnone);
        } else if (self.weapon == self.secondaryweapon) {
            self aiutility::setsecondaryweapon(level.weaponnone);
        }
    }
    self aiutility::setcurrentweapon(level.weaponnone);
}

// Namespace shared/shared
// Params 0, eflags: 0x0
// Checksum 0xbe075ccc, Offset: 0x1128
// Size: 0x3d2
function dropallaiweapons() {
    if (is_true(self.a.dropping_weapons)) {
        return;
    }
    if (!self.dropweapon) {
        if (self.weapon != level.weaponnone) {
            placeweaponon(self.weapon, "none");
            self aiutility::setcurrentweapon(level.weaponnone);
        }
        return;
    }
    self.a.dropping_weapons = 1;
    self detachallweaponmodels();
    droppedsidearm = 0;
    if (isdefined(self.weapon_positions)) {
        for (index = 0; index < self.weapon_positions.size; index++) {
            weapon = self.a.weaponpos[self.weapon_positions[index]];
            if (weapon != level.weaponnone) {
                self.weaponinfo[weapon.name].position = "none";
                self.a.weaponpos[self.weapon_positions[index]] = level.weaponnone;
                if (is_true(self.script_nodropsecondaryweapon) && weapon == self.initial_secondaryweapon) {
                    println("<unknown string>" + weapon.name + "<unknown string>");
                    continue;
                }
                if (is_true(self.script_nodropsidearm) && weapon == self.sidearm) {
                    println("<unknown string>" + weapon.name + "<unknown string>");
                    continue;
                }
                velocity = self getvelocity();
                speed = length(velocity) * 0.5;
                weapon = player_weapon_drop(weapon);
                droppedweapon = self dropweapon(weapon, self.weapon_positions[index], speed);
                if (self.sidearm != level.weaponnone) {
                    if (weapon == self.sidearm) {
                        droppedsidearm = 1;
                    }
                }
            }
        }
    }
    if (!droppedsidearm && self.sidearm != level.weaponnone) {
        if (randomint(100) <= 10) {
            velocity = self getvelocity();
            speed = length(velocity) * 0.5;
            droppedweapon = self dropweapon(self.sidearm, "chest", speed);
        }
    }
    self aiutility::setcurrentweapon(level.weaponnone);
    self.a.dropping_weapons = undefined;
}

// Namespace shared/shared
// Params 1, eflags: 0x2 linked
// Checksum 0xb61fbaaa, Offset: 0x1508
// Size: 0x10
function player_weapon_drop(weapon) {
    return weapon;
}

// Namespace shared/shared
// Params 4, eflags: 0x2 linked
// Checksum 0xd7903428, Offset: 0x1520
// Size: 0x24
function handlenotetrack(*note, *flagname, *customfunction, *var1) {
    
}

// Namespace shared/shared
// Params 4, eflags: 0x2 linked
// Checksum 0xcc621044, Offset: 0x1550
// Size: 0xa8
function donotetracks(flagname, customfunction, *debugidentifier, var1) {
    for (;;) {
        waitresult = self waittill(customfunction);
        note = waitresult.notetrack;
        if (!isdefined(note)) {
            note = "undefined";
        }
        val = self handlenotetrack(note, customfunction, debugidentifier, var1);
        if (isdefined(val)) {
            return val;
        }
    }
}

// Namespace shared/shared
// Params 3, eflags: 0x2 linked
// Checksum 0x8297e2c7, Offset: 0x1600
// Size: 0xe0
function donotetracksintercept(flagname, interceptfunction, *debugidentifier) {
    assert(isdefined(debugidentifier));
    for (;;) {
        waitresult = self waittill(interceptfunction);
        note = waitresult.notetrack;
        if (!isdefined(note)) {
            note = "undefined";
        }
        intercepted = [[ debugidentifier ]](note);
        if (isdefined(intercepted) && intercepted) {
            continue;
        }
        val = self handlenotetrack(note, interceptfunction);
        if (isdefined(val)) {
            return val;
        }
    }
}

// Namespace shared/shared
// Params 2, eflags: 0x0
// Checksum 0xc5def094, Offset: 0x16e8
// Size: 0xb6
function donotetrackspostcallback(flagname, postfunction) {
    assert(isdefined(postfunction));
    for (;;) {
        waitresult = self waittill(flagname);
        note = waitresult.notetrack;
        if (!isdefined(note)) {
            note = "undefined";
        }
        val = self handlenotetrack(note, flagname);
        [[ postfunction ]](note);
        if (isdefined(val)) {
            return val;
        }
    }
}

// Namespace shared/shared
// Params 4, eflags: 0x2 linked
// Checksum 0x35cdfa54, Offset: 0x17a8
// Size: 0x4c
function donotetracksforever(flagname, killstring, customfunction, debugidentifier) {
    donotetracksforeverproc(&donotetracks, flagname, killstring, customfunction, debugidentifier);
}

// Namespace shared/shared
// Params 4, eflags: 0x2 linked
// Checksum 0x318508a9, Offset: 0x1800
// Size: 0x4c
function donotetracksforeverintercept(flagname, killstring, interceptfunction, debugidentifier) {
    donotetracksforeverproc(&donotetracksintercept, flagname, killstring, interceptfunction, debugidentifier);
}

// Namespace shared/shared
// Params 5, eflags: 0x2 linked
// Checksum 0x50ac9dca, Offset: 0x1858
// Size: 0x146
function donotetracksforeverproc(notetracksfunc, flagname, killstring, customfunction, debugidentifier) {
    if (isdefined(killstring)) {
        self endon(killstring);
    }
    self endon(#"killanimscript");
    if (!isdefined(debugidentifier)) {
        debugidentifier = "undefined";
    }
    for (;;) {
        time = gettime();
        returnednote = [[ notetracksfunc ]](flagname, customfunction, debugidentifier);
        timetaken = gettime() - time;
        if (timetaken < 0.05) {
            time = gettime();
            returnednote = [[ notetracksfunc ]](flagname, customfunction, debugidentifier);
            timetaken = gettime() - time;
            if (timetaken < 0.05) {
                println(gettime() + "<unknown string>" + debugidentifier + "<unknown string>" + flagname + "<unknown string>" + returnednote + "<unknown string>");
                wait(0.05 - timetaken);
            }
        }
    }
}

// Namespace shared/shared
// Params 4, eflags: 0x0
// Checksum 0xd3197a00, Offset: 0x19a8
// Size: 0x7c
function donotetracksfortime(time, flagname, customfunction, debugidentifier) {
    ent = spawnstruct();
    ent thread donotetracksfortimeendnotify(time);
    donotetracksfortimeproc(&donotetracksforever, time, flagname, customfunction, debugidentifier, ent);
}

// Namespace shared/shared
// Params 4, eflags: 0x0
// Checksum 0x3c7b5388, Offset: 0x1a30
// Size: 0x7c
function donotetracksfortimeintercept(time, flagname, interceptfunction, debugidentifier) {
    ent = spawnstruct();
    ent thread donotetracksfortimeendnotify(time);
    donotetracksfortimeproc(&donotetracksforeverintercept, time, flagname, interceptfunction, debugidentifier, ent);
}

// Namespace shared/shared
// Params 6, eflags: 0x2 linked
// Checksum 0xe217858b, Offset: 0x1ab8
// Size: 0x5e
function donotetracksfortimeproc(donotetracksforeverfunc, *time, flagname, customfunction, debugidentifier, ent) {
    ent endon(#"stop_notetracks");
    [[ time ]](flagname, undefined, customfunction, debugidentifier);
}

// Namespace shared/shared
// Params 1, eflags: 0x2 linked
// Checksum 0x35b3e1d8, Offset: 0x1b20
// Size: 0x26
function donotetracksfortimeendnotify(time) {
    wait(time);
    self notify(#"stop_notetracks");
}

/#

    // Namespace shared/event_39e29b54
    // Params 1, eflags: 0x20
    // Checksum 0x384ba8a4, Offset: 0x1b50
    // Size: 0x10
    function event_handler[event_39e29b54] function_d0b05b9e(*eventstruct) {
        
    }

#/
