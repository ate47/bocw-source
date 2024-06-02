// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\vehicle_shared.csc;
#using script_2009cc4c4ecc010f;
#using scripts\core_common\system_shared.csc;

#namespace player_tactical_raft;

// Namespace player_tactical_raft/player_tactical_raft
// Params 0, eflags: 0x5
// Checksum 0x29eb67b5, Offset: 0xb0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_tactical_raft", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace player_tactical_raft/player_tactical_raft
// Params 1, eflags: 0x6 linked
// Checksum 0xf0c90d76, Offset: 0x100
// Size: 0x5c
function private preinit(*localclientnum) {
    vehicle::add_vehicletype_callback("tactical_raft_wz", &function_9941dc42);
    setdvar(#"phys_buoyancy", 1);
}

// Namespace player_tactical_raft/player_tactical_raft
// Params 1, eflags: 0x6 linked
// Checksum 0xb23f1269, Offset: 0x168
// Size: 0x2e
function private function_9941dc42(*localclientnum) {
    self.var_917cf8e3 = &player_vehicle::function_b0d51c9;
    self.var_1a6ef836 = 0;
}

