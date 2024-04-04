// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_61e6d095;

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x5
// Checksum 0x71db657e, Offset: 0x110
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_7f2a4dd4a17f2f59", &preload, undefined, undefined, undefined);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x6 linked
// Checksum 0x6b3ce8cb, Offset: 0x158
// Size: 0x34
function private preload() {
    callback::add_callback(#"on_player_spawned", &on_player_spawn);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x2 linked
// Checksum 0xd98161d0, Offset: 0x198
// Size: 0x210
function on_player_spawn(*localclientnum) {
    self endon(#"death");
    inputs = [];
    inputs[#"ui_confirm"] = "confirm";
    inputs[#"hash_3c27402259e4c18e"] = "cancel";
    inputs[#"hash_278b9a3955f6e5a"] = "alt1";
    inputs[#"hash_278b8a3955f6ca7"] = "alt2";
    inputs[#"ui_navup"] = "navup";
    inputs[#"ui_navdown"] = "navdown";
    inputs[#"ui_navleft"] = "navleft";
    inputs[#"ui_navright"] = "navright";
    inputs[#"ui_prevtab"] = "prevtab";
    inputs[#"ui_nexttab"] = "nexttab";
    inputs[#"hash_5686e6f2a8315663"] = "backspace";
    foreach (key, value in inputs) {
        self flag::clear(key);
    }
    while (true) {
        waitresult = level waittill(#"hash_74c593238b792d40");
        self childthread flag::set_for_time(0.05, waitresult.param1);
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0x95aecbf3, Offset: 0x3b0
// Size: 0x22
function function_affb1af1() {
    return self flag::get(#"ui_confirm");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0x5b902006, Offset: 0x3e0
// Size: 0x22
function function_57fbd346() {
    return self flag::get(#"hash_3c27402259e4c18e");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0x9cf3bd48, Offset: 0x410
// Size: 0x22
function function_e4d62f9a() {
    return self flag::get(#"hash_278b9a3955f6e5a");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0x10ddbc8d, Offset: 0x440
// Size: 0x22
function function_728aec47() {
    return self flag::get(#"hash_278b8a3955f6ca7");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0x3676fe52, Offset: 0x470
// Size: 0x22
function function_aef1e8c3() {
    return self flag::get(#"ui_navup");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0x7900061b, Offset: 0x4a0
// Size: 0x22
function function_9975a94d() {
    return self flag::get(#"ui_navdown");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0xa62506fa, Offset: 0x4d0
// Size: 0x22
function function_c2d8a326() {
    return self flag::get(#"ui_navleft");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0x11214767, Offset: 0x500
// Size: 0x22
function function_3d680c10() {
    return self flag::get(#"ui_navright");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0x292ec35b, Offset: 0x530
// Size: 0x22
function function_d0beaa6e() {
    return self flag::get(#"ui_prevtab");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0x950b774a, Offset: 0x560
// Size: 0x22
function function_1e9035e9() {
    return self flag::get(#"ui_nexttab");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0xc3b4b8de, Offset: 0x590
// Size: 0x22
function function_57799116() {
    return self flag::get(#"hash_5686e6f2a8315663");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0xcc2ff21c, Offset: 0x5c0
// Size: 0x32
function function_9c365c3b() {
    return function_cf2348e7(function_90d058e8(#"hash_15588744d5c5bb0f"));
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0x7ff9db0c, Offset: 0x600
// Size: 0x32
function function_6cbc939b() {
    return function_cf2348e7(function_90d058e8(#"hash_730cd94f8fe3da16"));
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x6 linked
// Checksum 0xcdcdf6a0, Offset: 0x640
// Size: 0x14c
function private function_cf2348e7(model) {
    var_b0672ef2 = getuimodel(model, #"degrees");
    var_9487f37 = getuimodel(model, #"length");
    var_f76e6210 = getuimodel(model, #"x");
    var_f1cc2bf9 = getuimodel(model, #"y");
    return {#degrees:getuimodelvalue(var_b0672ef2), #length:getuimodelvalue(var_9487f37), #x:getuimodelvalue(var_f76e6210), #y:getuimodelvalue(var_f1cc2bf9)};
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0xeded9713, Offset: 0x798
// Size: 0x32
function function_f2b01a83() {
    return function_c63f7472(function_90d058e8(#"hash_39502e607f052b14"));
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0x68c3fcd, Offset: 0x7d8
// Size: 0x32
function function_f540dc93() {
    return function_c63f7472(function_90d058e8(#"hash_25c2b6d37ccf0023"));
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x6 linked
// Checksum 0xce4c8440, Offset: 0x818
// Size: 0x4a
function private function_c63f7472(model) {
    var_68abddbb = getuimodel(model, #"amount");
    return getuimodelvalue(var_68abddbb);
}

