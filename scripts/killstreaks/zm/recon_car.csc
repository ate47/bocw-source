// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreak_vehicle.csc;
#using scripts\killstreaks\killstreak_detect.csc;
#using scripts\core_common\vehicle_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace recon_car;

// Namespace recon_car/recon_car
// Params 0, eflags: 0x5
// Checksum 0x3360a88b, Offset: 0x108
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"recon_car", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x6 linked
// Checksum 0x8f550722, Offset: 0x158
// Size: 0x104
function private preinit() {
    if (!is_true(getgametypesetting(#"hash_45aec06707484fef"))) {
        return 0;
    }
    clientfield::register("vehicle", "" + #"hash_5b4b44738e08c9b9", 28000, 1, "counter", &function_86e8d9af, 0, 0);
    killstreak_detect::init_shared();
    level.var_af161ca6 = getscriptbundle("killstreak_recon_car_zm");
    killstreak_vehicle::init_killstreak(level.var_af161ca6);
    vehicle::add_vehicletype_callback(level.var_af161ca6.ksvehicle, &spawned);
}

// Namespace recon_car/recon_car
// Params 1, eflags: 0x2 linked
// Checksum 0x5bab9760, Offset: 0x268
// Size: 0x1e
function spawned(*localclientnum) {
    self.killstreakbundle = level.var_af161ca6;
}

// Namespace recon_car/recon_car
// Params 7, eflags: 0x2 linked
// Checksum 0x8a50b6b9, Offset: 0x290
// Size: 0xe4
function function_86e8d9af(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    str_fx = #"hash_5627dee1716af1be";
    if (self.model === #"hash_7dde995ef49216f") {
        str_fx = #"hash_1fd4c0687c9801d2";
    }
    util::playfxontag(bwastimejump, str_fx, self, "tag_origin");
    self playsound(bwastimejump, #"hash_3b04ee47d31da098");
    self playrumbleonentity(bwastimejump, "damage_heavy");
}

