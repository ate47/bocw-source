// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_powerups.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_powerup_double_points;

// Namespace zm_powerup_double_points/zm_powerup_double_points
// Params 0, eflags: 0x5
// Checksum 0xbc316d3, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_powerup_double_points", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace zm_powerup_double_points/zm_powerup_double_points
// Params 0, eflags: 0x4
// Checksum 0x226953e8, Offset: 0x110
// Size: 0x4c
function private function_70a657d8() {
    zm_powerups::include_zombie_powerup("double_points");
    if (zm_powerups::function_cc33adc8()) {
        zm_powerups::add_zombie_powerup("double_points", "powerup_double_points");
    }
}
