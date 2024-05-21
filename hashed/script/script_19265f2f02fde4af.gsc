// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_1e5d913d;

// Namespace namespace_1e5d913d/namespace_54dfb21
// Params 0, eflags: 0x5
// Checksum 0x10e0b74a, Offset: 0x150
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_9fe6dae6d685563", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_1e5d913d/namespace_54dfb21
// Params 0, eflags: 0x6 linked
// Checksum 0x4d1460af, Offset: 0x198
// Size: 0x134
function private preinit() {
    level.var_8a1c2b55 = spawnstruct();
    level.var_8a1c2b55.var_6a01400c = 0;
    level.var_8a1c2b55.var_f782e821 = [];
    level.var_8a1c2b55.templates = [];
    var_2fe0d693 = getentarray(0, "script_model_augmented_impact_fx", "variantname");
    array::thread_all(var_2fe0d693, &function_7d76b3ac, 0);
    /#
        setdvar(#"hash_168747d9fbaa6a48", 0);
        setdvar(#"hash_312f96d76ca3d249", 0);
        setdvar(#"hash_2a6bc2c12ee6a9b4", 0);
        setdvar(#"hash_4557e9caba02e597", 0);
    #/
}

// Namespace namespace_1e5d913d/namespace_54dfb21
// Params 1, eflags: 0x6 linked
// Checksum 0x1e7d4841, Offset: 0x2d8
// Size: 0x390
function private function_7d76b3ac(local_client_num) {
    self endon(#"death", #"hash_44a5d69960a8b32c", #"hash_7cc4a540f68c1e3f");
    if (!isdefined(self.var_1e5d913d)) {
        println("<unknown string>" + self.origin[0] + "<unknown string>" + self.origin[1] + "<unknown string>" + self.origin[2]);
        return;
    }
    self.notifyonbulletimpact = 1;
    if (!isdefined(self.var_ac2c4043)) {
        self.var_ac2c4043 = (0.75, 0.75, 0.75);
    } else if (!isvec(self.var_ac2c4043)) {
        self.var_ac2c4043 = (self.var_ac2c4043, self.var_ac2c4043, self.var_ac2c4043);
    }
    data = spawnstruct();
    data.var_afb7f7ec = [];
    if (isdefined(self.target)) {
        data.var_afb7f7ec = getentarray(local_client_num, self.target, "targetname");
    }
    if (isdefined(self.var_9a3478b5) && !isdefined(level.var_8a1c2b55.templates[self.var_9a3478b5])) {
        var_4edf0398 = spawnstruct();
        var_4edf0398.var_1e4697f4 = getentarray(local_client_num, self.var_9a3478b5, "targetname");
        var_4edf0398.var_4ecc769d = (0, 0, 0);
        var_4edf0398.var_5fabbca1 = (0, 0, 0);
        level.var_8a1c2b55.templates[self.var_9a3478b5] = var_4edf0398;
        waitframe(1);
        foreach (index, ent in var_4edf0398.var_1e4697f4) {
            if (ent.model !== #"") {
                var_4edf0398.var_4ecc769d = ent.origin;
                var_4edf0398.var_5fabbca1 = ent.angles;
                arrayremoveindex(var_4edf0398.var_1e4697f4, index);
                ent delete();
                break;
            }
        }
    }
    data.var_33c88c75 = [];
    self.var_8a1c2b55 = data;
    self thread function_8f050823();
    while (true) {
        damage_data = self waittill(#"damage");
        self function_2138c62(local_client_num, self.var_1e5d913d, damage_data);
    }
}

// Namespace namespace_1e5d913d/namespace_54dfb21
// Params 0, eflags: 0x6 linked
// Checksum 0x9d2b6af4, Offset: 0x670
// Size: 0x536
function private function_8f050823() {
    var_2cc6e886 = getscriptbundle(self.var_1e5d913d);
    if ((isdefined(var_2cc6e886.var_d85a87b) ? var_2cc6e886.var_d85a87b : 0) > 0) {
        data = self.var_8a1c2b55;
        maxs = self getmaxs();
        mins = self getmins();
        for (bounds = maxs - mins; bounds == (0, 0, 0); bounds = maxs - mins) {
            waitframe(1);
            maxs = self getmaxs();
            mins = self getmins();
        }
        bounds *= self.var_ac2c4043;
        data.var_141b25f = abs(bounds[0] * bounds[1] * bounds[2]) / 231;
        data.var_78e64a1a = data.var_141b25f;
        while (data.var_78e64a1a > var_2cc6e886.var_3efc3a35 || data.var_33c88c75.size > 0) {
            data.var_78e64a1a -= var_2cc6e886.var_d85a87b / 60 * 0.016 * data.var_33c88c75.size;
            var_bed2bab8 = data.var_78e64a1a / data.var_141b25f;
            /#
                if (getdvarint(#"hash_2a6bc2c12ee6a9b4", 0)) {
                    str_array = strtok("<unknown string>" + data.var_78e64a1a, "<unknown string>");
                    var_78e64a1a = str_array[0];
                    var_5d8d813a = "<unknown string>";
                    if (str_array.size > 1) {
                        var_5d8d813a = getsubstr(str_array[1], 0, 1);
                    }
                    str_array = strtok("<unknown string>" + data.var_141b25f, "<unknown string>");
                    var_141b25f = str_array[0];
                    var_68be928f = "<unknown string>";
                    if (str_array.size > 1) {
                        var_68be928f = getsubstr(str_array[1], 0, 1);
                    }
                    print3d(self.origin + (0, 0, bounds[2] + 12), "<unknown string>" + var_78e64a1a + "<unknown string>" + var_5d8d813a + "<unknown string>" + var_141b25f + "<unknown string>" + var_68be928f, undefined, undefined, 0.1);
                }
                if (getdvarint(#"hash_4557e9caba02e597", 0)) {
                    if (isdefined(self.var_6020a9fa)) {
                        z_offset = (0, 0, bounds[2] * self.var_6020a9fa);
                        box(self.origin, mins * self.var_ac2c4043 + z_offset, maxs * self.var_ac2c4043 + z_offset, self.angles[1]);
                    } else {
                        box(self.origin, mins * self.var_ac2c4043, maxs * self.var_ac2c4043, self.angles[1]);
                    }
                }
            #/
            foreach (var_3fbe54a4 in data.var_33c88c75) {
                if (var_3fbe54a4 >= data.var_78e64a1a) {
                    self notify("augmented_impact_fx_" + var_3fbe54a4);
                }
            }
            waitframe(1);
        }
        self notify(#"hash_7cc4a540f68c1e3f");
    }
}

// Namespace namespace_1e5d913d/namespace_54dfb21
// Params 1, eflags: 0x6 linked
// Checksum 0x1f3bcc5d, Offset: 0xbb0
// Size: 0x106
function private function_93b52d75(damage_data) {
    data = self.var_8a1c2b55;
    if (isdefined(data.var_141b25f)) {
        maxs = self getabsmaxs();
        mins = self getabsmins();
        height = (maxs[2] - mins[2]) * self.var_ac2c4043[2];
        if (isdefined(self.var_6020a9fa)) {
            mins += (0, 0, height * self.var_6020a9fa);
        }
        return max(0, data.var_141b25f * (damage_data.position[2] - mins[2]) / height);
    }
    return 0;
}

// Namespace namespace_1e5d913d/namespace_54dfb21
// Params 1, eflags: 0x6 linked
// Checksum 0xf888e76a, Offset: 0xcc0
// Size: 0x8e
function private function_e7eb6310(damage_data) {
    data = self.var_8a1c2b55;
    if (!isdefined(data.var_78e64a1a)) {
        return 1;
    }
    var_2cc6e886 = getscriptbundle(self.var_1e5d913d);
    if (var_2cc6e886.var_aa7874b1) {
        return (damage_data.var_7c5043e3 < data.var_78e64a1a);
    }
    return data.var_78e64a1a > 0;
}

// Namespace namespace_1e5d913d/namespace_54dfb21
// Params 4, eflags: 0x6 linked
// Checksum 0x929e79e6, Offset: 0xd58
// Size: 0x101c
function private function_2138c62(local_client_num, var_1e5d913d, damage_data, var_b33be77) {
    if (level.var_8a1c2b55.var_6a01400c >= 50) {
        /#
            if (getdvarint(#"hash_312f96d76ca3d249", 0)) {
                println("<unknown string>" + var_1e5d913d + "<unknown string>" + self.origin[0] + "<unknown string>" + self.origin[1] + "<unknown string>" + self.origin[2]);
            }
        #/
        return;
    }
    if (!isplayer(damage_data.attacker) || damage_data.mod != "MOD_PISTOL_BULLET" && damage_data.mod != "MOD_RIFLE_BULLET" && damage_data.mod != "MOD_PROJECTILE") {
        /#
            if (getdvarint(#"hash_312f96d76ca3d249", 0)) {
                if (!isplayer(damage_data.attacker)) {
                    println("<unknown string>" + damage_data.attacker + "<unknown string>" + var_1e5d913d + "<unknown string>" + self.origin[0] + "<unknown string>" + self.origin[1] + "<unknown string>" + self.origin[2]);
                    return;
                }
                println("<unknown string>" + damage_data.mod + "<unknown string>" + var_1e5d913d + "<unknown string>" + self.origin[0] + "<unknown string>" + self.origin[1] + "<unknown string>" + self.origin[2]);
            }
        #/
        return;
    }
    if (isdefined(var_1e5d913d)) {
        var_2cc6e886 = getscriptbundle(var_1e5d913d);
        if (!isdefined(level.var_8a1c2b55.var_f782e821[var_1e5d913d])) {
            level.var_8a1c2b55.var_f782e821[var_1e5d913d] = [];
        }
    }
    if (!isdefined(var_2cc6e886)) {
        /#
            if (getdvarint(#"hash_312f96d76ca3d249", 0) && !isdefined(var_b33be77)) {
                println("<unknown string>" + self.origin[0] + "<unknown string>" + self.origin[1] + "<unknown string>" + self.origin[2]);
            }
        #/
        return;
    }
    if ((isdefined(var_2cc6e886.effect) ? var_2cc6e886.effect : "") == "") {
        /#
            if (getdvarint(#"hash_312f96d76ca3d249", 0)) {
                println("<unknown string>" + var_1e5d913d + "<unknown string>" + self.origin[0] + "<unknown string>" + self.origin[1] + "<unknown string>" + self.origin[2]);
            }
        #/
        return;
    }
    data = self.var_8a1c2b55;
    if (!isdefined(var_b33be77)) {
        var_b33be77 = [];
    }
    var_b33be77[var_b33be77.size] = var_1e5d913d;
    if (data.var_33c88c75.size < (isdefined(var_2cc6e886.var_9d47943c) ? var_2cc6e886.var_9d47943c : 1) && level.var_8a1c2b55.var_f782e821[var_1e5d913d].size < (isdefined(var_2cc6e886.var_404a7d1) ? var_2cc6e886.var_404a7d1 : 1)) {
        var_caa96e8a = 1;
        dist = isdefined(var_2cc6e886.distance) ? var_2cc6e886.distance : 0;
        if ((isdefined(var_2cc6e886.var_403e0972) ? var_2cc6e886.var_403e0972 : 0) > 0) {
            dist += randomfloatrange(var_2cc6e886.var_403e0972 * -1, var_2cc6e886.var_403e0972);
        }
        dist_squared = dist * dist;
        foreach (var_b935e60d in var_b33be77) {
            foreach (var_7aa37d9f in level.var_8a1c2b55.var_f782e821[var_b935e60d]) {
                if (distancesquared(damage_data.position, var_7aa37d9f.position) < dist_squared) {
                    var_caa96e8a = 0;
                    break;
                }
            }
            if (!var_caa96e8a) {
                /#
                    if (getdvarint(#"hash_312f96d76ca3d249", 0)) {
                        println("<unknown string>" + dist + "<unknown string>" + var_1e5d913d + "<unknown string>" + self.origin[0] + "<unknown string>" + self.origin[1] + "<unknown string>" + self.origin[2]);
                    }
                #/
                self function_2138c62(local_client_num, var_2cc6e886.var_fff670ab, damage_data, var_b33be77);
                return;
            }
        }
        var_7670388f = 1;
        if (!isdefined(var_2cc6e886.max_angle)) {
            var_2cc6e886.max_angle = 0;
        }
        if (!isdefined(var_2cc6e886.min_angle)) {
            var_2cc6e886.min_angle = 0;
        }
        if (var_2cc6e886.min_angle > 0 || var_2cc6e886.max_angle < 180) {
            angle = acos(vectordot(damage_data.direction, (0, 0, 1)));
            var_7670388f = angle >= var_2cc6e886.min_angle && angle <= var_2cc6e886.max_angle;
        }
        if (!var_7670388f) {
            /#
                if (getdvarint(#"hash_312f96d76ca3d249", 0)) {
                    println("<unknown string>" + angle + "<unknown string>" + var_1e5d913d + "<unknown string>" + self.origin[0] + "<unknown string>" + self.origin[1] + "<unknown string>" + self.origin[2]);
                }
            #/
            self function_2138c62(local_client_num, var_2cc6e886.var_fff670ab, damage_data, var_b33be77);
            return;
        }
        var_6175aa99 = 1;
        foreach (var_efd324db in data.var_afb7f7ec) {
            if (var_efd324db istouching(damage_data.position)) {
                var_6175aa99 = 0;
                break;
            }
        }
        if (var_6175aa99 && isdefined(self.var_9a3478b5)) {
            var_4edf0398 = level.var_8a1c2b55.templates[self.var_9a3478b5];
            position = var_4edf0398.var_4ecc769d + rotatepoint((damage_data.position - self.origin) / self.scale, var_4edf0398.var_5fabbca1 - self.angles);
            foreach (var_efd324db in var_4edf0398.var_1e4697f4) {
                if (var_efd324db istouching(position)) {
                    var_6175aa99 = 0;
                    break;
                }
            }
        }
        var_2d85b8d = 1;
        if (var_6175aa99) {
            damage_data.var_7c5043e3 = self function_93b52d75(damage_data);
            var_2d85b8d = self function_e7eb6310(damage_data);
            if (!var_2cc6e886.var_aa7874b1) {
                damage_data.var_7c5043e3 = 0;
            }
        }
        if (var_6175aa99 && var_2d85b8d) {
            level.var_8a1c2b55.var_6a01400c++;
            level.var_8a1c2b55.var_f782e821[var_1e5d913d][level.var_8a1c2b55.var_f782e821[var_1e5d913d].size] = damage_data;
            data.var_33c88c75[data.var_33c88c75.size] = damage_data.var_7c5043e3;
            forward = damage_data.direction;
            if ((isdefined(var_2cc6e886.var_f9ac1f46) ? var_2cc6e886.var_f9ac1f46 : 0) > 0) {
                offset = forward + perpendicularvector(forward) * tan(var_2cc6e886.var_f9ac1f46) * randomfloat(1);
                offset = rotatepointaroundaxis(offset, forward, randomfloatrange(0, 360));
                forward = vectornormalize(offset);
                /#
                    if (getdvarint(#"hash_168747d9fbaa6a48", 0)) {
                        iprintlnbold(acos(vectordot(damage_data.direction, forward)));
                    }
                #/
            }
            effect_id = playfx(local_client_num, var_2cc6e886.effect, damage_data.position, forward);
            lifetime = var_2cc6e886.lifetime;
            if ((isdefined(var_2cc6e886.var_3478ebdf) ? var_2cc6e886.var_3478ebdf : 0) > 0) {
                lifetime += randomfloat(var_2cc6e886.var_3478ebdf);
            }
            var_d017fb86 = "augmented_impact_fx_" + damage_data.var_7c5043e3;
            self thread function_479d351(local_client_num, var_2cc6e886.start_sound, var_2cc6e886.loop_sound, var_2cc6e886.end_sound, damage_data.position, lifetime, var_2cc6e886.var_d560194f, var_d017fb86);
            if (lifetime > 0) {
                self thread function_a4507e23(local_client_num, effect_id, var_1e5d913d, lifetime, damage_data, var_d017fb86);
                if (isdefined(var_2cc6e886.end_effect) && isdefined(var_2cc6e886.var_4241f357)) {
                    self thread function_9dce67f(local_client_num, var_2cc6e886.end_effect, var_2cc6e886.var_4241f357, isdefined(var_2cc6e886.var_3ee57e0e) ? var_2cc6e886.var_3ee57e0e : 0, damage_data.position, forward, var_d017fb86);
                }
            }
            if (is_true(self.send_notify)) {
                self notify(#"hash_49d7b379138ff899", {#position:damage_data.position, #forward:forward});
            }
            if ((isdefined(var_2cc6e886.debounce) ? var_2cc6e886.debounce : 0) > 0) {
                wait(var_2cc6e886.debounce);
            }
        }
        return;
    }
    /#
        if (getdvarint(#"hash_312f96d76ca3d249", 0)) {
            println("<unknown string>" + var_1e5d913d + "<unknown string>" + self.origin[0] + "<unknown string>" + self.origin[1] + "<unknown string>" + self.origin[2]);
        }
    #/
    self function_2138c62(local_client_num, var_2cc6e886.var_fff670ab, damage_data, var_b33be77);
}

// Namespace namespace_1e5d913d/namespace_54dfb21
// Params 6, eflags: 0x6 linked
// Checksum 0x43458813, Offset: 0x1d80
// Size: 0x10c
function private function_a4507e23(local_client_num, effect_id, var_1e5d913d, lifetime, damage_data, var_d017fb86) {
    util::function_e532f5da(lifetime, self, "death", self, var_d017fb86);
    stopfx(local_client_num, effect_id);
    level.var_8a1c2b55.var_6a01400c--;
    arrayremovevalue(level.var_8a1c2b55.var_f782e821[var_1e5d913d], damage_data, 0);
    if (isdefined(self) && !function_3132f113(self)) {
        arrayremovevalue(self.var_8a1c2b55.var_33c88c75, damage_data.var_7c5043e3, 0);
    }
    self notify(var_d017fb86);
}

// Namespace namespace_1e5d913d/namespace_54dfb21
// Params 8, eflags: 0x6 linked
// Checksum 0x5fc306f8, Offset: 0x1e98
// Size: 0x1a4
function private function_479d351(local_client_num, start_sound, loop_sound, end_sound, position, lifetime, fade_time, var_d017fb86) {
    if ((isdefined(start_sound) ? start_sound : "") != "") {
        self playsound(local_client_num, start_sound, position);
    }
    if ((isdefined(loop_sound) ? loop_sound : "") != "") {
        var_377beaaf = spawn(local_client_num, position, "script_origin");
        var_5b4f9682 = var_377beaaf playloopsound(loop_sound);
    }
    if (lifetime > 0) {
        util::function_e532f5da(lifetime, self, "death", self, var_d017fb86);
        if (isdefined(self) && (isdefined(end_sound) ? end_sound : "") != "") {
            self playsound(local_client_num, end_sound, position);
        }
        if (isdefined(var_377beaaf)) {
            var_377beaaf stoploopsound(var_5b4f9682, fade_time);
            waitframe(1);
            var_377beaaf delete();
        }
    }
}

// Namespace namespace_1e5d913d/namespace_54dfb21
// Params 7, eflags: 0x6 linked
// Checksum 0xaeae957d, Offset: 0x2048
// Size: 0xb4
function private function_9dce67f(local_client_num, end_effect, var_4241f357, delay, position, forward, var_d017fb86) {
    self waittill(#"death", var_d017fb86);
    if (isdefined(self)) {
        if (delay > 0.016) {
            wait(delay);
        }
        effect_id = playfx(local_client_num, end_effect, position, forward);
        wait(var_4241f357);
        stopfx(local_client_num, effect_id);
    }
}

