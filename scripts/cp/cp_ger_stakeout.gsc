#using script_11d98532ca8f6c58;
#using script_20b8e1a789215df0;
#using script_268625b0934ee2ce;
#using script_279a5d4e51c06d1a;
#using script_34c07e36b76bab45;
#using script_3b7c3b99b28b21b7;
#using script_549b1f81e7dfe241;
#using script_6f92dbd09c4e8204;
#using script_708fc8496e63a128;
#using script_79e60fd0034306f4;
#using script_7e8d968512a21e26;
#using script_86ebb5dd573a003;
#using script_bd3bf54a93a5a3b;
#using scripts\core_common\ai_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\serverfield_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\struct;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\cp\cp_ger_stakeout_fx;
#using scripts\cp_common\devgui;
#using scripts\cp_common\objectives;
#using scripts\cp_common\skipto;
#using scripts\cp_common\util;

#namespace cp_ger_stakeout;

// Namespace cp_ger_stakeout/level_init
// Params 1, eflags: 0x20
// Checksum 0x6df46a0b, Offset: 0x850
// Size: 0x17c
function event_handler[level_init] main(*eventstruct) {
    setclearanceceiling(16);
    function_bf4b4b7e();
    init_flags();
    init_spawnfunctions();
    init_clientfields();
    load::main();
    function_22b7fffd();
    init_callbacks();
    level thread objective_init();
    setdvar(#"compassmaxrange", "2100");
    setdvar(#"r_motionblurstrength", 0.2);
    setdvar(#"hash_252e699c41531f1a", 2);
    setdvar(#"hash_4466b01c6d8d7307", 2);
    level thread function_5fb77e0e();
    level.var_f4ed1999 = &namespace_11998b8f::function_d1c278ab;
}

// Namespace cp_ger_stakeout/cp_ger_stakeout
// Params 0, eflags: 0x0
// Checksum 0xbe8b42ab, Offset: 0x9d8
// Size: 0x42c
function init_clientfields() {
    clientfield::register("toplayer", "force_stream_train", 1, 1, "int");
    clientfield::register("world", "force_stream_sewer_exit", 1, 1, "int");
    clientfield::register("world", "force_stream_bar", 1, 1, "int");
    clientfield::register("world", "force_stream_warehouse", 1, 1, "int");
    clientfield::register("world", "cull_rear_warehouse", 1, 1, "int");
    clientfield::register("toplayer", "pstfx_sprite_rain_loop", 1, 1, "int");
    clientfield::register("toplayer", "pstfx_sprite_rain_ladder", 1, 1, "int");
    clientfield::register("toplayer", "pstfx_head_trauma", 1, 1, "counter");
    clientfield::register("toplayer", "lerp_fov", 1, 3, "int");
    clientfield::register("toplayer", "player_blacklight", 1, 1, "int");
    clientfield::register("toplayer", "knock_out_vision", 1, 1, "int");
    clientfield::register("toplayer", "camera_focal_distance_electronics_store", 1, 1, "int");
    clientfield::register("toplayer", "force_stream_weapons", 1, 1, "int");
    clientfield::register("scriptmover", "guard_room_light", 1, 1, "int");
    clientfield::register("scriptmover", "sewer_exit_flashlight_fx", 1, 1, "int");
    clientfield::register("scriptmover", "darkroom_light", 1, 1, "int");
    clientfield::register("scriptmover", "rooftop_spotlight", 1, 1, "int");
    clientfield::register("scriptmover", "render_emissive_blacklight_material", 1, 8, "int");
    clientfield::register("scriptmover", "constraint_toggle_field", 1, 1, "int");
    clientfield::register("vehicle", "constraint_toggle_field", 1, 1, "int");
    clientfield::register("toplayer", "kraus_zoom_hint_start", 1, 1, "int");
    serverfield::register("kraus_zoom_hint_end", 1, 1, "int", &namespace_acaa3a2e::function_afc2d473);
}

// Namespace cp_ger_stakeout/cp_ger_stakeout
// Params 0, eflags: 0x0
// Checksum 0xb8fd077f, Offset: 0xe10
// Size: 0xc4
function function_22b7fffd() {
    level thread namespace_a613430e::function_22b7fffd();
    level thread namespace_acaa3a2e::function_22b7fffd();
    level thread namespace_dd1bf157::function_22b7fffd();
    level thread namespace_afd0968c::function_22b7fffd();
    level thread namespace_e6b6aea1::function_22b7fffd();
    level thread cp_ger_stakeout_fx::function_22b7fffd();
    level thread namespace_11998b8f::function_dd4726f3();
    level thread namespace_11998b8f::function_54158bc();
}

// Namespace cp_ger_stakeout/cp_ger_stakeout
// Params 0, eflags: 0x0
// Checksum 0x651cdd7e, Offset: 0xee0
// Size: 0x80c
function function_bf4b4b7e() {
    skipto::function_eb91535d("train", &namespace_4dd4b998::main, &namespace_4dd4b998::start, "Train", &namespace_4dd4b998::cleanup, "train");
    skipto::function_eb91535d("ghost_station", &namespace_a613430e::main, &namespace_a613430e::start, "Ghost Station", &namespace_a613430e::cleanup, "tunnels");
    skipto::function_eb91535d("ghost_station_exit", &namespace_3aaa42f7::main, &namespace_3aaa42f7::start, "Ghost Station Exit", &namespace_3aaa42f7::cleanup, ["tunnels", "vista", "streets"]);
    skipto::function_eb91535d("wall", &namespace_acaa3a2e::function_cca0368, &namespace_acaa3a2e::wall_start, "Berlin Wall", &namespace_acaa3a2e::function_f39fdd43, ["tunnels", "vista", "streets"]);
    skipto::function_eb91535d("rooftop", &namespace_acaa3a2e::function_a291bbc5, &namespace_acaa3a2e::rooftop_start, "ID Kraus", &namespace_acaa3a2e::function_e78c7f4d, ["vista", "streets", "tailor_and_alley"]);
    skipto::function_eb91535d("street", &namespace_dd1bf157::main, &namespace_dd1bf157::start, "Berlin Street", &namespace_dd1bf157::function_dc6107f7, ["vista", "streets", "alley", "tailor_and_alley"]);
    skipto::function_eb91535d("bar", &namespace_dd1bf157::function_9145f67a, &namespace_dd1bf157::function_ae924b50, "Bar Meet", &namespace_dd1bf157::function_34aae650, ["vista", "streets", "tailor_and_alley"]);
    skipto::function_eb91535d("alley_1", &namespace_4dc9a074::function_b3837ddc, &namespace_4dc9a074::function_9de162de, "Back Alley 1", &namespace_4dc9a074::function_4f2cda6a, ["vista", "streets", "tailor_and_alley", "alley"]);
    skipto::function_eb91535d("alley_2", &namespace_4dc9a074::function_34ee80b8, &namespace_4dc9a074::function_2d6c81be, "Back Alley 2", &namespace_4dc9a074::function_821fcf7c, ["streets", "tailor_and_alley", "alley"]);
    skipto::function_eb91535d("alley_3", &namespace_4dc9a074::function_b4ae0031, &namespace_4dc9a074::function_8262abe1, "Back Alley 3", &namespace_4dc9a074::function_e73c0be, ["streets", "tailor_and_alley", "alley", "courtyard"]);
    skipto::function_eb91535d("meetup", &namespace_afd0968c::main, &namespace_afd0968c::start, "Rendezvous", &namespace_afd0968c::function_7451d8da, ["courtyard", "electronics", "apartment_street", "apartment"]);
    skipto::function_eb91535d("apt_street", &namespace_fba81a7f::main, &namespace_fba81a7f::start, "Infiltrate Apartment", &namespace_fba81a7f::function_f62cf54d, ["courtyard", "electronics", "apartment_street", "apartment"]);
    skipto::function_eb91535d("apt_1", &namespace_e6b6aea1::function_b3837ddc, &namespace_e6b6aea1::function_9de162de, "Apartment Entry", &namespace_e6b6aea1::function_69c02b2b, ["courtyard", "electronics", "apartment_street", "apartment"]);
    skipto::function_eb91535d("apt_2", &namespace_e6b6aea1::function_34ee80b8, &namespace_e6b6aea1::function_2d6c81be, "Plant Tracking Device", &namespace_e6b6aea1::function_a3c49bc0, ["courtyard", "electronics", "apartment_street", "apartment"]);
    skipto::function_eb91535d("warehouse_intro", &namespace_f8073734::intro_main, &namespace_f8073734::intro_start, "Warehouse Intro", &namespace_f8073734::intro_catchup, "warehouse");
    skipto::function_eb91535d("warehouse", &namespace_f8073734::main, &namespace_f8073734::start, "Warehouse", undefined, "warehouse");
    skipto::function_eb91535d("warehouse_outro", &namespace_f8073734::outro_main, &namespace_f8073734::outro_start, "Warehouse Outro", undefined, "warehouse");
}

// Namespace cp_ger_stakeout/cp_ger_stakeout
// Params 0, eflags: 0x0
// Checksum 0x8184aed9, Offset: 0x16f8
// Size: 0x54
function init_flags() {
    namespace_4dd4b998::init_flags();
    namespace_b4dbc583::init_flags();
    namespace_acaa3a2e::init_flags();
    namespace_dd1bf157::init_flags();
    namespace_f8073734::init_flags();
}

// Namespace cp_ger_stakeout/cp_ger_stakeout
// Params 0, eflags: 0x0
// Checksum 0x20abacdc, Offset: 0x1758
// Size: 0x64
function init_callbacks() {
    callback::on_spawned(&function_4174e4e6);
    callback::on_connect(&on_player_connect);
    callback::on_player_damage(&on_player_damage);
}

// Namespace cp_ger_stakeout/cp_ger_stakeout
// Params 0, eflags: 0x0
// Checksum 0xf3815c52, Offset: 0x17c8
// Size: 0xbc
function on_player_connect() {
    if (isdefined(level.var_28c22d88) && array::contains(level.var_28c22d88, "train") || level.var_28c22d88.size == 0) {
        util::function_f3cadc9a("cp_ger_stakeout_train_ready");
        if (isdefined(level.var_d7d201ba) && !self flag::exists(level.var_d7d201ba)) {
            self flag::init(level.var_d7d201ba);
        }
    }
}

// Namespace cp_ger_stakeout/cp_ger_stakeout
// Params 0, eflags: 0x0
// Checksum 0x1d1d8696, Offset: 0x1890
// Size: 0x1a4
function function_4174e4e6() {
    player = getplayers()[0];
    level.player = player;
    player setcharacterbodytype(1);
    player setcharacteroutfit(5);
    player util::function_a5318821();
    level thread function_bf14bffe();
    level thread function_356633ac();
    weapons = player getweaponslistprimaries();
    foreach (weapon in weapons) {
        player takeweapon(weapon);
    }
    if (skipto::function_fb89516e("train")) {
        level flag::wait_till("flag_post_train_weapons");
    }
    namespace_11998b8f::function_cdb7cc7e();
}

// Namespace cp_ger_stakeout/cp_ger_stakeout
// Params 1, eflags: 0x0
// Checksum 0x70cfa347, Offset: 0x1a40
// Size: 0x44
function on_player_damage(params) {
    if (params.smeansofdeath === "MOD_MELEE_WEAPON_BUTT") {
        self clientfield::increment_to_player("pstfx_head_trauma");
    }
}

// Namespace cp_ger_stakeout/cp_ger_stakeout
// Params 0, eflags: 0x0
// Checksum 0x31fd10de, Offset: 0x1a90
// Size: 0x24
function init_spawnfunctions() {
    namespace_4dc9a074::function_4bf845e0();
    namespace_fba81a7f::function_742bc3ab();
}

// Namespace cp_ger_stakeout/cp_ger_stakeout
// Params 0, eflags: 0x0
// Checksum 0x559f3342, Offset: 0x1ac0
// Size: 0x1be
function function_bf14bffe() {
    level flag::wait_till("all_players_spawned");
    player = getplayers()[0];
    player endon(#"death");
    setdvar(#"hash_7b06b8037c26b99b", 30);
    level flag::wait_till("level_is_go");
    while (true) {
        var_1e8cb595 = bullettracepassed(player.origin, player.origin + (0, 0, 10000), 0, player);
        if (var_1e8cb595 && !level flag::get("player_in_rain")) {
            level flag::set("player_in_rain");
            player clientfield::set_to_player("pstfx_sprite_rain_loop", 1);
        } else if (!var_1e8cb595 && level flag::get("player_in_rain")) {
            level flag::clear("player_in_rain");
            player clientfield::set_to_player("pstfx_sprite_rain_loop", 0);
        }
        wait 3;
    }
}

// Namespace cp_ger_stakeout/cp_ger_stakeout
// Params 0, eflags: 0x0
// Checksum 0xb7f808ac, Offset: 0x1c88
// Size: 0x1d4
function function_356633ac() {
    level flag::wait_till("all_players_spawned");
    player = getplayers()[0];
    player endon(#"death");
    t_rain_ladder = getent("t_rain_ladder", "targetname");
    if (!isdefined(t_rain_ladder)) {
        return;
    }
    while (!level flag::get("climbed_out_of_sewer")) {
        if (player istouching(t_rain_ladder) && !level flag::get("player_on_ladder_rain")) {
            level flag::set("player_on_ladder_rain");
            player clientfield::set_to_player("pstfx_sprite_rain_ladder", 1);
        } else if (!player istouching(t_rain_ladder) && level flag::get("player_on_ladder_rain")) {
            level flag::clear("player_on_ladder_rain");
            player clientfield::set_to_player("pstfx_sprite_rain_ladder", 0);
        }
        waitframe(1);
    }
    wait 3;
    player clientfield::set_to_player("pstfx_sprite_rain_ladder", 0);
}

// Namespace cp_ger_stakeout/cp_ger_stakeout
// Params 0, eflags: 0x0
// Checksum 0x9d568cbc, Offset: 0x1e68
// Size: 0x5c
function objective_init() {
    level flag::wait_till("game_start");
    level thread function_c5a5ed9a();
    function_94602e66();
    function_68d3f62d();
}

// Namespace cp_ger_stakeout/cp_ger_stakeout
// Params 0, eflags: 0x0
// Checksum 0x42df7769, Offset: 0x1ed0
// Size: 0x12c
function function_c5a5ed9a() {
    if (!level flag::get("identify_kraus_done")) {
        level flag::wait_till("train_adler_ready");
        if (!isdefined(objectives::function_285e460(#"identify_kraus"))) {
            objectives::scripted(#"identify_kraus", undefined, #"hash_28a49531ff7ca7fb");
        }
        level flag::wait_till("identify_kraus_done");
        wait 1;
        objectives::complete(#"identify_kraus");
        if (isdefined(objectives::function_285e460(#"hash_2007375ae0a3f86f"))) {
            objectives::remove(#"hash_2007375ae0a3f86f");
        }
    }
}

// Namespace cp_ger_stakeout/cp_ger_stakeout
// Params 0, eflags: 0x0
// Checksum 0x6a0e402b, Offset: 0x2008
// Size: 0xec
function function_94602e66() {
    if (!level flag::get("at_street_overlook")) {
        level flag::wait_till("player_jumped_off_train");
        wait 1;
        if (!isdefined(objectives::function_285e460(#"hash_3cd6c0f1f8034e7d", level.adler))) {
            objectives::follow(#"hash_3cd6c0f1f8034e7d", level.adler);
        }
        level flag::wait_till("at_street_overlook");
        objectives::hide(#"hash_3cd6c0f1f8034e7d", level.adler);
    }
}

// Namespace cp_ger_stakeout/cp_ger_stakeout
// Params 0, eflags: 0x0
// Checksum 0x2375c22b, Offset: 0x2100
// Size: 0x11c
function function_68d3f62d() {
    if (!level flag::get("street_done")) {
        level flag::wait_till("street_begin");
        wait 2;
        if (!isdefined(objectives::function_285e460(#"hash_3cd6c0f1f8034e7d", level.adler))) {
            objectives::follow(#"hash_3cd6c0f1f8034e7d", level.adler);
        } else {
            objectives::show(#"hash_3cd6c0f1f8034e7d", level.adler);
        }
        level flag::wait_till("start_rooftop_descend_alley");
        objectives::remove(#"hash_3cd6c0f1f8034e7d", level.adler);
    }
}

// Namespace cp_ger_stakeout/cp_ger_stakeout
// Params 0, eflags: 0x0
// Checksum 0x488aadb0, Offset: 0x2228
// Size: 0x370
function function_5fb77e0e() {
    level flag::wait_till("all_players_spawned");
    exploder::exploder("fx_exp_vista_tower1");
    var_2d653b13 = getentarray("tower01", "targetname");
    var_64d129ee = getentarray("tower02", "targetname");
    var_7a965578 = getentarray("tower03", "targetname");
    foreach (ent in var_64d129ee) {
        ent hide();
    }
    foreach (ent in var_7a965578) {
        ent hide();
    }
    level flag::wait_till("flag_show_vista_tower_02");
    array::delete_all(var_2d653b13);
    exploder::stop_exploder("fx_exp_vista_tower1");
    exploder::exploder("fx_exp_vista_tower3");
    foreach (ent in var_64d129ee) {
        ent show();
    }
    level flag::wait_till("flag_show_vista_tower_03");
    array::delete_all(var_64d129ee);
    exploder::stop_exploder("fx_exp_vista_tower3");
    exploder::exploder("fx_exp_vista_tower2");
    foreach (ent in var_7a965578) {
        ent show();
    }
}

