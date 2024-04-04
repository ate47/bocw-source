// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_powerups.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_powerup_weapon_minigun;

// Namespace zm_powerup_weapon_minigun/zm_powerup_weapon_minigun
// Params 0, eflags: 0x5
// Checksum 0x7dad2f37, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_weapon_minigun", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_weapon_minigun/zm_powerup_weapon_minigun
// Params 0, eflags: 0x4
// Checksum 0x393654aa, Offset: 0x100
// Size: 0x4c
function private preinit() {
    zm_powerups::include_zombie_powerup("minigun");
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("minigun", "powerup_mini_gun");
    }
}

