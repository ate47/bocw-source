#using script_3dc93ca9902a9cda;
#using script_54412fb3a6fab34c;
#using script_85cd2e9a28ea8a1;
#using scripts\core_common\array_shared;
#using scripts\core_common\audio_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\music_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\snd;
#using scripts\cp_common\snd_utility;

#namespace namespace_353d803e;

// Namespace namespace_353d803e/level_preinit
// Params 1, eflags: 0x24
// Checksum 0xa46e94eb, Offset: 0x1228
// Size: 0x3c
function private event_handler[level_preinit] function_b489bb7b(*eventstruct) {
    snd::function_5e69f468(&_objective);
    snd::function_294cb4fa();
}

// Namespace namespace_353d803e/event_cc819519
// Params 1, eflags: 0x24
// Checksum 0x8d2d3351, Offset: 0x1270
// Size: 0x154
function private event_handler[event_cc819519] function_686b88aa(*eventstruct) {
    snd::function_294cb4fa();
    players = snd::function_da785aa8();
    player = players[0];
    assert(isplayer(player));
    player thread function_a20133bd();
    /#
        snd::dvar("<dev string:x38>", "<dev string:x4e>" + 6, &function_5e7cc862);
        snd::dvar("<dev string:x52>", "<dev string:x4e>" + 30, &function_5e7cc862);
    #/
    snd::client_targetname(players[0], "player");
    thread function_f48103c7();
    thread function_7932589a();
    init_flags();
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x13d0
// Size: 0x4
function init_flags() {
    
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 1, eflags: 0x4
// Checksum 0x8b0e894, Offset: 0x13e0
// Size: 0x41a
function private _objective(objective) {
    player = snd::function_da785aa8()[0];
    switch (objective) {
    case #"kgb_ins_activation":
        break;
    case #"kgb_ins_briefing":
        thread atrium_reveal();
        thread function_8677372c();
        break;
    case #"kgb_ins_tutorial":
        thread function_8677372c();
        break;
    case #"hash_24972f3855c80fe0":
        music("4.0_searching_random");
        thread function_8677372c();
        thread function_f9e6c53b();
        break;
    case #"kgb_ins_rv":
        music("6.0_basement");
        thread function_8677372c();
        thread function_f9e6c53b();
        break;
    case #"kgb_aslt_entry":
        music("8.0_undercover");
        thread function_3390e801();
        break;
    case #"hash_5175aebb76e95344":
        music("9.0_infiltrating");
        thread function_3390e801();
        break;
    case #"kgb_aslt_bunker":
        level waittill(#"hash_49ad3ddc839a715c");
        player notify(#"hash_7ad75056b30c451a");
        level notify(#"hash_63850bb43dbc38de");
        break;
    case #"hash_7cde686699ca5464":
        thread function_abfdd752();
        break;
    case #"hash_162b16415a255dd5":
        thread function_abfdd752();
        break;
    case #"hash_1c5015138adaab97":
        player notify(#"hash_7ad75056b30c451a");
        thread function_abfdd752();
        break;
    case #"hash_376543ff2ea5996":
        music("13.3_lockdown_tension");
        player notify(#"hash_7ad75056b30c451a");
        thread function_abfdd752();
        break;
    case #"hash_320aa934bbc7d931":
        thread function_abfdd752();
        break;
    case #"hash_74f9d3807b0ac192":
        thread function_abfdd752();
        break;
    case #"hash_1af1cb6ba35bac17":
        thread function_abfdd752();
        break;
    case #"hash_5d3f72329516e0fb":
        player notify(#"hash_7ad75056b30c451a");
        break;
    case #"no_game":
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<dev string:x68>" + objective + "<dev string:x8b>");
        #/
        break;
    }
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 2, eflags: 0x0
// Checksum 0xbed72d0d, Offset: 0x1808
// Size: 0x3c
function music(str_msg, n_delay = 0) {
    level thread function_7edafa59(str_msg, n_delay);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 2, eflags: 0x0
// Checksum 0x18b7ec6a, Offset: 0x1850
// Size: 0x40a
function function_7edafa59(str_msg, n_delay) {
    if (isdefined(str_msg) && (str_msg == "4.2_search_stingers" || str_msg == "4.3_tension_stingers")) {
        var_8bbe21f1 = 1;
    } else {
        level notify(#"hash_2aedef1788e81420");
    }
    switch (str_msg) {
    case #"13.3_lockdown_tension":
    case #"hash_d96dba6e7a99f85":
    case #"11.3_combat2":
    case #"11.0_sabotage":
    case #"13.7_holding_belikov":
    case #"14.0_knockout":
    case #"13.5_lockdown":
    case #"hash_1d433b9a413139d4":
    case #"hash_2256b0dea87465d2":
    case #"8.0_undercover":
    case #"5.0_unlock":
    case #"hash_2910ae132ebdc558":
    case #"10.0_combat_intro":
    case #"6.0_basement":
    case #"9.0_infiltrating":
    case #"5.2_kill":
    case #"hash_2d88f0176ae057fb":
    case #"14.0b_full_alert":
    case #"8.1_gate":
    case #"hash_78d371826c395268":
    case #"hash_35dacd4322564668":
    case #"10.2_combat_loop":
    case #"hash_3f88adcdc052e5b6":
    case #"7.0_tunnels":
        music::setmusicstate(str_msg, undefined, n_delay);
        break;
    case #"4.0_searching_oneshot_4":
    case #"4.0_searching_oneshot_2":
    case #"4.0_searching_oneshot_3":
    case #"4.0_searching_oneshot_1":
        music::setmusicstate(str_msg, undefined, n_delay);
        break;
    case #"4.0_searching_random":
        level thread function_7a79ff2c();
        break;
    case #"4.3_tension_stingers":
    case #"4.2_search_stingers":
    case #"8.3_cello_stingers_2":
    case #"8.2_cello_stingers_1":
        music::function_2af5f0ec(str_msg);
        break;
    case #"7.1_attack_sting":
        music::function_edda155f(str_msg, n_delay);
        break;
    case #"hash_2966b4a1e4a3a38d":
    case #"deactivate_11.3_combat2":
    case #"hash_33d1bd1987cf9ec5":
    case #"deactivate_6.0_basement":
    case #"hash_63d49b1407be692c":
    case #"hash_5a5ac38c04395a49":
    case #"hash_5cb44079caf0d925":
    case #"hash_5cde78352f0969e3":
        music::setmusicstate("none", undefined, n_delay);
        break;
    default:
        /#
            iprintlnbold("<dev string:x90>" + str_msg + "<dev string:xa2>");
        #/
        break;
    }
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 1, eflags: 0x0
// Checksum 0xeb088c67, Offset: 0x1c68
// Size: 0x18a
function function_e80c0ccf(str_msg) {
    switch (str_msg) {
    case #"hash_1d433b9a413139d4":
        snd::client_msg(#"musictrack_cp_kgb_1");
        break;
    case #"hash_2256b0dea87465d2":
    case #"4.0_searching_random":
        snd::client_msg(#"musictrack_cp_kgb_2");
        break;
    case #"8.0_undercover":
        snd::client_msg(#"musictrack_cp_kgb_3");
        break;
    case #"10.2_combat_loop":
    case #"10.0_combat_intro":
        snd::client_msg(#"musictrack_cp_kgb_4");
        break;
    case #"13.5_lockdown":
        snd::client_msg(#"musictrack_cp_kgb_5");
        break;
    case #"14.0b_full_alert":
        snd::client_msg(#"musictrack_cp_kgb_6");
        break;
    }
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x4e451d13, Offset: 0x1e00
// Size: 0x184
function function_8677372c() {
    if (is_true(level.var_995bf8d7)) {
        return;
    }
    level.var_995bf8d7 = 1;
    level.var_293e0ccc = "english";
    level.var_9634044d = [];
    level.var_9634044d[#"english"] = ["vox_cp_rkgb_09800_rupa_alikpavlovtoroo_df", "vox_cp_rkgb_09800_rupa_attentionplease_de", "vox_cp_rkgb_09800_rupa_sevastiankisele_0f", "vox_cp_rkgb_09800_rupa_yaroslavgusevre_fe", "vox_cp_rkgb_09800_rupa_natalyapetrovap_69", "vox_cp_rkgb_09800_rupa_olgasokolovarep_6d", "vox_cp_rkgb_09800_rupa_yourattentionpl_10", "vox_cp_rkgb_09800_rupa_attentionwarran_de", "vox_cp_rkgb_09800_rupa_sergeantnovikov_3e", "vox_cp_rkgb_09800_rupa_assistantsecret_e9"];
    level.var_9634044d[#"russian"] = ["vox_cp_rkgb_09800_rupa_nooneistoleavet_23", "vox_cp_rkgb_09800_rupa_noonewillbeadmi_7b", "vox_cp_rkgb_09800_rupa_pleasecooperate_04", "vox_cp_rkgb_09800_rupa_thebuildingisno_8a", "vox_cp_rkgb_09800_rupa_buildingsecurit_74"];
    wait 5;
    thread function_f94ed931();
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x948254f8, Offset: 0x1f90
// Size: 0x1e0
function function_f94ed931() {
    locs = [(-263, -1228, 544), (-25, -66, 569)];
    orgs = [];
    var_b22ada74 = ["evt_pa_squelch_in_lobby", "evt_pa_squelch_in_lobby", "evt_pa_squelch_in_atrium"];
    var_8cc2be8b = ["evt_pa_squelch_out_lobby", "evt_pa_squelch_out_lobby", "evt_pa_squelch_out_atrium"];
    for (i = 0; i < locs.size; i++) {
        orgs[i] = spawn("script_origin", locs[i]);
    }
    while (!level flag::get("flag_player_swap_complete")) {
        line = get_random_array_element_no_repeat(level.var_9634044d[level.var_293e0ccc], "pa_announcements", level.var_9634044d[level.var_293e0ccc].size);
        for (i = 0; i < orgs.size; i++) {
            thread function_b26c41e5(var_b22ada74[i], line, var_8cc2be8b[i], orgs[i]);
        }
        wait randomintrange(15, 23);
    }
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x62d1ee5d, Offset: 0x2178
// Size: 0x17c
function function_3390e801() {
    if (is_true(level.var_97af7d2a)) {
        return;
    }
    level.var_97af7d2a = 1;
    level.var_293e0ccc = "russian";
    level.var_9634044d = [];
    level.var_9634044d[#"english"] = ["vox_cp_rkgb_09800_rupa_alikpavlovtoroo_df", "vox_cp_rkgb_09800_rupa_attentionplease_de", "vox_cp_rkgb_09800_rupa_sevastiankisele_0f", "vox_cp_rkgb_09800_rupa_yaroslavgusevre_fe", "vox_cp_rkgb_09800_rupa_natalyapetrovap_69", "vox_cp_rkgb_09800_rupa_olgasokolovarep_6d", "vox_cp_rkgb_09800_rupa_yourattentionpl_10", "vox_cp_rkgb_09800_rupa_attentionwarran_de", "vox_cp_rkgb_09800_rupa_sergeantnovikov_3e", "vox_cp_rkgb_09800_rupa_assistantsecret_e9"];
    level.var_9634044d[#"russian"] = ["vox_cp_rkgb_09800_rupa_nooneistoleavet_23", "vox_cp_rkgb_09800_rupa_noonewillbeadmi_7b", "vox_cp_rkgb_09800_rupa_pleasecooperate_04", "vox_cp_rkgb_09800_rupa_thebuildingisno_8a", "vox_cp_rkgb_09800_rupa_buildingsecurit_74"];
    thread function_d8f1ce1b();
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x5f07f740, Offset: 0x2300
// Size: 0x1e0
function function_d8f1ce1b() {
    locs = [(-263, -1228, 544), (-25, -66, 569)];
    orgs = [];
    var_b22ada74 = ["evt_pa_squelch_in_lobby", "evt_pa_squelch_in_lobby", "evt_pa_squelch_in_atrium"];
    var_8cc2be8b = ["evt_pa_squelch_out_lobby", "evt_pa_squelch_out_lobby", "evt_pa_squelch_out_atrium"];
    for (i = 0; i < locs.size; i++) {
        orgs[i] = spawn("script_origin", locs[i]);
    }
    while (!level flag::get("team_in_elevator")) {
        line = get_random_array_element_no_repeat(level.var_9634044d[level.var_293e0ccc], "pa_announcements", level.var_9634044d[level.var_293e0ccc].size);
        for (i = 0; i < orgs.size; i++) {
            thread function_b26c41e5(var_b22ada74[i], line, var_8cc2be8b[i], orgs[i]);
        }
        wait randomintrange(10, 18);
    }
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 4, eflags: 0x0
// Checksum 0xaacafcd6, Offset: 0x24e8
// Size: 0xa4
function function_b26c41e5(var_b22ada74, line, var_8cc2be8b, org) {
    snd::play(var_b22ada74, org.origin);
    wait 1;
    snd_ent = snd::play(line, org);
    snd::function_2fdc4fb(snd_ent);
    snd::play(var_8cc2be8b, org.origin);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xcb913582, Offset: 0x2598
// Size: 0xf6
function function_7a79ff2c() {
    if (is_true(level.var_6298dbb3)) {
        return;
    }
    level.var_6298dbb3 = 1;
    wait 1.2;
    music::setmusicstate("4.0_searching_oneshot_4");
    wait 18;
    states = ["4.0_searching_oneshot_1", "4.0_searching_oneshot_2", "4.0_searching_oneshot_3"];
    wait_times = [24, 72];
    level thread function_7f65e142(states, wait_times);
    level.var_6298dbb3 = undefined;
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 3, eflags: 0x0
// Checksum 0x8cbd502f, Offset: 0x2698
// Size: 0x184
function function_7f65e142(var_9f0a8c8e, wait_time, var_9593e76e) {
    level endon(#"hash_2aedef1788e81420");
    if (!isdefined(var_9593e76e)) {
        var_9593e76e = 0;
    }
    last_state = undefined;
    while (true) {
        if (var_9593e76e) {
            states = array::randomize(var_9f0a8c8e);
            if (states[0] == last_state) {
                arrayremovevalue(states, last_state);
            }
        } else {
            states = var_9f0a8c8e;
        }
        var_eddd6569 = [];
        for (i = 0; i < states.size; i++) {
            var_eddd6569[i] = snd::function_f4127447(wait_time);
        }
        for (i = 0; i < states.size; i++) {
            state = states[i];
            random_wait_time = var_eddd6569[i];
            last_state = state;
            music::setmusicstate(state);
            wait random_wait_time;
            music::setmusicstate("none");
            waitframe(2);
        }
        waitframe(1);
    }
}

/#

    // Namespace namespace_353d803e/namespace_6b5b2aa3
    // Params 2, eflags: 0x0
    // Checksum 0x406a1dab, Offset: 0x2828
    // Size: 0x1b2
    function function_5e7cc862(*key, value) {
        level notify(#"hash_63850bb43dbc38de");
        players = snd::function_da785aa8();
        player = players[0];
        assert(isplayer(player));
        view_origin = player snd::function_efda2d6d();
        var_839b8d61 = getentitiesinradius(view_origin, 16384, 15);
        var_97d10723 = function_b6dd763(view_origin, 16384);
        ents = arraycombine(var_839b8d61, var_97d10723, 0);
        foreach (ent in ents) {
            ent.var_2de4672c = undefined;
        }
        level thread function_a20133bd();
        return value;
    }

#/

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 1, eflags: 0x0
// Checksum 0xdd0efa57, Offset: 0x29e8
// Size: 0x2b2
function function_c26120ff(ent) {
    type = array::random(["cough", "sniff", "throat"]);
    prefix = "male";
    head = ent.head;
    var_6c1ff08a = [#"hash_59db5fbcfcf738ff"];
    var_8243bb50 = isinarray(var_6c1ff08a, head);
    if (var_8243bb50) {
        self notify(#"hash_63850bb43dbc38de");
        return undefined;
    }
    var_9805f0e = [#"c_t9_ger_civ_female_head01", #"c_t9_ger_civ_female_head02", #"c_t9_ger_civ_female_head03", #"c_t9_ger_civ_female_head04", #"c_t9_ger_civ_female_head05", #"c_t9_ger_civ_female_head06", #"hash_6cfa8a1eb7667b19", #"hash_6cfa931eb7668a64", #"hash_6cfa941eb7668c17", #"hash_6cfe111eb7699655", #"hash_10907c2b90e2ab7e"];
    isfemale = isinarray(var_9805f0e, head);
    if (isfemale) {
        prefix = "female";
    } else if (head == #"c_t9_cp_usa_hero_adler_head1_kgb_officer") {
        prefix = "adler";
    }
    alias = "vox_" + prefix + "_" + type;
    if (!soundexists(alias)) {
        return ("vox_male_" + type);
    }
    return alias;
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xd1359b8, Offset: 0x2ca8
// Size: 0x31a
function function_a20133bd() {
    player = self;
    if (!snd::function_e3a36342(player)) {
        players = snd::function_da785aa8();
        player = players[0];
        assert(isplayer(player));
    }
    player notify(#"hash_7ad75056b30c451a");
    player endon(#"hash_7ad75056b30c451a", #"death", #"disconnect");
    level endon(#"hash_7ad75056b30c451a");
    min_time = getdvarfloat(#"hash_5a9d5543cb5829b3", 6);
    max_time = getdvarfloat(#"hash_5ab96b43cb70c9cd", 30);
    var_88701456 = 0;
    while (true) {
        view_origin = player snd::function_efda2d6d();
        var_839b8d61 = getentitiesinradius(view_origin, 900, 15);
        var_97d10723 = function_b6dd763(view_origin, 900);
        ents = arraycombine(var_839b8d61, var_97d10723, 0);
        var_dcf355d7 = 0;
        var_bff726ab = min(32, ents.size);
        while (ents.size > 0 && var_dcf355d7 < var_bff726ab) {
            var_88701456 %= ents.size;
            ent = ents[var_88701456];
            if (isentity(ent) && !ent ishidden()) {
                head = ent.head;
                if (isdefined(head) && head != "" && !isdefined(ent.var_2de4672c)) {
                    ent thread snd::function_9299618(&function_c26120ff, [min_time, max_time]);
                }
            }
            var_dcf355d7++;
            var_88701456++;
        }
        waitframe(20);
    }
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x2fd0
// Size: 0x4
function function_7932589a() {
    
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x69bee6f9, Offset: 0x2fe0
// Size: 0x8c
function function_4bbc8660() {
    alias = "amb_emt_generator_01";
    positions = [(-3165, 2474, -1746), (-3486, 2475, -1751), (-3326, 2317, -1715)];
    level.amb_emt_generator_01 = snd::play(alias, positions);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x9aa5087a, Offset: 0x3078
// Size: 0x74
function function_5f7aaddc() {
    alias = "amb_emt_generator_02";
    positions = [(-3195, 2002, -1752), (-3455, 1996, -1752)];
    level.amb_emt_generator_02 = snd::play(alias, positions);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x3c8c9ace, Offset: 0x30f8
// Size: 0x74
function function_3842df6d() {
    alias = "amb_emt_generator_03";
    positions = [(-3212, 1690, -1752), (-3437, 1690, -1752)];
    level.amb_emt_generator_03 = snd::play(alias, positions);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x6aeee09b, Offset: 0x3178
// Size: 0xac
function function_47039dc8() {
    snd::stop(level.amb_emt_generator_01, 0.5);
    alias = "amb_emt_generator_01_stop";
    positions = [(-3165, 2474, -1746), (-3486, 2475, -1751), (-3326, 2317, -1715)];
    level.amb_emt_generator_01_stop = snd::play(alias, positions);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xab907301, Offset: 0x3230
// Size: 0x94
function function_a26d549e() {
    snd::stop(level.amb_emt_generator_02, 0.5);
    alias = "amb_emt_generator_02_stop";
    positions = [(-3195, 2002, -1752), (-3455, 1996, -1752)];
    level.amb_emt_generator_02_stop = snd::play(alias, positions);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x5e23f933, Offset: 0x32d0
// Size: 0x94
function function_b4cf7962() {
    snd::stop(level.amb_emt_generator_03, 0.5);
    alias = "amb_emt_generator_03_stop";
    positions = [(-3212, 1690, -1752), (-3437, 1690, -1752)];
    level.amb_emt_generator_03_stop = snd::play(alias, positions);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x17afec29, Offset: 0x3370
// Size: 0x184
function function_5f16d3f3() {
    level.amb_elm_polishradio = snd::play("amb_elm_polishradio", (-587, 147, 448));
    level.amb_emt_tv_static_04 = snd::play("amb_emt_tv_static_04", (-587, 110, 3910));
    level.amb_evt_aslt_vault_server_03 = snd::play("amb_evt_aslt_vault_server_03", (-665, -24, 440));
    level.amb_emt_powerhum_01 = snd::play("amb_emt_powerhum_01", (-623, 83, 410));
    level.amb_kgb_camroom_lp_01 = snd::play("amb_kgb_camroom_lp_01", (-576, 159, 461));
    level.amb_kgb_camroom_lp_02 = snd::play("amb_kgb_camroom_lp_02", (-377, 104, 461));
    level.amb_kgb_stakhanov_lp = snd::play("amb_kgb_stakhanov_lp", (-453, 165, 418));
    level.amb_kgb_camroom_generator_lp = snd::play("amb_kgb_camroom_generator_lp", (-644, 95, 455));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xda20851e, Offset: 0x3500
// Size: 0x104
function function_f3d767c7() {
    snd::stop(level.amb_elm_polishradio, 0.5);
    snd::stop(level.amb_emt_tv_static_04, 0.5);
    snd::stop(level.amb_evt_aslt_vault_server_03, 0.5);
    snd::stop(level.amb_emt_powerhum_01, 0.5);
    snd::stop(level.amb_kgb_camroom_lp_01, 0.5);
    snd::stop(level.amb_kgb_camroom_lp_02, 0.5);
    snd::stop(level.amb_kgb_stakhanov_lp, 0.5);
    snd::stop(level.amb_kgb_camroom_generator_lp, 0.5);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xa761a1a3, Offset: 0x3610
// Size: 0x29c
function function_ac0aa1e6() {
    snd::play("cin_kgb_camroom_switch_off", level.player);
    wait 1.3;
    snd::play("cin_kgb_camroom_shtdwn_01", (-437, -5, 453));
    snd::play("cin_kgb_camroom_shtdwn_02", (-575, 105, 465));
    snd::play("cin_kgb_camroom_shtdwn_03", (-561, -79, 440));
    snd::play("amb_kgb_camroom_generator_stdwn", (-662, 95, 420));
    thread function_f9e6c53b();
    snd::stop(level.amb_elm_polishradio, 0.7);
    snd::stop(level.amb_emt_tv_static_04, 0.5);
    snd::stop(level.amb_evt_aslt_vault_server_03, 0.3);
    snd::stop(level.amb_emt_powerhum_01, 0.4);
    snd::stop(level.amb_kgb_camroom_lp_01, 0.3);
    snd::stop(level.amb_kgb_camroom_lp_02, 0.5);
    snd::stop(level.amb_kgb_stakhanov_lp, 0.8);
    snd::stop(level.amb_kgb_camroom_generator_lp, 0.5);
    min_time = 0.25;
    max_time = 0.75;
    wait randomfloatrange(min_time, max_time);
    snd::play("cin_kgb_camroom_shtdwn_screen_01", (-544, 171, 448));
    min_time = 0.25;
    max_time = 0.75;
    wait randomfloatrange(min_time, max_time);
    snd::play("cin_kgb_camroom_shtdwn_screen_02", (-373, 96, 454));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x6d00122a, Offset: 0x38b8
// Size: 0x7c
function function_f9e6c53b() {
    if (is_true(level.var_735effe5)) {
        return;
    }
    level.var_735effe5 = 1;
    snd::play("amb_emt_tv_static_04", (-520, 148, 480));
    snd::play("amb_emt_tv_static_04", (-435, 149, 430));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x50d0e1c4, Offset: 0x3940
// Size: 0x298
function function_fe19f3c9() {
    level endon(#"hash_1c1549a38fffb2f4");
    while (true) {
        snd::play("amb_kgb_seq_take_01", (-549, 133, 406));
        var_6fe72b06 = 0.6;
        var_84928e78 = 1;
        wait randomfloatrange(var_6fe72b06, var_84928e78);
        snd::play("amb_kgb_seq_take_02", (-549, 133, 406));
        var_bd9dc672 = 7.2;
        var_2123c798 = 9;
        wait randomfloatrange(var_bd9dc672, var_2123c798);
        snd::play("amb_kgb_seq_take_03", (-549, 133, 406));
        var_d959fdea = 2.4;
        var_2edb6307 = 4.1;
        wait randomfloatrange(var_d959fdea, var_2edb6307);
        snd::play("amb_kgb_seq_take_04", (-549, 133, 406));
        var_a70c194f = 4.4;
        var_cbbf9cd1 = 6;
        wait randomfloatrange(var_a70c194f, var_cbbf9cd1);
        snd::play("amb_kgb_seq_take_05", (-549, 133, 406));
        var_b4bd34b1 = 13.2;
        var_d9803852 = 15;
        wait randomfloatrange(var_b4bd34b1, var_d9803852);
        snd::play("amb_kgb_seq_take_06", (-549, 133, 406));
        var_46d53e4 = 2.2;
        var_76897282 = 3.5;
        wait randomfloatrange(var_46d53e4, var_76897282);
    }
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xede5bc90, Offset: 0x3be0
// Size: 0x64
function atrium_reveal() {
    if (is_true(level.var_3366c059)) {
        return;
    }
    level.var_3366c059 = 1;
    level flag::wait_till("atrium_reveal");
    snd::client_msg("atrium_reveal");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x51f3ccb4, Offset: 0x3c50
// Size: 0x2c
function function_8dbac4c1() {
    snd::play("evt_sfx_kgb_conference_doorshut", (-21, 610, 659));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xabbba334, Offset: 0x3c88
// Size: 0x3c
function function_17ac0ede() {
    wait 1;
    snd::play("evt_use_computer_line_keystroke");
    snd::play("evt_kgb_screen_positive");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x9ac981cb, Offset: 0x3cd0
// Size: 0x24
function function_221625b() {
    wait 0.4;
    snd::play("evt_kgb_compute_data_02");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xad3cbce9, Offset: 0x3d00
// Size: 0x1c
function function_56d07615() {
    snd::play("evt_kgb_screen_negative");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x6158af91, Offset: 0x3d28
// Size: 0x54
function function_f258ecd8() {
    snd::play("evt_use_computer_line_keystroke");
    snd::play("evt_kgb_computer_line_beep");
    wait 0.5;
    snd::play("evt_kgb_compute_data_03");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xdab86233, Offset: 0x3d88
// Size: 0x1c
function function_2945d446() {
    snd::play("evt_kgb_compute_data_05");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x62cfed54, Offset: 0x3db0
// Size: 0x5c
function function_49feca34() {
    snd::play("evt_kgb_compute_data_01");
    wait 0.85;
    snd::play("evt_kgb_compute_data_06");
    wait 1.48;
    snd::play("evt_kgb_computer_line_beep");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xe7d251de, Offset: 0x3e18
// Size: 0x1c
function function_5ec3080d() {
    snd::play("evt_kgb_computer_informant");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x6c42223c, Offset: 0x3e40
// Size: 0x24
function function_229cbb8b() {
    wait 0.2;
    snd::play("evt_kgb_computer_logoff");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x4fc4c60, Offset: 0x3e70
// Size: 0x1c
function function_e45cc0e3() {
    snd::play("evt_kgb_compute_data_01");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xbbf59577, Offset: 0x3e98
// Size: 0x1c
function function_1849b51() {
    snd::play("evt_kgb_computer_line_beep");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x72279c11, Offset: 0x3ec0
// Size: 0x34
function function_a36d53c1() {
    snd::play("evt_kgb_screen_negative");
    snd::play("evt_kgb_compute_data_04");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xa968aa8c, Offset: 0x3f00
// Size: 0x1c
function function_b3167dc7() {
    snd::play("evt_kgb_compute_data_06");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xbbcb72ed, Offset: 0x3f28
// Size: 0x1c
function function_89075091() {
    snd::play("evt_use_computer_line_keystroke");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xfed9c629, Offset: 0x3f50
// Size: 0x3c
function function_c910d243() {
    snd::play("evt_use_computer_line_keystroke");
    wait 0.2;
    snd::play("evt_kgb_computer_line_beep");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x7db292ca, Offset: 0x3f98
// Size: 0x1c
function function_4c22f066() {
    snd::play("evt_kgb_screen_positive");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x87f33604, Offset: 0x3fc0
// Size: 0x1c
function function_763b1a5f() {
    snd::play("evt_kgb_compute_data_03");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x5a259186, Offset: 0x3fe8
// Size: 0x34
function function_6c74df12() {
    snd::play("evt_kgb_computer_line_beep");
    snd::play("evt_kgb_compute_data_11");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x88332d60, Offset: 0x4028
// Size: 0x1c
function function_99a69ad6() {
    snd::play("evt_kgb_compute_data_09");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xdc39d8e0, Offset: 0x4050
// Size: 0x1c
function function_46be75ae() {
    snd::play("evt_kgb_screen_positive");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x8298a300, Offset: 0x4078
// Size: 0x64
function function_de7dc0e1() {
    wait 0.1;
    snd::play("evt_kgb_compute_data_08");
    wait 1.65;
    snd::play("evt_kgb_compute_data_07");
    wait 1;
    snd::play("evt_kgb_computer_line_beep");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xf5274906, Offset: 0x40e8
// Size: 0x5c
function function_d528ae37() {
    snd::play("evt_kgb_compute_data_06");
    wait 1.55;
    snd::play("evt_kgb_compute_data_11");
    wait 1.1;
    snd::play("evt_kgb_computer_line_beep");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xdca48355, Offset: 0x4150
// Size: 0x1c
function function_c9581995() {
    snd::play("evt_use_computer_line_keystroke");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x2fcceae, Offset: 0x4178
// Size: 0x1c
function function_fa415a96() {
    snd::play("evt_kgb_screen_positive");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xb10ae9fb, Offset: 0x41a0
// Size: 0x1c
function function_e03f1f30() {
    snd::play("evt_kgb_computer_line_beep");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xa89ab6a4, Offset: 0x41c8
// Size: 0x1c
function function_a4f9d0d5() {
    snd::play("evt_kgb_computer_beep_02");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x7b633522, Offset: 0x41f0
// Size: 0x1c
function function_51e882d1() {
    snd::play("evt_kgb_screen_negative");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xb711ccaf, Offset: 0x4218
// Size: 0x1c
function function_25edef6f() {
    snd::play("evt_kgb_compute_data_11");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xd1b4e32f, Offset: 0x4240
// Size: 0x1c
function function_2cf22b09() {
    snd::play("evt_kgb_compute_data_01");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xe16c7ac9, Offset: 0x4268
// Size: 0x24
function function_988ff988() {
    wait 1.45;
    snd::play("evt_kgb_screen_positive");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x25276bc0, Offset: 0x4298
// Size: 0x24
function function_5811b2f5() {
    wait 1.45;
    snd::play("evt_kgb_screen_negative");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x9be2070, Offset: 0x42c8
// Size: 0x1c
function function_4460a1c4() {
    snd::play("evt_kgb_compute_data_05");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x13d55554, Offset: 0x42f0
// Size: 0x1c
function function_f62e9223() {
    snd::play("evt_kgb_computer_line_beep");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x81c25d58, Offset: 0x4318
// Size: 0x1c
function function_6b2b346f() {
    snd::play("evt_kgb_compute_data_09");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x20727dcb, Offset: 0x4340
// Size: 0x54
function function_8d402f0e() {
    snd::play("evt_kgb_computer_line_beep");
    snd::play("evt_kgb_compute_data_08");
    wait 1.6;
    snd::play("evt_kgb_compute_data_06");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x35b6eeaf, Offset: 0x43a0
// Size: 0x1c
function function_a7ec91c7() {
    snd::play("evt_kgb_compute_data_01");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x89122a78, Offset: 0x43c8
// Size: 0x3c
function function_46f1ef8() {
    snd::play("evt_use_computer_line_keystroke");
    wait 0.2;
    snd::play("evt_kgb_computer_line_beep");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xa308b3b6, Offset: 0x4410
// Size: 0x1c
function function_3207124a() {
    snd::play("evt_kgb_compute_data_03");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xc4cae7cc, Offset: 0x4438
// Size: 0x1c
function function_bc17bb84() {
    snd::play("evt_kgb_compute_data_10");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x80c632ca, Offset: 0x4460
// Size: 0x1c
function function_8785f966() {
    snd::play("evt_kgb_compute_data_04");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xd35b3562, Offset: 0x4488
// Size: 0x1c
function function_eeeee919() {
    snd::play("evt_kgb_authenticate_list");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x81508ea3, Offset: 0x44b0
// Size: 0x1c
function function_50d6a850() {
    snd::play("evt_kgb_compute_data_12");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xfc879a8e, Offset: 0x44d8
// Size: 0x1c
function function_56c95a7e() {
    snd::play("evt_kgb_vault_hack_01");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xb2e55ba2, Offset: 0x4500
// Size: 0x1c
function function_7a79a1de() {
    snd::play("evt_kgb_vault_hack_02");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x449d15f5, Offset: 0x4528
// Size: 0x1c
function function_515a5d5a() {
    snd::play("evt_kgb_compute_data_05");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xbe61bcfa, Offset: 0x4550
// Size: 0x1c
function function_50885ec2() {
    snd::play("evt_kgb_compute_data_03");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x5646c50f, Offset: 0x4578
// Size: 0x3c
function function_39867bb0() {
    snd::play("evt_kgb_compute_data_05");
    wait 0.65;
    snd::play("evt_kgb_compute_data_11");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x940e95fc, Offset: 0x45c0
// Size: 0x1c
function function_56d2fda5() {
    snd::play("evt_kgb_computer_informant");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xd5c6d20c, Offset: 0x45e8
// Size: 0x44
function function_81eee847() {
    wait 0.25;
    snd::play("evt_kgb_battle_close_walla", (-3338, -3713, -1674));
    thread function_66c9d348();
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x2ae2686, Offset: 0x4638
// Size: 0x44
function function_66c9d348() {
    level waittill(#"hash_60d6c3cd31d5f6fd");
    snd::play("evt_kgb_battlecharge_walla", (-3321, -3010, -1640));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x788dec7e, Offset: 0x4688
// Size: 0x34
function function_9488b7a7() {
    wait 2;
    snd::play("evt_kgb_battlecharge_walla", (-5586, 1795, -1591));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x76246c69, Offset: 0x46c8
// Size: 0x2c
function function_a1fb2a43() {
    snd::play("evt_kgb_battlecharge_walla", (-4272, 3342, -1616));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xafa6b54b, Offset: 0x4700
// Size: 0x34
function function_aabd6525() {
    wait 4;
    snd::play("evt_kgb_whisper_walla", (-3331, 1568, -1621));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x81a0ef45, Offset: 0x4740
// Size: 0x44
function function_6ed7da74() {
    level waittill(#"hash_21a8a7b432e4a9b");
    snd::play("evt_kgb_battlecharge_walla", (-1414, -159, 453));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x56fcbd7d, Offset: 0x4790
// Size: 0x1c
function function_ca0f1dd6() {
    snd::play("evt_kgb_prepare_poison_cabinet_open");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xfe2b522, Offset: 0x47b8
// Size: 0x1c
function function_2ecd85bc() {
    snd::play("evt_kgb_prepare_poison_cabinet_pickup");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x7f92b779, Offset: 0x47e0
// Size: 0x24
function function_ecda5886() {
    wait 1.5;
    snd::play("cin_kgb_poison_charkov_tea");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xe3d16bb, Offset: 0x4810
// Size: 0x1c
function function_f25a5965() {
    snd::play("cin_kgb_poison_swap_cup");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x7ac98b8d, Offset: 0x4838
// Size: 0x24
function function_e102bbdf() {
    snd::play("cin_kgb_frisk_plr_pickup_card", level.player);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x61ebd9ac, Offset: 0x4868
// Size: 0x24
function function_28897188() {
    snd::play("cin_kgb_prisoner_file_get", level.player);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x638ae24a, Offset: 0x4898
// Size: 0x24
function function_7058432e() {
    snd::play("cin_kgb_prisoner_cuff_unlock", level.player);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x48c8
// Size: 0x4
function function_45192a6c() {
    
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xdaf4974, Offset: 0x48d8
// Size: 0x1c
function function_b93da28b() {
    snd::play("evt_kgb_player_poison_death");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x12d2f9ce, Offset: 0x4900
// Size: 0x5c
function function_d2bfe6bd() {
    wait 16;
    snd::play("cin_kgb_elevdown_elev_start", level.player);
    wait 3;
    level.var_12c17d45 = snd::play("cin_kgb_elevdown_elev_lp", level.player);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xe09a2f37, Offset: 0x4968
// Size: 0x4c
function function_c6140081() {
    wait 4.5;
    snd::play("cin_kgb_elevdown_elev_end", level.player);
    snd::stop(level.var_12c17d45, 0.5);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xeab90261, Offset: 0x49c0
// Size: 0x5c
function function_8b168679() {
    wait 15;
    snd::play("cin_kgb_elevdown_elev_start", level.player);
    wait 2;
    level.var_12c17d45 = snd::play("cin_kgb_elevdown_elev_lp", level.player);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xb048cbaf, Offset: 0x4a28
// Size: 0x94
function function_3e72b69a() {
    snd::stop(level.var_12c17d45, 0.5);
    snd::play("cin_kgb_elevdown_elev_accel_base", level.player);
    snd::play("cin_kgb_elevdown_elev_accel_sweet", level.player);
    wait 4.5;
    level.var_d7f3c673 = snd::play("cin_kgb_elevdown_elev_fast_lp", level.player);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xf99488, Offset: 0x4ac8
// Size: 0x64
function function_f3f9a760() {
    snd::play("cin_kgb_elevdown_elev_end", level.player);
    snd::stop(level.var_d7f3c673, 0.5);
    snd::stop(level.var_12c17d45, 0.5);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xc7f4afc3, Offset: 0x4b38
// Size: 0x1c
function function_71d7c94f() {
    wait 5;
    thread function_abfdd752();
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x83ee36b7, Offset: 0x4b60
// Size: 0xa4
function function_abfdd752() {
    if (is_true(level.var_cf281104)) {
        return;
    }
    level.var_cf281104 = 1;
    snd::play("amb_emt_klaxon_siren_02", (-3391, -4265, -1650));
    snd::play("amb_emt_klaxon_siren_01", (-3385, -3597, -1656));
    snd::play("amb_emt_klaxon_siren_02", (-3331, -3432, -1617));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xd6af6511, Offset: 0x4c10
// Size: 0xd4
function function_8c558bef() {
    thread function_84ea4ddd(0.2, "evt_kgb_vault_open_key");
    thread function_84ea4ddd(1.9, "evt_kgb_vault_open_buzzer", (-5624, 1790, -1552));
    thread function_84ea4ddd(4.2, "evt_kgb_vault_open_lever");
    thread function_84ea4ddd(5.35, "evt_kgb_vault_open_door", (-5747, 1796, -1603));
    thread function_84ea4ddd(7.35, "evt_kgb_vault_door_warning", (-5632, 1969, -1546));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 3, eflags: 0x0
// Checksum 0xfffcd4b6, Offset: 0x4cf0
// Size: 0x7c
function function_84ea4ddd(delay, alias, position) {
    players = snd::function_da785aa8();
    player = players[0];
    if (!isdefined(position)) {
        position = player.origin;
    }
    wait delay;
    snd::play(alias, position);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x9c5b63c8, Offset: 0x4d78
// Size: 0x34
function function_3873d8bb() {
    wait 1.8;
    snd::play("cin_kgb_vault_door_close", (-5747, 1796, -1603));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x27066cca, Offset: 0x4db8
// Size: 0x1c
function function_977ae254() {
    snd::play("evt_kgb_vault_computer_use");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xf6c249f5, Offset: 0x4de0
// Size: 0x8c
function function_33c1b7fa() {
    snd::play("cin_kgb_vault_door_cut_start", (-5800, 1796, -1603));
    level.var_97388b3 = snd::play("cin_kgb_vault_door_cut_lp", (-5800, 1796, -1603));
    level.var_945fd4c9 = snd::play("evt_kgb_vault_door_cut_wronk", (-5800, 1796, -1603));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x7ede059a, Offset: 0x4e78
// Size: 0xcc
function function_d9c39917() {
    snd::play("cin_kgb_vault_door_cut_stop", (-5800, 1796, -1603));
    snd::stop(level.var_97388b3, 0.5);
    snd::stop(level.var_945fd4c9, 0.3);
    wait 1;
    snd::play("evt_kgb_vault_bomb_plant", (-5800, 1796, -1603));
    wait 0.5;
    snd::play("evt_kgb_vault_bomb_timer", (-5800, 1796, -1603));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x776dd8d0, Offset: 0x4f50
// Size: 0x6c
function function_15ad318b() {
    pos = (-6290, 1819, -1591);
    wait 1.7;
    snd::play("cin_kgb_vault_copy_disk_start", pos);
    wait 2.8;
    level.var_a86b831b = snd::play("cin_kgb_vault_copy_disk_lp", pos);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x44fb6b64, Offset: 0x4fc8
// Size: 0x74
function function_2f74668e() {
    pos = (-6290, 1819, -1591);
    snd::stop(level.var_a86b831b, 0.5);
    snd::play("evt_kgb_vault_computer_done", pos);
    wait 1.6;
    snd::play("cin_kgb_vault_floppy_disk_eject", pos);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x3e6c9511, Offset: 0x5048
// Size: 0x24
function function_62f3e8ea() {
    wait 0.3;
    snd::play("evt_kgb_deploygas_remote_pullout");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xaa1384c8, Offset: 0x5078
// Size: 0x24
function evt_kgb_deploygas_gas_mask_on() {
    wait 2.3;
    snd::play("evt_kgb_deploygas_gas_mask_on");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x2d5a9639, Offset: 0x50a8
// Size: 0x34
function function_7ecf08d8() {
    level.var_d61e085 = snd::play("evt_kgb_lightsout_machinery_lp", (-3331, 2239, -1567));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x3c9ac130, Offset: 0x50e8
// Size: 0x3c
function function_1a0f646c() {
    snd::stop(level.var_d61e085, 0.1);
    snd::play("evt_kgb_lightsout_machinery_stop");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xeb0787f4, Offset: 0x5130
// Size: 0x6c
function function_d2c6a99f() {
    snd::play("cin_lightsout_switch_cascade_01", (-3329, 2239, -1586));
    snd::play("cin_lightsout_bassdrop", level.player);
    function_1a0f646c();
    thread function_aabd6525();
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x754c7a2d, Offset: 0x51a8
// Size: 0x2c
function function_247bcd08() {
    snd::play("cin_lightsout_switch_cascade_02", (-2250, 1665, -1509));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x5c7c4f51, Offset: 0x51e0
// Size: 0x2c
function function_3632f076() {
    snd::play("cin_lightsout_switch_cascade_03", (-3337, 1270, -1718));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x1028f2b0, Offset: 0x5218
// Size: 0x2c
function function_9f617fd() {
    snd::play("cin_lightsout_switch_cascade_04", (-3331, 2239, -1567));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x1a0c904c, Offset: 0x5250
// Size: 0x2c
function function_eb78fac3() {
    snd::play("evt_kgb_lightsout_radio_chatter", (-3335, 1296, -1588));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x90668318, Offset: 0x5288
// Size: 0x5c
function function_b6b29051() {
    snd::play("cin_kgb_deploygas_enemies_reload_01", (-3149, -770, -1541));
    wait 0.5;
    snd::play("cin_kgb_deploygas_enemies_reload_02", (-3397, -742, -1541));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x3df756b9, Offset: 0x52f0
// Size: 0x24
function function_6556551a() {
    wait 4.4;
    snd::play("cin_kgb_exfil_rpd_charge");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 1, eflags: 0x0
// Checksum 0xe216596b, Offset: 0x5320
// Size: 0x34
function function_d4ea305a(*player) {
    snd::stop(level.var_bcd65e32);
    function_2df0701e();
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x2b97c367, Offset: 0x5360
// Size: 0xcc
function function_2df0701e() {
    snd::play("amb_emt_klaxon_siren_02", (553, 106, 492));
    snd::play("amb_emt_klaxon_siren_01", (-24, -193, 515));
    snd::play("amb_emt_klaxon_siren_02", (-778, -169, 496));
    snd::play("amb_emt_klaxon_siren_01", (-1372, -162, 511));
    snd::play("amb_atrium_battle_walla_lp", (-34, 241, 537));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xc73d0378, Offset: 0x5438
// Size: 0x34
function function_a645cbed() {
    wait 6.2;
    snd::play("evt_kgb_exfil_adler_grenade_pin", (-1505, -156, 440));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x6266fc48, Offset: 0x5478
// Size: 0x2c
function function_ad8a133d() {
    snd::play("evt_exfil_adler_grenade_explo_trans", (-1505, -156, 440));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0x77dca583, Offset: 0x54b0
// Size: 0x44
function function_f48103c7() {
    level flag::wait_till("sandwich_vo");
    level.player dialogue::queue("vox_cp_rkgb_01650_blkv_theketchupisdis_c0");
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xb18b2122, Offset: 0x5500
// Size: 0x24
function function_5865b09e() {
    snd::play("uin_cp_list_check", level.player);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 1, eflags: 0x0
// Checksum 0x6111ba37, Offset: 0x5530
// Size: 0x2c
function function_33b5f707(var_57b82bca) {
    snd::play(var_57b82bca, level.player);
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 0, eflags: 0x0
// Checksum 0xf87814e4, Offset: 0x5568
// Size: 0x2c
function function_82b14d0c() {
    snd::play("emt_projector_slide_change_forward", (-221, -339, 425));
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 3, eflags: 0x0
// Checksum 0x2879a65e, Offset: 0x55a0
// Size: 0x1a4
function get_random_array_element_no_repeat(array, label, var_7602d509 = 2) {
    if (!isdefined(level._audio_random_array_dict)) {
        level._audio_random_array_dict = [];
    }
    if (!isdefined(level._audio_random_array_dict[label])) {
        level._audio_random_array_dict[label] = array::randomize(getarraykeys(array));
    }
    if (level._audio_random_array_dict[label].size <= var_7602d509) {
        remaining = array_remove_array(getarraykeys(array), level._audio_random_array_dict[label]);
        new_list = array::randomize(remaining);
        level._audio_random_array_dict[label] = arraycombine(new_list, level._audio_random_array_dict[label]);
    }
    value = level._audio_random_array_dict[label][level._audio_random_array_dict[label].size - 1];
    level._audio_random_array_dict[label][level._audio_random_array_dict[label].size - 1] = undefined;
    return array[value];
}

// Namespace namespace_353d803e/namespace_6b5b2aa3
// Params 2, eflags: 0x0
// Checksum 0x318824d0, Offset: 0x5750
// Size: 0x9c
function array_remove_array(ents, remover_array) {
    foreach (remover in remover_array) {
        arrayremovevalue(ents, remover);
    }
    return ents;
}

