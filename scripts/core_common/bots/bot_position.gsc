// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\bots\bot.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace bot_position;

/#

    // Namespace bot_position/bot_position
    // Params 0, eflags: 0x2 linked
    // Checksum 0x61475db6, Offset: 0xf8
    // Size: 0x2c
    function preinit() {
        level.var_51a0bf0 = [];
        level thread function_7e6af638();
    }

#/

// Namespace bot_position/bot_position
// Params 0, eflags: 0x2 linked
// Checksum 0x12ddf2c3, Offset: 0x130
// Size: 0x1c
function startup() {
    self thread handle_path_failed();
}

// Namespace bot_position/bot_position
// Params 0, eflags: 0x2 linked
// Checksum 0xf4484cfe, Offset: 0x158
// Size: 0x12
function shutdown() {
    self.bot.var_aa94cd1b = undefined;
}

// Namespace bot_position/bot_position
// Params 0, eflags: 0x6 linked
// Checksum 0x137ca58f, Offset: 0x178
// Size: 0x164
function private handle_path_failed() {
    self endon(#"death", #"hash_3525e39d3694d0a9");
    level endon(#"game_ended");
    while (true) {
        params = self waittill(#"bot_path_failed");
        switch (params.reason) {
        case 1:
        case 2:
        case 3:
            self function_5c6265b3();
            break;
        case 4:
        case 5:
        case 6:
            self function_ea3bf04e();
            break;
        case 7:
        case 8:
        default:
            self function_f894a675();
            break;
        }
        waitframe(1);
    }
}

// Namespace bot_position/bot_position
// Params 0, eflags: 0x6 linked
// Checksum 0xb06e157b, Offset: 0x2e8
// Size: 0xb4
function private function_5c6265b3() {
    clamped = self function_96f55844();
    /#
        if (clamped) {
            self function_b39b0b55(self.origin, (1, 1, 0), #"hash_759d0bab7057dad5");
            return;
        }
        self function_b39b0b55(self.origin, (1, 0, 0), #"hash_4470e824a8beb9f");
        self function_8a8380d0();
    #/
}

// Namespace bot_position/bot_position
// Params 0, eflags: 0x6 linked
// Checksum 0x33050a1a, Offset: 0x3a8
// Size: 0xfc
function private function_ea3bf04e() {
    info = self function_4794d6a3();
    if (isdefined(info.overridegoalpos)) {
        self function_d4c687c9();
        /#
            self function_b39b0b55(self.origin, (1, 0, 0), #"hash_66a35a43ea2dfb1a");
            self function_8a8380d0(info.overridegoalpos);
        #/
        return;
    }
    /#
        self function_b39b0b55(self.origin, (1, 0, 0), #"hash_3d76685a084ca723");
        self function_8a8380d0(info.goalpos);
    #/
}

// Namespace bot_position/bot_position
// Params 0, eflags: 0x6 linked
// Checksum 0xb454a89, Offset: 0x4b0
// Size: 0xfc
function private function_f894a675() {
    info = self function_4794d6a3();
    if (isdefined(info.overridegoalpos)) {
        self function_d4c687c9();
        /#
            self function_b39b0b55(self.origin, (1, 0, 0), #"hash_65622b578ee28d25");
            self function_8a8380d0(info.overridegoalpos);
        #/
        return;
    }
    /#
        self function_b39b0b55(self.origin, (1, 0, 0), #"hash_5ff132f70af932cc");
        self function_8a8380d0(info.overridegoalpos);
    #/
}

// Namespace bot_position/bot_position
// Params 0, eflags: 0x2 linked
// Checksum 0xc49d69bc, Offset: 0x5b8
// Size: 0x5ae
function think() {
    profileNamedStart(#"");
    if (self botundermanualcontrol()) {
        profileNamedStop();
        return;
    }
    info = self function_4794d6a3();
    if (info.goalforced) {
        profileNamedStop();
        return;
    }
    if (is_true(self.bot.var_6bea1d82) || self.bot.flashed || self isinexecutionvictim() || self isinexecutionattack() || self isplayinganimscripted() || self arecontrolsfrozen() || self function_5972c3cf()) {
        if (!is_true(info.var_9e404264)) {
            self set_position(self.origin, #"hold");
        }
        profileNamedStop();
        return;
    }
    if (isdefined(info.overridegoalpos) && self function_e6f05ab6(info.overridegoalpos)) {
        self.bot.var_aa94cd1b = undefined;
        self function_d4c687c9();
        info = self function_4794d6a3();
    }
    var_4edd60e2 = 0;
    if (self bot::function_e5d7f472()) {
        trigger = self bot::function_85bfe6d3();
        var_4edd60e2 = self function_794e2efa(trigger, info.overridegoalpos) || self function_f14a768c(trigger, #"revive");
    } else if (isdefined(self.bot.var_36df6398)) {
        trigger = self.bot.var_36df6398.trigger;
        var_4edd60e2 = self function_794e2efa(trigger, info.overridegoalpos) || self function_f14a768c(trigger, #"hash_2a9ea4b3ae3653b1");
    } else if (isdefined(self.bot.var_538135ed)) {
        trigger = self.bot.var_538135ed.gameobject.trigger;
        var_4edd60e2 = self function_794e2efa(trigger, info.overridegoalpos) || self function_f14a768c(trigger, #"hash_1dff7a8b83fc563c");
    }
    if (var_4edd60e2) {
        profileNamedStop();
        return;
    }
    if (self.bot.var_e8c84f98) {
        if (!self function_e8a55078(info.overridegoalpos, info) || is_true(info.var_9e404264)) {
            if (!self function_7832483e(info)) {
                self function_d45bace(info);
            }
        } else {
            goalpoint = getclosesttacpoint(info.overridegoalpos);
            if (isdefined(goalpoint)) {
                if (!self function_de0e95b7(goalpoint)) {
                    self function_7832483e(info);
                }
            }
        }
    } else if (!self function_e8a55078(info.overridegoalpos, info)) {
        self function_d45bace(info);
    } else if (is_true(info.var_9e404264)) {
        if (isdefined(self.bot.var_aa94cd1b)) {
            if (!isdefined(self.bot.var_aa94cd1b) || self.bot.var_aa94cd1b <= gettime()) {
                self function_d45bace(info);
            }
        } else {
            self.bot.var_aa94cd1b = gettime() + int(randomfloatrange(3, 7) * 1000);
        }
    }
    info = self function_4794d6a3();
    if (!isdefined(info.overridegoalpos)) {
        self set_position(self.origin, #"fallback");
    }
    profileNamedStop();
}

// Namespace bot_position/bot_position
// Params 2, eflags: 0x6 linked
// Checksum 0x96492723, Offset: 0xb70
// Size: 0x134
function private function_e8a55078(point, info) {
    if (!isdefined(point)) {
        return 0;
    }
    if (isdefined(info.regionid)) {
        tpoint = getclosesttacpoint(point);
        return (isdefined(tpoint) && info.regionid == tpoint.region);
    }
    if (isdefined(info.goalvolume)) {
        return self function_794e2efa(info.goalvolume, point);
    }
    goalorigin = info.goalpos;
    distsq = distance2dsquared(point, goalorigin);
    return distsq < info.goalradius * info.goalradius && point[2] < goalorigin[2] + info.goalheight && point[2] > goalorigin[2] - info.goalheight;
}

// Namespace bot_position/bot_position
// Params 2, eflags: 0x6 linked
// Checksum 0xac8bbb16, Offset: 0xcb0
// Size: 0xe2
function private function_794e2efa(trigger, point) {
    if (!isdefined(point)) {
        return false;
    }
    midpoint = point + (0, 0, 36);
    if (!isdefined(point) || !trigger istouching(midpoint, (0, 0, 36))) {
        return false;
    }
    if (trigger.classname != #"trigger_radius_use") {
        return true;
    }
    radius = trigger getmaxs()[0] + -32;
    return distance2dsquared(trigger.origin, point) < radius * radius;
}

// Namespace bot_position/bot_position
// Params 1, eflags: 0x6 linked
// Checksum 0x4f3460be, Offset: 0xda0
// Size: 0xf4
function private function_de0e95b7(tpoint) {
    var_63e5d5aa = self.enemy getcentroid();
    if (issentient(self.enemy)) {
        var_63e5d5aa = self.enemy geteye();
    }
    if (!function_96c81b85(tpoint, var_63e5d5aa)) {
        /#
            if (self function_b39b0b55(tpoint.origin, (1, 0, 0), #"hash_53dde4c9c6077ed0")) {
                recordline(tpoint.origin + (0, 0, 70), var_63e5d5aa, (1, 0, 0), "<unknown string>", self);
            }
        #/
        return false;
    }
    return true;
}

// Namespace bot_position/bot_position
// Params 0, eflags: 0x6 linked
// Checksum 0x68e72e56, Offset: 0xea0
// Size: 0xc0
function private function_96f55844() {
    navmeshpoint = function_13796beb(self.origin);
    if (!isdefined(navmeshpoint)) {
        return false;
    }
    var_5245725e = (navmeshpoint[0], navmeshpoint[1], self.origin[2]);
    self setorigin(var_5245725e);
    velocity = self getvelocity();
    self setvelocity((0, 0, velocity[2]));
    return true;
}

// Namespace bot_position/bot_position
// Params 1, eflags: 0x2 linked
// Checksum 0x67126a6b, Offset: 0xf68
// Size: 0x3a
function function_13796beb(point) {
    return getclosestpointonnavmesh(point, 64, 16);
}

// Namespace bot_position/bot_position
// Params 2, eflags: 0x6 linked
// Checksum 0x38510af4, Offset: 0xfb0
// Size: 0x1b8
function private function_f14a768c(trigger, var_e125ba43) {
    profileNamedStart(#"");
    dir = trigger.origin - self.origin;
    dist = distance2d(trigger.origin, self.origin);
    radius = self getpathfindingradius();
    tracepoint = checknavmeshdirection(self.origin, dir, dist, radius);
    if (isdefined(tracepoint) && self function_794e2efa(trigger, tracepoint)) {
        profileNamedStop();
        return self set_position(tracepoint, var_e125ba43);
    }
    var_1ccbeeaa = self function_13796beb(trigger.origin);
    if (isdefined(var_1ccbeeaa) && self function_794e2efa(trigger, var_1ccbeeaa)) {
        profileNamedStop();
        return self set_position(var_1ccbeeaa, var_e125ba43);
    }
    /#
        self function_b39b0b55(trigger.origin, (1, 0, 0), var_e125ba43 + function_9e72a96(#"hash_7d1aa4caccc3dd42"));
    #/
    profileNamedStop();
    return 0;
}

// Namespace bot_position/bot_position
// Params 1, eflags: 0x6 linked
// Checksum 0x1f75c4ca, Offset: 0x1178
// Size: 0xa4
function private function_7832483e(info) {
    profileNamedStart(#"");
    points = self function_7b48fb52(info);
    if (points.size <= 0) {
        profileNamedStop();
        return 0;
    }
    point = points[randomint(points.size)];
    profileNamedStop();
    return self set_position(point.origin, #"hash_3d15ff2161690e3c");
}

// Namespace bot_position/bot_position
// Params 1, eflags: 0x6 linked
// Checksum 0x44510c95, Offset: 0x1228
// Size: 0xa4
function private function_d45bace(info) {
    profileNamedStart(#"");
    points = self function_a59f8a5d(info);
    if (points.size <= 0) {
        profileNamedStop();
        return 0;
    }
    point = points[randomint(points.size)];
    profileNamedStop();
    return self set_position(point.origin, #"goal");
}

// Namespace bot_position/bot_position
// Params 2, eflags: 0x6 linked
// Checksum 0xa0ff72ba, Offset: 0x12d8
// Size: 0x168
function private set_position(point, var_e125ba43) {
    navmeshpoint = function_13796beb(point);
    if (!isdefined(navmeshpoint)) {
        /#
            self function_b39b0b55(point, (1, 0, 0), var_e125ba43 + function_9e72a96(#"hash_7d1aa4caccc3dd42"));
            if (self bot::should_record(#"hash_6356356a050dc83d")) {
                recordline(self.origin, point, (1, 0, 0), "<unknown string>", self);
            }
        #/
        return false;
    }
    self function_a57c34b7(navmeshpoint);
    self.bot.var_aa94cd1b = undefined;
    /#
        self function_b39b0b55(navmeshpoint, (0, 1, 0), var_e125ba43);
        if (self bot::should_record(#"hash_6356356a050dc83d")) {
            recordline(self.origin, navmeshpoint, (0, 1, 0), "<unknown string>", self);
        }
    #/
    return true;
}

// Namespace bot_position/bot_position
// Params 1, eflags: 0x6 linked
// Checksum 0x7f9f4e95, Offset: 0x1448
// Size: 0x170
function private function_a59f8a5d(info) {
    points = undefined;
    if (isdefined(info.regionid)) {
        points = tacticalquery(#"hash_5c2d9f19faff9f7", info.regionid, self);
    } else if (isdefined(info.goalvolume)) {
        points = tacticalquery(#"hash_4a8bfda269e51b5a", info.goalvolume, self);
    } else {
        center = ai::t_cylinder(info.goalpos, info.goalradius, info.goalheight);
        points = tacticalquery(#"hash_4a8bfda269e51b5a", center, self);
    }
    /#
        if (points.size > 0) {
            self function_70eeee8d(points, (0, 1, 0));
        } else {
            self function_b39b0b55(info.goalpos, (1, 0, 0), #"hash_519149e897eccbb");
        }
    #/
    return points;
}

// Namespace bot_position/bot_position
// Params 1, eflags: 0x4
// Checksum 0x7da3d76e, Offset: 0x15c0
// Size: 0x170
function private function_7d01d83b(info) {
    points = undefined;
    if (isdefined(info.regionid)) {
        points = tacticalquery(#"hash_db073a01c2b4177", info.regionid, self);
    } else if (isdefined(info.goalvolume)) {
        points = tacticalquery(#"hash_17e23e3f768245da", info.goalvolume, self);
    } else {
        center = ai::t_cylinder(info.goalpos, info.goalradius, info.goalheight);
        points = tacticalquery(#"hash_17e23e3f768245da", center, self);
    }
    /#
        if (points.size > 0) {
            self function_70eeee8d(points, (0, 1, 0));
        } else {
            self function_b39b0b55(info.goalpos, (1, 0, 0), #"hash_10472c83480d9e82");
        }
    #/
    return points;
}

// Namespace bot_position/bot_position
// Params 1, eflags: 0x6 linked
// Checksum 0x74af8a88, Offset: 0x1738
// Size: 0x1b8
function private function_7b48fb52(info) {
    points = undefined;
    enemytarget = self.enemy;
    if (!issentient(enemytarget)) {
        enemytarget = enemytarget getcentroid();
    }
    if (isdefined(info.regionid)) {
        points = tacticalquery(#"hash_74a4ccc745696184", info.regionid, self, enemytarget);
    } else if (isdefined(info.goalvolume)) {
        points = tacticalquery(#"hash_187dca4a1ed267ab", info.goalvolume, self, enemytarget);
    } else {
        center = ai::t_cylinder(info.goalpos, info.goalradius, info.goalheight);
        points = tacticalquery(#"hash_187dca4a1ed267ab", center, self, enemytarget);
    }
    /#
        if (points.size > 0) {
            self function_70eeee8d(points, (0, 1, 0));
        } else {
            self function_b39b0b55(info.goalpos, (1, 0, 0), #"hash_531b7e55313019f3");
        }
    #/
    return points;
}

/#

    // Namespace bot_position/bot_position
    // Params 3, eflags: 0x4
    // Checksum 0x549ca214, Offset: 0x18f8
    // Size: 0xe2
    function private function_b39b0b55(origin, color, label) {
        if (!self bot::should_record(#"hash_6356356a050dc83d")) {
            return 0;
        }
        top = origin + (0, 0, 128);
        recordline(origin, top, color, "<unknown string>", self);
        if (isdefined(label)) {
            record3dtext(function_9e72a96(label), top, (1, 1, 1), "<unknown string>", self, 0.5);
        }
        return 1;
    }

    // Namespace bot_position/bot_position
    // Params 2, eflags: 0x4
    // Checksum 0xf52dc19a, Offset: 0x19e8
    // Size: 0xd0
    function private function_70eeee8d(points, color) {
        if (!self bot::should_record(#"hash_6356356a050dc83d")) {
            return;
        }
        foreach (point in points) {
            recordstar(point.origin, color, "<unknown string>", self);
        }
    }

    // Namespace bot_position/bot_position
    // Params 0, eflags: 0x4
    // Checksum 0x17392763, Offset: 0x1ac0
    // Size: 0x26a
    function private function_7e6af638() {
        level endon(#"game_ended");
        failures = level.var_51a0bf0;
        while (true) {
            if (!getdvarint(#"hash_36fb3796a7eca97a", 0)) {
                waitframe(1);
                continue;
            }
            foreach (failure in failures) {
                if (isdefined(failure.end)) {
                    print3d(failure.end, function_9e72a96(#"failed"), (1, 0, 1), 1, 2.5, 1, 1);
                    angles = vectortoangles(failure.end - failure.start);
                    circle(failure.end, 15, (1, 0, 1), 0, 1);
                    line(failure.start, failure.end, (1, 0, 1));
                    continue;
                }
                print3d(failure.start, function_9e72a96(#"failed"), (1, 0, 1), 1, 2.5, 1, 1);
                box(failure.start, (-15, -15, 0), (15, 15, 72), 0, (1, 0, 1));
            }
            waitframe(1);
        }
    }

    // Namespace bot_position/bot_position
    // Params 1, eflags: 0x4
    // Checksum 0x44b37c18, Offset: 0x1d38
    // Size: 0x8c
    function private function_8a8380d0(end) {
        failures = level.var_51a0bf0;
        failures[failures.size] = {#start:self.origin, #end:end};
        if (failures.size > 100) {
            arrayremoveindex(failures, 0);
        }
    }

#/
