// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\damagefeedback_shared.gsc;
#using script_68d08b784c92da95;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace smart_object;

// Namespace smart_object/smart_object
// Params 0, eflags: 0x5
// Checksum 0xae139212, Offset: 0x208
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"smart_object", &function_70a657d8, undefined, undefined, #"scene");
}

// Namespace smart_object/smart_object
// Params 0, eflags: 0x6 linked
// Checksum 0xd884a2d8, Offset: 0x258
// Size: 0x5c
function private function_70a657d8() {
    function_b3ec7529();
    /#
        init_dvar("<unknown string>", 0, &function_5bfb6b3);
        level thread function_ed7733c7();
    #/
}

// Namespace smart_object/smart_object
// Params 0, eflags: 0x6 linked
// Checksum 0xb48dd42a, Offset: 0x2c0
// Size: 0x334
function private function_b3ec7529() {
    level.var_1ccc840f = [];
    /#
        level.var_49430738 = [];
    #/
    var_1ccc840f = struct::get_array("smart_object", "variantname");
    foreach (obj in var_1ccc840f) {
        obj.var_cd9d7cb = undefined;
        obj.var_fbb20a79 = undefined;
        obj.var_b4c01efd = undefined;
        obj.scene_reach = undefined;
        /#
            obj.var_175b0e60 = undefined;
        #/
        obj.shots = [];
        if (!function_b69b2de4(obj)) {
            /#
                level.var_49430738[level.var_49430738.size] = obj;
            #/
            obj.var_fbb20a79 = 1;
        } else {
            var_5d693a1e = obj util::function_7e8ee521();
            foreach (var_a86822e8 in var_5d693a1e) {
                if (var_a86822e8 == obj) {
                    continue;
                }
                if (!function_b69b2de4(var_a86822e8)) {
                    continue;
                }
                if (!isdefined(obj.var_eb17b2be)) {
                    obj.var_eb17b2be = [];
                }
                obj.var_eb17b2be[obj.var_eb17b2be.size] = var_a86822e8;
            }
            if (is_true(obj.script_auto_use)) {
                if (!isdefined(obj.var_7087ad5d)) {
                    obj.var_7087ad5d = 0;
                }
                obj.var_2edb5d76 = function_a3f6cdac(obj.var_7087ad5d);
            } else {
                obj.script_auto_use = undefined;
                obj.var_7087ad5d = undefined;
                obj.var_2edb5d76 = undefined;
            }
            if (!isdefined(obj.var_dd0284ce)) {
                obj.var_dd0284ce = "patrol";
            }
            if (!isdefined(obj.var_a15f12c2)) {
                obj.var_a15f12c2 = 0;
            }
            obj thread scene::init();
            obj thread function_6e730e66();
            level.var_1ccc840f[level.var_1ccc840f.size] = obj;
        }
    }
}

// Namespace smart_object/smart_object
// Params 0, eflags: 0x6 linked
// Checksum 0xbac7a516, Offset: 0x600
// Size: 0x2d4
function private function_6e730e66() {
    self.shots = scene::get_all_shot_names(self.scriptbundlename);
    self.var_db740c43 = [];
    if (!isdefined(self.goalradius)) {
        self.goalradius = 16;
    }
    foreach (var_d31a9922 in self.shots) {
        if (issubstr(tolower(var_d31a9922), "intro")) {
            intro = self function_3b013edc(var_d31a9922);
            if (isdefined(intro.origin)) {
                self.var_db740c43[self.var_db740c43.size] = intro;
                self.goalradius = max(self.goalradius, distance(self.origin, intro.origin) + 60);
            } else {
                /#
                    if (!isdefined(self.var_175b0e60)) {
                        self.var_175b0e60 = [];
                    }
                    self.var_175b0e60[self.var_175b0e60.size] = intro;
                #/
            }
        }
    }
    self.var_b4c01efd = function_5ff18583(self.shots, "death");
    if (self.var_db740c43.size == 0 && array::contains(self.shots, "main")) {
        intro = self function_3b013edc("main");
        if (isdefined(intro.origin)) {
            self.var_db740c43[self.var_db740c43.size] = intro;
            self.goalradius = max(self.goalradius, distance(self.origin, intro.origin));
        } else {
            /#
                if (!isdefined(self.var_175b0e60)) {
                    self.var_175b0e60 = [];
                }
                self.var_175b0e60[self.var_175b0e60.size] = intro;
            #/
        }
    }
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x6 linked
// Checksum 0xc0cdf337, Offset: 0x8e0
// Size: 0xb6
function private function_3b013edc(var_d31a9922) {
    intro = {};
    reach = self scene::function_15be7db9(self.scriptbundlename, var_d31a9922);
    if (isdefined(reach)) {
        intro.origin = reach.origin;
        intro.angles = reach.angles;
        /#
            intro.var_93d6832 = reach.var_93d6832;
        #/
    } else {
        intro.origin = self.origin;
        intro.angles = self.angles;
    }
    intro.shot = var_d31a9922;
    return intro;
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x6 linked
// Checksum 0xbc56f2dc, Offset: 0x9a0
// Size: 0x15a
function private function_27844fc(var_5685d3ec) {
    /#
        assert(function_1631909f(self));
    #/
    if (!isdefined(self.var_715fc83d)) {
        self.var_715fc83d = -1;
    }
    self.var_cd9d7cb = isdefined(var_5685d3ec) ? var_5685d3ec : self.var_715fc83d;
    if (self.var_cd9d7cb > 0) {
        self.var_cd9d7cb = gettime() + self.var_cd9d7cb * 1000;
    }
    if (isdefined(self.var_eb17b2be)) {
        foreach (obj in self.var_eb17b2be) {
            if (isdefined(obj.var_cd9d7cb)) {
                obj.var_cd9d7cb = max(obj.var_cd9d7cb, self.var_cd9d7cb);
            } else {
                obj.var_cd9d7cb = self.var_cd9d7cb;
            }
        }
    }
}

// Namespace smart_object/smart_object
// Params 2, eflags: 0x6 linked
// Checksum 0xb130599f, Offset: 0xb08
// Size: 0xb2
function private function_5ff18583(shots, substr) {
    foreach (var_d31a9922 in shots) {
        if (issubstr(tolower(var_d31a9922), substr)) {
            return 1;
        }
    }
    return 0;
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x2 linked
// Checksum 0x2b8d42b9, Offset: 0xbc8
// Size: 0x62
function play(ai) {
    /#
        assert(function_1631909f(self));
    #/
    self thread function_5e77c231(ai);
    self waittill(#"hash_3a2c70ba8c45838e");
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x2 linked
// Checksum 0xe4d3b849, Offset: 0xc38
// Size: 0x49a
function function_5e77c231(ai) {
    ai notify(#"hash_274402e2db748171");
    if (!is_true(self.var_b4c01efd)) {
        ai endoncallback(&function_8ffc948d, #"death");
    } else {
        ai val::set(#"smart_object", "skip_death", 1);
        ai val::set(#"smart_object", "skip_scene_death", 1);
    }
    ai endoncallback(&function_8ffc948d, #"hash_274402e2db748171", #"hash_29b88049dcac8bb3", #"in_action");
    self endoncallback(&function_8ffc948d, #"hash_274402e2db748171");
    self.script_play_multiple = 1;
    ai.var_c48f9f7d = 1;
    ai function_34edd0e3(self);
    self function_27844fc(-1);
    self.var_135bd649 = 1;
    var_ee9cbc26 = {};
    intro = undefined;
    if (self.var_db740c43.size > 0) {
        intro = self.var_db740c43[0];
        if (self.var_db740c43.size > 1) {
            var_36b33936 = arraysortclosest(arraycopy(self.var_db740c43), ai.origin, 1);
            intro = var_36b33936[0];
        }
    }
    if (!is_true(self.var_6491f35f) && isdefined(intro) && distancesquared(intro.origin, ai.origin) > function_a3f6cdac(4 + 1)) {
        self thread function_b150ae10(ai);
        self scene::anim_reach(self.scriptbundlename, intro.shot, ai);
        self notify(#"hash_5c09ebcc2e6a88a3");
    }
    self thread function_8b855873(self.shots, ai, var_ee9cbc26);
    if (isdefined(intro)) {
        /#
            ai thread function_6ab41bf7(intro.shot);
        #/
        self scene::play(self.scriptbundlename, intro.shot, ai);
    }
    if (array::contains(self.shots, "main") && (!isdefined(intro) || intro.shot != "main")) {
        /#
            ai thread function_6ab41bf7("<unknown string>");
        #/
        self scene::play(self.scriptbundlename, "main", ai);
    }
    var_e0134196 = undefined;
    if (array::contains(self.shots, "outro")) {
        var_e0134196 = 1;
        var_ee9cbc26.var_fd84bab2 = 1;
        /#
            ai thread function_6ab41bf7("<unknown string>");
        #/
        self scene::play(self.scriptbundlename, "outro", ai);
    }
    self function_8ffc948d("smart_object_ending_normally");
    waitframe(2);
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x6 linked
// Checksum 0x93363a2d, Offset: 0x10e0
// Size: 0x98
function private function_b150ae10(ai) {
    ai notify("18b9e447fd3c42ee");
    ai endon("18b9e447fd3c42ee");
    self endon(#"hash_5c09ebcc2e6a88a3");
    ai waittill(#"alert", #"death", #"damage", #"in_action");
    ai notify(#"hash_274402e2db748171");
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x2 linked
// Checksum 0x4b4381ac, Offset: 0x1180
// Size: 0x140
function function_8ffc948d(var_4bb4b841) {
    smart_object = self.smart_object;
    if (!isdefined(smart_object) && isstruct(self)) {
        smart_object = self;
    }
    if (isdefined(smart_object)) {
        smart_object.var_135bd649 = undefined;
        if (isstring(var_4bb4b841)) {
            smart_object notify(var_4bb4b841);
        }
        if (isdefined(smart_object.var_5c4a504d)) {
            if (issentient(smart_object.var_5c4a504d)) {
                smart_object.var_5c4a504d setgoal(smart_object.var_5c4a504d.origin, undefined, undefined, undefined, smart_object.var_5c4a504d.angles);
            }
            /#
                smart_object.var_5c4a504d thread function_6ab41bf7(undefined);
            #/
            smart_object.var_5c4a504d function_a59dc8a8(smart_object);
        }
        smart_object notify(#"hash_3a2c70ba8c45838e");
    }
}

// Namespace smart_object/smart_object
// Params 3, eflags: 0x6 linked
// Checksum 0xbf00040d, Offset: 0x12c8
// Size: 0x100
function private function_8b855873(&shots, ai, var_ee9cbc26) {
    ai notify("559ca15ca3e188b8");
    ai endon("559ca15ca3e188b8");
    self endon(#"smart_object_ending_normally", #"hash_334d02928f88cfaa");
    ai endon(#"hash_29b88049dcac8bb3", #"in_action");
    ai.var_a965704f = undefined;
    while (1) {
        result = undefined;
        result = ai waittill(#"alert", #"death", #"damage");
        self childthread function_ca2d3925(shots, ai, var_ee9cbc26, result);
    }
}

// Namespace smart_object/smart_object
// Params 4, eflags: 0x6 linked
// Checksum 0xbb49000c, Offset: 0x13d0
// Size: 0x426
function private function_ca2d3925(&shots, ai, var_ee9cbc26, result) {
    self notify("825d390354ad4af");
    self endon("825d390354ad4af");
    if (isalive(ai) || result._notify === "death") {
        var_68a5d6c0 = "react";
        isdeath = 0;
        if (isalive(ai) && result._notify !== "death") {
            if (isdefined(result.weapon) && result.weapon.weapclass == "grenade" && result.mod == "MOD_IMPACT") {
                return;
            }
            waitframe(1);
            if (isalive(ai)) {
                var_3657c107 = ai aiutility::bb_actorgetreactyaw();
            }
        }
        if (result._notify === "death" || !isalive(ai)) {
            var_68a5d6c0 = "death";
            isdeath = 1;
        }
        react = function_2e6e8631(shots, var_68a5d6c0, var_3657c107);
        var_fd84bab2 = !isdefined(react) || is_true(var_ee9cbc26.var_fd84bab2);
        if (isdefined(ai)) {
            if ((result._notify == #"damage" || result._notify == #"death") && (var_fd84bab2 || isdefined(ai.var_a965704f))) {
                ai scene::stop(self.scriptbundlename);
                ai util::stop_magic_bullet_shield();
                ai.var_4a438c2b = 0;
                ai kill(result.position, result.attacker, result.inflictor, result.weapon);
                ai startragdoll();
                ai function_a59dc8a8(self);
                if (isplayer(result.attacker)) {
                    result.attacker damagefeedback::update(result.mod, result.inflictor, undefined, result.weapon, ai);
                }
                self notify(#"hash_334d02928f88cfaa");
            } else if (!isdefined(ai.var_a965704f) && isdefined(react) && react !== ai.var_a965704f) {
                ai.var_a965704f = react;
                self thread function_1ec70779(react, ai, isdeath);
                if (is_true(isdeath)) {
                    if (isplayer(result.attacker)) {
                        result.attacker damagefeedback::update(result.mod, result.inflictor, undefined, result.weapon, ai);
                    }
                    self notify(#"hash_334d02928f88cfaa");
                }
            }
        }
    }
}

// Namespace smart_object/smart_object
// Params 3, eflags: 0x6 linked
// Checksum 0x4a7add10, Offset: 0x1800
// Size: 0x20c
function private function_1ec70779(react, ai, isdeath = 0) {
    ai.var_29133295 = 1;
    var_f69c35a3 = isdefined(ai.stealth.var_8fb63790) && ai.stealth.var_8fb63790 == "combat" && ai namespace_3d84fa3e::function_47df32b8();
    ai notify(#"hash_274402e2db748171");
    if (isdefined(react)) {
        /#
            ai thread function_6ab41bf7(react);
        #/
        if (isdeath) {
            ai.ignorealivecheck = 1;
            ai.skipdeath = 1;
        }
        if (var_f69c35a3) {
            ai namespace_3d84fa3e::light_off();
        }
        self scene::play(self.scriptbundlename, react, ai);
        if (isdeath && isdefined(level.var_3ba48663) && isdefined(ai)) {
            ai [[ level.var_3ba48663 ]]();
        }
        if (isdefined(ai.stealth)) {
            ai.stealth.var_5cc4aa60 = gettime() + 3000;
        }
        if (var_f69c35a3) {
            ai namespace_3d84fa3e::function_bfffb3fe();
        }
    } else {
        self scene::stop(self.scriptbundlename);
    }
    if (isdefined(ai)) {
        ai val::function_e681e68e(#"smart_object");
        /#
            ai thread function_6ab41bf7();
        #/
    }
}

// Namespace smart_object/smart_object
// Params 3, eflags: 0x6 linked
// Checksum 0x5810d78f, Offset: 0x1a18
// Size: 0x11a
function private function_2e6e8631(&shots, var_68a5d6c0, yaw) {
    result = undefined;
    if (array::contains(shots, var_68a5d6c0)) {
        result = var_68a5d6c0;
    }
    var_c209edb = function_92be8cbf(yaw);
    foreach (var_a06ab73 in var_c209edb) {
        var_33ae3ae9 = var_68a5d6c0 + var_a06ab73;
        if (array::contains(shots, var_33ae3ae9)) {
            result = var_33ae3ae9;
            break;
        }
    }
    return result;
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x2 linked
// Checksum 0x767f8f78, Offset: 0x1b40
// Size: 0x8a
function function_34edd0e3(obj) {
    /#
        assert(issentient(self));
    #/
    /#
        assert(!isdefined(obj.var_5c4a504d) || obj.var_5c4a504d == self, "<unknown string>");
    #/
    obj.var_5c4a504d = self;
    self.smart_object = obj;
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x2 linked
// Checksum 0x3399f4d9, Offset: 0x1bd8
// Size: 0xee
function function_a59dc8a8(obj) {
    if (!isdefined(obj)) {
        return;
    }
    /#
        assert(!isdefined(obj.var_5c4a504d) || obj.var_5c4a504d == self, "<unknown string>");
    #/
    if (isdefined(obj.var_5c4a504d)) {
        if (!is_true(obj.var_5c4a504d.var_29133295)) {
            obj.var_5c4a504d val::function_e681e68e(#"smart_object");
        }
        obj.var_5c4a504d.var_29133295 = undefined;
    }
    obj.var_5c4a504d = undefined;
    obj function_27844fc();
    self.smart_object = undefined;
    self.var_c48f9f7d = undefined;
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x2 linked
// Checksum 0x2591dbad, Offset: 0x1cd0
// Size: 0x26
function can_claim(obj) {
    if (!isdefined(obj)) {
        return 0;
    }
    return !isdefined(obj.var_5c4a504d);
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x2 linked
// Checksum 0x49e93eaa, Offset: 0x1d00
// Size: 0xba
function can_use(obj) {
    if (!isdefined(obj)) {
        return 0;
    }
    if (isdefined(obj.var_cd9d7cb) && (obj.var_cd9d7cb < 0 || gettime() < obj.var_cd9d7cb)) {
        return 0;
    }
    if (is_true(obj.var_fbb20a79)) {
        return 0;
    }
    if (isai(self) && obj.var_dd0284ce != self ai::get_behavior_attribute("demeanor")) {
        return 0;
    }
    return 1;
}

// Namespace smart_object/smart_object
// Params 0, eflags: 0x2 linked
// Checksum 0xafc61373, Offset: 0x1dc8
// Size: 0x138
function get_goal() {
    /#
        assert(function_1631909f(self));
    #/
    str_shot = undefined;
    result = self;
    if (self.var_db740c43.size <= 1) {
        if (array::contains(self.shots, "intro")) {
            str_shot = "intro";
        } else if (array::contains(self.shots, "main")) {
            str_shot = "main";
        }
        if (isdefined(str_shot) && !is_true(self.var_fbb20a79)) {
            result = self scene::function_15be7db9(self.scriptbundlename, str_shot);
            result.goalradius = 16;
        }
    }
    /#
        assert(isdefined(result.goalradius));
    #/
    return result;
}

// Namespace smart_object/smart_object
// Params 4, eflags: 0x2 linked
// Checksum 0xdb97aeaa, Offset: 0x1f08
// Size: 0x1c8
function function_ab981ed(var_cee92a66, volume, var_ce60cc2e, var_2889f642 = 0) {
    /#
        assert(issentient(self));
    #/
    if (!isdefined(level.var_1ccc840f)) {
        return undefined;
    }
    aiprofile_beginentry("GetBestSmartObject");
    var_3424891f = var_ce60cc2e * var_ce60cc2e;
    var_6debb24 = arraysortclosest(level.var_1ccc840f, var_cee92a66);
    var_43a2b258 = var_6debb24.size;
    var_bbfbe34b = undefined;
    for (var_39f193ea = 0; var_39f193ea < var_43a2b258; var_39f193ea++) {
        object = var_6debb24[var_39f193ea];
        if (distancesquared(object.origin, var_cee92a66) > var_3424891f) {
            break;
        }
        if (!self can_claim(object)) {
            continue;
        }
        if (!self can_use(object)) {
            continue;
        }
        if (!self function_b5ba6914(object, var_cee92a66, volume, var_2889f642)) {
            continue;
        }
        var_bbfbe34b = object;
        break;
    }
    aiprofile_endentry();
    return var_bbfbe34b;
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x2 linked
// Checksum 0x3ada9b2f, Offset: 0x20d8
// Size: 0x5c
function function_1631909f(obj) {
    if (!isstruct(obj)) {
        return 0;
    }
    if (!isdefined(obj.variantname)) {
        return 0;
    }
    if (obj.variantname != "smart_object") {
        return 0;
    }
    return 1;
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x2 linked
// Checksum 0xe8b31c0f, Offset: 0x2140
// Size: 0x98
function function_b69b2de4(obj) {
    if (!function_1631909f(obj)) {
        return 0;
    }
    if (!isstring(obj.scriptbundlename) && !ishash(obj.scriptbundlename)) {
        return 0;
    }
    if (!isdefined(getscriptbundle(obj.scriptbundlename))) {
        return 0;
    }
    return 1;
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x2 linked
// Checksum 0xeddddabc, Offset: 0x21e0
// Size: 0x17e
function function_b03cc199(obj) {
    radiussq = 1600;
    var_5d711abc = 4096;
    foreach (player in getplayers()) {
        if (distance2dsquared(obj.origin, player.origin) < radiussq && function_a3f6cdac(obj.origin[2] - player.origin[2]) < var_5d711abc) {
            var_f9938c4c = function_2981bd91(player.origin - obj.origin);
            if (abs(angleclamp180(var_f9938c4c - obj.angles[1])) < 90) {
                return 1;
            }
        }
    }
    return 0;
}

// Namespace smart_object/smart_object
// Params 7, eflags: 0x2 linked
// Checksum 0x3e8f3220, Offset: 0x2368
// Size: 0xd8c
function function_a49ba261(startpos, endpos, region, volume, var_9da4df29, var_aea7aa5b, var_a3a26744) {
    /#
        assert(issentient(self));
    #/
    if (!isdefined(level.var_1ccc840f)) {
        return;
    }
    var_d01a742 = 60;
    var_b079b771 = 60;
    var_62b1322 = 5184;
    var_26653e4b = 48;
    if (isdefined(region.volume.script_radius)) {
        var_26653e4b = region.volume.script_radius;
    }
    var_3f5ef53e = 128;
    if (isdefined(region.volume.script_maxdist)) {
        var_3f5ef53e = region.volume.script_maxdist;
    }
    var_ffbaa11e = endpos - startpos;
    var_69a7a14a = length(var_ffbaa11e);
    var_8afe96be = var_ffbaa11e / var_69a7a14a;
    var_38bbcdf7 = vectornormalize((var_8afe96be[1], -1 * var_8afe96be[0], 0));
    var_1d23c510 = 0;
    drawtime = undefined;
    /#
        drawtime = 40;
        var_1d23c510 = getdvarint(#"hash_6c470450dd7dffd2", -1) == self getentitynumber();
        if (var_1d23c510) {
            line(startpos + vectorscale((0, 0, 1), 6), endpos + vectorscale((0, 0, 1), 6), (0, 0.5, 0.7), 1, 0, drawtime);
        }
    #/
    var_c7d9d665 = 60;
    var_fafda79b = 5;
    var_b11744c0 = 0.33;
    var_d5260937 = 1.5;
    var_c9b0ff8d = 300000;
    var_fda73bba = 0.001;
    var_2f882d08 = undefined;
    var_ef1e44f4 = -9999;
    foreach (obj in region.var_b60f2156) {
        if (distancesquared(obj.origin, self.origin) < var_62b1322) {
            /#
                if (var_1d23c510) {
                    box(obj.origin + vectorscale((0, 0, 1), 32), vectorscale((1, 1, 1), 12), obj.angles, (0.9, 0.4, 0), 0, drawtime);
                    print3d(obj.origin + vectorscale((0, 0, 1), 24), "<unknown string>", vectorscale((1, 1, 1), 0.5), 1, 0.2, drawtime);
                }
            #/
        } else if (!self can_claim(obj)) {
            /#
                if (var_1d23c510) {
                    box(obj.origin + vectorscale((0, 0, 1), 32), vectorscale((1, 1, 1), 12), obj.angles, (0.9, 0.4, 0), 0, drawtime);
                    print3d(obj.origin + vectorscale((0, 0, 1), 24), "<unknown string>", vectorscale((1, 1, 1), 0.5), 1, 0.2, drawtime);
                }
            #/
        } else if (!is_true(var_a3a26744) && !self can_use(obj)) {
            /#
                if (var_1d23c510) {
                    box(obj.origin + vectorscale((0, 0, 1), 32), vectorscale((1, 1, 1), 12), obj.angles, (0.9, 0.4, 0), 0, drawtime);
                    print3d(obj.origin + vectorscale((0, 0, 1), 24), "<unknown string>", vectorscale((1, 1, 1), 0.5), 1, 0.2, drawtime);
                }
            #/
        } else if (!is_true(obj.script_auto_use)) {
            /#
                if (var_1d23c510) {
                    box(obj.origin + vectorscale((0, 0, 1), 32), vectorscale((1, 1, 1), 12), obj.angles, (0.9, 0.4, 0), 0, drawtime);
                    print3d(obj.origin + vectorscale((0, 0, 1), 24), "<unknown string>", vectorscale((1, 1, 1), 0.5), 1, 0.2, drawtime);
                }
            #/
        } else {
            var_5c084b53 = obj.origin - startpos;
            var_98883cf9 = vectordot(var_8afe96be, var_5c084b53);
            if (var_98883cf9 < var_9da4df29) {
                /#
                    if (var_1d23c510) {
                        box(obj.origin + vectorscale((0, 0, 1), 32), vectorscale((1, 1, 1), 12), obj.angles, (0.9, 0.4, 0), 0, drawtime);
                        print3d(obj.origin + vectorscale((0, 0, 1), 24), "<unknown string>", vectorscale((1, 1, 1), 0.5), 1, 0.2, drawtime);
                    }
                #/
            } else if (var_98883cf9 > var_69a7a14a + var_d01a742) {
                /#
                    if (var_1d23c510) {
                        box(obj.origin + vectorscale((0, 0, 1), 32), vectorscale((1, 1, 1), 12), obj.angles, (0.9, 0.4, 0), 0, drawtime);
                        print3d(obj.origin + vectorscale((0, 0, 1), 24), "<unknown string>", vectorscale((1, 1, 1), 0.5), 1, 0.2, drawtime);
                    }
                #/
            } else {
                var_c79274d2 = abs(vectordot(var_38bbcdf7, var_5c084b53));
                if (var_c79274d2 * var_c79274d2 > obj.var_2edb5d76) {
                    /#
                        if (var_1d23c510) {
                            box(obj.origin + vectorscale((0, 0, 1), 32), vectorscale((1, 1, 1), 12), obj.angles, (0.9, 0.4, 0), 0, drawtime);
                            print3d(obj.origin + vectorscale((0, 0, 1), 24), "<unknown string>", vectorscale((1, 1, 1), 0.5), 1, 0.2, drawtime);
                        }
                    #/
                } else {
                    var_fbf46d73 = var_3f5ef53e;
                    if (var_69a7a14a - var_c79274d2 < 60) {
                        var_fbf46d73 = var_fbf46d73 * 0.5;
                    }
                    if (var_c79274d2 > var_fbf46d73) {
                        /#
                            if (var_1d23c510) {
                                box(obj.origin + vectorscale((0, 0, 1), 32), vectorscale((1, 1, 1), 12), obj.angles, (0.9, 0.4, 0), 0, drawtime);
                                print3d(obj.origin + vectorscale((0, 0, 1), 24), "<unknown string>", vectorscale((1, 1, 1), 0.5), 1, 0.2, drawtime);
                            }
                        #/
                    } else if (isdefined(volume) && !volume istouching(obj.origin)) {
                        /#
                            if (var_1d23c510) {
                                box(obj.origin + vectorscale((0, 0, 1), 32), vectorscale((1, 1, 1), 12), obj.angles, (0.9, 0.4, 0), 0, drawtime);
                                print3d(obj.origin + vectorscale((0, 0, 1), 24), "<unknown string>", vectorscale((1, 1, 1), 0.5), 1, 0.2, drawtime);
                            }
                        #/
                    } else {
                        var_fff54d0b = var_69a7a14a - var_9da4df29;
                        var_1f6e7bb3 = var_98883cf9 - var_9da4df29;
                        var_429175fd = var_aea7aa5b - var_9da4df29;
                        if (var_1f6e7bb3 < var_429175fd) {
                            score = var_fafda79b + var_c7d9d665 * (1 - (var_429175fd - var_1f6e7bb3) / var_429175fd);
                        } else {
                            var_fff54d0b = var_69a7a14a - var_aea7aa5b + var_d01a742;
                            var_1f6e7bb3 = var_98883cf9 - var_aea7aa5b;
                            score = var_fafda79b + var_c7d9d665 * (var_fff54d0b - var_1f6e7bb3) / var_fff54d0b;
                        }
                        if (var_c79274d2 > var_26653e4b) {
                            var_7324080 = var_c79274d2 - var_26653e4b;
                            score = score * (var_b11744c0 + (1 - var_7324080 / (var_fbf46d73 - var_26653e4b)) * (1 - var_b11744c0));
                        }
                        if (function_b03cc199(obj)) {
                            score = score * var_d5260937;
                            /#
                                if (var_1d23c510) {
                                    print3d(obj.origin + vectorscale((0, 0, 1), 20), "<unknown string>", vectorscale((1, 1, 1), 0.5), 1, 0.2, drawtime);
                                }
                            #/
                        }
                        if (isdefined(obj.lastusetime)) {
                            if (gettime() - obj.lastusetime < var_c9b0ff8d) {
                                score = score * var_fda73bba;
                            } else {
                                obj.lastusetime = undefined;
                            }
                        }
                        if (score > var_ef1e44f4) {
                            var_ef1e44f4 = score;
                            var_2f882d08 = obj;
                        }
                        /#
                            if (var_1d23c510) {
                                box(obj.origin + vectorscale((0, 0, 1), 32), vectorscale((1, 1, 1), 12), obj.angles, vectorscale((1, 1, 0), 0.8), 0, drawtime);
                                print3d(obj.origin + vectorscale((0, 0, 1), 24), "<unknown string>" + score, vectorscale((1, 1, 1), 0.5), 1, 0.2, drawtime);
                            }
                        #/
                    }
                }
            }
        }
    }
    return var_2f882d08;
}

// Namespace smart_object/smart_object
// Params 4, eflags: 0x2 linked
// Checksum 0x6c8884dc, Offset: 0x3100
// Size: 0x10a
function function_b5ba6914(obj, var_86fc8c6, volume, *var_2889f642) {
    /#
        assert(issentient(self));
    #/
    if (!is_true(var_86fc8c6.script_auto_use)) {
        return 0;
    }
    if (isdefined(volume)) {
        pos = volume;
    } else {
        pos = self.origin;
    }
    distsqrd = distancesquared(pos, var_86fc8c6.origin);
    if (distsqrd > var_86fc8c6.var_2edb5d76) {
        return 0;
    }
    if (isdefined(var_2889f642) && !var_2889f642 istouching(var_86fc8c6.origin)) {
        return 0;
    }
    return 1;
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x2 linked
// Checksum 0xdd067aa, Offset: 0x3218
// Size: 0x8c
function set(obj) {
    /#
        assert(issentient(self));
    #/
    if (isdefined(self.smart_object)) {
        self function_a59dc8a8(self.smart_object);
    }
    self function_34edd0e3(obj);
    self thread function_2677ed08(obj);
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x2 linked
// Checksum 0x5d7b2e08, Offset: 0x32b0
// Size: 0x9c
function function_2677ed08(var_9bf11123) {
    self notify("68a833247978732c");
    self endon("68a833247978732c");
    self endon(#"death", #"hash_6b1e2ef3367a9c8b");
    self.var_bf549417 = self.var_e1b3091b;
    self.var_e1b3091b = var_9bf11123.var_a15f12c2;
    self.var_3ed929ba = var_9bf11123.var_a15f12c2;
    var_9bf11123 waittill(#"hash_3a2c70ba8c45838e");
    function_bd54ea4c();
}

// Namespace smart_object/smart_object
// Params 0, eflags: 0x2 linked
// Checksum 0x26a8d908, Offset: 0x3358
// Size: 0x26
function function_bd54ea4c() {
    if (isdefined(self.var_3ed929ba)) {
        self.var_e1b3091b = self.var_bf549417;
        self.var_3ed929ba = undefined;
    }
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x0
// Checksum 0x8028b642, Offset: 0x3388
// Size: 0x92
function function_feb48f7(*obj) {
    /#
        assert(issentient(self));
    #/
    if (!isdefined(self.var_d6319e36)) {
        return 0;
    }
    if (isdefined(self.var_cd774402) && isdefined(self.var_678afc31) && !self [[ self.var_cd774402 ]]() && !self [[ self.var_678afc31 ]]()) {
        return 0;
    }
    return 1;
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x0
// Checksum 0xa1c63fe6, Offset: 0x3428
// Size: 0x156
function function_97a10998(obj) {
    /#
        assert(issentient(self));
    #/
    forward = anglestoforward(self.angles);
    normal = vectornormalize(obj.origin - self.origin);
    if (vectordot(forward, normal) >= cos(60)) {
        var_91d0d82d = 64;
    } else {
        var_91d0d82d = 100;
    }
    if (distancesquared(self.origin, obj.origin) <= var_91d0d82d * var_91d0d82d) {
        return 0;
    }
    forward = anglestoforward(obj.angles);
    if (vectordot(forward, normal) < cos(45)) {
        return 0;
    }
    return 1;
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x6 linked
// Checksum 0xa2ca2052, Offset: 0x3588
// Size: 0x22e
function private function_92be8cbf(var_7a6279d3 = 0) {
    result = [];
    yaw = absangleclamp360(float(var_7a6279d3));
    if (yaw >= 315 || yaw <= 45) {
        if (yaw < 337.5 && yaw >= 315) {
            result[result.size] = 7;
        } else if (yaw > 22.5 && yaw <= 45) {
            result[result.size] = 9;
        }
        result[result.size] = 8;
    } else if (yaw >= 45 && yaw <= 90) {
        if (yaw < 67.5) {
            result[result.size] = 9;
        } else if (yaw > 112.5) {
            result[result.size] = 3;
        }
        result[result.size] = 6;
    } else if (yaw >= 135 && yaw <= 215) {
        if (yaw < 157.5) {
            result[result.size] = 3;
        } else if (yaw > 202.5) {
            result[result.size] = 1;
        }
        result[result.size] = 2;
    } else {
        if (yaw < 247.5) {
            result[result.size] = 1;
        } else if (yaw > 292.5) {
            result[result.size] = 7;
        }
        result[result.size] = 4;
    }
    return result;
}

// Namespace smart_object/smart_object
// Params 0, eflags: 0x0
// Checksum 0xb45e9475, Offset: 0x37c0
// Size: 0x34
function function_1cc20436() {
    /#
        function_b3ec7529();
        level thread function_ed7733c7();
    #/
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x4
// Checksum 0x2a6f595, Offset: 0x3800
// Size: 0x78
function private function_5bfb6b3(dvar) {
    /#
        level.var_929178b5 = int(dvar.value);
        if (level.var_929178b5 != 0) {
            level thread function_23eef632();
        } else {
            level notify(#"hash_6f64ca444d328bd0");
        }
    #/
}

// Namespace smart_object/smart_object
// Params 0, eflags: 0x4
// Checksum 0x27bdb7bb, Offset: 0x3880
// Size: 0x4fa
function private function_23eef632() {
    /#
        self notify(#"hash_6f64ca444d328bd0");
        self endon(#"hash_6f64ca444d328bd0");
        while (1) {
            foreach (obj in level.var_1ccc840f) {
                scriptbundlename = obj.scriptbundlename;
                if (ishash(scriptbundlename)) {
                    scriptbundlename = function_9e72a96(scriptbundlename);
                }
                print3d(obj.origin + vectorscale((0, 0, 1), 80), scriptbundlename, vectorscale((1, 1, 0), 0.5), 1, 0.25, 1, 1);
                draw_arrow(obj.origin + (0, 0, 1), obj.origin + (0, 0, 1) + anglestoforward(obj.angles) * 16, vectorscale((1, 1, 0), 0.5));
                if (obj.var_db740c43.size > 0) {
                    foreach (intro in obj.var_db740c43) {
                        print3d(intro.origin + vectorscale((0, 0, 1), 5), intro.shot, vectorscale((1, 1, 1), 0.5), 0.5, 0.1, 1, 1);
                        line(intro.origin + (0, 0, 1), obj.origin + (0, 0, 1), vectorscale((1, 1, 1), 0.5), 0.5, 1, 1);
                    }
                }
                if (isdefined(obj.var_175b0e60) && obj.var_175b0e60.size > 0) {
                    foreach (intro in obj.var_175b0e60) {
                        print3d(intro.var_93d6832 + vectorscale((0, 0, 1), 5), intro.shot + "<unknown string>", (1, 0, 0), 0.5, 0.1, 1, 1);
                        line(intro.var_93d6832 + (0, 0, 1), obj.origin + (0, 0, 1), (1, 0, 0), 0.5, 1, 1);
                    }
                }
                if (isdefined(obj.var_cd9d7cb) && (obj.var_cd9d7cb < 0 || gettime() < obj.var_cd9d7cb)) {
                    msg = "<unknown string>";
                    if (obj.var_cd9d7cb >= 0) {
                        msg = msg + "<unknown string>" + int(float(obj.var_cd9d7cb - gettime()) / 1000) + 1;
                    }
                    print3d(obj.origin + vectorscale((0, 0, 1), 75), msg, (0.5, 0.3, 0), 1, 0.25, 1, 1);
                }
            }
            waitframe(1);
        }
    #/
}

// Namespace smart_object/smart_object
// Params 0, eflags: 0x4
// Checksum 0xbc761eb, Offset: 0x3d88
// Size: 0x20a
function private function_ed7733c7() {
    /#
        self notify(#"hash_4844afd3d6da9bce");
        self endon(#"hash_4844afd3d6da9bce");
        while (1) {
            foreach (obj in level.var_49430738) {
                scriptbundlename = obj.scriptbundlename;
                if (ishash(scriptbundlename)) {
                    scriptbundlename = function_9e72a96(scriptbundlename);
                }
                print3d(obj.origin + vectorscale((0, 0, 1), 80), scriptbundlename, vectorscale((1, 0, 0), 0.5), 1, 0.25, 1, 1);
                print3d(obj.origin + vectorscale((0, 0, 1), 70), "<unknown string>", vectorscale((1, 0, 0), 0.5), 1, 0.25, 1, 1);
                draw_arrow(obj.origin + (0, 0, 1), obj.origin + (0, 0, 1) + anglestoforward(obj.angles) * 16, vectorscale((1, 0, 0), 0.5));
            }
            if (level.var_49430738.size == 0) {
                break;
            }
            waitframe(1);
        }
    #/
}

// Namespace smart_object/smart_object
// Params 1, eflags: 0x4
// Checksum 0xb05213c, Offset: 0x3fa0
// Size: 0xde
function private function_6ab41bf7(shot) {
    /#
        self notify("<unknown string>");
        self endon("<unknown string>");
        if (isstring(shot)) {
            self endon(#"death", #"scene_done");
            while (1) {
                if (is_true(level.var_929178b5)) {
                    print3d(self.origin + vectorscale((0, 0, 1), 71), shot, (1, 1, 0), 1, 0.25, 1, 1);
                }
                waitframe(1);
            }
        }
    #/
}

