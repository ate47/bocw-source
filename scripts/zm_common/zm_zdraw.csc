// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\zm_common\zm.csc;
#using scripts\zm_common\util.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_zdraw;

/#

    // Namespace zm_zdraw/zm_zdraw
    // Params 0, eflags: 0x5
    // Checksum 0x1fb80060, Offset: 0xd0
    // Size: 0x4c
    function private autoexec __init__system__() {
        system::register(#"zdraw", &preinit, &postinit, undefined, undefined);
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 0, eflags: 0x4
    // Checksum 0xdc258f57, Offset: 0x128
    // Size: 0x94
    function private preinit() {
        setdvar(#"zdraw", "<unknown string>");
        level.zdraw = spawnstruct();
        function_c9f70832();
        function_99bd35ec();
        function_b36498d3();
        level thread function_c78d9e67();
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 0, eflags: 0x4
    // Checksum 0xa6ad33f8, Offset: 0x1c8
    // Size: 0x8
    function private postinit() {
        
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 0, eflags: 0x0
    // Checksum 0x8dc3fd98, Offset: 0x1d8
    // Size: 0x3d4
    function function_c9f70832() {
        level.zdraw.colors = [];
        level.zdraw.colors[#"red"] = (1, 0, 0);
        level.zdraw.colors[#"green"] = (0, 1, 0);
        level.zdraw.colors[#"blue"] = (0, 0, 1);
        level.zdraw.colors[#"yellow"] = (1, 1, 0);
        level.zdraw.colors[#"orange"] = (1, 0.5, 0);
        level.zdraw.colors[#"cyan"] = (0, 1, 1);
        level.zdraw.colors[#"purple"] = (1, 0, 1);
        level.zdraw.colors[#"black"] = (0, 0, 0);
        level.zdraw.colors[#"white"] = (1, 1, 1);
        level.zdraw.colors[#"grey"] = (0.75, 0.75, 0.75);
        level.zdraw.colors[#"gray1"] = (0.1, 0.1, 0.1);
        level.zdraw.colors[#"gray2"] = (0.2, 0.2, 0.2);
        level.zdraw.colors[#"gray3"] = (0.3, 0.3, 0.3);
        level.zdraw.colors[#"gray4"] = (0.4, 0.4, 0.4);
        level.zdraw.colors[#"gray5"] = (0.5, 0.5, 0.5);
        level.zdraw.colors[#"gray6"] = (0.6, 0.6, 0.6);
        level.zdraw.colors[#"gray7"] = (0.7, 0.7, 0.7);
        level.zdraw.colors[#"gray8"] = (0.8, 0.8, 0.8);
        level.zdraw.colors[#"gray9"] = (0.9, 0.9, 0.9);
        level.zdraw.colors[#"slate"] = (0.439216, 0.501961, 0.564706);
        level.zdraw.colors[#"pink"] = (1, 0.752941, 0.796078);
        level.zdraw.colors[#"olive"] = (0.501961, 0.501961, 0);
        level.zdraw.colors[#"brown"] = (0.545098, 0.270588, 0.0745098);
        level.zdraw.colors[#"default"] = (1, 1, 1);
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 0, eflags: 0x0
    // Checksum 0x3b082c52, Offset: 0x5b8
    // Size: 0x22c
    function function_99bd35ec() {
        level.zdraw.commands = [];
        level.zdraw.commands[#"color"] = &function_54389019;
        level.zdraw.commands[#"alpha"] = &function_82f2d020;
        level.zdraw.commands[#"duration"] = &function_cb18c560;
        level.zdraw.commands[#"seconds"] = &function_82201799;
        level.zdraw.commands[#"scale"] = &function_f7176625;
        level.zdraw.commands[#"radius"] = &function_a026f442;
        level.zdraw.commands[#"sides"] = &function_912c8db9;
        level.zdraw.commands[#"text"] = &function_b5cdeec6;
        level.zdraw.commands[#"star"] = &function_da7503f4;
        level.zdraw.commands[#"sphere"] = &function_3a2c5c6b;
        level.zdraw.commands[#"line"] = &function_25fd7d2a;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 0, eflags: 0x0
    // Checksum 0xdea86066, Offset: 0x7f0
    // Size: 0xf2
    function function_b36498d3() {
        level.zdraw.color = level.zdraw.colors[#"default"];
        level.zdraw.alpha = 1;
        level.zdraw.scale = 1;
        level.zdraw.duration = int(1 * 62.5);
        level.zdraw.radius = 8;
        level.zdraw.sides = 10;
        level.zdraw.var_eeef5e89 = (0, 0, 0);
        level.zdraw.var_f78505a1 = 0;
        level.zdraw.var_d15c03f8 = "<unknown string>";
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 0, eflags: 0x0
    // Checksum 0x67d0c762, Offset: 0x8f0
    // Size: 0xf8
    function function_c78d9e67() {
        level notify(#"hash_79dc2eb04ee1da22");
        level endon(#"hash_79dc2eb04ee1da22");
        for (;;) {
            cmd = getdvarstring(#"zdraw");
            if (cmd.size) {
                function_b36498d3();
                params = strtok(cmd, "<unknown string>");
                function_cd7ed6c5(params, 0, 1);
                setdvar(#"zdraw", "<unknown string>");
            }
            wait(0.5);
        }
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 3, eflags: 0x0
    // Checksum 0x9be799c3, Offset: 0x9f0
    // Size: 0xd4
    function function_cd7ed6c5(var_a99ac828, startat, toplevel) {
        if (!isdefined(toplevel)) {
            toplevel = 0;
        }
        while (isdefined(var_a99ac828[startat])) {
            if (isdefined(level.zdraw.commands[var_a99ac828[startat]])) {
                startat = [[ level.zdraw.commands[var_a99ac828[startat]] ]](var_a99ac828, startat + 1);
                continue;
            }
            if (is_true(toplevel)) {
                function_96c207f("<unknown string>" + var_a99ac828[startat]);
            }
            return startat;
        }
        return startat;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 2, eflags: 0x0
    // Checksum 0x9cf6adae, Offset: 0xad0
    // Size: 0x14a
    function function_3a2c5c6b(var_a99ac828, startat) {
        while (isdefined(var_a99ac828[startat])) {
            if (function_b0f457f2(var_a99ac828[startat])) {
                var_769ff4d7 = function_b59acc83(var_a99ac828, startat);
                if (var_769ff4d7 > startat) {
                    startat = var_769ff4d7;
                    center = level.zdraw.var_eeef5e89;
                    sphere(center, level.zdraw.radius, level.zdraw.color, level.zdraw.alpha, 1, level.zdraw.sides, level.zdraw.duration);
                    level.zdraw.var_eeef5e89 = (0, 0, 0);
                }
                continue;
            }
            var_769ff4d7 = function_cd7ed6c5(var_a99ac828, startat);
            if (var_769ff4d7 > startat) {
                startat = var_769ff4d7;
                continue;
            }
            return startat;
        }
        return startat;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 2, eflags: 0x0
    // Checksum 0xf54e326f, Offset: 0xc28
    // Size: 0x11a
    function function_da7503f4(var_a99ac828, startat) {
        while (isdefined(var_a99ac828[startat])) {
            if (function_b0f457f2(var_a99ac828[startat])) {
                var_769ff4d7 = function_b59acc83(var_a99ac828, startat);
                if (var_769ff4d7 > startat) {
                    startat = var_769ff4d7;
                    center = level.zdraw.var_eeef5e89;
                    debugstar(center, level.zdraw.duration, level.zdraw.color);
                    level.zdraw.var_eeef5e89 = (0, 0, 0);
                }
                continue;
            }
            var_769ff4d7 = function_cd7ed6c5(var_a99ac828, startat);
            if (var_769ff4d7 > startat) {
                startat = var_769ff4d7;
                continue;
            }
            return startat;
        }
        return startat;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 2, eflags: 0x0
    // Checksum 0xe82d2e0d, Offset: 0xd50
    // Size: 0x17a
    function function_25fd7d2a(var_a99ac828, startat) {
        level.zdraw.linestart = undefined;
        while (isdefined(var_a99ac828[startat])) {
            if (function_b0f457f2(var_a99ac828[startat])) {
                var_769ff4d7 = function_b59acc83(var_a99ac828, startat);
                if (var_769ff4d7 > startat) {
                    startat = var_769ff4d7;
                    lineend = level.zdraw.var_eeef5e89;
                    if (isdefined(level.zdraw.linestart)) {
                        line(level.zdraw.linestart, lineend, level.zdraw.color, level.zdraw.alpha, 1, level.zdraw.duration);
                    }
                    level.zdraw.linestart = lineend;
                    level.zdraw.var_eeef5e89 = (0, 0, 0);
                }
                continue;
            }
            var_769ff4d7 = function_cd7ed6c5(var_a99ac828, startat);
            if (var_769ff4d7 > startat) {
                startat = var_769ff4d7;
                continue;
            }
            return startat;
        }
        return startat;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 2, eflags: 0x0
    // Checksum 0x964169d8, Offset: 0xed8
    // Size: 0x1d2
    function function_b5cdeec6(var_a99ac828, startat) {
        level.zdraw.text = "<unknown string>";
        if (isdefined(var_a99ac828[startat])) {
            var_769ff4d7 = function_7bf700e4(var_a99ac828, startat);
            if (var_769ff4d7 > startat) {
                startat = var_769ff4d7;
                level.zdraw.text = level.zdraw.var_d15c03f8;
                level.zdraw.var_d15c03f8 = "<unknown string>";
            }
        }
        while (isdefined(var_a99ac828[startat])) {
            if (function_b0f457f2(var_a99ac828[startat])) {
                var_769ff4d7 = function_b59acc83(var_a99ac828, startat);
                if (var_769ff4d7 > startat) {
                    startat = var_769ff4d7;
                    center = level.zdraw.var_eeef5e89;
                    print3d(center, level.zdraw.text, level.zdraw.color, level.zdraw.alpha, level.zdraw.scale, level.zdraw.duration);
                    level.zdraw.var_eeef5e89 = (0, 0, 0);
                }
                continue;
            }
            var_769ff4d7 = function_cd7ed6c5(var_a99ac828, startat);
            if (var_769ff4d7 > startat) {
                startat = var_769ff4d7;
                continue;
            }
            return startat;
        }
        return startat;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 2, eflags: 0x0
    // Checksum 0x78a95328, Offset: 0x10b8
    // Size: 0x158
    function function_54389019(var_a99ac828, startat) {
        if (isdefined(var_a99ac828[startat])) {
            if (function_b0f457f2(var_a99ac828[startat])) {
                var_769ff4d7 = function_b59acc83(var_a99ac828, startat);
                if (var_769ff4d7 > startat) {
                    startat = var_769ff4d7;
                    level.zdraw.color = level.zdraw.var_eeef5e89;
                    level.zdraw.var_eeef5e89 = (0, 0, 0);
                } else {
                    level.zdraw.color = (1, 1, 1);
                }
            } else {
                if (isdefined(level.zdraw.colors[var_a99ac828[startat]])) {
                    level.zdraw.color = level.zdraw.colors[var_a99ac828[startat]];
                } else {
                    level.zdraw.color = (1, 1, 1);
                    function_96c207f("<unknown string>" + var_a99ac828[startat]);
                }
                startat += 1;
            }
        }
        return startat;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 2, eflags: 0x0
    // Checksum 0x6d79edf3, Offset: 0x1218
    // Size: 0xa8
    function function_82f2d020(var_a99ac828, startat) {
        if (isdefined(var_a99ac828[startat])) {
            var_769ff4d7 = revive_getdvar(var_a99ac828, startat);
            if (var_769ff4d7 > startat) {
                startat = var_769ff4d7;
                level.zdraw.alpha = level.zdraw.var_f78505a1;
                level.zdraw.var_f78505a1 = 0;
            } else {
                level.zdraw.alpha = 1;
            }
        }
        return startat;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 2, eflags: 0x0
    // Checksum 0xb49b4085, Offset: 0x12c8
    // Size: 0xa8
    function function_f7176625(var_a99ac828, startat) {
        if (isdefined(var_a99ac828[startat])) {
            var_769ff4d7 = revive_getdvar(var_a99ac828, startat);
            if (var_769ff4d7 > startat) {
                startat = var_769ff4d7;
                level.zdraw.scale = level.zdraw.var_f78505a1;
                level.zdraw.var_f78505a1 = 0;
            } else {
                level.zdraw.scale = 1;
            }
        }
        return startat;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 2, eflags: 0x0
    // Checksum 0xfc6807bd, Offset: 0x1378
    // Size: 0xd8
    function function_cb18c560(var_a99ac828, startat) {
        if (isdefined(var_a99ac828[startat])) {
            var_769ff4d7 = revive_getdvar(var_a99ac828, startat);
            if (var_769ff4d7 > startat) {
                startat = var_769ff4d7;
                level.zdraw.duration = int(level.zdraw.var_f78505a1);
                level.zdraw.var_f78505a1 = 0;
            } else {
                level.zdraw.duration = int(1 * 62.5);
            }
        }
        return startat;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 2, eflags: 0x0
    // Checksum 0x896438c3, Offset: 0x1458
    // Size: 0xe0
    function function_82201799(var_a99ac828, startat) {
        if (isdefined(var_a99ac828[startat])) {
            var_769ff4d7 = revive_getdvar(var_a99ac828, startat);
            if (var_769ff4d7 > startat) {
                startat = var_769ff4d7;
                level.zdraw.duration = int(62.5 * level.zdraw.var_f78505a1);
                level.zdraw.var_f78505a1 = 0;
            } else {
                level.zdraw.duration = int(1 * 62.5);
            }
        }
        return startat;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 2, eflags: 0x0
    // Checksum 0x89d758dd, Offset: 0x1540
    // Size: 0xa8
    function function_a026f442(var_a99ac828, startat) {
        if (isdefined(var_a99ac828[startat])) {
            var_769ff4d7 = revive_getdvar(var_a99ac828, startat);
            if (var_769ff4d7 > startat) {
                startat = var_769ff4d7;
                level.zdraw.radius = level.zdraw.var_f78505a1;
                level.zdraw.var_f78505a1 = 0;
            } else {
                level.zdraw.radius = 8;
            }
        }
        return startat;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 2, eflags: 0x0
    // Checksum 0x67b6283d, Offset: 0x15f0
    // Size: 0xbc
    function function_912c8db9(var_a99ac828, startat) {
        if (isdefined(var_a99ac828[startat])) {
            var_769ff4d7 = revive_getdvar(var_a99ac828, startat);
            if (var_769ff4d7 > startat) {
                startat = var_769ff4d7;
                level.zdraw.sides = int(level.zdraw.var_f78505a1);
                level.zdraw.var_f78505a1 = 0;
            } else {
                level.zdraw.sides = 10;
            }
        }
        return startat;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 1, eflags: 0x0
    // Checksum 0xd4eeb650, Offset: 0x16b8
    // Size: 0x86
    function function_b0f457f2(param) {
        if (isdefined(param) && (isint(param) || isfloat(param) || isstring(param) && strisnumber(param))) {
            return 1;
        }
        return 0;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 2, eflags: 0x0
    // Checksum 0x1aaa519e, Offset: 0x1748
    // Size: 0x248
    function function_b59acc83(var_a99ac828, startat) {
        if (isdefined(var_a99ac828[startat])) {
            var_769ff4d7 = revive_getdvar(var_a99ac828, startat);
            if (var_769ff4d7 > startat) {
                startat = var_769ff4d7;
                level.zdraw.var_eeef5e89 = (level.zdraw.var_f78505a1, level.zdraw.var_eeef5e89[1], level.zdraw.var_eeef5e89[2]);
                level.zdraw.var_f78505a1 = 0;
            } else {
                function_96c207f("<unknown string>");
                return startat;
            }
            var_769ff4d7 = revive_getdvar(var_a99ac828, startat);
            if (var_769ff4d7 > startat) {
                startat = var_769ff4d7;
                level.zdraw.var_eeef5e89 = (level.zdraw.var_eeef5e89[0], level.zdraw.var_f78505a1, level.zdraw.var_eeef5e89[2]);
                level.zdraw.var_f78505a1 = 0;
            } else {
                function_96c207f("<unknown string>");
                return startat;
            }
            var_769ff4d7 = revive_getdvar(var_a99ac828, startat);
            if (var_769ff4d7 > startat) {
                startat = var_769ff4d7;
                level.zdraw.var_eeef5e89 = (level.zdraw.var_eeef5e89[0], level.zdraw.var_eeef5e89[1], level.zdraw.var_f78505a1);
                level.zdraw.var_f78505a1 = 0;
            } else {
                function_96c207f("<unknown string>");
                return startat;
            }
        }
        return startat;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 2, eflags: 0x0
    // Checksum 0xb5303ebe, Offset: 0x1998
    // Size: 0x76
    function revive_getdvar(var_a99ac828, startat) {
        if (isdefined(var_a99ac828[startat])) {
            if (function_b0f457f2(var_a99ac828[startat])) {
                level.zdraw.var_f78505a1 = float(var_a99ac828[startat]);
                startat += 1;
            }
        }
        return startat;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 2, eflags: 0x0
    // Checksum 0xacd09615, Offset: 0x1a18
    // Size: 0x4e
    function function_7bf700e4(var_a99ac828, startat) {
        if (isdefined(var_a99ac828[startat])) {
            level.zdraw.var_d15c03f8 = var_a99ac828[startat];
            startat += 1;
        }
        return startat;
    }

    // Namespace zm_zdraw/zm_zdraw
    // Params 1, eflags: 0x0
    // Checksum 0x7b33a272, Offset: 0x1a70
    // Size: 0x34
    function function_96c207f(msg) {
        println("<unknown string>" + msg);
    }

#/
