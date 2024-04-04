// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_6e44b0fa;

// Namespace namespace_6e44b0fa/namespace_6e44b0fa
// Params 0, eflags: 0x5
// Checksum 0x96e1ef0e, Offset: 0x108
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_5b215c4eff8f5759", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace namespace_6e44b0fa/namespace_6e44b0fa
// Params 0, eflags: 0x6 linked
// Checksum 0xdf1feafe, Offset: 0x158
// Size: 0x2c
function private preinit() {
    vehicle::add_main_callback("hemtt_wz", &function_7cb966e4);
}

// Namespace namespace_6e44b0fa/namespace_6e44b0fa
// Params 0, eflags: 0x6 linked
// Checksum 0xb1ba4c97, Offset: 0x190
// Size: 0xc2
function private function_7cb966e4() {
    callback::function_d8abfc3d(#"hash_666d48a558881a36", &function_3fbda54b);
    callback::function_d8abfc3d(#"hash_2c1cafe2a67dfef8", &function_4a8e844a);
    self.var_93dc9da9 = "veh_truck_wall_imp";
    self.var_4ca92b57 = 30;
    self.var_57371c71 = 60;
    self.var_84fed14b = 30;
    self.var_d6691161 = 150;
    self.var_5d662124 = 2;
}

// Namespace namespace_6e44b0fa/namespace_6e44b0fa
// Params 1, eflags: 0x6 linked
// Checksum 0x7bbf547a, Offset: 0x260
// Size: 0x94
function private function_3fbda54b(params) {
    player = params.player;
    seatindex = params.eventstruct.seat_index;
    if (seatindex == 0) {
        playfxontag("vehicle/fx8_exhaust_truck_cargo_startup_os", self, "tag_fx_exhaust");
        if (isdefined(player)) {
            player playrumbleonentity("jet_rumble");
        }
    }
}

// Namespace namespace_6e44b0fa/namespace_6e44b0fa
// Params 1, eflags: 0x6 linked
// Checksum 0x4eac7e21, Offset: 0x300
// Size: 0x94
function private function_4a8e844a(params) {
    player = params.player;
    seatindex = params.eventstruct.seat_index;
    if (seatindex == 0) {
        playfxontag("vehicle/fx8_exhaust_truck_cargo_startup_os", self, "tag_fx_exhaust");
        if (isdefined(player)) {
            player playrumbleonentity("jet_rumble");
        }
    }
}

