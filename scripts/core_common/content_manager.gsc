// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace content_manager;

// Namespace content_manager/content_manager
// Params 0, eflags: 0x5
// Checksum 0x1ca36eee, Offset: 0x110
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"content_manager", &preinit, undefined, &finalize, undefined);
}

// Namespace content_manager/content_manager
// Params 0, eflags: 0x4
// Checksum 0x33c0966, Offset: 0x160
// Size: 0x42
function private preinit() {
    level.contentmanager = spawnstruct();
    level.contentmanager.registeredscripts = [];
    level.contentmanager.scriptcategories = [];
}

// Namespace content_manager/content_manager
// Params 0, eflags: 0x4
// Checksum 0xa083591a, Offset: 0x1b0
// Size: 0x54
function private finalize() {
    setup_destinations();
    setup_locations();
    level.contentmanager.spawnedinstances = [];
    /#
        level thread init_devgui();
    #/
}

// Namespace content_manager/content_manager
// Params 3, eflags: 0x0
// Checksum 0xf3220530, Offset: 0x210
// Size: 0x1fa
function register_script(scriptname, spawncallback, var_99021fa0 = 0) {
    assert(isstring(scriptname) || ishash(scriptname));
    assert(isfunctionptr(spawncallback));
    registeredscripts = level.contentmanager.registeredscripts;
    assert(!isdefined(registeredscripts[scriptname]));
    script = {#scriptname:scriptname, #spawncallback:spawncallback};
    registeredscripts[scriptname] = script;
    if (var_99021fa0) {
        if (!isdefined(level.contentmanager.var_ab00156)) {
            level.contentmanager.var_ab00156 = [];
        } else if (!isarray(level.contentmanager.var_ab00156)) {
            level.contentmanager.var_ab00156 = array(level.contentmanager.var_ab00156);
        }
        level.contentmanager.var_ab00156[level.contentmanager.var_ab00156.size] = scriptname;
    } else if (scriptname === #"safehouse") {
        script.var_b4fae213 = 9;
    }
    return script;
}

// Namespace content_manager/content_manager
// Params 1, eflags: 0x0
// Checksum 0x2a3dfe27, Offset: 0x418
// Size: 0x64
function get_script(scriptname) {
    assert(isstring(scriptname) || ishash(scriptname));
    return level.contentmanager.registeredscripts[scriptname];
}

// Namespace content_manager/content_manager
// Params 2, eflags: 0x0
// Checksum 0x2fcacc6, Offset: 0x488
// Size: 0x62
function function_4485ab6d(key, value) {
    assert(isstring(key));
    return function_7b8e26b3(level.contentmanager.registeredscripts, value, key);
}

// Namespace content_manager/content_manager
// Params 2, eflags: 0x0
// Checksum 0x68df0cd5, Offset: 0x4f8
// Size: 0x1de
function function_31e8da78(destination, content_category) {
    locations = array::randomize(get_children(destination));
    for (i = 0; i < locations.size; i++) {
        if (locations[i].variantname !== #"hash_4807866fcc400c90") {
            arrayremoveindex(locations, i, 1);
        }
    }
    arrayremovevalue(locations, undefined);
    foreach (location in locations) {
        instances = array::randomize(get_children(location));
        foreach (instance in instances) {
            if (instance.content_script_name === content_category) {
                return instance;
            }
        }
    }
}

// Namespace content_manager/content_manager
// Params 0, eflags: 0x4
// Checksum 0x8515475b, Offset: 0x6e0
// Size: 0x40a
function private setup_destinations() {
    mapdestinations = struct::get_array(#"hash_313be7fccc870cdd", "variantname");
    destinations = [];
    level.contentmanager.destinations = destinations;
    foreach (destination in mapdestinations) {
        assert(isdefined(destination.targetname));
        assert(!isdefined(destinations[destination.targetname]));
        destinations[destination.targetname] = destination;
        function_656a32f0(destination);
        locations = [];
        destination.locations = locations;
        children = get_children(destination);
        foreach (child in children) {
            if (child.variantname != #"hash_4807866fcc400c90") {
                continue;
            }
            assert(isdefined(child.targetname));
            assert(!isdefined(locations[child.targetname]));
            locations[child.targetname] = child;
        }
    }
    var_e5f80f4e = getmapfields(util::get_map_name());
    if (isdefined(var_e5f80f4e.var_dd9e5316)) {
        foreach (destination in var_e5f80f4e.var_dd9e5316) {
            struct::get(destination.targetname).var_8d629117 = !is_true(destination.var_a15fd6d3);
            if (!isdefined(destination.var_7774bfaf)) {
                continue;
            }
            enabled = getgametypesetting(destination.var_7774bfaf);
            assert(isdefined(enabled), "<unknown string>" + destination.var_7774bfaf + "<unknown string>");
            if (is_false(enabled)) {
                arrayremovevalue(destinations, struct::get(destination.targetname));
            }
        }
    }
    level.contentmanager.destinations = array::randomize(destinations);
}

// Namespace content_manager/content_manager
// Params 2, eflags: 0x0
// Checksum 0x55b9f96c, Offset: 0xaf8
// Size: 0x144
function function_316bd0e6(str_destination, var_2d26f85c) {
    assert(isdefined(level.contentmanager.destinations[str_destination]) && isdefined("<unknown string>" + str_destination));
    i = 0;
    foreach (var_fc091632 in var_2d26f85c) {
        adjacency = struct::get(var_fc091632);
        assert(isdefined(adjacency) && isdefined("<unknown string>" + var_fc091632));
        level.contentmanager.destinations[str_destination].adjacencies[i] = adjacency;
        i++;
    }
}

// Namespace content_manager/content_manager
// Params 1, eflags: 0x0
// Checksum 0xc5b4c34d, Offset: 0xc48
// Size: 0x9e
function function_fe9fb6fd(location) {
    assert(isstruct(location));
    assert(location.variantname == #"hash_4807866fcc400c90");
    spawned_instances = isarray(location.spawnedinstances) && location.spawnedinstances.size > 0;
    return spawned_instances;
}

// Namespace content_manager/content_manager
// Params 0, eflags: 0x4
// Checksum 0x95b05726, Offset: 0xcf0
// Size: 0x2ba
function private setup_locations() {
    maplocations = struct::get_array(#"hash_4807866fcc400c90", "variantname");
    locations = [];
    level.contentmanager.locations = locations;
    foreach (location in maplocations) {
        assert(isdefined(location.targetname));
        assert(!isdefined(locations[location.targetname]));
        locations[location.targetname] = location;
        if (isdefined(location.target)) {
            parent = struct::get(location.target);
            if (parent.variantname == #"hash_313be7fccc870cdd") {
                location.destination = parent;
            }
        }
        function_656a32f0(location);
        instances = [];
        location.instances = instances;
        children = get_children(location);
        foreach (child in children) {
            if (child.variantname != #"hash_60feba77d317eb4") {
                continue;
            }
            assert(isdefined(child.content_script_name));
            assert(!isdefined(instances[child.content_script_name]));
            instances[child.content_script_name] = child;
            child.location = location;
        }
    }
}

// Namespace content_manager/content_manager
// Params 1, eflags: 0x0
// Checksum 0xd710ecc7, Offset: 0xfb8
// Size: 0x164
function spawn_instance(instance) {
    assert(isstruct(instance));
    assert(instance.variantname == #"hash_60feba77d317eb4");
    assert(isstring(instance.content_script_name) || ishash(instance.content_script_name));
    assert(isstruct(instance.location));
    function_656a32f0(instance);
    script = level.contentmanager.registeredscripts[instance.content_script_name];
    if (isdefined(script.spawncallback)) {
        level thread [[ script.spawncallback ]](instance);
    }
    function_130f0da3(instance);
}

// Namespace content_manager/content_manager
// Params 1, eflags: 0x0
// Checksum 0xe6d18c74, Offset: 0x1128
// Size: 0xfc
function function_1c78a45d(instance) {
    assert(isstruct(instance));
    assert(instance.variantname == #"hash_60feba77d317eb4");
    assert(isstring(instance.content_script_name) || ishash(instance.content_script_name));
    assert(isstruct(instance.location));
    return !function_fe9fb6fd(instance.location);
}

// Namespace content_manager/content_manager
// Params 1, eflags: 0x4
// Checksum 0x85aa9335, Offset: 0x1230
// Size: 0xfe
function private function_130f0da3(instance) {
    assert(isarray(level.contentmanager.spawnedinstances));
    if (!isdefined(instance.location.spawnedinstances)) {
        instance.location.spawnedinstances = [];
    }
    instance.location.spawnedinstances[instance.location.spawnedinstances.size] = instance;
    spawnedinstances = level.contentmanager.spawnedinstances;
    if (!isdefined(spawnedinstances[instance.content_script_name])) {
        spawnedinstances[instance.content_script_name] = [];
    }
    instances = spawnedinstances[instance.content_script_name];
    instances[instances.size] = instance;
}

// Namespace content_manager/content_manager
// Params 4, eflags: 0x0
// Checksum 0x63316990, Offset: 0x1338
// Size: 0x152
function function_76c93f39(contentstructs, usecallback, hintstring, radius) {
    assert(isarray(contentstructs));
    assert(isfunctionptr(usecallback));
    assert(ishash(hintstring));
    triggers = [];
    foreach (struct in contentstructs) {
        trigger = spawn_interact(struct, usecallback, hintstring, undefined, radius);
        triggers[trigger.size] = trigger;
    }
    return triggers;
}

// Namespace content_manager/content_manager
// Params 9, eflags: 0x0
// Checksum 0x30a0a7ba, Offset: 0x1498
// Size: 0x24e
function spawn_interact(struct, usecallback, hintstring, var_e0355bdc, radius = 64, height = 128, centered = 1, offset = (0, 0, 0), var_499de507) {
    assert(isstruct(struct));
    assert(isfunctionptr(usecallback));
    assert(ishash(hintstring));
    if (isdefined(struct.radius)) {
        radius = struct.radius;
    }
    usetrigger = spawn("trigger_radius_use", struct.origin + offset, 0, radius, height, centered);
    usetrigger triggerignoreteam();
    usetrigger setcursorhint("HINT_NOICON");
    usetrigger usetriggerrequirelookat();
    if (isdefined(var_e0355bdc) && isdefined(var_499de507)) {
        usetrigger sethintstring(hintstring, var_e0355bdc, var_499de507);
    } else if (isdefined(var_e0355bdc)) {
        usetrigger sethintstring(hintstring, var_e0355bdc);
    } else {
        usetrigger sethintstring(hintstring);
    }
    usetrigger callback::on_trigger(usecallback);
    struct.trigger = usetrigger;
    return usetrigger;
}

// Namespace content_manager/content_manager
// Params 9, eflags: 0x0
// Checksum 0x9e82365a, Offset: 0x16f0
// Size: 0x22e
function function_22e120bc(struct, usecallback, hintstring, var_e0355bdc, n_width = 64, n_length = 64, n_height = 64, offset = (0, 0, 0), var_499de507) {
    assert(isstruct(struct));
    assert(isfunctionptr(usecallback));
    assert(ishash(hintstring));
    usetrigger = spawn("trigger_box_use", struct.origin + offset, 0, n_width, n_length, n_height);
    usetrigger triggerignoreteam();
    usetrigger setcursorhint("HINT_NOICON");
    usetrigger usetriggerrequirelookat();
    if (isdefined(var_e0355bdc) && isdefined(var_499de507)) {
        usetrigger sethintstring(hintstring, var_e0355bdc, var_499de507);
    } else if (isdefined(var_e0355bdc)) {
        usetrigger sethintstring(hintstring, var_e0355bdc);
    } else {
        usetrigger sethintstring(hintstring);
    }
    usetrigger callback::on_trigger(usecallback);
    struct.trigger = usetrigger;
    return usetrigger;
}

// Namespace content_manager/content_manager
// Params 4, eflags: 0x0
// Checksum 0x59015fbb, Offset: 0x1928
// Size: 0xf2
function function_cfa4f1a0(contentstructs, modelname, var_bfbc537c = 0, var_619a5c20 = 1) {
    models = [];
    foreach (struct in contentstructs) {
        model = spawn_script_model(struct, modelname, var_bfbc537c, var_619a5c20);
        models[models.size] = model;
    }
    return models;
}

// Namespace content_manager/content_manager
// Params 4, eflags: 0x0
// Checksum 0xb098414d, Offset: 0x1a28
// Size: 0x1f2
function spawn_script_model(struct, modelname, var_bfbc537c = 0, var_619a5c20 = 1) {
    model = util::spawn_model(modelname, struct.origin, struct.angles);
    if (isdefined(struct.targetname)) {
        model.targetname = struct.targetname;
    }
    if (isdefined(struct.script_noteworthy)) {
        model.script_noteworthy = struct.script_noteworthy;
    }
    if (var_bfbc537c) {
        model disconnectpaths();
    }
    if (var_619a5c20) {
        model function_619a5c20();
    }
    parent = struct;
    while (true) {
        if (parent.variantname === #"hash_60feba77d317eb4") {
            if (!isdefined(parent.a_models)) {
                parent.a_models = [];
            } else if (!isarray(parent.a_models)) {
                parent.a_models = array(parent.a_models);
            }
            if (!isinarray(parent.a_models, model)) {
                parent.a_models[parent.a_models.size] = model;
            }
            break;
        }
        parent = struct::get(parent.target);
        if (!isdefined(parent)) {
            break;
        }
    }
    return model;
}

// Namespace content_manager/content_manager
// Params 3, eflags: 0x0
// Checksum 0x499e44d4, Offset: 0x1c28
// Size: 0x182
function spawn_zbarrier(struct, zbarrier_classname, var_e546275c = 0) {
    zbarrier = spawn(zbarrier_classname, struct.origin);
    zbarrier.angles = struct.angles;
    if (var_e546275c) {
        zbarrier disconnectpaths();
    }
    parent = struct;
    while (true) {
        if (parent.variantname === #"hash_60feba77d317eb4") {
            if (!isdefined(parent.a_models)) {
                parent.a_models = [];
            } else if (!isarray(parent.a_models)) {
                parent.a_models = array(parent.a_models);
            }
            if (!isinarray(parent.a_models, zbarrier)) {
                parent.a_models[parent.a_models.size] = zbarrier;
            }
            break;
        }
        parent = struct::get(parent.target);
        if (!isdefined(parent)) {
            break;
        }
    }
    return zbarrier;
}

// Namespace content_manager/content_manager
// Params 0, eflags: 0x0
// Checksum 0x14de847b, Offset: 0x1db8
// Size: 0x3bc
function function_690c4abe() {
    level notify(#"hash_4a140b223cb0019d");
    models_cleaned = 0;
    foreach (group in level.contentmanager.spawnedinstances) {
        foreach (instance in group) {
            if (isdefined(instance.a_models)) {
                foreach (model in instance.a_models) {
                    if (isdefined(model)) {
                        if (isdefined(model.trigger)) {
                            model.trigger delete();
                        }
                        if (isdefined(model.var_e55c8b4e)) {
                            if (isdefined(level.var_49f8cef4)) {
                                [[ level.var_49f8cef4 ]](model.var_e55c8b4e);
                            } else {
                                objective_delete(model.var_e55c8b4e);
                                gameobjects::release_obj_id(model.var_e55c8b4e);
                            }
                        }
                        if (isdefined(model.objectiveid)) {
                            if (isdefined(level.var_49f8cef4)) {
                                [[ level.var_49f8cef4 ]](model.objectiveid);
                            } else {
                                objective_delete(model.objectiveid);
                                gameobjects::release_obj_id(model.objectiveid);
                            }
                        }
                        model scene::stop();
                        model delete();
                        models_cleaned += 1;
                        if (models_cleaned % 10 == 0) {
                            waitframe(1);
                        }
                    }
                }
                arrayremovevalue(instance.a_models, undefined);
            }
            arrayremovevalue(group, instance, 1);
            arrayremovevalue(instance.location.spawnedinstances, instance, 1);
        }
        arrayremovevalue(group, undefined);
        arrayremovevalue(level.contentmanager.spawnedinstances, group, 1);
    }
    arrayremovevalue(level.contentmanager.spawnedinstances, undefined);
}

// Namespace content_manager/content_manager
// Params 1, eflags: 0x4
// Checksum 0xe8963417, Offset: 0x2180
// Size: 0x120
function private function_656a32f0(parent) {
    children = get_children(parent);
    contentgroups = function_bedd4c47(children);
    parent.contentgroups = contentgroups;
    foreach (child in children) {
        if (child.variantname !== #"content_struct" || !isdefined(child.content_key)) {
            continue;
        }
        child.parent = parent;
        function_656a32f0(child);
    }
}

// Namespace content_manager/content_manager
// Params 1, eflags: 0x4
// Checksum 0x92941d3c, Offset: 0x22a8
// Size: 0x10a
function private function_bedd4c47(children) {
    groups = [];
    foreach (child in children) {
        if (child.variantname != #"content_struct" || !isdefined(child.content_key)) {
            continue;
        }
        if (!isdefined(groups[child.content_key])) {
            groups[child.content_key] = [];
        }
        group = groups[child.content_key];
        group[group.size] = child;
    }
    return groups;
}

// Namespace content_manager/content_manager
// Params 1, eflags: 0x0
// Checksum 0xdde57805, Offset: 0x23c0
// Size: 0x42
function get_children(parent) {
    if (!isdefined(parent.targetname)) {
        return [];
    }
    return struct::get_array(parent.targetname, "target");
}

/#

    // Namespace content_manager/content_manager
    // Params 0, eflags: 0x4
    // Checksum 0x906a8e4e, Offset: 0x2410
    // Size: 0x3dc
    function private init_devgui() {
        util::waittill_can_add_debug_command();
        adddebugcommand("<unknown string>");
        util::add_devgui(devgui_path("<unknown string>", 0), "<unknown string>");
        foreach (destination in level.contentmanager.destinations) {
            foreach (location in destination.locations) {
                foreach (instance in location.instances) {
                    instancekey = location.targetname + "<unknown string>" + instance.content_script_name;
                    path = devgui_path("<unknown string>", 1, destination.targetname, location.targetname, instance.content_script_name);
                    util::add_devgui(path, "<unknown string>" + instancekey);
                }
            }
        }
        foreach (location in level.contentmanager.locations) {
            foreach (instance in location.instances) {
                instancekey = location.targetname + "<unknown string>" + instance.content_script_name;
                path = devgui_path("<unknown string>", 2, location.targetname, instance.content_script_name);
                util::add_devgui(path, "<unknown string>" + instancekey);
            }
        }
        level thread debug_draw();
        level thread function_b3843ca7();
    }

    // Namespace content_manager/content_manager
    // Params 1, eflags: 0x40
    // Checksum 0x55b75972, Offset: 0x27f8
    // Size: 0xd8
    function devgui_path(...) {
        path = "<unknown string>";
        foreach (arg in vararg) {
            if (isint(arg)) {
                path += "<unknown string>";
            } else {
                path += "<unknown string>";
            }
            path += arg;
        }
        return path;
    }

    // Namespace content_manager/content_manager
    // Params 0, eflags: 0x4
    // Checksum 0xdf72fd31, Offset: 0x28d8
    // Size: 0x1c0
    function private function_b3843ca7() {
        while (true) {
            setdvar(#"hash_6d5a45dcdc3af9b5", "<unknown string>");
            waitframe(1);
            instancekey = getdvarstring(#"hash_6d5a45dcdc3af9b5", "<unknown string>");
            if (instancekey == "<unknown string>") {
                continue;
            }
            keys = strtok(instancekey, "<unknown string>");
            if (keys.size != 2) {
                continue;
            }
            location = level.contentmanager.locations[keys[0]];
            if (!isdefined(location)) {
                continue;
            }
            if (isdefined(location.spawnedinstance)) {
                continue;
            }
            instance = location.instances[keys[1]];
            if (!isdefined(instance)) {
                continue;
            }
            teleport = instance.contentgroups[#"start"][0];
            if (!isdefined(teleport)) {
                teleport = instance;
            }
            getplayers()[0] setorigin(teleport.origin);
            spawn_instance(instance);
        }
    }

    // Namespace content_manager/content_manager
    // Params 0, eflags: 0x4
    // Checksum 0x89ad8590, Offset: 0x2aa0
    // Size: 0x162
    function private debug_draw() {
        while (true) {
            if (getdvarint(#"hash_55e098bf3549b14d", 0)) {
                foreach (destination in level.contentmanager.destinations) {
                    draw_destination(destination);
                }
                foreach (location in level.contentmanager.locations) {
                    draw_location(location, location.destination);
                }
            }
            waitframe(1);
        }
    }

    // Namespace content_manager/content_manager
    // Params 1, eflags: 0x0
    // Checksum 0x4197f942, Offset: 0x2c10
    // Size: 0x34
    function draw_destination(destination) {
        draw_struct(destination, (0, 1, 0), undefined, destination.targetname);
    }

    // Namespace content_manager/content_manager
    // Params 2, eflags: 0x0
    // Checksum 0x99f88a9c, Offset: 0x2c50
    // Size: 0xe0
    function draw_location(location, destination) {
        if (!isdefined(destination)) {
            destination = undefined;
        }
        draw_struct(location, (0, 1, 1), destination, location.targetname);
        foreach (instance in location.instances) {
            draw_instance(instance, location);
        }
    }

    // Namespace content_manager/content_manager
    // Params 2, eflags: 0x0
    // Checksum 0x9c6a08d7, Offset: 0x2d38
    // Size: 0x5c
    function draw_instance(instance, location) {
        if (!isdefined(location)) {
            location = undefined;
        }
        draw_struct(instance, (0, 0, 1), location);
        function_b2b08c09(instance);
    }

    // Namespace content_manager/content_manager
    // Params 1, eflags: 0x0
    // Checksum 0x69f27836, Offset: 0x2da0
    // Size: 0x13c
    function function_b2b08c09(node) {
        if (isarray(node.contentgroups)) {
            foreach (group in node.contentgroups) {
                foreach (child in group) {
                    draw_struct(child, (1, 0, 1), node);
                    function_b2b08c09(child);
                }
            }
        }
    }

    // Namespace content_manager/content_manager
    // Params 4, eflags: 0x0
    // Checksum 0xab4810c0, Offset: 0x2ee8
    // Size: 0x13c
    function draw_struct(struct, color, parent, extrastr) {
        if (!isdefined(parent)) {
            parent = undefined;
        }
        if (!isdefined(extrastr)) {
            extrastr = undefined;
        }
        debugstr = undefined;
        debugstr = function_4636f4cb(debugstr, struct.variantname);
        debugstr = function_4636f4cb(debugstr, struct.content_script_name);
        debugstr = function_4636f4cb(debugstr, struct.content_key);
        debugstr = function_4636f4cb(debugstr, extrastr);
        if (isdefined(parent)) {
            line(struct.origin, parent.origin, color);
        }
        sphere(struct.origin, 8, color);
        print3d(struct.origin, debugstr);
    }

    // Namespace content_manager/content_manager
    // Params 2, eflags: 0x0
    // Checksum 0x284293fb, Offset: 0x3030
    // Size: 0x7a
    function function_4636f4cb(str, append) {
        if (ishash(append)) {
            append = function_9e72a96(append);
        }
        if (!isdefined(str)) {
            return append;
        } else if (isdefined(append)) {
            return (str + "<unknown string>" + append);
        }
        return str;
    }

#/
