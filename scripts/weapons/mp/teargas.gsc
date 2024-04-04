// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\teargas.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\globallogic\globallogic_score.gsc;

#namespace namespace_8a3384f2;

// Namespace namespace_8a3384f2/namespace_8a3384f2
// Params 0, eflags: 0x5
// Checksum 0x6867d33c, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_2d15b1979434a7ae", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_8a3384f2/namespace_8a3384f2
// Params 0, eflags: 0x6 linked
// Checksum 0x936fa071, Offset: 0xe8
// Size: 0x9c
function private preinit() {
    init_shared();
    level.var_c7b2d0ab = getweapon(#"tear_gas");
    globallogic_score::register_kill_callback(level.var_c7b2d0ab, &function_8f5e1a77, 1);
    globallogic_score::function_c1e9b86b(level.var_c7b2d0ab, &function_6703177e);
}

// Namespace namespace_8a3384f2/namespace_8a3384f2
// Params 1, eflags: 0x2 linked
// Checksum 0x2aa4fca6, Offset: 0x190
// Size: 0x13c
function function_6703177e(params) {
    attacker = params.attacker;
    attacker stats::function_dad108fa(#"hash_38b93f97da20f2e1", 1);
    attacker stats::function_dad108fa(#"hash_38b93c97da20edc8", 1);
    attacker stats::function_dad108fa(#"hash_6e9f9d0d3ae59765", 1);
    attacker stats::function_dad108fa(#"hash_69a54125cf436285", 1);
    attacker stats::function_dad108fa(#"hash_24b8c6ce81fdead6", 1);
    attacker stats::function_dad108fa(#"hash_24b8c5ce81fde923", 1);
    attacker stats::function_bcf9602(#"hash_5a979e436e74441", 1, #"hash_6abe83944d701459");
}

// Namespace namespace_8a3384f2/namespace_8a3384f2
// Params 5, eflags: 0x2 linked
// Checksum 0x7c94394c, Offset: 0x2d8
// Size: 0x3c
function function_8f5e1a77(*attacker, *victim, *weapon, attackerweapon, *meansofdeath) {
    return meansofdeath === level.var_c7b2d0ab;
}

