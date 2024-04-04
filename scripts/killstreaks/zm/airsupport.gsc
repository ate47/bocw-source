// Atian COD Tools GSC CW decompiler test
#using script_61828ad9e71c6616;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\util_shared.gsc;

#namespace namespace_bf7415ae;

// Namespace namespace_bf7415ae/airsupport
// Params 8, eflags: 0x2 linked
// Checksum 0xc1d09f87, Offset: 0x148
// Size: 0xc4
function function_890b3889(killstreaktype, killstreakweapon, maxrange, var_f6825ff2, var_c7502f87, var_7551540f, var_d89073fc, var_d3deec73) {
    if (!isdefined(self.mdl_target)) {
        self.mdl_target = [];
    }
    self thread function_b66d4fac(killstreaktype, maxrange, var_f6825ff2, var_c7502f87, var_d89073fc, var_d3deec73);
    self thread function_f3305d7f(killstreaktype, var_c7502f87, var_7551540f);
    self thread function_a2eec6c2(killstreaktype, killstreakweapon);
    self thread function_4b1634b2(killstreakweapon);
}

// Namespace namespace_bf7415ae/airsupport
// Params 1, eflags: 0x6 linked
// Checksum 0x3b9cf557, Offset: 0x218
// Size: 0x88
function private function_4b1634b2(*killstreakweapon) {
    self endon(#"death", #"disconnect", #"cancel_selection", #"lockin_selection");
    while (true) {
        if (!self killstreakrules::function_71e94a3b()) {
            self notify(#"hash_24520f447c149637");
        }
        waitframe(1);
    }
}

// Namespace namespace_bf7415ae/airsupport
// Params 1, eflags: 0x6 linked
// Checksum 0x118c09d3, Offset: 0x2a8
// Size: 0x80
function private function_469dabd0(killstreaktype) {
    e_target = self.mdl_target[killstreaktype];
    if (!isdefined(e_target)) {
        return 0;
    }
    var_6cecb00 = getent("enable_artillery_remotemissile", "targetname");
    if (isdefined(var_6cecb00)) {
        return e_target istouching(var_6cecb00);
    }
    return 1;
}

// Namespace namespace_bf7415ae/airsupport
// Params 2, eflags: 0x6 linked
// Checksum 0x7c63fbe3, Offset: 0x330
// Size: 0x2ce
function private function_a2eec6c2(killstreaktype, killstreakweapon) {
    self endon(#"disconnect");
    waitresult = self waittill(#"weapon_fired", #"weapon_change", #"hash_24520f447c149637");
    if (waitresult._notify === #"hash_24520f447c149637") {
        self notify(#"cancel_selection");
        currentweapon = self getcurrentweapon();
        if (currentweapon === killstreakweapon && killstreakweapon.iscarriedkillstreak) {
            self killstreaks::switch_to_last_non_killstreak_weapon();
        }
        return;
    }
    if (waitresult._notify === "weapon_fired" && waitresult.weapon === killstreakweapon) {
        if (function_469dabd0(killstreaktype)) {
            self notify(#"lockin_selection");
        } else {
            w_weapon = waitresult.weapon;
            self setweaponammoclip(w_weapon, w_weapon.clipsize);
            self notify(#"cancel_selection");
        }
        return;
    }
    if (waitresult._notify === "weapon_change" && waitresult.last_weapon === killstreakweapon) {
        self notify(#"cancel_selection");
        return;
    }
    /#
        str_notify = function_9e72a96(waitresult._notify);
        str_weapon = function_9e72a96(waitresult.weapon.name);
        var_d8d53d01 = isdefined(waitresult.last_weapon) ? function_9e72a96(waitresult.last_weapon.name) : "<unknown string>";
        assertmsg("<unknown string>" + str_notify + "<unknown string>" + str_weapon + "<unknown string>" + var_d8d53d01);
    #/
    self notify(#"cancel_selection");
}

// Namespace namespace_bf7415ae/airsupport
// Params 2, eflags: 0x2 linked
// Checksum 0x79b64a10, Offset: 0x608
// Size: 0xec
function function_be6de952(killstreaktype, var_94fe38b6) {
    self endon(#"disconnect");
    waitresult = self waittill(#"lockin_selection", #"cancel_selection");
    if (waitresult._notify === "lockin_selection") {
        wait(0.1);
        e_target = self.mdl_target[killstreaktype];
        if (isdefined(e_target)) {
            s_location = spawnstruct();
            s_location.origin = e_target.origin;
            s_location.angles = e_target.angles;
            e_target [[ var_94fe38b6 ]]();
            return s_location;
        }
    }
    return undefined;
}

// Namespace namespace_bf7415ae/airsupport
// Params 3, eflags: 0x6 linked
// Checksum 0xa2a02919, Offset: 0x700
// Size: 0xd4
function private function_f3305d7f(killstreaktype, var_c7502f87, var_7551540f) {
    var_17b7891d = "61205d598a90cb21" + killstreaktype;
    self notify(var_17b7891d);
    self endon(var_17b7891d);
    waitresult = self waittill(#"disconnect", #"cancel_selection", #"lockin_selection");
    if (waitresult._notify === "lockin_selection") {
        self waittill(#"disconnect", var_7551540f);
    }
    self thread function_ecb58f93(killstreaktype, var_c7502f87);
}

// Namespace namespace_bf7415ae/airsupport
// Params 2, eflags: 0x6 linked
// Checksum 0xc8d9c02, Offset: 0x7e0
// Size: 0x74
function private function_ecb58f93(killstreaktype, var_c7502f87) {
    mdl_target = self.mdl_target[killstreaktype];
    if (isdefined(mdl_target)) {
        mdl_target [[ var_c7502f87 ]]();
        util::wait_network_frame();
        if (isdefined(mdl_target)) {
            mdl_target deletedelay();
        }
    }
}

// Namespace namespace_bf7415ae/airsupport
// Params 6, eflags: 0x6 linked
// Checksum 0xb23c1d37, Offset: 0x860
// Size: 0x370
function private function_b66d4fac(killstreaktype, maxrange, var_f6825ff2, var_c7502f87, var_d89073fc, var_d3deec73) {
    var_17b7891d = "5dd623acf9935857" + killstreaktype;
    self notify(var_17b7891d);
    self endon(var_17b7891d);
    self endon(#"disconnect", #"cancel_selection", #"lockin_selection");
    var_4ad3bc13 = (0, 0, 8);
    if (!isdefined(self.mdl_target[killstreaktype])) {
        self.mdl_target[killstreaktype] = util::spawn_model("tag_origin", self.origin, (270, 0, 0));
        self.mdl_target[killstreaktype].var_806c145b = var_c7502f87;
    } else {
        self function_ecb58f93(killstreaktype, self.mdl_target[killstreaktype].var_806c145b);
        waitframe(1);
        if (isplayer(self)) {
            self.mdl_target[killstreaktype] = util::spawn_model("tag_origin", self.origin, (270, 0, 0));
            self.mdl_target[killstreaktype].var_806c145b = var_c7502f87;
        }
    }
    util::wait_network_frame();
    self.mdl_target[killstreaktype] [[ var_f6825ff2 ]]();
    while (true) {
        v_start = self geteye();
        v_forward = self getweaponforwarddir();
        v_end = v_start + v_forward * maxrange;
        a_trace = bullettrace(v_start, v_end, 0, self.mdl_target[killstreaktype], 1, 0);
        self.var_5acfe25f = a_trace[#"position"];
        self.mdl_target[killstreaktype] moveto(self.var_5acfe25f + var_4ad3bc13, 0.05);
        if (var_d89073fc) {
            var_94c47885 = self.mdl_target[killstreaktype].angles;
            var_94c47885 = (var_94c47885[0], self.angles[1], var_94c47885[2]);
            self.mdl_target[killstreaktype] rotateto(var_94c47885, 0.05);
        }
        if (isdefined(var_d3deec73)) {
            b_valid = function_469dabd0(killstreaktype);
            self.mdl_target[killstreaktype] [[ var_d3deec73 ]](b_valid);
        }
        wait(0.1);
    }
}

