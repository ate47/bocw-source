// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\vehicle_shared.csc;
#using scripts\core_common\util_shared.csc;

#namespace wz_vehicle;

// Namespace wz_vehicle/vehicle
// Params 0, eflags: 0x5
// Checksum 0x30e67605, Offset: 0xf8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"wz_vehicle", &preinit, undefined, undefined, undefined);
}

// Namespace wz_vehicle/vehicle
// Params 0, eflags: 0x6 linked
// Checksum 0x2b70a770, Offset: 0x140
// Size: 0xa4
function private preinit() {
    level._effect[#"hash_6b468a3be0194532"] = #"hash_3cb3a6fc9eb00337";
    level._effect[#"hash_2fde2171beaea56f"] = #"hash_3919b64dc762cab2";
    vehicle::function_2f97bc52("vehicle_t9_plane_flyable_prototype", &function_58e95b55);
    vehicle::function_cd2ede5("vehicle_t9_plane_flyable_prototype", &function_84f28fd9);
}

// Namespace wz_vehicle/vehicle
// Params 2, eflags: 0x2 linked
// Checksum 0x6c19ab7e, Offset: 0x1f0
// Size: 0x66
function function_58e95b55(localclientnum, vehicle) {
    if (!self function_21c0fa55()) {
        return;
    }
    vehicle thread function_c6d5a97d(localclientnum);
    if (!isdefined(vehicle.var_3a2e004d)) {
        vehicle.var_3a2e004d = [];
    }
}

// Namespace wz_vehicle/vehicle
// Params 2, eflags: 0x2 linked
// Checksum 0x9630d11a, Offset: 0x260
// Size: 0x4c
function function_84f28fd9(localclientnum, vehicle) {
    if (!self function_21c0fa55()) {
        return;
    }
    vehicle thread function_c0119d33(localclientnum);
}

// Namespace wz_vehicle/vehicle
// Params 3, eflags: 0x2 linked
// Checksum 0x44e13d3f, Offset: 0x2b8
// Size: 0x98
function function_7a5dc47e(localclientnum, height, fx) {
    self endon(#"death", #"hash_2a08d043fde0f8b1");
    while (true) {
        if (self.origin[2] < height) {
            self function_bc80c148(localclientnum, fx);
            self thread function_b57d31e4(localclientnum, height, fx);
            return;
        }
        wait(1);
    }
}

// Namespace wz_vehicle/vehicle
// Params 3, eflags: 0x2 linked
// Checksum 0x396cc6f8, Offset: 0x358
// Size: 0xd8
function function_b57d31e4(localclientnum, height, fx) {
    self endon(#"death", #"hash_2a08d043fde0f8b1");
    while (true) {
        if (isdefined(self.var_3a2e004d[fx])) {
            return;
        }
        if (self.origin[2] > height + 100) {
            self.var_3a2e004d[fx] = util::playfxontag(localclientnum, level._effect[fx], self, "tag_origin");
            self thread function_7a5dc47e(localclientnum, 3000, fx);
            return;
        }
        wait(1);
    }
}

// Namespace wz_vehicle/vehicle
// Params 1, eflags: 0x2 linked
// Checksum 0xf3492b9b, Offset: 0x438
// Size: 0x4c
function function_c6d5a97d(localclientnum) {
    function_b57d31e4(localclientnum, 3000, "plane_ambient");
    function_b57d31e4(localclientnum, 20000, "plane_ambient_high_alt");
}

// Namespace wz_vehicle/vehicle
// Params 2, eflags: 0x2 linked
// Checksum 0x44f350a3, Offset: 0x490
// Size: 0x5c
function function_bc80c148(localclientnum, fx) {
    if (isdefined(self.var_3a2e004d[fx])) {
        stopfx(localclientnum, self.var_3a2e004d[fx]);
        self.var_3a2e004d[fx] = undefined;
    }
}

// Namespace wz_vehicle/vehicle
// Params 1, eflags: 0x2 linked
// Checksum 0x28c58a9d, Offset: 0x4f8
// Size: 0x5c
function function_c0119d33(localclientnum) {
    self notify(#"hash_2a08d043fde0f8b1");
    function_bc80c148(localclientnum, "plane_ambient");
    function_bc80c148(localclientnum, "plane_ambient_high_alt");
}

