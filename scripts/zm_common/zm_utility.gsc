// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_server_throttle.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_round_logic.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_power.gsc;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using scripts\zm_common\zm_maptable.gsc;
#using scripts\zm_common\zm_magicbox.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\zm_common\zm_customgame.gsc;
#using scripts\zm_common\zm_cleanup_mgr.gsc;
#using scripts\zm_common\zm_characters.gsc;
#using scripts\zm_common\zm_camos.gsc;
#using scripts\zm_common\zm_bgb.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\zm_ai_faller.gsc;
#using scripts\zm_common\zm.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\core_common\throttle_shared.gsc;
#using scripts\core_common\ai\zombie_death.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\abilities\ability_util.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\hud_message_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\battletracks.gsc;
#using scripts\core_common\array_shared.gsc;
#using script_2c5daa95f8fec03c;
#using scripts\core_common\struct.gsc;

#namespace zm_utility;

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x5
// Checksum 0x63a00bb9, Offset: 0xa10
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_utility", &preinit, &postinit, undefined, undefined);
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x6 linked
// Checksum 0x5d0d380a, Offset: 0xa68
// Size: 0x384
function private preinit() {
    clientfield::register_clientuimodel("hudItems.armorType", 1, 2, "int", 0);
    clientfield::register_clientuimodel("hudItems.armorPercent", 1, 7, "float", 0);
    clientfield::register_clientuimodel("hudItems.scrap", 1, 16, "int", 0);
    clientfield::register_clientuimodel("hudItems.rareScrap", 1, 16, "int", 0);
    clientfield::register_clientuimodel("pap_current", 1, 2, "int", 0);
    clientfield::register("toplayer", "zm_zone_out_of_bounds", 1, 1, "int");
    clientfield::register("actor", "flame_corpse_fx", 1, 1, "int");
    clientfield::register("scriptmover", "model_rarity_rob", 1, 3, "int");
    clientfield::register("scriptmover", "set_compass_icon", 1, 1, "int");
    clientfield::register("scriptmover", "force_stream", 1, 1, "int");
    level thread function_725e99fb();
    for (i = 0; i < 5; i++) {
        clientfield::function_5b7d846d("PlayerList.client" + i + ".playerIsDowned", 1, 1, "int");
        clientfield::function_5b7d846d("PlayerList.client" + i + ".self_revives", 1, 8, "int");
    }
    level.var_e63703cd = [];
    level.var_49f8cef4 = &function_bc5a54a8;
    callback::on_connect(&function_3ba26955);
    callback::on_disconnect(&on_disconnect);
    /#
        util::init_dvar(#"hash_26af2f9714c95db1", 0, &function_452938ed);
    #/
    if (!isdefined(level.var_75b29eed)) {
        level.var_75b29eed = new class_c6c0e94();
        [[ level.var_75b29eed ]]->initialize(#"hash_14845cc22a76cc27", 10, 0.2);
    }
    level.var_a2ed0864 = &get_round_number;
    level.var_8f1e0b55 = &function_ffc279;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0xdf8
// Size: 0x4
function private postinit() {
    
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x9e3aa4f3, Offset: 0xe08
// Size: 0x1c
function init_utility() {
    level thread check_solo_status();
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xb8404b4a, Offset: 0xe30
// Size: 0x72
function is_classic() {
    if (!isdefined(level.var_8d156cf3)) {
        level.var_8d156cf3 = util::get_game_type() == #"zclassic" || util::get_game_type() == #"zholiday";
    }
    return level.var_8d156cf3;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x55550cd0, Offset: 0xeb0
// Size: 0x4a
function is_survival() {
    if (!isdefined(level.var_50d2a17f)) {
        level.var_50d2a17f = util::get_game_type() == #"zsurvival";
    }
    return level.var_50d2a17f;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x871d6c1d, Offset: 0xf08
// Size: 0x6a
function function_c200446c() {
    if (!isdefined(level.var_e9ff2970)) {
        level.var_e9ff2970 = util::get_game_type() == #"zonslaught" || is_true(level.var_ce3ac5b6);
    }
    return level.var_e9ff2970;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x5fe131cf, Offset: 0xf80
// Size: 0x4a
function is_standard() {
    if (!isdefined(level.var_9bd33c61)) {
        level.var_9bd33c61 = util::get_game_type() == #"zstandard";
    }
    return level.var_9bd33c61;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xc29844af, Offset: 0xfd8
// Size: 0x6c
function is_trials() {
    if (!isdefined(level.var_bc0dd8f3)) {
        level.var_bc0dd8f3 = util::get_game_type() == #"hash_32a608b582834498";
    }
    return level.var_bc0dd8f3 || level flag::exists(#"ztrial");
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xc1357686, Offset: 0x1050
// Size: 0x4a
function is_tutorial() {
    if (!isdefined(level.var_f9cd414c)) {
        level.var_f9cd414c = util::get_game_type() == #"ztutorial";
    }
    return level.var_f9cd414c;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xe0c9dbaa, Offset: 0x10a8
// Size: 0x4a
function is_grief() {
    if (!isdefined(level.var_80b0bb3d)) {
        level.var_80b0bb3d = util::get_game_type() == #"zgrief";
    }
    return level.var_80b0bb3d;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x89b4020b, Offset: 0x1100
// Size: 0x4a
function function_c4b020f8() {
    if (!isdefined(level.var_7ef56397)) {
        level.var_7ef56397 = util::get_game_type() == #"zcranked";
    }
    return level.var_7ef56397;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0x8d08fd6, Offset: 0x1158
// Size: 0x4a
function function_6931bc89() {
    if (!isdefined(level.var_2abedddf)) {
        level.var_2abedddf = util::get_game_type() == #"doa";
    }
    return level.var_2abedddf;
}

// Namespace zm_utility/zm_utility
// Params 6, eflags: 0x2 linked
// Checksum 0x9cf570b8, Offset: 0x11b0
// Size: 0xfa
function function_d6046228(var_67441581, var_756ee4e5, var_bcb9de3e, var_299ea954, str_trials, var_1e31f083) {
    if (is_trials()) {
        if (self function_8b1a219a() && isdefined(var_1e31f083)) {
            return var_1e31f083;
        } else if (isdefined(str_trials)) {
            return str_trials;
        }
    } else if (is_standard()) {
        if (self function_8b1a219a() && isdefined(var_299ea954)) {
            return var_299ea954;
        } else if (isdefined(var_bcb9de3e)) {
            return var_bcb9de3e;
        }
    }
    if (self function_8b1a219a() && isdefined(var_756ee4e5)) {
        return var_756ee4e5;
    }
    return var_67441581;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0xd180283b, Offset: 0x12b8
// Size: 0x12
function get_cast() {
    return zm_maptable::get_cast();
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x7b3c2c53, Offset: 0x12d8
// Size: 0x12
function get_story() {
    return zm_maptable::get_story();
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x16e658e3, Offset: 0x12f8
// Size: 0xb0
function check_solo_status() {
    if (getnumexpectedplayers() == 1 && (!sessionmodeisonlinegame() || sessionmodeisprivate() || zm_trial::is_trial_mode() || getdvarint(#"com_maxclients", 0) == 1)) {
        level.is_forever_solo_game = 1;
        return;
    }
    level.is_forever_solo_game = 0;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xa4a1d5e5, Offset: 0x13b0
// Size: 0x1b4
function init_zombie_run_cycle() {
    if (isdefined(level.speed_change_round)) {
        if (!isdefined(self._starting_round_number)) {
            self._starting_round_number = level.round_number;
        }
        if (self._starting_round_number >= level.speed_change_round) {
            speed_percent = 0.2 + (self._starting_round_number - level.speed_change_round) * 0.2;
            speed_percent = min(speed_percent, 1);
            change_round_max = int(level.speed_change_max * speed_percent);
            change_left = change_round_max - level.speed_change_num;
            if (change_left == 0) {
                self zombie_utility::set_zombie_run_cycle();
                return;
            }
            change_speed = randomint(100);
            if (change_speed > 80) {
                self change_zombie_run_cycle();
                return;
            }
            zombie_count = zombie_utility::get_current_zombie_count();
            zombie_left = level.zombie_ai_limit - zombie_count;
            if (zombie_left == change_left) {
                self change_zombie_run_cycle();
                return;
            }
        }
    }
    self zombie_utility::set_zombie_run_cycle();
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xda7d1262, Offset: 0x1570
// Size: 0x74
function change_zombie_run_cycle() {
    level.speed_change_num++;
    if (level.gamedifficulty == 0) {
        self zombie_utility::set_zombie_run_cycle("sprint");
    } else {
        self zombie_utility::set_zombie_run_cycle("run");
    }
    self thread speed_change_watcher();
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0x872d2df5, Offset: 0x15f0
// Size: 0x24
function make_supersprinter() {
    self zombie_utility::set_zombie_run_cycle("super_sprint");
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x3ce22f5a, Offset: 0x1620
// Size: 0x34
function speed_change_watcher() {
    self waittill(#"death");
    if (level.speed_change_num > 0) {
        level.speed_change_num--;
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x6f884a07, Offset: 0x1660
// Size: 0x4fa
function move_zombie_spawn_location(spot) {
    self endon(#"death");
    if (isdefined(self.spawn_pos)) {
        self notify(#"risen", {#find_flesh_struct_string:self.spawn_pos.script_string});
        return;
    }
    self.spawn_pos = spot;
    if (!isdefined(spot)) {
        return;
    }
    if (isdefined(spot.target)) {
        self.target = spot.target;
    }
    if (isdefined(spot.zone_name)) {
        self.zone_name = spot.zone_name;
    }
    if (isdefined(spot.script_parameters)) {
        self.script_parameters = spot.script_parameters;
    }
    if (!isdefined(spot.script_noteworthy)) {
        spot.script_noteworthy = "spawn_location";
    }
    tokens = strtok(spot.script_noteworthy, " ");
    foreach (index, token in tokens) {
        if (isdefined(self.spawn_point_override)) {
            spot = self.spawn_point_override;
            token = spot.script_noteworthy;
        }
        if (token == "custom_spawner_entry") {
            next_token = index + 1;
            if (isdefined(tokens[next_token])) {
                str_spawn_entry = tokens[next_token];
                if (isdefined(level.custom_spawner_entry) && isdefined(level.custom_spawner_entry[str_spawn_entry])) {
                    self thread [[ level.custom_spawner_entry[str_spawn_entry] ]](spot);
                    continue;
                }
            }
        }
        if (token == "riser_location") {
            self thread zm_spawner::do_zombie_rise(spot);
            continue;
        }
        if (token == "faller_location") {
            self thread zm_ai_faller::do_zombie_fall(spot);
            continue;
        }
        if (token == "spawn_location") {
            if (isdefined(self.anchor)) {
                return;
            }
            self.anchor = spawn("script_origin", self.origin);
            self.anchor.angles = self.angles;
            self linkto(self.anchor);
            self.anchor thread anchor_delete_failsafe(self);
            if (!isdefined(spot.angles)) {
                spot.angles = (0, 0, 0);
            }
            self ghost();
            self.anchor moveto(spot.origin, 0.05);
            self.anchor waittill(#"movedone");
            target_org = zombie_utility::get_desired_origin();
            if (isdefined(target_org)) {
                anim_ang = vectortoangles(target_org - self.origin);
                self.anchor rotateto((0, anim_ang[1], 0), 0.05);
                self.anchor waittill(#"rotatedone");
            }
            if (isdefined(level.zombie_spawn_fx)) {
                playfx(level.zombie_spawn_fx, spot.origin);
            }
            self unlink();
            if (isdefined(self.anchor)) {
                self.anchor delete();
            }
            if (!is_true(self.dontshow)) {
                self show();
            }
            self notify(#"risen", {#find_flesh_struct_string:spot.script_string});
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x68dadd67, Offset: 0x1b68
// Size: 0x5c
function anchor_delete_failsafe(ai_zombie) {
    ai_zombie endon(#"risen");
    ai_zombie waittill(#"death");
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x2167e7af, Offset: 0x1bd0
// Size: 0xc8
function all_chunks_intact(barrier, barrier_chunks) {
    if (isdefined(barrier.zbarrier)) {
        pieces = barrier.zbarrier getzbarrierpieceindicesinstate("closed");
        if (pieces.size != barrier.zbarrier getnumzbarrierpieces()) {
            return false;
        }
    } else {
        for (i = 0; i < barrier_chunks.size; i++) {
            if (barrier_chunks[i] get_chunk_state() != "repaired") {
                return false;
            }
        }
    }
    return true;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x3bc032af, Offset: 0x1ca0
// Size: 0xb0
function no_valid_repairable_boards(barrier, barrier_chunks) {
    if (isdefined(barrier.zbarrier)) {
        pieces = barrier.zbarrier getzbarrierpieceindicesinstate("open");
        if (pieces.size) {
            return false;
        }
    } else {
        for (i = 0; i < barrier_chunks.size; i++) {
            if (barrier_chunks[i] get_chunk_state() == "destroyed") {
                return false;
            }
        }
    }
    return true;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xf69bd9d0, Offset: 0x1d58
// Size: 0x6
function is_encounter() {
    return false;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x6002356e, Offset: 0x1d68
// Size: 0x128
function all_chunks_destroyed(barrier, barrier_chunks) {
    if (isdefined(barrier.zbarrier)) {
        pieces = arraycombine(barrier.zbarrier getzbarrierpieceindicesinstate("open"), barrier.zbarrier getzbarrierpieceindicesinstate("opening"), 1, 0);
        if (pieces.size != barrier.zbarrier getnumzbarrierpieces()) {
            return false;
        }
    } else if (isdefined(barrier_chunks)) {
        assert(isdefined(barrier_chunks), "6");
        for (i = 0; i < barrier_chunks.size; i++) {
            if (barrier_chunks[i] get_chunk_state() != "destroyed") {
                return false;
            }
        }
    }
    return true;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x8bb48f87, Offset: 0x1e98
// Size: 0x1fa
function check_point_in_playable_area(origin) {
    if (function_21f4ac36() && !isdefined(level.var_a2a9b2de)) {
        level.var_a2a9b2de = getnodearray("player_region", "script_noteworthy");
    }
    if (function_c85ebbbc() && !isdefined(level.playable_area)) {
        level.playable_area = getentarray("player_volume", "script_noteworthy");
    }
    valid_point = 0;
    if (isdefined(level.playable_area)) {
        var_12ed21a1 = function_72d3bca6(level.playable_area, origin, undefined, undefined, level.var_603981f1);
        foreach (area in var_12ed21a1) {
            if (istouching(origin, area)) {
                valid_point = 1;
                break;
            }
        }
    }
    if (isdefined(level.var_a2a9b2de) && !valid_point) {
        node = function_52c1730(origin + (0, 0, 40), level.var_a2a9b2de, 500);
        if (isdefined(node)) {
            valid_point = 1;
        }
    }
    return valid_point;
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x2 linked
// Checksum 0xf3f6fde6, Offset: 0x20a0
// Size: 0x398
function check_point_in_enabled_zone(origin, zone_is_active, player_zones, player_regions) {
    if (isdefined(level.var_304d38af) && ![[ level.var_304d38af ]](origin)) {
        return 0;
    }
    if (function_c85ebbbc() && !isdefined(level.playable_area)) {
        level.playable_area = getentarray("player_volume", "script_noteworthy");
    }
    if (!isdefined(player_zones)) {
        player_zones = level.playable_area;
    }
    if (function_21f4ac36() && !isdefined(level.player_regions)) {
        level.player_regions = getnodearray("player_region", "script_noteworthy");
    }
    if (!isdefined(player_regions)) {
        player_regions = level.player_regions;
    }
    if (!isdefined(level.zones) || !isdefined(player_zones) && !isdefined(player_regions)) {
        return 1;
    }
    one_valid_zone = 0;
    if (isdefined(player_zones)) {
        var_f9ef6a14 = origin + (0, 0, 40);
        var_12ed21a1 = function_72d3bca6(level.playable_area, var_f9ef6a14, undefined, undefined, level.var_603981f1);
        foreach (area in var_12ed21a1) {
            zone = level.zones[area.targetname];
            if (isdefined(zone) && is_true(zone.is_enabled)) {
                if (zone_is_active === 1 && !is_true(zone.is_active)) {
                    continue;
                }
                if (istouching(var_f9ef6a14, area)) {
                    one_valid_zone = 1;
                    break;
                }
            }
        }
    }
    if (isdefined(player_regions) && !one_valid_zone) {
        node = function_52c1730(origin + (0, 0, 40), player_regions, 500);
        if (isdefined(node)) {
            zone = level.zones[node.targetname];
            if (isdefined(zone) && is_true(zone.is_enabled)) {
                if (zone_is_active === 1 && !is_true(zone.is_active)) {
                    one_valid_zone = 0;
                } else {
                    one_valid_zone = 1;
                }
            }
        }
    }
    return one_valid_zone;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xff9e9ec8, Offset: 0x2440
// Size: 0x3e
function round_up_to_ten(score) {
    new_score = score - score % 10;
    if (new_score < score) {
        new_score += 10;
    }
    return new_score;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x4b30a330, Offset: 0x2488
// Size: 0x6c
function round_up_score(score, value = 5) {
    score = int(score);
    new_score = score - score % value;
    if (new_score < score) {
        new_score += value;
    }
    return new_score;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xb6555ec0, Offset: 0x2500
// Size: 0x32
function halve_score(n_score) {
    n_score /= 2;
    n_score = round_up_score(n_score);
    return n_score;
}

// Namespace zm_utility/zm_utility
// Params 7, eflags: 0x2 linked
// Checksum 0xe1388d9c, Offset: 0x2540
// Size: 0x1e4
function create_zombie_point_of_interest(attract_dist, num_attractors, added_poi_value, start_turned_on, initial_attract_func, arrival_attract_func, poi_team) {
    if (!is_point_inside_enabled_zone(self.origin)) {
        return;
    }
    if (!isdefined(added_poi_value)) {
        self.added_poi_value = 0;
    } else {
        self.added_poi_value = added_poi_value;
    }
    if (!isdefined(start_turned_on)) {
        start_turned_on = 1;
    }
    if (!isdefined(attract_dist)) {
        attract_dist = 1536;
    }
    self.script_noteworthy = "zombie_poi";
    self.poi_active = start_turned_on;
    if (isdefined(attract_dist)) {
        self.max_attractor_dist = attract_dist;
        self.poi_radius = attract_dist * attract_dist;
    } else {
        self.poi_radius = undefined;
    }
    self.num_poi_attracts = num_attractors;
    self.attract_to_origin = 1;
    self.attractor_array = [];
    self.initial_attract_func = undefined;
    self.arrival_attract_func = undefined;
    if (isdefined(poi_team)) {
        self._team = poi_team;
    }
    if (isdefined(initial_attract_func)) {
        self.initial_attract_func = initial_attract_func;
    }
    if (isdefined(arrival_attract_func)) {
        self.arrival_attract_func = arrival_attract_func;
    }
    if (!isdefined(level.zombie_poi_array)) {
        level.zombie_poi_array = [];
    } else if (!isarray(level.zombie_poi_array)) {
        level.zombie_poi_array = array(level.zombie_poi_array);
    }
    level.zombie_poi_array[level.zombie_poi_array.size] = self;
    self thread watch_for_poi_death();
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xd21a5145, Offset: 0x2730
// Size: 0x54
function watch_for_poi_death() {
    self waittill(#"death");
    if (isinarray(level.zombie_poi_array, self)) {
        arrayremovevalue(level.zombie_poi_array, self);
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0x865a405d, Offset: 0x2790
// Size: 0x13a
function debug_draw_new_attractor_positions() {
    self endon(#"death");
    while (true) {
        foreach (attract in self.attractor_positions) {
            passed = bullettracepassed(attract[0] + (0, 0, 24), self.origin + (0, 0, 24), 0, self);
            if (passed) {
                /#
                    debugstar(attract[0], 6, (1, 1, 1));
                #/
                continue;
            }
            /#
                debugstar(attract[0], 6, (1, 0, 0));
            #/
        }
        waitframe(1);
    }
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x0
// Checksum 0x81840caa, Offset: 0x28d8
// Size: 0x50c
function create_zombie_point_of_interest_attractor_positions(var_b09c2334 = 15, n_height = 60, var_6b5dd73c, var_7262d151 = 0) {
    self endon(#"death");
    if (!isdefined(self.num_poi_attracts) || isdefined(self.script_noteworthy) && self.script_noteworthy != "zombie_poi") {
        return false;
    }
    queryresult = positionquery_source_navigation(self.origin, var_b09c2334 / 2, isdefined(var_6b5dd73c) ? var_6b5dd73c : self.max_attractor_dist, n_height / 2, var_b09c2334 / 2, 1, var_b09c2334 / 2);
    if (var_7262d151) {
        var_7162cf15 = getclosestpointonnavmesh(self.origin, var_6b5dd73c);
    } else {
        var_7162cf15 = getclosestpointonnavmesh(self.origin);
    }
    if (!isdefined(var_7162cf15)) {
        return false;
    }
    if (queryresult.data.size < self.num_poi_attracts) {
        self.num_poi_attracts = queryresult.data.size;
    }
    position_index = 0;
    for (i = 0; i < queryresult.data.size; i++) {
        if (!tracepassedonnavmesh(var_7162cf15, queryresult.data[i].origin, 15)) {
            /#
                if (is_true(level.var_565d6ce0)) {
                    recordstar(queryresult.data[i].origin, (1, 0, 0));
                    record3dtext("6d99fc4675da1628", queryresult.data[i].origin + (0, 0, 8), (1, 0, 0));
                }
            #/
            continue;
        }
        if (is_true(level.validate_poi_attractors)) {
            passed = bullettracepassed(queryresult.data[i].origin + (0, 0, 24), self.origin + (0, 0, 24), 0, self);
            if (passed) {
                self.attractor_positions[position_index] = queryresult.data[i].origin;
                position_index++;
            } else {
                /#
                    if (is_true(level.var_565d6ce0)) {
                        recordstar(queryresult.data[i].origin, (1, 0, 0));
                        record3dtext("<unknown string>", queryresult.data[i].origin + (0, 0, 8), (1, 0, 0));
                    }
                #/
            }
        } else if (is_true(self.var_abfcb0d9)) {
            if (check_point_in_enabled_zone(queryresult.data[i].origin) && check_point_in_playable_area(queryresult.data[i].origin)) {
                self.attractor_positions[position_index] = queryresult.data[i].origin;
                position_index++;
            }
        } else {
            self.attractor_positions[position_index] = queryresult.data[i].origin;
            position_index++;
            /#
                if (is_true(level.var_565d6ce0)) {
                    recordstar(queryresult.data[i].origin, (0, 1, 0));
                }
            #/
        }
        if (self.num_poi_attracts == position_index) {
            break;
        }
    }
    if (!isdefined(self.attractor_positions)) {
        self.attractor_positions = [];
    }
    self.attract_to_origin = 0;
    self notify(#"attractor_positions_generated");
    level notify(#"attractor_positions_generated");
    return true;
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x0
// Checksum 0xda9e07ae, Offset: 0x2df0
// Size: 0x3e6
function generated_radius_attract_positions(forward, offset, num_positions, attract_radius) {
    self endon(#"death");
    failed = 0;
    degs_per_pos = 360 / num_positions;
    for (i = offset; i < 360 + offset; i += degs_per_pos) {
        altforward = forward * attract_radius;
        rotated_forward = (cos(i) * altforward[0] - sin(i) * altforward[1], sin(i) * altforward[0] + cos(i) * altforward[1], altforward[2]);
        if (isdefined(level.poi_positioning_func)) {
            pos = [[ level.poi_positioning_func ]](self.origin, rotated_forward);
        } else if (is_true(level.use_alternate_poi_positioning)) {
            pos = zm_server_throttle::server_safe_ground_trace("poi_trace", 10, self.origin + rotated_forward + (0, 0, 10));
        } else {
            pos = zm_server_throttle::server_safe_ground_trace("poi_trace", 10, self.origin + rotated_forward + (0, 0, 100));
        }
        if (!isdefined(pos)) {
            failed++;
            continue;
        }
        if (is_true(level.use_alternate_poi_positioning)) {
            if (isdefined(self) && isdefined(self.origin)) {
                if (self.origin[2] >= pos[2] - 1 && self.origin[2] - pos[2] <= 150) {
                    pos_array = [];
                    pos_array[0] = pos;
                    pos_array[1] = self;
                    if (!isdefined(self.attractor_positions)) {
                        self.attractor_positions = [];
                    } else if (!isarray(self.attractor_positions)) {
                        self.attractor_positions = array(self.attractor_positions);
                    }
                    self.attractor_positions[self.attractor_positions.size] = pos_array;
                }
            } else {
                failed++;
            }
            continue;
        }
        if (abs(pos[2] - self.origin[2]) < 60) {
            pos_array = [];
            pos_array[0] = pos;
            pos_array[1] = self;
            if (!isdefined(self.attractor_positions)) {
                self.attractor_positions = [];
            } else if (!isarray(self.attractor_positions)) {
                self.attractor_positions = array(self.attractor_positions);
            }
            self.attractor_positions[self.attractor_positions.size] = pos_array;
            continue;
        }
        failed++;
    }
    return failed;
}

/#

    // Namespace zm_utility/zm_utility
    // Params 0, eflags: 0x0
    // Checksum 0x7657a1cc, Offset: 0x31e0
    // Size: 0x98
    function debug_draw_attractor_positions() {
        while (true) {
            while (!isdefined(self.attractor_positions)) {
                waitframe(1);
                continue;
            }
            for (i = 0; i < self.attractor_positions.size; i++) {
                line(self.origin, self.attractor_positions[i][0], (1, 0, 0), 1, 1);
            }
            waitframe(1);
            if (!isdefined(self)) {
                return;
            }
        }
    }

    // Namespace zm_utility/zm_utility
    // Params 0, eflags: 0x0
    // Checksum 0xdb8cb23a, Offset: 0x3280
    // Size: 0x98
    function debug_draw_claimed_attractor_positions() {
        while (true) {
            while (!isdefined(self.claimed_attractor_positions)) {
                waitframe(1);
                continue;
            }
            for (i = 0; i < self.claimed_attractor_positions.size; i++) {
                line(self.origin, self.claimed_attractor_positions[i][0], (0, 1, 0), 1, 1);
            }
            waitframe(1);
            if (!isdefined(self)) {
                return;
            }
        }
    }

#/

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xce4aefd0, Offset: 0x3320
// Size: 0x400
function get_zombie_point_of_interest(origin, poi_array) {
    aiprofile_beginentry("get_zombie_point_of_interest");
    if (is_true(self.ignore_all_poi)) {
        aiprofile_endentry();
        return undefined;
    }
    curr_radius = undefined;
    if (isdefined(poi_array)) {
        ent_array = poi_array;
    } else {
        ent_array = level.zombie_poi_array;
    }
    best_poi = undefined;
    var_a9740555 = undefined;
    best_dist = 100000000;
    for (i = 0; i < ent_array.size; i++) {
        if (!isdefined(ent_array[i]) || !isdefined(ent_array[i].poi_active) || !ent_array[i].poi_active) {
            continue;
        }
        if (isdefined(self.ignore_poi_targetname) && self.ignore_poi_targetname.size > 0 && isinarray(self.ignore_poi_targetname, ent_array[i].targetname)) {
            continue;
        }
        if (isdefined(self.ignore_poi) && self.ignore_poi.size > 0 && isinarray(self.ignore_poi, ent_array[i])) {
            continue;
        }
        dist = distancesquared(origin, ent_array[i].origin);
        dist -= ent_array[i].added_poi_value;
        if (isdefined(ent_array[i].poi_radius)) {
            curr_radius = ent_array[i].poi_radius;
        }
        if ((!isdefined(curr_radius) || dist < curr_radius) && dist < best_dist && ent_array[i] can_attract(self)) {
            best_poi = ent_array[i];
            best_dist = dist;
        }
    }
    if (isdefined(best_poi)) {
        if (isdefined(best_poi._team)) {
            if (isdefined(self._race_team) && self._race_team != best_poi._team) {
                aiprofile_endentry();
                return undefined;
            }
        }
        if (is_true(best_poi._new_ground_trace)) {
            var_a9740555 = {};
            var_a9740555.position = groundpos_ignore_water_new(best_poi.origin + (0, 0, 100));
            var_a9740555.poi_ent = best_poi;
        } else if (isdefined(best_poi.attract_to_origin) && best_poi.attract_to_origin) {
            var_a9740555 = {};
            var_a9740555.position = groundpos(best_poi.origin + (0, 0, 100));
            var_a9740555.poi_ent = best_poi;
        } else {
            var_a9740555 = self add_poi_attractor(best_poi);
        }
        if (isdefined(best_poi.initial_attract_func)) {
            self thread [[ best_poi.initial_attract_func ]](best_poi);
        }
        if (isdefined(best_poi.arrival_attract_func)) {
            self thread [[ best_poi.arrival_attract_func ]](best_poi);
        }
    }
    aiprofile_endentry();
    return var_a9740555;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0x5cdc6c34, Offset: 0x3728
// Size: 0x26
function activate_zombie_point_of_interest() {
    if (self.script_noteworthy != "zombie_poi") {
        return;
    }
    self.poi_active = 1;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x683677e4, Offset: 0x3758
// Size: 0x11c
function deactivate_zombie_point_of_interest(dont_remove) {
    if (!isdefined(self.script_noteworthy) || self.script_noteworthy != "zombie_poi") {
        return;
    }
    arrayremovevalue(self.attractor_array, undefined);
    for (i = 0; i < self.attractor_array.size; i++) {
        self.attractor_array[i] notify(#"kill_poi");
    }
    self.attractor_array = [];
    self.claimed_attractor_positions = [];
    self.attractor_positions = [];
    self.poi_active = 0;
    if (is_true(dont_remove)) {
        return;
    }
    if (isdefined(self)) {
        if (isinarray(level.zombie_poi_array, self)) {
            arrayremovevalue(level.zombie_poi_array, self);
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x0
// Checksum 0x2ca87e63, Offset: 0x3880
// Size: 0x108
function assign_zombie_point_of_interest(*origin, poi) {
    position = undefined;
    doremovalthread = 0;
    if (isdefined(poi) && poi can_attract(self)) {
        if (!isdefined(poi.attractor_array) || isdefined(poi.attractor_array) && !isinarray(poi.attractor_array, self)) {
            doremovalthread = 1;
        }
        position = self add_poi_attractor(poi);
        if (isdefined(position) && doremovalthread && isinarray(poi.attractor_array, self)) {
            self thread update_on_poi_removal(poi);
        }
    }
    return position;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xfd1b367f, Offset: 0x3990
// Size: 0xce
function remove_poi_attractor(zombie_poi) {
    if (!isdefined(zombie_poi) || !isdefined(zombie_poi.attractor_array)) {
        return;
    }
    for (i = 0; i < zombie_poi.attractor_array.size; i++) {
        if (zombie_poi.attractor_array[i] == self) {
            arrayremovevalue(zombie_poi.attractor_array, zombie_poi.attractor_array[i]);
            arrayremovevalue(zombie_poi.claimed_attractor_positions, zombie_poi.claimed_attractor_positions[i]);
            if (isdefined(self)) {
                self notify(#"kill_poi");
            }
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x2 linked
// Checksum 0xb9af0968, Offset: 0x3a68
// Size: 0x5a
function array_check_for_dupes_using_compare(array, single, is_equal_fn) {
    for (i = 0; i < array.size; i++) {
        if ([[ is_equal_fn ]](array[i], single)) {
            return false;
        }
    }
    return true;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x7c228c67, Offset: 0x3ad0
// Size: 0x22
function poi_locations_equal(loc1, loc2) {
    return loc1[0] == loc2[0];
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xd27b1c1b, Offset: 0x3b00
// Size: 0x3b8
function add_poi_attractor(zombie_poi) {
    if (!isdefined(zombie_poi)) {
        return;
    }
    if (!isdefined(zombie_poi.attractor_array)) {
        zombie_poi.attractor_array = [];
    }
    if (!isinarray(zombie_poi.attractor_array, self)) {
        if (!isdefined(zombie_poi.claimed_attractor_positions)) {
            zombie_poi.claimed_attractor_positions = [];
        }
        if (!isdefined(zombie_poi.attractor_positions) || zombie_poi.attractor_positions.size <= 0) {
            return undefined;
        }
        best_dist = 100000000;
        best_pos = undefined;
        for (i = 0; i <= zombie_poi.attractor_positions.size; i++) {
            if (!isdefined(zombie_poi.attractor_positions[i])) {
                continue;
            }
            if (!isinarray(zombie_poi.claimed_attractor_positions, zombie_poi.attractor_positions[i])) {
                if (isdefined(zombie_poi.attractor_positions[i]) && isdefined(self.origin)) {
                    dist = distancesquared(zombie_poi.attractor_positions[i], zombie_poi.origin);
                    if (dist < best_dist || !isdefined(best_pos)) {
                        best_dist = dist;
                        best_pos = zombie_poi.attractor_positions[i];
                    }
                }
            }
        }
        if (!isdefined(best_pos)) {
            if (is_true(level.validate_poi_attractors)) {
                valid_pos = [];
                valid_pos[0] = zombie_poi.origin;
                valid_pos[1] = zombie_poi;
                return valid_pos;
            }
            return undefined;
        }
        if (!isdefined(zombie_poi.attractor_array)) {
            zombie_poi.attractor_array = [];
        } else if (!isarray(zombie_poi.attractor_array)) {
            zombie_poi.attractor_array = array(zombie_poi.attractor_array);
        }
        zombie_poi.attractor_array[zombie_poi.attractor_array.size] = self;
        self thread update_poi_on_death(zombie_poi);
        if (!isdefined(zombie_poi.claimed_attractor_positions)) {
            zombie_poi.claimed_attractor_positions = [];
        } else if (!isarray(zombie_poi.claimed_attractor_positions)) {
            zombie_poi.claimed_attractor_positions = array(zombie_poi.claimed_attractor_positions);
        }
        zombie_poi.claimed_attractor_positions[zombie_poi.claimed_attractor_positions.size] = best_pos;
        return {#position:best_pos, #poi_ent:zombie_poi};
    } else {
        for (i = 0; i < zombie_poi.attractor_array.size; i++) {
            if (zombie_poi.attractor_array[i] == self) {
                if (isdefined(zombie_poi.claimed_attractor_positions) && isdefined(zombie_poi.claimed_attractor_positions[i])) {
                    return {#position:zombie_poi.claimed_attractor_positions[i], #poi_ent:zombie_poi};
                }
            }
        }
    }
    return undefined;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x41932b57, Offset: 0x3ec0
// Size: 0x1e
function function_49f80b6f(entity) {
    return entity.zombie_poi.position;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xe8772b0, Offset: 0x3ee8
// Size: 0xa6
function can_attract(attractor) {
    if (!isdefined(self.attractor_array)) {
        self.attractor_array = [];
    }
    if (isdefined(self.attracted_array) && !isinarray(self.attracted_array, attractor)) {
        return false;
    }
    if (isinarray(self.attractor_array, attractor)) {
        return true;
    }
    if (isdefined(self.num_poi_attracts) && self.attractor_array.size >= self.num_poi_attracts) {
        return false;
    }
    return true;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xb148a570, Offset: 0x3f98
// Size: 0x4c
function update_poi_on_death(zombie_poi) {
    self endon(#"kill_poi");
    self waittill(#"death");
    self remove_poi_attractor(zombie_poi);
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xb569da08, Offset: 0x3ff0
// Size: 0xac
function update_on_poi_removal(zombie_poi) {
    zombie_poi waittill(#"death");
    if (!isdefined(zombie_poi.attractor_array)) {
        return;
    }
    for (i = 0; i < zombie_poi.attractor_array.size; i++) {
        if (zombie_poi.attractor_array[i] == self) {
            arrayremoveindex(zombie_poi.attractor_array, i);
            arrayremoveindex(zombie_poi.claimed_attractor_positions, i);
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x0
// Checksum 0x764efa52, Offset: 0x40a8
// Size: 0x192
function invalidate_attractor_pos(attractor_pos, zombie) {
    if (!isdefined(self) || !isdefined(attractor_pos)) {
        wait(0.1);
        return undefined;
    }
    if (isdefined(self.attractor_positions) && !array_check_for_dupes_using_compare(self.attractor_positions, attractor_pos, &poi_locations_equal)) {
        index = 0;
        for (i = 0; i < self.attractor_positions.size; i++) {
            if (poi_locations_equal(self.attractor_positions[i], attractor_pos)) {
                index = i;
            }
        }
        arrayremovevalue(self.attractor_array, zombie);
        arrayremovevalue(self.attractor_positions, attractor_pos);
        for (i = 0; i < self.claimed_attractor_positions.size; i++) {
            if (self.claimed_attractor_positions[i][0] == attractor_pos[0]) {
                arrayremovevalue(self.claimed_attractor_positions, self.claimed_attractor_positions[i]);
            }
        }
    } else {
        wait(0.1);
    }
    return get_zombie_point_of_interest(zombie.origin);
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x50e77755, Offset: 0x4248
// Size: 0x8e
function remove_poi_from_ignore_list(poi) {
    if (isdefined(self.ignore_poi) && self.ignore_poi.size > 0) {
        for (i = 0; i < self.ignore_poi.size; i++) {
            if (self.ignore_poi[i] == poi) {
                arrayremovevalue(self.ignore_poi, self.ignore_poi[i]);
                return;
            }
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x5da82888, Offset: 0x42e0
// Size: 0xa8
function add_poi_to_ignore_list(poi) {
    if (!isdefined(self.ignore_poi)) {
        self.ignore_poi = [];
    }
    add_poi = 1;
    if (self.ignore_poi.size > 0) {
        for (i = 0; i < self.ignore_poi.size; i++) {
            if (self.ignore_poi[i] == poi) {
                add_poi = 0;
                break;
            }
        }
    }
    if (add_poi) {
        self.ignore_poi[self.ignore_poi.size] = poi;
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x1f8e57f6, Offset: 0x4390
// Size: 0x54
function default_validate_enemy_path_length(player) {
    d = distancesquared(self.origin, player.origin);
    if (d <= 1296) {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xe9b1d48, Offset: 0x43f0
// Size: 0xc8
function function_d0f02e71(archetype) {
    if (!isdefined(level.var_58903b1f)) {
        level.var_58903b1f = [];
    }
    if (!isdefined(level.var_58903b1f)) {
        level.var_58903b1f = [];
    } else if (!isarray(level.var_58903b1f)) {
        level.var_58903b1f = array(level.var_58903b1f);
    }
    if (!isinarray(level.var_58903b1f, archetype)) {
        level.var_58903b1f[level.var_58903b1f.size] = archetype;
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x1f170f41, Offset: 0x44c0
// Size: 0x274
function function_55295a16() {
    level endon(#"end_game");
    level waittill(#"start_of_round");
    while (true) {
        reset_closest_player = 1;
        zombies = [];
        if (isdefined(level.var_58903b1f)) {
            foreach (archetype in level.var_58903b1f) {
                ai = getaiarchetypearray(archetype, level.zombie_team);
                if (ai.size) {
                    zombies = arraycombine(zombies, ai, 0, 0);
                }
            }
        }
        foreach (zombie in zombies) {
            if (is_true(zombie.need_closest_player)) {
                reset_closest_player = 0;
                zombie.var_3a610ea4 = undefined;
                break;
            }
            zombie.var_3a610ea4 = undefined;
        }
        if (reset_closest_player) {
            foreach (zombie in zombies) {
                if (isdefined(zombie.need_closest_player)) {
                    zombie.need_closest_player = 1;
                    /#
                        zombie.var_26f25576 = undefined;
                    #/
                }
            }
        }
        waitframe(1);
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x3265d6c2, Offset: 0x4740
// Size: 0x132
function private function_5dcc54a8(players) {
    if (isdefined(self.last_closest_player) && is_true(self.last_closest_player.am_i_valid)) {
        return;
    }
    self.need_closest_player = 1;
    if (!isdefined(players)) {
        players = [];
    } else if (!isarray(players)) {
        players = array(players);
    }
    foreach (player in players) {
        if (is_true(player.am_i_valid)) {
            self.last_closest_player = player;
            return;
        }
    }
    self.last_closest_player = undefined;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xfb2c898a, Offset: 0x4880
// Size: 0x722
function function_c52e1749(origin, players) {
    if (players.size == 0) {
        return undefined;
    }
    if (isdefined(self.zombie_poi)) {
        return undefined;
    }
    if (players.size == 1) {
        self.last_closest_player = players[0];
        self.var_c6e0686b = distancesquared(players[0].origin, origin);
        return self.last_closest_player;
    }
    if (!isdefined(self.last_closest_player)) {
        self.last_closest_player = players[0];
    }
    if (!isdefined(self.need_closest_player)) {
        self.need_closest_player = 1;
    }
    level.last_closest_time = level.time;
    self.need_closest_player = 0;
    var_88e86621 = spawnstruct();
    var_88e86621.height = self function_6a9ae71();
    var_88e86621.radius = self getpathfindingradius();
    var_88e86621.origin = origin;
    if (isdefined(self.var_6392b6c4)) {
        var_448ee423 = self [[ self.var_6392b6c4 ]](origin, players);
        playerpositions = [];
        if (isdefined(var_448ee423)) {
            foreach (var_5063dbdc in var_448ee423) {
                if (isdefined(var_5063dbdc.origin)) {
                    if (!isdefined(playerpositions)) {
                        playerpositions = [];
                    } else if (!isarray(playerpositions)) {
                        playerpositions = array(playerpositions);
                    }
                    playerpositions[playerpositions.size] = var_5063dbdc.origin;
                }
            }
        } else {
            var_448ee423 = [];
        }
    } else {
        playerpositions = [];
        var_448ee423 = [];
        foreach (player in players) {
            player_pos = player.last_valid_position;
            if (!isdefined(player_pos)) {
                player_pos = getclosestpointonnavmesh(player.origin, 100, var_88e86621.radius);
                if (!isdefined(player_pos)) {
                    continue;
                }
            }
            if (var_88e86621.radius > player getpathfindingradius()) {
                player_pos = getclosestpointonnavmesh(player.origin, 100, var_88e86621.radius);
            }
            pos = isdefined(player_pos) ? player_pos : player.origin;
            if (!isdefined(playerpositions)) {
                playerpositions = [];
            } else if (!isarray(playerpositions)) {
                playerpositions = array(playerpositions);
            }
            playerpositions[playerpositions.size] = pos;
            if (getdvarint(#"hash_4477ab37a00b1492", 1) == 1) {
                position_info = {#player:player, #origin:pos};
                if (!isdefined(var_448ee423)) {
                    var_448ee423 = [];
                } else if (!isarray(var_448ee423)) {
                    var_448ee423 = array(var_448ee423);
                }
                var_448ee423[var_448ee423.size] = position_info;
            }
        }
    }
    closestplayer = undefined;
    self.var_c6e0686b = undefined;
    if (ispointonnavmesh(var_88e86621.origin, self)) {
        pathdata = generatenavmeshpath(var_88e86621.origin, playerpositions, self);
        if (isdefined(pathdata) && pathdata.status === "succeeded") {
            goalpos = pathdata.pathpoints[pathdata.pathpoints.size - 1];
            if (getdvarint(#"hash_4477ab37a00b1492", 1) == 1) {
                position_info = arraygetclosest(goalpos, var_448ee423);
                if (isdefined(position_info)) {
                    closestplayer = position_info.player;
                }
            } else {
                foreach (index, position in playerpositions) {
                    if (isdefined(level.var_cd24b30)) {
                        if (distance2dsquared(position, goalpos) < sqr(16) && abs(position[2] - goalpos[2]) <= level.var_cd24b30) {
                            closestplayer = players[index];
                        }
                        continue;
                    }
                    if (distancesquared(position, goalpos) < sqr(16)) {
                        closestplayer = players[index];
                        break;
                    }
                }
            }
        }
    }
    /#
        self.var_26f25576 = gettime();
    #/
    self.last_closest_player = closestplayer;
    if (isdefined(closestplayer)) {
        self.var_c6e0686b = sqr(pathdata.pathdistance);
    }
    self function_5dcc54a8(players);
    return self.last_closest_player;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x2e9be713, Offset: 0x4fb0
// Size: 0xe9a
function function_3d70ba7a(origin, players) {
    if (players.size == 0) {
        return undefined;
    }
    if (isdefined(self.zombie_poi)) {
        return undefined;
    }
    if (players.size == 1 && !is_true(self.var_15d21bbf)) {
        self.last_closest_player = players[0];
        self.var_c6e0686b = distancesquared(players[0].origin, origin);
        self function_5dcc54a8(players[0]);
        return self.last_closest_player;
    }
    if (!isdefined(self.last_closest_player)) {
        self.last_closest_player = players[0];
    }
    if (!isdefined(self.need_closest_player)) {
        self.need_closest_player = 1;
    }
    level.last_closest_time = level.time;
    self.need_closest_player = 0;
    var_88e86621 = spawnstruct();
    var_88e86621.height = self function_6a9ae71();
    var_88e86621.radius = self getpathfindingradius();
    var_88e86621.origin = origin;
    if (isdefined(self.var_6392b6c4)) {
        var_448ee423 = self [[ self.var_6392b6c4 ]](origin, players);
        playerpositions = [];
        if (isdefined(var_448ee423)) {
            foreach (var_5063dbdc in var_448ee423) {
                if (isdefined(var_5063dbdc.origin)) {
                    if (!isdefined(playerpositions)) {
                        playerpositions = [];
                    } else if (!isarray(playerpositions)) {
                        playerpositions = array(playerpositions);
                    }
                    playerpositions[playerpositions.size] = var_5063dbdc.origin;
                }
            }
        } else {
            var_448ee423 = [];
        }
    } else {
        playerpositions = [];
        var_448ee423 = [];
        foreach (player in players) {
            player_pos = player.last_valid_position;
            if (!isdefined(player_pos)) {
                player_pos = getclosestpointonnavmesh(player.origin, 100, var_88e86621.radius);
                if (!isdefined(player_pos)) {
                    continue;
                }
            }
            if (var_88e86621.radius > player getpathfindingradius()) {
                player_pos = getclosestpointonnavmesh(player_pos, 100, var_88e86621.radius);
            }
            pos = isdefined(player_pos) ? player_pos : player.origin;
            if (!isdefined(playerpositions)) {
                playerpositions = [];
            } else if (!isarray(playerpositions)) {
                playerpositions = array(playerpositions);
            }
            playerpositions[playerpositions.size] = pos;
            if (!isdefined(self.var_2d5cbb7[player getentitynumber()])) {
                self.var_2d5cbb7[player getentitynumber()] = {#var_e29d2657:0, #dist:-1};
            }
            position_info = {#player:player, #origin:pos};
            if (!isdefined(var_448ee423)) {
                var_448ee423 = [];
            } else if (!isarray(var_448ee423)) {
                var_448ee423 = array(var_448ee423);
            }
            var_448ee423[var_448ee423.size] = position_info;
        }
    }
    closestplayer = undefined;
    self.var_c6e0686b = undefined;
    if (!isdefined(self.var_2d5cbb7)) {
        self.var_2d5cbb7 = [];
    }
    var_abdf4916 = 0;
    var_9b606bab = undefined;
    if (ispointonnavmesh(var_88e86621.origin, self)) {
        var_5e1a4c24 = -1;
        var_3f11f493 = -1;
        for (i = 0; i < var_448ee423.size; i++) {
            var_68a2859a = self.var_2d5cbb7[var_448ee423[i].player getentitynumber()].var_e29d2657;
            if (var_5e1a4c24 == -1 || var_68a2859a < var_3f11f493) {
                var_3f11f493 = var_68a2859a;
                var_5e1a4c24 = i;
            }
        }
        var_674755ca = function_5cb65d8a(var_88e86621.origin, playerpositions, self, var_88e86621.radius, var_88e86621.height, -1, var_5e1a4c24, 1000);
        if (!isdefined(var_674755ca)) {
            return undefined;
        }
        for (i = 0; i < var_674755ca.size; i++) {
            target = var_448ee423[i].player;
            if (var_674755ca[i] == -2) {
                var_674755ca[i] = self.var_2d5cbb7[target getentitynumber()].dist;
                continue;
            }
            self.var_2d5cbb7[target getentitynumber()].dist = var_674755ca[i];
            self.var_2d5cbb7[target getentitynumber()].var_e29d2657 = gettime();
        }
        var_e3958ef0 = arraycopy(var_674755ca);
        var_8aa6bded = -1;
        closest_target = undefined;
        for (i = 0; i < var_674755ca.size; i++) {
            if (var_674755ca[i] != -1) {
                if (!isdefined(closest_target) || var_8aa6bded > var_674755ca[i]) {
                    closest_target = var_448ee423[i].player;
                    var_8aa6bded = var_674755ca[i];
                }
            }
        }
        if (!isdefined(closest_target)) {
            return undefined;
        }
        for (i = 0; i < var_674755ca.size; i++) {
            potential_target = var_448ee423[i].player;
            if (isdefined(self.var_448aebc7[potential_target getentitynumber()])) {
                var_ab0d150d = self.var_448aebc7[potential_target getentitynumber()];
                var_7e10832f = 2;
                if (isdefined(self.var_ad033811)) {
                    var_7e10832f = [[ self.var_ad033811 ]](potential_target, var_ab0d150d);
                }
                var_e3958ef0[i] = var_e3958ef0[i] - sqr(var_ab0d150d * var_7e10832f);
            }
            if (isdefined(self.var_d5e58936)) {
                var_e3958ef0[i] = [[ self.var_d5e58936 ]](potential_target, var_e3958ef0[i]);
            }
        }
        var_abdf4916 = 0;
        var_9b606bab = undefined;
        for (i = 0; i < var_448ee423.size; i++) {
            if (var_674755ca[i] == -1) {
                continue;
            }
            if (var_e3958ef0[i] < var_abdf4916 || !isdefined(var_9b606bab)) {
                var_abdf4916 = var_e3958ef0[i];
                var_9b606bab = var_448ee423[i].player;
            }
        }
        if (!is_true(self.var_d8861a5f)) {
            if (!is_true(self.var_982e6932)) {
                if (closest_target == var_9b606bab) {
                    self.var_982e6932 = 1;
                    self.var_927ef4c0 = gettime() + 3000;
                    self.var_448aebc7 = undefined;
                    self.var_29a3768c = undefined;
                }
                self.last_closest_player = var_9b606bab;
                self.var_c6e0686b = var_abdf4916;
            } else {
                if (gettime() > self.var_927ef4c0) {
                    self.var_982e6932 = 0;
                }
                self.last_closest_player = closest_target;
                self.var_c6e0686b = var_8aa6bded;
            }
        } else {
            self.last_closest_player = var_9b606bab;
        }
        if (isdefined(self.var_8a3828c6)) {
            var_e65cda3e = var_674755ca[self.var_8a3828c6 getentitynumber()];
            if (var_e65cda3e === -1) {
                zm_ai_utility::function_68ab868a(self);
                self.favoriteenemy = undefined;
                return;
            } else {
                self.var_c6e0686b = 0;
                self.last_closest_player = self.var_8a3828c6;
            }
        }
    }
    /#
        self.var_26f25576 = gettime();
    #/
    /#
        if (getdvar(#"hash_169a29e17dd1b916", 0) > 0) {
            var_edbf2d06 = "<unknown string>";
            for (i = 0; i < var_448ee423.size; i++) {
                target = var_448ee423[i].player;
                score = var_e3958ef0[i];
                if (isdefined(target) && isdefined(var_9b606bab)) {
                    color = var_9b606bab == target ? "<unknown string>" : "<unknown string>";
                    if (isdefined(self.var_29a3768c[target getentitynumber()])) {
                        var_f24e54b = "<unknown string>" + self.var_29a3768c[target getentitynumber()];
                    }
                    var_edbf2d06 = color + "<unknown string>" + target getentitynumber() + "<unknown string>" + score;
                } else {
                    var_edbf2d06 = "<unknown string>";
                }
                record3dtext(var_edbf2d06, self.origin + (0, 0, 80 - 30 * i), (1, 1, 1), "<unknown string>", self, 0.5);
                if (isdefined(var_674755ca[i])) {
                    record3dtext("<unknown string>" + var_674755ca[i], self.origin + (0, 0, 75 - 30 * i), (1, 1, 1), "<unknown string>", self, 0.5);
                }
            }
            if (isdefined(self.var_c2dcab66)) {
                var_edbf2d06 = "<unknown string>";
                foreach (attacker in self.var_c2dcab66) {
                    var_76fc2ac9 = (gettime() - attacker.time) * 0.001;
                    if (isdefined(attacker.player) && isdefined(self.var_448aebc7[attacker.player getentitynumber()])) {
                        var_edbf2d06 += "<unknown string>" + attacker.player getentitynumber() + "<unknown string>" + self.var_448aebc7[attacker.player getentitynumber()] + "<unknown string>" + var_76fc2ac9 + "<unknown string>";
                    }
                }
                record3dtext(var_edbf2d06, self.origin + (0, 0, -20), (1, 1, 1), "<unknown string>", self, 0.5);
            }
            if (is_true(self.var_982e6932)) {
                record3dtext("<unknown string>", self.origin + (0, 0, -25), (0, 1, 0), "<unknown string>", self, 0.5);
            }
        }
    #/
    self function_5dcc54a8(players);
    return self.last_closest_player;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xb35caee5, Offset: 0x5e58
// Size: 0xda
function function_d89330e6(player, var_21b12302 = 0) {
    if (!isdefined(player)) {
        return -1;
    }
    player_num = player getentitynumber();
    var_97c7ac97 = -1;
    if (isdefined(self.var_2d5cbb7[player_num].dist)) {
        var_97c7ac97 = self.var_2d5cbb7[player_num].dist;
    }
    if (is_true(var_21b12302) && var_97c7ac97 < 0) {
        var_97c7ac97 = distance2d(self.origin, player.origin);
    }
    return var_97c7ac97;
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x2 linked
// Checksum 0xa78807e0, Offset: 0x5f40
// Size: 0x7c8
function get_closest_valid_player(origin, ignore_player = array(), var_b106b254 = 0) {
    aiprofile_beginentry("get_closest_valid_player");
    players = getplayers();
    if (isdefined(level.zombie_targets) && level.zombie_targets.size > 0) {
        function_1eaaceab(level.zombie_targets);
        arrayremovevalue(level.zombie_targets, undefined);
        players = arraycombine(players, level.zombie_targets, 0, 0);
    }
    b_designated_target_exists = 0;
    foreach (player in players) {
        if (!is_true(player.am_i_valid)) {
            continue;
        }
        if (isdefined(level.var_63707e9c)) {
            if (![[ level.var_63707e9c ]](player)) {
                array::add(ignore_player, player);
            }
        }
        if (is_true(player.b_is_designated_target)) {
            b_designated_target_exists = 1;
        }
        if (isdefined(level.var_6f6cc58)) {
            if (![[ level.var_6f6cc58 ]](player)) {
                array::add(ignore_player, player);
            }
        }
    }
    if (isdefined(ignore_player)) {
        foreach (ignored_player in ignore_player) {
            arrayremovevalue(players, ignored_player);
        }
    }
    done = 0;
    while (players.size && !done) {
        done = 1;
        for (i = 0; i < players.size; i++) {
            player = players[i];
            if (!is_true(player.am_i_valid)) {
                arrayremovevalue(players, player);
                done = 0;
                break;
            }
            if (b_designated_target_exists && !is_true(player.b_is_designated_target)) {
                arrayremovevalue(players, player);
                done = 0;
                break;
            }
        }
    }
    if (players.size == 0) {
        aiprofile_endentry();
        return undefined;
    }
    if (!var_b106b254 && isdefined(self.closest_player_override)) {
        player = [[ self.closest_player_override ]](origin, players);
    } else if (!var_b106b254 && isdefined(level.closest_player_override)) {
        player = [[ level.closest_player_override ]](origin, players);
    } else {
        player = arraygetclosest(origin, players);
    }
    if (!isdefined(player)) {
        aiprofile_endentry();
        return undefined;
    }
    var_3bd0e427 = undefined;
    if (isdefined(player.last_valid_position)) {
        var_3bd0e427 = player.last_valid_position[2];
        var_171dce2 = abs(player.last_valid_position[2] - self.origin[2]);
        var_1029d6d2 = self function_6a9ae71();
        if (distance2dsquared(self.origin, player.last_valid_position) < sqr(self getpathfindingradius()) && var_171dce2 > var_1029d6d2 * 0.25 && var_171dce2 < var_1029d6d2 || abs(self.origin[2] - player.last_valid_position[2]) < var_1029d6d2 * 0.25) {
            var_3bd0e427 = self.origin[2];
        }
    }
    var_3d3d6684 = length(player getvelocity());
    if (!(isdefined(player.last_valid_position) && isdefined(var_3bd0e427)) || !isdefined(player getgroundent()) && !player isonladder() && var_3d3d6684 != 0 || distancesquared(player.last_valid_position, player.origin) < (isdefined(self.var_154478e3) ? self.var_154478e3 : sqr(var_3d3d6684 + 45)) && abs(var_3bd0e427 - player.origin[2]) < (isdefined(self.var_737e8510) ? self.var_737e8510 : level.var_376e688) && (is_true(level.var_9f01688e) || !is_true(player.cached_zone_volume.var_8e4005b6))) {
        if (isdefined(self.var_81e5ae7) && is_true([[ self.var_81e5ae7 ]](player))) {
            zm_ai_utility::function_68ab868a(self);
        } else {
            zm_ai_utility::function_4d22f6d1(self);
        }
    } else {
        zm_ai_utility::function_68ab868a(self);
    }
    aiprofile_endentry();
    return player;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x23e0c65, Offset: 0x6710
// Size: 0x354
function update_valid_players(*origin, ignore_player) {
    aiprofile_beginentry("update_valid_players");
    players = arraycopy(level.players);
    foreach (player in players) {
        self setignoreent(player, 1);
    }
    b_designated_target_exists = 0;
    for (i = 0; i < players.size; i++) {
        player = players[i];
        if (!is_true(player.am_i_valid)) {
            continue;
        }
        if (isdefined(level.var_63707e9c)) {
            if (![[ level.var_63707e9c ]](player)) {
                array::add(ignore_player, player);
            }
        }
        if (is_true(player.b_is_designated_target)) {
            b_designated_target_exists = 1;
        }
    }
    if (isdefined(ignore_player)) {
        for (i = 0; i < ignore_player.size; i++) {
            arrayremovevalue(players, ignore_player[i]);
        }
    }
    done = 0;
    while (players.size && !done) {
        done = 1;
        for (i = 0; i < players.size; i++) {
            player = players[i];
            if (!is_true(player.am_i_valid)) {
                arrayremovevalue(players, player);
                done = 0;
                break;
            }
            if (b_designated_target_exists && !is_true(player.b_is_designated_target)) {
                arrayremovevalue(players, player);
                done = 0;
                break;
            }
        }
    }
    foreach (player in players) {
        self setignoreent(player, 0);
        self getperfectinfo(player);
    }
    aiprofile_endentry();
}

// Namespace zm_utility/zm_utility
// Params 5, eflags: 0x2 linked
// Checksum 0xb5be238, Offset: 0x6a70
// Size: 0x204
function is_player_valid(e_player, var_11e899f9 = 0, var_67fee570 = 0, var_6eefd462 = 1, var_da861165 = 1) {
    if (!isdefined(e_player)) {
        return 0;
    }
    if (!isentity(e_player)) {
        return 0;
    }
    if (!isplayer(e_player)) {
        return 0;
    }
    if (!isalive(e_player)) {
        return 0;
    }
    if (is_true(e_player.is_zombie)) {
        return 0;
    }
    if (e_player.sessionstate == "spectator" || e_player.sessionstate == "intermission") {
        return 0;
    }
    if (is_true(level.intermission)) {
        return 0;
    }
    if (!var_67fee570) {
        if (e_player laststand::player_is_in_laststand()) {
            return 0;
        }
    }
    if (var_11e899f9) {
        if (e_player.ignoreme || e_player isnotarget()) {
            return 0;
        }
    }
    if (!var_6eefd462) {
        if (e_player isplayerunderwater()) {
            return 0;
        }
    }
    if (!var_da861165 && e_player scene::is_igc_active()) {
        return 0;
    }
    if (isdefined(level.is_player_valid_override)) {
        return [[ level.is_player_valid_override ]](e_player);
    }
    return 1;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x2042d01d, Offset: 0x6c80
// Size: 0x54
function function_1a01f2f7(e_player) {
    return isdefined(e_player.var_c069e1cd) && isdefined(level.var_173b2973) && is_true(e_player.var_c069e1cd >= level.var_173b2973);
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x245665dc, Offset: 0x6ce0
// Size: 0x78
function get_number_of_valid_players() {
    players = getplayers();
    num_player_valid = 0;
    for (i = 0; i < players.size; i++) {
        if (is_player_valid(players[i])) {
            num_player_valid += 1;
        }
    }
    return num_player_valid;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xa3f7480e, Offset: 0x6d60
// Size: 0xec
function in_revive_trigger() {
    if (isdefined(self.rt_time) && self.rt_time + 100 >= gettime()) {
        return self.in_rt_cached;
    }
    self.rt_time = gettime();
    players = level.players;
    for (i = 0; i < players.size; i++) {
        current_player = players[i];
        if (isdefined(current_player) && isdefined(current_player.revivetrigger) && isalive(current_player)) {
            if (self istouching(current_player.revivetrigger)) {
                self.in_rt_cached = 1;
                return 1;
            }
        }
    }
    self.in_rt_cached = 0;
    return 0;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x88c70a44, Offset: 0x6e58
// Size: 0x45c
function non_destroyed_bar_board_order(origin, chunks) {
    first_bars = [];
    first_bars1 = [];
    first_bars2 = [];
    for (i = 0; i < chunks.size; i++) {
        if (isdefined(chunks[i].script_team) && chunks[i].script_team == "classic_boards") {
            if (isdefined(chunks[i].script_parameters) && chunks[i].script_parameters == "board") {
                return get_closest_2d(origin, chunks);
            } else if (isdefined(chunks[i].script_team) && chunks[i].script_team == "bar_board_variant1" || chunks[i].script_team == "bar_board_variant2" || chunks[i].script_team == "bar_board_variant4" || chunks[i].script_team == "bar_board_variant5") {
                return undefined;
            }
            continue;
        }
        if (isdefined(chunks[i].script_team) && chunks[i].script_team == "new_barricade") {
            if (isdefined(chunks[i].script_parameters) && (chunks[i].script_parameters == "repair_board" || chunks[i].script_parameters == "barricade_vents")) {
                return get_closest_2d(origin, chunks);
            }
        }
    }
    for (i = 0; i < chunks.size; i++) {
        if (isdefined(chunks[i].script_team) && chunks[i].script_team == "6_bars_bent" || chunks[i].script_team == "6_bars_prestine") {
            if (isdefined(chunks[i].script_parameters) && chunks[i].script_parameters == "bar") {
                if (isdefined(chunks[i].script_noteworthy)) {
                    if (chunks[i].script_noteworthy == "4" || chunks[i].script_noteworthy == "6") {
                        first_bars[first_bars.size] = chunks[i];
                    }
                }
            }
        }
    }
    for (i = 0; i < first_bars.size; i++) {
        if (isdefined(chunks[i].script_team) && chunks[i].script_team == "6_bars_bent" || chunks[i].script_team == "6_bars_prestine") {
            if (isdefined(chunks[i].script_parameters) && chunks[i].script_parameters == "bar") {
                if (!first_bars[i].destroyed) {
                    return first_bars[i];
                }
            }
        }
    }
    for (i = 0; i < chunks.size; i++) {
        if (isdefined(chunks[i].script_team) && chunks[i].script_team == "6_bars_bent" || chunks[i].script_team == "6_bars_prestine") {
            if (isdefined(chunks[i].script_parameters) && chunks[i].script_parameters == "bar") {
                if (!chunks[i].destroyed) {
                    return get_closest_2d(origin, chunks);
                }
            }
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x9a7604c, Offset: 0x72c0
// Size: 0x494
function vehicle_outline_watcher(*origin, chunks_grate) {
    grate_order = [];
    grate_order1 = [];
    grate_order2 = [];
    grate_order3 = [];
    grate_order4 = [];
    grate_order5 = [];
    grate_order6 = [];
    if (isdefined(chunks_grate)) {
        for (i = 0; i < chunks_grate.size; i++) {
            if (isdefined(chunks_grate[i].script_parameters) && chunks_grate[i].script_parameters == "grate") {
                if (isdefined(chunks_grate[i].script_noteworthy) && chunks_grate[i].script_noteworthy == "1") {
                    grate_order1[grate_order1.size] = chunks_grate[i];
                }
                if (isdefined(chunks_grate[i].script_noteworthy) && chunks_grate[i].script_noteworthy == "2") {
                    grate_order2[grate_order2.size] = chunks_grate[i];
                }
                if (isdefined(chunks_grate[i].script_noteworthy) && chunks_grate[i].script_noteworthy == "3") {
                    grate_order3[grate_order3.size] = chunks_grate[i];
                }
                if (isdefined(chunks_grate[i].script_noteworthy) && chunks_grate[i].script_noteworthy == "4") {
                    grate_order4[grate_order4.size] = chunks_grate[i];
                }
                if (isdefined(chunks_grate[i].script_noteworthy) && chunks_grate[i].script_noteworthy == "5") {
                    grate_order5[grate_order5.size] = chunks_grate[i];
                }
                if (isdefined(chunks_grate[i].script_noteworthy) && chunks_grate[i].script_noteworthy == "6") {
                    grate_order6[grate_order6.size] = chunks_grate[i];
                }
            }
        }
        for (i = 0; i < chunks_grate.size; i++) {
            if (isdefined(chunks_grate[i].script_parameters) && chunks_grate[i].script_parameters == "grate") {
                if (isdefined(grate_order1[i])) {
                    if (grate_order1[i].state == "repaired") {
                        grate_order2[i] thread show_grate_pull();
                        return grate_order1[i];
                    }
                    if (grate_order2[i].state == "repaired") {
                        /#
                            iprintlnbold("<unknown string>");
                        #/
                        grate_order3[i] thread show_grate_pull();
                        return grate_order2[i];
                    }
                    if (grate_order3[i].state == "repaired") {
                        /#
                            iprintlnbold("<unknown string>");
                        #/
                        grate_order4[i] thread show_grate_pull();
                        return grate_order3[i];
                    }
                    if (grate_order4[i].state == "repaired") {
                        /#
                            iprintlnbold("<unknown string>");
                        #/
                        grate_order5[i] thread show_grate_pull();
                        return grate_order4[i];
                    }
                    if (grate_order5[i].state == "repaired") {
                        /#
                            iprintlnbold("<unknown string>");
                        #/
                        grate_order6[i] thread show_grate_pull();
                        return grate_order5[i];
                    }
                    if (grate_order6[i].state == "repaired") {
                        return grate_order6[i];
                    }
                }
            }
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x5c09da43, Offset: 0x7760
// Size: 0x5c
function show_grate_pull() {
    wait(0.53);
    self show();
    self vibrate((0, 270, 0), 0.2, 0.4, 0.4);
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x53c6b7b8, Offset: 0x77c8
// Size: 0x1c6
function get_closest_2d(origin, ents) {
    if (!isdefined(ents)) {
        return undefined;
    }
    dist = distance2d(origin, ents[0].origin);
    index = 0;
    temp_array = [];
    for (i = 1; i < ents.size; i++) {
        if (isdefined(ents[i].unbroken) && ents[i].unbroken == 1) {
            ents[i].index = i;
            if (!isdefined(temp_array)) {
                temp_array = [];
            } else if (!isarray(temp_array)) {
                temp_array = array(temp_array);
            }
            temp_array[temp_array.size] = ents[i];
        }
    }
    if (temp_array.size > 0) {
        index = temp_array[randomintrange(0, temp_array.size)].index;
        return ents[index];
    }
    for (i = 1; i < ents.size; i++) {
        temp_dist = distance2d(origin, ents[i].origin);
        if (temp_dist < dist) {
            dist = temp_dist;
            index = i;
        }
    }
    return ents[index];
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xbc76bfa2, Offset: 0x7998
// Size: 0x206
function in_playable_area() {
    if (function_21f4ac36() && !isdefined(level.var_a2a9b2de)) {
        level.var_a2a9b2de = getnodearray("player_region", "script_noteworthy");
    }
    if (function_c85ebbbc() && !isdefined(level.playable_area)) {
        level.playable_area = getentarray("player_volume", "script_noteworthy");
    }
    if (!isdefined(level.playable_area) && !isdefined(level.var_a2a9b2de)) {
        println("<unknown string>");
        return true;
    }
    if (isdefined(level.playable_area)) {
        var_12ed21a1 = function_72d3bca6(level.playable_area, self.origin, undefined, undefined, level.var_603981f1);
        foreach (area in var_12ed21a1) {
            if (self istouching(area)) {
                return true;
            }
        }
    }
    if (isdefined(level.var_a2a9b2de)) {
        node = function_52c1730(self.origin, level.var_a2a9b2de, 500);
        if (isdefined(node)) {
            return true;
        }
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x2 linked
// Checksum 0x5acd14d1, Offset: 0x7ba8
// Size: 0x10e
function get_closest_non_destroyed_chunk(origin, barrier, barrier_chunks) {
    chunks = undefined;
    chunks_grate = undefined;
    chunks_grate = get_non_destroyed_chunks_grate(barrier, barrier_chunks);
    chunks = get_non_destroyed_chunks(barrier, barrier_chunks);
    if (isdefined(barrier.zbarrier)) {
        if (isdefined(chunks)) {
            return array::randomize(chunks)[0];
        }
        if (isdefined(chunks_grate)) {
            return array::randomize(chunks_grate)[0];
        }
    } else if (isdefined(chunks)) {
        return non_destroyed_bar_board_order(origin, chunks);
    } else if (isdefined(chunks_grate)) {
        return vehicle_outline_watcher(origin, chunks_grate);
    }
    return undefined;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xf1dd1ddd, Offset: 0x7cc0
// Size: 0x118
function get_random_destroyed_chunk(barrier, barrier_chunks) {
    if (isdefined(barrier.zbarrier)) {
        ret = undefined;
        pieces = barrier.zbarrier getzbarrierpieceindicesinstate("open");
        if (pieces.size) {
            ret = array::randomize(pieces)[0];
        }
        return ret;
    }
    chunks_repair_grate = undefined;
    chunks = get_destroyed_chunks(barrier_chunks);
    chunks_repair_grate = get_destroyed_repair_grates(barrier_chunks);
    if (isdefined(chunks)) {
        return chunks[randomint(chunks.size)];
    } else if (isdefined(chunks_repair_grate)) {
        return grate_order_destroyed(chunks_repair_grate);
    }
    return undefined;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x562406ec, Offset: 0x7de0
// Size: 0x9e
function get_destroyed_repair_grates(barrier_chunks) {
    array = [];
    for (i = 0; i < barrier_chunks.size; i++) {
        if (isdefined(barrier_chunks[i])) {
            if (isdefined(barrier_chunks[i].script_parameters) && barrier_chunks[i].script_parameters == "grate") {
                array[array.size] = barrier_chunks[i];
            }
        }
    }
    if (array.size == 0) {
        return undefined;
    }
    return array;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xdcc7400a, Offset: 0x7e88
// Size: 0x38a
function get_non_destroyed_chunks(barrier, barrier_chunks) {
    if (isdefined(barrier.zbarrier)) {
        return barrier.zbarrier getzbarrierpieceindicesinstate("closed");
    }
    array = [];
    for (i = 0; i < barrier_chunks.size; i++) {
        if (isdefined(barrier_chunks[i].script_team) && barrier_chunks[i].script_team == "classic_boards") {
            if (isdefined(barrier_chunks[i].script_parameters) && barrier_chunks[i].script_parameters == "board") {
                if (barrier_chunks[i] get_chunk_state() == "repaired") {
                    if (barrier_chunks[i].origin == barrier_chunks[i].og_origin) {
                        array[array.size] = barrier_chunks[i];
                    }
                }
            }
        }
        if (isdefined(barrier_chunks[i].script_team) && barrier_chunks[i].script_team == "new_barricade") {
            if (isdefined(barrier_chunks[i].script_parameters) && (barrier_chunks[i].script_parameters == "repair_board" || barrier_chunks[i].script_parameters == "barricade_vents")) {
                if (barrier_chunks[i] get_chunk_state() == "repaired") {
                    if (barrier_chunks[i].origin == barrier_chunks[i].og_origin) {
                        array[array.size] = barrier_chunks[i];
                    }
                }
            }
            continue;
        }
        if (isdefined(barrier_chunks[i].script_team) && barrier_chunks[i].script_team == "6_bars_bent") {
            if (isdefined(barrier_chunks[i].script_parameters) && barrier_chunks[i].script_parameters == "bar") {
                if (barrier_chunks[i] get_chunk_state() == "repaired") {
                    if (barrier_chunks[i].origin == barrier_chunks[i].og_origin) {
                        array[array.size] = barrier_chunks[i];
                    }
                }
            }
            continue;
        }
        if (isdefined(barrier_chunks[i].script_team) && barrier_chunks[i].script_team == "6_bars_prestine") {
            if (isdefined(barrier_chunks[i].script_parameters) && barrier_chunks[i].script_parameters == "bar") {
                if (barrier_chunks[i] get_chunk_state() == "repaired") {
                    if (barrier_chunks[i].origin == barrier_chunks[i].og_origin) {
                        array[array.size] = barrier_chunks[i];
                    }
                }
            }
        }
    }
    if (array.size == 0) {
        return undefined;
    }
    return array;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xdb9630, Offset: 0x8220
// Size: 0xdc
function get_non_destroyed_chunks_grate(barrier, barrier_chunks) {
    if (isdefined(barrier.zbarrier)) {
        return barrier.zbarrier getzbarrierpieceindicesinstate("closed");
    }
    array = [];
    for (i = 0; i < barrier_chunks.size; i++) {
        if (isdefined(barrier_chunks[i].script_parameters) && barrier_chunks[i].script_parameters == "grate") {
            if (isdefined(barrier_chunks[i])) {
                array[array.size] = barrier_chunks[i];
            }
        }
    }
    if (array.size == 0) {
        return undefined;
    }
    return array;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xaebd1c09, Offset: 0x8308
// Size: 0x1a0
function get_destroyed_chunks(barrier_chunks) {
    array = [];
    for (i = 0; i < barrier_chunks.size; i++) {
        if (barrier_chunks[i] get_chunk_state() == "destroyed") {
            if (isdefined(barrier_chunks[i].script_parameters) && barrier_chunks[i].script_parameters == "board") {
                array[array.size] = barrier_chunks[i];
                continue;
            }
            if (isdefined(barrier_chunks[i].script_parameters) && barrier_chunks[i].script_parameters == "repair_board" || barrier_chunks[i].script_parameters == "barricade_vents") {
                array[array.size] = barrier_chunks[i];
                continue;
            }
            if (isdefined(barrier_chunks[i].script_parameters) && barrier_chunks[i].script_parameters == "bar") {
                array[array.size] = barrier_chunks[i];
                continue;
            }
            if (isdefined(barrier_chunks[i].script_parameters) && barrier_chunks[i].script_parameters == "grate") {
                return undefined;
            }
        }
    }
    if (array.size == 0) {
        return undefined;
    }
    return array;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x68ed1a54, Offset: 0x84b0
// Size: 0x4c4
function grate_order_destroyed(chunks_repair_grate) {
    grate_repair_order = [];
    grate_repair_order1 = [];
    grate_repair_order2 = [];
    grate_repair_order3 = [];
    grate_repair_order4 = [];
    grate_repair_order5 = [];
    grate_repair_order6 = [];
    for (i = 0; i < chunks_repair_grate.size; i++) {
        if (isdefined(chunks_repair_grate[i].script_parameters) && chunks_repair_grate[i].script_parameters == "grate") {
            if (isdefined(chunks_repair_grate[i].script_noteworthy) && chunks_repair_grate[i].script_noteworthy == "1") {
                grate_repair_order1[grate_repair_order1.size] = chunks_repair_grate[i];
            }
            if (isdefined(chunks_repair_grate[i].script_noteworthy) && chunks_repair_grate[i].script_noteworthy == "2") {
                grate_repair_order2[grate_repair_order2.size] = chunks_repair_grate[i];
            }
            if (isdefined(chunks_repair_grate[i].script_noteworthy) && chunks_repair_grate[i].script_noteworthy == "3") {
                grate_repair_order3[grate_repair_order3.size] = chunks_repair_grate[i];
            }
            if (isdefined(chunks_repair_grate[i].script_noteworthy) && chunks_repair_grate[i].script_noteworthy == "4") {
                grate_repair_order4[grate_repair_order4.size] = chunks_repair_grate[i];
            }
            if (isdefined(chunks_repair_grate[i].script_noteworthy) && chunks_repair_grate[i].script_noteworthy == "5") {
                grate_repair_order5[grate_repair_order5.size] = chunks_repair_grate[i];
            }
            if (isdefined(chunks_repair_grate[i].script_noteworthy) && chunks_repair_grate[i].script_noteworthy == "6") {
                grate_repair_order6[grate_repair_order6.size] = chunks_repair_grate[i];
            }
        }
    }
    for (i = 0; i < chunks_repair_grate.size; i++) {
        if (isdefined(chunks_repair_grate[i].script_parameters) && chunks_repair_grate[i].script_parameters == "grate") {
            if (isdefined(grate_repair_order1[i])) {
                if (grate_repair_order6[i].state == "destroyed") {
                    /#
                        iprintlnbold("<unknown string>");
                    #/
                    return grate_repair_order6[i];
                }
                if (grate_repair_order5[i].state == "destroyed") {
                    /#
                        iprintlnbold("<unknown string>");
                    #/
                    grate_repair_order6[i] thread show_grate_repair();
                    return grate_repair_order5[i];
                }
                if (grate_repair_order4[i].state == "destroyed") {
                    /#
                        iprintlnbold("<unknown string>");
                    #/
                    grate_repair_order5[i] thread show_grate_repair();
                    return grate_repair_order4[i];
                }
                if (grate_repair_order3[i].state == "destroyed") {
                    /#
                        iprintlnbold("<unknown string>");
                    #/
                    grate_repair_order4[i] thread show_grate_repair();
                    return grate_repair_order3[i];
                }
                if (grate_repair_order2[i].state == "destroyed") {
                    /#
                        iprintlnbold("<unknown string>");
                    #/
                    grate_repair_order3[i] thread show_grate_repair();
                    return grate_repair_order2[i];
                }
                if (grate_repair_order1[i].state == "destroyed") {
                    /#
                        iprintlnbold("<unknown string>");
                    #/
                    grate_repair_order2[i] thread show_grate_repair();
                    return grate_repair_order1[i];
                }
            }
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x8697d17e, Offset: 0x8980
// Size: 0x24
function show_grate_repair() {
    wait(0.34);
    self hide();
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xf58d057, Offset: 0x89b0
// Size: 0x2a
function get_chunk_state() {
    assert(isdefined(self.state));
    return self.state;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xb13bedfa, Offset: 0x89e8
// Size: 0x138
function fake_physicslaunch(target_pos, power) {
    start_pos = self.origin;
    gravity = getdvarint(#"bg_gravity", 0) * -1;
    dist = distance(start_pos, target_pos);
    time = dist / power;
    delta = target_pos - start_pos;
    drop = 0.5 * gravity * time * time;
    velocity = (delta[0] / time, delta[1] / time, (delta[2] - drop) / time);
    /#
        level thread draw_line_ent_to_pos(self, target_pos);
    #/
    self movegravity(velocity, time);
    return time;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x75687707, Offset: 0x8b28
// Size: 0x40
function add_zombie_hint(ref, text) {
    if (!isdefined(level.zombie_hints)) {
        level.zombie_hints = [];
    }
    level.zombie_hints[ref] = text;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x940cc0a3, Offset: 0x8b70
// Size: 0x6c
function get_zombie_hint(ref) {
    if (isdefined(level.zombie_hints[ref])) {
        return level.zombie_hints[ref];
    }
    println("<unknown string>" + ref);
    return level.zombie_hints[#"undefined"];
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x2 linked
// Checksum 0x57e91323, Offset: 0x8be8
// Size: 0xa4
function set_hint_string(ent, default_ref, cost) {
    ref = default_ref;
    if (isdefined(ent.script_hint)) {
        ref = ent.script_hint;
    }
    hint = get_zombie_hint(ref);
    if (isdefined(cost)) {
        self sethintstring(hint, cost);
        return;
    }
    self sethintstring(hint);
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x2 linked
// Checksum 0x73fe2418, Offset: 0x8c98
// Size: 0x5a
function get_hint_string(ent, default_ref, *cost) {
    ref = cost;
    if (isdefined(default_ref.script_hint)) {
        ref = default_ref.script_hint;
    }
    return get_zombie_hint(ref);
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x6537b367, Offset: 0x8d00
// Size: 0x40
function add_sound(ref, alias) {
    if (!isdefined(level.zombie_sounds)) {
        level.zombie_sounds = [];
    }
    level.zombie_sounds[ref] = alias;
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x2 linked
// Checksum 0xfbe95832, Offset: 0x8d48
// Size: 0xec
function play_sound_at_pos(ref, pos, ent) {
    if (isdefined(ent)) {
        if (isdefined(ent.script_soundalias)) {
            playsoundatposition(ent.script_soundalias, pos);
            return;
        }
        if (isdefined(self.script_sound)) {
            ref = self.script_sound;
        }
    }
    if (ref == "none") {
        return;
    }
    if (!isdefined(level.zombie_sounds[ref])) {
        assertmsg("<unknown string>" + ref + "<unknown string>");
        return;
    }
    playsoundatposition(level.zombie_sounds[ref], pos);
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x9a219038, Offset: 0x8e40
// Size: 0xc4
function play_sound_on_ent(ref) {
    if (isdefined(self.script_soundalias)) {
        self playsound(self.script_soundalias);
        return;
    }
    if (isdefined(self.script_sound)) {
        ref = self.script_sound;
    }
    if (ref == "none") {
        return;
    }
    if (!isdefined(level.zombie_sounds[ref])) {
        assertmsg("<unknown string>" + ref + "<unknown string>");
        return;
    }
    self playsound(level.zombie_sounds[ref]);
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0xd2a16b6, Offset: 0x8f10
// Size: 0x94
function play_loopsound_on_ent(ref) {
    if (isdefined(self.script_firefxsound)) {
        ref = self.script_firefxsound;
    }
    if (ref == "none") {
        return;
    }
    if (!isdefined(level.zombie_sounds[ref])) {
        assertmsg("<unknown string>" + ref + "<unknown string>");
        return;
    }
    self playsound(level.zombie_sounds[ref]);
}

/#

    // Namespace zm_utility/zm_utility
    // Params 2, eflags: 0x0
    // Checksum 0x1ce5717c, Offset: 0x8fb0
    // Size: 0xa6
    function draw_line_ent_to_ent(ent1, ent2) {
        if (getdvarint(#"zombie_debug", 0) != 1) {
            return;
        }
        ent1 endon(#"death");
        ent2 endon(#"death");
        while (true) {
            line(ent1.origin, ent2.origin);
            waitframe(1);
        }
    }

    // Namespace zm_utility/zm_utility
    // Params 3, eflags: 0x0
    // Checksum 0xafc60572, Offset: 0x9060
    // Size: 0xbe
    function draw_line_ent_to_pos(ent, pos, end_on) {
        if (getdvarint(#"zombie_debug", 0) != 1) {
            return;
        }
        ent notify(#"stop_draw_line_ent_to_pos");
        ent endon(#"stop_draw_line_ent_to_pos", #"death");
        if (isdefined(end_on)) {
            ent endon(end_on);
        }
        while (true) {
            line(ent.origin, pos);
            waitframe(1);
        }
    }

    // Namespace zm_utility/zm_utility
    // Params 1, eflags: 0x0
    // Checksum 0xda895205, Offset: 0x9128
    // Size: 0x5c
    function debug_print(msg) {
        if (getdvarint(#"zombie_debug", 0) > 0) {
            println("<unknown string>" + msg);
        }
    }

    // Namespace zm_utility/zm_utility
    // Params 3, eflags: 0x0
    // Checksum 0xa5c0153a, Offset: 0x9190
    // Size: 0x98
    function debug_blocker(pos, rad, height) {
        self notify(#"stop_debug_blocker");
        self endon(#"stop_debug_blocker");
        for (;;) {
            if (getdvarint(#"zombie_debug", 0) != 1) {
                return;
            }
            waitframe(1);
            drawcylinder(pos, rad, height);
        }
    }

    // Namespace zm_utility/zm_utility
    // Params 3, eflags: 0x0
    // Checksum 0x51e02f6, Offset: 0x9230
    // Size: 0x234
    function drawcylinder(pos, rad, height) {
        currad = rad;
        curheight = height;
        for (r = 0; r < 20; r++) {
            theta = r / 20 * 360;
            theta2 = (r + 1) / 20 * 360;
            line(pos + (cos(theta) * currad, sin(theta) * currad, 0), pos + (cos(theta2) * currad, sin(theta2) * currad, 0));
            line(pos + (cos(theta) * currad, sin(theta) * currad, curheight), pos + (cos(theta2) * currad, sin(theta2) * currad, curheight));
            line(pos + (cos(theta) * currad, sin(theta) * currad, 0), pos + (cos(theta) * currad, sin(theta) * currad, curheight));
        }
    }

    // Namespace zm_utility/zm_utility
    // Params 0, eflags: 0x0
    // Checksum 0x1e31f9e4, Offset: 0x9470
    // Size: 0x170
    function debug_attack_spots_taken() {
        self notify(#"stop_debug_breadcrumbs");
        self endon(#"stop_debug_breadcrumbs");
        while (true) {
            if (getdvarint(#"zombie_debug", 0) != 2) {
                wait(1);
                continue;
            }
            waitframe(1);
            count = 0;
            for (i = 0; i < self.attack_spots_taken.size; i++) {
                if (self.attack_spots_taken[i]) {
                    count++;
                    circle(self.attack_spots[i], 12, (1, 0, 0), 0, 1, 1);
                    continue;
                }
                circle(self.attack_spots[i], 12, (0, 1, 0), 0, 1, 1);
            }
            msg = "<unknown string>" + count + "<unknown string>" + self.attack_spots_taken.size;
            print3d(self.origin, msg);
        }
    }

    // Namespace zm_utility/zm_utility
    // Params 2, eflags: 0x0
    // Checksum 0xa882a8b, Offset: 0x95e8
    // Size: 0xa6
    function float_print3d(msg, time) {
        self endon(#"death");
        time = gettime() + time * 1000;
        offset = (0, 0, 72);
        while (gettime() < time) {
            offset += (0, 0, 2);
            print3d(self.origin + offset, msg, (1, 1, 1));
            waitframe(1);
        }
    }

#/

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x14b66247, Offset: 0x9698
// Size: 0x114
function do_player_vo(snd, variation_count) {
    index = get_player_index(self);
    sound = "zmb_vox_plr_" + index + "_" + snd;
    if (isdefined(variation_count)) {
        sound = sound + "_" + randomintrange(0, variation_count);
    }
    if (!isdefined(level.player_is_speaking)) {
        level.player_is_speaking = 0;
    }
    if (level.player_is_speaking == 0) {
        level.player_is_speaking = 1;
        self playsoundwithnotify(sound, "sound_done");
        self waittill(#"sound_done");
        wait(2);
        level.player_is_speaking = 0;
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xab2d08e7, Offset: 0x97b8
// Size: 0x34
function is_magic_bullet_shield_enabled(ent) {
    if (!isdefined(ent)) {
        return false;
    }
    return !is_true(ent.allowdeath);
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x3d7c83d9, Offset: 0x97f8
// Size: 0x8c
function play_sound_2d(sound) {
    temp_ent = spawn("script_origin", (0, 0, 0));
    temp_ent playsoundwithnotify(sound, sound + "wait");
    temp_ent waittill(sound + "wait");
    waitframe(1);
    temp_ent delete();
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x6cb25136, Offset: 0x9890
// Size: 0x6c
function include_weapon(weapon_name, in_box) {
    println("<unknown string>" + function_9e72a96(weapon_name));
    if (!isdefined(in_box)) {
        in_box = 1;
    }
    zm_weapons::include_zombie_weapon(weapon_name, in_box);
}

// Namespace zm_utility/zm_utility
// Params 6, eflags: 0x0
// Checksum 0x28675033, Offset: 0x9908
// Size: 0x146
function print3d_ent(text, color, scale, offset, end_msg, overwrite) {
    self endon(#"death");
    if (isdefined(overwrite) && overwrite && isdefined(self._debug_print3d_msg)) {
        self notify(#"end_print3d");
        waitframe(1);
    }
    self endon(#"end_print3d");
    if (!isdefined(color)) {
        color = (1, 1, 1);
    }
    if (!isdefined(scale)) {
        scale = 1;
    }
    if (!isdefined(offset)) {
        offset = (0, 0, 0);
    }
    if (isdefined(end_msg)) {
        self endon(end_msg);
    }
    self._debug_print3d_msg = text;
    /#
        while (!is_true(level.disable_print3d_ent)) {
            print3d(self.origin + offset, self._debug_print3d_msg, color, scale);
            waitframe(1);
        }
    #/
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xcc0508a9, Offset: 0x9a58
// Size: 0x30
function function_21f4ac36() {
    return getdvarint(#"hash_42c75b39576494a5", 1) == 1;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x5086e39d, Offset: 0x9a90
// Size: 0x30
function function_c85ebbbc() {
    return getdvarint(#"hash_6ec233a56690f409", 1) == 1;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x0
// Checksum 0x1b1b0662, Offset: 0x9ac8
// Size: 0x3a
function function_b0eeaada(location, max_drop_distance = 500) {
    return function_9cc082d2(location, max_drop_distance);
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x0
// Checksum 0xa8cd563d, Offset: 0x9b10
// Size: 0x46
function function_a1055d95(location, node) {
    return isdefined(location) && location[#"region"] === getnoderegion(node);
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x13bb668, Offset: 0x9b60
// Size: 0x3ec
function get_current_zone(return_zone = 0, immediate = 1) {
    if (!isdefined(self)) {
        return undefined;
    }
    self endon(#"death");
    level flag::wait_till("zones_initialized");
    if (function_c85ebbbc()) {
        volumes = function_72d3bca6(level.var_541a988b, self.origin, undefined, undefined, level.var_603981f1);
        for (i = 0; i < volumes.size; i++) {
            if (self istouching(volumes[i])) {
                zone = level.zones[volumes[i].targetname];
                if (zone !== self.cached_zone) {
                    self.cached_zone = zone;
                    self.cached_zone_name = zone.name;
                    self.var_3b65cdd7 = undefined;
                    self notify(#"zone_change", {#zone:zone, #zone_name:zone.name});
                }
                self.cached_zone_volume = volumes[i];
                if (is_true(return_zone)) {
                    return zone;
                }
                return zone.name;
            }
        }
    }
    if (!immediate) {
        waitframe(1);
    }
    if (function_21f4ac36()) {
        node = self.var_3b65cdd7;
        var_3e5dca65 = self.origin;
        if (isplayer(self)) {
            if (isdefined(self.last_valid_position) && distancesquared(self.origin, self.last_valid_position) < sqr(32)) {
                var_3e5dca65 = self.last_valid_position;
            }
        }
        if (isdefined(var_3e5dca65)) {
            self.var_3b65cdd7 = function_52c1730(var_3e5dca65, level.zone_nodes, 500);
            if (isdefined(self.var_3b65cdd7)) {
                if (node !== self.var_3b65cdd7 || isdefined(node) && node.targetname !== self.var_3b65cdd7.targetname) {
                    self.cached_zone = level.zones[self.var_3b65cdd7.targetname];
                    self.cached_zone_name = self.cached_zone.name;
                    self notify(#"zone_change", {#zone:self.cached_zone, #zone_name:self.cached_zone_name});
                }
                self.cached_zone_volume = undefined;
                if (return_zone) {
                    return level.zones[self.var_3b65cdd7.targetname];
                } else {
                    return self.var_3b65cdd7.targetname;
                }
            }
        }
    }
    self.cached_zone = undefined;
    self.cached_zone_name = undefined;
    self.cached_zone_volume = undefined;
    self.var_3b65cdd7 = undefined;
    return undefined;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xa8f7c9b2, Offset: 0x9f58
// Size: 0x78
function update_zone_name() {
    self notify("21933cba123d42a");
    self endon("21933cba123d42a");
    self endon(#"death");
    while (isdefined(self)) {
        self.zone_name = get_current_zone(0, 0);
        wait(randomfloatrange(0.5, 1));
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x138d4729, Offset: 0x9fd8
// Size: 0x300
function shock_onpain() {
    self notify(#"stop_shock_onpain");
    self endon(#"stop_shock_onpain", #"death");
    if (getdvarstring(#"blurpain") == "") {
        setdvar(#"blurpain", "on");
    }
    while (true) {
        oldhealth = self.health;
        waitresult = self waittill(#"damage");
        mod = waitresult.mod;
        damage = waitresult.amount;
        attacker = waitresult.attacker;
        direction_vec = waitresult.direction;
        point = waitresult.position;
        if (isdefined(level.shock_onpain) && !level.shock_onpain) {
            continue;
        }
        if (isdefined(self.shock_onpain) && !self.shock_onpain) {
            continue;
        }
        if (self.health < 1) {
            continue;
        }
        if (isdefined(attacker) && isdefined(attacker.custom_player_shellshock)) {
            self [[ attacker.custom_player_shellshock ]](damage, attacker, direction_vec, point, mod);
            continue;
        }
        if (mod == "MOD_PROJECTILE" || mod == "MOD_PROJECTILE_SPLASH") {
            continue;
        }
        if (mod == "MOD_GRENADE_SPLASH" || mod == "MOD_GRENADE" || mod == "MOD_EXPLOSIVE") {
            shocktype = undefined;
            shocklight = undefined;
            if (is_true(self.is_burning)) {
                shocktype = "lava";
                shocklight = "lava_small";
            }
            self shock_onexplosion(damage, shocktype, shocklight);
            continue;
        }
        if (getdvarstring(#"blurpain") == "on") {
            self shellshock(#"pain_zm", 0.5);
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x2 linked
// Checksum 0x820921ef, Offset: 0xa2e0
// Size: 0x10c
function shock_onexplosion(damage, shocktype, shocklight) {
    time = 0;
    scaled_damage = 100 * damage / self.maxhealth;
    if (scaled_damage >= 90) {
        time = 4;
    } else if (scaled_damage >= 50) {
        time = 3;
    } else if (scaled_damage >= 25) {
        time = 2;
    } else if (scaled_damage > 10) {
        time = 1;
    }
    if (time) {
        if (!isdefined(shocktype)) {
            shocktype = "explosion_zm";
        }
        self shellshock(shocktype, time);
        return;
    }
    if (isdefined(shocklight)) {
        self shellshock(shocklight, time);
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xd42fb329, Offset: 0xa3f8
// Size: 0xb0
function increment_is_drinking(var_12d2689b = 0) {
    /#
        if (is_true(level.devgui_dpad_watch)) {
            self.is_drinking++;
            return;
        }
    #/
    if (!isdefined(self.is_drinking)) {
        self.is_drinking = 0;
    }
    if (self.is_drinking == 0) {
        if (!var_12d2689b) {
            self disableoffhandweapons();
        }
        self disableweaponcycling();
    }
    self.is_drinking++;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x108cf374, Offset: 0xa4b0
// Size: 0x4e
function is_drinking() {
    return isdefined(self.is_drinking) && self.is_drinking > 0 || isplayer(self) && self function_55acff10();
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xcf45e803, Offset: 0xa508
// Size: 0x1e
function is_multiple_drinking() {
    return isdefined(self.is_drinking) && self.is_drinking > 1;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x4398fb9a, Offset: 0xa530
// Size: 0x74
function decrement_is_drinking() {
    if (self.is_drinking > 0) {
        self.is_drinking--;
    } else {
        assertmsg("<unknown string>");
    }
    if (self.is_drinking == 0) {
        self enableoffhandweapons();
        self enableweaponcycling();
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x1dd432ca, Offset: 0xa5b0
// Size: 0x3c
function clear_is_drinking() {
    self.is_drinking = 0;
    self enableoffhandweapons();
    self enableweaponcycling();
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x918d3129, Offset: 0xa5f8
// Size: 0x2e
function function_91403f47() {
    if (!isdefined(level.var_1d72fbba)) {
        level.var_1d72fbba = 0;
    }
    return level.var_1d72fbba > 0;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0x708530b6, Offset: 0xa630
// Size: 0x2c
function function_3e549e65() {
    if (!isdefined(level.var_1d72fbba)) {
        level.var_1d72fbba = 0;
    }
    level.var_1d72fbba++;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0x9f02319d, Offset: 0xa668
// Size: 0x74
function function_b7e5029f() {
    if (!isdefined(level.var_1d72fbba)) {
        level.var_1d72fbba = 0;
    }
    if (level.var_1d72fbba > 0) {
        level.var_1d72fbba--;
    } else {
        assertmsg("<unknown string>");
    }
    level zm_player::function_8ef51109();
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x2 linked
// Checksum 0x539d2047, Offset: 0xa6e8
// Size: 0x178
function can_use(e_player, b_is_weapon = 0, var_67fee570 = 0) {
    if (!is_player_valid(e_player, 0, var_67fee570) || e_player in_revive_trigger() || e_player isthrowinggrenade() || e_player isswitchingweapons() || e_player is_drinking()) {
        return false;
    }
    if (b_is_weapon) {
        w_current = e_player getcurrentweapon();
        if (!e_player zm_magicbox::can_buy_weapon(0) || e_player bgb::is_enabled(#"zm_bgb_disorderly_combat") || zm_loadout::is_placeable_mine(w_current) || zm_equipment::is_equipment(w_current) || ability_util::is_weapon_gadget(w_current)) {
            return false;
        }
    }
    return true;
}

// Namespace zm_utility/zm_utility
// Params 6, eflags: 0x2 linked
// Checksum 0xc559229, Offset: 0xa868
// Size: 0xd8
function spawn_weapon_model(weapon, model = weapon.worldmodel, origin, angles, renderoptionsweapon, var_fd90b0bb) {
    weapon_model = spawn("script_model", origin);
    if (isdefined(angles)) {
        weapon_model.angles = angles;
    }
    if (isdefined(renderoptionsweapon) || isdefined(var_fd90b0bb)) {
        weapon_model useweaponmodel(weapon, model, renderoptionsweapon, var_fd90b0bb);
    } else {
        weapon_model useweaponmodel(weapon, model);
    }
    return weapon_model;
}

// Namespace zm_utility/zm_utility
// Params 5, eflags: 0x2 linked
// Checksum 0xb86973ba, Offset: 0xa948
// Size: 0x130
function spawn_buildkit_weapon_model(player, weapon, var_3ded6a21, origin, angles) {
    weapon_model = util::spawn_model("tag_origin", origin, angles);
    if (!isdefined(weapon)) {
        return weapon_model;
    }
    upgraded = zm_weapons::is_weapon_upgraded(weapon);
    if (isplayer(player)) {
        if (upgraded && (!isdefined(var_3ded6a21) || 0 > var_3ded6a21)) {
            var_3ded6a21 = player zm_camos::function_4f727cf5(weapon);
        }
        weapon_model usebuildkitweaponmodel(player, weapon, var_3ded6a21);
    } else if (isdefined(weapon.worldmodel)) {
        weapon_model setmodel(weapon.worldmodel);
    }
    return weapon_model;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x2d98e01d, Offset: 0xaa80
// Size: 0x3c
function is_limited_weapon(weapon) {
    if (isdefined(level.limited_weapons) && isdefined(level.limited_weapons[weapon])) {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xbfaa1242, Offset: 0xaac8
// Size: 0x1a
function should_watch_for_emp() {
    return is_true(level.should_watch_for_emp);
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x1969ab09, Offset: 0xaaf0
// Size: 0x44
function groundpos(origin) {
    return bullettrace(origin, origin + (0, 0, -100000), 0, self)[#"position"];
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x2926dbd1, Offset: 0xab40
// Size: 0x4c
function groundpos_ignore_water(origin) {
    return bullettrace(origin, origin + (0, 0, -100000), 0, self, 1)[#"position"];
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x32170107, Offset: 0xab98
// Size: 0x4c
function groundpos_ignore_water_new(origin) {
    return groundtrace(origin, origin + (0, 0, -100000), 0, self, 1)[#"position"];
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x84b32b0e, Offset: 0xabf0
// Size: 0x24
function self_delete() {
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x91b51f94, Offset: 0xac20
// Size: 0x5a
function ignore_triggers(timer) {
    if (!isdefined(self)) {
        return;
    }
    self endon(#"death");
    self.ignoretriggers = 1;
    if (isdefined(timer)) {
        wait(timer);
    } else {
        wait(0.5);
    }
    self.ignoretriggers = 0;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x3353d3c1, Offset: 0xac88
// Size: 0x174
function function_659819fa(achievement, all_players = 0) {
    if (achievement == "") {
        return;
    }
    if (is_true(level.zm_disable_recording_stats)) {
        return;
    }
    assert(ishash(achievement), "<unknown string>");
    if (all_players) {
        foreach (player in getplayers()) {
            player giveachievement(achievement);
        }
        return;
    }
    if (!isplayer(self)) {
        assertmsg("<unknown string>");
        return;
    }
    self giveachievement(achievement);
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xd3eb873d, Offset: 0xae08
// Size: 0x3e
function getyaw(org) {
    angles = vectortoangles(org - self.origin);
    return angles[1];
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xb7653439, Offset: 0xae50
// Size: 0x62
function getyawtospot(spot) {
    pos = spot;
    yaw = self.angles[1] - getyaw(pos);
    yaw = angleclamp180(yaw);
    return yaw;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xcb80dbe5, Offset: 0xaec0
// Size: 0x3e
function disable_react() {
    assert(isalive(self), "<unknown string>");
    self.allowreact = 0;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0x78768da7, Offset: 0xaf08
// Size: 0x42
function enable_react() {
    assert(isalive(self), "<unknown string>");
    self.allowreact = 1;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x36c81ba6, Offset: 0xaf58
// Size: 0x9a
function is_ee_enabled() {
    if (is_true(level.var_73d1e054)) {
        return false;
    }
    if (!getdvarint(#"zm_ee_enabled", 0)) {
        return false;
    }
    if (!is_true(zm_custom::function_901b751c(#"hash_3c5363541b97ca3e"))) {
        return false;
    }
    if (level.gamedifficulty === 0) {
        return false;
    }
    return true;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xe68cfc18, Offset: 0xb000
// Size: 0x7a
function function_36e7b4a2() {
    if (is_true(getgametypesetting(#"hash_5d6471cd7038852e")) && !is_true(getgametypesetting(#"hash_1e1a5ebefe2772ba"))) {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x683ca167, Offset: 0xb088
// Size: 0x30
function bullet_attack(type) {
    if (type == "MOD_PISTOL_BULLET") {
        return true;
    }
    return type == "MOD_RIFLE_BULLET";
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x2306d55e, Offset: 0xb0c0
// Size: 0x9c
function pick_up() {
    player = self.owner;
    self delete();
    clip_ammo = player getweaponammoclip(self.weapon);
    clip_max_ammo = self.weapon.clipsize;
    if (clip_ammo < clip_max_ammo) {
        clip_ammo++;
    }
    player setweaponammoclip(self.weapon, clip_ammo);
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xf148061f, Offset: 0xb168
// Size: 0x98
function function_ab9a9770() {
    s_trace = groundtrace(self.origin + (0, 0, 70), self.origin + (0, 0, -100), 0, self);
    if (isdefined(s_trace[#"entity"]) && s_trace[#"entity"] ismovingplatform()) {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0xf6386546, Offset: 0xb208
// Size: 0x82
function function_52046128() {
    s_trace = groundtrace(self.origin + (0, 0, 70), self.origin + (0, 0, -100), 0, self);
    if (isdefined(s_trace[#"entity"])) {
        return s_trace[#"entity"];
    }
    return undefined;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0xfec92ba3, Offset: 0xb298
// Size: 0xae
function waittill_not_moving() {
    self endon(#"death", #"detonated");
    level endon(#"game_ended");
    if (self.classname == "grenade") {
        self waittill(#"stationary");
        return;
    }
    for (prevorigin = self.origin; true; prevorigin = self.origin) {
        wait(0.15);
        if (self.origin == prevorigin) {
            break;
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xf08e51a4, Offset: 0xb350
// Size: 0x78
function get_closest_player(org) {
    players = [];
    players = getplayers();
    if (players.size) {
        if (players.size > 1 && isdefined(org)) {
            return arraygetclosest(org, players);
        }
        return players[0];
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0xa791f632, Offset: 0xb3d0
// Size: 0x8c
function ent_flag_init_ai_standards() {
    message_array = [];
    message_array[message_array.size] = "goal";
    message_array[message_array.size] = "damage";
    for (i = 0; i < message_array.size; i++) {
        self flag::init(message_array[i]);
        self thread ent_flag_wait_ai_standards(message_array[i]);
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xac150981, Offset: 0xb468
// Size: 0x40
function ent_flag_wait_ai_standards(message) {
    self endon(#"death");
    self waittill(message);
    self.ent_flag[message] = 1;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x445e1a4d, Offset: 0xb4b0
// Size: 0x2a
function flat_angle(angle) {
    rangle = (0, angle[1], 0);
    return rangle;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0xf7ce682d, Offset: 0xb4e8
// Size: 0x42
function clear_run_anim() {
    self.alwaysrunforward = undefined;
    self.a.combatrunanim = undefined;
    self.run_noncombatanim = undefined;
    self.walk_combatanim = undefined;
    self.walk_noncombatanim = undefined;
    self.precombatrunenabled = 1;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x1704fb5b, Offset: 0xb538
// Size: 0x906
function track_players_intersection_tracker() {
    level endon(#"end_game");
    wait(5);
    var_76013453 = [];
    /#
        if (!isdefined(level.var_9db63456)) {
            level.var_9db63456 = 0;
        }
    #/
    if (!isdefined(level.var_9db63456)) {
        level.var_9db63456 = 1;
    }
    while (true) {
        var_1a1f860b = 0;
        players = getplayers();
        /#
            foreach (player in players) {
                if (!isdefined(player.var_ab8c5e97)) {
                    player.var_ab8c5e97 = [];
                }
                if (!isdefined(player.var_d28c72e5)) {
                    player.var_d28c72e5 = 1000;
                }
            }
        #/
        var_93bba48c = [];
        for (i = 0; i < players.size; i++) {
            if (is_true(players[i].var_f4e33249) || players[i] isplayerswimming() || players[i] laststand::player_is_in_laststand() || "playing" != players[i].sessionstate) {
                continue;
            }
            if (isbot(players[i])) {
                continue;
            }
            if (players[i] isinvehicle()) {
                continue;
            }
            if (lengthsquared(players[i] getvelocity()) > 15625) {
                continue;
            }
            if (is_true(players[i].var_c5e36086)) {
                continue;
            }
            for (j = 0; j < players.size; j++) {
                if (i == j || is_true(players[j].var_f4e33249) || players[j] isplayerswimming() || players[j] laststand::player_is_in_laststand() || "playing" != players[j].sessionstate) {
                    continue;
                }
                if (isbot(players[j])) {
                    continue;
                }
                if (lengthsquared(players[j] getvelocity()) > 15625) {
                    continue;
                }
                if (is_true(players[j].var_c5e36086)) {
                    continue;
                }
                if (isdefined(level.player_intersection_tracker_override)) {
                    if (players[i] [[ level.player_intersection_tracker_override ]](players[j])) {
                        continue;
                    }
                }
                playeri_origin = players[i].origin;
                playerj_origin = players[j].origin;
                if (abs(playeri_origin[2] - playerj_origin[2]) > 60) {
                    continue;
                }
                distance_apart = distance2d(playeri_origin, playerj_origin);
                /#
                    if (!isdefined(players[i].var_ab8c5e97[j])) {
                        players[i].var_ab8c5e97[j] = 1000;
                    }
                    players[i].var_ab8c5e97[j] = min(players[i].var_ab8c5e97[j], distance_apart);
                    players[i].var_d28c72e5 = min(players[i].var_d28c72e5, distance_apart);
                    if (abs(distance_apart) > 30) {
                        if (players[i].var_ab8c5e97[j] === players[i].var_d28c72e5) {
                            players[i].var_d28c72e5 = 1000;
                        }
                        players[i].var_ab8c5e97[j] = 1000;
                    }
                #/
                if (abs(distance_apart) > 9) {
                    continue;
                }
                if (!isdefined(var_93bba48c)) {
                    var_93bba48c = [];
                } else if (!isarray(var_93bba48c)) {
                    var_93bba48c = array(var_93bba48c);
                }
                if (!isinarray(var_93bba48c, players[i])) {
                    var_93bba48c[var_93bba48c.size] = players[i];
                }
                if (!isdefined(var_93bba48c)) {
                    var_93bba48c = [];
                } else if (!isarray(var_93bba48c)) {
                    var_93bba48c = array(var_93bba48c);
                }
                if (!isinarray(var_93bba48c, players[j])) {
                    var_93bba48c[var_93bba48c.size] = players[j];
                }
            }
        }
        foreach (var_e42ab7b4 in var_93bba48c) {
            /#
                if (!level.var_9db63456) {
                    iprintlnbold("<unknown string>" + var_e42ab7b4.var_d28c72e5);
                    continue;
                }
            #/
            if (isinarray(var_76013453, var_e42ab7b4)) {
                if (isdefined(var_e42ab7b4.maxhealth) && var_e42ab7b4.maxhealth > 0) {
                    n_damage = var_e42ab7b4.maxhealth / 3 + 1;
                } else {
                    n_damage = 51;
                }
                if (isdefined(var_e42ab7b4) && isvec(var_e42ab7b4.origin)) {
                    self.var_dad8bef6 = 1;
                    var_e42ab7b4 dodamage(n_damage, var_e42ab7b4.origin);
                    self.var_dad8bef6 = undefined;
                    var_e42ab7b4 zm_stats::increment_map_cheat_stat("cheat_too_friendly");
                    var_e42ab7b4 zm_stats::increment_client_stat("cheat_too_friendly", 0);
                    var_e42ab7b4 zm_stats::increment_client_stat("cheat_total", 0);
                }
            }
            if (!var_1a1f860b) {
                /#
                    iprintlnbold("<unknown string>" + var_e42ab7b4.var_d28c72e5);
                #/
                foreach (e_player in level.players) {
                    e_player playlocalsound(level.zmb_laugh_alias);
                }
                var_1a1f860b = 1;
            }
        }
        var_76013453 = var_93bba48c;
        wait(1);
    }
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x2 linked
// Checksum 0x4e9acbfb, Offset: 0xbe48
// Size: 0x158
function is_player_looking_at(origin, dot, do_trace, ignore_ent) {
    assert(isplayer(self), "<unknown string>");
    if (!isdefined(dot)) {
        dot = 0.7;
    }
    if (!isdefined(do_trace)) {
        do_trace = 1;
    }
    eye = self util::get_eye();
    delta_vec = anglestoforward(vectortoangles(origin - eye));
    view_vec = anglestoforward(self getplayerangles());
    new_dot = vectordot(delta_vec, view_vec);
    if (new_dot >= dot) {
        if (do_trace) {
            return bullettracepassed(origin, eye, 0, ignore_ent);
        } else {
            return 1;
        }
    }
    return 0;
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x0
// Checksum 0x92c16a35, Offset: 0xbfa8
// Size: 0x24
function add_gametype(*gt, *dummy1, *name, *dummy2) {
    
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x0
// Checksum 0x8131853, Offset: 0xbfd8
// Size: 0x24
function add_gameloc(*gl, *dummy1, *name, *dummy2) {
    
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x0
// Checksum 0xe304ee18, Offset: 0xc008
// Size: 0xc8
function get_closest_index(org, array, dist = 9999999) {
    distsq = dist * dist;
    if (array.size < 1) {
        return;
    }
    index = undefined;
    for (i = 0; i < array.size; i++) {
        newdistsq = distancesquared(array[i].origin, org);
        if (newdistsq >= distsq) {
            continue;
        }
        distsq = newdistsq;
        index = i;
    }
    return index;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x4b835391, Offset: 0xc0d8
// Size: 0xd6
function is_valid_zombie_spawn_point(point) {
    liftedorigin = point.origin + (0, 0, 5);
    size = 48;
    height = 64;
    mins = (-1 * size, -1 * size, 0);
    maxs = (size, size, height);
    absmins = liftedorigin + mins;
    absmaxs = liftedorigin + maxs;
    if (boundswouldtelefrag(absmins, absmaxs)) {
        return false;
    }
    return true;
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x0
// Checksum 0x9af5864d, Offset: 0xc1b8
// Size: 0x110
function get_closest_index_to_entity(entity, array, dist, extra_check) {
    org = entity.origin;
    if (!isdefined(dist)) {
        dist = 9999999;
    }
    distsq = dist * dist;
    if (array.size < 1) {
        return;
    }
    index = undefined;
    for (i = 0; i < array.size; i++) {
        if (isdefined(extra_check) && ![[ extra_check ]](entity, array[i])) {
            continue;
        }
        newdistsq = distancesquared(array[i].origin, org);
        if (newdistsq >= distsq) {
            continue;
        }
        distsq = newdistsq;
        index = i;
    }
    return index;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xa5995a82, Offset: 0xc2d0
// Size: 0x40
function set_gamemode_var(gvar, val) {
    if (!isdefined(game.gamemode_match)) {
        game.gamemode_match = [];
    }
    game.gamemode_match[gvar] = val;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x793ac7ed, Offset: 0xc318
// Size: 0x54
function set_gamemode_var_once(gvar, val) {
    if (!isdefined(game.gamemode_match)) {
        game.gamemode_match = [];
    }
    if (!isdefined(game.gamemode_match[gvar])) {
        game.gamemode_match[gvar] = val;
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xec864af, Offset: 0xc378
// Size: 0x48
function get_gamemode_var(gvar) {
    if (isdefined(game.gamemode_match) && isdefined(game.gamemode_match[gvar])) {
        return game.gamemode_match[gvar];
    }
    return undefined;
}

// Namespace zm_utility/zm_utility
// Params 6, eflags: 0x0
// Checksum 0x9da3ad19, Offset: 0xc3c8
// Size: 0x1c8
function waittill_subset(min_num, string1, string2, string3, string4, string5) {
    self endon(#"death");
    ent = spawnstruct();
    ent.threads = 0;
    returned_threads = 0;
    if (isdefined(string1)) {
        self thread util::waittill_string(string1, ent);
        ent.threads++;
    }
    if (isdefined(string2)) {
        self thread util::waittill_string(string2, ent);
        ent.threads++;
    }
    if (isdefined(string3)) {
        self thread util::waittill_string(string3, ent);
        ent.threads++;
    }
    if (isdefined(string4)) {
        self thread util::waittill_string(string4, ent);
        ent.threads++;
    }
    if (isdefined(string5)) {
        self thread util::waittill_string(string5, ent);
        ent.threads++;
    }
    while (ent.threads) {
        ent waittill(#"returned");
        ent.threads--;
        returned_threads++;
        if (returned_threads >= min_num) {
            break;
        }
    }
    ent notify(#"die");
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x2 linked
// Checksum 0x37946b08, Offset: 0xc598
// Size: 0x1aa
function is_headshot(*weapon, shitloc, smeansofdeath, var_f8c15d58 = 1) {
    if (!isdefined(smeansofdeath)) {
        return false;
    }
    if (smeansofdeath === "MOD_MELEE" || smeansofdeath === "MOD_UNKNOWN" || smeansofdeath === "MOD_MELEE_WEAPON_BUTT") {
        return false;
    }
    if (!isdefined(shitloc) || shitloc == "none") {
        if (var_f8c15d58 && isdefined(self.var_e6675d2d) && (smeansofdeath == "MOD_PROJECTILE" || smeansofdeath == "MOD_PROJECTILE_SPLASH" || smeansofdeath == "MOD_GRENADE" || smeansofdeath == "MOD_GRENADE_SPLASH")) {
            v_head = self gettagorigin("j_head");
            if (!isdefined(v_head)) {
                return false;
            }
            n_distance_squared = distancesquared(self.var_e6675d2d, v_head);
            if (n_distance_squared < 80) {
                return true;
            }
        }
        return false;
    }
    if (shitloc != "head" && shitloc != "helmet" && shitloc != "neck") {
        return false;
    }
    return true;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x2f80a228, Offset: 0xc750
// Size: 0x8a
function function_4562a3ef(shitloc, vpoint) {
    var_dd54fdb1 = namespace_81245006::function_3131f5dd(self, shitloc, 1);
    if (isdefined(vpoint)) {
        if (!isdefined(var_dd54fdb1)) {
            var_dd54fdb1 = namespace_81245006::function_73ab4754(self, vpoint, 1);
        }
    }
    return is_true(var_dd54fdb1.var_3765e777);
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xe04818e5, Offset: 0xc7e8
// Size: 0x7e
function is_explosive_damage(mod) {
    if (!isdefined(mod)) {
        return false;
    }
    if (mod == "MOD_GRENADE" || mod == "MOD_GRENADE_SPLASH" || mod == "MOD_PROJECTILE" || mod == "MOD_PROJECTILE_SPLASH" || mod == "MOD_EXPLOSIVE") {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0xa206b598, Offset: 0xc870
// Size: 0x8c
function function_7a35b1d7(var_c857a96d) {
    if (isplayer(self)) {
        self luinotifyevent(#"zombie_notification", 2, var_c857a96d, self getentitynumber());
        return;
    }
    luinotifyevent(#"zombie_notification", 1, var_c857a96d);
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x5b1ca67, Offset: 0xc908
// Size: 0x84
function function_846eb7dd(type_id, var_c857a96d) {
    if (isplayer(self)) {
        self luinotifyevent(type_id, 2, var_c857a96d, self getentitynumber());
        return;
    }
    luinotifyevent(type_id, 1, var_c857a96d);
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x0
// Checksum 0xe4b64cd6, Offset: 0xc998
// Size: 0x9c
function function_e64ac3b6(type_id, var_c857a96d) {
    if (isplayer(self)) {
        self luinotifyevent(#"zombie_special_notification", 3, type_id, var_c857a96d, self getentitynumber());
        return;
    }
    luinotifyevent(#"zombie_special_notification", 2, type_id, var_c857a96d);
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x63294d2b, Offset: 0xca40
// Size: 0x6a
function sndswitchannouncervox(who) {
    switch (who) {
    case #"sam":
        game.zmbdialog[#"prefix"] = "vox_zmba_sam";
        level.zmb_laugh_alias = "zmb_player_outofbounds";
        level.sndannouncerisrich = 0;
        break;
    }
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x0
// Checksum 0xbdceb94a, Offset: 0xcab8
// Size: 0xbc
function do_player_general_vox(category, type, timer, *chance) {
    if (isdefined(chance) && isdefined(level.votimer[timer]) && level.votimer[timer] > 0) {
        return;
    }
    self thread zm_audio::create_and_play_dialog(type, timer);
    if (isdefined(chance)) {
        level.votimer[timer] = chance;
        level thread general_vox_timer(level.votimer[timer], timer);
    }
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xdcdf5a73, Offset: 0xcb80
// Size: 0xcc
function general_vox_timer(timer, type) {
    level endon(#"end_game");
    println("<unknown string>" + type + "<unknown string>" + timer + "<unknown string>");
    while (timer > 0) {
        wait(1);
        timer--;
    }
    level.votimer[type] = timer;
    println("<unknown string>" + type + "<unknown string>" + timer + "<unknown string>");
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x0
// Checksum 0x2213ab61, Offset: 0xcc58
// Size: 0x1c
function play_vox_to_player(*category, *type, *force_variant) {
    
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x70e0be0e, Offset: 0xcc80
// Size: 0x9c
function is_favorite_weapon(weapon_to_check) {
    if (!isdefined(self.favorite_wall_weapons_list)) {
        return false;
    }
    foreach (weapon in self.favorite_wall_weapons_list) {
        if (weapon_to_check == weapon) {
            return true;
        }
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x81a6bd52, Offset: 0xcd28
// Size: 0x1dc
function set_demo_intermission_point() {
    spawnpoints = getentarray("mp_global_intermission", "classname");
    if (!spawnpoints.size) {
        return;
    }
    spawnpoint = spawnpoints[0];
    match_string = "";
    location = level.scr_zm_map_start_location;
    if ((location == "default" || location == "") && isdefined(level.default_start_location)) {
        location = level.default_start_location;
    }
    match_string = level.scr_zm_ui_gametype + "_" + location;
    for (i = 0; i < spawnpoints.size; i++) {
        if (isdefined(spawnpoints[i].script_string)) {
            tokens = strtok(spawnpoints[i].script_string, " ");
            foreach (token in tokens) {
                if (token == match_string) {
                    spawnpoint = spawnpoints[i];
                    i = spawnpoints.size;
                    break;
                }
            }
        }
    }
    setdemointermissionpoint(spawnpoint.origin, spawnpoint.angles);
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x0
// Checksum 0xa3ef40aa, Offset: 0xcf10
// Size: 0x34
function register_map_navcard(navcard_on_map, navcard_needed_for_computer) {
    level.navcard_needed = navcard_needed_for_computer;
    level.map_navcard = navcard_on_map;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x87433a4d, Offset: 0xcf50
// Size: 0x2a
function does_player_have_map_navcard(player) {
    return player zm_stats::get_global_stat(level.map_navcard);
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x93ad2459, Offset: 0xcf88
// Size: 0x3a
function does_player_have_correct_navcard(player) {
    if (!isdefined(level.navcard_needed)) {
        return 0;
    }
    return player zm_stats::get_global_stat(level.navcard_needed);
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xc3f77ca2, Offset: 0xcfd0
// Size: 0xdc
function disable_player_move_states(forcestancechange) {
    self allowcrouch(1);
    self allowads(0);
    self allowsprint(0);
    self allowprone(0);
    self allowmelee(0);
    if (is_true(forcestancechange)) {
        if (self getstance() == "prone") {
            self setstance("crouch");
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xec0ebbfc, Offset: 0xd0b8
// Size: 0x10c
function enable_player_move_states() {
    if (!isdefined(self)) {
        return;
    }
    if (!isplayer(self)) {
        return;
    }
    if (!isdefined(self._allow_ads) || self._allow_ads == 1) {
        self allowads(1);
    }
    if (!isdefined(self._allow_sprint) || self._allow_sprint == 1) {
        self allowsprint(1);
    }
    if (!isdefined(self._allow_prone) || self._allow_prone == 1) {
        self allowprone(1);
    }
    if (!isdefined(self._allow_melee) || self._allow_melee == 1) {
        self allowmelee(1);
    }
}

// Namespace zm_utility/zm_utility
// Params 6, eflags: 0x0
// Checksum 0x54131322, Offset: 0xd1d0
// Size: 0xfe
function spawn_path_node(origin, angles, k1, v1, k2, v2) {
    if (!isdefined(level._spawned_path_nodes)) {
        level._spawned_path_nodes = [];
    }
    node = spawnstruct();
    node.origin = origin;
    node.angles = angles;
    node.k1 = k1;
    node.v1 = v1;
    node.k2 = k2;
    node.v2 = v2;
    node.node = spawn_path_node_internal(origin, angles, k1, v1, k2, v2);
    level._spawned_path_nodes[level._spawned_path_nodes.size] = node;
    return node.node;
}

// Namespace zm_utility/zm_utility
// Params 6, eflags: 0x2 linked
// Checksum 0x76f87484, Offset: 0xd2d8
// Size: 0xb6
function spawn_path_node_internal(origin, angles, k1, v1, k2, v2) {
    if (isdefined(k2)) {
        return spawnpathnode("node_pathnode", origin, angles, undefined, k1, v1, k2, v2);
    } else if (isdefined(k1)) {
        return spawnpathnode("node_pathnode", origin, angles, undefined, k1, v1);
    } else {
        return spawnpathnode("node_pathnode", origin, angles);
    }
    return undefined;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0xd398
// Size: 0x4
function delete_spawned_path_nodes() {
    
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x3ab70534, Offset: 0xd3a8
// Size: 0xca
function respawn_path_nodes() {
    if (!isdefined(level._spawned_path_nodes)) {
        return;
    }
    for (i = 0; i < level._spawned_path_nodes.size; i++) {
        node_struct = level._spawned_path_nodes[i];
        println("<unknown string>" + node_struct.origin);
        node_struct.node = spawn_path_node_internal(node_struct.origin, node_struct.angles, node_struct.k1, node_struct.v1, node_struct.k2, node_struct.v2);
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xe3f10034, Offset: 0xd480
// Size: 0x64
function undo_link_changes() {
    /#
        println("<unknown string>");
        println("<unknown string>");
        println("<unknown string>");
    #/
    delete_spawned_path_nodes();
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xef569451, Offset: 0xd4f0
// Size: 0x64
function redo_link_changes() {
    /#
        println("<unknown string>");
        println("<unknown string>");
        println("<unknown string>");
    #/
    respawn_path_nodes();
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x8240bc63, Offset: 0xd560
// Size: 0x92
function is_gametype_active(a_gametypes) {
    b_is_gametype_active = 0;
    if (!isarray(a_gametypes)) {
        a_gametypes = array(a_gametypes);
    }
    for (i = 0; i < a_gametypes.size; i++) {
        if (util::get_game_type() == a_gametypes[i]) {
            b_is_gametype_active = 1;
        }
    }
    return b_is_gametype_active;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x0
// Checksum 0x24d6a544, Offset: 0xd600
// Size: 0x40
function register_custom_spawner_entry(spot_noteworthy, func) {
    if (!isdefined(level.custom_spawner_entry)) {
        level.custom_spawner_entry = [];
    }
    level.custom_spawner_entry[spot_noteworthy] = func;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x343b7827, Offset: 0xd648
// Size: 0x8e
function get_player_weapon_limit(player) {
    if (isdefined(self.get_player_weapon_limit)) {
        return [[ self.get_player_weapon_limit ]](player);
    }
    if (isdefined(level.get_player_weapon_limit)) {
        return [[ level.get_player_weapon_limit ]](player);
    }
    weapon_limit = 2;
    if (player hasperk(#"specialty_additionalprimaryweapon")) {
        weapon_limit = level.additionalprimaryweapon_limit;
    }
    return weapon_limit;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x2b2e2536, Offset: 0xd6e0
// Size: 0x62
function function_e05ac4ad(e_player, n_cost) {
    if (isdefined(level.var_236b9f7a) && [[ level.var_236b9f7a ]](e_player, self.clientfieldname)) {
        return 0;
    }
    return e_player zm_score::can_player_purchase(n_cost);
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xd1d229d4, Offset: 0xd750
// Size: 0x42
function get_player_perk_purchase_limit() {
    n_perk_purchase_limit_override = level.perk_purchase_limit;
    if (isdefined(level.get_player_perk_purchase_limit)) {
        n_perk_purchase_limit_override = self [[ level.get_player_perk_purchase_limit ]]();
    }
    return n_perk_purchase_limit_override;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xa46eff38, Offset: 0xd7a0
// Size: 0x70
function can_player_purchase_perk() {
    if (self.num_perks < self get_player_perk_purchase_limit()) {
        return true;
    }
    if (self bgb::is_enabled(#"zm_bgb_unquenchable") || self bgb::is_enabled(#"zm_bgb_soda_fountain")) {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0xe61b23d8, Offset: 0xd818
// Size: 0x36
function wait_for_attractor_positions_complete() {
    self endon(#"death");
    self waittill(#"attractor_positions_generated");
    self.attract_to_origin = 0;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x69a047b7, Offset: 0xd858
// Size: 0xd6
function get_player_index(player) {
    assert(isplayer(player));
    assert(isdefined(player.characterindex));
    /#
        if (player.entity_num == 0 && getdvarstring(#"zombie_player_vo_overwrite") != "<unknown string>") {
            new_vo_index = getdvarint(#"zombie_player_vo_overwrite", 0);
            return new_vo_index;
        }
    #/
    return player.characterindex;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x569d2acf, Offset: 0xd938
// Size: 0xa0
function function_828bac1(n_character_index) {
    foreach (character in level.players) {
        if (character zm_characters::function_dc232a80() === n_character_index) {
            return character;
        }
    }
    return undefined;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x41df813e, Offset: 0xd9e0
// Size: 0xbc
function zombie_goto_round(n_target_round) {
    level notify(#"restart_round");
    if (n_target_round < 1) {
        n_target_round = 1;
    }
    level.zombie_total = 0;
    zm_round_logic::set_round_number(n_target_round);
    zombies = zombie_utility::get_round_enemy_array();
    if (isdefined(zombies)) {
        array::run_all(zombies, &kill);
    }
    level.sndgotoroundoccurred = 1;
    level waittill(#"between_round_over");
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xc6c26bd5, Offset: 0xdaa8
// Size: 0x228
function is_point_inside_enabled_zone(v_origin, ignore_zone) {
    if (function_c200446c() || is_survival()) {
        return true;
    }
    if (!isdefined(level.playable_area)) {
        level.playable_area = getentarray("player_volume", "script_noteworthy");
    }
    if (function_c85ebbbc()) {
        var_12ed21a1 = function_72d3bca6(level.playable_area, v_origin, undefined, undefined, level.var_603981f1);
        foreach (area in var_12ed21a1) {
            zone = level.zones[area.targetname];
            if (!zone.is_enabled) {
                continue;
            }
            if (isdefined(ignore_zone) && zone == ignore_zone) {
                continue;
            }
            if (istouching(v_origin, area)) {
                return true;
            }
        }
    }
    if (function_21f4ac36()) {
        node = function_52c1730(v_origin, level.zone_nodes, 500);
        if (isdefined(node)) {
            zone = level.zones[node.targetname];
            if (isdefined(zone) && zone.is_enabled && zone !== ignore_zone) {
                return true;
            }
        }
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xd5f49344, Offset: 0xdcd8
// Size: 0x17e
function clear_streamer_hint(var_49d474b2) {
    if (isarray(self.var_4a501715)) {
        if (isdefined(var_49d474b2)) {
            foreach (n_index, var_b0b08518 in self.var_4a501715) {
                if (n_index === var_49d474b2) {
                    if (isdefined(var_b0b08518)) {
                        var_b0b08518 delete();
                    }
                }
            }
        } else {
            foreach (var_b0b08518 in self.var_4a501715) {
                if (isdefined(var_b0b08518)) {
                    var_b0b08518 delete();
                }
            }
        }
        arrayremovevalue(self.var_4a501715, undefined, 1);
    }
    self notify(#"wait_clear_streamer_hint");
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x7faf4a3f, Offset: 0xde60
// Size: 0x4c
function wait_clear_streamer_hint(lifetime, str_id) {
    self endon(#"wait_clear_streamer_hint");
    wait(lifetime);
    if (isdefined(self)) {
        self clear_streamer_hint(str_id);
    }
}

// Namespace zm_utility/zm_utility
// Params 5, eflags: 0x2 linked
// Checksum 0xe0f53b6d, Offset: 0xdeb8
// Size: 0x270
function create_streamer_hint(origin, angles, value, lifetime, var_49d474b2) {
    if (self == level) {
        foreach (player in getplayers()) {
            player clear_streamer_hint(var_49d474b2);
        }
    }
    self clear_streamer_hint(var_49d474b2);
    if (!isdefined(self.var_4a501715)) {
        self.var_4a501715 = [];
    }
    var_b0b08518 = createstreamerhint(origin, value);
    if (isdefined(angles)) {
        var_b0b08518.angles = angles;
    }
    if (isplayer(self)) {
        var_b0b08518 setinvisibletoall();
        var_b0b08518 setvisibletoplayer(self);
    }
    var_b0b08518 setincludemeshes(1);
    if (isdefined(var_49d474b2)) {
        self.var_4a501715[var_49d474b2] = var_b0b08518;
    } else {
        if (!isdefined(self.var_4a501715)) {
            self.var_4a501715 = [];
        } else if (!isarray(self.var_4a501715)) {
            self.var_4a501715 = array(self.var_4a501715);
        }
        if (!isinarray(self.var_4a501715, var_b0b08518)) {
            self.var_4a501715[self.var_4a501715.size] = var_b0b08518;
        }
    }
    self notify(#"wait_clear_streamer_hint");
    if (isdefined(lifetime) && lifetime > 0) {
        self thread wait_clear_streamer_hint(lifetime, var_49d474b2);
    }
    return var_b0b08518;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x59471da, Offset: 0xe130
// Size: 0x130
function approximate_path_dist(player) {
    aiprofile_beginentry("approximate_path_dist");
    goal_pos = player.origin;
    if (isdefined(player.last_valid_position)) {
        goal_pos = player.last_valid_position;
    }
    if (is_true(player.b_teleporting)) {
        if (isdefined(player.teleport_location)) {
            goal_pos = player.teleport_location;
            if (!ispointonnavmesh(goal_pos, self)) {
                position = getclosestpointonnavmesh(goal_pos, 100, 15);
                if (isdefined(position)) {
                    goal_pos = position;
                }
            }
        }
    }
    approx_dist = pathdistance(self.origin, goal_pos, 1, self);
    aiprofile_endentry();
    return approx_dist;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0xb6ee2ef1, Offset: 0xe268
// Size: 0x6a
function get_player_closest_to(e_target) {
    a_players = function_a1ef346b();
    arrayremovevalue(a_players, e_target);
    e_closest_player = arraygetclosest(e_target.origin, a_players);
    return e_closest_player;
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x0
// Checksum 0xaddce612, Offset: 0xe2e0
// Size: 0x15c
function is_facing(facee, requireddot = 0.5, b_2d = 1) {
    orientation = self getplayerangles();
    v_forward = anglestoforward(orientation);
    v_to_facee = facee.origin - self.origin;
    if (b_2d) {
        v_forward_computed = (v_forward[0], v_forward[1], 0);
        v_to_facee_computed = (v_to_facee[0], v_to_facee[1], 0);
    } else {
        v_forward_computed = v_forward;
        v_to_facee_computed = v_to_facee;
    }
    v_unit_forward_computed = vectornormalize(v_forward_computed);
    v_unit_to_facee_computed = vectornormalize(v_to_facee_computed);
    dotproduct = vectordot(v_unit_forward_computed, v_unit_to_facee_computed);
    return dotproduct > requireddot;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0x4af8136a, Offset: 0xe448
// Size: 0x3c
function is_solo_ranked_game() {
    return level.players.size == 1 && getdvarint(#"zm_private_rankedmatch", 0);
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0xf5d9f92b, Offset: 0xe490
// Size: 0x34
function function_e63cdbef() {
    return level.rankedmatch || getdvarint(#"zm_private_rankedmatch", 0);
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xcce64859, Offset: 0xe4d0
// Size: 0x50
function function_a3648315() {
    if (!isdefined(level.var_b03a2fc8)) {
        level.var_b03a2fc8 = new throttle();
        [[ level.var_b03a2fc8 ]]->initialize(1, 0.1);
    }
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x2 linked
// Checksum 0x289a4f4b, Offset: 0xe528
// Size: 0x44
function function_ffc279(v_magnitude, e_attacker, n_damage, weapon) {
    self thread function_315c8e4(v_magnitude, e_attacker, n_damage, weapon);
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x6 linked
// Checksum 0x3587d6f3, Offset: 0xe578
// Size: 0x104
function private function_315c8e4(v_magnitude, e_attacker, n_damage = self.health, weapon) {
    self endon(#"death");
    if (!isdefined(weapon)) {
        weapon = level.weaponnone;
    }
    self.var_bfffc79e = 1;
    [[ level.var_b03a2fc8 ]]->waitinqueue(self);
    self start_ragdoll();
    self launchragdoll(v_magnitude);
    util::wait_network_frame();
    if (isdefined(self)) {
        self.var_bfffc79e = undefined;
        self dodamage(n_damage, self.origin, e_attacker, undefined, "none", "MOD_UNKNOWN", 0, weapon);
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x319dd5ce, Offset: 0xe688
// Size: 0x6a
function set_max_health(var_54cb21f6 = 0) {
    if (self.health < self.var_66cb03ad) {
        self.health = self.var_66cb03ad;
    }
    if (var_54cb21f6) {
        if (self.health > self.var_66cb03ad) {
            self.health = self.var_66cb03ad;
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xe1b9aff7, Offset: 0xe700
// Size: 0xea
function function_13cc9756() {
    self endon(#"death");
    while (true) {
        waitresult = self waittill(#"zone_change");
        if (isdefined(waitresult.zone)) {
            self.inner_zigzag_radius = waitresult.zone.inner_zigzag_radius;
            self.outer_zigzag_radius = waitresult.zone.outer_zigzag_radius;
            self.zigzag_distance_min = waitresult.zone.zigzag_distance_min;
            self.zigzag_distance_max = waitresult.zone.zigzag_distance_max;
            self.zigzag_activation_distance = waitresult.zone.zigzag_activation_distance;
            self.var_592a8227 = waitresult.zone.zigzag_enabled;
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xeea31ad0, Offset: 0xe7f8
// Size: 0x88
function function_45492cc4(var_cf5e7324 = 1) {
    if (!isdefined(self)) {
        return false;
    }
    if (!isdefined(self.owner)) {
        return false;
    }
    if (!(self.classname === "script_vehicle")) {
        return false;
    }
    if (var_cf5e7324 && isplayer(self.owner)) {
        return true;
    }
    return isdefined(self.owner);
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x827b6d47, Offset: 0xe888
// Size: 0xae
function function_1a4d2910() {
    if (isdefined(level.var_2456c78a)) {
        foreach (var_92254a2f in level.var_2456c78a) {
            if (distancesquared(self.origin, var_92254a2f) < 10000) {
                return true;
            }
        }
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x0
// Checksum 0x7953220b, Offset: 0xe940
// Size: 0x96
function function_64259898(position, search_radius = 128) {
    goal_pos = getclosestpointonnavmesh(position, search_radius, self getpathfindingradius());
    if (isdefined(goal_pos)) {
        self setgoal(goal_pos);
        return true;
    }
    self setgoal(self.origin);
    return false;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0x8593d2df, Offset: 0xe9e0
// Size: 0xfe
function function_372a1e12() {
    a_e_players = getplayers();
    e_least_hunted = undefined;
    foreach (e_player in a_e_players) {
        if (!isdefined(e_player.hunted_by)) {
            e_player.hunted_by = 0;
        }
        if (!is_player_valid(e_player)) {
            continue;
        }
        if (!isdefined(e_least_hunted) || e_player.hunted_by < e_least_hunted.hunted_by) {
            e_least_hunted = e_player;
        }
    }
    return e_least_hunted;
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x2 linked
// Checksum 0xea3ba8b3, Offset: 0xeae8
// Size: 0xb8
function function_d7db256e(var_eaf129a0, var_6cc77d4e, var_888cf948 = 1, var_b96be97f = undefined) {
    if (isdefined(var_6cc77d4e)) {
        s_objective_loc = struct::get(var_eaf129a0);
        n_obj_id = function_f5a222a8(var_6cc77d4e, s_objective_loc.origin, var_b96be97f);
    }
    if (var_888cf948) {
        level thread function_75fd65f9(var_eaf129a0, 1);
    }
    return n_obj_id;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x28e3081f, Offset: 0xeba8
// Size: 0x54
function function_b1f3be5c(n_obj_id, var_eaf129a0) {
    if (isdefined(n_obj_id)) {
        function_bc5a54a8(n_obj_id);
    }
    level thread function_75fd65f9(var_eaf129a0, 0);
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x0
// Checksum 0xe9a5e9b2, Offset: 0xec08
// Size: 0x6c
function function_ba39d198(n_obj_id, b_show = 1) {
    if (isdefined(n_obj_id)) {
        if (b_show) {
            objective_setvisibletoplayer(n_obj_id, self);
            return;
        }
        objective_setinvisibletoplayer(n_obj_id, self);
    }
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x2 linked
// Checksum 0x2d3266f1, Offset: 0xec80
// Size: 0x1a0
function function_f5a222a8(var_6cc77d4e, v_origin_or_ent, var_c87f9ad7, params) {
    n_obj_id = gameobjects::get_next_obj_id();
    function_ff902863(var_6cc77d4e, n_obj_id, 1);
    if (isentity(v_origin_or_ent) || isvec(v_origin_or_ent)) {
        objective_add(n_obj_id, "active", v_origin_or_ent, var_6cc77d4e);
    } else if (isstruct(v_origin_or_ent)) {
        objective_add(n_obj_id, "active", v_origin_or_ent.origin, var_6cc77d4e);
    }
    function_6da98133(n_obj_id);
    if (isdefined(var_c87f9ad7)) {
        level thread function_f23721f4(n_obj_id, v_origin_or_ent, var_c87f9ad7, params);
    }
    if (!isdefined(level.var_e63703cd[n_obj_id])) {
        level.var_e63703cd[n_obj_id] = {#var_6cc77d4e:var_6cc77d4e, #v_origin_or_ent:v_origin_or_ent, #var_c87f9ad7:var_c87f9ad7, #params:params};
    }
    return n_obj_id;
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x6 linked
// Checksum 0x92e9315c, Offset: 0xee28
// Size: 0xd8
function private function_f23721f4(n_obj_id, v_origin_or_ent, var_c87f9ad7, params) {
    level flag::wait_till("start_zombie_round_logic");
    foreach (player in getplayers()) {
        player thread function_71071944(n_obj_id, v_origin_or_ent, var_c87f9ad7, params);
    }
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x2 linked
// Checksum 0xffe52f2e, Offset: 0xef08
// Size: 0x4a
function function_4a4cf79a(var_6cc77d4e, v_origin_or_ent, params) {
    n_obj_id = function_f5a222a8(var_6cc77d4e, v_origin_or_ent, &function_15f72a68, params);
    return n_obj_id;
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x6 linked
// Checksum 0xf23d52e4, Offset: 0xef60
// Size: 0x250
function private function_71071944(n_obj_id, v_origin_or_ent, var_c87f9ad7, params) {
    self notify("cleanup_zm_objective_id_" + n_obj_id);
    level endon(#"end_game", "cleanup_zm_objective_id_" + n_obj_id);
    self endon(#"disconnect", "cleanup_zm_objective_id_" + n_obj_id);
    n_ent_num = self getentitynumber();
    if (!isdefined(level.var_cef2e607[#"hash_6aca065fb0d8bfbf"])) {
        level.var_cef2e607[#"hash_6aca065fb0d8bfbf"] = -1;
    }
    level.var_cef2e607[#"hash_6aca065fb0d8bfbf"]++;
    wait(float(function_60d95f53()) / 1000 * (level.var_cef2e607[#"hash_6aca065fb0d8bfbf"] % int(0.5 / float(function_60d95f53()) / 1000) + 1));
    var_cb46b9ea = {};
    while (true) {
        [[ level.var_75b29eed ]]->waitinqueue(var_cb46b9ea);
        if (is_true(level.var_e63703cd[n_obj_id].var_d0d552ea[n_ent_num])) {
            wait(0.5);
            continue;
        }
        if (self [[ var_c87f9ad7 ]](v_origin_or_ent, params)) {
            objective_setvisibletoplayer(n_obj_id, self);
        } else {
            objective_setinvisibletoplayer(n_obj_id, self);
        }
        wait(0.5);
    }
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x2 linked
// Checksum 0x13567509, Offset: 0xf1b8
// Size: 0x188
function function_e8f4d47b(a_players, n_obj_id, b_disable = 1) {
    if (!isdefined(a_players)) {
        a_players = [];
    } else if (!isarray(a_players)) {
        a_players = array(a_players);
    }
    if (isdefined(level.var_e63703cd[n_obj_id])) {
        if (!isdefined(level.var_e63703cd[n_obj_id].var_d0d552ea)) {
            level.var_e63703cd[n_obj_id].var_d0d552ea = [];
        }
        foreach (player in a_players) {
            n_ent_num = player getentitynumber();
            if (b_disable) {
                level.var_e63703cd[n_obj_id].var_d0d552ea[n_ent_num] = 1;
                continue;
            }
            level.var_e63703cd[n_obj_id].var_d0d552ea[n_ent_num] = undefined;
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x6 linked
// Checksum 0x744e2ba0, Offset: 0xf348
// Size: 0x124
function private function_15f72a68(v_origin_or_ent, params) {
    if (isentity(v_origin_or_ent) || isstruct(v_origin_or_ent)) {
        v_pos = v_origin_or_ent.origin;
        if (isdefined(v_origin_or_ent.var_8d3fc50c) && v_origin_or_ent.var_8d3fc50c > 0) {
            var_8d3fc50c = v_origin_or_ent.var_8d3fc50c;
        }
    } else {
        v_pos = v_origin_or_ent;
    }
    if (!isdefined(var_8d3fc50c)) {
        var_8d3fc50c = isdefined(params.var_5068abe1) ? params.var_5068abe1 : 160;
    }
    if (is_survival()) {
        return true;
    }
    if (abs(self.origin[2] - v_pos[2]) <= var_8d3fc50c) {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xbb9d5864, Offset: 0xf478
// Size: 0xa4
function function_bc5a54a8(n_obj_id) {
    level notify("cleanup_zm_objective_id_" + n_obj_id);
    function_ff902863(undefined, n_obj_id, 0);
    gameobjects::release_obj_id(n_obj_id);
    objective_delete(n_obj_id);
    if (isdefined(level.var_e63703cd[n_obj_id])) {
        arrayremoveindex(level.var_e63703cd, n_obj_id, 1);
    }
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x2 linked
// Checksum 0x4e9fd69, Offset: 0xf528
// Size: 0x11c
function function_ff902863(var_6cc77d4e = level.var_e63703cd[n_obj_id].var_6cc77d4e, n_obj_id, var_3a9f00e9 = 1) {
    if (var_3a9f00e9) {
        s_objective = {#var_f23c87bd:var_6cc77d4e, #var_f81e2f33:n_obj_id, #var_3dce3470:function_f8d53445()};
    } else {
        s_objective = {#var_81d2684e:var_6cc77d4e, #var_9a059624:n_obj_id, #var_84820801:function_f8d53445()};
    }
    function_92d1707f(#"hash_57cacfb95186806d", s_objective);
}

/#

    // Namespace zm_utility/zm_utility
    // Params 1, eflags: 0x0
    // Checksum 0x93f5ab31, Offset: 0xf650
    // Size: 0x14c
    function function_452938ed(params) {
        if (int(params.value)) {
            if (isarray(level.var_e63703cd)) {
                println("<unknown string>" + level.var_e63703cd.size + "<unknown string>");
                foreach (n_obj_id, s_objective in level.var_e63703cd) {
                    println("<unknown string>" + n_obj_id + "<unknown string>" + function_9e72a96(s_objective.var_6cc77d4e));
                }
            }
            setdvar(params.name, 0);
        }
    }

#/

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xaf8afa88, Offset: 0xf7a8
// Size: 0xb8
function function_3ba26955() {
    foreach (n_obj_id, var_1b589e4c in level.var_e63703cd) {
        if (isdefined(var_1b589e4c.var_c87f9ad7)) {
            self thread function_71071944(n_obj_id, var_1b589e4c.v_origin_or_ent, var_1b589e4c.var_c87f9ad7, var_1b589e4c.params);
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x254ad943, Offset: 0xf868
// Size: 0x1d0
function function_75fd65f9(str_targetname, b_enable = 1) {
    if (!isdefined(str_targetname)) {
        return;
    }
    var_f8f0b389 = struct::get(str_targetname);
    var_2a7c782 = [];
    var_77cd2496 = [];
    if (isdefined(var_f8f0b389.target)) {
        var_2a7c782 = struct::get_array(var_f8f0b389.target);
        var_77cd2496 = getentarray(var_f8f0b389.target, "targetname");
        if (b_enable) {
            showmiscmodels(var_f8f0b389.target);
        } else {
            hidemiscmodels(var_f8f0b389.target);
        }
    }
    foreach (var_86802380 in var_77cd2496) {
        if (b_enable) {
            var_86802380 show();
            var_86802380 notsolid();
            continue;
        }
        var_86802380 hide();
        var_86802380 notsolid();
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x9e16e705, Offset: 0xfa40
// Size: 0x186
function function_ebb2f490() {
    a_w_list = self getweaponslistprimaries();
    var_dc69b88b = [];
    foreach (w_list_weapon in a_w_list) {
        if (!isdefined(var_dc69b88b)) {
            var_dc69b88b = [];
        } else if (!isarray(var_dc69b88b)) {
            var_dc69b88b = array(var_dc69b88b);
        }
        var_dc69b88b[var_dc69b88b.size] = zm_weapons::function_93cd8e76(w_list_weapon);
        if (w_list_weapon.splitweapon != level.weaponnone) {
            if (!isdefined(var_dc69b88b)) {
                var_dc69b88b = [];
            } else if (!isarray(var_dc69b88b)) {
                var_dc69b88b = array(var_dc69b88b);
            }
            var_dc69b88b[var_dc69b88b.size] = zm_weapons::function_93cd8e76(w_list_weapon.splitweapon);
        }
    }
    return var_dc69b88b;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x0
// Checksum 0xd1918a3, Offset: 0xfbd0
// Size: 0xce
function function_aa45670f(weapon, var_3a36e0dc) {
    root_weapon = zm_weapons::function_93cd8e76(weapon);
    if (isdefined(self.var_f6d3c3[var_3a36e0dc]) && isinarray(self.var_f6d3c3[var_3a36e0dc], root_weapon)) {
        var_dc69b88b = function_ebb2f490();
        if (isinarray(var_dc69b88b, root_weapon) || zm_weapons::function_93cd8e76(self.currentweapon) === root_weapon) {
            return true;
        }
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x0
// Checksum 0x1cbaa8c9, Offset: 0xfca8
// Size: 0x24c
function function_28ee38f4(weapon, var_3a36e0dc, var_87f6ae5) {
    root_weapon = zm_weapons::function_93cd8e76(weapon);
    if (isdefined(self.var_f6d3c3[var_3a36e0dc]) && isinarray(self.var_f6d3c3[var_3a36e0dc], root_weapon)) {
        return false;
    }
    var_dc69b88b = function_ebb2f490();
    if (isinarray(var_dc69b88b, root_weapon) || zm_weapons::function_93cd8e76(self.currentweapon) === root_weapon) {
        if (!isdefined(self.var_f6d3c3[var_3a36e0dc])) {
            self.var_f6d3c3[var_3a36e0dc] = [];
        } else if (!isarray(self.var_f6d3c3[var_3a36e0dc])) {
            self.var_f6d3c3[var_3a36e0dc] = array(self.var_f6d3c3[var_3a36e0dc]);
        }
        self.var_f6d3c3[var_3a36e0dc][self.var_f6d3c3[var_3a36e0dc].size] = root_weapon;
        if (root_weapon.splitweapon !== level.weaponnone) {
            if (!isdefined(self.var_f6d3c3[var_3a36e0dc])) {
                self.var_f6d3c3[var_3a36e0dc] = [];
            } else if (!isarray(self.var_f6d3c3[var_3a36e0dc])) {
                self.var_f6d3c3[var_3a36e0dc] = array(self.var_f6d3c3[var_3a36e0dc]);
            }
            self.var_f6d3c3[var_3a36e0dc][self.var_f6d3c3[var_3a36e0dc].size] = root_weapon.splitweapon;
        }
        self thread function_13f40482();
        if (var_87f6ae5) {
            self zm_weapons::ammo_give(weapon);
        }
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x228272a7, Offset: 0xff00
// Size: 0xf0
function function_18ce0c8(weapon, var_3a36e0dc) {
    root_weapon = zm_weapons::function_93cd8e76(weapon);
    if (!isdefined(self.var_f6d3c3[var_3a36e0dc]) || !isinarray(self.var_f6d3c3[var_3a36e0dc], root_weapon)) {
        return;
    }
    self.var_f6d3c3[var_3a36e0dc] = array::exclude(self.var_f6d3c3[var_3a36e0dc], root_weapon);
    if (root_weapon.splitweapon != level.weaponnone) {
        self.var_f6d3c3[var_3a36e0dc] = array::exclude(self.var_f6d3c3[var_3a36e0dc], root_weapon.splitweapon);
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x70681343, Offset: 0xfff8
// Size: 0x174
function function_13f40482() {
    self notify("568d695ce7232fcf");
    self endon("568d695ce7232fcf");
    self endon(#"disconnect");
    while (true) {
        self waittill(#"weapon_change");
        if (self scene::function_c935c42() || level flag::get("round_reset")) {
            continue;
        }
        var_dc69b88b = function_ebb2f490();
        for (i = 0; i < 1; i++) {
            foreach (var_406a430d in self.var_f6d3c3[i]) {
                if (!isinarray(var_dc69b88b, var_406a430d)) {
                    self function_18ce0c8(var_406a430d, i);
                }
            }
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xf0c14fbd, Offset: 0x10178
// Size: 0x8e
function function_fdb0368(n_round_number, str_endon) {
    if (isdefined(str_endon)) {
        self endon(str_endon);
    }
    if (!isdefined(level.round_number) || level.round_number < n_round_number) {
        while (true) {
            s_waitresult = level waittill(#"start_of_round");
            if (s_waitresult.n_round_number >= n_round_number) {
                return;
            }
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 6, eflags: 0x2 linked
// Checksum 0x302601b4, Offset: 0x10210
// Size: 0x598
function function_9ad5aeb1(var_a8d0b313 = 1, var_82ea43f2 = 1, b_hide_body = 0, var_b0e62e21 = 1, var_814b69d3 = 1, var_87c98387 = "white") {
    var_4b9821e4 = 0;
    a_players = function_a1ef346b();
    foreach (player in a_players) {
        player val::set(#"hash_2f1b514922b9901e", "takedamage", 0);
    }
    if (!isarray(var_b0e62e21)) {
        if (var_b0e62e21) {
            if (var_814b69d3) {
                level thread lui::screen_flash(1, 1, 0.5, 1, var_87c98387);
            } else {
                level thread lui::screen_flash(0.2, 0.5, 1, 0.8, var_87c98387);
            }
        }
    } else {
        var_72487f42 = var_b0e62e21[0];
        n_hold = var_b0e62e21[1];
        var_7012f1e9 = var_b0e62e21[2];
        n_alpha = array(0.8, 1)[var_814b69d3];
        level thread lui::screen_flash(var_72487f42, n_hold, var_7012f1e9, n_alpha, var_87c98387);
    }
    foreach (ai in getaiteamarray(level.zombie_team)) {
        if (isalive(ai) && !is_true(ai.var_d45ca662) && !is_true(ai.marked_for_death)) {
            if (var_a8d0b313) {
                ai zm_cleanup::function_23621259(0);
            }
            if (var_82ea43f2 || ai.var_6f84b820 !== #"normal") {
                if (is_magic_bullet_shield_enabled(ai)) {
                    ai util::stop_magic_bullet_shield();
                }
                ai.allowdeath = 1;
                ai.no_powerups = 1;
                ai.deathpoints_already_given = 1;
                ai.marked_for_death = 1;
                if (!b_hide_body && ai.var_6f84b820 === #"normal" && var_4b9821e4 < 6) {
                    var_4b9821e4++;
                    ai thread zombie_death::flame_death_fx();
                    if (!is_true(ai.no_gib)) {
                        ai zombie_utility::zombie_head_gib();
                    }
                }
                ai dodamage(ai.health + 666, ai.origin);
                if (b_hide_body) {
                    ai hide();
                    ai notsolid();
                }
            } else {
                ai delete();
            }
        }
        waitframe(1);
    }
    foreach (player in a_players) {
        if (isdefined(player)) {
            player val::reset(#"hash_2f1b514922b9901e", "takedamage");
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x0
// Checksum 0x2a69f320, Offset: 0x107b0
// Size: 0x2c
function function_508f636d() {
    level function_9ad5aeb1(0, 1, 0, 1, "black");
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x1c12cea3, Offset: 0x107e8
// Size: 0xa2
function function_850e7499(weapon, var_20c27a34 = 0) {
    if (weapon === level.weaponnone) {
        return false;
    }
    if (weapon === getweapon(#"eq_wraith_fire")) {
        return true;
    }
    if (var_20c27a34 && weapon === getweapon(#"wraith_fire_fire")) {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x60f3e9aa, Offset: 0x10898
// Size: 0x58
function is_claymore(weapon) {
    if (weapon === level.weaponnone) {
        return false;
    }
    if (weapon === getweapon(#"claymore")) {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x27831453, Offset: 0x108f8
// Size: 0x58
function function_b797694c(weapon) {
    if (weapon === level.weaponnone) {
        return false;
    }
    if (weapon === getweapon(#"eq_acid_bomb")) {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xc17c8af9, Offset: 0x10958
// Size: 0x58
function is_frag_grenade(weapon) {
    if (weapon === level.weaponnone) {
        return false;
    }
    if (weapon === getweapon(#"eq_frag_grenade")) {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x5acb939e, Offset: 0x109b8
// Size: 0xa2
function is_mini_turret(weapon, var_b69165c7 = 0) {
    if (weapon === level.weaponnone) {
        return false;
    }
    if (weapon === getweapon(#"mini_turret")) {
        return true;
    }
    if (var_b69165c7 && weapon === getweapon(#"gun_mini_turret")) {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x50ae3cc0, Offset: 0x10a68
// Size: 0x2e
function function_a2541519(var_da4af4df) {
    if (is_standard()) {
        var_da4af4df = level.var_aaf21bbb;
    }
    return var_da4af4df;
}

// Namespace zm_utility/zm_utility
// Params 8, eflags: 0x0
// Checksum 0x403b9762, Offset: 0x10aa0
// Size: 0x564
function function_4a25b584(v_start_pos, var_487ba56d, n_radius = 512, b_randomize = 1, var_79ced64 = 0.2, n_half_height = 4, var_21aae2c6 = undefined, var_a5b5d950) {
    level endon(#"end_game");
    var_bf08dccd = [];
    v_start_pos = groundtrace(v_start_pos + (0, 0, 8), v_start_pos + (0, 0, -100000), 0, undefined)[#"position"];
    if (isdefined(var_21aae2c6)) {
        s_result = positionquery_source_navigation(var_21aae2c6, 32, n_radius, n_half_height, 16, 1, 32);
    } else {
        s_result = positionquery_source_navigation(v_start_pos, 32, n_radius, n_half_height, 16, 1, 32);
    }
    if (isdefined(s_result) && isarray(s_result.data)) {
        if (b_randomize) {
            s_result.data = array::randomize(s_result.data);
        }
        foreach (var_c310df8c in s_result.data) {
            if (function_25e3484e(var_c310df8c.origin, 24, var_bf08dccd)) {
                var_7a4cb7eb = var_c310df8c.origin;
                n_height_diff = abs(var_7a4cb7eb[2] - v_start_pos[2]);
                if (n_height_diff > 60) {
                    continue;
                }
                if (!isdefined(var_bf08dccd)) {
                    var_bf08dccd = [];
                } else if (!isarray(var_bf08dccd)) {
                    var_bf08dccd = array(var_bf08dccd);
                }
                var_bf08dccd[var_bf08dccd.size] = var_7a4cb7eb;
                if (var_bf08dccd.size > var_487ba56d + 20) {
                    break;
                }
            }
        }
    }
    if (b_randomize) {
        var_bf08dccd = array::randomize(var_bf08dccd);
    }
    level.var_ec45f213 = 0;
    switch (level.players.size) {
    case 1:
        var_487ba56d = int(var_487ba56d * 0.5);
        break;
    case 2:
        var_487ba56d = int(var_487ba56d * 0.75);
        break;
    }
    if (var_487ba56d > var_bf08dccd.size) {
        var_487ba56d = var_bf08dccd.size;
    }
    var_487ba56d = int(max(var_487ba56d, 1));
    for (i = 0; i < var_487ba56d; i++) {
        e_powerup = function_ce46d95e(v_start_pos, 0, 0, 1);
        if (!isdefined(e_powerup)) {
            continue;
        }
        if (isdefined(var_a5b5d950)) {
            e_powerup setmodel(var_a5b5d950);
        }
        if (isdefined(var_bf08dccd[i])) {
            var_96bdce8a = length(v_start_pos - var_bf08dccd[i]);
            n_move_time = e_powerup fake_physicslaunch(var_bf08dccd[i] + (0, 0, 35), var_96bdce8a);
        } else {
            n_move_time = e_powerup fake_physicslaunch(v_start_pos + (0, 0, 35), n_radius / 3.5);
        }
        if (isdefined(level.var_b4ff4ec)) {
            e_powerup thread [[ level.var_b4ff4ec ]](n_move_time);
        }
        wait(var_79ced64);
    }
    if (is_standard()) {
        level.var_ec45f213 = 1;
    }
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x2 linked
// Checksum 0x6f3be7c6, Offset: 0x11010
// Size: 0x160
function function_25e3484e(v_pos, n_spacing = 400, var_3e807a14) {
    var_91890e6 = zm_powerups::get_powerups(v_pos, n_spacing);
    if (var_91890e6.size > 0) {
        return false;
    }
    if (isarray(var_3e807a14)) {
        foreach (var_a8f85c02 in var_3e807a14) {
            if (distance(v_pos, var_a8f85c02) < n_spacing) {
                return false;
            }
        }
    }
    if (isdefined(level.var_3e96c707)) {
        if (![[ level.var_3e96c707 ]](v_pos)) {
            return false;
        }
    }
    if (check_point_in_playable_area(v_pos) && check_point_in_enabled_zone(v_pos)) {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x2 linked
// Checksum 0xf7b62e7e, Offset: 0x11178
// Size: 0x112
function function_ce46d95e(v_origin, b_permanent = 1, var_4ecce348 = 1, var_9a5654a5) {
    if (var_4ecce348) {
        while (level.active_powerups.size >= 75) {
            waitframe(1);
        }
    }
    if (level.active_powerups.size < 75) {
        e_powerup = zm_powerups::specific_powerup_drop("bonus_points_player", v_origin, undefined, var_9a5654a5, undefined, b_permanent, 1);
        if (isdefined(e_powerup)) {
            if (isdefined(level.var_48e2ab90)) {
                e_powerup setscale(level.var_48e2ab90);
            }
            if (isdefined(level.var_6463d67c)) {
                e_powerup.var_258c5fbc = level.var_6463d67c;
            }
        }
    }
    return e_powerup;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x6e36b882, Offset: 0x11298
// Size: 0x2c
function is_jumping() {
    ground_ent = self getgroundent();
    return !isdefined(ground_ent);
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x0
// Checksum 0x8dc7eb56, Offset: 0x112d0
// Size: 0x272
function function_9f7fd525(var_c61df77f = "zombie_location", a_str_zones, var_a6f0ec9f = 1) {
    a_s_locs = [];
    if (isdefined(a_str_zones)) {
        if (!isdefined(a_str_zones)) {
            a_str_zones = [];
        } else if (!isarray(a_str_zones)) {
            a_str_zones = array(a_str_zones);
        }
        if (var_a6f0ec9f) {
            var_5386ca1d = level.zm_loc_types[var_c61df77f];
        } else {
            var_5386ca1d = struct::get_array("spawn_location", "script_noteworthy");
        }
        foreach (str_zone in a_str_zones) {
            foreach (s_loc in var_5386ca1d) {
                if (str_zone === s_loc.zone_name) {
                    if (!isdefined(a_s_locs)) {
                        a_s_locs = [];
                    } else if (!isarray(a_s_locs)) {
                        a_s_locs = array(a_s_locs);
                    }
                    if (!isinarray(a_s_locs, s_loc)) {
                        a_s_locs[a_s_locs.size] = s_loc;
                    }
                }
            }
        }
    } else if (var_a6f0ec9f) {
        var_5386ca1d = level.zm_loc_types[var_c61df77f];
    } else {
        var_5386ca1d = struct::get_array("spawn_location", "script_noteworthy");
    }
    return a_s_locs;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x0
// Checksum 0x503709f4, Offset: 0x11550
// Size: 0xc2
function function_7618c8ef(var_6e4c63cc = 0.0667) {
    n_damage_multiplier = 1;
    if (is_true(self.ignore_health_regen_delay)) {
        n_damage_multiplier += 1.25;
        if (self hasperk(#"hash_7f98b3dd3cce95aa")) {
            n_damage_multiplier += 0.75;
        }
    }
    var_16e6b8ea = int(self.maxhealth * var_6e4c63cc * n_damage_multiplier);
    return var_16e6b8ea;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x4ab55d43, Offset: 0x11620
// Size: 0x42
function function_10e38d86() {
    if (function_c200446c()) {
        return getscriptbundle("zombie_onslaught_vars_settings");
    }
    return getscriptbundle("zombie_vars_settings");
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x8070afe, Offset: 0x11670
// Size: 0x25a
function function_36eb0acc(str_rarity = #"none") {
    switch (str_rarity) {
    case #"none":
        self clientfield::set("model_rarity_rob", 1);
        break;
    case #"resource":
    case #"white":
        self clientfield::set("model_rarity_rob", 2);
        break;
    case #"green":
    case #"uncommon":
        self clientfield::set("model_rarity_rob", 3);
        break;
    case #"blue":
    case #"rare":
        self clientfield::set("model_rarity_rob", 4);
        break;
    case #"purple":
    case #"epic":
        self clientfield::set("model_rarity_rob", 5);
        break;
    case #"orange":
    case #"legendary":
        self clientfield::set("model_rarity_rob", 6);
        break;
    case #"yellow":
    case #"ultra":
    case #"gold":
        self clientfield::set("model_rarity_rob", 7);
        break;
    default:
        self clientfield::set("model_rarity_rob", 0);
        break;
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xa30df5ec, Offset: 0x118d8
// Size: 0x152
function function_e3025ca5() {
    if (is_survival()) {
        var_3afe334f = level.var_b48509f9;
    } else if (function_c200446c()) {
        var_3afe334f = 1;
        var_cf03ccb6 = level.var_9b7bd0e8;
        if (isdefined(level.var_693d250e) && level.var_693d250e >= 1) {
            var_cf03ccb6 = level.var_9b7bd0e8 + 1;
        }
        if (util::get_game_type() === #"hash_125fc0c0065c7dea") {
            var_cf03ccb6 = floor(var_cf03ccb6 / 3);
            if (var_cf03ccb6 < 1) {
                var_cf03ccb6 = 1;
            }
        }
        if (var_cf03ccb6 < 8) {
            var_3afe334f = var_cf03ccb6;
        } else {
            var_3afe334f = 8;
        }
    } else {
        var_3afe334f = ceil(level.round_number / 5);
    }
    return int(var_3afe334f);
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x6d459a0d, Offset: 0x11a38
// Size: 0x1a2
function get_round_number(var_ec585b8 = 0) {
    if (is_survival()) {
        var_88710b09 = zombie_utility::get_zombie_var(#"hash_6ba259e60f87bb15");
        if (var_ec585b8 > 0) {
            n_round_number = isdefined(var_88710b09[var_ec585b8 - 1].round) ? var_88710b09[var_ec585b8 - 1].round : 0;
        } else if (level.var_b48509f9 - 1 >= var_88710b09.size) {
            n_round_number = isdefined(var_88710b09[var_88710b09.size - 1].round) ? var_88710b09[var_88710b09.size - 1].round : 100;
        } else {
            n_round_number = isdefined(var_88710b09[level.var_b48509f9 - 1].round) ? var_88710b09[level.var_b48509f9 - 1].round : 0;
        }
    } else if (function_c200446c()) {
        return level.wave_number;
    } else {
        n_round_number = isdefined(self._starting_round_number) ? self._starting_round_number : level.round_number;
    }
    return int(n_round_number);
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x2 linked
// Checksum 0xed255f35, Offset: 0x11be8
// Size: 0xa4
function function_747180ea(var_8861fa85, n_radius = 64, trigger, var_ab426dbb = 0) {
    if (!isdefined(var_8861fa85)) {
        var_8861fa85 = [];
    } else if (!isarray(var_8861fa85)) {
        var_8861fa85 = array(var_8861fa85);
    }
    self thread function_e1a11b1(var_8861fa85, n_radius, trigger, var_ab426dbb);
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x6 linked
// Checksum 0x5b1dc8fc, Offset: 0x11c98
// Size: 0x44c
function private function_e1a11b1(var_8861fa85, n_radius, trigger, var_ab426dbb = 0) {
    self notify("7ca7585758ee8d2e");
    self endon("7ca7585758ee8d2e");
    foreach (n_obj_id in var_8861fa85) {
        level endon("cleanup_zm_objective_id_" + n_obj_id);
    }
    self endoncallback(&function_e5dcd07a, #"death", #"hash_261161e11cf95f9f");
    n_radius_sq = sqr(n_radius);
    self.var_45f78aa4 = arraycopy(var_8861fa85);
    while (true) {
        foreach (n_obj_id in self.var_45f78aa4) {
            if (isarray(level.releasedobjectives) && isinarray(level.releasedobjectives, n_obj_id)) {
                break;
            }
            foreach (player in getplayers()) {
                var_13dc7b2a = 1;
                n_ent_num = player getentitynumber();
                if (is_true(level.var_e63703cd[n_obj_id].var_d0d552ea[n_ent_num])) {
                    var_13dc7b2a = 0;
                }
                if (isdefined(trigger)) {
                    if (trigger function_4f593819(player, self)) {
                        objective_setplayerusing(n_obj_id, player);
                        if (var_ab426dbb && var_13dc7b2a) {
                            objective_setinvisibletoplayer(n_obj_id, player);
                        }
                    } else {
                        objective_clearplayerusing(n_obj_id, player);
                        if (var_ab426dbb && var_13dc7b2a) {
                            objective_setvisibletoplayer(n_obj_id, player);
                        }
                    }
                    continue;
                }
                if (distancesquared(player.origin, self.origin) < n_radius_sq) {
                    objective_setplayerusing(n_obj_id, player);
                    if (var_ab426dbb && var_13dc7b2a) {
                        objective_setinvisibletoplayer(n_obj_id, player);
                    }
                    continue;
                }
                objective_clearplayerusing(n_obj_id, player);
                if (var_ab426dbb && var_13dc7b2a) {
                    objective_setvisibletoplayer(n_obj_id, player);
                }
            }
        }
        waitframe(1);
    }
    self function_48d9a9c9();
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x6f141a21, Offset: 0x120f0
// Size: 0x16
function function_48d9a9c9() {
    self notify(#"hash_261161e11cf95f9f");
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x4b66968, Offset: 0x12110
// Size: 0x112
function function_4f593819(player, ignore_ent) {
    if (isstruct(self) && isdefined(self.script_unitrigger_type)) {
        if (isdefined(self.playertrigger[player getentitynumber()])) {
            trigger = self.playertrigger[player getentitynumber()];
        } else if (isdefined(self.trigger)) {
            trigger = self.trigger;
        } else {
            return 0;
        }
    } else {
        trigger = self;
    }
    if (!trigger istouching(player)) {
        return 0;
    }
    if (!trigger triggerrequireslookat()) {
        return 1;
    }
    return player util::is_player_looking_at(trigger.origin, 0.76, 1, ignore_ent);
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x2c3d662d, Offset: 0x12230
// Size: 0x12e
function private function_e5dcd07a(*str_notify) {
    if (isarray(self.var_45f78aa4)) {
        foreach (n_obj_id in self.var_45f78aa4) {
            foreach (player in getplayers()) {
                objective_clearplayerusing(n_obj_id, player);
            }
        }
        self.var_45f78aa4 = undefined;
    }
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x9360de82, Offset: 0x12368
// Size: 0x9c
function function_ee6da6f6(n_delay = 15, str_waittill = "player_intermission_spawned") {
    self endon(#"disconnect");
    self thread lui::screen_fade_out(0, (0, 0, 0), "end_game_blackscreen");
    self waittilltimeout(n_delay, str_waittill);
    self thread lui::screen_fade_in(0, (0, 0, 0), "end_game_blackscreen");
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x31cde799, Offset: 0x12410
// Size: 0x104
function function_5d356609(aat_name, n_tier) {
    if (isplayer(self) && isdefined(aat_name)) {
        var_f35f3f4b = {#var_27ad1f0f:hash(aat_name), #var_93230b5d:n_tier, #var_9f39dfd4:function_f8d53445(), #var_c075f57d:get_round_number(), #var_dacb4b0b:function_e3025ca5()};
        self function_678f57c8(#"hash_69732e83f28ba309", var_f35f3f4b);
    }
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x0
// Checksum 0x1953d4d5, Offset: 0x12520
// Size: 0x1b4
function function_60daf5f7(str_name, str_key = "targetname", b_hide = 1) {
    e_machine = getent(str_name, str_key);
    if (isdefined(e_machine)) {
        if (b_hide) {
            if (isdefined(e_machine.objectiveid)) {
                function_e8f4d47b(getplayers(), e_machine.objectiveid, 1);
                objective_setinvisibletoall(e_machine.objectiveid);
            }
            e_machine.trigger hide();
            e_machine hide();
            e_machine notsolid();
            return;
        }
        e_machine.trigger show();
        e_machine show();
        e_machine solid();
        if (isdefined(e_machine.objectiveid)) {
            objective_setvisibletoall(e_machine.objectiveid);
            function_e8f4d47b(getplayers(), e_machine.objectiveid, 0);
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x2 linked
// Checksum 0xc5aee15d, Offset: 0x126e0
// Size: 0xf6
function function_ca960904(e_machine, var_cc253f86, var_6f0e765d) {
    if (!isdefined(level.var_c427e93b)) {
        level.var_c427e93b = [];
    } else if (!isarray(level.var_c427e93b)) {
        level.var_c427e93b = array(level.var_c427e93b);
    }
    if (!isinarray(level.var_c427e93b, e_machine)) {
        level.var_c427e93b[level.var_c427e93b.size] = e_machine;
    }
    e_machine clientfield::set("force_stream", 1);
    e_machine.var_cc253f86 = var_cc253f86;
    e_machine.var_6f0e765d = var_6f0e765d;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xfe3eeeb6, Offset: 0x127e0
// Size: 0x466
function function_725e99fb() {
    level endon(#"end_game");
    if (!isdefined(level.var_c427e93b)) {
        level.var_c427e93b = [];
    }
    while (true) {
        arrayremovevalue(level.var_c427e93b, undefined);
        /#
            if (!getdvarint(#"hash_2769a6109d9d7b4d", 1)) {
                foreach (machine in level.var_c427e93b) {
                    if (is_true(machine.var_c02c4d66)) {
                        machine sethighdetail(0);
                        machine.var_c02c4d66 = undefined;
                    }
                }
                wait(1);
                continue;
            }
        #/
        foreach (machine in level.var_c427e93b) {
            if (!is_true(machine.var_cc253f86) && !is_true(machine.var_6f0e765d)) {
                continue;
            }
            foreach (player in getplayers()) {
                var_30300360 = 0;
                if (is_player_valid(player, undefined, 1) && isdefined(machine) && function_7757350c(player, machine)) {
                    var_30300360 = 1;
                }
                if (isdefined(machine)) {
                    var_4e157e21 = machine getentitynumber();
                    if (var_30300360 && !is_true(machine.var_c02c4d66)) {
                        if (!isdefined(player.var_4a501715[var_4e157e21])) {
                            var_b0b08518 = player create_streamer_hint(machine.origin, machine.angles, 1, 10, var_4e157e21);
                            var_b0b08518.var_86e2d95e = machine.model;
                        }
                        if (is_true(machine.var_6f0e765d)) {
                            machine sethighdetail(1);
                        }
                        machine.var_c02c4d66 = 1;
                    } else if (!var_30300360 && is_true(machine.var_c02c4d66)) {
                        if (isdefined(player.var_4a501715[var_4e157e21])) {
                            player clear_streamer_hint(var_4e157e21);
                        }
                        if (is_true(machine.var_6f0e765d)) {
                            machine sethighdetail(0);
                        }
                        machine.var_c02c4d66 = undefined;
                    }
                }
                waitframe(1);
            }
        }
        waitframe(10);
    }
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x6 linked
// Checksum 0xcf6846e5, Offset: 0x12c50
// Size: 0xee
function private function_7757350c(player, machine) {
    var_2cdb84bb = machine.origin + machine getboundsmidpoint();
    n_height_diff = abs(player.origin[2] - machine.origin[2]);
    if (n_height_diff < 140 && distance2dsquared(player.origin, var_2cdb84bb) < 360000) {
        return true;
    }
    if (player util::is_player_looking_at(var_2cdb84bb, 0.75, 1, machine, player)) {
        return true;
    }
    return false;
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xf22b9d43, Offset: 0x12d48
// Size: 0x1c
function on_disconnect() {
    self clear_streamer_hint();
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x5b31e56a, Offset: 0x12d70
// Size: 0x96
function function_e77fca72() {
    self endoncallback(&function_6a447863, #"death", #"hash_7fb506f40bcf5962");
    self.var_624e969b = 1;
    self.original_angles = self.angles;
    while (true) {
        function_14bad487(self, 0.75, 0.05, 3);
        if (true) {
            wait(2);
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 4, eflags: 0x2 linked
// Checksum 0xc320e59d, Offset: 0x12e10
// Size: 0x106
function function_14bad487(trap_prop, total_time, iteration_time, angle) {
    original_angles = trap_prop.angles;
    iterations = total_time / iteration_time;
    start_roll = trap_prop.angles[2];
    current_delta = angle;
    if (isdefined(self.rattle_sound)) {
        playsoundatposition(self.rattle_sound, self.origin);
    }
    for (i = 0; i < iterations; i++) {
        trap_prop rotateroll(start_roll + current_delta, iteration_time);
        current_delta *= -1;
        wait(iteration_time);
    }
    trap_prop.angles = original_angles;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x968fe752, Offset: 0x12f20
// Size: 0x2a
function function_6a447863(*notifyhash) {
    if (isdefined(self)) {
        self.angles = self.original_angles;
        self.var_624e969b = undefined;
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x47d28d1d, Offset: 0x12f58
// Size: 0x174
function function_ebd87099(player) {
    if (isdefined(level.var_23fc2144) && isdefined(level.var_f7794bb5)) {
        var_2a4e3502 = arraysortclosest(level.var_23fc2144, player.origin, undefined, undefined, level.var_f7794bb5 + 15);
        foreach (param in var_2a4e3502) {
            if (player.origin[2] >= param.origin[2] && player.origin[2] <= param.origin[2] + param.height && distance2dsquared(player.origin, param.origin) < sqr(param.radius)) {
                return param;
            }
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 5, eflags: 0x0
// Checksum 0x4588048c, Offset: 0x130d8
// Size: 0x180
function function_89dbd679(origin, radius, height, goal_origin, var_b9e9cdf3) {
    if (!isdefined(level.var_23fc2144)) {
        level.var_23fc2144 = [];
    }
    level.var_23fc2144[level.var_23fc2144.size] = {#origin:origin, #radius:radius, #height:height, #goal_origin:goal_origin, #var_b9e9cdf3:var_b9e9cdf3};
    max_radius = 0;
    foreach (override in level.var_23fc2144) {
        max_radius = max(max(max_radius, override.radius), override.height);
    }
    level.var_f7794bb5 = max_radius;
}

// Namespace zm_utility/zm_utility
// Params 3, eflags: 0x0
// Checksum 0x95f24f3e, Offset: 0x13260
// Size: 0x26a
function function_cce73165(var_947b45e7, var_82706add, str_zone_name) {
    var_a96b643a = [];
    var_dbc18a74 = struct::get_array(var_947b45e7, "script_noteworthy");
    foreach (spawner in var_dbc18a74) {
        if (str_zone_name === spawner.zone_name) {
            if (!isdefined(var_a96b643a)) {
                var_a96b643a = [];
            } else if (!isarray(var_a96b643a)) {
                var_a96b643a = array(var_a96b643a);
            }
            var_a96b643a[var_a96b643a.size] = spawner;
        }
    }
    if (var_a96b643a.size > 0) {
        var_958f8634 = var_a96b643a[randomint(var_a96b643a.size)];
    } else {
        return;
    }
    if (getfreeactorcount() < 1) {
        a_zombie = getaiarchetypearray(#"zombie");
        if (isdefined(a_zombie)) {
            a_zombie[0].allowdeath = 1;
            a_zombie[0] kill();
        }
    }
    if (isdefined(var_958f8634)) {
        ai = spawnactor(var_82706add, var_958f8634.origin, var_958f8634.angles);
    } else {
        /#
            iprintlnbold("<unknown string>" + str_zone_name + "<unknown string>");
        #/
        ai = spawnactor(var_82706add, var_dbc18a74[0].origin, var_dbc18a74[0].angles);
    }
    return ai;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x8c4b4c1e, Offset: 0x134d8
// Size: 0x238
function function_d729de6a(b_enable = 1, a_str_zones) {
    if (!is_classic()) {
        return;
    }
    if (!isdefined(a_str_zones)) {
        a_str_zones = [];
    } else if (!isarray(a_str_zones)) {
        a_str_zones = array(a_str_zones);
    }
    if (b_enable) {
        array::thread_all(getplayers(), &function_42ff30dc, a_str_zones);
        callback::on_ai_damage(&function_9452d2ee);
        function_cf7a0b3d(0, a_str_zones);
        function_c2da57a7(0, a_str_zones);
        return;
    }
    callback::remove_on_ai_damage(&function_9452d2ee);
    function_cf7a0b3d(1, a_str_zones);
    function_c2da57a7(1, a_str_zones);
    foreach (player in getplayers()) {
        player flag::clear(#"hash_35db0208f90f5145");
        player val::reset(#"hash_31f206367fcff836", "ignoreme");
        player.var_8dbfa2f5 = undefined;
    }
    level notify(#"hash_674491fa3bd36b34");
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xcf125a7a, Offset: 0x13718
// Size: 0x314
function function_42ff30dc(a_str_zones) {
    self notify("6d99fc4675da1628");
    self endon("6d99fc4675da1628");
    level endon(#"hash_674491fa3bd36b34");
    self endon(#"disconnect");
    var_b7153b99 = 0;
    self.var_8dbfa2f5 = a_str_zones;
    self flag::set(#"hash_35db0208f90f5145");
    while (true) {
        var_6494601f = 0;
        foreach (str_zone in a_str_zones) {
            if (self.cached_zone_name === str_zone) {
                var_6494601f = 1;
                break;
            }
        }
        if (!self flag::get(#"hash_35db0208f90f5145")) {
            break;
        }
        if (var_6494601f && !var_b7153b99) {
            self val::set(#"hash_31f206367fcff836", "ignoreme", 1);
            var_b7153b99 = 1;
        } else if (!var_6494601f && var_b7153b99) {
            self val::reset(#"hash_31f206367fcff836", "ignoreme");
            var_b7153b99 = 0;
        }
        s_waitresult = self waittill(#"zone_change", #"hash_35db0208f90f5145");
    }
    self flag::clear(#"hash_35db0208f90f5145");
    self val::reset(#"hash_31f206367fcff836", "ignoreme");
    foreach (player in getplayers()) {
        if (player flag::get(#"hash_35db0208f90f5145")) {
            return;
        }
    }
    level thread function_d729de6a(0, a_str_zones);
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x45c122c7, Offset: 0x13a38
// Size: 0xfc
function function_9452d2ee(params) {
    if (self.team === level.zombie_team && isplayer(params.eattacker) && params.eattacker flag::get(#"hash_35db0208f90f5145") && params.smeansofdeath !== "MOD_GRENADE_SPLASH" && params.smeansofdeath !== "MOD_GAS") {
        params.eattacker flag::clear(#"hash_35db0208f90f5145");
        params.eattacker val::reset(#"hash_31f206367fcff836", "ignoreme");
    }
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x3cfcdbd5, Offset: 0x13b40
// Size: 0xc2
function function_cf7a0b3d(var_81aa5a36 = 1, a_str_zones) {
    foreach (str_zone in a_str_zones) {
        if (zm_zonemgr::zone_is_enabled(str_zone)) {
            level.zones[str_zone].is_spawning_allowed = var_81aa5a36;
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x5ac5e8d9, Offset: 0x13c10
// Size: 0x208
function function_c2da57a7(var_ac0be832 = 1, a_str_zones) {
    foreach (str_zone in a_str_zones) {
        if (zm_zonemgr::zone_is_enabled(str_zone)) {
            if (var_ac0be832) {
                if (isdefined(level.zones[str_zone].var_d4940e8c[#"wait_location"])) {
                    level.zones[str_zone].a_loc_types[#"wait_location"] = arraycopy(level.zones[str_zone].var_d4940e8c[#"wait_location"]);
                    level.zones[str_zone].var_d4940e8c[#"wait_location"] = undefined;
                    level.zones[str_zone].var_d4940e8c = undefined;
                }
                continue;
            }
            level.zones[str_zone].var_d4940e8c[#"wait_location"] = arraycopy(level.zones[str_zone].a_loc_types[#"wait_location"]);
            level.zones[str_zone].a_loc_types[#"wait_location"] = [];
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x818f8e98, Offset: 0x13e20
// Size: 0x1b8
function function_2256923f(n_cost) {
    level endon(#"game_ended");
    self endon(#"death");
    while (true) {
        foreach (player in function_a1ef346b()) {
            var_99442276 = player zm_score::can_player_purchase(n_cost);
            if (!var_99442276 && player istouching(self)) {
                if (self function_4f593819(player)) {
                    player globallogic::function_d1924f29(#"hash_6e3ae7967dc5d414");
                    player.var_e62ad24a = self;
                } else {
                    player globallogic::function_d96c031e();
                    if (player.var_e62ad24a === self) {
                        player.var_e62ad24a = undefined;
                    }
                }
                continue;
            }
            if (player.var_e62ad24a === self) {
                player globallogic::function_d96c031e();
                player.var_e62ad24a = undefined;
            }
        }
        wait(0.5);
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x46c69f63, Offset: 0x13fe0
// Size: 0x290
function clear_vehicles(mdl_machine) {
    mdl_machine playrumbleonentity(#"sr_transmitter_clear");
    a_vehicles = [];
    var_a8b5d9cc = arraycombine(getentitiesinradius(mdl_machine.origin, 300, 12), getentitiesinradius(mdl_machine.origin, 300, 14));
    foreach (vehicle in var_a8b5d9cc) {
        if (vehicle istouching(mdl_machine)) {
            if (!isdefined(a_vehicles)) {
                a_vehicles = [];
            } else if (!isarray(a_vehicles)) {
                a_vehicles = array(a_vehicles);
            }
            a_vehicles[a_vehicles.size] = vehicle;
            continue;
        }
        if (isdefined(mdl_machine.trigger) && vehicle istouching(mdl_machine.trigger)) {
            if (!isdefined(a_vehicles)) {
                a_vehicles = [];
            } else if (!isarray(a_vehicles)) {
                a_vehicles = array(a_vehicles);
            }
            a_vehicles[a_vehicles.size] = vehicle;
        }
    }
    foreach (vehicle in a_vehicles) {
        if (!is_true(vehicle.var_2e436083)) {
            vehicle.var_2e436083 = 1;
            vehicle thread function_78e620d();
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xfcda7093, Offset: 0x14278
// Size: 0x1dc
function function_78e620d() {
    if (isvehicle(self)) {
        var_9cfd0ea9 = self getvehoccupants();
        foreach (player in var_9cfd0ea9) {
            player unlink();
        }
        self makevehicleunusable();
        self battletracks::function_fe45d0ae();
        wait(0.2);
    }
    if (isdefined(self)) {
        self clientfield::increment("" + #"vehicle_teleport");
        wait(1.5);
        if (isdefined(self.var_e6604bb)) {
            foreach (ent in self.var_e6604bb) {
                if (isdefined(ent)) {
                    ent delete();
                }
            }
        }
        if (isdefined(self)) {
            self delete();
        }
    }
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x7511e07a, Offset: 0x14460
// Size: 0xca
function function_b42da08a(dynent) {
    if (!isdefined(dynent)) {
        return undefined;
    }
    if (!isdefined(level.var_4b8c034d)) {
        level.var_4b8c034d = [];
    }
    if (isdefined(level.var_4b8c034d[dynent.var_15d44120])) {
        dynent.bundle = level.var_4b8c034d[dynent.var_15d44120];
    } else {
        bundle = function_489009c1(dynent);
        level.var_4b8c034d[dynent.var_15d44120] = bundle;
        dynent.bundle = level.var_4b8c034d[dynent.var_15d44120];
    }
    return dynent.bundle;
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xb466ae83, Offset: 0x14538
// Size: 0x3c
function start_ragdoll(immediate) {
    if (is_true(self.var_873d65bd)) {
        return;
    }
    self startragdoll(immediate);
}

// Namespace zm_utility/zm_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x362a0a77, Offset: 0x14580
// Size: 0x10e
function function_d7fedde2(entity) {
    players = array::get_all_closest(entity.origin, function_a1ef346b());
    foreach (player in players) {
        if (!is_true(player.ignoreme) && !player isnotarget() && !player util::is_spectating()) {
            return player;
        }
    }
    return undefined;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x29c70fea, Offset: 0x14698
// Size: 0x238
function function_d34f6296(v_origin, n_radius) {
    if (!is_survival()) {
        return [];
    }
    var_1046ec68 = getentarray("sr_aether_orb", "targetname");
    var_6bca202c = getentarray("sr_demented_echo", "targetname");
    var_aa419446 = getentarray("world_event_black_chest_swarm", "targetname");
    var_9e2c450b = getentarray("sr_swarm_hulking_summoner", "targetname");
    var_e7464eb0 = arraycombine(var_aa419446, var_9e2c450b, 0, 0);
    a_ents = arraycombine(var_e7464eb0, var_1046ec68, 0, 0);
    a_ents = arraycombine(a_ents, var_6bca202c, 0, 0);
    if (isdefined(v_origin) && isdefined(n_radius)) {
        a_ents = arraysortclosest(a_ents, v_origin, undefined, undefined, n_radius);
    }
    foreach (ent in a_ents) {
        if (is_false(ent.takedamage)) {
            arrayremovevalue(a_ents, ent, 1);
        }
    }
    arrayremovevalue(a_ents, undefined, 0);
    return a_ents;
}

// Namespace zm_utility/zm_utility
// Params 2, eflags: 0x0
// Checksum 0x10749b20, Offset: 0x148d8
// Size: 0x40
function function_da0eb3e4(itemname, func) {
    if (!isdefined(level.var_217d3a3b)) {
        level.var_217d3a3b = [];
    }
    level.var_217d3a3b[itemname] = func;
}

