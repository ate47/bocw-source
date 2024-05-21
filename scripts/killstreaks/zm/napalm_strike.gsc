// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_player.gsc;
#using script_7bdcff4f92f3d220;
#using script_61828ad9e71c6616;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\killstreaks\zm\airsupport.gsc;
#using script_7475f917e6d3bed9;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;

#namespace napalm_strike;

// Namespace napalm_strike/napalm_strike
// Params 0, eflags: 0x5
// Checksum 0x4a53564d, Offset: 0x1e8
// Size: 0x54
function private autoexec __init__system__() {
    system::register(#"napalm_strike", &preinit, undefined, &function_3675de8b, #"killstreaks");
}

// Namespace napalm_strike/napalm_strike
// Params 0, eflags: 0x6 linked
// Checksum 0x1f0fb56b, Offset: 0x248
// Size: 0x94
function private preinit() {
    init_shared("killstreak_napalm_strike" + "_zm", &function_a865cea6);
    clientfield::register("scriptmover", "napalm_strike_marker_on", 1, 2, "int");
    zm_player::register_player_damage_callback(&function_f6ea413);
    level.var_3bd3b14a = 1;
}

// Namespace napalm_strike/napalm_strike
// Params 0, eflags: 0x6 linked
// Checksum 0x73759b97, Offset: 0x2e8
// Size: 0x34
function private function_3675de8b() {
    killstreaks::function_7b6102ed("napalm_strike_zm");
    killstreaks::function_7b6102ed("inventory_napalm_strike_zm");
}

// Namespace napalm_strike/napalm_strike
// Params 1, eflags: 0x2 linked
// Checksum 0x5ef43ecf, Offset: 0x328
// Size: 0x102
function function_a865cea6(*killstreaktype) {
    if (!self killstreakrules::iskillstreakallowed("napalm_strike_zm", self.team)) {
        return 0;
    }
    if (!self killstreakrules::function_71e94a3b()) {
        self.var_baf4657c = 1;
        self killstreakrules::function_65739e7b("napalm_strike_zm");
        self killstreaks::switch_to_last_non_killstreak_weapon();
        return;
    }
    if (isint(level.var_7d0d2eae)) {
        level.var_7d0d2eae = (level.var_7d0d2eae + 1) % 100;
    } else {
        level.var_7d0d2eae = 0;
    }
    result = function_53a0e7ce(level.var_7d0d2eae);
    return result;
}

// Namespace napalm_strike/napalm_strike
// Params 1, eflags: 0x0
// Checksum 0xe929dd81, Offset: 0x438
// Size: 0xb6
function function_58189f7d(*killstreaktype) {
    self endon(#"death");
    waitresult = self waittill(#"weapon_fired", #"weapon_change");
    if (!self killstreakrules::function_71e94a3b() && waitresult._notify === "weapon_fired") {
        return 0;
    }
    if (waitresult._notify === "weapon_fired") {
        return 1;
    }
    return 0;
}

// Namespace napalm_strike/napalm_strike
// Params 1, eflags: 0x2 linked
// Checksum 0xf9a9c396, Offset: 0x4f8
// Size: 0x304
function function_53a0e7ce(var_b004174a) {
    if (!is_true(level.var_3bd3b14a)) {
        return;
    }
    self endon(#"disconnect");
    s_params = killstreaks::get_script_bundle("napalm_strike_zm");
    var_2558cb51 = array("napalm_strike_complete" + var_b004174a, "napalm_strike_failed" + var_b004174a);
    self namespace_bf7415ae::function_890b3889("napalm_strike", s_params.ksweapon, 2500, &function_ce23d48a, &function_ffa80fa4, var_2558cb51, 1, &function_88a015af);
    s_location = self namespace_bf7415ae::function_be6de952("napalm_strike", &function_fc2f1ec6);
    if (isdefined(s_location)) {
        forward = anglestoforward((0, s_location.angles[1], 0));
        forward = vectornormalize(forward);
        forward = vectorscale(forward, 190);
        forward = (forward[0], forward[1], forward[2]);
        s_location.origin += forward;
        right = anglestoright((0, s_location.angles[1], 0));
        right = vectornormalize(right);
        right = vectorscale(right, 256);
        s_location.origin += right;
        s_location.yaw = s_location.angles[1] + 90;
        s_location.height = 1500 + 3400 + randomfloatrange(-200, 200);
        killstreak_id = self killstreakrules::killstreakstart("napalm_strike_zm", self.team, 0, 1);
        if (killstreak_id == -1) {
            self notify("napalm_strike_failed" + var_b004174a);
            return 0;
        }
        self thread function_9aa2535(var_b004174a, s_location, killstreak_id);
        return 1;
    }
    return 0;
}

// Namespace napalm_strike/grenade_fire
// Params 1, eflags: 0x24
// Checksum 0xb03e79de, Offset: 0x808
// Size: 0x2f4
function private event_handler[grenade_fire] function_4776caf4(eventstruct) {
    if (!is_true(level.var_3bd3b14a)) {
        return;
    }
    if (!isplayer(self)) {
        return;
    }
    weapon = eventstruct.weapon;
    if (!isdefined(weapon)) {
        return;
    }
    if (weapon == killstreaks::get_killstreak_weapon("napalm_strike_zm") || weapon == killstreaks::get_killstreak_weapon("inventory_" + "napalm_strike_zm")) {
        if (!self killstreakrules::function_71e94a3b()) {
            self.var_baf4657c = 1;
            self killstreakrules::function_65739e7b("napalm_strike_zm");
            projectile = eventstruct.projectile;
            if (isdefined(projectile)) {
                projectile delete();
            }
            return;
        }
        projectile = eventstruct.projectile;
        if (isdefined(projectile)) {
            projectile endon(#"death");
            projectile waittill(#"rolling");
            if (isdefined(projectile)) {
                playfxontag("weapon/fx8_equip_swat_smk_signal", projectile, "tag_flash");
            }
            projectile waittill(#"stationary");
            if (isdefined(projectile)) {
                projectile.angles = (-90, 0, 90);
            }
            wait(1);
            if (isdefined(projectile) && isplayer(self)) {
                projectile thread function_5673c107();
                s_location = spawnstruct();
                s_location.origin = projectile.origin;
                s_location.yaw = self.angles[1] + 90;
                s_location.height = 1500 + 3400 + randomfloatrange(-200, 200);
                killstreak_id = self killstreakrules::killstreakstart("napalm_strike_zm", self.team, 0, 1);
                if (killstreak_id == -1) {
                    self notify(#"napalm_strike_failed");
                    return 0;
                }
                self thread function_9aa2535(s_location, killstreak_id);
            }
        }
    }
}

// Namespace napalm_strike/napalm_strike
// Params 0, eflags: 0x2 linked
// Checksum 0x6160a999, Offset: 0xb08
// Size: 0x34
function function_5673c107() {
    self endon(#"death");
    wait(7);
    self delete();
}

// Namespace napalm_strike/napalm_strike
// Params 0, eflags: 0x6 linked
// Checksum 0xfeda755a, Offset: 0xb48
// Size: 0x24
function private function_ce23d48a() {
    self clientfield::set("napalm_strike_marker_on", 1);
}

// Namespace napalm_strike/napalm_strike
// Params 0, eflags: 0x6 linked
// Checksum 0x547ca88e, Offset: 0xb78
// Size: 0x24
function private function_fc2f1ec6() {
    self clientfield::set("napalm_strike_marker_on", 2);
}

// Namespace napalm_strike/napalm_strike
// Params 0, eflags: 0x6 linked
// Checksum 0xd243db69, Offset: 0xba8
// Size: 0x24
function private function_ffa80fa4() {
    self clientfield::set("napalm_strike_marker_on", 0);
}

// Namespace napalm_strike/napalm_strike
// Params 1, eflags: 0x6 linked
// Checksum 0x5ebdc383, Offset: 0xbd8
// Size: 0x4c
function private function_88a015af(b_valid) {
    self clientfield::set("napalm_strike_marker_on", is_true(b_valid) ? 1 : 3);
}

// Namespace napalm_strike/napalm_strike
// Params 3, eflags: 0x6 linked
// Checksum 0xeca9dc06, Offset: 0xc30
// Size: 0x58
function private function_9aa2535(var_b004174a, location, killstreakid) {
    self function_88e2e18a("napalm_strike_zm", location, self.team, killstreakid);
    self notify("napalm_strike_complete" + var_b004174a);
}

// Namespace napalm_strike/napalm_strike
// Params 10, eflags: 0x6 linked
// Checksum 0x86a2e67e, Offset: 0xc90
// Size: 0x8c
function private function_f6ea413(*einflictor, eattacker, *idamage, *idflags, *smeansofdeath, weapon, *vpoint, *vdir, *shitloc, *psoffsettime) {
    if (shitloc === self && psoffsettime == getweapon("napalm_strike")) {
        return 20;
    }
    return -1;
}

