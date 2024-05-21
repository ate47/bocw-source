// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace hackable;

// Namespace hackable/hackable
// Params 0, eflags: 0x5
// Checksum 0xbdbd323d, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hackable", &init, undefined, undefined, undefined);
}

// Namespace hackable/hackable
// Params 0, eflags: 0x0
// Checksum 0xe1fe1f02, Offset: 0xd8
// Size: 0x20
function init() {
    if (!isdefined(level.hackable_items)) {
        level.hackable_items = [];
    }
}

// Namespace hackable/hackable
// Params 5, eflags: 0x0
// Checksum 0x8780147e, Offset: 0x100
// Size: 0x222
function add_hackable_object(obj, test_callback, start_callback, fail_callback, complete_callback) {
    cleanup_hackable_objects();
    if (!isdefined(level.hackable_items)) {
        level.hackable_items = [];
    } else if (!isarray(level.hackable_items)) {
        level.hackable_items = array(level.hackable_items);
    }
    level.hackable_items[level.hackable_items.size] = obj;
    if (!isdefined(obj.hackable_distance_sq)) {
        obj.hackable_distance_sq = getdvarfloat(#"scr_hacker_default_distance", 0) * getdvarfloat(#"scr_hacker_default_distance", 0);
    }
    if (!isdefined(obj.hackable_angledot)) {
        obj.hackable_angledot = getdvarfloat(#"scr_hacker_default_angledot", 0);
    }
    if (!isdefined(obj.hackable_timeout)) {
        obj.hackable_timeout = getdvarfloat(#"scr_hacker_default_timeout", 0);
    }
    if (!isdefined(obj.hackable_progress_prompt)) {
        obj.hackable_progress_prompt = #"hash_7080e1304a0ce47d";
    }
    if (!isdefined(obj.hackable_cost_mult)) {
        obj.hackable_cost_mult = 1;
    }
    if (!isdefined(obj.hackable_hack_time)) {
        obj.hackable_hack_time = getdvarfloat(#"scr_hacker_default_hack_time", 0);
    }
    obj.hackable_test_callback = test_callback;
    obj.hackable_start_callback = start_callback;
    obj.hackable_fail_callback = fail_callback;
    obj.hackable_hacked_callback = complete_callback;
}

// Namespace hackable/hackable
// Params 1, eflags: 0x0
// Checksum 0xe508c698, Offset: 0x330
// Size: 0x3c
function remove_hackable_object(obj) {
    arrayremovevalue(level.hackable_items, obj);
    cleanup_hackable_objects();
}

// Namespace hackable/hackable
// Params 0, eflags: 0x0
// Checksum 0x52f9550b, Offset: 0x378
// Size: 0x34
function cleanup_hackable_objects() {
    level.hackable_items = array::filter(level.hackable_items, 0, &filter_deleted);
}

// Namespace hackable/hackable
// Params 1, eflags: 0x0
// Checksum 0x50f5af93, Offset: 0x3b8
// Size: 0x10
function filter_deleted(val) {
    return isdefined(val);
}

// Namespace hackable/hackable
// Params 0, eflags: 0x0
// Checksum 0xae596ea7, Offset: 0x3d0
// Size: 0x156
function find_hackable_object() {
    cleanup_hackable_objects();
    candidates = [];
    origin = self.origin;
    forward = anglestoforward(self.angles);
    foreach (obj in level.hackable_items) {
        if (self is_object_hackable(obj, origin, forward)) {
            if (!isdefined(candidates)) {
                candidates = [];
            } else if (!isarray(candidates)) {
                candidates = array(candidates);
            }
            candidates[candidates.size] = obj;
        }
    }
    if (candidates.size > 0) {
        return arraygetclosest(self.origin, candidates);
    }
    return undefined;
}

// Namespace hackable/hackable
// Params 3, eflags: 0x0
// Checksum 0x254d7a7c, Offset: 0x530
// Size: 0xf4
function is_object_hackable(obj, origin, forward) {
    if (distancesquared(origin, obj.origin) < obj.hackable_distance_sq) {
        to_obj = obj.origin - origin;
        to_obj = (to_obj[0], to_obj[1], 0);
        to_obj = vectornormalize(to_obj);
        dot = vectordot(to_obj, forward);
        if (dot >= obj.hackable_angledot) {
            if (isdefined(obj.hackable_test_callback)) {
                return obj [[ obj.hackable_test_callback ]](self);
            }
            return 1;
        } else {
            /#
            #/
        }
    }
    return 0;
}

// Namespace hackable/hackable
// Params 1, eflags: 0x0
// Checksum 0x1d1fbf77, Offset: 0x630
// Size: 0x4c
function start_hacking_object(obj) {
    obj.hackable_being_hacked = 1;
    obj.hackable_hacked_amount = 0;
    if (isdefined(obj.hackable_start_callback)) {
        obj thread [[ obj.hackable_start_callback ]](self);
    }
}

// Namespace hackable/hackable
// Params 1, eflags: 0x0
// Checksum 0xba599eb, Offset: 0x688
// Size: 0x60
function fail_hacking_object(obj) {
    if (isdefined(obj.hackable_fail_callback)) {
        obj thread [[ obj.hackable_fail_callback ]](self);
    }
    obj.hackable_hacked_amount = 0;
    obj.hackable_being_hacked = 0;
    obj notify(#"hackable_watch_timeout");
}

// Namespace hackable/hackable
// Params 1, eflags: 0x0
// Checksum 0xeed6e23e, Offset: 0x6f0
// Size: 0x5e
function complete_hacking_object(obj) {
    obj notify(#"hackable_watch_timeout");
    if (isdefined(obj.hackable_hacked_callback)) {
        obj thread [[ obj.hackable_hacked_callback ]](self);
    }
    obj.hackable_hacked_amount = 0;
    obj.hackable_being_hacked = 0;
}

// Namespace hackable/hackable
// Params 2, eflags: 0x0
// Checksum 0xc5acbe3a, Offset: 0x758
// Size: 0x5c
function watch_timeout(obj, time) {
    obj notify(#"hackable_watch_timeout");
    obj endon(#"hackable_watch_timeout");
    wait(time);
    if (isdefined(obj)) {
        fail_hacking_object(obj);
    }
}

// Namespace hackable/hackable
// Params 1, eflags: 0x0
// Checksum 0xe3a2054a, Offset: 0x7c0
// Size: 0x18a
function continue_hacking_object(obj) {
    origin = self.origin;
    forward = anglestoforward(self.angles);
    if (self is_object_hackable(obj, origin, forward)) {
        if (!is_true(obj.hackable_being_hacked)) {
            self start_hacking_object(obj);
        }
        if (isdefined(obj.hackable_timeout) && obj.hackable_timeout > 0) {
            self thread watch_timeout(obj, obj.hackable_timeout);
        }
        amt = 1 / 20 * obj.hackable_hack_time;
        obj.hackable_hacked_amount += amt;
        if (obj.hackable_hacked_amount > 1) {
            self complete_hacking_object(obj);
        }
        if (is_true(obj.hackable_being_hacked)) {
            return obj.hackable_hacked_amount;
        }
    }
    if (is_true(obj.hackable_being_hacked)) {
    }
    return -1;
}

