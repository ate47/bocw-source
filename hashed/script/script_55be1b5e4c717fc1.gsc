// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\cp_common\gamedifficulty.gsc;

#namespace gadget_health_regen;

// Namespace gadget_health_regen/gadget_health_regen
// Params 0, eflags: 0x5
// Checksum 0xac1baf2e, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_282f48d36d893e20", &preinit, undefined, undefined, undefined);
}

// Namespace gadget_health_regen/gadget_health_regen
// Params 0, eflags: 0x6 linked
// Checksum 0x59059c20, Offset: 0xd8
// Size: 0x34
function private preinit() {
    level.var_f71267dc = &function_71343595;
    level.var_11e731d7 = &function_3211c56a;
}

// Namespace gadget_health_regen/gadget_health_regen
// Params 2, eflags: 0x2 linked
// Checksum 0x82180c7a, Offset: 0x118
// Size: 0x42
function function_71343595(*var_b16fafc9, *weapon) {
    return int(gamedifficulty::function_b5b7d60e() * 1000);
}

// Namespace gadget_health_regen/gadget_health_regen
// Params 1, eflags: 0x2 linked
// Checksum 0x292be9cb, Offset: 0x168
// Size: 0x3a
function function_3211c56a(*var_337562a8) {
    return int(gamedifficulty::function_5151f9d0() * 1000);
}

