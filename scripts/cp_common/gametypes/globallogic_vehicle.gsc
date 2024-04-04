// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\util.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\turret_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace vehicles;

// Namespace vehicles/globallogic_vehicle
// Params 0, eflags: 0x5
// Checksum 0x1b522ce2, Offset: 0x130
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"globallogic_vehicle", &preinit, undefined, undefined, undefined);
}

// Namespace vehicles/globallogic_vehicle
// Params 0, eflags: 0x6 linked
// Checksum 0x476d1fa6, Offset: 0x178
// Size: 0x64
function private preinit() {
    if (!isdefined(world.var_f6fb45f7)) {
        world.var_f6fb45f7 = [];
    }
    callback::on_connect(&function_80238885);
    callback::on_connect(&function_d521a2c1);
}

// Namespace vehicles/globallogic_vehicle
// Params 0, eflags: 0x6 linked
// Checksum 0x70ecf6c2, Offset: 0x1e8
// Size: 0x188
function private function_80238885() {
    level endon(#"hash_3d8aca70026bca9e");
    self endon(#"death");
    while (true) {
        waitresult = self waittill(#"enter_vehicle");
        var_80730518 = waitresult.vehicle;
        self.var_80730518 = var_80730518;
        self.canbemeleed = 0;
        if (isbot(self)) {
            self.seat_index = waitresult.seat_index;
            w_weapon = var_80730518 turret::get_weapon(self.seat_index);
            if (w_weapon != level.weaponnone) {
                var_80730518 turret::enable(self.seat_index);
            }
        }
        var_80730518 val::reset(#"player_vehicle", "ignoreme");
        self val::set(#"player_vehicle", "ignoreme");
        if (is_true(var_80730518.var_932a203f)) {
            var_80730518 makevehicleunusable();
        }
    }
}

// Namespace vehicles/globallogic_vehicle
// Params 0, eflags: 0x6 linked
// Checksum 0xa77bff9e, Offset: 0x378
// Size: 0x1f0
function private function_d521a2c1() {
    self endon(#"death");
    while (true) {
        waitresult = self waittill(#"exit_vehicle");
        var_80730518 = waitresult.vehicle;
        self.canbemeleed = 1;
        if (isalive(self)) {
            self.var_80730518 = undefined;
            if (var_80730518.scriptvehicletype === "player_hunter" && isalive(var_80730518)) {
                var_80730518 makevehicleusable();
            }
            if (isbot(self)) {
                if (isdefined(self.seat_index) && self.seat_index >= 0) {
                    w_weapon = var_80730518 turret::get_weapon(self.seat_index);
                    if (w_weapon != level.weaponnone) {
                        var_80730518 turret::disable(self.seat_index);
                    }
                    self.seat_index = -1;
                }
            }
        } else if (isalive(var_80730518)) {
        }
        if (isalive(var_80730518)) {
            var_80730518 val::set(#"player_vehicle", "ignoreme");
        }
        self val::reset(#"player_vehicle", "ignoreme");
    }
}

// Namespace vehicles/globallogic_vehicle
// Params 2, eflags: 0x0
// Checksum 0x2e98078d, Offset: 0x570
// Size: 0xfc
function function_5310fa38(vh_target, n_seat) {
    if (isbot(self) && (is_true(vh_target.var_3a60b519) || self isplayinganimscripted())) {
        return false;
    }
    if (isdefined(vh_target) && isalive(self) && is_true(vh_target function_dcef0ba1(n_seat)) && !vh_target isvehicleseatoccupied(n_seat) && !isdefined(self._scene_object)) {
        return true;
    }
    return false;
}

