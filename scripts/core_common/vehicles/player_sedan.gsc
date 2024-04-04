// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace player_sedan;

// Namespace player_sedan/player_sedan
// Params 0, eflags: 0x5
// Checksum 0xdfe747c8, Offset: 0xb0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_sedan", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace player_sedan/player_sedan
// Params 0, eflags: 0x6 linked
// Checksum 0xa4791f91, Offset: 0x100
// Size: 0x2c
function private preinit() {
    vehicle::add_main_callback("player_sedan", &function_3ca3e81e);
}

// Namespace player_sedan/player_sedan
// Params 0, eflags: 0x6 linked
// Checksum 0x43070e46, Offset: 0x138
// Size: 0xaa
function private function_3ca3e81e() {
    self setmovingplatformenabled(1, 0);
    callback::function_d8abfc3d(#"hash_666d48a558881a36", &function_9c00eeec);
    callback::function_d8abfc3d(#"hash_55f29e0747697500", &function_9303f902);
    self.var_84fed14b = 40;
    self.var_d6691161 = 175;
    self.var_5d662124 = 2;
}

// Namespace player_sedan/player_sedan
// Params 1, eflags: 0x2 linked
// Checksum 0x7c9e00ed, Offset: 0x1f0
// Size: 0xc4
function function_9c00eeec(params) {
    player = params.player;
    if (!isdefined(player)) {
        return;
    }
    if (!isalive(self)) {
        return;
    }
    occupants = self getvehoccupants();
    if (!isdefined(occupants) || occupants.size <= 1) {
        self playsound(#"hash_50ca37222ffa9505");
        self vehicle::toggle_control_bone_group(1, 1);
    }
}

// Namespace player_sedan/player_sedan
// Params 1, eflags: 0x2 linked
// Checksum 0xee5a0fa9, Offset: 0x2c0
// Size: 0xbc
function function_9303f902(params) {
    player = params.player;
    if (!isdefined(player)) {
        return;
    }
    if (!isalive(self)) {
        return;
    }
    occupants = self getvehoccupants();
    if (!isdefined(occupants) || occupants.size == 0) {
        self playsound(#"hash_50ca37222ffa9505");
        self vehicle::toggle_control_bone_group(1, 0);
    }
}

