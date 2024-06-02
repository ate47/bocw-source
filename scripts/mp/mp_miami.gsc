// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_shared.gsc;
#using script_67ce8e728d8f37ba;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\load_shared.gsc;
#using scripts\core_common\compass.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace mp_miami;

// Namespace mp_miami/level_init
// Params 1, eflags: 0x20
// Checksum 0x1e75310f, Offset: 0x1c0
// Size: 0x14c
function event_handler[level_init] main(*eventstruct) {
    clientfield::register("scriptmover", "neon_rob", 1, 1, "counter");
    namespace_66d6aa44::function_3f3466c9();
    callback::on_end_game(&on_end_game);
    scene::function_497689f6(#"cin_mp_miami_intro_cia", "intro_kgb_van", "tag_probe_attach", "probe_miami_van_igc");
    killstreaks::function_257a5f13("straferun", 40);
    killstreaks::function_257a5f13("helicopter_comlink", 75);
    level.missileremotelaunchvert = 10000;
    load::main();
    compass::setupminimap("");
    level thread function_f92fe90c();
    level thread function_3fbfa2de();
}

// Namespace mp_miami/mp_miami
// Params 0, eflags: 0x2 linked
// Checksum 0xa4072a75, Offset: 0x318
// Size: 0x9c
function function_f92fe90c() {
    level endon(#"game_ended");
    level flag::wait_till("first_player_spawned");
    waitframe(1);
    var_2555a1ec = getentarray("neon_rob_sign", "targetname");
    var_2555a1ec = array::sort_by_script_int(var_2555a1ec, 1);
    level thread function_7858899c(var_2555a1ec);
}

// Namespace mp_miami/mp_miami
// Params 1, eflags: 0x2 linked
// Checksum 0x6f5036, Offset: 0x3c0
// Size: 0x124
function function_7858899c(var_37473ebc) {
    level endon(#"game_ended");
    while (!isdefined(level.var_58bc5d04)) {
        wait(1);
    }
    while (true) {
        foreach (sign in var_37473ebc) {
            if (!isdefined(sign)) {
                continue;
            }
            sign clientfield::increment("neon_rob", 1);
            wait(0.5);
            if (!isdefined(sign)) {
                continue;
            }
            sign clientfield::increment("neon_rob", 1);
        }
        wait(1);
    }
}

// Namespace mp_miami/mp_miami
// Params 0, eflags: 0x2 linked
// Checksum 0xd0f0b8f, Offset: 0x4f0
// Size: 0x54
function function_3fbfa2de() {
    var_4c927798 = getent("diving_board_trig", "targetname");
    if (isdefined(var_4c927798)) {
        var_4c927798 callback::on_trigger(&function_2e1e9186);
    }
}

// Namespace mp_miami/mp_miami
// Params 1, eflags: 0x2 linked
// Checksum 0xce171654, Offset: 0x550
// Size: 0xfe
function function_2e1e9186(info) {
    player = info.activator;
    trigger = self;
    if (isplayer(player) && isdefined(trigger) && !is_true(trigger.var_7033e9)) {
        trigger.var_7033e9 = 1;
        self playsound("amb_diving_board");
        while (isplayer(player) && isdefined(trigger) && player istouching(trigger)) {
            waitframe(1);
        }
        if (isdefined(trigger)) {
            trigger.var_7033e9 = 0;
        }
    }
}

// Namespace mp_miami/mp_miami
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x658
// Size: 0x4
function on_end_game() {
    
}

