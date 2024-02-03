// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_powerups.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_powerup_small_ammo;

// Namespace zm_powerup_small_ammo/zm_powerup_small_ammo
// Params 0, eflags: 0x5
// Checksum 0x12328c77, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_small_ammo", &__init__, undefined, undefined, undefined);
}

// Namespace zm_powerup_small_ammo/zm_powerup_small_ammo
// Params 0, eflags: 0x2 linked
// Checksum 0x1006a1be, Offset: 0xf0
// Size: 0x44
function __init__() {
    zm_powerups::include_zombie_powerup("small_ammo");
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("small_ammo");
    }
}

