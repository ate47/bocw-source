// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;

#namespace namespace_e64042f6;

// Namespace namespace_e64042f6/namespace_8ccabe99
// Params 0, eflags: 0x5
// Checksum 0xcd1840f9, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_7ed2df741d2c106c", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_e64042f6/namespace_8ccabe99
// Params 0, eflags: 0x6 linked
// Checksum 0x82a94d98, Offset: 0xe8
// Size: 0x64
function private preinit() {
    level.var_79f1bc0e = [];
    level.var_79f1bc0e[0] = &function_e13068cd;
    level.var_79f1bc0e[1] = &function_3db443e5;
    /#
        setdvar(#"hash_42def49e51a504c4", 0);
    #/
}

// Namespace namespace_e64042f6/namespace_8ccabe99
// Params 4, eflags: 0x2 linked
// Checksum 0xd9adab60, Offset: 0x158
// Size: 0x254
function do_damage(var_da72da83, position, forward, time) {
    if (isdefined(var_da72da83)) {
        var_a744e12b = getscriptbundle(var_da72da83);
        if (isdefined(var_a744e12b) && isdefined(var_a744e12b.var_1005269b) && var_a744e12b.var_1005269b.size > 0) {
            if (!isdefined(self.var_b3bd4a36)) {
                self.var_b3bd4a36 = [];
            }
            damage_data = spawnstruct();
            damage_data.var_447ecba3 = isdefined(var_a744e12b.var_447ecba3) ? var_a744e12b.var_447ecba3 : 0;
            damage_data.damage_interval = (isdefined(var_a744e12b.damage_interval) ? var_a744e12b.damage_interval : 0.05) * 1000;
            damage_data.var_875147a8 = isdefined(var_a744e12b.var_875147a8) ? var_a744e12b.var_875147a8 : 0;
            damage_data.damage_mod = isdefined(var_a744e12b.mod) ? var_a744e12b.mod : "MOD_UNKNOWN";
            foreach (var_1005269b in var_a744e12b.var_1005269b) {
                if (isdefined(var_1005269b.var_a744e12b) && var_1005269b.var_a744e12b.size > 0) {
                    self thread [[ level.var_79f1bc0e[isdefined(var_1005269b.shape) ? var_1005269b.shape : 0] ]](damage_data, var_1005269b, position, forward, time);
                }
            }
            self thread function_5504a588(var_a744e12b, position, forward, time);
        }
    }
}

// Namespace namespace_e64042f6/namespace_8ccabe99
// Params 4, eflags: 0x6 linked
// Checksum 0x6484a468, Offset: 0x3b8
// Size: 0x1dc
function private function_5504a588(var_a744e12b, position, forward, time) {
    if ((isdefined(var_a744e12b.var_20fad2ac) ? var_a744e12b.var_20fad2ac : 0) <= 0) {
        return;
    }
    lifetime = (isdefined(var_a744e12b.var_20fad2ac) ? var_a744e12b.var_20fad2ac : 0) * time + (isdefined(var_a744e12b.var_4229702e) ? var_a744e12b.var_4229702e : 0);
    if ((isdefined(var_a744e12b.var_e8611768) ? var_a744e12b.var_e8611768 : 0) > 0) {
        wait(var_a744e12b.var_e8611768);
        lifetime -= var_a744e12b.var_e8611768;
    }
    var_a8fdf55a = position + forward * (isdefined(var_a744e12b.var_8858c944) ? var_a744e12b.var_8858c944 : 0) + (0, 0, isdefined(var_a744e12b.var_88ea53cd) ? var_a744e12b.var_88ea53cd : 0);
    badplace_cylinder("", lifetime, var_a8fdf55a, isdefined(var_a744e12b.var_68d82a10) ? var_a744e12b.var_68d82a10 : 0, isdefined(var_a744e12b.var_e981f9fa) ? var_a744e12b.var_e981f9fa : 0, #"any");
}

// Namespace namespace_e64042f6/namespace_8ccabe99
// Params 5, eflags: 0x6 linked
// Checksum 0x40a9186d, Offset: 0x5a0
// Size: 0x4f2
function private function_e13068cd(damage_data, var_1005269b, position, forward, var_9861703a) {
    if (isdefined(var_1005269b.delay)) {
        wait(var_1005269b.delay);
        var_9861703a -= var_1005269b.delay;
    }
    var_11098775 = position + forward * (isdefined(var_1005269b.var_a744e12b[0].forward_offset) ? var_1005269b.var_a744e12b[0].forward_offset : 0) + (0, 0, isdefined(var_1005269b.var_a744e12b[0].z_offset) ? var_1005269b.var_a744e12b[0].z_offset : 0);
    cone_angle = isdefined(var_1005269b.var_a744e12b[0].cone_angle) ? var_1005269b.var_a744e12b[0].cone_angle : 0;
    var_c95e4493 = isdefined(var_1005269b.var_a744e12b[0].var_c95e4493) ? var_1005269b.var_a744e12b[0].var_c95e4493 : 0;
    foreach (var_a744e12b in var_1005269b.var_a744e12b) {
        if (!isdefined(var_a744e12b.lerp_time)) {
            var_a744e12b.lerp_time = 0;
        }
        if (!isdefined(var_a744e12b.time)) {
            var_a744e12b.time = 0;
        }
        if (!isdefined(var_a744e12b.cone_angle)) {
            var_a744e12b.cone_angle = 0;
        }
        if (!isdefined(var_a744e12b.var_c95e4493)) {
            var_a744e12b.var_c95e4493 = 0;
        }
        time = 0;
        end_time = is_true(var_a744e12b.var_6e390e3c) ? var_a744e12b.time * var_9861703a : var_a744e12b.lerp_time + var_a744e12b.time;
        start_origin = var_11098775;
        var_901160b4 = cone_angle;
        var_9b091486 = var_c95e4493;
        end_origin = position + forward * (isdefined(var_a744e12b.forward_offset) ? var_a744e12b.forward_offset : 0) + (0, 0, isdefined(var_a744e12b.z_offset) ? var_a744e12b.z_offset : 0);
        while (time <= end_time) {
            time += float(function_60d95f53()) / 1000;
            if (var_a744e12b.lerp_time > time) {
                fraction = time / var_a744e12b.lerp_time;
                var_11098775 = lerpvector(start_origin, end_origin, fraction);
                cone_angle = lerpfloat(var_901160b4, var_a744e12b.cone_angle, fraction);
                var_c95e4493 = lerpfloat(var_9b091486, var_a744e12b.var_c95e4493, fraction);
            } else {
                var_11098775 = end_origin;
                cone_angle = var_a744e12b.cone_angle;
                var_c95e4493 = var_a744e12b.var_c95e4493;
            }
            /#
                if (getdvarint(#"hash_42def49e51a504c4", 0) && var_c95e4493 > 0 && cone_angle > 0) {
                    sphericalcone(var_11098775, var_11098775 + forward * var_c95e4493, cone_angle, 20, (0, 1, 0), 0.5, 0, 1);
                }
            #/
            if (var_c95e4493 > 0 && cone_angle > 0) {
                self function_beee2d27(damage_data, var_11098775, forward, cone_angle, var_c95e4493);
            }
            waitframe(1);
        }
    }
}

// Namespace namespace_e64042f6/namespace_8ccabe99
// Params 5, eflags: 0x6 linked
// Checksum 0x77382c00, Offset: 0xaa0
// Size: 0x360
function private function_beee2d27(damage_data, var_11098775, forward, cone_angle, var_c95e4493) {
    var_c91e0f7c = var_c95e4493 / 2;
    var_db7ae062 = var_11098775 + forward * var_c91e0f7c;
    var_560aca9f = cos(cone_angle);
    targets = getentitiesinradius(var_11098775, var_c95e4493, undefined);
    foreach (target in targets) {
        if (issentient(target) && (!isdefined(self.var_b3bd4a36[target getentitynumber()]) || self.var_b3bd4a36[target getentitynumber()] < gettime())) {
            midpoint = (target getabsmaxs() + target getabsmins()) / 2;
            target_radius = length((target getmaxs() + target getmins()) / 2);
            var_3cce00dd = vectornormalize(midpoint - var_11098775);
            var_4514d6d9 = vectordot(forward, var_3cce00dd);
            var_f869e2a9 = var_4514d6d9 / var_560aca9f;
            if (var_f869e2a9 < 0) {
                var_f869e2a9 = 0;
            } else if (var_f869e2a9 > 1) {
                var_f869e2a9 = 1;
            }
            var_f869e2a9 = pow(var_f869e2a9, 2);
            dist_to_target = distance(var_11098775, midpoint) - target_radius;
            if (dist_to_target < var_c95e4493 * var_f869e2a9) {
                damage_amount = damage_data.var_447ecba3;
                if (isai(target)) {
                    damage_amount *= damage_data.var_875147a8;
                }
                target dodamage(damage_amount, var_db7ae062, undefined, undefined, undefined, damage_data.damage_mod);
                self.var_b3bd4a36[target getentitynumber()] = gettime() + damage_data.damage_interval;
            }
        }
    }
}

// Namespace namespace_e64042f6/namespace_8ccabe99
// Params 5, eflags: 0x6 linked
// Checksum 0x57920cb, Offset: 0xe08
// Size: 0x412
function private function_3db443e5(damage_data, var_1005269b, position, forward, var_9861703a) {
    if (isdefined(var_1005269b.delay)) {
        wait(var_1005269b.delay);
        var_9861703a -= var_1005269b.delay;
    }
    sphere_origin = position + forward * (isdefined(var_1005269b.var_a744e12b[0].forward_offset) ? var_1005269b.var_a744e12b[0].forward_offset : 0) + (0, 0, isdefined(var_1005269b.var_a744e12b[0].z_offset) ? var_1005269b.var_a744e12b[0].z_offset : 0);
    sphere_radius = isdefined(var_1005269b.var_a744e12b[0].sphere_radius) ? var_1005269b.var_a744e12b[0].sphere_radius : 0;
    foreach (var_a744e12b in var_1005269b.var_a744e12b) {
        if (!isdefined(var_a744e12b.lerp_time)) {
            var_a744e12b.lerp_time = 0;
        }
        if (!isdefined(var_a744e12b.time)) {
            var_a744e12b.time = 0;
        }
        if (!isdefined(var_a744e12b.sphere_radius)) {
            var_a744e12b.sphere_radius = 0;
        }
        time = 0;
        end_time = is_true(var_a744e12b.var_6e390e3c) ? var_a744e12b.time * var_9861703a : var_a744e12b.lerp_time + var_a744e12b.time;
        start_origin = sphere_origin;
        var_10be2386 = sphere_radius;
        end_origin = position + forward * (isdefined(var_a744e12b.forward_offset) ? var_a744e12b.forward_offset : 0) + (0, 0, isdefined(var_a744e12b.z_offset) ? var_a744e12b.z_offset : 0);
        while (time <= end_time) {
            time += float(function_60d95f53()) / 1000;
            if (var_a744e12b.lerp_time > time) {
                fraction = time / var_a744e12b.lerp_time;
                sphere_origin = lerpvector(start_origin, end_origin, fraction);
                sphere_radius = lerpfloat(var_10be2386, var_a744e12b.sphere_radius, fraction);
            } else {
                sphere_origin = end_origin;
                sphere_radius = var_a744e12b.sphere_radius;
            }
            /#
                if (getdvarint(#"hash_42def49e51a504c4", 0)) {
                    sphere(sphere_origin, sphere_radius, (0, 1, 0), 0.5, 0, 20, 1);
                }
            #/
            if (sphere_radius > 0) {
                self function_c89e7444(damage_data, sphere_origin, sphere_radius);
            }
            waitframe(1);
        }
    }
}

// Namespace namespace_e64042f6/namespace_8ccabe99
// Params 3, eflags: 0x6 linked
// Checksum 0x9e22e365, Offset: 0x1228
// Size: 0x1a8
function private function_c89e7444(damage_data, sphere_origin, sphere_radius) {
    targets = getentitiesinradius(sphere_origin, sphere_radius, undefined);
    foreach (target in targets) {
        if (issentient(target) && (!isdefined(self.var_b3bd4a36[target getentitynumber()]) || self.var_b3bd4a36[target getentitynumber()] < gettime())) {
            damage_amount = damage_data.var_447ecba3;
            if (isai(target)) {
                damage_amount *= damage_data.var_875147a8;
            }
            target dodamage(damage_amount, sphere_origin, undefined, undefined, undefined, damage_data.damage_mod);
            self.var_b3bd4a36[target getentitynumber()] = gettime() + damage_data.damage_interval;
        }
    }
}

