// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_powerups.csc;
#using scripts\core_common\system_shared.csc;

#namespace zm_powerup_shield_charge;

// Namespace zm_powerup_shield_charge/zm_powerup_shield_charge
// Params 0, eflags: 0x5
// Checksum 0xb068c112, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_shield_charge", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_shield_charge/zm_powerup_shield_charge
// Params 0, eflags: 0x4
// Checksum 0x2ac428fb, Offset: 0xf0
// Size: 0x34
function private preinit() {
    zm_powerups::include_zombie_powerup("shield_charge");
    zm_powerups::add_zombie_powerup("shield_charge");
}

