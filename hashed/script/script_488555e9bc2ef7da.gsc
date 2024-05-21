// Atian COD Tools GSC CW decompiler test
#using script_100835406ec3feaf;
#using script_40627e3239a72ee;
#using scripts\zm\zm_platinum_main_quest.gsc;
#using scripts\zm\zm_platinum_ww_quest.gsc;
#using scripts\zm\zm_platinum_pap_quest.gsc;
#using script_7d5a9e4ec34372d0;
#using script_1c92816b36da2771;
#using script_5b190e6124417f5a;
#using script_63b5c2449d0e2f48;
#using scripts\zm\zm_platinum_zones.gsc;
#using scripts\zm\zm_platinum_gamemodes.gsc;
#using scripts\zm\zm_ai_raz.gsc;
#using scripts\zm\ai\zm_ai_mimic.gsc;
#using scripts\zm\ai\zm_ai_mechz.gsc;
#using script_5eb334a29c814cf2;
#using scripts\zm\archetype\archetype_zod_companion.gsc;
#using scripts\zm\ai\zm_ai_avogadro.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\core_common\values_shared.gsc;
#using script_353f4332c07d6432;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm_round_logic.gsc;
#using script_62caa307a394c18c;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using script_24c32478acf44108;
#using scripts\zm_common\zm_sq.gsc;
#using scripts\zm_common\zm_fasttravel.gsc;
#using scripts\zm_common\zm_magicbox.gsc;
#using script_7b1cd3908a825fdd;
#using script_3411bb48d41bd3b;
#using scripts\zm_common\zm_devgui.gsc;
#using script_4ce5d94e8c797350;
#using scripts\zm_common\callbacks.gsc;
#using scripts\zm_common\zm_intel.gsc;
#using scripts\zm_common\zm_hazard.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_round_spawning.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using script_448683444db21d61;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\zm.gsc;
#using scripts\core_common\burnplayer.gsc;
#using scripts\core_common\scriptmodels_shared.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\zm_common\zm_ui_inventory.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\compass.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\load_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_54685ebd;

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0xd54adc7e, Offset: 0x4d8
// Size: 0x14c
function init() {
    level thread function_57b9ff20();
    callback::on_item_pickup(&function_3cd87dd2);
    callback::on_actor_killed(&function_9de5caaf);
    level thread function_9f6ba259();
    clientfield::register("world", "" + #"hash_1c39840b9d4a1796", 24000, 1, "int");
    clientfield::register("world", "" + #"hash_9472de3e8d1f6e1", 24000, 1, "int");
    clientfield::register("world", "" + #"hash_6f9aa7ac9543a791", 24000, 1, "int");
    /#
        level thread function_cd7a3de4();
    #/
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0x6e50a5c8, Offset: 0x630
// Size: 0xc4
function function_57b9ff20() {
    level thread function_7ccb07c6();
    level thread function_f73f4bc2();
    level thread function_a2e9d398();
    level thread function_43b18d1c();
    level thread function_e01f1b8b();
    level thread function_5a4491ab();
    scene::add_scene_func("p9_fxanim_zm_platinum_fuse_box_open_bundle", &function_2f9d6aee, "play");
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 1, eflags: 0x2 linked
// Checksum 0x7d9c7ebe, Offset: 0x700
// Size: 0x28
function function_2f9d6aee(a_ents) {
    level.var_9e2aada = a_ents[#"prop 1"];
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0xc2db3cf7, Offset: 0x730
// Size: 0x3b4
function function_7ccb07c6() {
    level endon(#"end_game");
    var_6152b664 = getent("use_elec_switch", "targetname");
    var_f5c1bd65 = struct::get("fuse_box_loc", "targetname");
    wait(1);
    level scene::init("p9_fxanim_zm_platinum_fuse_box_open_bundle");
    var_6152b664 setinvisibletoall();
    level.var_7b6eae07 = getent("elec_switch", "script_noteworthy");
    var_bd1ab5ba = level.var_7b6eae07 zm_unitrigger::function_fac87205(#"zombie/electric_switch", 50);
    level.var_7b6eae07 rotateroll(-90, 0.5);
    level.var_7b6eae07 playsound(#"hash_33440052dad5d98b");
    wait(0.8);
    level flag::set(#"hash_7b0e9fd705e66691");
    level namespace_b574e135::function_278866ab(1);
    level.var_7b6eae07 playsound(#"hash_43dad678bc35ddb7");
    wait(1);
    level thread scene::play("p9_fxanim_zm_platinum_fuse_box_open_bundle", "play");
    clientfield::set("" + #"hash_6f9aa7ac9543a791", 1);
    level flag::set("fuse_box_exploded");
    clientfield::set("" + #"hash_1c39840b9d4a1796", 1);
    wait(1);
    clientfield::set("" + #"hash_9472de3e8d1f6e1", 1);
    wait(0.1);
    level.var_7b6eae07 rotateroll(90, 0.25);
    level.var_7b6eae07 playsound(#"hash_33440052dad5d98b");
    level namespace_b574e135::function_278866ab(0);
    wait(0.5);
    level thread function_ea520491();
    level flag::set(#"hash_1d6357b2512a35e5");
    /#
        iprintlnbold("<unknown string>");
    #/
    level thread function_4d91a114();
    level thread function_14a36992();
    level thread function_c9b21c8c();
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0xb95ce3fb, Offset: 0xaf0
// Size: 0x128
function function_c9b21c8c() {
    level endon(#"end_game");
    level flag::wait_till("power_on");
    wait(1.5);
    var_c1c3ad25 = ["zone_power_substation", "zone_power_substation2"];
    var_dfe526e8 = function_a1ef346b();
    foreach (player in var_dfe526e8) {
        if (player zm_zonemgr::is_player_in_zone(var_c1c3ad25)) {
            player function_bc82f900(#"hash_19e74997cb877a27");
        }
    }
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0xd3c154fe, Offset: 0xc20
// Size: 0x24c
function function_43b18d1c() {
    level endon(#"end_game", #"player_has_both_fuse", #"power_on");
    var_97742376 = struct::get_array("overground_fuse_hint_loc", "targetname");
    level.overground_fuse_hint_loc = array::random(var_97742376);
    var_be9c7d1f = struct::get(level.overground_fuse_hint_loc.target, "targetname");
    var_856f78b1 = level.overground_fuse_hint_loc.script_noteworthy;
    while (true) {
        var_dfe526e8 = function_a1ef346b();
        foreach (player in var_dfe526e8) {
            var_862f834 = player zm_zonemgr::get_player_zone();
            if (var_862f834 === var_856f78b1) {
                level.var_3f856791 = spawnactor("spawner_bo5_avogadro_sr", var_be9c7d1f.origin, var_be9c7d1f.angles, undefined, 1);
                if (isdefined(level.var_3f856791)) {
                    level.var_3f856791.var_93057265 = 1;
                }
                level flag::set(#"hash_3f6a498e4113de40");
                level thread function_4b1f214c();
                break;
            }
        }
        wait(0.5);
        if (isdefined(level.var_3f856791)) {
            break;
        }
    }
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0xb12c086c, Offset: 0xe78
// Size: 0xb2
function function_e01f1b8b() {
    level endon(#"end_game");
    while (true) {
        if (level flag::get("connect_ghost_station_to_sewers_and_escape_tunnel")) {
            level flag::set(#"hash_453dee78e48aa120");
            break;
        } else if (level flag::get("connect_ghost_station_to_secret_spy_tunnel")) {
            level flag::set(#"hash_7cbfe0771046c209");
            break;
        }
        wait(1);
    }
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0xcbdd6c5, Offset: 0xf38
// Size: 0xcc
function function_5a4491ab() {
    waitresult = level flag::wait_till_any([#"hash_453dee78e48aa120", #"hash_7cbfe0771046c209"]);
    if (waitresult._notify == #"hash_453dee78e48aa120") {
        level thread function_9f0d2282("maintenance_room_fuse_hint_loc");
        return;
    }
    if (waitresult._notify == #"hash_7cbfe0771046c209") {
        level thread function_9f0d2282("sewer_fuse_hint_loc");
    }
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 1, eflags: 0x2 linked
// Checksum 0xb61bfdda, Offset: 0x1010
// Size: 0x22c
function function_9f0d2282(var_23589c3d) {
    level endon(#"end_game", #"player_has_both_fuse", #"power_on");
    level.var_6eccb0ad = struct::get(var_23589c3d, "targetname");
    var_be9c7d1f = struct::get(level.var_6eccb0ad.target, "targetname");
    var_2b2211f7 = level.var_6eccb0ad.script_noteworthy;
    while (true) {
        var_dfe526e8 = function_a1ef346b();
        foreach (player in var_dfe526e8) {
            var_862f834 = player zm_zonemgr::get_player_zone();
            if (var_862f834 === var_2b2211f7) {
                level.var_b6309f5 = spawnactor("spawner_bo5_avogadro_sr", var_be9c7d1f.origin, var_be9c7d1f.angles, undefined, 1);
                if (isdefined(level.var_b6309f5)) {
                    level.var_b6309f5.var_93057265 = 1;
                }
                level flag::set(#"hash_3b3dc236fb00a47e");
                level thread function_4b1f214c();
                break;
            }
        }
        wait(0.5);
        if (isdefined(level.var_b6309f5)) {
            break;
        }
    }
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 1, eflags: 0x2 linked
// Checksum 0x3e7fbae6, Offset: 0x1248
// Size: 0x90
function function_9de5caaf(*params) {
    if (self.archetype === #"avogadro" && is_true(self.var_93057265)) {
        level notify(#"hash_24ebf2a541a3c3ea", {#position:self.origin, #aitype:self.aitype});
    }
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0x4c395d1a, Offset: 0x12e0
// Size: 0x148
function function_f73f4bc2() {
    level endon(#"end_game", #"player_has_both_fuse");
    while (true) {
        waitresult = level waittill(#"hash_24ebf2a541a3c3ea");
        if (zm_utility::check_point_in_playable_area(waitresult.position)) {
            point = function_4ba8fde(#"item_zmquest_platinum_power_quest_fuse");
            var_abd93a24 = item_drop::drop_item(0, undefined, 1, 0, point.id, waitresult.position, undefined, 2);
            level flag::set(#"hash_3877401081b5e296");
            var_abd93a24 thread function_6d277ee2();
            var_abd93a24.var_dd21aec2 = 1 | 16;
            continue;
        }
        level thread function_f4f15fc();
    }
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0x13b5e67d, Offset: 0x1430
// Size: 0xe8
function function_f4f15fc() {
    level endon(#"end_game", #"player_has_both_fuse", #"power_on");
    while (true) {
        var_ff0a4380 = struct::get_array("tempest_location", "script_noteworthy");
        var_6df640be = array::random(var_ff0a4380);
        var_c155f005 = spawnactor("spawner_bo5_avogadro_sr", var_6df640be.origin, var_6df640be.angles, undefined, 1);
        if (isdefined(var_c155f005)) {
            var_c155f005.var_93057265 = 1;
            break;
        }
        wait(1);
    }
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 1, eflags: 0x2 linked
// Checksum 0x35cf3875, Offset: 0x1520
// Size: 0x230
function function_3cd87dd2(params) {
    item = params.item;
    if (!isdefined(level.var_f48dca1d)) {
        level.var_f48dca1d = 0;
    }
    if (isplayer(self)) {
        if (isdefined(item.itementry) && item.itementry.name == #"item_zmquest_platinum_power_quest_fuse") {
            level.var_f48dca1d++;
            /#
                iprintlnbold("<unknown string>");
            #/
            level flag::set(#"player_has_first_fuse");
            zm_ui_inventory::function_7df6bb60(#"hash_20cb8163974cc355", 1);
            array::thread_all(function_a1ef346b(), &zm_intel::collect_intel, #"zmintel_platinum_darkaether_artifact_01");
            level thread function_ce636e();
            if (level.var_f48dca1d == 2) {
                level flag::set(#"player_has_both_fuse");
                level flag::clear(#"player_has_first_fuse");
                level flag::clear(#"hash_3877401081b5e296");
                level thread function_14e27349();
                /#
                    iprintlnbold("<unknown string>");
                #/
                zm_ui_inventory::function_7df6bb60(#"hash_20cb7e63974cbe3c", 1);
            }
        }
    }
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0x78f71ad7, Offset: 0x1758
// Size: 0x22c
function function_ce636e() {
    level flag::wait_till(#"hash_1d6357b2512a35e5");
    level flag::wait_till_any([#"player_has_first_fuse", "player_has_both_fuse"]);
    var_9edd4737 = struct::get("place_fuse_trigger", "targetname");
    if (!isdefined(level.var_a66279f7)) {
        level.var_a66279f7 = var_9edd4737 zm_unitrigger::create(#"hash_5887e42de1d323f7", 64);
    }
    var_9edd4737 waittill(#"trigger_activated");
    if (level flag::get("player_has_first_fuse") && level.var_f48dca1d == 1) {
        level thread function_4e0c00e9();
        zm_unitrigger::unregister_unitrigger(level.var_a66279f7);
        level.var_a66279f7 = undefined;
        return;
    }
    if (isdefined(level.var_3dc80578) && level flag::get("player_has_both_fuse")) {
        level thread function_f021f2da();
        zm_unitrigger::unregister_unitrigger(level.var_a66279f7);
        return;
    }
    if (!isdefined(level.var_3dc80578) && level flag::get("player_has_both_fuse")) {
        level thread function_4e0c00e9();
        level thread function_f021f2da();
        zm_unitrigger::unregister_unitrigger(level.var_a66279f7);
    }
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0x448d9071, Offset: 0x1990
// Size: 0xdc
function function_4e0c00e9() {
    level flag::set(#"hash_63567177313a4f07");
    level.var_3dc80578 = util::spawn_model(#"hash_728bb8531360608d", level.var_9e2aada gettagorigin("tag_fuse_01"), level.var_9e2aada gettagangles("tag_fuse_01"));
    level.var_3dc80578 linkto(level.var_9e2aada);
    playsoundatposition(#"hash_52fca246f03a334c", level.var_3dc80578.origin);
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0x4e8b6c3a, Offset: 0x1a78
// Size: 0xd4
function function_f021f2da() {
    level flag::set(#"hash_1937be129b1e59eb");
    var_78afc843 = util::spawn_model(#"hash_728bb8531360608d", level.var_9e2aada gettagorigin("tag_fuse_02"), level.var_9e2aada gettagangles("tag_fuse_02"));
    var_78afc843 linkto(level.var_9e2aada);
    playsoundatposition(#"hash_52fca246f03a334c", var_78afc843.origin);
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0x3f71c3ae, Offset: 0x1b58
// Size: 0x94
function function_9f6ba259() {
    level flag::wait_till_all([#"hash_63567177313a4f07", #"hash_1937be129b1e59eb"]);
    level flag::set(#"hash_7d72f2dda7a4104e");
    clientfield::set("" + #"hash_1c39840b9d4a1796", 0);
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 1, eflags: 0x2 linked
// Checksum 0x51ea8461, Offset: 0x1bf8
// Size: 0x12c
function function_a2e9d398(var_6152b664) {
    level flag::wait_till_all([#"hash_63567177313a4f07", #"hash_1937be129b1e59eb"]);
    /#
        iprintlnbold("<unknown string>");
    #/
    var_6152b664 = getent("use_elec_switch", "targetname");
    if (!level flag::get(#"hash_1d6357b2512a35e5")) {
        zm_unitrigger::unregister_unitrigger(level.var_7b6eae07.s_unitrigger);
    }
    var_6152b664 setvisibletoall();
    var_6152b664 usetriggerrequirelookat();
    /#
        iprintlnbold("<unknown string>");
    #/
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0x9976a03b, Offset: 0x1d30
// Size: 0xa4
function function_4d91a114() {
    if (!level flag::get(#"hash_3f6a498e4113de40")) {
        zm_sq::function_266d66eb(#"hash_19527602349bc485", level.overground_fuse_hint_loc, undefined, #"hash_7deb08c7fd035ada", undefined, 96);
        level flag::wait_till(#"hash_3f6a498e4113de40");
        zm_sq::objective_complete(#"hash_19527602349bc485");
    }
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0x48a1f30, Offset: 0x1de0
// Size: 0xa4
function function_14a36992() {
    if (!level flag::get(#"hash_3b3dc236fb00a47e")) {
        zm_sq::function_266d66eb(#"hash_55d9affae77c2699", level.var_6eccb0ad, undefined, #"hash_7deb08c7fd035ada", undefined, 96);
        level flag::wait_till(#"hash_3b3dc236fb00a47e");
        zm_sq::objective_complete(#"hash_55d9affae77c2699");
    }
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0x9d49f324, Offset: 0x1e90
// Size: 0x134
function function_4b1f214c() {
    if (level flag::get_all([#"hash_3f6a498e4113de40", #"hash_1d6357b2512a35e5"])) {
        if (isdefined(level.var_3f856791)) {
            zm_sq::function_266d66eb(#"hash_5e9c8fcf0a9613ad", level.var_3f856791, 1, #"hash_7deb08c7fd035ada", undefined, 96);
        }
    }
    if (level flag::get_all([#"hash_3b3dc236fb00a47e", #"hash_1d6357b2512a35e5"])) {
        if (isdefined(level.var_b6309f5)) {
            zm_sq::function_266d66eb(#"hash_63c58e15f2ce52ce", level.var_b6309f5, 1, #"hash_7deb08c7fd035ada", undefined, 96);
        }
    }
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0x8cea44c4, Offset: 0x1fd0
// Size: 0x1a4
function function_6d277ee2() {
    if (isdefined(self) && level flag::get_all([#"hash_3877401081b5e296", #"hash_1d6357b2512a35e5"])) {
        zm_sq::function_266d66eb(#"hash_792e2ed42520c5af", self, 1, #"hash_7deb08c7fd035ada", undefined, 96);
    } else {
        level flag::wait_till_all([#"hash_1d6357b2512a35e5", #"hash_3877401081b5e296"]);
        if (isdefined(self)) {
            zm_sq::function_266d66eb(#"hash_792e2ed42520c5af", self, 1, #"hash_7deb08c7fd035ada", undefined, 96);
        }
    }
    level waittill(#"player_has_both_fuse", #"power_on");
    zm_sq::objective_complete(#"hash_792e2ed42520c5af");
    zm_sq::objective_complete(#"hash_63c58e15f2ce52ce");
    zm_sq::objective_complete(#"hash_5e9c8fcf0a9613ad");
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0x223cd354, Offset: 0x2180
// Size: 0x10c
function function_14e27349() {
    fuse_box_loc = struct::get("fuse_box_loc", "targetname");
    if (level flag::get(#"player_has_both_fuse")) {
        level flag::wait_till(#"hash_1d6357b2512a35e5");
        zm_sq::function_266d66eb(#"hash_5a6d7c583cee3493", fuse_box_loc, undefined, #"hash_7d61cfc441aebdb9", undefined, 96);
    }
    level flag::wait_till_all([#"hash_63567177313a4f07", #"hash_1937be129b1e59eb"]);
    zm_sq::objective_complete(#"hash_5a6d7c583cee3493");
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0x6efab644, Offset: 0x2298
// Size: 0xdc
function function_ea520491() {
    level endon(#"end_game");
    fuse_box_loc = struct::get("find_fuse_hint", "targetname");
    var_d9653ef0 = fuse_box_loc zm_unitrigger::create(#"hash_2145e2abf11514fe", 70);
    level flag::wait_till_any([#"player_has_first_fuse", #"player_has_both_fuse"]);
    wait(1);
    zm_unitrigger::unregister_unitrigger(var_d9653ef0);
}

/#

    // Namespace namespace_54685ebd/namespace_54685ebd
    // Params 0, eflags: 0x0
    // Checksum 0x4c86f315, Offset: 0x2380
    // Size: 0x8c
    function function_cd7a3de4() {
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&cmd);
    }

    // Namespace namespace_54685ebd/namespace_54685ebd
    // Params 1, eflags: 0x0
    // Checksum 0x27ed2c86, Offset: 0x2418
    // Size: 0x282
    function cmd(cmd) {
        switch (cmd) {
        case #"hash_64b8a356ba686f7b":
            level flag::set(#"hash_7d72f2dda7a4104e");
            level flag::set("<unknown string>");
            break;
        case #"hash_4cbd866bd8931c8a":
            level thread function_ce636e();
            level flag::set(#"player_has_both_fuse");
            break;
        case #"hash_72b6d8c2e2e976a3":
            var_dfe526e8 = function_a1ef346b();
            foreach (player in var_dfe526e8) {
                player function_bc82f900(#"hash_19e74997cb877a27");
            }
        case #"hash_6f3ea2dbeb65d030":
            var_dfe526e8 = function_a1ef346b();
            foreach (player in var_dfe526e8) {
                point = function_4ba8fde(#"item_zmquest_platinum_power_quest_fuse");
                var_752753e1 = item_drop::drop_item(0, undefined, 1, 0, point.id, player.origin, undefined, 2);
                var_752753e1.var_dd21aec2 = 1 | 16;
            }
            break;
        }
    }

#/
