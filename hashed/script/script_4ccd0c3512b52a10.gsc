// Atian COD Tools GSC CW decompiler test
#using script_1478fbd17fe393cf;
#using scripts\cp_common\objectives.gsc;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_96850e69;

// Namespace namespace_96850e69/namespace_96850e69
// Params 0, eflags: 0x5
// Checksum 0x15e9ed35, Offset: 0x380
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_3ee5d3ee068a8cc", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 0, eflags: 0x6 linked
// Checksum 0x77ccc127, Offset: 0x3c8
// Size: 0x7c
function private preinit() {
    temp = #"hash_147e5fa1e7f7cd06";
    temp = #"hash_850d28553336ed0";
    temp = #"hash_3537e7d6b8dc612b";
    temp = #"hash_147fefcf7bb5023c";
    clientfield::register("toplayer", "show_objectives", 1, 2, "int");
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 1, eflags: 0x2 linked
// Checksum 0xbbdb6962, Offset: 0x450
// Size: 0x9c
function show_objectives(var_e9791619 = 1) {
    self notify("5651785c71962c50");
    self endon("5651785c71962c50");
    if (var_e9791619) {
        clientfield::set_to_player("show_objectives", 2);
    } else {
        waittillframeend();
        clientfield::set_to_player("show_objectives", 1);
    }
    waitframe(1);
    clientfield::set_to_player("show_objectives", 0);
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 0, eflags: 0x2 linked
// Checksum 0xe0495bb2, Offset: 0x4f8
// Size: 0x9c
function function_49ebaad2() {
    player = getplayers()[0];
    if (isdefined(player)) {
        timeout = 5;
        notify_str = "show_objectives";
        player thread function_d18e2e61(timeout, notify_str);
        player thread hint_tutorial::function_4c2d4fc4(#"hash_30ae598288c72637", undefined, undefined, undefined, 2, timeout, notify_str, 0);
    }
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 2, eflags: 0x6 linked
// Checksum 0x66c6dd44, Offset: 0x5a0
// Size: 0x7c
function private function_d18e2e61(timeout, notify_str) {
    self endon(#"death");
    self notifyonplayercommand(notify_str, "+scores");
    self waittilltimeout(timeout, notify_str);
    self notifyonplayercommandremove(notify_str, "+scores");
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 0, eflags: 0x2 linked
// Checksum 0x85492039, Offset: 0x628
// Size: 0x64
function function_1c6b4aeb() {
    globallogic_ui::function_9ed5232e("hudItems.cpObjectiveUiData.splash", 1, 1, 1, 0, 0, 1);
    waitframe(1);
    globallogic_ui::function_9ed5232e("hudItems.cpObjectiveUiData.splash", 0, 1, 1, 0, 0, 1);
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 1, eflags: 0x2 linked
// Checksum 0x1c6003ef, Offset: 0x698
// Size: 0x3c
function function_79ed6d2(var_8eaad3c1) {
    globallogic_ui::function_9ed5232e("hudItems.cpObjectiveUiData.showHideHint", var_8eaad3c1, 1, 1, 0, 0, 1);
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 2, eflags: 0x2 linked
// Checksum 0xdcaa4b82, Offset: 0x6e0
// Size: 0x64
function function_b6d41b41(message, state = 0) {
    globallogic_ui::function_9ed5232e("hudItems.cpObjectiveUiData.compassMessage", message, 1);
    globallogic_ui::function_9ed5232e("hudItems.cpObjectiveUiData.compassState", state, 1);
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 0, eflags: 0x2 linked
// Checksum 0xa17ab07c, Offset: 0x750
// Size: 0x54
function function_be5b472b() {
    globallogic_ui::function_9ed5232e("hudItems.cpObjectiveUiData.compassMessage", #"", 1);
    globallogic_ui::function_9ed5232e("hudItems.cpObjectiveUiData.compassState", 0, 1);
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 3, eflags: 0x2 linked
// Checksum 0xaed80c7a, Offset: 0x7b0
// Size: 0xac
function function_49dec5b(str_objective, target, text) {
    obj_id = objectives::function_285e460(str_objective, target);
    if (isdefined(obj_id)) {
        globallogic_ui::function_9ed5232e("objectives_info." + obj_id + ".waypointText", text);
        globallogic_ui::function_9ed5232e("objectives_info." + obj_id + ".forceUpdate", 1, 0, 1, 0, 0, 1);
    }
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 3, eflags: 0x2 linked
// Checksum 0x9b782e47, Offset: 0x868
// Size: 0xac
function function_fdeb5e85(str_objective, target, icon) {
    obj_id = objectives::function_285e460(str_objective, target);
    if (isdefined(obj_id)) {
        globallogic_ui::function_9ed5232e("objectives_info." + obj_id + ".waypointIcon", icon);
        globallogic_ui::function_9ed5232e("objectives_info." + obj_id + ".forceUpdate", 1, 0, 1, 0, 0, 1);
    }
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 3, eflags: 0x2 linked
// Checksum 0x9321d08, Offset: 0x920
// Size: 0xac
function function_278c15e6(str_objective, target, hidden) {
    obj_id = objectives::function_285e460(str_objective, target, 1);
    if (isdefined(obj_id)) {
        globallogic_ui::function_9ed5232e("objectives_info." + obj_id + ".hideWaypoint", hidden);
        globallogic_ui::function_9ed5232e("objectives_info." + obj_id + ".forceUpdate", 1, 0, 1, 0, 0, 1);
    }
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 3, eflags: 0x2 linked
// Checksum 0xe9c1125, Offset: 0x9d8
// Size: 0xb4
function function_f4a32e0b(str_objective, target, state) {
    obj_id = objectives::function_285e460(str_objective, target);
    if (isdefined(obj_id)) {
        globallogic_ui::function_9ed5232e("objectives_info." + obj_id + ".state", state);
        util::wait_network_frame(1);
        globallogic_ui::function_9ed5232e("ForceObjectiveRefresh", 1, 0, 1, 0, 0, 1);
    }
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 3, eflags: 0x2 linked
// Checksum 0xf1763705, Offset: 0xa98
// Size: 0x104
function function_6b177efc(str_objective, target, delay_network_frames = 2) {
    if (isdefined(target)) {
        target endon(#"death");
    }
    level notify("update_waypoint_" + str_objective);
    level endon("update_waypoint_" + str_objective);
    if (delay_network_frames > 0) {
        util::wait_network_frame(delay_network_frames);
    }
    obj_id = objectives::function_285e460(str_objective, target);
    if (isdefined(obj_id)) {
        model_name = "objectives_info." + obj_id + ".waypointUpdate";
        globallogic_ui::function_9ed5232e(model_name, 1, 0, 1);
    }
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 2, eflags: 0x2 linked
// Checksum 0xf2515279, Offset: 0xba8
// Size: 0x3c
function function_bfdab223(obj_id, desc) {
    globallogic_ui::function_8954fa13("_DataSources.cp_objectives_list", obj_id, "description", desc);
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 1, eflags: 0x0
// Checksum 0x72c54e22, Offset: 0xbf0
// Size: 0x32
function get_state(obj_id) {
    return globallogic_ui::function_596db691("_DataSources.cp_objectives_list", obj_id, "state");
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 2, eflags: 0x2 linked
// Checksum 0xe38b65da, Offset: 0xc30
// Size: 0x3c
function set_state(obj_id, state) {
    globallogic_ui::function_8954fa13("_DataSources.cp_objectives_list", obj_id, "state", state);
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 3, eflags: 0x2 linked
// Checksum 0x3fe7aa62, Offset: 0xc78
// Size: 0xb4
function function_6a5ca7ac(obj_id, parent_id, var_834e72f6 = 1) {
    if (function_1fe5876a(obj_id) && function_1fe5876a(parent_id)) {
        globallogic_ui::function_8954fa13("_DataSources.cp_objectives_list", obj_id, "parent", parent_id);
        if (var_834e72f6) {
            thread function_8d9f9a22(parent_id);
            thread function_1c6b4aeb();
        }
    }
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 2, eflags: 0x2 linked
// Checksum 0xef47256d, Offset: 0xd38
// Size: 0x8c
function function_6a43edf3(obj_id, var_e68e38b0 = 1) {
    if (isdefined(obj_id)) {
        globallogic_ui::function_8954fa13("_DataSources.cp_objectives_list", obj_id, "isEndObjective", var_e68e38b0);
        model_name = "objectives_info." + obj_id + ".isEndObjective";
        globallogic_ui::function_9ed5232e(model_name, var_e68e38b0);
    }
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 2, eflags: 0x2 linked
// Checksum 0x10ccd92b, Offset: 0xdd0
// Size: 0x8c
function function_572778b9(obj_id, var_b2a9edc5 = 1) {
    if (isdefined(obj_id)) {
        globallogic_ui::function_8954fa13("_DataSources.cp_objectives_list", obj_id, "isOptional", var_b2a9edc5);
        model_name = "objectives_info." + obj_id + ".isOptional";
        globallogic_ui::function_9ed5232e(model_name, var_b2a9edc5);
    }
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 1, eflags: 0x2 linked
// Checksum 0xfe356e00, Offset: 0xe68
// Size: 0xa4
function function_8d9f9a22(obj_id) {
    notify_string = "objective_splash" + obj_id;
    level notify(notify_string);
    level endon(notify_string);
    globallogic_ui::function_8954fa13("_DataSources.cp_objectives_list", obj_id, "newObjective", 1);
    level waittill(#"hash_4df0c0f18673f6c3");
    globallogic_ui::function_8954fa13("_DataSources.cp_objectives_list", obj_id, "newObjective", 0);
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 1, eflags: 0x2 linked
// Checksum 0x63898433, Offset: 0xf18
// Size: 0x8c
function function_f3ac479c(obj_id) {
    model = "objectives_info." + obj_id + ".newObjective";
    level notify(model);
    level endon(model);
    globallogic_ui::function_9ed5232e(model, 1);
    level waittill(#"hash_4df0c0f18673f6c3");
    globallogic_ui::function_9ed5232e(model, 0);
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 2, eflags: 0x2 linked
// Checksum 0xf4a76a4, Offset: 0xfb0
// Size: 0x3c
function set_progress(obj_id, progress) {
    globallogic_ui::function_8954fa13("_DataSources.cp_objectives_list", obj_id, "progress", progress);
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 2, eflags: 0x2 linked
// Checksum 0xa06fb54f, Offset: 0xff8
// Size: 0x3c
function function_97d05398(obj_id, count) {
    globallogic_ui::function_8954fa13("_DataSources.cp_objectives_list", obj_id, "currentCount", count);
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 2, eflags: 0x2 linked
// Checksum 0x699d7367, Offset: 0x1040
// Size: 0x3c
function function_302128de(obj_id, count) {
    globallogic_ui::function_8954fa13("_DataSources.cp_objectives_list", obj_id, "targetCount", count);
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 2, eflags: 0x2 linked
// Checksum 0x32c86bf3, Offset: 0x1088
// Size: 0x3c
function function_bacd9b1f(obj_id, show) {
    globallogic_ui::function_8954fa13("_DataSources.cp_objectives_list", obj_id, "showCounts", show);
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 1, eflags: 0x2 linked
// Checksum 0x2030a6c5, Offset: 0x10d0
// Size: 0x34
function function_1fe5876a(obj_id) {
    return isdefined(globallogic_ui::function_a8d716c5("_DataSources.cp_objectives_list", obj_id, "description"));
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 1, eflags: 0x2 linked
// Checksum 0x145ad8df, Offset: 0x1110
// Size: 0x6c
function remove_objective(obj_id) {
    globallogic_ui::function_6db5e620("_DataSources.cp_objectives_list", obj_id);
    globallogic_ui::function_9ed5232e("hudItems.cpObjectiveUiData.updateList", 1, 1, 1, 0, 0, 1);
    function_bb708c99(obj_id);
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 0, eflags: 0x2 linked
// Checksum 0x6112022b, Offset: 0x1188
// Size: 0xac
function remove_all() {
    for (i = 0; i < 64; i++) {
        globallogic_ui::function_6db5e620("_DataSources.cp_objectives_list", i, undefined, 1);
        objective_delete(i);
    }
    globallogic_ui::function_9ed5232e("hudItems.cpObjectiveUiData.updateList", 1, 1, 1, 0, 0, 1, 1);
    function_bb708c99(-1, 1);
}

// Namespace namespace_96850e69/namespace_96850e69
// Params 2, eflags: 0x6 linked
// Checksum 0x35500d36, Offset: 0x1240
// Size: 0x4c
function private function_bb708c99(obj_id, var_cb887047) {
    globallogic_ui::function_9ed5232e("objectives_info." + "removedObjective", obj_id, 0, 1, undefined, undefined, undefined, var_cb887047);
}

