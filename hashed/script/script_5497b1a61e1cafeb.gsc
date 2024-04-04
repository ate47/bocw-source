// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace high_value_target;

// Namespace high_value_target/high_value_target
// Params 0, eflags: 0x5
// Checksum 0xcff4ff14, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"high_value_target", &preinit, undefined, undefined, undefined);
}

// Namespace high_value_target/high_value_target
// Params 0, eflags: 0x6 linked
// Checksum 0x9f5a0a62, Offset: 0x108
// Size: 0x3c
function private preinit() {
    clientfield::register("allplayers", "high_value_target", 1, 1, "int", undefined, 0, 0);
}

