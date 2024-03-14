// Atian COD Tools GSC CW decompiler test
#using script_49d63131b6de89a1;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_812a8849;

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x2 linked
// Checksum 0x4508621d, Offset: 0x9f8
// Size: 0xbd4
function init() {
    var_85b7df77 = array("lgt_gold_container_receptacle_on", "lgt_gold_container_receptacle_off");
    var_f7289d61 = array("lgt_env_powered_fx_on", "lgt_env_powered_on_room_04", "lgt_env_powered_on_room_05", "lgt_env_powered_on_room_06", "lgt_env_powered_on_room_07", "lgt_env_powered_on_room_08", "lgt_env_powered_on_room_09");
    var_130c06bc = array("lgt_env_powered_off_room_04", "lgt_env_powered_off_room_05", "lgt_env_powered_off_room_06", "lgt_env_powered_off_room_07", "lgt_env_powered_off_room_08", "lgt_env_powered_off_room_09", "lgt_env_powered_off_room_10");
    var_c480ccc5 = array("lgt_env_dark_aether", "lgt_env_dark_aether_on_crystal", "lgt_env_dark_aether_on_bio_01", "lgt_env_dark_aether_on_bio_02", "lgt_env_dark_aether_on_bio_03", "lgt_env_dark_aether_fx", "lgt_central_ring_dark_aether", "fxexp_particle_accelerator_stabilized_dark_aether", "fxexp_aether_jellyfish");
    var_487f1775 = array("lgt_env_dark_aether_off_crystal", "lgt_env_dark_aether_off_bio_01", "lgt_env_dark_aether_off_bio_02", "lgt_env_dark_aether_off_bio_03");
    namespace_cf4aa5f0::function_6dbaba52("default", "lgt_env_default", undefined, undefined, var_85b7df77);
    namespace_cf4aa5f0::function_6dbaba52("default", var_487f1775, undefined, undefined, undefined);
    namespace_cf4aa5f0::function_6dbaba52("default", var_130c06bc, undefined, undefined, undefined);
    namespace_cf4aa5f0::function_6dbaba52("power_on", var_f7289d61, undefined, undefined, var_130c06bc, &power_on);
    namespace_cf4aa5f0::function_6dbaba52("power_on", "lgt_env_powered_on_room_10", undefined, undefined, "lgt_env_default");
    namespace_cf4aa5f0::function_6dbaba52("power_on", "fxexp_particle_accelerator_unstable", undefined, undefined, undefined);
    namespace_cf4aa5f0::function_6dbaba52("power_on_immediate", undefined, var_f7289d61, undefined, var_130c06bc);
    namespace_cf4aa5f0::function_6dbaba52("power_on_immediate", undefined, "lgt_env_powered_on_room_10", undefined, "lgt_env_default");
    namespace_cf4aa5f0::function_6dbaba52("aether_on", var_c480ccc5, undefined, undefined, var_f7289d61, &function_58e1770);
    namespace_cf4aa5f0::function_6dbaba52("aether_on", undefined, undefined, undefined, "lgt_env_powered_on_room_10");
    namespace_cf4aa5f0::function_6dbaba52("aether_on", undefined, undefined, undefined, "lgt_central_ring_powered_on");
    namespace_cf4aa5f0::function_6dbaba52("aether_on", undefined, undefined, undefined, "fxexp_particle_accelerator_stabilized");
    namespace_cf4aa5f0::function_6dbaba52("aether_off", var_487f1775, var_f7289d61, undefined, var_c480ccc5, &function_644c666);
    namespace_cf4aa5f0::function_6dbaba52("aether_off", undefined, "fxexp_particle_accelerator_stabilized", undefined, undefined);
    namespace_cf4aa5f0::function_6dbaba52("terminal_on", "lgt_central_ring_powered_on", undefined, undefined, undefined, &function_13508757);
    namespace_cf4aa5f0::function_6dbaba52("terminal_on", "fxexp_particle_accelerator_stabilized", undefined, undefined, "fxexp_particle_accelerator_unstable");
    namespace_cf4aa5f0::function_6dbaba52("terminal_on", "fxexp_particle_accelerator_stabilized_dark_energy", undefined, undefined, undefined);
    namespace_cf4aa5f0::function_6dbaba52("center_zone_on", undefined, "lgt_env_powered_on_room_10", undefined, undefined, &function_41575406);
    namespace_cf4aa5f0::function_6dbaba52("exfil_begin", undefined, "fxexp_particle_accelerator_unstable", undefined, "fxexp_particle_accelerator_stabilized", &function_a6be5efd);
    namespace_cf4aa5f0::function_6dbaba52("exfil_aether_explode", "fxexp_fx_exfile_aether_energy", undefined, undefined, undefined, &exfil_aether_explode);
    namespace_cf4aa5f0::function_6dbaba52("receptacle_off", "lgt_gold_container_receptacle_off", undefined, undefined, undefined, &receptacle_off);
    namespace_cf4aa5f0::function_6dbaba52("receptacle_on", undefined, undefined, undefined, "lgt_gold_container_receptacle_off", &receptacle_on);
    namespace_cf4aa5f0::function_6dbaba52("pa_romm_off", "lgt_env_powered_off_room_10", undefined, undefined, "lgt_env_powered_on_room_10", &function_5d65ec93);
    namespace_cf4aa5f0::function_6dbaba52("pa_romm_on", "lgt_env_powered_on_room_10", undefined, undefined, "lgt_env_powered_off_room_10", &function_d4f7930b);
    clientfield::register("world", "dark_aether_active", 1, 1, "int", &dark_aether_active, 1, 0);
    clientfield::register("world", "terminal_on", 1, 1, "int", &terminal_on, 1, 0);
    clientfield::register("world", "center_zone_lights_off", 1, 1, "int", &center_zone_lights_off, 1, 0);
    clientfield::register("world", "gold_container_receptacle", 1, 2, "int", &gold_container_receptacle, 1, 0);
    clientfield::register("world", "exfil_begin", 1, 1, "int", &exfil_begin, 1, 0);
    clientfield::register("world", "exfil_aether_trigger", 1, 1, "int", &exfil_aether_trigger, 1, 0);
    var_c54ed3ff = array("lgt_env_helping_hand_room_1", "lgt_env_helping_hand_room_2", "lgt_env_helping_hand_room_3", "lgt_env_helping_hand_room_4", "lgt_env_helping_hand_room_5");
    var_5b828e46 = array("lgt_env_dance_party", "lgt_env_powered_off_room_10");
    var_d6887678 = array("lgt_env_eyes_in_dark_corpse_01", "lgt_env_eyes_in_dark_corpse_02", "lgt_env_eyes_in_dark_corpse_03", "lgt_env_eyes_in_dark_corpse_04", "lgt_env_eyes_in_dark_corpse_05", "lgt_env_eyes_in_dark_corpse_final");
    namespace_cf4aa5f0::function_6dbaba52("hh_turn_all_lights_off", undefined, undefined, undefined, var_c54ed3ff, &hh_turn_all_lights_off);
    namespace_cf4aa5f0::function_6dbaba52("hh_turn_room_1_light_on", "lgt_env_helping_hand_room_1", undefined, undefined, undefined, &hh_turn_room_1_light_on);
    namespace_cf4aa5f0::function_6dbaba52("hh_turn_room_2_light_on", "lgt_env_helping_hand_room_2", undefined, undefined, undefined, &hh_turn_room_2_light_on);
    namespace_cf4aa5f0::function_6dbaba52("hh_turn_room_3_light_on", "lgt_env_helping_hand_room_3", undefined, undefined, undefined, &hh_turn_room_3_light_on);
    namespace_cf4aa5f0::function_6dbaba52("hh_turn_room_4_light_on", "lgt_env_helping_hand_room_4", undefined, undefined, undefined, &hh_turn_room_4_light_on);
    namespace_cf4aa5f0::function_6dbaba52("hh_turn_room_5_light_on", "lgt_env_helping_hand_room_5", undefined, undefined, undefined, &hh_turn_room_5_light_on);
    namespace_cf4aa5f0::function_6dbaba52("hh_turn_room_5_light_off", undefined, undefined, undefined, "lgt_env_helping_hand_room_5", &hh_turn_room_5_light_off);
    namespace_cf4aa5f0::function_6dbaba52("dance_party_light_on", var_5b828e46, undefined, undefined, "lgt_env_powered_on_room_10", &dance_party_light_on);
    namespace_cf4aa5f0::function_6dbaba52("dance_party_light_off", "lgt_env_powered_on_room_10", undefined, undefined, var_5b828e46, &dance_party_light_off);
    namespace_cf4aa5f0::function_6dbaba52("eye_corpse_all_lights_off", undefined, undefined, undefined, var_d6887678, &eye_corpse_all_lights_off);
    namespace_cf4aa5f0::function_6dbaba52("eye_corpse_1_light_on", "lgt_env_eyes_in_dark_corpse_01", undefined, undefined, undefined, &eye_corpse_1_light_on);
    namespace_cf4aa5f0::function_6dbaba52("eye_corpse_2_light_on", "lgt_env_eyes_in_dark_corpse_02", undefined, undefined, undefined, &eye_corpse_2_light_on);
    namespace_cf4aa5f0::function_6dbaba52("eye_corpse_3_light_on", "lgt_env_eyes_in_dark_corpse_03", undefined, undefined, undefined, &eye_corpse_3_light_on);
    namespace_cf4aa5f0::function_6dbaba52("eye_corpse_4_light_on", "lgt_env_eyes_in_dark_corpse_04", undefined, undefined, undefined, &eye_corpse_4_light_on);
    namespace_cf4aa5f0::function_6dbaba52("eye_corpse_5_light_on", "lgt_env_eyes_in_dark_corpse_05", undefined, undefined, undefined, &eye_corpse_5_light_on);
    namespace_cf4aa5f0::function_6dbaba52("eye_corpse_final_light_on", "lgt_env_eyes_in_dark_corpse_final", undefined, undefined, undefined, &eye_corpse_final_light_on);
    clientfield::register("world", "helping_hand_room_light", 1, 3, "int", &helping_hand_room_light, 1, 0);
    clientfield::register("world", "dance_party_light", 1, 1, "int", &dance_party_light, 1, 0);
    clientfield::register("world", "eye_corpse_light", 1, 3, "int", &eye_corpse_light, 1, 0);
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 7, eflags: 0x2 linked
// Checksum 0x13875864, Offset: 0x15d8
// Size: 0x70
function dark_aether_active(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        level notify(#"hash_22f24a373548473d");
        return;
    }
    level notify(#"hash_29e046cf89ba2659");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 7, eflags: 0x2 linked
// Checksum 0xea72c354, Offset: 0x1650
// Size: 0x58
function terminal_on(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        level notify(#"terminal_on");
    }
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 7, eflags: 0x6 linked
// Checksum 0x476c8475, Offset: 0x16b0
// Size: 0x58
function private exfil_begin(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        level notify(#"exfil_begin");
    }
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 7, eflags: 0x6 linked
// Checksum 0x58d50466, Offset: 0x1710
// Size: 0x58
function private exfil_aether_trigger(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        level notify(#"exfil_aether_explode");
    }
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 7, eflags: 0x2 linked
// Checksum 0x7f09d236, Offset: 0x1770
// Size: 0x70
function center_zone_lights_off(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        level notify(#"center_zone_lights_off");
        return;
    }
    level notify(#"hash_6a85393053fbdebb");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 7, eflags: 0x2 linked
// Checksum 0xa24f7e87, Offset: 0x17e8
// Size: 0x88
function gold_container_receptacle(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        level notify(#"receptacle_off");
        return;
    }
    if (bwastimejump == 2) {
        level notify(#"receptacle_on");
    }
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 7, eflags: 0x2 linked
// Checksum 0xb015e2f4, Offset: 0x1878
// Size: 0x16a
function helping_hand_room_light(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(bwastimejump)) {
        switch (bwastimejump) {
        case 0:
            level notify(#"hh_turn_all_lights_off");
            break;
        case 1:
            level notify(#"hh_turn_room_1_light_on");
            break;
        case 2:
            level notify(#"hh_turn_room_2_light_on");
            break;
        case 3:
            level notify(#"hh_turn_room_3_light_on");
            break;
        case 4:
            level notify(#"hh_turn_room_4_light_on");
            break;
        case 5:
            level notify(#"hh_turn_room_5_light_on");
            break;
        case 6:
            level notify(#"hh_turn_room_5_light_off");
            break;
        }
    }
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 7, eflags: 0x2 linked
// Checksum 0x2fc90fde, Offset: 0x19f0
// Size: 0x70
function dance_party_light(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        level notify(#"dance_party_light_on");
        return;
    }
    level notify(#"dance_party_light_off");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 7, eflags: 0x2 linked
// Checksum 0xeb4499d4, Offset: 0x1a68
// Size: 0x16a
function eye_corpse_light(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(bwastimejump)) {
        switch (bwastimejump) {
        case 0:
            level notify(#"eye_corpse_all_lights_off");
            break;
        case 1:
            level notify(#"eye_corpse_1_light_on");
            break;
        case 2:
            level notify(#"eye_corpse_2_light_on");
            break;
        case 3:
            level notify(#"eye_corpse_3_light_on");
            break;
        case 4:
            level notify(#"eye_corpse_4_light_on");
            break;
        case 5:
            level notify(#"eye_corpse_5_light_on");
            break;
        case 6:
            level notify(#"eye_corpse_final_light_on");
            break;
        }
    }
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x2 linked
// Checksum 0x769cd9af, Offset: 0x1be0
// Size: 0x2e4
function function_dcf22669() {
    namespace_cf4aa5f0::function_470d684a("default");
    namespace_cf4aa5f0::function_470d684a("receptacle_off");
    namespace_cf4aa5f0::function_470d684a("receptacle_on");
    namespace_cf4aa5f0::function_470d684a("terminal_on");
    namespace_cf4aa5f0::function_470d684a("exfil_begin");
    namespace_cf4aa5f0::function_470d684a("exfil_aether_explode");
    namespace_cf4aa5f0::function_470d684a("pa_romm_off");
    namespace_cf4aa5f0::function_470d684a("pa_romm_on");
    if (level clientfield::get("zombie_power_on")) {
        namespace_cf4aa5f0::function_470d684a("power_on_immediate");
    } else {
        namespace_cf4aa5f0::function_470d684a("power_on");
    }
    namespace_cf4aa5f0::function_25002e3("aether_on");
    namespace_cf4aa5f0::function_25002e3("aether_off");
    namespace_cf4aa5f0::function_25002e3("center_zone_on");
    namespace_cf4aa5f0::function_470d684a("dance_party_light_on");
    namespace_cf4aa5f0::function_470d684a("dance_party_light_off");
    namespace_cf4aa5f0::function_25002e3("hh_turn_all_lights_off");
    namespace_cf4aa5f0::function_25002e3("hh_turn_room_1_light_on");
    namespace_cf4aa5f0::function_25002e3("hh_turn_room_2_light_on");
    namespace_cf4aa5f0::function_25002e3("hh_turn_room_3_light_on");
    namespace_cf4aa5f0::function_25002e3("hh_turn_room_4_light_on");
    namespace_cf4aa5f0::function_25002e3("hh_turn_room_5_light_on");
    namespace_cf4aa5f0::function_25002e3("hh_turn_room_5_light_off");
    namespace_cf4aa5f0::function_25002e3("eye_corpse_all_lights_off");
    namespace_cf4aa5f0::function_25002e3("eye_corpse_1_light_on");
    namespace_cf4aa5f0::function_25002e3("eye_corpse_2_light_on");
    namespace_cf4aa5f0::function_25002e3("eye_corpse_3_light_on");
    namespace_cf4aa5f0::function_25002e3("eye_corpse_4_light_on");
    namespace_cf4aa5f0::function_25002e3("eye_corpse_5_light_on");
    namespace_cf4aa5f0::function_25002e3("eye_corpse_final_light_on");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0xb6eb93c2, Offset: 0x1ed0
// Size: 0x1c
function private power_on() {
    level waittill(#"power_on");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0x50c9a267, Offset: 0x1ef8
// Size: 0x1c
function private function_58e1770() {
    level waittill(#"hash_22f24a373548473d");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0xffd78e2a, Offset: 0x1f20
// Size: 0x1c
function private function_644c666() {
    level waittill(#"hash_29e046cf89ba2659");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0x9cf1c4c8, Offset: 0x1f48
// Size: 0x22
function private function_13508757() {
    level waittill(#"terminal_on");
    wait(3);
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0x70cd7cb5, Offset: 0x1f78
// Size: 0x4e
function private function_41575406() {
    while (true) {
        level waittill(#"hash_29e046cf89ba2659");
        if (!level clientfield::get("center_zone_lights_off")) {
            break;
        }
    }
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0x6d535c57, Offset: 0x1fd0
// Size: 0x1c
function private receptacle_off() {
    level waittill(#"receptacle_off");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0xb4c8c6e7, Offset: 0x1ff8
// Size: 0x1c
function private receptacle_on() {
    level waittill(#"receptacle_on");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0x252bf662, Offset: 0x2020
// Size: 0x1c
function private function_5d65ec93() {
    level waittill(#"center_zone_lights_off");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0xbabe8842, Offset: 0x2048
// Size: 0x1c
function private function_d4f7930b() {
    level waittill(#"hash_6a85393053fbdebb");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0xab95f61c, Offset: 0x2070
// Size: 0x1c
function private hh_turn_all_lights_off() {
    level waittill(#"hh_turn_all_lights_off");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0x76eba614, Offset: 0x2098
// Size: 0x1c
function private hh_turn_room_1_light_on() {
    level waittill(#"hh_turn_room_1_light_on");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0xc602bc2e, Offset: 0x20c0
// Size: 0x1c
function private hh_turn_room_2_light_on() {
    level waittill(#"hh_turn_room_2_light_on");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0x82398d80, Offset: 0x20e8
// Size: 0x1c
function private hh_turn_room_3_light_on() {
    level waittill(#"hh_turn_room_3_light_on");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0xa21fa64a, Offset: 0x2110
// Size: 0x1c
function private hh_turn_room_4_light_on() {
    level waittill(#"hh_turn_room_4_light_on");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0x35e7f3b0, Offset: 0x2138
// Size: 0x1c
function private hh_turn_room_5_light_on() {
    level waittill(#"hh_turn_room_5_light_on");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0xb20c5b02, Offset: 0x2160
// Size: 0x1c
function private hh_turn_room_5_light_off() {
    level waittill(#"hh_turn_room_5_light_off");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0xb9d2e21a, Offset: 0x2188
// Size: 0x1c
function private dance_party_light_on() {
    level waittill(#"dance_party_light_on");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0xe060cd37, Offset: 0x21b0
// Size: 0x1c
function private dance_party_light_off() {
    level waittill(#"dance_party_light_off");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0xd8706a5d, Offset: 0x21d8
// Size: 0x1c
function private eye_corpse_all_lights_off() {
    level waittill(#"eye_corpse_all_lights_off");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0xa387c8b2, Offset: 0x2200
// Size: 0x1c
function private eye_corpse_1_light_on() {
    level waittill(#"eye_corpse_1_light_on");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0x89558b38, Offset: 0x2228
// Size: 0x1c
function private eye_corpse_2_light_on() {
    level waittill(#"eye_corpse_2_light_on");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0x1ddfb92, Offset: 0x2250
// Size: 0x1c
function private eye_corpse_3_light_on() {
    level waittill(#"eye_corpse_3_light_on");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0x7ef32d6c, Offset: 0x2278
// Size: 0x1c
function private eye_corpse_4_light_on() {
    level waittill(#"eye_corpse_4_light_on");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0x18598fa6, Offset: 0x22a0
// Size: 0x1c
function private eye_corpse_5_light_on() {
    level waittill(#"eye_corpse_5_light_on");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0xbabca4f2, Offset: 0x22c8
// Size: 0x1c
function private eye_corpse_final_light_on() {
    level waittill(#"eye_corpse_final_light_on");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0x45894289, Offset: 0x22f0
// Size: 0x1c
function private function_a6be5efd() {
    level waittill(#"exfil_begin");
}

// Namespace namespace_812a8849/namespace_812a8849
// Params 0, eflags: 0x6 linked
// Checksum 0x93e2faac, Offset: 0x2318
// Size: 0x1c
function private exfil_aether_explode() {
    level waittill(#"exfil_aether_explode");
}

