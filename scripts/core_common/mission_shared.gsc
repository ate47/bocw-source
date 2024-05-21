// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace mission_utils;

// Namespace mission_utils/mission_shared
// Params 0, eflags: 0x5
// Checksum 0x13ba671f, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"mission", &preinit, undefined, undefined, undefined);
}

// Namespace mission_utils/mission_shared
// Params 0, eflags: 0x4
// Checksum 0x3fb00857, Offset: 0x100
// Size: 0x34
function private preinit() {
    clientfield::register("world", "mission_active_flags", 1, 8, "int");
}

// Namespace mission_utils/mission_shared
// Params 1, eflags: 0x0
// Checksum 0x7b648f8a, Offset: 0x140
// Size: 0x84
function start(mission_index) {
    if (!isdefined(level.mission_active_flags)) {
        level.mission_active_flags = 0;
    }
    level.mission_active_flags |= 1 << mission_index;
    clientfield::set("mission_active_flags", level.mission_active_flags);
    startmission(mission_index);
}

// Namespace mission_utils/mission_shared
// Params 1, eflags: 0x0
// Checksum 0xaaa5cc9, Offset: 0x1d0
// Size: 0xe4
function stop(mission_index) {
    if (!isdefined(level.mission_active_flags)) {
        level.mission_active_flags = 0;
        return;
    }
    if (!isdefined(mission_index)) {
        for (i = 0; i < 8; i++) {
            stop(i);
        }
        return;
    }
    if ((level.mission_active_flags & 1 << mission_index) != 0) {
        level.mission_active_flags &= ~(1 << mission_index);
        clientfield::set("mission_active_flags", level.mission_active_flags);
        stopmission(mission_index);
    }
}

