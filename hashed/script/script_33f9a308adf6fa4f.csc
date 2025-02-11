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

#namespace namespace_63fe6111;

// Namespace namespace_63fe6111/level_preinit
// Params 1, eflags: 0x20
// Checksum 0x5e7835e0, Offset: 0x5a8
// Size: 0x8c
function event_handler[level_preinit] function_b489bb7b(*eventstruct) {
    snd::function_d4ec748e(&function_f2a2832d);
    snd::function_ce78b33b(&function_32ab045);
    snd::trigger_init(&_trigger);
    snd::function_5e69f468(&_objective);
}

// Namespace namespace_63fe6111/event_cc819519
// Params 1, eflags: 0x20
// Checksum 0x26bd960b, Offset: 0x640
// Size: 0xb4
function event_handler[event_cc819519] function_686b88aa(*eventstruct) {
    snd::function_294cb4fa();
    snd::waitforplayers();
    function_befba10a();
    level.player = snd::function_2b2b83dc()[0];
    thread function_13069218();
    thread function_685d490e();
    thread function_6c2fc08e();
    thread function_956b43e5();
    thread function_31b78e7d();
}

// Namespace namespace_63fe6111/namespace_63fe6111
// Params 2, eflags: 0x4
// Checksum 0x7460ef84, Offset: 0x700
// Size: 0xf2
function private function_32ab045(ent, name) {
    switch (name) {
    case #"audio_srv_heli":
        level.var_ebbd5cf8 = ent;
        thread function_f2ee7a27(ent);
        ent waittill(#"death");
        level.var_ebbd5cf8 = undefined;
        break;
    case #"hash_65e6eae762f128ac":
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<dev string:x38>" + snd::function_783b69(name, "<dev string:x5d>"));
        #/
        break;
    }
}

// Namespace namespace_63fe6111/namespace_63fe6111
// Params 3, eflags: 0x4
// Checksum 0x39065afc, Offset: 0x800
// Size: 0x35a
function private _trigger(player, trigger, *var_ec80d14b) {
    trigger_name = snd::function_ea2f17d1(var_ec80d14b.script_ambientroom, "$default");
    switch (trigger_name) {
    case #"$default":
        snd::function_645c2f9b(trigger, trigger_name);
        break;
    case #"yam_mountainside_half_open":
        snd::function_645c2f9b(trigger, trigger_name);
        break;
    case #"yam_sat_room_half_open":
        thread function_5e62b956();
        snd::function_645c2f9b(trigger, trigger_name);
        break;
    case #"yam_dark_hall_tight":
        snd::function_645c2f9b(trigger, trigger_name);
        break;
    case #"yam_dark_hall_tight_wind":
        snd::function_645c2f9b(trigger, trigger_name);
        break;
    case #"yam_dark_hall_med_wind":
        snd::function_645c2f9b(trigger, trigger_name);
        break;
    case #"yam_dark_hall_stairwell":
        snd::function_645c2f9b(trigger, trigger_name);
        break;
    case #"yam_dark_hall_conference_room":
        snd::function_645c2f9b(trigger, trigger_name);
        break;
    case #"yam_dark_hall_office_room":
        snd::function_645c2f9b(trigger, trigger_name);
        break;
    case #"yam_half_open_tight":
        snd::function_645c2f9b(trigger, trigger_name);
        break;
    case #"yam_half_open_med":
        snd::function_645c2f9b(trigger, trigger_name);
        break;
    case #"yam_destroyed_room_open":
        snd::function_645c2f9b(trigger, trigger_name);
        break;
    case #"yam_server_overlook_room":
        snd::function_645c2f9b(trigger, trigger_name);
        break;
    case #"yam_server_room":
        snd::function_645c2f9b(trigger, trigger_name);
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<dev string:x62>" + trigger_name + "<dev string:x5d>");
        #/
        break;
    }
}

// Namespace namespace_63fe6111/namespace_63fe6111
// Params 2, eflags: 0x4
// Checksum 0xb91eba5f, Offset: 0xb68
// Size: 0x24a
function private function_f2a2832d(*player, msg) {
    switch (msg) {
    case #"audio_level_begin_duck_start":
        thread function_563a791();
        break;
    case #"hash_41afa3b05e35425b":
        thread function_1cfbed4a();
        break;
    case #"hash_42ab199f7f0a951a":
        thread function_d27488d();
        break;
    case #"audio_level_triton_verb_disable":
        audio::function_21f8b7c3();
        break;
    case #"audio_level_triton_verb_enable":
        audio::function_d3790fe();
        break;
    case #"hash_5fdce3012e88ffac":
        thread function_58caa4cd();
        break;
    case #"hash_48b5a2ae2037fea":
        waitframe(1);
        level notify(#"hash_6dde5f256f8081a8");
        break;
    case #"outro_movie":
        audio::snd_set_snapshot("cmn_duck_all_but_movie");
        break;
    case #"musictrack_cp_yamantau_1":
    case #"musictrack_cp_yamantau_3":
    case #"musictrack_cp_yamantau_2":
    case #"musictrack_cp_yamantau_5":
    case #"musictrack_cp_yamantau_4":
        function_2cca7b47(0, msg);
        break;
    case #"hash_65e6eae762f128ac":
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<dev string:x86>" + snd::function_783b69(msg, "<dev string:x5d>"));
        #/
        break;
    }
}

// Namespace namespace_63fe6111/namespace_63fe6111
// Params 1, eflags: 0x4
// Checksum 0x1f56aa9a, Offset: 0xdc0
// Size: 0x9a
function private _objective(objective) {
    switch (objective) {
    case #"hash_65e6eae762f128ac":
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

// Namespace namespace_63fe6111/namespace_63fe6111
// Params 0, eflags: 0x0
// Checksum 0x22d0b807, Offset: 0xe68
// Size: 0x24d4
function function_befba10a() {
    plr = undefined;
    var_58602358 = [["emt_elm_ext_wind_gusts_whistle", plr, [5, 8], [1, 1]], ["emt_elm_ext_wind_gusts_buffet_lr", plr, [1, 2], [1, 1]]];
    snd::function_b4de7637("$default", var_58602358);
    yam_mountainside_half_open = [["emt_elm_int_dirt_debris_close", plr, [4, 6], [80, 400]], ["emt_elm_int_dirt_debris_dist", plr, [2, 6], [100, 600]], ["emt_elm_int_mtl_creak_close", plr, [2, 4], [100, 500]], ["emt_elm_metal_stress_creak_close", plr, [2, 6], [100, 300]], ["emt_elm_metal_stress_close", plr, [2, 4], [100, 200]]];
    snd::function_b4de7637("yam_mountainside_half_open", yam_mountainside_half_open);
    yam_sat_room_half_open = [["emt_elm_int_dirt_debris_close", plr, [4, 6], [80, 500]], ["emt_elm_int_dirt_debris_dist", plr, [2, 6], [100, 600]], ["emt_elm_int_mtl_creak", plr, [2, 6], [100, 600]], ["emt_elm_int_mtl_creak_close", plr, [4, 6], [100, 600]], ["emt_elm_int_mtl_stress", plr, [2, 4], [300, 800]]];
    snd::function_b4de7637("yam_sat_room_half_open", yam_sat_room_half_open);
    yam_dark_hall_tight = [["emt_elm_int_mtl_groan", plr, [3, 6], [100, 300]], ["emt_elm_int_mtl_knock", plr, [4, 6], [100, 300]], ["emt_elm_int_mtl_knock_rattle", plr, [3, 5], [200, 500]], ["emt_elm_int_mtl_stress_creak", plr, [2, 6], [100, 300]], ["emt_elm_int_mtl_stress_tings", plr, [3, 5], [100, 700]]];
    snd::function_b4de7637("yam_dark_hall_tight", yam_dark_hall_tight);
    yam_dark_hall_tight_wind = [["emt_elm_int_mtl_groan", plr, [3, 6], [100, 300]], ["emt_elm_int_mtl_knock", plr, [4, 6], [100, 300]], ["emt_elm_int_mtl_knock_rattle", plr, [3, 5], [200, 500]], ["emt_elm_int_mtl_stress_creak", plr, [2, 6], [100, 300]], ["emt_elm_int_mtl_stress_tings", plr, [3, 5], [100, 700]]];
    snd::function_b4de7637("yam_dark_hall_tight_wind", yam_dark_hall_tight_wind);
    yam_dark_hall_med_wind = [["emt_elm_int_mtl_groan", plr, [3, 6], [100, 300]], ["emt_elm_int_mtl_knock", plr, [4, 6], [100, 300]], ["emt_elm_int_mtl_knock_rattle", plr, [3, 5], [200, 500]], ["emt_elm_int_mtl_stress_creak", plr, [2, 6], [100, 300]], ["emt_elm_int_mtl_stress_tings", plr, [3, 5], [100, 700]]];
    snd::function_b4de7637("yam_dark_hall_med_wind", yam_dark_hall_med_wind);
    yam_dark_hall_stairwell = [["emt_elm_int_mtl_groan", plr, [3, 6], [100, 300]], ["emt_elm_int_mtl_knock", plr, [2, 6], [100, 300]], ["emt_elm_int_mtl_knock_rattle", plr, [3, 5], [200, 500]], ["emt_elm_int_mtl_stress_creak", plr, [2, 6], [100, 300]], ["emt_elm_int_mtl_stress_tings", plr, [5, 8], [100, 700]]];
    snd::function_b4de7637("yam_dark_hall_stairwell", yam_dark_hall_stairwell);
    yam_dark_hall_conference_room = [["emt_elm_int_mtl_groan", plr, [3, 6], [100, 300]], ["emt_elm_int_mtl_knock", plr, [4, 6], [100, 300]], ["emt_elm_int_mtl_knock_rattle", plr, [3, 5], [200, 500]], ["emt_elm_int_mtl_stress_creak", plr, [2, 6], [100, 300]], ["emt_elm_int_mtl_stress_tings", plr, [5, 8], [100, 700]]];
    snd::function_b4de7637("yam_dark_hall_conference_room", yam_dark_hall_conference_room);
    yam_dark_hall_office_room = [["emt_elm_int_dirt_debris_close", plr, [4, 6], [80, 500]], ["emt_elm_int_dirt_debris_dist", plr, [4, 6], [100, 500]], ["emt_elm_int_mtl_creak", plr, [4, 6], [100, 500]], ["emt_elm_int_mtl_creak_close", plr, [5, 8], [200, 500]], ["emt_elm_int_mtl_stress", plr, [5, 8], [300, 800]], ["emt_elm_int_mtl_groan", plr, [4, 8], [100, 300]], ["emt_elm_int_mtl_knock", plr, [5, 9], [100, 300]], ["emt_elm_int_mtl_stress_creak", plr, [4, 6], [100, 300]]];
    snd::function_b4de7637("yam_dark_hall_office_room", yam_dark_hall_office_room);
    yam_half_open_tight = [["emt_elm_int_dirt_debris_close", plr, [3, 6], [80, 500]], ["emt_elm_int_dirt_debris_dist", plr, [3, 6], [100, 500]], ["emt_elm_int_mtl_creak", plr, [4, 8], [100, 500]], ["emt_elm_int_mtl_stress", plr, [5, 8], [300, 800]], ["emt_elm_int_mtl_stress_creak", plr, [4, 6], [200, 300]], ["emt_elm_metal_stress_creak_close", plr, [5, 7], [300, 500]], ["emt_elm_metal_stress_close", plr, [4, 6], [300, 500]]];
    snd::function_b4de7637("yam_half_open_tight", yam_half_open_tight);
    yam_half_open_med = [["emt_elm_int_dirt_debris_close", plr, [4, 6], [80, 500]], ["emt_elm_int_dirt_debris_dist", plr, [4, 6], [100, 500]], ["emt_elm_int_mtl_creak", plr, [4, 6], [100, 500]], ["emt_elm_int_mtl_creak_close", plr, [5, 8], [200, 500]], ["emt_elm_int_mtl_stress", plr, [5, 8], [300, 800]], ["emt_elm_int_mtl_groan", plr, [4, 8], [100, 300]], ["emt_elm_int_mtl_knock", plr, [5, 9], [100, 300]], ["emt_elm_int_mtl_stress_creak", plr, [4, 6], [100, 300]]];
    snd::function_b4de7637("yam_half_open_med", yam_half_open_med);
    yam_server_overlook_room = [["emt_elm_int_dirt_debris_close", plr, [4, 6], [80, 500]], ["emt_elm_int_dirt_debris_dist", plr, [4, 6], [100, 500]], ["emt_elm_int_mtl_creak", plr, [4, 6], [100, 500]], ["emt_elm_int_mtl_creak_close", plr, [5, 8], [200, 500]], ["emt_elm_int_mtl_stress", plr, [5, 8], [300, 800]], ["emt_elm_int_mtl_groan", plr, [4, 8], [100, 300]], ["emt_elm_int_mtl_knock", plr, [5, 9], [100, 300]], ["emt_elm_int_mtl_stress_creak", plr, [4, 6], [100, 300]]];
    snd::function_b4de7637("yam_server_overlook_room", yam_server_overlook_room);
    yam_destroyed_room_open = [["emt_elm_int_dirt_debris_close", plr, [4, 6], [100, 500]], ["emt_elm_int_dirt_debris_dist", plr, [4, 6], [100, 500]], ["emt_elm_metal_stress_creak_close", plr, [5, 7], [100, 300]], ["emt_elm_metal_stress_close", plr, [4, 8], [100, 300]]];
    snd::function_b4de7637("yam_destroyed_room_open", yam_destroyed_room_open);
    yam_server_room = [["emt_elm_int_dirt_debris_close", plr, [4, 6], [100, 500]], ["emt_elm_int_dirt_debris_dist", plr, [4, 6], [100, 500]], ["emt_elm_metal_stress_creak_close", plr, [5, 7], [100, 300]], ["emt_elm_metal_stress_close", plr, [4, 8], [100, 300]]];
    snd::function_b4de7637("yam_server_room", yam_server_room);
}

// Namespace namespace_63fe6111/namespace_63fe6111
// Params 0, eflags: 0x0
// Checksum 0x47fbf27d, Offset: 0x3348
// Size: 0x1c
function function_563a791() {
    function_5ea2c6e3("cp_rus_yamnantau_level_begin");
}

// Namespace namespace_63fe6111/namespace_63fe6111
// Params 0, eflags: 0x0
// Checksum 0xd86dc297, Offset: 0x3370
// Size: 0x1c
function function_1cfbed4a() {
    function_ed62c9c2("cp_rus_yamnantau_level_begin");
}

// Namespace namespace_63fe6111/namespace_63fe6111
// Params 0, eflags: 0x0
// Checksum 0xb12f677b, Offset: 0x3398
// Size: 0x84
function function_6c2fc08e() {
    level waittill(#"hash_5f85695219c36f45");
    level.var_db4c072c = snd::play("cin_1010_hel_intro_helicopter_idle", (-6727, -372, 3986));
    level waittill(#"hash_7c7b4d3f24eb9905");
    snd::stop(level.var_db4c072c, 0.5);
}

// Namespace namespace_63fe6111/namespace_63fe6111
// Params 0, eflags: 0x0
// Checksum 0x4fc404ed, Offset: 0x3428
// Size: 0x94
function function_685d490e() {
    snd::play("emt_frozen_waterfall", [(-4771, 5645, 2765)]);
    snd::play("emt_frozen_waterfall", [(-4644, 5611, 2852)]);
    snd::play("emt_frozen_waterfall", [(-4992, 5564, 2852)]);
}

// Namespace namespace_63fe6111/namespace_63fe6111
// Params 0, eflags: 0x0
// Checksum 0xea85686a, Offset: 0x34c8
// Size: 0x5c
function function_13069218() {
    level.var_b4c2cf5b = snd::emitter("emt_metal_creaks_canyon", [(415, 2481, 2874)], [8.5, 12]);
}

// Namespace namespace_63fe6111/namespace_63fe6111
// Params 0, eflags: 0x0
// Checksum 0xae332a22, Offset: 0x3530
// Size: 0x24
function function_5e62b956() {
    snd::stop(level.var_b4c2cf5b, 2);
}

// Namespace namespace_63fe6111/namespace_63fe6111
// Params 0, eflags: 0x0
// Checksum 0x119093e, Offset: 0x3560
// Size: 0x44
function function_d27488d() {
    wait 1.4;
    snd::play("evt_yam_zipline_pre_break");
    wait 4;
    snd::play("evt_yam_zipline_break_lr");
}

// Namespace namespace_63fe6111/namespace_63fe6111
// Params 0, eflags: 0x0
// Checksum 0x786694b, Offset: 0x35b0
// Size: 0x44
function function_31b78e7d() {
    level waittill(#"hash_6d45e3ce8ea09666");
    snd::play("cin_yam_8005_srv_slide_landing_guy_bf", (19743, -2285, -1120));
}

// Namespace namespace_63fe6111/namespace_63fe6111
// Params 1, eflags: 0x0
// Checksum 0xebc65e20, Offset: 0x3600
// Size: 0x18c
function function_f2ee7a27(ent) {
    level waittill(#"hash_6dde5f256f8081a8");
    snd::play([0, "veh_wz_server_hind_far", 0.25], ent);
    snd::play([0, "veh_wz_server_hind_mid", 0.25], ent);
    snd::play([0, "veh_wz_server_hind_close", 0.25], ent);
    snd::play([0, "veh_wz_server_hind_turbine", 0.25], ent);
    snd::play([0, "veh_wz_server_hind_lfe", 0.25], ent);
}

// Namespace namespace_63fe6111/namespace_63fe6111
// Params 0, eflags: 0x0
// Checksum 0x70139ea8, Offset: 0x3798
// Size: 0x2c
function function_58caa4cd() {
    function_5ea2c6e3("cp_rus_yamantau_server_lift_submix", 4, 1);
}

// Namespace namespace_63fe6111/namespace_63fe6111
// Params 0, eflags: 0x0
// Checksum 0xefefc6d8, Offset: 0x37d0
// Size: 0x74
function function_956b43e5() {
    level waittill(#"hash_613d56adc482cdbf");
    var_20608972 = snd::play("cin_9010_out_heli_outro_server_02");
    level waittill(#"hash_becd9e074b68fb8");
    snd::stop(var_20608972, 3);
}

