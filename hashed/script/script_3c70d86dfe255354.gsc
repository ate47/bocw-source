#using script_3dc93ca9902a9cda;
#using script_86ebb5dd573a003;
#using scripts\core_common\array_shared;
#using scripts\core_common\audio_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\music_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\struct;
#using scripts\core_common\teleport_shared;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\cp_common\util;

#namespace namespace_3e1df757;

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x2d0
// Size: 0x4
function init() {
    
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x2e0
// Size: 0x4
function function_459479b6() {
    
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0x5e4b4ba, Offset: 0x2f0
// Size: 0x1c
function function_3102d55b() {
    if (isdefined(level.intro_music) == 0) {
    }
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 1, eflags: 0x0
// Checksum 0x7aae182d, Offset: 0x318
// Size: 0x1c
function function_8ecbf13c(*guy) {
    thread function_9ddf3464();
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0xb46b6e38, Offset: 0x340
// Size: 0x46
function function_9ddf3464() {
    snd::function_294cb4fa();
    if (isdefined(level.var_a21c4cd1) == 0) {
        level waittill(#"hash_7f7d6afd4a2b34ce");
        level.var_a21c4cd1 = undefined;
    }
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0xf566a310, Offset: 0x390
// Size: 0xa
function function_fafe48ab() {
    wait 3;
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0x9507784c, Offset: 0x3a8
// Size: 0x64
function function_dda7b522() {
    wait 10;
    wait 15;
    level flag::wait_till("player_in_bar");
    level flag::wait_till("flag_found_contact");
    music::setmusicstate("");
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0xb8716c04, Offset: 0x418
// Size: 0x3a
function function_b8875614() {
    if (isdefined(level.var_a4604f0b) == 0) {
        level waittill(#"hash_5a450f78eb5b0fcf");
        level.var_a4604f0b = undefined;
    }
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0xf7cd0213, Offset: 0x460
// Size: 0x1c
function function_2a14a407() {
    level waittill(#"apartment_explosive_placed");
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0xe36a28aa, Offset: 0x488
// Size: 0x18
function function_cb9087f2() {
    level notify(#"hash_7f7d6afd4a2b34ce");
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0xe521faa2, Offset: 0x4a8
// Size: 0x16
function function_84a289c9() {
    wait 5;
    wait 5;
    wait 26;
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0xbf520ebe, Offset: 0x4c8
// Size: 0xe
function function_680be032() {
    level.var_6a42da5d = undefined;
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0x9f39072, Offset: 0x4e0
// Size: 0x72
function function_db44861a() {
    if (isdefined(level.var_a74423a9) == 0) {
        wait 8;
        wait 41;
        level waittill(#"hash_23f29d4743d9c8b5");
        wait 12;
        level flag::wait_till("at_escape_car");
        level.var_1bf78f11 = undefined;
        level.var_a21c4cd1 = undefined;
    }
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0x912b7aa2, Offset: 0x560
// Size: 0x8e
function function_1bf78f11() {
    if (isdefined(level.intro_music) == 1) {
        return;
    }
    if (isdefined(level.var_1bf78f11) == 0 && isdefined(level.start_point) == 1 && level.start_point != "gl_demo") {
        wait 5;
        level flag::wait_till("at_escape_car");
        level.var_1bf78f11 = undefined;
    }
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0xf8a93867, Offset: 0x5f8
// Size: 0x1c
function function_4ead2f45() {
    thread function_1e72a624("apt_transition");
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 1, eflags: 0x0
// Checksum 0xcbb81ff3, Offset: 0x620
// Size: 0x54
function function_fabce54(*guy) {
    level flag::wait_till_any(array("apt_street_lobby_entry", "flag_inside_lobby"));
    thread function_1e72a624("lobby_musak");
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0x831adff6, Offset: 0x680
// Size: 0x154
function function_b524c30d() {
    level flag::wait_till("apt_street_done");
    level flag::set("flag_apartment_door_open");
    thread function_1e72a624("stop_lobby_musak");
    thread function_1e72a624("drone1");
    thread function_1e72a624("drone3");
    thread function_1e72a624("stinger_wife");
    thread function_1e72a624("wife_darted");
    thread function_1e72a624("stinger_shadow_1");
    thread function_1e72a624("stinger_shadow_2");
    thread function_1e72a624("stinger_use_briefcase");
    thread function_1e72a624("stinger_betrayal");
    time = 3;
    limit = 2;
    thread function_4c8d0d5d(time, limit);
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 1, eflags: 0x0
// Checksum 0x6fd1f335, Offset: 0x7e0
// Size: 0x2b2
function function_1e72a624(music) {
    switch (music) {
    case #"apt_transition":
        wait 10;
        wait 20;
        break;
    case #"lobby_musak":
        break;
    case #"stop_lobby_musak":
        break;
    case #"drone1":
        level flag::wait_till("flag_see_kraus_shadow");
        break;
    case #"drone3":
        level flag::wait_till("flag_see_kraus_shadow");
        level flag::wait_till("flag_start_betrayal");
        break;
    case #"stinger_wife":
        level flag::wait_till("flag_1st_entry_front_door");
        level.var_1ab56aba = 1.7;
        wait 1.2;
        break;
    case #"wife_darted":
        level.var_3559e9e waittill(#"hash_107bc7fb5ce914c9", #"death");
        level.var_1ab56aba = 1.3;
        break;
    case #"stinger_shadow_1":
        level flag::wait_till("flag_see_kraus_shadow");
        level.var_1ab56aba = 0.9;
        thread function_3a85df46();
        wait 1.5;
        break;
    case #"stinger_shadow_2":
        level flag::wait_till("flag_see_kraus_shadow_2");
        level.var_1ab56aba = 0.5;
        break;
    case #"stinger_use_briefcase":
        level flag::wait_till("flag_start_betrayal");
        wait 1;
        level flag::set("flag_stop_timer_audio");
        break;
    case #"stinger_betrayal":
        getplayers()[0] waittill(#"hash_1c40b84cb7816a58", #"death");
        break;
    }
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0x621e6f2c, Offset: 0xaa0
// Size: 0x72
function function_3a85df46() {
    if (!isdefined(level.var_8c3480d2)) {
        /#
            iprintlnbold("<dev string:x38>");
        #/
        return;
    }
    while (level.var_8c3480d2 > 0.1) {
        level.var_8c3480d2 *= 0.9;
        wait 1;
    }
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 2, eflags: 0x0
// Checksum 0xfcb48dd6, Offset: 0xb20
// Size: 0x128
function function_4c8d0d5d(time, limit) {
    getplayers()[0] endon(#"death");
    level.var_87fd218c = time;
    level.var_1ab56aba = limit;
    level.var_8c3480d2 = 1;
    while (!level flag::get("flag_stop_timer_audio")) {
        if (level.var_8c3480d2 < 0.1) {
        }
        getplayers()[0] notify(#"hash_424d09b390df49ba");
        function_e53faedd();
        if (level.var_8c3480d2 < 0.1) {
        }
        getplayers()[0] notify(#"hash_4a573d79afe442ff");
        function_e53faedd();
    }
}

// Namespace namespace_3e1df757/namespace_3e1df757
// Params 0, eflags: 0x0
// Checksum 0xc50f875d, Offset: 0xc50
// Size: 0x58
function function_e53faedd() {
    wait level.var_87fd218c;
    level.var_87fd218c *= 0.97;
    if (level.var_87fd218c < level.var_1ab56aba) {
        level.var_87fd218c = level.var_1ab56aba;
    }
}

