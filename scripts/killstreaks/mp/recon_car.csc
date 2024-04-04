// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreak_vehicle.csc;
#using scripts\killstreaks\killstreak_detect.csc;
#using script_18b9d0e77614c97;
#using scripts\core_common\vehicle_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace recon_car;

// Namespace recon_car/recon_car
// Params 0, eflags: 0x5
// Checksum 0x50c3c48d, Offset: 0xc0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"recon_car", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x6 linked
// Checksum 0x6f53ebb6, Offset: 0x110
// Size: 0x84
function private preinit() {
    killstreak_detect::init_shared();
    bundle = getscriptbundle("killstreak_recon_car");
    level.var_af161ca6 = bundle;
    killstreak_vehicle::init_killstreak(bundle);
    vehicle::add_vehicletype_callback(bundle.ksvehicle, &spawned);
}

// Namespace recon_car/recon_car
// Params 1, eflags: 0x2 linked
// Checksum 0x3943719f, Offset: 0x1a0
// Size: 0x1e
function spawned(*localclientnum) {
    self.killstreakbundle = level.var_af161ca6;
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x4
// Checksum 0xbcd17c26, Offset: 0x1c8
// Size: 0x2c
function private function_3665db4d() {
    function_334b8df9(level.var_af161ca6.var_1c30ba81, -1);
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x4
// Checksum 0xbd593419, Offset: 0x200
// Size: 0x24
function private function_b8d95025() {
    function_58250a30(level.var_af161ca6.var_1c30ba81);
}

