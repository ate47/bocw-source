// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;

#namespace namespace_956bd4dd;

// Namespace namespace_956bd4dd/namespace_956bd4dd
// Params 0, eflags: 0x2 linked
// Checksum 0x32c41aac, Offset: 0x98
// Size: 0x4a
function function_f45ee99d() {
    if (isdefined(level.var_d6fa67f1)) {
        return;
    }
    level.var_d6fa67f1 = {};
    level.var_d6fa67f1.var_5e47ec2b = [];
    level.var_d6fa67f1.var_970406cf = [];
}

// Namespace namespace_956bd4dd/namespace_956bd4dd
// Params 4, eflags: 0x0
// Checksum 0x2605a8e3, Offset: 0xf0
// Size: 0x10c
function function_df1ecefe(maxhealth, var_1263c72f, var_9653dad7 = 0, var_21a59205 = 2147483647) {
    if (!function_ab99e60c()) {
        return;
    }
    function_f45ee99d();
    var_5b29bbc0 = spawnstruct();
    var_5b29bbc0.maxhealth = maxhealth;
    var_5b29bbc0.var_970406cf.var_5b29bbc0 = [];
    var_5b29bbc0.var_e8f27947.var_5b29bbc0 = int(var_1263c72f * 1000);
    var_5b29bbc0.var_9653dad7 = var_9653dad7;
    var_5b29bbc0.var_21a59205 = var_21a59205;
    level.var_d6fa67f1.var_5e47ec2b[level.var_d6fa67f1.var_5e47ec2b.size] = var_5b29bbc0;
}

// Namespace namespace_956bd4dd/namespace_956bd4dd
// Params 4, eflags: 0x0
// Checksum 0x21c2dbd4, Offset: 0x208
// Size: 0x1dc
function function_1cb3c52d(name, var_5b29bbc0, duration, var_4267b283 = #"hash_4ae27316c3f95575") {
    if (!function_ab99e60c()) {
        return;
    }
    function_f45ee99d();
    if (!isint(var_5b29bbc0) || !isint(duration) || !ishash(name)) {
        /#
            assert(0);
        #/
        return;
    }
    if (level.var_d6fa67f1.var_5e47ec2b.size <= var_5b29bbc0) {
        /#
            assertmsg("<unknown string>" + var_5b29bbc0 + "<unknown string>");
        #/
        return;
    }
    var_d6fa67f1 = level.var_d6fa67f1.var_5e47ec2b[var_5b29bbc0];
    if (isdefined(var_d6fa67f1.var_970406cf[name])) {
        /#
            assertmsg("<unknown string>" + name + "<unknown string>");
        #/
        return;
    }
    var_46bdb64c = spawnstruct();
    var_46bdb64c.duration.var_46bdb64c = int(duration * 1000);
    var_46bdb64c.var_4bd5611f = var_4267b283;
    var_d6fa67f1.var_970406cf[name] = var_46bdb64c;
}

// Namespace namespace_956bd4dd/namespace_956bd4dd
// Params 2, eflags: 0x2 linked
// Checksum 0xe8ae75b4, Offset: 0x3f0
// Size: 0x94
function function_6b384c0f(var_5b29bbc0, var_970406cf) {
    var_7720923c = level.var_d6fa67f1.var_5e47ec2b[var_5b29bbc0];
    keys = getarraykeys(var_7720923c.var_970406cf);
    for (index = 0; index < keys.size; index++) {
        if (keys[index] == var_970406cf) {
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
        return 0;
    }
    return currentsessionmode() != 4 && is_true(isdefined(getgametypesetting("wzRadiation")) ? getgametypesetting("wzRadiation") : 0);
}

