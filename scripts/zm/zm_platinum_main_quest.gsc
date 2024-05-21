// Atian COD Tools GSC CW decompiler test
#using script_2cb831533cab2794;
#using scripts\zm_common\objective_manager.gsc;
#using script_113dd7f0ea2a1d4f;
#using scripts\zm\zm_platinum_vo.gsc;
#using scripts\zm\zm_platinum.gsc;
#using script_76a8f964e4309959;
#using script_56731c09a921b64e;
#using script_1ea5c1aec36ac889;
#using script_75b577605c8961c0;
#using script_5b190e6124417f5a;
#using script_1c92816b36da2771;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\zm\archetype\archetype_zod_companion.gsc;
#using script_58860a35d0555f74;
#using scripts\zm_common\zm_utility_zsurvival.gsc;
#using scripts\zm_common\zm_fasttravel.gsc;
#using script_63b5c2449d0e2f48;
#using script_b64b5c3524ca55e;
#using scripts\zm\zm_ai_raz.gsc;
#using script_4d1e366b77f0b4b;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_items.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_intel.gsc;
#using scripts\zm_common\zm_sq.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using script_3411bb48d41bd3b;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_ui_inventory.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\callbacks.gsc;
#using script_3357acf79ce92f4b;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using script_72401f526ba71638;
#using scripts\zm_common\zm_crafting.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using script_5eb334a29c814cf2;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_1fc8f2e3;

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x24427320, Offset: 0x1210
// Size: 0xe44
function init() {
    clientfield::register("scriptmover", "" + #"hash_6f292901e2fcaeb3", 24000, getminbitcountfornum(2), "int");
    clientfield::register("actor", "" + #"hash_5342c00e940ad12b", 24000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_31c00da72502364a", 16000, 1, "int");
    clientfield::register("toplayer", "" + #"hash_5b2bd379d1c938ac", 24000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_344c9d30da0bff4f", 24000, 1, "counter");
    clientfield::register("scriptmover", "" + #"hash_588a5a1ddff05b46", 24000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_4c1ff67b48ab2fd0", 24000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_14e7d597c32c1920", 24000, 1, "int");
    clientfield::register("world", "" + #"hash_74ef16bbfe861136", 24000, 1, "int");
    clientfield::register("toplayer", "" + #"hash_7f481e663b9fb61b", 24000, 1, "int");
    clientfield::register("world", "" + #"hash_ec75a4d51d27449", 24000, 1, "int");
    clientfield::register("world", "" + #"hash_42e33e65c5c15242", 24000, 1, "int");
    clientfield::register("toplayer", "" + #"hash_67d900e4df2ea942", 24000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_60e4230d63925ac1", 24000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_6d758f70ffcac945", 24000, 1, "int");
    clientfield::register("actor", "" + #"hash_3db79576e67b8cbd", 24000, 2, "int");
    clientfield::register("scriptmover", "" + #"hash_1bb601e9156b597c", 24000, 1, "int");
    clientfield::register("world", "" + #"hash_2970fad3e14148a0", 24000, 1, "int");
    clientfield::register("world", "" + #"hash_763dd8035e80f7c", 1, 1, "int");
    clientfield::register("world", "" + #"hash_71cc27de592d837", 24000, 1, "counter");
    clientfield::register("world", "" + #"hash_511715e7849a3721", 24000, 1, "int");
    clientfield::register("world", "" + #"hash_3aba3806862f8cd7", 24000, 1, "counter");
    clientfield::register("world", "" + #"hash_564f26adf2d2fb01", 24000, 1, "int");
    clientfield::register("world", "" + #"hash_43c03ae4aff2ba0", 24000, 3, "int");
    clientfield::register("world", "" + #"hash_2a6acb420c3bb07e", 24000, 1, "int");
    clientfield::register("world", "" + #"hash_1775e41085aba683", 24000, 1, "int");
    clientfield::register("actor", "" + #"hash_b74182bd1e44a44", 24000, 1, "int");
    clientfield::register("actor", "" + #"hash_435db79c304e12a5", 24000, 1, "counter");
    clientfield::register("actor", "" + #"hash_3049a409503be8a0", 24000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_6d05bbcab1912e5a", 24000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_62ea9298804bdde2", 24000, 1, "int");
    clientfield::register("world", "" + #"hash_241bea7b7373e633", 24000, 3, "int");
    clientfield::register("world", "" + #"hash_65c1921bc2c97a5", 24000, 3, "int");
    clientfield::register("world", "" + #"hash_3a68a7b3ab1ec635", 24000, 2, "int");
    clientfield::register("world", "" + #"hash_17ccce73f851c91b", 24000, 2, "int");
    clientfield::register("scriptmover", "" + #"hash_5924dea34439fc47", 24000, 1, "counter");
    clientfield::register("world", "" + #"hash_4f9ffeb4ee76d72f", 24000, 1, "counter");
    clientfield::register("scriptmover", "" + #"hash_3bd38f4b718e54ad", 24000, 1, "int");
    clientfield::register("toplayer", "" + #"hash_c2f6751024324b7", 24000, getminbitcountfornum(3), "int");
    clientfield::register("actor", "" + #"hash_59443eb99c2a76a4", 24000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_643cab616f5bd8e4", 24000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_6256b5001ca2ef80", 24000, 2, "int");
    clientfield::register("world", "" + #"hash_1012bcebf9b9294", 24000, getminbitcountfornum(7), "int");
    clientfield::register("world", "" + #"hash_47b670f2b915b245", 24000, 1, "int");
    scene::add_scene_func(#"hash_11627f7549c94890", &function_cfd1ef61, "play");
    scene::add_scene_func(#"hash_11627f7549c94890", &function_872c860c, "done");
    scene::add_scene_func(#"hash_11627f7549c94890", &function_3d64af06, "Shot 210", 1);
    scene::add_scene_func(#"hash_11627f7549c94890", &function_3d64af06, "Shot 230", 0);
    scene::add_scene_func(#"hash_1999a8c9e82066f3", &function_fa357bb3, "init");
    level thread scene::init(#"hash_1999a8c9e82066f3");
    var_cdaee1cd = getentarray("train_5_clip", "targetname");
    array::run_all(var_cdaee1cd, &notsolid);
    var_1470ff44 = getent("hidden_door_clip", "script_noteworthy");
    if (isdefined(var_1470ff44)) {
        var_1470ff44 disconnectpaths();
    }
    level thread function_bef51ab1();
    if (!zm_utility::is_ee_enabled()) {
        return;
    }
    function_e983f15a();
    level flag::set(#"hash_25372b8b89ab540c");
    level.var_3034d7b8 = &function_d5d67561;
    level thread function_6bf79248();
    level thread function_d7f67c90();
    callback::on_actor_killed(&function_bb459ba0);
    callback::on_item_pickup(&on_item_pickup);
    namespace_1fd59e39::function_1376ec37(undefined, undefined, "vol_portal_restrict");
    namespace_553954de::function_6e9bb6b5(undefined, undefined, "vol_portal_restrict");
    /#
        level thread function_cd7a3de4();
    #/
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x45fd5e90, Offset: 0x2060
// Size: 0x324
function function_e983f15a() {
    level zm_sq::register(#"hash_389d6ed2b350d4ea", #"hash_587e74fe327f43fb", #"hash_342e10211feb6e85", &function_336abb75, &function_4cd9b9c);
    level zm_sq::register(#"hash_389d6ed2b350d4ea", #"hash_428542f9f5e07c8e", #"hash_342e0d211feb696c", &function_775253af, &function_f795ca1);
    level zm_sq::register(#"hash_389d6ed2b350d4ea", #"hash_2eee1c712127c1ca", #"hash_342e0e211feb6b1f", &function_2ca830c2, &function_6dbba0a7);
    level zm_sq::register(#"hash_389d6ed2b350d4ea", #"hash_4b1700b8df69481b", #"hash_342e0b211feb6606", &function_78368ca1, &function_3d1b0280);
    level zm_sq::register(#"hash_389d6ed2b350d4ea", #"hash_63dee3cf914e5e20", #"hash_342e0c211feb67b9", &function_9704287a, &function_ca3d5cd0);
    level zm_sq::register(#"hash_389d6ed2b350d4ea", #"hash_19376fa43a7e085c", #"hash_342e09211feb62a0", &function_4e719111, &function_a7935e0c);
    level zm_sq::register(#"hash_389d6ed2b350d4ea", #"hash_58a40205ad8ede62", #"hash_342e0a211feb6453", &namespace_4e8d47b1::function_79868b3b, &namespace_4e8d47b1::function_ec198408);
    level zm_sq::register(#"hash_389d6ed2b350d4ea", #"hash_284338cc7c9db648", #"hash_342e17211feb7a6a", &function_70647a4f, &function_24b3acaf, 1);
    level thread function_e9c07a3d();
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x3f67414e, Offset: 0x2390
// Size: 0x38
function function_d5d67561() {
    level notify(#"end_game", {#reason:#"main_quest_completed"});
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xf78640f6, Offset: 0x23d0
// Size: 0x24
function function_e9c07a3d() {
    level zm_sq::start(#"hash_389d6ed2b350d4ea");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x840dac10, Offset: 0x2400
// Size: 0x29c
function function_d7f67c90() {
    level flag::wait_till(#"start_zombie_round_logic");
    level.var_dbb1bda9 = [];
    level.var_1254ad06 = 0;
    level clientfield::set("" + #"hash_241bea7b7373e633", 7);
    var_973936fc = struct::get_array("harvesting_unit", "targetname");
    assert(var_973936fc.size >= 3, "stop_train_5_start");
    for (i = 0; i < 3; i++) {
        var_ab355cca = array::random(var_973936fc);
        arrayremovevalue(var_973936fc, var_ab355cca);
        if (!isdefined(level.var_dbb1bda9)) {
            level.var_dbb1bda9 = [];
        } else if (!isarray(level.var_dbb1bda9)) {
            level.var_dbb1bda9 = array(level.var_dbb1bda9);
        }
        if (!isinarray(level.var_dbb1bda9, var_ab355cca)) {
            level.var_dbb1bda9[level.var_dbb1bda9.size] = var_ab355cca;
        }
    }
    array::thread_all(level.var_dbb1bda9, &function_475abfc5);
    e_computer = getent("computer_in_safe", "targetname");
    e_computer thread function_3fead2ea();
    var_f2003732 = getent("tempest_lure_safe_damage_proxy", "targetname");
    var_f2003732 thread function_933074b6();
    var_c7e8a5d2 = struct::get("nuke_warhead");
    var_c7e8a5d2 thread function_4b9d2b47();
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x18ae823d, Offset: 0x26a8
// Size: 0x264
function function_4b9d2b47() {
    level endon(#"end_game");
    level flag::wait_till(#"hash_6e41f0a5d92ae86b");
    var_1440b452 = util::spawn_model(#"tag_origin", self.origin - (0, 0, 38), self.angles);
    var_1440b452 clientfield::set("" + #"hash_41ba39a474a3503f", 2);
    var_7949da0f = spawncollision(#"collision_clip_sphere_64", "mdl_invulnerable_clip", self.origin, self.angles);
    var_84faf171 = spawncollision(#"collision_clip_sphere_64", "mdl_invulnerable_clip", self.origin + (0, 0, 64), self.angles);
    var_4dcd0316 = spawncollision(#"collision_clip_sphere_64", "mdl_invulnerable_clip", self.origin + (0, 0, 128), self.angles);
    level flag::wait_till(#"hash_64e189de9593e575");
    var_1440b452 clientfield::set("" + #"hash_41ba39a474a3503f", 0);
    if (isdefined(var_7949da0f)) {
        var_7949da0f delete();
    }
    if (isdefined(var_84faf171)) {
        var_84faf171 delete();
    }
    if (isdefined(var_4dcd0316)) {
        var_4dcd0316 delete();
    }
    var_1440b452 util::delayed_delete(5);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x606badd, Offset: 0x2918
// Size: 0x32c
function function_933074b6() {
    level endon(#"end_game");
    level flag::wait_till(#"hash_6e41f0a5d92ae86b");
    var_2316a0ef = struct::get(self.target);
    var_1440b452 = util::spawn_model(#"tag_origin", var_2316a0ef.origin, var_2316a0ef.angles);
    var_1440b452 clientfield::set("" + #"hash_41ba39a474a3503f", 2);
    mdl_clip = spawncollision(#"collision_clip_sphere_64", "mdl_invulnerable_clip", var_2316a0ef.origin + (0, 0, 32), var_2316a0ef.angles);
    var_2d3dceb6 = util::spawn_model(#"hash_52d954a68e5a2936", (-2951, 14217, -556), (0, 90, 0));
    level flag::wait_till(#"hash_64e189de9593e575");
    var_1440b452 clientfield::set("" + #"hash_41ba39a474a3503f", 0);
    if (isdefined(mdl_clip)) {
        mdl_clip delete();
    }
    var_1440b452 util::delayed_delete(5);
    while (true) {
        waitresult = self waittill(#"damage");
        if (isplayer(waitresult.attacker) && namespace_1e7573ec::function_3efc58e4(waitresult.weapon) && waitresult.smeansofdeath !== "MOD_MELEE") {
            level clientfield::set("" + #"hash_564f26adf2d2fb01", 1);
            waitresult.attacker thread function_6c63c7c();
            wait(1);
            level thread function_84041c8c();
            break;
        }
    }
    var_2d3dceb6 thread util::delayed_delete(0.25);
    wait(1);
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x5e9c6e29, Offset: 0x2c50
// Size: 0x12a
function function_6c63c7c() {
    level endon(#"end_game");
    self endon(#"death");
    var_5ce186cc = self namespace_1e7573ec::function_d0aeb094();
    switch (var_5ce186cc) {
    case 0:
        self namespace_1e7573ec::function_1340d9d6(#"hash_4c73b020346d6d2e");
        break;
    case 1:
        self namespace_1e7573ec::function_1340d9d6(#"hash_127fa5c34553db5");
        self namespace_1e7573ec::function_1340d9d6(#"hash_127f95c34553c02");
        break;
    case 2:
        self namespace_1e7573ec::function_1340d9d6(#"hash_7a18af84c6256124");
        break;
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x30b0b09d, Offset: 0x2d88
// Size: 0xf4
function function_3fead2ea() {
    level endon(#"end_game");
    level flag::wait_till("power_on");
    level clientfield::set("" + #"hash_1012bcebf9b9294", 1);
    self.var_bec42bc3 = util::spawn_model(#"hash_18ea421c8e112587", self.origin, self.angles);
    self.var_bec42bc3 playsound(#"hash_35a6dba8d4956d39");
    self.var_bec42bc3 playloopsound(#"zmb_mq_stp5_screen_lp_alarm");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xb9104ca3, Offset: 0x2e88
// Size: 0x134
function function_336abb75(b_skipped) {
    if (b_skipped) {
        return;
    }
    level flag::wait_till(#"start_zombie_round_logic");
    level thread function_96fa8def();
    level clientfield::set("" + #"hash_2970fad3e14148a0", 1);
    level thread function_9ecd52b9();
    level flag::wait_till(#"hash_720384d338d58cf4");
    if (isdefined(level.klaus)) {
        level.klaus zodcompanionutility::function_fc67b7ed(&function_f33969bc);
    }
    level flag::wait_till(#"hash_331ca6d639f4883d");
    /#
        iprintlnbold("pl_box_dmg");
    #/
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0xbfced805, Offset: 0x2fc8
// Size: 0x2ec
function function_4cd9b9c(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        if (isdefined(level.klaus)) {
            level.klaus zodcompanionutility::function_30df05d5(&function_f33969bc);
        }
        var_8841c4a7 = getent("lab_hidden_door", "targetname");
        if (isdefined(var_8841c4a7)) {
            var_8841c4a7 delete();
        }
        if (!level flag::get(#"hash_5be6d6dc058f1402")) {
            level thread function_f8d46698();
            level flag::set(#"hash_5be6d6dc058f1402");
        } else {
            door_clip = getent("hidden_door_clip", "script_noteworthy");
            var_29f6c004 = getent("hidden_door_weapon_clip", "targetname");
            if (isdefined(door_clip)) {
                door_clip delete();
            }
            if (isdefined(var_29f6c004)) {
                var_29f6c004 delete();
            }
        }
        second_door_damage_proxy = getent("second_door_damage_proxy", "targetname");
        var_3b1d1169 = getent("lab_second_hidden_door", "targetname");
        if (isdefined(second_door_damage_proxy)) {
            second_door_damage_proxy delete();
        }
        if (isdefined(var_3b1d1169)) {
            var_3b1d1169 delete();
        }
        level clientfield::set("" + #"hash_74c14ea3fcc781ea", 1);
        level flag::set(#"hash_331ca6d639f4883d");
        level flag::set(#"hash_6e41f0a5d92ae86b");
        level flag::set(#"connect_sewers_and_power_substation_to_hidden_lab");
    }
    level clientfield::set("" + #"hash_47b670f2b915b245", 0);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x1336abad, Offset: 0x32c0
// Size: 0x206
function function_9ecd52b9() {
    level endon(#"end_game", #"hash_331ca6d639f4883d");
    var_c52277b9 = struct::get("hidden_door_fx_pos", "targetname");
    while (true) {
        var_c6ad1f99 = 0;
        a_players = function_a1ef346b();
        if (!isdefined(a_players)) {
            wait(1);
            continue;
        }
        if (a_players.size == 0) {
            wait(1);
            continue;
        }
        foreach (player in function_a1ef346b()) {
            dis = distancesquared(var_c52277b9.origin, player.origin);
            if (isdefined(dis) && dis <= sqr(3000)) {
                level clientfield::set("" + #"hash_47b670f2b915b245", 1);
                var_c6ad1f99 = 1;
                break;
            }
        }
        if (!var_c6ad1f99) {
            level clientfield::set("" + #"hash_47b670f2b915b245", 0);
        }
        wait(1);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xdefe49a6, Offset: 0x34d0
// Size: 0xda
function function_96fa8def() {
    level endon(#"end_game");
    while (true) {
        if (!isdefined(level.klaus)) {
            wait(3);
            continue;
        }
        zone = zm_zonemgr::get_zone_from_position(level.klaus.origin);
        if (isdefined(zone) && isinarray(["zone_sewers_and_escape_tunnel2", "zone_sewers_and_escape_tunnel"], zone)) {
            level thread zm_platinum_vo::function_e250a72f(#"hash_18d02fcacab75cf9");
            break;
        }
        wait(3);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xa88506a2, Offset: 0x35b8
// Size: 0x354
function function_f33969bc(*params) {
    level endon(#"hash_2304a1d24bb8597f");
    self notify("5c5736add4b3209d");
    self endon("5c5736add4b3209d");
    /#
        iprintlnbold("retrieve_cannister_elite_kill_zm");
    #/
    var_8841c4a7 = getent("lab_hidden_door", "targetname");
    dis = distance(self.origin, var_8841c4a7.origin);
    var_8841c4a7.is_active = 1;
    if (dis <= 200) {
        if (isdefined(level.klaus)) {
            level.klaus zodcompanionutility::function_34179e9a();
        }
        wait(0.2);
        do {
            level.klaus zodcompanionutility::function_14f3d97b(var_8841c4a7.origin);
            level.klaus waittilltimeout(2, #"goal");
            dis = distance(level.klaus.origin, var_8841c4a7.origin);
        } while (dis > 64 && isdefined(level.klaus));
        if (isdefined(level.klaus)) {
            level.klaus thread scene::play(#"hash_5fe7340db947aa81", "breakdoor", level.klaus);
            level.klaus thread namespace_33c196c8::function_dec85954("zber_kvo_cmdint", 1);
        }
        var_8841c4a7.is_active = 0;
        level thread function_4a473c7e();
        level waittill(#"hash_7369a2fc3cbcb7d8");
        level thread zm_vo::function_7622cb70(#"hash_61cbf0e277aaa14f");
        /#
            iprintlnbold("uranium_explosion");
        #/
        level clientfield::set("" + #"hash_42e33e65c5c15242", 1);
        var_8841c4a7 thread scene::play("p9_zm_platinum_siege_brick_edge_full_bundle", "play", var_8841c4a7);
        level waittill(#"hash_629e2d360d357393");
        var_8841c4a7 notsolid();
        if (isdefined(level.klaus)) {
            level.klaus zodcompanionutility::function_30df05d5(&function_f33969bc);
            level.klaus zodcompanionutility::function_633d6f7b();
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xc73c34e, Offset: 0x3918
// Size: 0x74
function function_4a473c7e() {
    second_door_damage_proxy = getent("second_door_damage_proxy", "targetname");
    second_door_damage_proxy thread function_f8702828();
    level thread function_f8d46698();
    level thread function_2af9fc81();
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xd4b20ae2, Offset: 0x3998
// Size: 0x15c
function function_2af9fc81() {
    level endon(#"end_game");
    waitresult = level waittill(#"hash_3cb4d977beb558f0");
    player = waitresult.player;
    var_5ce186cc = player namespace_1e7573ec::function_d0aeb094();
    switch (var_5ce186cc) {
    case 0:
        vo = #"hash_52ba386bd738f59d";
        break;
    case 1:
        vo = #"hash_47e492f5306192c2";
        break;
    case 2:
        vo = #"hash_79b9fb79f69deb97";
        break;
    }
    player thread namespace_1e7573ec::function_1340d9d6(vo);
    level flag::wait_till(#"hash_6e41f0a5d92ae86b");
    level thread zm_vo::function_7622cb70(#"hash_3ad54f48955b4c2");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x922898d0, Offset: 0x3b00
// Size: 0x27c
function function_f8702828() {
    level endon(#"end_game", #"hash_331ca6d639f4883d");
    var_dd0d0cbb = 4 / 0.1;
    self.var_e3c067a4 = 0;
    var_439e487c = 20;
    var_3b1d1169 = getent("lab_second_hidden_door", "targetname");
    var_c33e9969 = getweapon(#"ww_mega_barrel_fullauto_blazer_beam_t9");
    while (true) {
        waitresult = self waittill(#"damage");
        weapon = zm_weapons::function_386dacbc(waitresult.weapon);
        if (isplayer(waitresult.attacker) && weapon === var_c33e9969 && waitresult.mod !== "MOD_MELEE") {
            level notify(#"hash_3cb4d977beb558f0", {#player:waitresult.attacker});
            self.var_e3c067a4++;
            level clientfield::increment("" + #"hash_71cc27de592d837");
            /#
                iprintlnbold("vox_zber_mq8_klsdmg_klau_4");
            #/
            level clientfield::increment("" + #"hash_4f9ffeb4ee76d72f");
            if (self.var_e3c067a4 >= var_dd0d0cbb) {
                level flag::set(#"hash_5be6d6dc058f1402");
                break;
            }
        }
        wait(0.1);
        level thread function_83e02cc3();
    }
    wait(1);
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x81ccbb7, Offset: 0x3d88
// Size: 0xcc
function function_83e02cc3() {
    level endon(#"end_game", #"hash_3cb4d977beb558f0");
    self notify("44a97b234b727db5");
    self endon("44a97b234b727db5");
    wait(3);
    level clientfield::increment("" + #"hash_3aba3806862f8cd7", 1);
    second_door_damage_proxy = getent("second_door_damage_proxy", "targetname");
    while (second_door_damage_proxy.var_e3c067a4 > 0) {
        second_door_damage_proxy.var_e3c067a4--;
        wait(0.1);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xa49faea3, Offset: 0x3e60
// Size: 0x23c
function function_f8d46698() {
    level notify(#"hash_72141e8925b05716");
    level endon(#"end_game", #"hash_72141e8925b05716");
    level flag::wait_till(#"hash_5be6d6dc058f1402");
    level clientfield::set("" + #"hash_511715e7849a3721", 1);
    level clientfield::set("" + #"hash_ec75a4d51d27449", 1);
    level clientfield::set("" + #"hash_74c14ea3fcc781ea", 1);
    wait(2);
    door_clip = getent("hidden_door_clip", "script_noteworthy");
    if (isdefined(door_clip)) {
        door_clip connectpaths();
        if (isdefined(door_clip)) {
            door_clip delete();
        }
    }
    var_29f6c004 = getent("hidden_door_weapon_clip", "targetname");
    if (isdefined(var_29f6c004)) {
        var_29f6c004 notsolid();
        if (isdefined(var_29f6c004)) {
            var_29f6c004 delete();
        }
    }
    level flag::set(#"hash_6e41f0a5d92ae86b");
    level flag::set(#"connect_sewers_and_power_substation_to_hidden_lab");
    level flag::set(#"hash_331ca6d639f4883d");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x74aed8a3, Offset: 0x40a8
// Size: 0x84
function function_775253af(b_skipped) {
    if (b_skipped) {
        return;
    }
    function_9a82a095();
    level flag::wait_till(#"hash_64e189de9593e575");
    /#
        iprintlnbold("zitem_platinum_klaus_helm_part_1_zm");
    #/
    level thread function_3cf55a6b();
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0xc42e8c4c, Offset: 0x4138
// Size: 0xc4
function function_f795ca1(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        level thread function_cc84e369();
        level flag::set(#"hash_5c97d613e20f93e4");
    }
    var_d634beb8 = getent("enter_lab_check_proxy", "targetname");
    if (isdefined(var_d634beb8)) {
        var_d634beb8 delete();
    }
    level flag::set(#"hash_64e189de9593e575");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x987eef01, Offset: 0x4208
// Size: 0x1bc
function function_9a82a095() {
    level endon(#"end_game");
    var_d634beb8 = getent("enter_lab_check_proxy", "targetname");
    var_d634beb8 waittill(#"touch");
    if (isdefined(var_d634beb8)) {
        var_d634beb8 delete();
    }
    level flag::clear(#"hash_855089a4d12dc49");
    level flag::set(#"hash_bb9098b117819a");
    level flag::set(#"hash_3f926cd1d573549d");
    level zm_vo::function_7622cb70(#"hash_120c5fda40c0db87");
    level flag::wait_till(#"hash_855089a4d12dc49");
    level zm_platinum_vo::function_d137d6a0(#"hash_3314244e71b59b92", #"hash_3779f3fb1a0e80d0", #"hash_5f4fe1fad61c9bf6");
    wait(1);
    level thread function_cc84e369();
    level flag::clear(#"hash_bb9098b117819a");
    level flag::set(#"hash_64e189de9593e575");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x0
// Checksum 0x7c1bc9c5, Offset: 0x43d0
// Size: 0x9c
function function_d53cc258() {
    level endon(#"end_game");
    level flag::wait_till(#"hash_5c97d613e20f93e4");
    zm_platinum_vo::function_d137d6a0(#"hash_3314244e71b59b92", #"hash_3779f3fb1a0e80d0", #"hash_5f4fe1fad61c9bf6");
    wait(1);
    level thread function_cc84e369();
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x762b4815, Offset: 0x4478
// Size: 0x11c
function function_2ca830c2(b_skipped) {
    if (b_skipped) {
        return;
    }
    level.var_55a99841[#"raz"] = &function_ce39a77b;
    level.var_55a99841[#"tormentor"] = &function_ce39a77b;
    callback::on_ai_killed(&function_8eb912c5);
    callback::on_bleedout(&function_238c46f4);
    var_c7e8a5d2 = struct::get("nuke_warhead", "targetname");
    var_c7e8a5d2 thread function_41448da8();
    level thread function_cbb11679();
    level flag::wait_till(#"hash_7488d04db98e7184");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xff628080, Offset: 0x45a0
// Size: 0x1ec
function function_cc84e369() {
    level endon(#"end_game");
    var_bf50c725 = struct::get("nuke_warhead", "targetname");
    b_played = 0;
    while (!b_played) {
        foreach (player in function_a1ef346b()) {
            dis = distance2d(player.origin, var_bf50c725.origin);
            if (isdefined(dis) && dis <= 500 && level flag::get(#"hash_5c97d613e20f93e4") && player zm_utility::is_player_looking_at(var_bf50c725.origin)) {
                level thread function_c06ce917();
                zm_platinum_vo::function_d137d6a0(#"hash_329b2dee7817bd2", #"hash_38bbfbce5e53c710", #"hash_63f8e9ce1d46be36");
                wait(1);
                b_played = 1;
                break;
            }
        }
        wait(1);
    }
    level thread function_52513536(#"hash_6753972385c7db8d");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xa5d6a6c6, Offset: 0x4798
// Size: 0xdc
function function_c06ce917() {
    level endon(#"end_game");
    for (i = 1; i < 4; i++) {
        level clientfield::set("" + #"hash_65c1921bc2c97a5", i);
        wait(3);
    }
    var_8df86ab8 = struct::get("nuke_warhead", "targetname");
    var_8df86ab8.var_ab2f7bf4 = 3;
    var_8df86ab8.var_9fc2173a = 0;
    var_8df86ab8.var_4594eb75 = 0;
    var_8df86ab8 thread function_a458fe58();
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x73ffdf7b, Offset: 0x4880
// Size: 0x13c
function function_52513536(vo_string) {
    level endon(#"end_game", #"hash_7488d04db98e7184");
    if (isdefined(level.klaus)) {
        level.klaus.var_c0d80964 = 1;
    }
    while (true) {
        if (!level flag::get(#"hash_6d16c284cbb301d1")) {
            wait(3);
            continue;
        }
        if (isdefined(level.klaus) && isdefined(level.klaus.leader)) {
            dis = distance2d(level.klaus.origin, level.klaus.leader.origin);
            if (dis < 300) {
                level zm_platinum_vo::function_e250a72f(vo_string);
                level.klaus.var_c0d80964 = 0;
                break;
            }
        }
        wait(3);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xe8f2b771, Offset: 0x49c8
// Size: 0x2c
function function_238c46f4() {
    if (isdefined(self.canister)) {
        self function_3357e2a9(1);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x0
// Checksum 0x6bf44f7a, Offset: 0x4a00
// Size: 0x174
function function_da3ee2e3(var_c5d57dcc) {
    level endon(#"end_game");
    var_5940806d = util::spawn_model(#"hash_3023420c57af55eb", self.origin, self.angles);
    if (var_c5d57dcc) {
        var_5940806d clientfield::set("" + #"hash_6f292901e2fcaeb3", 1);
    }
    activator = var_5940806d zm_unitrigger::function_fac87205(#"hash_14f49506ad6b8d28", 64);
    if (var_c5d57dcc) {
        var_5940806d clientfield::set("" + #"hash_6f292901e2fcaeb3", 0);
        activator.var_3b5a075f = 1;
        waitframe(5);
        if (isdefined(var_5940806d)) {
            var_5940806d delete();
        }
        return;
    }
    activator.var_6593d715 = 1;
    waitframe(5);
    if (isdefined(var_5940806d)) {
        var_5940806d delete();
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x5091cd92, Offset: 0x4b80
// Size: 0x120
function function_8eb912c5(params) {
    attacker = params.eattacker;
    if (isplayer(attacker) || attacker === level.klaus) {
        if (self.archetype === #"avogadro") {
            var_ddba2f7e = arraygetclosest(self.origin, level.var_dbb1bda9, 1024);
            if (isdefined(var_ddba2f7e) && is_true(var_ddba2f7e.var_a53d0b46) && !is_true(var_ddba2f7e.var_43456ea9)) {
                self clientfield::set("" + #"hash_5342c00e940ad12b", 1);
                var_ddba2f7e notify(#"hash_62c3add8e64b984f");
            }
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0x99c0d2c1, Offset: 0x4ca8
// Size: 0x74
function function_6dbba0a7(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
    }
    level flag::set(#"hash_7488d04db98e7184");
    level.var_55a99841[#"raz"] = undefined;
    level.var_55a99841[#"tormentor"] = undefined;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x9ce8a096, Offset: 0x4d28
// Size: 0x4a
function function_a458fe58() {
    var_5c880fca = self zm_unitrigger::create(&function_6100b47c, 50, &function_8928528d);
    var_5c880fca.s_canister = self;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xaced3126, Offset: 0x4d80
// Size: 0xf4
function function_6100b47c(e_player) {
    if (isplayer(e_player)) {
        if (self.stub.s_canister.var_ab2f7bf4 !== 0 && !is_true(e_player.var_3b5a075f)) {
            self sethintstringforplayer(e_player, #"hash_40513bd426ab0689");
            return true;
        } else if (is_true(e_player.var_3b5a075f)) {
            self sethintstringforplayer(e_player, #"hash_4142d40e60c8e968");
            return true;
        } else {
            return false;
        }
    }
    return false;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x6a685f04, Offset: 0x4e80
// Size: 0x25a
function function_8928528d() {
    level endon(#"end_game");
    while (true) {
        waitresult = self waittill(#"trigger");
        player = waitresult.activator;
        if (is_true(player.var_3b5a075f)) {
            self.stub.s_canister.var_9fc2173a++;
            level flag::set(#"hash_1424bf64f5aacfd2" + self.stub.s_canister.var_9fc2173a);
            level clientfield::set("" + #"hash_17ccce73f851c91b", self.stub.s_canister.var_9fc2173a);
            level thread function_65fd08d7(player, self.stub.s_canister.var_9fc2173a);
            if (level flag::get_all(array(#"hash_65411b8d713f3eb9", #"hash_6541188d713f39a0", #"hash_6541198d713f3b53"))) {
                waitframe(1);
                zm_unitrigger::unregister_unitrigger(self.stub);
            }
            wait(1);
            continue;
        }
        if (self.stub.s_canister.var_ab2f7bf4 != 0) {
            level.var_1254ad06++;
            self.stub.s_canister.var_ab2f7bf4--;
            self.stub.s_canister.var_4594eb75++;
            level thread function_23675a9d(self.stub.s_canister.var_4594eb75);
            wait(1);
            continue;
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0xf0dfe739, Offset: 0x50e8
// Size: 0x54
function function_65fd08d7(player, index) {
    player thread function_3357e2a9();
    /#
        iprintlnbold("<unknown string>" + index);
    #/
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xeed6c2c6, Offset: 0x5148
// Size: 0x1e6
function function_cbb11679() {
    level endon(#"end_game");
    level waittill(#"hash_7344fe1e5a50e191");
    var_ca33f912 = struct::get("nuke_warhead", "targetname");
    b_played = 0;
    while (!b_played) {
        foreach (player in function_a1ef346b()) {
            if (is_true(player.var_3b5a075f)) {
                dis = distance2dsquared(player.origin, var_ca33f912.origin);
                if (isdefined(dis) && dis <= sqr(300) && player zm_utility::is_player_looking_at(var_ca33f912.origin)) {
                    level thread zm_platinum_vo::function_d137d6a0(#"hash_29c271427905b478", #"hash_4c8152aadcfa6966", #"hash_1d6788395bd8d618");
                    b_played = 1;
                    break;
                }
            }
        }
        wait(1);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x221043ae, Offset: 0x5338
// Size: 0xf4
function function_23675a9d(index) {
    switch (index) {
    case 1:
        new_index = 4;
        break;
    case 2:
        new_index = 5;
        break;
    case 3:
        new_index = 6;
        break;
    default:
        break;
    }
    level clientfield::set("" + #"hash_241bea7b7373e633", new_index);
    level zm_ui_inventory::function_7df6bb60(#"hash_2de8d60719124b8" + index, 1);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x9eecba2, Offset: 0x5438
// Size: 0x2a4
function function_475abfc5() {
    level endon(#"end_game");
    self.var_a53d0b46 = 0;
    self.var_43456ea9 = 0;
    switch (getplayers().size) {
    case 1:
        self.var_bcce0aa9 = 3;
        break;
    case 2:
        self.var_bcce0aa9 = 3;
        break;
    case 3:
        self.var_bcce0aa9 = 5;
        break;
    case 4:
        self.var_bcce0aa9 = 5;
        break;
    default:
        self.var_bcce0aa9 = 1;
        break;
    }
    self.var_4bbcfae9 = util::spawn_model(#"hash_4dca8f01586f4747", self.origin, self.angles);
    self.var_4bbcfae9 disconnectpaths();
    level flag::wait_till("power_on");
    self.light_mdl = util::spawn_model(#"hash_6fe95d21ab838a0e", self.origin, self.angles);
    self.var_4bbcfae9 clientfield::set("" + #"hash_6256b5001ca2ef80", 1);
    self.var_4bbcfae9 clientfield::set("" + #"hash_643cab616f5bd8e4", 1);
    level flag::wait_till(#"hash_64e189de9593e575");
    var_4b7f71f1 = self zm_unitrigger::create(&function_e750c105, 64, &function_40cc6759);
    var_4b7f71f1.s_device = self;
    level flag::wait_till(#"hash_7488d04db98e7184");
    zm_unitrigger::unregister_unitrigger(var_4b7f71f1);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x61f0f7b4, Offset: 0x56e8
// Size: 0x19c
function function_e750c105(e_player) {
    if (isplayer(e_player)) {
        if (is_true(self.stub.s_device.b_power_off)) {
            self sethintstringforplayer(e_player, #"hash_4d2af9ad659bf308");
            return true;
        } else if (is_true(self.stub.s_device.var_43456ea9) && is_true(self.stub.s_device.var_a53d0b46)) {
            self sethintstringforplayer(e_player, #"hash_766c66117e1014d0");
            return true;
        } else if (level.var_1254ad06 != 0 && !is_true(self.stub.s_device.var_a53d0b46) && !is_true(e_player.var_3b5a075f)) {
            self sethintstringforplayer(e_player, #"hash_e192baf415fd0ee");
            return true;
        } else {
            return false;
        }
    }
    return false;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x4d869c45, Offset: 0x5890
// Size: 0x1e0
function function_40cc6759() {
    level endon(#"end_game");
    while (true) {
        waitresult = self waittill(#"trigger");
        player = waitresult.activator;
        if (is_true(self.stub.s_device.b_power_off)) {
            continue;
        }
        if (level.var_1254ad06 != 0 && !is_true(self.stub.s_device.var_a53d0b46)) {
            self.stub.s_device.var_a53d0b46 = 1;
            self.stub.s_device.var_43456ea9 = 0;
            level.var_1254ad06--;
            level thread function_c080f1c1(self.stub.s_device);
        }
        if (!isdefined(player.canister) && is_true(self.stub.s_device.var_43456ea9)) {
            self.stub.s_device.var_43456ea9 = 0;
            self.stub.s_device.var_a53d0b46 = 0;
            self.stub.s_device.b_power_off = 1;
            level thread function_1144f1aa(self.stub.s_device, player);
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xcbb77809, Offset: 0x5a78
// Size: 0x1d4
function function_c080f1c1(s_device) {
    level endon(#"end_game");
    var_2a86179 = struct::get(s_device.target, "targetname");
    if (isdefined(var_2a86179)) {
        s_device.var_a3e9fe06 = util::spawn_model(#"hash_3023420c57af55eb", var_2a86179.origin, var_2a86179.angles);
        s_device.var_a3e9fe06 playsound(#"hash_1f1636f62458cf3c");
        s_device.var_a3e9fe06 moveto(s_device.var_a3e9fe06.origin + (0, 0, -4), 3);
        s_device.var_a3e9fe06 playsound(#"hash_2eedbe412ecac84");
        s_device.var_4bbcfae9 clientfield::set("" + #"hash_6256b5001ca2ef80", 2);
        s_device.light_mdl setmodel(#"hash_25492a4f77d4f1db");
        s_device.var_a3e9fe06 waittill(#"movedone");
    }
    s_device thread function_6012c55c();
    /#
        iprintlnbold("<unknown string>");
    #/
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0xa0b83789, Offset: 0x5c58
// Size: 0x220
function function_1144f1aa(s_device, player) {
    level endon(#"end_game");
    array::thread_all(getplayers(), &zm_intel::collect_intel, #"zmintel_platinum_darkaether_artifact_02");
    if (isdefined(s_device.index)) {
        level zm_ui_inventory::function_7df6bb60(#"hash_2de8d60719124b8" + s_device.index, 2);
    }
    player function_927a0091(1);
    if (isdefined(s_device.var_a3e9fe06)) {
        s_device.var_a3e9fe06 clientfield::set("" + #"hash_6f292901e2fcaeb3", 0);
        s_device.var_a3e9fe06 playsound(#"hash_4886352431f9e6e9");
    }
    s_device.var_4bbcfae9 clientfield::increment("" + #"hash_5924dea34439fc47");
    s_device.var_4bbcfae9 clientfield::set("" + #"hash_6256b5001ca2ef80", 3);
    s_device.light_mdl setmodel(#"hash_44623e6053914d8f");
    waitframe(5);
    if (isdefined(s_device.var_a3e9fe06)) {
        s_device.var_a3e9fe06 delete();
    }
    level notify(#"hash_7344fe1e5a50e191", {#player:player});
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0xb6310052, Offset: 0x5e80
// Size: 0x420
function function_1bba593c(canister, b_debug = 0) {
    level endon(#"end_game", #"hash_7488d04db98e7184");
    self endon(#"death", #"hash_7f73ee803b60b7aa");
    a_s_spawn_locs = struct::get_array("step3_spawn_loc", "script_noteworthy");
    var_5b414118 = 4 + getplayers().size * 1;
    var_e66bd02d = [];
    if (getplayers().size <= 2) {
        var_afa3e462 = 1;
    } else {
        var_afa3e462 = 2;
    }
    var_372b6f4 = [];
    while (true) {
        if (!b_debug) {
            if (!is_true(self.var_3b5a075f)) {
                wait(1);
                continue;
            }
        }
        function_dc0c0830(self, a_s_spawn_locs);
        function_1eaaceab(var_e66bd02d);
        function_1eaaceab(var_372b6f4);
        if (var_e66bd02d.size + var_372b6f4.size >= var_5b414118 + var_afa3e462) {
            wait(1);
            continue;
        }
        if (var_372b6f4.size <= var_afa3e462) {
            spawn_ai = spawn_zombie(#"hash_4f87aa2a203d37d0", self);
            if (isdefined(spawn_ai)) {
                spawn_ai thread function_c7afd8f3(canister);
                spawn_ai.var_126d7bef = 1;
                spawn_ai.ignore_round_spawn_failsafe = 1;
                spawn_ai.no_powerups = 1;
                spawn_ai.ignore_enemy_count = 1;
                spawn_ai.var_357c108b = 1;
                spawn_ai.var_98f1f37c = 1;
                spawn_ai.completed_emerging_into_playable_area = 1;
                if (!isdefined(var_372b6f4)) {
                    var_372b6f4 = [];
                } else if (!isarray(var_372b6f4)) {
                    var_372b6f4 = array(var_372b6f4);
                }
                if (!isinarray(var_372b6f4, spawn_ai)) {
                    var_372b6f4[var_372b6f4.size] = spawn_ai;
                }
            }
        }
        if (var_e66bd02d.size <= var_5b414118) {
            s_spawn_loc = function_945bc567(self);
            if (isdefined(s_spawn_loc)) {
                spawn_ai = namespace_abfee9ba::function_71f8127a(s_spawn_loc);
            }
            if (isdefined(spawn_ai)) {
                spawn_ai thread function_c7afd8f3(canister);
                spawn_ai.var_126d7bef = 1;
                spawn_ai.ignore_round_spawn_failsafe = 1;
                spawn_ai.no_powerups = 1;
                spawn_ai.ignore_enemy_count = 1;
                spawn_ai.var_357c108b = 1;
                spawn_ai.var_98f1f37c = 1;
                spawn_ai.completed_emerging_into_playable_area = 1;
                if (!isdefined(var_e66bd02d)) {
                    var_e66bd02d = [];
                } else if (!isarray(var_e66bd02d)) {
                    var_e66bd02d = array(var_e66bd02d);
                }
                if (!isinarray(var_e66bd02d, spawn_ai)) {
                    var_e66bd02d[var_e66bd02d.size] = spawn_ai;
                }
            }
        }
        wait(randomintrangeinclusive(1, 3));
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xde4e8fc, Offset: 0x62a8
// Size: 0x5a
function function_c7afd8f3(canister) {
    if (!isdefined(canister)) {
        return;
    }
    if (!isdefined(canister.var_3a733d30)) {
        canister.var_3a733d30 = 0;
    }
    canister.var_3a733d30++;
    if (canister.var_3a733d30 >= 50) {
        self.var_12745932 = 1;
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0xbbe612d4, Offset: 0x6310
// Size: 0x86
function function_dc0c0830(player, a_s_spawn_locs) {
    var_6cf1afd9 = arraygetclosest(player.origin, a_s_spawn_locs, 500);
    if (isdefined(var_6cf1afd9)) {
        if (!isdefined(player.var_9c08fce7)) {
            player.var_9c08fce7 = var_6cf1afd9;
            return;
        }
        if (player.var_9c08fce7 != var_6cf1afd9) {
            player.var_9c08fce7 = var_6cf1afd9;
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x5454659f, Offset: 0x63a0
// Size: 0x1da
function function_945bc567(player) {
    var_40118c33 = [];
    if (isdefined(player.var_9c08fce7)) {
        var_a3089335 = struct::get_array(player.var_9c08fce7.target, "targetname");
        if (isdefined(var_a3089335)) {
            if (var_a3089335.size != 0) {
                foreach (s_loc in var_a3089335) {
                    slots = namespace_85745671::function_7a1b21f6(s_loc.origin, s_loc.angles, 20, 512, 512, 128);
                    if (isarray(slots)) {
                        var_40118c33 = arraycombine(var_40118c33, slots);
                    }
                }
            } else {
                slots = namespace_85745671::function_7a1b21f6(player.var_9c08fce7.origin, player.var_9c08fce7.angles, 20, 512, 512, 128);
                if (isarray(slots)) {
                    var_40118c33 = arraycombine(var_40118c33, slots);
                }
            }
        }
    }
    return array::random(var_40118c33);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0xefad683, Offset: 0x6588
// Size: 0xac
function spawn_zombie(ai_type, player) {
    s_spawn_loc = function_945bc567(player);
    if (isdefined(s_spawn_loc)) {
        ai = spawnactor(ai_type, s_spawn_loc.origin, s_spawn_loc.angles);
        if (isdefined(ai)) {
            if (isdefined(s_spawn_loc.script_string)) {
                ai.script_string = s_spawn_loc.script_string;
                ai.find_flesh_struct_string = s_spawn_loc.script_string;
            }
        }
        return ai;
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x43deb262, Offset: 0x6640
// Size: 0x352
function function_ce39a77b() {
    self endon(#"death");
    while (true) {
        foreach (player in function_a1ef346b()) {
            if (zm_utility::is_player_valid(player)) {
                if (is_true(player.var_6593d715)) {
                    closest_player = player;
                    break;
                }
            }
        }
        if (!isdefined(closest_player)) {
            closest_player = arraygetclosest(self.origin, function_a1ef346b());
            break;
        } else {
            break;
        }
        util::wait_network_frame();
    }
    if (isvec(self.origin) && isvec(closest_player.origin)) {
        var_e4dd1a2e = self canpath(self.origin, closest_player.origin);
    } else {
        return false;
    }
    if (!var_e4dd1a2e) {
        self.keepclaimednode = 0;
        self.favoriteenemy = undefined;
        self.var_6324ed63 = undefined;
        a_s_spawn_locs = struct::get_array("step3_spawn_loc", "script_noteworthy");
        function_dc0c0830(closest_player, a_s_spawn_locs);
        var_1adabde2 = function_945bc567(closest_player);
        if (isdefined(var_1adabde2) && isdefined(self)) {
            if (self.archetype === #"raz") {
                self zm_ai_utility::function_a8dc3363(var_1adabde2);
                self thread namespace_ac4eb28f::function_1f9940b8();
            } else if (self.archetype === #"tormentor") {
                self thread namespace_abfee9ba::function_55413772(var_1adabde2);
                wait(1);
                self zm_ai_utility::function_a8dc3363(var_1adabde2);
                earthquake(0.5, 0.75, self.origin, 1000);
            }
            self.var_126d7bef = 1;
            self.ignore_round_spawn_failsafe = 1;
            self.no_powerups = 1;
            self.ignore_enemy_count = 1;
        } else {
            return false;
        }
    }
    return true;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x1e80cea4, Offset: 0x69a0
// Size: 0x12c
function disable_sprint(bool) {
    if (bool) {
        self setstance("stand");
        self val::set(#"hash_161cff9dcb52de8", "allow_sprint", 0);
        self val::set(#"hash_161cff9dcb52de8", "allow_jump", 0);
        self val::set(#"hash_161cff9dcb52de8", "allow_prone", 0);
        return;
    }
    self val::reset(#"hash_161cff9dcb52de8", "allow_sprint");
    self val::reset(#"hash_161cff9dcb52de8", "allow_jump");
    self val::reset(#"hash_161cff9dcb52de8", "allow_prone");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x5673278f, Offset: 0x6ad8
// Size: 0x19c
function function_6012c55c() {
    level endon(#"end_game");
    self endon(#"death");
    var_d9321608 = 0;
    while (true) {
        waitresult = self waittill(#"hash_62c3add8e64b984f");
        var_d9321608++;
        if (var_d9321608 >= self.var_bcce0aa9) {
            wait(2);
            self.var_a3e9fe06 clientfield::set("" + #"hash_6f292901e2fcaeb3", 1);
            self.var_a3e9fe06 setmodel(#"hash_20b0b418dac9dca1");
            self.var_a3e9fe06 moveto(self.var_a3e9fe06.origin + (0, 0, 4), 3);
            self.var_a3e9fe06 playsound(#"hash_2eedbe412ecac84");
            self.var_a3e9fe06 waittill(#"movedone");
            wait(1);
            self.var_43456ea9 = 1;
            break;
        }
    }
    /#
        iprintlnbold("<unknown string>");
    #/
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0xff21497f, Offset: 0x6c80
// Size: 0x2dc
function function_e8799ac6(entity, var_7bae7a71 = 1024) {
    var_f0bfc7a8 = var_7bae7a71;
    var_17c7dbe6 = arraysortclosest(zombie_utility::get_zombie_array(), entity.origin, undefined, 0, var_f0bfc7a8);
    foreach (var_ccea7dbf in var_17c7dbe6) {
        if (isalive(var_ccea7dbf)) {
            level.zombie_total++;
            level.zombie_respawns++;
            level.zombie_total_subtract++;
            if (math::cointoss()) {
                gibserverutils::gibhead(var_ccea7dbf);
            }
            if (math::cointoss()) {
                if (math::cointoss()) {
                    gibserverutils::gibleftarm(var_ccea7dbf);
                } else {
                    gibserverutils::gibrightarm(var_ccea7dbf);
                }
            }
            if (math::cointoss()) {
                if (math::cointoss()) {
                    gibserverutils::gibleftleg(var_ccea7dbf);
                } else {
                    gibserverutils::gibrightleg(var_ccea7dbf);
                }
            }
            n_random_x = randomfloatrange(-3, 3);
            n_random_y = randomfloatrange(-3, 3);
            v_fling = 150 * vectornormalize(var_ccea7dbf.origin - entity.origin + (n_random_x, n_random_y, 500));
            var_ccea7dbf.var_d45ca662 = 1;
            var_ccea7dbf.var_98f1f37c = 1;
            var_ccea7dbf thread zm_utility::function_ffc279(v_fling, var_ccea7dbf);
        }
    }
    level thread zm_utility::function_9ad5aeb1(1, 1, 0, 0);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x8bfb8c76, Offset: 0x6f68
// Size: 0x14c
function function_41448da8() {
    level endon(#"end_game");
    level flag::wait_till_all(array(#"hash_65411b8d713f3eb9", #"hash_6541188d713f39a0", #"hash_6541198d713f3b53"));
    level thread function_ac47b55d();
    fx_pos = util::spawn_model("tag_origin", self.origin, self.angles);
    fx_pos clientfield::set("" + #"hash_31c00da72502364a", 1);
    wait(1);
    level thread function_e8799ac6(self);
    level flag::set(#"hash_7488d04db98e7184");
    /#
        iprintlnbold("<unknown string>");
    #/
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x6b919f10, Offset: 0x70c0
// Size: 0x64
function function_ac47b55d() {
    level endon(#"end_game");
    zm_vo::function_7622cb70(#"hash_52c90cddb9738224");
    wait(2);
    zm_vo::function_7622cb70(#"hash_590f5cdd2c6c300b");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x621c5ff, Offset: 0x7130
// Size: 0x258
function function_84041c8c() {
    level endon(#"end_game");
    var_15bb9460 = struct::get("tempest_trap_pos", "targetname");
    if (!isdefined(var_15bb9460)) {
        return;
    }
    switch (getplayers().size) {
    case 1:
    default:
        var_19a83f12 = 3;
        break;
    case 2:
        var_19a83f12 = 3;
        break;
    case 3:
        var_19a83f12 = 6;
        break;
    case 4:
        var_19a83f12 = 6;
        break;
    }
    var_3afef0fd = 0;
    b_play_vo = 0;
    while (true) {
        point = function_4ba8fde(#"item_zmintel_platinum_omega_artifact_1");
        var_d5b4edd7 = item_drop::drop_item(0, getweapon(#"hash_2e725023a28bcc4e"), 1, 0, point.id, var_15bb9460.origin, var_15bb9460.angles, 0);
        var_d5b4edd7.var_dd21aec2 = 1 | 16;
        var_d5b4edd7 waittill(#"death");
        if (!b_play_vo) {
            b_play_vo = 1;
            level thread zm_platinum_vo::function_d137d6a0(#"hash_7bfd671b90f3911e", #"hash_2c170dd1cd5ca69c", #"hash_68ed9238ee4a3182");
        }
        var_3afef0fd++;
        if (var_3afef0fd < var_19a83f12) {
            wait(1.5);
            continue;
        }
        level waittill(#"start_of_round");
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xbf0c910c, Offset: 0x7390
// Size: 0x37e
function function_927a0091(var_16cee4c4 = 0) {
    assert(!isdefined(self.canister), "<unknown string>");
    if (isentity(var_16cee4c4)) {
        canister = var_16cee4c4;
    } else {
        canister = util::spawn_model(#"hash_20b0b418dac9dca1", (0, 0, 0));
        canister notsolid();
        canister.var_c5d57dcc = var_16cee4c4;
        canister.var_1474d2ee = gameobjects::get_next_obj_id();
        objective_add(canister.var_1474d2ee, "active", canister, #"hash_61f64747e0c7fd48");
    }
    objective_setinvisibletoplayer(canister.var_1474d2ee, self);
    tagname = "tag_stowed_back";
    if (!self haspart(tagname)) {
        tagname = undefined;
    }
    if (isdefined(tagname)) {
        canister linkto(self, tagname, (10, 0, 5), (270, 0, 0));
    } else {
        canister linkto(self, undefined, (-14, 5, 45), (15, 0, 0));
    }
    self.canister = canister;
    self thread function_2b855510();
    self thread function_c78db330();
    self thread zm_equipment::show_hint_text(#"hash_137bc99551c46f8f", 10);
    if (is_true(canister.var_c5d57dcc)) {
        self thread function_1bba593c(canister);
        canister.var_c5d57dcc = 1;
        canister clientfield::set("" + #"hash_6f292901e2fcaeb3", 1);
        self.var_3b5a075f = 1;
        self clientfield::set_to_player("" + #"hash_5b2bd379d1c938ac", 1);
        self function_75fd7e0();
        self disable_sprint(1);
        if (!is_true(level.var_10a16ead)) {
            level thread zm_platinum_vo::function_d137d6a0(#"hash_46993634718abc05", #"hash_2b464da207069e61", #"hash_62714f511d585e97");
            level.var_10a16ead = 1;
        }
        return;
    }
    self.var_6593d715 = 1;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x98493c1e, Offset: 0x7718
// Size: 0x216
function function_3357e2a9(var_6661fde5 = 0) {
    assert(isdefined(self.canister), "<unknown string>");
    self notify(#"hash_7f73ee803b60b7aa");
    canister = self.canister;
    canister unlink();
    objective_setvisibletoplayer(canister.var_1474d2ee, self);
    self disable_sprint(0);
    if (isdefined(self) && level.zm_hint_text zm_hint_text::is_open(self)) {
        level.zm_hint_text zm_hint_text::close(self);
    }
    if (is_true(canister.var_c5d57dcc)) {
        self clientfield::set_to_player("" + #"hash_5b2bd379d1c938ac", 0);
        self.var_3b5a075f = 0;
        canister.var_a1f3366 = self.var_8da24ed0;
        self thread namespace_1b527536::function_69303ed3();
    } else {
        self.var_6593d715 = 0;
    }
    self.canister = undefined;
    if (is_true(var_6661fde5)) {
        canister thread function_9076f34c(self);
    } else {
        gameobjects::release_obj_id(canister.var_1474d2ee);
        objective_delete(canister.var_1474d2ee);
        canister deletedelay();
    }
    self notify(#"hash_54bd8cd4daf4b2b4");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x3c9956f5, Offset: 0x7938
// Size: 0x17c
function function_75fd7e0() {
    if (!isdefined(self.canister.var_167d713f)) {
        self.canister.var_167d713f = 0;
    }
    if (!isdefined(self.canister.var_a1f3366)) {
        self.canister.var_a1f3366 = 6;
    }
    if (self.canister.var_a1f3366 >= 6) {
        namespace_1b527536::function_7281de4d(#"field_upgrade_canister_item_sr", &function_daec8c25, #"hash_60cb3fd3716d711e", #"hash_1a2e7166e36c7ed1", 1, 6, 1);
        return;
    }
    namespace_1b527536::function_7281de4d(#"field_upgrade_canister_item_sr", &function_daec8c25, #"hash_60cb3fd3716d711e", #"hash_1a2e7166e36c7ed1", 1, 6, 0);
    self.var_8da24ed0 = self.canister.var_a1f3366;
    progress = self.var_8da24ed0 / self.var_fc8023b4;
    self clientfield::set_player_uimodel("hud_items.ammoCooldowns.fieldUpgrade", progress);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x4bf4643e, Offset: 0x7ac0
// Size: 0xc4
function function_daec8c25(*params) {
    if (isdefined(self.canister)) {
        if (self.canister.var_167d713f < 10) {
            self.canister.var_167d713f++;
            self namespace_1b527536::function_460882e2(0);
            self.canister clientfield::increment("" + #"hash_344c9d30da0bff4f");
            self thread function_3dcfe42e();
            return;
        }
        zm_equipment::show_hint_text(#"hash_661538b7df8b588b", 3);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x18c924b4, Offset: 0x7b90
// Size: 0x312
function function_3dcfe42e() {
    self endon(#"death");
    var_e766369f = function_a38db454(self.origin, 800);
    a_zombies = array::get_all_closest(self.origin, var_e766369f);
    for (i = 0; i < a_zombies.size; i++) {
        actor = a_zombies[i];
        if (isalive(actor) && actor.team === level.zombie_team) {
            if (distance2dsquared(self.origin, actor.origin) <= 250000) {
                if (actor.var_6f84b820 === #"normal") {
                    v_dir = vectornormalize(actor.origin - self.origin);
                    v_launch = v_dir * randomintrange(80, 100) + (0, 0, 150);
                    actor zm_utility::function_ffc279(v_launch);
                    function_18610fa3(self, actor);
                } else {
                    damage = (isdefined(actor.maxhealth) ? actor.maxhealth : 0) * 0.3;
                    assert(isdefined(actor.maxhealth), "<unknown string>" + function_9e72a96(actor.archetype) + "<unknown string>");
                    actor ai::stun(2);
                    actor dodamage(damage, actor.origin, self);
                    if (!isalive(actor)) {
                        function_18610fa3(self, actor);
                    }
                }
            } else if (actor.var_6f84b820 === #"normal") {
                actor zombie_utility::setup_zombie_knockdown(self.origin);
            } else {
                actor ai::stun(2);
            }
            waitframe(1);
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xa589909, Offset: 0x7eb0
// Size: 0x252
function function_9076f34c(player) {
    self endon(#"death");
    v_org = self.origin;
    v_point = getclosestpointonnavmesh(v_org, 120, 16);
    if (isdefined(v_point)) {
        v_ground = groundtrace(v_point + (0, 0, 40) + (0, 0, 8), v_point + (0, 0, 40) + (0, 0, -100000), 0, self)[#"position"];
    }
    if (!isdefined(v_ground)) {
        v_ground = groundtrace(player.origin + (0, 0, 40) + (0, 0, 8), player.origin + (0, 0, 40) + (0, 0, -100000), 0, self)[#"position"];
    }
    wait(0.1);
    self moveto(v_ground, 0.05);
    self waittill(#"movedone");
    self.angles = (0, 0, 0);
    self playsound(#"hash_1f1636f62458cf3c");
    while (true) {
        activator = self zm_unitrigger::function_fac87205(&function_fb015f0c, 64);
        if (!isdefined(activator.canister)) {
            self playsound(#"hash_4886352431f9e6e9");
            activator function_927a0091(self);
            break;
        }
        waitframe(1);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x6 linked
// Checksum 0xa39e9f54, Offset: 0x8110
// Size: 0x64
function private function_fb015f0c(e_player) {
    if (isplayer(e_player) && !isdefined(e_player.canister)) {
        self sethintstring(#"hash_14f49506ad6b8d28");
        return true;
    }
    return false;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xb86669dd, Offset: 0x8180
// Size: 0x100
function function_2b855510() {
    self endon(#"death", #"hash_54bd8cd4daf4b2b4");
    while (true) {
        waitframe(1);
        isgamepad = self gamepadusedlast();
        if (!isgamepad && self buttonbitstate("BUTTON_BIT_ANY_DOWN") || isgamepad && self actionslottwobuttonpressed()) {
            if (!self flag::get_any([#"hash_686d5709e1566aa6", #"hash_1b361b950317ecb5"])) {
                self function_3357e2a9(1);
            }
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xfe40ca04, Offset: 0x8288
// Size: 0x74
function function_c78db330() {
    self endon(#"hash_54bd8cd4daf4b2b4");
    self waittill(#"death", #"disconnect", #"hash_42b83a8bd6b040d3", #"player_downed");
    self function_3357e2a9(1);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x9cfbbbe3, Offset: 0x8308
// Size: 0x35c
function function_78368ca1(b_skipped) {
    if (b_skipped) {
        return;
    }
    callback::function_74872db6(&function_a72bb3bd);
    level.var_302f1011 = zm_intel::function_2ba45c94("zmintel_platinum_requiem_document_04", (-7978, 11826, -268.5), (357.5, 277.6, 17.8), 100, 0, 0, undefined, 0);
    scene::add_scene_func(#"hash_73a873b0f9cd0894", &function_41ae49d5, "train_5_in");
    level scene::init(#"hash_73a873b0f9cd0894");
    level thread function_52513536(#"hash_100021c8f92aa217");
    if (isdefined(level.klaus)) {
        level.klaus zodcompanionutility::function_fc67b7ed(&function_e97a3826);
    }
    level flag::set(#"hash_7632e33ae2122338");
    train_5_trigger_pos = struct::get("train_5_trigger_pos", "targetname");
    var_729794bf = train_5_trigger_pos zm_unitrigger::create(&function_80602bcb, 64, &function_90dd5ebf);
    var_729794bf.origin += (0, 0, 10);
    var_e8a5ef56 = struct::get("nuke_warhead", "targetname");
    var_f9b16117 = var_e8a5ef56 zm_unitrigger::create(&function_7c601ecb, 64, &function_ceadbef8);
    var_f9b16117.var_76f0b50 = var_e8a5ef56;
    var_f9b16117.origin += (0, 0, 10);
    level flag::wait_till_all(array(#"hash_40ce269b267d7a50", #"hash_7e548bf90d76ee5e"));
    zm_unitrigger::unregister_unitrigger(var_729794bf);
    callback::function_50fdac80(&function_a72bb3bd);
    if (isdefined(level.klaus)) {
        level.klaus zodcompanionutility::function_30df05d5(&function_e97a3826);
    }
    /#
        iprintlnbold("<unknown string>");
    #/
    level thread zm_vo::function_7622cb70(#"hash_5bedd2c98101df8");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x2c81b918, Offset: 0x8670
// Size: 0xa4
function function_3cf55a6b() {
    level endon(#"end_game");
    var_41f0825f = 1;
    level waittill(#"start_of_round");
    while (true) {
        level waittill(#"end_of_round");
        level zm_vo::function_7622cb70(#"hash_7243ee93417fae26" + var_41f0825f);
        var_41f0825f++;
        if (var_41f0825f > 4) {
            break;
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x150a30a0, Offset: 0x8720
// Size: 0x3c
function function_41ae49d5(a_ents) {
    var_3c39b355 = a_ents[#"train_5"];
    function_2a651d2(var_3c39b355);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xb0e6eebd, Offset: 0x8768
// Size: 0x2dc
function function_e97a3826(*params) {
    level endon(#"hash_2304a1d24bb8597f");
    klaus_stop_train_pos = struct::get("klaus_stop_train_pos", "targetname");
    var_3c6ab678 = getent("stop_train_check_volume", "targetname");
    if (istouching(self.origin, var_3c6ab678)) {
        if (!level flag::get(#"hash_75f07aed08b6bb5e")) {
            /#
                iprintlnbold("<unknown string>");
            #/
            return;
        }
        if (level flag::get(#"hash_61b4c059c8113f2e")) {
            return;
        }
        level flag::set(#"hash_66eb1b5632f46da8");
        level flag::clear(#"hash_69bc64a0ea76c1b9");
        if (isdefined(level.klaus)) {
            level.klaus zodcompanionutility::function_34179e9a();
        }
        wait(0.1);
        if (isdefined(level.klaus)) {
            level.klaus.var_83562198 = undefined;
            level.klaus.attackable = undefined;
            level.klaus zodcompanionutility::function_14f3d97b(klaus_stop_train_pos.origin);
            level.klaus waittill(#"goal");
            level flag::set(#"hash_6499c1679ecbefef");
            level.klaus thread function_7c097c21();
            level.klaus thread namespace_33c196c8::function_dec85954("zber_mq4_cmdstp", 1);
            level.klaus scene::play(#"hash_267b129167d3488d", "stop_train_5_in", level.klaus);
            /#
                iprintlnbold("<unknown string>");
            #/
            level.klaus thread scene::play(#"hash_267b129167d3488d", "stop_train_5_in_idle", level.klaus);
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xe322e79b, Offset: 0x8a50
// Size: 0xdc
function function_7c097c21() {
    level endon(#"end_game", #"hash_61b4c059c8113f2e");
    wait(45);
    self animation::stop();
    self zodcompanionutility::function_633d6f7b();
    level flag::clear(#"hash_6499c1679ecbefef");
    level flag::clear(#"hash_66eb1b5632f46da8");
    level flag::set(#"hash_69bc64a0ea76c1b9");
    /#
        iprintlnbold("<unknown string>");
    #/
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x3b1cccf4, Offset: 0x8b38
// Size: 0x54
function function_a72bb3bd() {
    if (isdefined(level.var_17fbbafd) && level.var_17fbbafd + 2 >= level.round_number) {
        level flag::clear(#"hash_423cfa73eb1fe5dd");
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xae6e5345, Offset: 0x8b98
// Size: 0x11c
function function_80602bcb(e_player) {
    if (isplayer(e_player)) {
        if (level flag::get_any([#"hash_50aa91e49479ab59", #"hash_1c8cee37d4ebb24b"])) {
            return false;
        } else if (!level flag::get(#"hash_423cfa73eb1fe5dd") && !level flag::get(#"hash_59a4499797529045")) {
            self sethintstring(#"hash_b456ba6243822ca");
            return true;
        } else {
            self sethintstring(#"hash_4441862d819676d3");
            return true;
        }
    }
    return false;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x42c619d, Offset: 0x8cc0
// Size: 0x168
function function_90dd5ebf() {
    level endon(#"end_game");
    while (true) {
        self waittill(#"trigger");
        if (!level flag::get(#"hash_423cfa73eb1fe5dd") && !level flag::get(#"hash_59a4499797529045")) {
            level.var_17fbbafd = level.round_number;
            level flag::set(#"hash_423cfa73eb1fe5dd");
            level flag::clear(#"hash_69bc64a0ea76c1b9");
            level thread function_c015b2c1();
            level clientfield::set("" + #"hash_43c03ae4aff2ba0", 2);
            level clientfield::set("" + #"hash_1775e41085aba683", 1);
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0x437cc212, Offset: 0x8e30
// Size: 0xc8c
function function_c015b2c1(var_205b8171 = undefined, var_9d372cc4 = 0) {
    level endon(#"end_game");
    level flag::set(#"hash_59a4499797529045");
    while (!isdefined(level.var_48d07d1f.var_ec0d861e[#"train"])) {
        waitframe(1);
    }
    level.var_48d07d1f.var_ec0d861e[#"train"] thread function_d8d8efb();
    var_ebc5d65 = 0;
    while (!level flag::get(#"hash_6499c1679ecbefef")) {
        if (var_ebc5d65 >= 450) {
            break;
        } else {
            var_ebc5d65++;
        }
        wait(0.1);
    }
    level flag::set(#"hash_61b4c059c8113f2e");
    level namespace_b574e135::function_d508d5d8(1);
    level clientfield::set("" + #"hash_2a93d12c263f2d68", 3);
    level flag::set(#"hash_472fe29430c8acd0");
    level thread zm_platinum::function_e803401a();
    if (isdefined(level.var_48d07d1f.var_ec0d861e[#"train"])) {
        level.var_48d07d1f.var_ec0d861e[#"train"] playloopsound(#"hash_100719fe800935ce");
    }
    level scene::play(#"hash_73a873b0f9cd0894", "train_5_in");
    if (level flag::get(#"hash_6499c1679ecbefef") || var_9d372cc4) {
        level flag::clear(#"hash_472fe29430c8acd0");
        level notify(#"hash_7c60044f6a90f7f5");
        if (isdefined(level.klaus)) {
            level.klaus animation::stop();
        }
        level.var_4308c048 = #"heavy";
        level.var_48d07d1f.var_ec0d861e[#"train"] stoploopsound();
        if (isdefined(level.klaus)) {
            level.klaus thread scene::play(#"hash_267b129167d3488d", "stop_train_5_start", level.klaus);
            level.klaus clientfield::set("" + #"hash_3db79576e67b8cbd", 1);
        }
        level.var_48d07d1f.var_ec0d861e[#"train"] scene::play(#"hash_73a873b0f9cd0894", "train_5_stop_in", level.var_48d07d1f.var_ec0d861e[#"train"]);
        level.var_48d07d1f.var_ec0d861e[#"train"] playloopsound(#"hash_561d360cfbf29c5e");
        if (isdefined(level.klaus)) {
            level.klaus thread scene::play(#"hash_267b129167d3488d", "stop_train_5_loop", level.klaus);
        }
        level.var_4308c048 = #"light";
        level.var_48d07d1f.var_ec0d861e[#"train"] thread scene::play(#"hash_73a873b0f9cd0894", "train_5_stop_loop", level.var_48d07d1f.var_ec0d861e[#"train"]);
        if (isdefined(level.klaus)) {
            level.klaus clientfield::set("" + #"hash_3db79576e67b8cbd", 2);
        }
        level.var_48d07d1f.var_ec0d861e[#"train"] notify(#"hash_293a351f67c7ae4f");
        /#
            iprintlnbold("<unknown string>");
        #/
        var_cdaee1cd = getentarray("train_5_clip", "targetname");
        array::run_all(var_cdaee1cd, &show);
        array::run_all(var_cdaee1cd, &solid);
        array::run_all(var_cdaee1cd, &disconnectpaths);
        var_f3874315 = getnodearray("navmesh_link_node", "targetname");
        foreach (var_26e9d3de in var_f3874315) {
            linktraversal(var_26e9d3de);
        }
        level.var_48d07d1f.var_ec0d861e[#"train"] function_ebd5e2eb();
        function_f255115();
        if (isdefined(level.klaus)) {
            level.klaus thread zm_vo::function_d6f8bbd9(#"hash_747a798c3e050c79", 0, undefined, 1);
        }
        /#
            iprintlnbold("<unknown string>");
        #/
        function_4933ae12(var_205b8171);
        foreach (var_26e9d3de in var_f3874315) {
            unlinktraversal(var_26e9d3de);
        }
        if (isdefined(level.klaus)) {
            level.klaus animation::stop();
        }
        level.var_48d07d1f.var_ec0d861e[#"train"] animation::stop();
        level.var_48d07d1f.var_ec0d861e[#"train"] util::delay(3, undefined, &stoploopsound);
        if (isdefined(level.klaus)) {
            level.klaus thread scene::play(#"hash_267b129167d3488d", "stop_train_5_out", level.klaus);
            level.klaus clientfield::set("" + #"hash_3db79576e67b8cbd", 3);
        }
        array::run_all(var_cdaee1cd, &connectpaths);
        array::run_all(var_cdaee1cd, &notsolid);
        array::run_all(var_cdaee1cd, &hide);
        level.var_4308c048 = #"heavy";
        level.var_48d07d1f.var_ec0d861e[#"train"] thread function_bb082beb(0, 1);
        level thread function_675838da();
        level.var_48d07d1f.var_ec0d861e[#"train"] scene::play(#"hash_73a873b0f9cd0894", "train_5_stop_out", level.var_48d07d1f.var_ec0d861e[#"train"]);
        level thread namespace_6fb22263::function_a8333f44(30);
        level flag::clear(#"hash_66eb1b5632f46da8");
    } else if (isdefined(level.var_48d07d1f.var_ec0d861e[#"train"])) {
        level thread function_675838da();
        level.var_48d07d1f.var_ec0d861e[#"train"] scene::play(#"hash_73a873b0f9cd0894", "train_5_out", level.var_48d07d1f.var_ec0d861e[#"train"]);
    }
    function_c27437be();
    level flag::clear(#"hash_61b4c059c8113f2e");
    level clientfield::set("" + #"hash_2a93d12c263f2d68", 4);
    level namespace_b574e135::function_d508d5d8(0);
    level clientfield::set("" + #"hash_43c03ae4aff2ba0", 6);
    level clientfield::set("" + #"hash_1775e41085aba683", 0);
    level notify(#"hash_4250ffb13b75ed1d");
    wait(3);
    level flag::clear(#"hash_59a4499797529045");
    level scene::init(#"hash_73a873b0f9cd0894");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xfa70aaf4, Offset: 0x9ac8
// Size: 0x84
function function_675838da() {
    level endon(#"end_game");
    level clientfield::set("" + #"hash_600dd9c10bd3447b", 1);
    wait(5);
    level clientfield::set("" + #"hash_600dd9c10bd3447b", 0);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 3, eflags: 0x2 linked
// Checksum 0xa3622273, Offset: 0x9b58
// Size: 0x5ec
function function_2a651d2(var_180f7698, *var_905df4de, *var_205b8171) {
    level endon(#"end_game");
    level.var_48d07d1f = struct::get("train_5", "targetname");
    if (isdefined(level.var_48d07d1f.var_ec0d861e[#"train"])) {
        return;
    }
    level.var_48d07d1f.var_ec0d861e = [];
    if (isdefined(var_205b8171)) {
        level.var_48d07d1f.var_ec0d861e[#"train"] = var_205b8171;
        var_205b8171 setmovingplatformenabled(1);
        var_205b8171 clientfield::set("" + #"hash_6d758f70ffcac945", 1);
        var_f30d29c3 = util::spawn_model("tag_origin", var_205b8171 gettagorigin("tag_warhead") + (5, 3, -3), var_205b8171 gettagangles("tag_warhead") + (-90, 0, 0));
        var_f30d29c3 linkto(var_205b8171);
        level.var_48d07d1f.var_ec0d861e[#"nuke_warhead"] = var_f30d29c3;
        var_fd260ca3 = util::spawn_model("tag_origin", var_205b8171 gettagorigin("tag_card") + (-10, 0, 0), var_205b8171 gettagangles("tag_card") + (0, 0, -90));
        var_fd260ca3 linkto(var_205b8171);
    }
    level.var_48d07d1f.var_ec0d861e[#"hash_669bd01fe8891c35"] = var_fd260ca3;
    level.var_48d07d1f.var_ec0d861e[#"train"] thread function_bb082beb(1);
    level.var_48d07d1f.var_ec0d861e[#"zombie_body"] = [];
    for (i = 1; i <= 7; i++) {
        var_48fd88ec = util::spawn_model(#"hash_5abd729f7a45fe9a", level.var_48d07d1f.origin, level.var_48d07d1f.angles);
        if (!isdefined(level.var_48d07d1f.var_ec0d861e[#"zombie_body"])) {
            level.var_48d07d1f.var_ec0d861e[#"zombie_body"] = [];
        } else if (!isarray(level.var_48d07d1f.var_ec0d861e[#"zombie_body"])) {
            level.var_48d07d1f.var_ec0d861e[#"zombie_body"] = array(level.var_48d07d1f.var_ec0d861e[#"zombie_body"]);
        }
        if (!isinarray(level.var_48d07d1f.var_ec0d861e[#"zombie_body"], var_48fd88ec)) {
            level.var_48d07d1f.var_ec0d861e[#"zombie_body"][level.var_48d07d1f.var_ec0d861e[#"zombie_body"].size] = var_48fd88ec;
        }
        var_48fd88ec scene::play("p9_fxanim_zm_platinum_train_5_dead_body", "dead_body_" + i, var_48fd88ec);
        waitframe(1);
        var_48fd88ec linkto(level.var_48d07d1f.var_ec0d861e[#"train"]);
    }
    var_4fde3b0b = getent("train_5_hit_proxy", "targetname");
    var_4fde3b0b enablelinkto();
    var_4fde3b0b.origin = var_205b8171 gettagorigin("tag_car_body");
    var_4fde3b0b linkto(var_205b8171);
    if (isdefined(level.var_302f1011)) {
        level.var_302f1011.origin = (-7978, 11826, -268.5);
        level.var_302f1011.angles = (357.5, 277.6, 17.8);
        level.var_302f1011 linkto(var_205b8171);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0x198298a4, Offset: 0xa150
// Size: 0x71e
function function_bb082beb(var_e7b30689 = 0, var_cfea0f34 = 0) {
    level endon(#"end_game");
    self endon(#"hash_293a351f67c7ae4f", #"death");
    var_4fde3b0b = getent("train_5_hit_proxy", "targetname");
    level waittill(#"hash_572ddb80f278a3da");
    while (true) {
        var_4526d8f0 = [];
        players_nearby = getentitiesinradius(self gettagorigin("tag_car_body"), 800, 1);
        var_3bca7dbd = getentitiesinradius(self gettagorigin("tag_car_body"), 800, 15);
        if (isarray(self.var_bc8dc7fb)) {
            function_1eaaceab(self.var_bc8dc7fb);
        }
        if (var_3bca7dbd.size != 0) {
            foreach (zombie in var_3bca7dbd) {
                if (zombie.archetype === #"zod_companion") {
                    continue;
                }
                if (var_e7b30689) {
                    if (isdefined(self.var_bc8dc7fb) && self.var_bc8dc7fb.size != 0) {
                        if (!isinarray(self.var_bc8dc7fb, zombie)) {
                            if (!isdefined(var_4526d8f0)) {
                                var_4526d8f0 = [];
                            } else if (!isarray(var_4526d8f0)) {
                                var_4526d8f0 = array(var_4526d8f0);
                            }
                            if (!isinarray(var_4526d8f0, zombie)) {
                                var_4526d8f0[var_4526d8f0.size] = zombie;
                            }
                        }
                    } else {
                        if (!isdefined(var_4526d8f0)) {
                            var_4526d8f0 = [];
                        } else if (!isarray(var_4526d8f0)) {
                            var_4526d8f0 = array(var_4526d8f0);
                        }
                        if (!isinarray(var_4526d8f0, zombie)) {
                            var_4526d8f0[var_4526d8f0.size] = zombie;
                        }
                    }
                    continue;
                }
                if (!isdefined(var_4526d8f0)) {
                    var_4526d8f0 = [];
                } else if (!isarray(var_4526d8f0)) {
                    var_4526d8f0 = array(var_4526d8f0);
                }
                if (!isinarray(var_4526d8f0, zombie)) {
                    var_4526d8f0[var_4526d8f0.size] = zombie;
                }
            }
        }
        if (var_4526d8f0.size != 0) {
            foreach (zombie in var_4526d8f0) {
                if (zombie istouching(var_4fde3b0b)) {
                    function_ab9ff2c4(var_4fde3b0b, zombie);
                    zombie dodamage(zombie.health + 666, zombie.origin);
                }
            }
        }
        if (players_nearby.size != 0) {
            if (!var_cfea0f34) {
                foreach (player in players_nearby) {
                    if (player istouching(var_4fde3b0b)) {
                        player thread zm_platinum::function_3dae6b8b();
                        player thread zm_platinum::function_1a360399();
                        player dodamage(player.maxhealth + 100, self.origin, self, self, 0, "MOD_CRUSH");
                    }
                }
            } else {
                var_70b4dd3e = struct::get_array("player_teleport_back_pos");
                foreach (player in players_nearby) {
                    if (player istouching(var_4fde3b0b)) {
                        n_index = zm_fasttravel::get_player_index(player);
                        var_3193e2d9 = var_70b4dd3e[n_index];
                        player thread zm_fasttravel::function_66d020b0(undefined, undefined, undefined, undefined, var_3193e2d9, undefined, undefined, 1, 0);
                    }
                }
            }
        }
        if (level flag::get(#"hash_472fe29430c8acd0")) {
            var_8179aee4 = struct::get("spawn_klaus_south", "targetname");
            if (isdefined(level.klaus) && level.klaus istouching(var_4fde3b0b)) {
                level.klaus forceteleport(getclosestpointonnavmesh(var_8179aee4.origin, 300, 10));
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0x60676c7, Offset: 0xa878
// Size: 0x1d4
function function_ab9ff2c4(entity, zombie) {
    if (isalive(zombie)) {
        if (math::cointoss()) {
            gibserverutils::gibhead(zombie);
        }
        if (math::cointoss()) {
            if (math::cointoss()) {
                gibserverutils::gibleftarm(zombie);
            } else {
                gibserverutils::gibrightarm(zombie);
            }
        }
        if (math::cointoss()) {
            if (math::cointoss()) {
                gibserverutils::gibleftleg(zombie);
            } else {
                gibserverutils::gibrightleg(zombie);
            }
        }
        n_random_x = randomfloatrange(-3, 3);
        n_random_y = randomfloatrange(-3, 3);
        v_fling = 150 * vectornormalize(zombie.origin - entity.origin + (n_random_x, n_random_y, 500));
        zombie.var_d45ca662 = 1;
        zombie.var_98f1f37c = 1;
        zombie thread zm_utility::function_ffc279(v_fling, zombie);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xaaaa7db9, Offset: 0xaa58
// Size: 0xc8
function function_ebd5e2eb() {
    if (isdefined(self.var_bc8dc7fb)) {
        foreach (zombie in self.var_bc8dc7fb) {
            zombie unlink();
            zombie.completed_emerging_into_playable_area = 1;
            zombie.zombie_think_done = 1;
            zombie pathmode("move allowed");
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x9c309f7e, Offset: 0xab28
// Size: 0x188
function function_d8d8efb() {
    s_spawn_pos = self gettagorigin("tag_car_body");
    self.var_bc8dc7fb = [];
    for (i = 0; i < 5; i++) {
        spawn_ai = spawnactor("spawner_bo5_zombie_zm_platinum", self gettagorigin("tag_car_body") + (0, 0, 16), self gettagangles("tag_car_body"), undefined, 1);
        if (isdefined(spawn_ai)) {
            spawn_ai.ignore_enemy_count = 1;
            spawn_ai.exclude_cleanup_adding_to_total = 1;
            spawn_ai linkto(self);
            if (!isdefined(self.var_bc8dc7fb)) {
                self.var_bc8dc7fb = [];
            } else if (!isarray(self.var_bc8dc7fb)) {
                self.var_bc8dc7fb = array(self.var_bc8dc7fb);
            }
            if (!isinarray(self.var_bc8dc7fb, spawn_ai)) {
                self.var_bc8dc7fb[self.var_bc8dc7fb.size] = spawn_ai;
            }
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x7bf59409, Offset: 0xacb8
// Size: 0x2fc
function function_f255115() {
    if (!level flag::get(#"hash_40ce269b267d7a50")) {
        spawn_origin = level.var_48d07d1f.var_ec0d861e[#"hash_669bd01fe8891c35"].origin;
        spawn_angles = level.var_48d07d1f.var_ec0d861e[#"hash_669bd01fe8891c35"].angles;
        point = function_4ba8fde(#"item_zmquest_platinum_rico_card");
        level.var_48d07d1f.var_ec0d861e[#"hash_42d98f00dca52f17"] = item_drop::drop_item(0, undefined, 1, 0, point.id, spawn_origin + (-5, 35, -10), spawn_angles, 0);
        level.var_48d07d1f.var_ec0d861e[#"hash_42d98f00dca52f17"].var_dd21aec2 = 1 | 16;
        level.var_48d07d1f.var_ec0d861e[#"hash_42d98f00dca52f17"] linkto(level.var_48d07d1f.var_ec0d861e[#"train"]);
    }
    if (!level flag::get(#"hash_7e548bf90d76ee5e")) {
        spawn_origin = level.var_48d07d1f.var_ec0d861e[#"nuke_warhead"].origin;
        spawn_angles = level.var_48d07d1f.var_ec0d861e[#"nuke_warhead"].angles;
        point = function_4ba8fde(#"item_zmquest_platinum_nuke_warhead");
        level.var_48d07d1f.var_ec0d861e[#"hash_2c9d5bdfa505ce15"] = item_drop::drop_item(0, undefined, 1, 0, point.id, spawn_origin + (0, 0, -5), spawn_angles, 0);
        level.var_48d07d1f.var_ec0d861e[#"hash_2c9d5bdfa505ce15"].var_dd21aec2 = 1 | 16;
        level.var_48d07d1f.var_ec0d861e[#"hash_2c9d5bdfa505ce15"] linkto(level.var_48d07d1f.var_ec0d861e[#"train"]);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x95934720, Offset: 0xafc0
// Size: 0x294
function function_4933ae12(var_205b8171) {
    level endon(#"end_game");
    start_time = float(gettime()) / 1000;
    while (true) {
        wait_time = float(gettime()) / 1000 - start_time;
        if (level flag::get_all([#"hash_7e548bf90d76ee5e", #"hash_7e548bf90d76ee5e"])) {
            if (!function_341c2168()) {
                var_89d00c62 = int(wait_time) % 11;
                /#
                    iprintlnbold(11 - var_89d00c62);
                #/
                wait(11 - var_89d00c62);
                break;
            }
        }
        if (isdefined(var_205b8171) && wait_time >= var_205b8171) {
            break;
        } else if (wait_time >= 33) {
            break;
        }
        wait(1);
    }
    if (isdefined(level.klaus)) {
        level.klaus zodcompanionutility::function_633d6f7b();
    }
    if (level flag::get(#"hash_6499c1679ecbefef")) {
        level flag::clear(#"hash_6499c1679ecbefef");
    }
    if (isdefined(level.var_48d07d1f.var_ec0d861e[#"hash_42d98f00dca52f17"])) {
        level.var_48d07d1f.var_ec0d861e[#"hash_42d98f00dca52f17"] delete();
    }
    if (isdefined(level.var_48d07d1f.var_ec0d861e[#"hash_2c9d5bdfa505ce15"])) {
        level.var_48d07d1f.var_ec0d861e[#"hash_2c9d5bdfa505ce15"] delete();
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x8a55de91, Offset: 0xb260
// Size: 0xd2
function function_341c2168() {
    var_4fde3b0b = getent("train_5_hit_proxy", "targetname");
    foreach (player in function_a1ef346b()) {
        if (istouching(player.origin, var_4fde3b0b)) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x773bd1cf, Offset: 0xb340
// Size: 0x1f8
function function_c27437be() {
    level flag::set(#"hash_69bc64a0ea76c1b9");
    var_4fde3b0b = getent("train_5_hit_proxy", "targetname");
    var_4fde3b0b unlink();
    if (isdefined(level.var_302f1011)) {
        level.var_302f1011 unlink();
    }
    foreach (entities in level.var_48d07d1f.var_ec0d861e) {
        if (isarray(entities)) {
            foreach (entity in entities) {
                if (isentity(entity)) {
                    if (isdefined(entity)) {
                        entity delete();
                    }
                }
            }
            continue;
        }
        if (isentity(entities)) {
            if (isdefined(entities)) {
                entities delete();
            }
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x778a9b9d, Offset: 0xb540
// Size: 0x92
function function_7c601ecb(e_player) {
    if (isplayer(e_player)) {
        if (level flag::get(#"hash_7e548bf90d76ee5e")) {
            self sethintstring(#"hash_75bda51a9b5edef3");
            return 1;
        }
        self sethintstring(#"hash_348dd61b4f8bb07d");
        return 1;
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xb58b2511, Offset: 0xb5e0
// Size: 0x180
function function_ceadbef8() {
    level endon(#"end_game");
    while (true) {
        self waittill(#"trigger");
        if (level flag::get(#"hash_7e548bf90d76ee5e")) {
            var_432a7135 = struct::get("s_placed_nuke", "targetname");
            var_432a7135.mdl = util::spawn_model(#"hash_3a4862d7748ce0ed", var_432a7135.origin, var_432a7135.angles);
            level flag::set(#"hash_627ca85c6b7455fb");
            /#
                iprintlnbold("<unknown string>");
            #/
            if (!level flag::get(#"hash_45622788b333b1f6")) {
                level thread zm_platinum_vo::function_d137d6a0(#"hash_4aebf204fbcf87fe", #"hash_50de3877491e89fc", #"hash_111abcde6cef3de2");
            }
            zm_unitrigger::unregister_unitrigger(self.stub);
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0xb092d269, Offset: 0xb768
// Size: 0x7c
function function_3d1b0280(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        if (isdefined(level.klaus)) {
            level.klaus zodcompanionutility::function_30df05d5(&function_e97a3826);
        }
        level flag::set(#"hash_40ce269b267d7a50");
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xe750c07d, Offset: 0xb7f0
// Size: 0x44
function function_fa357bb3(a_ents) {
    var_ef506289 = a_ents[#"hash_7e765eb1b4e2f643"];
    var_ef506289 hidepart("tag_card_ani");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x337b3a3e, Offset: 0xb840
// Size: 0x8c
function function_dcc4f974(a_ents) {
    var_ef506289 = a_ents[#"hash_7e765eb1b4e2f643"];
    var_ef506289 showpart("tag_card_ani");
    var_ef506289 playsound(#"hash_47205f3620441fc0");
    wait(0.5);
    var_ef506289 hidepart("tag_card_ani");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x698debae, Offset: 0xb8d8
// Size: 0x2c
function function_9704287a(b_skipped) {
    if (b_skipped) {
        return;
    }
    level function_16053431();
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x5379cfdd, Offset: 0xb910
// Size: 0x3ac
function function_16053431() {
    level flag::set(#"hash_9a22ba9db480002");
    e_computer = getent("computer_in_safe", "targetname");
    e_computer zm_unitrigger::function_fac87205(&function_8ec6ea9b);
    scene::remove_scene_func(#"hash_1999a8c9e82066f3", &function_fa357bb3, "init");
    scene::add_scene_func(#"hash_1999a8c9e82066f3", &function_dcc4f974, "play");
    level scene::play(#"hash_1999a8c9e82066f3");
    level flag::set(#"hash_220ba0e612fb8706");
    level clientfield::set("" + #"hash_1012bcebf9b9294", 2);
    e_computer.var_bec42bc3 setmodel(#"hash_18ea3f1c8e11206e");
    e_computer.var_bec42bc3 playsound(#"zmb_mq_stp5_selection_right");
    e_computer.var_bec42bc3 playloopsound(#"zmb_mq_stp5_screen_lp");
    var_f0d459d8 = ["p9_zm_platinum_intel_documents_r_05", "p9_zm_platinum_intel_documents_r_06", "p9_zm_platinum_intel_documents_r_07", "p9_zm_platinum_personal_computer_screen_05"];
    var_76123900 = ["zmb_mq_stp5_selection_right", "zmb_mq_stp5_selection_right", "zmb_mq_stp5_selection_right", "zmb_mq_stp5_selection_wrong"];
    var_611aa293 = ["zmb_mq_stp5_screen_lp", "zmb_mq_stp5_screen_lp", "zmb_mq_stp5_screen_lp", "zmb_mq_stp5_screen_lp_alarm"];
    var_1d066571 = [#"zmintel_platinum_requiem_document_05", #"zmintel_platinum_requiem_document_06", #"zmintel_platinum_requiem_document_07", undefined];
    for (var_7bbb033f = 0; var_7bbb033f < 4; var_7bbb033f++) {
        e_computer function_3caf2b94(var_7bbb033f, var_f0d459d8[var_7bbb033f], var_76123900[var_7bbb033f], var_611aa293[var_7bbb033f], var_1d066571[var_7bbb033f]);
    }
    level flag::set(#"hash_5292b6ef8216e686");
    level flag::wait_till(#"hash_416a2700f2b2ba76");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x688e94d6, Offset: 0xbcc8
// Size: 0x54
function function_8ec6ea9b(*e_player) {
    if (level flag::get(#"hash_40ce269b267d7a50")) {
        self sethintstring(#"hash_31e2426491c3f5b1");
        return true;
    }
    return false;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 5, eflags: 0x6 linked
// Checksum 0x6200e064, Offset: 0xbd28
// Size: 0x104
function private function_3caf2b94(var_7bbb033f, str_model, str_sound, var_395f162a, var_a04e2369) {
    self zm_unitrigger::function_fac87205(#"hash_14c714ecaed220cb");
    level clientfield::set("" + #"hash_1012bcebf9b9294", var_7bbb033f + 3);
    self.var_bec42bc3 setmodel(str_model);
    self.var_bec42bc3 playsound(str_sound);
    self.var_bec42bc3 playloopsound(var_395f162a);
    if (isdefined(var_a04e2369)) {
        array::thread_all(getplayers(), &zm_intel::collect_intel, var_a04e2369);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xf0addaaa, Offset: 0xbe38
// Size: 0x3c8
function function_6bf79248() {
    level flag::wait_till(#"start_zombie_round_logic");
    level flag::set(#"hash_78059f8a26475272");
    level.var_37ad3691 = &function_8959f362;
    level thread function_17200d08();
    level thread function_daa1be87();
    var_3e162c62 = getentarray("pl_ts_dmg", "targetname");
    n_rand = randomint(var_3e162c62.size);
    var_3e162c62[n_rand].var_75c942c0 = 1;
    foreach (var_198c15a4 in var_3e162c62) {
        var_198c15a4 thread function_c0debb85();
    }
    zm_crafting::function_d1f16587("ztable_platinum_klaus_helm", &function_3efe1709);
    level thread function_88f9645b();
    level flag::wait_till("klaus_helm_crafted");
    if (isdefined(level.klaus)) {
        level.klaus showpart("J_Helm");
        level.klaus clientfield::set("" + #"hash_59443eb99c2a76a4", 1);
        level.klaus playsound(#"hash_253691451c175750");
    }
    if (!level flag::get(#"hash_5292b6ef8216e686")) {
        level flag::wait_till(#"hash_5292b6ef8216e686");
    }
    level flag::set(#"hash_416a2700f2b2ba76");
    var_e5635857 = getentarray("pl_street_com", "script_noteworthy");
    foreach (screen in var_e5635857) {
        util::spawn_model(#"hash_6966be6d33d1985b", screen.origin, screen.angles);
        screen playsound(#"hash_35a6dba8d4956d39");
        screen playloopsound(#"zmb_mq_stp5_screen_lp");
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x689697c8, Offset: 0xc208
// Size: 0xb6
function function_bef51ab1() {
    level flag::wait_till(#"start_zombie_round_logic");
    foreach (trigger in level.var_4fe2f84d[#"ztable_platinum_klaus_helm"]) {
        trigger.prompt_and_visibility_func = &function_1c6f91fc;
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x6b4ba683, Offset: 0xc2c8
// Size: 0x2b2
function function_88f9645b() {
    level endon(#"end_game");
    foreach (trigger in level.var_4fe2f84d[#"ztable_platinum_klaus_helm"]) {
        trigger.prompt_and_visibility_func = &function_1c6f91fc;
    }
    while (true) {
        var_993033cf = level flag::get_all([#"hash_2629dab56bd39ff5", #"hash_626f1d4ed92a66d9"]);
        var_ad865c7b = level flag::get(#"hash_5292b6ef8216e686");
        if (var_993033cf || var_ad865c7b) {
            break;
        }
        wait(1);
    }
    while (true) {
        level flag::wait_till_clear(#"hash_6d16c284cbb301d1");
        foreach (trigger in level.var_4fe2f84d[#"ztable_platinum_klaus_helm"]) {
            trigger.prompt_and_visibility_func = &zm_crafting::function_126fc77c;
        }
        level flag::wait_till(#"hash_6d16c284cbb301d1");
        foreach (trigger in level.var_4fe2f84d[#"ztable_platinum_klaus_helm"]) {
            trigger.prompt_and_visibility_func = &function_1c6f91fc;
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x63145d7f, Offset: 0xc588
// Size: 0xe
function function_1c6f91fc(*e_player) {
    return false;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x5371715b, Offset: 0xc5a0
// Size: 0x2a
function function_8959f362() {
    if (self.script_noteworthy === "pl_ks_hm_ct") {
        self.hint_string = #"hash_2e7f40181e09f589";
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x8adfe268, Offset: 0xc5d8
// Size: 0x8c
function function_3efe1709(*var_1377a1e8) {
    /#
        iprintlnbold("<unknown string>");
    #/
    array::thread_all(getplayers(), &zm_intel::collect_intel, #"zmintel_platinum_requiem_artifact_05");
    level flag::set("klaus_helm_crafted");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x74cef4f3, Offset: 0xc670
// Size: 0x24c
function function_17200d08() {
    var_3d8b8643 = getent("pl_at_dmg", "targetname");
    flag = function_27f2ef17(var_3d8b8643);
    function_4e3bb793(var_3d8b8643, flag & ~512);
    var_44292111 = struct::get("pl_at_loc");
    level thread function_8a88acac(var_44292111);
    while (true) {
        waitresult = var_3d8b8643 waittill(#"damage");
        if (isplayer(waitresult.attacker) && namespace_1e7573ec::function_3efc58e4(waitresult.weapon) && waitresult.smeansofdeath !== "MOD_MELEE") {
            level flag::set(#"hash_1a6711afd0c82794");
            waitresult.attacker thread zm_platinum_vo::function_5603f220();
            point = function_4ba8fde("item_zmquest_platinum_helm_component_antenna");
            var_d5f0d750 = item_drop::drop_item(0, undefined, 1, 0, point.id, var_44292111.origin, var_44292111.angles, 2);
            var_d5f0d750.var_dd21aec2 = 1 | 16;
            break;
        }
    }
    var_176eb57d = getent("pl_rf_at_m5", "targetname");
    var_176eb57d scene::play(#"hash_27dec9688eb27290", "play", var_176eb57d);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x6 linked
// Checksum 0x3f62dcf, Offset: 0xc8c8
// Size: 0x14a
function private function_8a88acac(var_96a2b4c6) {
    level endon(#"hash_1a6711afd0c82794");
    level waittill(#"hash_9a22ba9db480002");
    while (true) {
        a_players = function_a1ef346b();
        foreach (player in a_players) {
            if (distance(var_96a2b4c6.origin, player.origin) < 500 && player.cached_zone_name === "zone_rooftops_start") {
                level notify(#"hash_2f350a6796478d3a", {#e_activator:player});
                break;
            }
        }
        wait(1);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x7e2e11c5, Offset: 0xca20
// Size: 0x2cc
function function_daa1be87() {
    var_6e9e0228 = getent("pl_box_dmg", "targetname");
    var_6582e3a9 = getent(var_6e9e0228.target, "targetname");
    var_458c40cd = struct::get(var_6582e3a9.target, "targetname");
    flag = function_27f2ef17(var_6e9e0228);
    function_4e3bb793(var_6e9e0228, flag & ~512);
    level thread function_a5a99d02(var_458c40cd);
    level flag::wait_till("power_on");
    var_6582e3a9 clientfield::set("" + #"hash_3bd38f4b718e54ad", 1);
    while (true) {
        waitresult = var_6e9e0228 waittill(#"damage");
        if (isplayer(waitresult.attacker) && namespace_1e7573ec::function_3efc58e4(waitresult.weapon) && waitresult.smeansofdeath !== "MOD_MELEE") {
            level flag::set(#"hash_33dc9c7e0eb8e450");
            waitresult.attacker thread zm_platinum_vo::function_165032c1();
            point = function_4ba8fde("item_zmquest_platinum_helm_component_board");
            var_cf7eeb0c = item_drop::drop_item(0, undefined, 1, 0, point.id, var_458c40cd.origin, var_458c40cd.angles, 2);
            var_cf7eeb0c.var_dd21aec2 = 1 | 16;
            break;
        }
    }
    var_6582e3a9 clientfield::set("" + #"hash_3bd38f4b718e54ad", 0);
    var_6582e3a9 setmodel(#"hash_3e8225a1f6f281a");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x6 linked
// Checksum 0xd83e9574, Offset: 0xccf8
// Size: 0x14a
function private function_a5a99d02(var_4c0d74cf) {
    level endon(#"hash_33dc9c7e0eb8e450");
    level waittill(#"hash_9a22ba9db480002");
    while (true) {
        a_players = function_a1ef346b();
        foreach (player in a_players) {
            if (distance(var_4c0d74cf.origin, player.origin) < 500 && player.cached_zone_name === "zone_ghost_station") {
                level notify(#"hash_1b22030e8582373", {#e_activator:player});
                break;
            }
        }
        wait(1);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x528095a7, Offset: 0xce50
// Size: 0x26c
function function_c0debb85() {
    flag = function_27f2ef17(self);
    function_4e3bb793(self, flag & ~512);
    if (is_true(self.var_75c942c0)) {
        level thread function_5702bff5(self);
    }
    while (true) {
        waitresult = self waittill(#"damage");
        if (isplayer(waitresult.attacker) && namespace_1e7573ec::function_3efc58e4(waitresult.weapon) && waitresult.smeansofdeath !== "MOD_MELEE") {
            e_fx = util::spawn_model("tag_origin", self.origin, self.angles);
            e_fx clientfield::set("" + #"hash_1bb601e9156b597c", 1);
            hidemiscmodels(self.target);
            if (is_true(self.var_75c942c0)) {
                level flag::set(#"hash_724f7a255c955ed1");
                waitresult.attacker thread zm_platinum_vo::function_20f55498();
                point = function_4ba8fde("item_zmquest_platinum_helm_component_transistor");
                var_1a5273da = item_drop::drop_item(0, undefined, 1, 0, point.id, self.origin, self.angles, 3);
                var_1a5273da.var_dd21aec2 = 1 | 16;
            }
            break;
        }
    }
    wait(1);
    if (isdefined(e_fx)) {
        e_fx delete();
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x6 linked
// Checksum 0x7ba9b21d, Offset: 0xd0c8
// Size: 0x14a
function private function_5702bff5(var_cf37d6c7) {
    level endon(#"hash_724f7a255c955ed1");
    level waittill(#"hash_9a22ba9db480002");
    while (true) {
        a_players = function_a1ef346b();
        foreach (player in a_players) {
            if (distance(var_cf37d6c7.origin, player.origin) < 500 && player.cached_zone_name === "zone_electronics_store") {
                level notify(#"hash_710553010563fce0", {#e_activator:player});
                break;
            }
        }
        wait(1);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0xb66d0c5, Offset: 0xd220
// Size: 0x54
function function_ca3d5cd0(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        if (isdefined(level.klaus)) {
            level.klaus showpart("J_Helm");
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xdc473792, Offset: 0xd280
// Size: 0x1a4
function function_4e719111(b_skipped) {
    if (b_skipped) {
        return;
    }
    level flag::set(#"hash_4e66662af9746f4f");
    callback::on_ai_spawned(&function_cbdf8397);
    level clientfield::set("" + #"hash_1012bcebf9b9294", 7);
    level thread function_7e855f1a();
    var_a7ae334 = 2;
    for (var_fa3ce073 = 0; var_fa3ce073 < var_a7ae334; var_fa3ce073 += 1) {
        level function_a0128e84(var_fa3ce073);
    }
    level flag::wait_till(#"hash_466055a464939e1");
    level flag::set(#"hash_403248bba9103130");
    level flag::clear(#"hash_25372b8b89ab540c");
    level clientfield::set("" + #"hash_1012bcebf9b9294", 0);
    /#
        iprintlnbold("<unknown string>");
    #/
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x6 linked
// Checksum 0x7947876b, Offset: 0xd430
// Size: 0x46
function private function_cbdf8397() {
    if (self.var_9fde8624 === #"hash_12fa854f3a7721b9" || self.var_9fde8624 === #"hash_3498fb1fbfcd0cf") {
        self.b_ignore_cleanup = 1;
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x6b4f8a13, Offset: 0xd480
// Size: 0x6dc
function function_a0128e84(var_b8713e0c) {
    level endon(#"end_game");
    level thread function_70be7cd6();
    zm_crafting::function_d1f16587("ztable_platinum_uranium_device", &function_85112dd6);
    level thread function_b162bb4a();
    level flag::wait_till_any(["connect_korber_roof_to_destroyed_upper_floors", "connect_destroyed_upper_floors_to_korber_roof"]);
    var_588f73eb = struct::get("zipline_destroyed_rooftops_lower");
    var_540b503 = struct::get("pl_rf_dv");
    var_588f73eb zm_unitrigger::create(&function_853eb091, 96, &function_12d455c6);
    level waittill(#"hash_121688cebb465c04");
    if (isdefined(var_588f73eb.trigger)) {
        var_588f73eb.trigger setinvisibletoall();
    }
    var_a8bde821 = util::spawn_model(#"p9_zm_platinum_collider_device_skeleton", var_540b503.origin, var_540b503.angles);
    var_a8bde821 playsound(#"hash_37975675da8896d2");
    var_a8bde821.box = util::spawn_model(#"hash_f70fef12c385c0", struct::get(var_540b503.target).origin, struct::get(var_540b503.target).angles);
    var_a8bde821.rock = util::spawn_model(#"hash_331e4f1fae8b529a", struct::get(var_540b503.var_e8ed2abf).origin, struct::get(var_540b503.var_e8ed2abf).angles);
    var_a8bde821.rock clientfield::set("" + #"hash_14e7d597c32c1920", 1);
    var_a8bde821.box linkto(var_a8bde821);
    var_a8bde821.rock linkto(var_a8bde821);
    level flag::set(#"hash_69a47af5a3b4e150");
    level flag::wait_till(#"hash_26084cd78e266cef");
    level flag::set("start_to_collide");
    level thread zm_audio::function_2354b945("tribes");
    var_b76903f3 = struct::get("pl_dv_collide_loc").origin;
    var_44a24b57 = struct::get("pl_clean_rock_drop_loc").origin;
    var_a8bde821 moveto(var_b76903f3, 2, 0.25);
    var_a8bde821 clientfield::set("" + #"hash_588a5a1ddff05b46", 1);
    level.var_34380a98 moveto(var_b76903f3, 2, 0.25);
    level.var_34380a98 clientfield::set("" + #"hash_588a5a1ddff05b46", 1);
    var_a8bde821 waittill(#"movedone");
    level clientfield::set("" + #"hash_74ef16bbfe861136", 1);
    if (isdefined(var_a8bde821)) {
        var_a8bde821 delete();
    }
    if (isdefined(var_a8bde821.box)) {
        var_a8bde821.box delete();
    }
    if (isdefined(var_a8bde821.rock)) {
        var_a8bde821.rock delete();
    }
    if (isdefined(level.var_34380a98)) {
        level.var_34380a98 delete();
    }
    if (isdefined(level.var_34380a98.box)) {
        level.var_34380a98.box delete();
    }
    if (isdefined(level.var_34380a98.rock)) {
        level.var_34380a98.rock delete();
    }
    level flag::clear(#"hash_69a47af5a3b4e150");
    level flag::clear(#"hash_26084cd78e266cef");
    level notify(#"hash_539c34f3bfbcae73");
    zm_unitrigger::unregister_unitrigger(var_588f73eb.s_unitrigger);
    if (isdefined(var_588f73eb.trigger)) {
        var_588f73eb.trigger setvisibletoall();
    }
    wait(1);
    if (var_b8713e0c == 0) {
        level thread function_12a522ec(var_b76903f3, var_44a24b57, var_b8713e0c);
        return;
    }
    level thread function_12a522ec(var_b76903f3, var_44a24b57 + (-40, 0, 0), var_b8713e0c);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 3, eflags: 0x2 linked
// Checksum 0x10d47a95, Offset: 0xdb68
// Size: 0x344
function function_12a522ec(var_b76903f3, var_44a24b57, *var_b8713e0c) {
    level endon(#"end_game");
    level thread function_f0af1f03(var_44a24b57, var_b8713e0c);
    var_432a7135 = struct::get("s_placed_nuke", "targetname");
    if (isdefined(var_432a7135.s_unitrigger)) {
        var_432a7135 waittill(#"trigger_activated");
    }
    wait(1);
    e_activator = var_432a7135 zm_unitrigger::function_fac87205(&function_35b9e6af, 96, undefined, 1);
    level flag::set(#"hash_3c1a16f8a03fa789");
    if (isdefined(e_activator.var_e22b6325)) {
        e_activator.var_e22b6325 unlink();
        e_activator.var_e22b6325 delete();
    }
    if (!isdefined(var_432a7135.mdl)) {
        var_432a7135.mdl = util::spawn_model(#"hash_3a4862d7748ce0ed", var_432a7135.origin, var_432a7135.angles);
    }
    if (!level flag::get(#"hash_78033190338d11c3")) {
        level zm_ui_inventory::function_7df6bb60(#"hash_37b4a47a5369363", 2);
        var_432a7135.mdl clientfield::set("" + #"hash_62ea9298804bdde2", 1);
        var_432a7135.mdl playsound(#"hash_48248ece9544aa77");
        level flag::set(#"hash_78033190338d11c3");
    } else {
        level zm_ui_inventory::function_7df6bb60(#"hash_37b4a47a5369363", 3);
        var_432a7135.mdl clientfield::set("" + #"hash_62ea9298804bdde2", 0);
        var_432a7135.mdl playsound(#"hash_48248ece9544aa77");
        level flag::set(#"hash_466055a464939e1");
    }
    e_activator flag::clear(#"hash_4af94dbfdea74dfd");
    e_activator thread function_e6c27476("off");
    /#
        iprintlnbold("<unknown string>");
    #/
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x70586355, Offset: 0xdeb8
// Size: 0x84
function function_35b9e6af(e_player) {
    if (e_player flag::get(#"hash_4af94dbfdea74dfd") && level flag::get(#"hash_627ca85c6b7455fb")) {
        self sethintstringforplayer(e_player, #"hash_58092da4bfcbe97f");
        return true;
    }
    return false;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0x2059dd98, Offset: 0xdf48
// Size: 0x224
function function_f0af1f03(v_start_pos, v_end_pos) {
    var_e0b595fe = util::spawn_model(#"hash_217311332720bc45", v_start_pos);
    var_e0b595fe playsound(#"zmb_mq_stp6_uranium_spawn");
    var_e0b595fe playloopsound(#"hash_2bd7f8325af7d792");
    if (isdefined(v_end_pos)) {
        var_e0b595fe moveto(v_end_pos, 2);
        var_e0b595fe clientfield::set("" + #"hash_4c1ff67b48ab2fd0", 1);
        var_e0b595fe waittill(#"movedone");
        var_e0b595fe clientfield::set("" + #"hash_4c1ff67b48ab2fd0", 0);
        level clientfield::set("" + #"hash_74ef16bbfe861136", 0);
    }
    var_e0b595fe rotate((0, 90, 0));
    e_activator = var_e0b595fe zm_unitrigger::function_fac87205(&function_beea86e9, 64, undefined, 1);
    level flag::set(#"hash_45622788b333b1f6");
    playsoundatposition(#"hash_333a28a0a616724a", var_e0b595fe.origin);
    if (isdefined(var_e0b595fe)) {
        var_e0b595fe delete();
    }
    e_activator thread function_12034670();
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x695de284, Offset: 0xe178
// Size: 0x13c
function function_12034670() {
    /#
        iprintlnbold("<unknown string>");
    #/
    self flag::set(#"hash_4af94dbfdea74dfd");
    self.var_e22b6325 = util::spawn_model(#"hash_217311332720bc45", self gettagorigin("tag_stowed_back"), self gettagangles("tag_stowed_back"));
    self.var_e22b6325 linkto(self, "tag_stowed_back");
    self.var_e22b6325 notsolid();
    self thread function_e6c27476("on");
    self thread function_e56789e0("cleansed_rock_drop");
    self thread function_32eccc75(self.var_e22b6325);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xfac3543e, Offset: 0xe2c0
// Size: 0xb4
function function_beea86e9(e_player) {
    if (!e_player flag::get(#"hash_5cf2740c67fd50e5") && !e_player flag::get(#"hash_60af29a70de37249") && !e_player flag::get(#"hash_4af94dbfdea74dfd")) {
        self sethintstringforplayer(e_player, #"hash_1d131ee8dbf505f8");
        return true;
    }
    return false;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x13d94ab0, Offset: 0xe380
// Size: 0x16e
function function_32eccc75(mdl_rock) {
    self endon(#"death", #"cleansed_rock_drop");
    mdl_rock endon(#"death");
    while (true) {
        isgamepad = self gamepadusedlast();
        if (!isgamepad && self buttonbitstate("BUTTON_BIT_ANY_DOWN") || isgamepad && self actionslottwobuttonpressed()) {
            if (isdefined(self.var_e22b6325)) {
                self flag::clear(#"hash_4af94dbfdea74dfd");
                self thread function_e6c27476("off");
                level thread function_f0af1f03(self.origin + (0, 0, 40));
                self.var_e22b6325 delete();
                break;
            }
        }
        waitframe(1);
    }
    self notify(#"cleansed_rock_drop");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xb72dd368, Offset: 0xe4f8
// Size: 0x246
function function_853eb091(e_player) {
    if (e_player flag::get(#"hash_60af29a70de37249")) {
        if (isdefined(self.stub.related_parent.trigger)) {
            self.stub.related_parent.trigger setinvisibletoplayer(e_player);
        }
        if (level flag::get(#"hash_69a47af5a3b4e150")) {
            self sethintstringforplayer(e_player, #"hash_72add1857947d73d");
        } else if (level flag::get(#"hash_26084cd78e266cef")) {
            self sethintstringforplayer(e_player, #"hash_789d86425babd8aa");
        } else {
            self sethintstringforplayer(e_player, #"hash_37420d99cda64999");
        }
        return true;
    }
    if (level flag::get(#"hash_69a47af5a3b4e150") || level flag::get(#"hash_26084cd78e266cef")) {
        if (isdefined(self.stub.related_parent.trigger)) {
            self.stub.related_parent.trigger setinvisibletoplayer(e_player);
        }
        self sethintstringforplayer(e_player, #"hash_72add1857947d73d");
        return true;
    }
    if (isdefined(self.stub.related_parent.trigger)) {
        self.stub.related_parent.trigger setvisibletoplayer(e_player);
    }
    return false;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xde485326, Offset: 0xe748
// Size: 0x13c
function function_12d455c6() {
    self endon(#"death");
    while (true) {
        waitresult = self waittill(#"trigger");
        e_player = waitresult.activator;
        if (!zm_utility::can_use(e_player)) {
            continue;
        }
        if (level flag::get(#"hash_69a47af5a3b4e150")) {
            continue;
        }
        if (e_player flag::get(#"hash_60af29a70de37249")) {
            if (isdefined(e_player.var_92c68692)) {
                e_player.var_92c68692 delete();
                e_player flag::clear(#"hash_60af29a70de37249");
                e_player thread function_e6c27476("off");
            }
            level notify(#"hash_121688cebb465c04");
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x2e17d06f, Offset: 0xe890
// Size: 0x374
function function_85112dd6(var_1377a1e8) {
    unitrigger_stub = self.stub;
    var_da9d2715 = struct::get(self.target);
    var_f82db2b = struct::get(var_da9d2715.target);
    var_ed508b9c = struct::get(var_f82db2b.target);
    var_48ac9424 = util::spawn_model(#"p9_zm_platinum_collider_device_skeleton", var_da9d2715.origin, var_da9d2715.angles);
    var_48ac9424.box = util::spawn_model(#"hash_f70fef12c385c0", var_f82db2b.origin, var_f82db2b.angles);
    var_48ac9424.rock = util::spawn_model(#"hash_331e4f1fae8b529a", var_ed508b9c.origin, var_ed508b9c.angles);
    var_48ac9424.rock clientfield::set("" + #"hash_14e7d597c32c1920", 1);
    if (isdefined(var_1377a1e8.var_7fe8417d)) {
        var_1377a1e8.var_7fe8417d unlink();
        var_1377a1e8.var_7fe8417d delete();
        var_1377a1e8 flag::clear(#"hash_5cf2740c67fd50e5");
        var_1377a1e8 thread function_e6c27476("off");
    }
    e_activator = var_48ac9424 zm_unitrigger::function_fac87205(&function_f4a4aae1, 64, undefined, 1);
    array::thread_all(getplayers(), &zm_intel::collect_intel, #"zmintel_platinum_requiem_artifact_06");
    level flag::set(#"hash_1d35d96ca4443a91");
    playsoundatposition(#"hash_613b9546fa3768fb", var_48ac9424.origin);
    if (isdefined(var_48ac9424)) {
        var_48ac9424 delete();
    }
    if (isdefined(var_48ac9424.box)) {
        var_48ac9424.box delete();
    }
    if (isdefined(var_48ac9424.rock)) {
        var_48ac9424.rock delete();
    }
    e_activator thread function_a485d957();
    wait(1);
    unitrigger_stub.registered = 0;
    unitrigger_stub zm_crafting::reset_table();
    level thread function_e0c7f864();
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xbcddc513, Offset: 0xec10
// Size: 0xe8
function function_e0c7f864() {
    level endon(#"end_game");
    foreach (e_player in getplayers()) {
        if (e_player flag::get(#"hash_5cf2740c67fd50e5")) {
            level thread zm_items::player_pick_up(e_player, zm_crafting::get_component("zitem_platinum_uranium_device_zm"));
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xdbd9d189, Offset: 0xed00
// Size: 0x16c
function function_a485d957() {
    /#
        iprintlnbold("<unknown string>");
    #/
    self flag::set(#"hash_60af29a70de37249");
    self.var_92c68692 = util::spawn_model(#"p9_zm_platinum_collider_device_skeleton", self gettagorigin("tag_stowed_back") + (-2, 0, -6), self gettagangles("tag_stowed_back"));
    self.var_92c68692 linkto(self, "tag_stowed_back", (-2, 0, -6), (0, 0, 0));
    self.var_92c68692 notsolid();
    self.var_92c68692 setinvisibletoplayer(self);
    self thread function_e6c27476("on");
    self thread function_e56789e0("uranium_device_drop");
    self thread function_27c174c0(self.var_92c68692);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x18a4c8c1, Offset: 0xee78
// Size: 0x16e
function function_27c174c0(mdl_device) {
    self endon(#"death", #"uranium_device_drop");
    mdl_device endon(#"death");
    while (true) {
        isgamepad = self gamepadusedlast();
        if (!isgamepad && self buttonbitstate("BUTTON_BIT_ANY_DOWN") || isgamepad && self actionslottwobuttonpressed()) {
            if (isdefined(self.var_92c68692)) {
                self flag::clear(#"hash_60af29a70de37249");
                self thread function_e6c27476("off");
                level thread function_ac348e30(self.origin + (0, 0, 40));
                self.var_92c68692 delete();
                break;
            }
        }
        waitframe(1);
    }
    self notify(#"uranium_device_drop");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x89cc12d7, Offset: 0xeff0
// Size: 0x214
function function_ac348e30(v_pos) {
    var_48ac9424 = util::spawn_model(#"p9_zm_platinum_collider_device_skeleton", v_pos);
    var_48ac9424.box = util::spawn_model(#"hash_f70fef12c385c0", v_pos + (-1.5, 0, -10));
    var_48ac9424.rock = util::spawn_model(#"hash_331e4f1fae8b529a", v_pos + (-1.5, 0, -10));
    var_48ac9424 function_619a5c20();
    var_48ac9424.rock clientfield::set("" + #"hash_14e7d597c32c1920", 1);
    var_48ac9424.box linkto(var_48ac9424);
    var_48ac9424.rock linkto(var_48ac9424);
    var_48ac9424 rotate((0, 90, 0));
    e_activator = var_48ac9424 zm_unitrigger::function_fac87205(&function_f4a4aae1, 64, undefined, 1);
    if (isdefined(var_48ac9424)) {
        var_48ac9424 delete();
    }
    if (isdefined(var_48ac9424.box)) {
        var_48ac9424.box delete();
    }
    if (isdefined(var_48ac9424.rock)) {
        var_48ac9424.rock delete();
    }
    e_activator thread function_a485d957();
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x5707849e, Offset: 0xf210
// Size: 0xb4
function function_f4a4aae1(e_player) {
    if (!e_player flag::get(#"hash_5cf2740c67fd50e5") && !e_player flag::get(#"hash_60af29a70de37249") && !e_player flag::get(#"hash_4af94dbfdea74dfd")) {
        self sethintstringforplayer(e_player, #"hash_5568577001fb1bf7");
        return true;
    }
    return false;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x6d1b140c, Offset: 0xf2d0
// Size: 0x24c
function function_e56789e0(str_notify) {
    self endon(str_notify);
    self waittill(#"death", #"disconnect", #"hash_42b83a8bd6b040d3", #"player_downed");
    if (self flag::get(#"hash_60af29a70de37249")) {
        if (isdefined(self.var_92c68692)) {
            self.var_92c68692 delete();
        }
        self flag::clear(#"hash_60af29a70de37249");
        level thread function_ac348e30(self.origin + (0, 0, 40));
    } else if (self flag::get(#"hash_5cf2740c67fd50e5")) {
        if (isdefined(self.var_7fe8417d)) {
            self.var_7fe8417d delete();
        }
        self flag::clear(#"hash_5cf2740c67fd50e5");
        level thread function_dcaecf14(self.origin);
    } else if (self flag::get(#"hash_4af94dbfdea74dfd")) {
        if (isdefined(self.var_e22b6325)) {
            self.var_e22b6325 delete();
        }
        self flag::clear(#"hash_4af94dbfdea74dfd");
        level thread function_f0af1f03(self.origin + (0, 0, 40));
    }
    self thread function_e6c27476("off");
    self notify(str_notify);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x902bd09e, Offset: 0xf528
// Size: 0x1ce
function function_7e855f1a() {
    level endon(#"end_game");
    var_462905d9 = getentarray("pl_street_com", "script_noteworthy");
    if (!isdefined(var_462905d9)) {
        var_462905d9 = [];
    } else if (!isarray(var_462905d9)) {
        var_462905d9 = array(var_462905d9);
    }
    var_462905d9[var_462905d9.size] = getent("computer_in_safe", "targetname");
    level.var_6f8083d4 = 0;
    while (true) {
        array::thread_all(var_462905d9, &function_d78c944b);
        level waittill(#"hash_32cdc77246645d55");
        array::thread_all(var_462905d9, &function_1be639cd);
        level thread function_6d259253();
        level flag::clear(#"hash_25372b8b89ab540c");
        level waittill(#"end_of_round");
        if (level.var_6f8083d4 == 1) {
            break;
        } else {
            level.var_6f8083d4 += 1;
        }
        level flag::wait_till("start_to_collide");
        wait(1);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x52077376, Offset: 0xf700
// Size: 0x170
function function_d78c944b() {
    if (!isdefined(self.var_bec42bc3)) {
        self.var_bec42bc3 = util::spawn_model(#"hash_18ea3e1c8e111ebb", self.origin, self.angles);
    } else {
        self.var_bec42bc3 setmodel(#"hash_18ea3e1c8e111ebb");
        self.var_bec42bc3 playsound(#"zmb_mq_stp5_selection_wrong");
        self.var_bec42bc3 playloopsound(#"zmb_mq_stp5_screen_lp_alarm");
    }
    self zm_unitrigger::function_fac87205(#"hash_58ebb0f6cc10122e");
    self.var_bec42bc3 setmodel(#"hash_18ea3d1c8e111d08");
    self.var_bec42bc3 playsound(#"zmb_mq_stp5_selection_right");
    self.var_bec42bc3 playloopsound(#"zmb_mq_stp5_screen_lp");
    level notify(#"hash_32cdc77246645d55");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xabe28ba, Offset: 0xf878
// Size: 0x8c
function function_1be639cd() {
    if (!isdefined(self.var_bec42bc3)) {
        self.var_bec42bc3 = util::spawn_model(#"hash_18ea3d1c8e111d08", self.origin, self.angles);
    } else {
        self.var_bec42bc3 setmodel(#"hash_18ea3d1c8e111d08");
    }
    zm_unitrigger::unregister_unitrigger(self.s_unitrigger);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x6b66958d, Offset: 0xf910
// Size: 0x70
function function_bb459ba0(*params) {
    if (self.var_9fde8624 === #"hash_12fa854f3a7721b9" || self.var_9fde8624 === #"hash_3498fb1fbfcd0cf") {
        level notify(#"hash_3fccc5577b1a9589", {#position:self.origin});
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0xb96dc48f, Offset: 0xf988
// Size: 0x14c
function function_18610fa3(player, enemy) {
    if (self.var_6f84b820 === #"elite") {
        level scoreevents::doscoreeventcallback("scoreEventZM", {#scoreevent:"retrieve_cannister_elite_kill_zm", #attacker:player, #enemy:enemy});
        return;
    }
    if (self.var_6f84b820 === #"special") {
        level scoreevents::doscoreeventcallback("scoreEventZM", {#scoreevent:"retrieve_cannister_special_kill_zm", #attacker:player, #enemy:enemy});
        return;
    }
    level scoreevents::doscoreeventcallback("scoreEventZM", {#scoreevent:"retrieve_cannister_kill_zm", #attacker:player, #enemy:enemy});
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xd8b5793c, Offset: 0xfae0
// Size: 0x48c
function function_6d259253() {
    level flag::clear("spawn_zombies");
    level.var_55a99841[#"zombie"] = &function_5f4e9df8;
    level.var_55a99841[#"hash_7c0d83ac1e845ac2"] = &function_721e6a52;
    level.var_55a99841[#"mimic"] = &function_721e6a52;
    n_players = getplayers().size;
    var_9bd11333 = 1;
    var_462b01ed = 2;
    var_e22f1d64 = n_players + 2;
    var_188eab1f = n_players * 3 + 3;
    var_c5c1068e = [var_9bd11333, var_462b01ed, var_e22f1d64, var_188eab1f];
    var_95ef7819 = [#"hash_acac3fe7a341329", #"hash_4a900af3fc47cdd5", #"spawner_bo5_zombie_zm_platinum", #"hash_2cdfe23b16faf150"];
    level thread zm_platinum_vo::function_b7e4011();
    wait(12);
    var_2a8816d8 = struct::get("hvt_event_spn_loc_" + level.var_6f8083d4);
    mdl_portal = util::spawn_model("tag_origin", var_2a8816d8.origin, var_2a8816d8.angles);
    mdl_portal clientfield::set("" + #"hash_60e4230d63925ac1", 1);
    players = getplayers();
    foreach (player in players) {
        if (isalive(player)) {
            player function_66337ef1("damage_heavy");
        }
    }
    wait(6);
    var_2a8816d8 thread function_5ab0856(var_c5c1068e, var_95ef7819, mdl_portal);
    level flag::set(#"hvt_event_steiner_spawned");
    waitresult = level waittill(#"hash_3fccc5577b1a9589");
    level thread function_dcaecf14(waitresult.position);
    level thread function_f44b304b();
    waitresult = level waittill(#"hash_3fccc5577b1a9589");
    level thread function_dcaecf14(waitresult.position);
    level flag::set("spawn_zombies");
    level flag::clear(#"hvt_event_steiner_spawned");
    level.var_55a99841[#"zombie"] = undefined;
    level.var_55a99841[#"hash_7c0d83ac1e845ac2"] = &namespace_88795f45::function_99c14949;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xdf20eb02, Offset: 0xff78
// Size: 0x450
function function_721e6a52() {
    self endon(#"death");
    while (true) {
        var_31f7011a = arraysortclosest(getplayers(), self.origin);
        foreach (player in var_31f7011a) {
            if (zm_utility::is_player_valid(player)) {
                closest_player = player;
                break;
            }
        }
        if (isdefined(closest_player)) {
            break;
        }
        util::wait_network_frame();
    }
    var_e4dd1a2e = self canpath(self.origin, closest_player.origin);
    if (!var_e4dd1a2e) {
        self val::set("hvt_teleport_ignoreall", "ignoreall", 1);
        self flag::set(#"hash_624e5d5dfb7f742b");
        self notify(#"hash_2ab0071e6f1bd0b1");
        self.keepclaimednode = 0;
        self.favoriteenemy = undefined;
        self.var_6324ed63 = undefined;
        self val::set(#"hash_2ab0071e6f1bd0b1", "takedamage", 0);
        if (self.archetype === #"hash_7c0d83ac1e845ac2") {
            self thread animation::play(#"ai_t9_zm_steiner_base_com_summon_01");
            wait(2.5);
            self animation::stop(0.3, 1);
        }
        self clientfield::set("" + #"hash_b74182bd1e44a44", 1);
        wait(2);
        self clientfield::set("" + #"hash_b74182bd1e44a44", 0);
        self clientfield::increment("" + #"hash_435db79c304e12a5");
        wait(0.1);
        self.mdl_trail = util::spawn_model("tag_origin", self.origin);
        if (isdefined(self.mdl_trail)) {
            self linkto(self.mdl_trail, "tag_origin");
            wait(0.1);
            self ghost();
            self thread function_c90d3dcf();
            if (isdefined(self.mdl_trail)) {
                self.mdl_trail thread function_42fbf5d9(self, closest_player);
            }
        }
        self waittill(#"teleported");
        self val::reset("hvt_teleport_ignoreall", "ignoreall");
        self flag::clear(#"hash_624e5d5dfb7f742b");
        self show();
        self flag::clear("kill_hvt_teleporting");
        self val::reset(#"hash_2ab0071e6f1bd0b1", "takedamage");
    }
    return true;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x6 linked
// Checksum 0xf1211c71, Offset: 0x103d0
// Size: 0x74
function private function_ae110d0e() {
    self endon(#"death");
    level waittill(#"hash_2f3cb0b1b50d517a");
    self clientfield::set("" + #"hash_6d05bbcab1912e5a", 0);
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x6 linked
// Checksum 0x640c44e0, Offset: 0x10450
// Size: 0x5c
function private function_92dc1df8(var_f748ea8) {
    self waittill(#"death");
    if (isdefined(var_f748ea8)) {
        var_f748ea8 clientfield::set("" + #"hash_6d05bbcab1912e5a", 0);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0xd0edfb3c, Offset: 0x104b8
// Size: 0x44c
function function_42fbf5d9(var_956ca580, s_dest) {
    var_956ca580 endon(#"death");
    if (var_956ca580.archetype === #"hash_7c0d83ac1e845ac2") {
        level endon(#"hash_2f3cb0b1b50d517a");
    }
    self clientfield::set("" + #"hash_6d05bbcab1912e5a", 1);
    if (var_956ca580.archetype === #"hash_7c0d83ac1e845ac2") {
        self thread function_ae110d0e();
    }
    var_956ca580 thread function_92dc1df8(self);
    wait(1);
    v_target_pos = s_dest.origin;
    if (!isdefined(v_target_pos)) {
        v_target_pos = array::random(function_a1ef346b()).origin;
    }
    if (isdefined(self)) {
        n_dist = distance(self.origin, v_target_pos);
        n_time = n_dist / 1000;
        var_7fd007f9 = distance2d(self.origin, v_target_pos) * 0.5;
        n_inc = int(n_dist);
        self movez(100, 2);
        self waittill(#"movedone");
    }
    if (isdefined(self)) {
        self playsound(#"hash_292cc4273f4c0161");
    }
    while (true) {
        if (isdefined(self)) {
            var_ed0c1ff8 = distance2d(self.origin, v_target_pos);
            if (var_ed0c1ff8 <= 100) {
                break;
            }
            v_dest = v_target_pos + (0, 0, n_inc);
            n_inc -= 50;
            if (v_dest[2] <= v_target_pos[2]) {
                break;
            }
            self moveto(v_dest, n_time);
        }
        waitframe(1);
    }
    if (isdefined(self)) {
        n_dist = distance(self.origin, v_target_pos);
        n_time = n_dist / 1000;
        self moveto(v_target_pos, n_time);
        self waittill(#"movedone");
    }
    if (isdefined(self)) {
        self playsound(#"hash_2758a7e5c0fac58b");
        self stoploopsound();
    }
    var_956ca580 clientfield::set("" + #"hash_3049a409503be8a0", 1);
    var_956ca580 unlink();
    wait(0.1);
    var_956ca580 forceteleport(v_target_pos);
    util::wait_network_frame();
    if (isdefined(self)) {
        self thread function_313a13db();
    }
    var_956ca580 notify(#"teleported");
    var_956ca580 clientfield::set("" + #"hash_3049a409503be8a0", 0);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x5a6864f5, Offset: 0x10910
// Size: 0x54
function function_313a13db() {
    wait(1);
    if (isdefined(self)) {
        self clientfield::set("" + #"hash_6d05bbcab1912e5a", 0);
        self delete();
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xff490101, Offset: 0x10970
// Size: 0x4c
function function_c90d3dcf() {
    self endon(#"death", #"teleported");
    self waittill(#"teleported");
    self show();
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x9b9b5b2d, Offset: 0x109c8
// Size: 0x37e
function function_5f4e9df8() {
    while (isdefined(self)) {
        var_31f7011a = arraysortclosest(getplayers(), self.origin);
        foreach (player in var_31f7011a) {
            if (zm_utility::is_player_valid(player)) {
                closest_player = player;
                break;
            }
        }
        if (isdefined(closest_player)) {
            break;
        }
        util::wait_network_frame();
    }
    s_spawn_locs = [];
    if (level.zm_loc_types[#"zombie_location"].size > 0) {
        s_spawn_locs = level.zm_loc_types[#"zombie_location"];
    }
    var_69681a59 = [];
    if (isdefined(level.active_zone_names) && isarray(s_spawn_locs) && s_spawn_locs.size > 0) {
        foreach (spawn_loc in s_spawn_locs) {
            if (isdefined(spawn_loc.zone_name) && array::contains(level.active_zone_names, spawn_loc.zone_name)) {
                if (!isdefined(var_69681a59)) {
                    var_69681a59 = [];
                } else if (!isarray(var_69681a59)) {
                    var_69681a59 = array(var_69681a59);
                }
                var_69681a59[var_69681a59.size] = spawn_loc;
            }
        }
    }
    if (var_69681a59.size < 1) {
        return true;
    }
    if (isdefined(self)) {
        var_6017f33e = self.aitype;
        self delete();
    }
    if (var_6017f33e === #"hash_2cdfe23b16faf150") {
        ai_zombie = zombie_utility::spawn_zombie(level.zombie_spawners[3], undefined, array::random(var_69681a59));
    } else {
        ai_zombie = zombie_utility::spawn_zombie(level.zombie_spawners[0], undefined, array::random(var_69681a59));
    }
    if (isdefined(ai_zombie)) {
        ai_zombie.no_powerups = 1;
        ai_zombie.script_string = "find_flesh";
    }
    return true;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 3, eflags: 0x2 linked
// Checksum 0xe9b351ff, Offset: 0x10d50
// Size: 0x294
function function_5ab0856(var_8fd8f36c, var_d2df0e57, e_portal) {
    var_52ae392c = var_8fd8f36c.size;
    if (!is_true(var_52ae392c)) {
        return;
    }
    for (i = 0; i < var_52ae392c; i++) {
        while (var_8fd8f36c[i]) {
            if (getfreeactorcount() < 1) {
                a_zombies = getactorarray();
                if (isdefined(a_zombies)) {
                    a_zombies[0].allowdeath = 1;
                    a_zombies[0] kill();
                } else {
                    /#
                        iprintlnbold("<unknown string>");
                    #/
                }
            }
            ai = spawnactor(var_d2df0e57[i], self.origin, self.angles, undefined, 1);
            if (isdefined(ai)) {
                ai thread function_21f41069(self);
            }
            var_8fd8f36c[i] = var_8fd8f36c[i] - 1;
            if (var_d2df0e57[i] === #"hash_acac3fe7a341329") {
                self thread function_a8d60a9c();
                wait(3);
            }
            wait(0.5);
        }
    }
    players = getplayers();
    foreach (player in players) {
        if (isdefined(player)) {
            player stoprumble("damage_heavy");
        }
    }
    if (isdefined(e_portal)) {
        e_portal clientfield::set("" + #"hash_60e4230d63925ac1", 0);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x559a049d, Offset: 0x10ff0
// Size: 0x74
function function_a8d60a9c() {
    zm_sq::function_266d66eb(#"hash_6c971ede43d84b27", self.origin);
    level waittill(#"hash_4cfe3a8638766035", #"hash_2b822a41b2382b1");
    zm_sq::objective_complete(#"hash_6c971ede43d84b27");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xf8733f72, Offset: 0x11070
// Size: 0x1ac
function function_21f41069(s_spawn) {
    self endon(#"death");
    self function_43ea27c1();
    if (self.aitype === #"hash_acac3fe7a341329") {
        self.var_9ecae3b4 = 1;
        self setgoal(getclosestpointonnavmesh(struct::get("hvt_steiner_summon_loc_" + level.var_6f8083d4).origin, 100, self getpathfindingradius()), 0);
        self waittill(#"goal");
        self animation::play(#"ai_t9_zm_steiner_base_com_summon_01");
        self.var_9ecae3b4 = undefined;
    }
    self thread function_4986565d();
    self thread function_94b044c4();
    self thread function_887e0ba(s_spawn);
    level waittill(#"hash_4cfe3a8638766035", #"hash_2b822a41b2382b1");
    if (isalive(self)) {
        self thread function_2ccb79a9();
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x42fd9df1, Offset: 0x11228
// Size: 0xca
function function_43ea27c1() {
    if (self.aitype === #"hash_4a900af3fc47cdd5") {
        self.b_ignore_cleanup = 0;
        self.targetname = "mq_hvt_mimic";
    }
    self.ignore_enemy_count = 1;
    self val::set(#"hash_24479b866041463a", "ignoreall", 1);
    self.ignore_find_flesh = 1;
    self.favoriteenemy = undefined;
    self pathmode("move allowed");
    self.completed_emerging_into_playable_area = 1;
    self.zombie_think_done = 1;
    self.no_powerups = 1;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x3d9b0bfb, Offset: 0x11300
// Size: 0x4e
function function_2ccb79a9() {
    self val::reset(#"hash_24479b866041463a", "ignoreall");
    self.ignore_find_flesh = 0;
    self.zombie_move_speed = "run";
    self.var_9ecae3b4 = undefined;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x91e89dbb, Offset: 0x11358
// Size: 0x140
function function_887e0ba(s_spawn_loc) {
    self endon(#"death");
    level endon(#"hash_4cfe3a8638766035", #"hash_2b822a41b2382b1");
    var_b89507cc = getnodearray(s_spawn_loc.target, "targetname");
    while (true) {
        next_node = array::random(var_b89507cc);
        next_goal = getclosestpointonnavmesh(next_node.origin, 100, self getpathfindingradius());
        self.var_9ecae3b4 = 1;
        self setgoal(next_goal, 0);
        self waittill(#"goal");
        self.var_9ecae3b4 = undefined;
        rand_time = randomintrange(3, 6);
        wait(rand_time);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x98793bc7, Offset: 0x114a0
// Size: 0x106
function function_4986565d() {
    self endon(#"death");
    level endon(#"hash_4cfe3a8638766035", #"hash_2b822a41b2382b1");
    while (true) {
        foreach (player in getplayers()) {
            if (distancesquared(player.origin, self.origin) <= 262144) {
                level notify(#"hash_4cfe3a8638766035");
            }
        }
        wait(1);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xb476a7ca, Offset: 0x115b0
// Size: 0x88
function function_94b044c4() {
    self endon(#"death");
    level endon(#"hash_4cfe3a8638766035", #"hash_2b822a41b2382b1");
    waitresult = self waittill(#"damage");
    if (isplayer(waitresult.attacker)) {
        level notify(#"hash_2b822a41b2382b1");
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x4dd7a386, Offset: 0x11640
// Size: 0x290
function function_f44b304b() {
    level endoncallback(&function_51052efd, #"start_to_collide");
    var_9532df03 = 300;
    level thread function_626741e8(var_9532df03);
    level thread zm_audio::function_b36aeaf6("tribes");
    wait(120);
    level flag::set(#"hash_747aa3dbac4ca7f1");
    wait(120);
    level flag::set(#"hash_6c454492dd434df5");
    wait(50);
    level flag::set(#"hash_7351994164ae60");
    wait(10);
    level flag::set(#"hash_5a63eeb221823928");
    level thread zm_audio::function_2354b945("tribes");
    wait(2);
    foreach (player in getplayers()) {
        player playsoundtoplayer(#"hash_1d714b567a960350", player);
        playfx(#"hash_414926335698e2a1", player.origin);
        player.var_72249004 = 0;
        player dodamage(player.health + 999, player.origin);
        player thread screen_fade_out();
    }
    wait(3);
    level notify(#"end_game", {#reason:#"hash_4e5756202af6ae94"});
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x6 linked
// Checksum 0x7645475f, Offset: 0x118d8
// Size: 0x74
function private screen_fade_out() {
    level endon(#"end_game");
    if (isdefined(self)) {
        self lui::screen_fade_out(0.25, (1, 1, 1));
    }
    wait(2);
    if (isdefined(self)) {
        self lui::screen_fade_out(0.5, (0, 0, 0));
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x6 linked
// Checksum 0x1260c6cb, Offset: 0x11958
// Size: 0x2c
function private function_51052efd(*s_notify) {
    level flag::set(#"hash_25372b8b89ab540c");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x59d91019, Offset: 0x11990
// Size: 0x1ec
function function_626741e8(n_time) {
    level endon(#"end_game");
    wait(2);
    foreach (player in getplayers()) {
        level.var_31028c5d prototype_hud::function_7491d6c5(player, #"hash_36941caa0cd14143");
        level.var_31028c5d prototype_hud::set_active_objective_string(player, #"hash_36941caa0cd14143");
        level.var_31028c5d prototype_hud::function_817e4d10(player, 2);
    }
    level thread objective_manager::start_timer(n_time, "uranium_explosion");
    level waittill(#"start_to_collide");
    foreach (player in getplayers()) {
        level.var_31028c5d prototype_hud::close(player);
    }
    level thread objective_manager::stop_timer();
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x2db35020, Offset: 0x11b88
// Size: 0x16c
function function_dcaecf14(v_pos) {
    var_41a4d1a0 = util::spawn_model(#"hash_331e4f1fae8b529a", v_pos + (0, 0, 40));
    var_41a4d1a0 playsound("zmb_mq_stp6_uranium_spawn");
    var_41a4d1a0 thread function_770d26d0();
    e_activator = var_41a4d1a0 zm_unitrigger::function_fac87205(&function_5e035ba5, 64, undefined, 1);
    array::thread_all(getplayers(), &zm_intel::collect_intel, #"zmintel_platinum_darkaether_artifact_03");
    level flag::set(#"hash_a9907d2116d8d9e");
    playsoundatposition(#"hash_333a28a0a616724a", var_41a4d1a0.origin);
    if (isdefined(var_41a4d1a0)) {
        var_41a4d1a0 delete();
    }
    e_activator thread function_f3b08671();
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x6 linked
// Checksum 0x19b0d14b, Offset: 0x11d00
// Size: 0x6c
function private function_770d26d0() {
    self thread function_ffa66365();
    self clientfield::set("" + #"hash_14e7d597c32c1920", 1);
    self rotate((0, 90, 0));
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x6 linked
// Checksum 0x3bb4f0d9, Offset: 0x11d78
// Size: 0x104
function private function_ffa66365() {
    self endon(#"death");
    var_145237a9 = self.origin;
    var_5d8e38e6 = (1, 1, 1);
    while (true) {
        var_1b580374 = randomfloatrange(-0.5, 0.5);
        var_11f970b3 = randomfloatrange(-0.5, 0.5);
        var_3cbd458 = randomfloatrange(-0.5, 0.5);
        self.origin = var_145237a9 + (var_5d8e38e6[0] * var_1b580374, var_5d8e38e6[1] * var_11f970b3, var_5d8e38e6[2] * var_3cbd458);
        wait(0.05);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x81938a35, Offset: 0x11e88
// Size: 0x194
function function_f3b08671() {
    /#
        iprintlnbold("<unknown string>");
    #/
    self flag::set(#"hash_5cf2740c67fd50e5");
    zm_items::player_pick_up(self, zm_crafting::get_component("zitem_platinum_uranium_device_zm"));
    self.var_7fe8417d = util::spawn_model(#"hash_331e4f1fae8b529a", self gettagorigin("tag_stowed_back"), self gettagangles("tag_stowed_back"));
    self.var_7fe8417d clientfield::set("" + #"hash_14e7d597c32c1920", 1);
    self.var_7fe8417d linkto(self, "tag_stowed_back");
    self.var_7fe8417d notsolid();
    self thread function_e6c27476("on");
    self thread function_e56789e0("corrupted_uranium_drop");
    self thread function_18aa952c(self.var_7fe8417d);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x27bbea03, Offset: 0x12028
// Size: 0xb4
function function_5e035ba5(e_player) {
    if (!e_player flag::get(#"hash_5cf2740c67fd50e5") && !e_player flag::get(#"hash_60af29a70de37249") && !e_player flag::get(#"hash_4af94dbfdea74dfd")) {
        self sethintstringforplayer(e_player, #"hash_5f7639c3fb164ad0");
        return true;
    }
    return false;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x9a5e98df, Offset: 0x120e8
// Size: 0x128
function function_b162bb4a() {
    level endon(#"end_game", #"hash_403248bba9103130");
    while (true) {
        waitresult = level waittill(#"crafting_started");
        player = waitresult.activator;
        if (waitresult.unitrigger.stub.blueprint.name === "zblueprint_platinum_uranium_device") {
            player flag::set(#"hash_5759ac03fb191905");
        }
        player waittill(#"crafting_fail", #"crafting_success", #"death", #"disconnect");
        player flag::clear(#"hash_5759ac03fb191905");
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xb1e62182, Offset: 0x12218
// Size: 0x1e6
function function_18aa952c(mdl_rock) {
    self endon(#"death", #"corrupted_uranium_drop");
    mdl_rock endon(#"death");
    while (true) {
        if (self flag::get(#"hash_5759ac03fb191905")) {
            waitframe(1);
            continue;
        }
        isgamepad = self gamepadusedlast();
        if (!isgamepad && self buttonbitstate("BUTTON_BIT_ANY_DOWN") || isgamepad && self actionslottwobuttonpressed()) {
            if (isdefined(self.var_7fe8417d)) {
                self flag::clear(#"hash_5cf2740c67fd50e5");
                if (zm_items::player_has(self, zm_crafting::get_component("zitem_platinum_uranium_device_zm"))) {
                    zm_items::player_take(self, zm_crafting::get_component("zitem_platinum_uranium_device_zm"));
                }
                self thread function_e6c27476("off");
                level thread function_dcaecf14(self.origin);
                self.var_7fe8417d delete();
                break;
            }
        }
        waitframe(1);
    }
    self notify(#"corrupted_uranium_drop");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x404146de, Offset: 0x12408
// Size: 0xfa
function function_e6c27476(state) {
    if (state == "on") {
        self clientfield::set_to_player("" + #"hash_67d900e4df2ea942", 1);
        self thread function_ad8b0e62();
        self.var_dae38283 = 1;
        self zm_equipment::show_hint_text(#"hash_63d95b02bb01565b", 5);
        return;
    }
    self clientfield::set_to_player("" + #"hash_67d900e4df2ea942", 0);
    self thread function_40b63626();
    self notify(#"hide_equipment_hint_text");
    self.var_dae38283 = 0;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xdd4aa614, Offset: 0x12510
// Size: 0xc6
function function_ad8b0e62() {
    level endon(#"end_game");
    self endon(#"death", #"hash_5cf2740c67fd50e5", #"hash_4af94dbfdea74dfd", #"hash_60af29a70de37249");
    self notify(#"hash_63dd2f579f7a8704");
    self.var_4d9b2bc3 = 0;
    while (true) {
        if (isalive(self)) {
            self dodamage(2, self.origin);
        }
        wait(1);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x73d45bdd, Offset: 0x125e0
// Size: 0x52
function function_40b63626() {
    level endon(#"end_game");
    self endon(#"death", #"hash_63dd2f579f7a8704");
    wait(3);
    self.var_4d9b2bc3 = 1;
}

// Namespace namespace_1fc8f2e3/gadget_on
// Params 1, eflags: 0x20
// Checksum 0xb217ecbb, Offset: 0x12640
// Size: 0xd2
function event_handler[gadget_on] gadget_on_callback(eventstruct) {
    player = eventstruct.entity;
    if (isplayer(player) && eventstruct.weapon.name === #"hash_364914e1708cb629") {
        if (!is_true(player.var_4d9b2bc3) && is_true(player clientfield::get_to_player("" + #"hash_67d900e4df2ea942"))) {
            player.health = player.var_66cb03ad;
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x93c7465e, Offset: 0x12720
// Size: 0x34c
function function_70be7cd6() {
    level endon(#"end_game");
    level flag::wait_till_any(["connect_korber_roof_to_destroyed_upper_floors", "connect_destroyed_upper_floors_to_korber_roof"]);
    var_dfe5582e = struct::get("zipline_korber_rooftop");
    var_6f9e4297 = struct::get("pl_kb_rk");
    var_dfe5582e zm_unitrigger::create(&function_5223e1be, 96, &function_2ff3723);
    level waittill(#"hash_4f9fb730136f0187");
    if (isdefined(var_dfe5582e.trigger)) {
        var_dfe5582e.trigger setinvisibletoall();
    }
    level.var_34380a98 = util::spawn_model(#"p9_zm_platinum_collider_device_skeleton", var_6f9e4297.origin, var_6f9e4297.angles);
    level.var_34380a98 playsound(#"hash_37975675da8896d2");
    level.var_34380a98.box = util::spawn_model(#"hash_f70fef12c385c0", struct::get(var_6f9e4297.target).origin, struct::get(var_6f9e4297.target).angles);
    level.var_34380a98.rock = util::spawn_model(#"hash_331e4f1fae8b529a", struct::get(var_6f9e4297.var_e8ed2abf).origin, struct::get(var_6f9e4297.var_e8ed2abf).angles);
    level.var_34380a98.rock clientfield::set("" + #"hash_14e7d597c32c1920", 1);
    level.var_34380a98.box linkto(level.var_34380a98);
    level.var_34380a98.rock linkto(level.var_34380a98);
    level flag::set(#"hash_26084cd78e266cef");
    level waittill(#"hash_539c34f3bfbcae73");
    zm_unitrigger::unregister_unitrigger(var_dfe5582e.s_unitrigger);
    if (isdefined(var_dfe5582e.trigger)) {
        var_dfe5582e.trigger setvisibletoall();
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x77245917, Offset: 0x12a78
// Size: 0x246
function function_5223e1be(e_player) {
    if (e_player flag::get(#"hash_60af29a70de37249")) {
        if (isdefined(self.stub.related_parent.trigger)) {
            self.stub.related_parent.trigger setinvisibletoplayer(e_player);
        }
        if (level flag::get(#"hash_26084cd78e266cef")) {
            self sethintstringforplayer(e_player, #"hash_72add1857947d73d");
        } else if (level flag::get(#"hash_69a47af5a3b4e150")) {
            self sethintstringforplayer(e_player, #"hash_789d86425babd8aa");
        } else {
            self sethintstringforplayer(e_player, #"hash_37420d99cda64999");
        }
        return true;
    }
    if (level flag::get(#"hash_69a47af5a3b4e150") || level flag::get(#"hash_26084cd78e266cef")) {
        if (isdefined(self.stub.related_parent.trigger)) {
            self.stub.related_parent.trigger setinvisibletoplayer(e_player);
        }
        self sethintstringforplayer(e_player, #"hash_72add1857947d73d");
        return true;
    }
    if (isdefined(self.stub.related_parent.trigger)) {
        self.stub.related_parent.trigger setvisibletoplayer(e_player);
    }
    return false;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x29f9e5c8, Offset: 0x12cc8
// Size: 0x154
function function_2ff3723() {
    self endon(#"death");
    while (true) {
        waitresult = self waittill(#"trigger");
        e_player = waitresult.activator;
        if (!zm_utility::can_use(e_player)) {
            continue;
        }
        if (level flag::get(#"hash_26084cd78e266cef")) {
            continue;
        }
        if (e_player flag::get(#"hash_60af29a70de37249")) {
            if (isdefined(e_player.var_92c68692)) {
                e_player.var_92c68692 unlink();
                e_player.var_92c68692 delete();
                e_player flag::clear(#"hash_60af29a70de37249");
                e_player thread function_e6c27476("off");
            }
            level notify(#"hash_4f9fb730136f0187");
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0x1ec75b35, Offset: 0x12e28
// Size: 0x26
function function_a7935e0c(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xbaddf9ca, Offset: 0x12e58
// Size: 0x2a4
function function_70647a4f(b_skipped) {
    if (b_skipped) {
        return;
    }
    level thread gestures::function_ba4529d4(#"hash_114ba314a93a4562");
    level flag::set(#"hash_43c360bf8cccea00");
    level flag::set(#"hash_3859c35d9b850962");
    level teleport_players(struct::get_array("mq_lab_start"));
    level namespace_4e8d47b1::function_671424c7();
    level thread namespace_99d0d95e::function_8f85d169(1);
    music::setmusicstate("step8");
    level clientfield::set("" + #"hash_2a93d12c263f2d68", 7);
    level util::delayed_notify("mid_igc_screen_fade_in_black", 4);
    level thread function_d8b93021();
    level thread function_410d4c29();
    level thread function_93dedb5a();
    level thread function_7def382e();
    zm_sq::function_266d66eb(#"hash_4ab92bb68f4c78c9", level.klaus, 1, #"hash_3258f0b2a8184c64");
    callback::on_spawned(&function_344ba078);
    foreach (e_player in function_a1ef346b()) {
        e_player thread function_344ba078();
    }
    level flag::wait_till(#"hash_152b0c9d34d5c670");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0xb9150385, Offset: 0x13108
// Size: 0x470
function function_24b3acaf(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        level flag::set(#"main_quest_completed");
        level flag::set(#"hash_152b0c9d34d5c670");
        level notify(#"mid_igc_screen_fade_in_black");
    }
    level flag::clear(#"hash_43c360bf8cccea00");
    playsoundatposition(#"hash_514c75434fb1dcc9", (0, 0, 0));
    music::setmusicstate("");
    level clientfield::set("" + #"hash_74c14ea3fcc781ea", 0);
    if (isdefined(level.klaus.var_dd562be5)) {
        level.klaus.var_dd562be5 unlink();
        level.klaus.var_dd562be5 delete();
    }
    if (isdefined(level.klaus)) {
        level.klaus deletedelay();
    }
    callback::remove_on_spawned(&function_344ba078);
    foreach (e_player in getplayers()) {
        e_player callback::function_52ac9652(#"on_player_killed", &function_83cfc66e);
        function_ccba157(e_player);
    }
    level zm_utility::function_9ad5aeb1(0, 1, 0, 0);
    var_78120e97 = gettime();
    level function_abb25db(0, (1, 1, 1));
    level thread function_542224cc(0.5, (1, 1, 1), "screen_fade_in_white");
    level thread function_abb25db(0.15, (1, 1, 1), "screen_fade_to_white2");
    level thread function_542224cc(0.5, (1, 1, 1), "screen_fade_in_white2");
    level thread function_abb25db(0.5, (0, 0, 0), "screen_fade_to_black");
    mdl_portal = getent("mdl_p9_zm_platinum_portal_ring", "targetname");
    mdl_portal setmodel(#"hash_17b16896250a05fb");
    level scene::init_streamer(#"hash_11627f7549c94890", getplayers(), 0, 0);
    n_current_time = gettime();
    var_88137784 = float(n_current_time - var_78120e97) / 1000;
    if (var_88137784 < 7) {
        n_waittime = 7 - var_88137784;
        wait(n_waittime);
    }
    level scene::play(#"hash_11627f7549c94890");
    level.musicsystemoverride = 0;
    wait(1.5);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x3d0a5a53, Offset: 0x13580
// Size: 0xdc
function function_7def382e() {
    level endon(#"hash_152b0c9d34d5c670", #"hash_87837a4e17308cf");
    if (isdefined(level.klaus)) {
        level.klaus endon(#"death");
        level.klaus zm_vo::function_d6f8bbd9(#"hash_2a6ce240a9384b54", 0.5, function_a1ef346b(), 1);
    }
    level thread function_9140a8ac();
    level thread function_bc989a73();
    level thread function_c68c360d();
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xb1e09dbd, Offset: 0x13668
// Size: 0x188
function function_9140a8ac() {
    level endon(#"hash_152b0c9d34d5c670", #"hash_87837a4e17308cf");
    if (isdefined(level.klaus)) {
        level.klaus endon(#"death");
    }
    var_6cdce953 = ["vox_zber_mq8_klsdmg_klau_0", "vox_zber_mq8_klsdmg_klau_1", "vox_zber_mq8_klsdmg_klau_2", "vox_zber_mq8_klsdmg_klau_3", "vox_zber_mq8_klsdmg_klau_4"];
    while (true) {
        if (isdefined(level.klaus)) {
            level.klaus waittill(#"damage");
            var_55902b27 = array::random(var_6cdce953);
            arrayremovevalue(var_6cdce953, var_55902b27);
            level.klaus zm_vo::function_d6f8bbd9(hash(var_55902b27), 1, function_a1ef346b(), 1);
            if (var_6cdce953.size == 0) {
                return;
            }
        }
        wait(randomintrange(10, 15));
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x60095a93, Offset: 0x137f8
// Size: 0x1c8
function function_bc989a73() {
    level endon(#"hash_152b0c9d34d5c670", #"hash_87837a4e17308cf");
    if (isdefined(level.klaus)) {
        level.klaus endon(#"death");
    }
    var_542514f1 = ["vox_zber_mq8_klsprox_klau_0", "vox_zber_mq8_klsprox_klau_1", "vox_zber_mq8_klsprox_klau_2", "vox_zber_mq8_klsprox_klau_3", "vox_zber_mq8_klsprox_klau_4"];
    while (true) {
        while (isdefined(level.klaus) && isdefined(arraygetclosest(level.klaus.origin, function_a1ef346b(), 600))) {
            wait(0.5);
        }
        if (isdefined(level.klaus)) {
            var_e1560eda = array::random(var_542514f1);
            arrayremovevalue(var_542514f1, var_e1560eda);
            level.klaus zm_vo::function_d6f8bbd9(hash(var_e1560eda), 0.5, function_a1ef346b(), 1);
            if (var_542514f1.size == 0) {
                return;
            }
        }
        wait(randomintrange(10, 15));
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x61c0214e, Offset: 0x139c8
// Size: 0x1a6
function function_c68c360d() {
    level endon(#"hash_152b0c9d34d5c670", #"hash_87837a4e17308cf");
    if (isdefined(level.klaus)) {
        level.klaus endon(#"death");
    }
    var_bc4fe56e = undefined;
    while (true) {
        if (isdefined(level.klaus)) {
            level.klaus waittill(#"damage");
            if (level.klaus.health <= int(600) && !is_true(var_bc4fe56e)) {
                level.klaus zm_vo::function_d6f8bbd9(#"hash_25fa25bd612b69ca", 0, function_a1ef346b(), 1);
                var_bc4fe56e = 1;
            }
            if (level.klaus.health <= int(120)) {
                level.klaus zm_vo::function_d6f8bbd9(#"hash_310270fe6eea35d1", 0, function_a1ef346b(), 1);
                break;
            }
            continue;
        }
        waitframe(1);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x856bf02d, Offset: 0x13b78
// Size: 0x94
function teleport_players(var_a347ab1) {
    a_players = getplayers();
    for (i = 0; i < a_players.size; i++) {
        a_players[i] setorigin(var_a347ab1[i].origin);
        a_players[i] setplayerangles(var_a347ab1[i].angles);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xc5a20a5a, Offset: 0x13c18
// Size: 0x52c
function function_d8b93021() {
    level endon(#"hash_152b0c9d34d5c670");
    s_start = struct::get("klaus_carry_start");
    if (!isdefined(level.klaus)) {
        level.klaus = spawnactor("spawner_zm_mannequin_ally_upgraded", s_start.origin, s_start.angles);
    }
    level.klaus endon(#"death");
    level notify(#"hash_56267ee0c41be1fb");
    level notify(#"hash_7c60044f6a90f7f5");
    level.klaus forceteleport(s_start.origin, s_start.angles);
    level.klaus.var_dd562be5 = util::spawn_model(#"hash_efe0606d844386f", level.klaus gettagorigin("tag_weapon_right"), level.klaus gettagangles("tag_weapon_right"));
    level.klaus.var_dd562be5 enablelinkto();
    level.klaus.var_dd562be5 linkto(level.klaus, "tag_weapon_right");
    level.klaus.var_dd562be5 util::delay(0.5, #"hash_152b0c9d34d5c670", &clientfield::set, "" + #"hash_6f292901e2fcaeb3", 2);
    level.klaus namespace_ca8676a3::function_8996b315(1);
    level.klaus namespace_ca8676a3::function_92157e49(getnode("klaus_portal_goal", "targetname").origin);
    level.klaus clientfield::set("" + #"hash_3e4641a9ea00d061", 0);
    level.klaus.health = 1200;
    level.klaus.var_ccefa6dd = 1;
    level.klaus.var_8dd8140a = 1;
    level.klaus zodcompanionutility::function_423c790b(50);
    zm_ai_utility::make_zombie_target(level.klaus);
    level.klaus thread function_e138ad4c();
    level flag::wait_till(#"hash_87837a4e17308cf");
    level thread zm_vo::function_d6f8bbd9(#"hash_3a1caa95aaa4c785", undefined, function_a1ef346b());
    level.klaus waittill(#"goal");
    zm_sq::objective_complete(#"hash_4ab92bb68f4c78c9", level.klaus);
    level flag::set(#"hash_43e4d81c59f34ca0");
    level.klaus thread scene::play(#"hash_2ead0ce56fa273d4", level.klaus);
    level.klaus thread zm_vo::function_d6f8bbd9(#"hash_1757508fafc04b57", 3, function_a1ef346b());
    var_70c0991d = 13;
    level util::delay(var_70c0991d - 5, "end_game", &flag::set, #"main_quest_completed");
    wait(var_70c0991d);
    level flag::clear(#"hash_43c360bf8cccea00");
    level zm_vo::function_7622cb70(#"hash_13a0617d003e207d");
    wait(0.5);
    level flag::set(#"hash_152b0c9d34d5c670");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xe5a3b26b, Offset: 0x14150
// Size: 0x118
function function_e138ad4c() {
    level endon(#"hash_152b0c9d34d5c670");
    self waittill(#"death");
    level zm_vo::function_d6f8bbd9(#"hash_5d3022a33f195274", undefined, function_a1ef346b());
    level function_abb25db(1, (0, 0, 0));
    wait(3);
    array::thread_all(getplayers(), &zm_utility::function_ee6da6f6);
    str_reason = #"hash_4e5756202af6ae94";
    level.winningteam = #"axis";
    level notify(#"end_game", {#reason:str_reason});
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xa0f1e8f4, Offset: 0x14270
// Size: 0x3d8
function function_410d4c29() {
    level endon(#"end_game", #"hash_152b0c9d34d5c670", #"hash_43e4d81c59f34ca0");
    wait(0.5);
    n_players = zm_utility::get_number_of_valid_players();
    a_s_spawns = struct::get_array("mq_lab_enemy_portal_spawns");
    n_round = level.round_number;
    if (n_round < 20) {
        n_round = 20;
    } else if (n_round > 50) {
        n_round = 50;
    }
    switch (n_players) {
    case 1:
    default:
        n_max_active_ai = 20;
        var_4db8ef67 = 0.5;
        var_78973c6e = 0.75;
        break;
    case 2:
        n_max_active_ai = 24;
        var_4db8ef67 = 0.5;
        var_78973c6e = 0.75;
        break;
    case 3:
        n_max_active_ai = 28;
        var_4db8ef67 = 0.5;
        var_78973c6e = 0.75;
        break;
    case 4:
        n_max_active_ai = 28;
        var_4db8ef67 = 0.5;
        var_78973c6e = 0.75;
        break;
    }
    while (true) {
        while (getaiarray("portal_enemy_ai", "targetname").size >= n_max_active_ai) {
            util::wait_network_frame();
            var_7f4f721c = 12;
        }
        if (isdefined(var_7f4f721c)) {
            wait(var_7f4f721c);
            var_7f4f721c = undefined;
        }
        ai_zombie = undefined;
        aitype = function_691f2d8();
        while (!isdefined(ai_zombie)) {
            s_spawn = array::random(a_s_spawns);
            ai_zombie = spawnactor(aitype, s_spawn.origin, s_spawn.angles, "portal_enemy_ai");
            waitframe(1);
        }
        ai_zombie.maxhealth = ai_zombie zm_ai_utility::function_b5fe98(n_round);
        ai_zombie.health = ai_zombie.maxhealth;
        if (ai_zombie.archetype === #"zombie") {
            ai_zombie thread function_fc14f4e7();
        }
        ai_zombie.var_126d7bef = 1;
        ai_zombie.ignore_round_spawn_failsafe = 1;
        ai_zombie.b_ignore_cleanup = 1;
        ai_zombie.ignore_enemy_count = 1;
        ai_zombie.no_powerups = 1;
        ai_zombie.zombie_move_speed = "super_sprint";
        ai_zombie.script_string = "find_flesh";
        ai_zombie.completed_emerging_into_playable_area = 1;
        ai_zombie.zombie_think_done = 1;
        ai_zombie pathmode("move allowed");
        wait(randomfloatrange(var_4db8ef67, var_78973c6e));
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x60746f0a, Offset: 0x14650
// Size: 0xc2
function function_fc14f4e7() {
    if (!isdefined(level.klaus)) {
        return;
    }
    level.klaus endon(#"death");
    self endon(#"death");
    while (true) {
        if (!isdefined(self.ignore_player)) {
            self.ignore_player = [];
        } else if (!isarray(self.ignore_player)) {
            self.ignore_player = array(self.ignore_player);
        }
        self.ignore_player[self.ignore_player.size] = level.klaus;
        waitframe(1);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x1826c1d8, Offset: 0x14720
// Size: 0xb2
function function_691f2d8() {
    var_87e4f82c = randomintrange(0, 100);
    if (var_87e4f82c <= 5) {
        if (math::cointoss()) {
            return level.zombie_spawners[3].aitype;
        } else {
            return level.zombie_spawners[2].aitype;
        }
    } else if (var_87e4f82c <= 30) {
        return #"hash_51edd7595ecda822";
    }
    return level.zombie_spawners[6].aitype;
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xd82548e3, Offset: 0x147e0
// Size: 0x398
function function_93dedb5a() {
    level endon(#"end_game", #"hash_152b0c9d34d5c670", #"hash_87837a4e17308cf");
    wait(1);
    n_players = zm_utility::get_number_of_valid_players();
    a_s_spawns = struct::get_array("mq_lab_enemy_portal_spawns");
    n_round = level.round_number;
    if (n_round < 20) {
        n_round = 20;
    } else if (n_round > 50) {
        n_round = 50;
    }
    switch (n_players) {
    case 1:
    default:
        n_max_active_ai = 3;
        var_4db8ef67 = 10;
        var_78973c6e = 15;
        break;
    case 2:
        n_max_active_ai = 4;
        var_4db8ef67 = 10;
        var_78973c6e = 15;
        break;
    case 3:
        n_max_active_ai = 5;
        var_4db8ef67 = 5;
        var_78973c6e = 10;
        break;
    case 4:
        n_max_active_ai = 6;
        var_4db8ef67 = 5;
        var_78973c6e = 10;
        break;
    }
    while (true) {
        while (getaiarray("portal_boss_ai", "targetname").size >= n_max_active_ai) {
            util::wait_network_frame();
            var_7f4f721c = 25;
        }
        if (isdefined(var_7f4f721c)) {
            wait(var_7f4f721c);
            var_7f4f721c = undefined;
        }
        ai_boss = undefined;
        ai_type = function_e5c625d2();
        s_spawn = array::random(a_s_spawns);
        while (!isdefined(ai_boss)) {
            ai_boss = spawnactor(ai_type, s_spawn.origin, s_spawn.angles, "portal_boss_ai", 1);
            waitframe(1);
        }
        ai_boss.maxhealth = ai_boss zm_ai_utility::function_b5fe98(n_round);
        ai_boss.health = ai_boss.maxhealth;
        ai_boss thread function_fc14f4e7();
        ai_boss.var_126d7bef = 1;
        ai_boss.ignore_round_spawn_failsafe = 1;
        ai_boss.b_ignore_cleanup = 1;
        ai_boss.ignore_enemy_count = 1;
        ai_boss.no_powerups = 1;
        ai_boss.zombie_move_speed = "sprint";
        ai_boss.script_string = "find_flesh";
        ai_boss.completed_emerging_into_playable_area = 1;
        ai_boss.zombie_think_done = 1;
        ai_boss pathmode("move allowed");
        wait(randomfloatrange(var_4db8ef67, var_78973c6e));
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x55143335, Offset: 0x14b80
// Size: 0x74
function function_e5c625d2() {
    var_a0ac4011 = randomintrange(0, 100);
    if (var_a0ac4011 <= 20) {
        return #"spawner_bo5_avogadro_sr";
    }
    if (var_a0ac4011 <= 70) {
        return #"spawner_bo5_mimic";
    }
    return #"hash_4f87aa2a203d37d0";
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x7a0bd168, Offset: 0x14c00
// Size: 0xa4
function function_ccba157(e_player) {
    if (!isdefined(e_player)) {
        return;
    }
    e_player flag::clear(#"hash_7809ecc7ae4958ad");
    e_player stopgestureviewmodel(#"hash_114ba314a93a4562");
    e_player val::reset_all(#"hash_c2f6751024324b7");
    e_player clientfield::set_to_player("" + #"hash_c2f6751024324b7", 0);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x7b59b6e8, Offset: 0x14cb0
// Size: 0x71e
function function_344ba078() {
    self notify("6f993ff249cf4a01");
    self endon("6f993ff249cf4a01");
    level endon(#"end_game", #"hash_152b0c9d34d5c670");
    self endon(#"death");
    if (level flag::get(#"hash_152b0c9d34d5c670")) {
        return;
    }
    self callback::function_d8abfc3d(#"on_player_killed", &function_83cfc66e);
    v_center = getnode("klaus_portal_goal", "targetname").origin;
    if (isdefined(v_center)) {
        var_98a0df1b = 0;
        var_c0b3e4d = 0;
        var_2a0b588a = 0;
        while (true) {
            n_dist = distance2dsquared(self.origin, v_center);
            n_tier = 0;
            if (n_dist <= sqr(350)) {
                n_tier = 3;
            } else if (n_dist <= sqr(650)) {
                n_tier = 2;
            } else if (n_dist <= sqr(850)) {
                n_tier = 1;
            }
            var_58a7d990 = self math::get_dot_forward(v_center, 1) > 0;
            if (var_58a7d990 && n_tier >= 1) {
                if (!var_98a0df1b) {
                    var_98a0df1b = 1;
                    self val::set(#"hash_c2f6751024324b7", "allow_sprint", 0);
                }
            } else if (var_98a0df1b) {
                var_98a0df1b = 0;
                self val::reset(#"hash_c2f6751024324b7", "allow_sprint");
            }
            var_35f9203c = 0;
            if (self isfiring() || self isreloading() || !self gestures::function_8cc27b6d(#"hash_114ba314a93a4562")) {
                self flag::set(#"hash_7809ecc7ae4958ad");
                self thread function_dc06f324();
            } else if (!self flag::get(#"hash_7809ecc7ae4958ad") && var_58a7d990 && n_tier >= 2) {
                var_35f9203c = 1;
                if (!self isgestureplaying(#"hash_114ba314a93a4562")) {
                    self playgestureviewmodel(#"hash_114ba314a93a4562");
                }
            }
            if (!var_35f9203c && self isgestureplaying(#"hash_114ba314a93a4562")) {
                self stopgestureviewmodel(#"hash_114ba314a93a4562");
            }
            var_61c960ef = 0;
            if (var_58a7d990 && n_tier > 0) {
                var_61c960ef = 1;
                if (var_c0b3e4d != n_tier) {
                    var_c0b3e4d = n_tier;
                    self val::reset(#"hash_c2f6751024324b7", "move_speed_scale");
                    switch (var_c0b3e4d) {
                    case 1:
                        self val::set(#"hash_c2f6751024324b7", "move_speed_scale", 0.75);
                        break;
                    case 2:
                        self val::set(#"hash_c2f6751024324b7", "move_speed_scale", 0.5);
                        break;
                    case 3:
                        self val::set(#"hash_c2f6751024324b7", "move_speed_scale", 0.25);
                        break;
                    }
                }
            }
            if (!var_61c960ef && var_c0b3e4d != 0) {
                var_c0b3e4d = 0;
                self val::reset(#"hash_c2f6751024324b7", "move_speed_scale");
            }
            b_rumble = 0;
            if (n_tier > 0) {
                b_rumble = 1;
                if (var_2a0b588a != n_tier) {
                    var_2a0b588a = n_tier;
                    switch (var_2a0b588a) {
                    case 1:
                        self clientfield::set_to_player("" + #"hash_c2f6751024324b7", 1);
                        break;
                    case 2:
                        self clientfield::set_to_player("" + #"hash_c2f6751024324b7", 2);
                        break;
                    case 3:
                        self clientfield::set_to_player("" + #"hash_c2f6751024324b7", 3);
                        break;
                    }
                }
            }
            if (!b_rumble && var_2a0b588a != 0) {
                var_2a0b588a = 0;
                self clientfield::set_to_player("" + #"hash_c2f6751024324b7", 0);
            }
            waitframe(1);
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x1e06ba7d, Offset: 0x153d8
// Size: 0x54
function function_dc06f324() {
    self notify("4181e0c89c879cae");
    self endon("4181e0c89c879cae");
    self endon(#"death");
    wait(2);
    self flag::clear(#"hash_7809ecc7ae4958ad");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0xa530b5fd, Offset: 0x15438
// Size: 0x54
function function_83cfc66e(*s_params) {
    self callback::function_52ac9652(#"on_player_killed", &function_83cfc66e);
    function_ccba157(self);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x9d79bf1d, Offset: 0x15498
// Size: 0x39c
function on_item_pickup(params) {
    item = params.item;
    if (isplayer(self)) {
        if (isdefined(item.itementry.name)) {
            switch (item.itementry.name) {
            case #"item_zmquest_platinum_rico_card":
                level flag::set(#"hash_40ce269b267d7a50");
                array::thread_all(getplayers(), &zm_intel::collect_intel, #"zmintel_platinum_requiem_artifact_04");
                break;
            case #"item_zmquest_platinum_nuke_warhead":
                level zm_ui_inventory::function_7df6bb60(#"hash_37b4a47a5369363", 1);
                array::thread_all(getplayers(), &zm_intel::collect_intel, #"zmintel_platinum_requiem_artifact_03");
                level flag::set(#"hash_7e548bf90d76ee5e");
                break;
            case #"item_zmquest_platinum_helm_component_antenna":
                level zm_ui_inventory::function_7df6bb60(#"hash_173db580493ec8a", 1);
                zm_items::player_pick_up(self, zm_crafting::get_component("zitem_platinum_klaus_helm_part_1_zm"));
                level flag::set(#"hash_626f1d4ed92a66d9");
                break;
            case #"item_zmquest_platinum_helm_component_board":
                level zm_ui_inventory::function_7df6bb60(#"hash_4749f9e54d740283", 1);
                zm_items::player_pick_up(self, zm_crafting::get_component("zitem_platinum_klaus_helm_part_2_zm"));
                level flag::set(#"hash_626f1d4ed92a66d9");
                break;
            case #"item_zmquest_platinum_helm_component_transistor":
                level zm_ui_inventory::function_7df6bb60(#"hash_405c5ffdf1a21f59", 1);
                zm_items::player_pick_up(self, zm_crafting::get_component("zitem_platinum_klaus_helm_part_3_zm"));
                level flag::set(#"hash_626f1d4ed92a66d9");
                break;
            case #"item_zmintel_platinum_omega_artifact_1":
                array::thread_all(getplayers(), &zm_intel::collect_intel, #"zmintel_platinum_omega_artifact_02");
                break;
            default:
                return;
            }
            level thread popups::function_87604884(#"hash_4cacf78219f8fca", self, self.team, item.itementry.displayname);
        }
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x8f6a1e60, Offset: 0x15840
// Size: 0x10c
function function_cfd1ef61(*a_ents) {
    level flag::clear(#"hash_69bc64a0ea76c1b9");
    level thread hide_scene_models();
    level thread function_db84b4f4();
    level thread function_7471f4db();
    level thread function_b07a00f4();
    level thread zm_platinum::function_4af68b();
    level clientfield::set("" + #"hash_763dd8035e80f7c", 1);
    level thread namespace_99d0d95e::function_8f85d169(1);
    music::setmusicstate("cin_outro");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 1, eflags: 0x2 linked
// Checksum 0x59a2765b, Offset: 0x15958
// Size: 0x3c
function function_872c860c(*a_ents) {
    level clientfield::set("" + #"hash_763dd8035e80f7c", 0);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 2, eflags: 0x2 linked
// Checksum 0xec41f96e, Offset: 0x159a0
// Size: 0xd0
function function_3d64af06(*a_ents, b_hide = 1) {
    foreach (player in getplayers()) {
        if (b_hide) {
            player ghost();
            continue;
        }
        player show();
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0xd7aff6ad, Offset: 0x15a78
// Size: 0x5c
function function_b07a00f4() {
    level scene::init(#"hash_277fbf33b8478437");
    level waittill(#"hash_3aa0c9da6eeb2ac8");
    level scene::play(#"hash_277fbf33b8478437");
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x2c462365, Offset: 0x15ae0
// Size: 0xbc
function hide_scene_models() {
    hidemiscmodels("hide_scene_models");
    hidemiscmodels("hide_mid_scene_models");
    a_script_models = getentarray("hide_scene_models", "targetname");
    var_21e76d02 = getentarray("hide_scene_models", "script_noteworthy");
    a_script_models = arraycombine(a_script_models, var_21e76d02);
    array::run_all(a_script_models, &hide);
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x53a5349c, Offset: 0x15ba8
// Size: 0xf8
function function_db84b4f4() {
    zombie_doors = getentarray("zombie_door", "targetname");
    players = getplayers();
    for (i = 0; i < zombie_doors.size; i++) {
        if (!is_true(zombie_doors[i].has_been_opened)) {
            zombie_doors[i] notify(#"trigger", {#activator:players[0]});
        }
        if (is_true(zombie_doors[i].power_door_ignore_flag_wait)) {
            zombie_doors[i] notify(#"power_on");
        }
        waitframe(1);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 0, eflags: 0x2 linked
// Checksum 0x4190825, Offset: 0x15ca8
// Size: 0xc8
function function_7471f4db() {
    level notify(#"hash_31a61be99d69708a");
    foreach (player in getplayers()) {
        player clientfield::set("" + #"hash_63af42145e260fb5", 0);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 3, eflags: 0x2 linked
// Checksum 0xfa605fef, Offset: 0x15d78
// Size: 0x178
function function_abb25db(n_time, n_color = (0, 0, 0), str_waittill) {
    if (isdefined(str_waittill)) {
        level waittill(str_waittill);
    }
    foreach (player in getplayers()) {
        player thread lui::screen_fade_out(n_time, n_color);
        player val::set(#"hash_6378ea83b88b4f36", "takedamage", 0);
        player val::set(#"hash_6378ea83b88b4f36", "freezecontrols", 1);
        player val::set(#"hash_6378ea83b88b4f36", "show_crosshair", 0);
        player val::set(#"hash_6378ea83b88b4f36", "show_weapon_hud", 0);
    }
}

// Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
// Params 4, eflags: 0x2 linked
// Checksum 0xe3334119, Offset: 0x15ef8
// Size: 0x190
function function_542224cc(n_time, n_color = (0, 0, 0), str_waittill, var_e9a0b654) {
    if (isdefined(str_waittill)) {
        level waittill(str_waittill);
    }
    foreach (player in getplayers()) {
        player thread lui::screen_fade_in(n_time, n_color);
        if (is_true(var_e9a0b654)) {
            player val::reset(#"hash_6378ea83b88b4f36", "takedamage");
            player val::reset(#"hash_6378ea83b88b4f36", "freezecontrols");
            player val::reset(#"hash_6378ea83b88b4f36", "show_crosshair");
            player val::reset(#"hash_6378ea83b88b4f36", "show_weapon_hud");
        }
    }
}

/#

    // Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
    // Params 0, eflags: 0x0
    // Checksum 0xe7bc462, Offset: 0x16090
    // Size: 0xec
    function function_cd7a3de4() {
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&cmd);
    }

    // Namespace namespace_1fc8f2e3/namespace_1fc8f2e3
    // Params 1, eflags: 0x0
    // Checksum 0xab4cdd98, Offset: 0x16188
    // Size: 0x5f2
    function cmd(cmd) {
        switch (cmd) {
        case #"hash_738c5e6d53b6b2c5":
            if (!isdefined(level.var_48d07d1f.var_ec0d861e[#"train"])) {
                if (isdefined(level.klaus)) {
                    level.klaus zodcompanionutility::function_fc67b7ed(&function_e97a3826);
                }
                scene::add_scene_func(#"hash_73a873b0f9cd0894", &function_41ae49d5, "<unknown string>");
                level thread function_c015b2c1(45, 1);
                break;
            }
        case #"hash_20bb7f03866471ed":
            var_8841c4a7 = getent("<unknown string>", "<unknown string>");
            level clientfield::set("<unknown string>" + #"hash_42e33e65c5c15242", 1);
            if (isdefined(var_8841c4a7)) {
                var_8841c4a7 thread scene::play("<unknown string>", "<unknown string>", var_8841c4a7);
            }
            break;
        case #"hash_42d9625a4f272463":
            foreach (player in function_a1ef346b()) {
                player thread function_1bba593c(undefined, 1);
            }
            break;
        case #"hash_404ab756594b28c4":
            foreach (player in function_a1ef346b()) {
                player notify(#"hash_7f73ee803b60b7aa");
            }
            break;
        case #"test_vo":
            level zm_vo::function_7622cb70("<unknown string>");
            break;
        case #"hash_7f88d25958b36eb5":
            level zm_ui_inventory::function_7df6bb60(#"hash_173db580493ec8a", 1);
            foreach (player in getplayers()) {
                zm_items::player_pick_up(player, zm_crafting::get_component("<unknown string>"));
            }
            level flag::set(#"hash_626f1d4ed92a66d9");
            break;
        case #"hash_7cfe666e51ef7eea":
            level zm_ui_inventory::function_7df6bb60(#"hash_4749f9e54d740283", 1);
            foreach (player in getplayers()) {
                zm_items::player_pick_up(player, zm_crafting::get_component("<unknown string>"));
            }
            level flag::set(#"hash_626f1d4ed92a66d9");
            break;
        case #"hash_744b2d417a70e285":
            level zm_ui_inventory::function_7df6bb60(#"hash_405c5ffdf1a21f59", 1);
            foreach (player in getplayers()) {
                zm_items::player_pick_up(player, zm_crafting::get_component("<unknown string>"));
            }
            level flag::set(#"hash_626f1d4ed92a66d9");
            break;
        }
    }

#/
