// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\territory_util.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace territory;

// Namespace territory/territory
// Params 0, eflags: 0x5
// Checksum 0xf1f9f335, Offset: 0x158
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"territory", &preinit, undefined, undefined, undefined);
}

// Namespace territory/territory
// Params 0, eflags: 0x6 linked
// Checksum 0xe49cec03, Offset: 0x1a0
// Size: 0xda
function private preinit() {
    clientfield::register("world", "territory_id", 1, 4, "int", &function_59941838, 1, 0);
    level.territory = {#name:""};
    territories = struct::get_array("territory", "variantName");
    for (index = 1; index <= territories.size; index++) {
        territories[index - 1].id = index;
    }
}

// Namespace territory/territory
// Params 7, eflags: 0x6 linked
// Checksum 0xf575d133, Offset: 0x288
// Size: 0x30c
function private function_59941838(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        level.territory = {#name:""};
        territories = struct::get_array("territory", "variantName");
        foreach (territory in territories) {
            if (territory.id == bwastimejump) {
                level.territory = territory;
                level.territory.name = isdefined(level.territory.target) ? level.territory.target : isdefined(level.territory.targetname) ? level.territory.targetname : "";
                if (isdefined(territory.target)) {
                    triggers = getentarray(fieldname, territory.target, "targetname");
                    if (!isdefined(territory.circle)) {
                        structs = struct::get_array(territory.target, "targetname");
                        foreach (struct in structs) {
                            if (isdefined(struct.variantname) && struct.variantname == "territory_circle") {
                                territory.circle = function_36a1028e(fieldname, struct.origin, struct.radius);
                                break;
                            }
                        }
                    }
                }
                break;
            }
        }
        callback::callback(#"territory", fieldname, {#newval:bwastimejump});
    }
}

// Namespace territory/territory
// Params 3, eflags: 0x0
// Checksum 0x8a69d7f4, Offset: 0x5a0
// Size: 0x122
function function_1deaf019(name, key, territory = level.territory) {
    var_3e8b00df = [];
    entities = getentarray(0, name, key);
    foreach (entity in entities) {
        if (!is_valid(entity, territory)) {
            continue;
        }
        if (is_inside(entity.origin, undefined, territory)) {
            var_3e8b00df[var_3e8b00df.size] = entity;
        }
    }
    return var_3e8b00df;
}

// Namespace territory/territory
// Params 3, eflags: 0x0
// Checksum 0x8e571c6f, Offset: 0x6d0
// Size: 0x6a
function function_1f583d2e(name, key, territory = level.territory) {
    entities = getentarray(0, name, key);
    return function_39dd704c(entities, territory);
}

// Namespace territory/territory
// Params 3, eflags: 0x6 linked
// Checksum 0x683ef3a, Offset: 0x748
// Size: 0x1c4
function private function_36a1028e(localclientnum, origin, radius) {
    circle = spawn(localclientnum, origin, "script_model");
    circle = spawn(localclientnum, origin, "script_model");
    circle setmodel("p9_territory_cylinder");
    circle playrenderoverridebundle(#"hash_43d22d2a5ec27460");
    modelscale = radius / 150000;
    circle function_78233d29(#"hash_43d22d2a5ec27460", "", "Scale", modelscale);
    circle setcompassicon("minimap_collapse_ring");
    circle function_a5edb367(#"death_ring");
    circle function_811196d1(0);
    circle function_95bc465d(1);
    circle function_5e00861(0, 1);
    circle function_60212003(1);
    compassscale = radius * 2;
    circle function_5e00861(compassscale, 1);
}

