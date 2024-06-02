// Atian COD Tools GSC CW decompiler test
#using script_72d4466ce2e2cc7b;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace util;

// Namespace util/util_shared
// Params 0, eflags: 0x5
// Checksum 0x706cb189, Offset: 0x178
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"util_shared", &preinit, undefined, undefined, undefined);
}

// Namespace util/util_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xc5547a45, Offset: 0x1c0
// Size: 0x34
function private preinit() {
    function_73fab74d();
    register_clientfields();
    namespace_1e38a8f6::init();
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x11171b29, Offset: 0x200
// Size: 0x94
function register_clientfields() {
    clientfield::register("world", "cf_team_mapping", 1, 1, "int", &cf_team_mapping, 0, 0);
    clientfield::register("world", "preload_frontend", 1, 1, "int", &preload_frontend, 0, 0);
}

// Namespace util/util_shared
// Params 5, eflags: 0x0
// Checksum 0x1dea950a, Offset: 0x2a0
// Size: 0x2c
function empty(*a, *b, *c, *d, *e) {
    
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xf377e02e, Offset: 0x2d8
// Size: 0x84
function waitforallclients() {
    localclient = 0;
    if (!isdefined(level.localplayers)) {
        while (!isdefined(level.localplayers)) {
            waitframe(1);
        }
    }
    while (level.localplayers.size <= 0) {
        waitframe(1);
    }
    while (localclient < level.localplayers.size) {
        waitforclient(localclient);
        localclient++;
    }
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x6eded8a7, Offset: 0x368
// Size: 0x84
function function_89a98f85() {
    num = getdvarint(#"splitscreen_playercount", 0);
    if (num < 1) {
        num = getactivelocalclients();
    }
    for (localclient = 0; localclient < num; localclient++) {
        waitforclient(localclient);
    }
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x310a6aa0, Offset: 0x3f8
// Size: 0x30
function waitforclient(client) {
    while (!clienthassnapshot(client)) {
        waitframe(1);
    }
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe1910eaf, Offset: 0x430
// Size: 0x4c
function function_35840de8(seconds) {
    if (isdefined(seconds) && float(seconds) > 0) {
        wait(float(seconds));
    }
}

// Namespace util/util_shared
// Params 2, eflags: 0x0
// Checksum 0x3517e4db, Offset: 0x488
// Size: 0x62
function get_dvar_float_default(str_dvar, default_val) {
    value = getdvarstring(str_dvar);
    return value != "" ? float(value) : default_val;
}

// Namespace util/util_shared
// Params 2, eflags: 0x0
// Checksum 0xddd677f3, Offset: 0x4f8
// Size: 0x62
function get_dvar_int_default(str_dvar, default_val) {
    value = getdvarstring(str_dvar);
    return value != "" ? int(value) : default_val;
}

// Namespace util/util_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x5454c365, Offset: 0x568
// Size: 0x9e
function spawn_model(n_client, str_model, origin = (0, 0, 0), angles = (0, 0, 0)) {
    model = spawn(n_client, origin, "script_model");
    if (isdefined(model)) {
        model setmodel(str_model);
        model.angles = angles;
    }
    return model;
}

// Namespace util/util_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xae632afb, Offset: 0x610
// Size: 0x86
function spawn_anim_model(n_client, model_name, origin, angles) {
    model = spawn_model(n_client, model_name, origin, angles);
    if (isdefined(model)) {
        model useanimtree("generic");
        model.animtree = "generic";
    }
    return model;
}

// Namespace util/util_shared
// Params 2, eflags: 0x0
// Checksum 0x2bc418e4, Offset: 0x6a0
// Size: 0x80
function waittill_string(msg, ent) {
    if (msg != "death") {
        self endon(#"death");
    }
    ent endon(#"die");
    self waittill(msg);
    ent notify(#"returned", {#msg:msg});
}

// Namespace util/util_shared
// Params 1, eflags: 0x40
// Checksum 0x414c1f87, Offset: 0x728
// Size: 0x9c
function waittill_multiple(...) {
    s_tracker = spawnstruct();
    s_tracker._wait_count = 0;
    for (i = 0; i < vararg.size; i++) {
        self thread _waitlogic(s_tracker, vararg[i]);
    }
    if (s_tracker._wait_count > 0) {
        s_tracker waittill(#"waitlogic_finished");
    }
}

// Namespace util/util_shared
// Params 1, eflags: 0x40
// Checksum 0x6501c450, Offset: 0x7d0
// Size: 0x1a4
function waittill_multiple_ents(...) {
    a_ents = [];
    a_notifies = [];
    for (i = 0; i < vararg.size; i++) {
        if (i % 2) {
            if (!isdefined(a_notifies)) {
                a_notifies = [];
            } else if (!isarray(a_notifies)) {
                a_notifies = array(a_notifies);
            }
            a_notifies[a_notifies.size] = vararg[i];
            continue;
        }
        if (!isdefined(a_ents)) {
            a_ents = [];
        } else if (!isarray(a_ents)) {
            a_ents = array(a_ents);
        }
        a_ents[a_ents.size] = vararg[i];
    }
    s_tracker = spawnstruct();
    s_tracker._wait_count = 0;
    for (i = 0; i < a_ents.size; i++) {
        ent = a_ents[i];
        if (isdefined(ent)) {
            ent thread _waitlogic(s_tracker, a_notifies[i]);
        }
    }
    if (s_tracker._wait_count > 0) {
        s_tracker waittill(#"waitlogic_finished");
    }
}

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x526987d3, Offset: 0x980
// Size: 0xb0
function _waitlogic(s_tracker, notifies) {
    s_tracker._wait_count++;
    if (!isdefined(notifies)) {
        notifies = [];
    } else if (!isarray(notifies)) {
        notifies = array(notifies);
    }
    notifies[notifies.size] = "death";
    self waittill(notifies);
    s_tracker._wait_count--;
    if (s_tracker._wait_count == 0) {
        s_tracker notify(#"waitlogic_finished");
    }
}

// Namespace util/util_shared
// Params 14, eflags: 0x2 linked
// Checksum 0xcb9a6c68, Offset: 0xa38
// Size: 0x14a
function waittill_any_ents(ent1, string1, ent2, string2, ent3, string3, ent4, string4, ent5, string5, ent6, string6, ent7, string7) {
    assert(isdefined(ent1));
    assert(isdefined(string1));
    if (isdefined(ent2) && isdefined(string2)) {
        ent2 endon(string2);
    }
    if (isdefined(ent3) && isdefined(string3)) {
        ent3 endon(string3);
    }
    if (isdefined(ent4) && isdefined(string4)) {
        ent4 endon(string4);
    }
    if (isdefined(ent5) && isdefined(string5)) {
        ent5 endon(string5);
    }
    if (isdefined(ent6) && isdefined(string6)) {
        ent6 endon(string6);
    }
    if (isdefined(ent7) && isdefined(string7)) {
        ent7 endon(string7);
    }
    ent1 waittill(string1);
}

// Namespace util/util_shared
// Params 11, eflags: 0x0
// Checksum 0x7cfa15c0, Offset: 0xb90
// Size: 0x11a
function function_e532f5da(n_timeout, ent1, string1, ent2, string2, ent3, string3, ent4, string4, ent5, string5) {
    assert(isdefined(n_timeout));
    assert(isdefined(ent1));
    assert(isdefined(string1));
    if (isdefined(ent2) && isdefined(string2)) {
        ent2 endon(string2);
    }
    if (isdefined(ent3) && isdefined(string3)) {
        ent3 endon(string3);
    }
    if (isdefined(ent4) && isdefined(string4)) {
        ent4 endon(string4);
    }
    if (isdefined(ent5) && isdefined(string5)) {
        ent5 endon(string5);
    }
    ent1 waittilltimeout(n_timeout, string1);
}

// Namespace util/util_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xe465b461, Offset: 0xcb8
// Size: 0x78
function waittill_any_ents_two(ent1, string1, ent2, string2) {
    assert(isdefined(ent1));
    assert(isdefined(string1));
    if (isdefined(ent2) && isdefined(string2)) {
        ent2 endon(string2);
    }
    ent1 waittill(string1);
}

// Namespace util/util_shared
// Params 3, eflags: 0x42 linked
// Checksum 0xd03489dc, Offset: 0xd38
// Size: 0x32
function single_func(entity, func, ...) {
    return _single_func(entity, func, vararg);
}

// Namespace util/util_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x74849dd4, Offset: 0xd78
// Size: 0x32
function single_func_argarray(entity, func, a_vars) {
    return _single_func(entity, func, a_vars);
}

// Namespace util/util_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x3258893e, Offset: 0xdb8
// Size: 0x48a
function _single_func(entity, func, a_vars) {
    _clean_up_arg_array(a_vars);
    switch (a_vars.size) {
    case 8:
        if (isdefined(entity)) {
            return entity [[ func ]](a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4], a_vars[5], a_vars[6], a_vars[7]);
        } else {
            return [[ func ]](a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4], a_vars[5], a_vars[6], a_vars[7]);
        }
        break;
    case 7:
        if (isdefined(entity)) {
            return entity [[ func ]](a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4], a_vars[5], a_vars[6]);
        } else {
            return [[ func ]](a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4], a_vars[5], a_vars[6]);
        }
        break;
    case 6:
        if (isdefined(entity)) {
            return entity [[ func ]](a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4], a_vars[5]);
        } else {
            return [[ func ]](a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4], a_vars[5]);
        }
        break;
    case 5:
        if (isdefined(entity)) {
            return entity [[ func ]](a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4]);
        } else {
            return [[ func ]](a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4]);
        }
        break;
    case 4:
        if (isdefined(entity)) {
            return entity [[ func ]](a_vars[0], a_vars[1], a_vars[2], a_vars[3]);
        } else {
            return [[ func ]](a_vars[0], a_vars[1], a_vars[2], a_vars[3]);
        }
        break;
    case 3:
        if (isdefined(entity)) {
            return entity [[ func ]](a_vars[0], a_vars[1], a_vars[2]);
        } else {
            return [[ func ]](a_vars[0], a_vars[1], a_vars[2]);
        }
        break;
    case 2:
        if (isdefined(entity)) {
            return entity [[ func ]](a_vars[0], a_vars[1]);
        } else {
            return [[ func ]](a_vars[0], a_vars[1]);
        }
        break;
    case 1:
        if (isdefined(entity)) {
            return entity [[ func ]](a_vars[0]);
        } else {
            return [[ func ]](a_vars[0]);
        }
        break;
    case 0:
        if (isdefined(entity)) {
            return entity [[ func ]]();
        } else {
            return [[ func ]]();
        }
        break;
    default:
        assertmsg("<unknown string>");
        break;
    }
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x27b8d94b, Offset: 0x1250
// Size: 0x64
function _clean_up_arg_array(&a_vars) {
    for (i = a_vars.size - 1; i >= 0; i--) {
        if (a_vars[i] === undefined) {
            arrayremoveindex(a_vars, i, 0);
            continue;
        }
        break;
    }
}

// Namespace util/util_shared
// Params 7, eflags: 0x0
// Checksum 0x3bb631f3, Offset: 0x12c0
// Size: 0xae
function new_func(func, arg1, arg2, arg3, arg4, arg5, arg6) {
    s_func = spawnstruct();
    s_func.func = func;
    s_func.arg1 = arg1;
    s_func.arg2 = arg2;
    s_func.arg3 = arg3;
    s_func.arg4 = arg4;
    s_func.arg5 = arg5;
    s_func.arg6 = arg6;
    return s_func;
}

// Namespace util/util_shared
// Params 1, eflags: 0x0
// Checksum 0x3e27e699, Offset: 0x1378
// Size: 0x5a
function call_func(s_func) {
    return single_func(self, s_func.func, s_func.arg1, s_func.arg2, s_func.arg3, s_func.arg4, s_func.arg5, s_func.arg6);
}

// Namespace util/util_shared
// Params 7, eflags: 0x0
// Checksum 0xd450e083, Offset: 0x13e0
// Size: 0x154
function array_ent_thread(entities, func, arg1, arg2, arg3, arg4, arg5) {
    assert(isdefined(entities), "<unknown string>");
    assert(isdefined(func), "<unknown string>");
    if (isarray(entities)) {
        if (entities.size) {
            foreach (entity in entities) {
                single_thread(self, func, entity, arg1, arg2, arg3, arg4, arg5);
            }
        }
        return;
    }
    single_thread(self, func, entities, arg1, arg2, arg3, arg4, arg5);
}

// Namespace util/util_shared
// Params 3, eflags: 0x42 linked
// Checksum 0x4004f4ac, Offset: 0x1540
// Size: 0x3c
function single_thread(entity, func, ...) {
    _single_thread(entity, func, undefined, undefined, vararg);
}

// Namespace util/util_shared
// Params 3, eflags: 0x0
// Checksum 0x7e614c5a, Offset: 0x1588
// Size: 0x3c
function single_thread_argarray(entity, func, &a_vars) {
    _single_thread(entity, func, undefined, undefined, a_vars);
}

// Namespace util/util_shared
// Params 4, eflags: 0x0
// Checksum 0x10abd708, Offset: 0x15d0
// Size: 0x44
function function_50f54b6f(entity, func, arg1, &a_vars) {
    _single_thread(entity, func, arg1, undefined, a_vars);
}

// Namespace util/util_shared
// Params 5, eflags: 0x0
// Checksum 0xe5b52de7, Offset: 0x1620
// Size: 0x4c
function function_cf55c866(entity, func, arg1, arg2, &a_vars) {
    _single_thread(entity, func, arg1, arg2, a_vars);
}

// Namespace util/util_shared
// Params 5, eflags: 0x2 linked
// Checksum 0x5682afd0, Offset: 0x1678
// Size: 0x85a
function _single_thread(entity, func, arg1, arg2, &a_vars) {
    _clean_up_arg_array(a_vars);
    assert(isfunctionptr(func), "<unknown string>" + "<unknown string>");
    if (!isfunctionptr(func)) {
        return;
    }
    if (isdefined(arg2)) {
        switch (a_vars.size) {
        case 8:
            entity thread [[ func ]](arg1, arg2, a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4], a_vars[5], a_vars[6], a_vars[7]);
            break;
        case 7:
            entity thread [[ func ]](arg1, arg2, a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4], a_vars[5], a_vars[6]);
            break;
        case 6:
            entity thread [[ func ]](arg1, arg2, a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4], a_vars[5]);
            break;
        case 5:
            entity thread [[ func ]](arg1, arg2, a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4]);
            break;
        case 4:
            entity thread [[ func ]](arg1, arg2, a_vars[0], a_vars[1], a_vars[2], a_vars[3]);
            break;
        case 3:
            entity thread [[ func ]](arg1, arg2, a_vars[0], a_vars[1], a_vars[2]);
            break;
        case 2:
            entity thread [[ func ]](arg1, arg2, a_vars[0], a_vars[1]);
            break;
        case 1:
            entity thread [[ func ]](arg1, arg2, a_vars[0]);
            break;
        case 0:
            entity thread [[ func ]](arg1, arg2);
            break;
        default:
            assertmsg("<unknown string>");
            break;
        }
        return;
    }
    if (isdefined(arg1)) {
        switch (a_vars.size) {
        case 8:
            entity thread [[ func ]](arg1, a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4], a_vars[5], a_vars[6], a_vars[7]);
            break;
        case 7:
            entity thread [[ func ]](arg1, a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4], a_vars[5], a_vars[6]);
            break;
        case 6:
            entity thread [[ func ]](arg1, a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4], a_vars[5]);
            break;
        case 5:
            entity thread [[ func ]](arg1, a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4]);
            break;
        case 4:
            entity thread [[ func ]](arg1, a_vars[0], a_vars[1], a_vars[2], a_vars[3]);
            break;
        case 3:
            entity thread [[ func ]](arg1, a_vars[0], a_vars[1], a_vars[2]);
            break;
        case 2:
            entity thread [[ func ]](arg1, a_vars[0], a_vars[1]);
            break;
        case 1:
            entity thread [[ func ]](arg1, a_vars[0]);
            break;
        case 0:
            entity thread [[ func ]](arg1);
            break;
        default:
            assertmsg("<unknown string>");
            break;
        }
        return;
    }
    switch (a_vars.size) {
    case 8:
        entity thread [[ func ]](a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4], a_vars[5], a_vars[6], a_vars[7]);
        break;
    case 7:
        entity thread [[ func ]](a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4], a_vars[5], a_vars[6]);
        break;
    case 6:
        entity thread [[ func ]](a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4], a_vars[5]);
        break;
    case 5:
        entity thread [[ func ]](a_vars[0], a_vars[1], a_vars[2], a_vars[3], a_vars[4]);
        break;
    case 4:
        entity thread [[ func ]](a_vars[0], a_vars[1], a_vars[2], a_vars[3]);
        break;
    case 3:
        entity thread [[ func ]](a_vars[0], a_vars[1], a_vars[2]);
        break;
    case 2:
        entity thread [[ func ]](a_vars[0], a_vars[1]);
        break;
    case 1:
        entity thread [[ func ]](a_vars[0]);
        break;
    case 0:
        entity thread [[ func ]]();
        break;
    default:
        assertmsg("<unknown string>");
        break;
    }
}

// Namespace util/util_shared
// Params 7, eflags: 0x0
// Checksum 0xfc0e60f, Offset: 0x1ee0
// Size: 0x64
function add_listen_thread(wait_till, func, param1, param2, param3, param4, param5) {
    level thread add_listen_thread_internal(wait_till, func, param1, param2, param3, param4, param5);
}

// Namespace util/util_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x7308fd44, Offset: 0x1f50
// Size: 0x70
function add_listen_thread_internal(wait_till, func, param1, param2, param3, param4, param5) {
    for (;;) {
        level waittill(wait_till);
        single_thread(level, func, param1, param2, param3, param4, param5);
    }
}

// Namespace util/util_shared
// Params 8, eflags: 0x2 linked
// Checksum 0xe3a62d2e, Offset: 0x1fc8
// Size: 0xcc
function timeout(n_time, func, arg1, arg2, arg3, arg4, arg5, arg6) {
    self endon(#"death");
    if (isdefined(n_time)) {
        __s = spawnstruct();
        __s endon(#"timeout");
        __s delay_notify(n_time, "timeout");
    }
    single_func(self, func, arg1, arg2, arg3, arg4, arg5, arg6);
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x29c389d8, Offset: 0x20a0
// Size: 0x2a
function create_flags_and_return_tokens(flags) {
    return strtok(flags, " ");
}

// Namespace util/util_shared
// Params 9, eflags: 0x2 linked
// Checksum 0x87185480, Offset: 0x20d8
// Size: 0x74
function delay(time_or_notify, str_endon, func, arg1, arg2, arg3, arg4, arg5, arg6) {
    self thread _delay(time_or_notify, str_endon, func, arg1, arg2, arg3, arg4, arg5, arg6);
}

// Namespace util/util_shared
// Params 9, eflags: 0x2 linked
// Checksum 0x670087a7, Offset: 0x2158
// Size: 0xdc
function _delay(time_or_notify, str_endon, func, arg1, arg2, arg3, arg4, arg5, arg6) {
    self endon(#"death");
    if (isdefined(str_endon)) {
        self endon(str_endon);
    }
    if (ishash(time_or_notify) || isstring(time_or_notify)) {
        self waittill(time_or_notify);
    } else {
        wait(time_or_notify);
    }
    single_func(self, func, arg1, arg2, arg3, arg4, arg5, arg6);
}

// Namespace util/util_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xee16b8b0, Offset: 0x2240
// Size: 0x34
function delay_notify(time_or_notify, str_notify, str_endon) {
    self thread _delay_notify(time_or_notify, str_notify, str_endon);
}

// Namespace util/util_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x1c1d31a, Offset: 0x2280
// Size: 0x8e
function _delay_notify(time_or_notify, str_notify, str_endon) {
    self endon(#"death");
    if (isdefined(str_endon)) {
        self endon(str_endon);
    }
    if (ishash(time_or_notify) || isstring(time_or_notify)) {
        self waittill(time_or_notify);
    } else {
        wait(time_or_notify);
    }
    self notify(str_notify);
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x615753a, Offset: 0x2318
// Size: 0x42
function new_timer(n_timer_length) {
    s_timer = spawnstruct();
    s_timer.n_time_created = gettime();
    s_timer.n_length = n_timer_length;
    return s_timer;
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x79cff0df, Offset: 0x2368
// Size: 0x20
function get_time() {
    t_now = gettime();
    return t_now - self.n_time_created;
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x43b120f9, Offset: 0x2390
// Size: 0x34
function get_time_in_seconds() {
    return float(get_time()) / 1000;
}

// Namespace util/util_shared
// Params 1, eflags: 0x0
// Checksum 0x8a0e5983, Offset: 0x23d0
// Size: 0x4a
function get_time_frac(n_end_time = self.n_length) {
    return lerpfloat(0, 1, get_time_in_seconds() / n_end_time);
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x21d1bdc2, Offset: 0x2428
// Size: 0x58
function get_time_left() {
    if (isdefined(self.n_length)) {
        n_current_time = get_time_in_seconds();
        return max(self.n_length - n_current_time, 0);
    }
    return -1;
}

// Namespace util/util_shared
// Params 0, eflags: 0x0
// Checksum 0xdcb3202, Offset: 0x2488
// Size: 0x16
function is_time_left() {
    return get_time_left() != 0;
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x4d676374, Offset: 0x24a8
// Size: 0x62
function timer_wait(n_wait) {
    if (isdefined(self.n_length)) {
        n_wait = min(n_wait, get_time_left());
    }
    wait(n_wait);
    n_current_time = get_time_in_seconds();
    return n_current_time;
}

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xdf3cfef1, Offset: 0x2518
// Size: 0x84
function add_remove_list(&a = [], on_off) {
    if (on_off) {
        if (!isinarray(a, self)) {
            arrayinsert(a, self, a.size);
        }
        return;
    }
    arrayremovevalue(a, self, 0);
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc580579, Offset: 0x25a8
// Size: 0x24
function clean_deleted(&array) {
    arrayremovevalue(array, undefined);
}

// Namespace util/util_shared
// Params 0, eflags: 0x0
// Checksum 0x425cfd1e, Offset: 0x25d8
// Size: 0xe2
function get_eye() {
    if (sessionmodeiscampaigngame()) {
        if (isplayer(self)) {
            linked_ent = self getlinkedent();
            if (isdefined(linked_ent) && getdvarint(#"cg_camerausetagcamera", 0) > 0) {
                camera = linked_ent gettagorigin("tag_camera");
                if (isdefined(camera)) {
                    return camera;
                }
            }
        }
    }
    pos = self geteye();
    return pos;
}

// Namespace util/util_shared
// Params 0, eflags: 0x0
// Checksum 0x1c101279, Offset: 0x26c8
// Size: 0xb0
function spawn_player_arms() {
    arms = spawn(self getlocalclientnumber(), self.origin + (0, 0, -1000), "script_model");
    if (isdefined(level.player_viewmodel)) {
        arms setmodel(level.player_viewmodel);
    } else {
        arms setmodel(#"c_usa_cia_masonjr_viewhands");
    }
    return arms;
}

// Namespace util/util_shared
// Params 7, eflags: 0x0
// Checksum 0xad99176f, Offset: 0x2780
// Size: 0x126
function lerp_dvar(str_dvar, n_start_val, n_end_val, n_lerp_time = getdvarfloat(n_end_val, 0), b_saved_dvar, *b_client_dvar, *n_client) {
    s_timer = new_timer();
    do {
        n_time_delta = s_timer timer_wait(0.01666);
        n_curr_val = lerpfloat(n_lerp_time, b_saved_dvar, n_time_delta / b_client_dvar);
        if (is_true(n_client)) {
            setsaveddvar(n_end_val, n_curr_val);
            continue;
        }
        setdvar(n_end_val, n_curr_val);
    } while (n_time_delta < b_client_dvar);
}

// Namespace util/util_shared
// Params 1, eflags: 0x0
// Checksum 0x631e5552, Offset: 0x28b0
// Size: 0xea
function is_valid_type_for_callback(type) {
    switch (type) {
    case #"scriptmover":
    case #"na":
    case #"missile":
    case #"general":
    case #"player":
    case #"turret":
    case #"actor":
    case #"helicopter":
    case #"trigger":
    case #"vehicle":
    case #"plane":
        return 1;
    default:
        return 0;
    }
}

// Namespace util/util_shared
// Params 2, eflags: 0x0
// Checksum 0x9501e214, Offset: 0x29a8
// Size: 0xa8
function wait_till_not_touching(e_to_check, e_to_touch) {
    assert(isdefined(e_to_check), "<unknown string>");
    assert(isdefined(e_to_touch), "<unknown string>");
    e_to_check endon(#"death");
    e_to_touch endon(#"death");
    while (e_to_check istouching(e_to_touch)) {
        waitframe(1);
    }
}

/#

    // Namespace util/util_shared
    // Params 1, eflags: 0x0
    // Checksum 0x45f299d0, Offset: 0x2a58
    // Size: 0x32
    function error(message) {
        println("<unknown string>", message);
        waitframe(1);
    }

#/

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x43d353db, Offset: 0x2a98
// Size: 0xda
function register_system(ssysname, cbfunc) {
    if (!isdefined(level._systemstates)) {
        level._systemstates = [];
    }
    if (level._systemstates.size >= 32) {
        /#
            error("<unknown string>");
        #/
        return;
    }
    if (isdefined(level._systemstates[ssysname])) {
        /#
            error("<unknown string>" + ssysname);
        #/
        return;
    }
    level._systemstates[ssysname] = spawnstruct();
    level._systemstates[ssysname].callback = cbfunc;
}

// Namespace util/event_42f3ada8
// Params 1, eflags: 0x24
// Checksum 0x341947e8, Offset: 0x2b80
// Size: 0x7c
function private event_handler[event_42f3ada8] function_9a464797(eventstruct) {
    level endon(eventstruct.var_e81ce538);
    wait(randomintrange(10, 30));
    println("<unknown string>" + eventstruct.var_e81ce538);
    function_17cf7de1(2);
}

// Namespace util/util_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x1c6da72, Offset: 0x2c08
// Size: 0x48
function field_set_lighting_ent(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level.light_entity = self;
}

// Namespace util/util_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x50da67c5, Offset: 0x2c58
// Size: 0x3c
function field_use_lighting_ent(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd71740b9, Offset: 0x2ca0
// Size: 0x3c
function waittill_dobj(localclientnum) {
    while (isdefined(self) && !self hasdobj(localclientnum)) {
        waitframe(1);
    }
}

// Namespace util/util_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x688679db, Offset: 0x2ce8
// Size: 0x6e
function playfxontag(localclientnum, effect, entity, tagname) {
    if (isdefined(entity) && entity hasdobj(localclientnum) && isdefined(effect)) {
        return function_239993de(localclientnum, effect, entity, tagname);
    }
    return undefined;
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xc1b2271, Offset: 0x2d60
// Size: 0x34
function function_6d0694af() {
    while (isdefined(self) && !self function_700ca4f5()) {
        waitframe(1);
    }
}

// Namespace util/util_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x93abe15d, Offset: 0x2da0
// Size: 0x174
function server_wait(*localclientnum, seconds, waitbetweenchecks, level_endon) {
    if (isdefined(level_endon)) {
        level endon(level_endon);
    }
    if (seconds != 0 && isdemoplaying()) {
        if (!isdefined(waitbetweenchecks)) {
            waitbetweenchecks = 0.2;
        }
        waitcompletedsuccessfully = 0;
        starttime = getservertime(0);
        lasttime = starttime;
        endtime = starttime + int(seconds * 1000);
        while (getservertime(0) < endtime && getservertime(0) >= lasttime) {
            lasttime = getservertime(0);
            wait(waitbetweenchecks);
        }
        if (lasttime < getservertime(0)) {
            waitcompletedsuccessfully = 1;
        }
    } else {
        wait(seconds);
        waitcompletedsuccessfully = 1;
    }
    return waitcompletedsuccessfully;
}

// Namespace util/util_shared
// Params 1, eflags: 0x0
// Checksum 0x9939f0b7, Offset: 0x2f20
// Size: 0x8c
function get_other_team(str_team) {
    if (str_team == #"allies") {
        return #"axis";
    } else if (str_team == #"axis") {
        return #"allies";
    } else {
        return #"allies";
    }
    assertmsg("<unknown string>" + str_team);
}

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x2aca2639, Offset: 0x2fb8
// Size: 0x42
function function_fbce7263(team_a, team_b) {
    if (team_a === team_b) {
        return false;
    }
    if (!isdefined(team_a) || !isdefined(team_b)) {
        return true;
    }
    return true;
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xef25d880, Offset: 0x3008
// Size: 0x2a
function isenemyteam(team) {
    return function_fbce7263(team, self.team);
}

// Namespace util/util_shared
// Params 1, eflags: 0x0
// Checksum 0xd8f28f3e, Offset: 0x3040
// Size: 0x94
function isenemyplayer(player) {
    assert(isdefined(player));
    if (!isplayer(player)) {
        return false;
    }
    if (player.team != #"none") {
        if (player.team === self.team) {
            return false;
        }
    } else if (player == self) {
        return false;
    }
    return true;
}

// Namespace util/util_shared
// Params 1, eflags: 0x0
// Checksum 0x4f8e87b2, Offset: 0x30e0
// Size: 0xd2
function function_50ed1561(localclientnum) {
    function_89a98f85();
    if (!isdefined(self)) {
        return false;
    }
    if (!self function_21c0fa55()) {
        return false;
    }
    if (function_65b9eb0f(localclientnum)) {
        return false;
    }
    if (localclientnum !== self getlocalclientnumber()) {
        return false;
    }
    if (isdefined(level.localplayers[localclientnum]) && self getentitynumber() != level.localplayers[localclientnum] getentitynumber()) {
        return false;
    }
    return true;
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x41a97619, Offset: 0x31c0
// Size: 0x4e
function is_player_view_linked_to_entity(localclientnum) {
    if (function_fd3d58c7(localclientnum)) {
        return true;
    }
    if (function_e75c64a4(localclientnum)) {
        return true;
    }
    return false;
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x37a44135, Offset: 0x3218
// Size: 0x12
function get_start_time() {
    return getmicrosecondsraw();
}

/#

    // Namespace util/util_shared
    // Params 2, eflags: 0x0
    // Checksum 0x40190858, Offset: 0x3238
    // Size: 0xc4
    function note_elapsed_time(start_time, label = "unspecified") {
        elapsed_time = get_elapsed_time(start_time, getmicrosecondsraw());
        if (!isdefined(start_time)) {
            return;
        }
        elapsed_time *= 0.001;
        msg = label + "<unknown string>" + elapsed_time + "<unknown string>";
        profileprintln(msg);
        iprintlnbold(msg);
    }

    // Namespace util/util_shared
    // Params 2, eflags: 0x0
    // Checksum 0xeecbd0e1, Offset: 0x3308
    // Size: 0xa4
    function function_d11b3582(var_43692bd4, label = "unspecified") {
        if (!isdefined(var_43692bd4)) {
            return;
        }
        elapsed_time = var_43692bd4 * 0.001;
        msg = label + "<unknown string>" + elapsed_time + "<unknown string>";
        profileprintln(msg);
        iprintlnbold(msg);
    }

#/

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xdb6a15cb, Offset: 0x33b8
// Size: 0x92
function record_elapsed_time(start_time, &elapsed_time_array) {
    elapsed_time = get_elapsed_time(start_time, getmicrosecondsraw());
    if (!isdefined(elapsed_time_array)) {
        elapsed_time_array = [];
    } else if (!isarray(elapsed_time_array)) {
        elapsed_time_array = array(elapsed_time_array);
    }
    elapsed_time_array[elapsed_time_array.size] = elapsed_time;
}

/#

    // Namespace util/util_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x3f065d82, Offset: 0x3458
    // Size: 0x1bc
    function note_elapsed_times(&elapsed_time_array, label = "unspecified") {
        if (!isarray(elapsed_time_array)) {
            return;
        }
        if (elapsed_time_array.size == 0) {
            return;
        }
        total_elapsed_time = 0;
        smallest_elapsed_time = 2147483647;
        largest_elapsed_time = 0;
        foreach (elapsed_time in elapsed_time_array) {
            elapsed_time *= 0.001;
            total_elapsed_time += elapsed_time;
            if (elapsed_time < smallest_elapsed_time) {
                smallest_elapsed_time = elapsed_time;
            }
            if (elapsed_time > largest_elapsed_time) {
                largest_elapsed_time = elapsed_time;
            }
        }
        average_elapsed_time = total_elapsed_time / elapsed_time_array.size;
        msg = label + "<unknown string>" + smallest_elapsed_time + "<unknown string>" + average_elapsed_time + "<unknown string>" + largest_elapsed_time + "<unknown string>" + elapsed_time_array.size;
        profileprintln(msg);
        iprintlnbold(msg);
    }

    // Namespace util/util_shared
    // Params 5, eflags: 0x0
    // Checksum 0xd76a4a0d, Offset: 0x3620
    // Size: 0x164
    function function_53966f9c(&elapsed_time_array, label = "unspecified", var_5461755f = 10, var_fe4c69e3 = 100, var_d09034b4) {
        if (!isdefined(var_d09034b4)) {
            var_d09034b4 = elapsed_time_array.size;
        }
        if (var_d09034b4 % var_5461755f == 0) {
            note_elapsed_times(elapsed_time_array, label);
        }
        if (var_fe4c69e3 != 0 && elapsed_time_array.size >= var_fe4c69e3) {
            keys = getarraykeys(elapsed_time_array);
            foreach (key in keys) {
                elapsed_time_array[key] = undefined;
            }
            arrayremovevalue(elapsed_time_array, undefined);
        }
    }

#/

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x6a8e6dcc, Offset: 0x3790
// Size: 0x6c
function get_elapsed_time(start_time, end_time = getmicrosecondsraw()) {
    if (!isdefined(start_time)) {
        return undefined;
    }
    elapsed_time = end_time - start_time;
    if (elapsed_time < 0) {
        elapsed_time += -2147483648;
    }
    return elapsed_time;
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x9aa16894, Offset: 0x3808
// Size: 0xcc
function init_utility() {
    level.isdemoplaying = isdemoplaying();
    level.localplayers = [];
    level.numgametypereservedobjectives = [];
    level.releasedobjectives = [];
    maxlocalclients = getmaxlocalclients();
    for (localclientnum = 0; localclientnum < maxlocalclients; localclientnum++) {
        level.releasedobjectives[localclientnum] = [];
        level.numgametypereservedobjectives[localclientnum] = 0;
    }
    waitforclient(0);
    level.localplayers = getlocalplayers();
}

// Namespace util/util_shared
// Params 4, eflags: 0x0
// Checksum 0xe84e8b26, Offset: 0x38e0
// Size: 0x8c
function within_fov(start_origin, start_angles, end_origin, fov) {
    normal = vectornormalize(end_origin - start_origin);
    forward = anglestoforward(start_angles);
    dot = vectordot(forward, normal);
    return dot >= fov;
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x8757f2d, Offset: 0x3978
// Size: 0x12
function is_mature() {
    return ismaturecontentenabled();
}

// Namespace util/util_shared
// Params 0, eflags: 0x0
// Checksum 0x56bf07a, Offset: 0x3998
// Size: 0x12
function function_fa1da5cb() {
    return isshowbloodenabled();
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x59cfae9f, Offset: 0x39b8
// Size: 0x12
function function_2c435484() {
    return function_4e803413();
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x4a645364, Offset: 0x39d8
// Size: 0x38
function is_gib_restricted_build() {
    if (!(ismaturecontentenabled() && isshowgibsenabled())) {
        return true;
    }
    return false;
}

// Namespace util/util_shared
// Params 1, eflags: 0x0
// Checksum 0xeeb3db67, Offset: 0x3a18
// Size: 0x22
function function_cd6c95db(localclientnum) {
    return function_d6e37bb1(localclientnum);
}

// Namespace util/util_shared
// Params 1, eflags: 0x0
// Checksum 0xfa7d1647, Offset: 0x3a48
// Size: 0x22
function function_a0819fe3(localclientnum) {
    return colorblindmode(localclientnum);
}

// Namespace util/util_shared
// Params 4, eflags: 0x0
// Checksum 0x6c683200, Offset: 0x3a78
// Size: 0x2f4
function function_f5b24d2d(localclientnum, entity, var_d0ada253, state) {
    entity function_78233d29(var_d0ada253, "", #"hash_6ecae9ba3282976b", 0);
    teamcolor = (1, 1, 1);
    if (state == 1 || state == 4 || state == 6) {
        teamcolor = function_45a33458(localclientnum, #"allies", 1);
    } else if (state == 2 || state == 5 || state == 7) {
        teamcolor = function_45a33458(localclientnum, #"axis", 1);
    } else if (state == 3) {
        teamcolor = function_45a33458(localclientnum, #"axis", 1);
        if (isdefined(teamcolor)) {
            entity function_78233d29(var_d0ada253, "", #"hash_15e64a875216af23", teamcolor[0]);
            entity function_78233d29(var_d0ada253, "", #"hash_15e63d875216990c", teamcolor[1]);
            entity function_78233d29(var_d0ada253, "", #"hash_15e63a87521693f3", teamcolor[2]);
            entity function_78233d29(var_d0ada253, "", #"hash_6ecae9ba3282976b", 1);
        }
        teamcolor = function_45a33458(localclientnum, #"allies", 1);
    }
    if (isdefined(teamcolor)) {
        entity function_78233d29(var_d0ada253, "", #"hash_6be0f6c7665077c7", teamcolor[0]);
        entity function_78233d29(var_d0ada253, "", #"hash_6be0e1c766505418", teamcolor[1]);
        entity function_78233d29(var_d0ada253, "", #"hash_6be0e6c766505c97", teamcolor[2]);
        entity function_78233d29(var_d0ada253, "", #"hash_53eaa05730d4cddf", 1);
    }
}

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x87b524fd, Offset: 0x3d78
// Size: 0xda
function registersystem(ssysname, cbfunc) {
    if (!isdefined(level._systemstates)) {
        level._systemstates = [];
    }
    if (level._systemstates.size >= 32) {
        /#
            error("<unknown string>");
        #/
        return;
    }
    if (isdefined(level._systemstates[ssysname])) {
        /#
            error("<unknown string>" + ssysname);
        #/
        return;
    }
    level._systemstates[ssysname] = spawnstruct();
    level._systemstates[ssysname].callback = cbfunc;
}

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xf6fa8f2c, Offset: 0x3e60
// Size: 0x4c
function add_trigger_to_ent(ent, trig) {
    if (!isdefined(ent._triggers)) {
        ent._triggers = [];
    }
    ent._triggers[trig getentitynumber()] = 1;
}

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x4f7d503c, Offset: 0x3eb8
// Size: 0x6c
function remove_trigger_from_ent(ent, trig) {
    if (!isdefined(ent._triggers)) {
        return;
    }
    if (!isdefined(ent._triggers[trig getentitynumber()])) {
        return;
    }
    ent._triggers[trig getentitynumber()] = 0;
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd61be763, Offset: 0x3f30
// Size: 0x70
function ent_already_in_trigger(trig) {
    if (!isdefined(self._triggers)) {
        return false;
    }
    if (!isdefined(self._triggers[trig getentitynumber()])) {
        return false;
    }
    if (!self._triggers[trig getentitynumber()]) {
        return false;
    }
    return true;
}

// Namespace util/util_shared
// Params 3, eflags: 0x0
// Checksum 0x495e485d, Offset: 0x3fa8
// Size: 0xf4
function trigger_thread(ent, on_enter_payload, on_exit_payload) {
    ent endon(#"death");
    if (ent ent_already_in_trigger(self)) {
        return;
    }
    add_trigger_to_ent(ent, self);
    if (isdefined(on_enter_payload)) {
        [[ on_enter_payload ]](ent);
    }
    while (isdefined(ent) && ent istouching(self)) {
        waitframe(1);
    }
    if (isdefined(ent) && isdefined(on_exit_payload)) {
        [[ on_exit_payload ]](ent);
    }
    if (isdefined(ent)) {
        remove_trigger_from_ent(ent, self);
    }
}

// Namespace util/util_shared
// Params 3, eflags: 0x0
// Checksum 0x7180a819, Offset: 0x40a8
// Size: 0xec
function local_player_trigger_thread_always_exit(ent, on_enter_payload, on_exit_payload) {
    if (ent ent_already_in_trigger(self)) {
        return;
    }
    add_trigger_to_ent(ent, self);
    if (isdefined(on_enter_payload)) {
        [[ on_enter_payload ]](ent);
    }
    while (isdefined(ent) && ent istouching(self) && ent issplitscreenhost()) {
        waitframe(1);
    }
    if (isdefined(on_exit_payload)) {
        [[ on_exit_payload ]](ent);
    }
    if (isdefined(ent)) {
        remove_trigger_from_ent(ent, self);
    }
}

// Namespace util/util_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xdc1f76ca, Offset: 0x41a0
// Size: 0x8c
function local_player_entity_thread(localclientnum, entity, func, arg1, arg2, arg3, arg4) {
    entity endon(#"death");
    entity waittill_dobj(localclientnum);
    single_thread(entity, func, localclientnum, arg1, arg2, arg3, arg4);
}

// Namespace util/util_shared
// Params 6, eflags: 0x0
// Checksum 0x7670b170, Offset: 0x4238
// Size: 0x94
function local_players_entity_thread(entity, func, arg1, arg2, arg3, arg4) {
    players = level.localplayers;
    for (i = 0; i < players.size; i++) {
        players[i] thread local_player_entity_thread(i, entity, func, arg1, arg2, arg3, arg4);
    }
}

/#

    // Namespace util/util_shared
    // Params 4, eflags: 0x0
    // Checksum 0xb1679635, Offset: 0x42d8
    // Size: 0xb4
    function debug_line(from, to, color, time) {
        level.debug_line = getdvarint(#"scr_debug_line", 0);
        if (isdefined(level.debug_line) && level.debug_line == 1) {
            if (!isdefined(time)) {
                time = 1000;
            }
            line(from, to, color, 1, 1, time);
        }
    }

    // Namespace util/util_shared
    // Params 3, eflags: 0x0
    // Checksum 0x434b44af, Offset: 0x4398
    // Size: 0xac
    function debug_star(origin, color, time) {
        level.debug_star = getdvarint(#"scr_debug_star", 0);
        if (isdefined(level.debug_star) && level.debug_star == 1) {
            if (!isdefined(time)) {
                time = 1000;
            }
            if (!isdefined(color)) {
                color = (1, 1, 1);
            }
            debugstar(origin, time, color);
        }
    }

#/

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x5e4fcbcd, Offset: 0x4450
// Size: 0x11c
function getnextobjid(localclientnum) {
    nextid = 0;
    if (!isdefined(level.releasedobjectives) || !isdefined(level.releasedobjectives[localclientnum])) {
        return nextid;
    }
    if (level.releasedobjectives[localclientnum].size > 0) {
        nextid = level.releasedobjectives[localclientnum][level.releasedobjectives[localclientnum].size - 1];
        level.releasedobjectives[localclientnum][level.releasedobjectives[localclientnum].size - 1] = undefined;
    } else {
        nextid = level.numgametypereservedobjectives[localclientnum];
        level.numgametypereservedobjectives[localclientnum]++;
    }
    /#
        if (nextid > 31) {
            println("<unknown string>");
        }
    #/
    if (nextid > 31) {
        nextid = 31;
    }
    return nextid;
}

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x94569ec7, Offset: 0x4578
// Size: 0xa2
function releaseobjid(localclientnum, objid) {
    assert(objid < level.numgametypereservedobjectives[localclientnum]);
    for (i = 0; i < level.releasedobjectives[localclientnum].size; i++) {
        if (objid == level.releasedobjectives[localclientnum][i]) {
            return;
        }
    }
    level.releasedobjectives[localclientnum][level.releasedobjectives[localclientnum].size] = objid;
}

// Namespace util/util_shared
// Params 1, eflags: 0x0
// Checksum 0xb877b0b8, Offset: 0x4628
// Size: 0x28
function is_safehouse(str_next_map = get_map_name()) {
    return false;
}

/#

    // Namespace util/util_shared
    // Params 1, eflags: 0x0
    // Checksum 0x6721e7f7, Offset: 0x4658
    // Size: 0x118
    function button_held_think(which_button) {
        self endon(#"death");
        if (!isdefined(self._holding_button)) {
            self._holding_button = [];
        }
        self._holding_button[which_button] = 0;
        time_started = 0;
        while (true) {
            if (self._holding_button[which_button]) {
                if (!self [[ level._button_funcs[which_button] ]]()) {
                    self._holding_button[which_button] = 0;
                }
            } else if (self [[ level._button_funcs[which_button] ]]()) {
                if (time_started == 0) {
                    time_started = gettime();
                }
                if (gettime() - time_started > 250) {
                    self._holding_button[which_button] = 1;
                }
            } else if (time_started != 0) {
                time_started = 0;
            }
            waitframe(1);
        }
    }

    // Namespace util/util_shared
    // Params 0, eflags: 0x0
    // Checksum 0x424cad14, Offset: 0x4778
    // Size: 0x48
    function init_button_wrappers() {
        if (!isdefined(level._button_funcs)) {
            level._button_funcs[4] = &up_button_pressed;
            level._button_funcs[5] = &down_button_pressed;
        }
    }

    // Namespace util/util_shared
    // Params 0, eflags: 0x0
    // Checksum 0xbad59eaf, Offset: 0x47c8
    // Size: 0x62
    function up_button_held() {
        init_button_wrappers();
        if (!isdefined(self._up_button_think_threaded)) {
            self thread button_held_think(4);
            self._up_button_think_threaded = 1;
        }
        return self._holding_button[4];
    }

    // Namespace util/util_shared
    // Params 0, eflags: 0x0
    // Checksum 0x48442f9f, Offset: 0x4838
    // Size: 0x62
    function down_button_held() {
        init_button_wrappers();
        if (!isdefined(self._down_button_think_threaded)) {
            self thread button_held_think(5);
            self._down_button_think_threaded = 1;
        }
        return self._holding_button[5];
    }

    // Namespace util/util_shared
    // Params 0, eflags: 0x0
    // Checksum 0xaf424cc2, Offset: 0x48a8
    // Size: 0x46
    function up_button_pressed() {
        return self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>");
    }

    // Namespace util/util_shared
    // Params 0, eflags: 0x0
    // Checksum 0x71c37f7b, Offset: 0x48f8
    // Size: 0x28
    function waittill_up_button_pressed() {
        while (!self up_button_pressed()) {
            waitframe(1);
        }
    }

    // Namespace util/util_shared
    // Params 0, eflags: 0x0
    // Checksum 0xfabfd5c0, Offset: 0x4928
    // Size: 0x46
    function down_button_pressed() {
        return self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>");
    }

    // Namespace util/util_shared
    // Params 0, eflags: 0x0
    // Checksum 0x25590078, Offset: 0x4978
    // Size: 0x28
    function waittill_down_button_pressed() {
        while (!self down_button_pressed()) {
            waitframe(1);
        }
    }

#/

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x567cb8d4, Offset: 0x49a8
// Size: 0x6c
function function_4c1656d5() {
    if (sessionmodeiswarzonegame()) {
        return getdvarfloat(#"hash_4e7a02edee964bf9", 250);
    }
    return getdvarfloat(#"hash_4ec50cedeed64871", 250);
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x514b6a3f, Offset: 0x4a20
// Size: 0x124
function function_16fb0a3b() {
    if (sessionmodeiswarzonegame()) {
        if (getdvarint(#"hash_23a1d3a9139af42b", 0) > 0) {
            return getdvarfloat(#"hash_608e7bb0e9517884", 250);
        } else {
            return getdvarfloat(#"hash_4e7a02edee964bf9", 250);
        }
        return;
    }
    if (getdvarint(#"hash_23fac9a913e70c03", 0) > 0) {
        return getdvarfloat(#"hash_606c79b0e9348eb8", 250);
    }
    return getdvarfloat(#"hash_4ec50cedeed64871", 250);
}

// Namespace util/util_shared
// Params 4, eflags: 0x42 linked
// Checksum 0xc7133911, Offset: 0x4b50
// Size: 0x1f4
function lerp_generic(localclientnum, duration, callback, ...) {
    localplayer = function_5c10bd79(localclientnum);
    if (!isdefined(localplayer)) {
        return;
    }
    starttime = localplayer getclienttime();
    var_d183f050 = getservertime(localclientnum);
    currenttime = starttime;
    elapsedtime = 0;
    defaultargs = array(currenttime, elapsedtime, localclientnum, duration);
    args = arraycombine(defaultargs, vararg, 1, 0);
    while (elapsedtime < duration) {
        if (isdefined(callback)) {
            args[0] = currenttime;
            args[1] = elapsedtime;
            _single_func(undefined, callback, args);
        }
        waitframe(1);
        localplayer = function_5c10bd79(localclientnum);
        if (!isdefined(localplayer)) {
            return;
        }
        currenttime = localplayer getclienttime();
        var_5710f35c = getservertime(localclientnum);
        if (var_5710f35c < var_d183f050) {
            return;
        }
        elapsedtime = currenttime - starttime;
    }
    if (isdefined(callback)) {
        args[0] = currenttime;
        args[1] = duration;
        _single_func(undefined, callback, args);
    }
}

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xc36b2b83, Offset: 0x4d50
// Size: 0x5c
function function_c16f65a3(enemy_a, enemy_b) {
    assert(enemy_a != enemy_b, "<unknown string>");
    level.team_enemy_mapping[enemy_a] = enemy_b;
    level.team_enemy_mapping[enemy_b] = enemy_a;
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x2643a499, Offset: 0x4db8
// Size: 0xb4
function function_73fab74d() {
    if (isdefined(level.var_1bbf77be)) {
        return;
    }
    level.var_1bbf77be = 1;
    function_c16f65a3(#"allies", #"axis");
    function_c16f65a3(#"team3", #"any");
    set_team_mapping(#"allies", #"axis");
}

// Namespace util/util_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x3796c168, Offset: 0x4e78
// Size: 0x122
function cf_team_mapping(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    switch (bwastimejump) {
    case 0:
        set_team_mapping(#"axis", #"allies");
        break;
    case 1:
        set_team_mapping(#"allies", #"axis");
        break;
    default:
        set_team_mapping(#"allies", #"axis");
        break;
    }
}

// Namespace util/util_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xe1a3bda, Offset: 0x4fa8
// Size: 0x5c
function preload_frontend(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        preloadfrontend();
    }
}

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xc2e4292e, Offset: 0x5010
// Size: 0x1a4
function set_team_mapping(str_team_for_sidea, str_team_for_sideb) {
    assert(str_team_for_sidea != str_team_for_sideb, "<unknown string>");
    level.team_mapping[#"sidea"] = str_team_for_sidea;
    level.team_mapping[#"sideb"] = str_team_for_sideb;
    level.team_mapping[#"attacker"] = str_team_for_sidea;
    level.team_mapping[#"defender"] = str_team_for_sideb;
    level.team_mapping[#"attackers"] = str_team_for_sidea;
    level.team_mapping[#"defenders"] = str_team_for_sideb;
    level.team_mapping[#"cia"] = #"allies";
    level.team_mapping[#"kgb"] = #"axis";
    level.team_mapping[#"teama"] = level.team_mapping[#"sidea"];
    level.team_mapping[#"teamb"] = level.team_mapping[#"sideb"];
    level.team_mapping[#"side3"] = #"team3";
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xb020a95e, Offset: 0x51c0
// Size: 0x62
function get_team_mapping(str_team) {
    assert(isdefined(str_team));
    if (isdefined(level.team_mapping)) {
        result = level.team_mapping[str_team];
        if (isdefined(result)) {
            return result;
        }
    }
    return str_team;
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x680dd98e, Offset: 0x5230
// Size: 0x7a
function get_enemy_team(team) {
    team = get_team_mapping(team);
    if (!isdefined(team)) {
        return undefined;
    }
    if (isdefined(level.team_enemy_mapping) && isdefined(level.team_enemy_mapping[team])) {
        return level.team_enemy_mapping[team];
    }
    return #"none";
}

// Namespace util/util_shared
// Params 2, eflags: 0x0
// Checksum 0x641b5baf, Offset: 0x52b8
// Size: 0x132
function function_35aed314(teama, teamb) {
    teama = get_team_mapping(teama);
    teamb = get_team_mapping(teamb);
    if (!isdefined(teama) || !isdefined(teamb)) {
        return false;
    }
    if (teama == teamb) {
        return false;
    }
    if (isdefined(level.team_enemy_mapping)) {
        if (isdefined(level.team_enemy_mapping[teama])) {
            if (#"any" == level.team_enemy_mapping[teama]) {
                return true;
            }
            if (teamb == level.team_enemy_mapping[teama]) {
                return true;
            }
        }
        if (isdefined(level.team_enemy_mapping[teamb])) {
            if (#"any" == level.team_enemy_mapping[teamb]) {
                return true;
            }
            if (teama == level.team_enemy_mapping[teamb]) {
                return true;
            }
        }
    }
    return false;
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd4cbbea8, Offset: 0x53f8
// Size: 0x24
function is_on_side(str_team) {
    return self.team === get_team_mapping(str_team);
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x97ecb782, Offset: 0x5428
// Size: 0x32
function get_game_type() {
    return tolower(getdvarstring(#"g_gametype"));
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb41b8bab, Offset: 0x5468
// Size: 0x32
function get_map_name() {
    return tolower(getdvarstring(#"sv_mapname"));
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x86c320c7, Offset: 0x54a8
// Size: 0x1c
function is_frontend_map() {
    return get_map_name() === "core_frontend";
}

// Namespace util/util_shared
// Params 0, eflags: 0x0
// Checksum 0x51f48ef0, Offset: 0x54d0
// Size: 0x76
function function_26489405() {
    isnightmap = 0;
    mapname = get_map_name();
    switch (mapname) {
    case #"mp_casino":
        isnightmap = 1;
        break;
    default:
        break;
    }
    return isnightmap;
}

// Namespace util/util_shared
// Params 0, eflags: 0x0
// Checksum 0xfcdb4e91, Offset: 0x5550
// Size: 0x34
function is_arena_lobby() {
    mode = function_bea73b01();
    if (mode == 3) {
        return true;
    }
    return false;
}

// Namespace util/util_shared
// Params 0, eflags: 0x0
// Checksum 0x728543b8, Offset: 0x5590
// Size: 0x60
function function_e387bcd() {
    if (!isdefined(self)) {
        return false;
    }
    if (isdefined(self.script_wait)) {
        return true;
    }
    if (isdefined(self.script_wait_add)) {
        return true;
    }
    if (isdefined(self.script_wait_min)) {
        return true;
    }
    if (isdefined(self.script_wait_max)) {
        return true;
    }
    return false;
}

// Namespace util/util_shared
// Params 0, eflags: 0x0
// Checksum 0x50c46ff5, Offset: 0x55f8
// Size: 0xbc
function function_4b93f9c2() {
    result = 0;
    if (isdefined(self.script_wait)) {
        result += self.script_wait;
    }
    n_min = isdefined(self.script_wait_min) ? self.script_wait_min : 0;
    n_max = isdefined(self.script_wait_max) ? self.script_wait_max : 0;
    if (n_max > n_min) {
        result += randomfloatrange(n_min, n_max);
    } else if (n_min > 0) {
        result += n_min;
    }
    return result;
}

// Namespace util/util_shared
// Params 0, eflags: 0x0
// Checksum 0x464fed35, Offset: 0x56c0
// Size: 0x15a
function script_wait() {
    n_time = gettime();
    if (isdefined(self.script_wait)) {
        wait(self.script_wait);
        if (isdefined(self.script_wait_add)) {
            self.script_wait += self.script_wait_add;
        }
    }
    n_min = isdefined(self.script_wait_min) ? self.script_wait_min : 0;
    n_max = isdefined(self.script_wait_max) ? self.script_wait_max : 0;
    if (n_max > n_min) {
        wait(randomfloatrange(n_min, n_max));
        self.script_wait_min += isdefined(self.script_wait_add) ? self.script_wait_add : 0;
        self.script_wait_max += isdefined(self.script_wait_add) ? self.script_wait_add : 0;
    } else if (n_min > 0) {
        wait(n_min);
        self.script_wait_min += isdefined(self.script_wait_add) ? self.script_wait_add : 0;
    }
    return gettime() - n_time;
}

// Namespace util/util_shared
// Params 1, eflags: 0x0
// Checksum 0x4e97ac31, Offset: 0x5828
// Size: 0x96
function lock_model(model) {
    if (isdefined(model)) {
        if (!isdefined(level.model_locks)) {
            level.model_locks = [];
        }
        if (!isdefined(level.model_locks[model])) {
            level.model_locks[model] = 0;
        }
        if (level.model_locks[model] < 1) {
            forcestreamxmodel(model);
        }
        level.model_locks[model]++;
    }
}

// Namespace util/util_shared
// Params 1, eflags: 0x0
// Checksum 0x58235fda, Offset: 0x58c8
// Size: 0x9c
function unlock_model(model) {
    if (!isdefined(level.model_locks)) {
        level.model_locks = [];
    }
    if (isdefined(model) && isdefined(level.model_locks[model])) {
        if (level.model_locks[model] > 0) {
            level.model_locks[model]--;
            if (level.model_locks[model] < 1) {
                stopforcestreamingxmodel(model);
            }
        }
    }
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x60f266a8, Offset: 0x5970
// Size: 0x1c6
function function_48e57e36(var_1f1d12d8) {
    base = 1;
    decimal = 0;
    for (i = var_1f1d12d8.size - 1; i >= 0; i--) {
        if (var_1f1d12d8[i] >= "0" && var_1f1d12d8[i] <= "9") {
            decimal += int(var_1f1d12d8[i]) * base;
            base *= 16;
            continue;
        }
        if (var_1f1d12d8[i] >= "a" && var_1f1d12d8[i] <= "f") {
            if (var_1f1d12d8[i] == "a") {
                number = 10;
            } else if (var_1f1d12d8[i] == "b") {
                number = 11;
            } else if (var_1f1d12d8[i] == "c") {
                number = 12;
            } else if (var_1f1d12d8[i] == "d") {
                number = 13;
            } else if (var_1f1d12d8[i] == "e") {
                number = 14;
            } else if (var_1f1d12d8[i] == "f") {
                number = 15;
            }
            decimal += number * base;
            base *= 16;
        }
    }
    return decimal;
}

/#

    // Namespace util/util_shared
    // Params 3, eflags: 0x0
    // Checksum 0xbf039eec, Offset: 0x5b40
    // Size: 0x5c
    function add_devgui(localclientnum, menu_path, commands) {
        adddebugcommand(localclientnum, "<unknown string>" + menu_path + "<unknown string>" + commands + "<unknown string>");
    }

    // Namespace util/util_shared
    // Params 2, eflags: 0x0
    // Checksum 0xe747f73, Offset: 0x5ba8
    // Size: 0x44
    function remove_devgui(localclientnum, menu_path) {
        adddebugcommand(localclientnum, "<unknown string>" + menu_path + "<unknown string>");
    }

#/

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x1aea04fa, Offset: 0x5bf8
// Size: 0x9e
function function_b5338ccb(value, deadzone = 0.2) {
    assert(deadzone < 1);
    if (abs(value) < deadzone) {
        return 0;
    }
    return (value - deadzone * math::sign(value)) / (1 - deadzone);
}

// Namespace util/util_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x1bf18197, Offset: 0x5ca0
// Size: 0xac
function function_63320ea1(vector, deadzone, var_edfc4672 = 0) {
    if (var_edfc4672) {
        return (function_b5338ccb(vector[0], deadzone), function_b5338ccb(vector[1], deadzone), 0);
    }
    return vectornormalize(vector) * function_b5338ccb(length(vector), deadzone);
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x9b9edf9d, Offset: 0x5d58
// Size: 0x24
function function_5ff170ee() {
    setdvar(#"hash_19b5d46719678445", 0);
}

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xc66f1db5, Offset: 0x5d88
// Size: 0x9c
function function_8d617b62(color, stops) {
    if (isdefined(color) || isdefined(stops)) {
        setdvar(#"hash_19b5d46719678445", 1);
        if (isdefined(color)) {
            setdvar(#"r_suncolor", color);
        }
        if (isdefined(stops)) {
            setdvar(#"r_sunstops", stops);
        }
    }
}

// Namespace util/util_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xbde36314, Offset: 0x5e30
// Size: 0x54
function function_21aef83c() {
    setdvar(#"hash_51a850dd61ea465b", 500);
    setdvar(#"hash_6f9f3341a7820247", 0);
}

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x2d8d1bdb, Offset: 0x5e90
// Size: 0x54
function function_8eb5d4b0(var_b5b0042e, var_aba8f86c) {
    setdvar(#"hash_51a850dd61ea465b", var_b5b0042e);
    setdvar(#"hash_6f9f3341a7820247", var_aba8f86c);
}

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x1e6931e8, Offset: 0x5ef0
// Size: 0x44
function function_3ec868ea(localclientnum, var_7bb490d6 = 1) {
    return function_6593be12(localclientnum, var_7bb490d6) / 100;
}

// Namespace util/util_shared
// Params 3, eflags: 0x0
// Checksum 0x3ecc3d4d, Offset: 0x5f40
// Size: 0x1ec
function function_ca4b4e19(localclientnum, var_b5338ccb = 1, var_7bb490d6 = 1) {
    input = [];
    if (!gamepadusedlast(localclientnum)) {
        input[#"look"] = function_3ec868ea(localclientnum, var_7bb490d6);
        input[#"move"] = (isbuttonpressed(localclientnum, 75) ? -1 : isbuttonpressed(localclientnum, 76) ? 1 : 0, isbuttonpressed(localclientnum, 74) ? -1 : isbuttonpressed(localclientnum, 73) ? 1 : 0, 0);
    } else {
        input = self function_b8e6d95c();
        if (var_b5338ccb) {
            input[#"look"] = function_63320ea1(input[#"look"]);
            input[#"move"] = function_63320ea1(input[#"move"]);
        }
    }
    return input;
}

// Namespace util/util_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x7c1a0548, Offset: 0x6138
// Size: 0x32
function function_11f127f0(localclientnum, var_b5338ccb) {
    return function_3bb62fcf(localclientnum, 1, var_b5338ccb);
}

// Namespace util/util_shared
// Params 2, eflags: 0x0
// Checksum 0x23e5ca28, Offset: 0x6178
// Size: 0x2a
function function_17bf631a(localclientnum, var_b5338ccb) {
    return function_3bb62fcf(localclientnum, 0, var_b5338ccb);
}

// Namespace util/util_shared
// Params 3, eflags: 0x6 linked
// Checksum 0xfd52295c, Offset: 0x61b0
// Size: 0x16c
function private function_3bb62fcf(localclientnum, var_89c3fd26 = 1, var_b5338ccb = 1) {
    input = getcontrollerposition(localclientnum);
    var_2e35e6c1 = (0, 0, 0);
    if (var_89c3fd26) {
        var_2e35e6c1 = input[#"rightstick"];
    } else {
        var_2e35e6c1 = input[#"leftstick"];
    }
    if (var_b5338ccb) {
        var_2e35e6c1 = function_63320ea1(var_2e35e6c1);
    }
    magnitude = length2d(var_2e35e6c1);
    var_a5788712 = angleclamp180(vectortoangles(var_2e35e6c1)[1]);
    return {#x:var_2e35e6c1[0], #y:var_2e35e6c1[1], #length:magnitude, #degrees:var_a5788712};
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x40051be4, Offset: 0x6328
// Size: 0x2c
function function_57f1ac46(localclientnum) {
    return function_491c4d64(localclientnum)[#"left"];
}

// Namespace util/util_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x1d287590, Offset: 0x6360
// Size: 0x2c
function function_f35576c(localclientnum) {
    return function_491c4d64(localclientnum)[#"right"];
}

// Namespace util/util_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x77c3c5d, Offset: 0x6398
// Size: 0x9a
function init_dvar(str_dvar, default_val, func_callback) {
    function_5ac4dc99(str_dvar, default_val);
    if (isdefined(func_callback)) {
        function_cd140ee9(str_dvar, func_callback);
        level thread [[ func_callback ]]({#name:str_dvar, #value:getdvar(str_dvar)});
    }
}

// Namespace util/util_shared
// Params 6, eflags: 0x2 linked
// Checksum 0x15ba25ed, Offset: 0x6440
// Size: 0x39e
function function_6f326f49(hour, minute, second, day, month, year) {
    for (;;) {
        setdvar(#"hash_dfcfdb3bf28da5e", string(hour, 2) + ":" + string(minute, 2) + ":" + string(second, 2) + " " + string(month, 2) + "/" + string(day, 2) + "/" + string(year % 100, 2));
        wait(1);
        second += 1;
        if (second > 59) {
            second = 0;
            minute += 1;
        }
        if (minute > 59) {
            minute = 0;
            hour += 1;
        }
        if (hour > 23) {
            hour = 0;
            day += 1;
        }
        switch (month) {
        case 1:
            var_8bf17cd8 = 31;
            break;
        case 2:
            if (year % 4 == 0 || year % 100 == 0 && !(year % 4 == 0 && year % 100 == 0)) {
                var_8bf17cd8 = 29;
            } else {
                var_8bf17cd8 = 28;
            }
            break;
        case 3:
            var_8bf17cd8 = 31;
            break;
        case 4:
            var_8bf17cd8 = 30;
            break;
        case 5:
            var_8bf17cd8 = 31;
            break;
        case 6:
            var_8bf17cd8 = 30;
            break;
        case 7:
            var_8bf17cd8 = 31;
            break;
        case 8:
            var_8bf17cd8 = 31;
            break;
        case 9:
            var_8bf17cd8 = 30;
            break;
        case 10:
            var_8bf17cd8 = 31;
            break;
        case 11:
            var_8bf17cd8 = 30;
            break;
        case 12:
            var_8bf17cd8 = 31;
            break;
        }
        if (day > var_8bf17cd8) {
            day = 1;
            month += 1;
        }
        if (month > 12) {
            month = 1;
            year += 1;
        }
    }
}

// Namespace util/util_shared
// Params 6, eflags: 0x0
// Checksum 0xdbd14722, Offset: 0x67e8
// Size: 0x31c
function function_a9ea7ad4(hour, minute, second, day, month, year) {
    if (hour < 0) {
        hour = 0;
    } else if (hour > 23) {
        hour = 23;
    }
    if (minute < 0) {
        minute = 0;
    } else if (minute > 59) {
        minute = 59;
    }
    if (second < 0) {
        second = 0;
    } else if (second > 59) {
        second = 59;
    }
    if (month < 1) {
        month = 1;
    } else if (month > 12) {
        month = 12;
    }
    if (year < 0) {
        year = 0;
    } else if (year > 1000000) {
        year = 1000000;
    }
    switch (month) {
    case 1:
        var_8bf17cd8 = 31;
        break;
    case 2:
        if (year % 4 == 0 || year % 100 == 0 && !(year % 4 == 0 && year % 100 == 0)) {
            var_8bf17cd8 = 29;
        } else {
            var_8bf17cd8 = 28;
        }
        break;
    case 3:
        var_8bf17cd8 = 31;
        break;
    case 4:
        var_8bf17cd8 = 30;
        break;
    case 5:
        var_8bf17cd8 = 31;
        break;
    case 6:
        var_8bf17cd8 = 30;
        break;
    case 7:
        var_8bf17cd8 = 31;
        break;
    case 8:
        var_8bf17cd8 = 31;
        break;
    case 9:
        var_8bf17cd8 = 30;
        break;
    case 10:
        var_8bf17cd8 = 31;
        break;
    case 11:
        var_8bf17cd8 = 30;
        break;
    case 12:
        var_8bf17cd8 = 31;
        break;
    }
    if (day < 1) {
        day = 1;
    } else if (day > var_8bf17cd8) {
        day = var_8bf17cd8;
    }
    thread function_6f326f49(hour, minute, second, day, month, year);
}

