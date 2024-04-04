// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_a2fc8c70;

// Namespace namespace_a2fc8c70/namespace_a2fc8c70
// Params 0, eflags: 0x5
// Checksum 0x38563e5e, Offset: 0x158
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_35d5e49c19d9cf09", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_a2fc8c70/namespace_a2fc8c70
// Params 0, eflags: 0x4
// Checksum 0xa44357cb, Offset: 0x1a0
// Size: 0x4c
function private preinit() {
    if (is_true(getgametypesetting(#"hash_cd096e90260a26b"))) {
        level function_504792();
    }
}

// Namespace namespace_a2fc8c70/namespace_a2fc8c70
// Params 0, eflags: 0x0
// Checksum 0x26af04d6, Offset: 0x1f8
// Size: 0xbc
function function_504792() {
    level._effect[#"hash_11fd5c794ccab4e5"] = "zombie/fx9_onslaught_orb_unstable";
    level._effect[#"soul_fx"] = "maps/zm_red/fx8_soul_red";
    level._effect[#"hash_308d15c5b36ba48a"] = "maps/zm_red/fx8_soul_charge_red";
    level._effect[#"hash_d7a655f41aa4b03"] = "zombie/fx9_onslaught_spawn_lg_unstable";
    level._effect[#"hash_55ab97f3dc5e7ba2"] = "zombie/fx9_onslaught_orb_unstable_collapse";
    level.var_de8cc106 = #"hash_6a78a4f5119b8978";
}

