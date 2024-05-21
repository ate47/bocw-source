// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_bgb.gsc;
#using scripts\core_common\ai\zombie_death.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_powerup_double_points;

// Namespace zm_powerup_double_points/zm_powerup_double_points
// Params 0, eflags: 0x5
// Checksum 0x1953122c, Offset: 0x188
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_double_points", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_double_points/zm_powerup_double_points
// Params 0, eflags: 0x6 linked
// Checksum 0x77163ea1, Offset: 0x1d0
// Size: 0xa4
function private preinit() {
    zm_powerups::register_powerup("double_points", &grab_double_points);
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("double_points", #"p7_zm_power_up_double_points", #"hash_774207d74b355a8a", &zm_powerups::func_should_always_drop, 0, 0, 0, undefined, "powerup_double_points", "zombie_powerup_double_points_time", "zombie_powerup_double_points_on");
    }
}

// Namespace zm_powerup_double_points/zm_powerup_double_points
// Params 1, eflags: 0x2 linked
// Checksum 0x71de011e, Offset: 0x280
// Size: 0x8c
function grab_double_points(player) {
    if (zm_powerups::function_cfd04802(#"double_points")) {
        level thread function_6fd6ae61(self, player);
    } else {
        level thread double_points_powerup(self, player);
    }
    player thread zm_powerups::powerup_vo("double_points");
}

// Namespace zm_powerup_double_points/zm_powerup_double_points
// Params 2, eflags: 0x2 linked
// Checksum 0xe30feb95, Offset: 0x318
// Size: 0x1ac
function function_6fd6ae61(e_powerup, player) {
    player notify(#"powerup points scaled");
    player endon(#"powerup points scaled", #"disconnect");
    player thread zm_powerups::function_5091b029("double_points");
    if (isdefined(player) && isplayer(player) && isdefined(e_powerup.hint)) {
        player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", e_powerup.hint);
    }
    player zombie_utility::set_zombie_var_player(#"zombie_point_scalar", 2);
    player clientfield::set_player_uimodel("hudItems.doublePointsActive", 1);
    if (player bgb::is_enabled(#"zm_bgb_temporal_gift")) {
        n_wait_time = 60;
    } else {
        n_wait_time = 30;
    }
    level waittilltimeout(n_wait_time, #"end_game");
    player zombie_utility::set_zombie_var_player(#"zombie_point_scalar", undefined);
    player clientfield::set_player_uimodel("hudItems.doublePointsActive", 0);
}

// Namespace zm_powerup_double_points/zm_powerup_double_points
// Params 2, eflags: 0x2 linked
// Checksum 0xce31ebcb, Offset: 0x4d0
// Size: 0x344
function double_points_powerup(drop_item, player) {
    level notify("powerup points scaled_" + player.team);
    level endon("powerup points scaled_" + player.team);
    team = player.team;
    level thread zm_powerups::show_on_hud(team, "double_points");
    players = getplayers();
    foreach (e_player in players) {
        if (isdefined(e_player) && isplayer(e_player) && isdefined(drop_item.hint)) {
            e_player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", drop_item.hint);
        }
    }
    if (isdefined(level.current_game_module) && level.current_game_module == 2) {
        if (isdefined(player._race_team)) {
            if (player._race_team == 1) {
                level._race_team_double_points = 1;
            } else {
                level._race_team_double_points = 2;
            }
        }
    }
    zombie_utility::set_zombie_var_team(#"zombie_point_scalar", team, 2);
    players = getplayers();
    for (player_index = 0; player_index < players.size; player_index++) {
        if (team == players[player_index].team) {
            players[player_index] clientfield::set_player_uimodel("hudItems.doublePointsActive", 1);
        }
    }
    n_wait = 30;
    if (bgb::is_team_enabled(#"zm_bgb_temporal_gift")) {
        n_wait += 30;
    }
    wait(n_wait);
    zombie_utility::set_zombie_var_team(#"zombie_point_scalar", team, 1);
    level._race_team_double_points = undefined;
    players = getplayers();
    for (player_index = 0; player_index < players.size; player_index++) {
        if (team == players[player_index].team) {
            players[player_index] clientfield::set_player_uimodel("hudItems.doublePointsActive", 0);
        }
    }
}

