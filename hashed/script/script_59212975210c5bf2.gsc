// Atian COD Tools GSC CW decompiler test
#using script_34ab99a4ca1a43d;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using script_19367cd29a4485db;
#using script_3411bb48d41bd3b;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using script_340a2e805e35f7a2;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace world_event_orb_follow;

// Namespace world_event_orb_follow/world_event_orb_follow
// Params 0, eflags: 0x5
// Checksum 0xf62009a9, Offset: 0x1a8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_1c2f845f6ae4ceb2", &preinit, undefined, undefined, #"content_manager");
}

// Namespace world_event_orb_follow/world_event_orb_follow
// Params 0, eflags: 0x2 linked
// Checksum 0xdcd8a0fc, Offset: 0x1f8
// Size: 0xe4
function preinit() {
    if (!zm_utility::is_survival()) {
        return;
    }
    if (is_true(getgametypesetting(#"hash_1e1a5ebefe2772ba"))) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_67a7a1b18751c7b4")) && !getdvarint(#"hash_730311c63805303a", 0)) {
        return;
    }
    content_manager::register_script(#"hash_64333b9f066daefa", &function_cc775529);
}

// Namespace world_event_orb_follow/world_event_orb_follow
// Params 1, eflags: 0x6 linked
// Checksum 0x32515215, Offset: 0x2e8
// Size: 0x10b4
function private function_cc775529(s_instance) {
    if (level flag::get(#"hash_6d89e1456f61e5ab")) {
        return;
    }
    if (randomint(100) < 50 && !getdvarint(#"hash_730311c63805303a", 0)) {
        return;
    }
    s_instance endon(#"cleanup");
    s_instance flag::clear("cleanup");
    s_instance callback::function_d8abfc3d(#"hash_345e9169ebba28fb", &function_eda98f63);
    level callback::add_callback(#"hash_594217387367ebb4", &function_eda98f63, s_instance);
    level callback::add_callback(#"on_host_migration_begin", &function_b95aa184);
    s_start = s_instance.contentgroups[#"hash_1c8503ea56f80cf7"][0];
    var_8969e152 = s_instance.contentgroups[#"hash_1c8504ea56f80eaa"][0];
    s_end = s_instance.contentgroups[#"hash_1c8505ea56f8105d"][0];
    mdl_orb = content_manager::spawn_script_model(s_start, #"hash_53079af25eecf35b");
    mdl_orb setscale(0.5);
    mdl_orb playsound(#"hash_55b5e35f7d261fee");
    mdl_orb playloopsound(#"hash_5dc7884f02e73776");
    mdl_orb.targetname = "sr_aether_orb";
    s_instance.mdl_orb = mdl_orb;
    level.instance = s_instance;
    level.instance.mdl_orb = mdl_orb;
    s_instance.n_obj_id = zm_utility::function_f5a222a8(#"hash_2d6eaf696a019fa3", mdl_orb);
    mdl_orb.aitype = #"spawner_bo5_avogadro_sr";
    mdl_orb.aisettingsbundle = #"zm_avogadro_settings";
    var_3d014474 = function_9ad12bee(mdl_orb.aitype);
    mdl_orb.maxhealth = mdl_orb zm_ai_utility::function_f7014c3d(var_3d014474);
    mdl_orb.health = mdl_orb.maxhealth;
    mdl_orb val::set(#"hash_1592629a5ec5c8a", "takedamage", 1);
    mdl_orb val::set(#"hash_1592629a5ec5c8a", "allowdeath", 0);
    var_d263d14a = (0, 0, 22);
    var_a758131a = (0, 0, 22);
    mdl_orb endon(#"death");
    mdl_orb fx::play(#"hash_c36745220550934", mdl_orb.origin + var_d263d14a, mdl_orb.angles, #"hash_4aa1201cb1b6cb04");
    util::wait_network_frame();
    mdl_orb ghost();
    var_63ef2885 = undefined;
    var_4e227252 = 0;
    var_e81e0492 = 0;
    var_1a8b690d = 0;
    var_31eda780 = 10 + zm_utility::function_e3025ca5() * 5;
    var_edcf865 = mdl_orb.maxhealth / var_31eda780;
    var_d6cf3f65 = 1;
    for (var_1b519b48 = var_8969e152; true; var_1b519b48 = undefined) {
        s_result = mdl_orb waittill(#"damage", #"hash_5261a9b309eef309", #"hash_13c4c7440825676a");
        if (s_result._notify === #"hash_13c4c7440825676a") {
            /#
                iprintlnbold("<unknown string>");
            #/
            level thread fx::play(#"hash_779e4e163c8d0dae", mdl_orb.origin + var_d263d14a, mdl_orb.angles);
            playsoundatposition(#"hash_76169abd873150fa", mdl_orb.origin);
            mdl_orb stoploopsound();
            s_instance thread function_eda98f63();
            break;
        }
        if (s_result._notify === "damage") {
            if (!isplayer(s_result.attacker) || s_result.mod === "MOD_CRUSH") {
                continue;
            }
            if (!isdefined(s_instance.var_56c73fd4)) {
                s_instance.var_56c73fd4 = [];
            } else if (!isarray(s_instance.var_56c73fd4)) {
                s_instance.var_56c73fd4 = array(s_instance.var_56c73fd4);
            }
            if (!isinarray(s_instance.var_56c73fd4, s_result.attacker)) {
                s_instance.var_56c73fd4[s_instance.var_56c73fd4.size] = s_result.attacker;
            }
            mdl_orb notify(#"hash_d1228bf1661c95");
            mdl_orb thread function_7d88cc57();
            if (var_d6cf3f65 == 1) {
                if (!isdefined(var_63ef2885)) {
                    var_63ef2885 = gettime();
                    mdl_orb util::delay_notify(float(5000) / 1000, #"hash_5261a9b309eef309");
                    mdl_orb notify(#"hash_4aa1201cb1b6cb04");
                    mdl_orb playsound(#"hash_641d6edcbf8111c1");
                    mdl_orb fx::play(#"hash_3d9456f797f0eeff", mdl_orb.origin + var_d263d14a, mdl_orb.angles, "movedone", 1);
                } else {
                    mdl_orb playsound(#"hash_641d6edcbf8111c1");
                }
                var_4e227252 += s_result.amount;
                var_4a6e5d8a = int(var_4e227252 / var_edcf865);
                if (var_4a6e5d8a > 12 - var_e81e0492) {
                    var_4a6e5d8a = 12 - var_e81e0492;
                }
                if (var_4a6e5d8a > 0) {
                    var_4e227252 = int(var_4e227252 - var_edcf865 * var_4a6e5d8a);
                    level thread fx::play(#"hash_3955925eb5e7de1f", mdl_orb.origin + var_d263d14a, mdl_orb.angles);
                    dropstruct = {#origin:mdl_orb.origin + var_a758131a, #angles:mdl_orb.angles, #var_738dfc81:var_4a6e5d8a};
                    dropstruct thread namespace_65181344::function_fd87c780(#"survival_resource_list", var_4a6e5d8a, 3, #"hash_3b44370452dc91f8");
                    var_e81e0492 += var_4a6e5d8a;
                    if (!isdefined(var_1b519b48)) {
                        var_1a8b690d += var_4a6e5d8a;
                    }
                    /#
                        iprintlnbold("<unknown string>" + var_e81e0492);
                    #/
                    if (var_e81e0492 == 12) {
                        var_d6cf3f65 = 0;
                        if (!isdefined(var_1b519b48)) {
                            if (s_result.mod === "MOD_MELEE") {
                                s_result.attacker zm_stats::function_51c1448(#"hash_4945dccf0e8c820a", 1, #"hash_4e7e61b2bbe2f0e1", #"melee_coldwar_t9_dw");
                            }
                            var_206de304 = int(min(getplayers().size, 2));
                            dropstruct = {#origin:mdl_orb.origin, #angles:mdl_orb.angles, #var_738dfc81:var_206de304};
                            dropstruct thread namespace_65181344::function_fd87c780(#"sr_world_list_scorestreak_legendary", var_206de304, 2);
                            level scoreevents::doscoreeventcallback("scoreEventSR", {#scoreevent:"destroy_aether_orb_zm", #allplayers:1});
                            foreach (player in getplayers()) {
                                player zm_stats::increment_challenge_stat(#"hash_11dc4c118b41495");
                            }
                            if (isarray(s_instance.var_56c73fd4)) {
                                foreach (player in s_instance.var_56c73fd4) {
                                    player stats::function_dad108fa(#"hash_63e05acfb272a296", 1);
                                }
                            }
                        }
                    }
                }
            }
        }
        if (s_result._notify === #"hash_5261a9b309eef309" || var_d6cf3f65 === 0 || isdefined(var_63ef2885) && var_63ef2885 + 5000 < gettime()) {
            mdl_orb notify(#"hash_4588a3de47c44f6f");
            mdl_orb.var_b8477436 = 0;
            if (!isdefined(var_1b519b48)) {
                mdl_orb notsolid();
                if (var_1a8b690d > 0) {
                    dropstruct.origin -= var_a758131a;
                    dropstruct thread namespace_65181344::function_fd87c780(namespace_58949729::function_fd5e77fa(#"large"), var_1a8b690d, 2);
                }
                if (isdefined(var_206de304)) {
                    level thread fx::play(#"hash_1b9b90f45278a5ae", mdl_orb.origin + var_d263d14a, mdl_orb.angles);
                } else {
                    level thread fx::play(#"hash_779e4e163c8d0dae", mdl_orb.origin + var_d263d14a, mdl_orb.angles);
                }
                playsoundatposition(#"hash_4e565c316ea5ada2", mdl_orb.origin);
                s_instance thread function_eda98f63();
                break;
            }
            n_dist = distance(mdl_orb.origin, var_1b519b48.origin);
            if (!isdefined(var_1b519b48.var_67700391)) {
                var_1b519b48.var_67700391 = 0;
            }
            n_timeout = max(30, 90 * n_dist / 10000) + float(var_1b519b48.var_67700391);
            mdl_orb util::delay_notify(n_timeout, #"hash_13c4c7440825676a", #"hash_d1228bf1661c95");
            mdl_orb fx::play(#"hash_1746736d1c3b2acc", mdl_orb.origin + var_d263d14a, mdl_orb.angles, #"hash_4708ec2a663db459", 1);
            /#
                iprintlnbold("<unknown string>" + n_timeout);
            #/
            n_move_time = n_dist / 300;
            mdl_orb playsound(#"hash_3bd4a77bc51dfb52");
            mdl_orb playloopsound(#"hash_5455d7addafa1122");
            mdl_orb moveto(var_1b519b48.origin, n_move_time);
            mdl_orb waittill(#"movedone");
            mdl_orb playsound(#"hash_55b5e35f7d261fee");
            mdl_orb playloopsound(#"hash_5dc7884f02e73776");
            mdl_orb notify(#"hash_4708ec2a663db459");
            mdl_orb.health = mdl_orb.maxhealth;
            var_63ef2885 = undefined;
            var_4e227252 = 0;
            var_e81e0492 = 0;
            var_d6cf3f65 = 1;
            var_31eda780 += 3 * zm_utility::function_e3025ca5();
            var_edcf865 = mdl_orb.maxhealth / var_31eda780;
            mdl_orb fx::play(#"hash_c36745220550934", mdl_orb.origin + var_d263d14a, mdl_orb.angles, #"hash_4aa1201cb1b6cb04", 1);
            if (var_1b519b48 == var_8969e152) {
                var_1b519b48 = s_end;
                continue;
            }
        }
    }
}

// Namespace world_event_orb_follow/world_event_orb_follow
// Params 0, eflags: 0x6 linked
// Checksum 0xda4b030d, Offset: 0x13a8
// Size: 0x128
function private function_7d88cc57() {
    self endon(#"death", #"hash_4588a3de47c44f6f");
    if (is_true(self.var_b8477436)) {
        return;
    }
    self.var_b8477436 = 1;
    while (true) {
        self bobbing((randomfloatrange(-0.5, 0.5), randomfloatrange(-0.5, 0.5), randomfloatrange(-0.5, 0.5)), 10, 0.3);
        wait(randomfloatrange(0.3, 0.3 * 4));
    }
}

// Namespace world_event_orb_follow/world_event_orb_follow
// Params 1, eflags: 0x2 linked
// Checksum 0xa8182376, Offset: 0x14d8
// Size: 0x34
function function_b95aa184(*params) {
    if (isdefined(level.instance)) {
        level.instance function_eda98f63();
    }
}

// Namespace world_event_orb_follow/world_event_orb_follow
// Params 1, eflags: 0x2 linked
// Checksum 0x8ff92a3b, Offset: 0x1518
// Size: 0x9c
function function_eda98f63(*var_273eefec) {
    self flag::set("cleanup");
    if (isdefined(self.n_obj_id)) {
        objective_clearentity(self.n_obj_id);
        zm_utility::function_bc5a54a8(self.n_obj_id);
        self.n_obj_id = undefined;
    }
    if (isdefined(self.mdl_orb)) {
        self.mdl_orb deletedelay();
    }
}

