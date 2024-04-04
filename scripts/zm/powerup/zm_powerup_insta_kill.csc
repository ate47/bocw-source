// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_powerups.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_powerup_insta_kill;

// Namespace zm_powerup_insta_kill/zm_powerup_insta_kill
// Params 0, eflags: 0x5
// Checksum 0xa170a794, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_insta_kill", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_insta_kill/zm_powerup_insta_kill
// Params 0, eflags: 0x6 linked
// Checksum 0xe1d254e0, Offset: 0x108
// Size: 0x4c
function private preinit() {
    zm_powerups::include_zombie_powerup("insta_kill");
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("insta_kill", "powerup_instant_kill");
    }
}

