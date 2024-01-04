// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_4914de7c;

// Namespace namespace_4914de7c/level_init
// Params 1, eflags: 0x20
// Checksum 0xd934819e, Offset: 0xa0
// Size: 0x2a
function event_handler[level_init] main(*eventstruct) {
    if (util::get_map_name() !== "wz_russia") {
        return;
    }
}

