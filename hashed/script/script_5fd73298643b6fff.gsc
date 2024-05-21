// Atian COD Tools GSC CW decompiler test
#using scripts\zm\zm_ai_raz.gsc;
#using scripts\zm\ai\zm_ai_mimic.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using script_4ccfb58a9443a60b;
#using script_6cc18c65e4f06fd0;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm\zm_gold_util.gsc;
#using scripts\zm_common\zm.gsc;
#using script_1df36deb5752c05d;
#using script_113dd7f0ea2a1d4f;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm\zm_gold_vo.gsc;
#using script_46fe62930372dc4e;
#using script_1d777b787ec7d4bb;
#using scripts\zm_common\zm_round_logic.gsc;
#using script_64fee205fe8ada38;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_challenges.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using script_3411bb48d41bd3b;
#using scripts\zm_common\objective_manager.gsc;
#using scripts\zm_common\callbacks.gsc;
#using scripts\zm_common\zm_sq.gsc;
#using scripts\zm_common\zm_power.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\killstreaks\ultimate_turret_shared.gsc;
#using scripts\core_common\turret_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_b7a7e548;

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x2 linked
// Checksum 0xd4c20877, Offset: 0x748
// Size: 0x73c
function init() {
    clientfield::register("world", "" + #"hash_1c7fca29ab341f83", 16000, 3, "int");
    clientfield::register("scriptmover", "" + #"hash_2800af14ecd6c20c", 16000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_7a2578157328cf2b", 16000, getminbitcountfornum(3), "int");
    clientfield::register("scriptmover", "" + #"hash_112d67305f861fe", 16000, 1, "int");
    clientfield::register("actor", "" + #"hash_ebf3c511bdc3a01", 16000, 1, "counter");
    clientfield::register("world", "" + #"hash_d36f73b86a1e0b4", 16000, 3, "int");
    clientfield::register("scriptmover", "" + #"hash_3ce728c2f6b351eb", 16000, 1, "int");
    clientfield::register("toplayer", "" + #"hash_441fa29cf6f39e0a", 16000, 1, "counter");
    level.var_98232a38 = 0;
    level.var_9614e521 = 20;
    var_877c5889 = struct::get_array("assault_round_spawn_origin", "targetname");
    a_s_rewards = struct::get_array(#"hash_6cf46e043b5ec9e");
    foreach (control_point in level.var_cc43b632) {
        foreach (var_4f9502db in var_877c5889) {
            if (control_point.script_int === var_4f9502db.script_int) {
                if (var_4f9502db.script_noteworthy === "objective_pos") {
                    control_point.var_504f341c = var_4f9502db;
                }
                if (!isdefined(control_point.var_94cc32a1)) {
                    control_point.var_94cc32a1 = [];
                } else if (!isarray(control_point.var_94cc32a1)) {
                    control_point.var_94cc32a1 = array(control_point.var_94cc32a1);
                }
                control_point.var_94cc32a1[control_point.var_94cc32a1.size] = var_4f9502db;
                level thread function_a1728f1d(var_4f9502db);
            }
        }
        foreach (s_reward in a_s_rewards) {
            if (control_point.script_int === s_reward.script_int && isdefined(s_reward.script_noteworthy)) {
                if (!isdefined(control_point.a_s_rewards[s_reward.script_noteworthy])) {
                    control_point.a_s_rewards[s_reward.script_noteworthy] = [];
                } else if (!isarray(control_point.a_s_rewards[s_reward.script_noteworthy])) {
                    control_point.a_s_rewards[s_reward.script_noteworthy] = array(control_point.a_s_rewards[s_reward.script_noteworthy]);
                }
                control_point.a_s_rewards[s_reward.script_noteworthy][control_point.a_s_rewards[s_reward.script_noteworthy].size] = s_reward;
            }
        }
    }
    vehicle::add_spawn_function("vh_assault_round_turret", &function_29701d79);
    foreach (mdl_support_machine in getentarray("mdl_support_machine", "targetname")) {
        foreach (var_32f76af8 in level.var_cc43b632) {
            if (var_32f76af8.script_int == mdl_support_machine.script_int) {
                function_ba9d5cad(mdl_support_machine, var_32f76af8);
                break;
            }
        }
    }
    zm::register_actor_damage_callback(&function_af5c9bef);
    level thread function_c1976ea5();
    /#
        level thread function_cd7a3de4();
        level thread function_999d2162();
    #/
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x0
// Checksum 0xb80ae8da, Offset: 0xe90
// Size: 0x1a4
function function_64507142() {
    a_str_scenes = [#"aib_vign_cust_frbse_orda_siege", #"aib_vign_cust_frbse_orda_scorched", #"aib_vign_cust_frbse_orda_rocky"];
    a_str_shots = ["dog_launcher_pos_2", "dog_launcher_pos_3", "swarm_pos_2", "swarm_pos_3"];
    foreach (str_scene in a_str_scenes) {
        foreach (str_shot in a_str_shots) {
            scene::add_scene_func(str_scene, &function_824df7cd, str_shot);
        }
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x40c48792, Offset: 0x1040
// Size: 0xe4
function function_824df7cd(a_ents) {
    if (level.round_number < 50) {
        var_a6e592f0 = a_ents[#"orda"];
        str_shot = var_a6e592f0._scene_object._str_shot;
        if (isdefined(str_shot)) {
            level flag::increment(#"hash_39c8ad7b5b87265b");
            while (isdefined(var_a6e592f0) && var_a6e592f0._scene_object._str_shot === str_shot) {
                waitframe(1);
            }
            wait(randomfloatrange(1, 2));
            level flag::decrement(#"hash_39c8ad7b5b87265b");
        }
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 2, eflags: 0x2 linked
// Checksum 0xef277ec, Offset: 0x1130
// Size: 0x55c
function function_ba9d5cad(mdl_support_machine, var_32f76af8) {
    var_32f76af8.mdl_support_machine = mdl_support_machine;
    mdl_support_machine.var_32f76af8 = var_32f76af8;
    mdl_support_machine function_619a5c20();
    mdl_support_machine clientfield::set("set_compass_icon", 1);
    n_cost = 10000;
    var_d9726d35 = #"item_survival_scorestreak_chopper_gunner";
    var_67492fb3[#"paid"] = #"hash_6c89b2d32b37683e";
    var_67492fb3[#"free"] = #"hash_773e2e913ad39499";
    var_67492fb3[#"disabled"] = #"hash_540b4d40fb980c23";
    var_67492fb3[#"offline"] = #"hash_3a03064908d4670a";
    var_401b92e8[#"enabled"] = #"hash_533ef067c652da85";
    var_401b92e8[#"disabled"] = #"hash_4463ac6c3333aab1";
    if (isdefined(var_32f76af8.script_int)) {
        switch (var_32f76af8.script_int) {
        case 1:
            n_cost = 8000;
            var_d9726d35 = #"item_survival_scorestreak_remote_missile";
            var_67492fb3[#"paid"] = #"hash_2c5735631bd4931d";
            var_67492fb3[#"free"] = #"hash_2330f006ef3375c4";
            var_67492fb3[#"disabled"] = #"hash_375730bc189bc0fe";
            var_67492fb3[#"offline"] = #"hash_62e5dd825a7e27a9";
            var_401b92e8[#"enabled"] = #"hash_784a2a97a6fa2314";
            var_401b92e8[#"disabled"] = #"hash_3bea81f711768224";
            break;
        case 2:
            n_cost = 8000;
            var_d9726d35 = #"item_survival_scorestreak_napalm_strike";
            var_67492fb3[#"paid"] = #"hash_cd19aecd51e3a3";
            var_67492fb3[#"free"] = #"hash_23ae9785db2641ea";
            var_67492fb3[#"disabled"] = #"hash_6ff5d92829d2e67c";
            var_67492fb3[#"offline"] = #"hash_7ab5668bd73918e3";
            var_401b92e8[#"enabled"] = #"hash_5254af1f18c08d54";
            var_401b92e8[#"disabled"] = #"hash_487cdc7f3a038e64";
            break;
        case 3:
            n_cost = 8000;
            var_d9726d35 = #"item_survival_scorestreak_artillery_strike";
            var_67492fb3[#"paid"] = #"hash_caab2b55f81cfec";
            var_67492fb3[#"free"] = #"hash_7b3b33c45308f6b7";
            var_67492fb3[#"disabled"] = #"hash_1de38091008b08a9";
            var_67492fb3[#"offline"] = #"hash_5cbcadf12f4e9684";
            var_401b92e8[#"enabled"] = #"hash_739fbc54f35c84b5";
            var_401b92e8[#"disabled"] = #"hash_472bec3bf73c1261";
            break;
        }
    }
    mdl_support_machine.n_cost = n_cost;
    mdl_support_machine.var_d9726d35 = var_d9726d35;
    mdl_support_machine.var_67492fb3 = var_67492fb3;
    mdl_support_machine.var_401b92e8 = var_401b92e8;
    mdl_support_machine.var_bec42bc3 = util::spawn_model(#"tag_origin", mdl_support_machine.origin, mdl_support_machine.angles);
    if (isdefined(mdl_support_machine.target)) {
        var_3910afa0 = struct::get(mdl_support_machine.target);
        mdl_support_machine.var_f44c98f6 = var_3910afa0.origin;
    }
    function_947330e6(var_32f76af8, #"power_off");
    mdl_support_machine zm_unitrigger::create(&function_8ca02d60, 100, &function_ab5e8b7e);
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x285c0eb6, Offset: 0x1698
// Size: 0x1e8
function function_8ca02d60(e_player) {
    if (!zm_utility::is_player_valid(e_player)) {
        return false;
    }
    e_player globallogic::function_d96c031e();
    mdl_support_machine = self.stub.related_parent;
    var_67492fb3 = mdl_support_machine.var_67492fb3;
    n_cost = 0;
    str_hint = #"zombie/need_power";
    if (mdl_support_machine flag::get(#"power_on")) {
        if (mdl_support_machine flag::get(#"destroyed")) {
            str_hint = var_67492fb3[#"offline"];
        } else if (mdl_support_machine flag::get(#"enabled")) {
            if (mdl_support_machine flag::get(#"hash_61fc21aabb98a33a")) {
                n_cost = mdl_support_machine.n_cost;
                str_hint = var_67492fb3[#"paid"];
            } else {
                str_hint = var_67492fb3[#"free"];
            }
        } else {
            str_hint = var_67492fb3[#"disabled"];
        }
    }
    self sethintstringforplayer(e_player, str_hint, n_cost);
    if (n_cost > 0 && !e_player zm_score::can_player_purchase(n_cost)) {
        e_player globallogic::function_d1924f29(#"hash_6e3ae7967dc5d414");
    }
    return true;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x2 linked
// Checksum 0xbf673fbb, Offset: 0x1888
// Size: 0x240
function function_ab5e8b7e() {
    level endon(#"end_game");
    mdl_support_machine = self.stub.related_parent;
    n_cost = mdl_support_machine.n_cost;
    var_d9726d35 = mdl_support_machine.var_d9726d35;
    while (true) {
        s_waitresult = self waittill(#"trigger");
        e_player = s_waitresult.activator;
        if (zm_utility::is_player_valid(e_player)) {
            str_sound = "no_purchase";
            if (mdl_support_machine flag::get(#"enabled") && (!mdl_support_machine flag::get(#"hash_61fc21aabb98a33a") || e_player zm_score::can_player_purchase(n_cost)) && !e_player killstreaks::has_killstreak(var_d9726d35)) {
                if (mdl_support_machine flag::get(#"hash_61fc21aabb98a33a")) {
                    e_player thread zm_score::minus_to_player_score(n_cost);
                }
                e_player thread namespace_1cc7b406::give_item(var_d9726d35);
                e_player notify(#"hash_360ecb13f668ae0f", {#killstreak:var_d9726d35});
                str_sound = "purchase";
                e_player playrumbleonentity(#"zm_interact_rumble");
                mdl_support_machine flag::set(#"hash_61fc21aabb98a33a");
            }
            zm_utility::play_sound_at_pos(str_sound, e_player.origin);
        }
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 2, eflags: 0x2 linked
// Checksum 0x44b0c591, Offset: 0x1ad0
// Size: 0x27c
function function_947330e6(var_32f76af8, str_state = #"power_off") {
    mdl_support_machine = var_32f76af8.mdl_support_machine;
    if (!isdefined(mdl_support_machine) || !isdefined(mdl_support_machine.var_bec42bc3)) {
        return;
    }
    mdl_support_machine flag::clear(#"destroyed");
    mdl_support_machine flag::clear(#"power_on");
    mdl_support_machine flag::clear(#"enabled");
    if (str_state == #"power_off") {
        mdl_support_machine.var_bec42bc3 setmodel(#"tag_origin");
        mdl_support_machine.var_bec42bc3 stoploopsound();
        return;
    }
    mdl_support_machine flag::set(#"power_on");
    var_401b92e8 = mdl_support_machine.var_401b92e8;
    var_5fa67dc9 = var_401b92e8[#"disabled"];
    mdl_support_machine.var_bec42bc3 stoploopsound();
    if (str_state == #"enabled") {
        mdl_support_machine flag::set(#"enabled");
        var_5fa67dc9 = var_401b92e8[#"enabled"];
        mdl_support_machine.var_bec42bc3 playloopsound(#"hash_2abb8dfe1cd5f02e");
    }
    mdl_support_machine.var_bec42bc3 setmodel(var_5fa67dc9);
    if (str_state == #"destroyed") {
        mdl_support_machine flag::set(#"destroyed");
        mdl_support_machine.var_bec42bc3 stoploopsound();
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 2, eflags: 0x2 linked
// Checksum 0xc4c8c263, Offset: 0x1d58
// Size: 0x2c4
function function_83285a17(var_32f76af8, var_f070c3ca = 1) {
    mdl_support_machine = var_32f76af8.mdl_support_machine;
    if (var_f070c3ca) {
        var_32f76af8 flag::clear(#"hash_2e9b9b15410a8c6a");
        if (!is_true(mdl_support_machine.is_active)) {
            slots = namespace_f7b3ed9::function_bdb2b85b(mdl_support_machine.var_f44c98f6, mdl_support_machine.angles, 50, 4, mdl_support_machine.script_string, 32);
            if (isdefined(slots) && slots.size > 0) {
                mdl_support_machine val::set(#"support_machine", "takedamage", 1);
                mdl_support_machine val::set(#"support_machine", "allowdeath", 0);
                mdl_support_machine.is_active = 1;
                mdl_support_machine.var_b79a8ac7 = {#var_f019ea1a:1024, #slots:slots};
                level.attackables[level.attackables.size] = mdl_support_machine;
                level thread function_7942f4b8(var_32f76af8, mdl_support_machine);
            }
        }
        return;
    }
    if (is_true(mdl_support_machine.is_active)) {
        mdl_support_machine notify(#"hash_3ff994bb36bd6fa0");
        mdl_support_machine flag::clear(#"hash_4677a94e0a997ed7");
        zm_sq::objective_complete(#"hash_5ebd88b995539e35");
        zm_sq::objective_complete(#"hash_8602209567f541c", mdl_support_machine);
        zm_sq::objective_complete(#"hash_3e7926c5aefe4406", mdl_support_machine);
        mdl_support_machine.is_active = 0;
        namespace_85745671::function_b70e2a37(mdl_support_machine);
        mdl_support_machine val::reset(#"support_machine", "takedamage");
        mdl_support_machine val::reset(#"support_machine", "allowdeath");
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 2, eflags: 0x2 linked
// Checksum 0xa17953d, Offset: 0x2028
// Size: 0x384
function function_7942f4b8(var_32f76af8, mdl_support_machine) {
    level endon(#"end_game", #"hash_6bd174fa0d5006f4", #"hash_43393d6e22873fc4");
    mdl_support_machine endon(#"death");
    zm_sq::function_266d66eb(#"hash_13c74190a9e88f6e", mdl_support_machine, undefined, undefined, #"hash_8602209567f541c", undefined, &zm_gold_util::function_13ebb331, "vol_player_in_firebase");
    zm_sq::function_3029d343(#"hash_8602209567f541c", mdl_support_machine);
    zm_sq::function_266d66eb(#"hash_35ca48ad08bd82a2", mdl_support_machine, undefined, undefined, #"hash_3e7926c5aefe4406", undefined, &zm_gold_util::function_13ebb331, "vol_player_in_firebase");
    level.var_f0fc72bc = 600;
    while (true) {
        s_waitresult = mdl_support_machine waittill(#"damage");
        e_attacker = s_waitresult.attacker;
        if (!isplayer(e_attacker) && !is_true(e_attacker.var_d23661ba)) {
            level.var_f0fc72bc -= s_waitresult.amount;
            playsoundatposition(#"hash_2b4962dfa0b1e01", mdl_support_machine.origin);
            if (level.var_f0fc72bc <= 0) {
                break;
            }
            mdl_support_machine thread namespace_f7b3ed9::function_49401276(mdl_support_machine);
            n_progress = 1 - level.var_f0fc72bc / 600;
            if (n_progress < 0.025) {
                n_progress = 0.025;
            } else if (n_progress > 1) {
                n_progress = 1;
            }
            foreach (e_player in getplayers()) {
                if (level.var_7dbadc8c zm_control_point_hud::is_open(e_player)) {
                    level.var_7dbadc8c zm_control_point_hud::function_338d48a0(e_player, 1);
                    level.var_7dbadc8c zm_control_point_hud::function_a04ff29a(e_player, n_progress);
                }
            }
        }
    }
    function_900f82bd(var_32f76af8);
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x1a89608e, Offset: 0x23b8
// Size: 0x1f8
function function_900f82bd(var_32f76af8) {
    var_32f76af8 flag::set(#"hash_2e9b9b15410a8c6a");
    function_947330e6(var_32f76af8, #"destroyed");
    function_83285a17(var_32f76af8, 0);
    foreach (var_1280faf3 in var_32f76af8.var_2c666f3f) {
        function_d5dcd79c(var_1280faf3);
    }
    var_32f76af8 namespace_f7b3ed9::function_1ef4bcd6(1);
    var_32f76af8 thread namespace_f7b3ed9::function_bc369205(1);
    a_ai_zombies = zombie_utility::get_round_enemy_array();
    a_ai_zombies = arraysortclosest(a_ai_zombies, var_32f76af8.origin);
    foreach (ai_zombie in a_ai_zombies) {
        if (ai_zombie flag::get(#"hash_61a5965aa8d6619b")) {
            namespace_85745671::function_744beb04(ai_zombie);
        }
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 13, eflags: 0x2 linked
// Checksum 0x30da0524, Offset: 0x25b8
// Size: 0x112
function function_af5c9bef(inflictor, attacker, damage, *flags, *meansofdeath, *weapon, *var_fd90b0bb, *vpoint, *vdir, *shitloc, *psoffsettime, *boneindex, *surfacetype) {
    if (is_true(psoffsettime.var_d23661ba) || is_true(boneindex.var_d23661ba)) {
        n_multiplier = 1 + 0.02 * (level.round_number - 1);
        n_multiplier = min(n_multiplier, 3);
        surfacetype = int(surfacetype * n_multiplier);
    }
    return surfacetype;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x2 linked
// Checksum 0x6cce2b64, Offset: 0x26d8
// Size: 0x39e
function function_29701d79() {
    self endon(#"death");
    self.maxhealth = 100;
    self.health = self.maxhealth;
    self val::set(#"hash_60b0bfd547d1c322", "takedamage", 0);
    self val::set(#"hash_60b0bfd547d1c322", "allowdeath", 0);
    self.controlled = 0;
    self.treat_owner_damage_as_friendly_fire = 1;
    self.ignore_team_kills = 1;
    self.deal_no_crush_damage = 1;
    self.turret = self;
    self.dontfreeme = 1;
    self.team = #"allies";
    self setteam(#"allies");
    self turret::set_team(#"allies", 0);
    self turret::set_torso_targetting(0);
    self turret::set_target_leading(0);
    self.use_non_teambased_enemy_selection = 1;
    self.waittill_turret_on_target_delay = 0.25;
    self.ignore_vehicle_underneath_splash_scalar = 1;
    self.var_63d65a8d = "arc";
    self.var_7eb3ebd5 = [];
    self.var_aac73d6c = 1;
    self.maxsightdistsqrd = 1;
    self.turret_enabled = 1;
    target_set(self);
    self unlink();
    self ultimate_turret::function_bc7568f1();
    self util::make_sentient();
    self thread ultimate_turret::turret_laser_watch();
    self thread ultimate_turret::setup_death_watch_for_new_targets();
    function_d5dcd79c(self);
    self.var_d23661ba = 1;
    while (!isdefined(level.var_cc43b632)) {
        waitframe(1);
    }
    foreach (var_32f76af8 in level.var_cc43b632) {
        if (var_32f76af8.script_int == self.script_int) {
            if (!isdefined(var_32f76af8.var_2c666f3f)) {
                var_32f76af8.var_2c666f3f = [];
            } else if (!isarray(var_32f76af8.var_2c666f3f)) {
                var_32f76af8.var_2c666f3f = array(var_32f76af8.var_2c666f3f);
            }
            var_32f76af8.var_2c666f3f[var_32f76af8.var_2c666f3f.size] = self;
            self.var_32f76af8 = var_32f76af8;
        }
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0xa03baa7a, Offset: 0x2a80
// Size: 0x64
function function_a30c9b47(var_1280faf3) {
    if (!isdefined(var_1280faf3)) {
        return;
    }
    var_1280faf3 playloopsound(#"hash_69240c6db92da5bf", 0.25);
    var_1280faf3 thread [[ level.var_a3ec798a ]]();
    var_1280faf3 thread ultimate_turret::function_fefefcc4();
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0xae4c6792, Offset: 0x2af0
// Size: 0x7c
function function_d5dcd79c(var_1280faf3) {
    if (!isdefined(var_1280faf3)) {
        return;
    }
    var_1280faf3 notify(#"end_turret_scanning");
    var_1280faf3 turretsettargetangles(0, (0, 0, 0));
    var_1280faf3 setturretspinning(0);
    var_1280faf3 stoploopsound(0.5);
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0xa386445b, Offset: 0x2b78
// Size: 0x278
function function_a1728f1d(var_f57c3dea) {
    while (true) {
        s_result = positionquery_source_navigation(var_f57c3dea.origin, 0, 100, 128 / 2, 16);
        if (isarray(s_result.data) && s_result.data.size > 0) {
            break;
        }
        waitframe(1);
    }
    var_2eb61c8a = s_result.data;
    var_2eb61c8a = array::slice(var_2eb61c8a, 0, 10 - 1);
    var_f57c3dea.var_2eb61c8a = var_2eb61c8a;
    var_f57c3dea.var_58d1b08a = arraycopy(var_f57c3dea.var_2eb61c8a);
    if (var_f57c3dea.var_58d1b08a.size > 0) {
        var_f57c3dea flag::set(#"hash_3b82fec1d3d5a8fb");
    }
    /#
        if (getdvarint(#"hash_90aec9f47685abc", 0) >= 2) {
            if (!var_f57c3dea flag::get(#"hash_3b82fec1d3d5a8fb")) {
                level flag::set(#"hash_5663e189d68932fc");
            }
            level thread function_db20f3c1(var_f57c3dea);
        }
    #/
    if (isdefined(var_f57c3dea.target)) {
        foreach (s_goal in struct::get_array(var_f57c3dea.target)) {
            level thread function_8903caa4(s_goal);
        }
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0xc9a8cbb6, Offset: 0x2df8
// Size: 0x288
function function_8903caa4(s_goal) {
    if (s_goal flag::get(#"hash_62ff0129be3781c6")) {
        return;
    }
    s_goal flag::set(#"hash_62ff0129be3781c6");
    /#
        if (getdvarint(#"hash_90aec9f47685abc", 0) >= 2) {
            level thread function_73a35d2a(s_goal);
        }
    #/
    n_radius = float(s_goal.radius);
    while (true) {
        s_result = positionquery_source_navigation(s_goal.origin, 0, n_radius, 128 / 2, 16);
        if (isarray(s_result.data) && s_result.data.size > 0) {
            break;
        }
        waitframe(1);
    }
    var_6cc15b58 = s_result.data;
    var_6cc15b58 = array::slice(var_6cc15b58, 0, 10 - 1);
    s_goal.var_6cc15b58 = var_6cc15b58;
    s_goal.var_9c19b6ff = arraycopy(s_goal.var_6cc15b58);
    s_goal flag::set(#"hash_60a48a427f6cbf61");
    if (isdefined(s_goal.target)) {
        foreach (var_492f8550 in struct::get_array(s_goal.target)) {
            level thread function_8903caa4(var_492f8550);
        }
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x2 linked
// Checksum 0x1886e8c, Offset: 0x3088
// Size: 0x184
function function_c1976ea5() {
    /#
        if (getdvarint(#"hash_90aec9f47685abc", 0)) {
            return;
        }
    #/
    self notify("7d6ebb9289a84c5d");
    self endon("7d6ebb9289a84c5d");
    level endon(#"end_game", #"hash_4d8079f4972e08d");
    level flag::wait_till(#"pap_quest_completed");
    n_current_round = level.round_number;
    if (n_current_round < 20) {
        for (var_586ab1ac = n_current_round + randomintrangeinclusive(5, 7); var_586ab1ac > n_current_round && var_586ab1ac + 4 >= 20; var_586ab1ac--) {
        }
        if (var_586ab1ac > n_current_round) {
            level.var_586ab1ac = var_586ab1ac;
            /#
                iprintlnbold("hulking_summoner_kia_zm" + var_586ab1ac);
                println("hulking_summoner_kia_zm" + var_586ab1ac);
            #/
        }
    }
    callback::function_74872db6(&function_36ba4b03);
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x2 linked
// Checksum 0x3df6ab07, Offset: 0x3218
// Size: 0x14c
function function_b9e3761a() {
    /#
        if (getdvarint(#"hash_90aec9f47685abc", 0) >= 2) {
            return;
        }
    #/
    if (level.var_98232a38 >= 2) {
        level.var_df4c24cd = level.round_number + randomintrangeinclusive(10, 11);
    }
    callback::function_74872db6(&function_36ba4b03);
    /#
        if (level.var_98232a38 < 2) {
            iprintlnbold("<unknown string>" + level.var_9614e521);
            println("<unknown string>" + level.var_9614e521);
            return;
        }
        iprintlnbold("<unknown string>" + level.var_df4c24cd);
        println("<unknown string>" + level.var_df4c24cd);
    #/
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x6da03519, Offset: 0x3370
// Size: 0x48c
function function_36ba4b03(var_794c9d5f) {
    self notify("8709ae94bce0e67");
    self endon("8709ae94bce0e67");
    level endon(#"end_game");
    if (level flag::get(#"hash_7bbbf2ad970ee0c2") || level flag::get(#"hash_1c70d74ceb5e9aa2") || level flag::get("rbz_exfil_beacon_active") || level flag::get(#"hash_793eafdc24e3f0eb") || level flag::get(#"hash_49e515cdcf4bb8db") || zm_utility::function_c4b020f8()) {
        return;
    }
    var_6a8fe7bc = array::randomize(level.var_cc43b632);
    var_f95c648c = undefined;
    if (isdefined(var_794c9d5f)) {
        foreach (var_32f76af8 in var_6a8fe7bc) {
            if (var_32f76af8.script_int === var_794c9d5f) {
                var_32f76af8.var_269ad176 = 2;
                var_f95c648c = var_32f76af8;
                level.var_df4c24cd = level.round_number;
                break;
            }
        }
    } else {
        arrayremovevalue(var_6a8fe7bc, level.var_8768cd90);
        foreach (var_32f76af8 in var_6a8fe7bc) {
            if (var_32f76af8.var_269ad176 === 2) {
                var_f95c648c = var_32f76af8;
                break;
            }
        }
        if (!isdefined(var_f95c648c) && level.var_8768cd90.var_269ad176 === 2) {
            var_f95c648c = level.var_8768cd90;
        }
    }
    if (isdefined(var_f95c648c)) {
        n_round = level.round_number;
        b_start = 0;
        if (isdefined(level.var_df4c24cd) && n_round >= level.var_df4c24cd) {
            b_start = 1;
        } else if (!level flag::get(#"hash_841b3bc69a79d1a") && isdefined(level.var_9614e521) && n_round >= level.var_9614e521) {
            b_start = 1;
            level flag::set(#"hash_841b3bc69a79d1a");
            level flag::set(#"hash_7c3afd7757c9eea6");
            if (level.var_98232a38 < 1) {
                level.var_98232a38 = 1;
            }
        } else if (!level flag::get(#"hash_7c3afd7757c9eea6") && isdefined(level.var_586ab1ac) && n_round >= level.var_586ab1ac) {
            b_start = 1;
            level flag::set(#"hash_7c3afd7757c9eea6");
        }
        if (b_start) {
            callback::function_50fdac80(&function_36ba4b03);
            level thread function_d08cba34(var_f95c648c);
        }
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0xee5653d, Offset: 0x3808
// Size: 0x92c
function function_d08cba34(var_32f76af8) {
    level endon(#"hash_6bd174fa0d5006f4");
    level.var_c1369554 = var_32f76af8;
    level.var_8768cd90 = var_32f76af8;
    var_32f76af8.var_2b239c6f = 0;
    level flag::set(#"hash_7752d012501cd222");
    level flag::set(#"hash_5dce120a8e013b48");
    level flag::clear(#"hash_8590b4c8eec6592");
    level flag::clear(#"hash_6b46a8438582259d");
    callback::on_round_end(&function_b484fb2f);
    var_32f76af8 flag::clear("defend_succeed");
    level.disable_nuke_delay_spawning = 1;
    level thread namespace_f7b3ed9::function_640d77f3(1);
    zm_sq::objective_complete(#"hash_2b663a5dd7beb565");
    foreach (e_player in getplayers()) {
        e_player luinotifyevent(#"hash_5159e35a62fb7083", 3, 0, 11, level.var_b48509f9);
    }
    playsoundatposition(#"hash_56dca21276e6d29c", (0, 0, 0));
    level clientfield::set("" + #"hash_d36f73b86a1e0b4", var_32f76af8.script_int);
    level notify(#"hash_42bec14e3414d907");
    foreach (var_1280faf3 in var_32f76af8.var_2c666f3f) {
        function_a30c9b47(var_1280faf3);
    }
    function_947330e6(var_32f76af8, #"enabled");
    function_83285a17(var_32f76af8);
    if (!is_true(var_32f76af8.var_e0885545)) {
        var_32f76af8 thread zm_gold_vo::function_43655604();
        var_32f76af8.var_e0885545 = 1;
    }
    zm_sq::function_266d66eb(#"hash_2f0bfb7343582e3c", undefined, undefined, #"hash_3cf8af465fd1c8f9", #"hash_589c4a67b38e079d");
    foreach (var_3e7e5948 in struct::get_array(#"fasttravel_trigger")) {
        if (isdefined(var_3e7e5948) && var_3e7e5948.script_string === #"firebase") {
            zm_sq::function_266d66eb(#"hash_68f0c1062d24257e", var_3e7e5948, undefined, undefined, #"hash_86f91ca1e18f21f", undefined, &zm_gold_util::function_13ebb331, "vol_player_in_village");
            break;
        }
    }
    level thread objective_manager::start_timer(45);
    level thread function_a6a0b22f(var_32f76af8);
    wait(39);
    n_round = level.round_number;
    n_players = function_a1ef346b().size;
    /#
        if (getdvarint(#"hash_69ea990dbca613ac", 0)) {
            n_players = getdvarint(#"hash_69ea990dbca613ac", 0);
        }
    #/
    if (n_players <= 0) {
        n_players = 1;
    }
    var_32f76af8.var_c36f1cec = function_29ee49d2(var_32f76af8.var_94cc32a1, n_round, n_players);
    level thread function_3de96b64(var_32f76af8);
    wait(6);
    level clientfield::set("" + #"hash_d36f73b86a1e0b4", 0);
    level notify(#"hash_2d534d7f86d6165");
    level notify(#"hash_64ee73d41ad2608f");
    level.no_powerups = 1;
    level thread function_430a4367(var_32f76af8);
    level thread namespace_4ce4e65e::function_dd9efc4();
    zm_sq::objective_complete(#"hash_589c4a67b38e079d");
    zm_sq::function_266d66eb(#"hash_2f0bfb7343582e3c", undefined, undefined, #"hash_3b8da805b8e00b60", #"hash_5ebd88b995539e35");
    foreach (e_player in getplayers()) {
        if (!level.var_7dbadc8c zm_control_point_hud::is_open(e_player)) {
            level.var_7dbadc8c zm_control_point_hud::open(e_player, 1);
        }
        level.var_7dbadc8c zm_control_point_hud::function_751f7270(e_player, 0);
        level.var_7dbadc8c zm_control_point_hud::function_a95c34f3(e_player, 0);
        level.var_7dbadc8c zm_control_point_hud::function_338d48a0(e_player, 1);
        level.var_7dbadc8c zm_control_point_hud::function_a04ff29a(e_player, 0.025);
    }
    var_2a69785e = level.var_98232a38 >= 2 || level flag::get(#"hash_5a39afab1926d30d");
    if (!var_2a69785e) {
        level flag::clear(#"hash_7a6662c944c5f275");
    } else {
        level flag::set(#"hash_7a6662c944c5f275");
        level flag::set(#"hold_round_end");
        level thread function_9837b56d();
        level thread function_2ba1b59e(var_32f76af8);
    }
    level flag::set(#"hash_7c3afd7757c9eea6");
    level thread function_de620e56(var_32f76af8, n_round, n_players, var_2a69785e);
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x1cf327c7, Offset: 0x4140
// Size: 0x384
function function_a6a0b22f(var_32f76af8) {
    level endon(#"end_game", #"hash_2d534d7f86d6165", #"hash_6bd174fa0d5006f4", #"hash_43393d6e22873fc4");
    level zm_vo::function_d6f8bbd9(#"hash_6415b2c1f7a4918f", 2, function_a1ef346b());
    b_first = !level flag::get(#"hash_45fc03c7c496f95a");
    level flag::set(#"hash_45fc03c7c496f95a");
    wait(2);
    if (b_first) {
        var_a9f81c4d = [#"hash_3017393d613b8af4", #"hash_30173c3d613b900d", #"hash_30173b3d613b8e5a"];
        level zm_vo::function_7622cb70(array::random(var_a9f81c4d));
        wait(1);
    }
    switch (var_32f76af8.script_int) {
    case 1:
        str_zone = #"zone_hillside_road_defend";
        break;
    case 2:
        str_zone = #"zone_burnt_forest_defend";
        break;
    case 3:
        str_zone = #"zone_rocky_slope_defend";
        break;
    }
    while (true) {
        var_32b4a09d = 0;
        foreach (e_player in function_a1ef346b()) {
            if (zm_utility::is_player_valid(e_player) && e_player.cached_zone_name === str_zone) {
                var_32b4a09d = 1;
                break;
            }
        }
        if (var_32b4a09d) {
            break;
        }
        waitframe(1);
    }
    if (b_first) {
        var_224fcd7c = [#"hash_59b2558efec1d086", #"hash_59b2548efec1ced3", #"hash_59b2538efec1cd20"];
        var_892f1410 = array::random(var_224fcd7c);
    } else {
        var_892f1410 = #"hash_1881d6020ab6c821";
    }
    level zm_vo::function_7622cb70(var_892f1410);
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x2f81ff16, Offset: 0x44d0
// Size: 0xcc
function function_430a4367(var_32f76af8) {
    switch (var_32f76af8.script_int) {
    case 1:
        var_48f19109 = #"hash_61666e0385473ebf";
        break;
    case 2:
        var_48f19109 = #"hash_330bd1b92b6dcc2";
        break;
    case 3:
        var_48f19109 = #"hash_5b3e4d04530ef605";
        break;
    }
    level zm_vo::function_d6f8bbd9(var_48f19109, undefined, function_a1ef346b());
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x2 linked
// Checksum 0x32dec082, Offset: 0x45a8
// Size: 0x3c
function function_b484fb2f() {
    callback::remove_on_round_end(&function_b484fb2f);
    level thread function_dbbcf07e();
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x6a717d3d, Offset: 0x45f0
// Size: 0x544
function function_dbbcf07e(var_32f76af8 = level.var_c1369554) {
    if (!isdefined(var_32f76af8)) {
        return;
    }
    level.var_98232a38++;
    function_b9e3761a();
    level notify(#"kill_round_wait");
    level notify(#"hash_6bd174fa0d5006f4");
    level.disable_nuke_delay_spawning = undefined;
    level thread namespace_f7b3ed9::function_640d77f3(0);
    level util::delay(float(function_60d95f53()) / 1000, #"end_game", &zm_utility::function_9ad5aeb1, 0, 1, 0, 0);
    foreach (var_1280faf3 in var_32f76af8.var_2c666f3f) {
        function_d5dcd79c(var_1280faf3);
    }
    function_83285a17(var_32f76af8, 0);
    if (!level flag::get(#"hash_8590b4c8eec6592")) {
        level notify(#"hash_43393d6e22873fc4");
        level thread function_3de96b64(var_32f76af8, 0);
    }
    level.no_powerups = undefined;
    foreach (e_player in getplayers()) {
        if (level.var_7dbadc8c zm_control_point_hud::is_open(e_player)) {
            level.var_7dbadc8c zm_control_point_hud::close(e_player);
        }
        level.var_31028c5d prototype_hud::set_active_objective_string(e_player, #"");
        level.var_31028c5d prototype_hud::function_817e4d10(e_player, 0);
        level.var_31028c5d prototype_hud::function_1b05e380(e_player, 0);
    }
    zm_sq::objective_complete(#"hash_86f91ca1e18f21f");
    if (!level flag::get(#"hash_6b46a8438582259d")) {
        level notify(#"hash_31599fe31bdd2f5b");
        var_32f76af8 thread namespace_f7b3ed9::function_21a9e71b(1, 1);
        foreach (e_player in getplayers()) {
            if (!var_32f76af8 flag::get(#"hash_2e9b9b15410a8c6a")) {
                scoreevents::processscoreevent(#"hash_4eba6dc3abdeee5b", e_player);
            }
            scoreevents::processscoreevent(#"hash_605e9a8e731c143c", e_player);
            e_player luinotifyevent(#"hash_5b1ff06d07e9002a", 3, 1, 0, 11);
        }
        level thread function_d07c21ca(var_32f76af8);
        var_32f76af8 flag::set("defend_succeed");
    }
    level thread function_d89c1190();
    level thread namespace_4ce4e65e::function_c383014f();
    level flag::clear(#"hash_7752d012501cd222");
    level flag::clear(#"hash_5dce120a8e013b48");
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x2 linked
// Checksum 0x44f4ae08, Offset: 0x4b40
// Size: 0x28c
function function_d89c1190() {
    level endon(#"end_game");
    b_success = !level flag::get(#"hash_6b46a8438582259d");
    if (b_success) {
        var_56135dcf = #"hash_2b6566c45abbcb90";
    } else {
        var_56135dcf = #"hash_209848ee6c04eb1d";
    }
    level zm_vo::function_d6f8bbd9(var_56135dcf, undefined, function_a1ef346b());
    if (b_success && level flag::get(#"hash_1ce3d10b375cb464")) {
        return;
    }
    if (!b_success && level flag::get(#"hash_554b676926b31680")) {
        return;
    }
    wait(1);
    if (b_success) {
        level flag::set(#"hash_1ce3d10b375cb464");
        var_a9f81c4d = [#"hash_6c44347ab16959c3", #"hash_6c44357ab1695b76", #"hash_6c44367ab1695d29"];
    } else {
        level flag::set(#"hash_554b676926b31680");
        var_a9f81c4d = [#"hash_1ebccc5feae1214", #"hash_1ebcfc5feae172d", #"hash_1ebcec5feae157a"];
    }
    level zm_vo::function_7622cb70(array::random(var_a9f81c4d));
    if (!level flag::get(#"hash_3e809d9f16b05973")) {
        level flag::set(#"hash_3e809d9f16b05973");
        wait(1);
        level zm_vo::function_7622cb70(#"hash_2f45e8938fae2354");
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0xaf048282, Offset: 0x4dd8
// Size: 0x168
function function_d07c21ca(var_32f76af8) {
    a_s_rewards = var_32f76af8.a_s_rewards[#"support_machine"];
    if (var_32f76af8 flag::get(#"hash_2e9b9b15410a8c6a")) {
        a_s_rewards = var_32f76af8.a_s_rewards[#"control_point"];
    }
    if (isdefined(a_s_rewards)) {
        foreach (s_reward in a_s_rewards) {
            if (isdefined(s_reward.reward)) {
                if (!isdefined(s_reward.v_drop)) {
                    s_reward.v_drop = getclosestpointonnavmesh(s_reward.origin, 128);
                }
                if (isdefined(s_reward.v_drop)) {
                    level zm_powerups::specific_powerup_drop(s_reward.reward, s_reward.v_drop, undefined, undefined, undefined, 1);
                }
            }
        }
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 2, eflags: 0x2 linked
// Checksum 0xdb29a7e0, Offset: 0x4f48
// Size: 0x1b0
function function_3de96b64(var_32f76af8, b_open = 1) {
    var_c36f1cec = var_32f76af8.var_c36f1cec;
    if (!isdefined(var_c36f1cec)) {
        return;
    }
    var_c36f1cec = array::randomize(var_c36f1cec);
    foreach (var_f57c3dea in var_c36f1cec) {
        if (b_open) {
            var_f57c3dea.var_35a3a0b0 = util::spawn_model(#"tag_origin", var_f57c3dea.origin, var_f57c3dea.angles);
            var_f57c3dea.var_35a3a0b0 clientfield::set("" + #"hash_112d67305f861fe", 1);
        } else if (isdefined(var_f57c3dea.var_35a3a0b0)) {
            var_f57c3dea.var_35a3a0b0 clientfield::set("" + #"hash_112d67305f861fe", 0);
            var_f57c3dea.var_35a3a0b0 thread util::delayed_delete(1);
        }
        wait(0.5);
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x9d993484, Offset: 0x5100
// Size: 0x92
function function_6290cfd0(n_players) {
    if (n_players <= 1) {
        n_delay = 3;
        if (level flag::get(#"hash_7a6662c944c5f275")) {
            n_delay = 3;
        }
    } else {
        n_delay = 3;
        if (level flag::get(#"hash_7a6662c944c5f275")) {
            n_delay = 3;
        }
    }
    return n_delay;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 3, eflags: 0x2 linked
// Checksum 0xee61cede, Offset: 0x51a0
// Size: 0x108
function function_52930f04(n_round, n_players, var_2a69785e) {
    level endon(#"hash_43393d6e22873fc4");
    if (n_round < 20) {
        return;
    }
    var_6f0fe86 = 5;
    var_9f25aa1 = 60;
    var_106cd823 = 0;
    if (n_players > 1) {
        var_6f0fe86 = 15;
        var_9f25aa1 = 30;
        var_106cd823 = 1;
    }
    if (var_2a69785e) {
        var_9f25aa1 = 60;
        if (n_players > 1) {
            var_9f25aa1 = 30;
        }
    }
    level thread function_74c96dd8(var_6f0fe86, var_106cd823);
    level waittilltimeout(var_9f25aa1, #"hash_63aad9abd362be3c");
    level notify(#"hash_63aad9abd362be3c");
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 2, eflags: 0x2 linked
// Checksum 0x5c3276da, Offset: 0x52b0
// Size: 0xb0
function function_74c96dd8(var_6f0fe86, var_106cd823) {
    level endon(#"end_game", #"hash_6bd174fa0d5006f4", #"hash_63aad9abd362be3c");
    while (level.var_f81e951b > var_6f0fe86 || level.var_92d7e973 > var_106cd823 || level.var_3b2fa00e > namespace_ac4eb28f::function_62f1faf9()) {
        waitframe(1);
    }
    level notify(#"hash_63aad9abd362be3c");
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 3, eflags: 0x2 linked
// Checksum 0x5aa2e4fb, Offset: 0x5368
// Size: 0x544
function function_29ee49d2(var_c36f1cec, n_round, n_players) {
    var_3df4bd40 = 3;
    if (n_players <= 1 && n_round < 20) {
        var_3df4bd40 = 2;
    }
    var_76282f60 = array::random(var_c36f1cec);
    arrayremovevalue(var_c36f1cec, var_76282f60);
    var_7464cd64 = [var_76282f60];
    n_script_int = var_76282f60.script_int;
    var_6255e018 = var_76282f60.var_d74ef9c3;
    if (!isdefined(n_script_int) || !isdefined(var_6255e018)) {
        return;
    }
    switch (var_6255e018) {
    case 1:
        switch (n_script_int) {
        case 1:
            var_753cb060 = 2;
            break;
        case 2:
            var_753cb060 = 2;
            break;
        case 3:
            var_753cb060 = 2;
            break;
        }
        break;
    case 2:
        switch (n_script_int) {
        case 1:
            var_753cb060 = [1, 3];
            break;
        case 2:
            var_753cb060 = [1, 3];
            break;
        case 3:
            var_753cb060 = [1, 3];
            break;
        }
        break;
    case 3:
        switch (n_script_int) {
        case 1:
            var_753cb060 = [2, 4];
            break;
        case 2:
            var_753cb060 = 2;
            break;
        case 3:
            var_753cb060 = 2;
            break;
        }
        break;
    case 4:
        var_753cb060 = 3;
        break;
    }
    if (isdefined(var_753cb060)) {
        if (!isdefined(var_753cb060)) {
            var_753cb060 = [];
        } else if (!isarray(var_753cb060)) {
            var_753cb060 = array(var_753cb060);
        }
        var_753cb060 = array::random(var_753cb060);
        foreach (var_f57c3dea in var_c36f1cec) {
            if (var_f57c3dea.var_d74ef9c3 === var_753cb060) {
                var_cff5f5ea = var_f57c3dea;
                break;
            }
        }
        if (isdefined(var_cff5f5ea)) {
            arrayremovevalue(var_c36f1cec, var_cff5f5ea);
            if (!isdefined(var_7464cd64)) {
                var_7464cd64 = [];
            } else if (!isarray(var_7464cd64)) {
                var_7464cd64 = array(var_7464cd64);
            }
            if (!isinarray(var_7464cd64, var_cff5f5ea)) {
                var_7464cd64[var_7464cd64.size] = var_cff5f5ea;
            }
        }
    }
    var_c36f1cec = arraysortclosest(var_c36f1cec, var_76282f60.origin);
    while (var_7464cd64.size < var_3df4bd40 && var_c36f1cec.size > 0) {
        if (!isdefined(var_7464cd64)) {
            var_7464cd64 = [];
        } else if (!isarray(var_7464cd64)) {
            var_7464cd64 = array(var_7464cd64);
        }
        if (!isinarray(var_7464cd64, var_c36f1cec[0])) {
            var_7464cd64[var_7464cd64.size] = var_c36f1cec[0];
        }
        arrayremoveindex(var_c36f1cec, 0);
    }
    return var_7464cd64;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 2, eflags: 0x2 linked
// Checksum 0xff19a6fd, Offset: 0x58b8
// Size: 0x58
function function_cb11f0dd(var_f57c3dea, n_players) {
    return !var_f57c3dea flag::get(#"active") && (n_players <= 1 || level.var_7d55d008 !== var_f57c3dea);
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 4, eflags: 0x2 linked
// Checksum 0xf994d377, Offset: 0x5918
// Size: 0x28c
function function_5e2a6358(var_afa8e919, n_players, var_2a69785e, var_1a6bb917 = #"normal") {
    n_zombies = 20;
    if (n_players > 1) {
        n_zombies = 20;
    }
    if (n_zombies > var_afa8e919) {
        n_zombies = var_afa8e919;
    }
    var_d017ea43 = namespace_ac4eb28f::function_62f1faf9();
    var_f4778abe = 2;
    if (n_players > 1) {
        var_f4778abe = 3;
    }
    var_76a4ebeb = 0;
    var_f540897a = 0;
    if (var_2a69785e) {
        var_f4778abe = 1;
        if (n_players > 1) {
            var_f4778abe = 2;
        }
    }
    if (var_1a6bb917 == #"hash_6ab8026afeceaf8b") {
        for (i = 0; i < var_d017ea43; i++) {
            if (n_zombies > 0 && math::cointoss(75) && level.var_3b2fa00e + 1 <= var_d017ea43) {
                var_76a4ebeb++;
                n_zombies -= 5;
            }
        }
    }
    if (var_1a6bb917 == #"mimic") {
        for (i = 0; i < var_f4778abe; i++) {
            if (n_zombies > 0 && math::cointoss(75) && level.var_92d7e973 + 1 <= var_f4778abe) {
                var_f540897a++;
                n_zombies -= 5;
            }
        }
    }
    if (n_zombies < 0) {
        n_zombies = 0;
    }
    a_spawns[#"total"] = n_zombies + var_76a4ebeb + var_f540897a;
    a_spawns[#"zombies"] = n_zombies;
    a_spawns[#"hash_255c13cef9350268"] = var_76a4ebeb;
    a_spawns[#"hash_4a640fc90278f767"] = var_f540897a;
    return a_spawns;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 4, eflags: 0x2 linked
// Checksum 0x5e575eed, Offset: 0x5bb0
// Size: 0x6ec
function function_de620e56(var_32f76af8, n_round, n_players, var_2a69785e = 0) {
    level endon(#"hash_43393d6e22873fc4");
    level.var_8c8c8ffd = 0;
    level.var_f81e951b = 0;
    level.var_3b2fa00e = 0;
    level.var_92d7e973 = 0;
    level flag::clear(#"hash_39c8ad7b5b87265b");
    if (var_2a69785e) {
        s_waitresult = level waittilltimeout(30, #"hash_3eb4c19472384f5b");
        if (s_waitresult._notify == #"hash_3eb4c19472384f5b") {
            wait(10);
        }
    }
    var_faa6c24 = 0;
    var_a77c8ab2 = 3;
    if (n_players > 1) {
        var_a77c8ab2 = 4;
    }
    var_57d164d9 = 0;
    var_8e58e88c = #"mimic";
    n_to_spawn = zm_round_logic::get_zombie_count_for_round(n_round, n_players);
    if (n_to_spawn > 100) {
        n_to_spawn = 100;
    }
    level.zombie_total = n_to_spawn;
    var_afa8e919 = n_to_spawn;
    var_67a7ae4f = 1;
    var_d58c8115 = 0;
    while (!var_d58c8115) {
        level flag::wait_till_clear(#"hash_39c8ad7b5b87265b");
        var_8bdc5b97 = array::filter(var_32f76af8.var_c36f1cec, 0, &function_cb11f0dd, n_players);
        if (var_8bdc5b97.size <= 0) {
            wait(1);
            continue;
        }
        var_1a6bb917 = #"normal";
        if (var_faa6c24 < var_a77c8ab2 && (var_2a69785e || level.var_98232a38 >= 1 || n_round >= 20)) {
            if (math::cointoss(75) || var_57d164d9 >= 2) {
                var_57d164d9 = 0;
                var_faa6c24++;
                if (var_8e58e88c == #"mimic") {
                    var_1a6bb917 = #"hash_6ab8026afeceaf8b";
                    var_8e58e88c = #"hash_6ab8026afeceaf8b";
                } else {
                    var_1a6bb917 = #"mimic";
                    var_8e58e88c = #"mimic";
                }
            } else {
                var_57d164d9++;
            }
        }
        var_7464cd64 = function_29ee49d2(var_8bdc5b97, n_round, n_players);
        foreach (i, var_f57c3dea in var_7464cd64) {
            a_spawns = function_5e2a6358(var_afa8e919, n_players, var_2a69785e, var_1a6bb917);
            n_total = a_spawns[#"total"];
            if (n_total > 0 && level.var_8c8c8ffd + n_total <= level.zombie_ai_limit) {
                level.var_8c8c8ffd += n_total;
                n_zombies = a_spawns[#"zombies"];
                var_76a4ebeb = a_spawns[#"hash_255c13cef9350268"];
                var_f540897a = a_spawns[#"hash_4a640fc90278f767"];
                level.var_f81e951b += n_zombies;
                level.var_3b2fa00e += var_76a4ebeb;
                level.var_92d7e973 += var_f540897a;
                level.var_7d55d008 = var_f57c3dea;
                var_f57c3dea flag::set(#"active");
                var_f57c3dea flag::set(#"spawn_zombies");
                var_f57c3dea flag::set(#"hash_3bf1a72ac4665e68");
                var_f57c3dea flag::set(#"hash_e1947ce906f367");
                level thread function_35a6d47b(var_f57c3dea, n_zombies, n_round);
                level thread function_80bf3648(var_f57c3dea, var_76a4ebeb);
                level thread function_58b27842(var_f57c3dea, var_f540897a);
                var_afa8e919 -= n_total;
                if (var_afa8e919 <= 0) {
                    var_d58c8115 = 1;
                    break;
                }
                if (i + 1 < var_7464cd64.size) {
                    wait(0.5);
                }
            }
        }
        var_67a7ae4f = 0;
        if (!var_d58c8115) {
            function_52930f04(n_round, n_players, var_2a69785e);
            n_spawn_delay = function_6290cfd0(n_players);
            if (level flag::get(#"hash_7a6662c944c5f275")) {
                level flag::wait_till_clear_timeout(n_spawn_delay, #"hash_7a6662c944c5f275");
                continue;
            }
            wait(n_spawn_delay);
        }
    }
    level flag::set(#"hash_8590b4c8eec6592");
    wait(3);
    level thread function_3de96b64(var_32f76af8, 0);
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x1365b4b9, Offset: 0x62a8
// Size: 0x8c
function function_9ce67fef(var_f57c3dea) {
    if (!var_f57c3dea flag::get_any([#"spawn_zombies", #"hash_3bf1a72ac4665e68", #"hash_e1947ce906f367"])) {
        var_f57c3dea flag::clear(#"active");
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 3, eflags: 0x2 linked
// Checksum 0x301719e4, Offset: 0x6340
// Size: 0xec
function function_35a6d47b(var_f57c3dea, n_spawns, n_round) {
    level endon(#"hash_6bd174fa0d5006f4");
    if (n_spawns > 0) {
        for (i = 0; i < n_spawns; i++) {
            level flag::wait_till_clear(#"hash_39c8ad7b5b87265b");
            function_a7d1da85(var_f57c3dea, n_round);
            wait(randomfloatrange(0.1, 0.2));
        }
    }
    var_f57c3dea flag::clear(#"spawn_zombies");
    function_9ce67fef(var_f57c3dea);
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 2, eflags: 0x2 linked
// Checksum 0x451c7c7c, Offset: 0x6438
// Size: 0xdc
function function_80bf3648(var_f57c3dea, n_spawns) {
    level endon(#"hash_6bd174fa0d5006f4");
    if (n_spawns > 0) {
        for (i = 0; i < n_spawns; i++) {
            wait(randomfloatrange(1, 2));
            level flag::wait_till_clear(#"hash_39c8ad7b5b87265b");
            function_22918b17(var_f57c3dea);
        }
    }
    var_f57c3dea flag::clear(#"hash_3bf1a72ac4665e68");
    function_9ce67fef(var_f57c3dea);
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 2, eflags: 0x2 linked
// Checksum 0xcaeaa4d2, Offset: 0x6520
// Size: 0xdc
function function_58b27842(var_f57c3dea, n_spawns) {
    level endon(#"hash_6bd174fa0d5006f4");
    if (n_spawns > 0) {
        for (i = 0; i < n_spawns; i++) {
            wait(randomfloatrange(1, 2));
            level flag::wait_till_clear(#"hash_39c8ad7b5b87265b");
            function_cb795a64(var_f57c3dea);
        }
    }
    var_f57c3dea flag::clear(#"hash_e1947ce906f367");
    function_9ce67fef(var_f57c3dea);
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0xafd7318a, Offset: 0x6608
// Size: 0x96
function function_71d2484(var_f57c3dea) {
    if (var_f57c3dea.var_58d1b08a.size <= 0) {
        var_f57c3dea.var_58d1b08a = arraycopy(var_f57c3dea.var_2eb61c8a);
    }
    v_spawn = array::random(var_f57c3dea.var_58d1b08a);
    arrayremovevalue(var_f57c3dea.var_58d1b08a, v_spawn);
    v_spawn = v_spawn.origin;
    return v_spawn;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 3, eflags: 0x2 linked
// Checksum 0xade86a39, Offset: 0x66a8
// Size: 0x248
function function_a7d1da85(var_f57c3dea, n_round, var_d1d2d9e2 = 0) {
    level endon(#"hash_6bd174fa0d5006f4");
    v_spawn = function_71d2484(var_f57c3dea);
    s_spawn = {#origin:v_spawn, #angles:var_f57c3dea.angles};
    spawner = function_b00c7d16(n_round, var_d1d2d9e2);
    while (true) {
        ai_zombie = zombie_utility::spawn_zombie(spawner, undefined, s_spawn);
        if (isdefined(ai_zombie)) {
            break;
        }
        waitframe(1);
    }
    ai_zombie clientfield::increment("" + #"hash_ebf3c511bdc3a01");
    if (!var_d1d2d9e2) {
        ai_zombie callback::function_d8abfc3d(#"on_ai_killed", &function_cf8aab35);
        level.zombie_total = int(max(0, level.zombie_total - 1));
    } else {
        ai_zombie.var_12745932 = 1;
        ai_zombie.health = 50;
    }
    ai_zombie.var_126d7bef = 1;
    ai_zombie.ignore_round_spawn_failsafe = 1;
    ai_zombie.b_ignore_cleanup = 1;
    ai_zombie.no_powerups = 1;
    ai_zombie.completed_emerging_into_playable_area = 1;
    ai_zombie.zombie_think_done = 1;
    ai_zombie thread function_892960f5(var_f57c3dea, var_d1d2d9e2);
    s_spawn struct::delete();
    return ai_zombie;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x85551046, Offset: 0x68f8
// Size: 0x180
function function_22918b17(var_f57c3dea) {
    level endon(#"hash_6bd174fa0d5006f4");
    v_spawn = function_71d2484(var_f57c3dea);
    s_spawn = {#origin:v_spawn, #angles:var_f57c3dea.angles};
    while (true) {
        var_7e46a1cf = namespace_ac4eb28f::spawn_single(1, s_spawn);
        if (isdefined(var_7e46a1cf)) {
            break;
        }
        waitframe(1);
    }
    var_7e46a1cf callback::function_d8abfc3d(#"on_ai_killed", &function_ad7719a7);
    level.zombie_total = int(max(0, level.zombie_total - 1 - 4));
    var_7e46a1cf.var_126d7bef = 1;
    var_7e46a1cf.ignore_round_spawn_failsafe = 1;
    var_7e46a1cf.b_ignore_cleanup = 1;
    var_7e46a1cf.no_powerups = 1;
    s_spawn struct::delete();
    return var_7e46a1cf;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x9d752505, Offset: 0x6a80
// Size: 0x178
function function_cb795a64(var_f57c3dea) {
    level endon(#"hash_6bd174fa0d5006f4");
    v_spawn = function_71d2484(var_f57c3dea);
    s_spawn = {#origin:v_spawn, #angles:var_f57c3dea.angles};
    while (true) {
        ai_mimic = zm_ai_mimic::spawn_single(s_spawn);
        if (isdefined(ai_mimic)) {
            break;
        }
        waitframe(1);
    }
    ai_mimic callback::function_d8abfc3d(#"on_ai_killed", &function_ef9a159f);
    level.zombie_total = int(max(0, level.zombie_total - 1 - 4));
    ai_mimic.var_126d7bef = 1;
    ai_mimic.ignore_round_spawn_failsafe = 1;
    ai_mimic.b_ignore_cleanup = 1;
    ai_mimic.no_powerups = 1;
    s_spawn struct::delete();
    return ai_mimic;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 2, eflags: 0x2 linked
// Checksum 0xf413a20, Offset: 0x6c00
// Size: 0x1c2
function function_b00c7d16(n_round, var_d1d2d9e2 = 0) {
    if (!var_d1d2d9e2) {
        if (n_round >= 30 && math::cointoss(5)) {
            n_script_int = 4;
        } else if (n_round >= 10 && math::cointoss(15)) {
            n_script_int = 3;
        }
    }
    a_spawners = arraycopy(level.zombie_spawners);
    if (isdefined(n_script_int)) {
        foreach (spawner in a_spawners) {
            if (spawner.script_int == n_script_int) {
                return spawner;
            }
        }
    }
    var_c9069e4a = [3, 4];
    a_spawners = array::filter(a_spawners, 0, &function_9664099a, var_c9069e4a);
    return array::random(a_spawners);
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 2, eflags: 0x2 linked
// Checksum 0x3bb8a57f, Offset: 0x6dd0
// Size: 0x74
function function_9664099a(spawner, var_62a12a30) {
    if (!isdefined(var_62a12a30)) {
        var_62a12a30 = [];
    } else if (!isarray(var_62a12a30)) {
        var_62a12a30 = array(var_62a12a30);
    }
    return !isinarray(var_62a12a30, spawner.script_int);
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x16157f8e, Offset: 0x6e50
// Size: 0x24
function function_cf8aab35(*s_params) {
    level.var_8c8c8ffd--;
    level.var_f81e951b--;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0xa309dd8e, Offset: 0x6e80
// Size: 0x24
function function_ad7719a7(*s_params) {
    level.var_8c8c8ffd--;
    level.var_3b2fa00e--;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0xa21e6f53, Offset: 0x6eb0
// Size: 0x24
function function_ef9a159f(*s_params) {
    level.var_8c8c8ffd--;
    level.var_92d7e973--;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 2, eflags: 0x2 linked
// Checksum 0xaf5c1a85, Offset: 0x6ee0
// Size: 0x524
function function_892960f5(var_f57c3dea, var_d1d2d9e2 = 0) {
    self endon(#"death");
    if (!isdefined(var_f57c3dea.target)) {
        return;
    }
    self val::set(#"hash_439fa8a074e8455c", "ignoreall", 1);
    var_36740c32 = struct::get_array(var_f57c3dea.target);
    if (!isarray(var_36740c32)) {
        return;
    }
    s_goal = array::random(var_36740c32);
    self thread function_1f1d18a();
    var_32f76af8 = level.var_c1369554;
    while (true) {
        if (!s_goal flag::get(#"hash_60a48a427f6cbf61")) {
            v_goal = s_goal.origin;
        } else {
            if (s_goal.var_9c19b6ff.size <= 0) {
                s_goal.var_9c19b6ff = arraycopy(s_goal.var_6cc15b58);
            }
            v_goal = array::random(s_goal.var_9c19b6ff);
            arrayremovevalue(s_goal.var_9c19b6ff, v_goal);
            v_goal = v_goal.origin;
        }
        self.n_zombie_custom_goal_radius = 64;
        self.v_zombie_custom_goal_pos = v_goal;
        var_72a02e47 = self function_9177bff0(v_goal, 64);
        if (!isdefined(s_goal.target) || !is_true(var_72a02e47)) {
            break;
        }
        if (!is_true(s_goal.var_b0f4221f)) {
            self flag::set(#"hash_61a5965aa8d6619b");
        }
        if (is_true(s_goal.var_f974d087)) {
            self flag::set(#"hash_1e6c0b1f5f17c8f6");
        }
        if (self flag::get(#"hash_61a5965aa8d6619b")) {
            if (!var_32f76af8 flag::get(#"hash_2e9b9b15410a8c6a")) {
                if (self flag::get(#"hash_1e6c0b1f5f17c8f6")) {
                    break;
                }
            } else if (!var_32f76af8.var_af9beb09 namespace_85745671::get_attackable_slot(self)) {
                break;
            }
        }
        var_36740c32 = struct::get_array(s_goal.target);
        s_goal = array::random(var_36740c32);
    }
    self notify(#"hash_1105b1fbcce65662");
    self val::reset(#"hash_439fa8a074e8455c", "ignoreall");
    self.n_zombie_custom_goal_radius = undefined;
    self.v_zombie_custom_goal_pos = undefined;
    if (!var_d1d2d9e2) {
        attackable = var_32f76af8.mdl_support_machine;
        if (var_32f76af8 flag::get(#"hash_2e9b9b15410a8c6a")) {
            attackable = var_32f76af8.var_af9beb09;
        }
        var_8f02acce = attackable namespace_85745671::get_attackable_slot(self);
        if (is_true(var_8f02acce)) {
            var_b93dd876 = 75;
            foreach (e_player in function_a1ef346b(undefined, self.origin, 512)) {
                if (zm_utility::is_player_valid(e_player)) {
                    var_b93dd876 = 35;
                    break;
                }
            }
            if (math::cointoss(var_b93dd876)) {
                namespace_85745671::function_744beb04(self);
            }
        }
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x2 linked
// Checksum 0x663b3112, Offset: 0x7410
// Size: 0x12e
function function_1f1d18a() {
    self endon(#"death", #"hash_1105b1fbcce65662");
    for (var_401b4629 = 0; !var_401b4629; var_401b4629 = 1) {
        waitframe(1);
        foreach (e_player in function_a1ef346b(undefined, self.origin, 150)) {
            if (zm_utility::is_player_valid(e_player)) {
                var_401b4629 = 1;
                break;
            }
        }
        if (!var_401b4629 && isdefined(self namespace_85745671::function_a9cfe717())) {
        }
    }
    self notify(#"hash_1105b1fbcce65662");
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 2, eflags: 0x2 linked
// Checksum 0x2a96dae8, Offset: 0x7548
// Size: 0x76
function function_9177bff0(v_goal, n_dist) {
    self endon(#"death", #"hash_1105b1fbcce65662");
    while (distancesquared(self.origin, v_goal) >= sqr(n_dist)) {
        waitframe(1);
    }
    return true;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x0
// Checksum 0xdd05a6ff, Offset: 0x75c8
// Size: 0xac
function function_eb06561e() {
    foreach (control_point in level.var_cc43b632) {
        if (control_point.var_269ad176 === 2) {
            captured_control_point = control_point;
            return true;
        }
    }
    if (!isdefined(captured_control_point)) {
        return false;
    }
    return false;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 3, eflags: 0x2 linked
// Checksum 0x1916ef8b, Offset: 0x7680
// Size: 0x680
function function_44361a8f(control_point, var_e1c95338, var_ab56660c) {
    level endon(#"end_game", #"hash_5dc90fb13f4ddf12", #"hash_22e4c4a43b33a4bd");
    var_cc47d58b = arraycopy(control_point.var_94cc32a1);
    var_67fee1f1 = [];
    var_5fa4c84a = [];
    var_a77909d4 = 0;
    var_4ebe6ac0 = 0;
    b_force_spawn = 0;
    for (i = 0; i < (getplayers().size < var_cc47d58b.size ? getplayers().size : var_cc47d58b.size); i++) {
        spawn_pos = array::random(var_cc47d58b);
        spawn_pos.tag_fx = spawn_pos util::spawn_model("tag_origin", spawn_pos.origin, spawn_pos.angles);
        if (isdefined(spawn_pos.tag_fx)) {
            spawn_pos.tag_fx clientfield::set("" + #"hash_112d67305f861fe", 1);
        }
        arrayremovevalue(var_cc47d58b, spawn_pos);
        var_7f595528 = namespace_85745671::function_7a1b21f6(spawn_pos.origin, spawn_pos.angles, 25, 512, 256, 256);
        if (isarray(var_7f595528)) {
            foreach (spawn_point in var_7f595528) {
                if (ispointonnavmesh(spawn_point.origin, 0)) {
                    if (!isdefined(var_67fee1f1)) {
                        var_67fee1f1 = [];
                    } else if (!isarray(var_67fee1f1)) {
                        var_67fee1f1 = array(var_67fee1f1);
                    }
                    if (!isinarray(var_67fee1f1, spawn_point)) {
                        var_67fee1f1[var_67fee1f1.size] = spawn_point;
                    }
                }
            }
        }
        var_5fa4c84a = arraycombine(var_5fa4c84a, var_67fee1f1);
    }
    i = 0;
    var_5fa4c84a = array::randomize(var_5fa4c84a);
    while (var_a77909d4 < var_ab56660c && var_5fa4c84a.size) {
        var_9777582e = getentarray("assault_ai" + control_point.script_int, "targetname");
        if (isdefined(var_9777582e) && var_9777582e.size > getailimit()) {
            wait(1);
            continue;
        }
        var_868cb618 = function_debefaed(var_e1c95338);
        if (i >= var_5fa4c84a.size - 1) {
            i = 0;
        }
        if (isdefined(var_868cb618)) {
            spawn_ai = spawnactor(var_868cb618, var_5fa4c84a[i].origin, var_5fa4c84a[i].angles, "assault_ai" + control_point.script_int, 1);
        }
        if (isdefined(spawn_ai)) {
            if (var_868cb618 !== #"hash_7a8b592728eec95d" || var_868cb618 !== #"hash_4f87aa2a203d37d0") {
                spawn_ai.var_c9b11cb3 = #"hash_5d96e8e3ed203968";
                spawn_ai thread namespace_85745671::function_2089690e();
            }
            spawn_ai.var_126d7bef = 1;
            spawn_ai.ignore_round_spawn_failsafe = 1;
            spawn_ai.b_ignore_cleanup = 1;
            spawn_ai.ignore_enemy_count = 1;
            spawn_ai.no_powerups = 1;
            spawn_ai pathmode("move allowed");
            spawn_ai.completed_emerging_into_playable_area = 1;
            spawn_ai.zombie_think_done = 1;
            spawn_ai.zombie_move_speed = "sprint";
            var_a77909d4++;
            b_force_spawn = 0;
            if (!isdefined(level.var_2ae05b05)) {
                level.var_2ae05b05 = [];
            } else if (!isarray(level.var_2ae05b05)) {
                level.var_2ae05b05 = array(level.var_2ae05b05);
            }
            level.var_2ae05b05[level.var_2ae05b05.size] = spawn_ai;
            spawn_ai thread namespace_f7b3ed9::function_bf606a73();
            spawn_ai callback::on_death(&function_ea727237);
            if (var_a77909d4 >= var_ab56660c) {
                break;
            }
        } else {
            var_4ebe6ac0++;
            if (var_4ebe6ac0 > 10 && var_a77909d4 < var_ab56660c / 2) {
                b_force_spawn = 1;
            }
        }
        i++;
        if (i >= var_7f595528.size) {
            i = 0;
        }
        waitframe(randomintrange(2, 5));
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x7ee3a646, Offset: 0x7d08
// Size: 0x3cc
function function_debefaed(var_e1c95338 = undefined) {
    var_628d63d0 = randomintrange(0, 100);
    if (isdefined(var_e1c95338)) {
        var_e1c95338 = math::clamp(var_e1c95338, 0, 1);
        switch (var_e1c95338) {
        case 0:
            if (var_628d63d0 > 20) {
                a_zombies = ["spawner_bo5_zombie_zm_gold", "spawner_bo5_zombie_zm_gold", "spawner_bo5_zombie_zm_gold"];
                return array::random(a_zombies);
            } else if (var_628d63d0 > 5) {
                a_zombies = ["spawner_bo5_zombie_zm_gold_armor_medium", "spawner_bo5_zombie_zm_gold_armor_medium", "spawner_bo5_zombie_zm_gold_armor_heavy"];
                return array::random(a_zombies);
            } else {
                a_zombies = [#"hash_7a8b592728eec95d"];
                return array::random(a_zombies);
            }
        case 1:
            if (var_628d63d0 > 30) {
                a_zombies = ["spawner_bo5_zombie_zm_gold", "spawner_bo5_zombie_zm_gold", "spawner_bo5_zombie_zm_gold"];
                return array::random(a_zombies);
            } else if (var_628d63d0 > 10) {
                a_zombies = ["spawner_bo5_zombie_zm_gold_armor_medium", "spawner_bo5_zombie_zm_gold_armor_medium", "spawner_bo5_zombie_zm_gold_armor_heavy"];
                return array::random(a_zombies);
            } else if (var_628d63d0 > 5) {
                a_zombies = [#"hash_7a8b592728eec95d"];
                return array::random(a_zombies);
            } else {
                a_zombies = [#"hash_4f87aa2a203d37d0"];
                return array::random(a_zombies);
            }
            break;
        }
        return;
    }
    if (var_628d63d0 > 50) {
        a_zombies = ["spawner_bo5_zombie_zm_gold", "spawner_bo5_zombie_zm_gold", "spawner_bo5_zombie_zm_gold"];
        return array::random(a_zombies);
    }
    if (var_628d63d0 > 5) {
        a_zombies = ["spawner_bo5_zombie_zm_gold_armor_medium", "spawner_bo5_zombie_zm_gold_armor_medium", "spawner_bo5_zombie_zm_gold_armor_heavy"];
        return array::random(a_zombies);
    }
    a_zombies = [#"hash_4f87aa2a203d37d0", #"hash_7a8b592728eec95d"];
    return array::random(a_zombies);
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0xde8a0d40, Offset: 0x80e0
// Size: 0x24
function function_ea727237(*params) {
    function_1eaaceab(level.var_2ae05b05);
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x3e377a01, Offset: 0x8110
// Size: 0x9bc
function function_2ba1b59e(control_point) {
    level endon(#"hash_2815bf32fb443bc3", #"hash_a88cb65d3952bc4");
    level flag::clear(#"hash_16edadbaf047de80");
    level flag::clear(#"hash_1151a858b13d4d00");
    str_scene_name = undefined;
    if (isdefined(control_point.script_int)) {
        level thread zm_gold_vo::function_81971b17();
        switch (control_point.script_int) {
        case 1:
            str_scene_name = "aib_vign_cust_frbse_orda_siege";
            break;
        case 2:
            str_scene_name = "aib_vign_cust_frbse_orda_scorched";
            break;
        case 3:
            str_scene_name = "aib_vign_cust_frbse_orda_rocky";
            break;
        }
        scene::add_scene_func(str_scene_name, &function_f239fa6c, "idle_pos_1");
        scene::add_scene_func(str_scene_name, &function_a28211b6, "idle_pos_2");
        scene::add_scene_func(str_scene_name, &function_a28211b6, "idle_pos_3");
        scene::add_scene_func(str_scene_name, &function_a28211b6, "idle_pos_4");
        scene::add_scene_func(str_scene_name, &function_a28211b6, "walk_1_to_2");
        scene::add_scene_func(str_scene_name, &function_a28211b6, "walk_2_to_3");
        scene::add_scene_func(str_scene_name, &function_a28211b6, "walk_3_to_4");
        scene::add_scene_func(str_scene_name, &function_a28211b6, "dog_launcher_pos_2");
        scene::add_scene_func(str_scene_name, &function_a28211b6, "dog_launcher_pos_3");
        scene::add_scene_func(str_scene_name, &function_a28211b6, "swarm_pos_2");
        scene::add_scene_func(str_scene_name, &function_a28211b6, "swarm_pos_3");
        scene::add_scene_func(str_scene_name, &function_a28211b6, "idle_to_drain");
        scene::add_scene_func(str_scene_name, &function_a28211b6, "drain_loop");
        var_8dbe7c90 = 1;
        level clientfield::set("" + #"hash_1c7fca29ab341f83", control_point.script_int);
        wait(10);
        level clientfield::set("" + #"hash_1c7fca29ab341f83", 0);
        level scene::play(str_scene_name, "idle_pos_1");
        level.orda thread function_b3267a55();
        level.orda thread function_46cbde38();
        function_5aa5e0eb(control_point, var_8dbe7c90);
        level scene::play(str_scene_name, "walk_1_to_2");
        var_8dbe7c90 = 2;
        function_5aa5e0eb(control_point, var_8dbe7c90);
        level scene::play(str_scene_name, "idle_pos_2");
        function_5aa5e0eb(control_point, var_8dbe7c90);
        if (function_8846c788()) {
            level.orda thread function_7f4a72d3();
            level scene::play(str_scene_name, "dog_launcher_pos_2");
            level notify(#"hash_6b581cfde9207ac7");
            function_5aa5e0eb(control_point, var_8dbe7c90);
            level.orda thread function_3e2d4d25();
            level scene::play(str_scene_name, "swarm_pos_2");
            level notify(#"hash_76814119df7d7c65");
            function_5aa5e0eb(control_point, var_8dbe7c90);
        } else {
            level.orda thread function_3e2d4d25();
            level scene::play(str_scene_name, "swarm_pos_2");
            level notify(#"hash_76814119df7d7c65");
            function_5aa5e0eb(control_point, var_8dbe7c90);
            level.orda thread function_7f4a72d3();
            level scene::play(str_scene_name, "dog_launcher_pos_2");
            level notify(#"hash_6b581cfde9207ac7");
            function_5aa5e0eb(control_point, var_8dbe7c90);
        }
        level scene::play(str_scene_name, "walk_2_to_3");
        var_8dbe7c90 = 3;
        function_5aa5e0eb(control_point, var_8dbe7c90);
        level scene::play(str_scene_name, "idle_pos_3");
        function_5aa5e0eb(control_point, var_8dbe7c90);
        if (function_8846c788()) {
            level.orda thread function_7f4a72d3();
            level scene::play(str_scene_name, "dog_launcher_pos_3");
            level notify(#"hash_6b581cfde9207ac7");
            function_5aa5e0eb(control_point, var_8dbe7c90);
            level.orda thread function_3e2d4d25();
            level scene::play(str_scene_name, "swarm_pos_3");
            level notify(#"hash_76814119df7d7c65");
            function_5aa5e0eb(control_point, var_8dbe7c90);
        } else {
            level.orda thread function_3e2d4d25();
            level scene::play(str_scene_name, "swarm_pos_3");
            level notify(#"hash_76814119df7d7c65");
            function_5aa5e0eb(control_point, var_8dbe7c90);
            level.orda thread function_7f4a72d3();
            level scene::play(str_scene_name, "dog_launcher_pos_3");
            level notify(#"hash_6b581cfde9207ac7");
            function_5aa5e0eb(control_point, var_8dbe7c90);
        }
        if (isdefined(level.var_f0fc72bc) && level.var_f0fc72bc > 0) {
            var_77a6fad9 = 0;
            level.orda thread function_7f4a72d3(function_664ae25c(control_point, #"support_machine"));
            level scene::play(str_scene_name, "dog_launcher_pos_3");
            level notify(#"hash_6b581cfde9207ac7");
            function_5aa5e0eb(control_point, var_8dbe7c90);
        }
        level scene::play(str_scene_name, "walk_3_to_4");
        var_8dbe7c90 = 4;
        function_5aa5e0eb(control_point, var_8dbe7c90);
        level scene::play(str_scene_name, "idle_to_drain");
        level function_74ec1b25(control_point);
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x2 linked
// Checksum 0x8a3c1011, Offset: 0x8ad8
// Size: 0xe0
function function_9837b56d() {
    level endon(#"end_game");
    s_waitresult = level waittill(#"hash_20426ed2f2666c50", #"hash_2815bf32fb443bc3", #"hash_a88cb65d3952bc4", #"hash_6bd174fa0d5006f4");
    if (s_waitresult._notify === #"hash_20426ed2f2666c50") {
        wait(3);
    }
    level flag::clear(#"hash_7a6662c944c5f275");
    level flag::clear(#"hold_round_end");
    level notify(#"kill_round_wait");
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x2 linked
// Checksum 0x27368e5d, Offset: 0x8bc0
// Size: 0x24
function function_8846c788() {
    if (math::cointoss()) {
        return 1;
    }
    return 0;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0xa275564c, Offset: 0x8bf0
// Size: 0x330
function function_f239fa6c(a_ents) {
    level.orda = a_ents[#"orda"];
    level.orda function_619a5c20();
    level.orda setforcenocull();
    if (!isdefined(level.var_2ae05b05)) {
        level.var_2ae05b05 = [];
    } else if (!isarray(level.var_2ae05b05)) {
        level.var_2ae05b05 = array(level.var_2ae05b05);
    }
    level.var_2ae05b05[level.var_2ae05b05.size] = level.orda;
    level.orda clientfield::set("" + #"hash_3ce728c2f6b351eb", 1);
    level.orda thread function_6da6ae01();
    level.orda thread function_e3c34a39();
    level thread function_e58339b5();
    level thread function_dcd3d760();
    v_origin = level.orda gettagorigin("j_head");
    v_angles = level.orda gettagangles("j_head");
    var_6abf3e9f = spawnvehicle("fake_vehicle", v_origin, v_angles, "orda_indicator");
    if (isdefined(var_6abf3e9f)) {
        var_6abf3e9f setforcenocull();
        var_6abf3e9f setteam(#"axis");
        var_6abf3e9f val::set(#"hash_3a45f029189c53ed", "takedamage", 0);
        var_6abf3e9f val::set(#"hash_3a45f029189c53ed", "allowdeath", 0);
        var_6abf3e9f.ignore_enemy_count = 1;
        var_6abf3e9f.var_2df02a0c = 1;
        var_6abf3e9f linkto(level.orda, "j_head", (50, 0, 0));
        if (isdefined(level.orda_indicator)) {
            level.orda_indicator delete();
        }
        level.orda_indicator = var_6abf3e9f;
        level thread function_2b49cac1();
    }
    level notify(#"hash_3eb4c19472384f5b");
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x6 linked
// Checksum 0x29b46fb4, Offset: 0x8f28
// Size: 0x6c
function private function_2b49cac1() {
    level endon(#"end_game");
    level waittill(#"hash_f630acd8ed7aa5b", #"hash_a88cb65d3952bc4");
    if (isdefined(level.orda_indicator)) {
        level.orda_indicator delete();
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x1bd2a089, Offset: 0x8fa0
// Size: 0x3c
function function_a28211b6(*a_ents) {
    if (isdefined(level.orda)) {
        level.orda setcandamage(1);
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x580a89fe, Offset: 0x8fe8
// Size: 0xbe6
function function_6da6ae01(*var_ce68958a) {
    level endon(#"hash_2815bf32fb443bc3", #"hash_a88cb65d3952bc4");
    self endon(#"entitydeleted");
    level.orda setcandamage(1);
    if (!isdefined(level.orda.var_86a21346)) {
        level.orda.var_86a21346 = &function_b8f5e813;
    }
    var_38d5e6a2 = level.round_number;
    if (var_38d5e6a2 < 30) {
        var_38d5e6a2 = 30;
    } else if (var_38d5e6a2 > 60) {
        var_38d5e6a2 = 60;
    }
    n_health_percent = 1 - (60 - var_38d5e6a2) / 30;
    if (n_health_percent < 0) {
        n_health_percent = 0;
    } else if (n_health_percent > 1) {
        n_health_percent = 1;
    }
    n_players = function_a1ef346b().size;
    if (n_players < 1) {
        n_players = 1;
    } else if (n_players > 4) {
        n_players = 4;
    }
    /#
        if (getdvarint(#"hash_69ea990dbca613ac", 0)) {
            n_players = getdvarint(#"hash_69ea990dbca613ac", 0);
        }
    #/
    switch (n_players) {
    case 1:
        n_health_min = 450000;
        n_health_max = 1400000;
        break;
    case 2:
        n_health_min = 450000;
        n_health_max = 1400000;
        break;
    case 3:
        n_health_min = 600000;
        n_health_max = 1650000;
        break;
    case 4:
        n_health_min = 675000;
        n_health_max = 1800000;
        break;
    }
    n_health = int(lerpfloat(n_health_min, n_health_max, n_health_percent));
    self.maxhealth = n_health;
    level.var_b72d51a8 = n_health;
    self.var_28621cf4 = "j_head";
    self.var_e5365d8a = (0, 0, 0);
    self.var_95ee6823 = 0.3;
    foreach (e_player in getplayers()) {
        if (!level.var_7dbadc8c zm_control_point_hud::is_open(e_player)) {
            level.var_7dbadc8c zm_control_point_hud::open(e_player, 1);
        }
        level.var_7dbadc8c zm_control_point_hud::function_338d48a0(e_player, 1);
        level.var_7dbadc8c zm_control_point_hud::function_751f7270(e_player, 0);
        level.var_7dbadc8c zm_control_point_hud::function_a95c34f3(e_player, 1);
        level.var_7dbadc8c zm_control_point_hud::function_a59aefa6(e_player, 1);
    }
    while (true) {
        waitresult = self waittill(#"damage");
        if (waitresult.amount > 0 && isplayer(waitresult.attacker) && waitresult.mod !== "MOD_AAT") {
            damage = waitresult.amount;
            weapon = waitresult.weapon;
            attacker = waitresult.attacker;
            inflictor = waitresult.inflictor;
            flags = waitresult.flags;
            meansofdeath = waitresult.mod;
            var_fd90b0bb = waitresult.var_fd90b0bb;
            vpoint = waitresult.position;
            vdir = waitresult.direction;
            shitloc = waitresult.shitloc;
            psoffsettime = waitresult.psoffsettime;
            boneindex = waitresult.boneindex;
            surfacetype = waitresult.surfacetype;
            if (!isdefined(self.var_77dcb00d)) {
                self.var_77dcb00d = [];
            }
            var_cf7befe9 = {#player:attacker, #weapon:weapon};
            self.var_77dcb00d[attacker getentitynumber()] = var_cf7befe9;
            damage = namespace_c4d353e7::get_weapon_damage(inflictor, attacker, damage, flags, meansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype);
            if (isdefined(weapon) && zm_weapons::is_wonder_weapon(weapon)) {
                damage = int(damage * 0.3);
            }
            if (isplayer(inflictor) || isplayer(attacker)) {
                if (meansofdeath === "MOD_HEAD_SHOT" || meansofdeath === "MOD_RIFLE_BULLET" || meansofdeath === "MOD_PISTOL_BULLET") {
                    damage_cap = int(0.025 * self.maxhealth);
                } else if (weapon.guidedmissiletype === "Ballistic") {
                    damage_cap = int(0.009375 * self.maxhealth);
                } else {
                    damage_cap = int(0.05 * self.maxhealth);
                }
                if (damage > damage_cap) {
                    damage = damage_cap;
                }
            }
            var_ebcff177 = is_true(self.var_1c0ce945) ? 2 : 1;
            var_cb7c50c0 = aiutility::function_cb552839(self);
            hud::function_c9800094(waitresult.attacker, var_cb7c50c0, damage, var_ebcff177);
            attacker util::show_hit_marker();
            level.var_b72d51a8 -= damage;
            n_percent = level.var_b72d51a8 / n_health;
            if (n_percent < 0) {
                n_percent = 0;
            }
            foreach (e_player in getplayers()) {
                if (level.var_7dbadc8c zm_control_point_hud::is_open(e_player)) {
                    level.var_7dbadc8c zm_control_point_hud::function_a59aefa6(e_player, n_percent);
                }
            }
            if (level.var_b72d51a8 <= 0) {
                foreach (e_player in getplayers()) {
                    if (level.var_7dbadc8c zm_control_point_hud::is_open(e_player)) {
                        level.var_7dbadc8c zm_control_point_hud::function_a95c34f3(e_player, 0);
                        level.var_7dbadc8c zm_control_point_hud::close(e_player);
                    }
                }
                level notify(#"hash_7892613c9b964540");
                if (!is_true(self.is_dead)) {
                    self.is_dead = 1;
                    if (isdefined(self.var_77dcb00d)) {
                        foreach (player_struct in self.var_77dcb00d) {
                            if (zm_utility::is_player_valid(player_struct.player, 0, 1)) {
                                player_struct.player zm_stats::increment_challenge_stat(#"hash_7b482d2a97abe802");
                                player_struct.player zm_challenges::function_d6b32ad3(player_struct.weapon, #"hash_9c59d60380f570a", 3);
                                scoreevents::processscoreevent("hulking_summoner_kia_zm", player_struct.player, self, player_struct.weapon);
                            }
                        }
                    }
                }
                if (level flag::get(#"hash_7bbbf2ad970ee0c2")) {
                    level flag::set(#"hash_5081ca943f0cfe6a");
                }
            }
            waitframe(1);
        }
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 2, eflags: 0x2 linked
// Checksum 0x77599a2f, Offset: 0x9bd8
// Size: 0x460
function function_5aa5e0eb(var_ce68958a, var_f94a247f) {
    str_scene_name = undefined;
    switch (var_ce68958a.script_int) {
    case 1:
        str_scene_name = "aib_vign_cust_frbse_orda_siege";
        break;
    case 2:
        str_scene_name = "aib_vign_cust_frbse_orda_scorched";
        break;
    case 3:
        str_scene_name = "aib_vign_cust_frbse_orda_rocky";
        break;
    }
    if (isdefined(level.var_b72d51a8) && level.var_b72d51a8 <= 0 && isdefined(var_ce68958a.script_int)) {
        function_51bbdd7f();
        level thread function_4a5c7c33();
        level notify(#"hash_20426ed2f2666c50");
        switch (var_f94a247f) {
        case 1:
            level scene::play(str_scene_name, "idle_to_death_pos1");
            break;
        case 2:
            level scene::play(str_scene_name, "idle_to_death_pos2");
            break;
        case 3:
            level scene::play(str_scene_name, "idle_to_death_pos3");
            break;
        case 4:
            level scene::play(str_scene_name, "idle_to_death_pos4");
            break;
        }
        level scene::stop(str_scene_name, 1);
        arrayremovevalue(level.var_2ae05b05, level.orda);
        level.orda = undefined;
        level notify(#"hash_a88cb65d3952bc4");
    }
    if (isdefined(var_ce68958a.var_2b239c6f) && var_ce68958a.var_2b239c6f >= 4000) {
        level.orda clientfield::set("" + #"hash_2800af14ecd6c20c", 1);
        switch (var_f94a247f) {
        case 1:
            level scene::play(str_scene_name, "ascent_pos2");
            break;
        case 2:
            level scene::play(str_scene_name, "ascent_pos2");
            break;
        case 3:
            level scene::play(str_scene_name, "ascent_pos3");
            break;
        case 4:
            level scene::play(str_scene_name, "ascent_pos4");
            break;
        }
        level.orda clientfield::set("" + #"hash_2800af14ecd6c20c", 0);
        util::wait_network_frame();
        level scene::stop(str_scene_name, 1);
        level scene::delete_scene_spawned_ents(str_scene_name);
        arrayremovevalue(level.var_2ae05b05, level.orda);
        level.orda = undefined;
        level notify(#"hash_a88cb65d3952bc4");
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x6 linked
// Checksum 0x48b34769, Offset: 0xa040
// Size: 0x74
function private function_4a5c7c33() {
    self notify("48b03a40306d1bd7");
    self endon("48b03a40306d1bd7");
    level waittill(#"hash_f630acd8ed7aa5b");
    if (isdefined(level.orda)) {
        level.orda clientfield::set("" + #"hash_3ce728c2f6b351eb", 0);
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x6 linked
// Checksum 0x934889bd, Offset: 0xa0c0
// Size: 0x8c
function private function_74ec1b25(var_ce68958a) {
    if (!isdefined(var_ce68958a) || !isdefined(level.var_b72d51a8)) {
        return;
    }
    level thread function_e0a71864(var_ce68958a);
    level thread function_da4ac01c(var_ce68958a);
    level thread function_7b472b4b(var_ce68958a);
    level thread function_ca3b914c(var_ce68958a);
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 2, eflags: 0x6 linked
// Checksum 0x877e3d8, Offset: 0xa158
// Size: 0xa6
function private function_664ae25c(var_c1369554, var_d1da3a83) {
    target = undefined;
    switch (var_d1da3a83) {
    case #"player":
        a_players = function_a1ef346b();
        target = array::random(a_players);
        break;
    case #"support_machine":
        target = var_c1369554.mdl_support_machine;
        break;
    }
    return target;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x2 linked
// Checksum 0x1fa9843d, Offset: 0xa208
// Size: 0xd8
function function_7f4a72d3(var_d6c6799a) {
    level endon(#"hash_6b581cfde9207ac7");
    self notify("4d3b38417587ee28");
    self endon("4d3b38417587ee28");
    while (true) {
        level waittill(#"hash_56ffe8853a440793");
        if (isdefined(var_d6c6799a)) {
            self namespace_cc727a3b::function_4b462025(var_d6c6799a);
            continue;
        }
        a_players = function_a1ef346b();
        target = array::random(a_players);
        self namespace_cc727a3b::function_4b462025(target);
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x2 linked
// Checksum 0xc1b3de32, Offset: 0xa2e8
// Size: 0x78
function function_b3267a55() {
    level endon(#"hash_2815bf32fb443bc3", #"hash_a88cb65d3952bc4");
    while (true) {
        level waittill(#"hash_3a2a92fe9bc0fbf8");
        var_bb13ffb2 = 1;
        self namespace_cc727a3b::function_23e153fb(var_bb13ffb2);
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x2 linked
// Checksum 0x617ac3e7, Offset: 0xa368
// Size: 0x78
function function_46cbde38() {
    level endon(#"hash_2815bf32fb443bc3", #"hash_a88cb65d3952bc4");
    while (true) {
        level waittill(#"hash_22a69f5b4f32c3c7");
        var_bb13ffb2 = 0;
        self namespace_cc727a3b::function_23e153fb(var_bb13ffb2);
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x2 linked
// Checksum 0x44ca747a, Offset: 0xa3e8
// Size: 0x4c
function function_3e2d4d25() {
    self namespace_cc727a3b::function_f2b0a2e1();
    self thread function_59f665f9();
    self thread function_e4462869();
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x6 linked
// Checksum 0xb393730, Offset: 0xa440
// Size: 0x70
function private function_59f665f9() {
    level endon(#"hash_76814119df7d7c65");
    self notify("3e9d2dc12a16381a");
    self endon("3e9d2dc12a16381a");
    while (true) {
        level waittill(#"hash_220b65870e0506f0");
        self namespace_cc727a3b::function_2d86c7c9();
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x6 linked
// Checksum 0x88ffb2c4, Offset: 0xa4b8
// Size: 0xcc
function private function_e4462869() {
    self notify("43af3a08180eb562");
    self endon("43af3a08180eb562");
    s_waitresult = level waittill(#"hash_220b65870e0506f0", #"hash_76814119df7d7c65");
    if (s_waitresult._notify == #"hash_220b65870e0506f0") {
        level flag::set(#"hash_16edadbaf047de80");
        level waittill(#"hash_76814119df7d7c65");
    }
    level flag::clear(#"hash_16edadbaf047de80");
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x6 linked
// Checksum 0x30ccca5c, Offset: 0xa590
// Size: 0xf8
function private function_7b472b4b(var_ce68958a) {
    level endon(#"hash_2815bf32fb443bc3", #"hash_7892613c9b964540");
    if (!var_ce68958a flag::get(#"hash_2e9b9b15410a8c6a")) {
        function_900f82bd(var_ce68958a);
    }
    var_af9beb09 = var_ce68958a.var_af9beb09;
    while (!level flag::get(#"hash_6b46a8438582259d")) {
        var_af9beb09 notify(#"damage", {#amount:10});
        waitframe(1);
    }
    wait(2);
    level notify(#"hash_2815bf32fb443bc3");
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x6 linked
// Checksum 0x21ae4b64, Offset: 0xa690
// Size: 0x4a
function private function_51bbdd7f() {
    if (isdefined(level.orda)) {
        level.orda clientfield::set("" + #"hash_7a2578157328cf2b", 0);
        waitframe(1);
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x6 linked
// Checksum 0x21d73f20, Offset: 0xa6e8
// Size: 0x278
function private function_da4ac01c(var_ce68958a) {
    level endon(#"hash_2815bf32fb443bc3", #"hash_a88cb65d3952bc4");
    while (true) {
        if (level.var_b72d51a8 <= 0) {
            level notify(#"hash_7892613c9b964540");
            if (level flag::get(#"hash_7bbbf2ad970ee0c2")) {
                level flag::set(#"hash_5081ca943f0cfe6a");
            }
            level.orda animation::stop();
            break;
        }
        waitframe(1);
    }
    function_51bbdd7f();
    level notify(#"hash_20426ed2f2666c50");
    if (isdefined(var_ce68958a.script_int)) {
        level thread function_4a5c7c33();
        switch (var_ce68958a.script_int) {
        case 1:
            level scene::play("aib_vign_cust_frbse_orda_siege", "drain_to_death");
            level scene::stop("aib_vign_cust_frbse_orda_siege", 1);
            break;
        case 2:
            level scene::play("aib_vign_cust_frbse_orda_scorched", "drain_to_death");
            level scene::stop("aib_vign_cust_frbse_orda_scorched", 1);
            break;
        case 3:
            level scene::play("aib_vign_cust_frbse_orda_rocky", "drain_to_death");
            level scene::stop("aib_vign_cust_frbse_orda_rocky", 1);
            break;
        }
    }
    arrayremovevalue(level.var_2ae05b05, level.orda);
    level.orda = undefined;
    level notify(#"hash_a88cb65d3952bc4");
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x6 linked
// Checksum 0xc474cbca, Offset: 0xa968
// Size: 0x180
function private function_e0a71864(var_ce68958a) {
    level endon(#"hash_2815bf32fb443bc3", #"hash_a88cb65d3952bc4");
    var_ce68958a.script_int = int(var_ce68958a.script_int);
    level.orda clientfield::set("" + #"hash_7a2578157328cf2b", var_ce68958a.script_int);
    switch (var_ce68958a.script_int) {
    case 1:
        str_scene = #"aib_vign_cust_frbse_orda_siege";
        break;
    case 2:
        str_scene = #"aib_vign_cust_frbse_orda_scorched";
        break;
    case 3:
        str_scene = #"aib_vign_cust_frbse_orda_rocky";
        break;
    }
    while (!level flag::get(#"hash_6b46a8438582259d") && level.var_b72d51a8 > 0) {
        level scene::play(str_scene, "drain_loop");
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 1, eflags: 0x6 linked
// Checksum 0xe5dd9b9b, Offset: 0xaaf0
// Size: 0x1d8
function private function_ca3b914c(var_ce68958a) {
    level endon(#"hash_a88cb65d3952bc4");
    level waittill(#"hash_6b46a8438582259d");
    function_51bbdd7f();
    str_scene_name = undefined;
    switch (var_ce68958a.script_int) {
    case 1:
        str_scene_name = "aib_vign_cust_frbse_orda_siege";
        break;
    case 2:
        str_scene_name = "aib_vign_cust_frbse_orda_scorched";
        break;
    case 3:
        str_scene_name = "aib_vign_cust_frbse_orda_rocky";
        break;
    }
    level.orda clientfield::set("" + #"hash_2800af14ecd6c20c", 1);
    level scene::play(str_scene_name, "idle_pos_4");
    level scene::play(str_scene_name, "ascent_pos4");
    level.orda clientfield::set("" + #"hash_2800af14ecd6c20c", 0);
    util::wait_network_frame();
    level scene::delete_scene_spawned_ents(str_scene_name);
    arrayremovevalue(level.var_2ae05b05, level.orda);
    level.orda = undefined;
    level notify(#"hash_a88cb65d3952bc4");
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x6 linked
// Checksum 0xf383f782, Offset: 0xacd0
// Size: 0x10c
function private function_e58339b5() {
    level endon(#"hash_2815bf32fb443bc3", #"hash_a88cb65d3952bc4");
    while (true) {
        level waittill(#"hash_3a2a92fe9bc0fbf8");
        a_players = function_a1ef346b();
        foreach (player in a_players) {
            player thread clientfield::increment_to_player("" + #"hash_441fa29cf6f39e0a", 1);
        }
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x6 linked
// Checksum 0x937d3a57, Offset: 0xade8
// Size: 0x10c
function private function_dcd3d760() {
    level endon(#"hash_2815bf32fb443bc3", #"hash_a88cb65d3952bc4");
    while (true) {
        level waittill(#"hash_22a69f5b4f32c3c7");
        a_players = function_a1ef346b();
        foreach (player in a_players) {
            player thread clientfield::increment_to_player("" + #"hash_441fa29cf6f39e0a", 1);
        }
    }
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 13, eflags: 0x6 linked
// Checksum 0xfa1217f, Offset: 0xaf00
// Size: 0x1d2
function private function_b8f5e813(*einflictor, eattacker, idamage, *idflags, *smeansofdeath, weapon, *var_fd90b0bb, vpoint, *vdir, *shitloc, *psoffsettime, *iboneindex, *imodelindex) {
    tagorigin = self gettagorigin("j_neck");
    distsq = distancesquared(imodelindex, tagorigin);
    self.var_1c0ce945 = 0;
    if (distsq <= sqr(64) && level flag::get(#"hash_16edadbaf047de80")) {
        psoffsettime = int(psoffsettime * 2);
        self.var_1c0ce945 = 1;
    }
    if (isplayer(shitloc) && killstreaks::is_killstreak_weapon(iboneindex) && (iboneindex.name === #"remote_missile_missile" || iboneindex.name === #"remote_missile_bomblet")) {
        shitloc.remotemissilebda = undefined;
        shitloc.("remote_missile" + "_hitconfirmed") = 1;
    }
    return psoffsettime;
}

// Namespace namespace_b7a7e548/namespace_b7a7e548
// Params 0, eflags: 0x6 linked
// Checksum 0xeca28342, Offset: 0xb0e0
// Size: 0x1e4
function private function_e3c34a39() {
    var_141146d5 = spawncollision(#"collision_clip_64x64x256", "collider", self gettagorigin("j_ball_ri"), self gettagangles("j_ball_ri"));
    var_d19b6fbf = spawncollision(#"collision_clip_64x64x256", "collider", self gettagorigin("j_ball_le"), self gettagangles("j_ball_le"));
    var_141146d5 setscale(2);
    var_d19b6fbf setscale(2);
    var_141146d5 linkto(self, "j_ball_ri", (30, 0, 0), (0, 0, 90));
    var_d19b6fbf linkto(self, "j_ball_le", (-30, 0, 0), (0, 0, 90));
    level waittill(#"hash_2815bf32fb443bc3", #"hash_a88cb65d3952bc4");
    if (isdefined(var_141146d5)) {
        var_141146d5 delete();
    }
    if (isdefined(var_d19b6fbf)) {
        var_d19b6fbf delete();
    }
}

/#

    // Namespace namespace_b7a7e548/namespace_b7a7e548
    // Params 0, eflags: 0x0
    // Checksum 0x68c5b65, Offset: 0xb2d0
    // Size: 0xbc
    function function_cd7a3de4() {
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&cmd);
    }

    // Namespace namespace_b7a7e548/namespace_b7a7e548
    // Params 1, eflags: 0x0
    // Checksum 0x9b5fb0f7, Offset: 0xb398
    // Size: 0x1a2
    function cmd(cmd) {
        switch (cmd) {
        case #"hash_1e64361f28661d73":
            function_eed94aa6(1);
            break;
        case #"hash_1e6eb61f286f4b78":
            function_eed94aa6(2);
            break;
        case #"hash_1e6b421f286c5085":
            function_eed94aa6(3);
            break;
        case #"hash_2522663e19bd4101":
            level flag::set(#"hash_5a39afab1926d30d");
            function_eed94aa6(1);
            break;
        case #"hash_3a2ae92cb54707fb":
            level flag::set(#"hash_5a39afab1926d30d");
            function_eed94aa6(2);
            break;
        case #"hash_2f702d0907b38362":
            level flag::set(#"hash_5a39afab1926d30d");
            function_eed94aa6(3);
            break;
        default:
            break;
        }
    }

    // Namespace namespace_b7a7e548/namespace_b7a7e548
    // Params 1, eflags: 0x0
    // Checksum 0xce7ab93f, Offset: 0xb548
    // Size: 0xac
    function function_eed94aa6(index) {
        if (level flag::get(#"hash_7752d012501cd222")) {
            return;
        }
        level notify(#"hash_4d8079f4972e08d");
        level thread function_36ba4b03(index);
        if (!level flag::get("<unknown string>" + index)) {
            zm_power::turn_power_on_and_open_doors(index);
        }
    }

    // Namespace namespace_b7a7e548/namespace_b7a7e548
    // Params 1, eflags: 0x0
    // Checksum 0x1a39c843, Offset: 0xb600
    // Size: 0x136
    function function_db20f3c1(var_f57c3dea) {
        while (true) {
            color = (0, 1, 0);
            if (level flag::get(#"hash_5663e189d68932fc")) {
                color = (1, 0, 0);
            }
            if (var_f57c3dea flag::get(#"hash_3b82fec1d3d5a8fb")) {
                foreach (v_spawn in var_f57c3dea.var_2eb61c8a) {
                    sphere(v_spawn.origin, 10, color);
                }
            } else {
                circle(var_f57c3dea.origin, 20, color);
            }
            waitframe(1);
        }
    }

    // Namespace namespace_b7a7e548/namespace_b7a7e548
    // Params 1, eflags: 0x0
    // Checksum 0x35233048, Offset: 0xb740
    // Size: 0x10a
    function function_73a35d2a(s_goal) {
        while (true) {
            if (!s_goal flag::get(#"hash_60a48a427f6cbf61")) {
                circle(s_goal.origin, 10, (1, 0, 0));
            } else {
                foreach (v_goal in s_goal.var_6cc15b58) {
                    sphere(v_goal.origin, 10, (0, 1, 0));
                }
            }
            waitframe(1);
        }
    }

    // Namespace namespace_b7a7e548/namespace_b7a7e548
    // Params 0, eflags: 0x0
    // Checksum 0x438da0c8, Offset: 0xb858
    // Size: 0x414
    function function_999d2162() {
        if (!getdvarint(#"hash_31afdfdac44b3833", 0)) {
            return;
        }
        a_str_scenes = [#"aib_vign_cust_frbse_orda_siege", #"aib_vign_cust_frbse_orda_rocky", #"aib_vign_cust_frbse_orda_scorched"];
        a_str_shots = ["<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>"];
        foreach (str_scene in a_str_scenes) {
            foreach (str_shot in a_str_shots) {
                scene::add_scene_func(str_scene, &function_f239fa6c, str_shot);
                scene::add_scene_func(str_scene, &function_a28211b6, str_shot);
            }
        }
        a_str_shots = ["<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>"];
        foreach (str_scene in a_str_scenes) {
            foreach (str_shot in a_str_shots) {
                scene::add_scene_func(str_scene, &function_fb4fd407, str_shot);
            }
        }
    }

    // Namespace namespace_b7a7e548/namespace_b7a7e548
    // Params 1, eflags: 0x0
    // Checksum 0x9025b232, Offset: 0xbc78
    // Size: 0x24
    function function_fb4fd407(*a_ents) {
        level thread function_4a5c7c33();
    }

#/
