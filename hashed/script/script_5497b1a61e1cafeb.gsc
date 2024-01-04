// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_b0275f02;

// Namespace namespace_b0275f02/namespace_b0275f02
// Params 0, eflags: 0x5
// Checksum 0xcff4ff14, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_4842d3c0a67b6871", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_b0275f02/namespace_b0275f02
// Params 0, eflags: 0x6 linked
// Checksum 0x9f5a0a62, Offset: 0x108
// Size: 0x3c
function private function_70a657d8() {
    clientfield::register("allplayers", "high_value_target", 1, 1, "int", undefined, 0, 0);
}

