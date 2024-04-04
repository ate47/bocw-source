// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_a2fc8c70;

// Namespace namespace_a2fc8c70/namespace_a2fc8c70
// Params 0, eflags: 0x5
// Checksum 0x16ada10, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_35d5e49c19d9cf09", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_a2fc8c70/namespace_a2fc8c70
// Params 0, eflags: 0x4
// Checksum 0x2b86d3f5, Offset: 0x110
// Size: 0x54
function private preinit() {
    if (is_true(getgametypesetting(#"hash_cd096e90260a26b"))) {
        level._effect[#"hash_5fa0154f4b01ba02"] = "zombie/fx9_onslaught_orb_unstable_collapse";
    }
}

