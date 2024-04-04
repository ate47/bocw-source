// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using script_40114edfb27a2dd9;

#namespace hud;

// Namespace hud/hud_shared
// Params 0, eflags: 0x5
// Checksum 0x670aa1c8, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hud", &preinit, undefined, undefined, undefined);
}

// Namespace hud/hud_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xddc5a3fa, Offset: 0xd8
// Size: 0x14
function private preinit() {
    scavenger_icon::register();
}

