// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\battlechatter.gsc;

#namespace rank;

// Namespace rank/rank_shared
// Params 0, eflags: 0x5
// Checksum 0x9bef4f1d, Offset: 0x108
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"rank", &preinit, undefined, undefined, undefined);
}

// Namespace rank/rank_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x3954219, Offset: 0x150
// Size: 0x24
function private preinit() {
    callback::on_start_gametype(&init);
}

// Namespace rank/rank_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x44f8334, Offset: 0x180
// Size: 0x1c4
function init() {
    level.scoreinfo = [];
    level.usingmomentum = 1;
    level.usingscorestreaks = getdvarint(#"scr_scorestreaks", 0) != 0;
    level.scorestreaksmaxstacking = 1000;
    level.maxinventoryscorestreaks = getdvarint(#"scr_maxinventory_scorestreaks", 3);
    level.usingrampage = !isdefined(level.usingscorestreaks) || !level.usingscorestreaks;
    level.rampagebonusscale = getdvarfloat(#"scr_rampagebonusscale", 0);
    if (sessionmodeiscampaigngame()) {
        level.xpscale = getdvarfloat(#"scr_xpscalecp", 0);
    } else if (sessionmodeiszombiesgame()) {
        level.xpscale = getdvarfloat(#"scr_xpscalezm", 0);
    } else {
        level.xpscale = getdvarfloat(#"scr_xpscalemp", 0);
    }
    initscoreinfo();
    callback::on_connect(&on_player_connect);
}

// Namespace rank/rank_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x4c833543, Offset: 0x350
// Size: 0x524
function initscoreinfo() {
    scoreinfotablename = scoreevents::getscoreeventtablename(level.gametype);
    rowcount = tablelookuprowcount(scoreinfotablename);
    if (sessionmodeismultiplayergame() && rowcount === 0) {
        scoreinfotablename = #"gamedata/tables/mp/scoreinfo/mp_scoreinfo" + "_base.csv";
        rowcount = tablelookuprowcount(scoreinfotablename);
    }
    for (row = 0; row < rowcount; row++) {
        type = tablelookupcolumnforrow(scoreinfotablename, row, 0);
        if (isdefined(type) && type != "") {
            labelstring = tablelookupcolumnforrow(scoreinfotablename, row, 9);
            label = undefined;
            if (labelstring != "") {
                label = tablelookup(scoreinfotablename, 0, type, 9);
            }
            lp = int(tablelookupcolumnforrow(scoreinfotablename, row, 1));
            xp = int(tablelookupcolumnforrow(scoreinfotablename, row, 2));
            sp = int(tablelookupcolumnforrow(scoreinfotablename, row, 3));
            hs = int(tablelookupcolumnforrow(scoreinfotablename, row, 4));
            res = float(tablelookupcolumnforrow(scoreinfotablename, row, 5));
            dp = int(tablelookupcolumnforrow(scoreinfotablename, row, 7));
            is_objective = tablelookupcolumnforrow(scoreinfotablename, row, 8);
            medalname = tablelookupcolumnforrow(scoreinfotablename, row, 11);
            var_b6cc2245 = tablelookupcolumnforrow(scoreinfotablename, row, 12);
            is_deprecated = tablelookupcolumnforrow(scoreinfotablename, row, 21);
            bounty_reward = tablelookupcolumnforrow(scoreinfotablename, row, 22);
            var_65181181 = int(isdefined(tablelookupcolumnforrow(scoreinfotablename, row, 24)) ? tablelookupcolumnforrow(scoreinfotablename, row, 24) : 0);
            registerscoreinfo(type, row, lp, xp, sp, hs, res, dp, is_objective, label, medalname, var_b6cc2245, is_deprecated, bounty_reward, var_65181181);
            if (!isdefined(game.scoreinfoinitialized)) {
                setddlstat = var_b6cc2245;
                addplayerstat = 0;
                if (setddlstat) {
                    addplayerstat = 1;
                }
                ismedal = 0;
                var_9750677a = tablelookup(scoreinfotablename, 0, type, 10);
                var_9f6af7ed = tablelookup(scoreinfotablename, 0, type, 11);
                if (isdefined(var_9750677a) && var_9750677a != #"" && isdefined(var_9f6af7ed) && var_9f6af7ed != #"") {
                    ismedal = 1;
                }
                registerxp(type, xp, addplayerstat, ismedal, dp, row, var_65181181);
            }
        }
    }
    game.scoreinfoinitialized = 1;
}

// Namespace rank/rank_shared
// Params 15, eflags: 0x2 linked
// Checksum 0x897ed326, Offset: 0x880
// Size: 0x602
function registerscoreinfo(type, row, lp, xp, sp, hs, res, dp, is_obj, label, medalname, var_b6cc2245, is_deprecated, bounty_reward, var_65181181) {
    overridedvar = "scr_" + level.gametype + "_score_" + type;
    if (getdvarstring(overridedvar) != "") {
        value = getdvarint(overridedvar, 0);
    }
    if (!sessionmodeismultiplayergame() || type == #"ekia") {
        if (is_true(xp)) {
            level.scoreinfo[type][#"xp"] = xp;
        }
    }
    if (is_true(sp)) {
        level.scoreinfo[type][#"sp"] = sp;
    }
    if (isdefined(medalname) && medalname != #"") {
        level.scoreinfo[type][#"medalnamehash"] = medalname;
    }
    if (is_true(var_b6cc2245)) {
        level.scoreinfo[type][#"hash_2ecf46b14fe1efc9"] = var_b6cc2245;
    }
    if (sessionmodeismultiplayergame() || sessionmodeiswarzonegame()) {
        level.scoreinfo[type][#"row"] = row;
        if (is_true(lp)) {
            level.scoreinfo[type][#"lp"] = lp;
        }
        if (is_true(hs)) {
            level.scoreinfo[type][#"hs"] = hs;
        }
        if (is_true(res)) {
            level.scoreinfo[type][#"res"] = res;
        }
        if (is_true(dp)) {
            level.scoreinfo[type][#"dp"] = dp;
        }
        if (is_true(is_obj)) {
            level.scoreinfo[type][#"isobj"] = is_obj;
        }
        if (isdefined(medalname)) {
            if (type == "kill" || type == "ekia") {
                multiplier = getgametypesetting(#"killeventscoremultiplier");
                if (multiplier > 0) {
                    if (is_true(level.scoreinfo[type][#"sp"])) {
                        level.scoreinfo[type][#"sp"] = int(multiplier * level.scoreinfo[type][#"sp"]);
                    }
                }
            }
        }
        if (isdefined(label)) {
            level.scoreinfo[type][#"label"] = label;
        }
        if (is_true(is_deprecated)) {
            level.scoreinfo[type][#"is_deprecated"] = is_deprecated;
        }
        if (is_true(bounty_reward)) {
            level.scoreinfo[type][#"bounty_reward"] = bounty_reward;
        }
        if (is_true(var_65181181)) {
            level.scoreinfo[type][#"hash_691aeaca4a1866e3"] = var_65181181;
        }
        return;
    }
    if (sessionmodeiscampaigngame()) {
        if (is_true(res)) {
            level.scoreinfo[type][#"res"] = res;
        }
        return;
    }
    if (sessionmodeiszombiesgame()) {
        if (is_true(res)) {
            level.scoreinfo[type][#"res"] = res;
        }
        if (isdefined(label)) {
            level.scoreinfo[type][#"label"] = label;
        }
    }
}

// Namespace rank/rank_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd15a6745, Offset: 0xe90
// Size: 0x14e
function getscoreinfovalue(type) {
    playerrole = getrole();
    if (isdefined(level.scoreinfo[type])) {
        n_score = isdefined(level.scoreinfo[type][#"sp"]) ? level.scoreinfo[type][#"sp"] : 0;
        if (isdefined(level.scoremodifiercallback) && isdefined(n_score)) {
            n_score = [[ level.scoremodifiercallback ]](type, n_score);
            assert(isint(n_score));
        }
        /#
            var_1eb7c454 = getdvarfloat(#"hash_eae9a8ee387705d", 1);
            n_score = int(n_score * var_1eb7c454);
        #/
        return n_score;
    }
    return 0;
}

// Namespace rank/rank_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xa654e918, Offset: 0xfe8
// Size: 0x22
function function_4587103(*type) {
    return int(0);
}

// Namespace rank/rank_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x4920234, Offset: 0x1018
// Size: 0xa
function getrole() {
    return "prc_mp_slayer";
}

// Namespace rank/rank_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x94f25a60, Offset: 0x1030
// Size: 0xce
function getscoreinfoposition(type) {
    playerrole = getrole();
    if (isdefined(level.scoreinfo[type])) {
        n_pos = isdefined(level.scoreinfo[type][#"hash_7c1f7c7897445706"]) ? level.scoreinfo[type][#"hash_7c1f7c7897445706"] : 0;
        if (isdefined(level.scoremodifiercallback) && isdefined(n_pos)) {
            n_resource = [[ level.scoremodifiercallback ]](type, n_pos);
        }
        return n_pos;
    }
    return 0;
}

// Namespace rank/rank_shared
// Params 1, eflags: 0x0
// Checksum 0x165537be, Offset: 0x1108
// Size: 0xc6
function getscoreinforesource(type) {
    playerrole = getrole();
    if (isdefined(level.scoreinfo[type])) {
        n_resource = isdefined(level.scoreinfo[type][#"res"]) ? level.scoreinfo[type][#"res"] : 0;
        if (isdefined(level.resourcemodifiercallback) && isdefined(n_resource)) {
            n_resource = [[ level.resourcemodifiercallback ]](type, n_resource);
        }
        return n_resource;
    }
    return 0;
}

// Namespace rank/rank_shared
// Params 1, eflags: 0x0
// Checksum 0x91c6fd79, Offset: 0x11d8
// Size: 0xc6
function getscoreinfoxp(type) {
    playerrole = getrole();
    if (isdefined(level.scoreinfo[type])) {
        n_xp = isdefined(level.scoreinfo[type][#"xp"]) ? level.scoreinfo[type][#"xp"] : 0;
        if (isdefined(level.xpmodifiercallback) && isdefined(n_xp)) {
            n_xp = [[ level.xpmodifiercallback ]](type, n_xp);
        }
        return n_xp;
    }
    return 0;
}

// Namespace rank/rank_shared
// Params 1, eflags: 0x0
// Checksum 0x3cff6e23, Offset: 0x12a8
// Size: 0x2e
function shouldskipmomentumdisplay(*type) {
    if (is_true(level.disablemomentum)) {
        return true;
    }
    return false;
}

// Namespace rank/rank_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xb141e96e, Offset: 0x12e0
// Size: 0x2a
function getscoreinfolabel(type) {
    return level.scoreinfo[type][#"label"];
}

// Namespace rank/rank_shared
// Params 1, eflags: 0x0
// Checksum 0x9f6697a5, Offset: 0x1318
// Size: 0x2a
function getcombatefficiencyevent(type) {
    return level.scoreinfo[type][#"combat_efficiency_event"];
}

// Namespace rank/rank_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x9204461e, Offset: 0x1350
// Size: 0x84
function function_f7b5d9fa(type) {
    playerrole = getrole();
    if (isdefined(level.scoreinfo[type])) {
        return (isdefined(level.scoreinfo[type][#"isobj"]) ? level.scoreinfo[type][#"isobj"] : 0);
    }
    return 0;
}

// Namespace rank/rank_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xae2bbc94, Offset: 0x13e0
// Size: 0x24
function shouldkickbyrank() {
    if (self ishost()) {
        return false;
    }
    return false;
}

// Namespace rank/rank_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xe23d4d41, Offset: 0x1410
// Size: 0x70
function getarenapointsstat() {
    arenaslot = arenagetslot();
    arenapoints = self stats::get_stat(#"arenastats", arenaslot, #"rankedplaystats", #"points");
    return arenapoints + 1;
}

// Namespace rank/rank_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x7e9f32ee, Offset: 0x1488
// Size: 0x7c
function getrankxp() {
    assert(isplayer(self));
    if (isplayer(self)) {
        xp = self function_2f2051c9();
        if (!isdefined(xp)) {
            xp = 0;
        }
        return xp;
    }
    return 0;
}

// Namespace rank/rank_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x17955094, Offset: 0x1510
// Size: 0x84
function function_5b197def(var_9169ac47) {
    assert(isplayer(self));
    if (isplayer(self)) {
        xp = self function_2f2051c9(var_9169ac47);
        if (!isdefined(xp)) {
            xp = 0;
        }
        return xp;
    }
    return 0;
}

// Namespace rank/rank_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x861a3ba4, Offset: 0x15a0
// Size: 0x6e
function getrank() {
    assert(isplayer(self));
    if (isplayer(self)) {
        return getrankforxp(getrankxp());
    }
    return 0;
}

// Namespace rank/rank_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xd66e0ef7, Offset: 0x1618
// Size: 0x6e
function getprestige() {
    assert(isplayer(self));
    if (isplayer(self)) {
        return function_a470b201(getrankxp());
    }
    return 0;
}

// Namespace rank/rank_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x5aab2e16, Offset: 0x1690
// Size: 0x5dc
function on_player_connect() {
    if (!isdefined(self.pers[#"participation"])) {
        self.pers[#"participation"] = 0;
    }
    if (!isdefined(self.pers[#"controllerparticipation"])) {
        self.pers[#"controllerparticipation"] = 0;
    }
    if (!isdefined(self.pers[#"controllerparticipationchecks"])) {
        self.pers[#"controllerparticipationchecks"] = 0;
    }
    if (!isdefined(self.pers[#"controllerparticipationchecksskipped"])) {
        self.pers[#"controllerparticipationchecksskipped"] = 0;
    }
    if (!isdefined(self.pers[#"controllerparticipationconsecutivesuccessmax"])) {
        self.pers[#"controllerparticipationconsecutivesuccessmax"] = 0;
    }
    if (!isdefined(self.pers[#"controllerparticipationconsecutivefailuremax"])) {
        self.pers[#"controllerparticipationconsecutivefailuremax"] = 0;
    }
    if (!isdefined(self.pers[#"hash_3b7fc8c62a7d4420"])) {
        self.pers[#"hash_3b7fc8c62a7d4420"] = 0;
    }
    if (!isdefined(self.pers[#"hash_4a01db5796cf12b1"])) {
        self.pers[#"hash_4a01db5796cf12b1"] = #"none";
    }
    if (!isdefined(self.pers[#"controllerparticipationendgameresult"])) {
        self.pers[#"controllerparticipationendgameresult"] = -1;
    }
    if (!isdefined(self.pers[#"controllerparticipationinactivitywarnings"])) {
        self.pers[#"controllerparticipationinactivitywarnings"] = 0;
    }
    if (!isdefined(self.pers[#"controllerparticipationsuccessafterinactivitywarning"])) {
        self.pers[#"controllerparticipationsuccessafterinactivitywarning"] = 0;
    }
    if (!isdefined(self.pers[#"hash_2013e34fb3c104e9"])) {
        self.pers[#"hash_2013e34fb3c104e9"] = 0;
    }
    self.pers[#"rankxp"] = self getrankxp();
    self.pers[#"rank"] = getrank();
    self.cur_ranknum = self.pers[#"rank"];
    self.rankupdatetotal = 0;
    self.pers[#"plevel"] = getprestige();
    self setrank(self.pers[#"rank"], self.pers[#"plevel"]);
    self.pers[#"hash_43ad5d1b08145b1f"] = self.pers[#"rankxp"];
    if (self shouldkickbyrank()) {
        kick(self getentitynumber());
        return;
    }
    if (!isdefined(self.pers[#"summary"])) {
        self.pers[#"summary"] = [];
        self.pers[#"summary"][#"xp"] = 0;
        self.pers[#"summary"][#"score"] = 0;
        self.pers[#"summary"][#"challenge"] = 0;
        self.pers[#"summary"][#"match"] = 0;
        self.pers[#"summary"][#"misc"] = 0;
    }
    if (gamemodeisarena() && !isbot(self)) {
        arenapoints = self getarenapointsstat();
        arenapoints = int(min(arenapoints, 100));
        self.pers[#"arenapoints"] = arenapoints;
        self setarenapoints(arenapoints);
    }
    self.explosivekills[0] = 0;
}

// Namespace rank/rank_shared
// Params 0, eflags: 0x0
// Checksum 0xd2bcb464, Offset: 0x1c78
// Size: 0x90
function atleastoneplayeroneachteam() {
    foreach (team, _ in level.teams) {
        if (!level.playercount[team]) {
            return false;
        }
    }
    return true;
}

// Namespace rank/rank_shared
// Params 1, eflags: 0x0
// Checksum 0x652ca06a, Offset: 0x1d10
// Size: 0x32
function round_this_number(value) {
    value = int(value + 0.5);
    return value;
}

// Namespace rank/rank_shared
// Params 0, eflags: 0x0
// Checksum 0xf1116afc, Offset: 0x1d50
// Size: 0x138
function updaterank() {
    newrankid = self getrank();
    if (newrankid == self.pers[#"rank"]) {
        return false;
    }
    oldrank = self.pers[#"rank"];
    rankid = self.pers[#"rank"];
    self.pers[#"rank"] = newrankid;
    while (rankid <= newrankid) {
        rankid++;
    }
    /#
        print("<unknown string>" + oldrank + "<unknown string>" + newrankid + "<unknown string>" + self stats::get_stat_global(#"time_played_total"));
    #/
    self setrank(newrankid);
    return true;
}

// Namespace rank/player_rankup
// Params 1, eflags: 0x20
// Checksum 0x7c39dbf8, Offset: 0x1e90
// Size: 0x144
function event_handler[player_rankup] codecallback_rankup(eventstruct) {
    self.pers[#"rank"] = eventstruct.rank;
    if (sessionmodeiswarzonegame()) {
        self stats::function_62b271d8(#"rank", self.pers[#"rank"]);
        self stats::function_62b271d8(#"plevel", self.pers[#"plevel"]);
        return;
    }
    self luinotifyevent(#"rank_up", 3, eventstruct.rank, eventstruct.prestige, eventstruct.unlock_tokens_added);
    self function_8ba40d2f(#"rank_up", 3, eventstruct.rank, eventstruct.prestige, eventstruct.unlock_tokens_added);
    self thread battlechatter::function_f5b398b6();
}

// Namespace rank/rank_shared
// Params 1, eflags: 0x0
// Checksum 0x48f7e11, Offset: 0x1fe0
// Size: 0x68
function getitemindex(refstring) {
    itemindex = getitemindexfromref(refstring);
    assert(itemindex > 0, "<unknown string>" + refstring + "<unknown string>" + itemindex);
    return itemindex;
}

// Namespace rank/rank_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xae1f6852, Offset: 0x2050
// Size: 0x12
function endgameupdate() {
    player = self;
}

// Namespace rank/rank_shared
// Params 0, eflags: 0x0
// Checksum 0x19a49ee6, Offset: 0x2070
// Size: 0x44
function getspm() {
    ranklevel = self getrank() + 1;
    return (3 + ranklevel * 0.5) * 10;
}

// Namespace rank/rank_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xeedf1530, Offset: 0x20c0
// Size: 0x62
function function_bcb5e246(type) {
    var_920d60e7 = 0;
    if (isdefined(level.scoreinfo[type][#"bounty_reward"])) {
        var_920d60e7 = level.scoreinfo[type][#"bounty_reward"];
    }
    return var_920d60e7;
}

