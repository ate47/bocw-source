// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_40fc784c60f9fa7b;
#using scripts\core_common\callbacks_shared.gsc;

#namespace player_motorcycle_2wd;

// Namespace player_motorcycle_2wd/player_motorcycle_2wd
// Params 0, eflags: 0x5
// Checksum 0x29a0d620, Offset: 0xd8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_motorcycle_2wd", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace player_motorcycle_2wd/player_motorcycle_2wd
// Params 0, eflags: 0x6 linked
// Checksum 0xffccdefb, Offset: 0x128
// Size: 0x2c
function private preinit() {
    vehicle::add_main_callback("player_motorcycle_2wd", &function_9835edf5);
}

// Namespace player_motorcycle_2wd/player_motorcycle_2wd
// Params 0, eflags: 0x6 linked
// Checksum 0xeb5e320e, Offset: 0x160
// Size: 0x134
function private function_9835edf5() {
    callback::function_d8abfc3d(#"hash_666d48a558881a36", &function_d0a9a026);
    callback::function_d8abfc3d(#"hash_55f29e0747697500", &function_e1f72671);
    callback::function_d8abfc3d(#"hash_2c1cafe2a67dfef8", &function_177abcbb);
    callback::function_d8abfc3d(#"hash_551381cffdc79048", &function_8ba31952);
    self.var_d6691161 = 200;
    self.var_5002d77c = 0.6;
    self.var_a195943 = 1;
    self vehicle::toggle_control_bone_group(1, 1);
    self player_vehicle::function_cc30c4bb(#"hash_22c22a196fd2cc77", 6);
}

// Namespace player_motorcycle_2wd/player_motorcycle_2wd
// Params 1, eflags: 0x6 linked
// Checksum 0x8641e365, Offset: 0x2a0
// Size: 0x1b4
function private function_e1f72671(params) {
    occupants = self getvehoccupants();
    if (!isdefined(occupants) || occupants.size == 0) {
        self notify(#"hash_7d134b21d3606f90");
        if (lengthsquared(self.velocity) > sqr(200)) {
            var_6ceae60 = (0, -5, 0);
            var_99d6b963 = rotatepoint(var_6ceae60, self.angles);
            var_63c1fd8 = (-25 + randomfloat(30), 0, -22 + randomfloat(5));
            self launchvehicle(var_99d6b963, var_63c1fd8, 1, 1);
        } else {
            self vehicle::toggle_control_bone_group(1, 1);
        }
        self notify(#"hash_579b16a6f8cc0305");
        return;
    }
    if (isdefined(occupants) && occupants.size >= 0 && params.eventstruct.seat_index === 0) {
        function_164c8246();
    }
}

// Namespace player_motorcycle_2wd/player_motorcycle_2wd
// Params 1, eflags: 0x6 linked
// Checksum 0x4abae51, Offset: 0x460
// Size: 0x5c
function private function_d0a9a026(params) {
    if (params.eventstruct.seat_index === 0) {
        function_8892a46e();
    }
    if (!isdefined(self.var_fbc196ab)) {
        self thread function_1f6bee9c();
    }
}

// Namespace player_motorcycle_2wd/player_motorcycle_2wd
// Params 1, eflags: 0x2 linked
// Checksum 0x9c541c23, Offset: 0x4c8
// Size: 0xa4
function function_177abcbb(params) {
    if (isalive(self)) {
        eventstruct = params.eventstruct;
        if (eventstruct.seat_index === 6 || eventstruct.old_seat_index === 6) {
            return;
        }
        if (eventstruct.seat_index === 0) {
            function_8892a46e();
            return;
        }
        function_164c8246();
    }
}

// Namespace player_motorcycle_2wd/player_motorcycle_2wd
// Params 0, eflags: 0x6 linked
// Checksum 0xd31b5a6d, Offset: 0x578
// Size: 0x4e
function private function_8892a46e() {
    self launchvehicle((0, 0, 0), (0, 0, 0), 0, 2);
    self vehicle::toggle_control_bone_group(1, 0);
    self notify(#"hash_7d134b21d3606f90");
}

// Namespace player_motorcycle_2wd/player_motorcycle_2wd
// Params 0, eflags: 0x6 linked
// Checksum 0xfcda4c12, Offset: 0x5d0
// Size: 0x6c
function private function_164c8246() {
    if (lengthsquared(self.velocity) > sqr(200)) {
        self thread function_45cb4291();
        return;
    }
    self vehicle::toggle_control_bone_group(1, 1);
}

// Namespace player_motorcycle_2wd/player_motorcycle_2wd
// Params 0, eflags: 0x6 linked
// Checksum 0xd7d26161, Offset: 0x648
// Size: 0xc0
function private function_45cb4291() {
    self notify("5e6d62a7a17f26b6");
    self endon("5e6d62a7a17f26b6");
    self endon(#"death", #"hash_7d134b21d3606f90");
    while (true) {
        wait(1);
        if (isalive(self)) {
            if (lengthsquared(self.velocity) <= sqr(200)) {
                self vehicle::toggle_control_bone_group(1, 1);
                return;
            }
            continue;
        }
        return;
    }
}

// Namespace player_motorcycle_2wd/player_motorcycle_2wd
// Params 1, eflags: 0x6 linked
// Checksum 0x2e4fd3b, Offset: 0x710
// Size: 0x84
function private function_8ba31952(*params) {
    if (!isalive(self)) {
        return;
    }
    occupants = self getvehoccupants();
    if (!isdefined(occupants) || occupants.size == 0) {
        self launchvehicle((0, 0, 0), (0, 0, 0), 0, 1);
    }
}

// Namespace player_motorcycle_2wd/player_motorcycle_2wd
// Params 0, eflags: 0x2 linked
// Checksum 0xccae92af, Offset: 0x7a0
// Size: 0x1e4
function function_1f6bee9c() {
    self notify(#"hash_654356262621e15f");
    self endoncallback(&function_e972bd62, #"death", #"hash_579b16a6f8cc0305", #"hash_654356262621e15f");
    self.var_fbc196ab = 1;
    while (true) {
        self waittill(#"veh_inair");
        time = gettime();
        self waittill(#"veh_landed");
        land_time = gettime();
        var_a56294c1 = land_time - time;
        if (var_a56294c1 < 800) {
            continue;
        }
        var_cf61b7dd = int(float(var_a56294c1 + 500) / 1000);
        occupants = self getvehoccupants();
        foreach (occupant in occupants) {
            if (!isplayer(occupant)) {
                continue;
            }
            occupant stats::function_dad108fa(#"hash_2d553b0cd6606d50", var_cf61b7dd);
        }
    }
}

// Namespace player_motorcycle_2wd/player_motorcycle_2wd
// Params 1, eflags: 0x2 linked
// Checksum 0x74599d0c, Offset: 0x990
// Size: 0x32
function function_e972bd62(*str_notify) {
    if (!isalive(self)) {
        return;
    }
    self.var_fbc196ab = undefined;
}

