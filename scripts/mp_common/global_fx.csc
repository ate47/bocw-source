// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;

#namespace global_fx;

// Namespace global_fx/global_fx
// Params 0, eflags: 0x5
// Checksum 0x7956c6ac, Offset: 0xa0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"global_fx", &preinit, &main, undefined, undefined);
}

// Namespace global_fx/global_fx
// Params 0, eflags: 0x6 linked
// Checksum 0x600d7bf5, Offset: 0xf8
// Size: 0xe4
function private preinit() {
    if (isdefined(getgametypesetting(#"hash_7e6ef41f5c3db213")) ? getgametypesetting(#"hash_7e6ef41f5c3db213") : 0) {
        function_414dfa79(#"hash_d1294b74c50a865", #"hash_d1294b74c50a865");
        function_5aeb01e6(#"hash_659a504a8160a9ac", #"hash_659a504a8160a9ac");
        setsoundcontext("ltm", "paintball");
        level.var_87c6c648 = 1;
    }
}

// Namespace global_fx/global_fx
// Params 0, eflags: 0x2 linked
// Checksum 0xe304d078, Offset: 0x1e8
// Size: 0x34
function main() {
    function_94923bb0();
    function_41acd565();
    check_for_wind_override();
}

// Namespace global_fx/global_fx
// Params 0, eflags: 0x2 linked
// Checksum 0xe405eced, Offset: 0x228
// Size: 0x2c
function function_94923bb0() {
    function_3385d776(#"hash_14608c97d9d192a1", -1);
}

// Namespace global_fx/global_fx
// Params 0, eflags: 0x2 linked
// Checksum 0xa8e6b9e0, Offset: 0x260
// Size: 0x2c
function function_41acd565() {
    function_3385d776(#"hash_46067e7dfe6ba0dd", -1);
}

// Namespace global_fx/global_fx
// Params 0, eflags: 0x2 linked
// Checksum 0xc4508e79, Offset: 0x298
// Size: 0x28
function check_for_wind_override() {
    if (isdefined(level.custom_wind_callback)) {
        level thread [[ level.custom_wind_callback ]]();
    }
}

