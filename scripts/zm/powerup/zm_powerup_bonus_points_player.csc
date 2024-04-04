// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_powerups.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_powerup_bonus_points_player;

// Namespace zm_powerup_bonus_points_player/zm_powerup_bonus_points_player
// Params 0, eflags: 0x5
// Checksum 0x19eed208, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_bonus_points_player", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_bonus_points_player/zm_powerup_bonus_points_player
// Params 0, eflags: 0x6 linked
// Checksum 0x91dff6f7, Offset: 0x118
// Size: 0x64
function private preinit() {
    zm_powerups::include_zombie_powerup("bonus_points_player");
    zm_powerups::add_zombie_powerup("bonus_points_player");
    zm_powerups::include_zombie_powerup("bonus_points_player_shared");
    zm_powerups::add_zombie_powerup("bonus_points_player_shared");
}

