// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\vehicle_shared.csc;
#using script_2009cc4c4ecc010f;
#using scripts\core_common\system_shared.csc;

#namespace player_pbr;

// Namespace player_pbr/player_pbr
// Params 0, eflags: 0x5
// Checksum 0x5f04e17d, Offset: 0xa8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_pbr", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace player_pbr/player_pbr
// Params 1, eflags: 0x6 linked
// Checksum 0x4945d806, Offset: 0xf8
// Size: 0x5c
function private preinit(*localclientnum) {
    vehicle::add_vehicletype_callback("player_pbr", &function_cc0af45d);
    setdvar(#"phys_buoyancy", 1);
}

// Namespace player_pbr/player_pbr
// Params 1, eflags: 0x6 linked
// Checksum 0x18925099, Offset: 0x160
// Size: 0x2e
function private function_cc0af45d(*localclientnum) {
    self.var_917cf8e3 = &player_vehicle::function_b0d51c9;
    self.var_1a6ef836 = 0;
}

