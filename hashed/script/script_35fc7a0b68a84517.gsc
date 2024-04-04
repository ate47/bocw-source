// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_e6fea84d;

// Namespace namespace_e6fea84d/namespace_e6fea84d
// Params 0, eflags: 0x5
// Checksum 0x29abf4db, Offset: 0x100
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_1aecd78b7244ff81", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_e6fea84d/namespace_e6fea84d
// Params 0, eflags: 0x4
// Checksum 0x71c7a430, Offset: 0x148
// Size: 0x104
function private preinit() {
    if (util::get_game_type() === #"hash_1aecd78b7244ff81") {
        clientfield::register_clientuimodel("hudItems.onslaught.lottoloadouts_rarity", #"hash_6f4b11a0bee9b73d", [#"onslaught", #"hash_19c18e491f34cf06"], 1, 2, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("hudItems.onslaught.lottoloadouts_atttype", #"hash_6f4b11a0bee9b73d", [#"onslaught", #"hash_5b02144a2c38c4f8"], 1, 4, "int", undefined, 0, 0);
    }
}

