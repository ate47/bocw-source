// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace player_atv;

// Namespace player_atv/player_atv
// Params 0, eflags: 0x5
// Checksum 0xa26421ac, Offset: 0xb8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_atv", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace player_atv/player_atv
// Params 0, eflags: 0x6 linked
// Checksum 0x13453780, Offset: 0x108
// Size: 0x2c
function private preinit() {
    vehicle::add_main_callback("player_atv", &function_500291c4);
}

// Namespace player_atv/player_atv
// Params 0, eflags: 0x6 linked
// Checksum 0xca60385, Offset: 0x140
// Size: 0x32
function private function_500291c4() {
    self.var_93dc9da9 = "veh_atv_wall_imp";
    self.var_d6691161 = 200;
    self.var_5002d77c = 0.6;
}

