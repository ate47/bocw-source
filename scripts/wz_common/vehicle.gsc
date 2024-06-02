// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_40fc784c60f9fa7b;

#namespace wz_vehicle;

// Namespace wz_vehicle/vehicle
// Params 0, eflags: 0x5
// Checksum 0x7e59b10f, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"wz_vehicle", &preinit, undefined, undefined, undefined);
}

// Namespace wz_vehicle/vehicle
// Params 0, eflags: 0x4
// Checksum 0xff8a97a7, Offset: 0x108
// Size: 0xbc
function private preinit() {
    level.var_cd8f416a = [];
    level.var_63e0085 = 0;
    level.var_7c6454 = 1;
    callback::add_callback(#"hash_5ca3a1f306039e1e", &function_f565cb50);
    callback::add_callback(#"hash_666d48a558881a36", &function_8307577f);
    callback::add_callback(#"hash_2c1cafe2a67dfef8", &function_6bcb016d);
}

// Namespace wz_vehicle/vehicle
// Params 0, eflags: 0x0
// Checksum 0x11b973a9, Offset: 0x1d0
// Size: 0x1c
function function_f565cb50() {
    level.var_cd8f416a[level.var_cd8f416a.size] = self;
}

// Namespace wz_vehicle/vehicle
// Params 1, eflags: 0x0
// Checksum 0xf6943c1e, Offset: 0x1f8
// Size: 0xa4
function function_8307577f(params) {
    vehicle = self;
    player = params.player;
    seatindex = params.eventstruct.seat_index;
    if (seatindex === 0) {
        callback::callback("on_driving_wz_vehicle", {#vehicle:vehicle, #player:player, #seatindex:seatindex});
    }
}

// Namespace wz_vehicle/vehicle
// Params 1, eflags: 0x0
// Checksum 0xe6f510c2, Offset: 0x2a8
// Size: 0xc4
function function_6bcb016d(params) {
    vehicle = self;
    player = params.player;
    seatindex = params.eventstruct.seat_index;
    oldseatindex = params.eventstruct.old_seat_index;
    if (seatindex == 0) {
        callback::callback("on_driving_wz_vehicle", {#vehicle:vehicle, #player:self, #seatindex:seatindex});
    }
}

