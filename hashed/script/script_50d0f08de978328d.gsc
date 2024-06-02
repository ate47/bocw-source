// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\player\player_utils.gsc;
#using script_43f7c47906da34c7;
#using scripts\mp_common\gametypes\round.gsc;
#using scripts\mp_common\gametypes\outcome.gsc;
#using scripts\mp_common\gametypes\globallogic_utils.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using script_1cc417743d7c262d;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\core_common\battlechatter.gsc;
#using scripts\mp_common\challenges.gsc;
#using scripts\core_common\util_shared.gsc;
#using script_7a8059ca02b7b09e;
#using scripts\core_common\trigger_shared.gsc;
#using script_44b0b8420eabacad;
#using script_335d0650ed05d36d;
#using script_7d712f77ab8d0c16;
#using scripts\core_common\sound_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\potm_shared.gsc;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\medals_shared.gsc;
#using scripts\core_common\influencers_shared.gsc;
#using scripts\core_common\hostmigration_shared.gsc;
#using script_1435f3c9fc699e04;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\demo_shared.gsc;
#using scripts\core_common\contracts_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_d150537f;

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0x5bd76e28, Offset: 0x618
// Size: 0x5fc
function init() {
    util::registerscorelimit(0, 1000);
    level.doprematch = 1;
    level.kothstarttime = 0;
    level.onstartgametype = &onstartgametype;
    level.scoremodifiercallback = &function_903a84d4;
    player::function_3c5cc656(&function_610d3790);
    clientfield::register("scriptmover", "zone_id", 1, 5, "int");
    clientfield::register("scriptmover", "zone_state", 1, 3, "int");
    level.zoneautomovetime = getgametypesetting(#"autodestroytime");
    level.zonespawntime = getgametypesetting(#"objectivespawntime");
    level.shownextzoneobjective = getgametypesetting(#"shownextzoneobjective");
    level.var_37bc0271 = getgametypesetting(#"hash_17be9fd145bd1153");
    level.kothmode = getgametypesetting(#"kothmode");
    level.capturetime = getgametypesetting(#"capturetime");
    level.destroytime = getgametypesetting(#"destroytime");
    level.delayplayer = getgametypesetting(#"delayplayer");
    level.randomzonespawn = getgametypesetting(#"randomobjectivelocations");
    level.scoreperplayer = getgametypesetting(#"scoreperplayer");
    level.var_5e8ffd3b = isdefined(getgametypesetting(#"hash_38d6e4d91bbc82ee")) ? getgametypesetting(#"hash_38d6e4d91bbc82ee") : 0;
    level.timepauseswheninzone = getgametypesetting(#"timepauseswheninzone");
    level.var_a495fcf1 = max(getgametypesetting(#"hash_c0beb1e5a80c25c"), 1);
    if (getdvarint(#"hash_5795d85dc4b1b0d9", 0)) {
        level.var_49a15413 = getdvarint(#"hash_5795d85dc4b1b0d9", 0);
    }
    level.var_1be269a9 = getgametypesetting(#"hash_4a10303376ed2d10");
    if (level.var_1be269a9 == 0) {
        level.var_1be269a9 = level.var_a495fcf1;
    }
    level.timerpaused = 0;
    level.b_allow_vehicle_proximity_pickup = 1;
    level.var_c85170d1 = 1;
    level.var_10c0e6bb = &function_41224c9d;
    level.var_ab24f23b = 1;
    spawning::addsupportedspawnpointtype("koth");
    spawning::function_754c78a6(&function_259770ba);
    spawning::function_754c78a6(&function_40c08152);
    spawning::function_32b97d1b(&spawning::function_90dee50d);
    spawning::function_adbbb58a(&spawning::function_c24e290c);
    /#
        spawning::function_a860c440(&function_ed2b0a19);
    #/
    game.objective_gained_sound = "mpl_flagcapture_sting_friend";
    game.objective_lost_sound = "mpl_flagcapture_sting_enemy";
    game.objective_contested_sound = "mpl_flagreturn_sting";
    level.zonespawnqueue = [];
    level.active_zones = [];
    level.var_6d2f376a = &function_6d2f376a;
    level.var_e80a117f = 0;
    level.var_f7a3b880 = #"hardpoint";
    if (isdefined(level.var_71f9a7ea)) {
        level.var_f7a3b880 = level.var_71f9a7ea;
    }
    level callback::add_callback(#"on_end_game", &on_end_game);
    callback::on_connect(&function_e3aab320);
    callback::on_spawned(&on_player_spawned);
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0x19f1a602, Offset: 0xc20
// Size: 0x2c
function on_end_game() {
    matchrecordroundend();
    setmatchflag("bomb_timer_a", 0);
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x4
// Checksum 0x2500865e, Offset: 0xc58
// Size: 0x1e2
function private function_941e9a96() {
    level endon(#"game_ended");
    while (true) {
        waitframe(1);
        foreach (player in level.players) {
            if (isdefined(player.var_592f3e3c)) {
                foreach (zone in level.active_zones) {
                    if (isdefined(player.var_592f3e3c[zone.script_index])) {
                        if (is_true(zone.gameobject.iscontested) || !isdefined(player.touchtriggers) || !isdefined(player.touchtriggers[zone.gameobject.entnum])) {
                            player.var_592f3e3c[zone.script_index] = undefined;
                        }
                    }
                }
            }
            if (player.var_b1ff3894 !== 1 && !isdefined(player function_2ff26e21())) {
                player.var_b1ff3894 = 1;
            }
        }
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xadfea407, Offset: 0xe48
// Size: 0x23c
function onstartgametype() {
    globallogic_score::resetteamscores();
    level.kothtotalsecondsinzone = 0;
    luinotifyevent(#"round_start");
    spawning::function_fac242d0(10, "koth_zone_", &function_9dc6016e);
    if (getgametypesetting(#"allowovertime")) {
        level.ontimelimit = &function_35088f57;
    }
    if (!setup_zones()) {
        return;
    }
    function_5b2a2486();
    foreach (zone in level.zones) {
        if (isdefined(zone.target)) {
            var_ae149778 = getentarray(zone.target, "targetname");
            foreach (visual in var_ae149778) {
                visual notsolid();
            }
        }
    }
    thread function_ee725386();
    thread function_941e9a96();
    if (isdefined(level.var_84a07819)) {
        [[ level.var_84a07819 ]]();
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xec0d19ea, Offset: 0x1090
// Size: 0x34
function pause_time() {
    if (level.timepauseswheninzone) {
        globallogic_utils::pausetimer();
        level.timerpaused = 1;
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0x9e0c54c9, Offset: 0x10d0
// Size: 0x58
function resume_time() {
    if (level.timepauseswheninzone) {
        globallogic_utils::resumetimerdiscardoverride(int(level.kothtotalsecondsinzone * 1000));
        level.timerpaused = 0;
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0x70b21c02, Offset: 0x1130
// Size: 0x54
function function_5b2a2486() {
    level.playercapturelpm = getgametypesetting(#"maxplayereventsperminute");
    level.timepauseswheninzone = getgametypesetting(#"timepauseswheninzone");
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0x73e4abb8, Offset: 0x1190
// Size: 0x198
function function_9695c3e3() {
    assert(level.var_73377ee4.size > 0);
    count = 0;
    foreach (obj_id in level.var_73377ee4) {
        count++;
        if (level.randomzonespawn != 0) {
            nextzoneindex = function_ac4c0c88(1, count - 1);
            nextzone = level.zonespawnqueue[nextzoneindex];
        } else {
            nextzoneindex = function_ac4c0c88(0, count);
            nextzone = level.zones[nextzoneindex];
        }
        objective_setstate(obj_id, "invisible");
        if (isdefined(nextzone)) {
            objective_onentity(obj_id, nextzone.objectiveanchor);
            level.var_e89ee661 = 1;
            continue;
        }
        level.var_e89ee661 = 0;
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xf2f5ce36, Offset: 0x1330
// Size: 0xf8
function function_9f81bb75() {
    assert(level.var_73377ee4.size > 0);
    if (is_true(level.var_e89ee661) && !is_true(level.overtime)) {
        foreach (obj_id in level.var_73377ee4) {
            objective_setstate(obj_id, "active");
        }
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 2, eflags: 0x0
// Checksum 0x4bf4342, Offset: 0x1430
// Size: 0x1b8
function function_785aa606(var_5ed6bcb0, var_514c251c) {
    if (level.randomzonespawn != 0 && !is_true(var_514c251c)) {
        zone = function_1949044f();
    } else {
        zone = [[ var_5ed6bcb0 ]]();
    }
    if (!isdefined(zone)) {
        globallogic_utils::add_map_error("No zones available");
        return;
    }
    /#
        print("fallback" + zone.trigorigin[0] + "<unknown string>" + zone.trigorigin[1] + "<unknown string>" + zone.trigorigin[2] + "<unknown string>");
    #/
    zone enable_influencers(1);
    zone.gameobject.trigger allowtacticalinsertion(0);
    if (!isdefined(level.active_zones)) {
        level.active_zones = [];
    } else if (!isarray(level.active_zones)) {
        level.active_zones = array(level.active_zones);
    }
    level.active_zones[level.active_zones.size] = zone;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0x5726fb13, Offset: 0x15f0
// Size: 0x11c
function function_86a05ad0(*delay) {
    var_7cd85719 = int(level.var_1be269a9);
    if (!function_14c852b6()) {
        function_785aa606(&function_f879e0c9, 1);
        var_7cd85719--;
    }
    for (i = 0; i < var_7cd85719; i++) {
        function_785aa606(&function_1280e8f4);
    }
    matchrecordroundstart();
    if (function_469127d2()) {
        function_d04e9e07();
    }
    if (isdefined(level.var_73377ee4) && level.var_73377ee4.size > 0) {
        function_9695c3e3();
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xf1a1cd50, Offset: 0x1718
// Size: 0x134
function function_5bd81f4f() {
    foreach (zone in level.active_zones) {
        zone.gameobject.trigger allowtacticalinsertion(1);
    }
    matchrecordroundend();
    for (i = 0; i < level.var_a495fcf1; i++) {
        function_785aa606(&function_1280e8f4);
    }
    matchrecordroundstart();
    if (function_469127d2()) {
        function_d04e9e07();
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xd9b448f8, Offset: 0x1858
// Size: 0x2a
function function_14c852b6() {
    return level.randomzonespawn == 1 || level.randomzonespawn == 3;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0x676ffd8f, Offset: 0x1890
// Size: 0x2a
function function_469127d2() {
    return level.randomzonespawn == 3 || level.randomzonespawn == 4;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0x1940032b, Offset: 0x18c8
// Size: 0x7c
function function_fbce3808(enabled) {
    index = 0;
    if (enabled) {
        index = self.script_index;
        self.objectiveanchor clientfield::set("zone_state", 1);
        return;
    }
    self.objectiveanchor clientfield::set("zone_state", 0);
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0xfcd496a0, Offset: 0x1950
// Size: 0x26c
function function_e221a1d1(zone) {
    zone.gameobject gameobjects::allow_use(#"hash_5ccfd7bbbf07c770");
    zone.gameobject gameobjects::set_use_time(level.capturetime);
    zone.gameobject gameobjects::set_use_text(#"mp/capturing_objective");
    zone.gameobject gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
    zone.gameobject gameobjects::must_maintain_claim(0);
    zone.gameobject gameobjects::can_contest_claim(1);
    zone.gameobject set_model_visibility(1);
    zone.gameobject.onuse = &function_631c3afc;
    zone.gameobject.onbeginuse = &function_b4ae9ca4;
    zone.gameobject.onenduse = &function_11e8bc02;
    zone.gameobject.ontouchuse = &function_ab09ff18;
    zone.gameobject.onendtouchuse = &function_6a4aadd;
    zone.gameobject.onupdateuserate = &function_9d7664e3;
    foreach (visual in zone.gameobject.visuals) {
        visual notsolid();
    }
    zone function_fbce3808(1);
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0x878273de, Offset: 0x1bc8
// Size: 0x220
function function_50a7f9ac(zone) {
    level endon(#"game_ended", #"zone_moved");
    level.kothstarttime = gettime();
    while (true) {
        function_e221a1d1(zone);
        msg = zone waittill(#"zone_captured", #"zone_destroyed");
        if (msg._notify == "zone_destroyed") {
            continue;
        }
        ownerteam = zone.gameobject gameobjects::get_owner_team();
        zone.gameobject gameobjects::allow_use(#"hash_161f03feaadc9b8f");
        zone.gameobject.onuse = undefined;
        zone.gameobject.onunoccupied = &function_32b7bf67;
        zone.gameobject.oncontested = &function_e4bd126f;
        zone.gameobject.onuncontested = &function_2a6caaff;
        waitresult = zone waittill(#"zone_destroyed");
        if (!level.kothmode || level.zonedestroyedbytimer) {
            break;
        }
        thread function_7828f363(ownerteam);
        if (isdefined(waitresult.destroy_team)) {
            zone.gameobject gameobjects::set_owner_team(waitresult.destroy_team);
            continue;
        }
        zone.gameobject gameobjects::set_owner_team("none");
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xf603f10d, Offset: 0x1df0
// Size: 0xae0
function function_ee725386() {
    level endon(#"game_ended");
    if (isdefined(level.var_5747998d)) {
        flag::wait_till(level.var_5747998d);
    }
    function_86a05ad0();
    while (level.inprematchperiod) {
        waitframe(1);
    }
    if (util::function_7f7a77ab()) {
        while (function_bfd92dc5() || level.var_e80a117f) {
            waitframe(1);
        }
    }
    wait(5);
    luinotifyevent(#"hash_12fdd5eec28f50ae");
    foreach (zone in level.zones) {
        if (isdefined(zone.target)) {
            othervisuals = getentarray(zone.target, "targetname");
            foreach (visual in othervisuals) {
                visual clientfield::set("zone_id", zone.script_index);
            }
        }
        zone.objectiveanchor clientfield::set("zone_id", zone.script_index);
        zone.objectiveanchor clientfield::set("zone_state", 0);
    }
    waitframe(1);
    setbombtimer("A", 0);
    setmatchflag("bomb_timer_a", 0);
    while (true) {
        if (util::function_7f7a77ab()) {
            globallogic::function_411eb759(1);
        }
        resume_time();
        sound::play_on_players("mp_suitcase_pickup");
        globallogic_audio::leader_dialog("kothLocated", undefined, "gamemode_objective", undefined, "kothActiveDialogBuffer");
        foreach (zone in level.active_zones) {
            zone.gameobject set_model_visibility(1);
            foreach (visual in zone.gameobject.visuals) {
                visual notsolid();
            }
        }
        setmatchflag("bomb_timer_a", 0);
        waittillframeend();
        sound::play_on_players("mpl_hq_cap_us");
        util::function_a3f7de13(6, #"none");
        foreach (zone in level.active_zones) {
            zone.gameobject gameobjects::enable_object();
            function_18fbab10(zone.gameobject.objectiveid, #"hash_3f7d871e78c8264f");
            objective_onentity(zone.gameobject.objectiveid, zone.objectiveanchor);
            zone.gameobject.capturecount = 0;
        }
        thread function_899cf0b8();
        if (level.zoneautomovetime) {
            thread function_4a415293(level.zoneautomovetime);
            setmatchflag("bomb_timer_a", 1);
            setbombtimer("A", int(gettime() + 1000 + int(level.zoneautomovetime * 1000)));
        } else {
            level.zonedestroyedbytimer = 0;
        }
        foreach (var_c40e7bb5 in level.active_zones) {
            thread function_50a7f9ac(var_c40e7bb5);
        }
        level waittill(#"zone_moved");
        var_2db50872 = [];
        foreach (zone in level.active_zones) {
            if (!isdefined(var_2db50872)) {
                var_2db50872 = [];
            } else if (!isarray(var_2db50872)) {
                var_2db50872 = array(var_2db50872);
            }
            var_2db50872[var_2db50872.size] = zone.gameobject gameobjects::get_owner_team();
        }
        pause_time();
        foreach (zone in level.active_zones) {
            zone enable_influencers(0);
            zone.gameobject.lastcaptureteam = undefined;
            zone.gameobject gameobjects::disable_object();
            zone.gameobject gameobjects::allow_use(#"hash_161f03feaadc9b8f");
            zone.gameobject gameobjects::set_owner_team(#"neutral");
            zone.gameobject gameobjects::must_maintain_claim(0);
            zone.gameobject set_model_visibility(0);
            zone function_fbce3808(0);
        }
        level notify(#"zone_reset");
        setmatchflag("bomb_timer_a", 0);
        level.active_zones = [];
        function_5bd81f4f();
        wait(0.5);
        foreach (team in var_2db50872) {
            thread function_7828f363(team);
        }
        wait(0.5);
        if (level.zonespawntime) {
            resume_time();
            setmatchflag("bomb_timer_a", 1);
            setbombtimer("A", int(gettime() + 1000 + int(level.zonespawntime * 1000)));
            wait(level.zonespawntime);
        }
        if (isdefined(level.var_73377ee4) && level.var_73377ee4.size > 0) {
            function_9695c3e3();
        }
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0x7def29e4, Offset: 0x28d8
// Size: 0x2c
function function_899cf0b8() {
    wait(0.1);
    luinotifyevent(#"hash_12fdd5eec28f50ae");
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0x3cd4b110, Offset: 0x2910
// Size: 0x98
function function_7828f363(team) {
    players = level.players;
    for (i = 0; i < players.size; i++) {
        player = players[i];
        if (!isdefined(player)) {
            continue;
        }
        if (player.pers[#"team"] == team) {
            player notify(#"force_spawn");
            wait(0.1);
        }
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x4
// Checksum 0xf96f4138, Offset: 0x29b0
// Size: 0x64
function private is_zone_contested(gameobject) {
    if (gameobject gameobjects::get_num_touching(game.attackers) > 0 && gameobject gameobjects::get_num_touching(game.defenders) > 0) {
        return true;
    }
    return false;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xb116e39, Offset: 0x2a20
// Size: 0x1fe
function function_9d7664e3() {
    if (!isdefined(self.iscontested)) {
        self.iscontested = 0;
        self.var_464f0169 = 0;
    }
    self.iscontested = is_zone_contested(self);
    if (self.iscontested) {
        if (!self.var_464f0169) {
            foreach (user in self.users) {
                if (!isdefined(user.touching.players)) {
                    continue;
                }
                foreach (struct in user.touching.players) {
                    if (!isdefined(struct)) {
                        continue;
                    }
                    player = struct.player;
                    if (isdefined(player) && isplayer(player) && (isdefined(player.var_c8d27c06) ? player.var_c8d27c06 : 0) < gettime()) {
                        player playsoundtoplayer(#"hash_5daa27b37c13bc01", player);
                        player.var_c8d27c06 = gettime() + 5000;
                    }
                }
            }
        }
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0x402532c8, Offset: 0x2c28
// Size: 0x124
function function_ab09ff18(sentient) {
    if (isplayer(sentient)) {
        self.var_464f0169 = self.iscontested;
        if (is_zone_contested(self)) {
            if ((isdefined(sentient.var_c8d27c06) ? sentient.var_c8d27c06 : 0) < gettime()) {
                sentient playsoundtoplayer(#"hash_5daa27b37c13bc01", sentient);
                sentient.var_c8d27c06 = gettime() + 5000;
            }
        } else if (sentient.team !== self gameobjects::get_owner_team()) {
            battlechatter::function_98898d14(sentient, self);
        }
    }
    if (level.var_ac25d260 === 1) {
        sentient cranked::function_d6e487ba(self, is_zone_contested(self));
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0x62344169, Offset: 0x2d58
// Size: 0x4c
function function_6a4aadd(sentient) {
    if (level.var_ac25d260 === 1) {
        sentient cranked::function_330029b4(self, is_zone_contested(self));
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0x9f0892a9, Offset: 0x2db0
// Size: 0xc
function function_b4ae9ca4(*sentient) {
    
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 3, eflags: 0x0
// Checksum 0x9dd3fa, Offset: 0x2dc8
// Size: 0x70
function function_11e8bc02(*team, sentient, *success) {
    if (!isdefined(success)) {
        return;
    }
    player = success;
    if (!isplayer(player)) {
        player = success.owner;
    }
    player notify(#"event_ended");
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0xb491f1f6, Offset: 0x2e40
// Size: 0x540
function function_631c3afc(sentient) {
    player = sentient;
    if (!isplayer(player)) {
        player = sentient.owner;
    }
    capture_team = player.team;
    capturetime = gettime();
    /#
        print("<unknown string>");
    #/
    pause_time();
    string = #"hash_446b7b0b3e4df72e";
    zone = self.zone;
    assert(isdefined(zone));
    self.iscontested = 0;
    spawning::function_7a87efaa();
    if (!isdefined(self.lastcaptureteam) || self.lastcaptureteam != capture_team) {
        touchlist = arraycopy(self.users[capture_team].touching.players);
        self thread give_capture_credit(touchlist, string, capturetime, capture_team, self.lastcaptureteam);
    }
    self.kothcapteam = capture_team;
    self gameobjects::set_owner_team(capture_team);
    if (!level.kothmode) {
        self gameobjects::set_use_time(level.destroytime);
    }
    foreach (team, _ in level.teams) {
        if (team == capture_team) {
            if (!isdefined(self.lastcaptureteam) || self.lastcaptureteam != team) {
                globallogic_audio::leader_dialog("kothSecured", team, "gamemode_objective", undefined, "kothActiveDialogBuffer");
                foreach (player in level.players) {
                    if (player.pers[#"team"] == team) {
                        if (player.lastkilltime + 500 > gettime()) {
                            player challenges::killedlastcontester();
                        }
                    }
                }
            }
            thread sound::play_on_players(game.objective_gained_sound, team);
            continue;
        }
        if (!isdefined(self.lastcaptureteam)) {
            if (!(isdefined(getgametypesetting(#"hash_711d9928e505c6c9")) ? getgametypesetting(#"hash_711d9928e505c6c9") : 0)) {
                globallogic_audio::leader_dialog("kothCaptured", team, "gamemode_objective", undefined, "kothActiveDialogBuffer");
            }
        } else if (self.lastcaptureteam == team) {
            if (!(isdefined(getgametypesetting(#"hash_711d9928e505c6c9")) ? getgametypesetting(#"hash_711d9928e505c6c9") : 0)) {
                globallogic_audio::leader_dialog("kothLost", team, "gamemode_objective", undefined, "kothActiveDialogBuffer");
            }
        }
        thread sound::play_on_players(game.objective_lost_sound, team);
    }
    zone thread award_capture_points(capture_team, self.lastcaptureteam);
    self.capturecount++;
    self.lastcaptureteam = capture_team;
    self gameobjects::must_maintain_claim(1);
    zone notify(#"zone_captured");
    zone notify("zone_captured" + capture_team);
    player notify(#"event_ended");
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x3388
// Size: 0x4
function track_capture_time() {
    
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 5, eflags: 0x0
// Checksum 0x79c952cc, Offset: 0x3398
// Size: 0x4e8
function give_capture_credit(touchlist, string, capturetime, capture_team, lastcaptureteam) {
    waitframe(1);
    util::waittillslowprocessallowed();
    foreach (touch in touchlist) {
        player = gameobjects::function_73944efe(touchlist, touch);
        if (!isdefined(player)) {
            continue;
        }
        player update_caps_per_minute(lastcaptureteam);
        if (!is_score_boosting(player)) {
            challenges::function_783313d8(player);
            player challenges::capturedobjective(capturetime, self.trigger);
            if (level.kothstarttime + 3000 > capturetime && self.kothcapteam == capture_team) {
                scoreevents::processscoreevent(#"quickly_secure_point", player, undefined, undefined);
                player stats::function_dad108fa(#"hash_60545a50ce7c9791", 1);
                player stats::function_cc215323(#"hash_2c800d9270aea253", 1);
            }
            scoreevents::processscoreevent(#"koth_secure", player, undefined, undefined);
            player recordgameevent("capture");
            level thread telemetry::function_18135b72(#"hash_540cddd637f71a5e", {#player:player, #eventtype:#"capture"});
            player recordgameevent("hardpoint_captured");
            level thread telemetry::function_18135b72(#"hash_540cddd637f71a5e", {#player:player, #eventtype:#"hash_186f4aa4b9a5ddc1"});
            battlechatter::function_924699f4(player, self);
            if (level.var_bc5a3eed !== 1) {
                level thread popups::displayteammessagetoall(string, player);
            }
            if (isdefined(player.pers[#"captures"])) {
                player.pers[#"captures"]++;
                player.captures = player.pers[#"captures"];
            }
            player.pers[#"objectives"]++;
            player.objectives = player.pers[#"objectives"];
            if (level.kothstarttime + 500 > capturetime) {
                player challenges::immediatecapture();
            }
            demo::bookmark(#"event", gettime(), player);
            potm::bookmark(#"event", gettime(), player);
            player stats::function_bb7eedf0(#"captures", 1);
            player stats::function_bb7eedf0(#"captures_in_capture_area", 1);
            player contracts::increment_contract(#"contract_mp_objective_capture");
            continue;
        }
        /#
            player iprintlnbold("<unknown string>");
        #/
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xdff323f3, Offset: 0x3888
// Size: 0xbe
function function_32b7bf67() {
    self.zone notify(#"zone_destroyed");
    self.kothcapteam = #"neutral";
    self.wasleftunoccupied = 1;
    self.iscontested = 0;
    self recordgameeventnonplayer("hardpoint_empty");
    level thread telemetry::function_18135b72(#"hash_540cddd637f71a5e", {#eventtype:#"capture"});
    resume_time();
    self.mustmaintainclaim = 0;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xe5325524, Offset: 0x3950
// Size: 0x1e8
function function_e4bd126f() {
    zoneowningteam = self gameobjects::get_owner_team();
    self.wascontested = 1;
    self.iscontested = 1;
    self recordgameeventnonplayer("hardpoint_contested");
    level thread telemetry::function_18135b72(#"hash_540cddd637f71a5e", {#eventtype:#"hash_5b03673c97cf0c"});
    resume_time();
    util::function_a3f7de13(8, #"none");
    foreach (team, _ in level.teams) {
        if (team == zoneowningteam) {
            thread sound::play_on_players(game.objective_contested_sound, team);
            if (!(isdefined(getgametypesetting(#"hash_711d9928e505c6c9")) ? getgametypesetting(#"hash_711d9928e505c6c9") : 0)) {
                globallogic_audio::leader_dialog("kothContested", team, "gamemode_objective", undefined, "kothActiveDialogBuffer");
            }
        }
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0x5e9ad40f, Offset: 0x3b40
// Size: 0xec
function function_2a6caaff(lastclaimteam) {
    assert(lastclaimteam == self gameobjects::get_owner_team());
    self.iscontested = 0;
    pause_time();
    self gameobjects::set_claim_team(lastclaimteam);
    self recordgameeventnonplayer("hardpoint_uncontested");
    level notify(#"hardpoint_uncontested");
    level thread telemetry::function_18135b72(#"hash_540cddd637f71a5e", {#eventtype:#"hardpoint_uncontested"});
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0x3f830956, Offset: 0x3c38
// Size: 0x3c0
function function_4a415293(time) {
    level endon(#"game_ended", #"zone_reset");
    level.zonemovetime = gettime() + int(time * 1000);
    level.zonedestroyedbytimer = 0;
    if (isdefined(level.var_73377ee4) && level.var_73377ee4.size > 0) {
        if (level.shownextzoneobjective == 31) {
            level.shownextzoneobjective = time;
        }
        var_f03a7dfd = time;
        var_9217cadc = 0;
        if (level.var_37bc0271 == 0) {
            var_f03a7dfd -= level.shownextzoneobjective;
            var_9217cadc = level.shownextzoneobjective;
        }
        if (var_f03a7dfd <= 0) {
            function_9f81bb75();
            wait(time);
        } else if (var_f03a7dfd > time) {
            wait(time);
        } else {
            wait(var_f03a7dfd);
            function_9f81bb75();
            wait(var_9217cadc);
        }
    } else {
        wait(time);
    }
    if (is_true(level.overtime)) {
        return;
    }
    level.zonedestroyedbytimer = 1;
    foreach (zone in level.active_zones) {
        if (!isdefined(zone.gameobject.wascontested) || zone.gameobject.wascontested == 0) {
            if (!isdefined(zone.gameobject.wasleftunoccupied) || zone.gameobject.wasleftunoccupied == 0) {
                zoneowningteam = zone.gameobject gameobjects::get_owner_team();
                challenges::controlzoneentirely(zoneowningteam);
            }
        }
        zone.gameobject recordgameeventnonplayer("hardpoint_moved");
    }
    level thread telemetry::function_18135b72(#"hash_540cddd637f71a5e", {#eventtype:#"hash_2cf7d6b871a8f27e"});
    playsoundatposition(#"mpl_hardpoint_move", (0, 0, 0));
    foreach (zone in level.active_zones) {
        zone.gameobject.onuse = undefined;
    }
    level notify(#"zone_moved");
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0x2463a4ee, Offset: 0x4000
// Size: 0x3be
function function_a84bac48(team) {
    score = 1;
    if (level.scoreperplayer) {
        score = self.gameobject gameobjects::get_num_touching(team);
    }
    globallogic_score::giveteamscoreforobjective(team, score);
    foreach (player in function_a1ef346b(team)) {
        if (!isdefined(player.touchtriggers[self.gameobject.entnum])) {
            continue;
        }
        if (isdefined(player.pers[#"objtime"])) {
            player.pers[#"objtime"]++;
            player.objtime = player.pers[#"objtime"];
            player contracts::increment_contract(#"hash_78c9a64d04286f61", 1);
            if (player.pers[#"objtime"] % 60 == 0) {
                player contracts::increment_contract(#"hash_92db988270f4f67");
                player stats::function_dad108fa(#"hash_11840e244dff52d3", 1);
            }
        }
        var_998771f0 = "hardpoint" + self.script_index;
        if (!isdefined(player.pers[var_998771f0])) {
            player.pers[var_998771f0] = 0;
        }
        player.pers[var_998771f0]++;
        player function_ef823e71(3, player.pers[var_998771f0], self.script_index - 1);
        player stats::function_bb7eedf0(#"objective_time", 1);
        player globallogic_score::incpersstat(#"objectivetime", 1, 0, 1);
        player function_ef823e71(2, player.pers[#"objtime"]);
        if (!isdefined(player.var_592f3e3c[self.script_index])) {
            player.var_592f3e3c[self.script_index] = gettime();
            continue;
        }
        if (player.var_592f3e3c[self.script_index] <= gettime() - 5000) {
            if (!isdefined(player.var_b1ff3894)) {
                player.var_b1ff3894 = 1;
            }
            player scoreevents::processscoreevent(#"hardpoint_owned", player);
            player.var_592f3e3c[self.script_index] = gettime();
            player.var_b1ff3894 = min(player.var_b1ff3894 + 1, 5);
        }
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 2, eflags: 0x0
// Checksum 0x133fa064, Offset: 0x43c8
// Size: 0x3d0
function award_capture_points(team, *lastcaptureteam) {
    level endon(#"game_ended", #"zone_reset", #"zone_moved");
    self endon(#"zone_destroyed");
    level notify("award_capture_pointsRunning" + self.script_index);
    level endon("award_capture_pointsRunning" + self.script_index);
    foreach (player in level.players) {
        if (!isdefined(player.var_592f3e3c)) {
            player.var_592f3e3c = [];
        }
        player.var_592f3e3c[self.script_index] = undefined;
    }
    if (level.active_zones.size > 1) {
        time = gettime();
        var_560f3751 = 0;
        foreach (zone in level.active_zones) {
            if (isdefined(zone.var_72767cc4) && time - zone.var_72767cc4 < 1000) {
                wait(float(1000 - time - zone.var_72767cc4) / 1000);
                break;
            }
        }
    }
    seconds = 1;
    while (!level.gameended) {
        self.var_72767cc4 = gettime();
        wait(seconds);
        hostmigration::waittillhostmigrationdone();
        if (level.var_5e8ffd3b) {
            var_95e19dc6 = self.gameobject gameobjects::function_e4cad37();
            if (var_95e19dc6.size > 0) {
                level.kothtotalsecondsinzone++;
                foreach (var_215dac08 in var_95e19dc6) {
                    self function_a84bac48(var_215dac08);
                }
            }
            continue;
        }
        if (!self.gameobject.iscontested) {
            level.kothtotalsecondsinzone++;
            self function_a84bac48(lastcaptureteam);
            if (is_true(level.overtime) && isdefined(outcome::function_6d0354e3())) {
                round::function_870759fb();
                thread globallogic::end_round(2);
            }
        }
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 2, eflags: 0x4
// Checksum 0xd0b7b62, Offset: 0x47a0
// Size: 0xa8
function private function_903a84d4(type, score) {
    if (isdefined(level.var_49a15413)) {
        if (type === #"ekia" || type === #"hardpoint_kill") {
            return (score + level.var_49a15413);
        }
    }
    if (type === #"hardpoint_owned" && isdefined(self.var_b1ff3894)) {
        return int(score * self.var_b1ff3894);
    }
    return score;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 2, eflags: 0x0
// Checksum 0xae1b1305, Offset: 0x4850
// Size: 0xe8
function function_3c70f13f(zone_a, zone_b) {
    script_index_a = zone_a.script_index;
    script_index_b = zone_b.script_index;
    if (!isdefined(script_index_a) && !isdefined(script_index_b)) {
        return false;
    }
    if (!isdefined(script_index_a) && isdefined(script_index_b)) {
        println("<unknown string>" + zone_a.origin);
        return true;
    }
    if (isdefined(script_index_a) && !isdefined(script_index_b)) {
        println("<unknown string>" + zone_b.origin);
        return false;
    }
    if (script_index_a > script_index_b) {
        return true;
    }
    return false;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xd251a93b, Offset: 0x4940
// Size: 0x104
function get_zone_array() {
    zones = getentarray("koth_zone_center", "targetname");
    if (!isdefined(zones)) {
        return undefined;
    }
    swapped = 1;
    for (n = zones.size; swapped; n--) {
        swapped = 0;
        for (i = 0; i < n - 1; i++) {
            if (function_3c70f13f(zones[i], zones[i + 1])) {
                temp = zones[i];
                zones[i] = zones[i + 1];
                zones[i + 1] = temp;
                swapped = 1;
            }
        }
    }
    return zones;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xfc877c8d, Offset: 0x4a50
// Size: 0x628
function setup_zones() {
    zones = get_zone_array();
    if (zones.size == 0) {
        globallogic_utils::add_map_error("No zones found for KOTH in map " + util::get_map_name());
    }
    trigs = getentarray("koth_zone_trigger", "targetname");
    var_4cb5e04 = getentarray("koth_zone_trigger", "script_noteworthy");
    trigs = arraycombine(trigs, var_4cb5e04);
    assert(zones.size == trigs.size, "<unknown string>");
    for (i = 0; i < zones.size; i++) {
        errored = 0;
        zone = zones[i];
        zone.trig = undefined;
        for (j = 0; j < trigs.size; j++) {
            if (zone istouching(trigs[j])) {
                if (isdefined(zone.trig)) {
                    globallogic_utils::add_map_error("Zone at " + zone.origin + " is touching more than one \"zonetrigger\" trigger");
                    errored = 1;
                    break;
                }
                zone.trig = trigs[j];
                zone.var_b76aa8 = j;
                zone.trig trigger::add_flags(16);
                break;
            }
        }
        if (!isdefined(zone.trig)) {
            if (!errored) {
                globallogic_utils::add_map_error("Zone at " + zone.origin + " is not inside any \"zonetrigger\" trigger");
                continue;
            }
        }
        assert(!errored);
        zone.trigorigin = zone.trig.origin;
        zone.objectiveanchor = spawn("script_model", zone.origin);
        visuals = [];
        visuals[0] = zone;
        if (isdefined(zone.target)) {
            othervisuals = getentarray(zone.target, "targetname");
            for (j = 0; j < othervisuals.size; j++) {
                visuals[visuals.size] = othervisuals[j];
            }
        }
        foreach (visual in visuals) {
            visual setforcenocull();
        }
        zone.gameobject = gameobjects::create_use_object(#"neutral", zone.trig, visuals, (0, 0, 0), level.var_f7a3b880);
        zone.gameobject gameobjects::set_objective_entity(zone);
        zone.gameobject gameobjects::disable_object();
        zone.gameobject set_model_visibility(0);
        zone.gameobject.var_3517bb1 = 1;
        zone.gameobject.zone = zone;
        zone.trig.useobj = zone.gameobject;
        zone function_3098a12f();
    }
    if (is_true(level.shownextzoneobjective)) {
        level.var_e89ee661 = 0;
        level.var_73377ee4 = [];
        for (i = 0; i < level.var_a495fcf1; i++) {
            obj_id = gameobjects::get_next_obj_id();
            objective_add(obj_id, "invisible", undefined, #"hash_6b3b9caf849099d6");
            function_18fbab10(obj_id, #"hash_1ff7adbf21cf79eb");
            if (!isdefined(level.var_73377ee4)) {
                level.var_73377ee4 = [];
            } else if (!isarray(level.var_73377ee4)) {
                level.var_73377ee4 = array(level.var_73377ee4);
            }
            level.var_73377ee4[level.var_73377ee4.size] = obj_id;
        }
    }
    if (globallogic_utils::print_map_errors()) {
        return false;
    }
    level.zones = zones;
    level.prevzone = undefined;
    level.prevzone2 = undefined;
    setup_zone_exclusions();
    return true;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0x3a13c2fe, Offset: 0x5080
// Size: 0x1b8
function setup_zone_exclusions() {
    if (!isdefined(level.levelkothdisable)) {
        return;
    }
    foreach (nullzone in level.levelkothdisable) {
        mindist = 1410065408;
        foundzone = undefined;
        foreach (zone in level.zones) {
            distance = distancesquared(nullzone.origin, zone.origin);
            if (distance < mindist) {
                foundzone = zone;
                mindist = distance;
            }
        }
        if (isdefined(foundzone)) {
            if (!isdefined(foundzone.gameobject.exclusions)) {
                foundzone.gameobject.exclusions = [];
            }
            foundzone.gameobject.exclusions[foundzone.gameobject.exclusions.size] = nullzone;
        }
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0xaca50577, Offset: 0x5240
// Size: 0xc0
function set_model_visibility(visibility) {
    if (!isdefined(self)) {
        return;
    }
    foreach (visual in self.visuals) {
        if (visibility === 1) {
            visual show();
            continue;
        }
        visual ghost();
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 2, eflags: 0x0
// Checksum 0xdebb874e, Offset: 0x5308
// Size: 0xdc
function function_ac4c0c88(var_6075f900, count) {
    if (var_6075f900) {
        if (!isdefined(count)) {
            count = 0;
        }
        if (level.zonespawnqueue.size == 0) {
            function_d04e9e07();
            count = 0;
        } else if (count >= level.zonespawnqueue.size) {
            function_d04e9e07(0);
        }
        assert(level.zonespawnqueue.size > 0);
        return count;
    }
    if (!isdefined(count)) {
        count = 1;
    }
    return (level.prevzoneindex + count) % level.zones.size;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xdd4306a6, Offset: 0x53f0
// Size: 0x80
function function_f879e0c9() {
    zone = level.zones[0];
    level.prevzone2 = level.prevzone;
    level.prevzone = zone;
    level.prevzoneindex = 0;
    function_d04e9e07();
    arrayremovevalue(level.zonespawnqueue, zone);
    return zone;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xbf5801e9, Offset: 0x5478
// Size: 0x78
function function_1280e8f4() {
    nextzoneindex = function_ac4c0c88(0);
    zone = level.zones[nextzoneindex];
    level.prevzone2 = level.prevzone;
    level.prevzone = zone;
    level.prevzoneindex = nextzoneindex;
    return zone;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0x94278503, Offset: 0x54f8
// Size: 0x74
function function_a65ee551() {
    level.prevzoneindex = randomint(level.zones.size);
    zone = level.zones[level.prevzoneindex];
    level.prevzone2 = level.prevzone;
    level.prevzone = zone;
    return zone;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0xb7d16fa, Offset: 0x5578
// Size: 0x90
function function_7c9bf7e1(zone) {
    foreach (var_c40e7bb5 in level.active_zones) {
        if (zone == var_c40e7bb5) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0x48737d30, Offset: 0x5610
// Size: 0x1f6
function function_d04e9e07(var_4b52ff2c = 1) {
    if (var_4b52ff2c) {
        level.zonespawnqueue = [];
    }
    spawnqueue = arraycopy(level.zones);
    foreach (var_cde01382 in level.zonespawnqueue) {
        arrayremovevalue(spawnqueue, var_cde01382);
    }
    for (total_left = spawnqueue.size; total_left > 0; total_left--) {
        index = randomint(total_left);
        valid_zones = 0;
        for (zone = 0; zone < level.zones.size; zone++) {
            if (!isdefined(spawnqueue[zone])) {
                continue;
            }
            if (valid_zones == index) {
                if (level.zonespawnqueue.size == 0 && function_7c9bf7e1(spawnqueue[zone]) && !function_469127d2()) {
                    continue;
                }
                level.zonespawnqueue[level.zonespawnqueue.size] = spawnqueue[zone];
                spawnqueue[zone] = undefined;
                break;
            }
            valid_zones++;
        }
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xebeb1214, Offset: 0x5810
// Size: 0x94
function function_1949044f() {
    nextzoneindex = function_ac4c0c88(1);
    next_zone = level.zonespawnqueue[nextzoneindex];
    arrayremoveindex(level.zonespawnqueue, nextzoneindex);
    level.prevzone2 = level.prevzone;
    level.prevzone = next_zone;
    level.prevzoneindex = nextzoneindex;
    return next_zone;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0x88c70437, Offset: 0x58b0
// Size: 0xa2
function function_2ff26e21() {
    foreach (var_c40e7bb5 in level.active_zones) {
        if (self istouching(var_c40e7bb5.trig)) {
            return var_c40e7bb5;
        }
    }
    return undefined;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 4, eflags: 0x0
// Checksum 0x3b5cd2fa, Offset: 0x5960
// Size: 0xd94
function function_610d3790(einflictor, victim, *idamage, weapon) {
    attacker = self;
    if (!isplayer(attacker) || level.capturetime && !idamage.touchtriggers.size && !attacker.touchtriggers.size || attacker.pers[#"team"] == idamage.pers[#"team"]) {
        return;
    }
    if (isdefined(weapon) && isdefined(level.iskillstreakweapon)) {
        if ([[ level.iskillstreakweapon ]](weapon) || isdefined(weapon.statname) && [[ level.iskillstreakweapon ]](getweapon(weapon.statname))) {
            weaponiskillstreak = 1;
        }
    }
    medalgiven = 0;
    scoreeventprocessed = 0;
    var_47f09325 = 0;
    var_1cfdf798 = isdefined(idamage.lastattacker) ? idamage.lastattacker === attacker : 0;
    ownerteam = undefined;
    if (level.capturetime == 0) {
        if (level.active_zones.size == 0) {
            return;
        }
        var_56bf37df = 0;
        foreach (zone in level.active_zones) {
            ownerteam = zone.gameobject gameobjects::get_owner_team();
            if (isdefined(ownerteam) && ownerteam != #"neutral") {
                var_56bf37df = 1;
                break;
            }
        }
        if (!var_56bf37df) {
            return;
        }
    }
    zone = idamage function_2ff26e21();
    if (isdefined(zone) && (idamage.touchtriggers.size || level.capturetime == 0)) {
        if (level.capturetime > 0) {
            triggerids = getarraykeys(idamage.touchtriggers);
            ownerteam = idamage.touchtriggers[triggerids[0]].useobj gameobjects::get_owner_team();
        }
        if (ownerteam != #"neutral") {
            attacker.prevlastkilltime = attacker.lastkilltime;
            attacker.lastkilltime = gettime();
            team = attacker.pers[#"team"];
            if (team == ownerteam) {
                if (!medalgiven) {
                    if (var_1cfdf798) {
                        attacker medals::offenseglobalcount();
                        attacker thread challenges::killedbaseoffender(zone.trig, weapon, victim);
                    }
                    attacker challenges::function_2f462ffd(idamage, weapon, victim, zone.gameobject);
                    attacker.pers[#"objectiveekia"]++;
                    attacker.objectiveekia = attacker.pers[#"objectiveekia"];
                    attacker.pers[#"objectives"]++;
                    attacker.objectives = attacker.pers[#"objectives"];
                    medalgiven = 1;
                }
                if (var_1cfdf798) {
                    if (!is_true(weaponiskillstreak)) {
                        scoreevents::function_2a2e1723(#"hardpoint_kill", attacker, idamage, weapon);
                    }
                    attacker function_5493affc(idamage, weapon, zone);
                    var_47f09325 = 1;
                    level thread telemetry::function_18135b72(#"hash_37f96a1d3c57a089", {#player:idamage, #var_bdc4bbd2:#"defending"});
                }
                scoreeventprocessed = 1;
            } else {
                if (!medalgiven) {
                    if (var_1cfdf798) {
                        if (isdefined(attacker.pers[#"defends"])) {
                            attacker.pers[#"defends"]++;
                            attacker.defends = attacker.pers[#"defends"];
                        }
                        attacker medals::defenseglobalcount();
                        attacker thread challenges::killedbasedefender(zone.trig);
                        attacker recordgameevent("defending");
                        level thread telemetry::function_18135b72(#"hash_540cddd637f71a5e", {#player:attacker, #eventtype:#"defending"});
                    }
                    attacker challenges::function_2f462ffd(idamage, weapon, victim, zone.gameobject);
                    attacker.pers[#"objectiveekia"]++;
                    attacker.objectiveekia = attacker.pers[#"objectiveekia"];
                    attacker.pers[#"objectives"]++;
                    attacker.objectives = attacker.pers[#"objectives"];
                    medalgiven = 1;
                }
                if (var_1cfdf798) {
                    attacker challenges::killedzoneattacker(weapon);
                    if (!is_true(weaponiskillstreak)) {
                        scoreevents::function_2a2e1723(#"hardpoint_kill", attacker, idamage, weapon);
                    }
                    attacker function_5493affc(idamage, weapon, zone);
                    var_47f09325 = 1;
                }
                scoreeventprocessed = 1;
                level thread telemetry::function_18135b72(#"hash_37f96a1d3c57a089", {#player:idamage, #var_bdc4bbd2:#"assaulting"});
            }
        }
    }
    if (isdefined(zone)) {
        if (isdefined(attacker) && isdefined(victim) && victim != attacker) {
            var_7901de48 = distance2dsquared(zone.trig.maxs, zone.trig.mins) * 0.5 + sqr(350);
            dist = distance2dsquared(victim.origin, zone.origin);
            if (dist > var_7901de48) {
                if (var_47f09325) {
                    attacker challenges::function_82bb78f7(weapon, idamage);
                }
                return;
            }
        }
    }
    zone = attacker function_2ff26e21();
    if (isdefined(zone) && (attacker.touchtriggers.size || level.capturetime == 0)) {
        if (level.capturetime > 0) {
            triggerids = getarraykeys(attacker.touchtriggers);
            ownerteam = attacker.touchtriggers[triggerids[0]].useobj gameobjects::get_owner_team();
        }
        if (ownerteam != #"neutral") {
            team = idamage.pers[#"team"];
            if (team == ownerteam) {
                if (!medalgiven) {
                    if (isdefined(attacker.pers[#"defends"])) {
                        attacker.pers[#"defends"]++;
                        attacker.defends = attacker.pers[#"defends"];
                    }
                    if (var_1cfdf798) {
                        attacker medals::defenseglobalcount();
                        attacker thread challenges::killedbasedefender(zone.trig);
                        attacker recordgameevent("defending");
                        level thread telemetry::function_18135b72(#"hash_540cddd637f71a5e", {#player:attacker, #eventtype:#"defending"});
                    }
                    medalgiven = 1;
                }
                if (scoreeventprocessed == 0) {
                    if (var_1cfdf798) {
                        attacker challenges::killedzoneattacker(weapon);
                        if (!is_true(weaponiskillstreak)) {
                            scoreevents::function_2a2e1723(#"hardpoint_kill", attacker, idamage, weapon);
                        }
                        var_47f09325 = 1;
                        level thread telemetry::function_18135b72(#"hash_37f96a1d3c57a089", {#player:idamage, #var_bdc4bbd2:#"assaulting"});
                    }
                    attacker challenges::function_2f462ffd(idamage, weapon, victim, zone.gameobject);
                    attacker.pers[#"objectiveekia"]++;
                    attacker.objectiveekia = attacker.pers[#"objectiveekia"];
                    attacker.pers[#"objectives"]++;
                    attacker.objectives = attacker.pers[#"objectives"];
                }
            } else {
                if (!medalgiven && var_1cfdf798) {
                    attacker medals::offenseglobalcount();
                    medalgiven = 1;
                    attacker thread challenges::killedbaseoffender(zone.trig, weapon, victim);
                }
                if (scoreeventprocessed == 0) {
                    if (var_1cfdf798) {
                        if (!is_true(weaponiskillstreak)) {
                            scoreevents::function_2a2e1723(#"hardpoint_kill", attacker, idamage, weapon);
                        }
                        var_47f09325 = 1;
                        level thread telemetry::function_18135b72(#"hash_37f96a1d3c57a089", {#player:idamage, #var_bdc4bbd2:#"defending"});
                    }
                    attacker challenges::function_2f462ffd(idamage, weapon, victim, zone.gameobject);
                    attacker.pers[#"objectiveekia"]++;
                    attacker.objectiveekia = attacker.pers[#"objectiveekia"];
                    attacker.pers[#"objectives"]++;
                    attacker.objectives = attacker.pers[#"objectives"];
                }
            }
        }
    }
    if (var_47f09325) {
        attacker challenges::function_82bb78f7(weapon, idamage);
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 3, eflags: 0x4
// Checksum 0x493e3c4, Offset: 0x6700
// Size: 0x1be
function private function_5493affc(victim, weapon, zone) {
    if (!isplayer(self)) {
        return;
    }
    if (!isdefined(self.var_f58d97ed)) {
        self.var_f58d97ed = 0;
    }
    elapsedtime = gettime() - self.var_f58d97ed;
    if (elapsedtime > int(5 * 1000) || self.var_1920c043 !== zone) {
        self.clearenemycount = 0;
    }
    self.clearenemycount++;
    self.var_f58d97ed = gettime();
    self.var_1920c043 = zone;
    if (isdefined(zone.gameobject) && zone.gameobject gameobjects::get_num_touching(victim.team) <= 1 && self.clearenemycount >= 2) {
        scoreevents::processscoreevent(#"clear_2_attackers", self, victim, undefined);
        self challenges::function_e0f51b6f(weapon);
        self stats::function_dad108fa(#"hash_70320f43067a9540", 1);
        self stats::function_cc215323(#"hash_3c79e0a509575a03", 1);
        self.clearenemycount = 0;
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0x9cf06f47, Offset: 0x68c8
// Size: 0x5c
function enable_influencers(enabled) {
    if (is_true(level.var_3d984b4c)) {
        enableinfluencer(self.influencer_large, enabled);
        enableinfluencer(self.influencer_small, enabled);
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xeea5f88b, Offset: 0x6930
// Size: 0x11c
function function_3098a12f() {
    if (!is_true(level.var_3d984b4c)) {
        return;
    }
    self.influencer_large = self influencers::create_influencer("koth_large", self.gameobject.curorigin, 0);
    self.influencer_small = influencers::create_influencer("koth_small", self.gameobject.curorigin, 0);
    self enable_influencers(0);
    if ((isdefined(self.influencer_radius_small) ? self.influencer_radius_small : 0) > 0) {
        function_2e07e8f9(self.influencer_small, self.influencer_radius_small);
    }
    if ((isdefined(self.influencer_radius_large) ? self.influencer_radius_large : 0) > 0) {
        function_2e07e8f9(self.influencer_large, self.influencer_radius_large);
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0x10b8e2a1, Offset: 0x6a58
// Size: 0x146
function update_caps_per_minute(lastownerteam) {
    if (!isdefined(self.capsperminute)) {
        self.numcaps = 0;
        self.capsperminute = 0;
    }
    if (!isdefined(lastownerteam) || lastownerteam == #"neutral") {
        return;
    }
    self.numcaps++;
    minutespassed = float(globallogic_utils::gettimepassed()) / 60000;
    if (isplayer(self) && isdefined(self.timeplayed[#"total"])) {
        minutespassed = self.timeplayed[#"total"] / 60;
    }
    if (minutespassed <= 0) {
        self.capsperminute = self.numcaps;
        return;
    }
    self.capsperminute = self.numcaps / minutespassed;
    if (self.capsperminute > self.numcaps) {
        self.capsperminute = self.numcaps;
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0xddf83a92, Offset: 0x6ba8
// Size: 0x3a
function is_score_boosting(player) {
    if (!level.rankedmatch) {
        return false;
    }
    if (player.capsperminute > level.playercapturelpm) {
        return true;
    }
    return false;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0xc0478198, Offset: 0x6bf0
// Size: 0xb4
function function_6d2f376a(entity) {
    foreach (zone in level.active_zones) {
        if (isdefined(zone.trig) && entity istouching(zone.trig)) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0x9340e66a, Offset: 0x6cb0
// Size: 0x7c
function function_35088f57() {
    if (is_true(level.overtime)) {
        return;
    }
    if (isdefined(outcome::function_6d0354e3())) {
        round::function_870759fb();
        thread globallogic::end_round(2);
        return;
    }
    function_e7392e03();
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xad198fb1, Offset: 0x6d38
// Size: 0x188
function function_e7392e03() {
    level.overtime = 1;
    setmatchflag("bomb_timer_a", 0);
    globallogic_audio::leader_dialog("roundOvertime");
    foreach (player in level.players) {
        player luinotifyevent(#"hash_6b67aa04e378d681", 1, 8);
    }
    if (is_true(level.var_e89ee661)) {
        foreach (obj_id in level.var_73377ee4) {
            objective_setstate(obj_id, "invisible");
        }
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x4
// Checksum 0x3f3418cc, Offset: 0x6ec8
// Size: 0x11a
function private function_9dc6016e(var_f99d1b44) {
    switch (var_f99d1b44) {
    case 0:
        return "spl1";
    case 1:
        return "spl2";
    case 2:
        return "spl3";
    case 3:
        return "spl4";
    case 4:
        return "spl5";
    case 5:
        return "spl6";
    case 6:
        return "spl7";
    case 7:
        return "spl8";
    case 8:
        return "spl9";
    case 9:
        return "fallback";
    }
    return "auto_normal";
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x4
// Checksum 0x93542ebd, Offset: 0x6ff0
// Size: 0x7a
function private function_259770ba(*e_player) {
    if (spawning::usestartspawns() || level.active_zones.size > 1 || !isdefined(level.active_zones[0].script_index)) {
        return undefined;
    }
    return function_9dc6016e(level.active_zones[0].script_index);
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x4
// Checksum 0x5bc16dc8, Offset: 0x7078
// Size: 0x2a
function private function_40c08152(*e_player) {
    if (spawning::usestartspawns()) {
        return undefined;
    }
    return "auto_normal";
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x4
// Checksum 0x14479273, Offset: 0x70b0
// Size: 0xcc
function private function_e3aab320() {
    for (index = 0; index < 5; index++) {
        var_998771f0 = "hardpoint" + index + 1;
        if (index < level.zones.size) {
            if (!isdefined(self.pers[var_998771f0])) {
                self.pers[var_998771f0] = 0;
            }
        } else if (!isdefined(self.pers[var_998771f0])) {
            self.pers[var_998771f0] = -1;
        }
        self function_ef823e71(3, self.pers[var_998771f0], index);
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xcbccedd5, Offset: 0x7188
// Size: 0x6c
function on_player_spawned() {
    self function_4a5572c3("");
    if (util::function_7f7a77ab()) {
        if (is_true(level.var_e80a117f)) {
            util::function_256dd160(self);
        }
    }
}

/#

    // Namespace namespace_d150537f/namespace_d150537f
    // Params 0, eflags: 0x0
    // Checksum 0x9bcc3798, Offset: 0x7200
    // Size: 0x74
    function function_ed2b0a19() {
                for (index = 0; index < 10; index++) {
            spawning::function_25e7711a(function_9dc6016e(index), #"none", "<unknown string>" + index + "<unknown string>", "<unknown string>");
        }
    }

#/

// Namespace namespace_d150537f/namespace_d150537f
// Params 2, eflags: 0x0
// Checksum 0xebfb1ae0, Offset: 0x7280
// Size: 0x6c
function function_41224c9d(gameobject, starting = 0) {
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(gameobject)) {
        return;
    }
    if (starting) {
        self thread function_90fdfef6(gameobject);
        return;
    }
    self thread function_dd2fc4c3(gameobject);
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0xa589b8f, Offset: 0x72f8
// Size: 0x256
function function_90fdfef6(gameobject) {
    self notify("131d8d21c84fb532");
    self endon("131d8d21c84fb532");
    self endon(#"death", #"disconnect", #"hash_580789b91ba9f984");
    gameobject.trigger endon(#"destroyed", #"death");
    level endon(#"game_ended");
    level notify(#"hash_d50c83061fcd561");
    waitframe(1);
    while (true) {
        currentpercentage = function_896e36e0();
        iscontested = isdefined(gameobject.contested) ? gameobject.contested : 0;
        if (is_true(gameobject.iscontested)) {
            self function_a38cc2d7("cap_contested");
            self function_4a5572c3("cap_contested");
        } else if (currentpercentage >= 0.8) {
            self function_4a5572c3("cap_war_percent_90");
        } else if (currentpercentage >= 0.6) {
            self function_4a5572c3("cap_war_percent_75");
        } else if (currentpercentage >= 0.4) {
            self function_4a5572c3("cap_war_percent_50");
        } else if (currentpercentage >= 0.2) {
            self function_4a5572c3("cap_war_percent_25");
        } else if (currentpercentage >= 0) {
            self function_4a5572c3("cap_war_percent_0");
        }
        waitframe(1);
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 2, eflags: 0x0
// Checksum 0xb3117baf, Offset: 0x7558
// Size: 0x82
function function_dd2fc4c3(*gameobject, success = 0) {
    if (success) {
        self function_4a5572c3("cap_success");
        return;
    }
    self function_4a5572c3("cap_exit");
    self notify(#"hash_580789b91ba9f984");
    self.var_b3890fdf = 0;
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0xa628d586, Offset: 0x75e8
// Size: 0x9c
function function_4a5572c3(state) {
    if (!isdefined(self.var_a022edea)) {
        self.var_a022edea = "";
    }
    if (is_true(level.var_2179a6bf)) {
        return;
    }
    if (is_true(level.var_d39752e6)) {
        return;
    }
    if (state != self.var_a022edea) {
        self.var_a022edea = state;
        globallogic_audio::function_c246758e(state);
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 1, eflags: 0x0
// Checksum 0xb56cf756, Offset: 0x7690
// Size: 0x254
function function_a38cc2d7(state) {
    if (!isdefined(self.var_b3890fdf)) {
        self.var_b3890fdf = 0;
    }
    if (game.state != #"playing") {
        return;
    }
    str_alias = undefined;
    switch (state) {
    case #"hash_640a5184fc18e57e":
        str_alias = #"hash_1c518fb856754e14";
        n_waittime = 2.5;
        break;
    case #"hash_736eee50e5b4b564":
        str_alias = #"hash_1c5192b85675532d";
        n_waittime = 2.5;
        break;
    case #"hash_6f256b850314afde":
        str_alias = #"hash_1c5191b85675517a";
        n_waittime = 2.5;
        break;
    case #"hash_3b47899904bb9c9e":
        str_alias = #"hash_1c518cb8567548fb";
        n_waittime = 2.5;
        break;
    case #"hash_2e61c11bc0c92a20":
        str_alias = #"hash_1c518cb8567548fb";
        n_waittime = 1.25;
        break;
    case #"hash_510115bff25681fd":
        str_alias = #"hash_43014e1f7354354f";
        n_waittime = 1.25;
        break;
    }
    if (is_true(level.var_2179a6bf)) {
        str_alias = #"hash_1c518cb8567548fb";
        n_waittime = 2;
    }
    if (isdefined(str_alias)) {
        var_bb0c6711 = gettime();
        if (self.var_b3890fdf <= var_bb0c6711) {
            if (self.var_b3890fdf === 0) {
                self.var_b3890fdf = var_bb0c6711 - 50;
            }
            self.var_b3890fdf += int(n_waittime * 1000);
            self playlocalsound(str_alias);
        }
    }
}

// Namespace namespace_d150537f/namespace_d150537f
// Params 0, eflags: 0x0
// Checksum 0xa0cad9b3, Offset: 0x78f0
// Size: 0x112
function function_896e36e0() {
    if (!isdefined(level.teams)) {
        return 0;
    }
    scorelimit = level.scorelimit < 0 ? 1 : level.scorelimit;
    var_ab9897d4 = [];
    foreach (team in level.teams) {
        array::add(var_ab9897d4, getteamscore(team) / scorelimit);
    }
    array::sort_by_value(var_ab9897d4);
    return var_ab9897d4[0];
}

