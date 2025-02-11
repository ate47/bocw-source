#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\spawning_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace doa_banner;

// Namespace doa_banner/doa_banner
// Params 0, eflags: 0x0
// Checksum 0x6b2f0871, Offset: 0x108
// Size: 0x64
function init() {
    clientfield::register("world", "banner_event", 1, 6, "int");
    clientfield::register("world", "banner_eventplayer", 1, 6, "int");
}

// Namespace doa_banner/doa_banner
// Params 1, eflags: 0x0
// Checksum 0x196244c6, Offset: 0x178
// Size: 0x6c
function function_7a0e5387(event = 63) {
    level clientfield::set("banner_event", 0);
    util::wait_network_frame();
    level clientfield::set("banner_event", event);
}

