// Atian COD Tools GSC CW decompiler test
#using script_7b68dad851540de;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_206491b4;

// Namespace namespace_206491b4/namespace_3f3095e
// Params 1, eflags: 0x2 linked
// Checksum 0x1440ba78, Offset: 0xf0
// Size: 0xcc
function function_24b5e32(pos) {
    pos = function_2d8730f7(pos);
    if (isdefined(self.var_7b4b2b57)) {
        return self.var_7b4b2b57 namespace_7b4b2b57::get_goal().angles;
    }
    if (is_true(self.var_e9b6a21)) {
        return vectortoangles(pos - self.origin);
    }
    lookdir = function_ce9796cb(pos);
    if (isdefined(lookdir)) {
        return vectortoangles(lookdir);
    }
}

// Namespace namespace_206491b4/namespace_3f3095e
// Params 3, eflags: 0x2 linked
// Checksum 0x9cc51dda, Offset: 0x1c8
// Size: 0x1c0
function function_ce9796cb(from, radius = 256, mindist = 96) {
    from = function_2d8730f7(from);
    space = ai::t_cylinder(from, radius, 128);
    tacpoints = isdefined(tacticalquery("stealth_open_view_space", from, space)) ? tacticalquery("stealth_open_view_space", from, space) : [];
    mindistsq = function_a3f6cdac(mindist);
    foreach (var_3f3095e in tacpoints) {
        if (distancesquared(from, var_3f3095e.origin) > mindistsq) {
            dir = var_3f3095e.origin - from;
            return vectornormalize((dir[0], dir[1], 0));
        }
    }
}

// Namespace namespace_206491b4/namespace_3f3095e
// Params 6, eflags: 0x2 linked
// Checksum 0x218c7839, Offset: 0x390
// Size: 0x7a
function function_24d0d4f3(center, radius, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589) {
    cylinder = ai::t_cylinder(center, radius, 128);
    return function_a4b83b6a("stealth_closest_non_los_space", cylinder, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589);
}

// Namespace namespace_206491b4/namespace_3f3095e
// Params 5, eflags: 0x2 linked
// Checksum 0x7e51de1, Offset: 0x418
// Size: 0x4a
function function_19b8c555(vol, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589) {
    return function_a4b83b6a("stealth_closest_non_los_space", vol, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589);
}

// Namespace namespace_206491b4/namespace_3f3095e
// Params 6, eflags: 0x2 linked
// Checksum 0xc831e1da, Offset: 0x470
// Size: 0x7a
function function_3237777a(center, radius, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589) {
    cylinder = ai::t_cylinder(center, radius, 128);
    return function_a4b83b6a("stealth_closest_los_space", cylinder, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589);
}

// Namespace namespace_206491b4/namespace_3f3095e
// Params 5, eflags: 0x2 linked
// Checksum 0xae26b20e, Offset: 0x4f8
// Size: 0x4a
function function_2d5bae57(vol, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589) {
    return function_a4b83b6a("stealth_closest_los_space", vol, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589);
}

// Namespace namespace_206491b4/namespace_3f3095e
// Params 6, eflags: 0x6 linked
// Checksum 0x16a25fbe, Offset: 0x550
// Size: 0x238
function private function_a4b83b6a(var_b1f9c3ce, space, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589) {
    tacpoints = isdefined(tacticalquery(var_b1f9c3ce, space.origin, space, var_72cc3c18, var_465a4fd5)) ? tacticalquery(var_b1f9c3ce, space.origin, space, var_72cc3c18, var_465a4fd5) : [];
    if (isdefined(var_56d24f04)) {
        /#
            assert(isdefined(var_78b09589));
        #/
        var_dfdc1e6f = function_a3f6cdac(var_78b09589);
        var_fdba779a = [];
        foreach (var_3f3095e in tacpoints) {
            var_afb497ff = 0;
            foreach (point in var_56d24f04) {
                if (distancesquared(point.origin, var_3f3095e.origin) < var_dfdc1e6f) {
                    var_afb497ff = 1;
                    break;
                }
            }
            if (!var_afb497ff) {
                var_fdba779a[var_fdba779a.size] = var_3f3095e;
            }
        }
        tacpoints = var_fdba779a;
    }
    if (tacpoints.size > 0) {
        return tacpoints[0].origin;
    }
    return var_465a4fd5;
}

// Namespace namespace_206491b4/namespace_3f3095e
// Params 1, eflags: 0x6 linked
// Checksum 0x7a307aac, Offset: 0x790
// Size: 0x36
function private function_2d8730f7(goal) {
    if (isvec(goal)) {
        return goal;
    }
    return goal.origin;
}

