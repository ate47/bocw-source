// Atian COD Tools GSC CW decompiler test
#using script_6155d71e1c9a57eb;
#using script_16b1b77a76492c6a;
#using script_34ab99a4ca1a43d;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using script_1471eea5d2e60f83;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_181e92ae;

// Namespace namespace_181e92ae/world_event_monster_house
// Params 0, eflags: 0x5
// Checksum 0xece1d005, Offset: 0x2c0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_6eb528f341abf64a", &preinit, undefined, undefined, #"content_manager");
}

// Namespace namespace_181e92ae/world_event_monster_house
// Params 0, eflags: 0x6 linked
// Checksum 0x5950bbe2, Offset: 0x310
// Size: 0xec
function private preinit() {
    if (!zm_utility::is_survival()) {
        return;
    }
    if (is_true(getgametypesetting(#"hash_1e1a5ebefe2772ba"))) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_50bcc0278b8ff6b2")) && !getdvarint(#"hash_730311c63805303a", 0)) {
        return;
    }
    content_manager::register_script(#"hash_6eb528f341abf64a", &function_66c8033b, 1);
}

// Namespace namespace_181e92ae/world_event_monster_house
// Params 1, eflags: 0x2 linked
// Checksum 0x3fa1c84f, Offset: 0x408
// Size: 0x276
function function_66c8033b(instance) {
    s_start = instance.contentgroups[#"hash_4d7f33a283d72002"][0];
    instance.var_8b241b32 = s_start.origin;
    mdl_start = function_4b312787(s_start);
    if (mdl_start clientfield::is_registered("perk_death_perception_item_marked_for_rob")) {
        mdl_start clientfield::set("perk_death_perception_item_marked_for_rob", 1);
    }
    mdl_start.instance = instance;
    instance.var_b9e44637 = mdl_start;
    instance.n_obj_id = zm_utility::function_f5a222a8(#"hash_4ca0447c67516315", instance.var_8b241b32);
    mdl_start callback::function_d8abfc3d(#"hash_5f0caa4b2d44fedf", &function_4c9f2ecc);
    instance flag::wait_till(#"cleanup");
    level thread namespace_9b972177::function_16bede30();
    if (isdefined(instance.n_obj_id)) {
        zm_utility::function_bc5a54a8(instance.n_obj_id);
    }
    a_ai = getaiarray("monster_house_ai", "targetname");
    foreach (ai in a_ai) {
        if (isalive(ai)) {
            gibserverutils::annihilate(ai);
            ai.allowdeath = 1;
            ai kill(undefined, undefined, undefined, undefined, undefined, 1);
            waitframe(1);
        }
    }
}

// Namespace namespace_181e92ae/world_event_monster_house
// Params 1, eflags: 0x6 linked
// Checksum 0xca4190a6, Offset: 0x688
// Size: 0x10c
function private function_4c9f2ecc(s_result) {
    if (isdefined(self.instance) && (isplayer(s_result.attacker) || isai(s_result.attacker) || isvehicle(s_result.attacker))) {
        self function_3a22c4f4();
        self.instance.var_b9e44637 playsound(#"hash_227254733f1aeabf");
        self.instance.var_b9e44637 playloopsound(#"hash_42b8b4ed773cbb0b");
        level thread function_37eab05b(self.instance);
    }
}

// Namespace namespace_181e92ae/world_event_monster_house
// Params 1, eflags: 0x6 linked
// Checksum 0xa7940df8, Offset: 0x7a0
// Size: 0x2e0
function private function_37eab05b(instance) {
    level thread function_a77f3600(instance);
    level thread function_2d2fade8(instance);
    level thread function_68aac628(instance, "monsterhouse_low");
    var_d56fdb6 = array::randomize(isdefined(instance.contentgroups[#"hash_1c35d9839ba0d789"]) ? instance.contentgroups[#"hash_1c35d9839ba0d789"] : []);
    instance.var_eb3bf4b1 = [];
    var_90acdb64 = getplayers().size * 2 + 4;
    n_spawned = 0;
    instance.var_5cbcc78a = var_90acdb64;
    foreach (var_d2ee34ea in var_d56fdb6) {
        mdl_crystal = function_4b312787(var_d2ee34ea);
        if (isdefined(mdl_crystal)) {
            if (mdl_crystal clientfield::is_registered("perk_death_perception_item_marked_for_rob")) {
                mdl_crystal clientfield::set("perk_death_perception_item_marked_for_rob", 1);
            }
            if (!isdefined(instance.var_eb3bf4b1)) {
                instance.var_eb3bf4b1 = [];
            } else if (!isarray(instance.var_eb3bf4b1)) {
                instance.var_eb3bf4b1 = array(instance.var_eb3bf4b1);
            }
            instance.var_eb3bf4b1[instance.var_eb3bf4b1.size] = mdl_crystal;
            n_spawned++;
            mdl_crystal.instance = instance;
            mdl_crystal callback::function_d8abfc3d(#"hash_5f0caa4b2d44fedf", &function_cdec3a88);
            if (n_spawned >= var_90acdb64) {
                /#
                    level thread function_fa4d3a3e(instance);
                #/
                return;
            }
            util::wait_network_frame();
        }
    }
}

// Namespace namespace_181e92ae/world_event_monster_house
// Params 0, eflags: 0x6 linked
// Checksum 0x9581d381, Offset: 0xa88
// Size: 0xb0
function private function_6326cff8() {
    foreach (player in getplayers()) {
        if (isalive(player)) {
            player zm_stats::increment_challenge_stat(#"hash_3e5ce5fa7934ca93");
        }
    }
}

// Namespace namespace_181e92ae/world_event_monster_house
// Params 1, eflags: 0x6 linked
// Checksum 0x2833e1ec, Offset: 0xb40
// Size: 0x2f4
function private function_cdec3a88(*s_result) {
    var_eb3bf4b1 = self.instance.var_eb3bf4b1;
    ping::function_9455917d(self);
    if (isdefined(var_eb3bf4b1) && isinarray(var_eb3bf4b1, self) && !self.instance flag::get(#"cleanup")) {
        self function_3a22c4f4();
        if (var_eb3bf4b1.size > 1) {
            arrayremovevalue(var_eb3bf4b1, self);
            if (var_eb3bf4b1.size / self.instance.var_5cbcc78a <= 0.33) {
                level thread function_68aac628(self.instance, "monsterhouse_high");
            } else if (var_eb3bf4b1.size / self.instance.var_5cbcc78a <= 0.66) {
                level thread function_68aac628(self.instance, "monsterhouse_med");
            }
            return;
        }
        self.instance flag::set(#"cleanup");
        self.instance.var_b9e44637 stoploopsound();
        self.instance.var_b9e44637 playsound(#"hash_4e683052f8d3eade");
        level thread function_68aac628(self.instance, "monsterhouse_success");
        level thread function_6326cff8();
        self fx::play(#"hash_124c673fd48c8a4", self.origin, self.angles);
        playsoundatposition(#"hash_4359f21da1a5d177", self.origin + (0, 0, 25));
        level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"event_complete", #nearbyplayers:1, #var_b0a57f8c:2000, #location:self.origin});
    }
}

// Namespace namespace_181e92ae/world_event_monster_house
// Params 0, eflags: 0x6 linked
// Checksum 0x24f0ac8b, Offset: 0xe40
// Size: 0x84
function private function_3a22c4f4() {
    self thread function_fc37bb4f("break");
    if (self.model === "p9_sur_crystal_medium_01_orange") {
        self setmodel(#"hash_3c3c40375febff35");
        return;
    }
    self setmodel(#"hash_50aa2075dbc5e6e0");
}

// Namespace namespace_181e92ae/world_event_monster_house
// Params 1, eflags: 0x6 linked
// Checksum 0x22581d88, Offset: 0xed0
// Size: 0x70
function private function_a77f3600(instance) {
    instance endon(#"cleanup");
    while (true) {
        namespace_2c949ef8::function_8b6ae460(instance.var_8b241b32, "monster_house_ambush_list_realm_" + level.realm, 500, 1500, undefined, undefined, 0, "monster_house_ai");
    }
}

// Namespace namespace_181e92ae/world_event_monster_house
// Params 1, eflags: 0x6 linked
// Checksum 0xafbfe661, Offset: 0xf48
// Size: 0x284
function private function_2d2fade8(instance) {
    instance endon(#"cleanup");
    n_wait_time = 90 + getplayers().size * -10;
    level thread function_84ab63bd(instance, n_wait_time);
    wait(n_wait_time);
    /#
        iprintlnbold("<unknown string>");
    #/
    if (isdefined(instance.var_b9e44637)) {
        instance.var_b9e44637 stoploopsound();
        instance.var_b9e44637 playsound(#"hash_2ed05354715fc032");
    }
    level thread function_68aac628(instance, "monsterhouse_fail");
    foreach (mdl_crystal in instance.var_eb3bf4b1) {
        if (!isentity(mdl_crystal)) {
            continue;
        }
        mdl_crystal notify(#"hash_285fd9bc53c292d8");
        mdl_crystal notify(#"hash_52a1c0be67192d9b");
        mdl_crystal val::set(#"hash_3f8039e6e19dc02b", "takedamage", 0);
        mdl_crystal thread function_fc37bb4f("inactive");
        if (mdl_crystal.model === "p9_sur_crystal_medium_01_orange") {
            mdl_crystal setmodel(#"hash_5df28c372acc1808");
            continue;
        }
        mdl_crystal setmodel(#"hash_318de476131babd9");
    }
    instance flag::set(#"cleanup");
}

// Namespace namespace_181e92ae/world_event_monster_house
// Params 2, eflags: 0x2 linked
// Checksum 0x99241da5, Offset: 0x11d8
// Size: 0x94
function function_84ab63bd(instance, n_wait_time) {
    instance endon(#"cleanup");
    var_286f8a2c = 0.33 * n_wait_time;
    wait(var_286f8a2c);
    level thread function_68aac628(instance, "monsterhouse_med");
    wait(var_286f8a2c);
    level thread function_68aac628(instance, "monsterhouse_high");
}

// Namespace namespace_181e92ae/world_event_monster_house
// Params 1, eflags: 0x6 linked
// Checksum 0x368427fb, Offset: 0x1278
// Size: 0x1c8
function private function_4b312787(struct) {
    if (math::cointoss(50)) {
        model = #"p9_sur_crystal_medium_01_orange";
        str_scene = "p9_zm_gold_sur_crystal_medium_01_bundle";
    } else {
        model = #"hash_224a7c9803bf09ee";
        str_scene = "p9_zm_gold_sur_crystal_medium_02_bundle";
    }
    mdl_crystal = content_manager::spawn_script_model(struct, model);
    mdl_crystal setscale(randomfloatrange(0.9, 1.1));
    mdl_crystal val::set(#"hash_3f8039e6e19dc02b", "takedamage", 1);
    mdl_crystal.health = 5;
    mdl_crystal.var_ef3ac4e = #"hash_73df079d82dffbb";
    mdl_crystal.var_9880bf81 = 1;
    mdl_crystal thread function_fc37bb4f("active");
    mdl_crystal thread scene::play(str_scene, mdl_crystal);
    mdl_crystal fx::play(#"hash_55757df7429e3ca6", mdl_crystal.origin, mdl_crystal.angles, #"hash_285fd9bc53c292d8", 1);
    level thread namespace_58949729::function_8265e656(mdl_crystal);
    return mdl_crystal;
}

// Namespace namespace_181e92ae/world_event_monster_house
// Params 1, eflags: 0x2 linked
// Checksum 0x4e938a58, Offset: 0x1448
// Size: 0x132
function function_fc37bb4f(str_type) {
    if (!isdefined(self)) {
        return;
    }
    self endon(#"death");
    switch (str_type) {
    case #"active":
        self playsound(#"hash_1b7654f4f0a7838");
        self playloopsound(#"hash_1b70ba6d6b31bb21");
        break;
    case #"break":
        self stoploopsound();
        waitframe(1);
        self playsound(#"hash_4edec6e285df4ad8");
        break;
    case #"inactive":
        self stoploopsound();
        waitframe(1);
        self playsound(#"hash_48c691f36c44892c");
        break;
    }
}

// Namespace namespace_181e92ae/world_event_monster_house
// Params 2, eflags: 0x2 linked
// Checksum 0x9fffdad5, Offset: 0x1588
// Size: 0x5c
function function_68aac628(instance, var_9c1ed9ea) {
    if (!isdefined(instance.var_de3f63de) || instance.var_de3f63de != var_9c1ed9ea) {
        instance.var_de3f63de = var_9c1ed9ea;
        level namespace_9b972177::function_9a65b730(var_9c1ed9ea);
    }
}

/#

    // Namespace namespace_181e92ae/world_event_monster_house
    // Params 1, eflags: 0x4
    // Checksum 0x79670daa, Offset: 0x15f0
    // Size: 0x202
    function private function_fa4d3a3e(instance) {
        if (!getdvarint(#"hash_730311c63805303a", 0)) {
            return;
        }
        level endon(#"hash_345e9169ebba28fb");
        var_d56fdb6 = isdefined(instance.contentgroups[#"hash_1c35d9839ba0d789"]) ? instance.contentgroups[#"hash_1c35d9839ba0d789"] : [];
        while (true) {
            foreach (var_d2ee34ea in var_d56fdb6) {
                sphere(var_d2ee34ea.origin, 6, (0, 1, 1), 0.75, 0, 7, 10);
            }
            foreach (mdl_crystal in instance.var_eb3bf4b1) {
                if (isdefined(mdl_crystal)) {
                    sphere(mdl_crystal.origin, 12, (1, 0, 0), 1, 0, 7, 10);
                }
            }
            waitframe(10);
        }
    }

#/
