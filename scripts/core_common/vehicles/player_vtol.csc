// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\vehicle_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_37bbf050;

// Namespace namespace_37bbf050/namespace_37bbf050
// Params 0, eflags: 0x5
// Checksum 0x683864dc, Offset: 0xa0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_7190b01de1767404", &function_70a657d8, undefined, undefined, #"player_vehicle");
}

// Namespace namespace_37bbf050/namespace_37bbf050
// Params 1, eflags: 0x6 linked
// Checksum 0x2d54d35d, Offset: 0xf0
// Size: 0x34
function private function_70a657d8(*localclientnum) {
    vehicle::add_vehicletype_callback("player_vtol", &function_1b39ded0);
}

// Namespace namespace_37bbf050/namespace_37bbf050
// Params 1, eflags: 0x6 linked
// Checksum 0x648d149a, Offset: 0x130
// Size: 0xc
function private function_1b39ded0(*localclientnum) {
    
}

