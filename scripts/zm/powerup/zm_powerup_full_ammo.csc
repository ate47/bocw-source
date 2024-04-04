// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_powerups.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_powerup_full_ammo;

// Namespace zm_powerup_full_ammo/zm_powerup_full_ammo
// Params 0, eflags: 0x5
// Checksum 0x9b2180b7, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_full_ammo", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_full_ammo/zm_powerup_full_ammo
// Params 0, eflags: 0x6 linked
// Checksum 0x4a229dcb, Offset: 0xf0
// Size: 0x44
function private preinit() {
    zm_powerups::include_zombie_powerup("full_ammo");
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("full_ammo");
    }
}

