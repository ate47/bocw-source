#using script_1b9f100b85b7e21d;
#using script_1fd2c6e5fc8cb1c3;
#using script_32399001bdb550da;
#using script_3dc93ca9902a9cda;
#using script_4ec222619bffcfd1;
#using script_7901e9dc8618be8a;
#using script_798f7d52f57a9c40;
#using scripts\core_common\ai_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\colors_shared;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\struct;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\gametypes\battlechatter;
#using scripts\cp_common\skipto;
#using scripts\cp_common\snd;
#using scripts\cp_common\spawn_manager;

#namespace namespace_e7286d97;

// Namespace namespace_e7286d97/namespace_78895b98
// Params 1, eflags: 0x0
// Checksum 0x57b15d7, Offset: 0x630
// Size: 0x54
function starting(*var_d3440450) {
    level thread namespace_e77bf565::function_277bceaa(0);
    level thread scene::init_streamer("scene_kgb_env_server_loops", getplayers());
}

// Namespace namespace_e7286d97/namespace_78895b98
// Params 2, eflags: 0x0
// Checksum 0x84893506, Offset: 0x690
// Size: 0x4d4
function main(var_d3440450, var_50cc0d4f) {
    level flag::set("aslt_bunker_escape_begin");
    level battlechatter::function_2ab9360b(1);
    if (is_true(var_50cc0d4f)) {
        level.adler = namespace_e77bf565::function_52fe0eb3(var_d3440450, "adler_shotgun");
        level thread scene::skipto_end_noai("scene_kgb_door_kick", "Last_Frame", undefined, 1);
        level thread scene::skipto_end_noai("scene_kgb_utility_room_adler", "Door_Closed", undefined, 1);
        level thread scene::play_from_time("scene_kgb_open_vault", "Enemies_Breach_Vault", undefined, 1, 1, 1, 0, 0);
        level thread scene::skipto_end("scene_kgb_door_shoulder");
        level thread namespace_18f7e99e::function_833a9413(var_50cc0d4f);
        level thread function_bfe40bf0();
        level thread namespace_18f7e99e::function_46fe3d22(undefined, 1);
        level flag::set("vault_breached");
        exploder::exploder("vault_breach_aftermath");
        exploder::exploder("Vault_Ctrl_Panel");
        level thread namespace_2c3ec4f9::function_a0d18564();
        level thread namespace_18f7e99e::function_259d8d6f();
        level thread namespace_e77bf565::function_378ac0da("vault_smod", 1, #"hash_57e5f9b4cc8f8907");
        level thread namespace_18f7e99e::function_66b280b8();
        level thread scene::init("scene_kgb_tunnel_catwalk_transition");
        level thread scene::init("scene_kgb_lights_out");
        level thread namespace_e77bf565::function_1067ebf5("rotating_object_bunker", "player_grabbed_armor");
        level thread vault_explosion_dynents(var_50cc0d4f);
    }
    spawner::set_ai_group_cleared_count("bunker_escape_catwalk_enemies", 1);
    level thread function_b735db01();
    level thread namespace_e77bf565::function_1067ebf5("rotating_object_abandoned_bunker", "player_grabbed_armor");
    wait 2;
    level thread function_d6861ec3();
    level thread namespace_e77bf565::escape_objective(var_d3440450, var_50cc0d4f);
    level flag::wait_till("aslt_bunker_escape_complete");
    exploder::exploder_stop("vault_breach");
    exploder::exploder_stop("vault_breach_aftermath");
    exploder::exploder_stop("a_lights");
    exploder::exploder_stop("b_lights");
    exploder::exploder_stop("c_lights");
    exploder::exploder_stop("d_lights");
    exploder::exploder_stop("x_lights");
    exploder::exploder_stop("y_lights");
    exploder::exploder_stop("z_lights");
    level thread namespace_e77bf565::cleanup_corpses();
    level thread scene::init("scene_kgb_tunnel_catwalk_transition");
    if (isdefined(var_d3440450)) {
        skipto::function_4e3ab877(var_d3440450);
    }
}

// Namespace namespace_e7286d97/namespace_78895b98
// Params 4, eflags: 0x0
// Checksum 0x65d46a6a, Offset: 0xb70
// Size: 0x24
function cleanup(*name, *starting, *direct, *player) {
    
}

// Namespace namespace_e7286d97/namespace_78895b98
// Params 0, eflags: 0x0
// Checksum 0xf6a39830, Offset: 0xba0
// Size: 0x44
function init_flags() {
    level flag::init("aslt_bunker_escape_begin");
    level flag::init("aslt_bunker_escape_complete");
}

// Namespace namespace_e7286d97/namespace_78895b98
// Params 0, eflags: 0x0
// Checksum 0x5d3bc1cc, Offset: 0xbf0
// Size: 0x34
function init_clientfields() {
    clientfield::register("world", "vault_explosion_dynents", 1, 1, "int");
}

// Namespace namespace_e7286d97/namespace_78895b98
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0xc30
// Size: 0x4
function function_22b7fffd() {
    
}

// Namespace namespace_e7286d97/namespace_78895b98
// Params 0, eflags: 0x0
// Checksum 0x1f9e26ab, Offset: 0xc40
// Size: 0x22c
function function_b735db01() {
    bunker_escape_adler_start_node = getnode("bunker_escape_adler_start_node", "targetname");
    level.adler.fixednode = 1;
    level.adler thread spawner::go_to_node(bunker_escape_adler_start_node);
    level flag::wait_till("bunker_escape_move_adler_10");
    level.adler spawner::function_461ce3e9();
    level.adler.fixednode = 0;
    level.adler colors::set_force_color("g");
    level.adler colors::enable();
    level.adler thread dialogue::queue("vox_cp_rkgb_04200_adlr_theyrelockingth_b2");
    level thread savegame::checkpoint_save();
    level flag::wait_till("bunker_escape_move_adler_20");
    level thread savegame::checkpoint_save();
    level.adler thread dialogue::queue("vox_cp_rkgb_04200_adlr_thisway_37");
    level.adler colors::disable();
    scene::play("scene_kgb_tunnel_catwalk_transition");
    namespace_353d803e::music("13.5_lockdown");
    thread namespace_353d803e::function_a1fb2a43();
    bunker_escape_adler_catwalk_node = getnode("bunker_escape_adler_catwalk_node", "targetname");
    level.adler thread spawner::go_to_node(bunker_escape_adler_catwalk_node);
    level flag::wait_till("bunker_escape_catwalk_enemies_cleared");
}

// Namespace namespace_e7286d97/namespace_78895b98
// Params 1, eflags: 0x0
// Checksum 0xd380b18e, Offset: 0xe78
// Size: 0xb4
function function_bfe40bf0(var_b1e77977) {
    vault_ai_nav_clip = getent("vault_ai_nav_clip", "targetname");
    if (isdefined(vault_ai_nav_clip)) {
        if (is_true(var_b1e77977)) {
            vault_ai_nav_clip solid();
            vault_ai_nav_clip disconnectpaths();
            return;
        }
        vault_ai_nav_clip notsolid();
        vault_ai_nav_clip connectpaths();
    }
}

// Namespace namespace_e7286d97/namespace_78895b98
// Params 0, eflags: 0x0
// Checksum 0xc46c474, Offset: 0xf38
// Size: 0x2c4
function function_d6861ec3() {
    level.player endon(#"death");
    level endon(#"aslt_bunker_escape_complete");
    var_772900d5 = struct::get_array("no_escape_pa_vo_org", "targetname");
    wait 4;
    org = arraygetclosest(level.player.origin, var_772900d5);
    var_eabfdd64 = snd::function_9ae4fc6f("vox_cp_rkgb_04400_rms1_giveupyoucannot_7d", org);
    snd::function_2fdc4fb(var_eabfdd64);
    wait 8;
    org = arraygetclosest(level.player.origin, var_772900d5);
    snd::function_9ae4fc6f("vox_cp_rkgb_04400_rms1_surrenderyouwil_0c", org);
    snd::function_2fdc4fb(var_eabfdd64);
    wait 8;
    org = arraygetclosest(level.player.origin, var_772900d5);
    snd::function_9ae4fc6f("vox_cp_rkgb_04400_rms1_putyourweaponsd_54", org);
    snd::function_2fdc4fb(var_eabfdd64);
    wait 8;
    org = arraygetclosest(level.player.origin, var_772900d5);
    snd::function_9ae4fc6f("vox_cp_rkgb_04400_rms1_wehaveblockedal_50", org);
    snd::function_2fdc4fb(var_eabfdd64);
    wait 8;
    org = arraygetclosest(level.player.origin, var_772900d5);
    snd::function_9ae4fc6f("vox_cp_rkgb_04400_rms1_stoptryingtorun_2c", org);
    snd::function_2fdc4fb(var_eabfdd64);
    wait 8;
    org = arraygetclosest(level.player.origin, var_772900d5);
    snd::function_9ae4fc6f("vox_cp_rkgb_04400_rms1_escapeisimpossi_d2", org);
}

// Namespace namespace_e7286d97/namespace_78895b98
// Params 1, eflags: 0x0
// Checksum 0x788dfadb, Offset: 0x1208
// Size: 0x74
function vault_explosion_dynents(var_50cc0d4f) {
    if (is_true(var_50cc0d4f)) {
        level flag::wait_till(#"hash_507a4486c4a79f1d");
        util::wait_network_frame();
        level clientfield::set("vault_explosion_dynents", 1);
    }
}

