// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\gametypes\overtime.gsc;
#using scripts\mp_common\gametypes\match.gsc;
#using scripts\core_common\player\player_role.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\util_shared.gsc;
#using script_7a8059ca02b7b09e;
#using scripts\core_common\system_shared.gsc;
#using script_6167e26342be354b;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\player\player_loadout.gsc;

#namespace namespace_a77a81df;

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x5
// Checksum 0x89548ebb, Offset: 0x148
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_ac6037cb01da0d4", &preinit, undefined, undefined, #"hash_53528dbbf6cd15c4");
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x6 linked
// Checksum 0x13f63ce2, Offset: 0x198
// Size: 0x29c
function private preinit() {
    level.var_46821767 = getdvarint(#"hash_661461deeee00da6", 0);
    telemetry::add_callback(#"on_game_playing", &function_72c32279);
    telemetry::function_98df8818(#"hash_711212b10739dcce", &function_d519e318);
    telemetry::add_callback(#"on_end_game", &function_f0ffff28);
    telemetry::add_callback(#"on_player_connect", &on_player_connect);
    telemetry::add_callback(#"on_player_disconnect", &on_player_disconnect);
    telemetry::add_callback(#"on_player_spawned", &on_player_spawned);
    telemetry::function_98df8818(#"hash_6602db5bc859fcd9", &function_55a7ded6);
    telemetry::function_98df8818(#"hash_fc0d1250fc48d49", &function_607901f4);
    telemetry::function_98df8818(#"hash_b88b6d2e0028e13", &function_abbc84ad);
    telemetry::add_callback(#"on_loadout", &function_e2162733);
    telemetry::function_98df8818(#"hash_540cddd637f71a5e", &function_c1165a2d);
    telemetry::function_98df8818(#"hash_37f96a1d3c57a089", &function_6c95006e);
    telemetry::add_callback(#"hash_1f5aa545c7334d3a", &function_9cac835e);
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x2 linked
// Checksum 0xdb9c245, Offset: 0x440
// Size: 0x342
function function_72c32279() {
    if (util::isfirstround()) {
        /#
            println("<unknown string>" + getutc());
            println("<unknown string>" + util::get_map_name());
            println("<unknown string>" + level.gametype);
            println("<unknown string>" + sessionmodeisprivateonlinegame());
            println("<unknown string>" + sessionmodeissystemlink());
            println("<unknown string>" + isdedicated());
            println("<unknown string>");
        #/
        utc = getutc();
        if (isdefined(game.telemetry)) {
            game.telemetry.var_dc73ada2 = utc;
        }
        matchstart = {};
        matchstart.var_dc73ada2 = utc;
        matchstart.map = hash(util::get_map_name());
        matchstart.game_type = hash(level.gametype);
        matchstart.var_c8019fa4 = sessionmodeisprivateonlinegame();
        matchstart.var_137fea24 = sessionmodeissystemlink();
        matchstart.is_dedicated = isdedicated();
        matchstart.playlist_id = currentplaylistid();
        matchstart.playlist_name = hash(function_970f37d1());
        matchstart.var_65dcfd4a = getdvarint(#"hash_4c63a0806012e032", 0);
        matchstart.var_a14949d8 = getdvarstring(#"hash_164a9a28628343ef", "");
        matchstart.var_ffa674c = gamemodeisarena();
        function_92d1707f(#"hash_2d8b6733f192c69b", matchstart);
    }
    if (util::isroundbased()) {
        if (isdefined(game.telemetry)) {
            game.telemetry.var_29d0de09 = function_f8d53445();
        }
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x2 linked
// Checksum 0x603c0cf4, Offset: 0x790
// Size: 0x7fc
function function_d519e318() {
    if (util::isoneround() || util::waslastround()) {
        util::function_64ebd94d();
        /#
            println("<unknown string>" + function_f8d53445());
            println("<unknown string>" + gettime());
            println("<unknown string>" + util::get_map_name());
            println("<unknown string>" + level.gametype);
            println("<unknown string>" + getutc());
        #/
        utc = getutc();
        matchend = {};
        matchend.var_dc73ada2 = 0;
        matchend.var_44be7e07 = utc;
        matchend.map = hash(util::get_map_name());
        matchend.game_type = hash(level.gametype);
        matchend.var_c8019fa4 = sessionmodeisprivateonlinegame();
        matchend.var_137fea24 = sessionmodeissystemlink();
        matchend.is_dedicated = isdedicated();
        matchend.player_count = 0;
        matchend.life_count = 0;
        matchend.playlist_id = currentplaylistid();
        matchend.playlist_name = hash(function_970f37d1());
        matchend.var_65dcfd4a = getdvarint(#"hash_4c63a0806012e032", 0);
        matchend.var_a14949d8 = getdvarstring(#"hash_164a9a28628343ef", "");
        matchend.team_scores = isdefined(game.stat[#"teamscores"]) ? game.stat[#"teamscores"] : [];
        matchend.var_ffa674c = gamemodeisarena();
        teams = [];
        foreach (var_3ac79a83, teamstring in level.teams) {
            teams[teams.size] = var_3ac79a83;
        }
        matchend.teams = teams;
        if (isdefined(game.telemetry.var_dc73ada2)) {
            time_seconds = utc - game.telemetry.var_dc73ada2;
            println("<unknown string>" + time_seconds);
            matchend.var_dc73ada2 = game.telemetry.var_dc73ada2;
        }
        match_duration = function_f8d53445() / 1000;
        println("<unknown string>" + match_duration);
        if (isdefined(game.telemetry.player_count)) {
            println("<unknown string>" + game.telemetry.player_count);
            matchend.player_count = game.telemetry.player_count;
        }
        if (isdefined(game.telemetry.life_count)) {
            println("<unknown string>" + game.telemetry.life_count);
            matchend.life_count = game.telemetry.life_count;
        }
        if (function_feface0c()) {
            var_3b7c8f8c = function_6997ae82();
            if (isdefined(var_3b7c8f8c)) {
                matchend.var_c517822c = isdefined(var_3b7c8f8c.votesforprev) ? var_3b7c8f8c.votesforprev : 0;
                matchend.var_5bdd51ff = isdefined(var_3b7c8f8c.votesfornext) ? var_3b7c8f8c.votesfornext : 0;
                matchend.var_b1f1e8df = isdefined(var_3b7c8f8c.votesforrandom) ? var_3b7c8f8c.votesforrandom : 0;
                matchend.var_33f196e0 = isdefined(var_3b7c8f8c.didntvote) ? var_3b7c8f8c.didntvote : 0;
                matchend.var_c35af8bc = isdefined(var_3b7c8f8c.var_f6de7b09) ? var_3b7c8f8c.var_f6de7b09 : 0;
                matchend.var_cc8e62ce = isdefined(var_3b7c8f8c.var_6441c8d) ? var_3b7c8f8c.var_6441c8d : 0;
                matchend.var_467db155 = isdefined(var_3b7c8f8c.var_d6c36da7) ? var_3b7c8f8c.var_d6c36da7 : 0;
                matchend.var_362eb7a8 = isdefined(var_3b7c8f8c.var_a138ab88) ? var_3b7c8f8c.var_a138ab88 : 0;
            }
        }
        matchend.server_frame_msec = function_60d95f53();
        function_92d1707f(#"hash_1b52f03009c8c97e", matchend);
        println("<unknown string>");
    }
    if (util::isroundbased()) {
        if (isdefined(game.telemetry.var_29d0de09)) {
            roundend = {};
            roundend.var_29d0de09 = game.telemetry.var_29d0de09;
            roundend.var_b0ab3472 = function_f8d53445();
            roundend.team_scores = isdefined(game.stat[#"teamscores"]) ? game.stat[#"teamscores"] : [];
            roundend.var_e394d7c0 = util::getroundsplayed();
            roundend.overtime_round = overtime::is_overtime_round();
            function_92d1707f(#"hash_4aeb25514c599057", roundend);
        }
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x2 linked
// Checksum 0x2d28744, Offset: 0xf98
// Size: 0x4d4
function on_player_connect() {
    if (!is_true(self.pers[#"telemetry"].connected)) {
        /#
            println("<unknown string>" + gettime());
            println("<unknown string>" + getutc());
            println("<unknown string>" + self.name);
        #/
        self.pers[#"weaponstats"] = [];
        if (!isdefined(self.pers[#"telemetry"])) {
            self.pers[#"telemetry"] = {};
        }
        self.pers[#"telemetry"].utc_connect_time_s = getutc();
        self.pers[#"telemetry"].connected = 1;
        self.pers[#"telemetry"].xp_at_start = self rank::getrankxp();
        self.pers[#"telemetry"].var_a1938c60 = self rank::function_5b197def(0);
        self.pers[#"telemetry"].var_970f034c = self rank::function_5b197def(1);
        self.pers[#"telemetry"].var_43ab3c14 = self rank::function_5b197def(2);
        self.pers[#"telemetry"].var_9c4d3f78 = self rank::function_5b197def(3);
        self.pers[#"telemetry"].var_12173831 = self rank::function_5b197def(5);
        self.pers[#"telemetry"].var_9f177532 = self rank::getrank();
        self.pers[#"telemetry"].var_af870172 = self rank::getprestige();
        if (isdefined(game.telemetry.player_count)) {
            self.pers[#"telemetry"].var_6ba64843 = game.telemetry.player_count;
            game.telemetry.player_count++;
            println("<unknown string>" + game.telemetry.player_count);
        } else {
            println("<unknown string>");
            return;
        }
        println("<unknown string>");
        playerdata = {};
        playerdata.utc_connect_time_s = self.pers[#"telemetry"].utc_connect_time_s;
        playerdata.var_6ba64843 = isdefined(self.pers[#"telemetry"].var_6ba64843) ? self.pers[#"telemetry"].var_6ba64843 : 0;
        playerdata.var_524ab934 = self function_d40f1a0e();
        playerdata.var_504e19f4 = self function_21f71ac8();
        playerdata.var_68441d6f = self function_325dc923();
        self function_678f57c8(#"hash_2d1a41c5bbfe18dd", playerdata);
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x2 linked
// Checksum 0x3ee6e39e, Offset: 0x1478
// Size: 0x115c
function on_player_disconnect() {
    if (!is_true(self.pers[#"telemetry"].connected)) {
        return;
    }
    self.pers[#"telemetry"].connected = 0;
    playerdata = {};
    /#
        println("<unknown string>" + self.name);
        println("<unknown string>" + gettime());
    #/
    playerdata.utc_connect_time_s = 0;
    playerdata.utc_disconnect_time_s = 0;
    playerdata.var_37b8e421 = 0;
    utc = getutc();
    if (isdefined(self.pers[#"telemetry"].utc_connect_time_s)) {
        playerdata.utc_connect_time_s = self.pers[#"telemetry"].utc_connect_time_s;
        playerdata.utc_disconnect_time_s = utc;
        playerdata.var_37b8e421 = utc - playerdata.utc_connect_time_s;
    }
    playerdata.var_6ba64843 = isdefined(self.pers[#"telemetry"].var_6ba64843) ? self.pers[#"telemetry"].var_6ba64843 : 0;
    if (isdefined(self.pers)) {
        playerdata.score = isdefined(self.pers[#"score"]) ? self.pers[#"score"] : 0;
        playerdata.kills = isdefined(self.pers[#"kills"]) ? self.pers[#"kills"] : 0;
        playerdata.deaths = isdefined(self.pers[#"deaths"]) ? self.pers[#"deaths"] : 0;
        playerdata.headshots = isdefined(self.pers[#"headshots"]) ? self.pers[#"headshots"] : 0;
        playerdata.assists = isdefined(self.pers[#"assists"]) ? self.pers[#"assists"] : 0;
        playerdata.damage_dealt = isdefined(self.pers[#"damagedone"]) ? self.pers[#"damagedone"] : 0;
        playerdata.suicides = isdefined(self.pers[#"suicides"]) ? self.pers[#"suicides"] : 0;
        playerdata.shots = isdefined(self.pers[#"shotsfired"]) ? self.pers[#"shotsfired"] : 0;
        playerdata.hits = isdefined(self.pers[#"shotshit"]) ? self.pers[#"shotshit"] : 0;
        playerdata.time_played_alive = isdefined(self.pers[#"time_played_alive"]) ? self.pers[#"time_played_alive"] : 0;
        playerdata.var_ef5017c7 = isdefined(self.pers[#"best_kill_streak"]) ? self.pers[#"best_kill_streak"] : 0;
        playerdata.multikills = isdefined(self.pers[#"hash_104ec9727c3d4ef7"]) ? self.pers[#"hash_104ec9727c3d4ef7"] : 0;
        playerdata.var_fc1e4ef3 = isdefined(self.pers[#"highestmultikill"]) ? self.pers[#"highestmultikill"] : 0;
        playerdata.ekia = isdefined(self.pers[#"ekia"]) ? self.pers[#"ekia"] : 0;
        playerdata.team = hash(isdefined(self.pers[#"team"]) ? self.pers[#"team"] : "");
        playerdata.var_b0689e83 = isdefined(self.pers[#"hash_766a818213440d53"]) ? self.pers[#"hash_766a818213440d53"] : 0;
        timeplayed = isdefined(self.timeplayed[#"total"]) ? self.timeplayed[#"total"] : 0;
        if (timeplayed >= 120) {
            playerdata.var_4f85ae57 = int(float(1000) * float(playerdata.var_b0689e83 - playerdata.deaths - playerdata.suicides) / float(timeplayed) / float(60));
            playerdata.var_60e624ae = int(float(1000) * float(playerdata.kills - playerdata.deaths - playerdata.suicides) / float(timeplayed) / float(60));
            playerdata.var_664364c7 = int(int(playerdata.score) / int(timeplayed / 60));
        } else {
            playerdata.var_4f85ae57 = 0;
            playerdata.var_60e624ae = 0;
            playerdata.var_664364c7 = 0;
        }
        playerdata.var_62eb1d70 = isdefined(self.pers[#"hash_26948141ff5e29a3"]) ? self.pers[#"hash_26948141ff5e29a3"] : 0;
        println("<unknown string>" + playerdata.var_b0689e83);
    }
    playerdata.xp_at_start = isdefined(self.pers[#"telemetry"].xp_at_start) ? self.pers[#"telemetry"].xp_at_start : 0;
    playerdata.xp_at_end = self rank::getrankxp();
    playerdata.var_a1938c60 = isdefined(self.pers[#"telemetry"].var_a1938c60) ? self.pers[#"telemetry"].var_a1938c60 : 0;
    playerdata.var_7ddf8420 = self rank::function_5b197def(0);
    playerdata.var_970f034c = isdefined(self.pers[#"telemetry"].var_970f034c) ? self.pers[#"telemetry"].var_970f034c : 0;
    playerdata.var_b7d93a80 = self rank::function_5b197def(1);
    playerdata.var_43ab3c14 = isdefined(self.pers[#"telemetry"].var_43ab3c14) ? self.pers[#"telemetry"].var_43ab3c14 : 0;
    playerdata.var_460c9ce = self rank::function_5b197def(2);
    playerdata.var_9c4d3f78 = isdefined(self.pers[#"telemetry"].var_9c4d3f78) ? self.pers[#"telemetry"].var_9c4d3f78 : 0;
    playerdata.var_5f67b464 = self rank::function_5b197def(3);
    playerdata.var_12173831 = isdefined(self.pers[#"telemetry"].var_12173831) ? self.pers[#"telemetry"].var_12173831 : 0;
    playerdata.var_c4d676ee = self rank::function_5b197def(5);
    playerdata.var_9f177532 = isdefined(self.pers[#"telemetry"].var_9f177532) ? self.pers[#"telemetry"].var_9f177532 : 0;
    playerdata.var_735f5996 = self rank::getrank();
    playerdata.var_af870172 = isdefined(self.pers[#"telemetry"].var_af870172) ? self.pers[#"telemetry"].var_af870172 : 0;
    playerdata.var_7d032a98 = self rank::getprestige();
    playerdata.objectives = isdefined(self.objectives) ? self.objectives : 0;
    if (!is_true(level.disablestattracking)) {
        playerdata.var_9ffd4086 = self stats::get_stat_global(#"kills");
        playerdata.var_56c22769 = self stats::get_stat_global(#"deaths");
        playerdata.var_3c57e59 = self stats::get_stat_global(#"wins");
        playerdata.var_e42ad7c9 = self stats::get_stat_global(#"losses");
        playerdata.var_270e8e42 = self stats::get_stat_global(#"ties");
        playerdata.var_4c4d425a = self stats::get_stat_global(#"hits");
        playerdata.var_5197016d = self stats::get_stat_global(#"misses");
        playerdata.var_359ee86a = self stats::get_stat_global(#"time_played_total");
        playerdata.var_4ab9220a = self stats::get_stat_global(#"score");
    }
    playerdata.operator = 0;
    role = self player_role::get();
    if (sessionmodeismultiplayergame() || sessionmodeiswarzonegame()) {
        var_a791abd1 = function_b14806c6(role, currentsessionmode());
        playerdata.operator = isdefined(var_a791abd1) ? var_a791abd1 : 0;
        playerdata.var_887376f4 = self getcharacterlootid();
    }
    playerdata.var_161a9fc9 = 0;
    playerdata.var_a3ba1678 = #"tie";
    if (!match::get_flag("tie")) {
        if (match::function_a2b53e17(self)) {
            playerdata.var_a3ba1678 = #"win";
        } else {
            playerdata.var_a3ba1678 = #"loss";
        }
    }
    var_a38b89a4 = isdefined(self.pers[#"telemetry"].life.var_4f7ff485) ? self.pers[#"telemetry"].life.var_4f7ff485 : -1;
    lifeindex = isdefined(self.pers[#"telemetry"].life.life_index) ? self.pers[#"telemetry"].life.life_index : -1;
    if (var_a38b89a4 != lifeindex) {
        data = {};
        data.victim = self;
        data.attacker = undefined;
        data.weapon = undefined;
        data.victimweapon = self.currentweapon;
        data.var_d18366fd = 1;
        playerdata.var_161a9fc9 = 1;
        if (isalive(self)) {
            data.died = 0;
        } else {
            data.died = 1;
        }
        if (isdefined(self.pers[#"telemetry"].life)) {
            self.pers[#"telemetry"].life.var_75cd3884 = function_f8d53445();
        }
        function_607901f4(data);
    }
    self function_678f57c8(#"hash_4a80e3ea4f031ba4", playerdata);
    self function_21b451d5(playerdata.score, playerdata.kills, playerdata.deaths, playerdata.headshots, playerdata.assists, playerdata.suicides, playerdata.xp_at_start, playerdata.xp_at_end, playerdata.var_9f177532, playerdata.var_735f5996, playerdata.time_played_alive);
    self function_792e6d18();
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x2 linked
// Checksum 0xb644cdbc, Offset: 0x25e0
// Size: 0x476
function on_player_spawned() {
    if (!isdefined(self.pers[#"telemetry"])) {
        self.pers[#"telemetry"] = {};
    }
    self.pers[#"telemetry"].life = {};
    self.pers[#"telemetry"].life.var_62c7b24e = function_f8d53445();
    self.pers[#"telemetry"].life.spawn_origin = self.origin;
    self.pers[#"telemetry"].life.var_cc189f4f = isdefined(self.pers[#"score"]) ? self.pers[#"score"] : 0;
    self.pers[#"telemetry"].life.var_a04d3223 = isdefined(self.pers[#"assists"]) ? self.pers[#"assists"] : 0;
    self.pers[#"telemetry"].life.var_75f84f99 = isdefined(self.pers[#"kills"]) ? self.pers[#"kills"] : 0;
    self.pers[#"telemetry"].life.deathmodifiers = [];
    if (isdefined(game.telemetry.life_count)) {
        self.pers[#"telemetry"].life.life_index = game.telemetry.life_count;
        game.telemetry.life_count++;
        /#
            println("<unknown string>" + self.name);
            println("<unknown string>" + game.telemetry.life_count);
        #/
    }
    println("<unknown string>");
    if (!isdefined(self.pers[#"telemetry"].var_9c9223d5)) {
        var_234012ff = {#operator:"", #var_887376f4:""};
        var_8efad2ca = self player_role::get();
        if (sessionmodeismultiplayergame() || sessionmodeiswarzonegame()) {
            var_a791abd1 = function_b14806c6(isdefined(var_8efad2ca) ? var_8efad2ca : 0, currentsessionmode());
            var_234012ff.operator = isdefined(var_a791abd1) ? var_a791abd1 : "";
            var_234012ff.var_887376f4 = self getcharacterlootid();
        }
        self function_678f57c8(#"hash_2858113be21419d2", var_234012ff);
        self.pers[#"telemetry"].var_9c9223d5 = 1;
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x2 linked
// Checksum 0xf489ea6c, Offset: 0x2a60
// Size: 0x23c
function function_f0ffff28() {
    if (util::isoneround() || util::waslastround()) {
    }
    var_87e50fa8 = function_f8d53445();
    var_a7dd086f = isalive(self);
    telemetry::function_f397069a();
    if (var_a7dd086f && isdefined(self)) {
        var_a38b89a4 = isdefined(self.pers[#"telemetry"].life.var_4f7ff485) ? self.pers[#"telemetry"].life.var_4f7ff485 : -1;
        lifeindex = isdefined(self.pers[#"telemetry"].life.life_index) ? self.pers[#"telemetry"].life.life_index : -1;
        if (var_a38b89a4 != lifeindex) {
            data = {};
            data.victim = self;
            data.attacker = undefined;
            data.weapon = undefined;
            data.victimweapon = self.currentweapon;
            data.died = 0;
            if (isdefined(self.pers[#"telemetry"].life)) {
                self.pers[#"telemetry"].life.var_75cd3884 = var_87e50fa8;
            }
            function_607901f4(data);
        }
    }
    if (isdefined(self)) {
        self killstreaks::function_ef1303ba(var_87e50fa8, #"game_ended");
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 1, eflags: 0x2 linked
// Checksum 0x79cda603, Offset: 0x2ca8
// Size: 0x134
function function_55a7ded6(data) {
    if (!isplayer(data.victim)) {
        return;
    }
    if (isdefined(data.victim.pers[#"telemetry"].life)) {
        data.victim.pers[#"telemetry"].life.var_75cd3884 = function_f8d53445();
    }
    if (isdefined(data.victim.var_c8836f02)) {
        data.var_cc4bc1dd = arraycopy(data.victim.var_c8836f02);
    }
    /#
        println("<unknown string>" + data.victim.name);
        println("<unknown string>" + function_f8d53445());
    #/
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 1, eflags: 0x2 linked
// Checksum 0x164ba065, Offset: 0x2de8
// Size: 0xf8a
function function_607901f4(data) {
    if (!isdefined(data.victim) || !isplayer(data.victim)) {
        return;
    }
    /#
        println("<unknown string>" + data.victim.name);
        println("<unknown string>" + function_f8d53445());
    #/
    died = 1;
    if (isdefined(data.died)) {
        died = data.died;
    }
    deathdata = {};
    deathdata.died = died;
    deathdata.var_161a9fc9 = isdefined(data.var_d18366fd) ? data.var_d18366fd : 0;
    deathdata.var_62c7b24e = 0;
    deathdata.var_75cd3884 = 0;
    deathdata.var_39872854 = 0;
    if (isdefined(data.victim.pers[#"telemetry"].life.var_62c7b24e)) {
        deathdata.var_62c7b24e = data.victim.pers[#"telemetry"].life.var_62c7b24e;
        if (isdefined(data.victim.pers[#"telemetry"].life.var_75cd3884)) {
            deathdata.var_75cd3884 = data.victim.pers[#"telemetry"].life.var_75cd3884;
            deathdata.var_39872854 = deathdata.var_75cd3884 - deathdata.var_62c7b24e;
        }
    }
    deathdata.var_5b58152b = isdefined(data.victim.var_6fd69072) ? data.victim.var_6fd69072 : 0;
    deathdata.var_41d1b088 = isdefined(data.victim.var_8cb03411) ? data.victim.var_8cb03411 : 0;
    deathdata.var_f079a94e = 0;
    if (squad_spawn::function_d072f205()) {
        deathdata.var_f079a94e = 1;
    }
    deathdata.spawn_type = isdefined(data.victim.spawn.var_a9914487) ? data.victim.spawn.var_a9914487 : 0;
    deathdata.var_d5eb9cb8 = isdefined(data.victim.spawn.var_4db23b) ? data.victim.spawn.var_4db23b : 0;
    deathdata.team = data.victim.team;
    deathdata.life_index = -1;
    if (isdefined(data.victim.pers[#"telemetry"].life.life_index)) {
        deathdata.life_index = data.victim.pers[#"telemetry"].life.life_index;
    }
    if (isdefined(data.victim.pers[#"telemetry"].life.spawn_origin)) {
        deathdata.var_8b82b087 = data.victim.pers[#"telemetry"].life.spawn_origin[0];
        deathdata.var_9d3f5400 = data.victim.pers[#"telemetry"].life.spawn_origin[1];
        deathdata.var_ab1e6fbe = data.victim.pers[#"telemetry"].life.spawn_origin[2];
    }
    deathdata.var_e399fbd4 = !data.victim gamepadusedlast();
    deathdata.var_915c82d0 = -1;
    if (died) {
        victimorigin = isdefined(data.victimorigin) ? data.victimorigin : data.victim.origin;
        deathdata.var_a8ffa14f = victimorigin[0];
        deathdata.var_e6a11c91 = victimorigin[1];
        deathdata.var_d4717832 = victimorigin[2];
        var_5fceefd4 = isdefined(data.var_5fceefd4) ? data.var_5fceefd4 : data.victim getplayerangles();
        deathdata.var_7c125af5 = var_5fceefd4[0];
        deathdata.var_8d9bfe08 = var_5fceefd4[1];
        deathdata.var_506d83ac = var_5fceefd4[2];
        deathdata.var_873aa898 = hash(isdefined(data.victimstance) ? data.victimstance : data.victim getstance());
        deathdata.means_of_death = hash(isdefined(data.smeansofdeath) ? data.smeansofdeath : "");
        deathdata.hit_location = hash(isdefined(data.shitloc) ? data.shitloc : "");
        deathdata.var_144a7f3 = data.var_f0b3c772;
        if (isdefined(data.victimweapon)) {
            deathdata.victim_weapon = data.victimweapon.name;
            deathdata.var_fcdf958f = function_8d2c5f27(isdefined(data.victimweapon.attachments) ? data.victimweapon.attachments : []);
        }
        if (isdefined(data.attacker) && isplayer(data.attacker)) {
            attackerpos = isdefined(data.attackerorigin) ? data.attackerorigin : data.attacker.origin;
            var_83634238 = isdefined(data.var_83634238) ? data.var_83634238 : data.attacker getplayerangles();
            deathdata.var_47f53c15 = attackerpos[0];
            deathdata.var_1a44e0b5 = attackerpos[1];
            deathdata.var_ed820730 = attackerpos[2];
            deathdata.var_f202c401 = var_83634238[0];
            deathdata.var_72c6458a = var_83634238[1];
            deathdata.var_840c6816 = var_83634238[2];
            deathdata.var_4d858e3d = hash(isdefined(data.attackerstance) ? data.attackerstance : "");
            deathdata.var_1ec9deac = data.attacker playerads();
            deathdata.var_11737fc2 = util::within_fov(attackerpos, var_83634238, data.victimorigin, 0.5);
            deathdata.var_cc3e142b = util::within_fov(data.victimorigin, var_5fceefd4, attackerpos, 0.5);
            deathdata.var_67fadda6 = !data.attacker gamepadusedlast();
            deathdata.var_915c82d0 = isdefined(data.attacker.pers[#"telemetry"].life.life_index) ? data.attacker.pers[#"telemetry"].life.life_index : -1;
            deathdata.var_8e368e7c = isdefined(data.attacker.pers[#"telemetry"].var_ee8d3324) ? data.attacker.pers[#"telemetry"].var_ee8d3324 : 0;
        }
        if (isdefined(data.weapon)) {
            deathdata.attacker_weapon = data.weapon.name;
            weapon_attachments = data.weapon.attachments;
            if (weapon_attachments.size > 0) {
                var_4e00795d = [];
                for (i = 0; i < weapon_attachments.size; i++) {
                    var_4e00795d[i] = hash(weapon_attachments[i]);
                }
                deathdata.var_f5205237 = var_4e00795d;
            }
        }
    }
    deathdata.var_5bf208a0 = 0;
    if (isdefined(data.victim.class_num)) {
        if (!isdefined(data.victim.pers[#"telemetry"].var_728f5d7d)) {
            data.victim.pers[#"telemetry"].var_728f5d7d = [];
        }
        var_6165a2d8 = data.victim.pers[#"telemetry"].var_ee8d3324;
        if (isdefined(var_6165a2d8)) {
            var_75000956 = data.victim.pers[#"telemetry"].var_728f5d7d;
            sent = 0;
            for (i = 0; i < var_75000956.size; i++) {
                if (var_75000956[i] == var_6165a2d8) {
                    sent = 1;
                    break;
                }
            }
            if (!sent) {
                var_75000956[var_75000956.size] = var_6165a2d8;
                println("<unknown string>" + var_6165a2d8);
                function_6d57b52a(data.victim, var_6165a2d8, data.var_cc4bc1dd);
            }
            deathdata.var_5bf208a0 = var_6165a2d8;
        }
    }
    deathdata.var_123cae71 = isdefined(data.victim.pickedupweapons[data.victimweapon]);
    deathdata.var_8c6afa1f = isdefined(data.attacker.pickedupweapons[data.weapon]);
    if (!isdefined(data.victim.pers[#"score"])) {
        data.victim.pers[#"score"] = 0;
    }
    deathdata.score_earned = data.victim.pers[#"score"] - data.victim.pers[#"telemetry"].life.var_cc189f4f;
    if (!isdefined(data.victim.pers[#"assists"])) {
        data.victim.pers[#"assists"] = 0;
    }
    deathdata.assists = data.victim.pers[#"assists"] - data.victim.pers[#"telemetry"].life.var_a04d3223;
    if (!isdefined(data.victim.pers[#"kills"])) {
        data.victim.pers[#"kills"] = 0;
    }
    deathdata.kills = data.victim.pers[#"kills"] - data.victim.pers[#"telemetry"].life.var_75f84f99;
    deathdata.var_1af2a81e = data.victim.pers[#"telemetry"].life.deathmodifiers;
    println("<unknown string>" + deathdata.life_index);
    if (isdefined(data.attacker) && isplayer(data.attacker)) {
        data.victim function_678f57c8(#"hash_56b3bb4a34717783", deathdata, #"attacker", data.attacker);
    } else {
        data.victim function_678f57c8(#"hash_56b3bb4a34717783", deathdata);
    }
    data.victim.pers[#"telemetry"].life.var_4f7ff485 = deathdata.life_index;
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 3, eflags: 0x2 linked
// Checksum 0x48708ecc, Offset: 0x3d80
// Size: 0x6f4
function function_6d57b52a(player, var_6165a2d8, var_cc4bc1dd) {
    loadoutdata = {};
    loadoutdata.var_5bf208a0 = var_6165a2d8;
    primaryweapon = player loadout::function_18a77b37("primary");
    if (isdefined(primaryweapon)) {
        loadoutdata.primary_weapon = primaryweapon.name;
        loadoutdata.var_70eb2c9d = function_8d2c5f27(isdefined(primaryweapon.attachments) ? primaryweapon.attachments : []);
        var_df9e1af5 = player function_e601ff48(player.class_num, 0);
        var_ff1e2369 = function_69031255(primaryweapon, var_df9e1af5);
        loadoutdata.var_4be85015 = isdefined(var_ff1e2369.weaponblueprint) ? var_ff1e2369.weaponblueprint : 0;
        primaryweaponoptions = player function_ade49959(primaryweapon);
        var_6df37b82 = getcamoindex(primaryweaponoptions);
        var_cc073e42 = function_6f89999e(var_6df37b82);
        loadoutdata.var_5eb8cc7c = isdefined(var_cc073e42) ? var_cc073e42 : 0;
    }
    secondaryweapon = player loadout::function_18a77b37("secondary");
    if (isdefined(secondaryweapon)) {
        loadoutdata.secondary_weapon = secondaryweapon.name;
        loadoutdata.var_85aac3ff = function_8d2c5f27(isdefined(secondaryweapon.attachments) ? secondaryweapon.attachments : []);
        var_48d617f1 = player function_e601ff48(player.class_num, 14);
        var_96a1671e = function_69031255(secondaryweapon, var_48d617f1);
        loadoutdata.var_61e93312 = isdefined(var_96a1671e.weaponblueprint) ? var_96a1671e.weaponblueprint : 0;
        secondaryweaponoptions = player function_ade49959(secondaryweapon);
        var_b65500f8 = getcamoindex(secondaryweaponoptions);
        var_e1e3c149 = function_6f89999e(var_b65500f8);
        loadoutdata.var_a656d9c6 = isdefined(var_e1e3c149) ? var_e1e3c149 : 0;
    }
    primarygrenade = player loadout::function_18a77b37("primarygrenade");
    if (isdefined(primarygrenade)) {
        loadoutdata.primary_grenade = primarygrenade.name;
    }
    secondarygrenade = player loadout::function_18a77b37("secondarygrenade");
    if (isdefined(secondarygrenade)) {
        loadoutdata.var_68f5c0ed = secondarygrenade.name;
    }
    fieldupgrade = player loadout::function_18a77b37("specialgrenade");
    if (isdefined(fieldupgrade)) {
        loadoutdata.field_upgrade = fieldupgrade.name;
    }
    if (isdefined(var_cc4bc1dd)) {
        loadoutdata.perks = [];
        switch (var_cc4bc1dd.size) {
        case 6:
        default:
            loadoutdata.perks[5] = var_cc4bc1dd[5].namehash;
        case 5:
            loadoutdata.perks[4] = var_cc4bc1dd[4].namehash;
        case 4:
            loadoutdata.perks[3] = var_cc4bc1dd[3].namehash;
        case 3:
            loadoutdata.perks[2] = var_cc4bc1dd[2].namehash;
        case 2:
            loadoutdata.perks[1] = var_cc4bc1dd[1].namehash;
        case 1:
            loadoutdata.perks[0] = var_cc4bc1dd[0].namehash;
        case 0:
            break;
        }
    }
    wildcards = player function_6f2c0492(player.class_num);
    if (isdefined(wildcards)) {
        loadoutdata.wildcards = [];
        switch (wildcards.size) {
        case 3:
        default:
            loadoutdata.wildcards[2] = wildcards[2];
        case 2:
            loadoutdata.wildcards[1] = wildcards[1];
        case 1:
            loadoutdata.wildcards[0] = wildcards[0];
        case 0:
            break;
        }
    }
    killstreaks = player.killstreak;
    if (isdefined(killstreaks)) {
        loadoutdata.killstreaks = [];
        switch (killstreaks.size) {
        case 3:
        default:
            loadoutdata.killstreaks[2] = killstreaks[2];
        case 2:
            loadoutdata.killstreaks[1] = killstreaks[1];
        case 1:
            loadoutdata.killstreaks[0] = killstreaks[0];
        case 0:
            break;
        }
    }
    player function_678f57c8(#"hash_46722c5c0abe049f", loadoutdata);
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 1, eflags: 0x2 linked
// Checksum 0x15298e07, Offset: 0x4480
// Size: 0x23c
function function_abbc84ad(data) {
    if (level.var_46821767 === 1) {
        return;
    }
    if (!data.weaponpickedup) {
        if (!isdefined(data.player.pers[#"telemetry"].var_68ef7250)) {
            return;
        }
        key = data.weapon.name + data.player.pers[#"telemetry"].var_68ef7250;
        if (!isdefined(data.player.pers[#"weaponstats"][key])) {
            if (data.player.pers[#"weaponstats"].size >= 5) {
                data.player function_792e6d18();
                data.player.pers[#"weaponstats"] = [];
            }
            data.player.pers[#"weaponstats"][key] = {#stats:[], #weapon:data.weapon, #var_6165a2d8:data.player.pers[#"telemetry"].var_ee8d3324};
        }
        statscache = data.player.pers[#"weaponstats"][key].stats;
        if (!isdefined(statscache[data.statname])) {
            statscache[data.statname] = 0;
        }
        statscache[data.statname] = statscache[data.statname] + data.value;
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x2 linked
// Checksum 0x81e08425, Offset: 0x46c8
// Size: 0x3d8
function function_792e6d18() {
    foreach (weaponinfo in self.pers[#"weaponstats"]) {
        weaponitemindex = getbaseweaponitemindex(weaponinfo.weapon);
        weaponstats = {#weapon_name:weaponinfo.weapon.name, #var_5bf208a0:weaponinfo.var_6165a2d8, #shots:isdefined(weaponinfo.stats[#"shots"]) ? weaponinfo.stats[#"shots"] : 0, #hits:isdefined(weaponinfo.stats[#"hits"]) ? weaponinfo.stats[#"hits"] : 0, #kills:isdefined(weaponinfo.stats[#"kills"]) ? weaponinfo.stats[#"kills"] : 0, #headshots:isdefined(weaponinfo.stats[#"headshots"]) ? weaponinfo.stats[#"headshots"] : 0, #var_7e2968cc:isdefined(weaponinfo.stats[#"deathsduringuse"]) ? weaponinfo.stats[#"deathsduringuse"] : 0, #time_used_s:isdefined(weaponinfo.stats[#"timeused"]) ? weaponinfo.stats[#"timeused"] : 0, #var_9239f70f:isdefined(weaponinfo.stats[#"xpearned"]) ? weaponinfo.stats[#"xpearned"] : 0, #end_level:(isdefined(self getcurrentgunrank(weaponitemindex)) ? self getcurrentgunrank(weaponitemindex) : 0) + 1, #flourish_count:isdefined(weaponinfo.stats[#"flourish_count"]) ? weaponinfo.stats[#"flourish_count"] : 0};
        self function_678f57c8(#"hash_71e24083d5b3f555", weaponstats);
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x2 linked
// Checksum 0xed7e781d, Offset: 0x4aa8
// Size: 0xc6
function function_e2162733() {
    var_ee8d3324 = self function_13f24803(self.class_num);
    self.pers[#"telemetry"].var_ee8d3324 = var_ee8d3324;
    if (isdefined(var_ee8d3324)) {
        self.pers[#"telemetry"].var_68ef7250 = "+loadoutChecksum" + string(var_ee8d3324);
        return;
    }
    self.pers[#"telemetry"].var_68ef7250 = undefined;
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 1, eflags: 0x2 linked
// Checksum 0x7ca020c, Offset: 0x4b78
// Size: 0x144
function function_c1165a2d(data) {
    var_e3b99e34 = {};
    var_e3b99e34.event_type = data.eventtype;
    var_e3b99e34.var_87a3e584 = isdefined(data.var_51b1d48e) ? data.var_51b1d48e : function_f8d53445();
    if (isdefined(data.player.origin)) {
        var_e3b99e34.var_39c6001a = data.player.origin[0];
        var_e3b99e34.var_71986fbe = data.player.origin[1];
        var_e3b99e34.var_efd8ec65 = data.player.origin[2];
    }
    if (isdefined(data.player)) {
        function_92d1707f(#"hash_16b85b3fe51a7bd4", var_e3b99e34, #"player", data.player);
        return;
    }
    function_92d1707f(#"hash_16b85b3fe51a7bd4", var_e3b99e34);
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 1, eflags: 0x2 linked
// Checksum 0xd8ba40ce, Offset: 0x4cc8
// Size: 0x6a
function function_6c95006e(data) {
    if (isdefined(data.var_bdc4bbd2)) {
        deathmodifiers = data.player.pers[#"telemetry"].life.deathmodifiers;
        deathmodifiers[deathmodifiers.size] = data.var_bdc4bbd2;
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 1, eflags: 0x2 linked
// Checksum 0x10f010d5, Offset: 0x4d40
// Size: 0x9c
function function_9cac835e(data) {
    if (isdefined(data.weapon)) {
        function_abbc84ad({#player:self, #weapon:data.weapon, #statname:#"flourish_count", #value:1, #weaponpickedup:0});
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 1, eflags: 0x2 linked
// Checksum 0x4346a1e3, Offset: 0x4de8
// Size: 0x60
function function_8d2c5f27(array) {
    new_array = [];
    for (i = 0; i < array.size; i++) {
        new_array[i] = hash(array[i]);
    }
    return new_array;
}

