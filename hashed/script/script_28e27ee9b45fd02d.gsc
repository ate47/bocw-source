// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\snd_utility.csc;
#using script_1cd690a97dfca36e;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace snd;

/#

    // Namespace snd/namespace_ce2d072f
    // Params 7, eflags: 0x0
    // Checksum 0x64c55d1, Offset: 0xa8
    // Size: 0x154
    function function_669c57bc(posx, posy, text, color, alpha, scale, duration) {
        if (isdefined(text) == 0 || text == "<unknown string>") {
            return;
        }
        color = function_ea2f17d1(color, (1, 1, 1));
        alpha = function_ea2f17d1(alpha, 1);
        scale = function_ea2f17d1(scale, 1);
        duration = function_ea2f17d1(duration, 1);
        if (isscriptfunctionptr(level.var_44a79f1b) == 1) {
            [[ level.var_44a79f1b ]](posx, posy, text, color, alpha, scale, duration);
            return;
        }
        debug2dtext((posx, posy, 0), text, color, alpha, (0, 0, 0), 0, scale, duration);
    }

    // Namespace snd/namespace_ce2d072f
    // Params 2, eflags: 0x0
    // Checksum 0xb317af6f, Offset: 0x208
    // Size: 0x134
    function function_9f4eb444(text, scale) {
        assert(isdefined(text));
        if (isdefined(scale) == 0) {
            scale = 1;
        }
        var_1790a507 = function_827811b5();
        var_38c41a5e = var_1790a507[0];
        var_c13d121d = var_1790a507[1];
        textlength = text.size;
        textwidth = textlength * 11 * scale;
        centerx = var_38c41a5e * 0.5 - textwidth * 0.5;
        centery = var_c13d121d * 0.5 - 12;
        center = array(centerx, centery);
        return center;
    }

    // Namespace snd/namespace_ce2d072f
    // Params 2, eflags: 0x0
    // Checksum 0x7dc8fc41, Offset: 0x348
    // Size: 0xa4
    function function_409c06e5(text, scale) {
        centerpos = function_9f4eb444(text, scale);
        var_fad221f1 = centerpos[0];
        var_ec8f856c = centerpos[1];
        var_ec8f856c = var_ec8f856c * 0.5 + 12;
        defaultpos = array(var_fad221f1, var_ec8f856c);
        return defaultpos;
    }

    // Namespace snd/namespace_ce2d072f
    // Params 7, eflags: 0x4
    // Checksum 0xdcca15ce, Offset: 0x3f8
    // Size: 0x41c
    function private function_ac3c5285(posx, posy, text, color, scale, var_24ea4e17, var_45b08b81) {
        var_d6f54187 = 24 * scale;
        frametime = function_6cfa7975();
        var_48c93ed9 = int(var_24ea4e17 / frametime);
        framecount = 0;
        var_1c57e012 = int(var_45b08b81 / frametime);
        var_9a0d8dab = 1;
        var_206c3ebf = 0;
        if (is_true(level._snd.var_8c37ff34)) {
            var_9a0d8dab = 2;
        }
        if (isarray(level.var_89c4a5f0) == 0) {
            level.var_89c4a5f0 = array();
        }
        assert(isarray(level.var_89c4a5f0));
        if (level.var_89c4a5f0.size > 0) {
            foreach (row in level.var_89c4a5f0) {
                if (isinarray(level.var_89c4a5f0, posy) == 1) {
                    posy += var_d6f54187;
                    continue;
                }
                break;
            }
        }
        level.var_89c4a5f0[level.var_89c4a5f0.size] = posy;
        while (framecount < var_48c93ed9) {
            if (framecount < var_1c57e012) {
                var_78aff59a = int(float(framecount) / float(var_9a0d8dab));
                var_78aff59a %= 2;
                if (var_78aff59a) {
                    framecount += 1;
                    waitframe(1);
                    continue;
                }
            }
            framefrac = float(framecount) / float(var_48c93ed9);
            framefrac = math::clamp(framefrac, 0, 1);
            alpha = function_b918d683(1 - framefrac, "<unknown string>");
            var_8b9208e = alpha * alpha;
            colorscale = function_2677a7e2(color, alpha);
            function_65bb0ccd(text, posx, posy, scale, "<unknown string>", colorscale, alpha, (0, 0, 0), var_8b9208e, (1, 1, 1), var_8b9208e, 1);
            framecount += 1;
            waitframe(1);
        }
        if (isarray(level.var_89c4a5f0)) {
            arrayremovevalue(level.var_89c4a5f0, posy);
        }
    }

    // Namespace snd/namespace_ce2d072f
    // Params 7, eflags: 0x0
    // Checksum 0x2bd59671, Offset: 0x820
    // Size: 0x1a4
    function function_3ba3cecb(text, posx, posy, color, scale, var_24ea4e17, var_45b08b81) {
        assert(isdefined(text) == 1);
        color = function_ea2f17d1(color, (1, 0.5, 0.5));
        scale = function_ea2f17d1(scale, 1.75);
        var_24ea4e17 = function_ea2f17d1(var_24ea4e17, 4);
        var_45b08b81 = function_ea2f17d1(var_45b08b81, 1);
        if (isdefined(posx) == 0 || isdefined(posy) == 0) {
            defaultpos = function_409c06e5(text, scale);
            if (isdefined(posx) == 0) {
                posx = defaultpos[0];
            }
            if (isdefined(posy) == 0) {
                posy = defaultpos[1];
            }
        }
        level thread function_ac3c5285(posx, posy, text, color, scale, var_24ea4e17, var_45b08b81);
        println(text);
    }

    // Namespace snd/namespace_ce2d072f
    // Params 7, eflags: 0x0
    // Checksum 0x8041cb65, Offset: 0x9d0
    // Size: 0x64
    function function_fa8480e6(origin, text, color, alpha, scale, duration, centered) {
        print3d(origin, text, color, alpha, scale, duration, centered);
    }

    // Namespace snd/namespace_ce2d072f
    // Params 7, eflags: 0x0
    // Checksum 0x691a9b8a, Offset: 0xa40
    // Size: 0x64
    function function_4e22152d(origin, text, color, alpha, scale, duration, *right) {
        print3d(text, color, alpha, scale, duration, right, 1);
    }

    // Namespace snd/namespace_ce2d072f
    // Params 12, eflags: 0x0
    // Checksum 0x26c5b635, Offset: 0xab0
    // Size: 0x3c4
    function function_65bb0ccd(text, x, y, scale, var_6c897a55, color, alpha, shadowcolor, var_7389333f, lightcolor, var_c16d003f, duration) {
        color = function_ea2f17d1(color, (1, 1, 1));
        alpha = function_ea2f17d1(alpha, 1);
        scale = function_ea2f17d1(scale, 1);
        var_6c897a55 = function_ea2f17d1(var_6c897a55, "<unknown string>");
        duration = function_ea2f17d1(duration, 1);
        offset = (0, 0, 0);
        width = 11 * scale * text.size;
        switch (var_6c897a55) {
        case 0:
        case #"left":
        case #"l":
        default:
            break;
        case 1:
        case #"c":
        case #"centered":
        case #"center":
            offset += (width * -0.5, 0, 0);
            break;
        case 2:
        case #"r":
        case #"right":
            offset += (width * -1, 0, 0);
            break;
        }
        if (isdefined(shadowcolor) == 1) {
            var_9aa20b4e = 1;
            if (!isdefined(var_7389333f)) {
                var_7389333f = alpha * 0.7333;
            }
            position = (x + 1 * scale, y + 1 * scale, 0) + offset;
            function_669c57bc(position[0], position[1], text, shadowcolor, var_7389333f, scale, duration);
        }
        if (isdefined(lightcolor) == 1) {
            if (!isdefined(var_c16d003f)) {
                var_c16d003f = alpha * 0.7333;
            }
            position = (x + -0.666 * scale, y + -0.666 * scale, 0) + offset;
            function_669c57bc(position[0], position[1], text, lightcolor, var_c16d003f, scale, duration);
        }
        position = (x, y, 0) + offset;
        function_669c57bc(position[0], position[1], text, color, alpha, scale, duration);
    }

    // Namespace snd/namespace_ce2d072f
    // Params 11, eflags: 0x0
    // Checksum 0x745c490, Offset: 0xe80
    // Size: 0x6b4
    function function_ac033c46(text, origin, scale, var_6c897a55, color, alpha, shadowcolor, var_7389333f, lightcolor, var_c16d003f, duration) {
        color = function_ea2f17d1(color, (1, 1, 1));
        alpha = function_ea2f17d1(alpha, 1);
        scale = function_ea2f17d1(scale, 1);
        var_6c897a55 = function_ea2f17d1(var_6c897a55, "<unknown string>");
        duration = int(function_ea2f17d1(duration, 1));
        var_b69585e4 = scale < 0;
        scale = abs(scale);
        textsize = text.size;
        if (issubstr(text, "<unknown string>")) {
            lines = strtok(text, "<unknown string>");
            if (isarray(lines) && lines.size > 1) {
                longest = 0;
                foreach (line in lines) {
                    if (line.size > longest) {
                        longest = line.size;
                    }
                }
                textsize = longest;
            }
        }
        var_e9588a4 = (1, 0, 0);
        var_3e836530 = (0, 0, 1);
        players = function_2b2b83dc();
        if (isarray(players) == 1 && isdefined(players[0])) {
            player = players[0];
            vieworigin = player function_efda2d6d();
            viewangles = player function_3d31768f();
            var_e9588a4 = anglestoright(viewangles);
            var_3e836530 = anglestoup(viewangles);
            if (var_b69585e4) {
                dist = distance(origin, vieworigin);
                var_7295dcac = dist * 0.00133333;
                scale *= var_7295dcac;
            }
        }
        width = 11 * scale * textsize;
        offset = (0, 0, 1 * scale * -1);
        var_fbe7ba4a = var_e9588a4 * offset[0];
        var_24962759 = var_3e836530 * offset[2];
        centered = 0;
        switch (var_6c897a55) {
        case 0:
        case #"left":
        case #"l":
        default:
            break;
        case 1:
        case #"c":
        case #"centered":
        case #"center":
            centered = 1;
            break;
        case 2:
        case #"r":
        case #"right":
            offset += (width * -1, 0, 0);
            break;
        }
        if (isdefined(shadowcolor) == 1) {
            if (!isdefined(var_7389333f)) {
                var_7389333f = alpha * 0.72974;
            }
            var_9aa20b4e = var_e9588a4 * 1 * scale + var_3e836530 * -1 * scale;
            position = origin + var_e9588a4 * offset[0] + var_3e836530 * offset[2];
            position += var_9aa20b4e;
            print3d(position, text, shadowcolor, var_7389333f, scale, duration, centered);
        }
        if (isdefined(lightcolor) == 1) {
            if (!isdefined(var_c16d003f)) {
                var_c16d003f = alpha * 0.72974;
            }
            var_6a4ad33c = var_e9588a4 * -0.666 * scale + var_3e836530 * 0.666 * scale;
            position = origin + var_e9588a4 * offset[0] + var_3e836530 * offset[2];
            position += var_6a4ad33c;
            print3d(position, text, lightcolor, var_c16d003f, scale, duration, centered);
        }
        position = origin + var_e9588a4 * offset[0] + var_3e836530 * offset[2];
        print3d(position, text, color, alpha, scale, duration, centered);
    }

    // Namespace snd/namespace_ce2d072f
    // Params 4, eflags: 0x4
    // Checksum 0x53916600, Offset: 0x1540
    // Size: 0x184
    function private function_bfdce45f(color, depthtest, var_5c8bd7d0, offset) {
        if (var_5c8bd7d0.size < 2) {
            return;
        }
        linecount = var_5c8bd7d0.size - 1;
        alpha = 1;
        var_4aa962c3 = 1 / linecount;
        colorscale = color;
        while (linecount > 0) {
            var_4612448 = var_5c8bd7d0[linecount];
            var_c64078a7 = var_5c8bd7d0[linecount - 1];
            if (isvec(var_4612448) == 1 && isvec(var_c64078a7) == 1 && var_4612448 != var_c64078a7) {
                if (isvec(offset) == 1) {
                    var_4612448 += offset;
                    var_c64078a7 += offset;
                }
                line(var_4612448, var_c64078a7, colorscale, alpha, depthtest, 1);
            }
            colorscale = vectorscale(color, alpha * 1.5);
            alpha -= var_4aa962c3;
            linecount--;
        }
    }

    // Namespace snd/namespace_ce2d072f
    // Params 4, eflags: 0x4
    // Checksum 0xdbe6df7e, Offset: 0x16d0
    // Size: 0x1fa
    function private function_6ee9efa7(color, depthtest, duration, offset) {
        assert(isdefined(self.origin) == 1, "<unknown string>");
        assert(isvec(color) == 1, "<unknown string>");
        assert(isdefined(duration) == 1, "<unknown string>");
        framecount = 0;
        var_5c8bd7d0 = array();
        var_5c8bd7d0[0] = self.origin;
        self endon(#"hash_2605f8ddd93ed8f9");
        while (var_5c8bd7d0.size > 0) {
            var_c6150a06 = array();
            if (framecount >= duration) {
                for (i = 1; i < var_5c8bd7d0.size; i++) {
                    var_c6150a06[i - 1] = var_5c8bd7d0[i];
                }
            } else {
                var_c6150a06 = var_5c8bd7d0;
            }
            if (isdefined(self) == 1 && isdefined(self.origin) == 1 && function_3132f113(self) == 0) {
                var_c6150a06[var_c6150a06.size] = self.origin;
            }
            var_5c8bd7d0 = var_c6150a06;
            function_bfdce45f(color, depthtest, var_5c8bd7d0, offset);
            framecount++;
            waitframe(1);
        }
    }

    // Namespace snd/namespace_ce2d072f
    // Params 5, eflags: 0x0
    // Checksum 0xb7dfc480, Offset: 0x18d8
    // Size: 0x15c
    function function_31d6fc52(var_9632a625, color, depthtest, duration, offset) {
        color = function_ea2f17d1(color, (1, 1, 1));
        depthtest = function_ea2f17d1(depthtest, 0);
        duration = function_ea2f17d1(duration, 5);
        if (function_81fac19d(!isdefined(var_9632a625), "<unknown string>")) {
            return;
        }
        if (is_true(level._snd.var_8c37ff34)) {
            duration = int(60 * duration);
        } else {
            duration = int(20 * duration);
        }
        assert(duration > 2, "<unknown string>");
        var_9632a625 thread function_6ee9efa7(color, depthtest, duration, offset);
    }

    // Namespace snd/namespace_ce2d072f
    // Params 7, eflags: 0x0
    // Checksum 0x8ad4b588, Offset: 0x1a40
    // Size: 0x404
    function function_a787fe30(origin, angles, extents, color, alpha, depthtest, duration) {
        half = extents * 0.5;
        var_95483828 = (half, half, half);
        mins = origin - var_95483828;
        maxs = origin + var_95483828;
        var_c9c13776[0] = (maxs[0], maxs[1], maxs[2]);
        var_c9c13776[1] = (maxs[0], maxs[1], mins[2]);
        var_c9c13776[2] = (mins[0], maxs[1], mins[2]);
        var_c9c13776[3] = (mins[0], maxs[1], maxs[2]);
        var_b78392fb[0] = (maxs[0], mins[1], maxs[2]);
        var_b78392fb[1] = (maxs[0], mins[1], mins[2]);
        var_b78392fb[2] = (mins[0], mins[1], mins[2]);
        var_b78392fb[3] = (mins[0], mins[1], maxs[2]);
        if (angles != (0, 0, 0)) {
            var_c9c13776[0] = origin + rotatepoint(origin - var_c9c13776[0], angles);
            var_c9c13776[1] = origin + rotatepoint(origin - var_c9c13776[1], angles);
            var_c9c13776[2] = origin + rotatepoint(origin - var_c9c13776[2], angles);
            var_c9c13776[3] = origin + rotatepoint(origin - var_c9c13776[3], angles);
            var_b78392fb[0] = origin + rotatepoint(origin - var_b78392fb[0], angles);
            var_b78392fb[1] = origin + rotatepoint(origin - var_b78392fb[1], angles);
            var_b78392fb[2] = origin + rotatepoint(origin - var_b78392fb[2], angles);
            var_b78392fb[3] = origin + rotatepoint(origin - var_b78392fb[3], angles);
        }
        for (i = 0; i < 4; i++) {
            j = i + 1;
            if (j == 4) {
                j = 0;
            }
            line(var_c9c13776[i], var_c9c13776[j], color, alpha, depthtest, duration);
            line(var_b78392fb[i], var_b78392fb[j], color, alpha, depthtest, duration);
            line(var_c9c13776[i], var_b78392fb[i], color, alpha, depthtest, duration);
        }
    }

    // Namespace snd/namespace_ce2d072f
    // Params 7, eflags: 0x0
    // Checksum 0x9a76f413, Offset: 0x1e50
    // Size: 0x64
    function function_27e52823(origin, angles, var_81cc59c8, color, alpha, depthtest, duration) {
        function_a787fe30(origin, angles, var_81cc59c8, color, alpha, depthtest, duration);
    }

    // Namespace snd/namespace_ce2d072f
    // Params 7, eflags: 0x0
    // Checksum 0x274e5b09, Offset: 0x1ec0
    // Size: 0x2ac
    function function_81183b3(origin, size, angles, color, alpha, depthtest, duration) {
        forward = (1, 0, 0);
        right = (0, 1, 0);
        up = (0, 0, 1);
        size = function_ea2f17d1(size, 16);
        angles = function_ea2f17d1(angles, (0, 0, 0));
        color = function_ea2f17d1(color, (1, 1, 1));
        alpha = function_ea2f17d1(alpha, 1);
        depthtest = function_ea2f17d1(depthtest, 0);
        duration = function_ea2f17d1(duration, 1);
        if (angles != (0, 0, 0)) {
            forward = anglestoforward(angles);
            right = anglestoright(angles) * -1;
            up = anglestoup(angles);
        }
        half = size * 0.5;
        forward *= half;
        right *= half;
        up *= half;
        var_d805968e = 0.333;
        var_ec1abeec = (var_d805968e, var_d805968e, var_d805968e);
        var_b278259c = color * var_ec1abeec + (1, 0, 0);
        var_7a8ab5a2 = color * var_ec1abeec + (0, 1, 0);
        colb = color * var_ec1abeec + (0, 0, 1);
        line(origin - forward, origin + forward, var_b278259c, alpha, depthtest, duration);
        line(origin - right, origin + right, var_7a8ab5a2, alpha, depthtest, duration);
        line(origin - up, origin + up, colb, alpha, depthtest, duration);
    }

    // Namespace snd/namespace_ce2d072f
    // Params 8, eflags: 0x0
    // Checksum 0xde28ddaa, Offset: 0x2178
    // Size: 0x384
    function function_8aaa798e(origin, angles, length, var_e3c3c3d9, color, alpha, depthtest, duration) {
        assert(isvec(origin));
        assert(isvec(angles));
        length = function_ea2f17d1(length, 12);
        var_e3c3c3d9 = function_ea2f17d1(var_e3c3c3d9, 4);
        color = function_ea2f17d1(color, (1, 1, 1));
        alpha = function_ea2f17d1(alpha, 1);
        depthtest = function_ea2f17d1(depthtest, 0);
        duration = int(function_ea2f17d1(duration, 1));
        arrow_forward = anglestoforward(angles);
        arrowhead_forward = arrow_forward;
        arrowhead_right = anglestoright(angles);
        var_54ff912b = anglestoup(angles);
        var_feb4bec6 = var_54ff912b;
        arrow_forward = vectorscale(arrow_forward, length);
        arrowhead_forward = vectorscale(arrowhead_forward, length - var_e3c3c3d9);
        arrowhead_right = vectorscale(arrowhead_right, var_e3c3c3d9);
        var_54ff912b = vectorscale(var_54ff912b, var_e3c3c3d9);
        var_feb4bec6 = vectorscale(var_feb4bec6, -1 * var_e3c3c3d9);
        o = origin;
        a = o + arrow_forward;
        b = o + arrowhead_forward - arrowhead_right;
        c = o + arrowhead_forward + arrowhead_right;
        d = o + arrowhead_forward + var_54ff912b;
        e = o + arrowhead_forward + var_feb4bec6;
        line(o, a, color, alpha, depthtest, duration);
        line(a, b, color, alpha, depthtest, duration);
        line(b, c, color, alpha, depthtest, duration);
        line(c, a, color, alpha, depthtest, duration);
        line(a, d, color, alpha, depthtest, duration);
        line(d, e, color, alpha, depthtest, duration);
        line(e, a, color, alpha, depthtest, duration);
    }

#/

// Namespace snd/namespace_ce2d072f
// Params 1, eflags: 0x2 linked
// Checksum 0xda089e8e, Offset: 0x2508
// Size: 0x26
function function_79f31114(screenheight) {
    var_bfd4f22d = 480 / screenheight;
    return var_bfd4f22d;
}

// Namespace snd/namespace_ce2d072f
// Params 2, eflags: 0x0
// Checksum 0xd0525f8b, Offset: 0x2538
// Size: 0xca
function function_df9f894b(var_841c640a, screensize) {
    screensize = function_ea2f17d1(screensize, function_827811b5());
    var_bfd4f22d = function_79f31114(screensize[1]);
    var_a6a4856f = var_841c640a[0] * var_bfd4f22d;
    var_81ae8d4d = var_841c640a[1] * var_bfd4f22d;
    return array(int(var_a6a4856f), int(var_81ae8d4d));
}

// Namespace snd/namespace_ce2d072f
// Params 2, eflags: 0x0
// Checksum 0xcf8267c0, Offset: 0x2610
// Size: 0x10a
function function_da7b7c0e(var_841c640a, screensize) {
    screensize = function_ea2f17d1(screensize, function_827811b5());
    var_bfd4f22d = function_79f31114(screensize[1]);
    var_11ea799a = var_841c640a[0] * var_bfd4f22d;
    var_39fdd05 = var_841c640a[1] * var_bfd4f22d;
    screenaspect = screensize[0] / screensize[1];
    var_73ea373d = screenaspect * 480;
    var_d8976fdf = -0.5 * (var_73ea373d - 640);
    var_11ea799a += var_d8976fdf;
    return array(var_11ea799a, var_39fdd05);
}

