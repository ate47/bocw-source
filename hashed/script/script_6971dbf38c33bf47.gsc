// Atian COD Tools GSC CW decompiler test
#using script_680dddbda86931fa;
#using script_101d8280497ff416;
#using scripts\core_common\struct.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_f0884ae5;

// Namespace namespace_f0884ae5/namespace_1d9375fc
// Params 2, eflags: 0x2 linked
// Checksum 0xdf404a6, Offset: 0xa0
// Size: 0x84
function setup(*localclientnum, var_582cb7bb) {
    if (!item_world_util::use_item_spawns()) {
        return;
    }
    level.var_8c615e33 = [];
    function_1f4464c0(var_582cb7bb);
    /#
        println("<unknown string>" + var_582cb7bb);
    #/
    namespace_65181344::setup_groups();
}

