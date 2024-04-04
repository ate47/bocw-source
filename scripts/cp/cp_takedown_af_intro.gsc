// Atian COD Tools GSC CW decompiler test
#using script_85cd2e9a28ea8a1;
#using script_3dc93ca9902a9cda;
#using scripts\cp_common\snd.gsc;
#using script_3de86a21a0c8d47b;
#using script_74940ab70a48ee4e;
#using script_4937c6974f43bb71;
#using script_7cf3e180e994d17f;
#using script_31e9b35aaacbbd93;
#using scripts\cp\cp_takedown_af_hill.gsc;
#using script_61cfc2ab8e60625;
#using scripts\cp\cp_takedown.gsc;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using scripts\cp_common\util.gsc;
#using scripts\cp_common\skipto.gsc;
#using scripts\cp_common\gametypes\battlechatter.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\cp_common\objectives.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\cp_common\dialogue.gsc;
#using script_2d443451ce681a;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace tkdn_af_intro;

// Namespace tkdn_af_intro/namespace_793341d2
// Params 1, eflags: 0x2 linked
// Checksum 0x4e4b5fa3, Offset: 0x348
// Size: 0x9c
function starting(*var_d3440450) {
    player = getplayers()[0];
    /#
        if (!isdefined(player)) {
            iprintlnbold("<unknown string>");
        }
    #/
    tkdn_af_hill::function_a2015343();
    level scene::init("scene_tkd_hit3_intro");
    player freezecontrols(1);
}

// Namespace tkdn_af_intro/namespace_793341d2
// Params 2, eflags: 0x2 linked
// Checksum 0x4513b1a5, Offset: 0x3f0
// Size: 0x67c
function main(var_d3440450, *var_50cc0d4f) {
    plane = namespace_b100dd86::function_5431431d();
    namespace_b100dd86::function_c8381339(plane, 0);
    exploder::stop_exploder("airfield_assault_lighting_noplane");
    exploder::exploder("airfield_assault_lighting");
    level thread util::screen_fade_out(0);
    level thread namespace_29a279dd::set_display(3);
    level lui::play_movie(#"hash_1b87a73f3c672bf7", "fullscreen", 1, 0, 0, #"", 20);
    for (player = getplayers()[0]; !isplayer(player); player = getplayers()[0]) {
        waitframe(1);
    }
    player endon(#"death", #"disconnect");
    player setcharacteroutfit(7);
    player clientfield::set_to_player("force_stream_weapons", 2);
    setdvar(#"hash_76c0d7e6385ee6de", 0.05);
    setdvar(#"hash_7b06b8037c26b99b", 255);
    var_d388318 = 1;
    /#
        var_d388318 = 0;
    #/
    namespace_82bfe441::fade(1, "FadeImmediate");
    player freezecontrols(0);
    player setstance("stand");
    player val::set("af_intro", "allow_sprint", 1);
    exploder::exploder("hit3_intro_ambient");
    exploder::exploder("hit3_prop_mist");
    wait(1.25);
    level thread util::screen_fade_in(0.7);
    level thread scene::play("scene_tkd_hit3_intro", "shot 1", [level.adler, level.woods]);
    thread function_d12ea338();
    music::setmusicstate("b1.0_opening_part_2");
    snd::function_7db65a93("af_intro_camera_whoosh");
    namespace_a052577e::evt_transition_roof_to_airfield_camera_pt2();
    wait(1.5);
    level thread function_1dee368();
    wait(2);
    thread namespace_a052577e::function_dd4c9710();
    player thread function_b598d07b();
    level waittill(#"hash_1582572f4be81dc1");
    player setcharacteroutfit(9);
    level flag::set("af_fade_in_complete");
    player namespace_db2381c4::function_c8bc54e4();
    level waittill(#"hash_47b9f42b49b80814");
    player setmovespeedscale(0.3);
    namespace_b100dd86::function_5aabc3fb();
    if (isdefined(level.var_d7d201ba)) {
        player flag::clear(level.var_d7d201ba);
    }
    player tkdn::function_43593d7d();
    player enableweapons();
    player util::delay(1, undefined, &util::function_749362d7, 0);
    player setlowready(0);
    player function_e0c7d69(1);
    level.adler ai::set_behavior_attribute("demeanor", "cqb");
    level.woods ai::set_behavior_attribute("demeanor", "cqb");
    level waittill(#"hash_42c2d836748c8726");
    music::function_edda155f("b1.5_airfield_reveal");
    player util::blend_movespeedscale(0.6, 2);
    namespace_82bfe441::fade(0, "FadeSlow");
    plane_flyover = vehicle::simple_spawn_and_drive("plane_flyover");
    thread namespace_a052577e::function_92a6fd6a(plane_flyover);
    level flag::wait_till("start_tarmac");
    if (isdefined(var_50cc0d4f)) {
        skipto::function_4e3ab877(var_50cc0d4f);
    }
}

// Namespace tkdn_af_intro/namespace_793341d2
// Params 0, eflags: 0x2 linked
// Checksum 0x672e0954, Offset: 0xa78
// Size: 0x3c
function function_b598d07b() {
    level waittill(#"hash_396b658765ef9b4e");
    self playrumbleonentity("damage_light");
}

// Namespace tkdn_af_intro/namespace_793341d2
// Params 1, eflags: 0x2 linked
// Checksum 0xa45ab851, Offset: 0xac0
// Size: 0xc4
function function_1dee368(*var_54fed624) {
    player = getplayers()[0];
    if (!isplayer(player)) {
        return;
    }
    player endon(#"death");
    namespace_29a279dd::set_display(4, #"hash_3601a56208a44de8", #"hash_6ad17ea80deca71a");
    wait(3.5);
    namespace_29a279dd::set_display(5);
    wait(3);
    namespace_29a279dd::remove();
}

// Namespace tkdn_af_intro/namespace_793341d2
// Params 0, eflags: 0x2 linked
// Checksum 0xe3824562, Offset: 0xb90
// Size: 0x4c
function function_d12ea338() {
    level waittill(#"hash_3286e739acb53c93");
    level objectives::follow("af_follow_adler", level.adler, undefined, 0, 0);
}

// Namespace tkdn_af_intro/namespace_793341d2
// Params 0, eflags: 0x0
// Checksum 0xd3031848, Offset: 0xbe8
// Size: 0x3c
function function_cc5aa221() {
    player = getplayers()[0];
    level waittill(#"hash_6682816c8cb8b60f");
}

// Namespace tkdn_af_intro/namespace_793341d2
// Params 4, eflags: 0x2 linked
// Checksum 0xfc6b5c22, Offset: 0xc30
// Size: 0x64
function cleanup(*name, *starting, *direct, *player) {
    level clientfield::set("crash_models", 1);
    level clientfield::set("crash_models", 0);
}

// Namespace tkdn_af_intro/namespace_793341d2
// Params 0, eflags: 0x0
// Checksum 0xf18c1b93, Offset: 0xca0
// Size: 0x24
function init_flags() {
    level flag::init("af_fade_in_complete");
}

// Namespace tkdn_af_intro/namespace_793341d2
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0xcd0
// Size: 0x4
function init_clientfields() {
    
}

// Namespace tkdn_af_intro/namespace_793341d2
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0xce0
// Size: 0x4
function function_22b7fffd() {
    
}

// Namespace tkdn_af_intro/namespace_793341d2
// Params 0, eflags: 0x0
// Checksum 0xe4e9772d, Offset: 0xcf0
// Size: 0x34
function function_78bc26d5() {
    self vehicle::lights_on();
    self vehicle::toggle_force_driver_taillights(1);
}

