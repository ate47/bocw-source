// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\visionset_mgr_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_traps;

// Namespace zm_traps/zm_traps
// Params 0, eflags: 0x5
// Checksum 0x3c97d619, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_traps", &preinit, undefined, undefined, undefined);
}

// Namespace zm_traps/zm_traps
// Params 0, eflags: 0x6 linked
// Checksum 0x62e43719, Offset: 0x100
// Size: 0xe4
function private preinit() {
    s_traps_array = struct::get_array("zm_traps", "targetname");
    a_registered_traps = [];
    foreach (trap in s_traps_array) {
        if (isdefined(trap.script_noteworthy)) {
            if (!trap is_trap_registered(a_registered_traps)) {
                a_registered_traps[trap.script_noteworthy] = 1;
            }
        }
    }
}

// Namespace zm_traps/zm_traps
// Params 1, eflags: 0x2 linked
// Checksum 0x75db15b2, Offset: 0x1f0
// Size: 0x18
function is_trap_registered(a_registered_traps) {
    return isdefined(a_registered_traps[self.script_noteworthy]);
}

