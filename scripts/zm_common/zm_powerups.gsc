// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\trials\zm_trial_headshots_only.gsc;
#using scripts\zm_common\trials\zm_trial_no_powerups.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_net.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_customgame.gsc;
#using scripts\zm_common\zm_contracts.gsc;
#using scripts\zm_common\zm_bgb.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\bb.gsc;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\potm_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\demo_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace zm_powerups;

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0xf872c0fd, Offset: 0x590
// Size: 0x5dc
function init() {
    zmsettings = zm_utility::function_10e38d86();
    zombie_utility::set_zombie_var(#"zombie_insta_kill", zmsettings.var_bb2f1a7c, 0, 1);
    zombie_utility::set_zombie_var(#"zombie_drop_item", zmsettings.var_bd48955e, 0);
    zombie_utility::set_zombie_var(#"zombie_timer_offset", zmsettings.var_3238aebf, 0);
    zombie_utility::set_zombie_var(#"zombie_timer_offset_interval", zmsettings.var_c2b35bc5, 0);
    zombie_utility::set_zombie_var(#"zombie_powerup_fire_sale_on", zmsettings.var_ca3c1d57, 0);
    zombie_utility::set_zombie_var(#"zombie_powerup_fire_sale_time", zmsettings.var_efb01ee5, 0);
    zombie_utility::set_zombie_var(#"zombie_powerup_bonfire_sale_on", zmsettings.var_b2f1a4e9, 0);
    zombie_utility::set_zombie_var(#"zombie_powerup_bonfire_sale_time", zmsettings.var_b0874dd1, 0);
    zombie_utility::set_zombie_var(#"zombie_powerup_insta_kill_on", zmsettings.var_1c4757c1, 0, 1);
    zombie_utility::set_zombie_var(#"zombie_powerup_insta_kill_time", zmsettings.var_f02d07a4, 0, 1);
    zombie_utility::set_zombie_var(#"zombie_powerup_double_points_on", zmsettings.var_f9a5cccc, 0, 1);
    zombie_utility::set_zombie_var(#"zombie_powerup_double_points_time", zmsettings.var_282fb094, 0, 1);
    if (zm_custom::function_901b751c(#"zmpowerupsislimitedround")) {
        zombie_utility::set_zombie_var(#"zombie_powerup_drop_max_per_round", zm_custom::function_901b751c(#"zmpowerupslimitround"), 0);
    } else {
        zombie_utility::set_zombie_var(#"zombie_powerup_drop_max_per_round", zmsettings.var_37f4ff3e, 0);
    }
    zombie_utility::set_zombie_var(#"hash_604cac237ec8cd3", zmsettings.var_d968651d, 0);
    zombie_utility::set_zombie_var(#"hash_8b7fc80184dc451", zmsettings.var_c2746a4a, 0);
    zombie_utility::set_zombie_var(#"hash_604cbc237ec8e86", zmsettings.var_167fdf43, 0);
    zombie_utility::set_zombie_var(#"hash_8b7f980184dbf38", zmsettings.var_a8bb36d8, 0);
    zombie_utility::set_zombie_var(#"hash_604ccc237ec9039", zmsettings.var_20daf3f9, 0);
    zombie_utility::set_zombie_var(#"hash_8b7fa80184dc0eb", zmsettings.var_5fe12525, 0);
    zombie_utility::set_zombie_var(#"hash_604cdc237ec91ec", zmsettings.var_59ffe642, 0);
    zombie_utility::set_zombie_var(#"hash_8b7ff80184dc96a", zmsettings.var_ae3f41e0, 0);
    zombie_utility::set_zombie_var(#"hash_604cec237ec939f", zmsettings.var_4447bad2, 0);
    zombie_utility::set_zombie_var(#"hash_8b80080184dcb1d", zmsettings.var_d9a798b0, 0);
    zombie_utility::set_zombie_var(#"hash_4d2cc817490bcca", zmsettings.var_1a3fd396, 0);
    zombie_utility::set_zombie_var(#"hash_4edd68174a79580", zmsettings.var_1e290818, 0);
    if (!isdefined(level.zombie_powerups)) {
        level.zombie_powerups = [];
    }
    level._effect[#"powerup_off"] = #"zombie/fx_powerup_off_green_zmb";
    init_powerups();
    if (!level.enable_magic || !is_true(zm_custom::function_901b751c(#"zmpowerupsactive"))) {
        return;
    }
    thread watch_for_drop();
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0xfab2f6ee, Offset: 0xb78
// Size: 0x27c
function init_powerups() {
    level flag::init("zombie_drop_powerups");
    if (is_true(level.enable_magic) && is_true(zm_custom::function_901b751c(#"zmpowerupsactive"))) {
        level flag::set("zombie_drop_powerups");
    }
    if (!isdefined(level.active_powerups)) {
        level.active_powerups = [];
    }
    add_zombie_powerup("insta_kill_ug", "zombie_skull", #"hash_1784640b956f2f85", &func_should_never_drop, 1, 0, 0, undefined, "powerup_instant_kill_ug", "zombie_powerup_insta_kill_ug_time", "zombie_powerup_insta_kill_ug_on", 1);
    if (isdefined(level.var_cacd8f96)) {
        [[ level.var_cacd8f96 ]]();
    }
    randomize_powerups();
    level.zombie_powerup_index = 0;
    randomize_powerups();
    level.rare_powerups_active = 0;
    level.zm_genesis_robot_pay_towardsreactswordstart = randomintrange(zombie_utility::get_zombie_var(#"hash_4d2cc817490bcca"), zombie_utility::get_zombie_var(#"hash_4edd68174a79580"));
    level.firesale_vox_firstime = 0;
    level thread powerup_hud_monitor();
    clientfield::register("scriptmover", "powerup_fx", 1, 3, "int");
    clientfield::register("scriptmover", "powerup_intro_fx", 1, 3, "int");
    clientfield::register("scriptmover", "powerup_grabbed_fx", 1, 3, "int");
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x0
// Checksum 0xdd1fb9f8, Offset: 0xe00
// Size: 0x3c
function set_weapon_ignore_max_ammo(weapon) {
    if (!isdefined(level.zombie_weapons_no_max_ammo)) {
        level.zombie_weapons_no_max_ammo = [];
    }
    level.zombie_weapons_no_max_ammo[weapon] = 1;
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x9d876230, Offset: 0xe48
// Size: 0x600
function powerup_hud_monitor() {
    level endon(#"end_game");
    level flag::wait_till("start_zombie_round_logic");
    if (is_true(level.var_64e71357)) {
        return;
    }
    flashing_timers = [];
    flashing_values = [];
    flashing_timer = 10;
    flashing_delta_time = 0;
    flashing_is_on = 0;
    flashing_value = 3;
    flashing_min_timer = 0.15;
    while (flashing_timer >= flashing_min_timer) {
        if (flashing_timer < 5) {
            flashing_delta_time = 0.1;
        } else {
            flashing_delta_time = 0.2;
        }
        if (flashing_is_on) {
            flashing_timer = flashing_timer - flashing_delta_time - 0.05;
            flashing_value = 2;
        } else {
            flashing_timer -= flashing_delta_time;
            flashing_value = 3;
        }
        flashing_timers[flashing_timers.size] = flashing_timer;
        flashing_values[flashing_values.size] = flashing_value;
        flashing_is_on = !flashing_is_on;
    }
    client_fields = [];
    powerup_keys = getarraykeys(level.zombie_powerups);
    for (powerup_key_index = 0; powerup_key_index < powerup_keys.size; powerup_key_index++) {
        if (isdefined(level.zombie_powerups[powerup_keys[powerup_key_index]].client_field_name)) {
            powerup_name = powerup_keys[powerup_key_index];
            client_fields[powerup_name] = spawnstruct();
            client_fields[powerup_name].client_field_name = level.zombie_powerups[powerup_name].client_field_name;
            client_fields[powerup_name].var_b79536ad = level.zombie_powerups[powerup_name].var_b79536ad;
            client_fields[powerup_name].only_affects_grabber = level.zombie_powerups[powerup_name].only_affects_grabber;
            client_fields[powerup_name].time_name = level.zombie_powerups[powerup_name].time_name;
            client_fields[powerup_name].on_name = level.zombie_powerups[powerup_name].on_name;
        }
    }
    client_field_keys = getarraykeys(client_fields);
    while (true) {
        waittillframeend();
        players = getplayers();
        var_eb020d2 = 0;
        for (playerindex = 0; playerindex < players.size; playerindex++) {
            player = players[playerindex];
            if (!isplayer(player)) {
                continue;
            }
            /#
                if (isbot(player)) {
                    continue;
                }
            #/
            if (player.team === #"spectator") {
                continue;
            }
            if (isdefined(level.var_209e0eb4)) {
                if (![[ level.var_209e0eb4 ]](player)) {
                    continue;
                }
            }
            for (client_field_key_index = 0; client_field_key_index < client_field_keys.size; client_field_key_index++) {
                client_field_name = client_fields[client_field_keys[client_field_key_index]].client_field_name;
                var_b79536ad = client_fields[client_field_keys[client_field_key_index]].var_b79536ad;
                time_name = client_fields[client_field_keys[client_field_key_index]].time_name;
                on_name = client_fields[client_field_keys[client_field_key_index]].on_name;
                powerup_timer = undefined;
                powerup_on = undefined;
                if (client_fields[client_field_keys[client_field_key_index]].only_affects_grabber && isdefined(player zombie_utility::get_zombie_var_player(time_name)) && isdefined(player zombie_utility::get_zombie_var_player(on_name))) {
                    powerup_timer = player.zombie_vars[time_name];
                    powerup_on = player.zombie_vars[on_name];
                } else if (isdefined(zombie_utility::get_zombie_var_team(time_name, player.team))) {
                    powerup_timer = zombie_utility::get_zombie_var_team(time_name, player.team);
                    powerup_on = zombie_utility::get_zombie_var_team(on_name, player.team);
                } else if (isdefined(zombie_utility::get_zombie_var(time_name))) {
                    powerup_timer = zombie_utility::get_zombie_var(time_name);
                    powerup_on = zombie_utility::get_zombie_var(on_name);
                }
                if (isdefined(powerup_timer) && isdefined(powerup_on)) {
                    var_eb020d2 |= powerup_on;
                    player set_clientfield_powerups(client_field_name, var_b79536ad, powerup_timer, powerup_on, flashing_timers, flashing_values);
                    continue;
                }
                player clientfield::set_player_uimodel(client_field_name, 0);
            }
            waitframe(1);
        }
        if (!var_eb020d2) {
            level waittill(#"hash_7a941ba8e576862e");
        }
    }
}

// Namespace zm_powerups/zm_powerups
// Params 6, eflags: 0x2 linked
// Checksum 0xb642c442, Offset: 0x1450
// Size: 0x16c
function set_clientfield_powerups(clientfield_name, var_b79536ad, powerup_timer, powerup_on, &flashing_timers, &flashing_values) {
    if (powerup_on && !is_true(self.var_9414a188)) {
        self clientfield::set_player_uimodel(var_b79536ad, int(ceil(powerup_timer)));
        if (powerup_timer < 10) {
            flashing_value = 3;
            for (i = flashing_timers.size - 1; i > 0; i--) {
                if (powerup_timer < flashing_timers[i]) {
                    flashing_value = flashing_values[i];
                    break;
                }
            }
            self clientfield::set_player_uimodel(clientfield_name, flashing_value);
        } else {
            self clientfield::set_player_uimodel(clientfield_name, 1);
        }
        return;
    }
    self clientfield::set_player_uimodel(clientfield_name, 0);
    self clientfield::set_player_uimodel(var_b79536ad, 0);
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x1945c63f, Offset: 0x15c8
// Size: 0x24
function randomize_powerups() {
    level.zombie_powerup_array = array::randomize(level.zombie_powerup_array);
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0xd48b746e, Offset: 0x15f8
// Size: 0x98
function get_next_powerup() {
    if (isdefined(level.var_ab5b85bf)) {
        powerup = level.var_ab5b85bf;
        level.var_ab5b85bf = undefined;
    } else {
        powerup = level.zombie_powerup_array[level.zombie_powerup_index];
        level.zombie_powerup_index++;
        if (level.zombie_powerup_index >= level.zombie_powerup_array.size) {
            level.zombie_powerup_index = 0;
            randomize_powerups();
        }
    }
    return powerup;
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x91cbe5d3, Offset: 0x1698
// Size: 0x122
function get_valid_powerup() {
    /#
        if (isdefined(level.zombie_devgui_power) && level.zombie_devgui_power == 1) {
            level.zombie_devgui_power = 0;
            return level.zombie_powerup_array[level.zombie_powerup_index];
        }
    #/
    if (isdefined(level.zombie_powerup_boss)) {
        i = level.zombie_powerup_boss;
        level.zombie_powerup_boss = undefined;
        return level.zombie_powerup_array[i];
    }
    if (isdefined(level.zombie_powerup_ape)) {
        str_powerup = level.zombie_powerup_ape;
        level.zombie_powerup_ape = undefined;
        return str_powerup;
    }
    while (true) {
        str_powerup = get_next_powerup();
        if (isdefined(level.zombie_powerups[str_powerup]) && [[ level.zombie_powerups[str_powerup].func_should_drop_with_regular_powerups ]]()) {
            return str_powerup;
        }
    }
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x9fe8ff4a, Offset: 0x17c8
// Size: 0xc4
function function_70bd1ec9() {
    if (!level.zombie_powerups.size) {
        return false;
    }
    foreach (str_powerup in level.zombie_powerup_array) {
        if (isdefined(level.zombie_powerups[str_powerup]) && [[ level.zombie_powerups[str_powerup].func_should_drop_with_regular_powerups ]]()) {
            return true;
        }
    }
    return false;
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x0
// Checksum 0x7c89d8fe, Offset: 0x1898
// Size: 0xda
function minigun_no_drop() {
    players = getplayers();
    for (i = 0; i < players.size; i++) {
        if (players[i].zombie_vars[#"zombie_powerup_minigun_on"] == 1) {
            return true;
        }
    }
    if (!level flag::get("power_on")) {
        if (level flag::get("solo_game")) {
            if (!isdefined(level.solo_lives_given) || level.solo_lives_given == 0) {
                return true;
            }
        } else {
            return true;
        }
    }
    return false;
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x5e3165d4, Offset: 0x1980
// Size: 0x168
function watch_for_drop() {
    level endon(#"end_game");
    level flag::wait_till("start_zombie_round_logic");
    if (!zm_utility::is_survival() && !zm_utility::function_c200446c()) {
        level flag::wait_till("begin_spawning");
    }
    waitframe(1);
    level.var_1dce56cc = function_2ff352cc();
    if (!isdefined(level.n_total_kills)) {
        level.n_total_kills = 0;
    }
    while (true) {
        level flag::wait_till("zombie_drop_powerups");
        if (level.n_total_kills >= level.var_1dce56cc) {
            level function_a7a5570e();
            level.var_1dce56cc = level.n_total_kills + function_2ff352cc();
            zombie_utility::set_zombie_var(#"zombie_drop_item", 1);
        }
        wait(0.5);
    }
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0xb7261ded, Offset: 0x1af0
// Size: 0x180
function function_2ff352cc() {
    a_e_players = getplayers();
    if (!isdefined(a_e_players) || !a_e_players.size) {
        n_players = 1;
    } else {
        n_players = a_e_players.size;
    }
    n_kill_count = randomintrangeinclusive(zombie_utility::get_zombie_var(#"hash_434b3261c607850" + n_players), zombie_utility::get_zombie_var(#"zombie_powerup_drop_max_" + n_players));
    if (zm_custom::function_901b751c(#"zmpowerupfrequency") === 0) {
        n_kill_count *= 2;
    } else if (zm_custom::function_901b751c(#"zmpowerupfrequency") === 2) {
        n_kill_count = floor(n_kill_count / 2);
    }
    if (zm_trial_no_powerups::is_active()) {
        n_kill_count /= zm_trial_no_powerups::function_2fc5f13();
    }
    if (n_kill_count < 1) {
        n_kill_count = 1;
    }
    return n_kill_count;
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x6 linked
// Checksum 0x8492411b, Offset: 0x1c78
// Size: 0x13c
function private function_a7a5570e() {
    for (i = 1; i <= 4; i++) {
        zombie_utility::set_zombie_var(#"hash_434b3261c607850" + i, int(min(990, zombie_utility::get_zombie_var(#"hash_434b3261c607850" + i) + 1)));
        zombie_utility::set_zombie_var(#"zombie_powerup_drop_max_" + i, int(min(999, zombie_utility::get_zombie_var(#"zombie_powerup_drop_max_" + i) + 1)));
    }
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0x465e1fae, Offset: 0x1dc0
// Size: 0x242
function zombie_can_drop_powerups(weapon) {
    if (zm_trial_no_powerups::is_active() && isdefined(weapon) && (is_true(weapon.isriotshield) || is_true(weapon.isheroweapon))) {
        return true;
    }
    if (zm_loadout::is_tactical_grenade(weapon) || !level flag::get("zombie_drop_powerups")) {
        return false;
    }
    if (is_true(level.no_powerups) || is_true(self.no_powerups) || isdefined(weapon) && is_true(weapon.isheroweapon)) {
        return false;
    }
    if (is_true(level.use_powerup_volumes)) {
        volumes = getentarray("no_powerups", "targetname");
        foreach (volume in volumes) {
            if (self istouching(volume)) {
                return false;
            }
        }
    }
    if (!zm_utility::is_survival() && !zm_utility::function_c200446c() && !self zm_utility::is_point_inside_enabled_zone(self.origin)) {
        return false;
    }
    return true;
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0x6ffaca84, Offset: 0x2010
// Size: 0x24c
function function_b753385f(weapon) {
    var_385d71c3 = 0;
    if (zombie_utility::get_zombie_var(#"zombie_drop_item")) {
        var_385d71c3 = 1;
        var_4e31704a = 1;
    } else if (isdefined(weapon) && weaponhasattachment(weapon, "suppressed") && math::cointoss(1)) {
        var_385d71c3 = 1;
        var_4e31704a = 0;
    }
    if (var_385d71c3 && self zombie_can_drop_powerups(weapon)) {
        if (is_true(self.in_the_ground)) {
            trace = bullettrace(self.origin + (0, 0, 100), self.origin + (0, 0, -100), 0, undefined);
        } else {
            trace = groundtrace(self.origin + (0, 0, 5), self.origin + (0, 0, -300), 0, undefined);
        }
        origin = trace[#"position"];
        hit_ent = trace[#"entity"];
        var_d13d4980 = undefined;
        if (isdefined(hit_ent) && hit_ent ismovingplatform()) {
            var_d13d4980 = spawn("script_model", origin + (0, 0, 40));
            var_d13d4980 linkto(hit_ent);
        }
        level thread powerup_drop(origin, var_d13d4980, var_4e31704a);
    }
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x0
// Checksum 0x6b7336e0, Offset: 0x2268
// Size: 0x44
function get_random_powerup_name() {
    powerup_keys = getarraykeys(level.zombie_powerups);
    powerup_keys = array::randomize(powerup_keys);
    return powerup_keys[0];
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x0
// Checksum 0x80d9c32c, Offset: 0x22b8
// Size: 0x8c
function get_regular_random_powerup_name() {
    powerup_keys = getarraykeys(level.zombie_powerups);
    powerup_keys = array::randomize(powerup_keys);
    for (i = 0; i < powerup_keys.size; i++) {
        if ([[ level.zombie_powerups[powerup_keys[i]].func_should_drop_with_regular_powerups ]]()) {
            return powerup_keys[i];
        }
    }
    return powerup_keys[0];
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x455f5e3b, Offset: 0x2350
// Size: 0x1c
function function_cc33adc8() {
    return util::get_game_type() != "zcleansed";
}

// Namespace zm_powerups/zm_powerups
// Params 13, eflags: 0x2 linked
// Checksum 0x34b64939, Offset: 0x2378
// Size: 0x58c
function add_zombie_powerup(powerup_name, model_name, hint, func_should_drop_with_regular_powerups, only_affects_grabber, any_team, zombie_grabbable, fx, client_field_name, time_name, on_name, clientfield_version = 1, player_specific = 0) {
    if (isdefined(level.zombie_include_powerups) && !is_true(level.zombie_include_powerups[powerup_name])) {
        return;
    }
    switch (powerup_name) {
    case #"small_ammo":
        str_rule = "";
        break;
    case #"full_ammo":
        str_rule = "zmPowerupMaxAmmo";
        break;
    case #"fire_sale":
        str_rule = "zmPowerupFireSale";
        break;
    case #"bonus_points_player_shared":
    case #"bonus_points_player":
    case #"bonus_points_team":
        str_rule = "zmPowerupChaosPoints";
        break;
    case #"free_perk":
        str_rule = "zmPowerupFreePerk";
        break;
    case #"nuke":
        str_rule = "zmPowerupNuke";
        break;
    case #"hero_weapon_power":
        str_rule = "zmPowerupSpecialWeapon";
        break;
    case #"insta_kill":
        str_rule = "zmPowerupInstakill";
        break;
    case #"double_points":
        str_rule = "zmPowerupDouble";
        break;
    case #"carpenter":
        str_rule = "zmPowerupCarpenter";
        break;
    case #"cranked_pause":
        str_rule = "zmPowerupCrankedPause";
        break;
    case #"shield_charge":
        str_rule = "";
        break;
    default:
        str_rule = "";
        break;
    }
    if (str_rule != "" && !is_true(zm_custom::function_901b751c(str_rule))) {
        return;
    }
    if (!isdefined(level.zombie_powerup_array)) {
        level.zombie_powerup_array = [];
    } else if (!isarray(level.zombie_powerup_array)) {
        level.zombie_powerup_array = array(level.zombie_powerup_array);
    }
    struct = spawnstruct();
    struct.powerup_name = powerup_name;
    struct.model_name = model_name;
    struct.weapon_classname = "script_model";
    struct.hint = hint;
    struct.func_should_drop_with_regular_powerups = func_should_drop_with_regular_powerups;
    struct.only_affects_grabber = only_affects_grabber;
    struct.any_team = any_team;
    struct.zombie_grabbable = zombie_grabbable;
    struct.hash_id = stathash(powerup_name);
    struct.player_specific = player_specific;
    struct.can_pick_up_in_last_stand = 1;
    if (isdefined(fx)) {
        struct.fx = fx;
    }
    level.zombie_powerups[powerup_name] = struct;
    if (!isdefined(level.zombie_powerup_array)) {
        level.zombie_powerup_array = [];
    } else if (!isarray(level.zombie_powerup_array)) {
        level.zombie_powerup_array = array(level.zombie_powerup_array);
    }
    level.zombie_powerup_array[level.zombie_powerup_array.size] = powerup_name;
    add_zombie_special_drop(powerup_name);
    if (isdefined(client_field_name)) {
        var_4e6e65fa = "hudItems.zmPowerUps." + client_field_name + ".state";
        var_d75767cb = "hudItems.zmPowerUps." + client_field_name + ".timeRemaining";
        clientfield::register_clientuimodel(var_4e6e65fa, clientfield_version, 2, "int");
        clientfield::register_clientuimodel(var_d75767cb, clientfield_version, 8, "int");
        struct.client_field_name = var_4e6e65fa;
        struct.var_b79536ad = var_d75767cb;
        struct.time_name = time_name;
        struct.on_name = on_name;
    }
    if (isdefined(powerup_name) && powerup_name == #"full_ammo") {
        level.var_aebef29d = gettime() / 1000;
    }
}

// Namespace zm_powerups/zm_powerups
// Params 2, eflags: 0x0
// Checksum 0x755da8a9, Offset: 0x2910
// Size: 0x2e
function powerup_set_can_pick_up_in_last_stand(powerup_name, b_can_pick_up) {
    level.zombie_powerups[powerup_name].can_pick_up_in_last_stand = b_can_pick_up;
}

// Namespace zm_powerups/zm_powerups
// Params 2, eflags: 0x0
// Checksum 0xd57303b0, Offset: 0x2948
// Size: 0x2e
function powerup_set_prevent_pick_up_if_drinking(powerup_name, b_prevent_pick_up) {
    level._custom_powerups[powerup_name].prevent_pick_up_if_drinking = b_prevent_pick_up;
}

// Namespace zm_powerups/zm_powerups
// Params 2, eflags: 0x0
// Checksum 0x1cadd0f0, Offset: 0x2980
// Size: 0x3e
function powerup_set_player_specific(powerup_name, b_player_specific = 1) {
    level.zombie_powerups[powerup_name].player_specific = b_player_specific;
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x0
// Checksum 0x78df9a94, Offset: 0x29c8
// Size: 0x3c
function powerup_set_statless_powerup(powerup_name) {
    if (!isdefined(level.zombie_statless_powerups)) {
        level.zombie_statless_powerups = [];
    }
    level.zombie_statless_powerups[powerup_name] = 1;
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0x11f155fb, Offset: 0x2a10
// Size: 0x44
function add_zombie_special_drop(powerup_name) {
    if (!isdefined(level.zombie_special_drop_array)) {
        level.zombie_special_drop_array = [];
    }
    level.zombie_special_drop_array[level.zombie_special_drop_array.size] = powerup_name;
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0x3ffe790f, Offset: 0x2a60
// Size: 0x3c
function include_zombie_powerup(powerup_name) {
    if (!isdefined(level.zombie_include_powerups)) {
        level.zombie_include_powerups = [];
    }
    level.zombie_include_powerups[powerup_name] = 1;
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0xe7346624, Offset: 0x2aa8
// Size: 0x5a
function powerup_remove_from_regular_drops(powerup_name) {
    if (!isdefined(level.zombie_powerups) || !isdefined(level.zombie_powerups[powerup_name])) {
        return;
    }
    level.zombie_powerups[powerup_name].func_should_drop_with_regular_powerups = &func_should_never_drop;
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x0
// Checksum 0xff149343, Offset: 0x2b10
// Size: 0xaa
function function_74b8ec6b(powerup_name) {
    if (!isdefined(level.zombie_powerups) || !isdefined(level.zombie_powerups[powerup_name]) || isdefined(level.zombie_powerups[powerup_name].var_d92b8001)) {
        return;
    }
    level.zombie_powerups[powerup_name].var_d92b8001 = level.zombie_powerups[powerup_name].func_should_drop_with_regular_powerups;
    level.zombie_powerups[powerup_name].func_should_drop_with_regular_powerups = &func_should_never_drop;
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x0
// Checksum 0xdbfd489d, Offset: 0x2bc8
// Size: 0x9a
function function_41cedb05(powerup_name) {
    if (!isdefined(level.zombie_powerups) || !isdefined(level.zombie_powerups[powerup_name]) || !isdefined(level.zombie_powerups[powerup_name].var_d92b8001)) {
        return;
    }
    level.zombie_powerups[powerup_name].func_should_drop_with_regular_powerups = level.zombie_powerups[powerup_name].var_d92b8001;
    level.zombie_powerups[powerup_name].var_d92b8001 = undefined;
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x266f39dd, Offset: 0x2c70
// Size: 0x10
function powerup_round_start() {
    level.powerup_drop_count = 0;
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0x1c10e221, Offset: 0x2c88
// Size: 0x2c
function function_5326bd06(e_powerup) {
    if (isdefined(e_powerup)) {
        e_powerup delete();
    }
}

// Namespace zm_powerups/zm_powerups
// Params 4, eflags: 0x2 linked
// Checksum 0xf9c5877a, Offset: 0x2cc0
// Size: 0x480
function powerup_drop(drop_point, powerup, var_4e31704a, *var_efbe1684 = 1) {
    if (zm_custom::function_e1f04ede()) {
        function_5326bd06(var_4e31704a);
        return;
    }
    if (isdefined(level.var_7e3a9cf2)) {
        b_outcome = [[ level.var_7e3a9cf2 ]](powerup);
        if (is_true(b_outcome)) {
            return;
        }
    }
    if (!zm_utility::is_survival() && !zm_utility::function_c200446c() && level.powerup_drop_count >= zombie_utility::get_zombie_var(#"zombie_powerup_drop_max_per_round")) {
        println("helmet");
        function_5326bd06(var_4e31704a);
        return;
    }
    zombie_utility::set_zombie_var(#"zombie_drop_item", 0);
    level.powerup_drop_count++;
    if (!isdefined(var_4e31704a)) {
        var_4e31704a = zm_net::network_safe_spawn("powerup", 1, "script_model", powerup + (0, 0, 40));
    }
    var_4e31704a setmodel(#"tag_origin");
    if (!isdefined(level.zombie_include_powerups) || level.zombie_include_powerups.size == 0 || !function_70bd1ec9()) {
        function_5326bd06(var_4e31704a);
        level.powerup_drop_count--;
        zombie_utility::set_zombie_var(#"zombie_drop_item", 1);
        return;
    }
    valid_drop = 1;
    if (!zm_utility::is_survival() && !zm_utility::function_c200446c()) {
        valid_drop = function_37e79fb6(var_4e31704a);
    }
    if (var_efbe1684 && valid_drop && level.rare_powerups_active) {
        pos = (powerup[0], powerup[1], powerup[2] + 42);
        if (check_for_rare_drop_override(pos)) {
            valid_drop = 0;
        }
    }
    if (!valid_drop) {
        level.powerup_drop_count--;
        var_4e31704a delete();
        zombie_utility::set_zombie_var(#"zombie_drop_item", 1);
        return;
    }
    var_4e31704a powerup_setup(undefined, undefined, powerup);
    /#
        if (var_efbe1684) {
            str_debug = "<unknown string>";
        } else {
            str_debug = "<unknown string>";
        }
        print_powerup_drop(var_4e31704a.powerup_name, str_debug);
    #/
    bb::logpowerupevent(var_4e31704a, undefined, "_dropped");
    var_4e31704a thread powerup_timeout();
    var_4e31704a thread powerup_wobble();
    var_4e31704a util::delay(0.1, "powerup_timedout", &powerup_grab);
    var_4e31704a thread powerup_emp();
    level notify(#"powerup_dropped", {#powerup:var_4e31704a});
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0xa8aac66f, Offset: 0x3148
// Size: 0x22e
function function_37e79fb6(powerup) {
    if (zm_utility::function_21f4ac36() && !isdefined(level.var_a2a9b2de)) {
        level.var_a2a9b2de = getnodearray("player_region", "script_noteworthy");
    }
    if (zm_utility::function_c85ebbbc() && !isdefined(level.playable_area)) {
        level.playable_area = getentarray("player_volume", "script_noteworthy");
    }
    if (zm_ai_utility::function_54054394(powerup)) {
        return false;
    }
    if (isdefined(level.playable_area)) {
        var_12ed21a1 = function_72d3bca6(level.playable_area, powerup.origin, undefined, undefined, level.var_603981f1);
        foreach (area in var_12ed21a1) {
            if (powerup istouching(area)) {
                return true;
            }
        }
    }
    if (isdefined(level.var_a2a9b2de)) {
        if (isdefined(level.var_61afcb81)) {
            node = function_52c1730(powerup.origin, level.var_a2a9b2de, level.var_61afcb81);
        } else {
            node = function_52c1730(powerup.origin, level.var_a2a9b2de, 500);
        }
        if (isdefined(node)) {
            return true;
        }
    }
    return false;
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x2c163505, Offset: 0x3380
// Size: 0x244
function function_27437dae() {
    self endon(#"death", #"powerup_timedout", #"powerup_grabbed");
    if (!zm_utility::function_21f4ac36() || !isdefined(level.var_a2a9b2de)) {
        return;
    }
    wait(1);
    var_1a7af6f3 = arraysortclosest(level.var_a2a9b2de, self.origin);
    foreach (var_30d9be5a in var_1a7af6f3) {
        if (zm_zonemgr::zone_is_enabled(var_30d9be5a.targetname)) {
            nd_closest = var_30d9be5a;
            break;
        }
    }
    if (!isdefined(nd_closest)) {
        return;
    }
    var_f55f0704 = nd_closest.origin + (0, 0, 40);
    var_8a69f8c0 = distancesquared(var_f55f0704, self.origin);
    n_travel_time = mapfloat(100, 250000, 0.1, 3, var_8a69f8c0);
    if (n_travel_time <= 0.25 * 2) {
        n_accel = 0;
    } else {
        n_accel = 0.25;
    }
    self moveto(var_f55f0704, n_travel_time, n_accel, n_accel);
}

// Namespace zm_powerups/zm_powerups
// Params 10, eflags: 0x2 linked
// Checksum 0x576f1487, Offset: 0x35d0
// Size: 0x4ea
function specific_powerup_drop(var_5a63971, powerup_location, powerup_team, pickup_delay = 0.1, powerup_player, b_stay_forever, var_6f4cb533 = 0, var_a6d11a96, var_73b4ca3f = 1, var_45eaa114) {
    if (!var_6f4cb533 && zm_custom::function_e1f04ede() || !is_true(zm_custom::function_901b751c(#"zmpowerupsactive"))) {
        return;
    }
    if (isactor(self) && !level flag::get("zombie_drop_powerups")) {
        return;
    }
    if (isarray(var_5a63971)) {
        var_5a63971 = array::random(var_5a63971);
    }
    switch (var_5a63971) {
    case #"full_ammo":
        str_rule = "zmPowerupMaxAmmo";
        break;
    case #"fire_sale":
        str_rule = "zmPowerupFireSale";
        break;
    case #"bonus_points_player_shared":
    case #"bonus_points_player":
    case #"bonus_points_team":
        str_rule = "zmPowerupChaosPoints";
        break;
    case #"free_perk":
        str_rule = "zmPowerupFreePerk";
        break;
    case #"nuke":
        str_rule = "zmPowerupNuke";
        break;
    case #"hero_weapon_power":
        str_rule = "zmPowerupSpecialWeapon";
        break;
    case #"insta_kill":
        str_rule = "zmPowerupInstakill";
        break;
    case #"double_points":
        str_rule = "zmPowerupDouble";
        break;
    case #"carpenter":
        str_rule = "zmPowerupCarpenter";
        break;
    default:
        str_rule = "";
        break;
    }
    if (str_rule != "" && !is_true(zm_custom::function_901b751c(str_rule))) {
        return;
    }
    if (!var_73b4ca3f && isdefined(level.zombie_powerups[var_5a63971])) {
        if (![[ level.zombie_powerups[var_5a63971].func_should_drop_with_regular_powerups ]]()) {
            return;
        }
    }
    s_trace = physicstrace(powerup_location + (0, 0, 10), powerup_location + (0, 0, -100), (0, 0, 0), (0, 0, 0), undefined, 2 | 16);
    hit_ent = s_trace[#"entity"];
    if (isdefined(hit_ent) && hit_ent ismovingplatform()) {
        powerup = spawn("script_model", powerup_location + (0, 0, 40));
        powerup linkto(hit_ent);
    } else {
        powerup = zm_net::network_safe_spawn("powerup", 1, "script_model", powerup_location + (0, 0, 40));
    }
    powerup setmodel(#"tag_origin");
    powerup_location = powerup.origin;
    level notify(#"powerup_dropped", {#powerup:powerup});
    return powerup_init(powerup, var_5a63971, powerup_team, powerup_location, pickup_delay, powerup_player, b_stay_forever, var_a6d11a96, var_45eaa114);
}

// Namespace zm_powerups/zm_powerups
// Params 9, eflags: 0x2 linked
// Checksum 0x82cb33cf, Offset: 0x3ac8
// Size: 0x18a
function powerup_init(powerup, str_powerup, powerup_team, powerup_location, pickup_delay = 0.1, powerup_player, b_stay_forever, var_a6d11a96, var_45eaa114) {
    if (isdefined(powerup)) {
        powerup powerup_setup(str_powerup, powerup_team, powerup_location, powerup_player, undefined, var_a6d11a96);
        if (is_true(var_45eaa114) && !function_37e79fb6(powerup)) {
            powerup thread function_27437dae();
        }
        if (!is_true(b_stay_forever)) {
            powerup thread powerup_timeout();
        }
        powerup thread powerup_wobble();
        if (isdefined(pickup_delay) && pickup_delay < 0.1) {
            pickup_delay = 0.1;
        }
        powerup util::delay(pickup_delay, "powerup_timedout", &powerup_grab, powerup_team);
        powerup thread powerup_emp();
        return powerup;
    }
}

// Namespace zm_powerups/zm_powerups
// Params 4, eflags: 0x2 linked
// Checksum 0x606cd334, Offset: 0x3c60
// Size: 0x174
function function_14b7208c(str_powerup, *powerup_team, *powerup_location, *powerup_player) {
    var_ce95e926 = 60;
    var_f9f778c1 = 120;
    var_d2057007 = 6;
    if (powerup_player === "nuke") {
        name = string(randomint(2147483647));
        origin = self.origin;
        badplace_cylinder(name, 0, origin, var_ce95e926, var_f9f778c1, #"allies");
        while (isdefined(self)) {
            if (distance2dsquared(origin, self.origin) > sqr(var_d2057007)) {
                origin = self.origin;
                badplace_cylinder(name, 0, origin, var_ce95e926, var_f9f778c1, #"allies");
            }
            wait(1);
        }
        badplace_delete(name);
    }
}

// Namespace zm_powerups/zm_powerups
// Params 6, eflags: 0x2 linked
// Checksum 0x88bdd9f8, Offset: 0x3de0
// Size: 0x484
function powerup_setup(powerup_override, powerup_team, powerup_location, powerup_player, *shouldplaysound, var_a6d11a96) {
    powerup = undefined;
    if (!isdefined(powerup_team)) {
        powerup = get_valid_powerup();
    } else {
        powerup = powerup_team;
        if ("tesla" == powerup && tesla_powerup_active()) {
            powerup = "minigun";
        }
    }
    struct = level.zombie_powerups[powerup];
    if (isdefined(powerup_location)) {
        self.powerup_team = powerup_location;
    }
    if (isdefined(powerup_player)) {
        self.powerup_location = powerup_player;
    }
    if (isdefined(shouldplaysound)) {
        self.powerup_player = shouldplaysound;
    } else {
        assert(!is_true(struct.player_specific), "<unknown string>");
    }
    self.powerup_name = struct.powerup_name;
    self.hint = struct.hint;
    self.client_field_name = struct.client_field_name;
    self.only_affects_grabber = struct.only_affects_grabber;
    self.any_team = struct.any_team;
    self.zombie_grabbable = struct.zombie_grabbable;
    self.func_should_drop_with_regular_powerups = struct.func_should_drop_with_regular_powerups;
    if (isdefined(level._custom_powerups) && isdefined(level._custom_powerups[powerup]) && isdefined(level._custom_powerups[powerup].setup_powerup)) {
        self [[ level._custom_powerups[powerup].setup_powerup ]]();
    } else {
        self function_76678c8d(powerup_player, struct, var_a6d11a96);
    }
    if (powerup == "full_ammo") {
        level.zm_genesis_robot_pay_towardsreactswordstart = randomintrange(zombie_utility::get_zombie_var(#"hash_4d2cc817490bcca"), zombie_utility::get_zombie_var(#"hash_4edd68174a79580"));
    } else if (!isdefined(powerup_team)) {
        level.zm_genesis_robot_pay_towardsreactswordstart--;
    }
    demo::bookmark(#"zm_powerup_dropped", gettime(), undefined, undefined, 1);
    potm::bookmark(#"zm_powerup_dropped", gettime(), undefined, undefined, 1);
    if (isdefined(struct.fx)) {
        self.fx = struct.fx;
    }
    if (isdefined(struct.can_pick_up_in_last_stand)) {
        self.can_pick_up_in_last_stand = struct.can_pick_up_in_last_stand;
    }
    var_b9dc5e9 = isdefined(struct.var_184f74ef) ? struct.var_184f74ef : 0;
    if (!var_b9dc5e9) {
        if (isdefined(level.var_bec5bf67)) {
            var_b9dc5e9 = self [[ level.var_bec5bf67 ]](self.powerup_name);
        }
    }
    if (!is_true(var_b9dc5e9)) {
        if (isdefined(struct.var_6029fea3)) {
            self playsound(struct.var_6029fea3.var_64ae47e);
            self playloopsound(struct.var_6029fea3.var_9c464736);
        } else {
            self playsound(#"hash_52de50e5184d1c7");
            self playloopsound(#"hash_601ae32339098104");
        }
    }
    level.active_powerups[level.active_powerups.size] = self;
    self thread function_14b7208c(powerup, powerup_location, powerup_player, shouldplaysound);
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0xdb23b87a, Offset: 0x4270
// Size: 0x54
function powerup_zombie_grab_trigger_cleanup(trigger) {
    self waittill(#"powerup_timedout", #"powerup_grabbed", #"hacked");
    trigger delete();
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0xfffec628, Offset: 0x42d0
// Size: 0x392
function powerup_zombie_grab(powerup_team) {
    self endon(#"powerup_timedout", #"powerup_grabbed", #"hacked");
    zombie_grab_trigger = spawn("trigger_radius", self.origin - (0, 0, 40), (512 | 1) + 8, 32, 72);
    zombie_grab_trigger enablelinkto();
    zombie_grab_trigger linkto(self);
    zombie_grab_trigger setteamfortrigger(level.zombie_team);
    self thread powerup_zombie_grab_trigger_cleanup(zombie_grab_trigger);
    poi_dist = 300;
    if (isdefined(level._zombie_grabbable_poi_distance_override)) {
        poi_dist = level._zombie_grabbable_poi_distance_override;
    }
    zombie_grab_trigger zm_utility::create_zombie_point_of_interest(poi_dist, 2, 0, 1, undefined, undefined, powerup_team);
    while (isdefined(self)) {
        waitresult = zombie_grab_trigger waittill(#"trigger");
        who = waitresult.activator;
        if (isdefined(level.var_e387a39)) {
            if (!self [[ level.var_e387a39 ]](who)) {
                continue;
            }
        } else if (!isdefined(who) || !isai(who)) {
            continue;
        }
        self clientfield::set("powerup_grabbed_fx", 3);
        self stoploopsound();
        if (isdefined(level._custom_powerups) && isdefined(level._custom_powerups[self.powerup_name]) && isdefined(level._custom_powerups[self.powerup_name].grab_powerup)) {
            b_continue = self [[ level._custom_powerups[self.powerup_name].grab_powerup ]](who);
            if (is_true(b_continue)) {
                continue;
            }
        } else {
            if (isdefined(level._zombiemode_powerup_zombie_grab)) {
                level thread [[ level._zombiemode_powerup_zombie_grab ]](self);
            }
            if (isdefined(level._game_mode_powerup_zombie_grab)) {
                level thread [[ level._game_mode_powerup_zombie_grab ]](self, who);
            } else {
                println("<unknown string>");
            }
        }
        level thread zm_vo::function_8abe0568(self.powerup_name);
        wait(0.1);
        self thread powerup_delete_delayed();
        self notify(#"powerup_grabbed", {#e_grabber:who});
    }
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0x4bee64e5, Offset: 0x4670
// Size: 0xb9c
function powerup_grab(powerup_team) {
    if (isdefined(self) && self.zombie_grabbable) {
        self thread powerup_zombie_grab(powerup_team);
        return;
    }
    self endon(#"powerup_timedout", #"powerup_grabbed");
    if (isdefined(self.var_5c6f6051)) {
        range_squared = sqr(self.var_5c6f6051);
    } else {
        range_squared = 4096;
    }
    while (isdefined(self)) {
        if (isdefined(self.powerup_player)) {
            grabbers = [];
            grabbers[0] = self.powerup_player;
        } else if (isdefined(level.var_9671faed)) {
            grabbers = [[ level.var_9671faed ]]();
        } else {
            grabbers = getplayers();
        }
        for (i = 0; i < grabbers.size; i++) {
            grabber = grabbers[i];
            if (isalive(grabber.owner) && isplayer(grabber.owner)) {
                player = grabber.owner;
            } else if (isplayer(grabber)) {
                player = grabber;
            }
            if (!isdefined(self)) {
                break;
            }
            if (self.only_affects_grabber && !isdefined(player)) {
                continue;
            }
            if (player zm_utility::is_drinking() && isdefined(level._custom_powerups) && isdefined(level._custom_powerups[self.powerup_name]) && is_true(level._custom_powerups[self.powerup_name].prevent_pick_up_if_drinking)) {
                continue;
            }
            if ((self.powerup_name == "minigun" || self.powerup_name == "tesla" || self.powerup_name == "random_weapon" || self.powerup_name == "meat_stink") && (!isplayer(grabber) || player laststand::player_is_in_laststand() || player usebuttonpressed() && player zm_utility::in_revive_trigger() || player bgb::is_enabled(#"zm_bgb_disorderly_combat"))) {
                continue;
            }
            if (!is_true(self.can_pick_up_in_last_stand) && player laststand::player_is_in_laststand()) {
                continue;
            }
            ignore_range = 0;
            if (grabber.ignore_range_powerup === self) {
                grabber.ignore_range_powerup = undefined;
                ignore_range = 1;
            }
            if (isalive(grabber) && (distancesquared(grabber.origin, self.origin) < range_squared || ignore_range)) {
                if (isdefined(level.var_e387a39)) {
                    if (!self [[ level.var_e387a39 ]](player)) {
                        continue;
                    }
                }
                if (zm_trial_no_powerups::is_active()) {
                    var_57807cdc = [];
                    array::add(var_57807cdc, player, 0);
                    zm_trial::fail(#"hash_2619fd380423798b", var_57807cdc);
                    self thread powerup_delete_delayed();
                    self notify(#"powerup_grabbed", {#e_grabber:player});
                    return;
                }
                if (isdefined(level._custom_powerups) && isdefined(level._custom_powerups[self.powerup_name]) && isdefined(level._custom_powerups[self.powerup_name].grab_powerup)) {
                    b_continue = self [[ level._custom_powerups[self.powerup_name].grab_powerup ]](player);
                    if (is_true(b_continue)) {
                        continue;
                    }
                } else {
                    switch (self.powerup_name) {
                    case #"teller_withdrawl":
                        level thread teller_withdrawl(self, player);
                        break;
                    default:
                        if (isdefined(level._zombiemode_powerup_grab)) {
                            level thread [[ level._zombiemode_powerup_grab ]](self, player);
                        } else {
                            println("<unknown string>");
                        }
                        break;
                    }
                }
                demo::bookmark(#"zm_player_powerup_grabbed", gettime(), player);
                potm::bookmark(#"zm_player_powerup_grabbed", gettime(), player);
                bb::logpowerupevent(self, player, "_grabbed");
                if (isdefined(self.hash_id)) {
                    player recordmapevent(23, gettime(), grabber.origin, level.round_number, self.hash_id);
                }
                if (should_award_stat(self.powerup_name) && isplayer(player)) {
                    player zm_stats::increment_client_stat("drops");
                    player zm_stats::increment_player_stat("drops");
                    player zm_stats::function_8f10788e("boas_drops");
                    player zm_stats::increment_client_stat(self.powerup_name + "_pickedup");
                    player zm_stats::increment_player_stat(self.powerup_name + "_pickedup");
                    player zm_stats::increment_challenge_stat(#"survivalist_powerup");
                    player zm_stats::function_8f10788e("boas_" + self.powerup_name + "_pickedup");
                    player contracts::increment_zm_contract(#"contract_zm_powerups");
                    if (is_true(self.var_99498378)) {
                        player zm_stats::increment_challenge_stat(#"hash_2a1239190cd1bb23");
                    }
                    if (zm_utility::is_standard()) {
                        player zm_stats::increment_challenge_stat(#"hash_35ab7dfe675d26e9");
                        player zm_stats::function_c0c6ab19(#"rush_powerups");
                    }
                }
                if (isdefined(level.var_50b95271)) {
                    self thread [[ level.var_50b95271 ]]();
                } else {
                    var_f79dc259 = self function_d5b6ce91();
                    self clientfield::set("powerup_grabbed_fx", var_f79dc259);
                }
                if (is_true(self.stolen)) {
                    level notify(#"monkey_see_monkey_dont_achieved");
                }
                if (isdefined(self.grabbed_level_notify)) {
                    level notify(self.grabbed_level_notify);
                }
                var_3a786e29 = level.zombie_powerups[self.powerup_name];
                if (isdefined(var_3a786e29.var_6029fea3)) {
                    player playsound(var_3a786e29.var_6029fea3.var_721ec012);
                } else {
                    b_ignore = 0;
                    if (isdefined(level.var_bec5bf67)) {
                        b_ignore = self [[ level.var_bec5bf67 ]](self.powerup_name);
                    }
                    if (!b_ignore) {
                        player playsound(#"hash_9dbd105c3060c91");
                    }
                }
                self.claimed = 1;
                self.power_up_grab_player = player;
                wait(0.1);
                if (!isdefined(self)) {
                    break;
                }
                self stoploopsound();
                self hide();
                if (self.powerup_name != "fire_sale") {
                    if (isdefined(self.power_up_grab_player)) {
                        if (isdefined(level.powerup_intro_vox)) {
                            level thread [[ level.powerup_intro_vox ]](self);
                            return;
                        } else if (isdefined(level.powerup_vo_available)) {
                            can_say_vo = [[ level.powerup_vo_available ]]();
                            if (!can_say_vo) {
                                self thread powerup_delete_delayed();
                                self notify(#"powerup_grabbed", {#e_grabber:player});
                                return;
                            }
                        }
                    }
                }
                if (is_true(self.only_affects_grabber)) {
                    player thread zm_vo::function_8abe0568(self.powerup_name);
                } else {
                    level thread zm_vo::function_8abe0568(self.powerup_name);
                }
                self thread powerup_delete_delayed();
                self notify(#"powerup_grabbed", {#e_grabber:player});
            }
        }
        wait(0.1);
    }
}

// Namespace zm_powerups/zm_powerups
// Params 2, eflags: 0x2 linked
// Checksum 0xa502eb67, Offset: 0x5218
// Size: 0x112
function function_c1963295(var_4c20edd5, var_a6d11a96) {
    e_player = zm_utility::get_closest_player(var_4c20edd5);
    if (is_true(level.var_ec45f213) || is_true(var_a6d11a96)) {
        return 0.1;
    }
    if (!isdefined(e_player)) {
        return 1.5;
    }
    n_distance = distance(e_player.origin, var_4c20edd5);
    if (n_distance > 128) {
        return 0.1;
    } else if (n_distance < 8) {
        return 1.5;
    }
    n_delay = mapfloat(8, 128, 1.5, 0, n_distance);
    return n_delay;
}

// Namespace zm_powerups/zm_powerups
// Params 3, eflags: 0x2 linked
// Checksum 0x93cad7c1, Offset: 0x5338
// Size: 0xdc
function function_76678c8d(var_41c62074, s_powerup, var_a6d11a96) {
    self endon(#"powerup_grabbed");
    if (isdefined(level.powerup_intro_fx_func)) {
        self thread [[ level.powerup_intro_fx_func ]]();
    } else {
        var_f79dc259 = self function_d5b6ce91();
        self clientfield::set("powerup_intro_fx", var_f79dc259);
    }
    var_e886efeb = function_c1963295(var_41c62074, var_a6d11a96);
    wait(var_e886efeb);
    self setmodel(s_powerup.model_name);
}

// Namespace zm_powerups/zm_powerups
// Params 2, eflags: 0x0
// Checksum 0xdb1c28ea, Offset: 0x5420
// Size: 0x10a
function get_closest_window_repair(windows, origin) {
    current_window = undefined;
    shortest_distance = undefined;
    for (i = 0; i < windows.size; i++) {
        if (zm_utility::all_chunks_intact(windows, windows[i].barrier_chunks)) {
            continue;
        }
        if (!isdefined(current_window)) {
            current_window = windows[i];
            shortest_distance = distancesquared(current_window.origin, origin);
            continue;
        }
        if (distancesquared(windows[i].origin, origin) < shortest_distance) {
            current_window = windows[i];
            shortest_distance = distancesquared(windows[i].origin, origin);
        }
    }
    return current_window;
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0xfdf7aef6, Offset: 0x5538
// Size: 0x10c
function powerup_vo(type) {
    self endon(#"disconnect");
    if (!isplayer(self)) {
        return;
    }
    if (isdefined(level.powerup_vo_available)) {
        if (![[ level.powerup_vo_available ]]()) {
            return;
        }
    }
    if (type == "tesla") {
        wait(randomfloatrange(3.5, 4.5));
        self zm_audio::create_and_play_dialog(#"weapon_pickup", type);
    } else {
        wait(0.5);
        self zm_audio::create_and_play_dialog(#"powerup", type, undefined, 2);
    }
    if (isdefined(level.custom_powerup_vo_response)) {
        level [[ level.custom_powerup_vo_response ]](self, type);
    }
}

// Namespace zm_powerups/zm_powerups
// Params 2, eflags: 0x0
// Checksum 0xe6ffb602, Offset: 0x5650
// Size: 0x52
function function_f0eb47d8(var_f0de9b92, b_disable = 1) {
    if (isdefined(level.zombie_powerups[var_f0de9b92])) {
        level.zombie_powerups[var_f0de9b92].var_cad40b46 = b_disable;
    }
}

// Namespace zm_powerups/zm_powerups
// Params 2, eflags: 0x0
// Checksum 0xae44cd9, Offset: 0x56b0
// Size: 0x52
function function_80b4c5e0(var_f0de9b92, b_disable = 1) {
    if (isdefined(level.zombie_powerups[var_f0de9b92])) {
        level.zombie_powerups[var_f0de9b92].var_184f74ef = b_disable;
    }
}

// Namespace zm_powerups/zm_powerups
// Params 4, eflags: 0x2 linked
// Checksum 0x9a4fa30d, Offset: 0x5710
// Size: 0xfe
function function_59f7f2c6(var_f0de9b92, var_64ae47e = #"hash_52de50e5184d1c7", var_9c464736 = #"hash_601ae32339098104", var_721ec012 = #"hash_9dbd105c3060c91") {
    if (isdefined(level.zombie_powerups[var_f0de9b92])) {
        level.zombie_powerups[var_f0de9b92].var_6029fea3 = spawnstruct();
        level.zombie_powerups[var_f0de9b92].var_6029fea3.var_64ae47e = var_64ae47e;
        level.zombie_powerups[var_f0de9b92].var_6029fea3.var_9c464736 = var_9c464736;
        level.zombie_powerups[var_f0de9b92].var_6029fea3.var_721ec012 = var_721ec012;
    }
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x812ba283, Offset: 0x5818
// Size: 0x84
function powerup_wobble_fx() {
    self endon(#"death");
    if (!isdefined(self)) {
        return;
    }
    if (isdefined(level.powerup_fx_func)) {
        self thread [[ level.powerup_fx_func ]]();
        return;
    }
    var_f79dc259 = self function_d5b6ce91();
    self clientfield::set("powerup_fx", var_f79dc259);
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0xfa95e791, Offset: 0x58a8
// Size: 0x46
function function_d5b6ce91() {
    if (self.only_affects_grabber) {
        return 2;
    }
    if (self.any_team) {
        return 4;
    }
    if (self.zombie_grabbable) {
        return 3;
    }
    return 1;
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x591a7fe7, Offset: 0x58f8
// Size: 0x1f0
function powerup_wobble() {
    self endon(#"powerup_grabbed", #"powerup_timedout");
    if (isdefined(level.zombie_powerups[self.powerup_name]) && is_true(level.zombie_powerups[self.powerup_name].var_cad40b46)) {
        return;
    }
    self thread powerup_wobble_fx();
    while (isdefined(self)) {
        waittime = randomfloatrange(2.5, 5);
        yaw = randomint(360);
        if (yaw > 300) {
            yaw = 300;
        } else if (yaw < 60) {
            yaw = 60;
        }
        yaw = self.angles[1] + yaw;
        new_angles = (-60 + randomint(120), yaw, -45 + randomint(90));
        self rotateto(new_angles, waittime, waittime * 0.5, waittime * 0.5);
        if (isdefined(self.worldgundw)) {
            self.worldgundw rotateto(new_angles, waittime, waittime * 0.5, waittime * 0.5);
        }
        wait(randomfloat(waittime - 0.1));
    }
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x6aaab628, Offset: 0x5af0
// Size: 0x4c
function powerup_hide() {
    if (isdefined(self)) {
        self ghost();
        if (isdefined(self.worldgundw)) {
            self.worldgundw ghost();
        }
    }
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x8dc12272, Offset: 0x5b48
// Size: 0xd4
function powerup_show() {
    if (isdefined(self)) {
        self show();
        if (isdefined(self.worldgundw)) {
            self.worldgundw show();
        }
        if (isdefined(self.powerup_player)) {
            self setinvisibletoall();
            self setvisibletoplayer(self.powerup_player);
            if (isdefined(self.worldgundw)) {
                self.worldgundw setinvisibletoall();
                self.worldgundw setvisibletoplayer(self.powerup_player);
            }
        }
    }
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0xda368731, Offset: 0x5c28
// Size: 0x18c
function powerup_timeout() {
    if (isdefined(level._powerup_timeout_override) && !isdefined(self.powerup_team)) {
        self thread [[ level._powerup_timeout_override ]]();
        return;
    }
    self endon(#"powerup_grabbed", #"death", #"powerup_reset");
    self powerup_show();
    wait_time = 15;
    if (isdefined(level.var_977f68ea)) {
        time = [[ level.var_977f68ea ]](self);
        if (time == 0) {
            return;
        }
        wait_time = time;
    }
    if (bgb::is_team_enabled(#"zm_bgb_temporal_gift")) {
        wait_time += 30;
    }
    wait(wait_time);
    self hide_and_show(&powerup_hide, &powerup_show);
    self notify(#"powerup_timedout");
    bb::logpowerupevent(self, undefined, "_timedout");
    self powerup_delete();
}

// Namespace zm_powerups/zm_powerups
// Params 2, eflags: 0x2 linked
// Checksum 0xf784c6d5, Offset: 0x5dc0
// Size: 0x9c
function hide_and_show(hide_func, show_func) {
    for (i = 0; i < 40; i++) {
        if (i % 2) {
            self [[ hide_func ]]();
        } else {
            self [[ show_func ]]();
        }
        if (i < 15) {
            wait(0.5);
            continue;
        }
        if (i < 25) {
            wait(0.25);
            continue;
        }
        wait(0.1);
    }
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0xea57cc04, Offset: 0x5e68
// Size: 0x6c
function powerup_delete() {
    if (isdefined(self)) {
        arrayremovevalue(level.active_powerups, self, 0);
        if (isdefined(self.worldgundw)) {
            self.worldgundw delete();
        }
        self delete();
    }
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0xf790063b, Offset: 0x5ee0
// Size: 0x3c
function powerup_delete_delayed(time) {
    if (isdefined(time)) {
        wait(time);
    } else {
        wait(0.01);
    }
    self powerup_delete();
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x4d9fa98d, Offset: 0x5f28
// Size: 0xa
function function_bcfcc27e() {
    return "wpn_t9_zm_perk_can_powerup";
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x23d4f81d, Offset: 0x5f40
// Size: 0xa0
function is_insta_kill_active() {
    if (is_true(zombie_utility::get_zombie_var_team(#"zombie_insta_kill", self.team)) || is_true(self zombie_utility::get_zombie_var_player(#"zombie_insta_kill")) || is_true(self.personal_instakill)) {
        return true;
    }
    return false;
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x8c6479b9, Offset: 0x5fe8
// Size: 0x80
function function_a4e210c7() {
    if (is_true(zombie_utility::get_zombie_var_team(#"zombie_powerup_double_points_on", self.team)) || is_true(self zombie_utility::get_zombie_var_team(#"zombie_powerup_double_points_on"))) {
        return true;
    }
    return false;
}

// Namespace zm_powerups/zm_powerups
// Params 5, eflags: 0x2 linked
// Checksum 0x7a56487c, Offset: 0x6070
// Size: 0x340
function function_fe6d6eac(player, mod, hit_location, weapon, damage) {
    if (!("head" == hit_location || "helmet" == hit_location || "neck" == hit_location) && (is_true(level.headshots_only) || zm_trial_headshots_only::is_active())) {
        return damage;
    }
    switch (weapon.statname) {
    case #"eq_slow_grenade":
        return damage;
    }
    if (isdefined(player) && isalive(player) && isdefined(level.check_for_instakill_override)) {
        if (!self [[ level.check_for_instakill_override ]](player)) {
            return damage;
        }
        if (!is_true(self.no_gib)) {
            self zombie_utility::zombie_head_gib();
        }
        self.health = 1;
        return (self.health + self.maxhealth);
    }
    if (isdefined(player) && isalive(player) && player is_insta_kill_active()) {
        if (self.var_6f84b820 === #"special") {
            damage *= 5;
        } else if (self.var_6f84b820 === #"elite") {
            damage *= 2.5;
        } else if (self.var_6f84b820 === #"boss") {
            damage *= 1.2;
        }
        if (zm_utility::is_magic_bullet_shield_enabled(self)) {
            return damage;
        }
        if (isdefined(self.instakill_func)) {
            b_result = self [[ self.instakill_func ]](player, mod, hit_location);
            if (is_true(b_result)) {
                return damage;
            }
        }
        if (!level flag::get("special_round") && !is_true(self.no_gib)) {
            self zombie_utility::zombie_head_gib();
        }
        if (self.var_6f84b820 === #"normal") {
            self.health = 1;
            return (self.health + self.maxhealth);
        } else {
            return damage;
        }
    }
    return damage;
}

// Namespace zm_powerups/zm_powerups
// Params 3, eflags: 0x2 linked
// Checksum 0xe0db1044, Offset: 0x63b8
// Size: 0x20
function function_16c2586a(*player, *mod, *shitloc) {
    return true;
}

// Namespace zm_powerups/zm_powerups
// Params 2, eflags: 0x0
// Checksum 0xf1bf5ac3, Offset: 0x63e0
// Size: 0xb4
function point_doubler_on_hud(*drop_item, player_team) {
    self endon(#"disconnect");
    if (zombie_utility::get_zombie_var_team(#"zombie_powerup_double_points_on", player_team)) {
        zombie_utility::set_zombie_var_team(#"zombie_powerup_double_points_time", player_team, 30);
        return;
    }
    zombie_utility::set_zombie_var_team(#"zombie_powerup_double_points_on", player_team, 1);
    level thread time_remaining_on_point_doubler_powerup(player_team);
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0x688495da, Offset: 0x64a0
// Size: 0x1b4
function time_remaining_on_point_doubler_powerup(player_team) {
    temp_ent = spawn("script_origin", (0, 0, 0));
    temp_ent playloopsound(#"zmb_double_point_loop");
    while (zombie_utility::get_zombie_var_team(#"zombie_powerup_double_points_time", player_team) >= 0) {
        waitframe(1);
        zombie_utility::set_zombie_var_team(#"zombie_powerup_double_points_time", player_team, zombie_utility::get_zombie_var_team(#"zombie_powerup_double_points_time", player_team) - 0.05);
    }
    zombie_utility::set_zombie_var_team(#"zombie_powerup_double_points_on", player_team, 0);
    players = getplayers(player_team);
    for (i = 0; i < players.size; i++) {
        players[i] playsound(#"zmb_points_loop_off");
    }
    temp_ent stoploopsound(2);
    zombie_utility::set_zombie_var_team(#"zombie_powerup_double_points_time", player_team, 30);
    temp_ent delete();
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x0
// Checksum 0x21a3e985, Offset: 0x6660
// Size: 0xc
function devil_dialog_delay() {
    wait(1);
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0x7831a50e, Offset: 0x6678
// Size: 0x34
function check_for_rare_drop_override(*pos) {
    if (level flag::get(#"ape_round")) {
        return false;
    }
    return false;
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x811cb743, Offset: 0x66b8
// Size: 0x64
function tesla_powerup_active() {
    players = getplayers();
    for (i = 0; i < players.size; i++) {
        if (players[i].zombie_vars[#"zombie_powerup_tesla_on"]) {
            return true;
        }
    }
    return false;
}

/#

    // Namespace zm_powerups/zm_powerups
    // Params 2, eflags: 0x0
    // Checksum 0x1cfe39dc, Offset: 0x6728
    // Size: 0x18c
    function print_powerup_drop(powerup, type) {
        if (!isdefined(level.powerup_drop_time)) {
            level.powerup_drop_time = 0;
            level.powerup_random_count = 0;
            level.var_27b063df = 0;
        }
        time = (gettime() - level.powerup_drop_time) * 0.001;
        level.powerup_drop_time = gettime();
        if (type == "<unknown string>") {
            level.powerup_random_count++;
        } else {
            level.var_27b063df++;
        }
        println("<unknown string>");
        println("<unknown string>" + powerup);
        println("<unknown string>" + type);
        println("<unknown string>");
        println("<unknown string>" + time);
        println("<unknown string>");
        println("<unknown string>" + level.var_27b063df);
        println("<unknown string>");
    }

#/

// Namespace zm_powerups/zm_powerups
// Params 2, eflags: 0x0
// Checksum 0xb10d42d, Offset: 0x68c0
// Size: 0x58
function register_carpenter_node(node, callback) {
    if (!isdefined(level._additional_carpenter_nodes)) {
        level._additional_carpenter_nodes = [];
    }
    node._post_carpenter_callback = callback;
    level._additional_carpenter_nodes[level._additional_carpenter_nodes.size] = node;
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0xc22bad5b, Offset: 0x6920
// Size: 0x6
function func_should_never_drop() {
    return false;
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0xd4c7c3d2, Offset: 0x6930
// Size: 0x8
function func_should_always_drop() {
    return true;
}

// Namespace zm_powerups/zm_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0x73b6798c, Offset: 0x6940
// Size: 0x102
function powerup_emp() {
    self endon(#"powerup_timedout", #"powerup_grabbed");
    if (!zm_utility::should_watch_for_emp()) {
        return;
    }
    while (true) {
        waitresult = level waittill(#"emp_detonate");
        if (distancesquared(waitresult.position, self.origin) < waitresult.radius * waitresult.radius) {
            playfx(level._effect[#"powerup_off"], self.origin);
            self thread powerup_delete_delayed();
            self notify(#"powerup_timedout");
        }
    }
}

// Namespace zm_powerups/zm_powerups
// Params 2, eflags: 0x2 linked
// Checksum 0x9142f7bb, Offset: 0x6a50
// Size: 0xea
function get_powerups(origin, radius) {
    if (isdefined(origin) && isdefined(radius)) {
        powerups = [];
        foreach (powerup in level.active_powerups) {
            if (distancesquared(origin, powerup.origin) < radius * radius) {
                powerups[powerups.size] = powerup;
            }
        }
        return powerups;
    }
    return level.active_powerups;
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0x416daa41, Offset: 0x6b48
// Size: 0xa6
function should_award_stat(powerup_name) {
    switch (powerup_name) {
    case #"blue_monkey":
    case #"bonus_points_player_shared":
    case #"teller_withdrawl":
    case #"small_ammo":
        return false;
    }
    if (isdefined(level.zombie_statless_powerups) && isdefined(level.zombie_statless_powerups[powerup_name]) && level.zombie_statless_powerups[powerup_name]) {
        return false;
    }
    return true;
}

// Namespace zm_powerups/zm_powerups
// Params 2, eflags: 0x2 linked
// Checksum 0xf72faade, Offset: 0x6bf8
// Size: 0x34
function teller_withdrawl(powerup, player) {
    player zm_score::add_to_player_score(powerup.value);
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0xa06aec8b, Offset: 0x6c38
// Size: 0x50
function function_cfd04802(str_powerup) {
    if (isdefined(level.zombie_powerups[str_powerup]) && is_true(level.zombie_powerups[str_powerup].only_affects_grabber)) {
        return true;
    }
    return false;
}

// Namespace zm_powerups/zm_powerups
// Params 2, eflags: 0x2 linked
// Checksum 0x339fb000, Offset: 0x6c90
// Size: 0x148
function function_5091b029(str_powerup, time = 30) {
    self endon(#"disconnect");
    str_index_on = "zombie_powerup_" + str_powerup + "_on";
    str_index_time = "zombie_powerup_" + str_powerup + "_time";
    self zombie_utility::set_zombie_var_player(str_index_time, time);
    if (self bgb::is_enabled(#"zm_bgb_temporal_gift")) {
        self zombie_utility::set_zombie_var_player(str_index_time, time * 2);
    }
    if (is_true(self zombie_utility::get_zombie_var_player(str_index_on))) {
        return;
    }
    self zombie_utility::set_zombie_var_player(str_index_on, 1);
    self thread function_de41121d(str_powerup, time);
    level notify(#"hash_7a941ba8e576862e");
}

// Namespace zm_powerups/zm_powerups
// Params 2, eflags: 0x2 linked
// Checksum 0x8570014e, Offset: 0x6de0
// Size: 0x15c
function function_de41121d(str_powerup, time = 30) {
    self endon(#"disconnect");
    str_index_on = "zombie_powerup_" + str_powerup + "_on";
    str_index_time = "zombie_powerup_" + str_powerup + "_time";
    str_sound_off = "zmb_powerup_" + str_powerup + "_timeout";
    while (zombie_utility::get_zombie_var_player(str_index_time) >= 0) {
        waitframe(1);
        self zombie_utility::set_zombie_var_player(str_index_time, zombie_utility::get_zombie_var_player(str_index_time) - float(function_60d95f53()) / 1000);
    }
    self zombie_utility::set_zombie_var_player(str_index_on, 0);
    self playsoundtoplayer(str_sound_off, self);
    zombie_utility::set_zombie_var_player(str_index_time, time);
}

// Namespace zm_powerups/zm_powerups
// Params 3, eflags: 0x2 linked
// Checksum 0x30a1129c, Offset: 0x6f48
// Size: 0x160
function show_on_hud(player_team, str_powerup, time = 30) {
    self endon(#"disconnect");
    str_index_on = "zombie_powerup_" + str_powerup + "_on";
    str_index_time = "zombie_powerup_" + str_powerup + "_time";
    if (zombie_utility::get_zombie_var_team(str_index_on, player_team)) {
        zombie_utility::set_zombie_var_team(str_index_time, player_team, time);
        if (bgb::is_team_enabled(#"zm_bgb_temporal_gift")) {
            zombie_utility::set_zombie_var_team(str_index_time, player_team, zombie_utility::get_zombie_var_team(str_index_time, player_team) + time);
        }
        return;
    }
    zombie_utility::set_zombie_var_team(str_index_on, player_team, 1);
    level thread time_remaining_on_powerup(player_team, str_powerup, time);
    level notify(#"hash_7a941ba8e576862e");
}

// Namespace zm_powerups/zm_powerups
// Params 3, eflags: 0x2 linked
// Checksum 0x6e08d833, Offset: 0x70b0
// Size: 0x1cc
function time_remaining_on_powerup(player_team, str_powerup, time = 30) {
    str_index_on = "zombie_powerup_" + str_powerup + "_on";
    str_index_time = "zombie_powerup_" + str_powerup + "_time";
    str_sound_off = "zmb_powerup_" + str_powerup + "_timeout";
    if (bgb::is_team_enabled(#"zm_bgb_temporal_gift")) {
        zombie_utility::set_zombie_var_team(str_index_time, player_team, zombie_utility::get_zombie_var_team(str_index_time, player_team) + time);
    }
    while (zombie_utility::get_zombie_var_team(str_index_time, player_team) >= 0) {
        waitframe(1);
        zombie_utility::set_zombie_var_team(str_index_time, player_team, zombie_utility::get_zombie_var_team(str_index_time, player_team) - 0.05);
    }
    zombie_utility::set_zombie_var_team(str_index_on, player_team, 0);
    e_player = getplayers()[0];
    if (isplayer(e_player)) {
        e_player playsoundtoteam(str_sound_off, player_team);
    }
    zombie_utility::set_zombie_var_team(str_index_time, player_team, time);
}

// Namespace zm_powerups/zm_powerups
// Params 4, eflags: 0x0
// Checksum 0x18b3a0cc, Offset: 0x7288
// Size: 0x1cc
function weapon_powerup(ent_player, time, str_weapon, allow_cycling = 0) {
    str_weapon_on = "zombie_powerup_" + str_weapon + "_on";
    str_weapon_time_over = str_weapon + "_time_over";
    ent_player notify(#"replace_weapon_powerup");
    ent_player._show_solo_hud = 1;
    ent_player.has_specific_powerup_weapon[str_weapon] = 1;
    ent_player.has_powerup_weapon = 1;
    ent_player zm_utility::increment_is_drinking();
    if (allow_cycling) {
        ent_player enableweaponcycling();
    }
    ent_player._zombie_weapon_before_powerup[str_weapon] = ent_player getcurrentweapon();
    ent_player giveweapon(level.zombie_powerup_weapon[str_weapon]);
    ent_player switchtoweapon(level.zombie_powerup_weapon[str_weapon]);
    ent_player.zombie_vars[str_weapon_on] = 1;
    level thread weapon_powerup_countdown(ent_player, str_weapon_time_over, time, str_weapon);
    level thread weapon_powerup_replace(ent_player, str_weapon_time_over, str_weapon);
    level thread weapon_powerup_change(ent_player, str_weapon_time_over, str_weapon);
}

// Namespace zm_powerups/zm_powerups
// Params 3, eflags: 0x2 linked
// Checksum 0x47270f8d, Offset: 0x7460
// Size: 0xdc
function weapon_powerup_change(ent_player, str_gun_return_notify, str_weapon) {
    ent_player endon(#"death", #"player_downed", str_gun_return_notify, #"replace_weapon_powerup");
    while (true) {
        waitresult = ent_player waittill(#"weapon_change");
        if (waitresult.weapon != level.weaponnone && waitresult.weapon != level.zombie_powerup_weapon[str_weapon]) {
            break;
        }
    }
    level thread weapon_powerup_remove(ent_player, str_gun_return_notify, str_weapon, 0);
}

// Namespace zm_powerups/zm_powerups
// Params 4, eflags: 0x2 linked
// Checksum 0xaa5eaaf9, Offset: 0x7548
// Size: 0x114
function weapon_powerup_countdown(ent_player, str_gun_return_notify, time, str_weapon) {
    ent_player endon(#"death", #"player_downed", str_gun_return_notify, #"replace_weapon_powerup");
    str_weapon_time = "zombie_powerup_" + str_weapon + "_time";
    ent_player.zombie_vars[str_weapon_time] = time;
    if (bgb::is_team_enabled(#"zm_bgb_temporal_gift")) {
        ent_player.zombie_vars[str_weapon_time] = ent_player.zombie_vars[str_weapon_time] + 30;
    }
    [[ level._custom_powerups[str_weapon].weapon_countdown ]](ent_player, str_weapon_time);
    level thread weapon_powerup_remove(ent_player, str_gun_return_notify, str_weapon, 1);
}

// Namespace zm_powerups/zm_powerups
// Params 3, eflags: 0x2 linked
// Checksum 0x4183da51, Offset: 0x7668
// Size: 0xe4
function weapon_powerup_replace(ent_player, str_gun_return_notify, str_weapon) {
    ent_player endon(#"death", #"player_downed", str_gun_return_notify);
    str_weapon_on = "zombie_powerup_" + str_weapon + "_on";
    ent_player waittill(#"replace_weapon_powerup");
    ent_player takeweapon(level.zombie_powerup_weapon[str_weapon]);
    ent_player.zombie_vars[str_weapon_on] = 0;
    ent_player.has_specific_powerup_weapon[str_weapon] = 0;
    ent_player.has_powerup_weapon = 0;
    ent_player zm_utility::decrement_is_drinking();
}

// Namespace zm_powerups/zm_powerups
// Params 4, eflags: 0x2 linked
// Checksum 0xcda8de61, Offset: 0x7758
// Size: 0x12c
function weapon_powerup_remove(ent_player, str_gun_return_notify, str_weapon, b_switch_back_weapon = 1) {
    ent_player endon(#"death", #"player_downed");
    str_weapon_on = "zombie_powerup_" + str_weapon + "_on";
    ent_player takeweapon(level.zombie_powerup_weapon[str_weapon]);
    ent_player.zombie_vars[str_weapon_on] = 0;
    ent_player._show_solo_hud = 0;
    ent_player.has_specific_powerup_weapon[str_weapon] = 0;
    ent_player.has_powerup_weapon = 0;
    ent_player notify(str_gun_return_notify);
    ent_player zm_utility::decrement_is_drinking();
    if (b_switch_back_weapon) {
        ent_player zm_weapons::switch_back_primary_weapon(ent_player._zombie_weapon_before_powerup[str_weapon]);
    }
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x0
// Checksum 0xf8093b4, Offset: 0x7890
// Size: 0x13e
function weapon_watch_gunner_downed(str_weapon) {
    str_notify = str_weapon + "_time_over";
    str_weapon_on = "zombie_powerup_" + str_weapon + "_on";
    if (!isdefined(self.has_specific_powerup_weapon) || !is_true(self.has_specific_powerup_weapon[str_weapon])) {
        return;
    }
    primaryweapons = self getweaponslistprimaries();
    for (i = 0; i < primaryweapons.size; i++) {
        if (primaryweapons[i] == level.zombie_powerup_weapon[str_weapon]) {
            self takeweapon(level.zombie_powerup_weapon[str_weapon]);
        }
    }
    self notify(str_notify);
    self.zombie_vars[str_weapon_on] = 0;
    self._show_solo_hud = 0;
    waitframe(1);
    self.has_specific_powerup_weapon[str_weapon] = 0;
    self.has_powerup_weapon = 0;
}

// Namespace zm_powerups/zm_powerups
// Params 3, eflags: 0x2 linked
// Checksum 0x9c82e628, Offset: 0x79d8
// Size: 0xce
function register_powerup(str_powerup, func_grab_powerup, func_setup) {
    assert(isdefined(str_powerup), "<unknown string>");
    _register_undefined_powerup(str_powerup);
    if (isdefined(func_grab_powerup)) {
        if (!isdefined(level._custom_powerups[str_powerup].grab_powerup)) {
            level._custom_powerups[str_powerup].grab_powerup = func_grab_powerup;
        }
    }
    if (isdefined(func_setup)) {
        if (!isdefined(level._custom_powerups[str_powerup].setup_powerup)) {
            level._custom_powerups[str_powerup].setup_powerup = func_setup;
        }
    }
}

// Namespace zm_powerups/zm_powerups
// Params 1, eflags: 0x2 linked
// Checksum 0x9e166170, Offset: 0x7ab0
// Size: 0x74
function _register_undefined_powerup(str_powerup) {
    if (!isdefined(level._custom_powerups)) {
        level._custom_powerups = [];
    }
    if (!isdefined(level._custom_powerups[str_powerup])) {
        level._custom_powerups[str_powerup] = spawnstruct();
        include_zombie_powerup(str_powerup);
    }
}

// Namespace zm_powerups/zm_powerups
// Params 2, eflags: 0x0
// Checksum 0x3f3ed54d, Offset: 0x7b30
// Size: 0x8a
function register_powerup_weapon(str_powerup, func_countdown) {
    assert(isdefined(str_powerup), "<unknown string>");
    _register_undefined_powerup(str_powerup);
    if (isdefined(func_countdown)) {
        if (!isdefined(level._custom_powerups[str_powerup].weapon_countdown)) {
            level._custom_powerups[str_powerup].weapon_countdown = func_countdown;
        }
    }
}

