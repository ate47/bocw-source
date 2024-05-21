// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_melee_weapon.gsc;
#using scripts\zm_common\zm_blockers.gsc;
#using scripts\zm_common\zm.gsc;
#using scripts\core_common\ai\zombie_death.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_powerup_weapon_minigun;

// Namespace zm_powerup_weapon_minigun/zm_powerup_weapon_minigun
// Params 0, eflags: 0x5
// Checksum 0x84f24ce, Offset: 0x180
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_weapon_minigun", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_weapon_minigun/zm_powerup_weapon_minigun
// Params 0, eflags: 0x4
// Checksum 0xa5415754, Offset: 0x1c8
// Size: 0x174
function private preinit() {
    zm_powerups::register_powerup("minigun", &grab_minigun);
    zm_powerups::register_powerup_weapon("minigun", &minigun_countdown);
    zm_powerups::powerup_set_prevent_pick_up_if_drinking("minigun", 1);
    zm_powerups::set_weapon_ignore_max_ammo("minigun");
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("minigun", "zombie_pickup_minigun", #"zombie/powerup_minigun", &func_should_drop_minigun, 1, 0, 0, undefined, "powerup_mini_gun", "zombie_powerup_minigun_time", "zombie_powerup_minigun_on");
        level.zombie_powerup_weapon[#"minigun"] = getweapon(#"minigun");
    }
    callback::on_connect(&init_player_zombie_vars);
    zm::register_actor_damage_callback(&minigun_damage_adjust);
}

// Namespace zm_powerup_weapon_minigun/zm_powerup_weapon_minigun
// Params 1, eflags: 0x0
// Checksum 0x526c4f6c, Offset: 0x348
// Size: 0x6c
function grab_minigun(player) {
    level thread minigun_weapon_powerup(player);
    player thread zm_powerups::powerup_vo("minigun");
    if (isdefined(level._grab_minigun)) {
        level thread [[ level._grab_minigun ]](player);
    }
}

// Namespace zm_powerup_weapon_minigun/zm_powerup_weapon_minigun
// Params 0, eflags: 0x0
// Checksum 0x71cc8712, Offset: 0x3c0
// Size: 0x34
function init_player_zombie_vars() {
    self.zombie_vars[#"zombie_powerup_minigun_on"] = 0;
    self.zombie_vars[#"zombie_powerup_minigun_time"] = 0;
}

// Namespace zm_powerup_weapon_minigun/zm_powerup_weapon_minigun
// Params 0, eflags: 0x0
// Checksum 0x42f899d5, Offset: 0x400
// Size: 0x1e
function func_should_drop_minigun() {
    if (zm_powerups::minigun_no_drop()) {
        return false;
    }
    return true;
}

// Namespace zm_powerup_weapon_minigun/zm_powerup_weapon_minigun
// Params 2, eflags: 0x0
// Checksum 0x21a7efa3, Offset: 0x428
// Size: 0x23c
function minigun_weapon_powerup(ent_player, time) {
    ent_player endon(#"disconnect", #"death", #"player_downed");
    if (!isdefined(time)) {
        time = 30;
    }
    if (isdefined(level._minigun_time_override)) {
        time = level._minigun_time_override;
    }
    if (ent_player.zombie_vars[#"zombie_powerup_minigun_on"] && (level.zombie_powerup_weapon[#"minigun"] == ent_player getcurrentweapon() || isdefined(ent_player.has_powerup_weapon[#"minigun"]) && ent_player.has_powerup_weapon[#"minigun"])) {
        if (ent_player.zombie_vars[#"zombie_powerup_minigun_time"] < time) {
            ent_player.zombie_vars[#"zombie_powerup_minigun_time"] = time;
        }
        return;
    }
    level._zombie_minigun_powerup_last_stand_func = &minigun_powerup_last_stand;
    stance_disabled = 0;
    if (ent_player getstance() === "prone") {
        ent_player allowcrouch(0);
        ent_player allowprone(0);
        stance_disabled = 1;
        while (ent_player getstance() != "stand") {
            waitframe(1);
        }
    }
    zm_powerups::weapon_powerup(ent_player, time, "minigun", 1);
    if (stance_disabled) {
        ent_player allowcrouch(1);
        ent_player allowprone(1);
    }
}

// Namespace zm_powerup_weapon_minigun/zm_powerup_weapon_minigun
// Params 0, eflags: 0x0
// Checksum 0x293cf3c3, Offset: 0x670
// Size: 0x1c
function minigun_powerup_last_stand() {
    zm_powerups::weapon_watch_gunner_downed("minigun");
}

// Namespace zm_powerup_weapon_minigun/zm_powerup_weapon_minigun
// Params 2, eflags: 0x0
// Checksum 0xfd80bfe9, Offset: 0x698
// Size: 0x54
function minigun_countdown(ent_player, str_weapon_time) {
    while (ent_player.zombie_vars[str_weapon_time] > 0) {
        waitframe(1);
        ent_player.zombie_vars[str_weapon_time] = ent_player.zombie_vars[str_weapon_time] - 0.05;
    }
}

// Namespace zm_powerup_weapon_minigun/zm_powerup_weapon_minigun
// Params 0, eflags: 0x0
// Checksum 0x3ea6a969, Offset: 0x6f8
// Size: 0x1c
function minigun_weapon_powerup_off() {
    self.zombie_vars[#"zombie_powerup_minigun_time"] = 0;
}

// Namespace zm_powerup_weapon_minigun/zm_powerup_weapon_minigun
// Params 13, eflags: 0x0
// Checksum 0x9750da11, Offset: 0x720
// Size: 0x184
function minigun_damage_adjust(inflictor, attacker, damage, flags, meansofdeath, weapon, *var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype) {
    if (var_fd90b0bb.name != "minigun") {
        return -1;
    }
    if (self.archetype == #"zombie" || self.archetype == #"zombie_dog" || self.archetype == #"zombie_quad") {
        n_percent_damage = self.health * randomfloatrange(0.34, 0.75);
    }
    if (isdefined(level.minigun_damage_adjust_override)) {
        n_override_damage = thread [[ level.minigun_damage_adjust_override ]](attacker, damage, flags, meansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype);
        if (isdefined(n_override_damage)) {
            n_percent_damage = n_override_damage;
        }
    }
    if (isdefined(n_percent_damage)) {
        flags += n_percent_damage;
    }
    return flags;
}

