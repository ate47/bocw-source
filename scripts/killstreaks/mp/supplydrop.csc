// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\killstreaks\supplydrop_shared.csc;

#namespace supplydrop;

// Namespace supplydrop/supplydrop
// Params 0, eflags: 0x5
// Checksum 0xaf47a2e4, Offset: 0x90
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"supplydrop", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace supplydrop/supplydrop
// Params 0, eflags: 0x6 linked
// Checksum 0x98b8c2b9, Offset: 0xe0
// Size: 0x14
function private preinit() {
    init_shared();
}

