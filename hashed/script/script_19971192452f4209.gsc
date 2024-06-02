// Atian COD Tools GSC CW decompiler test
#using script_4937c6974f43bb71;
#using script_6d3108868022b9bf;
#using script_527bb22a76994e54;
#using script_4052585f7ae90f3a;
#using script_43e82b8f8b9aea77;
#using scripts\cp\cp_ger_hub_post_cuba.gsc;
#using scripts\cp\cp_ger_hub_post_kgb.gsc;
#using scripts\cp\cp_ger_hub_post_yamantau.gsc;
#using scripts\cp\cp_ger_hub_post_armada.gsc;
#using script_9e487583a27d590;
#using script_1478fbd17fe393cf;
#using script_6ccf730929917b01;
#using scripts\core_common\trigger_shared.gsc;
#using script_146fc25c29195773;
#using script_35ae72be7b4fec10;
#using script_4ae261b2785dda9f;
#using script_13114d8a31c6152a;
#using scripts\cp_common\collectibles.gsc;
#using script_54412fb3a6fab34c;
#using script_85cd2e9a28ea8a1;
#using scripts\cp_common\snd_utility.gsc;
#using script_3dc93ca9902a9cda;
#using scripts\cp_common\snd.gsc;
#using script_2a4a480476a0184f;
#using script_4134e1e2e7684c4c;
#using script_32399001bdb550da;
#using script_5513c8efed5ff300;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using scripts\cp_common\objectives.gsc;
#using scripts\cp_common\dialogue.gsc;
#using script_3b82b8c68189025e;
#using scripts\cp_common\skipto.gsc;
#using scripts\cp_common\util.gsc;
#using script_7d0013bbc05623b9;
#using script_71eb6874a6fab829;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\serverfield_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_31c67f6d;

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xc6e0e784, Offset: 0x20d8
// Size: 0x324
function function_1c920347() {
    clientfield::register("toplayer", "eboard_review_handle_viewmodel", 1, 2, "int");
    clientfield::register("toplayer", "eboard_camera_position", 1, 5, "int");
    clientfield::register("world", "eboard_notify_from_server", 1, 3, "int");
    clientfield::register("toplayer", "set_hub_fov", 1, 9, "int");
    clientfield::register("toplayer", "set_hub_dof", 1, 3, "int");
    clientfield::register("toplayer", "pstfx_t9_cp_hub_eboard_vignette", 1, 1, "int");
    clientfield::register("toplayer", "pstfx_t9_cp_hub_eboard_overview", 1, 1, "int");
    clientfield::register("toplayer", "pstfx_teleport", 1, 3, "int");
    clientfield::register("world", "dmg_models_and_vol_decals_burning", 1, 1, "int");
    clientfield::register("toplayer", "set_player_pbg_bank", 1, 1, "int");
    clientfield::register("world", "init_notetracks_postcuba", 1, 1, "int");
    clientfield::register("toplayer", "computer_terminal_switch", 1, 1, "int");
    clientfield::register("world", "toggle_occluder", 1, 1, "int");
    clientfield::register("world", "force_stream_model", 1, 1, "int");
    init_flags();
    level.var_70888df5 = getdvarint(#"hash_2023f46f30138540", 1) > 0;
    if (!level.var_70888df5) {
        namespace_cd80be1c::function_107f09b();
    }
    level function_5f05b132();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x3368ed0c, Offset: 0x2408
// Size: 0x24
function function_4316ab41() {
    clientfield::set("init_notetracks_postcuba", 1);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x1c6f6abc, Offset: 0x2438
// Size: 0x24
function function_f2cd5fc0() {
    clientfield::set("toggle_occluder", 1);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xeb89987a, Offset: 0x2468
// Size: 0x24
function function_12e3ea01() {
    clientfield::set("force_stream_model", 1);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x45996214, Offset: 0x2498
// Size: 0x274
function init_flags() {
    level thread flag::init("flag_wait_forever");
    level thread hub_post_takedown::function_f50bc4b9();
    level thread hub_post_armada::function_f50bc4b9();
    level thread hub_post_yamantau::function_f50bc4b9();
    level thread hub_post_kgb::function_f50bc4b9();
    level thread hub_post_cuba::function_f50bc4b9();
    level thread namespace_fdde5f3d::function_f50bc4b9();
    level flag::init("flag_hub_large_complete");
    level flag::init("flag_hub_small_complete");
    level flag::init("flag_player_read_dossier");
    level flag::init("flag_radio_on");
    level flag::init("flag_tv_on");
    level flag::init("flag_reading_station_active");
    level flag::init("flag_reading_station_object_02");
    level flag::init("flag_player_not_in_darkroom", 1);
    level flag::init("flag_player_using_evidence_board");
    level flag::init("flag_player_used_evidence_board");
    level flag::init("flag_cursor_over_mission");
    level flag::init("flag_cursor_snapped");
    level flag::init("flag_review_mode_active");
    level flag::init("flag_post_full_board_complete");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x6237e41a, Offset: 0x2718
// Size: 0x18c
function function_5f05b132() {
    var_a4f5da9b = [];
    var_a4f5da9b = getentarray("hub_hidden_mdl_evidence", "targetname");
    if (var_a4f5da9b.size == 0) {
        /#
            iprintlnbold("dev_post_prisoner_park_survived" + var_a4f5da9b.size + "hero_hudson");
        #/
    }
    foreach (mdl in var_a4f5da9b) {
        mdl hide();
    }
    level.var_8cbfb0bf = [];
    level.var_8cbfb0bf = getentarray("hub_hidden_mdl", "targetname");
    if (level.var_8cbfb0bf.size == 0) {
        /#
            iprintlnbold("dev_post_prisoner_park_survived" + level.var_8cbfb0bf.size + "af404e15b3f593d");
        #/
    }
    clientfield::set("dmg_models_and_vol_decals_burning", 0);
}

/#

    // Namespace namespace_31c67f6d/namespace_89829bca
    // Params 0, eflags: 0x0
    // Checksum 0xcc6ac33b, Offset: 0x28b0
    // Size: 0x8
    function function_e81f8ff1() {
        
    }

#/

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xd2c74e86, Offset: 0x28c0
// Size: 0x124
function function_9fa4f621() {
    callback::on_connect(&on_player_connect);
    callback::on_spawned(&on_player_spawned);
    init_spawnfunctions();
    level thread function_aeca5ec8();
    level thread function_f9ee9c54();
    level thread function_58eff8e();
    level thread function_d0d0e1ff();
    level thread function_7ad4f5cb();
    level thread function_77a7721();
    level thread function_32d36a25();
    level.var_616f2ca4 = 0;
    namespace_82bfe441::fade(1, "FadeImmediate");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x5cce9bbb, Offset: 0x29f0
// Size: 0xd8
function function_aeca5ec8() {
    level flag::wait_till("all_players_connected");
    var_f1036742 = collectibles::function_293d81b4(0);
    foreach (collectible in var_f1036742) {
        collectibles::function_316c48a3(collectible.var_430d1d6a, collectible.index);
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x6 linked
// Checksum 0xd601a54e, Offset: 0x2ad0
// Size: 0x6c
function private function_7ad4f5cb() {
    level flag::wait_till("all_players_connected");
    a_s_interacts = struct::get_array(#"hash_3dd86258529972ca");
    array::thread_all(a_s_interacts, &function_f78628e6);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x6 linked
// Checksum 0x5ca447e8, Offset: 0x2b48
// Size: 0x274
function private function_f78628e6() {
    level.player endon(#"death");
    level waittill(#"hash_92004b21ffa8edc");
    e_interact = util::spawn_model(#"tag_origin", self.origin, self.angles);
    level.player val::set("safehouse_arcade", "show_weapon_hud", 0);
    while (true) {
        e_interact util::create_cursor_hint("tag_origin", (0, 0, 0), #"hash_6ffbe136c9ac4c4e", 40, undefined, undefined, undefined, 150);
        e_interact thread namespace_b27ebd77::function_bafc791c();
        e_interact waittill(#"trigger");
        level.player setcinematicmotionoverride("cinematicmotion_static");
        e_interact util::delay(0.2, undefined, &util::remove_cursor_hint);
        wait(0.5);
        self namespace_b27ebd77::function_633f25cf(#"pitfall_2_game");
        level thread namespace_4ed3ce47::function_986a1d46();
        self namespace_b27ebd77::play();
        self namespace_b27ebd77::function_71510186();
        level.player setcinematicmotionoverride("default_cinematicmotion");
        level.player playgestureviewmodel("dem_lowreadyup");
        level thread namespace_4ed3ce47::function_799f2225();
        self namespace_b27ebd77::exit();
        wait(0.25);
    }
    e_interact util::remove_cursor_hint();
    e_interact delete();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xc9443913, Offset: 0x2dc8
// Size: 0x84
function on_player_connect() {
    if (isdefined(level.var_28c22d88)) {
        util::function_f3cadc9a("cp_player_ready");
        if (isdefined(level.var_d7d201ba) && !self flag::exists(level.var_d7d201ba)) {
            self flag::init(level.var_d7d201ba);
        }
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x31bd8f28, Offset: 0x2e58
// Size: 0x14
function on_player_spawned() {
    thread function_d73061db();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x5d29c05, Offset: 0x2e78
// Size: 0x31c
function function_d73061db() {
    self notify("14c9c0035a10d0ab");
    self endon("14c9c0035a10d0ab");
    level flag::wait_till("all_players_connected");
    level.player = getplayers()[0];
    level.player takeallweapons();
    level.player setclientuivisibilityflag("weapon_hud_visible", 0);
    level.player setclientuivisibilityflag("radar_client", 0);
    level.player setcharacterbodytype(1);
    level.player setcharacteroutfit(1);
    level.player val::set("safehouse_prone", "allow_prone", 0);
    util::function_3e65fe0b(1);
    level function_65f262c1();
    setdvar(#"hash_76c0d7e6385ee6de", 0.4);
    setdvar(#"hash_4466b01c6d8d7307", 3);
    weaponname = getweapon("bare_hands_offscreen_safehouse");
    level.player giveweapon(weaponname);
    level.player switchtoweapon(weaponname);
    wait(1);
    if (!(level.var_b28c2c3a === "post_cuba" || level.var_b28c2c3a === "post_prisoner" || level.var_b28c2c3a === "dev_burn_safehouse" || level.var_b28c2c3a === "dev_post_cuba_park_survived" || level.var_b28c2c3a === "dev_post_cuba_lazar_survived" || level.var_b28c2c3a === "dev_post_cuba_no_survivors" || level.var_b28c2c3a === "dev_post_prisoner_park_survived" || level.var_b28c2c3a === "dev_post_prisoner_lazar_survived" || level.var_b28c2c3a === "dev_post_prisoner_no_survivors" || level.var_b28c2c3a === "dev_burn_safehouse")) {
        level.player playgestureviewmodel("dem_lowreadyup");
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x370c062c, Offset: 0x31a0
// Size: 0x12c
function function_65f262c1() {
    var_b535987a = "cp_ger_hub";
    if (level.var_b28c2c3a === "post_cuba" || level.var_b28c2c3a === "post_prisoner" || level.var_b28c2c3a === "dev_post_cuba_park_survived" || level.var_b28c2c3a === "dev_post_cuba_lazar_survived" || level.var_b28c2c3a === "dev_post_cuba_no_survivors" || level.var_b28c2c3a === "dev_post_prisoner_park_survived" || level.var_b28c2c3a === "dev_post_prisoner_lazar_survived" || level.var_b28c2c3a === "dev_post_prisoner_no_survivors") {
        var_b535987a = "cp_hub_infil_combat";
    }
    level.player util::function_a5318821(0, 0, var_b535987a, 0);
    level.player_connected = 1;
    level.player function_2f542be7();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x8bcfb132, Offset: 0x32d8
// Size: 0x2a4
function init_spawnfunctions() {
    var_42acb07e = getspawnerarray("hero_adler", "script_noteworthy");
    array::run_all(var_42acb07e, &spawner::add_spawn_function, &function_d3918b2e, "adler");
    var_cbd6dc94 = getspawnerarray("hero_lazar", "script_noteworthy");
    array::run_all(var_cbd6dc94, &spawner::add_spawn_function, &function_d3918b2e, "lazar");
    var_3aaffb3e = getspawnerarray("hero_park", "script_noteworthy");
    array::run_all(var_3aaffb3e, &spawner::add_spawn_function, &function_d3918b2e, "park");
    var_c08cab6 = getspawnerarray("hero_sims", "script_noteworthy");
    array::run_all(var_c08cab6, &spawner::add_spawn_function, &function_d3918b2e, "sims");
    var_ebd0f12d = getspawnerarray("hero_hudson", "script_noteworthy");
    array::run_all(var_ebd0f12d, &spawner::add_spawn_function, &function_d3918b2e, "hudson");
    var_5b7b93ad = getspawnerarray("hero_woods", "script_noteworthy");
    array::run_all(var_5b7b93ad, &spawner::add_spawn_function, &function_d3918b2e, "woods");
    var_535ce24f = getspawnerarray("hero_mason", "script_noteworthy");
    array::run_all(var_535ce24f, &spawner::add_spawn_function, &function_d3918b2e, "mason");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0x8f442f60, Offset: 0x3588
// Size: 0xf0
function function_d3918b2e(var_1ef13f7e) {
    assert(isdefined(var_1ef13f7e), "hub_mdl_cart_01_clip");
    if (var_1ef13f7e == "adler") {
        level.adler = self;
    }
    if (var_1ef13f7e == "lazar") {
        level.lazar = self;
    }
    if (var_1ef13f7e == "park") {
        level.park = self;
    }
    if (var_1ef13f7e == "sims") {
        level.sims = self;
    }
    if (var_1ef13f7e == "hudson") {
        level.hudson = self;
    }
    if (var_1ef13f7e == "woods") {
        level.woods = self;
    }
    if (var_1ef13f7e == "mason") {
        level.mason = self;
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0x55d01795, Offset: 0x3680
// Size: 0xc
function function_4613fab8(*var_d3440450) {
    
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 2, eflags: 0x2 linked
// Checksum 0x621fa671, Offset: 0x3698
// Size: 0x2ec
function function_13fc27ea(var_d3440450, *var_50cc0d4f) {
    var_7a191936 = savegame::function_8136eb5a();
    level thread function_abeb9b2d(5.5, 1, 1, 1);
    if (var_7a191936 == "cp_ger_hub8") {
        level namespace_fdde5f3d::main();
        level flag::wait_till("flag_wait_forever");
    }
    if (var_7a191936 == "cp_ger_hub_post_cuba") {
        level hub_post_cuba::main();
        level flag::wait_till("flag_wait_forever");
    }
    if (var_7a191936 == "cp_ger_hub_post_kgb") {
        level hub_post_kgb::main();
        level hub_post_kgb::function_223f05aa();
        level flag::wait_till("flag_wait_forever");
    }
    if (var_7a191936 == "cp_ger_hub_post_yamantau") {
        level hub_post_yamantau::main();
        level hub_post_yamantau::function_29390787();
        level flag::wait_till("flag_wait_forever");
    }
    if (var_7a191936 == "cp_ger_hub_post_armada") {
        level hub_post_armada::main();
        level hub_post_armada::function_428d9889();
        level hub_post_armada::function_d3875afa();
        level flag::wait_till("flag_wait_forever");
    }
    if (var_7a191936 == "cp_ger_hub") {
        if (namespace_70eba6e6::function_8de25d9c()) {
            level hub_post_takedown::main();
            level hub_post_takedown::function_e695c6d4();
            level hub_post_takedown::function_7fb12c66();
            level flag::wait_till("flag_wait_forever");
        }
    }
    if (var_7a191936 != "cp_ger_hub") {
        level thread function_98bc17c8();
    }
    if (isdefined(var_50cc0d4f)) {
        skipto::function_4e3ab877(var_50cc0d4f);
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x0
// Checksum 0x11364636, Offset: 0x3990
// Size: 0x124
function function_a2af041c() {
    level.player val::set(#"hash_3563e45f1ab61fea", "show_hud", 0);
    level.player val::set(#"hash_3563e45f1ab61fea", "freezecontrols");
    level.player val::set(#"hash_3563e45f1ab61fea", "disable_weapons");
    level.player val::set(#"hash_3563e45f1ab61fea", "takedamage", 0);
    level.player val::set(#"hash_3563e45f1ab61fea", "allowdeath", 0);
    level.player val::set(#"hash_3563e45f1ab61fea", "hide");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x0
// Checksum 0xba914898, Offset: 0x3ac0
// Size: 0x124
function function_cbec2adc() {
    level.player val::set(#"hash_3563e45f1ab61fea", "show_hud", 0);
    level.player val::set(#"hash_3563e45f1ab61fea", "freezecontrols");
    level.player val::set(#"hash_3563e45f1ab61fea", "disable_weapons");
    level.player val::set(#"hash_3563e45f1ab61fea", "takedamage", 0);
    level.player val::set(#"hash_3563e45f1ab61fea", "allowdeath", 0);
    level.player val::set(#"hash_3563e45f1ab61fea", "hide");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0xbe4a9414, Offset: 0x3bf0
// Size: 0xc
function function_b438df4d(*var_d3440450) {
    
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 2, eflags: 0x2 linked
// Checksum 0x24690755, Offset: 0x3c08
// Size: 0x3fc
function function_58f8a0d8(var_d3440450, *var_50cc0d4f) {
    videostart("cp_shared_vietnam_brainwash", 1);
    while (!isdefined(level.player_connected) || isdefined(level.player_connected) && level.player_connected != 1) {
        waitframe(1);
    }
    level.player freezecontrols(1);
    exploder::exploder("exp_lab_char_creation");
    level.player clientfield::set_to_player("set_hub_dof", 2);
    level.player takeallweapons();
    level.player disableweapons();
    level.player setcinematicmotionoverride("cinematicmotion_static");
    tag = spawn("script_model", level.player.origin);
    tag.angles = level.player.angles;
    tag setmodel("tag_origin");
    level.player playerlinkto(tag);
    if (isdefined(level.var_d7d201ba) && isdefined(level.var_28c22d88)) {
        level.player flag::set(level.var_d7d201ba);
    }
    level flag::wait_till(#"gameplay_started");
    level thread namespace_4ed3ce47::function_bc5cf85e();
    level.player namespace_70eba6e6::function_f8bd1258();
    level function_65f262c1();
    level thread function_abeb9b2d(7.5, 1, 1, 1);
    level.player freezecontrols(0);
    level.player thread function_2f542be7();
    level.player unlink();
    tag delete();
    level.player enableweapons();
    weaponname = getweapon("bare_hands_offscreen_safehouse");
    level.player giveweapon(weaponname);
    level.player switchtoweapon(weaponname);
    wait(1);
    level.player playgestureviewmodel("dem_lowreadyup");
    level.player setcinematicmotionoverride("default_cinematicmotion");
    level thread savegame::function_7790f03();
    if (isdefined(var_50cc0d4f)) {
        skipto::function_4e3ab877(var_50cc0d4f);
    }
    level thread namespace_4ed3ce47::function_a0289367();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 3, eflags: 0x2 linked
// Checksum 0x42994cd8, Offset: 0x4010
// Size: 0x26c
function function_6194f34a(var_8ced85ea, var_3223cb64, *var_ef49aa65 = 0) {
    self notify("477f193c07ce26dc");
    self endon("477f193c07ce26dc");
    while (!isdefined(level.player)) {
        waitframe(1);
    }
    s_player_start = struct::get("s_default_player_start", "targetname");
    if (isdefined(s_player_start)) {
        level.player setorigin(s_player_start.origin);
        level.player setplayerangles(s_player_start.angles);
    }
    level.var_f5552371 = var_3223cb64;
    level function_91c383b1(var_3223cb64);
    level function_1f4ed1b4(var_3223cb64);
    level function_3f03464(var_3223cb64);
    waitframe(1);
    level.player thread clientfield::set_to_player("set_hub_fov", 3);
    level.player clientfield::set_to_player("set_hub_dof", 1);
    if (var_ef49aa65 == 0) {
        level thread function_a422a4a9();
    }
    if (is_true(level.var_70888df5) && !(var_3223cb64 == "post_prisoner")) {
        level.player thread namespace_fa335fda::function_12624bb8(var_3223cb64, "eboard_ready");
    } else {
        level.player thread namespace_cd80be1c::function_3fc4da12(var_3223cb64, "eboard_ready");
    }
    level thread function_ea259f56(var_3223cb64);
    level thread function_15231086("eboard_ready");
    level thread function_b3b4019f();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0x9602d11e, Offset: 0x4288
// Size: 0x778
function function_91c383b1(chapter) {
    assert(isdefined(chapter), "hub_mdl_lounge_chair");
    level.a_ai_allies = [];
    level.var_58ccee4 = [];
    switch (chapter) {
    case #"post_takedown":
        var_959954b3 = ["adler", "park", "lazar", "sims"];
        break;
    case #"post_armada":
        var_959954b3 = ["adler", "park", "lazar", "sims"];
        break;
    case #"post_yamantau":
        var_959954b3 = ["adler", "park", "lazar", "sims", "hudson"];
        break;
    case #"post_kgb":
        var_959954b3 = ["hudson", "woods", "mason"];
        break;
    case #"post_cuba":
        level.var_ea95c1e7 = function_c9dc0e79();
        if (level.var_ea95c1e7 != "sims") {
            var_959954b3 = ["adler", "sims", "hudson", level.var_ea95c1e7];
        } else {
            var_959954b3 = ["adler", "hudson", level.var_ea95c1e7];
        }
        break;
    case #"hash_4738825a1fd6beb8":
        level.var_ea95c1e7 = function_c9dc0e79();
        if (level.var_ea95c1e7 != "sims") {
            var_959954b3 = ["adler_alt_" + level.var_ea95c1e7, "sims_alt_survivor", level.var_ea95c1e7 + "_hub"];
            var_ac85c33a = getent("sims_hub", "targetname");
            var_ac85c33a delete();
            var_ac85c33a = getent("adler_hub", "targetname");
            var_ac85c33a delete();
            if (level.var_ea95c1e7 == "lazar") {
                var_ac85c33a = getent("park_hub", "targetname");
                var_ac85c33a delete();
                var_ac85c33a = getent("adler_alt_park", "targetname");
                var_ac85c33a delete();
            }
            if (level.var_ea95c1e7 == "park") {
                var_ac85c33a = getent("lazar_hub", "targetname");
                var_ac85c33a delete();
                var_ac85c33a = getent("adler_alt_lazar", "targetname");
                var_ac85c33a delete();
            }
        } else {
            var_959954b3 = ["adler_hub", "sims_hub"];
            var_ac85c33a = getent("adler_alt_park", "targetname");
            var_ac85c33a delete();
            var_ac85c33a = getent("adler_alt_lazar", "targetname");
            var_ac85c33a delete();
            var_ac85c33a = getent("sims_alt_survivor", "targetname");
            var_ac85c33a delete();
            var_ac85c33a = getent("park_hub", "targetname");
            var_ac85c33a delete();
            var_ac85c33a = getent("lazar_hub", "targetname");
            var_ac85c33a delete();
        }
        break;
    default:
        /#
            iprintlnbold("dialog_wait_for_animation");
        #/
        break;
    }
    foreach (str_spawner in var_959954b3) {
        ai = spawner::simple_spawn(str_spawner);
        level.a_ai_allies[level.a_ai_allies.size] = ai;
        level.var_58ccee4[level.var_58ccee4.size] = ai[0];
        if (isdefined(ai) && ai.size > 0) {
            ai[0] flag::init("show_dialog_options");
            ai[0] flag::init("show_ally_in_position");
            ai[0] flag::init("fidgeting_done");
            ai[0] flag::init("flag_fidget_interrupt_start");
        }
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0xc69127f8, Offset: 0x4a08
// Size: 0x23fc
function function_1f4ed1b4(var_8ced85ea) {
    self notify("af404e15b3f593d");
    self endon("af404e15b3f593d");
    hidemiscmodels("hub_mdl_back_room_table");
    hidemiscmodels("hub_mdl_lazar_trash");
    hidemiscmodels("hub_mdl_backroom");
    hidemiscmodels("post_yamantau_work_cart_mdl");
    hidemiscmodels("hub_mdl_belikov");
    hidemiscmodels("hub_mdl_sims_switch");
    hidemiscmodels("hub_mdl_sims_bag_01");
    hidemiscmodels("boxing_scene_switch");
    waitframe(1);
    var_a2279767 = getent("map_table", "targetname");
    level thread scene::play("scene_hub_env_fan_box");
    switch (var_8ced85ea) {
    case #"post_takedown":
        level thread scene::stop("scene_hub_env_desk_fan");
        function_23128418();
        var_23917641 = getentarray("post_takedown_desk_set", "script_noteworthy");
        foreach (mdl in var_23917641) {
            arrayremovevalue(level.var_8cbfb0bf, mdl);
        }
        mdl = getent("hub_mdl_computer_tarp_01", "script_noteworthy");
        function_5370f168(level.var_b8e8fb10, mdl);
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_hub_dark_room_photo_line_post_td_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_lamp_off_post_am", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_lamp_on_post_td", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        function_dabb347b();
        mdl = getent("hub_mdl_office_light_on_1", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_office_light_on_2", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_light_on_1", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_light_on_2", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_door", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_side_door", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_park_chair_clip_takedown", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        showmiscmodels("hub_mdl_sims_switch");
        mdl = getent("hub_mdl_fan_clip", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        showmiscmodels("hub_mdl_sims_bag_01");
        mdl = getent("hub_mdl_sims_bag_02", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        break;
    case #"post_armada":
        function_23128418();
        var_491e6125 = getent("mdl_cp_ger_stakeout_item_01", "script_noteworthy");
        var_491e6125 delete();
        mdl = getent("hub_mdl_puddle_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_puddle_02", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_puddle_03", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_puddle_04", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_bucket_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        var_23917641 = getentarray("post_armada_desk_set", "script_noteworthy");
        foreach (mdl in var_23917641) {
            arrayremovevalue(level.var_8cbfb0bf, mdl);
        }
        mdl = getent("mdl_hub_dark_room_photo_line_post_td_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_lamp_on_post_am", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_lamp_off_post_td", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        function_dabb347b();
        mdl = getent("hub_mdl_office_light_on_1", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_office_light_off_2", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_light_on_1", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_light_on_2", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_door", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_sims_chair_clip", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        showmiscmodels("hub_mdl_back_room_table");
        mdl = getent("hub_mdl_sims_bag_02", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_park_chair_clip_armada", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        showmiscmodels("hub_mdl_sims_bag_01");
        break;
    case #"post_yamantau":
        level thread scene::play("scene_hub_env_desk_fan");
        function_31d12195();
        var_3a93f90b = getentarray("post_yamantau_only_models", "script_noteworthy");
        foreach (mdl in var_3a93f90b) {
            arrayremovevalue(level.var_8cbfb0bf, mdl);
        }
        var_5243f67 = getentarray("post_yamantau_desk_set", "script_noteworthy");
        foreach (mdl in var_5243f67) {
            arrayremovevalue(level.var_8cbfb0bf, mdl);
        }
        showmiscmodels("post_yamantau_work_cart_mdl");
        mdl = getent("hub_mdl_car_01_clip", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_cart_01_clip", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_hub_dark_room_photo_line_post_stk_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_hub_dark_room_photo_line_post_at_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_hub_dark_room_photo_line_post_ymt_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_lamp_off_post_am", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_lamp_off_post_td", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        function_dabb347b();
        mdl = getent("hub_mdl_office_light_off_1", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_office_light_off_2", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_light_off_1", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_light_off_2", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_door", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_side_door", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_floodlight_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_sims_bag_02", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_red_tooldbox_clip", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        showmiscmodels("hub_mdl_sims_bag_01");
        hidemiscmodels("park_photo_tray");
        mdl = getent("hub_mdl_post_yamantau_table_clip", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        break;
    case #"post_kgb":
        function_31d12195();
        var_1e7807b2 = getentarray("hub_mdl_van_01_clip", "script_noteworthy");
        foreach (mdl in var_1e7807b2) {
            arrayremovevalue(level.var_8cbfb0bf, mdl);
        }
        mdl = getent("mdl_hub_dark_room_photo_line_post_stk_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_hub_dark_room_photo_line_post_at_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_hub_dark_room_photo_line_post_ymt_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_hub_dark_room_photo_line_post_kgb_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_lamp_off_post_am", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_lamp_off_post_td", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        var_c6632a8c = getent("hub_mdl_projector_in_use", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, var_c6632a8c);
        mdl = getent("hub_mdl_projector_in_use_cart", "script_noteworthy");
        function_5370f168(var_c6632a8c, mdl);
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_projector_in_use_clip", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_projector_in_use_nosight", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_office_light_off_1", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_office_light_off_2", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_light_on_1", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_light_on_2", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        function_25b8909();
        mdl = getent("hub_mdl_side_door", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        hidemiscmodels("hub_office_blinds");
        break;
    case #"post_cuba":
        level thread scene::play("scene_hub_env_desk_fan");
        function_31d12195();
        mdl = getent("mdl_hub_dark_room_photo_line_post_stk_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_hub_dark_room_photo_line_post_at_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_hub_dark_room_photo_line_post_ymt_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_hub_dark_room_photo_line_post_kgb_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_lamp_off_post_am", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_lamp_off_post_td", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        function_dabb347b();
        mdl = getent("hub_mdl_hallway_light_on_1", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_light_on_2", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_door", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        function_25b8909();
        mdl = getent("hub_mdl_side_door", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_floodlight_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_sims_bag_02", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        showmiscmodels("hub_mdl_sims_bag_01");
        break;
    case #"hash_4738825a1fd6beb8":
        level thread scene::play("scene_hub_env_desk_fan");
        hidemiscmodels("sr_office_chair_02");
        function_31d12195();
        mdl = getent("mdl_hub_dark_room_photo_line_post_stk_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_hub_dark_room_photo_line_post_at_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_hub_dark_room_photo_line_post_ymt_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_hub_dark_room_photo_line_post_kgb_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_lamp_off_post_am", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_lamp_off_post_td", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        function_dabb347b();
        mdl = getent("hub_mdl_office_light_off_1", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_office_light_off_2", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_light_on_1", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_light_on_2", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_door", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        function_25b8909();
        mdl = getent("hub_mdl_side_door", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_floodlight_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_sims_bag_02", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        showmiscmodels("hub_mdl_sims_bag_01");
        break;
    case #"hash_74ffc12b5f6d78f0":
        hidemiscmodels("hub_mdl_gun_rack");
        function_31d12195();
        mdl = getent("mdl_hub_dark_room_photo_line_post_stk_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_hub_dark_room_photo_line_post_at_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_hub_dark_room_photo_line_post_ymt_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_hub_dark_room_photo_line_post_kgb_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_lamp_off_post_am", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_lamp_off_post_td", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        var_46bcbed4 = getentarray("burn_models", "script_noteworthy");
        foreach (mdl in var_46bcbed4) {
            arrayremovevalue(level.var_8cbfb0bf, mdl);
        }
        clientfield::set("dmg_models_and_vol_decals_burning", 1);
        function_dabb347b();
        mdl = getent("hub_mdl_office_light_off_1", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_office_light_off_2", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_light_on_1", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_light_on_2", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_hallway_door", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_side_door", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_floodlight_01", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("hub_mdl_sims_bag_02", "script_noteworthy");
        arrayremovevalue(level.var_8cbfb0bf, mdl);
        mdl = getent("mdl_bulb_right", "targetname");
        if (!isdefined(level.var_8cbfb0bf)) {
            level.var_8cbfb0bf = [];
        } else if (!isarray(level.var_8cbfb0bf)) {
            level.var_8cbfb0bf = array(level.var_8cbfb0bf);
        }
        level.var_8cbfb0bf[level.var_8cbfb0bf.size] = mdl;
        mdl = getent("mdl_bulb_left", "targetname");
        if (!isdefined(level.var_8cbfb0bf)) {
            level.var_8cbfb0bf = [];
        } else if (!isarray(level.var_8cbfb0bf)) {
            level.var_8cbfb0bf = array(level.var_8cbfb0bf);
        }
        level.var_8cbfb0bf[level.var_8cbfb0bf.size] = mdl;
        showmiscmodels("hub_mdl_sims_bag_01");
        hidemiscmodels("evidence_board_lamps");
        break;
    }
    level thread function_1011dd35();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 2, eflags: 0x2 linked
// Checksum 0x680db277, Offset: 0x6e10
// Size: 0x3c
function function_5370f168(var_4ace790, var_57af221a) {
    if (isdefined(var_4ace790) && isdefined(var_57af221a)) {
        var_4ace790 linkto(var_57af221a);
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x2ce28456, Offset: 0x6e58
// Size: 0x1b4
function function_23128418() {
    mdl = getent("hub_mdl_tarp_01", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    mdl = getent("hub_mdl_tarp_02", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    mdl = getent("hub_mdl_sheet_01", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    mdl = getent("hub_mdl_boxing_worklight", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    mdl = getent("hub_mdl_computer_01", "script_noteworthy");
    level.var_b8e8fb10 = mdl;
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    mdl = getent("hub_tv1", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    showmiscmodels("boxing_scene_switch");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0x818d8239, Offset: 0x7018
// Size: 0x304
function function_31d12195(*a_mdls) {
    mdl = getent("hub_mdl_lounge_chair", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    mdl = getent("hub_mdl_lounge_chair_clip", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    mdl = getent("hub_mdl_evidence_box_01", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    mdl = getent("hub_mdl_evidence_box_02", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    mdl = getent("hub_mdl_evidence_box_03", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    mdl = getent("hub_mdl_liquor_01", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    mdl = getent("hub_mdl_station_chair_01", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    mdl = getent("hub_mdl_station_chair_02", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    mdl = getent("hub_mdl_station_chair_02_clip", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    mdl = getent("hub_mdl_computer_01", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    mdl = getent("hub_mdl_floodlight_02", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    showmiscmodels("hub_mdl_lazar_trash");
    showmiscmodels("hub_mdl_backroom");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xef580930, Offset: 0x7328
// Size: 0xec
function function_dabb347b() {
    var_ef05a955 = getent("hub_mdl_projector_away", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, var_ef05a955);
    mdl = getent("hub_mdl_projector_away_cart", "script_noteworthy");
    function_5370f168(var_ef05a955, mdl);
    arrayremovevalue(level.var_8cbfb0bf, mdl);
    mdl = getent("hub_mdl_projector_away_clip", "script_noteworthy");
    arrayremovevalue(level.var_8cbfb0bf, mdl);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x5dd4b20, Offset: 0x7420
// Size: 0x1c
function function_25b8909() {
    showmiscmodels("hub_mdl_belikov");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xb2f0145f, Offset: 0x7448
// Size: 0x90
function function_1011dd35() {
    foreach (mdl in level.var_8cbfb0bf) {
        if (isdefined(mdl)) {
            mdl delete();
        }
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 2, eflags: 0x2 linked
// Checksum 0xd22e8f93, Offset: 0x74e0
// Size: 0x114
function function_82743d25(var_8ced85ea, var_ef49aa65) {
    var_45ddb155 = ["post_takedown", "post_armada", "post_yamantau", "post_kgb", "post_cuba"];
    assert(isinarray(var_45ddb155, var_8ced85ea));
    for (i = 0; i < var_45ddb155.size; i++) {
        if (var_8ced85ea === var_45ddb155[i]) {
            var_af175293 = i;
            break;
        }
    }
    level thread util::delay(var_ef49aa65, undefined, &globallogic_ui::function_7bc0e4b9, 0, var_af175293);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0xddcfb112, Offset: 0x7600
// Size: 0xb4
function function_15231086(str_notify) {
    level.player flag::wait_till(level.var_d7d201ba);
    if (isdefined(str_notify)) {
        level waittill(str_notify);
    }
    var_21de0571 = struct::get("hint_evidence_board", "targetname");
    level objectives::goto("obj_use_board", var_21de0571.origin, #"hash_2f7e787370cedff6");
    level thread function_9ce0dff3();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xc5f38af2, Offset: 0x76c0
// Size: 0x5c
function function_9ce0dff3() {
    while (!isdefined(level.statemachine.blackboard.var_63754fbc)) {
        waitframe(1);
    }
    level.statemachine.blackboard.var_63754fbc prompts::set_objective("obj_use_board");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x2811affd, Offset: 0x7728
// Size: 0x74
function function_b3b4019f() {
    level flag::wait_till(#"gameplay_started");
    wait(5);
    if (player_decision::function_e40c7d56() >= 3) {
        level.player stats::function_dad108fa(#"hash_7af2992eebf41338", 1);
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 4, eflags: 0x2 linked
// Checksum 0x3e04aad1, Offset: 0x77a8
// Size: 0xa2c
function function_7fd3a4d8(var_7784a8ae = 0, var_a8627b29 = undefined, n_wait_time = undefined, var_ef49aa65 = 0) {
    level flag::set("flag_in_briefing");
    foreach (var_3d43d7b8 in level.a_ai_allies) {
        var_3d43d7b8[0] flag::set("flag_in_scene");
        var_3d43d7b8[0] thread function_ac8d8290();
    }
    thread function_183bf598();
    if (var_7784a8ae == 1) {
        level.var_4032a278 = 1;
        level flag::wait_till("level_is_go");
        while (!isdefined(level.player_connected) || isdefined(level.player_connected) && level.player_connected != 1) {
            waitframe(1);
        }
        if ((isdefined(level.var_f5552371) ? level.var_f5552371 : "") == "post_yamantau" || (isdefined(level.var_f5552371) ? level.var_f5552371 : "") == "post_kgb") {
            level thread scene::skipto_end("scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_briefing_props", undefined, undefined, undefined, 0);
        }
        level thread scene::skipto_end("scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_briefing", undefined, undefined, undefined, 0);
        waitframe(1);
        foreach (var_3d43d7b8 in level.a_ai_allies) {
            var_3d43d7b8[0] notify(#"hash_733b5b04b1674e79");
        }
        wait(2);
        level notify(#"hash_6b714d5d8d203c49");
        level.var_4032a278 = undefined;
        if (isdefined(level.var_d7d201ba) && isdefined(level.var_28c22d88)) {
            level.player flag::set(level.var_d7d201ba);
        }
        level flag::wait_till(#"gameplay_started");
        level notify(#"hash_92004b21ffa8edc");
    } else {
        if ((isdefined(level.var_f5552371) ? level.var_f5552371 : "") == "post_yamantau" || (isdefined(level.var_f5552371) ? level.var_f5552371 : "") == "post_kgb") {
            level thread scene::init_streamer("scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_briefing_props", getplayers());
            level thread scene::init("scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_briefing_props");
        }
        level thread scene::init_streamer("scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_briefing", getplayers(), 1);
        level thread scene::init("scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_briefing");
        level flag::wait_till("level_is_go");
        while (!isdefined(level.player_connected) || isdefined(level.player_connected) && level.player_connected != 1) {
            waitframe(1);
        }
        if (isdefined(n_wait_time) && n_wait_time > 0) {
            wait(n_wait_time);
        }
        if (isdefined(level.var_d7d201ba) && isdefined(level.var_28c22d88)) {
            level.player flag::set(level.var_d7d201ba);
        }
        level flag::wait_till(#"gameplay_started");
        level thread function_82743d25(isdefined(level.var_f5552371) ? level.var_f5552371 : "", var_ef49aa65);
        level thread namespace_4ed3ce47::function_7edafa59((isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_briefing");
        if (!isdefined(var_a8627b29)) {
            if ((isdefined(level.var_f5552371) ? level.var_f5552371 : "") == "post_yamantau" || (isdefined(level.var_f5552371) ? level.var_f5552371 : "") == "post_kgb") {
                level thread scene::play("scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_briefing_props");
            }
            level scene::play("scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_briefing");
        } else {
            level.var_4032a278 = 1;
            util::delay(0.05, undefined, &function_81bb9b99);
            if ((isdefined(level.var_f5552371) ? level.var_f5552371 : "") == "post_yamantau" || (isdefined(level.var_f5552371) ? level.var_f5552371 : "") == "post_kgb") {
                level thread scene::play_from_time("scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_briefing_props", undefined, undefined, var_a8627b29, 0);
            }
            level scene::play_from_time("scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_briefing", undefined, undefined, var_a8627b29, 0);
        }
    }
    foreach (var_3d43d7b8 in level.a_ai_allies) {
        var_3d43d7b8[0] flag::clear("flag_in_scene");
    }
    level flag::clear("flag_in_briefing");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xe6346849, Offset: 0x81e0
// Size: 0xe
function function_81bb9b99() {
    level.var_4032a278 = undefined;
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xc30b145c, Offset: 0x81f8
// Size: 0x3c
function function_183bf598() {
    level waittill(#"hash_6b714d5d8d203c49");
    level.player playrumbleonentity("damage_light");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 3, eflags: 0x2 linked
// Checksum 0x6b46d964, Offset: 0x8240
// Size: 0xa4
function function_ac8d8290(var_5d4b50a7, var_750bd08, var_e0db02bb) {
    self waittill(#"hash_733b5b04b1674e79");
    if (isdefined(var_5d4b50a7)) {
        self scene::stop("false", var_5d4b50a7);
        if (isdefined(var_750bd08)) {
            level thread scene::play(var_750bd08, var_e0db02bb);
        }
    }
    self flag::clear("flag_in_scene");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0x7adae527, Offset: 0x82f0
// Size: 0x4ae
function function_7b0516d7(var_5fc1b24e) {
    self endon(#"hash_5704775be690735b");
    level.player endon(#"death");
    self.var_ba1eee16.challenge_id = (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_" + self.animname;
    if (!isdefined(self.var_ba1eee16.v_offset)) {
        self.var_ba1eee16.v_offset = (0, 0, 8);
    }
    self.var_ba1eee16.var_f16ae1ba = 0;
    self.var_ba1eee16.var_91f6b4c9 = 0;
    self.var_ba1eee16.var_f2190d3d = "scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_dialog_" + self.animname;
    self waittill(#"hash_733b5b04b1674e79");
    self scene::stop("false", "scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_briefing");
    level thread scene::play(self.var_ba1eee16.var_f2190d3d, "zone_idle");
    if (isdefined(self.var_ba1eee16.var_91756769)) {
        wait(self.var_ba1eee16.var_91756769);
    }
    self.radius = 2.5;
    if (self haspart("j_spine4")) {
        tagname = "j_spine4";
    } else {
        tagname = undefined;
    }
    if (isdefined(var_5fc1b24e)) {
        tagname = var_5fc1b24e;
    }
    var_c93a00f2 = #"hash_1e07715d6a5dfbe0";
    while (true) {
        if (!self flag::get("flag_in_scene") && !self flag::get("flag_in_dialog") && !level flag::get("flag_player_in_dialog") && !level flag::get("flag_player_using_evidence_board")) {
            waitframe(1);
            self util::create_cursor_hint(tagname, self.var_ba1eee16.v_offset, var_c93a00f2, 160, undefined, undefined, undefined, undefined, 0);
            self prompts::function_92127496(1);
            self prompts::function_1a5e1da6(#"use", 1);
            msg = self waittill(#"trigger", #"death", #"hash_15ec42f1846ef9d0", #"deleted", #"kill_dialog");
            if (msg._notify == "trigger") {
                if (self.var_ba1eee16.s_tree dialog_tree::function_6a2674b8() > 1) {
                    choice = self.var_ba1eee16.s_tree dialog_tree::run(self, level);
                    if (choice != self.var_ba1eee16.var_cb67e512) {
                        function_53eb4779(self.var_ba1eee16.challenge_id);
                    }
                } else {
                    self thread function_aad62702();
                }
            } else {
                self util::remove_cursor_hint();
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 2, eflags: 0x0
// Checksum 0xe70df63, Offset: 0x87a8
// Size: 0x25c
function function_7942fda9(var_2bdad064, var_bdaf74c3) {
    if (isdefined(var_2bdad064[4])) {
        level flag::set(var_2bdad064[4]);
    }
    if (isdefined(var_2bdad064[5])) {
        level flag::set(var_2bdad064[5]);
    }
    if (isdefined(var_2bdad064[6])) {
        level flag::set(var_2bdad064[6]);
    }
    level flag::set("flag_dialog_player_spoke");
    level thread function_c15440f4();
    n_length = 0.01;
    if (is_true(var_bdaf74c3)) {
        level thread scene::play(self.var_ba1eee16.var_f2190d3d, var_2bdad064[2]);
        n_length = scene::function_8582657c(self.var_ba1eee16.var_f2190d3d, var_2bdad064[2]);
    }
    s_notify = self waittilltimeout(n_length, #"hash_71ceced1590e6571", #"hash_155e10099c9b39af", #"hash_70e9da56c5fa88ef");
    self flag::clear("_dialog_anim_playing");
    if (s_notify._notify === "dialog_tree_cancel_response") {
        self stopsounds();
    }
    if (isdefined(var_2bdad064[3])) {
        self [[ var_2bdad064[3] ]]();
    }
    if (is_true(var_bdaf74c3)) {
        level thread scene::play(self.var_ba1eee16.var_f2190d3d, "waiting_idle");
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x5bb33664, Offset: 0x8a10
// Size: 0x264
function function_282ccb63() {
    level.player endon(#"death");
    function_a99a7273();
    if (!isdefined(self.var_ba1eee16.var_17b38a0e)) {
        self.var_ba1eee16.var_17b38a0e = 5;
    }
    if (!isdefined(self.var_ba1eee16.var_e1eebb0b)) {
        self.var_ba1eee16.var_e1eebb0b = 2;
    }
    if (!self flag::get("flag_dialog_exhausted")) {
        thread namespace_4ed3ce47::function_c2636a93();
        if (isdefined(self.var_ba1eee16.var_82a12581)) {
            self thread function_a07bfe0f();
        }
        self util::delay(0.3, undefined, &function_3f024e94);
        level.player thread clientfield::set_to_player("set_hub_dof", self.var_ba1eee16.var_e1eebb0b);
        level.player thread clientfield::set_to_player("set_hub_fov", self.var_ba1eee16.var_17b38a0e);
        self function_bd82b8ad();
        self thread function_250d203b();
        self thread function_875a5bea();
        self flag::set("no_idle_after_fidget");
        self function_7cccaccb();
        self thread function_29699066();
        self function_fba5945d();
        self flag::wait_till("show_dialog_options");
        self childthread function_208b416c();
        return;
    }
    self thread function_aad62702();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x403094a3, Offset: 0x8c80
// Size: 0x44
function function_208b416c() {
    waitframe(1);
    self flag::clear("show_dialog_options");
    self flag::clear("show_ally_in_position");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x499b6748, Offset: 0x8cd0
// Size: 0x18c
function function_bd82b8ad() {
    level.player playgestureviewmodel("dem_lowreadyup", undefined, 1);
    level.var_4d1402c5 = undefined;
    var_5f75397b = vectornormalize(level.player.origin - self.origin);
    v_forward = anglestoforward(self.angles);
    var_3f9826ab = vectordot(var_5f75397b, v_forward);
    v_right = anglestoright(self.angles);
    var_8ecbd20e = vectordot(var_5f75397b, v_right);
    if (var_3f9826ab >= 0.7) {
        level.var_4d1402c5 = "player_in_front";
        return;
    }
    if (var_3f9826ab <= -0.7) {
        level.var_4d1402c5 = "player_in_back";
        return;
    }
    if (var_8ecbd20e <= -0.7) {
        if (isdefined(self.var_d68b6f08)) {
            level.var_4d1402c5 = self.var_d68b6f08;
        } else {
            level.var_4d1402c5 = "player_to_left";
        }
        return;
    }
    level.var_4d1402c5 = "player_to_right";
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x7038f46, Offset: 0x8e68
// Size: 0x204
function function_250d203b() {
    if (!isdefined(self.var_ba1eee16.var_142355f9)) {
        self.var_ba1eee16.var_142355f9 = array(1224, 650);
    }
    if (!isdefined(self.var_ba1eee16.var_9b7161e6)) {
        self.var_ba1eee16.var_9b7161e6 = array(1224, 650);
    }
    if (!isdefined(self.var_ba1eee16.var_e9797a7f)) {
        self.var_ba1eee16.var_e9797a7f = array(1224, 650);
    }
    if (!isdefined(self.var_ba1eee16.var_cbdef43f)) {
        self.var_ba1eee16.var_cbdef43f = array(1224, 650);
    }
    if (level.var_4d1402c5 == "player_in_front") {
        self.var_ba1eee16.var_30dc5656 = self.var_ba1eee16.var_142355f9;
    }
    if (level.var_4d1402c5 == "player_in_back") {
        self.var_ba1eee16.var_30dc5656 = self.var_ba1eee16.var_9b7161e6;
    }
    if (level.var_4d1402c5 == "player_to_right") {
        self.var_ba1eee16.var_30dc5656 = self.var_ba1eee16.var_e9797a7f;
    }
    if (level.var_4d1402c5 == "player_to_left") {
        self.var_ba1eee16.var_30dc5656 = self.var_ba1eee16.var_cbdef43f;
    }
    level dialog_tree::function_21780fc5(self.var_ba1eee16.s_tree, self.var_ba1eee16.var_30dc5656);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x5663e5dc, Offset: 0x9078
// Size: 0x2ba
function function_875a5bea() {
    if (!isdefined(self.var_ba1eee16.str_location)) {
        self.var_ba1eee16.str_location = "";
    }
    switch (level.var_4d1402c5) {
    case #"hash_f1de4922c96e25a":
        level thread scene::play("scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_dialog_player", "talk_" + self.animname + "_" + self.var_ba1eee16.str_location + "_front");
        break;
    case #"hash_6836165b69bb7334":
        level thread scene::play("scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_dialog_player", "talk_" + self.animname + "_" + self.var_ba1eee16.str_location + "_behind");
        break;
    case #"hash_4385687740de5f81":
        level thread scene::play("scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_dialog_player", "talk_" + self.animname + "_" + self.var_ba1eee16.str_location + "_right");
        break;
    case #"hash_22ab1a30afbf4174":
        level thread scene::play("scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_dialog_player", "talk_" + self.animname + "_" + self.var_ba1eee16.str_location + "_left");
        break;
    default:
        /#
            iprintlnbold("firstName");
        #/
        break;
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x2e1877e4, Offset: 0x9340
// Size: 0x3ec
function function_29699066() {
    var_ffb43fb8 = "enter_forward";
    switch (level.var_4d1402c5) {
    case #"hash_f1de4922c96e25a":
        var_ffb43fb8 = "enter_forward";
        break;
    case #"hash_6836165b69bb7334":
        var_ffb43fb8 = "enter_behind";
        break;
    case #"hash_4385687740de5f81":
        var_ffb43fb8 = "enter_right";
        break;
    case #"hash_22ab1a30afbf4174":
        var_ffb43fb8 = "enter_left";
        break;
    default:
        /#
            iprintlnbold("firstName");
        #/
        break;
    }
    level thread function_a59f5e5b(self, var_ffb43fb8);
    ret = level waittill(#"hash_727216e12f8e4bc0", #"hash_286884e81482304b");
    if (ret._notify == "dialog_tree_choice_made") {
        self flag::set("dialog_wait_for_animation");
        curanim = self._scene_object._str_current_anim;
        var_e7bc5dc8 = 0.25;
        animlength = getanimlength(curanim);
        desttime = (animlength - var_e7bc5dc8) / animlength;
        curtime = self getanimtime(curanim);
        if (curtime < desttime) {
            angle_delta = getangledelta(curanim, curtime, desttime);
            new_angles = (self.angles[0], self.angles[1] + angle_delta, self.angles[2]);
            var_8ed3320d = getmovedelta(curanim, curtime, desttime);
            self teleport(self.origin + var_8ed3320d, new_angles);
            level scene::play_from_time(self.var_ba1eee16.var_f2190d3d, var_ffb43fb8, undefined, animlength - var_e7bc5dc8, 0, 1);
        } else {
            level waittill(#"hash_286884e81482304b");
        }
        level thread scene::play(self.var_ba1eee16.var_f2190d3d, "waiting_idle");
        self function_daffdf1(self.var_ba1eee16.var_f2190d3d);
        self flag::clear("dialog_wait_for_animation");
    } else {
        self function_daffdf1(self.var_ba1eee16.var_f2190d3d);
    }
    if (ret._notify != "dialog_tree_choice_made") {
        level thread scene::play(self.var_ba1eee16.var_f2190d3d, "waiting_idle");
    }
    self flag::set("show_ally_in_position");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 2, eflags: 0x2 linked
// Checksum 0x976d581c, Offset: 0x9738
// Size: 0x50
function function_a59f5e5b(actor, var_ffb43fb8) {
    level scene::play(actor.var_ba1eee16.var_f2190d3d, var_ffb43fb8);
    level notify(#"hash_286884e81482304b");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0xba12ec30, Offset: 0x9790
// Size: 0x7a
function function_daffdf1(scene) {
    assert(isdefined(scene), "_moscow");
    s_scene = struct::get(scene, "targetname");
    s_scene.origin = self.origin;
    s_scene.angles = self.angles;
    return s_scene;
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xa5ba3dbf, Offset: 0x9818
// Size: 0x34c
function function_7b9b6d21() {
    level.player endon(#"death");
    if (!isdefined(self.var_ba1eee16.var_18674cfa) || self.var_ba1eee16.var_18674cfa) {
        level notify(#"hash_1745d1d7e74ea81b");
        level thread namespace_4ed3ce47::function_882509d5();
        if (isdefined(self.var_ba1eee16.var_d0816878)) {
            self thread function_f62f3fea();
        }
        level flag::set("flag_dialog_player_spoke");
        if (!self flag::get("flag_dialog_exhausted")) {
            if (!isdefined(self.var_ba1eee16.var_6edf22e1) || !self.var_ba1eee16.var_6edf22e1) {
                self thread function_8c594bc7();
            }
            if (self.animname == "lazar" && (isdefined(level.var_f5552371) ? level.var_f5552371 : "") == "post_takedown" || self.animname == "sims" && (isdefined(level.var_f5552371) ? level.var_f5552371 : "") == "post_armada" || self.animname == "adler" && (isdefined(level.var_f5552371) ? level.var_f5552371 : "") == "post_armada") {
                level thread function_4075cc31(isdefined(level.var_f5552371) ? level.var_f5552371 : "", self.animname);
            }
            level thread function_6441ea33();
            level flag::clear("flag_dialog_asked_question");
            level flag::clear("flag_dialog_nevermind");
            level flag::clear("flag_dialog_player_spoke");
        }
        if (isdefined(self.var_ba1eee16.var_85ed2b41) && level flag::get_all(self.var_ba1eee16.var_85ed2b41)) {
            self thread function_28c8705b();
        }
        return;
    }
    level util::delay(6, undefined, &flag::clear, "flag_player_in_dialog");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 2, eflags: 0x2 linked
// Checksum 0xe0b1272a, Offset: 0x9b70
// Size: 0x1e2
function function_4075cc31(var_a2d88df3, var_7a2bd824) {
    switch (level.var_4d1402c5) {
    case #"hash_f1de4922c96e25a":
        level exploder::stop_exploder("exp_" + var_a2d88df3 + "_" + var_7a2bd824 + "_dialog_front");
        break;
    case #"hash_6836165b69bb7334":
        level exploder::stop_exploder("exp_" + var_a2d88df3 + "_" + var_7a2bd824 + "_dialog_back");
        break;
    case #"hash_4385687740de5f81":
        level exploder::stop_exploder("exp_" + var_a2d88df3 + "_" + var_7a2bd824 + "_dialog_right");
        break;
    case #"hash_22ab1a30afbf4174":
        level exploder::stop_exploder("exp_" + var_a2d88df3 + "_" + var_7a2bd824 + "_dialog_left");
        break;
    default:
        level exploder::stop_exploder("exp_" + var_a2d88df3 + "_" + var_7a2bd824 + "_dialog_front");
        /#
            iprintlnbold("<unknown string>");
        #/
        break;
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xc6a76210, Offset: 0x9d60
// Size: 0x20c
function function_8c594bc7() {
    level util::delay(3, undefined, &flag::clear, "flag_player_in_dialog");
    switch (level.var_4d1402c5) {
    case #"hash_f1de4922c96e25a":
        level scene::play(self.var_ba1eee16.var_f2190d3d, "exit_forward");
        break;
    case #"hash_6836165b69bb7334":
        level scene::play(self.var_ba1eee16.var_f2190d3d, "exit_behind");
        break;
    case #"hash_4385687740de5f81":
        level scene::play(self.var_ba1eee16.var_f2190d3d, "exit_right");
        break;
    case #"hash_22ab1a30afbf4174":
        level scene::play(self.var_ba1eee16.var_f2190d3d, "exit_left");
        break;
    default:
        level scene::play(self.var_ba1eee16.var_f2190d3d, "exit_forward");
        /#
            iprintlnbold("<unknown string>");
        #/
        break;
    }
    level thread scene::play(self.var_ba1eee16.var_f2190d3d, "zone_idle");
    self util::delay(0.1, undefined, &flag::clear, "flag_in_dialog");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x28e2cf07, Offset: 0x9f78
// Size: 0x9c
function function_6441ea33() {
    s_scene = struct::get("scene_hub_player_dialog_exit", "targetname");
    s_scene.origin = level.player.origin;
    s_scene.angles = level.player.angles;
    level.player thread function_30be2431();
    s_scene scene::play("scene_hub_player_dialog_exit");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x7db23bb6, Offset: 0xa020
// Size: 0x5c
function function_30be2431() {
    wait(0.5);
    level.player clientfield::set_to_player("set_hub_fov", 2);
    level.player clientfield::set_to_player("set_hub_dof", 1);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xb3a46f32, Offset: 0xa088
// Size: 0x66
function function_28c8705b() {
    level flag::wait_till_clear("flag_player_in_dialog");
    self notify(#"hash_5704775be690735b");
    self flag::set("flag_dialog_exhausted");
    self notify(#"hash_733b5b04b1674e79");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x69f49aba, Offset: 0xa0f8
// Size: 0x2c0
function function_3f024e94() {
    if (!isdefined(self.var_ba1eee16.var_c5c9acca)) {
        self flag::wait_till("show_ally_in_position");
        self flag::set("show_dialog_options");
        return;
    }
    if (self flag::get("flag_all_greeting_vo_delivered")) {
        if (self.var_ba1eee16.var_c5c9acca.size > 2) {
            self.var_ba1eee16.var_f16ae1ba = randomintrange(1, self.var_ba1eee16.var_c5c9acca.size);
        } else {
            self.var_ba1eee16.var_f16ae1ba = self.var_ba1eee16.var_c5c9acca.size - 1;
        }
    }
    var_275fe207 = self.var_ba1eee16.var_c5c9acca[self.var_ba1eee16.var_f16ae1ba];
    if (isdefined(var_275fe207)) {
        if (!isarray(var_275fe207[0])) {
            var_275fe207 = array(var_275fe207);
        }
        for (i = 0; i < var_275fe207.size; i++) {
            var_996fb686 = var_275fe207[i];
            if (isdefined(var_996fb686[1])) {
                wait(var_996fb686[1]);
            }
            greeter = self;
            if (isdefined(var_996fb686[3])) {
                greeter = var_996fb686[3];
                greeter lookatentity(level.player, 1);
            }
            greeter dialogue::function_47b06180();
            greeter dialogue::queue(var_996fb686[0]);
            if (isdefined(var_996fb686[2])) {
                wait(var_996fb686[2]);
            }
        }
    }
    self flag::set("show_dialog_options");
    if (self.var_ba1eee16.var_f16ae1ba >= self.var_ba1eee16.var_c5c9acca.size - 1) {
        self flag::set("flag_all_greeting_vo_delivered");
        return;
    }
    self.var_ba1eee16.var_f16ae1ba++;
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x0
// Checksum 0x53ed8698, Offset: 0xa3c0
// Size: 0x250
function function_df035a54() {
    if (!isdefined(self.var_ba1eee16.var_274d9415)) {
        self.var_ba1eee16.var_274d9415 = undefined;
    }
    if (!isdefined(self.var_ba1eee16.var_97e686a7)) {
        return;
    }
    level flag::set("flag_dialog_player_spoke");
    if (self flag::get("flag_all_parting_vo_delivered")) {
        if (self.var_ba1eee16.var_97e686a7.size > 1) {
            self.var_ba1eee16.var_c97a6a24 = randomintrange(0, self.var_ba1eee16.var_97e686a7.size);
        } else {
            self.var_ba1eee16.var_c97a6a24 = 0;
        }
    }
    if (isdefined(self.var_ba1eee16.var_97e686a7[self.var_ba1eee16.var_c97a6a24])) {
        self dialogue::function_47b06180();
        if (isdefined(self.var_ba1eee16.var_97e686a7[self.var_ba1eee16.var_c97a6a24][1])) {
            self thread util::delay(self.var_ba1eee16.var_97e686a7[self.var_ba1eee16.var_c97a6a24][1], undefined, &dialogue::queue, self.var_ba1eee16.var_97e686a7[self.var_ba1eee16.var_c97a6a24][0]);
        } else {
            self dialogue::queue(self.var_ba1eee16.var_97e686a7[self.var_ba1eee16.var_c97a6a24][0]);
        }
    }
    if (self.var_ba1eee16.var_c97a6a24 >= self.var_ba1eee16.var_97e686a7.size - 1) {
        self flag::set("flag_all_parting_vo_delivered");
        return;
    }
    self.var_ba1eee16.var_c97a6a24++;
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x94dacf1a, Offset: 0xa618
// Size: 0x224
function function_aad62702() {
    if (!isdefined(self.var_ba1eee16.var_962cbf19)) {
        return;
    }
    var_8c3f52f6 = 6;
    self flag::set("flag_in_dialog");
    talker = self;
    var_5d4fba13 = self.var_ba1eee16.var_962cbf19[self.var_ba1eee16.var_91f6b4c9];
    if (isdefined(var_5d4fba13)) {
        self dialogue::function_47b06180();
        if (isdefined(var_5d4fba13[2])) {
            talker = var_5d4fba13[2];
        }
        if (isdefined(var_5d4fba13[1])) {
            talker thread util::delay(var_5d4fba13[1], undefined, &dialogue::queue, var_5d4fba13[0]);
        } else {
            talker dialogue::queue(var_5d4fba13[0]);
        }
    }
    if (self.var_ba1eee16.var_91f6b4c9 >= self.var_ba1eee16.var_962cbf19.size - 1) {
        self.var_ba1eee16.var_91f6b4c9 = 0;
    } else {
        self.var_ba1eee16.var_91f6b4c9++;
    }
    self util::delay(var_8c3f52f6, undefined, &flag::clear, "flag_in_dialog");
    if (!is_true(self.var_ba1eee16.var_89db7e3d) && !self flag::get("flag_fidgeting")) {
        talker lookatentity(level.player, 1);
        wait(3);
        talker lookatentity();
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x8cbcfa00, Offset: 0xa848
// Size: 0x44
function function_c15440f4() {
    level flag::set("flag_dialog_asked_question");
    level flag::clear("flag_dialog_reset");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x703fd47, Offset: 0xa898
// Size: 0x44
function function_fba5945d() {
    level flag::clear("flag_dialog_asked_question");
    level flag::set("flag_dialog_reset");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xe62aa7db, Offset: 0xa8e8
// Size: 0x44
function function_a99a7273() {
    level flag::set("flag_player_in_dialog");
    self flag::set("flag_in_dialog");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x0
// Checksum 0x82361c01, Offset: 0xa938
// Size: 0x44
function function_8af85155() {
    level flag::clear("flag_player_in_dialog");
    self flag::clear("flag_in_dialog");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x4cd0ca8a, Offset: 0xa988
// Size: 0x44
function function_a07bfe0f() {
    self util::delay(self.var_ba1eee16.var_82a12581, undefined, &lookatentity, level.player, 1);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x9a7463dd, Offset: 0xa9d8
// Size: 0x34
function function_f62f3fea() {
    self util::delay(self.var_ba1eee16.var_d0816878, undefined, &lookatentity);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xabafd690, Offset: 0xaa18
// Size: 0x22
function function_c9dc0e79() {
    var_ea95c1e7 = util::function_875955a();
    return var_ea95c1e7;
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 3, eflags: 0x0
// Checksum 0x9a01e6a6, Offset: 0xaa48
// Size: 0x34
function function_abcc7f5c(var_e42e6f3e, var_3d1c64c9, var_ef555baf) {
    util::function_c76fa9e1(var_e42e6f3e, var_3d1c64c9, var_ef555baf);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 4, eflags: 0x2 linked
// Checksum 0x8ebeca09, Offset: 0xaa88
// Size: 0x1a8
function function_5bd9de0f(a_str_vo, str_notify, str_flagname, var_9bff1f30) {
    for (var_5b9b69c4 = 0; true; var_5b9b69c4++) {
        self waittill(str_notify);
        if (level flag::get("flag_player_in_dialog") || isdefined(str_flagname) && level flag::get(str_flagname) || isdefined(var_9bff1f30) && level flag::get(var_9bff1f30)) {
            waitframe(1);
            continue;
        }
        if (self flag::get("flag_all_ambient_vo_delivered")) {
            if (a_str_vo.size - 1 >= 1) {
                var_5b9b69c4 = randomintrange(1, a_str_vo.size - 1);
            } else {
                var_5b9b69c4 = 0;
            }
        }
        if (isdefined(a_str_vo[var_5b9b69c4])) {
            if (isdefined(a_str_vo[var_5b9b69c4][1])) {
                wait(a_str_vo[var_5b9b69c4][1]);
            }
            self dialogue::queue(a_str_vo[var_5b9b69c4][0]);
        }
        if (var_5b9b69c4 >= a_str_vo.size - 1) {
            self flag::set("flag_all_ambient_vo_delivered");
            continue;
        }
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xa7f5bd6a, Offset: 0xac38
// Size: 0xa8
function function_a422a4a9() {
    foreach (var_3d43d7b8 in level.a_ai_allies) {
        while (!isdefined(var_3d43d7b8[0].var_ba1eee16)) {
            waitframe(1);
        }
        var_3d43d7b8[0] thread function_159b3e();
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x7019b255, Offset: 0xace8
// Size: 0x240
function function_159b3e() {
    level.player endon(#"death");
    self endon(#"hash_288f89c41f44b420");
    var_9a2dd7eb = 0;
    str_scene = "scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_dialog_" + self.animname;
    a_str_shots = level scene::get_all_shot_names(str_scene);
    for (i = 0; i < a_str_shots.size; i++) {
        if (a_str_shots[i] == "fidget_" + string(var_9a2dd7eb + 1)) {
            var_9a2dd7eb++;
        }
    }
    if (var_9a2dd7eb > 0 && isdefined(self)) {
        while (true) {
            self flag::clear("fidgeting_done");
            self flag::clear("flag_fidget_interrupt_start");
            wait(randomintrange(12, 24));
            while (distance2d(self.origin, level.player.origin) < 24) {
                waitframe(1);
            }
            if (self function_11640618()) {
                var_7868cbd8 = function_a70e8e05(str_scene, var_9a2dd7eb);
                if (self function_11640618()) {
                    self function_68f8c016(str_scene, var_7868cbd8);
                    self flag::wait_till_clear("flag_fidgeting");
                }
            }
        }
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xe482794b, Offset: 0xaf30
// Size: 0x66
function function_11640618() {
    return !self flag::get("flag_in_dialog") && !self flag::get("flag_in_scene") && !self flag::get("flag_delivering_exhaustion_vo");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 2, eflags: 0x2 linked
// Checksum 0x6d35eda4, Offset: 0xafa0
// Size: 0x16e
function function_a70e8e05(str_scene, var_9a2dd7eb) {
    level.player endon(#"death");
    var_7868cbd8 = randomintrange(1, var_9a2dd7eb + 1);
    var_aa19e187 = distance2d(self.origin, level.player.origin);
    var_65e24a6c = var_7868cbd8;
    while (true) {
        var_229db2f = scene::function_8582657c(str_scene, "fidget_" + string(var_7868cbd8));
        var_63293649 = 8 * var_229db2f;
        if (var_aa19e187 > var_63293649) {
            break;
        }
        var_7868cbd8 += 1;
        if (var_7868cbd8 > var_9a2dd7eb) {
            var_7868cbd8 = 1;
        }
        if (var_7868cbd8 == var_65e24a6c) {
            wait(2);
            var_aa19e187 = distance2d(self.origin, level.player.origin);
        }
    }
    return var_7868cbd8;
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 2, eflags: 0x2 linked
// Checksum 0xc781e29c, Offset: 0xb118
// Size: 0xdc
function function_68f8c016(str_scene, var_7868cbd8) {
    self endon(#"hash_7d22c6f32f3a3cdb");
    self flag::set("flag_fidgeting");
    self flag::clear("no_idle_after_fidget");
    self thread function_8462032a(str_scene, var_7868cbd8);
    level scene::play(str_scene, "fidget_" + string(var_7868cbd8));
    self notify(#"hash_3bf08c93cc60b82d");
    self thread function_4932aa90(str_scene);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 2, eflags: 0x2 linked
// Checksum 0x2fb3eb19, Offset: 0xb200
// Size: 0x134
function function_8462032a(str_scene, var_7868cbd8) {
    self endon(#"hash_288f89c41f44b420");
    self notify(#"hash_3bf08c93cc60b82d");
    self endon(#"hash_3bf08c93cc60b82d");
    self flag::wait_till("flag_fidget_interrupt_start");
    self notify(#"hash_7d22c6f32f3a3cdb");
    var_49827ac8 = function_6d085bdc(str_scene);
    self thread function_7c3ca9b3();
    level scene::play_from_time(str_scene, "fidget_" + string(var_7868cbd8), var_49827ac8, getanimlength(self._scene_object._str_current_anim) - 0.25, 0, 1);
    self thread function_4932aa90(str_scene);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0x7978402d, Offset: 0xb340
// Size: 0x9c
function function_4932aa90(str_scene) {
    self endon(#"hash_288f89c41f44b420");
    if (!self flag::get("no_idle_after_fidget")) {
        level thread scene::play(str_scene, "zone_idle");
    }
    self flag::set("fidgeting_done");
    self flag::clear("flag_fidgeting");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0x607ff8cd, Offset: 0xb3e8
// Size: 0x42
function function_6d085bdc(str_scene) {
    s_bundle = struct::get_array(str_scene, "scriptbundlename");
    return s_bundle[0].scene_ents;
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x4f503772, Offset: 0xb438
// Size: 0xcc
function function_7cccaccb() {
    if (self flag::get("flag_fidgeting")) {
        var_af1678fb = self getanimtime(self.str_current_anim);
        var_c580e4db = getanimlength(self.str_current_anim);
        var_77da992f = var_af1678fb * var_c580e4db;
        if (var_c580e4db - var_77da992f > 2) {
            self flag::set("flag_fidget_interrupt_start");
        }
        self flag::wait_till_timeout(2, "fidgeting_done");
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xcc40a493, Offset: 0xb510
// Size: 0x8c
function function_7c3ca9b3() {
    if (is_true(self.var_add1d491)) {
        level thread lui::screen_fade_out(0.25, "black");
        self flag::wait_till("fidgeting_done");
        level thread lui::screen_fade_in(0.25, "black");
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0xc74ee92e, Offset: 0xb5a8
// Size: 0x54
function function_ea259f56(var_8ced85ea) {
    level waittill(#"hash_92004b21ffa8edc");
    level thread function_877b571();
    level thread function_1dc743f6(var_8ced85ea);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x2ff2b45d, Offset: 0xb608
// Size: 0x2d8
function function_877b571() {
    while (true) {
        var_385a06f0 = struct::get("struct_obj_computer2", "targetname");
        tag = spawn("script_model", var_385a06f0.origin);
        tag setmodel("tag_origin");
        tag util::create_cursor_hint("tag_origin", (0, 0, 0), #"hash_4a1fc2e164f674c3", 48);
        tag waittill(#"trigger");
        level.player freezecontrols(1);
        level.player setcinematicmotionoverride("cinematicmotion_static");
        level thread function_1c7c20ac();
        tag util::remove_cursor_hint();
        tag delete();
        level.player stopgestureviewmodel("dem_lowreadyup", 1);
        level scene::play("scene_hub_consoles", "bo1_pc_enter");
        level thread scene::play("scene_hub_consoles", "bo1_pc_loop");
        level.player clientfield::set_to_player("computer_terminal_switch", 1);
        level.player namespace_61e6d095::function_b0bad5ff();
        level.player playgestureviewmodel("dem_lowreadyup");
        level.player clientfield::set_to_player("computer_terminal_switch", 0);
        level scene::play("scene_hub_consoles", "bo1_pc_exit");
        level.player freezecontrols(0);
        level.player setcinematicmotionoverride("default_cinematicmotion");
        level thread function_dd8cba4d();
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xf0f569c, Offset: 0xb8e8
// Size: 0x1fc
function function_1c7c20ac() {
    namespace_c8e236da::removelist();
    level.var_af143f1d = [];
    if (level.player gamepadusedlast()) {
        if (!isdefined(level.var_af143f1d)) {
            level.var_af143f1d = [];
        } else if (!isarray(level.var_af143f1d)) {
            level.var_af143f1d = array(level.var_af143f1d);
        }
        level.var_af143f1d[level.var_af143f1d.size] = #"hash_dccc69fc3b473fe";
    } else {
        if (!isdefined(level.var_af143f1d)) {
            level.var_af143f1d = [];
        } else if (!isarray(level.var_af143f1d)) {
            level.var_af143f1d = array(level.var_af143f1d);
        }
        level.var_af143f1d[level.var_af143f1d.size] = #"hash_2cd7687452ec14c9";
    }
    foreach (item in level.var_af143f1d) {
        namespace_c8e236da::function_ebf737f8(item);
    }
    namespace_c8e236da::function_f7362969(hash("computer_bo_hint"), 0);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xc1023487, Offset: 0xbaf0
// Size: 0x44
function function_dd8cba4d() {
    namespace_c8e236da::removelist();
    namespace_c8e236da::function_f7362969(hash("computer_bo_hint"), 1);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0x478cacdd, Offset: 0xbb40
// Size: 0x210
function function_1dc743f6(var_8ced85ea) {
    if (issubstr(var_8ced85ea, "takedown")) {
        return;
    }
    function_19898473();
    while (true) {
        var_385a06f0 = struct::get("struct_obj_computer", "targetname");
        tag = spawn("script_model", var_385a06f0.origin);
        tag setmodel("tag_origin");
        tag util::create_cursor_hint("tag_origin", (0, 0, 0), #"hash_4a1fc2e164f674c3", 48);
        tag waittill(#"trigger");
        tag util::remove_cursor_hint();
        tag delete();
        level.player stopgestureviewmodel("dem_lowreadyup", 1);
        level scene::play("scene_hub_consoles", "kgb_pc_enter");
        level thread scene::play("scene_hub_consoles", "kgb_pc_loop");
        level.player setcinematicmotionoverride("cinematicmotion_static");
        level flag::set("using_computer");
        function_140d2db3();
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x6 linked
// Checksum 0xf8695290, Offset: 0xbd58
// Size: 0x94
function private function_19898473() {
    namespace_6f1d35e1::function_eea42dd9(#"hash_e3a6805fefd7fcc");
    namespace_6f1d35e1::function_487b4340(#"hash_492a80794cd1370f", 1, 2);
    namespace_6f1d35e1::function_4951a2c8(1, 5);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(2, 5);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x70567b76, Offset: 0xbdf8
// Size: 0x6c
function function_140d2db3() {
    namespace_6f1d35e1::function_b2911127(0);
    wait(0.5);
    namespace_6f1d35e1::function_eea42dd9(#"hash_e3a6805fefd7fcc");
    level thread function_ecbc1103();
    function_141307f2();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x4385d363, Offset: 0xbe70
// Size: 0x104
function function_ecbc1103() {
    namespace_6f1d35e1::function_487b4340(#"hash_75fc2290ed48b0cf", 1, 2);
    namespace_6f1d35e1::function_5d2e6f6a(1);
    namespace_6f1d35e1::function_4951a2c8(1, 5);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(2, 15);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(3, 5);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(4, 20);
    level waittill(#"typing_complete");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x19f9d60, Offset: 0xbf80
// Size: 0x24
function function_141307f2() {
    function_cdc18a32();
    function_7032bcc6();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xc08142c7, Offset: 0xbfb0
// Size: 0x7fc
function function_cdc18a32() {
    if (level flag::get("already_logged_in")) {
        level thread function_c59f3e2f();
    }
    level flag::set("already_logged_in");
    level.var_2b60cc83 = dialog_tree::function_82b16606(undefined, undefined, 1, 1);
    level.var_2b60cc83 dialog_tree::function_6bb91351(1);
    level.var_2b60cc83 dialog_tree::function_6bbbf87("unlock_recent_topics", #"hash_4b6ddab2b4daa14b", undefined, undefined, undefined, 1, undefined, "forever", &function_3bc532ac);
    level.var_2b60cc83 dialog_tree::function_6bbbf87("unlock_kgb_archives", #"hash_3bb9bcb259b6eaeb", undefined, undefined, undefined, 1, undefined, "forever", &function_48ea2ebb);
    level.var_2b60cc83 dialog_tree::function_58d27b23(#"hash_4b4d3305f197029b", undefined, undefined, undefined, 1, undefined, "forever", &function_66faa9ee);
    level.var_2b60cc83 dialog_tree::function_58d27b23(#"hash_5679d673b120d819", undefined, undefined, undefined, 1, undefined, "forever", &exit_func);
    level.var_38955802 = dialog_tree::function_82b16606(undefined, undefined, 1, 1);
    level.var_38955802 dialog_tree::function_6bb91351(1);
    level.var_38955802 dialog_tree::function_6bbbf87("unlock_recent_topic1", #"hash_7fa1f332c5af5ef5", undefined, undefined, undefined, 1, undefined, "forever", &function_45906c7e, "cp_ger_hub_recent_topic_adler_1");
    level.var_38955802 dialog_tree::function_6bbbf87("unlock_recent_topic2", #"hash_7fa1f032c5af59dc", undefined, undefined, undefined, 1, undefined, "forever", &function_45906c7e, "cp_ger_hub_recent_topic_adler_2");
    level.var_38955802 dialog_tree::function_6bbbf87("unlock_recent_topic3", #"hash_7fa1f132c5af5b8f", undefined, undefined, undefined, 1, undefined, "forever", &function_45906c7e, "cp_ger_hub_recent_topic_adler_3");
    level.var_38955802 dialog_tree::function_6bbbf87("unlock_recent_topic4", #"hash_7fa1ee32c5af5676", undefined, undefined, undefined, 1, undefined, "forever", &function_45906c7e, "cp_ger_hub_recent_topic_adler_4");
    level.var_38955802 dialog_tree::function_6bbbf87("unlock_recent_topic5", #"hash_7fa1ef32c5af5829", undefined, undefined, undefined, 1, undefined, "forever", &function_45906c7e, "cp_ger_hub_recent_topic_adler_5");
    level.var_38955802 dialog_tree::function_6bbbf87("unlock_recent_topics", #"hash_1d6bf06cb7318016", undefined, undefined, undefined, 1, undefined, "forever", &function_7032bcc6);
    level.var_8883ad90 = dialog_tree::function_82b16606(undefined, undefined, 1, 1);
    level.var_8883ad90 dialog_tree::function_6bb91351(1);
    level.var_8883ad90 dialog_tree::function_58d27b23(#"hash_2e54e1701e5e69bf", undefined, undefined, undefined, 1, undefined, "forever", &function_ef3775d7);
    level.var_8883ad90 dialog_tree::function_58d27b23(#"hash_884c0b0de4368bc", undefined, undefined, undefined, 1, undefined, "forever", &function_1967c4b6);
    level.var_8883ad90 dialog_tree::function_58d27b23(#"hash_5af22c9d13a055f5", undefined, undefined, undefined, 1, undefined, "forever", &function_2d5943c4);
    level.var_8883ad90 dialog_tree::function_58d27b23(#"hash_1d6bf06cb7318016", undefined, undefined, undefined, 1, undefined, "forever", &function_7032bcc6);
    level.var_56aa7f76 = dialog_tree::function_82b16606(undefined, undefined, 1, 1);
    level.var_56aa7f76 dialog_tree::function_6bb91351(1);
    level.var_56aa7f76 dialog_tree::function_58d27b23(#"hash_7b0847d882682cf", undefined, undefined, undefined, 1, undefined, "forever", &function_b441e593, "bio_adler");
    level.var_56aa7f76 dialog_tree::function_58d27b23(#"hash_31ed6914f5c0d83", undefined, undefined, undefined, 1, undefined, "forever", &function_b441e593, "bio_lazar");
    level.var_56aa7f76 dialog_tree::function_58d27b23(#"hash_44f860a52f8f6fe5", undefined, undefined, undefined, 1, undefined, "forever", &function_b441e593, "bio_mason");
    level.var_56aa7f76 dialog_tree::function_58d27b23(#"hash_9970bd7e2a03f9d", undefined, undefined, undefined, 1, undefined, "forever", &function_b441e593, "bio_park");
    level.var_56aa7f76 dialog_tree::function_58d27b23(#"hash_49ce3bdee0310821", undefined, undefined, undefined, 1, undefined, "forever", &function_b441e593, "bio_sims");
    level.var_56aa7f76 dialog_tree::function_58d27b23(#"hash_4399f6893d341e5d", undefined, undefined, undefined, 1, undefined, "forever", &function_b441e593, "bio_woods");
    level.var_56aa7f76 dialog_tree::function_58d27b23(#"hash_1d6bf06cb7318016", undefined, undefined, undefined, 1, undefined, "forever", &function_7032bcc6);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xb80ea037, Offset: 0xc7b8
// Size: 0x34
function function_7032bcc6() {
    level thread function_ecbc1103();
    level.var_2b60cc83 thread dialog_tree::run();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x2e70dad0, Offset: 0xc7f8
// Size: 0x7c
function function_c59f3e2f() {
    wait(1);
    namespace_6f1d35e1::function_487b4340(#"hash_3d1ba8ca98db9b7");
    namespace_6f1d35e1::function_5d2e6f6a(6);
    namespace_6f1d35e1::function_4951a2c8(1, 10);
    wait(1);
    namespace_6f1d35e1::function_4951a2c8(2, 10);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0xdd63c31b, Offset: 0xc880
// Size: 0x40a
function function_3f03464(var_8ced85ea) {
    switch (var_8ced85ea) {
    case #"post_armada":
        level flag::set("unlock_kgb_archives");
        level flag::set("unlock_recent_topics");
        level flag::set("unlock_recent_topic1");
        setdvar(#"hash_dfcfdb3bf28da5e", "02:16:12 02/24/81");
        break;
    case #"post_cuba":
        level flag::set("unlock_kgb_archives");
        level flag::set("unlock_recent_topic_adler4");
        setdvar(#"hash_dfcfdb3bf28da5e", "15:29:00 03/14/81");
        break;
    case #"hash_4738825a1fd6beb8":
        level flag::set("unlock_kgb_archives");
        level flag::set("unlock_recent_topic_adler4");
        setdvar(#"hash_dfcfdb3bf28da5e", "14:34:00 03/14/81");
        break;
    case #"hash_74ffc12b5f6d78f0":
        level flag::set("unlock_kgb_archives");
        level flag::set("unlock_recent_topic_adler4");
        break;
    case #"post_yamantau":
        level flag::set("unlock_kgb_archives");
        level flag::set("unlock_recent_topics");
        level flag::set("unlock_recent_topic1");
        level flag::set("unlock_recent_topic2");
        level flag::set("unlock_recent_topic3");
        level flag::set("unlock_recent_topic4");
        setdvar(#"hash_dfcfdb3bf28da5e", "04:02:00 03/07/81");
        break;
    case #"post_kgb":
        level flag::set("unlock_kgb_archives");
        level flag::set("unlock_recent_topics");
        level flag::set("unlock_recent_topic1");
        level flag::set("unlock_recent_topic2");
        level flag::set("unlock_recent_topic3");
        level flag::set("unlock_recent_topic4");
        level flag::set("unlock_recent_topic5");
        setdvar(#"hash_dfcfdb3bf28da5e", "12:52:00 03/12/81");
        break;
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x3860aa91, Offset: 0xcc98
// Size: 0x114
function function_3bc532ac() {
    namespace_6f1d35e1::function_487b4340(#"hash_28cb793695e45207", 1, 2);
    namespace_6f1d35e1::function_5d2e6f6a(8);
    namespace_6f1d35e1::function_4951a2c8(1, 5);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(2, 15);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(3, 5);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(4, 20);
    level waittill(#"typing_complete");
    function_743cb9de();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x6 linked
// Checksum 0x9d869310, Offset: 0xcdb8
// Size: 0xac
function private function_45906c7e(var_d4d5c0ea) {
    namespace_6f1d35e1::function_5d2e6f6a(0);
    namespace_6f1d35e1::function_487b4340(hash(var_d4d5c0ea));
    namespace_6f1d35e1::function_5d2e6f6a(12);
    namespace_6f1d35e1::function_4951a2c8(1, 50, 1);
    level waittill(#"typing_complete");
    function_743cb9de();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x429a476a, Offset: 0xce70
// Size: 0x2c
function function_48ea2ebb() {
    level thread function_c59f3e2f();
    function_4b8cbb10();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x2e505ed8, Offset: 0xcea8
// Size: 0xd4
function function_ef3775d7() {
    snd::play("evt_kgb_vault_computer_enter_cmd");
    namespace_6f1d35e1::function_487b4340(#"hash_64c36c1200285612");
    namespace_6f1d35e1::function_5d2e6f6a(9);
    namespace_6f1d35e1::function_4951a2c8(1, 50, 1);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(2, 100, 1);
    level waittill(#"typing_complete");
    function_4b8cbb10();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x3334013b, Offset: 0xcf88
// Size: 0x124
function function_1967c4b6() {
    snd::play("evt_kgb_vault_computer_enter_cmd");
    namespace_6f1d35e1::function_487b4340(#"hash_208fbf208175ea49");
    namespace_6f1d35e1::function_5d2e6f6a(5);
    namespace_6f1d35e1::function_4951a2c8(1, 100);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(2, 100);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(3, 50);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(4, 50);
    level waittill(#"typing_complete");
    function_4b8cbb10();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xbbc9d8e0, Offset: 0xd0b8
// Size: 0x204
function function_2d5943c4() {
    snd::play("evt_kgb_vault_computer_enter_cmd");
    namespace_6f1d35e1::function_14291ddf(#"hash_1ae34f51544931aa");
    namespace_6f1d35e1::function_487b4340(#"hash_375a7b8b525491c6");
    namespace_6f1d35e1::function_93dd719c(#"hash_ca9fa49e8a95cdc", 1);
    namespace_6f1d35e1::function_5d2e6f6a(11);
    wait(1);
    namespace_6f1d35e1::function_4951a2c8(1, 50);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(2, 50);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(3, 50);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(4, 50);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(5, 50);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(6, 50);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(7, 30);
    level waittill(#"typing_complete");
    function_4b8cbb10();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x6 linked
// Checksum 0x39b27c8e, Offset: 0xd2c8
// Size: 0x3c
function private function_4b8cbb10(*var_d9b2aff4) {
    level.var_8883ad90 thread dialog_tree::run(undefined, undefined, undefined, undefined, 0, 4, 1);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x6 linked
// Checksum 0xb4ad7a7, Offset: 0xd310
// Size: 0x4c
function private function_74996ba9(var_d9b2aff4 = 7) {
    level.var_56aa7f76 thread dialog_tree::run(undefined, undefined, undefined, undefined, 0, var_d9b2aff4, 1);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x6 linked
// Checksum 0xec686a4d, Offset: 0xd368
// Size: 0x4c
function private function_743cb9de(var_d9b2aff4 = 6) {
    level.var_38955802 thread dialog_tree::run(undefined, undefined, undefined, undefined, 0, var_d9b2aff4, 1);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x6 linked
// Checksum 0xccc5b803, Offset: 0xd3c0
// Size: 0x3bc
function private function_b441e593(var_321b9d8c) {
    if (!isdefined(level.var_408db1a3)) {
        level.var_408db1a3 = [];
        var_1856af9d = getscriptbundle(#"hash_16d933c6115aa9ba");
        foreach (var_fdf21313 in var_1856af9d.profiles) {
            var_f3cb5eb6 = [];
            var_f3cb5eb6[#"firstname"] = var_fdf21313.var_34d094eb;
            var_f3cb5eb6[#"lastname"] = var_fdf21313.var_705af76d;
            var_f3cb5eb6[#"hash_5764c083e5bd564c"] = var_fdf21313.var_24cb87ef;
            var_f3cb5eb6[#"hash_33186aa99cabddc3"] = var_fdf21313.var_ba5fd550;
            var_f3cb5eb6[#"dateofbirth"] = var_fdf21313.var_bd730750;
            var_f3cb5eb6[#"hash_224b426faac22506"] = var_fdf21313.var_d4beb13;
            var_f3cb5eb6[#"occupation"] = var_fdf21313.occupation;
            var_f3cb5eb6[#"hash_13fa65af7072c7fe"] = var_fdf21313.var_bc8da67d;
            var_f3cb5eb6[#"hash_5e684e949780dbff"] = var_fdf21313.var_bf761850;
            level.var_408db1a3[var_fdf21313.ref_name] = var_f3cb5eb6;
        }
    }
    var_f3cb5eb6 = level.var_408db1a3[var_321b9d8c];
    namespace_6f1d35e1::function_5d2e6f6a(0);
    namespace_6f1d35e1::function_14291ddf(var_f3cb5eb6[#"hash_33186aa99cabddc3"]);
    namespace_6f1d35e1::function_ca5c7f26("firstName", var_f3cb5eb6[#"firstname"]);
    namespace_6f1d35e1::function_ca5c7f26("lastName", var_f3cb5eb6[#"lastname"]);
    namespace_6f1d35e1::function_ca5c7f26("middleInitial", var_f3cb5eb6[#"hash_5764c083e5bd564c"]);
    namespace_6f1d35e1::function_ca5c7f26("dateOfBirth", var_f3cb5eb6[#"dateofbirth"]);
    namespace_6f1d35e1::function_ca5c7f26("placeOfBirth", var_f3cb5eb6[#"hash_224b426faac22506"]);
    namespace_6f1d35e1::function_ca5c7f26("occupation", var_f3cb5eb6[#"occupation"]);
    namespace_6f1d35e1::function_ca5c7f26("militaryBackground", var_f3cb5eb6[#"hash_13fa65af7072c7fe"]);
    namespace_6f1d35e1::function_ca5c7f26("militaryBackgroundDesc", var_f3cb5eb6[#"hash_5e684e949780dbff"]);
    namespace_6f1d35e1::function_5d2e6f6a(10);
    function_74996ba9();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x7024210d, Offset: 0xd788
// Size: 0x114
function function_66faa9ee() {
    namespace_6f1d35e1::function_487b4340(#"hash_6a91cb963114fbba", 1, 2);
    namespace_6f1d35e1::function_5d2e6f6a(8);
    namespace_6f1d35e1::function_4951a2c8(1, 5);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(2, 15);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(3, 5);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(4, 20);
    level waittill(#"typing_complete");
    function_74996ba9();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xeb820a88, Offset: 0xd8a8
// Size: 0x144
function exit_func() {
    level.player playgestureviewmodel("dem_lowreadyup", undefined, undefined, 1);
    level thread scene::play("scene_hub_consoles", "kgb_pc_exit");
    level.player setcinematicmotionoverride("default_cinematicmotion");
    level.var_408db1a3 = undefined;
    namespace_6f1d35e1::function_487b4340(#"hash_5bb4228690c426d9", 1, 2);
    namespace_6f1d35e1::function_5d2e6f6a(0);
    wait(1);
    namespace_6f1d35e1::function_4951a2c8(1, 5);
    level waittill(#"typing_complete");
    wait(2);
    level flag::clear("already_logged_in");
    function_19898473();
    level flag::set("player_exited_computer");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 3, eflags: 0x0
// Checksum 0x9e1c1075, Offset: 0xd9f8
// Size: 0x164
function function_cdbadaff(n_time, var_4961ddd2, var_97fef14f) {
    self endon(#"death");
    self endon(#"entitydeleted");
    assert(self.classname == "<unknown string>", "<unknown string>");
    if (!isdefined(n_time)) {
        n_time = 1;
    }
    if (!isdefined(var_4961ddd2)) {
        var_4961ddd2 = 0;
    }
    if (!isdefined(var_97fef14f)) {
        var_97fef14f = function_b342ec0e(self getlightintensity());
    }
    t = 0;
    while (t < n_time) {
        var_76bd8d90 = var_97fef14f + (var_4961ddd2 - var_97fef14f) * t / n_time;
        t += 0.025;
        self setlightintensity(function_5d783702(var_76bd8d90));
        wait(0.025);
    }
    self setlightintensity(function_5d783702(var_76bd8d90));
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0x3c765ff5, Offset: 0xdb68
// Size: 0x48
function function_5d783702(n_stop) {
    n_base = pow(2, n_stop);
    var_2fcfdce8 = n_base * 1600;
    return var_2fcfdce8;
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0x7d08380e, Offset: 0xdbb8
// Size: 0x42
function function_b342ec0e(var_73ab8aa8) {
    var_2fcfdce8 = var_73ab8aa8 / 1600;
    var_7a96a771 = log2(var_2fcfdce8);
    return var_7a96a771;
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 3, eflags: 0x0
// Checksum 0xee3a4b83, Offset: 0xdc08
// Size: 0xe4
function function_ae83465e(n_time, var_64ba523d, var_e15fe12b) {
    self endon(#"death");
    self endon(#"entitydeleted");
    if (!isdefined(var_e15fe12b)) {
        var_e15fe12b = self getlightcolor();
    }
    self.end_color = var_64ba523d;
    t = 0;
    while (t < n_time) {
        var_2f339140 = var_e15fe12b + (var_64ba523d - var_e15fe12b) * t / n_time;
        t += 0.05;
        self setlightcolor(var_2f339140);
        wait(0.025);
    }
    self setlightcolor(var_64ba523d);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 5, eflags: 0x2 linked
// Checksum 0x579a8553, Offset: 0xdcf8
// Size: 0x26c
function function_abeb9b2d(var_5d5112e8, short, fade, var_68001b81, fadetime) {
    snd::play("evt_teleport_short");
    if (is_true(short) && is_true(fade)) {
        level.player clientfield::set_to_player("pstfx_teleport", 3);
    } else if (is_true(short)) {
        level.player clientfield::set_to_player("pstfx_teleport", 2);
    } else {
        level.player clientfield::set_to_player("pstfx_teleport", 1);
    }
    if (is_true(fade)) {
        if (is_true(var_68001b81)) {
            level thread lui::screen_fade_out(0.05, "white");
            wait(0.05);
        } else if (isdefined(fadetime) && fadetime > 0.05) {
            level thread lui::screen_fade_out(fadetime, "white");
            wait(fadetime);
        } else {
            level thread lui::screen_fade_out(0.5, "white");
            wait(0.5);
        }
    }
    if (isstring(var_5d5112e8)) {
        level waittill(var_5d5112e8);
    } else {
        wait(var_5d5112e8);
    }
    if (is_true(fade)) {
        level thread lui::screen_fade_in(0.5, "white");
    }
    level.player clientfield::set_to_player("pstfx_teleport", 0);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0xa4bcd837, Offset: 0xdf70
// Size: 0x26c
function function_29279de1(var_8ced85ea) {
    switch (var_8ced85ea) {
    case #"post_takedown":
        var_ec670c03 = "cp_safehouse_reagan_inauguration";
        var_46f9f605 = "cp_shared_vietnam_brainwash";
        break;
    case #"post_armada":
        var_ec670c03 = "cp_safehouse_stakeout_security_camera_footage";
        var_46f9f605 = "cp_shared_vietnam_brainwash";
        break;
    case #"post_yamantau":
        var_ec670c03 = "cp_safehouse_russian_military_propagnda";
        var_46f9f605 = "cp_shared_vietnam_brainwash";
        break;
    case #"post_kgb":
        var_ec670c03 = "cp_safehouse_us_hostages_released";
        var_46f9f605 = "cp_shared_vietnam_brainwash";
        break;
    case #"post_cuba":
        var_ec670c03 = "cp_safehouse_us_hostages_released";
        var_46f9f605 = "cp_shared_vietnam_brainwash";
        break;
    case #"hash_4738825a1fd6beb8":
        var_ec670c03 = "cp_safehouse_russian_military_propagnda";
        var_46f9f605 = "cp_shared_vietnam_brainwash";
        break;
    default:
        var_ec670c03 = "cp_safehouse_netherlands_air_traffic_control";
        var_46f9f605 = "cp_shared_vietnam_brainwash";
        break;
    }
    level.var_8391b06c = 1;
    var_4026a1a6 = getent("flashback_tv_screen", "script_noteworthy");
    if (isdefined(var_4026a1a6)) {
        var_4026a1a6 hide();
    }
    waitframe(1);
    if (var_8ced85ea == "post_yamantau" || var_8ced85ea == "post_kgb") {
        videostart(var_ec670c03, 1);
    } else {
        thread function_5e5685af(var_ec670c03);
    }
    level.player thread namespace_78e9b80::function_15eaa2db(var_ec670c03, var_46f9f605, "flag_player_approached_flashback_TV", "flag_player_not_in_darkroom", "flashback_tv_lookat", "flashback_tv_screen", "exp_post_takedown_special_tv", #"hash_4413c0cedb6de5d9");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0x30b9dba9, Offset: 0xe1e8
// Size: 0x470
function function_5e5685af(var_ec670c03) {
    level waittill(#"hash_92004b21ffa8edc");
    while (true) {
        level.var_7be68bc6 = getent("tv_player_control", "targetName");
        if (isdefined(var_ec670c03)) {
            videostart(var_ec670c03, 1);
        }
        if (isdefined(level.var_7be68bc6)) {
            level.var_7be68bc6 setlightcolor((1, 1, 1));
        }
        namespace_4ed3ce47::function_ab00949e();
        wait(3);
        function_9ff5371f("hub_tv1", #"hash_3f021518a8ab1db7");
        if (isdefined(var_ec670c03)) {
            videostop(var_ec670c03);
        }
        if (var_ec670c03 != "cp_safehouse_reagan_inauguration") {
            wait(0.1);
            videostart("cp_safehouse_reagan_inauguration", 1);
            if (isdefined(level.var_7be68bc6)) {
                level.var_7be68bc6 setlightcolor((1, 1, 1));
            }
            namespace_4ed3ce47::function_ab00949e();
            wait(3);
            function_9ff5371f("hub_tv1", #"hash_3f021518a8ab1db7");
            videostop("cp_safehouse_reagan_inauguration");
        }
        if (var_ec670c03 != "cp_safehouse_us_hostages_released") {
            wait(0.1);
            videostart("cp_safehouse_us_hostages_released", 1);
            if (isdefined(level.var_7be68bc6)) {
                level.var_7be68bc6 setlightcolor((1, 1, 1));
            }
            namespace_4ed3ce47::function_ab00949e();
            wait(3);
            function_9ff5371f("hub_tv1", #"hash_3f021518a8ab1db7");
            videostop("cp_safehouse_us_hostages_released");
        }
        wait(0.1);
        videostart("cp_safehouse_soccer_game", 1);
        if (isdefined(level.var_7be68bc6)) {
            level.var_7be68bc6 setlightcolor((0.05, 0.1, 0.05));
        }
        namespace_4ed3ce47::function_ab00949e();
        wait(3);
        function_9ff5371f("hub_tv1", #"hash_3f021518a8ab1db7");
        videostop("cp_safehouse_soccer_game");
        wait(0.1);
        videostart("cp_safehouse_tv_static", 1);
        if (isdefined(level.var_7be68bc6)) {
            level.var_7be68bc6 setlightcolor((1, 1, 1));
        }
        namespace_4ed3ce47::function_ab00949e();
        wait(3);
        function_9ff5371f("hub_tv1", #"hash_19f91b3c7b28f4a6");
        videostop("cp_safehouse_tv_static");
        if (isdefined(level.var_7be68bc6)) {
            level.var_7be68bc6 setlightcolor((0, 0, 0));
        }
        namespace_4ed3ce47::function_ab00949e();
        wait(3);
        function_9ff5371f("hub_tv1", #"hash_107c9ec094961c0c");
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 2, eflags: 0x2 linked
// Checksum 0xbfc5d848, Offset: 0xe660
// Size: 0x8c
function function_9ff5371f(var_d81bb01d, var_bc1142fa) {
    var_8cfc4731 = struct::get(var_d81bb01d, "script_noteworthy");
    level.var_f2a38d87 = spawn("script_model", var_8cfc4731.origin);
    level.var_f2a38d87 function_b1cad6c7(var_bc1142fa);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0x7b7a99cd, Offset: 0xe6f8
// Size: 0xd8
function function_b1cad6c7(var_bc1142fa) {
    self setmodel("tag_origin");
    self util::create_cursor_hint("tag_origin", (0, 0, 0), var_bc1142fa, 48);
    self waittill(#"trigger");
    if (level.var_616f2ca4 != 1) {
        level.player playrumbleonentity("damage_light");
    }
    self util::remove_cursor_hint();
    self delete();
    level.var_616f2ca4 = 0;
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0xd8bfe629, Offset: 0xe7d8
// Size: 0x2b8
function function_b0558ba2(var_690057e6) {
    var_c8d10663 = getent("model_clock1", "targetname");
    var_fa9a69f5 = getent("model_clock2", "targetname");
    var_581b24f5 = getent("model_clock3", "targetname");
    var_c8d10663 useanimtree("generic");
    var_fa9a69f5 useanimtree("generic");
    var_581b24f5 useanimtree("generic");
    var_c8d10663 thread function_42655283("t9_hub_env_clock_sh" + var_690057e6 + "_germany", randomfloatrange(0.05, 0.15));
    var_fa9a69f5 thread function_42655283("t9_hub_env_clock_sh" + var_690057e6 + "_moscow", randomfloatrange(0.55, 0.75));
    var_581b24f5 thread function_42655283("t9_hub_env_clock_sh" + var_690057e6 + "_wash_dc", randomfloatrange(0.25, 0.45));
    var_2eb7eec2 = getentarray("model_clock_amb", "targetname");
    foreach (var_d96c2e88 in var_2eb7eec2) {
        var_d96c2e88 useanimtree("generic");
        var_d96c2e88 thread function_42655283("t9_hub_env_clock_sh" + var_690057e6 + "_germany", randomfloatrange(0.05, 0.25));
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 2, eflags: 0x2 linked
// Checksum 0xba49b5c5, Offset: 0xea98
// Size: 0x54
function function_42655283(var_85d8359e, n_start_time) {
    self thread namespace_4ed3ce47::function_93cce074(n_start_time);
    self animation::play(var_85d8359e, undefined, undefined, undefined, undefined, undefined, undefined, n_start_time);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x51a117a0, Offset: 0xeaf8
// Size: 0x188
function function_652d1850() {
    level waittill(#"hash_92004b21ffa8edc");
    var_927876a9 = struct::get("hub_radio1", "script_noteworthy");
    while (true) {
        var_de00fb7c = snd::play("fly_radio_on_off_button", var_927876a9.origin);
        var_de00fb7c = snd::play("emt_radio_speech_lp", var_927876a9.origin);
        wait(3);
        function_f6309429("hub_radio1", #"hash_77965c9740b1082d");
        snd::stop(var_de00fb7c);
        wait(0.1);
        var_de00fb7c = snd::play("fly_radio_on_off_button", var_927876a9.origin);
        var_de00fb7c = snd::play("emt_radio_speech_lp", var_927876a9.origin);
        wait(3);
        function_f6309429("hub_radio1", #"hash_77965c9740b1082d");
        snd::stop(var_de00fb7c);
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x7b6bd2bf, Offset: 0xec88
// Size: 0x6e
function function_63de26a4() {
    while (true) {
        self waittill(#"hash_2f7c60391ef67806");
        while (!isdefined(level.var_ffdbe9f8)) {
            waitframe(1);
        }
        level.var_616f2ca4 = 1;
        level.var_ffdbe9f8 notify(#"trigger");
        waitframe(1);
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 2, eflags: 0x2 linked
// Checksum 0xc6d6444d, Offset: 0xed00
// Size: 0x8c
function function_f6309429(var_d81bb01d, var_bc1142fa) {
    var_927876a9 = struct::get(var_d81bb01d, "script_noteworthy");
    level.var_ffdbe9f8 = spawn("script_model", var_927876a9.origin);
    level.var_ffdbe9f8 function_b1cad6c7(var_bc1142fa);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x38cf59ba, Offset: 0xed98
// Size: 0x154
function function_f9ee9c54() {
    level flag::wait_till("all_players_connected");
    var_9f1c267e = int(level.player savegame::function_2ee66e93(#"hash_37af8f0dcf0b9dda", 0));
    if (var_9f1c267e == 1) {
        level thread scene::play("scene_hub_env_chain_link_gate");
        var_e7a55046 = getent("chain_link_gate_clip", "targetname");
        if (isdefined(var_e7a55046)) {
            var_e7a55046 delete();
        }
        return;
    }
    scene::play("scene_hub_env_chain_link_gate", "init");
    org = struct::get("chain_link_gate", "targetname");
    function_ca7fd487(org.origin);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0x3c50d2c1, Offset: 0xeef8
// Size: 0x16c
function function_ca7fd487(origin) {
    tag = util::spawn_model("tag_origin", origin, origin.angles);
    player = level.player;
    while (true) {
        tag util::create_cursor_hint("tag_origin", (0, 0, 0), #"hash_5a99713f8e17468c", 85, undefined, &function_f5ee087c, undefined, undefined, undefined, undefined, undefined, 1, undefined);
        s_result = player waittill(#"exit", #"hash_542efe3d2dcb6459");
        if (s_result._notify == #"hash_542efe3d2dcb6459") {
            tag util::remove_cursor_hint();
            wait(1);
            namespace_6fdcb0::function_838e9ba9();
            level flag::set("flag_combination_correct");
            tag delete();
            break;
        }
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x2c57aedf, Offset: 0xf070
// Size: 0x2f4
function function_f5ee087c() {
    player = level.player;
    player function_61f60c40();
    namespace_6fdcb0::function_912776e6(#"hash_7a73dc57e2a8e60");
    namespace_c8e236da::function_ebf737f8(#"hash_2c16a04fab0346fa");
    namespace_c8e236da::function_ebf737f8(#"hash_87cb1efbc51f19b");
    namespace_c8e236da::function_ebf737f8(#"hash_5c8c8fae13b36286");
    namespace_c8e236da::function_ebf737f8(#"hash_68ecec68c06f225b");
    namespace_c8e236da::function_ebf737f8(#"hash_7d0ad4e924d219af");
    level flag::wait_till("level_is_go");
    while (true) {
        s_result = player waittill(#"exit", #"hash_542efe3d2dcb6459");
        if (s_result._notify == #"exit") {
            level flag::set("combination_lock_exited");
            self notify(#"exit");
            break;
        }
        if (s_result._notify == #"hash_542efe3d2dcb6459") {
            level flag::set("combination_lock_opened");
            var_92c7a239 = 1;
            self notify(#"hash_542efe3d2dcb6459");
            player savegame::set_player_data(#"hash_37af8f0dcf0b9dda", 1);
            level.player playrumbleonentity("damage_light");
            level thread scene::play("scene_hub_env_chain_link_gate");
            level thread function_1d953816();
            savegame::save();
            thread util::function_b9dfcfb7();
            break;
        }
        wait(0.05);
    }
    player function_a1af304b();
    player notifyonplayercommand("show_itin", "+actionslot 4");
    namespace_c8e236da::removelist();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xce8d07a2, Offset: 0xf370
// Size: 0x4c
function function_1d953816() {
    wait(3.8);
    var_e7a55046 = getent("chain_link_gate_clip", "targetname");
    var_e7a55046 delete();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x34e73d42, Offset: 0xf3c8
// Size: 0x4c
function function_61f60c40() {
    self freezecontrols(1);
    self val::set(#"hash_25ec54e9c679c85a", "show_hud", 0);
    wait(0.5);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x4a208781, Offset: 0xf420
// Size: 0x7c
function function_a1af304b() {
    self val::reset(#"hash_25ec54e9c679c85a", "show_hud");
    if (level flag::get("combination_lock_opened")) {
        wait(2);
    } else {
        wait(0.25);
    }
    self freezecontrols(0);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x356b1052, Offset: 0xf4a8
// Size: 0x2ba
function function_58eff8e() {
    level flag::wait_till("level_is_go");
    var_e6a5b638 = [];
    var_e6a5b638[#"hash_f9ad98b4e9fbe1c"] = {#title:#"hash_6999ee32eef23c98", #desc:#"hash_3b2cc0edd97965df"};
    var_e6a5b638[#"hash_f9adc8b4e9fc335"] = {#title:#"hash_1f5edbea689845f5", #desc:#"hash_6022086c49a7af24"};
    var_e6a5b638[#"hash_f9adb8b4e9fc182"] = {#title:#"hash_662a51ae3cdc2d66", #desc:#"hash_72cbbdedfa805101"};
    var_e6a5b638[#"hash_147279bc2e388d61"] = {#title:#"hash_308fd3e60f92b51f", #desc:#"hash_618b20752e4790a2"};
    var_e6a5b638[#"hash_537b2c2c04a63664"] = {#desc:#"hash_2a6bf1525f1590cd"};
    level.var_31c52203 = getentarray("translate_trig", "targetname");
    for (i = 0; i < level.var_31c52203.size; i++) {
        string = "poi_trig" + string(i);
        var_2b4f2503 = var_e6a5b638[level.var_31c52203[i].script_noteworthy];
        namespace_93648050::function_eb5d0a02(hash(string), level.var_31c52203[i], var_2b4f2503.desc, 256, var_2b4f2503.title, 1);
        waitframe(1);
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xdc37ee7f, Offset: 0xf770
// Size: 0x44
function function_32d36a25() {
    level.var_dbd670f4 = getent("park_paper", "script_noteworthy");
    level thread function_3a845769();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xd683d0af, Offset: 0xf7c0
// Size: 0x46
function function_3a845769() {
    level waittill(#"hash_5d924b80d3bc44e8");
    level.var_dbd670f4.origin += (0, 0, 1);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x2dfadc32, Offset: 0xf810
// Size: 0x27c
function function_d0d0e1ff() {
    var_7a191936 = savegame::function_8136eb5a();
    if (var_7a191936 == "cp_ger_hub_post_kgb") {
        scene::init("scene_hub_env_slide_projector");
        level.var_6bc678cc = [getent("mdl_projector_slide_01", "targetname"), getent("mdl_projector_slide_02", "targetname"), getent("mdl_projector_slide_03", "targetname"), getent("mdl_projector_slide_04", "targetname"), getent("mdl_projector_slide_05", "targetname")];
        level.var_625aec0f = getent("projector_background", "targetname");
        level.var_1f5313aa = getent("mdl_projector_slide_01", "targetname");
        level function_4fc0917f(level.var_1f5313aa, 1);
        level function_4fc0917f(level.var_625aec0f, 1);
        level function_4fc0917f(level.var_6bc678cc, 1);
        level function_9ed49815();
        level function_713ca190();
        level function_10210a73();
        level function_bbcce1af();
        level function_5c77a1e0();
        return;
    }
    if (var_7a191936 == "cp_ger_hub8") {
        return;
    }
    level function_181d3baf();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 2, eflags: 0x2 linked
// Checksum 0xa121396a, Offset: 0xfa98
// Size: 0x158
function function_4fc0917f(ent_array, hide) {
    if (!isarray(ent_array)) {
        ent_array = [ent_array];
    }
    if (isdefined(hide)) {
        foreach (ent in ent_array) {
            if (isdefined(ent)) {
                ent hide();
            }
        }
        return;
    }
    foreach (ent in ent_array) {
        if (isdefined(ent)) {
            ent show();
        }
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xad06d9bc, Offset: 0xfbf8
// Size: 0x24
function function_9ed49815() {
    level thread function_4fc0917f(level.var_1f5313aa);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xbf5cba9b, Offset: 0xfc28
// Size: 0x17c
function function_713ca190() {
    level flag::wait_till("level_is_go");
    var_e12cd9e4 = 6;
    var_38d7c7b5 = struct::get("projector_interact", "targetname");
    var_38d7c7b5.str = "projector_interact";
    var_38d7c7b5.slide_projector = getent("hub_mdl_projector_in_use", "script_noteworthy");
    var_38d7c7b5.slides = level.var_6bc678cc;
    if (var_38d7c7b5.slides.size != var_e12cd9e4) {
        for (i = var_38d7c7b5.slides.size; i < var_e12cd9e4; i++) {
            if (!isdefined(var_38d7c7b5.slides)) {
                var_38d7c7b5.slides = [];
            } else if (!isarray(var_38d7c7b5.slides)) {
                var_38d7c7b5.slides = array(var_38d7c7b5.slides);
            }
            var_38d7c7b5.slides[var_38d7c7b5.slides.size] = level.var_625aec0f;
        }
    }
    var_38d7c7b5.background = level.var_625aec0f;
    var_38d7c7b5 thread function_cd3f7bff();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xf89cacdf, Offset: 0xfdb0
// Size: 0x3a4
function function_cd3f7bff() {
    self.usable = spawn("script_model", self.origin);
    self.usable setmodel("tag_origin");
    self.count = 0;
    self.var_e12cd9e4 = 6;
    while (!level flag::get("post_kgb_exited")) {
        self.usable util::create_cursor_hint("tag_origin", (0, 0, 8), #"hash_1cbb97e6dd4209d1");
        util::waittill_any_ents(self.usable, "trigger");
        self.usable util::remove_cursor_hint();
        if (!isdefined(self.var_5956048c)) {
            self.var_5956048c = 1;
            level thread function_4fc0917f(self.background);
        }
        level thread function_851fda41();
        level.player setstance("stand");
        level.player val::set("teleport_controls", "freezecontrols", 1);
        level.player allowcrouch(0);
        level.player allowprone(0);
        player_pos = struct::get(self.str + "_player_pos", "targetname");
        org = util::spawn_model("tag_origin", player_pos.origin);
        org.angles = player_pos.angles;
        level.player playerlinktoblend(org, "tag_origin", 0.3, 0.1, 0.1);
        wait(0.3);
        level.player playerlinktodelta(org, "tag_origin", 0, 70, 70, 15, 15);
        level.player function_d0c617ad(self);
        wait(1);
        level.player val::set("teleport_controls", "freezecontrols", 0);
        level.player allowcrouch(1);
        level.player allowprone(1);
        level flag::clear("stop_kgb_projector_hint");
        wait(0.05);
    }
    if (isdefined(self.usable)) {
        self.usable delete();
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x41a3c496, Offset: 0x10160
// Size: 0x74
function function_851fda41() {
    namespace_c8e236da::function_ebf737f8(#"hash_2404b7b62786fa93");
    namespace_c8e236da::function_ebf737f8(#"hash_2404b8b62786fc46");
    level flag::wait_till("stop_kgb_projector_hint");
    namespace_c8e236da::removelist();
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0xc964d6e, Offset: 0x101e0
// Size: 0x314
function function_d0c617ad(struct) {
    var_1ffa92cb = self usebuttonpressed();
    while (true) {
        isusinggamepad = self gamepadusedlast();
        if (isusinggamepad && self actionslotfourbuttonpressed() || !isusinggamepad && self attackbuttonpressed()) {
            if (isdefined(struct)) {
                level thread function_4fc0917f(level.var_1f5313aa, 1);
                function_181d3baf();
                function_6aa74e7b();
                if (isdefined(struct.var_8bea1e7e)) {
                    if (struct.var_8bea1e7e != struct.background) {
                        level thread function_4fc0917f(struct.var_8bea1e7e, 1);
                    }
                }
                struct.count++;
                if (struct.count >= struct.var_e12cd9e4) {
                    struct.count = 0;
                }
                struct.var_8bea1e7e = struct.slides[struct.count];
                level thread namespace_4ed3ce47::function_7473e3ec();
                level thread scene::play("scene_hub_env_slide_projector", "advance_slide");
                wait(0.6);
                level thread scene::play("scene_hub_env_slide_projector", "idle");
                function_bbcce1af();
                function_5c77a1e0();
                if (struct.var_8bea1e7e != struct.background) {
                    level thread function_4fc0917f(struct.var_8bea1e7e);
                }
                wait(0.25);
            }
        }
        if (self actionslotthreebuttonpressed()) {
        }
        if (isusinggamepad && level.player namespace_61e6d095::function_70217795() || !isusinggamepad && self usebuttonpressed()) {
            level flag::set("stop_kgb_projector_hint");
            level.player unlink();
            self notify(#"request_menu_exit");
            break;
        }
        var_1ffa92cb = self usebuttonpressed();
        wait(0.05);
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x9fdf290, Offset: 0x10500
// Size: 0xbe
function function_10210a73() {
    var_7dc5a4b4 = getentarray("projector_light", "targetname");
    waitframe(1);
    foreach (var_8b0943fa in var_7dc5a4b4) {
        var_8b0943fa.intensity = var_8b0943fa getlightintensity();
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x41665c6d, Offset: 0x105c8
// Size: 0xc0
function function_181d3baf() {
    var_7dc5a4b4 = getentarray("projector_light", "targetname");
    waitframe(1);
    foreach (var_8b0943fa in var_7dc5a4b4) {
        var_8b0943fa setlightintensity(0);
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x2df8bb95, Offset: 0x10690
// Size: 0xc0
function function_bbcce1af() {
    var_7dc5a4b4 = getentarray("projector_light", "targetname");
    waitframe(1);
    foreach (var_8b0943fa in var_7dc5a4b4) {
        var_8b0943fa setlightintensity(var_8b0943fa.intensity);
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x9d821700, Offset: 0x10758
// Size: 0x1c
function function_6aa74e7b() {
    exploder::kill_exploder("exp_post_kgb_projector");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x8b68f23f, Offset: 0x10780
// Size: 0x1c
function function_5c77a1e0() {
    exploder::exploder("exp_post_kgb_projector");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0xb4489266, Offset: 0x107a8
// Size: 0xb2
function function_98bc17c8() {
    level.player flag::wait_till(level.var_d7d201ba);
    level waittill(#"hash_92004b21ffa8edc");
    while (true) {
        wait(8);
        if (!level flag::get("flag_player_in_dialog")) {
            level hint_tutorial::function_4c2d4fc4(#"hash_12271ba90c5284d8", #"hash_6de0c50ffde2d869");
            level hint_tutorial::function_9f427d88(8);
            return;
        }
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x5e2b568a, Offset: 0x10868
// Size: 0x20e
function function_77a7721() {
    while (true) {
        var_c564fe97 = level waittill(#"hash_24aefb38c6bd8236", #"hash_10d521d9edbeb091", #"hash_7730e9e72bc8c4b2", #"hash_620e399c26081cc5", #"hash_98ecabf687c31a0", #"hash_7e2afe32d900fa23", #"hash_4559bc6bde09c1f0", #"hash_3af2de6bab0e3202");
        switch (var_c564fe97._notify) {
        case #"hash_24aefb38c6bd8236":
            level.player playrumbleonentity("damage_light");
            break;
        case #"hash_10d521d9edbeb091":
            level.player playrumbleonentity("damage_heavy");
            break;
        case #"hash_7730e9e72bc8c4b2":
            level.player playrumblelooponentity("damage_light");
            break;
        case #"hash_620e399c26081cc5":
            level.player playrumblelooponentity("damage_heavy");
            break;
        case #"hash_98ecabf687c31a0":
            level.player stoprumble("damage_light");
            break;
        case #"hash_7e2afe32d900fa23":
            level.player stoprumble("damage_heavy");
            break;
        }
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x0
// Checksum 0x750d4ec2, Offset: 0x10a80
// Size: 0x8e
function function_f3dc3a44() {
    while (!isdefined(level.player)) {
        waitframe(1);
    }
    while (true) {
        var_483c8820 = level.player getnormalizedmovement();
        /#
            iprintlnbold("<unknown string>" + var_483c8820[0] + "<unknown string>" + var_483c8820[1]);
        #/
        waitframe(1);
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x0
// Checksum 0xbd8c6417, Offset: 0x10b18
// Size: 0x2c
function function_104bbaee() {
    wait(3);
    level clientfield::set("test_scripted_camera_lens", 1);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x4
// Checksum 0x22b9e52e, Offset: 0x10b50
// Size: 0x46
function private waittill_end(str_scene_name) {
    self waittillmatch({#notetrack:"end"}, str_scene_name);
    self notify(#"hash_5083923aa1b3d146");
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x5e47c13d, Offset: 0x10ba0
// Size: 0x2c
function function_2f542be7() {
    if (namespace_70eba6e6::function_8de25d9c()) {
        self namespace_70eba6e6::function_516d14be();
    }
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0x6f6a38a1, Offset: 0x10bd8
// Size: 0x84
function function_a0abc8d3(var_5af22a92) {
    if (isdefined(self.hatmodel)) {
        self detach(self.hatmodel);
    }
    if (isdefined(self.head)) {
        self detach(self.head);
    }
    self.head = var_5af22a92;
    self attach(var_5af22a92);
}

// Namespace namespace_31c67f6d/namespace_89829bca
// Params 1, eflags: 0x2 linked
// Checksum 0x4cc3aca4, Offset: 0x10c68
// Size: 0xfc
function function_53eb4779(var_5eb08f06) {
    var_2e90677f = level.player savegame::function_2ee66e93(#"hash_1a477818ac2b050c", []);
    if (!isinarray(var_2e90677f, var_5eb08f06)) {
        var_2e90677f[var_2e90677f.size] = var_5eb08f06;
        level.player savegame::set_player_data(#"hash_1a477818ac2b050c", var_2e90677f);
        if (var_2e90677f.size >= 12 && level.player stats::get_stat_global(#"hash_37786130643e63d0") == 0) {
            level.player stats::function_dad108fa(#"hash_37786130643e63d0", 1);
        }
    }
}

