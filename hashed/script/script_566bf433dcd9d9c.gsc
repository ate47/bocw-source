// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using script_22caeaa9257194b8;
#using scripts\cp_common\gametypes\globallogic_utils.gsc;
#using scripts\core_common\doors_shared.gsc;
#using script_7cc5fb39b97494c4;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_4f6b19b0;

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 0, eflags: 0x2 linked
// Checksum 0x89b59b86, Offset: 0x120
// Size: 0xc2
function function_6249a416() {
    self.var_6ceb6369 = &open_door;
    self.var_ec41a153 = &function_b1005820;
    self.var_d813cb2b = &function_4301c636;
    self.var_11d59941 = &function_810b782f;
    self.var_e44ce7d2 = &function_a416dacc;
    self.var_54aff8ae = &function_28483c4a;
    self.var_9a22ab2b = &function_6f0d502b;
    self.var_b84eb531 = &function_cd2d8ed8;
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 2, eflags: 0x6 linked
// Checksum 0x58984d35, Offset: 0x1f0
// Size: 0x64
function private open_door(c_door, t) {
    if (t < 0.2) {
        c_door doors::function_b29052a(self);
        return;
    }
    c_door.m_e_door thread doors::open(undefined, undefined, self);
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 1, eflags: 0x6 linked
// Checksum 0x3772840e, Offset: 0x260
// Size: 0xe
function private function_4301c636(*c_door) {
    return 0;
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 1, eflags: 0x6 linked
// Checksum 0xb5384ce3, Offset: 0x278
// Size: 0x3c
function private function_b1005820(c_door) {
    self endon(#"hash_6d9a59cc1ef486a8");
    c_door.m_e_door thread doors::close(undefined, undefined);
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 1, eflags: 0x6 linked
// Checksum 0xd95fec73, Offset: 0x2c0
// Size: 0x1e
function private function_810b782f(c_door) {
    return c_door.var_85f2454d.var_91e5d49f;
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 1, eflags: 0x6 linked
// Checksum 0xc50c069d, Offset: 0x2e8
// Size: 0x46
function private function_a416dacc(c_door) {
    if (is_true(c_door flag::get("door_fully_open"))) {
        return 1;
    }
    return 0;
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 0, eflags: 0x2 linked
// Checksum 0x90d31f89, Offset: 0x338
// Size: 0x1c
function function_6f0d502b() {
    self thread function_f1af5306(1);
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 0, eflags: 0x2 linked
// Checksum 0x47836a50, Offset: 0x360
// Size: 0x1c
function function_28483c4a() {
    self thread function_f1af5306(0);
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 0, eflags: 0x2 linked
// Checksum 0x54206131, Offset: 0x388
// Size: 0x26
function function_cd2d8ed8() {
    self.ai.var_10150769 = undefined;
    self notify(#"hash_4df5ebbdfb65254e");
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 0, eflags: 0x6 linked
// Checksum 0xd8ef0581, Offset: 0x3b8
// Size: 0x96
function private function_221f1a13() {
    t = 0.75;
    speed = length(self getvelocity());
    if (speed > 0) {
        t = 24 / speed;
    }
    if (t < 0.15) {
        t = 0.15;
    } else if (t > 1) {
        t = 1;
    }
    return t;
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 0, eflags: 0x6 linked
// Checksum 0xb511d06, Offset: 0x458
// Size: 0x22e
function private function_71aeadad() {
    door = self.ai.var_e8cb3a15;
    var_6ceb6369 = self.var_6ceb6369;
    if (!isdefined(door) || !isdefined(var_6ceb6369)) {
        return;
    }
    self.ai.door_opened = 1;
    self endon(#"death");
    door endon(#"death");
    var_d3ddd16e = self [[ self.var_11d59941 ]](door);
    var_45047e1c = distance2dsquared(var_d3ddd16e, self.origin);
    var_ef6b3fab = 64;
    if (self.archetype == #"human" && self haspath()) {
        currentspeed = self function_28e7d252();
        var_a3bb43c4 = function_f002dade(#"human", #"run");
        if (currentspeed > 0 && var_a3bb43c4 > 0) {
            speedratio = currentspeed / var_a3bb43c4;
            var_ef6b3fab = var_ef6b3fab * speedratio;
        }
    }
    var_476078dd = function_a3f6cdac(var_ef6b3fab);
    while (var_45047e1c > var_476078dd) {
        var_45047e1c = distance2dsquared(var_d3ddd16e, self.origin);
        waitframe(1);
    }
    t = function_221f1a13();
    self notify(#"hash_6d9a59cc1ef486a8");
    self thread [[ var_6ceb6369 ]](door, t);
    return t;
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 0, eflags: 0x6 linked
// Checksum 0x2f6869e2, Offset: 0x690
// Size: 0x6e
function private function_903262b9() {
    self endon(#"hash_47b8208db121ca21", #"death");
    self waittill(#"hash_4df5ebbdfb65254e");
    self.ai.var_e8cb3a15 = undefined;
    self.ai.var_8df88381 = undefined;
    self notify(#"hash_47b8208db121ca21");
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 1, eflags: 0x6 linked
// Checksum 0x73b05b5, Offset: 0x708
// Size: 0x54
function private function_a985d3d9(door) {
    /#
        assert(isdefined(self.var_d813cb2b));
    #/
    if (self [[ self.var_d813cb2b ]](door)) {
        self [[ self.var_ec41a153 ]](door);
    }
}

// Namespace namespace_4f6b19b0/namespace_4f6b19b0
// Params 1, eflags: 0x6 linked
// Checksum 0x841334a2, Offset: 0x768
// Size: 0x4ec
function private function_f1af5306(var_91fea62e) {
    self.ai.var_10150769 = var_91fea62e;
    var_636f02cd = #"hash_3866cfe35818bf88";
    self notify(#"hash_4df5ebbdfb65254e");
    self endon(#"hash_4df5ebbdfb65254e", #"death");
    while (1) {
        if (isdefined(self.ai.var_e8cb3a15)) {
            var_9fdc36a = 0;
            if (self [[ self.var_e44ce7d2 ]](self.ai.var_e8cb3a15)) {
                var_9fdc36a = 1;
            }
            if (!var_9fdc36a && !isdefined(self.ai.var_e8cb3a15)) {
                results = self function_a847c61f(4096, 200);
                if (!results.var_4e035bb7) {
                    var_9fdc36a = 1;
                }
            }
            if (var_9fdc36a) {
                self.ai.var_e8cb3a15 = undefined;
                waitframe(1);
                continue;
            }
            var_bdb3737a = 1;
            door = self.ai.var_e8cb3a15;
            if (!self shouldfacemotion()) {
                lookaheaddir = self.lookaheaddir;
                lookaheaddir = vectornormalize((lookaheaddir[0], lookaheaddir[1], 0));
                facingdir = anglestoforward(self.angles);
                if (vectordot(lookaheaddir, facingdir) < 0.966) {
                    t = self function_71aeadad();
                    if (isdefined(t)) {
                        self thread function_903262b9();
                        wait(t);
                    }
                    self notify(#"hash_47b8208db121ca21");
                    if (isdefined(self.ai.var_e8cb3a15) && self.ai.var_e8cb3a15 == door) {
                        self.ai.var_e8cb3a15 = undefined;
                    }
                    self.ai.var_8df88381 = undefined;
                    continue;
                }
            }
            self.ai.door_opened = undefined;
            var_d9bc30fb = 1;
            var_33ed28f7 = 160;
            var_bc68bda9 = 2;
            targetspeed = function_3a0a7a8(self getvelocity());
            if (!is_true(var_91fea62e)) {
                var_f06b1c92 = self astsearch(var_636f02cd);
            }
            var_70e679e1 = var_d9bc30fb + var_33ed28f7 + var_bc68bda9;
            var_d3ddd16e = self [[ self.var_11d59941 ]](door);
            var_56f2236d = distance2d(var_d3ddd16e, self.origin);
            if (var_56f2236d < var_70e679e1) {
                self thread function_a985d3d9(door);
                var_93519869 = function_60d95f53() / 1000;
                if (is_true(var_91fea62e) || var_56f2236d < var_70e679e1 - targetspeed * 2 * var_93519869) {
                    /#
                        assert(isdefined(self.var_6ceb6369));
                    #/
                    t = self function_71aeadad();
                    if (isdefined(t)) {
                        self thread function_903262b9();
                        wait(t);
                    }
                    self notify(#"hash_47b8208db121ca21");
                    if (isdefined(self.ai.var_e8cb3a15) && self.ai.var_e8cb3a15 == door) {
                        self.ai.var_e8cb3a15 = undefined;
                    }
                    self.ai.var_8df88381 = undefined;
                }
            }
        }
        waitframe(1);
    }
}

