// Atian COD Tools GSC CW decompiler test
#using script_193d6fcd3b319d05;
#using script_5961deb533dad533;
#using script_19367cd29a4485db;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_utility_zsurvival.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using script_1cc417743d7c262d;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using script_113dd7f0ea2a1d4f;

#namespace objective_manager;

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x5
// Checksum 0xa617d521, Offset: 0x258
// Size: 0x54
function private autoexec __init__system__() {
    system::register(#"objective_manager", &preinit, undefined, &finalize, #"content_manager");
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x6 linked
// Checksum 0x7f7480e1, Offset: 0x2b8
// Size: 0x20c
function private preinit() {
    clientfield::register("actor", "objective_cf_callout_rob", 1, 2, "int");
    clientfield::register("toplayer", "sr_defend_timer", 18000, getminbitcountfornum(900), "int");
    clientfield::register("scriptmover", "objective_cf_callout_rob", 1, 2, "int");
    clientfield::register("scriptmover", "" + #"hash_23325b5fc8ed9f5a", 1, 1, "int");
    clientfield::register("vehicle", "objective_cf_callout_rob", 1, 2, "int");
    clientfield::function_5b7d846d("hudItems.warzone.objectiveTotal", 1, 5, "int");
    clientfield::function_5b7d846d("hudItems.warzone.objectivesCompleted", 1, 5, "int");
    level.var_cf558bf = 0;
    level.var_4f12f6d0 = sr_objective_timer::register();
    callback::add_callback(#"on_host_migration_end", &function_73a53c87);
    callback::add_callback(#"hash_37840d0d5a10e6b8", &function_bdeca498);
    callback::on_spawned(&function_bdeca498);
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x6 linked
// Checksum 0xe0936ad6, Offset: 0x4d0
// Size: 0x1c
function private finalize() {
    /#
        level thread init_devgui();
    #/
}

// Namespace objective_manager/objective_manager
// Params 9, eflags: 0x2 linked
// Checksum 0x7bd2b5cd, Offset: 0x4f8
// Size: 0x1ea
function register_script(scriptname, spawncallback, startcallback, category, waypoint, var_4b7d58a, var_b4fae213, var_3fc9b09f = #"hash_248bfcefe7e51481", var_549cb6f6 = undefined) {
    assert(isstring(scriptname) || ishash(scriptname));
    assert(isfunctionptr(startcallback));
    assert(ishash(category));
    assert(isinarray(level.var_4e996a3f, category), "<unknown string>" + function_9e72a96(category) + "<unknown string>");
    script = content_manager::register_script(scriptname, isdefined(var_549cb6f6) ? var_549cb6f6 : &function_4e8b29ac);
    script.var_32523552 = spawncallback;
    script.var_11dcc37e = startcallback;
    script.objectivecategory = category;
    script.var_4b7d58a = var_4b7d58a;
    script.var_b4fae213 = var_b4fae213;
    script.var_331b7cc3 = waypoint;
    script.var_9ddbb7c = var_3fc9b09f;
}

// Namespace objective_manager/objective_manager
// Params 2, eflags: 0x2 linked
// Checksum 0x39686b37, Offset: 0x6f0
// Size: 0x214
function objective_ended(instance, completed = 1) {
    assert(isstruct(instance));
    assert(level.contentmanager.activeobjective === instance);
    assert(isint(completed));
    level.contentmanager.var_1d9d92ba = level.contentmanager.activeobjective;
    level.contentmanager.activeobjective = undefined;
    level flag::clear("objective_locked");
    function_2fe379cd();
    if (completed) {
        level.var_cf558bf++;
    } else {
        level flag::set("failed_any_objective");
        if (is_true(instance.var_7a9e6505)) {
            level thread function_43529cfe();
        }
    }
    level notify(#"objective_ended", {#completed:completed});
    level callback::callback(#"objective_ended", {#instance:instance, #completed:completed});
    instance.success = completed;
    instance notify(#"objective_ended");
    thread function_1571bce9();
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x2 linked
// Checksum 0xcf6ce93e, Offset: 0x910
// Size: 0x4c
function function_43529cfe() {
    level endon(#"end_game");
    level zm_vo::function_7622cb70("objectiveFail");
    namespace_553954de::function_bde08b58(0, 0);
}

// Namespace objective_manager/objective_manager
// Params 1, eflags: 0x2 linked
// Checksum 0xd63217bd, Offset: 0x968
// Size: 0x6c
function function_d28e25e7(var_2e19be37) {
    assert(var_2e19be37 <= 32, "<unknown string>");
    if (clientfield::can_set("hudItems.warzone.objectivesCompleted")) {
        level clientfield::set_world_uimodel("hudItems.warzone.objectivesCompleted", var_2e19be37);
    }
}

// Namespace objective_manager/objective_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x9a8adfe4, Offset: 0x9e0
// Size: 0x6c
function function_9f6de950(objectivetotal) {
    assert(objectivetotal <= 32, "<unknown string>");
    if (clientfield::can_set("hudItems.warzone.objectiveTotal")) {
        level clientfield::set_world_uimodel("hudItems.warzone.objectiveTotal", objectivetotal);
    }
}

// Namespace objective_manager/objective_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x9e393eb0, Offset: 0xa58
// Size: 0x64
function function_1571bce9(n_display_time = 10) {
    level endon(#"game_ended");
    wait(n_display_time);
    function_9f6de950(0);
    function_d28e25e7(0);
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x0
// Checksum 0x378e4fbe, Offset: 0xac8
// Size: 0x24
function function_db1c6627() {
    self clientfield::set("objective_cf_callout_rob", 1);
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x0
// Checksum 0x806ff5bd, Offset: 0xaf8
// Size: 0x24
function function_3b0ab786() {
    self clientfield::set("objective_cf_callout_rob", 2);
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x2 linked
// Checksum 0x5ed30874, Offset: 0xb28
// Size: 0x24
function function_811514c3() {
    self clientfield::set("objective_cf_callout_rob", 0);
}

// Namespace objective_manager/objective_manager
// Params 1, eflags: 0x4
// Checksum 0x5722014b, Offset: 0xb58
// Size: 0x11a
function private function_20f53e16(&instances) {
    level endon(#"game_ended");
    foreach (instance in instances) {
        content_manager::spawn_instance(instance);
        s_result = level waittill(#"objective_ended");
        if (s_result.completed === 0 && getdvarint(#"hash_15b141da1584bd0d", 1)) {
            namespace_553954de::function_bde08b58(0);
            return;
        }
    }
}

// Namespace objective_manager/objective_manager
// Params 4, eflags: 0x2 linked
// Checksum 0xe9aaa627, Offset: 0xc80
// Size: 0x420
function function_b06af8e3(destination, var_2923cf48, category, variant) {
    instances = destination.var_e859e591[category];
    if (!isdefined(instances)) {
        return false;
    }
    if (isdefined(destination.var_cd5ba489[category]) && !var_2923cf48) {
        return false;
    }
    instances = array::randomize(instances);
    if (is_true(getdvarint(#"hash_c05968dc8f1a0f", 0)) && category === #"hunt" && level.var_cf558bf < 1) {
        foreach (s_instance in instances) {
            if (s_instance.variant === #"hash_7ecff86523884e12") {
                instance = s_instance;
                break;
            }
        }
    } else if (isdefined(variant)) {
        category = variant;
        foreach (s_instance in instances) {
            if (s_instance.variant === variant) {
                instance = s_instance;
                break;
            }
        }
    } else if (!var_2923cf48 && level.var_cf558bf < 1 && (category === #"hunt" || category === #"payload")) {
        foreach (s_instance in instances) {
            if (s_instance.variant !== #"hash_7ecff86523884e12" && s_instance.variant !== #"hunt_steiner" && s_instance.variant !== #"hash_45f927c8af6cf356" && s_instance.variant !== #"payload_teleport") {
                instance = s_instance;
                break;
            }
        }
    }
    if (!isdefined(instance)) {
        instance = instances[0];
    }
    arrayremovevalue(level.var_aaa6544c, category);
    level.var_aaa6544c[level.var_aaa6544c.size] = category;
    level.contentmanager.nextobjective = instance;
    level.contentmanager.var_1fcbdf50 = category;
    callback::callback(#"hash_1b279f2bc1f45a83", {#objective_instance:instance, #category:category});
    return true;
}

// Namespace objective_manager/objective_manager
// Params 2, eflags: 0x2 linked
// Checksum 0xf20e9d1c, Offset: 0x10a8
// Size: 0x30c
function function_a8ad6895(destination, var_2923cf48 = 0) {
    foreach (category in level.var_aaa6544c) {
        variant = undefined;
        if (category == #"hash_401d37614277df42" || category == #"exfil" || category == #"ee") {
            continue;
        } else if (category === #"payload_teleport" || category === #"payload_noteleport") {
            variant = category;
            category = #"payload";
        } else if (category === #"hash_7ecff86523884e12" || category === #"hunt_steiner" || category === #"hash_45f927c8af6cf356" || category === #"hunt_raz" || category === #"hunt_mimic") {
            variant = category;
            category = #"hunt";
        } else if (category === #"hash_60673e8a67b28631" || category === #"hash_6603dbcf5b7eec59") {
            variant = category;
            category = #"defend";
        } else if (category === #"hash_3a562a601777fa88" || category === #"hash_716fb03a307ed1cc") {
            variant = category;
            category = #"holdout";
        } else if (category === #"retrieval_alt" || category === #"hash_1890a723bc26c833") {
            variant = category;
            category = #"retrieval";
        }
        if (!function_b06af8e3(destination, var_2923cf48, category, variant)) {
            continue;
        }
        return;
    }
    if (!var_2923cf48) {
        function_a8ad6895(destination, 1);
    }
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x2 linked
// Checksum 0xf88e0538, Offset: 0x13c0
// Size: 0xd4
function spawn_objective() {
    if (is_true(getgametypesetting(#"hash_1e1a5ebefe2772ba"))) {
        return;
    }
    if (!isdefined(level.contentmanager.nextobjective)) {
        function_a8ad6895(level.contentmanager.currentdestination);
    }
    if (isdefined(level.contentmanager.nextobjective)) {
        content_manager::spawn_instance(level.contentmanager.nextobjective);
        level.contentmanager.nextobjective = undefined;
    }
    /#
        function_3a388f32();
    #/
}

// Namespace objective_manager/objective_manager
// Params 1, eflags: 0x2 linked
// Checksum 0xab33a924, Offset: 0x14a0
// Size: 0x1ec
function function_c700a68b(categories) {
    var_d0303ab0 = getdvarstring(#"hash_4c7a7b0813c6765d");
    if (var_d0303ab0 !== "") {
        level.var_aaa6544c = array(var_d0303ab0);
        return;
    }
    for (index = 0; index < categories.size; index++) {
        category = categories[index];
        structs = content_manager::function_4485ab6d("objectiveCategory", category);
        foreach (script_struct in structs) {
            if (isdefined(script_struct.var_4b7d58a)) {
                if (is_false(getgametypesetting(script_struct.var_4b7d58a)) || is_false(getdvarint(script_struct.var_4b7d58a, 1))) {
                    categories[index] = "";
                    break;
                }
            }
        }
    }
    arrayremovevalue(categories, "");
    level.var_aaa6544c = array::randomize(categories);
}

// Namespace objective_manager/objective_manager
// Params 2, eflags: 0x4
// Checksum 0x5e2d6479, Offset: 0x1698
// Size: 0x16e
function private function_ac07f9d8(&destinations, &categories) {
    destination = destinations[0];
    foreach (category in categories) {
        if (category == #"hash_401d37614277df42" || category == #"exfil") {
            continue;
        }
        instances = destination.var_e859e591[category];
        if (!isdefined(instances)) {
            continue;
        }
        instance = instances[randomint(instances.size)];
        content_manager::spawn_instance(instance);
        destination.var_e859e591 = undefined;
        arrayremovevalue(destinations, destination);
        arrayremovevalue(categories, category);
        categories[categories.size] = category;
        return;
    }
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x4
// Checksum 0x597006d9, Offset: 0x1810
// Size: 0x104
function private function_f5cd7b55() {
    destinations = [];
    categories = [];
    function_ef3a1d04(destinations, categories);
    destinations = array::randomize(destinations);
    categories = array::randomize(categories);
    while (destinations.size > 0) {
        foreach (category in categories) {
            function_1df85442(destinations, category);
        }
    }
}

// Namespace objective_manager/objective_manager
// Params 2, eflags: 0x2 linked
// Checksum 0x7ed928ee, Offset: 0x1920
// Size: 0x2d6
function function_ef3a1d04(&destinations, &categories) {
    foreach (destination in level.contentmanager.destinations) {
        var_e859e591 = [];
        foreach (location in destination.locations) {
            if (content_manager::function_fe9fb6fd(location)) {
                continue;
            }
            foreach (scriptname, instance in location.instances) {
                script = content_manager::get_script(scriptname);
                category = script.objectivecategory;
                if (!isdefined(category)) {
                    continue;
                }
                if (!isinarray(categories, category)) {
                    categories[categories.size] = category;
                }
                if (!isdefined(var_e859e591[category])) {
                    var_e859e591[category] = [];
                }
                instances = var_e859e591[category];
                instances[instances.size] = instance;
            }
        }
        if (var_e859e591.size > 0) {
            foreach (category, instances in var_e859e591) {
                var_e859e591[category] = array::randomize(instances);
            }
            destination.var_e859e591 = var_e859e591;
            destinations[destinations.size] = destination;
        }
    }
}

// Namespace objective_manager/objective_manager
// Params 2, eflags: 0x6 linked
// Checksum 0xab49609d, Offset: 0x1c00
// Size: 0xfa
function private function_1df85442(&destinations, category) {
    foreach (destination in destinations) {
        instances = destination.var_e859e591[category];
        if (!isdefined(instances)) {
            continue;
        }
        instance = instances[randomint(instances.size)];
        content_manager::spawn_instance(instance);
        destination.var_e859e591 = undefined;
        arrayremovevalue(destinations, destination);
        return;
    }
}

// Namespace objective_manager/objective_manager
// Params 1, eflags: 0x6 linked
// Checksum 0x99875092, Offset: 0x1d08
// Size: 0x1a4
function private function_4e8b29ac(instance) {
    assert(isarray(instance.contentgroups[#"hash_3966465c498df3a6"]));
    assert(instance.contentgroups[#"hash_3966465c498df3a6"].size == 1);
    function_9d4e6125(instance.content_script_name);
    var_7d0e37f8 = instance.contentgroups[#"hash_3966465c498df3a6"][0];
    script = content_manager::get_script(instance.content_script_name);
    trigger = function_8239a941(var_7d0e37f8, instance, script.var_9ddbb7c);
    function_9751c453(script.var_331b7cc3, trigger.origin, instance);
    var_7d0e37f8 zm_utility::function_747180ea(instance.var_e55c8b4e, undefined, trigger);
    /#
        level.var_d56035 = instance;
    #/
    level thread [[ script.var_32523552 ]](instance);
    level flag::set(#"hash_7e250b62cf326bf9");
}

// Namespace objective_manager/objective_manager
// Params 3, eflags: 0x6 linked
// Checksum 0xdf406572, Offset: 0x1eb8
// Size: 0x18e
function private function_8239a941(struct, instance, hintstring) {
    var_3be0acae = [];
    var_3be0acae = instance.contentgroups[#"hash_310e58f653ae315d"];
    if (isdefined(var_3be0acae) && var_3be0acae.size > 0) {
        foreach (var_528a3a32 in var_3be0acae) {
            content_manager::spawn_script_model(var_528a3a32, var_528a3a32.model, 1);
        }
    }
    scriptmodel = content_manager::spawn_script_model(struct, #"tag_origin");
    trigger = content_manager::spawn_interact(struct, &function_cec3c94c, hintstring);
    trigger.origin += (0, 0, 0);
    trigger.instance = instance;
    trigger.scriptmodel = scriptmodel;
    instance.var_4272a188 = trigger;
    return trigger;
}

// Namespace objective_manager/objective_manager
// Params 1, eflags: 0x6 linked
// Checksum 0xaf7efe41, Offset: 0x2050
// Size: 0x54
function private function_cec3c94c(params) {
    if (!start_objective(self.instance, params.activator)) {
        return;
    }
    waittillframeend();
    self.instance.var_4272a188 = undefined;
    self delete();
}

// Namespace objective_manager/objective_manager
// Params 2, eflags: 0x2 linked
// Checksum 0x3c458742, Offset: 0x20b0
// Size: 0x1d8
function start_objective(instance, activator = undefined) {
    if (isdefined(level.contentmanager.activeobjective)) {
        return false;
    }
    level.contentmanager.activeobjective = instance;
    level flag::set("objective_locked");
    if (isdefined(instance.var_e55c8b4e)) {
        var_7d0e37f8 = instance.contentgroups[#"hash_3966465c498df3a6"][0];
        if (isdefined(var_7d0e37f8)) {
            var_7d0e37f8 zm_utility::function_48d9a9c9();
        }
        zm_utility::function_bc5a54a8(instance.var_e55c8b4e);
        instance.var_e55c8b4e = undefined;
    }
    function_654c5d3b();
    script = content_manager::get_script(instance.content_script_name);
    level thread [[ script.var_11dcc37e ]](instance, activator);
    if (isdefined(activator)) {
        activator playrumbleonentity(#"key_press");
    }
    level notify(#"hash_17028f0b9883e5be");
    level callback::callback(#"hash_17028f0b9883e5be", {#instance:instance, #activator:activator});
    level thread function_fa47c63e(script.scriptname);
    return true;
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x0
// Checksum 0x759c314e, Offset: 0x2290
// Size: 0xd8
function function_c4f169d6() {
    a_models = level.contentmanager.var_1d9d92ba.a_models;
    level.contentmanager.var_1d9d92ba = undefined;
    if (isdefined(a_models)) {
        foreach (model in a_models) {
            if (isdefined(model)) {
                model delete();
                util::wait_network_frame();
            }
        }
    }
}

// Namespace objective_manager/objective_manager
// Params 1, eflags: 0x4
// Checksum 0xbd925355, Offset: 0x2370
// Size: 0x158
function private function_1e8b7f8(scriptmodel) {
    scriptmodel endon(#"death");
    toppos = scriptmodel.origin + (0, 0, 4);
    bottompos = scriptmodel.origin - (0, 0, 4);
    while (true) {
        scriptmodel moveto(toppos, 0.5, 0.15, 0.15);
        scriptmodel rotateyaw(scriptmodel.angles[2] + 45, 0.5);
        wait(0.5);
        scriptmodel moveto(bottompos, 0.5, 0.15, 0.15);
        scriptmodel rotateyaw(scriptmodel.angles[2] + 45, 0.5);
        wait(0.5);
    }
}

// Namespace objective_manager/objective_manager
// Params 3, eflags: 0x2 linked
// Checksum 0x36cc954e, Offset: 0x24d0
// Size: 0x4a
function function_9751c453(var_331b7cc3, origin, instance) {
    objid = zm_utility::function_f5a222a8(var_331b7cc3, origin);
    instance.var_e55c8b4e = objid;
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x6 linked
// Checksum 0xf5a1328a, Offset: 0x2528
// Size: 0x184
function private function_654c5d3b() {
    foreach (group in level.contentmanager.spawnedinstances) {
        foreach (instance in group) {
            if (isdefined(instance.var_e55c8b4e)) {
                objective_setstate(instance.var_e55c8b4e, "invisible");
            }
            if (isdefined(instance.var_4272a188)) {
                instance.var_4272a188 triggerenable(0);
                if (isdefined(instance.var_4272a188.scriptmodel)) {
                    instance.var_4272a188.scriptmodel ghost();
                }
            }
        }
    }
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x6 linked
// Checksum 0xc5e9f4fe, Offset: 0x26b8
// Size: 0x184
function private function_2fe379cd() {
    foreach (group in level.contentmanager.spawnedinstances) {
        foreach (instance in group) {
            if (isdefined(instance.var_e55c8b4e)) {
                objective_setstate(instance.var_e55c8b4e, "active");
            }
            if (isdefined(instance.var_4272a188)) {
                instance.var_4272a188 triggerenable(1);
                if (isdefined(instance.var_4272a188.scriptmodel)) {
                    instance.var_4272a188.scriptmodel show();
                }
            }
        }
    }
}

// Namespace objective_manager/objective_manager
// Params 1, eflags: 0x6 linked
// Checksum 0x37a7cb04, Offset: 0x2848
// Size: 0x150
function private function_fa47c63e(scriptname) {
    level endon(#"game_ended");
    level flag::wait_till(#"all_players_connected");
    script_struct = content_manager::get_script(scriptname);
    var_5fc990bf = isdefined(script_struct.var_b4fae213) ? script_struct.var_b4fae213 : 0;
    players = getplayers();
    foreach (player in players) {
        player luinotifyevent(#"hash_5159e35a62fb7083", 3, 0, var_5fc990bf, level.var_b48509f9);
    }
}

// Namespace objective_manager/objective_manager
// Params 3, eflags: 0x2 linked
// Checksum 0x2c07c38b, Offset: 0x29a0
// Size: 0x244
function start_timer(n_seconds, str_label = #"", var_7ae7852d = 0) {
    level endon(#"game_ended", #"timer_stop");
    assert(n_seconds <= 900);
    level thread function_d3b93d12(n_seconds, str_label, var_7ae7852d);
    foreach (player in getplayers()) {
        player clientfield::set_to_player("sr_defend_timer", 0);
        if (!level.var_4f12f6d0 sr_objective_timer::is_open(player)) {
            level.var_4f12f6d0 sr_objective_timer::open(player, 1);
        }
        if (isdefined(level.var_2ca7afd8) && isdefined(level.var_74d92ff6) && level.var_74d92ff6 > 0) {
            remaining_time = level.var_2ca7afd8 - level.var_74d92ff6;
            player clientfield::set_to_player("sr_defend_timer", remaining_time);
            continue;
        }
        player clientfield::set_to_player("sr_defend_timer", n_seconds);
    }
    wait(n_seconds);
    level notify("timer_" + str_label);
    stop_timer();
}

// Namespace objective_manager/objective_manager
// Params 1, eflags: 0x2 linked
// Checksum 0xc58e017e, Offset: 0x2bf0
// Size: 0xd0
function function_73a53c87(params) {
    if (isplayer(self)) {
        self thread function_bdeca498(params);
        return;
    }
    foreach (player in getplayers()) {
        player thread function_bdeca498(params);
    }
}

// Namespace objective_manager/objective_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x4109a898, Offset: 0x2cc8
// Size: 0x12c
function function_bdeca498(params) {
    if (isdefined(level.var_2ca7afd8) && isdefined(level.var_74d92ff6) && level.var_74d92ff6 > 0) {
        if (isplayer(params.client)) {
            if (!level.var_4f12f6d0 sr_objective_timer::is_open(params.client)) {
                level.var_4f12f6d0 sr_objective_timer::open(params.client, 1);
            }
        } else if (!level.var_4f12f6d0 sr_objective_timer::is_open(self)) {
            level.var_4f12f6d0 sr_objective_timer::open(self, 1);
        }
        remaining_time = level.var_2ca7afd8 - level.var_74d92ff6;
        self clientfield::set_to_player("sr_defend_timer", remaining_time);
    }
}

// Namespace objective_manager/objective_manager
// Params 3, eflags: 0x2 linked
// Checksum 0x1b4a24ba, Offset: 0x2e00
// Size: 0x15c
function function_d3b93d12(n_seconds, str_label = #"", var_7ae7852d) {
    level endoncallback(&function_c30c5e91, #"game_ended", #"timer_stop", "timer_" + str_label);
    level.var_2ca7afd8 = n_seconds;
    level.var_74d92ff6 = 0;
    if (var_7ae7852d) {
        level.var_f901067f = spawn("script_origin", (0, 0, 0));
    }
    while (level.var_74d92ff6 < n_seconds) {
        if (var_7ae7852d) {
            str_alias = #"hash_aae61b4002c2d97";
            if (level.var_2ca7afd8 - level.var_74d92ff6 <= 10) {
                str_alias = #"hash_1d660b56dca8c84";
            }
            level.var_f901067f playsound(str_alias);
        }
        wait(1);
        level.var_74d92ff6++;
    }
}

// Namespace objective_manager/objective_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x82742c7b, Offset: 0x2f68
// Size: 0x56
function function_c30c5e91(*str_notify) {
    level.var_2ca7afd8 = undefined;
    level.var_74d92ff6 = undefined;
    if (isdefined(level.var_f901067f)) {
        level.var_f901067f delete();
        level.var_f901067f = undefined;
    }
}

// Namespace objective_manager/objective_manager
// Params 2, eflags: 0x0
// Checksum 0x848a8b6f, Offset: 0x2fc8
// Size: 0x134
function function_b8278876(n_seconds, str_label = #"") {
    level endon(#"game_ended");
    self endon(#"death", #"timer_stop");
    assert(n_seconds <= 900);
    self clientfield::set_to_player("sr_defend_timer", 0);
    if (!level.var_4f12f6d0 sr_objective_timer::is_open(self)) {
        level.var_4f12f6d0 sr_objective_timer::open(self, 1);
    }
    self clientfield::set_to_player("sr_defend_timer", n_seconds);
    wait(n_seconds);
    self notify("timer_" + str_label);
    self function_a809e69a();
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x2 linked
// Checksum 0xed164577, Offset: 0x3108
// Size: 0x108
function stop_timer() {
    foreach (player in getplayers()) {
        if (level.var_4f12f6d0 sr_objective_timer::is_open(player)) {
            level.var_4f12f6d0 sr_objective_timer::close(player);
        }
        player clientfield::set_to_player("sr_defend_timer", 0);
    }
    level notify(#"hash_5a7f014b541eb7a6");
    level notify(#"timer_stop");
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x2 linked
// Checksum 0xa37cdb0f, Offset: 0x3218
// Size: 0x76
function function_a809e69a() {
    if (level.var_4f12f6d0 sr_objective_timer::is_open(self)) {
        level.var_4f12f6d0 sr_objective_timer::close(self);
    }
    self clientfield::set_to_player("sr_defend_timer", 0);
    self notify(#"timer_stop");
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x0
// Checksum 0xcc3f33d7, Offset: 0x3298
// Size: 0xe
function function_7bfeebe3() {
    return level.var_cf558bf;
}

// Namespace objective_manager/objective_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x2f370ff8, Offset: 0x32b0
// Size: 0x138
function function_9d4e6125(scriptname) {
    wait(5);
    level endon(#"game_ended");
    level flag::wait_till(#"all_players_connected");
    var_5fc990bf = 0;
    if (isdefined(scriptname)) {
        var_5fc990bf = function_ae039b4(scriptname);
    } else {
        return;
    }
    players = getplayers();
    foreach (player in players) {
        player luinotifyevent(#"hash_5159e35a62fb7083", 3, 2, var_5fc990bf, level.var_b48509f9);
    }
}

// Namespace objective_manager/objective_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x34dd042, Offset: 0x33f0
// Size: 0x5c
function function_ae039b4(objective) {
    script_struct = content_manager::get_script(objective);
    var_5fc990bf = isdefined(script_struct.var_b4fae213) ? script_struct.var_b4fae213 : 0;
    return var_5fc990bf;
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x0
// Checksum 0x5acf69b1, Offset: 0x3458
// Size: 0x108
function function_2f9d355c() {
    foreach (e_player in getplayers()) {
        if (e_player inlaststand()) {
            e_player zm_laststand::revive_force_revive();
            e_player notify(#"player_revived", {#reviver:self});
            continue;
        }
        if (e_player util::is_spectating()) {
            e_player thread zm_player::spectator_respawn_player();
        }
    }
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x0
// Checksum 0x64f3b573, Offset: 0x3568
// Size: 0xd4
function function_589654ad() {
    foreach (e_player in getplayers()) {
        if (e_player inlaststand()) {
            e_player zm_laststand::revive_force_revive();
            e_player notify(#"player_revived", {#reviver:self});
        }
    }
}

// Namespace objective_manager/objective_manager
// Params 0, eflags: 0x1
// Checksum 0x4e8643a9, Offset: 0x3648
// Size: 0x36c
function autoexec function_42fa2bab() {
    var_8e30d7a1 = getscriptbundle(#"zmsr_objectives");
    assert(isdefined(var_8e30d7a1), "<unknown string>");
    var_1fd516bc = [];
    variants = [];
    if (isdefined(var_8e30d7a1.var_be78e8da)) {
        foreach (var_234c66d2 in var_8e30d7a1.var_be78e8da) {
            var_1fd516bc[var_1fd516bc.size] = var_234c66d2.objectivename;
            if (isdefined(var_234c66d2.var_e014f23a) && var_234c66d2.var_e014f23a.size) {
                variants[var_234c66d2.objectivename] = [];
                foreach (var_3b004792 in var_234c66d2.var_e014f23a) {
                    variants[var_234c66d2.objectivename][variants[var_234c66d2.objectivename].size] = var_3b004792.variantname;
                }
            }
        }
    }
    var_29b0b791 = [];
    if (isdefined(var_8e30d7a1.var_f9b18059)) {
        foreach (var_234c66d2 in var_8e30d7a1.var_f9b18059) {
            var_29b0b791[var_29b0b791.size] = var_234c66d2.objectivename;
            if (isdefined(var_234c66d2.var_e014f23a) && var_234c66d2.var_e014f23a.size) {
                variants[var_234c66d2.objectivename] = [];
                foreach (var_3b004792 in var_234c66d2.var_e014f23a) {
                    variants[var_234c66d2.objectivename][variants[var_234c66d2.objectivename].size] = var_3b004792.variantname;
                }
            }
        }
    }
    level.var_1d153516 = var_1fd516bc;
    level.var_4e996a3f = arraycombine(var_1fd516bc, var_29b0b791, 0, 0);
    level.var_f8197880 = variants;
}

/#

    // Namespace objective_manager/objective_manager
    // Params 0, eflags: 0x0
    // Checksum 0x1a0cf0b9, Offset: 0x39c0
    // Size: 0x1c4
    function init_devgui() {
        util::waittill_can_add_debug_command();
        namespace_420b39d3::function_d8ef0f00(&function_7a7ab1a2);
        util::add_devgui(content_manager::devgui_path("<unknown string>", 100), "<unknown string>");
        util::add_devgui(content_manager::devgui_path("<unknown string>", 101), "<unknown string>");
        util::add_devgui(content_manager::devgui_path("<unknown string>", 102), "<unknown string>");
        util::add_devgui(content_manager::devgui_path("<unknown string>", 102), "<unknown string>");
        util::add_devgui(content_manager::devgui_path("<unknown string>", 102), "<unknown string>");
        util::add_devgui(content_manager::devgui_path("<unknown string>", 103), "<unknown string>");
        util::add_devgui(content_manager::devgui_path("<unknown string>", 104), "<unknown string>");
    }

    // Namespace objective_manager/objective_manager
    // Params 1, eflags: 0x0
    // Checksum 0xa3196ce3, Offset: 0x3b90
    // Size: 0x50
    function function_a8417c4a(params) {
        if (params.value) {
            level thread function_67b313bb();
            return;
        }
        level notify(#"hash_473116b92ba013b9");
    }

    // Namespace objective_manager/objective_manager
    // Params 0, eflags: 0x0
    // Checksum 0xa13b5c5c, Offset: 0x3be8
    // Size: 0x3c2
    function function_67b313bb() {
        level notify(#"hash_473116b92ba013b9");
        level endon(#"hash_473116b92ba013b9");
        var_b49d430f = array("<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>");
        a_str_colors = array((1, 0, 0), (0, 1, 0), (0, 0, 1), (1, 1, 0), (1, 0.5, 0), (0, 1, 1), (1, 0, 1), (0.439216, 0.501961, 0.564706), (0, 0, 0), (0.501961, 0.501961, 0), (0.545098, 0.270588, 0.0745098));
        while (true) {
            foreach (index, var_83aaaa47 in var_b49d430f) {
                v_color = a_str_colors[index];
                var_2cd4e005 = struct::get_array(var_83aaaa47, "<unknown string>");
                foreach (s_objective in var_2cd4e005) {
                    print3d(s_objective.origin, "<unknown string>" + var_83aaaa47 + "<unknown string>" + (isdefined(s_objective.targetname) ? s_objective.targetname : "<unknown string>"), (1, 1, 0), undefined, 1);
                    n_distance = distance(getplayers()[0].origin, s_objective.origin);
                    var_5d97a083 = 150 * n_distance * 0.0001;
                    var_5d97a083 = max(150 / 1.5, var_5d97a083);
                    sphere(s_objective.origin, var_5d97a083, v_color);
                }
                debug2dtext((100, 500 + 25 * index, 0), var_83aaaa47 + "<unknown string>" + var_2cd4e005.size + "<unknown string>", v_color, undefined, undefined, undefined, 1.5);
            }
            waitframe(1);
        }
    }

    // Namespace objective_manager/objective_manager
    // Params 1, eflags: 0x0
    // Checksum 0xf3db98b2, Offset: 0x3fb8
    // Size: 0x2c
    function function_caba1575(instance) {
        self setorigin(instance.origin);
    }

    // Namespace objective_manager/objective_manager
    // Params 1, eflags: 0x0
    // Checksum 0xe9143b, Offset: 0x3ff0
    // Size: 0x59a
    function function_7a7ab1a2(params) {
        commands = ["<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>"];
        tokens = strtok(params.value, "<unknown string>");
        if (!tokens.size || !isinarray(commands, tokens[0])) {
            return;
        }
        switch (tokens[0]) {
        case #"hash_f6faed38fbaaaa5":
            level.var_cf558bf++;
            namespace_553954de::function_7c97e961(level.var_b48509f9 + 1);
            foreach (player in getplayers()) {
                player luinotifyevent(#"hash_5b1ff06d07e9002a", 3, 2, level.var_b48509f9, 0);
            }
            break;
        case #"hash_7c2f98129d7c2219":
            level.var_cf558bf--;
            namespace_553954de::function_7c97e961(level.var_b48509f9 - 1);
            foreach (player in getplayers()) {
                player luinotifyevent(#"hash_5b1ff06d07e9002a", 3, 2, level.var_b48509f9, 0);
            }
            break;
        case #"hash_6b5cf36b6de48f0a":
            if (isdefined(level.contentmanager.activeobjective)) {
                if (level.contentmanager.activeobjective.content_script_name === #"holdout") {
                    s_instance = level.contentmanager.activeobjective;
                    level notify(#"timer_stop");
                    s_instance waittill(#"return");
                    waitframe(1);
                }
                objective_ended(level.contentmanager.activeobjective, 1);
            }
            break;
        case #"hash_41c8b0af55de9e31":
            if (isdefined(level.contentmanager.activeobjective)) {
                objective_ended(level.contentmanager.activeobjective, 0);
            }
            break;
        case #"hash_56fb5b3dc9a94fb6":
            instance = level.contentmanager.activeobjective;
            if (!isdefined(instance)) {
                instance = level.var_d56035;
            }
            if (isdefined(instance)) {
                foreach (player in getplayers()) {
                    player function_caba1575(instance);
                }
            }
            break;
        case #"hash_5ec9d9c47f22480b":
            if (!is_true(level.var_44d6c017)) {
                level.var_44d6c017 = 1;
                level thread function_67b313bb();
            } else {
                level notify(#"hash_473116b92ba013b9");
                level.var_44d6c017 = undefined;
            }
            break;
        case #"hash_4fd21096bcb24e82":
            setdvar(#"hash_4fd21096bcb24e82", !getdvar(#"hash_4fd21096bcb24e82", 0));
            break;
        }
    }

    // Namespace objective_manager/objective_manager
    // Params 0, eflags: 0x4
    // Checksum 0xd6830cbc, Offset: 0x4598
    // Size: 0x51c
    function private function_3a388f32() {
        a_instances = level.contentmanager.currentdestination.var_e859e591;
        if (!isdefined(a_instances)) {
            return;
        }
        var_3e2976cd = 0;
        var_62dc4032 = 0;
        var_198cad94 = 0;
        var_2c0dd292 = 0;
        var_c147464d = 0;
        var_9c4efc51 = 0;
        var_869cd0ed = 0;
        foreach (var_38afa915 in a_instances) {
            if (var_38afa915[0].content_script_name === "<unknown string>") {
                continue;
            }
            foreach (s_instance in var_38afa915) {
                if (isdefined(s_instance.var_d5b937da)) {
                    var_e0c65bee = strtok(s_instance.var_d5b937da, "<unknown string>");
                    foreach (var_f78a0aff in var_e0c65bee) {
                        if (var_f78a0aff === 1) {
                            var_c147464d++;
                            continue;
                        }
                        if (var_f78a0aff === 2) {
                            var_9c4efc51++;
                            continue;
                        }
                        if (var_f78a0aff === 3) {
                            var_869cd0ed++;
                            continue;
                        }
                        var_c147464d++;
                        var_9c4efc51++;
                        var_869cd0ed++;
                    }
                }
                if (isdefined(s_instance.spawn_list)) {
                    var_318fda2 = strtok(s_instance.spawn_list, "<unknown string>");
                    foreach (str_start in var_318fda2) {
                        if (str_start === 1) {
                            var_3e2976cd++;
                            continue;
                        }
                        if (str_start === 2) {
                            var_62dc4032++;
                            continue;
                        }
                        if (str_start === 3) {
                            var_198cad94++;
                            continue;
                        }
                        if (str_start === 4) {
                            var_2c0dd292++;
                            continue;
                        }
                        var_3e2976cd++;
                        var_62dc4032++;
                        var_198cad94++;
                    }
                }
            }
        }
        println("<unknown string>" + level.contentmanager.currentdestination.targetname);
        println("<unknown string>");
        println("<unknown string>" + var_3e2976cd + "<unknown string>");
        println("<unknown string>" + var_62dc4032 + "<unknown string>");
        println("<unknown string>" + var_198cad94 + "<unknown string>");
        if (var_2c0dd292 > 0) {
            println("<unknown string>" + var_2c0dd292 + "<unknown string>");
        }
        println("<unknown string>" + var_c147464d + "<unknown string>");
        println("<unknown string>" + var_9c4efc51 + "<unknown string>");
        println("<unknown string>" + var_869cd0ed + "<unknown string>");
        println("<unknown string>");
    }

#/
