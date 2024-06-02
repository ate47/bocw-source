// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace persistence;

// Namespace persistence/persistence_shared
// Params 0, eflags: 0x5
// Checksum 0x8fdbffdb, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"persistence", &preinit, undefined, undefined, undefined);
}

// Namespace persistence/persistence_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x1c40634d, Offset: 0x108
// Size: 0x24
function private preinit() {
    callback::on_start_gametype(&init);
}

// Namespace persistence/persistence_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x44c4e9ba, Offset: 0x138
// Size: 0x44
function init() {
    level.persistentdatainfo = [];
    level.maxrecentstats = 10;
    level.maxhitlocations = 19;
    level thread initialize_stat_tracking();
}

// Namespace persistence/persistence_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb496859b, Offset: 0x188
// Size: 0x1fc
function initialize_stat_tracking() {
    level.globalexecutions = 0;
    level.globalchallenges = 0;
    level.globalsharepackages = 0;
    level.globalcontractsfailed = 0;
    level.globalcontractspassed = 0;
    level.globalcontractscppaid = 0;
    level.globalkillstreakscalled = 0;
    level.globalkillstreaksdestroyed = 0;
    level.globalkillstreaksdeathsfrom = 0;
    level.globallarryskilled = 0;
    level.globalbuzzkills = 0;
    level.globalrevives = 0;
    level.globalafterlifes = 0;
    level.globalcomebacks = 0;
    level.globalpaybacks = 0;
    level.globalbackstabs = 0;
    level.globalbankshots = 0;
    level.globalskewered = 0;
    level.globalteammedals = 0;
    level.globalfeetfallen = 0;
    level.globaldistancesprinted = 0;
    level.globaldembombsprotected = 0;
    level.globaldembombsdestroyed = 0;
    level.globalbombsdestroyed = 0;
    level.globalfraggrenadesfired = 0;
    level.globalsatchelchargefired = 0;
    level.globalshotsfired = 0;
    level.globalcrossbowfired = 0;
    level.globalcarsdestroyed = 0;
    level.globalbarrelsdestroyed = 0;
    level.globalbombsdestroyedbyteam = [];
    foreach (team, _ in level.teams) {
        level.globalbombsdestroyedbyteam[team] = 0;
    }
}

// Namespace persistence/persistence_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xbb59480f, Offset: 0x390
// Size: 0x74
function adjust_recent_stats() {
    /#
        if (getdvarint(#"scr_writeconfigstrings", 0) == 1 || getdvarint(#"scr_hostmigrationtest", 0) == 1) {
            return;
        }
    #/
    initialize_match_stats();
}

// Namespace persistence/persistence_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xbb8eb234, Offset: 0x410
// Size: 0xec
function function_acac764e() {
    index = self stats::get_stat(#"playerstatsbygametype", stats::function_8921af36(), #"prevscoreindex");
    if (!isdefined(index)) {
        return;
    }
    if (index < 0 || index > 9) {
        return;
    }
    newindex = (index + 1) % 10;
    self.pers[#"hash_76fbbcf94dab5536"] = newindex;
    self stats::set_stat(#"playerstatsbygametype", stats::function_8921af36(), #"prevscoreindex", newindex);
}

// Namespace persistence/persistence_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xad5a7781, Offset: 0x508
// Size: 0xc4
function get_recent_stat(isglobal, index, statname) {
    if (!isdefined(index)) {
        return;
    }
    if (isglobal) {
        modename = level.var_12323003;
        return self stats::get_stat(#"gamehistory", modename, #"matchhistory", index, statname);
    }
    return self stats::get_stat(#"playerstatsbygametype", stats::function_8921af36(), #"prevscores", index, statname);
}

// Namespace persistence/persistence_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x8d1dab6d, Offset: 0x5d8
// Size: 0x16c
function set_recent_stat(isglobal, index, statname, value) {
    if (!isglobal) {
        index = self stats::get_stat(#"playerstatsbygametype", stats::function_8921af36(), #"prevscoreindex");
        if (!isdefined(index)) {
            return;
        }
        if (index < 0 || index > 9) {
            return;
        }
    }
    if (isdefined(level.nopersistence) && level.nopersistence) {
        return;
    }
    if (!isdefined(index)) {
        return;
    }
    if (isglobal) {
        modename = level.var_12323003;
        self stats::set_stat(#"gamehistory", modename, #"matchhistory", "" + index, statname, value);
        return;
    }
    self stats::set_stat(#"playerstatsbygametype", stats::function_8921af36(), #"prevscores", index, statname, value);
}

// Namespace persistence/persistence_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x378d64f4, Offset: 0x750
// Size: 0x114
function add_recent_stat(isglobal, index, statname, value) {
    if (isdefined(level.nopersistence) && level.nopersistence) {
        return;
    }
    if (!isglobal) {
        index = self stats::get_stat(#"playerstatsbygametype", stats::function_8921af36(), #"prevscoreindex");
        if (!isdefined(index)) {
            return;
        }
        if (index < 0 || index > 9) {
            return;
        }
    }
    if (!isdefined(index)) {
        return;
    }
    currstat = get_recent_stat(isglobal, index, statname);
    if (isdefined(currstat)) {
        set_recent_stat(isglobal, index, statname, currstat + value);
    }
}

// Namespace persistence/persistence_shared
// Params 2, eflags: 0x0
// Checksum 0x8dc38483, Offset: 0x870
// Size: 0x84
function set_match_history_stat(statname, value) {
    modename = level.var_12323003;
    historyindex = self stats::get_stat(#"gamehistory", modename, #"currentmatchhistoryindex");
    set_recent_stat(1, historyindex, statname, value);
}

// Namespace persistence/persistence_shared
// Params 2, eflags: 0x0
// Checksum 0xad955aed, Offset: 0x900
// Size: 0x84
function add_match_history_stat(statname, value) {
    modename = level.var_12323003;
    historyindex = self stats::get_stat(#"gamehistory", modename, #"currentmatchhistoryindex");
    add_recent_stat(1, historyindex, statname, value);
}

// Namespace persistence/persistence_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x5c19738, Offset: 0x990
// Size: 0x1e4
function initialize_match_stats() {
    self endon(#"disconnect");
    if (isdefined(level.nopersistence) && level.nopersistence) {
        return;
    }
    if (!level.onlinegame) {
        return;
    }
    if (!(level.rankedmatch || level.leaguematch)) {
        return;
    }
    if (sessionmodeiswarzonegame() || sessionmodeismultiplayergame()) {
        self stats::function_bb7eedf0(#"total_games_played", 1);
        if (is_true(level.hardcoremode)) {
            hc_games_played = self stats::get_stat(#"playerstatslist", #"hc_games_played", #"statvalue") + 1;
            self stats::set_stat(#"playerstatslist", #"hc_games_played", #"statvalue", hc_games_played);
        }
    }
    if (isdefined(level.var_12323003)) {
        self gamehistorystartmatch(level.var_12323003);
        return;
    }
    level.var_12323003 = level.gametype;
    self gamehistorystartmatch(getgametypeenumfromname(level.gametype, level.hardcoremode));
}

// Namespace persistence/player_challengecomplete
// Params 1, eflags: 0x20
// Checksum 0x6a25c88, Offset: 0xb80
// Size: 0x8c
function event_handler[player_challengecomplete] codecallback_challengecomplete(eventstruct) {
    if (sessionmodeiscampaigngame()) {
        if (isdefined(self.challenge_callback_cp)) {
            [[ self.challenge_callback_cp ]](eventstruct.reward, eventstruct.max, eventstruct.row, eventstruct.table_number, eventstruct.challenge_type, eventstruct.item_index, eventstruct.challenge_index);
        }
        return;
    }
    self thread challenge_complete(eventstruct);
}

// Namespace persistence/persistence_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x33ba4f4b, Offset: 0xc18
// Size: 0x78
function function_6020a116() {
    if (!isdefined(level.var_697b1d55)) {
        level.var_697b1d55 = 0;
    }
    if (!isdefined(level.var_445b1bca)) {
        level.var_445b1bca = 0;
    }
    while (level.var_697b1d55 == gettime() || level.var_445b1bca == gettime()) {
        waitframe(1);
    }
    level.var_697b1d55 = gettime();
}

// Namespace persistence/persistence_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x1e553ec3, Offset: 0xc98
// Size: 0x7c4
function challenge_complete(eventstruct) {
    self endon(#"disconnect");
    function_6020a116();
    callback::callback(#"on_challenge_complete", eventstruct);
    rewardxp = eventstruct.reward;
    maxval = eventstruct.max;
    row = eventstruct.row;
    tablenumber = eventstruct.table_number;
    challengetype = eventstruct.challenge_type;
    itemindex = eventstruct.item_index;
    challengeindex = eventstruct.challenge_index;
    var_c4e9517b = tablenumber + 1;
    if (currentsessionmode() == 0) {
        tablename = #"gamedata/stats/zm/statsmilestones" + var_c4e9517b + ".csv";
        if (var_c4e9517b == 2) {
            var_a05af556 = tablelookupcolumnforrow(tablename, row, 9);
            if (var_a05af556 === #"") {
                return;
            } else if (getdvarint(#"hash_730fab929626f598", 0) == 0) {
                if (var_a05af556 === #"camo_gold" || var_a05af556 === #"camo_diamond" || var_a05af556 === #"camo_darkmatter") {
                    return;
                }
            }
        }
    } else {
        tablename = #"gamedata/stats/mp/statsmilestones" + var_c4e9517b + ".csv";
    }
    var_eb67c133 = tablelookupcolumnforrow(tablename, row, 5);
    if (isdefined(var_eb67c133) && (var_eb67c133 == #"hash_5a619f94abe000b" || var_eb67c133 == #"hash_4a80d584aac2e7d0")) {
        return;
    }
    /#
        var_54b50d64 = getdvarstring(#"hash_5f6f875e3935912a", "<unknown string>");
        if (var_54b50d64 != "<unknown string>") {
            challengecategory = tablelookupcolumnforrow(tablename, row, 16);
            if (challengecategory !== var_54b50d64) {
                return;
            }
        }
        var_5d5d13c3 = getdvarstring(#"hash_5941150fef84419c", "<unknown string>");
        if (var_5d5d13c3 != "<unknown string>") {
            challengestat = tablelookupcolumnforrow(tablename, row, 4);
            var_40fdd9a5 = ishash(challengestat) ? function_9e72a96(challengestat) : challengestat;
            if (!issubstr(tolower(var_40fdd9a5), tolower(var_5d5d13c3))) {
                return;
            }
        }
    #/
    self luinotifyevent(#"challenge_complete", 7, challengeindex, itemindex, challengetype, tablenumber, row, maxval, rewardxp);
    self function_8ba40d2f(#"challenge_complete", 7, challengeindex, itemindex, challengetype, tablenumber, row, maxval, rewardxp);
    challengetier = int(tablelookupcolumnforrow(tablename, row, 1));
    matchrecordlogchallengecomplete(self, var_c4e9517b, challengetier, itemindex, var_eb67c133);
    var_c710a35a = level.var_faccd7d4[var_eb67c133];
    if (isdefined(var_c710a35a)) {
        self [[ var_c710a35a ]](eventstruct);
    }
    /#
        if (getdvarint(#"debugchallenges", 0) != 0) {
            challengestring = makelocalizedstring(var_eb67c133);
            tiertext = challengetier + 1;
            var_33b913f5 = "<unknown string>";
            if (challengetype == 0) {
                var_33b913f5 = "<unknown string>";
            } else if (challengetype == 1) {
                iteminfo = getunlockableiteminfofromindex(itemindex, 1);
                if (isdefined(iteminfo)) {
                    var_33b913f5 = makelocalizedstring(iteminfo.displayname);
                }
            }
            if (issubstr(challengestring, "<unknown string>")) {
                if (challengetype == 3) {
                    challengestring = strreplace(challengestring, "<unknown string>", "<unknown string>" + function_60394171(#"challenge", 3, itemindex));
                    var_33b913f5 = "<unknown string>";
                }
            }
            if (issubstr(challengestring, "<unknown string>")) {
                challengestring = strreplace(challengestring, "<unknown string>", "<unknown string>" + tiertext);
            }
            if (var_33b913f5 == "<unknown string>") {
                var_fb76383b = 1;
                var_fb76383b++;
            }
            msg = var_33b913f5 + "<unknown string>" + challengestring + "<unknown string>" + maxval;
            if (getdvarint(#"debugchallenges", 0) == 1) {
                iprintlnbold(msg);
            } else if (getdvarint(#"debugchallenges", 0) == 2) {
                self iprintlnbold(msg);
            } else if (getdvarint(#"debugchallenges", 0) == 3) {
                iprintln(msg);
            }
            println(msg);
        }
    #/
}

// Namespace persistence/player_gunchallengecomplete
// Params 1, eflags: 0x20
// Checksum 0x68affcdb, Offset: 0x1468
// Size: 0x18c
function event_handler[player_gunchallengecomplete] codecallback_gunchallengecomplete(eventstruct) {
    if (!isdefined(eventstruct)) {
        return;
    }
    rewardxp = eventstruct.reward;
    attachmentindex = eventstruct.attachment_index;
    itemindex = eventstruct.item_index;
    rankid = eventstruct.rank_id;
    islastrank = eventstruct.is_lastrank;
    if (sessionmodeiscampaigngame()) {
        self notify(#"gun_level_complete", {#reward_xp:rewardxp, #attachment_index:attachmentindex, #item_index:itemindex, #rank:rankid, #is_last_rank:islastrank});
        return;
    }
    if (islastrank === 1) {
        self thread challenges::dochallengecallback(#"gun_level_complete_last_rank", eventstruct);
    }
    self luinotifyevent(#"gun_level_complete", 5, rankid, itemindex, attachmentindex, rewardxp, islastrank);
    self function_8ba40d2f(#"gun_level_complete", 5, rankid, itemindex, attachmentindex, rewardxp, islastrank);
}

// Namespace persistence/persistence_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x4dba64ef, Offset: 0x1600
// Size: 0x54
function upload_stats_soon() {
    self notify(#"upload_stats_soon");
    self endon(#"upload_stats_soon", #"disconnect");
    wait(1);
    uploadstats(self);
}

