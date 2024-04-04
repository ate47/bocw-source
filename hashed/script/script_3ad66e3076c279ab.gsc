// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flag_shared.gsc;

#namespace namespace_b2b86d39;

// Namespace namespace_b2b86d39/callbacks
// Params 0, eflags: 0x0
// Checksum 0xb762b4dc, Offset: 0x158
// Size: 0x154
function init_callbacks() {
    level.global_callbacks = [];
    foreach (callback in ["_autosave_stealthcheck", "_patrol_endon_spotted_flag", "_spawner_stealth_default", "_idle_call_idle_func"]) {
        level.global_callbacks[callback] = &global_empty_callback;
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
function global_empty_callback(*empty1, *empty2, *empty3, *empty4, *empty5) {
    assertmsg("<unknown string>");
}

// Namespace namespace_b2b86d39/callbacks
// Params 1, eflags: 0x2 linked
// Checksum 0xa40133f7, Offset: 0x310
// Size: 0xa4
function stealth_get_func(type) {
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
function stealth_call(type, parm1, parm2, parm3) {
    func = stealth_get_func(type);
    if (isdefined(func)) {
        if (isdefined(parm3)) {
            return self [[ func ]](parm1, parm2, parm3);
        } else if (isdefined(parm2)) {
            return self [[ func ]](parm1, parm2);
        } else if (isdefined(parm1)) {
            return self [[ func ]](parm1);
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
function stealth_call_thread(type, parm1, parm2, parm3) {
    func = stealth_get_func(type);
    if (isdefined(func)) {
        if (isdefined(parm3)) {
            return self thread [[ func ]](parm1, parm2, parm3);
        } else if (isdefined(parm2)) {
            return self thread [[ func ]](parm1, parm2);
        } else if (isdefined(parm1)) {
            return self thread [[ func ]](parm1);
        } else {
            return self thread [[ func ]]();
        }
    }
    return undefined;
}

