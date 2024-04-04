// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_powerups.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_powerup_bonus_points_team;

// Namespace zm_powerup_bonus_points_team/zm_powerup_bonus_points_team
// Params 0, eflags: 0x5
// Checksum 0xaabb3697, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_bonus_points_team", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_bonus_points_team/zm_powerup_bonus_points_team
// Params 0, eflags: 0x6 linked
// Checksum 0x8b338208, Offset: 0xf8
// Size: 0x34
function private preinit() {
    zm_powerups::include_zombie_powerup("bonus_points_team");
    zm_powerups::add_zombie_powerup("bonus_points_team");
}

