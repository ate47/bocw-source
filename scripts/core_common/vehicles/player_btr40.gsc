// Atian COD Tools GSC CW decompiler test
#using script_40fc784c60f9fa7b;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace player_btr40;

// Namespace player_btr40/player_btr40
// Params 0, eflags: 0x5
// Checksum 0xa656ddb, Offset: 0xb8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_btr40", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace player_btr40/player_btr40
// Params 0, eflags: 0x6 linked
// Checksum 0x6b7e5b7b, Offset: 0x108
// Size: 0x2c
function private preinit() {
    vehicle::add_main_callback("player_btr40", &function_a5a8e361);
}

// Namespace player_btr40/player_btr40
// Params 0, eflags: 0x6 linked
// Checksum 0x458f152f, Offset: 0x140
// Size: 0x194
function private function_a5a8e361() {
    self setmovingplatformenabled(1, 0);
    callback::function_d8abfc3d(#"hash_666d48a558881a36", &function_658070e);
    callback::function_d8abfc3d(#"hash_55f29e0747697500", &function_b3042635);
    callback::function_d8abfc3d(#"hash_2c1cafe2a67dfef8", &function_32ff31aa);
    self.var_96c0f900 = [];
    self.var_96c0f900[1] = 1000;
    self.var_4ca92b57 = 30;
    self.var_57371c71 = 60;
    self.var_84fed14b = 40;
    self.var_d6691161 = 175;
    self.var_5d662124 = 2;
    self vehicle::toggle_control_bone_group(1, 1);
    self vehicle::toggle_control_bone_group(2, 1);
    self vehicle::toggle_control_bone_group(3, 1);
    self thread player_vehicle::function_5bce3f3a(1, 1000);
}

// Namespace player_btr40/player_btr40
// Params 1, eflags: 0x2 linked
// Checksum 0x4cc74412, Offset: 0x2e0
// Size: 0x94
function function_658070e(params) {
    player = params.player;
    eventstruct = params.eventstruct;
    if (!isdefined(player)) {
        return;
    }
    if (eventstruct.seat_index >= 1 && eventstruct.seat_index <= 4) {
        self vehicle::toggle_control_bone_group(eventstruct.seat_index - 1 + 1, 0);
    }
}

// Namespace player_btr40/player_btr40
// Params 1, eflags: 0x2 linked
// Checksum 0x769f5cce, Offset: 0x380
// Size: 0x7c
function function_b3042635(params) {
    eventstruct = params.eventstruct;
    if (eventstruct.seat_index >= 1 && eventstruct.seat_index <= 4) {
        self vehicle::toggle_control_bone_group(eventstruct.seat_index - 1 + 1, 1);
    }
}

// Namespace player_btr40/player_btr40
// Params 1, eflags: 0x2 linked
// Checksum 0x37931d8a, Offset: 0x408
// Size: 0xec
function function_32ff31aa(params) {
    player = params.player;
    eventstruct = params.eventstruct;
    if (!isdefined(player)) {
        return;
    }
    if (eventstruct.seat_index >= 1 && eventstruct.seat_index <= 4) {
        self vehicle::toggle_control_bone_group(eventstruct.seat_index - 1 + 1, 0);
    }
    if (eventstruct.old_seat_index >= 1 && eventstruct.old_seat_index <= 4) {
        self vehicle::toggle_control_bone_group(eventstruct.old_seat_index - 1 + 1, 1);
    }
}

