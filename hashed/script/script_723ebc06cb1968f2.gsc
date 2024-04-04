// Atian COD Tools GSC CW decompiler test
#using script_723ebc06cb1968f2;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_c46118a7;

// Namespace namespace_c46118a7/namespace_c46118a7
// Params 0, eflags: 0x5
// Checksum 0x3d2ca517, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_125fc0c0065c7dea", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_c46118a7/namespace_c46118a7
// Params 0, eflags: 0x4
// Checksum 0x83ed48b8, Offset: 0xf0
// Size: 0x38
function private preinit() {
    if (util::get_game_type() === #"hash_125fc0c0065c7dea") {
        level.var_e35c191f = 1;
    }
}

