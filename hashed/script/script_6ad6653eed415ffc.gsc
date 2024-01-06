// Atian COD Tools GSC CW decompiler test
#using script_dc59353021baee1;
#using script_746267f0669c40ae;
#using script_683a55734f15d50e;
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_6ee927dd468f79b0;
#using script_49f7fe670ba9398e;
#using script_226eec8e867ca977;
#using script_4a247ed69e84b56f;
#using script_16910aff9d97c520;
#using script_17662ff15f00e748;
#using script_79315a6ccf4fce3d;
#using script_60c9f7551ce6c823;
#using script_2050c3ca1efa3116;
#using script_634ae70c663d1cc9;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
#using script_50fca1a24ae351;
#using script_48e04a393ec6d855;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_40bb01c9;

// Namespace namespace_40bb01c9/namespace_40bb01c9
// Params 0, eflags: 0x2 linked
// Checksum 0xdb9d9df4, Offset: 0x188
// Size: 0x16
function init() {
    level.doa.var_f5a14209 = [];
}

// Namespace namespace_40bb01c9/namespace_40bb01c9
// Params 0, eflags: 0x2 linked
// Checksum 0x110bd332, Offset: 0x1a8
// Size: 0x2c
function function_f69dda63() {
    namespace_268747c0::function_96e2f261(level.doa.var_f5a14209, 1);
}

// Namespace namespace_40bb01c9/namespace_40bb01c9
// Params 0, eflags: 0x2 linked
// Checksum 0xbb0514ef, Offset: 0x1e0
// Size: 0xbe
function function_ddb3fb8f() {
    foreach (trap in level.doa.var_f5a14209) {
        trap notify(#"hash_3e251384a5400dce", {#var_760a0807:1});
    }
    level.doa.var_f5a14209 = [];
}

