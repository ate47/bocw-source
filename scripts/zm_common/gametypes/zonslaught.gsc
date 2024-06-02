// Atian COD Tools GSC CW decompiler test
#using script_340a2e805e35f7a2;
#using script_336275a0ba841d18;
#using scripts\zm\powerup\zm_powerup_free_perk.gsc;
#using scripts\zm\powerup\zm_powerup_hero_weapon_power.gsc;
#using scripts\zm\powerup\zm_powerup_small_ammo.gsc;
#using scripts\zm\powerup\zm_powerup_full_ammo.gsc;
#using scripts\zm\powerup\zm_powerup_insta_kill.gsc;
#using script_4d1e366b77f0b4b;
#using script_35b8a6927c851193;
#using script_20dc0f45753888c7;
#using script_3e57cc1a9084fdd6;
#using script_3411bb48d41bd3b;
#using script_34ab99a4ca1a43d;
#using script_4e521006b6636566;
#using script_17514fc41e89c54a;
#using script_5544f0d56caa6b36;
#using script_5683260b7a7b1fa3;
#using script_4d04c61f130f8ab1;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_contracts.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_intel.gsc;
#using scripts\zm_common\zm.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_cleanup_mgr.gsc;
#using scripts\zm_common\zm_behavior.gsc;
#using scripts\zm_common\gametypes\globallogic_player.gsc;
#using scripts\zm_common\gametypes\zm_gametype.gsc;
#using scripts\zm_common\zm_fasttravel.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\territory_util.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\struct.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\spawning_shared.gsc;
#using script_335d0650ed05d36d;
#using script_3e196d275a6fb180;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\oob.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using script_165beea08a63a243;

#namespace zonslaught;

// Namespace zonslaught/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xb3a252a9, Offset: 0x4a8
// Size: 0xc24
function event_handler[gametype_init] main(*eventstruct) {
    setclearanceceiling(29);
    level.mapbounds = {#center:(0, 0, 0)};
    level.var_2f5a329e = 1;
    spawning::addsupportedspawnpointtype("tdm");
    println("<unknown string>");
    level.dog_round_count = 0;
    changeadvertisedstatus(0);
    clientfield::register("scriptmover", "" + #"hash_56a6be021662c82e", 1, 2, "int");
    clientfield::register_clientuimodel("hudItems.onslaught.wave_number", 1, 7, "int");
    clientfield::register_clientuimodel("hudItems.onslaught.bosskill_count", 1, 7, "int");
    clientfield::register("scriptmover", "orb_spawn", 1, 1, "int");
    clientfield::register("scriptmover", "bot_claim_fx", 1, 2, "int");
    clientfield::register("actor", "orb_soul_capture_fx", 1, 3, "int");
    clientfield::register("actor", "zombie_aether_spawn_cf", 1, 1, "int");
    level.var_ce3ac5b6 = 1;
    level.var_8de4d059 = util::get_map_name();
    if (level.var_8de4d059 === #"hash_418ef9f1f49298e6") {
        setdvar(#"hkai_pathfinditerationlimit", 3000);
    } else if (level.var_8de4d059 === #"mp_dune") {
        setdvar(#"hkai_pathfinditerationlimit", 11000);
    }
    namespace_51f64aa9::function_2ce126c4();
    level.customspawnlogic = &function_716def93;
    level.var_6c4ec3fc = &function_8af3b312;
    level.var_1f966535 = 4;
    level.var_b20199e0 = &function_b20199e0;
    level.var_8179368e = &function_6398c8cb;
    level.var_b48509f9 = 1;
    switch (level.var_8de4d059) {
    case #"mp_cartel":
        zm_intel::function_88645994(#"zmintel_list_mp_cartel_document_drops");
        break;
    case #"mp_kgb":
        zm_intel::function_88645994(#"zmintel_list_mp_kgb_document_drops");
        break;
    case #"mp_miami":
        zm_intel::function_88645994(#"zmintel_list_mp_miami_document_drops");
        break;
    case #"mp_moscow":
        zm_intel::function_88645994(#"zmintel_list_mp_moscow_document_drops");
        break;
    case #"mp_satellite":
        zm_intel::function_88645994(#"zmintel_list_mp_satellite_document_drops");
        break;
    case #"mp_tank":
        zm_intel::function_88645994(#"zmintel_list_mp_tank_document_drops");
        break;
    case #"mp_tundra":
        zm_intel::function_88645994(#"zmintel_list_mp_tundra_document_drops");
        break;
    case #"mp_nuketown6":
        zm_intel::function_88645994(#"zmintel_list_mp_nuketown_document_drops");
        break;
    case #"mp_mall":
        zm_intel::function_88645994(#"zmintel_list_mp_s1_m_document_drops");
        break;
    case #"mp_raid_rm":
        zm_intel::function_88645994(#"zmintel_list_mp_s1_r_document_drops");
        break;
    case #"mp_express_rm":
        zm_intel::function_88645994(#"zmintel_list_mp_express_rm_document_drops");
        break;
    case #"mp_apocalypse":
        zm_intel::function_88645994(#"zmintel_list_mp_apocalypse_document_drops");
        break;
    case #"hash_418ef9f1f49298e6":
        zm_intel::function_88645994(#"zmintel_list_mp_cliffhanger_document_drops");
        break;
    case #"mp_village_rm":
        zm_intel::function_88645994(#"zmintel_list_mp_village_rm_document_drops");
        break;
    case #"mp_dune":
        zm_intel::function_88645994(#"zmintel_list_mp_dune_document_drops");
        break;
    case #"mp_paintball_rm":
        zm_intel::function_88645994(#"zmintel_list_mp_paintball_document_drops");
        break;
    case #"mp_echelon":
        zm_intel::function_88645994(#"zmintel_list_mp_echelon_document_drops");
        break;
    case #"mp_drivein_rm":
        zm_intel::function_88645994(#"zmintel_list_mp_drivein_rm_document_drops");
        break;
    case #"mp_firebase":
        zm_intel::function_88645994(#"zmintel_list_mp_firebase_document_drops");
        break;
    default:
        break;
    }
    level.var_374c2805 = 1;
    level.aat_in_use = 1;
    level.var_ae22a03 = [#"mp_cartel", #"mp_kgb", #"mp_miami", #"mp_moscow", #"mp_satellite", #"mp_tank", #"mp_tundra", #"mp_nuketown6", #"mp_raid_rm", #"mp_mall", #"mp_apocalypse", #"mp_express_rm", #"hash_418ef9f1f49298e6", #"mp_village_rm", #"mp_dune", #"mp_paintball_rm", #"mp_echelon", #"mp_drivein_rm", #"mp_firebase"];
    level.resurrect_override_spawn = &overridespawn;
    callback::on_bleedout(&on_bleedout);
    level.var_bde3d03 = &function_37d98bb7;
    callback::on_player_damage(&on_player_damage);
    var_bd240cc3 = getentarray("trigger_hurt", "classname");
    foreach (trigger in var_bd240cc3) {
        trigger thread function_d2211917();
    }
    level thread zm_powerups::powerup_round_start();
    level.var_9f01688e = 1;
    zm_gametype::main();
    level flag::set(#"intro_scene_done");
    level.onprecachegametype = &onprecachegametype;
    level.onstartgametype = &onstartgametype;
    level.player_starting_points = 0;
    spawner::add_ai_spawn_function(&function_2c482e69);
    namespace_58949729::function_5a12541e();
    spawner::add_global_spawn_function(level.zombie_team, &namespace_85745671::function_2089690e);
    callback::on_spawned(&on_player_spawn);
    callback::add_callback(#"hash_3b7d3ed9e484ef72", &namespace_51f64aa9::give_match_bonus);
    level thread function_8f3357bd();
    if (level.script === #"mp_firebase") {
        level thread tu21_t9_onslaught_gold_zm_firebase_fixedup();
    }
}

// Namespace zonslaught/zonslaught
// Params 0, eflags: 0x0
// Checksum 0x92f86543, Offset: 0x10d8
// Size: 0x1e0
function tu21_t9_onslaught_gold_zm_firebase_fixedup() {
    if (!level.onlinegame || is_true(level.zm_disable_recording_stats)) {
        return;
    }
    level flag::wait_till("initial_fade_in_complete");
    foreach (player in getplayers()) {
        var_cf5c212a = player stats::get_stat_global("tu21_t9_onslaught_gold_zm_firebase_fixedup");
        if (!is_true(var_cf5c212a) && function_26bd1471()) {
            var_1ff63221 = player zm_stats::function_fd25ef51(#"hash_50dc15187c54967c", #"mp_firebase");
            if (isdefined(var_1ff63221) && var_1ff63221 >= 8) {
                player function_6e4a862f(3, 8);
                player zm_stats::increment_challenge_stat(#"hash_6f05f4cee5d4d81d", undefined, 1);
            }
            player stats::set_stat_global(#"tu21_t9_onslaught_gold_zm_firebase_fixedup", 1);
        }
    }
}

// Namespace zonslaught/zonslaught
// Params 0, eflags: 0x0
// Checksum 0xb8b1de06, Offset: 0x12c0
// Size: 0x200
function function_d2211917() {
    self endon(#"death");
    level flag::wait_till("rounds_started");
    while (true) {
        a_ai = getaiteamarray(level.zombie_team);
        foreach (ai in a_ai) {
            if (isalive(ai) && ai istouching(self)) {
                var_f2174bdd = getclosestpointonnavmesh(level.var_df7b46d1.origin + (0, 0, 8), 128, 64);
                var_f2174bdd = isdefined(var_f2174bdd) ? var_f2174bdd : level.var_df7b46d1.origin + (0, 0, 8);
                playfx(level._effect[#"hash_7a06e7dd7e64b880"], ai.origin);
                playfx(level._effect[#"hash_7a06e7dd7e64b880"], var_f2174bdd);
                ai forceteleport(var_f2174bdd, ai.angles);
            }
            waitframe(1);
        }
        wait(1);
    }
}

// Namespace zonslaught/zonslaught
// Params 0, eflags: 0x0
// Checksum 0xcb7048f0, Offset: 0x14c8
// Size: 0x172
function function_8f3357bd() {
    if (isdefined(level.var_8de4d059)) {
        switch (level.var_8de4d059) {
        case #"mp_mall":
            array::delete_all(getentarray("hide_vent", "targetname"));
            var_4dd3dfa8 = struct::get_array("onslaught_blocker", "targetname");
            foreach (struct in var_4dd3dfa8) {
                var_babbd92e = util::spawn_model("p8_usa_ventilation_duct_hatch_01", struct.origin, struct.angles);
                var_babbd92e solid();
            }
            break;
        default:
            return;
        }
    }
}

// Namespace zonslaught/zonslaught
// Params 0, eflags: 0x1
// Checksum 0x7bb95fe0, Offset: 0x1648
// Size: 0x74
function autoexec function_31a760fa() {
    str_map_name = util::get_map_name();
    if (str_map_name === #"mp_tundra" || str_map_name === #"mp_dune") {
        setgametypesetting(#"hash_3a15393c2e90e121", 1);
    }
}

// Namespace zonslaught/zonslaught
// Params 1, eflags: 0x0
// Checksum 0xf2837f02, Offset: 0x16c8
// Size: 0x1de
function function_37d98bb7(entity) {
    entity endon(#"disconnect");
    level endon(#"game_ended");
    if (is_true(entity.var_9d5d92ac)) {
        return;
    }
    entity.var_9d5d92ac = 1;
    entity zm_laststand::function_3d685b5f(0);
    entity val::set(#"oob", "takedamage", 1);
    entity.var_39c78617 = 1;
    entity notify(#"instakill_player");
    if (is_true(entity.laststand)) {
        waitframe(4);
        if (isplayer(entity)) {
            entity notify(#"bled_out");
            entity globallogic_player::function_b2873ebe();
            level notify(#"player_bled_out", {#player:entity});
            entity callback::callback(#"on_player_bleedout");
            entity zm_laststand::bleed_out();
        }
    } else {
        entity dodamage(entity.health + 10000, entity.origin);
    }
    if (isdefined(entity)) {
        entity.var_9d5d92ac = undefined;
    }
}

// Namespace zonslaught/zonslaught
// Params 1, eflags: 0x0
// Checksum 0x17c65f00, Offset: 0x18b0
// Size: 0x7c
function on_player_damage(params) {
    if (params.eattacker.classname === "trigger_hurt" && isdefined(params.eattacker.dmg) && params.eattacker.dmg >= self.health) {
        level thread function_37d98bb7(self);
    }
}

// Namespace zonslaught/zonslaught
// Params 0, eflags: 0x0
// Checksum 0xb896ac66, Offset: 0x1938
// Size: 0x228
function on_bleedout() {
    self endon(#"disconnect");
    level endon(#"game_ended", #"end_game");
    var_887826bc = function_a1ef346b();
    var_eccdd51c = getplayers();
    if (var_eccdd51c.size >= 2 && var_887826bc.size >= 1) {
        level waittill(#"boss_killed");
        self.oobdisabled = 0;
        var_d1803e09 = level.var_df7b46d1.origin;
        var_8c27fbb7 = getclosestpointonnavmesh(var_d1803e09, 128, 32);
        if (isdefined(var_8c27fbb7)) {
            self.resurrect_origin = var_8c27fbb7;
        } else {
            players = function_a1ef346b();
            foreach (player in players) {
                if (player === self) {
                    continue;
                }
                var_8c27fbb7 = getclosestpointonnavmesh(player.origin, 128, 32);
                if (isdefined(var_8c27fbb7)) {
                    self.resurrect_origin = var_8c27fbb7;
                    self.resurrect_angles = player.angles;
                }
            }
        }
        self thread function_3fd71c32();
        self thread [[ level.spawnclient ]](0);
    }
}

// Namespace zonslaught/zonslaught
// Params 0, eflags: 0x0
// Checksum 0x44b3b3db, Offset: 0x1b68
// Size: 0x238
function function_6398c8cb() {
    var_d1803e09 = level.var_df7b46d1.origin;
    if (util::get_map_name() == #"mp_firebase") {
        var_cd36710d = 64;
    } else {
        var_cd36710d = 32;
    }
    var_8c27fbb7 = getclosestpointonnavmesh(var_d1803e09, 128, var_cd36710d);
    var_e2f41b0a = {#origin:self.resurrect_origin, #angles:self.resurrect_angles};
    if (isdefined(var_8c27fbb7)) {
        self.resurrect_origin = var_8c27fbb7;
        var_e2f41b0a = {#origin:var_8c27fbb7, #angles:self.resurrect_angles};
        return var_e2f41b0a;
    }
    players = function_a1ef346b();
    if (players.size === 1) {
        return var_e2f41b0a;
    } else {
        foreach (player in players) {
            var_8c27fbb7 = getclosestpointonnavmesh(player.origin, 64, 32);
            if (isdefined(var_8c27fbb7)) {
                self.resurrect_origin = var_8c27fbb7;
                self.resurrect_angles = player.angles;
                var_e2f41b0a = {#origin:var_8c27fbb7, #angles:player.angles};
                return var_e2f41b0a;
            }
        }
    }
    return var_e2f41b0a;
}

// Namespace zonslaught/zonslaught
// Params 0, eflags: 0x0
// Checksum 0x39700fe2, Offset: 0x1da8
// Size: 0x144
function function_3fd71c32() {
    self endon(#"disconnect");
    level endon(#"game_ended");
    self waittill(#"spawned");
    if (self.currentspectatingclient > -1) {
        self.var_f4710251 = self.currentspectatingclient;
    }
    self val::set("zm_laststand", "allowdeath", 0);
    self util::delay(2, "death", &val::reset, "zm_laststand", "allowdeath");
    self util::delay(2, "death", &val::reset, "laststand", "ignoreme");
    self.laststand = undefined;
    self thread val::set_for_time(3, #"player_spawn_protection", "ignoreme");
}

// Namespace zonslaught/zonslaught
// Params 1, eflags: 0x0
// Checksum 0x1f586172, Offset: 0x1ef8
// Size: 0x2c
function function_2c482e69(*params) {
    self.var_1b2af7dc = 1;
    self thread function_acafdd66();
}

// Namespace zonslaught/zonslaught
// Params 0, eflags: 0x0
// Checksum 0x3d51fd1f, Offset: 0x1f30
// Size: 0x4c
function function_acafdd66() {
    self endon(#"death");
    while (true) {
        self waittill(#"bad_path");
        self.var_4fe4e626 = 1;
        wait(0.5);
    }
}

// Namespace zonslaught/zonslaught
// Params 1, eflags: 0x0
// Checksum 0x11892e9f, Offset: 0x1f88
// Size: 0x730
function overridespawn(*ispredictedspawn) {
    self.oobdisabled = 0;
    if (isdefined(level.var_4d75ad83)) {
        if (!isdefined(self.resurrect_origin)) {
            self.resurrect_origin = level.var_4d75ad83.origin;
            self.resurrect_angles = level.var_4d75ad83.angles;
        }
        return true;
    } else if (isdefined(level.var_2492c7f)) {
        level.var_2492c7f.used = 1;
        if (!isdefined(self.resurrect_origin)) {
            self.resurrect_origin = level.var_2492c7f.origin;
            self.resurrect_angles = level.var_2492c7f.angles;
        }
    }
    checkdist = 800;
    var_273a84a9 = [];
    if (!isdefined(var_273a84a9)) {
        var_273a84a9 = [];
    } else if (!isarray(var_273a84a9)) {
        var_273a84a9 = array(var_273a84a9);
    }
    var_273a84a9[var_273a84a9.size] = "war";
    if (!isdefined(var_273a84a9)) {
        var_273a84a9 = [];
    } else if (!isarray(var_273a84a9)) {
        var_273a84a9 = array(var_273a84a9);
    }
    var_273a84a9[var_273a84a9.size] = "war_zone_0";
    if (!isdefined(var_273a84a9)) {
        var_273a84a9 = [];
    } else if (!isarray(var_273a84a9)) {
        var_273a84a9 = array(var_273a84a9);
    }
    var_273a84a9[var_273a84a9.size] = "war_zone_1";
    if (!isdefined(var_273a84a9)) {
        var_273a84a9 = [];
    } else if (!isarray(var_273a84a9)) {
        var_273a84a9 = array(var_273a84a9);
    }
    var_273a84a9[var_273a84a9.size] = "war_zone_2";
    if (!isdefined(var_273a84a9)) {
        var_273a84a9 = [];
    } else if (!isarray(var_273a84a9)) {
        var_273a84a9 = array(var_273a84a9);
    }
    var_273a84a9[var_273a84a9.size] = "war_zone_3";
    if (!isdefined(var_273a84a9)) {
        var_273a84a9 = [];
    } else if (!isarray(var_273a84a9)) {
        var_273a84a9 = array(var_273a84a9);
    }
    var_273a84a9[var_273a84a9.size] = "war_zone_4";
    if (!isdefined(var_273a84a9)) {
        var_273a84a9 = [];
    } else if (!isarray(var_273a84a9)) {
        var_273a84a9 = array(var_273a84a9);
    }
    var_273a84a9[var_273a84a9.size] = "tdm";
    if (!isdefined(var_273a84a9)) {
        var_273a84a9 = [];
    } else if (!isarray(var_273a84a9)) {
        var_273a84a9 = array(var_273a84a9);
    }
    var_273a84a9[var_273a84a9.size] = "ctf";
    var_8fb1964e = function_d400d613(#"mp_spawn_point", var_273a84a9);
    if (util::get_map_name() === #"mp_tundra") {
        var_7e51d277 = randomint(5);
        switch (var_7e51d277) {
        case 0:
            spawns = var_8fb1964e[#"war"];
            break;
        case 1:
            spawns = var_8fb1964e[#"war_zone_0"];
            break;
        case 2:
            spawns = var_8fb1964e[#"war_zone_1"];
            break;
        case 3:
            spawns = var_8fb1964e[#"war_zone_2"];
            break;
        case 4:
            spawns = var_8fb1964e[#"war_zone_3"];
            break;
        case 5:
            spawns = var_8fb1964e[#"war_zone_4"];
            break;
        }
        if (!isdefined(spawns)) {
            spawns = var_8fb1964e[#"tdm"];
        }
    } else {
        spawns = var_8fb1964e[#"tdm"];
    }
    if (!isdefined(spawns)) {
        spawns = var_8fb1964e[#"ctf"];
    }
    var_8e971f37 = spawns[randomint(spawns.size)];
    var_8e971f37.used = 1;
    var_d16776ab = 1000000;
    foreach (spawnpt in spawns) {
        if (is_true(spawnpt.used)) {
            continue;
        }
        var_b3dbfd56 = spawnpt.origin;
        distsq = distancesquared(var_b3dbfd56, var_8e971f37.origin);
        if (distsq < var_d16776ab) {
            var_d16776ab = distsq;
            level.var_2492c7f = spawnpt;
        }
        if (distsq < checkdist * checkdist) {
            level.var_4d75ad83 = spawnpt;
            level.var_4d75ad83.used = 1;
            break;
        }
    }
    if (!isdefined(self.resurrect_origin)) {
        self.resurrect_origin = var_8e971f37.origin;
        self.resurrect_angles = var_8e971f37.angles;
    }
    level.var_8a579fdb = var_8e971f37;
    return true;
}

// Namespace zonslaught/zonslaught
// Params 1, eflags: 0x0
// Checksum 0x5be6774d, Offset: 0x26c0
// Size: 0x16c
function function_b20199e0(var_57ade5da) {
    rand = randomint(100);
    if (rand <= 10) {
        self namespace_65181344::function_fd87c780(#"special_ammo_drop", 1, 2);
    }
    if (var_57ade5da === #"hash_3ff43755c44e6d3d" || var_57ade5da === #"hash_4a900af3fc47cdd5" || var_57ade5da === #"hash_60d7855358ceb53d") {
        var_de297ab3 = namespace_58949729::function_257d7203(#"elite");
        if (isdefined(var_de297ab3)) {
            dropstruct = {#origin:self.origin, #angles:self.angles + (0, 180, 0), #var_738dfc81:self.var_738dfc81};
            a_items = dropstruct namespace_65181344::function_fd87c780(var_de297ab3, 20, 2);
            return a_items;
        }
    }
}

// Namespace zonslaught/zonslaught
// Params 0, eflags: 0x0
// Checksum 0xf6895103, Offset: 0x2838
// Size: 0x14
function function_8af3b312() {
    spawning::addspawns();
}

// Namespace zonslaught/zonslaught
// Params 1, eflags: 0x0
// Checksum 0x8d2cd234, Offset: 0x2858
// Size: 0x24
function function_716def93(predictedspawn) {
    self spawning::onspawnplayer(predictedspawn);
}

// Namespace zonslaught/zonslaught
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x2888
// Size: 0x4
function onprecachegametype() {
    
}

// Namespace zonslaught/zonslaught
// Params 1, eflags: 0x0
// Checksum 0xe32172c1, Offset: 0x2898
// Size: 0xb4
function function_6878d990(ai_zombie) {
    ai_zombie endon(#"death");
    if (isdefined(level.var_df7b46d1)) {
        var_2a576940 = getclosestpointonnavmesh(level.var_df7b46d1.origin, 64, 64);
        if (isdefined(var_2a576940)) {
            ai_zombie setgoal(var_2a576940, 0, 32);
            return;
        }
        ai_zombie setgoal(ai_zombie.origin, 0, 32);
    }
}

// Namespace zonslaught/zonslaught
// Params 0, eflags: 0x0
// Checksum 0x2ae4cea9, Offset: 0x2958
// Size: 0x11c
function function_a755769f() {
    var_884f5b32 = 1;
    foreach (player in function_a1ef346b()) {
        n_height_diff = player.origin[2] - self.origin[2];
        if (abs(n_height_diff) < 750 && distancesquared(player.origin, self.origin) < 2250000) {
            var_884f5b32 = 0;
            break;
        }
    }
    return var_884f5b32;
}

// Namespace zonslaught/zonslaught
// Params 0, eflags: 0x0
// Checksum 0x68abbeca, Offset: 0x2a80
// Size: 0x45c
function onstartgametype() {
    zm_behavior::preinit();
    if (util::get_game_type() === #"hash_75aa82b3ae89f54e" || level.script === #"mp_dune") {
        zm_cleanup::preinit();
        zm_cleanup::postinit();
        if (level.script === #"mp_dune") {
            level.var_751675ab = &function_a755769f;
        }
    }
    zm_spawner::init();
    zm_behavior::postinit();
    spawning::function_7a87efaa();
    zm_powerups::powerup_round_start();
    if (isdefined(level.zombie_powerups[#"small_ammo"])) {
        level.zombie_powerups[#"small_ammo"].only_affects_grabber = 0;
    }
    if (isdefined(level.zombie_powerups[#"random_weapon"])) {
        level.zombie_powerups[#"random_weapon"].only_affects_grabber = 0;
    }
    if (isdefined(level.zombie_powerups[#"free_perk"])) {
        level.zombie_powerups[#"free_perk"].only_affects_grabber = 0;
        zm_powerups::powerup_remove_from_regular_drops("free_perk");
    }
    if (isdefined(level.zombie_powerups[#"full_ammo"])) {
        level.zombie_powerups[#"full_ammo"].only_affects_grabber = 0;
        zm_powerups::powerup_remove_from_regular_drops("full_ammo");
    }
    if (isdefined(level.zombie_powerups[#"insta_kill"])) {
        level.zombie_powerups[#"insta_kill"].only_affects_grabber = 0;
    }
    if (isdefined(level.zombie_powerups[#"hero_weapon_power"])) {
        level.zombie_powerups[#"hero_weapon_power"].only_affects_grabber = 0;
    }
    if (isdefined(level.zombie_powerups[#"bonfire_sale"])) {
        zm_powerups::powerup_remove_from_regular_drops("bonefire_sale");
    }
    level.spawnmins = (0, 0, 0);
    level.spawnmaxs = (0, 0, 0);
    structs = struct::get_array("player_respawn_point", "targetname");
    foreach (struct in structs) {
        level.spawnmins = math::expand_mins(level.spawnmins, struct.origin);
        level.spawnmaxs = math::expand_maxs(level.spawnmaxs, struct.origin);
    }
    level.mapcenter = math::find_box_center(level.spawnmins, level.spawnmaxs);
    setmapcenter(level.mapcenter);
    level.do_randomized_zigzag_path = 0;
    level.no_target_override = &function_6878d990;
    level.var_b813f909 = &function_6878d990;
}

// Namespace zonslaught/zonslaught
// Params 0, eflags: 0x0
// Checksum 0x321017d3, Offset: 0x2ee8
// Size: 0x8c
function on_player_spawn() {
    self.specialty = self getloadoutperks(0);
    self zm::register_perks();
    self.oobdisabled = 0;
    self.var_f22c83f5 = 1;
    self.var_d66589da = 1;
    self.var_5d4c5daf = 0;
    self val::reset(#"oob", "takedamage");
}

// Namespace zonslaught/zonslaught
// Params 2, eflags: 0x4
// Checksum 0xaf584750, Offset: 0x2f80
// Size: 0x4c
function private function_6e4a862f(medalindex, var_c0e8e1e0) {
    if (isdefined(medalindex) && isdefined(var_c0e8e1e0)) {
        self luinotifyevent(#"hash_68afc2d59b92c95c", 2, medalindex, var_c0e8e1e0);
    }
}

// Namespace zonslaught/zonslaught
// Params 0, eflags: 0x0
// Checksum 0x217387b4, Offset: 0x2fd8
// Size: 0x5a
function function_26bd1471() {
    if (util::get_game_type() === #"zonslaught" || util::get_game_type() === #"hash_35d5e49c19d9cf09") {
        return true;
    }
    return false;
}

// Namespace zonslaught/zonslaught
// Params 1, eflags: 0x0
// Checksum 0xdb5d22d6, Offset: 0x3040
// Size: 0x166a
function function_e88957df(var_a0168ed5 = 0) {
    var_9b7bd0e8 = level.var_9b7bd0e8;
    if (util::get_game_type() === #"hash_125fc0c0065c7dea") {
        var_9b7bd0e8 = floor(var_9b7bd0e8 / 3);
        if (var_9b7bd0e8 < 1) {
            var_9b7bd0e8 = 1;
        }
    }
    if (function_26bd1471()) {
        var_77acb6b1 = self zm_stats::function_de5c64c9(#"hash_50dc15187c54967c", var_9b7bd0e8);
    }
    if (getdvar(#"hash_72211987f2c0143c", 0) == 1 && is_true(var_a0168ed5)) {
        self zm_stats::increment_challenge_stat(#"hash_40c259a28bc275ba", undefined, 1);
    }
    self zm_stats::increment_global_stat("onslaught_total_elites_eliminated");
    var_8b708270 = self zm_stats::get_global_stat("onslaught_total_elites_eliminated");
    var_7c02f666 = 0;
    foreach (map in level.var_ae22a03) {
        if (self zm_stats::function_fd25ef51(#"hash_50dc15187c54967c", map) > 0) {
            var_7c02f666++;
        }
    }
    if (isdefined(var_7c02f666) && var_7c02f666 >= 7) {
        self zm_utility::function_659819fa(#"hash_3c8fbebec2f463f5");
    }
    if (var_9b7bd0e8 === 3 && !is_true(self.var_7ba8b439)) {
        self.var_7ba8b439 = 1;
        if (function_26bd1471()) {
            function_6e4a862f(1, 3);
            if (getdvar(#"hash_75f206f6fb3c29bb", 0) == 1) {
                self zm_stats::increment_challenge_stat(#"hash_12ebd02003c58809", undefined, 1);
            }
            if (getdvar(#"hash_74029e8a77818e59", 0) == 1) {
                self zm_stats::increment_challenge_stat(#"hash_203f53d43e7b5525", undefined, 1);
            }
        }
        if (is_true(var_77acb6b1)) {
            switch (level.var_8de4d059) {
            case #"mp_cartel":
                self zm_stats::increment_challenge_stat(#"hash_768a330ec53898c9", undefined, 1);
                break;
            case #"mp_kgb":
                self zm_stats::increment_challenge_stat(#"hash_2adda7cd2b43ffaa", undefined, 1);
                break;
            case #"mp_miami":
                self zm_stats::increment_challenge_stat(#"hash_77fdc1340a34667d", undefined, 1);
                break;
            case #"mp_moscow":
                self zm_stats::increment_challenge_stat(#"hash_6dee1f7a2cf24f0a", undefined, 1);
                break;
            case #"mp_satellite":
                self zm_stats::increment_challenge_stat(#"hash_174eca25428cfdd3", undefined, 1);
                break;
            case #"mp_tank":
                self zm_stats::increment_challenge_stat(#"hash_66ee2888bd7ddb12", undefined, 1);
                break;
            case #"mp_tundra":
                self zm_stats::increment_challenge_stat(#"hash_3aecbf73ceecadaa", undefined, 1);
                break;
            case #"mp_nuketown6":
                self zm_stats::increment_challenge_stat(#"hash_39310ccdb302c15b", undefined, 1);
                break;
            case #"mp_mall":
                self zm_stats::increment_challenge_stat(#"hash_49d075d62f45e274", undefined, 1);
                break;
            case #"mp_raid_rm":
                self zm_stats::increment_challenge_stat(#"hash_7b7db9592bf8ce56", undefined, 1);
                break;
            case #"mp_express_rm":
                self zm_stats::increment_challenge_stat(#"hash_7d8ee900ddefa146", undefined, 1);
                break;
            case #"mp_apocalypse":
                self zm_stats::increment_challenge_stat(#"hash_666f9063a85fcd9", undefined, 1);
                break;
            case #"hash_418ef9f1f49298e6":
                self zm_stats::increment_challenge_stat(#"hash_e128de9fe167bdf", undefined, 1);
                break;
            case #"mp_village_rm":
                self zm_stats::increment_challenge_stat(#"hash_a57523eeb5e616e", undefined, 1);
                break;
            case #"mp_dune":
                self zm_stats::increment_challenge_stat(#"hash_516a5f0ca98a6fc4", undefined, 1);
                break;
            case #"mp_paintball_rm":
                self zm_stats::increment_challenge_stat(#"hash_721e9724b59755a7", undefined, 1);
                break;
            case #"mp_echelon":
                self zm_stats::increment_challenge_stat(#"hash_22670e78a2fecea", undefined, 1);
                break;
            case #"mp_drivein_rm":
                self zm_stats::increment_challenge_stat(#"hash_ca318f6e8260fe1", undefined, 1);
                break;
            case #"mp_firebase":
                self zm_stats::increment_challenge_stat(#"hash_2d74918796164e23", undefined, 1);
                break;
            case #"mp_sm_finance":
                self zm_stats::increment_challenge_stat(#"hash_6b4fded9783baabb", undefined, 1);
                break;
            case #"mp_sm_central":
                self zm_stats::increment_challenge_stat(#"hash_2643c82ae6e4649c", undefined, 1);
                break;
            case #"mp_sm_berlin_tunnel":
                self zm_stats::increment_challenge_stat(#"hash_740fbcb881407c22", undefined, 1);
                break;
            case #"mp_sm_game_show":
                self zm_stats::increment_challenge_stat(#"hash_2509e6ed81b9096b", undefined, 1);
                break;
            default:
                assertmsg("<unknown string>");
                return;
            }
        }
        return;
    }
    if (var_9b7bd0e8 === 5 && !is_true(self.var_ba29dd0)) {
        self.var_ba29dd0 = 1;
        if (function_26bd1471()) {
            function_6e4a862f(2, 5);
            if (getdvar(#"hash_75f206f6fb3c29bb", 0) == 1) {
                self zm_stats::increment_challenge_stat(#"hash_12ebd02003c58809", undefined, 1);
            }
            if (getdvar(#"hash_74029e8a77818e59", 0) == 1) {
                self zm_stats::increment_challenge_stat(#"hash_203f53d43e7b5525", undefined, 1);
            }
        }
        if (is_true(var_77acb6b1)) {
            switch (level.var_8de4d059) {
            case #"mp_cartel":
                self zm_stats::increment_challenge_stat(#"hash_e7080a2e314b310", undefined, 1);
                break;
            case #"mp_kgb":
                self zm_stats::increment_challenge_stat(#"hash_1404f61a3c181b21", undefined, 1);
                break;
            case #"mp_miami":
                self zm_stats::increment_challenge_stat(#"hash_78912627d043be", undefined, 1);
                break;
            case #"mp_moscow":
                self zm_stats::increment_challenge_stat(#"hash_5e2d0a6005f8bb7f", undefined, 1);
                break;
            case #"mp_satellite":
                self zm_stats::increment_challenge_stat(#"hash_37ff3a21d194b40c", undefined, 1);
                break;
            case #"mp_tank":
                self zm_stats::increment_challenge_stat(#"hash_7e1412cacb1d2d6b", undefined, 1);
                break;
            case #"mp_tundra":
                self zm_stats::increment_challenge_stat(#"hash_149f5861932281df", undefined, 1);
                break;
            case #"mp_nuketown6":
                self zm_stats::increment_challenge_stat(#"hash_1328a9a4fc66d61a", undefined, 1);
                break;
            case #"mp_mall":
                self zm_stats::increment_challenge_stat(#"hash_6cde4583797a1e4d", undefined, 1);
                break;
            case #"mp_raid_rm":
                self zm_stats::increment_challenge_stat(#"hash_677d29dcb0c038a7", undefined, 1);
                break;
            case #"mp_express_rm":
                self zm_stats::increment_challenge_stat(#"hash_4f8679e10c170ac9", undefined, 1);
                break;
            case #"mp_apocalypse":
                self zm_stats::increment_challenge_stat(#"hash_61b15880248761c8", undefined, 1);
                break;
            case #"hash_418ef9f1f49298e6":
                self zm_stats::increment_challenge_stat(#"hash_63ea17009520197c", undefined, 1);
                break;
            case #"mp_village_rm":
                self zm_stats::increment_challenge_stat(#"hash_4fe158e23ff60c71", undefined, 1);
                break;
            case #"mp_dune":
                self zm_stats::increment_challenge_stat(#"hash_6a767447a03e9b21", undefined, 1);
                break;
            case #"mp_paintball_rm":
                self zm_stats::increment_challenge_stat(#"hash_555ecf047c4d0aa4", undefined, 1);
                break;
            case #"mp_echelon":
                self zm_stats::increment_challenge_stat(#"hash_503b908f2a98419d", undefined, 1);
                break;
            case #"mp_drivein_rm":
                self zm_stats::increment_challenge_stat(#"hash_45b12633e87eb866", undefined, 1);
                break;
            case #"mp_firebase":
                self zm_stats::increment_challenge_stat(#"hash_56ed77cdf639564e", undefined, 1);
                break;
            case #"mp_sm_finance":
                self zm_stats::increment_challenge_stat(#"hash_5f78704720a048b2", undefined, 1);
                break;
            case #"mp_sm_central":
                self zm_stats::increment_challenge_stat(#"hash_2e23bde8d7a24fc5", undefined, 1);
                break;
            case #"mp_sm_berlin_tunnel":
                self zm_stats::increment_challenge_stat(#"hash_2c19b26a825c1467", undefined, 1);
                break;
            case #"mp_sm_game_show":
                self zm_stats::increment_challenge_stat(#"hash_1c907a3cbd04a346", undefined, 1);
                break;
            default:
                assertmsg("<unknown string>");
                return;
            }
        }
        return;
    }
    if (var_9b7bd0e8 === 8 && !is_true(self.var_b9cbff40)) {
        self.var_b9cbff40 = 1;
        if (function_26bd1471()) {
            function_6e4a862f(3, 8);
            if (getdvar(#"hash_75f206f6fb3c29bb", 0) == 1) {
                self zm_stats::increment_challenge_stat(#"hash_12ebd02003c58809", undefined, 1);
            }
            if (getdvar(#"hash_74029e8a77818e59", 0) == 1) {
                self zm_stats::increment_challenge_stat(#"hash_203f53d43e7b5525", undefined, 1);
            }
            self zm_stats::increment_global_stat(#"hash_926b4857266e7a2");
            var_d9070a37 = self zm_stats::get_global_stat(#"hash_926b4857266e7a2");
            if (isdefined(var_d9070a37) && var_d9070a37 >= 7) {
                self zm_utility::function_659819fa(#"hash_6703984223a2809c");
            }
        }
        if (is_true(var_77acb6b1)) {
            switch (level.var_8de4d059) {
            case #"mp_cartel":
                self zm_stats::increment_challenge_stat(#"hash_43c2b3a0dfc9bab3", undefined, 1);
                break;
            case #"mp_kgb":
                self zm_stats::increment_challenge_stat(#"hash_5014636a724f5c14", undefined, 1);
                break;
            case #"mp_miami":
                self zm_stats::increment_challenge_stat(#"hash_15a7d102d2edb893", undefined, 1);
                break;
            case #"mp_moscow":
                self zm_stats::increment_challenge_stat(#"hash_567e99c4a5fb9fc8", undefined, 1);
                break;
            case #"mp_satellite":
                self zm_stats::increment_challenge_stat(#"hash_40199f1bfb79141d", undefined, 1);
                break;
            case #"mp_tank":
                self zm_stats::increment_challenge_stat(#"hash_525fc5df1c43afe4", undefined, 1);
                break;
            case #"mp_tundra":
                self zm_stats::increment_challenge_stat(#"hash_4fb345ddd49a654c", undefined, 1);
                break;
            case #"mp_nuketown6":
                self zm_stats::increment_challenge_stat(#"hash_17c6d5faa49457e1", undefined, 1);
                break;
            case #"mp_mall":
                self zm_stats::increment_challenge_stat(#"hash_80f17b0b548e17e", undefined, 1);
                break;
            case #"mp_raid_rm":
                self zm_stats::increment_challenge_stat(#"hash_65ed7b0fe5ddfe4c", undefined, 1);
                break;
            case #"mp_express_rm":
                self zm_stats::increment_challenge_stat(#"hash_54df583b05e784c0", undefined, 1);
                break;
            case #"mp_apocalypse":
                self zm_stats::increment_challenge_stat(#"hash_1ada6297a317cb2f", undefined, 1);
                break;
            case #"hash_418ef9f1f49298e6":
                self zm_stats::increment_challenge_stat(#"hash_690bf214175428d", undefined, 1);
                break;
            case #"mp_village_rm":
                self zm_stats::increment_challenge_stat(#"hash_138e156dd57f9824", undefined, 1);
                break;
            case #"mp_dune":
                self zm_stats::increment_challenge_stat(#"hash_3cdbf06308503032", undefined, 1);
                break;
            case #"mp_paintball_rm":
                self zm_stats::increment_challenge_stat(#"hash_203003e51c5621d", undefined, 1);
                break;
            case #"mp_echelon":
                self zm_stats::increment_challenge_stat(#"hash_43ea4e7159b99b9c", undefined, 1);
                break;
            case #"mp_drivein_rm":
                self zm_stats::increment_challenge_stat(#"hash_5af7140c7463d733", undefined, 1);
                break;
            case #"mp_firebase":
                self zm_stats::increment_challenge_stat(#"hash_6f05f4cee5d4d81d", undefined, 1);
                break;
            case #"mp_sm_finance":
                self zm_stats::increment_challenge_stat(#"hash_72b597c540b86d8d", undefined, 1);
                break;
            case #"mp_sm_central":
                self zm_stats::increment_challenge_stat(#"hash_7b4e9ebeabbe183a", undefined, 1);
                break;
            case #"mp_sm_berlin_tunnel":
                self zm_stats::increment_challenge_stat(#"hash_4b9152a0994640e4", undefined, 1);
                break;
            case #"mp_sm_game_show":
                self zm_stats::increment_challenge_stat(#"hash_41333e39d398c7e1", undefined, 1);
                break;
            default:
                assertmsg("<unknown string>");
                return;
            }
        }
    }
}

// Namespace zonslaught/zonslaught
// Params 2, eflags: 0x0
// Checksum 0xb8f58116, Offset: 0x46b8
// Size: 0x21e
function function_d400d613(targetname, typesarray) {
    returnarray = [];
    rawspawns = struct::get_array(targetname, "targetname");
    rawspawns = spawning::function_b404fc61(rawspawns);
    foreach (spawn in rawspawns) {
        foreach (supportedspawntype in typesarray) {
            if (!function_82ca1565(spawn, supportedspawntype)) {
                continue;
            }
            if (oob::chr_party(spawn.origin) && territory::is_inside(spawn.origin)) {
                break;
            }
            if (!isdefined(returnarray[supportedspawntype])) {
                returnarray[supportedspawntype] = [];
            }
            if (!isdefined(returnarray[supportedspawntype])) {
                returnarray[supportedspawntype] = [];
            } else if (!isarray(returnarray[supportedspawntype])) {
                returnarray[supportedspawntype] = array(returnarray[supportedspawntype]);
            }
            returnarray[supportedspawntype][returnarray[supportedspawntype].size] = spawn;
        }
    }
    return returnarray;
}

// Namespace zonslaught/zonslaught
// Params 2, eflags: 0x0
// Checksum 0x8e866e2c, Offset: 0x48e0
// Size: 0x2c4
function function_82ca1565(spawnpoint, gametype) {
    switch (gametype) {
    case #"ctf":
        return (isdefined(spawnpoint.ctf) && spawnpoint.ctf);
    case #"tdm":
        return (isdefined(spawnpoint.tdm) && spawnpoint.tdm);
    case #"war":
        return is_true(spawnpoint.war);
    case #"war_zone_0":
        return is_true(spawnpoint.war_zone_0);
    case #"war_zone_1":
        return is_true(spawnpoint.war_zone_1);
    case #"war_zone_2":
        return is_true(spawnpoint.war_zone_2);
    case #"war_zone_3":
        return is_true(spawnpoint.war_zone_3);
    case #"war_zone_4":
        return is_true(spawnpoint.war_zone_4);
    case #"hash_35b3b60f0a291417":
        return is_true(spawnpoint.var_3cb82e5e);
    case #"hash_450dd6aacc69e524":
        return is_true(spawnpoint.var_d8e690f8);
    case #"hash_42f07692f7d48364":
        return is_true(spawnpoint.var_3d72e6da);
    default:
        assertmsg("<unknown string>" + gametype + "<unknown string>" + spawnpoint.origin[0] + "<unknown string>" + spawnpoint.origin[1] + "<unknown string>" + spawnpoint.origin[2]);
        break;
    }
    return 0;
}

