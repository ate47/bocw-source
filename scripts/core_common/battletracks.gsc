// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace battletracks;

// Namespace battletracks/battletracks
// Params 0, eflags: 0x5
// Checksum 0x3994545d, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"battletracks", &preinit, undefined, undefined, undefined);
}

// Namespace battletracks/battletracks
// Params 0, eflags: 0x6 linked
// Checksum 0x632f519, Offset: 0x118
// Size: 0x34
function private preinit() {
    clientfield::register("vehicle", "battletrack_active", 1, 1, "int");
}

// Namespace battletracks/enter_vehicle
// Params 1, eflags: 0x24
// Checksum 0x898433b9, Offset: 0x158
// Size: 0xac
function private event_handler[enter_vehicle] function_860f46d6(eventstruct) {
    if (isplayer(self)) {
        vehicle = self getvehicleoccupied();
        if (eventstruct.seat_index == 0 || isdefined(vehicle.var_260e3593) && vehicle.var_260e3593 == eventstruct.seat_index) {
            vehicle function_fe45d0ae();
            self function_afb0648d(vehicle);
        }
    }
}

// Namespace battletracks/exit_vehicle
// Params 1, eflags: 0x24
// Checksum 0x35e4c3da, Offset: 0x210
// Size: 0x8c
function private event_handler[exit_vehicle] function_c8e0f88d(eventstruct) {
    if (isplayer(self)) {
        if (eventstruct.seat_index == 0 || isdefined(eventstruct.vehicle.var_260e3593) && eventstruct.vehicle.var_260e3593 == eventstruct.seat_index) {
            eventstruct.vehicle function_982d5b1();
        }
    }
}

// Namespace battletracks/change_seat
// Params 1, eflags: 0x24
// Checksum 0x65362d09, Offset: 0x2a8
// Size: 0x1ac
function private event_handler[change_seat] function_63d4043f(eventstruct) {
    if (isplayer(self)) {
        if (eventstruct.seat_index == 0 || isdefined(eventstruct.vehicle.var_260e3593) && eventstruct.vehicle.var_260e3593 == eventstruct.seat_index) {
            if (!(eventstruct.old_seat_index == 0 || isdefined(eventstruct.vehicle.var_260e3593) && eventstruct.vehicle.var_260e3593 == eventstruct.old_seat_index)) {
                eventstruct.vehicle function_fe45d0ae();
                self function_afb0648d(eventstruct.vehicle);
            }
            return;
        }
        if (eventstruct.old_seat_index == 0 || isdefined(eventstruct.vehicle.var_260e3593) && eventstruct.vehicle.var_260e3593 == eventstruct.old_seat_index) {
            if (!(eventstruct.seat_index == 0 || isdefined(eventstruct.vehicle.var_260e3593) && eventstruct.vehicle.var_260e3593 == eventstruct.seat_index)) {
                eventstruct.vehicle function_982d5b1();
            }
        }
    }
}

// Namespace battletracks/vehicle_killed
// Params 1, eflags: 0x24
// Checksum 0x4b554a66, Offset: 0x460
// Size: 0x24
function private event_handler[vehicle_killed] function_c5f9a554(*eventstruct) {
    self function_fe45d0ae();
}

// Namespace battletracks/event_35559816
// Params 1, eflags: 0x24
// Checksum 0x705376e6, Offset: 0x490
// Size: 0x74
function private event_handler[event_35559816] function_35559816(eventstruct) {
    if (isvehicle(eventstruct.vehicle)) {
        if (isdefined(eventstruct.vehicle.battletrack_active)) {
            eventstruct.vehicle function_fe45d0ae();
            return;
        }
        self function_afb0648d(eventstruct.vehicle);
    }
}

// Namespace battletracks/event_29e6e4b2
// Params 1, eflags: 0x24
// Checksum 0xf5f14192, Offset: 0x510
// Size: 0x44
function private event_handler[event_29e6e4b2] function_29e6e4b2(eventstruct) {
    if (isvehicle(eventstruct.vehicle)) {
        self function_afb0648d(eventstruct.vehicle);
    }
}

// Namespace battletracks/battletracks
// Params 0, eflags: 0x6 linked
// Checksum 0xb5b06c88, Offset: 0x560
// Size: 0xae
function private function_982d5b1() {
    if (!sessionmodeiscampaigngame()) {
        self endon(#"death");
        self endon(#"hash_10f5e7a492971517");
        wait(getdvarint(#"hash_69d64509de665052", 5));
        if (isdefined(self.battletrack_active)) {
            self clientfield::set("battletrack_active", 0);
            self stopsound(self.battletrack_active);
            self.battletrack_active = undefined;
        }
    }
}

// Namespace battletracks/battletracks
// Params 0, eflags: 0x2 linked
// Checksum 0x820a0774, Offset: 0x618
// Size: 0x7e
function function_fe45d0ae() {
    if (!sessionmodeiscampaigngame()) {
        self notify(#"hash_10f5e7a492971517");
        if (isdefined(self.battletrack_active)) {
            self clientfield::set("battletrack_active", 0);
            self stopsound(self.battletrack_active);
            self.battletrack_active = undefined;
        }
    }
}

// Namespace battletracks/battletracks
// Params 1, eflags: 0x6 linked
// Checksum 0x4d2f6162, Offset: 0x6a0
// Size: 0x1ac
function private function_afb0648d(vehicle) {
    if (!sessionmodeiscampaigngame()) {
        if (self isinvehicle()) {
            vehicle function_fe45d0ae();
            vehicle.battletrack_active = undefined;
            if (isdefined(vehicle.vehicleassembly)) {
                var_e273c985 = self function_18df0fba(vehicle.vehicleassembly);
                var_45750595 = getscriptbundle(var_e273c985);
                if (isdefined(var_45750595)) {
                    if (!isdefined(self.var_7b87b98c)) {
                        self.var_7b87b98c = 0;
                    } else {
                        self.var_7b87b98c = (self.var_7b87b98c + 1) % var_45750595.var_50c23eb3.size;
                    }
                    var_7450e8ac = var_45750595.var_50c23eb3[self.var_7b87b98c].track;
                    if (isdefined(var_7450e8ac)) {
                        var_3ee3065f = getscriptbundle(var_7450e8ac);
                        if (isdefined(var_3ee3065f) && isdefined(var_3ee3065f.var_921a9ffa)) {
                            vehicle.battletrack_active = var_3ee3065f.var_921a9ffa;
                            vehicle playsoundwithnotify(vehicle.battletrack_active, "battletrack_complete");
                            vehicle clientfield::set("battletrack_active", 1);
                        }
                    }
                }
            }
        }
    }
}

