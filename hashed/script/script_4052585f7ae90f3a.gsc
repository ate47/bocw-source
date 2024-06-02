// Atian COD Tools GSC CW decompiler test
#using script_54412fb3a6fab34c;
#using script_85cd2e9a28ea8a1;
#using scripts\cp_common\snd_utility.gsc;
#using script_3dc93ca9902a9cda;
#using scripts\cp_common\snd.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\audio_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_4ed3ce47;

// Namespace namespace_4ed3ce47/level_preinit
// Params 1, eflags: 0x24
// Checksum 0xbdb2dbb3, Offset: 0x958
// Size: 0x3c
function private event_handler[level_preinit] function_b489bb7b(*eventstruct) {
    snd::function_5e69f468(&_objective);
    snd::function_294cb4fa();
}

// Namespace namespace_4ed3ce47/event_cc819519
// Params 1, eflags: 0x24
// Checksum 0x4a4ad908, Offset: 0x9a0
// Size: 0xdc
function private event_handler[event_cc819519] function_686b88aa(*eventstruct) {
    snd::function_294cb4fa();
    snd::waitforplayers();
    level.var_dafd41b2 = [];
    level thread function_f58905f1();
    level thread function_28dfb441();
    /#
        snd::dvar("evt_fan_portable_switch_on", "prisoner_lie" + 4, &function_5e7cc862);
        snd::dvar("duck_cp_ger_hub_arcade_machine_enter", "prisoner_lie" + 40, &function_5e7cc862);
    #/
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x90614c67, Offset: 0xa88
// Size: 0x1c
function function_8bd27331() {
    snd::play("evt_cp_ger_hub_radio_alert_team_lie");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x197d16c4, Offset: 0xab0
// Size: 0x1c
function function_ab00949e() {
    snd::play("evt_cp_ger_hub_tv_change");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x144162cb, Offset: 0xad8
// Size: 0x8c
function function_89070bfe() {
    snd::play("emt_fire_flareup_safehouse_03", (-2.7, -569.5, 16.3));
    var_f5de4997 = (-2.7, -569.5, 16.3);
    var_13cb0a3a = "emt_fire_gasoline_safehouse_hvy_01_lp";
    level.var_89070bfe = snd::play(var_13cb0a3a, var_f5de4997);
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xb3b1f48d, Offset: 0xb70
// Size: 0x7c
function function_8d5b23ae() {
    snd::play("emt_fire_flareup_safehouse_02", (-368, 298, 7));
    var_b22a1a58 = (-368, 298, 7);
    var_73f21acc = "emt_fire_gasoline_safehouse_hvy_02_lp";
    level.var_8d5b23ae = snd::play(var_73f21acc, var_b22a1a58);
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 1, eflags: 0x2 linked
// Checksum 0xcc24cb85, Offset: 0xbf8
// Size: 0x48
function function_5bae4a7e(alias) {
    level.var_629f8c1e[alias] = snd::play(alias, (-299.926, 134.423, 33.9824));
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 1, eflags: 0x2 linked
// Checksum 0xbb1fbf, Offset: 0xc48
// Size: 0x54
function function_1ca6cc19(alias) {
    if (isdefined(level.var_629f8c1e[alias])) {
        snd::stop(level.var_629f8c1e[alias]);
        level.var_629f8c1e[alias] = undefined;
    }
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xafa898c4, Offset: 0xca8
// Size: 0x7c
function function_90b786f0() {
    function_1ca6cc19("emt_tapemach_nagra_play_lp");
    function_1ca6cc19("emt_tapemach_nagra_rew_lp");
    function_1ca6cc19("emt_tapemach_nagra_ff_lp");
    function_1ca6cc19("emt_tapemach_nagra_rec_lp");
    function_1ca6cc19("emt_tapemach_nagra_idle_lp");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xdcba5371, Offset: 0xd30
// Size: 0x7c
function function_8f4b8ec9() {
    snd::stop(level.var_9506561c);
    snd::stop(level.var_30b99a98);
    snd::stop(level.var_625dc7b3);
    level.var_625dc7b3 = snd::play("vox_cp_ger_hub_radio_park_surveillance_02", (-292, 166, 42));
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x9f2cbe6d, Offset: 0xdb8
// Size: 0x7c
function function_326eae5c() {
    snd::stop(level.var_9506561c);
    snd::stop(level.var_30b99a98);
    snd::stop(level.var_625dc7b3);
    level.var_30b99a98 = snd::play("vox_cp_ger_hub_radio_park_surveillance_ff", (-292, 166, 42));
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xb9b91579, Offset: 0xe40
// Size: 0x7c
function function_12b07b90() {
    snd::stop(level.var_9506561c);
    snd::stop(level.var_30b99a98);
    snd::stop(level.var_625dc7b3);
    level.var_9506561c = snd::play("vox_cp_ger_hub_radio_park_surveillance_rew", (-292, 166, 42));
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xa580c797, Offset: 0xec8
// Size: 0x4c
function function_a6bc28c4() {
    snd::stop(level.var_30b99a98);
    snd::stop(level.var_625dc7b3);
    snd::stop(level.var_9506561c);
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x67fd2391, Offset: 0xf20
// Size: 0x110
function function_f58905f1() {
    level.var_629f8c1e = [];
    while (true) {
        var_c5e8d21e = function_9b8a74e0(self, "nagra_play", "nagra_rew", "nagra_ff", "nagra_stop", "nagra_rec");
        function_90b786f0();
        function_5bae4a7e("emt_tapemach_" + var_c5e8d21e + "_lp");
        snd::play("emt_tapemach_nagra_trans_button_push", (-299.926, 134.423, 33.9824));
        snd::play("emt_tapemach_" + var_c5e8d21e + "_mech", (-299.926, 134.423, 33.9824));
    }
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 6, eflags: 0x2 linked
// Checksum 0x38c24566, Offset: 0x1038
// Size: 0x19a
function function_9b8a74e0(otherent, string1, string2, string3, string4, string5) {
    otherent endon(#"death");
    ent = spawnstruct();
    if (isdefined(string1)) {
        level thread util::waittill_level_string(string1, ent, otherent);
    }
    if (isdefined(string2)) {
        level thread util::waittill_level_string(string2, ent, otherent);
    }
    if (isdefined(string3)) {
        level thread util::waittill_level_string(string3, ent, otherent);
    }
    if (isdefined(string4)) {
        level thread util::waittill_level_string(string4, ent, otherent);
    }
    if (isdefined(string5)) {
        level thread util::waittill_level_string(string5, ent, otherent);
    }
    if (isdefined(otherent)) {
        otherent thread util::waittill_string("death", ent);
    }
    waitresult = ent waittill(#"returned");
    ent notify(#"die");
    return waitresult.msg;
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 1, eflags: 0x6 linked
// Checksum 0xb9e3ce81, Offset: 0x11e0
// Size: 0x18a
function private _objective(objective) {
    level thread function_8cb75a6();
    switch (objective) {
    case #"chapter_selection":
        break;
    case #"post_takedown":
    case #"post_takedown_skip_briefing":
        break;
    case #"post_armada":
    case #"post_armada_skip_briefing":
        break;
    case #"post_yamantau":
    case #"post_yamantau_skip_briefing":
        break;
    case #"post_kgb":
    case #"post_kgb_skip_briefing":
        break;
    case #"post_cuba":
    case #"hash_6245569317a5039e":
        break;
    case #"hash_4738825a1fd6beb8":
    case #"hash_65bc9e5b3b128daf":
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

// Namespace namespace_4ed3ce47/runnotetrackhandler
// Params 1, eflags: 0x24
// Checksum 0xd1ea00db, Offset: 0x1378
// Size: 0x9c
function private event_handler[runnotetrackhandler] runnotetrackhandler(eventstruct) {
    assert(isarray(eventstruct.notetracks));
    for (index = 0; index < eventstruct.notetracks.size; index++) {
        ent = eventstruct.entity;
        notetrack = eventstruct.notetracks[index];
        if (isdefined(notetrack)) {
        }
    }
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x7c6aaf82, Offset: 0x1420
// Size: 0x398
function function_8cb75a6() {
    level.var_dafd41b2 = [];
    snd::waitforplayers();
    while (!isdefined(level.adler)) {
        waitframe(1);
    }
    level.var_dafd41b2[level.var_dafd41b2.size] = level.adler;
    level.var_dafd41b2[level.var_dafd41b2.size] = level.lazar;
    level.var_dafd41b2[level.var_dafd41b2.size] = level.park;
    level.var_dafd41b2[level.var_dafd41b2.size] = level.sims;
    level.var_dafd41b2[level.var_dafd41b2.size] = level.hudson;
    level.var_dafd41b2[level.var_dafd41b2.size] = level.woods;
    level.var_dafd41b2[level.var_dafd41b2.size] = level.mason;
    arrayremovevalue(level.var_dafd41b2, undefined);
    var_c11d92ab = [];
    var_c11d92ab[#"adler"] = "adler";
    var_c11d92ab[#"lazar"] = "lazar";
    var_c11d92ab[#"park"] = "park";
    var_c11d92ab[#"sims"] = "sims";
    var_c11d92ab[#"hudson"] = "hudson";
    var_c11d92ab[#"woods"] = "woods";
    var_c11d92ab[#"mason"] = "mason";
    var_c11d92ab[#"hash_4a80558bcd5f168d"] = "adler";
    var_c11d92ab[#"lazar_cuba"] = "lazar";
    var_c11d92ab[#"park_cuba"] = "park";
    var_c11d92ab[#"hash_36e48d20b2a2a817"] = "sims";
    var_c11d92ab[#"hash_1cdd5d46cf8f0056"] = "hudson";
    var_c11d92ab[#"hash_4d2b01aab553821b"] = "woods";
    var_c11d92ab[#"hash_2f2bc790a3127bb"] = "mason";
    foreach (ally in level.var_dafd41b2) {
        if (isstring(ally.targetname)) {
            name = var_c11d92ab[ally.targetname];
            if (snd::function_81fac19d(!isdefined(name), "allies_init '" + ally.targetname + "' has no remapped name!")) {
                continue;
            }
            snd::function_b23661d5(ally, name);
        }
    }
}

/#

    // Namespace namespace_4ed3ce47/namespace_9d055984
    // Params 2, eflags: 0x0
    // Checksum 0x8a7e459a, Offset: 0x17c0
    // Size: 0x42
    function function_5e7cc862(*key, value) {
        function_4b193e02();
        function_8a58b4f();
        return value;
    }

#/

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x0
// Checksum 0xae263644, Offset: 0x1810
// Size: 0xae
function function_4b193e02() {
    level notify(#"hash_7ad75056b30c451a");
    level notify(#"hash_63850bb43dbc38de");
    foreach (ally in level.var_dafd41b2) {
        ally.var_2de4672c = undefined;
    }
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 1, eflags: 0x2 linked
// Checksum 0xc6ca1cc2, Offset: 0x18c8
// Size: 0x17a
function function_c26120ff(ent) {
    type = array::random(["cough", "sniff", "throat"]);
    name = ent.targetname;
    if (isstring(name)) {
        if (issubstr(name, "adler")) {
            name = "adler";
        }
        if (issubstr(name, "lazar")) {
            name = "lazar";
        }
        if (issubstr(name, "mason")) {
            name = "mason";
        }
        if (issubstr(name, "park")) {
            name = "park";
        }
    }
    alias = "vox_" + name + "_" + type;
    if (!soundexists(alias)) {
        return ("vox_male_" + type);
    }
    return alias;
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xdd886f2c, Offset: 0x1a50
// Size: 0x120
function function_8a58b4f() {
    min_time = getdvarfloat(#"hash_5a9d5543cb5829b3", 4);
    max_time = getdvarfloat(#"hash_5ab96b43cb70c9cd", 40);
    foreach (ally in level.var_dafd41b2) {
        if (!isdefined(ally.var_2de4672c)) {
            ally thread snd::function_9299618(&function_c26120ff, [min_time, max_time]);
        }
    }
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x94656643, Offset: 0x1b78
// Size: 0x7c
function function_28dfb441() {
    level waittill(#"hash_92004b21ffa8edc");
    wait(0.1);
    /#
        snd::function_81fac19d(snd::function_d78e3644(), "<unknown string>");
    #/
    level thread function_8cb75a6();
    function_8a58b4f();
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 1, eflags: 0x2 linked
// Checksum 0xd5670792, Offset: 0x1c00
// Size: 0xe8
function function_93cce074(n_start_time) {
    self endon(#"death");
    level.var_d14d678 = "emt_wall_clock_tick";
    var_30d4078d = n_start_time * 3600 - 4;
    time_offset = var_30d4078d / 30;
    var_4d3606d8 = int(time_offset);
    var_258bfe43 = time_offset - var_4d3606d8;
    wait_time = 1 - var_258bfe43;
    wait(var_258bfe43);
    while (isdefined(self)) {
        self snd::play(level.var_d14d678, self);
        wait(1);
    }
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x7b597597, Offset: 0x1cf0
// Size: 0x1c
function function_c2636a93() {
    snd::function_7db65a93("dia_focus_on");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xbfe6c96e, Offset: 0x1d18
// Size: 0x1c
function function_882509d5() {
    snd::function_7db65a93("dia_focus_off");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xc291e8b6, Offset: 0x1d40
// Size: 0x1c
function function_97d155da() {
    snd::function_7db65a93("ambient_override_return_to_normal");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xb014de45, Offset: 0x1d68
// Size: 0x1c
function function_dbf416c4() {
    snd::function_7db65a93("ambient_ext_override");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xc44c073, Offset: 0x1d90
// Size: 0x1c
function function_c05156e2() {
    snd::function_7db65a93("ambient_int_override");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x436ad029, Offset: 0x1db8
// Size: 0x1c
function function_e81e970a() {
    snd::function_7db65a93("amb_takedown");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x27f88e8c, Offset: 0x1de0
// Size: 0x1c
function function_3c39b015() {
    snd::function_7db65a93("amb_armada");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xae3e9649, Offset: 0x1e08
// Size: 0x1c
function function_d701d197() {
    snd::function_7db65a93("amb_yamantau");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x477abf28, Offset: 0x1e30
// Size: 0x1c
function function_91962847() {
    snd::function_7db65a93("amb_kgb");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x4fec8e41, Offset: 0x1e58
// Size: 0x1c
function function_b7c50de7() {
    snd::function_7db65a93("amb_cuba");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xf57b19c4, Offset: 0x1e80
// Size: 0x1c
function function_d3856f8a() {
    snd::function_7db65a93("amb_prisoner");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x6ddf4747, Offset: 0x1ea8
// Size: 0x1c
function function_ef8c9b18() {
    snd::function_7db65a93("amb_burns");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xd5d6b5c1, Offset: 0x1ed0
// Size: 0x1c
function function_d2bce2b8() {
    snd::play("uin_transition_evidence_board_enter");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x6d7980ca, Offset: 0x1ef8
// Size: 0x1c
function function_dd520714() {
    snd::play("uin_transition_evidence_board_exit");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x9acb6af4, Offset: 0x1f20
// Size: 0x1c
function function_6fe99ae0() {
    snd::play("uin_map_whoosh_paper");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x6d527adf, Offset: 0x1f48
// Size: 0x1c
function function_f60575fd() {
    snd::play("uin_map_camera_move_whoosh");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x58c33d3b, Offset: 0x1f70
// Size: 0x7c
function function_dc08e48d() {
    snd::play("evt_fan_portable_switch_on", (57, -448, 19));
    snd::play("evt_fan_portable_idle_lp", (57, -448, 19));
    snd::play("evt_fan_portable_switch_on_ramp_up", (57, -448, 19));
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x444047b8, Offset: 0x1ff8
// Size: 0x2c
function function_7473e3ec() {
    snd::play("emt_projector_slide_change_forward", (72, 261, 46));
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 1, eflags: 0x2 linked
// Checksum 0xc1cdaf2d, Offset: 0x2030
// Size: 0x5aa
function function_7edafa59(str_msg) {
    if (isdefined(level.var_41fc1341)) {
        if (level.var_41fc1341 != str_msg) {
            level.var_2c9b406b = level.var_41fc1341;
        }
    }
    switch (str_msg) {
    case #"ambient":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("ambient");
        break;
    case #"hash_5e01e4aa0b21ce1d":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("evidence_board_main");
        break;
    case #"hash_75e670280bd9b6de":
        level.var_41fc1341 = str_msg;
        break;
    case #"post_takedown_briefing":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("briefing_takedown");
        break;
    case #"post_armada_briefing":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("briefing_armada");
        break;
    case #"post_yamantau_briefing":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("briefing_yamantau");
        break;
    case #"post_kgb_briefing":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("briefing_kgb");
        break;
    case #"post_cuba_briefing":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("briefing_cuba");
        break;
    case #"hash_210b4ac6f58c7279":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("briefing_prisoner");
        break;
    case #"hash_29d220b7fee85bbe":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("prisoner_part1_safehouse");
        break;
    case #"hash_5bf8edbf5c4855ad":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("prisoner_part2_takedown_flashback");
        break;
    case #"hash_4c115a2b5477280c":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("prisoner_part3_safehouse");
        break;
    case #"hash_289b349b05672334":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("prisoner_part4_vietnam_flashback");
        break;
    case #"hash_78d8f4233178e08a":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("prisoner_part5_safehouse");
        break;
    case #"hash_59f39bb536068a1":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("prisoner_part6_reddoor_flashback");
        break;
    case #"hash_672ea6854b14da18":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("prisoner_part7_safehouse");
        break;
    case #"hash_4fcd1eaf0bcc4b47":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("prisoner_part8_perseus_flashback");
        break;
    case #"hash_2ff2b2239a70ac96":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("prisoner_part9_safehouse");
        break;
    case #"hash_4c3601b94d00c72d":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("character_creation_screen");
        break;
    case #"hash_679e956b1aecbcdc":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("prisoner_lie");
        break;
    case #"none":
        level.var_41fc1341 = str_msg;
        music::setmusicstate("none");
        break;
    default:
        /#
            iprintlnbold("<unknown string>" + str_msg + "<unknown string>");
        #/
        break;
    }
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x51b97118, Offset: 0x25e8
// Size: 0x1c
function function_44ce38f6() {
    snd::play("uin_transition_lowender_takedown");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x617848db, Offset: 0x2610
// Size: 0x34
function function_986a1d46() {
    snd::play("fly_arcade_machine_interact_hub_approach");
    snd::function_7db65a93("duck_cp_ger_hub_arcade_machine_enter");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x104f4db3, Offset: 0x2650
// Size: 0x34
function function_799f2225() {
    snd::play("fly_arcade_machine_interact_hub_quit");
    snd::function_7db65a93("duck_cp_ger_hub_arcade_machine_exit");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x99b5c2ea, Offset: 0x2690
// Size: 0x3c
function function_e043da15() {
    level waittill(#"hash_30a43574a5dc7eaf");
    level thread function_7edafa59("ambient");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x6bfc445d, Offset: 0x26d8
// Size: 0x3c
function function_9ac95ec9() {
    level waittill(#"hash_1c9f12be6eb51878");
    level thread function_7edafa59("ambient");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x0
// Checksum 0x6dfc75ca, Offset: 0x2720
// Size: 0x3c
function function_37c997de() {
    level waittill(#"hash_55da63f0f51c5d6c");
    level thread function_7edafa59("ambient");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x3e0c841, Offset: 0x2768
// Size: 0x3c
function function_4aa573e7() {
    level waittill(#"hash_2a423f7844789ffa");
    level thread function_7edafa59("ambient");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xd73a51f3, Offset: 0x27b0
// Size: 0x3c
function function_d89aa829() {
    level waittill(#"hash_117dd9247812a234");
    level thread function_7edafa59("ambient");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x3b0da20e, Offset: 0x27f8
// Size: 0x3c
function function_46f173b2() {
    level waittill(#"hash_3b68231254fe41c0");
    level thread function_7edafa59("ambient");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xc971a9b9, Offset: 0x2840
// Size: 0x3c
function function_849d7772() {
    level waittill(#"hash_62067a3d17f16ce0");
    level thread function_7edafa59("ambient");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x1259c2ea, Offset: 0x2888
// Size: 0x24
function function_e25181b5() {
    level thread function_7edafa59("prisoner_lie");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x8d3c77cb, Offset: 0x28b8
// Size: 0x24
function function_a0289367() {
    level thread function_7edafa59("none");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xd7b049b2, Offset: 0x28e8
// Size: 0x24
function function_bc5cf85e() {
    level thread function_7edafa59("character_creation_screen");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x25377a6f, Offset: 0x2918
// Size: 0x24
function function_e522e5de() {
    level thread function_7edafa59("prisoner_part1_safehouse");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x787986bc, Offset: 0x2948
// Size: 0x24
function function_a59705f8() {
    level thread function_7edafa59("prisoner_part2_takedown_flashback");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x3bc41464, Offset: 0x2978
// Size: 0x24
function function_f526df02() {
    level thread function_7edafa59("prisoner_part3_safehouse");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x701b32b7, Offset: 0x29a8
// Size: 0x24
function function_3f60bc38() {
    level thread function_7edafa59("prisoner_part4_vietnam_flashback");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xb9b82e7a, Offset: 0x29d8
// Size: 0x24
function function_4825c155() {
    level thread function_7edafa59("prisoner_part5_safehouse");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x5ea31889, Offset: 0x2a08
// Size: 0x24
function function_85d1dd20() {
    level thread function_7edafa59("prisoner_part6_reddoor_flashback");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xed3d6709, Offset: 0x2a38
// Size: 0x24
function function_32eb5fd4() {
    level thread function_7edafa59("prisoner_part7_safehouse");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x7788dd1f, Offset: 0x2a68
// Size: 0x24
function function_d73cc011() {
    level thread function_7edafa59("prisoner_part8_perseus_flashback");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x33fae397, Offset: 0x2a98
// Size: 0x24
function function_7aef4705() {
    level thread function_7edafa59("prisoner_part9_safehouse");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xda825a7c, Offset: 0x2ac8
// Size: 0x1c
function function_acc6feb9() {
    snd::function_7db65a93("duck_evidence_board_enter");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x94aa5859, Offset: 0x2af0
// Size: 0x1c
function function_4612c96a() {
    snd::function_7db65a93("duck_evidence_board_exit");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xa66192d9, Offset: 0x2b18
// Size: 0x1c
function function_ef676505() {
    snd::function_7db65a93("post_armada");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xa1051cd0, Offset: 0x2b40
// Size: 0x1c
function function_2d62fc6f() {
    snd::function_7db65a93("post_kgb");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xa745286e, Offset: 0x2b68
// Size: 0x1c
function function_d6c61f8() {
    snd::function_7db65a93("post_cuba");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xe149d873, Offset: 0x2b90
// Size: 0x1c
function function_dd79396d() {
    snd::function_7db65a93("post_prisoner");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x55f3386b, Offset: 0x2bb8
// Size: 0x1c
function function_7f23d560() {
    snd::function_7db65a93("post_prisoner_burn_scene");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0xbe25a7fd, Offset: 0x2be0
// Size: 0x1c
function function_c7f31c4b() {
    snd::function_7db65a93("post_takedown");
}

// Namespace namespace_4ed3ce47/namespace_9d055984
// Params 0, eflags: 0x2 linked
// Checksum 0x652489af, Offset: 0x2c08
// Size: 0x1c
function function_938891c9() {
    snd::function_7db65a93("post_yamantau");
}

