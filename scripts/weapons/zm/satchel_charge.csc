// Atian COD Tools GSC CW decompiler test
#using script_71b355b2496e3c6d;
#using scripts\weapons\satchel_charge.csc;
#using scripts\core_common\system_shared.csc;

#namespace satchel_charge;

// Namespace satchel_charge/satchel_charge
// Params 0, eflags: 0x5
// Checksum 0x6d960a9d, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"satchel_charge", &preinit, undefined, undefined, undefined);
}

// Namespace satchel_charge/satchel_charge
// Params 0, eflags: 0x6 linked
// Checksum 0x214908de, Offset: 0xe0
// Size: 0x24
function private preinit() {
    init_shared();
    namespace_cc411409::preinit();
}

