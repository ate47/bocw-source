// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\trials\zm_trial_damage_drains_points.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_customgame.gsc;
#using scripts\zm_common\zm_contracts.gsc;
#using scripts\zm_common\zm_bgb.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_score;

// Namespace zm_score/zm_score
// Params 0, eflags: 0x5
// Checksum 0x494c25ba, Offset: 0x320
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_score", &preinit, &postinit, undefined, undefined);
}

// Namespace zm_score/zm_score
// Params 0, eflags: 0x6 linked
// Checksum 0xb9e25f17, Offset: 0x378
// Size: 0x200
function private preinit() {
    level.var_697c8943 = array(90, 80, 70, 60, 50, 40, 30, 20, 10);
    level.var_d6031813 = 1;
    foreach (subdivision in level.var_697c8943) {
        score_cf_register_info("damage" + subdivision, 1, 7);
    }
    score_cf_register_info("death_head", 1, 3);
    score_cf_register_info("death_melee", 1, 3);
    score_cf_register_info("transform_kill", 1, 3);
    clientfield::register_clientuimodel("hudItems.doublePointsActive", 1, 1, "int");
    callback::on_spawned(&player_on_spawned);
    callback::on_item_pickup(&on_item_pickup);
    level callback::on_ai_killed(&function_a3d16ee5);
    level.score_total = 0;
    level.a_func_score_events = [];
    level.var_c44113ca = [];
}

// Namespace zm_score/zm_score
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x580
// Size: 0x4
function private postinit() {
    
}

// Namespace zm_score/zm_score
// Params 6, eflags: 0x0
// Checksum 0xfa262ff5, Offset: 0x590
// Size: 0xda
function function_610e9242(event, player, *victim, *descvalue, *weapon, *var_36f23f1f) {
    score = var_36f23f1f rank::getscoreinfovalue(weapon);
    assert(isdefined(score));
    xp = var_36f23f1f rank::getscoreinfoxp(weapon);
    assert(isdefined(xp));
    label = rank::getscoreinfolabel(weapon);
    return score;
}

// Namespace zm_score/zm_score
// Params 2, eflags: 0x0
// Checksum 0xa411a745, Offset: 0x678
// Size: 0x24
function register_score_event(str_event, func_callback) {
    level.a_func_score_events[str_event] = func_callback;
}

// Namespace zm_score/zm_score
// Params 2, eflags: 0x2 linked
// Checksum 0x1fe4d142, Offset: 0x6a8
// Size: 0x24
function function_e5d6e6dd(str_archetype, n_score) {
    level.var_c44113ca[str_archetype] = n_score;
}

// Namespace zm_score/zm_score
// Params 0, eflags: 0x2 linked
// Checksum 0x33062cdc, Offset: 0x6d8
// Size: 0x110
function function_e5ca5733() {
    if (isdefined(self.score_events[#"kill"]) && isdefined(level.scoreinfo[self.score_events[#"kill"]][#"sp"]) && level.scoreinfo[self.score_events[#"kill"]][#"sp"] > 0) {
        return level.scoreinfo[self.score_events[#"kill"]][#"sp"];
    } else if (isdefined(self.archetype) && isdefined(level.var_c44113ca[self.archetype])) {
        return level.var_c44113ca[self.archetype];
    }
    return 0;
}

// Namespace zm_score/zm_score
// Params 1, eflags: 0x2 linked
// Checksum 0xb24f9a31, Offset: 0x7f0
// Size: 0x64
function function_a3d16ee5(s_params) {
    if (isdefined(self.score_event) && isplayer(s_params.eattacker)) {
        scoreevents::processscoreevent(self.score_event, s_params.eattacker, undefined, s_params.weapon);
    }
}

// Namespace zm_score/zm_score
// Params 0, eflags: 0x2 linked
// Checksum 0xd41d4b4e, Offset: 0x860
// Size: 0x32
function player_on_spawned() {
    util::wait_network_frame();
    if (isdefined(self)) {
        self.var_42dd3eba = 0;
        self.ready_for_score_events = 1;
    }
}

// Namespace zm_score/zm_score
// Params 3, eflags: 0x2 linked
// Checksum 0xd52b8931, Offset: 0x8a0
// Size: 0x8c
function score_cf_register_info(name, version, max_count) {
    for (i = 0; i < 5; i++) {
        clientfield::function_5b7d846d("PlayerList.client" + i + ".score_cf_" + name, version, getminbitcountfornum(max_count), "counter");
    }
}

// Namespace zm_score/zm_score
// Params 2, eflags: 0x2 linked
// Checksum 0xb099fba3, Offset: 0x938
// Size: 0x7c
function score_cf_increment_info(name, var_ce49f2dd = 0) {
    if (!var_ce49f2dd && self bgb::function_69b88b5()) {
        clientfield::increment_world_uimodel("PlayerList.client" + self.entity_num + ".score_cf_" + name);
    }
}

// Namespace zm_score/zm_score
// Params 8, eflags: 0x2 linked
// Checksum 0x1f1b1f52, Offset: 0x9c0
// Size: 0x7a0
function player_add_points(event, mod, hit_location, e_target, zombie_team, damage_weapon, var_96054e3, var_e6e61503 = 0) {
    if (level.intermission) {
        return;
    }
    if (!zm_utility::is_player_valid(self, 0, var_96054e3)) {
        return;
    }
    player_points = 0;
    multiplier = get_points_multiplier(self);
    if (isdefined(level.a_func_score_events[event])) {
        player_points = [[ level.a_func_score_events[event] ]](event, mod, hit_location, zombie_team, damage_weapon);
    } else {
        switch (event) {
        case #"rebuild_board":
        case #"carpenter_powerup":
        case #"nuke_powerup":
        case #"reviver":
        case #"oracle_boon":
        case #"bonus_points_powerup":
            player_points = mod;
            break;
        case #"bonus_points_powerup_shared":
            player_points = mod;
            multiplier = 1;
            break;
        case #"damage_points":
            switch (mod) {
            case 10:
            case 20:
            case 30:
            case 40:
            case 50:
            case 60:
            case 70:
            case 80:
            case 90:
            case 100:
            case 110:
            case 120:
            case 130:
            case 140:
            case 150:
            case 160:
            case 170:
            case 180:
            case 190:
            case 200:
                player_points = mod;
                if (!function_e31cf9d5(event)) {
                    if (mod > 90) {
                        self score_cf_increment_info("damage" + 90, var_e6e61503);
                    } else {
                        self score_cf_increment_info("damage" + mod, var_e6e61503);
                    }
                }
                break;
            }
            break;
        case #"death":
            player_points = e_target.var_f256a4d9;
            if (!isdefined(player_points)) {
                player_points = 0;
            }
            var_dd71ee3e = player_points;
            var_dc75a3a1 = 0;
            while (var_dd71ee3e > 0) {
                while (var_dc75a3a1 < level.var_697c8943.size && var_dd71ee3e < level.var_697c8943[var_dc75a3a1]) {
                    var_dc75a3a1++;
                }
                if (var_dc75a3a1 == level.var_697c8943.size) {
                    break;
                }
                var_dd71ee3e -= level.var_697c8943[var_dc75a3a1];
                if (!function_e31cf9d5(event)) {
                    self score_cf_increment_info("damage" + level.var_697c8943[var_dc75a3a1], var_e6e61503);
                }
            }
            if (!function_e31cf9d5(event)) {
                player_points = self player_add_points_kill_bonus(mod, hit_location, damage_weapon, player_points, var_e6e61503);
            }
            if (mod == "MOD_GRENADE" || mod == "MOD_GRENADE_SPLASH") {
                self zm_stats::increment_client_stat("grenade_kills");
                self zm_stats::increment_player_stat("grenade_kills");
            }
            break;
        case #"riotshield_fling":
            player_points = mod;
            if (!var_e6e61503) {
                scoreevents::processscoreevent("kill_rbz_zombie", self, undefined, damage_weapon);
            }
            break;
        case #"transform_kill":
            self score_cf_increment_info("transform_kill", var_e6e61503);
            if (!var_e6e61503) {
                scoreevents::processscoreevent("transform_kill", self, undefined, damage_weapon);
            }
            player_points = zombie_utility::get_zombie_var(#"hash_68aa9b4c8de33261");
            break;
        default:
            assert(0, "<unknown string>");
            break;
        }
    }
    if (isdefined(level.player_score_override)) {
        player_points = self [[ level.player_score_override ]](damage_weapon, player_points);
    }
    player_points = multiplier * zm_utility::round_up_score(player_points);
    if (isdefined(self.point_split_receiver) && event == "death") {
        split_player_points = player_points - zm_utility::round_up_score(player_points * self.point_split_keep_percent);
        self.point_split_receiver add_to_player_score(split_player_points);
        player_points -= split_player_points;
    }
    if (event === "rebuild_board") {
        level notify(#"rebuild_board", {#player:self, #points:player_points});
    }
    self add_to_player_score(player_points, 1, event, var_e6e61503);
    if (var_e6e61503 || is_true(level.var_894a83d8) || function_e31cf9d5(event)) {
        return;
    }
    self.pers[#"score"] = self.score;
    if (isdefined(level._game_module_point_adjustment)) {
        level [[ level._game_module_point_adjustment ]](self, zombie_team, player_points);
    }
}

// Namespace zm_score/zm_score
// Params 1, eflags: 0x6 linked
// Checksum 0x41efb40d, Offset: 0x1168
// Size: 0x54
function private function_e31cf9d5(str_score_event) {
    if (zm_trial_damage_drains_points::is_active(1) && (str_score_event === "death" || str_score_event === "damage_points")) {
        return true;
    }
    return false;
}

// Namespace zm_score/zm_score
// Params 1, eflags: 0x2 linked
// Checksum 0x14b9fe20, Offset: 0x11c8
// Size: 0xee
function get_points_multiplier(player) {
    multiplier = isdefined(player zombie_utility::get_zombie_var_player(#"zombie_point_scalar")) ? player zombie_utility::get_zombie_var_player(#"zombie_point_scalar") : zombie_utility::get_zombie_var_team(#"zombie_point_scalar", player.team);
    if (isdefined(level.current_game_module) && level.current_game_module == 2) {
        if (isdefined(level._race_team_double_points) && level._race_team_double_points == player._race_team) {
            return multiplier;
        } else {
            return 1;
        }
    }
    return multiplier;
}

// Namespace zm_score/zm_score
// Params 5, eflags: 0x2 linked
// Checksum 0xc823bf23, Offset: 0x12c0
// Size: 0x2d6
function player_add_points_kill_bonus(mod, hit_location, weapon, player_points = undefined, var_e6e61503 = 0) {
    if (mod != "MOD_MELEE" && !is_true(level.is_survival)) {
        if ("head" == hit_location || "helmet" == hit_location || "neck" == hit_location) {
            scoreevents::processscoreevent("headshot", self, undefined, weapon);
        } else {
            scoreevents::processscoreevent("kill_rbz_zombie", self, undefined, weapon);
        }
    }
    if (isdefined(level.player_score_override)) {
        new_points = self [[ level.player_score_override ]](weapon, player_points);
        if (new_points > 0 && new_points != player_points) {
            return new_points;
        }
    }
    if (mod == "MOD_MELEE" && (!isdefined(weapon) || !weapon.isriotshield && !zm_loadout::is_hero_weapon(weapon))) {
        self score_cf_increment_info("death_melee", var_e6e61503);
        if (!is_true(level.is_survival)) {
            scoreevents::processscoreevent("melee_kill", self, undefined, weapon);
        }
        return zombie_utility::get_zombie_var(#"zombie_score_bonus_melee");
    }
    if (isdefined(player_points)) {
        score = player_points;
    } else {
        score = 0;
    }
    if (isdefined(hit_location)) {
        switch (hit_location) {
        case #"head":
        case #"helmet":
        case #"neck":
            self score_cf_increment_info("death_head", var_e6e61503);
            score = zombie_utility::get_zombie_var(#"zombie_score_bonus_head");
            break;
        default:
            break;
        }
    }
    return score;
}

// Namespace zm_score/zm_score
// Params 2, eflags: 0x2 linked
// Checksum 0x38b55dd3, Offset: 0x15a0
// Size: 0x4e6
function player_reduce_points(event, n_amount) {
    if (level.intermission || zm_utility::is_standard()) {
        return;
    }
    points = 0;
    switch (event) {
    case #"take_all":
        points = self.score;
        break;
    case #"take_half":
        points = int(self.score / 2);
        break;
    case #"take_specified":
        points = n_amount;
        break;
    case #"no_revive_penalty":
        if (zm_custom::function_901b751c(#"zmpointlossonteammatedeath")) {
            percent = zm_custom::function_901b751c(#"zmpointlossonteammatedeath") / 100;
            points = self.score * percent;
        } else if (level.round_number >= 50) {
            percent = zombie_utility::get_zombie_var(#"penalty_no_revive");
            points = self.score * percent;
        }
        break;
    case #"died":
        if (zm_custom::function_901b751c(#"zmpointlossondeath")) {
            percent = zm_custom::function_901b751c(#"zmpointlossondeath") / 100;
            points = self.score * percent;
        } else if (level.round_number >= 50) {
            percent = zombie_utility::get_zombie_var(#"penalty_died");
            points = self.score * percent;
        }
        break;
    case #"downed":
        if (level.round_number < 50 && !zm_custom::function_901b751c(#"zmpointlossondown")) {
            percent = 0;
        } else if (zm_custom::function_901b751c(#"zmpointlossondown")) {
            percent = zm_custom::function_901b751c(#"zmpointlossondown") / 100;
        } else {
            percent = zombie_utility::get_zombie_var(#"penalty_downed");
            step = zombie_utility::get_zombie_var(#"hash_3037a1f286b662e6");
            if (step > 0) {
                percent *= int(self.score / step);
            }
            if (percent > 0.5) {
                percent = 0.5;
            }
        }
        self notify(#"i_am_down");
        points = self.score * percent;
        self.score_lost_when_downed = zm_utility::round_up_to_ten(int(points));
        break;
    case #"points_lost_on_hit_percent":
        points = self.score * n_amount;
        break;
    case #"points_lost_on_hit_value":
        points = n_amount;
        break;
    default:
        assert(0, "<unknown string>");
        break;
    }
    points = self.score - zm_utility::round_up_to_ten(int(points));
    if (points < 0) {
        points = 0;
    }
    if (points > 4000000) {
        points = 4000000;
    }
    self.score = points;
    self notify(#"reduced_points", {#str_reason:event});
}

// Namespace zm_score/zm_score
// Params 4, eflags: 0x2 linked
// Checksum 0x5d474de8, Offset: 0x1a90
// Size: 0x4be
function add_to_player_score(points, b_add_to_total = 1, str_awarded_by = "", var_e6e61503 = 0) {
    if (!isdefined(points) || level.intermission || !is_true(level.var_d6031813)) {
        return;
    }
    assert(isplayer(self), "<unknown string>");
    points = zm_utility::round_up_score(points);
    if (is_true(level.var_894a83d8) || var_e6e61503 || function_e31cf9d5(str_awarded_by)) {
        return;
    }
    n_points_to_add_to_currency = bgb::add_to_player_score_override(points, str_awarded_by);
    self.score += n_points_to_add_to_currency;
    if (self.score > 4000000) {
        self.score = 4000000;
    }
    self.pers[#"score"] = self.score;
    self incrementplayerstat("scoreEarned", n_points_to_add_to_currency);
    self zm_stats::function_301c4be2("boas_scoreEarned", n_points_to_add_to_currency);
    self zm_stats::function_c0c6ab19(#"zearned", n_points_to_add_to_currency, 1);
    level notify(#"earned_points", {#player:self, #points:points});
    self contracts::increment_zm_contract(#"contract_zm_points", n_points_to_add_to_currency, #"zstandard");
    self stats::function_dad108fa(#"hash_6a861f1323ce4ae9", n_points_to_add_to_currency);
    self zm_stats::function_fbce465a(#"hash_76bf5af08a08d8fe", n_points_to_add_to_currency);
    self zm_stats::function_fbce465a(#"hash_3d915bbfdb0453ba", n_points_to_add_to_currency);
    self zm_stats::function_17ee4529(#"hash_5a974e436e73bc2", n_points_to_add_to_currency, #"hash_6abe83944d701459");
    if (zm_utility::is_standard()) {
        self zm_stats::function_c0c6ab19(#"rush_points", n_points_to_add_to_currency);
    }
    if (b_add_to_total) {
        self.score_total += points;
        level.score_total += points;
    }
    if (!isdefined(self.var_42dd3eba)) {
        self.var_42dd3eba = 0;
    }
    if (!isdefined(self.var_93369bb6)) {
        self.var_93369bb6 = 0;
    }
    if (!isdefined(self.var_2e139723)) {
        self.var_2e139723 = 0;
    }
    self.var_42dd3eba += points;
    self.var_93369bb6 += points;
    if (self.var_93369bb6 > 25000) {
        self.var_93369bb6 = 0;
        self zm_stats::function_fbce465a(#"hash_24abad59aafa4b84");
    }
    self.var_2e139723 += points;
    if (self.var_2e139723 > 35000) {
        self.var_2e139723 = 0;
        self zm_stats::function_fbce465a(#"hash_3a26c1202d86e50e");
    }
    self notify(#"earned_points", {#n_points:points, #str_awarded_by:str_awarded_by});
}

// Namespace zm_score/zm_score
// Params 2, eflags: 0x2 linked
// Checksum 0xcce4f352, Offset: 0x1f58
// Size: 0x21e
function minus_to_player_score(points, b_forced = 0) {
    if (!isdefined(points) || level.intermission) {
        return;
    }
    if (self bgb::is_enabled(#"zm_bgb_shopping_free") && !b_forced) {
        self notify(#"hash_14b0ad44336160bc");
        self bgb::do_one_shot_use();
        self playsoundtoplayer(#"zmb_bgb_shoppingfree_coinreturn", self);
        return;
    }
    if (zm_utility::is_standard() && !b_forced) {
        return;
    }
    if (!b_forced) {
        self contracts::increment_zm_contract(#"contract_zm_points_spent", points);
    }
    self.score -= points;
    self zm_stats::function_7ec42fbf(#"hash_3c096a414d5b9096", points);
    self stats::function_dad108fa(#"hash_59d8674357c2b6de", points);
    self.pers[#"score"] = self.score;
    self incrementplayerstat("scoreSpent", points);
    self zm_stats::function_301c4be2("boas_scoreSpent", points);
    level notify(#"spent_points", {#player:self, #points:points});
    self notify(#"spent_points", {#points:points});
}

// Namespace zm_score/zm_score
// Params 1, eflags: 0x0
// Checksum 0xe246bcb2, Offset: 0x2180
// Size: 0xc
function add_to_team_score(*points) {
    
}

// Namespace zm_score/zm_score
// Params 1, eflags: 0x0
// Checksum 0xff4259d6, Offset: 0x2198
// Size: 0xc
function minus_to_team_score(*points) {
    
}

// Namespace zm_score/zm_score
// Params 0, eflags: 0x2 linked
// Checksum 0xae9b3fc3, Offset: 0x21b0
// Size: 0xe8
function player_died_penalty() {
    players = getplayers(self.team);
    foreach (player in players) {
        if (!isdefined(player)) {
            continue;
        }
        if (player == self) {
            continue;
        }
        if (is_true(player.is_zombie)) {
            continue;
        }
        player player_reduce_points("no_revive_penalty");
    }
}

// Namespace zm_score/zm_score
// Params 0, eflags: 0x2 linked
// Checksum 0x3b861228, Offset: 0x22a0
// Size: 0x44
function player_downed_penalty() {
    println("<unknown string>");
    self player_reduce_points("downed");
}

// Namespace zm_score/zm_score
// Params 2, eflags: 0x2 linked
// Checksum 0x22ebb0e7, Offset: 0x22f0
// Size: 0x8a
function can_player_purchase(n_cost, var_1c65f833 = 0) {
    if (self.score >= n_cost) {
        return true;
    }
    if (self bgb::is_enabled(#"zm_bgb_shopping_free")) {
        return true;
    }
    if (zm_utility::is_standard() && !var_1c65f833) {
        return true;
    }
    return false;
}

// Namespace zm_score/zm_score
// Params 1, eflags: 0x2 linked
// Checksum 0x6ce37c85, Offset: 0x2388
// Size: 0x1b2
function on_item_pickup(s_params) {
    itementry = s_params.item.itementry;
    if (itementry.itemtype === #"survival_essence") {
        if (isplayer(self)) {
            e_player = self;
        } else {
            e_player = s_params.player;
        }
        switch (itementry.name) {
        case #"resource_item_medium_harvesting_sr":
            level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:e_player, #scoreevent:"essence_pickup_medium"});
            break;
        case #"resource_item_harvesting_sr":
        case #"hash_69a628368f8263f":
            level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:e_player, #scoreevent:"essence_pickup_large"});
            break;
        default:
            level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:e_player, #scoreevent:"essence_pickup_small"});
            break;
        }
    }
}

// Namespace zm_score/zm_score
// Params 0, eflags: 0x2 linked
// Checksum 0xa2f3d65c, Offset: 0x2548
// Size: 0x98
function function_5f41330c() {
    return isdefined(self.score_events[#"assist"]) && isdefined(level.scoreinfo[self.score_events[#"assist"]][#"sp"]) && level.scoreinfo[self.score_events[#"assist"]][#"sp"] > 0;
}

// Namespace zm_score/zm_score
// Params 0, eflags: 0x2 linked
// Checksum 0x659ed5a9, Offset: 0x25e8
// Size: 0x116
function function_82732ced() {
    if (isdefined(self.var_17a22c08)) {
        var_7afe66bc = self.var_17a22c08;
    } else {
        var_7afe66bc = self function_e5ca5733();
        if (!var_7afe66bc && !self function_5f41330c()) {
            assert(var_7afe66bc, "<unknown string>" + function_9e72a96(self.archetype) + "<unknown string>");
        }
    }
    self.var_f256a4d9 = var_7afe66bc;
    self.var_d8caf335 = var_7afe66bc != 0 ? max(1, int(self.maxhealth / var_7afe66bc * 0.1)) : 1;
    self.var_8d5c706f = [];
}

// Namespace zm_score/zm_score
// Params 3, eflags: 0x0
// Checksum 0xf28569ef, Offset: 0x2708
// Size: 0x2a8
function function_89db94b3(e_attacker, n_damage, e_inflictor) {
    if (!isplayer(e_attacker) || !isdefined(self.var_8d5c706f) || is_true(self.marked_for_death)) {
        return;
    }
    n_index = e_attacker.entity_num;
    if (!isdefined(n_index)) {
        return;
    }
    if (!isdefined(self.var_8d5c706f[n_index])) {
        self.var_8d5c706f[n_index] = 0;
    }
    var_20701980 = self.var_8d5c706f[n_index];
    var_810a69da = var_20701980 + n_damage;
    var_86e74a5c = int(var_20701980 / self.var_d8caf335);
    var_6fb77dc8 = int(var_810a69da / self.var_d8caf335);
    n_points = (var_6fb77dc8 - var_86e74a5c) * 10;
    if (n_points > self.var_f256a4d9) {
        n_points = self.var_f256a4d9;
    }
    if (is_true(e_attacker zombie_utility::get_zombie_var_player(#"zombie_insta_kill")) || is_true(zombie_utility::get_zombie_var_team(#"zombie_insta_kill", e_attacker.team))) {
        n_points = self.var_f256a4d9;
    }
    if (n_points) {
        if (isdefined(e_inflictor) && e_inflictor.var_9fde8624 === #"zombie_wolf_ally") {
            e_attacker player_add_points("damage_points", 10, undefined, undefined, undefined, undefined, undefined, self.var_12745932);
            self.var_f256a4d9 -= n_points;
        } else {
            e_attacker player_add_points("damage_points", n_points, undefined, undefined, undefined, undefined, undefined, self.var_12745932);
            self.var_f256a4d9 -= n_points;
        }
    }
    self.var_8d5c706f[n_index] = var_810a69da;
}

// Namespace zm_score/zm_score
// Params 1, eflags: 0x2 linked
// Checksum 0x23ae9f45, Offset: 0x29b8
// Size: 0x32
function function_acaab828(b_disabled = 1) {
    if (isdefined(self)) {
        self.var_12745932 = b_disabled;
    }
}

// Namespace zm_score/zm_score
// Params 0, eflags: 0x2 linked
// Checksum 0xf8464bd1, Offset: 0x29f8
// Size: 0x1c
function function_ffc2d0bc() {
    return self.pers[#"score"];
}

// Namespace zm_score/zm_score
// Params 1, eflags: 0x2 linked
// Checksum 0x1a20c49a, Offset: 0x2a20
// Size: 0x32
function function_c1f146ff(score) {
    self.pers[#"score"] = score;
    self.score = score;
}

// Namespace zm_score/zm_score
// Params 1, eflags: 0x2 linked
// Checksum 0xda810827, Offset: 0x2a60
// Size: 0x2ca
function function_bc9de425(b_lowest_first = 0) {
    var_5e8a44f9 = [];
    var_e8d2685c = 0;
    foreach (player in getplayers()) {
        if (!isdefined(player.var_9fc3ee66)) {
            player.var_9fc3ee66 = -1;
        }
        if (!isdefined(player.var_a8da9faf)) {
            player.var_a8da9faf = -1;
        }
        if (!isdefined(var_5e8a44f9)) {
            var_5e8a44f9 = [];
        } else if (!isarray(var_5e8a44f9)) {
            var_5e8a44f9 = array(var_5e8a44f9);
        }
        var_5e8a44f9[var_5e8a44f9.size] = player.score;
        if (player.score > 0) {
            var_e8d2685c = 1;
        }
    }
    var_5e8a44f9 = array::sort_by_value(var_5e8a44f9, b_lowest_first);
    var_51639 = 0;
    var_694faff0 = -1;
    foreach (var_f0c1d3c2 in var_5e8a44f9) {
        if (var_e8d2685c && var_f0c1d3c2 != var_694faff0) {
            var_694faff0 = var_f0c1d3c2;
            var_51639++;
        } else {
            continue;
        }
        foreach (player in getplayers()) {
            if (player.score == var_f0c1d3c2) {
                player.var_a8da9faf = player.var_9fc3ee66;
                player.var_9fc3ee66 = var_51639;
                continue;
            }
        }
    }
    return var_5e8a44f9;
}

