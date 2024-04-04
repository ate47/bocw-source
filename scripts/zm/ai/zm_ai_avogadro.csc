// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\fx_character.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace zm_ai_avogadro;

// Namespace zm_ai_avogadro/zm_ai_avogadro
// Params 0, eflags: 0x5
// Checksum 0xf37f215f, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_ai_avogadro", &preinit, undefined, undefined, undefined);
}

// Namespace zm_ai_avogadro/zm_ai_avogadro
// Params 0, eflags: 0x4
// Checksum 0x87380bd0, Offset: 0xe8
// Size: 0x34
function private preinit() {
    ai::add_archetype_spawn_function(#"avogadro", &function_1caf705e);
}

// Namespace zm_ai_avogadro/zm_ai_avogadro
// Params 1, eflags: 0x4
// Checksum 0xf99ceef9, Offset: 0x128
// Size: 0xc
function private function_1caf705e(*localclientnum) {
    
}

