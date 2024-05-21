// Atian COD Tools GSC CW decompiler test
#using script_3711e526ec2a3863;
#using script_25b0725f0d26dbf5;
#using scripts\cp\cp_nam_armada.gsc;
#using scripts\cp_common\gametypes\battlechatter.gsc;
#using script_52da18c20f45c56a;
#using script_3626f1b2cf51a99c;
#using scripts\cp_common\util.gsc;
#using scripts\cp_common\objectives.gsc;
#using scripts\cp_common\snd.gsc;
#using scripts\cp_common\spawn_manager.gsc;
#using scripts\cp_common\skipto.gsc;
#using script_4937c6974f43bb71;
#using scripts\cp_common\dialogue.gsc;
#using script_7475f917e6d3bed9;
#using script_32399001bdb550da;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace armada_crash;

// Namespace armada_crash/namespace_5243a812
// Params 2, eflags: 0x2 linked
// Checksum 0xa497dc44, Offset: 0x678
// Size: 0x2d4
function function_945def6e(var_d3440450, var_50cc0d4f) {
    level function_7b315e60();
    level clientfield::set("" + #"hash_16a1381cc22da440", 1);
    level battlechatter::function_2ab9360b(0);
    level flag::set("flag_vo_crash_rpg");
    if (isdefined(level.var_7466d419.var_6bbdd0a5)) {
        level.var_7466d419.var_6bbdd0a5 delete();
    }
    if (is_true(var_50cc0d4f)) {
        namespace_82bfe441::fade(1, "FadeSlow");
    }
    a_ents = [];
    if (isdefined(level.pilot)) {
        a_ents[#"pilot"] = level.pilot;
    }
    if (isdefined(level.copilot)) {
        a_ents[#"copilot"] = level.copilot;
    }
    if (isdefined(level.buddy)) {
        a_ents[#"buddy"] = level.buddy;
    }
    if (isdefined(level.vip)) {
        a_ents[#"vip"] = level.vip;
    }
    if (isdefined(level.gunner)) {
        a_ents[#"gunner"] = level.gunner;
    }
    objectives::scripted(#"hash_6563948c4dd63c97", undefined, #"hash_ac851f5cde226a9");
    if (var_50cc0d4f) {
        level thread namespace_722cc932::function_dda1c23b(1);
    }
    a_ents[#"hash_4972abe0166bbc73"] = level.var_7466d419;
    level scene::play(#"armada_crash_start", a_ents);
    objectives::complete(#"hash_6563948c4dd63c97");
    skipto::function_4e3ab877(var_d3440450);
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0x3050d68f, Offset: 0x958
// Size: 0x3c
function function_7b315e60() {
    scene::add_scene_func(#"armada_crash_start", &function_b8cf916c, "play");
}

// Namespace armada_crash/namespace_5243a812
// Params 1, eflags: 0x2 linked
// Checksum 0x85c71be8, Offset: 0x9a0
// Size: 0xec
function function_b8cf916c(a_ents) {
    if (isdefined(a_ents[#"vehicle 1"]) && isdefined(a_ents[#"vehicle 2"])) {
        streamermodelhint(a_ents[#"vehicle 1"].model, 30);
        streamermodelhint(a_ents[#"vehicle 2"].model, 30);
        a_ents[#"vehicle 1"] sethighdetail(1);
        a_ents[#"vehicle 2"] sethighdetail(1);
    }
}

// Namespace armada_crash/namespace_5243a812
// Params 4, eflags: 0x2 linked
// Checksum 0x7e103ff6, Offset: 0xa98
// Size: 0x214
function function_9eecfef5(*name, starting, *direct, *player) {
    namespace_722cc932::function_208489a2();
    namespace_722cc932::function_6829238d(0);
    if (isdefined(level.vip)) {
        level.vip val::reset(#"hash_3bb822ac59ad80", "take_weapons");
    }
    if (isdefined(level.buddy)) {
        level.buddy val::reset(#"hash_3bb822ac59ad80", "take_weapons");
    }
    level clientfield::set("" + #"hash_4ee03d623b77b0c2", 0);
    level clientfield::set("" + #"hash_16a1381cc22da440", 0);
    level clientfield::set("toggle_gameplay_character_visibility", 2);
    level thread function_6ac5ef82();
    if (isdefined(level.vip)) {
        level.vip util::stop_magic_bullet_shield();
        level.vip delete();
    }
    namespace_b7cfe907::function_f305c075();
    namespace_b7cfe907::function_882e6973(0, undefined, 1, 0);
    if (player) {
        namespace_b7cfe907::function_ed68628c(0, undefined, 1);
    }
    function_a337b00e();
    function_c1b1ec5e();
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0x64107713, Offset: 0xcb8
// Size: 0x144
function function_6ac5ef82() {
    level flag::wait_till(#"all_players_spawned");
    level.player setmovespeedscale(0.6);
    level.player val::set(#"hash_296522f55a840af7", "allow_sprint", 0);
    level clientfield::set("" + #"hash_7dc38a630ed68eb3", 1);
    level waittill(#"hash_73a21eed3846c3a9");
    level.player setmovespeedscale(1);
    level.player val::reset(#"hash_296522f55a840af7", "allow_sprint");
    level clientfield::set("" + #"hash_7dc38a630ed68eb3", 0);
}

// Namespace armada_crash/namespace_5243a812
// Params 2, eflags: 0x2 linked
// Checksum 0x60b59bfa, Offset: 0xe08
// Size: 0x5a4
function function_58ef8b05(*str_objective, var_50cc0d4f) {
    util::function_3e65fe0b(0);
    level snd::function_7db65a93(#"hash_66209bfcf3bd11ca");
    level snd::function_7db65a93(#"hash_4a41082a1d97f925");
    level battlechatter::function_2ab9360b(0);
    spawner::add_global_spawn_function(#"axis", &function_21c6bdaa, 500);
    if (!isdefined(level.var_d3e0f34c)) {
        namespace_b7cfe907::function_f305c075();
    }
    if (isdefined(level.var_7466d419)) {
        level notify(#"hash_62387d6018db17f7");
        level.var_7466d419 delete();
    }
    if (isdefined(level.gunner)) {
        level.gunner util::stop_magic_bullet_shield();
        level.gunner delete();
    }
    if (isdefined(level.pilot)) {
        level.pilot util::stop_magic_bullet_shield();
        level.pilot delete();
    }
    if (isdefined(level.copilot)) {
        level.copilot util::stop_magic_bullet_shield();
        level.copilot delete();
    }
    util::delay(15, undefined, &function_bbcf495);
    util::delay(20, undefined, &objectives::scripted, #"last_stand", undefined, #"hash_512f51804b601599", 1);
    level scene::init(#"hash_30c1ba04c9ba0bf3");
    level function_3dda2db1(var_50cc0d4f);
    namespace_72b0499b::music("12.0_turret");
    level thread scene::play(#"hash_30c1ba04c9ba0bf3", "intro");
    level.player flag::wait_till_clear(#"scene");
    level.player flag::set("no_deaths_door_warning");
    level.player animation::function_d497dbe7();
    level.player.var_5a44792f = 1;
    level.var_d3e0f34c setseatoccupied(0, 1);
    level.var_d3e0f34c setseatoccupied(1, 1);
    level.var_d3e0f34c setseatoccupied(2, 0);
    level.var_d3e0f34c makevehicleusable();
    level.var_d3e0f34c usevehicle(level.player, 2);
    level.var_d3e0f34c makevehicleunusable();
    level.vip val::set(#"gunner", "ignoreme", 0);
    level.player val::reset(#"player_vehicle", "ignoreme");
    level.var_d3e0f34c val::set(#"last_stand", "allowdeath", 0);
    level.vip val::reset(#"gunner", "ignoreme");
    var_cbfab426 = getent("trig_gunner_player_damage", "targetname");
    var_cbfab426 thread function_5477c29();
    level thread savegame::function_7790f03(1);
    function_9283a7e2();
    var_cbfab426 delete();
    skipto::function_4e3ab877("armada_crash_part_1_gunner");
    level.player flag::clear("no_deaths_door_warning");
    level skipto::function_51726ac8(["armada_crash_part_4_laststand"], 0);
}

// Namespace armada_crash/namespace_5243a812
// Params 1, eflags: 0x2 linked
// Checksum 0xae409a0e, Offset: 0x13b8
// Size: 0xc4
function function_3dda2db1(var_50cc0d4f = 0) {
    if (var_50cc0d4f) {
        util::wait_network_frame(2);
        namespace_b7cfe907::function_abeb9b2d(1, 0);
    } else {
        level flag::wait_till("crash_fade_to_white");
    }
    wait(3);
    snd::function_7db65a93(#"hash_fe51ca48b75d08c");
    level thread namespace_b7cfe907::function_abeb9b2d(0, 2.5, 1);
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0xb1ffa03, Offset: 0x1488
// Size: 0xd0
function function_5477c29() {
    self endon(#"death");
    while (true) {
        s = self waittill(#"damage");
        if (math::cointoss(60)) {
            level.player dodamage(s.amount * 0.6, level.player.origin, s.attacker, s.inflictor, "head", s.mod, 0, s.weapon);
        }
    }
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0x9cc7698b, Offset: 0x1560
// Size: 0xb0
function function_bbcf495() {
    a_spawners = getspawnerarray("crash_turret_enemies", "targetname");
    foreach (sp in a_spawners) {
        sp thread spawn_ai();
    }
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0x8293d2d7, Offset: 0x1618
// Size: 0xf6
function spawn_ai() {
    self endon(#"death");
    b_first = 1;
    while (self.count > 0) {
        if (b_first) {
            b_first = 0;
            util::script_delay();
        } else {
            if (is_true(self.var_e48ddb6b) && isalive(self.var_c56101e0)) {
                self.var_c56101e0 waittill(#"death");
            }
            util::script_wait();
        }
        self.var_c56101e0 = spawner::spawn();
        if (isdefined(self.var_c56101e0)) {
            self.var_c56101e0.grenadeammo = 0;
        }
    }
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0xd3a8872b, Offset: 0x1718
// Size: 0x160
function function_9283a7e2() {
    level endon(#"hash_32a51c08a30d997b");
    spawner::waittill_ai_group_count("crash_turret_enemies", 2);
    while (true) {
        wait(randomfloatrange(0.333333, 0.666667));
        a_enemies = getaiteamarray(#"axis");
        if (isarray(a_enemies) && a_enemies.size) {
            ai = array::random(a_enemies);
            if (isalive(ai)) {
                v_source = level.vip gettagorigin("tag_weapon_right");
                magicbullet(level.vip.weapon, v_source, ai getcentroid(), level.vip);
                ai kill();
            }
        }
    }
}

// Namespace armada_crash/namespace_5243a812
// Params 4, eflags: 0x2 linked
// Checksum 0x1b810d6, Offset: 0x1880
// Size: 0xbc
function function_398bee81(*name, starting, *direct, *player) {
    spawner::remove_global_spawn_function(#"axis", &function_21c6bdaa);
    if (player) {
        objectives::scripted(#"last_stand", undefined, #"hash_512f51804b601599");
    }
    clientfield::set("" + #"hash_5a188b1de711e5ca", 1);
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0xb476f859, Offset: 0x1948
// Size: 0xb4
function function_a337b00e() {
    pistol = getweapon(#"pistol_semiauto_t9");
    level.vip aiutility::setprimaryweapon(pistol);
    level.vip ai::gun_switchto(pistol, "right");
    level.vip.grenadeammo = 0;
    level.vip.canbemeleed = 0;
    level.vip namespace_b7cfe907::function_1f7fdfdb();
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0xdbe865de, Offset: 0x1a08
// Size: 0xb4
function function_c1b1ec5e() {
    pistol = getweapon(#"pistol_semiauto_t9");
    level.buddy aiutility::setprimaryweapon(pistol);
    level.buddy ai::gun_switchto(pistol, "right");
    level.buddy.grenadeammo = 0;
    level.buddy.canbemeleed = 0;
    level.buddy namespace_b7cfe907::function_1f7fdfdb();
}

// Namespace armada_crash/namespace_5243a812
// Params 1, eflags: 0x2 linked
// Checksum 0x2c93622a, Offset: 0x1ac8
// Size: 0xc4
function function_13205d(a_ents) {
    a_ents[#"hash_551e61a8d6c16c6b"] waittill(#"death");
    v_org = a_ents[#"hash_551e61a8d6c16c6b"].origin;
    level fx::play(#"hash_4aeb2425485e527", v_org, (0, 0, 0), "last_stand_beat_1");
    level util::delay("last_stand_beat_1", undefined, &fx::play, #"hash_66372422472364c", v_org);
}

// Namespace armada_crash/namespace_5243a812
// Params 1, eflags: 0x2 linked
// Checksum 0x5ff8e141, Offset: 0x1b98
// Size: 0x44
function function_d2f40d39(a_ents) {
    a_ents[#"hash_8b29b1917f7ff07"] useweaponmodel(getweapon("lmg_slowfire_t9"));
}

// Namespace armada_crash/namespace_5243a812
// Params 2, eflags: 0x2 linked
// Checksum 0xa120574d, Offset: 0x1be8
// Size: 0xa4c
function function_cd3c6f53(*str_objective, var_50cc0d4f) {
    level.player endon(#"death");
    level battlechatter::function_2ab9360b(0);
    callback::on_ai_spawned(&function_9a7a2ede);
    spawner::add_global_spawn_function(#"axis", &function_21c6bdaa);
    level snd::function_7db65a93(#"hash_2086d5e690a6ff1b");
    level snd::function_7db65a93(#"hash_763d59f6976503eb");
    namespace_72b0499b::music("13.0_last_stand");
    util::delay(6, undefined, &spawn_manager::enable, "last_stand_spawn_manager");
    level.player clientfield::set_to_player("" + #"force_stream_weapons", 2);
    scene::add_scene_func(#"hash_30c1ba04c9ba0bf3", &function_151b3bc9, "transition");
    scene::add_scene_func(#"hash_30c1ba04c9ba0bf3", &function_151b3bc9, "outro");
    if (!var_50cc0d4f && isinarray(scene::get_all_shot_names(#"hash_30c1ba04c9ba0bf3"), "transition")) {
        level scene::play(#"hash_30c1ba04c9ba0bf3", "transition");
    }
    level thread scene::play(#"hash_30c1ba04c9ba0bf3", "outro");
    level.player takeallweapons();
    level.player waittill(#"gun_up");
    level.player util::function_5f1df718(#"hash_58e6030bfae1aaff");
    level.player giveweapon(getweapon("frag_grenade"));
    level.player givemaxammo(getweapon("frag_grenade"));
    level.player giveweapon(getweapon("pistol_semiauto_t9"));
    level.player givemaxammo(getweapon("pistol_semiauto_t9"));
    level.player giveweapon(getweapon("lmg_slowfire_t9"));
    level.player givemaxammo(getweapon("lmg_slowfire_t9"));
    level.player switchtoweapon(getweapon("lmg_slowfire_t9"));
    level battlechatter::function_2ab9360b(1);
    level thread savegame::function_7790f03(1);
    namespace_82bfe441::fade(0, "FadeFast");
    var_d0979dcb = getnode("adler_last_stand_node", "targetname");
    level.vip setgoal(var_d0979dcb, 1, 50);
    level.vip flag::wait_till_clear(#"scene");
    wait(10);
    level flag::set("last_stand_beat_1");
    level.vip thread dialogue::queue("vox_cp_armd_00008_adlr_whereisthatairs_c1");
    wait(8);
    function_88a1aa83();
    level.var_dfdeb3ed = 1;
    var_6ad63861 = struct::get("napalm_target_flyby_1");
    var_5d1b9cec = struct::get("napalm_target_flyby_2");
    var_8852f35a = struct::get("napalm_target_flyby_3");
    level.player thread napalm_strike::function_88e2e18a("napalm_strike", var_6ad63861, #"allies", undefined, 0, "napalm_flyby_start_node_1");
    level.player napalm_strike::function_88e2e18a("napalm_strike", var_5d1b9cec, #"allies", undefined, 0, "napalm_flyby_start_node_2");
    level.vip util::delay(1, undefined, &dialogue::queue, "vox_cp_armd_00008_sims_fuckdidtheymiss_d8");
    level.player thread safe_trigger();
    spawn_manager::enable("last_stand_spawn_manager2");
    wait(6);
    level thread function_25d5fbb();
    wait(9);
    battlechatter::function_2ab9360b(0);
    level.vip thread dialogue::queue("vox_cp_armd_00008_adlr_wait_1f");
    wait(1.5);
    level.vip thread dialogue::queue("vox_cp_armd_00008_adlr_hereitcomes_d9");
    level notify(#"hash_6290710bbbe1a88e");
    function_313a56fa();
    wait(2.5);
    spawn_manager::kill("last_stand_spawn_manager");
    spawn_manager::kill("last_stand_spawn_manager2");
    callback::on_ai_spawned(&function_be831785);
    foreach (ai in getaiteamarray(#"axis")) {
        if (isalive(ai)) {
            ai function_be831785();
        }
    }
    level.player action_utility::function_396e2076();
    level.player flag::set("no_deaths_door_warning");
    function_7081d8a6();
    namespace_72b0499b::music("deactivate_13.0_last_stand");
    snd::function_7db65a93(#"hash_1b69ee637e8a6a94");
    level thread function_e8d36b28();
    namespace_82bfe441::fade(1, "FadeFast");
    level.player util::function_5f1df718();
    level.player takeallweapons();
    level.player scene::play(#"hash_67af97042f453b2b");
    level notify(#"hash_73a21eed3846c3a9");
    array::run_all(getactorarray(), &delete_ai);
    wait(2);
    level thread function_caa27b0b();
    util::function_3e65fe0b(1);
    level util::delay("complete_objective", undefined, &objectives::complete, #"last_stand", undefined, 1);
    level scene::play(#"hash_30c1ba04c9ba0bf3", "ending");
    skipto::function_1c2dfc20("cp_ger_hub_post_armada");
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0xb76a9737, Offset: 0x2640
// Size: 0x4c
function function_be831785() {
    if (self getteam() === #"axis") {
        self actions::function_df6077("takedown", 0);
    }
}

// Namespace armada_crash/namespace_5243a812
// Params 1, eflags: 0x2 linked
// Checksum 0x7651cc44, Offset: 0x2698
// Size: 0x84
function function_151b3bc9(a_ents) {
    var_1280faf3 = a_ents[#"hash_3b48878610773134"];
    if (isdefined(var_1280faf3)) {
        var_1280faf3 val::set(#"last_stand", "takedamage", 0);
        var_1280faf3 val::set(#"last_stand", "allowdeath", 0);
    }
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0xb359cb3c, Offset: 0x2728
// Size: 0x7c
function function_88a1aa83() {
    if (isdefined(10)) {
        __s = spawnstruct();
        __s endon(#"timeout");
        __s util::delay_notify(10, "timeout");
    }
    trigger::wait_till("last_stand_look_trigger");
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0xab3b76f5, Offset: 0x27b0
// Size: 0x54
function function_e8d36b28() {
    level waittill(#"hash_1fad4c55a48536fa");
    snd::function_7db65a93(#"hash_5589c3a538ff9235");
    namespace_72b0499b::music("tmp_armada_outro");
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0xb5425b00, Offset: 0x2810
// Size: 0x3c
function function_caa27b0b() {
    level waittill(#"hash_3d97e5c1f87dea1a");
    snd::function_7db65a93(#"hash_3dfb68a565cdf08");
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0x562d3cd7, Offset: 0x2858
// Size: 0x74
function delete_ai() {
    if (self === level.vip || self === level.buddy) {
        return;
    }
    if (is_true(self.magic_bullet_shield)) {
        util::stop_magic_bullet_shield();
    }
    self deletedelay();
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0x28643468, Offset: 0x28d8
// Size: 0x3cc
function function_7081d8a6() {
    level.player endon(#"death");
    a_dest = struct::get_array("final_magic_rpg_dest");
    var_5c241fe8 = [];
    foreach (s_dest in a_dest) {
        v_delta = vectornormalize(s_dest.origin - level.player.origin);
        v_facing = anglestoforward(level.player.angles);
        if (vectordot(v_delta, v_facing) > 0) {
            var_5c241fe8[var_5c241fe8.size] = s_dest;
        }
    }
    s_dest = arraysortclosest(var_5c241fe8, level.player.origin)[0];
    if (!isdefined(s_dest)) {
        s_dest = arraysortclosest(a_dest, level.player.origin)[0];
    }
    var_5afb6488 = struct::get_array("magic_rpg_source");
    var_15e295e1 = [];
    foreach (s_source in var_5afb6488) {
        if (bullettracepassed(s_source.origin, s_dest.origin, 0, level.player)) {
            var_15e295e1[var_15e295e1.size] = s_source;
        }
    }
    s_source = arraysortclosest(var_15e295e1, s_dest.origin)[0];
    if (!isdefined(s_source)) {
        s_source = arraysortclosest(var_5afb6488, s_dest.origin)[0];
    }
    rpg = magicbullet(getweapon("launcher_freefire_t9"), s_source.origin, s_dest.origin);
    rpg waittilltimeout(3, #"death");
    playfx(#"hash_347ec3991abdca5f", level.player getplayercamerapos() + anglestoforward(level.player getplayerangles()) * 20);
    function_313a56fa(1);
    wait(0.2);
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0xfca581d3, Offset: 0x2cb0
// Size: 0xce
function safe_trigger() {
    self endon(#"death");
    var_73f57f25 = getent("last_stand_safe_trigger", "targetname", 1);
    while (true) {
        if (self istouching(var_73f57f25)) {
            self val::set(#"hash_810823fc44f3ca4", "allowdeath", 0);
        } else {
            self val::reset(#"hash_810823fc44f3ca4", "allowdeath");
        }
        waitframe(1);
    }
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0xd70ddbad, Offset: 0x2d88
// Size: 0x3f0
function function_25d5fbb() {
    level.player endon(#"death");
    level endon(#"drop_bombs", #"hash_6290710bbbe1a88e");
    var_bd1e2865 = struct::get_array("magic_rpg_source");
    a_targets = struct::get_array("magic_rpg_dest");
    s_src = function_9ade037c(level.player getplayercamerapos(), anglestoforward(level.player getplayerangles()), var_bd1e2865);
    if (!isdefined(s_src)) {
        s_src = array::random(var_bd1e2865);
    }
    s_dest = arraygetfarthest(level.player.origin, a_targets);
    if (!isdefined(s_dest)) {
        s_dest = array::random(a_targets);
    }
    magicbullet(getweapon("launcher_freefire_t9"), s_src.origin, s_dest.origin);
    wait(0.3);
    var_27114b73 = arraycopy(var_bd1e2865);
    arrayremovevalue(var_27114b73, s_src);
    var_fc53025d = arraycopy(a_targets);
    arrayremovevalue(var_fc53025d, s_dest);
    s_src = undefined;
    s_src = function_9ade037c(level.player getplayercamerapos(), anglestoforward(level.player getplayerangles()), var_27114b73);
    if (!isdefined(s_src)) {
        s_src = array::random(var_27114b73);
    }
    s_dest = undefined;
    s_dest = arraygetfarthest(level.player.origin, var_fc53025d);
    if (!isdefined(s_dest)) {
        s_dest = array::random(var_fc53025d);
    }
    magicbullet(getweapon("launcher_freefire_t9"), s_src.origin, s_dest.origin);
    wait(0.1);
    level.vip thread dialogue::queue("vox_cp_armd_00008_adlr_rpg_0a");
    wait(1);
    while (true) {
        s_src = array::random(var_bd1e2865);
        s_dest = arraysortclosest(a_targets, level.player.origin)[0];
        magicbullet(getweapon("launcher_freefire_t9"), s_src.origin, s_dest.origin);
        wait(randomfloatrange(0.5, 3));
    }
}

// Namespace armada_crash/namespace_5243a812
// Params 1, eflags: 0x2 linked
// Checksum 0xd294758f, Offset: 0x3180
// Size: 0x1d0
function function_313a56fa(var_af75d221 = 0) {
    level.var_810bc44d = 1;
    foreach (ai in getactorarray()) {
        ai.grenadeammo = 0;
    }
    foreach (ent in getentarraybytype(3)) {
        ent deletedelay();
    }
    if (var_af75d221) {
        foreach (ent in getentarraybytype(4)) {
            ent deletedelay();
        }
    }
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x2 linked
// Checksum 0x6592d31d, Offset: 0x3358
// Size: 0x3a
function function_9a7a2ede() {
    self.script_accuracy = 0.5;
    if (is_true(level.var_810bc44d)) {
        self.grenadeammo = 0;
    }
}

// Namespace armada_crash/namespace_5243a812
// Params 1, eflags: 0x2 linked
// Checksum 0xa11ed96d, Offset: 0x33a0
// Size: 0x5c
function function_21c6bdaa(n_goal_radius = 1024) {
    if (is_true(self.var_8e14f582)) {
        self setgoal(level.player, 1, n_goal_radius);
    }
}

// Namespace armada_crash/namespace_5243a812
// Params 1, eflags: 0x2 linked
// Checksum 0xa227b2e6, Offset: 0x3408
// Size: 0xe4
function function_7322d11e(a_ents) {
    foreach (ent in a_ents) {
        if (isdefined(ent)) {
            ent setforcenocull();
        }
    }
    a_ents[#"hash_69bbd67ba053a128"] setdedicatedshadow(1);
    a_ents[#"hash_76123610ff5e2efb"] setdedicatedshadow(1);
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x1
// Checksum 0x9ca31e56, Offset: 0x34f8
// Size: 0x9c
function autoexec function_cc7bef21() {
    level waittill(#"hash_6e4e843159ddce33");
    namespace_b7cfe907::function_abeb9b2d(1, 4);
    snd::function_7db65a93(#"hash_51446351b2ec1bdc");
    wait(6);
    level.vip thread dialogue::queue("vox_cp_armd_00009_adlr_somehowperseusk_d2");
    level flag::set("crash_fade_to_white");
}

// Namespace armada_crash/namespace_5243a812
// Params 0, eflags: 0x1
// Checksum 0x4cc04f4f, Offset: 0x35a0
// Size: 0x5c
function autoexec function_68de46e() {
    level waittill(#"hash_1f6e6704647ee19b");
    namespace_b7cfe907::function_abeb9b2d(1, 0);
    wait(1.5);
    namespace_b7cfe907::function_abeb9b2d(0, 1.5, 1);
}

