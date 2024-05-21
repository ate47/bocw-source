// Atian COD Tools GSC CW decompiler test
#namespace path;

/#

    // Namespace path/path
    // Params 5, eflags: 0x4
    // Checksum 0xaa022c63, Offset: 0x80
    // Size: 0x128
    function private function_a760f3bf(path, var_bc114662, point_color, line_color, var_80bf7c44) {
        assert(isdefined(path));
        for (i = 0; i < path.size; i++) {
            if (isdefined(path[i + 1])) {
                direction = vectornormalize(path[i + 1] - path[i]);
                radius = distance(path[i], path[i + 1]) / 2;
                center = path[i] + vectorscale(direction, radius);
                [[ var_bc114662 ]](path[i], path[i + 1], center, radius, point_color, line_color, var_80bf7c44);
            }
        }
    }

    // Namespace path/path
    // Params 7, eflags: 0x4
    // Checksum 0xb48d512f, Offset: 0x1b0
    // Size: 0xac
    function private function_d88e0349(path_1, path_2, center, radius, point_color, line_color, var_80bf7c44) {
        recordline(path_1, path_2, line_color, "<unknown string>");
        recordsphere(path_1, 2, point_color, "<unknown string>");
        recordcircle(center, radius, var_80bf7c44, "<unknown string>");
    }

    // Namespace path/path
    // Params 7, eflags: 0x4
    // Checksum 0xf8f9c730, Offset: 0x268
    // Size: 0xb4
    function private function_bb43c529(path_1, path_2, center, radius, point_color, line_color, var_80bf7c44) {
        line(path_1, path_2, point_color, 1, 1);
        sphere(path_1, 5, line_color, 1, 1);
        circle(center, radius, var_80bf7c44, 0, 1, 1);
    }

    // Namespace path/path
    // Params 4, eflags: 0x0
    // Checksum 0xd81172cd, Offset: 0x328
    // Size: 0x8c
    function function_3c367117(path_points, point_color, line_color, var_80bf7c44) {
        if (!isdefined(point_color)) {
            point_color = (0, 0, 1);
        }
        if (!isdefined(line_color)) {
            line_color = (0, 1, 0);
        }
        if (!isdefined(var_80bf7c44)) {
            var_80bf7c44 = (1, 0.5, 0);
        }
        function_a760f3bf(path_points, &function_d88e0349, point_color, line_color, var_80bf7c44);
    }

    // Namespace path/path
    // Params 4, eflags: 0x0
    // Checksum 0xf4b45971, Offset: 0x3c0
    // Size: 0x8c
    function function_aa9bfd9d(path_points, point_color, line_color, var_80bf7c44) {
        if (!isdefined(point_color)) {
            point_color = (0, 0, 1);
        }
        if (!isdefined(line_color)) {
            line_color = (0, 1, 0);
        }
        if (!isdefined(var_80bf7c44)) {
            var_80bf7c44 = (1, 0.5, 0);
        }
        function_a760f3bf(path_points, &function_bb43c529, point_color, line_color, var_80bf7c44);
    }

#/
