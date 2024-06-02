// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\territory_util.csc;

#namespace namespace_99c84a33;

// Namespace namespace_99c84a33/namespace_99c84a33
// Params 3, eflags: 0x0
// Checksum 0x722b41bc, Offset: 0x98
// Size: 0x8c
function function_99652b58(name, index, *team) {
    cameras = getentarray(0, index, "targetname");
    if (cameras.size) {
        addobjectivecamerapoint(index, team, #"none", cameras[0].origin, cameras[0].angles);
    }
}

// Namespace namespace_99c84a33/namespace_99c84a33
// Params 3, eflags: 0x2 linked
// Checksum 0xa61f3592, Offset: 0x130
// Size: 0x8c
function function_bb3bbc2c(name, index, *team) {
    cameras = territory::function_5c7345a3(index, "targetname");
    if (cameras.size) {
        addobjectivecamerapoint(index, team, #"none", cameras[0].origin, cameras[0].angles);
    }
}

