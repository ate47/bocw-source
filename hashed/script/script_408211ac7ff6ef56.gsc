// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\array_shared.gsc;

#namespace namespace_b637a3ed;

// Namespace namespace_b637a3ed/namespace_b637a3ed
// Params 7, eflags: 0x2 linked
// Checksum 0x16fd67a5, Offset: 0x88
// Size: 0x210
function drop_item(index, origin, angles, var_98c867cd, random_yaw = 1, origin_offset = undefined, var_b3f3cd0d = undefined) {
    min_angle = 0;
    max_angle = 360;
    height = 0;
    var_66694b96 = self function_350c0e2b(index, origin, angles, var_98c867cd);
    self.origin = var_66694b96.start_origin;
    self.angles = var_66694b96.start_angles;
    if (random_yaw) {
        yaw = randomint(360);
        self.angles = (var_66694b96.start_angles[0], angleclamp180(var_66694b96.start_angles[1] + yaw), var_66694b96.start_angles[2]);
    }
    if (isdefined(var_b3f3cd0d)) {
        self.angles = var_b3f3cd0d;
    }
    if (!isdefined(origin_offset)) {
        origin_offset = (0, 0, 0);
    }
    time = self function_3579cbe7(var_66694b96.start_origin, var_66694b96.start_angles, var_66694b96.end_origin + origin_offset, self.angles);
    /#
        var_ad49c795 = getdvarint(#"hash_730e73fdf6a44e00", 0);
        if (var_ad49c795) {
            self thread function_f6480a82(time);
        }
    #/
    return time;
}

// Namespace namespace_b637a3ed/namespace_b637a3ed
// Params 4, eflags: 0x2 linked
// Checksum 0x9cad3109, Offset: 0x2a0
// Size: 0x1c4
function function_350c0e2b(index, origin, angles, var_98c867cd) {
    ignore_entity = isentity(self) ? self : undefined;
    if (var_98c867cd == 3 || var_98c867cd == 4) {
        if (index % 2 > 0) {
            yaw = -25;
        } else {
            yaw = 25;
        }
        yaw += randomfloatrange(-10, 10);
        dist = 35 + index / 2 * 25 + randomfloatrange(-5, 5);
        return function_9345a4f7(var_98c867cd, index, origin, angles, undefined, yaw, dist, 1);
    }
    if (var_98c867cd == 2) {
        return function_9345a4f7(var_98c867cd, index, origin, angles, ignore_entity, undefined, undefined, 1);
    }
    if (var_98c867cd == 5 || var_98c867cd == 6) {
        return function_fb72164f(var_98c867cd, index, origin, angles, ignore_entity, 1);
    }
    assert(0);
}

// Namespace namespace_b637a3ed/namespace_b637a3ed
// Params 8, eflags: 0x2 linked
// Checksum 0x65b7970d, Offset: 0x470
// Size: 0x9e4
function function_9345a4f7(var_98c867cd, index, baseorigin, baseangles, ignoreent, var_8c967549, var_a17c7804, traces = 1) {
    assert(!isdefined(ignoreent) || isentity(ignoreent));
    var_13406a7f = traces;
    var_ad49c795 = getdvarint(#"hash_730e73fdf6a44e00", 0);
    var_5b5e9cdb = 13;
    var_a9c62ebc = 50;
    var_7e266d2a = 40;
    var_b5b1872d = -5;
    var_c2fd0740 = 5;
    var_f4c981a5 = 10;
    slot_yaw = 360 / var_5b5e9cdb;
    var_45875de2 = -5;
    var_af26a7db = 5;
    var_d0a44618 = 20;
    var_172c8bf4 = 60;
    var_f3e8e50d = -6;
    var_7def9f0 = 16;
    var_3512e170 = -18;
    var_d0a43e8b = 0;
    if (var_98c867cd == 4) {
        var_d0a44618 = 0;
        var_d0a43e8b = 5;
    }
    noground = 0;
    ring = int(index / var_5b5e9cdb);
    slot = index - ring * var_5b5e9cdb;
    yaw = baseangles[1] + slot * slot_yaw + ring * var_f4c981a5 + randomfloatrange(var_45875de2, var_af26a7db);
    dist = var_a9c62ebc + ring * var_7e266d2a + randomfloatrange(var_b5b1872d, var_c2fd0740);
    if (isdefined(var_8c967549)) {
        yaw = baseangles[1] + var_8c967549;
    }
    if (isdefined(var_a17c7804)) {
        dist = var_a17c7804;
    }
    angles = (0, yaw, 0);
    dir = anglestoforward(angles);
    var_118985a1 = baseorigin + dir * var_d0a43e8b;
    origin = var_118985a1 + dir * dist;
    var_ef1cacd6 = dir * -1 * var_3512e170;
    ignoreents = getentitiesinradius(self.origin, 500, 12);
    if (var_13406a7f) {
        if (isdefined(ignoreent)) {
            if (!isdefined(ignoreents)) {
                ignoreents = [];
            } else if (!isarray(ignoreents)) {
                ignoreents = array(ignoreents);
            }
            ignoreents[ignoreents.size] = ignoreent;
        }
        tracestart = var_118985a1 + (0, 0, var_d0a44618);
        traceend = origin + (0, 0, var_d0a44618) + var_ef1cacd6;
        traceresults = physicstraceex(tracestart, traceend, (0, 0, 0), (0, 0, 0), ignoreents, 1);
        /#
            if (var_ad49c795) {
                function_7289b47(index, "<unknown string>", tracestart, traceend, traceresults);
            }
        #/
        if (traceresults[#"fraction"] < 1) {
            origin = traceresults[#"position"];
            origin += dir * var_3512e170;
        } else {
            origin = traceend - var_ef1cacd6;
        }
        tracestart = origin;
        traceend = origin + (0, 0, var_172c8bf4);
        traceresults = physicstraceex(tracestart, traceend, (0, 0, 0), (0, 0, 0), ignoreents, 1);
        /#
            if (var_ad49c795) {
                function_7289b47(index, "<unknown string>", tracestart + (0, 1, 0), traceend + (0, 1, 0), traceresults);
            }
        #/
        if (traceresults[#"fraction"] < 1) {
            origin = traceresults[#"position"] + (0, 0, var_f3e8e50d);
        } else {
            origin = traceend;
        }
        tracestart = origin;
        var_c99af8d9 = -1 * getdvarfloat(#"hash_52c51de092ea7057", 2000);
        traceend = origin + (0, 0, var_c99af8d9);
        traceresults = physicstraceex(tracestart, traceend, (0, 0, 0), (0, 0, 0), ignoreents, 1);
        /#
            if (var_ad49c795) {
                function_7289b47(index, "<unknown string>", tracestart, traceend, traceresults);
            }
        #/
        if (traceresults[#"fraction"] < 1) {
            origin = traceresults[#"position"] + (0, 0, var_7def9f0);
            zdiff = tracestart[2] - origin[2];
            if (zdiff > 150) {
                origin += 0.06 * (0, 0, zdiff);
            }
        } else {
            origin = (0, 0, 0);
            noground = 1;
        }
    } else {
        origin += (0, 0, var_7def9f0);
    }
    if (var_98c867cd == 4) {
        start_origin = var_118985a1;
    } else {
        start_origin = var_118985a1 + (0, 0, 40);
    }
    if (isdefined(getgametypesetting(#"hash_69df7093cd32f107")) ? getgametypesetting(#"hash_69df7093cd32f107") : 0) {
        var_d69d1a6d = getclosestpointonnavmesh(origin, 48, 6);
        if (isdefined(var_d69d1a6d) && var_13406a7f) {
            traceoffset = (0, 0, 60);
            traceresults = physicstraceex(var_d69d1a6d + traceoffset, var_d69d1a6d - traceoffset, (0, 0, 0), (0, 0, 0), ignoreents, 1);
            if (traceresults[#"fraction"] < 1) {
                origin = traceresults[#"position"] + (0, 0, var_7def9f0);
            } else {
                origin = var_d69d1a6d + (0, 0, var_7def9f0);
            }
        }
    }
    switch (var_98c867cd) {
    case 2:
        offset = getdvarint(#"hash_50b18a791b1b5d34", 0);
        origin = (origin[0], origin[1], origin[2] + offset);
        break;
    case 3:
        offset = getdvarint(#"hash_6e5f4d21ec1124ec", 0);
        origin = (origin[0], origin[1], origin[2] + offset);
        break;
    }
    return {#start_origin:start_origin, #start_angles:angles, #end_origin:origin, #end_angles:angles};
}

// Namespace namespace_b637a3ed/namespace_b637a3ed
// Params 6, eflags: 0x2 linked
// Checksum 0xcfe9222d, Offset: 0xe60
// Size: 0x2fc
function function_fb72164f(var_98c867cd, index, baseorigin, baseangles, ignoreent, traces = 1) {
    assert(!isdefined(ignoreent) || isentity(ignoreent));
    var_ad49c795 = getdvarint(#"hash_730e73fdf6a44e00", 0);
    var_7def9f0 = 16;
    if (var_98c867cd == 6) {
        var_7def9f0 = 24;
    }
    noground = 0;
    ignoreents = getentitiesinradius(self.origin, 500, 12);
    if (isdefined(ignoreent)) {
        if (!isdefined(ignoreents)) {
            ignoreents = [];
        } else if (!isarray(ignoreents)) {
            ignoreents = array(ignoreents);
        }
        ignoreents[ignoreents.size] = ignoreent;
    }
    origin = baseorigin;
    if (traces) {
        var_c99af8d9 = -1 * getdvarfloat(#"hash_52c51de092ea7057", 2000);
        traceend = baseorigin + (0, 0, var_c99af8d9);
        traceresults = physicstraceex(baseorigin, traceend, (0, 0, 0), (0, 0, 0), ignoreents, 1);
        /#
            if (var_ad49c795) {
                function_7289b47(index, "<unknown string>", baseorigin, traceend, traceresults);
            }
        #/
        if (traceresults[#"fraction"] < 1) {
            origin = traceresults[#"position"] + (0, 0, var_7def9f0);
        } else {
            origin = (0, 0, 0);
            noground = 1;
        }
    }
    start_origin = baseorigin + (0, 0, 40);
    return {#start_origin:start_origin, #start_angles:baseangles, #end_origin:origin, #end_angles:baseangles};
}

/#

    // Namespace namespace_b637a3ed/namespace_b637a3ed
    // Params 5, eflags: 0x0
    // Checksum 0xe79f2dc8, Offset: 0x1168
    // Size: 0x214
    function function_7289b47(index, name, start, end, traceresults) {
        var_e011538a = 2000;
        if (traceresults[#"fraction"] < 1) {
            line(start, traceresults[#"position"], (1, 0, 0), 1, 0, var_e011538a);
            debugaxis(traceresults[#"position"], (0, 0, 0), 10, 1, 1, var_e011538a);
            println("<unknown string>" + start + "<unknown string>" + traceresults[#"position"]);
            if (isdefined(traceresults[#"entity"])) {
                selectedentity = traceresults[#"entity"];
                println("<unknown string>" + index + "<unknown string>" + name + "<unknown string>" + traceresults[#"fraction"] + "<unknown string>" + selectedentity.name);
            } else {
                println("<unknown string>" + index + "<unknown string>" + name + "<unknown string>" + traceresults[#"fraction"]);
            }
            return;
        }
        line(start, end, (1, 1, 1), 1, 0, var_e011538a);
    }

    // Namespace namespace_b637a3ed/namespace_b637a3ed
    // Params 1, eflags: 0x0
    // Checksum 0x6402b234, Offset: 0x1388
    // Size: 0xba
    function function_f6480a82(time) {
        var_e011538a = 2000;
        self endon(#"death");
        last_origin = self.origin;
        end_time = gettime() + int(time * 1000);
        while (gettime() < end_time) {
            waitframe(1);
            line(last_origin, self.origin, (0, 1, 0), 1, 1, var_e011538a);
            last_origin = self.origin;
        }
    }

#/
