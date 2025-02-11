#using scripts\core_common\exploder_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\fx_shared;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\cp_common\hms_util;

#namespace namespace_f6d09d1a;

// Namespace namespace_f6d09d1a/namespace_681dba33
// Params 0, eflags: 0x0
// Checksum 0x234e02f8, Offset: 0x358
// Size: 0x14c
function init() {
    setdvar(#"hash_76c0d7e6385ee6de", 0.3);
    setdvar(#"hash_4466b01c6d8d7307", 1.8);
    if (function_72a9e321() == 0) {
        setdvar(#"hash_528da693033482d4", 60);
    }
    level thread function_14faa6d8("t_mainstreet_keys_on", 0, "lgtexp_perf_mainstreet_keys_a");
    level thread function_14faa6d8("t_mainstreet_keys_off", 1, "lgtexp_perf_mainstreet_keys_a");
    level thread function_14faa6d8("t_townsquare_keys_on", 0, "lgtexp_perf_townsquare_keys");
    level thread function_14faa6d8("t_townsquare_keys_off", 1, "lgtexp_perf_townsquare_keys");
    thread function_3515d5cb();
    thread function_a2df4bff();
}

// Namespace namespace_f6d09d1a/namespace_681dba33
// Params 3, eflags: 0x0
// Checksum 0x1415e07a, Offset: 0x4b0
// Size: 0x124
function function_7b9feaa3(var_8d70424c, b_play, var_ad7bbec = undefined) {
    level flag::wait_till("game_start");
    if (isdefined(var_ad7bbec)) {
        waitframe(1);
        if (b_play == 1 & flag::get(var_ad7bbec) == 0) {
            exploder::exploder(var_8d70424c);
        }
        if (b_play == 0 & flag::get(var_ad7bbec) == 0) {
            exploder::stop_exploder(var_8d70424c);
        }
        return;
    }
    waitframe(1);
    if (b_play == 1) {
        exploder::exploder(var_8d70424c);
    }
    if (b_play == 0) {
        exploder::stop_exploder(var_8d70424c);
    }
}

// Namespace namespace_f6d09d1a/namespace_681dba33
// Params 0, eflags: 0x0
// Checksum 0x5915ec56, Offset: 0x5e0
// Size: 0x84
function function_3515d5cb() {
    trig = getent("backtrack_observation_lights_on", "targetname");
    if (isdefined(trig)) {
        trig waittill(#"trigger");
        level thread function_7b9feaa3("lgtexp_perf_observation", 0);
    }
    wait 1;
    thread function_3515d5cb();
}

// Namespace namespace_f6d09d1a/namespace_681dba33
// Params 0, eflags: 0x0
// Checksum 0xc0673e7f, Offset: 0x670
// Size: 0x84
function function_a2df4bff() {
    trig = getent("backtrack_observation_lights_off", "targetname");
    if (isdefined(trig)) {
        trig waittill(#"trigger");
        level thread function_7b9feaa3("lgtexp_perf_observation", 1);
    }
    wait 1;
    thread function_a2df4bff();
}

// Namespace namespace_f6d09d1a/namespace_681dba33
// Params 0, eflags: 0x0
// Checksum 0x10a42c47, Offset: 0x700
// Size: 0xe4
function function_bdf9ac3e() {
    var_93a64e41 = getent("t_lgt_escape", "targetname");
    var_93a64e41 trigger::wait_till();
    exploder::exploder("lgtexp_escape_facility");
    exploder::stop_exploder("lgtexp_perf_escape");
    setdvar(#"r_lightingsunshadowdisabledynamicdraw", 1);
    level flag::wait_till("flg_apc_ride_mall_blockade_smash");
    wait 1.5;
    setdvar(#"r_lightingsunshadowdisabledynamicdraw", 0);
}

// Namespace namespace_f6d09d1a/namespace_681dba33
// Params 3, eflags: 0x0
// Checksum 0xe604c35c, Offset: 0x7f0
// Size: 0xe6
function function_14faa6d8(str_trigger, b_play, var_8d70424c) {
    t_trigger = getent(str_trigger, "targetname");
    t_trigger endon(#"entitydeleted");
    while (isdefined(t_trigger)) {
        s_waitresult = t_trigger waittill(#"trigger");
        if (s_waitresult.activator === level.player) {
            if (b_play == 1) {
                exploder::exploder(var_8d70424c);
            }
            if (b_play == 0) {
                exploder::stop_exploder(var_8d70424c);
            }
            wait 1;
        }
    }
}

// Namespace namespace_f6d09d1a/namespace_681dba33
// Params 0, eflags: 0x0
// Checksum 0x2d90f3f6, Offset: 0x8e0
// Size: 0x148
function function_a677563d() {
    var_d5535d9a = getvehiclearray("control_tower_elevator", "targetname")[0];
    var_d5535d9a.probe = getent("elevator_probe_dyn", "targetname");
    if (isdefined(var_d5535d9a.probe)) {
        var_d5535d9a.probe linkto(var_d5535d9a, undefined, (-3, 0, -21.5), (0, 0, 180));
    }
    var_4776255f = var_d5535d9a.origin + (0, 0, 32.5);
    var_4ae95b10 = (90, 0, 0);
    var_d5535d9a fx::play("maps/cp_rus_amerika/fx9_amrka_lgt_elevator", var_4776255f, var_4ae95b10, "kill_elevator_fx_lgt", 1);
    level flag::wait_till("flg_terminal_player_interact");
    var_d5535d9a notify(#"kill_elevator_fx_lgt");
}

// Namespace namespace_f6d09d1a/namespace_681dba33
// Params 0, eflags: 0x0
// Checksum 0xa91d7a99, Offset: 0xa30
// Size: 0x54
function function_811985a1() {
    level thread function_14faa6d8("t_rooftop_twn_keys_on", 0, "lgtexp_perf_townsquare_keys_static");
    level thread function_14faa6d8("t_rooftop_twn_keys_off", 1, "lgtexp_perf_townsquare_keys_static");
}

// Namespace namespace_f6d09d1a/namespace_681dba33
// Params 0, eflags: 0x0
// Checksum 0x6b65330f, Offset: 0xa90
// Size: 0x4c
function function_4699a51c() {
    ai_enemy_helipad_left = getent("ai_lgt_enemy_helipad_left", "script_noteworthy", 1);
    ai_enemy_helipad_left waittill(#"death");
}

