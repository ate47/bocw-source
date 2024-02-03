// Atian COD Tools GSC CW decompiler test
#using script_912160eeb6a2d51;
#using script_fe983bbff18d77f;
#using script_4f58b276cb938e94;
#using script_3eb3df5aef50b41c;
#using script_7e3221b6c80d8cc4;
#using script_5450c003e8a913b7;
#using script_16a28d93ee216f6f;
#using script_42310dfa1362069f;
#using script_139ae0bb0a87141c;
#using script_1883fa4e60abbf9f;
#using script_3ad66e3076c279ab;
#using script_6f8610e78fdd3440;
#using scripts\core_common\ai\archetype_human_locomotion.gsc;
#using scripts\core_common\ai\archetype_human.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using script_68d08b784c92da95;
#using script_7b68dad851540de;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace namespace_77fd5d41;

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 2, eflags: 0x0
// Checksum 0xd4f6b558, Offset: 0x4f0
// Size: 0x14
function function_aec6058a(*ent, *vol) {
    
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x3848724d, Offset: 0x510
// Size: 0x24
function main() {
    /#
        function_5ac4dc99("Cover", 0);
    #/
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x6a30267a, Offset: 0x540
// Size: 0x18a
function function_5d397b07() {
    self.var_d26a48de = &function_e5b8ad1b;
    self.var_c92102aa = &function_5a3580b6;
    self.var_c6018f4 = &function_e1241434;
    self.var_cd774402 = &function_8289d9b9;
    self.var_678afc31 = &function_34f554e4;
    self.var_1e36e368 = &function_e5113f65;
    self.var_b2fab989 = &function_21a5812c;
    self.var_fbb623fc = &function_6e924603;
    self.var_41c0793a = undefined;
    self.var_6c53421 = undefined;
    self.var_c385dc87 = &spawner::go_to_node;
    self.var_d28ad254 = &function_36915a04;
    self.var_40dd40ac = &function_7653ca27;
    self.var_ee308dc1 = &function_bf263c90;
    self.var_728f218b = &function_ffdd3cba;
    self.var_e892f39b = &function_589cf326;
    self.var_d3364a1a = spawnstruct();
    self.var_d3364a1a.instancedata = [];
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 2, eflags: 0x2 linked
// Checksum 0xea8a2022, Offset: 0x6d8
// Size: 0xfe
function function_db1c5a52(var_fb16d5c1, layer = "task") {
    if (!isdefined(self.var_d3364a1a.taskid)) {
        self.var_d3364a1a.taskid = [];
    }
    if (!isdefined(self.var_d3364a1a.taskid[layer])) {
        if (is_true(var_fb16d5c1)) {
            self.var_d3364a1a.taskid[layer] = 0;
        } else {
            return undefined;
        }
    }
    if (is_true(var_fb16d5c1)) {
        self.var_d3364a1a.taskid[layer]++;
    }
    return self.unique_id + "_" + layer + self.var_d3364a1a.taskid[layer];
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xd36dc650, Offset: 0x7e0
// Size: 0x54
function function_a74be266(*behaviortreeentity) {
    if (!isdefined(self.stealth)) {
        return 0;
    }
    if (self.team == "allies") {
        return 0;
    }
    if (self.stealth.var_abf79234 == 3) {
        return 0;
    }
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x56dd4402, Offset: 0x840
// Size: 0x2c
function function_ba0a486b(behaviortreeentity) {
    return gettime() - behaviortreeentity.damagetime <= function_60d95f53();
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0xc78e92e1, Offset: 0x878
// Size: 0x24
function function_e1241434() {
    return isdefined(self.stealth) && self.stealth.var_abf79234 == 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0xc16e3938, Offset: 0x8a8
// Size: 0x26
function function_8289d9b9() {
    return isdefined(self.stealth) && self.stealth.var_abf79234 == 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x762478c0, Offset: 0x8d8
// Size: 0x26
function function_34f554e4() {
    return isdefined(self.stealth) && self.stealth.var_abf79234 == 2;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x86c95e30, Offset: 0x908
// Size: 0x26
function function_e5113f65() {
    return isdefined(self.stealth) && self.stealth.var_abf79234 == 3;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xff53a6f, Offset: 0x938
// Size: 0x3c
function function_9a6e96bd(behaviortreeentity) {
    function_11d3f42d(behaviortreeentity);
    function_3031f40e(behaviortreeentity);
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x46a7a087, Offset: 0x980
// Size: 0x3c
function function_4fff0007(behaviortreeentity) {
    function_242c2d67(behaviortreeentity);
    function_bd5f9968(behaviortreeentity);
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xa16ccefb, Offset: 0x9c8
// Size: 0x44
function function_3031f40e(behaviortreeentity) {
    behaviortreeentity.keepclaimednode = 1;
    if (self namespace_3d84fa3e::function_47df32b8()) {
        self namespace_3d84fa3e::function_7db73593();
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xa61f58c2, Offset: 0xa18
// Size: 0x16
function function_242c2d67(behaviortreeentity) {
    behaviortreeentity.keepclaimednode = 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x6e310f1e, Offset: 0xa38
// Size: 0x5a
function function_11d3f42d(behaviortreeentity) {
    behaviortreeentity.stealth.var_ba19d2b1 = 1;
    if (!is_true(self.stealth.var_527ef51c)) {
        self.stealth.var_7f670ead = 1;
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x6e9dad95, Offset: 0xaa0
// Size: 0x40
function function_bd5f9968(behaviortreeentity) {
    behaviortreeentity.stealth.var_ba19d2b1 = undefined;
    self.stealth.var_7f670ead = undefined;
    behaviortreeentity notify(#"hash_22ca87c523f21d6d");
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x715d5913, Offset: 0xae8
// Size: 0x28
function function_3b8bcbc7(*behaviortreeentity) {
    if (self.team == "axis") {
        return 1;
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x1322048e, Offset: 0xb18
// Size: 0x28
function function_941fc014(*behaviortreeentity) {
    if (self.team == "allies") {
        return 1;
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x60c45111, Offset: 0xb48
// Size: 0x28
function function_acfa1f6e(*behaviortreeentity) {
    self namespace_32a4062b::main();
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x0
// Checksum 0xc1a48f3d, Offset: 0xb78
// Size: 0x16
function function_deb7aae(*behaviortreeentity) {
    self.stealth = undefined;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xaf35fa9e, Offset: 0xb98
// Size: 0x28
function function_93f9e4d6(*behaviortreeentity) {
    if (self.team == "neutral") {
        return 1;
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xc8449829, Offset: 0xbc8
// Size: 0x28
function function_ad0a57c8(*behaviortreeentity) {
    self namespace_578db516::main();
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x0
// Checksum 0x5f95626d, Offset: 0xbf8
// Size: 0x3c
function function_5571676e(var_474fe760) {
    if (!isdefined(var_474fe760)) {
        return !is_true(level.var_fa92e32f);
    }
    return var_474fe760 >= 0.5;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0xc40
// Size: 0x4
function function_21a5812c() {
    
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x73379b22, Offset: 0xc50
// Size: 0x10e
function function_6a7ad1cf(*behaviortreeentity) {
    if (is_true(self.var_3d84fa3e.transition)) {
        if (!isdefined(self.var_3ed929ba) && self getblackboardattribute("_flashlight") === "flashlight_out") {
            foreach (player in getplayers()) {
                if (self function_a884a736(player) > 0) {
                    return 0;
                }
            }
        }
        return 1;
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x888d80ec, Offset: 0xd68
// Size: 0xde
function function_dcb14105(*behaviortreeentity) {
    if (is_true(self.var_3d84fa3e.out)) {
        if (isalive(self)) {
            self setblackboardattribute("_flashlight", "flashlight_out");
            if (isdefined(self.var_710f0e6e)) {
                self [[ self.var_710f0e6e ]](1);
            }
        }
    } else {
        self setblackboardattribute("_flashlight", "flashlight_stow");
        if (isdefined(self.var_c36c4b2)) {
            self [[ self.var_c36c4b2 ]]();
        }
    }
    self.var_3d84fa3e.transition = undefined;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x69846ca4, Offset: 0xe50
// Size: 0x8a
function function_7fa7c168(*behaviortreeentity) {
    switch (self.stealth.var_abf79234) {
    case 0:
        return "Stealth_Idle";
    case 1:
        return "Stealth_Investigate";
    case 2:
        return "Stealth_Hunt";
    case 3:
        return "Stealth_Combat";
        break;
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x3e62eb40, Offset: 0xee8
// Size: 0x96
function function_455c4d2d(*behaviortreeentity) {
    if (self.stealth.var_4df71901 === gettime()) {
        return 1;
    }
    self namespace_f1f700ac::function_c1eaee11();
    switch (self.stealth.var_abf79234) {
    default:
        function_bf092f1f(self);
        break;
    }
    self.stealth.var_4df71901 = gettime();
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x6fcd2249, Offset: 0xf88
// Size: 0x19a
function function_809e1001(behaviortreeentity) {
    if (self.stealth.var_4df71901 === gettime()) {
        return 1;
    }
    var_e8c7dd7e = level flag::get("react_to_dynolights");
    if (var_e8c7dd7e && !isdefined(self.var_97495fe1)) {
        namespace_979752dc::function_26acda74();
        var_e8c7dd7e = 0;
    }
    self function_d279bb10(self.stealth.var_abf79234, 0.5);
    if (var_e8c7dd7e) {
        entnum = self getentitynumber();
        frametime = level.frameduration;
        /#
            assert(isdefined(frametime));
        #/
        if (gettime() / frametime % 5 == entnum % 5) {
            namespace_979752dc::function_26acda74();
        }
    }
    self function_d19483ee();
    self namespace_cc4354b9::function_eb8c5f46();
    self ai::function_ccc923fb(self.var_806dc35e);
    return function_455c4d2d(behaviortreeentity);
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xfbac9176, Offset: 0x1130
// Size: 0x22
function function_d768e482(behaviortreeentity) {
    return function_455c4d2d(behaviortreeentity);
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 2, eflags: 0x2 linked
// Checksum 0xa6bf81f6, Offset: 0x1160
// Size: 0x152
function function_55c47950(var_7a44d7c, *event) {
    if (self ai::has_behavior_attribute("stealth")) {
        switch (event) {
        case 0:
            self.awarenesslevelcurrent = "unaware";
            self ai::set_behavior_attribute("stealth", 1);
            break;
        case 1:
            self.awarenesslevelcurrent = "low_alert";
            self ai::set_behavior_attribute("stealth", 1);
            break;
        case 2:
            self.awarenesslevelcurrent = "high_alert";
            self ai::set_behavior_attribute("stealth", 1);
            break;
        case 3:
            self.awarenesslevelcurrent = "combat";
            self ai::set_behavior_attribute("stealth", 0);
            break;
        }
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 2, eflags: 0x2 linked
// Checksum 0xc0287453, Offset: 0x12c0
// Size: 0x142
function function_147aa1ce(var_7a44d7c, event) {
    function_9f0df832(self.stealth.var_abf79234);
    if (self.stealth.var_abf79234 !== var_7a44d7c) {
        self.stealth.var_9b6cd53f = gettime();
    }
    self.stealth.var_abf79234 = var_7a44d7c;
    self function_55c47950(var_7a44d7c, event);
    switch (var_7a44d7c) {
    case 0:
        function_b26d5148(self);
        break;
    case 1:
        function_6241c1ec();
        break;
    case 2:
        function_d88c0c86();
        break;
    case 3:
        function_ce3d25a0();
        break;
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x4d251f1, Offset: 0x1410
// Size: 0xc2
function function_9f0df832(var_7a44d7c) {
    switch (var_7a44d7c) {
    case 0:
        function_447588f7(self);
        break;
    case 1:
        function_2453519c();
        break;
    case 2:
        function_7b4299f3();
        break;
    case 3:
        function_b082df9f();
        break;
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xd4a0b82a, Offset: 0x14e0
// Size: 0x198
function function_42f7ecd1(instancedata) {
    curtime = gettime();
    if (curtime > instancedata.starttime + 500 && (!isdefined(self.pathgoalpos) || distance2dsquared(self.pathgoalpos, self.origin) < 4) && !self.isarriving && !isdefined(self.ai.var_e8cb3a15)) {
        if (!isdefined(self.stealth.var_627b2039)) {
            return 1;
        }
        var_16922a23 = self.stealth.var_627b2039;
        if (!isvec(var_16922a23)) {
            var_16922a23 = var_16922a23.origin;
        }
        if (distance2dsquared(self.origin, var_16922a23) < 3600 && function_a3f6cdac(var_16922a23[2] - self.origin[2]) < 5184) {
            return 1;
        }
        if (!isdefined(instancedata.var_b4b8dca2)) {
            instancedata.var_b4b8dca2 = 0;
        }
        instancedata.var_b4b8dca2++;
        instancedata.starttime = curtime;
        if (instancedata.var_b4b8dca2 >= 10) {
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x6 linked
// Checksum 0x53f562aa, Offset: 0x1680
// Size: 0x198
function private function_d19483ee() {
    entnum = self getentitynumber();
    range = isdefined(self.var_1c936867) ? self.var_1c936867 : 850;
    var_6b0b485e = 0.866;
    foreach (player in getplayers()) {
        if (!isdefined(player.stealth)) {
            continue;
        }
        if (!isdefined(player.stealth.var_f6c2537d)) {
            player.stealth.var_f6c2537d = [];
        }
        player.stealth.var_f6c2537d[entnum] = undefined;
        if (range <= player.maxvisibledist && self namespace_3d84fa3e::function_51dea76e(player)) {
            player.stealth.var_f6c2537d[entnum] = self;
        }
        arrayremovevalue(player.stealth.var_f6c2537d, undefined, 1);
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x6 linked
// Checksum 0x356da9be, Offset: 0x1820
// Size: 0x42
function private function_7c7868e8() {
    if (function_34f554e4()) {
        return self namespace_3d84fa3e::function_3aec1b7();
    }
    return self namespace_3d84fa3e::function_b8090745();
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 2, eflags: 0x2 linked
// Checksum 0x78714468, Offset: 0x1870
// Size: 0x204
function function_d279bb10(*state, var_2fd642f) {
    if (self isinscriptedstate()) {
        return;
    }
    if (gettime() == self.stealth.starttime) {
        return;
    }
    var_97495fe1 = self.var_97495fe1;
    /#
        if (getdvarint(#"hash_55b967be4d026006", 0)) {
            var_97495fe1 = 0;
        }
    #/
    var_3b69096c = self function_7c7868e8();
    var_4da08689 = var_3b69096c;
    if (isdefined(self.var_e1b3091b)) {
        var_4da08689 = self.var_e1b3091b;
    } else if (is_true(self.var_5fadd3c6)) {
        var_4da08689 = 0;
    } else if (isdefined(var_97495fe1)) {
        var_86c3b867 = 0.1;
        if (var_3b69096c) {
            if (var_97495fe1 > var_2fd642f + var_86c3b867) {
                var_4da08689 = 0;
            }
        } else {
            var_4da08689 = var_97495fe1 < var_2fd642f;
        }
    } else {
        var_4da08689 = is_true(level.var_fa92e32f);
    }
    if (self flag::get("flashlight_on")) {
        var_4da08689 = 1;
    } else if (self flag::get("flashlight_off")) {
        var_4da08689 = 0;
    }
    if (var_3b69096c != var_4da08689) {
        if (function_34f554e4()) {
            self namespace_3d84fa3e::function_8d59ee47(var_4da08689);
        } else {
            self namespace_3d84fa3e::function_9b7441d1(var_4da08689);
        }
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xe5524704, Offset: 0x1a80
// Size: 0x8a
function function_de39aecb(instancedata) {
    self namespace_f1f700ac::function_2ce66982();
    instancedata.var_a00d85f = gettime() + randomintrange(500, 2000);
    if (isdefined(self.stealth.var_855f2406)) {
        self.moveplaybackrate = self.stealth.var_855f2406;
    } else {
        self.moveplaybackrate = 1;
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x7e257693, Offset: 0x1b18
// Size: 0xea
function function_efc17e1a(*behaviortreeentity) {
    var_e4ef5000 = self function_4794d6a3();
    if (isdefined(var_e4ef5000.var_3e4d601a) && !self haspath() && (self ai::get_behavior_attribute("demeanor") === "patrol" || self ai::get_behavior_attribute("demeanor") === "alert")) {
        if (absangleclamp180(self.angles[1] - var_e4ef5000.var_3e4d601a[1]) > 45) {
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xc881ca32, Offset: 0x1c10
// Size: 0x22
function function_fe3c7909(*behaviortreeentity) {
    return function_6f8594d4(50);
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x43ea41c0, Offset: 0x1c40
// Size: 0xda
function function_6f8594d4(var_b7d36d34) {
    if (isdefined(self.stealth.corpse.ent) && distancesquared(self.stealth.corpse.ent.origin, self.origin) < function_a3f6cdac(var_b7d36d34)) {
        if (!is_true(self.stealth.corpse.ent.var_f03da639)) {
            self.stealth.corpse.ent.var_f03da639 = 1;
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x91c07f31, Offset: 0x1d28
// Size: 0x42
function function_ff473d5(behaviortreeentity) {
    if (!btapi_shouldarriveexposed(behaviortreeentity)) {
        return 0;
    }
    return function_6f8594d4(100);
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x4743c0d8, Offset: 0x1d78
// Size: 0x2a
function function_26e16543(*behaviortreeentity) {
    return is_true(self.stealth.var_d912499a);
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xb9d38695, Offset: 0x1db0
// Size: 0x7a
function function_6c404960(behaviortreeentity) {
    if (function_5bfdfc9d()) {
        return 0;
    }
    if (self function_8d09672b(behaviortreeentity) || self function_fed75fc6(behaviortreeentity)) {
        if (self function_efc17e1a(behaviortreeentity)) {
            return 0;
        }
        return 1;
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x8ac01c81, Offset: 0x1e38
// Size: 0x2a
function function_96903634(*behaviortreeentity) {
    return is_true(self.stealth.var_ca926557);
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 6, eflags: 0x2 linked
// Checksum 0x87db1e55, Offset: 0x1e70
// Size: 0x80
function function_ffdd3cba(*mode, *target, *tag, *duration, *sethealth, *ignorefirstshotwait) {
    if (namespace_979752dc::function_b704c906() != "normal") {
        return 0;
    }
    self.stealth.var_ca926557 = 1;
    self thread function_d346f1cf();
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0xec2b3583, Offset: 0x1ef8
// Size: 0x6c
function function_d346f1cf() {
    self notify("b478fa11a5368c9");
    self endon("b478fa11a5368c9");
    self endon(#"death", #"stop_shoot_at_target");
    level waittill(#"hash_733d7b56ac978e53");
    self ai::stop_shoot_at_target();
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xa73f5b44, Offset: 0x1f70
// Size: 0x1e
function function_589cf326(*target) {
    self.stealth.var_ca926557 = 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xfb59c2b, Offset: 0x1f98
// Size: 0x66
function function_e73fe99(*behaviortreeentity) {
    if (!isdefined(self.stealth)) {
        return 0;
    }
    if (self.awarenesslevelcurrent !== "unaware") {
        self.stealth.var_e39ea5e7 = undefined;
    }
    if (is_true(self.stealth.var_e39ea5e7)) {
        return 1;
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x70065fe4, Offset: 0x2008
// Size: 0x1a
function function_5db27177(*behaviortreeentity) {
    self.stealth.var_e39ea5e7 = undefined;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x2cdb99e1, Offset: 0x2030
// Size: 0x234
function function_a1420239(*behaviortreeentity) {
    target = undefined;
    var_d37db7af = 0;
    foreach (player in getplayers()) {
        threatsight = self function_a884a736(player);
        if (!isdefined(target) || threatsight > var_d37db7af) {
            target = player;
            var_d37db7af = threatsight;
        }
    }
    threatsight = var_d37db7af;
    var_85153501 = 0.25;
    if (self.stealth.var_d912499a) {
        var_9f0689a6 = 2000;
        if (threatsight >= var_85153501) {
            self.stealth.var_99bcb549 = gettime();
        }
        if (gettime() > self.stealth.var_99bcb549 + var_9f0689a6) {
            if (threatsight < var_85153501 * 0.9) {
                self.stealth.var_d912499a = 0;
                self.stealth.var_b4d69693 = undefined;
            }
        }
    } else if (threatsight >= var_85153501 && !is_true(self.stealth.var_d912499a) && ai::function_5e5653d3()) {
        self.stealth.var_d912499a = 1;
        self.stealth.var_b4d69693 = target;
        self.stealth.var_99bcb549 = gettime();
        self namespace_979752dc::function_4c1d52fd(target.origin, "small");
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x756da4e6, Offset: 0x2270
// Size: 0x1b4
function function_73d5430d(var_f25d7cda) {
    /#
        assert(!function_e5113f65());
    #/
    if (level flag::get("stealth_spotted")) {
        var_f25d7cda = "hunt";
    }
    var_839ed558 = !isdefined(self.stealth.var_68585806);
    if (!var_839ed558) {
        switch (self.stealth.var_68585806) {
        case #"combat_hunt":
            var_839ed558 = var_f25d7cda != "hunt" && var_f25d7cda != "combat_hunt";
            break;
        case #"spotted":
            var_839ed558 = var_f25d7cda != "combat" && var_f25d7cda != "spotted";
            break;
        case #"hidden":
            var_839ed558 = var_f25d7cda != "idle" && var_f25d7cda != "unaware" && var_f25d7cda != "hidden";
            break;
        default:
            var_839ed558 = self.stealth.var_68585806 != var_f25d7cda;
            break;
        }
    }
    if (var_839ed558) {
        self namespace_f1f700ac::function_7e1ad4d4(var_f25d7cda);
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x269a104b, Offset: 0x2430
// Size: 0x31a
function function_b26d5148(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(1, "idle");
    self.var_d3364a1a.instancedata[taskid] = spawnstruct();
    self.favoriteenemy = undefined;
    self.var_bcf995f7 = 1;
    self.var_f878f103 = undefined;
    self.stealth.var_82666e3d = 0;
    self thread namespace_cc4354b9::function_f4ede6b0();
    function_de39aecb(self.var_d3364a1a.instancedata[taskid]);
    self.combatmode = "no_cover";
    foreach (player in getplayers()) {
        if (!isdefined(player.stealth)) {
            continue;
        }
        if (!isdefined(player.stealth.var_2055753)) {
            continue;
        }
        player.stealth.var_2055753[self.unique_id] = undefined;
    }
    self.diequietly = 1;
    self clearenemy();
    self.stealth.var_d912499a = 0;
    self.var_d3364a1a.instancedata[taskid].var_99bcb549 = -1;
    self thread namespace_f1f700ac::function_b82b38b("reset");
    self namespace_cf88f507::function_a5831502();
    if (isdefined(self.stealth.funcs[#"hidden"])) {
        self namespace_b2b86d39::function_d8eafaa4("hidden");
    }
    if (isdefined(self.stealth.var_e3ebc106)) {
        if (isdefined(self.var_c385dc87) && isdefined(self.stealth.var_e3ebc106)) {
            if (!isvec(self.stealth.var_e3ebc106)) {
                self thread [[ self.var_c385dc87 ]](self.stealth.var_e3ebc106);
            } else {
                self namespace_979752dc::set_goal(self.stealth.var_e3ebc106, undefined, 32);
            }
        }
    }
    self.var_6197c506 = "gun_down";
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xbcfaefa9, Offset: 0x2758
// Size: 0x1e0
function function_bf092f1f(behaviortreeentity) {
    self endon(#"hash_7945dfa248c037db");
    taskid = behaviortreeentity function_db1c5a52(0, "idle");
    if (is_true(self.stealth.blind)) {
        self function_73d5430d("blind");
    } else {
        self function_73d5430d("hidden");
    }
    if (isdefined(self.stealth.var_9ed34e53)) {
        foreach (func in self.stealth.var_9ed34e53) {
            self [[ func ]]();
        }
    }
    curtime = gettime();
    if (curtime >= self.var_d3364a1a.instancedata[taskid].var_a00d85f) {
        function_de39aecb(self.var_d3364a1a.instancedata[taskid]);
    }
    function_a1420239(self.var_d3364a1a.instancedata[taskid]);
    self function_f7659f0d();
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x5c9d859e, Offset: 0x2940
// Size: 0x100
function function_447588f7(behaviortreeentity) {
    self notify(#"hash_7945dfa248c037db");
    taskid = behaviortreeentity function_db1c5a52(0, "idle");
    self.diequietly = 0;
    self.stealth.var_d912499a = undefined;
    self.stealth.var_b4d69693 = undefined;
    self.stealth.var_667f860f = undefined;
    self.stealth.var_46f4d537 = undefined;
    if (self.stealth.var_abf79234 != 1) {
        self.var_806dc35e = undefined;
    }
    self namespace_979752dc::function_7c1b39dc();
    self.var_e51bf23b = undefined;
    self.var_8a4f85c5 = undefined;
    self.moveplaybackrate = 1;
    self.var_d3364a1a.instancedata[taskid] = undefined;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x26a0ecf7, Offset: 0x2a48
// Size: 0x14a
function function_f7659f0d() {
    if (self.stealth.var_d912499a && isdefined(self.stealth.var_b4d69693)) {
        self.var_806dc35e = self lastknownpos(self.stealth.var_b4d69693);
    } else {
        var_26b3b46a = 0;
        foreach (player in getplayers()) {
            threat = self function_a884a736(player);
            if (threat > 0.1) {
                self.var_806dc35e = self lastknownpos(player);
                var_26b3b46a = 1;
                break;
            }
        }
        if (!var_26b3b46a) {
            self.var_806dc35e = undefined;
        }
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x22204922, Offset: 0x2ba0
// Size: 0x2c
function function_8d09672b(*behaviortreeentity) {
    if (self.stealth.var_abf79234 == 1) {
        return 1;
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 7, eflags: 0x2 linked
// Checksum 0x8ce35cbe, Offset: 0x2bd8
// Size: 0x17a
function function_76b15e5c(pod, var_72cc3c18, var_465a4fd5, vol, var_ba41ef8, var_f9817e78, var_caa9db69) {
    if (isdefined(vol)) {
        pos = namespace_206491b4::function_2d5bae57(vol, var_72cc3c18, var_465a4fd5, isdefined(pod) ? pod.var_239f0268 : undefined, 48);
        if (isdefined(pos) && isdefined(var_caa9db69) && var_caa9db69 && !function_d6a6e300(var_72cc3c18, pos)) {
            return undefined;
        }
        return pos;
    } else if (var_f9817e78 > 64 && isdefined(var_ba41ef8)) {
        pos = namespace_206491b4::function_3237777a(var_ba41ef8, var_f9817e78, var_72cc3c18, var_465a4fd5, isdefined(pod) ? pod.var_239f0268 : undefined, 48);
        if (isdefined(pos) && isdefined(var_caa9db69) && var_caa9db69 && !function_d6a6e300(var_72cc3c18, pos)) {
            return undefined;
        }
        return pos;
    }
    return function_d040bd9(var_72cc3c18, 200);
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 2, eflags: 0x2 linked
// Checksum 0x7e2aeb76, Offset: 0x2d60
// Size: 0xb6
function function_d6a6e300(var_844650da, var_99400a59) {
    var_f578e91a = vectornormalize(var_844650da - self.origin);
    var_ea982379 = var_99400a59 - self.origin;
    var_de013700 = length(var_ea982379);
    if (var_de013700 > 256) {
        var_ea982379 = var_ea982379 / var_de013700;
        if (vectordot(var_ea982379, var_f578e91a) < -0.5) {
            return 0;
        }
    }
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xe055f8d5, Offset: 0x2e20
// Size: 0x72
function function_c0a17592(var_a6448663) {
    var_c1edb9e5 = var_a6448663 - self.origin;
    var_842df015 = var_a6448663 - vectornormalize(var_c1edb9e5) * 32;
    var_842df015 = getclosestpointonnavmesh(var_842df015, 500);
    return var_842df015;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0xd6cf21f9, Offset: 0x2ea0
// Size: 0x7bc
function function_de0542ee() {
    var_8747f6cc = 1;
    event = self.stealth.var_aa593a83;
    if (isdefined(self.stealth.investigate_point)) {
        if (isvec(self.stealth.investigate_point)) {
            pos = getclosestpointonnavmesh(self.stealth.investigate_point, 500);
        } else if (isdefined(self.stealth.investigate_point.origin)) {
            pos = getclosestpointonnavmesh(self.stealth.investigate_point.origin, 500);
        } else {
            pos = self.origin;
        }
        if (!isdefined(pos)) {
            pos = self.stealth.investigate_point;
        }
        var_39725a4e = vectornormalize(self.goalpos - self.origin);
        var_d40c8280 = anglestoforward(self.angles);
        var_93a2516c = vectornormalize(pos - self.origin);
        if (isplayer(event.entity) && !isplayer(self.stealth.var_23203165)) {
            var_8747f6cc = 1;
        } else if (vectordot(var_39725a4e, var_93a2516c) < 0 && vectordot(var_d40c8280, var_93a2516c) < 0) {
            var_8747f6cc = 1;
        } else if (event.var_dd29a83a == "saw_corpse") {
            var_8747f6cc = 1;
        } else if (var_8747f6cc && distancesquared(self.goalpos, pos) < function_a3f6cdac(300)) {
            var_8747f6cc = 0;
        }
    }
    if (var_8747f6cc) {
        var_5f25f38e = level.stealth.var_65d8f1bf[self.var_d6319e36];
        var_9bd7a27 = namespace_3fc78cb6::getgroup(self.var_d6319e36);
        pod = namespace_3fc78cb6::function_9fd1b21a(var_9bd7a27, self);
        /#
            assert(isdefined(pod));
        #/
        var_ca361e0e = 0;
        var_f6fb36e9 = 0;
        var_d5379974 = 0;
        if (isdefined(pod.var_67bd7875) && pod.var_67bd7875 == self || pod.members[0] == self) {
            var_ca361e0e = 1;
        } else if (distancesquared(self.origin, event.var_ce3a18c7) < 16384) {
            var_d5379974 = 1;
        } else if (pod.members.size > 1 && pod.members[1] == self) {
            var_f6fb36e9 = 1;
        }
        var_99400a59 = undefined;
        if (var_ca361e0e) {
            if (event.var_dd29a83a == "saw_corpse" || distance2dsquared(self.origin, event.var_ce3a18c7) < 4096) {
                var_99400a59 = event.var_ce3a18c7;
                if (event.var_dd29a83a == "saw_corpse") {
                    var_99400a59 = function_c0a17592(var_99400a59);
                }
                if (isdefined(var_5f25f38e)) {
                    var_2279f286 = self function_a93cf25c(var_99400a59, var_5f25f38e);
                    if (isdefined(var_2279f286)) {
                        var_99400a59 = var_2279f286;
                    }
                }
            }
            if (event.var_dd29a83a == "sight" && isdefined(event.entity) && self cansee(event.entity)) {
                var_99400a59 = event.entity.origin;
            }
            if (!isdefined(var_99400a59)) {
                var_99400a59 = function_76b15e5c(pod, event.var_ce3a18c7, event.var_ce3a18c7, var_5f25f38e, self.var_ba41ef8, self.goalradius, 1);
                if (!isdefined(var_99400a59)) {
                    if (isdefined(var_5f25f38e)) {
                        var_99400a59 = self function_a93cf25c(event.var_ce3a18c7, var_5f25f38e);
                    }
                    if (!isdefined(var_99400a59)) {
                        var_99400a59 = function_76b15e5c(pod, event.var_ce3a18c7, self.origin, var_5f25f38e, self.var_ba41ef8, self.goalradius, 1);
                    }
                    if (!isdefined(var_99400a59)) {
                        var_99400a59 = self.origin;
                    }
                }
            }
        } else if (var_f6fb36e9) {
            f = randomfloatrange(0.7, 0.85);
            var_99400a59 = vectorlerp(self.origin, event.var_ce3a18c7, f);
            var_99400a59 = function_76b15e5c(pod, var_99400a59, var_99400a59, var_5f25f38e, self.var_ba41ef8, self.goalradius);
        } else if (!var_d5379974) {
            var_99400a59 = function_76b15e5c(pod, event.var_ce3a18c7, self.origin, var_5f25f38e, self.var_ba41ef8, self.goalradius);
        }
        if (isdefined(var_99400a59) && !function_d6a6e300(event.var_ce3a18c7, var_99400a59)) {
            var_99400a59 = undefined;
        }
        if (!isdefined(var_99400a59)) {
            var_99400a59 = function_b92e4cdd();
        } else {
            namespace_3fc78cb6::function_172d6f0b(pod, var_99400a59);
        }
        if (isvec(var_99400a59)) {
            var_99400a59 = util::ground_position(var_99400a59, 100);
        } else if (!smart_object::function_1631909f(var_99400a59)) {
            var_99400a59.origin = util::ground_position(var_99400a59.origin, 100);
        }
        self.stealth.var_627b2039 = var_99400a59;
        return var_99400a59;
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x5d2f654e, Offset: 0x3668
// Size: 0x102
function function_b92e4cdd() {
    var_9bd7a27 = namespace_3fc78cb6::getgroup(self.var_d6319e36);
    pod = namespace_3fc78cb6::function_9fd1b21a(var_9bd7a27, self);
    if (isdefined(pod.var_67bd7875) && pod.var_67bd7875 == self) {
        var_99400a59 = undefined;
        if (isdefined(pod.volume)) {
            var_99400a59 = self function_a93cf25c(pod.origin, pod.volume);
        }
        if (!isdefined(var_99400a59)) {
            var_99400a59 = getclosestpointonnavmesh(pod.origin, 500);
        }
        pod.var_67bd7875 = undefined;
    } else {
        var_99400a59 = namespace_3fc78cb6::function_2e140491(self);
    }
    return var_99400a59;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x4424e2d9, Offset: 0x3778
// Size: 0xda
function function_ab8bb721() {
    var_800b89ba = 15;
    var_d4303314 = 20;
    if (isdefined(self.stealth.corpse)) {
        var_800b89ba = 25;
        var_d4303314 = 35;
    }
    if (isdefined(self.stealth.var_800b89ba)) {
        var_800b89ba = self.stealth.var_800b89ba;
    }
    if (isdefined(self.stealth.var_d4303314)) {
        var_d4303314 = self.stealth.var_d4303314;
    }
    self.stealth.var_613e3702 = gettime() + randomintrange(var_800b89ba, var_d4303314) * 1000;
    self.stealth.var_3bf603d9 = undefined;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x90262dc2, Offset: 0x3860
// Size: 0xb2
function function_c8d4ba1() {
    var_fec323b3 = 5;
    var_3af586f1 = 10;
    if (isdefined(self.stealth.var_fec323b3)) {
        var_800b89ba = self.stealth.var_fec323b3;
    }
    if (isdefined(self.stealth.var_3af586f1)) {
        var_d4303314 = self.stealth.var_3af586f1;
    }
    self.stealth.var_3bf603d9 = gettime() + randomintrange(var_fec323b3, var_3af586f1) * 1000;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x0
// Checksum 0xb1d5bbde, Offset: 0x3920
// Size: 0x1c
function function_130e3827() {
    return !is_true(self.var_e9b6a21);
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x251c30d, Offset: 0x3948
// Size: 0x14c
function function_d004e2c7(event) {
    self.stealth.var_aa593a83 = event;
    self.stealth.var_bfd2724e = gettime();
    self function_ab8bb721();
    self.stealth.var_fb5a13e0 = 0;
    function_daddf498(event);
    if (!self isinscriptedstate()) {
        if (is_true(self.var_a13d5b2b)) {
            self.var_6197c506 = "gun_down";
        } else {
            self.var_6197c506 = "ready";
        }
    }
    self.stealth.investigate_point = self function_de0542ee();
    if (isdefined(self.stealth.investigate_point)) {
        var_28e27203 = self namespace_206491b4::function_24b5e32(self.stealth.investigate_point);
        self namespace_979752dc::set_goal(self.stealth.investigate_point, var_28e27203);
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x6810dc32, Offset: 0x3aa0
// Size: 0x1dc
function function_6241c1ec() {
    /#
        assert(isdefined(self.stealth.var_aa593a83));
    #/
    event = self.stealth.var_aa593a83;
    self.stealth.var_88642145 = event.type;
    self.stealth.var_23203165 = event.entity;
    self smart_object::function_a59dc8a8(self.smart_object);
    self.script_forcegoal = 0;
    function_73d5430d("investigate");
    self.diequietly = 1;
    function_daddf498(event);
    self function_ab8bb721();
    self.stealth.var_fb5a13e0 = 1;
    if (!self isinscriptedstate()) {
        if (is_true(self.var_a13d5b2b)) {
            self.var_6197c506 = "gun_down";
        } else {
            self.var_6197c506 = "ready";
        }
    }
    self.stealth.investigate_point = self function_de0542ee();
    if (isdefined(self.stealth.investigate_point)) {
        var_28e27203 = self namespace_206491b4::function_24b5e32(self.stealth.investigate_point);
        self namespace_979752dc::set_goal(self.stealth.investigate_point, var_28e27203);
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xc2fe0b29, Offset: 0x3c88
// Size: 0x13c
function function_daddf498(event) {
    var_7137846d = "small";
    if (event.var_dd29a83a == "bulletwhizby" || event.var_dd29a83a == "grenade danger") {
        var_7137846d = "medium";
    } else if (event.var_dd29a83a == "footstep_sprint") {
        if (isdefined(event.entity) && isplayer(event.entity) && event.entity namespace_6c0cd084::function_911cdf32(self)) {
            var_7137846d = "medium";
        }
    } else if (event.var_dd29a83a == "sight" && self.alertlevel == "high_alert" && self namespace_979752dc::function_d58e1c1c()) {
        var_7137846d = "small_medium";
    }
    self namespace_979752dc::function_4c1d52fd(event.var_ce3a18c7, var_7137846d);
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x63396279, Offset: 0x3dd0
// Size: 0x16c
function function_2640a26c(forced) {
    if (is_true(forced) || isdefined(self.stealth.var_3bf603d9) && gettime() >= self.stealth.var_3bf603d9) {
        if (!is_true(forced) && isdefined(self.smart_object)) {
            if (distancesquared(self.smart_object.origin, self.goalpos) > function_a3f6cdac(self.goalradius)) {
                goal = self.smart_object smart_object::get_goal();
                self namespace_979752dc::set_goal(goal, undefined, goal.goalradius);
            } else {
                return 0;
            }
        }
        if (self.stealth.var_abf79234 == 2) {
            self function_95e7edb1();
        } else if (!self function_76431493()) {
            self function_11ad9ad4();
        }
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x2a09c32e, Offset: 0x3f48
// Size: 0x6c
function function_76431493() {
    if (isdefined(self.stealth.var_613e3702) && gettime() >= self.stealth.var_613e3702) {
        self util::delay(0.05, undefined, &function_5a3580b6, "idle");
        return 1;
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x870be, Offset: 0x3fc0
// Size: 0xe0
function function_7bed8eb1(*behaviortreeentity) {
    self function_73d5430d("investigate");
    if (isdefined(self.stealth.var_9ed34e53)) {
        foreach (func in self.stealth.var_9ed34e53) {
            self [[ func ]]();
        }
    }
    self function_2640a26c();
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 3, eflags: 0x2 linked
// Checksum 0xf6aed51e, Offset: 0x40a8
// Size: 0x6e
function function_eca00d7f(instancedata, pos, var_5fda80c8) {
    self namespace_979752dc::set_patrol_style("combat", var_5fda80c8, pos, "medium");
    instancedata.var_d2936343 = gettime() + 100;
    instancedata.var_cb7fd255 = 256;
    instancedata.var_d0ce4bb8 = 100;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xdd5968b4, Offset: 0x4120
// Size: 0x27e
function function_98fb391c(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(1);
    self.var_8c9988c5 = self.alertlevelint <= 2;
    curtime = gettime();
    instancedata = spawnstruct();
    instancedata.starttime = curtime;
    instancedata.var_814094b6 = curtime + randomintrange(2000, 4000);
    self.var_d3364a1a.instancedata[taskid] = instancedata;
    var_dd29a83a = self.stealth.var_aa593a83.var_dd29a83a;
    var_1d1f100 = hash(self.stealth.var_aa593a83.type);
    switch (var_1d1f100) {
    case #"investigate":
        style = self.awarenesslevelcurrent == "unaware" ? "patrol" : "alert";
        self namespace_979752dc::set_patrol_style(style);
        break;
    default:
        self namespace_979752dc::set_patrol_style("alert");
        break;
    }
    if (var_dd29a83a == "saw_corpse") {
        if (isdefined(self.stealth.corpse.ent)) {
            instancedata.var_fdf9ee19 = curtime + 200;
        }
    } else if (var_dd29a83a == "grenade danger") {
        self.grenadeawareness = 1;
        self.var_bae6f46d = 0;
        return;
    }
    if (!isdefined(self.stealth.var_627b2039)) {
        self function_11ad9ad4(self.var_d3364a1a.instancedata[taskid]);
    }
    self.var_f8f1706d = 1;
    instancedata.var_7c2fd10a = curtime + 2000;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 3, eflags: 0x2 linked
// Checksum 0x17ffa9e8, Offset: 0x43a8
// Size: 0xc6
function function_8bd5a605(instancedata, targetpos, eventtype) {
    /#
        assert(isdefined(targetpos));
    #/
    t = 5000;
    if (isdefined(eventtype)) {
        switch (eventtype) {
        case #"sight":
            t = 1000;
            break;
        case #"light_killed":
        case #"glass_destroyed":
            t = 3000;
            break;
        }
    }
    self.var_806dc35e = targetpos;
    instancedata.var_aaf77959 = gettime() + t;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x50dbe834, Offset: 0x4478
// Size: 0x394
function function_11ad9ad4(instancedata) {
    self.stealth.var_3bf603d9 = undefined;
    var_9bd7a27 = namespace_3fc78cb6::getgroup(self.var_d6319e36);
    pod = namespace_3fc78cb6::function_9fd1b21a(var_9bd7a27, self);
    if (is_true(self.stealth.var_fb5a13e0)) {
        goalpos = function_de0542ee();
    } else {
        goalpos = function_b92e4cdd();
        var_9bd7a27 = namespace_3fc78cb6::getgroup(self.var_d6319e36);
        pod = namespace_3fc78cb6::function_9fd1b21a(var_9bd7a27, self);
        if (isdefined(pod.var_9d82663e)) {
            arrayremovevalue(pod.var_9d82663e, self);
        }
    }
    if (isdefined(pod.var_9d82663e)) {
        arrayremovevalue(pod.var_9d82663e, self);
    }
    if (isdefined(pod.var_67bd7875) && pod.var_67bd7875 == self) {
        pod.var_67bd7875 = undefined;
    }
    if (isdefined(goalpos)) {
        self.stealth.investigate_point = goalpos;
        var_28e27203 = undefined;
        self.stealth.var_627b2039 = goalpos;
        if (self.stealth.var_fb5a13e0 && isdefined(instancedata)) {
            instancedata.var_b4b8dca2 = 0;
            var_dd29a83a = self.stealth.var_aa593a83.var_dd29a83a;
            if (var_dd29a83a == "saw_corpse" || var_dd29a83a == "found_corpse") {
                function_eca00d7f(instancedata, goalpos, 1);
            } else if (var_dd29a83a == "bulletwhizby" || var_dd29a83a == "grenade danger") {
                self namespace_979752dc::set_patrol_style("cqb");
                var_28e27203 = self namespace_206491b4::function_24b5e32(goalpos);
            } else {
                self namespace_979752dc::set_patrol_style("alert");
                var_2008a9a5 = self.stealth.var_aa593a83.var_199a4f52;
                if (!isdefined(var_2008a9a5)) {
                    var_2008a9a5 = self.stealth.var_aa593a83.var_ce3a18c7;
                }
                function_8bd5a605(instancedata, var_2008a9a5, var_dd29a83a);
                var_28e27203 = self namespace_206491b4::function_24b5e32(goalpos);
            }
        } else {
            self namespace_979752dc::set_patrol_style("alert");
            self.moveplaybackrate = 1;
            var_28e27203 = self namespace_206491b4::function_24b5e32(goalpos);
        }
        self namespace_979752dc::set_goal(goalpos, var_28e27203, 24);
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x0
// Checksum 0x7a5a9c94, Offset: 0x4818
// Size: 0x7a
function function_1cfa51a8(instancedata) {
    var_c43fd60f = 400;
    instancedata.var_8382c737 = 1;
    instancedata.var_2d8f85bb = gettime() + var_c43fd60f;
    instancedata.var_af22988c = 0;
    if (math::cointoss()) {
        instancedata.var_3a1076b = 1;
    } else {
        instancedata.var_3a1076b = -1;
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xaae2b3ac, Offset: 0x48a0
// Size: 0x66
function function_92c676dd(instancedata) {
    instancedata.var_814094b6 = gettime() + randomintrange(2000, 4000);
    instancedata.var_8382c737 = undefined;
    instancedata.var_2d8f85bb = undefined;
    instancedata.var_af22988c = undefined;
    instancedata.var_3a1076b = undefined;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 2, eflags: 0x2 linked
// Checksum 0x6d3a3dc6, Offset: 0x4910
// Size: 0x2b2
function function_4cba4f7b(instancedata, targetdist) {
    var_c43fd60f = 400;
    var_78075333 = 1000;
    var_51efeda2 = 20;
    facingdir = anglestoforward(self.angles);
    curtime = gettime();
    /#
        assert(isdefined(instancedata.var_af22988c));
    #/
    switch (instancedata.var_af22988c) {
    case 0:
        t = (instancedata.var_2d8f85bb - curtime) / var_c43fd60f;
        if (t > 0) {
            angle = var_51efeda2 * (1 - sin(t * 90)) * instancedata.var_3a1076b;
            self.var_806dc35e = self.origin + rotatepoint(facingdir, (0, angle, 0)) * targetdist;
            break;
        }
        instancedata.var_2d8f85bb = curtime + var_78075333;
        instancedata.var_af22988c++;
    case 1:
    LOC_00000162:
        if (curtime < instancedata.var_2d8f85bb) {
            self.var_806dc35e = self.origin + rotatepoint(facingdir, (0, var_51efeda2 * instancedata.var_3a1076b, 0)) * targetdist;
            break;
        }
        instancedata.var_2d8f85bb = curtime + var_c43fd60f;
        instancedata.var_af22988c++;
    case 2:
    LOC_000001d2:
        t = (instancedata.var_2d8f85bb - curtime) / var_c43fd60f;
        if (t > 0) {
            angle = var_51efeda2 * sin(t * 90) * instancedata.var_3a1076b;
            self.var_806dc35e = self.origin + rotatepoint(facingdir, (0, angle, 0)) * targetdist;
        } else {
            function_92c676dd(instancedata);
        }
        break;
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xe0ce10b5, Offset: 0x4bd0
// Size: 0x36a
function function_7640f842(instancedata) {
    curtime = gettime();
    if (isdefined(instancedata.var_aaf77959)) {
        if (isdefined(self.var_806dc35e)) {
            var_603bebf6 = self.var_806dc35e - self.origin;
            var_40b6f5f3 = isdefined(self.stealth.var_e7851b9f) || isdefined(self.stealth.var_4b0080e1);
            if (curtime > instancedata.var_aaf77959 || !var_40b6f5f3 && abs(self.angles[1] - function_2981bd91(var_603bebf6)) > 50) {
                self.var_806dc35e = undefined;
                instancedata.var_aaf77959 = undefined;
                instancedata.var_814094b6 = curtime + randomintrange(2000, 4000);
            }
        } else {
            instancedata.var_aaf77959 = undefined;
            instancedata.var_814094b6 = curtime + randomintrange(2000, 4000);
        }
    }
    if (!isdefined(instancedata.var_aaf77959)) {
        facingdir = anglestoforward(self.angles);
        var_4b9400c1 = 0;
        foreach (player in getplayers()) {
            if (self function_a884a736(player) > 0) {
                var_4b9400c1 = 1;
                function_92c676dd(instancedata);
                self.var_806dc35e = self lastknownpos(player);
                break;
            }
        }
        if (!var_4b9400c1) {
            var_c43fd60f = 400;
            var_78075333 = 1000;
            var_51efeda2 = 20;
            if (isdefined(instancedata.var_8382c737)) {
                function_4cba4f7b(instancedata, 500);
            } else if (isdefined(instancedata.var_814094b6) && curtime > instancedata.var_814094b6) {
                instancedata.var_8382c737 = 1;
                instancedata.var_2d8f85bb = curtime + var_c43fd60f;
                instancedata.var_af22988c = 0;
                if (math::cointoss()) {
                    instancedata.var_3a1076b = 1;
                } else {
                    instancedata.var_3a1076b = -1;
                }
                function_4cba4f7b(instancedata, 500);
            } else {
                self.var_806dc35e = undefined;
            }
        }
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x6 linked
// Checksum 0x5fe257cd, Offset: 0x4f48
// Size: 0x1b4
function private function_d6c9b118() {
    if (isdefined(level.stealth.var_f67fe42c)) {
        return;
    }
    level.stealth.var_f67fe42c = [];
    level.stealth.var_f67fe42c[0] = [2:&aiutility::function_865ea8e6, 1:&aiutility::function_865ea8e6, 0:&aiutility::function_865ea8e6];
    level.stealth.var_f67fe42c[2] = [2:&function_f874d2f1, 1:&function_843b5351, 0:&function_c643bbbb];
    level.stealth.var_f67fe42c[1] = [2:&function_a6497ddc, 1:&function_8e428cdb, 0:&function_98fb391c];
    level.stealth.var_f67fe42c[3] = [2:&aiutility::function_865ea8e6, 1:&aiutility::function_865ea8e6, 0:&aiutility::function_865ea8e6];
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x1044d5a, Offset: 0x5108
// Size: 0x178
function function_36915a04(behaviortreeentity) {
    behaviortreeentity function_ed7c3705("stealth");
    if (namespace_ae9b2918::function_30579259(behaviortreeentity)) {
        var_24a76e36 = behaviortreeentity function_f206a7f(1);
        behaviortreeentity.var_4f6f8942 = !var_24a76e36;
    }
    if (!isdefined(self.stealth)) {
        return 1;
    }
    /#
        assert(!isdefined(self.var_d3364a1a.var_98919459));
    #/
    self.var_d3364a1a.var_98919459 = behaviortreeentity function_db1c5a52(1, "move");
    self.var_d3364a1a.instancedata[self.var_d3364a1a.var_98919459] = self.stealth.var_abf79234;
    function_d6c9b118();
    [[ level.stealth.var_f67fe42c[self.stealth.var_abf79234][0] ]](behaviortreeentity);
    behaviortreeentity ai::function_fc7bd6c7();
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x41d24bdf, Offset: 0x5288
// Size: 0x1c8
function function_7653ca27(behaviortreeentity) {
    if (self flag::get("in_action")) {
        return 1;
    }
    if (!isdefined(self.stealth)) {
        namespace_2dd2c4d8::function_3b9e6ead(behaviortreeentity, "turn@stealth");
        return 1;
    }
    /#
        assert(isdefined(self.var_d3364a1a.var_98919459));
    #/
    if (self.var_d3364a1a.instancedata[self.var_d3364a1a.var_98919459] != self.stealth.var_abf79234) {
        [[ level.stealth.var_f67fe42c[self.var_d3364a1a.instancedata[self.var_d3364a1a.var_98919459]][2] ]](behaviortreeentity);
        [[ level.stealth.var_f67fe42c[self.stealth.var_abf79234][0] ]](behaviortreeentity);
        self.var_d3364a1a.instancedata[self.var_d3364a1a.var_98919459] = self.stealth.var_abf79234;
    }
    updateresult = [[ level.stealth.var_f67fe42c[self.stealth.var_abf79234][1] ]](behaviortreeentity);
    if (updateresult) {
        namespace_2dd2c4d8::function_3b9e6ead(behaviortreeentity, "turn@stealth");
    }
    return updateresult;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xe7372386, Offset: 0x5458
// Size: 0x108
function function_bf263c90(behaviortreeentity) {
    behaviortreeentity function_ed7c3705("none");
    if (!isdefined(self.stealth)) {
        behaviortreeentity ai::function_f6060793();
        return 1;
    }
    /#
        assert(isdefined(self.var_d3364a1a.var_98919459));
    #/
    [[ level.stealth.var_f67fe42c[self.var_d3364a1a.instancedata[self.var_d3364a1a.var_98919459]][2] ]](behaviortreeentity);
    self.var_d3364a1a.instancedata[self.var_d3364a1a.var_98919459] = undefined;
    self.var_d3364a1a.var_98919459 = undefined;
    behaviortreeentity ai::function_f6060793();
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xe57af246, Offset: 0x5568
// Size: 0x70
function function_445c5acf(behaviortreeentity) {
    behaviortreeentity function_f206a7f(0, behaviortreeentity.var_4f6f8942);
    behaviortreeentity.var_4f6f8942 = undefined;
    if (!isdefined(self.stealth)) {
        return 1;
    }
    self.stealth.var_36261740 = undefined;
    self namespace_cc4354b9::function_f4ede6b0();
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xd7c381b, Offset: 0x55e0
// Size: 0x6aa
function function_8e428cdb(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52();
    if (isdefined(self getlinkedent())) {
        return 1;
    }
    if (self.stealth.var_aa593a83.var_dd29a83a == "grenade danger") {
        return 1;
    }
    curtime = gettime();
    instancedata = self.var_d3364a1a.instancedata[taskid];
    var_9bd7a27 = namespace_3fc78cb6::getgroup(self.var_d6319e36);
    pod = namespace_3fc78cb6::function_9fd1b21a(var_9bd7a27, self);
    /#
        assert(isdefined(pod));
    #/
    if (isdefined(pod.var_9d82663e) && array::contains(pod.var_9d82663e, self)) {
        goalpos = function_b92e4cdd();
        goalorigin = goalpos;
        if (isdefined(goalpos)) {
            if (!isvec(goalorigin)) {
                goalorigin = goalorigin.origin;
            }
            arrayremovevalue(pod.var_9d82663e, self);
            var_28e27203 = undefined;
            var_16721ebf = self.stealth.var_aa593a83.var_dd29a83a;
            if (var_16721ebf == "saw_corpse" || var_16721ebf == "found_corpse") {
                function_eca00d7f(instancedata, goalorigin, 0);
            } else {
                var_ff42b0fb = gettime() > instancedata.starttime;
                demeanor = "alert";
                var_148608c8 = "small";
                if (var_16721ebf == "bulletwhizby" || self ai::get_behavior_attribute("demeanor") == "combat") {
                    demeanor = "cqb";
                    var_148608c8 = "medium";
                }
                if (is_true(self.stealth.var_fb5a13e0) && isdefined(self.pathgoalpos) && distancesquared(self.pathgoalpos, goalorigin) < 576) {
                    var_ff42b0fb = 0;
                }
                namespace_979752dc::set_patrol_style(demeanor, var_ff42b0fb, goalorigin, var_148608c8);
                var_2008a9a5 = self.stealth.var_aa593a83.var_199a4f52;
                if (!isdefined(var_2008a9a5)) {
                    var_2008a9a5 = self.stealth.var_aa593a83.var_ce3a18c7;
                }
                function_8bd5a605(instancedata, var_2008a9a5, var_16721ebf);
                var_28e27203 = namespace_206491b4::function_24b5e32(goalorigin);
                instancedata.var_fdf9ee19 = undefined;
            }
            self namespace_979752dc::set_goal(goalpos, var_28e27203);
        }
    }
    if (isdefined(instancedata.var_fdf9ee19) && curtime > instancedata.var_fdf9ee19) {
        if (isdefined(self.stealth.corpse.ent)) {
            var_a6448663 = self.stealth.corpse.ent namespace_979752dc::function_5b776bd1();
            var_a6448663 = self function_c0a17592(var_a6448663);
            self namespace_979752dc::set_goal(var_a6448663);
            instancedata.var_fdf9ee19 = curtime + 200;
        } else {
            instancedata.var_fdf9ee19 = undefined;
        }
    }
    if (isdefined(instancedata.var_7c2fd10a) && curtime > instancedata.var_7c2fd10a) {
        self.var_f8f1706d = undefined;
        instancedata.var_7c2fd10a = undefined;
    }
    if (isalive(getplayers()[0])) {
        target = getplayers()[0];
        if (self cansee(target)) {
            /#
                assert(issentient(target));
            #/
            function_8bd5a605(instancedata, self lastknownpos(target) + vectorscale((0, 0, 1), 32), "sight");
        }
    }
    function_7640f842(instancedata);
    if (function_42f7ecd1(instancedata)) {
        return 1;
    }
    if (isdefined(instancedata.var_d2936343) && curtime >= instancedata.var_d2936343) {
        var_3f9c4a4 = 512;
        if (isdefined(instancedata.var_cb7fd255)) {
            var_3f9c4a4 = instancedata.var_cb7fd255;
        }
        if (self getpathlength() > var_3f9c4a4) {
            interval = 1000;
            if (isdefined(instancedata.var_d0ce4bb8)) {
                interval = instancedata.var_d0ce4bb8;
            }
            instancedata.var_d2936343 = gettime() + interval;
        } else {
            self namespace_979752dc::set_patrol_style("alert");
            instancedata.var_d2936343 = undefined;
        }
    }
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x3e126109, Offset: 0x5c98
// Size: 0xbc
function function_a6497ddc(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52();
    self.var_8c9988c5 = 0;
    if (is_true(self.stealth.var_fb5a13e0)) {
        self.stealth.var_fb5a13e0 = 0;
        self.stealth.var_613e3702 = undefined;
    }
    self.var_d3364a1a.instancedata[taskid] = undefined;
    self.var_806dc35e = undefined;
    self.var_f8f1706d = undefined;
    function_cb942647();
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0xddb766de, Offset: 0x5d60
// Size: 0xaa
function function_cb942647() {
    if (!isdefined(self.stealth.var_aa593a83) || !isdefined(self.stealth.var_aa593a83.var_ce3a18c7)) {
        return;
    }
    var_be08d976 = self.stealth.var_aa593a83.var_ce3a18c7[2] - self.origin[2];
    if (var_be08d976 > 75) {
        self.var_920617c1 = "stealth_investigate_height_high";
    } else {
        self.var_920617c1 = "stealth_investigate_height_default";
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xa624b91e, Offset: 0x5e18
// Size: 0x1b8
function function_7b0493d0(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(1);
    data = spawnstruct();
    data.var_2f6fb34a = gettime() + 8000;
    if (isdefined(self.stealth.var_e7177364)) {
        data.var_e2ac1b9a = gettime() + self.stealth.var_e7177364 * 1000;
        self.stealth.var_e7177364 = undefined;
    }
    self.var_d3364a1a.instancedata[taskid] = data;
    timeout = 8000;
    self namespace_979752dc::set_goal(self namespace_979752dc::function_133b86af());
    self namespace_979752dc::set_patrol_style("alert");
    self.stealth.var_4e0cbc53 = 1;
    if (!is_true(self.stealth.var_fb5a13e0) && !isdefined(self.stealth.var_613e3702)) {
        function_ab8bb721();
    }
    if (!isdefined(self.stealth.var_3bf603d9) || gettime() > self.stealth.var_3bf603d9) {
        function_c8d4ba1();
    }
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x5b37f7c7, Offset: 0x5fd8
// Size: 0x25c
function function_b1ec5a57(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52();
    if (!isdefined(self.var_d3364a1a.instancedata[taskid].var_2f6fb34a) || gettime() > self.var_d3364a1a.instancedata[taskid].var_2f6fb34a) {
        return 0;
    }
    if (is_true(self.stealth.var_fb5a13e0)) {
        if (isdefined(self.var_d3364a1a.instancedata[taskid].var_e2ac1b9a) && gettime() < self.var_d3364a1a.instancedata[taskid].var_e2ac1b9a) {
            return 1;
        }
    }
    var_9bd7a27 = namespace_3fc78cb6::getgroup(self.var_d6319e36);
    pod = namespace_3fc78cb6::function_9fd1b21a(var_9bd7a27, self);
    if (isdefined(pod) && isdefined(pod.var_9d82663e) && array::contains(pod.var_9d82663e, self)) {
        arrayremovevalue(pod.var_9d82663e, self);
        return 1;
    }
    foreach (player in getplayers()) {
        if (self function_a884a736(player) > 0.05 && self namespace_979752dc::function_d58e1c1c() && self.alertlevel != "high_alert") {
            return 0;
        }
    }
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x85730500, Offset: 0x6240
// Size: 0x5a
function function_9fddcfcb(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52();
    self.var_d3364a1a.instancedata[taskid] = undefined;
    self.stealth.var_4e0cbc53 = 0;
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xc782a2d9, Offset: 0x62a8
// Size: 0x156
function function_aa3021fa(*behaviortreeentity) {
    var_26b3b46a = 0;
    foreach (player in getplayers()) {
        if (self function_a884a736(player) > 0.05) {
            self.var_806dc35e = self lastknownpos(player);
            var_26b3b46a = 1;
            break;
        }
    }
    if (var_26b3b46a) {
        return 1;
    }
    if (isdefined(self.var_806dc35e)) {
        var_9bd7a27 = namespace_3fc78cb6::getgroup(self.var_d6319e36);
        pod = namespace_3fc78cb6::function_9fd1b21a(var_9bd7a27, self);
        pod namespace_3fc78cb6::function_21e27027(self, self.var_806dc35e);
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0xf48b053b, Offset: 0x6408
// Size: 0x110
function function_2453519c() {
    self namespace_979752dc::set_goal(self.origin);
    self.diequietly = 0;
    self.stealth.investigate_point = undefined;
    self.stealth.var_88642145 = undefined;
    self.stealth.var_23203165 = undefined;
    self.stealth.var_56d82ea8 = undefined;
    self.stealth.var_aa593a83 = undefined;
    self.stealth.var_fb5a13e0 = undefined;
    self.stealth.var_2fc1acc = undefined;
    self.stealth.var_613e3702 = undefined;
    self.stealth.var_627b2039 = undefined;
    self.stealth.var_bfd2724e = undefined;
    self.moveplaybackrate = 1;
    self.var_806dc35e = undefined;
    self function_f2887688();
    self namespace_cc4354b9::function_f4ede6b0();
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x254ffdb6, Offset: 0x6520
// Size: 0x2c
function function_fed75fc6(*behaviortreeentity) {
    if (self.stealth.var_abf79234 == 2) {
        return 1;
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 2, eflags: 0x2 linked
// Checksum 0x460384d4, Offset: 0x6558
// Size: 0x1ae
function function_18ef8551(pod, guy) {
    foreach (group in level.stealth.var_9bd7a27.groups) {
        foreach (var_dff5abf9 in group.pods) {
            if (var_dff5abf9 == pod) {
                continue;
            }
            if (var_dff5abf9.state == 2 && isdefined(var_dff5abf9.var_b595bdc4) && distance2dsquared(pod.origin, var_dff5abf9.origin) < 576) {
                pod.var_b595bdc4 = 1;
                return 0;
            }
        }
    }
    var_a9da6f8e = pod namespace_3fc78cb6::function_d36ab8c9(pod.origin);
    return isdefined(var_a9da6f8e) && var_a9da6f8e == guy;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x9811bded, Offset: 0x6710
// Size: 0x1c6
function function_3edb59e9() {
    if (!isdefined(self.stealth.var_bd106aaa) || !isdefined(self.stealth.var_bd106aaa.var_64a52bf3)) {
        if (!isdefined(self.var_f09600d3) || !isdefined(level.stealth.var_ebbdef7a[self.var_f09600d3]) || level.stealth.var_ebbdef7a[self.var_f09600d3].size == 0) {
            return;
        }
        region = self namespace_5cd4acd8::function_56a3513c(self.origin);
        if (!isdefined(region)) {
            return;
        }
        if (!isdefined(self.stealth.var_bd106aaa)) {
            self.stealth.var_bd106aaa = spawnstruct();
        }
        var_bd106aaa = self.stealth.var_bd106aaa;
        var_bd106aaa.var_c727f45c = [];
        var_bd106aaa.var_c727f45c[0] = region;
        var_bd106aaa.var_c727f45c[1] = region;
        var_bd106aaa.var_62a9ce67 = 0;
        self namespace_5cd4acd8::function_8ae3cf7(region);
        /#
            assert(isdefined(region.var_e7f2146e));
        #/
        var_bd106aaa.var_dd7b7a67 = self namespace_5cd4acd8::function_20f51edc(self.origin, region.var_e7f2146e);
        var_bd106aaa.var_daaf8b01 = 1;
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0xafce864a, Offset: 0x68e0
// Size: 0x6a
function function_4c52cac6() {
    if (isdefined(self.stealth.var_bd106aaa)) {
        if (isdefined(self.stealth.var_bd106aaa.var_64a52bf3)) {
            namespace_5cd4acd8::function_4405db51(self.stealth.var_bd106aaa.var_64a52bf3);
        }
        self.stealth.var_bd106aaa = undefined;
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 2, eflags: 0x2 linked
// Checksum 0x85be2d88, Offset: 0x6958
// Size: 0x10c
function function_58b7706b(var_c27b6fd6, var_b034cb49) {
    foreach (link in var_c27b6fd6.var_606108c5) {
        if (link.region == var_b034cb49) {
            var_715a5cbd = link.var_bfe8c1cb.origin;
            for (i = 0; i < var_b034cb49.var_e7f2146e.size; i++) {
                if (distancesquared(var_b034cb49.var_e7f2146e[i].origin, var_715a5cbd) < 4) {
                    return i;
                }
            }
        }
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x3774e213, Offset: 0x6a70
// Size: 0x5a0
function function_578c1573() {
    /#
        assert(isdefined(self.stealth.var_bd106aaa));
    #/
    var_bd106aaa = function_2e532eed(self.stealth.var_bd106aaa);
    var_355a0ab5 = var_bd106aaa.var_dd7b7a67;
    var_22016eea = function_2e532eed(self.stealth.var_bd106aaa.var_64a52bf3);
    var_6e87d6b2 = 0;
    var_9bf11123 = undefined;
    var_dabfef2a = 0;
    while (var_dabfef2a < 2) {
        result = self namespace_5cd4acd8::function_784b4e1e(self.origin, var_bd106aaa.var_64a52bf3, var_bd106aaa.var_dd7b7a67, var_bd106aaa.var_daaf8b01);
        if (isdefined(result)) {
            var_9bf11123 = result[0];
            var_bd106aaa.var_dd7b7a67 = result[1];
            if (var_6e87d6b2) {
                self namespace_5cd4acd8::function_327e7609(var_22016eea);
                self.stealth.var_bd106aaa = function_2e532eed(var_bd106aaa);
                self namespace_5cd4acd8::function_8ae3cf7(var_bd106aaa.var_64a52bf3);
            }
            return self function_4efdd16b(var_9bf11123);
        } else {
            if (var_dabfef2a == 1) {
                break;
            }
            var_64a52bf3 = var_bd106aaa.var_64a52bf3;
            var_bd106aaa.var_64a52bf3 = self namespace_5cd4acd8::function_4732f30e(var_bd106aaa.var_64a52bf3);
            var_bd106aaa.var_dd7b7a67 = 0;
            var_bd106aaa.var_daaf8b01 = 1;
            if (var_64a52bf3 != var_bd106aaa.var_64a52bf3) {
                var_3a454b3a = function_58b7706b(var_64a52bf3, var_bd106aaa.var_64a52bf3);
                if (isdefined(var_3a454b3a)) {
                    var_bd106aaa.var_dd7b7a67 = var_3a454b3a;
                } else {
                    var_bd106aaa.var_dd7b7a67 = self namespace_5cd4acd8::function_20f51edc(self.origin, var_bd106aaa.var_64a52bf3.var_e7f2146e);
                }
                if (var_bd106aaa.var_dd7b7a67 > var_bd106aaa.var_64a52bf3.var_e7f2146e.size * 0.5) {
                    var_bd106aaa.var_daaf8b01 = 0;
                }
                var_6e87d6b2 = 1;
            }
            var_dabfef2a++;
        }
    }
    fallback = var_355a0ab5;
    var_5857f222 = var_355a0ab5 + 1;
    var_74350fc8 = self.stealth.var_bd106aaa.var_64a52bf3.var_e7f2146e.size;
    if (var_6e87d6b2) {
        self namespace_5cd4acd8::function_327e7609(var_22016eea);
        self.stealth.var_bd106aaa = function_2e532eed(var_bd106aaa);
        self namespace_5cd4acd8::function_8ae3cf7(var_bd106aaa.var_64a52bf3);
        fallback = var_bd106aaa.var_dd7b7a67;
        var_5857f222 = var_bd106aaa.var_dd7b7a67 + 1;
        var_74350fc8 = var_bd106aaa.var_64a52bf3.var_e7f2146e.size;
        if (var_bd106aaa.var_dd7b7a67 > var_74350fc8 * 0.5) {
            fallback = var_74350fc8 - 1;
            var_5857f222 = fallback - 1;
        }
    }
    var_bd106aaa = self.stealth.var_bd106aaa;
    if (var_bd106aaa.var_daaf8b01) {
        var_bd106aaa.var_dd7b7a67 = var_bd106aaa.var_dd7b7a67 + 1;
        if (var_bd106aaa.var_dd7b7a67 >= var_bd106aaa.var_64a52bf3.var_e7f2146e.size) {
            var_bd106aaa.var_dd7b7a67 = 0;
        }
    } else {
        var_bd106aaa.var_dd7b7a67 = var_bd106aaa.var_dd7b7a67 - 1;
        if (var_bd106aaa.var_dd7b7a67 < 0) {
            var_bd106aaa.var_dd7b7a67 = var_bd106aaa.var_64a52bf3.var_e7f2146e.size - 1;
        }
    }
    var_bd106aaa.var_64a52bf3.var_e7f2146e[fallback].angles = undefined;
    if (var_5857f222 >= 0 && var_5857f222 < var_74350fc8) {
        var_bd106aaa.var_64a52bf3.var_e7f2146e[fallback].angles = vectortoangles(var_bd106aaa.var_64a52bf3.var_e7f2146e[var_5857f222].origin - var_bd106aaa.var_64a52bf3.var_e7f2146e[fallback].origin);
    }
    var_bd106aaa.var_64a52bf3.var_e7f2146e[fallback].var_4ff89bee = gettime() + 5000;
    return var_bd106aaa.var_64a52bf3.var_e7f2146e[fallback];
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x85b3fad4, Offset: 0x7018
// Size: 0x310
function function_95e7edb1() {
    if (isdefined(self.stealth.var_d4a1eb27) && isdefined(self.stealth.var_b997a50) && gettime() < self.stealth.var_d4a1eb27) {
        return self.stealth.var_b997a50;
    }
    var_9bd7a27 = namespace_3fc78cb6::getgroup(self.var_d6319e36);
    pod = namespace_3fc78cb6::function_9fd1b21a(var_9bd7a27, self);
    var_99400a59 = undefined;
    if (isdefined(self.stealth.var_a22914d1)) {
        var_99400a59 = self.stealth.var_a22914d1;
        self.stealth.var_a22914d1 = undefined;
        self function_4c52cac6();
    }
    if (!isdefined(var_99400a59) && isdefined(pod) && isdefined(pod.origin) && !isdefined(pod.var_b595bdc4)) {
        if (function_18ef8551(pod, self)) {
            var_99400a59 = pod.origin;
            pod.var_b595bdc4 = 1;
            self function_4c52cac6();
        }
    }
    if (!isdefined(var_99400a59)) {
        self function_3edb59e9();
        if (isdefined(self.stealth.var_bd106aaa)) {
            var_99400a59 = self function_578c1573();
        } else if (isdefined(pod) && isdefined(pod.var_5462c308)) {
            var_99400a59 = namespace_3fc78cb6::function_2e140491(self, level.stealth.var_d89f1312[self.var_d6319e36]);
        }
    }
    if (!isdefined(var_99400a59) && getplayers().size > 0) {
        var_99400a59 = getplayers()[0].origin;
    }
    var_88427393 = isvec(var_99400a59) ? var_99400a59 : var_99400a59.origin;
    var_ed142a01 = getclosestpointonnavmesh(var_88427393);
    if (isdefined(var_ed142a01)) {
        self.stealth.var_b997a50 = var_ed142a01;
    } else {
        self.stealth.var_b997a50 = var_88427393;
    }
    self.stealth.var_d4a1eb27 = gettime() + 500;
    if (isdefined(var_99400a59)) {
        self namespace_979752dc::set_goal(var_99400a59);
    }
    return var_99400a59;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x6282e60f, Offset: 0x7330
// Size: 0x272
function function_d88c0c86() {
    self.combatmode = "no_cover";
    self namespace_f1f700ac::function_7e1ad4d4("hunt");
    self namespace_f1f700ac::function_b82b38b("combat_hunt");
    self smart_object::function_a59dc8a8(self.smart_object);
    self namespace_979752dc::set_patrol_style("cqb");
    self namespace_979752dc::function_adf02a98(30);
    self namespace_3d84fa3e::function_229440d2();
    self.stealth.var_40a89c9f = 1;
    self.diequietly = 1;
    self.var_5e7da660 = 1;
    self.var_e51bf23b = undefined;
    self.var_8a4f85c5 = undefined;
    var_9bd7a27 = namespace_3fc78cb6::getgroup(self.var_d6319e36);
    pod = namespace_3fc78cb6::function_9fd1b21a(var_9bd7a27, self);
    /#
        assert(isdefined(pod));
    #/
    if (isdefined(pod.var_35becac4) && !pod.var_35becac4) {
        /#
            assert(isdefined(level.stealth.var_d89f1312[self.var_d6319e36]));
        #/
        self namespace_979752dc::set_goal(level.stealth.var_d89f1312[self.var_d6319e36]);
        if (isdefined(self.var_f1759db3)) {
            self.combatmode = self.var_f1759db3;
        } else {
            self.combatmode = "cover";
        }
    } else {
        function_95e7edb1();
    }
    if (!self isinscriptedstate()) {
        if (is_true(self.var_a13d5b2b)) {
            self.var_6197c506 = "gun_down";
        } else {
            self.var_6197c506 = "ready";
        }
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x0
// Checksum 0xfd704c1c, Offset: 0x75b0
// Size: 0x10
function function_12e4ae14(*behaviortreeentity) {
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xb8537cef, Offset: 0x75c8
// Size: 0x68
function function_ae010fd5(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(1, "Hunt_Delay");
    self.var_d3364a1a.instancedata[taskid] = randomintrange(500, 1500);
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xaacab081, Offset: 0x7638
// Size: 0xcc
function function_27a91ca9(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(0, "Hunt_Delay");
    if (!behaviortreeentity haspath() && isdefined(self.var_d3364a1a.instancedata[taskid])) {
        self.var_d3364a1a.instancedata[taskid] = self.var_d3364a1a.instancedata[taskid] - function_60d95f53();
        if (self.var_d3364a1a.instancedata[taskid] <= 0) {
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xa81f8f3f, Offset: 0x7710
// Size: 0x4c
function function_91aca790(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(0, "Hunt_Delay");
    self.var_d3364a1a.instancedata[taskid] = undefined;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xd9671b6a, Offset: 0x7768
// Size: 0x17c
function function_e0da5221(instancedata) {
    var_9bd7a27 = namespace_3fc78cb6::getgroup(self.var_d6319e36);
    pod = namespace_3fc78cb6::function_9fd1b21a(var_9bd7a27, self);
    if (isdefined(pod.target)) {
        curtime = gettime();
        if (self cansee(pod.target) || self function_a884a736(pod.target) > 0.1) {
            self.var_806dc35e = pod.target.origin;
            instancedata.var_61ed1544 = curtime;
            return 1;
        } else if (issentient(pod.target) && (isdefined(self.stealth.var_ca970171) || isdefined(instancedata.var_61ed1544) && curtime - instancedata.var_61ed1544 < 2000)) {
            self.var_806dc35e = self lastknownpos(pod.target);
            return 1;
        }
    }
    self.var_806dc35e = undefined;
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x63511d5e, Offset: 0x78f0
// Size: 0x8e
function function_af1feb45(*behaviortreeentity) {
    var_9bd7a27 = namespace_3fc78cb6::getgroup(self.var_d6319e36);
    pod = namespace_3fc78cb6::function_9fd1b21a(var_9bd7a27, self);
    /#
        assert(isdefined(pod));
    #/
    if (is_true(pod.var_7beb0c9b)) {
        return 1;
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x1f23dba2, Offset: 0x7988
// Size: 0xc4
function function_84d939b2(behaviortreeentity) {
    if (function_af1feb45(behaviortreeentity)) {
        taskid = behaviortreeentity function_db1c5a52(0, "Hunt_Delay");
        if (!(isdefined(taskid) && isdefined(self.var_d3364a1a.instancedata[taskid]))) {
            function_ae010fd5(behaviortreeentity);
        }
        if (function_27a91ca9(behaviortreeentity)) {
            function_91aca790(behaviortreeentity);
            return 1;
        } else {
            return 0;
        }
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x8cdff968, Offset: 0x7a58
// Size: 0x88
function function_25281284(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(0, "Hunt_Hunker");
    if (!(isdefined(taskid) && isdefined(self.var_d3364a1a.instancedata[taskid]))) {
        function_658c9f29(behaviortreeentity);
    }
    hunt_hunker(behaviortreeentity);
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x8c2dd849, Offset: 0x7ae8
// Size: 0x234
function function_658c9f29(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(1, "Hunt_Hunker");
    curtime = gettime();
    instancedata = spawnstruct();
    instancedata.var_ab0aff56 = curtime + randomintrange(4000, 6000);
    self.var_d3364a1a.instancedata[taskid] = instancedata;
    self.stealth.var_95e35209 = curtime;
    self namespace_979752dc::set_patrol_style("cqb");
    goalinfo = behaviortreeentity function_4794d6a3();
    if (!isdefined(goalinfo.node) && !isdefined(goalinfo.goalvolume)) {
        var_9bd7a27 = namespace_3fc78cb6::getgroup(self.var_d6319e36);
        pod = namespace_3fc78cb6::function_9fd1b21a(var_9bd7a27, self);
        if (isdefined(self.var_f1759db3)) {
            self.combatmode = self.var_f1759db3;
        } else {
            self.combatmode = "cover";
        }
        if (isdefined(pod.origin)) {
            node = self findcovernodeatlocation(pod.origin, 512, 80);
        } else {
            node = self findcovernodeatlocation(self.origin, 512, 80);
        }
        if (isdefined(node)) {
            if (!isdefined(self.node) || self.node != node) {
                self namespace_979752dc::set_goal(node);
            }
        }
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x85116639, Offset: 0x7d28
// Size: 0x270
function hunt_hunker(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(0, "Hunt_Hunker");
    if (!isdefined(self.var_d3364a1a.instancedata[taskid])) {
        return;
    }
    curtime = gettime();
    if (curtime > self.var_d3364a1a.instancedata[taskid].var_ab0aff56 && !self haspath()) {
        var_9bd7a27 = namespace_3fc78cb6::getgroup(self.var_d6319e36);
        pod = namespace_3fc78cb6::function_9fd1b21a(var_9bd7a27, self);
        var_caa00405 = randomint(3) < 1;
        node = self findcovernodeatlocation(pod.origin, 512, 80);
        if (isdefined(node)) {
            var_1aeebe30 = 0;
            if (!isdefined(self.node) || self.node != node) {
                var_1aeebe30 = !self namespace_979752dc::set_goal(node);
            }
            if (var_1aeebe30) {
                self.var_d3364a1a.instancedata[taskid].var_ab0aff56 = curtime + 500;
            } else {
                self.var_d3364a1a.instancedata[taskid].var_ab0aff56 = curtime + randomintrange(4000, 6000);
            }
        } else {
            self.var_d3364a1a.instancedata[taskid].var_ab0aff56 = curtime + randomintrange(2000, 4000);
        }
    }
    function_e0da5221(self.var_d3364a1a.instancedata[taskid]);
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x41c7d601, Offset: 0x7fa0
// Size: 0x54
function function_d7e2a7d9(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(0, "Hunt_Hunker");
    if (isdefined(taskid)) {
        self.var_d3364a1a.instancedata[taskid] = undefined;
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x9357fa15, Offset: 0x8000
// Size: 0x68
function function_e376a4b6(*behaviortreeentity) {
    var_f877c541 = 5000;
    /#
        assert(isdefined(self.stealth.var_95e35209));
    #/
    if (gettime() > self.stealth.var_95e35209 + var_f877c541) {
        return 1;
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xe1d4edb0, Offset: 0x8070
// Size: 0x9e
function function_352c6578(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(1);
    instancedata = spawnstruct();
    instancedata.endtime = gettime() + 4000;
    instancedata.var_5e610f0f = 0;
    instancedata.var_f390daa6 = 0;
    self.var_d3364a1a.instancedata[taskid] = instancedata;
    self.stealth.var_ca970171 = 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xb1d95ae9, Offset: 0x8118
// Size: 0x74
function function_e6cce524(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52();
    curtime = gettime();
    instancedata = self.var_d3364a1a.instancedata[taskid];
    if (curtime > instancedata.endtime) {
        return 1;
    }
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x7b5a8cc9, Offset: 0x8198
// Size: 0x6a
function function_fe6a490d(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52();
    self.var_806dc35e = undefined;
    self.var_d3364a1a.instancedata[taskid] = undefined;
    self.stealth.var_ca970171 = undefined;
    self.stealth.var_95e35209 = gettime();
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xfecb84d3, Offset: 0x8210
// Size: 0xc2
function function_cf57c8e2(*behaviortreeentity) {
    if (!isdefined(self.node)) {
        return 0;
    }
    var_f4bdb145 = 16;
    if (isdefined(self.pathgoalpos)) {
        if (distancesquared(self.pathgoalpos, self.origin) > var_f4bdb145) {
            return 0;
        }
    } else if (self.keepclaimednodeifvalid) {
        var_f4bdb145 = 3600;
    } else {
        var_f4bdb145 = 225;
    }
    if (distance2dsquared(self.node.origin, self.origin) > var_f4bdb145) {
        return 0;
    }
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xa20a8d8d, Offset: 0x82e0
// Size: 0x24
function function_82233242(*behaviortreeentity) {
    self function_f2887688();
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xfe8b16ce, Offset: 0x8310
// Size: 0x13e
function function_c643bbbb(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(1);
    curtime = gettime();
    instancedata = spawnstruct();
    self.var_d3364a1a.instancedata[taskid] = instancedata;
    instancedata.starttime = curtime;
    self.stealth.var_627b2039 = self.stealth.var_b997a50;
    instancedata.var_b4b8dca2 = 0;
    var_9bf11123 = self.smart_object;
    if (isdefined(var_9bf11123)) {
        self namespace_979752dc::function_adf02a98(12);
    } else {
        self namespace_979752dc::function_adf02a98(37);
    }
    self namespace_979752dc::set_patrol_style("cqb");
    self.var_f8f1706d = 1;
    instancedata.var_7c2fd10a = curtime + 2000;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xf36686b7, Offset: 0x8458
// Size: 0x742
function function_81eedb5c(instancedata) {
    var_843ecdc0 = 36;
    var_2be49714 = 36;
    var_bea9b15e = 36;
    curtime = gettime();
    var_22766aeb = 2000;
    if (isdefined(instancedata.var_9d029bb) && curtime >= instancedata.var_48aaa55d + var_22766aeb) {
        instancedata.var_9d029bb = undefined;
        instancedata.var_48aaa55d = undefined;
        self aimatposik(undefined);
        self namespace_979752dc::set_patrol_style("cqb");
        self.var_f8f1706d = undefined;
    }
    if (!isdefined(instancedata.var_9d029bb) && !is_true(self.isarriving) && self.lookaheaddist > 32 && self getpathlength() > 128) {
        var_bef4dbd7 = self function_b4f1b019(var_843ecdc0);
        var_a0e80ff2 = anglestoforward(self.angles);
        var_273da0db = getnodesinradius(var_bef4dbd7, var_bea9b15e, 0, 60, "Cover");
        if (var_273da0db.size > 0) {
            foreach (node in var_273da0db) {
                if (!doesnodeallowstance(node, "stand")) {
                    continue;
                }
                var_3456f49c = node.origin - self.origin;
                if (vectordot(var_3456f49c, var_a0e80ff2) < 0) {
                    continue;
                }
                anglediff = angleclamp180(node.angles[1] - self.angles[1]);
                if (anglediff > 0 && node.type != "Cover Right") {
                    continue;
                } else if (anglediff < 0 && node.type != "Cover Left") {
                    continue;
                }
                var_c86d779 = anglestoforward(node.angles);
                dot = vectordot(var_c86d779, var_a0e80ff2);
                if (dot > 0.5 || dot < -0.5) {
                    continue;
                }
                /#
                    if (function_852e4bbb()) {
                        var_861ee216 = anglestoforward(node.angles);
                        circle(var_bef4dbd7, var_bea9b15e, (0, 1, 0), 1, 0, 1);
                        box(node.origin, vectorscale((-1, -1, 0), 16), (16, 16, 8), node.angles[1], (1, 1, 0), 1, 0, 1);
                        line(var_bef4dbd7, var_bef4dbd7 + var_861ee216 * var_2be49714, (0, 1, 1), 1, 0, 1);
                    }
                #/
                if (abs(angleclamp180(self.angles[1] - node.angles[1])) < 45) {
                    continue;
                }
                if (vectordot(self.lookaheaddir, var_3456f49c) > 32) {
                    continue;
                }
                instancedata.var_9d029bb = node;
                instancedata.var_48aaa55d = curtime;
                break;
            }
        }
    }
    if (isdefined(instancedata.var_9d029bb)) {
        var_9d029bb = instancedata.var_9d029bb;
        /#
            if (function_852e4bbb()) {
                box(var_9d029bb.origin, vectorscale((-1, -1, 0), 16), (16, 16, 8), var_9d029bb.angles[1], (1, 1, 0), 1, 0, 1);
            }
        #/
        checkpos = undefined;
        var_ffe01b4a = function_237971e2(var_9d029bb.angles);
        var_e531995e = var_ffe01b4a.right;
        if (var_9d029bb.type == "Cover Left") {
            var_e531995e = -1 * var_e531995e;
        }
        var_f74021a7 = 20;
        var_e96b9b = var_9d029bb.origin + var_f74021a7 * var_ffe01b4a.forward + var_f74021a7 * var_e531995e;
        var_3dcee9ed = self.origin - var_9d029bb.origin;
        if (vectordot(var_3dcee9ed, var_e531995e) < var_f74021a7) {
            checkpos = var_e96b9b;
        } else {
            checkpos = self.origin + rotatepoint(vectorscale((1, 0, 0), 128), var_9d029bb.angles);
        }
        /#
            if (function_852e4bbb()) {
                line(var_9d029bb.origin, checkpos, (1, 1, 0), 1, 0, 1);
            }
        #/
        self aimatposik(checkpos);
        self namespace_979752dc::function_96ed1b3f(30);
        self.var_f8f1706d = 1;
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xcdc3fabd, Offset: 0x8ba8
// Size: 0x270
function function_843b5351(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52();
    instancedata = self.var_d3364a1a.instancedata[taskid];
    curtime = gettime();
    var_13e10c61 = isdefined(self.smart_object);
    if (var_13e10c61) {
        self function_4efdd16b(self.smart_object);
    }
    if (function_42f7ecd1(instancedata)) {
        return 1;
    }
    if (function_af1feb45() == 1 || self namespace_979752dc::function_b0c91323(1)) {
        if (var_13e10c61) {
            self function_f2887688();
        }
        return 1;
    }
    if (isdefined(instancedata.var_7c2fd10a) && curtime > instancedata.var_7c2fd10a) {
        self.var_f8f1706d = undefined;
        instancedata.var_7c2fd10a = undefined;
    }
    if (isdefined(self.pathgoalpos) && var_13e10c61 && self getpathlength() < 56) {
        var_9bf11123 = self.smart_object;
        self aimatposik(var_9bf11123.origin + rotatepoint(vectorscale((1, 0, 0), 128), var_9bf11123.angles));
    } else {
        self function_81eedb5c(instancedata);
    }
    if (isdefined(self.stealth.var_bd106aaa) && isdefined(self.stealth.var_bd106aaa.var_64a52bf3)) {
        self namespace_5cd4acd8::function_349347d3(self.stealth.var_bd106aaa.var_64a52bf3);
    }
    function_e0da5221(instancedata);
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xbf5cb32d, Offset: 0x8e20
// Size: 0xa4
function function_f874d2f1(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52();
    self.var_d3364a1a.instancedata[taskid] = undefined;
    if (isdefined(self.stealth.var_4b0080e1)) {
        self.stealth.var_40a89c9f = 1;
    } else {
        self.stealth.var_40a89c9f = undefined;
    }
    self.var_806dc35e = undefined;
    self.var_f8f1706d = undefined;
    self aimatposik(undefined);
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xcc8407f4, Offset: 0x8ed0
// Size: 0xe4
function function_ea5fc830(behaviortreeentity) {
    if (isdefined(self.stealth.var_fbfca183) && self.stealth.var_fbfca183 != self.stealth.var_abf79234) {
        function_df9a9513(behaviortreeentity);
    }
    self.stealth.var_fbfca183 = self.stealth.var_abf79234;
    switch (self.stealth.var_fbfca183) {
    case 1:
        return function_7b0493d0(behaviortreeentity);
    case 2:
        return function_527c1100(behaviortreeentity);
        break;
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xd049cf39, Offset: 0x8fc0
// Size: 0xec
function function_470c948e(behaviortreeentity) {
    if (isdefined(self.stealth.var_fbfca183) && self.stealth.var_fbfca183 != self.stealth.var_abf79234) {
        function_df9a9513(behaviortreeentity);
    }
    if (!isdefined(self.stealth.var_fbfca183)) {
        function_ea5fc830(behaviortreeentity);
    }
    switch (self.stealth.var_fbfca183) {
    case 1:
        return function_b1ec5a57(behaviortreeentity);
    case 2:
        return hunt_lookaround(behaviortreeentity);
        break;
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x86c1557, Offset: 0x90b8
// Size: 0x82
function function_df9a9513(behaviortreeentity) {
    switch (self.stealth.var_fbfca183) {
    case 1:
        return function_9fddcfcb(behaviortreeentity);
    case 2:
        return function_6fda969(behaviortreeentity);
        break;
    }
    self.stealth.var_fbfca183 = undefined;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xf3a52e49, Offset: 0x9148
// Size: 0x13a
function function_527c1100(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(1, "Hunt_LookAround");
    timeout = 8000;
    instancedata = spawnstruct();
    instancedata.endtime = gettime() + timeout;
    self.var_d3364a1a.instancedata[taskid] = instancedata;
    if (isdefined(self.stealth.var_e20c5a85)) {
        instancedata.endtime = gettime() + self.stealth.var_e20c5a85;
    }
    self namespace_979752dc::function_adf02a98(36);
    if (is_true(self.stealth.var_a49fcd5f)) {
        if (isdefined(self.stealth.var_e20c5a85)) {
            self.stealth.var_4e0cbc53 = 0;
        }
    } else {
        self.stealth.var_4e0cbc53 = 1;
    }
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xb2aec905, Offset: 0x9290
// Size: 0x1c8
function hunt_lookaround(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(0, "Hunt_LookAround");
    if (isdefined(self.stealth.var_40a89c9f)) {
        return 1;
    }
    if (gettime() > (isdefined(self.var_d3364a1a.instancedata[taskid].endtime) ? self.var_d3364a1a.instancedata[taskid].endtime : 0)) {
        return 0;
    }
    if (!isdefined(self.stealth.var_4e0cbc53)) {
        return 1;
    }
    if (self namespace_979752dc::function_b0c91323()) {
        self namespace_979752dc::function_ab75abf3();
        return 1;
    }
    var_b0938e0c = isdefined(self.var_806dc35e);
    var_f3541bde = function_e0da5221(self.var_d3364a1a.instancedata[taskid]);
    if (!var_b0938e0c && isdefined(self.var_806dc35e) && var_f3541bde) {
        self.stealth.var_4e0cbc53 = undefined;
        targetpos = self.var_806dc35e;
        if (!isvec(self.var_806dc35e)) {
            targetpos = self.var_806dc35e.origin;
        }
        self namespace_979752dc::function_4c1d52fd(targetpos, "small");
    }
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x99ac39d0, Offset: 0x9460
// Size: 0x88
function function_6fda969(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(0, "Hunt_LookAround");
    self.var_d3364a1a.instancedata[taskid] = undefined;
    self.stealth.var_4e0cbc53 = undefined;
    if (!self haspath()) {
        self function_95e7edb1();
    }
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0xa64acec5, Offset: 0x94f0
// Size: 0xa8
function function_7b4299f3() {
    self.stealth.var_40a89c9f = undefined;
    self.stealth.var_95e35209 = undefined;
    self.stealth.var_627b2039 = undefined;
    self.diequietly = 0;
    self.moveplaybackrate = 1;
    self.var_5e7da660 = undefined;
    self function_4c52cac6();
    self.var_806dc35e = undefined;
    self namespace_979752dc::set_goal(self.origin);
    self namespace_3d84fa3e::function_ac53d0fb();
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x3f06edaa, Offset: 0x95a0
// Size: 0x68
function function_4efdd16b(var_9bf11123) {
    if (var_9bf11123 === self.smart_object) {
        return;
    }
    self smart_object::set(var_9bf11123);
    self thread function_b927bc45(var_9bf11123);
    self namespace_979752dc::function_adf02a98(16);
    return var_9bf11123;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x7f87e0c9, Offset: 0x9610
// Size: 0x134
function function_b927bc45(var_9bf11123) {
    self notify("458850aa791fb2ad");
    self endon("458850aa791fb2ad");
    self endon(#"death", #"hash_6b1e2ef3367a9c8b", #"hash_5eea84497843d6f7");
    self waittill(#"goal");
    waitframe(1);
    while (is_true(self.isarriving)) {
        waitframe(1);
    }
    if (var_9bf11123 === self.smart_object && smart_object::can_use(self.smart_object) && distancesquared(self.origin, self.smart_object.origin) <= function_a3f6cdac(self.goalradius + 1)) {
        self function_4adeb7ed(self.smart_object);
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x20d77f60, Offset: 0x9750
// Size: 0x50
function function_5bfdfc9d() {
    if (isdefined(self.var_3ed929ba) && !self function_34f554e4()) {
        if (self.var_3ed929ba != self namespace_3d84fa3e::function_b8090745()) {
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x651972da, Offset: 0x97a8
// Size: 0xac
function function_4adeb7ed(var_9bf11123) {
    self notify("20a47696d306d324");
    self endon("20a47696d306d324");
    self endon(#"death");
    self notify(#"hash_335827d811ed5f67");
    var_9bf11123 smart_object::play(self);
    if (self.stealth.var_abf79234 !== 3) {
        self function_2640a26c(1);
    }
    self function_f2887688();
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0xcab53b49, Offset: 0x9860
// Size: 0x4e
function function_f2887688() {
    self smart_object::function_bd54ea4c();
    self smart_object::function_a59dc8a8(self.smart_object);
    self notify(#"hash_6b1e2ef3367a9c8b");
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0xe05fee38, Offset: 0x98b8
// Size: 0x6c
function function_e6aa814a() {
    self endon(#"death");
    wait(0.5);
    while (is_true(self.stealth.var_ba19d2b1)) {
        waitframe(1);
    }
    if (isdefined(self.var_c36c4b2)) {
        self [[ self.var_c36c4b2 ]]();
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0xccc3723, Offset: 0x9930
// Size: 0x2c8
function function_ce3d25a0() {
    self.var_bcf995f7 = 0;
    self.diequietly = 0;
    self.var_3d088dec = 1;
    if (self namespace_3d84fa3e::function_3aec1b7()) {
        self namespace_3d84fa3e::function_ac53d0fb();
    }
    if (self namespace_3d84fa3e::function_47df32b8()) {
        self thread function_e6aa814a();
    }
    self ai::function_ccc923fb(undefined);
    self namespace_979752dc::function_6792b1eb();
    self namespace_979752dc::function_adf02a98(undefined);
    self namespace_cf88f507::function_a5831502();
    self function_94575fdf();
    if (isdefined(self.var_f1759db3)) {
        self.combatmode = self.var_f1759db3;
    } else {
        self.combatmode = "cover";
    }
    namespace_f1f700ac::function_7e1ad4d4("combat");
    enemypos = self.origin;
    goalvolume = level.stealth.var_ba446feb[self.var_d6319e36];
    if (isdefined(goalvolume)) {
        self namespace_979752dc::set_goal(goalvolume, undefined, -1);
    } else if (isdefined(level.stealth.var_4908eb8f) && isdefined(level.stealth.var_4908eb8f[self.var_d6319e36])) {
        self namespace_979752dc::set_goal(self.var_ba41ef8);
        self namespace_979752dc::function_adf02a98(level.stealth.var_4908eb8f[self.var_d6319e36]);
    }
    self function_fdd00c49();
    if (isdefined(self.stealth.funcs[#"spotted"])) {
        self namespace_b2b86d39::function_d8eafaa4("spotted");
    }
    self.grenadeawareness = self.var_13c8de0c;
    self.var_6197c506 = undefined;
    if (self namespace_3d84fa3e::function_47df32b8()) {
        self namespace_3d84fa3e::function_9b7441d1(0);
    }
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0xa726b4f6, Offset: 0x9c00
// Size: 0x40
function function_b082df9f() {
    self namespace_979752dc::set_goal(self.origin);
    self namespace_979752dc::function_6a3b08d0();
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0x2d46ae94, Offset: 0x9c48
// Size: 0x8c
function function_6e924603() {
    if (isdefined(level.stealth.var_ba446feb[self.var_d6319e36]) && self function_e5113f65() || isdefined(level.stealth.var_d89f1312[self.var_d6319e36]) && self function_34f554e4()) {
        self namespace_979752dc::set_goal(self.origin);
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 0, eflags: 0x2 linked
// Checksum 0xbf3810bc, Offset: 0x9ce0
// Size: 0x4c
function function_e5b8ad1b() {
    if (isdefined(self.var_d6319e36)) {
        var_9bd7a27 = namespace_3fc78cb6::getgroup(self.var_d6319e36);
        namespace_3fc78cb6::function_46846d9b(var_9bd7a27, self);
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 2, eflags: 0x2 linked
// Checksum 0xd185e1a6, Offset: 0x9d38
// Size: 0xa52
function function_5a3580b6(statename, e) {
    if (!level flag::get("stealth_enabled") || !isdefined(self.stealth)) {
        return;
    }
    if (!isalive(self)) {
        return;
    }
    switch (statename) {
    case #"idle":
        self.var_bcf995f7 = 1;
        self.diequietly = 1;
        if (is_true(self.stealth.blind)) {
            self namespace_f1f700ac::function_7e1ad4d4("blind");
        } else {
            self namespace_f1f700ac::function_7e1ad4d4("hidden");
        }
        self function_e5b8ad1b();
        self function_147aa1ce(0, e);
        self notify(#"stealth_idle");
        break;
    case #"investigate":
        e endon(#"hash_29b88049dcac8bb3");
        if (e.type == "cover_blown") {
            self.stealth.var_bb6b3b67 = 1;
        }
        if (self.stealth.var_abf79234 == 1) {
            if (self.alertlevel == "high_alert" && e.var_dd29a83a == "sight" && self namespace_979752dc::function_d58e1c1c()) {
                function_d004e2c7(e);
            } else {
                if (isplayer(self.stealth.var_23203165) && !isplayer(e.entity) && e.var_dd29a83a != "saw_corpse") {
                    break;
                }
                if (isdefined(self.stealth.var_88642145)) {
                    if (self.stealth.var_aa593a83.var_dd29a83a == "saw_corpse" && e.var_dd29a83a == "found_corpse" && e.entity == self.stealth.var_23203165) {
                        break;
                    }
                    var_fb4dd196 = namespace_cf88f507::function_8ad03874(self.stealth.var_88642145, e.type);
                    if (var_fb4dd196 >= 0) {
                        self.stealth.var_88642145 = e.type;
                        self.stealth.var_23203165 = e.entity;
                        self.stealth.var_aa593a83 = e;
                    }
                    curtime = gettime();
                    var_32c29ad9 = var_fb4dd196 > 0 || curtime > self.stealth.var_bfd2724e || distancesquared(e.var_ce3a18c7, self.origin) < distancesquared(self.stealth.var_aa593a83.var_ce3a18c7, self.origin);
                    if (var_32c29ad9) {
                        var_9bd7a27 = namespace_3fc78cb6::getgroup(self.var_d6319e36);
                        pod = namespace_3fc78cb6::function_9fd1b21a(var_9bd7a27, self);
                        var_3a13d151 = namespace_3fc78cb6::function_6357ddad(var_9bd7a27, pod, 1, self, e.var_ce3a18c7);
                        if (isdefined(var_3a13d151)) {
                            pod = var_3a13d151;
                        }
                        if (isdefined(pod)) {
                            pod namespace_3fc78cb6::function_21e27027(self, e.var_ce3a18c7);
                        }
                        self.stealth.var_bfd2724e = curtime;
                    }
                    self.stealth.var_613e3702 = undefined;
                }
            }
        } else {
            if (e.type == "cover_blown") {
                namespace_3fc78cb6::function_4db5104b(self.var_d6319e36, self, e);
            } else {
                namespace_3fc78cb6::function_f40dd0f4(self.var_d6319e36, self, e);
            }
            self.stealth.var_aa593a83 = e;
            self.stealth.var_bfd2724e = gettime();
            self function_147aa1ce(1, e);
            self notify(#"stealth_investigate");
        }
        break;
    case #"hunt":
        self.stealth.var_bb6b3b67 = 1;
        namespace_3fc78cb6::function_bd1a5c71(self.var_d6319e36, self);
        self function_147aa1ce(2, e);
        self notify(#"stealth_hunt");
        break;
    case #"combat":
        if (self.stealth.var_abf79234 != 3) {
            var_d6b5966 = isdefined(e) && e.var_dd29a83a == "damage" && self.allowpain && !self isinscriptedstate();
            if (isdefined(e) && !var_d6b5966) {
                magnitude = "small";
                var_bed01a48 = hash(e.var_dd29a83a);
                switch (var_bed01a48) {
                case #"proximity":
                    magnitude = "small_medium";
                    break;
                case #"projectile_impact":
                case #"ally_damaged":
                case #"bulletwhizby":
                case #"ally_killed":
                case #"gunshot":
                    magnitude = "medium";
                    break;
                case #"explode":
                case #"grenade danger":
                    magnitude = "large";
                    break;
                case #"light_killed":
                case #"attack":
                case #"combat":
                    if (distancesquared(e.var_ce3a18c7, self.origin) < 40000) {
                        magnitude = "medium";
                    }
                    break;
                }
                enemy = self.enemy;
                if (!isdefined(enemy) && isdefined(e.entity) && issentient(e.entity)) {
                    enemy = e.entity;
                }
                if (magnitude == "small" && isdefined(enemy)) {
                    if (self cansee(enemy)) {
                        magnitude = "medium";
                    } else if (e.var_dd29a83a == "sight") {
                        magnitude = "small_medium";
                    }
                }
                self namespace_979752dc::set_patrol_style("combat", 1, e.var_ce3a18c7, magnitude);
            } else {
                self namespace_979752dc::set_patrol_style("combat");
            }
            if (isdefined(e) && var_d6b5966 && self namespace_3d84fa3e::function_b8090745()) {
            }
        }
        self.stealth.var_bb6b3b67 = 1;
        enemy = undefined;
        if (isdefined(e) && isdefined(e.entity)) {
            if (issentient(e.entity) && e.entity.team == self.team) {
                if (isdefined(e.entity.enemy) && issentient(e.entity.enemy)) {
                    self function_9224142b(e.entity);
                }
            } else {
                enemy = e.entity;
            }
        }
        namespace_3fc78cb6::function_4e3e17b5(self.var_d6319e36, self, enemy);
        self function_147aa1ce(3, e);
        self notify(#"stealth_combat");
        break;
    }
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xc7345ded, Offset: 0xa798
// Size: 0xca
function function_7f39428a(*behaviortreeentity) {
    var_9bf11123 = self.smart_object;
    if (!isdefined(var_9bf11123)) {
        return 0;
    }
    if (isdefined(self.var_38c29543)) {
        return 0;
    }
    if (is_true(self.isarriving)) {
        return 0;
    }
    zdiff = self.origin[2] - var_9bf11123.origin[2];
    if (zdiff * zdiff > 5184) {
        return 0;
    }
    if (distance2dsquared(self.origin, var_9bf11123.origin) > 225) {
        return 0;
    }
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0xca68e4bb, Offset: 0xa870
// Size: 0x15e
function function_9d71c469(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(1, "smart_object");
    var_9bf11123 = self.smart_object;
    if (!isdefined(var_9bf11123)) {
        return 0;
    }
    if (!isdefined(self.var_d3364a1a.instancedata[taskid])) {
        self.var_d3364a1a.instancedata[taskid] = spawnstruct();
        self.var_d3364a1a.instancedata[taskid].var_d9b2b7af = self.var_d9b2b7af;
        self.var_d3364a1a.instancedata[taskid].smart_object = self.smart_object;
    }
    if (self.var_d3364a1a.instancedata[taskid].smart_object === self.smart_object && is_true(behaviortreeentity.var_c48f9f7d)) {
        return 1;
    }
    var_9bf11123 thread smart_object::play(behaviortreeentity);
    self.var_d9b2b7af = 1;
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x4392e8b3, Offset: 0xa9d8
// Size: 0x7c
function function_78d21c9b(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(0, "smart_object");
    if (self.var_d3364a1a.instancedata[taskid].smart_object !== self.smart_object || !isdefined(behaviortreeentity.var_c48f9f7d)) {
        return 0;
    }
    return 1;
}

// Namespace namespace_77fd5d41/namespace_77fd5d41
// Params 1, eflags: 0x2 linked
// Checksum 0x97a0ed4e, Offset: 0xaa60
// Size: 0x74
function function_c543bf14(behaviortreeentity) {
    taskid = behaviortreeentity function_db1c5a52(0, "smart_object");
    self.var_d9b2b7af = self.var_d3364a1a.instancedata[taskid].var_d9b2b7af;
    self.var_d3364a1a.instancedata[taskid] = undefined;
    return 1;
}

