// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;

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
// Checksum 0xd5c72bb7, Offset: 0x100
// Size: 0x4c
function private preinit() {
    clientfield::register("world", "mission_active_flags", 1, 8, "int", &mission_active_changed, 0, 0);
}

// Namespace mission_utils/mission_shared
// Params 7, eflags: 0x0
// Checksum 0x532bfb09, Offset: 0x158
// Size: 0x164
function mission_active_changed(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level.mission_active_flags)) {
        level.mission_active_flags = 0;
    }
    for (i = 0; i < 8; i++) {
        changedflags = level.mission_active_flags ^ bwastimejump;
        if ((changedflags & 1 << i) != 0) {
            if ((level.mission_active_flags & 1 << i) != 0) {
                stopmission(i);
            }
        }
    }
    for (i = 0; i < 8; i++) {
        changedflags = level.mission_active_flags ^ bwastimejump;
        if ((changedflags & 1 << i) != 0) {
            if ((level.mission_active_flags & 1 << i) == 0) {
                startmission(i);
            }
        }
    }
    level.mission_active_flags = bwastimejump;
}

