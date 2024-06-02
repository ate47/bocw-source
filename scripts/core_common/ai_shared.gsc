// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\ai\systems\shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\colors_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace ai;

// Namespace ai/ai_shared
// Params 1, eflags: 0x0
// Checksum 0x9e9bb0d2, Offset: 0x3e0
// Size: 0x4a
function set_pacifist(val) {
    assert(issentient(self), "<unknown string>");
    self.pacifist = val;
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x2b4a9d95, Offset: 0x438
// Size: 0x3e
function disable_pain() {
    assert(isai(self), "<unknown string>");
    self.allowpain = 0;
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xa02b603a, Offset: 0x480
// Size: 0x42
function enable_pain() {
    assert(isai(self), "<unknown string>");
    self.allowpain = 1;
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xaf43c2e0, Offset: 0x4d0
// Size: 0x3a
function gun_remove() {
    self shared::placeweaponon(self.weapon, "none");
    self.gun_removed = 1;
}

// Namespace ai/ai_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x4d46c394, Offset: 0x518
// Size: 0x2c
function gun_switchto(weapon, whichhand) {
    self shared::placeweaponon(weapon, whichhand);
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xad19018c, Offset: 0x550
// Size: 0x36
function gun_recall() {
    self shared::placeweaponon(self.primaryweapon, "right");
    self.gun_removed = undefined;
}

// Namespace ai/ai_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xd0aca1ac, Offset: 0x590
// Size: 0x4c
function set_behavior_attribute(attribute, value) {
    if (has_behavior_attribute(attribute)) {
        setaiattribute(self, attribute, value);
    }
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xb0170380, Offset: 0x5e8
// Size: 0x22
function get_behavior_attribute(attribute) {
    return getaiattribute(self, attribute);
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x9acfc63, Offset: 0x618
// Size: 0x22
function has_behavior_attribute(attribute) {
    return hasaiattribute(self, attribute);
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xdaceeb06, Offset: 0x648
// Size: 0x48
function is_dead_sentient() {
    if (issentient(self) && !isalive(self)) {
        return 1;
    }
    return 0;
}

// Namespace ai/ai_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x8009ea17, Offset: 0x698
// Size: 0x1d0
function waittill_dead(guys, num, timeoutlength) {
    allalive = 1;
    for (i = 0; i < guys.size; i++) {
        if (isalive(guys[i])) {
            continue;
        }
        allalive = 0;
        break;
    }
    assert(allalive, "<unknown string>");
    if (!allalive) {
        newarray = [];
        for (i = 0; i < guys.size; i++) {
            if (isalive(guys[i])) {
                newarray[newarray.size] = guys[i];
            }
        }
        guys = newarray;
    }
    ent = spawnstruct();
    if (isdefined(timeoutlength)) {
        ent endon(#"thread_timed_out");
        ent thread waittill_dead_timeout(timeoutlength);
    }
    ent.count = guys.size;
    if (isdefined(num) && num < ent.count) {
        ent.count = num;
    }
    array::thread_all(guys, &waittill_dead_thread, ent);
    while (ent.count > 0) {
        ent waittill(#"waittill_dead guy died");
    }
}

// Namespace ai/ai_shared
// Params 4, eflags: 0x0
// Checksum 0x727af70, Offset: 0x870
// Size: 0x1a0
function waittill_dead_or_dying(guys, num, timeoutlength, var_76f40c79) {
    newarray = [];
    for (i = 0; i < guys.size; i++) {
        if (isalive(guys[i])) {
            newarray[newarray.size] = guys[i];
        }
    }
    guys = newarray;
    ent = spawnstruct();
    if (isdefined(timeoutlength)) {
        ent endon(#"thread_timed_out");
        ent thread waittill_dead_timeout(timeoutlength);
    }
    ent.count = guys.size;
    if (isdefined(num) && num < ent.count) {
        ent.count = num;
    }
    if (is_true(var_76f40c79)) {
        array::thread_all(guys, &function_abdc188, ent);
    } else {
        array::thread_all(guys, &waittill_dead_or_dying_thread, ent);
    }
    while (ent.count > 0) {
        ent waittill(#"waittill_dead_guy_dead_or_dying");
    }
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x939f1acd, Offset: 0xa18
// Size: 0x40
function private waittill_dead_thread(ent) {
    self waittill(#"death");
    ent.count--;
    ent notify(#"waittill_dead guy died");
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xfe186cb1, Offset: 0xa60
// Size: 0x60
function function_abdc188(ent) {
    self waittill(#"death", #"pain_death", #"in_action");
    ent.count--;
    ent notify(#"waittill_dead_guy_dead_or_dying");
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x735582bf, Offset: 0xac8
// Size: 0x50
function waittill_dead_or_dying_thread(ent) {
    self waittill(#"death", #"pain_death");
    ent.count--;
    ent notify(#"waittill_dead_guy_dead_or_dying");
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x80f9e887, Offset: 0xb20
// Size: 0x26
function waittill_dead_timeout(timeoutlength) {
    wait(timeoutlength);
    self notify(#"thread_timed_out");
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x4756f52c, Offset: 0xb50
// Size: 0x8e
function private wait_for_shoot() {
    self endon(#"stop_shoot_at_target", #"death");
    if (isvehicle(self) || isbot(self)) {
        self waittill(#"weapon_fired");
    } else {
        self waittill(#"shoot");
    }
    self.start_duration_comp = 1;
}

// Namespace ai/ai_shared
// Params 6, eflags: 0x0
// Checksum 0x6311de81, Offset: 0xbe8
// Size: 0x424
function shoot_at_target(mode, target, tag, duration, sethealth, ignorefirstshotwait) {
    assert(isdefined(self));
    if (!isdefined(self)) {
        return;
    }
    self endon(#"death", #"stop_shoot_at_target");
    assert(isdefined(target), "<unknown string>");
    assert(isdefined(mode), "<unknown string>");
    mode_flag = mode === "normal" || mode === "shoot_until_target_dead" || mode === "kill_within_time";
    assert(mode_flag, "<unknown string>");
    if (isdefined(duration)) {
        assert(duration >= 0, "<unknown string>");
    } else {
        duration = 0;
    }
    if (isdefined(sethealth) && isdefined(target)) {
        target.health = sethealth;
    }
    if (!isdefined(target) || mode === "shoot_until_target_dead" && target.health <= 0) {
        return;
    }
    if (isdefined(self.var_728f218b)) {
        if (!self [[ self.var_728f218b ]]()) {
            return;
        }
    }
    if (isdefined(tag) && tag != "") {
        self setentitytarget(target, 1, tag);
    } else {
        self setentitytarget(target, 1);
    }
    self.start_duration_comp = 0;
    switch (mode) {
    case #"normal":
        break;
    case #"shoot_until_target_dead":
        duration = -1;
        break;
    case #"kill_within_time":
        target damagemode("next_shot_kills");
        break;
    }
    if (isvehicle(self)) {
        self util::clearallcooldowns();
    }
    if (ignorefirstshotwait === 1) {
        self.start_duration_comp = 1;
    } else {
        self thread wait_for_shoot();
    }
    if (isdefined(duration) && isdefined(target) && target.health > 0) {
        if (duration >= 0) {
            elapsed = 0;
            while (isdefined(target) && target.health > 0 && elapsed <= duration) {
                elapsed += 0.05;
                if (!is_true(self.start_duration_comp)) {
                    elapsed = 0;
                }
                waitframe(1);
            }
            if (isdefined(target) && mode == "kill_within_time") {
                self.perfectaim = 1;
                self.aim_set_by_shoot_at_target = 1;
                target waittill(#"death");
            }
        } else if (duration == -1) {
            target waittill(#"death");
        }
    }
    stop_shoot_at_target();
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x560cd931, Offset: 0x1018
// Size: 0x7e
function stop_shoot_at_target() {
    self clearentitytarget();
    if (isdefined(self.var_e892f39b)) {
        self [[ self.var_e892f39b ]]();
    }
    if (is_true(self.aim_set_by_shoot_at_target)) {
        self.perfectaim = 0;
        self.aim_set_by_shoot_at_target = 0;
    }
    self notify(#"stop_shoot_at_target");
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x0
// Checksum 0x38420b6, Offset: 0x10a0
// Size: 0x2c
function wait_until_done_speaking() {
    self endon(#"death");
    while (self.isspeaking) {
        waitframe(1);
    }
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd1d8d6dc, Offset: 0x10d8
// Size: 0x48a
function function_620eeb6b(goalent) {
    if (is_true(self.var_8f561628)) {
        self.var_2925fedc = undefined;
    }
    if (isdefined(goalent) && !isvec(goalent) && isdefined(goalent.script_likelyenemy)) {
        linkedstructs = struct::get_array(goalent.script_likelyenemy, "script_likelyenemy");
        targetent = undefined;
        var_b266f03e = "";
        if (self.team == #"allies") {
            var_b266f03e = "ai_likelyenemydir_allies";
        } else if (self.team == #"axis") {
            var_b266f03e = "ai_likelyenemydir_axis";
        }
        foreach (struct in linkedstructs) {
            if (struct.variantname === var_b266f03e) {
                if (isdefined(targetent)) {
                    assertmsg("<unknown string>" + var_b266f03e + "<unknown string>");
                }
                if (goalent == struct) {
                    assertmsg("<unknown string>");
                }
                targetent = struct;
            }
        }
        foreach (struct in linkedstructs) {
            if (struct.variantname === "ai_likelyenemydir") {
                if (isdefined(targetent)) {
                    assertmsg("<unknown string>");
                }
                if (goalent == struct) {
                    assertmsg("<unknown string>");
                }
                targetent = struct;
            }
        }
        if (!isdefined(targetent)) {
            linkedents = getentarray(goalent.script_likelyenemy, "script_likelyenemy");
            linkednodes = getnodearray(goalent.script_likelyenemy, "script_likelyenemy");
            var_d1535971 = arraycombine(arraycombine(linkedents, linkednodes), linkedstructs);
            var_2188535d = array::exclude(var_d1535971, goalent);
            if (var_2188535d.size == 1) {
                targetent = var_2188535d[0];
            } else {
                var_215ed720 = "";
                foreach (target in var_2188535d) {
                    var_215ed720 += " " + target.origin;
                }
                assertmsg("<unknown string>" + var_215ed720);
            }
        }
        if (!isdefined(targetent)) {
            assertmsg("<unknown string>");
        }
        self.var_2925fedc = targetent.origin;
        self.var_8f561628 = 1;
    }
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x3c019aa1, Offset: 0x1570
// Size: 0x56
function function_54115a91(goal) {
    self function_620eeb6b(goal);
    if (isdefined(goal) && ispathnode(goal)) {
        self.var_11b1735a = 1;
    }
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd5ae4433, Offset: 0x15d0
// Size: 0x3c
function set_goal_node(node) {
    self setgoal(node);
    self function_54115a91(node);
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe38b7429, Offset: 0x1618
// Size: 0x3c
function set_goal_ent(ent) {
    self setgoal(ent);
    self function_54115a91(ent);
}

// Namespace ai/ai_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xac5ba3ef, Offset: 0x1660
// Size: 0x130
function set_goal(value, key = "targetname", b_force = 0) {
    goal = getnode(value, key);
    if (isdefined(goal)) {
        self setgoal(goal, b_force);
    } else {
        goal = getent(value, key);
        if (isdefined(goal)) {
            self setgoal(goal, b_force);
        } else {
            goal = struct::get(value, key);
            if (isdefined(goal)) {
                self setgoal(goal.origin, b_force);
            }
        }
    }
    self function_54115a91(goal);
    return goal;
}

// Namespace ai/ai_shared
// Params 5, eflags: 0x2 linked
// Checksum 0xe61c83ea, Offset: 0x1798
// Size: 0xc4
function force_goal(goto, b_shoot = 1, str_end_on, b_keep_colors = 0, b_should_sprint = 0) {
    self endon(#"death");
    s_tracker = spawnstruct();
    self thread _force_goal(s_tracker, goto, b_shoot, str_end_on, b_keep_colors, b_should_sprint);
    s_tracker waittill(#"done");
}

// Namespace ai/ai_shared
// Params 6, eflags: 0x2 linked
// Checksum 0x924b4b4e, Offset: 0x1868
// Size: 0x4e8
function _force_goal(s_tracker, goto, b_shoot = 1, str_end_on, b_keep_colors = 0, b_should_sprint = 0) {
    self endon(#"death");
    self notify(#"new_force_goal");
    flag::wait_till_clear("force_goal");
    flag::set(#"force_goal");
    color_enabled = 0;
    if (!b_keep_colors) {
        if (isdefined(colors::get_force_color())) {
            color_enabled = 1;
            self colors::disable();
        }
    }
    allowpain = self.allowpain;
    ignoresuppression = self.ignoresuppression;
    grenadeawareness = self.grenadeawareness;
    if (!b_shoot) {
        self val::set(#"ai_forcegoal", "ignoreall", 1);
    } else if (self has_behavior_attribute("move_mode")) {
        var_a5151bf = self get_behavior_attribute("move_mode");
        self set_behavior_attribute("move_mode", "rambo");
    }
    if (b_should_sprint && self has_behavior_attribute("sprint")) {
        self set_behavior_attribute("sprint", 1);
    }
    self.ignoresuppression = 1;
    self.grenadeawareness = 0;
    self val::set(#"ai_forcegoal", "ignoreme", 1);
    self disable_pain();
    if (!isplayer(self)) {
        self val::set(#"ai_forcegoal", "push_player", 1);
    }
    if (isdefined(goto)) {
        self setgoal(goto, 1);
    }
    self function_54115a91(goto);
    self waittill(#"goal", #"new_force_goal", str_end_on);
    if (color_enabled) {
        colors::enable();
    }
    if (!isplayer(self)) {
        self val::reset(#"ai_forcegoal", "push_player");
    }
    self clearforcedgoal();
    self val::reset(#"ai_forcegoal", "ignoreme");
    self val::reset(#"ai_forcegoal", "ignoreall");
    if (is_true(allowpain)) {
        self enable_pain();
    }
    if (self has_behavior_attribute("sprint")) {
        self set_behavior_attribute("sprint", 0);
    }
    if (isdefined(var_a5151bf)) {
        self set_behavior_attribute("move_mode", var_a5151bf);
    }
    self.ignoresuppression = ignoresuppression;
    self.grenadeawareness = grenadeawareness;
    flag::clear(#"force_goal");
    s_tracker notify(#"done");
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x0
// Checksum 0xe47e5145, Offset: 0x1d58
// Size: 0x16
function stoppainwaitinterval() {
    self notify(#"painwaitintervalremove");
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x37e0041, Offset: 0x1d78
// Size: 0x46
function private _allowpainrestore() {
    self endon(#"death");
    self waittill(#"painwaitintervalremove", #"painwaitinterval");
    self.allowpain = 1;
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x0
// Checksum 0xc6210c91, Offset: 0x1dc8
// Size: 0xf6
function painwaitinterval(msec) {
    self endon(#"death");
    self notify(#"painwaitinterval");
    self endon(#"painwaitinterval", #"painwaitintervalremove");
    self thread _allowpainrestore();
    if (!isdefined(msec) || msec < 20) {
        msec = 20;
    }
    while (isalive(self)) {
        self waittill(#"pain");
        self.allowpain = 0;
        wait(float(msec) / 1000);
        self.allowpain = 1;
    }
}

// Namespace ai/ai_shared
// Params 2, eflags: 0x0
// Checksum 0x33f53790, Offset: 0x1ec8
// Size: 0x2bc
function bloody_death(n_delay, hit_loc) {
    if (!isdefined(self)) {
        return;
    }
    self endon(#"death");
    if (isdefined(n_delay)) {
        wait(n_delay);
    }
    if (!isalive(self)) {
        return;
    }
    if (isdefined(hit_loc)) {
        assert(isinarray(array("<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>"), hit_loc), "<unknown string>");
    } else {
        hit_loc = array::random(array("helmet", "head", "neck", "torso_upper", "torso_mid", "torso_lower", "right_arm_upper", "left_arm_upper", "right_arm_lower", "left_arm_lower", "right_hand", "left_hand", "right_leg_upper", "left_leg_upper", "right_leg_lower", "left_leg_lower", "right_foot", "left_foot", "gun", "riotshield"));
    }
    if (is_true(self.var_4b5540a0)) {
        self delete();
        return;
    }
    if (!self flag::get("in_action")) {
        util::stop_magic_bullet_shield(self);
        self dodamage(self.health + 100, self.origin, undefined, undefined, hit_loc);
        self kill();
    }
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x0
// Checksum 0x9cb66046, Offset: 0x2190
// Size: 0x4a
function shouldregisterclientfieldforarchetype(archetype) {
    if (is_true(level.clientfieldaicheck) && !isarchetypeloaded(archetype)) {
        return false;
    }
    return true;
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x9a6b2dda, Offset: 0x21e8
// Size: 0xcc
function set_protect_ent(entity) {
    if (!isdefined(entity.protect_tactical_influencer) && sessionmodeiscampaigngame()) {
        teammask = util::getteammask(self.team);
        entity.protect_tactical_influencer = createtacticalinfluencer("protect_entity_influencer_def", entity, teammask);
    }
    self.protectent = entity;
    if (isactor(self)) {
        self setblackboardattribute("_defend", "defend_enabled");
    }
}

// Namespace ai/ai_shared
// Params 2, eflags: 0x0
// Checksum 0xb9dc1bcf, Offset: 0x22c0
// Size: 0x10c
function set_group_protect_ent(e_ent_to_protect, defend_volume_name_or_ent) {
    a_defenders = self;
    if (!isdefined(a_defenders)) {
        a_defenders = [];
    } else if (!isarray(a_defenders)) {
        a_defenders = array(a_defenders);
    }
    if (isstring(defend_volume_name_or_ent)) {
        vol_defend = getent(defend_volume_name_or_ent, "targetname");
    } else if (isentity(defend_volume_name_or_ent)) {
        vol_defend = defend_volume_name_or_ent;
    }
    array::run_all(a_defenders, &setgoal, vol_defend, 1);
    array::thread_all(a_defenders, &set_protect_ent, e_ent_to_protect);
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x0
// Checksum 0x40c5b93d, Offset: 0x23d8
// Size: 0x4c
function remove_protect_ent() {
    self.protectent = undefined;
    if (isactor(self)) {
        self setblackboardattribute("_defend", "defend_disabled");
    }
}

// Namespace ai/ai_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x1c6eeb0b, Offset: 0x2430
// Size: 0x86
function t_cylinder(origin, radius, halfheight) {
    struct = spawnstruct();
    struct.type = 1;
    struct.origin = origin;
    struct.radius = float(radius);
    struct.halfheight = float(halfheight);
    return struct;
}

// Namespace ai/ai_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xb4ae6a80, Offset: 0x24c0
// Size: 0xe2
function function_470c0597(center, halfsize, angles) {
    assert(isvec(center));
    assert(isvec(halfsize));
    assert(isvec(angles));
    struct = spawnstruct();
    struct.type = 2;
    struct.center = center;
    struct.halfsize = halfsize;
    struct.angles = angles;
    return struct;
}

// Namespace ai/ai_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x4f1eced, Offset: 0x25b0
// Size: 0x274
function function_1628d95b(cansee = 0, var_9a21f98d = 1, overrideorigin = self.origin) {
    var_56203bf4 = function_4d8c71ce(util::get_enemy_team(self.team), #"team3");
    nearesttarget = undefined;
    var_46e1d165 = undefined;
    foreach (target in var_56203bf4) {
        if (!isalive(target) || is_true(target.var_becd4d91) || target function_41b04632()) {
            continue;
        }
        if (cansee && var_9a21f98d) {
            if (!self cansee(target)) {
                continue;
            }
        } else if (cansee && !var_9a21f98d) {
            targetpoint = isdefined(target.var_88f8feeb) ? target.var_88f8feeb : target getcentroid();
            if (!sighttracepassed(self geteye(), targetpoint, 0, target)) {
                continue;
            }
        }
        distsq = distancesquared(overrideorigin, target.origin);
        if (!isdefined(nearesttarget) || distsq < var_46e1d165) {
            nearesttarget = target;
            var_46e1d165 = distsq;
        }
    }
    return nearesttarget;
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x0
// Checksum 0x78717ce4, Offset: 0x2830
// Size: 0x32
function function_31a31a25(var_9a21f98d = 1) {
    return function_1628d95b(1, var_9a21f98d);
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x35703cfb, Offset: 0x2870
// Size: 0x48
function function_41b04632() {
    return isdefined(self.targetname) && self.targetname == "destructible" && !isdefined(getent(self.target, "targetname"));
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x0
// Checksum 0x78fbe1ee, Offset: 0x28c0
// Size: 0x110
function function_63734291(enemy) {
    if (!isdefined(enemy)) {
        return false;
    }
    var_aba9ee4c = 1;
    if (isdefined(self.var_ffa507cd)) {
        var_e1ea86de = self.var_ffa507cd;
        if (var_e1ea86de < randomfloat(1)) {
            var_aba9ee4c = 0;
        }
    }
    if (var_aba9ee4c && isvehicle(enemy) && !is_true(enemy.var_c95dcb15)) {
        dist_squared = distancesquared(self.origin, enemy.origin);
        if (dist_squared >= 562500) {
            enemy notify(#"hash_4853a85e5ddc4a47");
            return true;
        }
    }
    return false;
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x0
// Checksum 0xf09f64ac, Offset: 0x29d8
// Size: 0x68
function function_28aab32a() {
    if (!is_true(self.var_28aab32a) || is_true(self.var_c2986b66) || is_true(self.var_b736fc8b)) {
        return false;
    }
    return true;
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x0
// Checksum 0x5d994643, Offset: 0x2a48
// Size: 0xde
function stun(duration = self.var_95d94ac4) {
    if (!isdefined(duration) || !is_true(self.var_28aab32a) || is_true(self.var_c2986b66) || is_true(self.var_b736fc8b)) {
        return;
    }
    end_time = gettime() + int(duration * 1000);
    if (isdefined(self.var_3d461e6f) && self.var_3d461e6f > end_time) {
        return;
    }
    self.var_3d461e6f = end_time;
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x0
// Checksum 0x1198ee3a, Offset: 0x2b30
// Size: 0x1e
function is_stunned() {
    return isdefined(self.var_3d461e6f) && gettime() < self.var_3d461e6f;
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x0
// Checksum 0xdde824d9, Offset: 0x2b58
// Size: 0xe
function clear_stun() {
    self.var_3d461e6f = undefined;
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x6ac3176d, Offset: 0x2b70
// Size: 0x134
function function_9139c839() {
    if (!isdefined(self.var_76167463)) {
        if (isdefined(self.aisettingsbundle)) {
            settingsbundle = self.aisettingsbundle;
        } else if (isspawner(self) && isdefined(self.aitype)) {
            settingsbundle = function_edf479a3(self.aitype);
        } else if (isvehicle(self) && isdefined(self.scriptbundlesettings)) {
            settingsbundle = getscriptbundle(self.scriptbundlesettings).aisettingsbundle;
        }
        if (!isdefined(settingsbundle)) {
            return undefined;
        }
        self.var_76167463 = settingsbundle;
        if (!isdefined(level.var_e3a467cf)) {
            level.var_e3a467cf = [];
        }
        if (!isdefined(level.var_e3a467cf[self.var_76167463])) {
            level.var_e3a467cf[self.var_76167463] = getscriptbundle(self.var_76167463);
        }
    }
    return level.var_e3a467cf[self.var_76167463];
}

// Namespace ai/ai_shared
// Params 2, eflags: 0x0
// Checksum 0x88b99486, Offset: 0x2cb0
// Size: 0x9a
function function_71919555(var_45302432, fieldname) {
    if (!isdefined(level.var_e3a467cf)) {
        level.var_e3a467cf = [];
    }
    if (!isdefined(level.var_e3a467cf[var_45302432])) {
        level.var_e3a467cf[var_45302432] = getscriptbundle(var_45302432);
    }
    if (isdefined(level.var_e3a467cf[var_45302432])) {
        return level.var_e3a467cf[var_45302432].(fieldname);
    }
    return undefined;
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x0
// Checksum 0x79cc5f8e, Offset: 0x2d58
// Size: 0x80
function function_fc7bd6c7(var_80292228) {
    if (is_true(var_80292228)) {
        if (isfunctionptr(self.var_9a22ab2b)) {
            self thread [[ self.var_9a22ab2b ]]();
        }
        return;
    }
    if (isfunctionptr(self.var_54aff8ae)) {
        self thread [[ self.var_54aff8ae ]]();
    }
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x0
// Checksum 0x65f4c2c6, Offset: 0x2de0
// Size: 0x30
function function_f6060793() {
    if (isfunctionptr(self.var_b84eb531)) {
        self thread [[ self.var_b84eb531 ]]();
    }
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x0
// Checksum 0x4316bded, Offset: 0x2e18
// Size: 0x42
function enable_careful() {
    assert(isai(self), "<unknown string>");
    self.script_careful = 1;
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x0
// Checksum 0xc5a7a428, Offset: 0x2e68
// Size: 0x4e
function disable_careful() {
    assert(isai(self), "<unknown string>");
    self.script_careful = 0;
    self notify(#"hash_365fd8fda5a5a322");
}

// Namespace ai/ai_shared
// Params 11, eflags: 0x0
// Checksum 0x5e37ef4a, Offset: 0x2ec0
// Size: 0x340
function look_at(look_at, priority = 2, var_9e364106 = 1, duration = 0, var_152044ef, var_71e42546, var_a806de0b = 1, no_head = 0, var_3777d080 = 0, blend_time = 0.5, weight = 1) {
    assert(isai(self), "<unknown string>");
    assert(priority >= 0 && priority < 4, "<unknown string>");
    if (!isdefined(self.var_8a068c50)) {
        self.var_8a068c50 = function_191b31f3();
    }
    if (is_true(self.var_8a068c50[priority].set) && !var_9e364106) {
        return false;
    }
    function_e1c5902(var_9e364106);
    self.var_8a068c50[priority].object = look_at;
    self.var_8a068c50[priority].var_8fbcda45 = var_152044ef;
    self.var_8a068c50[priority].var_eba0d1fe = var_71e42546;
    self.var_8a068c50[priority].var_a806de0b = var_a806de0b;
    self.var_8a068c50[priority].no_head = no_head;
    self.var_8a068c50[priority].var_3777d080 = var_3777d080;
    self.var_8a068c50[priority].blend_time = blend_time;
    self.var_8a068c50[priority].weight = weight;
    if (isdefined(look_at)) {
        self.var_8a068c50[priority].set = 1;
    }
    if (duration > 0 && duration < 1) {
        self.var_8a068c50[priority].var_51bcf38d = 1;
    }
    self notify("look_at_" + string(priority) + "_updated");
    if (duration > 0) {
        self thread function_4760d8c0(priority, duration);
    }
    function_fcd4fcb7();
    return true;
}

// Namespace ai/ai_shared
// Params 2, eflags: 0x6 linked
// Checksum 0x9fc23850, Offset: 0x3208
// Size: 0x8c
function private function_4760d8c0(priority, duration) {
    self notify("49b92de7a3dcbca4");
    self endon("49b92de7a3dcbca4");
    self endon("look_at_" + string(priority) + "_updated", #"death");
    wait(duration);
    function_e1c5902(priority);
    function_fcd4fcb7();
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x93a16810, Offset: 0x32a0
// Size: 0x50
function private function_191b31f3() {
    prioritystack = [];
    for (stackindex = 0; stackindex < 4; stackindex++) {
        prioritystack[stackindex] = spawnstruct();
    }
    return prioritystack;
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xbb493932, Offset: 0x32f8
// Size: 0xa6
function private function_91692eaa() {
    if (!isdefined(self.lookat)) {
        self.lookat = {};
    }
    for (stackindex = 0; stackindex < 4; stackindex++) {
        if (is_true(self.var_8a068c50[stackindex].set)) {
            self.lookat = structcopy(self.var_8a068c50[stackindex], 1);
            return;
        }
    }
    self.lookat = {#var_51bcf38d:0};
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x7c2a7d53, Offset: 0x33a8
// Size: 0x1c
function private function_e1c5902(priority) {
    self.var_8a068c50[priority] = {};
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x0
// Checksum 0x8e88a073, Offset: 0x33d0
// Size: 0x74
function function_603b970a() {
    if (!isdefined(self.var_8a068c50)) {
        self.var_8a068c50 = function_191b31f3();
    }
    for (stackindex = 0; stackindex < 4; stackindex++) {
        function_e1c5902(stackindex);
    }
    function_fcd4fcb7();
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x0
// Checksum 0x565cebf5, Offset: 0x3450
// Size: 0x8c
function function_6b85d60d(priority) {
    if (!isdefined(self.var_8a068c50)) {
        self.var_8a068c50 = function_191b31f3();
    }
    assert(priority >= 0 && priority < 4, "<unknown string>");
    function_e1c5902(priority);
    function_fcd4fcb7();
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x7da732f7, Offset: 0x34e8
// Size: 0x76
function function_5e5653d3() {
    if (self isinscriptedstate() && !is_true(self._scene_object._s.var_db255011)) {
        return false;
    }
    if (self flag::get("scripted_lookat_disable")) {
        return false;
    }
    return true;
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x49df14ac, Offset: 0x3568
// Size: 0x35c
function private function_fcd4fcb7() {
    function_91692eaa();
    object = self.lookat.object;
    var_8fbcda45 = self.lookat.var_8fbcda45;
    var_eba0d1fe = self.lookat.var_eba0d1fe;
    var_a806de0b = self.lookat.var_a806de0b;
    no_head = self.lookat.no_head;
    var_3777d080 = self.lookat.var_3777d080;
    blend_time = self.lookat.blend_time;
    weight = self.lookat.weight;
    if (!function_5e5653d3()) {
        object = undefined;
    }
    if (isdefined(object)) {
        var_9d112229 = &lookatentity;
        var_77a9fe9e = &lookatpos;
        if (is_true(var_8fbcda45)) {
            var_9d112229 = &aimatentityik;
            if (is_true(var_eba0d1fe)) {
                var_77a9fe9e = &function_2031372a;
            } else {
                var_77a9fe9e = &aimatposik;
            }
            if (isentity(object)) {
                self [[ var_9d112229 ]](object, blend_time, weight);
            } else if (!isvec(object)) {
                self [[ var_77a9fe9e ]](object.origin, blend_time, weight);
            } else {
                self [[ var_77a9fe9e ]](object, blend_time, weight);
            }
        } else {
            if (is_true(var_eba0d1fe)) {
                var_77a9fe9e = &lookatangles;
            }
            if (isentity(object)) {
                self [[ var_9d112229 ]](object, var_a806de0b, no_head, var_3777d080, blend_time, weight);
            } else if (!isvec(object)) {
                self [[ var_77a9fe9e ]](object.origin, var_a806de0b, no_head, var_3777d080, blend_time, weight);
            } else {
                self [[ var_77a9fe9e ]](object, var_a806de0b, no_head, var_3777d080, blend_time, weight);
            }
        }
    } else {
        self lookatentity(undefined);
        self lookatpos(undefined);
    }
    /#
        self thread function_1571b7b6(object, is_true(self.lookat.var_51bcf38d));
    #/
}

/#

    // Namespace ai/ai_shared
    // Params 2, eflags: 0x4
    // Checksum 0xcf5e6df9, Offset: 0x38d0
    // Size: 0x1be
    function private function_1571b7b6(object, var_dfb8e94b) {
        self endon(#"death", #"entitydeleted");
        self notify("<unknown string>");
        self endon("<unknown string>");
        while (isdefined(object) && function_45ef77da()) {
            from = self geteye();
            to = object;
            if (!isvec(to) && issentient(to)) {
                to = to geteye();
            }
            looking = anglestoforward(self gettagangles("<unknown string>"));
            line(from, from + looking * 500, (0.75, 0.75, 0.75), 1, 0, 1);
            color = (1, 1, 0);
            if (is_true(var_dfb8e94b)) {
                color = (1, 1, 1);
            }
            line(from, to, color, 1, 0, 1);
            waitframe(1);
        }
    }

    // Namespace ai/ai_shared
    // Params 0, eflags: 0x0
    // Checksum 0x25d3bc51, Offset: 0x3a98
    // Size: 0x54
    function function_45ef77da() {
        dvar = getdvarstring(#"hash_4493b356ca38ab5e", "<unknown string>");
        return int(dvar);
    }

#/

// Namespace ai/ai_shared
// Params 2, eflags: 0x0
// Checksum 0xa406d8a1, Offset: 0x3af8
// Size: 0xf4
function function_fd90d41c(target, tag) {
    if (!isdefined(target)) {
        self lookatentity();
        if (isdefined(self.var_875e35a2)) {
            self.var_875e35a2 delete();
        }
        return;
    }
    if (!isdefined(self.var_875e35a2)) {
        self.var_875e35a2 = util::spawn_model("tag_origin");
    }
    assert(isdefined(self.var_875e35a2));
    self.var_875e35a2 linkto(target, tag, (0, 0, 0), (0, 0, 0));
    self lookatentity(self.var_875e35a2);
}

// Namespace ai/ai_shared
// Params 2, eflags: 0x0
// Checksum 0xdef85285, Offset: 0x3bf8
// Size: 0xf4
function function_71915b43(target, tag) {
    if (!isdefined(target)) {
        self aimatentityik();
        if (isdefined(self.var_875e35a2)) {
            self.var_875e35a2 delete();
        }
        return;
    }
    if (!isdefined(self.var_875e35a2)) {
        self.var_875e35a2 = util::spawn_model("tag_origin");
    }
    assert(isdefined(self.var_875e35a2));
    self.var_875e35a2 linkto(target, tag, (0, 0, 0), (0, 0, 0));
    self aimatentityik(self.var_875e35a2);
}

// Namespace ai/ai_shared
// Params 3, eflags: 0x0
// Checksum 0x95e8dbef, Offset: 0x3cf8
// Size: 0x60
function poi_enable(shouldenable, firstpoint, var_8fbcda45) {
    if (isfunctionptr(level.poi.fnenable)) {
        self thread [[ level.poi.fnenable ]](shouldenable, firstpoint, var_8fbcda45);
    }
}

// Namespace ai/ai_shared
// Params 6, eflags: 0x0
// Checksum 0x124cfd4a, Offset: 0x3d60
// Size: 0x80
function function_3a5e9945(shouldenable, yawmin, yawmax, pitchmin, pitchmax, var_8fbcda45) {
    if (isfunctionptr(level.poi.var_38974483)) {
        self thread [[ level.poi.var_38974483 ]](shouldenable, yawmin, yawmax, pitchmin, pitchmax, var_8fbcda45);
    }
}

