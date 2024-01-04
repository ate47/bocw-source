// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_a6ddb172;

// Namespace namespace_a6ddb172/namespace_a6ddb172
// Params 0, eflags: 0x2 linked
// Checksum 0x6b2f0871, Offset: 0x108
// Size: 0x64
function init() {
    clientfield::register("world", "banner_event", 1, 6, "int");
    clientfield::register("world", "banner_eventplayer", 1, 6, "int");
}

// Namespace namespace_a6ddb172/namespace_a6ddb172
// Params 1, eflags: 0x2 linked
// Checksum 0x196244c6, Offset: 0x178
// Size: 0x6c
function function_7a0e5387(event = 63) {
    level clientfield::set("banner_event", 0);
    util::wait_network_frame();
    level clientfield::set("banner_event", event);
}

