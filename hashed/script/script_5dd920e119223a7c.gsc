// Atian COD Tools GSC CW decompiler test
#using script_113dd7f0ea2a1d4f;
#using script_4163291d6e693552;
#using script_12538a87a80a2978;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using script_3357acf79ce92f4b;
#using script_3411bb48d41bd3b;
#using scripts\zm_common\objective_manager.gsc;
#using script_27347f09888ad15;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;

#namespace namespace_662ff671;

// Namespace namespace_662ff671/level_init
// Params 1, eflags: 0x20
// Checksum 0xeb371328, Offset: 0x850
// Size: 0x28c
function event_handler[level_init] main(*eventstruct) {
    clientfield::register("actor", "" + #"hash_74382f598f4de051", 1, 1, "counter");
    clientfield::register("actor", "" + #"hash_b74182bd1e44a44", 1, 1, "int");
    clientfield::register("actor", "" + #"hash_435db79c304e12a5", 1, 1, "counter");
    clientfield::register("actor", "" + #"hash_3049a409503be8a0", 1, 1, "int");
    clientfield::register("actor", "" + #"hash_4460e5ee368004ed", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_60e4230d63925ac1", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_6d05bbcab1912e5a", 1, 1, "int");
    clientfield::register("world", "" + #"hash_7d92d99179091a4f", 1, 1, "int");
    objective_manager::register_script(#"hash_24a710d5fc2ed834", &spawn_func, &start_callback, #"hunt", #"hash_59cd8f2a488c0201", #"hash_23331c459fc1fe23", 5, #"hash_5a76d5e2fa7e03c0");
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x6 linked
// Checksum 0x4f919341, Offset: 0xae8
// Size: 0x39c
function private spawn_func(s_instance) {
    var_3afe334f = level.var_b48509f9;
    n_players = function_a1ef346b().size;
    n_count_total = 0;
    if (isdefined(s_instance.contentgroups[#"base"][0])) {
        s_instance.mdl_base = content_manager::spawn_script_model(s_instance.contentgroups[#"base"][0], s_instance.contentgroups[#"base"][0].model, 1);
        if (isdefined(s_instance.mdl_base)) {
            s_instance.mdl_base setscale(1.55);
        }
    }
    foreach (var_109708e0 in isdefined(s_instance.contentgroups[#"hvt"]) ? s_instance.contentgroups[#"hvt"] : []) {
        n_count = int(isdefined(var_109708e0.count) ? var_109708e0.count : 1);
        if (var_109708e0.ai_type === "raz" && var_3afe334f > 1 && n_players >= 3) {
            n_count++;
        }
        n_count_total += n_count;
        if (var_109708e0.ai_type === "raz") {
            level.var_971bd29a = 1;
            continue;
        }
        level.var_971bd29a = 0;
    }
    function_86a476ea(s_instance);
    s_instance thread function_39f990f4();
    s_instance thread function_1a2e6a13();
    s_instance thread function_6945ef43();
    s_instance thread namespace_7589cf5c::function_f10301b0();
    level.var_acd0f67e = 2;
    if (s_instance.variant === "hunt_raz") {
        showmiscmodels("hvt_raz_corpses");
        return;
    }
    if (s_instance.variant === "hunt_steiner") {
        showmiscmodels("hvt_steiner_corpses");
        return;
    }
    if (s_instance.variant === "hunt_mimic") {
        showmiscmodels("hvt_mimic_corpses");
        return;
    }
    showmiscmodels("hvt_mechz_corpses");
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0xcbbce20e, Offset: 0xe90
// Size: 0x6a
function function_17f1d0f3() {
    self.var_5e36739b = self namespace_7589cf5c::function_df911075();
    self.var_61c57c53 = self namespace_7589cf5c::function_1b53cdc7();
    self.var_5de17ec9 = self namespace_7589cf5c::function_56fa33d9();
    self.var_2133c784 = 0;
    self.var_b803db9c = 0;
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0xabaae825, Offset: 0xf08
// Size: 0x11c
function function_39f990f4() {
    self endon(#"objective_ended");
    var_812457c = 0;
    while (!var_812457c) {
        foreach (player in getplayers()) {
            if (distance2dsquared(player.origin, self.origin) <= 25000000) {
                level clientfield::set("" + #"hash_7d92d99179091a4f", 1);
                var_812457c = 1;
            }
        }
        wait(0.1);
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0xc1e248f0, Offset: 0x1030
// Size: 0x7c
function function_6945ef43() {
    self endon(#"objective_ended");
    self thread namespace_7589cf5c::vo_start(#"hash_586699a0dc62b981", #"hash_42f1b5c3d59fbf0a");
    self thread function_8b062964();
    self thread function_a3df0b62();
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0x3c8aba46, Offset: 0x10b8
// Size: 0x294
function function_a3df0b62() {
    self endon(#"objective_ended", #"hash_8202877a3aadac8");
    var_35dfb407 = 0;
    foreach (model in self.a_models) {
        if (model.model === #"hash_38cf6d433834d7c5") {
            mdl_console = model;
        }
    }
    while (!var_35dfb407) {
        a_players = function_a1ef346b();
        foreach (player in a_players) {
            if (isalive(player) && isdefined(mdl_console) && distance2dsquared(player.origin, mdl_console.origin) <= 1000000) {
                if (player util::is_looking_at(mdl_console, 0.7, 0) || player util::is_looking_at(self.origin, 0.7, 1) || distance2dsquared(player.origin, mdl_console.origin) <= 250000) {
                    var_35dfb407 = 1;
                    break;
                }
            }
        }
        wait(0.5);
    }
    level namespace_7589cf5c::play_vo("objectiveKillHVTApproach");
    wait(0.5);
    level namespace_7589cf5c::play_vo("objectiveKillHVTApproachResponse");
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0x1e67e2d2, Offset: 0x1358
// Size: 0x2ac
function function_8b062964() {
    self endon(#"objective_ended");
    self waittill(#"hvt_go");
    foreach (model in self.a_models) {
        if (model.model === #"hash_35683f67bd38dc11") {
            var_2972bc14 = model;
        }
    }
    level namespace_7589cf5c::play_vo("objectiveKillHVTFiringSequence1");
    if (isdefined(var_2972bc14)) {
        var_2972bc14 playsound(#"hash_4970b7fd84d4afea");
    }
    wait(0.5);
    level namespace_7589cf5c::play_vo("objectiveKillHVTFiringSequence2");
    wait(0.25);
    level namespace_7589cf5c::play_vo("objectiveKillHVTFiringSequence3");
    wait(0.25);
    level namespace_7589cf5c::play_vo("objectiveKillHVTFiringSequence4");
    if (isdefined(var_2972bc14)) {
        var_2972bc14 playsound(#"hash_5849d9bbaffa605a");
    }
    wait(1);
    self flag::set(#"summon");
    self flag::wait_till(#"hash_16039744026b126d");
    level namespace_7589cf5c::play_vo("objectiveKillHVTFiringSequence5");
    wait(1);
    level namespace_7589cf5c::play_vo("objectiveKillHVTStart");
    self flag::set(#"backup_vo");
    if (isdefined(level.var_1f73a372) && !level.var_1f73a372 function_a1829ee4()) {
        level.var_1f73a372 thread function_667a319b(self, 1);
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0xccc0e9ea, Offset: 0x1610
// Size: 0x6c
function function_e67d6e33() {
    level namespace_7589cf5c::play_vo("objectiveKillHVTEndSuccess");
    wait(0.5);
    level thread namespace_7589cf5c::play_vo("objectiveKillHVTEndSuccessResponse");
    level flag::set(#"hash_1460b3afd614fb6c");
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x2 linked
// Checksum 0x4dfc0e5a, Offset: 0x1688
// Size: 0x100
function function_ccaf09a(instance) {
    self endon(#"death");
    wait(15);
    while (true) {
        self flag::wait_till_clear("kill_hvt_teleporting");
        if (self.aitype === #"hash_3ff43755c44e6d3d") {
            self namespace_7589cf5c::function_ac709d66(instance, #"hash_7bb2a4fde8d5a6fc");
        } else if (self.aitype === #"hash_acac3fe7a341329") {
            self namespace_7589cf5c::function_ac709d66(instance, #"hash_9f8556a2ac7721");
        }
        wait(randomfloatrange(30, 35));
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x2 linked
// Checksum 0xd8132bb, Offset: 0x1790
// Size: 0x588
function function_fe2c378a(instance) {
    self endon(#"death");
    foreach (player in getplayers()) {
        if (isalive(player)) {
            if (distance2dsquared(self.origin, player.origin) >= 1440000) {
                n_dot = vectordot((0, 180, 0), vectornormalize(self.origin - player.origin));
                n_frac = cos(n_dot);
                if (n_dot >= 165 && n_dot <= 180) {
                    if (instance.location.target === "destination_golova") {
                        player thread zm_vo::function_7622cb70("objectiveKillHVTTargetWest", 0, 1);
                    } else {
                        player thread zm_vo::function_7622cb70("objectiveKillHVTTargetNorth", 0, 1);
                    }
                    continue;
                }
                if (n_dot >= -180 && n_dot <= -165) {
                    if (instance.location.target === "destination_golova") {
                        player thread zm_vo::function_7622cb70("objectiveKillHVTTargetEast", 0, 1);
                    } else {
                        player thread zm_vo::function_7622cb70("objectiveKillHVTTargetSouth", 0, 1);
                    }
                    continue;
                }
                if (n_dot >= -60 && n_dot <= 60) {
                    if (player.origin[0] > self.origin[0]) {
                        if (instance.location.target === "destination_golova") {
                            player thread zm_vo::function_7622cb70("objectiveKillHVTTargetSouth", 0, 1);
                        } else {
                            player thread zm_vo::function_7622cb70("objectiveKillHVTTargetWest", 0, 1);
                        }
                    } else if (instance.location.target === "destination_golova") {
                        player thread zm_vo::function_7622cb70("objectiveKillHVTTargetNorth", 0, 1);
                    } else {
                        player thread zm_vo::function_7622cb70("objectiveKillHVTTargetEast", 0, 1);
                    }
                    continue;
                }
                if (n_dot < 165 && n_dot > 0) {
                    if (player.origin[0] > self.origin[0]) {
                        if (instance.location.target === "destination_golova") {
                            player thread zm_vo::function_7622cb70("objectiveKillHVTTargetSouthwest", 0, 1);
                        } else {
                            player thread zm_vo::function_7622cb70("objectiveKillHVTTargetNorthwest", 0, 1);
                        }
                    } else if (instance.location.target === "destination_golova") {
                        player thread zm_vo::function_7622cb70("objectiveKillHVTTargetNorthwest", 0, 1);
                    } else {
                        player thread zm_vo::function_7622cb70("objectiveKillHVTTargetNortheast", 0, 1);
                    }
                    continue;
                }
                if (player.origin[0] > self.origin[0]) {
                    if (instance.location.target === "destination_golova") {
                        player thread zm_vo::function_7622cb70("objectiveKillHVTTargetSoutheast", 0, 1);
                    } else {
                        player thread zm_vo::function_7622cb70("objectiveKillHVTTargetSouthwest", 0, 1);
                    }
                    continue;
                }
                if (instance.location.target === "destination_golova") {
                    player thread zm_vo::function_7622cb70("objectiveKillHVTTargetNortheast", 0, 1);
                    continue;
                }
                player thread zm_vo::function_7622cb70("objectiveKillHVTTargetSoutheast", 0, 1);
            }
        }
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x2 linked
// Checksum 0x41a0c547, Offset: 0x1d20
// Size: 0x18a
function function_86a476ea(s_instance) {
    s_instance.var_72e31bf2 = #"objective_hvt_flood_ailist_1";
    s_instance.var_3579a11c = #"objective_hvt_flood_ailist_2";
    s_instance.var_6427fe78 = #"objective_hvt_flood_ailist_3";
    s_instance.var_9903e833 = #"objective_hvt_flood_ailist_4";
    s_instance.var_279e0565 = #"objective_hvt_flood_ailist_5";
    s_instance.var_f2e09bef = #"objective_hvt_flood_ailist_6";
    s_instance.var_8fb74d = #"objective_hvt_flood_ailist_7";
    s_instance.var_3664a2f6 = #"objective_hvt_flood_ailist_8";
    s_instance.var_fa4b6d81 = #"objective_hvt_zombie_ailist_1";
    s_instance.var_dba43033 = #"objective_hvt_zombie_ailist_2";
    s_instance.var_d1371b59 = #"objective_hvt_zombie_ailist_3";
    s_instance.var_43897ffc = #"objective_hvt_zombie_ailist_4";
    s_instance.var_c385fff7 = #"objective_hvt_zombie_ailist_5";
    s_instance.var_a48ec209 = #"objective_hvt_zombie_ailist_6";
    s_instance.var_96db26a2 = #"objective_hvt_zombie_ailist_7";
    s_instance.var_887109ce = #"objective_hvt_zombie_ailist_8";
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0x390d06b4, Offset: 0x1eb8
// Size: 0x30c
function function_1a2e6a13() {
    foreach (model in self.a_models) {
        if (model.model === #"hash_38cf6d433834d7c5") {
            mdl_console = model;
        }
    }
    var_b98dc7c6 = util::spawn_model("p9_sur_computer_console_hvt_01_screen_laser_in_act", mdl_console.origin, mdl_console.angles);
    if (isdefined(var_b98dc7c6)) {
        if (!isdefined(self.a_models)) {
            self.a_models = [];
        } else if (!isarray(self.a_models)) {
            self.a_models = array(self.a_models);
        }
        self.a_models[self.a_models.size] = var_b98dc7c6;
        var_b98dc7c6 playloopsound(#"hash_d4387570f7d95f1");
    }
    var_6ee5c0f2 = util::spawn_model("p9_sur_computer_console_hvt_01_screen_laser_act", mdl_console.origin, mdl_console.angles);
    if (isdefined(var_6ee5c0f2)) {
        if (!isdefined(self.a_models)) {
            self.a_models = [];
        } else if (!isarray(self.a_models)) {
            self.a_models = array(self.a_models);
        }
        self.a_models[self.a_models.size] = var_6ee5c0f2;
        var_6ee5c0f2 hide();
    }
    self waittill(#"hvt_go");
    if (isdefined(var_b98dc7c6)) {
        var_b98dc7c6 stoploopsound();
        var_b98dc7c6 playsound(#"hash_1fb7dea44a30bf40");
    }
    wait(0.5);
    if (isdefined(var_b98dc7c6)) {
        var_b98dc7c6 delete();
    }
    if (isdefined(var_6ee5c0f2)) {
        var_6ee5c0f2 show();
        var_6ee5c0f2 playloopsound(#"hash_307d764934337e7c");
    }
    self waittill(#"objective_ended");
    if (isdefined(var_6ee5c0f2)) {
        var_6ee5c0f2 delete();
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 2, eflags: 0x6 linked
// Checksum 0xcc3ddb00, Offset: 0x21d0
// Size: 0x634
function private start_callback(instance, activator) {
    instance notify(#"hvt_go");
    instance.start_time = gettime();
    instance thread function_17f1d0f3();
    instance thread function_78f3b160();
    foreach (model in instance.a_models) {
        if (model.model === #"hash_35683f67bd38dc11") {
            var_2972bc14 = model;
        }
    }
    function_3ef1d58a(instance, 1);
    if (!isdefined(level.var_97e461d4)) {
        namespace_7589cf5c::function_1e45b156(instance);
    }
    if (isdefined(var_2972bc14)) {
        wait(1);
        var_2972bc14 playrumblelooponentity(#"sr_machinery_rumble");
        var_2972bc14 scene::play(#"p9_fxanim_zm_sv_hvt_dish_bundle", "Shot 1", var_2972bc14);
        var_2972bc14 stoprumble(#"sr_machinery_rumble");
    }
    instance.a_ai_spawned = [];
    instance.a_ai_raz = [];
    instance.var_bcd37ed4 = [];
    instance.var_9fcaacff = 0;
    instance.var_4675adc1 = 0;
    instance.var_894bb3c9 = 0;
    instance.var_5ba1d698 = 0;
    instance.var_c42980f6 = 0;
    instance flag::wait_till(#"summon");
    n_players = function_a1ef346b().size;
    foreach (var_109708e0 in isdefined(instance.contentgroups[#"hvt"]) ? instance.contentgroups[#"hvt"] : []) {
        instance.var_c42980f6++;
        var_109708e0.count = int(isdefined(var_109708e0.count) ? var_109708e0.count : 1);
        if (!is_true(instance.var_9ef060ec) && var_109708e0.ai_type === "raz" && level.var_b48509f9 > 1 && n_players >= 3) {
            var_109708e0.count++;
        }
        if (var_109708e0.ai_type === "avogadro") {
            var_109708e0.count *= 3;
        }
        instance.var_894bb3c9 += var_109708e0.count;
        var_109708e0 thread function_92f52c04(instance, activator);
    }
    level thread function_fa7f10a(instance);
    foreach (var_a1042f77 in isdefined(instance.contentgroups[#"flood"]) ? instance.contentgroups[#"flood"] : []) {
        var_a1042f77 thread function_4b4ffd20(instance, activator);
    }
    s_waitresult = instance waittill(#"objective_ended");
    namespace_7589cf5c::function_ed193293(instance);
    if (is_true(instance.success)) {
        instance thread function_e67d6e33();
        namespace_7589cf5c::function_3899cfea();
        if (isdefined(instance.start_time) && gettime() - instance.start_time < 120000) {
            level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"hvt_quick_kill_zm", #allplayers:1});
        }
    }
    if (instance flag::get(#"hash_12988a5a3e6a65d6")) {
        level.var_97e461d4 = undefined;
        instance flag::clear(#"hash_12988a5a3e6a65d6");
    }
    instance flag::set("complete");
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0x3dd79cdf, Offset: 0x2810
// Size: 0x44
function function_78f3b160() {
    self endon(#"objective_ended");
    level waittill(#"hash_8202877a3aadac8");
    objective_manager::objective_ended(self, 0);
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x6 linked
// Checksum 0x3c3cc6b1, Offset: 0x2860
// Size: 0x298
function private function_fa7f10a(s_instance) {
    foreach (player in getplayers()) {
        level.var_31028c5d prototype_hud::function_7491d6c5(player, #"hash_36989b23ebea2980");
    }
    s_instance waittilltimeout(5, #"complete");
    if (!s_instance flag::get("complete")) {
        foreach (e_player in getplayers()) {
            level.var_31028c5d prototype_hud::set_active_objective_string(e_player, #"hash_36989b23ebea2980");
            level.var_31028c5d prototype_hud::function_817e4d10(e_player, 1);
        }
        s_instance flag::wait_till("complete");
    }
    foreach (e_player in getplayers()) {
        level.var_31028c5d prototype_hud::function_7491d6c5(e_player, #"");
        level.var_31028c5d prototype_hud::set_active_objective_string(e_player, #"");
        level.var_31028c5d prototype_hud::function_817e4d10(e_player, 0);
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x4
// Checksum 0xd6a01dd1, Offset: 0x2b00
// Size: 0x96
function private function_5ad6340d() {
    self notify("470b0772887d20a6");
    self endon("470b0772887d20a6");
    self endon(#"stop_timer");
    n_time = 300;
    /#
        if (getdvarint(#"hash_69bc53d159fd305c", 0) > 0) {
            n_time = 10;
        }
    #/
    objective_manager::start_timer(n_time);
    self notify(#"failed");
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 2, eflags: 0x6 linked
// Checksum 0xb4f9f79, Offset: 0x2ba0
// Size: 0xc50
function private function_4b4ffd20(s_instance, e_activator) {
    s_instance endon(#"complete");
    self endon(#"death");
    var_b35d8ad0 = float(isdefined(self.var_2fd49ac3) ? self.var_2fd49ac3 : 1);
    n_roll = randomfloat(1);
    if (n_roll > var_b35d8ad0) {
        return;
    }
    if (!is_true(self.blocking)) {
        foreach (var_a1042f77 in isdefined(self.contentgroups[#"flood"]) ? self.contentgroups[#"flood"] : []) {
            var_a1042f77 thread function_4b4ffd20(s_instance, e_activator);
        }
    }
    if (isdefined(self.var_7383f50a) && self.var_7383f50a != "") {
        level flag::wait_till(self.var_7383f50a);
    } else {
        var_3d5ea915 = isdefined(self.contentgroups[#"spawn_trigger"]) ? self.contentgroups[#"spawn_trigger"] : [];
        if (var_3d5ea915.size > 0) {
            self function_bb9468f8(var_3d5ea915);
        }
    }
    a_s_spawns = arraycopy(isdefined(self.contentgroups[#"spawn"]) ? self.contentgroups[#"spawn"] : []);
    a_s_spawns = array::randomize(a_s_spawns);
    if (a_s_spawns.size > 0) {
        n_players = function_a1ef346b().size;
        if (n_players <= 2) {
            n_size = 10;
        } else if (n_players <= 4) {
            n_size = 16;
        } else {
            n_size = 12;
        }
        if (is_true(self.half)) {
            n_size = int(n_size / 2);
        }
        a_ai = [];
        var_e905c444 = isdefined(self.contentgroups[#"hash_46c4b051187d03ee"]) ? self.contentgroups[#"hash_46c4b051187d03ee"] : [];
        var_ff81609a = var_e905c444.size <= 0;
        for (i = 0; i < n_size; i++) {
            level flag::wait_till("spawn_zombies");
            if (a_s_spawns.size <= 0) {
                a_s_spawns = arraycopy(isdefined(self.contentgroups[#"spawn"]) ? self.contentgroups[#"spawn"] : []);
                a_s_spawns = array::randomize(a_s_spawns);
            }
            s_spawn = a_s_spawns[0];
            arrayremoveindex(a_s_spawns, 0);
            var_d7cf1504 = isdefined(self.blacklist) ? self.blacklist : "";
            var_d7cf1504 = strtok(var_d7cf1504, ", ");
            var_865d8aac = [];
            foreach (var_929141c6 in var_d7cf1504) {
                var_7ecdee63 = get_spawner(var_929141c6);
                if (!isdefined(var_865d8aac)) {
                    var_865d8aac = [];
                } else if (!isarray(var_865d8aac)) {
                    var_865d8aac = array(var_865d8aac);
                }
                var_865d8aac[var_865d8aac.size] = var_7ecdee63;
            }
            var_82706add = function_4674880c(s_instance);
            ai = s_spawn function_41f7333b(var_82706add, (0, randomfloat(360), 0));
            if (namespace_7589cf5c::function_82e262cf(ai.aitype)) {
                s_instance.var_38c710c3 = float(gettime()) / 1000;
                s_instance.var_2133c784++;
                s_instance.var_b803db9c++;
                ai callback::function_d8abfc3d(#"on_ai_killed", &function_c36cb7b1);
            } else {
                ai callback::function_d8abfc3d(#"on_ai_killed", &function_b3791df9);
            }
            if (!isdefined(s_instance.a_ai_spawned)) {
                s_instance.a_ai_spawned = [];
            } else if (!isarray(s_instance.a_ai_spawned)) {
                s_instance.a_ai_spawned = array(s_instance.a_ai_spawned);
            }
            s_instance.a_ai_spawned[s_instance.a_ai_spawned.size] = ai;
            if (!isdefined(a_ai)) {
                a_ai = [];
            } else if (!isarray(a_ai)) {
                a_ai = array(a_ai);
            }
            a_ai[a_ai.size] = ai;
            if (var_ff81609a) {
                if (is_true(self.var_9d2375f4)) {
                    ai thread function_a810bd2f();
                }
                if (is_true(self.var_6337858d)) {
                    ai.var_12ec333b = 1;
                    ai callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_b42b5f72);
                }
            }
            if (i + 1 < n_size) {
                util::wait_network_frame();
            }
        }
        if (!var_ff81609a) {
            var_e905c444 = isdefined(self.contentgroups[#"hash_46c4b051187d03ee"]) ? self.contentgroups[#"hash_46c4b051187d03ee"] : [];
            if (var_e905c444.size > 0) {
                function_1eaaceab(a_ai, 1);
                foreach (ai in a_ai) {
                    ai thread function_83c20994(self);
                }
                self function_bb9468f8(var_e905c444);
            }
            if (isdefined(self.var_cac36ea9) && self.var_cac36ea9 != "") {
                level flag::set(self.var_cac36ea9);
            }
            function_1eaaceab(a_ai, 1);
            if (is_true(self.var_9d2375f4)) {
                foreach (ai in a_ai) {
                    ai thread function_a810bd2f();
                }
            }
            if (is_true(self.var_6337858d)) {
                foreach (ai in a_ai) {
                    ai.var_12ec333b = 1;
                    ai callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_b42b5f72);
                }
            }
        }
        if (is_true(self.blocking)) {
            n_limit = int(n_size / 5);
            while (a_ai.size > n_limit) {
                function_1eaaceab(a_ai);
                waitframe(1);
            }
        }
    }
    if (is_true(self.blocking)) {
        foreach (var_a1042f77 in isdefined(self.contentgroups[#"flood"]) ? self.contentgroups[#"flood"] : []) {
            var_a1042f77 thread function_4b4ffd20(s_instance, e_activator);
        }
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x2 linked
// Checksum 0x65fd8f0, Offset: 0x37f8
// Size: 0x21c
function function_37aa3b64(s_instance) {
    self endon(#"death");
    s_instance endon(#"complete");
    self flag::wait_till(#"reinforce");
    self flag::clear(#"reinforce");
    self val::set("hvt_ignoreall", "ignoreall", 1);
    self flag::set(#"hash_624e5d5dfb7f742b");
    wait(0.1);
    e_linkto = util::spawn_model("tag_origin", self.origin);
    waitframe(1);
    if (isdefined(e_linkto)) {
        self linkto(e_linkto);
        str_scene = self function_aa3799b9();
        if (isdefined(str_scene)) {
            e_linkto scene::play(str_scene, level.var_1f73a372);
        } else {
            self thread animation::play("ai_t9_zm_mimic_spit_attack_f_up_01");
            wait(2);
            self animation::stop(0.3, 1);
        }
    }
    e_linkto delete();
    self unlink();
    self val::reset("hvt_ignoreall", "ignoreall");
    self flag::clear(#"hash_624e5d5dfb7f742b");
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 3, eflags: 0x6 linked
// Checksum 0x5090d1c0, Offset: 0x3a20
// Size: 0x954
function private function_cf54aadd(*var_f5064815, s_instance, *var_e905c444) {
    var_e905c444 endon(#"complete");
    level.var_1f73a372 endon(#"death");
    level.var_1f73a372 function_37aa3b64(var_e905c444);
    switch (function_a1ef346b().size) {
    case 1:
    default:
        if (level.var_1f73a372.aitype === #"hash_60d7855358ceb53d") {
            n_to_spawn = 12;
        } else if (level.var_1f73a372.aitype === #"hash_acac3fe7a341329") {
            n_to_spawn = 12;
        } else if (level.var_1f73a372.aitype === #"hash_4a900af3fc47cdd5") {
            n_to_spawn = 14;
        } else if (level.var_1f73a372.aitype === #"hash_469e4baceeaf38f5") {
            n_to_spawn = 12;
        } else {
            n_to_spawn = 15;
        }
        break;
    case 2:
        if (level.var_1f73a372.aitype === #"hash_60d7855358ceb53d") {
            n_to_spawn = 16;
        } else if (level.var_1f73a372.aitype === #"hash_acac3fe7a341329") {
            n_to_spawn = 16;
        } else if (level.var_1f73a372.aitype === #"hash_4a900af3fc47cdd5") {
            n_to_spawn = 18;
        } else if (level.var_1f73a372.aitype === #"hash_469e4baceeaf38f5") {
            n_to_spawn = 16;
        } else {
            n_to_spawn = 20;
        }
        break;
    case 3:
        if (level.var_1f73a372.aitype === #"hash_60d7855358ceb53d") {
            n_to_spawn = 16;
        } else if (level.var_1f73a372.aitype === #"hash_acac3fe7a341329") {
            n_to_spawn = 16;
        } else if (level.var_1f73a372.aitype === #"hash_4a900af3fc47cdd5") {
            n_to_spawn = 18;
        } else if (level.var_1f73a372.aitype === #"hash_469e4baceeaf38f5") {
            n_to_spawn = 16;
        } else {
            n_to_spawn = 20;
        }
        break;
    case 4:
        if (level.var_1f73a372.aitype === #"hash_60d7855358ceb53d") {
            n_to_spawn = 22;
        } else if (level.var_1f73a372.aitype === #"hash_acac3fe7a341329") {
            n_to_spawn = 22;
        } else if (level.var_1f73a372.aitype === #"hash_4a900af3fc47cdd5") {
            n_to_spawn = 25;
        } else if (level.var_1f73a372.aitype === #"hash_469e4baceeaf38f5") {
            n_to_spawn = 22;
        } else {
            n_to_spawn = 25;
        }
        break;
    }
    self.radius = float(self.radius);
    self.spawn_points = [];
    self.spawn_radius = self.radius;
    self.var_48d0f926 = 64;
    self.var_783fc5e = 64;
    self.spawn_points = namespace_85745671::function_e4791424(self.origin, self.var_783fc5e, self.var_48d0f926, self.spawn_radius, int(self.spawn_radius * 0.5), 0, 1, 0);
    if (isdefined(self.spawn_points)) {
        var_2eb61c8a = arraycopy(self.spawn_points);
        var_2eb61c8a = array::randomize(var_2eb61c8a);
    }
    var_d7cf1504 = isdefined(self.blacklist) ? self.blacklist : "";
    var_d7cf1504 = strtok(var_d7cf1504, ", ");
    var_865d8aac = [];
    foreach (var_929141c6 in var_d7cf1504) {
        var_7ecdee63 = get_spawner(var_929141c6);
        if (!isdefined(var_865d8aac)) {
            var_865d8aac = [];
        } else if (!isarray(var_865d8aac)) {
            var_865d8aac = array(var_865d8aac);
        }
        var_865d8aac[var_865d8aac.size] = var_7ecdee63;
    }
    for (i = 0; i < n_to_spawn; i++) {
        level flag::wait_till("spawn_zombies");
        if (isdefined(var_2eb61c8a)) {
            if (var_2eb61c8a.size <= 0) {
                var_2eb61c8a = arraycopy(self.spawn_points);
                var_2eb61c8a = array::randomize(var_2eb61c8a);
            }
            v_spawn = var_2eb61c8a[0];
            arrayremoveindex(var_2eb61c8a, 0);
            v_spawn = v_spawn.origin;
        } else {
            v_spawn = self.origin;
        }
        var_82706add = function_4674880c(var_e905c444);
        while (level.var_1f73a372.n_active >= level.var_1f73a372.n_max) {
            wait(0.1);
        }
        var_900d7dee = spawn_ai(var_82706add, v_spawn, (0, randomfloat(360), 0));
        if (isdefined(var_900d7dee)) {
            if (namespace_7589cf5c::function_82e262cf(var_900d7dee.aitype)) {
                var_e905c444.var_38c710c3 = float(gettime()) / 1000;
                var_e905c444.var_2133c784++;
                var_e905c444.var_b803db9c++;
                var_900d7dee callback::function_d8abfc3d(#"on_ai_killed", &function_c36cb7b1);
            } else {
                var_900d7dee callback::function_d8abfc3d(#"on_ai_killed", &function_b3791df9);
            }
            if (!isdefined(var_e905c444.var_a3a15722)) {
                var_e905c444.var_a3a15722 = [];
            } else if (!isarray(var_e905c444.var_a3a15722)) {
                var_e905c444.var_a3a15722 = array(var_e905c444.var_a3a15722);
            }
            var_e905c444.var_a3a15722[var_e905c444.var_a3a15722.size] = var_900d7dee;
            var_900d7dee.wander_radius = self.radius;
            var_900d7dee thread function_a810bd2f();
            level.var_1f73a372.n_active++;
        }
        if (i + 1 < n_to_spawn) {
            util::wait_network_frame();
        }
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0x44f7242d, Offset: 0x4380
// Size: 0x34
function function_fd68cae4() {
    if (level.var_b48509f9 < 5) {
        self namespace_85745671::function_9758722("sprint");
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 2, eflags: 0x0
// Checksum 0xe798490d, Offset: 0x43c0
// Size: 0x64
function function_bf606a73(var_f5064815, var_e905c444) {
    self endon(#"death");
    if (var_e905c444.size > 0) {
        var_f5064815 function_bb9468f8(var_e905c444);
        self thread function_a810bd2f();
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 3, eflags: 0x6 linked
// Checksum 0x188cda6b, Offset: 0x4430
// Size: 0x580
function private function_dd27cb14(*var_f5064815, s_instance, var_559503f1) {
    level.var_1f73a372 endon(#"death", #"hash_316bee96eded77ba");
    s_instance endon(#"complete");
    self.n_spawned = 0;
    while (true) {
        switch (function_a1ef346b().size) {
        case 1:
        default:
            var_a87aeae6 = 9;
            break;
        case 2:
            var_a87aeae6 = 15;
            break;
        case 3:
            var_a87aeae6 = 21;
            break;
        case 4:
            var_a87aeae6 = 27;
            break;
        }
        n_to_spawn = var_a87aeae6 + level.var_1f73a372.var_6a4ec994 * 2;
        s_instance.spawn_points = [];
        foreach (s_spawnpt in var_559503f1) {
            if (isdefined(s_spawnpt.radius)) {
                s_spawnpt.radius = s_spawnpt.radius;
            } else {
                s_spawnpt.radius = 500;
            }
            s_spawnpt.spawn_radius = s_spawnpt.radius;
            s_spawnpt.var_48d0f926 = 64;
            s_spawnpt.var_783fc5e = n_to_spawn;
            spawn_points = namespace_85745671::function_e4791424(s_spawnpt.origin, s_spawnpt.var_783fc5e, s_spawnpt.var_48d0f926, s_spawnpt.spawn_radius, undefined, undefined, 1, 0);
            if (isdefined(spawn_points) && spawn_points.size > 0) {
                s_instance.spawn_points = arraycombine(s_instance.spawn_points, spawn_points);
            }
        }
        for (i = 0; i < n_to_spawn; i++) {
            level flag::wait_till("spawn_zombies");
            s_spawnpt = array::random(s_instance.spawn_points);
            if (!isdefined(s_spawnpt)) {
                s_spawnpt = array::random(var_559503f1);
            }
            var_82706add = function_a45cb92c(s_instance);
            while (level.var_1f73a372.n_active >= level.var_1f73a372.n_max) {
                wait(0.1);
            }
            ai_rusher = spawn_ai(var_82706add, s_spawnpt.origin, s_spawnpt.angles);
            if (isdefined(ai_rusher)) {
                if (namespace_7589cf5c::function_82e262cf(ai_rusher.aitype)) {
                    s_instance.var_38c710c3 = float(gettime()) / 1000;
                    s_instance.var_2133c784++;
                    s_instance.var_b803db9c++;
                    ai_rusher callback::function_d8abfc3d(#"on_ai_killed", &function_c36cb7b1);
                } else {
                    ai_rusher callback::function_d8abfc3d(#"on_ai_killed", &function_b3791df9);
                }
                self.n_spawned++;
                level.var_1f73a372.n_active++;
                if (!isdefined(s_instance.var_a3a15722)) {
                    s_instance.var_a3a15722 = [];
                } else if (!isarray(s_instance.var_a3a15722)) {
                    s_instance.var_a3a15722 = array(s_instance.var_a3a15722);
                }
                s_instance.var_a3a15722[s_instance.var_a3a15722.size] = ai_rusher;
                ai_rusher thread function_a810bd2f();
                if (self.n_spawned >= n_to_spawn) {
                    level.var_1f73a372 notify(#"hash_316bee96eded77ba");
                }
                if (i + 1 < n_to_spawn) {
                    util::wait_network_frame();
                }
            }
        }
        wait(randomfloatrange(2.5, 4.5));
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x0
// Checksum 0x63d015c0, Offset: 0x49b8
// Size: 0xee
function function_43dbb0e5(var_3afe334f) {
    switch (var_3afe334f) {
    case 1:
        if (math::cointoss()) {
            var_7ecdee63 = #"hash_7cba8a05511ceedf";
        } else {
            var_7ecdee63 = #"hash_124b582ce08d78c0";
        }
        break;
    case 2:
    case 3:
    case 4:
        var_7ecdee63 = #"hash_338eb4103e0ed797";
        break;
    default:
        var_7ecdee63 = #"hash_46c917a1b5ed91e7";
        break;
    }
    return var_7ecdee63;
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x6 linked
// Checksum 0x121c8357, Offset: 0x4ab0
// Size: 0x176
function private function_4674880c(s_instance) {
    switch (level.var_b48509f9) {
    case 1:
        s_instance.var_6ec779fd = s_instance.var_72e31bf2;
        break;
    case 2:
        s_instance.var_6ec779fd = s_instance.var_3579a11c;
        break;
    case 3:
        s_instance.var_6ec779fd = s_instance.var_6427fe78;
        break;
    case 4:
        s_instance.var_6ec779fd = s_instance.var_9903e833;
        break;
    case 5:
        s_instance.var_6ec779fd = s_instance.var_279e0565;
        break;
    case 6:
        s_instance.var_6ec779fd = s_instance.var_f2e09bef;
        break;
    case 7:
        s_instance.var_6ec779fd = s_instance.var_8fb74d;
        break;
    default:
        s_instance.var_6ec779fd = s_instance.var_3664a2f6;
        break;
    }
    var_6017f33e = namespace_679a22ba::function_ca209564(s_instance.var_6ec779fd);
    return var_6017f33e.var_990b33df;
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x2 linked
// Checksum 0x9c58f23, Offset: 0x4c30
// Size: 0x1ba
function function_a45cb92c(s_instance) {
    switch (level.var_b48509f9) {
    case 1:
        var_6017f33e = namespace_679a22ba::function_ca209564(s_instance.var_fa4b6d81);
        break;
    case 2:
        var_6017f33e = namespace_679a22ba::function_ca209564(s_instance.var_dba43033);
        break;
    case 3:
        var_6017f33e = namespace_679a22ba::function_ca209564(s_instance.var_d1371b59);
        break;
    case 4:
        var_6017f33e = namespace_679a22ba::function_ca209564(s_instance.var_43897ffc);
        break;
    case 5:
        var_6017f33e = namespace_679a22ba::function_ca209564(s_instance.var_c385fff7);
        break;
    case 6:
        var_6017f33e = namespace_679a22ba::function_ca209564(s_instance.var_a48ec209);
        break;
    case 7:
        var_6017f33e = namespace_679a22ba::function_ca209564(s_instance.var_96db26a2);
        break;
    default:
        var_6017f33e = namespace_679a22ba::function_ca209564(s_instance.var_887109ce);
        break;
    }
    return var_6017f33e.var_990b33df;
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 2, eflags: 0x6 linked
// Checksum 0x6deadb28, Offset: 0x4df8
// Size: 0x324
function private function_92f52c04(s_instance, *e_activator) {
    e_activator endon(#"complete");
    self endon(#"death");
    self.var_4675adc1 = 0;
    self.var_894bb3c9 = 0;
    a_s_spawns = arraycopy(isdefined(self.contentgroups[#"spawn"]) ? self.contentgroups[#"spawn"] : []);
    if (a_s_spawns.size > 0) {
        var_3d5ea915 = isdefined(self.contentgroups[#"spawn_trigger"]) ? self.contentgroups[#"spawn_trigger"] : [];
        if (var_3d5ea915.size > 0) {
            self function_bb9468f8(var_3d5ea915);
        }
        n_spawns = int(isdefined(self.count) ? self.count : 1);
        var_d189de45 = int(isdefined(self.lives) ? self.lives : 1);
        self.var_894bb3c9 = n_spawns * var_d189de45;
        for (i = 0; i < n_spawns; i++) {
            if (a_s_spawns.size <= 0) {
                a_s_spawns = arraycopy(isdefined(self.contentgroups[#"spawn"]) ? self.contentgroups[#"spawn"] : []);
            }
            s_spawn = array::random(a_s_spawns);
            arrayremovevalue(a_s_spawns, s_spawn);
            var_f5064815 = spawnstruct();
            var_f5064815 thread function_15bda870(s_spawn, self, e_activator);
            if (i + 1 < n_spawns) {
                util::wait_network_frame();
            }
        }
        while (self.var_4675adc1 < self.var_894bb3c9) {
            waitframe(1);
        }
    }
    e_activator.var_5ba1d698++;
    if (e_activator.var_5ba1d698 >= e_activator.var_c42980f6) {
        e_activator flag::set("complete");
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x2 linked
// Checksum 0xc48192e4, Offset: 0x5128
// Size: 0x18c
function function_72213470(s_instance) {
    self waittill(#"death");
    if (isdefined(self)) {
        self clientfield::set("" + #"hash_b74182bd1e44a44", 0);
        self clientfield::set("" + #"hash_3049a409503be8a0", 0);
    }
    if (isdefined(self.mdl_trail)) {
        self.mdl_trail clientfield::set("" + #"hash_6d05bbcab1912e5a", 0);
    }
    s_instance.var_8d0c68a3 = self.origin;
    if (is_true(level.var_ef784546) && is_true(self.var_a54d6082)) {
        return;
    }
    wait(3);
    var_d8f8912 = getent("death_sound_entity", "targetname");
    if (isdefined(var_d8f8912)) {
        level thread namespace_cda50904::function_a92a93e9(var_d8f8912.origin + (0, 0, 48), undefined, 1);
        var_d8f8912 delete();
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 3, eflags: 0x6 linked
// Checksum 0x918f0f0e, Offset: 0x52c0
// Size: 0xcf4
function private function_15bda870(s_spawn, var_109708e0, s_instance) {
    s_instance endon(#"objective_ended");
    self.a_ai_spawned = [];
    self.var_f186cef3 = [];
    self.var_ed0a75a3 = [];
    foreach (var_5054ec97 in isdefined(var_109708e0.contentgroups[#"bodyguards"]) ? var_109708e0.contentgroups[#"bodyguards"] : []) {
        level flag::wait_till("spawn_zombies");
        if (!is_true(var_5054ec97.var_af51daa7)) {
            var_d76c3f03 = spawnstruct();
            var_d76c3f03.var_6c2313dc = [];
            var_d76c3f03.var_4b28d8c4 = var_5054ec97.var_4b28d8c4;
            var_d76c3f03 thread function_a96eb06b(self, var_5054ec97, s_instance);
            if (!isdefined(self.var_ed0a75a3)) {
                self.var_ed0a75a3 = [];
            } else if (!isarray(self.var_ed0a75a3)) {
                self.var_ed0a75a3 = array(self.var_ed0a75a3);
            }
            self.var_ed0a75a3[self.var_ed0a75a3.size] = var_d76c3f03;
        }
    }
    v_spawn = s_spawn.origin;
    v_angles = s_spawn.angles;
    var_82706add = var_109708e0.ai_type;
    if (!isdefined(var_82706add)) {
        var_82706add = s_spawn.ai_type;
    }
    var_7ecdee63 = get_spawner(var_82706add);
    self.mdl_portal = util::spawn_model("tag_origin", v_spawn, v_angles);
    wait(1);
    level clientfield::set("" + #"hash_7d92d99179091a4f", 0);
    if (isdefined(self.mdl_portal)) {
        self.mdl_portal clientfield::set("" + #"hash_60e4230d63925ac1", 1);
        self.mdl_portal thread clear_vehicles(s_instance);
        players = getplayers();
        foreach (player in players) {
            if (isalive(player)) {
                player function_66337ef1("damage_heavy");
            }
        }
        wait(6);
    }
    s_instance flag::set(#"hash_16039744026b126d");
    level.var_1f73a372 = namespace_85745671::function_9d3ad056(var_7ecdee63, v_spawn, v_angles, "hvt");
    wait(0.1);
    if (isalive(level.var_1f73a372)) {
        level.var_1f73a372.var_a950813d = 1;
        level.var_1f73a372.var_6a4ec994 = 0;
        level.var_1f73a372.n_start_health = level.var_1f73a372.health;
        level.var_1f73a372.var_743b5dca = level.var_1f73a372.n_start_health - int(level.var_1f73a372.health * 0.33);
        level.var_1f73a372.var_39b7cd9c = level.var_1f73a372.n_start_health - int(level.var_1f73a372.health * 0.66);
        level.var_1f73a372.var_21567e64 = level.var_1f73a372.var_743b5dca;
        level.var_1f73a372 flag::init("hvt_invulnerable");
        level.var_1f73a372.var_306ee014 = &function_aa76ac3b;
        level.var_1f73a372.var_f5064815 = self;
        level.var_1f73a372.var_dd6fe31f = 1;
        level.var_1f73a372.var_a3a15722 = [];
        level.var_1f73a372.n_active = 0;
        level.var_1f73a372.n_max = function_b173d287();
        level.var_1f73a372 thread function_fc515700(s_spawn, self, var_109708e0, s_instance);
        if (!isdefined(s_instance.a_ai_spawned)) {
            s_instance.a_ai_spawned = [];
        } else if (!isarray(s_instance.a_ai_spawned)) {
            s_instance.a_ai_spawned = array(s_instance.a_ai_spawned);
        }
        s_instance.a_ai_spawned[s_instance.a_ai_spawned.size] = level.var_1f73a372;
    }
    players = getplayers();
    foreach (player in players) {
        if (isalive(player)) {
            player stoprumble("damage_heavy");
        }
    }
    if (isdefined(self.mdl_portal)) {
        self.mdl_portal clientfield::set("" + #"hash_60e4230d63925ac1", 0);
        wait(1);
    }
    if (isalive(level.var_1f73a372)) {
        level.var_1f73a372 thread hvt_waypoint_think(s_instance, self);
        e_linkto = util::spawn_model("tag_origin", level.var_1f73a372.origin, v_angles);
    }
    waitframe(1);
    if (isalive(level.var_1f73a372)) {
        level.var_1f73a372 thread function_72213470(s_instance);
        level.var_1f73a372 thread function_8da8f6cf(s_instance);
        var_e79dabce = isdefined(s_spawn.contentgroups[#"hash_61bf7f7a2c84e479"]) ? s_spawn.contentgroups[#"hash_61bf7f7a2c84e479"] : [];
        str_scene = level.var_1f73a372 function_aa3799b9();
        level.var_1f73a372 thread scene::play(str_scene, level.var_1f73a372);
        wait(1);
        level thread function_dd27cb14(self, s_instance, var_e79dabce);
        if (isdefined(level.var_1f73a372)) {
            level.var_1f73a372 thread function_14f57c1e(s_instance);
            level.var_1f73a372 thread function_c51cc257(s_instance);
            if (level.var_1f73a372.aitype === #"hash_3ff43755c44e6d3d" || level.var_1f73a372.aitype === #"hash_acac3fe7a341329") {
                level.var_1f73a372 thread function_ccaf09a(s_instance);
            }
        }
        wait(0.1);
        e_linkto delete();
        if (isdefined(self.mdl_portal)) {
            self.mdl_portal delete();
        }
        if (isdefined(level.var_1f73a372)) {
            level.var_1f73a372 thread util::delay(5, "end_game", &function_314cd1eb);
        }
        s_waitresult = level.var_1f73a372 waittill(#"death");
        if (isdefined(level.var_1f73a372)) {
            level.var_1f73a372 thread function_8da8f6cf(s_instance);
            if (level.var_1f73a372.aitype !== #"hash_acac3fe7a341329") {
                self thread function_4f35b892();
                s_instance thread function_59f9315a();
            }
            v_death = level.var_1f73a372.origin;
            self notify(#"hash_61065e42888f1894");
            s_instance notify(#"hash_48d9d9fc84d8cd16");
        }
        if (level.var_1f73a372.aitype === #"hash_acac3fe7a341329") {
            level thread namespace_7589cf5c::play_vo("objectiveKillHVTMegatonSplit");
            s_instance.var_ea2fea11 = 0;
            s_instance thread function_445f3f8e();
            s_instance thread function_630a01ee();
            s_instance flag::wait_till(#"hash_36250ef25b4c576b");
            self thread function_4f35b892();
            s_instance thread function_59f9315a();
            s_instance notify(#"hash_48c2d4fc84c5e5b6");
        } else {
            s_instance notify(#"hash_48c2d4fc84c5e5b6");
            wait(2);
            var_d8f8912 = util::spawn_model("tag_origin", v_death);
            var_d8f8912.targetname = "death_sound_entity";
            var_d8f8912 playsound(#"hash_20a9cb202ff38590");
        }
        s_instance.var_4675adc1++;
        var_109708e0.var_4675adc1++;
        self struct::delete();
        objective_manager::objective_ended(s_instance);
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0x756e75, Offset: 0x5fc0
// Size: 0x96
function function_630a01ee() {
    self endon(#"objective_ended");
    wait(2);
    var_5f59f064 = getaiarchetypearray(#"hash_7c0d83ac1e845ac2");
    if (!isdefined(var_5f59f064) || isdefined(var_5f59f064) && !var_5f59f064.size) {
        self flag::set(#"hash_36250ef25b4c576b");
        return;
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x2 linked
// Checksum 0x442662c6, Offset: 0x6060
// Size: 0x64
function function_14f57c1e(instance) {
    instance endon(#"objective_ended");
    instance flag::wait_till(#"backup_vo");
    level namespace_7589cf5c::play_vo("objectiveKillHVTSpottedResponse");
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x2 linked
// Checksum 0xdbec6b3a, Offset: 0x60d0
// Size: 0xbc
function function_c51cc257(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    wait(1);
    if (self.aitype === #"hash_3ff43755c44e6d3d") {
        self thread zm_vo::function_d6f8bbd9(#"hash_e657bee53adbf05");
        return;
    }
    if (self.aitype === #"hash_acac3fe7a341329") {
        self thread zm_vo::function_d6f8bbd9(#"hash_73a6f9e89ff8e4bd");
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0xfd03aa88, Offset: 0x6198
// Size: 0x190
function function_4f35b892() {
    if (isdefined(level.var_1f73a372)) {
        level.var_1f73a372 clientfield::increment("" + #"hash_435db79c304e12a5");
    }
    wait(0.1);
    arrayremovevalue(self.var_ed0a75a3, undefined);
    foreach (var_d76c3f03 in self.var_ed0a75a3) {
        if (isdefined(var_d76c3f03.var_6c2313dc)) {
            function_1eaaceab(var_d76c3f03.var_6c2313dc);
            foreach (ai in var_d76c3f03.var_6c2313dc) {
                ai thread function_d38842d3();
            }
        }
        var_d76c3f03 struct::delete();
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0xe598b473, Offset: 0x6330
// Size: 0xc2
function function_aa3799b9() {
    self endon(#"death");
    if (self.aitype === #"hash_3ff43755c44e6d3d") {
        str_scene = #"aib_t9_zm_raz_summon_01";
    } else if (self.aitype === #"hash_acac3fe7a341329") {
        str_scene = #"aib_t9_zm_steiner_base_com_summon_01";
    } else if (self.aitype === #"hash_469e4baceeaf38f5") {
        str_scene = #"aib_t9_zm_tungsten_abom_summon";
    } else {
        str_scene = #"aib_t9_zm_mechz_com_summon_01";
    }
    return str_scene;
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x2 linked
// Checksum 0x9e9ec64f, Offset: 0x6400
// Size: 0x2a
function function_aa76ac3b(*entity) {
    return self flag::get("hvt_invulnerable");
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0x6f0ce788, Offset: 0x6438
// Size: 0x102
function function_59f9315a() {
    if (isdefined(self.var_a3a15722)) {
        function_1eaaceab(self.var_a3a15722);
        for (i = 0; i < self.var_a3a15722.size; i++) {
            gibserverutils::annihilate(self.var_a3a15722[i]);
            if (isalive(self.var_a3a15722[i])) {
                self.var_a3a15722[i].var_98f1f37c = 1;
                self.var_a3a15722[i].allowdeath = 1;
                self.var_a3a15722[i] kill(undefined, undefined, undefined, undefined, undefined, 1);
            }
            waitframe(1);
        }
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0xcd94446, Offset: 0x6548
// Size: 0x18c
function function_445f3f8e() {
    self endon(#"objective_ended");
    var_5f59f064 = getaiarchetypearray(#"hash_7c0d83ac1e845ac2");
    if (!isdefined(var_5f59f064) || isdefined(var_5f59f064) && !var_5f59f064.size) {
        self flag::set(#"hash_36250ef25b4c576b");
        return;
    }
    foreach (var_ff251b7 in var_5f59f064) {
        if (var_ff251b7.aitype === #"hash_7f957e36b4f6160f" || var_ff251b7.aitype === #"hash_6904f5c7bef64405") {
            var_ff251b7 thread function_6af3ebd6(self);
        }
    }
    while (self.var_ea2fea11 < 2) {
        wait(0.1);
    }
    self flag::set(#"hash_36250ef25b4c576b");
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x2 linked
// Checksum 0x2adf8e99, Offset: 0x66e0
// Size: 0xe8
function function_6af3ebd6(s_instance) {
    if (self.aitype === #"hash_7f957e36b4f6160f") {
        self.str_objective = #"hash_719909f3c3ecf188";
    } else if (self.aitype === #"hash_6904f5c7bef64405") {
        self.str_objective = #"hash_71990af3c3ecf33b";
    }
    if (isdefined(self.str_objective)) {
        self.n_objective_id = zm_utility::function_f5a222a8(self.str_objective, self);
    }
    self waittill(#"death");
    if (isdefined(self.str_objective)) {
        zm_utility::function_bc5a54a8(self.n_objective_id);
    }
    s_instance.var_ea2fea11++;
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0x36056a3d, Offset: 0x67d0
// Size: 0xe6
function function_b173d287() {
    self endon(#"death");
    n_players = getplayers().size;
    switch (n_players) {
    case 1:
        n_max = 10;
        break;
    case 2:
        n_max = 13;
        break;
    case 3:
        n_max = 17;
        break;
    case 4:
        n_max = 21;
        break;
    }
    if (isdefined(self.var_6a4ec994)) {
        n_max += n_players * self.var_6a4ec994;
    }
    return n_max;
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 4, eflags: 0x6 linked
// Checksum 0xad1d9084, Offset: 0x68c0
// Size: 0x628
function private function_fc515700(s_spawn, var_f5064815, var_109708e0, s_instance) {
    self endon(#"death");
    self.ignore_nuke = 1;
    if (isdefined(s_spawn.radius)) {
        self.var_21249dfb = s_spawn.radius;
    }
    if (!var_f5064815 flag::get("first_spawn")) {
        var_f5064815 flag::set("first_spawn");
        self callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_4cf80702);
        self.var_12ec333b = 1;
        if (is_true(s_instance.var_9ef060ec)) {
            s_instance.var_fe987b5c = 1;
            s_instance function_d91f142f(var_109708e0);
        }
    } else {
        awareness::set_state(self, #"wander");
    }
    var_f5064815 flag::clear("hvt_attack");
    if (self.archetype != #"zombie") {
        self thread function_c93772c();
    }
    var_e905c444 = isdefined(s_spawn.contentgroups[#"hash_46c4b051187d03ee"]) ? s_spawn.contentgroups[#"hash_46c4b051187d03ee"] : [];
    self thread function_e13574ed(var_f5064815);
    if (var_e905c444.size > 0) {
        self flag::wait_till_clear("kill_hvt_teleporting");
        wait(0.1);
        self val::set("hvt_ignoreall", "ignoreall", 1);
        self flag::set(#"hash_624e5d5dfb7f742b");
        self thread function_45965a1(s_instance, var_f5064815, var_109708e0, var_e905c444);
        if (s_instance.targetname === "objective_golova_hunt_steiner") {
            var_f5064815 function_bb9468f8(var_e905c444);
        } else if (isdefined(self.var_21249dfb)) {
            self thread function_47de2d14();
            self thread function_4e1e24ae();
            self thread monitor_timeout();
            self flag::wait_till("attack");
        }
        self flag::clear("attack");
        self notify(#"attacking");
        self val::reset("hvt_ignoreall", "ignoreall");
        self flag::clear(#"hash_624e5d5dfb7f742b");
        var_f5064815 flag::set("hvt_attack");
    } else if (is_true(var_109708e0.var_9d2375f4)) {
        var_f5064815 flag::set("hvt_attack");
    }
    var_f5064815 flag::wait_till("hvt_attack");
    if (is_true(var_109708e0.var_9d2375f4)) {
        self thread function_a810bd2f();
    }
    if (isdefined(var_109708e0.var_cac36ea9) && var_109708e0.var_cac36ea9 != "") {
        level flag::set(var_109708e0.var_cac36ea9);
    }
    if (self.var_6a4ec994) {
        self thread function_d20a3932(s_instance, var_f5064815, self.var_6a4ec994);
    }
    if (is_true(s_instance.var_9ef060ec)) {
        self thread function_90591f67(var_f5064815, var_109708e0, s_instance);
        s_pt = array::random(isdefined(s_spawn.contentgroups[#"flood"]) ? s_spawn.contentgroups[#"flood"] : []);
        foreach (var_a1042f77 in isdefined(s_spawn.contentgroups[#"flood"]) ? s_spawn.contentgroups[#"flood"] : []) {
            var_a1042f77 thread function_cf54aadd(var_f5064815, s_instance, var_e905c444);
        }
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 3, eflags: 0x2 linked
// Checksum 0xd49a53db, Offset: 0x6ef0
// Size: 0x294
function function_d20a3932(s_instance, *var_f5064815, var_6a4ec994) {
    self endon(#"death");
    switch (self.aitype) {
    case #"hash_3ff43755c44e6d3d":
        var_7ecdee63 = #"hash_7a8b592728eec95d";
        break;
    case #"hash_acac3fe7a341329":
        var_7ecdee63 = #"hash_12a17ab3df5889eb";
        break;
    case #"hash_60d7855358ceb53d":
        var_7ecdee63 = #"spawner_bo5_avogadro_sr";
        break;
    case #"hash_4a900af3fc47cdd5":
        var_7ecdee63 = #"spawner_bo5_soa";
        break;
    case #"hash_469e4baceeaf38f5":
        var_7ecdee63 = #"spawner_bo5_mimic";
        break;
    }
    var_e00b0988 = function_336cb6b9(var_7ecdee63);
    if (var_6a4ec994 == 1) {
        var_e00b0988 -= 1;
    }
    a_s_pts = namespace_85745671::function_e4791424(self.origin, 16, 40, 300, 100, 0, 1, 0);
    for (i = 0; i < var_e00b0988; i++) {
        level flag::wait_till("spawn_zombies");
        if (isdefined(a_s_pts[i])) {
            ai_dog = spawn_ai(var_7ecdee63, a_s_pts[i].origin, self.angles);
            wait(0.1);
            if (isdefined(ai_dog)) {
                if (!isdefined(var_f5064815.var_a3a15722)) {
                    var_f5064815.var_a3a15722 = [];
                } else if (!isarray(var_f5064815.var_a3a15722)) {
                    var_f5064815.var_a3a15722 = array(var_f5064815.var_a3a15722);
                }
                var_f5064815.var_a3a15722[var_f5064815.var_a3a15722.size] = ai_dog;
            }
        }
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x2 linked
// Checksum 0x39f0f567, Offset: 0x7190
// Size: 0x196
function function_336cb6b9(var_7ecdee63) {
    switch (getplayers().size) {
    case 1:
        if (var_7ecdee63 == #"spawner_bo5_avogadro_sr" || var_7ecdee63 == #"spawner_bo5_soa") {
            var_e00b0988 = 2;
        } else {
            var_e00b0988 = 3;
        }
        break;
    case 2:
        if (var_7ecdee63 == #"spawner_bo5_avogadro_sr" || var_7ecdee63 == #"spawner_bo5_soa") {
            var_e00b0988 = 2;
        } else {
            var_e00b0988 = 4;
        }
        break;
    case 3:
        if (var_7ecdee63 == #"spawner_bo5_avogadro_sr" || var_7ecdee63 == #"spawner_bo5_soa") {
            var_e00b0988 = 2;
        } else {
            var_e00b0988 = 5;
        }
        break;
    case 4:
        if (var_7ecdee63 == #"spawner_bo5_avogadro_sr" || var_7ecdee63 == #"spawner_bo5_soa") {
            var_e00b0988 = 3;
        } else {
            var_e00b0988 = 7;
        }
        break;
    }
    return var_e00b0988;
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 4, eflags: 0x2 linked
// Checksum 0x7df7e288, Offset: 0x7330
// Size: 0x408
function function_45965a1(s_instance, var_f5064815, var_109708e0, var_e905c444) {
    self endon(#"death");
    var_f5064815 function_bb9468f8(var_e905c444);
    foreach (var_d76c3f03 in var_f5064815.var_ed0a75a3) {
        function_1eaaceab(var_d76c3f03.var_6c2313dc);
        foreach (var_a491491c in var_d76c3f03.var_6c2313dc) {
            var_a491491c thread function_a810bd2f();
        }
        if (is_true(var_d76c3f03.var_4b28d8c4)) {
            var_d76c3f03 notify(#"hash_459d7d9161613634");
            var_d76c3f03 struct::delete();
        }
    }
    arrayremovevalue(var_f5064815.var_ed0a75a3, undefined);
    foreach (var_5054ec97 in isdefined(var_109708e0.contentgroups[#"bodyguards"]) ? var_109708e0.contentgroups[#"bodyguards"] : []) {
        if (is_true(var_5054ec97.var_af51daa7)) {
            var_d76c3f03 = spawnstruct();
            var_d76c3f03 thread function_a96eb06b(var_f5064815, var_5054ec97, s_instance);
            if (!isdefined(var_f5064815.var_ed0a75a3)) {
                var_f5064815.var_ed0a75a3 = [];
            } else if (!isarray(var_f5064815.var_ed0a75a3)) {
                var_f5064815.var_ed0a75a3 = array(var_f5064815.var_ed0a75a3);
            }
            var_f5064815.var_ed0a75a3[var_f5064815.var_ed0a75a3.size] = var_d76c3f03;
        }
    }
    if (is_true(s_instance.var_9ef060ec)) {
        var_f5064815 notify(#"hash_61065e42888f1894");
        function_1eaaceab(var_f5064815.a_ai_spawned);
        foreach (ai in var_f5064815.a_ai_spawned) {
            ai thread function_a810bd2f();
        }
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0xb21c3ddb, Offset: 0x7740
// Size: 0x114
function function_314cd1eb() {
    self notify("582d7d953344e565");
    self endon("582d7d953344e565");
    self endon(#"death", #"reinforce", #"hash_2ab0071e6f1bd0b1");
    n_threshold = int(self.n_max * 0.5);
    while (!isdefined(level.n_spawned) || level.n_spawned <= n_threshold) {
        wait(1);
    }
    while (true) {
        if (self.n_active <= n_threshold) {
            self flag::set("attack");
            self flag::set(#"reinforce");
            break;
        }
        wait(0.5);
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0x1ee1dc49, Offset: 0x7860
// Size: 0xa0
function function_47de2d14() {
    self endon(#"death", #"attacking");
    while (true) {
        s_result = self waittill(#"damage");
        if (isdefined(s_result.attacker) && isplayer(s_result.attacker)) {
            self flag::set("attack");
        }
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0x358cc4b3, Offset: 0x7908
// Size: 0x10c
function function_4e1e24ae() {
    self endon(#"death", #"attacking");
    while (true) {
        a_e_players = function_a1ef346b(undefined, self.origin, self.var_21249dfb);
        foreach (e_player in a_e_players) {
            if (!e_player laststand::player_is_in_laststand()) {
                self flag::set("attack");
            }
        }
        wait(0.5);
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0x15beb38f, Offset: 0x7a20
// Size: 0x4c
function monitor_timeout() {
    self endon(#"death", #"attacking");
    wait(45);
    self flag::set("attack");
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x6 linked
// Checksum 0x2294c2a4, Offset: 0x7a78
// Size: 0x150
function private function_c93772c() {
    self endon(#"death");
    var_82cf0f69 = getaiarchetypearray(self.archetype);
    arrayremovevalue(var_82cf0f69, self);
    var_82cf0f69 = arraysortclosest(var_82cf0f69, self.origin, undefined, 0, 10000);
    foreach (var_e0f93904 in var_82cf0f69) {
        if (isdefined(var_e0f93904) && var_e0f93904.targetname !== "kill_hvt_ai" && var_e0f93904.targetname !== "kill_hvt_hvt") {
            var_e0f93904 thread function_d38842d3();
        }
        util::wait_network_frame();
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x6 linked
// Checksum 0xc6510cf4, Offset: 0x7bd0
// Size: 0x94
function private function_d91f142f(var_109708e0) {
    var_59980149 = isdefined(var_109708e0.contentgroups[#"hvt"]) ? var_109708e0.contentgroups[#"hvt"] : [];
    var_a2b4a7d6 = var_59980149[0];
    if (isdefined(var_a2b4a7d6)) {
        self.var_fe987b5c++;
        self function_d91f142f(var_a2b4a7d6);
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 3, eflags: 0x6 linked
// Checksum 0xb86c556a, Offset: 0x7c70
// Size: 0x7f4
function private function_90591f67(var_f5064815, var_109708e0, s_instance) {
    self endon(#"death");
    var_59980149 = isdefined(var_109708e0.contentgroups[#"hvt"]) ? var_109708e0.contentgroups[#"hvt"] : [];
    var_a2b4a7d6 = var_59980149[0];
    if (!isdefined(var_a2b4a7d6)) {
        self unlink();
        return;
    }
    var_fe987b5c = isdefined(s_instance.var_fe987b5c) ? s_instance.var_fe987b5c : 1;
    n_start_health = self.health;
    var_1b8d5495 = int(n_start_health - self.maxhealth / var_fe987b5c);
    while (self.health > self.var_21567e64) {
        waitframe(1);
    }
    self flag::set("kill_hvt_teleporting");
    var_f5064815 notify(#"hash_61065e42888f1894");
    self val::set("hvt_teleport_ignoreall", "ignoreall", 1);
    self flag::set(#"hash_624e5d5dfb7f742b");
    self notify(#"hash_2ab0071e6f1bd0b1");
    self.keepclaimednode = 0;
    self.favoriteenemy = undefined;
    self.var_6324ed63 = undefined;
    self flag::clear("attack");
    switch (self.aitype) {
    case #"hash_3ff43755c44e6d3d":
        str_anim = "ai_zm_dlc3_armored_zombie_enrage";
        n_wait = 1.5;
        break;
    case #"hash_acac3fe7a341329":
        str_anim = "ai_t9_zm_steiner_base_com_summon_01";
        n_wait = 2.5;
        break;
    case #"hash_60d7855358ceb53d":
        str_anim = "ai_t9_zm_mechz_berserk_2";
        n_wait = 1.5;
        break;
    case #"hash_4a900af3fc47cdd5":
        str_anim = "ai_t9_zm_mimic_com_transform_prop_01";
        n_wait = 0.6;
        break;
    case #"hash_469e4baceeaf38f5":
        self thread animation::play("ai_t9_zm_abom_roar_in");
        wait(1.15);
        str_anim = "ai_t9_zm_abom_roar";
        n_wait = 3.8;
        break;
    }
    self thread animation::play(str_anim);
    wait(n_wait);
    self animation::stop(0.3, 1);
    self clientfield::set("" + #"hash_b74182bd1e44a44", 1);
    self thread function_8da8f6cf(s_instance);
    wait(2);
    self clientfield::set("" + #"hash_b74182bd1e44a44", 0);
    wait(0.25);
    self clientfield::increment("" + #"hash_435db79c304e12a5");
    wait(0.1);
    self function_7db7fcd5(s_instance);
    while (!isdefined(self.mdl_trail)) {
        self.mdl_trail = util::spawn_model("tag_origin", self.origin);
        waitframe(1);
    }
    self.mdl_trail playsound(#"hash_5be3120a37873d9e");
    self.mdl_trail playloopsound(#"hash_734cc0f685efb122");
    wait(0.1);
    var_6e468adf = isdefined(var_a2b4a7d6.contentgroups[#"spawn"]) ? var_a2b4a7d6.contentgroups[#"spawn"] : [];
    var_1e001170 = var_6e468adf[0];
    if (isdefined(self.mdl_trail)) {
        self linkto(self.mdl_trail, "tag_origin");
        wait(0.1);
        self ghost();
        self thread function_c90d3dcf();
        if (s_instance.targetname === #"hash_53c38761f0747098") {
            var_bd04a254 = struct::get(#"hash_1e37fef5eaabd6d1");
            var_9656bbdd = struct::get(var_bd04a254.target);
            if (isdefined(self.mdl_trail)) {
                self.mdl_trail clientfield::set("" + #"hash_6d05bbcab1912e5a", 1);
            }
            wait(2);
            if (isdefined(self.mdl_trail)) {
                if (self.var_6a4ec994 < 1) {
                    self.mdl_trail moveto(var_bd04a254.origin, 2);
                } else {
                    self.mdl_trail moveto(var_9656bbdd.origin, 2);
                }
                self.mdl_trail waittill(#"movedone");
            }
        }
        if (isdefined(self.mdl_trail)) {
            self.mdl_trail thread function_42fbf5d9(var_1e001170, s_instance, var_f5064815);
        }
        if (isdefined(self)) {
            self.n_max = function_b173d287();
        }
    }
    self waittill(#"teleported");
    function_3ef1d58a(s_instance, self.var_6a4ec994 + 1);
    self val::reset("hvt_teleport_ignoreall", "ignoreall");
    self flag::clear(#"hash_624e5d5dfb7f742b");
    self thread function_fc515700(var_1e001170, var_f5064815, var_a2b4a7d6, s_instance);
    self show();
    self flag::clear("kill_hvt_teleporting");
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x2 linked
// Checksum 0x53ec0e2f, Offset: 0x8470
// Size: 0x170
function function_7db7fcd5(*instance) {
    players = function_a1ef346b(undefined, self.origin, 300);
    foreach (player in players) {
        targetorigin = (player.origin[0], player.origin[1], self.origin[2]);
        var_a6470558 = vectornormalize(targetorigin - self.origin);
        player function_bc82f900("damage_heavy");
        player playerknockback(1);
        player applyknockback(100, var_a6470558);
        player playerknockback(0);
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0x40432fe3, Offset: 0x85e8
// Size: 0x4c
function function_c90d3dcf() {
    self endon(#"death", #"teleported");
    self waittill(#"teleported");
    self show();
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 3, eflags: 0x2 linked
// Checksum 0x8cf5c9e3, Offset: 0x8640
// Size: 0x534
function function_42fbf5d9(s_dest, s_instance, var_f5064815) {
    level.var_1f73a372 endon(#"death");
    self clientfield::set("" + #"hash_6d05bbcab1912e5a", 1);
    wait(1);
    if (isdefined(self)) {
        n_dist = distance(self.origin, s_dest.origin);
        n_time = n_dist / 1000;
        var_7fd007f9 = distance2d(self.origin, s_dest.origin) * 0.5;
        n_inc = int(n_dist);
        self movez(100, 2);
        self waittill(#"movedone");
    }
    if (isdefined(self)) {
        self playsound(#"hash_292cc4273f4c0161");
    }
    level thread util::delay(0.5, "end_game", &zm_vo::function_7622cb70, "objectiveKillHVTMoves");
    while (true) {
        if (isdefined(self)) {
            var_ed0c1ff8 = distance2d(self.origin, s_dest.origin);
            if (var_ed0c1ff8 <= 100) {
                break;
            }
            v_dest = s_dest.origin + (0, 0, n_inc);
            n_inc -= 50;
            if (v_dest[2] <= s_dest.origin[2]) {
                break;
            }
            self moveto(v_dest, n_time);
        }
        waitframe(1);
    }
    if (isdefined(self)) {
        n_dist = distance(self.origin, s_dest.origin);
        n_time = n_dist / 1000;
        self moveto(s_dest.origin + (0, 0, 40), n_time);
        self waittill(#"movedone");
    }
    if (isdefined(self)) {
        self playsound(#"hash_2758a7e5c0fac58b");
        self stoploopsound();
    }
    var_e79dabce = isdefined(s_dest.contentgroups[#"hash_61bf7f7a2c84e479"]) ? s_dest.contentgroups[#"hash_61bf7f7a2c84e479"] : [];
    level thread function_dd27cb14(var_f5064815, s_instance, var_e79dabce);
    level.var_1f73a372 clientfield::set("" + #"hash_3049a409503be8a0", 1);
    wait(0.5);
    level.var_1f73a372 unlink();
    wait(0.1);
    level.var_1f73a372 forceteleport(s_dest.origin, s_dest.angles);
    level.var_1f73a372 clientfield::set("" + #"hash_3049a409503be8a0", 0);
    util::wait_network_frame();
    level.var_1f73a372.var_6a4ec994++;
    if (isdefined(self)) {
        self thread function_313a13db();
    }
    if (level.var_1f73a372.var_6a4ec994 === 1) {
        level.var_1f73a372.var_21567e64 = level.var_1f73a372.var_39b7cd9c;
    } else {
        level.var_1f73a372.var_21567e64 = undefined;
    }
    level.var_1f73a372 notify(#"teleported");
    level.var_1f73a372 thread function_fe2c378a(s_instance);
    wait(2.5);
    level.var_1f73a372 thread function_314cd1eb();
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0x21b0775b, Offset: 0x8b80
// Size: 0x2c
function function_313a13db() {
    wait(4);
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x4
// Checksum 0xf8013e7, Offset: 0x8bb8
// Size: 0x34
function private function_ba70a728(*notifyhash) {
    if (isdefined(self.var_bcf2b2b9)) {
        self.var_bcf2b2b9 delete();
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x6 linked
// Checksum 0x990fc720, Offset: 0x8bf8
// Size: 0x228
function private function_e13574ed(var_f5064815) {
    self endon(#"death");
    var_f5064815 endon(#"hash_733ab6814f36e8ee");
    var_1b8d5495 = self.health - 50;
    while (true) {
        if (self.health <= var_1b8d5495) {
            break;
        }
        var_bfb8f3ce = 0;
        foreach (e_player in function_a1ef346b(undefined, self.origin, 1024)) {
            if (!e_player laststand::player_is_in_laststand() && abs(self.origin[2] - e_player.origin[2]) <= 32 && self math::get_dot_forward(e_player.origin) > 0.25 && bullettracepassed(self util::get_eye(), e_player.origin, 0, self)) {
                var_bfb8f3ce = 1;
                break;
            }
        }
        if (var_bfb8f3ce) {
            break;
        }
        wait(1);
    }
    var_f5064815 flag::set("hvt_attack");
    var_f5064815 notify(#"hash_733ab6814f36e8ee");
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0x94e3dd11, Offset: 0x8e28
// Size: 0x14c
function function_a1829ee4() {
    v_origin = self getcentroid();
    v_upper = v_origin + (0, 0, 30);
    foreach (player in getplayers()) {
        if (player util::is_player_looking_at(v_origin, 0.6, 1, self) || player util::is_player_looking_at(v_upper, 0.6, 1, self) || player util::is_player_looking_at(self.origin, 0.6, 1, self)) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 2, eflags: 0x2 linked
// Checksum 0x910008fb, Offset: 0x8f80
// Size: 0x1f8
function function_667a319b(s_instance, *b_play_vo) {
    b_play_vo endon(#"hash_6e9f32e31f8d1c6f");
    self endon(#"death");
    while (true) {
        v_origin = self getcentroid();
        v_upper = v_origin + (0, 0, 30);
        foreach (player in getplayers()) {
            if (isalive(player) && isdefined(v_origin) && isdefined(v_upper)) {
                if (player util::is_player_looking_at(v_origin, 0.6, 1, self) || player util::is_player_looking_at(v_upper, 0.6, 1, self) || player util::is_player_looking_at(self.origin, 0.6, 1, self)) {
                    level namespace_7589cf5c::play_vo("objectiveKillHVTSpotted");
                    wait(0.5);
                    b_play_vo notify(#"hash_6e9f32e31f8d1c6f");
                    return;
                }
            }
        }
        wait(1);
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x6 linked
// Checksum 0x819fe35c, Offset: 0x9180
// Size: 0x90
function private function_83c20994(var_31891b5a) {
    self endon(#"death");
    var_31891b5a endon(#"hash_733ab6814f36e8ee");
    while (true) {
        s_waitresult = self waittill(#"damage");
        if (isplayer(s_waitresult.attacker)) {
            var_31891b5a notify(#"hash_733ab6814f36e8ee");
            break;
        }
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x6 linked
// Checksum 0x2e6cbe85, Offset: 0x9218
// Size: 0xbc
function private function_4cf80702() {
    if (self.current_state.name == #"chase") {
        if (self.archetype == #"zombie") {
            if (level.var_b48509f9 > 4) {
                self namespace_85745671::function_9758722("super_sprint");
            } else {
                self namespace_85745671::function_9758722("sprint");
            }
        }
        if (isdefined(self.var_f5064815)) {
            self.var_f5064815 flag::set("hvt_attack");
        }
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x6 linked
// Checksum 0xdcac0591, Offset: 0x92e0
// Size: 0xdc
function private function_b42b5f72() {
    if (self.current_state.name == #"chase") {
        if (self.archetype == #"zombie") {
            var_481bf1b8 = isdefined(level.var_b48509f9) ? level.var_b48509f9 : 1;
            if (var_481bf1b8 > 1 && level.var_b48509f9 > 4) {
                self namespace_85745671::function_9758722("super_sprint");
                return;
            }
            if (var_481bf1b8 > 1) {
                self namespace_85745671::function_9758722("sprint");
            }
        }
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x6 linked
// Checksum 0x5fe98b5b, Offset: 0x93c8
// Size: 0x26e
function private function_bb9468f8(var_c79f5f0) {
    self endon(#"hash_733ab6814f36e8ee");
    foreach (s_trigger in var_c79f5f0) {
        s_trigger.radius = float(s_trigger.radius);
        s_trigger.trigger_height = float(isdefined(s_trigger.trigger_height) ? s_trigger.trigger_height : 1024);
    }
    while (true) {
        foreach (s_trigger in var_c79f5f0) {
            a_e_players = function_a1ef346b(undefined, s_trigger.origin, s_trigger.radius);
            if (isdefined(a_e_players) && a_e_players.size > 0) {
                foreach (e_player in a_e_players) {
                    if (!e_player laststand::player_is_in_laststand() && abs(s_trigger.origin[2] - e_player.origin[2]) <= s_trigger.trigger_height) {
                        return;
                    }
                }
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 2, eflags: 0x6 linked
// Checksum 0x7ccdcca0, Offset: 0x9640
// Size: 0x42
function private function_41f7333b(var_82706add, v_angles = self.angles) {
    return spawn_ai(var_82706add, self.origin, v_angles);
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 4, eflags: 0x6 linked
// Checksum 0xae7835e, Offset: 0x9690
// Size: 0x252
function private spawn_ai(var_82706add, v_origin = (0, 0, 0), v_angles = (0, 0, 0), var_94d02b5b = 0) {
    str_targetname = "kill_hvt_ai";
    if (var_94d02b5b) {
        str_targetname = "kill_hvt_hvt";
    }
    while (true) {
        var_7ecdee63 = get_spawner(var_82706add);
        if (namespace_7589cf5c::function_82e262cf(var_7ecdee63)) {
            if (isdefined(level.contentmanager.activeobjective.var_38c710c3)) {
                n_cooldown = namespace_7589cf5c::function_190c51a9();
                var_be32c966 = float(gettime()) / 1000 - level.contentmanager.activeobjective.var_38c710c3;
                if (var_be32c966 < n_cooldown) {
                    var_7ecdee63 = namespace_7589cf5c::function_b9e4c169();
                } else {
                    level.contentmanager.activeobjective.var_38c710c3 = undefined;
                }
            }
            if (isdefined(level.contentmanager.activeobjective)) {
                if (level.contentmanager.activeobjective.var_2133c784 >= level.contentmanager.activeobjective.var_61c57c53 || level.contentmanager.activeobjective.var_b803db9c >= level.contentmanager.activeobjective.var_5de17ec9) {
                    var_7ecdee63 = namespace_7589cf5c::function_b9e4c169();
                }
            }
        }
        ai = namespace_85745671::function_9d3ad056(var_7ecdee63, v_origin, v_angles, str_targetname);
        if (isdefined(ai)) {
            ai.var_a950813d = 1;
            return ai;
        }
        waitframe(1);
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 2, eflags: 0x6 linked
// Checksum 0x3cd8e806, Offset: 0x98f0
// Size: 0x23e
function private hvt_waypoint_think(s_instance, var_f5064815) {
    str_objective = #"hash_71990cf3c3ecf6a1";
    if (isdefined(s_instance.var_9fcaacff)) {
        switch (s_instance.var_9fcaacff) {
        case 1:
            str_objective = #"hash_719909f3c3ecf188";
            break;
        case 2:
            str_objective = #"hash_71990af3c3ecf33b";
            break;
        case 3:
            str_objective = #"hash_71990ff3c3ecfbba";
            break;
        case 4:
            str_objective = #"hash_719910f3c3ecfd6d";
            break;
        case 5:
            str_objective = #"hash_71990df3c3ecf854";
            break;
        }
        s_instance.var_9fcaacff++;
    }
    if (self.archetype == #"zombie_dog") {
        wait(1.6);
    }
    if (isdefined(self)) {
        n_objective_id = zm_utility::function_f5a222a8(str_objective, self);
        objective_setprogress(n_objective_id, 1);
        if (isdefined(var_f5064815)) {
            var_f5064815.n_objective_id = n_objective_id;
        }
        n_start_health = self.health;
        while (isdefined(self) && self.health > 0) {
            n_percent = self.health / n_start_health;
            objective_setprogress(n_objective_id, n_percent);
            waitframe(1);
        }
        zm_utility::function_bc5a54a8(n_objective_id);
        if (isdefined(var_f5064815)) {
            var_f5064815.n_objective_id = undefined;
        }
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 3, eflags: 0x6 linked
// Checksum 0x687919b8, Offset: 0x9b38
// Size: 0xab4
function private function_a96eb06b(var_f5064815, var_6cd7585c, s_instance) {
    s_instance endon(#"complete");
    self endon(#"death", #"hash_459d7d9161613634");
    var_b35d8ad0 = float(isdefined(var_6cd7585c.var_2fd49ac3) ? var_6cd7585c.var_2fd49ac3 : 1);
    if (var_b35d8ad0 < 1) {
        n_roll = randomfloat(1);
        if (n_roll > var_b35d8ad0) {
            return;
        }
    }
    if (var_6cd7585c.ai_type != "hellhound") {
        wait(2);
    }
    if (var_6cd7585c.ai_type == "raz") {
        if (level.var_b48509f9 <= 1) {
            return;
        }
        function_1eaaceab(s_instance.a_ai_raz);
        if (s_instance.a_ai_raz.size >= 2) {
            return;
        }
        n_time = float(gettime()) / 1000;
        if (!isdefined(s_instance.var_bd3fb0dd) || n_time - s_instance.var_bd3fb0dd >= 120) {
            s_instance.var_bd3fb0dd = n_time;
        } else {
            return;
        }
    }
    n_players = function_a1ef346b().size;
    if (n_players <= 2) {
        var_428f5c67 = 3;
        if (level.var_b48509f9 <= 1 && var_6cd7585c.ai_type == "hellhound") {
            var_428f5c67--;
        }
        if (var_6cd7585c.ai_type == "avogadro") {
            var_428f5c67 = 1;
        }
    } else if (n_players <= 4) {
        var_428f5c67 = 4;
        if (var_6cd7585c.ai_type == "avogadro") {
            var_428f5c67 = 1;
        }
    } else {
        var_428f5c67 = 5;
        if (var_6cd7585c.ai_type == "avogadro") {
            var_428f5c67 = 2;
        }
    }
    if (var_6cd7585c.ai_type === "raz") {
        var_428f5c67 = 1;
        if (n_players >= 3) {
            var_428f5c67 = 2;
        }
    }
    var_719f528b = 256;
    if (var_6cd7585c.ai_type == "hellhound" || var_6cd7585c.ai_type == "avogadro") {
        var_719f528b += 128;
    }
    self.var_6c2313dc = [];
    for (i = 0; i < 3; i++) {
        var_49471b11 = 0;
        while (!var_49471b11) {
            function_1eaaceab(self.var_6c2313dc);
            for (var_25398dbe = var_428f5c67; var_25398dbe > 0; var_25398dbe--) {
                if (self.var_6c2313dc.size + var_25398dbe <= var_428f5c67) {
                    break;
                }
            }
            if (isdefined(var_f5064815.var_1f73a372) && isalive(var_f5064815.var_1f73a372) && var_25398dbe > 0) {
                if (!function_c9a44b0b(var_f5064815.var_1f73a372.origin)) {
                    v_origin = var_f5064815.var_1f73a372.origin;
                    v_angles = var_f5064815.var_1f73a372.angles;
                    e_closest = awareness::function_d7fedde2(var_f5064815.var_1f73a372);
                    if (isdefined(e_closest)) {
                        v_facing = vectortoangles(e_closest.origin - v_origin);
                        v_right = anglestoright(v_facing);
                        v_dir = anglestoforward(v_facing);
                    } else {
                        v_right = anglestoright(v_angles);
                        v_dir = anglestoforward(v_angles);
                        v_facing = v_dir;
                    }
                    v_center = checknavmeshdirection(v_origin, vectornormalize(v_dir), var_719f528b);
                    var_7168e01b = function_c9a44b0b(v_center);
                    if (!var_7168e01b) {
                        b_right = 1;
                        var_3a0b4224 = 1;
                        var_16379b1d = 1;
                        var_2eb61c8a = array(v_center);
                        for (j = 0; j < var_25398dbe - 1; j++) {
                            if (var_3a0b4224 >= 3) {
                                var_719f528b += 128;
                                var_3a0b4224 = 0;
                                v_center = checknavmeshdirection(v_origin, vectornormalize(v_dir), var_719f528b);
                                var_7168e01b = function_c9a44b0b(v_center);
                                if (var_7168e01b) {
                                    break;
                                }
                            }
                            if (var_3a0b4224 == 0) {
                                v_spawn = v_center;
                            } else {
                                var_4027630a = v_right;
                                if (!b_right) {
                                    var_4027630a *= -1;
                                }
                                v_spawn = checknavmeshdirection(v_center, vectornormalize(var_4027630a), 128 * var_16379b1d);
                                b_right = !b_right;
                            }
                            var_7168e01b = function_c9a44b0b(v_spawn);
                            if (var_7168e01b) {
                                break;
                            }
                            var_3a0b4224++;
                            if (!isdefined(var_2eb61c8a)) {
                                var_2eb61c8a = [];
                            } else if (!isarray(var_2eb61c8a)) {
                                var_2eb61c8a = array(var_2eb61c8a);
                            }
                            var_2eb61c8a[var_2eb61c8a.size] = v_spawn;
                        }
                        if (!var_7168e01b) {
                            foreach (v_spawn in var_2eb61c8a) {
                                level flag::wait_till("spawn_zombies");
                                if (var_6cd7585c.ai_type === "zombie_random" || var_6cd7585c.ai_type === "zombie") {
                                    var_6cd7585c.ai_type = function_a45cb92c(s_instance);
                                }
                                var_a491491c = spawn_ai(var_6cd7585c.ai_type, v_spawn, v_facing);
                                if (!isdefined(s_instance.a_ai_spawned)) {
                                    s_instance.a_ai_spawned = [];
                                } else if (!isarray(s_instance.a_ai_spawned)) {
                                    s_instance.a_ai_spawned = array(s_instance.a_ai_spawned);
                                }
                                s_instance.a_ai_spawned[s_instance.a_ai_spawned.size] = var_a491491c;
                                if (!isdefined(self.var_6c2313dc)) {
                                    self.var_6c2313dc = [];
                                } else if (!isarray(self.var_6c2313dc)) {
                                    self.var_6c2313dc = array(self.var_6c2313dc);
                                }
                                self.var_6c2313dc[self.var_6c2313dc.size] = var_a491491c;
                                if (var_6cd7585c.ai_type == "raz") {
                                    if (!isdefined(s_instance.a_ai_raz)) {
                                        s_instance.a_ai_raz = [];
                                    } else if (!isarray(s_instance.a_ai_raz)) {
                                        s_instance.a_ai_raz = array(s_instance.a_ai_raz);
                                    }
                                    s_instance.a_ai_raz[s_instance.a_ai_raz.size] = var_a491491c;
                                }
                                if (is_true(var_6cd7585c.var_9d2375f4)) {
                                    var_a491491c thread function_a810bd2f();
                                }
                                if (j + 1 < var_25398dbe) {
                                    util::wait_network_frame();
                                }
                            }
                            var_49471b11 = 1;
                            if (var_6cd7585c.ai_type == "raz") {
                                return;
                            }
                        }
                    }
                }
            }
            if (!var_49471b11) {
                waitframe(1);
            }
        }
        wait(randomfloatrange(45, 60));
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x6 linked
// Checksum 0xcafbe32f, Offset: 0xa5f8
// Size: 0xf2
function private function_c9a44b0b(v_point) {
    foreach (e_player in function_a1ef346b()) {
        if (!e_player laststand::player_is_in_laststand()) {
            var_91d1913b = distancesquared(v_point, e_player.origin);
            if (var_91d1913b < sqr(256)) {
                return true;
            }
        }
    }
    return false;
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x6 linked
// Checksum 0xa65e55ce, Offset: 0xa6f8
// Size: 0x114
function private function_a810bd2f() {
    self endon(#"death", #"hash_2ab0071e6f1bd0b1");
    self callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_fd68cae4);
    player = awareness::function_d7fedde2(self);
    awareness::function_e732359c(1, self.origin, 512, self, {#position:player.origin});
    while (true) {
        player = awareness::function_d7fedde2(self);
        if (isdefined(player)) {
            awareness::function_c241ef9a(self, player, 11);
            wait(10);
        }
        waitframe(1);
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x6 linked
// Checksum 0x35de97e5, Offset: 0xa818
// Size: 0x252
function private get_spawner(var_82706add = "") {
    switch (var_82706add) {
    default:
        return #"hash_7cba8a05511ceedf";
    case #"spawner_bo5_mimic":
        return #"spawner_bo5_mimic";
    case #"hash_338eb4103e0ed797":
    case #"hash_7d0b1229ae633c6c":
        return #"hash_338eb4103e0ed797";
    case #"hash_46c917a1b5ed91e7":
    case #"hash_7d0b1329ae633e1f":
        return #"hash_46c917a1b5ed91e7";
    case #"spawner_bo5_avogadro_sr":
    case #"avogadro":
        return #"spawner_bo5_avogadro_sr";
    case #"mechz":
    case #"hash_60d7855358ceb53d":
        return #"hash_60d7855358ceb53d";
    case #"hash_469e4baceeaf38f5":
    case #"abom":
        return #"hash_469e4baceeaf38f5";
    case #"mimic":
    case #"hash_4a900af3fc47cdd5":
        return #"hash_4a900af3fc47cdd5";
    case #"steiner":
    case #"hash_acac3fe7a341329":
        return #"hash_acac3fe7a341329";
    case #"hash_12a17ab3df5889eb":
    case #"hash_2f039c4706f6f243":
        return #"hash_12a17ab3df5889eb";
    case #"hellhound":
    case #"hash_7a8b592728eec95d":
        return #"hash_7a8b592728eec95d";
    case #"raz":
    case #"hash_3ff43755c44e6d3d":
        return #"hash_3ff43755c44e6d3d";
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x6 linked
// Checksum 0xdae3fa4, Offset: 0xaa78
// Size: 0x184
function private function_8da8f6cf(s_instance) {
    n_time = float(gettime()) / 1000;
    if (!isdefined(s_instance.var_1bb7b5d7) || n_time - s_instance.var_1bb7b5d7 >= 3) {
        s_instance.var_1bb7b5d7 = n_time;
        switch (self.archetype) {
        case #"mimic":
        case #"zombie":
        case #"abom":
            n_cf = 1;
            break;
        case #"hash_7c0d83ac1e845ac2":
            n_cf = 2;
            break;
        case #"raz":
            n_cf = 3;
            break;
        case #"mechz":
            n_cf = 4;
            break;
        default:
            /#
                iprintlnbold("objectiveKillHVTSpottedResponse");
            #/
            return;
        }
        self clientfield::increment("" + #"hash_74382f598f4de051");
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x6 linked
// Checksum 0xa0b5059a, Offset: 0xac08
// Size: 0x5c
function private function_d38842d3() {
    self endon(#"death");
    self.allowdeath = 1;
    self.var_98f1f37c = 1;
    self kill(self.origin, undefined, undefined, undefined, undefined, 1);
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x4
// Checksum 0x7c00d172, Offset: 0xac70
// Size: 0x2b0
function private function_3eef9ba0(s_instance) {
    s_instance endon(#"complete");
    if (isdefined(self.delay)) {
        self.delay = float(self.delay);
        if (self.delay > 0) {
            wait(self.delay);
        }
    }
    self.radius = float(isdefined(self.radius) ? self.radius : 128);
    var_809de660 = struct::get_array("survival_door");
    var_809de660 = arraysortclosest(var_809de660, self.origin, undefined, 0, self.radius);
    foreach (var_e4ce698a in var_809de660) {
        mdl_door = var_e4ce698a.door;
        if (isdefined(mdl_door)) {
            mdl_door.damage_level = 100;
        }
    }
    foreach (dyn in function_c3d68575(self.origin, (self.radius, self.radius, self.radius))) {
        bundle = function_489009c1(dyn);
        if (isdefined(bundle.destroyed) && isdefined(dyn.health)) {
            dyn dodamage(dyn.health, dyn.origin, undefined, undefined, "none", "MOD_EXPLOSIVE");
            continue;
        }
        function_e2a06860(dyn, bundle.dynentstates.size - 1);
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x2 linked
// Checksum 0x8bba342c, Offset: 0xaf28
// Size: 0x60
function function_c36cb7b1(*params) {
    if (isdefined(level.contentmanager.activeobjective) && level.contentmanager.activeobjective.var_b803db9c) {
        level.contentmanager.activeobjective.var_b803db9c--;
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x2 linked
// Checksum 0x931dca0b, Offset: 0xaf90
// Size: 0x38
function function_b3791df9(*instance) {
    if (isalive(level.var_1f73a372)) {
        level.var_1f73a372.n_active--;
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 2, eflags: 0x2 linked
// Checksum 0xe2eb0d21, Offset: 0xafd0
// Size: 0x368
function function_3ef1d58a(instance, n_path) {
    switch (instance.targetname) {
    case #"hash_53c38761f0747098":
    case #"hash_33567c8dc77f1623":
    case #"hash_111a164b5f86163b":
    case #"hash_160725b3d1aff6c6":
    case #"hash_24ee01bcb3064173":
    case #"hash_2811a68da988f058":
        var_cdce8e6f = instance.contentgroups[#"hash_4eb8a42b7c1e2150" + n_path][0];
        break;
    case #"hash_3caea328a59d3e04":
    case #"hash_468f3aef91e9cecd":
    case #"hash_415a0b41b0435853":
    case #"objective_golova_hunt_steiner":
    case #"hash_3aa0078a45343bfc":
    case #"hash_5a481126c9087f93":
        var_cdce8e6f = instance.contentgroups[#"hash_5e2a8afd063b9a25" + n_path][0];
        break;
    case #"hash_422e208016d74abb":
    case #"hash_b37aeceb477c956":
    case #"hash_5b4c172e68ae8398":
    case #"hash_5fdbee4d2729dc6b":
    case #"hash_239f8e492b2af053":
    case #"hash_2ea54cb6e0a0f58":
        var_cdce8e6f = instance.contentgroups[#"hash_2ae7f97350a2368" + n_path][0];
        break;
    case #"hash_d3a3a93696e49e8":
    case #"hash_1b4997b2757a412f":
    case #"hash_34d778306ec822a8":
    case #"hash_5347a9e07c70dd5f":
    case #"hash_211c847966b3ad24":
    case #"hash_407ade2f2efb0372":
    case #"hash_7556642284be450a":
    case #"hash_7d80d72651760847":
        var_cdce8e6f = instance.contentgroups[#"hash_4ddc22d85b89603c" + n_path][0];
        break;
    case #"hash_33b53ec824b2012":
    case #"hash_45eb6af5bd62dcfc":
    case #"hash_4f141d7edbbe610d":
    case #"hash_2f6aaf6aac35831a":
    case #"hash_599fbd43d8c893bd":
    case #"hash_297222a82fa301e5":
    case #"hash_378d043a02755c88":
    case #"hash_624dccee849f6fc8":
        var_cdce8e6f = instance.contentgroups[#"hash_718994da535d9b0a" + n_path][0];
        break;
    }
    if (isdefined(var_cdce8e6f.script_noteworthy)) {
        instance flag::set(#"hash_12988a5a3e6a65d6");
        level.var_97e461d4 = var_cdce8e6f.script_noteworthy;
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 1, eflags: 0x2 linked
// Checksum 0x29a75670, Offset: 0xb340
// Size: 0xea
function clear_vehicles(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    var_453e0a89 = getvehiclearray();
    var_453e0a89 = array::get_all_closest(self.origin, var_453e0a89);
    for (i = 0; i < var_453e0a89.size; i++) {
        if (distance2dsquared(self.origin, var_453e0a89[i].origin) <= 250000) {
            var_453e0a89[i] thread function_81d3631c();
            waitframe(1);
        }
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 0, eflags: 0x2 linked
// Checksum 0xb63c6ba9, Offset: 0xb438
// Size: 0x1a4
function function_81d3631c() {
    self endon(#"death");
    self playrumbleonentity("sr_transmitter_clear");
    self makevehicleunusable();
    a_occupants = self getvehoccupants();
    foreach (occupant in a_occupants) {
        if (isdefined(occupant)) {
            occupant unlink();
        }
    }
    if (isdefined(self)) {
        self clientfield::increment("" + #"vehicle_teleport");
        wait(1.9);
        if (isdefined(self.v_org)) {
            self.origin = self.v_org;
            if (isdefined(self.v_ang)) {
                self.angles = self.v_ang;
            }
            waitframe(1);
            if (isdefined(self)) {
                self makevehicleusable();
            }
            return;
        }
        self delete();
    }
}

