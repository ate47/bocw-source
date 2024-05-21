// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using script_19367cd29a4485db;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using script_3411bb48d41bd3b;
#using script_34ab99a4ca1a43d;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using script_27347f09888ad15;
#using script_340a2e805e35f7a2;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\ai\zombie_eye_glow.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_63c7213c;

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 0, eflags: 0x5
// Checksum 0x2fb8be36, Offset: 0x688
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_3c43448fdb77ea73", &preinit, undefined, undefined, #"content_manager");
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 0, eflags: 0x2 linked
// Checksum 0xcb7cfac0, Offset: 0x6d8
// Size: 0x1dc
function preinit() {
    if (!zm_utility::is_survival() && !zm_utility::is_classic()) {
        return;
    }
    if (is_true(getgametypesetting(#"hash_1e1a5ebefe2772ba"))) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_1e2b95e15661dad")) && !getdvarint(#"hash_730311c63805303a", 0) && !is_true(level.var_1d1a6e08)) {
        return;
    }
    clientfield::register("actor", "soul_capture_zombie_fire", 1, 1, "int");
    clientfield::register("scriptmover", "soul_capture_leave", 1, 1, "int");
    clientfield::register("scriptmover", "soul_capture_timer", 1, 1, "int");
    content_manager::register_script(#"soul_capture", &spawn_callback, 1);
    level.var_e31c7b0d = struct::get_array("soul_capture", "content_script_name");
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 1, eflags: 0x2 linked
// Checksum 0x6b33b0d5, Offset: 0x8c0
// Size: 0x564
function spawn_callback(s_instance) {
    if (!isdefined(level.var_8d314fbb)) {
        level.var_8d314fbb = &actor_damage_override;
    }
    level callback::add_callback(#"hash_594217387367ebb4", &function_a221b3a, s_instance);
    s_instance flag::clear("eater_spawning");
    s_instance flag::clear("eater_leaving");
    s_instance flag::clear("complete");
    s_instance.var_3f0d6dc1 = 0;
    s_instance.a_ai_zombies = [];
    s_instance.var_be8ed486 = [];
    s_instance.var_c9df36f = "takeoff level 0";
    s_capture_point = s_instance.contentgroups[#"capture_point"][0];
    s_instance.var_934133c0 = {#origin:s_capture_point.origin, #angles:s_capture_point.angles};
    s_instance.var_ed23159a = "front";
    s_instance.var_934133c0 scene::init("aib_t9_zm_dragonhead");
    s_instance.var_f9cc146 = s_instance.var_934133c0.scene_ents[#"dragon_head"];
    s_instance.var_f9cc146 hide();
    s_instance.var_f9cc146 notsolid();
    var_3bb47a83 = s_instance.contentgroups[#"hash_4d27846c8a4b01a1"][0];
    s_instance.var_5ea363c = content_manager::spawn_script_model(var_3bb47a83, #"hash_26730916f0bb7003", 1);
    s_instance.var_5ea363c disconnectpaths();
    s_instance.var_5ea363c clientfield::set("soul_capture_timer", 1);
    s_instance.var_5ea363c.var_bec42bc3 = util::spawn_model(#"hash_69c0563efeddad47", s_instance.var_5ea363c.origin, s_instance.var_5ea363c.angles);
    s_fx = s_instance.contentgroups[#"eyes"][0];
    s_instance.var_ff3e0c53 = content_manager::spawn_script_model(s_fx, "tag_origin");
    s_instance.var_ff3e0c53 linkto(s_instance.var_5ea363c);
    playfxontag(#"hash_56b5ae0fe9c0a0b3", s_instance.var_ff3e0c53, "tag_origin");
    s_instance.var_31309e7a = content_manager::spawn_script_model(s_fx, "tag_origin");
    s_instance.var_31309e7a linkto(s_instance.var_5ea363c);
    playfxontag(#"hash_1e6eecfa05dea663", s_instance.var_31309e7a, "tag_origin");
    s_instance.var_5ea363c thread scene::play("p9_fxanim_sv_dragon_console_bundle", "fuel init", s_instance.var_5ea363c);
    v_origin = getclosestpointonnavmesh(s_instance.contentgroups[#"boundary"][0].origin, 256);
    s_instance.spawn_points = namespace_85745671::function_e4791424(v_origin, 20, 64, 1000, 600);
    s_chest = s_instance.contentgroups[#"hash_6b1e5d8f9e70a70e"][0];
    s_chest.var_e234ef47 = zm_utility::function_f5a222a8(#"hash_3e50c9d06850fdcb", s_chest.origin);
    s_instance.trigger = content_manager::spawn_interact(s_instance.contentgroups[#"hash_3966465c498df3a6"][0], &function_3f808d3d, #"hash_78f3d8add33d8cc7", 500);
    s_instance.trigger.instance = s_instance;
    level thread function_f6ed3b36(s_instance);
    s_instance.trigger thread zm_utility::function_2256923f(500);
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 1, eflags: 0x2 linked
// Checksum 0x32f66050, Offset: 0xe30
// Size: 0x3c
function function_fa079914(*notifyhash) {
    level callback::function_52ac9652(#"on_actor_killed", &function_8448725f);
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 1, eflags: 0x2 linked
// Checksum 0x7087e00, Offset: 0xe78
// Size: 0x9c
function function_8448725f(params) {
    if (!is_true(self.var_2e85cbf2) || !isdefined(self.var_5d94c356) || is_true(self.var_ebe529a9) || !isplayer(params.eattacker)) {
        return;
    }
    level thread function_544f03e3(self.var_5d94c356);
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 1, eflags: 0x2 linked
// Checksum 0x1f66a5b7, Offset: 0xf20
// Size: 0x9dc
function function_3f808d3d(eventstruct) {
    if (is_true(self.b_started)) {
        return;
    }
    self endoncallback(&function_fa079914, #"death");
    level callback::function_d8abfc3d(#"on_actor_killed", &function_8448725f);
    player = eventstruct.activator;
    n_cost = 500;
    /#
        if (getdvarint(#"hash_730311c63805303a", 0)) {
            n_cost = 0;
        }
    #/
    if (isalive(player) && !player laststand::player_is_in_laststand()) {
        if (!player zm_score::can_player_purchase(n_cost)) {
            player playsoundtoplayer(#"zmb_no_cha_ching", player);
            return;
        }
        self.b_started = 1;
        self setinvisibletoall();
        instance = self.instance;
        instance endoncallback(&function_fa079914, #"complete", #"cleanup");
        instance flag::set("active");
        self callback::remove_on_trigger(&function_3f808d3d);
        player zm_score::minus_to_player_score(n_cost);
        instance thread function_3104e1a8();
        instance thread function_98382cc9();
        var_c309b891 = instance.contentgroups[#"boundary"][0];
        var_9899bfae = var_c309b891.origin;
        if (isdefined(instance.var_5ea363c.var_bec42bc3)) {
            instance.var_5ea363c.var_bec42bc3 delete();
        }
        instance.var_5ea363c.var_bec42bc3 = util::spawn_model(#"hash_4216483ed80d88bb", instance.var_5ea363c.origin, instance.var_5ea363c.angles);
        instance flag::wait_till(#"hash_1e3e4d1c77881b6c");
        if (isdefined(instance.var_5ea363c)) {
            instance.var_5ea363c clientfield::set("soul_capture_timer", 0);
        }
        function_14674c4f();
        n_time_elapsed = 0;
        n_start_time = gettime();
        while (n_time_elapsed < int(50 * 1000)) {
            wait(0.5);
            a_ai = getaiteamarray(level.zombie_team);
            a_ai = arraysortclosest(a_ai, var_9899bfae, undefined, 0, 1000);
            foreach (ai in a_ai) {
                if (!is_true(ai.var_2e85cbf2) && distancesquared(ai.origin, var_9899bfae) <= sqr(333)) {
                    instance function_bbc6c929(ai, 1);
                    continue;
                }
                if (is_true(ai.var_2e85cbf2) && distancesquared(ai.origin, var_9899bfae) > sqr(333)) {
                    instance function_bbc6c929(ai, 0);
                }
            }
            n_time_elapsed = gettime() - n_start_time;
            if (is_true(level.var_6a240880)) {
                break;
            }
        }
        instance flag::set(#"times_up");
        if (isdefined(instance.var_5ea363c)) {
            instance.var_5ea363c playsound(#"hash_5a2c52f1f2b57bf2");
        }
        foreach (ai in a_ai) {
            if (isalive(ai)) {
                instance function_bbc6c929(ai, 0);
                if (!is_true(ai.var_a950813d)) {
                    gibserverutils::annihilate(ai);
                    ai.allowdeath = 1;
                    ai kill(undefined, undefined, undefined, undefined, undefined, 1);
                }
                waitframe(1);
            }
        }
        if (isdefined(instance.var_48ab101)) {
            instance.var_48ab101 clientfield::set("soul_capture_timer", 0);
            instance.var_48ab101 thread util::deleteaftertimeandnetworkframe(1);
        }
        if (isdefined(instance.var_5ea363c)) {
            if (isdefined(instance.var_5ea363c.var_bec42bc3)) {
                instance.var_5ea363c.var_bec42bc3 delete();
            }
            instance.var_5ea363c.var_bec42bc3 = util::spawn_model(#"hash_2fb1773fccdfb090", instance.var_5ea363c.origin, instance.var_5ea363c.angles);
        }
        players = getplayers();
        if (isdefined(instance.var_3f0d6dc1) && isdefined(instance.var_53be7e08) && instance.var_3f0d6dc1 * instance.var_53be7e08 >= 15) {
            level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"event_complete", #nearbyplayers:1, #var_b0a57f8c:5000, #location:instance.origin});
            foreach (player in players) {
                player zm_stats::increment_challenge_stat(#"hash_30e4e9155368a6a9");
            }
        }
        foreach (player in players) {
            player zm_stats::function_945c7ce2(#"hash_165462f560a0538c", 1);
        }
        instance thread function_39280c7a();
        instance flag::set("complete");
    }
    level callback::function_52ac9652(#"on_actor_killed", &function_8448725f);
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 0, eflags: 0x2 linked
// Checksum 0x534cf45a, Offset: 0x1908
// Size: 0x40c
function function_98382cc9() {
    self endon(#"cleanup");
    self flag::set("eater_spawning");
    s_fx = self.contentgroups[#"eyes"][0];
    playfx(#"hash_2a096914a9161bb8", s_fx.origin, anglestoforward(s_fx.angles), anglestoup(s_fx.angles));
    earthquake(0.2, 6, self.var_f9cc146.origin, 512);
    playsoundatposition(#"hash_39088d45201c4160", self.var_f9cc146.origin);
    self.var_f9cc146 playrumblelooponentity(#"hash_7d1934b3d40a60c2");
    wait(1);
    var_c309b891 = self.contentgroups[#"boundary"][0];
    if (isdefined(var_c309b891)) {
        self.var_48ab101 = content_manager::spawn_script_model(var_c309b891, "tag_origin");
        self.var_48ab101 clientfield::set("soul_capture_timer", 1);
    }
    wait(1);
    self.var_f9cc146 show();
    self.var_f9cc146 solid();
    self util::delay(3, "cleanup", &flag::set, #"hash_1e3e4d1c77881b6c");
    self.var_934133c0 scene::play("aib_t9_zm_dragonhead", "dragonhead_intro", self.var_f9cc146);
    self flag::clear("eater_spawning");
    self.var_f9cc146 stoprumble(#"hash_7d1934b3d40a60c2");
    if (!self flag::get("looking_at_zombie")) {
        self thread function_21700f1d();
    }
    function_1eaaceab(self.a_ai_zombies);
    foreach (ai_zombie in self.a_ai_zombies) {
        ai_zombie thread namespace_85745671::function_9456addc(60);
    }
    /#
        if (getdvarint(#"hash_65645feb77b22343", 0)) {
            line(self.var_934133c0.origin, self.var_934133c0.origin + anglestoforward(self.var_934133c0.angles) * 150, undefined, undefined, undefined, 300);
        }
    #/
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 0, eflags: 0x2 linked
// Checksum 0x4b8a5ae5, Offset: 0x1d20
// Size: 0x162
function function_b8691499() {
    n_players = getplayers().size;
    /#
        var_4b08438 = getdvarint(#"hash_4b8ad6985e0ad109", 0);
        if (var_4b08438) {
            n_players = var_4b08438;
        }
    #/
    switch (n_players) {
    case 1:
        self.var_a4b9e38b = int(5);
        self.var_53be7e08 = 1.25;
        break;
    case 2:
        self.var_a4b9e38b = int(7);
        self.var_53be7e08 = 1;
        break;
    case 3:
        self.var_a4b9e38b = int(9);
        self.var_53be7e08 = 0.9;
    default:
        self.var_a4b9e38b = 10;
        self.var_53be7e08 = 0.8;
        break;
    }
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 13, eflags: 0x2 linked
// Checksum 0x8cf60d45, Offset: 0x1e90
// Size: 0x766
function actor_damage_override(*inflictor, attacker, damage, *flags, *meansofdeath, *weapon, *var_fd90b0bb, *vpoint, *vdir, *shitloc, *psoffsettime, *boneindex, *surfacetype) {
    var_9bcc82c8 = [];
    foreach (s_instance in level.var_e31c7b0d) {
        if (s_instance flag::get("active")) {
            if (!isdefined(var_9bcc82c8)) {
                var_9bcc82c8 = [];
            } else if (!isarray(var_9bcc82c8)) {
                var_9bcc82c8 = array(var_9bcc82c8);
            }
            var_9bcc82c8[var_9bcc82c8.size] = s_instance;
        }
    }
    if (var_9bcc82c8.size <= 0 || self.archetype != #"zombie" || !is_true(self.var_2e85cbf2)) {
        return surfacetype;
    }
    if (is_true(self.var_ebe529a9)) {
        return {#damage:0, #var_1918799e:1};
    }
    if (self.health - surfacetype <= 0 && isplayer(boneindex) && !boneindex laststand::player_is_in_laststand()) {
        var_ee56c5b = [];
        foreach (var_ab4a6bb5 in var_9bcc82c8) {
            if (!isdefined(var_ee56c5b)) {
                var_ee56c5b = [];
            } else if (!isarray(var_ee56c5b)) {
                var_ee56c5b = array(var_ee56c5b);
            }
            var_ee56c5b[var_ee56c5b.size] = var_ab4a6bb5.contentgroups[#"capture_point"][0];
        }
        var_8580c8fc = arraysortclosest(var_ee56c5b, self.origin);
        s_capture_point = var_8580c8fc[0];
        s_instance = s_capture_point.parent;
        if (isdefined(s_instance) && !s_instance flag::get("complete") && !s_instance flag::get("eater_leaving")) {
            if (!is_true(self.var_2e85cbf2)) {
                gibserverutils::annihilate(self);
                return surfacetype;
            }
            level thread function_544f03e3(s_instance);
            self.var_ebe529a9 = 1;
            if (self flag::get(#"hash_206b99f9504c6c41")) {
                return;
            }
            var_da0e5c76 = self;
            var_c4943182 = s_instance.var_f9cc146;
            var_32ae015c = s_instance.var_934133c0 math::get_dot_forward(self.origin) > 0;
            var_ca4c48f1 = s_instance.var_934133c0.origin + anglestoforward(s_instance.var_934133c0.angles) * 150;
            b_trace_passed = bullettracepassed(self util::get_eye(), var_ca4c48f1, 0, var_da0e5c76, var_c4943182);
            /#
                if (getdvarint(#"hash_65645feb77b22343", 0)) {
                    red = (0.9, 0.2, 0.2);
                    green = (0.2, 0.9, 0.2);
                    color = red;
                    if (b_trace_passed) {
                        color = green;
                    }
                    line(self util::get_eye(), var_ca4c48f1, color, undefined, undefined, 300);
                }
            #/
            var_f3a93cf1 = 0;
            if (var_32ae015c && b_trace_passed && !s_instance flag::get("eater_eating") && !s_instance flag::get("eater_spawning")) {
                s_instance flag::set("eater_eating");
                var_f3a93cf1 = 1;
            }
            self.var_a950813d = 1;
            self.var_98f1f37c = 1;
            self.no_powerups = 1;
            self val::set("soul_capture_allowdeath", "allowdeath", 0);
            self val::set("soul_capture_takedamage", "takedamage", 0);
            self val::set("soul_capture_ignoreme", "ignoreme", 1);
            self val::set("soul_capture_ignoreall", "ignoreall", 1);
            self notsolid();
            s_instance thread function_29db9d5f(self, boneindex, var_f3a93cf1);
            return (self.health - 1);
        }
    }
    return surfacetype;
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 1, eflags: 0x2 linked
// Checksum 0x10b73609, Offset: 0x2600
// Size: 0x38c
function function_544f03e3(s_instance) {
    s_instance.var_3f0d6dc1++;
    if (!isdefined(s_instance.var_5ea363c)) {
        return;
    }
    var_6e938f0b = int(s_instance.var_3f0d6dc1 * s_instance.var_53be7e08);
    switch (var_6e938f0b) {
    case 5:
        s_instance.var_2348a8fb = #"small";
        s_instance.var_91c84189 = #"p9_fxanim_zm_gp_chest_01_sml_bundle";
        s_instance.mdl_chest = #"p9_fxanim_zm_gp_chest_01_sml_low_xmodel";
        s_instance.var_dae71351 = 1;
        s_instance.var_c9df36f = "takeoff level 1";
        str_shot = "fuel level 1";
        s_instance.var_5ea363c playsound(#"hash_22ba30d426789fe");
        break;
    case 12:
        s_instance.var_2348a8fb = #"medium";
        s_instance.var_91c84189 = #"p9_fxanim_zm_gp_chest_01_med_bundle";
        s_instance.mdl_chest = #"p9_fxanim_zm_gp_chest_01_med_low_xmodel";
        s_instance.var_dae71351 = 2;
        s_instance.var_c9df36f = "takeoff level 2";
        str_shot = "fuel level 2";
        s_instance.var_5ea363c playsound(#"hash_d39ad0d4958aed2");
        break;
    case 20:
        s_instance.var_2348a8fb = #"large";
        s_instance.var_91c84189 = #"p9_fxanim_zm_gp_chest_01_lrg_bundle";
        s_instance.mdl_chest = #"p9_fxanim_zm_gp_chest_01_lrg_low_xmodel";
        s_instance.var_dae71351 = 3;
        s_instance.var_c9df36f = "takeoff level 3";
        str_shot = "fuel level 3";
        s_instance.var_5ea363c playsound(#"hash_2fa3cbab386aafa0");
        break;
    case 25:
        s_instance.var_2348a8fb = #"gold";
        s_instance.var_91c84189 = #"p9_fxanim_zm_gp_chest_01_lrg_bundle";
        s_instance.mdl_chest = #"hash_401a47741ffd646f";
        s_instance.var_dae71351 = 3;
        s_instance.var_c9df36f = "takeoff level 4";
        str_shot = "fuel level 4";
        s_instance.var_5ea363c playsound(#"hash_d2bc90d494ca10a");
        break;
    default:
        break;
    }
    if (isdefined(str_shot)) {
        s_instance.var_5ea363c scene::stop("p9_fxanim_sv_dragon_console_bundle");
        s_instance.var_5ea363c thread scene::play("p9_fxanim_sv_dragon_console_bundle", str_shot, s_instance.var_5ea363c);
    }
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 0, eflags: 0x2 linked
// Checksum 0x66ccb16, Offset: 0x2998
// Size: 0x2ec
function function_3104e1a8() {
    self endon(#"complete", #"cleanup", #"times_up");
    if (isdefined(level.var_b4f716df)) {
        self [[ level.var_b4f716df ]]();
    } else {
        self function_b8691499();
    }
    var_c309b891 = self.contentgroups[#"boundary"][0];
    while (true) {
        self thread function_acf692e();
        var_d484054 = 0;
        while (true) {
            var_68298325 = 0;
            a_e_players = function_a1ef346b(undefined, var_c309b891.origin, 3000);
            foreach (e_player in a_e_players) {
                if (!e_player laststand::player_is_in_laststand()) {
                    var_68298325 = 1;
                    break;
                }
            }
            if (var_68298325 && var_d484054) {
                break;
            }
            if (!var_68298325) {
                self notify(#"hash_3c93c17d2bec4686");
                function_1eaaceab(self.a_ai_zombies);
                foreach (ai_zombie in self.a_ai_zombies) {
                    if (!is_true(ai_zombie.var_a950813d)) {
                        if (isentity(ai_zombie)) {
                            gibserverutils::annihilate(ai_zombie);
                            ai_zombie.allowdeath = 1;
                            ai_zombie kill(undefined, undefined, undefined, undefined, undefined, 1);
                            waitframe(1);
                        }
                    }
                }
                if (!var_d484054) {
                    var_d484054 = 1;
                }
            }
            wait(1);
        }
    }
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 0, eflags: 0x2 linked
// Checksum 0xbca69169, Offset: 0x2c90
// Size: 0x360
function function_acf692e() {
    self notify("39b4056ae436c62e");
    self endon("39b4056ae436c62e");
    self endon(#"complete", #"hash_3c93c17d2bec4686", #"cleanup", #"times_up");
    var_2eb61c8a = arraycopy(self.spawn_points);
    str_list = "default_ambush_list_realm_" + level.realm;
    var_6443acc = namespace_679a22ba::function_77be8a83(str_list);
    while (true) {
        wait(randomfloatrange(0.25, 0.5));
        function_1eaaceab(self.a_ai_zombies);
        if (self.a_ai_zombies.size < self.var_a4b9e38b) {
            if (var_2eb61c8a.size <= 0) {
                var_2eb61c8a = arraycopy(self.spawn_points);
                var_2eb61c8a = array::randomize(var_2eb61c8a);
            }
            s_spawn = var_2eb61c8a[0];
            arrayremoveindex(var_2eb61c8a, 0);
            v_spawn = s_spawn.origin;
            var_4bf95f4c = namespace_679a22ba::function_ca209564(str_list, var_6443acc);
            if (!isdefined(var_4bf95f4c) || !isdefined(v_spawn)) {
                var_6443acc = namespace_679a22ba::function_77be8a83(str_list);
                var_2eb61c8a = arraycopy(self.spawn_points);
                continue;
            }
            ai_rusher = namespace_85745671::function_9d3ad056(var_4bf95f4c.var_990b33df, v_spawn, (0, randomfloat(360), 0), "soul_capture_zombie");
            if (isdefined(ai_rusher)) {
                if (!isdefined(self.a_ai_zombies)) {
                    self.a_ai_zombies = [];
                } else if (!isarray(self.a_ai_zombies)) {
                    self.a_ai_zombies = array(self.a_ai_zombies);
                }
                if (!isinarray(self.a_ai_zombies, ai_rusher)) {
                    self.a_ai_zombies[self.a_ai_zombies.size] = ai_rusher;
                }
                ai_rusher.var_4114a7c0 = 1;
                ai_rusher callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_df7d32bc);
                ai_rusher.wander_radius = 1000;
                ai_rusher.var_8661adfc = 1;
                ai_rusher thread namespace_85745671::function_9456addc(60);
            }
        }
    }
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 2, eflags: 0x2 linked
// Checksum 0xa8ce49d5, Offset: 0x2ff8
// Size: 0x364
function function_bbc6c929(ai_zombie, var_6be8a3b9 = 1) {
    function_1eaaceab(self.var_be8ed486);
    if (!is_true(ai_zombie.var_2e85cbf2) && var_6be8a3b9) {
        ai_zombie.var_2e85cbf2 = 1;
        ai_zombie.var_5d94c356 = self;
        ai_zombie thread util::delay(1, "death", &zombie_eye_glow::function_b43f92cd, 2);
        ai_zombie clientfield::set("soul_capture_zombie_fire", 1);
        if (!is_true(ai_zombie.var_4114a7c0)) {
            ai_zombie.var_4114a7c0 = 1;
            ai_zombie callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_df7d32bc);
        }
        if (!is_true(ai_zombie.var_8661adfc)) {
            ai_zombie.var_8661adfc = 1;
            ai_zombie thread namespace_85745671::function_9456addc(60);
        }
        if (!isdefined(self.a_ai_zombies)) {
            self.a_ai_zombies = [];
        } else if (!isarray(self.a_ai_zombies)) {
            self.a_ai_zombies = array(self.a_ai_zombies);
        }
        if (!isinarray(self.a_ai_zombies, ai_zombie)) {
            self.a_ai_zombies[self.a_ai_zombies.size] = ai_zombie;
        }
        if (!isdefined(self.var_be8ed486)) {
            self.var_be8ed486 = [];
        } else if (!isarray(self.var_be8ed486)) {
            self.var_be8ed486 = array(self.var_be8ed486);
        }
        if (!isinarray(self.var_be8ed486, ai_zombie)) {
            self.var_be8ed486[self.var_be8ed486.size] = ai_zombie;
        }
        return;
    }
    if (is_true(ai_zombie.var_2e85cbf2) && !var_6be8a3b9) {
        ai_zombie.var_2e85cbf2 = undefined;
        ai_zombie.var_5d94c356 = undefined;
        ai_zombie clientfield::set("soul_capture_zombie_fire", 0);
        ai_zombie.var_4114a7c0 = undefined;
        ai_zombie callback::function_52ac9652(#"hash_4afe635f36531659", &function_df7d32bc);
        ai_zombie.var_8661adfc = undefined;
        ai_zombie thread namespace_85745671::function_9456addc(60);
        arrayremovevalue(self.a_ai_zombies, ai_zombie);
        arrayremovevalue(self.var_be8ed486, ai_zombie);
    }
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 0, eflags: 0x2 linked
// Checksum 0xbf04a04f, Offset: 0x3368
// Size: 0xcc
function function_df7d32bc() {
    if (self.current_state.name == #"chase" && self.archetype == #"zombie") {
        var_8c6394e3 = "sprint";
        var_481bf1b8 = isdefined(level.var_b48509f9) ? level.var_b48509f9 : 1;
        if (var_481bf1b8 > 1 && math::cointoss(25)) {
            var_8c6394e3 = "super_sprint";
        }
        self namespace_85745671::function_9758722(var_8c6394e3);
    }
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 0, eflags: 0x2 linked
// Checksum 0xa338c13, Offset: 0x3440
// Size: 0x110
function function_21700f1d() {
    self endon(#"eater_leaving", #"looking_at_zombie", #"cleanup");
    self thread function_c57d25ff();
    str_scene = "aib_t9_zm_dragonhead";
    a_str_shots = array("dragonhead_idle", "dragonhead_idle_b", "dragonhead_idle_twitch_roar");
    while (!self flag::get("eater_leaving") && !self flag::get("looking_at_zombie")) {
        str_shot = array::random(a_str_shots);
        self.var_934133c0 scene::play(str_scene, str_shot);
    }
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 0, eflags: 0x2 linked
// Checksum 0x2a69df62, Offset: 0x3558
// Size: 0x136
function function_c57d25ff() {
    self endon(#"eater_leaving", #"looking_at_zombie", #"cleanup");
    var_f9cc146 = self.var_f9cc146;
    var_f9cc146 endon(#"death");
    while (true) {
        s_waitresult = var_f9cc146 waittill(#"dragon_side_front", #"dragon_side_left", #"dragon_side_right");
        switch (s_waitresult._notify) {
        case #"dragon_side_front":
            self.var_ed23159a = "front";
            break;
        case #"dragon_side_left":
            self.var_ed23159a = "left";
            break;
        case #"dragon_side_right":
            self.var_ed23159a = "right";
            break;
        }
    }
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 0, eflags: 0x2 linked
// Checksum 0x4e82d73f, Offset: 0x3698
// Size: 0x18c
function function_39280c7a() {
    self endon(#"cleanup");
    self flag::clear("active");
    self flag::set("eater_leaving");
    self flag::wait_till_clear_all(array("eater_spawning", "eater_eating"));
    self flag::clear("eater_leaving");
    if (isdefined(self.var_ff3e0c53)) {
        self.var_ff3e0c53 delete();
    }
    s_chest = self.contentgroups[#"hash_6b1e5d8f9e70a70e"][0];
    if (isdefined(s_chest) && isdefined(self.var_2348a8fb)) {
        s_chest.mdl_chest = self.mdl_chest;
        s_chest.var_422ae63e = self.var_91c84189;
        s_chest.var_dae71351 = self.var_dae71351;
        s_chest.var_cc1fb2d0 = namespace_58949729::function_fd5e77fa(self.var_2348a8fb);
        level thread namespace_58949729::function_25979f32(s_chest, 0, self);
    }
    self thread function_a221b3a();
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 3, eflags: 0x2 linked
// Checksum 0x24a1501f, Offset: 0x3830
// Size: 0x8cc
function function_29db9d5f(ai_zombie, e_killer, var_f3a93cf1 = 0) {
    self endon(#"cleanup");
    ai_zombie endoncallback(&function_64107d05, #"death");
    ai_zombie.instance = self;
    ai_zombie.var_c3e92aaf = 0;
    if (isplayer(e_killer) && isdefined(e_killer.origin[2]) && isdefined(ai_zombie.origin[2]) && ai_zombie.origin[2] - e_killer.origin[2] >= 200) {
        ai_zombie.var_c3e92aaf = 1;
    }
    v_death = ai_zombie.origin;
    ai_zombie disableaimassist();
    mdl_anchor = util::spawn_model("tag_origin", v_death, ai_zombie.angles);
    ai_zombie thread util::delete_on_death(mdl_anchor);
    ai_zombie.var_c1a29994 = mdl_anchor;
    ai_zombie linkto(mdl_anchor);
    ai_zombie.script_animname = "zombie_eaten";
    ai_zombie.targetname = "zombie_eaten";
    self thread function_fd47174(ai_zombie, mdl_anchor, var_f3a93cf1, e_killer);
    if (!var_f3a93cf1) {
        return;
    }
    self flag::set("looking_at_zombie");
    s_capture_point = self.contentgroups[#"capture_point"][0];
    var_7caa77 = vectordot(anglestoforward(self.var_934133c0.angles), vectornormalize(v_death - s_capture_point.origin));
    if (var_7caa77 > 0.85) {
        self.var_ed23159a = "right";
        var_a4fc6c63 = "dragonhead_pre_eat_f";
        var_51d51f4e = "dragonhead_consume_zombie_fwd";
    } else {
        var_8ecbd20e = vectordot(anglestoright(self.var_934133c0.angles), v_death - s_capture_point.origin);
        if (var_8ecbd20e > 0) {
            if (self.var_ed23159a == "left") {
                var_95663e8c = "dragonhead_pre_eat_l_2_r";
            }
            self.var_ed23159a = "right";
            var_a4fc6c63 = "dragonhead_pre_eat_r";
            var_51d51f4e = "dragonhead_consume_zombie_right";
        } else {
            if (self.var_ed23159a == "right") {
                var_95663e8c = "dragonhead_pre_eat_r_2_l";
            }
            self.var_ed23159a = "left";
            var_a4fc6c63 = "dragonhead_pre_eat_l";
            var_51d51f4e = "dragonhead_consume_zombie_left";
        }
    }
    var_d6a665db = "aib_t9_zm_dragonhead";
    if (isdefined(var_95663e8c)) {
        self.var_934133c0 scene::play(var_d6a665db, var_95663e8c);
    }
    var_ec3d3167 = gettime();
    self.var_934133c0 thread scene::play(var_d6a665db, var_a4fc6c63);
    self flag::wait_till("zombie_ready");
    self thread function_b2c1743d(ai_zombie);
    var_f9cc146 = self.var_f9cc146;
    var_a4a440a3 = "tag_mouth_fx_anim";
    var_6d57992d = var_f9cc146 gettagorigin(var_a4a440a3);
    var_462c2689 = vectortoangles(s_capture_point.origin - v_death);
    if (isdefined(mdl_anchor)) {
        n_move_dist = distance(var_6d57992d, mdl_anchor.origin);
        n_move_time = n_move_dist / 500;
        var_f415f7b8 = float(gettime() - var_ec3d3167) / 1000;
        var_4dd8873d = scene::function_8582657c(var_d6a665db, var_a4fc6c63) - var_f415f7b8;
        n_move_time = min(var_4dd8873d, n_move_time);
        n_move_time = max(n_move_time, 0.1);
        mdl_anchor moveto(var_6d57992d, n_move_time, n_move_time);
        mdl_anchor rotateto(var_462c2689, n_move_time, n_move_time);
        mdl_anchor waittilltimeout(n_move_time, #"movedone", #"death");
    }
    ai_zombie notify(#"hash_4ecc58f239a5807a");
    if (isdefined(self.var_5ea363c)) {
        self.var_5ea363c notify(#"hash_cfab9a5468a4911");
    }
    if (isdefined(mdl_anchor)) {
        mdl_anchor scene::stop();
    }
    ai_zombie scene::stop();
    if (isdefined(mdl_anchor)) {
        mdl_anchor delete();
    }
    self.var_934133c0 scene::play(var_d6a665db, var_51d51f4e, ai_zombie);
    if (isdefined(var_f9cc146)) {
        playfxontag(#"maps/zm_escape/fx8_wolf_soul_charge_impact", var_f9cc146, var_a4a440a3);
    }
    self flag::clear("eater_eating");
    self flag::clear("looking_at_zombie");
    self flag::clear("zombie_ready");
    if (!self flag::get("complete") && !self flag::get("times_up")) {
        self thread function_21700f1d();
    }
    if (is_true(ai_zombie.var_2e85cbf2)) {
        ai_zombie clientfield::set("soul_capture_zombie_fire", 0);
    }
    ai_zombie ghost();
    ai_zombie val::reset("soul_capture_allowdeath", "allowdeath");
    ai_zombie val::reset("soul_capture_takedamage", "takedamage");
    ai_zombie.allowdeath = 1;
    if (isplayer(e_killer)) {
        ai_zombie kill(ai_zombie.origin, e_killer, e_killer, undefined, undefined, 1);
        return;
    }
    ai_zombie kill(ai_zombie.origin, undefined, undefined, undefined, undefined, 1);
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 1, eflags: 0x2 linked
// Checksum 0xd1aa63b2, Offset: 0x4108
// Size: 0xa4
function function_64107d05(*notifyhash) {
    if (isdefined(self.var_c1a29994)) {
        self.var_c1a29994 delete();
    }
    if (isdefined(self.instance)) {
        self.instance flag::clear("eater_eating");
        self.instance flag::clear("looking_at_zombie");
        self.instance flag::clear("zombie_ready");
    }
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 4, eflags: 0x2 linked
// Checksum 0x3ccf634d, Offset: 0x41b8
// Size: 0x2a4
function function_fd47174(ai_zombie, mdl_anchor, var_f3a93cf1 = 0, e_killer) {
    self endon(#"cleanup");
    ai_zombie endon(#"death");
    mdl_anchor scene::play("ai_zm_esc_zombie_dreamcatch_rise_sr", "impact", ai_zombie);
    if (isdefined(self.var_f9cc146)) {
        self thread function_c2cda275(ai_zombie, mdl_anchor);
        var_1ace4b9e = self.var_f9cc146 gettagorigin("tag_mouth_fx_anim") - mdl_anchor.origin;
        var_1ace4b9e = vectorscale(var_1ace4b9e, 0.8);
        n_move_time = scene::function_8582657c("ai_zm_esc_zombie_dreamcatch_rise_sr", "rise");
        mdl_anchor moveto(mdl_anchor.origin + var_1ace4b9e, n_move_time, n_move_time);
        mdl_anchor waittilltimeout(n_move_time, #"movedone");
    }
    if (var_f3a93cf1) {
        self flag::set("zombie_ready");
        return;
    }
    ai_zombie val::reset("soul_capture_allowdeath", "allowdeath");
    ai_zombie val::reset("soul_capture_takedamage", "takedamage");
    gibserverutils::annihilate(ai_zombie);
    ai_zombie.allowdeath = 1;
    if (isplayer(e_killer)) {
        ai_zombie kill(ai_zombie.origin, e_killer, e_killer, undefined, undefined, 1);
        return;
    }
    ai_zombie kill(ai_zombie.origin, getplayers()[0], getplayers()[0], undefined, undefined, 1);
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 2, eflags: 0x2 linked
// Checksum 0x5e05f37a, Offset: 0x4468
// Size: 0xac
function function_c2cda275(ai_zombie, mdl_anchor) {
    self endon(#"cleanup");
    ai_zombie endon(#"death", #"hash_4ecc58f239a5807a");
    if (isdefined(mdl_anchor) && isdefined(ai_zombie)) {
        mdl_anchor scene::play("ai_zm_esc_zombie_dreamcatch_rise_sr", "rise", ai_zombie);
    }
    mdl_anchor scene::play("ai_zm_esc_zombie_dreamcatch_rise_sr", "shrink", ai_zombie);
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 1, eflags: 0x2 linked
// Checksum 0xcc631827, Offset: 0x4520
// Size: 0x166
function function_b2c1743d(ai_zombie) {
    self endon(#"cleanup");
    ai_zombie endon(#"death");
    while (true) {
        s_waitresult = ai_zombie waittill(#"gib = head", #"gib = arm_left", #"gib = arm_right", #"gib = leg_left");
        switch (s_waitresult._notify) {
        case #"gib = head":
            ai_zombie gibserverutils::gibhead(ai_zombie, 0);
            break;
        case #"gib = arm_left":
            ai_zombie gibserverutils::gibleftarm(ai_zombie, 0);
            break;
        case #"gib = arm_right":
            ai_zombie gibserverutils::gibrightarm(ai_zombie, 0);
            break;
        case #"gib = leg_left":
            ai_zombie gibserverutils::gibleftleg(ai_zombie, 0);
            break;
        }
    }
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 1, eflags: 0x2 linked
// Checksum 0xd25cfd5f, Offset: 0x4690
// Size: 0x518
function function_a221b3a(*var_273eefec) {
    var_5ea363c = self.var_5ea363c;
    if (!isdefined(var_5ea363c) || self flag::get("active")) {
        return;
    }
    var_5ea363c endon(#"death");
    if (isdefined(self.trigger)) {
        self.trigger delete();
    }
    if (isdefined(self.var_ff3e0c53)) {
        self.var_ff3e0c53 delete();
    }
    self.var_ff3e0c53 = content_manager::spawn_script_model(self.contentgroups[#"eyes"][0], #"tag_origin");
    self.var_ff3e0c53 linkto(var_5ea363c);
    playfxontag(#"hash_7e801405f1644de5", self.var_ff3e0c53, "tag_origin");
    if (self flag::get("times_up")) {
        self.var_934133c0 scene::play("aib_t9_zm_dragonhead", "dragonhead_outro", self.var_f9cc146);
        self.var_934133c0 scene::stop("aib_t9_zm_dragonhead", 1);
    }
    if (isdefined(var_5ea363c.var_bec42bc3)) {
        var_5ea363c.var_bec42bc3 linkto(var_5ea363c);
    }
    if (isdefined(self.var_31309e7a)) {
        self.var_31309e7a delete();
    }
    self.var_31309e7a = content_manager::spawn_script_model(self.contentgroups[#"eyes"][0], #"tag_origin");
    self.var_31309e7a linkto(var_5ea363c);
    playfxontag(#"hash_75b8555ea6711aff", self.var_31309e7a, "tag_origin");
    var_5ea363c clientfield::set("soul_capture_leave", 1);
    earthquake(0.1, 5, var_5ea363c.origin, 512);
    playrumbleonposition(#"artillery_rumble", var_5ea363c.origin);
    wait(1);
    playfxontag(#"hash_6041f3e753cd772e", self.var_31309e7a, "tag_origin");
    var_5ea363c connectpaths();
    self thread function_1ed83293(var_5ea363c.origin);
    s_chest = self.contentgroups[#"hash_6b1e5d8f9e70a70e"][0];
    if (isdefined(s_chest.var_e234ef47) && !isdefined(self.mdl_chest)) {
        zm_utility::function_bc5a54a8(s_chest.var_e234ef47);
        s_chest.var_e234ef47 = undefined;
    }
    var_5ea363c scene::play("p9_fxanim_sv_dragon_console_bundle", self.var_c9df36f, var_5ea363c);
    var_5ea363c clientfield::set("soul_capture_leave", 0);
    var_5ea363c thread util::deleteaftertimeandnetworkframe();
    if (isdefined(var_5ea363c.var_bec42bc3)) {
        var_5ea363c.var_bec42bc3 delete();
    }
    if (isdefined(self.var_31309e7a)) {
        self.var_31309e7a delete();
    }
    if (isdefined(self.var_ff3e0c53)) {
        self.var_ff3e0c53 delete();
    }
    if (isdefined(self.var_f9cc146)) {
        self.var_f9cc146 delete();
    }
    if (isdefined(self.var_bec42bc3)) {
        self.var_bec42bc3 delete();
    }
    level notify(#"hash_18fb4885eb2d3bdd");
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 1, eflags: 0x6 linked
// Checksum 0xf843faf7, Offset: 0x4bb0
// Size: 0x224
function private function_1ed83293(v_loc) {
    self endon(#"hash_4ff1a851360e18da", #"cleanup");
    wait(2.5);
    self util::delay_notify(3, #"hash_4ff1a851360e18da");
    while (isdefined(self.var_5ea363c)) {
        a_players = getplayers();
        foreach (player in a_players) {
            if (zm_utility::is_player_valid(player)) {
                n_distsq = distancesquared(v_loc, player.origin);
                if (n_distsq <= sqr(200)) {
                    player dodamage(4, v_loc, undefined, undefined, undefined, "MOD_BURNED");
                    player function_bc82f900("damage_heavy");
                    continue;
                }
                if (n_distsq <= sqr(450)) {
                    player dodamage(2, v_loc, undefined, undefined, undefined, "MOD_BURNED");
                    player function_bc82f900("damage_light");
                }
            }
        }
        wait(0.1);
    }
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 0, eflags: 0x2 linked
// Checksum 0x7e8afa80, Offset: 0x4de0
// Size: 0x2ac
function function_149da5dd() {
    self callback::function_52ac9652(#"hash_345e9169ebba28fb", &function_149da5dd);
    self notify(#"cleanup");
    self flag::clear("active");
    s_chest = self.contentgroups[#"hash_6b1e5d8f9e70a70e"][0];
    if (isdefined(s_chest.var_e234ef47)) {
        zm_utility::function_bc5a54a8(s_chest.var_e234ef47);
        s_chest.var_e234ef47 = undefined;
    }
    namespace_58949729::function_ccf9be41(self);
    self.var_934133c0 scene::stop("aib_t9_zm_dragonhead", 1);
    var_c3d060a6 = arraycombine(self.a_ai_zombies, self.var_be8ed486);
    function_1eaaceab(var_c3d060a6);
    foreach (ai_cleanup in var_c3d060a6) {
        ai_cleanup val::reset("soul_capture_allowdeath", "allowdeath");
        ai_cleanup val::reset("soul_capture_takedamage", "takedamage");
        ai_cleanup clientfield::set("soul_capture_zombie_fire", 0);
        ai_cleanup.allowdeath = 1;
        ai_cleanup kill(undefined, undefined, undefined, undefined, undefined, 1);
    }
    if (isdefined(self.var_5ea363c)) {
        namespace_85745671::function_b70e2a37(self.var_5ea363c);
        self.var_5ea363c clientfield::set("soul_capture_leave", 0);
        self.var_5ea363c thread util::delayed_delete(1);
    }
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 1, eflags: 0x2 linked
// Checksum 0x4ad3ee0d, Offset: 0x5098
// Size: 0x94
function function_f6ed3b36(instance) {
    var_c0a0c72d = instance.contentgroups[#"hole"][0];
    level.var_2606686d = content_manager::spawn_script_model(var_c0a0c72d, #"hash_6e1380f2de74e0e6", 0, 0);
    level.var_2606686d hide();
    callback::on_spawned(&on_player_spawned);
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 0, eflags: 0x2 linked
// Checksum 0x56b77a6f, Offset: 0x5138
// Size: 0x34
function on_player_spawned() {
    self callback::function_d8abfc3d(#"grenade_fired", &function_6e33721e);
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 1, eflags: 0x6 linked
// Checksum 0x1f684da3, Offset: 0x5178
// Size: 0x154
function private function_6e33721e(eventstruct) {
    if (!isplayer(self)) {
        return;
    }
    grenade = eventstruct.projectile;
    s_result = grenade waittill(#"death", #"grenade_bounce", #"grenade_stuck");
    if (s_result._notify == "death") {
        return;
    }
    if (s_result.entity === level.var_2606686d || s_result.hitent === level.var_2606686d) {
        /#
            iprintlnbold("dragonhead_consume_zombie_right");
        #/
        level thread function_6bee2a79(grenade.origin, vectortoangles(s_result.normal));
        grenade hide();
        grenade deletedelay();
    }
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 2, eflags: 0x6 linked
// Checksum 0x4edd6371, Offset: 0x52d8
// Size: 0xb4
function private function_6bee2a79(v_loc, v_angles) {
    dropstruct = {#origin:v_loc, #angles:v_angles};
    dropstruct namespace_65181344::function_fd87c780(#"sr_harvesting_zombie_essence_small_infinite", 5, 3);
    /#
        if (getdvarint(#"hash_730311c63805303a", 0)) {
            return;
        }
    #/
    function_14674c4f();
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 0, eflags: 0x6 linked
// Checksum 0x7ddf365e, Offset: 0x5398
// Size: 0xf4
function private function_14674c4f() {
    callback::remove_on_spawned(&on_player_spawned);
    foreach (player in getplayers()) {
        player callback::function_52ac9652(#"grenade_fired", &function_6e33721e);
    }
    if (isdefined(level.var_2606686d)) {
        level.var_2606686d delete();
    }
}

