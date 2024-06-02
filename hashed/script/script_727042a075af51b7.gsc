// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\item_world.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_7da6f8ca;

// Namespace namespace_7da6f8ca/namespace_7da6f8ca
// Params 0, eflags: 0x5
// Checksum 0x3e49e344, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_40a4f03bb2983ee3", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_7da6f8ca/namespace_7da6f8ca
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0xe8
// Size: 0x4
function private preinit() {
    
}

// Namespace namespace_7da6f8ca/namespace_7da6f8ca
// Params 1, eflags: 0x0
// Checksum 0x7079633, Offset: 0xf8
// Size: 0x102
function function_6ee35a0a(rarity) {
    switch (rarity) {
    case #"resource":
        return #"hash_20b3d352fb23155c";
    case #"common":
        return #"hash_1c62f1903d03705a";
    case #"rare":
        return #"hash_3e3f86ff3fc6055";
    case #"epic":
        return #"hash_6c7840c9ca34f2a3";
    case #"legendary":
        return #"hash_7f4c941a9564c78f";
    case #"ultra":
        return #"hash_3dad79ca7ca879b5";
    default:
        return #"hash_20b3d352fb23155c";
    }
}

