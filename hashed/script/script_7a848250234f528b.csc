#using script_1cd690a97dfca36e;
#using script_28e27ee9b45fd02d;
#using scripts\core_common\array_shared;
#using scripts\core_common\audio_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\music_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\cp_common\snd;
#using scripts\cp_common\snd_utility;

#namespace namespace_232ddc52;

// Namespace namespace_232ddc52/level_preinit
// Params 1, eflags: 0x20
// Checksum 0xbddbe8ad, Offset: 0x778
// Size: 0x8c
function event_handler[level_preinit] function_b489bb7b(*eventstruct) {
    snd::function_d4ec748e(&function_f2a2832d);
    snd::function_ce78b33b(&function_32ab045);
    snd::trigger_init(&_trigger);
    snd::function_5e69f468(&_objective);
}

// Namespace namespace_232ddc52/event_cc819519
// Params 1, eflags: 0x20
// Checksum 0x590234d8, Offset: 0x810
// Size: 0xcc
function event_handler[event_cc819519] function_686b88aa(*eventstruct) {
    snd::function_294cb4fa();
    snd::waitforplayers();
    var_897fdde = undefined;
    while (!isdefined(var_897fdde)) {
        var_897fdde = getent(0, "audio_stop_battle_amb", "targetname");
        waitframe(1);
    }
    var_897fdde thread function_736252be(level.player);
    function_befba10a();
    thread function_f7f4e465();
    thread function_fc3e62a2();
    thread function_384c9608();
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 2, eflags: 0x4
// Checksum 0x5fcc7d7a, Offset: 0x8e8
// Size: 0x1e2
function private function_32ab045(ent, name) {
    switch (name) {
    case #"hash_5dc1860bc6361a4f":
        var_bd11e136 = ent;
        thread function_22eb52f1(ent);
        ent waittill(#"death");
        var_bd11e136 = undefined;
        break;
    case #"audio_escape_double_door_open":
        mdl_door = ent;
        thread function_44d9c5d6(ent);
        ent waittill(#"death");
        mdl_door = undefined;
        break;
    case #"audio_escape_heli_flyby_scene":
        var_d68cf643 = ent;
        thread function_82923c77(ent);
        ent waittill(#"death");
        var_d68cf643 = undefined;
        break;
    case #"audio_scaffolding_truck_early":
        var_3e7640be = ent;
        thread function_6d1b5ca8(ent);
        ent waittill(#"death");
        var_3e7640be = undefined;
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<dev string:x38>" + snd::function_783b69(name, "<dev string:x5d>"));
        #/
        break;
    }
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 3, eflags: 0x4
// Checksum 0x6843cb38, Offset: 0xad8
// Size: 0x21a
function private _trigger(player, trigger, *var_ec80d14b) {
    trigger_name = snd::function_ea2f17d1(var_ec80d14b.script_ambientroom, "$default");
    switch (trigger_name) {
    case #"$default":
        break;
    case #"rev_church":
        snd::function_645c2f9b(trigger, trigger_name);
        break;
    case #"hash_6faee8855385fdd":
        thread function_1b4cd940();
        break;
    case #"hash_4ceeb995c5173348":
        break;
    case #"hash_45e3459aba1a8e44":
        thread function_1b4cd940();
        break;
    case #"hash_19a6ae873920999c":
        thread function_1b4cd940();
        break;
    case #"hash_514984330c55ea42":
        thread function_1b4cd940();
        break;
    case #"hash_13e5f87e2bdb4522":
        thread function_1b4cd940();
        break;
    case #"hash_4090bff003f29d3d":
        thread function_1b4cd940();
        break;
    case #"hash_8d5a53bd1de8c8b":
        level notify(#"hash_45857b1e602daa65");
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<dev string:x62>" + trigger_name + "<dev string:x5d>");
        #/
        break;
    }
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 2, eflags: 0x4
// Checksum 0x83209290, Offset: 0xd00
// Size: 0x49a
function private function_f2a2832d(*player, msg) {
    switch (msg) {
    case #"audio_level_begin_duck_start":
        thread function_563a791();
        break;
    case #"audio_level_begin_duck_stop":
        thread function_1cfbed4a();
        break;
    case #"audio_bird_spook_upper":
        thread function_24ff6bbb();
        break;
    case #"audio_bird_spook_lower":
        thread function_86a08556();
        break;
    case #"church_explosion_event":
        thread church_explosion_event();
        thread function_a1111031();
        break;
    case #"audio_table_flip":
        thread function_a18572ae();
        break;
    case #"audio_courtyard_side_doors_open":
        thread function_c70ec914();
        break;
    case #"rpg_vs_pillar":
        thread rpg_vs_pillar();
        break;
    case #"hash_66c5b8239714abe3":
        thread function_66d66e0d();
        break;
    case #"flg_cctv_cam_swap_audio":
        thread function_e80187e0();
        break;
    case #"hash_1a924faa8856a242":
        level notify(#"hash_4c8029ada7b314e8");
        break;
    case #"audio_cctv_dining_room_duck":
        thread function_cacf9f06();
        break;
    case #"audio_cctv_nuke_room_duck":
        thread function_f80880e0();
        break;
    case #"hash_78689cff8e101ca3":
        level notify(#"hash_11cf1c7d4187ce0b");
        break;
    case #"hash_3f39fdf09fc1c4cf":
        thread function_2a63d46a();
        break;
    case #"hash_45e98cb8ee510b06":
        thread function_824188b9();
        break;
    case #"audio_start_disinfectant_spray":
        thread function_3f00de2d();
        break;
    case #"audio_stop_disinfectant_spray":
        level notify(#"hash_24e6b47fcba7f75");
        break;
    case #"audio_escape_hallway_glass":
        thread function_bd21b731();
        break;
    case #"audio_escape_heli_flyby_started":
        level notify(#"hash_5dec6ed246c00c9c");
        break;
    case #"audio_ac130_started":
        thread function_c84e23dc();
        break;
    case #"audio_ac130_stopped":
        level notify(#"hash_e8e9cb204d25619");
        break;
    case #"audio_rpg_aftermath_debris_fires":
        thread function_e27bd56b();
        break;
    case #"musictrack_cp_cuba_2":
    case #"musictrack_cp_cuba_3":
    case #"musictrack_cp_cuba_1":
    case #"musictrack_cp_cuba_4":
    case #"musictrack_cp_cuba_5":
        function_2cca7b47(0, msg);
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<dev string:x86>" + snd::function_783b69(msg, "<dev string:x5d>"));
        #/
        break;
    }
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 1, eflags: 0x4
// Checksum 0x292752b7, Offset: 0x11a8
// Size: 0x1b2
function private _objective(objective) {
    switch (objective) {
    case #"ride":
        level flag::set("flg_audio_cicada_ambience");
        break;
    case #"church":
        level flag::set("flg_audio_cicada_ambience");
        break;
    case #"plaza":
        break;
    case #"1st_floor":
        break;
    case #"1st_floor_cctv":
        thread function_f0f5eef2();
        break;
    case #"2nd_floor":
        break;
    case #"vip_room":
        break;
    case #"escape":
        break;
    case #"rooftop":
        break;
    case #"rooftop_defend_1":
        break;
    case #"exfil":
        break;
    case #"no_game":
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<dev string:xa4>" + objective + "<dev string:x5d>");
        #/
        break;
    }
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 1, eflags: 0x0
// Checksum 0x5f73a7ac, Offset: 0x1368
// Size: 0xbe
function function_37294a47(var_47544845) {
    self endon(#"death");
    while (true) {
        var_2564fee0 = var_47544845.origin + anglestoright(var_47544845.angles) * 12;
        var_2564fee0 += anglestoup(var_47544845.angles) * 10;
        self.origin = var_2564fee0;
        if (var_47544845.health <= 0) {
            self delete();
        }
        waitframe(5);
    }
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0x73608111, Offset: 0x1430
// Size: 0x1c4
function function_befba10a() {
    plr = undefined;
    var_58602358 = [];
    snd::function_b4de7637("$default", var_58602358);
    rev_church = [["emt_debris_dust", plr, [4, 8], [80, 400]], ["emt_debris_rubble", plr, [5, 10], [100, 600]], ["emt_elm_int_mtl_stress_tings", plr, [15, 30], [500, 900]]];
    snd::function_b4de7637("rev_church", rev_church);
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0x46629e, Offset: 0x1600
// Size: 0x2c
function function_384c9608() {
    level waittill(#"hash_715886da61e0bccc");
    thread function_acf08d60();
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0x4068d41b, Offset: 0x1638
// Size: 0x84
function function_f7f4e465() {
    level flag::wait_till("flg_audio_cicada_ambience");
    var_5d1f282 = snd::play("amb_cicada_lp_lr");
    level flag::wait_till("flg_audio_cicada_ambience_stop");
    snd::stop(var_5d1f282, 0.5);
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0xffa0e63, Offset: 0x16c8
// Size: 0x1c
function function_563a791() {
    function_5ea2c6e3("cp_nic_revolucion_level_begin");
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0xa633c4db, Offset: 0x16f0
// Size: 0x1c
function function_1cfbed4a() {
    function_ed62c9c2("cp_nic_revolucion_level_begin");
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0x4a070240, Offset: 0x1718
// Size: 0x54
function function_24ff6bbb() {
    snd::play("evt_bird_spook_upper_right", (-920, 7148, 581));
    snd::play("evt_bird_spook_upper_left", (-171, 7693, 589));
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0x4b600a65, Offset: 0x1778
// Size: 0x54
function function_86a08556() {
    snd::play("evt_bird_spook_lower_close", (-879, 7390, 306));
    snd::play("evt_bird_spook_lower_dist", (-1200, 6970, 357));
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0xb5fbd191, Offset: 0x17d8
// Size: 0x20c
function church_explosion_event() {
    snd::play("evt_church_distant_explo", (846, 6448, 630));
    snd::play([0.25, "evt_church_fine_debris_lr", 0], (14, 6371, 300));
    snd::play([0.25, "evt_church_fine_debris_lsrs", 0], (-541, 6609, 300));
    snd::play([1.5, "evt_church_rubble_big_01", 0], (432, 6520, 180));
    snd::play([1, "evt_church_rubble_big_02", 0], (153, 6546, 180));
    snd::play([1.8, "evt_church_rubble_small_01", 0], (23, 5571, 180));
    snd::play([2.2, "evt_church_scaffold_debris", 0], (-65, 5921, 352));
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0xcaa3a55b, Offset: 0x19f0
// Size: 0x5c
function function_a1111031() {
    level flag::set("flg_audio_cicada_ambience_stop");
    wait 2;
    level.var_bbe3d615 = snd::play("emt_church_occluded_battle_lp", (1260, 5650, 75));
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 1, eflags: 0x0
// Checksum 0xc891321d, Offset: 0x1a58
// Size: 0x8c
function function_736252be(player) {
    trigger = self;
    while (true) {
        waitresult = trigger waittill(#"trigger");
        trigger_player = waitresult.activator;
        if (trigger_player == player) {
            snd::stop(level.var_bbe3d615, 1);
            break;
        }
    }
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0x2b8abf2d, Offset: 0x1af0
// Size: 0x19c
function function_1b4cd940() {
    if (level flag::get("flg_audio_interior_gun_fire_playing") == 1) {
        return;
    }
    if (isdefined(level.player)) {
        level flag::set("flg_audio_interior_gun_fire_playing");
        var_f167410b = snd::emitter("emt_battle_amb_short", (-787, 1109, 617), [8, 15], [500, 1500]);
        var_ba905d93 = snd::emitter("emt_battle_amb_long", (-787, 1109, 617), [10, 20], [500, 1500]);
        level waittill(#"hash_45857b1e602daa65");
        var_f167410b notify(#"snd_emitter_stop");
        var_ba905d93 notify(#"snd_emitter_stop");
        level flag::clear("flg_audio_interior_gun_fire_playing");
    }
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0x5e0d97d3, Offset: 0x1c98
// Size: 0xf4
function function_a18572ae() {
    snd::play([0, "evt_table_flip_middle", 0], (-1490, 1800, 148));
    snd::play([0.25, "evt_table_flip_left", 0], (-1419, 1852, 148));
    snd::play([0.35, "evt_table_flip_right", 0], (-1544, 1882, 148));
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0x4cbfddb1, Offset: 0x1d98
// Size: 0x2c
function function_c70ec914() {
    snd::play("evt_scientists_door_open", (-932, 458, 155));
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0x775163a8, Offset: 0x1dd0
// Size: 0x2c
function rpg_vs_pillar() {
    snd::play("evt_rpg_pillar_impact", (325, 1270, 148));
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0xf4d0d00c, Offset: 0x1e08
// Size: 0x84
function function_66d66e0d() {
    audio::snd_set_snapshot("");
    thread function_59b13e7b();
    var_59d324c1 = snd::play("evt_cctv_camera_static_lp");
    level waittill(#"hash_11cf1c7d4187ce0b");
    snd::stop(var_59d324c1, 0.5);
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0x1d0ed63a, Offset: 0x1e98
// Size: 0x50
function function_e80187e0() {
    snd::play("evt_cctv_camera_switch");
    snd::stop(level.var_c1e7527, 0.25);
    level notify(#"hash_685535401da9f08e");
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0x780681d7, Offset: 0x1ef0
// Size: 0x1c
function function_cacf9f06() {
    audio::snd_set_snapshot("cp_nic_revolucion_cctv_dining_room");
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0xecd42c80, Offset: 0x1f18
// Size: 0x6c
function function_f80880e0() {
    level waittill(#"hash_685535401da9f08e");
    audio::snd_set_snapshot("cp_nic_revolucion_cctv_nuke_room");
    level waittill(#"hash_11cf1c7d4187ce0b");
    wait 5;
    audio::snd_set_snapshot("");
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0x4a64b641, Offset: 0x1f90
// Size: 0x74
function function_59b13e7b() {
    level waittill(#"hash_4c8029ada7b314e8");
    level.var_c1e7527 = snd::play("evt_cctv_broken_static_lp");
    level waittill(#"hash_11cf1c7d4187ce0b");
    snd::stop(level.var_c1e7527, 0.25);
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0xe40d1254, Offset: 0x2010
// Size: 0x17c
function function_2a63d46a() {
    snd::play("evt_c4_warning_beep_01", (-5, 303, 148));
    wait 0.35;
    snd::play("evt_c4_warning_beep_01", (-5, 303, 148));
    wait 0.3;
    snd::play("evt_c4_warning_beep_01", (-5, 303, 148));
    wait 0.25;
    snd::play("evt_c4_warning_beep_01", (-5, 303, 148));
    wait 0.2;
    snd::play("evt_c4_warning_beep_02", (-5, 303, 148));
    wait 0.15;
    snd::play("evt_c4_warning_beep_02", (-5, 303, 148));
    wait 0.1;
    snd::play("evt_c4_warning_beep_02", (-5, 303, 148));
    wait 0.05;
    snd::play("evt_c4_warning_beep_02", (-5, 303, 148));
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 1, eflags: 0x0
// Checksum 0xc3ecaa7f, Offset: 0x2198
// Size: 0x6c
function function_22eb52f1(ent) {
    snd::play("evt_gate_breach_explo", ent);
    snd::play([0.65, "evt_gate_breach_debris_lr", 0]);
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0xaafe2d0a, Offset: 0x2210
// Size: 0x120
function function_f0f5eef2() {
    if (level flag::get("flg_audio_cctv_tvs") == 1) {
        return;
    }
    level flag::set("flg_audio_cctv_tvs");
    var_136b3fde = getdynentarray("audio_cctv_tv_dyent");
    foreach (var_21f452ad in var_136b3fde) {
        var_e9853265 = snd::play("dst_amk_tv_lp", var_21f452ad.origin);
        var_e9853265 thread function_37294a47(var_21f452ad);
    }
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0xc4fb112c, Offset: 0x2338
// Size: 0x2c
function function_824188b9() {
    snd::play("dst_rev_film_projector", (955, 155, 425));
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0xac8daab5, Offset: 0x2370
// Size: 0xf4
function function_3f00de2d() {
    snd::play("evt_disinfectant_spray_start", (-2, 1330, 450));
    spray = snd::play([0, "evt_disinfectant_spray_lp", 0.3], (-2, 1330, 450));
    level waittill(#"hash_24e6b47fcba7f75");
    snd::play("evt_disinfectant_spray_stop", (-2, 1330, 450));
    wait 0.3;
    snd::stop(spray, 0.4);
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0x15b0c377, Offset: 0x2470
// Size: 0x6c
function function_bd21b731() {
    var_d585162 = (-776, 2504, 416);
    var_a35afd59 = (-952, 2504, 416);
    snd::play("dst_escape_hallway_glass_panes", var_d585162);
    snd::play("dst_escape_hallway_glass_panes", var_a35afd59);
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 1, eflags: 0x0
// Checksum 0x955e4c5d, Offset: 0x24e8
// Size: 0x24
function function_44d9c5d6(ent) {
    snd::play("evt_enemy_door_kick_open", ent);
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 1, eflags: 0x0
// Checksum 0xd5404d7f, Offset: 0x2518
// Size: 0xc4
function function_82923c77(ent) {
    var_d710d6b2 = snd::play([0, "evt_escape_heli_fly_by_idle", 3], ent);
    level waittill(#"hash_5dec6ed246c00c9c");
    level notify(#"hash_45857b1e602daa65");
    snd::play("evt_escape_heli_fly_by", ent);
    snd::stop(var_d710d6b2, 2);
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 1, eflags: 0x0
// Checksum 0xdb52591a, Offset: 0x25e8
// Size: 0x84
function function_6d1b5ca8(ent) {
    if (level flag::get("first_truck_playing") == 1) {
        snd::play("veh_escape_truck_01", ent);
        return;
    }
    level flag::set("first_truck_playing");
    snd::play("veh_escape_truck_02", ent);
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0xd91bfb8, Offset: 0x2678
// Size: 0x4c
function function_fc3e62a2() {
    level waittill(#"hash_7c58894eadeb3e1f");
    wait 2;
    snd::play("cin_rev_5040_rtp_balloon_release_tank_impact", (-687, 1022, 315));
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0x2371ffe, Offset: 0x26d0
// Size: 0x4c
function function_c84e23dc() {
    audio::snd_set_snapshot("cp_nic_revolucion_ac130");
    level waittill(#"hash_e8e9cb204d25619");
    audio::snd_set_snapshot("");
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0x56f2fb47, Offset: 0x2728
// Size: 0x54
function function_e27bd56b() {
    snd::play("pfx_fire_sml_rooftop_exfil", (-650, 327, 619));
    snd::play("pfx_fire_sml_rooftop_exfil", (-885, 299, 619));
}

// Namespace namespace_232ddc52/namespace_59daa852
// Params 0, eflags: 0x0
// Checksum 0x16fce6ae, Offset: 0x2788
// Size: 0x9c
function function_acf08d60() {
    function_5ea2c6e3("cp_nic_revolucion_skyhook_amb_mute", 0.5, 1);
    snd::play("evt_skyhook_wind_lr");
    wait 0.5;
    function_5ea2c6e3("cp_nic_revolucion_skyhook_sfx_fadeout", 4, 1);
    function_5ea2c6e3("cp_nic_revolucion_skyhook_sfx_lpf", 2.5, 1);
}

