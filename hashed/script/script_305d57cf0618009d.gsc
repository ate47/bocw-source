// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\territory.gsc;
#using scripts\core_common\oob.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace player_insertion;

// Namespace player_insertion/namespace_3088f362
// Params 1, eflags: 0x2 linked
// Checksum 0x4a79d337, Offset: 0x2d0
// Size: 0x1c
function function_63977a98(newtime) {
    level.var_8367fa0f = newtime;
}

// Namespace player_insertion/namespace_3088f362
// Params 1, eflags: 0x2 linked
// Checksum 0x798449b6, Offset: 0x2f8
// Size: 0x1c
function function_d28162a2(newtime) {
    level.var_ab0cc070 = newtime;
}

// Namespace player_insertion/namespace_3088f362
// Params 1, eflags: 0x2 linked
// Checksum 0xc02753a9, Offset: 0x320
// Size: 0x1c
function function_1a50e8a5(newtime) {
    level.var_b28c6a29 = newtime;
}

// Namespace player_insertion/namespace_3088f362
// Params 1, eflags: 0x2 linked
// Checksum 0x126d7950, Offset: 0x348
// Size: 0xa4
function function_a21d9dc(insertion) {
    insertion flag::clear(#"hash_60fcdd11812a0134");
    insertion flag::clear(#"hash_122f326d72f4c884");
    insertion flag::clear(#"insertion_teleport_completed");
    insertion flag::clear(#"insertion_presentation_completed");
    function_bb93a8cd(insertion);
}

// Namespace player_insertion/namespace_3088f362
// Params 1, eflags: 0x2 linked
// Checksum 0x9cc1ce0a, Offset: 0x3f8
// Size: 0x196
function function_bb93a8cd(insertion) {
    insertioncount = isdefined(getgametypesetting(#"hash_731988b03dc6ee17")) ? getgametypesetting(#"hash_731988b03dc6ee17") : 1;
    if (insertioncount > 0) {
        activeplayers = function_a1ef346b();
        var_2c34761b = [];
        otherplayers = [];
        foreach (player in activeplayers) {
            if (function_20cba65e(player) == insertion.index) {
                var_2c34761b[var_2c34761b.size] = player;
                continue;
            }
            otherplayers[otherplayers.size] = player;
        }
        insertion.players = var_2c34761b;
        insertion.otherplayers = otherplayers;
        return;
    }
    insertion.players = function_a1ef346b();
    insertion.otherplayers = [];
}

// Namespace player_insertion/namespace_3088f362
// Params 2, eflags: 0x2 linked
// Checksum 0xa34bde96, Offset: 0x598
// Size: 0x5c
function function_dd34168c(insertion, flag) {
    insertion flag::set(flag);
    if (function_df47b31b(flag)) {
        level flag::set(flag);
    }
}

// Namespace player_insertion/namespace_3088f362
// Params 1, eflags: 0x6 linked
// Checksum 0xa26fc475, Offset: 0x600
// Size: 0x76
function private function_df47b31b(flag) {
    for (index = 0; index < level.insertions.size; index++) {
        insertion = level.insertions[index];
        if (!insertion flag::get(flag)) {
            return false;
        }
    }
    return true;
}

// Namespace player_insertion/namespace_3088f362
// Params 2, eflags: 0x2 linked
// Checksum 0x6c393617, Offset: 0x680
// Size: 0x5a
function function_1e4302d0(value, index) {
    assert(index < 2);
    newvalue = value << 1 | index & 1;
    return newvalue;
}

// Namespace player_insertion/namespace_3088f362
// Params 3, eflags: 0x6 linked
// Checksum 0x3909c76f, Offset: 0x6e8
// Size: 0xda
function private function_fd3c1bcc(start, end, default_val) {
    assert(isvec(default_val));
    trace = worldtrace(start, end);
    if (trace[#"fraction"] < 1) {
        assert(isvec(trace[#"position"]));
        return trace[#"position"];
    }
    return default_val;
}

// Namespace player_insertion/namespace_3088f362
// Params 1, eflags: 0x2 linked
// Checksum 0x730bd403, Offset: 0x7d0
// Size: 0x84
function function_a5fd9aa8(insertion) {
    assert(isstruct(insertion));
    arrayremovevalue(insertion.players, undefined, 0);
    if (isdefined(insertion.otherplayers)) {
        arrayremovevalue(insertion.otherplayers, undefined, 0);
    }
}

// Namespace player_insertion/namespace_3088f362
// Params 0, eflags: 0x2 linked
// Checksum 0xc6b0f2a7, Offset: 0x860
// Size: 0x88
function function_70dd0500() {
    height = 0;
    /#
        height = getdvarint(#"hash_37d751a610a5c2fc", 0);
    #/
    if (height == 0) {
        height = isdefined(level.var_427d6976.("insertionHeightAboveCenter")) ? level.var_427d6976.("insertionHeightAboveCenter") : 0;
    }
    return height;
}

// Namespace player_insertion/namespace_3088f362
// Params 1, eflags: 0x6 linked
// Checksum 0x7e8bc24c, Offset: 0x8f0
// Size: 0x192
function private function_3ca86964(var_1d83d08d) {
    var_6024133d = getentarray("map_corner", "targetname");
    mins = (-150000, -150000, 0);
    maxs = (150000, 150000, 0);
    if (var_6024133d.size == 0) {
        return {#start:mins, #end:maxs};
    }
    o_a = var_6024133d[0].origin;
    o_b = var_6024133d[1].origin;
    mins = (min(o_a[0], o_b[0]), min(o_a[1], o_b[1]), -150000);
    maxs = (max(o_a[0], o_b[0]), max(o_a[1], o_b[1]), 150000);
    return function_24531a26(var_1d83d08d.start, var_1d83d08d.end, mins, maxs);
}

// Namespace player_insertion/namespace_3088f362
// Params 1, eflags: 0x6 linked
// Checksum 0xc42385ea, Offset: 0xa90
// Size: 0x26a
function private function_9ddb4115(var_1d83d08d) {
    assert(isstruct(var_1d83d08d));
    assert(isdefined(var_1d83d08d.start));
    assert(isdefined(var_1d83d08d.end));
    if (isdefined(level.deathcircles) && level.deathcircles.size > 0) {
        initcircle = level.deathcircles[0];
        newstart = var_1d83d08d.start;
        toend = vectornormalize(var_1d83d08d.end - var_1d83d08d.start);
        for (var_164fe5c9 = distance2dsquared(newstart, initcircle.origin); var_164fe5c9 > sqr(initcircle.radius); var_164fe5c9 = var_c820832) {
            newstart += toend * 1000;
            var_c820832 = distance2dsquared(newstart, initcircle.origin);
            if (var_c820832 > var_164fe5c9) {
                break;
            }
        }
        var_1d83d08d.start = newstart;
        var_1b8e09d2 = var_1d83d08d.end;
        tostart = toend * -1;
        for (var_164fe5c9 = distance2dsquared(var_1b8e09d2, initcircle.origin); var_164fe5c9 > sqr(initcircle.radius); var_164fe5c9 = var_c820832) {
            var_1b8e09d2 += tostart * 1000;
            var_c820832 = distance2dsquared(var_1b8e09d2, initcircle.origin);
            if (var_c820832 > var_164fe5c9) {
                break;
            }
        }
        var_1d83d08d.end = var_1b8e09d2;
    }
}

// Namespace player_insertion/namespace_3088f362
// Params 3, eflags: 0x6 linked
// Checksum 0xaca8ab64, Offset: 0xd08
// Size: 0x168
function private function_ea1ad421(insertion, start, end) {
    assert(isstruct(insertion));
    assert(isvec(start));
    assert(isvec(end));
    direction = end - start;
    direction = vectornormalize(direction);
    step = isdefined(level.var_427d6976.("insertionOOBCheckStepSize")) ? level.var_427d6976.("insertionOOBCheckStepSize") : 1000;
    assert(!oob::chr_party(start));
    point = function_f31cf3bb(start, direction, step, 0);
    if (!isdefined(point)) {
        return end;
    }
    return point;
}

// Namespace player_insertion/namespace_3088f362
// Params 5, eflags: 0x2 linked
// Checksum 0x1b6d96c1, Offset: 0xe78
// Size: 0x128
function function_f31cf3bb(point, direction, step, depth, var_94a1d56d = 5) {
    var_23685c5 = point;
    var_19132446 = 50;
    if (step < var_19132446) {
        return var_23685c5;
    }
    count = 0;
    fail_safe = 50;
    while (true) {
        if (depth > var_94a1d56d || count > fail_safe) {
            return undefined;
        }
        new_point = var_23685c5 + direction * step;
        touching = oob::chr_party(new_point);
        /#
        #/
        if (touching) {
            depth++;
            return function_f31cf3bb(var_23685c5, direction, step / 2, depth, var_94a1d56d);
        } else {
            count++;
        }
        var_23685c5 = new_point;
    }
}

// Namespace player_insertion/namespace_3088f362
// Params 2, eflags: 0x2 linked
// Checksum 0x689134d4, Offset: 0xfa8
// Size: 0xc4
function function_9368af66(insertion, player) {
    assert(isstruct(insertion));
    assert(isplayer(player));
    insertion.infilteament setvisibletoplayer(player);
    insertion.infilteament clientfield::set("infiltration_ent", function_1e4302d0(1, insertion.index));
}

// Namespace player_insertion/namespace_3088f362
// Params 4, eflags: 0x2 linked
// Checksum 0xaf2f260e, Offset: 0x1078
// Size: 0x2dc
function function_d53a8c5b(insertion, fly_over_point, var_59526dd5, offset) {
    assert(isstruct(insertion));
    assert(isvec(fly_over_point));
    assert(isint(var_59526dd5) || isfloat(var_59526dd5));
    insertion.fly_over_point = fly_over_point;
    insertion.var_59526dd5 = var_59526dd5;
    var_872f085f = (0, var_59526dd5, 0);
    direction = anglestoforward(var_872f085f);
    direction = vectornormalize(direction);
    var_7c712437 = fly_over_point + anglestoright(var_872f085f) * offset;
    var_1d83d08d = {#start:var_7c712437 + direction * -150000, #end:var_7c712437 + direction * 150000};
    result = function_3ca86964(var_1d83d08d);
    var_1d83d08d.start = function_fd3c1bcc(fly_over_point, var_1d83d08d.start, result.start);
    var_1d83d08d.end = function_fd3c1bcc(fly_over_point, var_1d83d08d.end, result.end);
    if (is_true(getgametypesetting(#"hash_82c01ef004ff0a3"))) {
        function_9ddb4115(var_1d83d08d);
    }
    var_1d83d08d.start = function_ea1ad421(insertion, fly_over_point, var_1d83d08d.start);
    var_1d83d08d.end = function_ea1ad421(insertion, fly_over_point, var_1d83d08d.end);
    fly_path(insertion, var_1d83d08d, var_7c712437, var_59526dd5);
    insertion flag::set(#"hash_4e5fc66b9144a5c8");
}

// Namespace player_insertion/namespace_3088f362
// Params 5, eflags: 0x6 linked
// Checksum 0x651afb54, Offset: 0x1360
// Size: 0x1ac
function private function_e04b0ea8(insertion, start_point, var_872f085f, var_37362e08, var_f69b665b) {
    assert(isstruct(insertion));
    direction = anglestoforward(var_872f085f);
    insertion.var_b686c9d = spawn("script_model", start_point + direction * var_37362e08);
    insertion.var_b686c9d.targetname = "insertion_jump";
    insertion.var_b686c9d.angles = var_872f085f;
    insertion.var_d908905e = spawn("script_model", start_point + direction * var_f69b665b);
    insertion.var_d908905e.targetname = "insertion_force";
    insertion.var_d908905e.angles = var_872f085f;
    waitframe(1);
    insertion.var_b686c9d clientfield::set("infiltration_jump_point", function_1e4302d0(1, insertion.index));
    insertion.var_d908905e clientfield::set("infiltration_force_drop_point", function_1e4302d0(1, insertion.index));
}

// Namespace player_insertion/namespace_3088f362
// Params 0, eflags: 0x2 linked
// Checksum 0xcea2a043, Offset: 0x1518
// Size: 0x9c
function function_1db63266() {
    assert(isplayer(self));
    insertionindex = function_20cba65e(self);
    insertion = level.insertions[insertionindex];
    if (isdefined(insertion) && isdefined(insertion.infilteament)) {
        function_9368af66(insertion, self);
    }
}

// Namespace player_insertion/namespace_3088f362
// Params 4, eflags: 0x6 linked
// Checksum 0xd1d66c4f, Offset: 0x15c0
// Size: 0x914
function private fly_path(insertion, var_1d83d08d, fly_over_point, var_59526dd5) {
    assert(isstruct(insertion));
    var_872f085f = (0, var_59526dd5, 0);
    direction = anglestoforward(var_872f085f);
    direction = vectornormalize(direction);
    var_b828343b = isdefined(level.var_427d6976.("insertionDropStartOffset")) ? level.var_427d6976.("insertionDropStartOffset") : 5000;
    var_59141f3d = isdefined(level.var_427d6976.("insertionDropEndOffset")) ? level.var_427d6976.("insertionDropEndOffset") : 15000;
    var_82b0af47 = var_1d83d08d.start + var_b828343b * direction;
    var_ee07e61a = var_1d83d08d.end - var_59141f3d * direction;
    var_5d59bc67 = 17.6 * level.var_c7f8ccf6;
    var_858edbc2 = var_5d59bc67 * (isdefined(level.var_427d6976.("insertionPreDropTime")) ? level.var_427d6976.("insertionPreDropTime") : 10);
    var_abb846da = var_5d59bc67 * (isdefined(level.var_427d6976.("insertionPostDropTime")) ? level.var_427d6976.("insertionPostDropTime") : 20);
    startpoint = var_82b0af47 - var_858edbc2 * direction;
    endpoint = var_ee07e61a + var_abb846da * direction;
    /#
        if (getdvarint(#"scr_insertion_debug", 0) == 1) {
            offset = (0, 0, 300);
            debug_sphere(var_1d83d08d.start + 2 * offset, 45, (0, 1, 1));
            debug_sphere(var_1d83d08d.end + 2 * offset, 45, (1, 1, 0));
            debug_sphere(fly_over_point, 75, (1, 1, 1));
            var_92a2e682 = (0, 0, 500);
            debug_sphere(var_82b0af47, 75, (0, 1, 0));
            debug_sphere(var_ee07e61a, 75, (1, 0, 0));
            debug_line(var_82b0af47, var_ee07e61a, (0, 1, 0));
            debug_line(var_82b0af47 + var_92a2e682, var_82b0af47 - var_92a2e682, (0, 1, 0));
            debug_line(var_ee07e61a + var_92a2e682, var_ee07e61a - var_92a2e682, (1, 0, 0));
            debug_sphere(startpoint, 75, (1, 0.5, 0));
            debug_sphere(endpoint, 75, (1, 0.5, 0));
            debug_line(var_82b0af47, startpoint, (1, 0, 0));
            debug_line(var_ee07e61a, endpoint, (1, 0, 0));
            minimaporigins = territory::function_1f583d2e("<unknown string>", "<unknown string>");
            if (minimaporigins.size == 2) {
                maxheight = float(max(minimaporigins[0].origin[2], minimaporigins[1].origin[2]));
                corner1 = (minimaporigins[0].origin[0], minimaporigins[0].origin[1], maxheight);
                corner2 = (minimaporigins[1].origin[0], minimaporigins[1].origin[1], maxheight);
                corner3 = (minimaporigins[0].origin[0], minimaporigins[1].origin[1], maxheight);
                var_c8e1161c = (minimaporigins[1].origin[0], minimaporigins[0].origin[1], maxheight);
                debug_sphere(corner1, 750, (0, 0, 1));
                debug_sphere(corner2, 750, (0, 0, 1));
                debug_line(corner1, corner3, (0, 0, 1));
                debug_line(corner1, var_c8e1161c, (0, 0, 1));
                debug_line(corner2, corner3, (0, 0, 1));
                debug_line(corner2, var_c8e1161c, (0, 0, 1));
            }
        }
    #/
    var_742f9da2 = distance(startpoint, var_82b0af47);
    var_f69b665b = distance(startpoint, var_ee07e61a);
    insertion thread function_e04b0ea8(insertion, startpoint, var_872f085f, var_742f9da2, var_f69b665b);
    currentvalue = level clientfield::get("infiltration_compass");
    newvalue = 1 << insertion.index | currentvalue;
    level clientfield::set("infiltration_compass", newvalue);
    insertion.start_point = startpoint;
    insertion.end_point = endpoint;
    insertion.var_f253731f = var_872f085f;
    insertion.var_37362e08 = var_742f9da2;
    insertion.var_7743b329 = var_f69b665b;
    if (max(isdefined(getgametypesetting(#"hash_731988b03dc6ee17")) ? getgametypesetting(#"hash_731988b03dc6ee17") : 1, 1) > 1) {
        util::wait_network_frame();
        insertion.infilteament = spawn("script_model", (0, 0, 0));
        insertion.infilteament.targetname = "infil_team_ent";
        insertion.infilteament setinvisibletoall();
        activeplayers = function_a1ef346b();
        foreach (player in activeplayers) {
            if (function_20cba65e(player) == insertion.index) {
                function_9368af66(insertion, player);
            }
        }
        callback::on_spawned(&function_1db63266);
    }
}

// Namespace player_insertion/namespace_3088f362
// Params 1, eflags: 0x2 linked
// Checksum 0x8e126d63, Offset: 0x1ee0
// Size: 0x1b4
function function_20cba65e(player) {
    assert(isplayer(player));
    if (!isdefined(player)) {
        return 0;
    }
    teams = array(#"allies", #"axis");
    for (index = 3; index <= level.teamcount; index++) {
        teams[teams.size] = #"team" + index;
    }
    var_aa3d62e3 = [];
    for (index = 0; index < teams.size; index++) {
        var_aa3d62e3[teams[index]] = index;
    }
    for (index = 0; index < max(isdefined(getgametypesetting(#"hash_731988b03dc6ee17")) ? getgametypesetting(#"hash_731988b03dc6ee17") : 1, 1); index++) {
        if (isdefined(var_aa3d62e3[player.team]) && var_aa3d62e3[player.team] == index % (teams.size - 1)) {
            return index;
        }
    }
    return 0;
}

// Namespace player_insertion/namespace_3088f362
// Params 5, eflags: 0x2 linked
// Checksum 0x49d7d7f4, Offset: 0x20a0
// Size: 0x3dc
function function_1b105d5b(insertion, fadeouttime, blacktime, fadeintime, rumble) {
    assert(isstruct(insertion));
    if (isdefined(lui::get_luimenu("FullScreenBlack"))) {
        lui_menu = lui::get_luimenu("FullScreenBlack");
    } else {
        insertion flag::set(#"insertion_presentation_completed");
        return;
    }
    function_a5fd9aa8(insertion);
    foreach (player in insertion.players) {
        if (isdefined(player)) {
            if (![[ lui_menu ]]->function_7bfd10e6(player)) {
                [[ lui_menu ]]->open(player);
            }
            [[ lui_menu ]]->set_startalpha(player, 0);
            [[ lui_menu ]]->set_endalpha(player, 1);
            [[ lui_menu ]]->set_fadeovertime(player, int(fadeouttime * 1000));
        }
    }
    wait(fadeouttime + blacktime);
    insertion flag::wait_till_timeout(2, #"insertion_teleport_completed");
    function_a5fd9aa8(insertion);
    foreach (player in insertion.players) {
        if (rumble) {
            player function_bc82f900(#"infiltration_rumble");
        }
        if (![[ lui_menu ]]->function_7bfd10e6(player)) {
            [[ lui_menu ]]->open(player);
        }
        [[ lui_menu ]]->set_startalpha(player, 1);
        [[ lui_menu ]]->set_endalpha(player, 0);
        [[ lui_menu ]]->set_fadeovertime(player, int(fadeintime * 1000));
    }
    wait(fadeintime);
    function_a5fd9aa8(insertion);
    foreach (player in insertion.players) {
        [[ lui_menu ]]->close(player);
    }
    insertion flag::set(#"insertion_presentation_completed");
}

// Namespace player_insertion/namespace_3088f362
// Params 0, eflags: 0x2 linked
// Checksum 0xd612261c, Offset: 0x2488
// Size: 0x49c
function function_9ed051a4() {
    if (is_true(getgametypesetting(#"hash_2b05db5822050708"))) {
        return (level.mapcenter[0], level.mapcenter[1], function_70dd0500());
    }
    assert(isdefined(level.mapbounds.var_8faef7b7));
    assert(isdefined(level.mapbounds.var_68fd6e0a));
    map_center = math::find_box_center(level.mapbounds.var_8faef7b7, level.mapbounds.var_68fd6e0a);
    map_center += (0, 0, function_70dd0500());
    if (is_true(getgametypesetting(#"wzintersectdeathcircle"))) {
        circleindex = isdefined(getgametypesetting(#"wzintersectdeathcircleindex")) ? getgametypesetting(#"wzintersectdeathcircleindex") : 0;
        if (isdefined(level.deathcircles) && level.deathcircles.size > 0 && circleindex < level.deathcircles.size) {
            center = level.deathcircles[circleindex].origin;
            return (center[0], center[1], map_center[2]);
        }
    }
    if (isdefined(level.var_cd008cab)) {
        var_7ed8b321 = [[ level.var_cd008cab ]]();
        if (isdefined(var_7ed8b321)) {
            return (var_7ed8b321[0], var_7ed8b321[1], map_center[2]);
        }
    }
    x = abs(level.mapbounds.var_68fd6e0a[0] - level.mapbounds.var_8faef7b7[0]) * 0.5;
    y = abs(level.mapbounds.var_68fd6e0a[1] - level.mapbounds.var_8faef7b7[1]) * 0.5;
    ratio_max = math::clamp(level.var_427d6976.("insertionFlyoverBoundsOuterRatio"), 0, 1);
    var_40f8484d = math::clamp(level.var_427d6976.("insertionFlyoverBoundsInnerRatio"), 0, ratio_max);
    var_5017ad06 = (x * (ratio_max - var_40f8484d), y * (ratio_max - var_40f8484d), 0);
    random_point = (randomfloatrange(var_5017ad06[0] * -1, var_5017ad06[0]), randomfloatrange(var_5017ad06[1] * -1, var_5017ad06[1]), 0);
    if (var_40f8484d > 0) {
        random_point = (random_point[0] + math::sign(random_point[0]) * x * var_40f8484d, random_point[1] + math::sign(random_point[1]) * y * var_40f8484d, 0);
    }
    fly_over_point = map_center + random_point;
    fly_over_point = (fly_over_point[0], fly_over_point[1], map_center[2]);
    return fly_over_point;
}

// Namespace player_insertion/namespace_3088f362
// Params 0, eflags: 0x2 linked
// Checksum 0x6547f6f2, Offset: 0x2930
// Size: 0x1d2
function function_da0c552e() {
    if (is_true(getgametypesetting(#"wzintersectdeathcircle"))) {
        circleindex = isdefined(getgametypesetting(#"wzintersectdeathcircleindex")) ? getgametypesetting(#"wzintersectdeathcircleindex") : 0;
        if (isdefined(level.deathcircles) && level.deathcircles.size > 0 && circleindex < level.deathcircles.size) {
            center = level.deathcircles[circleindex].origin;
            if (circleindex > 0) {
                var_6bf489f1 = level.deathcircles[0].origin;
                tocenter = vectornormalize(center - var_6bf489f1);
                var_6e3e0ad7 = vectortoangles(tocenter);
                if (math::cointoss()) {
                    return var_6e3e0ad7[1];
                }
                return (var_6e3e0ad7[1] - 180);
            }
        }
    }
    if (isdefined(level.var_fd30a287)) {
        var_684dfce3 = [[ level.var_fd30a287 ]]();
        if (isdefined(var_684dfce3)) {
            return var_684dfce3;
        }
    }
    return randomint(360);
}

// Namespace player_insertion/namespace_3088f362
// Params 3, eflags: 0x2 linked
// Checksum 0x21533913, Offset: 0x2b10
// Size: 0x74
function function_85635daf(startpoint, total_distance, delta_t) {
    while (true) {
        current_distance = distance(startpoint, self.origin);
        current_t = current_distance / total_distance;
        if (current_t > delta_t) {
            return;
        }
        waitframe(1);
    }
}

// Namespace player_insertion/namespace_3088f362
// Params 1, eflags: 0x2 linked
// Checksum 0xc648f6ad, Offset: 0x2b90
// Size: 0x98
function function_2b41b403(*velocity) {
    speed = 17.6 * (isdefined(level.var_427d6976.("insertionPlayerFreefallStartSpeed")) ? level.var_427d6976.("insertionPlayerFreefallStartSpeed") : 0);
    var_4626a28f = (10, self.angles[1], 0);
    return anglestoforward(var_4626a28f) * speed;
}

// Namespace player_insertion/namespace_3088f362
// Params 0, eflags: 0x2 linked
// Checksum 0x428f1ab0, Offset: 0x2c30
// Size: 0x5c
function function_51350a25() {
    if (level.var_f2814a96 !== 0 && level.var_f2814a96 !== 2) {
        return false;
    }
    if (self clientfield::get_to_player("inside_infiltration_vehicle") == 1) {
        return true;
    }
    return false;
}

/#

    // Namespace player_insertion/namespace_3088f362
    // Params 5, eflags: 0x0
    // Checksum 0xa522c6a7, Offset: 0x2c98
    // Size: 0xf4
    function debug_sphere(origin, radius, color, alpha, time) {
        if (!isdefined(alpha)) {
            alpha = 1;
        }
        if (!isdefined(time)) {
            time = 5000;
        }
        if (getdvarint(#"scr_insertion_debug", 0) == 1) {
            if (!isdefined(color)) {
                color = (1, 1, 1);
            }
            sides = int(10 * (1 + int(radius / 100)));
            sphere(origin, radius, color, alpha, 1, sides, time);
        }
    }

    // Namespace player_insertion/namespace_3088f362
    // Params 5, eflags: 0x0
    // Checksum 0xa7bbc667, Offset: 0x2d98
    // Size: 0xc4
    function debug_line(from, to, color, time, depthtest) {
        if (!isdefined(time)) {
            time = 5000;
        }
        if (!isdefined(depthtest)) {
            depthtest = 1;
        }
        if (getdvarint(#"scr_insertion_debug", 0) == 1) {
            if (distancesquared(from, to) < 0.01) {
                return;
            }
            line(from, to, color, 1, depthtest, time);
        }
    }

#/
