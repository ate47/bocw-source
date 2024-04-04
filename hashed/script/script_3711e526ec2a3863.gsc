// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\snd_utility.gsc;
#using script_54412fb3a6fab34c;
#using script_3dc93ca9902a9cda;
#using scripts\cp_common\snd.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\music_shared.gsc;

#namespace namespace_72b0499b;

// Namespace namespace_72b0499b/namespace_268b0a5e
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x518
// Size: 0x4
function init_audio() {
    
}

// Namespace namespace_72b0499b/namespace_268b0a5e
// Params 0, eflags: 0x0
// Checksum 0x268dd42f, Offset: 0x528
// Size: 0xc4
function function_4e1b7477() {
    while (level.players.size == 0) {
        wait(0.25);
    }
    level.players[0] endon(#"death");
    level endon(#"hash_629da45ba6679aae");
    while (true) {
        level flag::wait_till("dambs_armada_base_playing");
        thread function_816f9a23();
        level flag::wait_till_clear("dambs_armada_base_playing");
        level notify(#"hash_57df777459b5086");
    }
}

// Namespace namespace_72b0499b/namespace_268b0a5e
// Params 0, eflags: 0x0
// Checksum 0xa5e21551, Offset: 0x5f8
// Size: 0xc4
function function_827cf084() {
    while (level.players.size == 0) {
        wait(0.25);
    }
    level.players[0] endon(#"death");
    level endon(#"hash_488f3af92d575e4d");
    while (true) {
        level flag::wait_till("dambs_armada_mortar_village_playing");
        thread function_62d67678();
        level flag::wait_till_clear("dambs_armada_mortar_village_playing");
        level notify(#"hash_629da45ba6679aae");
    }
}

// Namespace namespace_72b0499b/namespace_268b0a5e
// Params 0, eflags: 0x0
// Checksum 0x29ccf539, Offset: 0x6c8
// Size: 0xdc
function function_2cc7f62c() {
    while (level.players.size == 0) {
        wait(0.25);
    }
    level.players[0] endon(#"death");
    level endon(#"hash_6e7780f7f1e44599");
    while (true) {
        level flag::wait_till("dambs_armada_swamp_playing");
        thread function_54b26c90();
        level flag::wait_till_clear("dambs_armada_swamp_playing");
        level notify(#"hash_57df777459b5086");
        level notify(#"hash_488f3af92d575e4d");
    }
}

// Namespace namespace_72b0499b/namespace_268b0a5e
// Params 0, eflags: 0x0
// Checksum 0xe155839b, Offset: 0x7b0
// Size: 0xdc
function function_6cd6e708() {
    while (level.players.size == 0) {
        wait(0.25);
    }
    level.players[0] endon(#"death");
    level endon(#"hash_11376b46ca5b856e");
    while (true) {
        level flag::wait_till("dambs_armada_crash_playing");
        thread function_552d1d58();
        level flag::wait_till_clear("dambs_armada_crash_playing");
        level notify(#"hash_57df777459b5086");
        level notify(#"hash_6e7780f7f1e44599");
    }
}

// Namespace namespace_72b0499b/namespace_268b0a5e
// Params 0, eflags: 0x2 linked
// Checksum 0x25949243, Offset: 0x898
// Size: 0x794
function function_816f9a23() {
    snd::emitter("emt_wind_breeze", level.players[0], [10, 15, 10, 15]);
    snd::emitter("emt_nam_base_canvas_sweetener", (-9092, -71547.3, 1071.8), [2, 4], [0, 0], [0, 0]);
    snd::emitter("emt_nam_base_canvas_wind", (-9092, -71547.5, 1071.33), [14, 15], [0, 0], [0, 0]);
    snd::emitter("emt_heli_distant_flyover", level.players[0], [11, 17, 10, 15], [500, 650], [0, 0]);
    snd::emitter("emt_heli_distant_mono_flyover", level.players[0], [10, 17, 10, 15], [500, 650], [0, 0]);
    snd::emitter("amb_radio_oneshot", (-9910, -71384, 1050), [5, 11], [0, 0], [0, 0]);
    snd::emitter("amb_radio_oneshot", (-9893, -71400, 1051), [7, 12], [0, 0], [0, 0]);
    snd::emitter("amb_radio_oneshot", (-9713, -71944, 1055), [4, 8], [0, 0], [0, 0]);
    snd::emitter("amb_radio_oneshot", (-9635, -71998, 1057), [5, 9], [0, 0], [0, 0]);
    snd::emitter("amb_radio_oneshot", (-9725, -72024, 1057), [5, 11], [0, 0], [0, 0]);
    snd::emitter("amb_radio_oneshot", (-10467, -71363, 1061), [5, 11], [0, 0], [0, 0]);
    snd::emitter("emt_walla_armada_base_calm", level.players[0], [13, 15], [350, 750], [0, 0]);
    snd::emitter("emt_walla_armada_base_yell", level.players[0], [13, 16], [350, 750], [0, 0]);
    snd::emitter("emt_walla_armada_base_yell_short", level.players[0], [10, 15], [350, 750], [0, 0]);
    snd::emitter("emt_walla_armada_base_yell", (-10090, -73241, 1065), [11, 14], [0, 0], [0, 0]);
    snd::emitter("emt_walla_armada_base_yell_short", (-8680, -71504, 1165), [10, 15], [0, 0], [0, 0]);
}

// Namespace namespace_72b0499b/namespace_268b0a5e
// Params 0, eflags: 0x2 linked
// Checksum 0xe85aed62, Offset: 0x1038
// Size: 0xf04
function function_62d67678() {
    snd::emitter("emt_foliage_rustle_light", (-17917, 42063, 770), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_foliage_rustle_light", (-18005, 41844, 770), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_foliage_rustle_light", (-18246, 42188, 750), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_foliage_rustle_light", (-18465, 42476, 795), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_foliage_rustle_light", (-19424, 41721, 879), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_foliage_rustle_light", (-21149, 42321, 1066), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_foliage_rustle_light", (-21497, 42116, 1066), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_foliage_rustle_light", (-21764, 40218, 1094), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_foliage_rustle_light", (-20547, 38344, 1034), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_foliage_rustle_light", (-19255, 38504, 978), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_foliage_rustle_light", (-19262, 39331, 917), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_foliage_rustle_light", (-18193, 37664, 1047), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_foliage_rustle_light", (-17582, 39754, 586), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_foliage_rustle_light", (-17537, 40100, 576), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_foliage_rustle_light", (-18454, 41111, 533), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_nam_base_canvas_wind", (-19369, 40288, 800), [14, 15], [0, 0], [0, 0]);
    snd::emitter("emt_animal_birds_forest", (-18101, 42238, 954), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_animal_birds_forest", (-19346, 41684, 1075), [5, 12], [0, 0], [0, 0]);
    snd::emitter("emt_animal_birds_forest", (-21440, 42351, 1145), [5, 9], [0, 0], [0, 0]);
    snd::emitter("emt_nam_swamp_jungle_birds", (-22326, 40112, 1145), [7, 12], [0, 0], [0, 0]);
    snd::emitter("emt_animal_birds_forest", (-21707, 37928, 1201), [5, 10], [0, 0], [0, 0]);
    snd::emitter("emt_nam_swamp_jungle_birds", (-20230, 37827, 1201), [7, 11], [0, 0], [0, 0]);
    snd::emitter("emt_nam_animals_bird_mystery", (-18775, 38029, 1125), [8, 13], [0, 0], [0, 0]);
    snd::emitter("emt_foliage_wood_creaks_large", (-17343, 40343, 543), [9, 15], [0, 0], [0, 0]);
    snd::emitter("emt_nam_water_lapping_short", (-17282, 39821, 467), [4, 8], [0, 0], [0, 0]);
    snd::emitter("emt_nam_water_lapping_short", (-16920, 40840, 467), [4, 8], [0, 0], [0, 0]);
    snd::emitter("emt_nam_water_lapping_short", (-17091, 39287, 512), [4, 8], [0, 0], [0, 0]);
    snd::emitter("emt_wood_creaking_room", (-17854, 39134, 678), [5, 10], [0, 0], [0, 0]);
    snd::emitter("emt_wood_creaking_room", (-17155, 40476, 514), [5, 10], [0, 0], [0, 0]);
    snd::emitter("emt_wood_creaking_room", (-17096, 41070, 470), [5, 10], [0, 0], [0, 0]);
    snd::emitter("emt_nam_wood_forest_creak_deep", (-17854, 39134, 678), [5, 13], [0, 0], [0, 0]);
    snd::emitter("emt_nam_wood_forest_creak_deep", (-17096, 41070, 470), [5, 13], [0, 0], [0, 0]);
}

// Namespace namespace_72b0499b/namespace_268b0a5e
// Params 0, eflags: 0x2 linked
// Checksum 0x95b4f4c5, Offset: 0x1f48
// Size: 0xa1c
function function_54b26c90() {
    snd::emitter("emt_foliage_rustle_light", level.players[0], [6, 10, 11, 15], [300, 500], [0, 360]);
    snd::emitter("emt_animal_birds_forest", level.players[0], [15, 19, 10, 15], [500, 700], [0, 360]);
    snd::emitter("emt_wind_breeze", level.players[0], [8, 11, 10, 15], [300, 500], [0, 360]);
    snd::emitter("emt_nam_animals_howler_monkey", level.players[0], [12, 16, 11, 15], [200, 400], [0, 360]);
    snd::emitter("emt_nam_animals_gibbon_monkey", level.players[0], [7, 11, 10, 15], [200, 400], [0, 360]);
    snd::emitter("emt_nam_animals_bird_mystery", level.players[0], [8, 15, 10, 15], [400, 600], [0, 360]);
    snd::emitter("emt_nam_swamp_jungle_birds", level.players[0], [14, 21, 10, 15], [300, 500], [0, 360]);
    snd::emitter("emt_nam_wood_forest_creak_deep", level.players[0], [5, 13, 8, 15], [200, 500], [0, 360]);
    snd::emitter("emt_foliage_wood_creaks_large", level.players[0], [6, 16, 8, 15], [200, 500], [0, 360]);
    snd::emitter("emt_nam_jungle_foliage_breaks_medium_short", level.players[0], [12, 15], [100, 400], [0, 180]);
    snd::emitter("emt_nam_jungle_foliage_breaks_medium_long", level.players[0], [10, 15], [100, 400], [0, 180]);
    snd::emitter("emt_nam_jungle_foliage_breaks_medium_short", level.players[0], [9, 14], [100, 400], [0, 180]);
    snd::emitter("emt_nam_walla_viet_yell_long", level.players[0], [8, 15, 10, 15], [200, 300], [0, 180]);
    snd::emitter("emt_nam_walla_viet_yell_short", level.players[0], [8, 15, 10, 15], [200, 300], [0, 180]);
    snd::play("emt_nam_engine_hiss_high_lp", (41965, 62150, 1340));
    snd::emitter("emt_nam_engine_radiator_ones", (41965, 62150, 1340), [2, 4], [0, 0], [0, 0]);
    snd::emitter("emt_nam_engine_radiator_clinks", (41965, 62150, 1340), [3, 5], [0, 0], [0, 0]);
    snd::emitter("emt_nam_water_lapping_short", (41829, 62242, 1304), [5, 8], [0, 0], [0, 0]);
    snd::emitter("emt_nam_water_lapping_short", (41281, 62191, 1325), [5, 8], [0, 0], [0, 0]);
    snd::emitter("emt_nam_water_lapping_short", (42594, 62234, 1320), [5, 8], [0, 0], [0, 0]);
}

// Namespace namespace_72b0499b/namespace_268b0a5e
// Params 0, eflags: 0x2 linked
// Checksum 0xe0a42b6, Offset: 0x2970
// Size: 0x1b4
function function_552d1d58() {
    snd::emitter("emt_nam_gunfire_distant", level.players[0], [2, 4, 10, 15], [200, 800], [0, 0]);
    snd::emitter("emt_nam_exp_far", level.players[0], [3, 6, 10, 15], [400, 800], [0, 0]);
    snd::emitter("emt_nam_exp_medium", level.players[0], [2, 5, 10, 15], [400, 800], [0, 0]);
}

// Namespace namespace_72b0499b/namespace_268b0a5e
// Params 0, eflags: 0x2 linked
// Checksum 0xa9b3ae7c, Offset: 0x2b30
// Size: 0x17c
function function_132ea7de() {
    snd::emitter("amb_radio_oneshot", (-18790, 40029, 840), [3, 7], [0, 0], [0, 0]);
    snd::emitter("amb_radio_oneshot", (-18755, 40033, 841), [4, 8], [0, 0], [0, 0]);
    snd::play("amb_computer_lp", (-18740, 40203, 837));
    var_cfe894ed = snd::play("amb_behind_reddoor_rustling_lp", (-18859, 40343, 842));
    level waittill(#"hash_1c61fc6e80974e9");
    snd::stop(var_cfe894ed, 6);
}

// Namespace namespace_72b0499b/namespace_268b0a5e
// Params 3, eflags: 0x2 linked
// Checksum 0xeaf1a50a, Offset: 0x2cb8
// Size: 0x5c
function music(str_msg, n_delay = 0, var_37a6c96) {
    level thread function_7edafa59(str_msg, n_delay, var_37a6c96);
    level thread function_e80c0ccf(str_msg);
}

// Namespace namespace_72b0499b/namespace_268b0a5e
// Params 3, eflags: 0x2 linked
// Checksum 0xd8a1835, Offset: 0x2d20
// Size: 0x2d2
function function_7edafa59(str_msg, n_delay, var_37a6c96) {
    switch (str_msg) {
    case #"hash_6d6826a83750847":
    case #"hash_6d6826a83750847":
    case #"hash_7b111d62aba4e64":
    case #"hash_2c622a30dc731207":
    case #"hash_35d3f2d1bf79eb35":
    case #"hash_4c5ac549022188d4":
    case #"hash_4e895ec8a9bf0b63":
    case #"hash_572e961104184b52":
    case #"hash_5bfefcb798fc6c8a":
    case #"hash_63ee253a845cbefd":
        if (isdefined(var_37a6c96)) {
            flag::wait_till(var_37a6c96);
        }
        music::setmusicstate(str_msg, undefined, n_delay);
        break;
    case #"hash_15d512eeb8abc51e":
        if (isdefined(var_37a6c96)) {
            flag::wait_till(var_37a6c96);
        }
        music::setmusicstate(str_msg, undefined, n_delay);
        wait(1);
        music::setmusicstate("12.0_turret");
        break;
    case #"hash_2375b08205562389":
        if (isdefined(var_37a6c96)) {
            flag::wait_till(var_37a6c96);
        }
        music::setmusicstate(str_msg, undefined, n_delay);
        break;
    case #"hash_3c930a111db30f46":
        music::setmusicstate(str_msg, undefined, n_delay);
        wait(5);
        music::setmusicstate("5.0_village_combat");
        break;
    case #"hash_7a72528b9f2c2f90":
        music::function_edda155f(str_msg, n_delay);
        break;
    case #"hash_2193c42e21ea2e63":
        music::function_2af5f0ec(str_msg);
        break;
    case #"hash_4c4e6fe764aec250":
        music::setmusicstate("explo_stinger", undefined, n_delay);
        break;
    default:
        /#
            iprintlnbold("<unknown string>" + str_msg + "<unknown string>");
        #/
        break;
    }
}

// Namespace namespace_72b0499b/namespace_268b0a5e
// Params 1, eflags: 0x2 linked
// Checksum 0x8cac1376, Offset: 0x3000
// Size: 0x132
function function_e80c0ccf(str_msg) {
    switch (str_msg) {
    case #"hash_7b111d62aba4e64":
        snd::function_7db65a93(#"musictrack_cp_armada_1");
        waitframe(1);
        snd::function_7db65a93(#"musictrack_cp_armada_2");
        break;
    case #"hash_3c930a111db30f46":
    case #"hash_5bfefcb798fc6c8a":
        snd::function_7db65a93(#"musictrack_cp_armada_3");
        break;
    case #"hash_6d6826a83750847":
        snd::function_7db65a93(#"musictrack_cp_armada_4");
        break;
    case #"hash_4c5ac549022188d4":
        snd::function_7db65a93(#"musictrack_cp_armada_5");
        break;
    }
}

