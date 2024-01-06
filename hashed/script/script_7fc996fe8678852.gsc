// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_8b6a9d79;

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 0, eflags: 0x5
// Checksum 0x1ca36eee, Offset: 0x110
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_f81b9dea74f0ee", &function_70a657d8, undefined, &function_5700f119, undefined);
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 0, eflags: 0x6 linked
// Checksum 0x33c0966, Offset: 0x160
// Size: 0x42
function private function_70a657d8() {
    level.var_7d45d0d4 = spawnstruct();
    level.var_7d45d0d4.var_405f83af = [];
    level.var_7d45d0d4.var_ef2adaf8 = [];
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 0, eflags: 0x6 linked
// Checksum 0xa083591a, Offset: 0x1b0
// Size: 0x54
function private function_5700f119() {
    function_81d05c4f();
    function_e97ef0d4();
    level.var_7d45d0d4.var_5eba96b3 = [];
    /#
        level thread init_devgui();
    #/
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 3, eflags: 0x2 linked
// Checksum 0xf3220530, Offset: 0x210
// Size: 0x1fa
function function_b3464a7c(var_524c3d6e, var_946ffae7, var_99021fa0 = 0) {
    /#
        assert(isstring(var_524c3d6e) || ishash(var_524c3d6e));
    #/
    /#
        assert(isfunctionptr(var_946ffae7));
    #/
    var_405f83af = level.var_7d45d0d4.var_405f83af;
    /#
        assert(!isdefined(var_405f83af[var_524c3d6e]));
    #/
    script = {#var_946ffae7:var_946ffae7, #var_524c3d6e:var_524c3d6e};
    var_405f83af[var_524c3d6e] = script;
    if (var_99021fa0) {
        if (!isdefined(level.var_7d45d0d4.var_ab00156)) {
            level.var_7d45d0d4.var_ab00156 = [];
        } else if (!isarray(level.var_7d45d0d4.var_ab00156)) {
            level.var_7d45d0d4.var_ab00156 = array(level.var_7d45d0d4.var_ab00156);
        }
        level.var_7d45d0d4.var_ab00156[level.var_7d45d0d4.var_ab00156.size] = var_524c3d6e;
    } else if (var_524c3d6e === #"safehouse") {
        script.var_b4fae213.script = 9;
    }
    return script;
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 1, eflags: 0x2 linked
// Checksum 0x2a3dfe27, Offset: 0x418
// Size: 0x64
function function_85255d0f(var_524c3d6e) {
    /#
        assert(isstring(var_524c3d6e) || ishash(var_524c3d6e));
    #/
    return level.var_7d45d0d4.var_405f83af[var_524c3d6e];
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 2, eflags: 0x2 linked
// Checksum 0x2fcacc6, Offset: 0x488
// Size: 0x62
function function_4485ab6d(key, value) {
    /#
        assert(isstring(key));
    #/
    return function_7b8e26b3(level.var_7d45d0d4.var_405f83af, value, key);
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 2, eflags: 0x2 linked
// Checksum 0x68df0cd5, Offset: 0x4f8
// Size: 0x1de
function function_31e8da78(destination, var_100faab4) {
    locations = array::randomize(function_f703a5a(destination));
    for (i = 0; i < locations.size; i++) {
        if (locations[i].variantname !== #"hash_4807866fcc400c90") {
            arrayremoveindex(locations, i, 1);
        }
    }
    arrayremovevalue(locations, undefined);
    foreach (location in locations) {
        instances = array::randomize(function_f703a5a(location));
        foreach (instance in instances) {
            if (instance.content_script_name === var_100faab4) {
                return instance;
            }
        }
    }
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 0, eflags: 0x6 linked
// Checksum 0x8515475b, Offset: 0x6e0
// Size: 0x40a
function private function_81d05c4f() {
    var_f5ae494f = struct::get_array(#"hash_313be7fccc870cdd", "variantname");
    destinations = [];
    level.var_7d45d0d4.destinations = destinations;
    foreach (destination in var_f5ae494f) {
        /#
            assert(isdefined(destination.targetname));
        #/
        /#
            assert(!isdefined(destinations[destination.targetname]));
        #/
        destinations[destination.targetname] = destination;
        function_656a32f0(destination);
        locations = [];
        destination.locations = locations;
        children = function_f703a5a(destination);
        foreach (child in children) {
            if (child.variantname != #"hash_4807866fcc400c90") {
                continue;
            }
            /#
                assert(isdefined(child.targetname));
            #/
            /#
                assert(!isdefined(locations[child.targetname]));
            #/
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
            /#
                assert(isdefined(enabled), "<unknown string>" + destination.var_7774bfaf + "<unknown string>");
            #/
            if (is_false(enabled)) {
                arrayremovevalue(destinations, struct::get(destination.targetname));
            }
        }
    }
    level.var_7d45d0d4.destinations = array::randomize(destinations);
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 2, eflags: 0x0
// Checksum 0x55b9f96c, Offset: 0xaf8
// Size: 0x144
function function_316bd0e6(str_destination, var_2d26f85c) {
    /#
        assert(isdefined(level.var_7d45d0d4.destinations[str_destination]) && isdefined("<unknown string>" + str_destination));
    #/
    i = 0;
    foreach (var_fc091632 in var_2d26f85c) {
        var_16003728 = struct::get(var_fc091632);
        /#
            assert(isdefined(var_16003728) && isdefined("<unknown string>" + var_fc091632));
        #/
        level.var_7d45d0d4.destinations[str_destination].var_d0d3add6[i] = var_16003728;
        i++;
    }
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 1, eflags: 0x2 linked
// Checksum 0xc5b4c34d, Offset: 0xc48
// Size: 0x9e
function function_fe9fb6fd(location) {
    /#
        assert(isstruct(location));
    #/
    /#
        assert(location.variantname == #"hash_4807866fcc400c90");
    #/
    var_e599dbfd = isarray(location.var_5eba96b3) && location.var_5eba96b3.size > 0;
    return var_e599dbfd;
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 0, eflags: 0x6 linked
// Checksum 0x95b05726, Offset: 0xcf0
// Size: 0x2ba
function private function_e97ef0d4() {
    var_b8a20df4 = struct::get_array(#"hash_4807866fcc400c90", "variantname");
    locations = [];
    level.var_7d45d0d4.locations = locations;
    foreach (location in var_b8a20df4) {
        /#
            assert(isdefined(location.targetname));
        #/
        /#
            assert(!isdefined(locations[location.targetname]));
        #/
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
        children = function_f703a5a(location);
        foreach (child in children) {
            if (child.variantname != #"hash_60feba77d317eb4") {
                continue;
            }
            /#
                assert(isdefined(child.content_script_name));
            #/
            /#
                assert(!isdefined(instances[child.content_script_name]));
            #/
            instances[child.content_script_name] = child;
            child.location = location;
        }
    }
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 1, eflags: 0x2 linked
// Checksum 0xd710ecc7, Offset: 0xfb8
// Size: 0x164
function function_20d7e9c7(instance) {
    /#
        assert(isstruct(instance));
    #/
    /#
        assert(instance.variantname == #"hash_60feba77d317eb4");
    #/
    /#
        assert(isstring(instance.content_script_name) || ishash(instance.content_script_name));
    #/
    /#
        assert(isstruct(instance.location));
    #/
    function_656a32f0(instance);
    script = level.var_7d45d0d4.var_405f83af[instance.content_script_name];
    if (isdefined(script.var_946ffae7)) {
        level thread [[ script.var_946ffae7 ]](instance);
    }
    function_130f0da3(instance);
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 1, eflags: 0x0
// Checksum 0xe6d18c74, Offset: 0x1128
// Size: 0xfc
function function_1c78a45d(instance) {
    /#
        assert(isstruct(instance));
    #/
    /#
        assert(instance.variantname == #"hash_60feba77d317eb4");
    #/
    /#
        assert(isstring(instance.content_script_name) || ishash(instance.content_script_name));
    #/
    /#
        assert(isstruct(instance.location));
    #/
    return !function_fe9fb6fd(instance.location);
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 1, eflags: 0x6 linked
// Checksum 0x85aa9335, Offset: 0x1230
// Size: 0xfe
function private function_130f0da3(instance) {
    /#
        assert(isarray(level.var_7d45d0d4.var_5eba96b3));
    #/
    if (!isdefined(instance.location.var_5eba96b3)) {
        instance.location.var_5eba96b3 = [];
    }
    instance.location.var_5eba96b3[instance.location.var_5eba96b3.size] = instance;
    var_5eba96b3 = level.var_7d45d0d4.var_5eba96b3;
    if (!isdefined(var_5eba96b3[instance.content_script_name])) {
        var_5eba96b3[instance.content_script_name] = [];
    }
    instances = var_5eba96b3[instance.content_script_name];
    instances[instances.size] = instance;
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 4, eflags: 0x0
// Checksum 0x63316990, Offset: 0x1338
// Size: 0x152
function function_76c93f39(var_832fa4bc, usecallback, hintstring, radius) {
    /#
        assert(isarray(var_832fa4bc));
    #/
    /#
        assert(isfunctionptr(usecallback));
    #/
    /#
        assert(ishash(hintstring));
    #/
    triggers = [];
    foreach (struct in var_832fa4bc) {
        trigger = function_214737c7(struct, usecallback, hintstring, undefined, radius);
        triggers[trigger.size] = trigger;
    }
    return triggers;
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 9, eflags: 0x2 linked
// Checksum 0x30a0a7ba, Offset: 0x1498
// Size: 0x24e
function function_214737c7(struct, usecallback, hintstring, var_e0355bdc, radius = 64, height = 128, centered = 1, offset = (0, 0, 0), var_499de507) {
    /#
        assert(isstruct(struct));
    #/
    /#
        assert(isfunctionptr(usecallback));
    #/
    /#
        assert(ishash(hintstring));
    #/
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

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 9, eflags: 0x2 linked
// Checksum 0x9e82365a, Offset: 0x16f0
// Size: 0x22e
function function_22e120bc(struct, usecallback, hintstring, var_e0355bdc, n_width = 64, n_length = 64, n_height = 64, offset = (0, 0, 0), var_499de507) {
    /#
        assert(isstruct(struct));
    #/
    /#
        assert(isfunctionptr(usecallback));
    #/
    /#
        assert(ishash(hintstring));
    #/
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

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 4, eflags: 0x2 linked
// Checksum 0x59015fbb, Offset: 0x1928
// Size: 0xf2
function function_cfa4f1a0(var_832fa4bc, modelname, var_bfbc537c = 0, var_619a5c20 = 1) {
    models = [];
    foreach (struct in var_832fa4bc) {
        model = function_f3d93ee9(struct, modelname, var_bfbc537c, var_619a5c20);
        models[models.size] = model;
    }
    return models;
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 4, eflags: 0x2 linked
// Checksum 0xb098414d, Offset: 0x1a28
// Size: 0x1f2
function function_f3d93ee9(struct, modelname, var_bfbc537c = 0, var_619a5c20 = 1) {
    model = util::spawn_model(modelname, struct.origin, struct.angles);
    if (isdefined(struct.targetname)) {
        model.targetname.model = struct.targetname;
    }
    if (isdefined(struct.script_noteworthy)) {
        model.script_noteworthy.model = struct.script_noteworthy;
    }
    if (var_bfbc537c) {
        model disconnectpaths();
    }
    if (var_619a5c20) {
        model function_619a5c20();
    }
    parent = struct;
    while (1) {
        if (parent.variantname === #"hash_60feba77d317eb4") {
            if (!isdefined(parent.var_344a6a1a)) {
                parent.var_344a6a1a.parent = [];
            } else if (!isarray(parent.var_344a6a1a)) {
                parent.var_344a6a1a.parent = array(parent.var_344a6a1a);
            }
            if (!isinarray(parent.var_344a6a1a, model)) {
                parent.var_344a6a1a[parent.var_344a6a1a.size] = model;
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

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 3, eflags: 0x2 linked
// Checksum 0x499e44d4, Offset: 0x1c28
// Size: 0x182
function function_94974eef(struct, var_145b9057, var_e546275c = 0) {
    zbarrier = spawn(var_145b9057, struct.origin);
    zbarrier.angles.zbarrier = struct.angles;
    if (var_e546275c) {
        zbarrier disconnectpaths();
    }
    parent = struct;
    while (1) {
        if (parent.variantname === #"hash_60feba77d317eb4") {
            if (!isdefined(parent.var_344a6a1a)) {
                parent.var_344a6a1a.parent = [];
            } else if (!isarray(parent.var_344a6a1a)) {
                parent.var_344a6a1a.parent = array(parent.var_344a6a1a);
            }
            if (!isinarray(parent.var_344a6a1a, zbarrier)) {
                parent.var_344a6a1a[parent.var_344a6a1a.size] = zbarrier;
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

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 0, eflags: 0x2 linked
// Checksum 0x14de847b, Offset: 0x1db8
// Size: 0x3bc
function function_690c4abe() {
    level notify(#"hash_4a140b223cb0019d");
    var_ca537a1a = 0;
    foreach (group in level.var_7d45d0d4.var_5eba96b3) {
        foreach (instance in group) {
            if (isdefined(instance.var_344a6a1a)) {
                foreach (model in instance.var_344a6a1a) {
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
                        var_ca537a1a = var_ca537a1a + 1;
                        if (var_ca537a1a % 10 == 0) {
                            waitframe(1);
                        }
                    }
                }
                arrayremovevalue(instance.var_344a6a1a, undefined);
            }
            arrayremovevalue(group, instance, 1);
            arrayremovevalue(instance.location.var_5eba96b3, instance, 1);
        }
        arrayremovevalue(group, undefined);
        arrayremovevalue(level.var_7d45d0d4.var_5eba96b3, group, 1);
    }
    arrayremovevalue(level.var_7d45d0d4.var_5eba96b3, undefined);
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 1, eflags: 0x6 linked
// Checksum 0xe8963417, Offset: 0x2180
// Size: 0x120
function private function_656a32f0(parent) {
    children = function_f703a5a(parent);
    var_fe2612fe = function_bedd4c47(children);
    parent.var_fe2612fe = var_fe2612fe;
    foreach (child in children) {
        if (child.variantname !== #"hash_ef6acc1408a8e86" || !isdefined(child.content_key)) {
            continue;
        }
        child.parent = parent;
        function_656a32f0(child);
    }
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 1, eflags: 0x6 linked
// Checksum 0x92941d3c, Offset: 0x22a8
// Size: 0x10a
function private function_bedd4c47(children) {
    groups = [];
    foreach (child in children) {
        if (child.variantname != #"hash_ef6acc1408a8e86" || !isdefined(child.content_key)) {
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

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 1, eflags: 0x2 linked
// Checksum 0xdde57805, Offset: 0x23c0
// Size: 0x42
function function_f703a5a(parent) {
    if (!isdefined(parent.targetname)) {
        return [];
    }
    return struct::get_array(parent.targetname, "target");
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 0, eflags: 0x4
// Checksum 0x906a8e4e, Offset: 0x2410
// Size: 0x3dc
function private init_devgui() {
    /#
        waittill_can_add_debug_command();
        adddebugcommand("<unknown string>");
        add_devgui(devgui_path("<unknown string>", 0), "<unknown string>");
        foreach (destination in level.var_7d45d0d4.destinations) {
            foreach (location in destination.locations) {
                foreach (instance in location.instances) {
                    var_4eb7bd13 = location.targetname + "<unknown string>" + instance.content_script_name;
                    path = devgui_path("<unknown string>", 1, destination.targetname, location.targetname, instance.content_script_name);
                    add_devgui(path, "<unknown string>" + var_4eb7bd13);
                }
            }
        }
        foreach (location in level.var_7d45d0d4.locations) {
            foreach (instance in location.instances) {
                var_4eb7bd13 = location.targetname + "<unknown string>" + instance.content_script_name;
                path = devgui_path("<unknown string>", 2, location.targetname, instance.content_script_name);
                add_devgui(path, "<unknown string>" + var_4eb7bd13);
            }
        }
        level thread debug_draw();
        level thread function_b3843ca7();
    #/
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 1, eflags: 0x40
// Checksum 0x55b75972, Offset: 0x27f8
// Size: 0xd8
function devgui_path(...) {
    /#
        path = "<unknown string>";
        foreach (arg in vararg) {
            if (isint(arg)) {
                path = path + "<unknown string>";
            } else {
                path = path + "<unknown string>";
            }
            path = path + arg;
        }
        return path;
    #/
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 0, eflags: 0x4
// Checksum 0xdf72fd31, Offset: 0x28d8
// Size: 0x1c0
function private function_b3843ca7() {
    /#
        while (1) {
            setdvar(#"hash_6d5a45dcdc3af9b5", "<unknown string>");
            waitframe(1);
            var_4eb7bd13 = getdvarstring(#"hash_6d5a45dcdc3af9b5", "<unknown string>");
            if (var_4eb7bd13 == "<unknown string>") {
                continue;
            }
            keys = strtok(var_4eb7bd13, "<unknown string>");
            if (keys.size != 2) {
                continue;
            }
            location = level.var_7d45d0d4.locations[keys[0]];
            if (!isdefined(location)) {
                continue;
            }
            if (isdefined(location.var_dcb924fd)) {
                continue;
            }
            instance = location.instances[keys[1]];
            if (!isdefined(instance)) {
                continue;
            }
            teleport = instance.var_fe2612fe[#"start"][0];
            if (!isdefined(teleport)) {
                teleport = instance;
            }
            getplayers()[0] setorigin(teleport.origin);
            function_20d7e9c7(instance);
        }
    #/
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 0, eflags: 0x4
// Checksum 0x89ad8590, Offset: 0x2aa0
// Size: 0x162
function private debug_draw() {
    /#
        while (1) {
            if (getdvarint(#"hash_55e098bf3549b14d", 0)) {
                foreach (destination in level.var_7d45d0d4.destinations) {
                    function_930df82f(destination);
                }
                foreach (location in level.var_7d45d0d4.locations) {
                    function_540bcd15(location, location.destination);
                }
            }
            waitframe(1);
        }
    #/
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 1, eflags: 0x0
// Checksum 0x4197f942, Offset: 0x2c10
// Size: 0x34
function function_930df82f(destination) {
    /#
        function_56a6441e(destination, (0, 1, 0), undefined, destination.targetname);
    #/
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 2, eflags: 0x0
// Checksum 0x99f88a9c, Offset: 0x2c50
// Size: 0xe0
function function_540bcd15(location, destination) {
    /#
        if (!isdefined(destination)) {
            destination = undefined;
        }
        function_56a6441e(location, (0, 1, 1), destination, location.targetname);
        foreach (instance in location.instances) {
            function_c01c2807(instance, location);
        }
    #/
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 2, eflags: 0x0
// Checksum 0x9c6a08d7, Offset: 0x2d38
// Size: 0x5c
function function_c01c2807(instance, location) {
    /#
        if (!isdefined(location)) {
            location = undefined;
        }
        function_56a6441e(instance, (0, 0, 1), location);
        function_b2b08c09(instance);
    #/
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 1, eflags: 0x0
// Checksum 0x69f27836, Offset: 0x2da0
// Size: 0x13c
function function_b2b08c09(node) {
    /#
        if (isarray(node.var_fe2612fe)) {
            foreach (group in node.var_fe2612fe) {
                foreach (child in group) {
                    function_56a6441e(child, (1, 0, 1), node);
                    function_b2b08c09(child);
                }
            }
        }
    #/
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 4, eflags: 0x0
// Checksum 0xab4810c0, Offset: 0x2ee8
// Size: 0x13c
function function_56a6441e(struct, color, parent, var_f5b09155) {
    /#
        if (!isdefined(parent)) {
            parent = undefined;
        }
        if (!isdefined(var_f5b09155)) {
            var_f5b09155 = undefined;
        }
        var_acfd36dc = undefined;
        var_acfd36dc = function_4636f4cb(var_acfd36dc, struct.variantname);
        var_acfd36dc = function_4636f4cb(var_acfd36dc, struct.content_script_name);
        var_acfd36dc = function_4636f4cb(var_acfd36dc, struct.content_key);
        var_acfd36dc = function_4636f4cb(var_acfd36dc, var_f5b09155);
        if (isdefined(parent)) {
            line(struct.origin, parent.origin, color);
        }
        sphere(struct.origin, 8, color);
        print3d(struct.origin, var_acfd36dc);
    #/
}

// Namespace namespace_8b6a9d79/namespace_8b6a9d79
// Params 2, eflags: 0x0
// Checksum 0x284293fb, Offset: 0x3030
// Size: 0x7a
function function_4636f4cb(str, append) {
    /#
        if (ishash(append)) {
            append = function_9e72a96(append);
        }
        if (!isdefined(str)) {
            return append;
        } else if (isdefined(append)) {
            return (str + "<unknown string>" + append);
        }
        return str;
    #/
}

