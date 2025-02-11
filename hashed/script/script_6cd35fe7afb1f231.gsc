#using script_3dc93ca9902a9cda;
#using script_54412fb3a6fab34c;
#using script_85cd2e9a28ea8a1;
#using scripts\core_common\array_shared;
#using scripts\core_common\audio_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\music_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\cp_common\snd;
#using scripts\cp_common\snd_utility;

#namespace namespace_b61bbd82;

// Namespace namespace_b61bbd82/level_preinit
// Params 1, eflags: 0x24
// Checksum 0x1a22b95b, Offset: 0x150
// Size: 0x2c
function private event_handler[level_preinit] function_b489bb7b(*eventstruct) {
    snd::function_5e69f468(&_objective);
}

// Namespace namespace_b61bbd82/event_cc819519
// Params 1, eflags: 0x24
// Checksum 0xe01cdb77, Offset: 0x188
// Size: 0x3c
function private event_handler[event_cc819519] function_686b88aa(*eventstruct) {
    snd::function_294cb4fa();
    snd::waitforplayers();
    thread function_b7d8556a();
}

// Namespace namespace_b61bbd82/namespace_42ffcf38
// Params 1, eflags: 0x4
// Checksum 0xdc26ac4d, Offset: 0x1d0
// Size: 0x9a
function private _objective(objective) {
    switch (objective) {
    case #"hash_65e6eae762f128ac":
        break;
    case #"no_game":
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<dev string:x38>" + objective + "<dev string:x5b>");
        #/
        break;
    }
}

// Namespace namespace_b61bbd82/namespace_42ffcf38
// Params 2, eflags: 0x0
// Checksum 0x3bc6e642, Offset: 0x278
// Size: 0x54
function music(str_msg, n_delay = 0) {
    level thread function_7edafa59(str_msg, n_delay);
    level thread function_e80c0ccf(str_msg);
}

// Namespace namespace_b61bbd82/namespace_42ffcf38
// Params 2, eflags: 0x0
// Checksum 0xb11233c, Offset: 0x2d8
// Size: 0x26a
function function_7edafa59(str_msg, n_delay) {
    switch (str_msg) {
    case #"1.0_reveal":
        music::setmusicstate("1.0_reveal");
        wait 3.5;
        music::setmusicstate("2.0_infiltrate");
        break;
    case #"2.0_infiltrate":
        music::setmusicstate("2.0_infiltrate");
        break;
    case #"hash_3aa13d9b3e84a5e":
    case #"3.0_caught":
    case #"4.0_inside":
    case #"hash_295b43f1ba4d8a85":
    case #"hash_2eeeec22953a0720":
    case #"hash_59962f70d8fcb45c":
    case #"12.1_exit":
        music::setmusicstate(str_msg, undefined, n_delay);
        break;
    case #"7.0_juggernaut":
        music::setmusicstate("7.0_juggernaut_stinger");
        waitframe(1);
        music::setmusicstate("7.0_juggernaut");
        break;
    case #"hash_13bb4e260ce73d4":
        music::function_2af5f0ec(str_msg);
        break;
    case #"hash_5349acae0cf9701c":
        music::function_edda155f(str_msg, n_delay);
        break;
    case #"hash_27b12368b44b3734":
    case #"hash_658daa8929a955ab":
    case #"deactivate_12.1_exit":
        music::setmusicstate("none", undefined, n_delay);
        break;
    default:
        /#
            iprintlnbold("<dev string:x60>" + str_msg + "<dev string:x72>");
        #/
        break;
    }
}

// Namespace namespace_b61bbd82/namespace_42ffcf38
// Params 1, eflags: 0x0
// Checksum 0xd64ff7d7, Offset: 0x550
// Size: 0x132
function function_e80c0ccf(str_msg) {
    switch (str_msg) {
    case #"1.0_reveal":
        snd::client_msg(#"musictrack_cp_amerika_1");
        break;
    case #"hash_295b43f1ba4d8a85":
        snd::client_msg(#"musictrack_cp_amerika_2");
        break;
    case #"hash_3aa13d9b3e84a5e":
        snd::client_msg(#"musictrack_cp_amerika_3");
        break;
    case #"12.1_exit":
        snd::client_msg(#"musictrack_cp_amerika_4");
        break;
    case #"deactivate_12.1_exit":
        snd::client_msg(#"musictrack_cp_amerika_5");
        break;
    }
}

// Namespace namespace_b61bbd82/namespace_42ffcf38
// Params 0, eflags: 0x0
// Checksum 0xec02f0a5, Offset: 0x690
// Size: 0x3d4
function function_c10bf5c5() {
    var_bc6eb41f = [(2920, 940, -165), (2560, 1684, -165), (2560, 2547, -165), (3943, 2587, -165), (4261, 2246, -165), (4517, 2639, -245), (4462, 3461, -237), (5146, 2628, -237), (3989, 2169, -234), (3365, 2171, -229), (5355, 2244, -224), (3679, 3191, -128), (3906, 2988, -97), (3459, 2805, -97), (5592, 4572, 258), (5878, 4282, 258), (6766, 4282, 258), (7044, 4572, 258), (6222, 4324, 414), (10466, 2612, -176), (10358, 3198, -176), (11248, 3198, -176), (10954, 2514, -176), (10216, 1340, -196), (8828, 1224, -368), (7970, 1268, -266), (9256, 2354, -236), (9256, 3476, -236), (7742, 3748, -236), (8616, 4092, -236), (8752, 5992, -234), (7830, 7558, -200), (6746, 7086, -140), (6560, 7468, -140), (3432, 7470, -140), (6560, 7082, -140), (2552, 6968, -46), (1962, 7484, -140), (1358, 6968, -46), (748, 7456, -74)];
    return var_bc6eb41f;
}

// Namespace namespace_b61bbd82/namespace_42ffcf38
// Params 0, eflags: 0x0
// Checksum 0xbc6dd92, Offset: 0xa70
// Size: 0x34
function function_b7d8556a() {
    level waittill(#"chyron_menu_closed");
    snd::client_msg("audio_level_begin_duck_stop");
}

