// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\math_shared.gsc;
#using script_35ae72be7b4fec10;

#namespace namespace_c8e236da;

// Namespace namespace_c8e236da/namespace_c8e236da
// Params 1, eflags: 0x2 linked
// Checksum 0xf00f0343, Offset: 0xa0
// Size: 0x194
function function_ebf737f8(var_e11b5b56) {
    if (!isdefined(level.var_f9c1d7d5)) {
        level.var_f9c1d7d5 = [];
    }
    level.var_f9c1d7d5[level.var_f9c1d7d5.size] = var_e11b5b56;
    if (!namespace_61e6d095::exists(#"hash_72cc4740fa4d3da3")) {
        namespace_61e6d095::create(#"hash_72cc4740fa4d3da3", #"hash_33da613c2715b7bb");
        namespace_61e6d095::function_46df0bc7(#"hash_72cc4740fa4d3da3", 999);
        namespace_61e6d095::function_d3c3e5c3(#"hash_72cc4740fa4d3da3", [#"interactive_map", #"dialog_tree", #"computer"]);
    }
    namespace_61e6d095::function_9ade1d9b(#"hash_72cc4740fa4d3da3", #"hash_732287e2565c2a79", 1, 1);
    namespace_61e6d095::function_f2a9266(#"hash_72cc4740fa4d3da3", level.var_f9c1d7d5.size, "ContentLine", var_e11b5b56, undefined, 1);
}

// Namespace namespace_c8e236da/namespace_c8e236da
// Params 2, eflags: 0x2 linked
// Checksum 0xe2524121, Offset: 0x240
// Size: 0xf4
function function_abdf062(var_5a95d718, var_144abf82) {
    if (isdefined(level.var_f9c1d7d5)) {
        var_5a95d718 = math::clamp(var_5a95d718, 0, level.var_f9c1d7d5.size - 1);
        arrayinsert(level.var_f9c1d7d5, var_144abf82, var_5a95d718);
        for (i = var_5a95d718; i < level.var_f9c1d7d5.size; i++) {
            namespace_61e6d095::function_f2a9266(#"hash_72cc4740fa4d3da3", i + 1, "ContentLine", level.var_f9c1d7d5[i], undefined, 1);
        }
        return;
    }
    function_ebf737f8(var_144abf82);
}

// Namespace namespace_c8e236da/namespace_c8e236da
// Params 2, eflags: 0x2 linked
// Checksum 0xc6f6c5de, Offset: 0x340
// Size: 0x9c
function function_bf642b41(var_88e62a80, var_6262df45) {
    if (isdefined(var_6262df45)) {
        namespace_61e6d095::function_f2a9266(#"hash_72cc4740fa4d3da3", var_88e62a80 + 1, "ContentLine", var_6262df45);
        return;
    }
    namespace_61e6d095::function_7239e030(#"hash_72cc4740fa4d3da3", var_88e62a80 + 1);
    arrayremoveindex(level.var_f9c1d7d5, var_88e62a80);
}

// Namespace namespace_c8e236da/namespace_c8e236da
// Params 1, eflags: 0x2 linked
// Checksum 0x3ca2e824, Offset: 0x3e8
// Size: 0x3a
function function_295a2a9e(var_e11b5b56) {
    if (!isdefined(level.var_f9c1d7d5)) {
        return 0;
    }
    return isinarray(level.var_f9c1d7d5, var_e11b5b56);
}

// Namespace namespace_c8e236da/namespace_c8e236da
// Params 2, eflags: 0x2 linked
// Checksum 0xa30a1f8d, Offset: 0x430
// Size: 0x64
function function_f7362969(var_a5a2c782, var_541423e6 = 1) {
    if (var_541423e6) {
        namespace_61e6d095::function_df0d7a85(var_a5a2c782, #"hash_72cc4740fa4d3da3");
        return;
    }
    namespace_61e6d095::function_f96376c5(var_a5a2c782);
}

// Namespace namespace_c8e236da/namespace_c8e236da
// Params 0, eflags: 0x2 linked
// Checksum 0xaa1ed1db, Offset: 0x4a0
// Size: 0x9c
function clearlist() {
    if (namespace_61e6d095::exists(#"hash_72cc4740fa4d3da3")) {
        if (level.var_f9c1d7d5.size > 0) {
            for (i = 1; i < level.var_f9c1d7d5.size + 1; i++) {
                namespace_61e6d095::function_f2a9266(#"hash_72cc4740fa4d3da3", i, "ContentLine", #"");
            }
        }
    }
}

// Namespace namespace_c8e236da/namespace_c8e236da
// Params 0, eflags: 0x2 linked
// Checksum 0xaa9b3767, Offset: 0x548
// Size: 0x64
function removelist() {
    clearlist();
    if (namespace_61e6d095::exists(#"hash_72cc4740fa4d3da3")) {
        level.var_f9c1d7d5 = undefined;
        namespace_61e6d095::remove(#"hash_72cc4740fa4d3da3");
    }
}

