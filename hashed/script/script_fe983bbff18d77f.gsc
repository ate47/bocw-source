// Atian COD Tools GSC CW decompiler test
#using script_7b68dad851540de;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_206491b4;

// Namespace namespace_206491b4/tac
// Params 1, eflags: 0x2 linked
// Checksum 0x1440ba78, Offset: 0xf0
// Size: 0xcc
function function_24b5e32(pos) {
    pos = goal_origin(pos);
    if (isdefined(self.smart_object)) {
        return self.smart_object smart_object::get_goal().angles;
    }
    if (is_true(self.limitstealthturning)) {
        return vectortoangles(pos - self.origin);
    }
    lookdir = findopenlookdir(pos);
    if (isdefined(lookdir)) {
        return vectortoangles(lookdir);
    }
}

// Namespace namespace_206491b4/tac
// Params 3, eflags: 0x2 linked
// Checksum 0x9cc51dda, Offset: 0x1c8
// Size: 0x1c0
function findopenlookdir(from, radius = 256, mindist = 96) {
    from = goal_origin(from);
    space = ai::t_cylinder(from, radius, 128);
    tacpoints = isdefined(tacticalquery("stealth_open_view_space", from, space)) ? tacticalquery("stealth_open_view_space", from, space) : [];
    mindistsq = sqr(mindist);
    foreach (tac in tacpoints) {
        if (distancesquared(from, tac.origin) > mindistsq) {
            dir = tac.origin - from;
            return vectornormalize((dir[0], dir[1], 0));
        }
    }
}

// Namespace namespace_206491b4/tac
// Params 6, eflags: 0x2 linked
// Checksum 0x218c7839, Offset: 0x390
// Size: 0x7a
function findclosestnonlospointwithinradius(center, radius, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589) {
    cylinder = ai::t_cylinder(center, radius, 128);
    return function_a4b83b6a("stealth_closest_non_los_space", cylinder, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589);
}

// Namespace namespace_206491b4/tac
// Params 5, eflags: 0x2 linked
// Checksum 0x7e51de1, Offset: 0x418
// Size: 0x4a
function findclosestnonlospointwithinvolume(vol, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589) {
    return function_a4b83b6a("stealth_closest_non_los_space", vol, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589);
}

// Namespace namespace_206491b4/tac
// Params 6, eflags: 0x2 linked
// Checksum 0xc831e1da, Offset: 0x470
// Size: 0x7a
function findclosestlospointwithinradius(center, radius, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589) {
    cylinder = ai::t_cylinder(center, radius, 128);
    return function_a4b83b6a("stealth_closest_los_space", cylinder, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589);
}

// Namespace namespace_206491b4/tac
// Params 5, eflags: 0x2 linked
// Checksum 0xae26b20e, Offset: 0x4f8
// Size: 0x4a
function findclosestlospointwithinvolume(vol, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589) {
    return function_a4b83b6a("stealth_closest_los_space", vol, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589);
}

// Namespace namespace_206491b4/tac
// Params 6, eflags: 0x6 linked
// Checksum 0x16a25fbe, Offset: 0x550
// Size: 0x238
function private function_a4b83b6a(tacquery, space, var_72cc3c18, var_465a4fd5, var_56d24f04, var_78b09589) {
    tacpoints = isdefined(tacticalquery(tacquery, space.origin, space, var_72cc3c18, var_465a4fd5)) ? tacticalquery(tacquery, space.origin, space, var_72cc3c18, var_465a4fd5) : [];
    if (isdefined(var_56d24f04)) {
        assert(isdefined(var_78b09589));
        var_dfdc1e6f = sqr(var_78b09589);
        var_fdba779a = [];
        foreach (tac in tacpoints) {
            ignored = 0;
            foreach (point in var_56d24f04) {
                if (distancesquared(point.origin, tac.origin) < var_dfdc1e6f) {
                    ignored = 1;
                    break;
                }
            }
            if (!ignored) {
                var_fdba779a[var_fdba779a.size] = tac;
            }
        }
        tacpoints = var_fdba779a;
    }
    if (tacpoints.size > 0) {
        return tacpoints[0].origin;
    }
    return var_465a4fd5;
}

// Namespace namespace_206491b4/tac
// Params 1, eflags: 0x6 linked
// Checksum 0x7a307aac, Offset: 0x790
// Size: 0x36
function private goal_origin(goal) {
    if (isvec(goal)) {
        return goal;
    }
    return goal.origin;
}

