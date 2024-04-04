// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace archetype_catalyst;

// Namespace archetype_catalyst/archetype_catalyst
// Params 0, eflags: 0x5
// Checksum 0x5ab89e9, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"catalyst", &preinit, undefined, undefined, undefined);
}

// Namespace archetype_catalyst/archetype_catalyst
// Params 0, eflags: 0x1
// Checksum 0x80f724d1, Offset: 0xf0
// Size: 0x4
function autoexec precache() {
    
}

// Namespace archetype_catalyst/archetype_catalyst
// Params 0, eflags: 0x6 linked
// Checksum 0x3c8c2d06, Offset: 0x100
// Size: 0x34
function private preinit() {
    ai::add_archetype_spawn_function(#"catalyst", &function_5608540a);
}

// Namespace archetype_catalyst/archetype_catalyst
// Params 1, eflags: 0x6 linked
// Checksum 0x7e568149, Offset: 0x140
// Size: 0x3c
function private function_5608540a(localclientnum) {
    self mapshaderconstant(localclientnum, 0, "scriptVector2", 1, 0, 0, 1);
}

