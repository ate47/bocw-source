// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using script_789f2367a00401d8;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using script_3411bb48d41bd3b;
#using script_27347f09888ad15;
#using scripts\core_common\scoreevents_shared.gsc;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using script_2c5daa95f8fec03c;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_mocomp.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_notetracks.gsc;
#using script_3819e7a1427df6d2;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\damagefeedback_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\ai\systems\animation_selector_table.gsc;
#using scripts\core_common\ai\animation_selector_table_evaluators.gsc;

#namespace zm_ai_hulk;

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x5
// Checksum 0x994a6b3e, Offset: 0x748
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_ai_hulk", &preinit, &postinit, undefined, undefined);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x2 linked
// Checksum 0xf2ad83bc, Offset: 0x7a0
// Size: 0x2a6
function preinit() {
    profilestart();
    registerbehaviorscriptfunctions();
    spawner::add_archetype_spawn_function(#"hulk", &function_6f88ed29);
    spawner::function_89a2cd87(#"hulk", &function_186bb1f5);
    clientfield::register("scriptmover", "dog_launcher_explode_fx", 1, 1, "counter");
    clientfield::register("scriptmover", "hs_swarm_state", 1, 3, "int");
    clientfield::register("allplayers", "hs_swarm_damage", 1, 3, "int");
    clientfield::register("scriptmover", "dog_projectile_fx", 1, 1, "int");
    clientfield::register("scriptmover", "hs_summon_cf", 1, 2, "int");
    clientfield::register("actor", "hs_melee_wander_heal_cf", 1, 1, "int");
    clientfield::register("actor", "hs_hound_actor_cf", 1, 1, "int");
    clientfield::register("actor", "hs_dissolve_cf", 1, 1, "int");
    clientfield::register("actor", "hs_stomp_cf", 1, 1, "counter");
    clientfield::register("actor", "hs_melee_smash_cf", 1, 1, "counter");
    clientfield::register("toplayer", "hulk_melee_shake", 1, 1, "counter");
    /#
        thread function_95de83c0();
    #/
    profilestop();
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x6 linked
// Checksum 0x96e65917, Offset: 0xa50
// Size: 0xdc
function private postinit() {
    level.var_c54cc49d = [];
    for (i = 0; i < 8; i++) {
        level.var_c54cc49d[level.var_c54cc49d.size] = spawn("script_model", (0, 0, 0));
    }
    self val::register("can_zombie_summon", 1);
    self val::default_value("can_zombie_summon", 1);
    level callback::on_vehicle_collision(&function_f0247c06);
    level thread function_1fcb2633();
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x2 linked
// Checksum 0x544a837a, Offset: 0xb38
// Size: 0x1254
function registerbehaviorscriptfunctions() {
    assert(isscriptfunctionptr(&function_e7256e3d));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7f00daebd9b421f3", &function_e7256e3d);
    assert(isscriptfunctionptr(&function_953cead6));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_455714e4f446fb3f", &function_953cead6);
    assert(isscriptfunctionptr(&function_aeb3f99));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2eeaba2322bd670", &function_aeb3f99);
    assert(isscriptfunctionptr(&function_b12bd2af));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_3f11c6b538c6490d", &function_b12bd2af);
    assert(isscriptfunctionptr(&function_5cb1afa4));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5c0880b5677284bb", &function_5cb1afa4);
    assert(isscriptfunctionptr(&function_13fb73f5));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_71aaff9a8a017e0f", &function_13fb73f5);
    assert(isscriptfunctionptr(&function_522388bb));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7e0a179c4a41fc7c", &function_522388bb);
    assert(isscriptfunctionptr(&function_ef24e74d));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6cace5110e683e15", &function_ef24e74d);
    assert(isscriptfunctionptr(&function_420bc403));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_57fbe167f62207e0", &function_420bc403);
    assert(isscriptfunctionptr(&function_43436fbe));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_64202248ca017639", &function_43436fbe);
    assert(isscriptfunctionptr(&function_d952c34e));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_3095ba7412015625", &function_d952c34e);
    assert(isscriptfunctionptr(&function_26f2f052));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_26db78524ff4e80f", &function_26f2f052);
    assert(isscriptfunctionptr(&function_9d0ab285));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_1d775d88567086db", &function_9d0ab285);
    assert(isscriptfunctionptr(&function_81f310d1));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_781a10b407c80d6e", &function_81f310d1);
    assert(!isdefined(&function_69a67765) || isscriptfunctionptr(&function_69a67765));
    assert(!isdefined(&function_63dfbf49) || isscriptfunctionptr(&function_63dfbf49));
    assert(!isdefined(&function_575afe41) || isscriptfunctionptr(&function_575afe41));
    behaviortreenetworkutility::registerbehaviortreeaction(#"hash_68cd6332b5b82ad8", &function_69a67765, &function_63dfbf49, &function_575afe41);
    assert(isscriptfunctionptr(&function_aeaf0515));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_659d60284acf5e4d", &function_aeaf0515);
    assert(isscriptfunctionptr(&function_32ac1e84));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_79a2a707b47c0856", &function_32ac1e84);
    assert(isscriptfunctionptr(&function_9dfb4775));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_9f7a23f18ddb154", &function_9dfb4775);
    assert(isscriptfunctionptr(&function_ae66a936));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_69c65ff122868188", &function_ae66a936);
    assert(isscriptfunctionptr(&function_6d1fdca6));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6fba980db1d1f999", &function_6d1fdca6);
    assert(isscriptfunctionptr(&function_eee297ff));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7a30c8fc251c4689", &function_eee297ff);
    assert(isscriptfunctionptr(&function_f554cbb0));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_263ed2f9bdff7c78", &function_f554cbb0);
    assert(isscriptfunctionptr(&function_3962293));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5fb93d2dd4a17db8", &function_3962293);
    assert(isscriptfunctionptr(&function_2821f047));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7c9fc245e3cb1889", &function_2821f047);
    assert(isscriptfunctionptr(&function_3962293));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_5fb93d2dd4a17db8", &function_3962293);
    assert(isscriptfunctionptr(&function_c7721987));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_19fe79cc144d3436", &function_c7721987);
    assert(isscriptfunctionptr(&function_82ecc6e1));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_587648f764f8a972", &function_82ecc6e1);
    assert(isscriptfunctionptr(&function_fc58de23));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_3f96cb4bdf396a03", &function_fc58de23);
    assert(isscriptfunctionptr(&function_a484c263));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6862309b4412e9d7", &function_a484c263);
    assert(isscriptfunctionptr(&function_e4520a56));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_541eda78aa7e01b8", &function_e4520a56);
    assert(isscriptfunctionptr(&function_b80a0830));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_76d11018e877fc89", &function_b80a0830);
    assert(isscriptfunctionptr(&function_38051331));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_c8f578a5ebe8109", &function_38051331);
    assert(isscriptfunctionptr(&function_38051331));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_c8f578a5ebe8109", &function_38051331);
    assert(isscriptfunctionptr(&function_66ad182b));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_17d954b3a9e31930", &function_66ad182b);
    assert(isscriptfunctionptr(&function_2026dbb8));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_4e06cf6b46e3f911", &function_2026dbb8);
    assert(isscriptfunctionptr(&function_a781d2df));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_fe15addd3aa45c6", &function_a781d2df);
    assert(isscriptfunctionptr(&function_4a14402c));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_2f4549751701963b", &function_4a14402c);
    assert(isscriptfunctionptr(&function_4a14402c));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2f4549751701963b", &function_4a14402c);
    assert(isscriptfunctionptr(&function_e662093f));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_324c58bd3493d425", &function_e662093f);
    animationstatenetwork::registernotetrackhandlerfunction("stomp", &function_84259878);
    animationstatenetwork::registernotetrackhandlerfunction("melee_smash", &function_f22a5b52);
    animationstatenetwork::registernotetrackhandlerfunction("hound_toss", &function_8a252ee4);
    animationstatenetwork::registernotetrackhandlerfunction("swarm_spawn", &function_fd09fbc0);
    animationstatenetwork::registernotetrackhandlerfunction("start_hs_summon_attack", &function_243113b);
    animationstatenetwork::registernotetrackhandlerfunction("hs_set_dissolve", &function_47fa1325);
    animationstatenetwork::registernotetrackhandlerfunction("hulk_weakpoint_enable", &function_5f1594b1);
    animationstatenetwork::registernotetrackhandlerfunction("hulk_weakpoint_disable", &function_50f6999e);
    animationselectortable::registeranimationselectortableevaluator("evaluateHulkExposedArrivalAnimations", &evaluatehulkexposedarrivalanimations);
    animationstatenetwork::registeranimationmocomp("mocomp_turn@hulk", &function_6a8dc4c6, undefined, &function_d0f41980);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x6 linked
// Checksum 0x296000ad, Offset: 0x1d98
// Size: 0xcc
function private function_6f88ed29() {
    namespace_81245006::initweakpoints(self);
    aiutility::addaioverridedamagecallback(self, &function_6ad60d9b);
    self callback::function_d8abfc3d(#"on_ai_killed", &function_914f5e7);
    if (isarray(level.var_84508d4d) && level.var_84508d4d.size > 0) {
        function_56669b6f(1);
    }
    self function_f4ca4a44();
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x6 linked
// Checksum 0xdb55ef59, Offset: 0x1e70
// Size: 0x1c
function private function_186bb1f5() {
    self function_967133dc();
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x6 linked
// Checksum 0x5f0fcd00, Offset: 0x1e98
// Size: 0x54
function private function_e7956bb6() {
    self endon(#"end_game");
    self waittill(#"actor_corpse");
    waitframe(1);
    zombie_utility::function_96e9d980(#"hulk");
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x86bb6a2a, Offset: 0x1ef8
// Size: 0x250
function private function_914f5e7(*params) {
    self notsolid();
    self setnosunshadow();
    self thread function_e7956bb6();
    if (isdefined(self.var_36225742)) {
        foreach (swarm in self.var_36225742) {
            if (isdefined(swarm)) {
                swarm delete();
            }
        }
    }
    if (isdefined(self.var_f7c25ec3)) {
        foreach (number, struct in self.var_f7c25ec3) {
            entity = getentbynum(number);
            if (isdefined(entity)) {
                self function_5e2d225(entity);
            }
        }
    }
    if (isarray(self.var_4dfe3675)) {
        foreach (zombie in self.var_4dfe3675) {
            zombie callback::callback(#"hash_10ab46b52df7967a");
        }
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 13, eflags: 0x6 linked
// Checksum 0xf790deae, Offset: 0x2150
// Size: 0x372
function private function_6ad60d9b(inflictor, attacker, damage, *dflags, mod, weapon, *var_fd90b0bb, point, *dir, hitloc, *offsettime, boneindex, *modelindex) {
    if (hitloc.name === #"hero_annihilator") {
        return point;
    }
    damage_type = 1;
    adjusted_damage = point;
    var_2e1b791b = boneindex;
    bi = modelindex;
    weakpoint = namespace_81245006::function_37e3f011(self, modelindex, 1);
    if (!isdefined(weakpoint)) {
        weakpoint = namespace_81245006::function_73ab4754(self, offsettime, 1);
    }
    var_b4494d55 = 1;
    if (isdefined(weakpoint) && weakpoint.var_3765e777 === 1 && aiutility::function_e2278a4b(hitloc, dir)) {
        damage_type = 2;
        var_b4494d55 = 4;
    }
    self.var_6936b30b = {#weakpoint:weakpoint, #var_ebcff177:damage_type};
    if (isplayer(weapon) && !isdefined(self.var_f7c25ec3[weapon getentitynumber()])) {
        function_e5717670(weapon);
    }
    if (isplayer(weapon) || isplayer(var_fd90b0bb)) {
        if (hitloc.guidedmissiletype === "Hellfire") {
            damage_cap = int(0.0007 * self.maxhealth * var_b4494d55);
        } else if (dir === "MOD_HEAD_SHOT" || dir === "MOD_RIFLE_BULLET" || dir === "MOD_PISTOL_BULLET") {
            damage_cap = int(0.025 * self.maxhealth * var_b4494d55);
        } else if (hitloc.guidedmissiletype === "Ballistic") {
            damage_cap = int(0.001875 * self.maxhealth * var_b4494d55);
        } else {
            damage_cap = int(0.05 * self.maxhealth * var_b4494d55);
        }
        if (adjusted_damage > damage_cap) {
            adjusted_damage = damage_cap;
        }
    }
    return adjusted_damage;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x2 linked
// Checksum 0x2d8ffe42, Offset: 0x24d0
// Size: 0x474
function function_967133dc(var_e249b6c9, var_90afec64) {
    players = function_a1ef346b();
    if (players.size <= 0) {
        return;
    }
    var_1752ed97 = 0;
    foreach (player in players) {
        weapons = [player.inventory.items[17 + 1], player.inventory.items[17 + 1 + 8 + 1], player.inventory.items[17 + 1 + 8 + 1 + 8 + 1]];
        var_8faebded = 1;
        foreach (weapon in weapons) {
            damage_multiplier = 1;
            if (isdefined(weapon.itementry)) {
                var_4d1602de = zm_weapons::function_d85e6c3a(weapon.itementry);
                if (weapon.itementry.rarity === "Ultra") {
                    var_4d1602de = 4;
                }
                damage_multiplier *= var_4d1602de;
                if (isdefined(weapon.paplv) && isdefined(weapon.var_627c698b) && weapon.paplv > 0) {
                    var_645b8bb = zm_weapons::function_896671d5(weapon.var_627c698b, weapon.paplv);
                    damage_multiplier *= var_645b8bb + 1;
                }
                if (isdefined(weapon.var_627c698b.damagevalues)) {
                    if (weapon.var_627c698b.damagevalues[0] > 200) {
                        damage_multiplier *= 2;
                    }
                }
            }
            var_8faebded = max(var_8faebded, damage_multiplier);
        }
        var_1752ed97 += var_8faebded;
    }
    if (!isdefined(var_8faebded)) {
        var_8faebded = 1;
    }
    var_523778e0 = var_1752ed97 / int(max(1, players.size));
    if (!isdefined(var_e249b6c9)) {
        var_e249b6c9 = 0.002;
    }
    if (!isdefined(var_90afec64)) {
        var_90afec64 = 0.9;
    }
    var_7d6bb33f = 50 * var_523778e0;
    var_a707591e = self.maxhealth * var_e249b6c9;
    var_8a8888ba = var_7d6bb33f / var_a707591e * var_90afec64;
    if (var_8a8888ba >= 1) {
        println("arm_raised" + var_8a8888ba);
        self.maxhealth = int(self.maxhealth * var_8a8888ba);
        self.health = self.maxhealth;
        return;
    }
    println("<unknown string>" + var_8a8888ba);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x6 linked
// Checksum 0x6c990f57, Offset: 0x2950
// Size: 0x2c
function private function_35e3fcec() {
    if (!isdefined(level.realm)) {
        return "hulk_zombie_summon_realm_1";
    }
    return "hulk_zombie_summon_realm_" + level.realm;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x6 linked
// Checksum 0x8d1815d8, Offset: 0x2988
// Size: 0x25c
function private function_f4ca4a44() {
    self function_6d1daa57(ai::function_9139c839().var_939b6e54);
    self.var_4bb1d630 = int(self.maxhealth * 0.01);
    self.var_4e7cb830 = 0;
    self.var_fcc9bc97 = function_35e3fcec();
    self.var_c0300653 = function_48f98842(self);
    self.var_886fb230 = int(self.var_c0300653 * 0.5);
    self.zombie_count = 0;
    self.var_53a43cbf = 0;
    self.var_4956c24a = 0;
    self.var_4dfe3675 = [];
    self.var_58c4c69b = 1;
    self.var_873d65bd = 1;
    self.ignore_nuke = 1;
    self.var_d345ded2 = gettime() + 0;
    self.var_fa4cbfee = 1;
    self function_eb9ae5a8();
    self setplayercollision(0);
    self.var_bc8466c7 = 1;
    self.var_122bd98d = 1;
    self.var_f302bbc2 = self.origin;
    self.var_85369277 = 1;
    self function_231f9a1b("hs_phase_hound_toss");
    if (getdvarint(#"hash_11c7191b8c35b6bb", 0) > 0) {
        self function_231f9a1b("hs_phase_melee_wander");
    }
    self thread function_2d3b0724();
    self playloopsound(#"hash_51cc04251db6afad");
    function_50f6999e(self);
    self thread function_da3fbd96();
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x2 linked
// Checksum 0x5435f287, Offset: 0x2bf0
// Size: 0x174
function function_eb9ae5a8() {
    if (!isdefined(level.var_f1639161)) {
        level.var_f1639161 = [];
    }
    self.var_f09c948a = [];
    function_91c27ca7(#"hash_17e86f94a72b48c4", "j_knee_le", (64, 0, 0), (90, 0, 0));
    function_91c27ca7(#"hash_17e86f94a72b48c4", "j_knee_ri", (-64, 0, 0), (90, 0, 0));
    function_91c27ca7(#"hash_52833ae5256b607", "j_head", (0, 0, 0), (0, 0, 0));
    function_91c27ca7(#"hash_17e86f94a72b48c4", "j_pocket1_le", (64, 0, 0), (90, 0, 0));
    arraycombine(level.var_f1639161, self.var_f09c948a, 0, 0);
    self callback::function_d8abfc3d(#"on_ai_killed", &function_30c43f47);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 4, eflags: 0x6 linked
// Checksum 0x9acd9032, Offset: 0x2d70
// Size: 0x110
function private function_91c27ca7(model_name, tag, origin_offset, angle_offset) {
    tag_origin = self gettagorigin(tag);
    tag_angles = self gettagangles(tag);
    model = util::spawn_model(model_name, tag_origin, tag_angles);
    model linkto(self, tag, origin_offset, angle_offset);
    model ghost();
    model val::set(#"hulk", "takedamage", 1);
    model.parent = self;
    self.var_f09c948a[self.var_f09c948a.size] = model;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x2 linked
// Checksum 0xb98b8198, Offset: 0x2e88
// Size: 0x15a
function function_f0247c06(params) {
    if (!isdefined(params.entity) || params.entity.parent.archetype !== #"hulk" || !isdefined(params.intensity) || params.intensity < 10) {
        return;
    }
    player = self getseatoccupant(0);
    if (!isplayer(player)) {
        return;
    }
    params.entity.parent.var_122bd98d = undefined;
    params.entity.parent dodamage(50 + params.intensity, self.origin, player, self, "none", "MOD_CRUSH", 0, undefined);
    if (isalive(params.entity.parent)) {
        params.entity.parent.var_122bd98d = 1;
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x2 linked
// Checksum 0x5fdd22ef, Offset: 0x2ff0
// Size: 0xa2
function function_30c43f47(*params) {
    if (isdefined(self.var_f09c948a)) {
        foreach (collision in self.var_f09c948a) {
            collision deletedelay();
        }
        self.var_f09c948a = undefined;
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x2 linked
// Checksum 0xa22ea623, Offset: 0x30a0
// Size: 0x392
function function_da3fbd96() {
    self endon(#"death");
    self.var_f7c25ec3 = [];
    while (true) {
        waitresult = self waittilltimeout(1, #"enemy", #"hash_416a350f212ab99c");
        if (isdefined(self.enemy) && !isdefined(self.var_f7c25ec3[self.enemy getentitynumber()])) {
            function_e5717670(self.enemy);
        }
        foreach (enemy in getplayers(undefined, self.origin, 1500)) {
            if (namespace_85745671::is_player_valid(enemy) && !isdefined(self.var_f7c25ec3[enemy getentitynumber()])) {
                function_e5717670(enemy);
            }
        }
        var_be960b4 = [];
        foreach (number, struct in self.var_f7c25ec3) {
            var_57487ea4 = getentbynum(number);
            if (!isentity(var_57487ea4)) {
                self.var_f7c25ec3[number] = -1;
                continue;
            }
            if (!namespace_85745671::is_player_valid(var_57487ea4) || distance2dsquared(var_57487ea4.origin, self.origin) > sqr(3000)) {
                var_be960b4[var_be960b4.size] = var_57487ea4;
            }
        }
        arrayremovevalue(self.var_f7c25ec3, -1);
        foreach (ent in var_be960b4) {
            function_5e2d225(ent);
        }
        self.var_c0300653 = function_48f98842(self);
        self.var_886fb230 = self.var_c0300653 * 0.5;
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x2 linked
// Checksum 0x7f3f599c, Offset: 0x3440
// Size: 0xac
function function_e5717670(enemy) {
    self.var_f7c25ec3[enemy getentitynumber()] = {};
    enemy callback::function_d8abfc3d(#"death", &function_adc73ad5, undefined, [self]);
    enemy callback::function_d8abfc3d(#"on_player_disconnect", &function_adc73ad5, undefined, [self]);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x2 linked
// Checksum 0x83d5c999, Offset: 0x34f8
// Size: 0xa4
function function_5e2d225(enemy) {
    self.var_f7c25ec3[enemy getentitynumber()] = undefined;
    arrayremovevalue(self.var_f7c25ec3, undefined);
    enemy callback::function_52ac9652(#"death", &function_adc73ad5, undefined);
    enemy callback::function_52ac9652(#"on_player_disconnect", &function_adc73ad5, undefined);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x2 linked
// Checksum 0xfcddc21e, Offset: 0x35a8
// Size: 0x70
function function_adc73ad5(*params, hulk) {
    if (isdefined(hulk) && isarray(hulk.var_f7c25ec3) && isdefined(hulk.var_f7c25ec3[self getentitynumber()])) {
        hulk notify(#"hash_416a350f212ab99c");
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x2 linked
// Checksum 0x68aa68c6, Offset: 0x3620
// Size: 0x17e
function function_2d3b0724() {
    self endon(#"death");
    while (true) {
        /#
            var_a2f37704 = self gettagorigin("<unknown string>");
            var_1e070ff7 = self gettagangles("<unknown string>");
            var_cecc3404 = anglestoup(var_1e070ff7) * -1;
            var_6805a372 = (var_cecc3404[0], var_cecc3404[1], 0);
            recordstar(var_a2f37704, (0, 1, 1));
            var_12a895c4 = var_a2f37704 + var_6805a372 * 100;
            recordline(var_a2f37704, var_12a895c4, (0, 1, 0), "<unknown string>", self);
            recordstar(var_12a895c4, (1, 0, 1));
            if (isdefined(self.enemy)) {
                recordline(var_a2f37704, self.enemy.origin, (1, 0.5, 0), "<unknown string>", self);
            }
        #/
        waitframe(1);
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x2 linked
// Checksum 0xd9591434, Offset: 0x37a8
// Size: 0x26
function function_6d1daa57(var_cf79a48d) {
    self.wander_radius = var_cf79a48d;
    self.var_da0b6672 = var_cf79a48d;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x2 linked
// Checksum 0x276cd25e, Offset: 0x37d8
// Size: 0x6e
function function_231f9a1b(var_b4e2431f) {
    /#
        record3dtext("<unknown string>" + var_b4e2431f, self.origin + (0, 0, 10), (0, 1, 0), "<unknown string>");
    #/
    self.var_b4e2431f = var_b4e2431f;
    self.var_7a90d4da = gettime();
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x2 linked
// Checksum 0x88474d12, Offset: 0x3850
// Size: 0x8e
function function_20484c37() {
    if (isdefined(self.favoriteenemy)) {
        predictedpos = self lastknownpos(self.favoriteenemy);
        if (isdefined(predictedpos)) {
            turnyaw = absangleclamp360(self.angles[1] - vectortoangles(predictedpos - self.origin)[1]);
            return turnyaw;
        }
    }
    return 0;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x4
// Checksum 0xe7f4c392, Offset: 0x38e8
// Size: 0x140
function private function_11258b29() {
    n_spawns = randomintrange(3, 5);
    a_s_pts = namespace_85745671::function_e4791424(self.origin, 32, 1000, 700);
    for (i = 0; i < n_spawns; i++) {
        if (isdefined(a_s_pts[i])) {
            ai_spawned = namespace_85745671::function_9d3ad056(#"hash_7cba8a05511ceedf", a_s_pts[i].origin, self.angles, "hulk_zombie");
            if (isdefined(ai_spawned)) {
                ai_spawned.spawn_point = self;
                ai_spawned thread function_5f9f594(self);
                self.zombie_count++;
                self.var_4956c24a++;
                self.var_4dfe3675[self.var_4dfe3675.size] = ai_spawned;
                ai_spawned [[ level.var_36bc0c68 ]]();
            }
        }
        wait(0.1);
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x232cffca, Offset: 0x3a30
// Size: 0x25a
function private function_8fe2ab48(dist) {
    var_23d29c9b = self.var_da0b6672 * self.var_da0b6672;
    players = getplayers();
    if (self function_e0487da2()) {
        var_1b64c75 = getdvarint(#"hash_3f0d541dc7a39a10", 300);
        foreach (player in players) {
            var_ee3032b1 = !isdefined(dist) || distance2dsquared(self.origin, player.origin) < sqr(dist);
            if (zm_utility::is_player_valid(player) && var_ee3032b1) {
                nodes = function_71979c65(self, player.origin, var_1b64c75);
                if (nodes.size > 0) {
                    return true;
                }
            }
        }
    } else {
        foreach (player in players) {
            if (zm_utility::is_player_valid(player)) {
                var_1102cf26 = distancesquared(player.origin, self.origin);
                if (var_1102cf26 < var_23d29c9b) {
                    return true;
                }
            }
        }
    }
    return false;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0xa58d5fb1, Offset: 0x3c98
// Size: 0x18e
function private function_e7256e3d(entity) {
    if (entity.var_b4e2431f != "hs_phase_melee_wander") {
        entity.var_f0ee16db = 0;
        return 0;
    }
    if (self function_8fe2ab48()) {
        entity.var_4fde82b3 = 1;
        if (is_true(entity.var_f0ee16db)) {
            if (self function_8fe2ab48(900)) {
                entity.var_f0ee16db = 0;
            } else if (entity.health >= entity.maxhealth) {
                entity.var_f0ee16db = 0;
            } else {
                players = function_a1ef346b();
                if (players.size > 0) {
                    closest_player = arraygetclosest(entity.origin, players);
                    if (zm_utility::is_player_valid(closest_player) && distance2dsquared(entity.origin, closest_player.origin) < sqr(500)) {
                        entity.var_f0ee16db = 0;
                    }
                }
            }
        }
        return;
    }
    entity.var_4fde82b3 = 0;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x2 linked
// Checksum 0xeed0efc4, Offset: 0x3e30
// Size: 0x6a
function function_3104c18c(entity) {
    if (!is_true(entity.var_4fde82b3) && entity.health / entity.maxhealth < 0.75 && entity.var_b4e2431f === "hs_phase_melee_wander") {
        return true;
    }
    return false;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x2 linked
// Checksum 0x43f362d2, Offset: 0x3ea8
// Size: 0x74
function function_96319b66(entity, var_ff43be1f) {
    var_ff43be1f = function_a43884e3(entity);
    if (isdefined(var_ff43be1f)) {
        entity.var_6a4a7aea = var_ff43be1f;
        entity.var_f0ee16db = 1;
        return 1;
    }
    println("<unknown string>");
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x6 linked
// Checksum 0x82692b54, Offset: 0x3f28
// Size: 0x2f6
function private function_face3f1c(entity, var_2966e899) {
    if (!isdefined(entity.var_cf651bd1)) {
        entity.var_cf651bd1 = [];
    }
    last_pos = entity.var_cf651bd1[var_2966e899];
    var_76ff5a40 = entity.var_3289efab[var_2966e899];
    if (!(isdefined(last_pos) && isdefined(var_76ff5a40)) || distance2dsquared(last_pos, entity.origin) > sqr(50) || math::angle_dif(var_76ff5a40, entity.angles[1] > 20)) {
        entity.var_cf651bd1[var_2966e899] = entity.origin;
        entity.var_3289efab[var_2966e899] = entity.var_621717f9[1];
        ground_offset = (0, 0, 72);
        var_8d086f5 = entity.origin + ground_offset;
        forward = anglestoforward(entity.angles);
        if (var_2966e899) {
            start = var_8d086f5;
            end = var_8d086f5 + forward * (300 + 50);
        } else {
            start = var_8d086f5 + forward * 300;
            end = start + (0, 0, 200);
        }
        var_4d9ef060 = bullettracepassed(start, end, 0, entity);
        if (!isdefined(entity.var_7313d1e5)) {
            entity.var_7313d1e5 = [];
        }
        entity.var_7313d1e5[var_2966e899] = var_4d9ef060;
        /#
            if (getdvarint(#"hash_5a3685c007d1f884", 0) > 1) {
                recordline(start, end, var_4d9ef060 ? (0, 1, 0) : (1, 0, 0));
                record3dtext("<unknown string>", end, var_4d9ef060 ? (0, 1, 0) : (1, 0, 0));
            }
        #/
        return var_4d9ef060;
    } else if (isdefined(entity.var_7313d1e5[var_2966e899])) {
        return entity.var_7313d1e5[var_2966e899];
    }
    return 1;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x325e9f7e, Offset: 0x4228
// Size: 0x52a
function private function_b12bd2af(entity) {
    if (entity.var_b4e2431f != "hs_phase_melee_wander") {
        return 0;
    }
    if (!isdefined(entity.favoriteenemy) || !namespace_85745671::is_player_valid(entity.favoriteenemy)) {
        return 0;
    }
    var_4b967c06 = [];
    var_7befcf25 = distancesquared(entity.origin, entity.favoriteenemy.origin);
    to_enemy = entity.favoriteenemy.origin - entity.origin;
    delta_z = to_enemy[2];
    if (var_7befcf25 < sqr(400) && var_7befcf25 > sqr(200) && delta_z < 150) {
        if (vectordot(to_enemy, anglestoforward(entity.angles)) > 0) {
            if (function_face3f1c(entity, 1)) {
                var_4b967c06[var_4b967c06.size] = 1;
            }
        }
    }
    /#
        if (getdvarint(#"hash_5a3685c007d1f884", 0) > 1) {
            if (isinarray(var_4b967c06, 1)) {
                recordcircle(entity.origin, 200, (1, 1, 0));
                recordcircle(entity.origin, 400, (1, 1, 0));
                recordline(entity.origin - anglestoright(entity.angles) * 100, entity.origin + anglestoright(entity.angles) * 100, (1, 1, 0));
            }
        }
    #/
    if (!isdefined(entity.var_bebf395)) {
        entity.var_bebf395 = 0;
    }
    if (float(gettime() - entity.var_bebf395) / 1000 > 15) {
        var_ab811a0d = sqr(500);
        if (var_7befcf25 > var_ab811a0d) {
            var_1b5380cd = 200;
            nodes = function_71979c65(entity, entity.favoriteenemy.origin, var_1b5380cd);
            if (nodes.size === 0) {
                var_ab811a0d = sqr(1000);
            }
        }
        if (var_7befcf25 < var_ab811a0d) {
            if (function_face3f1c(entity, 0)) {
                var_4b967c06[var_4b967c06.size] = 2;
            }
        }
    }
    /#
        if (getdvarint(#"hash_5a3685c007d1f884", 0) > 1) {
            if (isdefined(var_ab811a0d) && isinarray(var_4b967c06, 2)) {
                recordcircle(entity.origin, var_ab811a0d, (0, 0, 1));
            }
        }
    #/
    var_d7291650 = entity.var_e1c6baf9 === 1 && isinarray(var_4b967c06, 1);
    if (var_7befcf25 < sqr(360) || var_d7291650) {
        if (entity.var_e1c6baf9 !== 0 || var_4b967c06.size === 0) {
            var_4b967c06[var_4b967c06.size] = 0;
        }
    }
    /#
        if (getdvarint(#"hash_5a3685c007d1f884", 0) > 1) {
            if (isinarray(var_4b967c06, 0)) {
                recordcircle(entity.origin, 360, (1, 0, 0));
            }
        }
    #/
    entity.var_aa7351f4 = undefined;
    if (var_4b967c06.size > 0) {
        entity.var_aa7351f4 = array::random(var_4b967c06);
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x19540322, Offset: 0x4760
// Size: 0x9a
function private function_5cb1afa4(entity) {
    if (!isalive(entity)) {
        return 0;
    }
    if (!is_true(entity.var_ab59a16f)) {
        return 0;
    }
    if (!is_true(self.var_6a275182)) {
        if (function_d952c34e(entity, 0)) {
            entity thread function_a0b4024b();
            return 1;
        }
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x6 linked
// Checksum 0xef896a71, Offset: 0x4808
// Size: 0x96
function private function_a0b4024b() {
    self endon(#"death");
    self.var_6a275182 = 1;
    var_318efee = gettime() + 5500;
    function_82ecc6e1(self);
    while (var_318efee > gettime()) {
        function_fc58de23(self, 1);
        waitframe(1);
    }
    function_a484c263(self);
    self.var_6a275182 = 0;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x29cef50, Offset: 0x48a8
// Size: 0x218
function private function_e662093f(entity) {
    if (!isdefined(entity.var_68bb8742)) {
        entity.var_68bb8742 = "hs_phase_hound_toss";
    }
    if (function_5e80cd88(entity)) {
        return true;
    }
    if (function_3104c18c(entity)) {
        function_96319b66(entity);
        return true;
    }
    if (getdvarint(#"hash_11c7191b8c35b6bb", 0) > 0) {
        return true;
    }
    var_f19f4213 = 0;
    if (isdefined(entity.var_7a90d4da)) {
        var_d4fe1290 = float(gettime() - entity.var_7a90d4da) / 1000;
        if (isdefined(entity.favoriteenemy) && var_d4fe1290 > 30 && distance2dsquared(entity.favoriteenemy.origin, entity.origin) > sqr(750)) {
            var_f19f4213 = 1;
        }
    }
    if (!entity flag::get(#"hash_796c46c58710430a") || is_true(var_f19f4213)) {
        attack = entity.var_68bb8742 === "hs_phase_hound_toss" ? "hs_phase_swarm_spawn" : "hs_phase_hound_toss";
        entity.var_68bb8742 = attack;
        entity function_231f9a1b(attack);
    }
    return true;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x66bf923f, Offset: 0x4ac8
// Size: 0x14c
function private function_13fb73f5(entity) {
    if (entity.var_b4e2431f != "hs_phase_melee_wander" && !function_5e80cd88(entity)) {
        return false;
    }
    if (entity flag::get(#"turning")) {
        return false;
    }
    if (!is_true(entity.var_14dfe7c6)) {
        return false;
    }
    var_fb735662 = entity.health / entity.maxhealth < 1;
    if (is_true(entity.var_f0ee16db) && var_fb735662) {
        return true;
    }
    if (function_5e80cd88(entity) && var_fb735662) {
        nearby_players = getplayers(undefined, entity.origin, 500);
        if (nearby_players.size <= 0) {
            return true;
        }
    }
    return false;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x80121d4a, Offset: 0x4c20
// Size: 0x94
function private function_522388bb(entity) {
    /#
        if (is_true(entity.var_874bf234)) {
            return true;
        }
        if (is_true(level.var_ff169fcb)) {
            return false;
        }
    #/
    if (entity flag::get(#"turning")) {
        return false;
    }
    if (entity.var_aa7351f4 === 1) {
        return true;
    }
    return false;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0xbf94ae0e, Offset: 0x4cc0
// Size: 0x4a
function private function_ef24e74d(entity) {
    if (entity flag::get(#"turning")) {
        return false;
    }
    if (entity.var_aa7351f4 === 0) {
        return true;
    }
    return false;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0xb49a8cf4, Offset: 0x4d18
// Size: 0x4c
function private function_420bc403(entity) {
    if (entity flag::get(#"turning")) {
        return false;
    }
    if (entity.var_aa7351f4 === 2) {
        return true;
    }
    return false;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0xb6fe2d2c, Offset: 0x4d70
// Size: 0x15e
function private function_43436fbe(entity) {
    if (entity.var_b4e2431f != "hs_phase_hound_toss") {
        return false;
    }
    if (entity.var_4e7cb830 >= 10) {
        return false;
    }
    if (!isdefined(entity.favoriteenemy)) {
        return false;
    }
    if (!namespace_85745671::is_player_valid(entity.favoriteenemy)) {
        return false;
    }
    if (entity flag::get(#"turning")) {
        return false;
    }
    if (vectordot(anglestoforward(entity.angles), entity.favoriteenemy.origin - entity.origin) < 0) {
        return false;
    }
    dist_sq = distancesquared(entity.origin, entity.favoriteenemy.origin);
    if (dist_sq < sqr(1800)) {
        if (dist_sq > sqr(0)) {
            return true;
        }
    }
    return false;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x1196ce9e, Offset: 0x4ed8
// Size: 0x38
function private function_9d0ab285(entity) {
    if (entity.var_9b3f95fc > gettime()) {
        return 0;
    }
    if (entity.var_6512ae03 >= 10) {
        return 0;
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x35a183d3, Offset: 0x4f18
// Size: 0x3a
function private function_81f310d1(entity) {
    if (entity.var_6512ae03 >= 10) {
        return true;
    }
    if (entity.ignoreall) {
        return true;
    }
    return false;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x6 linked
// Checksum 0xdad8ac28, Offset: 0x4f60
// Size: 0x20a
function private function_d952c34e(entity, var_978b5b05 = 1) {
    if (is_true(var_978b5b05)) {
        if (is_true(entity.var_ab59a16f)) {
            return false;
        }
        if (!is_true(entity.can_zombie_summon)) {
            return false;
        }
    }
    if (getaicount() >= getailimit()) {
        return false;
    }
    if (entity.ignoreall) {
        return false;
    }
    if (!isarray(entity.var_f7c25ec3) || !entity.var_f7c25ec3.size) {
        return false;
    }
    if (entity.var_53a43cbf > getdvarint(#"hash_464e01979e8dff9d", 100) * getplayers().size) {
        return false;
    }
    if (entity.zombie_count < entity.var_886fb230) {
        entity.var_1a9f6f73 = 1;
    }
    if (!is_true(entity.var_1a9f6f73)) {
        return false;
    }
    if (gettime() < entity.var_d345ded2) {
        return false;
    }
    if (is_true(var_978b5b05)) {
        if (entity flag::get(#"turning")) {
            return false;
        }
        if (is_false(entity.var_4fde82b3)) {
            return false;
        }
        if (entity.var_fa4cbfee <= 0) {
            return false;
        }
    }
    return true;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x6 linked
// Checksum 0x8272076, Offset: 0x5178
// Size: 0x198
function private function_69a67765(entity, asmstatename) {
    entity.is_healing = 1;
    entity val::set(#"melee_wander", "can_zombie_summon", 0);
    entity.var_bbe9e57 = gettime();
    entity clientfield::set("hs_melee_wander_heal_cf", 1);
    if (!isdefined(entity.var_36ce4d4b)) {
        entity.var_36ce4d4b = 0;
    }
    if (!isdefined(entity.var_29401296)) {
        entity.var_29401296 = 0;
    }
    if (float(gettime() - entity.var_29401296) / 60000 < 1) {
        entity.var_36ce4d4b = min(15, entity.var_36ce4d4b + 3);
    } else {
        entity.var_36ce4d4b = 0;
    }
    entity.var_d7a2a3eb = gettime() + int(entity.var_36ce4d4b * 1000);
    self.var_4bb1d630 = int(self.maxhealth * 0.01);
    animationstatenetworkutility::requeststate(entity, asmstatename);
    return 5;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x6 linked
// Checksum 0x47728ed2, Offset: 0x5318
// Size: 0x1e4
function private function_63dfbf49(entity, *asmstatename) {
    if (gettime() >= asmstatename.var_bbe9e57) {
        if (asmstatename.health < asmstatename.maxhealth) {
            var_e6d32a21 = 1 - asmstatename.health / asmstatename.maxhealth;
            asmstatename.health += int(asmstatename.var_4bb1d630 * (1 + var_e6d32a21 * 3));
            asmstatename.var_bbe9e57 = gettime() + 1000;
            asmstatename notify(#"healing");
        }
    }
    if (asmstatename.health < asmstatename.maxhealth * 0.25) {
        return 5;
    }
    if (asmstatename.health >= asmstatename.maxhealth) {
        asmstatename.health = asmstatename.maxhealth;
        if (!isdefined(asmstatename.favoriteenemy)) {
            asmstatename notify(#"hash_3f015eab8b2c125a");
        }
        return 4;
    }
    if (isdefined(asmstatename.var_d7a2a3eb) && gettime() < asmstatename.var_d7a2a3eb) {
        return 5;
    }
    if (is_false(asmstatename.var_f0ee16db) && !function_5e80cd88(asmstatename)) {
        return 4;
    }
    nearby_players = getplayers(undefined, asmstatename.origin, 500);
    if (nearby_players.size > 0) {
        return 4;
    }
    return 5;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x6 linked
// Checksum 0x1e8bed86, Offset: 0x5508
// Size: 0x80
function private function_575afe41(entity, *asmstatename) {
    asmstatename.is_healing = 0;
    asmstatename.var_29401296 = gettime();
    asmstatename.var_c3269d19 = 0;
    asmstatename val::reset(#"melee_wander", "can_zombie_summon");
    asmstatename clientfield::set("hs_melee_wander_heal_cf", 0);
    return 4;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x49f48545, Offset: 0x5590
// Size: 0xdc
function private function_aeaf0515(entity) {
    entity val::set(#"hash_2ed38140ae54dee4", "can_zombie_summon", 0);
    entity pathmode("dont move");
    entity.start_pos = entity gettagorigin("j_pocketdown4_le");
    entity.deltas = [];
    entity.var_2d5a0061 = [];
    entity.var_aa7351f4 = undefined;
    entity.var_e1c6baf9 = 1;
    entity clearpath();
    entity setgoal(entity.origin);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x97ef9a33, Offset: 0x5678
// Size: 0x630
function private function_32ac1e84(entity) {
    if (is_true(entity.var_8436cae5)) {
        return;
    }
    var_1b0f41cd = entity gettagorigin("j_pocketdown4_le");
    if (isdefined(var_1b0f41cd)) {
        if (isdefined(entity.start_pos)) {
            dist = distance(entity.start_pos, var_1b0f41cd);
            entity.deltas[entity.deltas.size] = dist;
            entity.start_pos = var_1b0f41cd;
        }
        enemy = entity.favoriteenemy;
        players = getplayers();
        foreach (player in players) {
            enemy = undefined;
            if (zm_utility::is_player_valid(player)) {
                enemy = player;
            }
            if (isdefined(enemy)) {
                if (enemy isinvehicle()) {
                    vehicle = enemy getvehicleoccupied();
                    if (!isinarray(entity.var_2d5a0061, vehicle)) {
                        bounds = vehicle getboundshalfsize();
                        var_37a3e3ba = max(max(bounds[0], bounds[1]), bounds[2]);
                        var_af1fd30e = getdvarfloat(#"hash_69d331eadd3f3b1b", -1);
                        if (var_af1fd30e > 0) {
                            var_37a3e3ba = var_af1fd30e;
                        }
                        dist_sq = distancesquared(var_1b0f41cd, vehicle.origin);
                        if (dist_sq < sqr(100 + var_37a3e3ba)) {
                            entity.var_2d5a0061[entity.var_2d5a0061.size] = vehicle;
                            entity.var_8436cae5 = 1;
                            var_46a1735f = vehicle getvehoccupants();
                            foreach (player in var_46a1735f) {
                                enemy dodamage(125, self.origin, self, self, undefined, "MOD_MELEE");
                                enemy clientfield::increment_to_player("hulk_melee_shake", 1);
                            }
                            knock_dir = vectornormalize(vehicle.origin - var_1b0f41cd);
                            knock_dir = (knock_dir[0], knock_dir[1], 0.1);
                            vehicle launchvehicle(knock_dir * 200, var_1b0f41cd, 0, 0);
                            vehicle_damage = max(vehicle.maxhealth * 0.25, 500);
                            vehicle dodamage(vehicle_damage, self.origin, self, self);
                        }
                    }
                    continue;
                }
                dist_sq = distancesquared(var_1b0f41cd, enemy.origin);
                if (dist_sq < sqr(100)) {
                    enemy dodamage(125, self.origin, self, self, undefined, "MOD_MELEE");
                    enemy clientfield::increment_to_player("hulk_melee_shake", 1);
                    entity.var_8436cae5 = 1;
                    /#
                        recordsphere(var_1b0f41cd, 25, (1, 0, 0), "<unknown string>");
                        recordsphere(enemy.origin, 25, (0, 0, 1), "<unknown string>");
                    #/
                    enemy playerknockback(1);
                    var_cbc73ac4 = anglestoup(entity gettagangles("j_pocketdown4_le")) * -1;
                    knock_dir = vectornormalize(var_cbc73ac4);
                    knock_dir = (knock_dir[0], knock_dir[1], 0.1);
                    enemy applyknockback(200, knock_dir);
                    enemy playerknockback(0);
                }
            }
        }
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x8be4c6e2, Offset: 0x5cb0
// Size: 0x94
function private function_9dfb4775(entity) {
    entity val::reset(#"hash_2ed38140ae54dee4", "can_zombie_summon");
    entity pathmode("move allowed");
    entity.var_8436cae5 = 0;
    entity clearpath();
    entity setgoal(entity.origin);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x608c7eaa, Offset: 0x5d50
// Size: 0x4a
function private function_ae66a936(entity) {
    entity val::set(#"hash_1f4a48d92ef87c9b", "can_zombie_summon", 0);
    entity.var_aa7351f4 = undefined;
    entity.var_e1c6baf9 = 0;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x18858b35, Offset: 0x5da8
// Size: 0x34
function private function_6d1fdca6(entity) {
    entity val::reset(#"hash_1f4a48d92ef87c9b", "can_zombie_summon");
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x8c94bf9a, Offset: 0x5de8
// Size: 0xac
function private function_eee297ff(entity) {
    entity val::set(#"melee_smash", "can_zombie_summon", 0);
    entity.var_aa7351f4 = undefined;
    entity.var_e1c6baf9 = 2;
    entity.var_bebf395 = gettime();
    entity pathmode("dont move");
    entity clearpath();
    entity setgoal(entity.origin);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x31846c73, Offset: 0x5ea0
// Size: 0x54
function private function_f554cbb0(entity) {
    entity val::reset(#"melee_smash", "can_zombie_summon");
    entity pathmode("move allowed");
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x4077aa7d, Offset: 0x5f00
// Size: 0x9c
function private function_84259878(entity) {
    stomp = 1;
    var_45487755 = entity gettagorigin("j_ball_ri");
    entity clientfield::increment("hs_stomp_cf", 1);
    entity thread function_59e78833(var_45487755, 125, 30, 100, 500, 300, #"hash_2277d6cf8d0c2cf0");
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 7, eflags: 0x6 linked
// Checksum 0x2e80268f, Offset: 0x5fa8
// Size: 0x728
function private function_59e78833(pos, damage, var_64470c9e, inner_radius, outer_radius, knockback, var_a8a41c06) {
    self endon(#"death");
    nearby_players = getentitiesinradius(self.origin, outer_radius, 1);
    foreach (player in nearby_players) {
        if (!zm_utility::is_player_valid(player)) {
            continue;
        }
        var_3ad825ba = distance(pos, player.origin);
        damage_ratio = (var_3ad825ba - inner_radius) / outer_radius;
        if (damage_ratio < 0) {
            damage_ratio = 0;
        } else if (damage_ratio > 1) {
            damage_ratio = 1;
        }
        damage_ratio = 1 - damage_ratio;
        final_damage = max(damage * damage_ratio, var_64470c9e);
        player.var_7342424d = self;
        player dodamage(final_damage, self.origin, self, self, undefined, "MOD_MELEE");
        player.var_7342424d = undefined;
        if (isdefined(var_a8a41c06)) {
            player playsoundtoplayer(var_a8a41c06, player);
        }
        player clientfield::increment_to_player("hulk_melee_shake", 1);
        var_577fefe8 = outer_radius;
        var_e86a4d9 = function_c3d68575(pos, (var_577fefe8, var_577fefe8, 150));
        var_21bdf069 = sqr(var_577fefe8);
        foreach (dynent in var_e86a4d9) {
            if (is_true(dynent.destroyed) || abs(dynent.origin[2] - pos[2]) > 150 || !namespace_85745671::function_8f57dc52(dynent, 1)) {
                continue;
            }
            should_break = 0;
            var_144ce0a0 = dynent.script_noteworthy == #"hash_4d1fb8524fdfd254";
            if (var_144ce0a0 || dynent.destructible) {
                bundle = isdefined(dynent.bundle) ? dynent.bundle : zm_utility::function_b42da08a(dynent);
                state = function_ffdbe8c2(dynent);
                should_break = !is_true(bundle.dynentstates[state].var_b7401b42) && isdefined(dynent.var_34e210ee);
            }
            if (should_break && isdefined(bundle)) {
                dynent dodamage(dynent.health, pos, self, self, undefined, "MOD_MELEE");
            }
        }
        if (isdefined(knockback)) {
            player playerknockback(1);
            knock_dir = vectornormalize(player.origin - pos);
            knock_dir = (knock_dir[0], knock_dir[1], 0.1);
            player applyknockback(int(knockback * damage_ratio), knock_dir);
            player playerknockback(0);
        }
        waitframe(1);
    }
    var_15978c43 = getentitiesinradius(self.origin, outer_radius, 12);
    foreach (vehicle in var_15978c43) {
        var_3ad825ba = distance2d(pos, vehicle.origin);
        damage_ratio = (var_3ad825ba - inner_radius) / outer_radius;
        if (damage_ratio < 0) {
            damage_ratio = 0;
        } else if (damage_ratio > 1) {
            damage_ratio = 1;
        }
        damage_ratio = 1 - damage_ratio;
        max_health = isdefined(vehicle.maxhealth) ? vehicle.maxhealth : vehicle.healthdefault;
        vehicle_damage = min(max_health * damage_ratio, 1000);
        vehicle dodamage(vehicle_damage, self.origin, self, self);
        if (isdefined(vehicle)) {
            knock_dir = vectornormalize(vehicle.origin - pos);
            knock_dir = (knock_dir[0], knock_dir[1], 0.1);
            vehicle launchvehicle(knock_dir * 100, pos, 0, 0);
        }
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x25d47e9f, Offset: 0x66d8
// Size: 0x7c
function private function_f22a5b52(entity) {
    var_e56cdb96 = entity gettagorigin("j_pocketdown4_le");
    entity clientfield::increment("hs_melee_smash_cf", 1);
    entity thread function_59e78833(var_e56cdb96, 125, 50, 300, 750, 300);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0xc92b16d7, Offset: 0x6760
// Size: 0x82
function private function_82ecc6e1(entity) {
    if (isdefined(entity.var_83515ce0)) {
        entity.var_83515ce0 deletedelay();
    }
    entity.var_83515ce0 = util::spawn_model(#"tag_origin", entity.origin, entity.angles);
    entity.var_fa4cbfee -= 1;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x6 linked
// Checksum 0xa66d9891, Offset: 0x67f0
// Size: 0x164
function private function_fc58de23(entity, force_summon = 0) {
    if (entity.zombie_count >= entity.var_c0300653 || entity.zombie_count >= 32) {
        entity.var_d345ded2 = gettime() + 20000;
        entity.var_1a9f6f73 = 0;
        return;
    }
    if (!force_summon && !is_true(entity.var_fa07f33a) || !isarray(entity.var_f7c25ec3) || !entity.var_f7c25ec3.size) {
        return;
    }
    var_3ea1751 = entity.zombie_count - entity.var_4956c24a;
    if (getaicount() + var_3ea1751 >= getailimit()) {
        return;
    }
    if (!self flag::get(#"hash_3af854f842b1e003")) {
        if (gettime() >= entity.var_d345ded2) {
            entity thread function_53660c1e();
        }
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0xa266cc9c, Offset: 0x6960
// Size: 0xe2
function private function_a484c263(entity) {
    self thread function_5f46fdfc();
    entity.var_fa07f33a = undefined;
    foreach (struct in self.var_f7c25ec3) {
        struct.var_7aaf44b9 = 0;
    }
    entity.var_d345ded2 = gettime() + 20000;
    if (!is_true(entity.var_ab59a16f)) {
        entity.var_ab59a16f = 1;
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x6 linked
// Checksum 0x739f3e3e, Offset: 0x6a50
// Size: 0x6e
function private function_5f46fdfc() {
    self endon(#"death");
    self flag::wait_till_clear(#"hash_3af854f842b1e003");
    if (isdefined(self.var_83515ce0)) {
        self.var_83515ce0 deletedelay();
        self.var_83515ce0 = undefined;
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x628138df, Offset: 0x6ac8
// Size: 0x1a
function private function_243113b(entity) {
    entity.var_fa07f33a = 1;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0xed1ef6da, Offset: 0x6af0
// Size: 0xc2
function private function_48f98842(entity) {
    if (!isdefined(entity.var_f7c25ec3)) {
        return 0;
    }
    var_d46eae05 = function_a1ef346b().size;
    n_zombies = int(min(32, 8 * function_a1ef346b().size));
    if (var_d46eae05 <= 1) {
        n_zombies = int(n_zombies * 0.75);
    }
    return n_zombies;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x35456892, Offset: 0x6bc0
// Size: 0x1d2
function private function_ee80ec78(entity) {
    if (!isdefined(entity.var_f7c25ec3)) {
        return undefined;
    }
    var_6fd88ddd = 2147483647;
    var_deb5b9cb = undefined;
    foreach (entity_number, struct in entity.var_f7c25ec3) {
        player = getentbynum(entity_number);
        if (!isdefined(player) || distance2dsquared(player.origin, entity.origin) > sqr(3000)) {
            continue;
        }
        nearby_zombies = function_72d3bca6(getactorteamarray(level.zombie_team), player.origin, undefined, undefined, 512);
        if (nearby_zombies.size + (isdefined(struct.var_7aaf44b9) ? struct.var_7aaf44b9 : 0) < var_6fd88ddd) {
            var_deb5b9cb = player;
            var_6fd88ddd = nearby_zombies.size + (isdefined(struct.var_7aaf44b9) ? struct.var_7aaf44b9 : 0);
        }
    }
    return var_deb5b9cb;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0xa0893813, Offset: 0x6da0
// Size: 0x62
function private function_f39d491b(player) {
    var_3ca7e6d4 = vectornormalize(self.origin - player.origin);
    offset = player.origin + var_3ca7e6d4 * 250;
    return offset;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x6 linked
// Checksum 0x1cc003bf, Offset: 0x6e10
// Size: 0x3ce
function private function_53660c1e() {
    self endon(#"death");
    self flag::set(#"hash_3af854f842b1e003");
    self.zombie_count++;
    self.var_53a43cbf++;
    origin = self.origin;
    var_c165d3f1 = function_ee80ec78(self);
    if (isdefined(var_c165d3f1)) {
        if (!isdefined(self.var_f7c25ec3[var_c165d3f1 getentitynumber()].var_7aaf44b9)) {
            self.var_f7c25ec3[var_c165d3f1 getentitynumber()].var_7aaf44b9 = 0;
        }
        self.var_f7c25ec3[var_c165d3f1 getentitynumber()].var_7aaf44b9++;
        origin = self function_f39d491b(var_c165d3f1);
    } else if (isdefined(self.favoriteenemy)) {
        origin = self function_f39d491b(self.favoriteenemy);
    }
    if (!isdefined(origin)) {
        return;
    }
    a_s_pts = namespace_85745671::function_e4791424(origin, 8, 150, 250);
    if (isdefined(a_s_pts[0]) && isdefined(self.var_83515ce0)) {
        start_time = gettime();
        self.var_83515ce0 dontinterpolate();
        self.var_83515ce0.origin = a_s_pts[0].origin;
        self.var_83515ce0 clientfield::set("hs_summon_cf", 1);
        util::wait_network_frame();
        if (isdefined(self.var_83515ce0)) {
            self.var_83515ce0 dontinterpolate();
            self.var_83515ce0.origin = self gettagorigin("j_head_mouth_scale");
            self.var_83515ce0 clientfield::set("hs_summon_cf", 2);
            util::wait_network_frame();
        }
        if (isdefined(self.var_fcc9bc97)) {
            spawn_info = namespace_679a22ba::function_ca209564(self.var_fcc9bc97);
            if (isdefined(spawn_info.var_990b33df)) {
                aitype = spawn_info.var_990b33df;
            }
        }
        if (!isdefined(aitype)) {
            aitype = #"hash_7cba8a05511ceedf";
        }
        self thread function_75a4863b(aitype, a_s_pts[0].origin, origin, var_c165d3f1);
        var_2863084c = int(max(0, 0 - gettime() - start_time));
    } else {
        self.zombie_count--;
    }
    self flag::clear(#"hash_3af854f842b1e003");
    self.var_d345ded2 = gettime() + (isdefined(var_2863084c) ? var_2863084c : 100);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x6 linked
// Checksum 0xddaa379b, Offset: 0x71e8
// Size: 0xac
function private function_81df7d97() {
    if (getaicount() < getailimit()) {
        return;
    }
    var_39ab7f8c = getaiarchetypearray(#"zombie", level.zombie_team);
    result = function_d59a3443(var_39ab7f8c);
    /#
        if (!result) {
            println(#"hash_4d228a08eb07dcb3");
        }
    #/
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 4, eflags: 0x2 linked
// Checksum 0xc5bfd06c, Offset: 0x72a0
// Size: 0x228
function function_75a4863b(aitype, origin, target_pos, var_c165d3f1) {
    self endon(#"death");
    wait(0.75);
    function_81df7d97();
    ai_spawned = namespace_85745671::function_9d3ad056(aitype, origin, vectortoangles(target_pos - origin), "hulk_zombie");
    players = getplayers(undefined, origin, 192);
    foreach (player in players) {
        dist = distance(player.origin, origin);
        damage = lerpfloat(0, 20, dist / 192);
        player dodamage(damage, origin, self, self);
    }
    if (isdefined(ai_spawned)) {
        self.var_4956c24a++;
        ai_spawned thread function_5f9f594(self);
        ai_spawned.spawn_point = self;
        self.var_4dfe3675[self.var_4dfe3675.size] = ai_spawned;
        if (isdefined(var_c165d3f1) && isdefined(level.var_36bc0c68)) {
            ai_spawned [[ level.var_36bc0c68 ]](var_c165d3f1);
        }
        return;
    }
    self.zombie_count--;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0xa08e6aa1, Offset: 0x74d0
// Size: 0x88
function private function_5f9f594(entity) {
    self notify("1aabe82639b65821");
    self endon("1aabe82639b65821");
    entity endon(#"death");
    self waittill(#"death", #"entitydeleted");
    if (entity.zombie_count > 0) {
        entity.zombie_count--;
        entity.var_4956c24a--;
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x6 linked
// Checksum 0xbd373138, Offset: 0x7560
// Size: 0x98
function private function_3962293(entity, *animname) {
    animname val::set(#"hound_toss", "can_zombie_summon", 0);
    animname clientfield::set("hs_hound_actor_cf", 1);
    animname.var_6512ae03 = 0;
    animname.var_9b3f95fc = 0;
    animname.var_26a916e5 = 1;
    function_c7721987(animname);
    return true;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0xb18ddac8, Offset: 0x7600
// Size: 0xbe
function private function_2821f047(entity) {
    entity val::reset(#"hound_toss", "can_zombie_summon");
    self function_231f9a1b("hs_phase_melee_wander");
    entity.var_fa4cbfee += 2;
    function_b12bd2af(self);
    entity clientfield::set("hs_hound_actor_cf", 0);
    entity.var_26a916e5 = undefined;
    entity.arm_raised = undefined;
    return true;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x8797f6b6, Offset: 0x76c8
// Size: 0xaa
function private function_c7721987(entity) {
    entity = self;
    entity.var_907258b8 = entity.arm_state;
    if (!isdefined(entity.favoriteenemy)) {
        entity.arm_state = "arm_lowered";
        return;
    }
    if (vectordot(entity.favoriteenemy.origin - entity.origin, anglestoforward(entity.angles)) < 0) {
        entity.arm_state = "arm_raised";
        return;
    }
    entity.arm_state = "arm_lowered";
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0xb9a95388, Offset: 0x7780
// Size: 0x88c
function private function_8a252ee4(entity) {
    if (isdefined(entity)) {
        entity.var_6512ae03++;
        entity.var_9b3f95fc = gettime() + 0;
    }
    if (!isactor(entity) || !isdefined(entity.favoriteenemy) && !isdefined(entity.var_41611e5c)) {
        return;
    }
    var_8598bad6 = entity gettagorigin("j_clubhold_launch");
    target_ent = isdefined(entity.favoriteenemy) ? entity.favoriteenemy : entity.var_41611e5c;
    target_pos = target_ent.origin;
    var_ad804014 = 25;
    if (target_ent isnotarget() || is_true(target_ent.ignoreme)) {
        var_ad804014 = 300;
    }
    if (distancesquared(target_pos, entity.origin) > sqr(250)) {
        velocity = target_ent getvelocity();
        target_pos += velocity * 1;
        var_736d384 = math::randomsign() * randomint(var_ad804014);
        var_6b1c9b42 = math::randomsign() * randomint(var_ad804014);
        target_pos += (var_736d384, var_6b1c9b42, 0);
    }
    target_pos += (0, 0, 24);
    var_872c6826 = vectortoangles(target_pos - var_8598bad6);
    var_d54a1968 = getweapon(#"hash_194167f630c1e2e2");
    var_dd6bc3a6 = var_d54a1968.projectilespeed;
    dist = distance(var_8598bad6, target_pos);
    angles = vectortoangles(target_pos - var_8598bad6);
    dir = anglestoforward(angles);
    to_target = target_pos - var_8598bad6;
    velocity = dir * var_dd6bc3a6;
    time = length((to_target[0], to_target[1], to_target[2])) / var_dd6bc3a6;
    if (time <= 0) {
        time = 1;
    }
    var_813d38fa = (to_target[2] + 0.5 * getdvarfloat(#"bg_gravity", 0) * sqr(time)) / time;
    var_578ee39a = var_813d38fa * var_813d38fa / 2 * getdvarfloat(#"bg_gravity", 0);
    var_5245b051 = 100 + max(to_target[2], 0);
    var_7480a4f1 = 600;
    if (entity.arm_state === "arm_raised") {
        var_f11e58cf = getdvarfloat(#"hash_7b8c887955717388", 1.5);
        var_7480a4f1 = 900;
        var_7ee6937e = vectornormalize((target_pos[0], target_pos[1], 0) - (var_8598bad6[0], var_8598bad6[1], 0));
        target_pos -= var_7ee6937e * 80;
    }
    var_e7b2b76a = to_target[2] < 0 && dist < var_7480a4f1;
    if ((isdefined(var_f11e58cf) || var_578ee39a > var_5245b051 && var_5245b051 > 0) && !var_e7b2b76a) {
        var_b0eeef83 = sqrt(2 * getdvarfloat(#"bg_gravity", 0) * var_5245b051) * (isdefined(var_f11e58cf) ? var_f11e58cf : 1);
        a = -0.5 * getdvarfloat(#"bg_gravity", 0);
        b = var_b0eeef83;
        c = to_target[2] * -1;
        var_b2ca2007 = (b * -1 - sqrt(sqr(b) - 4 * a * c)) / 2 * a;
        if (to_target[2] > 0) {
            var_b2ca2007 = (b * -1 + sqrt(sqr(b) - 4 * a * c)) / 2 * a;
        }
        var_ea3a82ca = length((to_target[0], to_target[1], to_target[2])) / var_b2ca2007;
        var_d4880e60 = (dir[0], dir[1], 0);
        var_d4880e60 = vectornormalize(var_d4880e60);
        velocity = var_d4880e60 * var_ea3a82ca;
        var_813d38fa = var_b0eeef83;
        time = var_b2ca2007;
    }
    velocity = (velocity[0], velocity[1], var_813d38fa);
    grenade = entity magicgrenadetype(var_d54a1968, var_8598bad6, velocity);
    playsoundatposition(#"hash_4897d1a140f146f5", var_8598bad6);
    var_b1d0a64 = util::spawn_model(#"hash_143e0a5b60055506", var_8598bad6, grenade.angles);
    var_b1d0a64 linkto(grenade, "tag_origin");
    var_b1d0a64 clientfield::set("dog_projectile_fx", 1);
    var_b1d0a64 useanimtree("generic");
    var_b1d0a64 thread animation::play(#"hash_164d6b226523d90a", var_b1d0a64, (30, var_b1d0a64.angles[1], var_b1d0a64.angles[2]));
    var_b1d0a64.target_ent = target_ent;
    grenade thread function_7d162bd0(var_b1d0a64, entity);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x6 linked
// Checksum 0xe7779857, Offset: 0x8018
// Size: 0x25c
function private function_7d162bd0(projectile, entity) {
    level endon(#"end_game");
    self endon(#"entitydeleted");
    projectile thread function_cf57c2cb(self);
    s_waitresult = self waittill(#"death", #"projectile_impact_explode", #"explode", #"hash_38b24dfa52842786");
    if (s_waitresult._notify == "death") {
        self deletedelay();
        s_waitresult = self waittilltimeout(float(function_60d95f53()) / 1000, #"projectile_impact_explode", #"explode", #"hash_38b24dfa52842786");
        if (s_waitresult._notify == "timeout") {
            return;
        }
    }
    projectile deletedelay();
    if (s_waitresult._notify == "projectile_impact_explode") {
        var_2cadffe7 = function_a1fce938();
        if (isdefined(var_2cadffe7)) {
            var_ee020b9f = projectile.origin;
            var_53b2da60 = function_9cc082d2(var_ee020b9f, 120);
            var_ee020b9f = isdefined(var_53b2da60[#"point"]) ? var_53b2da60[#"point"] : var_ee020b9f;
            var_2cadffe7 thread function_7b5805b4(entity, var_ee020b9f, projectile.target_ent, isdefined(var_53b2da60[#"point"]));
        }
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x6 linked
// Checksum 0xd51963f8, Offset: 0x8280
// Size: 0xa6
function private function_a1fce938() {
    foreach (var_b12a43cc in level.var_c54cc49d) {
        if (!is_true(var_b12a43cc.in_use)) {
            var_b12a43cc.in_use = 1;
            return var_b12a43cc;
        }
    }
    return undefined;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 4, eflags: 0x6 linked
// Checksum 0xcb0bed46, Offset: 0x8330
// Size: 0x17e
function private function_7b5805b4(var_ab1b3515, var_ee020b9f, target_ent, var_693b5357) {
    self endon(#"death");
    self.origin = var_ee020b9f;
    util::wait_network_frame();
    self clientfield::increment("dog_launcher_explode_fx", 1);
    var_8c063811 = getscriptbundle("molotov_custom_settings");
    blast_radius = 65;
    self.var_ab1b3515 = var_ab1b3515;
    level thread namespace_68a80213::function_59d981cc(self.origin + (0, 0, 18), blast_radius, target_ent, self);
    namespace_68a80213::function_ccb2e201(self.origin + (0, 0, 18), blast_radius);
    if (is_true(var_693b5357)) {
        target_ent namespace_68a80213::function_e8ad1d81(self.origin, (0, 0, 1), (0, 0, 1), var_ab1b3515.team, var_8c063811, var_ab1b3515, self);
    }
    wait(5);
    if (isdefined(self)) {
        self.in_use = 0;
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x4ed9f564, Offset: 0x84b8
// Size: 0x142
function private function_cf57c2cb(grenade) {
    self endon(#"entitydeleted", #"death");
    self.takedamage = 1;
    self.health = 100;
    while (true) {
        waitresult = self waittill(#"damage");
        if (waitresult.amount > 0) {
            self.health -= waitresult.amount;
            if (isplayer(waitresult.attacker)) {
                function_b89cb3dc(waitresult);
            }
            if (self.health <= 0) {
                if (isdefined(grenade)) {
                    grenade deletedelay();
                    grenade notify(#"projectile_impact_explode");
                }
                self deletedelay();
            }
            waitframe(1);
        }
        if (self.health <= 0) {
            break;
        }
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x23cce13a, Offset: 0x8608
// Size: 0x3e
function private function_26f2f052(entity) {
    if (!is_true(entity.var_b4e2431f === "hs_phase_swarm_spawn")) {
        return false;
    }
    return true;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0xbe576067, Offset: 0x8650
// Size: 0x4e
function private function_e4520a56(entity) {
    entity.var_f01add23 = 0;
    if (hasasm(entity)) {
        anim = entity asmgetcurrentdeltaanimation();
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x72913260, Offset: 0x86a8
// Size: 0x10c
function private function_fd09fbc0(entity) {
    assert(isdefined(entity.var_f01add23), "<unknown string>");
    n_players = getplayers().size;
    var_fc398f5e = n_players * 2;
    var_8214bfd5 = floor(var_fc398f5e / 4) + (3 - entity.var_f01add23 > var_fc398f5e % 4 ? 0 : 1);
    entity.var_f01add23 += 1;
    for (i = 0; i < var_8214bfd5; i++) {
        function_eceecc98(entity);
        wait(0.25);
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x16032d0a, Offset: 0x87c0
// Size: 0x5c
function private function_b80a0830(entity) {
    self function_231f9a1b("hs_phase_melee_wander");
    entity.var_fa4cbfee += 2;
    function_b12bd2af(self);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 3, eflags: 0x2 linked
// Checksum 0xab60e2e1, Offset: 0x8828
// Size: 0x208
function function_eceecc98(var_66a3d186, var_241b172e, var_717ee5de) {
    origin = (0, 0, 0);
    if (isdefined(var_66a3d186)) {
        origin = vectorlerp(var_66a3d186 gettagorigin("j_shoulder_le"), var_66a3d186 gettagorigin("j_shoulder_ri"), 0.5);
    }
    origin = isdefined(var_241b172e) ? var_241b172e : origin;
    swarm = util::spawn_model(#"hash_7a7aadfb584e0859", origin);
    swarm playloopsound(#"hash_4c9124e9213250df");
    swarm.targetname = "sr_swarm_hulking_summoner";
    swarm.var_66a3d186 = var_66a3d186;
    if (isdefined(var_66a3d186)) {
        function_8c77b86c(var_66a3d186);
        swarm flag::set(#"hash_881b47a27832ed1");
        if (!isdefined(var_66a3d186.var_36225742)) {
            var_66a3d186.var_36225742 = [];
        }
        if (!isdefined(var_66a3d186.var_36225742)) {
            var_66a3d186.var_36225742 = [];
        } else if (!isarray(var_66a3d186.var_36225742)) {
            var_66a3d186.var_36225742 = array(var_66a3d186.var_36225742);
        }
        var_66a3d186.var_36225742[var_66a3d186.var_36225742.size] = swarm;
    }
    swarm thread function_187bcbe(var_717ee5de);
    swarm thread function_e57b9f29();
    return swarm;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x2 linked
// Checksum 0x1d4062a2, Offset: 0x8a38
// Size: 0xe92
function function_187bcbe(var_717ee5de) {
    self endon(#"death");
    self.var_88b20e7f = 60;
    self.target_ent = undefined;
    self.var_a7882c19 = 0;
    if (isdefined(self.var_66a3d186)) {
        var_b048de07 = vectorlerp(self.var_66a3d186 gettagorigin("j_head_mouth1"), self.var_66a3d186 gettagorigin("j_head_mouth5"), 0.5);
        var_5846115f = vectornormalize(var_b048de07 - self.origin);
        self moveto(self.origin + var_5846115f * 100, 0.25);
        wait(0.25);
        self moveto(self.origin + var_5846115f * 100, 2, 0, 1.5);
        wait(2);
    }
    self.takedamage = 1;
    while (true) {
        clockwise = 1;
        var_2f769fb1 = (0, 0, 0);
        var_2d0b175 = 0;
        var_f6107d1 = self.origin;
        self.var_88b20e7f = min(self.var_88b20e7f, 60);
        while (true) {
            if (isdefined(self.var_66a3d186)) {
                var_2f769fb1 = self.var_66a3d186 gettagorigin("j_head");
            } else if (flag::get(#"hash_881b47a27832ed1")) {
                self deletedelay();
                return;
            } else if (isdefined(self.var_e8280122)) {
                var_2f769fb1 = self.var_e8280122;
            }
            var_f6107d1 = (self.origin[0], self.origin[1], var_2f769fb1[2] + sin(var_2d0b175) * 100);
            var_2d0b175 += 0.02;
            var_8a380e81 = vectornormalize(var_2f769fb1 - var_f6107d1);
            circle_pos = -1 * var_8a380e81 * 200 + var_2f769fb1;
            self.var_88b20e7f = min(self.var_88b20e7f, 125);
            /#
                if (getdvarint(#"hash_7b1300b093008e51", 0) > 0) {
                    debugstar(circle_pos, 20, (0, 1, 0));
                }
            #/
            z_axis = (0, 0, clockwise);
            var_dc77dd5c = vectorcross(var_8a380e81, z_axis);
            target_pos = circle_pos + var_dc77dd5c * self.var_88b20e7f;
            self function_c9bcf1cb(target_pos);
            if (gettime() > self.var_a7882c19) {
                if (isdefined(self.var_66a3d186)) {
                    self.target_ent = self.var_66a3d186 function_ae1ac363();
                } else {
                    self.target_ent = self function_ae1ac363();
                }
                self.target_ent = isdefined(var_717ee5de) ? var_717ee5de : self.target_ent;
                if (isdefined(self.target_ent)) {
                    break;
                }
            }
        }
        to_target = undefined;
        var_1f2ee4ae = distance2d(self.origin, self.target_ent.origin);
        var_584124bc = self.origin;
        var_c0500b76 = (randomint(2) - 0.5) * 2;
        self.turn_rate = 0.9;
        var_f21cd23e = 125;
        if (isdefined(self.var_66a3d186)) {
            var_fba38d14 = self.var_66a3d186.origin;
        }
        if (isdefined(self.var_e8280122)) {
            var_fba38d14 = self.var_e8280122;
        }
        if (isdefined(var_fba38d14)) {
            dist_to_target = distance2d(var_fba38d14, self.target_ent.origin);
            var_f21cd23e *= 1 + min(0.25 * ceil(max(dist_to_target - 500, 0) / 500), 1);
            var_fba38d14 = undefined;
        }
        while (true) {
            var_8134d046 = (0, 0, 70);
            if (isplayer(self.target_ent) && self.target_ent isinvehicle()) {
                var_8134d046 = self.target_ent gettagorigin("tag_eye") - self.target_ent.origin;
            }
            var_2f769fb1 = self.target_ent.origin + var_8134d046;
            to_target = vectornormalize(var_2f769fb1 - self.origin);
            target_pos = to_target * self.var_88b20e7f + self.origin;
            self.var_88b20e7f = min(self.var_88b20e7f + 5, var_f21cd23e);
            target_pos += function_d321dcc8(1, to_target);
            target_pos += function_d321dcc8(-1, to_target);
            target_pos += function_4e15ba87(var_2f769fb1, 1);
            target_pos += function_3a260c9e(var_c0500b76, to_target, var_584124bc, var_1f2ee4ae);
            if (self function_c9bcf1cb(var_2f769fb1, 40, target_pos)) {
                break;
            }
            var_ebd5a9f8 = 0;
            var_d118f4e6 = 0;
            if (isdefined(self.var_66a3d186)) {
                var_fba38d14 = self.var_66a3d186.origin;
                var_d118f4e6 = self.var_66a3d186.ignoreall;
            }
            if (isdefined(self.var_e8280122)) {
                var_fba38d14 = self.var_e8280122;
            }
            if (isdefined(var_fba38d14)) {
                var_2d7d2d1c = distance2d(var_fba38d14, self.origin);
                var_ebd5a9f8 = var_2d7d2d1c > 4000;
                var_fba38d14 = undefined;
            }
            if (!zombie_utility::is_player_valid(self.target_ent, 1, 1) || var_ebd5a9f8 || var_d118f4e6) {
                self.target_ent = undefined;
                break;
            }
        }
        if (isdefined(self.target_ent) && isplayer(self.target_ent) && isdefined(self.health_state)) {
            self.target_ent clientfield::set("hs_swarm_damage", self.health_state);
            self.target_ent dodamage(30 + 20 * (self.health_state - 2), self.origin, self.var_66a3d186, self.var_66a3d186, "none", "MOD_EXPLOSIVE");
            self.target_ent playsoundtoplayer(#"hash_6bee01b489607edd", self.target_ent);
            vehicle = self.target_ent isinvehicle() ? self.target_ent getvehicleoccupied() : undefined;
            if (isdefined(vehicle)) {
                vehicle dodamage(100, self.origin, undefined, undefined, "none", "MOD_EXPLOSIVE");
            }
        }
        var_dd660bcf = 5;
        self.turn_rate = 0.3;
        for (i = 0; i < var_dd660bcf; i++) {
            if (isdefined(self.momentum_dir) && i > 0) {
                var_5676b87b = 1 + (var_dd660bcf - i) * 0.1;
                self.var_88b20e7f = min(self.var_88b20e7f + 5, var_f21cd23e * var_5676b87b);
                target_pos = self.origin + self.momentum_dir * self.var_88b20e7f;
                target_pos += function_d321dcc8(1, to_target);
                target_pos += function_d321dcc8(-1, to_target);
                target_pos = (target_pos[0], target_pos[1], self.origin[2]);
                if (!bullettracepassed(self.origin, target_pos, 0, self)) {
                    target_pos += (0, 0, 100);
                }
                self function_c9bcf1cb(target_pos, 40, target_pos);
                continue;
            }
            if (zombie_utility::is_player_valid(self.target_ent, 1, 1)) {
                var_74970a5b = self.target_ent geteye() - self.origin;
                var_29f62e8d = vectornormalize(var_74970a5b);
                if (isdefined(self.momentum_dir) && vectordot(self.momentum_dir, var_29f62e8d) > 0) {
                    target_pos = self.origin + var_29f62e8d * self.var_88b20e7f + var_74970a5b;
                    target_pos = (target_pos[0], target_pos[1], self.origin[2]);
                    self moveto(target_pos, 0.2);
                    wait(0.2);
                }
            }
        }
        self.var_88b20e7f = 60;
        var_2f769fb1 = (0, 0, 0);
        var_584124bc = self.origin;
        while (true) {
            if (isdefined(self.var_66a3d186)) {
                var_2f769fb1 = self.var_66a3d186 gettagorigin("j_head");
            } else if (isdefined(self.var_e8280122)) {
                var_2f769fb1 = self.var_e8280122;
            }
            self.var_88b20e7f = min(self.var_88b20e7f + 5, var_f21cd23e);
            to_target = vectornormalize(var_2f769fb1 - (self.origin[0], self.origin[1], var_2f769fb1[2]));
            circle_pos = var_2f769fb1 - to_target * 200;
            target_pos = vectornormalize(circle_pos - self.origin) * self.var_88b20e7f + self.origin;
            target_pos += function_4e15ba87(var_2f769fb1);
            target_pos += function_3a260c9e(var_c0500b76, to_target, var_584124bc, var_1f2ee4ae);
            if (distance2dsquared(self.origin, var_2f769fb1) < sqr(750)) {
                self.turn_rate = 0.65;
            }
            if (self function_c9bcf1cb(var_2f769fb1, 200, target_pos)) {
                break;
            }
        }
        self.var_a7882c19 = gettime() + int(5 * 1000);
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x6 linked
// Checksum 0x4ea3a238, Offset: 0x98d8
// Size: 0x1c8
function private function_d321dcc8(var_af0000ca, to_target) {
    var_817b26d2 = var_af0000ca;
    var_dc77dd5c = vectorcross(to_target, (0, 0, var_817b26d2));
    var_d01d9a4b = to_target * 100 + var_dc77dd5c * 100 + self.origin;
    bullet_trace = bullettrace(self.origin, var_d01d9a4b, 0, self);
    fraction = bullet_trace[#"fraction"];
    result = (0, 0, 0);
    if (fraction > 0 && fraction < 1) {
        result = var_dc77dd5c * -1 * (1 - fraction) * self.var_88b20e7f;
    }
    /#
        if (getdvarint(#"hash_7b1300b093008e51", 0) > 0) {
            recordline(self.origin, var_d01d9a4b, (1, 1, 0));
            if (fraction > 0 && fraction < 1) {
                debugstar(vectornormalize(var_d01d9a4b - self.origin) * fraction + self.origin, 20, (1, 0, 0));
            }
        }
    #/
    return result;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x6 linked
// Checksum 0x1de56f37, Offset: 0x9aa8
// Size: 0x160
function private function_4e15ba87(var_2f769fb1, b_do_trace = 0) {
    delta_z = var_2f769fb1[2] - self.origin[2];
    multiplier = 0.05;
    push_vector = (0, 0, delta_z * multiplier);
    if (b_do_trace) {
        trace = bullettrace(self.origin, self.origin + push_vector, 0, self);
        if (trace[#"fraction"] < 1) {
            position = trace[#"position"] + (0, 0, 50);
            push_vector = position - self.origin;
        }
    }
    /#
        if (getdvarint(#"hash_7b1300b093008e51", 0) > 0) {
            recordline(self.origin, self.origin + push_vector, (1, 0, 1));
        }
    #/
    return push_vector;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 4, eflags: 0x6 linked
// Checksum 0xa1d4faaf, Offset: 0x9c10
// Size: 0x178
function private function_3a260c9e(var_af0000ca, to_target, spawn_pos, var_93b101fe) {
    var_815a5910 = distance2d(self.origin, spawn_pos);
    var_269a05 = var_93b101fe * 0.5;
    if (var_815a5910 > var_269a05) {
        return (0, 0, 0);
    }
    t = var_815a5910 / var_269a05;
    var_500bdd34 = pow(100, -1 * pow(t - 0.5, 2));
    var_dc77dd5c = vectorcross(to_target, (0, 0, var_af0000ca));
    push_length = 50;
    push_vector = var_dc77dd5c * push_length * var_500bdd34;
    /#
        if (getdvarint(#"hash_7b1300b093008e51", 0) > 0) {
            recordline(self.origin, self.origin + push_vector, (0, 0, 1));
        }
    #/
    return push_vector;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 3, eflags: 0x6 linked
// Checksum 0x9511ae76, Offset: 0x9d90
// Size: 0x33a
function private function_c9bcf1cb(var_2f769fb1, var_1f14bda8, var_4717cb50) {
    self endon(#"death");
    if (!isdefined(var_4717cb50)) {
        var_4717cb50 = var_2f769fb1;
    }
    if (!isdefined(self.momentum_dir)) {
        self.momentum_dir = vectornormalize(var_2f769fb1 - self.origin);
    }
    prev_position = self.origin;
    var_1042ef32 = vectortoangles(var_4717cb50 - self.origin);
    current_angles = vectortoangles(self.momentum_dir);
    lerp_factor = isdefined(self.turn_rate) ? self.turn_rate : 1;
    var_193b8043 = (anglelerp(current_angles[0], var_1042ef32[0], lerp_factor), anglelerp(current_angles[1], var_1042ef32[1], lerp_factor), 0);
    forward_dir = anglestoforward(var_193b8043);
    target_pos = forward_dir * self.var_88b20e7f + self.origin;
    if (isdefined(self.var_e8280122)) {
        if (!bullettracepassed(self.origin, target_pos, 0, self, self.target_ent)) {
            target_pos += (0, 0, 50);
        }
    }
    self moveto(target_pos, 0.2);
    waitresult = self waittilltimeout(0.2, #"movedone");
    self.momentum_dir = vectornormalize(self.origin - prev_position);
    if (waitresult._notify === "movedone") {
        return true;
    }
    if (isdefined(var_1f14bda8) && distancesquared(var_2f769fb1, self.origin) < sqr(var_1f14bda8)) {
        return true;
    }
    if (isdefined(var_1f14bda8) && self.var_88b20e7f > var_1f14bda8 * 1.5) {
        closest_point = math::closest_point_on_line(var_2f769fb1, prev_position, self.origin);
        if (isdefined(closest_point) && distancesquared(closest_point, var_2f769fb1) < sqr(var_1f14bda8)) {
            return true;
        }
    }
    return false;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x207496c, Offset: 0xa0d8
// Size: 0x2b0
function private function_953cead6(entity) {
    if (!isdefined(entity.var_36225742) || entity.var_36225742.size === 0 || entity.ignoreall) {
        return;
    }
    entity.var_9cf16573 = [];
    players = function_a1ef346b();
    var_b6e967f9 = arraysortclosest(players, entity gettagorigin("j_head"));
    foreach (player in var_b6e967f9) {
        if (zombie_utility::is_player_valid(player, 1, 1)) {
            if (isdefined(entity.var_36225742)) {
                var_ebfb164 = 0;
                foreach (swarm in entity.var_36225742) {
                    if (isdefined(swarm.target_ent) && swarm.target_ent == player) {
                        var_ebfb164 = 1;
                        break;
                    }
                }
                if (var_ebfb164) {
                    continue;
                }
                if (distance2dsquared(entity.origin, player.origin) > sqr(5000)) {
                    continue;
                }
            }
            if (!isdefined(self.var_9cf16573)) {
                self.var_9cf16573 = [];
            } else if (!isarray(self.var_9cf16573)) {
                self.var_9cf16573 = array(self.var_9cf16573);
            }
            self.var_9cf16573[self.var_9cf16573.size] = player;
        }
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x6 linked
// Checksum 0xe60eac1e, Offset: 0xa390
// Size: 0x9a
function private function_ae1ac363() {
    if (isdefined(self.var_e8280122)) {
        self.var_9cf16573 = arraysortclosest(function_a1ef346b(), self.origin, undefined, undefined, 5000);
    }
    if (!isdefined(self.var_9cf16573) || self.var_9cf16573.size === 0) {
        return;
    }
    target_player = array::pop_front(self.var_9cf16573);
    return target_player;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x2 linked
// Checksum 0x7353743c, Offset: 0xa438
// Size: 0x206
function function_e57b9f29() {
    self endon(#"death", #"end_game");
    self.takedamage = 0;
    self.maxhealth = 300;
    if (isdefined(self.var_66a3d186)) {
        self function_967133dc(0.2, 0.9);
    }
    self.health = int(self.maxhealth);
    self.health_state = 4;
    self clientfield::set("hs_swarm_state", 4);
    self thread function_51d2e478();
    while (isdefined(self)) {
        waitresult = self waittill(#"damage");
        if (isplayer(waitresult.attacker)) {
            function_b89cb3dc(waitresult);
        }
        if (self.health <= 0) {
            self deletedelay();
            continue;
        }
        if (self.health <= 0.33 * self.maxhealth) {
            self clientfield::set("hs_swarm_state", 2);
            self.health_state = 2;
            continue;
        }
        if (self.health <= 0.67 * self.maxhealth) {
            self clientfield::set("hs_swarm_state", 3);
            self.health_state = 3;
            continue;
        }
        self.health_state = 4;
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x2 linked
// Checksum 0xb192d952, Offset: 0xa648
// Size: 0x294
function function_b89cb3dc(waitresult) {
    item = waitresult.attacker item_inventory::function_230ceec4(waitresult.weapon);
    damage_multiplier = 1;
    if (isdefined(item)) {
        if (waitresult.mod != "MOD_MELEE") {
            var_4d1602de = zm_weapons::function_d85e6c3a(item.itementry);
            damage_multiplier *= var_4d1602de;
            if (isdefined(item.paplv)) {
                var_645b8bb = zm_weapons::function_896671d5(item.itementry.weapon, item.paplv);
                damage_multiplier *= var_645b8bb;
            }
        }
    }
    var_a682679 = 1;
    if (isplayer(waitresult.attacker) && isalive(waitresult.attacker) && waitresult.attacker zm_powerups::is_insta_kill_active()) {
        damage_multiplier *= 5;
        var_a682679 = 2;
    }
    damage_amount = int(waitresult.amount * damage_multiplier);
    hud::function_c9800094(waitresult.attacker, waitresult.position, damage_amount, var_a682679);
    waitresult.attacker thread damagefeedback::update(waitresult.mod, waitresult.inflictor, undefined, waitresult.weapon, self, undefined, undefined, self.health <= int(damage_amount), undefined);
    damage_multiplier -= 1;
    if (damage_multiplier > 0) {
        self.health -= int(waitresult.amount * damage_multiplier);
        self util::damage_notify_wrapper(int(waitresult.amount * damage_multiplier), self);
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x6 linked
// Checksum 0x6d4168df, Offset: 0xa8e8
// Size: 0x6e
function private function_51d2e478() {
    self endon(#"death", #"end_game");
    while (isdefined(self)) {
        self.health -= 5;
        self util::damage_notify_wrapper(5, self);
        wait(1);
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x9dcfc54b, Offset: 0xa960
// Size: 0x12c
function private function_8c77b86c(var_66a3d186) {
    if (!isdefined(var_66a3d186.var_36225742)) {
        return;
    }
    function_1eaaceab(var_66a3d186.var_36225742);
    if (var_66a3d186.var_36225742.size < 12) {
        return;
    }
    var_6f91118c = 2147483647;
    var_89bc2a8f = undefined;
    for (var_eacec788 = 0; var_eacec788 < var_66a3d186.var_36225742.size; var_eacec788++) {
        swarm = var_66a3d186.var_36225742[var_eacec788];
        if (!isdefined(swarm.target_ent) && isdefined(swarm) && swarm.health < var_6f91118c) {
            var_89bc2a8f = swarm;
            var_6f91118c = swarm.health;
        }
    }
    if (isdefined(var_89bc2a8f)) {
        var_89bc2a8f delete();
    }
    function_1eaaceab(var_66a3d186.var_36225742);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 4, eflags: 0x2 linked
// Checksum 0xf0ecf2b7, Offset: 0xaa98
// Size: 0x290
function function_5daee27d(position, var_1a504200 = 0, radius = 1, var_f2c9c996) {
    var_1a504200 = int(var_1a504200);
    radius = int(radius);
    dropped = function_9cc082d2(position, 200);
    navmesh_pos = isdefined(dropped[#"point"]) ? dropped[#"point"] : undefined;
    if (!isdefined(navmesh_pos)) {
        println("<unknown string>" + position);
        return undefined;
    }
    node = {#origin:navmesh_pos, #var_9f62e935:[], #var_ae0e41c:[], #delay:int(float(var_1a504200) * 1000), #radius:radius, #var_ec6eb3b4:-1, #var_f2c9c996:is_true(var_f2c9c996)};
    if (!isdefined(level.var_84508d4d)) {
        level.var_84508d4d = [];
    } else if (!isarray(level.var_84508d4d)) {
        level.var_84508d4d = array(level.var_84508d4d);
    }
    level.var_84508d4d[level.var_84508d4d.size] = node;
    if (!isdefined(level.var_da823ea6)) {
        level.var_da823ea6 = 1;
    }
    level.var_da823ea6 = max(level.var_da823ea6, radius);
    return node;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x2 linked
// Checksum 0xf8af9060, Offset: 0xad30
// Size: 0x1a4
function function_b2061e66(node1, node2) {
    if (!isarray(node1.var_9f62e935) || !isarray(node2.var_9f62e935)) {
        println("<unknown string>");
        return 0;
    }
    if (isinarray(node1.var_9f62e935, node2) || isinarray(node2.var_9f62e935, node1)) {
        return 0;
    }
    if (!isdefined(node1.var_9f62e935)) {
        node1.var_9f62e935 = [];
    } else if (!isarray(node1.var_9f62e935)) {
        node1.var_9f62e935 = array(node1.var_9f62e935);
    }
    node1.var_9f62e935[node1.var_9f62e935.size] = node2;
    if (!isdefined(node2.var_9f62e935)) {
        node2.var_9f62e935 = [];
    } else if (!isarray(node2.var_9f62e935)) {
        node2.var_9f62e935 = array(node2.var_9f62e935);
    }
    node2.var_9f62e935[node2.var_9f62e935.size] = node1;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x2 linked
// Checksum 0x4149917b, Offset: 0xaee0
// Size: 0x1a4
function function_4e087dd9(node1, node2) {
    if (!isarray(node1.var_ae0e41c) || !isarray(node2.var_ae0e41c)) {
        println("<unknown string>");
        return 0;
    }
    if (isinarray(node1.var_ae0e41c, node2) || isinarray(node2.var_ae0e41c, node1)) {
        return 0;
    }
    if (!isdefined(node1.var_ae0e41c)) {
        node1.var_ae0e41c = [];
    } else if (!isarray(node1.var_ae0e41c)) {
        node1.var_ae0e41c = array(node1.var_ae0e41c);
    }
    node1.var_ae0e41c[node1.var_ae0e41c.size] = node2;
    if (!isdefined(node2.var_ae0e41c)) {
        node2.var_ae0e41c = [];
    } else if (!isarray(node2.var_ae0e41c)) {
        node2.var_ae0e41c = array(node2.var_ae0e41c);
    }
    node2.var_ae0e41c[node2.var_ae0e41c.size] = node1;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x2 linked
// Checksum 0x3b6562cb, Offset: 0xb090
// Size: 0x44
function function_56669b6f(enabled) {
    self flag::set_val(#"hash_7c694ae015579f74", !is_false(enabled));
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x2 linked
// Checksum 0xb50b40be, Offset: 0xb0e0
// Size: 0x32
function function_e0487da2() {
    return is_true(self flag::get(#"hash_7c694ae015579f74"));
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 4, eflags: 0x2 linked
// Checksum 0x3de0b87b, Offset: 0xb120
// Size: 0x51a
function function_f0bafed1(entity, var_1c84dd37 = 0, var_b8ec4fd9 = 0, var_ab002388 = 0) {
    var_2eb1950c = undefined;
    if (!is_true(var_b8ec4fd9)) {
        var_2eb1950c = function_72d3bca6(level.var_84508d4d, entity.origin, undefined, undefined, getdvarint(#"hash_594db65223ca8b1", 100));
    } else {
        var_2eb1950c = function_71979c65(entity, entity.origin, getdvarint(#"hash_594db65223ca8b1", 100));
    }
    if (var_1c84dd37) {
        var_d37fa1de = array::exclude(var_2eb1950c, entity.var_7f73c6e1);
        if (!isdefined(entity.var_fa814aab)) {
            entity.var_fa814aab = 0;
        }
        foreach (node in var_d37fa1de) {
            if (isdefined(node.delay) && node.delay > 0) {
                entity.var_fa814aab = max(entity.var_fa814aab, node.delay);
                entity.var_4fc06e9a = gettime() + entity.var_fa814aab;
            }
        }
    }
    entity.var_7f73c6e1 = var_2eb1950c;
    if (isdefined(entity.var_4fc06e9a) && gettime() < entity.var_4fc06e9a) {
        return [];
    }
    potential_targets = [];
    if (isdefined(entity.var_6265733)) {
        if (!isinarray(var_2eb1950c, entity.var_6265733)) {
            potential_targets[potential_targets.size] = entity.var_6265733;
        }
    }
    if (isdefined(entity.var_1c62b9e9)) {
        if (!isinarray(var_2eb1950c, entity.var_1c62b9e9)) {
            potential_targets[potential_targets.size] = entity.var_1c62b9e9;
        }
    }
    if (var_2eb1950c.size === 0 && potential_targets.size === 0) {
        closest_node = arraygetclosest(entity.origin, level.var_84508d4d);
        return [closest_node];
    }
    foreach (node in var_2eb1950c) {
        foreach (connected in node.var_9f62e935) {
            if (!isinarray(var_2eb1950c, connected) && !isinarray(potential_targets, connected)) {
                potential_targets[potential_targets.size] = connected;
            }
        }
        if (var_ab002388) {
            foreach (connected in node.var_ae0e41c) {
                if (!isinarray(var_2eb1950c, connected) && !isinarray(potential_targets, connected)) {
                    potential_targets[potential_targets.size] = connected;
                }
            }
        }
    }
    return potential_targets;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 3, eflags: 0x2 linked
// Checksum 0x9e53adde, Offset: 0xb648
// Size: 0x10a
function function_4306cd59(entity, target_node, var_970ba289) {
    if (isdefined(target_node)) {
        if (target_node === entity.var_6265733) {
            entity.var_6265733 = entity.var_1c62b9e9;
        }
        foreach (node in target_node.var_9f62e935) {
            if (isinarray(var_970ba289, node)) {
                entity.var_6265733 = node;
            }
        }
        entity.var_1c62b9e9 = target_node;
        entity.var_8ede206 = target_node.var_ec6eb3b4;
        return;
    }
    entity.var_1c62b9e9 = undefined;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 3, eflags: 0x2 linked
// Checksum 0x91bca3c3, Offset: 0xb760
// Size: 0x10a
function function_9ce857d4(entity, node, target_node) {
    if (isdefined(node) && !isinarray(entity.var_7f73c6e1, node) && node !== entity.var_6265733) {
        if (isdefined(entity.var_6265733)) {
            var_389d01c3 = vectornormalize(target_node.origin - entity.var_6265733.origin);
            var_8e6f4a26 = vectornormalize(node.origin - target_node.origin);
            if (vectordot(var_389d01c3, var_8e6f4a26) < -0.5) {
                return undefined;
            }
        } else {
            return undefined;
        }
        return node;
    }
    return undefined;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 3, eflags: 0x2 linked
// Checksum 0x960babd, Offset: 0xb878
// Size: 0x10e
function function_4a60f34e(entity, target_node, var_d4e6996b) {
    if (!(isdefined(target_node) && isdefined(var_d4e6996b) && isdefined(entity.var_6265733)) || entity.var_6265733 === target_node) {
        return false;
    }
    point = math::closest_point_on_line(entity.origin, entity.var_6265733.origin, target_node.origin);
    if (distancesquared(point, target_node.origin) < sqr(getdvarint(#"hash_594db65223ca8b1", 100))) {
        entity.var_6265733 = target_node;
        entity.var_1c62b9e9 = var_d4e6996b;
        return true;
    }
    return false;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x2 linked
// Checksum 0xbd95aae6, Offset: 0xb990
// Size: 0x1b2
function function_5675af77(entity, target_node) {
    if (!isdefined(entity.var_6265733) || entity.var_6265733 === target_node) {
        return target_node.origin;
    }
    var_389d01c3 = vectornormalize(target_node.origin - entity.origin);
    point = math::closest_point_on_line(entity.origin + var_389d01c3 * getdvarfloat(#"hash_51c7ebf6d0d5f3ad", 350), entity.var_6265733.origin, target_node.origin);
    if (vectordot(vectornormalize(point - entity.origin), var_389d01c3) > 0.984808) {
        point = target_node.origin;
    }
    if (!function_5e80cd88(entity) && isdefined(entity.var_fe1e4b1b)) {
        var_2118f9ef = entity.var_fe1e4b1b;
        if (distance2dsquared(point, entity.origin) > distance2dsquared(var_2118f9ef, entity.origin)) {
            point = var_2118f9ef;
        }
    }
    return point;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 5, eflags: 0x2 linked
// Checksum 0x70853179, Offset: 0xbb50
// Size: 0x126
function function_3a92faf9(entity, target_node, var_c302bfc5, var_dfa0d2db, var_da4e2e3d) {
    var_f08505dc = undefined;
    if (is_true(var_dfa0d2db)) {
        var_f08505dc = entity.favoriteenemy.origin;
    } else if (function_5e80cd88(entity)) {
        if (!isdefined(target_node)) {
            return;
        }
        if (target_node.delay > 0) {
            var_f08505dc = target_node.origin;
        }
    } else if (isdefined(var_c302bfc5.origin)) {
        var_f08505dc = var_c302bfc5.origin;
    } else if (isdefined(target_node)) {
        var_f08505dc = math::closest_point_on_line(entity.favoriteenemy.origin, entity.origin, target_node.origin);
    } else if (isdefined(var_da4e2e3d)) {
        var_f08505dc = var_da4e2e3d;
    }
    entity.var_fe1e4b1b = var_f08505dc;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 3, eflags: 0x2 linked
// Checksum 0xb09acc42, Offset: 0xbc80
// Size: 0x1ca
function function_71979c65(entity, point, var_1b64c75 = 0) {
    if (!(isdefined(level.var_84508d4d) && isdefined(level.var_3083f67c))) {
        return [];
    }
    if (!isdefined(level.var_da823ea6)) {
        level.var_da823ea6 = 1;
    }
    if (isdefined(entity.var_8ede206)) {
        var_4d2323be = function_72d3bca6(level.var_3083f67c[entity.var_8ede206], point, undefined, undefined, level.var_da823ea6 + var_1b64c75);
    } else {
        var_4d2323be = function_72d3bca6(level.var_84508d4d, point, undefined, undefined, level.var_da823ea6 + var_1b64c75);
    }
    if (!isdefined(var_4d2323be)) {
        return [];
    }
    nodes = [];
    foreach (node in var_4d2323be) {
        if (distance2dsquared(node.origin, point) < sqr(node.radius + var_1b64c75)) {
            nodes[nodes.size] = node;
        }
    }
    return nodes;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x2 linked
// Checksum 0x3d0ac129, Offset: 0xbe58
// Size: 0xb2
function function_a43884e3(entity) {
    if (!isdefined(level.var_84508d4d)) {
        return undefined;
    }
    nodes = array::filter(level.var_84508d4d, 0, &function_e0218768);
    if (isdefined(entity.var_8ede206)) {
        nodes = array::filter(nodes, 0, &function_381f4e7f, entity.var_8ede206);
    }
    return arraygetclosest(entity.origin, nodes);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x2 linked
// Checksum 0x9f0d7c49, Offset: 0xbf18
// Size: 0x9a
function function_9fe24e6(entity) {
    if (!isdefined(level.var_84508d4d)) {
        return [];
    }
    nodes = array::filter(level.var_84508d4d, 0, &function_e0218768);
    if (isdefined(entity.var_8ede206)) {
        nodes = array::filter(nodes, 0, &function_381f4e7f, entity.var_8ede206);
    }
    return nodes;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 3, eflags: 0x4
// Checksum 0xbe95343b, Offset: 0xbfc0
// Size: 0x5c
function private function_261b28ab(node, point, var_1b64c75) {
    return distance2dsquared(node.origin, point) < sqr(node.radius + var_1b64c75);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x6 linked
// Checksum 0x9733e8aa, Offset: 0xc028
// Size: 0x24
function private function_381f4e7f(node, var_ec6eb3b4) {
    return node.var_ec6eb3b4 === var_ec6eb3b4;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x177e0f1e, Offset: 0xc058
// Size: 0x22
function private function_e0218768(node) {
    return is_true(node.var_f2c9c996);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x2 linked
// Checksum 0x71fd2ee, Offset: 0xc088
// Size: 0x7dc
function function_1fcb2633() {
    level endon(#"end_game");
    structs = struct::get_array("hulk_path_node", "script_noteworthy");
    foreach (struct in structs) {
        struct.var_772aed31 = function_5daee27d(struct.origin, struct.var_1a504200, struct.radius, struct.var_f2c9c996);
        waitframe(1);
    }
    foreach (struct in structs) {
        if (isdefined(struct.target)) {
            targets = struct::get_array(struct.target, "targetname");
            if (isarray(targets) && targets.size > 0) {
                foreach (target in targets) {
                    function_b2061e66(struct.var_772aed31, target.var_772aed31);
                }
            }
        }
    }
    if (!isdefined(level.var_15b03e57)) {
        level.var_15b03e57 = 0;
    }
    if (isdefined(level.var_84508d4d) && level.var_84508d4d.size > 0) {
        visited = [];
        foreach (node in level.var_84508d4d) {
            if (isinarray(visited, node)) {
                continue;
            }
            var_ec6eb3b4 = level.var_15b03e57;
            current = node;
            queue = [];
            var_66715de8 = (0, 0, 0);
            var_5cb6b8a3 = [];
            var_f1cb9898 = 0;
            while (isdefined(current)) {
                if (!isdefined(visited)) {
                    visited = [];
                } else if (!isarray(visited)) {
                    visited = array(visited);
                }
                visited[visited.size] = current;
                if (!isdefined(var_5cb6b8a3)) {
                    var_5cb6b8a3 = [];
                } else if (!isarray(var_5cb6b8a3)) {
                    var_5cb6b8a3 = array(var_5cb6b8a3);
                }
                var_5cb6b8a3[var_5cb6b8a3.size] = current;
                current.var_ec6eb3b4 = var_ec6eb3b4;
                var_66715de8 += current.origin;
                if (is_true(current.var_f2c9c996)) {
                    var_f1cb9898 = 1;
                }
                foreach (var_cc103ea3 in current.var_9f62e935) {
                    if (!isinarray(visited, var_cc103ea3)) {
                        if (!isdefined(queue)) {
                            queue = [];
                        } else if (!isarray(queue)) {
                            queue = array(queue);
                        }
                        queue[queue.size] = var_cc103ea3;
                    }
                }
                current = array::pop(queue);
            }
            if (!var_f1cb9898) {
                var_dd7362ce = var_5cb6b8a3.size;
                var_352182ca = (var_66715de8[0] / var_dd7362ce, var_66715de8[1] / var_dd7362ce, var_66715de8[2] / var_dd7362ce);
                center_node = arraygetclosest(var_352182ca, var_5cb6b8a3);
                if (isdefined(center_node)) {
                    center_node.var_f2c9c996 = 1;
                }
            }
            if (!isdefined(level.var_3083f67c)) {
                level.var_3083f67c = [];
            } else if (!isarray(level.var_3083f67c)) {
                level.var_3083f67c = array(level.var_3083f67c);
            }
            level.var_3083f67c[var_ec6eb3b4] = var_5cb6b8a3;
            level.var_15b03e57++;
        }
        foreach (node in level.var_84508d4d) {
            var_c3a62093 = function_71979c65(undefined, node.origin, node.radius);
            foreach (var_d52c815e in var_c3a62093) {
                if (node !== var_d52c815e && !isinarray(node.var_9f62e935, var_d52c815e)) {
                    function_4e087dd9(node, var_d52c815e);
                }
            }
        }
    }
    level flag::set(#"hash_34f9aa6f075e21c0");
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x2 linked
// Checksum 0xc399a59, Offset: 0xc870
// Size: 0x46
function function_5e80cd88(entity) {
    return getdvarint(#"hash_7bf01784bf32af71", 0) > 0 || entity.awarenesslevelcurrent === "unaware";
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x2 linked
// Checksum 0xdc7c2585, Offset: 0xc8c0
// Size: 0x36
function function_ce4a1b1a() {
    entity = self;
    if (function_5e80cd88(entity)) {
        return "patrol_enabled";
    }
    return "patrol_disabled";
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x2 linked
// Checksum 0x44d9416c, Offset: 0xc900
// Size: 0x36
function function_b1fb6b18() {
    entity = self;
    if (entity function_e0487da2()) {
        return "on_spline";
    }
    return "off_spline";
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x2 linked
// Checksum 0x885111fb, Offset: 0xc940
// Size: 0x1b0
function function_1e31fc43() {
    entity = self;
    var_f08505dc = undefined;
    if (entity function_e0487da2()) {
        if (isdefined(entity.var_1c62b9e9)) {
            var_f08505dc = entity.var_1c62b9e9.origin;
        } else if (isdefined(entity.var_fe1e4b1b)) {
            var_f08505dc = entity.var_fe1e4b1b;
        }
        if (isdefined(var_f08505dc) && distance2d(entity.origin, var_f08505dc) < getdvarint(#"hash_594db65223ca8b1", 100)) {
            var_f08505dc = undefined;
        }
    } else {
        var_f08505dc = entity function_4794d6a3();
        if (isdefined(var_f08505dc)) {
            var_f08505dc = var_f08505dc.goalpos;
        }
    }
    var_56e5147f = 0;
    if (isdefined(var_f08505dc)) {
        var_618124de = var_f08505dc - entity.origin;
        var_56e5147f = vectortoangles(var_618124de)[1] - entity.angles[1];
        var_56e5147f = absangleclamp360(var_56e5147f);
    }
    /#
        record3dtext("<unknown string>" + var_56e5147f, entity.origin, (1, 0, 0), "<unknown string>", self);
    #/
    return var_56e5147f;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x2 linked
// Checksum 0xb824aa2f, Offset: 0xcaf8
// Size: 0x62
function function_f1b94403() {
    speed_override = getdvarfloat(#"hash_2612134f8fbf58aa", -1);
    return isdefined(self.var_808b43bf) ? self.var_808b43bf : speed_override < 0 ? 75 : speed_override;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x2 linked
// Checksum 0xe6c15b0e, Offset: 0xcb68
// Size: 0x36
function function_d5fd816f() {
    entity = self;
    return isdefined(entity.arm_state) ? entity.arm_state : "arm_lowered";
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 0, eflags: 0x2 linked
// Checksum 0x6ceadf27, Offset: 0xcba8
// Size: 0x36
function function_65f640e1() {
    entity = self;
    return isdefined(entity.var_907258b8) ? entity.var_907258b8 : "arm_lowered";
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x2 linked
// Checksum 0x42c2c069, Offset: 0xcbe8
// Size: 0x3da
function function_aeb3f99(entity) {
    var_47ef7b41 = getlevelframenumber();
    if (!isdefined(entity.var_ab1be4c1)) {
        entity.var_ab1be4c1 = var_47ef7b41;
    }
    if (entity.var_ab1be4c1 === var_47ef7b41) {
        return;
    }
    if (!isdefined(entity.var_7c926599)) {
        entity.var_7c926599 = -1;
    }
    if (!isdefined(entity.var_11f7f094)) {
        entity.var_11f7f094 = 75;
    }
    if (function_5e80cd88(entity)) {
        entity.var_11f7f094 = 75;
    } else if (isdefined(entity.favoriteenemy)) {
        dist_to_target = distance2d(entity.origin, entity.favoriteenemy.origin);
        var_53c3ee7d = (dist_to_target - 200) / 400;
        if (var_53c3ee7d < 0) {
            var_53c3ee7d = 0;
        } else if (var_53c3ee7d > 1) {
            var_53c3ee7d = 1;
        }
        entity.var_11f7f094 = lerpfloat(140, 232, var_53c3ee7d);
    }
    if (!isdefined(entity.var_808b43bf)) {
        entity.var_808b43bf = 75;
    }
    goal_info = entity function_4794d6a3();
    if (length2dsquared(entity getvelocity()) < sqr(getdvarfloat(#"hash_2b54a2648399e6b4", 50))) {
        entity.var_808b43bf = 75;
    } else {
        var_85a1d1a3 = 79;
        var_3c89f0ce = var_47ef7b41 - entity.var_ab1be4c1;
        if (entity.var_11f7f094 > entity.var_808b43bf) {
            entity.var_808b43bf = min(entity.var_11f7f094, entity.var_808b43bf + var_85a1d1a3 * var_3c89f0ce * float(function_60d95f53()) / 1000);
        } else {
            entity.var_808b43bf = max(entity.var_11f7f094, entity.var_808b43bf - var_85a1d1a3 * var_3c89f0ce * float(function_60d95f53()) / 1000);
        }
    }
    var_67328a14 = entity.var_808b43bf / 75;
    if (entity.var_808b43bf >= 140) {
        var_67328a14 *= 1.5;
    }
    /#
        var_67328a14 = getdvarfloat(#"hash_2612134f8fbf58aa", -1) < 0 ? var_67328a14 : getdvarfloat(#"hash_2612134f8fbf58aa", -1) / 75;
    #/
    entity function_d7033ff(var_67328a14);
    entity.var_ab1be4c1 = var_47ef7b41;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x6 linked
// Checksum 0xaad45702, Offset: 0xcfd0
// Size: 0x14a
function private evaluatehulkexposedarrivalanimations(entity, animations) {
    if (entity function_e0487da2()) {
        if (animations.size > 0) {
            var_5e259f59 = undefined;
            var_5e259f59 = animation_selector_table_evaluators::evaluator_findfirstvalidanimation(entity, animations, array(&function_50c1352d));
            /#
                if (isdefined(var_5e259f59)) {
                    record3dtext("<unknown string>" + function_9e72a96(var_5e259f59), entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
                } else {
                    record3dtext("<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
                }
            #/
            return var_5e259f59;
        }
    }
    return animation_selector_table_evaluators::evaluatehumanexposedarrivalanimations(entity, animations);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 2, eflags: 0x6 linked
// Checksum 0x4287a7b9, Offset: 0xd128
// Size: 0x1f6
function private function_50c1352d(entity, animation) {
    localdeltavector = getmovedelta(animation, 0, 1);
    animdistsq = lengthsquared(localdeltavector);
    goalpos = entity.var_fe1e4b1b;
    if (!isdefined(goalpos)) {
        goalinfo = entity function_4794d6a3();
        if (isdefined(goalinfo.goalpos)) {
            goalpos = goalinfo.goalpos;
        } else {
            return false;
        }
    }
    disttogoalsq = distance2dsquared(entity.origin, goalpos);
    var_7f97d358 = sqr(getdvarfloat(#"hash_2159f4b452b7fbc4", 180));
    if (disttogoalsq <= max(animdistsq, var_7f97d358)) {
        if (is_true(entity.ai.var_a5dabb8b)) {
            return true;
        }
        var_4da2186 = coordtransform(localdeltavector, entity.origin, entity.angles);
        if (distance2dsquared(goalpos, var_4da2186) < sqr(getdvarfloat(#"hash_2c71b2534ba9a73f", 150))) {
            return true;
        }
    }
    return false;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 5, eflags: 0x6 linked
// Checksum 0x38eff224, Offset: 0xd328
// Size: 0xb4
function private function_6a8dc4c6(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration orientmode("face current", mocompduration.angles[1]);
    mocompduration animmode("angle deltas", 0);
    mocompduration pathmode("dont move");
    mocompduration flag::set(#"turning");
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 5, eflags: 0x6 linked
// Checksum 0x14516e8d, Offset: 0xd3e8
// Size: 0x8c
function private function_d0f41980(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration animmode("angle deltas", 0);
    mocompduration pathmode("move delayed");
    mocompduration flag::clear(#"turning");
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x7a370e63, Offset: 0xd480
// Size: 0x64
function private function_38051331(entity) {
    return btapi_locomotionbehaviorcondition(entity) || is_true(entity.var_c42a0dd8) || is_true(entity.var_6b782990);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x71ea4bc1, Offset: 0xd4f0
// Size: 0x1e
function private function_66ad182b(entity) {
    entity.var_c42a0dd8 = 1;
    return true;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x81598048, Offset: 0xd518
// Size: 0x50
function private function_2026dbb8(entity) {
    entity.var_c42a0dd8 = 0;
    entity clearpath();
    entity setgoal(entity.origin);
    return true;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0xf09c7db0, Offset: 0xd570
// Size: 0x1e
function private function_a781d2df(entity) {
    entity.var_6b782990 = 1;
    return true;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x77b3d0a1, Offset: 0xd598
// Size: 0x1a
function private function_4a14402c(entity) {
    entity.var_6b782990 = 0;
    return true;
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x94de0ecd, Offset: 0xd5c0
// Size: 0x2c
function private function_47fa1325(entity) {
    entity clientfield::set("hs_dissolve_cf", 1);
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x96add577, Offset: 0xd5f8
// Size: 0xd0
function private function_5f1594b1(entity) {
    weakpoints = namespace_81245006::function_fab3ee3e(entity);
    foreach (weakpoint in weakpoints) {
        if (namespace_81245006::function_f29756fe(weakpoint) === 2) {
            namespace_81245006::function_6c64ebd3(weakpoint, 1);
        }
    }
}

// Namespace zm_ai_hulk/zm_ai_hulk
// Params 1, eflags: 0x6 linked
// Checksum 0x2d49f7fa, Offset: 0xd6d0
// Size: 0xd0
function private function_50f6999e(entity) {
    weakpoints = namespace_81245006::function_fab3ee3e(entity);
    foreach (weakpoint in weakpoints) {
        if (namespace_81245006::function_f29756fe(weakpoint) === 1) {
            namespace_81245006::function_6c64ebd3(weakpoint, 2);
        }
    }
}

/#

    // Namespace zm_ai_hulk/zm_ai_hulk
    // Params 0, eflags: 0x0
    // Checksum 0x880ac, Offset: 0xd7a8
    // Size: 0x364
    function function_95de83c0() {
        function_5ac4dc99(#"hash_fed990cce44eb15", "<unknown string>");
        function_cd140ee9(#"hash_fed990cce44eb15", &function_f895e0b0);
        util::add_debug_command("<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
        util::add_debug_command("<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
        util::add_debug_command("<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
        util::add_debug_command("<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
        util::add_debug_command("<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
        util::add_debug_command("<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
        util::add_debug_command("<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
        util::add_debug_command("<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
        util::add_debug_command("<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
        util::add_debug_command("<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
        util::add_debug_command("<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
        util::add_debug_command("<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
    }

    // Namespace zm_ai_hulk/zm_ai_hulk
    // Params 1, eflags: 0x0
    // Checksum 0x8a38622c, Offset: 0xdb18
    // Size: 0x324
    function function_f895e0b0(dvar) {
        switch (dvar.value) {
        case #"hash_3d3ff098d35dcb64":
            level thread function_3bd44cc0();
            break;
        case #"hash_5da8b927b9a8507c":
            function_1344db5f();
            break;
        case #"hash_6d4c9fdc42c82755":
            function_36420ae4();
            break;
        case #"hash_340aa006a74a3adc":
            array::run_all(getaiarchetypearray(#"hulk"), &function_231f9a1b, "<unknown string>");
            break;
        case #"hash_3abe11c8218dfbba":
            array::run_all(getaiarchetypearray(#"hulk"), &function_70c9d091);
            array::run_all(getaiarchetypearray(#"hulk"), &function_231f9a1b, "<unknown string>");
            break;
        case #"hash_659f8d8927268eb":
            array::thread_all(getaiarchetypearray(#"hulk"), &function_571ce384);
            break;
        case #"spawn_path_node":
            function_36bbd77f();
            break;
        case #"hash_3138f56d26a151b":
            function_444a834b();
            break;
        case #"hash_1915a9b7f9cf77e7":
            function_c70dab2a();
            break;
        case #"hash_2748b5bd1a5ac9d3":
            toggle_ignore_all();
            break;
        case #"hash_59119573fdc81de2":
            level.var_84508d4d = [];
            break;
        case #"hash_5f3b847c90ceefdd":
            function_91f14f2();
            break;
        case 0:
            return;
        }
        setdvar(#"hash_fed990cce44eb15", "<unknown string>");
    }

    // Namespace zm_ai_hulk/zm_ai_hulk
    // Params 0, eflags: 0x0
    // Checksum 0x5d2455f8, Offset: 0xde48
    // Size: 0x30
    function function_3bd44cc0() {
        level.var_ff169fcb = !is_true(level.var_ff169fcb);
    }

    // Namespace zm_ai_hulk/zm_ai_hulk
    // Params 0, eflags: 0x0
    // Checksum 0x4edfd8b4, Offset: 0xde80
    // Size: 0xdc
    function function_1344db5f() {
        var_72980fe1 = getaiarchetypearray(#"hulk");
        if (isdefined(var_72980fe1)) {
            foreach (hulk in var_72980fe1) {
                level thread function_eceecc98(hulk);
            }
            return;
        }
        level thread function_eceecc98();
    }

    // Namespace zm_ai_hulk/zm_ai_hulk
    // Params 0, eflags: 0x0
    // Checksum 0xd6d181fd, Offset: 0xdf68
    // Size: 0xc0
    function function_36420ae4() {
        var_72980fe1 = getaiarchetypearray(#"hulk");
        if (isdefined(var_72980fe1)) {
            foreach (hulk in var_72980fe1) {
                level thread function_8a252ee4(hulk);
            }
        }
    }

    // Namespace zm_ai_hulk/zm_ai_hulk
    // Params 0, eflags: 0x0
    // Checksum 0xf19ddd1f, Offset: 0xe030
    // Size: 0x3a
    function function_70c9d091() {
        self flag::clear(#"hash_3af854f842b1e003");
        self.var_d345ded2 = gettime() + 0;
    }

    // Namespace zm_ai_hulk/zm_ai_hulk
    // Params 0, eflags: 0x0
    // Checksum 0x35812e08, Offset: 0xe078
    // Size: 0x17c
    function function_571ce384() {
        self endon(#"death");
        closest_player = arraygetclosest(self.origin, function_a1ef346b());
        if (isdefined(closest_player)) {
            val::set(#"hash_7f77e221b1c11e1c", "<unknown string>", 0);
            while (true) {
                goal = isdefined(closest_player.last_valid_position) ? closest_player.last_valid_position : closest_player.origin;
                self setgoal(goal);
                result = self waittill(#"goal", #"bad_path");
                if (distancesquared(goal, self.origin) < sqr(100)) {
                    break;
                }
                waitframe(1);
            }
            val::reset(#"hash_7f77e221b1c11e1c", "<unknown string>");
        }
    }

    // Namespace zm_ai_hulk/zm_ai_hulk
    // Params 0, eflags: 0x0
    // Checksum 0xc018521d, Offset: 0xe200
    // Size: 0x190
    function function_c70dab2a() {
        if (!isdefined(level.var_71b09758)) {
            level.var_71b09758 = 0;
        }
        level.var_71b09758 = !level.var_71b09758;
        debug2dtext((100, 100, 0), "<unknown string>" + level.var_71b09758, (1, 1, 1), 1, (0, 0, 0), 1, 1, 20);
        var_72980fe1 = getaiarchetypearray(#"hulk");
        if (!isdefined(var_72980fe1)) {
            var_72980fe1 = [];
        }
        foreach (hulk in var_72980fe1) {
            if (level.var_71b09758) {
                hulk val::set(#"hash_2a37902ef6fc54d8", "<unknown string>", 0);
                continue;
            }
            hulk val::reset(#"hash_2a37902ef6fc54d8", "<unknown string>");
        }
    }

    // Namespace zm_ai_hulk/zm_ai_hulk
    // Params 0, eflags: 0x0
    // Checksum 0x9fbe0d5, Offset: 0xe398
    // Size: 0x190
    function toggle_ignore_all() {
        if (!isdefined(level.var_37acbf8e)) {
            level.var_37acbf8e = 0;
        }
        level.var_37acbf8e = !level.var_37acbf8e;
        debug2dtext((100, 100, 0), "<unknown string>" + level.var_37acbf8e, (1, 1, 1), 1, (0, 0, 0), 1, 1, 20);
        var_72980fe1 = getaiarchetypearray(#"hulk");
        if (!isdefined(var_72980fe1)) {
            var_72980fe1 = [];
        }
        foreach (hulk in var_72980fe1) {
            if (level.var_37acbf8e) {
                hulk val::set(#"devgui_ignoreall", "<unknown string>", 1);
                continue;
            }
            hulk val::reset(#"devgui_ignoreall", "<unknown string>");
        }
    }

    // Namespace zm_ai_hulk/zm_ai_hulk
    // Params 0, eflags: 0x0
    // Checksum 0x2e1f964, Offset: 0xe530
    // Size: 0xc8
    function function_91f14f2() {
        var_72980fe1 = getaiarchetypearray(#"hulk");
        if (!isdefined(var_72980fe1)) {
            var_72980fe1 = [];
        }
        foreach (hulk in var_72980fe1) {
            hulk function_967133dc();
        }
    }

    // Namespace zm_ai_hulk/zm_ai_hulk
    // Params 0, eflags: 0x0
    // Checksum 0xf11ff87f, Offset: 0xe600
    // Size: 0x30c
    function function_36bbd77f() {
        var_d610cbe2 = sqr(1000);
        player = getplayers()[0];
        player_vec = vectornormalize(anglestoforward(player getplayerangles()));
        player_eye = player.origin + (0, 0, player getplayerviewheight());
        node_radius = getdvarfloat(#"hash_316ed098dd9efb4c", 500);
        trace = bullettrace(player_eye, player_eye + player_vec * 1000, 0, player);
        if (trace[#"fraction"] < 1) {
            pos = trace[#"position"];
            node = function_5daee27d(pos, 0, node_radius);
            node.var_ec6eb3b4 = -2;
            if (isdefined(level.var_8e6f08f4)) {
                function_b2061e66(node, level.var_8e6f08f4);
            }
            level.var_8e6f08f4 = node;
            var_c41d43e4 = [];
            var_66715de8 = (0, 0, 0);
            foreach (node in level.var_84508d4d) {
                if (node.var_ec6eb3b4 === -2) {
                    var_c41d43e4[var_c41d43e4.size] = node;
                    node.var_f2c9c996 = 0;
                    var_66715de8 += node.origin;
                }
            }
            var_dd7362ce = var_c41d43e4.size;
            var_352182ca = (var_66715de8[0] / var_dd7362ce, var_66715de8[1] / var_dd7362ce, var_66715de8[2] / var_dd7362ce);
            center_node = arraygetclosest(var_352182ca, var_c41d43e4);
            if (isdefined(center_node)) {
                center_node.var_f2c9c996 = 1;
            }
            level.var_3083f67c[-2] = var_c41d43e4;
        }
    }

    // Namespace zm_ai_hulk/zm_ai_hulk
    // Params 0, eflags: 0x0
    // Checksum 0x53ffacdb, Offset: 0xe918
    // Size: 0xc8
    function function_444a834b() {
        if (!isdefined(level.var_7fecfd52)) {
            level.var_7fecfd52 = 0;
        }
        level.var_7fecfd52 = !level.var_7fecfd52;
        debug2dtext((100, 100, 0), "<unknown string>" + level.var_7fecfd52, (1, 1, 1), 1, (0, 0, 0), 1, 1, 20);
        if (level.var_7fecfd52) {
            level thread function_5ef33b74();
            return;
        }
        level notify(#"hash_5692acad38d50660");
    }

    // Namespace zm_ai_hulk/zm_ai_hulk
    // Params 0, eflags: 0x4
    // Checksum 0xec5ca12, Offset: 0xe9e8
    // Size: 0xc2e
    function private function_5ef33b74() {
        if (!isdefined(level.var_84508d4d)) {
            level.var_84508d4d = [];
        }
        self endon(#"hash_5692acad38d50660");
        while (true) {
            var_72980fe1 = getaiarchetypearray(#"hulk");
            if (!isdefined(var_72980fe1)) {
                var_72980fe1 = [];
            }
            var_2eb1950c = [];
            foreach (node in level.var_84508d4d) {
                if (var_72980fe1.size > 0) {
                    var_6c3b5a96 = arraygetclosest(node.origin, var_72980fe1);
                    node_radius = function_5e80cd88(var_6c3b5a96) ? getdvarint(#"hash_594db65223ca8b1", 100) : node.radius + getdvarint(#"hash_594db65223ca8b1", 100);
                    if (distancesquared(var_6c3b5a96.origin, node.origin) < sqr(node_radius)) {
                        if (!isdefined(var_2eb1950c)) {
                            var_2eb1950c = [];
                        } else if (!isarray(var_2eb1950c)) {
                            var_2eb1950c = array(var_2eb1950c);
                        }
                        if (!isinarray(var_2eb1950c, node)) {
                            var_2eb1950c[var_2eb1950c.size] = node;
                        }
                    }
                }
            }
            var_3a438ada = [];
            foreach (node in var_2eb1950c) {
                foreach (connected in node.var_9f62e935) {
                    if (!isdefined(var_3a438ada)) {
                        var_3a438ada = [];
                    } else if (!isarray(var_3a438ada)) {
                        var_3a438ada = array(var_3a438ada);
                    }
                    var_3a438ada[var_3a438ada.size] = connected;
                }
            }
            var_4e59fd84 = array::exclude(var_3a438ada, var_2eb1950c);
            foreach (node in var_4e59fd84) {
                recordsphere(node.origin, 15, (1, 1, 0));
                recordcircle(node.origin, node.radius, (1, 1, 0));
                if (node.delay > 0) {
                    record3dtext("<unknown string>" + node.delay, node.origin + (0, 0, 60), (0, 0, 0));
                }
                if (is_true(node.var_f2c9c996)) {
                    record3dtext("<unknown string>", node.origin + (0, 0, 80), (1, 1, 0));
                }
                record3dtext("<unknown string>" + node.var_ec6eb3b4, node.origin + (0, 0, -50), (0.1, 0.1, 0.1));
            }
            foreach (node in var_2eb1950c) {
                recordsphere(node.origin, 15, (0, 1, 0));
                recordcircle(node.origin, node.radius, (0, 1, 0));
                if (node.delay > 0) {
                    record3dtext("<unknown string>" + node.delay, node.origin + (0, 0, 60), (0, 0, 0));
                }
                if (is_true(node.var_f2c9c996)) {
                    record3dtext("<unknown string>", node.origin + (0, 0, 80), (1, 1, 0));
                }
                record3dtext("<unknown string>" + node.var_ec6eb3b4, node.origin + (0, 0, -50), (0.1, 0.1, 0.1));
            }
            foreach (node in level.var_84508d4d) {
                if (!isinarray(var_2eb1950c, node) && !isinarray(var_4e59fd84, node)) {
                    recordsphere(node.origin, 15, (1, 0, 0));
                    if (node.delay > 0) {
                        record3dtext("<unknown string>" + node.delay, node.origin + (0, 0, 60), (0, 0, 0));
                    }
                    if (is_true(node.var_f2c9c996)) {
                        record3dtext("<unknown string>", node.origin + (0, 0, 80), (1, 1, 0));
                    }
                    record3dtext("<unknown string>" + node.var_ec6eb3b4, node.origin + (0, 0, -50), (0.1, 0.1, 0.1));
                }
                foreach (connected in node.var_9f62e935) {
                    recordline(node.origin, connected.origin, (1, 0, 0));
                }
            }
            foreach (hulk in var_72980fe1) {
                recordcircle(hulk.origin, getdvarint(#"hash_594db65223ca8b1", 100), (1, 0.5, 0));
                if (isdefined(hulk.var_11f7f094) && isdefined(hulk.var_808b43bf)) {
                    record3dtext("<unknown string>" + hulk.var_808b43bf, hulk.origin, (0, 0, 1), "<unknown string>", hulk);
                    record3dtext("<unknown string>" + hulk.var_808b43bf, hulk.origin, (0, 0, 1), "<unknown string>", hulk);
                }
                if (isdefined(hulk.var_fe1e4b1b)) {
                    recordsphere(hulk.var_fe1e4b1b + (0, 0, 30), 10, (1, 0, 1));
                    record3dtext("<unknown string>", hulk.var_fe1e4b1b + (0, 0, 50), (1, 0, 1));
                }
                if (isdefined(hulk.favoriteenemy)) {
                    nodes = function_71979c65(hulk, hulk.favoriteenemy.origin);
                    foreach (node in nodes) {
                        recordsphere(node.origin + (0, 0, 80), 10, (1, 0.752941, 0.796078));
                        record3dtext("<unknown string>", node.origin + (0, 0, 100), (1, 0.752941, 0.796078));
                    }
                }
            }
            waitframe(1);
        }
    }

#/
