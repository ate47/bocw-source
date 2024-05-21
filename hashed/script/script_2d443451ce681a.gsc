// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\util.gsc;
#using scripts\cp_common\load.gsc;
#using script_4ab78e327b76395f;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\colors_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace ai;

// Namespace ai/utility
// Params 2, eflags: 0x0
// Checksum 0x9ac21fde, Offset: 0x170
// Size: 0x8a
function function_18c4ff86(var_86318e49, var_a8d22172) {
    if (!isdefined(var_86318e49)) {
        str_team = "all";
    }
    if (!isdefined(var_a8d22172)) {
        var_a8d22172 = "all";
    }
    var_6768975 = getaispeciesarray(var_86318e49, var_a8d22172);
    var_77f25691 = self function_10919848(var_6768975);
    return var_77f25691;
}

// Namespace ai/utility
// Params 1, eflags: 0x0
// Checksum 0xc131146d, Offset: 0x208
// Size: 0x7a
function function_41bdfd53(var_d18721b0) {
    if (!isdefined(var_d18721b0)) {
        assertmsg("<unknown string>");
    }
    agroup = spawner::get_ai_group_ai(var_d18721b0);
    var_77f25691 = self function_10919848(agroup);
    return var_77f25691;
}

// Namespace ai/utility
// Params 1, eflags: 0x0
// Checksum 0xef3ab841, Offset: 0x290
// Size: 0x7a
function function_ac1dee40(var_cd0c8024) {
    if (isdefined(var_cd0c8024)) {
        var_8564fb5f = getaiarray(var_cd0c8024, "targetname");
    } else {
        var_8564fb5f = getaiarray();
    }
    var_77f25691 = self function_10919848(var_8564fb5f);
    return var_77f25691;
}

// Namespace ai/utility
// Params 1, eflags: 0x6 linked
// Checksum 0x30ca7641, Offset: 0x318
// Size: 0x112
function private function_10919848(array) {
    var_77f25691 = array();
    foreach (guy in array) {
        if (guy istouching(self) && isalive(guy)) {
            if (!isdefined(var_77f25691)) {
                var_77f25691 = [];
            } else if (!isarray(var_77f25691)) {
                var_77f25691 = array(var_77f25691);
            }
            var_77f25691[var_77f25691.size] = guy;
        }
    }
    return var_77f25691;
}

// Namespace ai/utility
// Params 7, eflags: 0x0
// Checksum 0xd33b59ad, Offset: 0x438
// Size: 0x14c
function function_a45f8c64(var_86318e49 = "all", var_a8d22172 = "all", var_69747751, var_7b2eb76f, var_89c6f2db, n_timeout, str_flagname) {
    if (!isdefined(var_69747751)) {
        assertmsg("<unknown string>");
    }
    var_8564fb5f = getaispeciesarray(var_86318e49, var_a8d22172);
    level thread function_d72eb8b7(var_8564fb5f, var_89c6f2db, n_timeout);
    level thread function_a57f6629(str_flagname);
    if (isdefined(var_89c6f2db) || isdefined(str_flagname)) {
        level waittill(array("aGuys_kill_count", "aGuys_flag_hit"));
    }
    function_1eaaceab(var_8564fb5f);
    level thread function_8e158d78(var_8564fb5f, var_69747751, var_7b2eb76f);
}

// Namespace ai/utility
// Params 6, eflags: 0x0
// Checksum 0x5cd7717a, Offset: 0x590
// Size: 0x14c
function function_bb79f1ad(var_d18721b0, var_69747751, var_7b2eb76f, var_89c6f2db, n_timeout, str_flagname) {
    if (!isdefined(var_d18721b0)) {
        assertmsg("<unknown string>");
    }
    if (!isdefined(var_69747751)) {
        assertmsg("<unknown string>");
    }
    var_8564fb5f = spawner::get_ai_group_ai(var_d18721b0);
    level thread function_d72eb8b7(var_8564fb5f, var_89c6f2db, n_timeout);
    level thread function_a57f6629(str_flagname);
    if (isdefined(var_89c6f2db) || isdefined(str_flagname)) {
        level waittill(array("aGuys_kill_count", "aGuys_flag_hit"));
    }
    function_1eaaceab(var_8564fb5f);
    level thread function_8e158d78(var_8564fb5f, var_69747751, var_7b2eb76f);
}

// Namespace ai/utility
// Params 7, eflags: 0x0
// Checksum 0x9d1a3bbd, Offset: 0x6e8
// Size: 0x1d0
function function_eb9f3f65(var_d18721b0, var_69747751, var_7b2eb76f, var_89c6f2db, n_timeout, str_flagname, var_216aaeec = 2) {
    if (!isdefined(var_d18721b0)) {
        assertmsg("<unknown string>");
    }
    if (!isdefined(var_69747751)) {
        assertmsg("<unknown string>");
    }
    var_8564fb5f = spawner::get_ai_group_ai(var_d18721b0);
    level thread function_d72eb8b7(var_8564fb5f, var_89c6f2db, n_timeout);
    level thread function_a57f6629(str_flagname);
    if (isdefined(var_89c6f2db) || isdefined(str_flagname)) {
        level waittill(array("aGuys_kill_count", "aGuys_flag_hit"));
    }
    function_1eaaceab(var_8564fb5f);
    foreach (var_c56101e0 in var_8564fb5f) {
        var_c56101e0 thread function_706516d4(var_69747751, var_7b2eb76f, var_216aaeec);
    }
}

// Namespace ai/utility
// Params 3, eflags: 0x2 linked
// Checksum 0xc382d74a, Offset: 0x8c0
// Size: 0x8c
function function_706516d4(var_69747751, var_7b2eb76f, var_216aaeec) {
    if (isdefined(var_216aaeec) && var_216aaeec > 0) {
        wait(randomfloatrange(1, var_216aaeec));
    }
    if (isalive(self)) {
        self set_goal(var_69747751, "targetname", var_7b2eb76f);
    }
}

// Namespace ai/utility
// Params 6, eflags: 0x0
// Checksum 0x18e7aed5, Offset: 0x958
// Size: 0x14c
function function_d49a69a0(var_cd0c8024, var_69747751, var_7b2eb76f, var_89c6f2db, n_timeout, str_flagname) {
    if (isdefined(var_cd0c8024)) {
        var_8564fb5f = getaiarray(var_cd0c8024, "targetname");
    } else {
        var_8564fb5f = getaiarray();
    }
    if (!isdefined(var_69747751)) {
        assertmsg("<unknown string>");
    }
    level thread function_d72eb8b7(var_8564fb5f, var_89c6f2db, n_timeout);
    level thread function_a57f6629(str_flagname);
    if (isdefined(var_89c6f2db) || isdefined(str_flagname)) {
        level waittill(array("aGuys_kill_count", "aGuys_flag_hit"));
    }
    function_1eaaceab(var_8564fb5f);
    level function_8e158d78(var_8564fb5f, var_69747751, var_7b2eb76f);
}

// Namespace ai/utility
// Params 3, eflags: 0x6 linked
// Checksum 0x348c9c04, Offset: 0xab0
// Size: 0x120
function private function_8e158d78(ai_array, var_69747751, var_7b2eb76f) {
    if (!isdefined(ai_array)) {
        assertmsg("<unknown string>");
    }
    if (!isdefined(var_69747751)) {
        assertmsg("<unknown string>");
    }
    if (!isdefined(var_7b2eb76f)) {
        var_7b2eb76f = 1;
    }
    foreach (var_c56101e0 in ai_array) {
        if (isalive(var_c56101e0)) {
            var_c56101e0 set_goal(var_69747751, "targetname", var_7b2eb76f);
        }
    }
}

// Namespace ai/utility
// Params 8, eflags: 0x0
// Checksum 0xd1737a2d, Offset: 0xbd8
// Size: 0x154
function function_f28ee73(var_86318e49 = "all", var_a8d22172 = "all", var_69747751, var_7b2eb76f, var_89c6f2db, n_timeout, str_flagname, b_shoot) {
    if (!isdefined(var_69747751)) {
        assertmsg("<unknown string>");
    }
    var_8564fb5f = getaispeciesarray(var_86318e49, var_a8d22172);
    level thread function_d72eb8b7(var_8564fb5f, var_89c6f2db, n_timeout);
    level thread function_a57f6629(str_flagname);
    if (isdefined(var_89c6f2db) || isdefined(str_flagname)) {
        level waittill(array("aGuys_kill_count", "aGuys_flag_hit"));
    }
    function_1eaaceab(var_8564fb5f);
    level thread function_6706a21c(var_8564fb5f, var_69747751, var_7b2eb76f, b_shoot);
}

// Namespace ai/utility
// Params 7, eflags: 0x0
// Checksum 0x3d22330, Offset: 0xd38
// Size: 0x154
function function_419b1881(var_d18721b0, var_69747751, var_7b2eb76f, var_89c6f2db, n_timeout, str_flagname, b_shoot) {
    if (!isdefined(var_d18721b0)) {
        assertmsg("<unknown string>");
    }
    if (!isdefined(var_69747751)) {
        assertmsg("<unknown string>");
    }
    var_8564fb5f = spawner::get_ai_group_ai(var_d18721b0);
    level thread function_d72eb8b7(var_8564fb5f, var_89c6f2db, n_timeout);
    level thread function_a57f6629(str_flagname);
    if (isdefined(var_89c6f2db) || isdefined(str_flagname)) {
        level waittill(array("aGuys_kill_count", "aGuys_flag_hit"));
    }
    function_1eaaceab(var_8564fb5f);
    level thread function_6706a21c(var_8564fb5f, var_69747751, var_7b2eb76f, b_shoot);
}

// Namespace ai/utility
// Params 7, eflags: 0x0
// Checksum 0x9ce1888b, Offset: 0xe98
// Size: 0x154
function function_3ff06c1e(var_cd0c8024, var_69747751, var_7b2eb76f, var_89c6f2db, n_timeout, str_flagname, b_shoot) {
    if (isdefined(var_cd0c8024)) {
        var_8564fb5f = getaiarray(var_cd0c8024, "targetname");
    } else {
        var_8564fb5f = getaiarray();
    }
    if (!isdefined(var_69747751)) {
        assertmsg("<unknown string>");
    }
    level thread function_d72eb8b7(var_8564fb5f, var_89c6f2db, n_timeout);
    level thread function_a57f6629(str_flagname);
    if (isdefined(var_89c6f2db) || isdefined(str_flagname)) {
        level waittill(array("aGuys_kill_count", "aGuys_flag_hit"));
    }
    function_1eaaceab(var_8564fb5f);
    level function_6706a21c(var_8564fb5f, var_69747751, var_7b2eb76f, b_shoot);
}

// Namespace ai/utility
// Params 8, eflags: 0x0
// Checksum 0xc940b96e, Offset: 0xff8
// Size: 0x1b4
function function_c3314131(var_2795777d, var_82706add = "targetname", var_69747751, var_7b2eb76f, var_89c6f2db, n_timeout, str_flagname, b_shoot) {
    e_goal = spawnstruct();
    if (isdefined(var_2795777d)) {
        a_e_ai = getaiarray(var_2795777d, var_82706add);
    } else {
        a_e_ai = getaiarray();
    }
    if (!isdefined(var_69747751)) {
        assertmsg("<unknown string>");
    }
    function_1eaaceab(a_e_ai);
    e_goal thread function_53f3fb5(a_e_ai, var_89c6f2db, n_timeout);
    e_goal thread function_b7bb4bb5(str_flagname);
    if (isdefined(var_89c6f2db) || isdefined(str_flagname)) {
        e_goal waittill(array("aGuys_kill_count", "aGuys_flag_hit"));
    }
    function_1eaaceab(a_e_ai);
    level thread function_6706a21c(a_e_ai, var_69747751, var_7b2eb76f, b_shoot);
    e_goal struct::delete();
}

// Namespace ai/utility
// Params 4, eflags: 0x2 linked
// Checksum 0xd91bbc2a, Offset: 0x11b8
// Size: 0x128
function function_6706a21c(ai_array, var_69747751, var_7b2eb76f, b_shoot) {
    if (!isdefined(ai_array)) {
        assertmsg("<unknown string>");
    }
    if (!isdefined(var_69747751)) {
        assertmsg("<unknown string>");
    }
    if (!isdefined(var_7b2eb76f)) {
        var_7b2eb76f = 1;
    }
    foreach (var_c56101e0 in ai_array) {
        if (isalive(var_c56101e0)) {
            var_c56101e0 thread function_33d55665(var_69747751, var_7b2eb76f, b_shoot);
        }
    }
}

// Namespace ai/utility
// Params 3, eflags: 0x2 linked
// Checksum 0xb895a4b5, Offset: 0x12e8
// Size: 0x6c
function function_33d55665(var_69747751, var_7b2eb76f, b_shoot) {
    goal = self set_goal(var_69747751, "targetname", var_7b2eb76f);
    self force_goal(goal, b_shoot, undefined, 1, 1);
}

// Namespace ai/utility
// Params 3, eflags: 0x6 linked
// Checksum 0x22befd79, Offset: 0x1360
// Size: 0x5e
function private function_d72eb8b7(var_8564fb5f, var_89c6f2db, n_timeout) {
    if (isdefined(var_89c6f2db) && var_89c6f2db > 0) {
        level waittill_dead(var_8564fb5f, var_89c6f2db, n_timeout);
        self notify(#"aguys_kill_count");
    }
}

// Namespace ai/utility
// Params 1, eflags: 0x6 linked
// Checksum 0xe7814e70, Offset: 0x13c8
// Size: 0x9e
function private function_a57f6629(str_flagname) {
    if (isdefined(str_flagname)) {
        if (isarray(str_flagname)) {
            level flag::wait_till_any(str_flagname);
        } else {
            if (!level flag::exists(str_flagname)) {
                return;
            }
            level flag::wait_till_any(array(str_flagname));
        }
        self notify(#"aguys_flag_hit");
    }
}

// Namespace ai/utility
// Params 3, eflags: 0x6 linked
// Checksum 0x6ec8d914, Offset: 0x1470
// Size: 0x76
function private function_53f3fb5(var_8564fb5f, var_89c6f2db, n_timeout) {
    self endon(#"aguys_flag_hit");
    if (isdefined(var_89c6f2db) && var_89c6f2db > 0) {
        level waittill_dead(var_8564fb5f, var_89c6f2db, n_timeout);
        self notify(#"aguys_kill_count");
    }
}

// Namespace ai/utility
// Params 1, eflags: 0x6 linked
// Checksum 0xe1702c0d, Offset: 0x14f0
// Size: 0xae
function private function_b7bb4bb5(str_flagname) {
    self endon(#"aguys_kill_count");
    if (isdefined(str_flagname)) {
        if (isarray(str_flagname)) {
            level flag::wait_till_any(str_flagname);
        } else {
            if (!level flag::exists(str_flagname)) {
                return;
            }
            level flag::wait_till_any(array(str_flagname));
        }
        self notify(#"aguys_flag_hit");
    }
}

// Namespace ai/utility
// Params 3, eflags: 0x0
// Checksum 0x1a0abd83, Offset: 0x15a8
// Size: 0x6c
function function_b0bd06fa(ai_group, n_count, str_flagname) {
    if (!level flag::exists(str_flagname)) {
        return;
    }
    spawner::waittill_ai_group_ai_count(ai_group, n_count);
    level flag::set(str_flagname);
}

// Namespace ai/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x32e7bce6, Offset: 0x1620
// Size: 0x13a
function array_spawn(str_targetname) {
    var_523ed269 = getspawnerarray(str_targetname, "targetname");
    aiarray = array();
    foreach (spawner in var_523ed269) {
        guy = spawner spawnfromspawner(str_targetname, 1);
        if (!isdefined(aiarray)) {
            aiarray = [];
        } else if (!isarray(aiarray)) {
            aiarray = array(aiarray);
        }
        aiarray[aiarray.size] = guy;
    }
    return aiarray;
}

// Namespace ai/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x497e7878, Offset: 0x1768
// Size: 0x6c
function set_corpse_entity(var_2ad1c8aa) {
    assert(isentity(self));
    level.additional_corpse[self getentitynumber()] = self;
    self thread namespace_5f6e61d9::function_c74e98cb(1, var_2ad1c8aa);
}

// Namespace ai/utility
// Params 2, eflags: 0x2 linked
// Checksum 0xaa4fa190, Offset: 0x17e0
// Size: 0x154
function function_4f84c3ed(origin, radius) {
    result = [];
    if (!isdefined(radius)) {
        radius = 0;
    }
    radiussq = sqr(radius);
    if (isdefined(origin)) {
        result = getcorpsearray(origin, radius);
    } else {
        result = getcorpsearray();
    }
    if (isdefined(level.additional_corpse)) {
        foreach (ent in level.additional_corpse) {
            if (isdefined(ent) && (!isdefined(origin) || distancesquared(ent.origin, origin) < radiussq)) {
                result[result.size] = ent;
            }
        }
    }
    return result;
}

// Namespace ai/utility
// Params 4, eflags: 0x0
// Checksum 0x657df229, Offset: 0x1940
// Size: 0x2d4
function function_11149e48(var_c62e2503, var_d9530aee, goal, stop_notify) {
    assert(issentient(self));
    assert(!isplayer(self));
    self notify(#"hash_6a866dd840198982");
    if (!isdefined(var_c62e2503)) {
        var_c62e2503 = [];
    } else if (!isarray(var_c62e2503)) {
        var_c62e2503 = array(var_c62e2503);
    }
    if (!isdefined(var_d9530aee)) {
        var_d9530aee = [];
    } else if (!isarray(var_d9530aee)) {
        var_d9530aee = array(var_d9530aee);
    }
    self.var_11149e48 = spawnstruct();
    self.var_11149e48.move = var_c62e2503;
    self.var_11149e48.idle = var_d9530aee;
    self.var_11149e48.goal = goal;
    self.var_11149e48.face_angle = self.angles[1];
    self.var_11149e48.stop_notify = stop_notify;
    if (!isdefined(self.var_11149e48.goal)) {
        self.var_11149e48.goal = self.origin;
    } else if (!isvec(self.var_11149e48.goal)) {
        self.var_11149e48.goal = self.var_11149e48.goal.origin;
    }
    self.var_11149e48.path = generatenavmeshpath(self.origin, self.var_11149e48.goal, self);
    if (!isdefined(self.var_11149e48.path)) {
        self.var_11149e48.path = generatenavmeshpath(self.origin, self.origin, self);
    }
    self.var_11149e48.path.index = 0;
    self animcustom(&function_66d43d96, &function_6e4a9c24);
}

// Namespace ai/utility
// Params 0, eflags: 0x6 linked
// Checksum 0x1a0b39ee, Offset: 0x1c20
// Size: 0x430
function private function_66d43d96() {
    assert(isdefined(self.var_11149e48));
    self endon(#"death", #"killanimscript", #"hash_6a866dd840198982", self.var_11149e48.stop_notify);
    var_cd6d7e01 = undefined;
    var_bee8f197 = float(function_60d95f53()) / 1000;
    lastangle = undefined;
    self animmode("gravity");
    while (true) {
        while (self.var_11149e48.path.pathpoints.size > self.var_11149e48.path.index) {
            point2d = self.var_11149e48.path.pathpoints[self.var_11149e48.path.index];
            point2d = (point2d[0], point2d[1], self.origin[2]);
            if (distancesquared(point2d, self.origin) < sqr(16)) {
                self.var_11149e48.path.index += 1;
                continue;
            }
            break;
        }
        self.var_11149e48.moving = self.var_11149e48.path.pathpoints.size > self.var_11149e48.path.index;
        if (self.var_11149e48.moving) {
            point2d = self.var_11149e48.path.pathpoints[self.var_11149e48.path.index];
            point2d = (point2d[0], point2d[1], self.origin[2]);
            delta = vectornormalize(point2d - self.origin);
            self.var_11149e48.face_angle = vectortoyaw(delta);
        }
        if (lastangle !== self.var_11149e48.face_angle) {
            self orientmode("face angle", self.var_11149e48.face_angle);
            lastangle = self.var_11149e48.face_angle;
        }
        if (self.var_11149e48.moving !== var_cd6d7e01) {
            if (self.var_11149e48.moving) {
                self childthread function_f3a8861e(self.var_11149e48.move, 1);
                var_bee8f197 = float(function_60d95f53()) / 1000;
            } else {
                self childthread function_f3a8861e(self.var_11149e48.idle, 1);
                self notify(#"hash_14c8785c81be82ac");
                var_bee8f197 = 1;
            }
            var_cd6d7e01 = self.var_11149e48.moving;
        }
        wait(var_bee8f197);
    }
}

// Namespace ai/utility
// Params 3, eflags: 0x6 linked
// Checksum 0x42f92df8, Offset: 0x2058
// Size: 0xec
function private function_f3a8861e(anims, loop, mode = "custom") {
    self notify("15ea8c5841d3bd17");
    self endon("15ea8c5841d3bd17");
    while (anims.size > 0) {
        animation = array::random(anims);
        self animscripted(animation, self.origin, self.angles, animation, mode, undefined, 1, 0.2);
        wait(getanimlength(animation));
        if (!is_true(loop)) {
            return;
        }
    }
}

// Namespace ai/utility
// Params 0, eflags: 0x6 linked
// Checksum 0x304a9c7f, Offset: 0x2150
// Size: 0x3e
function private function_6e4a9c24() {
    if (!isalive(self)) {
        self startragdoll();
    }
    self.var_11149e48 = undefined;
}

