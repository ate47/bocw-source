// Atian COD Tools GSC CW decompiler test
#using script_566bf433dcd9d9c;
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
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

#namespace namespace_4fa53161;

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 0, eflags: 0x5
// Checksum 0xbd547e, Offset: 0x1b0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_4ad49805c423429d", &function_70a657d8, &postinit, undefined, undefined);
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 0, eflags: 0x6 linked
// Checksum 0xab49320e, Offset: 0x208
// Size: 0x94
function private function_70a657d8() {
    if (function_550f629a()) {
        spawner::add_archetype_spawn_function(#"human", &function_5eaa8292);
        spawner::add_archetype_spawn_function(#"human", &namespace_4f6b19b0::function_6249a416);
    }
    /#
        function_5ac4dc99("<unknown string>", 0);
    #/
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x2a8
// Size: 0x4
function private postinit() {
    
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 0, eflags: 0x6 linked
// Checksum 0xa51e552f, Offset: 0x2b8
// Size: 0x1bc
function private function_550f629a() {
    var_1cde154f = getgametypesetting(#"use_doors");
    var_5a23774b = getdvarint(#"disabledoors", 0);
    if (!is_true(var_1cde154f) || is_true(var_5a23774b)) {
        return;
    }
    a_doors = struct::get_array("scriptbundle_doors", "classname");
    a_doors = arraycombine(a_doors, getentarray("smart_object_door", "script_noteworthy"), 0, 0);
    foreach (s_instance in a_doors) {
        s_door_bundle = getscriptbundle(s_instance.scriptbundlename);
        if (isdefined(s_door_bundle) && is_true(s_door_bundle.door_connect_paths)) {
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 1, eflags: 0x6 linked
// Checksum 0x842d0651, Offset: 0x480
// Size: 0x3be
function private function_dad360dc(c_door) {
    c_door.m_e_door endon(#"hash_29b88049dcac8bb3");
    c_door notify(#"hash_66ae5fc513adfddc");
    c_door endon(#"hash_66ae5fc513adfddc");
    var_f4b53b61 = c_door doors::function_810b782f(1);
    /#
        var_be457ed9 = (randomfloat(1), randomfloat(1), randomfloat(1));
    #/
    var_1bb1d9d4 = 72;
    while (1) {
        if (c_door flag::get("door_fully_open")) {
            return;
        }
        function_1eaaceab(c_door.var_d0ca7119);
        if (c_door.var_d0ca7119.size == 0) {
            return;
        }
        c_door.var_d0ca7119 = arraysortclosest(c_door.var_d0ca7119, c_door.m_e_door.origin);
        var_da089436 = c_door.var_d0ca7119[0];
        /#
            if (getdvarint(#"hash_33928bcf1b3e5487", 0)) {
                c_door thread function_cbb3e924(var_be457ed9);
            }
        #/
        closestdist = distance2d(var_f4b53b61, var_da089436.origin);
        var_17b1d600 = 110;
        var_af33ff77 = length(var_da089436 getvelocity());
        if (var_af33ff77 > 90) {
            var_17b1d600 = 180;
        }
        if (closestdist <= var_17b1d600 && abs(var_f4b53b61[2] - var_da089436.origin[2]) < var_1bb1d9d4 && !is_true(c_door.breached)) {
            results = var_da089436 function_a847c61f(4096, var_17b1d600 + 50);
            if (results.var_4e035bb7) {
                c_door thread function_30c5f93e(var_da089436);
            }
        }
        foreach (guy in c_door.var_d0ca7119) {
            if (guy == var_da089436 && !is_true(c_door.breached)) {
                if (isdefined(guy.ai.var_f162ac3e)) {
                    guy function_cf324cb0();
                }
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 1, eflags: 0x6 linked
// Checksum 0x7daa6dbb, Offset: 0x848
// Size: 0xb8
function private function_30c5f93e(var_da089436) {
    if (is_true(self.var_3b086962) || is_true(self.var_526bb929.var_3b086962)) {
        return;
    }
    self.var_14439ba5 = var_da089436;
    result = var_da089436 function_acf847ac(self);
    if (!is_true(result)) {
        function_50cd6f16(self.var_d0ca7119, "reset_door_check");
        self.var_14439ba5 = undefined;
        return;
    }
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 2, eflags: 0x2 linked
// Checksum 0xd880025a, Offset: 0x908
// Size: 0x68
function function_50cd6f16(arrayref, str_notify) {
    array_size = arrayref.size;
    for (i = 0; i < array_size; i++) {
        elem = arrayref[i];
        if (isdefined(elem)) {
            elem notify(str_notify);
        }
    }
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 1, eflags: 0x6 linked
// Checksum 0x5831bc01, Offset: 0x978
// Size: 0x13a
function private function_acf847ac(c_door) {
    self endon(#"death");
    c_door.m_e_door endon(#"hash_29b88049dcac8bb3");
    if (isdefined(self.ai.var_f162ac3e)) {
        self function_cf324cb0();
    }
    self.ai.var_e8cb3a15 = c_door;
    result = undefined;
    result = self waittilltimeout(6, #"hash_6d9a59cc1ef486a8");
    bsuccess = result._notify != #"timeout";
    if (bsuccess) {
        self waittilltimeout(4, #"hash_47b8208db121ca21");
    }
    if (isdefined(self.ai.var_e8cb3a15) && self.ai.var_e8cb3a15 == c_door) {
        self.ai.var_e8cb3a15 = undefined;
        self.ai.var_8df88381 = undefined;
    }
    return bsuccess;
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 1, eflags: 0x6 linked
// Checksum 0x1bcccce0, Offset: 0xac0
// Size: 0xa8
function private function_15306cfa(c_door) {
    if (isdefined(self.ai.var_c04898fc) && self.ai.var_c04898fc != c_door) {
        arrayremovevalue(self.ai.var_c04898fc.var_d0ca7119, self);
    }
    self.ai.var_c04898fc = c_door;
    if (!isdefined(c_door.var_d0ca7119)) {
        c_door.var_d0ca7119 = [];
    }
    c_door.var_d0ca7119[c_door.var_d0ca7119.size] = self;
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 0, eflags: 0x6 linked
// Checksum 0x41b2058c, Offset: 0xb70
// Size: 0x52
function private function_71ebe09e() {
    if (isdefined(self.ai.var_c04898fc)) {
        arrayremovevalue(self.ai.var_c04898fc.var_d0ca7119, self);
        self.ai.var_c04898fc = undefined;
    }
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 0, eflags: 0x4
// Checksum 0x7da546ce, Offset: 0xbd0
// Size: 0x44
function private function_a8a940ac() {
    if (isdefined(self.ai.var_f162ac3e)) {
        if (self.ai.var_f162ac3e == self.ai.var_c04898fc) {
            return 0;
        }
    }
    return 1;
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 0, eflags: 0x6 linked
// Checksum 0xb3cc4f88, Offset: 0xc20
// Size: 0x2e
function private function_cf324cb0() {
    /#
        self notify(#"hash_2ec8d65a5bf6c9b2");
    #/
    self.ai.var_f162ac3e = undefined;
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 1, eflags: 0x4
// Checksum 0x7a3c50f, Offset: 0xc58
// Size: 0x16a
function private function_cbb3e924(var_be457ed9) {
    /#
        foreach (i, g in self.var_d0ca7119) {
            if (isdefined(self.var_14439ba5) && self.var_14439ba5 == g) {
                circle(g.origin, 5, var_be457ed9, 0, 1, 1);
            }
            line(self.m_e_door.origin, g geteye(), var_be457ed9, 1, 0, 1);
            if (i == 0) {
                var_cab378c2 = "<unknown string>" + self.m_e_door getentnum();
                self notify(#"hash_46fda91c613b40e5", {#msg:var_cab378c2});
            }
        }
    #/
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 3, eflags: 0x4
// Checksum 0x4845998c, Offset: 0xdd0
// Size: 0xa0
function private function_7de4dc18(node, time, color) {
    /#
        self endon(#"death");
        timer = gettime() + time * 1000;
        while (gettime() < timer) {
            line(self geteye(), node.origin, color, 0.5, 0, 1);
            wait(0.05);
        }
    #/
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 0, eflags: 0x4
// Checksum 0x913cf68e, Offset: 0xe78
// Size: 0xb0
function private function_a07f8293() {
    /#
        self endon(#"death");
        var_dc35cd8c = "<unknown string>";
        var_e9968086 = "<unknown string>";
        while (1) {
            result = undefined;
            result = self waittill(#"hash_46fda91c613b40e5");
            msg = result.msg;
            var_e9968086 = msg;
            self childthread update_debug(var_e9968086, var_dc35cd8c);
            var_dc35cd8c = var_e9968086;
        }
    #/
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 2, eflags: 0x4
// Checksum 0x6a9480a1, Offset: 0xf30
// Size: 0x18c
function private update_debug(var_e9968086, var_dc35cd8c) {
    /#
        self notify(#"hash_4a185a55bf47797f");
        self endon(#"hash_4a185a55bf47797f");
        var_852f740c = 1;
        var_f304b84b = 5;
        steps = var_f304b84b * 20;
        var_18c3a98a = var_852f740c / steps;
        time = gettime();
        while (gettime() < time + var_f304b84b * 1000) {
            if (getdvarint(#"hash_33928bcf1b3e5487", 0)) {
                print3d(self geteye() + vectorscale((0, 0, 1), 15), var_e9968086, (1, 1, 1), 1, 0.3, 1);
                print3d(self geteye() + vectorscale((0, 0, 1), 10), var_dc35cd8c, vectorscale((1, 1, 1), 0.7), var_852f740c, 0.3, 1);
            }
            var_852f740c = var_852f740c - var_18c3a98a;
            wait(0.05);
        }
    #/
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 2, eflags: 0x0
// Checksum 0x3fa715a9, Offset: 0x10c8
// Size: 0x302
function function_b0731097(var_59e58a96, maxcheckdist) {
    var_f7a50e76 = undefined;
    results = undefined;
    distance = 0;
    goalinfo = self function_4794d6a3();
    goalpos = goalinfo.goalpos;
    if (self isinscriptedstate()) {
        return undefined;
    }
    if (isdefined(goalinfo.goalvolume)) {
        var_3d43e297 = self findbestcovernode();
        if (isdefined(var_3d43e297)) {
            goalpos = var_3d43e297.origin;
        } else {
            return undefined;
        }
    }
    var_f7a50e76 = self function_f14f56a8();
    if (!isdefined(var_f7a50e76) || var_f7a50e76.size <= 1) {
        return undefined;
    }
    mask = 8;
    for (i = 0; i < var_f7a50e76.size; i++) {
        var_f7a50e76[i] = var_f7a50e76[i] + vectorscale((0, 0, 1), 20);
    }
    for (i = 1; i < var_f7a50e76.size; i++) {
        if (isdefined(maxcheckdist) && distance > maxcheckdist) {
            return undefined;
        }
        prevpos = var_f7a50e76[i - 1];
        nextpos = var_f7a50e76[i];
        results = physicstrace(prevpos, nextpos, vectorscale((-1, -1, 0), 5), vectorscale((1, 1, 0), 5), self, mask);
        if (isdefined(results[#"entity"])) {
            hitent = results[#"entity"];
            if (isdefined(hitent.c_door)) {
                var_fe505a43 = hitent function_808e656();
                if (var_fe505a43 & var_59e58a96) {
                    hitpos = results[#"position"];
                    distance = distance + distance(prevpos, hitpos);
                    if (isdefined(maxcheckdist) && distance > maxcheckdist) {
                        return undefined;
                    } else {
                        return_struct = spawnstruct();
                        return_struct.hitpos = hitpos;
                        return_struct.hitent = hitent;
                        return return_struct;
                    }
                }
            }
        }
        distance = distance + distance(prevpos, nextpos);
    }
    return undefined;
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 1, eflags: 0x2 linked
// Checksum 0x7c29ec2b, Offset: 0x13d8
// Size: 0xca
function function_13f8cd4c(e_door) {
    if (!isdefined(e_door) || !isdefined(e_door.c_door) || e_door.c_door flag::get("animating")) {
        return undefined;
    }
    if (e_door.c_door flag::get("door_pushable") && !e_door.c_door flag::get("door_fully_open") || !e_door.c_door flag::get("open")) {
        return e_door;
    }
    return undefined;
}

// Namespace namespace_4fa53161/namespace_4fa53161
// Params 0, eflags: 0x6 linked
// Checksum 0x780c0663, Offset: 0x14b0
// Size: 0x368
function private function_5eaa8292() {
    self endon(#"death");
    /#
        self thread function_a07f8293();
    #/
    while (1) {
        var_12d56c89 = undefined;
        var_12d56c89 = self waittill(#"path_set", #"reset_door_check");
        result = var_12d56c89._notify;
        if (isdefined(self.ai.var_8df88381)) {
            continue;
        }
        if (isdefined(self.ai.var_f162ac3e)) {
            if (isdefined(result) && result == "path_set" && isdefined(self.var_5d312171) && isdefined(self.pathgoalpos) && distance2dsquared(self.pathgoalpos, self.var_5d312171.origin) < 4) {
                continue;
            }
            self function_cf324cb0();
        }
        self function_71ebe09e();
        var_88e76247 = 0;
        var_3e8fb6d0 = undefined;
        while (1) {
            results = self function_a847c61f(4096);
            doorloc = results.entrypoint[0];
            var_3e8fb6d0 = function_13f8cd4c(results.entity[0]);
            if (isdefined(doorloc)) {
                if (isdefined(var_3e8fb6d0)) {
                    var_715a5cbd = var_3e8fb6d0.c_door doors::function_5869e01();
                    if (distancesquared(self.origin, var_715a5cbd) < 400) {
                        var_da7ac3f6 = vectornormalize(var_715a5cbd - self.origin);
                        if (vectordot(self.lookaheaddir, var_da7ac3f6) < -0.707) {
                            wait(2);
                            continue;
                        }
                    }
                    /#
                        self notify(#"hash_46fda91c613b40e5", {#msg:"<unknown string>" + var_3e8fb6d0 getentnum()});
                    #/
                    var_88e76247 = 1;
                    break;
                } else {
                    wait(0.2);
                    continue;
                }
            } else {
                break;
            }
            if (var_88e76247) {
                break;
            }
            wait(0.05);
        }
        if (!var_88e76247) {
            continue;
        }
        self function_15306cfa(var_3e8fb6d0.c_door);
        level thread function_dad360dc(var_3e8fb6d0.c_door);
    }
}

