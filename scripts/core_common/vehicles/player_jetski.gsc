// Atian COD Tools GSC CW decompiler test
#using script_40fc784c60f9fa7b;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace player_jetski;

// Namespace player_jetski/player_jetski
// Params 0, eflags: 0x5
// Checksum 0x6e6c41b0, Offset: 0xb8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_jetski", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace player_jetski/player_jetski
// Params 0, eflags: 0x6 linked
// Checksum 0xd082846, Offset: 0x108
// Size: 0x54
function private preinit() {
    vehicle::add_main_callback("player_jetski", &function_966d6664);
    setdvar(#"phys_buoyancy", 1);
}

// Namespace player_jetski/player_jetski
// Params 0, eflags: 0x6 linked
// Checksum 0x829f71d1, Offset: 0x168
// Size: 0x9c
function private function_966d6664() {
    self.var_84fed14b = 40;
    self.var_4ca92b57 = 20;
    self.var_d6691161 = 175;
    self.var_5d662124 = 2;
    callback::function_d8abfc3d(#"hash_666d48a558881a36", &function_4fc75987);
    self player_vehicle::function_cc30c4bb(#"hash_22c22a196fd2cc77", 6);
}

// Namespace player_jetski/player_jetski
// Params 1, eflags: 0x6 linked
// Checksum 0xce4cd85a, Offset: 0x210
// Size: 0x24
function private function_4fc75987(*params) {
    self thread player_vehicle::function_e8e41bbb();
}

