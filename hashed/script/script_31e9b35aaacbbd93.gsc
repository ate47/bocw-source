// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\gametypes\battlechatter.gsc;
#using script_54412fb3a6fab34c;
#using script_85cd2e9a28ea8a1;
#using scripts\cp_common\snd_utility.gsc;
#using script_3dc93ca9902a9cda;
#using scripts\cp_common\snd.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\audio_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_a052577e;

// Namespace namespace_a052577e/level_preinit
// Params 1, eflags: 0x24
// Checksum 0xbdb2dbb3, Offset: 0x6b0
// Size: 0x3c
function private event_handler[level_preinit] function_b489bb7b(*eventstruct) {
    snd::function_5e69f468(&_objective);
    snd::function_294cb4fa();
}

// Namespace namespace_a052577e/event_cc819519
// Params 1, eflags: 0x24
// Checksum 0xc8946dd, Offset: 0x6f8
// Size: 0xa4
function private event_handler[event_cc819519] function_686b88aa(*eventstruct) {
    snd::function_294cb4fa();
    snd::waitforplayers();
    /#
        snd::dvar("af_wreck", "<unknown string>" + 3, &function_5e7cc862);
        snd::dvar("<unknown string>", "<unknown string>" + 15, &function_5e7cc862);
    #/
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 1, eflags: 0x6 linked
// Checksum 0x74f3df06, Offset: 0x7a8
// Size: 0x392
function private _objective(objective) {
    switch (objective) {
    case #"tkdn_raid_bar":
        snd::function_7db65a93("triton_on");
        level thread function_a20133bd();
        break;
    case #"tkdn_raid_gearup":
        snd::function_7db65a93("triton_on");
        break;
    case #"tkdn_raid_apt":
        snd::function_7db65a93("triton_on");
        level notify(#"hash_7ad75056b30c451a");
        level notify(#"hash_63850bb43dbc38de");
        break;
    case #"tkdn_raid_rooftops":
        snd::function_7db65a93("triton_on");
        break;
    case #"tkdn_raid_slide":
        snd::function_7db65a93("triton_on");
        break;
    case #"tkdn_raid_capture":
        snd::function_7db65a93("triton_on");
        break;
    case #"hash_7db5c2bb92c102ae":
        snd::function_7db65a93("triton_on");
        break;
    case #"tkdn_af_intro":
        snd::function_7db65a93("triton_off");
        break;
    case #"tkdn_af_hill":
        snd::function_7db65a93("triton_off");
        break;
    case #"tkdn_af_tarmac":
        snd::function_7db65a93("triton_off");
        break;
    case #"tkdn_af_chase":
        snd::function_7db65a93("triton_off");
        snd::function_7db65a93(#"hash_55e0585ab6221a00");
        break;
    case #"tkdn_af_rc_chase":
        snd::function_7db65a93("triton_off");
        break;
    case #"tkdn_af_skid":
        snd::function_7db65a93("triton_off");
        break;
    case #"tkdn_af_wreck":
        snd::function_7db65a93("triton_off");
        break;
    case #"no_game":
    case #"hash_6e531fb9475df744":
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<unknown string>" + objective + "<unknown string>");
        #/
        break;
    }
}

/#

    // Namespace namespace_a052577e/namespace_c0722ca1
    // Params 0, eflags: 0x0
    // Checksum 0x4be4a6ec, Offset: 0xb48
    // Size: 0x96
    function function_77da0ec2() {
        self endon(#"death");
        self endon(#"hash_2caeecd393c68946");
        while (isdefined(self) && isdefined(self.origin) && isdefined(self.angles)) {
            snd::function_81183b3(self.origin, 24, self.angles, (1, 1, 1), 1, 0, 1);
            waitframe(1);
        }
    }

    // Namespace namespace_a052577e/namespace_c0722ca1
    // Params 2, eflags: 0x0
    // Checksum 0x28d894bc, Offset: 0xbe8
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

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 1, eflags: 0x2 linked
// Checksum 0x8932a457, Offset: 0xda8
// Size: 0x2ba
function function_c26120ff(ent) {
    type = array::random(["cough", "sniff", "throat"]);
    prefix = "male";
    head = ent.head;
    var_6c1ff08a = [#"hash_1b0d7f4da45c932e", #"hash_475ea32d8e7e85c", #"hash_59db5fbcfcf738ff"];
    var_8243bb50 = isinarray(var_6c1ff08a, head);
    if (var_8243bb50) {
        self notify(#"hash_63850bb43dbc38de");
        return undefined;
    }
    var_9805f0e = [#"hash_6cfa8c1eb7667e7f", #"hash_6cfa8d1eb7668032", #"hash_6cfa8e1eb76681e5", #"hash_6cfa871eb7667600", #"hash_6cfa881eb76677b3", #"hash_6cfa891eb7667966", #"hash_6cfa8a1eb7667b19", #"hash_6cfa931eb7668a64", #"hash_6cfa941eb7668c17", #"hash_6cfe111eb7699655", #"hash_10907c2b90e2ab7e"];
    isfemale = isinarray(var_9805f0e, head);
    if (isfemale) {
        prefix = "female";
    }
    alias = "vox_" + prefix + "_" + type;
    if (!soundexists(alias)) {
        return ("vox_male_" + type);
    }
    return alias;
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xd8837e7d, Offset: 0x1070
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
    min_time = getdvarfloat(#"hash_5a9d5543cb5829b3", 3);
    max_time = getdvarfloat(#"hash_5ab96b43cb70c9cd", 15);
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

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x1398
// Size: 0x4
function function_e04b45ab() {
    
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x13a8
// Size: 0x4
function function_ec4a61d9() {
    
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 2, eflags: 0x2 linked
// Checksum 0xf7b5e9f2, Offset: 0x13b8
// Size: 0x14
function function_6b5c2a3(*bustout_driver, *veh) {
    
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x18704aa5, Offset: 0x13d8
// Size: 0x24
function function_b9b9189c() {
    snd::function_7db65a93(#"hash_443db59c2d746e0f");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x6b863cff, Offset: 0x1408
// Size: 0x1c
function function_82bfce7c() {
    snd::play("evt_tkdn_lighter_open");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x1430
// Size: 0x4
function function_60f59158() {
    
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xe4607a37, Offset: 0x1440
// Size: 0x1d4
function function_6591463() {
    wait(1);
    var_b22ada74 = snd::play("emt_tkd_police_radio_squelch_in", (19695, 18941, 69));
    var_e7139ba1 = snd::play("emt_tkd_police_radio_static_bg_lp", (19695, 18941, 69));
    wait(0.25);
    var_334e9d8b = snd::play("vox_cp_tdwn_09100_dplb_attentionallams_59", (19695, 18941, 69));
    wait(3);
    var_7e253337 = snd::play("vox_cp_tdwn_09100_dplb_allofficersinth_43", (19695, 18941, 69));
    wait(8);
    var_8fcbd684 = snd::play("vox_cp_tdwn_09100_dplb_allofficersaret_60", (19695, 18941, 69));
    level thread flag::wait_till("flag_move_on_to_alley");
    snd::play("emt_tkd_police_radio_squelch_out", (19695, 18941, 69));
    snd::stop(var_b22ada74);
    snd::stop(var_e7139ba1);
    snd::stop(var_334e9d8b);
    snd::stop(var_7e253337);
    snd::stop(var_8fcbd684);
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x1620
// Size: 0x4
function function_ddd8adc3() {
    
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x82fdb131, Offset: 0x1630
// Size: 0x34
function function_2032c91c() {
    music::setmusicstate("1.0_approach");
    snd::function_7db65a93("unlock_all_takedownmus");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x9bd5babf, Offset: 0x1670
// Size: 0x1c
function function_11062617() {
    music::setmusicstate("none");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xe3bcd5e6, Offset: 0x1698
// Size: 0x1c
function function_1dc92e4f() {
    music::setmusicstate("2.0_assault");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xf7956475, Offset: 0x16c0
// Size: 0x2c
function function_b26ed576() {
    snd::play("tmp_tkdn_drunk_singing_lp", (20334, 18307, 97));
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x163fb427, Offset: 0x16f8
// Size: 0x34
function function_f8f5f970() {
    wait(0.7);
    snd::play("tmp_tkdn_apartment_door_breach", (20753, 17182, 66));
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x1738
// Size: 0x4
function function_bc76873() {
    
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xece3ba7d, Offset: 0x1748
// Size: 0x3ac
function function_38a8c5b0() {
    var_8a410fc2 = snd::emitter("vox_walla_dutch_panic_male_01", (20908, 15773, 384), [9, 18]);
    var_4f6c19d9 = snd::emitter("vox_walla_dutch_panic_male_01", (21149, 15036, 431), [9, 18]);
    var_d846afb3 = snd::emitter("vox_walla_dutch_panic_male_02", (21149, 15036, 431), [8, 16]);
    var_58582fd4 = snd::emitter("vox_walla_dutch_panic_male_02", (20374, 13316, 562), [8, 16]);
    var_ad0660af = snd::emitter("vox_walla_dutch_panic_fem_01", (21090, 15610, 389), [4, 12]);
    var_44428f29 = snd::emitter("vox_walla_dutch_panic_fem_01", (20287, 15342, 293), [4, 12]);
    var_f6ad3b43 = snd::emitter("vox_walla_dutch_panic_fem_02", (20684, 13376, 562), [8, 20]);
    var_7651ba9a = snd::emitter("vox_walla_dutch_panic_fem_02", (20888, 12627, 819), [8, 20]);
    var_5774b41c = snd::emitter("emt_border_collie_barking_dist", (20799, 15776, 369), [15, 30]);
    level flag::wait_till("raid_roof_complete");
    snd::stop(var_8a410fc2);
    snd::stop(var_4f6c19d9);
    snd::stop(var_d846afb3);
    snd::stop(var_ad0660af);
    snd::stop(var_44428f29);
    snd::stop(var_f6ad3b43);
    snd::stop(var_7651ba9a);
    snd::stop(var_5774b41c);
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xcdbc27fb, Offset: 0x1b00
// Size: 0x64
function function_fd7139f4() {
    music::setmusicstate("none");
    snd::play("evt_takedown_roofjump_slowmo");
    level waittill(#"hash_35a786f9d88a2e60");
    music::setmusicstate("3.0_interrogation");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xd0a72a81, Offset: 0x1b70
// Size: 0x1c
function function_724cb241() {
    music::setmusicstate("3.0_interrogation");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xa0ca7e17, Offset: 0x1b98
// Size: 0x1c
function function_a5d5a125() {
    music::setmusicstate("none");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x1bc0
// Size: 0x4
function function_9ac81c6b() {
    
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x84b9a5b, Offset: 0x1bd0
// Size: 0x1c
function function_c2eee241() {
    snd::play("evt_tkdn_roof_slide");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x1bf8
// Size: 0x4
function function_a7024b3c() {
    
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xe2f2c057, Offset: 0x1c08
// Size: 0x24
function function_e88f8edb() {
    wait(5);
    music::function_edda155f("3.1_throw_stinger");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x380e6581, Offset: 0x1c38
// Size: 0x34
function function_60c0a46b() {
    snd::play("evt_transition_roof_to_airfield_camera_pt1");
    snd::function_7db65a93("cp_takedown_raid_af_transition");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x149de064, Offset: 0x1c78
// Size: 0x34
function evt_transition_roof_to_airfield_camera_pt2() {
    snd::play("evt_transition_roof_to_airfield_camera_pt2");
    snd::function_7db65a93("cp_takedown_raid_af_transition_complete");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x637c927, Offset: 0x1cb8
// Size: 0x5c
function function_dd4c9710() {
    snd::waitforplayers();
    snd::function_7db65a93("hit3_fadein");
    flag::wait_till("af_fade_in_complete");
    snd::function_7db65a93("af_intro_done");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 1, eflags: 0x2 linked
// Checksum 0xd722822, Offset: 0x1d20
// Size: 0xa8
function function_92a6fd6a(planes) {
    foreach (plane in snd::function_f218bff5(planes)) {
        snd::function_b23661d5(plane, "af_flyover");
    }
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x7ff32346, Offset: 0x1dd0
// Size: 0x44
function function_a42cfb58() {
    snd::waitforplayers();
    music::function_edda155f("b1.5_airfield_reveal");
    snd::function_7db65a93("plane_idle");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xebebc9e1, Offset: 0x1e20
// Size: 0x34
function function_4074e9b1() {
    music::setmusicstate("b5.0_battle");
    snd::function_7db65a93("plane_chase_music");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x84336caf, Offset: 0x1e60
// Size: 0x1c
function function_79270d32() {
    music::setmusicstate("b5.0_battle");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xda9a9d34, Offset: 0x1e88
// Size: 0x2c
function function_bbedb5ab() {
    wait(2.5);
    level.var_79f25ee7 = snd::play("quad_tkd_chase_ricochets_front_lp");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x0
// Checksum 0x32e4a3b4, Offset: 0x1ec0
// Size: 0x1c
function function_7bd72cc0() {
    music::setmusicstate("mus_b6.0_rc_loop_0");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 1, eflags: 0x2 linked
// Checksum 0xb8c59f6a, Offset: 0x1ee8
// Size: 0xcc
function function_b3b2671a(player) {
    snd::stop(level.var_79f25ee7);
    level waittill(#"hash_2b34ed034183965");
    snd::play("wpn_tkd_rcxd_start_trans");
    player waittill(#"blow_rc_car");
    snd::play("wpn_tkd_rcxd_detonate_trigger", [level.rc_car, "tag_fx_light_rear"]);
    level music::setmusicstate("none");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xb19d368c, Offset: 0x1fc0
// Size: 0x168
function function_1e281573() {
    while (!scene::is_ready("scene_tkd_hit3_chase_plane")) {
        waitframe(2);
    }
    flag::wait_till("af_plane_raise_gate");
    var_bfefe09c = snd::function_33ccce67("scene_tkd_hit3_chase_plane", 1);
    foreach (ent in var_bfefe09c) {
        if (isdefined(ent) && isdefined(ent.model)) {
            if (ent.model == #"hash_30cc9e5a59f18fee" || ent.model == #"hash_6e9a7e61080b0a34" || ent.model == #"hash_737915c06fd24fd1") {
                snd::function_b23661d5(ent, "cargo_debris");
            }
        }
    }
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x5c065fe3, Offset: 0x2130
// Size: 0x1c
function function_3dbad6f5() {
    snd::function_7db65a93("af_skid_starting");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 1, eflags: 0x2 linked
// Checksum 0x7734c394, Offset: 0x2158
// Size: 0x14
function function_32f20d13(*veh) {
    wait(0.15);
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x4333cfe1, Offset: 0x2178
// Size: 0x1c
function function_fc52119f() {
    snd::function_7db65a93("af_wreck");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x8ebce24c, Offset: 0x21a0
// Size: 0x2c
function function_bee54a20() {
    wait(0.4);
    snd::play("evt_tkd_wreck_unconscious_whoosh", level.player);
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x37e5e3a9, Offset: 0x21d8
// Size: 0x54
function function_cbae87a2() {
    snd::function_7db65a93("af_wreck_amb");
    level flag::wait_till("tkdn_af_wreck_completed");
    snd::function_7db65a93("af_wreck_amb_end");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xe48b17c5, Offset: 0x2238
// Size: 0x1c
function function_4788a209() {
    snd::function_7db65a93("end_fadeout");
}

