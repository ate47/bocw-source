// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\string_shared.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\gamestate_util.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;

#namespace val;

// Namespace val/values_shared
// Params 0, eflags: 0x5
// Checksum 0xb9e1966d, Offset: 0x498
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"values", &preinit, undefined, undefined, undefined);
}

// Namespace val/values_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xd723e8a3, Offset: 0x4e0
// Size: 0x115c
function private preinit() {
    register("takedamage", 1, "$self", &set_takedamage, "$value");
    default_func("takedamage", "$self", &default_takedamage);
    register("allowdeath", 1, "$self", &set_allowdeath, "$value");
    default_func("allowdeath", "$self", &default_allowdeath);
    register("magic_bullet_shield", 1, "$self", &function_87a1ac43, "$value");
    default_func("magic_bullet_shield", "$self", &function_aac507e5);
    link("magic_bullet_shield", "allowdeath", &function_49321c2b);
    link("magic_bullet_shield", "attackeraccuracy", &function_25ef3fee);
    register("attackeraccuracy", 1);
    default_value("attackeraccuracy", 1);
    register("ignoreme", 1, "$self", &set_ignoreme, "$value");
    default_value("ignoreme", 0);
    register("ignoreall", 1, "$self", &set_ignoreall, "$value");
    default_value("ignoreall", 0);
    register("take_weapons", 1, "$self", &set_takeweapons, "$value");
    default_value("take_weapons", 0);
    register("disable_weapons", 1, "$self", &set_disableweapons, "$value");
    default_value("disable_weapons", 0);
    register("disable_weapon_cycling", 1, "$self", &function_f609f22c, "$value");
    default_value("disable_weapon_cycling", 0);
    register("disable_weapon_reload", 1, "$self", &function_debe5863, "$value");
    default_value("disable_weapon_reload", 0);
    register("disable_weapon_pickup", 1, "$self", &function_15d061e0, "$value");
    default_value("disable_weapon_pickup", 0);
    register("disable_weapon_fire", 1, "$self", &function_16f5ac8e, "$value");
    default_value("disable_weapon_fire", 0);
    register("disable_offhand_weapons", 1, "$self", &set_disableoffhandweapons, "$value");
    default_value("disable_offhand_weapons", 0);
    register("disable_offhand_special", 1, "$self", &function_37c7ffcd, "$value");
    default_value("disable_offhand_special", 0);
    register("disable_aim_assist", 1, "$self", &function_ba94b5cd, "$value");
    default_value("disable_aim_assist", 0);
    register("disable_usability", 1, "$self", &function_737c794, "$value");
    default_value("disable_usability", 0);
    register("freezecontrols", 1, "$self", &freezecontrols, "$value");
    default_value("freezecontrols", 0);
    register("freezecontrols_allowlook", 1, "$self", &freezecontrolsallowlook, "$value");
    default_value("freezecontrols_allowlook", 0);
    register("disablegadgets", 1, "$self", &gadgetsdisabled, "$value");
    default_value("disablegadgets", 0);
    register("hide", 1, "$self", &set_hide, "$value");
    default_value("hide", 0);
    register("health_regen", 1, "$self", &set_health_regen, "$value");
    default_value("health_regen", 1);
    register("disable_health_regen_delay", 1, "$self", &set_disable_health_regen_delay, "$value");
    default_value("disable_health_regen_delay", 0);
    register("ignore_health_regen_delay", 1, "$self", &set_ignore_health_regen_delay, "$value");
    default_value("ignore_health_regen_delay", 0);
    register("show_hud", 1, "$self", &setclientuivisibilityflag, "hud_visible", "$value");
    default_value("show_hud", 1);
    register("show_weapon_hud", 1, "$self", &setclientuivisibilityflag, "weapon_hud_visible", "$value");
    default_value("show_weapon_hud", 1);
    register("show_crosshair", 1, "$self", &function_e0c7d69, "$value");
    default_value("show_crosshair", 1);
    register("show_compass", 1, "$self", &setclientuivisibilityflag, "radar_client", "$value");
    default_value("show_compass", 1);
    register("show_hit_marker", 1, "$self", &function_62318390, "$value");
    default_value("show_hit_marker", 1);
    register("disable_gestures", 1, "$self", &set_disablegestures, "$value");
    default_value("disable_gestures", 0);
    register("allow_jump", 1, "$self", &allowjump, "$value");
    default_value("allow_jump", 1);
    register("allow_double_jump", 1, "$self", &allowdoublejump, "$value");
    default_value("allow_double_jump", 1);
    register("allow_crouch", 1, "$self", &allowcrouch, "$value");
    default_value("allow_crouch", 1);
    register("allow_prone", 1, "$self", &allowprone, "$value");
    default_value("allow_prone", 1);
    register("allow_melee", 1, "$self", &allowmelee, "$value");
    default_value("allow_melee", 1);
    register("allow_melee_victim", 1, "$self", &allow_melee_victim, "$value");
    default_value("allow_melee_victim", 1);
    register("allow_climb", 1, "$self", &function_4f1b1444, "$value");
    default_value("allow_climb", 1);
    register("allow_mantle", 1, "$self", &allowmantle, "$value");
    default_value("allow_mantle", 1);
    register("allow_sprint", 1, "$self", &allowsprint, "$value");
    default_value("allow_sprint", 1);
    register("allow_ads", 1, "$self", &allowads, "$value");
    default_value("allow_ads", 1);
    register("allow_stand", 1, "$self", &allowstand, "$value");
    default_value("allow_stand", 1);
    register("allow_movement", 1, "$self", &allowmovement, "$value");
    default_value("allow_movement", 1);
    register("move_speed_scale", 1, "$self", &setmovespeedscale, "$value");
    default_value("move_speed_scale", 1);
    register("low_ready", 1, "$self", &setlowready, "$value");
    default_value("low_ready", 0);
    register("goalradius", 2048, "$self", &set_goal_radius, "$value");
    default_value("goalradius", 2048);
    register("push_player", 1, "$self", &pushplayer, "$value");
    default_value("push_player", 0);
    register("pre_load_ghost", 1, "$self", &function_2be6e08d, "$value");
    default_value("pre_load_ghost", 0);
    register("skip_death", 1, "$self", &function_2d53d03d, "$value");
    default_value("skip_death", 0);
    register("skip_scene_death", 1, "$self", &function_2014cd50, "$value");
    default_value("skip_scene_death", 0);
    /#
        level thread debug_values();
        validate("<unknown string>", "<unknown string>", &validate_takedamage);
        validate("<unknown string>", "<unknown string>", &arecontrolsfrozen);
        validate("<unknown string>", "<unknown string>", &function_5972c3cf);
        validate("<unknown string>", "<unknown string>", &gadgetsdisabled);
        validate("<unknown string>", "<unknown string>", &ishidden);
    #/
}

// Namespace val/values_shared
// Params 5, eflags: 0x42 linked
// Checksum 0x784375d6, Offset: 0x1648
// Size: 0x140
function register(str_name, var_3509ed3e, call_on = "$self", func, ...) {
    if (!isdefined(level.values)) {
        level.values = [];
    }
    a_registered = getarraykeys(level.values);
    if (isinarray(a_registered, hash(str_name))) {
        assertmsg("<unknown string>" + str_name + "<unknown string>");
        return;
    }
    s_value = spawnstruct();
    s_value.str_name = str_name;
    s_value.call_on = call_on;
    s_value.func = func;
    s_value.var_3509ed3e = var_3509ed3e;
    s_value.a_args = vararg;
    level.values[str_name] = s_value;
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x9088efd, Offset: 0x1790
// Size: 0x94
function private assert_registered(str_name) {
    /#
        a_registered = getarraykeys(level.values);
        if (!isinarray(a_registered, hash(str_name))) {
            assertmsg("<unknown string>" + str_name + "<unknown string>");
            return false;
        }
    #/
    return true;
}

// Namespace val/values_shared
// Params 4, eflags: 0x42 linked
// Checksum 0xf4a34138, Offset: 0x1830
// Size: 0x7e
function default_func(str_name, call_on, value, ...) {
    if (assert_registered(str_name)) {
        s_value = level.values[str_name];
        s_value.default_call_on = call_on;
        s_value.default_value = value;
        s_value.default_args = vararg;
    }
}

// Namespace val/values_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xb5f218f9, Offset: 0x18b8
// Size: 0x56
function default_value(str_name, value) {
    if (assert_registered(str_name)) {
        s_value = level.values[str_name];
        s_value.default_value = value;
    }
}

// Namespace val/values_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x63888425, Offset: 0x1918
// Size: 0x84
function link(str_name, var_8e7e7e96, func) {
    if (assert_registered(str_name)) {
        s_value = level.values[str_name];
        s_value.links[var_8e7e7e96] = {#name:var_8e7e7e96, #func:func};
    }
}

// Namespace val/values_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x872ca5ea, Offset: 0x19a8
// Size: 0x158
function set(str_id, str_name, value) {
    if (assert_registered(str_name)) {
        if (!isdefined(value)) {
            value = level.values[str_name].var_3509ed3e;
        }
        _push_value(str_id, str_name, value);
        _set_value(str_name, value);
    }
    if (isarray(level.values[str_name].links)) {
        foreach (s_link in level.values[str_name].links) {
            set(str_id, s_link.name, [[ s_link.func ]](value));
        }
    }
}

// Namespace val/values_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x6e5c1ca4, Offset: 0x1b08
// Size: 0x3c
function set_radiant(str_name, value) {
    set(#"radiant", str_name, value);
}

// Namespace val/values_shared
// Params 4, eflags: 0x0
// Checksum 0xe7195e80, Offset: 0x1b50
// Size: 0x74
function set_for_time(n_time, str_id, str_name, value) {
    self endon(#"death");
    set(str_id, str_name, value);
    wait(n_time);
    reset(str_id, str_name);
}

// Namespace val/values_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x45ec80e0, Offset: 0x1bd0
// Size: 0x178
function reset(str_id, str_name) {
    n_index = _remove_value(str_id, str_name);
    if (!n_index) {
        if (isdefined(self.values[str_name]) && self.values[str_name].size > 0) {
            _set_value(str_name, self.values[str_name][0].value);
        } else {
            _set_default(str_name);
        }
    }
    if (isarray(level.values[str_name].links)) {
        foreach (s_link in level.values[str_name].links) {
            reset(str_id, s_link.name);
        }
    }
}

// Namespace val/values_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xabca1aff, Offset: 0x1d50
// Size: 0x144
function reset_all(str_id) {
    if (!isdefined(self.values)) {
        return;
    }
    valuescopy = arraycopy(self.values);
    foreach (valuekey, valuestates in valuescopy) {
        foreach (state in valuestates) {
            if (state.str_id === str_id) {
                self reset(str_id, valuekey);
            }
        }
    }
}

// Namespace val/values_shared
// Params 1, eflags: 0x0
// Checksum 0x50f63b57, Offset: 0x1ea0
// Size: 0x2c
function reset_radiant(str_name) {
    reset(#"radiant", str_name);
}

// Namespace val/values_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x18ce8595, Offset: 0x1ed8
// Size: 0x34
function nuke(str_name) {
    self.values[str_name] = [];
    _set_default(str_name);
}

// Namespace val/values_shared
// Params 3, eflags: 0x6 linked
// Checksum 0x7e391b11, Offset: 0x1f18
// Size: 0xbc
function private _push_value(str_id, str_name, value) {
    _remove_value(str_id, str_name);
    if (!isdefined(self.values)) {
        self.values = [];
    }
    if (!isdefined(self.values[str_name])) {
        self.values[str_name] = [];
    }
    arrayinsert(self.values[str_name], {#str_id:str_id, #value:value}, 0);
}

// Namespace val/values_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xa66b174b, Offset: 0x1fe0
// Size: 0x10a
function private _remove_value(str_id, str_name) {
    if (!isdefined(self)) {
        return -1;
    }
    if (isdefined(self.values) && isdefined(self.values[str_name])) {
        for (n_index = self.values[str_name].size - 1; n_index >= 0; n_index--) {
            if (self.values[str_name][n_index].str_id == str_id) {
                arrayremoveindex(self.values[str_name], n_index);
                break;
            }
        }
        if (!self.values[str_name].size) {
            self.values[str_name] = undefined;
            if (!self.values.size) {
                self.values = undefined;
            }
        }
    }
    return isdefined(n_index) ? n_index : -1;
}

// Namespace val/values_shared
// Params 2, eflags: 0x6 linked
// Checksum 0x9db1d0fb, Offset: 0x20f8
// Size: 0xc8
function private _set_value(str_name, value) {
    s_value = level.values[str_name];
    if (isdefined(s_value) && isdefined(s_value.func)) {
        call_on = s_value.call_on === "$self" ? self : s_value.call_on;
        util::single_func_argarray(call_on, s_value.func, _replace_values(s_value.a_args, value));
        return;
    }
    self.(str_name) = value;
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x2464039a, Offset: 0x21c8
// Size: 0xec
function private _set_default(str_name) {
    s_value = level.values[str_name];
    if (isdefined(s_value.default_value)) {
        if (isfunctionptr(s_value.default_value)) {
            call_on = s_value.default_call_on === "$self" ? self : s_value.default_call_on;
            default_value = util::single_func_argarray(call_on, s_value.default_value, _replace_values(s_value.default_args));
        } else {
            default_value = s_value.default_value;
        }
        _set_value(str_name, default_value);
    }
}

// Namespace val/values_shared
// Params 2, eflags: 0x6 linked
// Checksum 0x93e289a2, Offset: 0x22c0
// Size: 0x5a
function private _replace_values(a_args, value) {
    a_args = array::replace(a_args, "$self", self);
    a_args = array::replace(a_args, "$value", value);
    return a_args;
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xbe76600, Offset: 0x2328
// Size: 0x7e
function private set_takedamage(b_value = 1) {
    if (isplayer(self)) {
        if (b_value) {
            self disableinvulnerability();
        } else {
            self enableinvulnerability();
        }
        return;
    }
    self.takedamage = b_value;
}

// Namespace val/values_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xad93121d, Offset: 0x23b0
// Size: 0x34
function private default_takedamage() {
    return issentient(self) || isvehicle(self);
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x8227074c, Offset: 0x23f0
// Size: 0x2a
function private set_allowdeath(b_value = 1) {
    self.allowdeath = b_value;
}

// Namespace val/values_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xdf6083d2, Offset: 0x2428
// Size: 0x34
function private default_allowdeath() {
    return issentient(self) || isvehicle(self);
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xe4217910, Offset: 0x2468
// Size: 0x5c
function private function_87a1ac43(b_value = 1) {
    self.magic_bullet_shield = b_value;
    if (isactor(self)) {
        self bloodimpact("hero");
    }
}

// Namespace val/values_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x83204cc8, Offset: 0x24d0
// Size: 0x44
function private function_aac507e5() {
    self.magic_bullet_shield = undefined;
    if (isactor(self)) {
        self bloodimpact("normal");
    }
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x1fe7d315, Offset: 0x2520
// Size: 0x12
function private function_49321c2b(var_110b9b81) {
    return !var_110b9b81;
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x473c15d8, Offset: 0x2540
// Size: 0x22
function private function_25ef3fee(var_110b9b81) {
    return var_110b9b81 ? 0.1 : 1;
}

// Namespace val/values_shared
// Params 0, eflags: 0x4
// Checksum 0x146057cf, Offset: 0x2570
// Size: 0x44
function private validate_takedamage() {
    if (isplayer(self)) {
        return !self getinvulnerability();
    }
    return self.takedamage;
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x563e4f59, Offset: 0x25c0
// Size: 0xcc
function private set_takeweapons(b_value = 1) {
    if (b_value) {
        if (!is_true(self.gun_removed)) {
            if (isplayer(self)) {
                self player::take_weapons();
            } else {
                self animation::detach_weapon();
            }
        }
        return;
    }
    if (isplayer(self)) {
        self player::give_back_weapons();
        return;
    }
    self animation::attach_weapon();
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x26ca1781, Offset: 0x2698
// Size: 0x6c
function private set_disableweapons(value = 1) {
    if (value != 0) {
        self disableweapons(value === 2 ? 1 : 0);
        return;
    }
    self enableweapons();
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x968adfa8, Offset: 0x2710
// Size: 0x54
function private function_f609f22c(b_value = 1) {
    if (b_value) {
        self disableweaponcycling();
        return;
    }
    self enableweaponcycling();
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x2dd39732, Offset: 0x2770
// Size: 0x54
function private function_16f5ac8e(b_value = 1) {
    if (b_value) {
        self disableweaponfire();
        return;
    }
    self enableweaponfire();
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x1a4e1805, Offset: 0x27d0
// Size: 0x54
function private function_debe5863(b_value = 1) {
    if (b_value) {
        self function_205350ab();
        return;
    }
    self function_6e1804bd();
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x6240d50d, Offset: 0x2830
// Size: 0x54
function private function_15d061e0(b_value = 1) {
    if (b_value) {
        self disableweaponpickup();
        return;
    }
    self enableweaponpickup();
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x22c7a57f, Offset: 0x2890
// Size: 0x54
function private set_disableoffhandweapons(b_value = 1) {
    if (b_value) {
        self disableoffhandweapons();
        return;
    }
    self enableoffhandweapons();
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xdf912a69, Offset: 0x28f0
// Size: 0x54
function private function_37c7ffcd(b_value = 1) {
    if (b_value) {
        self disableoffhandspecial();
        return;
    }
    self enableoffhandspecial();
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xbfdcc517, Offset: 0x2950
// Size: 0x64
function private function_ba94b5cd(b_value = 1) {
    assert(sessionmodeiscampaigngame());
    setsaveddvar(#"aim_assist_script_disable", b_value);
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xab8ec6be, Offset: 0x29c0
// Size: 0x54
function private function_737c794(b_value = 1) {
    if (b_value) {
        self disableusability();
        return;
    }
    self enableusability();
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x90ac85b8, Offset: 0x2a20
// Size: 0x52
function private set_ignoreme(b_value = 1) {
    if (function_ffa5b184(self)) {
        self.var_becd4d91 = b_value;
        return;
    }
    self.ignoreme = b_value;
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xaeec67a2, Offset: 0x2a80
// Size: 0x2a
function private set_ignoreall(b_value = 1) {
    self.ignoreall = b_value;
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x7d133d8b, Offset: 0x2ab8
// Size: 0x66
function private function_62318390(b_value = 1) {
    assert(isplayer(self));
    if (b_value) {
        self.nohitmarkers = undefined;
        return;
    }
    self.nohitmarkers = 1;
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x8b6e1205, Offset: 0x2b28
// Size: 0x42
function private set_disablegestures(b_value = 1) {
    if (isplayer(self)) {
        self.disablegestures = b_value;
    }
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x95cff752, Offset: 0x2b78
// Size: 0x74
function private set_hide(b_value = 1) {
    if (b_value) {
        if (b_value == 1) {
            self hide();
        } else {
            self ghost();
        }
        return;
    }
    self show();
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xefb8afe7, Offset: 0x2bf8
// Size: 0x4a
function private set_health_regen(b_value = 1) {
    if (b_value) {
        self.heal.enabled = 1;
        return;
    }
    self.heal.enabled = 0;
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x303f1051, Offset: 0x2c50
// Size: 0x42
function private set_disable_health_regen_delay(b_value = 1) {
    if (b_value) {
        self.disable_health_regen_delay = 1;
        return;
    }
    self.disable_health_regen_delay = 0;
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x141d94a7, Offset: 0x2ca0
// Size: 0x42
function private set_ignore_health_regen_delay(b_value = 1) {
    if (b_value) {
        self.ignore_health_regen_delay = 1;
        return;
    }
    self.ignore_health_regen_delay = 0;
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x1759f0ce, Offset: 0x2cf0
// Size: 0xa2
function private set_goal_radius(val) {
    if (isdefined(val)) {
        self.goalradius = val;
        return;
    }
    if (isdefined(self.radius)) {
        self.goalradius = float(self.radius);
        return;
    }
    if (isdefined(self.spawner.radius)) {
        self.goalradius = float(self.spawner.radius);
        return;
    }
    self.goalradius = 2048;
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xc67788d0, Offset: 0x2da0
// Size: 0x36
function private function_2d53d03d(b_value = 1) {
    self.skipdeath = b_value ? 1 : 0;
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x7534b105, Offset: 0x2de0
// Size: 0x36
function private function_2014cd50(b_value = 1) {
    self.skipscenedeath = b_value ? 1 : undefined;
}

// Namespace val/values_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x93c11979, Offset: 0x2e20
// Size: 0x36
function private allow_melee_victim(b_value = 1) {
    self.canbemeleed = b_value ? 1 : 0;
}

// Namespace val/values_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xbd3a0602, Offset: 0x2e60
// Size: 0x21c
function function_4671dfff(str_id, value) {
    if (value) {
        set(str_id, "disable_weapon_fire", value);
        set(str_id, "disable_offhand_weapons", value);
        set(str_id, "disablegadgets", value);
        set(str_id, "allow_movement", !value);
        set(str_id, "allow_jump", !value);
        set(str_id, "allow_melee", !value);
        set(str_id, "allow_sprint", !value);
        set(str_id, "allow_prone", !value);
        return;
    }
    reset(str_id, "disable_weapon_fire");
    reset(str_id, "disable_offhand_weapons");
    reset(str_id, "disablegadgets");
    reset(str_id, "allow_movement");
    reset(str_id, "allow_jump");
    reset(str_id, "allow_melee");
    reset(str_id, "allow_sprint");
    reset(str_id, "allow_prone");
}

// Namespace val/values_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xb86321e4, Offset: 0x3088
// Size: 0x19c
function function_5276aede(str_id, value) {
    if (value) {
        set(str_id, "disable_offhand_weapons", value);
        set(str_id, "disablegadgets", value);
        set(str_id, "allow_movement", !value);
        set(str_id, "allow_jump", !value);
        set(str_id, "allow_melee", !value);
        set(str_id, "allow_sprint", !value);
        return;
    }
    reset(str_id, "disable_offhand_weapons");
    reset(str_id, "disablegadgets");
    reset(str_id, "allow_movement");
    reset(str_id, "allow_jump");
    reset(str_id, "allow_melee");
    reset(str_id, "allow_sprint");
}

/#

    // Namespace val/values_shared
    // Params 4, eflags: 0x44
    // Checksum 0x409a0c50, Offset: 0x3230
    // Size: 0xf2
    function private validate(str_name, call_on, func, ...) {
        a_registered = getarraykeys(level.values);
        if (!isinarray(a_registered, hash(str_name))) {
            assertmsg("<unknown string>" + str_name + "<unknown string>");
            return;
        }
        s_value = level.values[str_name];
        s_value.b_validate = 1;
        s_value.func_validate = func;
        s_value.validate_call_on = call_on;
        s_value.validate_args = vararg;
    }

    // Namespace val/values_shared
    // Params 3, eflags: 0x4
    // Checksum 0xa013b87f, Offset: 0x3330
    // Size: 0x15a
    function private _validate_value(str_name, value, b_assert) {
        if (!isdefined(b_assert)) {
            b_assert = 0;
        }
        s_value = level.values[str_name];
        if (isdefined(s_value.func_validate)) {
            call_on = s_value.validate_call_on === "<unknown string>" ? self : s_value.validate_call_on;
            current_value = util::single_func_argarray(call_on, s_value.func_validate, _replace_values(s_value.validate_args));
        } else {
            current_value = self.(str_name);
        }
        b_match = current_value === value;
        if (b_assert) {
            assert(b_match, "<unknown string>" + function_9e72a96(str_name) + "<unknown string>" + current_value + "<unknown string>" + value + "<unknown string>");
        }
        return b_match;
    }

    // Namespace val/values_shared
    // Params 0, eflags: 0x4
    // Checksum 0x8ba4e017, Offset: 0x3498
    // Size: 0x44a
    function private debug_values() {
        level flag::init_dvar("<unknown string>");
        level flag::wait_till("<unknown string>");
        while (true) {
            level flag::wait_till("<unknown string>");
            str_debug_values_entity = getdvarstring(#"scr_debug_values_entity", "<unknown string>");
            if (str_debug_values_entity == "<unknown string>" || str_debug_values_entity == "<unknown string>" || str_debug_values_entity == "<unknown string>") {
                hud_ent = level.host;
                str_label = "<unknown string>";
            } else if (strisnumber(str_debug_values_entity)) {
                hud_ent = getentbynum(int(str_debug_values_entity));
                str_label = "<unknown string>" + str_debug_values_entity;
            } else {
                str_value = str_debug_values_entity;
                str_key = "<unknown string>";
                if (issubstr(str_value, "<unknown string>")) {
                    a_toks = strtok(str_value, "<unknown string>");
                    str_value = a_toks[0];
                    str_key = a_toks[1];
                }
                hud_ent = getent(str_value, str_key, 1);
                str_label = str_value + "<unknown string>" + str_key;
            }
            debug2dtext((200, 100, 0), str_label, (1, 1, 1), 1, (0, 0, 0), 0.5, 0.8, 1);
            a_all_ents = getentarray();
            foreach (ent in a_all_ents) {
                if (isdefined(ent.values)) {
                    i = 1;
                    foreach (str_name, a_value in ent.values) {
                        top_value = a_value[0];
                        if (isdefined(top_value)) {
                            b_valid = 1;
                            if (is_true(level.values[str_name].b_validate)) {
                                b_assert = getdvarint(#"scr_debug_values", 0) > 1;
                                b_valid = ent _validate_value(str_name, top_value.value, b_assert);
                            }
                            ent display_value(i, str_name, top_value.str_id, top_value.value, b_valid, ent === hud_ent);
                            i++;
                        }
                    }
                }
            }
            waitframe(1);
        }
    }

    // Namespace val/values_shared
    // Params 6, eflags: 0x4
    // Checksum 0xf0564f8, Offset: 0x38f0
    // Size: 0x21c
    function private display_value(index, str_name, str_id, value, b_valid, on_hud) {
        if (!isdefined(on_hud)) {
            on_hud = 0;
        }
        if (ishash(str_name)) {
            str_name = function_9e72a96(str_name);
        }
        if (ishash(str_id)) {
            str_id = function_9e72a96(str_id);
        }
        str_value = "<unknown string>";
        if ((isdefined(str_name) ? "<unknown string>" + str_name : "<unknown string>") != "<unknown string>") {
            str_value = string::rjust(str_name, 20);
            if (isdefined(value)) {
                str_value += "<unknown string>" + value;
            }
            str_value += "<unknown string>" + string::ljust(isdefined(str_id) ? "<unknown string>" + str_id : "<unknown string>", 30);
        }
        color = b_valid ? (1, 1, 1) : (1, 0, 0);
        if (on_hud) {
            debug2dtext((200, 100 + index * 20, 0), str_value, color, 1, (0, 0, 0), 0.5, 0.8, 1);
        }
        print3d(self.origin - (0, 0, index * 8), str_value, color, 1, 0.3, 1);
    }

#/
