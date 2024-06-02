// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;

#namespace namespace_956bd4dd;

// Namespace namespace_956bd4dd/namespace_956bd4dd
// Params 0, eflags: 0x2 linked
// Checksum 0x32c41aac, Offset: 0x98
// Size: 0x4a
function function_f45ee99d() {
    if (isdefined(level.radiation)) {
        return;
    }
    level.radiation = {};
    level.radiation.levels = [];
    level.radiation.sickness = [];
}

// Namespace namespace_956bd4dd/namespace_956bd4dd
// Params 4, eflags: 0x2 linked
// Checksum 0x2605a8e3, Offset: 0xf0
// Size: 0x10c
function function_df1ecefe(maxhealth, var_1263c72f, var_9653dad7 = 0, var_21a59205 = 2147483647) {
    if (!function_ab99e60c()) {
        return;
    }
    function_f45ee99d();
    radiationlevel = spawnstruct();
    radiationlevel.maxhealth = maxhealth;
    radiationlevel.sickness = [];
    radiationlevel.var_e8f27947 = int(var_1263c72f * 1000);
    radiationlevel.var_9653dad7 = var_9653dad7;
    radiationlevel.var_21a59205 = var_21a59205;
    level.radiation.levels[level.radiation.levels.size] = radiationlevel;
}

// Namespace namespace_956bd4dd/namespace_956bd4dd
// Params 4, eflags: 0x2 linked
// Checksum 0x21c2dbd4, Offset: 0x208
// Size: 0x1dc
function function_1cb3c52d(name, radiationlevel, duration, var_4267b283 = #"hash_4ae27316c3f95575") {
    if (!function_ab99e60c()) {
        return;
    }
    function_f45ee99d();
    if (!isint(radiationlevel) || !isint(duration) || !ishash(name)) {
        assert(0);
        return;
    }
    if (level.radiation.levels.size <= radiationlevel) {
        assertmsg("<unknown string>" + radiationlevel + "<unknown string>");
        return;
    }
    radiation = level.radiation.levels[radiationlevel];
    if (isdefined(radiation.sickness[name])) {
        assertmsg("<unknown string>" + name + "<unknown string>");
        return;
    }
    var_46bdb64c = spawnstruct();
    var_46bdb64c.duration = int(duration * 1000);
    var_46bdb64c.var_4bd5611f = var_4267b283;
    radiation.sickness[name] = var_46bdb64c;
}

// Namespace namespace_956bd4dd/namespace_956bd4dd
// Params 2, eflags: 0x0
// Checksum 0xe8ae75b4, Offset: 0x3f0
// Size: 0x94
function function_6b384c0f(radiationlevel, sickness) {
    var_7720923c = level.radiation.levels[radiationlevel];
    keys = getarraykeys(var_7720923c.sickness);
    for (index = 0; index < keys.size; index++) {
        if (keys[index] == sickness) {
            return index;
        }
    }
}

// Namespace namespace_956bd4dd/namespace_956bd4dd
// Params 0, eflags: 0x2 linked
// Checksum 0xd5d40abf, Offset: 0x490
// Size: 0x84
function function_ab99e60c() {
    if (util::is_frontend_map()) {
        return false;
    }
    return currentsessionmode() != 4 && is_true(isdefined(getgametypesetting("wzRadiation")) ? getgametypesetting("wzRadiation") : 0);
}

