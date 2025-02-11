#using script_101d8280497ff416;
#using script_680dddbda86931fa;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\struct;

#namespace item_spawn_group;

// Namespace item_spawn_group/item_spawn_groups
// Params 2, eflags: 0x0
// Checksum 0xdf404a6, Offset: 0xa0
// Size: 0x84
function setup(*localclientnum, seedvalue) {
    if (!item_world_util::use_item_spawns()) {
        return;
    }
    level.var_8c615e33 = [];
    function_1f4464c0(seedvalue);
    println("<dev string:x38>" + seedvalue);
    namespace_65181344::setup_groups();
}

