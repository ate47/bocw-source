#using script_340a2e805e35f7a2;
#using script_471b31bd963b388e;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\struct;

#namespace item_spawn_group;

// Namespace item_spawn_group/item_spawn_groups
// Params 1, eflags: 0x0
// Checksum 0x405fba71, Offset: 0xa0
// Size: 0x6c
function setup(seedvalue) {
    if (!item_world_util::use_item_spawns()) {
        return;
    }
    function_1f4464c0(seedvalue);
    println("<dev string:x38>" + seedvalue);
    namespace_65181344::setup_groups();
}

