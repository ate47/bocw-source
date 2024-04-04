// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;

#namespace ai_shared;

// Namespace ai_shared/ai_shared
// Params 0, eflags: 0x1
// Checksum 0xca5972b9, Offset: 0x90
// Size: 0x34
function autoexec main() {
    level._customactorcbfunc = &ai::spawned_callback;
    level.var_9d3b5cf9 = &ai::function_b1897fe1;
}

#namespace ai;

// Namespace ai/ai_shared
// Params 2, eflags: 0x42 linked
// Checksum 0x81aee686, Offset: 0xd0
// Size: 0x128
function add_ai_spawn_function(func_spawn, ...) {
    if (!isdefined(level.var_71b23817)) {
        level.var_71b23817 = [];
    } else if (!isarray(level.var_71b23817)) {
        level.var_71b23817 = array(level.var_71b23817);
    }
    var_e45a16f3 = {#func:func_spawn, #params:vararg};
    if (!isdefined(level.var_71b23817)) {
        level.var_71b23817 = [];
    } else if (!isarray(level.var_71b23817)) {
        level.var_71b23817 = array(level.var_71b23817);
    }
    level.var_71b23817[level.var_71b23817.size] = var_e45a16f3;
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x0
// Checksum 0x2ac22de6, Offset: 0x200
// Size: 0xc2
function function_932006d1(func_spawn) {
    if (!isdefined(level.var_71b23817)) {
        return;
    }
    foreach (var_e45a16f3 in level.var_71b23817) {
        if (var_e45a16f3.func == func_spawn) {
            arrayremovevalue(level.var_71b23817, var_e45a16f3);
            return;
        }
    }
}

// Namespace ai/ai_shared
// Params 2, eflags: 0x42 linked
// Checksum 0x3bfb45c4, Offset: 0x2d0
// Size: 0x128
function function_2315ecfa(func_spawn, ...) {
    if (!isdefined(level.var_e851abcc)) {
        level.var_e851abcc = [];
    } else if (!isarray(level.var_e851abcc)) {
        level.var_e851abcc = array(level.var_e851abcc);
    }
    var_3518f423 = {#func:func_spawn, #params:vararg};
    if (!isdefined(level.var_e851abcc)) {
        level.var_e851abcc = [];
    } else if (!isarray(level.var_e851abcc)) {
        level.var_e851abcc = array(level.var_e851abcc);
    }
    level.var_e851abcc[level.var_e851abcc.size] = var_3518f423;
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x0
// Checksum 0x7091566f, Offset: 0x400
// Size: 0xc2
function function_26fc775a(func_spawn) {
    if (!isdefined(level.var_e851abcc)) {
        return;
    }
    foreach (var_3518f423 in level.var_e851abcc) {
        if (var_3518f423.func == func_spawn) {
            arrayremovevalue(level.var_e851abcc, var_3518f423);
            return;
        }
    }
}

// Namespace ai/ai_shared
// Params 3, eflags: 0x40
// Checksum 0x7b0705bf, Offset: 0x4d0
// Size: 0x1c2
function add_archetype_spawn_function(str_archetype, func_spawn, ...) {
    if (!isdefined(level.var_c18b23c1)) {
        level.var_c18b23c1 = [];
    } else if (!isarray(level.var_c18b23c1)) {
        level.var_c18b23c1 = array(level.var_c18b23c1);
    }
    if (!isdefined(level.var_c18b23c1[str_archetype])) {
        level.var_c18b23c1[str_archetype] = [];
    } else if (!isarray(level.var_c18b23c1[str_archetype])) {
        level.var_c18b23c1[str_archetype] = array(level.var_c18b23c1[str_archetype]);
    }
    var_6d69c0bf = {#func:func_spawn, #params:vararg};
    if (!isdefined(level.var_c18b23c1[str_archetype])) {
        level.var_c18b23c1[str_archetype] = [];
    } else if (!isarray(level.var_c18b23c1[str_archetype])) {
        level.var_c18b23c1[str_archetype] = array(level.var_c18b23c1[str_archetype]);
    }
    level.var_c18b23c1[str_archetype][level.var_c18b23c1[str_archetype].size] = var_6d69c0bf;
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x73a35b58, Offset: 0x6a0
// Size: 0x260
function spawned_callback(localclientnum) {
    if (isdefined(level.var_71b23817)) {
        foreach (var_e45a16f3 in level.var_71b23817) {
            a_args = arraycombine(array(localclientnum), var_e45a16f3.params, 1, 0);
            util::single_func_argarray(self, var_e45a16f3.func, a_args);
        }
    }
    if (isdefined(level.var_c18b23c1) && isdefined(level.var_c18b23c1[self.archetype])) {
        foreach (var_6d69c0bf in level.var_c18b23c1[self.archetype]) {
            a_args = arraycombine(array(localclientnum), var_6d69c0bf.params, 1, 0);
            util::single_func_argarray(self, var_6d69c0bf.func, a_args);
        }
    }
    if (!sessionmodeiscampaigngame()) {
        if (!isdefined(level.var_213c4d20)) {
            level.var_213c4d20 = [];
        }
        if (isdefined(self.aitype) && !isdefined(level.var_213c4d20[self.aitype])) {
            function_cae618b4(self.aitype);
            level.var_213c4d20[self.aitype] = 1;
        }
    }
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc19818ad, Offset: 0x908
// Size: 0xe8
function function_b1897fe1(localclientnum) {
    if (isdefined(level.var_e851abcc)) {
        foreach (var_3518f423 in level.var_e851abcc) {
            a_args = arraycombine(array(localclientnum), var_3518f423.params, 1, 0);
            util::single_func_argarray(self, var_3518f423.func, a_args);
        }
    }
}

// Namespace ai/ai_shared
// Params 1, eflags: 0x0
// Checksum 0x796a70a7, Offset: 0x9f8
// Size: 0x4a
function shouldregisterclientfieldforarchetype(archetype) {
    if (is_true(level.clientfieldaicheck) && !isarchetypeloaded(archetype)) {
        return false;
    }
    return true;
}

// Namespace ai/ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xd7702454, Offset: 0xa50
// Size: 0xe4
function function_9139c839() {
    if (!isdefined(self.var_76167463)) {
        if (isdefined(self.aisettingsbundle)) {
            settingsbundle = self.aisettingsbundle;
        } else if (isdefined(self.scriptbundlesettings)) {
            settingsbundle = getscriptbundle(self.scriptbundlesettings).aisettingsbundle;
        }
        if (!isdefined(settingsbundle)) {
            return undefined;
        }
        self.var_76167463 = settingsbundle;
        if (!isdefined(level.var_e3a467cf)) {
            level.var_e3a467cf = [];
        }
        if (!isdefined(level.var_e3a467cf[self.var_76167463])) {
            level.var_e3a467cf[self.var_76167463] = getscriptbundle(self.var_76167463);
        }
    }
    return level.var_e3a467cf[self.var_76167463];
}

// Namespace ai/ai_shared
// Params 3, eflags: 0x0
// Checksum 0xa2053ffc, Offset: 0xb40
// Size: 0xd6
function function_71919555(var_45302432, fieldname, archetype) {
    if (!isdefined(level.var_e3a467cf)) {
        level.var_e3a467cf = [];
    }
    if (!isdefined(level.var_e3a467cf[var_45302432])) {
        level.var_e3a467cf[var_45302432] = getscriptbundle(var_45302432);
    }
    if (isdefined(level.var_e3a467cf[var_45302432])) {
        if (isdefined(archetype)) {
            return level.var_e3a467cf[var_45302432].(archetype + "_" + fieldname);
        }
        return level.var_e3a467cf[var_45302432].(fieldname);
    }
    return undefined;
}

