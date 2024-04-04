// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;

#namespace global_fx;

// Namespace global_fx/global_fx
// Params 0, eflags: 0x5
// Checksum 0x2a6fa748, Offset: 0x90
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"global_fx", &preinit, &main, undefined, undefined);
}

// Namespace global_fx/global_fx
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0xe8
// Size: 0x4
function private preinit() {
    
}

// Namespace global_fx/global_fx
// Params 0, eflags: 0x2 linked
// Checksum 0x480dcd99, Offset: 0xf8
// Size: 0x24
function main() {
    function_41acd565();
    check_for_wind_override();
}

// Namespace global_fx/global_fx
// Params 0, eflags: 0x2 linked
// Checksum 0x699acf7d, Offset: 0x128
// Size: 0x2c
function function_41acd565() {
    function_3385d776(#"hash_46067e7dfe6ba0dd", -1);
}

// Namespace global_fx/global_fx
// Params 0, eflags: 0x2 linked
// Checksum 0x43d1d9ea, Offset: 0x160
// Size: 0x28
function check_for_wind_override() {
    if (isdefined(level.custom_wind_callback)) {
        level thread [[ level.custom_wind_callback ]]();
    }
}

