// Atian COD Tools GSC CW decompiler test
#using script_113dd7f0ea2a1d4f;
#using script_4163291d6e693552;
#using script_12538a87a80a2978;
#using scripts\zm_common\zm_sq.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_intel.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using script_3411bb48d41bd3b;
#using script_3357acf79ce92f4b;
#using scripts\zm_common\objective_manager.gsc;
#using script_27347f09888ad15;
#using script_40fc784c60f9fa7b;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\item_drop.gsc;
#using script_1cd491b1807da8f7;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_bff7ce85;

// Namespace namespace_bff7ce85/level_init
// Params 1, eflags: 0x20
// Checksum 0x63e9ce95, Offset: 0x698
// Size: 0x2ec
function event_handler[level_init] main(*eventstruct) {
    objective_manager::register_script(#"hash_3386f30228d9a983", &init, &defend_start, #"defend", #"hash_2e632d14a18ddc0", #"hash_7a6bdc0af120a35f", 2, #"hash_568700cc399c09f0");
    clientfield::register("scriptmover", "" + #"hash_cd445ad9f4974c7", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_3c6d30dcb24fbef8", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_51c88d2d00905c2d", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_225aa48dd3b91fe7", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_5244004f911badae", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_3eeee7f3f5bdb9ff", 1, 1, "counter");
    clientfield::register("scriptmover", "" + #"hash_18bcf106c476dfeb", 1, 1, "counter");
    clientfield::register("scriptmover", "" + #"hash_186c35405f4624bc", 1, 2, "int");
    clientfield::register("vehicle", "" + #"vehicle_teleport", 1, 1, "counter");
    callback::on_item_pickup(&function_e1ea43c1);
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0x63a6554e, Offset: 0x990
// Size: 0x558
function init(instance) {
    foreach (s_instance in instance.contentgroups[#"console"]) {
        s_instance.var_a43a7410 = content_manager::spawn_script_model(s_instance.contentgroups[#"platform"][0], #"hash_35b9c02d1d33868f", 1);
        s_instance.mdl_console = content_manager::spawn_script_model(s_instance, #"hash_5cb2edd3633e3fdb", 1);
        s_instance.mdl_console.targetname = "defend_object";
        if (isdefined(s_instance.contentgroups[#"base"][0])) {
            instance.mdl_base = content_manager::spawn_script_model(s_instance.contentgroups[#"base"][0], s_instance.contentgroups[#"base"][0].model, 1);
        }
        s_instance.mdl_console.mdl_reward = s_instance.contentgroups[#"hash_41ae283ea203de66"][0];
        s_instance.mdl_console.var_559503f1 = s_instance.contentgroups[#"spawn_pt"];
        s_instance.mdl_console.var_a74eba1b = s_instance.contentgroups[#"spawn_dog"];
        s_instance.var_b416cb87 = s_instance.contentgroups[#"specimen"];
        if (isdefined(s_instance.contentgroups[#"attack_spot"])) {
            s_instance.mdl_console.var_b69e83ca = s_instance.contentgroups[#"attack_spot"];
        }
        if (isdefined(s_instance.contentgroups[#"hash_44a34791bb566cbc"])) {
            s_instance.a_s_blockers = s_instance.contentgroups[#"hash_44a34791bb566cbc"];
        }
    }
    if (isdefined(s_instance.a_s_blockers)) {
        instance.mdl_blocker = content_manager::spawn_script_model(s_instance.a_s_blockers[0], s_instance.a_s_blockers[0].model, 1);
    }
    if (isdefined(instance.contentgroups[#"blocker"])) {
        instance thread function_3a6b15fd();
    }
    instance.var_7a9e6505 = 1;
    instance.var_586c917d = array::random(s_instance.contentgroups[#"specimen"]);
    instance.var_43123efe = function_1f14f16f(instance.var_586c917d.origin, instance.var_586c917d.angles, 1);
    instance.var_43123efe ghost();
    level.var_2026156b = instance.var_586c917d.origin;
    instance.mdl_console = s_instance.mdl_console;
    instance.mdl_console function_41b29ff0(#"hash_46b1078a533a5a9f");
    instance.var_a43a7410 = s_instance.var_a43a7410;
    instance thread function_2cfaf9d7();
    instance thread function_15f3c92();
    instance thread function_7cf83691();
    instance thread function_cf55f07a();
    instance thread function_cd1515dc();
    if (instance.targetname === #"hash_4a1f96b194525b0") {
        instance thread function_bc04a76b();
    }
    instance thread namespace_7589cf5c::vo_start("objectiveDefendAnnounce", "objectiveDefendAnnounceResponse");
    instance thread function_1b438ea2();
    instance thread function_4065a0e0();
    level.var_e4731251 = getweapon("equip_head_sr");
    level.var_acd0f67e = 0;
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0x42fa8a38, Offset: 0xef0
// Size: 0x1d4
function function_4065a0e0() {
    self endon(#"objective_ended");
    var_35dfb407 = 0;
    while (!var_35dfb407) {
        a_players = getplayers();
        foreach (player in a_players) {
            if (distance2dsquared(player.origin, self.var_43123efe.origin) <= 1000000) {
                if (player util::is_looking_at(self.var_43123efe, 0.7, 0) || player util::is_looking_at(self.origin, 0.7, 1) || distance2dsquared(player.origin, self.var_43123efe.origin) <= 250000) {
                    var_35dfb407 = 1;
                    break;
                }
            }
        }
        wait(0.5);
    }
    level namespace_7589cf5c::play_vo("objectiveDefendApproach");
    wait(0.5);
    level namespace_7589cf5c::play_vo("objectiveDefendApproachResponse");
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0xe6fa16c6, Offset: 0x10d0
// Size: 0x152
function function_2cfaf9d7() {
    if (isdefined(self.var_586c917d.script_int)) {
        switch (self.var_586c917d.script_int) {
        case 1:
            showmiscmodels("defend_corpses_1");
            break;
        case 2:
            showmiscmodels("defend_corpses_2");
            break;
        case 3:
            showmiscmodels("defend_corpses_3");
            break;
        case 4:
            showmiscmodels("defend_corpses_4");
            break;
        case 5:
            showmiscmodels("defend_corpses_5");
            break;
        case 6:
            showmiscmodels("defend_corpses_6");
            break;
        }
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0xcac2456f, Offset: 0x1230
// Size: 0x724
function function_cf55f07a() {
    self endon(#"objective_ended");
    self.var_5cc2eee8 = util::spawn_model(#"hash_266d8b7b1d1bec85", self.mdl_console.origin, self.mdl_console.angles);
    self.var_b68642a4 = util::spawn_model(#"hash_1d9c052533aadd6f", self.mdl_console.origin, self.mdl_console.angles);
    self.var_f02db10e = util::spawn_model(#"hash_4c85eb6d915fab1f", self.mdl_console.origin, self.mdl_console.angles);
    self.var_ff2d00f3 = util::spawn_model(#"hash_277c746d8d5f86a9", self.mdl_console.origin, self.mdl_console.angles);
    self.var_171f635e = util::spawn_model(#"hash_198df127040f257c", self.mdl_console.origin, self.mdl_console.angles);
    self.var_854a6b87 = util::spawn_model(#"hash_4c85ec6d915facd2", self.mdl_console.origin, self.mdl_console.angles);
    self.var_be2f6224 = util::spawn_model(#"hash_55735273f06e9432", self.mdl_console.origin, self.mdl_console.angles);
    self.var_d3426a39 = util::spawn_model(#"hash_762f93017354f611", self.mdl_console.origin, self.mdl_console.angles);
    wait(0.1);
    if (isdefined(self.var_5cc2eee8)) {
        self.a_models[self.a_models.size] = self.var_5cc2eee8;
        self.var_5cc2eee8 thread function_a8cf448(self, #"activate", "" + #"hash_51c88d2d00905c2d", 1);
        self.var_5cc2eee8 thread function_62ff42e2(self, #"objective_ended", "" + #"hash_51c88d2d00905c2d", 0);
    }
    if (isdefined(self.var_b68642a4)) {
        self.a_models[self.a_models.size] = self.var_b68642a4;
        self.var_b68642a4 thread function_a8cf448(self, #"success", "" + #"hash_51c88d2d00905c2d", 0.1);
    }
    if (isdefined(self.var_ff2d00f3)) {
        self.a_models[self.a_models.size] = self.var_ff2d00f3;
        self.var_ff2d00f3 thread function_a8cf448(self, #"activate", "" + #"hash_cd445ad9f4974c7");
        self.var_ff2d00f3 thread function_62ff42e2(self, #"hash_4cd0b9e860275094", "" + #"hash_cd445ad9f4974c7", 0);
        self.var_ff2d00f3 thread function_62ff42e2(self, #"fail", "" + #"hash_cd445ad9f4974c7", 0);
    }
    if (isdefined(self.var_171f635e)) {
        self.a_models[self.a_models.size] = self.var_171f635e;
        self.var_171f635e thread function_a8cf448(self, #"hash_4cd0b9e860275094");
        self.var_171f635e thread function_62ff42e2(self, #"fail", "" + #"hash_cd445ad9f4974c7", 1);
    }
    if (isdefined(self.var_f02db10e)) {
        self.a_models[self.a_models.size] = self.var_f02db10e;
        self.var_f02db10e thread function_a8cf448(self, #"fail");
    }
    if (isdefined(self.var_be2f6224)) {
        self.a_models[self.a_models.size] = self.var_be2f6224;
        self.var_be2f6224 thread function_a8cf448(self, #"activate", "" + #"hash_3c6d30dcb24fbef8");
        self.var_be2f6224 thread function_62ff42e2(self, #"hash_4cd0bce8602755ad", "" + #"hash_3c6d30dcb24fbef8", 0);
        self.var_be2f6224 thread function_62ff42e2(self, #"fail", "" + #"hash_3c6d30dcb24fbef8", 0);
    }
    if (isdefined(self.var_d3426a39)) {
        self.a_models[self.a_models.size] = self.var_d3426a39;
        self.var_d3426a39 thread function_a8cf448(self, #"hash_4cd0bce8602755ad");
        self.var_d3426a39 thread function_62ff42e2(self, #"fail", "" + #"hash_3c6d30dcb24fbef8", 1);
    }
    if (isdefined(self.var_854a6b87)) {
        self.a_models[self.a_models.size] = self.var_854a6b87;
        self.var_854a6b87 thread function_a8cf448(self, #"fail");
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 4, eflags: 0x2 linked
// Checksum 0x12d4a7a5, Offset: 0x1960
// Size: 0xac
function function_a8cf448(instance, str_notify, str_clientfield, n_delay) {
    self endon(#"death");
    self hide();
    instance waittill(str_notify);
    if (isdefined(n_delay)) {
        wait(n_delay);
    }
    if (isdefined(str_clientfield)) {
        instance.mdl_console clientfield::set(str_clientfield, 1);
    }
    if (isdefined(self)) {
        self show();
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 4, eflags: 0x2 linked
// Checksum 0xe98e354c, Offset: 0x1a18
// Size: 0x94
function function_62ff42e2(instance, str_notify, str_clientfield, n_value) {
    self endon(#"death");
    instance waittill(str_notify);
    if (isdefined(str_clientfield) && isdefined(n_value)) {
        instance.mdl_console clientfield::set(str_clientfield, n_value);
    }
    waitframe(1);
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0xc92a4593, Offset: 0x1ab8
// Size: 0x6a
function function_17f1d0f3() {
    self.var_5e36739b = self namespace_7589cf5c::function_df911075();
    self.var_61c57c53 = self namespace_7589cf5c::function_1b53cdc7();
    self.var_5de17ec9 = self namespace_7589cf5c::function_56fa33d9();
    self.var_2133c784 = 0;
    self.var_b803db9c = 0;
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 3, eflags: 0x2 linked
// Checksum 0xee2cf516, Offset: 0x1b30
// Size: 0xda
function function_1f14f16f(v_position, v_angles = (0, 0, 0), b_initial) {
    point = function_4ba8fde(#"item_zmintel_survival_head_artifact_1");
    if (!isdefined(b_initial)) {
        if (!ispointonnavmesh(v_position)) {
            v_position = getclosestpointonnavmesh(v_position);
            if (!isdefined(v_position)) {
                v_position = level.var_2026156b;
            }
        }
    }
    e_head = item_drop::drop_item(0, undefined, 1, 0, point.id, v_position, v_angles, 0);
    return e_head;
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0x97185d6b, Offset: 0x1c18
// Size: 0x228
function function_e1ea43c1(params) {
    if (isplayer(self)) {
        item = params.item;
        if (item.itementry.name === #"item_zmintel_survival_head_artifact_1") {
            array::thread_all(function_a1ef346b(), &zm_intel::collect_intel, #"zmintel_survival_requiem_artifact_1");
            self thread function_c64d2826();
            self function_bc82f900("damage_light");
            if (isdefined(level.e_obj) && isdefined(level.e_obj.n_objective_id)) {
                level.e_obj zm_utility::function_48d9a9c9();
                objective_setinvisibletoall(level.e_obj.n_objective_id);
            }
            if (isdefined(level.var_11af7d74)) {
                objective_setvisibletoall(level.var_11af7d74);
            }
            foreach (player in getplayers()) {
                level.var_31028c5d prototype_hud::set_active_objective_string(player, #"hash_4546417366cc7a50");
                level.var_31028c5d prototype_hud::function_817e4d10(player, 2);
            }
        }
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0x3327587d, Offset: 0x1e48
// Size: 0x2d6
function function_c64d2826() {
    self endon(#"hash_31f98f1ef1f33ee1", #"disconnect");
    self allowedstances("stand");
    if (self getstance() === "prone" || self getstance() === "crouch") {
        self setstance("stand");
    }
    while (self getstance() !== "stand") {
        waitframe(1);
    }
    self allowedstances("stand", "crouch", "prone");
    self val::set(#"hash_5f4be7238bf3892b", "disable_weapon_cycling", 1);
    self giveweapon(level.var_e4731251);
    self switchtoweapon(level.var_e4731251, 1);
    self waittill(#"weapon_change_complete");
    wait(0.1);
    self thread function_f4b436d5();
    self.var_2941a093 = 1;
    level notify(#"hash_28c14046706f2648");
    callback::on_weapon_change(&function_2c951177);
    callback::function_33f0ddd3(&function_2056cd79);
    self thread function_50d04ccb();
    self val::reset(#"hash_5f4be7238bf3892b", "disable_weapon_cycling");
    self thread zm_equipment::show_hint_text(#"hash_303616f97ddfb53e", 10);
    level thread function_9c294ad5(self);
    self waittill(#"inserted");
    self.var_2941a093 = undefined;
    self notify(#"inserted", {#str_result:"placed"});
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0xbd3620ec, Offset: 0x2128
// Size: 0x134
function function_9c294ad5(e_player) {
    e_player endon(#"disconnect");
    s_result = e_player waittill(#"hash_31f98f1ef1f33ee1", #"fake_death", #"inserted");
    e_player allowedstances("stand", "crouch", "prone");
    e_player.var_2941a093 = undefined;
    callback::remove_on_weapon_change(&function_2c951177);
    callback::function_824d206(&function_2056cd79);
    e_player notify(#"hide_equipment_hint_text");
    if (s_result.str_result === "dropped" || s_result._notify == "fake_death") {
        e_player function_98957f5b();
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0xeef6cfa5, Offset: 0x2268
// Size: 0x230
function function_98957f5b() {
    level endon(#"end_game");
    v_start = self.origin + (0, 0, 32);
    v_end = self.origin - (0, 0, 1000);
    a_trace = groundtrace(v_start, v_end, 0, self, 1);
    v_ground = isdefined(a_trace[#"position"]) ? a_trace[#"position"] : self.origin;
    self playsound(#"evt_sr_obj_def_head_drop");
    level.e_head = level function_1f14f16f(v_ground + (0, 0, 8));
    if (isdefined(level.e_head)) {
        level.e_head.var_dd21aec2 = 1 | 16 | 134217728 | 268435456;
        level.e_head thread function_beaa3f66();
    }
    foreach (player in getplayers()) {
        level.var_31028c5d prototype_hud::set_active_objective_string(player, #"hash_64bcb1aa0613610d");
        level.var_31028c5d prototype_hud::function_817e4d10(player, 2);
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0x2de11d69, Offset: 0x24a0
// Size: 0x76
function function_50d04ccb() {
    self endon(#"disconnect", #"hash_31f98f1ef1f33ee1", #"fake_death");
    self waittill(#"craft_item");
    self notify(#"hash_31f98f1ef1f33ee1", {#str_result:"dropped"});
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0xd3da375f, Offset: 0x2520
// Size: 0x36
function function_2c951177(*s_params) {
    self notify(#"hash_31f98f1ef1f33ee1", {#str_result:"dropped"});
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0xc42448dc, Offset: 0x2560
// Size: 0xce
function function_2056cd79(s_event) {
    w_weapon = s_event.weapon;
    if (w_weapon.inventorytype === "ability" || w_weapon.inventorytype === "offhand") {
        return;
    }
    if (s_event.event === "take_weapon" && (w_weapon.inventorytype === "offhand" || w_weapon.inventorytype === "offhand_primary")) {
        return;
    }
    self notify(#"hash_31f98f1ef1f33ee1", {#str_result:"dropped"});
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0xcaecd08f, Offset: 0x2638
// Size: 0x19c
function function_f4b436d5() {
    self endon(#"disconnect");
    self.is_drinking = 1;
    self val::set(#"hash_5f4be7238bf3892b", "disable_weapon_fire", 1);
    self val::set(#"hash_5f4be7238bf3892b", "allow_melee", 0);
    self val::set(#"hash_5f4be7238bf3892b", "allow_sprint", 0);
    self val::set(#"hash_5f4be7238bf3892b", "allow_jump", 0);
    self waittill(#"hash_31f98f1ef1f33ee1", #"inserted");
    self.is_drinking = 0;
    self val::reset(#"hash_5f4be7238bf3892b", "disable_weapon_fire");
    self val::reset(#"hash_5f4be7238bf3892b", "allow_melee");
    self val::reset(#"hash_5f4be7238bf3892b", "allow_sprint");
    self val::reset(#"hash_5f4be7238bf3892b", "allow_jump");
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0x1b3b45d5, Offset: 0x27e0
// Size: 0x1ac
function function_1b438ea2() {
    self endon(#"objective_ended");
    self waittill(#"hash_17c21fa8ca15c918");
    self thread function_a56e1736();
    wait(1);
    level namespace_7589cf5c::play_vo("objectiveDefendStart");
    playsoundatposition(#"hash_1fe69eb0d3391a76", self.mdl_console.origin);
    wait(1);
    level namespace_7589cf5c::play_vo("objectiveDefendStartResponse");
    self flag::set(#"hash_5afa3625eb7ee268");
    self waittill(#"wave_start");
    playsoundatposition(#"hash_1fe69eb0d3391a76", self.mdl_console.origin);
    level namespace_7589cf5c::play_vo("objectiveDefendWave2");
    self waittill(#"wave_start");
    playsoundatposition(#"hash_1fe69eb0d3391a76", self.mdl_console.origin);
    level namespace_7589cf5c::play_vo("objectiveDefendWave3");
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0xb869e417, Offset: 0x2998
// Size: 0x6c
function function_a56e1736() {
    self endon(#"objective_ended");
    self waittill(#"hash_295695008869aed5");
    self flag::wait_till(#"hash_5afa3625eb7ee268");
    level namespace_7589cf5c::play_vo("objectiveDefendUnderAttack");
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0xd81a3b8e, Offset: 0x2a10
// Size: 0x258
function function_15f3c92() {
    self endon(#"objective_ended");
    self.mdl_console endon(#"death");
    if (isdefined(self.mdl_base)) {
        self.mdl_base setscale(1.55);
    }
    self.mdl_console.var_c54337b2 = zm_utility::function_f5a222a8(#"hash_69a419877aee1334", self.mdl_console.origin + (0, 0, 70));
    objective_setinvisibletoall(self.mdl_console.var_c54337b2);
    self waittill(#"inserted");
    self.var_43123efe = util::spawn_model("c_t9_zmb_defense_console_head1_male", self.mdl_console.origin + (0, 0, 46), self.mdl_console.angles);
    if (isdefined(self.var_43123efe)) {
        self.var_43123efe show();
        self.var_43123efe thread scene::play(#"aib_t9_zm_sr_vign_cust_defend_head", "tank_loop", self.var_43123efe);
    }
    wait(0.5);
    foreach (player in getplayers()) {
        if (isdefined(player) && player hasweapon(level.var_e4731251)) {
            player takeweapon(level.var_e4731251);
        }
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0x76d12cdd, Offset: 0x2c70
// Size: 0x180
function function_3a6b15fd() {
    if (isdefined(self.contentgroups[#"blocker"])) {
        self.a_mdl_blockers = [];
        foreach (s_blocker in self.contentgroups[#"blocker"]) {
            self.a_mdl_blockers[self.a_mdl_blockers.size] = content_manager::spawn_script_model(s_blocker, s_blocker.model, 1);
        }
        foreach (mdl_blocker in self.a_mdl_blockers) {
            mdl_blocker disconnectpaths();
            mdl_blocker ghost();
        }
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0x43b48bd3, Offset: 0x2df8
// Size: 0x120
function function_bc04a76b() {
    self endon(#"objective_ended");
    self waittill(#"inserted");
    wait(1);
    var_b54d7065 = getdynentarray("dynent_garage_button");
    doors = array::get_all_closest(self.origin, var_b54d7065, undefined, 4, self.script_radius);
    foreach (door in doors) {
        if (!function_ffdbe8c2(door)) {
            dynent_use::use_dynent(door);
        }
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0x4beeee2f, Offset: 0x2f20
// Size: 0x2ac
function function_f5087df2() {
    s_result = self waittill(#"objective_ended", #"hash_8202877a3aadac8");
    objective_manager::stop_timer();
    foreach (player in getplayers()) {
        level.var_31028c5d prototype_hud::function_817e4d10(player, 0);
    }
    if (self flag::get(#"hash_12988a5a3e6a65d6")) {
        level.var_97e461d4 = undefined;
        self flag::clear(#"hash_12988a5a3e6a65d6");
    }
    if (is_true(self.success)) {
        level thread namespace_cda50904::function_a92a93e9(self.mdl_console.mdl_reward.origin, self.mdl_console.mdl_reward.angles);
        self.mdl_console clientfield::increment("" + #"hash_3eeee7f3f5bdb9ff");
        self.mdl_console playrumbleonentity("sr_prototype_generator_explosion");
        waitframe(1);
        namespace_7589cf5c::function_3899cfea();
        wait(2);
        level namespace_7589cf5c::play_vo("objectiveDefendEnd");
        wait(1);
        level thread namespace_7589cf5c::play_vo("objectiveDefendEndResponse");
        level flag::set(#"hash_1460b3afd614fb6c");
        return;
    }
    if (s_result._notify !== #"hash_8202877a3aadac8") {
        self.mdl_console thread function_b11358ce();
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 2, eflags: 0x2 linked
// Checksum 0xb1c4b718, Offset: 0x31d8
// Size: 0x260
function defend_start(instance, activator) {
    instance endon(#"objective_ended");
    if (isplayer(activator)) {
        instance thread function_f5087df2();
        instance thread function_17f1d0f3();
        instance thread namespace_7589cf5c::function_f10301b0();
        instance.mdl_console thread function_b9fb6c3a(instance);
        instance.mdl_console thread function_677356aa(instance);
        instance.mdl_console thread clear_vehicles(instance);
        instance.mdl_console thread function_e132cdc7(instance);
        instance notify(#"hash_17c21fa8ca15c918");
        level notify(#"defend_start");
        var_cdce8e6f = instance.contentgroups[#"hash_5819d8571ea7c838"][0];
        if (isdefined(var_cdce8e6f.script_noteworthy)) {
            instance flag::set(#"hash_12988a5a3e6a65d6");
            level.var_97e461d4 = var_cdce8e6f.script_noteworthy;
        }
        foreach (player in getplayers()) {
            level.var_31028c5d prototype_hud::set_active_objective_string(player, #"hash_237b8c297f7c5730");
            level.var_31028c5d prototype_hud::function_817e4d10(player, 2);
        }
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0xade1af5d, Offset: 0x3440
// Size: 0x21c
function function_e132cdc7(instance) {
    wait(1);
    self clientfield::set("" + #"hash_225aa48dd3b91fe7", 1);
    wait(0.5);
    self clientfield::set("" + #"hash_5244004f911badae", 1);
    wait(0.25);
    instance notify(#"activate");
    self scene::play(#"p9_sur_computer_console_01_dest_bundle", "Shot 1", self);
    self playrumblelooponentity("sr_machinery_rumble");
    self thread scene::play(#"p9_sur_computer_console_01_dest_bundle", "Shot 2", self);
    instance waittill(#"objective_ended");
    if (instance.success) {
        instance notify(#"success");
        self clientfield::set("" + #"hash_225aa48dd3b91fe7", 0);
        if (isdefined(instance.var_43123efe)) {
            instance.var_43123efe delete();
        }
    } else {
        instance notify(#"fail");
    }
    wait(1);
    self scene::stop();
    self scene::play(#"p9_sur_computer_console_01_dest_bundle", "Shot 3", self);
    self stoprumble("sr_machinery_rumble");
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0xdc9ab204, Offset: 0x3668
// Size: 0xb4
function function_9c54feb0(instance) {
    self.n_objective_id = zm_utility::function_f5a222a8(#"hash_48db6906777e28d6", self.origin + (0, 0, 70));
    self thread function_80ba1bc8(instance, self.n_objective_id);
    instance waittill(#"objective_ended");
    zm_utility::function_bc5a54a8(self.n_objective_id);
    zm_utility::function_bc5a54a8(self.var_c54337b2);
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0x7ec2d1cf, Offset: 0x3728
// Size: 0x3bc
function function_7cf83691() {
    self endon(#"objective_ended");
    self.var_4272a188 triggerenable(0);
    objective_setinvisibletoall(self.var_e55c8b4e);
    self thread function_5839db26();
    var_43123efe = self.var_43123efe;
    var_43123efe show();
    var_43123efe playloopsound(#"hash_565396befc27a397");
    level.e_obj = util::spawn_model("tag_origin", self.mdl_console.origin);
    n_objective_id = zm_utility::function_f5a222a8(#"hash_2e632d14a18ddc0", level.e_obj);
    b_proximity = 0;
    while (true) {
        foreach (player in getplayers()) {
            if (distance2dsquared(level.e_obj.origin, player.origin) <= sqr(3000)) {
                b_proximity = 1;
            }
        }
        if (b_proximity) {
            break;
        }
        wait(1);
    }
    level.e_obj moveto(var_43123efe.origin, 0.05);
    zm_utility::function_bc5a54a8(n_objective_id);
    level.e_obj.n_objective_id = zm_utility::function_f5a222a8(#"hash_a7e9aa24c3b886d", level.e_obj);
    level.e_obj zm_utility::function_747180ea(level.e_obj.n_objective_id, 96);
    level waittill(#"hash_28c14046706f2648");
    if (isdefined(self.var_43123efe)) {
        self.var_43123efe stoploopsound();
    }
    self notify(#"pickup");
    level.e_obj zm_utility::function_48d9a9c9();
    objective_setinvisibletoall(level.e_obj.n_objective_id);
    self thread function_57cc3128();
    self waittill(#"inserted");
    zm_utility::function_bc5a54a8(level.e_obj.n_objective_id);
    callback::remove_callback(#"on_item_pickup", &function_e1ea43c1);
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0x93cdba1f, Offset: 0x3af0
// Size: 0xec
function function_beaa3f66() {
    level endon(#"defend_start", #"hash_28c14046706f2648");
    self endon(#"death");
    level.e_obj moveto(self.origin, 0.05);
    level.e_obj waittill(#"movedone");
    level.e_obj zm_utility::function_747180ea(level.e_obj.n_objective_id, 96);
    objective_setvisibletoall(level.e_obj.n_objective_id);
    objective_setinvisibletoall(level.var_11af7d74);
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0x232116bc, Offset: 0x3be8
// Size: 0x3fa
function function_57cc3128() {
    self endon(#"objective_ended", #"inserted");
    mdl_console = self.mdl_console;
    level.var_11af7d74 = zm_utility::function_f5a222a8(#"hash_39f360c41bb85464", mdl_console.origin + (0, 0, 30));
    var_7631cbaa = spawn("trigger_radius_use", mdl_console.origin + (0, 0, 24), 0, 96, 96, 1);
    var_7631cbaa triggerignoreteam();
    var_7631cbaa setcursorhint("HINT_NOICON");
    var_7631cbaa sethintstring(#"hash_6442cecaf6cfb0dc");
    var_7631cbaa usetriggerrequirelookat(1);
    var_7631cbaa thread function_c4712107();
    mdl_console zm_utility::function_747180ea(level.var_11af7d74, undefined, var_7631cbaa);
    while (true) {
        s_result = var_7631cbaa waittill(#"trigger");
        if (isalive(s_result.activator) && s_result.activator hasweapon(level.var_e4731251) && is_true(s_result.activator.var_2941a093)) {
            s_result.activator notify(#"inserted");
            s_result.activator function_bc82f900("damage_heavy");
            if (isdefined(s_result.activator) && s_result.activator hasweapon(level.var_e4731251)) {
                if (s_result.activator hasweapon(level.var_e4731251)) {
                    s_result.activator takeweapon(level.var_e4731251);
                }
            }
            var_7631cbaa delete();
            mdl_console zm_utility::function_48d9a9c9();
            zm_utility::function_bc5a54a8(level.var_11af7d74);
            foreach (player in getplayers()) {
                level.var_31028c5d prototype_hud::function_817e4d10(player, 0);
            }
            self.var_4272a188 triggerenable(1);
            self.var_4272a188 useby(s_result.activator);
            self notify(#"inserted");
        }
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0x3a1cd588, Offset: 0x3ff0
// Size: 0x14c
function function_c4712107() {
    self endon(#"death");
    while (true) {
        foreach (player in getplayers()) {
            if (player hasweapon(level.var_e4731251)) {
                self setvisibletoplayer(player);
                if (player istouching(self)) {
                    player notify(#"hide_equipment_hint_text");
                } else {
                    player thread zm_equipment::show_hint_text(#"hash_303616f97ddfb53e", 10);
                }
                continue;
            }
            self setinvisibletoplayer(player);
        }
        wait(0.5);
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0x779b6a4b, Offset: 0x4148
// Size: 0x144
function function_5839db26() {
    self endon(#"objective_ended");
    n_spawns = randomintrange(2, 5);
    a_s_pts = namespace_85745671::function_e4791424(self.var_43123efe.origin, 32, 80, 400);
    for (i = 0; i < n_spawns; i++) {
        level flag::wait_till("spawn_zombies");
        if (isdefined(a_s_pts[i])) {
            var_7ecdee63 = function_2631fff1(self, level.var_b48509f9);
            ai_spawned = namespace_85745671::function_9d3ad056(var_7ecdee63, a_s_pts[i].origin, self.var_43123efe.angles, "defend_zombie");
            if (isdefined(ai_spawned)) {
                ai_spawned.var_a950813d = 1;
            }
        }
        wait(0.1);
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0x56334356, Offset: 0x4298
// Size: 0x9c
function function_5f91d0c7(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    self thread function_9c54feb0(instance);
    level thread objective_manager::start_timer(180, "defend");
    instance thread function_c043100e(180);
    instance thread function_b3615a60();
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0x6cd976d4, Offset: 0x4340
// Size: 0x5e
function function_c043100e(n_time) {
    self endon(#"objective_ended");
    while (true) {
        if (n_time == 60) {
        }
        if (n_time == 30) {
            return;
        }
        wait(1);
        n_time -= 1;
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0x42817bb8, Offset: 0x43a8
// Size: 0x344
function function_677356aa(instance) {
    instance endon(#"objective_ended");
    self playsound(#"hash_67cbf2e985e3d9aa");
    instance waittill(#"activate");
    level flag::set("obj_defend_start");
    self thread function_763876af(instance);
    self thread function_5f91d0c7(instance);
    a_players = getplayers();
    n_players = a_players.size;
    switch (n_players) {
    case 1:
        var_fd6a4001 = 5;
        var_102fe58c = 6;
        var_3b743c0c = 7;
        var_7dbbc09a = 10;
        break;
    case 2:
        var_fd6a4001 = 7;
        var_102fe58c = 9;
        var_3b743c0c = 11;
        var_7dbbc09a = 15;
        break;
    case 3:
        var_fd6a4001 = 9;
        var_102fe58c = 12;
        var_3b743c0c = 14;
        var_7dbbc09a = 18;
        break;
    case 4:
        var_fd6a4001 = 12;
        var_102fe58c = 14;
        var_3b743c0c = 16;
        var_7dbbc09a = 22;
        break;
    }
    self thread function_34ac205(instance, var_fd6a4001, self.var_559503f1, 1);
    wait(30 - randomintrangeinclusive(10, 20));
    self thread function_22281e97(instance);
    instance waittill(#"wave_start");
    self thread function_34ac205(instance, var_102fe58c, self.var_559503f1, 2);
    wait(30 - randomintrangeinclusive(10, 20));
    self thread function_22281e97(instance);
    instance waittill(#"wave_start");
    self thread function_34ac205(instance, var_3b743c0c, self.var_559503f1, 3);
    self thread function_22281e97(instance);
    instance waittill(#"wave_start");
    self thread function_34ac205(instance, var_7dbbc09a, self.var_559503f1, 4);
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0xd6495ee6, Offset: 0x46f8
// Size: 0xa6
function function_b3615a60() {
    self endon(#"objective_ended");
    wait(30);
    self notify(#"hash_7729c6e7911b801d");
    wait(15);
    self notify(#"wave_start");
    wait(30);
    self notify(#"hash_7729c6e7911b801d");
    wait(15);
    self notify(#"wave_start");
    wait(30);
    self notify(#"hash_7729c6e7911b801d");
    wait(15);
    self notify(#"wave_start");
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 2, eflags: 0x0
// Checksum 0x7890d363, Offset: 0x47a8
// Size: 0xf2
function function_a2254b83(instance, n_time) {
    instance endon(#"objective_ended", #"hash_7729c6e7911b801d");
    self endon(#"death");
    n_count = 0;
    while (true) {
        a_ai_zombies = getentarray("defend_zombie", "targetname");
        if (!isdefined(a_ai_zombies) || a_ai_zombies.size < 3) {
            instance notify(#"hash_7729c6e7911b801d");
        } else {
            n_count++;
            if (n_count >= n_time) {
                instance notify(#"hash_7729c6e7911b801d");
            }
        }
        wait(1);
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0x6f340209, Offset: 0x48a8
// Size: 0xf2
function function_809b1986(*goalpos) {
    if (isdefined(level.contentmanager.currentdestination) && level.contentmanager.currentdestination.targetname === "destination_ski") {
        if (isdefined(level.contentmanager.activeobjective.origin)) {
            var_82bf669e = 490000;
            if (distancesquared(self.origin, level.contentmanager.activeobjective.origin) > var_82bf669e) {
                self.var_a44ca810 = 250;
                self.var_62561fdc = 500;
                self.var_cfb82e92 = 4;
                return;
            }
            self.var_a44ca810 = undefined;
            self.var_62561fdc = undefined;
        }
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0x42036d92, Offset: 0x49a8
// Size: 0x5c
function function_fd68cae4() {
    self endon(#"death");
    if (self.archetype == #"zombie") {
        if (level.var_b48509f9 < 5) {
            self namespace_85745671::function_9758722("sprint");
        }
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0xce466cd7, Offset: 0x4a10
// Size: 0xb0
function function_a8ef97e6() {
    self endon(#"death");
    while (true) {
        player = awareness::function_d7fedde2(self);
        if (isalive(player)) {
            self.var_ff290a61 = player;
            awareness::function_c241ef9a(self, player, 11);
            wait(10);
        }
        if (isdefined(self.attackable)) {
            namespace_85745671::function_2b925fa5(self);
        }
        wait(0.1);
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0x6bc9843c, Offset: 0x4ac8
// Size: 0x15e
function function_bf606a73() {
    self endon(#"death");
    self callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_fd68cae4);
    self flag::set(#"hash_52d6a75cdbf101f3");
    self.var_40e7d5fb = &function_809b1986;
    while (true) {
        player = awareness::function_d7fedde2(self);
        if (math::cointoss(25)) {
            if (isalive(player)) {
                self.var_ff290a61 = player;
            }
        }
        namespace_85745671::function_744beb04(self);
        if (!isdefined(self.var_b238ef38) && isalive(player)) {
            self.var_b7e90547 = 1;
            awareness::function_c241ef9a(self, player, 11);
        }
        wait(5);
        self.var_ff290a61 = undefined;
        self.var_b7e90547 = undefined;
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 4, eflags: 0x2 linked
// Checksum 0x44d6887c, Offset: 0x4c30
// Size: 0x40a
function function_34ac205(instance, n_active, var_559503f1, n_wave) {
    instance endon(#"objective_ended", #"hash_7729c6e7911b801d");
    self endon(#"death");
    instance.n_wave = n_wave;
    instance.n_active = 0;
    n_delay = 1 / n_wave * 3;
    a_s_locs = instance function_94e50668(var_559503f1, n_wave);
    a_s_pts = array::randomize(a_s_locs);
    while (true) {
        level flag::wait_till("spawn_zombies");
        if (instance.n_active < n_active) {
            if (!a_s_pts.size) {
                a_s_pts = array::randomize(a_s_locs);
            }
            s_loc = a_s_pts[0];
            arrayremovevalue(a_s_pts, a_s_pts[0]);
            var_7ecdee63 = function_2631fff1(instance, level.var_b48509f9);
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
                if (instance.var_2133c784 >= instance.var_61c57c53 || instance.var_b803db9c >= instance.var_5de17ec9 || n_wave === 1) {
                    var_7ecdee63 = namespace_7589cf5c::function_b9e4c169();
                }
            }
            ai_spawned = namespace_85745671::function_9d3ad056(var_7ecdee63, s_loc.origin, s_loc.angles, "defend_zombie");
            if (isdefined(ai_spawned)) {
                ai_spawned.var_a950813d = 1;
                if (namespace_7589cf5c::function_82e262cf(ai_spawned.aitype)) {
                    instance.var_38c710c3 = float(gettime()) / 1000;
                    instance.var_2133c784++;
                    instance.var_b803db9c++;
                    ai_spawned callback::function_d8abfc3d(#"on_ai_killed", &function_c36cb7b1);
                } else {
                    ai_spawned callback::function_d8abfc3d(#"on_ai_killed", &function_b3791df9);
                }
                if (ai_spawned.aitype === #"spawner_bo5_abom" || ai_spawned.aitype === #"hash_469e4baceeaf38f5") {
                    ai_spawned thread function_a8ef97e6();
                } else {
                    ai_spawned thread function_bf606a73();
                }
                instance.n_active++;
            }
        }
        wait(n_delay);
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0x2610d270, Offset: 0x5048
// Size: 0x60
function function_c36cb7b1(*params) {
    if (isdefined(level.contentmanager.activeobjective) && level.contentmanager.activeobjective.var_b803db9c) {
        level.contentmanager.activeobjective.var_b803db9c--;
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0xdc4c4950, Offset: 0x50b0
// Size: 0x60
function function_b3791df9(*instance) {
    if (isdefined(level.contentmanager.activeobjective) && level.contentmanager.activeobjective.n_active) {
        level.contentmanager.activeobjective.n_active--;
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0x7883f4d7, Offset: 0x5118
// Size: 0x248
function function_22281e97(instance) {
    instance endon(#"objective_ended", #"hash_49d2713028fdc353");
    self endon(#"death");
    n_players = getplayers().size;
    n_total = function_b37294d5(n_players);
    a_s_pts = array::randomize(self.var_a74eba1b);
    i = 0;
    if (level.var_b48509f9 < 2) {
        var_ac011846 = #"objective_dog_molotov_ailist";
    } else if (math::cointoss()) {
        var_ac011846 = #"objective_dog_molotov_ailist";
    } else {
        var_ac011846 = #"objective_dog_plague_ailist";
    }
    for (j = 0; j < n_total; j++) {
        level flag::wait_till("spawn_zombies");
        var_6017f33e = namespace_679a22ba::function_ca209564(var_ac011846);
        var_7ecdee63 = var_6017f33e.var_990b33df;
        ai_spawned = namespace_85745671::function_9d3ad056(var_7ecdee63, a_s_pts[i].origin, a_s_pts[i].angles, "defend_zombie");
        if (isdefined(ai_spawned)) {
            ai_spawned.var_a950813d = 1;
            ai_spawned thread function_bf606a73();
            ai_spawned callback::function_d8abfc3d(#"on_ai_killed", &on_dog_killed);
        }
        i++;
        if (i >= a_s_pts.size - 1) {
            i = 0;
        }
        wait(0.5);
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0xe28d5c35, Offset: 0x5368
// Size: 0xe4
function on_dog_killed(*params) {
    mdl_console = getent("defend_object", "targetname");
    if (self.aitype === #"hash_7a8b592728eec95d" && isdefined(mdl_console)) {
        if (isdefined(self) && isdefined(mdl_console) && distance2dsquared(self.origin, mdl_console.origin) <= sqr(200)) {
            n_dmg = 50;
            mdl_console dodamage(n_dmg, mdl_console.origin, undefined, undefined, undefined, "MOD_UNKNOWN");
        }
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0x409eec29, Offset: 0x5458
// Size: 0x9e
function function_b37294d5(n_players) {
    switch (n_players) {
    case 1:
        var_e00b0988 = 4;
        break;
    case 2:
        var_e00b0988 = 6;
        break;
    case 3:
        var_e00b0988 = 8;
        break;
    case 4:
        var_e00b0988 = 10;
        break;
    }
    return var_e00b0988;
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 2, eflags: 0x2 linked
// Checksum 0x403efce0, Offset: 0x5500
// Size: 0x1ba
function function_2631fff1(*instance, var_661691aa) {
    switch (var_661691aa) {
    case 1:
        var_6017f33e = namespace_679a22ba::function_ca209564(#"objective_defend_ailist_1");
        break;
    case 2:
        var_6017f33e = namespace_679a22ba::function_ca209564(#"objective_defend_ailist_2");
        break;
    case 3:
        var_6017f33e = namespace_679a22ba::function_ca209564(#"objective_defend_ailist_3");
        break;
    case 4:
        var_6017f33e = namespace_679a22ba::function_ca209564(#"objective_defend_ailist_4");
        break;
    case 5:
        var_6017f33e = namespace_679a22ba::function_ca209564(#"objective_defend_ailist_5");
        break;
    case 6:
        var_6017f33e = namespace_679a22ba::function_ca209564(#"objective_defend_ailist_6");
        break;
    default:
        var_6017f33e = namespace_679a22ba::function_ca209564(#"objective_defend_ailist_7");
        break;
    }
    return var_6017f33e.var_990b33df;
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 2, eflags: 0x2 linked
// Checksum 0xa0c7fccb, Offset: 0x56c8
// Size: 0x1c2
function function_94e50668(a_s_pts, n_wave) {
    var_559503f1 = [];
    foreach (s_pt in a_s_pts) {
        if (n_wave == 4) {
            if (s_pt.script_int === 4) {
                var_559503f1[var_559503f1.size] = s_pt;
            }
            continue;
        }
        if (n_wave == 1) {
            if (s_pt.script_int === 1) {
                var_559503f1[var_559503f1.size] = s_pt;
            }
            continue;
        }
        if (n_wave == 2) {
            if (s_pt.script_int === 1 || s_pt.script_int === 2) {
                var_559503f1[var_559503f1.size] = s_pt;
            }
            continue;
        }
        if (n_wave == 3) {
            if (s_pt.script_int === 1 || s_pt.script_int === 2 || s_pt.script_int === 3) {
                var_559503f1[var_559503f1.size] = s_pt;
            }
            continue;
        }
        var_559503f1 = a_s_pts;
    }
    if (!isdefined(var_559503f1)) {
        return a_s_pts;
    }
    var_559503f1 = array::randomize(var_559503f1);
    return var_559503f1;
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0x7ef70cf2, Offset: 0x5898
// Size: 0x2cc
function function_763876af(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    self thread function_b70e2a37(instance);
    if (isdefined(self.var_b69e83ca)) {
        foreach (attackpt in self.var_b69e83ca) {
            space = 20;
            if (ispointonnavmesh(attackpt.origin, space)) {
                attackpt.on_navmesh = 1;
                continue;
            }
            pt = getclosestpointonnavmesh(attackpt.origin, 100, space);
            if (isdefined(pt)) {
                var_4f675db4 = struct::spawn(pt);
                self.var_b69e83ca[self.var_b69e83ca.size] = var_4f675db4;
            }
        }
    } else {
        slots = namespace_85745671::function_bdb2b85b(self, self.origin, self.angles, 40, 5, 16);
    }
    slots = self.var_b69e83ca;
    if (!isdefined(slots) || slots.size <= 0) {
        return;
    }
    self.var_b79a8ac7 = {#var_f019ea1a:6000, #slots:slots};
    level.attackables[level.attackables.size] = self;
    level waittill(#"timer_defend");
    if (isdefined(self.health) && isdefined(self.max_health) && self.health / self.max_health >= 0.8) {
        level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"defend_pristine_zm", #allplayers:1});
    }
    objective_manager::objective_ended(instance);
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0x10b50a99, Offset: 0x5b70
// Size: 0x4c
function function_b11358ce() {
    self clientfield::increment("" + #"hash_3eeee7f3f5bdb9ff");
    self playrumbleonentity("sr_prototype_generator_explosion");
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0xe0f978d0, Offset: 0x5bc8
// Size: 0x3c
function function_b70e2a37(instance) {
    instance waittill(#"objective_ended");
    namespace_85745671::function_b70e2a37(self);
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0x48933975, Offset: 0x5c10
// Size: 0x38c
function function_b9fb6c3a(instance) {
    instance endon(#"objective_ended");
    switch (getplayers().size) {
    case 1:
        self.health = 2500;
        self.max_health = 2500;
        break;
    case 2:
        self.health = 2400;
        self.max_health = 2400;
        break;
    case 3:
        self.health = 2200;
        self.max_health = 2200;
        break;
    case 4:
        self.health = 2000;
        self.max_health = 2000;
        break;
    }
    self.var_aa4b496 = 0;
    self.var_792df3e7 = 0;
    self val::set("defend", "takedamage", 1);
    self thread function_51779021(instance, 3, 10);
    instance.var_5b5e7a56 = 0;
    instance.var_319626c6 = 0;
    while (true) {
        s_result = self waittill(#"damage");
        if (isdefined(s_result.attacker) && isplayer(s_result.attacker)) {
            if (isdefined(s_result.amount)) {
                self.health += s_result.amount;
            }
        } else if (!isplayer(s_result.attacker)) {
            if (!self.var_792df3e7) {
                self.var_792df3e7 = 1;
                instance notify(#"hash_295695008869aed5");
            }
            if (!self.var_aa4b496) {
                self thread function_43a1096c();
            }
            self clientfield::increment("" + #"hash_18bcf106c476dfeb");
            if (s_result.part_name === "tag_screens_01_d0") {
                instance.var_5b5e7a56++;
                if (instance.var_5b5e7a56 >= 3) {
                    instance notify(#"hash_4cd0b9e860275094");
                }
            } else if (s_result.part_name === "tag_screens_02_d0" || s_result.part_name === "tag_tech_d0") {
                instance.var_319626c6++;
                if (instance.var_319626c6 >= 3) {
                    instance notify(#"hash_4cd0bce8602755ad");
                }
            }
        }
        if (self.health <= 0) {
            break;
        }
    }
    self clientfield::set("" + #"hash_5244004f911badae", 0);
    objective_manager::objective_ended(instance, 0);
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0xedad00f2, Offset: 0x5fa8
// Size: 0x13e
function function_43a1096c() {
    self endon(#"death");
    self.var_aa4b496 = 1;
    for (n_count = 0; n_count < 16; n_count++) {
        if (isdefined(self.n_objective_id) && isdefined(self.var_c54337b2)) {
            objective_setinvisibletoall(self.n_objective_id);
            objective_setvisibletoall(self.var_c54337b2);
        }
        wait(0.25);
        if (isdefined(self.n_objective_id) && isdefined(self.var_c54337b2)) {
            objective_setvisibletoall(self.n_objective_id);
            objective_setinvisibletoall(self.var_c54337b2);
        }
        wait(0.25);
    }
    if (isdefined(self.n_objective_id) && isdefined(self.var_c54337b2)) {
        objective_setvisibletoall(self.n_objective_id);
        objective_setinvisibletoall(self.var_c54337b2);
    }
    self.var_aa4b496 = 0;
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 3, eflags: 0x2 linked
// Checksum 0x82eb085c, Offset: 0x60f0
// Size: 0x166
function function_51779021(instance, var_63e8f3af = 3, var_321cde74 = 10) {
    instance endon(#"objective_ended");
    self endon(#"death");
    var_3057025e = 0;
    for (var_1a944fca = gettime(); true; var_1a944fca = gettime()) {
        s_result = self waittill(#"damage");
        if (self.health <= 0) {
            break;
        }
        if (isai(s_result.attacker)) {
            var_c4bac09b = gettime() - var_1a944fca;
            if (float(var_c4bac09b) / 1000 < var_63e8f3af) {
                var_3057025e += var_c4bac09b;
            } else {
                var_3057025e = 0;
            }
            if (float(var_3057025e) / 1000 >= var_321cde74) {
                var_3057025e = 0;
            }
        }
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 2, eflags: 0x2 linked
// Checksum 0x2ff25ea8, Offset: 0x6260
// Size: 0x218
function function_80ba1bc8(instance, n_objective_id) {
    instance endon(#"objective_ended");
    self endon(#"death");
    n_start_health = self.health;
    var_359ac97a = 0;
    var_8da3e170 = self.health / n_start_health;
    objective_setprogress(n_objective_id, var_8da3e170);
    zm_sq::sndonoverride_eye_(var_8da3e170);
    zm_sq::function_2398ab16("timer_stop");
    while (true) {
        var_c3a3ae13 = self.health / n_start_health;
        if (var_c3a3ae13 >= 0 && var_8da3e170 != var_c3a3ae13) {
            var_8da3e170 = var_c3a3ae13;
            zm_sq::sndonoverride_eye_(var_8da3e170);
        }
        if (var_c3a3ae13 <= 0.66 && var_c3a3ae13 > 0.33) {
            if (!self clientfield::get("" + #"hash_186c35405f4624bc")) {
                self clientfield::set("" + #"hash_186c35405f4624bc", 1);
            }
        } else if (var_c3a3ae13 <= 0.33) {
            if (self clientfield::get("" + #"hash_186c35405f4624bc") == 1) {
                self clientfield::set("" + #"hash_186c35405f4624bc", 2);
            }
        }
        wait(0.1);
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x0
// Checksum 0x777ddbc6, Offset: 0x6480
// Size: 0xb8
function function_c10cfcb5() {
    wait(2);
    a_ai_zombies = getentarray("defend_zombie", "targetname");
    foreach (ai_zombie in a_ai_zombies) {
        ai_zombie thread cleanup_zombie();
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0xe558e995, Offset: 0x6540
// Size: 0x154
function cleanup_zombie() {
    self endon(#"death");
    while (true) {
        wait(0.1);
        a_players = getplayers();
        foreach (player in a_players) {
            if (distance2dsquared(self.origin, player.origin) <= sqr(1000)) {
            }
        }
        break;
    }
    wait(randomfloatrange(0.1, 0.5));
    self.allowdeath = 1;
    self kill(undefined, undefined, undefined, undefined, 0, 1);
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0xf7050b3f, Offset: 0x66a0
// Size: 0x19c
function clear_vehicles(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    var_453e0a89 = getvehiclearray();
    var_453e0a89 = array::get_all_closest(self.origin, var_453e0a89);
    if (instance.targetname === "objective_golova_defend") {
        n_radius = 1500;
    } else if (instance.targetname === "objective_ski_defend_garage") {
        n_radius = 800;
    } else if (instance.targetname === "objective_sanatorium_defend") {
        n_radius = 1300;
    } else {
        n_radius = 180;
    }
    for (i = 0; i < var_453e0a89.size; i++) {
        if (distance2dsquared(self.origin, var_453e0a89[i].origin) <= sqr(n_radius)) {
            var_453e0a89[i] thread player_vehicle::is_staircase_up();
            var_453e0a89[i] thread function_81d3631c(self);
            wait(0.1);
        }
    }
    self thread function_ab97e04b(instance, var_453e0a89, n_radius);
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 3, eflags: 0x2 linked
// Checksum 0x88cf23b0, Offset: 0x6848
// Size: 0x15c
function function_ab97e04b(instance, var_453e0a89, n_radius) {
    instance endon(#"objective_ended");
    self endon(#"death");
    while (true) {
        foreach (vehicle in var_453e0a89) {
            if (isdefined(vehicle) && distance2dsquared(self.origin, vehicle.origin) <= sqr(n_radius)) {
                if (!is_true(vehicle.abnormal_status.emped)) {
                    vehicle thread player_vehicle::is_staircase_up();
                    vehicle thread function_81d3631c(self);
                }
            }
        }
        wait(0.5);
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0x70f59604, Offset: 0x69b0
// Size: 0xac
function function_81d3631c(*mdl_console) {
    self endon(#"death");
    if (isvehicle(self)) {
        self makevehicleunusable();
    }
    self val::set("vehicle_teleport", "takedamage", 0);
    wait(2.5);
    if (isvehicle(self)) {
        self zm_utility::function_78e620d();
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x0
// Checksum 0x916e6bf4, Offset: 0x6a68
// Size: 0x58
function function_1fe3eb34() {
    self endon(#"death");
    while (true) {
        if (!self.abnormal_status.emped) {
            self vehicle::function_bbc1d940(0);
        }
        wait(0.1);
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 2, eflags: 0x0
// Checksum 0xc8921920, Offset: 0x6ac8
// Size: 0x264
function function_58ec23ca(instance, defend_object) {
    self endon(#"death");
    instance endon(#"objective_ended");
    var_dbe41436 = 50;
    var_ca639dc3 = 0;
    var_9543c27c = self.health;
    var_dbe41436 = 40;
    current_target = 0;
    self.time_to_wait = 0;
    self thread function_df9979de(instance);
    self.var_cdf71d99 = 0;
    while (true) {
        if (current_target == 1) {
            current_time = gettime();
            if (isdefined(defend_object)) {
                if (current_time > self.time_to_wait || distance(defend_object.origin, self.origin) > 2500) {
                    if (distance(defend_object.origin, self.origin) > 2500) {
                        self.var_cdf71d99 = gettime() + 8000;
                    } else {
                        self.var_cdf71d99 = gettime() + 3000;
                    }
                    self.var_ff290a61 = undefined;
                    self.attackable = defend_object;
                    current_target = 0;
                }
            }
        } else if (current_target == 0) {
            if (isdefined(self.var_cdf71d99) && self.var_cdf71d99 < gettime()) {
                var_ca639dc3 = var_9543c27c - self.health;
                if (var_ca639dc3 > var_dbe41436) {
                    if (isdefined(self.attacker) && isplayer(self.attacker)) {
                        if (isalive(self.attacker)) {
                            if (distance(self.attacker.origin, self.origin) < 2500) {
                                self.var_ff290a61 = self.attacker;
                                current_target = 1;
                            }
                        }
                    }
                    var_ca639dc3 = 0;
                    var_9543c27c = self.health;
                }
            }
        }
        wait(1);
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x6 linked
// Checksum 0x6ae0ea61, Offset: 0x6d38
// Size: 0x72
function private function_df9979de(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    while (true) {
        waitresult = self waittill(#"damage");
        self.time_to_wait = gettime() + 8000;
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0x311f517c, Offset: 0x6db8
// Size: 0x148
function function_cd1515dc() {
    if (self.targetname === "objective_ski_defend_garage" || self.targetname === "objective_duga_defend") {
        if (isdefined(self.mdl_blocker)) {
            self.mdl_blocker disconnectpaths();
            self.mdl_blocker ghost();
        }
        a_doors = [];
        doors = function_c3d68575(self.origin, (1000, 1000, 500));
        foreach (door in doors) {
            if (door.var_15d44120 === #"hash_557ba54db04548e0") {
                self thread function_b746ae20(door);
            }
        }
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 1, eflags: 0x2 linked
// Checksum 0x2a4a1668, Offset: 0x6f08
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

