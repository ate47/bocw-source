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
    if (is_true(level.var_8cff5775.var_318aa67a)) {
        var_634814ee = 6;
    }
    if (getlocalplayers().size > 1) {
        namespace_4dae815d::function_e1887b0f(1);
        var_634814ee = 4;
    }
    foreach (player in getlocalplayers()) {
        if (isdefined(player) && isdefined(player.var_8cff5775)) {
            player.var_8cff5775.cameramode = var_634814ee;
        }
        player function_278f20a3(vectorscale((1, 0, 0), 75), function_ccf8a968(1));
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
    while (1) {
        level waittill(#"hash_743e9066181c346e");
        if (isdefined(localclientnum) && isdefined(self.var_8cff5775)) {
            if (isdefined(self.var_8cff5775.cameramode)) {
                if (self.var_8cff5775.cameramode == 2 && !function_32cb6463(localclientnum)) {
                    var_69c3bd16 = self function_1d5dc8d2(localclientnum, self.var_8cff5775.cameramode);
                    self function_288d5ebb(var_69c3bd16);
                }
                if (self.var_8cff5775.cameramode == 3 && !function_32cb6463(localclientnum)) {
                    var_69c3bd16 = self function_1d5dc8d2(localclientnum, self.var_8cff5775.cameramode);
                    self function_288d5ebb(var_69c3bd16);
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
    if (!isdefined(self) || !isdefined(self.var_8cff5775)) {
        return;
    }
    if (isdefined(self.var_8cff5775.var_67c3a8db)) {
        angles = self.var_8cff5775.var_67c3a8db;
    }
    if (isdefined(angles)) {
        vectornormalize(angles);
        self.var_8cff5775.var_13a2a410 = angles;
        self.var_8cff5775.var_be529a4e = anglestoforward(angles) * -1;
        self.var_8cff5775.var_7dd1941e = anglestoup(angles);
    }
    if (min_dist < 1) {
        min_dist = 1;
    }
    self.var_8cff5775.var_f793b3d3 = min_dist;
    self.var_8cff5775.var_878bf427 = max_dist;
    if (!isdefined(self.var_2d592f5b)) {
        self.var_2d592f5b = self.var_8cff5775.var_13a2a410;
    }
    namespace_1e25ad94::function_f5f0c0f8("++++++++++++++++++++++++ Player " + self getentitynumber() + " camera yaw angles are: " + self.var_8cff5775.var_13a2a410);
}

// Namespace namespace_ac2a80f5/namespace_ac2a80f5
// Params 2, eflags: 0x0
// Checksum 0x41362b4a, Offset: 0x680
// Size: 0x94
function function_7dd474a0(*localclientnum, *var_facb5140) {
    player = level.localplayers[0];
    var_88389b8f = player.origin + vectorscale((0, 0, 1), 600);
    player camerasetposition(var_88389b8f);
    player camerasetlookat(player.var_8cff5775.var_13a2a410);
}

// Namespace namespace_ac2a80f5/namespace_ac2a80f5
// Params 2, eflags: 0x2 linked
// Checksum 0x1b38429d, Offset: 0x720
// Size: 0xc3e
function function_14f1aa2b(localclientnum, var_facb5140) {
    if (!isdefined(level.localplayers) || level.localplayers.size == 0) {
        return;
    }
    localplayer = function_5c10bd79(localclientnum);
    if (!isdefined(localplayer) || !isdefined(localplayer.var_8cff5775)) {
        return;
    }
    if (level.localplayers.size > 1) {
        if (level.var_8cff5775.r_splitscreenexpandfull == 1 && localclientnum > 0) {
            var_b2b025b1 = level.localplayers[0];
            if (isdefined(var_b2b025b1) && isdefined(var_b2b025b1.var_8cff5775) && isdefined(var_b2b025b1.var_45c6f27d)) {
                var_88389b8f = var_b2b025b1.var_45c6f27d;
                angles = var_b2b025b1.var_2d592f5b;
                zoffset = 0;
                if (isdefined(var_b2b025b1.var_8cff5775.var_c544c883)) {
                    zoffset = var_b2b025b1.var_8cff5775.var_c544c883;
                }
                localplayer camerasetposition(var_88389b8f + (0, 0, zoffset));
                localplayer camerasetlookat(angles);
                localplayer.var_45c6f27d = var_88389b8f;
                localplayer.var_2d592f5b = angles;
            }
            return;
        }
    }
    if (level.localplayers.size > 1) {
        if (level.var_8cff5775.r_splitscreenexpandfull == 1 && localplayer.var_8cff5775.cameramode != 4 && localplayer.var_8cff5775.cameramode != 7) {
            localplayer.var_8cff5775.cameramode = 4;
        }
    }
    cameramode = localplayer.var_8cff5775.cameramode;
    if (cameramode == 7) {
        /#
            assert(isdefined(level.var_8cff5775.var_b73cc08));
        #/
        var_88389b8f = level.var_8cff5775.var_b73cc08.origin;
        angles = level.var_8cff5775.var_b73cc08.angles;
        localplayer camerasetposition(var_88389b8f);
        localplayer camerasetlookat(angles);
        localplayer.var_45c6f27d = var_88389b8f;
        localplayer.var_2d592f5b = angles;
        return;
    }
    players = level.localplayers;
    angles = localplayer.var_8cff5775.var_13a2a410;
    var_be529a4e = localplayer.var_8cff5775.var_be529a4e;
    var_7dd1941e = localplayer.var_8cff5775.var_7dd1941e;
    var_8cc62135 = localplayer.origin;
    vehicle = getplayervehicle(localplayer);
    if (isdefined(vehicle)) {
        var_8cc62135 = vehicle.origin;
    }
    if (cameramode == 4) {
        if (level.localplayers.size > 1) {
            mins = vectorscale((1, 1, 1), 1e+06);
            maxs = vectorscale((-1, -1, -1), 1e+06);
            if (level.var_8cff5775.var_358fbdc8 == 0 && isdefined(level.var_8cff5775.var_72b899ad)) {
                mins = function_2d9b1c4e(level.var_8cff5775.var_72b899ad.origin, mins);
                maxs = function_663f7227(level.var_8cff5775.var_72b899ad.origin, maxs);
            }
            foreach (player in getlocalplayers()) {
                mins = function_2d9b1c4e(player.origin, mins);
                maxs = function_663f7227(player.origin, maxs);
            }
            var_e1d2ab75 = maxs - mins;
            var_8cc62135 = (mins + maxs) * 0.5;
        } else if (isdefined(level.var_8cff5775.var_72b899ad)) {
            var_e7993c63 = level.var_8cff5775.var_72b899ad.origin - localplayer.origin;
            var_8cc62135 = localplayer.origin + var_e7993c63 * 0.25;
        }
    }
    if (is_true(level.var_fb0679ad)) {
        center = var_8cc62135;
        var_88389b8f = center;
        var_91e98520 = center;
        var_88389b8f = (localplayer.origin[0], localplayer.origin[1], localplayer.origin[2]);
        facing = anglestoforward(localplayer getplayerangles());
        var_91e98520 = var_88389b8f + facing * (130 + abs(facing[0] * 30)) + localplayer getvelocity() * 0.5;
        if (isdefined(level.var_145dec4f)) {
            var_55e8085c = 3;
            dir = var_91e98520 - level.var_145dec4f;
            if (lengthsquared(dir) < 1000000) {
                var_91e98520 = level.var_145dec4f + dir * var_55e8085c * var_facb5140;
                var_88389b8f = var_91e98520;
            }
        }
        level.var_145dec4f = var_91e98520;
    }
    var_88389b8f = var_8cc62135;
    var_88389b8f = var_88389b8f + var_be529a4e * localplayer.var_8cff5775.var_f793b3d3;
    var_88389b8f = var_88389b8f + var_7dd1941e * -20;
    if (level.localplayers.size > 1 && cameramode == 4 && isdefined(level.var_8cff5775.var_72b899ad)) {
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
            var_53cfe241 = level.var_8cff5775.var_72b899ad.origin[1];
            var_9fe93364 = var_88389b8f[1] + (var_53cfe241 - var_88389b8f[1]) * frac;
            var_88389b8f = (var_88389b8f[0], var_9fe93364, var_88389b8f[2]);
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
        var_fa5416a8 = var_fa5416a8 - var_c9fdfd75;
        if (t > 1) {
            var_c9fdfd75 = var_c9fdfd75 * t;
        }
        level.var_6a822745 = level.var_6a822745 + (var_c9fdfd75 - level.var_6a822745) * 3 * var_facb5140;
        var_88389b8f = var_88389b8f + var_be529a4e * var_c9fdfd75;
        var_fa5416a8 = var_fa5416a8 * t;
        var_fa5416a8 = math::clamp(var_fa5416a8, 0, var_8d932466);
        if (!isdefined(level.var_fa5416a8)) {
            level.var_fa5416a8 = var_fa5416a8;
        }
        level.var_fa5416a8 = level.var_fa5416a8 + (var_fa5416a8 - level.var_fa5416a8) * 2 * var_facb5140;
        var_88389b8f = var_88389b8f + var_be529a4e * level.var_fa5416a8;
    }
    if (isdefined(localplayer.var_45c6f27d)) {
        var_55e8085c = 2;
        dir = var_88389b8f - localplayer.var_45c6f27d;
        if (lengthsquared(dir) < 1000000) {
            var_88389b8f = localplayer.var_45c6f27d + dir * var_55e8085c * var_facb5140;
        }
    }
    localplayer.var_ca14ee83 = angles;
    if (isdefined(localplayer.var_2d592f5b)) {
        var_55e8085c = 3;
        dir = angles - localplayer.var_2d592f5b;
        angles = localplayer.var_2d592f5b + dir * var_55e8085c * var_facb5140;
    }
    zoffset = 0;
    if (isdefined(localplayer.var_8cff5775.var_c544c883)) {
        zoffset = localplayer.var_8cff5775.var_c544c883;
    }
    if (var_88389b8f[2] > 3800) {
        var_88389b8f = (var_88389b8f[0], var_88389b8f[1], 3800);
    }
    localplayer camerasetposition(var_88389b8f + (0, 0, zoffset));
    localplayer camerasetlookat(angles);
    localplayer.var_45c6f27d = var_88389b8f;
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
function function_288d5ebb(mode) {
    if (!isdefined(self.var_8cff5775)) {
        return;
    }
    self.var_8cff5775.cameramode = mode;
    /#
        assert(isdefined(self.var_8cff5775.cameramode));
    #/
    if (is_true(level.var_8cff5775.var_318aa67a)) {
        self.var_8cff5775.cameramode = 6;
        self.topdowncamera = 0;
        self.var_8cff5775.var_3e81d24c = 1;
    }
    self cameraforcedisablescriptcam(0);
    if (is_true(level.var_8cff5775.var_dec041f5)) {
        self.var_8cff5775.cameramode = 7;
    } else if (level.localplayers.size > 1) {
        if (self.var_8cff5775.cameramode == 4 && level.var_8cff5775.r_splitscreenexpandfull != 1) {
            namespace_4dae815d::function_e1887b0f(1);
        }
        if (self.var_8cff5775.cameramode == 5 && level.var_8cff5775.r_splitscreenexpandfull != 0) {
            namespace_4dae815d::function_e1887b0f(0);
        }
        namespace_4dae815d::function_b6e8ef46();
        return;
    } else if (self.var_8cff5775.cameramode == 6) {
        self cameraforcedisablescriptcam(1);
    }
    height = function_ccf8a968(self.var_8cff5775.cameramode);
    if (isdefined(level.var_8cff5775.var_72b899ad) && isdefined(level.var_8cff5775.var_72b899ad.var_eea7f12e)) {
        if (height > level.var_8cff5775.var_72b899ad.var_eea7f12e) {
            height = level.var_8cff5775.var_72b899ad.var_eea7f12e;
        }
    }
    if (level.var_8cff5775.var_358fbdc8 == 0) {
        /#
            assert(isdefined(isdefined(level.var_8cff5775.var_72b899ad)));
        #/
        var_8ccfb8ec = level.var_8cff5775.var_72b899ad.var_13ea8aea;
        var_1d83376c = level.var_8cff5775.var_72b899ad.var_46f3a17d;
    } else {
        var_8ccfb8ec = vectorscale((1, 0, 0), 75);
        var_1d83376c = (75, 180, 0);
    }
    if (is_true(self.var_8cff5775.var_71122e79)) {
        self function_278f20a3(var_1d83376c, height);
    } else {
        self function_278f20a3(var_8ccfb8ec, height);
    }
    /#
        function_f5f0c0f8("<unknown string>" + self getentitynumber() + "<unknown string>" + self.var_8cff5775.cameramode);
    #/
}

// Namespace namespace_ac2a80f5/namespace_ac2a80f5
// Params 2, eflags: 0x2 linked
// Checksum 0x88360fe5, Offset: 0x18b8
// Size: 0x1e4
function function_1d5dc8d2(localclientnum, var_545466e8 = 1) {
    if (isdefined(level.var_8cff5775.var_dbdc241e)) {
        return level.var_8cff5775.var_dbdc241e;
    }
    if (level.localplayers.size > 1) {
        if (level.var_8cff5775.r_splitscreenexpandfull == 0 && namespace_4dae815d::function_abcdf17f()) {
            return 5;
        }
        if (level.var_8cff5775.r_splitscreenexpandfull == 1) {
            return 5;
        } else {
            return 4;
        }
    }
    var_545466e8++;
    var_c0547bf3 = 3;
    if (level.var_8cff5775.var_358fbdc8 == 0) {
        var_c0547bf3 = 4;
    }
    if (isdefined(level.var_8cff5775.var_182fb75a) || isdefined(level.var_8cff5775.var_938e4f08) && level.var_8cff5775.var_938e4f08 != 0) {
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
    case #"hash_defdefdefdefdef0":
        return 650;
        break;
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

