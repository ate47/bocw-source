// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\dialogue.gsc;
#using script_85cd2e9a28ea8a1;
#using script_198f1b397865a5ad;
#using scripts\cp_common\snd_utility.gsc;
#using script_3dc93ca9902a9cda;
#using scripts\cp_common\snd.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace snd;

// Namespace snd/namespace_93606de4
// Params 0, eflags: 0x5
// Checksum 0x1eac6d1d, Offset: 0x268
// Size: 0x8c
function private autoexec function_db8ba550() {
    function_294cb4fa();
    function_518f6be7();
    /#
        dvar("<unknown string>", "<unknown string>", &function_6a02a3f8);
        dvar("<unknown string>", "<unknown string>", &function_c1f0a1a0);
    #/
}

// Namespace snd/namespace_93606de4
// Params 1, eflags: 0x4
// Checksum 0xf81178d7, Offset: 0x300
// Size: 0x282
function private function_b9014159(*userdata) {
    player = level.player;
    now = gettime();
    if (isdefined(self.var_404d1644.time) == 1 && self.var_404d1644.time == now) {
        assert(isdefined(self.var_404d1644.distanceattenuation) == 1);
        return self.var_404d1644.distanceattenuation;
    }
    var_5d8f50b0 = self.var_404d1644.var_5d8f50b0;
    var_28128153 = self.var_404d1644.var_28128153;
    var_16fc9737 = self.var_404d1644.var_16fc9737;
    playerorigin = player geteye();
    distancetoplayer = distance(self.origin, playerorigin);
    if (distancetoplayer > var_28128153) {
        self.var_404d1644.distanceattenuation = 0;
    } else if (distancetoplayer <= var_5d8f50b0) {
        self.var_404d1644.distanceattenuation = 1;
    } else {
        var_96454505 = var_28128153 - var_5d8f50b0;
        distancefrac = 1 - (distancetoplayer - var_5d8f50b0) / var_96454505;
    }
    self.var_404d1644.time = now;
    /#
        if (function_95c9af4b() > 1) {
            var_86bf21bc = self.origin;
            var_c75cd11f = getdvarfloat(#"hash_182296346d138cf8");
            function_fa8480e6(var_86bf21bc - (0, 0, 0 * var_c75cd11f), "<unknown string>" + self.var_404d1644.distanceattenuation, (1, 1, 1), 1, var_c75cd11f, 1);
        }
    #/
    return self.var_404d1644.distanceattenuation;
}

// Namespace snd/namespace_93606de4
// Params 2, eflags: 0x4
// Checksum 0x371eb4e0, Offset: 0x590
// Size: 0x248
function private function_e2782c4a(*inputvalue, userdata) {
    player = userdata;
    foreach (var_f828a846, var_79162eff in level.var_28778381) {
        assert(isdefined(var_f828a846) == 1);
        var_ab57c0be = 0;
        foreach (var_453b3fb3 in var_79162eff) {
            if (function_3132f113(var_453b3fb3) == 1) {
                continue;
            }
            if (var_453b3fb3.var_404d1644.distanceattenuation > var_ab57c0be) {
                var_ab57c0be = var_453b3fb3.var_404d1644.distanceattenuation;
                if (isdefined(var_453b3fb3.var_404d1644.var_d89a17f3) == 1) {
                    var_ab57c0be *= var_453b3fb3.var_404d1644.var_d89a17f3;
                }
            }
        }
        if (var_ab57c0be > 0) {
            if (isdefined(level.player.var_404d1644[var_f828a846]) == 0) {
                waitframe(1);
            }
            level.player.var_404d1644[var_f828a846] = var_ab57c0be;
            continue;
        }
        if (isdefined(level.player.var_404d1644[var_f828a846]) == 1) {
            level.player.var_404d1644[var_f828a846] = undefined;
        }
    }
}

// Namespace snd/namespace_93606de4
// Params 1, eflags: 0x4
// Checksum 0x268f65db, Offset: 0x7e0
// Size: 0x24e
function private function_77a1c8ae(*userdata) {
    var_f828a846 = undefined;
    if (self != level.player) {
        var_f828a846 = self.var_404d1644.var_f828a846;
        if (isdefined(level.var_28778381[var_f828a846]) == 1) {
            if (isinarray(level.var_28778381[var_f828a846], self) == 1) {
                arrayremovevalue(level.var_28778381[var_f828a846], self, 1);
            }
        }
        self.var_404d1644 = undefined;
    }
    if (isdefined(var_f828a846) == 1) {
        if (isdefined(level.var_28778381[var_f828a846]) == 1) {
            if (level.var_28778381[var_f828a846].size == 0) {
                level.var_28778381[var_f828a846] = undefined;
            }
        }
        if (isdefined(level.player.var_404d1644) == 1) {
            foreach (var_9fa1f8fb, var_f9695b5f in level.player.var_404d1644) {
                if (var_f828a846 == var_9fa1f8fb && isdefined(level.var_28778381[var_f828a846]) == 0) {
                    level.player.var_404d1644[var_f828a846] = undefined;
                }
            }
        }
    }
    if (isdefined(level.player.var_404d1644) == 1 && level.player.var_404d1644.size == 0) {
        level.player.var_404d1644 = undefined;
        if (isdefined(level.var_28778381) == 1 && level.var_28778381.size == 0) {
        }
    }
}

// Namespace snd/namespace_93606de4
// Params 5, eflags: 0x6 linked
// Checksum 0x543a897, Offset: 0xa38
// Size: 0x26e
function private function_bfea3a77(var_f828a846, var_d89a17f3, var_5d8f50b0, var_28128153, var_16fc9737) {
    var_5a696c5d = self;
    assert(isdefined(var_5a696c5d) == 1, "<unknown string>");
    assert(isdefined(var_f828a846) == 1, "<unknown string>");
    if (isdefined(var_d89a17f3) == 0) {
        var_d89a17f3 = 1;
    }
    if (isdefined(var_5d8f50b0) == 0 || isdefined(var_28128153) == 0 || isdefined(var_16fc9737) == 0) {
        while (isdefined(var_5a696c5d.soundalias) == 0) {
            waitframe(1);
        }
        if (function_3132f113(var_5a696c5d) == 1) {
            return;
        }
        var_5d8f50b0 = 24;
        var_28128153 = 2400;
        var_16fc9737 = undefined;
        if (isdefined(var_16fc9737) == 0 || var_16fc9737 == "" || var_16fc9737 == "$default" || var_16fc9737 == "default") {
            var_16fc9737 = "default_vfcurve";
        }
    }
    var_16fc9737 = "linear";
    var_b9fe5640 = spawnstruct();
    var_b9fe5640.var_5d8f50b0 = var_5d8f50b0;
    var_b9fe5640.var_28128153 = var_28128153;
    var_b9fe5640.var_16fc9737 = var_16fc9737;
    var_b9fe5640.var_f828a846 = var_f828a846;
    var_b9fe5640.var_d89a17f3 = var_d89a17f3;
    var_b9fe5640.time = 0;
    var_5a696c5d.var_404d1644 = var_b9fe5640;
    if (isdefined(level.var_28778381) == 0) {
        level.var_28778381 = [];
    }
    if (isdefined(level.var_28778381[var_f828a846]) == 0) {
        level.var_28778381[var_f828a846] = [];
    }
    var_3e7ec58e = level.var_28778381[var_f828a846].size;
    level.var_28778381[var_f828a846][var_3e7ec58e] = var_5a696c5d;
}

// Namespace snd/namespace_93606de4
// Params 5, eflags: 0x0
// Checksum 0x3f7d392f, Offset: 0xcb0
// Size: 0x4c
function function_90dcaacf(var_f828a846, var_d89a17f3, var_5d8f50b0, var_28128153, var_16fc9737) {
    self thread function_bfea3a77(var_f828a846, var_d89a17f3, var_5d8f50b0, var_28128153, var_16fc9737);
}

// Namespace snd/namespace_93606de4
// Params 0, eflags: 0x0
// Checksum 0x3654de40, Offset: 0xd08
// Size: 0xe4
function function_38e71eb0() {
    var_5a696c5d = undefined;
    var_f828a846 = undefined;
    if (isentity(self) == 1 && isdefined(self.var_404d1644) == 1 && isdefined(self.var_404d1644.var_f828a846) == 1) {
        var_5a696c5d = self;
        var_f828a846 = self.var_404d1644.var_f828a846;
    } else if (function_f984063f() == 1) {
        /#
            debugbreak();
        #/
    }
    if (isdefined(var_f828a846) == 1) {
        if (isdefined(level.var_28778381[var_f828a846]) == 1) {
        }
    }
}

// Namespace snd/namespace_93606de4
// Params 2, eflags: 0x0
// Checksum 0x112b8b24, Offset: 0xdf8
// Size: 0x34
function function_90509715(var_af8e391e, var_48a9b1c9) {
    level thread function_44a0fc4(var_af8e391e, var_48a9b1c9);
}

// Namespace snd/namespace_93606de4
// Params 3, eflags: 0x6 linked
// Checksum 0xf163473, Offset: 0xe38
// Size: 0x44c
function private function_44a0fc4(var_af8e391e, var_48a9b1c9, var_a3fbfa71) {
    /#
        var_749178c6 = "<unknown string>";
        var_c8c21635 = 0;
        isbuttonpressed = 0;
        var_9b9a42b1 = 0.8;
        if (isdefined(var_af8e391e) == 0) {
            var_af8e391e = 0.1 * var_9b9a42b1;
        }
        if (isdefined(var_48a9b1c9) == 0) {
            var_48a9b1c9 = "<unknown string>";
        }
        if (isdefined(var_a3fbfa71) == 0) {
            var_a3fbfa71 = 500;
        }
        var_c1ed6f8 = var_9b9a42b1;
        var_5491c04c = isbuttonpressed;
        var_b00eae99 = undefined;
        var_b053696b = 0;
        assert(isdefined(var_c8c21635));
        assert(isdefined(var_9b9a42b1));
        assert(isdefined(var_af8e391e));
        assert(isdefined(var_c1ed6f8));
        assert(isdefined(var_48a9b1c9));
        while (true) {
            volume = getdvarfloat(var_749178c6);
            var_5cbd7bfa = 0;
            isbuttonpressed = level.player buttonpressed(var_48a9b1c9);
            if (isbuttonpressed == 1 && var_5491c04c == 0) {
                var_b053696b = gettime();
            } else if (isbuttonpressed == 0) {
                var_b053696b = 0;
            }
            if (isbuttonpressed == 1 && var_b053696b > 0) {
                var_e497ff20 = gettime() - var_b053696b;
                if (var_e497ff20 >= var_a3fbfa71) {
                    var_5cbd7bfa = 1;
                    var_b053696b = 0;
                }
            }
            if (var_5cbd7bfa == 1) {
                var_c8c21635 = !var_c8c21635;
                switch (var_c8c21635) {
                default:
                    break;
                }
            }
            if (var_c8c21635 == 1 && isdefined(var_b00eae99) == 0) {
                color = (1, 0.623529, 0.498039);
                alpha = 0.333;
                fontscale = 2;
                x = 0;
                y = -64 * fontscale;
                var_5ebf496b = "<unknown string>" + var_48a9b1c9 + "<unknown string>";
                var_b00eae99 = newdebughudelem();
                var_b00eae99.x = x;
                var_b00eae99.y = y;
                var_b00eae99.alignx = "<unknown string>";
                var_b00eae99.aligny = "<unknown string>";
                var_b00eae99.horzalign = "<unknown string>";
                var_b00eae99.vertalign = "<unknown string>";
                var_b00eae99.alpha = alpha;
                var_b00eae99.color = color;
                var_b00eae99.sort = 2;
                var_b00eae99.font = "<unknown string>";
                var_b00eae99.fontscale = fontscale;
                var_b00eae99.shadowed = 1;
                var_b00eae99.foreground = 1;
                var_b00eae99.label = var_5ebf496b;
            } else if (var_c8c21635 == 0 && isdefined(var_b00eae99) == 1) {
                var_b00eae99 destroy();
                var_b00eae99 = undefined;
            }
            var_c1ed6f8 = var_9b9a42b1;
            var_5491c04c = isbuttonpressed;
            waitframe(1);
        }
    #/
}

// Namespace snd/namespace_93606de4
// Params 1, eflags: 0x0
// Checksum 0xe3650cc8, Offset: 0x1290
// Size: 0x16c
function function_59b7784b(var_91377dd9) {
    var_6df2f4ed = 11;
    var_f2ffc21f = level.player.origin;
    shakescale = (var_91377dd9 + 0.2, var_91377dd9, var_91377dd9 * 0.5);
    duration = 1;
    durationfadeup = 0;
    durationfadedown = 1;
    radius = 2500;
    var_636ecd76 = (var_6df2f4ed + 0.33, var_6df2f4ed - 0.2, var_6df2f4ed * 0.25);
    screenshake(var_f2ffc21f, shakescale[0], shakescale[1], shakescale[2], duration, durationfadeup, durationfadedown, radius, var_636ecd76[0], var_636ecd76[1], var_636ecd76[2]);
    /#
        if (isdefined(level.var_9378edd5) && level.var_9378edd5 == 1) {
            iprintlnbold("<unknown string>");
        }
    #/
}

// Namespace snd/namespace_93606de4
// Params 2, eflags: 0x6 linked
// Checksum 0x20bee7ad, Offset: 0x1408
// Size: 0x5a
function private function_68dbcf23(var_8b0894e2, var_887e31c1) {
    var_fdf21d4f = level.player function_efda2d6d();
    org = pointonsegmentnearesttopoint(var_8b0894e2, var_887e31c1, var_fdf21d4f);
    return org;
}

// Namespace snd/namespace_93606de4
// Params 7, eflags: 0x6 linked
// Checksum 0x19dba9b0, Offset: 0x1470
// Size: 0x15e
function private function_6134380c(alias, islooping, var_8b0894e2, var_887e31c1, fadein, fadeout, var_743c16e0) {
    self endon(#"death");
    waittime = 0.0666;
    self.soundalias = alias;
    self.line_start = var_8b0894e2;
    self.line_end = var_887e31c1;
    if (isdefined(fadein) == 1) {
        waitframe(1);
    }
    if (islooping == 1) {
        self playloopsound(alias);
    } else {
        var_743c16e0 = "sounddone";
        self playsound(alias);
    }
    if (isdefined(var_743c16e0) == 1) {
        self thread function_58019ad9(islooping, fadeout, var_743c16e0);
    }
    while (true) {
        org = function_68dbcf23(var_8b0894e2, var_887e31c1);
        self moveto(org, waittime, 0, 0);
        wait(waittime);
    }
}

// Namespace snd/namespace_93606de4
// Params 3, eflags: 0x6 linked
// Checksum 0xaa9d2475, Offset: 0x15d8
// Size: 0x7c
function private function_58019ad9(islooping, fadeout, var_743c16e0) {
    if (isdefined(var_743c16e0) == 1) {
        self waittill(var_743c16e0);
    }
    if (isdefined(fadeout) == 1 && fadeout > 0) {
        wait(fadeout);
    }
    if (islooping == 1) {
        self stoploopsound();
    }
}

// Namespace snd/namespace_93606de4
// Params 7, eflags: 0x2 linked
// Checksum 0x9835dcc3, Offset: 0x1660
// Size: 0xc0
function function_6dc5d407(alias, islooping, var_8b0894e2, var_887e31c1, fadein, fadeout, var_a0d34681) {
    org = function_68dbcf23(var_8b0894e2, var_887e31c1);
    ent = undefined;
    if (isdefined(ent) == 0) {
        /#
            iprintln("<unknown string>");
        #/
        return;
    }
    ent thread function_6134380c(alias, islooping, var_8b0894e2, var_887e31c1, fadein, fadeout, var_a0d34681);
    return ent;
}

// Namespace snd/namespace_93606de4
// Params 5, eflags: 0x0
// Checksum 0x4b064c45, Offset: 0x1728
// Size: 0xb0
function function_dda1d491(alias, var_8b0894e2, var_887e31c1, time_min, time_max) {
    self endon(#"hash_1fdfe9a2ee5c7a64");
    self endon(#"hash_21cbaaf28d93437b");
    self endon(#"death");
    while (true) {
        function_6dc5d407(alias, 0, var_8b0894e2, var_887e31c1);
        var_7f793265 = function_83328b67(time_min, time_max);
        wait(var_7f793265);
    }
}

// Namespace snd/namespace_93606de4
// Params 3, eflags: 0x0
// Checksum 0x679e656, Offset: 0x17e0
// Size: 0x114
function function_ab26d4b7(label, point1, point2) {
    if (!isdefined(level.var_77a389b2)) {
        level.var_77a389b2 = [];
    }
    assert(!isdefined(level.var_77a389b2[label]), "<unknown string>" + label + "<unknown string>");
    level.var_77a389b2[label] = [point1, vectornormalize(point2 - point1), distance(point1, point2), point2];
    self thread function_17b9cb33(label);
    self thread function_a0414d75(label);
}

// Namespace snd/namespace_93606de4
// Params 1, eflags: 0x6 linked
// Checksum 0xa32e9e46, Offset: 0x1900
// Size: 0x27e
function private function_17b9cb33(label) {
    self endon(#"death");
    self endon(label + "_line_ent_stop");
    assert(isdefined(self) == 1);
    update_rate = 0.1;
    while (true) {
        var_874f5aad = level.player.origin - level.var_77a389b2[label][0];
        var_7bfe4890 = vectordot(var_874f5aad, level.var_77a389b2[label][1]);
        var_7bfe4890 = math::clamp(var_7bfe4890, 0, level.var_77a389b2[label][2]);
        sound_origin = level.var_77a389b2[label][0] + level.var_77a389b2[label][1] * var_7bfe4890;
        self moveto(sound_origin, update_rate);
        /#
            if (function_95c9af4b() > 1) {
                p1 = level.var_77a389b2[label][0];
                p2 = level.var_77a389b2[label][3];
                color = (1, 1, 1);
                alpha = 1;
                depthtest = 0;
                dur = int(floor(update_rate / 0.05));
                line(p1, p2, color, alpha, depthtest, dur);
                function_81183b3(sound_origin, 24, self.angles, color * 1000, alpha, depthtest, dur);
            }
        #/
        wait(update_rate);
    }
}

// Namespace snd/namespace_93606de4
// Params 4, eflags: 0x0
// Checksum 0x9a45a2b8, Offset: 0x1b88
// Size: 0xb4
function function_65485047(label, point1, point2, time) {
    self endon(#"death");
    self endon(#"sounddone");
    self endon(label + "_line_ent_stop");
    assert(isdefined(level.var_77a389b2[label]), "<unknown string>" + label + "<unknown string>");
    self thread function_6cec2fa9(label, point1, point2, time);
}

// Namespace snd/namespace_93606de4
// Params 4, eflags: 0x6 linked
// Checksum 0xe247b86e, Offset: 0x1c48
// Size: 0x1ae
function private function_6cec2fa9(label, point1, point2, time) {
    self endon(#"death");
    self endon(#"sounddone");
    self endon(label + "_line_ent_stop");
    tick = 0.2;
    var_7e80dee7 = level.var_77a389b2[label][0];
    var_7b2f5268 = level.var_77a389b2[label][3];
    var_8113b1f4 = time / tick;
    for (i = 0; i < var_8113b1f4; i++) {
        fraction = (i + 1) / var_8113b1f4;
        var_c9b2005f = vectorlerp(var_7e80dee7, point1, fraction);
        var_9d4813f0 = vectorlerp(var_7b2f5268, point2, fraction);
        level.var_77a389b2[label] = [var_c9b2005f, vectornormalize(var_9d4813f0 - var_c9b2005f), distance(var_c9b2005f, var_9d4813f0), var_9d4813f0];
        wait(tick);
    }
}

// Namespace snd/namespace_93606de4
// Params 1, eflags: 0x2 linked
// Checksum 0xa05cd305, Offset: 0x1e00
// Size: 0x48
function function_a0414d75(label) {
    self waittill(#"death", #"sounddone", label + "_line_ent_stop");
    level.var_77a389b2[label] = undefined;
}

// Namespace snd/namespace_93606de4
// Params 6, eflags: 0x0
// Checksum 0x54f15f75, Offset: 0x1e50
// Size: 0x5c
function function_e3bbd02e(*var_f828a846, *attack, *hold, *release, var_2ce83612, *scale) {
    if (isdefined(scale) == 1 && scale > 0) {
        wait(scale);
    }
}

// Namespace snd/namespace_93606de4
// Params 9, eflags: 0x0
// Checksum 0x2162247, Offset: 0x1eb8
// Size: 0x168
function function_4f3aa5d6(*var_f828a846, attack, hold, *release, var_2ce83612, dist_min, dist_max, var_b0791d84, var_cc2c9bdb) {
    if (!isdefined(var_b0791d84) && isdefined(self) && isdefined(self.origin)) {
        var_b0791d84 = self.origin;
    }
    if (!isdefined(var_cc2c9bdb)) {
        var_cc2c9bdb = level.player.origin;
    }
    assert(isdefined(var_b0791d84), "<unknown string>");
    if (!isdefined(var_2ce83612)) {
        var_2ce83612 = 0;
    }
    if (!isdefined(dist_min)) {
        dist_min = 500;
    }
    if (!isdefined(dist_max)) {
        dist_max = 1000;
    }
    dist = distance(var_cc2c9bdb, var_b0791d84);
    if (dist > dist_max) {
        return;
    }
    scale = mapfloat(dist_min, dist_max, 0, 0.3, dist);
    wait(var_2ce83612);
    if (release == 0) {
        release += 0.05;
    }
    wait(hold + release);
}

// Namespace snd/namespace_93606de4
// Params 3, eflags: 0x0
// Checksum 0xb03fa558, Offset: 0x2028
// Size: 0x34
function function_85642848(range, view, scale) {
    self thread function_4f2eaeca(range, view, scale);
}

// Namespace snd/namespace_93606de4
// Params 3, eflags: 0x6 linked
// Checksum 0xd19be941, Offset: 0x2068
// Size: 0x220
function private function_4f2eaeca(range, view, scale) {
    self endon(#"hash_123d75bd0aca2c20");
    level endon(#"hash_6bc6a0427de83068");
    self endon(#"death");
    if (!isdefined(range)) {
        range = 1000;
    }
    if (!isdefined(view)) {
        view = cos(90);
    } else {
        view = cos(view);
    }
    if (!isdefined(scale)) {
        scale = 1;
    }
    time = 0.05;
    while (true) {
        wait(time);
        dist = distance(self.origin, level.player.origin);
        start_origin = level.player geteye();
        start_angles = level.player getplayerangles();
        end_origin = self.origin;
        normal = vectornormalize(end_origin - start_origin);
        forward = anglestoforward(start_angles);
        vol = vectordot(forward, normal);
        vol = mapfloat(0, 1, 1 - scale, 1, vol);
        if (vol >= view) {
            function_db78159d(self, vol, time);
        }
    }
}

// Namespace snd/namespace_93606de4
// Params 4, eflags: 0x0
// Checksum 0x3edf5609, Offset: 0x2290
// Size: 0x44
function function_aa00de89(alias, position, range, view) {
    self thread function_ec6efa64(alias, position, range, view);
}

// Namespace snd/namespace_93606de4
// Params 4, eflags: 0x6 linked
// Checksum 0xa3120a18, Offset: 0x22e0
// Size: 0x10c
function private function_ec6efa64(alias, position, range, view) {
    self endon(#"hash_123d75bd0aca2c20");
    level endon(#"hash_6bc6a0427de83068");
    if (!isdefined(range)) {
        range = 1000;
    }
    if (!isdefined(view)) {
        view = cos(45);
    } else {
        view = cos(view);
    }
    time = 0.1;
    while (true) {
        wait(time);
        dist = distance(position, level.player.origin);
        wait(time);
    }
    play(alias, position);
}

// Namespace snd/namespace_93606de4
// Params 0, eflags: 0x2 linked
// Checksum 0xbd2f8f80, Offset: 0x23f8
// Size: 0x5e4
function function_518f6be7() {
    if (!isdefined(level.var_9c638f25)) {
        level.var_9c638f25 = [];
        level.var_9c638f25[#"hash_6d0517e881fb9048"] = [0, 0.02, 0.045, 0.065, 0.09, 0.11, 0.135, 0.155, 0.18, 0.2];
        level.var_9c638f25[#"hash_6f05b9f8849ad15d"] = [0.2, 0.18, 0.155, 0.135, 0.11, 0.09, 0.065, 0.045, 0.02, 0];
        level.var_9c638f25[#"hash_4e2d52f3f0be7ff0"] = [0, 0.01, 0.019, 0.03, 0.049, 0.068, 0.102, 0.15, 0.229, 0.343];
        level.var_9c638f25[#"hash_4f72d4357814b6ec"] = [0.343, 0.229, 0.15, 0.102, 0.068, 0.049, 0.03, 0.019, 0.01, 0];
        level.var_9c638f25[#"hash_60fcd0938f1c15ad"] = [0, 0.051, 0.077, 0.094, 0.108, 0.118, 0.127, 0.135, 0.142, 0.148];
        level.var_9c638f25[#"hash_515cc0964c4d5f65"] = [0.148, 0.142, 0.135, 0.127, 0.118, 0.108, 0.094, 0.077, 0.051, 0];
        level.var_9c638f25[#"bell"] = [0.003, 0.017, 0.057, 0.14, 0.283, 0.283, 0.14, 0.057, 0.017, 0.003];
        level.var_9c638f25[#"hash_3a962d646a55e818"] = [0.283, 0.14, 0.057, 0.017, 0.003, 0.003, 0.017, 0.057, 0.14, 0.283];
    }
}

// Namespace snd/namespace_93606de4
// Params 3, eflags: 0x2 linked
// Checksum 0xf35ad5f4, Offset: 0x29e8
// Size: 0xc4
function function_e963e8e(time_min, time_max, var_2eb6a1b0) {
    values = [];
    values[0] = time_min;
    var_99adf0c9 = level.var_9c638f25[var_2eb6a1b0].size;
    step = (time_max - time_min) / (var_99adf0c9 - 1);
    for (i = 1; i < var_99adf0c9 - 1; i++) {
        values[i] = values[i - 1] + step;
    }
    values[values.size] = time_max;
    return values;
}

// Namespace snd/namespace_93606de4
// Params 2, eflags: 0x0
// Checksum 0xdcef32ae, Offset: 0x2ab8
// Size: 0xd2
function function_7bde8914(w, amount) {
    a = [];
    var_bf1e5b71 = 1 / w.size;
    for (i = 0; i < w.size; i++) {
        diff = var_bf1e5b71 - w[i];
        offset = (1 - amount) * abs(diff);
        if (diff < 0) {
            offset *= -1;
        }
        a[i] = w[i] + offset;
    }
    return a;
}

// Namespace snd/namespace_93606de4
// Params 2, eflags: 0x0
// Checksum 0x22b6e2ad, Offset: 0x2b98
// Size: 0xb6
function function_4dca3057(w, v) {
    var_99adf0c9 = w.size;
    r = randomfloat(1);
    total = 0;
    var_e1a9017f = v[v.size - 1];
    for (i = 0; i < var_99adf0c9; i++) {
        total += w[i];
        if (r < total) {
            var_e1a9017f = v[i];
            break;
        }
    }
    return var_e1a9017f;
}

// Namespace snd/namespace_93606de4
// Params 1, eflags: 0x2 linked
// Checksum 0x35b97046, Offset: 0x2c58
// Size: 0xa8
function function_7a111e9c(w) {
    var_99adf0c9 = w.size;
    r = randomfloat(1);
    total = 0;
    var_e1a9017f = w.size - 1;
    for (i = 0; i < var_99adf0c9; i++) {
        total += w[i];
        if (r < total) {
            var_e1a9017f = i;
            break;
        }
    }
    return var_e1a9017f;
}

// Namespace snd/namespace_93606de4
// Params 3, eflags: 0x0
// Checksum 0x8f98b13d, Offset: 0x2d08
// Size: 0x12c
function function_9ca26fba(min, max, var_2eb6a1b0) {
    if (isdefined(var_2eb6a1b0)) {
        weights = level.var_9c638f25[var_2eb6a1b0];
        if (isdefined(weights)) {
            values = function_e963e8e(min, max, var_2eb6a1b0);
            var_ba9b2215 = function_7a111e9c(weights);
            var_685fc74b = 0;
            var_33d453ad = values.size - 1;
            if (var_ba9b2215 == 0) {
                var_33d453ad = 1;
            } else if (var_ba9b2215 == values.size - 1) {
                var_685fc74b = var_33d453ad - 1;
            } else {
                var_685fc74b = var_ba9b2215 - 1;
                var_33d453ad = var_ba9b2215 + 1;
            }
            return randomfloatrange(values[var_685fc74b], values[var_33d453ad]);
        }
    }
}

// Namespace snd/namespace_93606de4
// Params 4, eflags: 0x0
// Checksum 0x5c93a50e, Offset: 0x2e40
// Size: 0x246
function function_2517b19c(min, max, label = "shared_default", width = 0.5) {
    if (!isdefined(level.var_76d79843)) {
        level.var_76d79843 = spawnstruct();
        level.var_76d79843.label = 0;
    }
    width = math::clamp(width, 0, 1);
    width *= 5;
    iteration = 0;
    for (i = 0; i < width; i++) {
        iteration += randomfloatrange(min, max);
    }
    x = iteration / width;
    if (x > max * 0.5) {
        x -= max;
    }
    x += max * 0.5;
    previous = level.var_76d79843.label;
    range = max - min;
    mid = range * 0.5;
    if (abs(previous - x) < range * 0.2) {
        x = mapfloat(min, max, max - randomfloatrange(0, range * 0.35), min + randomfloatrange(0, range * 0.35), x);
        x = math::clamp(x, min, max);
    }
    level.var_76d79843.label = x;
    return x;
}

// Namespace snd/namespace_93606de4
// Params 6, eflags: 0x6 linked
// Checksum 0x30257099, Offset: 0x3090
// Size: 0x66
function private function_7776e399(alias, *var_f828a846, *attack, *hold, *release, *scale) {
    self endon(#"death");
    self endon("abort_" + scale);
    while (true) {
    }
}

// Namespace snd/namespace_93606de4
// Params 6, eflags: 0x0
// Checksum 0xf1219cf0, Offset: 0x3100
// Size: 0x3bc
function function_da704a02(alias, var_f828a846, scale, attack, release, radio) {
    ent = self;
    var_2c0edc54 = 1;
    if (!isdefined(var_f828a846)) {
        var_f828a846 = "critical_dialogue";
    }
    if (!isdefined(scale)) {
        scale = 0.5;
    }
    assert(scale >= 0 && scale <= 1, "<unknown string>");
    if (!isdefined(attack)) {
        attack = 0.5 * scale;
    }
    if (!isdefined(release)) {
        release = 1 * scale;
    }
    if (!isdefined(radio)) {
        radio = 0;
    }
    if (radio == 1) {
        ent = level.player;
    }
    if (soundexists(alias) == 0) {
        /#
            var_bc3a30ce = "<unknown string>" + alias + "<unknown string>";
            function_3ba3cecb(var_bc3a30ce);
        #/
        var_2c0edc54 = 0;
        return;
    }
    var_79c6ddab = "";
    if (function_81fac19d(var_79c6ddab != "dialog_critical", "alias '" + alias + "' volmod not 'dialog_critical' ('" + var_79c6ddab + "')")) {
        var_2c0edc54 = 0;
    }
    var_a215ab3d = soundgetplaybacktime(alias);
    hold = var_a215ab3d - attack - release;
    if (hold < 0) {
        hold = 0;
    }
    if (function_81fac19d(var_a215ab3d <= 0, "alias '" + alias + "' length " + var_a215ab3d + " too short to envelope")) {
        var_2c0edc54 = 0;
    }
    if (var_2c0edc54 == 1) {
        var_66a04f11 = 24;
        var_7e2f0732 = 2400;
        thresh = var_7e2f0732 * 0.5;
        if (isdefined(ent) && isdefined(ent.origin) && radio == 0) {
            dist = distance(ent.origin, level.player.origin);
        } else {
            dist = 0;
        }
        if (function_81fac19d(dist > thresh, "critical dialogue '" + alias + "' " + dist / 12 + " feet away")) {
            var_2c0edc54 = 0;
        } else {
            ent thread function_7776e399(alias, var_f828a846, attack, hold, release, scale);
        }
    }
    if (ent == level.player || radio == 1) {
    }
}

// Namespace snd/namespace_93606de4
// Params 3, eflags: 0x2 linked
// Checksum 0x3101342, Offset: 0x34c8
// Size: 0x5be
function function_9299618(var_16ae04ab, var_5b2df2a0, endons) {
    self notify(#"hash_63850bb43dbc38de");
    level endon(#"hash_63850bb43dbc38de");
    self endon(#"hash_63850bb43dbc38de", #"death");
    var_5b2df2a0 = function_ea2f17d1(var_5b2df2a0, [6, 24]);
    var_8969a580 = var_5b2df2a0[0];
    var_4a4a2db8 = var_5b2df2a0[1];
    if (isarray(endons)) {
        foreach (end_on in endons) {
            if (isstring(end_on)) {
                level endon(end_on);
            }
        }
    } else if (isstring(endons)) {
        level endon(endons);
    }
    if (!isscriptfunctionptr(var_16ae04ab)) {
        return;
    }
    if (function_3132f113(self)) {
        return;
    }
    self.var_2de4672c = 0;
    self.lastsaytime = gettime();
    assert(isdefined(self.lastsaytime) == 1);
    while (function_3132f113(self) == 0) {
        if (isdefined(level._snd.var_91ff3ae4)) {
            var_8969a580 = level._snd.var_91ff3ae4;
        }
        if (isdefined(level._snd.var_8bea37be)) {
            var_4a4a2db8 = level._snd.var_8bea37be;
        }
        now = gettime();
        istalking = is_true(self.istalking);
        if (istalking) {
            self.lastsaytime = now;
        }
        lastsaytime = self.lastsaytime;
        delta = now - lastsaytime;
        deltaseconds = delta / 1000;
        if (istalking == 0 && deltaseconds >= var_8969a580) {
            if (self.var_2de4672c == 0) {
                self.var_2de4672c = int(now + randomfloatrange(var_8969a580, var_4a4a2db8) * 1000);
            }
            if (now >= self.var_2de4672c) {
                soundalias = [[ var_16ae04ab ]](self);
                if (isdefined(soundalias)) {
                    self.bdisabledefaultfacialanims = 1;
                    self dialogue::queue(soundalias);
                    self.lastsaytime = now;
                    self.var_2de4672c = 0;
                }
            }
        } else {
            self.var_2de4672c = 0;
        }
        /#
            if (function_95c9af4b() > 1) {
                var_20768eda = self gettagorigin("<unknown string>");
                if (!isdefined(var_20768eda)) {
                    var_20768eda = self.origin + (0, 0, 72);
                }
                org = var_20768eda;
                org += (0, 0, 9);
                var_a8dca3b9 = "<unknown string>";
                if (self.var_2de4672c > 0) {
                    nexttime = self.var_2de4672c / 1000 - now / 1000;
                    var_a8dca3b9 = function_d6053a8f(nexttime, 2);
                }
                var_ed98e4bb = "<unknown string>";
                var_479b18b2 = "<unknown string>" + var_a8dca3b9 + "<unknown string>" + deltaseconds;
                function_ac033c46(var_ed98e4bb, org, 0.125, "<unknown string>", (180, 180, 180), 0.72974, (0, 0, 0), 0.72974, (1, 1, 1), 0.72974);
                function_ac033c46(var_479b18b2, org, 0.125, "<unknown string>", (1, 1, 1), 1, (0, 0, 0), 0.72974, (1, 1, 1), 0.72974);
            }
        #/
        waitframe(1);
    }
}

// Namespace snd/namespace_93606de4
// Params 7, eflags: 0x0
// Checksum 0x207da718, Offset: 0x3a90
// Size: 0x5c
function function_6967f975(actor_ent, soundalias, var_793802a, var_7ca3f45d, frame_rate, stop_notify, var_1d1d4794) {
    thread function_f253a9d9(actor_ent, soundalias, var_793802a, var_7ca3f45d, frame_rate, stop_notify, var_1d1d4794);
}

// Namespace snd/namespace_93606de4
// Params 7, eflags: 0x6 linked
// Checksum 0xd75b201d, Offset: 0x3af8
// Size: 0x144
function private function_f253a9d9(*actor_ent, soundalias, var_793802a, var_7ca3f45d, frame_rate, stop_notify, var_1d1d4794) {
    if (function_81fac19d(!isdefined(soundalias), "snd_pcap_play_vo: sound alias undefined")) {
        return;
    }
    if (function_81fac19d(!soundexists(soundalias), "snd_pcap_play_vo: not a a valid alias")) {
        return;
    }
    sound_target = [self, "j_head"];
    var_1d1d4794 = function_ea2f17d1(var_1d1d4794, 0.1);
    function_56a60177(var_793802a, frame_rate);
    var_eabfdd64 = play(soundalias, sound_target);
    if (isstring(stop_notify)) {
        function_d4e10f97(var_eabfdd64, var_7ca3f45d, var_1d1d4794);
    }
}

// Namespace snd/namespace_93606de4
// Params 2, eflags: 0x6 linked
// Checksum 0x203b24f, Offset: 0x3c48
// Size: 0xaa
function private function_56a60177(var_793802a, frame_rate) {
    var_793802a = function_ea2f17d1(var_793802a, 0);
    frame_rate = function_ea2f17d1(frame_rate, 29.97);
    var_bb92af3f = floor(var_793802a);
    frames = (var_793802a - var_bb92af3f) * 100;
    wait_time = var_bb92af3f + frames * 1 / frame_rate;
    wait(wait_time);
}

// Namespace snd/namespace_93606de4
// Params 3, eflags: 0x0
// Checksum 0xba705d4, Offset: 0x3d00
// Size: 0x9c
function function_c9ebfa2(xanim, *notetrack, *var_596cbb65) {
    info = function_643b5581(var_596cbb65);
    animname = info[#"animname"];
    anime = info[#"anime"];
    assert(isdefined(anime), "<unknown string>");
}

// Namespace snd/namespace_93606de4
// Params 1, eflags: 0x6 linked
// Checksum 0x7860334e, Offset: 0x3da8
// Size: 0x196
function private function_643b5581(xanim) {
    foreach (var_7cd1f30b, var_d74d7402 in level.scr_anim) {
        if (isstring(var_7cd1f30b) && isarray(var_d74d7402)) {
            foreach (var_ba93f88, var_42203061 in var_d74d7402) {
                if (isstring(var_ba93f88) && !isarray(var_42203061)) {
                    if (xanim == var_42203061) {
                        result = [];
                        result[#"anime"] = var_ba93f88;
                        result[#"animname"] = var_7cd1f30b;
                        return result;
                    }
                }
            }
        }
    }
}

// Namespace snd/namespace_93606de4
// Params 0, eflags: 0x6 linked
// Checksum 0x80ef9a6c, Offset: 0x3f48
// Size: 0x8e
function private function_be27bceb() {
    assert(isdefined(self) == 1);
    if (isdefined(self.var_3ce724aa) == 1) {
        self waittill(#"hash_3a117b23d7bfa071");
        if (isdefined(self.var_3ce724aa.soundent) == 1) {
            self.var_3ce724aa.soundent delete();
        }
        self.var_3ce724aa = undefined;
    }
}

// Namespace snd/namespace_93606de4
// Params 7, eflags: 0x6 linked
// Checksum 0xccf68f0b, Offset: 0x3fe0
// Size: 0x346
function private function_250787e2(totaltime, var_a426158d, var_f22c6e0, var_453be1d, var_4947439b, var_ede9da4b, endcallback) {
    assert(isdefined(self) == 1);
    assert(isdefined(self.var_3ce724aa) == 1);
    assert(isdefined(var_a426158d) == 1);
    if (isdefined(var_f22c6e0) == 0) {
        var_f22c6e0 = var_a426158d;
    }
    if (isdefined(var_453be1d) == 0) {
        var_453be1d = 1;
    }
    if (isdefined(var_4947439b) == 0) {
        var_4947439b = 1;
    }
    if (isdefined(var_ede9da4b) == 0) {
        var_ede9da4b = "linear";
    }
    self thread function_be27bceb();
    self endon(#"hash_3a117b23d7bfa071");
    while (gettime() <= self.var_3ce724aa.endtime) {
        now = gettime();
        remainingtime = self.var_3ce724aa.endtime - now;
        var_55a86a6e = 1000;
        if (remainingtime <= 5000) {
            var_55a86a6e = 500;
        }
        if (remainingtime <= 3000) {
            var_55a86a6e = 250;
        }
        if (remainingtime <= 1000) {
            var_55a86a6e = 50;
        }
        var_95b67614 = remainingtime - var_55a86a6e;
        var_f515cb6a = var_95b67614 % var_55a86a6e;
        var_95b67614 = var_95b67614 + var_55a86a6e - var_f515cb6a;
        if (remainingtime <= var_95b67614) {
            if (self.var_3ce724aa.var_a713936b != 0) {
                self.var_3ce724aa.soundent playsound(var_a426158d);
                self.var_3ce724aa.var_a713936b = 0;
            } else {
                self.var_3ce724aa.soundent playsound(var_f22c6e0);
                self.var_3ce724aa.var_a713936b = 1;
            }
            assert(isdefined(self.var_3ce724aa.soundent) == 1);
            var_3939aafb = mapfloat(0, totaltime, var_4947439b, var_453be1d, remainingtime);
            function_964c3a03(self.var_3ce724aa.soundent, var_3939aafb, 0.05, var_ede9da4b);
            /#
            #/
        }
        waitframe(1);
    }
    if (isdefined(endcallback) == 1) {
        self [[ endcallback ]]();
    }
    self notify(#"hash_3a117b23d7bfa071");
}

// Namespace snd/namespace_93606de4
// Params 0, eflags: 0x2 linked
// Checksum 0x4f96e999, Offset: 0x4330
// Size: 0x26
function function_68fc9c9b() {
    if (isdefined(self.var_3ce724aa) == 1) {
        self notify(#"hash_3a117b23d7bfa071");
    }
}

// Namespace snd/namespace_93606de4
// Params 8, eflags: 0x0
// Checksum 0x5fda40cd, Offset: 0x4360
// Size: 0x1a4
function function_d4be5d9(totaltime, var_a426158d, var_f22c6e0, *var_5f5e464a, var_453be1d, var_4947439b, var_ede9da4b, endcallback) {
    assert(isdefined(self) == 1);
    assert(isdefined(var_f22c6e0) == 1);
    if (isdefined(self.var_3ce724aa) == 1) {
        self function_68fc9c9b();
    }
    starttime = gettime();
    var_a426158d = int(var_a426158d * 1000 + 0.5);
    if (isdefined(self.var_3ce724aa) == 0) {
        self.var_3ce724aa = spawnstruct();
        self.var_3ce724aa.endtime = starttime + var_a426158d;
        self.var_3ce724aa.var_a713936b = 0;
        self.var_3ce724aa.soundent = spawn("script_origin", self.origin);
        self.var_3ce724aa.soundent linkto(self);
    }
    self thread function_250787e2(var_a426158d, var_f22c6e0, var_5f5e464a, var_453be1d, var_4947439b, var_ede9da4b, endcallback);
}

// Namespace snd/namespace_93606de4
// Params 1, eflags: 0x6 linked
// Checksum 0x81ed45c4, Offset: 0x4510
// Size: 0x2a0
function private function_c71c2a61(var_5229451c) {
    level endon(#"hash_1fc826e0acca152f");
    var_bb25ac71 = [];
    var_ad5f1285 = [];
    assert(isarray(level.var_cfbd198a) == 1);
    waitforplayers();
    while (true) {
        waittime = function_f4127447(var_5229451c);
        wait(waittime);
        if (isdefined(level.var_a5a54d7a) == 0 || level.var_a5a54d7a.size == 0) {
            function_4bb3b8d9();
            arrayremovevalue(level.var_a5a54d7a, var_ad5f1285, 1);
        }
        var_bb25ac71 = level.var_a5a54d7a[0];
        var_ad5f1285 = var_bb25ac71;
        while (isarray(var_bb25ac71) == 1 && var_bb25ac71.size > 0) {
            var_c15cc2fb = var_bb25ac71[0];
            if (soundexists(var_c15cc2fb) == 1) {
                playtime = soundgetplaybacktime(var_c15cc2fb) / 1000;
                foreach (player in function_2b2b83dc()) {
                    player playlocalsound(var_c15cc2fb);
                }
                wait(playtime);
                wait(0.666);
            }
            arrayremovevalue(var_bb25ac71, var_c15cc2fb, 1);
        }
        arrayremovevalue(level.var_a5a54d7a, var_ad5f1285, 1);
    }
}

// Namespace snd/namespace_93606de4
// Params 1, eflags: 0x0
// Checksum 0xda049de7, Offset: 0x47b8
// Size: 0x5c
function function_a1446973(var_5229451c) {
    if (isdefined(var_5229451c) == 0) {
        var_5229451c = [6, 12];
    }
    level thread function_c71c2a61(var_5229451c);
}

// Namespace snd/namespace_93606de4
// Params 0, eflags: 0x0
// Checksum 0xe0acfc32, Offset: 0x4820
// Size: 0x18
function function_3c463326() {
    level notify(#"hash_1fc826e0acca152f");
}

// Namespace snd/namespace_93606de4
// Params 0, eflags: 0x2 linked
// Checksum 0xefec28e8, Offset: 0x4840
// Size: 0x1a
function function_4bb3b8d9() {
    if (isdefined(level.var_cfbd198a) == 1) {
    }
}

// Namespace snd/namespace_93606de4
// Params 4, eflags: 0x0
// Checksum 0xeb93cf77, Offset: 0x4868
// Size: 0x44
function function_6c69eaba(flag_name, var_2ce1e8bb, fade_in_time, fade_out_time) {
    level thread function_d2c66f6e(flag_name, var_2ce1e8bb, fade_in_time, fade_out_time);
}

// Namespace snd/namespace_93606de4
// Params 4, eflags: 0x6 linked
// Checksum 0xcc839155, Offset: 0x48b8
// Size: 0xc8
function private function_d2c66f6e(flag_name, *var_2ce1e8bb, fade_in_time, fade_out_time) {
    level.player endon(#"death");
    if (!flag::exists(var_2ce1e8bb)) {
        flag::init(var_2ce1e8bb);
    }
    if (!isdefined(fade_in_time)) {
        fade_in_time = 0.5;
    }
    if (!isdefined(fade_out_time)) {
        fade_out_time = 0.5;
    }
    while (true) {
        flag::wait_till(var_2ce1e8bb);
        flag::wait_till_clear(var_2ce1e8bb);
    }
}

/#

    // Namespace snd/namespace_93606de4
    // Params 0, eflags: 0x4
    // Checksum 0x76b4bbba, Offset: 0x4988
    // Size: 0x3be
    function private function_b5c66198() {
        level endon(#"hash_6a5860b6e04cdea1");
        while (!isdefined(level.stealth) && !isdefined(level.player.stealth)) {
            waitframe(1);
        }
        scale = 1.5;
        x = 960 - 96 * scale;
        y = 540 - 112 * scale;
        var_97b12dd2 = 16 * scale;
        var_94de442b = (0.72974, 0.72974, 0.72974);
        while (true) {
            yy = y;
            state = function_ea2f17d1(level.stealth.detect.state, "<unknown string>");
            var_27dc744f = (1, 1, 1);
            maxthreat = "<unknown string>";
            delta = "<unknown string>";
            var_ddb580ee = "<unknown string>";
            if (isdefined(level.player.stealth)) {
                maxthreat = function_ea2f17d1(level.player.stealth.maxthreat, 0);
                delta = function_ea2f17d1(level.player.stealth.var_2c539111, 0);
                var_ddb580ee = function_ea2f17d1(level.player.stealth.var_ddb580ee, function_ea2f17d1(level.player.stealth.threat_sight_snd_threat, 0));
            }
            if (state == "<unknown string>") {
                var_27dc744f = (1, 0.25, 0.25);
            }
            alpha = 1;
            function_669c57bc(x, yy, "<unknown string>", (0.72974, 0.72974, 0.72974), alpha, scale);
            function_669c57bc(x, yy, "<unknown string>" + state, var_27dc744f, alpha, scale);
            yy += var_97b12dd2;
            function_669c57bc(x, yy, "<unknown string>", (0.72974, 0.72974, 0.72974), alpha, scale);
            function_669c57bc(x, yy, "<unknown string>" + maxthreat + "<unknown string>" + delta + "<unknown string>", var_27dc744f, alpha, scale);
            yy += var_97b12dd2;
            function_669c57bc(x, yy, "<unknown string>", (0.72974, 0.72974, 0.72974), alpha, scale);
            function_669c57bc(x, yy, "<unknown string>" + var_ddb580ee, var_27dc744f, alpha, scale);
            waitframe(1);
        }
    }

    // Namespace snd/namespace_93606de4
    // Params 2, eflags: 0x4
    // Checksum 0x23e06f5, Offset: 0x4d50
    // Size: 0x7a
    function private function_6a02a3f8(*key, value) {
        value = int(value);
        if (value == 0) {
            level notify(#"hash_6a5860b6e04cdea1");
        } else {
            level thread function_b5c66198();
        }
        return "<unknown string>" + value;
    }

    // Namespace snd/namespace_93606de4
    // Params 2, eflags: 0x4
    // Checksum 0x29d480da, Offset: 0x4dd8
    // Size: 0x32
    function private function_c1f0a1a0(*key, value) {
        music::setmusicstate(value);
        return value;
    }

    // Namespace snd/namespace_93606de4
    // Params 2, eflags: 0x4
    // Checksum 0x55bb2c98, Offset: 0x4e18
    // Size: 0x58
    function private function_7dbf6e02(*key, value) {
        valuearray = strtok(value, "<unknown string>");
        time = 0.05;
        return value;
    }

    // Namespace snd/namespace_93606de4
    // Params 2, eflags: 0x4
    // Checksum 0xd4b3f4d0, Offset: 0x4e78
    // Size: 0x20
    function private function_4ba99182(*key, *value) {
        return "<unknown string>";
    }

#/
