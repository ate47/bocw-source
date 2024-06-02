// Atian COD Tools GSC CW decompiler test
#using script_28e27ee9b45fd02d;
#using scripts\cp_common\snd_utility.csc;
#using script_1cd690a97dfca36e;
#using scripts\cp_common\snd.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\music_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\audio_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_4ed3ce47;

// Namespace namespace_4ed3ce47/level_preinit
// Params 1, eflags: 0x20
// Checksum 0xbddbe8ad, Offset: 0x6f8
// Size: 0x8c
function event_handler[level_preinit] function_b489bb7b(*eventstruct) {
    snd::function_d4ec748e(&function_f2a2832d);
    snd::function_ce78b33b(&function_32ab045);
    snd::trigger_init(&_trigger);
    snd::function_5e69f468(&_objective);
}

// Namespace namespace_4ed3ce47/event_cc819519
// Params 1, eflags: 0x20
// Checksum 0x9287713f, Offset: 0x790
// Size: 0x7c
function event_handler[event_cc819519] function_686b88aa(*eventstruct) {
    snd::function_294cb4fa();
    snd::waitforplayers();
    audio::function_21f8b7c3();
    function_b4de7637();
    level.var_936dc3f3 = 0;
    function_5ea2c6e3("cp_ger_hub_plrfly_down", 0, 1);
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 2, eflags: 0x6 linked
// Checksum 0xc7cb6444, Offset: 0x818
// Size: 0x35a
function private function_32ab045(ent, name) {
    switch (name) {
    case #"adler":
        level.adler = ent;
        level.adler thread function_952e21e3(ent, name);
        level.adler waittill(#"death");
        level.adler = undefined;
        break;
    case #"lazar":
        level.lazar = ent;
        level.lazar thread function_952e21e3(ent, name);
        level.lazar waittill(#"death");
        level.lazar = undefined;
        break;
    case #"park":
        level.park = ent;
        level.park thread function_952e21e3(ent, name);
        level.park waittill(#"death");
        level.park = undefined;
        break;
    case #"sims":
        level.sims = ent;
        level.sims thread function_952e21e3(ent, name);
        level.sims waittill(#"death");
        level.sims = undefined;
        break;
    case #"hudson":
        level.hudson = ent;
        level.hudson thread function_952e21e3(ent, name);
        level.hudson waittill(#"death");
        level.hudson = undefined;
        break;
    case #"woods":
        level.woods = ent;
        level.woods thread function_952e21e3(ent, name);
        level.woods waittill(#"death");
        level.woods = undefined;
        break;
    case #"mason":
        level.mason = ent;
        level.mason thread function_952e21e3(ent, name);
        level.mason waittill(#"death");
        level.mason = undefined;
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "tag_origin" + snd::function_783b69(name, "<unknown string>"));
        #/
        break;
    }
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 3, eflags: 0x6 linked
// Checksum 0xb934bb2, Offset: 0xb80
// Size: 0xda
function private _trigger(player, trigger, *var_ec80d14b) {
    trigger_name = snd::function_ea2f17d1(var_ec80d14b.script_ambientroom, "$default");
    switch (trigger_name) {
    case #"$default":
        snd::function_645c2f9b(trigger, trigger_name);
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<unknown string>" + trigger_name + "<unknown string>");
        #/
        break;
    }
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 2, eflags: 0x6 linked
// Checksum 0x7e66485b, Offset: 0xc68
// Size: 0x6ba
function private function_f2a2832d(*player, msg) {
    switch (msg) {
    case #"post_takedown":
        setsoundcontext("visit", "post_takedown");
        level.var_28b99ea7 = "post_takedown";
        function_a269371b();
        break;
    case #"post_armada":
        setsoundcontext("visit", "post_armada");
        level.var_28b99ea7 = "post_armada";
        function_a269371b();
        break;
    case #"post_kgb":
        setsoundcontext("visit", "post_kgb");
        level.var_28b99ea7 = "post_kgb";
        function_a269371b();
        break;
    case #"post_cuba":
        setsoundcontext("visit", "post_cuba");
        level.var_28b99ea7 = "post_cuba";
        function_a269371b();
        break;
    case #"hash_4738825a1fd6beb8":
        setsoundcontext("visit", "post_prisoner");
        level.var_28b99ea7 = "post_prisoner";
        function_a269371b();
        break;
    case #"hash_1b78b54c338981ad":
        function_5ea2c6e3("cp_ger_hub8_submix", 0, 1);
        break;
    case #"hash_5c379cf8b486919b":
        function_ed62c9c2("cp_ger_hub8_submix", 1);
        break;
    case #"hash_2af641a7d0cd9ad3":
        setsoundcontext("visit", "post_prisoner_burn_scene");
        level.var_28b99ea7 = "post_prisoner_burn_scene";
        function_a269371b();
        break;
    case #"post_yamantau":
        setsoundcontext("visit", "post_yamantau");
        level.var_28b99ea7 = "yamantau";
        function_a269371b();
        break;
    case #"hash_774f81b7fe6ee1f6":
        audio::snd_set_snapshot("cp_ger_hub_evidenceboard_enter");
        break;
    case #"hash_3f89f51c820e2ec0":
        audio::snd_set_snapshot("");
        break;
    case #"hash_3e89d014789ae73b":
        audio::snd_set_snapshot("cp_ger_hub_arcade_machine");
        break;
    case #"hash_3992190071e0da2f":
        audio::snd_set_snapshot("");
        break;
    case #"snd_overlook_scene":
        thread function_34050dad();
        break;
    case #"hash_1e58e46360c0a83b":
        level notify(#"hash_1e58e46360c0a83b");
        break;
    case #"hash_6016dc6f6d055083":
        thread function_955f4842();
        break;
    case #"plane_idle":
        thread function_2d8bbe54(0.5);
        break;
    case #"start_plane_rev":
        thread function_e9cf99c1();
        break;
    case #"hash_181bf4d7bd0b8108":
        thread function_26282537();
        break;
    case #"hash_6e37b7c047667b8e":
        thread function_eeb6e2e1();
        break;
    case #"hash_795bc852357a8d1d":
        thread function_97d155da();
        break;
    case #"hash_72dc7d49e5a3096a":
        thread function_c2636a93();
        break;
    case #"hash_4f97009133f1b2dc":
        thread function_882509d5();
        break;
    case #"hash_3031949ab2125e03":
        function_5af45515();
        break;
    case #"hash_57bb837937381b5e":
        function_f4c3ff4f();
        break;
    case #"hash_5b6ae81610d69a78":
        function_d701d197();
        break;
    case #"hash_2a6c48d5e64b11f4":
        function_91962847();
        break;
    case #"hash_6fbdea34819cb7c5":
        function_351d940();
        break;
    case #"hash_2a8cd855faea97bc":
        function_d3856f8a();
        break;
    case #"hash_4e3a33825e832ae6":
        function_ef8c9b18();
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<unknown string>" + snd::function_783b69(msg, "<unknown string>"));
        #/
        break;
    }
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 1, eflags: 0x6 linked
// Checksum 0x6d24e0f8, Offset: 0x1330
// Size: 0x2e2
function private _objective(objective) {
    players = snd::function_da785aa8();
    player = players[0];
    level thread function_8cb75a6();
    switch (objective) {
    case #"chapter_selection":
        break;
    case #"post_takedown":
    case #"post_takedown_skip_briefing":
        level.var_28b99ea7 = "post_takedown";
        function_a269371b();
        break;
    case #"post_armada":
    case #"post_armada_skip_briefing":
        level.var_28b99ea7 = "post_armada";
        function_a269371b();
        snd::function_645c2f9b(player, "thunder_int");
        break;
    case #"post_yamantau":
    case #"post_yamantau_skip_briefing":
        level.var_28b99ea7 = "post_yamantau";
        function_a269371b();
        break;
    case #"post_kgb":
    case #"post_kgb_skip_briefing":
        level.var_28b99ea7 = "post_kgb";
        function_a269371b();
        break;
    case #"post_cuba":
    case #"hash_6245569317a5039e":
        level.var_28b99ea7 = "post_cuba";
        function_a269371b();
        break;
    case #"hash_4738825a1fd6beb8":
    case #"hash_65bc9e5b3b128daf":
        level.var_28b99ea7 = "post_prisoner";
        function_a269371b();
        break;
    case #"hash_2af641a7d0cd9ad3":
        level.var_28b99ea7 = "post_prisoner_burn_scene";
        function_a269371b();
        break;
    case #"no_game":
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<unknown string>" + objective + "<unknown string>");
        #/
        break;
    }
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x3049388, Offset: 0x1620
// Size: 0x94
function function_b4de7637() {
    var_997ec4ec = [["emt_thunder_int_cp_ger_hub", (-64, -200, 60), [14, 21], 1800]];
    snd::function_b4de7637("thunder_int", var_997ec4ec);
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xf44339ff, Offset: 0x16c0
// Size: 0x14ec
function function_8cb75a6() {
    if (!isarray(level.var_2de628a1)) {
        level.var_2de628a1 = [];
        level.var_2de628a1[#"adler"][#"default"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"lazar"][#"default"] = [["attire", "casual"], ["footwear", "sneaker"]];
        level.var_2de628a1[#"park"][#"default"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"sims"][#"default"] = [["attire", "tactical"], ["footwear", "combat_boot"]];
        level.var_2de628a1[#"hudson"][#"default"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"woods"][#"default"] = [["attire", "tactical"], ["footwear", "combat_boot"]];
        level.var_2de628a1[#"mason"][#"default"] = [["attire", "tactical"], ["footwear", "combat_boot"]];
        level.var_2de628a1[#"adler"][#"post_takedown"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"lazar"][#"post_takedown"] = [["attire", "casual"], ["footwear", "sneaker"]];
        level.var_2de628a1[#"park"][#"post_takedown"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"sims"][#"post_takedown"] = [["attire", "tactical"], ["footwear", "combat_boot"]];
        level.var_2de628a1[#"hudson"][#"post_takedown"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"adler"][#"post_armada"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"lazar"][#"post_armada"] = [["attire", "winter"], ["footwear", "cowboy_boot"]];
        level.var_2de628a1[#"park"][#"post_armada"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"sims"][#"post_armada"] = [["attire", "tactical"], ["footwear", "combat_boot"]];
        level.var_2de628a1[#"hudson"][#"post_armada"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"adler"][#"post_yamantau"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"lazar"][#"post_yamantau"] = [["attire", "winter"], ["footwear", "cowboy_boot"]];
        level.var_2de628a1[#"park"][#"post_yamantau"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"sims"][#"post_yamantau"] = [["attire", "tactical"], ["footwear", "combat_boot"]];
        level.var_2de628a1[#"hudson"][#"post_yamantau"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"adler"][#"post_kgb"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"lazar"][#"post_kgb"] = [["attire", "winter"], ["footwear", "cowboy_boot"]];
        level.var_2de628a1[#"park"][#"post_kgb"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"sims"][#"post_kgb"] = [["attire", "tactical"], ["footwear", "combat_boot"]];
        level.var_2de628a1[#"hudson"][#"post_kgb"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"woods"][#"post_kgb"] = [["attire", "casual"], ["footwear", "combat_boot"]];
        level.var_2de628a1[#"mason"][#"post_kgb"] = [["attire", "casual"], ["footwear", "combat_boot"]];
        level.var_2de628a1[#"adler"][#"post_cuba"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"lazar"][#"post_cuba"] = [["attire", "tactical"], ["footwear", "cowboy_boot"]];
        level.var_2de628a1[#"park"][#"post_cuba"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"sims"][#"post_cuba"] = [["attire", "tactical"], ["footwear", "combat_boot"]];
        level.var_2de628a1[#"hudson"][#"post_cuba"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"adler"][#"hash_4738825a1fd6beb8"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"lazar"][#"hash_4738825a1fd6beb8"] = [["attire", "winter"], ["footwear", "cowboy_boot"]];
        level.var_2de628a1[#"park"][#"hash_4738825a1fd6beb8"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
        level.var_2de628a1[#"sims"][#"hash_4738825a1fd6beb8"] = [["attire", "tactical"], ["footwear", "combat_boot"]];
        level.var_2de628a1[#"hudson"][#"hash_4738825a1fd6beb8"] = [["attire", "leather"], ["footwear", "dress_shoe"]];
    }
    level.var_dafd41b2 = [];
    snd::waitforplayers();
    while (!isdefined(level.adler)) {
        waitframe(1);
    }
    waittillframeend();
    level.var_dafd41b2[#"adler"] = level.adler;
    level.var_dafd41b2[#"lazar"] = level.lazar;
    level.var_dafd41b2[#"park"] = level.park;
    level.var_dafd41b2[#"sims"] = level.sims;
    level.var_dafd41b2[#"hudson"] = level.hudson;
    level.var_dafd41b2[#"woods"] = level.woods;
    level.var_dafd41b2[#"mason"] = level.mason;
    arrayremovevalue(level.var_dafd41b2, undefined, 1);
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 2, eflags: 0x2 linked
// Checksum 0xba16001, Offset: 0x2bb8
// Size: 0x1b4
function function_952e21e3(ent, name) {
    self endon(#"death");
    while (!isdefined(level.var_28b99ea7)) {
        waitframe(1);
    }
    waittillframeend();
    visit = level.var_28b99ea7;
    contexts = level.var_2de628a1[name][visit];
    if (!isdefined(contexts)) {
        contexts = level.var_2de628a1[name][#"default"];
    }
    if (snd::function_81fac19d(!isarray(contexts), "allies_context_init '" + name + "' has no default context!")) {
        return;
    }
    foreach (context in contexts) {
        type = context[0];
        value = context[1];
        ent setsoundentcontext(type, value);
    }
    ent playsound(0, "fly_step_walk_npc_default");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x2c55f283, Offset: 0x2d78
// Size: 0xb8
function function_a269371b() {
    function_8cb75a6();
    if (isarray(level.var_dafd41b2)) {
        foreach (ally_name, ally in level.var_dafd41b2) {
            ally thread function_952e21e3(ally, ally_name);
        }
    }
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xfbee0fcf, Offset: 0x2e38
// Size: 0x54
function function_34050dad() {
    wait(5);
    audio::snd_set_snapshot("cp_tkdn_hit3_overlook_duk");
    level waittill(#"start_sniping");
    audio::snd_set_snapshot("");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xae3f2d4c, Offset: 0x2e98
// Size: 0x1c
function function_26282537() {
    forceambientroom("ext");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x955ab737, Offset: 0x2ec0
// Size: 0x1c
function function_eeb6e2e1() {
    forceambientroom("main_int");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xc8d5410e, Offset: 0x2ee8
// Size: 0x1c
function function_97d155da() {
    forceambientroom("");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x645cf15, Offset: 0x2f10
// Size: 0x1bc
function function_c2636a93() {
    while (!isdefined(level.sims)) {
        waitframe(1);
    }
    audio::snd_set_snapshot("cp_ger_hub_dia_focus");
    if (isalive(level.adler)) {
        level.adler function_9974c822("cp_ger_hub_dia_focus");
    }
    if (isalive(level.park)) {
        level.park function_9974c822("cp_ger_hub_dia_focus");
    }
    if (isalive(level.lazar)) {
        level.lazar function_9974c822("cp_ger_hub_dia_focus");
    }
    if (isalive(level.sims)) {
        level.sims function_9974c822("cp_ger_hub_dia_focus");
    }
    if (isalive(level.hudson)) {
        level.hudson function_9974c822("cp_ger_hub_dia_focus");
    }
    if (isalive(level.mason)) {
        level.mason function_9974c822("cp_ger_hub_dia_focus");
    }
    if (isalive(level.woods)) {
        level.woods function_9974c822("cp_ger_hub_dia_focus");
    }
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x9e404363, Offset: 0x30d8
// Size: 0x1bc
function function_882509d5() {
    while (!isdefined(level.sims)) {
        waitframe(1);
    }
    audio::snd_set_snapshot("");
    if (isalive(level.adler)) {
        level.adler function_5dcc74d1("cp_ger_hub_dia_focus");
    }
    if (isalive(level.park)) {
        level.park function_5dcc74d1("cp_ger_hub_dia_focus");
    }
    if (isalive(level.lazar)) {
        level.lazar function_5dcc74d1("cp_ger_hub_dia_focus");
    }
    if (isalive(level.sims)) {
        level.sims function_5dcc74d1("cp_ger_hub_dia_focus");
    }
    if (isalive(level.hudson)) {
        level.hudson function_5dcc74d1("cp_ger_hub_dia_focus");
    }
    if (isalive(level.mason)) {
        level.mason function_5dcc74d1("cp_ger_hub_dia_focus");
    }
    if (isalive(level.woods)) {
        level.woods function_5dcc74d1("cp_ger_hub_dia_focus");
    }
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x5a16f5ef, Offset: 0x32a0
// Size: 0x344
function function_5af45515() {
    snd::play("emt_cp_ger_hub_ham_radio_scanner", (-118, 153, 61));
    snd::play("emt_cp_ger_hub_tape_mach_interview", (-306, 167, 56));
    snd::play("evt_tape_machine_reels_lp", (-292, 101, 60));
    snd::play("vox_cp_ger_hub_radio_park_surveillance_01", (-287, 102, 49));
    snd::play("evt_fluorescent_light", (-240, -1108, 118));
    snd::play("evt_fluorescent_light", (-240, -810, 118));
    snd::play("evt_fluorescent_light", (-81, -577, 145));
    snd::play("evt_fluorescent_light", (76, -580, 146));
    snd::play("evt_fridge_hum_low", (-63, 177, 10));
    snd::play("emt_generator_room_tone_cp_ger_hub_lp", (-362, 463, -80));
    snd::play("emt_fan_industrial_cp_ger_hub_lp", (-257, 415, 145));
    snd::play("emt_safehouse_night_crickets_lp", (302, -395, 72));
    snd::emitter("emt_safehouse_garage_door_rattles", (281, -161, 123), [14, 15, 8, 14]);
    snd::emitter("emt_safehouse_metal_building_groans", (-253, 560, 334), [14, 15, 8, 17]);
    snd::emitter("emt_safehouse_metal_building_groans", (73, -512, 286), [16, 17, 9, 16]);
    snd::emitter("emt_safehouse_metal_building_groans", (-789, -176, 283), [14, 15, 10, 18]);
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x7cd92040, Offset: 0x35f0
// Size: 0x3bc
function function_f4c3ff4f() {
    snd::play("emt_cp_ger_hub_ham_radio_scanner", (-118, 153, 61));
    snd::play("emt_cp_ger_hub_tape_mach_interview", (-306, 167, 56));
    snd::play("evt_tape_machine_reels_lp", (-292, 101, 60));
    snd::play("vox_cp_ger_hub_radio_park_surveillance_03", (-287, 102, 49));
    snd::play("evt_fluorescent_light", (-240, -1108, 118));
    snd::play("evt_fluorescent_light", (-240, -810, 118));
    snd::play("evt_fluorescent_light", (-81, -577, 145));
    snd::play("evt_fluorescent_light", (76, -580, 146));
    snd::play("evt_fridge_hum_low", (-63, 177, 10));
    snd::play("emt_generator_room_tone_cp_ger_hub_lp", (-362, 463, -80));
    snd::play("emt_rain_garage_door_int_lp", (286, -204, 60));
    snd::play("emt_rain_metal_door_half_open_int_lp", (279, -389, 5));
    snd::play("emt_rain_metal_door_closed_int_lp", (-228, -1532, 54));
    snd::play("evt_fan_portable_idle_armada_lp", (73, 61, 54));
    snd::play("evt_fan_portable_idle_armada_lp", (94, 567, 56));
    snd::emitter("emt_safehouse_garage_door_rattles", (281, -161, 123), [14, 15, 8, 14]);
    snd::emitter("emt_safehouse_metal_building_groans", (-253, 560, 334), [14, 15, 8, 17]);
    snd::emitter("emt_safehouse_metal_building_groans", (73, -512, 286), [16, 17, 9, 16]);
    snd::emitter("emt_safehouse_metal_building_groans", (-789, -176, 283), [14, 15, 10, 18]);
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xfc0260f5, Offset: 0x39b8
// Size: 0x254
function function_d701d197() {
    snd::play("emt_fan_industrial_cp_ger_hub_lp", (-257, 415, 145));
    snd::play("emt_generator_room_tone_cp_ger_hub_lp", (-362, 463, -80));
    snd::play("evt_fan_portable_idle_armada_lp", (73, 61, 54));
    snd::play("evt_fan_portable_idle_armada_lp", (94, 567, 56));
    snd::play("evt_fridge_hum_low", (-63, 177, 10));
    snd::play("emt_safehouse_morning_birds_lp", (302, -395, 72));
    snd::emitter("emt_safehouse_garage_door_rattles", (281, -161, 123), [27, 30, 8, 14]);
    snd::emitter("emt_safehouse_metal_building_groans", (-253, 560, 334), [27, 30, 8, 17]);
    snd::emitter("emt_safehouse_metal_building_groans", (73, -512, 286), [27, 30, 9, 16]);
    snd::emitter("emt_safehouse_metal_building_groans", (-789, -176, 283), [27, 30, 10, 18]);
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x81f8bdc0, Offset: 0x3c18
// Size: 0x27c
function function_91962847() {
    snd::play("emt_fan_industrial_cp_ger_hub_lp", (-257, 415, 145));
    snd::play("emt_generator_room_tone_cp_ger_hub_lp", (-362, 463, -80));
    snd::play("evt_fridge_hum_low", (-63, 177, 10));
    snd::play("evt_fluorescent_light", (-240, -1108, 118));
    snd::play("evt_fluorescent_light", (-240, -810, 118));
    snd::play("evt_fluorescent_light", (-81, -577, 145));
    snd::play("emt_projector_idle_lp", (72, 261, 46));
    snd::emitter("emt_safehouse_garage_door_rattles", (281, -161, 123), [14, 15, 8, 14]);
    snd::emitter("emt_safehouse_metal_building_groans", (-253, 560, 334), [14, 15, 8, 17]);
    snd::emitter("emt_safehouse_metal_building_groans", (73, -512, 286), [16, 17, 9, 16]);
    snd::emitter("emt_safehouse_metal_building_groans", (-789, -176, 283), [14, 15, 10, 18]);
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x702512dd, Offset: 0x3ea0
// Size: 0x2a4
function function_351d940() {
    snd::play("emt_cp_ger_hub_ham_radio_scanner", (-118, 153, 61));
    snd::play("emt_cp_ger_hub_tape_mach_interview", (-306, 167, 56));
    snd::play("evt_tape_machine_reels_lp", (-292, 101, 60));
    snd::play("evt_fluorescent_light", (-240, -1108, 118));
    snd::play("evt_fluorescent_light", (-240, -810, 118));
    snd::play("evt_fluorescent_light", (-81, -577, 145));
    snd::play("evt_fluorescent_light", (76, -580, 146));
    snd::play("evt_fridge_hum_low", (-63, 177, 10));
    snd::emitter("emt_safehouse_garage_door_rattles", (281, -161, 123), [14, 15, 8, 14]);
    snd::emitter("emt_safehouse_metal_building_groans", (-253, 560, 334), [14, 15, 8, 17]);
    snd::emitter("emt_safehouse_metal_building_groans", (73, -512, 286), [16, 17, 9, 16]);
    snd::emitter("emt_safehouse_metal_building_groans", (-789, -176, 283), [14, 15, 10, 18]);
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x56b83c7, Offset: 0x4150
// Size: 0xa4
function function_d3856f8a() {
    snd::play("evt_fan_portable_idle_armada_lp", (73, 61, 54));
    snd::play("emt_fan_industrial_cp_ger_hub_lp", (-257, 415, 145));
    snd::play("emt_generator_room_tone_cp_ger_hub_lp", (-362, 463, -80));
    snd::play("emt_safehouse_night_crickets_lp", (302, -395, 72));
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x398b07ad, Offset: 0x4200
// Size: 0x204
function function_ef8c9b18() {
    snd::play("evt_fan_portable_idle_armada_lp", (73, 61, 54));
    snd::play("emt_fire_messageboard_hvy_01_lp", (42, 90, 15));
    snd::play("emt_fire_wood_hvy_01_lp", (-395, -275, 14));
    snd::play("emt_fire_wood_med_01_lp", (-281, 100, 47));
    snd::emitter("emt_safehouse_garage_door_rattles", (281, -161, 123), [14, 15, 8, 14]);
    snd::emitter("emt_safehouse_metal_building_groans", (-253, 560, 334), [14, 15, 8, 17]);
    snd::emitter("emt_safehouse_metal_building_groans", (73, -512, 286), [16, 17, 9, 16]);
    snd::emitter("emt_safehouse_metal_building_groans", (-789, -176, 283), [14, 15, 10, 18]);
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x14c2ae8f, Offset: 0x4410
// Size: 0x5c
function function_cb00a128() {
    var_18dbd2db = snd::play("quad_tkd_af_dist_plane_wash_front_lp", 2);
    level waittill(#"hash_1e58e46360c0a83b");
    snd::stop(var_18dbd2db, 2);
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x3df45a10, Offset: 0x4478
// Size: 0xdc
function function_755bfc95() {
    walla = snd::play("emt_tkd_walla_plane_workers_temp", [level.var_a7c3bf6d, "tag_origin"]);
    loaders = snd::play("emt_tkd_cargo_loading_vehicles_lp", [level.var_a7c3bf6d, "tag_origin"]);
    level waittill(#"hash_1e58e46360c0a83b");
    snd::stop(walla, 2);
    snd::stop(loaders, 2);
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x0
// Checksum 0x1993459d, Offset: 0x4560
// Size: 0x3e
function function_913d2991() {
    wait(1.5);
    var_913d2991 = snd::play("emt_tkd_walla_runway_panic_temp", (-49618, -55463, -25053));
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x2c21081d, Offset: 0x45a8
// Size: 0x6c
function function_955f4842() {
    wait(5);
    start = snd::play("veh_tkd_af_cargo_plane_start", [level.var_a7c3bf6d, "tag_origin"]);
    thread function_2d8bbe54(2);
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 1, eflags: 0x2 linked
// Checksum 0x4d289d0e, Offset: 0x4620
// Size: 0x134
function function_2d8bbe54(wait_time) {
    wait_time = snd::function_ea2f17d1(wait_time, 0.5);
    level.var_abe3f688 = snd::play("veh_tkd_af_cargo_plane_idle_lp", [level.var_a7c3bf6d, "tag_origin"]);
    snd::function_db78159d(level.var_abe3f688, 0);
    snd::function_964c3a03(level.var_abe3f688, 1);
    thread function_755bfc95();
    thread function_cb00a128();
    wait(wait_time);
    snd::function_db78159d(level.var_abe3f688, 1, 0.5);
    level waittill(#"hash_1c43601f4e93efcd");
    snd::stop(level.var_abe3f688, 5);
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x5f83d286, Offset: 0x4760
// Size: 0x7c
function function_e9cf99c1() {
    snd::function_964c3a03(level.var_abe3f688, snd::function_d8b24901(8), 1);
    snd::play("veh_tkd_af_cargo_plane_accelerate", [level.var_a7c3bf6d, "tag_origin"]);
}

