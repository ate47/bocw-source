// Atian COD Tools GSC CW decompiler test
#using script_2cb831533cab2794;
#using script_113dd7f0ea2a1d4f;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using script_72401f526ba71638;
#using script_5f261a5d57de5f7c;
#using script_4163291d6e693552;
#using script_12538a87a80a2978;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using script_3411bb48d41bd3b;
#using script_3357acf79ce92f4b;
#using scripts\zm_common\objective_manager.gsc;
#using script_27347f09888ad15;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace objective_retrieval;

// Namespace objective_retrieval/level_init
// Params 1, eflags: 0x20
// Checksum 0xbfc96ef, Offset: 0x8e0
// Size: 0x20c
function event_handler[level_init] main(*eventstruct) {
    clientfield::register("toplayer", "" + #"hash_502dbbefce1f656c", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_25f023cad32eccf0", 1, 1, "counter");
    clientfield::register("scriptmover", "" + #"hash_29bff1aafecc8591", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_7e6957dfc36e2214", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_5bc7fe725b36bd67", 1, 1, "int");
    objective_manager::register_script(#"retrieval", &init, &function_44ae8976, #"retrieval", #"hash_449cd1c65196f3a8", #"hash_70343e0c02c9f7b9", 7, #"hash_ed63c368c1fca8f");
    callback::on_laststand(&function_f1ae312a);
    callback::on_disconnect(&function_a93074b0);
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x4ad5be1f, Offset: 0xaf8
// Size: 0x5cc
function init(instance) {
    instance.var_53ba65b = [];
    instance.a_models = [];
    foreach (s_instance in instance.contentgroups[#"retrieval"]) {
        s_instance.s_start = s_instance.contentgroups[#"hash_55beda67733e86c0"][0];
        s_instance.var_5ea363c = content_manager::spawn_script_model(s_instance, #"hash_572ef2c74e1d80ef");
        s_instance.var_5ea363c.var_809a5ab9[0] = s_instance.contentgroups[#"component_a"];
        s_instance.var_5ea363c.var_809a5ab9[1] = s_instance.contentgroups[#"hash_43131190cc1b7b5d"];
        if (isdefined(s_instance.contentgroups[#"hash_7e2234980528a279"])) {
            s_instance.var_1ac40948 = content_manager::spawn_script_model(s_instance.contentgroups[#"hash_7e2234980528a279"][0], #"hash_2dc80625b5b6627a", 1);
        }
        if (isdefined(s_instance.contentgroups[#"pump"])) {
            s_instance.var_5ea363c.var_7be19157 = content_manager::spawn_script_model(s_instance.contentgroups[#"pump"][0], #"tag_origin", 1);
        }
        for (i = 0; i < 2; i++) {
            var_9ed85498 = array::random(s_instance.var_5ea363c.var_809a5ab9[i]);
            var_57e77903 = util::spawn_model(#"hash_18fe97c27ac7bf5b", var_9ed85498.origin + (0, 0, 32.1), var_9ed85498.angles + (0, -90, 0));
            var_57e77903.targetname = "retrieval_component";
            var_57e77903.n_id = i;
            var_57e77903.n_index = var_9ed85498.script_int;
            instance.var_53ba65b[i] = var_57e77903;
            instance.a_models[instance.a_models.size] = var_57e77903;
            var_57e77903.var_e16d0db5 = content_manager::spawn_script_model(var_9ed85498, #"hash_35f0729ec291b85b", 1);
            var_57e77903.var_e16d0db5.targetname = "retrieval_case";
            var_57e77903 thread function_6acbc957(instance);
        }
    }
    instance.var_1ac40948 = s_instance.var_1ac40948;
    instance.mdl_reward = s_instance.contentgroups[#"hash_41ae283ea203de66"][0];
    instance.var_5ea363c = s_instance.var_5ea363c;
    instance.var_734a26a4 = s_instance.contentgroups[#"hash_28b58e644a932211"][0];
    instance.var_9a67455 = s_instance.contentgroups[#"hash_99db954262ad107"];
    instance.var_b69e83ca = s_instance.contentgroups[#"hash_3a45264baef61335"];
    instance.var_ba44fadd = s_instance.contentgroups[#"hash_78b9734c21337ad9"];
    instance.a_s_pts = arraycombine(instance.var_9a67455, instance.var_b69e83ca);
    instance.var_559503f1 = arraycombine(instance.a_s_pts, instance.var_ba44fadd);
    instance thread function_eae9567f();
    instance thread function_f5087df2();
    instance thread namespace_7589cf5c::vo_start("objectiveRetrievalAnnounce", "objectiveRetrievalAnnounceResponse");
    instance thread function_5b1da81a();
    instance.var_1ac40948.targetname = "retrieval_truck";
    instance.var_5ea363c.var_5542906 = 0;
    instance.n_zombies = 0;
    if (instance.targetname === "objective_black_sea_retrieval") {
        instance.a_vols = getentarray("vol_ship", "targetname");
    }
    level.var_acd0f67e = 5;
    if (instance.variant === "retrieval_alt") {
        showmiscmodels("retrieval_corpses_2");
        return;
    }
    showmiscmodels("retrieval_corpses");
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0x86a14465, Offset: 0x10d0
// Size: 0x1d4
function function_5b1da81a() {
    self endon(#"objective_ended");
    var_35dfb407 = 0;
    while (!var_35dfb407) {
        a_players = getplayers();
        foreach (player in a_players) {
            if (distance2dsquared(player.origin, self.var_1ac40948.origin) <= 1000000) {
                if (player util::is_looking_at(self.var_1ac40948, 0.7, 0) || player util::is_looking_at(self.origin, 0.7, 1) || distance2dsquared(player.origin, self.var_1ac40948.origin) <= 250000) {
                    var_35dfb407 = 1;
                    break;
                }
            }
        }
        wait(0.5);
    }
    level namespace_7589cf5c::play_vo("objectiveRetrievalApproach");
    wait(0.5);
    level namespace_7589cf5c::play_vo("objectiveRetrievalApproachResponse");
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0xa236be4, Offset: 0x12b0
// Size: 0x6a
function function_17f1d0f3() {
    self.var_5e36739b = self namespace_7589cf5c::function_df911075();
    self.var_61c57c53 = self namespace_7589cf5c::function_1b53cdc7();
    self.var_5de17ec9 = self namespace_7589cf5c::function_56fa33d9();
    self.var_2133c784 = 0;
    self.var_b803db9c = 0;
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0xeba09567, Offset: 0x1328
// Size: 0x8c
function function_8d7bef8f() {
    self endon(#"objective_ended");
    wait(1);
    level namespace_7589cf5c::play_vo("objectiveRetrievalStart");
    wait(1);
    level namespace_7589cf5c::play_vo("objectiveRetrievalStartResponse");
    self waittill(#"done");
    self thread vo_end();
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0x6425546, Offset: 0x13c0
// Size: 0x18c
function vo_end() {
    level namespace_7589cf5c::play_vo("objectiveRetrievalEndSequence1");
    wait(0.5);
    level namespace_7589cf5c::play_vo("objectiveRetrievalEndSequence2");
    wait(0.5);
    self notify(#"takeoff");
    level namespace_7589cf5c::play_vo("objectiveRetrievalEndSequence3");
    wait(0.5);
    self flag::set(#"hash_e505e484cb8f99e");
    level namespace_7589cf5c::play_vo("objectiveRetrievalEndSequence4");
    wait(0.25);
    level namespace_7589cf5c::play_vo("objectiveRetrievalEndSequence5");
    wait(0.25);
    level namespace_7589cf5c::play_vo("objectiveRetrievalEndSequence6");
    wait(4.5);
    level namespace_7589cf5c::play_vo("objectiveRetrievalEndSequence7");
    wait(1);
    level thread namespace_7589cf5c::play_vo("objectiveRetrievalEndSequence8");
    level flag::set(#"hash_1460b3afd614fb6c");
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xd536ce5c, Offset: 0x1558
// Size: 0x174
function function_6cbbd741(instance) {
    instance endon(#"objective_ended");
    self endon(#"ready", #"death");
    while (true) {
        foreach (player in getplayers()) {
            if (isalive(player)) {
                if (distance2dsquared(self.origin, player.origin) <= sqr(1000) && !isdefined(player.var_b1f1cfee)) {
                    player.var_b1f1cfee = 1;
                    player thread zm_vo::function_7622cb70("objectiveRetrievalCanisterApproach", 0, 1);
                }
            }
        }
        wait(1);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xf786d7f4, Offset: 0x16d8
// Size: 0x7c
function function_ac6bb77d(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    self zm_vo::function_7622cb70("objectiveRetrievalCanisterCollected", 0, 1);
    wait(1);
    self zm_vo::function_7622cb70("objectiveRetrievalCanisterCollectedResponse", 0, 1);
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xbbc4eb84, Offset: 0x1760
// Size: 0xd4
function function_94e78240(*params) {
    if (isdefined(self) && level.zm_hint_text zm_hint_text::is_open(self)) {
        level.zm_hint_text zm_hint_text::close(self);
    }
    self namespace_1b527536::function_460882e2(0);
    if (isdefined(self.var_67aa3392)) {
        self.var_67aa3392.var_5b5d9768 = 0;
        self.var_67aa3392 clientfield::increment("" + #"hash_25f023cad32eccf0");
    }
    self function_62801b2f();
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0x345f626, Offset: 0x1840
// Size: 0x64
function function_1a58f438() {
    if (isdefined(self) && level.zm_hint_text zm_hint_text::is_open(self)) {
        level.zm_hint_text zm_hint_text::close(self);
    }
    self thread namespace_1b527536::function_69303ed3();
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x41be73e9, Offset: 0x18b0
// Size: 0x26c
function function_4be8796(instance) {
    instance endon(#"objective_ended");
    self endon(#"disconnect", #"player_downed", #"hash_6d2d12b8afe43c8e");
    str_icon = #"hash_1a2e7166e36c7ed1";
    str_weapon = #"hash_60cb3fd3716d711e";
    str_item = #"field_upgrade_canister_item_sr";
    if (self flag::get(#"hash_35735a804a34da04")) {
        str_icon = #"hash_1b717e8bd63143d8";
        str_weapon = #"hash_52e8029a24a2d7e5";
        str_item = #"field_upgrade_bunny_item_sr";
    }
    if (isdefined(self.var_67aa3392) && !is_true(self.var_67aa3392.var_a325551c)) {
        self.var_67aa3392.var_a325551c = 1;
        self.var_67aa3392.var_5b5d9768 = 6;
        namespace_1b527536::function_7281de4d(str_item, &function_94e78240, str_weapon, str_icon, 1, 6, 1);
        return;
    }
    var_5b5d9768 = isdefined(self.var_67aa3392.var_5b5d9768) ? self.var_67aa3392.var_5b5d9768 : 0;
    if (var_5b5d9768 >= 6) {
        namespace_1b527536::function_7281de4d(str_item, &function_94e78240, str_weapon, str_icon, 1, 6, 1);
        return;
    }
    namespace_1b527536::function_7281de4d(str_item, &function_94e78240, str_weapon, str_icon, 1, 6, 0);
    self.var_8da24ed0 = var_5b5d9768;
    progress = self.var_8da24ed0 / self.var_fc8023b4;
    self clientfield::set_player_uimodel("hud_items.ammoCooldowns.fieldUpgrade", progress);
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xf3694fe8, Offset: 0x1b28
// Size: 0x2e8
function function_d52adbbc(instance) {
    instance endon(#"objective_ended", #"hash_8202877a3aadac8");
    self endon(#"disconnect", #"player_downed", #"hash_6d2d12b8afe43c8e", #"sudden_death");
    var_4beb87c8 = self gamepadusedlast();
    while (true) {
        var_c648969d = level.zm_hint_text zm_hint_text::is_open(self);
        if (self isinvehicle()) {
            vehicle = self getvehicleoccupied();
            n_seat = vehicle getoccupantseat(self);
            if (n_seat === 0) {
                if (var_c648969d) {
                    level.zm_hint_text zm_hint_text::close(self);
                }
                waitframe(1);
                continue;
            }
        }
        if (is_true(self.inventory.items[12].count)) {
            if (var_4beb87c8 != self gamepadusedlast() || !var_c648969d) {
                hint = #"hash_41f8f4fb911cb409";
                var_6538202a = #"hash_78fe1369a615f8e9";
                if (self flag::get(#"hash_35735a804a34da04")) {
                    hint = #"hash_8c286b74b006c61";
                    var_6538202a = #"hash_616ad42a93e0f761";
                }
                if (!self gamepadusedlast()) {
                    hint = #"hash_17dc67453fe5d632";
                    if (self flag::get(#"hash_35735a804a34da04")) {
                        hint = #"hash_3bf2ca483e07981a";
                    }
                    var_6538202a = hint;
                }
                if (var_c648969d) {
                    level.zm_hint_text zm_hint_text::close(self);
                }
                self thread zm_equipment::show_hint_text(hint, 6, undefined, undefined, var_6538202a);
            }
            var_4beb87c8 = self gamepadusedlast();
        }
        waitframe(1);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0xa7111b03, Offset: 0x1e18
// Size: 0x19a
function function_62801b2f() {
    self endon(#"death");
    var_e766369f = function_a38db454(self.origin, 800);
    a_zombies = array::get_all_closest(self.origin, var_e766369f);
    for (i = 0; i < a_zombies.size; i++) {
        if (isalive(a_zombies[i])) {
            if (a_zombies[i].var_6f84b820 === #"boss" || a_zombies[i] === level.var_c39a4b8f) {
                continue;
            }
            if (namespace_7589cf5c::function_82e262cf(a_zombies[i].aitype)) {
                a_zombies[i] function_b61cfe16(self);
            }
            if (distance2dsquared(self.origin, a_zombies[i].origin) <= 250000) {
                self thread function_912eedf3(a_zombies[i]);
            } else {
                self thread function_e1c4e1c2(a_zombies[i]);
            }
            waitframe(1);
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x178b1561, Offset: 0x1fc0
// Size: 0xac
function function_e1c4e1c2(ai_zombie) {
    if (isdefined(ai_zombie)) {
        if (ai_zombie.var_6f84b820 === #"normal") {
            ai_zombie zombie_utility::setup_zombie_knockdown(self.origin);
            return;
        }
        if (ai_zombie.var_6f84b820 === #"special" || ai_zombie.var_6f84b820 === #"elite") {
            ai_zombie ai::stun(2);
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x7e154700, Offset: 0x2078
// Size: 0x2bc
function function_912eedf3(zombie) {
    self endon(#"death");
    zombie endon(#"death");
    if (isalive(zombie)) {
        v_dir = vectornormalize(zombie.origin - self.origin);
        v_launch = v_dir * randomintrange(80, 100) + (0, 0, 150);
        zombie.allowdeath = 1;
        if (namespace_7589cf5c::function_82e262cf(zombie.aitype)) {
            if (isdefined(zombie.var_320199e9)) {
                zombie thread [[ zombie.var_320199e9 ]]();
            }
            return;
        }
        if (self flag::get(#"hash_35735a804a34da04")) {
            level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"outbreak_mq_aether_bunny_kill_zm", #attacker:self, #enemy:zombie});
        } else {
            if (zm_utility::is_player_valid(self, 0, 0)) {
                self zm_stats::increment_challenge_stat(#"hash_6dcdf2fb5a6cf4a0");
            }
            level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"retrieve_cannister_kill_zm", #attacker:self, #enemy:zombie});
        }
        if (!zombie isragdoll()) {
            zombie zm_utility::start_ragdoll();
            waitframe(2);
            zombie launchragdoll(v_launch);
        }
        if (isalive(zombie)) {
            if (zm_utility::is_magic_bullet_shield_enabled(zombie)) {
                zombie util::stop_magic_bullet_shield();
            }
            zombie kill();
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x8dabd967, Offset: 0x2340
// Size: 0x1aa
function function_b61cfe16(player) {
    if (isdefined(self) && isdefined(self.aitype)) {
        switch (self.aitype) {
        case #"spawner_bo5_abom":
        case #"spawner_bo5_mechz_sr":
            self function_98139c38(player, 0.25);
            break;
        case #"spawner_bo5_avogadro_sr":
        case #"spawner_bo5_soa":
            self function_98139c38(player, 0.6);
            break;
        case #"spawner_bo5_mimic":
            self function_98139c38(player, 0.6);
            break;
        case #"hash_4f87aa2a203d37d0":
            self function_98139c38(player, 0.5);
            break;
        case #"spawner_zm_steiner":
            self function_98139c38(player, 0.4);
            break;
        default:
            self function_98139c38(player, 0.5);
            break;
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 2, eflags: 0x2 linked
// Checksum 0x21b070d0, Offset: 0x24f8
// Size: 0x42
function function_98139c38(player, var_8de6cf73) {
    self.var_320199e9 = &function_320199e9;
    self.var_15bd646a = var_8de6cf73;
    self.e_attacker = player;
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0x6ac8552d, Offset: 0x2548
// Size: 0x214
function function_320199e9() {
    self endon(#"death");
    n_dmg = self.maxhealth * self.var_15bd646a;
    if (isdefined(n_dmg) && n_dmg < self.health && isalive(self)) {
        self thread ai::stun();
        self dodamage(n_dmg, self.origin);
        return;
    }
    if (isdefined(self.e_attacker) && isalive(self) && isdefined(n_dmg)) {
        if (self.e_attacker flag::get(#"hash_35735a804a34da04")) {
            if (self.var_6f84b820 === #"elite") {
                level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"outbreak_mq_aether_bunny_elite_kill_zm", #attacker:self.e_attacker, #enemy:self});
            } else if (self.var_6f84b820 === #"special") {
                level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"outbreak_mq_aether_bunny_special_kill_zm", #attacker:self.e_attacker, #enemy:self});
            }
        }
        self dodamage(n_dmg, self.origin, self.e_attacker);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x4
// Checksum 0x249b7482, Offset: 0x2768
// Size: 0x3a
function private function_7fb7c83c(weaponname) {
    inarray = isinarray(level.var_1b527536, weaponname);
    return inarray;
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0x191500ba, Offset: 0x27b0
// Size: 0x474
function function_eae9567f() {
    if (isdefined(self.var_5ea363c)) {
        self.var_5ea363c endon(#"death");
        self.var_5ea363c ghost();
    }
    if (isdefined(self.var_1ac40948)) {
        self.var_1ac40948 endon(#"death");
        self.var_1ac40948 scene::play(#"p9_fxanim_sv_rocket_take_off_bundle", "Shot 1", self.var_1ac40948);
    }
    self waittill(#"hash_3630518d6dc9aeda");
    wait(0.25);
    if (isdefined(self.var_1ac40948)) {
        self.var_1ac40948 playrumblelooponentity(#"hash_1903f70fddbadc53");
        self.var_1ac40948 scene::play(#"p9_fxanim_sv_rocket_take_off_bundle", "Shot 2", self.var_1ac40948);
        self.var_1ac40948 stoprumble(#"hash_1903f70fddbadc53");
    }
    if (isdefined(self.var_5ea363c) && isdefined(self.var_5ea363c.var_7be19157)) {
        self thread function_2ea1510(self.var_5ea363c.var_7be19157);
    }
    self waittill(#"objective_ended");
    level thread namespace_7589cf5c::function_3899cfea();
    if (self.success) {
        wait(3);
        if (isdefined(self.var_1ac40948)) {
            self.var_1ac40948 clientfield::set("" + #"hash_5bc7fe725b36bd67", 1);
        }
        if (isdefined(self.var_5ea363c) && isdefined(self.var_1ac40948)) {
            self.var_5ea363c playloopsound(#"hash_2eaf64217fead998");
            self.var_1ac40948 playloopsound(#"hash_4a9a912c07ee63e");
            self.var_5ea363c linkto(self.var_1ac40948, "tag_fx_rocket_exhaust_0");
        }
        wait(4);
        if (isdefined(self.var_5ea363c)) {
            self.var_5ea363c playrumbleonentity("sr_retrieval_rocket_takeoff");
        }
        self flag::wait_till(#"hash_e505e484cb8f99e");
        wait(1);
        if (isdefined(self.var_1ac40948)) {
            self.var_1ac40948 clientfield::set("" + #"hash_5bc7fe725b36bd67", 0);
            self.var_1ac40948 thread scene::play(#"p9_fxanim_sv_rocket_take_off_bundle", "Shot 4", self.var_1ac40948);
        }
        wait(4.5);
        self thread function_1ed83293();
        if (isdefined(self.var_5ea363c)) {
            self.var_5ea363c stoploopsound(5);
        }
        wait(5);
        self notify(#"cleared");
        if (isdefined(self.var_1ac40948)) {
            self.var_1ac40948 stoploopsound();
        }
        wait(24);
        if (isdefined(self.var_1ac40948) && self.var_1ac40948 haspart("tag_rocket_attach")) {
            self.var_1ac40948 hidepart("tag_rocket_attach", "", 1);
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0x4c210c24, Offset: 0x2c30
// Size: 0x1f4
function function_1ed83293() {
    self endon(#"cleared");
    while (true) {
        a_players = getplayers();
        foreach (player in a_players) {
            if (zm_utility::is_player_valid(player)) {
                n_distsq = distancesquared(self.var_5ea363c.origin, player.origin);
                if (n_distsq <= sqr(150)) {
                    player dodamage(5, self.var_5ea363c.origin, undefined, undefined, undefined, "MOD_BURNED");
                    player playrumbleonentity("damage_heavy");
                    continue;
                }
                if (n_distsq <= sqr(400)) {
                    player dodamage(2, self.var_5ea363c.origin, undefined, undefined, undefined, "MOD_BURNED");
                    player playrumbleonentity("damage_light");
                }
            }
        }
        wait(0.1);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x89e76840, Offset: 0x2e30
// Size: 0x184
function function_2ea1510(var_7be19157) {
    self endon(#"objective_ended");
    b_open_door = 0;
    while (true) {
        foreach (player in getplayers()) {
            if (isalive(player) && is_true(player.var_28107825)) {
                if (distance2dsquared(var_7be19157.origin, player.origin) <= sqr(300)) {
                    b_open_door = 1;
                }
            }
        }
        if (b_open_door) {
            break;
        }
        wait(0.1);
    }
    self.var_1ac40948 scene::play(#"p9_fxanim_sv_rocket_take_off_bundle", "Shot 3", self.var_1ac40948);
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0x5dcda7eb, Offset: 0x2fc0
// Size: 0x370
function function_f5087df2() {
    self waittill(#"objective_ended", #"hash_8202877a3aadac8");
    objective_manager::stop_timer();
    foreach (player in getplayers()) {
        level.var_31028c5d thread prototype_hud::function_817e4d10(player, 0);
    }
    namespace_7589cf5c::function_ed193293(self);
    if (!is_true(self.success)) {
        foreach (var_57e77903 in getentarray("retrieval_canister", "targetname")) {
            if (isdefined(var_57e77903)) {
                var_57e77903 delete();
            }
        }
    } else {
        namespace_cda50904::function_a92a93e9(self.mdl_reward.origin, self.mdl_reward.angles);
        foreach (var_e16d0db5 in getentarray("harvester", "targetname")) {
            if (isdefined(var_e16d0db5)) {
                var_e16d0db5 delete();
            }
        }
    }
    wait(1);
    foreach (player in getplayers()) {
        player clientfield::set_to_player("" + #"hash_502dbbefce1f656c", 0);
        if (isdefined(player) && level.zm_hint_text zm_hint_text::is_open(player)) {
            level.zm_hint_text zm_hint_text::close(player);
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x3d0b1640, Offset: 0x3338
// Size: 0x214
function function_d3122380(instance) {
    instance endon(#"objective_ended");
    instance thread objective_manager::start_timer(300, "retrieval");
    self thread monitor_timer(instance);
    self.var_c1c0db3c = 0;
    self thread function_9c54feb0(instance);
    self thread function_63544551(instance);
    wait(0.1);
    self thread function_9d2e5887(instance);
    instance waittill(#"hash_33e194cec969b040");
    instance.var_734a26a4.var_5ea363c = self;
    instance.var_734a26a4 gameobjects::init_game_objects(#"sr_obj_retrieval_gameobject");
    instance.var_734a26a4 gameobjects::set_onbeginuse_event(&function_1fc51f74);
    instance.var_734a26a4 gameobjects::set_onenduse_event(&function_c8bfd10b);
    instance.var_734a26a4.mdl_gameobject.script_int = instance.var_734a26a4.script_int;
    instance.var_734a26a4.mdl_gameobject.t_interact function_268e4500();
    instance.var_734a26a4.mdl_gameobject.var_2e39d9ef = 1;
    instance.var_734a26a4.mdl_gameobject thread function_223e16e6(instance);
    instance.var_734a26a4.mdl_gameobject thread function_b11e170c(instance);
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x855c047c, Offset: 0x3558
// Size: 0xac
function function_1fc51f74(player) {
    if (isplayer(player)) {
        if (isdefined(player)) {
            player playrumblelooponentity("damage_light");
            player clientfield::set_to_player("" + #"hash_502dbbefce1f656c", 0);
            if (isdefined(player.var_67aa3392)) {
                player.var_67aa3392 setinvisibletoplayer(player, 1);
            }
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 3, eflags: 0x2 linked
// Checksum 0x8439c8ac, Offset: 0x3610
// Size: 0x714
function function_c8bfd10b(*str_team, e_player, b_result) {
    if (isalive(e_player)) {
        e_player stoprumble("damage_light");
        if (isdefined(e_player.var_67aa3392)) {
            e_player.var_67aa3392 setvisibletoplayer(e_player);
        }
    }
    if (b_result) {
        if (isalive(e_player)) {
            if (!is_true(e_player.var_67aa3392.var_470d03b1)) {
                level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"retrieve_perfect_delivery_zm", #attacker:e_player});
            }
            if (isdefined(e_player.var_67aa3392)) {
                var_67aa3392 = e_player.var_67aa3392;
            }
        }
        v_org = self.e_object.origin;
        v_ang = self.e_object.angles;
        if (isdefined(var_67aa3392)) {
            var_67aa3392 flag::set(#"installed");
            var_67aa3392 notify(#"installed");
            var_67aa3392 unlink();
            var_67aa3392 clientfield::set("" + #"hash_7e6957dfc36e2214", 0);
            if (isdefined(var_67aa3392.var_1474d2ee)) {
                var_67aa3392 zm_utility::function_48d9a9c9();
                gameobjects::release_obj_id(var_67aa3392.var_1474d2ee);
                objective_delete(var_67aa3392.var_1474d2ee);
                var_67aa3392.var_1474d2ee = undefined;
            }
            if (isdefined(var_67aa3392.var_bfa7d4c5)) {
                var_67aa3392 zm_utility::function_48d9a9c9();
                gameobjects::release_obj_id(var_67aa3392.var_bfa7d4c5);
                objective_delete(var_67aa3392.var_bfa7d4c5);
                var_67aa3392.var_bfa7d4c5 = undefined;
            }
        }
        if (isdefined(e_player)) {
            e_player clientfield::set_to_player("" + #"hash_502dbbefce1f656c", 0);
            e_player.var_28107825 = 0;
            e_player.var_4cd303ca = 1;
            e_player notify(#"hash_6d2d12b8afe43c8e");
            e_player thread function_1a58f438();
            if (isdefined(e_player.var_57e77903)) {
                e_player.var_57e77903 delete();
            } else {
                e_player detach(#"hash_18fe97c27ac7bf5b", "tag_stowed_back");
            }
            e_player.var_67aa3392 = undefined;
            e_player thread function_bd0bc40b(0);
        }
        waitframe(1);
        if (isdefined(var_67aa3392)) {
            var_67aa3392 rotateto(self.e_object.angles, 0.05);
            var_67aa3392 moveto(self.e_object.origin, 0.05);
            var_67aa3392 waittill(#"movedone");
            var_67aa3392 show();
            var_67aa3392.var_2e5efdc7 = 1;
            var_67aa3392.var_3aee78d5 delete();
            var_67aa3392 playsound(#"hash_59680d123025c6f0");
        }
        if (isdefined(e_player)) {
            e_player.var_4cd303ca = 0;
            self.e_object.var_5ea363c notify(#"installed", {#player:e_player});
            var_53ba65b = getentarray("retrieval_canister", "targetname");
            foreach (var_57e77903 in var_53ba65b) {
                if (isdefined(var_67aa3392) && var_57e77903 != var_67aa3392 && isdefined(var_57e77903.n_objective_id) && !is_true(var_57e77903.var_2e5efdc7)) {
                    objective_setvisibletoplayer(var_57e77903.n_objective_id, e_player);
                }
            }
        }
        if (isdefined(var_67aa3392)) {
            var_67aa3392 thread function_457be561(v_org, v_ang);
        }
        if (self.e_object.var_5ea363c.var_c1c0db3c > 1) {
            self zm_utility::function_48d9a9c9();
            self gameobjects::destroy_object(1, 1);
            wait(5);
        } else {
            self.e_object.var_5ea363c.var_5542906 = 1;
            wait(5);
            self.e_object.var_5ea363c.var_5542906 = 0;
        }
        s_pt = array::random(level.contentmanager.activeobjective.var_9a67455);
        return;
    }
    if (isdefined(e_player) && is_true(e_player.var_28107825)) {
        e_player clientfield::set_to_player("" + #"hash_502dbbefce1f656c", 1);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 2, eflags: 0x2 linked
// Checksum 0x991de0d7, Offset: 0x3d30
// Size: 0x10c
function function_457be561(*v_org, *v_ang) {
    if (is_true(self.var_2e5efdc7)) {
        self scene::play(#"p9_fxanim_sv_canister_pod_bundle", self);
        self scene::stop();
        self setmodel(#"hash_6a3359ce6cad3369");
        self rotateyaw(-90, 0.05);
    }
    wait(1);
    if (self.n_id) {
        str_scene = #"p9_fxanim_sv_canister_eject_01_bundle";
    } else {
        str_scene = #"p9_fxanim_sv_canister_eject_02_bundle";
    }
    self thread scene::play(str_scene, self);
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xca51b52b, Offset: 0x3e48
// Size: 0x5c
function function_b11e170c(instance) {
    self endon(#"death");
    instance waittill(#"objective_ended");
    if (isdefined(self)) {
        self gameobjects::destroy_object(1, 1);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x1f341220, Offset: 0x3eb0
// Size: 0x2c8
function function_63544551(instance) {
    instance endon(#"objective_ended");
    while (true) {
        s_waitresult = self waittill(#"installed");
        level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"retrieve_battery_installed_zm", #attacker:s_waitresult.player});
        self.var_c1c0db3c++;
        if (self.var_c1c0db3c === 1) {
            self thread function_f4562137(instance);
            instance.var_734a26a4.mdl_gameobject thread namespace_7589cf5c::function_ac709d66(instance, "vox_obj_rtl_aeth_can_depst_orkt_0");
            continue;
        }
        if (self.var_c1c0db3c === 2) {
            foreach (player in getplayers()) {
                level.var_31028c5d prototype_hud::function_817e4d10(player, 0);
            }
            instance notify(#"done");
            foreach (player in getplayers()) {
                player luinotifyevent(#"hash_5159e35a62fb7083", 2, 3, 1);
                if (isdefined(player) && level.zm_hint_text zm_hint_text::is_open(player)) {
                    level.zm_hint_text zm_hint_text::close(player);
                }
            }
            waitframe(1);
            objective_manager::objective_ended(instance);
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0x83bed254, Offset: 0x4180
// Size: 0xa2
function function_c91906c5() {
    foreach (player in getplayers()) {
        if (is_true(player.var_28107825)) {
            return true;
        }
    }
    return false;
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x8483ea41, Offset: 0x4230
// Size: 0x1a4
function function_223e16e6(instance) {
    instance endon(#"objective_ended");
    objective_setprogress(instance.var_5ea363c.n_objective_id, 1);
    while (true) {
        foreach (player in getplayers()) {
            if (is_true(player.var_28107825) && !instance.var_5ea363c.var_5542906) {
                self gameobjects::function_664b40(player);
                objective_setinvisibletoplayer(instance.var_5ea363c.n_objective_id, player);
                continue;
            }
            self gameobjects::function_7a00d78c(player);
            if (instance function_c91906c5()) {
                objective_setvisibletoplayer(instance.var_5ea363c.n_objective_id, player);
            }
        }
        wait(0.25);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x583510a2, Offset: 0x43e0
// Size: 0x1f4
function function_f4562137(instance) {
    instance endon(#"objective_ended");
    self.var_7be19157.n_objective_id = gameobjects::get_next_obj_id();
    self.var_7be19157.var_db7449cf = #"hash_336d05892f9a780e";
    objective_add(self.var_7be19157.n_objective_id, "active", self.var_7be19157, self.var_7be19157.var_db7449cf);
    while (true) {
        foreach (player in getplayers()) {
            if (is_true(player.var_28107825) && !self.var_5542906) {
                objective_setinvisibletoplayer(self.var_7be19157.n_objective_id, player);
                continue;
            }
            if (is_true(player.var_28107825)) {
                objective_setvisibletoplayer(self.var_7be19157.n_objective_id, player);
                continue;
            }
            objective_setinvisibletoplayer(self.var_7be19157.n_objective_id, player);
        }
        wait(0.25);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xd183ae2f, Offset: 0x45e0
// Size: 0x3ac
function monitor_timer(instance) {
    instance endon(#"objective_ended");
    level waittill(#"hash_4aac43df22b1d42d");
    foreach (player in getplayers()) {
        player notify(#"sudden_death");
    }
    self thread function_54ad8bd3(instance);
    var_42f3b393 = 0;
    while (true) {
        var_dc9a9acc = 0;
        foreach (var_57e77903 in instance.var_53ba65b) {
            if (is_true(var_57e77903.b_pickedup) || is_true(var_57e77903.var_2e5efdc7)) {
                var_dc9a9acc++;
            }
        }
        if (var_dc9a9acc < 2) {
            break;
        }
        if (!var_42f3b393) {
            var_42f3b393 = 1;
            instance.var_5ff65676 = 1;
            foreach (zombie in getaiarray()) {
                if (isalive(zombie)) {
                    zombie zm_score::function_acaab828();
                }
            }
            foreach (player in getplayers()) {
                if (is_true(player.var_28107825)) {
                    player thread function_69438b00(instance);
                }
            }
        }
        waitframe(1);
    }
    wait(0.2);
    players = function_a1ef346b();
    if (isdefined(players) && players.size > 0) {
        instance.var_7a9e6505 = 1;
    }
    instance.var_5ff65676 = 0;
    objective_manager::objective_ended(instance, 0);
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x9474269f, Offset: 0x4998
// Size: 0x100
function function_69438b00(instance) {
    self endon(#"disconnect", #"laststand");
    instance endon(#"objective_ended");
    if (isdefined(self) && level.zm_hint_text zm_hint_text::is_open(self)) {
        level.zm_hint_text zm_hint_text::close(self);
    }
    waitframe(1);
    self thread zm_equipment::show_hint_text(#"hash_6a89bb99e54d4e8f", 60);
    while (true) {
        self dodamage(5, self.origin);
        self function_bc82f900("damage_light");
        wait(1);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xce6a5467, Offset: 0x4aa0
// Size: 0x1d0
function function_54ad8bd3(instance) {
    instance endon(#"objective_ended");
    wait(0.3);
    foreach (var_57e77903 in instance.var_53ba65b) {
        if (!var_57e77903.b_pickedup && !var_57e77903.var_2e5efdc7) {
            foreach (player in getplayers()) {
                player thread function_f1ae312a();
                level.var_31028c5d prototype_hud::function_817e4d10(player, 0);
                if (isdefined(player) && level.zm_hint_text zm_hint_text::is_open(player)) {
                    level.zm_hint_text zm_hint_text::close(player);
                }
            }
            objective_manager::objective_ended(instance, 0);
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xe5e6bb01, Offset: 0x4c78
// Size: 0x3fc
function function_6acbc957(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    self hide();
    self notsolid();
    self.b_pickedup = 0;
    self.var_2e5efdc7 = 0;
    self.var_a325551c = 0;
    self rotateyaw(90, 0.05);
    self.var_e16d0db5 hide();
    self.var_e16d0db5 notsolid();
    instance waittill(#"hash_3630518d6dc9aeda");
    self.var_e16d0db5 show();
    self.var_e16d0db5 solid();
    self.var_e16d0db5 playrumblelooponentity("sr_machinery_rumble");
    self.var_e16d0db5 clientfield::set("" + #"hash_29bff1aafecc8591", 1);
    self.var_3aee78d5 = spawn("trigger_radius_use", self.origin + (0, 0, 8), 0, 96, 96, 1);
    self.var_3aee78d5 triggerignoreteam();
    self.var_3aee78d5 setcursorhint("HINT_NOICON");
    self.var_3aee78d5 sethintstring(#"hash_c90fb1f338973f7");
    self.var_3aee78d5 usetriggerrequirelookat(1);
    self.var_3aee78d5 enablelinkto();
    self.var_3aee78d5 linkto(self);
    self.var_3aee78d5 triggerenable(0);
    self.var_1b32f535 = spawn("trigger_radius_use", self.origin, 0, 96, 96, 1);
    self.var_1b32f535 triggerignoreteam();
    self.var_1b32f535 setcursorhint("HINT_NOICON");
    self.var_1b32f535 sethintstring(#"hash_110f0b36c2354f6b");
    self.var_1b32f535 usetriggerrequirelookat(1);
    self thread function_9c54feb0(instance);
    self thread function_20ab9060(instance);
    self thread function_95aeefa7(instance);
    self thread function_457d7073();
    self waittill(#"ready");
    self.var_e16d0db5 stoprumble("sr_machinery_rumble");
    wait(0.1);
    self.var_3aee78d5 triggerenable(1);
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0xc1ee56ba, Offset: 0x5080
// Size: 0x90
function function_457d7073() {
    self endon(#"death");
    if (isdefined(self.var_3aee78d5)) {
        self.var_3aee78d5 endon(#"death");
    }
    while (true) {
        if (is_true(self.b_pickedup) && isdefined(self.var_3aee78d5)) {
            self.var_3aee78d5 setinvisibletoall();
        }
        wait(0.1);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xe5622a55, Offset: 0x5118
// Size: 0x5b0
function function_5238fe78(instance) {
    instance endon(#"objective_ended", #"done");
    self endon(#"death", #"hash_3e146dbb1f7248f8");
    n_spawns = function_e97e2683(1);
    n_spawned = 0;
    if (instance.targetname === "objective_black_sea_retrieval") {
        player = array::random(getplayers());
        if (isdefined(player)) {
            a_s_locs = array::get_all_closest(player.origin, instance.var_559503f1);
            s_pt = a_s_locs[randomint(5)];
            if (isdefined(s_pt)) {
                s_pt.radius = 100;
                wait(randomfloatrange(2, 3.5));
            }
        }
    } else {
        foreach (var_2064decc in instance.var_9a67455) {
            if (var_2064decc.script_int === self.n_index) {
                s_pt = var_2064decc;
            }
        }
    }
    if (!isdefined(s_pt)) {
        return;
    }
    a_s_pts = namespace_85745671::function_e4791424(s_pt.origin, 32, 80, s_pt.radius);
    while (true) {
        level flag::wait_till("spawn_zombies");
        while (instance.n_zombies >= instance.n_max_zombies) {
            wait(0.1);
        }
        if (isdefined(s_pt)) {
            var_7ecdee63 = function_aece4588(level.var_b48509f9);
            if (namespace_7589cf5c::function_82e262cf(var_7ecdee63)) {
                if (isdefined(instance.var_38c710c3)) {
                    n_cooldown = namespace_7589cf5c::function_190c51a9();
                    var_be32c966 = float(gettime()) / 1000 - instance.var_38c710c3;
                    if (var_be32c966 < n_cooldown) {
                        var_7ecdee63 = namespace_7589cf5c::function_b9e4c169();
                    } else {
                        instance.var_38c710c3 = undefined;
                    }
                }
                if (instance.var_2133c784 >= instance.var_61c57c53 || instance.var_b803db9c >= instance.var_5de17ec9) {
                    var_7ecdee63 = namespace_7589cf5c::function_b9e4c169();
                }
            }
            s_spawnpt = array::random(a_s_pts);
            wait(randomfloatrange(0.1, 0.3));
            if (isdefined(s_spawnpt)) {
                ai_spawned = namespace_85745671::function_9d3ad056(var_7ecdee63, s_spawnpt.origin, s_spawnpt.angles, "retrieval_zombie");
                wait(0.1);
                if (isalive(ai_spawned)) {
                    if (instance.targetname === "objective_black_sea_retrieval") {
                        ai_spawned thread function_eff08a36(instance);
                    } else {
                        ai_spawned.var_a950813d = 1;
                    }
                    instance.n_zombies++;
                    n_spawned++;
                    if (n_spawned >= n_spawns) {
                        self notify(#"hash_3e146dbb1f7248f8");
                    }
                    if (namespace_7589cf5c::function_82e262cf(ai_spawned.aitype)) {
                        instance.var_38c710c3 = float(gettime()) / 1000;
                        instance.var_2133c784++;
                        instance.var_b803db9c++;
                        ai_spawned callback::function_d8abfc3d(#"on_ai_killed", &function_c36cb7b1);
                    } else {
                        ai_spawned callback::function_d8abfc3d(#"on_ai_killed", &function_b3791df9);
                    }
                    if (is_true(instance.var_5ff65676)) {
                        ai_spawned zm_score::function_acaab828();
                    }
                    ai_spawned thread function_bf606a73();
                }
            }
        }
        wait(0.1);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x26999f40, Offset: 0x56d0
// Size: 0x174
function function_c36cb7b1(params) {
    if (isdefined(level.contentmanager.activeobjective) && level.contentmanager.activeobjective.var_b803db9c) {
        level.contentmanager.activeobjective.var_b803db9c--;
    }
    if (is_true(params.eattacker.var_28107825)) {
        if (self.var_6f84b820 === #"elite") {
            level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"retrieve_cannister_elite_kill_zm", #attacker:params.eattacker, #enemy:self});
            return;
        }
        if (self.var_6f84b820 === #"special") {
            level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"retrieve_cannister_special_kill_zm", #attacker:params.eattacker, #enemy:self});
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x7451c6d2, Offset: 0x5850
// Size: 0x6c
function function_b3791df9(*instance) {
    if (isdefined(level.contentmanager.activeobjective.n_zombies) && level.contentmanager.activeobjective.n_zombies > 0) {
        level.contentmanager.activeobjective.n_zombies--;
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x50c16c07, Offset: 0x58c8
// Size: 0x4c8
function function_9d2e5887(instance) {
    instance endon(#"objective_ended", #"defend", #"done");
    n_spawns = function_e97e2683(1);
    n_spawned = 0;
    a_s_pts = instance.var_b69e83ca;
    while (true) {
        level flag::wait_till("spawn_zombies");
        while (instance.n_zombies >= instance.n_max_zombies) {
            wait(0.1);
        }
        if (instance.targetname === "objective_black_sea_retrieval") {
            player = array::random(getplayers());
            if (isdefined(player)) {
                a_s_locs = array::get_all_closest(player.origin, instance.var_559503f1);
                s_pt = a_s_locs[randomint(5)];
                if (isdefined(s_pt)) {
                    wait(randomfloatrange(2, 3.5));
                }
            }
        } else {
            s_pt = array::random(a_s_pts);
        }
        if (isdefined(s_pt)) {
            var_7ecdee63 = function_aece4588(level.var_b48509f9);
            if (namespace_7589cf5c::function_82e262cf(var_7ecdee63)) {
                if (isdefined(instance.var_38c710c3)) {
                    n_cooldown = namespace_7589cf5c::function_190c51a9();
                    var_be32c966 = float(gettime()) / 1000 - instance.var_38c710c3;
                    if (var_be32c966 < n_cooldown) {
                        var_7ecdee63 = namespace_7589cf5c::function_b9e4c169();
                    } else {
                        instance.var_38c710c3 = undefined;
                    }
                }
                if (instance.var_2133c784 >= instance.var_61c57c53 || instance.var_b803db9c >= instance.var_5de17ec9) {
                    var_7ecdee63 = namespace_7589cf5c::function_b9e4c169();
                }
            }
            wait(randomfloatrange(0.1, 0.3));
            ai_spawned = namespace_85745671::function_9d3ad056(var_7ecdee63, s_pt.origin, s_pt.angles, "retrieval_zombie");
            wait(0.1);
            if (isdefined(ai_spawned)) {
                if (instance.targetname === "objective_black_sea_retrieval") {
                    ai_spawned thread function_eff08a36(instance);
                } else {
                    ai_spawned.var_a950813d = 1;
                }
                instance.n_zombies++;
                n_spawned++;
                if (isalive(ai_spawned)) {
                    if (namespace_7589cf5c::function_82e262cf(ai_spawned.aitype)) {
                        instance.var_38c710c3 = float(gettime()) / 1000;
                        instance.var_2133c784++;
                        instance.var_b803db9c++;
                        ai_spawned callback::function_d8abfc3d(#"on_ai_killed", &function_c36cb7b1);
                    } else {
                        ai_spawned callback::function_d8abfc3d(#"on_ai_killed", &function_b3791df9);
                    }
                    if (is_true(instance.var_5ff65676)) {
                        ai_spawned zm_score::function_acaab828();
                    }
                    ai_spawned.var_b4e37a30 = 1;
                    ai_spawned thread function_bf606a73();
                }
            }
        }
        wait(0.1);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xd52fef8e, Offset: 0x5d98
// Size: 0x488
function function_6d863da0(instance) {
    self endon(#"death", #"hash_2376553f8598c3f8");
    instance endon(#"objective_ended", #"done");
    self.var_c948271a = 0;
    self.var_d7272180 = 0;
    n_spawns = function_e97e2683();
    a_s_pts = namespace_85745671::function_e4791424(self.origin, 32, 80, 400);
    var_559503f1 = array::randomize(a_s_pts);
    while (!self.var_c948271a) {
        foreach (player in function_a1ef346b()) {
            if (distance2dsquared(self.origin, player.origin) <= sqr(3000)) {
                self.var_c948271a = 1;
            }
        }
        wait(0.5);
    }
    while (true) {
        for (i = 0; i < n_spawns; i++) {
            level flag::wait_till("spawn_zombies");
            if (isdefined(var_559503f1[i])) {
                var_7ecdee63 = function_aece4588(level.var_b48509f9);
                if (namespace_7589cf5c::function_82e262cf(var_7ecdee63)) {
                    if (isdefined(instance.var_38c710c3)) {
                        n_cooldown = namespace_7589cf5c::function_190c51a9();
                        var_be32c966 = float(gettime()) / 1000 - instance.var_38c710c3;
                        if (var_be32c966 < n_cooldown) {
                            var_7ecdee63 = namespace_7589cf5c::function_b9e4c169();
                        } else {
                            instance.var_38c710c3 = undefined;
                        }
                    }
                    if (instance.var_2133c784 >= instance.var_61c57c53 || instance.var_b803db9c >= instance.var_5de17ec9) {
                        var_7ecdee63 = namespace_7589cf5c::function_b9e4c169();
                    }
                }
                ai_spawned = namespace_85745671::function_9d3ad056(var_7ecdee63, var_559503f1[i].origin, var_559503f1[i].angles, "retrieval_zombie");
                wait(0.1);
                if (isdefined(ai_spawned)) {
                    ai_spawned.var_a950813d = 1;
                    ai_spawned.var_40e7d5fb = &function_ec4c64fd;
                    if (namespace_7589cf5c::function_82e262cf(ai_spawned.aitype)) {
                        instance.var_38c710c3 = float(gettime()) / 1000;
                        instance.var_2133c784++;
                        instance.var_b803db9c++;
                        ai_spawned callback::function_d8abfc3d(#"on_ai_killed", &function_c36cb7b1);
                    }
                    self.var_d7272180++;
                    if (self.var_d7272180 >= n_spawns) {
                        self notify(#"hash_2376553f8598c3f8");
                    }
                    if (is_true(instance.var_5ff65676)) {
                        ai_spawned zm_score::function_acaab828();
                    }
                }
            }
        }
        wait(0.1);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0x7ecd3bc0, Offset: 0x6228
// Size: 0x168
function function_d153c0f0() {
    self endon(#"objective_ended");
    while (true) {
        level flag::wait_till("spawn_zombies");
        if (self.n_zombies < self.n_max_zombies) {
            if (self.targetname === "objective_black_sea_retrieval") {
                player = array::random(getplayers());
                if (isdefined(player)) {
                    a_s_locs = array::get_all_closest(player.origin, self.var_559503f1);
                    s_pt = a_s_locs[randomint(5)];
                    if (isdefined(s_pt)) {
                        wait(randomfloatrange(2, 3.5));
                    }
                }
            } else {
                s_pt = array::random(self.var_ba44fadd);
            }
            if (isdefined(s_pt)) {
                self thread function_dd9b1007(s_pt.origin);
            }
        }
        wait(0.1);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x172c18db, Offset: 0x6398
// Size: 0x2f4
function function_dd9b1007(v_pt) {
    self endon(#"objective_ended", #"done");
    wait(randomfloatrange(0.1, 0.3));
    var_7ecdee63 = function_aece4588(level.var_b48509f9);
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
        if (self.var_2133c784 >= self.var_61c57c53 || self.var_b803db9c >= self.var_5de17ec9) {
            var_7ecdee63 = namespace_7589cf5c::function_b9e4c169();
        }
    }
    ai_spawned = namespace_85745671::function_9d3ad056(var_7ecdee63, v_pt, self.angles, "retrieval_zombie");
    wait(0.1);
    if (isdefined(ai_spawned)) {
        if (self.targetname === "objective_black_sea_retrieval") {
            ai_spawned thread function_eff08a36(self);
        } else {
            ai_spawned.var_a950813d = 1;
        }
        if (namespace_7589cf5c::function_82e262cf(ai_spawned.aitype)) {
            self.var_38c710c3 = float(gettime()) / 1000;
            self.var_2133c784++;
            self.var_b803db9c++;
            ai_spawned callback::function_d8abfc3d(#"on_ai_killed", &function_c36cb7b1);
        } else {
            ai_spawned callback::function_d8abfc3d(#"on_ai_killed", &function_b3791df9);
        }
        self.n_zombies++;
        if (is_true(self.var_5ff65676)) {
            ai_spawned zm_score::function_acaab828();
        }
        ai_spawned thread function_bf606a73();
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x7baf416c, Offset: 0x6698
// Size: 0x20c
function function_95aeefa7(instance) {
    instance endon(#"objective_ended");
    s_result = self.var_1b32f535 waittill(#"trigger");
    self.var_1b32f535 delete();
    if (isdefined(s_result.activator)) {
        s_result.activator playrumbleonentity("damage_heavy");
    }
    self notify(#"open");
    self.var_e16d0db5 clientfield::set("" + #"hash_29bff1aafecc8591", 0);
    self.var_e16d0db5 clientfield::set("" + #"hash_7e6957dfc36e2214", 1);
    self.var_e16d0db5 scene::play(#"p9_fxanim_sv_canister_open_bundle", "Shot 1", self.var_e16d0db5);
    self notify(#"ready");
    self show();
    self.var_e16d0db5 hidepart("p9_sur_console_control_01_canister_jnt", "", 1);
    self.v_start = self.origin;
    self clientfield::set("" + #"hash_7e6957dfc36e2214", 1);
    self.var_e16d0db5 clientfield::set("" + #"hash_7e6957dfc36e2214", 0);
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x43605ebc, Offset: 0x68b0
// Size: 0x750
function function_20ab9060(instance) {
    self endon(#"installed", #"death");
    instance endon(#"objective_ended");
    while (true) {
        s_result = self.var_3aee78d5 waittill(#"trigger");
        self notify(#"hash_4588a3de47c44f6f");
        self clientfield::set("" + #"hash_7e6957dfc36e2214", 0);
        s_pt = array::random(instance.var_ba44fadd);
        e_activator = s_result.activator;
        self zm_utility::function_48d9a9c9();
        if (isdefined(e_activator) && isplayer(e_activator) && !is_true(e_activator.var_28107825) && !is_true(self.b_pickedup)) {
            instance notify(#"hash_33e194cec969b040");
            player = e_activator;
            playsoundatposition(#"hash_1105191492bc5a15", self.origin + (0, 0, 25));
            if (isdefined(s_result.activator)) {
                player playrumbleonentity("damage_heavy");
            }
            foreach (e_player in getplayers()) {
                if (e_player != player) {
                    self.var_3aee78d5 setinvisibletoplayer(e_player);
                }
            }
            var_53ba65b = getentarray("retrieval_canister", "targetname");
            foreach (var_57e77903 in var_53ba65b) {
                if (var_57e77903 != self && isdefined(var_57e77903.var_1474d2ee)) {
                    objective_setinvisibletoplayer(var_57e77903.var_1474d2ee, player);
                }
            }
            objective_setinvisibletoall(self.var_1474d2ee);
            self.b_pickedup = 1;
            self.e_owner = player;
            tagname = "tag_stowed_back";
            if (!player haspart(tagname)) {
                tagname = undefined;
            }
            self.var_3aee78d5 usetriggerrequirelookat(0);
            self.var_3aee78d5 sethintstring(#"hash_1bdc30d1c55f4de");
            if (!isdefined(self.var_f3e7f597)) {
                self.var_f3e7f597 = 1;
                self.var_bfa7d4c5 = gameobjects::get_next_obj_id();
                objective_add(self.var_bfa7d4c5, "active", self, self.var_11cf37e3);
            }
            objective_setinvisibletoplayer(self.var_bfa7d4c5, player);
            foreach (e_player in getplayers()) {
                if (e_player != player) {
                    objective_setvisibletoplayer(self.var_bfa7d4c5, e_player);
                }
            }
            player.var_28107825 = 1;
            player.var_67aa3392 = self;
            waitframe(1);
            if (isdefined(tagname)) {
                self linkto(player, tagname, (8, 5, -4), (270, 0, 0));
            } else {
                self linkto(player, undefined, (-12, 0, 45), (-5, 0, 0));
            }
            self clientfield::set("" + #"hash_7e6957dfc36e2214", 1);
            player clientfield::set_to_player("" + #"hash_502dbbefce1f656c", 1);
            if (!is_true(player.var_7cd1b025)) {
                player.var_7cd1b025 = 1;
                player thread function_ac6bb77d(instance);
                instance thread function_d153c0f0();
                instance notify(#"defend");
            }
            player thread function_bd0bc40b(1);
            player thread function_61ee3ab0(instance, self);
            player thread function_40285fbe(instance);
            player thread function_4be8796(instance);
            player thread function_d52adbbc(instance);
            player thread function_9181f7b3(instance);
            self thread function_2d670ab2(instance);
            waitframe(1);
            player thread function_50a7d571(self, instance);
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xb2a50c2b, Offset: 0x7008
// Size: 0x176
function function_40285fbe(instance) {
    instance endon(#"objective_ended");
    self endon(#"disconnect", #"player_downed", #"hash_6d2d12b8afe43c8e");
    while (true) {
        if (distance2dsquared(instance.contentgroups[#"retrieval"][0].var_5ea363c.origin, self.origin) < sqr(100) && is_true(self.var_28107825)) {
            if (isdefined(self.var_67aa3392.var_3aee78d5)) {
                self.var_67aa3392.var_3aee78d5 setinvisibletoplayer(self);
            }
        } else if (isdefined(self.var_67aa3392.var_3aee78d5) && is_true(self.var_28107825)) {
            self.var_67aa3392.var_3aee78d5 setvisibletoplayer(self);
        }
        waitframe(1);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 2, eflags: 0x2 linked
// Checksum 0x3e7c59b9, Offset: 0x7188
// Size: 0xe6
function function_50a7d571(*var_67aa3392, instance) {
    self endon(#"disconnect", #"player_downed", #"hash_6d2d12b8afe43c8e");
    instance endon(#"objective_ended");
    while (true) {
        isgamepad = self gamepadusedlast();
        if (!isgamepad && self buttonbitstate("BUTTON_BIT_ANY_DOWN") || isgamepad && self actionslottwobuttonpressed()) {
            self thread function_f1ae312a();
        }
        waitframe(1);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xfdafd367, Offset: 0x7278
// Size: 0x1ce
function function_bd0bc40b(b_enabled) {
    if (b_enabled) {
        self val::set(#"objective_retrieval", "allow_jump", 0);
        self val::set(#"objective_retrieval", "allow_sprint", 0);
        self val::set(#"objective_retrieval", "allow_crouch", 0);
        self val::set(#"objective_retrieval", "allow_prone", 0);
        self setstance("stand");
        self thread function_e5c230e5();
        return;
    }
    self val::reset(#"objective_retrieval", "allow_jump");
    self val::reset(#"objective_retrieval", "allow_sprint");
    self val::reset(#"objective_retrieval", "allow_crouch");
    self val::reset(#"objective_retrieval", "allow_prone");
    self val::reset(#"objective_retrieval", "move_speed_scale");
    self notify(#"hash_76105ae1f365437");
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x6 linked
// Checksum 0x216b8905, Offset: 0x7450
// Size: 0x1a4
function private function_e5c230e5() {
    self notify("66eb949b95eccd65");
    self endon("66eb949b95eccd65");
    self endon(#"disconnect", #"hash_76105ae1f365437");
    while (is_true(self.var_11994308)) {
        waitframe(1);
    }
    if (!is_true(self.var_28107825)) {
        return;
    }
    if (getplayers().size < 2) {
        if (self namespace_e86ffa8::function_3623f9d1(0)) {
            self val::set(#"objective_retrieval", "move_speed_scale", 0.9);
        } else {
            self val::set(#"objective_retrieval", "move_speed_scale", 0.8);
        }
        return;
    }
    if (self namespace_e86ffa8::function_3623f9d1(0)) {
        self val::set(#"objective_retrieval", "move_speed_scale", 0.85);
        return;
    }
    self val::set(#"objective_retrieval", "move_speed_scale", 0.7);
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x0
// Checksum 0xa41dfd5a, Offset: 0x7600
// Size: 0x68
function zombie_death_watcher(instance) {
    instance endon(#"objective_ended");
    self waittill(#"death");
    if (isdefined(instance.n_zombies) && instance.n_zombies > 0) {
        instance.n_zombies--;
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0xd400969c, Offset: 0x7670
// Size: 0x9e
function function_d583b222() {
    switch (getplayers().size) {
    case 1:
        n_spawns = 8;
        break;
    case 2:
        n_spawns = 12;
        break;
    case 3:
        n_spawns = 15;
        break;
    case 4:
        n_spawns = 22;
        break;
    }
    return n_spawns;
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xf69104e3, Offset: 0x7718
// Size: 0xf6
function function_e97e2683(b_initial) {
    switch (getplayers().size) {
    case 1:
        if (!isdefined(b_initial)) {
            n_spawns = 8;
        } else {
            n_spawns = 10;
        }
        break;
    case 2:
        if (!isdefined(b_initial)) {
            n_spawns = 14;
        } else {
            n_spawns = 16;
        }
        break;
    case 3:
        if (!isdefined(b_initial)) {
            n_spawns = 16;
        } else {
            n_spawns = 18;
        }
        break;
    case 4:
        if (!isdefined(b_initial)) {
            n_spawns = 18;
        } else {
            n_spawns = 20;
        }
        break;
    }
    return n_spawns;
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x926e2892, Offset: 0x7818
// Size: 0x17a
function function_ec4c64fd(*goalpos) {
    self.var_cfb82e92 = 4;
    self.var_62561fdc = 750;
    self.var_9b6bfdb7 = undefined;
    enemy = zm_ai_utility::function_825317c(self);
    if (isdefined(enemy)) {
        dist_sq = distancesquared(self.origin, enemy.origin);
        if (dist_sq > sqr(500)) {
            self.var_9b6bfdb7 = int(4 * 1000);
        }
        if (dist_sq > sqr(1000)) {
            self.var_7a6bf645 = 0;
            z_delta = abs(self.origin[2] - enemy.origin[2]);
            if (z_delta > 100) {
                self.var_a44ca810 = 400 + randomint(100);
                self.var_cfb82e92 = 1;
            }
            return;
        }
        self.var_7a6bf645 = 1;
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0xa6238f8e, Offset: 0x79a0
// Size: 0x2a8
function function_bf606a73() {
    self endon(#"death");
    self callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_fd68cae4);
    self flag::set(#"hash_52d6a75cdbf101f3");
    self.var_40e7d5fb = &function_ec4c64fd;
    while (true) {
        a_players = array::get_all_closest(self.origin, function_a1ef346b(), undefined, 4, 1500);
        self.var_b7e90547 = undefined;
        if (isdefined(a_players)) {
            for (i = 0; i < a_players.size; i++) {
                if (is_true(a_players[i].var_28107825)) {
                    if (!isdefined(self.var_b7e90547) && isalive(self) && isalive(a_players[i])) {
                        waitframe(1);
                        if (isalive(a_players[i])) {
                            awareness::function_c241ef9a(self, a_players[i], 11);
                            self.var_b7e90547 = 1;
                            wait(10);
                        }
                    }
                }
            }
        }
        if (!isdefined(self.var_b7e90547) && isalive(self)) {
            player = awareness::function_d7fedde2(self);
            if (isalive(player)) {
                awareness::function_e732359c(1, self.origin, 512, self, {#position:player.origin});
            }
            waitframe(1);
            if (isalive(player)) {
                self.var_b7e90547 = 1;
                awareness::function_c241ef9a(self, player, 11);
                wait(10);
            }
        }
        wait(0.1);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0xf3c3ff50, Offset: 0x7c50
// Size: 0x9c
function function_fd68cae4() {
    if (self.archetype == #"zombie") {
        if (is_true(self.var_4a44f930)) {
            self namespace_85745671::function_9758722("sprint");
            return;
        }
        if (isdefined(self.var_b4e37a30) && level.var_b48509f9 > 4) {
            self namespace_85745671::function_9758722("super_sprint");
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xce85097c, Offset: 0x7cf8
// Size: 0x18c
function function_2d670ab2(instance) {
    instance endon(#"objective_ended");
    self endon(#"installed", #"failsafe");
    while (true) {
        if (self.origin[2] < instance.origin[2] - 10000 && isdefined(self.e_owner) && !self.e_owner clientfield::get("phase_rift_player_fx")) {
            if (is_true(self.b_pickedup)) {
                if (isdefined(self.e_owner)) {
                    self.e_owner thread function_f1ae312a();
                    wait(1.5);
                    self moveto(self.v_start, 0.05);
                }
            } else {
                self moveto(self.v_start, 0.05);
                self waittill(#"movedone");
                self thread function_6fd7f323();
            }
            self notify(#"failsafe");
        }
        wait(0.5);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xd5bf24e1, Offset: 0x7e90
// Size: 0xb0
function function_9181f7b3(instance) {
    self notify("2f7a42a7d1c41667");
    self endon("2f7a42a7d1c41667");
    self endon(#"disconnect", #"hash_6d2d12b8afe43c8e");
    instance endon(#"objective_ended");
    while (true) {
        s_result = self waittill(#"enter_vehicle");
        if (isdefined(s_result.vehicle)) {
            s_result.vehicle thread function_eb9a0f67();
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0x5ddb3f23, Offset: 0x7f48
// Size: 0x22a
function function_eb9a0f67() {
    self notify("208904b0dee7bf7b");
    self endon("208904b0dee7bf7b");
    self endon(#"death");
    waitframe(1);
    if (self.vehicletype === #"vehicle_t9_mil_ru_tank_t72_sr") {
        players = self getvehoccupants();
        foreach (player in players) {
            if (is_true(player.var_28107825)) {
                if (isdefined(player.var_67aa3392)) {
                    player.var_67aa3392 hide();
                    player thread function_3e6e1345();
                }
            }
        }
    }
    wait(2);
    while (true) {
        players = self getvehoccupants();
        if (isdefined(players) && players.size > 0) {
            foreach (player in players) {
                if (is_true(player.var_28107825)) {
                    self vehicle_damage(50, player);
                }
            }
        } else {
            break;
        }
        wait(1);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0xe51cb160, Offset: 0x8180
// Size: 0xd8
function function_3e6e1345() {
    self waittill(#"death", #"exit_vehicle");
    var_9d527233 = getentarray("retrieval_component", "targetname");
    foreach (var_4fa91bc5 in var_9d527233) {
        var_4fa91bc5 show();
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 2, eflags: 0x2 linked
// Checksum 0x6b56ec9b, Offset: 0x8260
// Size: 0x64
function vehicle_damage(damage_amount, *player) {
    if (isdefined(self)) {
        if (isdefined(player)) {
            self dodamage(player, self.origin);
        }
        playrumbleonposition("sr_canister_damage_vehicle_rumble", self.origin);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 2, eflags: 0x2 linked
// Checksum 0x25a1d59e, Offset: 0x82d0
// Size: 0xe4
function function_61ee3ab0(instance, var_57e77903) {
    instance endon(#"objective_ended");
    var_57e77903 endon(#"installed");
    self waittill(#"hash_6d2d12b8afe43c8e");
    if (!is_true(self.var_4cd303ca)) {
        if (!is_true(instance.var_8240d3e4)) {
            instance thread function_9f6ab3c7();
            level thread namespace_7589cf5c::play_vo("objectiveRetrievalCanisterDropped");
        }
    }
    var_57e77903 thread function_6fd7f323();
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0x83a7f1d8, Offset: 0x83c0
// Size: 0x36
function function_9f6ab3c7() {
    self endon(#"objective_ended");
    self.var_8240d3e4 = 1;
    wait(15);
    self.var_8240d3e4 = undefined;
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0x5658bdcf, Offset: 0x8400
// Size: 0x49c
function function_6fd7f323() {
    if (isdefined(self.e_owner)) {
        v_org = self.e_owner.origin;
    } else {
        v_org = self.origin;
    }
    v_point = getclosestpointonnavmesh(v_org, 120, 16);
    if (isdefined(v_point)) {
        v_ground = groundtrace(v_point + (0, 0, 50), v_point + (0, 0, -15000), 1, self.e_owner)[#"position"];
    }
    if (!isdefined(v_ground)) {
        v_pos = self.e_owner.origin;
        v_ground = groundtrace(v_pos + (10, 10, 50), v_pos + (0, 0, -15000), 1, self.e_owner)[#"position"];
    }
    var_ce819c69 = self.e_owner depthofplayerinwater();
    self.e_owner = undefined;
    self clientfield::set("" + #"hash_7e6957dfc36e2214", 0);
    self.b_pickedup = 0;
    self.var_470d03b1 = 1;
    self unlink();
    wait(0.1);
    var_24d7fac5 = self depthinwater();
    if (var_24d7fac5 || var_ce819c69) {
        while (true) {
            if (var_24d7fac5) {
                self moveto((v_ground[0], v_ground[1], self.origin[2] + var_24d7fac5 - 10), 0.05);
            } else {
                self moveto((v_ground[0], v_ground[1], self.origin[2] + var_24d7fac5 - 62), 0.05);
            }
            self waittill(#"movedone");
            var_24d7fac5 = self depthinwater();
            if (var_24d7fac5 <= 10) {
                self.is_floating = 1;
                break;
            }
        }
    } else {
        self moveto(v_ground, 0.05);
        self waittill(#"movedone");
    }
    if (is_true(self.is_floating)) {
        self.is_floating = undefined;
        self thread function_22ba7285();
    }
    self.angles = (0, 0, 0);
    if (isdefined(self.var_3aee78d5)) {
        self.var_3aee78d5 usetriggerrequirelookat(1);
        self.var_3aee78d5 sethintstring(#"hash_c90fb1f338973f7");
    }
    playsoundatposition(#"hash_3047775b10faeffc", self.origin + (0, 0, 25));
    self clientfield::set("" + #"hash_7e6957dfc36e2214", 1);
    if (isdefined(self.var_1474d2ee)) {
        objective_setvisibletoall(self.var_1474d2ee);
    }
    if (isdefined(self.var_3aee78d5)) {
        self.var_3aee78d5 setvisibletoall();
    }
    if (isdefined(self.var_bfa7d4c5)) {
        objective_setinvisibletoall(self.var_bfa7d4c5);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0xa8e85502, Offset: 0x88a8
// Size: 0x5c
function function_22ba7285() {
    self endon(#"death", #"hash_4588a3de47c44f6f");
    self bobbing((0, 0, 1), 5, 2.2);
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0x43be2a3a, Offset: 0x8910
// Size: 0x64
function function_a93074b0() {
    if (isdefined(self)) {
        self thread function_f1ae312a();
        if (level.zm_hint_text zm_hint_text::is_open(self)) {
            level.zm_hint_text zm_hint_text::close(self);
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x2 linked
// Checksum 0x765e0a9d, Offset: 0x8980
// Size: 0x19c
function function_f1ae312a() {
    if (is_true(self.var_28107825) && !self util::is_spectating() && !self clientfield::get("phase_rift_player_fx")) {
        if (isdefined(self.var_67aa3392)) {
            self.var_67aa3392 zm_utility::function_747180ea(self.var_67aa3392.var_1474d2ee, undefined, self.var_67aa3392.var_3aee78d5);
        }
        self clientfield::set_to_player("" + #"hash_502dbbefce1f656c", 0);
        self.var_28107825 = 0;
        self.var_67aa3392 = undefined;
        if (isdefined(self.var_57e77903)) {
            self.var_57e77903 delete();
        } else {
            self detach(#"hash_18fe97c27ac7bf5b", "tag_stowed_back");
        }
        self notify(#"hash_6d2d12b8afe43c8e");
        self thread function_1a58f438();
        self thread function_bd0bc40b(0);
        if (isdefined(self)) {
            self playrumbleonentity("zm_interact_rumble");
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 2, eflags: 0x2 linked
// Checksum 0xce5399ea, Offset: 0x8b28
// Size: 0x440
function function_44ae8976(instance, activator) {
    if (isplayer(activator)) {
        instance notify(#"hash_3630518d6dc9aeda");
        instance thread namespace_7589cf5c::function_f10301b0();
        instance thread function_17f1d0f3();
        instance thread function_8d7bef8f();
        instance.var_5ea363c thread function_d3122380(instance);
        foreach (var_57e77903 in instance.var_53ba65b) {
            var_57e77903 thread function_5238fe78(instance);
            var_57e77903 thread function_6d863da0(instance);
            var_57e77903 thread function_6cbbd741(instance);
        }
        if (instance.targetname === #"hash_17f3ee07ca053ac8" || instance.targetname === #"hash_3b93357ae8f9a4e5" || instance.targetname === #"hash_c03d28393d74ee5" || instance.targetname === #"hash_1f8de1a22943c599" || instance.targetname === #"hash_20b26d60b0dab3a5" || instance.targetname === #"objective_zoo_retrieval" || instance.targetname === #"hash_b422045138dab00") {
            var_cdce8e6f = instance.contentgroups[#"hash_5819d8571ea7c838"][0];
            if (isdefined(var_cdce8e6f.script_noteworthy)) {
                instance flag::set(#"hash_12988a5a3e6a65d6");
                level.var_97e461d4 = var_cdce8e6f.script_noteworthy;
            }
        } else {
            namespace_7589cf5c::function_1e45b156(instance);
        }
        foreach (player in getplayers()) {
            level.var_31028c5d prototype_hud::function_7491d6c5(player, #"hash_69606c9e75f74ab0");
        }
        instance.n_max_zombies = function_d583b222();
        wait(6);
        foreach (player in getplayers()) {
            level.var_31028c5d prototype_hud::set_active_objective_string(player, #"hash_69606c9e75f74ab0");
            level.var_31028c5d prototype_hud::function_817e4d10(player, 2);
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xe117841d, Offset: 0x8f70
// Size: 0x2b4
function function_9c54feb0(instance) {
    instance endon(#"objective_ended");
    self.n_objective_id = gameobjects::get_next_obj_id();
    if (!isdefined(self.n_id)) {
        self.var_805ed574 = #"hash_449cd1c65196f3a8";
    } else {
        switch (self.n_id) {
        case 0:
            self.var_805ed574 = #"hash_3084c6ecc7696cb4";
            self.var_7017d40 = #"hash_2fc69f49d36f4c3c";
            self.var_11cf37e3 = #"hash_61f64747e0c7fd48";
            break;
        case 1:
            self.var_805ed574 = #"hash_3084c9ecc76971cd";
            self.var_7017d40 = #"hash_2fc6a249d36f5155";
            self.var_11cf37e3 = #"hash_61f64a47e0c80261";
            break;
        }
    }
    self thread function_b4184b43(instance);
    if (isdefined(self.n_id)) {
        objective_add(self.n_objective_id, "active", self, self.var_805ed574);
        objective_setprogress(self.n_objective_id, 1);
        self zm_utility::function_747180ea(self.n_objective_id, undefined, self.var_3aee78d5);
        self waittill(#"open");
        self zm_utility::function_48d9a9c9();
        gameobjects::release_obj_id(self.n_objective_id);
        objective_delete(self.n_objective_id);
        self waittill(#"ready");
        self.var_1474d2ee = gameobjects::get_next_obj_id();
        self zm_utility::function_747180ea(self.var_1474d2ee, undefined, self.var_3aee78d5);
        objective_add(self.var_1474d2ee, "active", self, self.var_7017d40);
        objective_setprogress(self.var_1474d2ee, 1);
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x383a544, Offset: 0x9230
// Size: 0x124
function function_b4184b43(instance) {
    self endon(#"death");
    instance waittill(#"objective_ended");
    if (instance flag::get(#"hash_12988a5a3e6a65d6")) {
        level.var_97e461d4 = undefined;
        instance flag::clear(#"hash_12988a5a3e6a65d6");
    }
    wait(0.1);
    if (isdefined(self.n_objective_id)) {
        objective_setinvisibletoall(self.n_objective_id);
    }
    if (isdefined(self.var_3aee78d5)) {
        self.var_3aee78d5 delete();
    }
    if (isdefined(self) && !is_true(self.var_2e5efdc7) && isdefined(self.n_id)) {
        self delete();
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0xc6b29061, Offset: 0x9360
// Size: 0x186
function function_aece4588(var_3afe334f) {
    switch (var_3afe334f) {
    case 1:
        var_e7a1cbae = #"objective_retrieval_ailist_1";
        break;
    case 2:
        var_e7a1cbae = #"objective_retrieval_ailist_2";
        break;
    case 3:
        var_e7a1cbae = #"objective_retrieval_ailist_3";
        break;
    case 4:
        var_e7a1cbae = #"objective_retrieval_ailist_4";
        break;
    case 5:
        var_e7a1cbae = #"objective_retrieval_ailist_5";
        break;
    case 6:
        var_e7a1cbae = #"objective_retrieval_ailist_6";
        break;
    case 7:
        var_e7a1cbae = #"objective_retrieval_ailist_7";
        break;
    default:
        var_e7a1cbae = #"objective_retrieval_ailist_8";
        break;
    }
    var_6017f33e = namespace_679a22ba::function_ca209564(var_e7a1cbae);
    return var_6017f33e.var_990b33df;
}

// Namespace objective_retrieval/objective_retrieval
// Params 3, eflags: 0x0
// Checksum 0x4d6e514e, Offset: 0x94f0
// Size: 0xce
function function_9732fce6(v_position, v_angles, n_index) {
    if (n_index == 0) {
        point = function_4ba8fde(#"item_survival_retrieve_canister_1");
    } else {
        point = function_4ba8fde(#"item_survival_retrieve_canister_2");
    }
    e_canister = item_drop::drop_item(n_index, undefined, 1, 0, point.id, v_position, v_angles, 0);
    e_canister.var_dd21aec2 = 1 | 16;
    return e_canister;
}

// Namespace objective_retrieval/objective_retrieval
// Params 1, eflags: 0x2 linked
// Checksum 0x88baa13, Offset: 0x95c8
// Size: 0x210
function function_eff08a36(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    foreach (vol in instance.a_vols) {
        if (self istouching(vol)) {
            self.vol = vol;
        }
    }
    while (true) {
        b_clear = 1;
        a_players = getplayers();
        foreach (player in a_players) {
            if (isdefined(self.vol) && isalive(player) && player istouching(self.vol)) {
                b_clear = 0;
            }
        }
        if (is_true(b_clear)) {
            instance.n_zombies--;
            self callback::callback(#"hash_10ab46b52df7967a");
        }
        wait(0.1);
    }
}

