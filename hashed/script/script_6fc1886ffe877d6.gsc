// Atian COD Tools GSC CW decompiler test
#using script_113dd7f0ea2a1d4f;
#using script_5f261a5d57de5f7c;
#using script_4163291d6e693552;
#using script_34ab99a4ca1a43d;
#using script_12538a87a80a2978;
#using script_176597095ddfaa17;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm_fasttravel.gsc;
#using script_5a525a75a8f1f7e4;
#using script_2618e0f3e5e11649;
#using script_1940fc077a028a81;
#using script_3411bb48d41bd3b;
#using script_3357acf79ce92f4b;
#using scripts\zm_common\objective_manager.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using script_27347f09888ad15;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\zm_common\zm_barricade.gsc;
#using script_340a2e805e35f7a2;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\player\player_free_fall.gsc;
#using script_40fc784c60f9fa7b;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using script_1471eea5d2e60f83;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_4db53432;

// Namespace namespace_4db53432/level_init
// Params 1, eflags: 0x20
// Checksum 0xc233d62e, Offset: 0xd08
// Size: 0x3fc
function event_handler[level_init] main(*eventstruct) {
    clientfield::register("allplayers", "" + #"hash_63af42145e260fb5", 1, 2, "int");
    clientfield::register("allplayers", "" + #"hash_5323a6afe3b7e366", 1, 1, "counter");
    clientfield::register("allplayers", "" + #"hash_1f6229f37994ba8f", 1, 1, "counter");
    clientfield::register("toplayer", "" + #"hash_bd79b6ca5ca6bc0", 1, 2, "int");
    clientfield::register("toplayer", "" + #"dark_aether", 1, 1, "int");
    clientfield::register("toplayer", "" + #"hash_69409daf95eb8ffe", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_37895eb34ae6a3b0", 1, 1, "counter");
    clientfield::register("scriptmover", "" + #"hash_2a3141c1214d6eaa", 1, 1, "counter");
    clientfield::register("scriptmover", "" + #"hash_6e591596c3da1af6", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_bd6060c10031f98", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_32fff3d828ff2e0b", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_442f708f2ae92ef6", 1, 1, "counter");
    clientfield::register("world", "" + #"hash_77ba2c603a746873", 1, 1, "int");
    var_a409140d = #"hash_ccc16cf6360464b";
    objective_manager::register_script(#"holdout", &function_50a0c288, &function_a0779bca, #"holdout", #"hash_12475c4fdd2e51cb", #"hash_183fac0f1cab9dc6", 10, var_a409140d);
    callback::on_spawned(&on_player_spawned);
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0xefb0c9ad, Offset: 0x1110
// Size: 0x722
function function_50a0c288(instance) {
    instance.s_start = instance.contentgroups[#"hash_3966465c498df3a6"][0];
    instance.var_2fc49a65 = instance.contentgroups[#"barrier_player"];
    instance.a_s_barriers = instance.contentgroups[#"barrier"];
    instance.var_75bfdd78 = instance.contentgroups[#"hash_4bf4d3ae0a837717"];
    instance.var_d0682dc2 = instance.contentgroups[#"hash_54ca9cfca796e0f1"];
    instance.mdl_reward = instance.contentgroups[#"hash_41ae283ea203de66"][0];
    instance.var_7b2422b6 = instance.contentgroups[#"hash_5d93de0c1cf69a98"][0];
    instance.var_1c417c7e = instance.contentgroups[#"hash_51bc33e4360f4d65"][0];
    instance.var_fc1420f = instance.contentgroups[#"charge"];
    instance.var_48e204a7 = instance.contentgroups[#"jellyfish_small"];
    instance.var_53409bd8 = instance.contentgroups[#"monkey"];
    instance.var_cbd80ad6 = instance.contentgroups[#"dog"];
    instance.var_cf24b789 = content_manager::spawn_script_model(instance.var_1c417c7e, instance.var_1c417c7e.model, 1);
    instance.var_e3532743 = content_manager::spawn_script_model(instance.var_7b2422b6, instance.var_7b2422b6.model, 1);
    instance.var_e3532743 ghost();
    instance.mdl_beam = content_manager::spawn_script_model(instance.var_1c417c7e, "tag_origin", 0);
    if (isdefined(instance.contentgroups[#"hash_6873efb1dfa0ebea"])) {
        instance.var_3a745f8c = instance.contentgroups[#"hash_6873efb1dfa0ebea"][0];
        namespace_c09ae6c3::function_9ed7339b(instance);
    }
    if (isdefined(instance.contentgroups[#"hash_44a34791bb566cbc"])) {
        instance.var_6bc2eac8 = content_manager::spawn_script_model(instance.contentgroups[#"hash_44a34791bb566cbc"][0], instance.contentgroups[#"hash_44a34791bb566cbc"][0].model, 1);
    }
    instance.var_220bb810 = arraycombine(instance.contentgroups[#"hash_2bb7342aab04b85c"], instance.contentgroups[#"hash_2bb7372aab04bd75"]);
    instance.var_10cc9592 = arraycombine(instance.contentgroups[#"hash_2bb7362aab04bbc2"], instance.var_220bb810);
    instance.var_2250b89e = arraycombine(instance.contentgroups[#"hash_2bb7312aab04b343"], instance.var_10cc9592);
    instance.var_10019400 = instance.var_2250b89e;
    instance.var_37fa3d92 = array(instance.var_220bb810, instance.var_10cc9592, instance.var_2250b89e);
    instance.var_543569ce = &function_4f7c9f11;
    instance.var_99ddab53 = 200;
    instance.var_8d583324 = int(sqr(1500));
    instance.var_258795c3 = int(sqr(1200));
    instance.var_7cf5f106 = int(sqr(900));
    instance.var_a392bd1d = int(sqr(750));
    instance.var_96b168bc = int(sqr(600));
    instance.var_f4bfc837 = int(sqr(300));
    instance.var_f2094dc3 = int(sqr(225));
    instance.var_3a202a11 = 0.45;
    instance.a_models = [];
    instance thread function_90725ab1();
    instance thread function_f5087df2();
    instance thread function_208f2fc1();
    instance thread function_a3d0a278();
    instance thread function_a55eccfe();
    instance thread function_f04763d9();
    instance thread function_4e262e4();
    instance thread namespace_7589cf5c::vo_start("objectiveHoldoutAnnounce", "objectiveHoldoutAnnounceResponse");
    instance thread function_49115855();
    instance thread function_2d087a35();
    instance thread function_58a22a63();
    instance thread function_5a19fefe();
    level.var_acd0f67e = 1;
    /#
        if (getdvarint(#"hash_6a75f944bebbf5be", 0)) {
            instance.var_99ddab53 = getdvarint(#"hash_6a75f944bebbf5be", 0);
        }
    #/
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xc69764c8, Offset: 0x1840
// Size: 0x1a0
function function_58a22a63() {
    namespace_ce1f29cc::function_c981b20b(self.origin, 2000);
    var_e2a69e68 = arraysortclosest(getentarray("ambush_trigger", "targetname"), self.origin, undefined, undefined, 2000);
    foreach (var_7a7174c0 in var_e2a69e68) {
        var_7a7174c0 triggerenable(0);
    }
    self waittill(#"objective_ended");
    wait(10);
    namespace_ce1f29cc::function_1724f4ac(self.origin, 2000);
    foreach (var_7a7174c0 in var_e2a69e68) {
        var_7a7174c0 triggerenable(1);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x6375c25f, Offset: 0x19e8
// Size: 0x104
function on_player_spawned() {
    if (level.contentmanager.activeobjective.content_script_name === "holdout") {
        self.b_ignore_fow_damage = 1;
        self.var_1a4a768c = 1;
        self clientfield::set("" + #"hash_63af42145e260fb5", 1);
        self clientfield::set_to_player("" + #"dark_aether", 1);
        if (level.contentmanager.activeobjective.targetname === "objective_dune_holdout") {
            wait(0.1);
            if (isdefined(self)) {
                self clientfield::set_to_player("" + #"hash_732e76418cbd8453", 0);
            }
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0x71039fe2, Offset: 0x1af8
// Size: 0x60
function function_c36cb7b1(*params) {
    if (isdefined(level.contentmanager.activeobjective) && level.contentmanager.activeobjective.var_b803db9c) {
        level.contentmanager.activeobjective.var_b803db9c--;
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0x55b7b9a9, Offset: 0x1b60
// Size: 0x60
function function_b3791df9(*instance) {
    if (isdefined(level.contentmanager.activeobjective) && isdefined(level.contentmanager.activeobjective.n_active)) {
        level.contentmanager.activeobjective.n_active--;
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xb6452029, Offset: 0x1bc8
// Size: 0xd8
function function_33c3270c() {
    foreach (var_2ccbc1ea in self.var_53409bd8) {
        monkey = content_manager::spawn_script_model(var_2ccbc1ea, var_2ccbc1ea.model, 0);
        waitframe(1);
        if (isdefined(monkey)) {
            monkey thread function_98da33e1();
            monkey thread function_7f20d6c2(self);
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x5ddf7d70, Offset: 0x1ca8
// Size: 0x170
function function_98da33e1() {
    self endon(#"death");
    while (true) {
        n_index = randomint(3);
        switch (n_index) {
        case 0:
            self thread scene::play(#"p9_fxanim_zm_monkey_idle_bundle", "idle_01", self);
            break;
        case 1:
            self thread scene::play(#"p9_fxanim_zm_monkey_idle_bundle", "idle_02", self);
            break;
        case 2:
            self thread scene::play(#"p9_fxanim_zm_monkey_idle_bundle", "idle_03", self);
            break;
        default:
            self thread scene::play(#"p9_fxanim_zm_monkey_idle_bundle", "idle_01", self);
            break;
        }
        wait(randomintrangeinclusive(15, 30));
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0xe471e95b, Offset: 0x1e20
// Size: 0x44
function function_7f20d6c2(instance) {
    instance waittill(#"objective_ended");
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xb02545ef, Offset: 0x1e70
// Size: 0x1ac
function function_2d087a35() {
    self endon(#"objective_ended");
    var_35dfb407 = 0;
    while (!var_35dfb407) {
        a_players = getplayers();
        foreach (player in a_players) {
            if (distance2dsquared(player.origin, self.var_cf24b789.origin) <= 2250000) {
                if (player util::is_looking_at(self.var_cf24b789, 0.7, 0) || player util::is_looking_at(self.origin, 0.7, 1) || distance2dsquared(player.origin, self.var_cf24b789.origin) <= 250000) {
                    var_35dfb407 = 1;
                    break;
                }
            }
        }
        wait(0.5);
    }
    level namespace_7589cf5c::play_vo("objectiveHoldoutApproach");
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x67a8ac4a, Offset: 0x2028
// Size: 0x16c
function function_a3d0a278() {
    self endon(#"objective_ended");
    level flag::wait_till_all(array(#"hash_10679ff0bf4d6c8d", #"intro_scene_done"));
    self.mdl_beam clientfield::set("" + #"hash_6e591596c3da1af6", 1);
    self.var_cf24b789 clientfield::set("" + #"hash_bd6060c10031f98", 1);
    self waittill(#"hash_4a46a299d2376baf");
    wait(2);
    self.mdl_beam clientfield::set("" + #"hash_6e591596c3da1af6", 0);
    self.var_cf24b789 clientfield::set("" + #"hash_bd6060c10031f98", 0);
    wait(1);
    self.var_cf24b789 delete();
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xfa186f28, Offset: 0x21a0
// Size: 0x1f4
function function_208f2fc1() {
    self endon(#"objective_ended", #"hash_4c2edcae0ab4fea9");
    while (true) {
        foreach (player in getplayers()) {
            if (distance2dsquared(player.origin, self.origin) < self.var_8d583324) {
                if (!is_true(player.var_cbf09f9f)) {
                    player.var_cbf09f9f = 1;
                    player thread function_55904a22(self, 1);
                    if (player isinvehicle()) {
                        var_80730518 = player getvehicleoccupied();
                        if (isdefined(var_80730518) && !is_true(var_80730518.var_273ccdff)) {
                            var_80730518.var_273ccdff = 1;
                            var_80730518 thread function_251c4fac(self);
                        }
                    }
                }
                continue;
            }
            if (is_true(player.var_cbf09f9f)) {
                player.var_cbf09f9f = 0;
                player thread function_55904a22(self, 0);
            }
        }
        wait(0.5);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0x2ac60156, Offset: 0x23a0
// Size: 0x186
function vehicle_emp(params) {
    self setspeedimmediate(0);
    self setbrake(1);
    playrumbleonposition("sr_transmitter_impact", self.origin);
    self vehicle::toggle_emp_fx(1);
    self vehicle::function_bbc1d940(0);
    self vehicle::toggle_sounds(0);
    if (is_true(self.var_52e23e90)) {
        self vehicle::function_7f0bbde3();
        self playsound(#"hash_d6643b88d0186ae");
    }
    self.var_52e23e90 = undefined;
    if (!isdefined(self.abnormal_status)) {
        self.abnormal_status = spawnstruct();
    }
    self clientfield::set("stunned", 1);
    self.abnormal_status.emped = 1;
    self.abnormal_status.attacker = params.param1;
    self.abnormal_status.inflictor = params.param2;
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x9d9a45ad, Offset: 0x2530
// Size: 0xe6
function function_10925841() {
    self endon(#"death");
    if (isdefined(self)) {
        self.is_staircase_up = undefined;
        self clientfield::set("stunned", 0);
        self vehicle_ai::emp_startup_fx();
        self vehicle::toggle_emp_fx(0);
        self vehicle::toggle_sounds(1);
        self clientfield::set("isJammed", 0);
        self.isjammed = 0;
        self.emped = 0;
        self.abnormal_status.emped = 0;
        self.var_52e23e90 = 1;
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0x239a6d2b, Offset: 0x2620
// Size: 0xa4
function function_251c4fac(instance) {
    self endoncallback(&function_a8a01818, #"death");
    instance endon(#"objective_ended");
    self.is_staircase_up = &vehicle_emp;
    self thread player_vehicle::is_staircase_up();
    instance flag::wait_till(#"hash_493cee968e218cc2");
    self thread function_10925841();
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0xdd69d699, Offset: 0x26d0
// Size: 0x7c
function function_a8a01818(*notifyhash) {
    if (isdefined(self)) {
        self clientfield::set("stunned", 0);
        self vehicle::toggle_emp_fx(1);
        self vehicle::function_bbc1d940(0);
        self vehicle::toggle_sounds(0);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x55ce43d9, Offset: 0x2758
// Size: 0x188
function function_a55eccfe() {
    self endon(#"objective_ended", #"hash_4c2edcae0ab4fea9");
    n_delay = 5;
    while (true) {
        player = zm_utility::get_closest_player(self.var_cf24b789.origin);
        if (isdefined(player)) {
            n_dist = int(distance2dsquared(self.var_cf24b789.origin, player.origin));
            if (n_dist <= self.var_f4bfc837) {
                n_delay = 1.1;
            } else if (n_dist <= self.var_96b168bc) {
                n_delay = 2;
            } else if (n_dist <= self.var_7cf5f106) {
                n_delay = 3;
            } else if (n_dist <= self.var_258795c3) {
                n_delay = 4;
            } else {
                n_delay = 5;
            }
        }
        wait(n_delay);
        self.var_cf24b789 clientfield::increment("" + #"hash_2a3141c1214d6eaa");
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 2, eflags: 0x2 linked
// Checksum 0x75e505ce, Offset: 0x28e8
// Size: 0xf4
function function_55904a22(instance, var_617b7cef) {
    self endon(#"death");
    if (isdefined(self) && var_617b7cef) {
        self clientfield::set_to_player("" + #"hash_bd79b6ca5ca6bc0", 1);
        self thread function_8deb12b0(instance);
        return;
    }
    if (isdefined(self)) {
        self notify(#"outside");
        self clientfield::set_to_player("" + #"hash_bd79b6ca5ca6bc0", 0);
        wait(0.8);
        self setmovespeedscale(1);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0x3a2459c, Offset: 0x29e8
// Size: 0x238
function function_8deb12b0(instance) {
    self notify("72791e0e596ee0ca");
    self endon("72791e0e596ee0ca");
    self endon(#"outside", #"disconnect", #"death");
    instance endon(#"objective_ended");
    while (true) {
        if (isalive(self) && isdefined(instance)) {
            n_dist = self function_3dc3dd2d(instance);
        }
        if (isdefined(n_dist)) {
            if (n_dist <= instance.var_f2094dc3) {
                n_speed = instance.var_3a202a11;
            } else if (n_dist <= instance.var_f4bfc837) {
                n_speed = 0.5;
            } else if (n_dist <= instance.var_96b168bc) {
                n_speed = 0.6;
            } else if (n_dist <= instance.var_a392bd1d) {
                n_speed = 0.7;
            } else if (n_dist <= instance.var_7cf5f106) {
                n_speed = 0.8;
            } else if (n_dist <= instance.var_258795c3) {
                n_speed = 0.9;
            } else {
                n_speed = 1;
            }
        }
        if (self namespace_e86ffa8::function_3623f9d1(0)) {
            n_speed += n_speed * 0.2;
            if (n_speed > 1) {
                n_speed = 1;
            }
            self setmovespeedscale(n_speed);
        } else {
            if (!isfloat(n_speed)) {
                n_speed = 1;
            }
            self setmovespeedscale(n_speed);
        }
        wait(0.5);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0xfaee4fb4, Offset: 0x2c28
// Size: 0x54
function function_3dc3dd2d(instance) {
    if (isdefined(instance) && isalive(self)) {
        return distance2dsquared(self.origin, instance.origin);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x0
// Checksum 0x192077df, Offset: 0x2c88
// Size: 0xc8
function player_damage() {
    self notify("789232237c21b584");
    self endon("789232237c21b584");
    self endon(#"outside", #"disconnect");
    while (true) {
        if (zm_utility::is_player_valid(self)) {
            self dodamage(2, self.origin, undefined, undefined, "none", "MOD_DEATH_CIRCLE", 0, level.weaponnone);
            self function_bc82f900("damage_light");
        }
        wait(1);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x51fd3d1c, Offset: 0x2d58
// Size: 0x34
function function_1f3a6644() {
    self thread function_7683d028();
    self thread function_570d286d();
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xa7b06018, Offset: 0x2d98
// Size: 0x100
function function_49115855() {
    self endon(#"objective_ended", #"bomb");
    while (true) {
        a_players = function_a1ef346b(undefined, self.origin, 800);
        if (is_true(a_players.size) && isdefined(self.var_cf24b789) && !level flag::get(#"in_dark_side")) {
            self.var_cf24b789 namespace_7589cf5c::function_ac709d66(self, #"hash_64697db39a227a4a");
            wait(randomfloatrange(10, 15));
        }
        wait(0.1);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x8c37996d, Offset: 0x2ea0
// Size: 0x144
function function_7683d028() {
    self endon(#"objective_ended");
    self waittill(#"bomb");
    self flag::wait_till(#"hash_22d7493735317dd2");
    self.var_cf24b789 namespace_7589cf5c::function_ac709d66(self, #"hash_bc13063e9aa86fa");
    wait(4);
    level thread namespace_7589cf5c::play_vo("objectiveHoldoutStart");
    self flag::wait_till(#"teleport_start");
    wait(5.5);
    self flag::wait_till(#"hash_493cee968e218cc2");
    wait(0.5);
    level namespace_7589cf5c::play_vo("objectiveHoldoutArrival");
    wait(0.5);
    self thread function_1387144c();
    self thread function_b2bc128b();
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x3276952d, Offset: 0x2ff0
// Size: 0x148
function function_1387144c() {
    if (is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
        var_85b02bbf = struct::get_array(#"hash_5ff65d2154a0cb05");
        foreach (var_e58f5a09 in var_85b02bbf) {
            dropstruct = {#origin:var_e58f5a09.origin, #angles:var_e58f5a09.angles, #var_738dfc81:1};
            dropstruct namespace_65181344::function_fd87c780(#"zm_food_pizza_burger_list", 1, 1);
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xf5b20731, Offset: 0x3140
// Size: 0x5c
function function_831de44a() {
    wait(0.5);
    s_pt = array::random(self.var_75bfdd78);
    if (isdefined(s_pt)) {
        playrumbleonposition("sr_dark_aether_rumble", s_pt.origin);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xa0456bf7, Offset: 0x31a8
// Size: 0x9c
function function_570d286d() {
    self waittill(#"objective_ended");
    if (isdefined(self.success) && self.success) {
        level namespace_7589cf5c::play_vo("objectiveHoldoutEnd");
        wait(0.5);
        level thread namespace_7589cf5c::play_vo("objectiveHoldoutEndResponse");
        level flag::set(#"hash_1460b3afd614fb6c");
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xb5c246c2, Offset: 0x3250
// Size: 0x1e0
function function_e3b76ce0() {
    s_pt = array::random(self.var_75bfdd78);
    v_pos = s_pt.origin;
    self waittill(#"hash_4a46a299d2376baf");
    a_corpses = getcorpsearray(v_pos, 3000);
    foreach (corpse in a_corpses) {
        if (isdefined(corpse)) {
            corpse ghost();
            corpse notsolid();
        }
    }
    self waittill(#"objective_ended");
    a_corpses = getcorpsearray(v_pos, 3000);
    foreach (corpse in a_corpses) {
        if (isdefined(corpse)) {
            corpse show();
            corpse solid();
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x24cc3bb0, Offset: 0x3438
// Size: 0x958
function function_521d95ab() {
    var_44d9d6da = content_manager::function_31e8da78(self.location.destination, "explore_chests_large");
    var_635b6832 = content_manager::function_31e8da78(self.location.destination, "explore_chests");
    var_145e2d3c = content_manager::function_31e8da78(self.location.destination, "explore_chests_small");
    var_5854a1b2 = content_manager::function_31e8da78(self.location.destination, "harvest_essence");
    var_f3c03df4 = content_manager::function_31e8da78(self.location.destination, "harvest_essence_small");
    var_3357c159 = content_manager::function_31e8da78(self.location.destination, "harvest_scrap");
    var_6201c191 = content_manager::function_31e8da78(self.location.destination, "loot_pods");
    self thread function_b8df700f(var_6201c191);
    var_6fd87ba6 = getentarray("chalk_model", "targetname");
    var_ba9ff008 = getentarray("trigger_wallbuy", "targetname");
    foreach (var_edaaa42b in var_ba9ff008) {
        var_edaaa42b triggerenable(0);
    }
    foreach (chalk_model in var_6fd87ba6) {
        chalk_model hide();
    }
    if (isdefined(var_6201c191.a_models)) {
        foreach (model in var_6201c191.a_models) {
            if (isdefined(model)) {
                model thread loot_pod(self);
            }
        }
    }
    if (isdefined(var_44d9d6da.a_models)) {
        foreach (model in var_44d9d6da.a_models) {
            if (isdefined(model)) {
                model thread function_1b3fe142(self);
            }
        }
    }
    if (isdefined(var_635b6832.a_models)) {
        foreach (model in var_635b6832.a_models) {
            if (isdefined(model)) {
                model thread function_1b3fe142(self);
            }
        }
    }
    if (isdefined(var_145e2d3c.a_models)) {
        foreach (model in var_145e2d3c.a_models) {
            if (isdefined(model)) {
                model thread function_1b3fe142(self);
            }
        }
    }
    if (isdefined(var_5854a1b2.a_items)) {
        foreach (item in var_5854a1b2.a_items) {
            if (isdefined(item)) {
                item thread function_2d31704b(self);
            }
        }
    }
    if (isdefined(var_f3c03df4.a_items)) {
        foreach (item in var_f3c03df4.a_items) {
            if (isdefined(item)) {
                item thread function_2d31704b(self);
            }
        }
    }
    if (isdefined(var_3357c159.a_items)) {
        foreach (item in var_3357c159.a_items) {
            if (isdefined(item)) {
                item thread function_2d31704b(self);
            }
        }
    }
    a_triggers = getentarray("explore_chest_trigger", "targetname");
    foreach (trigger in a_triggers) {
        trigger triggerenable(0);
    }
    self waittill(#"return");
    a_triggers = getentarray("explore_chest_trigger", "targetname");
    foreach (trigger in a_triggers) {
        trigger triggerenable(1);
    }
    foreach (var_edaaa42b in var_ba9ff008) {
        var_edaaa42b triggerenable(1);
    }
    foreach (chalk_model in var_6fd87ba6) {
        chalk_model show();
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0x9025e5bf, Offset: 0x3d98
// Size: 0x400
function function_b8df700f(var_6201c191) {
    if (isdefined(var_6201c191)) {
        self.var_55b8433b = [];
        var_5504b0b = var_6201c191.contentgroups[#"hash_702f75ad56e88d1c"];
        if (!isdefined(var_5504b0b)) {
            return;
        }
        foreach (s_group in var_5504b0b) {
            var_842cdacd = s_group.contentgroups[#"hash_49340510783e32e4"];
            foreach (spawn in var_842cdacd) {
                if (math::cointoss(50)) {
                    model = #"p9_gold_surcrystal_medium_01";
                    str_scene = "p9_zm_gold_sur_crystal_medium_01_bundle";
                } else {
                    model = #"p9_gold_surcrystal_medium_02";
                    str_scene = "p9_zm_gold_sur_crystal_medium_02_bundle";
                }
                var_37180a9f = util::spawn_model(model, spawn.origin, spawn.angles, undefined, 1);
                if (isdefined(var_37180a9f)) {
                    if (!isdefined(self.var_55b8433b)) {
                        self.var_55b8433b = [];
                    } else if (!isarray(self.var_55b8433b)) {
                        self.var_55b8433b = array(self.var_55b8433b);
                    }
                    self.var_55b8433b[self.var_55b8433b.size] = var_37180a9f;
                    var_37180a9f setscale(randomfloatrange(0.85, 1.2));
                    var_37180a9f function_619a5c20();
                    var_37180a9f val::set("loot_pod", "takedamage", 1);
                    var_37180a9f.health = 5;
                    var_37180a9f thread scene::play(str_scene, var_37180a9f);
                    var_37180a9f fx::play(#"hash_6583defa5c93e609", var_37180a9f.origin, var_37180a9f.angles, #"hash_285fd9bc53c292d8", 1);
                    level thread function_8265e656(var_37180a9f);
                    util::wait_network_frame();
                }
            }
        }
    }
    self waittill(#"objective_ended");
    if (isdefined(self.var_55b8433b)) {
        foreach (pod in self.var_55b8433b) {
            pod delete();
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0xf9df37ef, Offset: 0x41a0
// Size: 0x12c
function function_8265e656(var_37180a9f) {
    var_37180a9f endon(#"death");
    var_37180a9f callback::function_d8abfc3d(#"hash_5f0caa4b2d44fedf", &function_1cabf2e9);
    while (isdefined(var_37180a9f) && var_37180a9f.health > 0) {
        s_result = var_37180a9f waittill(#"damage", #"death");
        if (isplayer(s_result.attacker) && isalive(s_result.attacker)) {
            s_result.attacker util::show_hit_marker();
        }
    }
    var_37180a9f callback::callback(#"hash_5f0caa4b2d44fedf", s_result);
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x6 linked
// Checksum 0x9062c766, Offset: 0x42d8
// Size: 0x13c
function private function_1cabf2e9(s_result) {
    if (isplayer(s_result.attacker) || isai(s_result.attacker) || isvehicle(s_result.attacker)) {
        ping::function_9455917d(self);
        self namespace_58949729::function_8ef626e3();
        playsoundatposition(#"hash_54c5c342b84cf845", self.origin);
        if (isplayer(s_result.attacker) && s_result.attacker isinvehicle()) {
            var_80730518 = s_result.attacker getvehicleoccupied();
            if (isdefined(var_80730518)) {
                var_80730518 thread namespace_58949729::function_df0dbb31();
            }
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0x487a2ad6, Offset: 0x4420
// Size: 0x7c
function function_2d31704b(instance) {
    self endon(#"death");
    self movez(-1000, 0.05);
    instance waittill(#"return");
    self movez(1000, 0.05);
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0x2837ae4c, Offset: 0x44a8
// Size: 0x64
function function_1b3fe142(instance) {
    self endon(#"death");
    self hide();
    instance waittill(#"return");
    self show();
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0x9cc093e1, Offset: 0x4518
// Size: 0x11c
function loot_pod(instance) {
    self endon(#"death");
    self notify(#"hash_285fd9bc53c292d8");
    self hide();
    self val::set("item_damage", "takedamage", 0);
    instance waittill(#"return");
    self show();
    self val::reset("item_damage", "takedamage");
    if (!isdefined(self.b_destroyed)) {
        self fx::play(#"hash_6583defa5c93e609", self.origin, self.angles, #"hash_285fd9bc53c292d8", 1);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x46f5fc59, Offset: 0x4640
// Size: 0x234
function function_f5087df2() {
    s_result = self waittill(#"objective_ended", #"hash_8202877a3aadac8");
    objective_manager::stop_timer();
    level flag::clear(#"in_dark_side");
    if (s_result._notify === #"hash_8202877a3aadac8") {
        if (self.targetname !== "objective_sanatorium_holdout") {
            level util::set_lighting_state(1);
        }
        if (isdefined(self.var_cf24b789)) {
            self.var_cf24b789 delete();
        }
        if (isdefined(self.var_a0e46e99)) {
            self.var_a0e46e99 delete();
        }
        if (isdefined(self.var_e3532743)) {
            self.var_e3532743 delete();
        }
    }
    foreach (player in getplayers()) {
        if (isdefined(player)) {
            player thread function_55904a22(self, 0);
            level.var_31028c5d thread prototype_hud::function_817e4d10(player, 0);
        }
    }
    if (isdefined(self.success) && self.success) {
        namespace_cda50904::function_a92a93e9(self.mdl_reward.origin, self.mdl_reward.angles);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x23c28e8, Offset: 0x4880
// Size: 0x1ce
function bomb_timer() {
    self endon(#"death");
    playsoundatposition(#"hash_56452f5fcd5ed800", self.origin);
    for (n_timer = 210; n_timer; n_timer -= 1) {
        var_67c95546 = int(n_timer / 60);
        var_16782a41 = int(n_timer % 60 / 10);
        var_b30bc24e = n_timer % 60 % 10;
        if (isdefined(self)) {
            self thread function_e02a26f6();
            self showpart("tag_slot1_digi_" + 0);
            self showpart("tag_slot2_digi_" + var_67c95546);
            self showpart("tag_slot3_digi_" + var_16782a41);
            self showpart("tag_slot4_digi_" + var_b30bc24e);
            self showpart("tag_sign");
        }
        wait(0.5);
        if (isdefined(self)) {
            self hidepart("tag_sign");
        }
        wait(0.5);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x989211aa, Offset: 0x4a58
// Size: 0x38c
function function_e02a26f6() {
    if (isdefined(self)) {
        self hidepart("tag_slot1_digi_0");
        self hidepart("tag_slot1_digi_1");
        self hidepart("tag_slot2_digi_0");
        self hidepart("tag_slot2_digi_1");
        self hidepart("tag_slot2_digi_2");
        self hidepart("tag_slot2_digi_3");
        self hidepart("tag_slot2_digi_4");
        self hidepart("tag_slot2_digi_5");
        self hidepart("tag_slot2_digi_6");
        self hidepart("tag_slot2_digi_7");
        self hidepart("tag_slot2_digi_8");
        self hidepart("tag_slot2_digi_9");
        self hidepart("tag_slot3_digi_0");
        self hidepart("tag_slot3_digi_1");
        self hidepart("tag_slot3_digi_2");
        self hidepart("tag_slot3_digi_3");
        self hidepart("tag_slot3_digi_4");
        self hidepart("tag_slot3_digi_5");
        self hidepart("tag_slot4_digi_0");
        self hidepart("tag_slot4_digi_1");
        self hidepart("tag_slot4_digi_2");
        self hidepart("tag_slot4_digi_3");
        self hidepart("tag_slot4_digi_4");
        self hidepart("tag_slot4_digi_5");
        self hidepart("tag_slot4_digi_6");
        self hidepart("tag_slot4_digi_7");
        self hidepart("tag_slot4_digi_8");
        self hidepart("tag_slot4_digi_9");
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x8e67411e, Offset: 0x4df0
// Size: 0x6de
function function_90725ab1() {
    self.var_4272a188 triggerenable(0);
    self.var_5c6a2bf5 = content_manager::function_cfa4f1a0(self.var_fc1420f, #"hash_397d38a359aae4e6", 0);
    foreach (mdl_charge in self.var_5c6a2bf5) {
        mdl_charge ghost();
    }
    objective_setinvisibletoall(self.var_e55c8b4e);
    n_objective_id = zm_utility::function_f5a222a8(#"hash_12475c4fdd2e51cb", self.var_cf24b789.origin + (0, 0, 32));
    var_23e96cb3 = spawn("trigger_radius_use", self.origin, 0, 240, 96, 1);
    var_23e96cb3 triggerignoreteam();
    var_23e96cb3 setcursorhint("HINT_NOICON");
    var_23e96cb3 sethintstring(#"hash_b044f24a01e8b24");
    var_23e96cb3 usetriggerrequirelookat(1);
    self.var_cf24b789 zm_utility::function_747180ea(n_objective_id, undefined, var_23e96cb3);
    s_result = var_23e96cb3 waittill(#"trigger");
    level.var_b54157cf = 1;
    var_23e96cb3 delete();
    self.var_4272a188 triggerenable(1);
    self.var_4272a188 useby(s_result.activator);
    self.var_cf24b789 zm_utility::function_48d9a9c9();
    zm_utility::function_bc5a54a8(n_objective_id);
    level flag::set(#"in_dark_side");
    level flag::clear(#"hash_44074059e3987765");
    self notify(#"bomb");
    wait(0.5);
    foreach (mdl_charge in self.var_5c6a2bf5) {
        mdl_charge show();
        mdl_charge thread bomb_timer();
    }
    wait(1);
    self.var_cf24b789 clientfield::increment("" + #"hash_37895eb34ae6a3b0");
    waitframe(1);
    self.var_cf24b789 thread function_a9232706(self);
    self thread function_8118e3a5();
    self thread function_26a50e5e();
    self thread function_44fe71e3();
    self thread function_582f2cb();
    self thread function_ca5f0c9();
    self thread function_1c798ee9();
    playsoundatposition(#"hash_4a2101ba821730fb", (0, 0, 0));
    foreach (player in getplayers()) {
        player clientfield::set_to_player("" + #"hash_69409daf95eb8ffe", 1);
    }
    wait(2);
    foreach (player in getplayers()) {
        player clientfield::set_to_player("" + #"hash_bd79b6ca5ca6bc0", 2);
    }
    wait(0.1);
    level thread namespace_7589cf5c::function_3899cfea(self.var_cf24b789.origin, 2000);
    wait(4.4);
    self thread function_40c4c7ae();
    self flag::set(#"teleport_start");
    function_4718251f();
    wait(0.1);
    self thread teleport_players();
    self thread function_70cfe9f9();
    level.var_b54157cf = undefined;
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x7bfb3cfe, Offset: 0x54d8
// Size: 0xd0
function function_4718251f() {
    foreach (player in getplayers()) {
        if (isdefined(player)) {
            if (player laststand::player_is_in_laststand()) {
                player zm_laststand::auto_revive(player, 0, 0);
                continue;
            }
            player zm_player::spectator_respawn_player();
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0xcddf3c2a, Offset: 0x55b0
// Size: 0x1ec
function function_a9232706(instance) {
    players = function_a1ef346b(undefined, self.origin, 300);
    foreach (player in players) {
        targetorigin = (player.origin[0], player.origin[1], self.origin[2]);
        var_a6470558 = vectornormalize(targetorigin - self.origin);
        player.w_current = player getcurrentweapon();
        if (!is_true(player.w_current.isdualwield)) {
            player thread player_gesture(self);
        }
        player function_bc82f900("damage_heavy");
        player playerknockback(1);
        player applyknockback(100, var_a6470558);
        player playerknockback(0);
    }
    instance flag::set(#"hash_22d7493735317dd2");
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0xe5dbc822, Offset: 0x57a8
// Size: 0xe6
function player_gesture(mdl_crystal) {
    self endon(#"disconnect");
    if (self util::is_player_looking_at(mdl_crystal.origin, 0.6, 1, mdl_crystal)) {
        if (!is_true(self.var_e758cbce)) {
            self.var_e758cbce = 1;
            self gestures::function_56e00fbf(#"hash_271cf84de195bb95", undefined, 1);
        }
    }
    wait(1);
    if (isdefined(self) && is_true(self.var_e758cbce)) {
        self stopgestureviewmodel();
        self.var_e758cbce = undefined;
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x53a1d3c0, Offset: 0x5898
// Size: 0x370
function function_40c4c7ae() {
    var_d3b70fb0 = getvehiclearray();
    var_453e0a89 = [];
    s_pt = array::random(self.var_75bfdd78);
    foreach (var_f5304f7 in var_d3b70fb0) {
        if (distance2dsquared(s_pt.origin, var_f5304f7.origin) <= sqr(3000)) {
            var_f5304f7 makevehicleunusable();
            a_players = var_f5304f7 getvehoccupants();
            if (isdefined(a_players)) {
                foreach (player in a_players) {
                    if (player isinvehicle()) {
                        player unlink();
                    }
                }
            }
            var_f5304f7.e_linkto = util::spawn_model("tag_origin", var_f5304f7.origin);
            waitframe(1);
            var_f5304f7 linkto(var_f5304f7.e_linkto);
            var_f5304f7 ghost();
            var_f5304f7.e_linkto movez(1000, 2);
            var_453e0a89[var_453e0a89.size] = var_f5304f7;
        }
    }
    self waittill(#"objective_ended");
    foreach (var_f5304f7 in var_453e0a89) {
        var_f5304f7 show();
        var_f5304f7.e_linkto movez(-1000, 2);
        var_f5304f7.e_linkto waittill(#"movedone");
        wait(1);
        var_f5304f7 makevehicleusable();
        var_f5304f7.e_linkto delete();
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 2, eflags: 0x2 linked
// Checksum 0x7fafee0a, Offset: 0x5c10
// Size: 0x28c
function function_a0779bca(instance, activator) {
    if (isplayer(activator)) {
        instance notify(#"hash_4c2edcae0ab4fea9");
        instance thread function_e3b76ce0();
        instance thread function_521d95ab();
        instance thread function_fa324f46();
        instance thread function_17f1d0f3();
        instance thread function_1f3a6644();
        instance thread function_33c3270c();
        if (instance.targetname === "objective_dune_holdout") {
            instance thread function_b14f2d11();
        }
        foreach (player in getplayers()) {
            level.var_31028c5d prototype_hud::function_7491d6c5(player, #"hash_65641bd73530220a");
        }
        wait(5);
        foreach (player in getplayers()) {
            level.var_31028c5d prototype_hud::set_active_objective_string(player, #"hash_65641bd73530220a");
            level.var_31028c5d prototype_hud::function_817e4d10(player, 2);
        }
        wait(5);
        instance notify(#"hash_4a46a299d2376baf");
        instance thread function_2d1c1fb2();
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xcdb75459, Offset: 0x5ea8
// Size: 0x1d0
function function_b14f2d11() {
    var_e4cd7795 = [];
    foreach (s_barrier in self.var_2fc49a65) {
        a_nodes = getnodesinradius(s_barrier.origin, 64, 16);
        foreach (node in a_nodes) {
            setenablenode(node, 0);
            var_e4cd7795[var_e4cd7795.size] = node;
        }
    }
    self waittill(#"objective_ended");
    foreach (node in var_e4cd7795) {
        setenablenode(node, 1);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xd70bb071, Offset: 0x6080
// Size: 0x6a
function function_17f1d0f3() {
    self.var_5e36739b = self namespace_7589cf5c::function_df911075();
    self.var_61c57c53 = self namespace_7589cf5c::function_1b53cdc7();
    self.var_5de17ec9 = self namespace_7589cf5c::function_56fa33d9();
    self.var_2133c784 = 0;
    self.var_b803db9c = 0;
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xb125ed6f, Offset: 0x60f8
// Size: 0x54
function function_fa324f46() {
    wait(2);
    showmiscmodels("sv_holdout_aetherfungus");
    self waittill(#"objective_ended");
    hidemiscmodels("sv_holdout_aetherfungus");
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x41a8934d, Offset: 0x6158
// Size: 0x18c
function function_2d1c1fb2() {
    self endon(#"hash_8202877a3aadac8");
    level thread function_354e27f9();
    self thread function_cd1515dc();
    self thread function_bc87dbab();
    self thread spawn_zombies();
    self thread namespace_7589cf5c::function_f10301b0();
    level waittill(#"survival_holdout_dest");
    self flag::set(#"hash_493cee968e218cc2");
    self thread function_561fd5f5();
    self thread function_9a090a4f();
    self thread function_5f3c406e();
    objective_manager::start_timer(self.var_99ddab53, #"hash_65641bd73530220a");
    self notify(#"stop_spawn");
    self notify(#"hash_36719991d2a7edc6");
    level.var_e6689780 = undefined;
    wait(10);
    level flag::set(#"hash_44074059e3987765");
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x225e045e, Offset: 0x62f0
// Size: 0x166
function function_561fd5f5() {
    self endon(#"hash_8202877a3aadac8");
    wait(4);
    foreach (player in getplayers()) {
        if (isalive(player)) {
            player.b_ignore_fow_damage = 1;
        }
    }
    self waittill(#"objective_ended");
    foreach (player in getplayers()) {
        if (isalive(player)) {
            player.b_ignore_fow_damage = undefined;
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xea85ba98, Offset: 0x6460
// Size: 0x10c
function function_9a090a4f() {
    self endon(#"objective_ended", #"hash_8202877a3aadac8");
    s_pt = array::random(self.var_75bfdd78);
    self.var_15dd1523 = util::spawn_model("tag_origin", s_pt.origin + (0, 0, 2000));
    self waittill(#"hash_36719991d2a7edc6");
    self.var_15dd1523 playsound(#"hash_237c57212810b7ec");
    wait(0.25);
    if (isdefined(self.var_15dd1523)) {
        self.var_15dd1523 playrumbleonentity(#"sr_payload_portal_final_rumble");
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x6a3ae7a2, Offset: 0x6578
// Size: 0x5c
function function_8118e3a5() {
    self.var_cf24b789 playrumblelooponentity(#"sr_holdout_aether_mass_rumble");
    wait(5);
    self.var_cf24b789 stoprumble(#"sr_holdout_aether_mass_rumble");
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x3528c305, Offset: 0x65e0
// Size: 0x274
function function_bc87dbab() {
    self endon(#"objective_ended");
    if (isdefined(self.var_cf24b789)) {
        self.var_a0e46e99 = util::spawn_model("p9_fxanim_sv_holdout_crystal_mod", self.var_cf24b789.origin);
        if (isdefined(self.var_a0e46e99)) {
            self.var_a0e46e99 scene::init(#"p9_fxanim_sv_holdout_crystal_bundle", self.var_a0e46e99);
        }
    }
    if (isdefined(self.var_5c6a2bf5)) {
        foreach (mdl_charge in self.var_5c6a2bf5) {
            mdl_charge delete();
        }
    }
    self waittill(#"return");
    level waittill(#"survival_holdout_dest");
    if (isdefined(self.var_e3532743)) {
        self.var_e3532743 delete();
    }
    if (isdefined(self.var_a0e46e99)) {
        playrumbleonposition("sr_holdout_aether_mass_rumble", self.origin);
        self.var_a0e46e99 scene::play(#"p9_fxanim_sv_holdout_crystal_bundle", self.var_a0e46e99);
        if (isdefined(self.var_a0e46e99)) {
            self.var_a0e46e99 delete();
        }
    }
    wait(1);
    namespace_7589cf5c::function_3899cfea();
    if (self.targetname === "objective_dune_holdout") {
        exploder::exploder_stop("lgtexp_dark_aether_dune");
        exploder::exploder_stop("lgtexp_dark_aether_dune_2");
    }
    objective_manager::objective_ended(self, 1);
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xac22509d, Offset: 0x6860
// Size: 0x238
function function_cd1515dc() {
    if (!isdefined(self.a_s_barriers)) {
        return;
    }
    a_doors = [];
    foreach (barrier in self.a_s_barriers) {
        if (barrier.model === "barrier_door_single" || barrier.model === "barrier_door_double") {
            doors = function_c3d68575(barrier.origin, (20, 20, 20));
            foreach (door in doors) {
                if (door.script_noteworthy === #"hash_4d1fb8524fdfd254") {
                    a_doors[a_doors.size] = door;
                    setdynentenabled(door, 0);
                }
            }
        }
    }
    self waittill(#"objective_ended");
    foreach (door in a_doors) {
        if (isdefined(door)) {
            setdynentenabled(door, 1);
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x7fe157a7, Offset: 0x6aa0
// Size: 0x170
function function_70cfe9f9() {
    a_vehicles = getvehiclearray();
    foreach (vehicle in a_vehicles) {
        if (isdefined(vehicle)) {
            vehicle val::set("protect", "takedamage", 0);
        }
    }
    self waittill(#"objective_ended");
    a_vehicles = getvehiclearray();
    foreach (vehicle in a_vehicles) {
        if (isdefined(vehicle)) {
            vehicle val::reset("protect", "takedamage");
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x736b4c68, Offset: 0x6c18
// Size: 0xa4
function function_354e27f9() {
    setdvar(#"hash_60c10d05ac70cd3a", 0);
    self waittilltimeout(180, #"end_game", #"hash_8202877a3aadac8", #"objective_ended", #"hash_36719991d2a7edc6", #"hash_80008492ea92df4");
    setdvar(#"hash_60c10d05ac70cd3a", 1);
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xd7790805, Offset: 0x6cc8
// Size: 0x2c8
function function_582f2cb() {
    if (isdefined(self.contentgroups[#"hash_441da645c3f27eea"])) {
        self.a_mdl_blockers = [];
        foreach (s_blocker in self.contentgroups[#"hash_441da645c3f27eea"]) {
            if (self.targetname === "objective_golova_holdout" && s_blocker.origin == (-9937, 8419, 176)) {
                s_blocker.origin += (9, 31, 0);
                self.a_mdl_blockers[self.a_mdl_blockers.size] = content_manager::spawn_script_model(s_blocker, s_blocker.model, 1);
                continue;
            }
            self.a_mdl_blockers[self.a_mdl_blockers.size] = content_manager::spawn_script_model(s_blocker, s_blocker.model, 1);
        }
        foreach (mdl_blocker in self.a_mdl_blockers) {
            mdl_blocker disconnectpaths();
            mdl_blocker ghost();
        }
    }
    self waittill(#"objective_ended");
    if (isdefined(self.a_mdl_blockers)) {
        foreach (mdl_blocker in self.a_mdl_blockers) {
            mdl_blocker connectpaths();
            wait(0.1);
            mdl_blocker delete();
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x27a077ff, Offset: 0x6f98
// Size: 0x138
function function_5a19fefe() {
    if (self.targetname === "objective_ski_holdout_warehouse") {
        if (isdefined(self.var_6bc2eac8)) {
            self.var_6bc2eac8 disconnectpaths();
            self.var_6bc2eac8 ghost();
        }
        a_doors = [];
        doors = function_c3d68575(self.var_6bc2eac8.origin, (100, 100, 200));
        foreach (door in doors) {
            if (door.var_15d44120 === #"hash_557ba54db04548e0") {
                self thread function_b746ae20(door);
            }
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0x32ba7469, Offset: 0x70d8
// Size: 0xbc
function function_b746ae20(door) {
    function_e2a06860(door, 3);
    door.destroyed = 1;
    self waittill(#"objective_ended");
    if (isdefined(door)) {
        function_e2a06860(door, 0);
        door.destroyed = undefined;
    }
    if (isdefined(self.mdl_blocker)) {
        self.mdl_blocker connectpaths();
        wait(0.1);
        self.mdl_blocker delete();
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x3d3eb48a, Offset: 0x71a0
// Size: 0x44c
function function_44fe71e3() {
    if (!isdefined(self.a_s_barriers)) {
        return;
    }
    self.var_f9bfb787 = [];
    foreach (s_barrier in self.a_s_barriers) {
        var_936c52b5 = content_manager::spawn_script_model(s_barrier, s_barrier.model, 1);
        if (isdefined(s_barrier.script_int)) {
            var_936c52b5.n_id = s_barrier.script_int;
        }
        self.var_f9bfb787[self.var_f9bfb787.size] = var_936c52b5;
    }
    foreach (var_936c52b5 in self.var_f9bfb787) {
        var_936c52b5 disconnectpaths();
        if (isdefined(var_936c52b5.n_id)) {
            var_936c52b5.var_3b6eef70 = 1;
        }
        if (var_936c52b5.model === #"barrier_door_double") {
            var_936c52b5.a_nodes = getnodesinradius(var_936c52b5.origin, 80, 20, 50);
        } else {
            var_936c52b5.a_nodes = getnodesinradius(var_936c52b5.origin, 60, 20, 50);
        }
        foreach (node in var_936c52b5.a_nodes) {
            setenablenode(node, 0);
        }
    }
    self flag::wait_till(#"hash_13ea21cff2eb28ff");
    foreach (var_936c52b5 in self.var_f9bfb787) {
        foreach (node in var_936c52b5.a_nodes) {
            setenablenode(node, 1);
        }
        var_936c52b5 connectpaths();
    }
    wait(0.1);
    foreach (var_936c52b5 in self.var_f9bfb787) {
        var_936c52b5 delete();
    }
    if (isdefined(self.mdl_blocker)) {
        self.mdl_blocker delete();
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x43148bbf, Offset: 0x75f8
// Size: 0x474
function teleport_players() {
    self endon(#"objective_ended", #"hash_8202877a3aadac8");
    level.var_f3901984 = 5;
    a_players = getplayers();
    for (i = 0; i < a_players.size; i++) {
        if (isdefined(a_players[i])) {
            a_players[i].var_1a4a768c = 1;
            a_players[i] thread player_teleport(self.var_75bfdd78[i], 1);
            a_players[i] thread function_55904a22(self, 0);
            if (!a_players[i] clientfield::get_to_player("" + #"dark_aether")) {
                a_players[i] clientfield::set_to_player("" + #"dark_aether", 1);
            }
        }
    }
    wait(1.5);
    self function_3a659f7c();
    namespace_d0ab5955::function_f1ad7968(self.location.destination);
    if (self.targetname !== "objective_sanatorium_holdout") {
        if (self.targetname === "objective_dune_holdout") {
            level util::set_lighting_state(2);
        } else {
            level util::set_lighting_state(1);
        }
    }
    self waittill(#"hash_36719991d2a7edc6");
    wait(0.5);
    level thread namespace_7589cf5c::function_3899cfea();
    wait(0.5);
    level thread namespace_7589cf5c::play_vo("objectiveHoldoutEndTaunt");
    wait(1);
    foreach (player in getplayers()) {
        player clientfield::set_to_player("" + #"hash_69409daf95eb8ffe", 1);
    }
    player playsoundtoplayer(#"hash_3ad475ec3b0fc78f", player);
    wait(6);
    function_4718251f();
    wait(0.5);
    self notify(#"return");
    a_players = function_a1ef346b();
    for (i = 0; i < a_players.size; i++) {
        if (isdefined(a_players[i])) {
            a_players[i] clientfield::set("" + #"hash_63af42145e260fb5", 0);
            a_players[i] thread player_teleport(self.var_d0682dc2[i], 0);
            a_players[i].var_1a4a768c = undefined;
            if (a_players[i] clientfield::get_to_player("" + #"dark_aether")) {
                a_players[i] clientfield::set_to_player("" + #"dark_aether", 0);
            }
        }
    }
    self thread function_d90d4663();
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x2632ed3, Offset: 0x7a78
// Size: 0x94
function function_d90d4663() {
    wait(1);
    namespace_d0ab5955::function_d4dec4e8(self.location.destination);
    self flag::set(#"hash_13ea21cff2eb28ff");
    self function_d5b79335();
    if (self.targetname !== "objective_sanatorium_holdout") {
        level util::set_lighting_state(0);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xb947511a, Offset: 0x7b18
// Size: 0x30c
function function_3a659f7c() {
    level clientfield::set("" + #"hash_77ba2c603a746873", 1);
    exploder::exploder("lgtexp_dark_aether");
    if (self.targetname === "objective_golova_holdout") {
        exploder::exploder("lgtexp_dark_aether_barn");
    } else if (self.targetname === "objective_golova_holdout_farm") {
        exploder::exploder("lgtexp_dark_aether_barn_2");
    }
    if (self.targetname === "objective_ski_holdout") {
        exploder::exploder("lgtexp_dark_aether_bathhouse");
        exploder::exploder("lgtexp_dark_aether_bathhouse_2");
        exploder::exploder("lgtexp_dark_aether_bathhouse_3");
    } else if (self.targetname === "objective_ski_holdout_warehouse") {
        exploder::exploder("lgtexp_dark_aether_warehouse");
        exploder::exploder("lgtexp_dark_aether_warehouse_2");
    } else if (self.targetname === "objective_zoo_holdout") {
        exploder::exploder("lgtexp_dark_aether_cafeteria");
        exploder::exploder("lgtexp_dark_aether_cafeteria_2");
    } else if (self.targetname === "objective_dune_holdout") {
        exploder::exploder("lgtexp_dark_aether_dune");
        exploder::exploder("lgtexp_dark_aether_dune_2");
        foreach (player in getplayers()) {
            player clientfield::set_to_player("" + #"hash_732e76418cbd8453", 0);
        }
    }
    if (self.targetname === "objective_sanatorium_holdout" || self.targetname === "objective_duga_holdout") {
        exploder::exploder("lgtexp_dark_aether_foliage");
    }
    if (self.targetname === "objective_duga_holdout") {
        return;
    }
    exploder::exploder("fxexp_aether_state");
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x9bb3c831, Offset: 0x7e30
// Size: 0x2dc
function function_d5b79335() {
    level clientfield::set("" + #"hash_77ba2c603a746873", 0);
    exploder::exploder_stop("lgtexp_dark_aether");
    if (self.targetname === "objective_golova_holdout") {
        exploder::exploder_stop("lgtexp_dark_aether_barn");
    } else if (self.targetname === "objective_golova_holdout_farm") {
        exploder::exploder_stop("lgtexp_dark_aether_barn_2");
    }
    if (self.targetname === "objective_ski_holdout") {
        exploder::exploder_stop("lgtexp_dark_aether_bathhouse");
        exploder::exploder_stop("lgtexp_dark_aether_bathhouse_2");
        exploder::exploder_stop("lgtexp_dark_aether_bathhouse_3");
    } else if (self.targetname === "objective_ski_holdout_warehouse") {
        exploder::exploder_stop("lgtexp_dark_aether_warehouse");
        exploder::exploder_stop("lgtexp_dark_aether_warehouse_2");
    } else if (self.targetname === "objective_zoo_holdout") {
        exploder::exploder_stop("lgtexp_dark_aether_cafeteria");
        exploder::exploder_stop("lgtexp_dark_aether_cafeteria_2");
    } else if (self.targetname === "objective_dune_holdout") {
        waitframe(1);
        foreach (player in getplayers()) {
            player clientfield::set_to_player("" + #"hash_732e76418cbd8453", 1);
        }
    }
    if (self.targetname === "objective_sanatorium_holdout" || self.targetname === "objective_duga_holdout") {
        exploder::exploder_stop("lgtexp_dark_aether_foliage");
    }
    if (self.targetname === "objective_duga_holdout") {
        return;
    }
    exploder::exploder_stop("fxexp_aether_state");
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x0
// Checksum 0x13c8017d, Offset: 0x8118
// Size: 0x6c
function function_99bb3ac() {
    self endon(#"disconnect");
    while (self util::is_spectating()) {
        wait(0.1);
    }
    waitframe(1);
    self clientfield::increment("" + #"hash_5323a6afe3b7e366");
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 2, eflags: 0x2 linked
// Checksum 0x91efb3ca, Offset: 0x8190
// Size: 0x294
function player_teleport(s_pos, b_state) {
    self endon(#"disconnect");
    if (isdefined(self.var_914576ba)) {
        if (b_state) {
            objective_setinvisibletoplayer(self.var_914576ba, self);
        }
    }
    self val::set("teleport", "takedamage", 0);
    self player_free_fall::allow_player_basejumping(0);
    self thread zm_fasttravel::function_66d020b0(undefined, undefined, undefined, "survival_holdout_dest", s_pos, undefined, undefined, 1, 1, undefined, undefined, 1);
    wait(1);
    if (self isinvehicle()) {
        self unlink();
    }
    self clientfield::set_to_player("" + #"hash_69409daf95eb8ffe", 0);
    self flag::wait_till(#"hash_66d02a378fc362d4");
    if (self isinvehicle()) {
        self unlink();
        util::wait_network_frame();
    }
    self setorigin(s_pos.origin);
    self setplayerangles(s_pos.angles);
    self val::reset("teleport", "takedamage");
    self player_free_fall::allow_player_basejumping(1);
    waitframe(1);
    if (b_state) {
        self.b_ignore_fow_damage = 1;
        wait(2);
        self clientfield::set("" + #"hash_63af42145e260fb5", b_state);
        return;
    }
    self.b_ignore_fow_damage = undefined;
    if (isdefined(self.var_914576ba)) {
        objective_setvisibletoplayer(self.var_914576ba, self);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x68321cbd, Offset: 0x8430
// Size: 0x192
function function_ca5f0c9() {
    namespace_1367bdba::function_fdc4ca3c();
    self.var_13ba88d2 = self.contentgroups[#"barricade_window"];
    if (!isarray(self.var_13ba88d2)) {
        return;
    }
    foreach (var_c67ba39f in self.var_13ba88d2) {
        var_c67ba39f thread namespace_1367bdba::function_14354831();
    }
    self flag::wait_till(#"hash_13ea21cff2eb28ff");
    foreach (var_c67ba39f in self.var_13ba88d2) {
        if (isdefined(var_c67ba39f.e_barricade)) {
            var_c67ba39f.e_barricade delete();
        }
    }
    wait(1);
    self.var_13ba88d2 = undefined;
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x5cefb67c, Offset: 0x85d0
// Size: 0x29a
function function_1c798ee9() {
    self endon(#"objective_ended");
    switch (self.targetname) {
    case #"objective_duga_holdout":
        str_trigger = "trigger_holdout_duga";
        break;
    case #"hash_667dbf380c0e0a74":
        self thread function_be1b951c();
        str_trigger = "trigger_holdout_forest";
        break;
    case #"objective_golova_holdout":
        self thread function_be1b951c();
        str_trigger = "trigger_holdout_golova";
        break;
    case #"objective_golova_holdout_farm":
        self thread function_be1b951c();
        str_trigger = "trigger_holdout_golova_farm";
        break;
    case #"objective_sanatorium_holdout":
        str_trigger = "trigger_holdout_sanatorium";
        break;
    case #"objective_ski_holdout":
        str_trigger = "trigger_holdout_ski";
        break;
    case #"objective_ski_holdout_warehouse":
        str_trigger = "trigger_holdout_ski_warehouse";
        break;
    case #"hash_29783b5c80e9b4c":
        str_trigger = "trigger_holdout_weather_station";
        break;
    case #"objective_zoo_holdout":
        str_trigger = "trigger_holdout_zoo";
        break;
    case #"objective_dune_holdout":
        str_trigger = "trigger_holdout_dune";
        break;
    }
    if (isdefined(str_trigger)) {
        var_520491cd = getent(str_trigger, "targetname");
        level.var_e6689780 = var_520491cd;
        while (true) {
            s_result = var_520491cd waittill(#"trigger");
            if (is_true(s_result.activator.var_98f1f37c)) {
                s_result.activator.var_98f1f37c = undefined;
                s_result.activator.var_1d8cde9 = undefined;
            }
            if (is_true(s_result.activator.no_powerups)) {
                s_result.activator.no_powerups = undefined;
            }
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x753c2d64, Offset: 0x8878
// Size: 0xc0
function function_be1b951c() {
    models = getentarraybytype(6);
    foreach (model in models) {
        if (model.model === #"hash_6e47d6576612543c") {
            self thread function_ed93e125(model);
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0x9600fb11, Offset: 0x8940
// Size: 0x124
function function_ed93e125(model) {
    self flag::wait_till(#"teleport_start");
    model hide();
    if (isdefined(model.trigger)) {
        model.trigger triggerenable(0);
    }
    if (isdefined(model.objectiveid)) {
        objective_setinvisibletoall(model.objectiveid);
    }
    self waittill(#"objective_ended");
    model show();
    if (isdefined(model.trigger)) {
        model.trigger triggerenable(1);
    }
    wait(0.5);
    if (isdefined(model.objectiveid)) {
        objective_setvisibletoall(model.objectiveid);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xab1454d4, Offset: 0x8a70
// Size: 0x318
function function_26a50e5e() {
    self.var_603d86e5 = content_manager::function_cfa4f1a0(self.var_2fc49a65, #"hash_2e91c0a44dae13d4", 1);
    foreach (var_936c52b5 in self.var_603d86e5) {
        if (isdefined(self.var_2fc49a65[0].modelscale)) {
            var_936c52b5 setscale(self.var_2fc49a65[0].modelscale);
        }
        if (isdefined(var_936c52b5)) {
            var_936c52b5 util::break_glass(40);
        }
        var_936c52b5.e_fx = util::spawn_model("tag_origin", var_936c52b5.origin, var_936c52b5.angles);
        if (isdefined(var_936c52b5.e_fx)) {
            var_936c52b5.e_fx clientfield::set("" + #"hash_32fff3d828ff2e0b", 1);
            var_936c52b5.var_3b6eef70 = 1;
        }
        var_936c52b5 ghost();
    }
    self flag::wait_till(#"hash_13ea21cff2eb28ff");
    foreach (var_936c52b5 in self.var_603d86e5) {
        if (isdefined(var_936c52b5.e_fx)) {
            var_936c52b5.e_fx clientfield::set("" + #"hash_32fff3d828ff2e0b", 0);
        }
    }
    wait(3);
    foreach (var_936c52b5 in self.var_603d86e5) {
        if (isdefined(var_936c52b5.e_fx)) {
            var_936c52b5.e_fx delete();
        }
        if (isdefined(var_936c52b5)) {
            var_936c52b5 delete();
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xdeeea7a5, Offset: 0x8d90
// Size: 0x23c
function spawn_zombies() {
    self endon(#"objective_ended", #"hash_36719991d2a7edc6");
    n_players = getplayers().size;
    level.var_ff87f555 = &function_b94de89a;
    switch (n_players) {
    case 1:
        var_fd6a4001 = 3;
        var_102fe58c = 4;
        var_3b743c0c = 5;
        break;
    case 2:
        var_fd6a4001 = 6;
        var_102fe58c = 8;
        var_3b743c0c = 10;
        break;
    case 3:
        var_fd6a4001 = 9;
        var_102fe58c = 12;
        var_3b743c0c = 15;
        break;
    case 4:
        var_fd6a4001 = 12;
        var_102fe58c = 15;
        var_3b743c0c = 18;
        break;
    default:
        var_fd6a4001 = 15;
        var_102fe58c = 17;
        var_3b743c0c = 22;
        break;
    }
    self flag::wait_till(#"wave_start");
    self thread function_34ac205(var_fd6a4001 + level.var_b48509f9, 0);
    self flag::wait_till(#"wave_start");
    self thread function_34ac205(var_102fe58c + level.var_b48509f9, 1);
    self flag::wait_till(#"wave_start");
    self thread function_34ac205(var_3b743c0c + level.var_b48509f9, 2);
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x9c0c7e9f, Offset: 0x8fd8
// Size: 0x134
function function_b2bc128b() {
    self endon(#"objective_ended", #"hash_36719991d2a7edc6");
    self thread function_831de44a();
    level thread namespace_7589cf5c::play_vo("objectiveHoldoutArrivalTaunt");
    wait(2);
    self flag::set(#"wave_start");
    wait(30);
    self notify(#"stop_spawn");
    self thread function_953aa05e();
    self thread function_e14d27d9();
    self flag::wait_till(#"wave_start");
    wait(45);
    self notify(#"stop_spawn");
    self thread function_953aa05e();
    self thread function_e14d27d9();
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xd2a9461, Offset: 0x9118
// Size: 0xfc
function function_953aa05e() {
    self endon(#"objective_ended", #"hash_36719991d2a7edc6");
    s_result = self waittilltimeout(15, #"hash_7729c6e7911b801d");
    wait(2);
    playsoundatposition(#"hash_c05e2aae1de0567", (0, 0, 0));
    wait(3);
    self thread function_831de44a();
    level thread namespace_7589cf5c::play_vo("objectiveHoldoutArrivalTaunt");
    self flag::set(#"wave_start");
    self flag::clear(#"hash_7729c6e7911b801d");
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xdf933722, Offset: 0x9220
// Size: 0xc8
function function_e14d27d9() {
    self endon(#"objective_ended", #"hash_36719991d2a7edc6", #"hash_7729c6e7911b801d");
    wait(2);
    while (true) {
        a_zombies = getentarray("holdout_zombie", "targetname");
        if (isdefined(a_zombies) && a_zombies.size > 0) {
            wait(1);
        } else {
            self flag::set(#"hash_7729c6e7911b801d");
        }
        wait(0.5);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 2, eflags: 0x2 linked
// Checksum 0xc502fe5f, Offset: 0x92f0
// Size: 0x5ba
function function_34ac205(n_active, n_wave) {
    self endon(#"objective_ended", #"hash_36719991d2a7edc6", #"stop_spawn");
    self flag::clear(#"wave_start");
    self.n_active = 0;
    n_players = getplayers().size;
    switch (n_players) {
    case 1:
        n_delay = 3;
        break;
    case 2:
        n_delay = 2;
        break;
    case 3:
        n_delay = 1.5;
        break;
    case 4:
        n_delay = 1;
        break;
    }
    n_wait = n_delay - n_wave;
    if (n_wait <= 0) {
        n_wait = 0.25;
    }
    var_559503f1 = self function_94e50668(n_wave);
    a_s_locs = arraycopy(var_559503f1);
    while (true) {
        level flag::wait_till("spawn_zombies");
        if (self.n_active < n_active) {
            var_7ecdee63 = function_2631fff1(self, level.var_b48509f9);
            if (namespace_7589cf5c::function_82e262cf(var_7ecdee63)) {
                if (isdefined(self.var_38c710c3)) {
                    n_cooldown = namespace_7589cf5c::function_190c51a9();
                    var_be32c966 = float(gettime()) / 1000 - self.var_38c710c3;
                    if (var_be32c966 < n_cooldown) {
                        var_7ecdee63 = namespace_7589cf5c::function_b9e4c169();
                    } else {
                        self.var_38c710c3 = undefined;
                    }
                }
                if (self.var_2133c784 >= self.var_61c57c53 || self.var_b803db9c >= self.var_5de17ec9 || n_wave < 1) {
                    var_7ecdee63 = namespace_7589cf5c::function_b9e4c169();
                }
            }
            if (var_7ecdee63 === #"hash_12a17ab3df5889eb" || var_7ecdee63 === #"hash_7a8b592728eec95d") {
                if (isdefined(self.var_cbd80ad6)) {
                    var_f6d8c730 = array::random(self.var_cbd80ad6);
                }
            }
            if (isdefined(var_f6d8c730)) {
                s_loc = var_f6d8c730;
            } else {
                if (!a_s_locs.size) {
                    a_s_locs = arraycopy(var_559503f1);
                }
                s_loc = a_s_locs[0];
                arrayremovevalue(a_s_locs, a_s_locs[0]);
            }
            ai_spawned = namespace_85745671::function_9d3ad056(var_7ecdee63, s_loc.origin, s_loc.angles, "holdout_zombie");
            wait(0.1);
            if (isdefined(ai_spawned)) {
                ai_spawned.var_a950813d = 1;
                if (namespace_7589cf5c::function_82e262cf(ai_spawned.aitype)) {
                    self.var_38c710c3 = float(gettime()) / 1000;
                    self.var_2133c784++;
                    self.var_b803db9c++;
                    ai_spawned callback::function_d8abfc3d(#"on_ai_killed", &function_c36cb7b1);
                } else {
                    ai_spawned callback::function_d8abfc3d(#"on_ai_killed", &function_b3791df9);
                }
                ai_spawned.var_1d8cde9 = 1;
                ai_spawned.var_98f1f37c = 1;
                ai_spawned.no_powerups = 1;
                ai_spawned thread function_bf606a73();
                ai_spawned callback::function_d8abfc3d(#"hash_34b65342cbfdadac", &function_1968f31a);
                ai_spawned callback::function_d8abfc3d(#"hash_1518febf00439d5", &function_c9a4ec83);
                ai_spawned callback::function_d8abfc3d(#"bad_path", &function_426da116);
                self.n_active++;
            }
        }
        wait(n_wait);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xf14f3ed, Offset: 0x98b8
// Size: 0x4c
function function_1968f31a() {
    self.var_4fe4e626 = 1;
    if (isdefined(self.favoriteenemy.last_valid_position)) {
        self setgoal(self.favoriteenemy.last_valid_position);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x193016d1, Offset: 0x9910
// Size: 0x156
function function_b94de89a() {
    if (!isdefined(level.contentmanager.activeobjective.var_75bfdd78[0].origin)) {
        level.var_ff87f555 = undefined;
        return undefined;
    }
    if (!self flag::get(#"hash_4594c073edde106f") || self flag::get(#"hash_77a09d6234b7284f")) {
        return undefined;
    }
    foreach (struct in level.contentmanager.activeobjective.var_75bfdd78) {
        if (ispointonnavmesh(struct.origin, self)) {
            self flag::set(#"hash_33fc8800693f354e");
            return struct.origin;
        }
    }
    return undefined;
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xe2dd333b, Offset: 0x9a70
// Size: 0x64
function function_426da116() {
    if (flag::get(#"hash_33fc8800693f354e")) {
        self flag::clear(#"hash_4594c073edde106f");
        return;
    }
    self flag::set(#"hash_4594c073edde106f");
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x1c2325d9, Offset: 0x9ae0
// Size: 0x6c
function function_c9a4ec83() {
    if (!isdefined(self.var_a5add0c0.var_597f08bf)) {
        return;
    }
    blocker = self.var_a5add0c0.var_597f08bf;
    if (blocker.targetname === "barricade_window") {
        self flag::set(#"hash_77a09d6234b7284f");
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 2, eflags: 0x2 linked
// Checksum 0xeac3f94c, Offset: 0x9b58
// Size: 0x202
function function_2631fff1(*instance, var_661691aa) {
    var_908ce45b = 0;
    switch (var_661691aa) {
    case 1:
        var_6017f33e = namespace_679a22ba::function_ca209564(#"objective_holdout_wave_1");
        break;
    case 2:
        var_6017f33e = namespace_679a22ba::function_ca209564(#"objective_holdout_wave_2");
        break;
    case 3:
        var_6017f33e = namespace_679a22ba::function_ca209564(#"objective_holdout_wave_3");
        break;
    case 4:
        var_6017f33e = namespace_679a22ba::function_ca209564(#"objective_holdout_wave_4");
        break;
    case 5:
        var_6017f33e = namespace_679a22ba::function_ca209564(#"objective_holdout_wave_5");
        break;
    case 6:
        var_6017f33e = namespace_679a22ba::function_ca209564(#"objective_holdout_wave_6");
        break;
    case 7:
        var_6017f33e = namespace_679a22ba::function_ca209564(#"objective_holdout_wave_7");
        break;
    default:
        var_6017f33e = namespace_679a22ba::function_ca209564(#"objective_holdout_wave_8");
        break;
    }
    return var_6017f33e.var_990b33df;
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x6 linked
// Checksum 0x14adeaf1, Offset: 0x9d68
// Size: 0x11c
function private function_6b130ce9() {
    if (!isdefined(level.contentmanager.activeobjective.var_75bfdd78[0].origin)) {
        return false;
    }
    spot = level.contentmanager.activeobjective.var_75bfdd78[0].origin;
    if (!self flag::get(#"hash_77a09d6234b7284f")) {
        self.var_6ca50f69 = 0;
        self namespace_e292b080::zombieupdategoal(spot);
        return true;
    }
    enemy = zm_ai_utility::function_825317c(self);
    if (isdefined(enemy) && !self cansee(enemy)) {
        if (isdefined(enemy.last_valid_position)) {
            self namespace_e292b080::zombieupdategoal(enemy.last_valid_position);
            return true;
        }
    }
    return false;
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x6025a4df, Offset: 0x9e90
// Size: 0xf8
function function_bf606a73() {
    self endon(#"death");
    self callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_fd68cae4);
    self flag::set(#"hash_52d6a75cdbf101f3");
    self.var_6bc9818 = &function_6b130ce9;
    while (true) {
        if (isalive(self)) {
            player = awareness::function_d7fedde2(self);
            if (isdefined(player)) {
                awareness::function_c241ef9a(self, player, 11);
                wait(10);
            }
        }
        wait(0.1);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x5c1201d2, Offset: 0x9f90
// Size: 0x4c
function function_fd68cae4() {
    if (self.archetype === #"zombie") {
        if (level.var_b48509f9 < 5) {
            self namespace_85745671::function_9758722("sprint");
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0x77633dcc, Offset: 0x9fe8
// Size: 0x102
function function_94e50668(n_wave) {
    var_559503f1 = [];
    n_players = getplayers().size;
    switch (n_players) {
    case 1:
        var_559503f1 = self.var_37fa3d92[n_wave];
        break;
    case 2:
        var_559503f1 = self.var_37fa3d92[n_wave + 1];
        break;
    case 3:
    case 4:
        var_559503f1 = self.var_37fa3d92[3];
        break;
    }
    if (!isdefined(var_559503f1)) {
        var_559503f1 = self.var_2250b89e;
    }
    var_559503f1 = array::randomize(var_559503f1);
    return var_559503f1;
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0xb10a0174, Offset: 0xa0f8
// Size: 0xd4
function function_4f7c9f11(player_index = 0) {
    struct = self.var_75bfdd78[0];
    if (isdefined(self.var_75bfdd78[player_index])) {
        struct = self.var_75bfdd78[player_index];
    }
    while (positionwouldtelefrag(struct.origin)) {
        player_index = (player_index + 1) % self.var_75bfdd78.size;
        struct = self.var_75bfdd78[player_index];
        waitframe(1);
    }
    return {#origin:struct.origin, #angles:struct.angles};
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xbdc87df4, Offset: 0xa1d8
// Size: 0x168
function function_f04763d9() {
    self waittill(#"objective_ended");
    if (self.success && !is_true(self.player_downed)) {
        level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"holdout_perfect_defense_zm", #allplayers:1});
    }
    wait(2);
    foreach (player in getplayers()) {
        player clientfield::increment("" + #"hash_5323a6afe3b7e366");
        player clientfield::increment("" + #"hash_1f6229f37994ba8f");
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0x75ea9309, Offset: 0xa348
// Size: 0x3a
function function_4e262e4() {
    self endon(#"objective_ended");
    level waittill(#"hash_18a0e5282b038637");
    self.player_downed = 1;
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 0, eflags: 0x2 linked
// Checksum 0xf7e4b4b4, Offset: 0xa390
// Size: 0x2a8
function function_5f3c406e() {
    if (!isdefined(self.var_48e204a7)) {
        return;
    }
    var_f2afb269 = content_manager::function_cfa4f1a0(self.var_48e204a7, #"hash_24cffab5d4787e96", 0);
    var_ca7b2d46 = getvehiclenodearray("jellyfish_start", "targetname");
    foreach (var_1cde429c in var_f2afb269) {
        if (isdefined(var_1cde429c)) {
            var_1cde429c.nd_start = array::get_all_closest(var_1cde429c.origin, var_ca7b2d46)[0];
            var_1cde429c.var_b30a9f82 = vehicle::spawn(undefined, "jellyfish_small", "fake_vehicle", var_1cde429c.origin, var_1cde429c.angles);
            waitframe(1);
            if (isdefined(var_1cde429c.var_b30a9f82)) {
                var_1cde429c linkto(var_1cde429c.var_b30a9f82, "tag_origin", (0, 0, 0), (0, 180, 0));
                var_1cde429c clientfield::increment("" + #"hash_442f708f2ae92ef6");
                var_1cde429c thread function_35559739(self);
            }
        }
    }
    self waittill(#"objective_ended", #"hash_8202877a3aadac8");
    foreach (var_1cde429c in var_f2afb269) {
        if (isdefined(var_1cde429c.var_b30a9f82)) {
            var_1cde429c.var_b30a9f82 delete();
        }
        if (isdefined(var_1cde429c)) {
            var_1cde429c delete();
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0x6e62ffab, Offset: 0xa640
// Size: 0x84
function function_35559739(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    while (true) {
        self.var_b30a9f82 thread vehicle::get_on_and_go_path(self.nd_start);
        self.var_b30a9f82 waittill(#"reached_end_node");
    }
}

