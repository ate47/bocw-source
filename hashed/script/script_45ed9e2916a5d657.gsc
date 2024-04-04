// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\fx_character.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace namespace_cd6bd9f;

// Namespace namespace_cd6bd9f/namespace_cd6bd9f
// Params 0, eflags: 0x5
// Checksum 0xe3e48a5f, Offset: 0xd8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_54149d856843e31a", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_cd6bd9f/namespace_cd6bd9f
// Params 0, eflags: 0x2 linked
// Checksum 0x2b639635, Offset: 0x120
// Size: 0x34
function preinit() {
    ai::add_archetype_spawn_function(#"hash_7c0d83ac1e845ac2", &function_7ec99c76);
}

// Namespace namespace_cd6bd9f/namespace_cd6bd9f
// Params 1, eflags: 0x6 linked
// Checksum 0x549299f0, Offset: 0x160
// Size: 0x5c
function private function_7ec99c76(localclientnum) {
    playfx(localclientnum, "zombie/fx_portal_keeper_spawn_burst_zod_zmb", self.origin, anglestoforward((0, 0, 0)), anglestoup((0, 0, 0)));
}

