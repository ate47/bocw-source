// Atian COD Tools GSC CW decompiler test
#using script_76abb7986de59601;
#using script_67049b48b589d81;
#using script_64e5d3ad71ce8140;
#using script_6b71c9befed901f2;
#using script_75c3996cce8959f7;
#using script_71603a58e2da0698;
#using script_30c7fb449869910;
#using script_1b2f6ef7778cf920;
#using script_771f5bff431d8d57;
#using script_42cbbdcd1e160063;
#using script_3314b730521b9666;
#using script_77163d5a569e2071;
#using script_38635d174016f682;
#using script_18910f59cc847b42;
#using scripts\core_common\struct.csc;
#using scripts\core_common\spawning_shared.csc;
#using scripts\core_common\spawner_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_ac2a80f5;

// Namespace namespace_ac2a80f5/namespace_ac2a80f5
// Params 0, eflags: 0x2 linked
// Checksum 0x1caf08c7, Offset: 0x198
// Size: 0x14
function init() {
    function_32d5e898();
}

// Namespace namespace_ac2a80f5/namespace_ac2a80f5
// Params 1, eflags: 0x2 linked
// Checksum 0xd3cd5e30, Offset: 0x1b8
// Size: 0x160
function function_32d5e898(*localclientnum) {
    var_634814ee = 1;
    if (is_true(level.doa.var_318aa67a)) {
        var_634814ee = 6;
    }
    if (getlocalplayers().size > 1) {
        namespace_4dae815d::function_e1887b0f(1);
        var_634814ee = 4;
    }
    foreach (player in getlocalplayers()) {
        if (isdefined(player) && isdefined(player.doa)) {
            player.doa.cameramode = var_634814ee;
        }
        player function_278f20a3((75, 0, 0), function_ccf8a968(1));
    }
}

// Namespace namespace_ac2a80f5/namespace_ac2a80f5
// Params 1, eflags: 0x2 linked
// Checksum 0xee8cd41a, Offset: 0x320
// Size: 0x1b8
function function_57ce3201(localclientnum) {
    if (isbot(self)) {
        return;
    }
    self endon(#"disconnect");
    self notify("2862be11436776eb");
    self endon("2862be11436776eb");
    while (true) {
        level waittill(#"hash_743e9066181c346e");
        if (isdefined(localclientnum) && isdefined(self.doa)) {
            if (isdefined(self.doa.cameramode)) {
                if (self.doa.cameramode == 2 && !function_32cb6463(localclientnum)) {
                    var_69c3bd16 = self function_1d5dc8d2(localclientnum, self.doa.cameramode);
                    self changecamera(var_69c3bd16);
                }
                if (self.doa.cameramode == 3 && !function_32cb6463(localclientnum)) {
                    var_69c3bd16 = self function_1d5dc8d2(localclientnum, self.doa.cameramode);
                    self changecamera(var_69c3bd16);
                }
            }
            self namespace_7f5aeb59::function_4d692cc4(localclientnum, self.var_88a2ff29);
        }
    }
}

// Namespace namespace_ac2a80f5/namespace_ac2a80f5
// Params 3, eflags: 0x2 linked
// Checksum 0xcfb6784d, Offset: 0x4e0
// Size: 0x194
function function_278f20a3(angles, min_dist, max_dist = 0) {
    if (!isdefined(self) || !isdefined(self.doa)) {
        return;
    }
    if (isdefined(self.doa.var_67c3a8db)) {
        angles = self.doa.var_67c3a8db;
    }
    if (isdefined(angles)) {
        vectornormalize(angles);
        self.doa.var_13a2a410 = angles;
        self.doa.var_be529a4e = anglestoforward(angles) * -1;
        self.doa.var_7dd1941e = anglestoup(angles);
    }
    if (min_dist < 1) {
        min_dist = 1;
    }
    self.doa.var_f793b3d3 = min_dist;
    self.doa.var_878bf427 = max_dist;
    if (!isdefined(self.var_2d592f5b)) {
        self.var_2d592f5b = self.doa.var_13a2a410;
    }
    namespace_1e25ad94::debugmsg("++++++++++++++++++++++++ Player " + self getentitynumber() + " camera yaw angles are: " + self.doa.var_13a2a410);
}

// Namespace namespace_ac2a80f5/namespace_ac2a80f5
// Params 2, eflags: 0x0
// Checksum 0x41362b4a, Offset: 0x680
// Size: 0x94
function function_7dd474a0(*localclientnum, *delta_time) {
    player = level.localplayers[0];
    cam_pos = player.origin + (0, 0, 600);
    player camerasetposition(cam_pos);
    player camerasetlookat(player.doa.var_13a2a410);
}

// Namespace namespace_ac2a80f5/namespace_ac2a80f5
// Params 2, eflags: 0x2 linked
// Checksum 0x1b38429d, Offset: 0x720
// Size: 0xc3e
function function_14f1aa2b(localclientnum, delta_time) {
    if (!isdefined(level.localplayers) || level.localplayers.size == 0) {
        return;
    }
    localplayer = function_5c10bd79(localclientnum);
    if (!isdefined(localplayer) || !isdefined(localplayer.doa)) {
        return;
    }
    if (level.localplayers.size > 1) {
        if (level.doa.r_splitscreenexpandfull == 1 && localclientnum > 0) {
            var_b2b025b1 = level.localplayers[0];
            if (isdefined(var_b2b025b1) && isdefined(var_b2b025b1.doa) && isdefined(var_b2b025b1.var_45c6f27d)) {
                cam_pos = var_b2b025b1.var_45c6f27d;
                angles = var_b2b025b1.var_2d592f5b;
                zoffset = 0;
                if (isdefined(var_b2b025b1.doa.var_c544c883)) {
                    zoffset = var_b2b025b1.doa.var_c544c883;
                }
                localplayer camerasetposition(cam_pos + (0, 0, zoffset));
                localplayer camerasetlookat(angles);
                localplayer.var_45c6f27d = cam_pos;
                localplayer.var_2d592f5b = angles;
            }
            return;
        }
    }
    if (level.localplayers.size > 1) {
        if (level.doa.r_splitscreenexpandfull == 1 && localplayer.doa.cameramode != 4 && localplayer.doa.cameramode != 7) {
            localplayer.doa.cameramode = 4;
        }
    }
    cameramode = localplayer.doa.cameramode;
    if (cameramode == 7) {
        assert(isdefined(level.doa.var_b73cc08));
        cam_pos = level.doa.var_b73cc08.origin;
        angles = level.doa.var_b73cc08.angles;
        localplayer camerasetposition(cam_pos);
        localplayer camerasetlookat(angles);
        localplayer.var_45c6f27d = cam_pos;
        localplayer.var_2d592f5b = angles;
        return;
    }
    players = level.localplayers;
    angles = localplayer.doa.var_13a2a410;
    var_be529a4e = localplayer.doa.var_be529a4e;
    var_7dd1941e = localplayer.doa.var_7dd1941e;
    playercenter = localplayer.origin;
    vehicle = getplayervehicle(localplayer);
    if (isdefined(vehicle)) {
        playercenter = vehicle.origin;
    }
    if (cameramode == 4) {
        if (level.localplayers.size > 1) {
            mins = (1e+06, 1e+06, 1e+06);
            maxs = (-1e+06, -1e+06, -1e+06);
            if (level.doa.world_state == 0 && isdefined(level.doa.var_72b899ad)) {
                mins = function_2d9b1c4e(level.doa.var_72b899ad.origin, mins);
                maxs = function_663f7227(level.doa.var_72b899ad.origin, maxs);
            }
            foreach (player in getlocalplayers()) {
                mins = function_2d9b1c4e(player.origin, mins);
                maxs = function_663f7227(player.origin, maxs);
            }
            var_e1d2ab75 = maxs - mins;
            playercenter = (mins + maxs) * 0.5;
        } else if (isdefined(level.doa.var_72b899ad)) {
            dirtocenter = level.doa.var_72b899ad.origin - localplayer.origin;
            playercenter = localplayer.origin + dirtocenter * 0.25;
        }
    }
    if (is_true(level.var_fb0679ad)) {
        center = playercenter;
        cam_pos = center;
        var_91e98520 = center;
        cam_pos = (localplayer.origin[0], localplayer.origin[1], localplayer.origin[2]);
        facing = anglestoforward(localplayer getplayerangles());
        var_91e98520 = cam_pos + facing * (130 + abs(facing[0] * 30)) + localplayer getvelocity() * 0.5;
        if (isdefined(level.var_145dec4f)) {
            lerp_rate = 3;
            dir = var_91e98520 - level.var_145dec4f;
            if (lengthsquared(dir) < 1000000) {
                var_91e98520 = level.var_145dec4f + dir * lerp_rate * delta_time;
                cam_pos = var_91e98520;
            }
        }
        level.var_145dec4f = var_91e98520;
    }
    cam_pos = playercenter;
    cam_pos += var_be529a4e * localplayer.doa.var_f793b3d3;
    cam_pos += var_7dd1941e * -20;
    if (level.localplayers.size > 1 && cameramode == 4 && isdefined(level.doa.var_72b899ad)) {
        var_8172ec08 = 200;
        var_cfa24a5 = 1800;
        var_8d932466 = 450;
        var_5bdd9694 = abs(var_e1d2ab75[1]);
        var_189a34e8 = 0;
        if (var_5bdd9694 > var_8172ec08) {
            var_189a34e8 = (var_5bdd9694 - var_8172ec08) / (var_cfa24a5 - var_8172ec08);
        }
        var_5c03fa4 = 50;
        var_d946d37e = 500;
        var_49a6f227 = abs(var_e1d2ab75[0]);
        var_2280804 = 0;
        if (var_49a6f227 > var_5c03fa4) {
            var_2280804 = (var_49a6f227 - var_5c03fa4) / (var_d946d37e - var_5c03fa4);
            frac = math::clamp(var_2280804, 0, 1);
            var_53cfe241 = level.doa.var_72b899ad.origin[1];
            var_9fe93364 = cam_pos[1] + (var_53cfe241 - cam_pos[1]) * frac;
            cam_pos = (cam_pos[0], var_9fe93364, cam_pos[2]);
        }
        t = var_189a34e8;
        if (var_2280804 > t) {
            t = var_2280804;
        }
        var_fa5416a8 = var_8d932466;
        var_c9fdfd75 = 200;
        if (!isdefined(level.var_6a822745)) {
            level.var_6a822745 = var_c9fdfd75;
        }
        var_fa5416a8 -= var_c9fdfd75;
        if (t > 1) {
            var_c9fdfd75 *= t;
        }
        level.var_6a822745 += (var_c9fdfd75 - level.var_6a822745) * 3 * delta_time;
        cam_pos += var_be529a4e * var_c9fdfd75;
        var_fa5416a8 *= t;
        var_fa5416a8 = math::clamp(var_fa5416a8, 0, var_8d932466);
        if (!isdefined(level.var_fa5416a8)) {
            level.var_fa5416a8 = var_fa5416a8;
        }
        level.var_fa5416a8 += (var_fa5416a8 - level.var_fa5416a8) * 2 * delta_time;
        cam_pos += var_be529a4e * level.var_fa5416a8;
    }
    if (isdefined(localplayer.var_45c6f27d)) {
        lerp_rate = 2;
        dir = cam_pos - localplayer.var_45c6f27d;
        if (lengthsquared(dir) < 1000000) {
            cam_pos = localplayer.var_45c6f27d + dir * lerp_rate * delta_time;
        }
    }
    localplayer.var_ca14ee83 = angles;
    if (isdefined(localplayer.var_2d592f5b)) {
        lerp_rate = 3;
        dir = angles - localplayer.var_2d592f5b;
        angles = localplayer.var_2d592f5b + dir * lerp_rate * delta_time;
    }
    zoffset = 0;
    if (isdefined(localplayer.doa.var_c544c883)) {
        zoffset = localplayer.doa.var_c544c883;
    }
    if (cam_pos[2] > 3800) {
        cam_pos = (cam_pos[0], cam_pos[1], 3800);
    }
    localplayer camerasetposition(cam_pos + (0, 0, zoffset));
    localplayer camerasetlookat(angles);
    localplayer.var_45c6f27d = cam_pos;
    localplayer.var_2d592f5b = angles;
}

// Namespace namespace_ac2a80f5/namespace_ac2a80f5
// Params 2, eflags: 0x2 linked
// Checksum 0xfba1b15e, Offset: 0x1368
// Size: 0xa4
function function_2d9b1c4e(vec, mins) {
    if (vec[0] < mins[0]) {
        mins = (vec[0], mins[1], mins[2]);
    }
    if (vec[1] < mins[1]) {
        mins = (mins[0], vec[1], mins[2]);
    }
    if (vec[2] < mins[2]) {
        mins = (mins[0], mins[1], vec[2]);
    }
    return mins;
}

// Namespace namespace_ac2a80f5/namespace_ac2a80f5
// Params 2, eflags: 0x2 linked
// Checksum 0x980845c6, Offset: 0x1418
// Size: 0xa4
function function_663f7227(vec, maxs) {
    if (vec[0] > maxs[0]) {
        maxs = (vec[0], maxs[1], maxs[2]);
    }
    if (vec[1] > maxs[1]) {
        maxs = (maxs[0], vec[1], maxs[2]);
    }
    if (vec[2] > maxs[2]) {
        maxs = (maxs[0], maxs[1], vec[2]);
    }
    return maxs;
}

// Namespace namespace_ac2a80f5/namespace_ac2a80f5
// Params 1, eflags: 0x2 linked
// Checksum 0xa0f35351, Offset: 0x14c8
// Size: 0x3e4
function changecamera(mode) {
    if (!isdefined(self.doa)) {
        return;
    }
    self.doa.cameramode = mode;
    assert(isdefined(self.doa.cameramode));
    if (is_true(level.doa.var_318aa67a)) {
        self.doa.cameramode = 6;
        self.topdowncamera = 0;
        self.doa.infps = 1;
    }
    self cameraforcedisablescriptcam(0);
    if (is_true(level.doa.var_dec041f5)) {
        self.doa.cameramode = 7;
    } else if (level.localplayers.size > 1) {
        if (self.doa.cameramode == 4 && level.doa.r_splitscreenexpandfull != 1) {
            namespace_4dae815d::function_e1887b0f(1);
        }
        if (self.doa.cameramode == 5 && level.doa.r_splitscreenexpandfull != 0) {
            namespace_4dae815d::function_e1887b0f(0);
        }
        namespace_4dae815d::function_b6e8ef46();
        return;
    } else if (self.doa.cameramode == 6) {
        self cameraforcedisablescriptcam(1);
    }
    height = function_ccf8a968(self.doa.cameramode);
    if (isdefined(level.doa.var_72b899ad) && isdefined(level.doa.var_72b899ad.camera_max_height)) {
        if (height > level.doa.var_72b899ad.camera_max_height) {
            height = level.doa.var_72b899ad.camera_max_height;
        }
    }
    if (level.doa.world_state == 0) {
        assert(isdefined(isdefined(level.doa.var_72b899ad)));
        normalangle = level.doa.var_72b899ad.var_13ea8aea;
        var_1d83376c = level.doa.var_72b899ad.var_46f3a17d;
    } else {
        normalangle = (75, 0, 0);
        var_1d83376c = (75, 180, 0);
    }
    if (is_true(self.doa.var_71122e79)) {
        self function_278f20a3(var_1d83376c, height);
    } else {
        self function_278f20a3(normalangle, height);
    }
    /#
        namespace_1e25ad94::debugmsg("<unknown string>" + self getentitynumber() + "<unknown string>" + self.doa.cameramode);
    #/
}

// Namespace namespace_ac2a80f5/namespace_ac2a80f5
// Params 2, eflags: 0x2 linked
// Checksum 0x88360fe5, Offset: 0x18b8
// Size: 0x1e4
function function_1d5dc8d2(localclientnum, var_545466e8 = 1) {
    if (isdefined(level.doa.var_dbdc241e)) {
        return level.doa.var_dbdc241e;
    }
    if (level.localplayers.size > 1) {
        if (level.doa.r_splitscreenexpandfull == 0 && namespace_4dae815d::function_abcdf17f()) {
            return 5;
        }
        if (level.doa.r_splitscreenexpandfull == 1) {
            return 5;
        } else {
            return 4;
        }
    }
    var_545466e8++;
    var_c0547bf3 = 3;
    if (level.doa.world_state == 0) {
        var_c0547bf3 = 4;
    }
    if (isdefined(level.doa.var_182fb75a) || isdefined(level.doa.var_938e4f08) && level.doa.var_938e4f08 != 0) {
        var_c0547bf3 = 2;
    }
    if (var_545466e8 > var_c0547bf3) {
        var_545466e8 = 0;
    }
    if (var_545466e8 == 2 && !function_32cb6463(localclientnum)) {
        if (var_545466e8 < var_c0547bf3) {
            var_545466e8++;
        } else {
            var_545466e8 = 0;
        }
    }
    if (var_545466e8 == 3 && !function_32cb6463(localclientnum)) {
        if (var_545466e8 < var_c0547bf3) {
            var_545466e8++;
        } else {
            var_545466e8 = 0;
        }
    }
    return var_545466e8;
}

// Namespace namespace_ac2a80f5/namespace_ac2a80f5
// Params 1, eflags: 0x2 linked
// Checksum 0xc34b320c, Offset: 0x1aa8
// Size: 0xc2
function function_ccf8a968(var_545466e8) {
    if (!isdefined(var_545466e8)) {
        return 650;
    }
    switch (var_545466e8) {
    case 0:
        return 400;
    case 1:
    case 4:
        return 650;
    case 2:
        return 900;
    case 3:
        return 1200;
    case 8:
        return 800;
    default:
        return 650;
    }
}

// Namespace namespace_ac2a80f5/namespace_ac2a80f5
// Params 2, eflags: 0x2 linked
// Checksum 0xf0daf114, Offset: 0x1b78
// Size: 0xa2
function function_f7736714(localclientnum, cameramode) {
    if (cameramode == 2 && !function_32cb6463(localclientnum)) {
        cameramode = self function_1d5dc8d2(localclientnum, cameramode);
    }
    if (cameramode == 3 && !function_32cb6463(localclientnum)) {
        cameramode = self function_1d5dc8d2(localclientnum, cameramode);
    }
    return cameramode;
}

