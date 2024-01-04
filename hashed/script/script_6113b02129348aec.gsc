// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\serverfield_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_9b5aa273;

// Namespace namespace_9b5aa273/namespace_9b5aa273
// Params 0, eflags: 0x5
// Checksum 0x81ce4803, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_2b0f887705d6f3e", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_9b5aa273/namespace_9b5aa273
// Params 0, eflags: 0x6 linked
// Checksum 0xd1708f6c, Offset: 0x100
// Size: 0x2c
function private function_70a657d8() {
    serverfield::register("can_show_hold_breath_hint", 1, 1, "int");
}

