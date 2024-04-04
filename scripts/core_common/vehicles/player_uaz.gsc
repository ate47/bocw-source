// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace player_uaz;

// Namespace player_uaz/player_uaz
// Params 0, eflags: 0x5
// Checksum 0x218b77a5, Offset: 0xa8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_uaz", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace player_uaz/player_uaz
// Params 0, eflags: 0x6 linked
// Checksum 0xde3def72, Offset: 0xf8
// Size: 0x2c
function private preinit() {
    vehicle::add_main_callback("player_uaz", &function_bc02ac38);
}

// Namespace player_uaz/player_uaz
// Params 0, eflags: 0x6 linked
// Checksum 0x7560c554, Offset: 0x130
// Size: 0x92
function private function_bc02ac38() {
    callback::function_d8abfc3d(#"hash_666d48a558881a36", &function_5433bc44);
    callback::function_d8abfc3d(#"hash_55f29e0747697500", &function_b6eaa74f);
    self.var_84fed14b = 40;
    self.var_d6691161 = 175;
    self.var_5d662124 = 2;
}

// Namespace player_uaz/player_uaz
// Params 1, eflags: 0x2 linked
// Checksum 0x94dbc6ed, Offset: 0x1d0
// Size: 0x2c
function function_5433bc44(params) {
    player = params.player;
    if (!isdefined(player)) {
        return;
    }
}

// Namespace player_uaz/player_uaz
// Params 1, eflags: 0x2 linked
// Checksum 0xa1126c95, Offset: 0x208
// Size: 0x48
function function_b6eaa74f(params) {
    player = params.player;
    if (!isdefined(player)) {
        return;
    }
    if (!isalive(self)) {
        return;
    }
}

