#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\util_shared;

#namespace namespace_297ae820;

// Namespace namespace_297ae820/namespace_297ae820
// Params 0, eflags: 0x0
// Checksum 0x7a179f42, Offset: 0xb0
// Size: 0xc4
function init() {
    clientfield::register("world", "" + #"hash_658f225a02b95617", 28000, 1, "int");
    clientfield::register("world", "" + #"hash_5e34e1c50fd13b32", 28000, 1, "int");
    clientfield::register("world", "" + #"dark_aether_light_on", 28000, 1, "int");
}

// Namespace namespace_297ae820/namespace_297ae820
// Params 1, eflags: 0x0
// Checksum 0xaebe289d, Offset: 0x180
// Size: 0x54
function function_3528419f(state) {
    level endon(#"end_game");
    level clientfield::set("" + #"hash_658f225a02b95617", state);
}

