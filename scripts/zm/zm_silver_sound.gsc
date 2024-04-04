// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_silver_sound;

// Namespace zm_silver_sound/zm_silver_sound
// Params 0, eflags: 0x2 linked
// Checksum 0x64876119, Offset: 0x118
// Size: 0x94
function init() {
    level.var_a353323e = &function_cb5a4b1a;
    level.var_ae2fe3bd = &function_613a7ccc;
    level.var_da00670e = &function_da00670e;
    level thread function_c1db8d1a();
    level thread function_acd83a15();
    level thread function_2cf67660();
}

// Namespace zm_silver_sound/zm_silver_sound
// Params 0, eflags: 0x2 linked
// Checksum 0x3de974cc, Offset: 0x1b8
// Size: 0xcc
function function_c1db8d1a() {
    level waittill(#"bfm");
    var_581d3017 = getent("audio_bfm", "targetname");
    playsoundatposition(#"hash_4ec7d60ade69984c", var_581d3017.origin);
    wait(1);
    playsoundatposition(#"hash_189fe24269ad58d", var_581d3017.origin);
    wait(1);
    var_581d3017 playloopsound(#"hash_6890863e534ae68d");
}

// Namespace zm_silver_sound/zm_silver_sound
// Params 0, eflags: 0x2 linked
// Checksum 0x76077707, Offset: 0x290
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

// Namespace zm_silver_sound/zm_silver_sound
// Params 2, eflags: 0x2 linked
// Checksum 0x8f458c9b, Offset: 0x478
// Size: 0x3c
function function_44cea26f(str_msg, n_delay = 0) {
    level thread function_30d9d43(str_msg, n_delay);
}

// Namespace zm_silver_sound/zm_silver_sound
// Params 2, eflags: 0x2 linked
// Checksum 0x646741a2, Offset: 0x4c0
// Size: 0x14a
function function_30d9d43(str_msg, *n_delay) {
    switch (n_delay) {
    case #"hash_5bad1025f0cf747e":
        level util::clientnotify("term1");
        level util::clientnotify("term2");
        break;
    case #"hash_7dbdd94b1b1e6829":
        playsoundatposition(#"hash_191f00f5f707e4ca", (1616, 741, -270));
        level util::clientnotify("term1");
        break;
    case #"hash_7dbdd64b1b1e6310":
        level util::clientnotify("term2");
        break;
    default:
        /#
            iprintlnbold("<unknown string>" + n_delay + "<unknown string>");
        #/
        break;
    }
}

// Namespace zm_silver_sound/zm_silver_sound
// Params 0, eflags: 0x2 linked
// Checksum 0x4535ea92, Offset: 0x618
// Size: 0x44
function function_2cf67660() {
    level waittill(#"snddooropening");
    playsoundatposition(#"hash_38b699d43c500e2e", (0, 0, 0));
}

// Namespace zm_silver_sound/zm_silver_sound
// Params 0, eflags: 0x2 linked
// Checksum 0xac72b602, Offset: 0x668
// Size: 0xcc
function function_cb5a4b1a() {
    foreach (player in getplayers()) {
        player clientfield::set_to_player("" + #"hash_4be33f9c734f0cb9", 2);
    }
    music::setmusicstate("silver_exfil");
}

// Namespace zm_silver_sound/zm_silver_sound
// Params 1, eflags: 0x2 linked
// Checksum 0x4dccaf25, Offset: 0x740
// Size: 0x5c
function function_613a7ccc(b_success = 0) {
    if (b_success) {
        music::setmusicstate("silver_exfil_success");
        return;
    }
    music::setmusicstate("silver_exfil_fail");
}

// Namespace zm_silver_sound/zm_silver_sound
// Params 0, eflags: 0x2 linked
// Checksum 0xab02e084, Offset: 0x7a8
// Size: 0xcc
function function_da00670e() {
    foreach (player in getplayers()) {
        player clientfield::set_to_player("" + #"hash_4be33f9c734f0cb9", 2);
    }
    wait(1);
    level thread function_d0f24e17();
}

// Namespace zm_silver_sound/zm_silver_sound
// Params 0, eflags: 0x2 linked
// Checksum 0xffd9ff05, Offset: 0x880
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

// Namespace zm_silver_sound/zm_silver_sound
// Params 0, eflags: 0x2 linked
// Checksum 0x2963e2ed, Offset: 0x9c0
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

