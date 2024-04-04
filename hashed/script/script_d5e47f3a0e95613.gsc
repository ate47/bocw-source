// Atian COD Tools GSC CW decompiler test
#using script_471b31bd963b388e;
#using script_340a2e805e35f7a2;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_f0884ae5;

// Namespace namespace_f0884ae5/namespace_1d9375fc
// Params 1, eflags: 0x2 linked
// Checksum 0x405fba71, Offset: 0xa0
// Size: 0x6c
function setup(seedvalue) {
    if (!item_world_util::use_item_spawns()) {
        return;
    }
    function_1f4464c0(seedvalue);
    println("<unknown string>" + seedvalue);
    namespace_65181344::setup_groups();
}

