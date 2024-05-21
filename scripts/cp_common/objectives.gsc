// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using script_4ccd0c3512b52a10;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace objectives;

// Namespace objectives/objectives
// Params 0, eflags: 0x5
// Checksum 0x45032d4c, Offset: 0x120
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"objectives", &preinit, undefined, undefined, undefined);
}

// Namespace objectives/objectives
// Params 0, eflags: 0x6 linked
// Checksum 0x3f210ab0, Offset: 0x168
// Size: 0x1c
function private preinit() {
    mission.var_c68f10d0 = [];
    mission.var_ac8e2ff9 = [];
}

// Namespace objectives/objectives
// Params 8, eflags: 0x2 linked
// Checksum 0x7d62791b, Offset: 0x190
// Size: 0x514
function set(str_objective, a_targets, var_8c7ec5ce, var_4cfa0710 = str_objective, var_690561dc, show_splash = 1, show_waypoint = 1, var_bfcac307) {
    level flag::wait_till(#"gameplay_started");
    if (isdefined(a_targets)) {
        if (!isdefined(a_targets)) {
            a_targets = [];
        } else if (!isarray(a_targets)) {
            a_targets = array(a_targets);
        }
        if (a_targets.size > 1) {
            scripted(var_4cfa0710, undefined, var_690561dc, show_splash, var_bfcac307);
            function_1de88d60(var_4cfa0710, undefined, 0, a_targets.size);
        }
        foreach (target in a_targets) {
            n_obj_id = gameobjects::get_next_obj_id();
            var_ff48959 = target;
            if (isvec(target)) {
                mission.var_c68f10d0[var_4cfa0710] = n_obj_id;
            } else {
                if (!isdefined(target.a_n_objective_ids)) {
                    target.a_n_objective_ids = [];
                }
                target.a_n_objective_ids[var_4cfa0710] = n_obj_id;
                if (!isentity(target) && isdefined(target.origin)) {
                    var_ff48959 = target.origin;
                }
                if (is_true(var_8c7ec5ce) && isentity(target)) {
                    target thread function_aa8c2bb2(var_4cfa0710, a_targets);
                }
            }
            objective_add(n_obj_id, "active", var_ff48959, str_objective);
            function_6da98133(n_obj_id);
            if (a_targets.size == 1) {
                if (isdefined(var_690561dc)) {
                    namespace_96850e69::function_bfdab223(n_obj_id, var_690561dc);
                    namespace_96850e69::set_state(n_obj_id, 0);
                }
                if (isdefined(var_bfcac307)) {
                    namespace_96850e69::function_bacd9b1f(n_obj_id, var_bfcac307);
                }
            }
            if (show_waypoint) {
                thread namespace_96850e69::function_f3ac479c(n_obj_id);
            }
            namespace_96850e69::function_572778b9(n_obj_id, 0);
            namespace_96850e69::function_6a43edf3(n_obj_id, 0);
        }
    } else {
        n_obj_id = gameobjects::get_next_obj_id();
        mission.var_c68f10d0[var_4cfa0710] = n_obj_id;
        objective_add(n_obj_id, "active", (0, 0, 0), str_objective);
        function_6da98133(n_obj_id);
        if (isdefined(var_690561dc)) {
            namespace_96850e69::function_bfdab223(n_obj_id, var_690561dc);
            namespace_96850e69::set_state(n_obj_id, 0);
        }
        if (isdefined(var_bfcac307)) {
            namespace_96850e69::function_bacd9b1f(n_obj_id, var_bfcac307);
        }
        if (show_waypoint) {
            thread namespace_96850e69::function_f3ac479c(n_obj_id);
        }
        namespace_96850e69::function_572778b9(n_obj_id, 0);
        namespace_96850e69::function_6a43edf3(n_obj_id, 0);
    }
    if (show_splash && isdefined(var_690561dc)) {
        thread namespace_96850e69::function_8d9f9a22(n_obj_id);
        thread namespace_96850e69::function_1c6b4aeb();
    }
    player = getplayers()[0];
    if (isdefined(player) && show_waypoint) {
        player thread namespace_96850e69::show_objectives(0);
    }
}

// Namespace objectives/objectives
// Params 6, eflags: 0x2 linked
// Checksum 0x9edd800b, Offset: 0x6b0
// Size: 0x84
function follow(var_4cfa0710, var_b3177bd9, var_690561dc, show_splash, show_waypoint = 0, var_c3056ba3 = #"hash_f71affaf9c403ac") {
    set(var_c3056ba3, var_b3177bd9, 1, var_4cfa0710, var_690561dc, show_splash, show_waypoint);
}

// Namespace objectives/objectives
// Params 7, eflags: 0x2 linked
// Checksum 0xed2b57a0, Offset: 0x740
// Size: 0x7c
function kill(var_4cfa0710, var_3829dccf, var_690561dc, show_splash, show_waypoint, var_bfcac307, var_c3056ba3 = #"hash_5c90265e62b1f975") {
    set(var_c3056ba3, var_3829dccf, 1, var_4cfa0710, var_690561dc, show_splash, show_waypoint, var_bfcac307);
}

// Namespace objectives/objectives
// Params 8, eflags: 0x0
// Checksum 0xe90c45c8, Offset: 0x7c8
// Size: 0xf4
function area(var_4cfa0710, var_8343acf6, radius, var_690561dc, show_splash, show_waypoint, var_bfcac307, var_c3056ba3 = #"hash_4a026a0a4473d478") {
    set(var_c3056ba3, undefined, 0, var_4cfa0710, var_690561dc, show_splash, show_waypoint, var_bfcac307);
    if (isentity(var_8343acf6)) {
        function_60645c02(var_4cfa0710, var_8343acf6.origin);
    } else {
        function_60645c02(var_4cfa0710, var_8343acf6);
    }
    function_64eaa790(var_4cfa0710, var_8343acf6, radius);
}

// Namespace objectives/objectives
// Params 6, eflags: 0x2 linked
// Checksum 0xea58e9f9, Offset: 0x8c8
// Size: 0xa4
function goto(var_4cfa0710, position, var_690561dc, show_splash, show_waypoint, var_c3056ba3 = #"hash_7057d3992f70bf08") {
    if (isdefined(mission.var_c68f10d0[var_4cfa0710])) {
        function_60645c02(var_4cfa0710, position);
        return;
    }
    set(var_c3056ba3, position, 0, var_4cfa0710, var_690561dc, show_splash, show_waypoint);
}

// Namespace objectives/objectives
// Params 6, eflags: 0x2 linked
// Checksum 0x5590638, Offset: 0x978
// Size: 0x6c
function function_4eb5c04a(var_4cfa0710, position, var_690561dc, show_splash, show_waypoint, var_c3056ba3 = #"hash_6d05b1cec06f98c") {
    goto(var_4cfa0710, position, var_690561dc, show_splash, show_waypoint, var_c3056ba3);
}

// Namespace objectives/objectives
// Params 5, eflags: 0x2 linked
// Checksum 0xc7ea85f8, Offset: 0x9f0
// Size: 0x64
function scripted(var_4cfa0710, a_ents, var_690561dc, show_splash, var_bfcac307) {
    set(#"hash_75de14e1b11e62fd", a_ents, 1, var_4cfa0710, var_690561dc, show_splash, 0, var_bfcac307);
}

// Namespace objectives/objectives
// Params 2, eflags: 0x0
// Checksum 0xdb122a37, Offset: 0xa60
// Size: 0x5c
function convert(var_4cfa0710, var_c3056ba3) {
    if (isdefined(mission.var_c68f10d0[var_4cfa0710])) {
        objective_add(mission.var_c68f10d0[var_4cfa0710], "active", (0, 0, 0), var_c3056ba3);
    }
}

// Namespace objectives/objectives
// Params 2, eflags: 0x2 linked
// Checksum 0xfb60c2ec, Offset: 0xac8
// Size: 0x1d4
function remove(str_objective, a_targets) {
    if (isdefined(a_targets)) {
        if (!isdefined(a_targets)) {
            a_targets = [];
        } else if (!isarray(a_targets)) {
            a_targets = array(a_targets);
        }
        foreach (target in a_targets) {
            if (target function_31679256(str_objective)) {
                n_obj_id = target.a_n_objective_ids[str_objective];
                target.a_n_objective_ids[str_objective] = undefined;
                namespace_96850e69::remove_objective(n_obj_id);
                objective_delete(n_obj_id);
                gameobjects::release_obj_id(n_obj_id);
            }
        }
        return;
    }
    if (isdefined(mission.var_c68f10d0[str_objective])) {
        n_obj_id = mission.var_c68f10d0[str_objective];
        mission.var_c68f10d0[str_objective] = undefined;
        namespace_96850e69::remove_objective(n_obj_id);
        objective_delete(n_obj_id);
        gameobjects::release_obj_id(n_obj_id);
    }
}

// Namespace objectives/objectives
// Params 2, eflags: 0x2 linked
// Checksum 0x8235cc4b, Offset: 0xca8
// Size: 0x16c
function function_60645c02(str_objective, position) {
    if (isdefined(mission.var_c68f10d0[str_objective])) {
        if (isentity(position)) {
            objective_onentity(mission.var_c68f10d0[str_objective], position);
        } else {
            objective_clearentity(mission.var_c68f10d0[str_objective]);
            objective_setposition(mission.var_c68f10d0[str_objective], position);
        }
        if (objective_state(mission.var_c68f10d0[str_objective]) == "done") {
            objective_setstate(mission.var_c68f10d0[str_objective], "active");
            namespace_96850e69::set_state(mission.var_c68f10d0[str_objective], 0);
            thread namespace_96850e69::function_f4a32e0b(str_objective, undefined, 1);
        }
        thread namespace_96850e69::function_6b177efc(str_objective);
    }
}

// Namespace objectives/objectives
// Params 4, eflags: 0x2 linked
// Checksum 0x633a9014, Offset: 0xe20
// Size: 0x11c
function function_64eaa790(str_objective, var_8343acf6, radius, var_4003470b = 1) {
    target = undefined;
    if (self !== level) {
        target = self;
    }
    objid = function_285e460(str_objective, target);
    if (isdefined(objid)) {
        if (isentity(var_8343acf6)) {
            if (!isdefined(radius)) {
                thread function_b6b76073(str_objective, var_8343acf6, var_4003470b);
            } else {
                thread function_634c16ef(str_objective, var_8343acf6, radius, var_4003470b);
            }
            return;
        }
        if (isdefined(radius)) {
            thread function_37cf9b17(str_objective, var_8343acf6, radius, var_4003470b);
            return;
        }
        assertmsg("<unknown string>");
    }
}

// Namespace objectives/objectives
// Params 3, eflags: 0x2 linked
// Checksum 0x63bfe765, Offset: 0xf48
// Size: 0x2fc
function complete(str_objective, a_targets, var_834e72f6 = 0) {
    if (isdefined(a_targets)) {
        if (!isdefined(a_targets)) {
            a_targets = [];
        } else if (!isarray(a_targets)) {
            a_targets = array(a_targets);
        }
        foreach (target in a_targets) {
            if (target function_31679256(str_objective)) {
                function_45951a55(str_objective);
                n_obj_id = target.a_n_objective_ids[str_objective];
                objective_setstate(n_obj_id, "done");
                if (namespace_96850e69::function_1fe5876a(n_obj_id)) {
                    namespace_96850e69::set_state(n_obj_id, 1);
                    if (var_834e72f6) {
                        namespace_96850e69::function_79ed6d2(1);
                    }
                } else {
                    gameobjects::release_obj_id(n_obj_id);
                    target.a_n_objective_ids[str_objective] = undefined;
                    if (var_834e72f6 && isdefined(mission.var_c68f10d0[str_objective]) && namespace_96850e69::function_1fe5876a(mission.var_c68f10d0[str_objective])) {
                        namespace_96850e69::function_79ed6d2(1);
                    }
                }
                target notify("complete_objective_" + str_objective);
            }
        }
        return;
    }
    if (isdefined(mission.var_c68f10d0[str_objective])) {
        n_obj_id = mission.var_c68f10d0[str_objective];
        objective_setstate(n_obj_id, "done");
        if (namespace_96850e69::function_1fe5876a(n_obj_id)) {
            namespace_96850e69::set_state(n_obj_id, 1);
            if (var_834e72f6) {
                namespace_96850e69::function_79ed6d2(var_834e72f6);
            }
            return;
        }
        gameobjects::release_obj_id(n_obj_id);
        mission.var_c68f10d0[str_objective] = undefined;
    }
}

// Namespace objectives/objectives
// Params 2, eflags: 0x2 linked
// Checksum 0x93287efd, Offset: 0x1250
// Size: 0x6c
function function_aa8c2bb2(str_objective, *a_targets) {
    self endon(#"deleted", "complete_objective_" + a_targets);
    self waittill(#"death", #"remove_objective");
    thread complete(a_targets, self);
}

// Namespace objectives/objectives
// Params 3, eflags: 0x2 linked
// Checksum 0x3bd228f6, Offset: 0x12c8
// Size: 0xe0
function show(str_objective, a_targets, e_player) {
    a_n_objective_ids = function_d849bbf2(str_objective, a_targets);
    foreach (n_objective_id in a_n_objective_ids) {
        if (isdefined(e_player)) {
            objective_setvisibletoplayer(n_objective_id, e_player);
            continue;
        }
        objective_setvisibletoall(n_objective_id);
    }
}

// Namespace objectives/objectives
// Params 3, eflags: 0x2 linked
// Checksum 0x145db200, Offset: 0x13b0
// Size: 0xe0
function hide(str_objective, a_targets, e_player) {
    a_n_objective_ids = function_d849bbf2(str_objective, a_targets);
    foreach (n_objective_id in a_n_objective_ids) {
        if (isdefined(e_player)) {
            objective_setinvisibletoplayer(n_objective_id, e_player);
            continue;
        }
        objective_setinvisibletoall(n_objective_id);
    }
}

// Namespace objectives/objectives
// Params 0, eflags: 0x2 linked
// Checksum 0xec85c3d, Offset: 0x1498
// Size: 0x24
function function_9dfb43fc() {
    globallogic_ui::function_9ed5232e("hudItems.hideWaypoints", 1);
}

// Namespace objectives/objectives
// Params 0, eflags: 0x2 linked
// Checksum 0x6221105d, Offset: 0x14c8
// Size: 0x1c
function function_4279fd02() {
    globallogic_ui::function_9ed5232e("hudItems.hideWaypoints", 0);
}

// Namespace objectives/objectives
// Params 3, eflags: 0x0
// Checksum 0x5f61f13e, Offset: 0x14f0
// Size: 0xd8
function set_progress(str_objective, a_targets, n_progress) {
    a_n_objective_ids = function_d849bbf2(str_objective, a_targets);
    foreach (n_objective_id in a_n_objective_ids) {
        objective_setprogress(n_objective_id, n_progress);
        namespace_96850e69::set_progress(n_objective_id, n_progress);
    }
}

// Namespace objectives/objectives
// Params 3, eflags: 0x0
// Checksum 0x9d89c7d5, Offset: 0x15d0
// Size: 0xc0
function function_630d2576(str_objective, a_targets, var_4f8b76db) {
    a_n_objective_ids = function_d849bbf2(str_objective, a_targets);
    foreach (n_objective_id in a_n_objective_ids) {
        objective_setgamemodeflags(n_objective_id, var_4f8b76db);
    }
}

// Namespace objectives/objectives
// Params 4, eflags: 0x2 linked
// Checksum 0xe7122edd, Offset: 0x1698
// Size: 0x154
function function_1de88d60(str_objective, a_targets, var_177f646b, var_d126f60d) {
    a_n_objective_ids = function_d849bbf2(str_objective, a_targets);
    foreach (n_objective_id in a_n_objective_ids) {
        if (isdefined(var_177f646b)) {
            objective_setuimodelvalue(n_objective_id, "obj_x", var_177f646b);
            namespace_96850e69::function_97d05398(n_objective_id, var_177f646b);
        }
        if (isdefined(var_d126f60d)) {
            objective_setuimodelvalue(n_objective_id, "obj_y", var_d126f60d);
            namespace_96850e69::function_302128de(n_objective_id, var_d126f60d);
        }
    }
    if (isdefined(mission.var_c68f10d0[str_objective])) {
        mission.var_ac8e2ff9[str_objective] = var_177f646b;
    }
}

// Namespace objectives/objectives
// Params 1, eflags: 0x2 linked
// Checksum 0xb33f278f, Offset: 0x17f8
// Size: 0xb4
function function_45951a55(str_objective) {
    if (isdefined(mission.var_c68f10d0[str_objective]) && isdefined(mission.var_ac8e2ff9[str_objective])) {
        mission.var_ac8e2ff9[str_objective]++;
        objective_id = mission.var_c68f10d0[str_objective];
        objective_setuimodelvalue(objective_id, "obj_x", mission.var_ac8e2ff9[str_objective]);
        namespace_96850e69::function_97d05398(objective_id, mission.var_ac8e2ff9[str_objective]);
    }
}

// Namespace objectives/objectives
// Params 1, eflags: 0x0
// Checksum 0xa645dcc7, Offset: 0x18b8
// Size: 0xb4
function function_3595a59d(str_objective) {
    if (isdefined(mission.var_c68f10d0[str_objective]) && isdefined(mission.var_ac8e2ff9[str_objective])) {
        mission.var_ac8e2ff9[str_objective]--;
        objective_id = mission.var_c68f10d0[str_objective];
        objective_setuimodelvalue(objective_id, "obj_x", mission.var_ac8e2ff9[str_objective]);
        namespace_96850e69::function_97d05398(objective_id, mission.var_ac8e2ff9[str_objective]);
    }
}

// Namespace objectives/objectives
// Params 4, eflags: 0x0
// Checksum 0xfde51020, Offset: 0x1978
// Size: 0xe0
function set_value(str_objective, a_targets, var_9922f839, n_value) {
    a_n_objective_ids = function_d849bbf2(str_objective, a_targets);
    foreach (n_objective_id in a_n_objective_ids) {
        objective_setuimodelvalue(n_objective_id, var_9922f839, n_value);
        namespace_96850e69::function_302128de(n_objective_id, n_value);
    }
}

// Namespace objectives/objectives
// Params 2, eflags: 0x2 linked
// Checksum 0xaf178af0, Offset: 0x1a60
// Size: 0xb8
function function_6a43edf3(str_objective, a_targets) {
    a_n_objective_ids = function_d849bbf2(str_objective, a_targets);
    foreach (n_objective_id in a_n_objective_ids) {
        namespace_96850e69::function_6a43edf3(n_objective_id);
    }
}

// Namespace objectives/objectives
// Params 1, eflags: 0x0
// Checksum 0x1dc37c68, Offset: 0x1b20
// Size: 0x4c
function function_572778b9(str_objective) {
    obj_id = function_285e460(str_objective);
    if (isdefined(obj_id)) {
        namespace_96850e69::function_572778b9(obj_id);
    }
}

// Namespace objectives/objectives
// Params 5, eflags: 0x2 linked
// Checksum 0xb6503b77, Offset: 0x1b78
// Size: 0x108
function function_6a5ca7ac(str_objective, a_target, var_f4089be9, var_52710aa4, var_834e72f6 = 1) {
    parent_id = function_285e460(var_f4089be9, var_52710aa4);
    if (isdefined(parent_id)) {
        a_n_objective_ids = function_d849bbf2(str_objective, a_target);
        foreach (n_objective_id in a_n_objective_ids) {
            namespace_96850e69::function_6a5ca7ac(n_objective_id, parent_id, var_834e72f6);
        }
    }
}

// Namespace objectives/objectives
// Params 2, eflags: 0x0
// Checksum 0x598412fb, Offset: 0x1c88
// Size: 0xc0
function function_5d6a7294(str_objective, a_targets) {
    a_n_objective_ids = function_d849bbf2(str_objective, a_targets);
    foreach (n_objective_id in a_n_objective_ids) {
        namespace_96850e69::function_6a5ca7ac(n_objective_id, -1);
    }
}

// Namespace objectives/objectives
// Params 3, eflags: 0x0
// Checksum 0xdc31a866, Offset: 0x1d50
// Size: 0xc0
function set_state(str_objective, a_targets, str_state) {
    a_n_objective_ids = function_d849bbf2(str_objective, a_targets);
    foreach (n_objective_id in a_n_objective_ids) {
        objective_setstate(n_objective_id, str_state);
    }
}

// Namespace objectives/objectives
// Params 3, eflags: 0x2 linked
// Checksum 0xa387eff5, Offset: 0x1e18
// Size: 0x104
function function_67f87f80(str_objective, a_targets, text) {
    if (isdefined(a_targets)) {
        if (!isdefined(a_targets)) {
            a_targets = [];
        } else if (!isarray(a_targets)) {
            a_targets = array(a_targets);
        }
        foreach (target in a_targets) {
            thread namespace_96850e69::function_49dec5b(str_objective, target, text);
        }
        return;
    }
    thread namespace_96850e69::function_49dec5b(str_objective, undefined, text);
}

// Namespace objectives/objectives
// Params 3, eflags: 0x0
// Checksum 0x1d4d6a0d, Offset: 0x1f28
// Size: 0x104
function function_fb65245c(str_objective, a_targets, icon) {
    if (isdefined(a_targets)) {
        if (!isdefined(a_targets)) {
            a_targets = [];
        } else if (!isarray(a_targets)) {
            a_targets = array(a_targets);
        }
        foreach (target in a_targets) {
            thread namespace_96850e69::function_fdeb5e85(str_objective, target, icon);
        }
        return;
    }
    thread namespace_96850e69::function_fdeb5e85(str_objective, undefined, icon);
}

// Namespace objectives/objectives
// Params 4, eflags: 0x40
// Checksum 0x714b6307, Offset: 0x2038
// Size: 0x108
function function_509db762(str_objective, a_targets, var_bc9bff3f, ...) {
    a_n_objective_ids = function_d849bbf2(str_objective, a_targets);
    foreach (n_objective_id in a_n_objective_ids) {
        a_args = arraycombine(array(n_objective_id), vararg, 1, 0);
        util::single_func_argarray(undefined, var_bc9bff3f, a_args);
    }
}

// Namespace objectives/objectives
// Params 3, eflags: 0x2 linked
// Checksum 0x7724c063, Offset: 0x2148
// Size: 0xa4
function function_285e460(str_objective, target, var_be4d91fa = 0) {
    if (isdefined(target)) {
        if (target function_31679256(str_objective)) {
            return target.a_n_objective_ids[str_objective];
        }
    }
    var_be4d91fa = var_be4d91fa || !isdefined(target);
    if (var_be4d91fa && isdefined(mission.var_c68f10d0[str_objective])) {
        return mission.var_c68f10d0[str_objective];
    }
    return undefined;
}

// Namespace objectives/objectives
// Params 2, eflags: 0x2 linked
// Checksum 0x5487368, Offset: 0x21f8
// Size: 0x1ec
function function_d849bbf2(str_objective, a_targets) {
    a_n_objective_ids = [];
    if (isdefined(a_targets)) {
        if (!isdefined(a_targets)) {
            a_targets = [];
        } else if (!isarray(a_targets)) {
            a_targets = array(a_targets);
        }
        foreach (target in a_targets) {
            if (isdefined(target) && !function_3132f113(target) && target function_31679256(str_objective)) {
                if (!isdefined(a_n_objective_ids)) {
                    a_n_objective_ids = [];
                } else if (!isarray(a_n_objective_ids)) {
                    a_n_objective_ids = array(a_n_objective_ids);
                }
                a_n_objective_ids[a_n_objective_ids.size] = target.a_n_objective_ids[str_objective];
            }
        }
    } else if (isdefined(mission.var_c68f10d0[str_objective])) {
        if (!isdefined(a_n_objective_ids)) {
            a_n_objective_ids = [];
        } else if (!isarray(a_n_objective_ids)) {
            a_n_objective_ids = array(a_n_objective_ids);
        }
        a_n_objective_ids[a_n_objective_ids.size] = mission.var_c68f10d0[str_objective];
    }
    return a_n_objective_ids;
}

// Namespace objectives/objectives
// Params 1, eflags: 0x6 linked
// Checksum 0xbf59e649, Offset: 0x23f0
// Size: 0x28
function private function_31679256(str_objective) {
    return isdefined(self.a_n_objective_ids) && isdefined(self.a_n_objective_ids[str_objective]);
}

// Namespace objectives/objectives
// Params 3, eflags: 0x6 linked
// Checksum 0x2859b13b, Offset: 0x2420
// Size: 0xd4
function private function_5f2c6084(var_75de6891, str_objective, var_4003470b) {
    target = undefined;
    if (self !== level) {
        target = self;
    }
    if (var_75de6891) {
        hide(str_objective, target);
    } else if (isdefined(str_objective)) {
        show(str_objective, target);
    }
    if (var_4003470b) {
        if (var_75de6891) {
            namespace_96850e69::function_b6d41b41(#"hash_55ff57573b3951ef", 1);
            return;
        }
        namespace_96850e69::function_be5b472b();
    }
}

// Namespace objectives/objectives
// Params 3, eflags: 0x6 linked
// Checksum 0xaf51bc77, Offset: 0x2500
// Size: 0x1cc
function private function_b6b76073(str_objective, ent, var_4003470b) {
    level notify("objective_search_area_" + str_objective);
    if (var_4003470b) {
        level endoncallback(&function_d5874fcc, "objective_search_area_" + str_objective);
    }
    target = undefined;
    if (self !== level) {
        target = self;
        if (isentity(target)) {
            target endon(#"death");
        }
    }
    objid = function_285e460(str_objective, target);
    player = getplayers()[0];
    player endon(#"death");
    in_area = 0;
    while (isdefined(objid) && objective_state(objid) == "active") {
        if (!in_area && player istouching(ent) || in_area && !player istouching(ent)) {
            in_area = !in_area;
            function_5f2c6084(in_area, str_objective, var_4003470b);
        }
        waitframe(1);
    }
    if (var_4003470b) {
        function_d5874fcc();
    }
}

// Namespace objectives/objectives
// Params 4, eflags: 0x6 linked
// Checksum 0xb9a6022, Offset: 0x26d8
// Size: 0x22c
function private function_634c16ef(str_objective, ent, radius, var_4003470b) {
    level notify("objective_search_area_" + str_objective);
    if (var_4003470b) {
        level endoncallback(&function_d5874fcc, "objective_search_area_" + str_objective);
    }
    target = undefined;
    if (self !== level) {
        target = self;
        if (isentity(target)) {
            target endon(#"death");
        }
    }
    objid = function_285e460(str_objective, target);
    player = getplayers()[0];
    player endon(#"death");
    if (isentity(ent)) {
        ent endon(#"death");
    }
    radius_squared = radius * radius;
    in_area = 0;
    while (isdefined(objid) && objective_state(objid) == "active") {
        if (!in_area && distancesquared(player.origin, ent.origin) <= radius_squared || in_area && distancesquared(player.origin, ent.origin) > radius_squared) {
            in_area = !in_area;
            function_5f2c6084(in_area, str_objective, var_4003470b);
        }
        waitframe(1);
    }
    if (var_4003470b) {
        function_d5874fcc();
    }
}

// Namespace objectives/objectives
// Params 4, eflags: 0x6 linked
// Checksum 0xe3b18e45, Offset: 0x2910
// Size: 0x1fc
function private function_37cf9b17(str_objective, pos, radius, var_4003470b) {
    level notify("objective_search_area_" + str_objective);
    if (var_4003470b) {
        level endoncallback(&function_d5874fcc, "objective_search_area_" + str_objective);
    }
    target = undefined;
    if (self !== level) {
        target = self;
        if (isentity(target)) {
            target endon(#"death");
        }
    }
    objid = function_285e460(str_objective, target);
    player = getplayers()[0];
    player endon(#"death");
    radius_squared = radius * radius;
    in_area = 0;
    while (isdefined(objid) && objective_state(objid) == "active") {
        if (!in_area && distancesquared(player.origin, pos) <= radius_squared || in_area && distancesquared(player.origin, pos) > radius_squared) {
            in_area = !in_area;
            function_5f2c6084(in_area, str_objective, var_4003470b);
        }
        waitframe(1);
    }
    if (var_4003470b) {
        function_d5874fcc();
    }
}

// Namespace objectives/objectives
// Params 1, eflags: 0x6 linked
// Checksum 0xf79fae8e, Offset: 0x2b18
// Size: 0x1c
function private function_d5874fcc(*var_201c5b1f) {
    namespace_96850e69::function_be5b472b();
}

