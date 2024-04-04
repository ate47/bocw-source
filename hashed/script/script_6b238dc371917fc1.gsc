// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_ef91ed26;

// Namespace namespace_ef91ed26/namespace_ef91ed26
// Params 0, eflags: 0x5
// Checksum 0xc2290682, Offset: 0x108
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_f64d155dd9c41bd", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace namespace_ef91ed26/namespace_ef91ed26
// Params 0, eflags: 0x6 linked
// Checksum 0xc3a22b9a, Offset: 0x158
// Size: 0x2c
function private preinit() {
    vehicle::add_main_callback("gaz66_wz", &function_f9bdbd82);
}

// Namespace namespace_ef91ed26/namespace_ef91ed26
// Params 0, eflags: 0x6 linked
// Checksum 0x76be0dcf, Offset: 0x190
// Size: 0xc2
function private function_f9bdbd82() {
    callback::function_d8abfc3d(#"hash_666d48a558881a36", &function_8a413afb);
    callback::function_d8abfc3d(#"hash_2c1cafe2a67dfef8", &function_f7158176);
    self.var_93dc9da9 = "veh_truck_wall_imp";
    self.var_4ca92b57 = 30;
    self.var_57371c71 = 60;
    self.var_84fed14b = 30;
    self.var_d6691161 = 150;
    self.var_5d662124 = 2;
}

// Namespace namespace_ef91ed26/namespace_ef91ed26
// Params 1, eflags: 0x6 linked
// Checksum 0x7bbf547a, Offset: 0x260
// Size: 0x94
function private function_8a413afb(params) {
    player = params.player;
    seatindex = params.eventstruct.seat_index;
    if (seatindex == 0) {
        playfxontag("vehicle/fx8_exhaust_truck_cargo_startup_os", self, "tag_fx_exhaust");
        if (isdefined(player)) {
            player playrumbleonentity("jet_rumble");
        }
    }
}

// Namespace namespace_ef91ed26/namespace_ef91ed26
// Params 1, eflags: 0x6 linked
// Checksum 0x4eac7e21, Offset: 0x300
// Size: 0x94
function private function_f7158176(params) {
    player = params.player;
    seatindex = params.eventstruct.seat_index;
    if (seatindex == 0) {
        playfxontag("vehicle/fx8_exhaust_truck_cargo_startup_os", self, "tag_fx_exhaust");
        if (isdefined(player)) {
            player playrumbleonentity("jet_rumble");
        }
    }
}

