// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_contracts.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;

#namespace zm_powerup_bonus_points_player;

// Namespace zm_powerup_bonus_points_player/zm_powerup_bonus_points_player
// Params 0, eflags: 0x5
// Checksum 0x6a349822, Offset: 0x178
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_bonus_points_player", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_bonus_points_player/zm_powerup_bonus_points_player
// Params 0, eflags: 0x6 linked
// Checksum 0x44fb5b85, Offset: 0x1c0
// Size: 0xf4
function private preinit() {
    zm_powerups::register_powerup("bonus_points_player", &grab_bonus_points_player);
    zm_powerups::register_powerup("bonus_points_player_shared", &function_ec014d54);
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("bonus_points_player", "zombie_z_money_icon", #"hash_5162c283a9d6ee16", &zm_powerups::func_should_never_drop, 1, 0, 0);
        zm_powerups::add_zombie_powerup("bonus_points_player_shared", "zombie_z_money_icon", #"hash_5162c283a9d6ee16", &zm_powerups::func_should_never_drop, 1, 0, 0);
    }
}

// Namespace zm_powerup_bonus_points_player/zm_powerup_bonus_points_player
// Params 1, eflags: 0x2 linked
// Checksum 0x1fbe6289, Offset: 0x2c0
// Size: 0x74
function grab_bonus_points_player(player) {
    level thread bonus_points_player_powerup(self, player);
    player thread zm_powerups::powerup_vo("bonus");
    if (zm_utility::is_standard()) {
        player contracts::increment_zm_contract(#"contract_zm_rush_powerups");
    }
}

// Namespace zm_powerup_bonus_points_player/zm_powerup_bonus_points_player
// Params 1, eflags: 0x2 linked
// Checksum 0x13db9ea5, Offset: 0x340
// Size: 0xc4
function function_ec014d54(player) {
    level thread function_56784293(self, player);
    if (player !== self.e_player_owner) {
        player thread zm_powerups::powerup_vo("bonus");
        if (isdefined(self.e_player_owner) && !is_true(self.e_player_owner.var_a50db39d)) {
            self.e_player_owner.var_a50db39d = 1;
            self.e_player_owner zm_stats::increment_challenge_stat(#"hash_733e96c5baacb1da");
        }
    }
}

// Namespace zm_powerup_bonus_points_player/zm_powerup_bonus_points_player
// Params 2, eflags: 0x2 linked
// Checksum 0x52136ef9, Offset: 0x410
// Size: 0x20c
function bonus_points_player_powerup(item, player) {
    if (is_true(item.var_258c5fbc)) {
        points = item.var_258c5fbc;
        if (points == 100) {
            item.var_df23dc7d = "essence_pickup_small";
        } else if (points == 250) {
            item.var_df23dc7d = "essence_pickup_medium";
        }
    } else if (is_true(level.var_a4c782b9)) {
        points = randomintrange(1, 25) * 100;
    } else {
        points = 500;
    }
    if (isdefined(level.bonus_points_powerup_override)) {
        points = item [[ level.bonus_points_powerup_override ]](player);
    }
    if (isdefined(item.bonus_points_powerup_override)) {
        points = item [[ item.bonus_points_powerup_override ]](player);
    }
    if (isdefined(player) && isplayer(player) && isdefined(item.hint)) {
        player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", item.hint);
    }
    player notify(#"bonus_points_player_grabbed", {#e_powerup:item});
    level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:player, #scoreevent:isdefined(item.var_df23dc7d) ? item.var_df23dc7d : "bonus_points_powerup_zm"});
}

// Namespace zm_powerup_bonus_points_player/zm_powerup_bonus_points_player
// Params 2, eflags: 0x2 linked
// Checksum 0x49b880a2, Offset: 0x628
// Size: 0x10c
function function_56784293(item, player) {
    if (isdefined(player) && isplayer(player) && isdefined(item.hint)) {
        player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", item.hint);
    }
    player notify(#"bonus_points_player_grabbed", {#e_powerup:item});
    level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:player, #scoreevent:isdefined(item.var_df23dc7d) ? item.var_df23dc7d : "bonus_points_powerup_zm"});
}

