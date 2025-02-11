#using script_35ae72be7b4fec10;
#using script_4937c6974f43bb71;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\system_shared;

#namespace namespace_3eccaf86;

// Namespace namespace_3eccaf86/namespace_3eccaf86
// Params 0, eflags: 0x5
// Checksum 0x380b8ba5, Offset: 0x168
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_eed643f85bc30ce", &_preload, undefined, undefined, undefined);
}

// Namespace namespace_3eccaf86/namespace_3eccaf86
// Params 0, eflags: 0x4
// Checksum 0x3006e7e9, Offset: 0x1b0
// Size: 0x14
function private _preload() {
    function_bc948200();
}

// Namespace namespace_3eccaf86/namespace_3eccaf86
// Params 0, eflags: 0x4
// Checksum 0x6567b72e, Offset: 0x1d0
// Size: 0x94
function private function_bc948200() {
    clientfield::register("toplayer", "surveycam_state", 1, 1, "int");
    clientfield::register("toplayer", "surveycam_min_focal_length", 1, 6, "int");
    clientfield::register("toplayer", "surveycam_max_focal_length", 1, 6, "int");
}

// Namespace namespace_3eccaf86/namespace_3eccaf86
// Params 2, eflags: 0x0
// Checksum 0xc096f176, Offset: 0x270
// Size: 0x1ec
function function_87b9c1ef(var_27169374 = 25, var_25c457e2 = 60) {
    if (is_true(level.var_5be43b2d)) {
        return;
    }
    level.player = isdefined(level.player) ? level.player : getplayers()[0];
    if (!namespace_61e6d095::exists(#"hash_71351bf35e6d6353")) {
        namespace_61e6d095::create(#"hash_71351bf35e6d6353", #"hash_eed643f85bc30ce");
    }
    namespace_82bfe441::fade(1, "FadeImmediate");
    level.player clientfield::set_to_player("surveycam_min_focal_length", var_27169374);
    level.player clientfield::set_to_player("surveycam_max_focal_length", var_25c457e2);
    namespace_61e6d095::function_9ade1d9b(#"hash_71351bf35e6d6353", "pitch", 0);
    namespace_61e6d095::function_9ade1d9b(#"hash_71351bf35e6d6353", "yaw", 0);
    namespace_61e6d095::function_9ade1d9b(#"hash_71351bf35e6d6353", "zoom", 1);
    level.player clientfield::set_to_player("surveycam_state", 1);
}

// Namespace namespace_3eccaf86/namespace_3eccaf86
// Params 1, eflags: 0x0
// Checksum 0xfee84302, Offset: 0x468
// Size: 0x15c
function function_56d93dca(var_67df10fb = 1) {
    self notify("6a61dd7e08b958be");
    self endon("6a61dd7e08b958be");
    if (var_67df10fb >= float(function_60d95f53()) / 1000) {
        wait var_67df10fb;
    }
    if (namespace_61e6d095::exists(#"hash_71351bf35e6d6353")) {
        namespace_61e6d095::function_9ade1d9b(#"hash_71351bf35e6d6353", "camera_fade_out_time", var_67df10fb);
    }
    if (var_67df10fb > 0) {
        wait 2;
    }
    if (namespace_61e6d095::exists(#"hash_71351bf35e6d6353")) {
        namespace_61e6d095::remove(#"hash_71351bf35e6d6353");
    }
    namespace_82bfe441::fade(0, "FadeMedium");
    level.player clientfield::set_to_player("surveycam_state", 0);
}

