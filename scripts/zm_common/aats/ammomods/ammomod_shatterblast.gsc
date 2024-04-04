// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using script_62caa307a394c18c;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\ai\systems\destructible_character.gsc;
#using script_2c5daa95f8fec03c;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\aat_shared.gsc;

#namespace ammomod_shatterblast;

// Namespace ammomod_shatterblast/ammomod_shatterblast
// Params 0, eflags: 0x2 linked
// Checksum 0xbb5042f2, Offset: 0x390
// Size: 0x304
function init_shatterblast() {
    if (!is_true(level.aat_in_use)) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_2537d92585f4fce2"))) {
        level.var_1f737c8b = 1;
    }
    aat::register("ammomod_shatterblast", 0.33, 0, 25, 3, 1, &result, "t7_hud_zm_aat_turned", "wpn_aat_turned_plr", undefined, #"explosive", undefined, #"hash_72956c8c7153f157");
    aat::register("ammomod_shatterblast_1", 0.33, 0, 25, 3, 1, &result, "t7_hud_zm_aat_turned", "wpn_aat_turned_plr", undefined, #"explosive", undefined, #"hash_72956c8c7153f157");
    aat::register("ammomod_shatterblast_2", 0.33, 0, 25, 3, 1, &result, "t7_hud_zm_aat_turned", "wpn_aat_turned_plr", undefined, #"explosive", undefined, #"hash_72956c8c7153f157");
    aat::register("ammomod_shatterblast_3", 0.33, 0, 25, 3, 1, &result, "t7_hud_zm_aat_turned", "wpn_aat_turned_plr", undefined, #"explosive", undefined, #"hash_72956c8c7153f157");
    aat::register("ammomod_shatterblast_4", 0.33, 0, 25, 3, 1, &result, "t7_hud_zm_aat_turned", "wpn_aat_turned_plr", undefined, #"explosive", undefined, #"hash_72956c8c7153f157");
    aat::register("ammomod_shatterblast_5", 0.33, 0, 25, 3, 1, &result, "t7_hud_zm_aat_turned", "wpn_aat_turned_plr", undefined, #"explosive", undefined, #"hash_72956c8c7153f157");
    clientfield::register("toplayer", "ammomod_shatterblast_proc", 6000, 1, "counter");
}

// Namespace ammomod_shatterblast/ammomod_shatterblast
// Params 1, eflags: 0x6 linked
// Checksum 0xdd2fa336, Offset: 0x6a0
// Size: 0xdc
function private function_93e5316a(aat_name = "ammomod_shatterblast") {
    switch (aat_name) {
    case #"ammomod_shatterblast":
    default:
        return 0;
    case #"ammomod_shatterblast_1":
        return 1;
    case #"ammomod_shatterblast_2":
        return 2;
    case #"ammomod_shatterblast_3":
        return 3;
    case #"ammomod_shatterblast_4":
        return 4;
    case #"ammomod_shatterblast_5":
        return 5;
    }
    return 0;
}

// Namespace ammomod_shatterblast/ammomod_shatterblast
// Params 8, eflags: 0x2 linked
// Checksum 0xf86f489, Offset: 0x788
// Size: 0x1dc
function result(*death, attacker, *mod, weapon, *var_fd90b0bb, vpoint, shitloc = self.origin, *boneindex) {
    waitframe(1);
    if (is_true(level.var_1f737c8b)) {
        return;
    }
    if (!isactor(self) && !isvehicle(self)) {
        return;
    }
    if (!isplayer(var_fd90b0bb)) {
        return;
    }
    if (self.var_6f84b820 === #"boss") {
        return;
    }
    aat_name = var_fd90b0bb aat::getaatonweapon(vpoint, 1);
    tier = function_93e5316a(aat_name);
    var_fd90b0bb clientfield::increment_to_player("ammomod_shatterblast_proc", 1);
    playfx("zm_weapons/fx9_aat_bul_impact_explosive", shitloc);
    var_fd90b0bb zm_utility::function_5d356609(aat_name, tier);
    self function_ddd30474(var_fd90b0bb, vpoint, shitloc, boneindex, tier);
    if (tier >= 5 && function_9465e5f8(var_fd90b0bb)) {
        level thread function_eb81be7e(var_fd90b0bb, vpoint, boneindex, shitloc);
    }
}

// Namespace ammomod_shatterblast/ammomod_shatterblast
// Params 1, eflags: 0x2 linked
// Checksum 0xbdaae7de, Offset: 0x970
// Size: 0xea
function function_2f3ba0ef(center) {
    angle = randomint(360);
    x_pos = center[0] + 64 * cos(angle);
    y_pos = center[1] + 64 * sin(angle);
    z_pos = center[2] + randomintrange(64 * -1, 64);
    var_f84680ae = (x_pos, y_pos, z_pos);
    return var_f84680ae;
}

// Namespace ammomod_shatterblast/ammomod_shatterblast
// Params 4, eflags: 0x2 linked
// Checksum 0xfb1e637e, Offset: 0xa68
// Size: 0x322
function function_eb81be7e(attacker, weapon, shitloc, vpoint) {
    level endon(#"game_ended");
    if (isplayer(attacker)) {
        attacker.aat_cooldown_start[#"hash_79b39f3766407263"] = float(gettime()) / 1000;
    }
    attacker endon(#"disconnected");
    var_624e473c = function_2f3ba0ef(vpoint);
    var_6f76e171 = function_2f3ba0ef(vpoint);
    var_623746f2 = function_2f3ba0ef(vpoint);
    var_ae78e48a = spawn("script_model", vpoint);
    var_3c3a800f = spawn("script_model", vpoint);
    var_5309adad = spawn("script_model", vpoint);
    var_ae78e48a setmodel("tag_origin");
    var_3c3a800f setmodel("tag_origin");
    var_5309adad setmodel("tag_origin");
    playfxontag("zm_weapons/fx9_aat_shatterblast_lvl5_aoe_trail", var_ae78e48a, "tag_origin");
    playfxontag("zm_weapons/fx9_aat_shatterblast_lvl5_aoe_trail", var_3c3a800f, "tag_origin");
    playfxontag("zm_weapons/fx9_aat_shatterblast_lvl5_aoe_trail", var_5309adad, "tag_origin");
    time1 = randomfloatrange(0.4, 0.7);
    time2 = randomfloatrange(0.4, 0.7);
    var_846e9d0 = randomfloatrange(0.4, 0.7);
    var_ae78e48a thread function_a97aaed0(attacker, weapon, shitloc, var_624e473c);
    wait(time1);
    var_3c3a800f thread function_a97aaed0(attacker, weapon, shitloc, var_6f76e171);
    wait(time2);
    var_5309adad thread function_a97aaed0(attacker, weapon, shitloc, var_623746f2);
    wait(var_846e9d0);
}

// Namespace ammomod_shatterblast/ammomod_shatterblast
// Params 4, eflags: 0x2 linked
// Checksum 0xc09e8103, Offset: 0xd98
// Size: 0xb4
function function_a97aaed0(attacker, weapon, shitloc, point) {
    self endon(#"death");
    self moveto(point, 0.2);
    self waittill(#"movedone");
    level thread function_aa443b97(attacker, weapon, shitloc, point, 5, 1);
    self deletedelay();
}

// Namespace ammomod_shatterblast/ammomod_shatterblast
// Params 3, eflags: 0x2 linked
// Checksum 0x442dc629, Offset: 0xe58
// Size: 0xe0
function function_cbd0f7ea(attacker, damage, weapon) {
    var_e67ec32 = namespace_81245006::function_fab3ee3e(self);
    if (isarray(var_e67ec32)) {
        foreach (var_7092cd34 in var_e67ec32) {
            self function_945cac2d(damage, attacker, weapon, undefined, var_7092cd34);
        }
    }
}

// Namespace ammomod_shatterblast/ammomod_shatterblast
// Params 5, eflags: 0x2 linked
// Checksum 0x6107cf69, Offset: 0xf40
// Size: 0x27c
function function_945cac2d(damage, attacker, weapon, shitloc, var_84ed9a13) {
    self namespace_42457a0::function_601fabe9(#"explosive", damage, self.origin, attacker, undefined, "none", "MOD_AAT", 0, weapon);
    if (!isdefined(var_84ed9a13)) {
        var_84ed9a13 = namespace_81245006::function_3131f5dd(self, shitloc, 1);
    }
    if (isdefined(var_84ed9a13) && is_true(var_84ed9a13.var_b98c4585)) {
        if (namespace_81245006::function_f29756fe(var_84ed9a13) == 1 && var_84ed9a13.type == #"armor" && var_84ed9a13.health > 0) {
            namespace_81245006::function_ef87b7e8(var_84ed9a13, var_84ed9a13.health);
        }
        if (namespace_81245006::function_f29756fe(var_84ed9a13) === 3 && isdefined(var_84ed9a13.var_f371ebb0)) {
            destructserverutils::function_8475c53a(self, var_84ed9a13.var_f371ebb0);
            if (isplayer(attacker)) {
                attacker zm_stats::increment_challenge_stat(#"hash_2805701e53ce32a1");
                attacker zm_stats::increment_challenge_stat(#"hash_2a8df2f4c20fc21a");
                attacker stats::function_dad108fa(#"hash_20ef0c16d41d9cd2", 1);
                level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:attacker, #scoreevent:"destroyed_armor_zm"});
            }
        }
        if (var_84ed9a13.var_f371ebb0 === "body_armor") {
            callback::callback(#"hash_7d67d0e9046494fb");
        }
    }
}

// Namespace ammomod_shatterblast/ammomod_shatterblast
// Params 6, eflags: 0x2 linked
// Checksum 0xf2223598, Offset: 0x11c8
// Size: 0x458
function function_aa443b97(attacker, weapon, *shitloc, vpoint, tier, extra = 0) {
    playrumbleonposition("grenade_rumble", vpoint);
    range = 64;
    if (!extra) {
        if (tier >= 4) {
            playfx("zm_weapons/fx9_aat_shatterblast_lvl4_exp", vpoint);
            range = 128;
        } else {
            playfx("zm_weapons/fx9_aat_shatterblast_lvl1_exp", vpoint);
        }
    } else {
        playfx("zm_weapons/fx9_aat_shatterblast_lvl5_aoe_exp_single", vpoint);
    }
    a_potential_targets = getentitiesinradius(vpoint, range, 15);
    foreach (zombie in a_potential_targets) {
        if (!isalive(zombie)) {
            continue;
        }
        damage = 50;
        if (zm_utility::is_survival()) {
            damage = zm_equipment::function_739fbb72(damage, undefined, zombie.var_6f84b820, zombie.maxhealth);
        } else {
            damage = zm_equipment::function_379f6b5d(damage, undefined, zombie.var_6f84b820, zombie.maxhealth);
        }
        if (damage >= zombie.health) {
            zombie.var_531d35d4 = 1;
        }
        if (tier >= 2) {
            if (zombie.var_6f84b820 === #"normal") {
                zombie function_cbd0f7ea(weapon, damage, shitloc);
                var_6e1f497c = 1;
            }
        }
        if (!is_true(var_6e1f497c)) {
            zombie namespace_42457a0::function_601fabe9(#"explosive", damage, zombie.origin, weapon, undefined, "none", "MOD_AAT", 0, shitloc);
        }
        if (isalive(zombie)) {
            if (tier >= 3) {
                if (zombie.var_6f84b820 === #"normal") {
                    zombie zombie_utility::setup_zombie_knockdown(vpoint);
                }
            }
        } else if (zombie.var_6f84b820 === #"normal") {
            v_curr_zombie_origin = zombie getcentroid();
            n_random_x = randomfloatrange(-3, 3);
            n_random_y = randomfloatrange(-3, 3);
            zombie zm_utility::start_ragdoll(1);
            zombie launchragdoll(60 * vectornormalize(v_curr_zombie_origin - vpoint + (n_random_x, n_random_y, 10)), "torso_lower");
        }
        util::wait_network_frame();
    }
}

// Namespace ammomod_shatterblast/ammomod_shatterblast
// Params 5, eflags: 0x2 linked
// Checksum 0x487bce9e, Offset: 0x1628
// Size: 0x144
function function_ddd30474(attacker, weapon, vpoint, shitloc, tier) {
    playrumbleonposition("grenade_rumble", vpoint);
    if (tier >= 1) {
        level thread function_aa443b97(attacker, weapon, shitloc, vpoint, tier);
    } else {
        playfx("zm_weapons/fx9_aat_shatterblast_lvl0_exp", vpoint);
    }
    if (isalive(self)) {
        damage = 50;
        if (zm_utility::is_survival()) {
            damage = zm_equipment::function_739fbb72(damage);
        } else {
            damage = zm_equipment::function_379f6b5d(damage);
        }
        if (damage >= self.health) {
            self.var_531d35d4 = 1;
        }
        self function_945cac2d(damage, attacker, weapon, shitloc);
    }
}

// Namespace ammomod_shatterblast/ammomod_shatterblast
// Params 1, eflags: 0x6 linked
// Checksum 0x6168e75, Offset: 0x1778
// Size: 0xc2
function private function_9465e5f8(attacker) {
    n_current_time = float(gettime()) / 1000;
    if (isplayer(attacker)) {
        if (!isdefined(attacker.aat_cooldown_start[#"hash_79b39f3766407263"])) {
            return true;
        } else if (isdefined(attacker.aat_cooldown_start[#"hash_79b39f3766407263"]) && n_current_time >= attacker.aat_cooldown_start[#"hash_79b39f3766407263"] + 30) {
            return true;
        }
    }
    return false;
}

