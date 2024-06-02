// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\vehicle_shared.csc;
#using script_2009cc4c4ecc010f;
#using scripts\core_common\system_shared.csc;

#namespace player_jetski;

// Namespace player_jetski/player_jetski
// Params 0, eflags: 0x5
// Checksum 0x6e6c41b0, Offset: 0xb0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_jetski", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace player_jetski/player_jetski
// Params 1, eflags: 0x6 linked
// Checksum 0xd2abcdea, Offset: 0x100
// Size: 0x5c
function private preinit(*localclientnum) {
    vehicle::add_vehicletype_callback("player_jetski", &function_966d6664);
    setdvar(#"phys_buoyancy", 1);
}

// Namespace player_jetski/player_jetski
// Params 1, eflags: 0x6 linked
// Checksum 0xc3343343, Offset: 0x168
// Size: 0x2e
function private function_966d6664(*localclientnum) {
    self.var_917cf8e3 = &player_vehicle::function_b0d51c9;
    self.var_1a6ef836 = 0;
}

