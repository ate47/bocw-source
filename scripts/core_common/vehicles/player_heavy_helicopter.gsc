// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using script_47d08d7129406c5a;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace player_heavy_helicopter;

// Namespace player_heavy_helicopter/player_heavy_helicopter
// Params 0, eflags: 0x5
// Checksum 0x455710df, Offset: 0x120
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_heavy_helicopter", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace player_heavy_helicopter/player_heavy_helicopter
// Params 0, eflags: 0x6 linked
// Checksum 0xc2876fe, Offset: 0x170
// Size: 0x11c
function private preinit() {
    clientfield::register("toplayer", "hind_gunner_postfx_active", 1, 1, "int");
    clientfield::register("vehicle", "hind_compass_icon", 1, 2, "int");
    vehicle::add_main_callback("helicopter_heavy", &function_8220feb0);
    callback::function_d8abfc3d(#"hash_666d48a558881a36", &function_8f37f11);
    callback::function_d8abfc3d(#"hash_2c1cafe2a67dfef8", &change_seat);
    callback::function_d8abfc3d(#"hash_55f29e0747697500", &function_1ec626d7);
}

// Namespace player_heavy_helicopter/player_heavy_helicopter
// Params 0, eflags: 0x6 linked
// Checksum 0xe23176fd, Offset: 0x298
// Size: 0x34
function private function_8220feb0() {
    self.var_dc20225f = 1;
    self.var_7d3d0f72 = 2;
    namespace_c8fb02a7::function_a01726dd();
}

// Namespace player_heavy_helicopter/player_heavy_helicopter
// Params 1, eflags: 0x2 linked
// Checksum 0x37fd2617, Offset: 0x2d8
// Size: 0xbc
function function_8f37f11(params) {
    self endon(#"death");
    if (isalive(self)) {
        if (isdefined(params.player)) {
            enter_seat = params.eventstruct.seat_index;
            if (namespace_c8fb02a7::function_9ffa5fd(undefined, enter_seat)) {
                self function_6ffe1aa7(params.player, undefined, enter_seat);
            }
        }
        self thread function_912f52a1();
    }
}

// Namespace player_heavy_helicopter/player_heavy_helicopter
// Params 1, eflags: 0x2 linked
// Checksum 0x578c1674, Offset: 0x3a0
// Size: 0x44
function function_1ec626d7(params) {
    params.player clientfield::set_to_player("hind_gunner_postfx_active", 0);
    self thread function_912f52a1();
}

// Namespace player_heavy_helicopter/player_heavy_helicopter
// Params 1, eflags: 0x2 linked
// Checksum 0x1542fb7f, Offset: 0x3f0
// Size: 0xd4
function change_seat(params) {
    self endon(#"death");
    if (isalive(self)) {
        if (isdefined(params.player)) {
            enter_seat = params.eventstruct.seat_index;
            exit_seat = params.eventstruct.old_seat_index;
            if (namespace_c8fb02a7::function_9ffa5fd(exit_seat, enter_seat)) {
                self function_6ffe1aa7(params.player, exit_seat, enter_seat);
            }
        }
        self thread function_912f52a1();
    }
}

// Namespace player_heavy_helicopter/player_heavy_helicopter
// Params 0, eflags: 0x2 linked
// Checksum 0x45cb53f5, Offset: 0x4d0
// Size: 0xf4
function function_912f52a1() {
    self endon(#"death");
    self notify("7cabfd7760270dbb");
    self endon("7cabfd7760270dbb");
    owner = self getvehoccupants()[0];
    if (isdefined(owner)) {
        self clientfield::set("hind_compass_icon", 1);
        wait(2);
        self clientfield::set("hind_compass_icon", 2);
        return;
    }
    self clientfield::set("hind_compass_icon", 1);
    wait(2);
    self clientfield::set("hind_compass_icon", 0);
}

// Namespace player_heavy_helicopter/player_heavy_helicopter
// Params 3, eflags: 0x2 linked
// Checksum 0xbd79b3f0, Offset: 0x5d0
// Size: 0xc4
function function_6ffe1aa7(player, var_92eb9b7d, var_6d872cea) {
    if (!(var_92eb9b7d === 1 || var_6d872cea === 1)) {
        return;
    }
    tweentime = self function_ff1bf59c(var_92eb9b7d, var_6d872cea);
    wait(tweentime);
    if (var_6d872cea === 1) {
        player clientfield::set_to_player("hind_gunner_postfx_active", 1);
        return;
    }
    if (var_92eb9b7d === 1) {
        player clientfield::set_to_player("hind_gunner_postfx_active", 0);
    }
}

