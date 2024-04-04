// Atian COD Tools GSC CW decompiler test
#using script_40fc784c60f9fa7b;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace player_truck_transport;

// Namespace player_truck_transport/player_truck_transport
// Params 0, eflags: 0x5
// Checksum 0xc7c6ac84, Offset: 0xc8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_truck_transport", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace player_truck_transport/player_truck_transport
// Params 0, eflags: 0x6 linked
// Checksum 0x5a2b2842, Offset: 0x118
// Size: 0x2c
function private preinit() {
    vehicle::add_main_callback("player_truck_transport", &function_3391a69f);
}

// Namespace player_truck_transport/player_truck_transport
// Params 0, eflags: 0x6 linked
// Checksum 0x585beff4, Offset: 0x150
// Size: 0x18c
function private function_3391a69f() {
    self setmovingplatformenabled(1, 0);
    self.var_96c0f900 = [];
    self.var_96c0f900[1] = 1000;
    self.var_4ca92b57 = 30;
    self.var_57371c71 = 60;
    self.var_84fed14b = 40;
    self.var_d6691161 = 175;
    self.var_5d662124 = 2;
    callback::function_d8abfc3d(#"hash_666d48a558881a36", &player_enter);
    callback::function_d8abfc3d(#"hash_55f29e0747697500", &player_exit);
    callback::function_d8abfc3d(#"hash_2c1cafe2a67dfef8", &function_379a71bd);
    callback::function_d8abfc3d(#"hash_551381cffdc79048", &player_vehicle::function_948f0984);
    self vehicle::toggle_control_bone_group(1, 1);
    self thread player_vehicle::function_5bce3f3a(1, 1000);
}

// Namespace player_truck_transport/player_truck_transport
// Params 1, eflags: 0x6 linked
// Checksum 0x37203768, Offset: 0x2e8
// Size: 0x44
function private function_135c137c(player) {
    if (!isdefined(self.var_9be5a571)) {
        self.var_9be5a571 = [];
    }
    if (!isdefined(self.var_3800be7e)) {
        self thread player_vehicle::function_53f7a11f(player);
    }
}

// Namespace player_truck_transport/player_truck_transport
// Params 0, eflags: 0x6 linked
// Checksum 0x62f080a, Offset: 0x338
// Size: 0x1a
function private function_3a991b11() {
    if (!isdefined(self.var_3800be7e)) {
        self.overridevehicledamage = undefined;
    }
}

// Namespace player_truck_transport/player_truck_transport
// Params 0, eflags: 0x6 linked
// Checksum 0xe34e96c, Offset: 0x360
// Size: 0x1c
function private function_e2ade94b() {
    self vehicle::toggle_control_bone_group(1, 0);
}

// Namespace player_truck_transport/player_truck_transport
// Params 0, eflags: 0x6 linked
// Checksum 0x62e80668, Offset: 0x388
// Size: 0x24
function private function_86c4506d() {
    self vehicle::toggle_control_bone_group(1, 1);
}

// Namespace player_truck_transport/player_truck_transport
// Params 1, eflags: 0x6 linked
// Checksum 0xe26a548b, Offset: 0x3b8
// Size: 0xc2
function private player_enter(params) {
    player = params.player;
    eventstruct = params.eventstruct;
    if (!isdefined(player)) {
        return;
    }
    if (isdefined(eventstruct.seat_index)) {
        switch (eventstruct.seat_index) {
        case 0:
            self function_135c137c(player);
            break;
        case 1:
            self function_e2ade94b();
            break;
        }
    }
}

// Namespace player_truck_transport/player_truck_transport
// Params 1, eflags: 0x6 linked
// Checksum 0x8ee41fcb, Offset: 0x488
// Size: 0xb2
function private player_exit(params) {
    eventstruct = params.eventstruct;
    player = params.player;
    if (isdefined(eventstruct.seat_index)) {
        switch (eventstruct.seat_index) {
        case 0:
            self function_3a991b11();
            break;
        case 1:
            self function_86c4506d();
            break;
        }
    }
}

// Namespace player_truck_transport/player_truck_transport
// Params 1, eflags: 0x6 linked
// Checksum 0x53e465b1, Offset: 0x548
// Size: 0x13a
function private function_379a71bd(params) {
    player = params.player;
    eventstruct = params.eventstruct;
    if (!isdefined(player)) {
        return;
    }
    if (isdefined(eventstruct.seat_index)) {
        switch (eventstruct.seat_index) {
        case 0:
            self function_135c137c(player);
            break;
        case 1:
            self function_e2ade94b();
            break;
        }
    }
    if (isdefined(eventstruct.old_seat_index)) {
        switch (eventstruct.old_seat_index) {
        case 0:
            self function_3a991b11();
            break;
        case 1:
            self function_86c4506d();
            break;
        }
    }
}

