// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace abilities;

// Namespace abilities/abilities
// Params 0, eflags: 0x5
// Checksum 0xb2bfe38b, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_4652e389efb9751f", &preinit, undefined, undefined, undefined);
}

// Namespace abilities/abilities
// Params 0, eflags: 0x6 linked
// Checksum 0xd4f87feb, Offset: 0x100
// Size: 0x54
function private preinit() {
    clientfield::register_clientuimodel("playerAbilities.inRange", #"hash_3107ca3e77102da5", #"inrange", 1, 1, "int", undefined, 0, 0);
}

