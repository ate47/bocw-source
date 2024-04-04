// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;

#namespace namespace_85b89288;

// Namespace namespace_85b89288/namespace_85b89288
// Params 0, eflags: 0x5
// Checksum 0xea85a3fd, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_621e37612030164f", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_85b89288/namespace_85b89288
// Params 0, eflags: 0x6 linked
// Checksum 0x9a11cd68, Offset: 0xe0
// Size: 0x44
function private preinit() {
    if (is_true(getgametypesetting(#"hash_1e1a5ebefe2772ba"))) {
        level.var_53bc31ad = 1;
    }
}

