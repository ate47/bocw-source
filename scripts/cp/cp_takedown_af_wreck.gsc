// Atian COD Tools GSC CW decompiler test
#using script_85cd2e9a28ea8a1;
#using script_54412fb3a6fab34c;
#using script_5552bd756afee443;
#using script_3dc93ca9902a9cda;
#using script_1292451e284848cc;
#using script_61cfc2ab8e60625;
#using script_31e9b35aaacbbd93;
#using script_1883fa4e60abbf9f;
#using script_4ae261b2785dda9f;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using scripts\cp_common\skipto.gsc;
#using scripts\cp_common\util.gsc;
#using script_4937c6974f43bb71;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\cp_common\objectives.gsc;
#using script_263b7f2982258785;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace tkdn_af_wreck;

// Namespace tkdn_af_wreck/namespace_d73f985a
// Params 1, eflags: 0x2 linked
// Checksum 0x5f7b85f6, Offset: 0x468
// Size: 0xc4
function function_f9f06983(*var_d3440450) {
    namespace_b100dd86::function_5aabc3fb();
    flag::set("af_skid_complete");
    level.var_2713b408 = spawner::simple_spawn_single("arash");
    exploder::exploder("hit3_pcrash_enginefire_end");
    exploder::exploder("airfield_crash_lighting");
    thread namespace_a052577e::function_fc52119f();
    level.var_c0c469ea = 3;
    namespace_82bfe441::fade(1, "FadeImmediate");
}

// Namespace tkdn_af_wreck/namespace_d73f985a
// Params 2, eflags: 0x2 linked
// Checksum 0x73d0fd8a, Offset: 0x538
// Size: 0x6fc
function main(var_d3440450, var_50cc0d4f) {
    if (!isalive(level.var_2713b408)) {
        level.var_2713b408 = spawner::simple_spawn_single("arash");
        level.var_2713b408 namespace_979752dc::function_2324f175(0);
        level.var_2713b408.ignoreall = 1;
    }
    plane = getent("cargo_plane", "targetname");
    var_853687bd = getentarray("af_plane_triggers", "targetname");
    var_853687bd = arraycombine(var_853687bd, getentarray("plane_floor_clip", "targetname"));
    var_853687bd = arraycombine(var_853687bd, getentarray("plane_cargo", "targetname"));
    foreach (thing in var_853687bd) {
        thing delete();
    }
    probes = [8:"cargo_probe_9", 7:"cargo_probe_8", 6:"cargo_probe_7", 5:"cargo_probe_6", 4:"cargo_probe_5", 3:"cargo_probe_4", 2:"cargo_probe_3", 1:"cargo_probe_2", 0:"cargo_probe_1"];
    foreach (probe in probes) {
        probe = getent(probe, "targetname");
        if (isdefined(probe)) {
            probe unlink();
            probe.origin.probe = probe.origin - vectorscale((0, 0, 1), 10000);
        }
    }
    player = getplayers()[0];
    player setmovespeedscale(0.4);
    player util::function_749362d7(1);
    exploder::exploder("hit3_pcrash_end_embers");
    exploder::exploder("airfield_crash_lighting");
    exploder::exploder("hit3_pcrash_end_embers_02");
    level thread function_fa3409bb();
    player clientfield::set_to_player("set_player_pbg_bank", 1);
    thread namespace_a052577e::function_cbae87a2();
    var_2713b408 = getactorarray("arash", "targetname")[0];
    var_2713b408.var_c681e4c1.var_2713b408 = 1;
    music::setmusicstate("b7.0_aftermath");
    level thread scene::play("scene_tkd_hit3_outro_interrogation", [0:var_2713b408]);
    level thread function_ea2f2e25(var_50cc0d4f);
    level waittill(#"hash_285b0696c88c644a");
    thread namespace_a052577e::function_4788a209();
    objectives::complete("obj_arash");
    objectives::complete("send_message");
    wait(1);
    level lui::screen_fade_out(2.5);
    if (isdefined(var_d3440450)) {
        skipto::function_4e3ab877(var_d3440450);
    }
    wait(1);
    level flag::set("af_hit3_interrogation_complete");
    function_91d49d23(level.var_fdc6062e);
    function_91d49d23(level.woods);
    function_91d49d23(level.var_2713b408);
    guys = getaiarray();
    array::delete_all(guys);
    player val::set(#"hash_3a075a8a47144f76", "disable_weapon_cycling", 1);
    player val::set(#"hash_3a075a8a47144f76", "disable_weapons", 1);
    player val::set(#"hash_3a075a8a47144f76", "allow_jump", 0);
    player val::set(#"hash_3a075a8a47144f76", "allow_sprint", 0);
    level lui::screen_fade_out(0);
    namespace_ee1da81f::function_430ebd4b(3, 1);
    namespace_ee1da81f::function_8c0836dd(0);
    skipto::function_1c2dfc20("cp_ger_hub", "character_creation");
}

// Namespace tkdn_af_wreck/namespace_d73f985a
// Params 0, eflags: 0x2 linked
// Checksum 0xe31221, Offset: 0xc40
// Size: 0x6c
function function_fa3409bb() {
    level flag::wait_till("af_hit3_interrogation_complete");
    exploder::kill_exploder("hit3_pcrash_end_embers");
    exploder::kill_exploder("airfield_crash_lighting");
    exploder::kill_exploder("hit3_pcrash_end_embers_02");
}

// Namespace tkdn_af_wreck/namespace_d73f985a
// Params 4, eflags: 0x2 linked
// Checksum 0xa0ed6efa, Offset: 0xcb8
// Size: 0x24
function cleanup(*name, *var_f9f06983, *direct, *player) {
    
}

// Namespace tkdn_af_wreck/namespace_d73f985a
// Params 0, eflags: 0x2 linked
// Checksum 0xd02c3b69, Offset: 0xce8
// Size: 0x44
function init_flags() {
    level flag::init("af_wreck_complete");
    level flag::init("af_hit3_interrogation_complete");
}

// Namespace tkdn_af_wreck/namespace_d73f985a
// Params 0, eflags: 0x2 linked
// Checksum 0x2ecd5c2b, Offset: 0xd38
// Size: 0xc4
function init_clientfields() {
    clientfield::register("world", "wreck_volume_decals", 1, 1, "int");
    clientfield::register("world", "crash_models", 1, 1, "int");
    clientfield::register("toplayer", "set_player_pbg_bank", 1, 1, "int");
    clientfield::register("toplayer", "wreck_vision", 1, 1, "int");
}

// Namespace tkdn_af_wreck/namespace_d73f985a
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0xe08
// Size: 0x4
function function_22b7fffd() {
    
}

// Namespace tkdn_af_wreck/namespace_d73f985a
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0xe18
// Size: 0x4
function function_cf191fff() {
    
}

// Namespace tkdn_af_wreck/namespace_d73f985a
// Params 1, eflags: 0x2 linked
// Checksum 0x1ef6efb3, Offset: 0xe28
// Size: 0x44
function function_91d49d23(guy) {
    if (isdefined(guy)) {
        util::stop_magic_bullet_shield(guy);
        guy delete();
    }
}

// Namespace tkdn_af_wreck/namespace_d73f985a
// Params 0, eflags: 0x2 linked
// Checksum 0xb7029faf, Offset: 0xe78
// Size: 0x1ac
function function_70dd6f0e() {
    var_ba0ab0f9 = getentarray("wreck_models", "targetname");
    if (isdefined(var_ba0ab0f9)) {
        foreach (model in var_ba0ab0f9) {
            model notsolid();
            model hide();
        }
    }
    level flag::wait_till("af_skid_complete");
    if (isdefined(var_ba0ab0f9)) {
        foreach (model in var_ba0ab0f9) {
            model solid();
            model show();
        }
    }
    level clientfield::set("wreck_volume_decals", 1);
}

// Namespace tkdn_af_wreck/namespace_d73f985a
// Params 1, eflags: 0x2 linked
// Checksum 0x813d7a59, Offset: 0x1030
// Size: 0x184
function function_ea2f2e25(var_50cc0d4f) {
    var_fdc6062e = getactorarray("af_adler", "targetname")[0];
    var_fdc6062e hide();
    player = getplayers()[0];
    setdvar(#"hash_252e699c41531f1a", 0);
    player clientfield::set_to_player("wreck_vision", 1);
    if (is_true(var_50cc0d4f)) {
        wait(level.var_c0c469ea + 0.55);
    } else {
        wait(0.55);
        level lui::screen_fade_in(3);
    }
    thread namespace_a052577e::function_bee54a20();
    wait(0.5);
    level lui::screen_fade_out(3);
    var_fdc6062e show();
    wait(1);
    level lui::screen_fade_in(12);
}
