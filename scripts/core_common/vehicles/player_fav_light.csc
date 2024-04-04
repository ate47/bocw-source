// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\vehicle_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace player_fav_light;

// Namespace player_fav_light/player_fav_light
// Params 0, eflags: 0x5
// Checksum 0x1df06417, Offset: 0xb8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_fav_light", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace player_fav_light/player_fav_light
// Params 1, eflags: 0x6 linked
// Checksum 0xc486b594, Offset: 0x108
// Size: 0x34
function private preinit(*localclientnum) {
    vehicle::add_vehicletype_callback("player_fav_light", &function_6e6e0d52);
}

// Namespace player_fav_light/player_fav_light
// Params 1, eflags: 0x6 linked
// Checksum 0x867d0187, Offset: 0x148
// Size: 0xc
function private function_6e6e0d52(*localclientnum) {
    
}

