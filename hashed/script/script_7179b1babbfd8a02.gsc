// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.csc;
#using scripts\weapons\trophy_system.csc;
#using scripts\core_common\system_shared.csc;

#namespace trophy_system;

// Namespace trophy_system/trophy_system_spy
// Params 0, eflags: 0x5
// Checksum 0xafc95621, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"trophy_system_spy", &preinit, undefined, undefined, undefined);
}

// Namespace trophy_system/trophy_system_spy
// Params 0, eflags: 0x4
// Checksum 0xc1c1d54b, Offset: 0x100
// Size: 0xb4
function private preinit() {
    clientfield::register("missile", "" + #"hash_65fa2e5290be670e", 1, 1, "int", &function_a485f3cf, 0, 0);
    clientfield::register("missile", "" + #"hash_19f94fb667823a5a", 1, 7, "float", &function_799a68b6, 0, 0);
}

