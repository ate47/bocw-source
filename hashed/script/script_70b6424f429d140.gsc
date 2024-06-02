// Atian COD Tools GSC CW decompiler test
#using script_85cd2e9a28ea8a1;
#using script_54412fb3a6fab34c;
#using scripts\cp_common\snd_utility.gsc;
#using script_3dc93ca9902a9cda;
#using scripts\cp_common\snd.gsc;
#using script_31e9b35aaacbbd93;
#using script_6b47294865dc34b5;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\cp\cp_takedown.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\cp_common\dialogue.gsc;
#using script_37f9ff47f340fbe8;
#using scripts\core_common\easing.gsc;
#using scripts\cp_common\skipto.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\vehicleriders_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace tkdn_heli_intro;

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 1, eflags: 0x0
// Checksum 0xa5ce39e3, Offset: 0x7c0
// Size: 0xc
function starting(*var_d3440450) {
    
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 2, eflags: 0x0
// Checksum 0x68914b2d, Offset: 0x7d8
// Size: 0x1ec
function main(var_d3440450, *var_50cc0d4f) {
    level thread globallogic_ui::function_7bc0e4b9();
    level.var_aece851d = [];
    level.var_fc514951 = 0;
    player = getplayers()[0];
    player val::set("takedown_hit1_intro", "show_weapon_hud", 0);
    if (is_true(level.var_fc514951)) {
        wait(0.1);
        snd::function_7db65a93("intro_mockup");
        thread function_c6662dbb("intro_enemy_trucks", 1);
        scene::play("scene_tkd_hit1_intro_pre_fly_in");
        level lui::screen_fade_out(0, "black");
        level util::delay(0.4, undefined, &lui::screen_fade_in, 0.5);
    } else {
        wait(3.5);
        thread function_c6662dbb("intro_enemy_trucks", 1);
        wait(0.5);
    }
    snd::function_7db65a93("intro_trans_out");
    thread flyin();
    level flag::wait_till("heli_intro_complete");
    if (isdefined(var_50cc0d4f)) {
        skipto::function_4e3ab877(var_50cc0d4f);
    }
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x0
// Checksum 0x39749ac0, Offset: 0x9d0
// Size: 0x48
function function_77438329() {
    player = getplayers()[0];
    while (!player isstreamerready()) {
        waitframe(1);
    }
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 4, eflags: 0x0
// Checksum 0x692597e8, Offset: 0xa20
// Size: 0x24
function cleanup(*name, *starting, *direct, *player) {
    
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0xa50
// Size: 0x4
function init_flags() {
    
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x2 linked
// Checksum 0xdb6ff145, Offset: 0xa60
// Size: 0xf4
function init_clientfields() {
    clientfield::register("vehicle", "hit1_helispotlight", 1, 1, "int");
    clientfield::register("vehicle", "hit1_track_vehicle", 1, 1, "int");
    clientfield::register("scriptmover", "hit1_track_ent", 1, 1, "int");
    clientfield::register("scriptmover", "hit1_tracking", 1, 1, "int");
    clientfield::register("scriptmover", "hit1_light", 1, 1, "int");
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0xb60
// Size: 0x4
function function_22b7fffd() {
    
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x2 linked
// Checksum 0x1255402c, Offset: 0xb70
// Size: 0x10c
function function_fbb0d73f() {
    self endon(#"death");
    self setrotorspeed(1);
    self.soundmod = "heli";
    self vehicle::toggle_tread_fx(1);
    self vehicle::toggle_exhaust_fx(1);
    self vehicle::toggle_sounds(1);
    self setrotorspeed(1);
    self vehicle::lights_on();
    params = spawnstruct();
    params.no_clear_movement = 1;
    params.var_a22ee662 = 1;
    self vehicle_ai::set_state("scripted", params);
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 1, eflags: 0x0
// Checksum 0x9091c9cf, Offset: 0xc88
// Size: 0x64
function function_bff76496(f) {
    level flag::wait_till(f);
    /#
        debug2dtext((1500, 700, 0), f, (1, 1, 1), 1, (0, 0, 0), 0, 1, 40);
    #/
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x2 linked
// Checksum 0xc4fb2cb2, Offset: 0xcf8
// Size: 0x6c
function function_50c1c92b() {
    player = getplayers()[0];
    level.fake_player = util::spawn_player_clone(player);
    level.fake_player.targetname = "FakePlayer";
    thread function_3b697267();
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x2 linked
// Checksum 0xeb45f8ea, Offset: 0xd70
// Size: 0x298
function function_3b697267() {
    player = getplayers()[0];
    player allowcrouch(0);
    waitframe(3);
    player takeallweapons();
    player playerlinktodelta(level.fake_player, "tag_player", 1, 30, 15, 15, 30, 1, 1);
    wait(0.1);
    player setlowready(1);
    level flag::wait_till("heli_player_gets_weapon");
    var_5ca6956f = getweapon(#"smg_standard_t9", array("reflex", "fastreload"));
    var_2105d8b1 = getweapon(#"sniper_quickscope_t9");
    player giveweapon(var_5ca6956f);
    player giveweapon(var_2105d8b1);
    player switchtoweapon(var_5ca6956f);
    level flag::wait_till("heli_intro_complete");
    player playerlinktodelta(level.fake_player, "tag_player", 1, 0, 0, 0, 0, 1);
    player val::set("takedown_hit1_intro", "show_weapon_hud", 1);
    wait(0.5);
    player setlowready(0);
    level.fake_player hide();
    player unlink();
    player allowcrouch(1);
    level notify(#"hash_2769bf067f3ba0cb");
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 3, eflags: 0x2 linked
// Checksum 0x88203e90, Offset: 0x1010
// Size: 0x7e4
function function_3d66ebcc(tname, var_5283a254, skipto_end = 0) {
    if (is_true(var_5283a254)) {
        level.var_40b02b72 = vehicle::simple_spawn(tname);
        level.var_40b02b72[level.var_40b02b72.size] = vehicle::simple_spawn_single("intro_heli_ally");
    } else {
        level.var_40b02b72 = vehicle::simple_spawn_and_drive(tname);
    }
    player_heli = level.var_40b02b72[0];
    level.var_9a3944f4 = level.var_40b02b72[1];
    if (isdefined(level.var_40b02b72[1].script_noteworthy)) {
        player_heli = level.var_40b02b72[1];
        level.var_9a3944f4 = level.var_40b02b72[0];
    }
    player_heli flag::init("player_heli_landing");
    foreach (chopper in level.var_40b02b72) {
        chopper thread function_fbb0d73f();
    }
    player_heli setmodel("veh_t8_mil_helicopter_uh1d_cp_takedown");
    level.var_9a3944f4 setmodel("veh_t8_mil_helicopter_uh1d_cp_takedown");
    player_heli hidepart("tag_gunner_barrel1", "veh_t8_mil_helicopter_uh1d_left_gun_mount_attach_grn", 1);
    thread heli_light(level.var_9a3944f4, "ally_heli_spot_light_bustout", "tag_glass_front_left_lower_d0", (-20, 12, 0), level.var_9a3944f4, 0, 1);
    level.var_9a3944f4 thread function_3cebcd1b();
    player_heli.probe = getent("heli_probe", "targetname");
    if (isdefined(player_heli.probe)) {
        player_heli.probe linkto(player_heli, "tag_fire_extinguisher_attach", (-4, 0, 12), (0, 0, 0));
    }
    player_heli.var_6098f318 = getent("heli_cab_probe", "targetname");
    if (isdefined(player_heli.var_6098f318)) {
        player_heli.var_6098f318 linkto(player_heli, "tag_fire_extinguisher_attach", (38, 0, 16), (0, 0, 0));
    }
    player = getplayers()[0];
    tag = "tag_origin";
    if (!is_true(level.var_fc514951)) {
        wait(1);
    }
    mover = getent("intro_heli_assault_linked", "targetname");
    mover linkto(player_heli, tag, (0, 0, 0), (0, 0, 0));
    if (is_true(var_5283a254)) {
        var_afb6d099 = 15;
        var_92d3857f = 23;
        if (skipto_end) {
            var_afb6d099 = 0.05;
            var_92d3857f = 0.05;
            player_heli util::delay_notify(0.2, "lights_on");
            level.var_9a3944f4 util::delay_notify(0.2, "lights_on");
        }
        level flag::delay_set(var_afb6d099, "spawn_enemy_trucks");
        level flag::delay_set(var_92d3857f, "intro_heli_lights_on");
        thread function_e826dfbb();
        player thread function_8227f24e();
        level.fake_player = player;
        function_50c1c92b();
        actors = [];
        actors[player_heli.targetname] = player_heli;
        actors[level.var_9a3944f4.targetname] = level.var_9a3944f4;
        actors[#"fakeplayer"] = level.fake_player;
        if (!skipto_end) {
            thread function_a01817ae();
            level thread scene::play("scene_tkd_hit1_intro_fly_in_trucks", level.var_abaa6487);
            level scene::play("scene_tkd_hit1_intro_fly_in", actors);
        } else {
            level flag::set("heli_player_gets_weapon");
            level flag::set("heli_intro_complete");
            level thread scene::play_from_time("scene_tkd_hit1_intro_fly_in_trucks", level.var_abaa6487, undefined, 0.85, 1);
            level scene::play_from_time("scene_tkd_hit1_intro_fly_in", actors, undefined, 0.85, 1);
        }
        if (isdefined(player_heli.light)) {
            player_heli notify(#"hash_48aad0ddc0d9bf5d");
            player_heli.light unlink();
            player_heli.light delete();
        }
        level flag::set("heli_intro_complete");
        level flag::set("player_heli_landing");
        level flag::set("fly_in_scene_finished");
        level flag::set("intro_takeout_driver");
        level flag::set("truck_front");
        level flag::delay_set(0.1, "heli_intro_path_ally");
        wait(0.2);
        level.var_9a3944f4 thread vehicle::get_on_and_go_path("intro_ally_heli_post_scene");
    }
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x2 linked
// Checksum 0x5649713a, Offset: 0x1800
// Size: 0x284
function function_e826dfbb() {
    self endon(#"death");
    level endon(#"heli_convoy_aslt_complete");
    wait(1);
    woods = undefined;
    while (!isdefined(woods)) {
        woods = getent("woods_chopper_from_scene", "script_noteworthy", 1);
        waitframe(2);
    }
    wait(0.5);
    woods util::magic_bullet_shield();
    guys = [];
    guys[0] = getent("driver_woods_kills", "targetname", 1);
    guys[1] = getent("passenger_woods_kills", "targetname", 1);
    for (i = 0; i < 2; i++) {
        woods waittill(#"hash_18f2e350ace238e0");
        level flag::delay_set(0.05, "truck_front");
        level flag::delay_set(0.05, "heli_intro_complete");
        startpos = woods gettagorigin("tag_flash");
        endpos = startpos + vectorscale(woods getweaponforwarddir(), 100);
        color = (1, 0, 0);
        if (isdefined(guys[i])) {
            endpos = guys[i] geteye();
            color = (1, 1, 0);
            level.var_9a3944f4 thread function_cbe25a41(guys[i], "tag_glass_front_left_lower_d0", 1);
        }
        magicbullet(woods.weapon, startpos, endpos, woods);
    }
    wait(1.5);
    level flag::set("heli_intro_path_ally");
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x2 linked
// Checksum 0xb9c19543, Offset: 0x1a90
// Size: 0x8c
function function_72dfda8f() {
    self endon(#"death");
    level endon(#"heli_intro_complete");
    while (true) {
        waitresult = level waittill(#"shake_low", #"shake_med", #"hash_7fbec71ff58f17be");
        level.var_8f8dc88e = waitresult._notify;
    }
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x2 linked
// Checksum 0xe0a1c201, Offset: 0x1b28
// Size: 0x216
function function_8227f24e() {
    self endon(#"death");
    level endon(#"heli_intro_complete");
    level.var_8f8dc88e = "shake_low";
    thread function_72dfda8f();
    while (true) {
        source = self.origin;
        pitch = randomfloatrange(0, 0.15);
        yaw = randomfloatrange(0, 0.15);
        roll = 0;
        duration = randomfloatrange(0.25, 1);
        freqpitch = randomfloatrange(2.5, 3.5);
        freqyaw = randomfloatrange(2.5, 3.5);
        if (level.var_8f8dc88e == "shake_med") {
            pitch = randomfloatrange(0.02, 0.35);
            yaw = randomfloatrange(0.02, 0.25);
            roll = randomfloatrange(0.02, 0.1);
            duration = 1;
            freqpitch = 10;
            freqyaw = 7;
        }
        if (pitch + yaw > 0.025) {
            screenshake(source, pitch, yaw, roll, duration, 0, 0, 0, freqpitch, freqyaw);
        }
        wait(duration);
    }
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x2 linked
// Checksum 0xc500ca42, Offset: 0x1d48
// Size: 0x24
function flyin() {
    function_3d66ebcc("intro_heli_player", 1);
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x2 linked
// Checksum 0x979c33d5, Offset: 0x1d78
// Size: 0x2d0
function function_3cebcd1b() {
    self endon(#"death");
    level endon(#"bustout_start_shooting_house");
    var_979d3fe0 = [#"hit1_truck_rear", #"hit1_truck_house", #"hit1_truck_mid", #"hit1_truck_front", #"heli_focus_mid_house", #"heli_focus_rear_house"];
    var_f01b798 = ["hit1_truck_rear", "hit1_truck_house", "hit1_truck_mid", "hit1_truck_front", "heli_focus_mid_house", "heli_focus_rear_house"];
    while (true) {
        ret = level waittill(#"hit1_truck_rear", #"hit1_truck_house", #"hit1_truck_mid", #"hit1_truck_front", #"heli_focus_mid_house", #"heli_focus_rear_house");
        var_87c48267 = "GetEntDislikesHashStrings";
        for (i = 0; i < var_979d3fe0.size; i++) {
            if (var_979d3fe0[i] == ret._notify) {
                var_87c48267 = var_f01b798[i];
                break;
            }
        }
        var_4cd99adc = getent(var_87c48267, "script_noteworthy", 1);
        if (!isdefined(var_4cd99adc)) {
            var_4cd99adc = struct::get(var_87c48267, "targetname");
        }
        if (isdefined(var_4cd99adc)) {
            self thread function_cbe25a41(var_4cd99adc, "tag_glass_front_left_lower_d0", 1);
            level.var_7c11765c = gettime() + 2000;
            continue;
        }
        /#
            iprintlnbold("hit1_truck_front" + var_87c48267);
        #/
    }
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 4, eflags: 0x2 linked
// Checksum 0xc78b0efc, Offset: 0x2050
// Size: 0x144
function function_f97ce389(heli, tag, var_2d65f507, var_5525c0b0) {
    heli.light = util::spawn_model("tag_origin", heli gettagorigin(tag) + (0, 0, -84), heli gettagangles(tag) + var_2d65f507);
    if (var_5525c0b0) {
        util::delay(0.3, undefined, &playfxontag, #"hash_f80473c70ea6ee3", heli.light, "tag_origin");
    } else {
        playfxontag(#"hash_7d057d370983507f", heli.light, "tag_origin");
    }
    heli.light linkto(heli, "tag_searchlight_fx", (0, 0, 0), (0, 0, 0));
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 8, eflags: 0x2 linked
// Checksum 0xcd7db166, Offset: 0x21a0
// Size: 0x1f4
function heli_light(heli, tname, tag, var_2d65f507, var_ba240678, var_fa2357fe = 0, var_1a67724f = 0, var_5525c0b0 = 0) {
    fx_light = 1;
    heli endon(#"death");
    heli waittill(#"lights_on");
    heli.col_hack = (1, 0, 0);
    if (!isdefined(level.var_eaf95d92)) {
        level.var_eaf95d92 = [];
    }
    if (!isdefined(level.var_eaf95d92[tname])) {
        if (fx_light) {
            if (!var_1a67724f) {
                function_f97ce389(heli, tag, var_2d65f507, var_5525c0b0);
            }
        } else {
            heli.light = getent(tname, "targetname");
            if (!isdefined(heli.light)) {
                heli.light = getent(tname + "_temp", "targetname");
            }
        }
        if (isdefined(heli.light)) {
            heli.light linkto(heli, tag, (0, 0, -64), var_2d65f507);
            level.var_eaf95d92[tname] = heli.light;
        }
    }
    if (isdefined(var_ba240678)) {
        heli thread function_cbe25a41(var_ba240678, tag, var_fa2357fe, var_1a67724f, var_5525c0b0);
    }
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x2 linked
// Checksum 0xa467f014, Offset: 0x23a0
// Size: 0x9e
function function_336e9e88() {
    self endon(#"death");
    while (true) {
        /#
            sphere(self.origin + (0, 0, 12), 4, (1, 1, 0), 1, 0, 10, 1);
            sphere(self.origin, 8, (1, 1, 0), 1, 0, 10, 1);
        #/
        waitframe(1);
    }
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 1, eflags: 0x0
// Checksum 0xfd65eaf1, Offset: 0x2448
// Size: 0x86
function function_833e9642(tag) {
    self endon(#"death");
    tag = "tag_missle_target";
    while (true) {
        /#
            sphere(self gettagorigin(tag), 16, self.col_hack, 1, 0, 10, 1);
        #/
        waitframe(1);
    }
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 6, eflags: 0x2 linked
// Checksum 0x77a6282e, Offset: 0x24d8
// Size: 0x9ea
function function_cbe25a41(var_4cd99adc, tag, var_fa2357fe = 0, var_1a67724f = 0, var_5525c0b0 = 0, var_2526f86c = 0) {
    self endon(#"death");
    self endon(#"hash_48aad0ddc0d9bf5d");
    var_869cc293 = "tag_missle_target";
    if (isdefined(self.var_ba240678)) {
        self.var_ba240678.tracking = var_4cd99adc;
        self.var_9fa13062 = 0;
        self.var_c7d51a18 = 0;
        if (self.var_1a67724f || is_true(self.var_2526f86c)) {
            self.var_ba240678 unlink();
        }
        self.var_1a67724f = var_1a67724f;
        self.var_2526f86c = var_2526f86c;
        if (self.var_1a67724f) {
            self.var_ba240678 linkto(self, var_869cc293, (0, 0, 0), (0, 0, 0));
        } else if (self.var_2526f86c) {
            self.var_ba240678 linkto(var_4cd99adc, tag, (0, 0, 0), (0, 0, 0));
        }
        self sethoverparams(75, 100, 50);
        return;
    }
    if (!isdefined(tag)) {
        tag = "tag_origin";
    }
    self.var_9fa13062 = 0;
    self.var_c7d51a18 = 0;
    self.var_19a7fb91 = 32 + randomfloat(64);
    self.var_19a7fb91 = 96;
    self.var_ba240678 = util::spawn_model("tag_origin", var_4cd99adc.origin, var_4cd99adc.angles);
    self.var_113b6995 = 2;
    self.var_35f26704 = 0;
    self.var_43643137 = (0, 0, 36);
    self.var_71664ae5 = 128;
    self.var_1a67724f = var_1a67724f;
    self.var_ba240678 endon(#"death");
    if (self.var_1a67724f || !isdefined(self.light)) {
        self.var_ba240678 linkto(self, var_869cc293, (0, 0, 0), (0, 0, 0));
        function_f97ce389(self, tag, (0, 0, 0), var_5525c0b0);
    }
    self.light endon(#"death");
    var_61bc4e7 = 0;
    if (var_fa2357fe) {
        var_8c29c159 = getent("light_ally_helispot_bnc", "targetname");
        if (isdefined(var_8c29c159)) {
            var_8c29c159.var_6da8d78a = 1;
            var_8c29c159 linkto(self.var_ba240678, "tag_origin", (0, 0, -200), (0, 0, 0));
            if (var_61bc4e7) {
                var_8c29c159 thread function_336e9e88();
            }
        }
    }
    self.var_ba240678.tracking = var_4cd99adc;
    self clientfield::set("hit1_helispotlight", 1);
    waitframe(1);
    self.light clientfield::set("hit1_light", 1);
    waitframe(1);
    self.var_ba240678 clientfield::set("hit1_track_ent", 1);
    waitframe(1);
    if (isvehicle(self.var_ba240678.tracking)) {
        self.var_ba240678.tracking clientfield::set("hit1_track_vehicle", 1);
    } else {
        self.var_ba240678.tracking clientfield::set("hit1_tracking", 1);
    }
    var_13ad4669 = 0.05;
    self sethoverparams(75, 100, 50);
    self.var_2791e894 = 0;
    while (true) {
        if (!isdefined(self.var_ba240678.tracking) && self.var_1a67724f == 0) {
            waitframe(1);
            continue;
        }
        /#
            if (is_true(var_61bc4e7)) {
                sphere(self.var_ba240678.origin, 8, (1, 0, 0), 1, 0, 10, 1);
                sphere(self.var_ba240678.tracking.origin, 4, (0, 0, 1), 1, 0, 10, 1);
            }
        #/
        if (!(self.var_1a67724f || self.var_2526f86c)) {
            end_point = self.var_ba240678.tracking.origin + self.var_43643137 + anglestoforward(self.var_ba240678.tracking.angles) * self.var_71664ae5;
            dist = distance(self.var_ba240678.origin, end_point);
            if (!self.var_9fa13062 && !self.var_c7d51a18) {
                if (dist > self.var_19a7fb91) {
                    self.var_9fa13062 = 1;
                    self.var_c1cda03b = 0.025;
                    self.var_ab0fdcd8 = self.var_c1cda03b;
                    self.var_7c772b29 = self.var_ba240678.origin;
                    /#
                        if (is_true(var_61bc4e7)) {
                            sphere(end_point, 4, (0, 0, 1), 1, 0, 10, 40);
                        }
                    #/
                    self.var_ba240678 thread easing::ease_origin(end_point, self.var_113b6995, #"back", undefined, 0, 1, 1, [0.35, 3.5]);
                    self.var_35f26704 = gettime() + self.var_113b6995 * 1000;
                    self sethoverparams(75, 100, 50);
                }
            } else if (self.var_9fa13062 && self.var_35f26704 < gettime()) {
                self.var_9fa13062 = 0;
                if (dist < self.var_19a7fb91) {
                    self.var_35f26704 = gettime() + self.var_113b6995 * 1000 / 3;
                    self.var_c7d51a18 = 1;
                    end_point = self.var_ba240678.tracking.origin + self.var_43643137 + anglestoforward(self.var_ba240678.tracking.angles) * self.var_71664ae5;
                    /#
                        if (is_true(var_61bc4e7)) {
                            sphere(end_point, 4, (1, 0, 0), 1, 0, 10, 20);
                        }
                    #/
                    self.var_ba240678 thread easing::ease_origin(end_point, self.var_113b6995 / 3, #"sine", undefined, 0, 1, 1);
                }
            } else if (self.var_c7d51a18) {
                if (self.var_35f26704 < gettime()) {
                    self.var_c7d51a18 = 0;
                }
            }
        }
        tag_ang = self gettagangles(tag);
        org = self gettagorigin(tag) + (0, 0, -10);
        to = vectortoangles(self.var_ba240678.origin - org);
        var_172edc78 = to - tag_ang;
        waitframe(1);
    }
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x0
// Checksum 0xf3e750b0, Offset: 0x2ed0
// Size: 0x44
function function_bfad1e94() {
    level flag::wait_till("spawn_enemy_trucks");
    function_c6662dbb("intro_enemy_trucks", 1);
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x0
// Checksum 0x804dc7ff, Offset: 0x2f20
// Size: 0xec
function function_28090f23() {
    tagnames = ["tag_headlight_left_d0", "tag_headlight_right_d0"];
    tags = [];
    for (i = 0; i < 2; i++) {
        tags[i] = util::spawn_model("tag_origin", self.origin, self.angles);
        tags[i] linkto(self, tagnames[i], (0, 0, 0), (0, 0, 0));
        playfxontag(#"hash_45003fc29bb60a21", tags[i], "tag_origin");
    }
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 2, eflags: 0x2 linked
// Checksum 0x8b090b2f, Offset: 0x3018
// Size: 0x1cc
function function_c6662dbb(trucks, var_d9890e08) {
    level.var_53bd60ae = 1;
    level.var_abaa6487 = [];
    if (is_true(var_d9890e08)) {
        for (i = 1; i < 5; i++) {
            level.var_abaa6487[level.var_abaa6487.size] = vehicle::simple_spawn_single(trucks + i);
        }
    } else {
        level.var_abaa6487 = vehicle::simple_spawn_and_drive(trucks);
    }
    foreach (truck in level.var_abaa6487) {
        truck vehicle::toggle_force_driver_taillights(1);
        if (isdefined(truck.var_164e8194)) {
            truck setmodel(truck.var_164e8194);
        }
        if (isdefined(truck.script_parameters) && truck.script_parameters == "truck_rear_unload") {
            level.var_aece851d[level.var_aece851d.size] = truck;
        }
    }
    thread namespace_cb0d537d::function_149bd557();
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x2 linked
// Checksum 0x40cf9929, Offset: 0x31f0
// Size: 0x74
function function_a01817ae() {
    level endon(#"intro_waittill_bustout_heli");
    woods = undefined;
    while (!isdefined(woods)) {
        woods = getent("woods_chopper_from_scene", "script_noteworthy", 1);
        waitframe(1);
    }
    woods function_ccfab96();
}

// Namespace tkdn_heli_intro/namespace_6486858a
// Params 0, eflags: 0x2 linked
// Checksum 0x6c982df1, Offset: 0x3270
// Size: 0x2ae
function function_ccfab96() {
    level endon(#"intro_waittill_bustout_heli");
    self endon(#"death");
    var_a77bd386 = "c_t8_bo_hero_woods_head1";
    flappy_head = "c_t9_usa_hero_woods_head1_igc_flag";
    var_7e34c54c = "c_t9_usa_hero_woods_head1_igc_no_bandana";
    curr = var_a77bd386;
    var_35d2e273 = 0;
    while (true) {
        waitresult = self waittill(["head_swap_none", "head_swap_normal", "head_swap_flappy"]);
        switch (waitresult._notify) {
        case #"head_swap_none":
            self detach(curr);
            curr = var_7e34c54c;
            self attach(curr);
            break;
        case #"head_swap_normal":
            var_35d2e273++;
            if (var_35d2e273 == 1) {
                break;
            }
            if (curr != var_a77bd386) {
                self detach(curr);
                curr = var_a77bd386;
                self attach(curr);
            }
            if (isdefined(self.var_f0087d61)) {
                self setmodel(self.var_f0087d61);
            }
            break;
        case #"head_swap_flappy":
            if (curr != flappy_head) {
                self detach(curr);
                curr = flappy_head;
                self attach(curr);
            }
            level notify(#"hash_7fbec71ff58f17be");
            level flag::delay_set(4, "heli_player_gets_weapon");
            self.var_f0087d61 = self.model;
            self setmodel("c_t9_cp_usa_hero_woods_body_flag");
            level util::delay_notify(4, "shake_med");
            break;
        }
    }
}

