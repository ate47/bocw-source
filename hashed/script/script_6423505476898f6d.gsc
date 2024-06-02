// Atian COD Tools GSC CW decompiler test
#using script_7cc5fb39b97494c4;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\doors_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_64f6ea7a;

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 0, eflags: 0x0
// Checksum 0xe03a1442, Offset: 0x1a8
// Size: 0x6
function function_e9823650() {
    return false;
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 0, eflags: 0x0
// Checksum 0x21f298c5, Offset: 0x1b8
// Size: 0x8
function function_1bf7f7e5() {
    return 12;
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 0, eflags: 0x0
// Checksum 0x5944b774, Offset: 0x1c8
// Size: 0xa
function function_cecca69c() {
    return true;
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 0, eflags: 0x0
// Checksum 0xf93929b8, Offset: 0x1e0
// Size: 0x7e
function init_max_yaws() {
    self.var_15695d13 = undefined;
    self.var_ca91d615 = undefined;
    /#
        self.traces = undefined;
    #/
    self get_max_yaw(1);
    if (self.m_s_bundle.door_open_method == "swing_away_from_player") {
        self get_max_yaw(0);
        return;
    }
    i = 0;
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 1, eflags: 0x4
// Checksum 0x67530a6d, Offset: 0x268
// Size: 0x1f6
function private get_max_yaw(var_b6cc4c20) {
    var_e4214597 = 70;
    var_1e45bf81 = 30;
    var_2a162980 = 5;
    var_533884d6 = math::sign(self.m_s_bundle.door_swing_angle);
    if (var_b6cc4c20) {
        if (isdefined(self.var_a2f96f78.var_bed36372)) {
            assert(self.var_a2f96f78.var_bed36372 > 0, "<unknown string>" + self.m_e_door.origin + "<unknown string>");
            self.var_15695d13 = self.var_a2f96f78.var_bed36372 * var_533884d6;
            return;
        }
    } else if (isdefined(self.var_a2f96f78.var_f3a85f58)) {
        assert(self.var_a2f96f78.var_f3a85f58 > 0, "<unknown string>" + self.m_e_door.origin + "<unknown string>");
        self.var_ca91d615 = self.var_a2f96f78.var_f3a85f58 * var_533884d6 * -1;
        return;
    }
    var_f58bf66c = get_max_yaw_internal(var_e4214597, var_1e45bf81, var_b6cc4c20);
    var_f58bf66c += var_2a162980;
    var_c3277087 = get_max_yaw_internal(var_f58bf66c, var_2a162980, var_b6cc4c20);
    if (var_b6cc4c20) {
        self.var_15695d13 = var_c3277087 * var_533884d6;
        return;
    }
    self.var_ca91d615 = var_c3277087 * var_533884d6 * -1;
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 3, eflags: 0x4
// Checksum 0xdb38c79d, Offset: 0x468
// Size: 0x198
function private get_max_yaw_internal(test_yaw, increment, var_b6cc4c20) {
    self.m_e_door endon(#"entitydeleted");
    failed_once = 0;
    finished = 0;
    cycles = 0;
    contents = 65536 | 1 | 268435456;
    var_338875fc = 179;
    if (isdefined(self.m_s_bundle.door_swing_angle)) {
        var_338875fc = abs(self.m_s_bundle.door_swing_angle);
    }
    while (!finished) {
        if (test_yaw > var_338875fc) {
            return var_338875fc;
        }
        safe_yaw = self yaw_collision_check(test_yaw, var_b6cc4c20, contents);
        if (safe_yaw) {
            if (failed_once) {
                finish = 1;
            }
            test_yaw += increment;
        } else {
            if (!failed_once) {
                failed_once = 1;
            }
            test_yaw -= increment;
            finished = 1;
        }
        cycles++;
        if (cycles == 3) {
            cycles = 0;
            wait(0.05);
        }
    }
    assert(test_yaw >= 0);
    return test_yaw;
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 3, eflags: 0x4
// Checksum 0x29688e17, Offset: 0x608
// Size: 0x6be
function private yaw_collision_check(yaw, var_b6cc4c20, *var_43119537) {
    var_3b412bef = (0, 0, 10);
    basestart = self.var_85f2454d.origin + var_3b412bef;
    if (var_43119537) {
        trace_angles = [[ self ]]->function_d36318ad(0, 1, 0, self.m_s_bundle.var_16a4e229, self.m_s_bundle.var_16e3e29b, var_b6cc4c20, 1);
    } else {
        trace_angles = [[ self ]]->function_d36318ad(0, 1, 1, self.m_s_bundle.var_16a4e229, self.m_s_bundle.var_16e3e29b, var_b6cc4c20, 1);
    }
    var_39764a55 = max(self.var_e9da41b9 * 0.2, 16);
    start = basestart + self doors::function_eea7cdb4(trace_angles) * var_39764a55;
    end = basestart + self doors::function_eea7cdb4(1) * self.var_e9da41b9;
    mins = (-6, -6, 0);
    maxs = (6, 6, 40);
    var_84a65cf6 = physicstrace(start, end, mins, maxs, self.m_e_door, 1 | 8);
    var_fe34498d = distance2d(start, var_84a65cf6[#"position"]);
    /#
        if (getdvarint(#"hash_5171254138328d84") == 2) {
            var_816ef68c = 200;
            if (!isdefined(self.traces)) {
                self.traces = 1;
            } else {
                self.traces++;
            }
            color = (1, 1, 1);
            if (var_fe34498d > 50) {
                color = (0, 1, 0);
            } else if (var_fe34498d < 3) {
                color = (1, 0, 0);
            } else if (var_fe34498d < 50) {
                color = (1, 1, 0);
            }
            var_5bdd16d1 = basestart + self doors::function_eea7cdb4(trace_angles) * self.var_e9da41b9;
            line(basestart, var_5bdd16d1, (1, 1, 1), 1, 0, var_816ef68c);
            print3d(var_5bdd16d1, var_b6cc4c20 + "<unknown string>", color, 1, 0.05, var_816ef68c);
            line(start, var_84a65cf6[#"position"], color, 0.5, 0, var_816ef68c);
            if (var_84a65cf6[#"fraction"] < 1) {
                line(var_84a65cf6[#"position"], end, color * 0.3, 0.5, 0, var_816ef68c);
            }
            print3d(start, "<unknown string>" + self.traces, color, 1, 0.05, var_816ef68c);
        }
    #/
    if (var_fe34498d > 3) {
        start = basestart + self doors::function_eea7cdb4(trace_angles) * self.var_e9da41b9 * 0.9;
        var_5124c314 = physicstrace(start, end, mins, maxs, self.m_e_door, 1 | 8);
        var_17a48baf = distance2d(start, var_5124c314[#"position"]);
        /#
            if (getdvarint(#"hash_5171254138328d84") == 2) {
                self.traces++;
                color = (1, 1, 1);
                if (var_17a48baf > 50) {
                    color = (0, 1, 0);
                } else if (var_17a48baf < 5) {
                    color = (1, 0, 0);
                } else if (var_17a48baf < 50) {
                    color = (1, 1, 0);
                }
                line(start, var_5124c314[#"position"], color, 0.5, 0, var_816ef68c);
                if (var_5124c314[#"fraction"] < 1) {
                    line(var_5124c314[#"position"], end, color * 0.3, 0.5, 0, var_816ef68c);
                }
                print3d(start, "<unknown string>" + self.traces, color, 1, 0.05, var_816ef68c);
            }
        #/
        if (var_17a48baf > 5) {
            return true;
        }
    }
    /#
        if (getdvarint(#"hash_5171254138328d84", 0)) {
            println("<unknown string>" + self.m_e_door getentitynumber() + "<unknown string>" + var_43119537 + "<unknown string>" + self.m_e_door.origin);
        }
    #/
    return false;
}

/#

    // Namespace namespace_64f6ea7a/namespace_64f6ea7a
    // Params 1, eflags: 0x0
    // Checksum 0xb4c1b5b4, Offset: 0xcd0
    // Size: 0x194
    function draw_max_yaw(var_b6cc4c20) {
        trace_angles = undefined;
        color = undefined;
        if (var_b6cc4c20) {
            trace_angles = [[ self ]]->function_d36318ad(0, 1, 0, self.m_s_bundle.var_16a4e229, self.m_s_bundle.var_16e3e29b);
            color = (0, 1, 1);
        } else {
            trace_angles = [[ self ]]->function_d36318ad(0, 1, 1, self.m_s_bundle.var_16a4e229, self.m_s_bundle.var_16e3e29b);
            color = (0, 0.5, 0.5);
        }
        start = self.var_85f2454d.origin;
        line_end = start + self doors::function_eea7cdb4(trace_angles) * self.var_e9da41b9;
        line(start, line_end, color, 1, 0, 1);
        angle = [[ self ]]->function_85fe0c35(!var_b6cc4c20);
        print3d(line_end, angle + "<unknown string>", color, 1, 0.05);
    }

#/

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 1, eflags: 0x0
// Checksum 0xf887a141, Offset: 0xe70
// Size: 0x188
function monitor_door_push(delay) {
    if (!self function_9d109db6()) {
        return;
    }
    self endon(#"hash_6162e3d94ad294c7");
    self.m_e_door notify(#"door_closing");
    self.m_e_door endon(#"entitydeleted");
    if (!isdefined(delay)) {
        delay = 0.5;
    }
    if (delay > 0) {
        wait(delay);
    }
    self thread door_ease_in_open_input();
    while (true) {
        pushent = self interact_door_ispushentclose();
        if (isdefined(pushent)) {
            self push_door(pushent, 0);
        } else if (is_true(self.isplayingpushsound)) {
            self.isplayingpushsound = 0;
            self notify(#"hash_751895912b6e081d");
        }
        if (self flag::get("open") == 0) {
            [[ self ]]->function_f657b618(1);
            self notify(#"hash_6162e3d94ad294c7");
        }
        waitframe(1);
    }
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 0, eflags: 0x4
// Checksum 0xd25c2749, Offset: 0x1000
// Size: 0xae
function private door_ease_in_open_input() {
    self.m_e_door endon(#"entitydeleted");
    maxtime = 1;
    time = maxtime;
    self.masterdoorratescale = 0;
    while (true) {
        if (!isdefined(self) || time <= 0) {
            break;
        }
        self.masterdoorratescale = 1 - time / maxtime;
        wait(0.05);
        time -= 0.05;
    }
    self.masterdoorratescale = 1;
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 0, eflags: 0x4
// Checksum 0xe5a88443, Offset: 0x10b8
// Size: 0x1ee
function private interact_door_ispushentclose() {
    team = self.script_team;
    if (!isdefined(team)) {
        team = #"all";
    }
    pushents = getplayers(team);
    if (isdefined(self.var_d0ca7119)) {
        pushents = arraycombine(pushents, self.var_d0ca7119);
    }
    foreach (pushent in pushents) {
        if (isdefined(pushent) && isalive(pushent)) {
            if (is_true(self.var_81f24576) && isplayer(pushent)) {
                continue;
            }
            z = abs(pushent.origin[2] - self.m_e_door.origin[2]);
            if (z < 40) {
                endpoint = interact_door_get_endpoint();
                d = distancesquared(pushent.origin, endpoint);
                if (d < 2500) {
                    return pushent;
                }
            }
        }
    }
    return undefined;
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 0, eflags: 0x4
// Checksum 0x7b4d23fa, Offset: 0x12b0
// Size: 0x2e
function private interact_door_get_endpoint() {
    return self.m_e_door.origin + self doors::function_eea7cdb4() * self.var_e9da41b9;
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 2, eflags: 0x0
// Checksum 0xb631c003, Offset: 0x12e8
// Size: 0x872
function push_door(e_who, var_5991aa24) {
    if (is_true(self.var_2ec65fe)) {
        return;
    }
    if (self.m_s_bundle.door_open_method != "swing_away_from_player" && self.m_s_bundle.door_open_method != "swing") {
        return;
    }
    var_9ae92efb = 0;
    var_22fc16ba = 0;
    self.m_e_door endon(#"entitydeleted");
    pushent = e_who;
    if (isplayer(pushent)) {
        var_9ae92efb = var_5991aa24;
    } else {
        var_9ae92efb = 1;
    }
    if (var_5991aa24 == 0) {
        self.var_c4c3fa39 = 0;
    }
    if (!var_9ae92efb) {
        var_cd167873 = self function_c152a0ca(pushent);
        if (!isdefined(var_cd167873)) {
            self notify(#"hash_751895912b6e081d");
            return;
        }
    } else {
        var_cd167873 = [[ self ]]->function_61d3d3da(pushent);
    }
    amount = 0;
    if (var_9ae92efb) {
        amount = 9999;
        if (isactor(pushent)) {
            var_22fc16ba = 1;
        }
    } else {
        max_dist = 50;
        min_dist = 0;
        max_push = 50;
        endpoint = interact_door_get_endpoint();
        dist = distance2d(pushent.origin, endpoint);
        percent = mapfloat(min_dist, max_dist, 0, 1, dist);
        amount = max_push * (1 - percent);
        amount *= self.masterdoorratescale;
    }
    if (abs(amount) < 0.001) {
        return;
    }
    var_1042ef32 = undefined;
    var_12d56c89 = spawnstruct();
    if (var_cd167873 > 0) {
        var_1042ef32 = [[ self ]]->function_d36318ad(0, 1, 0, self.m_s_bundle.var_16a4e229, self.m_s_bundle.var_16e3e29b, amount, var_22fc16ba, var_12d56c89);
    } else {
        var_1042ef32 = [[ self ]]->function_d36318ad(0, 1, 1, self.m_s_bundle.var_16a4e229, self.m_s_bundle.var_16e3e29b, amount, var_22fc16ba, var_12d56c89);
    }
    [[ self ]]->set_player_who_opened(pushent);
    if (var_12d56c89.var_e6d945ba) {
        return;
    }
    self.var_2ec65fe = 1;
    if (amount > 0.4) {
        self thread try_push_sound();
        if (!self flag::get("door_second_interact")) {
            self flag::set("door_second_interact");
        }
    } else if (is_true(self.isplayingpushsound)) {
        self.isplayingpushsound = 0;
        self notify(#"hash_751895912b6e081d");
    }
    if (var_5991aa24 || var_9ae92efb) {
        var_cebf7d8f = undefined;
        var_9d74f501 = undefined;
        if (var_12d56c89.var_672b7d83 == "closed") {
            var_9d74f501 = var_12d56c89.var_f626de4;
        } else {
            var_9d74f501 = 1 - var_12d56c89.var_f626de4;
        }
        if (var_5991aa24) {
            if (isdefined(self.m_s_bundle.var_cebf7d8f)) {
                self.m_e_door playsound(self.m_s_bundle.var_cebf7d8f);
            }
            open_time = mapfloat(0, 1, 0, self.m_s_bundle.var_f275e953, var_9d74f501);
        } else {
            open_time = mapfloat(0, 1, 0, self.m_s_bundle.door_open_time, var_9d74f501);
        }
        physicsexplosionsphere(self.m_e_door.origin, 64, 0, 0);
        self.m_e_door setforcenocull();
        self.m_e_door rotateto(var_1042ef32, open_time);
        self.m_e_door waittill(#"rotatedone");
        self.m_e_door removeforcenocull();
        physicsexplosionsphere(self.m_e_door.origin, 64, 0, 0);
        if (isdefined(pushent)) {
            pushent notify(#"hash_7a96e443b93cd211");
        }
    } else {
        self.m_e_door notify(#"rotatedone");
        self.m_e_door.angles = var_1042ef32;
    }
    self.var_2ec65fe = undefined;
    if (var_12d56c89.var_672b7d83 == "closed") {
        [[ self ]]->close();
        self notify(#"hash_6162e3d94ad294c7");
    } else if (var_12d56c89.var_672b7d83 == "open_completely" || var_12d56c89.var_672b7d83 == "open_completely_reverse") {
        self flag::set("door_fully_open");
        [[ self ]]->update_use_message();
        [[ self ]]->function_f657b618(1);
        [[ self ]]->function_f584b243(1);
        if (false) {
            self notify(#"hash_6162e3d94ad294c7");
        }
    } else {
        if (self flag::get("door_fully_open")) {
            self flag::clear("door_fully_open");
            if (false) {
                [[ self ]]->function_f584b243(0);
            }
        }
        if (true) {
            if (door_is_open_at_least(60)) {
                [[ self ]]->function_f584b243(1);
            } else {
                [[ self ]]->function_f584b243(0);
            }
        }
        [[ self ]]->function_f657b618(0);
    }
    var_8a5f85a2 = self door_is_half_open();
    if (var_8a5f85a2 != is_true(self.was_opened_halfway)) {
        if (var_8a5f85a2) {
            var_da3e0b97 = isdefined(pushent) && isplayer(pushent);
            self thread suspicious_door_stealth_check(var_da3e0b97);
        }
    }
    self.was_opened_halfway = var_8a5f85a2;
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 0, eflags: 0x4
// Checksum 0x6f20c30a, Offset: 0x1b68
// Size: 0x126
function private door_is_half_open() {
    var_e17e8d14 = self doors::get_door_angles() - self doors::get_door_angles(1);
    var_e17e8d14 = angleclamp180(var_e17e8d14);
    angle_diff = var_e17e8d14[0] + var_e17e8d14[1] + var_e17e8d14[2];
    if (math::sign(angle_diff) == math::sign(self.var_15695d13)) {
        if (angle_diff > 0) {
            return (angle_diff >= self.var_15695d13 / 2);
        } else {
            return (angle_diff <= self.var_15695d13 / 2);
        }
    } else if (angle_diff > 0) {
        return (angle_diff >= self.var_ca91d615 / 2);
    } else {
        return (angle_diff <= self.var_ca91d615 / 2);
    }
    return false;
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 1, eflags: 0x0
// Checksum 0x43f7190d, Offset: 0x1c98
// Size: 0xea
function door_is_open_at_least(checkangle) {
    assert(checkangle >= 0, "<unknown string>" + checkangle + "<unknown string>");
    var_e17e8d14 = self doors::get_door_angles() - self doors::get_door_angles(1);
    var_e17e8d14 = angleclamp180(var_e17e8d14);
    angle_diff = var_e17e8d14[0] + var_e17e8d14[1] + var_e17e8d14[2];
    if (angle_diff > 0) {
        return (angle_diff >= checkangle);
    } else {
        return (angle_diff <= -1 * checkangle);
    }
    return false;
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 1, eflags: 0x0
// Checksum 0x5cf3259f, Offset: 0x1d90
// Size: 0xd4
function suspicious_door_stealth_check(var_ffd1df9a) {
    if (!isdefined(level.stealth)) {
        return;
    }
    if (!getdvarint(#"hash_4e997f8f5fb7bc59", 0) || !isdefined(level.stealth)) {
        return;
    }
    if (var_ffd1df9a) {
        level.stealth.suspicious_door.doors[level.stealth.suspicious_door.doors.size] = self;
        return;
    }
    arrayremovevalue(level.stealth.suspicious_door.doors, self);
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 0, eflags: 0x4
// Checksum 0x3b9af740, Offset: 0x1e70
// Size: 0x44
function private try_push_sound() {
    if (!isdefined(self.isplayingpushsound)) {
        self.isplayingpushsound = 0;
    }
    if (!self.isplayingpushsound) {
        self.isplayingpushsound = 1;
        self thread door_creak_sound();
    }
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 2, eflags: 0x4
// Checksum 0x9bd3ea6d, Offset: 0x1ec0
// Size: 0x104
function private door_creak_sound(*var_aecae07, *var_a09fee2c) {
    self.m_e_door endon(#"entitydeleted");
    self notify(#"hash_751ece30abc106fd");
    alias = self.m_s_bundle.var_69358708;
    if (!isdefined(alias)) {
        alias = self.m_s_bundle.door_loop_sound;
    }
    if (isentity(self.m_e_door) && isdefined(alias) && soundexists(alias)) {
        self.m_e_door playloopsound(alias);
        self waittill(#"hash_751895912b6e081d", #"hash_6162e3d94ad294c7");
        self thread door_creak_sound_stop();
    }
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 0, eflags: 0x4
// Checksum 0xf0f871fa, Offset: 0x1fd0
// Size: 0x64
function private door_creak_sound_stop() {
    if (isdefined(self.m_e_door)) {
        self.m_e_door endon(#"entitydeleted");
    }
    self endon(#"hash_751ece30abc106fd");
    wait(0.55);
    if (isdefined(self.m_e_door)) {
        self.m_e_door stoploopsound();
    }
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 2, eflags: 0x4
// Checksum 0x22c053e4, Offset: 0x2040
// Size: 0x3a
function private angle_diff(value1, value2) {
    diff = angleclamp180(value1 - value2);
    return diff;
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 5, eflags: 0x0
// Checksum 0x675829d2, Offset: 0x2088
// Size: 0x402
function function_9670a4a4(var_f700d5eb, b_reverse, var_d6cc2350, var_58c4c830, var_b0a715f2) {
    assert(!isdefined(var_d6cc2350) || var_d6cc2350 > 0, "<unknown string>");
    var_f626de4 = undefined;
    var_672b7d83 = undefined;
    var_e6d945ba = 0;
    var_f29beb60 = undefined;
    var_7630ab93 = undefined;
    var_9c7b53b4 = math::sign(self.m_s_bundle.door_swing_angle);
    var_812c62a6 = var_d6cc2350 * var_9c7b53b4;
    if (b_reverse) {
        var_812c62a6 *= -1;
    }
    var_d5f7cb0e = [[ self ]]->function_85fe0c35(!b_reverse);
    if (var_f700d5eb < var_d5f7cb0e) {
        var_7630ab93 = var_d5f7cb0e;
        var_f29beb60 = var_f700d5eb;
    } else {
        var_7630ab93 = var_f700d5eb;
        var_f29beb60 = var_d5f7cb0e;
    }
    var_62959515 = undefined;
    if (var_58c4c830) {
        var_62959515 = 0;
    } else {
        var_b2d627ee = angleclamp180(function_74618a4f(self.var_85f2454d.angles));
        var_2e5af146 = combineangles(self.m_e_door.angles, var_b2d627ee);
        var_2e5af146 = angleclamp180((var_2e5af146[0], var_2e5af146[1], var_2e5af146[2]));
        var_62959515 = var_2e5af146[0] + var_2e5af146[1] + var_2e5af146[2];
    }
    var_7701b65e = var_62959515 + var_812c62a6;
    var_2c0a512d = undefined;
    if (var_62959515 > 0.01 && var_7701b65e < -0.01) {
        var_672b7d83 = "closed";
        var_2c0a512d = 0;
        var_f626de4 = var_62959515 / var_d5f7cb0e;
    } else if (var_62959515 < -0.01 && var_7701b65e > 0.01) {
        var_672b7d83 = "closed";
        var_2c0a512d = 0;
        var_f626de4 = var_62959515 / var_d5f7cb0e;
    } else if (var_7701b65e > var_7630ab93 || var_7701b65e < var_f29beb60) {
        if (b_reverse) {
            var_672b7d83 = "open_completely_reverse";
        } else {
            var_672b7d83 = "open_completely";
        }
        var_2c0a512d = var_f700d5eb;
        var_f626de4 = var_62959515 / var_f700d5eb;
    } else {
        var_2c0a512d = var_7701b65e;
        if (abs(var_7701b65e) > abs(var_62959515)) {
            var_672b7d83 = "opening_partially";
            var_f626de4 = var_62959515 / var_f700d5eb;
        } else {
            var_672b7d83 = "closing_partially";
            var_f626de4 = var_62959515 / var_d5f7cb0e;
        }
    }
    if (var_672b7d83 != "closing_partially" && var_672b7d83 != "opening_partially") {
        var_e6d945ba = abs(abs(var_62959515) - abs(var_2c0a512d)) < 0.01;
    }
    if (isdefined(var_b0a715f2)) {
        var_b0a715f2.var_672b7d83 = var_672b7d83;
        var_b0a715f2.var_f626de4 = var_f626de4;
        var_b0a715f2.var_e6d945ba = var_e6d945ba;
    }
    return var_2c0a512d;
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 1, eflags: 0x0
// Checksum 0x816ff1ff, Offset: 0x2498
// Size: 0x23c
function function_c152a0ca(user) {
    var_cd167873 = 1;
    if (!isdefined(user)) {
        return undefined;
    }
    var_903d67c4 = self doors::function_fb354714();
    var_6209ecfe = self interact_door_get_endpoint() - user.origin;
    var_4443000b = (var_6209ecfe[0], var_6209ecfe[1], 0);
    var_4443000b = vectornormalize(var_4443000b);
    var_79467049 = vectordot(var_4443000b, var_903d67c4);
    v_movement = undefined;
    var_86c03756 = math::sign(var_79467049);
    if (isplayer(user)) {
        var_22efce82 = user getnormalizedmovement();
        var_22efce82 = (var_22efce82[0], var_22efce82[1] * -1, 0);
        v_movement = rotatepoint(var_22efce82, user.angles);
        v_movement = vectornormalize(v_movement);
    } else {
        v_movement = user getvelocity();
        v_movement = (v_movement[0], v_movement[1], 0);
        v_movement = vectornormalize(v_movement);
    }
    if (lengthsquared(v_movement) < 0.01) {
        return undefined;
    }
    var_cd167873 = vectordot(var_903d67c4, v_movement);
    if (math::sign(var_cd167873) != var_86c03756) {
        return undefined;
    }
    return var_cd167873;
}

// Namespace namespace_64f6ea7a/namespace_64f6ea7a
// Params 1, eflags: 0x0
// Checksum 0x98569fb8, Offset: 0x26e0
// Size: 0x144
function function_9d109db6(var_9a84e695 = 0) {
    if (!is_true(self.m_s_bundle.door_use_trigger)) {
        return false;
    }
    if (isdefined(self.var_f97eab64)) {
        if (!self.var_f97eab64) {
            return false;
        }
    } else if (!is_true(self.m_s_bundle.var_7bbc4039)) {
        return false;
    }
    if (var_9a84e695) {
        if (!isdefined(self.var_9b9642be) || !isplayer(self.var_9b9642be)) {
            return false;
        }
    }
    if (self.m_s_bundle.door_open_method == "swing") {
        var_cd167873 = [[ self ]]->function_61d3d3da(self.var_9b9642be);
        if (var_cd167873 <= 0) {
            return false;
        }
        return true;
    } else if (self.m_s_bundle.door_open_method == "swing_away_from_player") {
        return true;
    }
    return false;
}

