// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;

#namespace namespace_c9c45ed8;

// Namespace namespace_c9c45ed8/namespace_c9c45ed8
// Params 0, eflags: 0x2 linked
// Checksum 0x12ee0581, Offset: 0xf8
// Size: 0x440
function init() {
    level.doa.var_4bd98f7c = array({#type:-1, #var_dd490566:1, #name:"invalid"}, {#type:0, #policy:0, #locstring:#"hash_3419b70eb1cb87d3", #name:"jungle_1_dungeon1"}, {#type:1, #policy:0, #locstring:#"hash_3419b80eb1cb8986", #name:"jungle_1_dungeon2"}, {#type:2, #policy:0, #locstring:#"hash_3419b90eb1cb8b39", #name:"jungle_1_dungeon3"}, {#type:-1, #var_dd490566:1, #policy:0, #locstring:undefined, #name:"cellar"}, {#type:3, #policy:0, #locstring:#"hash_3419ba0eb1cb8cec", #name:"jungle_1_dungeon4"});
    level.doa.var_dfcf49f8 = 0;
    foreach (dungeon in level.doa.var_4bd98f7c) {
        if (dungeon.type == -1) {
            continue;
        }
        level.doa.var_dfcf49f8 = level.doa.var_dfcf49f8 | 1 << dungeon.type;
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
            add_devgui(var_663588d + name, cmdline);
        }
    #/
}

