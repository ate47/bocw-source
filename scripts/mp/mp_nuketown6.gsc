// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\oob.gsc;
#using scripts\core_common\load_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\compass.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace mp_nuketown6;

// Namespace mp_nuketown6/level_init
// Params 1, eflags: 0x20
// Checksum 0x637a9fe1, Offset: 0x3b0
// Size: 0x23c
function event_handler[level_init] main(*eventstruct) {
    callback::on_start_gametype(&start_gametype);
    callback::on_spawned(&on_player_spawned);
    callback::function_acaac19b(&on_player_spawned);
    init_clientfields();
    level thread function_b02d88a3();
    level thread function_a6101b7();
    level thread function_21acba11();
    level thread function_29584e41();
    load::main();
    function_c6c7166a();
    compass::setupminimap("");
    spawncollision("collision_clip_wall_64x64x10", "collider", (-729, 643, -36), (0, 340, -90));
    trigger = spawn("trigger_radius_out_of_bounds", (-735, 1592, -50), 0, 200, 200);
    trigger thread oob::run_oob_trigger();
    if (getdvarint(#"hash_435b3a7c7c2f2c07", 0)) {
        game.musicset = "_nth";
        level.var_ccf67f32 = &function_161cff4d;
        function_96baa49();
        return;
    }
    e_clip = getent("jack_in_box_1_clip", "targetname");
    e_clip delete();
}

// Namespace mp_nuketown6/mp_nuketown6
// Params 0, eflags: 0x2 linked
// Checksum 0xe70f6755, Offset: 0x5f8
// Size: 0x7c
function on_player_spawned() {
    player = self;
    if (getdvarint(#"hash_269852f320baca83", 0) || getdvarint(#"hash_435b3a7c7c2f2c07", 0)) {
        player util::set_lighting_state(1);
    }
}

// Namespace mp_nuketown6/mp_nuketown6
// Params 0, eflags: 0x2 linked
// Checksum 0x51b91031, Offset: 0x680
// Size: 0x44
function init_clientfields() {
    clientfield::register("toplayer", "" + #"hash_802934d416ac981", 1, 1, "int");
}

// Namespace mp_nuketown6/mp_nuketown6
// Params 0, eflags: 0x2 linked
// Checksum 0x37b67196, Offset: 0x6d0
// Size: 0xcc
function function_c6c7166a() {
    if (util::get_game_type() !== "dropkick" && getdvarint(#"hash_774f95460ca50d49", 1) && !getdvarint(#"hash_269852f320baca83", 0) && !getdvarint(#"hash_435b3a7c7c2f2c07", 0)) {
        level.end_game_video = hash("MP_NUKETOWN6_ENDGAME_MOVIE");
        level.var_48ea0e8c = 8;
    }
}

// Namespace mp_nuketown6/mp_nuketown6
// Params 0, eflags: 0x2 linked
// Checksum 0xa5d08690, Offset: 0x7a8
// Size: 0xf4
function function_b02d88a3() {
    var_76bdb3ae = strtok("dom dom10v10 war war12v12 sd control dropkick vip sd_hc dom_hc control_hc", " ");
    gametype = util::get_game_type();
    if (!isinarray(var_76bdb3ae, gametype)) {
        hidemiscmodels("dom_bounds");
        array::delete_all(getentarray("dom_bounds", "targetname"));
        return;
    }
    array::run_all(getentarray("dom_bounds", "targetname"), &disconnectpaths, undefined, 0);
}

// Namespace mp_nuketown6/mp_nuketown6
// Params 0, eflags: 0x2 linked
// Checksum 0x64f2bee5, Offset: 0x8a8
// Size: 0x2ec
function function_a6101b7() {
    if (getdvarint(#"hash_269852f320baca83", 0)) {
        level flag::wait_till("first_player_spawned");
        util::set_lighting_state(1);
        exploder::exploder("fxexp_holiday");
        if (util::get_game_type() === #"zonslaught") {
            hidemiscmodels("nt6_xmas_props_no_zm");
            array::delete_all(getentarray("nt6_xmas_props_no_zm", "targetname"));
        }
        return;
    } else if (getdvarint(#"hash_435b3a7c7c2f2c07", 0)) {
        level flag::wait_till("first_player_spawned");
        util::set_lighting_state(1);
        exploder::exploder("fxexp_halloween");
        if (util::get_game_type() === #"zonslaught") {
            hidemiscmodels("nt6_halloween_props_no_zm");
            array::delete_all(getentarray("nt6_halloween_props_no_zm", "targetname"));
        }
        return;
    }
    hidemiscmodels("nt6_xmas_props");
    hidemiscmodels("nt6_xmas_props_no_zm");
    array::delete_all(getentarray("nt6_xmas_props", "targetname"));
    array::delete_all(getentarray("nt6_xmas_props_no_zm", "targetname"));
    hidemiscmodels("nt6_halloween_props");
    hidemiscmodels("nt6_halloween_props_no_zm");
    array::delete_all(getentarray("nt6_halloween_props", "targetname"));
    array::delete_all(getentarray("nt6_halloween_props_no_zm", "targetname"));
}

// Namespace mp_nuketown6/mp_nuketown6
// Params 0, eflags: 0x2 linked
// Checksum 0xdca2d179, Offset: 0xba0
// Size: 0x9c
function function_21acba11() {
    if (util::get_game_type() !== #"zonslaught" && util::get_game_type() !== #"hash_321225a5ce1eb35") {
        hidemiscmodels("nt6_onslaught_props");
        array::delete_all(getentarray("nt6_onslaught_props", "targetname"));
    }
}

// Namespace mp_nuketown6/mp_nuketown6
// Params 0, eflags: 0x2 linked
// Checksum 0x3d07a1dc, Offset: 0xc48
// Size: 0x170
function function_29584e41() {
    level flag::wait_till(#"item_world_reset");
    if (util::get_game_type() !== #"spy") {
        var_94c44cac = getdynentarray("spy_special_weapon_stash");
        var_de285f77 = getdynentarray("spy_ammo_stash");
        var_ffd6a2d3 = getdynentarray("spy_equipment_stash");
        var_3c1644b6 = arraycombine(var_94c44cac, var_de285f77);
        var_3c1644b6 = arraycombine(var_3c1644b6, var_ffd6a2d3);
        foreach (dynent in var_3c1644b6) {
            function_e2a06860(dynent, 3);
        }
    }
}

// Namespace mp_nuketown6/mp_nuketown6
// Params 1, eflags: 0x2 linked
// Checksum 0xc555198e, Offset: 0xdc0
// Size: 0x1ac
function function_161cff4d(opener) {
    if (getdvarint(#"hash_1a876fc5ed53b321", 1) == 1) {
        n_random = randomint(100);
        if (n_random > 6) {
            return;
        }
    }
    var_1abb653e = anglestoright(self.angles);
    var_84398427 = vectornormalize(opener.origin - self.origin);
    var_a6336ae5 = vectordot(var_1abb653e, var_84398427);
    var_23a90bc3 = opener getplayerangles();
    var_e920c899 = anglestoforward(var_23a90bc3);
    var_4cf1d42e = vectornormalize(self.origin - opener.origin);
    var_4cf02165 = vectordot(var_e920c899, var_4cf1d42e);
    if (var_a6336ae5 < -0.76 && var_4cf02165 > 0.76) {
        function_dc41f225(opener);
    }
}

// Namespace mp_nuketown6/mp_nuketown6
// Params 1, eflags: 0x2 linked
// Checksum 0xfa27df05, Offset: 0xf78
// Size: 0x464
function function_dc41f225(player) {
    level endon(#"hash_3c62d3b6b67922c0");
    level notify(#"hash_27e412fb2665725e");
    var_6a798feb = player.origin + anglestoforward(player.angles) * 45;
    v_to_player = player.origin - var_6a798feb;
    v_angles = vectortoangles(v_to_player);
    var_b7c784c2 = util::spawn_model("tag_origin", var_6a798feb, v_angles);
    var_b7c784c2 enablelinkto();
    var_b7c784c2 linkto(player);
    player setstance("stand");
    v_player_angles = player getplayerangles();
    if (v_player_angles[0] > 10) {
        v_player_angles = (10, v_player_angles[1], v_player_angles[2]);
    } else if (v_player_angles[0] < 10) {
        v_player_angles = (-10, v_player_angles[1], v_player_angles[2]);
    }
    player setplayerangles(v_player_angles);
    player capturnrate(1, 0);
    player thread function_93a73f43();
    player playsound(#"hash_212f200772bcb450");
    scene::add_scene_func("p9_fxanim_zm_grab_attack", &function_bea256c, "bite");
    var_b7c784c2 thread scene::play("p9_fxanim_zm_grab_attack", "bite");
    var_56009dae = getanimlength("ai_t9_zm_ghoul_box_scare");
    if (animhasnotetrack("ai_t9_zm_ghoul_box_scare", "start_scale")) {
        time = getnotetracktimes("ai_t9_zm_ghoul_box_scare", "start_scale")[0];
        wait_time = var_56009dae * time;
        n_time = var_56009dae - wait_time;
        wait(wait_time);
    }
    if (isdefined(player)) {
        player flag::set("grab_done");
        player capturnrate(0, 0);
        player clientfield::set_to_player("" + #"hash_802934d416ac981", 0);
    }
    n_scale = 1;
    var_ee107645 = 1 / n_time / float(function_60d95f53()) / 1000;
    while (n_scale > 0) {
        if (isdefined(level.var_578f8cf3)) {
            level.var_578f8cf3 setscale(n_scale);
        }
        wait(float(function_60d95f53()) / 1000);
        n_scale -= var_ee107645;
    }
    wait(0.1);
    var_b7c784c2 scene::delete_scene_spawned_ents("p9_fxanim_zm_grab_attack");
}

// Namespace mp_nuketown6/mp_nuketown6
// Params 1, eflags: 0x2 linked
// Checksum 0xf6375ba5, Offset: 0x13e8
// Size: 0x28
function function_bea256c(a_ents) {
    level.var_578f8cf3 = a_ents[#"zombie_bite"];
}

// Namespace mp_nuketown6/mp_nuketown6
// Params 0, eflags: 0x2 linked
// Checksum 0x72e7d160, Offset: 0x1418
// Size: 0x178
function function_93a73f43() {
    level endon(#"hash_3c62d3b6b67922c0");
    player = self;
    player endon(#"death", #"grab_done");
    player clientfield::set_to_player("" + #"hash_802934d416ac981", 1);
    wait(1);
    while (true) {
        player viewkick(10, player.origin + anglestoforward(player.angles + (0, randomintrange(90, 270), 0)));
        screenshake(player.origin, 4, 0, 2, 0.66, 0, 0.66, 0, 10, 0, 20, 2, player);
        player function_bc82f900("damage_heavy");
        wait(randomfloatrange(0.3, 0.5));
    }
}

// Namespace mp_nuketown6/mp_nuketown6
// Params 0, eflags: 0x2 linked
// Checksum 0x5c0f28ef, Offset: 0x1598
// Size: 0x44
function function_96baa49() {
    for (i = 1; i <= 2; i++) {
        level thread function_98341f7d(i);
    }
}

// Namespace mp_nuketown6/mp_nuketown6
// Params 1, eflags: 0x2 linked
// Checksum 0xe820a8a, Offset: 0x15e8
// Size: 0x100
function function_98341f7d(n_index) {
    var_d238f3be = struct::get("jump_scare_skeleton_box_0" + n_index, "targetname");
    var_d238f3be scene::init();
    var_b1d0b377 = spawn("trigger_radius", var_d238f3be.origin, 0, 64, 88);
    var_b1d0b377.var_d238f3be = var_d238f3be;
    while (isdefined(var_b1d0b377)) {
        var_10d5f200 = var_b1d0b377 waittill(#"trigger");
        var_b1d0b377 function_50485659(var_10d5f200);
        wait(0.05);
    }
}

// Namespace mp_nuketown6/mp_nuketown6
// Params 1, eflags: 0x2 linked
// Checksum 0xaacae435, Offset: 0x16f0
// Size: 0x1c4
function function_50485659(var_10d5f200) {
    player = var_10d5f200.activator;
    player endon(#"disconnect");
    var_84c3c19d = anglestoright(self.var_d238f3be.angles);
    var_c2b2b58d = vectornormalize(player.origin - self.var_d238f3be.origin);
    var_7eac4a0b = vectordot(var_84c3c19d, var_c2b2b58d);
    v_player_angles = player getplayerangles();
    var_de09d1fc = anglestoforward(v_player_angles);
    v_eye = player geteye();
    var_81c7d7ca = vectornormalize(self.var_d238f3be.origin - v_eye);
    var_9fa2a0a0 = vectordot(var_de09d1fc, var_81c7d7ca);
    if (var_7eac4a0b < -0.5 && var_9fa2a0a0 > 0.76) {
        self.var_d238f3be scene::play();
        self delete();
    }
}

// Namespace mp_nuketown6/mp_nuketown6
// Params 0, eflags: 0x2 linked
// Checksum 0x8609c8cc, Offset: 0x18c0
// Size: 0x9c
function start_gametype() {
    waittillframeend();
    if (!isdefined(level.var_57662894)) {
        level.var_57662894 = getgametypesetting(#"hash_5183877c20675325") === 1;
    }
    if (getdvarint(#"hash_435b3a7c7c2f2c07", 0) && level.var_57662894) {
        if (challenges::canprocesschallenges()) {
            level.var_a845ba28 = &function_ca471f27;
        }
    }
}

// Namespace mp_nuketown6/mp_nuketown6
// Params 1, eflags: 0x2 linked
// Checksum 0xabea7d33, Offset: 0x1968
// Size: 0x64
function function_ca471f27(data) {
    if (!isplayer(data.attacker)) {
        return;
    }
    data.attacker stats::function_bcf9602(#"hash_513bce963a91dd34", 1, #"hash_735ace6b22542a65");
}

