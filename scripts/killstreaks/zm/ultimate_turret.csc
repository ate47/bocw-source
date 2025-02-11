#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\killstreaks\killstreak_vehicle;
#using scripts\killstreaks\ultimate_turret_shared;

#namespace ultimate_turret;

// Namespace ultimate_turret/ultimate_turret
// Params 0, eflags: 0x5
// Checksum 0x1c6beba4, Offset: 0xc8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"ultimate_turret", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace ultimate_turret/ultimate_turret
// Params 0, eflags: 0x4
// Checksum 0x93f7e128, Offset: 0x118
// Size: 0x4c
function private preinit() {
    init_shared();
    bundle = getscriptbundle("killstreak_ultimate_turret_zm");
    killstreak_vehicle::init_killstreak(bundle);
}

