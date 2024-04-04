// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_powerups.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_powerup_free_perk;

// Namespace zm_powerup_free_perk/zm_powerup_free_perk
// Params 0, eflags: 0x5
// Checksum 0x2b5f2499, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_free_perk", &preinit, undefined, undefined, undefined);
}

// Namespace zm_powerup_free_perk/zm_powerup_free_perk
// Params 0, eflags: 0x6 linked
// Checksum 0x8b338208, Offset: 0xf0
// Size: 0x34
function private preinit() {
    zm_powerups::include_zombie_powerup("free_perk");
    zm_powerups::add_zombie_powerup("free_perk");
}

