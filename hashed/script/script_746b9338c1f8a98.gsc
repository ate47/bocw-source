// Atian COD Tools GSC CW decompiler test
#namespace namespace_e4c964e8;

// Namespace namespace_e4c964e8/namespace_e4c964e8
// Params 0, eflags: 0x6 linked
// Checksum 0x9cafa9ff, Offset: 0x80
// Size: 0x4e
function private function_7b29177a() {
    mapbundle = function_2717b55f();
    var_fc0caf4 = mapbundle.var_39cc9e65;
    if (isdefined(var_fc0caf4)) {
        return getscriptbundle(var_fc0caf4);
    }
    return undefined;
}

// Namespace namespace_e4c964e8/namespace_e4c964e8
// Params 2, eflags: 0x6 linked
// Checksum 0x74806186, Offset: 0xd8
// Size: 0x26
function private default_value(val, def) {
    if (isdefined(val)) {
        return val;
    }
    return def;
}

// Namespace namespace_e4c964e8/level_init
// Params 1, eflags: 0x24
// Checksum 0x6a0068e5, Offset: 0x108
// Size: 0x20c
function private event_handler[level_init] main(*eventstruct) {
    settings = function_7b29177a();
    if (isdefined(settings) && is_true(settings.var_9f40f0a7)) {
        setdvar(#"hash_53f625ed150e7700", default_value(settings.culldistance, 0));
        setdvar(#"hash_10fde33c9a36a9b4", default_value(settings.var_920327d8, 0));
        setdvar(#"cg_aggressivecullradius", default_value(settings.var_45fe6c24, 0));
        setdvar(#"hash_394141aabb847427", default_value(settings.var_cfe949f6, 0));
        setdvar(#"hash_72e6bad547b219c4", default_value(settings.var_8523ce94, 0));
        setdvar(#"hash_41f667b7ac4c5d0a", default_value(settings.var_8ca430ec, 0));
        setdvar(#"hash_7a38facac936bea9", default_value(settings.var_e84972d, 0));
    }
}

