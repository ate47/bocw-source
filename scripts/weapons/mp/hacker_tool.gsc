// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\hacker_tool.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace hacker_tool;

// Namespace hacker_tool/hacker_tool
// Params 0, eflags: 0x5
// Checksum 0x5464af37, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hacker_tool", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace hacker_tool/hacker_tool
// Params 0, eflags: 0x6 linked
// Checksum 0x98b8c2b9, Offset: 0xd8
// Size: 0x14
function private function_70a657d8() {
    init_shared();
}

