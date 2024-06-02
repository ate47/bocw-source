// Atian COD Tools GSC CW decompiler test
#using script_68d08b784c92da95;
#using scripts\core_common\stealth\debug.gsc;
#using scripts\core_common\stealth\threat_sight.gsc;
#using script_6c5ee33879e077f8;
#using script_139ae0bb0a87141c;
#using script_4f58b276cb938e94;
#using script_3eb3df5aef50b41c;
#using script_5450c003e8a913b7;
#using scripts\cp_common\util.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace utility;

// Namespace utility/utility
// Params 2, eflags: 0x0
// Checksum 0xd4f6b558, Offset: 0x2e8
// Size: 0x14
function scalevolume(*ent, *vol) {
    
}

#namespace namespace_979752dc;

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x0
// Checksum 0x2da725da, Offset: 0x308
// Size: 0x5a
function get_group(name) {
    if (!isdefined(level.stealth.groupdata.groups[name])) {
        return undefined;
    }
    return level.stealth.groupdata.groups[name].members;
}

// Namespace namespace_979752dc/utility
// Params 2, eflags: 0x2 linked
// Checksum 0x6fe6a83e, Offset: 0x370
// Size: 0x17c
function group_flag_clear(f, group) {
    name = get_group_flagname(f, group);
    level flag::clear(name);
    array = level.stealth.group.flags[f];
    clear = 1;
    foreach (value in array) {
        if (!issubstr(value, "allies") && level flag::get(value)) {
            return;
        }
    }
    if (level flag::get(name) && self != level) {
        self notify(f);
    }
    level flag::clear(f);
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x99059bb5, Offset: 0x4f8
// Size: 0xbc
function group_flag_set(f) {
    assert(issentient(self), "<unknown string>");
    name = self get_group_flagname(f);
    if (!level flag::get(name) && self != level) {
        self notify(f);
    }
    level flag::set(name);
    level flag::set(f);
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x0
// Checksum 0x539dc8d1, Offset: 0x5c0
// Size: 0x72
function group_flag(f) {
    assert(issentient(self), "<unknown string>");
    name = self get_group_flagname(f);
    return level flag::get(name);
}

// Namespace namespace_979752dc/utility
// Params 2, eflags: 0x2 linked
// Checksum 0x803c91d8, Offset: 0x640
// Size: 0x7a
function get_group_flagname(f, group) {
    if (!isdefined(group)) {
        assert(issentient(self), "<unknown string>");
        group = self.script_stealthgroup;
    }
    name = f + "-Group:" + group;
    return name;
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x9152183, Offset: 0x6c8
// Size: 0x44
function group_flag_wait(f) {
    name = get_group_flagname(f);
    level flag::wait_till(name);
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x86637994, Offset: 0x718
// Size: 0x44
function group_flag_waitopen(f) {
    name = get_group_flagname(f);
    level flag::wait_till_clear(name);
}

// Namespace namespace_979752dc/utility
// Params 2, eflags: 0x0
// Checksum 0x7c121f72, Offset: 0x768
// Size: 0x54
function function_9b4d5512(f, timer) {
    name = get_group_flagname(f);
    level flag::wait_till_timeout(timer, name);
}

// Namespace namespace_979752dc/utility
// Params 2, eflags: 0x0
// Checksum 0xb69f1b97, Offset: 0x7c8
// Size: 0x54
function group_flag_waitopen_or_timeout(f, timer) {
    name = get_group_flagname(f);
    level flag::wait_till_clear_timeout(timer, name);
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x167bdfe2, Offset: 0x828
// Size: 0x1ba
function group_flag_init(f) {
    assert(issentient(self), "<unknown string>");
    if (isdefined(self.script_stealthgroup)) {
        self.script_stealthgroup = string(self.script_stealthgroup);
    } else {
        self.script_stealthgroup = "default";
    }
    if (self.team == "allies") {
        self.script_stealthgroup += "allies";
    }
    if (!level flag::exists(f)) {
        level flag::init(f);
    }
    name = self get_group_flagname(f);
    if (!level flag::exists(name)) {
        level flag::init(name);
        if (!isdefined(level.stealth.group.flags[f])) {
            level.stealth.group.flags[f] = [];
        }
        level.stealth.group.flags[f][level.stealth.group.flags[f].size] = name;
    }
    return name;
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0x24b93d32, Offset: 0x9f0
// Size: 0x44
function function_740dbf99() {
    level flag::clear("stealth_spotted");
    level flag::clear("stealth_meter_combat_alerted");
}

// Namespace namespace_979752dc/utility
// Params 2, eflags: 0x0
// Checksum 0x233a6ebb, Offset: 0xa40
// Size: 0x74
function group_setcombatgoalradius(group, goalradius) {
    assert(isdefined(level.stealth));
    if (!isdefined(level.stealth.combat_goalradius)) {
        level.stealth.combat_goalradius = [];
    }
    level.stealth.combat_goalradius[group] = goalradius;
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0xe3283872, Offset: 0xac0
// Size: 0xe2
function group_add() {
    assert(issentient(self), "<unknown string>");
    if (!isdefined(level.stealth.group.groups[self.script_stealthgroup])) {
        level.stealth.group.groups[self.script_stealthgroup] = [];
        level.stealth.group notify(self.script_stealthgroup);
    }
    level.stealth.group.groups[self.script_stealthgroup][level.stealth.group.groups[self.script_stealthgroup].size] = self;
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0x5bd1f71e, Offset: 0xbb0
// Size: 0x82
function group_spotted_flag() {
    assert(self.team != "<unknown string>", "<unknown string>");
    assert(isdefined(self.stealth.var_103386e8));
    return level flag::get(self.stealth.var_103386e8);
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x76c40818, Offset: 0xc40
// Size: 0x10a
function any_groups_in_combat(stealthgroups) {
    if (!level flag::get("stealth_enabled")) {
        return false;
    }
    foreach (group in level.stealth.groupdata.groups) {
        if (isdefined(stealthgroups) && !array::contains(stealthgroups, group.name)) {
            continue;
        }
        if (stealth_group::group_anyoneincombat(group.name)) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0x7c2721b3, Offset: 0xd58
// Size: 0x82
function get_stealth_state() {
    switch (self.stealth.state) {
    case 0:
        return "normal";
    case 1:
        return "warning";
    case 2:
        return "warning";
    case 3:
        return "attack";
    }
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0xcea1f99b, Offset: 0xde8
// Size: 0xa6
function set_stealth_state(msg) {
    switch (msg) {
    case #"attack":
        num = 3;
        break;
    case #"warning2":
        num = 2;
        break;
    case #"warning1":
        num = 1;
        break;
    default:
        num = 0;
        break;
    }
    self.stealth.state = num;
}

/#

    // Namespace namespace_979752dc/utility
    // Params 0, eflags: 0x0
    // Checksum 0xe2a187c8, Offset: 0xe98
    // Size: 0x34
    function check_stealth() {
        assert(isdefined(self.stealth), "<unknown string>" + self.origin);
    }

#/

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0x3701a567, Offset: 0xed8
// Size: 0x1f4
function alertlevel_init_map() {
    level.stealth.alert_levels_exe = [];
    level.stealth.alert_levels_exe[#"normal"] = "noncombat";
    level.stealth.alert_levels_exe[#"reset"] = "noncombat";
    level.stealth.alert_levels_exe[#"warning1"] = "low_alert";
    level.stealth.alert_levels_exe[#"warning2"] = "high_alert";
    level.stealth.alert_levels_exe[#"combat_hunt"] = "high_alert";
    level.stealth.alert_levels_exe[#"attack"] = "combat";
    level.stealth.alert_levels_int = [];
    level.stealth.alert_levels_int[#"normal"] = 0;
    level.stealth.alert_levels_int[#"reset"] = 0;
    level.stealth.alert_levels_int[#"warning1"] = 2;
    level.stealth.alert_levels_int[#"warning2"] = 3;
    level.stealth.alert_levels_int[#"combat_hunt"] = 3;
    level.stealth.alert_levels_int[#"attack"] = 4;
    level.stealth.alert_levels_exe[#"combat"] = 4;
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x284e4f5f, Offset: 0x10d8
// Size: 0x46
function alertlevel_script_to_exe(alertlevel) {
    if (isdefined(level.stealth.alert_levels_exe[alertlevel])) {
        return level.stealth.alert_levels_exe[alertlevel];
    }
    return alertlevel;
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x903c6d5d, Offset: 0x1128
// Size: 0x46
function function_7211414e(alertlevel) {
    if (isdefined(level.stealth.alert_levels_int[alertlevel])) {
        return level.stealth.alert_levels_int[alertlevel];
    }
    return -1;
}

// Namespace namespace_979752dc/utility
// Params 2, eflags: 0x2 linked
// Checksum 0x493bd0e9, Offset: 0x1178
// Size: 0x5c
function set_detect_ranges(hidden, spotted) {
    if (!isdefined(hidden) && !isdefined(spotted)) {
        assertmsg("<unknown string>");
    }
    namespace_393f6012::set_detect_ranges_internal(hidden, spotted);
}

// Namespace namespace_979752dc/utility
// Params 2, eflags: 0x2 linked
// Checksum 0x2dfd13db, Offset: 0x11e0
// Size: 0x206
function set_min_detect_range_darkness(hidden, spotted) {
    if (!isdefined(hidden) && !isdefined(spotted)) {
        assertmsg("<unknown string>");
    }
    if (isdefined(hidden)) {
        level.stealth.detect.minrangedarkness[#"hidden"][#"prone"] = hidden[#"prone"];
        level.stealth.detect.minrangedarkness[#"hidden"][#"crouch"] = hidden[#"crouch"];
        level.stealth.detect.minrangedarkness[#"hidden"][#"stand"] = hidden[#"stand"];
    }
    if (isdefined(spotted)) {
        level.stealth.detect.minrangedarkness[#"spotted"][#"prone"] = spotted[#"prone"];
        level.stealth.detect.minrangedarkness[#"spotted"][#"crouch"] = spotted[#"crouch"];
        level.stealth.detect.minrangedarkness[#"spotted"][#"stand"] = spotted[#"stand"];
    }
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0xfe3a6a28, Offset: 0x13f0
// Size: 0xa2
function do_stealth() {
    switch (self.team) {
    case #"axis":
    case #"team3":
        self thread namespace_f1f700ac::main();
        break;
    case #"allies":
        self thread namespace_32a4062b::main();
        break;
    case #"neutral":
        self thread namespace_578db516::main();
        break;
    }
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0xf8d8ece0, Offset: 0x14a0
// Size: 0x180
function save_last_goal() {
    if (isdefined(self.stealth.last_goal)) {
        return "exists";
    }
    result = "goal";
    self.saved_script_forcegoal = self.script_forcegoal;
    if (isdefined(self.last_set_goalnode)) {
        self.stealth.last_goal = self.last_set_goalnode;
    } else if (isdefined(self.last_set_goalent)) {
        self.stealth.last_goal = self.last_set_goalent.origin;
    } else if (isdefined(self.last_set_goalpos)) {
        self.stealth.last_goal = self.last_set_goalpos;
    } else if (isdefined(self.go_to_node)) {
        self.stealth.last_goal = self spawner::function_461ce3e9();
        result = "go_to_node";
    } else {
        self.stealth.last_goal = spawnstruct();
        self.stealth.last_goal.origin = self.origin;
        self.stealth.last_goal.angles = self.angles;
    }
    if (isdefined(self.stealth.last_goal)) {
        return result;
    }
    return undefined;
}

/#

    // Namespace namespace_979752dc/utility
    // Params 1, eflags: 0x0
    // Checksum 0xff484aa1, Offset: 0x1628
    // Size: 0x2c
    function set_patrol_move_loop_anim(*animoverride) {
        assertmsg("<unknown string>");
    }

#/

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x0
// Checksum 0x85a02943, Offset: 0x1660
// Size: 0x5c
function set_default_patrol_style(style) {
    self.stealth.default_patrol_style = style;
    if (isdefined(self.stealth.default_patrol_style)) {
        self set_patrol_style(self.stealth.default_patrol_style);
    }
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x84c46fc0, Offset: 0x16c8
// Size: 0x8c
function get_patrol_react_magnitude_int(style) {
    switch (style) {
    case #"small":
        return 0;
    case #"small_medium":
        return 1;
    case #"medium":
        return 2;
    case #"large":
        return 3;
    }
    assertmsg("<unknown string>");
}

// Namespace namespace_979752dc/utility
// Params 4, eflags: 0x2 linked
// Checksum 0x56f8d6de, Offset: 0x1760
// Size: 0x144
function set_patrol_style(style, allowreact, reactposition, magnitude) {
    if (style == "unaware") {
        style = "patrol";
    }
    var_70fd8440 = -1;
    /#
        var_70fd8440 = getdvarint(#"hash_4aa9c88072661ef2", -1);
    #/
    if (var_70fd8440 < 0) {
        self ai::set_behavior_attribute("demeanor", style);
    }
    self.stealth.var_458bda8 = style;
    if (style == "cqb") {
        var_68c74e4f = 60;
        if (isdefined(self.stealth.hunt_speed)) {
            var_68c74e4f = self.stealth.hunt_speed;
        }
        self set_movement_speed(var_68c74e4f);
    }
    if (is_true(allowreact)) {
        self set_patrol_react(reactposition, magnitude, style);
    }
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0xa7c0231e, Offset: 0x18b0
// Size: 0x32
function get_patrol_style() {
    assert(isdefined(self.stealth));
    return self.stealth.var_458bda8;
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0xefeee093, Offset: 0x18f0
// Size: 0x3e
function get_patrol_style_default() {
    default_patrol_style = self.stealth.default_patrol_style;
    if (!isdefined(default_patrol_style)) {
        default_patrol_style = level.stealth.default_patrol_style;
    }
    return default_patrol_style;
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x9998bf80, Offset: 0x1938
// Size: 0x76
function function_2b21025e(position) {
    if (!isdefined(self.stealth.var_d54b515e)) {
        self.stealth.var_d54b515e = spawnstruct();
    }
    self.stealth.var_d54b515e.position = position;
    self.stealth.var_d54b515e.settime = gettime();
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x620e7a78, Offset: 0x19b8
// Size: 0xc2
function function_b0c91323(var_affacce = 0) {
    if (!isdefined(self.stealth.var_d54b515e.position)) {
        return false;
    }
    currenttime = gettime();
    if (currenttime > self.stealth.var_d54b515e.settime + 100) {
        return false;
    }
    if (var_affacce) {
        if (isdefined(self.stealth.var_d54b515e.processtime) && currenttime == self.stealth.var_d54b515e.processtime) {
            return false;
        }
    }
    return true;
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0xb8782a02, Offset: 0x1a88
// Size: 0x1e
function function_ab75abf3() {
    self.stealth.var_d54b515e.processtime = gettime();
}

// Namespace namespace_979752dc/utility
// Params 3, eflags: 0x2 linked
// Checksum 0xc4a2701b, Offset: 0x1ab0
// Size: 0x254
function set_patrol_react(position, magnitude, style) {
    if (!isdefined(style) || style != "combat") {
        if (isdefined(self.stealth.var_5cc4aa60) && self.stealth.var_5cc4aa60 > gettime()) {
            return;
        }
    }
    if (isdefined(self.stealth.breacting)) {
        if (get_patrol_react_magnitude_int(self.stealth.breacting) >= get_patrol_react_magnitude_int(magnitude)) {
            return;
        }
    }
    assert(magnitude == "<unknown string>" || magnitude == "<unknown string>" || magnitude == "<unknown string>" || magnitude == "<unknown string>");
    if (self.alertlevel == "combat" && magnitude != "large") {
        magnitude = "large";
    }
    self.stealth.patrol_react_magnitude = magnitude;
    self.stealth.patrol_react_pos = position;
    self.stealth.patrol_react_time = gettime();
    self.stealth.var_527ef51c = self haspath();
    if (self isinscriptedstate() && is_true(self._scene_object._s.var_b1ca85fc) && !self flag::get("in_action")) {
        [[ self._scene_object._o_scene ]]->stop();
    }
    self setblackboardattribute("_react_magnitude", self.stealth.patrol_react_magnitude);
}

// Namespace namespace_979752dc/utility
// Params 3, eflags: 0x2 linked
// Checksum 0x59899332, Offset: 0x1d10
// Size: 0x180
function set_goal(goal, faceangles, goalradius = 16) {
    result = 1;
    if (self flag::get("stealth_goal_override")) {
        return;
    }
    self.keepclaimednode = 0;
    self.keepclaimednodeifvalid = 0;
    if (isdefined(faceangles)) {
        goalstruct = spawnstruct();
        if (isvec(goal)) {
            goalstruct.origin = goal;
        } else {
            goalstruct.origin = goal.origin;
        }
        goalstruct.angles = faceangles;
        goal = goalstruct;
    }
    self setgoal(goal);
    if (ispathnode(goal)) {
        result = self usecovernode(goal);
    } else {
        self usecovernode(undefined);
    }
    if (goalradius <= 0) {
        goalradius = undefined;
    }
    self set_goal_radius(goalradius);
    return result;
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0xc1cb7f13, Offset: 0x1e98
// Size: 0x6c
function set_goal_radius(newradius) {
    if (isdefined(newradius)) {
        self val::set(#"stealth", "goalradius", newradius);
        return;
    }
    self val::reset(#"stealth", "goalradius");
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x111aa6ca, Offset: 0x1f10
// Size: 0x1b2
function alert_delay_distance_time(other) {
    maxwait = 2;
    if (isdefined(self.stealth.maxalertdelay)) {
        maxwait = self.stealth.maxalertdelay;
    }
    if (self [[ self.fnisinstealthinvestigate ]]()) {
        maxwait = min(1.5, maxwait);
    } else if (self [[ self.fnisinstealthhunt ]]()) {
        maxwait = min(1, maxwait);
    }
    var_fc45584 = 0.1;
    minwait = 0.4;
    mindist = 64;
    maxdist = 1024;
    dist2d = distance2d(self.origin, other.origin);
    if (dist2d < mindist) {
        timefactor = mapfloat(0, mindist, 0, mindist, dist2d);
        waittime = lerpfloat(var_fc45584, minwait, timefactor);
    } else {
        timefactor = mapfloat(mindist, maxdist, mindist, maxdist, dist2d);
        waittime = lerpfloat(minwait, maxwait, timefactor);
    }
    return waittime;
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x0
// Checksum 0xb7af2ef9, Offset: 0x20d0
// Size: 0x3a
function set_path_dist(ent) {
    ent.distsqrd = get_path_dist_sq(self.origin, ent.origin, self);
}

// Namespace namespace_979752dc/utility
// Params 3, eflags: 0x2 linked
// Checksum 0x37728cea, Offset: 0x2118
// Size: 0xb4
function get_path_dist_sq(from, to, var_58924346) {
    path = self findpath(from, to);
    if (isdefined(var_58924346)) {
        var_58924346.path = path;
    }
    distsq = 0;
    for (i = 1; i < path.size; i++) {
        distsq += distancesquared(path[i - 1], path[i]);
    }
    return distsq;
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x0
// Checksum 0xa3565b45, Offset: 0x21d8
// Size: 0x16
function remove_path_dist() {
    self.path = undefined;
    self.distsqrd = undefined;
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x45f518d4, Offset: 0x21f8
// Size: 0xc6
function is_visible(other) {
    if (isplayer(self)) {
        if (util::within_fov(self.origin, self.angles, other.origin, 0.766)) {
            if (isdefined(other.tagging_visible) || self tagging_shield()) {
                return 1;
            }
            if (util::can_see_ai(self, other, 250)) {
                return 1;
            }
        }
    } else {
        return self cansee(other);
    }
    return 0;
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0x7df1542b, Offset: 0x22c8
// Size: 0x38
function tagging_shield() {
    return isdefined(self.offhandshield) && isdefined(self.offhandshield.active) && self.offhandshield.active;
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0x14b6ccd9, Offset: 0x2308
// Size: 0x9a
function getcorpseorigin() {
    if (isdefined(level.stealth)) {
        if (isdefined(level.stealth.additional_corpse) && isdefined(level.stealth.additional_corpse[self getentitynumber()])) {
            return self.origin;
        }
        if (isdefined(level.stealth.fngetcorpseorigin)) {
            return [[ level.stealth.fngetcorpseorigin ]]();
        }
    }
    return self.origin;
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x694bc006, Offset: 0x23b0
// Size: 0x50
function setbattlechatter(state) {
    if (isdefined(level.stealth) && isdefined(level.stealth.fnsetbattlechatter)) {
        return [[ level.stealth.fnsetbattlechatter ]](state);
    }
}

// Namespace namespace_979752dc/utility
// Params 6, eflags: 0x2 linked
// Checksum 0xbecdf6e7, Offset: 0x2408
// Size: 0x88
function function_f5f4416f(eventaction, eventtype, modifier, delay, eventstruct, force) {
    if (isdefined(level.stealth) && isdefined(level.stealth.fnaddeventplaybcs)) {
        [[ level.stealth.fnaddeventplaybcs ]](eventaction, eventtype, modifier, delay, eventstruct, force, 1);
    }
}

// Namespace namespace_979752dc/utility
// Params 6, eflags: 0x2 linked
// Checksum 0x7a590f5e, Offset: 0x2498
// Size: 0x84
function addeventplaybcs(eventaction, eventtype, modifier, delay, eventstruct, force) {
    if (isdefined(level.stealth) && isdefined(level.stealth.fnaddeventplaybcs)) {
        [[ level.stealth.fnaddeventplaybcs ]](eventaction, eventtype, modifier, delay, eventstruct, force, 0);
    }
}

// Namespace namespace_979752dc/utility
// Params 2, eflags: 0x2 linked
// Checksum 0x289981e1, Offset: 0x2528
// Size: 0x204
function stealth_music(musichidden, musicspotted) {
    self notify(#"stealth_music");
    self endon(#"stealth_music");
    self thread stealth_music_pause_monitor();
    while (true) {
        level flag::wait_till("stealth_enabled");
        level flag::wait_till_clear("stealth_spotted");
        level flag::wait_till_clear("stealth_music_pause");
        foreach (player in getplayers()) {
            player thread stealth_music_transition(musichidden);
        }
        level flag::wait_till("stealth_spotted");
        level flag::wait_till_clear("stealth_music_pause");
        foreach (player in getplayers()) {
            player thread stealth_music_transition(musicspotted);
        }
    }
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0xe1d47f2e, Offset: 0x2738
// Size: 0xb8
function stealth_music_stop() {
    self notify(#"stealth_music");
    self notify(#"stealth_music_pause_monitor");
    foreach (player in getplayers()) {
        player thread stealth_music_transition(undefined);
    }
}

// Namespace namespace_979752dc/utility
// Params 2, eflags: 0x2 linked
// Checksum 0xdfd15272, Offset: 0x27f8
// Size: 0x23c
function stealth_music_pause_monitor(musichidden, musicspotted) {
    self notify(#"stealth_music_pause_monitor");
    self endon(#"stealth_music_pause_monitor");
    while (true) {
        level flag::wait_till("stealth_music_pause");
        foreach (player in getplayers()) {
            player thread stealth_music_transition(undefined);
        }
        level flag::wait_till_clear("stealth_music_pause");
        if (level flag::get("stealth_spotted")) {
            foreach (player in getplayers()) {
                player thread stealth_music_transition(musicspotted);
            }
            continue;
        }
        foreach (player in getplayers()) {
            player thread stealth_music_transition(musichidden);
        }
    }
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x737e0ea7, Offset: 0x2a40
// Size: 0x28
function stealth_music_transition(aliasto) {
    if (isdefined(self.fnstealthmusictransition)) {
        return [[ self.fnstealthmusictransition ]](aliasto);
    }
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0xca5d6c96, Offset: 0x2a70
// Size: 0x20
function update_light_meter() {
    if (isdefined(self.fnupdatelightmeter)) {
        return [[ self.fnupdatelightmeter ]]();
    }
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x8b02b3fa, Offset: 0x2a98
// Size: 0x40
function set_disguised(disguised) {
    if (isdefined(level.stealth.fnsetdisguised)) {
        self [[ level.stealth.fnsetdisguised ]](disguised);
    }
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0x7b6e5387, Offset: 0x2ae0
// Size: 0x350
function set_disguised_default(disguised = 0) {
    if (disguised) {
        level.stealth.disguised = 1;
        level.stealth.threatsightratescale = 0.5;
        level.stealth.threatsightdistscale = 0.5;
        level.stealth.proximity_combat_radius_bump = 0;
        level.stealth.proximity_combat_radius_sight = 0;
        level.stealth.proximity_combat_radius_fake_sight = 0;
        setsaveddvar(#"hash_12c53cd4a01caff3", 0.25);
        setsaveddvar(#"hash_5edb3c8437c5990e", cos(90));
        setsaveddvar(#"hash_30eedc859ec98ad", 0.025);
        setsaveddvar(#"hash_5aaea648688ff01e", 0.25);
    } else {
        level.stealth.disguised = undefined;
        level.stealth.threatsightratescale = undefined;
        level.stealth.threatsightdistscale = undefined;
        level.stealth.proximity_combat_radius_bump = 50;
        level.stealth.proximity_combat_radius_sight = 100;
        level.stealth.proximity_combat_radius_fake_sight = 60;
        setsaveddvar(#"hash_12c53cd4a01caff3", 0.5);
        setsaveddvar(#"hash_5edb3c8437c5990e", cos(180));
        setsaveddvar(#"hash_30eedc859ec98ad", 0.01);
        setsaveddvar(#"hash_5aaea648688ff01e", 0.1);
    }
    var_210a8489 = getactorarray();
    foreach (ai in var_210a8489) {
        if (!isalive(ai)) {
            continue;
        }
        if (isdefined(ai.stealth) && isdefined(ai.stealth.threat_sight_state)) {
            ai stealth_threat_sight::threat_sight_set_state_parameters();
        }
    }
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x0
// Checksum 0xb89006bb, Offset: 0x2e38
// Size: 0x14a
function stealth_override_goal(override) {
    assert(isdefined(self.stealth));
    if (!isdefined(override)) {
        override = 0;
    }
    if (override) {
        self.remove_from_animloop = 1;
        self flag::set("stealth_override_goal");
        self namespace_f1f700ac::set_blind(0);
        self.last_set_goalent = undefined;
    } else {
        self flag::clear("stealth_override_goal");
    }
    if (override) {
        var_29020f90 = self spawner::function_461ce3e9();
        if (!isdefined(self.stealth.var_29020f90)) {
            self.stealth.var_29020f90 = var_29020f90;
        }
        return;
    }
    if (isdefined(self.stealth.var_29020f90)) {
        self thread spawner::go_to_node(self.stealth.var_29020f90);
        self.stealth.var_29020f90 = undefined;
    }
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0x8bd2ae5e, Offset: 0x2f90
// Size: 0x44
function stealth_behavior_active() {
    return self flag::exists("stealth_override_goal") && self flag::get("stealth_override_goal");
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x0
// Checksum 0xb0102c1e, Offset: 0x2fe0
// Size: 0x3c
function stealth_behavior_wait() {
    if (self stealth_behavior_active()) {
        self flag::wait_till_clear("stealth_override_goal");
    }
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x0
// Checksum 0x930c4d63, Offset: 0x3028
// Size: 0x224
function disable_stealth_system() {
    level flag::clear("stealth_enabled");
    ais = getactorteamarray("axis", "allies", "team3", "neutral");
    foreach (ai in ais) {
        ai enable_stealth_for_ai(0);
    }
    foreach (player in getplayers()) {
        player.maxvisibledist = 8192;
        if (player flag::exists("stealth_enabled")) {
            player flag::clear("stealth_enabled");
        }
        if (isdefined(player.stealth)) {
            var_3d8a1086 = player get_group_flagname("stealth_spotted");
            level flag::clear(var_3d8a1086);
        }
    }
    namespace_393f6012::event_change("spotted");
    level thread function_740dbf99();
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x0
// Checksum 0x45e82a0e, Offset: 0x3258
// Size: 0x180
function enable_stealth_system() {
    level flag::set("stealth_enabled");
    ais = getaiarray();
    foreach (ai in ais) {
        ai enable_stealth_for_ai(1);
    }
    foreach (player in getplayers()) {
        if (player flag::exists("stealth_enabled")) {
            player flag::set("stealth_enabled");
        }
    }
}

// Namespace namespace_979752dc/utility
// Params 2, eflags: 0x2 linked
// Checksum 0xe98237f4, Offset: 0x33e0
// Size: 0x1fc
function enable_stealth_for_ai(enabled, var_6f52290c = 0) {
    if (!enabled) {
        self.maxvisibledist = 8192;
        if (self flag::exists("stealth_enabled") && self flag::get("stealth_enabled") && self.team == "axis") {
            player = getplayers()[0];
            dummyevent = spawnstruct();
            dummyevent.origin = player.origin;
            dummyevent.investigate_point = player.origin;
            dummyevent.investigate_pos = player.origin;
            dummyevent.type = "combat";
            dummyevent.typeorig = "attack";
            if (var_6f52290c) {
                dummyevent.entity = player;
            }
            self.dontevershoot = 0;
            self.dontattackme = 0;
            self namespace_f1f700ac::bt_event_combat(dummyevent);
            stealth_group::function_b6ebd4af(self);
            self stealth_threat_sight::function_60514e0b();
        }
    }
    if (self flag::exists("stealth_enabled")) {
        if (enabled) {
            self flag::set("stealth_enabled");
            return;
        }
        self flag::clear("stealth_enabled");
    }
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x0
// Checksum 0x1309af81, Offset: 0x35e8
// Size: 0xb4
function custom_state_functions(array) {
    assert(!isdefined(self.stealth), "<unknown string>");
    if (isdefined(array[#"spotted"])) {
        self.stealth_state_func[#"spotted"] = array[#"spotted"];
    }
    if (isdefined(array[#"hidden"])) {
        self.stealth_state_func[#"hidden"] = array[#"hidden"];
    }
}

// Namespace namespace_979752dc/utility
// Params 2, eflags: 0x2 linked
// Checksum 0x5ef71cd2, Offset: 0x36a8
// Size: 0x28
function set_stealth_func(type, func) {
    self.stealth.funcs[type] = func;
}

// Namespace namespace_979752dc/utility
// Params 2, eflags: 0x0
// Checksum 0xc565e2f2, Offset: 0x36d8
// Size: 0x64
function set_event_override(eventtype, funcoverride) {
    if (isdefined(eventtype) && isdefined(self.stealth) && isdefined(self.stealth.funcs)) {
        self.stealth.funcs["event_" + eventtype] = funcoverride;
    }
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x0
// Checksum 0x7cc1ab32, Offset: 0x3748
// Size: 0x58
function function_bc54026c(eventtype) {
    if (isdefined(eventtype) && isdefined(self.stealth) && isdefined(self.stealth.funcs)) {
        self.stealth.funcs["event_" + eventtype] = undefined;
    }
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0x31cb0eb8, Offset: 0x37a8
// Size: 0x58
function bcisincombat() {
    self endon(#"death");
    if (!isdefined(self.fnisinstealthcombat) || self [[ self.fnisinstealthcombat ]]()) {
        return true;
    }
    if (!isdefined(self.stealth)) {
        return true;
    }
    return false;
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0x9271d50c, Offset: 0x3808
// Size: 0x2e
function function_2baa2568() {
    if (level flag::get("stealth_spotted")) {
        return false;
    }
    return true;
}

// Namespace namespace_979752dc/utility
// Params 2, eflags: 0x0
// Checksum 0xa31b9967, Offset: 0x3840
// Size: 0x88
function waittill_true_goal(origin, radius) {
    self endon(#"death");
    if (!isdefined(radius)) {
        radius = self.goalradius;
    }
    while (true) {
        self waittill(#"goal");
        if (distance(self.origin, origin) < radius + 10) {
            break;
        }
    }
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0xe13407c0, Offset: 0x38d0
// Size: 0x46
function function_133b86af() {
    result = getclosestpointonnavmesh(self.origin, 500, 16);
    if (!isdefined(result)) {
        result = self.origin;
    }
    return result;
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0x40d0610e, Offset: 0x3920
// Size: 0x4a
function assign_unique_id() {
    if (!isdefined(level.ai_number)) {
        level.ai_number = 0;
    }
    self.unique_id = "ai" + level.ai_number;
    level.ai_number++;
    return self.unique_id;
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x2 linked
// Checksum 0xfe9782ba, Offset: 0x3978
// Size: 0x24
function set_movement_speed(desiredspeed) {
    self setdesiredspeed(desiredspeed);
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0xc745c2b, Offset: 0x39a8
// Size: 0x1c
function clear_movement_speed() {
    self function_9ae1c50();
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0x46721dbd, Offset: 0x39d0
// Size: 0x52
function ignore_corpse() {
    waitresult = self waittill(#"actor_corpse");
    if (isdefined(waitresult.corpse)) {
        waitresult.corpse.found = 1;
    }
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x0
// Checksum 0x34f75047, Offset: 0x3a30
// Size: 0x12
function function_bf1fb16f() {
    self.fovcosinez = 0;
}

// Namespace namespace_979752dc/utility
// Params 2, eflags: 0x0
// Checksum 0xe2df17e2, Offset: 0x3a50
// Size: 0x76
function function_569a126(enabled, distance = 2000) {
    assert(isdefined(level.stealth));
    if (enabled) {
        level.stealth.var_6fd6463b = distance * distance;
        return;
    }
    level.stealth.var_6fd6463b = undefined;
}

// Namespace namespace_979752dc/utility
// Params 1, eflags: 0x0
// Checksum 0xd28a0ecb, Offset: 0x3ad0
// Size: 0x32
function function_2324f175(enabled) {
    self.var_6eed8aea = enabled;
    self.var_210e35f8 = enabled;
    self.var_dbc362ae = enabled;
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0xf1a3c16d, Offset: 0x3b10
// Size: 0x6c
function function_3249d5ff() {
    self.stealth.var_f4926fd9 = 1;
    self stealth_threat_sight::threat_sight_set_state_parameters("investigate_grace_period");
    self.awarenesslevelcurrent = "high_alert";
    if (self flashlight::function_47df32b8()) {
        self thread flashlight::function_8d59ee47(1);
    }
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0x5e54186c, Offset: 0x3b88
// Size: 0x7c
function function_64608a78() {
    self.stealth.var_f4926fd9 = 0;
    self.stealth.var_3bf603d9 = gettime();
    self stealth_threat_sight::threat_sight_set_state_parameters("investigate");
    self.awarenesslevelcurrent = "low_alert";
    if (self flashlight::function_3aec1b7()) {
        self thread flashlight::function_8d59ee47(0);
    }
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0xbc941c28, Offset: 0x3c10
// Size: 0x22
function function_196ad164() {
    return is_true(self.stealth.var_f4926fd9);
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0xce1fd6ad, Offset: 0x3c40
// Size: 0x24
function function_b60a878a() {
    return level.var_6eed8aea !== 0 && self.var_6eed8aea !== 0;
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0x39b0ff99, Offset: 0x3c70
// Size: 0x24
function function_d58e1c1c() {
    return level.var_210e35f8 !== 0 && self.var_210e35f8 !== 0;
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0xcaa0d0d7, Offset: 0x3ca0
// Size: 0x24
function function_a54113fb() {
    return level.var_dbc362ae !== 0 && self.var_dbc362ae !== 0;
}

// Namespace namespace_979752dc/utility
// Params 2, eflags: 0x0
// Checksum 0x93da1b07, Offset: 0x3cd0
// Size: 0x4a
function function_57972217(var_45007919, var_ac53cd2c) {
    self.var_e6b70cdb = cos(var_45007919);
    self.fovcosineperiph = cos(var_ac53cd2c);
}

// Namespace namespace_979752dc/utility
// Params 0, eflags: 0x2 linked
// Checksum 0x813c7139, Offset: 0x3d28
// Size: 0x34
function function_6a3b08d0() {
    var_39dc2c21 = 1 / 999;
    self function_678d90a1(var_39dc2c21);
}

