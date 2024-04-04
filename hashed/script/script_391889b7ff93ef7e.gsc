// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\fx_character.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace namespace_9f3d3e9;

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 0, eflags: 0x5
// Checksum 0xc834af3c, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"wz_ai_avogadro", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 0, eflags: 0x2 linked
// Checksum 0x87380bd0, Offset: 0xf0
// Size: 0x34
function preinit() {
    ai::add_archetype_spawn_function(#"avogadro", &function_1caf705e);
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x6 linked
// Checksum 0xf99ceef9, Offset: 0x130
// Size: 0xc
function private function_1caf705e(*localclientnum) {
    
}

