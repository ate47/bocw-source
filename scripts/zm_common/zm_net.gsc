// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_net;

// Namespace zm_net/zm_net
// Params 2, eflags: 0x2 linked
// Checksum 0x56184402, Offset: 0x90
// Size: 0x74
function network_choke_init(id, max) {
    if (!isdefined(level.zombie_network_choke_ids_max)) {
        level.zombie_network_choke_ids_max = [];
        level.zombie_network_choke_ids_count = [];
    }
    level.zombie_network_choke_ids_max[id] = max;
    level.zombie_network_choke_ids_count[id] = 0;
    level thread network_choke_thread(id);
}

// Namespace zm_net/zm_net
// Params 1, eflags: 0x2 linked
// Checksum 0x205c9675, Offset: 0x110
// Size: 0x48
function network_choke_thread(id) {
    while (true) {
        util::wait_network_frame();
        util::wait_network_frame();
        level.zombie_network_choke_ids_count[id] = 0;
    }
}

// Namespace zm_net/zm_net
// Params 1, eflags: 0x2 linked
// Checksum 0x7faa76c7, Offset: 0x160
// Size: 0x2e
function network_choke_safe(id) {
    return level.zombie_network_choke_ids_count[id] < level.zombie_network_choke_ids_max[id];
}

// Namespace zm_net/zm_net
// Params 5, eflags: 0x2 linked
// Checksum 0x7e50dbce, Offset: 0x198
// Size: 0xf0
function network_choke_action(id, choke_action, arg1, arg2, arg3) {
    assert(isdefined(level.zombie_network_choke_ids_max[id]), "<unknown string>" + id + "<unknown string>");
    while (!network_choke_safe(id)) {
        waitframe(1);
    }
    level.zombie_network_choke_ids_count[id]++;
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

// Namespace zm_net/zm_net
// Params 1, eflags: 0x2 linked
// Checksum 0x35f9b901, Offset: 0x290
// Size: 0x1c
function network_entity_valid(entity) {
    if (!isdefined(entity)) {
        return false;
    }
    return true;
}

// Namespace zm_net/zm_net
// Params 2, eflags: 0x2 linked
// Checksum 0x5b069777, Offset: 0x2b8
// Size: 0x7c
function network_safe_init(id, max) {
    if (!isdefined(level.zombie_network_choke_ids_max) || !isdefined(level.zombie_network_choke_ids_max[id])) {
        network_choke_init(id, max);
    }
    assert(max == level.zombie_network_choke_ids_max[id]);
}

// Namespace zm_net/zm_net
// Params 2, eflags: 0x2 linked
// Checksum 0x30d1f6a1, Offset: 0x340
// Size: 0x2a
function _network_safe_spawn(classname, origin) {
    return spawn(classname, origin);
}

// Namespace zm_net/zm_net
// Params 4, eflags: 0x2 linked
// Checksum 0x229ee7c9, Offset: 0x378
// Size: 0x62
function network_safe_spawn(id, max, classname, origin) {
    network_safe_init(id, max);
    return network_choke_action(id, &_network_safe_spawn, classname, origin);
}

// Namespace zm_net/zm_net
// Params 3, eflags: 0x2 linked
// Checksum 0x6abe833c, Offset: 0x3e8
// Size: 0x4c
function _network_safe_play_fx_on_tag(fx, entity, tag) {
    if (network_entity_valid(entity)) {
        playfxontag(fx, entity, tag);
    }
}

// Namespace zm_net/zm_net
// Params 5, eflags: 0x2 linked
// Checksum 0xa7eb0dbf, Offset: 0x440
// Size: 0x6c
function network_safe_play_fx_on_tag(id, max, fx, entity, tag) {
    network_safe_init(id, max);
    network_choke_action(id, &_network_safe_play_fx_on_tag, fx, entity, tag);
}

