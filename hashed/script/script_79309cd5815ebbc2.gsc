// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_89fd9b3e;

// Namespace namespace_89fd9b3e/namespace_89fd9b3e
// Params 0, eflags: 0x5
// Checksum 0xb96a6957, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_75aa82b3ae89f54e", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_89fd9b3e/namespace_89fd9b3e
// Params 0, eflags: 0x4
// Checksum 0x8a256674, Offset: 0xe8
// Size: 0x38
function private preinit() {
    if (util::get_game_type() === #"hash_75aa82b3ae89f54e") {
        level.var_612d6a21 = 1;
    }
}

