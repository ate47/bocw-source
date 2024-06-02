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

#namespace namespace_a052577e;

// Namespace namespace_a052577e/level_preinit
// Params 1, eflags: 0x20
// Checksum 0x391ee4ef, Offset: 0x670
// Size: 0x8c
function event_handler[level_preinit] function_b489bb7b(*eventstruct) {
    snd::function_d4ec748e(&function_f2a2832d);
    snd::function_ce78b33b(&function_32ab045);
    snd::trigger_init(&_trigger);
    snd::function_5e69f468(&_objective);
}

// Namespace namespace_a052577e/event_cc819519
// Params 1, eflags: 0x20
// Checksum 0x15654a65, Offset: 0x708
// Size: 0x84
function event_handler[event_cc819519] function_686b88aa(*eventstruct) {
    level.var_b9a192d2 = [];
    level.var_936dc3f3 = 0;
    snd::function_294cb4fa();
    snd::waitforplayers();
    function_b6407dd4(1);
    audio::function_21f8b7c3();
    level.var_cffe5f6f = &function_9c9fad4e;
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 1, eflags: 0x6 linked
// Checksum 0x2ce0fe67, Offset: 0x798
// Size: 0x3d2
function private _objective(objective) {
    switch (objective) {
    case #"tkdn_raid_bar":
        function_b6407dd4(1);
        break;
    case #"tkdn_raid_gearup":
        function_b6407dd4(1);
        break;
    case #"tkdn_raid_apt":
        function_b6407dd4(1);
        break;
    case #"tkdn_raid_capture":
        function_b6407dd4(1);
        break;
    case #"hash_7db5c2bb92c102ae":
        function_b6407dd4(1);
        break;
    case #"tkdn_af_intro":
        function_b6407dd4(0);
        break;
    case #"tkdn_af_hill":
        function_b6407dd4(0);
        level thread function_955f4842();
        level thread function_a43c0d2c();
        level notify(#"hash_50385173feb854f0");
        break;
    case #"tkdn_af_tarmac":
        function_b6407dd4(0);
        level thread function_2d8bbe54(0.1);
        level thread function_a43c0d2c();
        break;
    case #"tkdn_af_chase":
        function_b6407dd4(0);
        function_5ea2c6e3("cp_tkdn_af_chase_mix", 0, 1);
        function_5ea2c6e3("cp_tkdn_af_rc_chase_tires", 0, 1);
        level thread function_ad605463();
        level thread function_d1b165f5();
        break;
    case #"tkdn_af_rc_chase":
        function_b6407dd4(0);
        function_5ea2c6e3("cp_tkdn_af_chase_mix", 0, 1);
        level thread function_d1b165f5();
        level thread function_e8df4c70();
        break;
    case #"tkdn_af_skid":
        function_b6407dd4(0);
        break;
    case #"tkdn_af_wreck":
        function_b6407dd4(0);
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

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 2, eflags: 0x6 linked
// Checksum 0x5397d929, Offset: 0xb78
// Size: 0x43a
function private function_32ab045(ent, name) {
    switch (name) {
    case #"adler":
        level.adler = ent;
        ent waittill(#"death");
        level.adler = undefined;
        break;
    case #"woods":
        level.woods = ent;
        ent waittill(#"death");
        level.woods = undefined;
        break;
    case #"af_flyover":
        plane = ent;
        var_d776868d = snd::play("veh_tkd_airstrip_flyover", plane);
        snd::function_f4f3a2a(var_d776868d, plane, 9);
        break;
    case #"cargo_plane":
        level.cargo_plane = ent;
        ent waittill(#"death");
        level.cargo_plane = undefined;
        break;
    case #"cargo_plane_mover":
        level.cargo_plane_mover = ent;
        ent waittill(#"death");
        level.cargo_plane_mover = undefined;
        break;
    case #"af_truck_plr":
        level.var_5acf72ee = ent;
        function_b3fdcb06(level.var_5acf72ee, "tag_axel_front_up", "veh_tkd_chase_plr_jeep_high_lp");
        function_244835ac(level.var_5acf72ee, "veh_tkd_rcxd_deploy_tires_lp");
        ent waittill(#"death");
        level.var_5acf72ee = undefined;
        break;
    case #"rc_car_plr":
        level.rc_car_plr = ent;
        level thread function_e8df4c70();
        ent waittill(#"death");
        level.rc_car_plr = undefined;
        break;
    case #"af_enemy_chase_veh":
        level.af_enemy_chase_veh = snd::function_4b879845(level.af_enemy_chase_veh, ent);
        function_b3fdcb06(ent, "tag_axel_front_up", "veh_tkd_chase_npc_jeeps_high_lp");
        function_244835ac(ent, "veh_tkd_rcxd_deploy_tires_lp");
        ent waittill(#"death");
        level.af_enemy_chase_veh = snd::function_16b5f116(level.af_enemy_chase_veh, ent);
        break;
    case #"skid_veh":
        function_b3fdcb06(ent, "tag_axel_front_up", "veh_tkd_skid_veh_high_lp");
        function_244835ac(ent, "veh_tkd_skid_veh_tires_skid_lp");
        level thread function_7142e76c(ent);
        break;
    case #"cargo_debris":
        level thread cargo_debris(ent);
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<unknown string>" + snd::function_783b69(name, "<unknown string>"));
        #/
        break;
    }
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 3, eflags: 0x6 linked
// Checksum 0x4cdc9af7, Offset: 0xfc0
// Size: 0x1c2
function private _trigger(*player, trigger, *var_ec80d14b) {
    trigger_name = snd::function_ea2f17d1(var_ec80d14b.script_ambientroom, "$default");
    switch (trigger_name) {
    case #"$default":
        break;
    case #"hash_1be9f27129ae7a62":
        break;
    case #"hash_4b729aa87d03cd":
    case #"hash_11867574383ac22a":
    case #"hash_1912faafb2f99437":
        break;
    case #"hash_52c6ce5cc7e45cd":
    case #"hash_137e57cafd9e1316":
    case #"hash_34a277e453b641df":
    case #"hash_3f3ff833c7fba2e7":
    case #"hash_50ea2a1178720bb6":
    case #"hash_5836480b992bf337":
    case #"hash_6da66622baceb34e":
    case #"hash_7cf32b3e3b7bd98b":
        break;
    case #"hash_431834d37daaaf40":
    case #"hash_5f996c7d961a6374":
        break;
    case #"hash_d19cd1aa24166b3":
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<unknown string>" + trigger_name + "<unknown string>");
        #/
        break;
    }
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 2, eflags: 0x6 linked
// Checksum 0x530be204, Offset: 0x1190
// Size: 0x7ca
function private function_f2a2832d(*player, msg) {
    /#
    #/
    switch (msg) {
    case #"triton_on":
        function_b6407dd4(1);
        break;
    case #"triton_off":
        function_b6407dd4(0);
        break;
    case #"intro_trans_out":
        level notify(#"intro_trans_out");
        break;
    case #"hash_443db59c2d746e0f":
        function_5ea2c6e3("cp_takedown_bar_intro");
        break;
    case #"hash_1ef4e0d9441579d":
        function_ed62c9c2("cp_takedown_bar_intro");
        break;
    case #"cp_takedown_raid_af_transition":
        function_5ea2c6e3("cp_takedown_raid_af_transition");
        break;
    case #"cp_takedown_raid_af_transition_complete":
        function_ed62c9c2("cp_takedown_raid_af_transition");
        break;
    case #"hit3_fadein":
        thread function_8881654();
        break;
    case #"af_intro_camera_whoosh":
        snd::play("evt_tkd_af_intro_camera_whoosh");
        break;
    case #"af_intro_done":
        wait(5);
        level notify(#"hash_50385173feb854f0");
        break;
    case #"hash_1520ca717f2f90ed":
        break;
    case #"snd_overlook_scene":
        thread function_2f088c3f();
        thread function_9c9fad4e();
        break;
    case #"start_sniping":
        level notify(#"start_sniping");
        break;
    case #"hash_1533b6e574c5cfe7":
        thread function_204b1d87();
        thread function_2d5baabb();
        break;
    case #"hash_3620fe1626778dde":
        level notify(#"hash_2501fef6c47895fa");
        break;
    case #"hash_1e58e46360c0a83b":
        level notify(#"hash_1e58e46360c0a83b");
        function_5ea2c6e3("cp_tkdn_af_tarmac_combat", 1, 1);
        break;
    case #"af_truck_plr_in":
        function_ed62c9c2("cp_tkdn_af_tarmac_combat", 4);
        function_5ea2c6e3("cp_tkdn_af_chase_mix", 4, 1);
        snd::play([4, "evt_tkd_chase_start_peel_out"], [level.var_5acf72ee, "tag_axel_front_up"]);
        break;
    case #"hash_55e0585ab6221a00":
        function_5ea2c6e3("cp_tkdn_af_hill_plane", 0, 1);
        break;
    case #"hash_1bdccb03a5e24d52":
        function_ed62c9c2("cp_tkdn_af_hill_plane", 2);
        break;
    case #"hash_706ce4bbfd6f3342":
        break;
    case #"af_skid":
        break;
    case #"af_skid_starting":
        thread function_41798e8d();
        break;
    case #"af_skid_complete":
        function_ed62c9c2("cp_tkdn_af_chase_mix", 3);
        level notify(#"hash_accff44c369c030");
        break;
    case #"plane_idle":
        thread function_2d8bbe54(0.5);
        break;
    case #"start_plane_rev":
        break;
    case #"hash_164bf872d25545af":
        level notify(#"hash_2b1ea816682de37d");
        level notify(#"hash_6f65948492627624");
        thread function_b5f89c52(level.cargo_plane);
        thread function_b5f89c52(level.var_5acf72ee);
        thread function_b5f89c52(level.rc_car_plr);
        function_ed62c9c2("cp_tkdn_af_chase_rcxd_mix", 0.25);
        level thread function_721eb243();
        break;
    case #"af_wreck":
        break;
    case #"af_wreck_amb":
        level thread af_wreck_amb();
        break;
    case #"af_wreck_amb_end":
        level notify(#"af_wreck_amb_end");
        break;
    case #"end_fadeout":
        thread function_4df43a5e();
        break;
    case #"unlock_all_takedownmus":
        function_2cca7b47(0, #"musictrack_cp_takedown_1");
        function_2cca7b47(0, #"musictrack_cp_takedown_2");
        function_2cca7b47(0, #"musictrack_cp_takedown_3");
        function_2cca7b47(0, #"musictrack_cp_takedown_4");
        function_2cca7b47(0, #"musictrack_cp_takedown_5");
        function_2cca7b47(0, #"musictrack_cp_takedown_6");
        function_2cca7b47(0, #"musictrack_cp_takedown_7");
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<unknown string>" + snd::function_783b69(msg, "<unknown string>"));
        #/
        break;
    }
}

/#

    // Namespace namespace_a052577e/namespace_c0722ca1
    // Params 0, eflags: 0x0
    // Checksum 0xa50f62e, Offset: 0x1968
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
    // Params 0, eflags: 0x0
    // Checksum 0x8461cfaa, Offset: 0x1a08
    // Size: 0x1c2
    function function_5f2fe011() {
        level notify(#"hash_35cd09591f62802f");
        level endon(#"hash_35cd09591f62802f");
        while (true) {
            if (snd::function_95c9af4b() >= 2) {
                foreach (var_15df3e17 in level.var_b9a192d2) {
                    if (isdefined(var_15df3e17) && isdefined(var_15df3e17.var_90c86b97)) {
                        velocity = var_15df3e17.var_90c86b97 getvelocity();
                        if (isvec(velocity)) {
                            speed = length(velocity);
                            txt = "<unknown string>" + snd::function_d6053a8f(speed, 1);
                            pos = var_15df3e17.origin + (0, 0, 6);
                            snd::function_ac033c46(txt, pos, 0.333, "<unknown string>");
                        }
                    }
                }
            }
            waitframe(1);
        }
    }

#/

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 3, eflags: 0x2 linked
// Checksum 0x8685cfb6, Offset: 0x1bd8
// Size: 0xcc
function function_b3fdcb06(ent, var_9e542947, var_e03252b9) {
    if (snd::function_a6779cbd(ent.var_726d44d2)) {
        return;
    }
    ent.var_726d44d2 = snd::play(var_e03252b9, [ent, var_9e542947]);
    snd::function_f4f3a2a(ent.var_726d44d2, ent);
    if (!isinarray(level.var_b9a192d2, ent.var_726d44d2)) {
        level.var_b9a192d2[level.var_b9a192d2.size] = ent.var_726d44d2;
    }
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 2, eflags: 0x2 linked
// Checksum 0x52f6b424, Offset: 0x1cb0
// Size: 0x1f4
function function_244835ac(ent, var_7eaf9fa5) {
    var_1cafb128 = [[ent, "tag_wheel_front_left"], [ent, "tag_wheel_front_right"], [ent, "tag_wheel_back_left"], [ent, "tag_wheel_back_right"]];
    if (isarray(ent.var_f4728878) && ent.var_f4728878.size > 0) {
        return;
    }
    ent.var_f4728878 = [];
    foreach (var_60213bf0 in var_1cafb128) {
        var_d3d66b01 = snd::play(var_7eaf9fa5, var_60213bf0);
        snd::function_f4f3a2a(var_d3d66b01, ent);
        ent.var_f4728878[ent.var_f4728878.size] = var_d3d66b01;
        if (!isinarray(level.var_b9a192d2, var_d3d66b01)) {
            level.var_b9a192d2[level.var_b9a192d2.size] = var_d3d66b01;
        }
    }
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 3, eflags: 0x2 linked
// Checksum 0x47acfa04, Offset: 0x1eb0
// Size: 0xdc
function function_d942b1c8(ent, var_9e542947, sndalias) {
    if (snd::function_a6779cbd(ent.var_726d44d2)) {
        return;
    }
    var_5b1e99b6 = [ent, var_9e542947];
    ent.var_726d44d2 = snd::play(sndalias, var_5b1e99b6);
    snd::function_f4f3a2a(ent.var_726d44d2, ent);
    if (!isinarray(level.var_b9a192d2, ent.var_726d44d2)) {
        level.var_b9a192d2[level.var_b9a192d2.size] = ent.var_726d44d2;
    }
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 1, eflags: 0x2 linked
// Checksum 0x64fd51dd, Offset: 0x1f98
// Size: 0xd4
function function_721eb243(fade_out = 0.5) {
    arrayremovevalue(level.var_b9a192d2, undefined);
    foreach (var_15df3e17 in level.var_b9a192d2) {
        snd::stop(var_15df3e17, fade_out);
    }
    level.var_b9a192d2 = [];
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x425132fa, Offset: 0x2078
// Size: 0x38
function function_8881654() {
    audio::snd_set_snapshot("cp_tkdn_hit3_intro_fadein");
    wait(20);
    level notify(#"hash_27298c361adda6c1");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xdbb7d4d8, Offset: 0x20b8
// Size: 0x54
function function_2f088c3f() {
    wait(5);
    function_5ea2c6e3("cp_tkdn_af_hill");
    level waittill(#"start_sniping");
    function_ed62c9c2("cp_tkdn_af_hill");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x975a6e39, Offset: 0x2118
// Size: 0x130
function function_9c9fad4e() {
    level endoncallback(&function_d111fa29, #"start_sniping");
    player = getlocalplayers()[0];
    player endon(#"death");
    function_5ea2c6e3("cp_tkdn_af_hill_binoculars", 0, 0);
    setsoundcontext("vehicle", "interior");
    while (true) {
        camera_zoom = player waittill(#"camera_zoom");
        function_672403ca("cp_tkdn_af_hill_binoculars", float(player function_8e4cd43b()) / 1000, camera_zoom.pct);
    }
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 1, eflags: 0x2 linked
// Checksum 0x3437e289, Offset: 0x2250
// Size: 0x24
function function_d111fa29(*str_notify) {
    function_ed62c9c2("cp_tkdn_af_hill_binoculars");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x10ca3bc8, Offset: 0x2280
// Size: 0x54
function function_2d5baabb() {
    function_5ea2c6e3("cp_tkdn_af_hill_bullettime");
    level waittill(#"hash_2501fef6c47895fa");
    function_ed62c9c2("cp_tkdn_af_hill_bullettime", 1);
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x951019f5, Offset: 0x22e0
// Size: 0x4c
function function_41798e8d() {
    function_5ea2c6e3("cp_tkdn_af_skid");
    level waittill(#"hash_accff44c369c030");
    function_ed62c9c2("cp_tkdn_af_skid");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x1c92f1a2, Offset: 0x2338
// Size: 0x1c
function function_4df43a5e() {
    function_5ea2c6e3("cp_tkdn_end_fadeout");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x37293eeb, Offset: 0x2360
// Size: 0x116
function function_a43c0d2c() {
    var_1246faee = (-49666.6, -55444, -25160.2);
    var_2a88513c = (-49790, -55098, -25110.7);
    walla = snd::play("emt_tkd_walla_plane_workers_lp", var_1246faee);
    loaders = snd::play("emt_tkd_cargo_loading_vehicles_lp", var_2a88513c);
    level waittill(#"hash_1e58e46360c0a83b");
    snd::stop(walla, 1);
    snd::stop(loaders, 1);
    wait(1.1);
    var_913d2991 = snd::play("emt_tkd_walla_runway_panic", var_1246faee);
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x1ef48bb4, Offset: 0x2480
// Size: 0x1e
function function_5be14e40() {
    while (!isdefined(level.cargo_plane)) {
        waitframe(1);
    }
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x782120f4, Offset: 0x24a8
// Size: 0x1e
function function_53c8ee41() {
    while (!isdefined(level.cargo_plane_mover)) {
        waitframe(1);
    }
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x13fe55b, Offset: 0x24d0
// Size: 0xa4
function function_955f4842() {
    if (is_true(level.var_1c393e86)) {
        return;
    }
    level.var_1c393e86 = 1;
    function_5be14e40();
    start = snd::play("veh_tkd_af_cargo_plane_start", [level.cargo_plane, (288, 0, 108)]);
    thread function_2d8bbe54(3);
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 1, eflags: 0x2 linked
// Checksum 0x682a3f4e, Offset: 0x2580
// Size: 0x18c
function function_2d8bbe54(wait_time) {
    if (is_true(level.var_3f10e8f2)) {
        return;
    }
    level.var_3f10e8f2 = 1;
    function_5be14e40();
    wait_time = snd::function_ea2f17d1(wait_time, 0.5);
    level.var_2d8bbe54 = snd::play("veh_tkd_af_cargo_plane_idle_lp", [level.cargo_plane, (288, 0, 108)]);
    snd::function_db78159d(level.var_2d8bbe54, 0);
    snd::function_964c3a03(level.var_2d8bbe54, 1);
    wait(wait_time);
    snd::function_db78159d(level.var_2d8bbe54, 1, 0.5);
    level waittill(#"hash_352bb96b1643631");
    snd::function_964c3a03(level.var_2d8bbe54, 2, 1.5);
    snd::stop(level.var_2d8bbe54, 5);
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x0
// Checksum 0xb85460f, Offset: 0x2718
// Size: 0x98
function function_e9cf99c1() {
    if (is_true(level.var_b2f77aec)) {
        return;
    }
    level.var_b2f77aec = 1;
    function_5be14e40();
    snd::play("veh_tkd_af_cargo_plane_accelerate", [level.cargo_plane, (288, 0, 108)]);
    level notify(#"hash_5b80aed93a868b80");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x89bdb904, Offset: 0x27b8
// Size: 0xa0
function function_ad605463() {
    if (is_true(level.var_72cef6cb)) {
        return;
    }
    level.var_72cef6cb = 1;
    function_53c8ee41();
    snd::play("veh_tkd_af_cargo_plane_takeoff", [level.cargo_plane_mover, (288, 0, 108)]);
    waitframe(3);
    level notify(#"hash_352bb96b1643631");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xf5c74fd7, Offset: 0x2860
// Size: 0x74
function function_d1b165f5() {
    if (is_true(level.var_ea29c588)) {
        return;
    }
    level.var_ea29c588 = 1;
    function_53c8ee41();
    level thread function_b3fdcb06(level.cargo_plane_mover, (288, 0, 108), "veh_tkd_af_cargo_plane_high_lyr1_lp");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xbb586a8f, Offset: 0x28e0
// Size: 0x1c
function function_204b1d87() {
    snd::play("evt_bullettime_shot_main");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x0
// Checksum 0xf87e55ea, Offset: 0x2908
// Size: 0x24
function function_4e08ef9b() {
    wait(4);
    snd::play("evt_tkd_chase_start_peel_out");
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 1, eflags: 0x2 linked
// Checksum 0xb55dd70b, Offset: 0x2938
// Size: 0x66
function function_b5f89c52(veh) {
    if (isdefined(veh) && isdefined(veh.var_e59bc220)) {
        veh notify(#"hash_79d732c6bc0d7bd1");
        snd::stop(veh.var_e59bc220, 0.5);
        veh.var_e59bc220 = undefined;
    }
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x5e2d5e8f, Offset: 0x29a8
// Size: 0x1e
function function_81191c8a() {
    while (!isdefined(level.rc_car_plr)) {
        waitframe(1);
    }
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0xd478eb39, Offset: 0x29d0
// Size: 0xfc
function function_e8df4c70() {
    if (is_true(level.var_b7589e37)) {
        return;
    }
    level.var_b7589e37 = 1;
    function_81191c8a();
    snd::play([1.1, "wpn_tkd_rcxd_deploy_drop", 0], level.rc_car_plr);
    function_5ea2c6e3("cp_tkdn_af_chase_rcxd_mix", 1, 1);
    function_d942b1c8(level.rc_car_plr, "tag_suspension_front", "wpn_tkd_rcxd_veh_high_lp");
    function_ed62c9c2("cp_tkdn_af_rc_chase_tires", 3);
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 2, eflags: 0x2 linked
// Checksum 0x7e34558, Offset: 0x2ad8
// Size: 0x82
function function_b233d29e(wait_time = 1, fade_time = 0) {
    var_f3c1505b = snd::play("wpn_tkd_rcxd_static_fuzz_lp");
    wait(wait_time);
    snd::stop(var_f3c1505b, fade_time);
    var_f3c1505b = undefined;
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 1, eflags: 0x2 linked
// Checksum 0x16489ba4, Offset: 0x2b68
// Size: 0x80
function function_7142e76c(veh) {
    level endon(#"hash_2b1ea816682de37d");
    while (isentity(veh)) {
        snd::play("veh_tkd_chase_npc_jeeps_skid_stop", [veh, (0, 0, 9)]);
        wait(1);
    }
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 1, eflags: 0x2 linked
// Checksum 0x2b57fd23, Offset: 0x2bf0
// Size: 0x54
function cargo_debris(ent) {
    if (!isdefined(ent.var_a107d844)) {
        var_a107d844 = snd::play("phy_tkd_prop_vel_debris_lp", ent);
        snd::function_f4f3a2a(var_a107d844, ent);
    }
}

// Namespace namespace_a052577e/namespace_c0722ca1
// Params 0, eflags: 0x2 linked
// Checksum 0x303b5ed, Offset: 0x2c50
// Size: 0x254
function af_wreck_amb() {
    var_a27674c9 = snd::play("emt_tkd_wreck_fire_01_lp", (10461, -54901, -25182));
    var_d96e62bc = snd::play("emt_tkd_wreck_fire_02_lp", (10738, -54523, -25136));
    var_c6a73d2e = snd::play("emt_tkd_wreck_fire_03_lp", (10648, -55102, -25155));
    metal = snd::play("emt_tkd_wreck_metal_lp", (10261, -54762, -25082));
    var_47cd46cf = snd::play("emt_tkd_wreck_sirens_01_lp", (10491, -53575, -25003));
    var_630e7d51 = snd::play("emt_tkd_wreck_sirens_02_lp", (15160, -54833, -24566));
    var_f07a182a = snd::play("emt_tkd_wreck_sirens_03_lp", (-4034, -49059, -24440));
    level waittill(#"af_wreck_amb_end");
    snd::stop(var_a27674c9, 3);
    snd::stop(var_d96e62bc, 3);
    snd::stop(var_c6a73d2e, 3);
    snd::stop(metal, 3);
    snd::stop(var_47cd46cf, 3);
    snd::stop(var_630e7d51, 3);
    snd::stop(var_f07a182a, 3);
}

