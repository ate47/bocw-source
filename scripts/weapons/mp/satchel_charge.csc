// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\satchel_charge.csc;
#using scripts\core_common\system_shared.csc;

#namespace satchel_charge;

// Namespace satchel_charge/satchel_charge
// Params 0, eflags: 0x5
// Checksum 0x6d960a9d, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"satchel_charge", &preinit, undefined, undefined, undefined);
}

// Namespace satchel_charge/satchel_charge
// Params 0, eflags: 0x6 linked
// Checksum 0x98b8c2b9, Offset: 0xd8
// Size: 0x14
function private preinit() {
    init_shared();
}

