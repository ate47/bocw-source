// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_audio.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_99d0d95e;

// Namespace namespace_99d0d95e/namespace_99d0d95e
// Params 0, eflags: 0x2 linked
// Checksum 0x3adc811d, Offset: 0x140
// Size: 0xc4
function init() {
    level.var_a353323e = &function_cb5a4b1a;
    level.var_ae2fe3bd = &function_613a7ccc;
    level.var_da00670e = &function_da00670e;
    level thread function_878fd065();
    level thread function_3e83eb5e();
    level thread function_8e50d09b();
    level thread function_acd83a15();
    level thread function_3c734339();
}

// Namespace namespace_99d0d95e/namespace_99d0d95e
// Params 0, eflags: 0x2 linked
// Checksum 0x320196b8, Offset: 0x210
// Size: 0xcc
function function_cb5a4b1a() {
    foreach (player in getplayers()) {
        player clientfield::set_to_player("" + #"hash_4be33f9c734f0cb9", 2);
    }
    music::setmusicstate("common_exfil");
}

// Namespace namespace_99d0d95e/namespace_99d0d95e
// Params 1, eflags: 0x2 linked
// Checksum 0x99439b1f, Offset: 0x2e8
// Size: 0x5c
function function_613a7ccc(b_success = 0) {
    if (b_success) {
        music::setmusicstate("common_exfil_success");
        return;
    }
    music::setmusicstate("common_exfil_fail");
}

// Namespace namespace_99d0d95e/namespace_99d0d95e
// Params 0, eflags: 0x2 linked
// Checksum 0xfb551e93, Offset: 0x350
// Size: 0x114
function function_878fd065() {
    var_5d1883b2 = spawn("script_origin", (-6006, 18086, 1905));
    var_5d1883b2 playloopsound(#"hash_26cc6394ce6f97c7");
    wait(1);
    var_c40f5b72 = spawn("script_origin", (3145, 15829, 1497));
    var_c40f5b72 playloopsound(#"hash_1aebb2a9c94effb3");
    while (level.round_number < 3) {
        wait(3);
    }
    level notify(#"hash_52d91a17b5ce6a13");
    var_5d1883b2 stoploopsound(1);
    var_c40f5b72 stoploopsound(1);
}

// Namespace namespace_99d0d95e/namespace_99d0d95e
// Params 0, eflags: 0x2 linked
// Checksum 0xd12e6d3, Offset: 0x470
// Size: 0x58
function function_3e83eb5e() {
    level endon(#"hash_52d91a17b5ce6a13");
    while (true) {
        wait(15);
        playsoundatposition(#"hash_18465a9117b3208f", (-6006, 18086, 1905));
    }
}

// Namespace namespace_99d0d95e/namespace_99d0d95e
// Params 0, eflags: 0x2 linked
// Checksum 0x66398c83, Offset: 0x4d0
// Size: 0x48
function function_8e50d09b() {
    while (true) {
        wait(65);
        playsoundatposition(#"hash_62c19eac25ff3f3c", (-6006, 18086, 1905));
    }
}

// Namespace namespace_99d0d95e/namespace_99d0d95e
// Params 0, eflags: 0x2 linked
// Checksum 0x349d76da, Offset: 0x520
// Size: 0x1dc
function function_acd83a15() {
    level endon(#"game_over");
    while (true) {
        waitresult = level waittill(#"musroundend", #"hash_350a3e373494a400");
        if (waitresult._notify === "musRoundEnd") {
            foreach (player in getplayers()) {
                player clientfield::set_to_player("" + #"hash_4be33f9c734f0cb9", 2);
            }
            continue;
        }
        if (function_e840d5a5()) {
            foreach (player in getplayers()) {
                player clientfield::set_to_player("" + #"hash_4be33f9c734f0cb9", 3);
            }
        }
    }
}

// Namespace namespace_99d0d95e/namespace_99d0d95e
// Params 0, eflags: 0x2 linked
// Checksum 0x58368b15, Offset: 0x708
// Size: 0x74
function function_e840d5a5() {
    if (is_true(level.musicsystemoverride)) {
        return false;
    }
    if (!isdefined(level.musicsystem)) {
        return true;
    }
    if (!isdefined(level.musicsystem.currentplaytype)) {
        return true;
    }
    if (level.musicsystem.currentplaytype >= 4) {
        return false;
    }
    return true;
}

// Namespace namespace_99d0d95e/namespace_99d0d95e
// Params 0, eflags: 0x2 linked
// Checksum 0x4b7e71b, Offset: 0x788
// Size: 0xe0
function function_3c734339() {
    level endon(#"game_over");
    level flag::wait_till("start_zombie_round_logic");
    foreach (player in getplayers()) {
        player clientfield::set_to_player("" + #"hash_4be33f9c734f0cb9", 0);
    }
}

// Namespace namespace_99d0d95e/namespace_99d0d95e
// Params 1, eflags: 0x2 linked
// Checksum 0x743ccab9, Offset: 0x870
// Size: 0x1b0
function function_8f85d169(var_dbd74b22 = 1) {
    if (var_dbd74b22) {
        level thread zm_audio::sndmusicsystem_stopandflush();
        level.musicsystemoverride = 1;
        foreach (player in getplayers()) {
            player clientfield::set_to_player("" + #"hash_4be33f9c734f0cb9", 2);
        }
        return;
    }
    level.musicsystemoverride = 0;
    foreach (player in getplayers()) {
        player clientfield::set_to_player("" + #"hash_4be33f9c734f0cb9", 3);
    }
}

// Namespace namespace_99d0d95e/namespace_99d0d95e
// Params 0, eflags: 0x2 linked
// Checksum 0x3781fbdf, Offset: 0xa28
// Size: 0xcc
function function_da00670e() {
    foreach (player in getplayers()) {
        player clientfield::set_to_player("" + #"hash_4be33f9c734f0cb9", 2);
    }
    wait(1);
    level thread function_d0f24e17();
}

// Namespace namespace_99d0d95e/namespace_99d0d95e
// Params 0, eflags: 0x2 linked
// Checksum 0xb325e3e7, Offset: 0xb00
// Size: 0x138
function function_d0f24e17() {
    level endon(#"game_over");
    if (!isdefined(level.musicsystem)) {
        return;
    }
    if (is_true(level.musicsystemoverride)) {
        return;
    }
    while (level.musicsystem.currentplaytype === 4) {
        wait(1);
    }
    if (function_e840d5a5()) {
        foreach (player in getplayers()) {
            player clientfield::set_to_player("" + #"hash_4be33f9c734f0cb9", 3);
        }
    }
}

