// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_server_throttle;

// Namespace zm_server_throttle/zm_server_throttle
// Params 2, eflags: 0x2 linked
// Checksum 0x4cf500d, Offset: 0x90
// Size: 0x74
function server_choke_init(id, max) {
    if (!isdefined(level.zombie_server_choke_ids_max)) {
        level.zombie_server_choke_ids_max = [];
        level.zombie_server_choke_ids_count = [];
    }
    level.zombie_server_choke_ids_max[id] = max;
    level.zombie_server_choke_ids_count[id] = 0;
    level thread server_choke_thread(id);
}

// Namespace zm_server_throttle/zm_server_throttle
// Params 1, eflags: 0x2 linked
// Checksum 0x20fcc2e, Offset: 0x110
// Size: 0x30
function server_choke_thread(id) {
    while (true) {
        waitframe(1);
        level.zombie_server_choke_ids_count[id] = 0;
    }
}

// Namespace zm_server_throttle/zm_server_throttle
// Params 1, eflags: 0x2 linked
// Checksum 0xc1613989, Offset: 0x148
// Size: 0x2e
function server_choke_safe(id) {
    return level.zombie_server_choke_ids_count[id] < level.zombie_server_choke_ids_max[id];
}

// Namespace zm_server_throttle/zm_server_throttle
// Params 5, eflags: 0x2 linked
// Checksum 0x52d76c53, Offset: 0x180
// Size: 0xf0
function server_choke_action(id, choke_action, arg1, arg2, arg3) {
    assert(isdefined(level.zombie_server_choke_ids_max[id]), "<unknown string>" + id + "<unknown string>");
    while (!server_choke_safe(id)) {
        waitframe(1);
    }
    level.zombie_server_choke_ids_count[id]++;
    if (!isdefined(arg1)) {
        return [[ choke_action ]]();
    }
    if (!isdefined(arg2)) {
        return [[ choke_action ]](arg1);
    }
    if (!isdefined(arg3)) {
        return [[ choke_action ]](arg1, arg2);
    }
    return [[ choke_action ]](arg1, arg2, arg3);
}

// Namespace zm_server_throttle/zm_server_throttle
// Params 1, eflags: 0x0
// Checksum 0x704d8dfb, Offset: 0x278
// Size: 0x1c
function server_entity_valid(entity) {
    if (!isdefined(entity)) {
        return false;
    }
    return true;
}

// Namespace zm_server_throttle/zm_server_throttle
// Params 2, eflags: 0x2 linked
// Checksum 0x783c48fa, Offset: 0x2a0
// Size: 0x7c
function server_safe_init(id, max) {
    if (!isdefined(level.zombie_server_choke_ids_max) || !isdefined(level.zombie_server_choke_ids_max[id])) {
        server_choke_init(id, max);
    }
    assert(max == level.zombie_server_choke_ids_max[id]);
}

// Namespace zm_server_throttle/zm_server_throttle
// Params 1, eflags: 0x2 linked
// Checksum 0x1156b7dd, Offset: 0x328
// Size: 0x22
function _server_safe_ground_trace(pos) {
    return zm_utility::groundpos(pos);
}

// Namespace zm_server_throttle/zm_server_throttle
// Params 3, eflags: 0x2 linked
// Checksum 0xa7ce696f, Offset: 0x358
// Size: 0x52
function server_safe_ground_trace(id, max, origin) {
    server_safe_init(id, max);
    return server_choke_action(id, &_server_safe_ground_trace, origin);
}

// Namespace zm_server_throttle/zm_server_throttle
// Params 1, eflags: 0x2 linked
// Checksum 0x733ec167, Offset: 0x3b8
// Size: 0x22
function _server_safe_ground_trace_ignore_water(pos) {
    return zm_utility::groundpos_ignore_water(pos);
}

// Namespace zm_server_throttle/zm_server_throttle
// Params 3, eflags: 0x0
// Checksum 0x5f2f2ed8, Offset: 0x3e8
// Size: 0x52
function server_safe_ground_trace_ignore_water(id, max, origin) {
    server_safe_init(id, max);
    return server_choke_action(id, &_server_safe_ground_trace_ignore_water, origin);
}

