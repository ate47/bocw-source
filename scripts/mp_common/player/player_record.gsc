// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\player\player_loadout.gsc;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using scripts\core_common\persistence_shared.gsc;
#using scripts\core_common\player\player_role.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\contracts_shared.gsc;
#using scripts\core_common\bb_shared.gsc;

#namespace player_record;

// Namespace player_record/player_record
// Params 1, eflags: 0x6 linked
// Checksum 0x41ee7b1e, Offset: 0x350
// Size: 0x8c
function private function_685505ce(inputarray) {
    targetstring = "";
    if (!isdefined(inputarray)) {
        return targetstring;
    }
    for (i = 0; i < inputarray.size; i++) {
        if (isdefined(inputarray[i])) {
            targetstring += inputarray[i];
            if (i != inputarray.size - 1) {
                targetstring += ",";
            }
        }
    }
    return targetstring;
}

// Namespace player_record/player_record
// Params 1, eflags: 0x2 linked
// Checksum 0x979fffa1, Offset: 0x3e8
// Size: 0x10ac
function function_96d38b95(result) {
    if (!isdefined(self) || !isdefined(self.pers)) {
        return;
    }
    player = self;
    lpselfnum = player getentitynumber();
    lpxuid = player getxuid(1);
    var_18f134e3 = sessionmodeismultiplayergame() && sessionmodeisonlinegame();
    bb::function_e0dfa262(player.name, lpselfnum, lpxuid);
    weeklyacontractid = 0;
    weeklyacontracttarget = 0;
    weeklyacontractcurrent = 0;
    weeklyacontractcompleted = 0;
    weeklybcontractid = 0;
    weeklybcontracttarget = 0;
    weeklybcontractcurrent = 0;
    weeklybcontractcompleted = 0;
    dailycontractid = 0;
    dailycontracttarget = 0;
    dailycontractcurrent = 0;
    dailycontractcompleted = 0;
    specialcontractid = 0;
    specialcontracttarget = 0;
    specialcontractcurent = 0;
    specialcontractcompleted = 0;
    if (isbot(player) || !var_18f134e3) {
        currxp = 0;
        prevxp = 0;
    } else {
        currxp = player rank::getrankxp();
        prevxp = player.pers[#"rankxp"];
        if (globallogic_score::canupdateweaponcontractstats()) {
            specialcontractid = 1;
            specialcontracttarget = getdvarint(#"weapon_contract_target_value", 100);
            specialcontractcurent = player stats::get_stat(#"weaponcontractdata", #"currentvalue");
            if ((isdefined(player stats::get_stat(#"weaponcontractdata", #"completetimestamp")) ? player stats::get_stat(#"weaponcontractdata", #"completetimestamp") : 0) != 0) {
                specialcontractcompleted = 1;
            }
        }
    }
    if (var_18f134e3 && !isdefined(prevxp)) {
        return;
    }
    resultstr = result;
    if (isdefined(player.team) && result == player.team) {
        resultstr = #"win";
    } else if (result == #"allies" || result == #"axis") {
        resultstr = #"lose";
    }
    xpearned = currxp - prevxp;
    perkstr = function_685505ce(player getperks());
    primaryweaponname = #"";
    primaryweaponattachstr = "";
    secondaryweaponname = #"";
    secondaryweaponattachstr = "";
    grenadeprimaryname = #"";
    grenadesecondaryname = #"";
    if (loadout::function_87bcb1b()) {
        primary_weapon = player loadout::function_18a77b37("primary");
        if (isdefined(primary_weapon)) {
            primaryweaponname = primary_weapon.name;
            primaryweaponattachstr = function_685505ce(getarraykeys(primary_weapon.attachments));
        }
        secondary_weapon = player loadout::function_18a77b37("secondary");
        if (isdefined(secondary_weapon)) {
            secondaryweaponname = secondary_weapon.name;
            secondaryweaponattachstr = function_685505ce(getarraykeys(secondary_weapon.attachments));
        }
        loadout = player loadout::get_loadout_slot("primarygrenade");
        if (isdefined(loadout)) {
            grenadeprimaryname = loadout.weapon.name;
        }
        loadout = player loadout::get_loadout_slot("secondarygrenade");
        if (isdefined(loadout)) {
            grenadesecondaryname = loadout.weapon.name;
        }
    }
    killstreakstr = "";
    if (isdefined(player.killstreak)) {
        killstreakstr = function_685505ce(player.killstreak);
    }
    gamelength = float(game.timepassed) / 1000;
    timeplayed = player globallogic::gettotaltimeplayed(gamelength);
    totalkills = player stats::get_stat_global(#"kills");
    totalhits = player stats::get_stat_global(#"hits");
    totaldeaths = player stats::get_stat_global(#"deaths");
    totalwins = player stats::get_stat_global(#"wins");
    totalxp = player stats::get_stat_global(#"rankxp");
    killcount = 0;
    hitcount = 0;
    if (level.mpcustommatch) {
        killcount = player.kills;
        hitcount = player.pers[#"shotshit"];
    } else {
        if (isdefined(player.startkills)) {
            killcount = totalkills - player.startkills;
        }
        if (isdefined(player.starthits)) {
            hitcount = totalhits - player.starthits;
        }
    }
    bestscore = "0";
    if (isdefined(player.pers[#"lasthighestscore"]) && player.score > player.pers[#"lasthighestscore"]) {
        bestscore = "1";
    }
    bestkills = "0";
    if (isdefined(player.pers[#"lasthighestkills"]) && killcount > player.pers[#"lasthighestkills"]) {
        bestkills = "1";
    }
    totalmatchshots = 0;
    if (isdefined(player.totalmatchshots)) {
        totalmatchshots = player.totalmatchshots;
    }
    deaths = player.deaths;
    if (deaths == 0) {
        deaths = 1;
    }
    kdratio = player.kills * 1000 / deaths;
    bestkdratio = "0";
    if (isdefined(player.pers[#"lasthighestkdratio"]) && kdratio > player.pers[#"lasthighestkdratio"]) {
        bestkdratio = "1";
    }
    showcaseweapon = player getplayershowcaseweapon();
    startingteam = 0;
    if (isdefined(player.startingteam)) {
        startingteam = player.startingteam;
    }
    endingteam = 0;
    if (isdefined(player.team)) {
        endingteam = player.team;
    }
    var_906bdcf3 = spawnstruct();
    var_906bdcf3.session_mode = currentsessionmode();
    var_906bdcf3.game_type = hash(level.gametype);
    var_906bdcf3.private_match = sessionmodeisprivate();
    var_906bdcf3.esports_flag = level.leaguematch;
    var_906bdcf3.ranked_play_flag = level.arenamatch;
    var_906bdcf3.game_map = util::get_map_name();
    var_906bdcf3.player_xuid = player getxuid(1);
    var_906bdcf3.player_ip = player getipaddress();
    var_906bdcf3.season_pass_owned = player hasseasonpass(0);
    var_906bdcf3.dlc_owned = player getdlcavailable();
    var_906bdcf3.starting_team = startingteam;
    var_906bdcf3.ending_team = endingteam;
    var_811ed119 = spawnstruct();
    var_811ed119.match_kills = killcount;
    var_811ed119.match_deaths = player.deaths;
    var_811ed119.match_xp = xpearned;
    var_811ed119.match_score = player.score;
    var_811ed119.match_streak = player.pers[#"best_kill_streak"];
    var_811ed119.match_captures = player.pers[#"captures"];
    var_811ed119.match_defends = player.pers[#"defends"];
    var_811ed119.match_headshots = player.pers[#"headshots"];
    var_811ed119.match_longshots = player.pers[#"longshots"];
    var_811ed119.match_objtime = player.pers[#"objtime"];
    var_811ed119.match_plants = player.pers[#"plants"];
    var_811ed119.match_defuses = player.pers[#"defuses"];
    var_811ed119.match_throws = player.pers[#"throws"];
    var_811ed119.match_carries = player.pers[#"carries"];
    var_811ed119.match_returns = player.pers[#"returns"];
    var_811ed119.match_result = resultstr;
    var_811ed119.match_duration = int(timeplayed);
    var_811ed119.match_shots = totalmatchshots;
    var_811ed119.match_hits = hitcount;
    var_811ed119.prestige_max = player.pers[#"plevel"];
    var_811ed119.level_max = player.pers[#"rank"];
    var_811ed119.specialist_kills = player.heavyweaponkillcount;
    var_a14ea2be = spawnstruct();
    var_a14ea2be.player_gender = player getplayergendertype(currentsessionmode());
    var_a14ea2be.specialist_used = function_b14806c6(player player_role::get(), currentsessionmode());
    var_a14ea2be.loadout_perks = perkstr;
    var_a14ea2be.loadout_lethal = grenadeprimaryname;
    var_a14ea2be.loadout_tactical = grenadesecondaryname;
    var_a14ea2be.loadout_scorestreaks = killstreakstr;
    var_a14ea2be.loadout_primary_weapon = primaryweaponname;
    var_a14ea2be.loadout_secondary_weapon = secondaryweaponname;
    var_a14ea2be.loadout_primary_attachments = primaryweaponattachstr;
    var_a14ea2be.loadout_secondary_attachments = secondaryweaponattachstr;
    var_b65d83f5 = spawnstruct();
    var_b65d83f5.best_score = bestscore;
    var_b65d83f5.best_kills = bestkills;
    var_b65d83f5.best_kd = bestkdratio;
    var_b65d83f5.total_kills = totalkills;
    var_b65d83f5.total_deaths = totaldeaths;
    var_b65d83f5.total_wins = totalwins;
    var_b65d83f5.total_xp = totalxp;
    var_6e81e3c3 = spawnstruct();
    var_6e81e3c3.daily_contract_id = dailycontractid;
    var_6e81e3c3.daily_contract_target = dailycontracttarget;
    var_6e81e3c3.daily_contract_current = dailycontractcurrent;
    var_6e81e3c3.daily_contract_completed = dailycontractcompleted;
    var_6e81e3c3.weeklya_contract_id = weeklyacontractid;
    var_6e81e3c3.weeklya_contract_target = weeklyacontracttarget;
    var_6e81e3c3.weeklya_contract_current = weeklyacontractcurrent;
    var_6e81e3c3.weeklya_contract_completed = weeklyacontractcompleted;
    var_6e81e3c3.weeklyb_contract_id = weeklybcontractid;
    var_6e81e3c3.weeklyb_contract_target = weeklybcontracttarget;
    var_6e81e3c3.weeklyb_contract_current = weeklybcontractcurrent;
    var_6e81e3c3.weeklyb_contract_completed = weeklybcontractcompleted;
    var_6e81e3c3.special_contract_id = specialcontractid;
    var_6e81e3c3.special_contract_target = specialcontracttarget;
    var_6e81e3c3.special_contract_curent = specialcontractcurent;
    var_6e81e3c3.special_contract_completed = specialcontractcompleted;
    var_8607894c = spawnstruct();
    var_8607894c.var_3cc73d67 = player function_5d23af5b();
    var_8607894c.specialist_head = player startquantity();
    var_8607894c.specialist_legs = player function_cde23658();
    var_8607894c.specialist_torso = player function_92ea4100();
    var_8607894c.specialist_showcase = showcaseweapon.weapon.name;
    function_92d1707f(#"hash_4c5946fa1191bc64", #"hash_71960e91f80c3365", var_906bdcf3, #"hash_4682ee0eb5071d2", var_811ed119, #"hash_209c80d657442a83", var_a14ea2be, #"hash_43cb38816354c3aa", var_b65d83f5, #"hash_11fcb8f188ed5050", var_6e81e3c3, #"hash_78a6c018d9f82184", var_8607894c);
}

// Namespace player_record/player_record
// Params 1, eflags: 0x2 linked
// Checksum 0xe8d9fb6c, Offset: 0x14a0
// Size: 0x204
function record_special_move_data_for_life(killer) {
    if (!isdefined(self.lastwallrunstarttime) || !isdefined(self.lastdoublejumpstarttime) || !isdefined(self.timespentwallrunninginlife) || !isdefined(self.numberofdoublejumpsinlife) || !isdefined(self.numberofslidesinlife)) {
        println("<unknown string>");
        return;
    }
    if (isdefined(killer)) {
        if (!isdefined(killer.lastwallrunstarttime) || !isdefined(killer.lastdoublejumpstarttime)) {
            println("<unknown string>");
            return;
        }
        matchrecordlogspecialmovedataforlife(self, isdefined(self.lastswimmingstarttime) ? self.lastswimmingstarttime : 0, self.lastwallrunstarttime, self.lastslidestarttime, self.lastdoublejumpstarttime, isdefined(self.timespentswimminginlife) ? self.timespentswimminginlife : 0, self.timespentwallrunninginlife, self.numberofdoublejumpsinlife, self.numberofslidesinlife, killer, killer.lastswimmingstarttime, killer.lastwallrunstarttime, isdefined(killer.lastslidestarttime) ? killer.lastslidestarttime : 0, killer.lastdoublejumpstarttime);
        return;
    }
    matchrecordlogspecialmovedataforlife(self, isdefined(self.lastswimmingstarttime) ? self.lastswimmingstarttime : 0, self.lastwallrunstarttime, isdefined(self.lastslidestarttime) ? self.lastslidestarttime : 0, self.lastdoublejumpstarttime, isdefined(self.timespentswimminginlife) ? self.timespentswimminginlife : 0, self.timespentwallrunninginlife, self.numberofdoublejumpsinlife, self.numberofslidesinlife);
}

// Namespace player_record/player_record
// Params 0, eflags: 0x2 linked
// Checksum 0x16ee13b4, Offset: 0x16b0
// Size: 0x38c
function record_global_mp_stats_for_player_at_match_start() {
    if (isdefined(level.disablestattracking) && level.disablestattracking == 1) {
        return;
    }
    startkills = self stats::get_stat_global(#"kills");
    startdeaths = self stats::get_stat_global(#"deaths");
    startwins = self stats::get_stat_global(#"wins");
    startlosses = self stats::get_stat_global(#"losses");
    starthits = self stats::get_stat_global(#"hits");
    startmisses = self stats::get_stat_global(#"misses");
    starttimeplayedtotal = self stats::get_stat_global(#"time_played_total");
    startscore = self stats::get_stat_global(#"score");
    startprestige = self stats::get_stat_global(#"plevel");
    startunlockpoints = self stats::get_stat(#"unlocks", 0);
    ties = self stats::get_stat_global(#"ties");
    startgamesplayed = startwins + startlosses + ties;
    self.startkills = startkills;
    self.starthits = starthits;
    self.totalmatchshots = 0;
    recordplayerstats(self, "start_kills", startkills);
    recordplayerstats(self, "start_deaths", startdeaths);
    recordplayerstats(self, "start_wins", startwins);
    recordplayerstats(self, "start_losses", startlosses);
    recordplayerstats(self, "start_hits", starthits);
    recordplayerstats(self, "start_misses", startmisses);
    recordplayerstats(self, "start_total_time_played_s", starttimeplayedtotal);
    recordplayerstats(self, "start_score", startscore);
    recordplayerstats(self, "start_prestige", startprestige);
    recordplayerstats(self, "start_unlock_points", startunlockpoints);
    recordplayerstats(self, "start_games_played", startgamesplayed);
}

// Namespace player_record/player_record
// Params 0, eflags: 0x2 linked
// Checksum 0x37f84110, Offset: 0x1a48
// Size: 0x364
function record_global_mp_stats_for_player_at_match_end() {
    if (isdefined(level.disablestattracking) && level.disablestattracking == 1) {
        return;
    }
    endkills = self stats::get_stat_global(#"kills");
    enddeaths = self stats::get_stat_global(#"deaths");
    endwins = self stats::get_stat_global(#"wins");
    endlosses = self stats::get_stat_global(#"losses");
    endhits = self stats::get_stat_global(#"hits");
    endmisses = self stats::get_stat_global(#"misses");
    endtimeplayedtotal = self stats::get_stat_global(#"time_played_total");
    endscore = self stats::get_stat_global(#"score");
    endprestige = self stats::get_stat_global(#"plevel");
    endunlockpoints = self stats::get_stat(#"unlocks", 0);
    ties = self stats::get_stat_global(#"ties");
    endgamesplayed = endwins + endlosses + ties;
    recordplayerstats(self, "end_kills", endkills);
    recordplayerstats(self, "end_deaths", enddeaths);
    recordplayerstats(self, "end_wins", endwins);
    recordplayerstats(self, "end_losses", endlosses);
    recordplayerstats(self, "end_hits", endhits);
    recordplayerstats(self, "end_misses", endmisses);
    recordplayerstats(self, "end_total_time_played_s", endtimeplayedtotal);
    recordplayerstats(self, "end_score", endscore);
    recordplayerstats(self, "end_prestige", endprestige);
    recordplayerstats(self, "end_unlock_points", endunlockpoints);
    recordplayerstats(self, "end_games_played", endgamesplayed);
}

// Namespace player_record/player_record
// Params 0, eflags: 0x2 linked
// Checksum 0x1a08d930, Offset: 0x1db8
// Size: 0x304
function record_misc_player_stats() {
    if (isdefined(level.disablestattracking) && level.disablestattracking == 1) {
        return;
    }
    recordplayerstats(self, "utc_disconnect_time_s", getutc());
    if (isdefined(self.weaponpickupscount)) {
        recordplayerstats(self, "weaponPickupsCount", self.weaponpickupscount);
    }
    if (isdefined(self.killcamsskipped)) {
        recordplayerstats(self, "totalKillcamsSkipped", self.killcamsskipped);
    }
    killsdenied = self globallogic_score::getpersstat(#"killsdenied");
    if (isdefined(killsdenied)) {
        recordplayerstats(self, "killsDenied", killsdenied);
    }
    killsconfirmed = self globallogic_score::getpersstat(#"killsconfirmed");
    if (isdefined(killsconfirmed)) {
        recordplayerstats(self, "killsConfirmed", killsconfirmed);
    }
    if (self.objtime) {
        recordplayerstats(self, "objectiveTime", self.objtime);
    }
    escorts = self globallogic_score::getpersstat(#"escorts");
    if (isdefined(escorts)) {
        recordplayerstats(self, "escortTime", escorts);
    }
    if (isdefined(level.rankedmatch) && level.rankedmatch && isdefined(self.pers) && isdefined(self.pers[#"summary"])) {
        recordplayerstats(self, "challenge_xp", self.pers[#"summary"][#"challenge"]);
        recordplayerstats(self, "score_xp", self.pers[#"summary"][#"score"]);
        recordplayerstats(self, "misc_xp", self.pers[#"summary"][#"misc"]);
    }
}

// Namespace player_record/player_record
// Params 0, eflags: 0x2 linked
// Checksum 0xbdc4f4a7, Offset: 0x20c8
// Size: 0x104
function function_ea5da381() {
    if (!isdefined(self.pers[#"hash_76fbbcf94dab5536"])) {
        self persistence::function_acac764e();
    }
    if (sessionmodeiswarzonegame()) {
        self persistence::set_recent_stat(0, 0, #"placement_team", self.pers[#"placement_team"]);
        self persistence::set_recent_stat(0, 0, #"placement_player", self.pers[#"placement_player"]);
        self persistence::set_recent_stat(0, 0, #"timeplayed", self.timeplayed[#"total"]);
    }
}

// Namespace player_record/player_record
// Params 0, eflags: 0x2 linked
// Checksum 0xe9f20825, Offset: 0x21d8
// Size: 0x90a
function function_7569c0fb() {
    if (!isdefined(self.pers[#"hash_76fbbcf94dab5536"])) {
        self persistence::function_acac764e();
    }
    self persistence::set_recent_stat(0, 0, #"valid", 1);
    self persistence::set_recent_stat(0, 0, #"ekia", self.ekia);
    self persistence::set_recent_stat(0, 0, #"deaths", self.deaths);
    self persistence::set_recent_stat(0, 0, #"kills", self.kills);
    self persistence::set_recent_stat(0, 0, #"outcome", self.pers[#"outcome"]);
    self persistence::set_recent_stat(0, 0, #"timeplayed", self.pers[#"totaltimeplayed"]);
    self persistence::set_recent_stat(0, 0, #"score", self.pers[#"score"]);
    self persistence::set_recent_stat(0, 0, #"damage", self.pers[#"damagedone"]);
    self persistence::set_recent_stat(0, 0, #"objectiveekia", self.pers[#"objectiveekia"]);
    self persistence::set_recent_stat(0, 0, #"objectivescore", self.pers[#"objectivescore"]);
    self persistence::set_recent_stat(0, 0, #"objectivedefends", self.pers[#"objectivedefends"]);
    self persistence::set_recent_stat(0, 0, #"objectivetime", self.pers[#"objectivetime"]);
    self function_ea5da381();
    self stats::function_81f5c0fe(self.pers[#"outcome"], 1);
    self stats::function_81f5c0fe(#"timeplayed", self.pers[#"totaltimeplayed"]);
    self stats::function_81f5c0fe(#"gamesplayed", 1);
    switch (level.gametype) {
    case #"ctf_bb_hc":
    case #"control":
    case #"dem_hc":
    case #"sd":
    case #"escort_bb":
    case #"vip":
    case #"dom_bb_hc":
    case #"clean":
    case #"dem":
    case #"bounty":
    case #"hash_5fd7317230bb0fac":
    case #"control_bb":
    case #"control_hc":
    case #"dom10v10":
    case #"hash_2561ffe336f1f9e3":
    case #"hash_26d903aae5afc467":
    case #"war":
    case #"war12v12":
    case #"hash_5a63e4bb11fd4fa8":
    case #"dom_hc":
    case #"dom_bb":
    case #"hash_2dee5072d8b3cbe8":
    case #"hash_2e55eac851a6d21b":
    case #"dom_snipe_bb":
    case #"dom":
    case #"hash_35e9174ce58d5bc2":
    case #"escort":
    case #"fireteam_dirty_bomb":
    case #"hash_594c4ab1d31aa150":
    case #"hash_55786ad6106fde1c":
    case #"hash_7020e89c237486d0":
    case #"clean_bb":
    case #"ctf":
    case #"sd_bb":
    case #"sd_hc":
    case #"ctf_hc":
    case #"ctf_bb":
        self stats::function_81f5c0fe(#"stat1", self.pers[#"objectivescore"]);
        self stats::function_81f5c0fe(#"stat2", self.ekia);
        break;
    case #"koth10v10":
    case #"koth":
    case #"hash_156594d96f8a6568":
    case #"hash_35a6541d081acef5":
    case #"hash_111d8ed9a9337f7b":
    case #"koth_hc":
    case #"koth_bb":
    case #"dropkick":
        self stats::function_81f5c0fe(#"stat1", self.pers[#"objectivetime"]);
        self stats::function_81f5c0fe(#"stat2", self.ekia);
        break;
    case #"hash_5a89fd80877a0eaa":
    case #"tdm_snipe_bb":
    case #"tdm_bb":
    case #"fireteam_elimination":
    case #"oic":
    case #"tdm10v10":
    case #"gunfight_3v3":
    case #"scream":
    case #"conf":
    case #"dm":
    case #"tdm_bb_hc":
    case #"hash_6f784eb075451055":
    case #"dm_bb":
    case #"gunfight":
    case #"hash_451623a99cfee5d9":
    case #"gun":
    case #"conf_bb":
    case #"tdm":
    case #"conf_hc":
    case #"tdm_hc":
    case #"infect":
        self stats::function_81f5c0fe(#"stat1", self.ekia);
        self stats::function_81f5c0fe(#"stat2", self.deaths);
        break;
    default:
        break;
    }
}

