// Atian COD Tools GSC CW decompiler test
#using script_7a8059ca02b7b09e;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_341c57b3;

// Namespace namespace_341c57b3/namespace_341c57b3
// Params 0, eflags: 0x5
// Checksum 0x1423ddae, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_53528dbbf6cd15c4", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_341c57b3/namespace_341c57b3
// Params 0, eflags: 0x6 linked
// Checksum 0x5988303c, Offset: 0xd8
// Size: 0x9c
function private function_70a657d8() {
    if (isdefined(game)) {
        if (!isdefined(game.var_341c57b3)) {
            game.var_341c57b3 = {};
        }
        if (!isdefined(game.var_341c57b3.player_count)) {
            game.var_341c57b3.player_count = 0;
        }
        if (!isdefined(game.var_341c57b3.life_count)) {
            game.var_341c57b3.life_count = 0;
        }
    } else {
        /#
            println("<unknown string>");
        #/
    }
}

