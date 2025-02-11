#using scripts\core_common\system_shared;
#using scripts\core_common\vehicle_shared;

#namespace vehicle;

// Namespace vehicle/vehicle
// Params 0, eflags: 0x5
// Checksum 0x9d8c0b61, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"vehicle", &preinit, undefined, undefined, undefined);
}

// Namespace vehicle/vehicle
// Params 0, eflags: 0x4
// Checksum 0x50586971, Offset: 0xd8
// Size: 0x30
function private preinit() {
    if (!isdefined(level._effect)) {
        level._effect = [];
    }
    level.vehicles_inited = 1;
}

// Namespace vehicle/vehicle
// Params 1, eflags: 0x0
// Checksum 0x35ad1a28, Offset: 0x110
// Size: 0xc
function vehicle_variants(*localclientnum) {
    
}

