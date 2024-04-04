// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\sound_shared.gsc;

#namespace zombie_shared;

// Namespace zombie_shared/zombie_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xafc91147, Offset: 0x110
// Size: 0x2da
function handlenotetrack(note, *flagname, customfunction, var1) {
    switch (flagname) {
    case #"undefined":
    case #"end":
    case #"finish":
        return flagname;
    case #"hash_701bc5c059dfaa52":
        self thread sound::play_in_space("fly_gear_enemy", self gettagorigin("TAG_WEAPON_RIGHT"));
        break;
    case #"hash_5f5e275b9f3b93ee":
        self thread sound::play_in_space("fly_gear_enemy_large", self gettagorigin("TAG_WEAPON_RIGHT"));
        break;
    case #"no death":
        self.a.nodeath = 1;
        break;
    case #"no pain":
        self.allowpain = 0;
        break;
    case #"hash_50c6c08f5de3ec2a":
        self.allowpain = 1;
        break;
    case #"anim_melee = right":
    case #"hash_39ec7b0969bab796":
        self.a.meleestate = "right";
        break;
    case #"hash_1791db148d16d825":
    case #"hash_6b554a9080ec8b07":
        self.a.meleestate = "left";
        break;
    case #"swap taghelmet to tagleft":
        if (isdefined(self.hatmodel)) {
            if (isdefined(self.helmetsidemodel)) {
                self detach(self.helmetsidemodel, "TAG_HELMETSIDE");
                self.helmetsidemodel = undefined;
            }
            self detach(self.hatmodel, "");
            self attach(self.hatmodel, "TAG_WEAPON_LEFT");
            self.hatmodel = undefined;
        }
        break;
    default:
        if (isdefined(customfunction)) {
            if (!isdefined(var1)) {
                return [[ customfunction ]](flagname);
            } else {
                return [[ customfunction ]](flagname, var1);
            }
        }
        break;
    }
}

// Namespace zombie_shared/zombie_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x3573c3ac, Offset: 0x3f8
// Size: 0xa0
function donotetracks(flagname, customfunction, var1) {
    for (;;) {
        waitresult = self waittill(flagname);
        note = waitresult.notetrack;
        if (!isdefined(note)) {
            note = "undefined";
        }
        val = self handlenotetrack(note, flagname, customfunction, var1);
        if (isdefined(val)) {
            return val;
        }
    }
}

// Namespace zombie_shared/zombie_shared
// Params 5, eflags: 0x2 linked
// Checksum 0x9a5dc1bc, Offset: 0x4a0
// Size: 0x126
function donotetracksforeverproc(notetracksfunc, flagname, killstring, customfunction, var1) {
    if (isdefined(killstring)) {
        self endon(killstring, #"killanimscript");
    }
    for (;;) {
        time = gettime();
        returnednote = [[ notetracksfunc ]](flagname, customfunction, var1);
        timetaken = gettime() - time;
        if (timetaken < 0.05) {
            time = gettime();
            returnednote = [[ notetracksfunc ]](flagname, customfunction, var1);
            timetaken = gettime() - time;
            if (timetaken < 0.05) {
                println(gettime() + "<unknown string>" + flagname + "<unknown string>" + returnednote + "<unknown string>");
                wait(0.05 - timetaken);
            }
        }
    }
}

// Namespace zombie_shared/zombie_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xa2f3e72b, Offset: 0x5d0
// Size: 0x4c
function donotetracksforever(flagname, killstring, customfunction, var1) {
    donotetracksforeverproc(&donotetracks, flagname, killstring, customfunction, var1);
}

// Namespace zombie_shared/zombie_shared
// Params 6, eflags: 0x2 linked
// Checksum 0x9bafe8df, Offset: 0x628
// Size: 0x5e
function donotetracksfortimeproc(donotetracksforeverfunc, *time, flagname, customfunction, ent, var1) {
    ent endon(#"stop_notetracks");
    [[ time ]](flagname, undefined, customfunction, var1);
}

// Namespace zombie_shared/zombie_shared
// Params 4, eflags: 0x0
// Checksum 0x212cbda8, Offset: 0x690
// Size: 0x7c
function donotetracksfortime(time, flagname, customfunction, var1) {
    ent = spawnstruct();
    ent thread donotetracksfortimeendnotify(time);
    donotetracksfortimeproc(&donotetracksforever, time, flagname, customfunction, ent, var1);
}

// Namespace zombie_shared/zombie_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x59538a21, Offset: 0x718
// Size: 0x26
function donotetracksfortimeendnotify(time) {
    wait(time);
    self notify(#"stop_notetracks");
}

