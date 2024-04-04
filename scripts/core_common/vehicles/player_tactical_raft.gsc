// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_40fc784c60f9fa7b;
#using scripts\core_common\callbacks_shared.gsc;

#namespace player_tactical_raft;

// Namespace player_tactical_raft/player_tactical_raft
// Params 0, eflags: 0x5
// Checksum 0x296be1c5, Offset: 0xd0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_tactical_raft", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace player_tactical_raft/player_tactical_raft
// Params 0, eflags: 0x6 linked
// Checksum 0xba46426f, Offset: 0x120
// Size: 0x54
function private preinit() {
    vehicle::add_main_callback("tactical_raft_wz", &function_9941dc42);
    setdvar(#"phys_buoyancy", 1);
}

// Namespace player_tactical_raft/player_tactical_raft
// Params 0, eflags: 0x6 linked
// Checksum 0xba6fffe, Offset: 0x180
// Size: 0xbc
function private function_9941dc42() {
    self setmovingplatformenabled(1, 0);
    self.var_93dc9da9 = "veh_zodiac_wall_imp";
    callback::function_d8abfc3d(#"hash_80ab24b716412e1", &function_a41bd019);
    callback::function_d8abfc3d(#"hash_666d48a558881a36", &function_a5838bb7);
    callback::function_d8abfc3d(#"hash_55f29e0747697500", &function_6d4de854);
}

// Namespace player_tactical_raft/player_tactical_raft
// Params 1, eflags: 0x6 linked
// Checksum 0x480ce6d1, Offset: 0x248
// Size: 0xc
function private function_6d4de854(*params) {
    
}

// Namespace player_tactical_raft/player_tactical_raft
// Params 1, eflags: 0x6 linked
// Checksum 0xf092257d, Offset: 0x260
// Size: 0x24
function private function_a5838bb7(*params) {
    self thread player_vehicle::function_e8e41bbb();
}

// Namespace player_tactical_raft/player_tactical_raft
// Params 1, eflags: 0x6 linked
// Checksum 0xae477339, Offset: 0x290
// Size: 0xc
function private function_a41bd019(*params) {
    
}

