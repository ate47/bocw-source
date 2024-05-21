// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\values_shared.gsc;
#using scripts\zm\zm_silver_util.gsc;
#using scripts\zm_common\zm_ui_inventory.gsc;
#using script_2f560596a9a134ab;
#using script_4ce5d94e8c797350;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;
#using script_36f4be19da8eb6d0;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_intel.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_silver_ww_quest;

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xff68fa3c, Offset: 0xa50
// Size: 0x9a4
function init() {
    if (!getdvarint(#"hash_83c887746f9dfd", 1)) {
        var_8800c990 = getent("ieu_interact_volume", "script_noteworthy");
        var_8800c990 setinvisibletoall();
        var_d04aa7c3 = getent("zm_arm_dr_cp", "script_noteworthy");
        var_d04aa7c3 notsolid();
        var_7a77b166 = getent("zm_gs_cp", "targetname");
        var_7a77b166 notsolid();
        var_7a77b166 connectpaths();
        var_a9674486 = getent("zm_sw_gas_crash_clip", "targetname");
        var_a9674486 notsolid();
        var_a9674486 connectpaths();
        var_91654233 = getent("zm_cy_cp", "targetname");
        var_91654233 notsolid();
        var_91654233 connectpaths();
        var_647db42a = getent("zm_sw_nit_left_clip", "targetname");
        var_647db42a notsolid();
        var_647db42a connectpaths();
        var_6aef8ef1 = getent(getent("zm_sw_nit_left", "script_noteworthy").target, "targetname");
        var_6aef8ef1 setinvisibletoall();
        var_dfca5f6b = getent("zm_ele_cp", "targetname");
        var_dfca5f6b notsolid();
        var_dfca5f6b connectpaths();
        var_47f8e97e = getent("zm_sw_par_pa_clip", "targetname");
        var_47f8e97e notsolid();
        var_47f8e97e connectpaths();
        var_e9c12dbe = getent(getent("zm_sw_par_pa", "script_noteworthy").target, "targetname");
        var_e9c12dbe setinvisibletoall();
        var_1769d926 = getent("zm_sw_pla_tr_clip", "targetname");
        var_1769d926 notsolid();
        var_1769d926 connectpaths();
        var_64b5a257 = getent(getent("zm_sw_pla_tr", "script_noteworthy").target, "targetname");
        var_64b5a257 notsolid();
        var_64b5a257 connectpaths();
        var_dc323327 = getent("zm_sw_pla_right", "script_noteworthy");
        var_dc323327 hide();
        return;
    }
    /#
        execdevgui("chain");
        level thread function_233ed9b4();
    #/
    clientfield::register("scriptmover", "" + #"hash_7159facf785aad53", 1, 1, "int");
    clientfield::register("toplayer", "" + #"hash_864ef374ea11ea7", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_18f64f139f905f76", 1, 1, "int");
    clientfield::register("scriptmover", "crystal_energy_fx", 1, 1, "int");
    clientfield::register("allplayers", "ww_vacuum_crystal_fx", 1, 1, "int");
    clientfield::register("allplayers", "hold_crystal_energy", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_21ba194bb9030d0c", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_5e31ed9954a7a58a", 1, 2, "int");
    clientfield::register("scriptmover", "" + #"hash_5020565243fa510a", 1, 1, "int");
    clientfield::register("toplayer", "" + #"hash_4119827af45a4ba7", 1, 1, "int");
    clientfield::register("toplayer", "" + #"hash_115529ffa902a895", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_6a198759db0810a6", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_7862b1e62306df36", 1, 1, "int");
    clientfield::register("allplayers", "" + #"hash_196eef041ba86f9a", 1, 1, "counter");
    clientfield::register("scriptmover", "" + #"hash_5a932b901b9a5d0d", 1, 2, "int");
    clientfield::register("scriptmover", "" + #"hash_20066374c799cb61", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_7aeee79e85f9273c", 1, 3, "int");
    clientfield::register("world", "" + #"hash_31ddead700f0e24c", 1, 1, "int");
    level thread function_7b4dc906();
    level thread function_c436fc75();
    level thread function_17329c15();
    level thread function_78d3b53b();
    level thread function_77fdf8f3();
    level thread function_a5ae82b0();
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x80b6f105, Offset: 0x1400
// Size: 0x7c
function function_7b4dc906() {
    level endon(#"end_game");
    level.var_632fe5ca = 0;
    function_aee47035();
    callback::on_item_pickup(&on_item_pickup);
    callback::on_weapon_change(&function_b8a1fcc2);
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x6ca40201, Offset: 0x1488
// Size: 0x7c
function function_aee47035() {
    level thread function_284b43aa();
    level thread function_5adab0a2();
    level thread function_afba0d4c();
    level thread function_23ac3e06();
    level thread function_67144513();
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xe78899f, Offset: 0x1510
// Size: 0x150
function function_284b43aa() {
    level endon(#"game_ended");
    while (true) {
        waitresult = level waittill(#"hash_7e3660d8d125a63a");
        if (zm_utility::check_point_in_playable_area(waitresult.position)) {
            point = function_4ba8fde(#"hash_37f8e99ab49c109");
            var_82545918 = item_drop::drop_item(0, undefined, 1, 0, point.id, waitresult.position, undefined, 2);
            var_82545918.var_dd21aec2 = 1 | 16;
            level flag::wait_till_timeout(30, "player_got_card");
            if (level flag::get("player_got_card")) {
                break;
            }
            if (isdefined(var_82545918)) {
                var_82545918 delete();
            }
        }
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x2e09d05f, Offset: 0x1668
// Size: 0x474
function function_5adab0a2() {
    reader = getent("zm_red_arm", "script_noteworthy");
    reader clientfield::set("" + #"hash_6a198759db0810a6", 1);
    level flag::wait_till("player_got_card");
    drawer = getent("zm_dra_arm", "script_noteworthy");
    var_bc4ce35d = getent(drawer.target, "targetname");
    var_bc4ce35d linkto(drawer);
    /#
        iprintlnbold("tag_fuse");
    #/
    e_activator = reader zm_unitrigger::function_fac87205(#"hash_4472d2ff9d015c5e", 48);
    if (isplayer(e_activator)) {
        e_activator clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
    }
    var_493bf9de = util::spawn_model(#"hash_57b2f3d240186aa8", struct::get("zm_chip_ins").origin, struct::get("zm_chip_ins").angles);
    var_493bf9de moveto(var_493bf9de.origin + (0, -8, 0), 1, 0.25, 0.25);
    var_493bf9de playsound(#"hash_25944d8316921ce3");
    var_493bf9de waittill(#"movedone");
    var_4fe610e9 = struct::get("zm_dw_re");
    point = function_4ba8fde(#"item_zmintel_silver_requiem_artifact_1");
    var_c4667a11 = item_drop::drop_item(0, undefined, 1, 0, point.id, var_4fe610e9.origin, var_4fe610e9.angles, 0);
    var_c4667a11.var_dd21aec2 = 1 | 16;
    var_c4667a11 linkto(drawer);
    drawer moveto(drawer.origin + (0, 15, 0), 2, 0.5, 0.5);
    foreach (player in getplayers()) {
        if (isalive(player) && distancesquared(player.origin, drawer.origin) <= 16384) {
            player clientfield::set_to_player("" + #"hash_115529ffa902a895", 1);
        }
    }
    drawer playsound(#"hash_2912845c6136a6b4");
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x1706682e, Offset: 0x1ae8
// Size: 0x1dc
function function_afba0d4c() {
    level endon(#"game_ended");
    var_7b1f83bc = struct::get("zm_sw_wpn", "script_noteworthy");
    var_bf33fcdb = struct::get("zm_nd_wpn_lookat", "targetname");
    level.var_8e50d6c1 = util::spawn_model(#"hash_4218568b613ec5d2", var_7b1f83bc.origin, var_7b1f83bc.angles);
    level flag::wait_till("player_got_remote");
    /#
        iprintlnbold("<unknown string>");
    #/
    foreach (player in getplayers()) {
        if (isalive(player)) {
            player thread zm_vo::function_c4303dda(#"hash_1f1af84a7a06aacb");
            player thread function_34ba4d65(level.var_8e50d6c1, 1000, var_bf33fcdb, 250);
        }
    }
    level thread function_eb0fb7fc(30, 30);
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 4, eflags: 0x2 linked
// Checksum 0xb313b7c8, Offset: 0x1cd0
// Size: 0x332
function function_34ba4d65(ent, max_distance, var_967955b1, var_3ef79add) {
    level endon(#"hash_41f5f07f48f61c32");
    self endon(#"death");
    ent endon(#"death", #"delete");
    for (var_58507577 = 0; isdefined(ent); var_58507577 = math::clamp(var_58507577 - 1, 0, 10)) {
        var_310f9e44 = pathdistance(self.origin, ent.origin);
        if (isalive(self) && isdefined(var_310f9e44) && var_310f9e44 <= max_distance) {
            self playsoundtoplayer("zmb_quest_ww_remote_chirp_2d", self);
            if (!self flag::get("signal_detected")) {
                self flag::set("signal_detected");
                if (var_58507577 == 0) {
                    self thread zm_vo::function_c4303dda(#"hash_400ee92852a265a6");
                    var_58507577 = 10;
                }
            }
            if (!self flag::get("signal_locked") && var_310f9e44 <= var_3ef79add && self zm_utility::is_player_looking_at(var_967955b1.origin, 0.9975, 0, self)) {
                self flag::set("signal_locked");
                self thread zm_vo::function_c4303dda(#"hash_21316bfb4ed0ab16");
            }
            n_waittime = math::clamp(var_310f9e44 / 500, 0.5, 10);
            wait(n_waittime);
            var_58507577 = math::clamp(var_58507577 - n_waittime, 0, 10);
            continue;
        }
        if (self flag::get("signal_detected")) {
            self flag::clear("signal_detected");
            self flag::clear("signal_locked");
            if (var_58507577 == 0) {
                self thread zm_vo::function_c4303dda(#"hash_174e4ff4a83163b2");
                var_58507577 = 10;
            }
        }
        wait(1);
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 2, eflags: 0x2 linked
// Checksum 0xa13c8c87, Offset: 0x2010
// Size: 0x59c
function function_eb0fb7fc(duration, cooldown) {
    level endon(#"hash_688da970d6800901");
    var_f769654e = getent("ieu_interact_volume", "script_noteworthy");
    var_410e2bb5 = getent("zm_start_door", "script_noteworthy");
    var_2f3cc38 = getent("zm_sw_gla", "script_noteworthy");
    var_7ee5c5e3 = 0;
    while (true) {
        var_f769654e setvisibletoall();
        var_f769654e sethintstring(#"hash_14c27f71630de2a6");
        waitresult = var_f769654e waittill(#"trigger");
        if (isplayer(waitresult.activator)) {
            waitresult.activator clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
        }
        var_7ee5c5e3 += 1;
        foreach (player in getplayers()) {
            if (player.zone_name === "zone_proto_interior_lower") {
                player thread zm_vo::function_c4303dda(#"hash_723a00998b0a7c16");
            }
        }
        level notify(#"hash_41f5f07f48f61c32");
        var_f769654e setinvisibletoall();
        level notify(#"hash_3a8ba71d0dfe9582");
        level.var_75a20fe3 = util::spawn_model("tag_origin", var_410e2bb5.origin + (25, -33, 80), var_410e2bb5.angles + (0, 90, 0));
        level.var_75a20fe3 clientfield::set("" + #"hash_7159facf785aad53", 1);
        level clientfield::set("" + #"hash_31ddead700f0e24c", 1);
        if (var_7ee5c5e3 == 1) {
            var_2f3cc38 thread scene::play(#"hash_44c12ff8dba02b49", var_2f3cc38);
        }
        wait(duration);
        foreach (player in getplayers()) {
            if (player.zone_name === "zone_proto_interior_lower") {
                player thread zm_vo::function_c4303dda(#"hash_1fc733b124e246eb");
            }
        }
        level notify(#"hash_38e1cbcaef1b44c9");
        level.var_75a20fe3 clientfield::set("" + #"hash_7159facf785aad53", 0);
        level clientfield::set("" + #"hash_31ddead700f0e24c", 0);
        waitframe(1);
        if (isdefined(level.var_75a20fe3)) {
            level.var_75a20fe3 delete();
        }
        var_f769654e setvisibletoall();
        var_f769654e sethintstring(#"hash_19d5279408f7213b");
        wait(cooldown);
        foreach (player in getplayers()) {
            if (player.zone_name === "zone_proto_interior_lower") {
                player thread zm_vo::function_c4303dda(#"hash_7ff8f37e0b0b8efb");
            }
        }
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x5fb76667, Offset: 0x25b8
// Size: 0x20c
function function_23ac3e06() {
    vol_death_zone = getent("vol_death_zone", "script_noteworthy");
    level thread function_890f302c();
    while (true) {
        if (level.var_632fe5ca >= 20) {
            break;
        }
        level waittill(#"hash_3a8ba71d0dfe9582");
        vol_death_zone thread function_37ba0961();
        vol_death_zone function_67a6fd4();
    }
    foreach (player in getplayers()) {
        if (player.zone_name === "zone_proto_interior_lower") {
            player thread zm_vo::function_c4303dda(#"hash_3f19f7ae3b1f9bf3");
        }
    }
    level notify(#"hash_688da970d6800901");
    level.var_75a20fe3 clientfield::set("" + #"hash_7159facf785aad53", 0);
    level clientfield::set("" + #"hash_31ddead700f0e24c", 0);
    waitframe(1);
    if (isdefined(level.var_75a20fe3)) {
        level.var_75a20fe3 delete();
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xf9dd13a, Offset: 0x27d0
// Size: 0x14a
function function_37ba0961() {
    level endon(#"hash_38e1cbcaef1b44c9", #"hash_688da970d6800901");
    while (true) {
        all_players = getplayers();
        foreach (player in all_players) {
            if (player istouching(self)) {
                player clientfield::set_to_player("" + #"hash_864ef374ea11ea7", 1);
                continue;
            }
            player clientfield::set_to_player("" + #"hash_864ef374ea11ea7", 0);
        }
        waitframe(1);
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x3f9825b6, Offset: 0x2928
// Size: 0x11c
function function_890f302c() {
    level endon(#"game_ended", #"ww_quest_completed");
    while (true) {
        level waittill(#"hash_38e1cbcaef1b44c9", #"hash_688da970d6800901");
        all_players = getplayers();
        foreach (player in all_players) {
            player clientfield::set_to_player("" + #"hash_864ef374ea11ea7", 0);
        }
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x8f8c90c7, Offset: 0x2a50
// Size: 0x1be
function function_67a6fd4() {
    level endon(#"hash_38e1cbcaef1b44c9");
    var_cb6783bb = getent("zm_door_vac", "targetname");
    if (!isdefined(var_cb6783bb)) {
        return;
    }
    while (level.var_632fe5ca < 20) {
        ai_zombies = getactorarray();
        foreach (actor in ai_zombies) {
            if (isalive(actor) && actor istouching(self)) {
                actor playsound(#"hash_140d306061d4e40c");
                actor.allowdeath = 1;
                actor dodamage(actor.health + 1, actor.origin, var_cb6783bb, undefined, "none", "MOD_DOT", 0, level.var_652bc5ed);
                level.var_632fe5ca += 1;
            }
        }
        wait(1);
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x4967d131, Offset: 0x2c18
// Size: 0x56c
function function_67144513() {
    var_ed63dcf1 = getent("ieu_interact_volume", "script_noteworthy");
    var_bf352650 = getent("vol_death_zone", "script_noteworthy");
    var_410e2bb5 = getent("zm_start_door", "script_noteworthy");
    var_a0f325fa = getent(var_410e2bb5.target, "targetname");
    var_ed63dcf1 setinvisibletoall();
    var_bf352650 setinvisibletoall();
    var_7b1f83bc = struct::get("zm_sw_wpn", "script_noteworthy");
    var_c18965d8 = getent(var_7b1f83bc.target, "targetname");
    var_87cced30 = util::spawn_model("tag_origin", var_7b1f83bc.origin, var_7b1f83bc.angles);
    level waittill(#"hash_688da970d6800901");
    var_ed63dcf1 setvisibletoall();
    var_ed63dcf1 sethintstring(#"hash_7c3dc5c3150a3e79");
    var_ed63dcf1 waittill(#"trigger");
    point = function_4ba8fde(#"item_zmintel_silver_requiem_artifact_2");
    if (isdefined(point)) {
        var_87cced30 = item_drop::drop_item(0, undefined, 1, 0, point.id, var_7b1f83bc.origin, var_7b1f83bc.angles, 0);
        var_87cced30.var_dd21aec2 = 1 | 16;
    }
    if (isdefined(level.var_8e50d6c1)) {
        level.var_8e50d6c1 hide();
        level.var_8e50d6c1 deletedelay();
    }
    level flag::set("open_wonder_weapon_room");
    var_87cced30 clientfield::set("" + #"hash_18f64f139f905f76", 1);
    var_ed63dcf1 delete();
    zm_intel::function_23255935("ww_quest_audiolog");
    var_410e2bb5 thread scene::play(#"hash_65505ba29fee0a2f", var_410e2bb5);
    wait(1.2);
    foreach (player in getplayers()) {
        if (player istouching(var_bf352650)) {
            v_dir = player.origin - var_410e2bb5.origin;
            v_dir = (v_dir[0], v_dir[1], 0.1);
            v_dir = vectornormalize(v_dir);
            strength = 1200;
            v_player_velocity = player getvelocity();
            player setvelocity(v_player_velocity + v_dir * strength);
        }
        if (distancesquared(var_410e2bb5.origin, player.origin) <= 262144) {
            player clientfield::set_to_player("" + #"hash_4119827af45a4ba7", 1);
        }
    }
    var_a0f325fa delete();
    /#
        iprintlnbold("<unknown string>");
    #/
    level flag::wait_till(#"hash_15f3e07d50195cb9");
    if (isdefined(var_87cced30)) {
        var_87cced30 delete();
    }
    var_c18965d8 delete();
    level flag::set("ww_quest_completed");
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x719a363a, Offset: 0x3190
// Size: 0xf8
function function_2f6cb9bc(var_479e219c) {
    level endon(var_479e219c + "_enable", var_479e219c + "_crate_hint");
    self thread function_2bb91770(var_479e219c);
    while (!level flag::get(var_479e219c + #"hash_b3e1b646a8ad825")) {
        level flag::wait_till(#"dark_aether_active");
        level notify(var_479e219c + #"hash_166bff2e664c55b5");
        zm_unitrigger::unregister_unitrigger(self.s_unitrigger);
        level flag::wait_till_clear(#"dark_aether_active");
        self thread function_2bb91770(var_479e219c);
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xde433466, Offset: 0x3290
// Size: 0xc4
function function_2bb91770(var_479e219c) {
    level endon(var_479e219c + "_enable", var_479e219c + #"hash_166bff2e664c55b5");
    level flag::wait_till(#"hash_15f3e07d50195cb9");
    self zm_unitrigger::function_fac87205(#"hash_12843f9a6f78954f", (96, 96, 96));
    level notify(var_479e219c + "_crate_hint");
    level flag::set(var_479e219c + #"hash_b3e1b646a8ad825");
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xb4e87ead, Offset: 0x3360
// Size: 0x82c
function function_c436fc75() {
    level thread function_8fa801ac();
    scene::add_scene_func(#"p9_fxanim_zm_ndu_contain_crate_cryo_bundle", &function_ad61157, "init");
    level scene::init(#"p9_fxanim_zm_ndu_contain_crate_cryo_bundle");
    level.var_a1b709cb = getent("zm_sw_nit_left", "script_noteworthy");
    level.var_a1b709cb.var_14bfe1d6 = getent(level.var_a1b709cb.script_string, "targetname");
    level.var_a1b709cb.var_14bfe1d6 notsolid();
    level.var_a1b709cb.var_14bfe1d6 connectpaths();
    var_91654233 = getent("zm_cy_cp", "targetname");
    var_91654233 solid();
    var_91654233 disconnectpaths();
    level.var_a1b709cb thread function_2f6cb9bc("nitro");
    var_1a3ee7c1 = getent(level.var_a1b709cb.target, "targetname");
    var_1a3ee7c1 setinvisibletoall();
    var_127d143e = getent("zm_fun_po", "script_noteworthy");
    var_811ae6d7 = getent("zm_fun_dmg", "script_noteworthy");
    var_811ae6d7 enablegrenadetouchdamage();
    while (true) {
        waitresult = var_811ae6d7 waittill(#"damage");
        if (isdefined(waitresult.attacker) && waitresult.attacker.archetype === #"hash_7c0d83ac1e845ac2") {
            var_127d143e clientfield::set("" + #"hash_21ba194bb9030d0c", 1);
            var_127d143e clientfield::set("" + #"hash_5e31ed9954a7a58a", 1);
            var_8ce27402 = util::spawn_model(#"hash_35b2e97c4f4b285e", var_127d143e.origin, var_127d143e.angles);
            /#
                iprintlnbold("<unknown string>");
            #/
            break;
        }
    }
    level notify(#"hash_43f35dbac954ab43");
    level flag::wait_till(#"player_got_the_flask");
    e_activator = var_127d143e zm_unitrigger::function_fac87205(#"hash_305fa71dfcc314d1", 64);
    if (isplayer(e_activator)) {
        e_activator clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
    }
    var_ed7b24c9 = struct::get("drip_nitrogen_loc", "targetname");
    var_4db6fabc = util::spawn_model(#"hash_7c1403e813c1a62e", var_ed7b24c9.origin);
    var_4db6fabc setscale(2);
    var_4db6fabc playsound(#"hash_38b73ff812bde7a2");
    var_127d143e clientfield::set("" + #"hash_5e31ed9954a7a58a", 2);
    wait(60);
    if (isdefined(var_8ce27402)) {
        var_8ce27402 delete();
    }
    var_127d143e clientfield::set("" + #"hash_21ba194bb9030d0c", 0);
    var_127d143e clientfield::set("" + #"hash_5e31ed9954a7a58a", 0);
    var_127d143e setmodel(#"hash_210b840790939aa7");
    var_f98507ef = struct::get("zm_sce_fun");
    var_f98507ef thread scene::play(#"hash_5ba02ce8deeb2061", var_127d143e);
    var_4db6fabc delete();
    point = function_4ba8fde(#"hash_22d1a49f2c1d1c80");
    var_6222618f = item_drop::drop_item(0, undefined, 1, 0, point.id, var_ed7b24c9.origin, var_ed7b24c9.angles, 0);
    var_6222618f.var_dd21aec2 = 1 | 16;
    level flag::wait_till("player_got_the_filled_flask");
    level.var_a1b709cb zm_unitrigger::unregister_unitrigger(level.var_a1b709cb.s_unitrigger);
    level notify(#"hash_3395a609db7462e7");
    var_1a3ee7c1 setvisibletoall();
    var_1a3ee7c1 sethintstring(#"hash_235cdbad8044e4c2");
    waitresult = var_1a3ee7c1 waittill(#"trigger");
    if (isplayer(waitresult.activator)) {
        waitresult.activator clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
    }
    var_1a3ee7c1 setinvisibletoall();
    playsoundatposition(#"hash_7d25502411a9cd58", var_1a3ee7c1.origin);
    level notify(#"hash_1fd19e3d2e214e5");
    wait(3);
    level scene::play(#"p9_fxanim_zm_ndu_contain_crate_cryo_bundle", "chain");
    /#
        iprintlnbold("<unknown string>");
    #/
    level.var_a1b709cb thread function_8d9ddc22("NITROGEN");
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xfe6c3cd8, Offset: 0x3b98
// Size: 0x7c
function function_ad61157(a_ents) {
    var_bf71a40b = a_ents[#"weapon_crate"];
    level waittill(#"hash_1fd19e3d2e214e5");
    var_bf71a40b clientfield::set("" + #"hash_5020565243fa510a", 1);
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xbe3098aa, Offset: 0x3c20
// Size: 0x31c
function function_8fa801ac() {
    var_6dad8de0 = getent("zm_nit_box_start", "script_noteworthy");
    var_6954c829 = spawn("trigger_damage", var_6dad8de0.origin, 0, 64, 64);
    var_b14c0d6c = struct::get("zm_nit_box_po");
    while (true) {
        waitresult = var_6954c829 waittill(#"damage");
        if (isplayer(waitresult.attacker) && !is_true(waitresult.var_98e101b0)) {
            if (isdefined(waitresult.weapon) && namespace_b376a999::function_7c292369(waitresult.weapon)) {
                var_99bf2e73 = struct::get("zmintel_silver_maxis_audiolog_2", "scriptbundlename");
                var_99bf2e73 thread zm_intel::function_c1974629(undefined, 500);
                var_6dad8de0 thread scene::play(#"hash_151e965484d970e1", var_6dad8de0);
                wait(1);
                foreach (player in getplayers()) {
                    if (distancesquared(player.origin, var_b14c0d6c.origin) < 65536) {
                        player clientfield::set_to_player("" + #"hash_115529ffa902a895", 1);
                    }
                }
                point = function_4ba8fde(#"hash_16ea992ec682d37");
                var_6222618f = item_drop::drop_item(0, undefined, 1, 0, point.id, var_b14c0d6c.origin, var_b14c0d6c.angles, 2);
                var_6222618f.var_dd21aec2 = 1 | 16;
                break;
            }
        }
    }
    var_6954c829 delete();
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x6 linked
// Checksum 0x1bbd4db1, Offset: 0x3f48
// Size: 0x18c
function private function_c801979a(*s_params) {
    assert(isdefined(level.var_3789aef6));
    if (self.var_9fde8624 === #"hash_2a5479b83161cb35" && !level flag::get("container_filled_with_gas")) {
        waittillframeend();
        if (!is_true(self.var_270befd2) && isdefined(self) && isdefined(level.var_3789aef6) && self istouching(level.var_3789aef6)) {
            self.var_270befd2 = 1;
            container = getent("zm_con_arm", "script_noteworthy");
            container clientfield::set("" + #"hash_20066374c799cb61", 1);
            self thread function_beb0f79f();
            wait(3);
            level flag::set("container_filled_with_gas");
            /#
                iprintlnbold("<unknown string>");
            #/
        }
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x6 linked
// Checksum 0xe54a504a, Offset: 0x40e0
// Size: 0x35c
function private function_beb0f79f() {
    level endon(#"game_ended");
    node = struct::get("ww_gas_vacuum_loc", "targetname");
    if (!isdefined(node)) {
        return;
    }
    wait(0.8);
    radius = 60;
    if (!isdefined(self)) {
        return;
    }
    center = self.origin + (0, 0, 10);
    playfx(#"hash_5f0e97a0faf57056", self.origin + (0, 0, 18), anglestoup(self.angles));
    if (isdefined(self)) {
        self delete();
    }
    target = util::spawn_model("tag_origin", node.origin, (300, 190, 0));
    playfxontag(#"hash_26bcb19edfb10d7c", target, "tag_origin");
    target playsound(#"hash_1cc97472d1a1ac95");
    waittime = 5;
    interval = 0.1;
    /#
        waittime = getdvarfloat(#"hash_290a38a40f8a01b2", 5);
        interval = getdvarfloat(#"hash_24a6ae1d9a8c605b", 0.1);
    #/
    while (waittime > 0) {
        if (!mayspawnentity()) {
            break;
        }
        rotation1 = randomfloat(360);
        var_bbbdc8b2 = randomfloat(360);
        start_pos = center + (sin(rotation1) * cos(var_bbbdc8b2), cos(rotation1) * cos(var_bbbdc8b2), sin(var_bbbdc8b2)) * randomfloat(radius);
        level thread namespace_b376a999::function_6dbf1bb3(target, 5, start_pos);
        waittime -= interval;
        radius -= 10 * interval;
        wait(interval);
    }
    wait(1);
    if (isdefined(target)) {
        target delete();
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x25fa8a8c, Offset: 0x4448
// Size: 0x73c
function function_17329c15() {
    level thread function_dc2acb90();
    level scene::init(#"p9_fxanim_zm_ndu_contain_crate_gas_bundle");
    level.var_74ec088f = getent("zm_sw_gas_crash", "script_noteworthy");
    level.var_74ec088f.var_14bfe1d6 = getent(level.var_74ec088f.script_string, "targetname");
    level.var_74ec088f.var_14bfe1d6 notsolid();
    level.var_74ec088f.var_14bfe1d6 connectpaths();
    var_7a77b166 = getent("zm_gs_cp", "targetname");
    var_7a77b166 solid();
    var_7a77b166 disconnectpaths();
    level.var_74ec088f thread function_2f6cb9bc("gas");
    container = getent("zm_con_arm", "script_noteworthy");
    level.var_3789aef6 = getent(container.target, "targetname");
    callback::on_ai_killed(&function_c801979a);
    level flag::wait_till("player_got_the_canister");
    e_activator = container zm_unitrigger::function_fac87205(#"hash_1b64b8622366a804", (64, 64, 64));
    if (isplayer(e_activator)) {
        e_activator clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
    }
    var_5ac7d534 = util::spawn_model(#"hash_5995b3cc741a38e", struct::get("zm_can_arm").origin);
    var_5ac7d534 playsound(#"");
    level flag::wait_till("container_filled_with_gas");
    callback::remove_on_ai_killed(&function_c801979a);
    var_504be1e4 = getent("zm_con_wrn", "targetname");
    var_504be1e4 rotateto(var_504be1e4.angles + (-90, 0, 0), 0.5, 0.25, 0.25);
    container clientfield::set("" + #"hash_20066374c799cb61", 0);
    var_5ac7d534 playsound(#"hash_4900d3acf7b69f98");
    /#
        iprintlnbold("<unknown string>");
    #/
    wait(3);
    level notify(#"hash_20690d1d96df7c03");
    var_5ac7d534 delete();
    point = function_4ba8fde(#"item_zmintel_silver_darkaether_artifact_2");
    var_457b303e = item_drop::drop_item(0, undefined, 1, 0, point.id, struct::get("zm_can_arm").origin, undefined, 0);
    var_457b303e.var_dd21aec2 = 1 | 16;
    level flag::wait_till("full_canister_picked_up");
    level.var_74ec088f zm_unitrigger::unregister_unitrigger(level.var_74ec088f.s_unitrigger);
    level notify(#"hash_6570f3a0ec272ff0");
    e_activator = level.var_74ec088f zm_unitrigger::function_fac87205(#"hash_4e599abcf42324d0", (96, 96, 96));
    if (isplayer(e_activator)) {
        e_activator clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
    }
    var_b04e724c = util::spawn_model(#"hash_5995b3cc741a38e", struct::get("zm_can_box").origin);
    t_damage = spawn("trigger_damage", var_b04e724c.origin, 0, 32, 32);
    while (true) {
        waitresult = t_damage waittill(#"damage");
        if (isdefined(waitresult) && isplayer(waitresult.attacker)) {
            break;
        }
    }
    /#
        iprintlnbold("<unknown string>");
    #/
    if (isdefined(var_b04e724c)) {
        var_b04e724c delete();
    }
    level.var_74ec088f clientfield::set("" + #"hash_7862b1e62306df36", 1);
    level scene::play(#"p9_fxanim_zm_ndu_contain_crate_gas_bundle", "roots");
    level.var_74ec088f thread function_8d9ddc22("GAS");
    waittillframeend();
    if (isdefined(t_damage)) {
        t_damage delete();
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xc16cedc2, Offset: 0x4b90
// Size: 0x204
function function_dc2acb90() {
    var_5434afc4 = struct::get("zm_can_start", "script_noteworthy");
    level flag::wait_till("start_zombie_round_logic");
    point = function_4ba8fde(#"hash_5d1c62463e73e906");
    canister = item_drop::drop_item(0, undefined, 1, 0, point.id, var_5434afc4.origin, var_5434afc4.angles, 0);
    canister.var_dd21aec2 = 1 | 16;
    var_56bd59dc = getent("zm_can_dmg", "script_noteworthy");
    var_56bd59dc.var_22cea3da = &function_72c756bc;
    waitresult = var_56bd59dc waittill(#"hash_31c03401c377e12b");
    if (isdefined(waitresult.player) && isdefined(canister)) {
        if (isdefined(var_56bd59dc)) {
            var_56bd59dc delete();
        }
        canister zm_utility::fake_physicslaunch(waitresult.player.origin + (0, 0, 35), 400);
        canister playsound(#"hash_58520f136e1f89f9");
    }
    var_99bf2e73 = struct::get("zmintel_silver_maxis_audiolog_3", "scriptbundlename");
    var_99bf2e73 thread zm_intel::function_c1974629(undefined, 500);
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 2, eflags: 0x2 linked
// Checksum 0xb571d95c, Offset: 0x4da0
// Size: 0x4e
function function_72c756bc(player, time) {
    if (time >= 2000) {
        self notify(#"hash_31c03401c377e12b", {#player:player});
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 3, eflags: 0x2 linked
// Checksum 0xdea60ad3, Offset: 0x4df8
// Size: 0x448
function function_3ca2b2c1(var_fd6475b5, var_743c16e0, var_93bdf906) {
    level endon(var_743c16e0);
    level flag::wait_till_all(["terminal_1_is_on", "terminal_2_is_on"]);
    var_7f76a0b6 = struct::get(var_fd6475b5);
    var_f2484ed9 = util::spawn_model("tag_origin", var_7f76a0b6.origin);
    var_f2484ed9.var_743c16e0 = var_743c16e0;
    if (!isdefined(level.var_8dc29179)) {
        level.var_8dc29179 = [];
    }
    level.var_8dc29179[var_fd6475b5] = var_f2484ed9;
    while (true) {
        if (!isdefined(var_f2484ed9.mdl_gameobject)) {
            var_f2484ed9.require_look_at = 1;
            var_f2484ed9 gameobjects::init_game_objects(#"hash_76653e6fda4bdfd1");
            var_f2484ed9.mdl_gameobject gameobjects::allow_use(#"hash_5ccfd7bbbf07c770");
            var_f2484ed9.mdl_gameobject gameobjects::set_onuse_event(&function_bd02699e);
            var_f2484ed9.mdl_gameobject gameobjects::set_onbeginuse_event(&zm_silver_util::function_e6830825);
            var_f2484ed9.mdl_gameobject gameobjects::set_onenduse_event(&zm_silver_util::function_834fd6bc);
            var_f2484ed9.mdl_gameobject.trigger thread function_79d5804a();
            var_f2484ed9.mdl_gameobject.dontlinkplayertotrigger = 1;
            var_f2484ed9.mdl_gameobject.keepweapon = 1;
            var_f2484ed9.mdl_gameobject thread function_f1ffb4dc();
            var_f2484ed9.mdl_gameobject thread function_9d7bc1dd(var_743c16e0);
            var_f2484ed9.mdl_gameobject.canuseobject = &zm_silver_util::function_dd9482b7;
        } else {
            var_f2484ed9.mdl_gameobject thread gameobjects::enable_object(1, 1);
        }
        var_f2484ed9.mdl_gameobject waittill(#"hash_2330fdbe6e3eb567");
        var_f2484ed9.mdl_gameobject flag::set(#"hash_7a42d508140ae262");
        var_f2484ed9.mdl_gameobject flag::clear(#"hash_4d6700553ede7078");
        level notify(#"into_the_dark_side");
        level flag::set(var_93bdf906);
        level flag::wait_till(#"dark_aether_active");
        var_f2484ed9 clientfield::set("" + #"hash_7ec80a02e9bb051a", 0);
        level flag::wait_till_clear(#"dark_aether_active");
        level flag::clear(var_93bdf906);
        for (var_172e078c = 25; var_172e078c > 0; var_172e078c -= 1) {
            level waittill(#"hash_4f3dbc08fe003a1e");
        }
        if (isdefined(var_f2484ed9.mdl_gameobject)) {
            var_f2484ed9.mdl_gameobject flag::set(#"hash_4d6700553ede7078");
        }
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x8fbf1c45, Offset: 0x5248
// Size: 0x3c
function function_bd02699e(*player) {
    self notify(#"hash_2330fdbe6e3eb567");
    self thread gameobjects::disable_object(1, 1);
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xcd8694a4, Offset: 0x5290
// Size: 0x16e
function function_9d7bc1dd(var_743c16e0) {
    self notify("7945456019aec3e7");
    self endon("7945456019aec3e7");
    self endon(#"death");
    while (true) {
        if (level flag::get(var_743c16e0)) {
            self thread gameobjects::destroy_object(1, 1);
            return;
        }
        if (is_true(level.var_e9f6c6da) && (self flag::get(#"hash_4d6700553ede7078") || !self flag::get(#"hash_7a42d508140ae262")) && !level flag::get("in_dark_side") && !level flag::get("on_mq_step_0_2")) {
            self thread gameobjects::enable_object(1, 1);
        } else {
            self thread gameobjects::disable_object(1, 1);
        }
        wait(1);
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x5fd3e997, Offset: 0x5408
// Size: 0xc0
function function_f1ffb4dc() {
    self notify("360fe88ba1ddc6f4");
    self endon("360fe88ba1ddc6f4");
    self endon(#"death");
    while (true) {
        level flag::wait_till(#"dark_aether_active");
        self thread gameobjects::disable_object(1, 1);
        level flag::wait_till_clear(#"dark_aether_active");
        self thread gameobjects::enable_object(1, 1);
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x1cb07eb1, Offset: 0x54d0
// Size: 0x14a
function function_79d5804a() {
    self endon(#"death");
    while (true) {
        foreach (player in function_a1ef346b()) {
            self setcursorhint("HINT_NOICON");
            self usetriggerignoreuseholdtime();
            self function_268e4500();
            b_enabled = self function_ad3081a9(player);
            if (b_enabled) {
                self setvisibletoplayer(player);
                continue;
            }
            self setinvisibletoplayer(player);
        }
        wait(1);
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x2e322646, Offset: 0x5628
// Size: 0x546
function function_a5ae82b0() {
    level endon(#"game_ended");
    level flag::wait_till_all(["terminal_1_is_on", "terminal_2_is_on"]);
    if (!isdefined(level.var_8dc29179)) {
        waitframe(1);
    }
    while (true) {
        var_23412a82 = 1;
        if (is_true(level.var_e9f6c6da) && !level flag::get("in_dark_side") && !level flag::get("on_mq_step_0_2")) {
            var_95138a52 = 0;
            foreach (var_fd6475b5, var_f2484ed9 in level.var_8dc29179) {
                if (!isdefined(var_f2484ed9)) {
                    arrayremoveindex(level.var_8dc29179, var_fd6475b5);
                    continue;
                } else if (level flag::get(var_f2484ed9.var_743c16e0)) {
                    if (isdefined(var_f2484ed9.var_9463599a)) {
                        var_f2484ed9.var_9463599a delete();
                    }
                    var_f2484ed9 delete();
                    arrayremoveindex(level.var_8dc29179, var_fd6475b5);
                    continue;
                }
                var_23412a82 = 0;
                if (var_f2484ed9.mdl_gameobject flag::get(#"hash_4d6700553ede7078") || !var_f2484ed9.mdl_gameobject flag::get(#"hash_7a42d508140ae262")) {
                    var_f2484ed9 clientfield::set("" + #"hash_7ec80a02e9bb051a", 1);
                    if (!isdefined(var_f2484ed9.var_9463599a)) {
                        var_f2484ed9.var_9463599a = var_f2484ed9 zm_silver_util::function_3be9e71a();
                    }
                    var_95138a52 = 1;
                }
            }
            if (var_95138a52) {
                foreach (player in getplayers()) {
                    player clientfield::set_to_player("" + #"hash_1fa45e1c3652d753", 1);
                }
            }
        } else {
            foreach (var_fd6475b5, var_f2484ed9 in level.var_8dc29179) {
                if (!isdefined(var_f2484ed9)) {
                    arrayremoveindex(level.var_8dc29179, var_fd6475b5);
                    continue;
                } else if (level flag::get(var_f2484ed9.var_743c16e0)) {
                    if (isdefined(var_f2484ed9.var_9463599a)) {
                        var_f2484ed9.var_9463599a delete();
                    }
                    var_f2484ed9 delete();
                    arrayremoveindex(level.var_8dc29179, var_fd6475b5);
                    continue;
                }
                var_23412a82 = 0;
                if (level flag::get("in_dark_side")) {
                    level flag::wait_till(#"dark_aether_active");
                }
                var_f2484ed9 clientfield::set("" + #"hash_7ec80a02e9bb051a", 0);
                if (isdefined(var_f2484ed9.var_9463599a)) {
                    var_f2484ed9.var_9463599a delete();
                }
            }
        }
        if (var_23412a82) {
            break;
        }
        wait(1);
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x2260d893, Offset: 0x5b78
// Size: 0x1b8
function function_ad3081a9(e_player) {
    if (level flag::get(#"hash_3e765c26047c9f54") || level flag::get("in_exfil_event")) {
        self sethintstringforplayer(e_player, #"hash_4480b689c4039dac");
        return 1;
    }
    if (is_true(level.var_e9f6c6da) && (self.mdl_gameobject flag::get(#"hash_4d6700553ede7078") || !self.mdl_gameobject flag::get(#"hash_7a42d508140ae262")) && !level flag::get("in_dark_side") && !level flag::get("on_mq_step_0_2") && !e_player usebuttonpressed()) {
        self sethintstringforplayer(e_player, #"hash_622731cfc9a72bfa");
        return 1;
    }
    self sethintstringforplayer(e_player, #"");
    return 0;
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x11b280ff, Offset: 0x5d38
// Size: 0x47c
function function_78d3b53b() {
    level endon(#"game_ended");
    level thread function_3ca2b2c1("zm_por_pla", "ww_plasma_dark_crate_unfolded", "ww_plasma_dark_aether_active");
    scene::add_scene_func(#"hash_6e29beca7d26695", &function_59642e27, "init");
    level thread function_f308268d();
    level scene::init(#"hash_6e29beca7d26695");
    level scene::init(#"p9_fxanim_zm_ndu_contain_crate_rust_bundle");
    level.var_267fe17e = getent("zm_sw_pla_tr", "script_noteworthy");
    level.var_267fe17e.var_14bfe1d6 = getent(level.var_267fe17e.script_string, "targetname");
    level.var_267fe17e.var_14bfe1d6 notsolid();
    level.var_267fe17e.var_14bfe1d6 connectpaths();
    level.var_267fe17e thread function_d4647e9c();
    level.var_267fe17e thread function_2f6cb9bc("plasma");
    var_9c4b1962 = getent("zm_sw_pla_right", "script_noteworthy");
    var_a2f087af = getent("zm_sw_pla_right_clip", "targetname");
    var_d8e6cd43 = getent(var_9c4b1962.target, "targetname");
    var_d8e6cd43 hidepart("tag_fuse");
    var_ae13d215 = [var_9c4b1962, var_d8e6cd43];
    array::run_all(var_ae13d215, &hide);
    var_a2f087af notsolid();
    var_a2f087af connectpaths();
    hidemiscmodels("plasma_cutter_frame");
    var_9c4b1962 thread function_ead1edac(var_d8e6cd43);
    while (!level flag::get("ww_plasma_dark_crate_unfolded")) {
        level flag::wait_till(#"dark_aether_active");
        if (level flag::get("ww_plasma_dark_aether_active")) {
            array::run_all(var_ae13d215, &show);
            var_a2f087af solid();
            var_a2f087af disconnectpaths();
            showmiscmodels("plasma_cutter_frame");
        }
        level flag::wait_till_clear(#"dark_aether_active");
        array::run_all(var_ae13d215, &hide);
        var_a2f087af notsolid();
        var_a2f087af connectpaths();
        hidemiscmodels("plasma_cutter_frame");
    }
    level flag::wait_till("ww_plasma_dark_crate_anim_done");
    array::run_all(var_ae13d215, &delete);
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x5f7cfe0d, Offset: 0x61c0
// Size: 0x1c0
function function_ead1edac(cutter) {
    e_activator = self zm_unitrigger::function_fac87205(&function_95913408, (96, 96, 96));
    level flag::set("ww_plasma_dark_crate_unfolded");
    if (isplayer(e_activator)) {
        e_activator clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
    }
    level.var_ba3a0e1f += 5;
    cutter showpart("tag_fuse");
    playsoundatposition(#"hash_25c3ad27e28609cf", cutter gettagorigin("tag_fuse"));
    wait(1);
    cutter scene::play(#"hash_20f1ec6b37e8973b", cutter);
    wait(1);
    cutter scene::play(#"hash_5bf979f09adfb93", cutter);
    /#
        iprintlnbold("<unknown string>");
    #/
    level flag::set("ww_plasma_dark_crate_anim_done");
    level.var_ba3a0e1f = 0;
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xb41362b8, Offset: 0x6388
// Size: 0x9c
function function_95913408(*e_player) {
    if (level flag::get(#"dark_aether_active") && level flag::get("player_got_the_fuse") && level flag::get("ww_plasma_dark_aether_active")) {
        self sethintstring(#"hash_f829dbd87edb790");
        return true;
    }
    return false;
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xfcd4c30f, Offset: 0x6430
// Size: 0x1e0
function function_59642e27(a_ents) {
    var_fcb6d06e = a_ents[#"hash_15081fa69fd97eda"];
    var_11a6696e = spawn("trigger_damage", var_fcb6d06e.origin, 0, 96, 96);
    while (true) {
        waitresult = var_11a6696e waittill(#"damage");
        if (isplayer(waitresult.attacker) && isdefined(waitresult.weapon) && is_true(waitresult.weapon.isbulletweapon)) {
            point = function_4ba8fde(#"hash_70dc74e571a35a75");
            var_ab549ef1 = item_drop::drop_item(0, undefined, 1, 0, point.id, struct::get("zm_ele_fs").origin, struct::get("zm_ele_fs").angles, 0);
            var_ab549ef1.var_dd21aec2 = 1 | 16;
            playfxontag(#"hash_602926e040b2cc81", var_fcb6d06e, "tag_door_fx");
            level notify(#"hash_5fc83b7ed5236a3d");
            break;
        }
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x5a5f5cd8, Offset: 0x6618
// Size: 0x84
function function_f308268d() {
    level waittill(#"hash_5fc83b7ed5236a3d");
    scene::remove_scene_func(#"hash_6e29beca7d26695", &function_59642e27, "init");
    wait(0.2);
    level scene::play(#"hash_6e29beca7d26695", "play");
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x6d2949fb, Offset: 0x66a8
// Size: 0x234
function function_d4647e9c() {
    level endon(#"game_ended");
    var_64b5a257 = getent(self.target, "targetname");
    var_64b5a257 solid();
    var_64b5a257 disconnectpaths();
    while (true) {
        level flag::wait_till(#"dark_aether_active");
        if (!level flag::get("ww_plasma_dark_crate_unfolded")) {
            self hide();
            level scene::delete_scene_spawned_ents(#"p9_fxanim_zm_ndu_contain_crate_rust_bundle");
            var_64b5a257 notsolid();
            var_64b5a257 connectpaths();
        }
        level flag::wait_till_clear(#"dark_aether_active");
        self show();
        level scene::init(#"p9_fxanim_zm_ndu_contain_crate_rust_bundle");
        var_64b5a257 solid();
        var_64b5a257 disconnectpaths();
        if (level flag::get("ww_plasma_dark_crate_unfolded")) {
            break;
        }
    }
    level.var_267fe17e zm_unitrigger::unregister_unitrigger(level.var_267fe17e.s_unitrigger);
    level notify(#"hash_357484a47ac6dc7f");
    self thread function_8d9ddc22("PLASMA");
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xcec0bba7, Offset: 0x68e8
// Size: 0x41c
function function_77fdf8f3() {
    level thread function_3ca2b2c1("zm_por_par", "ww_beam_crate_unfolded", "ww_beam_dark_aether_active");
    callback::on_disconnect(&function_196740ae);
    scene::add_scene_func(#"p9_fxanim_zm_ndu_contain_crate_electric_bundle", &function_b39ee43f, "init");
    level scene::init(#"p9_fxanim_zm_ndu_contain_crate_electric_bundle");
    level.var_a6639798 = getent("zm_sw_par_pa", "script_noteworthy");
    level.var_a6639798.var_14bfe1d6 = getent(level.var_a6639798.script_string, "targetname");
    level.var_a6639798.var_14bfe1d6 notsolid();
    level.var_a6639798.var_14bfe1d6 connectpaths();
    var_dfca5f6b = getent("zm_ele_cp", "targetname");
    var_dfca5f6b solid();
    var_dfca5f6b disconnectpaths();
    level.var_a6639798 thread function_2f6cb9bc("beam");
    var_53ecb724 = getent(level.var_a6639798.target, "targetname");
    var_53ecb724 setinvisibletoall();
    for (n = 1; n <= 3; n++) {
        var_677810e4 = getentarray("zm_par_cry_" + n, "script_noteworthy");
        foreach (crystal in var_677810e4) {
            crystal hide();
        }
        var_9c7fd811 = var_677810e4[randomint(var_677810e4.size)];
        var_9c7fd811 flag::set("crystal_active");
        var_9c7fd811 thread function_d9046ad7(level.var_a6639798, n);
        var_9c7fd811 thread function_43073640(level.var_a6639798, n);
    }
    level flag::wait_till_all(array("receptacle_1_powered", "receptacle_2_powered", "receptacle_3_powered"));
    level flag::set("ww_beam_crate_unfolded");
    level.var_a6639798 zm_unitrigger::unregister_unitrigger(level.var_a6639798.s_unitrigger);
    level notify(#"hash_60469722da30dda8");
    level.var_a6639798 thread function_8d9ddc22("BEAM");
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xb7126c23, Offset: 0x6d10
// Size: 0xc8
function function_196740ae(b_delay) {
    if (self flag::get("hold_crystal_energy")) {
        self notify(#"hash_4035b9734da08f79");
        self clientfield::set("hold_crystal_energy", 0);
        if (is_true(b_delay)) {
            wait(1);
        }
        profilestart();
        if (isdefined(self)) {
            self flag::clear("hold_crystal_energy");
            if (isdefined(self.crystal)) {
                self.crystal.player = undefined;
                self.crystal = undefined;
            }
        }
        profilestop();
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x7918b5e0, Offset: 0x6de0
// Size: 0x2b0
function function_d9046ad7(*crate, num) {
    level endon(#"game_ended");
    var_db089991 = getent(self.target, "targetname");
    var_db089991.var_37d2c8f6 = &function_ba51c33f;
    var_db089991.var_4ffc53f = &function_e0e08fa2;
    while (true) {
        level flag::wait_till_all([#"dark_aether_active", "ww_beam_dark_aether_active"]);
        self show();
        self function_619a5c20();
        do {
            if (!level flag::get("receptacle_" + num + "_powered")) {
                var_45f8349d = self function_fbce146e(var_db089991);
                var_db089991.var_22cea3da = undefined;
                if (is_true(var_45f8349d)) {
                    /#
                        iprintlnbold("<unknown string>" + num + "<unknown string>");
                    #/
                    self flag::clear("crystal_active");
                    self thread function_6c729e(num);
                    self notify(#"hash_33fac1f6f3a6dcc");
                    self playsound(#"hash_4d2f9a4138c1e002");
                }
                self clientfield::set("crystal_energy_fx", 0);
            }
            waitframe(1);
        } while (level.var_ba3a0e1f > 0);
        level flag::wait_till_clear(#"dark_aether_active");
        self hide();
        self function_23a29590();
        self clientfield::set("crystal_energy_fx", 0);
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x41cceccf, Offset: 0x7098
// Size: 0x268
function function_fbce146e(var_db089991) {
    level endon(#"dark_aether_active");
    self flag::wait_till("crystal_active");
    self clientfield::set("crystal_energy_fx", 1);
    var_db089991.var_22cea3da = &function_971d0ec8;
    waitresult = var_db089991 waittill(#"hash_33fac1f6f3a6dcc");
    self.player = waitresult.player;
    self.player.crystal = self;
    self.player flag::set("hold_crystal_energy");
    self.player clientfield::set("hold_crystal_energy", 1);
    self.player val::set(#"hash_1b614432d036c713", "allow_ads", 0);
    self.player val::reset(#"hash_38d5012e2e2ee1d3", "disable_weapon_fire");
    self.player notify(#"hash_30694ebb96507aa4");
    self.player notify(#"hash_3271846e2b85db1c");
    self.player namespace_b376a999::function_a0a2d8ee(0);
    self.player namespace_b376a999::function_42402593(0);
    if (namespace_b376a999::function_5fef4201(self.player.currentweapon)) {
        var_e69a8f49 = self.player getweaponammoclip(self.player.currentweapon);
        if (var_e69a8f49 < 15) {
            var_e69a8f49 = 15;
        }
        self.player setweaponammoclip(self.player.currentweapon, var_e69a8f49);
    }
    self.player thread function_f5eebd57();
    return true;
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xcfbc4392, Offset: 0x7308
// Size: 0x114
function function_f5eebd57() {
    level endon(#"game_ended");
    self endon(#"disconnect");
    var_105682f = 0;
    while (true) {
        waitresult = self waittill(#"weapon_fired", #"weapon_change");
        if (waitresult._notify === "weapon_fired" && namespace_b376a999::function_5fef4201(waitresult.weapon)) {
            var_105682f = 1;
            break;
        }
        if (waitresult._notify === "weapon_change" && !namespace_b376a999::function_a93a6096(self)) {
            break;
        }
    }
    self function_196740ae(var_105682f);
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x98c2e604, Offset: 0x7428
// Size: 0x74
function function_6c729e(num) {
    level endon(#"game_ended", "receptacle_" + num + "_powered");
    self.player waittill(#"hash_4035b9734da08f79");
    wait(30);
    self flag::set("crystal_active");
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 2, eflags: 0x2 linked
// Checksum 0xb39d57a1, Offset: 0x74a8
// Size: 0xc4
function function_971d0ec8(player, time) {
    if (time >= 2000 && !player flag::get("hold_crystal_energy")) {
        self notify(#"hash_33fac1f6f3a6dcc", {#player:player});
        player clientfield::increment("" + #"hash_196eef041ba86f9a");
        return;
    }
    level thread namespace_b376a999::function_6dbf1bb3(player, 4, self.origin);
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x944d0844, Offset: 0x7578
// Size: 0x14
function function_ba51c33f(*e_player, *n_start_time) {
    
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x5d4786b9, Offset: 0x7598
// Size: 0xc
function function_e0e08fa2(*e_player) {
    
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 2, eflags: 0x2 linked
// Checksum 0xbaeda194, Offset: 0x75b0
// Size: 0x13c
function function_43073640(crate, num) {
    level endon(#"game_ended");
    var_15f88bee = getent(crate.target, "targetname");
    t_damage = spawn("trigger_damage", crate.origin + (0, 0, 12), 0, 64, 48);
    t_damage enablegrenadetouchdamage();
    flag = function_27f2ef17(t_damage);
    function_4e3bb793(t_damage, flag & ~512);
    self function_746a64df(var_15f88bee, t_damage, num);
    var_15f88bee setinvisibletoall();
    t_damage delete();
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 3, eflags: 0x2 linked
// Checksum 0xcffe0b06, Offset: 0x76f8
// Size: 0x118
function function_746a64df(var_15f88bee, t_damage, num) {
    level endon(#"game_ended", "receptacle_" + num + "_powered");
    while (true) {
        self waittill(#"hash_33fac1f6f3a6dcc");
        assert(isdefined(self.player));
        var_15f88bee setvisibletoplayer(self.player);
        var_15f88bee sethintstringforplayer(self.player, #"hash_9a36cd75f8acaee");
        t_damage thread function_ef55bb22(self, num);
        self.player waittill(#"hash_4035b9734da08f79");
        var_15f88bee setinvisibletoall();
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x1b74f242, Offset: 0x7818
// Size: 0x29c
function function_ef55bb22(var_53f12789, num) {
    self notify("17686540fd91a102");
    self endon("17686540fd91a102");
    level endon(#"game_ended");
    /#
        println("<unknown string>" + num + "<unknown string>");
        iprintlnbold("<unknown string>" + num + "<unknown string>");
    #/
    while (true) {
        waitresult = self waittill(#"damage");
        if (waitresult.attacker === var_53f12789.player && waitresult.attacker flag::get("hold_crystal_energy")) {
            if (isdefined(waitresult.weapon) && namespace_b376a999::function_5fef4201(waitresult.weapon) && !is_true(waitresult.var_98e101b0)) {
                break;
            } else {
                /#
                    println("<unknown string>" + num + "<unknown string>");
                    iprintlnbold("<unknown string>" + num + "<unknown string>");
                #/
            }
            continue;
        }
        /#
            println("<unknown string>" + num + "<unknown string>");
            iprintlnbold("<unknown string>" + num + "<unknown string>");
        #/
    }
    if (num == 1) {
        waitresult.attacker thread zm_intel::collect_intel(#"zmintel_silver_darkaether_artifact_3");
    }
    level flag::set("receptacle_" + num + "_powered");
    /#
        iprintlnbold("<unknown string>" + num + "<unknown string>");
    #/
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x518c14fd, Offset: 0x7ac0
// Size: 0x1c4
function function_b39ee43f(a_ents) {
    var_bf71a40b = a_ents[#"weapon_crate"];
    while (true) {
        flag_return = level waittill(#"receptacle_1_powered", #"receptacle_2_powered", #"receptacle_3_powered");
        switch (flag_return._notify) {
        case #"receptacle_1_powered":
            var_bf71a40b clientfield::set("" + #"hash_5a932b901b9a5d0d", 1);
            break;
        case #"receptacle_2_powered":
            var_bf71a40b clientfield::set("" + #"hash_5a932b901b9a5d0d", 2);
            break;
        case #"receptacle_3_powered":
            var_bf71a40b clientfield::set("" + #"hash_5a932b901b9a5d0d", 3);
            break;
        }
        if (level flag::get_all(["receptacle_1_powered", "receptacle_2_powered", "receptacle_3_powered"])) {
            break;
        }
        waitframe(1);
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xd63bc946, Offset: 0x7c90
// Size: 0xde0
function function_8d9ddc22(var_e7772c37) {
    level endon(#"end_game");
    switch (var_e7772c37) {
    case #"nitrogen":
        var_6bdde8a3 = getweapon(#"ww_ieu_acid_t9");
        var_39023436 = getweapon(#"ww_ieu_acid_t9_upgraded");
        var_339168c3 = self zm_unitrigger::create(&function_91807eb1, (128, 128, 128));
        self.var_37023f0e = "cryo";
        break;
    case #"gas":
        var_6bdde8a3 = getweapon(#"ww_ieu_gas_t9");
        var_39023436 = getweapon(#"ww_ieu_gas_t9_upgraded");
        var_339168c3 = self zm_unitrigger::create(&function_4d97eda3, (128, 128, 128));
        self.var_37023f0e = "gas";
        break;
    case #"plasma":
        var_6bdde8a3 = getweapon(#"ww_ieu_plasma_t9");
        var_39023436 = getweapon(#"ww_ieu_plasma_t9_upgraded");
        var_339168c3 = self zm_unitrigger::create(&function_b75d50b5, (128, 128, 128));
        self.var_37023f0e = "rust";
        break;
    case #"beam":
        var_6bdde8a3 = getweapon(#"ww_ieu_electric_t9");
        var_39023436 = getweapon(#"ww_ieu_electric_t9_upgraded");
        var_339168c3 = self zm_unitrigger::create(&function_8a172c28, (128, 128, 128));
        self.var_37023f0e = "electric";
        break;
    }
    zm_unitrigger::unitrigger_force_per_player_triggers(var_339168c3, 1);
    scene::add_scene_func(#"hash_340eb7e983e34e72" + self.var_37023f0e + "_bundle", &function_217a625a, "open");
    while (true) {
        waitresult = self waittill(#"trigger_activated");
        player = waitresult.e_who;
        if (isplayer(player)) {
            player clientfield::increment_to_player("" + #"hash_7a769c728c89b6b5");
        }
        player val::set(#"hash_504a7a98d585ba99", "disable_weapon_cycling", 1);
        player val::set(#"hash_504a7a98d585ba99", "disable_weapon_fire", 1);
        player val::set(#"hash_504a7a98d585ba99", "disable_offhand_weapons", 1);
        player val::set(#"hash_504a7a98d585ba99", "disable_offhand_special", 1);
        player thread function_172b3f96(10);
        if (player hasweapon(var_6bdde8a3, 1) || player hasweapon(var_39023436, 1)) {
            level flag::set("exchange_base_back");
        }
        level scene::play(#"hash_340eb7e983e34e72" + self.var_37023f0e + "_bundle", "open");
        self.var_14bfe1d6 solid();
        self.var_14bfe1d6 disconnectpaths();
        if (isalive(player) && !player inlaststand()) {
            var_4e4f65c9 = player item_inventory::function_2e711614(17 + 1);
            primary_weapon = player namespace_a0d533d1::function_2b83d3ff(var_4e4f65c9);
            var_ec323ef9 = player item_inventory::function_2e711614(17 + 1 + 8 + 1);
            secondary_weapon = player namespace_a0d533d1::function_2b83d3ff(var_ec323ef9);
            var_b8061637 = player item_inventory::function_2e711614(17 + 1 + 8 + 1 + 8 + 1);
            var_5b871ec1 = player namespace_a0d533d1::function_2b83d3ff(var_b8061637);
            if (namespace_b376a999::function_5fef4201(primary_weapon)) {
                var_981d2438 = var_4e4f65c9;
                var_d5c2e187 = primary_weapon;
            } else if (namespace_b376a999::function_5fef4201(secondary_weapon)) {
                var_981d2438 = var_ec323ef9;
                var_d5c2e187 = secondary_weapon;
            } else if (namespace_b376a999::function_5fef4201(var_5b871ec1)) {
                var_981d2438 = var_b8061637;
                var_d5c2e187 = var_5b871ec1;
            } else {
                player notify(#"hash_6a9e5d5a03df7e27");
                level scene::play(#"hash_340eb7e983e34e72" + self.var_37023f0e + "_bundle", "close");
                level notify(#"hash_142e9131e668557d");
                self.var_14bfe1d6 notsolid();
                self.var_14bfe1d6 disconnectpaths();
                continue;
            }
            var_1edbaf3 = player namespace_b376a999::function_7d5e7c71(var_d5c2e187);
            if (var_1edbaf3) {
                target_weapon = var_39023436;
            } else {
                target_weapon = var_6bdde8a3;
            }
            var_b0e35c50 = 0;
            if (zm_weapons::function_386dacbc(var_d5c2e187) != target_weapon) {
                var_963f7bc9 = target_weapon;
            } else {
                var_b0e35c50 = 1;
                var_963f7bc9 = var_1edbaf3 ? getweapon(#"ww_ieu_shockwave_t9_upgraded") : getweapon(#"ww_ieu_shockwave_t9");
            }
            var_963f7bc9 = function_eeddea9a(var_963f7bc9, function_9f1cc9a9(var_d5c2e187));
            if (player getcurrentweapon() != var_d5c2e187) {
                player switchtoweapon(var_d5c2e187);
                if (player getstance() === "prone") {
                    player notify(#"hash_6a9e5d5a03df7e27");
                    level scene::play(#"hash_340eb7e983e34e72" + self.var_37023f0e + "_bundle", "close");
                    level notify(#"hash_142e9131e668557d");
                    self.var_14bfe1d6 notsolid();
                    self.var_14bfe1d6 disconnectpaths();
                    continue;
                }
                result = player waittilltimeout(5, #"death", #"weapon_change_complete", #"entering_last_stand");
                if (result._notify == #"timeout" || player getcurrentweapon() != var_d5c2e187) {
                    player notify(#"hash_6a9e5d5a03df7e27");
                    level scene::play(#"hash_340eb7e983e34e72" + self.var_37023f0e + "_bundle", "close");
                    level notify(#"hash_142e9131e668557d");
                    self.var_14bfe1d6 notsolid();
                    self.var_14bfe1d6 disconnectpaths();
                    continue;
                }
            }
            if (isalive(player) && !player inlaststand()) {
                if (!isdefined(player.var_1ad4cede)) {
                    player.var_1ad4cede = [];
                }
                var_e533256d = player.var_1ad4cede[var_963f7bc9.name];
                player giveweapon(var_963f7bc9);
                var_eba43593 = player function_b7f1fd2c(var_963f7bc9);
                player setweaponammoclip(var_963f7bc9, isdefined(var_e533256d) ? var_e533256d : var_eba43593);
                player function_bee29f7b(1);
                player switchtoweapon(var_963f7bc9);
                player function_6edc650b(var_963f7bc9);
                weaponoptions = player function_ade49959(var_d5c2e187);
                camoindex = getcamoindex(weaponoptions);
                player setcamo(var_963f7bc9, camoindex);
                player.var_1ad4cede[var_d5c2e187.name] = player getammocount(var_d5c2e187);
                player thread function_6d4e1f71(var_d5c2e187, var_e7772c37, var_b0e35c50);
                player thread function_469b0e5();
                var_981d2438.var_627c698b = var_963f7bc9;
                var_3383cd4e = function_4ba8fde(var_963f7bc9.name + "_item_sr");
                if (isdefined(var_3383cd4e)) {
                    var_981d2438.itementry = var_3383cd4e.itementry;
                    var_981d2438.id = var_3383cd4e.id;
                } else {
                    assertmsg("<unknown string>" + var_963f7bc9.name);
                }
            }
            level notify(#"hash_685e9797cabb8ed");
        }
        level scene::play(#"hash_340eb7e983e34e72" + self.var_37023f0e + "_bundle", "close");
        level notify(#"silver_weapon_crate_closed");
        self.var_14bfe1d6 notsolid();
        self.var_14bfe1d6 disconnectpaths();
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x55cd6074, Offset: 0x8a78
// Size: 0x104
function function_172b3f96(timeout) {
    level endon(#"end_game");
    self waittilltimeout(timeout, #"hash_6a9e5d5a03df7e27", #"death", #"entering_last_stand");
    if (isdefined(self)) {
        self val::reset(#"hash_504a7a98d585ba99", "disable_weapon_cycling");
        self val::reset(#"hash_504a7a98d585ba99", "disable_weapon_fire");
        self val::reset(#"hash_504a7a98d585ba99", "disable_offhand_weapons");
        self val::reset(#"hash_504a7a98d585ba99", "disable_offhand_special");
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x10f02a1d, Offset: 0x8b88
// Size: 0x6e
function function_469b0e5() {
    level endon(#"end_game");
    self endon(#"death");
    wait(1);
    while (!self function_a39f313c()) {
        waitframe(1);
    }
    self notify(#"hash_6a9e5d5a03df7e27");
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 3, eflags: 0x2 linked
// Checksum 0x637130c4, Offset: 0x8c00
// Size: 0x12a
function function_6d4e1f71(var_d5c2e187, var_e7772c37, var_b0e35c50) {
    level endon(#"end_game");
    if (isdefined(self)) {
        wait(1);
        while (isdefined(self) && self isdroppingweapon()) {
            waitframe(1);
        }
        if (!isdefined(self)) {
            return;
        }
        self takeweapon(var_d5c2e187);
        if (var_b0e35c50) {
            switch (var_e7772c37) {
            case #"nitrogen":
                level.var_c3accf46 = undefined;
                break;
            case #"gas":
                level.var_ae002b60 = undefined;
                break;
            case #"plasma":
                level.var_42000fd0 = undefined;
                break;
            case #"beam":
                level.var_c8a2dc28 = undefined;
                break;
            }
        }
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x1e9394e6, Offset: 0x8d38
// Size: 0x634
function function_217a625a(a_ents) {
    var_bf71a40b = a_ents[#"weapon_crate"];
    switch (var_bf71a40b.model) {
    case #"hash_32859e73dd365b9e":
        if (level flag::get("exchange_base_back")) {
            var_2faa8624 = util::spawn_model(#"hash_9549d4549a59df5", var_bf71a40b gettagorigin("tag_tank"), var_bf71a40b gettagangles("tag_tank"));
            level flag::clear("exchange_base_back");
        } else {
            var_2faa8624 = util::spawn_model(#"hash_4a6d2f6f49885950", var_bf71a40b gettagorigin("tag_tank"), var_bf71a40b gettagangles("tag_tank"));
        }
        var_bf71a40b clientfield::set("" + #"hash_7aeee79e85f9273c", 1);
        break;
    case #"hash_e2ad7264fcf3d4e":
        if (level flag::get("exchange_base_back")) {
            var_2faa8624 = util::spawn_model(#"hash_9549d4549a59df5", var_bf71a40b gettagorigin("tag_tank"), var_bf71a40b gettagangles("tag_tank"));
            level flag::clear("exchange_base_back");
        } else {
            var_2faa8624 = util::spawn_model(#"hash_2a78ff7b18517c52", var_bf71a40b gettagorigin("tag_tank"), var_bf71a40b gettagangles("tag_tank"));
        }
        var_bf71a40b clientfield::set("" + #"hash_7aeee79e85f9273c", 2);
        break;
    case #"hash_7bb0fd5062a04b85":
        if (level flag::get("exchange_base_back")) {
            var_2faa8624 = util::spawn_model(#"hash_9549d4549a59df5", var_bf71a40b gettagorigin("tag_tank"), var_bf71a40b gettagangles("tag_tank"));
            level flag::clear("exchange_base_back");
        } else {
            var_2faa8624 = util::spawn_model(#"hash_9549d4549a59df5", var_bf71a40b gettagorigin("tag_tank"), var_bf71a40b gettagangles("tag_tank"));
        }
        var_bf71a40b clientfield::set("" + #"hash_7aeee79e85f9273c", 3);
        break;
    case #"hash_5006567f39c9e0b0":
        if (level flag::get("exchange_base_back")) {
            var_2faa8624 = util::spawn_model(#"hash_9549d4549a59df5", var_bf71a40b gettagorigin("tag_tank"), var_bf71a40b gettagangles("tag_tank"));
            level flag::clear("exchange_base_back");
        } else {
            var_2faa8624 = util::spawn_model(#"hash_65d816e81ae7ddbb", var_bf71a40b gettagorigin("tag_tank"), var_bf71a40b gettagangles("tag_tank"));
        }
        var_bf71a40b clientfield::set("" + #"hash_7aeee79e85f9273c", 4);
        break;
    }
    var_2faa8624 linkto(var_bf71a40b, "tag_tank", (0, 0, 0), (-28, 0, 0));
    waitresult = level waittill(#"silver_weapon_crate_closed", #"hash_685e9797cabb8ed", #"hash_142e9131e668557d");
    var_2faa8624 unlink();
    if (isdefined(var_2faa8624)) {
        var_2faa8624 delete();
    }
    if (waitresult._notify !== "silver_weapon_crate_closed") {
        level waittill(#"silver_weapon_crate_closed");
    }
    var_bf71a40b clientfield::set("" + #"hash_7aeee79e85f9273c", 0);
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x4e7f7b9, Offset: 0x9378
// Size: 0x3cc
function function_b8a1fcc2(*s_params) {
    if (isdefined(level.var_bdd5969a) && isinarray(level.var_bdd5969a, self)) {
        if (!self function_505c0acb(#"ww_ieu_shockwave_t9")) {
            arrayremovevalue(level.var_bdd5969a, self);
        }
    } else if (self function_505c0acb(#"ww_ieu_shockwave_t9")) {
        if (!isdefined(level.var_bdd5969a)) {
            level.var_bdd5969a = [];
        } else if (!isarray(level.var_bdd5969a)) {
            level.var_bdd5969a = array(level.var_bdd5969a);
        }
        level.var_bdd5969a[level.var_bdd5969a.size] = self;
    }
    if (level.var_c3accf46 === self) {
        if (!self function_505c0acb(#"ww_ieu_acid_t9")) {
            level.var_c3accf46 = undefined;
        }
    } else if (self function_505c0acb(#"ww_ieu_acid_t9")) {
        level.var_c3accf46 = self;
        level notify(#"hash_e1a9539b07e72be");
    }
    if (level.var_ae002b60 === self) {
        if (!self function_505c0acb(#"ww_ieu_gas_t9")) {
            level.var_ae002b60 = undefined;
        }
    } else if (self function_505c0acb(#"ww_ieu_gas_t9")) {
        level.var_ae002b60 = self;
        level notify(#"hash_6eada88f109e645");
    }
    if (level.var_42000fd0 === self) {
        if (!self function_505c0acb(#"ww_ieu_plasma_t9")) {
            level.var_42000fd0 = undefined;
        }
    } else if (self function_505c0acb(#"ww_ieu_plasma_t9")) {
        level.var_42000fd0 = self;
        level notify(#"hash_120dd64bcb70e566");
    }
    if (level.var_c8a2dc28 === self) {
        if (!self function_505c0acb(#"ww_ieu_electric_t9")) {
            level.var_c8a2dc28 = undefined;
        }
    } else if (self function_505c0acb(#"ww_ieu_electric_t9")) {
        level.var_c8a2dc28 = self;
        level notify(#"hash_5e2064095a103269");
    }
    if (isarray(level.var_bdd5969a) && level.var_bdd5969a.size || isdefined(level.var_c3accf46) || isdefined(level.var_ae002b60) || isdefined(level.var_42000fd0) || isdefined(level.var_c8a2dc28)) {
        level.var_e9f6c6da = 1;
        return;
    }
    level.var_e9f6c6da = 0;
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x15a053cc, Offset: 0x9750
// Size: 0xca
function function_91807eb1(e_player) {
    if (!isdefined(level.var_c3accf46) && e_player function_1d89280c()) {
        self sethintstringforplayer(e_player, #"hash_23ffe27517c6140c");
        return 1;
    }
    if (isdefined(level.var_c3accf46) && e_player == level.var_c3accf46) {
        self sethintstringforplayer(e_player, #"hash_4425ec8a1a0dcd32");
        return 1;
    }
    return 0;
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xde60cc3b, Offset: 0x9828
// Size: 0xca
function function_4d97eda3(e_player) {
    if (!isdefined(level.var_ae002b60) && e_player function_1d89280c()) {
        self sethintstringforplayer(e_player, #"hash_1f88bf6da4e314");
        return 1;
    }
    if (isdefined(level.var_ae002b60) && e_player == level.var_ae002b60) {
        self sethintstringforplayer(e_player, #"hash_4425ec8a1a0dcd32");
        return 1;
    }
    return 0;
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x401a6b0f, Offset: 0x9900
// Size: 0xca
function function_b75d50b5(e_player) {
    if (!isdefined(level.var_42000fd0) && e_player function_1d89280c()) {
        self sethintstringforplayer(e_player, #"hash_3122d671887ef5a5");
        return 1;
    }
    if (isdefined(level.var_42000fd0) && e_player == level.var_42000fd0) {
        self sethintstringforplayer(e_player, #"hash_4425ec8a1a0dcd32");
        return 1;
    }
    return 0;
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xafdc5cf6, Offset: 0x99d8
// Size: 0xca
function function_8a172c28(e_player) {
    if (!isdefined(level.var_c8a2dc28) && e_player function_1d89280c()) {
        self sethintstringforplayer(e_player, #"hash_448d0fa028c30675");
        return 1;
    }
    if (isdefined(level.var_c8a2dc28) && e_player == level.var_c8a2dc28) {
        self sethintstringforplayer(e_player, #"hash_4425ec8a1a0dcd32");
        return 1;
    }
    return 0;
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xa999e44c, Offset: 0x9ab0
// Size: 0x63c
function on_item_pickup(params) {
    item = params.item;
    if (isplayer(self)) {
        if (isdefined(item.itementry)) {
            switch (item.itementry.name) {
            case #"item_zmintel_silver_requiem_artifact_2":
                if (self function_1d89280c()) {
                    var_4e4f65c9 = self item_inventory::function_2e711614(17 + 1);
                    primary_weapon = self namespace_a0d533d1::function_2b83d3ff(var_4e4f65c9);
                    var_ec323ef9 = self item_inventory::function_2e711614(17 + 1 + 8 + 1);
                    secondary_weapon = self namespace_a0d533d1::function_2b83d3ff(var_ec323ef9);
                    var_b8061637 = self item_inventory::function_2e711614(17 + 1 + 8 + 1 + 8 + 1);
                    var_5b871ec1 = self namespace_a0d533d1::function_2b83d3ff(var_ec323ef9);
                    if (namespace_b376a999::function_5fef4201(primary_weapon)) {
                        var_3e749c73 = primary_weapon;
                    } else if (namespace_b376a999::function_5fef4201(secondary_weapon)) {
                        var_3e749c73 = secondary_weapon;
                    } else if (namespace_b376a999::function_5fef4201(var_5b871ec1)) {
                        var_3e749c73 = var_5b871ec1;
                    }
                    var_8a83ec7a = item_inventory::function_a33744de(var_3e749c73);
                    if (isdefined(var_8a83ec7a)) {
                        if (var_8a83ec7a != 32767) {
                            var_f9f12a82 = item_inventory::drop_inventory_item(var_8a83ec7a);
                        }
                    }
                }
                self zm_weapons::weapon_give(level.var_652bc5ed, 1);
                self thread zm_intel::collect_intel(#"zmintel_silver_requiem_artifact_2");
                level.var_516c02a2 = self;
                level flag::set(#"hash_15f3e07d50195cb9");
                break;
            case #"hash_37f8e99ab49c109":
                level flag::set("player_got_card");
                level zm_ui_inventory::function_7df6bb60(#"hash_6de5cab1fba28d40", 1);
                break;
            case #"item_zmintel_silver_requiem_artifact_1":
                level flag::set("player_got_remote");
                array::thread_all(function_a1ef346b(), &zm_intel::collect_intel, #"zmintel_silver_requiem_artifact_1");
                level zm_ui_inventory::function_7df6bb60(#"hash_1ec8e7f21f81afb0", 1);
                break;
            case #"hash_16ea992ec682d37":
                level flag::set("player_got_the_flask");
                level zm_ui_inventory::function_7df6bb60(#"hash_2e341f321b2ab3da", 1);
                break;
            case #"hash_22d1a49f2c1d1c80":
                level flag::set("player_got_the_filled_flask");
                array::thread_all(function_a1ef346b(), &zm_intel::collect_intel, #"zmintel_silver_darkaether_artifact_1");
                level zm_ui_inventory::function_7df6bb60(#"hash_2e341f321b2ab3da", 2);
                break;
            case #"hash_70dc74e571a35a75":
                level flag::set("player_got_the_fuse");
                level zm_ui_inventory::function_7df6bb60(#"hash_7b8f7131712d7564", 1);
                break;
            case #"hash_5d1c62463e73e906":
                level flag::set("player_got_the_canister");
                level zm_ui_inventory::function_7df6bb60(#"hash_240dcac486ef946a", 1);
                break;
            case #"item_zmintel_silver_darkaether_artifact_2":
                level flag::set("full_canister_picked_up");
                array::thread_all(function_a1ef346b(), &zm_intel::collect_intel, #"zmintel_silver_darkaether_artifact_2");
                level zm_ui_inventory::function_7df6bb60(#"hash_240dcac486ef946a", 2);
                break;
            default:
                return;
            }
            level thread popups::function_87604884(#"hash_4cacf78219f8fca", self, self.team, item.itementry.displayname);
        }
    }
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xe967c17e, Offset: 0xa0f8
// Size: 0x21c
function function_505c0acb(var_13167ed3) {
    if (isdefined(var_13167ed3)) {
        switch (var_13167ed3) {
        case #"ww_ieu_shockwave_t9":
            return (self hasweapon(level.var_652bc5ed, 1) || self hasweapon(level.var_b6956429, 1));
        case #"ww_ieu_acid_t9":
            return (self hasweapon(level.var_810eda2b, 1) || self hasweapon(level.var_a7de843a, 1));
        case #"ww_ieu_gas_t9":
            return (self hasweapon(level.var_fb37bf51, 1) || self hasweapon(level.var_970f9313, 1));
        case #"ww_ieu_plasma_t9":
            return (self hasweapon(level.var_12b450dc, 1) || self hasweapon(level.var_6b41a8a1, 1));
        case #"ww_ieu_electric_t9":
            return (self hasweapon(level.var_e0be56c0, 1) || self hasweapon(level.var_e80744aa, 1));
        default:
            return false;
        }
    }
    return false;
}

// Namespace zm_silver_ww_quest/zm_silver_ww_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x31243c12, Offset: 0xa320
// Size: 0xbc
function function_1d89280c() {
    return self function_505c0acb(#"ww_ieu_shockwave_t9") || self function_505c0acb(#"ww_ieu_acid_t9") || self function_505c0acb(#"ww_ieu_gas_t9") || self function_505c0acb(#"ww_ieu_plasma_t9") || self function_505c0acb(#"ww_ieu_electric_t9");
}

/#

    // Namespace zm_silver_ww_quest/zm_silver_ww_quest
    // Params 0, eflags: 0x4
    // Checksum 0x80492013, Offset: 0xa3e8
    // Size: 0x44
    function private function_233ed9b4() {
        level flag::wait_till("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&function_98af2074);
    }

    // Namespace zm_silver_ww_quest/zm_silver_ww_quest
    // Params 1, eflags: 0x4
    // Checksum 0xbd61af57, Offset: 0xa438
    // Size: 0x1ca
    function private function_98af2074(cmd) {
        switch (cmd) {
        case #"hash_58dc6f7eb86ecf83":
            level.var_a1b709cb thread function_8d9ddc22("<unknown string>");
            break;
        case #"hash_45e13a127a63e1f5":
            level.var_74ec088f thread function_8d9ddc22("<unknown string>");
            break;
        case #"hash_42477421da15ff00":
            level.var_267fe17e thread function_8d9ddc22("<unknown string>");
            break;
        case #"hash_1c88a4f3e72d4479":
            level.var_a6639798 thread function_8d9ddc22("<unknown string>");
            zm_intel::function_23255935("<unknown string>");
            var_410e2bb5 = getent("<unknown string>", "<unknown string>");
            var_a0f325fa = getent(var_410e2bb5.target, "<unknown string>");
            if (isdefined(var_410e2bb5)) {
                var_410e2bb5 scene::play(#"hash_65505ba29fee0a2f", var_410e2bb5);
            }
            if (isdefined(var_a0f325fa)) {
                var_a0f325fa delete();
            }
            break;
        default:
            break;
        }
    }

#/
