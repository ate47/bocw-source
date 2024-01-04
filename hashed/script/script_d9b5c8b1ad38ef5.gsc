// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using script_75da5547b1822294;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\oob.gsc;
#using scripts\core_common\compass.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_9a8780d8;

// Namespace namespace_9a8780d8/namespace_9a8780d8
// Params 0, eflags: 0x5
// Checksum 0xcc9c7e15, Offset: 0x128
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_60ed86b180c0e829", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_9a8780d8/namespace_9a8780d8
// Params 0, eflags: 0x6 linked
// Checksum 0x7be487df, Offset: 0x170
// Size: 0x3d0
function private function_70a657d8() {
    clientfield::register("world", "territory_id", 1, 4, "int");
    var_e9308982 = struct::get_array("territory", "variantName");
    for (index = 1; index <= var_e9308982.size; index++) {
        var_e9308982[index - 1].id = index;
    }
    var_97191da8 = getdvarstring(#"hash_31435ea827fda47b", "");
    var_45072867 = strtok(var_97191da8, " ");
    var_45072867 = array::randomize(var_45072867);
    foreach (var_8f246125 in var_45072867) {
        level.var_9a8780d8 = struct::get(var_8f246125, "targetname");
        if (isdefined(level.var_9a8780d8)) {
            break;
        }
    }
    if (!isdefined(level.var_9a8780d8)) {
        var_97191da8 = "";
    }
    if (!isdefined(level.var_9a8780d8)) {
        level.var_9a8780d8 = {};
    }
    level.var_9a8780d8.name = var_97191da8;
    if (level.var_9a8780d8.name == "") {
        if (var_e9308982.size > 0) {
            level.var_9a8780d8 = array::random(var_e9308982);
            level.var_9a8780d8.name = isdefined(level.var_9a8780d8.target) ? level.var_9a8780d8.target : isdefined(level.var_9a8780d8.targetname) ? level.var_9a8780d8.targetname : "";
        }
    }
    if (level.var_9a8780d8.name != "") {
        level thread function_7904ef68(level.var_9a8780d8);
    }
    /#
        mapname = get_map_name();
        foreach (var_9a8780d8 in var_e9308982) {
            adddebugcommand("<unknown string>" + mapname + "<unknown string>" + var_9a8780d8.targetname + "<unknown string>" + var_9a8780d8.targetname + "<unknown string>");
        }
    #/
}

// Namespace namespace_9a8780d8/namespace_9a8780d8
// Params 4, eflags: 0x6 linked
// Checksum 0xa6aac48f, Offset: 0x548
// Size: 0x156
function private function_49695e98(center, mins, maxs, origin) {
    if (mins[0] + origin[0] < center.mins[0]) {
        center.mins.center = (mins[0] + origin[0], center.mins[1], 0);
    }
    if (mins[1] + origin[1] < center.mins[1]) {
        center.mins.center = (center.mins[0], mins[1] + origin[1], 0);
    }
    if (maxs[0] + origin[0] > center.maxs[0]) {
        center.maxs.center = (maxs[0] + origin[0], center.maxs[1], 0);
    }
    if (maxs[1] + origin[1] > center.maxs[1]) {
        center.maxs.center = (center.maxs[0], maxs[1] + origin[1], 0);
    }
}

// Namespace namespace_9a8780d8/namespace_9a8780d8
// Params 1, eflags: 0x6 linked
// Checksum 0xc452abb1, Offset: 0x6a8
// Size: 0x45a
function private function_7904ef68(var_9a8780d8) {
    if (!isdefined(var_9a8780d8)) {
        /#
            assert(0);
        #/
        return;
    }
    while (!function_6a6f39a2(var_9a8780d8.name)) {
        waitframe(1);
    }
    level clientfield::set("territory_id", var_9a8780d8.id);
    var_9a8780d8.bounds.var_9a8780d8 = [];
    if (isdefined(var_9a8780d8.target)) {
        entities = getentarray(var_9a8780d8.target, "targetname");
        center = spawnstruct();
        center.mins.center = vectorscale((1, 1, 0), 2.14748e+09);
        center.maxs.center = vectorscale((-1, -1, 0), 2.14748e+09);
        foreach (entity in entities) {
            if (isdefined(entity.classname) && entity.classname == #"trigger_within_bounds") {
                var_9a8780d8.bounds[var_9a8780d8.bounds.size] = entity;
                function_49695e98(center, entity.mins, entity.maxs, entity.origin);
            }
        }
        center.origin.center = ((center.mins[0] + center.maxs[0]) / 2, (center.mins[1] + center.maxs[1]) / 2, 0);
        if (var_9a8780d8.bounds.size > 0) {
            oob::function_5e18416d(var_9a8780d8.bounds);
        }
        structs = struct::get_array(var_9a8780d8.target, "targetname");
        foreach (struct in structs) {
            if (isdefined(struct.variantname) && struct.variantname == "territory_circle") {
                var_9a8780d8.circle = struct;
                oob::function_376ddafd(struct.origin, struct.radius);
                halfwidth = struct.radius * 1.02;
                compass::function_d6cba2e9("", struct.origin[0] - halfwidth, struct.origin[1] + halfwidth, struct.origin[0] + halfwidth, struct.origin[1] - halfwidth);
                center.origin.center = struct.origin;
                center.mins.center = center.origin - (struct.radius, struct.radius, 0);
                center.maxs.center = center.origin + (struct.radius, struct.radius, 0);
                break;
            }
        }
        level.var_9a8780d8.var_f1dda100 = center;
    }
}

// Namespace namespace_9a8780d8/namespace_9a8780d8
// Params 3, eflags: 0x2 linked
// Checksum 0x1f51d45d, Offset: 0xb10
// Size: 0x122
function function_1deaf019(name, key, var_9a8780d8 = level.var_9a8780d8) {
    var_3e8b00df = [];
    entities = getentarray(name, key);
    foreach (entity in entities) {
        if (!is_valid(entity, var_9a8780d8)) {
            continue;
        }
        if (function_83ad4d2b(entity.origin, undefined, var_9a8780d8)) {
            var_3e8b00df[var_3e8b00df.size] = entity;
        }
    }
    return var_3e8b00df;
}

// Namespace namespace_9a8780d8/namespace_9a8780d8
// Params 3, eflags: 0x2 linked
// Checksum 0xb0307fcf, Offset: 0xc40
// Size: 0x7a
function function_1f583d2e(name, key = "targetname", var_9a8780d8 = level.var_9a8780d8) {
    entities = getentarray(name, key);
    return function_39dd704c(entities, var_9a8780d8);
}

