// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flag_shared.gsc;

#namespace namespace_b2b86d39;

// Namespace namespace_b2b86d39/callbacks
// Params 0, eflags: 0x0
// Checksum 0xb762b4dc, Offset: 0x158
// Size: 0x154
function function_724788b2() {
    level.var_eb58e006 = [];
    foreach (callback in [3:"_idle_call_idle_func", 2:"_spawner_stealth_default", 1:"_patrol_endon_spotted_flag", 0:"_autosave_stealthcheck"]) {
        level.var_eb58e006[callback] = &function_ac6b8fd4;
    }
    level flag::init("stealth_spotted");
    level flag::init("stealth_enabled");
    level flag::init("stealth_meter_combat_alerted");
    level flag::init("stealth_music_pause");
}

// Namespace namespace_b2b86d39/callbacks
// Params 5, eflags: 0x2 linked
// Checksum 0x89b3110d, Offset: 0x2b8
// Size: 0x4c
function function_ac6b8fd4(*var_9b0c6de3, *var_bdadb311, *var_af6e1692, *var_193fea34, *var_b034dbb) {
    /#
        assertmsg("<unknown string>");
    #/
}

// Namespace namespace_b2b86d39/callbacks
// Params 1, eflags: 0x2 linked
// Checksum 0xa40133f7, Offset: 0x310
// Size: 0xa4
function function_1462981c(type) {
    if (isdefined(self.stealth) && isdefined(self.stealth.funcs) && isdefined(self.stealth.funcs[type])) {
        return self.stealth.funcs[type];
    }
    if (isdefined(level.stealth) && isdefined(level.stealth.funcs)) {
        return level.stealth.funcs[type];
    }
    return undefined;
}

// Namespace namespace_b2b86d39/callbacks
// Params 4, eflags: 0x2 linked
// Checksum 0x6acb1ebd, Offset: 0x3c0
// Size: 0xba
function function_f96ed339(type, var_1a7f15c1, var_27c5b04e, var_461cecfc) {
    func = function_1462981c(type);
    if (isdefined(func)) {
        if (isdefined(var_461cecfc)) {
            return self [[ func ]](var_1a7f15c1, var_27c5b04e, var_461cecfc);
        } else if (isdefined(var_27c5b04e)) {
            return self [[ func ]](var_1a7f15c1, var_27c5b04e);
        } else if (isdefined(var_1a7f15c1)) {
            return self [[ func ]](var_1a7f15c1);
        } else {
            return self [[ func ]]();
        }
    }
    return undefined;
}

// Namespace namespace_b2b86d39/callbacks
// Params 4, eflags: 0x2 linked
// Checksum 0xbf6c9641, Offset: 0x488
// Size: 0xba
function function_d8eafaa4(type, var_1a7f15c1, var_27c5b04e, var_461cecfc) {
    func = function_1462981c(type);
    if (isdefined(func)) {
        if (isdefined(var_461cecfc)) {
            return self thread [[ func ]](var_1a7f15c1, var_27c5b04e, var_461cecfc);
        } else if (isdefined(var_27c5b04e)) {
            return self thread [[ func ]](var_1a7f15c1, var_27c5b04e);
        } else if (isdefined(var_1a7f15c1)) {
            return self thread [[ func ]](var_1a7f15c1);
        } else {
            return self thread [[ func ]]();
        }
    }
    return undefined;
}

