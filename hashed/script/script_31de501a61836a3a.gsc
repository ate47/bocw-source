// Atian COD Tools GSC CW decompiler test
#using script_113dd7f0ea2a1d4f;
#using scripts\zm_common\zm_sq.gsc;
#using script_4163291d6e693552;
#using script_34ab99a4ca1a43d;
#using script_12538a87a80a2978;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using script_fec6e2b970dd864;
#using script_3411bb48d41bd3b;
#using script_3357acf79ce92f4b;
#using scripts\zm_common\objective_manager.gsc;
#using script_27347f09888ad15;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using script_1cd491b1807da8f7;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;

#namespace namespace_fa1c4f0a;

// Namespace namespace_fa1c4f0a/level_init
// Params 1, eflags: 0x20
// Checksum 0xdc6cdbad, Offset: 0x7e8
// Size: 0x36c
function event_handler[level_init] main(*eventstruct) {
    clientfield::register("scriptmover", "" + #"portal", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_2a7da9a87ecef87b", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"payload_teleport", 1, 2, "int");
    clientfield::register("toplayer", "" + #"hash_19f93b2cb70ea2c5", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_75190371f51baf5f", 1, 1, "counter");
    clientfield::register("vehicle", "" + #"hash_85dd1e407a282d9", 1, 1, "int");
    clientfield::register("vehicle", "" + #"hash_738f0a13dc61e2ec", 1, 1, "counter");
    clientfield::register("vehicle", "" + #"hash_711d7caaed939f5f", 1, 1, "int");
    clientfield::register("vehicle", "" + #"hash_34f922424fc18bfb", 1, 1, "counter");
    clientfield::register("vehicle", "" + #"hash_db052f565349c0d", 1, 1, "int");
    clientfield::register("vehicle", "" + #"hash_357ba456a97117b8", 1, 1, "int");
    objective_manager::register_script(#"payload_escort", &init, &function_d137dbd4, #"payload", #"hash_6df9aea076cea4ba", #"hash_4ddf1b97bee2b93", 6, #"hash_7cd75fcb4650df62");
    callback::on_spawned(&on_player_spawned);
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0xea4075d, Offset: 0xb60
// Size: 0x894
function init(instance) {
    instance thread namespace_7589cf5c::vo_start("objectivePayloadAnnounce", "objectivePayloadAnnounceResponse");
    foreach (s_instance in instance.contentgroups[#"payload"]) {
        if (isdefined(s_instance.contentgroups[#"truck"])) {
            s_instance.var_738e322b = content_manager::spawn_script_model(s_instance.contentgroups[#"truck"][0], #"hash_476204ed994318f", 1);
        }
        wait(0.1);
        s_instance.var_b8ca9d7 = spawnvehicle(#"hash_d069dee6a0076c8", s_instance.origin, s_instance.angles, "vehicle_payload", 0, undefined, "sensor");
        s_instance.var_b8ca9d7.team = "allies";
        s_instance.var_b8ca9d7.s_portal = s_instance.contentgroups[#"portal"][0];
        s_instance.var_b8ca9d7.s_start = s_instance.contentgroups[#"hash_13077c2a8907f2fe"][0];
        s_instance.var_b8ca9d7.var_559503f1 = s_instance.contentgroups[#"hash_3d588f728a53044"];
        s_instance.var_b8ca9d7 vehicle::toggle_sounds(0);
        wait(1);
        s_instance.var_b8ca9d7 thread function_27033bf7(instance);
    }
    instance.var_7a9e6505 = 1;
    instance.mdl_reward = s_instance.contentgroups[#"hash_41ae283ea203de66"][0];
    instance.var_1ac40948 = s_instance.var_738e322b;
    instance.var_b8ca9d7 = s_instance.var_b8ca9d7;
    instance.var_b8ca9d7.var_6a4ec994 = 0;
    instance.var_b8ca9d7.var_dd6fe31f = 1;
    instance.var_b8ca9d7.var_43123efe = util::spawn_model(#"hash_314ae34dd8273e66", instance.var_b8ca9d7 gettagorigin("tag_cage_attach"));
    instance.var_1cd294c7 = util::spawn_model("tag_origin", instance.var_b8ca9d7 gettagorigin("tag_cage_attach"), instance.var_b8ca9d7 gettagangles("tag_cage_attach"));
    if (isdefined(instance.var_b8ca9d7.var_43123efe) && isdefined(instance.var_1cd294c7)) {
        instance.var_1cd294c7 linkto(instance.var_b8ca9d7, "tag_cage_attach", (0, 0, 0), (0, -180, 0));
        instance.var_b8ca9d7.var_43123efe linkto(instance.var_1cd294c7);
        if (instance.var_b8ca9d7.var_6a4ec994 == 0) {
            instance thread function_98da33e1();
        }
    }
    if (isdefined(s_instance.contentgroups[#"rift"])) {
        instance.var_d4f4d124 = s_instance.contentgroups[#"rift"];
    }
    if (isdefined(instance.contentgroups[#"hash_441da645c3f27eea"])) {
        instance thread function_9bf6c44a();
    }
    if (isdefined(instance.contentgroups[#"hash_17213ba6ef802c84"])) {
        instance.var_f2af10b2 = util::spawn_model(instance.contentgroups[#"hash_17213ba6ef802c84"][0].model, instance.contentgroups[#"hash_17213ba6ef802c84"][0].origin, instance.contentgroups[#"hash_17213ba6ef802c84"][0].angles);
        waitframe(1);
        if (isdefined(instance.var_f2af10b2)) {
            instance.var_f2af10b2 ghost();
        }
    }
    if (isdefined(instance.contentgroups[#"hash_53295f8e563380a6"])) {
        var_3608e7a6 = instance.contentgroups[#"hash_53295f8e563380a6"][0];
        instance.var_f2065b9e = util::spawn_model(var_3608e7a6.model, var_3608e7a6.origin, var_3608e7a6.angles);
        waitframe(1);
        if (isdefined(instance.var_f2065b9e)) {
            instance.var_f2065b9e ghost();
        }
    }
    if (isdefined(instance.contentgroups[#"hash_26ce2cbc6b535bb"])) {
        var_111c92a8 = content_manager::function_cfa4f1a0(instance.contentgroups[#"hash_26ce2cbc6b535bb"], #"hash_1435198d5240ac8c", 0);
        foreach (var_3cefdbf5 in var_111c92a8) {
            var_3cefdbf5 ghost();
        }
    }
    instance thread function_6e7546c5();
    instance thread function_f5087df2();
    instance thread function_83e5a141();
    instance thread function_5466a4e2();
    if (instance.targetname === #"hash_7d1a7cd215013b8b") {
        instance.var_b8ca9d7 thread function_753d6448(instance);
    } else if (instance.targetname === #"hash_57f0a312931f2fb8") {
        instance thread function_68ec5e25();
    } else if (instance.targetname === #"hash_57701e31cc5a9388") {
        instance thread function_81fd5bee();
    } else {
        instance.var_b8ca9d7 thread function_dcf94cdf(instance);
    }
    level.var_acd0f67e = instance.variant === "payload_teleport" ? 4 : 3;
    if (instance.variant === "payload_teleport") {
        showmiscmodels("payload_teleport_corpses");
    }
    if (instance.variant === "payload_noteleport") {
        showmiscmodels("payload_noteleport_corpses");
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0x87339aa7, Offset: 0x1400
// Size: 0x10c
function on_player_spawned() {
    if (level.contentmanager.activeobjective.content_script_name === "payload_escort") {
        level.var_31028c5d prototype_hud::set_active_objective_string(self, #"hash_838284821745ec7");
        level.var_31028c5d prototype_hud::function_817e4d10(self, 2);
        var_b8ca9d7 = level.contentmanager.activeobjective.var_b8ca9d7;
        if (!isdefined(var_b8ca9d7.n_start_health)) {
            var_c3a3ae13 = 1;
        } else {
            var_c3a3ae13 = var_b8ca9d7.health / var_b8ca9d7.n_start_health;
        }
        self zm_sq::sndonoverride_eye_(var_c3a3ae13);
        self zm_sq::function_2398ab16("objective_ended");
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xfae5b848, Offset: 0x1518
// Size: 0x6a
function function_17f1d0f3() {
    self.var_5e36739b = self namespace_7589cf5c::function_df911075();
    self.var_61c57c53 = self namespace_7589cf5c::function_1b53cdc7();
    self.var_5de17ec9 = self namespace_7589cf5c::function_56fa33d9();
    self.var_2133c784 = 0;
    self.var_b803db9c = 0;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0x29bf7065, Offset: 0x1590
// Size: 0x232
function function_eb76d765() {
    if (self.location.target === "destination_forest") {
        var_3b25dd0c = function_3236ac12();
    } else if (self.location.target === "destination_golova") {
        var_3b25dd0c = function_44b02002();
    } else if (self.location.target === "destination_sanatorium") {
        var_3b25dd0c = function_18973f36();
    } else if (self.location.target === "destination_ski") {
        var_3b25dd0c = function_7ae74cf3();
    } else if (self.location.target === "destination_duga") {
        var_3b25dd0c = function_18973f36();
    } else if (self.location.target === "destination_zoo") {
        var_3b25dd0c = function_1daeb3f();
    } else {
        var_3b25dd0c = function_7ae74cf3();
    }
    var_43123efe = util::spawn_model(var_3b25dd0c[0], self.var_b8ca9d7 gettagorigin("tag_cage_attach"));
    waitframe(1);
    if (isdefined(var_43123efe) && isdefined(self.var_b8ca9d7)) {
        var_43123efe setscale(var_3b25dd0c[1]);
        var_43123efe.v_ang = var_3b25dd0c[2];
        var_43123efe.v_offset = var_3b25dd0c[3];
        var_43123efe notsolid();
        return var_43123efe;
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0x46157fd, Offset: 0x17d0
// Size: 0x15a
function function_3236ac12() {
    var_55b751c2 = array(#"hash_305b3a9c44655bd2", #"hash_7fd49bea40f14b60", #"hash_17da0a8be86c792d", #"hash_2e48eeab9d5b4860", #"hash_2444d731ff4d4123");
    str_model = array::random(var_55b751c2);
    n_scale = 1;
    v_ang = (0, 0, 0);
    v_offset = (0, 0, 0);
    if (str_model == #"hash_7fd49bea40f14b60") {
        n_scale = 0.9;
    } else if (str_model == #"hash_17da0a8be86c792d") {
        v_ang = (0, 180, 0);
    } else if (str_model == #"hash_2e48eeab9d5b4860") {
        n_scale = 0.75;
    }
    var_3b25dd0c = array(str_model, n_scale, v_ang, v_offset);
    return var_3b25dd0c;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xdcb1dc70, Offset: 0x1938
// Size: 0x102
function function_44b02002() {
    var_55b751c2 = array(#"hash_4aa862060b01c8ac", #"hash_6a36354c90d4b281", #"hash_534b0a29530bc184", #"hash_2444d731ff4d4123");
    str_model = array::random(var_55b751c2);
    n_scale = 1;
    v_ang = (0, 0, 0);
    v_offset = (0, 0, 0);
    if (str_model == #"hash_4aa862060b01c8ac") {
        v_ang = (0, 180, 0);
    }
    var_3b25dd0c = array(str_model, n_scale, v_ang, v_offset);
    return var_3b25dd0c;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xc2677c1c, Offset: 0x1a48
// Size: 0x1a2
function function_18973f36() {
    var_55b751c2 = array(#"hash_1c850e24d0892590", #"hash_1a8f34d7470bea00", #"hash_18197ceb2506faa4", #"p8_nt4_globe_earth", #"hash_2444d731ff4d4123");
    str_model = array::random(var_55b751c2);
    n_scale = 1;
    v_ang = (0, 0, 0);
    v_offset = (0, 0, 0);
    if (str_model == #"hash_18197ceb2506faa4") {
        n_scale = 0.75;
        v_offset = (0, 0, 16);
    } else if (str_model == #"hash_1c850e24d0892590") {
        n_scale = 0.18;
        v_ang = (0, 180, 0);
    } else if (str_model == #"hash_1a8f34d7470bea00") {
        v_ang = (0, 180, 0);
    } else if (str_model == #"p8_nt4_globe_earth") {
        n_scale = 1.5;
    }
    var_3b25dd0c = array(str_model, n_scale, v_ang, v_offset);
    return var_3b25dd0c;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xb7ebffb9, Offset: 0x1bf8
// Size: 0x1ca
function function_7ae74cf3() {
    var_55b751c2 = array(#"hash_526c029a20324865", #"hash_a4267fa22ac6544", #"hash_7c59416a2b901445", #"p8_wz_ep_snowman", #"hash_2444d731ff4d4123");
    str_model = array::random(var_55b751c2);
    n_scale = 1;
    v_ang = (0, 0, 0);
    v_offset = (0, 0, 0);
    if (str_model == #"hash_a4267fa22ac6544") {
        n_scale = 0.7;
        v_ang = (0, 90, 0);
    } else if (str_model == #"hash_7c59416a2b901445") {
        n_scale = 0.45;
        v_ang = (0, 180, 0);
    } else if (str_model == #"p8_wz_ep_snowman") {
        n_scale = 0.4;
        v_ang = (0, 180, 0);
    } else if (str_model == #"hash_526c029a20324865") {
        n_scale = 2;
        v_ang = (0, -90, 0);
    }
    var_3b25dd0c = array(str_model, n_scale, v_ang, v_offset);
    return var_3b25dd0c;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0x7db630d7, Offset: 0x1dd0
// Size: 0x14a
function function_1daeb3f() {
    var_55b751c2 = array(#"hash_78be8d1ec70a2434", #"hash_23749539c89e2c7", #"hash_64202aa929311b70");
    str_model = array::random(var_55b751c2);
    n_scale = 1;
    v_ang = (0, 0, 0);
    v_offset = (0, 0, 0);
    if (str_model == #"hash_78be8d1ec70a2434") {
        v_ang = (0, 180, 0);
    } else if (str_model == #"hash_23749539c89e2c7") {
        v_ang = (0, -90, 0);
        v_offset = (0, 0, 8);
    } else {
        v_ang = (0, 90, 0);
        n_scale = 0.4;
    }
    var_3b25dd0c = array(str_model, n_scale, v_ang, v_offset);
    return var_3b25dd0c;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xe73d3f7, Offset: 0x1f28
// Size: 0x22a
function function_dc378d61() {
    v_org = self.var_b8ca9d7 gettagorigin("tag_cage_attach");
    if (math::cointoss()) {
        var_43123efe = zm_powerups::specific_powerup_drop(array("full_ammo", "bonus_points_team", "nuke", "insta_kill", "double_points"), v_org, #"allies", undefined, undefined, 1);
        if (isdefined(var_43123efe)) {
            var_43123efe.var_5c6f6051 = 80;
            v_offset = v_org + (0, 0, 12);
            if (var_43123efe.model === #"p7_zm_power_up_nuke") {
                var_43123efe setscale(0.75);
            }
        }
    } else {
        var_43123efe = util::spawn_model("p9_gold_surcrystal_medium_01", v_org, self.var_b8ca9d7.angles, undefined, 1);
        if (isdefined(var_43123efe)) {
            var_43123efe setscale(0.75);
            var_43123efe val::set("loot_pod", "takedamage", 1);
            var_43123efe.health = 5;
            var_43123efe.var_2d1326e = 1;
            v_offset = v_org;
            level thread namespace_58949729::function_8265e656(var_43123efe);
        }
    }
    if (isdefined(var_43123efe)) {
        var_43123efe moveto(v_offset, 0.05);
        var_43123efe waittill(#"movedone");
        if (isdefined(var_43123efe)) {
            return var_43123efe;
        }
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xf35b5f01, Offset: 0x2160
// Size: 0x10c
function function_5466a4e2() {
    self endon(#"objective_ended");
    self waittill(#"hash_79ba3aede845bbcc");
    wait(1);
    level namespace_7589cf5c::play_vo("objectivePayloadStart");
    wait(1);
    level namespace_7589cf5c::play_vo("objectivePayloadStartResponse");
    self.var_b8ca9d7 waittill(#"active");
    self.var_b8ca9d7 namespace_7589cf5c::function_ac709d66(self, #"hash_52187d4a8a76de9f");
    while (!self.var_74ec00fb) {
        wait(1);
    }
    wait(1);
    self.var_b8ca9d7 namespace_7589cf5c::function_ac709d66(self, #"hash_206f96ca8a8b9649");
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x53ba040f, Offset: 0x2278
// Size: 0x64
function function_9f91a425(instance) {
    instance endon(#"objective_ended");
    self waittill(#"final_portal");
    self thread namespace_7589cf5c::function_ac709d66(instance, #"hash_3fa31698f9825caf");
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xdfa020f2, Offset: 0x22e8
// Size: 0x8c
function function_28250c29() {
    self waittill(#"objective_ended");
    wait(1);
    level namespace_7589cf5c::play_vo("objectivePayloadEnd");
    wait(1);
    level thread namespace_7589cf5c::play_vo("objectivePayloadEndResponse");
    level flag::set(#"hash_1460b3afd614fb6c");
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x358ad917, Offset: 0x2380
// Size: 0x262
function function_e45c5bc0(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    while (true) {
        self waittill(#"scan");
        self namespace_7589cf5c::function_ac709d66(self, #"hash_5ebc917253be6eba");
        if (isdefined(instance.var_f16db373)) {
            while (true) {
                if (isdefined(instance.var_f16db373) && isalive(self) && distance2dsquared(self.origin, instance.var_f16db373.origin) <= 160000) {
                    break;
                }
                wait(0.1);
            }
        } else if (isdefined(self.mdl_portal)) {
            while (true) {
                if (isdefined(self.mdl_portal) && isalive(self) && distance2dsquared(self.origin, self.mdl_portal.origin) <= 160000) {
                    break;
                }
                wait(0.1);
            }
        }
        if (instance.variant === "payload_teleport") {
            self.var_e588b6c3 = 1;
        }
        self namespace_7589cf5c::function_ac709d66(self, #"hash_404e25761f89998b");
        self waittill(#"hash_d737648ea5715c3");
        if (instance.variant === "payload_noteleport") {
            self thread namespace_7589cf5c::function_ac709d66(self, #"hash_a983fbd390eeb63");
        } else {
            self thread namespace_7589cf5c::function_ac709d66(instance, "vox_obj_epl_rift_stbl_orvr");
        }
        wait(1.5);
        self notify(#"hash_18fad858ffdbd3d");
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x7beac0b5, Offset: 0x25f0
// Size: 0xe0
function function_1eef26bc(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    while (true) {
        if (!self.var_a123c71) {
            wait(10);
            if (!self.var_a123c71 && !self.var_b591d382 && !self.var_ee53f643 && !is_true(self.abnormal_status.emped)) {
                self namespace_7589cf5c::function_ac709d66(instance, #"hash_165229d1cb432efa");
                wait(2);
            }
        }
        wait(1);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0x92d3d560, Offset: 0x26d8
// Size: 0x190
function function_98da33e1() {
    self endon(#"objective_ended");
    self.var_b8ca9d7 endon(#"death");
    self.var_b8ca9d7.var_43123efe endon(#"death");
    self.var_b8ca9d7 thread function_46850180(self);
    while (true) {
        s_result = self.var_b8ca9d7 waittill(#"state_change");
        switch (s_result.state) {
        case #"calm":
            str_shot = "Shot 1";
            n_wait = 6.05;
            break;
        case #"stressed":
            str_shot = "Shot 2";
            n_wait = 6.2;
            break;
        case #"agitated":
            str_shot = "Shot 3";
            n_wait = 6.7;
            break;
        }
        self thread function_8b312db9(str_shot);
        self.var_b8ca9d7.var_43123efe.str_shot = str_shot;
        wait(n_wait);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x474fff18, Offset: 0x2870
// Size: 0x25c
function function_46850180(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    self.var_43123efe endon(#"death");
    while (true) {
        zombies = function_a38db454(self.origin, 1500);
        var_6d32286d = 0;
        foreach (zombie in zombies) {
            if (distance2dsquared(self.origin, zombie.origin) <= 2250000 && !isvehicle(zombie)) {
                var_6d32286d = 1;
            }
        }
        if (var_6d32286d || is_true(self.var_e588b6c3) || !isdefined(self.is_deployed)) {
            self notify(#"state_change", {#state:"agitated"});
            n_wait = 6.7;
        } else if (isdefined(zombies) && zombies.size > 0) {
            self notify(#"state_change", {#state:"stressed"});
            n_wait = 6.2;
        } else {
            self notify(#"state_change", {#state:"calm"});
            n_wait = 6.05;
        }
        wait(n_wait);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x67527b61, Offset: 0x2ad8
// Size: 0x4c
function function_8b312db9(str_shot) {
    self.var_1cd294c7 thread scene::play(#"p9_fxanim_sv_payload_monkey_bundle", str_shot, self.var_b8ca9d7.var_43123efe);
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0x29f2c093, Offset: 0x2b30
// Size: 0x134
function function_68ec5e25() {
    self endon(#"objective_ended");
    self.var_b8ca9d7 endon(#"death");
    self.var_b8ca9d7 waittill(#"ambush");
    n_spawns = function_1fdb6ebc();
    a_s_pts = array::get_all_closest(self.var_b8ca9d7.origin, struct::get_array(#"hash_5b5314019699b18e"));
    for (i = 0; i < a_s_pts.size; i++) {
        for (j = 0; j < n_spawns; j++) {
            self.var_b8ca9d7 thread function_dd9b1007(self, a_s_pts[i].origin, a_s_pts[i].angles);
            wait(0.1);
        }
        wait(0.5);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xaa3bc4f3, Offset: 0x2c70
// Size: 0x102
function function_83e5a141() {
    self waittill(#"hash_79ba3aede845bbcc");
    if (isdefined(self.contentgroups[#"hash_5615a127abad1354"])) {
        self.var_bce10cdf = content_manager::spawn_script_model(self.contentgroups[#"hash_5615a127abad1354"][0], #"hash_6a83a06a639fcc6b", 1);
        self.var_bce10cdf ghost();
    }
    wait(0.1);
    self.var_b8ca9d7 notify(#"state_change", {#state:"calm"});
    self.var_b8ca9d7 waittill(#"deployed");
    wait(5);
    self.var_b8ca9d7.is_deployed = 1;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0x236158ef, Offset: 0x2d80
// Size: 0x22c
function function_f5087df2() {
    self waittill(#"objective_ended");
    callback::remove_on_ai_killed(&zombie_death_watcher);
    foreach (player in getplayers()) {
        level.var_31028c5d prototype_hud::function_817e4d10(player, 0);
    }
    namespace_7589cf5c::function_ed193293(self);
    if (self.success) {
        level thread namespace_cda50904::function_a92a93e9(self.mdl_reward.origin, self.mdl_reward.angles);
        if (!is_true(level.var_c65e4312)) {
            foreach (player in function_a1ef346b()) {
                player zm_stats::increment_challenge_stat(#"hash_28f078b404c0e6d9");
            }
        }
        level.var_c65e4312 = undefined;
        return;
    }
    wait(1);
    if (isdefined(self.var_b8ca9d7)) {
        self.var_b8ca9d7 dodamage(self.var_b8ca9d7.health, self.var_b8ca9d7.origin);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 5, eflags: 0x0
// Checksum 0x25195e3d, Offset: 0x2fb8
// Size: 0x132
function function_de42eeef(str_model, v_offset, v_ang, n_forward, n_scale) {
    self setbrake(1);
    wait(0.5);
    v_forward = self.origin + vectornormalize(anglestoforward(self.angles)) * n_forward;
    var_6d29abb0 = util::spawn_model(str_model, v_forward + v_offset, v_ang);
    if (isdefined(var_6d29abb0)) {
        wait(0.1);
        var_6d29abb0.health = int(self.health * 0.4);
        var_6d29abb0 setscale(n_scale);
        var_6d29abb0 linkto(self);
        self.var_a04ece6e = var_6d29abb0;
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 2, eflags: 0x2 linked
// Checksum 0x5fc1b5ff, Offset: 0x30f8
// Size: 0x1ca
function function_d137dbd4(instance, activator) {
    if (isplayer(activator)) {
        callback::on_ai_killed(&zombie_death_watcher);
        instance notify(#"hash_79ba3aede845bbcc");
        instance thread function_17f1d0f3();
        instance.var_74ec00fb = 0;
        instance.n_zombies_max = function_23ab0822();
        foreach (player in getplayers()) {
            level.var_31028c5d prototype_hud::function_7491d6c5(player, #"hash_838284821745ec7");
            level.var_31028c5d prototype_hud::set_active_objective_string(player, #"hash_838284821745ec7");
            level.var_31028c5d prototype_hud::function_817e4d10(player, 2);
        }
        function_3ef1d58a(instance, 1);
        if (!isdefined(level.var_97e461d4)) {
            namespace_7589cf5c::function_1e45b156(instance);
        }
        wait(6);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0x97edfc93, Offset: 0x32d0
// Size: 0x9e
function function_23ab0822() {
    switch (getplayers().size) {
    case 1:
        n_spawns = 8;
        break;
    case 2:
        n_spawns = 12;
        break;
    case 3:
        n_spawns = 16;
        break;
    case 4:
        n_spawns = 20;
        break;
    }
    return n_spawns;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x274d2242, Offset: 0x3378
// Size: 0x664
function function_27033bf7(instance) {
    self endon(#"death");
    self val::set("payload", "takedamage", 1);
    self.overridevehicledamage = &function_ae595d6e;
    self.var_aa4b496 = 0;
    self.health = 6000;
    self.var_265cb589 = 1;
    self thread function_eb89f65f(instance);
    nd_start = getvehiclenode(self.s_start.target, "targetname");
    nd_start.var_d5ebc20b = getvehiclenode(nd_start.script_string, "targetname");
    n_time = nd_start.script_int;
    self vehicle::get_on_path(nd_start);
    waitframe(1);
    instance waittill(#"hash_79ba3aede845bbcc");
    self playrumblelooponentity(#"sr_machinery_rumble");
    self thread function_9c54feb0(instance);
    self thread function_612a9925();
    self thread function_6ae999c2(instance);
    instance.var_1ac40948 playrumblelooponentity(#"hash_1903f70fddbadc53");
    instance.var_1ac40948 scene::play(#"p9_fxanim_sv_payload_delivery_open_bundle", instance.var_1ac40948);
    instance.var_1ac40948 stoprumble(#"hash_1903f70fddbadc53");
    instance.var_1ac40948 playrumbleonentity(#"sr_canister_damage_vehicle_rumble");
    if (isdefined(instance.var_f2af10b2)) {
        instance.var_f2af10b2 delete();
    }
    self notify(#"hash_13077c2a8907f2fe");
    self playsound(#"hash_388c12acd0e0928");
    wait(1);
    if (isdefined(instance.var_f2065b9e)) {
        instance.var_f2065b9e notsolid();
    }
    self thread vehicle::go_path();
    self thread function_87de8025(instance);
    self thread function_8469f022(instance);
    self thread function_33284b66(instance);
    self thread function_ca92ed05(instance);
    self thread function_89951438(instance);
    self.var_a123c71 = 1;
    self waittill(#"deployed");
    self clientfield::increment("" + #"hash_738f0a13dc61e2ec");
    self.var_a123c71 = 0;
    self thread function_e45c5bc0(instance);
    self thread function_1eef26bc(instance);
    self thread function_9f91a425(instance);
    self thread function_77c42a22(instance);
    self thread function_79ae8e99(instance);
    self thread function_fe857bf3(instance);
    self thread function_7dc0fd48(instance);
    self thread payload_teleport(instance);
    self thread function_41bc60b6(instance);
    self thread function_7d3ebd69(instance);
    self thread function_6fb6800a(instance);
    self thread function_738143f5(instance);
    self thread function_d57cb15b(instance);
    if (instance.variant === "payload_noteleport") {
        self waittill(#"final_rift");
    }
    self.mdl_portal = util::spawn_model("tag_origin", nd_start.var_d5ebc20b.origin, (0, 90, 0));
    self.mdl_portal clientfield::set("" + #"portal", 1);
    self.var_edbf8a99 = util::spawn_model("collision_player_only_192", self.mdl_portal.origin, self.mdl_portal.angles);
    self.var_3e5ed63d = util::spawn_model("tag_origin", self.mdl_portal.origin + (0, 0, -1000), self.mdl_portal.angles);
    self.mdl_portal thread function_fd3059d0(instance);
    if (isdefined(self.var_edbf8a99)) {
        self.var_edbf8a99 ghost();
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0xcb5f0b22, Offset: 0x39e8
// Size: 0xe4
function function_3b34bc1b(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    self waittill(#"final_rift");
    self.mdl_beam = util::spawn_model("tag_origin", instance.var_f16db373.origin);
    waitframe(1);
    if (isdefined(self.mdl_beam)) {
        wait(1.5);
        self.mdl_beam clientfield::set("" + #"payload_teleport", 2);
        self thread function_e0c5b0a4(instance);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0xbaaaf8c0, Offset: 0x3ad8
// Size: 0x108
function function_ca92ed05(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    while (true) {
        if (is_true(self.abnormal_status.emped)) {
            level namespace_7589cf5c::play_vo("objectivePayloadMalfunction");
            wait(0.5);
            self namespace_7589cf5c::function_ac709d66(self, #"hash_42e191393187cfdb");
            while (is_true(self.abnormal_status.emped)) {
                wait(0.5);
            }
            self namespace_7589cf5c::function_ac709d66(self, #"hash_6170663b9a995a23");
        }
        wait(0.5);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x37d80206, Offset: 0x3be8
// Size: 0xae
function function_33284b66(instance) {
    instance endon(#"objective_ended");
    self waittill(#"activate");
    if (isdefined(instance.var_f2065b9e)) {
        instance.var_f2065b9e solid();
    }
    self clientfield::set("" + #"hash_711d7caaed939f5f", 1);
    wait(2);
    self notify(#"active");
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 15, eflags: 0x2 linked
// Checksum 0x1deda352, Offset: 0x3ca0
// Size: 0x160
function function_ae595d6e(*einflictor, eattacker, idamage, *idflags, smeansofdeath, *weapon, *vpoint, *vdir, *shitloc, *vdamageorigin, *psoffsettime, *damagefromunderneath, *modelindex, *partname, *vsurfacenormal) {
    if (isdefined(modelindex) && isplayer(modelindex)) {
        partname = 0;
        return partname;
    } else if (isalive(modelindex)) {
        if (!self.var_aa4b496) {
            self thread function_d5c3d218();
        }
        if (vsurfacenormal === "MOD_MELEE") {
            self playsound(#"hash_1ddeb8af5a217a6e");
        } else if (vsurfacenormal === "MOD_UNKNOWN") {
            partname = 0;
        }
    }
    if (partname > 50) {
        partname = 50;
    }
    if (partname > 0) {
        level.var_c65e4312 = 1;
    }
    return partname;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0x5a4ec06c, Offset: 0x3e08
// Size: 0x3f0
function function_6e7546c5() {
    self endon(#"objective_ended");
    self.var_b8ca9d7 endon(#"death");
    self.var_fa6b9965 = [];
    for (i = 0; i < self.var_d4f4d124.size; i++) {
        foreach (var_2b357ce9 in self.var_d4f4d124) {
            if (var_2b357ce9.script_int == i) {
                self.var_fa6b9965[i] = var_2b357ce9;
            }
        }
    }
    var_edf7d1ed = 0;
    self waittill(#"hash_79ba3aede845bbcc");
    self thread function_1c8e1b20();
    if (self.variant === "payload_noteleport") {
        self.var_f16db373 = util::spawn_model("tag_origin", self.var_fa6b9965[var_edf7d1ed].origin);
    }
    wait(0.1);
    if (isdefined(self.var_f16db373) || self.variant === "payload_teleport") {
        if (self.variant === "payload_noteleport") {
            self thread function_4ef90aaa();
        }
        while (true) {
            s_result = self.var_b8ca9d7 waittill(#"rift", #"reached_end_node", #"final_rift");
            if (s_result._notify !== "final_rift") {
                self.var_b8ca9d7.var_f5d0e3f6 = 1;
            }
            if (s_result._notify === "rift") {
                self.var_b8ca9d7 clientfield::increment("" + #"hash_34f922424fc18bfb");
                self.var_b8ca9d7.var_ee53f643 = 1;
                if (self.variant === "payload_noteleport") {
                    var_edf7d1ed++;
                    self function_c9b143b(var_edf7d1ed);
                    function_3ef1d58a(self, var_edf7d1ed + 1);
                    if (var_edf7d1ed >= 2) {
                        self.var_b8ca9d7 thread function_3b34bc1b(self);
                    }
                    self.var_b8ca9d7 notify(#"hash_d737648ea5715c3");
                } else {
                    wait(6.5);
                    self.var_b8ca9d7 notify(#"hash_d737648ea5715c3");
                    self.var_b8ca9d7 waittill(#"hash_18fad858ffdbd3d");
                }
            } else {
                self.var_b8ca9d7 notify(#"hash_d737648ea5715c3");
            }
            wait(1);
            self.var_b8ca9d7.var_f5d0e3f6 = 0;
            self.var_b8ca9d7.var_ee53f643 = 0;
            if (isdefined(self.var_f16db373) && self.variant === "payload_noteleport") {
                self thread function_4ef90aaa();
            }
        }
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x2bd70180, Offset: 0x4200
// Size: 0xf0
function function_41bc60b6(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    while (true) {
        self waittill(#"enter");
        self thread function_1bb2940d(instance);
        self clientfield::set("" + #"hash_357ba456a97117b8", 1);
        self waittill(#"reached_end_node");
        self clientfield::set("" + #"hash_357ba456a97117b8", 0);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0xc5342f1, Offset: 0x42f8
// Size: 0x6c
function function_1bb2940d(instance) {
    if (is_true(self.isspeaking)) {
        self waittill(#"done_speaking");
    }
    wait(0.25);
    self thread namespace_7589cf5c::function_ac709d66(instance, #"hash_3b4b38d7e66e6880");
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x755f4ac6, Offset: 0x4370
// Size: 0xec
function function_c9b143b(var_edf7d1ed) {
    self endon(#"objective_ended");
    self.var_f16db373 playrumblelooponentity(#"hash_1903f70fddbadc53");
    wait(7.5);
    self.var_f16db373 stoprumble(#"hash_1903f70fddbadc53");
    self.var_f16db373 clientfield::set("" + #"hash_2a7da9a87ecef87b", 0);
    wait(3);
    self.var_f16db373 moveto(self.var_fa6b9965[var_edf7d1ed].origin, 0.05);
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xf3778c8f, Offset: 0x4468
// Size: 0x94
function function_4ef90aaa() {
    self endon(#"objective_ended");
    self.var_b8ca9d7 endon(#"death");
    self.var_f16db373 endon(#"death");
    self.var_b8ca9d7 waittill(#"scan");
    self.var_f16db373 clientfield::set("" + #"hash_2a7da9a87ecef87b", 1);
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xc03c7dc9, Offset: 0x4508
// Size: 0x6c
function function_1c8e1b20() {
    self endon(#"objective_ended");
    self.var_b8ca9d7 endon(#"death");
    self.var_b8ca9d7 waittill(#"hash_193c92bb1c6df0e7");
    if (isdefined(self.var_f16db373)) {
        self.var_f16db373 delete();
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xb4889a83, Offset: 0x4580
// Size: 0x6e
function function_d5c3d218() {
    self endon(#"death");
    self.var_aa4b496 = 1;
    self playloopsound(#"hash_2a034c2643fc1322");
    wait(4.75);
    self stoploopsound();
    self.var_aa4b496 = 0;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0x452d674c, Offset: 0x45f8
// Size: 0x196
function function_612a9925() {
    self endon(#"death");
    self.n_start_health = self.health;
    self.max_health = self.n_start_health;
    var_8da3e170 = self.health / self.n_start_health;
    zm_sq::sndonoverride_eye_(var_8da3e170);
    zm_sq::function_2398ab16("objective_ended");
    while (true) {
        var_c3a3ae13 = self.health / self.n_start_health;
        if (var_c3a3ae13 >= 0 && var_8da3e170 != var_c3a3ae13) {
            zm_sq::sndonoverride_eye_(var_c3a3ae13);
        }
        var_8da3e170 = var_c3a3ae13;
        if (var_c3a3ae13 <= 0.5 && !is_true(self.var_5e22f781)) {
            self.var_5e22f781 = 1;
            level thread namespace_7589cf5c::play_vo("objectivePayloadHealthHalf");
        }
        if (var_c3a3ae13 <= 0.2 && !is_true(self.var_2eb5c0e8)) {
            self.var_2eb5c0e8 = 1;
            level thread namespace_7589cf5c::play_vo("objectivePayloadHealthCritical");
        }
        waitframe(1);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x0
// Checksum 0x75d5d6e2, Offset: 0x4798
// Size: 0x1ac
function function_7ae9616f(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    var_d730bd8c = getvehiclenode("sanatorium_path", "targetname");
    var_b54d7065 = getdynentarray("dynent_garage_button");
    doors = array::get_all_closest(var_d730bd8c.origin, var_b54d7065);
    var_dd05b6d = array(doors[0], doors[1]);
    foreach (door in var_dd05b6d) {
        if (function_ffdbe8c2(door)) {
            return;
        }
    }
    for (i = 0; i < 2; i++) {
        dynent_use::use_dynent(var_dd05b6d[i]);
        wait(randomfloatrange(0.2, 0.5));
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x62e610b2, Offset: 0x4950
// Size: 0x150
function function_7dc0fd48(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    self waittill(#"door");
    var_4b03566e = (100, 100, 75);
    var_bcdc6e24 = self getcentroid();
    var_e86a4d9 = function_db4bc717(var_bcdc6e24, var_4b03566e);
    foreach (dynent in var_e86a4d9) {
        if (isdefined(dynent)) {
            dynent dodamage(dynent.health, dynent.origin, undefined, undefined, "none", "MOD_EXPLOSIVE");
        }
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x685ac07e, Offset: 0x4aa8
// Size: 0x1a4
function function_dcf94cdf(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    self waittill(#"custom");
    s_pt = struct::get(instance.targetname, "script_noteworthy");
    if (!isdefined(s_pt)) {
        s_pt = array::get_all_closest(self.origin, struct::get_array("payload_custom"))[0];
    }
    if (isdefined(s_pt)) {
        a_s_pts = namespace_85745671::function_e4791424(s_pt.origin, 32, 40, s_pt.radius);
        if (!isdefined(a_s_pts)) {
            return;
        }
        var_559503f1 = array::randomize(a_s_pts);
        n_spawns = function_cb32786d();
        for (i = 0; i < n_spawns; i++) {
            if (isdefined(var_559503f1[i])) {
                self thread function_dd9b1007(instance, var_559503f1[i].origin, var_559503f1[i].angles);
            }
            wait(0.1);
        }
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0x2e3604e8, Offset: 0x4c58
// Size: 0x18
function function_81fd5bee() {
    self endon(#"objective_ended");
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x74efff63, Offset: 0x4c78
// Size: 0x134
function function_753d6448(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    self waittill(#"custom");
    a_s_pts = struct::get_array(#"hash_18fe18808e205477");
    if (!isdefined(a_s_pts)) {
        return;
    }
    n_spawns = function_cb32786d();
    for (i = 0; i < n_spawns; i++) {
        s_pt = array::random(a_s_pts);
        if (isdefined(s_pt)) {
            self thread function_dd9b1007(instance, s_pt.origin, s_pt.angles);
        }
        wait(randomfloatrange(0.5, 1));
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xb9aab3d, Offset: 0x4db8
// Size: 0xae
function function_cb32786d() {
    n_players = getplayers().size;
    switch (n_players) {
    case 1:
        n_spawns = 10;
        break;
    case 2:
        n_spawns = 16;
        break;
    case 3:
        n_spawns = 22;
        break;
    case 4:
        n_spawns = 30;
        break;
    }
    return n_spawns;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x9354f4cc, Offset: 0x4e70
// Size: 0x70
function function_6fb6800a(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    while (true) {
        self waittill(#"attack");
        self thread function_9d51d729(instance);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x3f966a91, Offset: 0x4ee8
// Size: 0x224
function function_9d51d729(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    if (isdefined(self.currentnode.script_height)) {
        var_9df66c84 = (0, 0, self.currentnode.script_height);
    } else {
        var_9df66c84 = (0, 0, 0);
    }
    v_forward = vectornormalize(anglestoforward(self.currentnode.angles)) * self.currentnode.radius + self.currentnode.origin;
    if (!isdefined(v_forward)) {
        return;
    }
    if (isdefined(self.currentnode.script_radius)) {
        n_radius = self.currentnode.script_radius;
    } else {
        n_radius = 100;
    }
    a_s_pts = namespace_85745671::function_e4791424(v_forward + var_9df66c84, 16, 40, n_radius);
    if (!isdefined(a_s_pts)) {
        return;
    }
    var_559503f1 = array::randomize(a_s_pts);
    n_spawns = function_1fdb6ebc();
    for (i = 0; i < n_spawns; i++) {
        if (isdefined(var_559503f1[i]) && instance.var_74ec00fb < instance.n_zombies_max) {
            self thread function_dd9b1007(instance, var_559503f1[i].origin, var_559503f1[i].angles);
        }
        wait(randomfloatrange(0.5, 1));
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0x41838ebd, Offset: 0x5118
// Size: 0x12e
function function_1fdb6ebc() {
    n_players = getplayers().size;
    switch (n_players) {
    case 1:
        n_spawns = randomintrange(2, 5);
        break;
    case 2:
        n_spawns = randomintrange(2, 5);
        break;
    case 3:
        n_spawns = randomintrange(3, 5);
        break;
    case 4:
        n_spawns = randomintrange(4, 6);
        break;
    default:
        n_spawns = randomintrange(3, 5);
        break;
    }
    return n_spawns;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x44e4a41d, Offset: 0x5250
// Size: 0x70
function function_738143f5(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    while (true) {
        self waittill(#"assault");
        self thread function_95015f9a(instance);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x9b2448f, Offset: 0x52c8
// Size: 0x120
function function_d57cb15b(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    while (true) {
        self waittill(#"dogs");
        n_players = getplayers().size;
        if (!isdefined(n_players)) {
            continue;
        }
        v_ground = self function_6d122cef();
        if (!isdefined(v_ground)) {
            return;
        }
        a_s_pts = namespace_85745671::function_e4791424(v_ground, 24, 80, 200);
        if (!isdefined(a_s_pts)) {
            return;
        }
        var_559503f1 = array::randomize(a_s_pts);
        self function_22281e97(instance, n_players, var_559503f1);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x99727686, Offset: 0x53f0
// Size: 0x1b4
function function_7d3ebd69(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    self waittill(#"heavy");
    level thread namespace_7589cf5c::play_vo("objectivePayloadFinalPortal");
    level flag::wait_till("spawn_zombies");
    v_pt = self.s_portal.origin;
    v_ang = self.s_portal.angles;
    var_7ecdee63 = function_899e4373(level.var_b48509f9);
    if (isdefined(var_7ecdee63)) {
        var_e4c6e64a = namespace_85745671::function_9d3ad056(var_7ecdee63, v_pt, v_ang, "payload_zombie");
    } else {
        var_e4c6e64a = namespace_85745671::function_9d3ad056(#"hash_4f87aa2a203d37d0", v_pt, v_ang, "payload_zombie");
    }
    wait(0.1);
    if (isdefined(var_e4c6e64a)) {
        var_e4c6e64a.var_a950813d = 1;
        player = awareness::function_d7fedde2(var_e4c6e64a);
        awareness::function_c241ef9a(var_e4c6e64a, player, 10);
        var_e4c6e64a thread function_6f9744dc(instance, self);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x81fd6005, Offset: 0x55b0
// Size: 0x212
function function_899e4373(var_661691aa) {
    switch (var_661691aa) {
    case 1:
    case 2:
        var_de82b392 = [#"hash_4f87aa2a203d37d0"];
        break;
    case 3:
    case 4:
        var_de82b392 = [#"hash_4f87aa2a203d37d0", #"spawner_bo5_avogadro_sr", #"spawner_bo5_soa"];
        break;
    case 5:
        var_de82b392 = [#"hash_4f87aa2a203d37d0", #"spawner_bo5_avogadro_sr", #"spawner_bo5_soa", #"spawner_zm_steiner"];
        break;
    default:
        var_de82b392 = [#"hash_4f87aa2a203d37d0", #"spawner_bo5_avogadro_sr", #"spawner_bo5_soa", #"spawner_bo5_mechz_sr", #"spawner_zm_steiner", #"spawner_bo5_abom"];
        break;
    }
    var_7ecdee63 = array::random(var_de82b392);
    return var_7ecdee63;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 2, eflags: 0x2 linked
// Checksum 0x8ba50708, Offset: 0x57d0
// Size: 0xac
function function_6f9744dc(instance, var_b8ca9d7) {
    instance endon(#"objective_ended");
    self endon(#"death");
    var_b8ca9d7 endon(#"death");
    var_b8ca9d7 waittill(#"hash_32687071c727f6e4");
    level thread namespace_7589cf5c::play_vo("objectivePayloadFinalPortalResponse");
    self animation::play("ai_zm_dlc3_armored_zombie_enrage");
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0xa6affda9, Offset: 0x5888
// Size: 0x17c
function function_95015f9a(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    v_ground = self function_6d122cef();
    if (!isdefined(v_ground)) {
        return;
    }
    a_s_pts = namespace_85745671::function_e4791424(v_ground, 32, 40, 1200);
    if (!isdefined(a_s_pts)) {
        return;
    }
    var_559503f1 = array::randomize(a_s_pts);
    n_spawns = function_dae1a57b();
    for (i = 0; i < n_spawns; i++) {
        if (isdefined(var_559503f1[i]) && instance.var_74ec00fb < instance.n_zombies_max) {
            v_ang = (self.angles[0], self.angles[1] + 180, self.angles[2]);
            self thread function_dd9b1007(instance, var_559503f1[i].origin, v_ang);
        }
        wait(0.1);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xd1d93083, Offset: 0x5a10
// Size: 0x14a
function function_6d122cef() {
    self endon(#"death");
    nd_current = self.currentnode;
    if (isdefined(nd_current)) {
        v_forward = vectornormalize(anglestoforward(nd_current.angles)) * 2400 + nd_current.origin;
    } else {
        v_forward = vectornormalize(anglestoforward(self.angles)) * 2400 + self.origin;
    }
    if (isdefined(v_forward)) {
        v_ground = groundtrace(v_forward + (0, 0, 1000), v_forward + (0, 0, -1000), 0, self)[#"position"];
    }
    if (!isdefined(v_ground)) {
        if (isdefined(self.nextnode)) {
            v_ground = self.nextnode.origin;
        } else {
            v_ground = self.origin;
        }
    }
    return v_ground;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 3, eflags: 0x2 linked
// Checksum 0xa98793a7, Offset: 0x5b68
// Size: 0x294
function function_dd9b1007(instance, v_spawnpt, v_ang) {
    self endon(#"death");
    instance endon(#"objective_ended");
    level flag::wait_till("spawn_zombies");
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
    ai_spawned = namespace_85745671::function_9d3ad056(var_7ecdee63, v_spawnpt, v_ang, "payload_zombie");
    wait(0.1);
    if (isdefined(ai_spawned)) {
        ai_spawned.var_a950813d = 1;
        instance.var_74ec00fb++;
        if (namespace_7589cf5c::function_82e262cf(ai_spawned.aitype)) {
            instance.var_38c710c3 = float(gettime()) / 1000;
            instance.var_2133c784++;
            instance.var_b803db9c++;
            ai_spawned callback::function_d8abfc3d(#"on_ai_killed", &function_c36cb7b1);
        } else {
            ai_spawned callback::function_d8abfc3d(#"on_ai_killed", &function_b3791df9);
        }
        ai_spawned thread function_bf606a73(self, instance);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0xb9bb41f6, Offset: 0x5e08
// Size: 0x60
function function_c36cb7b1(*params) {
    if (isdefined(level.contentmanager.activeobjective) && level.contentmanager.activeobjective.var_b803db9c) {
        level.contentmanager.activeobjective.var_b803db9c--;
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x7f02c5f5, Offset: 0x5e70
// Size: 0x60
function function_b3791df9(*instance) {
    if (isdefined(level.contentmanager.activeobjective) && level.contentmanager.activeobjective.var_74ec00fb) {
        level.contentmanager.activeobjective.var_74ec00fb--;
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x15bb4452, Offset: 0x5ed8
// Size: 0x44
function function_84d85877(instance) {
    instance endon(#"objective_ended");
    self waittill(#"death");
    instance.var_74ec00fb--;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 3, eflags: 0x2 linked
// Checksum 0xb976dcdd, Offset: 0x5f28
// Size: 0x274
function function_22281e97(instance, n_players, var_559503f1) {
    self endon(#"death");
    instance endon(#"objective_ended");
    var_de82b392 = [];
    instance.var_e00b0988 = min(randomintrangeinclusive(n_players + level.var_b48509f9, n_players + level.var_b48509f9 * 2), 6);
    if (math::cointoss()) {
        var_6b2ccc6b = #"hash_7a8b592728eec95d";
    } else if (level.var_b48509f9 < 2) {
        var_6b2ccc6b = #"hash_7a8b592728eec95d";
    } else {
        var_6b2ccc6b = #"hash_12a17ab3df5889eb";
    }
    for (i = 0; i < instance.var_e00b0988; i++) {
        if (math::cointoss(60)) {
            var_de82b392[var_de82b392.size] = var_6b2ccc6b;
            continue;
        }
        var_de82b392[var_de82b392.size] = var_6b2ccc6b;
    }
    for (i = 0; i < var_de82b392.size; i++) {
        level flag::wait_till("spawn_zombies");
        if (isdefined(var_559503f1[i])) {
            v_ang = anglestoforward(var_559503f1[i].origin - self.origin);
            ai_spawned = namespace_85745671::function_9d3ad056(var_de82b392[i], var_559503f1[i].origin, v_ang, "payload_zombie");
            wait(0.1);
            if (isdefined(ai_spawned)) {
                ai_spawned.var_a950813d = 1;
                ai_spawned thread function_bf606a73(self, instance);
            }
        }
        wait(randomfloatrange(0.5, 1));
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0xbe0cd6cb, Offset: 0x61a8
// Size: 0x344
function function_77c42a22(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    self waittill(#"hash_32687071c727f6e4");
    var_559503f1 = array::randomize(self.var_559503f1);
    n_spawned = 0;
    n_total = function_ce92dcb0();
    for (i = 0; i < n_total; i++) {
        level flag::wait_till("spawn_zombies");
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
        ai_spawned = namespace_85745671::function_9d3ad056(var_7ecdee63, var_559503f1[i].origin, var_559503f1[i].angles, "payload_zombie");
        wait(0.1);
        if (isdefined(ai_spawned)) {
            ai_spawned.var_a950813d = 1;
            if (namespace_7589cf5c::function_82e262cf(ai_spawned.aitype)) {
                instance.var_38c710c3 = float(gettime()) / 1000;
                instance.var_2133c784++;
                instance.var_b803db9c++;
                ai_spawned callback::function_d8abfc3d(#"on_ai_killed", &function_c36cb7b1);
            }
            ai_spawned.var_8046dccf = 1;
            ai_spawned thread function_bf606a73(self, instance);
            n_spawned++;
            if (n_spawned >= n_total) {
                break;
            }
        }
        if (i >= self.var_559503f1.size - 1) {
            i = 0;
        }
        waitframe(1);
    }
    self thread function_9b6490c4(instance);
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x67f53d6d, Offset: 0x64f8
// Size: 0x320
function function_9b6490c4(instance) {
    instance endon(#"objective_ended");
    self endon(#"death", #"approach");
    self waittill(#"portal");
    instance.n_active = function_dae1a57b();
    instance.n_spawned = 0;
    while (true) {
        level flag::wait_till("spawn_zombies");
        if (instance.n_spawned < instance.n_active) {
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
            ai_spawned = namespace_85745671::function_9d3ad056(var_7ecdee63, self.s_portal.origin + (randomintrange(-20, 20), randomintrange(-20, 20), 0), self.s_portal.angles, "payload_zombie");
            wait(0.1);
            if (isdefined(ai_spawned)) {
                ai_spawned.var_a950813d = 1;
                instance.n_spawned++;
                if (namespace_7589cf5c::function_82e262cf(ai_spawned.aitype)) {
                    instance.var_38c710c3 = float(gettime()) / 1000;
                    instance.var_2133c784++;
                    instance.var_b803db9c++;
                    ai_spawned callback::function_d8abfc3d(#"on_ai_killed", &function_c36cb7b1);
                }
                ai_spawned thread function_bf606a73(self, instance);
            }
        }
        wait(0.25);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0xbbb07490, Offset: 0x6820
// Size: 0x19c
function zombie_death_watcher(*params) {
    if (self.aitype === #"hash_7a8b592728eec95d" && !is_true(self.b_exploded)) {
        self.b_exploded = 1;
        if (isdefined(level.contentmanager.activeobjective.var_b8ca9d7)) {
            if (isdefined(self) && distance2dsquared(self.origin, level.contentmanager.activeobjective.var_b8ca9d7.origin) <= sqr(200)) {
                n_dmg = 50;
                level.contentmanager.activeobjective.var_b8ca9d7 dodamage(n_dmg, level.contentmanager.activeobjective.var_b8ca9d7.origin, self, undefined, undefined, "MOD_EXPLOSIVE");
            }
        }
    }
    if (isdefined(level.contentmanager.activeobjective.n_active) && level.contentmanager.activeobjective.n_active > 0) {
        level.contentmanager.activeobjective.n_active--;
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xe7ac6f01, Offset: 0x69c8
// Size: 0xce
function function_dae1a57b() {
    n_players = getplayers().size;
    switch (n_players) {
    case 1:
        n_spawns = 4;
        break;
    case 2:
        n_spawns = 6;
        break;
    case 3:
        n_spawns = 9;
        break;
    case 4:
        n_spawns = 13;
        break;
    default:
        n_spawns = 8;
        break;
    }
    return n_spawns;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xe1b7e40a, Offset: 0x6aa0
// Size: 0xce
function function_ce92dcb0() {
    n_players = getplayers().size;
    switch (n_players) {
    case 1:
        n_spawns = 8;
        break;
    case 2:
        n_spawns = 12;
        break;
    case 3:
        n_spawns = 16;
        break;
    case 4:
        n_spawns = 20;
        break;
    default:
        n_spawns = 14;
        break;
    }
    return n_spawns;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0xa5fab5d7, Offset: 0x6b78
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

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x3f8ce15, Offset: 0x6cf0
// Size: 0x308
function function_785ea4f4(instance) {
    self endon(#"death");
    objective_setinvisibletoall(self.n_objective_id);
    self ghost();
    wait(2);
    self notify(#"approach");
    if (isdefined(self.mdl_portal)) {
        self.mdl_portal clientfield::increment("" + #"hash_75190371f51baf5f");
        self.mdl_portal clientfield::set("" + #"portal", 0);
    }
    wait(2.75);
    if (isdefined(self.var_43123efe)) {
        if (instance.variant === "payload_teleport" && isdefined(self.var_43123efe.var_5c6f6051)) {
            level thread function_ceab499d(self.var_43123efe.powerup_name, self.origin);
        }
        if (is_true(self.var_43123efe.var_2d1326e)) {
            self.var_43123efe notify(#"hash_52a1c0be67192d9b");
            self.var_43123efe deletedelay();
        } else {
            self.var_43123efe delete();
        }
    }
    self playrumbleonentity(#"sr_payload_portal_final_rumble");
    if (isdefined(self.mdl_portal)) {
        self.mdl_portal delete();
    }
    if (isdefined(self.var_3e5ed63d)) {
        self.var_3e5ed63d delete();
    }
    if (isdefined(self.var_edbf8a99)) {
        self.var_edbf8a99 delete();
    }
    foreach (player in getplayers()) {
        player.var_d23362c = 0;
        player clientfield::set_to_player("" + #"hash_19f93b2cb70ea2c5", 0);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 2, eflags: 0x2 linked
// Checksum 0xfd9c541c, Offset: 0x7000
// Size: 0x36
function function_ceab499d(str_powerup, v_org) {
    mdl_powerup = zm_powerups::specific_powerup_drop(str_powerup, v_org);
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x0
// Checksum 0x3c259652, Offset: 0x7040
// Size: 0x74
function function_69c0c9b6() {
    self endon(#"death");
    self.allowdeath = 1;
    if (self.archetype === #"zombie") {
        gibserverutils::annihilate(self);
    }
    self kill(undefined, undefined, undefined, undefined, undefined, 1);
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 2, eflags: 0x0
// Checksum 0xa0f7b40b, Offset: 0x70c0
// Size: 0xa4
function function_cd8da208(var_b8ca9d7, instance) {
    self endon(#"death");
    var_b8ca9d7 endon(#"death");
    instance endon(#"objective_ended");
    if (math::cointoss()) {
        awareness::function_c241ef9a(self, var_b8ca9d7, 15);
        return;
    }
    self thread function_bf606a73(var_b8ca9d7, instance);
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 2, eflags: 0x2 linked
// Checksum 0x4fbd0688, Offset: 0x7170
// Size: 0x15e
function function_bf606a73(var_b8ca9d7, instance) {
    self endon(#"death");
    var_b8ca9d7 endon(#"death");
    instance endon(#"objective_ended");
    self.str_move = "sprint";
    self callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_fd68cae4);
    wait(0.1);
    while (true) {
        a_players = getplayers();
        player = awareness::function_d7fedde2(var_b8ca9d7);
        if (!isdefined(self.var_b7e90547) && isalive(self) && isalive(player)) {
            self.var_b7e90547 = 1;
            awareness::function_c241ef9a(self, player, 16);
        }
        wait(15);
        self.var_b7e90547 = undefined;
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0x9f0139eb, Offset: 0x72d8
// Size: 0x4c
function function_fd68cae4() {
    if (self.archetype == #"zombie") {
        if (level.var_b48509f9 < 5) {
            self namespace_85745671::function_9758722(self.str_move);
        }
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x0
// Checksum 0xc9b604fa, Offset: 0x7330
// Size: 0x12c
function function_9049ebf8(instance) {
    self endon(#"death", #"reached_end_node");
    instance endon(#"objective_ended");
    level waittill(#"hash_681a588173f0b1d7");
    if (is_true(self.var_a123c71)) {
        level thread namespace_7589cf5c::play_vo("objectivePayloadSuddenDeath");
    }
    while (is_true(self.var_a123c71)) {
        wait(0.1);
    }
    self thread function_dd677e5d();
    self notify(#"destruct");
    self setbrake(1);
    wait(2);
    self dodamage(self.health, self.origin);
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0x78b801f, Offset: 0x7468
// Size: 0x108
function function_dd677e5d() {
    if (isdefined(self.mdl_portal)) {
        self.mdl_portal delete();
    }
    if (isdefined(self.var_3e5ed63d)) {
        self.var_3e5ed63d delete();
    }
    foreach (player in getplayers()) {
        player.var_d23362c = 0;
        player clientfield::set_to_player("" + #"hash_19f93b2cb70ea2c5", 0);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x633ba814, Offset: 0x7578
// Size: 0xec
function function_fe857bf3(instance) {
    instance endon(#"objective_ended");
    self waittill(#"death");
    if (isdefined(self)) {
        self.var_a123c71 = 0;
    }
    if (isdefined(self)) {
        radiusdamage(self.origin, 1200, 1000, 500, self, "MOD_EXPLOSIVE");
    }
    if (instance flag::get(#"hash_12988a5a3e6a65d6")) {
        level.var_97e461d4 = undefined;
        instance flag::clear(#"hash_12988a5a3e6a65d6");
    }
    objective_manager::objective_ended(instance, 0);
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x6c7c86f, Offset: 0x7670
// Size: 0x44
function function_87de8025(instance) {
    instance waittill(#"objective_ended");
    if (instance.success) {
        self delete();
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x2bb8242c, Offset: 0x76c0
// Size: 0x550
function function_6ae999c2(instance) {
    self endon(#"death", #"destruct");
    instance endon(#"objective_ended");
    self.var_a123c71 = 0;
    self.var_f8edfabd = 0;
    self.var_f5d0e3f6 = 0;
    self.var_59078fae = 0;
    self.var_b591d382 = 0;
    self.var_ee53f643 = 0;
    self waittill(#"deployed");
    self thread function_1e88c470(instance);
    if (getplayers().size === 1) {
        var_2a9d371 = 5;
    } else {
        var_2a9d371 = 4;
    }
    while (true) {
        self.b_proximity = 0;
        self.n_players = 0;
        a_players = getplayers();
        foreach (player in a_players) {
            if (distancesquared(self.origin, player.origin) <= sqr(350) && !player laststand::player_is_in_laststand()) {
                player scoreevents::function_31553fb3();
                self.b_proximity = 1;
                self.n_players++;
            }
        }
        if (isdefined(instance.var_f16db373)) {
            if (distance2dsquared(instance.var_f16db373.origin, self.origin) <= sqr(300)) {
                self.b_proximity = 1;
            }
        }
        if (isdefined(self.mdl_portal)) {
            if (distance2dsquared(self.mdl_portal.origin, self.origin) <= sqr(300) && !self.var_ee53f643) {
                self.b_proximity = 1;
            }
        }
        n_speed = max(self.n_players + var_2a9d371, 6);
        wait(0.25);
        if (!self.b_proximity || is_true(self.abnormal_status.emped) || is_true(self.var_f5d0e3f6)) {
            self setspeed(0, 5, 3);
            self.var_a123c71 = 0;
            self setbrake(1);
            self vehicle::toggle_lights_group(4, 1);
            self clientfield::set("" + #"hash_db052f565349c0d", 0);
            self notify(#"hash_734e3e2063a699a2");
            if (!isdefined(self.var_b79a8ac7) && !self.var_f8edfabd && !self.var_b591d382) {
                self thread function_fa1230e0(instance);
            }
            continue;
        }
        self notify(#"hash_76f907c580cdbbc6");
        self setspeed(n_speed, 5, 3);
        self.var_a123c71 = 1;
        self setbrake(0);
        self vehicle::toggle_lights_group(4, 0);
        self clientfield::set("" + #"hash_db052f565349c0d", 1);
        self.var_a2c49add = undefined;
        self.var_f8edfabd = 0;
        namespace_85745671::function_b70e2a37(self);
        if (self.var_59078fae) {
            self.var_59078fae = 0;
            self connectpaths();
        }
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x9dd057a1, Offset: 0x7c18
// Size: 0x142
function function_fa1230e0(instance) {
    instance endon(#"objective_ended");
    self endon(#"hash_76f907c580cdbbc6", #"death");
    self.var_f8edfabd = 1;
    wait(1);
    self disconnectpaths();
    self.var_59078fae = 1;
    wait(1);
    slots = namespace_85745671::function_bdb2b85b(self, self.origin, self.angles, 64, 4, 300);
    if (!isdefined(slots) || slots.size <= 0) {
        self.var_f8edfabd = 0;
        return;
    }
    self.var_b79a8ac7 = {#var_f019ea1a:1000, #slots:slots};
    level.attackables[level.attackables.size] = self;
    self.var_f8edfabd = 0;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 2, eflags: 0x2 linked
// Checksum 0x1e1c385a, Offset: 0x7d68
// Size: 0xe0
function function_3ef1d58a(instance, n_path) {
    if (instance.variant === "payload_noteleport") {
        var_cdce8e6f = instance.contentgroups[#"hash_fc6148f0765e54b" + n_path][0];
    } else if (instance.variant === "payload_teleport") {
        var_cdce8e6f = instance.contentgroups[#"hash_87cb4370bdebb2a" + n_path][0];
    }
    if (isdefined(var_cdce8e6f.script_noteworthy)) {
        instance flag::set(#"hash_12988a5a3e6a65d6");
        level.var_97e461d4 = var_cdce8e6f.script_noteworthy;
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x0
// Checksum 0x4f968762, Offset: 0x7e50
// Size: 0x234
function function_49ae80f0(instance) {
    self notify("5f3bf21419e6a0a6");
    self endon("5f3bf21419e6a0a6");
    instance endon(#"objective_ended");
    self endon(#"hash_76f907c580cdbbc6", #"death");
    wait(20);
    a_s_pts = namespace_85745671::function_e4791424(self.origin, 24, 40, 1200, 1000);
    n_spawns = function_4bed5fd6();
    for (i = 0; i < n_spawns; i++) {
        level flag::wait_till("spawn_zombies");
        if (math::cointoss()) {
            var_7ecdee63 = #"hash_7a8b592728eec95d";
        } else if (level.var_b48509f9 > 2) {
            var_7ecdee63 = #"hash_46c917a1b5ed91e7";
        } else if (level.var_b48509f9 > 1) {
            var_7ecdee63 = #"hash_338eb4103e0ed797";
        } else {
            var_7ecdee63 = #"hash_7cba8a05511ceedf";
        }
        if (isdefined(a_s_pts[i])) {
            ai_spawned = namespace_85745671::function_9d3ad056(var_7ecdee63, a_s_pts[i].origin, self.angles, "payload_zombie");
            wait(0.1);
            if (isdefined(ai_spawned)) {
                ai_spawned.var_a950813d = 1;
                instance.var_74ec00fb++;
                ai_spawned thread function_84d85877(instance);
                ai_spawned thread function_bf606a73(self, instance);
            }
        }
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xd4929ad3, Offset: 0x8090
// Size: 0x9e
function function_4bed5fd6() {
    switch (getplayers().size) {
    case 1:
        n_spawns = 8;
        break;
    case 2:
        n_spawns = 12;
        break;
    case 3:
        n_spawns = 16;
        break;
    case 4:
        n_spawns = 20;
        break;
    }
    return n_spawns;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x6b680feb, Offset: 0x8138
// Size: 0xd0
function function_8469f022(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    var_ad5fcb11 = 0;
    while (true) {
        if (self.var_a123c71 == 1) {
            if (var_ad5fcb11 != 1) {
                self playsound(#"hash_432c591c600ef4d2");
                var_ad5fcb11 = 1;
            }
        } else if (var_ad5fcb11 != 0) {
            self playsound(#"hash_5d9bb1a3ab5cf792");
            var_ad5fcb11 = 0;
        }
        wait(0.25);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x639197b9, Offset: 0x8210
// Size: 0x7e
function function_1e88c470(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    while (true) {
        if (!is_true(self.var_a123c71)) {
            self playsound(#"hash_52af5fa9a4db69a2");
        }
        wait(3);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x10fbef8d, Offset: 0x8298
// Size: 0x64
function function_9c54feb0(instance) {
    self.n_objective_id = zm_utility::function_f5a222a8(#"hash_33a2a5933ee65208", self);
    instance waittill(#"objective_ended");
    zm_utility::function_bc5a54a8(self.n_objective_id);
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0xcf53fc55, Offset: 0x8308
// Size: 0x8dc
function payload_teleport(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    self.var_c57af231 = 0;
    while (true) {
        self waittill(#"reached_end_node");
        if (isdefined(self.mdl_portal)) {
            self.mdl_portal playrumblelooponentity(#"sr_payload_portal_rumble");
        }
        self.var_b591d382 = 1;
        self setbrake(1);
        self objective_manager::function_811514c3();
        if (isdefined(self.currentnode.script_string)) {
            self.var_6a4ec994++;
            function_3ef1d58a(instance, self.var_6a4ec994 + 1);
            var_b5ec4cd3 = getvehiclenode(self.currentnode.script_string, "targetname");
            var_b5ec4cd3.var_d5ebc20b = getvehiclenode(var_b5ec4cd3.script_string, "targetname");
            if (isdefined(var_b5ec4cd3)) {
                n_time = var_b5ec4cd3.script_int;
            }
            self ghost();
            if (isdefined(self.var_43123efe)) {
                if (is_true(self.var_43123efe.var_2d1326e)) {
                    self.var_43123efe notify(#"hash_52a1c0be67192d9b");
                    self.var_43123efe deletedelay();
                } else {
                    self.var_43123efe delete();
                }
            }
            objective_setinvisibletoall(self.n_objective_id);
            wait(1);
            level thread namespace_7589cf5c::play_vo("objectivePayloadRiftCollapse");
            wait(1);
            if (isdefined(self.mdl_portal)) {
                self.mdl_portal clientfield::increment("" + #"hash_75190371f51baf5f");
                self.mdl_portal clientfield::set("" + #"portal", 0);
            }
            wait(2.75);
            if (isdefined(self.mdl_portal)) {
                self.mdl_portal clientfield::set("" + #"payload_teleport", 1);
            }
            wait(0.1);
            self function_7db7fcd5(instance);
            if (isdefined(self.mdl_portal)) {
                self.mdl_portal stoprumble(#"sr_payload_portal_rumble");
                self.mdl_portal delete();
            }
            if (isdefined(self.var_edbf8a99)) {
                self.var_edbf8a99 notsolid();
            }
            self vehicle::get_off_path();
            waitframe(1);
            if (instance.targetname === "objective_golova_payload_teleport") {
                var_cdce8e6f = instance.contentgroups[#"hash_4aa151892b77e9c8"][0];
                if (isdefined(var_cdce8e6f.script_noteworthy)) {
                    instance flag::set(#"hash_12988a5a3e6a65d6");
                    level.var_97e461d4 = var_cdce8e6f.script_noteworthy;
                }
            }
            self function_42fbf5d9(instance, var_b5ec4cd3);
            wait(0.5);
            self notify(#"assault");
            self thread vehicle::go_path();
            self thread function_3c8781f3(instance);
            wait(2);
            if (isdefined(self.var_cb43e7ed)) {
                self.var_cb43e7ed clientfield::set("" + #"portal", 0);
                self.var_cb43e7ed delete();
            }
            self setbrake(0);
            while (true) {
                if (is_true(self.var_e0c43095)) {
                    break;
                }
                if (!self.var_c57af231) {
                    self.var_c57af231 = 1;
                    while (!is_true(self.b_proximity)) {
                        waitframe(1);
                    }
                    wait(0.5);
                    level namespace_7589cf5c::play_vo("objectivePayloadReturned");
                    self.var_e0c43095 = 1;
                    break;
                }
                wait(0.1);
            }
            wait(0.5);
            level namespace_7589cf5c::play_vo("objectivePayloadReturnedResponse");
            self.var_b591d382 = 0;
            if (self.variant === "payload_noteleport") {
                self waittill(#"hash_d737648ea5715c3");
            }
            if (self.var_6a4ec994 > 1) {
                self.mdl_beam = util::spawn_model("tag_origin", var_b5ec4cd3.var_d5ebc20b.origin);
                self waittill(#"final_rift");
                if (isdefined(self.mdl_beam)) {
                    wait(1.5);
                    self.mdl_beam clientfield::set("" + #"payload_teleport", 2);
                    self thread function_e0c5b0a4(instance);
                }
            }
            self.mdl_portal = util::spawn_model("tag_origin", var_b5ec4cd3.var_d5ebc20b.origin, (0, 90, 0));
            self.mdl_portal clientfield::set("" + #"portal", 1);
            self.mdl_portal thread function_fd3059d0(instance);
            if (isdefined(self.var_edbf8a99)) {
                self.var_edbf8a99 moveto(self.mdl_portal.origin, 0.05);
                self.var_edbf8a99 waittill(#"movedone");
                self.var_edbf8a99 solid();
            }
            continue;
        }
        self function_785ea4f4(instance);
        if (isdefined(self.health) && isdefined(self.max_health) && self.health / self.max_health >= 0.8) {
            level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"escort_pristine_zm", #allplayers:1});
        }
        instance thread function_28250c29();
        namespace_7589cf5c::function_3899cfea();
        objective_manager::objective_ended(instance);
        break;
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x6586f3eb, Offset: 0x8bf0
// Size: 0xa4
function function_e0c5b0a4(instance) {
    self endon(#"death");
    instance endon(#"objective_ended");
    wait(3);
    self notify(#"final_portal");
    self waittill(#"enter");
    if (isdefined(self.mdl_beam)) {
        self.mdl_beam clientfield::set("" + #"payload_teleport", 0);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0xa7e39f53, Offset: 0x8ca0
// Size: 0xa4
function function_3c8781f3(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    while (!self.var_a123c71) {
        objective_setinvisibletoall(self.n_objective_id);
        wait(0.5);
        objective_setvisibletoall(self.n_objective_id);
        wait(0.5);
    }
    objective_setvisibletoall(self.n_objective_id);
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0xc51f4501, Offset: 0x8d50
// Size: 0x424
function function_fd3059d0(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    while (true) {
        foreach (player in getplayers()) {
            if (isalive(player)) {
                if (distance2dsquared(self.origin, player.origin) <= sqr(120) && !is_true(player.var_d23362c)) {
                    player dodamage(20, self.origin, self, self, undefined, "MOD_DEATH_CIRCLE");
                    player clientfield::set_to_player("" + #"hash_19f93b2cb70ea2c5", 1);
                    player function_bc82f900("damage_heavy");
                    player.var_d23362c = 1;
                    continue;
                }
                if (distance2dsquared(self.origin, player.origin) <= sqr(150) && !is_true(player.var_d23362c)) {
                    player dodamage(10, self.origin, self, self, undefined, "MOD_DEATH_CIRCLE");
                    player clientfield::set_to_player("" + #"hash_19f93b2cb70ea2c5", 1);
                    player function_bc82f900("damage_heavy");
                    player.var_d23362c = 1;
                    continue;
                }
                if (distance2dsquared(self.origin, player.origin) <= sqr(180) && !is_true(player.var_d23362c)) {
                    player dodamage(5, self.origin, self, self, undefined, "MOD_DEATH_CIRCLE");
                    player clientfield::set_to_player("" + #"hash_19f93b2cb70ea2c5", 1);
                    player function_bc82f900("damage_light");
                    player.var_d23362c = 1;
                    continue;
                }
                if (is_true(player.var_d23362c)) {
                    player.var_d23362c = 0;
                    player clientfield::set_to_player("" + #"hash_19f93b2cb70ea2c5", 0);
                }
            }
        }
        wait(1);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 2, eflags: 0x2 linked
// Checksum 0x567620a5, Offset: 0x9180
// Size: 0x68c
function function_42fbf5d9(instance, var_f00d1e) {
    instance endon(#"objective_ended");
    self endon(#"death");
    self.var_a0bd9710 = util::spawn_model("tag_origin", self.origin, var_f00d1e.angles);
    self.var_a0bd9710 rotateto(var_f00d1e.angles + (randomintrange(200, 270), randomintrange(200, 270), randomintrange(200, 270)), 0.05);
    wait(0.1);
    self linkto(self.var_a0bd9710);
    wait(0.1);
    n_dist = distance(self.var_a0bd9710.origin, var_f00d1e.origin);
    n_time = n_dist / 1000;
    var_7fd007f9 = distance2d(self.var_a0bd9710.origin, var_f00d1e.origin) * 0.5;
    n_inc = int(n_dist);
    self show();
    objective_setvisibletoall(self.n_objective_id);
    self.var_a0bd9710 rotateto(var_f00d1e.angles, n_time + 6);
    self.var_a0bd9710 playrumbleonentity(#"hash_2d43d9987e4a73a8");
    self clientfield::set("" + #"hash_85dd1e407a282d9", 1);
    level thread namespace_7589cf5c::play_vo("objectivePayloadRiftCollapseResponse");
    while (true) {
        var_ed0c1ff8 = distance2d(self.var_a0bd9710.origin, var_f00d1e.origin);
        if (var_ed0c1ff8 <= 100) {
            break;
        }
        v_dest = var_f00d1e.origin + (0, 0, n_inc);
        n_inc -= 30;
        if (v_dest[2] <= var_f00d1e.origin[2]) {
            break;
        }
        self.var_a0bd9710 moveto(v_dest, n_time);
        waitframe(1);
    }
    foreach (player in getplayers()) {
        player.var_d23362c = 0;
        player clientfield::set_to_player("" + #"hash_19f93b2cb70ea2c5", 0);
    }
    n_dist = distance(self.var_a0bd9710.origin, var_f00d1e.origin);
    n_time = n_dist / 600;
    self.var_a0bd9710 moveto(var_f00d1e.origin + (0, 0, 40), n_time);
    self.var_a0bd9710 waittill(#"movedone");
    self clientfield::set("" + #"hash_85dd1e407a282d9", 0);
    self.var_a0bd9710 playrumbleonentity(#"sr_transmitter_impact");
    self thread function_de22e1a0();
    self unlink();
    waitframe(1);
    self.angles = var_f00d1e.angles;
    self vehicle::get_on_path(var_f00d1e);
    self playsound(#"hash_3a33f6dc09073444");
    wait(0.5);
    if (self.var_6a4ec994 < 2) {
        self.var_43123efe = instance function_eb76d765();
    } else {
        self.var_43123efe = instance function_dc378d61();
    }
    wait(0.25);
    if (isdefined(self.var_43123efe)) {
        if (isdefined(self.var_43123efe.v_offset) && isdefined(self.var_43123efe.v_ang)) {
            self.var_43123efe linkto(self, "tag_cage_attach", self.var_43123efe.v_offset, self.var_43123efe.v_ang);
        } else {
            self.var_43123efe linkto(self, "tag_cage_attach");
        }
    }
    self.var_a0bd9710 delete();
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xe22b261c, Offset: 0x9818
// Size: 0x170
function function_de22e1a0() {
    players = function_a1ef346b(undefined, self.origin, 500);
    foreach (player in players) {
        targetorigin = (player.origin[0], player.origin[1], self.origin[2]);
        var_a6470558 = vectornormalize(targetorigin - self.origin);
        player playerknockback(1);
        player applyknockback(100, var_a6470558);
        player playerknockback(0);
        player dodamage(100, self.origin);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x0
// Checksum 0x67632ed, Offset: 0x9990
// Size: 0x84
function function_4ebec20d(var_f00d1e) {
    self endon(#"death");
    if (!isdefined(self.var_cb43e7ed)) {
        self.var_cb43e7ed = util::spawn_model("tag_origin", var_f00d1e.origin, (0, 90, 0));
        self.var_cb43e7ed clientfield::set("payload_teleport", 2);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 2, eflags: 0x0
// Checksum 0xb1199655, Offset: 0x9a20
// Size: 0x74
function function_6c09e96b(instance, n_time) {
    instance endon(#"objective_ended");
    self endon(#"death");
    self waittilltimeout(8, #"hash_76f907c580cdbbc6");
    instance thread objective_manager::start_timer(n_time, "payload");
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0xc1390014, Offset: 0x9aa0
// Size: 0x94
function function_eb89f65f(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    self vehicle::lights_off();
    self waittill(#"hash_13077c2a8907f2fe");
    self vehicle::toggle_sounds(1);
    self vehicle::lights_on();
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x3c9f76ee, Offset: 0x9b40
// Size: 0x4bc
function function_79ae8e99(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    while (true) {
        a_zombies = function_a38db454(self.origin, 200);
        foreach (zombie in a_zombies) {
            if (zombie.archetype === #"zombie" && is_true(self.var_a123c71) && !is_true(zombie.knockdown)) {
                if (distance2dsquared(self.origin, zombie.origin) > sqr(60)) {
                    continue;
                }
                zombie dodamage(50, self.origin, self, undefined, undefined, "MOD_CRUSH");
                zombie.knockdown = 1;
                zombie.knockdown_type = "knockdown_shoved";
                var_7d6a995e = self.origin - zombie.origin;
                var_1040735c = vectornormalize((var_7d6a995e[0], var_7d6a995e[1], 0));
                zombie_forward = anglestoforward(zombie.angles);
                zombie_forward_2d = vectornormalize((zombie_forward[0], zombie_forward[1], 0));
                zombie_right = anglestoright(zombie.angles);
                zombie_right_2d = vectornormalize((zombie_right[0], zombie_right[1], 0));
                dot = vectordot(var_1040735c, zombie_forward_2d);
                if (dot >= 0.5) {
                    zombie.knockdown_direction = "front";
                    zombie.getup_direction = "getup_back";
                    zombie thread function_c93a6362(self);
                } else if (dot < 0.5 && dot > -0.5) {
                    dot = vectordot(var_1040735c, zombie_right_2d);
                    if (dot > 0) {
                        zombie.knockdown_direction = "right";
                        if (math::cointoss()) {
                            zombie.getup_direction = "getup_back";
                        } else {
                            zombie.getup_direction = "getup_belly";
                        }
                    } else {
                        zombie.knockdown_direction = "left";
                        zombie.getup_direction = "getup_belly";
                    }
                } else {
                    zombie.knockdown_direction = "back";
                    zombie.getup_direction = "getup_belly";
                }
                continue;
            }
            if (zombie.archetype === #"zombie" && is_true(self.var_a123c71) && is_true(zombie.knockdown)) {
                if (distance2dsquared(self.origin, zombie.origin) > sqr(60)) {
                    continue;
                }
                zombie thread function_c93a6362(self);
            }
        }
        wait(0.1);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0xd4a07b9e, Offset: 0xa008
// Size: 0x6c
function function_c93a6362(var_b8ca9d7) {
    self endon(#"death");
    var_b8ca9d7 endon(#"death");
    if (isdefined(self.knockdown_direction) && isalive(self)) {
        self thread function_1b4b0c63(var_b8ca9d7);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0xc60fc6bc, Offset: 0xa080
// Size: 0x14a
function function_1b4b0c63(var_b8ca9d7) {
    self endon(#"death");
    var_b8ca9d7 endon(#"death");
    wait(0.75);
    v_forward = var_b8ca9d7.origin + anglestoforward(var_b8ca9d7.angles) * 60;
    if (distance2dsquared(var_b8ca9d7.origin, self.origin) < sqr(70)) {
        gibserverutils::annihilate(self);
        if (isalive(self)) {
            if (zm_utility::is_magic_bullet_shield_enabled(self)) {
                self util::stop_magic_bullet_shield();
            }
            if (isalive(self)) {
                self kill();
            }
        }
        return;
    }
    self.knockdown_direction = undefined;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xb3967bbb, Offset: 0xa1d8
// Size: 0x210
function function_9bf6c44a() {
    self.a_s_blockers = self.contentgroups[#"hash_441da645c3f27eea"];
    self.a_mdl_blockers = [];
    foreach (s_blocker in self.a_s_blockers) {
        self.a_mdl_blockers[self.a_mdl_blockers.size] = content_manager::spawn_script_model(s_blocker, s_blocker.model, 1);
    }
    foreach (mdl_blocker in self.a_mdl_blockers) {
        mdl_blocker ghost();
    }
    self waittill(#"objective_ended");
    foreach (mdl_blocker in self.a_mdl_blockers) {
        mdl_blocker connectpaths();
        wait(0.1);
        mdl_blocker delete();
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0x4724b3a4, Offset: 0xa3f0
// Size: 0x186
function function_aece4588(var_3afe334f) {
    switch (var_3afe334f) {
    case 1:
        var_e7a1cbae = #"objective_payload_ailist_1";
        break;
    case 2:
        var_e7a1cbae = #"objective_payload_ailist_2";
        break;
    case 3:
        var_e7a1cbae = #"objective_payload_ailist_3";
        break;
    case 4:
        var_e7a1cbae = #"objective_payload_ailist_4";
        break;
    case 5:
        var_e7a1cbae = #"objective_payload_ailist_5";
        break;
    case 6:
        var_e7a1cbae = #"objective_payload_ailist_6";
        break;
    case 7:
        var_e7a1cbae = #"objective_payload_ailist_7";
        break;
    default:
        var_e7a1cbae = #"objective_payload_ailist_8";
        break;
    }
    var_6017f33e = namespace_679a22ba::function_ca209564(var_e7a1cbae);
    return var_6017f33e.var_990b33df;
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x2 linked
// Checksum 0xc50b26c8, Offset: 0xa580
// Size: 0x10c
function function_89951438(instance) {
    instance endon(#"objective_ended");
    self endon(#"death");
    while (true) {
        if (isdefined(self)) {
            a_vehicles = getentitiesinradius(self.origin, 250, 14);
            foreach (vh in a_vehicles) {
                if (isdefined(vh)) {
                    vh thread zm_utility::function_78e620d();
                }
            }
        }
        wait(0.25);
    }
}

