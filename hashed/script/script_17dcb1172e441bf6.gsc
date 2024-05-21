// Atian COD Tools GSC CW decompiler test
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_1e25ad94;

// Namespace namespace_1e25ad94/namespace_1e25ad94
// Params 0, eflags: 0x2 linked
// Checksum 0xc1ce0717, Offset: 0x138
// Size: 0x2c
function init() {
    level.doa.var_62f60f27 = [];
    level thread function_99069e31();
}

/#

    // Namespace namespace_1e25ad94/namespace_1e25ad94
    // Params 4, eflags: 0x2 linked
    // Checksum 0x88adf808, Offset: 0x170
    // Size: 0x94
    function debugcircle(origin, radius, seconds, color) {
        if (!isdefined(seconds)) {
            seconds = 1;
        }
        if (!isdefined(color)) {
            color = (1, 0, 0);
        }
        frames = int(20 * seconds);
        circle(origin, radius, color, 0, 1, frames);
    }

    // Namespace namespace_1e25ad94/namespace_1e25ad94
    // Params 4, eflags: 0x2 linked
    // Checksum 0xda6fbf63, Offset: 0x210
    // Size: 0x64
    function debugline(p1, p2, seconds, color) {
        line(p1, p2, color, 1, 0, int(seconds * 20));
    }

    // Namespace namespace_1e25ad94/namespace_1e25ad94
    // Params 4, eflags: 0x2 linked
    // Checksum 0x828078ed, Offset: 0x280
    // Size: 0x1ae
    function function_1d1f2c26(point, timesec, size, color) {
        self endon(#"hash_20de371f231f3e8a");
        end = gettime() + timesec * 1000;
        halfwidth = int(size / 2);
        var_692eeaa1 = point + (halfwidth * -1, 0, 0);
        var_ffc217e1 = point + (halfwidth, 0, 0);
        var_74d6c120 = point + (0, halfwidth * -1, 0);
        var_be7dd479 = point + (0, halfwidth, 0);
        var_cfbcbc57 = point + (0, 0, halfwidth * -1);
        var_9e09d8f2 = point + (0, 0, halfwidth);
        while (end > gettime()) {
            line(var_692eeaa1, var_ffc217e1, color, 1, 0, 1);
            line(var_74d6c120, var_be7dd479, color, 1, 0, 1);
            line(var_cfbcbc57, var_9e09d8f2, color, 1, 0, 1);
            waitframe(1);
        }
    }

    // Namespace namespace_1e25ad94/namespace_1e25ad94
    // Params 3, eflags: 0x2 linked
    // Checksum 0xf24f81c4, Offset: 0x438
    // Size: 0x1c6
    function debugorigin(timesec, size, color) {
        self endon(#"hash_60eabc6ae83239fe");
        end = gettime() + timesec * 1000;
        halfwidth = int(size / 2);
        while (isdefined(self) && end > gettime()) {
            point = self.origin;
            var_692eeaa1 = point + (halfwidth * -1, 0, 0);
            var_ffc217e1 = point + (halfwidth, 0, 0);
            var_74d6c120 = point + (0, halfwidth * -1, 0);
            var_be7dd479 = point + (0, halfwidth, 0);
            var_cfbcbc57 = point + (0, 0, halfwidth * -1);
            var_9e09d8f2 = point + (0, 0, halfwidth);
            line(var_692eeaa1, var_ffc217e1, color, 1, 0, 1);
            line(var_74d6c120, var_be7dd479, color, 1, 0, 1);
            line(var_cfbcbc57, var_9e09d8f2, color, 1, 0, 1);
            waitframe(1);
        }
    }

    // Namespace namespace_1e25ad94/namespace_1e25ad94
    // Params 2, eflags: 0x2 linked
    // Checksum 0x996400c2, Offset: 0x608
    // Size: 0xc8
    function debugmsg(txt, critical = 0) {
        if (critical == 0) {
            println("<unknown string>" + txt);
            return;
        }
        text = "<unknown string>" + gettime() + "<unknown string>" + txt;
        println("<unknown string>" + text);
        level.doa.var_62f60f27[level.doa.var_62f60f27.size] = text;
    }

    // Namespace namespace_1e25ad94/namespace_1e25ad94
    // Params 3, eflags: 0x0
    // Checksum 0x1eb2bccc, Offset: 0x6d8
    // Size: 0x9e
    function function_75ebaff2(txt, timesec, entity) {
        end = gettime() + timesec * 1000;
        origin = namespace_7f5aeb59::function_23e1f90f()[0].origin;
        while (end > gettime()) {
            if (isdefined(entity)) {
                origin = entity.origin;
            }
            print3d(origin, txt);
            waitframe(1);
        }
    }

    // Namespace namespace_1e25ad94/namespace_1e25ad94
    // Params 7, eflags: 0x2 linked
    // Checksum 0x29cbb364, Offset: 0x780
    // Size: 0x11e
    function function_b57a9d84(vcenter, yaw, length, width, height, timesec = 1, color = (1, 0, 0)) {
        end = gettime() + timesec * 1000;
        mins = (length * -1 / 2, width * -1 / 2, height * -1 / 2);
        maxs = (length / 2, width / 2, height / 2);
        while (end > gettime()) {
            box(vcenter, mins, maxs, yaw, color, 1, 0, 1);
            waitframe(1);
        }
    }

    // Namespace namespace_1e25ad94/namespace_1e25ad94
    // Params 7, eflags: 0x2 linked
    // Checksum 0x5f0820fb, Offset: 0x8a8
    // Size: 0x126
    function function_67127ba2(entity, yaw, length, width, height, timesec = 1, color = (1, 0, 0)) {
        end = gettime() + timesec * 1000;
        mins = (length * -1 / 2, width * -1 / 2, height * -1 / 2);
        maxs = (length / 2, width / 2, height / 2);
        while (end > gettime()) {
            box(entity.origin, mins, maxs, yaw, color, 1, 0, 1);
            waitframe(1);
        }
    }

#/

// Namespace namespace_1e25ad94/namespace_1e25ad94
// Params 0, eflags: 0x2 linked
// Checksum 0x9d983a3b, Offset: 0x9d8
// Size: 0xe0
function function_99069e31() {
    /#
        while (true) {
            waitframe(1);
            if (level.doa.var_62f60f27.size && isdefined(level.doa.var_39e3fa99)) {
                if (level.doa.world_state == 4) {
                    origin = namespace_7f5aeb59::function_23e1f90f()[0].origin;
                } else {
                    origin = [[ level.doa.var_39e3fa99 ]]->function_ffcf1d1();
                }
                print3d(origin, "<unknown string>" + level.doa.var_62f60f27.size);
            }
        }
    #/
}

// Namespace namespace_1e25ad94/namespace_1e25ad94
// Params 1, eflags: 0x2 linked
// Checksum 0xeefcaebe, Offset: 0xac0
// Size: 0xd4
function function_d88064ec(clear = 1) {
    /#
        foreach (msg in level.doa.var_62f60f27) {
            println("<unknown string>" + msg);
        }
    #/
    if (clear) {
        function_8225da57();
    }
}

// Namespace namespace_1e25ad94/namespace_1e25ad94
// Params 0, eflags: 0x2 linked
// Checksum 0x2e532692, Offset: 0xba0
// Size: 0x16
function function_8225da57() {
    level.doa.var_62f60f27 = [];
}

/#

    // Namespace namespace_1e25ad94/namespace_1e25ad94
    // Params 4, eflags: 0x0
    // Checksum 0x64b20143, Offset: 0xbc0
    // Size: 0x1d0
    function function_72f01f3f(origin, radius, time, color = (0, 1, 0)) {
        level endon(#"hash_54ce4a6a8260618e");
        self endon(#"death");
        var_264789d0 = 0.05;
        circleres = 16;
        var_d013a31 = circleres / 2;
        circleinc = 360 / circleres;
        circleres++;
        timer = gettime() + time * 1000;
        while (gettime() < timer) {
            plotpoints = [];
            rad = 0;
            wait(var_264789d0);
            players = getplayers();
            angletoplayer = vectortoangles(origin - players[0].origin);
            for (i = 0; i < circleres; i++) {
                plotpoints[plotpoints.size] = origin + vectorscale(anglestoforward(angletoplayer + (rad, 90, 0)), radius) + (0, 0, 12);
                rad += circleinc;
            }
            function_f8c6064(plotpoints, color, var_264789d0);
        }
    }

    // Namespace namespace_1e25ad94/namespace_1e25ad94
    // Params 3, eflags: 0x0
    // Checksum 0x94163055, Offset: 0xd98
    // Size: 0xcc
    function function_f8c6064(plotpoints, var_2bd0b8bf, var_f491dcf7 = 1) {
        if (plotpoints.size == 0) {
            return;
        }
        lastpoint = plotpoints[0];
        for (var_f491dcf7 = int(var_f491dcf7); var_f491dcf7; var_f491dcf7--) {
            for (i = 1; i < plotpoints.size; i++) {
                line(lastpoint, plotpoints[i], var_2bd0b8bf, 1, var_f491dcf7);
                lastpoint = plotpoints[i];
            }
            waitframe(1);
        }
    }

    // Namespace namespace_1e25ad94/namespace_1e25ad94
    // Params 5, eflags: 0x2 linked
    // Checksum 0x61faff7a, Offset: 0xe70
    // Size: 0x2b2
    function function_e8f2d12c(pos, rad, height, var_f491dcf7 = 1, color = (0, 0, 0)) {
        self endon(#"hash_7e407f4c91c28e18");
        self endon(#"death");
        currad = rad;
        curheight = height;
        for (var_f491dcf7 = int(var_f491dcf7); var_f491dcf7; var_f491dcf7--) {
            for (r = 0; r < 20; r++) {
                theta = r / 20 * 360;
                theta2 = (r + 1) / 20 * 360;
                line(pos + (cos(theta) * currad, sin(theta) * currad, 0), pos + (cos(theta2) * currad, sin(theta2) * currad, 0), color);
                line(pos + (cos(theta) * currad, sin(theta) * currad, curheight), pos + (cos(theta2) * currad, sin(theta2) * currad, curheight), color);
                line(pos + (cos(theta) * currad, sin(theta) * currad, 0), pos + (cos(theta) * currad, sin(theta) * currad, curheight), color);
            }
            waitframe(1);
        }
    }

#/

// Namespace namespace_1e25ad94/namespace_1e25ad94
// Params 0, eflags: 0x0
// Checksum 0xc14ee271, Offset: 0x1130
// Size: 0x6c
function function_ee689179() {
    self.fading = 1;
    while (self.alpha > 0) {
        self.alpha -= 0.01;
        waitframe(1);
    }
    arrayremovevalue(level.doa.var_3843f782, self);
}

// Namespace namespace_1e25ad94/namespace_1e25ad94
// Params 0, eflags: 0x2 linked
// Checksum 0x34dd60b7, Offset: 0x11a8
// Size: 0x1aa
function function_8f04a649() {
    /#
        self notify("<unknown string>");
        self endon("<unknown string>");
        while (level.doa.var_3843f782.size) {
            var_4c600979 = 800;
            time = gettime();
            foreach (line in level.doa.var_3843f782) {
                if (time > line.expire && !isdefined(line.fading)) {
                    line thread function_ee689179();
                }
                line.y = var_4c600979;
                var_4c600979 += int(20 * line.scale);
                debug2dtext((line.x, line.y, 0), line.text, line.color, line.alpha, (0, 0, 0), 0, line.scale, 1);
            }
            waitframe(1);
        }
    #/
}

// Namespace namespace_1e25ad94/namespace_1e25ad94
// Params 5, eflags: 0x2 linked
// Checksum 0xe0fd530d, Offset: 0x1360
// Size: 0x14c
function function_4e3cfad(text, color = (1, 1, 1), alpha = 1, scale = 1, duration = 3) {
    if (!isdefined(level.doa.var_3843f782)) {
        level.doa.var_3843f782 = [];
    }
    struct = spawnstruct();
    struct.x = 40;
    struct.text = text;
    struct.color = color;
    struct.alpha = alpha;
    struct.scale = scale;
    struct.expire = gettime() + duration * 1000;
    level.doa.var_3843f782[level.doa.var_3843f782.size] = struct;
    level thread function_8f04a649();
}

/#

    // Namespace namespace_1e25ad94/namespace_1e25ad94
    // Params 7, eflags: 0x2 linked
    // Checksum 0x160d086f, Offset: 0x14b8
    // Size: 0x10c
    function function_70e370a(posx, posy, text, color = (1, 1, 1), alpha = 1, scale = 1, durationsec = 3) {
        if (!isdefined(text) || text == "<unknown string>") {
            return;
        }
        frames = int(durationsec * 20);
        if (frames < 1) {
            frames = 1;
        }
        debug2dtext((posx, posy, 0), text, color, alpha, (0, 0, 0), 0, scale, frames);
    }

#/
