// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\player\player_stats.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;

#namespace mimic_prop_spawn;

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 0, eflags: 0x0
// Checksum 0xa97ed2f6, Offset: 0x270
// Size: 0x12c
function init() {
    if (!isdefined(level.var_5fafe5ac)) {
        level.var_5fafe5ac = [];
    }
    if (!isdefined(level.var_b7a636c9)) {
        level.var_b7a636c9 = [];
    }
    if (!isdefined(level.var_70d37ee0)) {
        level.var_70d37ee0 = [];
    }
    if (!isdefined(level.var_6e175eb)) {
        level.var_6e175eb = struct::get_array("mimic_spawn_point", "variantname");
    }
    if (!isdefined(level.var_5a6d7d3e)) {
        level.var_5a6d7d3e = [];
    }
    clientfield::register("scriptmover", "mimic_prop_rob", 6000, 3, "int");
    clientfield::register("scriptmover", "mimic_prop_rattle_cf", 6000, 1, "counter");
    level thread function_8be6cc92();
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 4, eflags: 0x0
// Checksum 0xe0ecb50a, Offset: 0x3a8
// Size: 0x14a
function function_b309db61(&var_b103a71c, entity, var_d1cd7a80, var_75f9ae2d) {
    var_491e08a8 = var_d1cd7a80;
    if (var_b103a71c.size > 1) {
        assist_theia_50 = array::randomize(var_b103a71c);
        if (!isdefined(var_491e08a8)) {
            var_491e08a8 = array::pop_front(assist_theia_50);
        }
        var_7331ff6c = randomintrangeinclusive(3, 5);
        var_a6fe91fd = function_c928b745(assist_theia_50, var_7331ff6c, entity, var_75f9ae2d);
    } else {
        var_a6fe91fd = [];
        if (!isdefined(var_491e08a8)) {
            var_491e08a8 = var_b103a71c[0];
        }
    }
    if (isdefined(var_491e08a8.origin) && !isstruct(var_491e08a8)) {
        var_491e08a8 = {#origin:var_491e08a8.origin};
    }
    return function_913ecbbc(var_a6fe91fd, entity, var_491e08a8, undefined, var_75f9ae2d);
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 5, eflags: 0x0
// Checksum 0xa73e1dbe, Offset: 0x500
// Size: 0xb4
function function_51012821(origin, entity, var_d1cd7a80, var_9b487a9b = 1, search_radius = 1000) {
    spawn_points = function_d8f63afd(origin, search_radius, var_9b487a9b);
    if (spawn_points.size || isdefined(var_d1cd7a80)) {
        if (!spawn_points.size) {
            spawn_points[spawn_points.size] = var_d1cd7a80;
        }
        return function_b309db61(spawn_points, entity, var_d1cd7a80);
    }
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 5, eflags: 0x0
// Checksum 0x9dc6637d, Offset: 0x5c0
// Size: 0x238
function function_913ecbbc(&var_a6fe91fd, mimic, var_1386d828, var_c3962187, var_75f9ae2d) {
    if (isstruct(var_1386d828)) {
        if (isdefined(level.var_6939ebc1[var_1386d828.lure_prop_type])) {
            var_6f50b277 = [[ level.var_6939ebc1[var_1386d828.lure_prop_type].handler ]](var_1386d828);
            if (isdefined(var_6f50b277)) {
                var_1386d828 = var_6f50b277.prop;
                var_d56229a9 = var_6f50b277.activation_func;
            }
        } else {
            var_1386d828 = function_fc585b51(var_1386d828, var_75f9ae2d);
        }
        if (isdefined(var_1386d828)) {
            var_a6fe91fd[var_a6fe91fd.size] = var_1386d828;
        }
    }
    if (!var_a6fe91fd.size) {
        return;
    }
    if (!isdefined(var_1386d828)) {
        var_faa3dbdd = array::randomize(var_a6fe91fd);
        foreach (prop in var_faa3dbdd) {
            if (is_true(prop.var_3e64167)) {
                var_1386d828 = prop;
                break;
            }
        }
        if (!isdefined(var_1386d828)) {
            var_1386d828 = var_faa3dbdd[0];
        }
    }
    if (!isdefined(var_1386d828)) {
        return;
    }
    if (!isinarray(level.var_b7a636c9, var_1386d828)) {
        level.var_b7a636c9[level.var_b7a636c9.size] = var_1386d828;
    }
    if (isdefined(var_c3962187)) {
        var_1386d828.origin = var_c3962187;
    }
    function_55657fb4(mimic, var_1386d828, var_a6fe91fd, var_d56229a9);
    return var_1386d828;
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 0, eflags: 0x0
// Checksum 0xfac0ffc4, Offset: 0x800
// Size: 0x2e
function function_2e8c33f6() {
    arrayremovevalue(level.var_b7a636c9, undefined);
    return level.var_b7a636c9;
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 0, eflags: 0x0
// Checksum 0x4fa6e75e, Offset: 0x838
// Size: 0x122
function function_e82cee4e() {
    arrayremovevalue(level.var_b7a636c9, undefined);
    var_da43492e = [];
    foreach (prop in level.var_b7a636c9) {
        if (!prop ishidden()) {
            if (!isdefined(var_da43492e)) {
                var_da43492e = [];
            } else if (!isarray(var_da43492e)) {
                var_da43492e = array(var_da43492e);
            }
            if (!isinarray(var_da43492e, prop)) {
                var_da43492e[var_da43492e.size] = prop;
            }
        }
    }
    return var_da43492e;
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 0, eflags: 0x0
// Checksum 0xb752e7bd, Offset: 0x968
// Size: 0xe6
function function_bc29cf28() {
    if (!isdefined(level.var_6939ebc1)) {
        return [];
    }
    var_526e473a = [];
    foreach (key in getarraykeys(level.var_6939ebc1)) {
        var_526e473a = arraycombine(var_526e473a, function_7b8e26b3(level.var_6e175eb, key, "lure_prop_type"));
    }
    return var_526e473a;
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 4, eflags: 0x0
// Checksum 0x67d055e8, Offset: 0xa58
// Size: 0x2b8
function function_d8f63afd(origin, radius, var_9b487a9b, var_d022f4ac = 1) {
    var_79422067 = level.var_6e175eb;
    var_79422067 = function_72d3bca6(var_79422067, origin, undefined, undefined, radius);
    foreach (index, spawn_point in var_79422067) {
        if (isdefined(level.var_6939ebc1[spawn_point.lure_prop_type].var_df801b88) && ![[ level.var_6939ebc1[spawn_point.lure_prop_type].var_df801b88 ]](spawn_point)) {
            var_79422067[index] = undefined;
        }
    }
    arrayremovevalue(var_79422067, undefined);
    if (var_79422067.size > var_9b487a9b) {
        var_79422067 = array::randomize(var_79422067);
        array_size = var_79422067.size;
        for (i = 0; i < array_size; i++) {
            if (i >= var_9b487a9b) {
                arrayremoveindex(var_79422067, i, 1);
            }
        }
    }
    if (var_79422067.size < var_9b487a9b && isdefined(level.var_64aa9d51)) {
        var_79422067 = arraycombine(var_79422067, [[ level.var_64aa9d51 ]](origin, var_9b487a9b - var_79422067.size), 0, 0);
    }
    var_9d369002 = [];
    foreach (spawn_point in var_79422067) {
        if (var_d022f4ac && is_true(spawn_point.claimed)) {
            continue;
        }
        var_9d369002[var_9d369002.size] = spawn_point;
    }
    return var_9d369002;
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 2, eflags: 0x0
// Checksum 0x22066fd6, Offset: 0xd18
// Size: 0x84
function function_1541ff3a(var_9b487a9b = 1, entity) {
    var_f792ae90 = isdefined(entity) && isinarray(level.var_70d37ee0, entity);
    return 20 - level.var_5fafe5ac.size + level.var_70d37ee0.size - var_f792ae90 >= var_9b487a9b;
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 4, eflags: 0x0
// Checksum 0xe50d7558, Offset: 0xda8
// Size: 0x2b6
function function_c928b745(&spawn_points, var_9b487a9b, entity, var_75f9ae2d) {
    arrayremovevalue(level.var_5fafe5ac, undefined);
    var_a6fe91fd = [];
    if (!function_1541ff3a(var_9b487a9b, entity)) {
        var_f792ae90 = isdefined(entity) && isinarray(level.var_70d37ee0, entity);
        /#
            if (is_true(level.var_bce8fb65)) {
                println("<unknown string>" + "<unknown string>" + 20 - level.var_5fafe5ac.size + level.var_70d37ee0.size - var_f792ae90 + "<unknown string>" + var_9b487a9b);
            }
        #/
        if (level.var_5fafe5ac.size + level.var_70d37ee0.size >= 20) {
            return var_a6fe91fd;
        }
        var_9b487a9b = 20 - level.var_5fafe5ac.size + level.var_70d37ee0.size - var_f792ae90;
    }
    if (!spawn_points.size) {
        /#
            if (is_true(level.var_bce8fb65)) {
                println("<unknown string>" + "<unknown string>");
            }
        #/
        return var_a6fe91fd;
    }
    spawn_points = array::randomize(spawn_points);
    foreach (loc in spawn_points) {
        if (isdefined(loc.lure_prop_type) || function_a1ef346b(undefined, loc.origin, 300).size) {
            continue;
        }
        prop = function_fc585b51(loc, var_75f9ae2d);
        var_a6fe91fd[var_a6fe91fd.size] = prop;
        if (var_a6fe91fd.size >= var_9b487a9b) {
            break;
        }
    }
    return var_a6fe91fd;
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 2, eflags: 0x0
// Checksum 0xec472c91, Offset: 0x1068
// Size: 0x3b4
function function_c4504c49(spawn_loc, var_75f9ae2d) {
    if (isdefined(var_75f9ae2d)) {
        bundle = getscriptbundle(var_75f9ae2d);
    } else if (isdefined(spawn_loc.scriptbundlename)) {
        bundle = getscriptbundle(spawn_loc.scriptbundlename);
    }
    if (!isdefined(bundle)) {
        return {#var_6748b2d2:"amb_rattle_barrel", #var_24af7a37:(0, 0, 0), #var_c546004:(0, 0, 0), #var_f866b946:#"hash_4897a060371b1c76"};
    }
    var_641c724f = bundle.var_e451a3f7[randomint(bundle.var_e451a3f7.size)];
    if (!isdefined(var_641c724f)) {
        return undefined;
    }
    var_c546004 = (isdefined(var_641c724f.offset_x) ? var_641c724f.offset_x : 0, isdefined(var_641c724f.offset_y) ? var_641c724f.offset_y : 0, isdefined(var_641c724f.offset_z) ? var_641c724f.offset_z : 0);
    var_24af7a37 = (isdefined(var_641c724f.pitch) ? var_641c724f.pitch : 0, isdefined(var_641c724f.yaw) ? var_641c724f.yaw : 0, isdefined(var_641c724f.roll) ? var_641c724f.roll : 0);
    var_f866b946 = var_641c724f.model;
    var_d08c6baf = 0;
    if (!isdefined(var_641c724f.model) && isdefined(var_641c724f.var_dcb0ac7c)) {
        var_d08c6baf = 1;
        var_f866b946 = var_641c724f.var_dcb0ac7c;
    }
    if (isdefined(var_641c724f.var_6748b2d2)) {
        var_6748b2d2 = var_641c724f.var_6748b2d2;
    } else {
        var_6748b2d2 = undefined;
        /#
            if (is_true(level.var_bce8fb65)) {
                println("<unknown string>" + "<unknown string>" + var_f866b946 + "<unknown string>" + bundle.name + "<unknown string>");
            }
        #/
    }
    if (is_true(var_641c724f.var_83556f31)) {
        var_e9f8015d = 1;
    } else {
        var_e9f8015d = 0;
    }
    if (is_true(var_641c724f.var_f0c39cc2)) {
        var_f0c39cc2 = 1;
    } else {
        var_f0c39cc2 = 0;
    }
    return {#var_c39008ae:var_f0c39cc2, #var_b9cdfa83:var_e9f8015d, #var_d08c6baf:var_d08c6baf, #var_6748b2d2:var_6748b2d2, #var_24af7a37:var_24af7a37, #var_c546004:var_c546004, #var_f866b946:var_f866b946};
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 4, eflags: 0x0
// Checksum 0x4e78679c, Offset: 0x1428
// Size: 0x5f4
function function_fc585b51(spawn_loc, var_75f9ae2d, var_18840a20, var_1690a7c1 = 0) {
    var_4d71cea4 = function_c4504c49(spawn_loc, var_75f9ae2d);
    model_name = var_4d71cea4.var_f866b946;
    var_95970e62 = 1;
    if (is_true(var_4d71cea4.var_d08c6baf)) {
        itemspawnentry = getscriptbundle(var_4d71cea4.var_f866b946);
        var_4d71cea4.var_c546004.var_4d71cea4 = (isdefined(itemspawnentry.var_ada071fe) ? itemspawnentry.var_ada071fe : 0, isdefined(itemspawnentry.var_5ab74bb1) ? itemspawnentry.var_5ab74bb1 : 0, isdefined(itemspawnentry.var_50773731) ? itemspawnentry.var_50773731 : 0);
        var_4d71cea4.var_24af7a37.var_4d71cea4 = (isdefined(itemspawnentry.var_7adcadc1) ? itemspawnentry.var_7adcadc1 : 0, isdefined(itemspawnentry.var_6731866b) ? itemspawnentry.var_6731866b : 0, isdefined(itemspawnentry.var_e6ac0592) ? itemspawnentry.var_e6ac0592 : 0);
        if (isdefined(itemspawnentry.modelscale)) {
            var_95970e62 = itemspawnentry.modelscale;
        }
        if (isdefined(itemspawnentry.model)) {
            model_name = itemspawnentry.model;
        } else {
            model_name = itemspawnentry.weapon.worldmodel;
        }
        if (isdefined(itemspawnentry.rarity)) {
            rarity = itemspawnentry.rarity;
        }
    }
    if (isdefined(var_18840a20)) {
        model_name = var_18840a20;
    }
    if (!var_1690a7c1) {
        playfx("zm_ai/fx9_mimic_prop_spawn_in", spawn_loc.origin + var_4d71cea4.var_c546004);
    }
    if (!isdefined(spawn_loc.angles)) {
        spawn_loc.angles.spawn_loc = (0, 0, 0);
    }
    model = util::spawn_anim_model(model_name, spawn_loc.origin + var_4d71cea4.var_c546004, spawn_loc.angles + var_4d71cea4.var_24af7a37);
    model playsound(#"hash_4a011e2a2a0742ac");
    spawn_loc.claimed.spawn_loc = 1;
    model.spawn_loc = spawn_loc;
    model.var_6748b2d2.model = var_4d71cea4.var_6748b2d2;
    model.var_99ae5a60.model = var_4d71cea4.var_b9cdfa83;
    model.var_c39008ae.model = var_4d71cea4.var_c39008ae;
    if (is_true(model.var_99ae5a60)) {
        model disconnectpaths();
    } else {
        model notsolid();
        model.var_c9826077.model = spawn("script_model", model getcentroid());
        model.var_c9826077 setmodel("wpn_t9_sr_electric_avogadro_projectile");
    }
    model setscale(var_95970e62);
    if (isdefined(itemspawnentry)) {
        model function_619a5c20();
        model.var_a6762160 = itemspawnentry;
        model.var_79299f18.model = "mimic_world_prop";
        item = function_4ba8fde(model.var_a6762160.name);
        if (isdefined(item)) {
            model function_46d7f921(item.id);
        }
        switch (itemspawnentry.rarity) {
        case #"off":
            var_9bed58c1 = 0;
            break;
        case #"resource":
            var_9bed58c1 = 1;
            break;
        case #"uncommon":
            var_9bed58c1 = 2;
            break;
        case #"rare":
            var_9bed58c1 = 3;
            break;
        case #"epic":
            var_9bed58c1 = 4;
            break;
        case #"legendary":
            var_9bed58c1 = 5;
            break;
        case #"ultra":
            var_9bed58c1 = 6;
            break;
        case #"loadout":
            var_9bed58c1 = 7;
            break;
        case #"hash_defdefdefdefdef0":
            var_9bed58c1 = 0;
            break;
        }
        model clientfield::set("mimic_prop_rob", var_9bed58c1);
    }
    model callback::function_d8abfc3d(#"on_entity_deleted", &function_e85d511c);
    level.var_5fafe5ac[level.var_5fafe5ac.size] = model;
    return model;
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 1, eflags: 0x0
// Checksum 0x752a01e, Offset: 0x1a28
// Size: 0x84
function function_e85d511c(*params) {
    self connectpaths();
    if (isdefined(self.spawn_loc)) {
        self.spawn_loc.claimed = undefined;
    }
    if (isdefined(self.var_c9826077)) {
        self.var_c9826077 delete();
    }
    self clientfield::set("mimic_prop_rob", 0);
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 1, eflags: 0x0
// Checksum 0xb5a382e6, Offset: 0x1ab8
// Size: 0x158
function function_861757a2(entity) {
    var_1541ff3a = function_1541ff3a(1, entity);
    if (var_1541ff3a && !isinarray(level.var_70d37ee0, entity)) {
        level.var_70d37ee0[level.var_70d37ee0.size] = entity;
    }
    /#
        if (is_true(level.var_bce8fb65)) {
            println("<unknown string>" + "<unknown string>" + entity getentitynumber() + (var_1541ff3a ? "<unknown string>" : "<unknown string>") + "<unknown string>");
        }
    #/
    /#
        if (is_true(level.var_bce8fb65)) {
            println("<unknown string>" + "<unknown string>" + level.var_70d37ee0.size + "<unknown string>" + 20);
        }
    #/
    return var_1541ff3a;
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 1, eflags: 0x0
// Checksum 0x3e434551, Offset: 0x1c18
// Size: 0x114
function function_8c7b02b0(entity) {
    arrayremovevalue(level.var_70d37ee0, entity, 0);
    /#
        if (is_true(level.var_bce8fb65)) {
            println("<unknown string>" + "<unknown string>" + entity getentitynumber() + "<unknown string>");
        }
    #/
    /#
        if (is_true(level.var_bce8fb65)) {
            println("<unknown string>" + "<unknown string>" + level.var_70d37ee0.size + "<unknown string>" + level.var_5fafe5ac.size + "<unknown string>" + 20 + "<unknown string>");
        }
    #/
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 2, eflags: 0x0
// Checksum 0xc66a1f9, Offset: 0x1d38
// Size: 0x22
function function_b714128e(var_1386d828, &var_a6fe91fd) {
    var_1386d828.var_a6fe91fd = var_a6fe91fd;
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 3, eflags: 0x0
// Checksum 0xb72c6f9b, Offset: 0x1d68
// Size: 0x314
function function_80335b6(prop, &var_a6fe91fd, condition_func = &function_708fe162) {
    prop.var_3e64167.prop = 1;
    var_7cfc32e1 = function_9cc082d2(prop.origin, 200);
    if (isdefined(var_7cfc32e1)) {
        position = var_7cfc32e1[#"point"];
        if (!ispointonnavmesh(position, 15.1875)) {
            position = getclosestpointonnavmesh(position, 15.1875, 15.1875);
        }
        prop.var_7170a3e1 = position;
    }
    if (isdefined(prop.var_7170a3e1)) {
        if (abs(prop.origin[2] - prop.var_7170a3e1[2]) > 64) {
            prop.var_7170a3e1 = undefined;
        }
        if (isdefined(prop.var_7170a3e1) && is_true(prop.var_99ae5a60)) {
            prop thread function_92ba7baa();
        }
    }
    /#
    #/
    prop thread function_6f7ce46e(var_a6fe91fd, condition_func);
    prop.health.prop = isdefined(prop.var_a0009315) ? prop.var_a0009315 : 50000;
    prop.takedamage.prop = 1;
    if (isdefined(prop.var_c9826077)) {
        prop.var_c9826077.health = isdefined(prop.var_a0009315) ? prop.var_a0009315 : 50000;
        prop.var_c9826077.takedamage = 1;
        prop.var_c9826077 thread function_82305ba4(prop);
    }
    prop.var_10c5271.prop = 0;
    prop.var_b31a1e22.prop = 0;
    prop val::reset(#"mimic_spawn", "hide");
    if (is_true(prop.var_99ae5a60)) {
        prop solid();
    }
    prop callback::function_d8abfc3d(#"hash_2e68909d4e4ed889", &function_24811d29);
    if (is_true(prop.var_c39008ae)) {
        level thread function_8f0687e(prop);
    }
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 0, eflags: 0x0
// Checksum 0xd8baccfe, Offset: 0x2088
// Size: 0x8a
function function_92ba7baa() {
    self endon(#"death", #"disconnect");
    wait(1);
    if (isdefined(self)) {
        v_forward = anglestoforward(self.angles) * 8;
        self.var_7170a3e1 = getclosestpointonnavmesh(self.var_7170a3e1 + v_forward, 64, 16);
    }
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 1, eflags: 0x0
// Checksum 0xdfc8607, Offset: 0x2120
// Size: 0x1e2
function function_8f0687e(prop) {
    queryresult = positionquery_source_navigation(prop.origin, 48, 128, 64, 32);
    if (!queryresult.data.size) {
        return;
    }
    if (isdefined(level.var_f29dd47)) {
        loc = [[ level.var_f29dd47 ]](prop.origin, queryresult.data);
    } else {
        loc = array::random(queryresult.data);
    }
    if (!isdefined(loc)) {
        return;
    }
    var_8b84b3ce = groundtrace(loc.origin + vectorscale((0, 0, 1), 32) + vectorscale((0, 0, 1), 8), loc.origin + vectorscale((0, 0, 1), 32) + vectorscale((0, 0, -1), 100000), 0, undefined)[#"position"];
    var_8d3beb7f = #"hash_1f82e1c70fdc8f38";
    var_d2e276cb = #"hash_70a7cdb502d88088";
    var_d661f9f1 = util::spawn_model(array::random([1:var_d2e276cb, 0:var_8d3beb7f]), var_8b84b3ce, (0, 0, 0));
    if (isdefined(var_d661f9f1)) {
        var_d661f9f1 clientfield::set("mimic_prop_lure_fx", 1);
        prop.var_d661f9f1 = var_d661f9f1;
    }
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 4, eflags: 0x0
// Checksum 0x761bdd85, Offset: 0x2310
// Size: 0xac
function function_55657fb4(mimic, var_1386d828, &var_a6fe91fd, var_d56229a9) {
    /#
        assert(isinarray(var_a6fe91fd, var_1386d828), "<unknown string>");
    #/
    function_b714128e(var_1386d828, var_a6fe91fd);
    if (isdefined(mimic)) {
        function_4540d40c(mimic, var_1386d828);
    }
    function_80335b6(var_1386d828, var_a6fe91fd, var_d56229a9);
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 0, eflags: 0x0
// Checksum 0x9021c45b, Offset: 0x23c8
// Size: 0x4e0
function function_708fe162() {
    prop_height = vectorscale((0, 0, 1), 64);
    players = arraysortclosest(getplayers(undefined, self.origin, 400), self.origin);
    if (players.size) {
        foreach (player in players) {
            if (!isalive(player)) {
                continue;
            }
            if (is_true(player.ignoreme) || player isnotarget() || player inlaststand()) {
                continue;
            }
            /#
                if (is_true(level.var_72a9fe4c)) {
                    circle(player.origin, player getpathfindingradius(), (0, 1, 0), 0, 1, 1);
                }
            #/
            if (isdefined(player.last_valid_position) && isdefined(self.var_7170a3e1)) {
                if (!tracepassedonnavmesh(player.last_valid_position, self.var_7170a3e1, player getpathfindingradius())) {
                    /#
                        if (is_true(level.var_72a9fe4c)) {
                            line(player.last_valid_position, self.var_7170a3e1, (1, 0, 1), 1, 0, 1);
                            circle(self.var_7170a3e1, player getpathfindingradius(), (1, 0, 0), 0, 1, 1);
                        }
                    #/
                    continue;
                }
            } else {
                var_2cf6d30b = player gettagorigin("j_spine4");
                if (!isdefined(var_2cf6d30b)) {
                    var_2cf6d30b = player getcentroid();
                }
                if (isdefined(var_2cf6d30b) && !sighttracepassed(self.origin + prop_height, var_2cf6d30b, 0, self)) {
                    /#
                        if (is_true(level.var_72a9fe4c)) {
                            line(self.origin + prop_height, player gettagorigin("<unknown string>"), (1, 0.5, 0), 1, 0, 1);
                        }
                    #/
                    continue;
                }
            }
            traceresult = physicstraceex(self.origin + vectorscale((0, 0, 1), 23), player.origin + vectorscale((0, 0, 1), 36), vectorscale((-1, -1, -1), 15), vectorscale((1, 1, 1), 15), [1:player, 0:self]);
            if (traceresult[#"fraction"] >= 1) {
                self notify(#"hash_7fb506f40bcf5962");
                return player;
            } else {
                /#
                    if (is_true(level.var_72a9fe4c)) {
                        line(self.origin + vectorscale((0, 0, 1), 8), player.origin + vectorscale((0, 0, 1), 8), (1, 0, 0), 1, 0, 1);
                        sphere(traceresult[#"position"], 4, (1, 0, 0), 1, 0, 10, 1);
                    }
                #/
            }
        }
    }
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 2, eflags: 0x0
// Checksum 0xd5c8ea31, Offset: 0x28b0
// Size: 0x25a
function function_6f7ce46e(&var_a6fe91fd, condition_func) {
    self endon(#"death", #"hash_4b5f92d76d4a73a3");
    level endon(#"game_ended");
    if (!isdefined(self.zone_name)) {
        self.zone_name = zm_zonemgr::get_zone_from_position(self.origin + vectorscale((0, 0, 1), 15), 1);
    }
    if (isdefined(self.zone_name)) {
        self.var_3a3cdab8 = 1;
        zm_zonemgr::zone_wait_till_enabled(self.zone_name);
        self.var_3a3cdab8 = undefined;
    }
    while (1) {
        waitresult = undefined;
        waitresult = level waittilltimeout(float(function_60d95f53()) / 1000, #"hash_7fd40fb3202e52db");
        if (is_true(self.var_3a3cdab8)) {
            continue;
        }
        activator = self [[ condition_func ]]();
        if (isdefined(activator) || waitresult._notify === #"hash_7fd40fb3202e52db") {
            var_ef7458f2 = [0:activator];
            if (waitresult._notify === #"hash_7fd40fb3202e52db") {
                var_ef7458f2 = getplayers();
            }
            if (isdefined(self.health) && self.health > 0) {
                if (isvehicle(self)) {
                    goto LOC_0000023a;
                }
                if (0.35) {
                    function_14bad487(self, 0.35, 0.05, 8);
                LOC_0000023a:
                }
            LOC_0000023a:
            }
        LOC_0000023a:
            level thread function_f021ef67(self, var_ef7458f2);
            return;
        }
    }
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 1, eflags: 0x0
// Checksum 0xdd2d45b2, Offset: 0x2b18
// Size: 0x2a
function function_6a447863(*notifyhash) {
    if (isdefined(self)) {
        self.angles = self.original_angles;
        self.var_624e969b = undefined;
    }
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 0, eflags: 0x0
// Checksum 0xfa1a5fb2, Offset: 0x2b50
// Size: 0x96
function function_e77fca72() {
    self endoncallback(&function_6a447863, #"death", #"hash_7fb506f40bcf5962");
    self.var_624e969b = 1;
    self.original_angles = self.angles;
    while (1) {
        function_14bad487(self, 0.75, 0.05, 2);
        if (2) {
            wait(2);
        }
    }
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 4, eflags: 0x0
// Checksum 0x9c55fcc2, Offset: 0x2bf0
// Size: 0x14e
function function_14bad487(var_1386d828, total_time, var_4c1cc19a, angle) {
    var_1386d828 endon(#"death", #"hash_29b88049dcac8bb3");
    original_angles = var_1386d828.angles;
    var_ed7308ad = total_time / var_4c1cc19a;
    var_ff5fc66c = var_1386d828.angles[2];
    var_ef9ae7e0 = angle;
    self clientfield::increment("mimic_prop_rattle_cf");
    if (isdefined(self.var_6748b2d2)) {
        playsoundatposition(self.var_6748b2d2, self.origin);
    }
    for (i = 0; i < var_ed7308ad; i++) {
        var_1386d828 rotateroll(var_ff5fc66c + var_ef9ae7e0, var_4c1cc19a);
        var_ef9ae7e0 = var_ef9ae7e0 * -1;
        wait(var_4c1cc19a);
    }
    var_1386d828.angles = original_angles;
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 0, eflags: 0x0
// Checksum 0xb0174936, Offset: 0x2d48
// Size: 0x154
function function_8be6cc92() {
    level endon(#"game_ended");
    self notify("3b6d68b63c3dc423");
    self endon("3b6d68b63c3dc423");
    while (1) {
        foreach (player in getplayers()) {
            if (!isalive(player)) {
                continue;
            }
            if (!isdefined(arraygetclosest(player.origin, level.var_b7a636c9, 400))) {
                player clientfield::set_to_player("mimic_force_stream", 0);
            } else {
                player clientfield::set_to_player("mimic_force_stream", 1);
            }
            waitframe(1);
        }
        wait(0.5);
    }
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 1, eflags: 0x0
// Checksum 0x13661693, Offset: 0x2ea8
// Size: 0x1b4
function function_24811d29(s_info) {
    prop = self;
    prop.health.prop = isdefined(prop.var_a0009315) ? prop.var_a0009315 : 50000;
    if (is_true(self.var_3a3cdab8)) {
        return;
    }
    if (!isplayer(s_info.einflictor) && !isplayer(s_info.eattacker)) {
        return;
    }
    if (gettime() - prop.var_b31a1e22 > int(3 * 1000)) {
        prop.var_10c5271.prop = 0;
    }
    prop.var_10c5271.prop = prop.var_10c5271 + s_info.idamage;
    prop.var_b31a1e22.prop = gettime();
    if (prop.var_10c5271 >= 100) {
        player = isplayer(s_info.einflictor) ? s_info.einflictor : s_info.eattacker;
        prop notify(#"hash_4b5f92d76d4a73a3");
        player stats::function_dad108fa(#"hash_7ce9029b025320f0", 1);
        function_f021ef67(prop, [0:player], s_info);
    }
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 1, eflags: 0x0
// Checksum 0x77cc0fd4, Offset: 0x3068
// Size: 0xf0
function function_82305ba4(var_46d20318) {
    self endon(#"death");
    level endon(#"game_ended");
    var_d4d62b3e = self;
    while (isdefined(var_d4d62b3e)) {
        waitresult = undefined;
        waitresult = var_d4d62b3e waittill(#"damage");
        var_d4d62b3e.health.var_d4d62b3e = isdefined(var_46d20318.var_a0009315) ? var_46d20318.var_a0009315 : 50000;
        var_46d20318 dodamage(waitresult.amount, waitresult.position, waitresult.attacker, waitresult.inflictor, undefined, waitresult.mod, waitresult.flags, waitresult.weapon);
    }
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 2, eflags: 0x0
// Checksum 0x2ba13248, Offset: 0x3160
// Size: 0x64
function function_d52f5cf7(var_1386d828, mimic) {
    mimic.var_a6fe91fd.mimic = var_1386d828.var_a6fe91fd;
    mimic.var_3be4a3b0.mimic = gettime();
    mimic callback::function_d8abfc3d(#"on_ai_killed", &function_1187de9);
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 3, eflags: 0x0
// Checksum 0x88010a34, Offset: 0x31d0
// Size: 0x3ee
function function_f021ef67(prop, &var_ef7458f2, var_1fc547b0) {
    if (isdefined(prop.var_3c964886)) {
        [[ prop.var_3c964886 ]](prop);
        prop.var_3c964886 = undefined;
    }
    if (isdefined(prop.var_1626d18c)) {
        arrayremovevalue(prop.var_1626d18c, undefined);
        foreach (entity in prop.var_1626d18c) {
            function_d52f5cf7(prop, entity);
            entity callback::callback(#"hash_484127e0cbd8f8cb", {#var_1fc547b0:var_1fc547b0, #var_ef7458f2:var_ef7458f2});
        }
    } else {
        var_32f66be7 = getaicount() < getailimit();
        if (!var_32f66be7 && isdefined(level.var_e1712840) && [[ level.var_e1712840 ]]()) {
            var_32f66be7 = 1;
        }
        if (var_32f66be7) {
            if (!isdefined(level.var_15a5fa7f)) {
                level.var_15a5fa7f = #"spawner_bo5_mimic";
            }
            var_c25f58d9 = spawnactor(level.var_15a5fa7f, prop.origin, prop.angles, undefined, 1);
            if (isdefined(var_c25f58d9)) {
                var_c25f58d9 hide();
                function_4540d40c(var_c25f58d9, prop);
                function_d52f5cf7(prop, var_c25f58d9);
                waitframe(1);
                if (isdefined(var_c25f58d9)) {
                    var_c25f58d9 show();
                    var_c25f58d9 callback::callback(#"hash_484127e0cbd8f8cb", {#var_1fc547b0:var_1fc547b0, #var_ef7458f2:var_ef7458f2});
                }
            }
        } else {
            /#
                println("<unknown string>");
            #/
        }
    }
    if (!isdefined(prop)) {
        return;
    }
    prop.var_1626d18c = undefined;
    prop.claimed = undefined;
    if (!isdefined(prop.spawn_loc.lure_prop_type)) {
        prop val::set(#"mimic_spawn", "hide", 1);
        prop notsolid();
    }
    prop callback::function_52ac9652(#"hash_2e68909d4e4ed889", &function_24811d29);
    if (isdefined(prop.var_d661f9f1)) {
        prop.var_d661f9f1 clientfield::set("mimic_prop_lure_fx", 0);
        prop.var_d661f9f1 function_cb48cddd();
        prop.var_d661f9f1 = undefined;
    }
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 2, eflags: 0x0
// Checksum 0x9bf5e16b, Offset: 0x35c8
// Size: 0x1b8
function function_4540d40c(entity, prop) {
    /#
        assert(!is_true(entity.var_2ca2d270), "<unknown string>");
    #/
    entity.var_1386d828 = prop;
    entity.var_83fa6083.entity = 1;
    entity val::set(#"hash_263a780666aef25", "hide", 2);
    entity notsolid();
    entity pathmode("dont move", 1);
    entity dontinterpolate();
    entity forceteleport(prop.origin, prop.angles);
    entity setentitypaused(1);
    entity.var_2ca2d270.entity = 1;
    entity.var_e8920729.entity = 1;
    entity.var_9d11c76e.entity = 1;
    entity callback::callback(#"hash_29cb63a7ebb5d699", {#prop:prop});
    if (!isdefined(prop.var_1626d18c)) {
        prop.var_1626d18c.prop = [];
    }
    prop.var_1626d18c[prop.var_1626d18c.size] = entity;
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 1, eflags: 0x0
// Checksum 0x674a0f2e, Offset: 0x3788
// Size: 0xc8
function function_1187de9(*params) {
    arrayremovevalue(self.var_a6fe91fd, undefined);
    foreach (prop in self.var_a6fe91fd) {
        if (isdefined(prop.var_33960526)) {
            [[ prop.var_33960526 ]]();
        }
        level thread function_175bb809(prop);
    }
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 2, eflags: 0x0
// Checksum 0xb549296a, Offset: 0x3858
// Size: 0x29c
function function_175bb809(prop, var_38acf8bf = 1) {
    if (!isdefined(prop)) {
        return;
    }
    level endon(#"game_ended");
    prop endon(#"death");
    if (isdefined(prop.var_1626d18c)) {
        function_1eaaceab(prop.var_1626d18c);
        foreach (var_e2986be9 in prop.var_1626d18c) {
            if (var_e2986be9 ispaused()) {
                var_e2986be9 setentitypaused(0);
            }
            var_e2986be9 function_cb48cddd();
        }
    }
    arrayremovevalue(level.var_5fafe5ac, prop);
    arrayremovevalue(level.var_b7a636c9, prop);
    if (isdefined(prop.var_3c964886)) {
        [[ prop.var_3c964886 ]](prop);
        prop.var_3c964886 = undefined;
    }
    if (isdefined(prop.spawn_loc.lure_prop_type)) {
        return;
    }
    if (isdefined(prop.var_d661f9f1)) {
        prop.var_d661f9f1 clientfield::set("mimic_prop_lure_fx", 0);
        prop.var_d661f9f1 function_cb48cddd();
        prop.var_d661f9f1 = undefined;
    }
    if (isdefined(prop.origin) && is_true(var_38acf8bf)) {
        playfx("zm_ai/fx9_mimic_prop_spawn_out", prop.origin);
        prop playsound(#"hash_408f33e5cf20df9d");
        wait(0.1);
    }
    prop delete();
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 0, eflags: 0x0
// Checksum 0x6ac84575, Offset: 0x3b00
// Size: 0xb0
function function_fd24f982() {
    arrayremovevalue(level.var_5fafe5ac, undefined);
    foreach (prop in level.var_5fafe5ac) {
        level thread function_175bb809(prop);
    }
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 3, eflags: 0x0
// Checksum 0x97ee9459, Offset: 0x3bb8
// Size: 0x84
function function_da3be96b(type, handler, var_df801b88) {
    if (isdefined(level.var_6939ebc1[type])) {
        return;
    }
    if (!isdefined(level.var_6939ebc1)) {
        level.var_6939ebc1 = [];
    }
    level.var_6939ebc1[type] = {#var_df801b88:var_df801b88, #handler:handler};
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 1, eflags: 0x0
// Checksum 0x90a26840, Offset: 0x3c48
// Size: 0x1c6
function function_6fe38c03(var_e9aa3e9c) {
    trigger = var_e9aa3e9c.trigger;
    scriptmodel = var_e9aa3e9c.trigger.scriptmodel;
    if (!isdefined(scriptmodel)) {
        scriptmodel = var_e9aa3e9c.scriptmodel;
    }
    if (!(isdefined(trigger) && isdefined(scriptmodel)) && !isdefined(var_e9aa3e9c.model)) {
        return undefined;
    }
    if (isdefined(trigger) && isdefined(scriptmodel)) {
        var_1386d828 = scriptmodel;
        var_1386d828.spawn_loc = var_e9aa3e9c;
        var_1386d828.var_86038c7b.var_1386d828 = 1;
        var_1386d828.var_be16d31e.var_1386d828 = 1;
        if (isdefined(trigger._callbacks[#"on_trigger"])) {
            trigger.var_d5434bfe.trigger = arraycopy(trigger._callbacks[#"on_trigger"]);
            trigger._callbacks[#"on_trigger"] = undefined;
        }
        var_1386d828.var_d503cbd6.var_1386d828 = {#scriptmodel:scriptmodel, #trigger:trigger};
        var_1386d828.var_3c964886.var_1386d828 = &function_3c964886;
        trigger callback::on_trigger(&function_55d49380, undefined, var_1386d828);
        return {#activation_func:&function_204a610e, #prop:var_1386d828};
    }
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 1, eflags: 0x0
// Checksum 0x3da5d4f0, Offset: 0x3e18
// Size: 0xbc
function function_644d4bf6(var_752f06e1) {
    if (!isdefined(var_752f06e1)) {
        return;
    }
    var_1386d828 = var_752f06e1.prop;
    var_1386d828.spawn_loc = var_752f06e1;
    var_1386d828.var_a0009315.var_1386d828 = 5;
    var_1386d828.var_3c964886.var_1386d828 = &function_3c964886;
    var_1386d828 callback::function_d8abfc3d(#"hash_5f0caa4b2d44fedf", &function_7826507);
    return {#activation_func:&function_204a610e, #prop:var_1386d828};
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 1, eflags: 0x0
// Checksum 0x1bfad69b, Offset: 0x3ee0
// Size: 0xac
function function_6f514803(var_f358833e) {
    if (!isdefined(var_f358833e)) {
        return;
    }
    var_1386d828 = var_f358833e.prop;
    var_1386d828.var_2e8a136f.var_1386d828 = 1;
    var_1386d828.spawn_loc = var_f358833e;
    var_1386d828.var_86038c7b.var_1386d828 = 1;
    var_1386d828.var_be16d31e.var_1386d828 = 1;
    var_1386d828.var_d503cbd6 = undefined;
    var_1386d828.var_3c964886.var_1386d828 = &function_6bb0d769;
    return {#activation_func:&function_204a610e, #prop:var_1386d828};
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 1, eflags: 0x0
// Checksum 0xfc265e42, Offset: 0x3f98
// Size: 0x3e
function function_7826507(params) {
    self notify(#"hash_1e8aabc2641542e", {#activator:params.attacker});
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 2, eflags: 0x0
// Checksum 0x967abc6a, Offset: 0x3fe0
// Size: 0x48
function function_55d49380(var_df401071, var_1386d828) {
    var_1386d828 notify(#"hash_1e8aabc2641542e", {#activator:var_df401071.activator});
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 1, eflags: 0x0
// Checksum 0xb245cf03, Offset: 0x4030
// Size: 0x3e
function function_95f8029e(var_657f8150) {
    self.var_2e8a136f = 0;
    self notify(#"hash_1e8aabc2641542e", {#activator:var_657f8150});
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 1, eflags: 0x0
// Checksum 0x896d300f, Offset: 0x4078
// Size: 0x3e
function function_204a610e(*params) {
    waitresult = undefined;
    waitresult = self waittill(#"hash_1e8aabc2641542e");
    return waitresult.activator;
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 1, eflags: 0x0
// Checksum 0x6988c28e, Offset: 0x40c0
// Size: 0x86
function function_3c964886(var_1386d828) {
    if (!isdefined(var_1386d828.var_d503cbd6.trigger)) {
        return;
    }
    trigger = var_1386d828.var_d503cbd6.trigger;
    scriptmodel = var_1386d828.var_d503cbd6.scriptmodel;
    level thread function_f78a8a69(trigger, scriptmodel, 5);
    var_1386d828.var_d503cbd6 = undefined;
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 3, eflags: 0x0
// Checksum 0xa4d93641, Offset: 0x4150
// Size: 0x126
function function_f78a8a69(trigger, scriptmodel, var_3afa44ff) {
    level endon(#"game_ended");
    trigger endon(#"death");
    scriptmodel endon(#"death");
    scriptmodel val::set(#"hash_b71e2a9baaa9c62", "hide", 2);
    scriptmodel notsolid();
    wait(var_3afa44ff);
    scriptmodel val::reset(#"hash_b71e2a9baaa9c62", "hide");
    scriptmodel solid();
    trigger._callbacks[#"on_trigger"] = arraycopy(trigger.var_d5434bfe);
    trigger.var_d5434bfe = undefined;
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 1, eflags: 0x0
// Checksum 0x9c6f8b7f, Offset: 0x4280
// Size: 0x2c
function function_6bb0d769(var_df6246a6) {
    level thread function_2e4ba256(var_df6246a6, 5);
}

// Namespace mimic_prop_spawn/namespace_4aff7b6b
// Params 2, eflags: 0x4
// Checksum 0x15e3a732, Offset: 0x42b8
// Size: 0xbc
function private function_2e4ba256(vehicle, var_3afa44ff) {
    level endon(#"game_ended");
    vehicle val::set(#"hash_b71e2a9baaa9c62", "hide", 2);
    vehicle notsolid();
    wait(var_3afa44ff);
    if (!isdefined(vehicle)) {
        return;
    }
    vehicle val::reset(#"hash_b71e2a9baaa9c62", "hide");
    vehicle solid();
}

