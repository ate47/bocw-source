// Atian COD Tools GSC CW decompiler test
#using script_1478fbd17fe393cf;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\serverfield_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_9b5aa273;

// Namespace namespace_9b5aa273/namespace_9b5aa273
// Params 0, eflags: 0x5
// Checksum 0x83af60be, Offset: 0xe8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_2b0f887705d6f3e", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_9b5aa273/namespace_9b5aa273
// Params 0, eflags: 0x6 linked
// Checksum 0x3a94d599, Offset: 0x130
// Size: 0x5c
function private preinit() {
    serverfield::register("can_show_hold_breath_hint", 1, 1, "int", &function_b58b73b6);
    callback::function_c046382d(&function_93f6c83b);
}

// Namespace namespace_9b5aa273/namespace_9b5aa273
// Params 2, eflags: 0x6 linked
// Checksum 0xc160ba3a, Offset: 0x198
// Size: 0x1a4
function private function_b58b73b6(oldval, newval) {
    if (oldval == newval) {
        return;
    }
    player = getplayers()[0];
    if (newval) {
        if (!isdefined(level.var_5f632232)) {
            if (self function_82f2f066()) {
                hint_tutorial::function_4c2d4fc4(#"hash_5b44c3504ac0a01e", #"", 0, #"", 2);
            } else {
                hint_tutorial::function_4c2d4fc4(#"hash_5b4b0dc5da9b211d", #"", 0, #"", 2);
            }
            player val::set(#"hash_2460cc5fa8f85fe7", "disable_usability", 1);
        }
        return;
    }
    if (level.var_5f632232 === #"hash_5b4b0dc5da9b211d" || level.var_5f632232 === #"hash_5b44c3504ac0a01e") {
        hint_tutorial::function_9f427d88(0);
    }
    player val::reset_all(#"hash_2460cc5fa8f85fe7");
}

// Namespace namespace_9b5aa273/checkpoint_restore
// Params 0, eflags: 0x20
// Checksum 0xf49a5825, Offset: 0x348
// Size: 0x9c
function event_handler[checkpoint_restore] function_d49b3ac5() {
    if (level.var_5f632232 === #"hash_5b4b0dc5da9b211d" || level.var_5f632232 === #"hash_5b44c3504ac0a01e") {
        hint_tutorial::function_9f427d88(0);
        player = getplayers()[0];
        player val::reset_all(#"hash_2460cc5fa8f85fe7");
    }
}

// Namespace namespace_9b5aa273/event_6aa1189e
// Params 0, eflags: 0x20
// Checksum 0x8c1e662a, Offset: 0x3f0
// Size: 0x44
function event_handler[event_6aa1189e] function_c6a7519f() {
    player = self;
    player.var_35ee6252 = 1;
    setslowmotion(1, 0.2, 0.5);
}

// Namespace namespace_9b5aa273/event_822128d0
// Params 0, eflags: 0x20
// Checksum 0xa914ff74, Offset: 0x440
// Size: 0x24
function event_handler[event_822128d0] function_255956d5() {
    player = self;
    player function_9220f819();
}

// Namespace namespace_9b5aa273/namespace_9b5aa273
// Params 0, eflags: 0x6 linked
// Checksum 0x2b95378f, Offset: 0x470
// Size: 0x64
function private function_9220f819() {
    player = self;
    if (is_true(player.var_35ee6252)) {
        player.var_35ee6252 = undefined;
        setslowmotion(0.2, 1, 0.1);
    }
}

// Namespace namespace_9b5aa273/namespace_9b5aa273
// Params 1, eflags: 0x6 linked
// Checksum 0x9928a6ac, Offset: 0x4e0
// Size: 0x24
function private function_93f6c83b(*s_params) {
    self function_9220f819();
}

