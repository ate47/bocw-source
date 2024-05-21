// Atian COD Tools GSC CW decompiler test
#using scripts\zm\zm_tungsten_pap_quest.gsc;
#using scripts\zm\zm_tungsten_zones.gsc;
#using scripts\zm\zm_tungsten_gamemodes.gsc;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm_sq.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using script_3751b21462a54a7d;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_blockers.gsc;
#using script_72401f526ba71638;
#using script_4ccfb58a9443a60b;
#using script_7a5293d92c61c788;
#using script_34ab99a4ca1a43d;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using script_7b1cd3908a825fdd;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_wallbuy.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_ui_inventory.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_power.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_fasttravel.gsc;
#using script_4ce5d94e8c797350;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm\zm_tungsten_main_quest.gsc;
#using scripts\zm\zm_tungsten.gsc;
#using script_3411bb48d41bd3b;
#using scripts\zm_common\zm.gsc;
#using scripts\core_common\load_shared.gsc;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\zm_common\objective_manager.gsc;
#using script_1cf46b33555422b7;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using script_1caf36ff04a85ff6;
#using script_471b31bd963b388e;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_edb23975;

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x925b3346, Offset: 0xa90
// Size: 0x67c
function init() {
    /#
        level thread function_cd7a3de4();
    #/
    clientfield::register("world", "" + #"hash_7017982268bd7369", 1, 1, "int");
    clientfield::register("toplayer", "" + #"hash_721d42a28d7461ea", 24000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_4b1b4c1785fdd11d", 24000, 1, "counter");
    clientfield::register("toplayer", "" + #"hash_63da9d5355659678", 24000, 1, "int");
    clientfield::register("playercorpse", "" + #"hash_4a22451481253e54", 28000, 1, "int");
    callback::on_ai_killed(&function_1525bc35);
    callback::on_item_pickup(&on_item_pickup);
    callback::on_spawned(&on_player_spawn);
    level.var_afc50b14 = ["zone_anytown_usa_west", "zone_anytown_usa_east", "zone_tv_repair", "zone_anytown_usa_east_2", "zone_drinks_bar", "zone_drinks_bar_roof", "zone_burger_town_roof", "zone_burger_town", "zone_concessions", "zone_cinema", "zone_anytown_usa_west_2", "zone_video_store", "zone_video_store_roof", "zone_anytown_usa_rooftops", "zone_anytown_usa_backlot", "zone_arcade"];
    level.var_d3bc5b54 = 0;
    level.var_8fa957ce = 0;
    level.var_4d2ce592 = 0;
    level.var_a1274b1e = 0;
    level.var_ebd5b2bc = getent("acd_tkn_dmg_trig", "targetname");
    level.var_ebd5b2bc thread function_98645ab3();
    level thread function_e922fa3c();
    level thread function_fad9663();
    zm_tungsten::function_994637d8(#"hash_561302e48877300e");
    level function_d749d5ee();
    level.var_2ab5eeb7 = struct::get(#"hash_11f0b40f36d607d4", "targetname");
    level.var_b4f716df = &function_b370e26e;
    level.var_91f71aa[#"hash_5e770ca79b0e5aa4"] = &function_a9291db2;
    if (!isdefined(level.var_b082a9eb)) {
        level.var_b082a9eb = [];
    }
    level.var_530e3da9 = struct::get_array("dragon_rocket_barrier", "targetname");
    if (!isdefined(level.var_ebc8f1b9)) {
        level.var_ebc8f1b9 = [];
    }
    level thread function_9dced9c4(#"hash_6570ebf5a30c93d");
    level function_d1f847f9();
    level.var_bd7e65ee = 45;
    level.var_9671faed = &function_3d9adfea;
    if (!isdefined(level.var_fd23d5ca)) {
        level.var_fd23d5ca = [];
    }
    if (!isdefined(level.var_edde4ca0)) {
        level.var_edde4ca0 = [];
    }
    level thread function_9dced9c4(#"hash_299f96da2a2177b8");
    level function_d823ee31();
    if (!isdefined(level.var_dc85d079)) {
        level.var_dc85d079 = [];
    }
    if (!isdefined(level.var_e1b6f12f)) {
        level.var_e1b6f12f = [];
    }
    if (!isdefined(level.var_7ab74a80)) {
        level.var_7ab74a80 = [];
    }
    level.var_743ac5c7 = getent("waw_huge_shutter", "targetname");
    level.var_743ac5c7.v_start_pos = level.var_743ac5c7.origin;
    level thread function_9dced9c4(#"hash_223e2905daf647d0");
    zm::register_actor_damage_callback(&function_e33d93c4);
    zm_perks::register_perk_damage_override_func(&on_player_damaged);
    level.check_player_is_ready_for_ammo = &check_player_is_ready_for_ammo;
    level.var_cbcc2ab7 = &function_cbcc2ab7;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0x7c8918e2, Offset: 0x1118
// Size: 0x2d4
function function_1525bc35(params) {
    if (isplayer(params.eattacker)) {
        ai_zone = zm_zonemgr::get_zone_from_position(self.origin);
        if (isinarray(level.var_afc50b14, ai_zone)) {
            if (!isdefined(params.eattacker.var_a3210d75)) {
                params.eattacker.var_a3210d75 = 0;
            }
            if (math::cointoss(5) && level.var_d3bc5b54 < function_a1ef346b().size * 1 && params.eattacker.var_a3210d75 <= 0) {
                var_b4392330 = getrandomnavpoint(self.origin, 50);
                if (!isdefined(var_b4392330)) {
                    return;
                }
                var_9917b0be = var_b4392330 + (0, 0, 14);
                var_bba58955 = function_4ba8fde(#"hash_5e770ca79b0e5aa4");
                item = item_drop::drop_item(0, undefined, 1, 0, var_bba58955.id, self.origin + (0, 0, 40), self.angles + (0, 0, 90), 0);
                item.var_dd21aec2 = 1 | 16;
                n_power = length(self.origin + (0, 0, 40) - var_9917b0be) * 2;
                var_4e2c4d20 = item zm_utility::fake_physicslaunch(var_9917b0be, n_power);
                item.itementry.var_4cd830a = 1;
                level.var_d3bc5b54++;
            }
        }
        if (level flag::get(#"hash_480a4ce872938116") && level.var_e67580 === params.eattacker) {
            params.eattacker namespace_1b527536::function_460882e2();
        }
        if (self.targetname === "world_at_war_zombie") {
            level.var_d88181e4++;
        }
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0x33e2fa, Offset: 0x13f8
// Size: 0x154
function on_item_pickup(params) {
    item = params.item;
    if (isplayer(self) && item.itementry.name === #"hash_5e770ca79b0e5aa4") {
        self function_aff8caac(1, item);
    }
    if (isplayer(self) && level.var_e67580 === self && item.itementry.name === "tr_precisionsemi_t9_item_zm_tungsten_side_quest") {
        self setweaponammoclip(self.inventory.items[17 + 1 + 8 + 1].var_627c698b, 20);
        self setweaponammostock(self.inventory.items[17 + 1 + 8 + 1].var_627c698b, 0);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x4f14a26a, Offset: 0x1558
// Size: 0x44
function on_player_spawn() {
    self thread objective_manager::function_a809e69a();
    self clientfield::set_to_player("" + #"hash_721d42a28d7461ea", 0);
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 2, eflags: 0x2 linked
// Checksum 0xcd47cba4, Offset: 0x15a8
// Size: 0x124
function function_aff8caac(n_count, item) {
    if (n_count < 0) {
        self zm_stats::increment_challenge_stat(#"hash_59ec774113410688");
        playsoundatposition(#"hash_15f62ef7540518b4", self.origin + (0, 0, 20));
    }
    if (n_count > 0) {
        n_value = 1;
    } else {
        n_value = 0;
    }
    level zm_ui_inventory::function_7df6bb60(#"hash_41af1cdc14b54320", n_value, self);
    if (!isdefined(self.var_a3210d75)) {
        self.var_a3210d75 = 0;
    }
    self.var_a3210d75 += n_count;
    if (is_true(item.var_9f9d9b10)) {
        level flag::clear(#"hash_50d40a20b859977f");
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xa76bb58, Offset: 0x16d8
// Size: 0x20
function function_fac9c4ef() {
    if (isdefined(self.var_a3210d75)) {
        return self.var_a3210d75;
    }
    return 0;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 2, eflags: 0x2 linked
// Checksum 0xd4e78e14, Offset: 0x1700
// Size: 0x544
function teleport_players(var_e07fc3c5, var_cdf41f72 = 1) {
    level endon(#"end_game");
    var_cd594462 = 0;
    var_ab9bca5f = 0;
    switch (var_e07fc3c5) {
    case #"hash_667e89d9c5124e84":
        var_198cd593 = struct::get("arcade_room_dest", "targetname");
        break;
    case #"waw":
        var_198cd593 = struct::get("waw_player_start_pos", "targetname");
        var_cd594462 = 1;
        break;
    case #"hash_21c62ac93c4f6615":
        var_198cd593 = struct::get("arcade_room_dest_rcxd", "targetname");
        var_ab9bca5f = 1;
        break;
    case #"hash_48e09f20b59868fb":
        var_198cd593 = struct::get("soul_capture_dest", "targetname");
        break;
    case #"hash_6c9d0501ba0f8c97":
        var_198cd593 = struct::get("arcade_room_dest_waw", "targetname");
        var_ab9bca5f = 1;
        break;
    case #"rcxd":
        var_198cd593 = struct::get("rcxd_dest", "targetname");
        var_cd594462 = 1;
        break;
    }
    level clientfield::set("" + #"hash_7017982268bd7369", 1);
    if (!isdefined(level.var_257d029d)) {
        level.var_257d029d = 0;
    }
    level.var_257d029d += 1;
    self val::set(#"hash_7ddef091eca1a62", "ignoreme", 1);
    self val::set("arcade_token", "freezecontrols", 1);
    self val::set("arcade_token", "takedamage", 0);
    level thread zm_tungsten::function_4cc5fca6();
    self clientfield::increment_to_player("" + #"hash_56c7e620d1de163a", 1);
    self thread function_cac40287();
    var_935d4278 = 2.4;
    wait(var_935d4278);
    if (isdefined(self) && var_cdf41f72) {
        self thread animation::play(#"hash_4ae3555a13faa870", self.origin, self.angles);
    }
    wait(2.7 - var_935d4278);
    if (isdefined(self)) {
        if (!isdefined(self.var_cad5a451)) {
            self.var_cad5a451 = util::spawn_model("tag_origin", self.origin + (0, 0, 30), self.angles);
        }
        if (var_cdf41f72) {
            self thread function_cb0821d3();
            if (self laststand::player_is_in_laststand()) {
                self notify(#"auto_revive");
            }
        } else {
            self thread function_8dd4d280();
        }
        if (isalive(self)) {
            var_4cfd3626 = {#origin:var_198cd593.origin, #angles:var_198cd593.angles};
            self thread zm_fasttravel::function_66d020b0(undefined, undefined, undefined, undefined, var_4cfd3626, undefined, undefined, 1, 0, 0);
            self val::reset("arcade_token", "freezecontrols");
            self val::reset("arcade_token", "takedamage");
            self val::reset(#"hash_7ddef091eca1a62", "ignoreme");
        }
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xd8e8e4c3, Offset: 0x1c50
// Size: 0xb2
function function_cac40287() {
    level endon(#"end_game");
    self endon(#"death", #"disconnect");
    self.var_3487fff6 = "" + #"hash_63da9d5355659678";
    self.var_1bfa91a = "_arcade";
    self playsound(#"hash_1104d795d57196df");
    self waittill(#"fasttravel_finished");
    self.var_3487fff6 = undefined;
    self.var_1bfa91a = undefined;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x94f5e73a, Offset: 0x1d10
// Size: 0x17a
function function_cb0821d3() {
    level endon(#"end_game");
    self clientfield::set("in_enemy_mute_smoke", 1);
    self.var_cad5a451 clientfield::increment("" + #"hash_4b1b4c1785fdd11d");
    self.fake_player = self cloneplayer(300000, "none");
    self.fake_player clientfield::set("" + #"hash_4a22451481253e54", 1);
    self.fake_player setowner(self);
    self.fake_player.var_56e602f2 = 1;
    self.fake_player hidefromplayer(self);
    wait(0.1);
    if (isdefined(self.fake_player)) {
        self.var_620a1710 = spawncollision(#"hash_74ae399683f5d585", "arcade_fake_player", self.fake_player.origin, self.fake_player.angles);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xd7abff28, Offset: 0x1e98
// Size: 0x17c
function function_8dd4d280() {
    level endon(#"end_game");
    self.var_cad5a451 clientfield::increment("" + #"hash_4b1b4c1785fdd11d");
    if (isdefined(self.var_620a1710)) {
        self.var_620a1710 delete();
    }
    self waittill(#"fasttravel_finished", #"death");
    if (isdefined(self.fake_player)) {
        self.fake_player delete();
    }
    if (isdefined(self.var_cad5a451)) {
        self.var_cad5a451 delete();
    }
    self clientfield::set("in_enemy_mute_smoke", 0);
    if (isdefined(level.var_257d029d)) {
        level.var_257d029d -= 1;
        if (level.var_257d029d <= 0) {
            level clientfield::set("" + #"hash_7017982268bd7369", 0);
        }
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0xa0a36d2d, Offset: 0x2020
// Size: 0x38
function function_a9291db2(*item) {
    if (self function_fac9c4ef() < 1) {
        return 1;
    }
    return 0;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xed790f97, Offset: 0x2060
// Size: 0x54
function function_e922fa3c() {
    s_machine = struct::get("arc_tok_machine");
    s_machine zm_unitrigger::create(&function_f5d285bc, 64, &function_39cf3d5e);
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0x7203b625, Offset: 0x20c0
// Size: 0x102
function function_f5d285bc(player) {
    if (level flag::get(#"hash_50d40a20b859977f")) {
        self sethintstring("");
        return 0;
    }
    if (!level flag::get(#"hash_3814c5c6793e2b2d")) {
        self sethintstring(#"hash_289d0eb4a904e033");
        return 1;
    }
    self sethintstring(#"hash_7cdf716f7d50ebe5", 10000);
    if (!player zm_score::can_player_purchase(10000)) {
        player globallogic::function_d1924f29(#"hash_6e3ae7967dc5d414");
    }
    return 1;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x5f3074da, Offset: 0x21d0
// Size: 0x170
function function_39cf3d5e() {
    level endon(#"end_game");
    self thread function_6de827b0();
    while (true) {
        waitresult = self waittill(#"trigger");
        activator = waitresult.activator;
        if (isplayer(activator) && activator zm_score::can_player_purchase(10000) && level flag::get(#"hash_3814c5c6793e2b2d") && !level flag::get(#"hash_50d40a20b859977f")) {
            activator zm_score::minus_to_player_score(10000);
            zm_utility::play_sound_at_pos("purchase", activator.origin);
            activator playrumbleonentity(#"zm_interact_rumble");
            self function_521d48eb();
        }
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xddcfaace, Offset: 0x2348
// Size: 0x1e2
function function_6de827b0() {
    level endon(#"end_game", #"hash_2e876f61d8053a7c");
    self endon(#"death");
    s_machine = struct::get("arc_tok_machine");
    while (true) {
        waitresult = self waittill(#"touch");
        entity = waitresult.entity;
        n_dot = entity math::get_dot_forward(s_machine.origin);
        if (isplayer(entity) && !level flag::get(#"hash_50d40a20b859977f") && entity function_a651f85() && isdefined(n_dot) && n_dot >= 0.7) {
            level flag::set(#"hash_50d40a20b859977f");
            wait(0.25);
            zm_utility::play_sound_at_pos("purchase", entity.origin);
            entity playrumbleonentity(#"damage_light");
            self thread function_521d48eb();
            level notify(#"hash_2e876f61d8053a7c");
        }
        waitframe(1);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xc051c2b8, Offset: 0x2538
// Size: 0x116
function function_a651f85() {
    a_weapons = self getweaponslistprimaries();
    var_57ac2916 = getweapon(#"melee_battleaxe_t9");
    foreach (weapon in a_weapons) {
        if (zm_weapons::get_base_weapon(weapon) === var_57ac2916 && (self meleebuttonpressed() || self attackbuttonpressed())) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x6ad1e057, Offset: 0x2658
// Size: 0x162
function function_98645ab3() {
    level endon(#"end_game", #"hash_2e876f61d8053a7c");
    self endon(#"death");
    self thread function_ae0e44d6();
    while (true) {
        waitresult = self waittill(#"damage");
        attacker = waitresult.attacker;
        if (isplayer(attacker) && waitresult.mod === "MOD_MELEE" && !level flag::get(#"hash_50d40a20b859977f")) {
            zm_utility::play_sound_at_pos("purchase", attacker.origin);
            attacker playrumbleonentity(#"damage_light");
            self thread function_521d48eb();
            level notify(#"hash_2e876f61d8053a7c");
        }
        waitframe(1);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xf8c37b14, Offset: 0x27c8
// Size: 0x5c
function function_ae0e44d6() {
    level endon(#"end_game");
    self endon(#"death");
    level waittill(#"hash_2e876f61d8053a7c");
    self deletedelay();
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xc9e67a78, Offset: 0x2830
// Size: 0x17c
function function_521d48eb() {
    var_a464a784 = struct::get("arc_tok_machine_drop");
    var_7d0b21c8 = struct::get(var_a464a784.target);
    var_bba58955 = function_4ba8fde(#"hash_5e770ca79b0e5aa4");
    item = item_drop::drop_item(0, undefined, 1, 0, var_bba58955.id, var_a464a784.origin, var_a464a784.angles, 0);
    item.var_dd21aec2 = 1 | 16;
    n_power = length(var_a464a784.origin - var_7d0b21c8.origin) * 2;
    var_4e2c4d20 = item zm_utility::fake_physicslaunch(var_7d0b21c8.origin, n_power);
    item playloopsound(#"hash_37ef61c0931d0e79");
    item.var_9f9d9b10 = 1;
    level flag::set(#"hash_50d40a20b859977f");
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0x1594375e, Offset: 0x29b8
// Size: 0x13c
function function_586afc1e(player) {
    assert(isplayer(player), "soul_capture_zombie");
    if (self.stub.var_36d60c16 !== 1 && player getstance() === "prone" && distancesquared(self.origin, player.origin) < 9216) {
        self.stub.var_36d60c16 = 1;
        level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:player, #scoreevent:"loose_change_zm"});
        zm_utility::play_sound_at_pos("purchase", player.origin);
        player function_bc82f900(#"zm_interact_rumble");
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0xb01f7696, Offset: 0x2b00
// Size: 0x124
function function_3fd2fae6(str_endon_notify) {
    level endon(#"end_game", str_endon_notify);
    level waittill(#"hash_3e765c26047c9f54");
    if (level flag::get(#"hash_549a957b8f4d551f")) {
        if (isdefined(level.var_d2510899)) {
            function_cb9d983();
            level.var_d2510899 thread function_479655a0();
        }
    }
    if (level flag::get(#"hash_62300d1a6a6d537e")) {
        if (isdefined(level.var_7a1e7f5e)) {
            level.var_7a1e7f5e thread function_d1e82c7e();
        }
    }
    if (level flag::get(#"hash_480a4ce872938116")) {
        if (isdefined(level.var_e67580)) {
            level.var_e67580 thread function_c4d12d9e();
        }
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0xa11a2092, Offset: 0x2c30
// Size: 0x1c0
function function_9dced9c4(var_9148fa4e) {
    level endon(#"end_game");
    while (true) {
        n_round_number = isdefined(level.round_number) ? level.round_number : 1;
        if (n_round_number > 10) {
            a_players = function_a1ef346b();
            var_e4da00c4 = 0;
            foreach (player in a_players) {
                if (player flag::get(var_9148fa4e)) {
                    var_e4da00c4++;
                }
            }
            if (var_e4da00c4 == a_players.size) {
                switch (var_9148fa4e) {
                case #"hash_6570ebf5a30c93d":
                    function_cb9d983();
                    break;
                case #"hash_299f96da2a2177b8":
                    level thread function_7e83adbe();
                    break;
                case #"hash_223e2905daf647d0":
                    level thread function_99cd0986();
                    break;
                }
                break;
            }
        }
        wait(10);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 10, eflags: 0x2 linked
// Checksum 0xf3177652, Offset: 0x2df8
// Size: 0x138
function on_player_damaged(*einflictor, *eattacker, idamage, *idflags, *smeansofdeath, *weapon, *vpoint, *vdir, *shitloc, *psoffsettime) {
    if (level.var_e67580 === self && level flag::get(#"hash_480a4ce872938116")) {
        if (function_b8c888fe(psoffsettime)) {
            self.health = 1;
            psoffsettime = 0;
            self thread function_c4d12d9e();
        }
    }
    if (level.var_d2510899 === self && level flag::get(#"hash_549a957b8f4d551f")) {
        if (function_b8c888fe(psoffsettime)) {
            self.health = 1;
            psoffsettime = 0;
            self thread function_479655a0();
        }
    }
    return psoffsettime;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0x5b1aa9c4, Offset: 0x2f38
// Size: 0x2a
function function_b8c888fe(n_dmg) {
    if (self.health <= n_dmg) {
        return 1;
    }
    return 0;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xef2eb522, Offset: 0x2f70
// Size: 0x128
function function_fad9663() {
    level endon(#"end_game");
    while (true) {
        level flag::wait_till_any([#"hash_549a957b8f4d551f", #"hash_62300d1a6a6d537e", #"hash_480a4ce872938116"]);
        level flag::set(#"hash_561302e48877300e");
        level flag::wait_till_clear_all([#"hash_549a957b8f4d551f", #"hash_62300d1a6a6d537e", #"hash_480a4ce872938116"]);
        level flag::clear(#"hash_561302e48877300e");
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 2, eflags: 0x2 linked
// Checksum 0x2ed3f7fb, Offset: 0x30a0
// Size: 0x13e
function function_16b5f843(var_89dc7169, var_77e2e323) {
    while (getfreeactorcount() < var_89dc7169) {
        a_zombies = getaiarchetypearray(#"zombie", level.zombie_team);
        foreach (zombie in a_zombies) {
            if (isalive(zombie) && zombie.targetname === var_77e2e323) {
                arrayremovevalue(a_zombies, zombie);
            }
        }
        if (a_zombies.size > 0) {
            function_d59a3443(a_zombies);
        }
        waitframe(1);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x1adf54ca, Offset: 0x31e8
// Size: 0x8c
function function_d749d5ee() {
    var_e46d4140 = struct::get("trig_soul_capture", "targetname");
    s_unitrigger = var_e46d4140 zm_unitrigger::create(&function_70c1775c, (32, 32, 64), &function_77c58cc5);
    zm_unitrigger::unitrigger_force_per_player_triggers(s_unitrigger, 1);
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0x800f543a, Offset: 0x3280
// Size: 0x25c
function function_70c1775c(e_player) {
    if (isplayer(e_player)) {
        self function_586afc1e(e_player);
        if (!level flag::get(#"hash_3814c5c6793e2b2d")) {
            self sethintstring(#"hash_289d0eb4a904e033");
            return true;
        } else if (level flag::get(#"hash_3e765c26047c9f54") || level flag::get(#"rbz_exfil_beacon_active")) {
            return false;
        } else if (level flag::get(#"hash_549a957b8f4d551f") || level flag::get(#"hash_1b8228b2efbf4022") || level flag::get(#"hash_6de3a0458517d4ad")) {
            self sethintstring(#"hash_25f4721d7307ef13");
            return true;
        } else if (e_player function_fac9c4ef() < 1 && !e_player flag::get(#"hash_6570ebf5a30c93d")) {
            self sethintstring(#"hash_1f1d995eeb05ad8a");
            return true;
        } else if (!level flag::get(#"hash_549a957b8f4d551f") && !e_player flag::get(#"hash_6570ebf5a30c93d")) {
            self sethintstring(#"hash_2fe226a09d7fc8d4");
            return true;
        } else {
            return false;
        }
    }
    return false;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xdd1b82f1, Offset: 0x34e8
// Size: 0x1e0
function function_77c58cc5() {
    level endon(#"end_game");
    while (true) {
        result = self waittill(#"trigger");
        if (level flag::get(#"hash_549a957b8f4d551f") || level flag::get(#"hash_1b8228b2efbf4022") || !level flag::get(#"hash_3814c5c6793e2b2d") || level flag::get(#"hash_6de3a0458517d4ad")) {
            continue;
        }
        if (isdefined(result.activator) && result.activator function_fac9c4ef() >= 1 && !result.activator flag::get(#"hash_6570ebf5a30c93d")) {
            level.var_d2510899 = result.activator;
            result.activator function_aff8caac(-1);
            level.var_d3bc5b54--;
            level.var_8fa957ce++;
            if (level.var_8fa957ce >= 1) {
                level.var_8fa957ce = 0;
                level.var_d2510899 thread function_a1abe9f5();
            }
            continue;
        }
        /#
            iprintlnbold("waw_chest_loc_02");
        #/
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0x7f79ee1, Offset: 0x36d0
// Size: 0xaa
function function_6106ff82(v_lookat) {
    foreach (e_player in getplayers()) {
        if (e_player util::is_looking_at(v_lookat, undefined, 1)) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x1bb06d3, Offset: 0x3788
// Size: 0x5f4
function function_a1abe9f5() {
    level endon(#"end_game");
    a_corpses = getcorpsearray();
    foreach (e_corpse in a_corpses) {
        if (isdefined(e_corpse.origin) && !is_true(e_corpse.var_56e602f2) && !function_6106ff82(e_corpse.origin)) {
            e_corpse delete();
        }
    }
    level.var_6a240880 = 0;
    self.var_d2859364 = 1;
    if (is_true(self.var_b57cb1c0) && is_true(self.var_c6462371) && is_true(self.var_d2859364)) {
        self zm_stats::increment_challenge_stat(#"hash_2157c2e652a3a1e4");
    }
    foreach (loc in level.var_530e3da9) {
        if (!isdefined(level.var_ebc8f1b9)) {
            level.var_ebc8f1b9 = [];
        } else if (!isarray(level.var_ebc8f1b9)) {
            level.var_ebc8f1b9 = array(level.var_ebc8f1b9);
        }
        level.var_ebc8f1b9[level.var_ebc8f1b9.size] = util::spawn_model("tag_origin", loc.origin, loc.angles);
    }
    foreach (var_532c4db3 in level.var_ebc8f1b9) {
        var_532c4db3 clientfield::set("" + #"player_barrier", 1);
    }
    if (!zm_score::can_player_purchase(500)) {
        self zm_score::add_to_player_score(500 - self zm_score::function_ffc2d0bc());
    }
    content_manager::spawn_instance(level.var_2ab5eeb7);
    self clientfield::set_to_player("" + #"hash_4f232c4c4c5f7816", 1);
    level flag::set(#"hash_549a957b8f4d551f");
    level flag::set(#"hash_1b8228b2efbf4022");
    self flag::set(#"hash_5b86982b4c9c8c5");
    level.var_2ab5eeb7 thread function_420e9362();
    level.var_2ab5eeb7 thread function_d4c77559();
    level thread function_3fd2fae6(#"hash_2da9a9ed61d2a6df");
    self thread teleport_players(#"hash_48e09f20b59868fb");
    self function_ec736a99();
    self function_38db9cb2();
    wait(2.7);
    if (isdefined(self)) {
        self function_ec7fa3d9();
        self clientfield::set_to_player("" + #"hash_721d42a28d7461ea", 1);
    }
    wait(3);
    if (isdefined(level.var_2ab5eeb7.trigger) && isdefined(self)) {
        level.var_2ab5eeb7.trigger useby(self);
        if (level.var_2ab5eeb7 flag::get("times_up")) {
            level.var_2ab5eeb7 flag::clear("times_up");
        }
        if (level.var_2ab5eeb7 flag::get("complete")) {
            level.var_2ab5eeb7 flag::clear("complete");
        }
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xf4baca31, Offset: 0x3d88
// Size: 0x4f4
function function_479655a0() {
    level endon(#"end_game");
    self endoncallback(&function_eb438cc7, #"death");
    level notify(#"hash_2da9a9ed61d2a6df");
    if (isplayer(self)) {
        self thread teleport_players(#"hash_667e89d9c5124e84", 0);
        self clientfield::set_to_player("" + #"hash_721d42a28d7461ea", 0);
        self function_b153ad4c();
        self flag::clear(#"hash_5b86982b4c9c8c5");
        wait(2.7);
        level flag::clear(#"hash_549a957b8f4d551f");
        level.var_6a240880 = 1;
        if (isdefined(self)) {
            self clientfield::set_to_player("" + #"hash_721d42a28d7461ea", 0);
            self clientfield::set_to_player("" + #"hash_4f232c4c4c5f7816", 0);
            self function_a56f7c6();
        }
        foreach (var_532c4db3 in level.var_ebc8f1b9) {
            var_532c4db3 clientfield::set("" + #"player_barrier", 0);
        }
        array::delete_all(level.var_ebc8f1b9);
        level.var_ebc8f1b9 = [];
        if (isdefined(level.var_2ab5eeb7)) {
            if (isdefined(level.var_2ab5eeb7.var_2348a8fb)) {
                level.var_2ab5eeb7.var_2348a8fb = undefined;
            }
            if (isarray(level.var_2ab5eeb7.contentgroups) && isarray(level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"])) {
                if (isdefined(level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"][0].scriptmodel)) {
                    var_12b46c6 = item_world::function_2e3efdda(level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"][0].scriptmodel.origin, undefined, 15, 1500, -1, 1);
                    foreach (item in var_12b46c6) {
                        item delete();
                    }
                }
                if (isdefined(level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"][0].scriptmodel)) {
                    level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"][0].scriptmodel delete();
                }
                if (isdefined(level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"][0].scriptmodel.trigger)) {
                    level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"][0].scriptmodel.trigger delete();
                }
            }
        }
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x741e3796, Offset: 0x4288
// Size: 0x274
function function_420e9362() {
    level endon(#"end_game");
    level endoncallback(&function_cafb8ad4, #"hash_2da9a9ed61d2a6df");
    level.var_d2510899 endoncallback(&function_eb438cc7, #"death");
    while (true) {
        self waittill(#"active");
        level clientfield::set("" + #"hash_14197af7df70a497", 1);
        wait(4);
        level thread function_c5d54048();
        self flag::wait_till_clear("active");
        level notify(#"hash_1c96e6001dd1ccaf");
        wait(2);
        level clientfield::set("" + #"hash_14197af7df70a497", 0);
        if (isdefined(level.var_2ab5eeb7)) {
            if (isarray(level.var_2ab5eeb7.contentgroups) && isarray(level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"])) {
                if (isdefined(level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"][0].scriptmodel.trigger)) {
                    level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"][0].scriptmodel.trigger thread function_187d7597();
                }
            }
        }
        wait(25);
        if (isplayer(level.var_d2510899)) {
            level.var_d2510899 thread function_479655a0();
        }
        break;
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0x29728e44, Offset: 0x4508
// Size: 0x54
function function_cafb8ad4(*str_notify) {
    level notify(#"hash_1c96e6001dd1ccaf");
    level clientfield::set("" + #"hash_14197af7df70a497", 0);
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x1b7badd3, Offset: 0x4568
// Size: 0xa4
function function_d4c77559() {
    level endon(#"end_game");
    self waittill(#"active");
    self flag::wait_till_clear("active");
    level waittill(#"hash_18fb4885eb2d3bdd");
    if (level flag::get(#"hash_1b8228b2efbf4022")) {
        level flag::clear(#"hash_1b8228b2efbf4022");
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x9d86e208, Offset: 0x4618
// Size: 0x42
function function_187d7597() {
    level endon(#"end_game");
    self endon(#"death");
    self waittill(#"chest_opened");
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xaa48adae, Offset: 0x4668
// Size: 0xca
function function_b370e26e() {
    n_players = getplayers().size;
    self.var_a4b9e38b = 0;
    switch (n_players) {
    case 1:
        self.var_53be7e08 = 1.25;
        break;
    case 2:
        self.var_53be7e08 = 1;
        break;
    case 3:
        self.var_53be7e08 = 0.9;
        break;
    default:
        self.var_53be7e08 = 0.8;
        break;
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x6441585b, Offset: 0x4740
// Size: 0x236
function function_c5d54048() {
    level endon(#"end_game", #"hash_1c96e6001dd1ccaf", #"hash_2da9a9ed61d2a6df", #"hash_70098fd18b42ab1a");
    a_spawners = struct::get_array("s_dragon_rocket_portals", "targetname");
    while (true) {
        if (level.var_b082a9eb.size < 8) {
            ai_type = get_ai_type();
            spawner = array::random(a_spawners);
            var_e98d14fc = (randomintrangeinclusive(-15, 15), randomintrangeinclusive(-15, 15), 0);
            if (isdefined(ai_type)) {
                function_16b5f843(1, "soul_capture_zombie");
                ai = spawnactor(ai_type, spawner.origin + var_e98d14fc, spawner.angles, "soul_capture_zombie", 1);
                if (isdefined(ai)) {
                    set_zombie(ai);
                    if (!isdefined(level.var_b082a9eb)) {
                        level.var_b082a9eb = [];
                    } else if (!isarray(level.var_b082a9eb)) {
                        level.var_b082a9eb = array(level.var_b082a9eb);
                    }
                    level.var_b082a9eb[level.var_b082a9eb.size] = ai;
                }
            }
        }
        function_1eaaceab(level.var_b082a9eb);
        wait(1);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x6 linked
// Checksum 0xcce6fee3, Offset: 0x4980
// Size: 0xb2
function private set_zombie(e_zombie) {
    if (isdefined(e_zombie)) {
        e_zombie.var_126d7bef = 1;
        e_zombie.ignore_round_spawn_failsafe = 1;
        e_zombie.b_ignore_cleanup = 1;
        e_zombie.ignore_enemy_count = 1;
        e_zombie.no_powerups = 1;
        e_zombie pathmode("move allowed");
        e_zombie.completed_emerging_into_playable_area = 1;
        e_zombie.zombie_think_done = 1;
        e_zombie namespace_85745671::function_9758722("sprint");
        e_zombie.ignore_nuke = 1;
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x4e785904, Offset: 0x4a40
// Size: 0x98
function get_ai_type() {
    var_628d63d0 = randomintrange(0, 100);
    if (var_628d63d0 > 20) {
        ai_type = array::random(array("spawner_bo5_zombie_zm_tungsten", "spawner_bo5_zombie_zm_tungsten_omega_soldier"));
        return ai_type;
    }
    if (var_628d63d0 > 5) {
        return "spawner_bo5_zombie_zm_tungsten_armor_medium";
    }
    return "spawner_bo5_zombie_zm_tungsten_armor_heavy";
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x7dddd990, Offset: 0x4ae0
// Size: 0x48
function function_cb9d983() {
    if (isarray(level.var_ebc8f1b9)) {
        array::delete_all(level.var_ebc8f1b9);
        level.var_ebc8f1b9 = [];
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xba6a50a7, Offset: 0x4b30
// Size: 0x64
function function_38db9cb2() {
    var_16f12c31 = structcopy(self.inventory.items[17]);
    if (var_16f12c31.networkid != 32767) {
        self item_inventory::remove_inventory_item(var_16f12c31.networkid);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xc2339409, Offset: 0x4ba0
// Size: 0x14c
function function_a56f7c6() {
    var_3745105f = structcopy(self.inventory.items[17]);
    if (var_3745105f.networkid != 32767) {
        return;
    }
    var_12a9e30a = self.var_7fac85b6;
    if (!isdefined(var_12a9e30a)) {
        return;
    }
    scorestreak = var_12a9e30a.scorestreak;
    if (scorestreak.networkid != 32767) {
        var_87b53013 = item_world_util::get_itemtype(scorestreak.itementry);
        self namespace_1cc7b406::give_item(var_87b53013);
        if (isdefined(scorestreak.itementry.weapon) && isdefined(self)) {
            self setweaponammoclip(scorestreak.itementry.weapon, scorestreak.clipammo);
            self setweaponammostock(scorestreak.itementry.weapon, scorestreak.stockammo);
        }
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0x1e02d50, Offset: 0x4cf8
// Size: 0x444
function function_eb438cc7(*str_notify) {
    level notify(#"hash_70098fd18b42ab1a");
    if (level flag::get(#"hash_549a957b8f4d551f")) {
        level flag::clear(#"hash_549a957b8f4d551f");
    }
    level.var_6a240880 = 1;
    foreach (var_532c4db3 in level.var_ebc8f1b9) {
        var_532c4db3 clientfield::set("" + #"player_barrier", 0);
    }
    array::delete_all(level.var_ebc8f1b9);
    level.var_ebc8f1b9 = [];
    if (isdefined(level.var_2ab5eeb7)) {
        if (isdefined(level.var_2ab5eeb7.var_2348a8fb)) {
            level.var_2ab5eeb7.var_2348a8fb = undefined;
        }
        if (isarray(level.var_2ab5eeb7.contentgroups) && isarray(level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"])) {
            if (isdefined(level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"][0].scriptmodel)) {
                var_12b46c6 = item_world::function_2e3efdda(level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"][0].scriptmodel.origin, undefined, 15, 1500, -1, 1);
                foreach (item in var_12b46c6) {
                    item delete();
                }
            }
            if (isdefined(level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"][0].scriptmodel)) {
                level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"][0].scriptmodel delete();
            }
            if (isdefined(level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"][0].scriptmodel.trigger)) {
                level.var_2ab5eeb7.contentgroups[#"hash_6b1e5d8f9e70a70e"][0].scriptmodel.trigger delete();
            }
        }
    }
    if (isdefined(self.var_620a1710)) {
        self.var_620a1710 delete();
    }
    if (isdefined(self.fake_player)) {
        self.fake_player delete();
    }
    if (isdefined(self.var_cad5a451)) {
        self.var_cad5a451 delete();
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x3dc161f0, Offset: 0x5148
// Size: 0x8c
function function_d1f847f9() {
    var_e5fea6e4 = struct::get("trig_arcade_token_rcxd", "targetname");
    s_unitrigger = var_e5fea6e4 zm_unitrigger::create(&function_542f231, (32, 32, 64), &function_73943beb);
    zm_unitrigger::unitrigger_force_per_player_triggers(s_unitrigger, 1);
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0xd9ac1054, Offset: 0x51e0
// Size: 0x20c
function function_542f231(e_player) {
    if (isplayer(e_player)) {
        self function_586afc1e(e_player);
        if (!level flag::get(#"hash_3814c5c6793e2b2d")) {
            self sethintstring(#"hash_289d0eb4a904e033");
            return true;
        } else if (level flag::get(#"hash_3e765c26047c9f54") || level flag::get(#"rbz_exfil_beacon_active")) {
            return false;
        } else if (level flag::get(#"hash_62300d1a6a6d537e") || level flag::get(#"hash_6de3a0458517d4ad")) {
            self sethintstring(#"hash_25f4721d7307ef13");
            return true;
        } else if (e_player function_fac9c4ef() < 1) {
            self sethintstring(#"hash_4e06f1e56e51cd51");
            return true;
        } else if (!level flag::get(#"hash_62300d1a6a6d537e") && !e_player flag::get(#"hash_299f96da2a2177b8")) {
            self sethintstring(#"hash_1bb1901f0bfdc925");
            return true;
        } else {
            return false;
        }
    }
    return false;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xbf5cbddd, Offset: 0x53f8
// Size: 0x1b8
function function_73943beb() {
    level endon(#"end_game");
    while (true) {
        result = self waittill(#"trigger");
        if (level flag::get(#"hash_62300d1a6a6d537e") || !level flag::get(#"hash_3814c5c6793e2b2d") || level flag::get(#"hash_6de3a0458517d4ad")) {
            continue;
        }
        if (isdefined(result.activator) && result.activator function_fac9c4ef() >= 1 && !result.activator flag::get(#"hash_299f96da2a2177b8")) {
            level.var_7a1e7f5e = result.activator;
            result.activator function_aff8caac(-1);
            level.var_d3bc5b54--;
            level.var_4d2ce592++;
            if (level.var_4d2ce592 >= 1) {
                level.var_4d2ce592 = 0;
                result.activator thread function_2e25017c();
            }
            continue;
        }
        /#
            iprintlnbold("waw_chest_loc_02");
        #/
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x4bd4b798, Offset: 0x55b8
// Size: 0x314
function function_2e25017c() {
    level endon(#"end_game");
    self endon(#"death", #"disconnect");
    self.var_b57cb1c0 = 1;
    if (is_true(self.var_b57cb1c0) && is_true(self.var_c6462371) && is_true(self.var_d2859364)) {
        self zm_stats::increment_challenge_stat(#"hash_2157c2e652a3a1e4");
    }
    self thread teleport_players(#"rcxd");
    self function_ec736a99();
    self function_11e9b637();
    level clientfield::set("" + #"hash_5e34e1c50fd13b32", 1);
    level flag::set(#"hash_62300d1a6a6d537e");
    level thread function_3fd2fae6(#"hash_1c50128f55aceb5d");
    level thread function_518c1741();
    level thread function_e59b491c();
    level.no_powerups = 1;
    self clientfield::set("" + #"hash_1a529bb0de6717d5", 1);
    self waittill(#"fasttravel_finished");
    function_65ff42b0();
    self clientfield::set("" + #"hash_1a529bb0de6717d5", 0);
    level.var_bd7e65ee = 60;
    level thread function_351b438f(level.var_bd7e65ee);
    level thread function_a1d59940();
    wait(1);
    if (isdefined(self)) {
        self val::set("arcade_rcxd_invulnerable", "takedamage", 0);
        self hide();
        self val::set(#"hash_7ddef091eca1a62", "ignoreme", 1);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x1ef8ddf5, Offset: 0x58d8
// Size: 0x224
function function_d1e82c7e() {
    level endon(#"end_game");
    self endoncallback(&function_9a8fea6b, #"death");
    level notify(#"hash_1c50128f55aceb5d");
    function_72c6bc73();
    level.var_7a1e7f5e thread objective_manager::function_a809e69a();
    self thread teleport_players(#"hash_21c62ac93c4f6615", 0);
    wait(2.7);
    level flag::clear(#"hash_62300d1a6a6d537e");
    if (isdefined(self)) {
        self show();
        self val::reset("arcade_rcxd_invulnerable", "takedamage");
        self val::reset(#"hash_7ddef091eca1a62", "ignoreme");
        self function_8a892bd();
    }
    if (isdefined(level.rcxd)) {
        level.rcxd clientfield::increment("" + #"hash_485fe8f642043f78");
        level.rcxd playrumbleonentity("sr_prototype_generator_explosion");
        if (isdefined(level.rcxd)) {
            level.rcxd delete();
        }
    }
    wait(1);
    level.no_powerups = 0;
    level clientfield::set("" + #"hash_5e34e1c50fd13b32", 0);
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0x3bc37750, Offset: 0x5b08
// Size: 0x1b4
function function_9a8fea6b(*str_notify) {
    level notify(#"hash_242dd23410564523");
    if (level flag::get(#"hash_62300d1a6a6d537e")) {
        level flag::clear(#"hash_62300d1a6a6d537e");
    }
    function_72c6bc73();
    if (isdefined(level.rcxd)) {
        level.rcxd clientfield::increment("" + #"hash_485fe8f642043f78");
        level.rcxd playrumbleonentity("sr_prototype_generator_explosion");
        if (isdefined(level.rcxd)) {
            level.rcxd delete();
        }
    }
    level.no_powerups = 0;
    level clientfield::set("" + #"hash_5e34e1c50fd13b32", 0);
    if (isdefined(self.var_620a1710)) {
        self.var_620a1710 delete();
    }
    if (isdefined(self.fake_player)) {
        self.fake_player delete();
    }
    if (isdefined(self.var_cad5a451)) {
        self.var_cad5a451 delete();
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x97522e2e, Offset: 0x5cc8
// Size: 0x1a4
function function_65ff42b0() {
    if (!isdefined(level.rcxd)) {
        rcxd_spawner = struct::get("rcxd_spawner", "targetname");
        level.rcxd = spawnvehicle(#"hash_1fac6cb792fef8ba", rcxd_spawner.origin, rcxd_spawner.angles);
        if (isdefined(level.rcxd) && isdefined(level.var_7a1e7f5e)) {
            level.rcxd val::set("gp", "takedamage", 0);
            level.rcxd clientfield::increment("" + #"gp_spawn");
            level.rcxd.targetname = "gp_car";
            level.rcxd setmodel(#"veh_t9_zm_arc_xd");
            level.rcxd.owner = level.var_7a1e7f5e;
            level.rcxd usevehicle(level.var_7a1e7f5e, 0);
            level.rcxd makevehicleunusable();
            level.rcxd thread function_4b03ed5b();
        }
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x3e38e2d7, Offset: 0x5e78
// Size: 0xd4
function function_4b03ed5b() {
    level endon(#"end_game", #"hash_1c50128f55aceb5d", #"hash_242dd23410564523", #"hash_32fbb01af328f0df");
    self endon(#"death");
    while (!(isdefined(self.owner) && (self.owner attackbuttonpressed() || self.owner vehicleattackbuttonpressed()))) {
        waitframe(1);
    }
    if (isdefined(level.var_7a1e7f5e)) {
        level.var_7a1e7f5e thread function_d1e82c7e();
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0xb0687f59, Offset: 0x5f58
// Size: 0x164
function function_351b438f(n_time) {
    self notify("62a28d252b08894e");
    self endon("62a28d252b08894e");
    level endon(#"hash_1c50128f55aceb5d", #"hash_5108d93797e14b36");
    level.var_7a1e7f5e endoncallback(&function_9a8fea6b, #"death");
    level.var_7a1e7f5e thread objective_manager::function_a809e69a();
    util::wait_network_frame();
    if (isdefined(level.var_7a1e7f5e)) {
        level.var_7a1e7f5e thread objective_manager::function_b8278876(n_time, "rcxd_timer");
    }
    level.var_9fc3d88 = gettime() + n_time * 1000;
    level waittilltimeout(n_time, #"end_game", #"game_ended");
    if (isdefined(level.var_7a1e7f5e)) {
        level notify(#"hash_32fbb01af328f0df");
        level.var_7a1e7f5e thread function_d1e82c7e();
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x292775d6, Offset: 0x60c8
// Size: 0x30c
function function_518c1741() {
    var_a1b482ae = struct::get_array("money_spawn_loc", "targetname");
    foreach (loc in var_a1b482ae) {
        e_powerup = zm_powerups::specific_powerup_drop("bonus_points_player", loc.origin, undefined, 0.1, undefined, 1, 1, 1, 1, 0);
        e_powerup thread function_dd39bb8();
        if (!isdefined(level.var_fd23d5ca)) {
            level.var_fd23d5ca = [];
        } else if (!isarray(level.var_fd23d5ca)) {
            level.var_fd23d5ca = array(level.var_fd23d5ca);
        }
        level.var_fd23d5ca[level.var_fd23d5ca.size] = e_powerup;
    }
    var_aff9ea6f = struct::get_array("small_money_spawn_loc", "targetname");
    foreach (loc in var_aff9ea6f) {
        var_3fdd0f6 = util::spawn_model(#"hash_62b204735601bbc9", loc.origin, loc.angles);
        var_3fdd0f6 thread function_e1323639();
        var_3fdd0f6 clientfield::set("" + #"hash_431b27e4b133e650", 1);
        if (!isdefined(level.var_edde4ca0)) {
            level.var_edde4ca0 = [];
        } else if (!isarray(level.var_edde4ca0)) {
            level.var_edde4ca0 = array(level.var_edde4ca0);
        }
        level.var_edde4ca0[level.var_edde4ca0.size] = var_3fdd0f6;
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xd497e393, Offset: 0x63e0
// Size: 0x13e
function function_e1323639() {
    self endon(#"death");
    while (true) {
        if (isdefined(level.rcxd)) {
            n_dis = distance(self.origin, level.rcxd.origin);
            if (n_dis < 24) {
                self clientfield::set("" + #"hash_431b27e4b133e650", 0);
                level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:level.var_7a1e7f5e, #scoreevent:"essence_pickup_small"});
                arrayremovevalue(level.var_edde4ca0, self);
                util::wait_network_frame();
                if (isdefined(self)) {
                    self delete();
                }
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x522794c3, Offset: 0x6528
// Size: 0xa2
function function_a1d59940() {
    level endon(#"end_game", #"hash_1c50128f55aceb5d", #"hash_242dd23410564523", #"hash_32fbb01af328f0df");
    while (true) {
        if (level.var_fd23d5ca.size === 0) {
            level notify(#"hash_5108d93797e14b36");
            level.var_7a1e7f5e thread function_d1e82c7e();
            break;
        }
        waitframe(1);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x44c775cc, Offset: 0x65d8
// Size: 0x134
function function_72c6bc73() {
    if (isarray(level.var_fd23d5ca)) {
        array::delete_all(level.var_fd23d5ca);
        level.var_fd23d5ca = [];
    }
    if (isarray(level.var_edde4ca0)) {
        foreach (item in level.var_edde4ca0) {
            if (isdefined(item)) {
                item clientfield::set("" + #"hash_431b27e4b133e650", 0);
                item thread util::delayed_delete(1);
            }
        }
        level.var_edde4ca0 = [];
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x41296dfe, Offset: 0x6718
// Size: 0x8c
function function_3d9adfea() {
    if (level flag::get(#"hash_62300d1a6a6d537e")) {
        if (isdefined(level.rcxd)) {
            var_6ed875d5 = [level.rcxd];
            return var_6ed875d5;
        } else {
            return getplayers();
        }
        return;
    }
    return getplayers();
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x3cc7412d, Offset: 0x67b0
// Size: 0xa4
function function_dd39bb8() {
    level endon(#"end_game", #"hash_1c50128f55aceb5d", #"hash_242dd23410564523");
    self endon(#"death");
    self waittill(#"powerup_grabbed");
    if (isdefined(level.rcxd) && isdefined(self) && isdefined(level.var_7a1e7f5e)) {
        arrayremovevalue(level.var_fd23d5ca, self);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xbc098eab, Offset: 0x6860
// Size: 0x344
function function_e59b491c() {
    level.var_b0e98854 = getent("move_platform_01", "targetname");
    level.var_1e9363ae = getent("move_platform_02", "targetname");
    level.var_1055c733 = getent("move_platform_03", "targetname");
    level.var_a17bab7 = getent("move_platform_04", "targetname");
    level.var_b0e98854 val::set(#"hash_3e8d5ff226b374f8", "allowdeath", 0);
    level.var_1e9363ae val::set(#"hash_3e8d5ff226b374f8", "allowdeath", 0);
    level.var_1055c733 val::set(#"hash_3e8d5ff226b374f8", "allowdeath", 0);
    level.var_a17bab7 val::set(#"hash_3e8d5ff226b374f8", "allowdeath", 0);
    level.var_b0e98854 thread function_984d18(level.var_b0e98854.origin, level.var_b0e98854.origin + (0, 0, -60), 2.5);
    level.var_1e9363ae thread function_984d18(level.var_1e9363ae.origin, level.var_1e9363ae.origin + (0, 0, 53), 4);
    level.var_1055c733 thread function_984d18(level.var_1055c733.origin, level.var_1055c733.origin + (0, -110, 0), 6);
    level.var_a17bab7 thread function_984d18(level.var_a17bab7.origin, level.var_a17bab7.origin + (0, 110, 0), 6);
    level.var_b0e98854 thread function_27745ace(level.var_b0e98854.origin);
    level.var_1e9363ae thread function_27745ace(level.var_1e9363ae.origin);
    level.var_1055c733 thread function_27745ace(level.var_1055c733.origin);
    level.var_a17bab7 thread function_27745ace(level.var_a17bab7.origin);
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 3, eflags: 0x2 linked
// Checksum 0x49a339c, Offset: 0x6bb0
// Size: 0xd2
function function_984d18(v_start_position, v_destination, n_speed) {
    self endon(#"death");
    level endon(#"end_game", #"hash_1c50128f55aceb5d", #"hash_242dd23410564523");
    while (true) {
        self moveto(v_destination, n_speed);
        self waittill(#"movedone");
        self moveto(v_start_position, n_speed);
        self waittill(#"movedone");
        continue;
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0xe744a19c, Offset: 0x6c90
// Size: 0x72
function function_27745ace(var_797baafe) {
    self endon(#"death");
    level endon(#"end_game");
    level waittill(#"hash_1c50128f55aceb5d", #"hash_242dd23410564523");
    if (isdefined(self)) {
        self.origin = var_797baafe;
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x9d424e61, Offset: 0x6d10
// Size: 0xc4
function function_7e83adbe() {
    level endon(#"end_game");
    wait(30);
    if (isdefined(level.var_b0e98854)) {
        level.var_b0e98854 delete();
    }
    if (isdefined(level.var_1e9363ae)) {
        level.var_1e9363ae delete();
    }
    if (isdefined(level.var_1055c733)) {
        level.var_1055c733 delete();
    }
    if (isdefined(level.var_a17bab7)) {
        level.var_a17bab7 delete();
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xb9ec4253, Offset: 0x6de0
// Size: 0x64
function function_11e9b637() {
    var_16f12c31 = structcopy(self.inventory.items[17]);
    if (var_16f12c31.networkid != 32767) {
        self item_inventory::remove_inventory_item(var_16f12c31.networkid);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xda57f55b, Offset: 0x6e50
// Size: 0x104
function function_8a892bd() {
    var_12a9e30a = self.var_7fac85b6;
    if (!isdefined(var_12a9e30a)) {
        return;
    }
    scorestreak = var_12a9e30a.scorestreak;
    if (scorestreak.networkid != 32767) {
        var_87b53013 = item_world_util::get_itemtype(scorestreak.itementry);
        self namespace_1cc7b406::give_item(var_87b53013);
        if (isdefined(scorestreak.itementry.weapon) && isdefined(self)) {
            self setweaponammoclip(scorestreak.itementry.weapon, scorestreak.clipammo);
            self setweaponammostock(scorestreak.itementry.weapon, scorestreak.stockammo);
        }
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x8f4cebdd, Offset: 0x6f60
// Size: 0x8c
function function_d823ee31() {
    var_872b56c2 = struct::get("trig_arcade_token_waw", "targetname");
    s_unitrigger = var_872b56c2 zm_unitrigger::create(&function_7991969e, (32, 32, 64), &function_cf9c86a2);
    zm_unitrigger::unitrigger_force_per_player_triggers(s_unitrigger, 1);
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0xad0b0111, Offset: 0x6ff8
// Size: 0x1dc
function function_7991969e(e_player) {
    if (isplayer(e_player)) {
        self function_586afc1e(e_player);
        if (!level flag::get(#"hash_3814c5c6793e2b2d")) {
            self sethintstring(#"hash_289d0eb4a904e033");
            return true;
        } else if (level flag::get(#"hash_3e765c26047c9f54") || level flag::get(#"rbz_exfil_beacon_active")) {
            return false;
        } else if (level flag::get(#"hash_480a4ce872938116") || level flag::get(#"hash_6de3a0458517d4ad")) {
            self sethintstring(#"hash_25f4721d7307ef13");
            return true;
        } else if (e_player function_fac9c4ef() < 1) {
            self sethintstring(#"hash_1a4500d39c86604d");
            return true;
        } else if (!e_player flag::get(#"hash_223e2905daf647d0")) {
            self sethintstring(#"hash_1b885c52daa352c9");
            return true;
        } else {
            return false;
        }
    }
    return false;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x39dadd6e, Offset: 0x71e0
// Size: 0x1b8
function function_cf9c86a2() {
    level endon(#"end_game");
    while (true) {
        result = self waittill(#"trigger");
        if (level flag::get(#"hash_480a4ce872938116") || !level flag::get(#"hash_3814c5c6793e2b2d") || level flag::get(#"hash_6de3a0458517d4ad")) {
            continue;
        }
        if (isdefined(result.activator) && result.activator function_fac9c4ef() >= 1 && !result.activator flag::get(#"hash_223e2905daf647d0")) {
            level.var_e67580 = result.activator;
            result.activator function_aff8caac(-1);
            level.var_d3bc5b54--;
            level.var_a1274b1e++;
            if (level.var_a1274b1e >= 1) {
                level.var_a1274b1e = 0;
                result.activator thread function_f4b38561();
            }
            continue;
        }
        /#
            iprintlnbold("waw_chest_loc_02");
        #/
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x359c6d9, Offset: 0x73a0
// Size: 0x2dc
function function_f4b38561() {
    level endon(#"end_game");
    level flag::set(#"hash_480a4ce872938116");
    self.var_c6462371 = 1;
    if (is_true(self.var_b57cb1c0) && is_true(self.var_c6462371) && is_true(self.var_d2859364)) {
        self zm_stats::increment_challenge_stat(#"hash_2157c2e652a3a1e4");
    }
    level thread function_3fd2fae6(#"hash_6c8e9e5de4dcbca");
    self thread teleport_players(#"waw");
    level.no_powerups = 1;
    wait(2.45);
    if (isdefined(self)) {
        self flag::set(#"in_waw");
        self clientfield::set_to_player("" + #"hash_721d42a28d7461ea", 1);
        self function_ec736a99();
        self function_1438349c();
        var_60ed0b9a = getweapon("pistol_semiauto_t9");
        self zm_weapons::weapon_give(var_60ed0b9a);
        self setweaponammoclip(var_60ed0b9a, 8);
        self setweaponammostock(var_60ed0b9a, 24);
        self function_927be4ad();
        self function_ec7fa3d9();
        self namespace_1b527536::function_460882e2();
    }
    wait(4);
    if (isdefined(self)) {
        self thread function_626741e8(156, "waw_timer");
    }
    level thread function_bf19d77a();
    level thread function_71c9b39e();
    level thread function_303a9602();
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x8ec8a058, Offset: 0x7688
// Size: 0x464
function function_c4d12d9e() {
    if (level flag::get(#"hash_787fb7650c3017c4")) {
        return;
    } else {
        level flag::set(#"hash_787fb7650c3017c4");
    }
    level endon(#"end_game");
    self endoncallback(&function_8aa2dafe, #"death");
    level flag::clear(#"hash_3a392f9e78ad040b");
    level flag::clear(#"hash_5d0e7c9928f5f89f");
    level flag::clear(#"hash_6910c382c5e193b2");
    self flag::clear(#"in_waw");
    level notify(#"hash_6c8e9e5de4dcbca");
    self thread teleport_players(#"hash_6c9d0501ba0f8c97", 0);
    level.no_powerups = 0;
    wait(2.7);
    level flag::clear(#"hash_480a4ce872938116");
    level thread function_f1ff5e00();
    if (isdefined(level.var_743ac5c7)) {
        level.var_743ac5c7.origin = level.var_743ac5c7.v_start_pos;
    }
    foreach (zombie in level.var_dc85d079) {
        if (isalive(zombie)) {
            zombie.allowdeath = 1;
            zombie kill();
        }
    }
    level.var_dc85d079 = [];
    foreach (zombie in level.var_e1b6f12f) {
        if (isalive(zombie)) {
            zombie.allowdeath = 1;
            zombie kill();
        }
    }
    level.var_e1b6f12f = [];
    foreach (zombie in level.var_7ab74a80) {
        if (isalive(zombie)) {
            zombie.allowdeath = 1;
            zombie kill();
        }
    }
    level.var_7ab74a80 = [];
    if (isdefined(self)) {
        self function_f965c4c7();
        self function_ceb0a340();
        self function_b153ad4c();
        self clientfield::set_to_player("" + #"hash_721d42a28d7461ea", 0);
        level.var_e67580 = undefined;
    }
    level flag::clear(#"hash_787fb7650c3017c4");
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x4f88722b, Offset: 0x7af8
// Size: 0x3e4
function function_8aa2dafe() {
    if (level flag::get(#"hash_480a4ce872938116")) {
        level flag::clear(#"hash_480a4ce872938116");
    }
    level flag::clear(#"hash_3a392f9e78ad040b");
    level flag::clear(#"hash_5d0e7c9928f5f89f");
    level flag::clear(#"hash_6910c382c5e193b2");
    self flag::clear(#"in_waw");
    level notify(#"hash_4b186b35454a7d2b");
    level.no_powerups = 0;
    level thread function_f1ff5e00();
    if (isdefined(level.var_743ac5c7)) {
        level.var_743ac5c7.origin = level.var_743ac5c7.v_start_pos;
    }
    foreach (zombie in level.var_dc85d079) {
        if (isalive(zombie)) {
            zombie.allowdeath = 1;
            zombie kill();
        }
    }
    level.var_dc85d079 = [];
    foreach (zombie in level.var_e1b6f12f) {
        if (isalive(zombie)) {
            zombie.allowdeath = 1;
            zombie kill();
        }
    }
    level.var_e1b6f12f = [];
    foreach (zombie in level.var_7ab74a80) {
        if (isalive(zombie)) {
            zombie.allowdeath = 1;
            zombie kill();
        }
    }
    level.var_7ab74a80 = [];
    if (isdefined(self.var_620a1710)) {
        self.var_620a1710 delete();
    }
    if (isdefined(self.fake_player)) {
        self.fake_player delete();
    }
    if (isdefined(self.var_cad5a451)) {
        self.var_cad5a451 delete();
    }
    if (level flag::get(#"hash_787fb7650c3017c4")) {
        level flag::clear(#"hash_787fb7650c3017c4");
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xf4ccf37c, Offset: 0x7ee8
// Size: 0x326
function function_bf19d77a() {
    level endon(#"end_game", #"hash_6c8e9e5de4dcbca");
    level.var_e67580 endoncallback(&function_8aa2dafe, #"death");
    level flag::set(#"hash_3a392f9e78ad040b");
    level.var_d88181e4 = 0;
    level.var_2d41c998 = 0;
    while (true) {
        if (level flag::get(#"hash_3a392f9e78ad040b")) {
            if (level.var_d88181e4 >= 8) {
                level flag::clear(#"hash_3a392f9e78ad040b");
                level thread function_f9a67ba4(0);
                wait(8);
                level.var_d88181e4 = 0;
                level.var_2d41c998 = 0;
                level flag::set(#"hash_5d0e7c9928f5f89f");
            }
        }
        if (level flag::get(#"hash_5d0e7c9928f5f89f")) {
            if (level.var_d88181e4 >= 11) {
                level flag::clear(#"hash_5d0e7c9928f5f89f");
                level thread function_f9a67ba4(1);
                wait(8);
                level.var_d88181e4 = 0;
                level.var_2d41c998 = 0;
                level flag::set(#"hash_6910c382c5e193b2");
            }
        }
        if (level flag::get(#"hash_6910c382c5e193b2")) {
            if (level.var_d88181e4 >= 15) {
                level flag::clear(#"hash_6910c382c5e193b2");
                level thread function_f9a67ba4(2);
                level notify(#"hash_67be133ca877da79");
                if (isdefined(level.var_743ac5c7)) {
                    level.var_743ac5c7 moveto(level.var_743ac5c7.origin + (0, 0, 300), 35);
                }
                wait(30);
                if (isdefined(level.mdl_chest)) {
                    level.mdl_chest delete();
                }
                if (isdefined(level.var_e67580)) {
                    level.var_e67580 thread function_c4d12d9e();
                }
            }
        }
        wait(2);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xc95460ad, Offset: 0x8218
// Size: 0x94
function function_303a9602() {
    level endon(#"end_game", #"hash_6c8e9e5de4dcbca", #"hash_4b186b35454a7d2b", #"hash_67be133ca877da79");
    wait(156);
    level notify(#"hash_50f09a6b531a3d86");
    if (isdefined(level.var_e67580)) {
        level.var_e67580 thread function_c4d12d9e();
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xc8a31594, Offset: 0x82b8
// Size: 0x27e
function function_71c9b39e() {
    level endon(#"end_game", #"hash_6c8e9e5de4dcbca", #"hash_4b186b35454a7d2b", #"hash_67be133ca877da79");
    a_spawners = struct::get_array("waw_zombie_spawner", "targetname");
    var_4ba410cb = gettime() + 3000;
    while (true) {
        if (level flag::get(#"hash_3a392f9e78ad040b")) {
            if (gettime() > var_4ba410cb && level.var_2d41c998 < 8) {
                function_f2e99a78(1, a_spawners);
                var_4ba410cb = gettime() + 3000;
            }
        }
        if (level flag::get(#"hash_5d0e7c9928f5f89f")) {
            if (gettime() > var_4ba410cb && level.var_2d41c998 < 11) {
                function_f2e99a78(2, a_spawners);
                var_4ba410cb = gettime() + 2000;
            }
        }
        if (level flag::get(#"hash_6910c382c5e193b2")) {
            if (gettime() > var_4ba410cb && level.var_2d41c998 < 15) {
                function_f2e99a78(3, a_spawners);
                var_4ba410cb = gettime() + 1000;
            }
        }
        if (isarray(level.var_dc85d079)) {
            function_1eaaceab(level.var_dc85d079);
        }
        if (isarray(level.var_e1b6f12f)) {
            function_1eaaceab(level.var_e1b6f12f);
        }
        if (isarray(level.var_7ab74a80)) {
            function_1eaaceab(level.var_7ab74a80);
        }
        waitframe(1);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 2, eflags: 0x2 linked
// Checksum 0x5f5449eb, Offset: 0x8540
// Size: 0xe8
function function_f2e99a78(n_wave, a_spawners) {
    ai_type = function_a21ee2db();
    spawner = array::random(a_spawners);
    if (isdefined(ai_type)) {
        function_16b5f843(1, "world_at_war_zombie");
        ai = spawnactor(ai_type, spawner.origin, spawner.angles, "world_at_war_zombie", 1, 1);
        if (isdefined(ai)) {
            ai function_a71b2318(n_wave, spawner.script_noteworthy);
            level.var_2d41c998++;
        }
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 2, eflags: 0x2 linked
// Checksum 0xfdc2cc67, Offset: 0x8630
// Size: 0x41a
function function_a71b2318(n_wave, var_ddd156dd) {
    self.var_126d7bef = 1;
    self.ignore_round_spawn_failsafe = 1;
    self.b_ignore_cleanup = 1;
    self.ignore_enemy_count = 1;
    self.no_powerups = 1;
    self pathmode("move allowed");
    self.zombie_think_done = 1;
    self.find_flesh_struct_string = var_ddd156dd;
    self thread function_53051fbb();
    self clientfield::set("" + #"hash_3e4641a9ea00d061", 1);
    self.var_36d6f09a = 1;
    self.var_c3083789 = 0;
    self.ignore_nuke = 1;
    switch (n_wave) {
    case 1:
        self.health = 200;
        if (math::cointoss(80)) {
            self namespace_85745671::function_9758722("walk");
        } else {
            self namespace_85745671::function_9758722("run");
        }
        if (!isdefined(level.var_dc85d079)) {
            level.var_dc85d079 = [];
        } else if (!isarray(level.var_dc85d079)) {
            level.var_dc85d079 = array(level.var_dc85d079);
        }
        level.var_dc85d079[level.var_dc85d079.size] = self;
        break;
    case 2:
        self.health = 225;
        if (math::cointoss(50)) {
            self namespace_85745671::function_9758722("walk");
        } else {
            self namespace_85745671::function_9758722("run");
        }
        if (!isdefined(level.var_e1b6f12f)) {
            level.var_e1b6f12f = [];
        } else if (!isarray(level.var_e1b6f12f)) {
            level.var_e1b6f12f = array(level.var_e1b6f12f);
        }
        level.var_e1b6f12f[level.var_e1b6f12f.size] = self;
        break;
    case 3:
        self.health = 250;
        if (math::cointoss(80)) {
            self namespace_85745671::function_9758722("run");
        } else {
            self namespace_85745671::function_9758722("sprint");
        }
        if (!isdefined(level.var_7ab74a80)) {
            level.var_7ab74a80 = [];
        } else if (!isarray(level.var_7ab74a80)) {
            level.var_7ab74a80 = array(level.var_7ab74a80);
        }
        level.var_7ab74a80[level.var_7ab74a80.size] = self;
        break;
    default:
        self.health = 100;
        self namespace_85745671::function_9758722("walk");
        break;
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x65391186, Offset: 0x8a58
// Size: 0x42
function function_53051fbb() {
    self endon(#"death");
    self waittill(#"completed_emerging_into_playable_area");
    wait(0.5);
    self.var_98f1f37c = 1;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x516ab248, Offset: 0x8aa8
// Size: 0x4a
function function_a21ee2db() {
    ai_type = array::random(array("spawner_bo5_zombie_zm_tungsten_german_soldier", "spawner_bo5_zombie_zm_tungsten_german_soldier_pap_02", "spawner_bo5_zombie_zm_tungsten_german_soldier_pap_03"));
    return ai_type;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0xf007842b, Offset: 0x8b00
// Size: 0x1ba
function function_f9a67ba4(var_bb671993) {
    level endon(#"end_game");
    switch (var_bb671993) {
    case 0:
        s_chest = struct::get("waw_chest_loc_01", "targetname");
        function_c99bf6b8(0, s_chest, "zm_tungsten_world_at_war_chest_small", #"p9_fxanim_zm_gp_chest_01_sml_low_xmodel", #"p9_fxanim_zm_gp_chest_01_sml_bundle", 1);
        break;
    case 1:
        s_chest = struct::get("waw_chest_loc_02", "targetname");
        function_c99bf6b8(1, s_chest, "zm_tungsten_world_at_war_chest_medium", #"p9_fxanim_zm_gp_chest_01_med_low_xmodel", #"p9_fxanim_zm_gp_chest_01_med_bundle", 1);
        break;
    case 2:
        s_chest = struct::get("waw_chest_loc_03", "targetname");
        function_c99bf6b8(2, s_chest, "zm_tungsten_world_at_war_chest", #"p9_fxanim_zm_gp_chest_01_lrg_low_xmodel", #"p9_fxanim_zm_gp_chest_01_lrg_bundle", 2);
        break;
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 6, eflags: 0x2 linked
// Checksum 0x625ce2d9, Offset: 0x8cc8
// Size: 0x22c
function function_c99bf6b8(var_e503dc79, s_chest, var_cc1fb2d0, mdl_chest, var_91c84189, n_fx) {
    level.mdl_chest = util::spawn_model("tag_origin", s_chest.origin, s_chest.angles);
    level.mdl_chest clientfield::set("" + #"hash_3d5c2390c0768ed2", 1);
    namespace_58949729::function_4ec9fc99(s_chest, var_cc1fb2d0, mdl_chest, var_91c84189, n_fx);
    s_chest.trigger thread function_37c935e1();
    s_chest.scriptmodel thread function_37c935e1();
    if (isdefined(level.var_e67580)) {
        level zm_sq::function_266d66eb(#"hash_624aaed17c0e408e", s_chest, undefined, undefined, undefined, 96);
        a_players = getplayers();
        foreach (player in a_players) {
            if (player == level.var_e67580) {
                player zm_sq::function_aee0b4b4(#"hash_624aaed17c0e408e", s_chest);
                continue;
            }
            player zm_sq::function_3029d343(#"hash_624aaed17c0e408e", s_chest);
        }
    }
    s_chest.trigger thread function_c0f95bf4(var_e503dc79);
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x126965cc, Offset: 0x8f00
// Size: 0x7c
function function_37c935e1() {
    level endon(#"end_game");
    self endon(#"death");
    level waittill(#"hash_6c8e9e5de4dcbca", #"hash_4b186b35454a7d2b");
    self notify(#"chest_opened");
    self delete();
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0xb00575f, Offset: 0x8f88
// Size: 0x3c2
function function_c0f95bf4(var_e503dc79) {
    level endon(#"end_game");
    self endon(#"death");
    self waittill(#"chest_opened");
    level zm_sq::objective_complete(#"hash_624aaed17c0e408e");
    switch (var_e503dc79) {
    case 0:
        break;
    case 1:
        wait(1);
        drop_pos = self.origin + (0, 0, -10);
        weapon = function_4ba8fde("tr_precisionsemi_t9_item_zm_tungsten_side_quest");
        item = item_drop::drop_item(0, undefined, 1, 0, weapon.id, self.origin, self.angles + (0, 0, 0), 0);
        item.var_dd21aec2 = 1 | 16;
        n_power = length(self.origin - drop_pos) * 2;
        var_4e2c4d20 = item zm_utility::fake_physicslaunch(drop_pos, n_power);
        item.itementry.var_4cd830a = 1;
        break;
    case 2:
        wait(1);
        var_8c54d57c = struct::get(#"hash_31e21c3eabb66c4", "targetname");
        var_47314b36 = struct::get(#"hash_31e24c3eabb6bdd", "targetname");
        var_77b72c41 = struct::get(#"hash_31e23c3eabb6a2a", "targetname");
        var_e16a25a6 = level thread zm_powerups::specific_powerup_drop("hero_weapon_power", var_8c54d57c.origin, undefined, 2, undefined, 1, 1, 1, 1, 0);
        var_cfac822b = level thread zm_powerups::specific_powerup_drop("bonus_points_player", var_47314b36.origin, undefined, 2, undefined, 1, 1, 1, 1, 0);
        var_df6febf = level thread zm_powerups::specific_powerup_drop("bonus_points_player", var_77b72c41.origin, undefined, 2, undefined, 1, 1, 1, 1, 0);
        level waittill(#"hash_6c8e9e5de4dcbca", #"hash_4b186b35454a7d2b");
        if (isdefined(var_e16a25a6)) {
            var_e16a25a6 delete();
        }
        if (isdefined(var_cfac822b)) {
            var_cfac822b delete();
        }
        if (isdefined(var_df6febf)) {
            var_df6febf delete();
        }
        break;
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x3a5efc81, Offset: 0x9358
// Size: 0x526
function function_ec736a99() {
    self.var_7fac85b6 = undefined;
    var_fe58c446 = structcopy(self.inventory.items[13]);
    var_312d49ec = structcopy(self.inventory.items[7]);
    var_4ffaff67 = structcopy(self.inventory.items[12]);
    var_16f12c31 = structcopy(self.inventory.items[17]);
    scorestreakweapon = var_16f12c31.itementry.weapon;
    if (isdefined(scorestreakweapon)) {
        var_16f12c31.clipammo = self getweaponammoclip(scorestreakweapon);
        var_16f12c31.stockammo = self getweaponammostock(scorestreakweapon);
    }
    var_61bf1830 = structcopy(self.inventory.items[17 + 1]);
    var_61bf1830.hidetime = 0;
    weapon1 = var_61bf1830.var_627c698b;
    if (isdefined(weapon1)) {
        var_61bf1830.clipammo = self getweaponammoclip(weapon1);
        var_61bf1830.stockammo = self getweaponammostock(weapon1);
        if (is_true(weapon1.isdualwield) && isdefined(weapon1.dualwieldweapon) && weapon1.dualwieldweapon != level.weaponnone) {
            var_61bf1830.var_7fa2b50b = self getweaponammoclip(weapon1.dualwieldweapon);
        }
    }
    var_c6dd36cf = structcopy(self.inventory.items[17 + 1 + 8 + 1]);
    var_c6dd36cf.hidetime = 0;
    weapon2 = var_c6dd36cf.var_627c698b;
    if (isdefined(weapon2)) {
        var_c6dd36cf.clipammo = self getweaponammoclip(weapon2);
        var_c6dd36cf.stockammo = self getweaponammostock(weapon2);
        if (is_true(weapon2.isdualwield) && isdefined(weapon2.dualwieldweapon) && weapon2.dualwieldweapon != level.weaponnone) {
            var_c6dd36cf.var_7fa2b50b = self getweaponammoclip(weapon2.dualwieldweapon);
        }
    }
    var_6a59c435 = structcopy(self.inventory.items[17 + 1 + 8 + 1 + 8 + 1]);
    var_6a59c435.hidetime = 0;
    var_5df29481 = var_6a59c435.var_627c698b;
    if (isdefined(var_5df29481)) {
        var_6a59c435.clipammo = self getweaponammoclip(var_5df29481);
        var_6a59c435.stockammo = self getweaponammostock(var_5df29481);
        if (is_true(var_5df29481.isdualwield) && isdefined(var_5df29481.dualwieldweapon) && var_5df29481.dualwieldweapon != level.weaponnone) {
            var_6a59c435.var_7fa2b50b = self getweaponammoclip(var_5df29481.dualwieldweapon);
        }
    }
    var_37e14db3 = {#armor:self.armor, #var_6032cf15:self.armortier, #scorestreak:var_16f12c31, #tactical:var_fe58c446, #lethal:var_312d49ec, #weapon1:var_61bf1830, #weapon2:var_c6dd36cf, #var_5df29481:var_6a59c435, #fieldupgrade:var_4ffaff67};
    self.var_7fac85b6 = var_37e14db3;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xc1e071c5, Offset: 0x9888
// Size: 0x324
function function_1438349c() {
    var_61bf1830 = structcopy(self.inventory.items[17 + 1]);
    var_61bf1830.hidetime = 0;
    weapon1 = var_61bf1830.var_627c698b;
    if (isdefined(weapon1)) {
        self zm_weapons::weapon_take(weapon1);
    }
    var_c6dd36cf = structcopy(self.inventory.items[17 + 1 + 8 + 1]);
    var_c6dd36cf.hidetime = 0;
    weapon2 = var_c6dd36cf.var_627c698b;
    if (isdefined(weapon2)) {
        self zm_weapons::weapon_take(weapon2);
    }
    var_6a59c435 = structcopy(self.inventory.items[17 + 1 + 8 + 1 + 8 + 1]);
    var_6a59c435.hidetime = 0;
    var_5df29481 = var_6a59c435.var_627c698b;
    if (isdefined(var_5df29481)) {
        self zm_weapons::weapon_take(var_5df29481);
    }
    self namespace_dd7e54e3::function_b2f69241();
    var_16f12c31 = structcopy(self.inventory.items[17]);
    if (var_16f12c31.networkid != 32767) {
        self item_inventory::remove_inventory_item(var_16f12c31.networkid);
    }
    var_fe58c446 = structcopy(self.inventory.items[13]);
    if (var_fe58c446.networkid != 32767) {
        self item_inventory::remove_inventory_item(var_fe58c446.networkid);
    }
    var_312d49ec = structcopy(self.inventory.items[7]);
    if (var_312d49ec.networkid != 32767) {
        self item_inventory::remove_inventory_item(var_312d49ec.networkid);
    }
    var_4ffaff67 = structcopy(self.inventory.items[12]);
    if (var_4ffaff67.networkid != 32767) {
        self item_inventory::remove_inventory_item(var_4ffaff67.networkid);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xed153259, Offset: 0x9bb8
// Size: 0x7ca
function function_ceb0a340() {
    var_12a9e30a = self.var_7fac85b6;
    if (!isdefined(var_12a9e30a)) {
        return;
    }
    if (isdefined(var_12a9e30a.var_6032cf15) && var_12a9e30a.var_6032cf15 > 0) {
        if (var_12a9e30a.var_6032cf15 <= self.armortier) {
            if (self.armor < var_12a9e30a.armor) {
                self.armor = var_12a9e30a.armor;
            }
        } else {
            switch (var_12a9e30a.var_6032cf15) {
            case 1:
            default:
                str_level = #"armor_item_lv1_t9_sr";
                break;
            case 2:
                str_level = #"armor_item_lv2_t9_sr";
                break;
            case 3:
                str_level = #"armor_item_lv3_t9_sr";
                break;
            }
            self namespace_dd7e54e3::give_armor(str_level);
            if (self.armor < var_12a9e30a.armor) {
                self.armor = var_12a9e30a.armor;
            }
        }
    }
    lethal = var_12a9e30a.lethal;
    if (lethal.networkid != 32767) {
        var_16f23139 = item_world_util::get_itemtype(lethal.itementry);
        self namespace_1cc7b406::give_item(var_16f23139, lethal.count, 1);
    }
    tactical = var_12a9e30a.tactical;
    if (tactical.networkid != 32767) {
        var_20131ecc = item_world_util::get_itemtype(tactical.itementry);
        self namespace_1cc7b406::give_item(var_20131ecc, tactical.count, 1);
    }
    fieldupgrade = var_12a9e30a.fieldupgrade;
    if (fieldupgrade.networkid != 32767) {
        fieldupgradename = item_world_util::get_itemtype(fieldupgrade.itementry);
        self namespace_1b527536::function_6457e4cd(fieldupgradename, fieldupgrade.count);
    }
    scorestreak = var_12a9e30a.scorestreak;
    if (scorestreak.networkid != 32767) {
        var_87b53013 = item_world_util::get_itemtype(scorestreak.itementry);
        self namespace_1cc7b406::give_item(var_87b53013);
        if (isdefined(scorestreak.itementry.weapon) && isdefined(self)) {
            self setweaponammoclip(scorestreak.itementry.weapon, scorestreak.clipammo);
            self setweaponammostock(scorestreak.itementry.weapon, scorestreak.stockammo);
        }
    }
    weapon1 = var_12a9e30a.weapon1;
    var_a85dc309 = self.inventory.items[17 + 1];
    var_7accd6f7 = item_inventory::function_a33744de(var_a85dc309.var_627c698b);
    dropweapon = self item_inventory::function_b76f46a0(weapon1, var_7accd6f7, 1);
    if (isdefined(self)) {
        self setweaponammoclip(weapon1.var_627c698b, weapon1.clipammo);
        self setweaponammostock(weapon1.var_627c698b, weapon1.stockammo);
        if (isdefined(weapon1.var_7fa2b50b)) {
            self setweaponammoclip(weapon1.var_627c698b.dualwieldweapon, int(weapon1.var_7fa2b50b));
        }
    } else {
        return;
    }
    weapon2 = var_12a9e30a.weapon2;
    var_bacb67e4 = self.inventory.items[17 + 1 + 8 + 1];
    if (isdefined(weapon2.var_627c698b)) {
        if (!isdefined(var_bacb67e4.var_627c698b)) {
            self zm_weapons::function_98776900(weapon2, 1, 0);
        } else {
            var_1f321fb7 = item_inventory::function_a33744de(var_bacb67e4.var_627c698b);
            dropweapon = self item_inventory::function_b76f46a0(weapon2, var_1f321fb7, 1);
        }
        if (isdefined(self)) {
            self setweaponammoclip(weapon2.var_627c698b, weapon2.clipammo);
            self setweaponammostock(weapon2.var_627c698b, weapon2.stockammo);
            if (isdefined(weapon2.var_7fa2b50b)) {
                self setweaponammoclip(weapon2.var_627c698b.dualwieldweapon, int(weapon2.var_7fa2b50b));
            }
        } else {
            return;
        }
    }
    var_5df29481 = var_12a9e30a.var_5df29481;
    var_d0dc1405 = self.inventory.items[17 + 1 + 8 + 1 + 8 + 1];
    if (isdefined(var_5df29481.var_627c698b)) {
        if (!isdefined(var_d0dc1405.var_627c698b)) {
            self zm_weapons::function_98776900(var_5df29481, 1, 0);
        } else {
            var_2b72b838 = item_inventory::function_a33744de(var_d0dc1405.var_627c698b);
            dropweapon = self item_inventory::function_b76f46a0(var_5df29481, var_2b72b838, 1);
        }
        if (isdefined(self)) {
            self setweaponammoclip(var_5df29481.var_627c698b, var_5df29481.clipammo);
            self setweaponammostock(var_5df29481.var_627c698b, var_5df29481.stockammo);
            if (isdefined(var_5df29481.var_7fa2b50b)) {
                self setweaponammoclip(var_5df29481.var_627c698b.dualwieldweapon, int(var_5df29481.var_7fa2b50b));
            }
            return;
        }
        return;
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x67f1c975, Offset: 0xa390
// Size: 0x37c
function function_f1ff5e00() {
    level endon(#"end_game");
    var_b09e0925 = [];
    var_1e62f913 = struct::get("waw_player_start_pos", "targetname");
    var_2ed67d31 = struct::get_array("exterior_goal", "targetname");
    foreach (barricade in var_2ed67d31) {
        if (distance(barricade.origin, var_1e62f913.origin) <= 1500) {
            if (!isdefined(var_b09e0925)) {
                var_b09e0925 = [];
            } else if (!isarray(var_b09e0925)) {
                var_b09e0925 = array(var_b09e0925);
            }
            var_b09e0925[var_b09e0925.size] = barricade;
        }
    }
    for (i = 0; i < var_b09e0925.size; i++) {
        barrier = var_b09e0925[i];
        if (zm_utility::all_chunks_intact(barrier, barrier.barrier_chunks)) {
            continue;
        }
        if (isdefined(barrier.zbarrier)) {
            a_pieces = barrier.zbarrier getzbarrierpieceindicesinstate("open");
            if (isdefined(a_pieces)) {
                for (xx = 0; xx < a_pieces.size; xx++) {
                    chunk = a_pieces[xx];
                    barrier.zbarrier zbarrierpieceusedefaultmodel(chunk);
                    barrier.zbarrier.chunk_health[chunk] = 0;
                }
            }
            for (x = 0; x < barrier.zbarrier getnumzbarrierpieces(); x++) {
                barrier.zbarrier setzbarrierpiecestate(x, "closed");
                barrier.zbarrier showzbarrierpiece(x);
            }
        }
        if (isdefined(barrier.clip)) {
            barrier.clip triggerenable(1);
            barrier.clip disconnectpaths();
        } else {
            zm_blockers::blocker_disconnect_paths(barrier.neg_start, barrier.neg_end);
        }
        if (i % 4 == 0) {
            util::wait_network_frame();
        }
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0xf8483629, Offset: 0xa718
// Size: 0xf8
function function_927be4ad() {
    foreach (perk in self.var_7341f980) {
        if (!isdefined(self.var_8e07b6fd)) {
            self.var_8e07b6fd = [];
        } else if (!isarray(self.var_8e07b6fd)) {
            self.var_8e07b6fd = array(self.var_8e07b6fd);
        }
        self.var_8e07b6fd[self.var_8e07b6fd.size] = perk;
        self namespace_791d0451::function_4c1d0e25(perk);
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x840060f2, Offset: 0xa818
// Size: 0xb2
function function_f965c4c7() {
    if (isarray(self.var_8e07b6fd)) {
        foreach (perk in self.var_8e07b6fd) {
            self namespace_791d0451::function_3fecad82(perk);
        }
        self.var_8e07b6fd = [];
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x479506ee, Offset: 0xa8d8
// Size: 0x34
function function_ec7fa3d9() {
    self.self_revive_count = zm_laststand::function_618fd37e();
    self zm_laststand::function_3d685b5f(0);
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x28c2a900, Offset: 0xa918
// Size: 0x24
function function_b153ad4c() {
    self zm_laststand::function_3d685b5f(self.self_revive_count);
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 0, eflags: 0x2 linked
// Checksum 0x512751, Offset: 0xa948
// Size: 0x4c
function function_99cd0986() {
    level endon(#"end_game");
    wait(40);
    if (isdefined(level.var_743ac5c7)) {
        level.var_743ac5c7 delete();
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 13, eflags: 0x2 linked
// Checksum 0xed953cca, Offset: 0xa9a0
// Size: 0x9e
function function_e33d93c4(*inflictor, *attacker, damage, *flags, meansofdeath, *weapon, *var_fd90b0bb, *vpoint, *vdir, *shitloc, *psoffsettime, *boneindex, *surfacetype) {
    if (self.targetname === "world_at_war_zombie" && surfacetype === "MOD_MELEE") {
        boneindex = 50;
    }
    return boneindex;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 2, eflags: 0x2 linked
// Checksum 0x10aad7c9, Offset: 0xaa48
// Size: 0x21c
function function_626741e8(n_time, var_6325d314) {
    level endon(#"end_game");
    self endon(#"death");
    if (level.var_55fd9380 luielemtext::is_open(self)) {
        level.var_55fd9380 luielemtext::close(self);
    }
    level.var_55fd9380 luielemtext::open(self, 1);
    level.var_55fd9380 luielemtext::set_text(self, #"hash_1747569f8564a727");
    level.var_55fd9380 luielemtext::function_f97e9049(self, 50, 550);
    level.var_55fd9380 luielemtext::set_color(self, 1, 1, 1);
    level.var_55fd9380 luielemtext::set_alpha(self, 1);
    level.var_55fd9380 luielemtext::set_horizontal_alignment(self, 1);
    self thread objective_manager::function_b8278876(n_time, var_6325d314);
    level waittill(#"hash_6c8e9e5de4dcbca", #"hash_67be133ca877da79", #"hash_4b186b35454a7d2b");
    if (isdefined(self)) {
        if (level.var_55fd9380 luielemtext::is_open(self)) {
            level.var_55fd9380 luielemtext::close(self);
        }
        self thread objective_manager::function_a809e69a();
    }
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0x497e9fc1, Offset: 0xac70
// Size: 0x56
function check_player_is_ready_for_ammo(player) {
    if (level.var_e67580 === player && level flag::get(#"hash_480a4ce872938116")) {
        return 0;
    }
    return 1;
}

// Namespace namespace_edb23975/namespace_edb23975
// Params 1, eflags: 0x2 linked
// Checksum 0x19b395d, Offset: 0xacd0
// Size: 0x56
function function_cbcc2ab7(player) {
    if (level.var_e67580 === player && level flag::get(#"hash_480a4ce872938116")) {
        return 0;
    }
    return 1;
}

/#

    // Namespace namespace_edb23975/namespace_edb23975
    // Params 0, eflags: 0x0
    // Checksum 0x6c7e454b, Offset: 0xad30
    // Size: 0x74
    function function_cd7a3de4() {
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&cmd);
    }

    // Namespace namespace_edb23975/namespace_edb23975
    // Params 1, eflags: 0x0
    // Checksum 0xc022e967, Offset: 0xadb0
    // Size: 0x282
    function cmd(cmd) {
        switch (cmd) {
        case #"hash_455d7fe244b8d836":
            a_players = function_a1ef346b();
            foreach (player in a_players) {
                if (player function_fac9c4ef() < 1) {
                    player function_aff8caac(1);
                }
            }
            break;
        case #"hash_6e7195a08bee9603":
            a_players = function_a1ef346b();
            foreach (player in a_players) {
                if (player flag::get(#"hash_6570ebf5a30c93d")) {
                    player flag::clear(#"hash_6570ebf5a30c93d");
                }
            }
            break;
        case #"hash_31d56fb057b35676":
            a_players = function_a1ef346b();
            foreach (player in a_players) {
                if (player flag::get(#"hash_299f96da2a2177b8")) {
                    player flag::clear(#"hash_299f96da2a2177b8");
                }
            }
            break;
        }
    }

#/
