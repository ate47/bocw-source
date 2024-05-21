// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using script_2f560596a9a134ab;
#using scripts\zm_common\trials\zm_trial_disable_buys.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_score.gsc;
#using script_437ce686d29bb81b;
#using scripts\zm_common\zm_intel.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\scoreevents.gsc;
#using scripts\zm_common\callbacks.gsc;
#using script_2de5679484626dc8;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\zombie.gsc;
#using script_7f6cd71c43c45c57;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_f0b43eb5;

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x5
// Checksum 0x7fe16848, Offset: 0x450
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_1c32fc6c324d3e66", &preinit, undefined, undefined, #"zm_unitrigger");
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x680cecee, Offset: 0x4a0
// Size: 0x50c
function preinit() {
    var_f41005d2 = getentarray("dac_trial_borders", "script_noteworthy");
    foreach (var_ad145a6e in var_f41005d2) {
        var_ad145a6e hide();
        var_ad145a6e notsolid();
    }
    if (!zm_utility::function_36e7b4a2()) {
        return;
    }
    level.var_996e8a57 = zm_dac_challenges_hud::register();
    level.var_94b8d201 = [];
    level.var_572d28a8 = 0;
    level.var_d3a8f03b = 500;
    if (zm_utility::is_survival()) {
        level.var_957b495e = 300;
        content_manager::register_script("dac_trial_computer", &function_1296cf27);
    } else {
        level.var_957b495e = 90;
    }
    clientfield::register("scriptmover", "" + #"hash_653b5827e6fbe5f9", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_21f5fab6a3d22093", 1, 3, "int");
    clientfield::register("scriptmover", "" + #"hash_3dbe7851af541017", 1, 1, "int");
    clientfield::register("toplayer", "" + #"hash_31bea9cf1e6f76a0", 1, getminbitcountfornum(level.var_957b495e), "int");
    clientfield::register("toplayer", "" + #"hash_216c75103f478671", 1, 4, "int");
    if (zm_utility::is_survival()) {
        clientfield::register("scriptmover", "" + #"hash_33c54759cc1e7a71", 1, 1, "int");
    }
    level flag::init("fl_challenges_active");
    level thread function_ca842288();
    level thread function_d60e999d();
    callback::on_connect(&on_player_connect);
    callback::on_ai_killed(&on_ai_killed);
    callback::on_player_damage(&function_52588bfe);
    callback::on_bleedout(&function_2bf355c2);
    callback::on_disconnect(&function_2bf355c2);
    callback::add_callback(#"parachute", &function_7f35fb38);
    callback::on_item_pickup(&function_cc254d94);
    callback::on_spawned(&on_player_spawned);
    /#
        level thread function_37597f29();
    #/
    namespace_f999c142::init();
    level.var_8b7ab859 = 1000;
    zm_audio::musicstate_create("dac_challenge", 4, "challenge_1", "challenge_2");
    zm_audio::function_e441162b("dac_challenge");
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x7f826de8, Offset: 0x9b8
// Size: 0x89c
function function_ca842288() {
    create_challenge(#"hash_25a76ab3d0a73b03", level.var_957b495e, undefined, undefined, #"hash_77b13ae8ed00abd4");
    create_challenge(#"hash_1db5106df3c3c0c4", level.var_957b495e, undefined, undefined, #"hash_690b442afa94cfc1");
    create_challenge(#"hash_4b4ab7b6cf4d87c", level.var_957b495e, undefined, undefined, #"hash_70e7e390e97fd050");
    if (!zm_utility::is_survival()) {
        create_challenge(#"hash_4cc252a7609d289", level.var_957b495e, undefined, undefined, #"hash_798ece4e5fb19658", undefined, &function_8576b59f);
        create_challenge(#"hash_6105e103a3189287", level.var_957b495e, undefined, undefined, #"hash_519ac5a8b2182c8a", undefined, &function_c8657c04);
    }
    create_challenge(#"hash_1bba6b368675561e", level.var_957b495e, undefined, undefined, #"hash_5c2c60f47f190bab");
    create_challenge(#"hash_62bc7c158375f1f2", level.var_957b495e, undefined, undefined, #"hash_726c7237d4e6659d");
    create_challenge(#"hash_63791b9ae55043b5", level.var_957b495e, undefined, undefined, #"hash_42edeeac988cb858", undefined, &function_8dbbbce8);
    create_challenge(#"hash_5ab9ff1ebbf2de17", level.var_957b495e, undefined, undefined, #"hash_361ed27b00fa1720");
    create_challenge(#"hash_4af69b7011fd4702", level.var_957b495e, undefined, undefined, #"hash_39a11eff01c71b70");
    if (zm_utility::is_survival()) {
        create_challenge(#"hash_6c9f941878e99c63", level.var_957b495e, undefined, undefined, #"hash_55d3f65e1aec7cb8");
        create_challenge(#"hash_6541d5a40f6a8dcc", level.var_957b495e, undefined, undefined, #"hash_6f38f4aabdf7ce05", undefined, &function_9f1cd9be);
        create_challenge(#"hash_41722fe0656b9a5f", level.var_957b495e, undefined, undefined, #"hash_5f1293299ad026b4");
        create_challenge(#"hash_749e36c2ffef5f86", level.var_957b495e, undefined, undefined, #"hash_58e5f20f443f45d9");
        create_challenge(#"hash_72b2e5815bcbcc12", level.var_957b495e, undefined, undefined, #"hash_850d5d8c8ce6ce1");
        create_challenge(#"hash_388a24efa2077ef6", level.var_957b495e, undefined, undefined, #"hash_3fad812b31318123");
        if (level.script !== "mp_dune" && level.script !== "mp_black_sea" && level.script !== "mp_tundra") {
            create_challenge(#"hash_710afd3a5e44458f", level.var_957b495e, undefined, undefined, #"hash_352d04c831a4f99a", undefined, &function_9c1479ad);
        }
    }
    level.var_2dffd020 = 0;
    if (zm_utility::is_survival()) {
        level flag::wait_till(#"hash_55a791d84b66b221");
        var_c6d25878 = &zm_utility::function_f5a222a8;
        level thread function_66d92f6(1);
    } else {
        level.var_107cca82 = getent("trial_terminal", "targetname");
        if (!isdefined(level.var_107cca82)) {
            return;
        }
        level.var_107cca82 setmodel(#"p9_fxanim_zm_gp_dac_xmodel");
        zm_utility::function_ca960904(level.var_107cca82);
        callback::function_74872db6(&function_5c5d14f2);
        level.var_f654fb0f = getentarray("reward_terminal", "targetname");
        var_c6d25878 = &zm_utility::function_4a4cf79a;
    }
    if (!isdefined(level.var_107cca82) || !isarray(level.var_f654fb0f) || level.var_f654fb0f.size < 4) {
        return;
    }
    array::run_all(level.var_f654fb0f, &function_e1dd6a53, #"off");
    var_f255c928 = level.var_107cca82 zm_unitrigger::create(&function_5586b077, (80, 80, 80), &function_6d69e771);
    var_f255c928.origin += (0, 0, 40);
    if (isdefined(level.var_6b3764b5)) {
        var_f255c928.origin += anglestoforward(level.var_107cca82.angles) * level.var_6b3764b5;
    }
    zm_unitrigger::unitrigger_force_per_player_triggers(level.var_107cca82.s_unitrigger, 1);
    level.var_107cca82.n_obj_id = [[ var_c6d25878 ]](#"hash_3632525bd692cfc8", level.var_107cca82);
    if (!isdefined(level.var_d2bdec66)) {
        level.var_d2bdec66 = 0;
    }
    level.var_edbe6a7f = [];
    level.var_edbe6a7f[0] = 0;
    level.var_edbe6a7f[1] = 0;
    level.var_edbe6a7f[2] = 0;
    level.var_edbe6a7f[3] = 0;
    level thread game_over();
    level flag::wait_till("start_zombie_round_logic");
    array::thread_all(getplayers(), &clientfield::set_to_player, "" + #"hash_216c75103f478671", 0);
    level flag::set("fl_challenges_active");
    level.var_107cca82 thread scene::play(#"p9_fxanim_zm_gp_dac_bundle", level.var_107cca82);
    function_111530dd();
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0x1a0aaf8e, Offset: 0x1260
// Size: 0x2cc
function function_2b436554(destination) {
    if (!zm_utility::function_36e7b4a2()) {
        return;
    }
    level.var_5de83c5b = [];
    var_e2599f45 = [];
    foreach (location in destination.locations) {
        instance = location.instances[#"dac_trial_computer"];
        if (isdefined(instance)) {
            if (!isdefined(level.var_5de83c5b)) {
                level.var_5de83c5b = [];
            } else if (!isarray(level.var_5de83c5b)) {
                level.var_5de83c5b = array(level.var_5de83c5b);
            }
            level.var_5de83c5b[level.var_5de83c5b.size] = instance;
            var_e7f5b3e0 = 1;
            if (isdefined(instance.var_501bc8c9)) {
                var_2685dd6d = strtok(instance.var_501bc8c9, ", ");
                foreach (var_a2593226 in var_2685dd6d) {
                    if (level.contentmanager.var_1fcbdf50 === var_a2593226) {
                        var_e7f5b3e0 = 0;
                        break;
                    }
                }
            }
            if (var_e7f5b3e0) {
                if (!isdefined(var_e2599f45)) {
                    var_e2599f45 = [];
                } else if (!isarray(var_e2599f45)) {
                    var_e2599f45 = array(var_e2599f45);
                }
                var_e2599f45[var_e2599f45.size] = instance;
            }
        }
    }
    instance = array::random(var_e2599f45);
    if (isdefined(instance)) {
        level.var_28daae89 = instance;
        content_manager::spawn_instance(instance);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0x8414deac, Offset: 0x1538
// Size: 0x304
function function_1296cf27(instance) {
    var_f1646bb = instance.contentgroups[#"dac_trial_computer"][0];
    var_d690f2be = isdefined(instance.contentgroups[#"hash_3b68487ef7d135d7"]) ? instance.contentgroups[#"hash_3b68487ef7d135d7"] : [];
    if (!isdefined(var_f1646bb)) {
        assertmsg("<unknown string>" + instance.targetname);
        return;
    }
    if (!isarray(var_d690f2be) || var_d690f2be.size < 4) {
        assertmsg("<unknown string>" + 4 + "<unknown string>" + instance.targetname);
        return;
    }
    level.var_107cca82 = content_manager::spawn_script_model(var_f1646bb, var_f1646bb.model, 1, 1);
    level.var_107cca82 clientfield::set("" + #"hash_33c54759cc1e7a71", 1);
    level.var_107cca82.targetname = "trial_terminal";
    level.var_f654fb0f = [];
    foreach (var_d616c136 in var_d690f2be) {
        var_a9e49f25 = content_manager::spawn_script_model(var_d616c136, var_d616c136.model, 1, 1);
        var_a9e49f25.target = var_d616c136.target2;
        var_a9e49f25.targetname = "reward_terminal";
        if (!isdefined(level.var_f654fb0f)) {
            level.var_f654fb0f = [];
        } else if (!isarray(level.var_f654fb0f)) {
            level.var_f654fb0f = array(level.var_f654fb0f);
        }
        level.var_f654fb0f[level.var_f654fb0f.size] = var_a9e49f25;
    }
    util::wait_network_frame();
    level flag::set(#"hash_55a791d84b66b221");
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x4652bce3, Offset: 0x1848
// Size: 0x11a
function function_5c5d14f2() {
    if (!isdefined(level.var_107cca82) || !isdefined(level.round_number)) {
        return;
    }
    switch (level.round_number) {
    case 11:
    case 17:
    case 28:
    case 33:
    case 41:
    case 49:
    case 58:
    case 69:
    case 75:
        function_66d92f6(2);
        break;
    default:
        function_66d92f6(1);
        break;
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 2, eflags: 0x2 linked
// Checksum 0x94a67e35, Offset: 0x1970
// Size: 0x24c
function function_66d92f6(n_sequence = 1, n_delay) {
    self notify("9aaf51885593c75");
    self endon("9aaf51885593c75");
    if (!isdefined(level.var_107cca82)) {
        return;
    }
    if (n_sequence == 2) {
        level.var_107cca82 playloopsound(#"hash_6a9177839f11ac2c");
        if (level.var_107cca82 isattached(#"hash_1a9f65484a9fb8de", "tag_origin")) {
            level.var_107cca82 detach(#"hash_1a9f65484a9fb8de", "tag_origin");
        }
        if (isdefined(n_delay)) {
            wait(n_delay);
        }
        if (!level.var_107cca82 isattached(#"hash_1a9f64484a9fb72b", "tag_origin")) {
            level.var_107cca82 attach(#"hash_1a9f64484a9fb72b", "tag_origin");
        }
        return;
    }
    if (level.var_107cca82 isattached(#"hash_1a9f64484a9fb72b", "tag_origin")) {
        level.var_107cca82 detach(#"hash_1a9f64484a9fb72b", "tag_origin");
    }
    if (isdefined(n_delay)) {
        wait(n_delay);
    }
    if (!level.var_107cca82 isattached(#"hash_1a9f65484a9fb8de", "tag_origin")) {
        level.var_107cca82 attach(#"hash_1a9f65484a9fb8de", "tag_origin");
    }
    level.var_107cca82 stoploopsound();
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0xa9e946fb, Offset: 0x1bc8
// Size: 0x8a
function on_player_connect() {
    if (!isbot(self) || getdvarint(#"hash_1ca7459bb8b222dd", 0)) {
        self.var_642ed51a = undefined;
        self.var_94041ad9 = 0;
        self thread function_73143c19();
    }
    if (!isdefined(self.var_c8413949)) {
        self.var_c8413949 = 0;
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x7423998c, Offset: 0x1c60
// Size: 0xfa
function on_player_spawned() {
    if (!is_true(self.var_837be526) && isdefined(level.var_c345b118)) {
        n_time_remaining = level.var_957b495e - float(gettime() - level.var_c345b118) / 1000;
        self clientfield::set_to_player("" + #"hash_31bea9cf1e6f76a0", int(n_time_remaining));
    }
    if (is_true(self.var_fcd07f0a)) {
        self.var_94041ad9 = 1;
        self thread function_73143c19();
    }
    self.var_837be526 = 1;
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x103ffae4, Offset: 0x1d68
// Size: 0x662
function function_73143c19() {
    self notify("5984e9d85bba9518");
    self endon("5984e9d85bba9518");
    self endon(#"death");
    if (!isdefined(self.var_9e09931e)) {
        self.var_9e09931e = 0;
    }
    var_5eee41ed = zm_utility::is_survival() && namespace_cf6efd05::function_85b812c9();
    level flag::wait_till("fl_challenges_active");
    n_index = self getentitynumber();
    if (isdefined(self.var_94041ad9) && !self.var_94041ad9) {
        if ((!isdefined(level.var_edbe6a7f[n_index]) || level.var_edbe6a7f[n_index] != 0) && isdefined(self.n_tribute)) {
            level.var_edbe6a7f[n_index] = 0;
            self thread function_2bf355c2();
        }
    }
    n_tribute = level.var_edbe6a7f[n_index];
    if (!var_5eee41ed && (is_true(self.var_94041ad9) || !isdefined(self.n_tribute))) {
        self namespace_f999c142::set_tribute(0);
    }
    if (n_tribute > 0 || is_active()) {
        util::wait_network_frame();
        if (n_tribute > 0) {
            self function_2bb8d916();
        }
        if (is_active()) {
            self set_challenge_text(level.s_active_challenge.var_4365b81b, isdefined(level.s_active_challenge.var_4e0096cd) ? level.s_active_challenge.var_4e0096cd : level.var_2c5f83d);
            self function_b4759cf8();
        }
    }
    if (is_true(self.var_94041ad9)) {
        self.var_6b3806e8 = 0;
        self.var_207f01b0 = 0;
    } else {
        if (!isdefined(self.var_6b3806e8)) {
            self.var_6b3806e8 = 0;
        }
        if (!isdefined(self.var_207f01b0)) {
            self.var_207f01b0 = 0;
        }
    }
    if (!isdefined(self.var_642ed51a)) {
        self.var_642ed51a = self function_662458e();
        if (isdefined(self.var_642ed51a)) {
            var_2d7950ce = struct::get_array(self.var_642ed51a.target, "targetname");
            foreach (target in var_2d7950ce) {
                if (target.script_noteworthy === "loot_origin") {
                    self.var_642ed51a.var_e3345cac = target;
                    continue;
                }
                if (target.script_noteworthy === "reward_origin" && !isdefined(self.var_642ed51a.var_f693bf0b)) {
                    self.var_642ed51a.var_f693bf0b = util::spawn_model("tag_origin", target.origin, target.angles);
                }
            }
            namespace_f999c142::function_ab6fd86c(self, self.var_642ed51a);
        }
    }
    switch (level.var_2dffd020) {
    case 0:
        self clientfield::set_to_player("" + #"hash_216c75103f478671", 0);
        break;
    case 3:
    case 4:
        self clientfield::set_to_player("" + #"hash_216c75103f478671", 1);
        break;
    case 1:
        self clientfield::set_to_player("" + #"hash_216c75103f478671", 2);
        break;
    case 2:
        self clientfield::set_to_player("" + #"hash_216c75103f478671", 3);
        break;
    }
    if (var_5eee41ed) {
        level flag::wait_till(#"initial_fade_in_complete");
        if (isdefined(self.n_tribute)) {
            self function_432b2abf();
            self namespace_f999c142::set_tribute(self.n_tribute);
            self namespace_f999c142::function_53a333a8();
        }
        if (self.var_9e09931e != 0) {
            self function_d38641f1();
        }
    }
    self.var_fcd07f0a = 1;
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x39524cad, Offset: 0x23d8
// Size: 0x2c0
function function_111530dd() {
    switch (level.var_d2bdec66) {
    case 0:
        var_7b667696 = 60;
        break;
    case 1:
        var_7b667696 = 40;
        break;
    case 2:
        var_7b667696 = 20;
        break;
    default:
        var_7b667696 = 0;
        break;
    }
    n_round_number = zm_utility::get_round_number();
    if (isdefined(level.var_64d3d5c4) && (getdvarint(#"hash_1ca7459bb8b222dd", 0) || level.var_d2bdec66 < 3 && n_round_number >= 5 && math::cointoss(var_7b667696))) {
        level.var_2dffd020 = 2;
        foreach (player in getplayers()) {
            if (player function_34ebccf9()) {
                continue;
            }
            player clientfield::set_to_player("" + #"hash_216c75103f478671", 3);
        }
        return;
    }
    level.var_2dffd020 = 1;
    foreach (player in getplayers()) {
        if (player function_34ebccf9()) {
            continue;
        }
        player clientfield::set_to_player("" + #"hash_216c75103f478671", 2);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x80c4b108, Offset: 0x26a0
// Size: 0x270
function function_662458e() {
    self endon(#"disconnect");
    if (!isdefined(self.teammateindex) || self.teammateindex <= 0 || self.teammateindex > 4) {
        self waittill(#"hash_606be34c407533f6");
    }
    if (isdefined(self.teammateindex)) {
        n_index = self.teammateindex - 1;
    } else {
        n_index = self getentitynumber();
    }
    var_3cbf62f9 = level.var_f654fb0f[n_index];
    if (!isdefined(var_3cbf62f9)) {
        println("<unknown string>" + n_index + "<unknown string>");
        var_3cbf62f9 = level.var_f654fb0f[3];
        if (!isdefined(var_3cbf62f9)) {
            assertmsg("<unknown string>" + n_index + "<unknown string>" + level.script + "<unknown string>" + 4 + "<unknown string>");
            return;
        }
    }
    switch (n_index) {
    case 0:
    default:
        var_3cbf62f9.str_color = #"purple";
        break;
    case 1:
        var_3cbf62f9.str_color = #"orange";
        break;
    case 2:
        var_3cbf62f9.str_color = #"green";
        break;
    case 3:
        var_3cbf62f9.str_color = #"blue";
        break;
    }
    var_3cbf62f9 function_e1dd6a53(#"hash_60d06afd31a5f9f8");
    var_3cbf62f9 zm_utility::function_ca960904(var_3cbf62f9);
    return var_3cbf62f9;
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0x7671bd68, Offset: 0x2918
// Size: 0x36a
function function_e1dd6a53(state = #"off") {
    self detachall();
    self stoploopsound();
    if (state == "off") {
        self attach(#"hash_446f663e43201d9b", "tag_origin");
        self stoploopsound();
        return;
    }
    if (state == #"hash_60d06afd31a5f9f8") {
        switch (self.str_color) {
        case #"purple":
            self attach(#"hash_43292371d31fedb3", "tag_origin");
            break;
        case #"orange":
            self attach(#"hash_50312a908be08ab7", "tag_origin");
            break;
        case #"green":
            self attach(#"hash_2a42c45bfee6fa40", "tag_origin");
            break;
        case #"blue":
            self attach(#"hash_7200223e9e420ef1", "tag_origin");
            break;
        }
        return;
    }
    switch (self.str_color) {
    case #"purple":
        self attach(#"hash_2650753cfce243b4", "tag_origin");
        self playloopsound("amb_dac_happy_happy");
        break;
    case #"orange":
        self attach(#"hash_365ca0e0327ab1e0", "tag_origin");
        self playloopsound("amb_dac_happy_happy");
        break;
    case #"green":
        self attach(#"hash_1759c27356868ed1", "tag_origin");
        self playloopsound("amb_dac_happy_happy");
        break;
    case #"blue":
        self attach(#"hash_63e150d3e5e0d45e", "tag_origin");
        self playloopsound("amb_dac_happy_happy");
        break;
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0xe83be307, Offset: 0x2c90
// Size: 0x1c
function function_2bb8d916() {
    self namespace_f999c142::function_ae2c0ba5();
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x0
// Checksum 0x80e3ef7, Offset: 0x2cb8
// Size: 0xac
function function_2ed00fa6(reward_terminal) {
    a_players = getplayers();
    foreach (player in a_players) {
        if (player.var_642ed51a === reward_terminal) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0x20c0d51f, Offset: 0x2d70
// Size: 0xc4
function function_52588bfe(params) {
    self endon(#"end_game");
    amount = params.idamage;
    if (isdefined(amount) && amount > 0) {
        self.var_d5e64932 = gettime() / 1000;
        if (is_challenge_active(#"hash_11b4177e0f079bb6") && params.eattacker.team === level.zombie_team) {
            self thread function_673cba18(#"hash_11b4177e0f079bb6", amount);
        }
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0x5473adae, Offset: 0x2e40
// Size: 0xf2c
function on_ai_killed(s_params) {
    e_player = s_params.eattacker;
    str_hit_loc = s_params.shitloc;
    weapon = s_params.weapon;
    means_of_death = s_params.smeansofdeath;
    if (isplayer(e_player)) {
        if (is_challenge_active(#"hash_25a76ab3d0a73b03")) {
            if (means_of_death == "MOD_MELEE" || means_of_death == "MOD_MELEE_WEAPON_BUTT" || means_of_death == "MOD_MELEE_ASSASSINATE") {
                e_player namespace_f999c142::function_53a333a8(#"hash_25a76ab3d0a73b03");
            }
            return;
        }
        if (is_challenge_active(#"hash_1db5106df3c3c0c4")) {
            if (weapon.inventorytype === #"offhand") {
                e_player namespace_f999c142::function_53a333a8(#"hash_1db5106df3c3c0c4");
            }
            return;
        }
        if (is_challenge_active(#"hash_4b4ab7b6cf4d87c") && zm_utility::is_headshot(weapon, str_hit_loc, means_of_death)) {
            e_player namespace_f999c142::function_53a333a8(#"hash_4b4ab7b6cf4d87c");
            return;
        }
        if (is_challenge_active(#"hash_7cb657a5f657cbbe") || is_challenge_active(#"hash_756817dc68da56e9") || is_challenge_active(#"hash_2272d4303498d425") || is_challenge_active(#"hash_795ccb5ead8f853e") || is_challenge_active(#"hash_7e17eba37f893fb4") || is_challenge_active(#"hash_7f0be97960376eb0") || is_challenge_active(#"hash_aee5cb4bd88c4ee") || is_challenge_active(#"hash_7e80a8ea892ec8c4") || is_challenge_active(#"hash_beba8c495ad1123") || is_challenge_active(#"hash_47d7bcdc94e2be1c") || is_challenge_active(#"hash_26e32893218f3cc2") || is_challenge_active(#"hash_363ccc9296a0bb43") || is_challenge_active(#"hash_97ec7cda4d126e") || is_challenge_active(#"hash_6f756be1d18c8aa2") || is_challenge_active(#"hash_184d4b8beb6f528b") || is_challenge_active(#"hash_3e9969bc134d9826") || is_challenge_active(#"hash_105665bf3108e0b7") || is_challenge_active(#"hash_56e1564956312dad") || is_challenge_active(#"hash_1f416069b6f9a5e6") || is_challenge_active(#"hash_4d9891e9a69464ea") || is_challenge_active(#"hash_7469b8c6c972754c") || is_challenge_active(#"hash_5df8fa6c4c17d16e") || is_challenge_active(#"hash_2b478144197ed6a6") || is_challenge_active(#"hash_5a916e5585f562bb") || is_challenge_active(#"hash_24ddbd878df00902") || is_challenge_active(#"hash_39c9629b7028ed5d") || is_challenge_active(#"hash_33b83c4a38a3bdca") || is_challenge_active(#"hash_10eb3850b26d48c") || is_challenge_active(#"hash_402b667a503d4ccb") || is_challenge_active(#"hash_39e9787c0de0daf1") || is_challenge_active(#"hash_1677444e91d1c67b") || is_challenge_active(#"hash_453a742eed680932") || is_challenge_active(#"hash_30c036366e17895") || is_challenge_active(#"hash_2c457fb4d5c4a3b9") || is_challenge_active(#"hash_6cda1bb2296c5334") || is_challenge_active(#"hash_6f2d55d2d3f4d404")) {
            level thread function_5e882c6f(e_player, self.origin);
            return;
        }
        if (is_challenge_active(#"hash_1bba6b368675561e")) {
            if (e_player getstance() == "crouch") {
                e_player namespace_f999c142::function_53a333a8(#"hash_1bba6b368675561e", level.var_8b7ab859 * 0.01);
            }
            return;
        }
        if (is_challenge_active(#"hash_62bc7c158375f1f2")) {
            if (!e_player playerads() && means_of_death !== "MOD_MELEE" && means_of_death !== "MOD_MELEE_WEAPON_BUTT" && means_of_death !== "MOD_CRUSH" && !isvehicle(s_params.einflictor)) {
                if (weapon.name === #"hero_pineapplegun" || weapon.name === #"sig_bow_flame" || (weapon.inventorytype === #"dwlefthand" || weapon.inventorytype === #"primary" || weapon.inventorytype === #"altmode") && !killstreaks::is_killstreak_weapon(weapon)) {
                    e_player namespace_f999c142::function_53a333a8(#"hash_62bc7c158375f1f2", level.var_8b7ab859 * 0.01);
                }
            }
            return;
        }
        if (is_challenge_active(#"hash_5ab9ff1ebbf2de17")) {
            if (distance2dsquared(e_player.origin, self.origin) <= 122500) {
                e_player namespace_f999c142::function_53a333a8(#"hash_5ab9ff1ebbf2de17", level.var_8b7ab859 * 0.02);
            }
            return;
        }
        if (is_challenge_active(#"hash_4af69b7011fd4702")) {
            if (e_player === level.chopper_gunner.owner || isdefined(e_player.origin) && isdefined(self.origin) && e_player.origin[2] > self.origin[2] + 50) {
                e_player namespace_f999c142::function_53a333a8(#"hash_4af69b7011fd4702", level.var_8b7ab859 * 0.02);
            }
            return;
        }
        if (is_challenge_active(#"hash_6c9f941878e99c63")) {
            n_distance = scoreevents::get_distance_for_weapon(weapon);
            if (isdefined(n_distance) && n_distance > 0 && distancesquared(e_player.origin, self.origin) >= n_distance) {
                e_player namespace_f999c142::function_53a333a8(#"hash_6c9f941878e99c63", level.var_8b7ab859 * 0.03);
            }
            return;
        }
        if (is_challenge_active(#"hash_6541d5a40f6a8dcc") && (isvehicle(s_params.einflictor) || is_true(s_params.einflictor.weapon.var_29d24e37))) {
            if (isvehicle(s_params.einflictor)) {
                var_e6d713ec = s_params.einflictor;
            } else if (is_true(s_params.einflictor.weapon.var_29d24e37)) {
                foreach (player in function_a1ef346b()) {
                    if (player isinvehicle() && s_params.einflictor.owner === player) {
                        var_e6d713ec = player getvehicleoccupied();
                        break;
                    }
                }
            }
            foreach (player in function_a1ef346b()) {
                if (player isinvehicle()) {
                    var_80730518 = player getvehicleoccupied();
                    if (var_80730518 === var_e6d713ec) {
                        player namespace_f999c142::function_53a333a8(#"hash_6541d5a40f6a8dcc", level.var_8b7ab859 * 0.02);
                    }
                }
            }
            return;
        }
        if (is_challenge_active(#"hash_749e36c2ffef5f86") && (self.var_6f84b820 === #"special" || self.var_6f84b820 === #"elite")) {
            e_player namespace_f999c142::function_53a333a8(#"hash_749e36c2ffef5f86", level.var_8b7ab859 * 0.25);
            return;
        }
        if (is_challenge_active(#"hash_72b2e5815bcbcc12") && self.current_state.name !== #"chase") {
            e_player namespace_f999c142::function_53a333a8(#"hash_72b2e5815bcbcc12", level.var_8b7ab859 * 0.1);
        }
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0xd5ea017a, Offset: 0x3d78
// Size: 0x24
function function_7f35fb38(*params) {
    self thread function_284f537c();
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x6 linked
// Checksum 0x883cbca3, Offset: 0x3da8
// Size: 0x10e
function private function_284f537c() {
    self notify("721124f491a058cb");
    self endon("721124f491a058cb");
    self endon(#"death");
    for (var_4944ff9 = 0; true; var_4944ff9 += float(function_60d95f53()) / 1000) {
        if (is_challenge_active(#"hash_388a24efa2077ef6") && self isparachuting()) {
            if (var_4944ff9 >= 2) {
                self namespace_f999c142::function_53a333a8(#"hash_388a24efa2077ef6", level.var_8b7ab859 * 0.015);
                var_4944ff9 = 0;
            }
        } else {
            return;
        }
        waitframe(1);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x6 linked
// Checksum 0xa431b7e0, Offset: 0x3ec0
// Size: 0xe4
function private function_cc254d94(params) {
    if (is_challenge_active(#"hash_41722fe0656b9a5f") && (params.item.itementry.itemtype === #"survival_essence" || params.item.itementry.itemtype === #"survival_scrap") && isplayer(params.player)) {
        params.player namespace_f999c142::function_53a333a8(#"hash_41722fe0656b9a5f", level.var_8b7ab859 * 0.1);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 8, eflags: 0x2 linked
// Checksum 0xa2dd43a0, Offset: 0x3fb0
// Size: 0x360
function create_challenge(var_38f795c7, var_6346e7b, zonenames, weaponname, var_e09af826, var_3df4e085, var_205fe3e6, func_end) {
    if (is_true(level.var_6ff1cc71[var_38f795c7])) {
        return;
    }
    if (namespace_cf6efd05::function_85b812c9()) {
        var_17dd988a = namespace_cf6efd05::function_21d402f4(#"hash_774b5f9b053e5af", var_38f795c7);
        if (isdefined(var_17dd988a) && var_17dd988a > 0) {
            n_count = var_17dd988a;
        }
    }
    s_challenge = {#str_name:var_38f795c7, #var_4427ebb1:zonenames, #var_6346e7b:var_6346e7b, #n_count:isdefined(n_count) ? n_count : 0, #var_4365b81b:var_e09af826, #var_8edbca81:weaponname, #var_3df4e085:var_3df4e085, #var_c376bcd5:var_205fe3e6, #var_3e17832:func_end};
    if (!isdefined(level.var_94b8d201)) {
        level.var_94b8d201 = [];
    } else if (!isarray(level.var_94b8d201)) {
        level.var_94b8d201 = array(level.var_94b8d201);
    }
    if (!isinarray(level.var_94b8d201, s_challenge)) {
        level.var_94b8d201[level.var_94b8d201.size] = s_challenge;
    }
    level.var_94b8d201 = array::randomize(level.var_94b8d201);
    var_f8f0b389 = struct::get(var_3df4e085);
    if (isdefined(var_f8f0b389.target)) {
        hidemiscmodels(var_f8f0b389.target);
        var_77cd2496 = getentarray(var_f8f0b389.target, "targetname");
        array::run_all(var_77cd2496, &hide);
        array::run_all(var_77cd2496, &notsolid);
    }
    /#
        var_7ab69ae2 = function_9e72a96(var_38f795c7);
        level thread util::add_debug_command("<unknown string>" + var_7ab69ae2 + "<unknown string>" + var_7ab69ae2 + "<unknown string>");
    #/
    return s_challenge;
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x0
// Checksum 0x3f6b52d7, Offset: 0x4318
// Size: 0xbc
function function_f528e34a(var_3df4e085) {
    var_f8f0b389 = struct::get(var_3df4e085);
    if (isdefined(var_f8f0b389.target)) {
        hidemiscmodels(var_f8f0b389.target);
        var_77cd2496 = getentarray(var_f8f0b389.target, "targetname");
        array::run_all(var_77cd2496, &hide);
        array::run_all(var_77cd2496, &notsolid);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0xaf66f671, Offset: 0x43e0
// Size: 0x7c
function function_65390598(player) {
    if (player zm_score::can_player_purchase(level.var_d3a8f03b)) {
        player globallogic::function_d96c031e();
        return;
    }
    if (self zm_utility::function_4f593819(player)) {
        player globallogic::function_d1924f29(#"hash_6e3ae7967dc5d414");
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0xa791732b, Offset: 0x4468
// Size: 0x206
function function_5586b077(e_player) {
    if (is_true(e_player.var_a77f845b)) {
        e_player globallogic::function_d96c031e();
        return false;
    } else if (is_true(e_player.var_11507a67)) {
        var_9137c22c = e_player zm_utility::function_d6046228(#"hash_62ce0492bff3907b", #"hash_4be3e681b9e66331");
        self sethintstringforplayer(e_player, var_9137c22c);
        self function_65390598(e_player);
        return true;
    } else if (level.var_2dffd020 == 0) {
        self sethintstringforplayer(e_player, #"hash_b81e285f17abe6");
        e_player globallogic::function_d96c031e();
        return true;
    } else if (level.var_2dffd020 == 1 || level.var_2dffd020 == 2) {
        if (level.var_2dffd020 == 2) {
            self sethintstringforplayer(e_player, #"hash_1fbfa2022387011d", level.var_d3a8f03b);
        } else {
            self sethintstringforplayer(e_player, #"hash_1d71f5286d92646", level.var_d3a8f03b);
        }
        self function_65390598(e_player);
        return true;
    }
    e_player globallogic::function_d96c031e();
    return false;
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0xaf1f2d0c, Offset: 0x4678
// Size: 0x1bc
function function_6d69e771() {
    self endon(#"death");
    while (true) {
        waitresult = self waittill(#"trigger");
        e_player = waitresult.activator;
        if (!zm_utility::can_use(e_player, 0)) {
            continue;
        }
        if (zm_trial_disable_buys::is_active()) {
            continue;
        }
        if (e_player function_34ebccf9()) {
            e_player notify(#"hash_811de57ec6a72cd");
            e_player function_bc82f900(#"zm_interact_rumble");
            continue;
        }
        if (level.var_2dffd020 == 1 || level.var_2dffd020 == 2) {
            if (e_player zm_score::can_player_purchase(level.var_d3a8f03b)) {
                level.var_107cca82 playsound(#"hash_564affa7c572ff4c");
                e_player function_bc82f900(#"zm_interact_rumble");
                e_player thread zm_score::minus_to_player_score(level.var_d3a8f03b);
                level thread start_challenge(e_player);
                level.var_c6ab748f = 0;
            }
        }
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0x80ef2c44, Offset: 0x4840
// Size: 0x134
function start_challenge(e_player) {
    if (isdefined(level.s_active_challenge)) {
        stop_challenge();
        waitframe(1);
    }
    if (isdefined(e_player)) {
        s_challenge = get_challenge(e_player);
    }
    if (!isdefined(s_challenge)) {
        return;
    }
    waitframe(1);
    foreach (player in getplayers()) {
        player thread function_34b03961(1);
    }
    level thread function_8f0594cb(s_challenge);
    level thread function_445c5438();
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0x20496665, Offset: 0x4980
// Size: 0x1be
function stop_challenge(var_d46ce3db = 0) {
    level thread function_23853783();
    stop_timer();
    if (isdefined(level.s_active_challenge.var_3e17832)) {
        level [[ level.s_active_challenge.var_3e17832 ]]();
    }
    wait(0.1);
    level.s_active_challenge = undefined;
    foreach (player in getplayers()) {
        player thread function_7e30f24c();
        player playlocalsound(#"hash_7645f386d2902a9c");
        if (var_d46ce3db) {
            player thread function_34b03961();
            continue;
        }
        player clientfield::set_to_player("" + #"hash_216c75103f478671", 2);
    }
    function_111530dd();
    level notify(#"hash_53f7c8af221e6090");
    waitframe(1);
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x83974018, Offset: 0x4b48
// Size: 0x40
function function_34ebccf9() {
    if (is_true(self.var_11507a67) || is_true(self.var_a77f845b)) {
        return true;
    }
    return false;
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0x17b9651, Offset: 0x4b90
// Size: 0x596
function function_34b03961(var_851cec80 = 0) {
    self endon(#"disconnect");
    if (self function_34ebccf9()) {
        return;
    }
    if (var_851cec80) {
        self clientfield::set_to_player("" + #"hash_216c75103f478671", 1);
        return;
    }
    if (level.var_2dffd020 === 4 && isdefined(self.var_207f01b0) && self.var_207f01b0 >= 0.2 && self.var_c8413949 < 3) {
        var_d5fa8477 = zm_intel::function_2bcfd899(#"hash_71c51f24f7f3037d", self);
        if (isdefined(var_d5fa8477)) {
            var_19a3087c = getscriptbundle(var_d5fa8477);
        }
        if (!isdefined(var_19a3087c)) {
            if (level.var_2dffd020 === 3 || level.var_2dffd020 === 4) {
                self clientfield::set_to_player("" + #"hash_216c75103f478671", 1);
                return;
            }
            if (level.var_2dffd020 == 2) {
                self clientfield::set_to_player("" + #"hash_216c75103f478671", 3);
                return;
            }
            self clientfield::set_to_player("" + #"hash_216c75103f478671", 2);
            return;
        }
        self.var_11507a67 = 1;
        self.var_207f01b0 = 0;
        switch (var_19a3087c.var_9be0526e) {
        case #"hash_daeb8129dc8e394":
            var_3e22312c = 4;
            var_2a2ba09f = 5;
            break;
        case #"audiolog":
            var_3e22312c = 6;
            var_2a2ba09f = 7;
            break;
        case #"hash_20ea75a25d912949":
            var_3e22312c = 8;
            var_2a2ba09f = 9;
            break;
        }
        self clientfield::set_to_player("" + #"hash_216c75103f478671", var_3e22312c);
        self function_c21d733d(1);
        self waittill(#"hash_811de57ec6a72cd");
        self function_c21d733d(0);
        self.var_11507a67 = undefined;
        self.var_a77f845b = 1;
        self clientfield::set_to_player("" + #"hash_216c75103f478671", var_2a2ba09f);
        wait(0.5);
        var_49b86cc = gettime();
        self.var_c8413949++;
        self zm_intel::collect_intel(var_d5fa8477, undefined, level.var_107cca82);
        var_ca10d547 = gettime() - var_49b86cc;
        if (var_ca10d547 < 8000) {
            wait(float(8000 - var_ca10d547) / 1000);
        }
        self.var_a77f845b = undefined;
        if (level.var_2dffd020 === 3 || level.var_2dffd020 === 4) {
            self clientfield::set_to_player("" + #"hash_216c75103f478671", 1);
        } else if (level.var_2dffd020 == 2) {
            self clientfield::set_to_player("" + #"hash_216c75103f478671", 3);
        } else {
            self clientfield::set_to_player("" + #"hash_216c75103f478671", 2);
        }
    } else if (level.var_2dffd020 === 3 || level.var_2dffd020 === 4) {
        self clientfield::set_to_player("" + #"hash_216c75103f478671", 1);
    } else if (level.var_2dffd020 === 2) {
        self clientfield::set_to_player("" + #"hash_216c75103f478671", 3);
    } else {
        self clientfield::set_to_player("" + #"hash_216c75103f478671", 2);
    }
    self.var_207f01b0 = 0;
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0xe06c9497, Offset: 0x5130
// Size: 0x41c
function function_8f0594cb(s_challenge) {
    level endon(#"hash_53f7c8af221e6090");
    if (level.var_2dffd020 == 2) {
        level.var_2dffd020 = 4;
        level.var_d2bdec66++;
        /#
            iprintlnbold("<unknown string>" + level.var_d2bdec66 + "<unknown string>");
        #/
    } else {
        level.var_2dffd020 = 3;
    }
    level.s_active_challenge = s_challenge;
    level.var_62ecc169 = float(gettime()) / 1000;
    foreach (player in getplayers()) {
        player playlocalsound(#"hash_747fc6d3b1a2412a");
        player.var_6b3806e8 = 0;
        player thread set_challenge_text(level.s_active_challenge.var_4365b81b);
    }
    if (isdefined(level.s_active_challenge.var_c376bcd5)) {
        level thread [[ level.s_active_challenge.var_c376bcd5 ]]();
    }
    n_timer = s_challenge.var_6346e7b + 1;
    start_timer(n_timer);
    var_fe2d05ca = 0;
    var_f5b7ce0e = 0;
    n_time_remaining = n_timer;
    while (n_time_remaining > 0) {
        if (!var_fe2d05ca && level flag::get(#"hash_2f702f46336d6832")) {
            var_fe2d05ca = 1;
            stop_timer();
            function_23853783();
        } else if (var_fe2d05ca && !level flag::get(#"hash_2f702f46336d6832")) {
            var_fe2d05ca = 0;
            start_timer(n_time_remaining);
            if (!var_f5b7ce0e) {
                function_445c5438();
            }
        }
        if (level flag::get(#"hash_2f702f46336d6832")) {
            waitframe(1);
            continue;
        }
        if (n_time_remaining <= 10) {
            if (!var_f5b7ce0e) {
                function_23853783();
                var_f5b7ce0e = 1;
            }
            if (n_time_remaining == 1) {
                array::run_all(getplayers(), &playlocalsound, #"hash_5952b2eecab41e38");
            } else {
                array::run_all(getplayers(), &playlocalsound, #"hash_4474c2da74d7cdb9");
            }
        }
        n_time_remaining -= 1;
        wait(1);
    }
    stop_challenge(1);
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x0
// Checksum 0xc93f5ab, Offset: 0x5558
// Size: 0x2b8
function function_f51adffa() {
    level.var_be2ff8ca = zm_utility::function_d7db256e(level.s_active_challenge.var_3df4e085, #"hash_17223bc71432a43e", 1, &function_de2e76c4);
    level.s_active_challenge.var_ad12d5bf = level.s_active_challenge.var_4427ebb1;
    if (!isdefined(level.s_active_challenge.var_ad12d5bf)) {
        level.s_active_challenge.var_ad12d5bf = [];
    } else if (!isarray(level.s_active_challenge.var_ad12d5bf)) {
        level.s_active_challenge.var_ad12d5bf = array(level.s_active_challenge.var_ad12d5bf);
    }
    level.var_4427ebb1 = level.s_active_challenge.var_ad12d5bf[0];
    vol_override = getent("dac_trial_volume_" + level.var_4427ebb1, "targetname");
    assert(isdefined(level.var_aa3b88c5), "<unknown string>");
    level.var_2c5f83d = [[ level.var_aa3b88c5 ]](level.var_4427ebb1);
    /#
        iprintlnbold("<unknown string>");
    #/
    foreach (player in getplayers()) {
        player thread function_d7362784(level.s_active_challenge.str_name, level.s_active_challenge.var_ad12d5bf, vol_override);
        player thread set_challenge_text(level.s_active_challenge.var_4365b81b, isdefined(level.s_active_challenge.var_4e0096cd) ? level.s_active_challenge.var_4e0096cd : level.var_2c5f83d);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 3, eflags: 0x2 linked
// Checksum 0x6475022, Offset: 0x5818
// Size: 0x26e
function function_d7362784(var_38f795c7, a_str_zone_names, vol_override = undefined) {
    self notify(#"hash_26da5491f8ef4fd8");
    self endon(#"hash_26da5491f8ef4fd8", #"death");
    self.var_95cfa01d = 1;
    self.var_b05f25ad = 0;
    self function_fcd5d27c(0);
    while (is_challenge_active(var_38f795c7)) {
        if (isdefined(vol_override)) {
            if (!self.var_b05f25ad && self istouching(vol_override)) {
                self.var_b05f25ad = 1;
                self function_fcd5d27c(1);
            } else if (self.var_b05f25ad && !self istouching(vol_override)) {
                self.var_b05f25ad = 0;
                self function_fcd5d27c(0);
            }
        } else if (!self.var_b05f25ad && self zm_zonemgr::is_player_in_zone(a_str_zone_names, 0)) {
            self.var_b05f25ad = 1;
            self function_fcd5d27c(1);
        } else if (self.var_b05f25ad && !self zm_zonemgr::is_player_in_zone(a_str_zone_names, 0)) {
            self.var_b05f25ad = 0;
            self function_fcd5d27c(0);
        }
        if (is_true(self.var_95cfa01d) && is_true(self.var_b05f25ad)) {
            self.var_f94035ca = float(gettime()) / 1000;
        }
        waitframe(1);
    }
    self.var_95cfa01d = 0;
    self.var_b05f25ad = 0;
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x0
// Checksum 0x61fe201f, Offset: 0x5a90
// Size: 0x2c
function function_9742c28f() {
    zm_utility::function_b1f3be5c(level.var_be2ff8ca, level.s_active_challenge.var_3df4e085);
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x21bd1ef7, Offset: 0x5ac8
// Size: 0x98
function function_8dbbbce8() {
    foreach (player in getplayers()) {
        player thread function_9ffc76ea(#"hash_2f07cdc4c8fbe9d5");
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0xc77b2222, Offset: 0x5b68
// Size: 0x98
function function_9f1cd9be() {
    foreach (player in getplayers()) {
        player thread function_9ffc76ea(#"hash_72ca0304c836da88");
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x3515a2bc, Offset: 0x5c08
// Size: 0x24
function function_8576b59f() {
    level thread function_9ffc76ea(#"board_repaired");
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0xd3dfe910, Offset: 0x5c38
// Size: 0x1dc
function function_9c1479ad() {
    level endon(#"hash_53f7c8af221e6090");
    foreach (player in getplayers()) {
        player thread function_9ffc76ea([#"glass_smash", #"hash_34928429a0070510"]);
    }
    while (true) {
        s_waitresult = level waittill(#"glass_smash");
        closest_player = arraygetclosest(s_waitresult.position, function_a1ef346b(), 128);
        if (isplayer(closest_player) && (closest_player ismantling() || closest_player issprinting() || closest_player issliding() || closest_player zm_utility::is_jumping())) {
            closest_player notify(#"glass_smash");
        }
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x0
// Checksum 0xe4ee6dd9, Offset: 0x5e20
// Size: 0xae
function function_cbc84593() {
    level endon(#"hash_53f7c8af221e6090", #"disconnect");
    while (true) {
        if (weapons::getbaseweapon(self.currentweapon) == getweapon(level.s_active_challenge.var_8edbca81)) {
            self function_fcd5d27c(1);
        } else {
            self function_fcd5d27c(0);
        }
        waitframe(1);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x0
// Checksum 0xe03588d5, Offset: 0x5ed8
// Size: 0x3fc
function function_1d60215() {
    level endon(#"hash_53f7c8af221e6090");
    level.s_active_challenge.var_ad12d5bf = level.s_active_challenge.var_4427ebb1;
    if (!isdefined(level.s_active_challenge.var_ad12d5bf)) {
        level.s_active_challenge.var_ad12d5bf = [];
    } else if (!isarray(level.s_active_challenge.var_ad12d5bf)) {
        level.s_active_challenge.var_ad12d5bf = array(level.s_active_challenge.var_ad12d5bf);
    }
    level.var_4427ebb1 = level.s_active_challenge.var_ad12d5bf[0];
    assert(isdefined(level.var_aa3b88c5), "<unknown string>");
    level.var_2c5f83d = [[ level.var_aa3b88c5 ]](level.s_active_challenge.var_4427ebb1);
    vol_override = getent("dac_trial_volume_" + level.var_4427ebb1, "targetname");
    foreach (player in getplayers()) {
        player thread function_d7362784(level.s_active_challenge.str_name, level.s_active_challenge.var_ad12d5bf, vol_override);
        player thread set_challenge_text(level.s_active_challenge.var_4365b81b, isdefined(level.s_active_challenge.var_4e0096cd) ? level.s_active_challenge.var_4e0096cd : level.var_2c5f83d);
    }
    level.var_acc31847 = zm_utility::function_d7db256e(level.s_active_challenge.var_3df4e085, #"hash_17223bc71432a43e", 1, &function_de2e76c4);
    while (true) {
        n_time = gettime() / 1000;
        foreach (player in getplayers()) {
            if (!isdefined(player.var_f94035ca)) {
                player.var_f94035ca = 0;
            }
            dt = n_time - player.var_f94035ca;
            if (is_true(player.var_b05f25ad) && dt <= 2) {
                player namespace_f999c142::function_53a333a8(level.s_active_challenge.str_name);
                continue;
            }
            player.var_f94035ca = n_time;
        }
        wait(2);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x0
// Checksum 0xafe7118c, Offset: 0x62e0
// Size: 0x2c
function function_6be352fc() {
    zm_utility::function_b1f3be5c(level.var_acc31847, level.s_active_challenge.var_3df4e085);
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 2, eflags: 0x2 linked
// Checksum 0x5f13363c, Offset: 0x6318
// Size: 0x164
function function_5e882c6f(e_player, var_2b625b6e) {
    str_zone = zm_zonemgr::get_zone_from_position(var_2b625b6e);
    vol_override = getent("dac_trial_volume_" + level.var_4427ebb1, "targetname");
    if (isdefined(vol_override) && isvec(var_2b625b6e)) {
        if (istouching(var_2b625b6e, vol_override)) {
            e_player namespace_f999c142::function_53a333a8(level.s_active_challenge.str_name);
        }
        return;
    }
    if (isdefined(str_zone)) {
        assert(isdefined(level.var_aa3b88c5), "<unknown string>");
        var_c8470518 = [[ level.var_aa3b88c5 ]](str_zone);
        if (level.var_2c5f83d === var_c8470518) {
            e_player namespace_f999c142::function_53a333a8(level.s_active_challenge.str_name);
        }
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 2, eflags: 0x6 linked
// Checksum 0xc9676814, Offset: 0x6488
// Size: 0x36
function private function_de2e76c4(*v_origin_or_ent, *params) {
    if (is_true(self.var_b05f25ad)) {
        return false;
    }
    return true;
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 2, eflags: 0x2 linked
// Checksum 0x74aa1850, Offset: 0x64c8
// Size: 0x17c
function function_673cba18(var_38f795c7, n_damage) {
    self notify("3bf30cc2b4f79caa");
    self endon("3bf30cc2b4f79caa");
    self endon(#"death");
    level endon(#"hash_53f7c8af221e6090");
    waitframe(1);
    n_start_health = self.health;
    while (is_challenge_active(var_38f795c7)) {
        if (self laststand::player_is_in_laststand()) {
            break;
        }
        if (self.sessionstate === "spectator") {
            break;
        }
        if (self.health == max(self.maxhealth, self.var_66cb03ad)) {
            self namespace_f999c142::function_53a333a8(level.s_active_challenge.str_name, undefined, n_damage);
            break;
        } else {
            n_delta = self.health - n_start_health;
            if (n_delta >= 50) {
                self namespace_f999c142::function_53a333a8(level.s_active_challenge.str_name, undefined, n_damage);
                n_start_health += 50;
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x71ffdb89, Offset: 0x6650
// Size: 0x15c
function function_c8657c04() {
    level endon(#"hash_53f7c8af221e6090");
    for (var_53a794b0 = gettime() / 1000; true; var_53a794b0 = n_time) {
        wait(2);
        n_time = gettime() / 1000;
        foreach (player in getplayers()) {
            b_reward = 0;
            if (!isdefined(player.var_d5e64932)) {
                b_reward = 1;
            } else {
                n_time_since_last_damage = n_time - player.var_d5e64932;
                if (n_time_since_last_damage > 15) {
                    b_reward = 1;
                }
            }
            if (b_reward) {
                player namespace_f999c142::function_53a333a8(level.s_active_challenge.str_name);
            }
        }
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0x73c97e9d, Offset: 0x67b8
// Size: 0x298
function function_9ffc76ea(str_notify) {
    level endon(#"hash_53f7c8af221e6090");
    if (isplayer(self)) {
        self endon(#"disconnect");
    }
    while (true) {
        waitresult = self waittill(str_notify);
        if (isplayer(self)) {
            e_player = self;
        } else if (isdefined(waitresult.e_player)) {
            e_player = waitresult.e_player;
        } else {
            e_player = waitresult.player;
        }
        if (e_player.sessionstate === "disconnected") {
            return;
        }
        var_f6e9f6bf = 1;
        if (is_challenge_active(#"hash_63791b9ae55043b5")) {
            switch (waitresult.scoreevent) {
            case #"multikillstreak_5_zm":
                var_41f9c5ff = 100;
                break;
            case #"multikillstreak_10_zm":
                var_41f9c5ff = 125;
                break;
            case #"multikillstreak_15_zm":
                var_41f9c5ff = 150;
                break;
            case #"multikillstreak_20_zm":
                var_41f9c5ff = 200;
                break;
            case #"multikillstreak_25_zm":
                var_41f9c5ff = 300;
                break;
            default:
                break;
            }
            if (!isdefined(var_41f9c5ff)) {
                continue;
            }
        } else if (is_challenge_active(#"hash_710afd3a5e44458f")) {
            var_41f9c5ff = level.var_8b7ab859 * 0.03;
        } else if (is_challenge_active(#"hash_6541d5a40f6a8dcc")) {
            var_41f9c5ff = level.var_8b7ab859 * 0.02;
        }
        e_player namespace_f999c142::function_53a333a8(level.s_active_challenge.str_name, var_41f9c5ff, var_f6e9f6bf);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0xcb79c5d, Offset: 0x6a58
// Size: 0x78
function function_d60e999d() {
    level endon(#"end_game");
    level flag::wait_till("start_zombie_round_logic");
    function_9e7dc4fb();
    while (true) {
        level waittill(#"end_of_round");
        function_9e7dc4fb();
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x981bf92d, Offset: 0x6ad8
// Size: 0xa8
function function_9e7dc4fb() {
    n_round_number = zm_utility::get_round_number();
    if (n_round_number >= 10) {
        level.var_572d28a8--;
        if (level.var_572d28a8 <= 0) {
            level.var_d3a8f03b = int(level.var_d3a8f03b + 500);
            level.var_572d28a8 = 5;
        }
    } else {
        level.var_d3a8f03b = 500;
    }
    level.var_48442709 = 500;
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0x84e204af, Offset: 0x6b88
// Size: 0x42
function is_challenge_active(var_38f795c7) {
    if (isdefined(level.s_active_challenge) && level.s_active_challenge.str_name === var_38f795c7) {
        return true;
    }
    return false;
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0x74525f1a, Offset: 0x6bd8
// Size: 0x3e0
function get_challenge(*e_player) {
    var_99d6574b = undefined;
    var_52da6798 = level.var_94b8d201.size;
    var_881d9045 = 1000;
    var_1211943c = arraycopy(level.var_94b8d201);
    /#
        if (isdefined(level.var_acf50b77)) {
            var_acf50b77 = level.var_acf50b77;
            level.var_acf50b77 = undefined;
            foreach (s_challenge in var_1211943c) {
                if (s_challenge.str_name === var_acf50b77) {
                    s_challenge.n_count++;
                    return s_challenge;
                }
            }
        }
    #/
    foreach (s_challenge in var_1211943c) {
        if (isdefined(s_challenge.var_4427ebb1)) {
            if (!isarray(s_challenge.var_4427ebb1)) {
                if (zm_zonemgr::zone_is_enabled(s_challenge.var_4427ebb1)) {
                    if (s_challenge.n_count < var_881d9045) {
                        var_881d9045 = s_challenge.n_count;
                        var_99d6574b = s_challenge;
                    }
                }
            } else {
                foreach (zone in s_challenge.var_4427ebb1) {
                    if (zm_zonemgr::zone_is_enabled(zone)) {
                        if (s_challenge.n_count < var_881d9045) {
                            var_881d9045 = s_challenge.n_count;
                            var_99d6574b = s_challenge;
                            break;
                        }
                    }
                }
            }
            continue;
        }
        if (s_challenge.n_count < var_881d9045) {
            var_881d9045 = s_challenge.n_count;
            var_99d6574b = s_challenge;
        }
    }
    if (var_99d6574b.n_count === 0) {
        foreach (player in function_a1ef346b()) {
            if (!isdefined(player.var_bcaabb7d)) {
                player.var_bcaabb7d = 0;
            }
            player.var_bcaabb7d++;
            if (player.var_bcaabb7d >= var_52da6798) {
                if (is_true(level.var_92c52eed)) {
                    player zm_stats::increment_challenge_stat(#"hash_5c4576daa133ceb8");
                }
            }
        }
    }
    var_99d6574b.n_count++;
    return var_99d6574b;
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0xc1ba053b, Offset: 0x6fc0
// Size: 0x1c
function is_active() {
    if (isdefined(level.s_active_challenge)) {
        return true;
    }
    return false;
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0xff068726, Offset: 0x6fe8
// Size: 0x19c
function game_over() {
    level waittill(#"end_game", #"hash_4fbe4720f6f13107", #"hash_29edd9425510b40d");
    if (is_active()) {
        stop_challenge();
    }
    foreach (player in getplayers()) {
        player set_tributeavailable(0);
    }
    if (zm_utility::is_survival() && isdefined(level.var_107cca82)) {
        if (isdefined(level.var_107cca82.n_obj_id)) {
            zm_utility::function_bc5a54a8(level.var_107cca82.n_obj_id);
            level.var_107cca82.n_obj_id = undefined;
        }
        if (isdefined(level.var_107cca82)) {
            level.var_107cca82 clientfield::set("" + #"hash_33c54759cc1e7a71", 0);
        }
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x26a23515, Offset: 0x7190
// Size: 0x106
function function_2bf355c2() {
    if (isdefined(self.var_642ed51a.var_f693bf0b)) {
        self.var_642ed51a.var_f693bf0b clientfield::set("" + #"hash_21f5fab6a3d22093", 0);
        self.var_642ed51a.var_f693bf0b clientfield::set("" + #"hash_653b5827e6fbe5f9", 0);
        self namespace_f999c142::function_2ae77bb7(undefined, 0);
    }
    if (isdefined(self.var_642ed51a.var_f92a5f81)) {
        self.var_642ed51a.var_f92a5f81 delete();
    }
    self set_tributeavailable(0);
    self.var_43300e = undefined;
    self.var_4373c66b = undefined;
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0xf6c471ff, Offset: 0x72a0
// Size: 0x44
function function_432b2abf() {
    if (!level.var_996e8a57 zm_dac_challenges_hud::is_open(self)) {
        level.var_996e8a57 zm_dac_challenges_hud::open(self);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 2, eflags: 0x2 linked
// Checksum 0xc8797dfc, Offset: 0x72f0
// Size: 0x114
function set_challenge_text(challenge_text, location_name = #"") {
    self endon(#"death");
    self function_432b2abf();
    if (isdefined(challenge_text)) {
        level.var_996e8a57 zm_dac_challenges_hud::set_challengetext(self, challenge_text);
    }
    if (isdefined(location_name)) {
        level.var_996e8a57 zm_dac_challenges_hud::set_bottomtext(self, location_name);
    }
    if (level.var_2dffd020 === 4) {
        level.var_996e8a57 zm_dac_challenges_hud::function_c079b98b(self, 1);
    } else {
        level.var_996e8a57 zm_dac_challenges_hud::function_c079b98b(self, 0);
    }
    self function_b4759cf8();
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0xdea3ec96, Offset: 0x7410
// Size: 0x14c
function function_b4759cf8() {
    if (isdefined(self) && clientfield::function_40aa8832("luielement." + level.var_996e8a57.var_d5213cbb + "." + (isdefined(level.var_996e8a57.var_bf9c8c95) ? "" + level.var_996e8a57.var_bf9c8c95 : "") + "showChallenge") && clientfield::function_40aa8832("luielement." + level.var_996e8a57.var_d5213cbb + "." + (isdefined(level.var_996e8a57.var_bf9c8c95) ? "" + level.var_996e8a57.var_bf9c8c95 : "") + "rewardHidden")) {
        level.var_996e8a57 zm_dac_challenges_hud::function_1097decc(self, 1);
        level.var_996e8a57 zm_dac_challenges_hud::set_rewardhidden(self, 0);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x7be55bd9, Offset: 0x7568
// Size: 0xa4
function function_d38641f1() {
    if (isdefined(self) && clientfield::function_40aa8832("luielement." + level.var_996e8a57.var_d5213cbb + "." + (isdefined(level.var_996e8a57.var_bf9c8c95) ? "" + level.var_996e8a57.var_bf9c8c95 : "") + "rewardHidden")) {
        level.var_996e8a57 zm_dac_challenges_hud::set_rewardhidden(self, 0);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0xa7aa264f, Offset: 0x7618
// Size: 0x174
function function_7e30f24c() {
    if (isdefined(self) && clientfield::function_40aa8832("luielement." + level.var_996e8a57.var_d5213cbb + "." + (isdefined(level.var_996e8a57.var_bf9c8c95) ? "" + level.var_996e8a57.var_bf9c8c95 : "") + "showChallenge")) {
        level.var_996e8a57 zm_dac_challenges_hud::function_1097decc(self, 0);
    }
    if (isdefined(self.var_9e09931e) && is_true(self.var_9e09931e === 0) && clientfield::function_40aa8832("luielement." + level.var_996e8a57.var_d5213cbb + "." + (isdefined(level.var_996e8a57.var_bf9c8c95) ? "" + level.var_996e8a57.var_bf9c8c95 : "") + "rewardHidden")) {
        level.var_996e8a57 zm_dac_challenges_hud::set_rewardhidden(self, 1);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x8ae219bc, Offset: 0x7798
// Size: 0xac
function function_ada590f5() {
    if (isdefined(self) && clientfield::function_40aa8832("luielement." + level.var_996e8a57.var_d5213cbb + "." + (isdefined(level.var_996e8a57.var_bf9c8c95) ? "" + level.var_996e8a57.var_bf9c8c95 : "") + "rewardHidden")) {
        level.var_996e8a57 zm_dac_challenges_hud::set_rewardhidden(self, 1);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0x45023d11, Offset: 0x7850
// Size: 0xfc
function set_tributeavailable(var_9d5acba) {
    if (self.sessionstate === "disconnected") {
        return;
    }
    if (isplayer(self) && level.var_996e8a57 zm_dac_challenges_hud::is_open(self)) {
        if (isdefined(var_9d5acba) && clientfield::function_40aa8832("luielement." + level.var_996e8a57.var_d5213cbb + "." + (isdefined(level.var_996e8a57.var_bf9c8c95) ? "" + level.var_996e8a57.var_bf9c8c95 : "") + "tributeAvailable")) {
            level.var_996e8a57 zm_dac_challenges_hud::set_tributeavailable(self, var_9d5acba);
        }
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0xc8e79113, Offset: 0x7958
// Size: 0xd4
function function_c21d733d(b_enable = 1) {
    if (level.var_996e8a57 zm_dac_challenges_hud::is_open(self) && clientfield::function_40aa8832("luielement." + level.var_996e8a57.var_d5213cbb + "." + (isdefined(level.var_996e8a57.var_bf9c8c95) ? "" + level.var_996e8a57.var_bf9c8c95 : "") + "showIntelRewardText")) {
        level.var_996e8a57 zm_dac_challenges_hud::function_c21d733d(self, b_enable);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0xcc1b8629, Offset: 0x7a38
// Size: 0xd4
function function_fcd5d27c(var_3f4d60e3 = 1) {
    if (level.var_996e8a57 zm_dac_challenges_hud::is_open(self) && clientfield::function_40aa8832("luielement." + level.var_996e8a57.var_d5213cbb + "." + (isdefined(level.var_996e8a57.var_bf9c8c95) ? "" + level.var_996e8a57.var_bf9c8c95 : "") + "bInLocation")) {
        level.var_996e8a57 zm_dac_challenges_hud::set_binlocation(self, var_3f4d60e3);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x0
// Checksum 0x396dbe5b, Offset: 0x7b18
// Size: 0x44
function function_fd8a137e() {
    if (level.var_996e8a57 zm_dac_challenges_hud::is_open(self)) {
        level.var_996e8a57 zm_dac_challenges_hud::close(self);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x54991dbe, Offset: 0x7b68
// Size: 0xd4
function function_34a533b1() {
    self function_432b2abf();
    if (level.var_996e8a57 zm_dac_challenges_hud::is_open(self) && clientfield::function_40aa8832("luielement." + level.var_996e8a57.var_d5213cbb + "." + (isdefined(level.var_996e8a57.var_bf9c8c95) ? "" + level.var_996e8a57.var_bf9c8c95 : "") + "progress")) {
        level.var_996e8a57 zm_dac_challenges_hud::increment_progress(self);
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0xcb0aaa5c, Offset: 0x7c48
// Size: 0x1c
function function_d4e701b9() {
    level thread function_dd77166f();
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x25578d7, Offset: 0x7c70
// Size: 0x94
function function_dd77166f() {
    wait(1);
    if (isdefined(level.var_c345b118)) {
        n_time_remaining = level.var_957b495e - float(gettime() - level.var_c345b118) / 1000;
        stop_timer();
        start_timer(int(n_time_remaining));
    }
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 1, eflags: 0x2 linked
// Checksum 0xb4091079, Offset: 0x7d10
// Size: 0xf8
function start_timer(n_time_seconds) {
    foreach (player in getplayers()) {
        player clientfield::set_to_player("" + #"hash_31bea9cf1e6f76a0", n_time_seconds);
    }
    callback::add_callback(#"on_host_migration_end", &function_d4e701b9);
    level.var_c345b118 = gettime();
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x468a1c1a, Offset: 0x7e10
// Size: 0xee
function stop_timer() {
    foreach (player in getplayers()) {
        player clientfield::set_to_player("" + #"hash_31bea9cf1e6f76a0", 0);
    }
    callback::remove_callback(#"on_host_migration_end", &function_d4e701b9);
    level.var_c345b118 = undefined;
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0x755394e3, Offset: 0x7f08
// Size: 0x34
function function_445c5438() {
    if (zm_utility::is_survival()) {
        return;
    }
    level thread zm_audio::function_b36aeaf6("dac_challenge");
}

// Namespace namespace_f0b43eb5/namespace_f0b43eb5
// Params 0, eflags: 0x2 linked
// Checksum 0xa7b49096, Offset: 0x7f48
// Size: 0x34
function function_23853783() {
    if (zm_utility::is_survival()) {
        return;
    }
    level thread zm_audio::function_2354b945("dac_challenge");
}

/#

    // Namespace namespace_f0b43eb5/namespace_f0b43eb5
    // Params 0, eflags: 0x0
    // Checksum 0x992a5ff8, Offset: 0x7f88
    // Size: 0x10c
    function function_37597f29() {
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&cmd);
        util::init_dvar(#"hash_5b92db1162c53bb5", "<unknown string>", &function_e6f97362);
    }

    // Namespace namespace_f0b43eb5/namespace_f0b43eb5
    // Params 1, eflags: 0x4
    // Checksum 0xe9ee48b5, Offset: 0x80a0
    // Size: 0x8c
    function private function_e6f97362(params) {
        if (params.value === "<unknown string>") {
            return;
        }
        level.var_acf50b77 = params.value;
        start_challenge(getplayers()[0]);
        setdvar(#"hash_5b92db1162c53bb5", "<unknown string>");
    }

    // Namespace namespace_f0b43eb5/namespace_f0b43eb5
    // Params 1, eflags: 0x0
    // Checksum 0x769c47d4, Offset: 0x8138
    // Size: 0x47a
    function cmd(cmd) {
        switch (cmd) {
        case #"hash_c56ce3c06931cbb":
            function_d938cbd8();
            break;
        case #"hash_1f6dfb788a3261dc":
            function_df5afb5e();
            break;
        case #"hash_7cdc8834ffee5ac":
            function_5e613eb7();
            break;
        case #"hash_625423e17a0da5e2":
            if (getdvarint(#"hash_1ca7459bb8b222dd", 0)) {
                setdvar(#"hash_1ca7459bb8b222dd", 0);
                /#
                    iprintlnbold("<unknown string>");
                #/
            } else {
                setdvar(#"hash_1ca7459bb8b222dd", 1);
                /#
                    iprintlnbold("<unknown string>");
                #/
            }
            break;
        case #"hash_44c3c9e92dca8184":
            if (getdvarint(#"hash_48742331833b658f", 0)) {
                setdvar(#"hash_48742331833b658f", 0);
                level notify(#"hash_1b63b0a9d74c5852");
                if (isarray(level.var_b492b0ef)) {
                    foreach (var_fb9eb4de in level.var_b492b0ef) {
                        if (isdefined(var_fb9eb4de)) {
                            var_fb9eb4de connectpaths();
                            var_fb9eb4de delete();
                        }
                    }
                    arrayremovevalue(level.var_b492b0ef, undefined);
                }
            } else {
                setdvar(#"hash_48742331833b658f", 1);
                level thread function_5a327610();
            }
            break;
        case #"hash_352c0ab76fcca647":
            if (getdvarint(#"hash_292f44858fd468da", 0)) {
                setdvar(#"hash_292f44858fd468da", 0);
                level notify(#"hash_32f12c135823837");
            } else {
                setdvar(#"hash_292f44858fd468da", 1);
                level thread function_28239d1e();
            }
            break;
        case #"hash_5e917a17463426aa":
            if (isdefined(level.var_107cca82)) {
                if (level.var_107cca82.n_sequence === 2) {
                    level.var_107cca82.n_sequence = 1;
                } else {
                    level.var_107cca82.n_sequence = 2;
                }
                iprintlnbold("<unknown string>" + level.var_107cca82.n_sequence);
                level thread function_66d92f6(level.var_107cca82.n_sequence, 1);
            }
            break;
        default:
            break;
        }
    }

    // Namespace namespace_f0b43eb5/namespace_f0b43eb5
    // Params 0, eflags: 0x0
    // Checksum 0x751b2c46, Offset: 0x85c0
    // Size: 0x726
    function function_5a327610() {
        level notify(#"hash_1b63b0a9d74c5852");
        level endon(#"hash_1b63b0a9d74c5852", #"end_game", #"hash_345e9169ebba28fb");
        if (!isdefined(level.var_b492b0ef)) {
            level.var_b492b0ef = [];
        }
        while (true) {
            if (isdefined(level.var_107cca82)) {
                circle(level.var_107cca82.origin, 50, (0, 1, 0));
                print3d(level.var_107cca82.origin, "<unknown string>", (0, 1, 0));
            }
            if (isarray(level.var_f654fb0f)) {
                foreach (var_3cbf62f9 in level.var_f654fb0f) {
                    circle(var_3cbf62f9.origin, 50, (0, 1, 0));
                    print3d(var_3cbf62f9.origin, "<unknown string>", (0, 1, 0));
                }
            }
            if (isarray(level.var_5de83c5b)) {
                foreach (var_1b7cb15f in level.var_5de83c5b) {
                    if (var_1b7cb15f === level.var_28daae89) {
                        var_ad7704f = struct::get_array(var_1b7cb15f.targetname, "<unknown string>");
                        foreach (var_543e34e3 in var_ad7704f) {
                            if (var_543e34e3.script_noteworthy === "<unknown string>") {
                                circle(var_543e34e3.origin, 10, (0, 1, 0));
                                print3d(var_543e34e3.origin, "<unknown string>", (0, 1, 0), undefined, 0.25);
                            }
                        }
                        continue;
                    }
                    var_ad7704f = struct::get_array(var_1b7cb15f.targetname, "<unknown string>");
                    foreach (var_543e34e3 in var_ad7704f) {
                        if (var_543e34e3.content_key === #"dac_trial_computer") {
                            circle(var_543e34e3.origin, 50, (1, 0, 0));
                            print3d(var_543e34e3.origin, "<unknown string>", (1, 0, 0), undefined, 0.5);
                            if (!isdefined(var_543e34e3.var_fb9eb4de)) {
                                var_543e34e3.var_fb9eb4de = util::spawn_model(var_543e34e3.model, var_543e34e3.origin, var_543e34e3.angles);
                                if (!isdefined(level.var_b492b0ef)) {
                                    level.var_b492b0ef = [];
                                } else if (!isarray(level.var_b492b0ef)) {
                                    level.var_b492b0ef = array(level.var_b492b0ef);
                                }
                                if (!isinarray(level.var_b492b0ef, var_543e34e3.var_fb9eb4de)) {
                                    level.var_b492b0ef[level.var_b492b0ef.size] = var_543e34e3.var_fb9eb4de;
                                }
                                var_543e34e3.var_fb9eb4de disconnectpaths();
                            }
                            continue;
                        }
                        if (var_543e34e3.content_key === #"hash_3b68487ef7d135d7") {
                            circle(var_543e34e3.origin, 50, (1, 0, 0));
                            print3d(var_543e34e3.origin, "<unknown string>", (1, 0, 0), undefined, 0.5);
                            if (!isdefined(var_543e34e3.var_fb9eb4de)) {
                                var_543e34e3.var_fb9eb4de = util::spawn_model(var_543e34e3.model, var_543e34e3.origin, var_543e34e3.angles);
                                if (!isdefined(level.var_b492b0ef)) {
                                    level.var_b492b0ef = [];
                                } else if (!isarray(level.var_b492b0ef)) {
                                    level.var_b492b0ef = array(level.var_b492b0ef);
                                }
                                if (!isinarray(level.var_b492b0ef, var_543e34e3.var_fb9eb4de)) {
                                    level.var_b492b0ef[level.var_b492b0ef.size] = var_543e34e3.var_fb9eb4de;
                                }
                                var_543e34e3.var_fb9eb4de disconnectpaths();
                            }
                            continue;
                        }
                        if (var_543e34e3.script_noteworthy === "<unknown string>") {
                            circle(var_543e34e3.origin, 10, (1, 0, 0));
                            print3d(var_543e34e3.origin, "<unknown string>", (1, 0, 0), undefined, 0.25);
                        }
                    }
                }
            }
            waitframe(1);
        }
    }

    // Namespace namespace_f0b43eb5/namespace_f0b43eb5
    // Params 0, eflags: 0x0
    // Checksum 0x3b477a9, Offset: 0x8cf0
    // Size: 0x172
    function function_28239d1e() {
        level notify(#"hash_32f12c135823837");
        level endon(#"hash_32f12c135823837", #"end_game", #"hash_345e9169ebba28fb");
        while (true) {
            foreach (n_index, player in getplayers()) {
                y_offset = n_index * 20;
                debug2dtext((400, 300 + y_offset, 0), player.name + "<unknown string>" + (isdefined(player.n_tribute) ? player.n_tribute : 0) + "<unknown string>" + level.var_8b7ab859, undefined, undefined, undefined, 1);
            }
            waitframe(1);
        }
    }

    // Namespace namespace_f0b43eb5/namespace_f0b43eb5
    // Params 0, eflags: 0x0
    // Checksum 0x2464fef9, Offset: 0x8e70
    // Size: 0x34
    function function_d938cbd8() {
        if (is_active()) {
            stop_challenge(1);
        }
    }

    // Namespace namespace_f0b43eb5/namespace_f0b43eb5
    // Params 0, eflags: 0x0
    // Checksum 0x6ee461c4, Offset: 0x8eb0
    // Size: 0xc0
    function function_df5afb5e() {
        s_zombies = getaiarchetypearray(#"zombie");
        foreach (zombie in s_zombies) {
            zombie zombie_utility::function_df5afb5e(1);
        }
    }

    // Namespace namespace_f0b43eb5/namespace_f0b43eb5
    // Params 0, eflags: 0x0
    // Checksum 0x3acda1e3, Offset: 0x8f78
    // Size: 0xa0
    function function_5e613eb7() {
        foreach (player in getplayers()) {
            player namespace_f999c142::function_53a333a8("<unknown string>", 200);
        }
    }

#/
