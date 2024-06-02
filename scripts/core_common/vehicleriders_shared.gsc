// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\hostmigration_shared.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace vehicle;

// Namespace vehicle
// Method(s) 2 Total 2
class class_358332cc {

    var doorstatus;
    var riders;
    var var_3acc1a95;
    var var_4301b21d;
    var var_709c0a6f;
    var var_9e2a2132;
    var var_cc0d1da;
    var var_dad0959b;

    // Namespace class_358332cc/vehicleriders_shared
    // Params 0, eflags: 0xa linked
    // Checksum 0xff9616dc, Offset: 0xd20
    // Size: 0x62
    constructor() {
        riders = [];
        var_4301b21d = 0;
        var_3acc1a95 = 0;
        var_9e2a2132 = 0;
        var_709c0a6f = 0;
        var_dad0959b = 0;
        var_cc0d1da = 0;
        doorstatus = [];
    }

}

// Namespace vehicle/vehicleriders_shared
// Params 0, eflags: 0x1
// Checksum 0x1c555f5e, Offset: 0x388
// Size: 0x6c
function autoexec init() {
    function_d64f1d30();
    callback::on_vehicle_spawned(&on_vehicle_spawned);
    callback::on_vehicle_killed(&on_vehicle_killed);
    level thread function_af0a6edf();
}

// Namespace vehicle/vehicleriders_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xb450f782, Offset: 0x400
// Size: 0x378
function private function_d64f1d30() {
    a_registered_fields = [];
    foreach (bundle in getscriptbundles("vehicleriders")) {
        foreach (object in bundle.objects) {
            if (isdefined(object.vehicleenteranim)) {
                array::add(a_registered_fields, object.position + "_enter", 0);
            }
            if (isdefined(object.vehicleexitanim)) {
                array::add(a_registered_fields, object.position + "_exit", 0);
                array::add(a_registered_fields, object.position + "_exit_restore", 0);
            }
            if (isdefined(object.var_cbf50c1d)) {
                array::add(a_registered_fields, object.position + "_exit_combat", 0);
                array::add(a_registered_fields, object.position + "_exit_combat_restore", 0);
            }
            if (isdefined(object.vehiclecloseanim)) {
                array::add(a_registered_fields, object.position + "_close", 0);
            }
            if (isdefined(object.var_b7605392)) {
                array::add(a_registered_fields, object.position + "_close_combat", 0);
            }
            if (isdefined(object.vehicleriderdeathanim)) {
                array::add(a_registered_fields, object.position + "_death", 0);
            }
        }
    }
    foreach (str_clientfield in a_registered_fields) {
        clientfield::register("vehicle", str_clientfield, 1, 1, "counter");
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf53eda71, Offset: 0x780
// Size: 0x4c
function function_196797c9(vehicle) {
    assert(isvehicle(vehicle));
    if (isdefined(vehicle.vehicleridersbundle)) {
        return true;
    }
    return false;
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x4034bf1d, Offset: 0x7d8
// Size: 0xc
function private function_810a3de5(*vehicle) {
    
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xb22291fd, Offset: 0x7f0
// Size: 0xde
function private function_41cf7b1d(vehicle) {
    assert(isvehicle(vehicle));
    var_4301b21d = function_999240f5(vehicle);
    bundle = getscriptbundle(vehicle.vehicleridersbundle);
    for (seat = 0; seat < var_4301b21d; seat++) {
        position = bundle.objects[seat].position;
        if (issubstr(position, "driver")) {
            return true;
        }
    }
    return false;
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xa193a85f, Offset: 0x8d8
// Size: 0xd4
function private function_f7ce77b(vehicle) {
    assert(isvehicle(vehicle));
    var_4301b21d = function_999240f5(vehicle);
    bundle = getscriptbundle(vehicle.vehicleridersbundle);
    for (seat = 0; seat < var_4301b21d; seat++) {
        position = bundle.objects[seat].position;
        if (position == "passenger1") {
            return true;
        }
    }
    return false;
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xb7118bc, Offset: 0x9b8
// Size: 0xd4
function private function_2453a4a2(vehicle) {
    assert(isvehicle(vehicle));
    var_4301b21d = function_999240f5(vehicle);
    bundle = getscriptbundle(vehicle.vehicleridersbundle);
    for (seat = 0; seat < var_4301b21d; seat++) {
        position = bundle.objects[seat].position;
        if (position == "gunner1") {
            return true;
        }
    }
    return false;
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xf12c33f6, Offset: 0xa98
// Size: 0xd4
function private function_6fd51bb0(vehicle) {
    assert(isvehicle(vehicle));
    var_4301b21d = function_999240f5(vehicle);
    bundle = getscriptbundle(vehicle.vehicleridersbundle);
    for (seat = 0; seat < var_4301b21d; seat++) {
        position = bundle.objects[seat].position;
        if (position == "gunner2") {
            return true;
        }
    }
    return false;
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xd9b625aa, Offset: 0xb78
// Size: 0xe6
function private function_72b503cc(vehicle) {
    assert(isvehicle(vehicle));
    var_4301b21d = function_999240f5(vehicle);
    var_3acc1a95 = 0;
    bundle = getscriptbundle(vehicle.vehicleridersbundle);
    for (seat = 0; seat < var_4301b21d; seat++) {
        position = bundle.objects[seat].position;
        if (issubstr(position, "crew")) {
            var_3acc1a95++;
        }
    }
    return var_3acc1a95;
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x1ecd538, Offset: 0xc68
// Size: 0xae
function function_999240f5(vehicle) {
    assert(isvehicle(vehicle));
    if (!function_196797c9(vehicle)) {
        return 0;
    }
    assert(isdefined(vehicle.vehicleridersbundle));
    var_4301b21d = getscriptbundle(vehicle.vehicleridersbundle).var_4301b21d;
    if (isdefined(var_4301b21d)) {
        return var_4301b21d;
    }
    return 0;
}

// Namespace vehicle/vehicleriders_shared
// Params 2, eflags: 0x6 linked
// Checksum 0x1bc5ee05, Offset: 0xe28
// Size: 0xd2
function private function_faad1dd1(vehicle, position) {
    if (isdefined(vehicle.var_761c973.doorstatus[position])) {
        switch (vehicle.var_761c973.doorstatus[position]) {
        case 1:
            vehicle clientfield::increment(position + "_exit_restore", 1);
            break;
        case 2:
            vehicle clientfield::increment(position + "_exit_combat_restore", 1);
            break;
        }
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x2cfca903, Offset: 0xf08
// Size: 0x174
function private function_af0a6edf() {
    while (true) {
        level waittill(#"save_restore");
        waitframe(1);
        a_vehicles = getentarraybytype(12);
        foreach (vehicle in a_vehicles) {
            if (function_196797c9(vehicle)) {
                function_faad1dd1(vehicle, "driver");
                function_faad1dd1(vehicle, "passenger1");
                function_faad1dd1(vehicle, "gunner1");
                function_faad1dd1(vehicle, "gunner2");
                function_faad1dd1(vehicle, "crew");
            }
        }
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x81446a9b, Offset: 0x1088
// Size: 0x500
function private on_vehicle_spawned() {
    self endon(#"death");
    assert(isvehicle(self));
    if (!function_196797c9(self)) {
        return;
    }
    function_810a3de5(self);
    self thread function_8160dc33();
    var_4301b21d = function_999240f5(self);
    if (!isdefined(var_4301b21d) || var_4301b21d <= 0) {
        return;
    }
    self.var_761c973 = new class_358332cc();
    self.var_761c973.riders = [];
    self.var_761c973.var_4301b21d = var_4301b21d;
    self flag::init("driver_occupied", 0);
    self flag::init("passenger1_occupied", 0);
    self flag::init("gunner1_occupied", 0);
    self flag::init("gunner2_occupied", 0);
    if (function_41cf7b1d(self)) {
        self.var_761c973.var_9e2a2132 = 1;
    }
    if (function_f7ce77b(self)) {
        self.var_761c973.var_709c0a6f = 1;
    }
    if (function_2453a4a2(self)) {
        self.var_761c973.var_dad0959b = 1;
    }
    if (function_6fd51bb0(self)) {
        self.var_761c973.var_cc0d1da = 1;
    }
    var_3acc1a95 = function_72b503cc(self);
    self.var_761c973.var_3acc1a95 = var_3acc1a95;
    for (position = 1; position <= 9; position++) {
        flag::init("crew" + position + "_occupied", 0);
    }
    if (isdefined(self.script_vehicleride)) {
        a_spawners = getactorspawnerarray(self.script_vehicleride, "script_vehicleride");
        foreach (sp in a_spawners) {
            if (isdefined(sp)) {
                if (self.spawner !== sp) {
                    ai_rider = sp spawner::spawn(1);
                    if (isdefined(ai_rider)) {
                        seat = undefined;
                        if (isdefined(ai_rider.script_startingposition) && ai_rider.script_startingposition != "undefined") {
                            seat = ai_rider.script_startingposition;
                            if (issubstr(seat, "crew")) {
                                seat = "crew";
                            } else if (issubstr(seat, "pass")) {
                                seat = "passenger1";
                            } else if (issubstr(seat, "driver")) {
                                seat = "driver";
                            } else if (seat == "gunner") {
                                seat = "gunner1";
                            } else if (issubstr(seat, "gunner")) {
                            } else {
                                seat = undefined;
                            }
                            if (isdefined(seat)) {
                                ai_rider get_in(ai_rider, self, seat, 1);
                            }
                            continue;
                        }
                        ai_rider get_in(ai_rider, self, undefined, 1);
                    }
                }
            }
        }
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xc42fcd1c, Offset: 0x1590
// Size: 0x198
function private function_8160dc33() {
    self endon(#"death");
    var_b343ef50 = length(self.velocity);
    var_416fb9cc = 0;
    var_a2def763 = 0;
    var_d28d4ba5 = 0;
    notifytime = 0;
    while (true) {
        waitframe(1);
        vehiclespeed = length(self.velocity);
        var_97f17bbd = vehiclespeed - var_b343ef50;
        var_db4c6b3d = var_97f17bbd - var_416fb9cc;
        if (util::time_has_passed(notifytime, 0.5) || var_db4c6b3d > 0 != var_d28d4ba5 > 0) {
            if (var_db4c6b3d > 30 && var_97f17bbd > 0) {
                self notify(#"vehicle_starting");
                notifytime = gettime();
                var_d28d4ba5 = var_db4c6b3d;
            } else if (var_db4c6b3d < -30 && var_97f17bbd < 0) {
                self notify(#"vehicle_stopping");
                notifytime = gettime();
                var_d28d4ba5 = var_db4c6b3d;
            }
        }
        var_b343ef50 = vehiclespeed;
        var_416fb9cc = var_97f17bbd;
        var_a2def763 = var_db4c6b3d;
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x93c9a73c, Offset: 0x1730
// Size: 0xe6
function private function_e1008fbd(vehicle) {
    assert(isdefined(vehicle));
    assert(isdefined(vehicle.var_761c973));
    assert(isdefined(vehicle.var_761c973.var_3acc1a95));
    for (position = 1; position <= vehicle.var_761c973.var_3acc1a95; position++) {
        if (!vehicle flag::get("crew" + position + "_occupied")) {
            return ("crew" + position);
        }
    }
    return "none";
}

// Namespace vehicle/vehicleriders_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xc08067fa, Offset: 0x1820
// Size: 0xa4
function private function_2cec1af6(vehicle, seat) {
    flag = seat + "_occupied";
    assert(vehicle flag::exists(flag));
    assert(!vehicle flag::get(flag));
    vehicle flag::set(flag);
}

// Namespace vehicle/vehicleriders_shared
// Params 2, eflags: 0x4
// Checksum 0xc85013cc, Offset: 0x18d0
// Size: 0xa4
function private function_2e28cc0(vehicle, seat) {
    flag = seat + "_occupied";
    assert(vehicle flag::exists(flag));
    assert(!vehicle flag::get(flag));
    vehicle flag::clear(flag);
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xff6574e1, Offset: 0x1980
// Size: 0x62
function get_human_bundle(assertifneeded = 1) {
    if (assertifneeded) {
        assert(isdefined(self.vehicleridersbundle), "<unknown string>");
    }
    return getscriptbundle(self.vehicleridersbundle);
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x944049c4, Offset: 0x19f0
// Size: 0x62
function get_robot_bundle(assertifneeded = 1) {
    if (assertifneeded) {
        assert(isdefined(self.vehicleridersrobotbundle), "<unknown string>");
    }
    return getscriptbundle(self.vehicleridersrobotbundle);
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x7f8c3a0a, Offset: 0x1a60
// Size: 0x62
function get_warlord_bundle(assertifneeded = 1) {
    if (assertifneeded) {
        assert(isdefined(self.vehicleriderswarlordbundle), "<unknown string>");
    }
    return getscriptbundle(self.vehicleriderswarlordbundle);
}

// Namespace vehicle/vehicleriders_shared
// Params 2, eflags: 0x6 linked
// Checksum 0x80f5327d, Offset: 0x1ad0
// Size: 0x172
function private function_e84837df(ai, vehicle) {
    assert(isactor(ai) || function_8d8e91af(ai));
    assert(isdefined(ai.archetype));
    assert(function_196797c9(vehicle));
    if (ai.archetype == #"robot") {
        return vehicle get_robot_bundle();
    }
    if (ai.archetype == #"warlord") {
        return vehicle get_warlord_bundle();
    }
    assert(ai.archetype == #"human" || ai.archetype == #"civilian", "<unknown string>" + ai.archetype);
    return vehicle get_human_bundle();
}

// Namespace vehicle/vehicleriders_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x7e48158c, Offset: 0x1c50
// Size: 0x10e
function function_b9342b7d(ai, vehicle, seat) {
    assert(isactor(ai) || function_8d8e91af(ai));
    bundle = undefined;
    bundle = vehicle function_e84837df(ai, vehicle);
    foreach (s_rider in bundle.objects) {
        if (s_rider.position == seat) {
            return s_rider;
        }
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 3, eflags: 0x6 linked
// Checksum 0xa3957e73, Offset: 0x1d68
// Size: 0x2a4
function private init_rider(ai, vehicle, seat) {
    assert(isdefined(vehicle));
    assert(isactor(ai) || function_8d8e91af(ai));
    assert(!isdefined(ai.var_ec30f5da));
    ai.var_ec30f5da = function_b9342b7d(ai, vehicle, seat);
    ai.vehicle = vehicle;
    ai.var_5574287b = seat;
    if (isdefined(ai.var_ec30f5da.rideanim) && !isanimlooping(ai.var_ec30f5da.rideanim)) {
        assertmsg("<unknown string>" + seat + "<unknown string>" + function_9e72a96(ai.vehicle.vehicletype) + "<unknown string>");
    }
    if (isdefined(ai.var_ec30f5da.aligntag) && !isdefined(ai.vehicle gettagorigin(ai.var_ec30f5da.aligntag))) {
        assertmsg("<unknown string>" + seat + "<unknown string>" + function_9e72a96(ai.vehicle.vehicletype) + "<unknown string>" + ai.var_ec30f5da.aligntag + "<unknown string>");
    }
    if (!ai flag::exists("in_vehicle")) {
        ai flag::init("in_vehicle");
    }
    if (!ai flag::exists("riding_vehicle")) {
        ai flag::init("riding_vehicle");
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 3, eflags: 0x0
// Checksum 0x93ba1b6b, Offset: 0x2018
// Size: 0x52e
function fill_riders(a_ai, vehicle, seat) {
    assert(isvehicle(vehicle));
    if (!function_196797c9(vehicle)) {
        assertmsg("<unknown string>" + function_9e72a96(vehicle.vehicletype) + "<unknown string>");
        return;
    }
    if (isdefined(seat)) {
        assert(seat == "<unknown string>" || seat == "<unknown string>" || seat == "<unknown string>" || seat == "<unknown string>" || seat == "<unknown string>");
    } else {
        seat = "all";
    }
    if (!isalive(vehicle)) {
        return;
    }
    a_ai_remaining = arraycopy(a_ai);
    switch (seat) {
    case #"driver":
        if (get_in(a_ai[0], vehicle, "driver", 0)) {
            arrayremovevalue(a_ai_remaining, a_ai[0]);
        }
        break;
    case #"passenger1":
        if (get_in(a_ai[0], vehicle, "passenger1", 0)) {
            arrayremovevalue(a_ai_remaining, a_ai[0]);
        }
        break;
    case #"gunner1":
        if (get_in(a_ai[0], vehicle, "gunner1", 0)) {
            arrayremovevalue(a_ai_remaining, a_ai[0]);
        }
        break;
    case #"gunner2":
        if (get_in(a_ai[0], vehicle, "gunner2", 0)) {
            arrayremovevalue(a_ai_remaining, a_ai[0]);
        }
        break;
    case #"crew":
        foreach (ai in a_ai) {
            if (get_in(ai, vehicle, "crew", 0)) {
                arrayremovevalue(a_ai_remaining, ai);
            }
        }
        break;
    case #"all":
        index = 0;
        if (get_in(a_ai[index], vehicle, "driver", 0)) {
            arrayremovevalue(a_ai_remaining, a_ai[index]);
            index++;
        }
        if (get_in(a_ai[index], vehicle, "passenger1", 0)) {
            arrayremovevalue(a_ai_remaining, a_ai[index]);
            index++;
        }
        for (i = index; i < a_ai.size; i++) {
            if (get_in(a_ai[index], vehicle, "crew", 0)) {
                arrayremovevalue(a_ai_remaining, a_ai[index]);
                index++;
            }
        }
        if (get_in(a_ai[index], vehicle, "gunner1", 0)) {
            arrayremovevalue(a_ai_remaining, a_ai[index]);
        }
        if (get_in(a_ai[index], vehicle, "gunner2", 0)) {
            arrayremovevalue(a_ai_remaining, a_ai[index]);
        }
        break;
    }
    return a_ai_remaining;
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc447d2f4, Offset: 0x2550
// Size: 0x40a
function unload(seat) {
    self endon(#"death");
    assert(isvehicle(self));
    if (!function_196797c9(self)) {
        assertmsg("<unknown string>" + function_9e72a96(self.vehicletype) + "<unknown string>");
        return;
    }
    if (isdefined(seat) && seat != "undefined") {
        if (seat == "passengers") {
            seat = "passenger1";
        }
        assert(seat == "<unknown string>" || seat == "<unknown string>" || seat == "<unknown string>" || seat == "<unknown string>" || seat == "<unknown string>" || seat == "<unknown string>" || seat == "<unknown string>");
    } else {
        seat = "all";
    }
    if (!isdefined(self.var_761c973.riders)) {
        return;
    }
    function_1eaaceab(self.var_761c973.riders, 1);
    if (self.var_761c973.riders.size <= 0) {
        return;
    }
    var_4301b21d = self.var_761c973.var_4301b21d;
    assert(var_4301b21d > 0);
    self.var_761c973.var_e30918cc = [];
    switch (seat) {
    case #"driver":
        self thread function_114d7bd3(self);
        break;
    case #"passenger1":
        self thread function_b56639f2(self);
        break;
    case #"gunner1":
        self thread function_2ef91b74(self);
        break;
    case #"gunner2":
        self thread function_da0917a4(self);
        break;
    case #"gunners":
        self thread function_2ef91b74(self);
        self thread function_da0917a4(self);
        break;
    case #"crew":
        self thread function_2ca26543(self);
        break;
    default:
        self thread function_114d7bd3(self);
        self thread function_b56639f2(self);
        self thread function_2ca26543(self);
        self thread function_2ef91b74(self);
        self thread function_da0917a4(self);
        break;
    }
    if (self.var_761c973.var_e30918cc.size > 0) {
        self waittill(#"unloaded");
    }
    self.var_761c973.var_e30918cc = undefined;
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x1db98b94, Offset: 0x2968
// Size: 0x1bc
function private function_114d7bd3(vehicle) {
    if (!vehicle.var_761c973.var_9e2a2132) {
        return;
    }
    if (vehicle flag::get("driver_occupied") && isdefined(vehicle.var_761c973.riders[#"driver"]) && isalive(vehicle.var_761c973.riders[#"driver"])) {
        ai = vehicle.var_761c973.riders[#"driver"];
        if (ai flag::get("dead_in_vehicle")) {
            return;
        }
        assert(ai flag::get("<unknown string>"));
        incombat = function_b214280f(ai);
        closeanim = function_422cecb5(ai, incombat);
        ai get_out(vehicle, ai, "driver", incombat);
        if (isdefined(closeanim) && isdefined(vehicle)) {
            function_2893ab77(vehicle, "driver", closeanim, incombat);
        }
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x51ae654b, Offset: 0x2b30
// Size: 0x1bc
function private function_b56639f2(vehicle) {
    if (!vehicle.var_761c973.var_709c0a6f) {
        return;
    }
    if (vehicle flag::get("passenger1_occupied") && isdefined(vehicle.var_761c973.riders[#"passenger1"]) && isalive(vehicle.var_761c973.riders[#"passenger1"])) {
        ai = vehicle.var_761c973.riders[#"passenger1"];
        if (ai flag::get("dead_in_vehicle")) {
            return;
        }
        assert(ai flag::get("<unknown string>"));
        incombat = function_b214280f(ai);
        closeanim = function_422cecb5(ai, incombat);
        ai get_out(vehicle, ai, "passenger1", incombat);
        if (isdefined(closeanim) && isdefined(vehicle)) {
            function_2893ab77(vehicle, "passenger1", closeanim, incombat);
        }
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x6ee00364, Offset: 0x2cf8
// Size: 0x1bc
function private function_2ef91b74(vehicle) {
    if (!vehicle.var_761c973.var_dad0959b) {
        return;
    }
    if (vehicle flag::get("gunner1_occupied") && isdefined(vehicle.var_761c973.riders[#"gunner1"]) && isalive(vehicle.var_761c973.riders[#"gunner1"])) {
        ai = vehicle.var_761c973.riders[#"gunner1"];
        if (ai flag::get("dead_in_vehicle")) {
            return;
        }
        assert(ai flag::get("<unknown string>"));
        incombat = function_b214280f(ai);
        closeanim = function_422cecb5(ai, incombat);
        ai get_out(vehicle, ai, "gunner1", incombat);
        if (isdefined(closeanim) && isdefined(vehicle)) {
            function_2893ab77(vehicle, "gunner1", closeanim, incombat);
        }
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x938e2c9, Offset: 0x2ec0
// Size: 0x1bc
function private function_da0917a4(vehicle) {
    if (!vehicle.var_761c973.var_cc0d1da) {
        return;
    }
    if (vehicle flag::get("gunner2_occupied") && isdefined(vehicle.var_761c973.riders[#"gunner2"]) && isalive(vehicle.var_761c973.riders[#"gunner2"])) {
        ai = vehicle.var_761c973.riders[#"gunner2"];
        if (ai flag::get("dead_in_vehicle")) {
            return;
        }
        assert(ai flag::get("<unknown string>"));
        incombat = function_b214280f(ai);
        closeanim = function_422cecb5(ai, incombat);
        ai get_out(vehicle, ai, "gunner2", incombat);
        if (isdefined(closeanim) && isdefined(vehicle)) {
            function_2893ab77(vehicle, "gunner2", closeanim, incombat);
        }
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x5171b354, Offset: 0x3088
// Size: 0x3fc
function private function_2ca26543(vehicle) {
    assert(isdefined(vehicle.var_761c973.var_4301b21d) && vehicle.var_761c973.var_4301b21d > 0);
    if (!isdefined(vehicle.var_761c973.var_3acc1a95)) {
        return;
    }
    if (vehicle.var_761c973.var_3acc1a95 <= 0) {
        return;
    }
    var_681d39ad = [];
    var_91b346cc = undefined;
    n_crew_door_close_position = undefined;
    var_f982fa99 = 0;
    for (position = 1; position <= vehicle.var_761c973.var_3acc1a95; position++) {
        seat = "crew" + position;
        flag = seat + "_occupied";
        if (vehicle flag::get(flag) && isdefined(vehicle.var_761c973.riders[seat]) && isalive(vehicle.var_761c973.riders[seat])) {
            ai = vehicle.var_761c973.riders[seat];
            if (ai flag::get("dead_in_vehicle")) {
                continue;
            }
            assert(ai flag::get("<unknown string>"));
            incombat = function_b214280f(ai);
            if (!var_f982fa99) {
                if (incombat && isdefined(ai.var_ec30f5da.var_b7605392)) {
                    n_crew_door_close_position = seat;
                    var_91b346cc = ai.var_ec30f5da.var_b7605392;
                    var_f982fa99 = 1;
                } else if (!isdefined(var_91b346cc)) {
                    if (isdefined(ai.var_ec30f5da.vehiclecloseanim)) {
                        n_crew_door_close_position = seat;
                        var_91b346cc = ai.var_ec30f5da.vehiclecloseanim;
                    }
                }
            }
            ai thread get_out(vehicle, vehicle.var_761c973.riders[seat], seat, incombat);
            array::add(var_681d39ad, ai);
        }
    }
    if (var_681d39ad.size > 0) {
        timeout = vehicle.unloadtimeout;
        array::wait_till(var_681d39ad, "exited_vehicle");
        function_1eaaceab(var_681d39ad);
        array::flag_wait_clear(var_681d39ad, "in_vehicle", isdefined(timeout) ? timeout : 4);
        function_1eaaceab(var_681d39ad);
        if (isdefined(vehicle)) {
            vehicle notify(#"unload", var_681d39ad);
            vehicle remove_riders_after_wait(vehicle, var_681d39ad);
        }
    }
    if (isdefined(var_91b346cc) && isdefined(vehicle)) {
        function_2893ab77(vehicle, n_crew_door_close_position, var_91b346cc, incombat);
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xee92adb9, Offset: 0x3490
// Size: 0x6e8
function get_out(vehicle, ai, seat, incombat = 0) {
    assert(isdefined(ai));
    assert(isalive(ai), "<unknown string>");
    assert(isactor(ai) || function_8d8e91af(ai), "<unknown string>");
    assert(isdefined(ai.vehicle), "<unknown string>");
    assert(isdefined(ai.var_ec30f5da));
    assert(seat == "<unknown string>" || seat == "<unknown string>" || issubstr(seat, "<unknown string>") || seat == "<unknown string>" || seat == "<unknown string>");
    if (isdefined(vehicle.var_761c973.var_e30918cc)) {
        array::add(vehicle.var_761c973.var_e30918cc, ai);
    }
    ai notify(#"exiting_vehicle");
    ai.exitingvehicle = 1;
    if (vehicle.vehicleclass === "helicopter") {
        self thread deploy_fast_rope(vehicle, seat);
    }
    if (incombat && isdefined(ai.var_ec30f5da.var_cbf50c1d)) {
        ai.vehicle clientfield::increment(ai.var_ec30f5da.position + "_exit_combat", 1);
        ai.vehicle setanim(ai.var_ec30f5da.var_cbf50c1d, 1, 0, 1);
        ai.vehicle.var_761c973.doorstatus[ai.var_ec30f5da.position] = 2;
    } else if (isdefined(ai.var_ec30f5da.vehicleexitanim)) {
        ai.vehicle clientfield::increment(ai.var_ec30f5da.position + "_exit", 1);
        ai.vehicle setanim(ai.var_ec30f5da.vehicleexitanim, 1, 0, 1);
        ai.vehicle.var_761c973.doorstatus[ai.var_ec30f5da.position] = 1;
    }
    if (isdefined(vehicle) && isalive(vehicle)) {
        switch (seat) {
        case #"driver":
            vehicle flag::clear("driver_occupied");
            break;
        case #"passenger1":
            vehicle flag::clear("passenger1_occupied");
            break;
        case #"gunner1":
            vehicle flag::clear("gunner1_occupied");
            break;
        case #"gunner2":
            vehicle flag::clear("gunner2_occupied");
            break;
        case #"crew":
            seat = "crew" + seat;
            flag = seat + "_occupied";
            vehicle flag::clear(flag);
            break;
        }
    }
    str_mode = "ground";
    if (vehicle.vehicleclass === "helicopter") {
        str_mode = "variable";
    }
    switch (str_mode) {
    case #"ground":
        exit_ground(ai, incombat);
        break;
    case #"variable":
        exit_variable(ai, incombat);
        break;
    default:
        assertmsg("<unknown string>");
        return;
    }
    if (isdefined(ai)) {
        ai flag::clear("in_vehicle");
        ai flag::clear("riding_vehicle");
        ai.vehicle = undefined;
        ai.var_ec30f5da = undefined;
        ai animation::set_death_anim(undefined);
        ai.exitingvehicle = undefined;
        ai notify(#"exited_vehicle");
    }
    remove_riders_after_wait(vehicle, [ai]);
    if (isdefined(vehicle.var_761c973.var_e30918cc)) {
        arrayremovevalue(vehicle.var_761c973.var_e30918cc, ai);
        if (vehicle.var_761c973.var_e30918cc.size <= 0) {
            vehicle notify(#"unloaded");
        }
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x22092e68, Offset: 0x3b80
// Size: 0x4fc
function exit_ground(ai, incombat) {
    assert(isdefined(ai));
    ai endon(#"death");
    deathanim = undefined;
    if (incombat && isdefined(ai.var_ec30f5da.var_130b56a2)) {
        deathanim = ai.var_ec30f5da.var_130b56a2;
    } else if (isdefined(self.var_ec30f5da.exitgrounddeathanim)) {
        deathanim = ai.var_ec30f5da.exitgrounddeathanim;
    }
    if (isdefined(deathanim)) {
        ai animation::set_death_anim(deathanim);
    }
    exitanim = ai.var_ec30f5da.exitgroundanim;
    if (incombat && isdefined(ai.var_ec30f5da.var_adf2b93b)) {
        exitanim = ai.var_ec30f5da.var_adf2b93b;
    }
    assert(isdefined(exitanim), "<unknown string>" + ai.var_ec30f5da.position + "<unknown string>");
    if (isdefined(exitanim)) {
        tagorigin = ai.vehicle gettagorigin(ai.var_ec30f5da.aligntag);
        tagangles = ai.vehicle gettagangles(ai.var_ec30f5da.aligntag);
        startorigin = getstartorigin(tagorigin, tagangles, exitanim);
        startangles = getstartangles(tagorigin, tagangles, exitanim);
        movedelta = getmovedelta(exitanim, 0, 1);
        anglesdelta = getangledelta(exitanim, 0, 1);
        targetorigin = rotatepoint(movedelta, startangles) + startorigin;
        targetangles = (startangles[0], absangleclamp360(startangles[1] + anglesdelta), startangles[2]);
        result = groundtrace(targetorigin + (0, 0, 100), targetorigin + (0, 0, -100), 0, ai.vehicle);
        if (result[#"fraction"] > 0 && result[#"fraction"] < 1) {
            radius = ai getpathfindingradius() + 15;
            var_8f9272fc = getclosestpointonnavmesh(result[#"position"], 100, radius);
            if (isdefined(var_8f9272fc)) {
                result = groundtrace(var_8f9272fc + (0, 0, 100), var_8f9272fc + (0, 0, -100), 0, ai.vehicle);
                if (result[#"fraction"] > 0 && result[#"fraction"] < 1) {
                    startorigin += result[#"position"] - targetorigin;
                }
            }
        }
        ai unlink();
        if (!isdefined(deathanim)) {
            ai thread function_6f25a21f(ai, ai.vehicle, exitanim, startorigin, startangles);
        }
        animation::play(exitanim, startorigin, startangles, 1, 0.2, 0.2, getanimlength(exitanim));
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x774afdf5, Offset: 0x4088
// Size: 0x3d4
function deploy_fast_rope(vehicle, seat) {
    vehicleridersbundle = getscriptbundle(vehicle.vehicleridersbundle);
    var_9ff2ab61 = -1;
    foreach (s_rider in vehicleridersbundle.objects) {
        if (isdefined(s_rider.position) && s_rider.position == seat) {
            if (isdefined(s_rider.fastrope)) {
                var_9ff2ab61 = s_rider.fastrope - 1;
            }
            break;
        }
    }
    if (var_9ff2ab61 < 0) {
        return;
    }
    if (!isdefined(vehicle.var_c3b7c2e4)) {
        vehicle.var_c3b7c2e4 = [];
    }
    if (isdefined(vehicle.var_c3b7c2e4[var_9ff2ab61]) && vehicle.var_c3b7c2e4[var_9ff2ab61]) {
        return;
    }
    vehicle.var_c3b7c2e4[var_9ff2ab61] = 1;
    attachtag = vehicleridersbundle.objects[var_9ff2ab61].var_56b7039a;
    var_4aedb29c = vehicleridersbundle.objects[var_9ff2ab61].var_716229d;
    deployanim = vehicleridersbundle.objects[var_9ff2ab61].var_805b9934;
    idleanim = vehicleridersbundle.objects[var_9ff2ab61].var_fa69f447;
    dropanim = vehicleridersbundle.objects[var_9ff2ab61].var_36aac3fb;
    assert(isdefined(attachtag), "<unknown string>");
    assert(isdefined(var_4aedb29c), "<unknown string>");
    tagorigin = vehicle gettagorigin(attachtag);
    tagangles = vehicle gettagangles(attachtag);
    var_80fd8136 = util::spawn_anim_model(var_4aedb29c, tagorigin, tagangles);
    var_80fd8136 linkto(vehicle, attachtag);
    if (isdefined(deployanim)) {
        var_80fd8136 animation::play(deployanim, vehicle, attachtag);
    }
    if (isdefined(idleanim)) {
        var_80fd8136 thread animation::play(idleanim, vehicle, attachtag);
    }
    vehicle waittilltimeout(30, #"unloaded", #"death");
    if (isdefined(vehicle)) {
        vehicle.var_c3b7c2e4[var_9ff2ab61] = 0;
    }
    if (isdefined(dropanim)) {
        var_80fd8136 unlink();
        tagorigin = vehicle gettagorigin(attachtag);
        tagangles = vehicle gettagangles(attachtag);
        var_80fd8136 animation::play(dropanim, tagorigin, tagangles);
        wait(10);
    }
    var_80fd8136 delete();
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x9e5b11, Offset: 0x4468
// Size: 0x4c
function private function_b214280f(ai) {
    return isdefined(ai.combatstate) && (ai.combatstate == "combat_state_has_visible_enemy" || ai.combatstate == "combat_state_in_combat");
}

// Namespace vehicle/vehicleriders_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xc57d1e89, Offset: 0x44c0
// Size: 0x8a
function private function_422cecb5(ai, incombat) {
    closeanim = undefined;
    if (incombat && isdefined(ai.var_ec30f5da.var_b7605392)) {
        closeanim = ai.var_ec30f5da.var_b7605392;
    } else if (isdefined(ai.var_ec30f5da.vehiclecloseanim)) {
        closeanim = ai.var_ec30f5da.vehiclecloseanim;
    }
    return closeanim;
}

// Namespace vehicle/vehicleriders_shared
// Params 4, eflags: 0x6 linked
// Checksum 0xa886d4c4, Offset: 0x4558
// Size: 0xa4
function private function_2893ab77(vehicle, seat, animname, incombat) {
    if (incombat) {
        vehicle clientfield::increment(seat + "_close_combat", 1);
    } else {
        vehicle clientfield::increment(seat + "_close", 1);
    }
    vehicle setanim(animname, 1, 0, 1);
}

// Namespace vehicle/vehicleriders_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x7bb68abc, Offset: 0x4608
// Size: 0x100
function remove_riders_after_wait(vehicle, a_riders_to_remove) {
    assert(isdefined(vehicle) && isdefined(a_riders_to_remove));
    assert(isdefined(vehicle.var_761c973.riders));
    if (isdefined(a_riders_to_remove)) {
        foreach (ai in a_riders_to_remove) {
            arrayremovevalue(vehicle.var_761c973.riders, ai, 1);
        }
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xb557cf2c, Offset: 0x4710
// Size: 0xa4
function private handle_falling_death() {
    ai = self;
    ai endon(#"landed");
    ai waittill(#"death");
    if (isactor(ai) || function_8d8e91af(ai)) {
        self unlink();
        self startragdoll();
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x50b83454, Offset: 0x47c0
// Size: 0xe0
function ragdoll_dead_exit_rider(ai) {
    assert(isactor(ai) || function_8d8e91af(ai));
    ai endon(#"exited_vehicle");
    ai waittill(#"death");
    if (isdefined(ai) && !ai isragdoll()) {
        ai unlink();
        ai startragdoll();
    }
    ai notify(#"exited_vehicle");
}

// Namespace vehicle/vehicleriders_shared
// Params 3, eflags: 0x6 linked
// Checksum 0x3d37ea0, Offset: 0x48a8
// Size: 0x168
function private forward_euler_integration(e_move, v_target_landing, n_initial_speed) {
    landed = 0;
    position = self.origin;
    velocity = (0, 0, n_initial_speed * -1);
    gravity = (0, 0, -385.8);
    while (!landed) {
        previousposition = position;
        velocity += gravity * 0.1;
        position += velocity * 0.1;
        if (position[2] + velocity[2] * 0.1 <= v_target_landing[2]) {
            landed = 1;
            position = v_target_landing;
        }
        /#
            recordline(previousposition, position, (1, 0.5, 0), "<unknown string>", self);
        #/
        hostmigration::waittillhostmigrationdone();
        e_move moveto(position, 0.1);
        if (!landed) {
            wait(0.1);
        }
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x3bc44ad5, Offset: 0x4a18
// Size: 0x638
function exit_variable(ai, incombat) {
    assert(isdefined(ai));
    ai endon(#"death");
    ai notify(#"exiting_vehicle");
    ai thread handle_falling_death();
    if (incombat && isdefined(ai.var_ec30f5da.var_3e03e2dc)) {
        ai animation::set_death_anim(ai.var_ec30f5da.var_8654d7c6);
        animation::play(ai.var_ec30f5da.var_3e03e2dc, ai.vehicle, ai.var_ec30f5da.aligntag, 1, 0, 0);
    } else {
        ai animation::set_death_anim(ai.var_ec30f5da.exithighdeathanim);
        assert(isdefined(ai.var_ec30f5da.exithighanim), "<unknown string>" + ai.var_ec30f5da.position + "<unknown string>");
        animation::play(ai.var_ec30f5da.exithighanim, ai.vehicle, ai.var_ec30f5da.aligntag, 1, 0, 0);
    }
    if (incombat && isdefined(ai.var_ec30f5da.exithighloopdeathanim)) {
        ai animation::set_death_anim(ai.var_ec30f5da.var_cedc8532);
    } else {
        ai animation::set_death_anim(ai.var_ec30f5da.exithighloopdeathanim);
    }
    n_cur_height = get_height(ai.vehicle);
    bundle = ai.vehicle function_e84837df(ai, ai.vehicle);
    n_target_height = bundle.highexitlandheight;
    if (is_true(ai.var_ec30f5da.dropundervehicleorigin) || is_true(ai.dropundervehicleoriginoverride)) {
        v_target_landing = (ai.vehicle.origin[0], ai.vehicle.origin[1], ai.origin[2] - n_cur_height + n_target_height);
    } else {
        v_target_landing = (ai.origin[0], ai.origin[1], ai.origin[2] - n_cur_height + n_target_height);
    }
    if (isdefined(ai.overridedropposition)) {
        v_target_landing = (ai.overridedropposition[0], ai.overridedropposition[1], v_target_landing[2]);
    }
    if (isdefined(ai.targetangles)) {
        angles = ai.targetangles;
    } else {
        angles = ai.angles;
    }
    e_move = util::spawn_model("tag_origin", ai.origin, angles);
    ai thread exit_high_loop_anim(e_move, incombat);
    distance = n_target_height - n_cur_height;
    initialspeed = bundle.dropspeed;
    n_fall_time = (initialspeed * -1 + sqrt(pow(initialspeed, 2) - 2 * 385.8 * distance)) / 385.8;
    ai notify(#"falling", {#fall_time:n_fall_time});
    forward_euler_integration(e_move, v_target_landing, bundle.dropspeed);
    e_move waittill(#"movedone");
    ai notify(#"landing");
    if (incombat && isdefined(ai.var_ec30f5da.var_f8733be6)) {
        ai animation::set_death_anim(ai.var_ec30f5da.var_8241e830);
        animation::play(ai.var_ec30f5da.var_f8733be6, e_move, "tag_origin");
    } else {
        ai animation::set_death_anim(ai.var_ec30f5da.exithighlanddeathanim);
        animation::play(ai.var_ec30f5da.exithighlandanim, e_move, "tag_origin");
    }
    ai notify(#"landed");
    ai unlink();
    waitframe(1);
    e_move delete();
    ai notify(#"exited_vehicle");
}

// Namespace vehicle/vehicleriders_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x2d62c42a, Offset: 0x5058
// Size: 0xc0
function exit_high_loop_anim(e_parent, incombat) {
    self endon(#"death", #"landing");
    while (true) {
        if (incombat && isdefined(self.var_ec30f5da.var_50d2110f)) {
            animation::play(self.var_ec30f5da.var_50d2110f, e_parent, "tag_origin");
            continue;
        }
        animation::play(self.var_ec30f5da.exithighloopanim, e_parent, "tag_origin");
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x639da0a2, Offset: 0x5120
// Size: 0xea
function get_height(e_ignore = self) {
    trace = groundtrace(self.origin + (0, 0, 10), self.origin + (0, 0, -10000), 0, e_ignore, 0);
    /#
        recordline(self.origin + (0, 0, 10), trace[#"position"], (1, 0.5, 0), "<unknown string>", self);
    #/
    return distance(self.origin, trace[#"position"]);
}

// Namespace vehicle/vehicleriders_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xa5f919e5, Offset: 0x5218
// Size: 0x888
function get_in(ai, vehicle, seat, var_7c3e4d44 = 1) {
    vehicle endon(#"death");
    if (!isdefined(ai)) {
        return 0;
    }
    if (function_8d8e91af(ai)) {
        ai notify(#"stop_idle");
        ai stopanimscripted();
    }
    if (!isdefined(seat) || seat == "undefined") {
        if (vehicle.var_761c973.var_9e2a2132 && !vehicle flag::get("driver_occupied")) {
            seat = "driver";
        } else if (vehicle.var_761c973.var_709c0a6f && !vehicle flag::get("passenger1_occupied")) {
            seat = "passenger1";
        } else {
            seat = "crew";
        }
    }
    if (isstring(seat) && issubstr(seat, "pass")) {
        seat = "passenger1";
    }
    assert(isactor(ai) || function_8d8e91af(ai));
    assert(isdefined(seat) && (seat == "<unknown string>" || seat == "<unknown string>" || seat == "<unknown string>" || seat == "<unknown string>" || seat == "<unknown string>"));
    switch (seat) {
    case #"driver":
        if (vehicle.var_761c973.var_9e2a2132 && vehicle flag::get("driver_occupied")) {
            /#
                if (var_7c3e4d44) {
                    assertmsg("<unknown string>" + function_9e72a96(vehicle.vehicletype) + "<unknown string>");
                }
            #/
            return 0;
        }
        init_rider(ai, vehicle, "driver");
        break;
    case #"passenger1":
        if (vehicle.var_761c973.var_709c0a6f && vehicle flag::get("passenger1_occupied")) {
            /#
                if (var_7c3e4d44) {
                    assertmsg("<unknown string>" + function_9e72a96(vehicle.vehicletype) + "<unknown string>");
                }
            #/
            return 0;
        }
        init_rider(ai, vehicle, "passenger1");
        break;
    case #"gunner1":
        var_ae62c7e5 = "gunner1";
        if (vehicle.var_761c973.var_dad0959b && vehicle flag::get("gunner1_occupied")) {
            if (vehicle.var_761c973.var_cc0d1da) {
                if (vehicle flag::get("gunner2_occupied")) {
                    /#
                        if (var_7c3e4d44) {
                            assertmsg("<unknown string>" + function_9e72a96(vehicle.vehicletype) + "<unknown string>");
                        }
                    #/
                    return 0;
                } else {
                    seat = "gunner2";
                    var_ae62c7e5 = "gunner2";
                }
            } else {
                /#
                    if (var_7c3e4d44) {
                        assertmsg("<unknown string>" + function_9e72a96(vehicle.vehicletype) + "<unknown string>");
                    }
                #/
                return 0;
            }
        }
        init_rider(ai, vehicle, var_ae62c7e5);
        break;
    case #"gunner2":
        if (vehicle.var_761c973.var_cc0d1da && vehicle flag::get("gunner2_occupied")) {
            /#
                if (var_7c3e4d44) {
                    assertmsg("<unknown string>" + function_9e72a96(vehicle.vehicletype) + "<unknown string>");
                }
            #/
            return 0;
        }
        init_rider(ai, vehicle, "gunner2");
        break;
    default:
        var_b11e7fca = function_e1008fbd(vehicle);
        if (var_b11e7fca == "none") {
            /#
                if (var_7c3e4d44) {
                    assertmsg("<unknown string>" + function_9e72a96(vehicle.vehicletype) + "<unknown string>");
                }
            #/
            return 0;
        }
        init_rider(ai, vehicle, var_b11e7fca);
        seat = var_b11e7fca;
        break;
    }
    assert(isdefined(ai.var_ec30f5da));
    assert(isdefined(ai.vehicle));
    if (!isdefined(ai.var_ec30f5da.rideanim)) {
        assertmsg("<unknown string>" + seat + "<unknown string>" + function_9e72a96(vehicle.vehicletype) + "<unknown string>" + function_e84837df(ai, vehicle));
        return;
    }
    assert(isdefined(vehicle.var_761c973.riders));
    assert(!isdefined(vehicle.var_761c973.riders[seat]));
    vehicle.var_761c973.riders[seat] = ai;
    if (seat != "none") {
        function_2cec1af6(vehicle, seat);
    }
    ai flag::set("in_vehicle");
    ai flag::set("riding_vehicle");
    ai thread handle_rider_death(ai, vehicle);
    ai thread function_8a1b8aa0(ai, vehicle);
    return 1;
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x13fdaf14, Offset: 0x5aa8
// Size: 0x94
function private function_bcc6902b(ai) {
    ai endon(#"death", #"exiting_vehicle");
    self endon(#"death");
    self waittill(#"scene_stop", #"scene_done");
    self thread function_88042c5b(ai, ai.var_ec30f5da.rideanim);
}

// Namespace vehicle/vehicleriders_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xa2a20c15, Offset: 0x5b48
// Size: 0xbc
function private function_88042c5b(ai, animname) {
    self notify("4ac6b60a379116d8");
    self endon("4ac6b60a379116d8");
    if (ai scene::function_c935c42()) {
        ai.vehicle thread function_bcc6902b(ai);
        return;
    }
    if (isdefined(animname)) {
        ai animation::play(animname, ai.vehicle, ai.var_ec30f5da.aligntag, 1, 0.2, 0.2, 0, 0, 0, 0);
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 2, eflags: 0x6 linked
// Checksum 0x7bbe8ff7, Offset: 0x5c10
// Size: 0x74
function private function_1585495a(ai, animname) {
    self notify("21aaaa1580e18b13");
    self endon("21aaaa1580e18b13");
    self function_88042c5b(ai, animname);
    self childthread function_88042c5b(ai, ai.var_ec30f5da.rideanim);
}

// Namespace vehicle/vehicleriders_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xf3facbf2, Offset: 0x5c90
// Size: 0x1a0
function private function_8a1b8aa0(ai, vehicle) {
    ai endon(#"death", #"exiting_vehicle");
    vehicle endon(#"death");
    assert(isdefined(ai.var_ec30f5da));
    self thread function_88042c5b(ai, ai.var_ec30f5da.rideanim);
    while (true) {
        result = vehicle waittill(#"vehicle_starting", #"vehicle_stopping");
        if (result._notify == "vehicle_starting" && isdefined(ai.var_ec30f5da.startanim)) {
            self childthread function_1585495a(ai, ai.var_ec30f5da.startanim);
            continue;
        }
        if (result._notify == "vehicle_stopping" && isdefined(ai.var_ec30f5da.stopanim)) {
            self childthread function_1585495a(ai, ai.var_ec30f5da.stopanim);
        }
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xae09c872, Offset: 0x5e38
// Size: 0x1fc
function function_ce8e453c() {
    self notify(#"new_death_anim");
    self endon(#"new_death_anim", #"exiting_vehicle");
    self.vehicle endon(#"death");
    self waittill(#"death");
    if (is_true(self.var_86af753d) || is_true(self.vehicle.var_86af753d) || function_8d8e91af(self)) {
        self unlink();
        return;
    }
    self.vehicle thread function_991034a3(self, self.vehicle);
    self.skipdeath = 1;
    self.var_14926c = 0;
    self flag::set("dead_in_vehicle");
    self val::set(#"hash_57a9b73feb55bb0c", "ignoreme", 1);
    self animation::play(self.var_ec30f5da.ridedeathanim, self.vehicle, self.var_ec30f5da.aligntag);
    if (isdefined(self)) {
        self animation::play(self.var_ec30f5da.ridedeathanim, self.vehicle, self.var_ec30f5da.aligntag, 1, 0.2, -1, 0, 0.95, 0, 0, undefined, 1);
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xf0d93db3, Offset: 0x6040
// Size: 0x94
function private function_991034a3(ai, vehicle) {
    ai endon(#"exiting_vehicle");
    vehicle waittill(#"death", #"entitydeleted");
    if (isdefined(ai) && ai flag::get("dead_in_vehicle")) {
        ai deletedelay();
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xefb5b892, Offset: 0x60e0
// Size: 0xc4
function private handle_rider_death(ai, vehicle) {
    ai endon(#"death", #"exiting_vehicle");
    vehicle endon(#"death");
    assert(isdefined(ai.var_ec30f5da));
    if (isdefined(ai.var_ec30f5da.ridedeathanim)) {
        ai thread function_ce8e453c();
    }
    callback::on_ai_killed(&function_15dbe5e9);
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xe29e1e60, Offset: 0x61b0
// Size: 0x14c
function private function_15dbe5e9(*params) {
    if (self flag::exists("riding_vehicle") && self flag::get("riding_vehicle") && isdefined(self.vehicle) && isdefined(self.var_ec30f5da)) {
        if (isdefined(self.var_ec30f5da.vehicleriderdeathanim)) {
            self.vehicle clientfield::increment(self.var_ec30f5da.position + "_death", 1);
            self.vehicle setanimknobrestart(self.var_ec30f5da.vehicleriderdeathanim, 1, 0, 1);
        }
        if (!is_true(self.exitingvehicle) && isdefined(self.var_ec30f5da.ridedeathanim)) {
            self linkto(self.vehicle, self.var_ec30f5da.aligntag);
        }
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 5, eflags: 0x6 linked
// Checksum 0xf7cf61e8, Offset: 0x6308
// Size: 0x21c
function private function_6f25a21f(ai, *vehicle, exitanim, startorigin, startangles) {
    notes = getnotetracktimes(exitanim, "allow_death");
    if (!(isdefined(notes) && isdefined(notes[0]))) {
        self thread ragdoll_dead_exit_rider(vehicle);
        return;
    }
    waitresult = vehicle waittill(#"death", #"exited_vehicle");
    if (waitresult._notify == "exited_vehicle") {
        return;
    }
    if (!isdefined(vehicle)) {
        return;
    }
    currenttime = vehicle getanimtime(exitanim);
    var_46ea0aaf = notes[0];
    if (currenttime >= var_46ea0aaf) {
        return;
    }
    vehicle.var_4a438c2b = 1;
    vehicle val::set(#"hash_57a9b73feb55bb0c", "ignoreme", 1);
    vehicle thread animation::play(exitanim, startorigin, startangles, 1, 0.1, 0.1, 0, currenttime);
    animlength = getanimlength(exitanim);
    waittime = animlength * (var_46ea0aaf - currenttime);
    wait(waittime);
    if (!isdefined(vehicle)) {
        return;
    }
    vehicle.var_4a438c2b = 0;
    vehicle dodamage(1, vehicle.origin);
    vehicle startragdoll();
}

// Namespace vehicle/vehicleriders_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x20608d13, Offset: 0x6530
// Size: 0xb8
function private on_vehicle_killed() {
    if (!isdefined(self.var_761c973)) {
        return;
    }
    if (!isdefined(self.var_761c973.riders)) {
        return;
    }
    foreach (rider in self.var_761c973.riders) {
        kill_rider(rider);
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x449f4b48, Offset: 0x65f0
// Size: 0x17c
function kill_rider(entity) {
    if (isdefined(entity)) {
        if (isalive(entity) && !gibserverutils::isgibbed(entity, 2)) {
            if (entity isplayinganimscripted()) {
                entity stopanimscripted();
            }
            if (getdvarint(#"tu1_vehicleridersinvincibility", 1)) {
                util::stop_magic_bullet_shield(entity);
            }
            gibserverutils::gibleftarm(entity, 0);
            gibserverutils::gibrightarm(entity, 0);
            gibserverutils::giblegs(entity, 0);
            gibserverutils::annihilate(entity);
            entity unlink();
            entity kill();
        }
        entity ghost();
        level thread delete_rider_asap(entity);
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xcb3dbe6f, Offset: 0x6778
// Size: 0x2c
function delete_rider_asap(entity) {
    waitframe(1);
    if (isdefined(entity)) {
        entity delete();
    }
}

// Namespace vehicle/vehicleriders_shared
// Params 1, eflags: 0x0
// Checksum 0x24965c5d, Offset: 0x67b0
// Size: 0x4b0
function function_86c7bebb(seat = "all") {
    assert(isdefined(self) && isvehicle(self) && isdefined(seat));
    ais = [];
    if (!isdefined(self.var_761c973)) {
        return ais;
    }
    if (!isdefined(self.var_761c973.riders)) {
        return ais;
    }
    if (isdefined(seat)) {
        if (seat == "passengers") {
            seat = "passenger1";
        }
        assert(seat == "<unknown string>" || seat == "<unknown string>" || seat == "<unknown string>" || seat == "<unknown string>" || seat == "<unknown string>" || seat == "<unknown string>" || seat == "<unknown string>");
    } else {
        seat = "all";
    }
    if (isdefined(self.var_761c973.riders)) {
        if (seat == "all") {
            foreach (ai in self.var_761c973.riders) {
                if (isdefined(ai) && isalive(ai)) {
                    ais[ais.size] = ai;
                }
            }
            return ais;
        } else if (seat == "gunners") {
            foreach (ai in self.var_761c973.riders) {
                if (isdefined(ai) && isalive(ai) && (ai.var_5574287b === "gunner1" || ai.var_5574287b === "gunner2")) {
                    ais[ais.size] = ai;
                }
            }
            return ais;
        } else if (seat == "crew") {
            foreach (ai in self.var_761c973.riders) {
                if (isdefined(ai) && isalive(ai) && issubstr(ai.var_5574287b, "crew")) {
                    ais[ais.size] = ai;
                }
            }
        } else {
            foreach (ai in self.var_761c973.riders) {
                if (isdefined(ai) && isalive(ai) && ai.var_5574287b === seat) {
                    ais[ais.size] = ai;
                }
            }
            return ais;
        }
    }
    return ais;
}

