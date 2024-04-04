// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace perks;

// Namespace perks/perks
// Params 0, eflags: 0x5
// Checksum 0xc865259a, Offset: 0xf8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_2af3fdb587243686", &preinit, undefined, undefined, undefined);
}

// Namespace perks/perks
// Params 0, eflags: 0x6 linked
// Checksum 0x582b502d, Offset: 0x140
// Size: 0x114
function private preinit() {
    clientfield::register_clientuimodel("hudItems.ammoCooldowns.equipment.tactical", #"hash_6f4b11a0bee9b73d", [#"hash_2f126bd99a74de8b", #"equipment", #"tactical"], 1, 5, "float", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.ammoCooldowns.equipment.lethal", #"hash_6f4b11a0bee9b73d", [#"hash_2f126bd99a74de8b", #"equipment", #"lethal"], 1, 5, "float", undefined, 0, 0);
}

