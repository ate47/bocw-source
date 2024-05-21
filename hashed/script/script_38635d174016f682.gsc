// Atian COD Tools GSC CW decompiler test
#using script_76abb7986de59601;
#using script_67049b48b589d81;
#using script_64e5d3ad71ce8140;
#using script_6b71c9befed901f2;
#using script_75c3996cce8959f7;
#using script_71603a58e2da0698;
#using script_30c7fb449869910;
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

#namespace namespace_1e25ad94;

/#

    // Namespace namespace_1e25ad94/namespace_1e25ad94
    // Params 4, eflags: 0x0
    // Checksum 0xab8bb00d, Offset: 0x138
    // Size: 0x94
    function debug_circle(origin, radius, seconds, color) {
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
    // Params 4, eflags: 0x0
    // Checksum 0x695c2953, Offset: 0x1d8
    // Size: 0x64
    function debug_line(p1, p2, seconds, color) {
        line(p1, p2, color, 1, 0, int(seconds * 20));
    }

    // Namespace namespace_1e25ad94/namespace_1e25ad94
    // Params 4, eflags: 0x0
    // Checksum 0xd972f431, Offset: 0x248
    // Size: 0x1b0
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
            wait(0.05);
        }
    }

    // Namespace namespace_1e25ad94/namespace_1e25ad94
    // Params 3, eflags: 0x0
    // Checksum 0x2186e6a5, Offset: 0x400
    // Size: 0x1c0
    function debugorigin(timesec, size, color) {
        self endon(#"hash_60eabc6ae83239fe");
        end = gettime() + timesec * 1000;
        halfwidth = int(size / 2);
        while (end > gettime()) {
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
            wait(0.05);
        }
    }

    // Namespace namespace_1e25ad94/namespace_1e25ad94
    // Params 1, eflags: 0x2 linked
    // Checksum 0x81372dc5, Offset: 0x5c8
    // Size: 0x34
    function debugmsg(txt) {
        println("<unknown string>" + txt);
    }

#/
