// Atian COD Tools GSC CW decompiler test
#using script_32399001bdb550da;
#using scripts\cp_common\util.gsc;
#using script_3dc93ca9902a9cda;
#using scripts\cp_common\snd.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_78e9b80;

// Namespace namespace_78e9b80/namespace_78e9b80
// Params 9, eflags: 0x2 linked
// Checksum 0x729c317d, Offset: 0x158
// Size: 0x254
function function_15eaa2db(var_ec670c03, var_7589d009, var_cfa5fdd5, var_5021564e, var_79d6c881, var_e74daa74, var_88db8fbc, var_14e7d014, var_845dc708) {
    self endon(#"death");
    if (!level flag::exists(var_cfa5fdd5)) {
        level flag::init(var_cfa5fdd5);
    }
    if (!level flag::exists(var_5021564e)) {
        level flag::init(var_5021564e);
    }
    if (!isdefined(var_7589d009)) {
        var_7589d009 = "cp_shared_vietnam_brainwash";
    }
    if (isdefined(var_ec670c03)) {
        videostart(var_ec670c03, 1);
    }
    if (isdefined(var_14e7d014)) {
        var_c0646472 = self function_e538e340(var_14e7d014);
        if (is_true(var_c0646472)) {
            return;
        }
    }
    while (!flag::get(var_cfa5fdd5)) {
        level flag::wait_till_clear(var_5021564e);
        if (isdefined(var_ec670c03)) {
            videostop(var_ec670c03);
        }
        self thread function_33ef1077(var_7589d009, var_cfa5fdd5, var_5021564e, var_79d6c881, var_e74daa74, var_88db8fbc, var_14e7d014, var_845dc708);
        level flag::wait_till(var_5021564e);
        level notify(#"hash_68eb05a3e5bf2912");
        function_455048d8();
        if (isdefined(var_ec670c03)) {
            videostart(var_ec670c03, 1);
        }
        if (isdefined(var_14e7d014)) {
            var_c0646472 = self function_e538e340(var_14e7d014);
            if (is_true(var_c0646472)) {
                return;
            }
        }
    }
}

// Namespace namespace_78e9b80/namespace_78e9b80
// Params 8, eflags: 0x2 linked
// Checksum 0x8746f87b, Offset: 0x3b8
// Size: 0x2fe
function function_33ef1077(var_7589d009, var_cfa5fdd5, var_5021564e, var_79d6c881, var_e74daa74, var_88db8fbc, var_14e7d014, var_845dc708) {
    level endon(#"hash_68eb05a3e5bf2912");
    var_4026a1a6 = undefined;
    s_lookat = level struct::get(var_79d6c881, "targetname");
    if (isdefined(var_e74daa74)) {
        var_4026a1a6 = getent(var_e74daa74, "script_noteworthy");
        if (!isdefined(var_4026a1a6)) {
            return;
        }
        var_4026a1a6.var_9d9f02b4 = 0;
    }
    if (isdefined(var_14e7d014)) {
        var_c0646472 = self function_e538e340(var_14e7d014);
        if (is_true(var_c0646472)) {
            self thread function_9ce08b4(var_4026a1a6, var_7589d009, var_cfa5fdd5, var_5021564e, var_88db8fbc, var_14e7d014);
        }
    }
    wait(0.1);
    while (true) {
        if (isdefined(var_14e7d014)) {
            var_c0646472 = self function_e538e340(var_14e7d014);
            if (is_true(var_c0646472)) {
                return;
            }
        }
        b_is_visible = util::within_fov(level.player getplayercamerapos(), level.player getplayerangles(), s_lookat.origin, cos(45));
        if (is_true(b_is_visible)) {
            videoprime(var_7589d009);
            if (isdefined(var_14e7d014)) {
                self function_24654660(var_14e7d014);
            }
            if (isdefined(var_e74daa74)) {
                var_4026a1a6 show();
                var_4026a1a6.var_9d9f02b4 = 1;
            }
            wait(1);
            videostart(var_7589d009, 1);
            wait(0.25);
            function_598e3dfc(s_lookat, var_4026a1a6, var_845dc708);
            if (isdefined(var_88db8fbc)) {
                level thread exploder::exploder(var_88db8fbc);
            }
            self thread function_9ce08b4(var_4026a1a6, var_7589d009, var_cfa5fdd5, var_5021564e, var_88db8fbc, var_14e7d014, var_845dc708);
        }
        waitframe(1);
    }
}

// Namespace namespace_78e9b80/namespace_78e9b80
// Params 7, eflags: 0x2 linked
// Checksum 0xfd072317, Offset: 0x6c0
// Size: 0x124
function function_9ce08b4(var_4026a1a6, var_7589d009, var_cfa5fdd5, var_5021564e, var_88db8fbc, var_14e7d014, var_845dc708) {
    level flag::wait_till_any([var_cfa5fdd5, var_5021564e]);
    if (isdefined(var_88db8fbc)) {
        level thread exploder::stop_exploder(var_88db8fbc);
    }
    function_da7ec31a(undefined, var_4026a1a6, var_845dc708);
    videostop(var_7589d009);
    if (isdefined(var_4026a1a6)) {
        var_4026a1a6.var_9d9f02b4 = 0;
        if (isdefined(var_14e7d014)) {
            var_c0646472 = self function_e538e340(var_14e7d014);
            if (is_true(var_c0646472)) {
                var_4026a1a6 delete();
            }
        }
    }
}

// Namespace namespace_78e9b80/namespace_78e9b80
// Params 3, eflags: 0x2 linked
// Checksum 0x61b98f61, Offset: 0x7f0
// Size: 0x74
function function_598e3dfc(s_lookat, *var_4026a1a6, *var_845dc708) {
    if (!isdefined(level.var_7ed40ba9)) {
        snd::play("evt_ui_tv_flashback_on", var_845dc708.origin);
        level.var_7ed40ba9 = snd::play("evt_ui_tv_flashback_hum_lp", var_845dc708.origin);
    }
}

// Namespace namespace_78e9b80/namespace_78e9b80
// Params 3, eflags: 0x2 linked
// Checksum 0x118445c3, Offset: 0x870
// Size: 0x7e
function function_da7ec31a(*s_lookat, *var_4026a1a6, *var_845dc708) {
    if (isdefined(level.var_7ed40ba9)) {
        snd::play("evt_ui_tv_flashback_off", level.var_7ed40ba9.origin);
        snd::stop(level.var_7ed40ba9, 0.1);
        level.var_7ed40ba9 = undefined;
    }
}

// Namespace namespace_78e9b80/namespace_78e9b80
// Params 0, eflags: 0x2 linked
// Checksum 0xfd5a5f70, Offset: 0x8f8
// Size: 0x14
function function_455048d8() {
    function_da7ec31a();
}

// Namespace namespace_78e9b80/namespace_78e9b80
// Params 1, eflags: 0x2 linked
// Checksum 0x6668d303, Offset: 0x918
// Size: 0x5c
function function_24654660(var_14e7d014) {
    assert(isplayer(self));
    player = self;
    player savegame::set_player_data(var_14e7d014, 1);
}

// Namespace namespace_78e9b80/namespace_78e9b80
// Params 1, eflags: 0x2 linked
// Checksum 0x5d7e39f6, Offset: 0x980
// Size: 0x7a
function function_e538e340(var_14e7d014) {
    assert(isplayer(self));
    player = self;
    var_393a392a = int(player savegame::function_2ee66e93(var_14e7d014, 0));
    return var_393a392a;
}

