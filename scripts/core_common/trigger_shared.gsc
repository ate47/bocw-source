// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\teleport_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace trigger;

// Namespace trigger/trigger_shared
// Params 0, eflags: 0x5
// Checksum 0x665afa31, Offset: 0x238
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"trigger", &preinit, undefined, undefined, undefined);
}

// Namespace trigger/trigger_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x6bef66dd, Offset: 0x280
// Size: 0x3c
function private preinit() {
    callback::function_27d9ab8(&trigger_think);
    level.var_53af20e = &set_flag_permissions;
}

// Namespace trigger/trigger_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x602f8469, Offset: 0x2c8
// Size: 0xdc
function add_handler(var_60ffbed2, func_handler, func_init, var_114fa26c = is_trigger_once()) {
    if (isfunctionptr(var_60ffbed2) ? [[ var_60ffbed2 ]]() : isdefined(self.(var_60ffbed2))) {
        if (isdefined(func_handler)) {
            if (var_114fa26c) {
                self callback::on_trigger_once(func_handler);
            } else {
                self callback::on_trigger(func_handler);
            }
        }
        if (isfunctionptr(func_init)) {
            [[ func_init ]](var_60ffbed2);
        }
    }
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf9c59c82, Offset: 0x3b0
// Size: 0x5c
function init_flags(str_kvp) {
    tokens = util::create_flags_and_return_tokens(self.(str_kvp));
    add_tokens_to_trigger_flags(tokens);
    update_based_on_flags();
}

// Namespace trigger/trigger_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x95c8d99a, Offset: 0x418
// Size: 0x2c4
function trigger_think() {
    self endon(#"death");
    add_handler("target", &trigger_spawner);
    add_handler("script_flag_true", undefined, &init_flags);
    add_handler("script_flag_true_any", undefined, &init_flags);
    add_handler("script_flag_false_any", undefined, &init_flags);
    add_handler("script_flag_false", undefined, &init_flags);
    add_handler("script_flag_set", &flag_set_trigger, &init_flags);
    add_handler("script_flag_clear", &flag_clear_trigger, &init_flags);
    add_handler("script_trigger_group", &trigger_group);
    add_handler("script_notify", &trigger_notify);
    add_handler("script_killspawner", &kill_spawner_trigger);
    add_handler("script_teleport_location", &teleport::team);
    add_handler(&is_trigger_once, &trigger_once);
    if (isdefined(self.script_flag_set_on_touching) || isdefined(self.script_flag_set_on_not_touching)) {
        level thread script_flag_set_touching(self);
    }
    if (is_look_trigger()) {
        level thread look_trigger(self);
        s_info = self waittill(#"trigger_look");
        self thread callback::codecallback_trigger(s_info, 1);
    }
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x0
// Checksum 0x6af1a29d, Offset: 0x6e8
// Size: 0x4c
function add_flags(flags) {
    trigger_flags = function_27f2ef17(self);
    function_4e3bb793(self, trigger_flags | flags);
}

// Namespace trigger/trigger_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xd28ef4ed, Offset: 0x740
// Size: 0x1c8
function get_trigger_look_target() {
    if (isdefined(self.target)) {
        a_potential_targets = getentarray(self.target, "targetname");
        a_targets = [];
        foreach (target in a_potential_targets) {
            if (target.classname === "script_origin") {
                if (!isdefined(a_targets)) {
                    a_targets = [];
                } else if (!isarray(a_targets)) {
                    a_targets = array(a_targets);
                }
                a_targets[a_targets.size] = target;
            }
        }
        a_potential_target_structs = struct::get_array(self.target);
        a_targets = arraycombine(a_targets, a_potential_target_structs, 1, 0);
        if (a_targets.size > 0) {
            assert(a_targets.size == 1, "<unknown string>" + self.origin + "<unknown string>");
            e_target = a_targets[0];
        }
    }
    return isdefined(e_target) ? e_target : self;
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x7d289733, Offset: 0x910
// Size: 0x210
function look_trigger(trigger) {
    trigger endon(#"death");
    e_target = trigger get_trigger_look_target();
    if (isdefined(trigger.script_flag) && !isdefined(level.flag[trigger.script_flag])) {
        level function_ac2f203a(trigger.script_flag);
    }
    a_parameters = [];
    if (isdefined(trigger.script_parameters)) {
        a_parameters = strtok(trigger.script_parameters, ",; ");
    }
    b_ads_check = isinarray(a_parameters, "check_ads");
    while (true) {
        waitresult = trigger waittill(#"trigger");
        e_other = waitresult.activator;
        if (isplayer(e_other)) {
            while (isdefined(e_other) && e_other istouching(trigger)) {
                if (e_other util::is_looking_at(e_target, trigger.script_dot, is_true(trigger.script_trace)) && (!b_ads_check || !e_other util::is_ads())) {
                    trigger notify(#"trigger_look", waitresult);
                }
                waitframe(1);
            }
            continue;
        }
        assertmsg("<unknown string>");
    }
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x45fcfe51, Offset: 0xb28
// Size: 0x120
function trigger_spawner(*s_info) {
    a_ai_spawners = getspawnerarray(self.target, "targetname");
    foreach (sp in a_ai_spawners) {
        if (isdefined(sp)) {
            if (isvehiclespawner(sp)) {
                level thread vehicle::_vehicle_spawn(sp);
                continue;
            }
            assert(isactorspawner(sp));
            sp thread trigger_spawner_spawn();
        }
    }
}

// Namespace trigger/trigger_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x664c0d54, Offset: 0xc50
// Size: 0x5c
function trigger_spawner_spawn() {
    self endon(#"death");
    self flag::script_flag_wait();
    self util::script_delay();
    self spawner::spawn();
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc57758e1, Offset: 0xcb8
// Size: 0xd4
function trigger_notify(s_info) {
    if (isdefined(self.target)) {
        a_target_ents = getentarray(self.target, "targetname");
        foreach (notify_ent in a_target_ents) {
            notify_ent notify(self.script_notify, s_info);
        }
    }
    level notify(self.script_notify, s_info);
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xaccbae2e, Offset: 0xd98
// Size: 0x80
function function_ac2f203a(str_flag) {
    if (!level flag::exists(str_flag)) {
        level flag::init(str_flag);
    }
    if (!isdefined(level.trigger_flags)) {
        level.trigger_flags = [];
    }
    if (!isdefined(level.trigger_flags[str_flag])) {
        level.trigger_flags[str_flag] = [];
    }
}

// Namespace trigger/trigger_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x73b7a577, Offset: 0xe20
// Size: 0xa8
function flag_set_trigger() {
    a_str_flags = util::create_flags_and_return_tokens(self.script_flag_set);
    foreach (str_flag in a_str_flags) {
        level flag::set(str_flag);
    }
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x8d8c83a0, Offset: 0xed0
// Size: 0xb0
function flag_clear_trigger(*s_info) {
    a_str_flags = util::create_flags_and_return_tokens(self.script_flag_clear);
    foreach (str_flag in a_str_flags) {
        level flag::clear(str_flag);
    }
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xdecb7164, Offset: 0xf88
// Size: 0x102
function add_tokens_to_trigger_flags(tokens) {
    for (i = 0; i < tokens.size; i++) {
        flag = tokens[i];
        if (!isdefined(level.trigger_flags[flag])) {
            level.trigger_flags[flag] = [];
        } else if (!isarray(level.trigger_flags[flag])) {
            level.trigger_flags[flag] = array(level.trigger_flags[flag]);
        }
        if (!isinarray(level.trigger_flags[flag], self)) {
            level.trigger_flags[flag][level.trigger_flags[flag].size] = self;
        }
    }
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x0
// Checksum 0xc2b06df2, Offset: 0x1098
// Size: 0x180
function friendly_respawn_trigger(trigger) {
    trigger endon(#"death");
    spawners = getentarray(trigger.target, "targetname");
    assert(spawners.size == 1, "<unknown string>" + trigger.target + "<unknown string>");
    spawner = spawners[0];
    assert(!isdefined(spawner.script_forcecolor), "<unknown string>" + spawner.origin + "<unknown string>");
    spawners = undefined;
    spawner endon(#"death");
    while (true) {
        trigger waittill(#"trigger");
        if (isdefined(trigger.script_forcecolor)) {
            level.respawn_spawners_specific[trigger.script_forcecolor] = spawner;
        } else {
            level.respawn_spawner = spawner;
        }
        level flag::set("respawn_friendlies");
        wait(0.5);
    }
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x0
// Checksum 0xbe63bde8, Offset: 0x1220
// Size: 0x70
function friendly_respawn_clear(trigger) {
    trigger endon(#"death");
    while (true) {
        trigger waittill(#"trigger");
        level flag::clear("respawn_friendlies");
        wait(0.5);
    }
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe236cfdd, Offset: 0x1298
// Size: 0x1f8
function script_flag_set_touching(trigger) {
    trigger endon(#"death");
    if (isdefined(trigger.script_flag_set_on_touching)) {
        level function_ac2f203a(trigger.script_flag_set_on_touching);
    }
    if (isdefined(trigger.script_flag_set_on_not_touching)) {
        level function_ac2f203a(trigger.script_flag_set_on_not_touching);
    }
    trigger thread _detect_touched();
    while (true) {
        var_b26d1711 = trigger.script_touched;
        trigger.script_touched = 0;
        waitframe(1);
        waittillframeend();
        if (!trigger.script_touched) {
            waitframe(1);
            waittillframeend();
        }
        if (var_b26d1711 !== trigger.script_touched && (trigger istriggerenabled() || !is_true(trigger.var_949253fc))) {
            if (trigger.script_touched) {
                if (isdefined(trigger.script_flag_set_on_touching)) {
                    level flag::set(trigger.script_flag_set_on_touching);
                }
                if (isdefined(trigger.script_flag_set_on_not_touching)) {
                    level flag::clear(trigger.script_flag_set_on_not_touching);
                }
                continue;
            }
            if (isdefined(trigger.script_flag_set_on_touching)) {
                level flag::clear(trigger.script_flag_set_on_touching);
            }
            if (isdefined(trigger.script_flag_set_on_not_touching)) {
                level flag::set(trigger.script_flag_set_on_not_touching);
            }
        }
    }
}

// Namespace trigger/trigger_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb975432d, Offset: 0x1498
// Size: 0x42
function _detect_touched() {
    self endon(#"death");
    while (true) {
        self waittill(#"trigger");
        self.script_touched = 1;
    }
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x0
// Checksum 0x15669e06, Offset: 0x14e8
// Size: 0x70
function trigger_delete_on_touch(trigger) {
    while (true) {
        waitresult = trigger waittill(#"trigger");
        other = waitresult.activator;
        if (isdefined(other)) {
            other delete();
        }
    }
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x7ad2b871, Offset: 0x1560
// Size: 0xa4
function trigger_once(*s_info) {
    waittillframeend();
    waittillframeend();
    if (isdefined(self)) {
        /#
            println("<unknown string>");
            println("<unknown string>" + self getentitynumber() + "<unknown string>" + self.origin);
            println("<unknown string>");
        #/
        self delete();
    }
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x42 linked
// Checksum 0x24814820, Offset: 0x1610
// Size: 0xe8
function get_all(...) {
    if (vararg.size == 1 && isarray(vararg[0])) {
        a_vararg = vararg[0];
    } else {
        a_vararg = vararg;
    }
    a_all = getentarraybytype(20);
    if (a_vararg.size) {
        for (i = a_all.size - 1; i >= 0; i--) {
            if (!isinarray(a_vararg, a_all[i].classname)) {
                arrayremoveindex(a_all, i);
            }
        }
    }
    return a_all;
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x42 linked
// Checksum 0x8c662510, Offset: 0x1700
// Size: 0x72
function is_trigger_of_type(...) {
    if (vararg.size == 1 && isarray(vararg[0])) {
        a_vararg = vararg[0];
    } else {
        a_vararg = vararg;
    }
    return isinarray(a_vararg, self.classname);
}

// Namespace trigger/trigger_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xb217081e, Offset: 0x1780
// Size: 0x1b0
function wait_till(str_name, str_key = "targetname", e_entity, b_assert = 1) {
    if (isdefined(str_name)) {
        triggers = getentarray(str_name, str_key);
        assert(!b_assert || triggers.size > 0, "<unknown string>" + str_name + "<unknown string>" + str_key);
        if (triggers.size > 0) {
            if (triggers.size == 1) {
                trigger_hit = triggers[0];
                trigger_hit _trigger_wait(e_entity);
            } else {
                s_tracker = spawnstruct();
                array::thread_all(triggers, &_trigger_wait_think, s_tracker, e_entity);
                waitresult = s_tracker waittill(#"trigger");
                trigger_hit = waitresult.trigger;
                trigger_hit.who = waitresult.activator;
            }
            return trigger_hit;
        }
        return;
    }
    _trigger_wait(e_entity);
    return self;
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe7daadba, Offset: 0x1938
// Size: 0x272
function _trigger_wait(e_entity) {
    self endon(#"death");
    if (isdefined(e_entity)) {
        e_entity endon(#"death");
    }
    if (!isdefined(self.delaynotify)) {
        self.delaynotify = 0;
    }
    /#
        if (is_look_trigger()) {
            assert(!isarray(e_entity), "<unknown string>");
        } else if (self.classname === "<unknown string>") {
            assert(!isarray(e_entity), "<unknown string>");
        }
    #/
    while (true) {
        if (is_look_trigger()) {
            waitresult = self waittill(#"trigger_look");
            wait(self.delaynotify);
            e_other = waitresult.activator;
            if (isdefined(e_entity)) {
                if (e_other !== e_entity) {
                    continue;
                }
            }
        } else if (self.classname === "trigger_damage") {
            waitresult = self waittill(#"trigger");
            wait(self.delaynotify);
            e_other = waitresult.activator;
            if (isdefined(e_entity)) {
                if (e_other !== e_entity) {
                    continue;
                }
            }
        } else {
            waitresult = self waittill(#"trigger");
            wait(self.delaynotify);
            e_other = waitresult.activator;
            if (isdefined(e_entity)) {
                if (isarray(e_entity)) {
                    if (!array::is_touching(e_entity, self)) {
                        continue;
                    }
                } else if (!e_entity istouching(self) && e_entity !== e_other) {
                    continue;
                }
            }
        }
        break;
    }
    self.who = e_other;
    return e_other;
}

// Namespace trigger/trigger_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x6e2a3a32, Offset: 0x1bb8
// Size: 0x90
function _trigger_wait_think(s_tracker, e_entity) {
    self endon(#"death");
    s_tracker endon(#"trigger");
    e_other = _trigger_wait(e_entity);
    s_tracker notify(#"trigger", {#activator:e_other, #trigger:self});
}

// Namespace trigger/trigger_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x3c62a02e, Offset: 0x1c50
// Size: 0x17c
function use(str_name, str_key = "targetname", ent = getplayers()[0], b_assert = 1) {
    if (isdefined(str_name)) {
        e_trig = getent(str_name, str_key);
        if (!isdefined(e_trig)) {
            if (b_assert) {
                assertmsg("<unknown string>" + str_name + "<unknown string>" + str_key);
            }
            return;
        }
    } else {
        e_trig = self;
        str_name = self.targetname;
    }
    if (isdefined(ent)) {
        e_trig useby(ent);
    } else {
        e_trig useby(e_trig);
    }
    level notify(str_name, ent);
    if (e_trig is_look_trigger()) {
        e_trig notify(#"trigger_look", {#entity:ent});
    }
    return e_trig;
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x8306f269, Offset: 0x1dd8
// Size: 0x8c
function set_flag_permissions(msg) {
    if (!isdefined(level.trigger_flags) || !isdefined(level.trigger_flags[msg])) {
        return;
    }
    arrayremovevalue(level.trigger_flags[msg], undefined);
    array::thread_all(level.trigger_flags[msg], &update_based_on_flags);
}

// Namespace trigger/trigger_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x2f02fefe, Offset: 0x1e70
// Size: 0x23c
function update_based_on_flags() {
    true_on = 1;
    if (isdefined(self.script_flag_true)) {
        tokens = util::create_flags_and_return_tokens(self.script_flag_true);
        for (i = 0; i < tokens.size; i++) {
            if (!level flag::get(tokens[i])) {
                true_on = 0;
                break;
            }
        }
    }
    false_on = 1;
    if (isdefined(self.script_flag_false)) {
        tokens = util::create_flags_and_return_tokens(self.script_flag_false);
        for (i = 0; i < tokens.size; i++) {
            if (level flag::get(tokens[i])) {
                false_on = 0;
                break;
            }
        }
    }
    var_369930e5 = 1;
    if (isdefined(self.script_flag_true_any)) {
        var_369930e5 = 0;
        tokens = util::create_flags_and_return_tokens(self.script_flag_true_any);
        for (i = 0; i < tokens.size; i++) {
            if (level flag::get(tokens[i])) {
                var_369930e5 = 1;
                break;
            }
        }
    }
    var_95bf6d6c = 1;
    if (isdefined(self.script_flag_false_any)) {
        var_95bf6d6c = 0;
        tokens = util::create_flags_and_return_tokens(self.script_flag_false_any);
        for (i = 0; i < tokens.size; i++) {
            if (!level flag::get(tokens[i])) {
                var_95bf6d6c = 1;
                break;
            }
        }
    }
    self triggerenable(true_on && false_on && var_369930e5 && var_95bf6d6c);
}

// Namespace trigger/trigger_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x73076252, Offset: 0x20b8
// Size: 0x46
function is_look_trigger() {
    return isdefined(self.spawnflags) && (self.spawnflags & 256) == 256 && !is_trigger_of_type("trigger_damage");
}

// Namespace trigger/trigger_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xcf74ba63, Offset: 0x2108
// Size: 0x44
function is_trigger_once() {
    return isdefined(self.spawnflags) && (self.spawnflags & 1024) == 1024 || is_trigger_of_type("trigger_once");
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x42 linked
// Checksum 0xefa246ac, Offset: 0x2158
// Size: 0x196
function wait_till_any(...) {
    ent = spawnstruct();
    if (isarray(vararg[0])) {
        a_str_targetnames = vararg[0];
    } else {
        a_str_targetnames = vararg;
    }
    assert(a_str_targetnames.size, "<unknown string>");
    a_triggers = [];
    a_triggers = arraycombine(a_triggers, getentarray(a_str_targetnames[0], "targetname"), 1, 0);
    for (i = 1; i < a_str_targetnames.size; i++) {
        a_triggers = arraycombine(a_triggers, getentarray(a_str_targetnames[i], "targetname"), 1, 0);
    }
    for (i = 0; i < a_triggers.size; i++) {
        ent thread _ent_waits_for_trigger(a_triggers[i]);
    }
    waitresult = ent waittill(#"done");
    return waitresult.trigger;
}

// Namespace trigger/trigger_shared
// Params 2, eflags: 0x0
// Checksum 0xfec46a0b, Offset: 0x22f8
// Size: 0x3a
function wait_for_either(str_targetname1, str_targetname2) {
    trigger = wait_till_any(str_targetname1, str_targetname2);
    return trigger;
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x6103c7fa, Offset: 0x2340
// Size: 0x5e
function _ent_waits_for_trigger(trigger) {
    self endon(#"done");
    trigger wait_till();
    self notify(#"done", {#trigger:trigger});
}

// Namespace trigger/trigger_shared
// Params 3, eflags: 0x0
// Checksum 0xb37afa2b, Offset: 0x23a8
// Size: 0x84
function wait_or_timeout(n_time, str_name, str_key) {
    if (isdefined(n_time)) {
        __s = spawnstruct();
        __s endon(#"timeout");
        __s util::delay_notify(n_time, "timeout");
    }
    wait_till(str_name, str_key);
}

// Namespace trigger/trigger_shared
// Params 4, eflags: 0x0
// Checksum 0x32721877, Offset: 0x2438
// Size: 0xf4
function trigger_on_timeout(n_time, b_cancel_on_triggered = 1, str_name, str_key = "targetname") {
    trig = self;
    if (isdefined(str_name)) {
        trig = getent(str_name, str_key);
    }
    if (b_cancel_on_triggered) {
        if (trig is_look_trigger()) {
            trig endon(#"trigger_look");
        } else {
            trig endon(#"trigger");
        }
    }
    trig endon(#"death");
    wait(n_time);
    trig use();
}

// Namespace trigger/trigger_shared
// Params 2, eflags: 0x0
// Checksum 0x79cfa997, Offset: 0x2538
// Size: 0xb0
function multiple_waits(str_trigger_name, str_trigger_notify) {
    foreach (trigger in getentarray(str_trigger_name, "targetname")) {
        trigger thread multiple_wait(str_trigger_notify);
    }
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xbff9f15b, Offset: 0x25f0
// Size: 0x34
function multiple_wait(str_trigger_notify) {
    level endon(str_trigger_notify);
    self waittill(#"trigger");
    level notify(str_trigger_notify);
}

// Namespace trigger/trigger_shared
// Params 9, eflags: 0x2 linked
// Checksum 0xf5692a8c, Offset: 0x2630
// Size: 0x74
function add_function(trigger, str_remove_on, func, param_1, param_2, param_3, param_4, param_5, param_6) {
    self thread _do_trigger_function(trigger, str_remove_on, func, param_1, param_2, param_3, param_4, param_5, param_6);
}

// Namespace trigger/trigger_shared
// Params 9, eflags: 0x2 linked
// Checksum 0x92334b01, Offset: 0x26b0
// Size: 0xf0
function _do_trigger_function(trigger, str_remove_on, func, param_1, param_2, param_3, param_4, param_5, param_6) {
    self endon(#"death");
    trigger endon(#"death");
    if (isdefined(str_remove_on)) {
        trigger endon(str_remove_on);
    }
    while (true) {
        if (isstring(trigger)) {
            wait_till(trigger);
        } else {
            trigger wait_till();
        }
        util::single_thread(self, func, param_1, param_2, param_3, param_4, param_5, param_6);
    }
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf74b288a, Offset: 0x27a8
// Size: 0x188
function kill_spawner_trigger(*s_info) {
    a_spawners = getspawnerarray(self.script_killspawner, "script_killspawner");
    foreach (sp in a_spawners) {
        sp delete();
    }
    a_ents = getentarray(self.script_killspawner, "script_killspawner");
    foreach (ent in a_ents) {
        if (ent.classname === "spawn_manager" && ent != self) {
            ent delete();
        }
    }
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd821bdf, Offset: 0x2938
// Size: 0xb0
function trigger_group(*s_info) {
    foreach (trig in getentarray(self.script_trigger_group, "script_trigger_group")) {
        if (trig != self) {
            trig delete();
        }
    }
}

// Namespace trigger/trigger_shared
// Params 3, eflags: 0x0
// Checksum 0xea36a3f6, Offset: 0x29f0
// Size: 0x11c
function function_thread(ent, on_enter_payload, on_exit_payload) {
    ent endon(#"death");
    if (!isdefined(self)) {
        return;
    }
    myentnum = self getentitynumber();
    if (ent ent_already_in(myentnum)) {
        return;
    }
    add_to_ent(ent, myentnum);
    if (isdefined(on_enter_payload)) {
        [[ on_enter_payload ]](ent);
    }
    while (isdefined(ent) && isdefined(self) && ent istouching(self)) {
        waitframe(1);
    }
    if (isdefined(ent)) {
        if (isdefined(on_exit_payload)) {
            [[ on_exit_payload ]](ent);
        }
        remove_from_ent(ent, myentnum);
    }
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x4ab6471a, Offset: 0x2b18
// Size: 0x4c
function ent_already_in(var_d35ff8d8) {
    if (!isdefined(self._triggers)) {
        return false;
    }
    if (!isdefined(self._triggers[var_d35ff8d8])) {
        return false;
    }
    if (!self._triggers[var_d35ff8d8]) {
        return false;
    }
    return true;
}

// Namespace trigger/trigger_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x1ef5ed75, Offset: 0x2b70
// Size: 0x40
function add_to_ent(ent, var_d35ff8d8) {
    if (!isdefined(ent._triggers)) {
        ent._triggers = [];
    }
    ent._triggers[var_d35ff8d8] = 1;
}

// Namespace trigger/trigger_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x421d8d35, Offset: 0x2bb8
// Size: 0x4c
function remove_from_ent(ent, var_d35ff8d8) {
    if (!isdefined(ent._triggers)) {
        return;
    }
    if (!isdefined(ent._triggers[var_d35ff8d8])) {
        return;
    }
    ent._triggers[var_d35ff8d8] = 0;
}

// Namespace trigger/trigger_shared
// Params 0, eflags: 0x0
// Checksum 0x65ee0bec, Offset: 0x2c10
// Size: 0x6c
function trigger_wait() {
    self endon(#"trigger");
    if (isdefined(self.targetname)) {
        trig = getent(self.targetname, "target");
        if (isdefined(trig)) {
            trig wait_till();
        }
    }
}

// Namespace trigger/trigger_shared
// Params 2, eflags: 0x40
// Checksum 0x80db8896, Offset: 0x2c88
// Size: 0x114
function run(func, ...) {
    var_3bdd90c2 = 0;
    if (isdefined(self.targetname)) {
        foreach (trig in getentarraybytype(20)) {
            if (trig.target === self.targetname) {
                trig callback::on_trigger(&function_996dfbe2, undefined, self, func, vararg);
                var_3bdd90c2 = 1;
            }
        }
    }
    if (!var_3bdd90c2) {
        util::single_thread_argarray(self, func, vararg);
    }
}

// Namespace trigger/trigger_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x582d8e76, Offset: 0x2da8
// Size: 0x3c
function function_996dfbe2(*s_info, ent, func, a_args) {
    util::single_func_argarray(ent, func, a_args);
}

