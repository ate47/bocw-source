#using scripts\core_common\clientfield_shared;
#using scripts\core_common\system_shared;

#namespace namespace_5d18774f;

// Namespace namespace_5d18774f/namespace_5d18774f
// Params 0, eflags: 0x5
// Checksum 0xd9b0a878, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"blood", &preload, undefined, undefined, undefined);
}

// Namespace namespace_5d18774f/namespace_5d18774f
// Params 0, eflags: 0x0
// Checksum 0x24631e7e, Offset: 0xf0
// Size: 0x54
function preload() {
    if (sessionmodeiscampaigngame()) {
        clientfield::register("world", "" + #"hash_7dc38a630ed68eb3", 1, 1, "int");
    }
}

