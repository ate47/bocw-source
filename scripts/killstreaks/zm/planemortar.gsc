// Atian COD Tools GSC CW decompiler test
#using script_7bdcff4f92f3d220;
#using script_61828ad9e71c6616;
#using scripts\zm_common\zm_player.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using script_1cc417743d7c262d;
#using script_396f7d71538c9677;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\killstreaks\zm\airsupport.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using script_4721de209091b1a6;
#using scripts\killstreaks\planemortar_shared.gsc;

#namespace planemortar;

// Namespace planemortar/planemortar
// Params 0, eflags: 0x5
// Checksum 0xe063e42, Offset: 0x2d8
// Size: 0x54
function private autoexec __init__system__() {
    system::register(#"planemortar", &preinit, undefined, &function_3675de8b, #"killstreaks");
}

// Namespace planemortar/planemortar
// Params 0, eflags: 0x6 linked
// Checksum 0x63fd79f, Offset: 0x338
// Size: 0xe4
function private preinit() {
    init_shared();
    clientfield::register("scriptmover", "planemortar_marker_on", 1, 2, "int");
    bundlename = "killstreak_planemortar" + "_zm";
    killstreaks::register_killstreak(bundlename, &function_c9ca313b);
    level.plane_mortar_bda_dialog = &plane_mortar_bda_dialog;
    level.var_269fec2 = &function_269fec2;
    level.var_eb0c5d6 = 1;
    zm_player::register_player_damage_callback(&function_5e7e3e86);
}

// Namespace planemortar/planemortar
// Params 0, eflags: 0x6 linked
// Checksum 0x3f81cd5e, Offset: 0x428
// Size: 0x34
function private function_3675de8b() {
    killstreaks::function_7b6102ed("planemortar");
    killstreaks::function_7b6102ed("inventory_planemortar");
}

// Namespace planemortar/planemortar
// Params 0, eflags: 0x2 linked
// Checksum 0x7ada4948, Offset: 0x468
// Size: 0x26
function function_269fec2() {
    if (isdefined(level.var_30264985)) {
        self notify(#"mortarradarused");
    }
}

// Namespace planemortar/planemortar
// Params 0, eflags: 0x2 linked
// Checksum 0x3ed7c82b, Offset: 0x498
// Size: 0x1de
function plane_mortar_bda_dialog() {
    if (isdefined(self.planemortarbda)) {
        if (self.planemortarbda === 1) {
            bdadialog = "kill1";
            killconfirmed = "killConfirmed1_p";
        } else if (self.planemortarbda === 2) {
            bdadialog = "kill2";
            killconfirmed = "killConfirmed2_p";
        } else if (self.planemortarbda === 3) {
            bdadialog = "kill3";
            killconfirmed = "killConfirmed3_p";
        } else if (isdefined(self.planemortarbda) && self.planemortarbda > 3) {
            bdadialog = "killMultiple";
            killconfirmed = "killConfirmedMult_p";
        }
        self namespace_f9b02f80::play_pilot_dialog(bdadialog, "planemortar", undefined, self.planemortarpilotindex);
        if (battlechatter::dialog_chance("taacomPilotKillConfirmChance")) {
            self namespace_f9b02f80::play_taacom_dialog_response(killconfirmed, "planemortar", undefined, self.planemortarpilotindex);
        } else {
            self namespace_f9b02f80::play_taacom_dialog_response("hitConfirmed_p", "planemortar", undefined, self.planemortarpilotindex);
        }
        globallogic_audio::play_taacom_dialog("confirmHit");
    } else {
        namespace_f9b02f80::play_pilot_dialog("killNone", "planemortar", undefined, self.planemortarpilotindex);
        globallogic_audio::play_taacom_dialog("confirmMiss");
    }
    self.planemortarbda = undefined;
}

// Namespace planemortar/planemortar
// Params 1, eflags: 0x2 linked
// Checksum 0xcd2f71a0, Offset: 0x680
// Size: 0x12a
function function_c9ca313b(*killstreaktype) {
    if (!self killstreakrules::iskillstreakallowed("planemortar", self.team)) {
        return 0;
    }
    if (!self killstreakrules::function_71e94a3b()) {
        self.var_baf4657c = 1;
        self killstreakrules::function_65739e7b("planemortar");
        self killstreaks::switch_to_last_non_killstreak_weapon();
        return;
    }
    if (isint(level.var_fd269dce)) {
        level.var_fd269dce = (level.var_fd269dce + 1) % 100;
    } else {
        level.var_fd269dce = 0;
    }
    if (isdefined(level.var_269fec2)) {
        self [[ level.var_269fec2 ]]();
    }
    result = function_66133f8b(level.var_fd269dce);
    return result;
}

// Namespace planemortar/planemortar
// Params 1, eflags: 0x0
// Checksum 0xb2ef1dd3, Offset: 0x7b8
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

// Namespace planemortar/grenade_fire
// Params 1, eflags: 0x24
// Checksum 0x2c25884c, Offset: 0x878
// Size: 0x2d4
function private event_handler[grenade_fire] function_4776caf4(eventstruct) {
    if (!is_true(level.var_eb0c5d6)) {
        return;
    }
    if (!isplayer(self)) {
        return;
    }
    weapon = eventstruct.weapon;
    if (!isdefined(weapon)) {
        return;
    }
    if (weapon == killstreaks::get_killstreak_weapon("planemortar") || weapon == killstreaks::get_killstreak_weapon("inventory_" + "planemortar")) {
        if (!self killstreakrules::function_71e94a3b()) {
            self.var_baf4657c = 1;
            self killstreakrules::function_65739e7b("planemortar");
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
                s_params = killstreaks::get_script_bundle("planemortar");
                killstreakid = self killstreakrules::killstreakstart("planemortar", self.team, 0, 1);
                if (killstreakid == -1) {
                    self notify(#"planemortar_failed");
                    return 0;
                }
                self thread function_8f181838(s_params, s_location.origin);
            }
        }
    }
}

// Namespace planemortar/planemortar
// Params 1, eflags: 0x2 linked
// Checksum 0xafeb3a7c, Offset: 0xb58
// Size: 0x224
function function_66133f8b(var_5b276012) {
    self endon(#"disconnect");
    s_params = killstreaks::get_script_bundle("planemortar");
    var_2558cb51 = array("planemortar_complete" + var_5b276012, "planemortar_failed" + var_5b276012);
    self namespace_bf7415ae::function_890b3889("planemortar", s_params.ksweapon, 2500, &function_142c133b, &function_f2cd26bf, var_2558cb51, 0, &function_fa592333);
    s_location = self namespace_bf7415ae::function_be6de952("planemortar", &function_c6fe946e);
    if (isdefined(s_location)) {
        killstreak_id = self killstreakrules::killstreakstart("planemortar", self.team, 0, 1);
        if (killstreak_id == -1) {
            self notify("planemortar_failed" + var_5b276012);
            return false;
        }
        if ((isdefined(self.var_fb18d24e) ? self.var_fb18d24e : 0) < gettime()) {
            self namespace_f9b02f80::play_killstreak_start_dialog("planemortar", self.team, killstreak_id);
            self.var_fb18d24e = gettime() + int(battlechatter::mpdialog_value("planeMortarCooldown", 7) * 1000);
        }
        self thread function_8f181838(var_5b276012, s_params, s_location.origin);
        return true;
    }
    return false;
}

// Namespace planemortar/planemortar
// Params 0, eflags: 0x6 linked
// Checksum 0xe0c98171, Offset: 0xd88
// Size: 0x24
function private function_142c133b() {
    self clientfield::set("planemortar_marker_on", 1);
}

// Namespace planemortar/planemortar
// Params 0, eflags: 0x6 linked
// Checksum 0xfab33981, Offset: 0xdb8
// Size: 0x24
function private function_c6fe946e() {
    self clientfield::set("planemortar_marker_on", 2);
}

// Namespace planemortar/planemortar
// Params 0, eflags: 0x6 linked
// Checksum 0x46eecd68, Offset: 0xde8
// Size: 0x24
function private function_f2cd26bf() {
    self clientfield::set("planemortar_marker_on", 0);
}

// Namespace planemortar/planemortar
// Params 1, eflags: 0x6 linked
// Checksum 0xe4020f74, Offset: 0xe18
// Size: 0x4c
function private function_fa592333(b_valid) {
    self clientfield::set("planemortar_marker_on", is_true(b_valid) ? 1 : 3);
}

// Namespace planemortar/planemortar
// Params 0, eflags: 0x2 linked
// Checksum 0xedfa3920, Offset: 0xe70
// Size: 0x34
function function_5673c107() {
    self endon(#"death");
    wait(7);
    self delete();
}

// Namespace planemortar/planemortar
// Params 3, eflags: 0x6 linked
// Checksum 0xb4082de8, Offset: 0xeb0
// Size: 0x280
function private function_8f181838(var_5b276012, params, targetposition) {
    self endon(#"disconnect");
    self.planemortarpilotindex = self namespace_f9b02f80::get_random_pilot_index("planemortar");
    self thread function_16f87e96(8);
    if (isdefined(params.var_675bebb2)) {
        wait(params.var_675bebb2);
    }
    n_yaw = randomintrange(0, 360);
    for (i = 0; i < 8; i++) {
        if (i != 0) {
            n_interval = randomfloatrange(0.5, 2);
            wait(n_interval);
        }
        n_radius = 500 * randomfloat(1);
        n_angle = randomintrange(0, 360);
        v_position = targetposition + (n_radius * cos(n_angle), n_radius * sin(n_angle), 0);
        var_86f8b2c9 = (0, 0, getheliheightlockheight(v_position));
        a_trace = groundtrace(v_position + var_86f8b2c9, v_position - var_86f8b2c9, 1, undefined);
        var_5acfe25f = a_trace[#"position"];
        self thread function_83e61117(var_5acfe25f, n_yaw);
    }
    n_length = scene::function_12479eba(#"p9_fxanim_mp_planemortar_01_bundle");
    wait(n_length + 0.5);
    self notify("planemortar_complete" + var_5b276012);
}

// Namespace planemortar/planemortar
// Params 10, eflags: 0x6 linked
// Checksum 0xca6f8b6b, Offset: 0x1138
// Size: 0x8c
function private function_5e7e3e86(*einflictor, eattacker, *idamage, *idflags, *smeansofdeath, weapon, *vpoint, *vdir, *shitloc, *psoffsettime) {
    if (shitloc === self && psoffsettime == getweapon("planemortar")) {
        return 50;
    }
    return -1;
}

