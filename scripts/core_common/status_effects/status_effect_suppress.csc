// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\serverfield_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace status_effect_suppress;

// Namespace status_effect_suppress/status_effect_suppress
// Params 0, eflags: 0x5
// Checksum 0x938ec4ad, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"status_effect_suppress", &preinit, undefined, undefined, undefined);
}

// Namespace status_effect_suppress/status_effect_suppress
// Params 0, eflags: 0x6 linked
// Checksum 0x44cf26c7, Offset: 0x100
// Size: 0x2c
function private preinit() {
    serverfield::register("status_effect_suppress_field", 1, 5, "int");
}

