// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;

#namespace zm_powerup_bonus_points_team;

// Namespace zm_powerup_bonus_points_team/zm_powerup_bonus_points_team
// Params 0, eflags: 0x5
// Checksum 0x1ffd0e8a, Offset: 0x110
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_bonus_points_team", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_bonus_points_team/zm_powerup_bonus_points_team
// Params 0, eflags: 0x6 linked
// Checksum 0x25da5df0, Offset: 0x158
// Size: 0x84
function private preinit() {
    zm_powerups::register_powerup("bonus_points_team", &grab_bonus_points_team);
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("bonus_points_team", "zombie_z_money_icon", #"hash_5162c283a9d6ee16", &zm_powerups::func_should_always_drop, 0, 0, 0);
    }
}

// Namespace zm_powerup_bonus_points_team/zm_powerup_bonus_points_team
// Params 1, eflags: 0x2 linked
// Checksum 0xe362815a, Offset: 0x1e8
// Size: 0x44
function grab_bonus_points_team(player) {
    level thread bonus_points_team_powerup(self, player);
    player thread zm_powerups::powerup_vo("bonus");
}

// Namespace zm_powerup_bonus_points_team/zm_powerup_bonus_points_team
// Params 2, eflags: 0x2 linked
// Checksum 0x2d0906ec, Offset: 0x238
// Size: 0x1a0
function bonus_points_team_powerup(item, player) {
    if (is_true(level.var_a4c782b9)) {
        points = randomintrange(2, 11) * 100;
    } else {
        points = 500;
    }
    if (isdefined(level.bonus_points_powerup_override)) {
        points = item [[ level.bonus_points_powerup_override ]](player);
    }
    foreach (e_player in level.players) {
        if (isdefined(e_player) && isplayer(e_player) && isdefined(item.hint)) {
            e_player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", item.hint);
        }
        level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:e_player, #scoreevent:"bonus_points_powerup_zm"});
    }
}

