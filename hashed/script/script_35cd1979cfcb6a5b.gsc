#using script_13114d8a31c6152a;
#using script_35ae72be7b4fec10;
#using script_4937c6974f43bb71;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\system_shared;

#namespace namespace_2872eab3;

// Namespace namespace_2872eab3/namespace_2872eab3
// Params 0, eflags: 0x5
// Checksum 0xc71452d3, Offset: 0x188
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_233c0e90ddf8f839", &_preload, undefined, undefined, undefined);
}

// Namespace namespace_2872eab3/namespace_2872eab3
// Params 0, eflags: 0x4
// Checksum 0x3006e7e9, Offset: 0x1d0
// Size: 0x14
function private _preload() {
    function_bc948200();
}

// Namespace namespace_2872eab3/namespace_2872eab3
// Params 0, eflags: 0x4
// Checksum 0xf09162fa, Offset: 0x1f0
// Size: 0x64
function private function_bc948200() {
    clientfield::register("toplayer", "cctv_postfx", 1, 1, "int");
    clientfield::register("toplayer", "cull_outside_nuke_room", 1, 1, "int");
}

// Namespace namespace_2872eab3/namespace_2872eab3
// Params 5, eflags: 0x0
// Checksum 0x56539f53, Offset: 0x260
// Size: 0x2a4
function function_c238a64a(var_d7eb0053, var_cfa5cedf, var_de721607, var_1aebd615, var_dd3b452) {
    level.player = isdefined(level.player) ? level.player : getplayers()[0];
    if (!namespace_61e6d095::exists(#"hash_48087cf592ac15d8")) {
        namespace_61e6d095::create(#"hash_48087cf592ac15d8", #"hash_233c0e90ddf8f839");
    }
    namespace_82bfe441::fade(1, "FadeImmediate");
    if (!isdefined(var_d7eb0053)) {
        var_d7eb0053 = #"";
    }
    if (!isdefined(var_cfa5cedf)) {
        var_cfa5cedf = #"";
    }
    if (!isdefined(var_de721607)) {
        var_de721607 = #"";
    }
    if (!isdefined(var_1aebd615)) {
        var_1aebd615 = 0;
    }
    if (!isdefined(var_dd3b452)) {
        var_dd3b452 = 1;
    }
    namespace_61e6d095::function_9ade1d9b(#"hash_48087cf592ac15d8", "camera_name", var_d7eb0053);
    namespace_61e6d095::function_9ade1d9b(#"hash_48087cf592ac15d8", "camera_location", var_cfa5cedf);
    namespace_61e6d095::function_9ade1d9b(#"hash_48087cf592ac15d8", "camera_date", var_de721607);
    namespace_61e6d095::function_9ade1d9b(#"hash_48087cf592ac15d8", "camera_timer_start", var_1aebd615);
    namespace_61e6d095::function_9ade1d9b(#"hash_48087cf592ac15d8", "camera_zoom", var_dd3b452);
    level.player clientfield::set_to_player("cctv_postfx", 1);
    namespace_c8e236da::removelist();
    namespace_c8e236da::function_ebf737f8(#"hash_4d41512a9dd19c05");
    namespace_c8e236da::function_ebf737f8(#"hash_69591e6984149ba7");
    namespace_c8e236da::function_ebf737f8(#"hash_4e10d70903ef5630");
}

// Namespace namespace_2872eab3/namespace_2872eab3
// Params 2, eflags: 0x0
// Checksum 0x6699a3ac, Offset: 0x510
// Size: 0x9c
function function_bd2b7003(var_6acccd9c = #"", var_7a6d5da7 = #"") {
    namespace_61e6d095::function_9ade1d9b(#"hash_48087cf592ac15d8", "camera_name", var_6acccd9c);
    namespace_61e6d095::function_9ade1d9b(#"hash_48087cf592ac15d8", "camera_location", var_7a6d5da7);
}

// Namespace namespace_2872eab3/namespace_2872eab3
// Params 2, eflags: 0x0
// Checksum 0xb82fdfa2, Offset: 0x5b8
// Size: 0x8c
function function_6e6cbceb(var_862f0a8a = #"", var_d3e70c7c = 0) {
    namespace_61e6d095::function_9ade1d9b(#"hash_48087cf592ac15d8", "camera_date", var_862f0a8a);
    namespace_61e6d095::function_9ade1d9b(#"hash_48087cf592ac15d8", "camera_timer_start", var_d3e70c7c);
}

// Namespace namespace_2872eab3/namespace_2872eab3
// Params 1, eflags: 0x0
// Checksum 0x5a71f54a, Offset: 0x650
// Size: 0x34
function function_b0adb9ba(var_5bb68104) {
    namespace_61e6d095::function_9ade1d9b(#"hash_48087cf592ac15d8", "camera_zoom", var_5bb68104);
}

// Namespace namespace_2872eab3/namespace_2872eab3
// Params 1, eflags: 0x0
// Checksum 0xef20be82, Offset: 0x690
// Size: 0x18c
function function_173bb173(var_67df10fb = 1) {
    level.player clientfield::set_to_player("cctv_postfx", 0);
    self notify("210cf6bbc1fd890d");
    self endon("210cf6bbc1fd890d");
    if (var_67df10fb >= float(function_60d95f53()) / 1000) {
        wait var_67df10fb;
    }
    if (namespace_61e6d095::exists(#"hash_48087cf592ac15d8")) {
        namespace_61e6d095::function_9ade1d9b(#"hash_48087cf592ac15d8", "camera_fade_out_time", var_67df10fb);
    }
    if (var_67df10fb > 0) {
        wait 2;
    }
    if (namespace_61e6d095::exists(#"hash_48087cf592ac15d8")) {
        namespace_61e6d095::remove(#"hash_48087cf592ac15d8");
    }
    namespace_c8e236da::removelist();
    namespace_82bfe441::fade(0, "FadeMedium");
    level.player clientfield::set_to_player("cull_outside_nuke_room", 0);
}

