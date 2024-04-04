// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_powerups.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_65320816;

// Namespace namespace_65320816/namespace_65320816
// Params 0, eflags: 0x5
// Checksum 0x56e1c1ad, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_2209575d9ead0b63", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_65320816/namespace_65320816
// Params 0, eflags: 0x4
// Checksum 0x226953e8, Offset: 0x108
// Size: 0x4c
function private preinit() {
    zm_powerups::include_zombie_powerup("cranked_pause");
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("cranked_pause", "powerup_cranked_pause");
    }
}

