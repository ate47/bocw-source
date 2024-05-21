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
#using scripts\core_common\struct.gsc;

#namespace zm_powerup_insta_kill;

// Namespace zm_powerup_insta_kill/zm_powerup_insta_kill
// Params 0, eflags: 0x5
// Checksum 0x3b1beb7c, Offset: 0x170
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_insta_kill", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_insta_kill/zm_powerup_insta_kill
// Params 0, eflags: 0x6 linked
// Checksum 0x5613ebf0, Offset: 0x1b8
// Size: 0x9c
function private preinit() {
    zm_powerups::register_powerup("insta_kill", &grab_insta_kill);
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("insta_kill", "p7_zm_power_up_insta_kill", #"hash_1784640b956f2f85", &zm_powerups::func_should_always_drop, 0, 0, 0, undefined, "powerup_instant_kill", "zombie_powerup_insta_kill_time", "zombie_powerup_insta_kill_on");
    }
}

// Namespace zm_powerup_insta_kill/zm_powerup_insta_kill
// Params 1, eflags: 0x2 linked
// Checksum 0xd2b39949, Offset: 0x260
// Size: 0x8c
function grab_insta_kill(player) {
    if (zm_powerups::function_cfd04802(#"insta_kill")) {
        level thread function_d7a1e6a8(self, player);
    } else {
        level thread insta_kill_powerup(self, player);
    }
    player thread zm_powerups::powerup_vo("insta_kill");
}

// Namespace zm_powerup_insta_kill/zm_powerup_insta_kill
// Params 2, eflags: 0x2 linked
// Checksum 0x8b65eec6, Offset: 0x2f8
// Size: 0x180
function function_d7a1e6a8(e_powerup, player) {
    player notify(#"powerup instakill");
    player endon(#"powerup instakill", #"disconnect");
    if (player bgb::is_enabled(#"zm_bgb_temporal_gift")) {
        n_wait_time = 60;
    } else {
        n_wait_time = 30;
    }
    player thread zm_powerups::function_5091b029("insta_kill");
    if (isdefined(player) && isplayer(player) && isdefined(e_powerup.hint)) {
        player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", e_powerup.hint);
    }
    player zombie_utility::set_zombie_var_player(#"zombie_insta_kill", 1);
    level waittilltimeout(n_wait_time, #"end_game");
    player zombie_utility::set_zombie_var_player(#"zombie_insta_kill", 0);
    player notify(#"insta_kill_over");
}

// Namespace zm_powerup_insta_kill/zm_powerup_insta_kill
// Params 2, eflags: 0x2 linked
// Checksum 0x11344271, Offset: 0x480
// Size: 0x28a
function insta_kill_powerup(drop_item, player) {
    level notify("powerup instakill_" + player.team);
    level endon("powerup instakill_" + player.team);
    if (isdefined(level.insta_kill_powerup_override)) {
        level thread [[ level.insta_kill_powerup_override ]](drop_item, player);
        return;
    }
    team = player.team;
    level thread zm_powerups::show_on_hud(team, "insta_kill");
    players = getplayers();
    foreach (e_player in players) {
        if (isdefined(e_player) && isplayer(e_player) && isdefined(drop_item.hint)) {
            e_player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", drop_item.hint);
        }
    }
    zombie_utility::set_zombie_var_team(#"zombie_insta_kill", team, 1);
    n_wait_time = 30;
    if (bgb::is_team_enabled(#"zm_bgb_temporal_gift")) {
        n_wait_time += 30;
    }
    wait(n_wait_time);
    zombie_utility::set_zombie_var_team(#"zombie_insta_kill", team, 0);
    players = getplayers(team);
    for (i = 0; i < players.size; i++) {
        if (isdefined(players[i])) {
            players[i] notify(#"insta_kill_over");
        }
    }
}

