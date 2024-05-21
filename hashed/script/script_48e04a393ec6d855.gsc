// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;

#namespace namespace_c9c45ed8;

// Namespace namespace_c9c45ed8/namespace_c9c45ed8
// Params 0, eflags: 0x2 linked
// Checksum 0x12ee0581, Offset: 0xf8
// Size: 0x440
function init() {
    level.doa.var_4bd98f7c = array({#name:"invalid", #var_dd490566:1, #type:-1}, {#name:"jungle_1_dungeon1", #locstring:#"hash_3419b70eb1cb87d3", #policy:0, #type:0}, {#name:"jungle_1_dungeon2", #locstring:#"hash_3419b80eb1cb8986", #policy:0, #type:1}, {#name:"jungle_1_dungeon3", #locstring:#"hash_3419b90eb1cb8b39", #policy:0, #type:2}, {#name:"cellar", #locstring:undefined, #policy:0, #var_dd490566:1, #type:-1}, {#name:"jungle_1_dungeon4", #locstring:#"hash_3419ba0eb1cb8cec", #policy:0, #type:3});
    level.doa.var_dfcf49f8 = 0;
    foreach (dungeon in level.doa.var_4bd98f7c) {
        if (dungeon.type == -1) {
            continue;
        }
        level.doa.var_dfcf49f8 |= 1 << dungeon.type;
    }
    /#
        var_663588d = "<unknown string>";
        foreach (dungeon in level.doa.var_4bd98f7c) {
            if (is_true(dungeon.var_dd490566)) {
                continue;
            }
            name = function_9e72a96(dungeon.name);
            locstr = function_9e72a96(dungeon.locstring);
            cmdline = "<unknown string>" + name + "<unknown string>";
            util::add_devgui(var_663588d + name, cmdline);
        }
    #/
}

