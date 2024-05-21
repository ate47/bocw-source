// Atian COD Tools GSC CW decompiler test
#using script_3dc93ca9902a9cda;
#using script_35ae72be7b4fec10;
#using scripts\core_common\util_shared.gsc;

#namespace namespace_6fdcb0;

// Namespace namespace_6fdcb0/namespace_d2b0877a
// Params 1, eflags: 0x2 linked
// Checksum 0x9a89e929, Offset: 0x198
// Size: 0x39c
function function_912776e6(var_f03e723e) {
    assert(ishash(var_f03e723e));
    var_1e80d435 = getscriptbundle(var_f03e723e);
    var_272aa18c = var_1e80d435.var_ca65c53;
    level.var_9cc7e850 = 0;
    if (!isdefined(level.var_2462d06a)) {
        level.var_2462d06a = [];
    }
    if (!isdefined(level.var_91d22c7d)) {
        level.var_91d22c7d = [];
    }
    assert(var_272aa18c.size > 0);
    if (namespace_61e6d095::exists(#"hash_3b32288cc17c7c50")) {
        namespace_61e6d095::remove(#"hash_3b32288cc17c7c50");
    }
    namespace_61e6d095::create(#"hash_3b32288cc17c7c50", #"hash_719a4d9188d68f7");
    namespace_61e6d095::function_9ade1d9b(#"hash_3b32288cc17c7c50", "ActiveIndex", -1);
    function_2c85ed08(0);
    for (i = 0; i < var_272aa18c.size; i++) {
        item = var_272aa18c[i];
        if (!isdefined(level.var_2462d06a)) {
            level.var_2462d06a = [];
        } else if (!isarray(level.var_2462d06a)) {
            level.var_2462d06a = array(level.var_2462d06a);
        }
        level.var_2462d06a[level.var_2462d06a.size] = isdefined(item.var_509412f0) ? item.var_509412f0 : 0;
        if (!isdefined(level.var_91d22c7d)) {
            level.var_91d22c7d = [];
        } else if (!isarray(level.var_91d22c7d)) {
            level.var_91d22c7d = array(level.var_91d22c7d);
        }
        level.var_91d22c7d[level.var_91d22c7d.size] = isdefined(item.var_189c1de9) ? item.var_189c1de9 : 0;
        namespace_61e6d095::function_9ade1d9b(#"hash_3b32288cc17c7c50", "Combo" + i, isdefined(item.var_189c1de9) ? item.var_189c1de9 : 0);
    }
    function_2c85ed08();
    namespace_61e6d095::function_9ade1d9b(#"hash_3b32288cc17c7c50", "ActiveIndex", 0);
    namespace_61e6d095::function_73c9a490(#"hash_3b32288cc17c7c50", 1);
    thread function_7825ee37();
}

// Namespace namespace_6fdcb0/namespace_d2b0877a
// Params 1, eflags: 0x6 linked
// Checksum 0xb2b543ac, Offset: 0x540
// Size: 0x656
function private function_7825ee37(var_31d7501a) {
    player = getplayers()[0];
    player endon(#"death");
    snd::play("fly_combo_lock_safehouse_enter", player);
    if (!isdefined(var_31d7501a)) {
        var_31d7501a = 10;
    }
    selected = 0;
    var_ab89de9b = 0;
    var_778781b3 = 0;
    var_8bdd94a8 = 0;
    var_2ce7727b = 0;
    var_b4ce0d8c = 0;
    var_16aebd94 = 250;
    player childthread namespace_61e6d095::block_kbm_pause_menu([#"exit", #"hash_542efe3d2dcb6459"]);
    while (true) {
        if (player namespace_61e6d095::function_70217795()) {
            function_838e9ba9();
            player notify(#"exit");
            snd::play("fly_combo_lock_safehouse_exits", player);
            return;
        }
        time = gettime();
        if (time - var_2ce7727b > 250) {
            var_778781b3 = 0;
        }
        if (time - var_b4ce0d8c > 250) {
            var_8bdd94a8 = 0;
        }
        var_cf705cb2 = {#x:0, #y:0};
        if (player gamepadusedlast()) {
            var_ad8317c6 = player namespace_61e6d095::function_9c365c3b();
            var_89c3fd26 = player namespace_61e6d095::function_6cbc939b();
            if (var_ad8317c6.length > var_89c3fd26.length) {
                var_cf705cb2.x = util::function_b5338ccb(var_ad8317c6.x, 0.2);
                var_cf705cb2.y = util::function_b5338ccb(var_ad8317c6.y, 0.2);
            } else {
                var_cf705cb2.x = util::function_b5338ccb(var_89c3fd26.x, 0.2);
                var_cf705cb2.y = util::function_b5338ccb(var_89c3fd26.y, 0.2);
            }
        }
        if (var_8bdd94a8 >= 0 && (player namespace_61e6d095::function_9975a94d() || player function_3666f7a1() || var_cf705cb2.y < 0)) {
            var_8bdd94a8 = -1;
            var_b4ce0d8c = time;
        } else if (var_8bdd94a8 <= 0 && (player namespace_61e6d095::function_aef1e8c3() || player function_347b5108() || var_cf705cb2.y > 0)) {
            var_8bdd94a8 = 1;
            var_b4ce0d8c = time;
        } else if (var_778781b3 >= 0 && (player namespace_61e6d095::function_c2d8a326() || player function_b1caa36a() || var_cf705cb2.x < 0)) {
            var_778781b3 = -1;
            var_2ce7727b = time;
        } else if (var_778781b3 <= 0 && (player namespace_61e6d095::function_3d680c10() || player function_b2121354() || var_cf705cb2.x > 0)) {
            var_778781b3 = 1;
            var_2ce7727b = time;
        }
        if (var_b4ce0d8c == time) {
            snd::play("evt_kgb_combo_lock_click", player);
            var_ab89de9b = (level.var_91d22c7d[level.var_9cc7e850] + var_8bdd94a8) % var_31d7501a;
            if (var_ab89de9b < 0) {
                var_ab89de9b += var_31d7501a;
            }
            level.var_91d22c7d[level.var_9cc7e850] = var_ab89de9b;
            namespace_61e6d095::function_9ade1d9b(#"hash_3b32288cc17c7c50", "Combo" + level.var_9cc7e850, var_ab89de9b);
            if (function_ab53f639()) {
                return;
            }
        } else if (var_2ce7727b == time && selected + var_778781b3 >= 0 && selected + var_778781b3 < level.var_2462d06a.size) {
            snd::play("evt_kgb_combo_lock_slide", player);
            selected += var_778781b3;
            if (selected < 0) {
                selected = 0;
            } else if (selected > level.var_2462d06a.size - 1) {
                selected = level.var_2462d06a.size - 1;
            }
            level.var_9cc7e850 = selected;
            namespace_61e6d095::function_9ade1d9b(#"hash_3b32288cc17c7c50", "ActiveIndex", selected);
        }
        waitframe(1);
    }
}

// Namespace namespace_6fdcb0/namespace_d2b0877a
// Params 0, eflags: 0x6 linked
// Checksum 0x546a0f65, Offset: 0xba0
// Size: 0x100
function private function_ab53f639() {
    for (i = 0; i < level.var_91d22c7d.size; i++) {
        if (level.var_91d22c7d[i] != level.var_2462d06a[i]) {
            return false;
        }
    }
    function_2c85ed08(3);
    player = getplayers()[0];
    snd::play("evt_lockpick_wrench_tighten", player);
    snd::play("evt_kgb_combo_lock_success_whoosh");
    wait(1);
    player notify(#"hash_542efe3d2dcb6459");
    snd::play("evt_kgb_combo_lock_success", player);
    return true;
}

// Namespace namespace_6fdcb0/namespace_d2b0877a
// Params 1, eflags: 0x2 linked
// Checksum 0x65aef486, Offset: 0xca8
// Size: 0x44
function function_2c85ed08(state = 1) {
    namespace_61e6d095::function_9ade1d9b(#"hash_3b32288cc17c7c50", "State", state);
}

// Namespace namespace_6fdcb0/namespace_d2b0877a
// Params 0, eflags: 0x2 linked
// Checksum 0x15882fb1, Offset: 0xcf8
// Size: 0x82
function function_838e9ba9() {
    if (namespace_61e6d095::exists(#"hash_3b32288cc17c7c50")) {
        namespace_61e6d095::function_73c9a490(#"hash_3b32288cc17c7c50", 0);
        namespace_61e6d095::remove(#"hash_3b32288cc17c7c50");
    }
    level.var_2462d06a = undefined;
    level.var_91d22c7d = undefined;
}

