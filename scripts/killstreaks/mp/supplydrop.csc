#using scripts\core_common\system_shared;
#using scripts\killstreaks\supplydrop_shared;

#namespace supplydrop;

// Namespace supplydrop/supplydrop
// Params 0, eflags: 0x5
// Checksum 0xaf47a2e4, Offset: 0x90
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"supplydrop", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace supplydrop/supplydrop
// Params 0, eflags: 0x4
// Checksum 0x98b8c2b9, Offset: 0xe0
// Size: 0x14
function private preinit() {
    init_shared();
}

