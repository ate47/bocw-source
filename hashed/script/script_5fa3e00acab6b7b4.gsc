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
    system::register(#"hash_ac6037cb01da0d4", &function_70a657d8, undefined, undefined, #"hash_53528dbbf6cd15c4");
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x6 linked
// Checksum 0x13f63ce2, Offset: 0x198
// Size: 0x29c
function private function_70a657d8() {
    level.var_46821767 = getdvarint(#"hash_661461deeee00da6", 0);
    namespace_341c57b3::add_callback(#"on_game_playing", &function_72c32279);
    namespace_341c57b3::function_98df8818(#"hash_711212b10739dcce", &function_d519e318);
    namespace_341c57b3::add_callback(#"on_end_game", &function_f0ffff28);
    namespace_341c57b3::add_callback(#"on_player_connect", &on_player_connect);
    namespace_341c57b3::add_callback(#"on_player_disconnect", &on_player_disconnect);
    namespace_341c57b3::add_callback(#"on_player_spawned", &on_player_spawned);
    namespace_341c57b3::function_98df8818(#"hash_6602db5bc859fcd9", &function_55a7ded6);
    namespace_341c57b3::function_98df8818(#"hash_fc0d1250fc48d49", &function_607901f4);
    namespace_341c57b3::function_98df8818(#"hash_b88b6d2e0028e13", &function_abbc84ad);
    namespace_341c57b3::add_callback(#"on_loadout", &function_e2162733);
    namespace_341c57b3::function_98df8818(#"hash_540cddd637f71a5e", &function_c1165a2d);
    namespace_341c57b3::function_98df8818(#"hash_37f96a1d3c57a089", &function_6c95006e);
    namespace_341c57b3::add_callback(#"hash_1f5aa545c7334d3a", &function_9cac835e);
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x2 linked
// Checksum 0xdb9c245, Offset: 0x440
// Size: 0x342
function function_72c32279() {
    if (util::isfirstround()) {
        /#
            println("<unknown string>" + getutc());
            println("<unknown string>" + get_map_name());
            println("<unknown string>" + level.gametype);
            println("<unknown string>" + sessionmodeisprivateonlinegame());
            println("<unknown string>" + sessionmodeissystemlink());
            println("<unknown string>" + isdedicated());
            println("<unknown string>");
        #/
        var_2d1a13b2 = getutc();
        if (isdefined(game.var_341c57b3)) {
            game.var_341c57b3.var_dc73ada2 = var_2d1a13b2;
        }
        matchstart = {};
        matchstart.var_dc73ada2 = var_2d1a13b2;
        matchstart.map.matchstart = hash(util::get_map_name());
        matchstart.game_type.matchstart = hash(level.gametype);
        matchstart.var_c8019fa4.matchstart = sessionmodeisprivateonlinegame();
        matchstart.var_137fea24.matchstart = sessionmodeissystemlink();
        matchstart.var_cc957f27.matchstart = isdedicated();
        matchstart.var_b9e06742.matchstart = function_cd124b7c();
        matchstart.var_4b514c57.matchstart = hash(function_970f37d1());
        matchstart.var_65dcfd4a.matchstart = getdvarint(#"hash_4c63a0806012e032", 0);
        matchstart.var_a14949d8.matchstart = getdvarstring(#"hash_164a9a28628343ef", "");
        matchstart.var_ffa674c.matchstart = gamemodeisarena();
        function_92d1707f(#"hash_2d8b6733f192c69b", matchstart);
    }
    if (util::isroundbased()) {
        if (isdefined(game.var_341c57b3)) {
            game.var_341c57b3.var_29d0de09 = function_f8d53445();
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
            println("<unknown string>" + get_map_name());
            println("<unknown string>" + level.gametype);
            println("<unknown string>" + getutc());
        #/
        var_2d1a13b2 = getutc();
        matchend = {};
        matchend.var_dc73ada2.matchend = 0;
        matchend.var_44be7e07 = var_2d1a13b2;
        matchend.map.matchend = hash(util::get_map_name());
        matchend.game_type.matchend = hash(level.gametype);
        matchend.var_c8019fa4.matchend = sessionmodeisprivateonlinegame();
        matchend.var_137fea24.matchend = sessionmodeissystemlink();
        matchend.var_cc957f27.matchend = isdedicated();
        matchend.player_count.matchend = 0;
        matchend.life_count.matchend = 0;
        matchend.var_b9e06742.matchend = function_cd124b7c();
        matchend.var_4b514c57.matchend = hash(function_970f37d1());
        matchend.var_65dcfd4a.matchend = getdvarint(#"hash_4c63a0806012e032", 0);
        matchend.var_a14949d8.matchend = getdvarstring(#"hash_164a9a28628343ef", "");
        matchend.var_d21c921d.matchend = isdefined(game.stat[#"teamscores"]) ? game.stat[#"teamscores"] : [];
        matchend.var_ffa674c.matchend = gamemodeisarena();
        teams = [];
        foreach (var_3ac79a83, var_4c905113 in level.teams) {
            teams[teams.size] = var_3ac79a83;
        }
        matchend.teams = teams;
        if (isdefined(game.var_341c57b3.var_dc73ada2)) {
            time_seconds = var_2d1a13b2 - game.var_341c57b3.var_dc73ada2;
            /#
                println("<unknown string>" + time_seconds);
            #/
            matchend.var_dc73ada2.matchend = game.var_341c57b3.var_dc73ada2;
        }
        match_duration = function_f8d53445() / 1000;
        /#
            println("<unknown string>" + match_duration);
        #/
        if (isdefined(game.var_341c57b3.player_count)) {
            /#
                println("<unknown string>" + game.var_341c57b3.player_count);
            #/
            matchend.player_count.matchend = game.var_341c57b3.player_count;
        }
        if (isdefined(game.var_341c57b3.life_count)) {
            /#
                println("<unknown string>" + game.var_341c57b3.life_count);
            #/
            matchend.life_count.matchend = game.var_341c57b3.life_count;
        }
        if (function_feface0c()) {
            var_3b7c8f8c = function_6997ae82();
            if (isdefined(var_3b7c8f8c)) {
                matchend.var_c517822c.matchend = isdefined(var_3b7c8f8c.votesforprev) ? var_3b7c8f8c.votesforprev : 0;
                matchend.var_5bdd51ff.matchend = isdefined(var_3b7c8f8c.votesfornext) ? var_3b7c8f8c.votesfornext : 0;
                matchend.var_b1f1e8df.matchend = isdefined(var_3b7c8f8c.votesforrandom) ? var_3b7c8f8c.votesforrandom : 0;
                matchend.var_33f196e0.matchend = isdefined(var_3b7c8f8c.var_bc0c5ed6) ? var_3b7c8f8c.var_bc0c5ed6 : 0;
                matchend.var_c35af8bc.matchend = isdefined(var_3b7c8f8c.var_f6de7b09) ? var_3b7c8f8c.var_f6de7b09 : 0;
                matchend.var_cc8e62ce.matchend = isdefined(var_3b7c8f8c.var_6441c8d) ? var_3b7c8f8c.var_6441c8d : 0;
                matchend.var_467db155.matchend = isdefined(var_3b7c8f8c.var_d6c36da7) ? var_3b7c8f8c.var_d6c36da7 : 0;
                matchend.var_362eb7a8.matchend = isdefined(var_3b7c8f8c.var_a138ab88) ? var_3b7c8f8c.var_a138ab88 : 0;
            }
        }
        matchend.var_bf31c30d.matchend = function_60d95f53();
        function_92d1707f(#"hash_1b52f03009c8c97e", matchend);
        /#
            println("<unknown string>");
        #/
    }
    if (util::isroundbased()) {
        if (isdefined(game.var_341c57b3.var_29d0de09)) {
            roundend = {};
            roundend.var_29d0de09.roundend = game.var_341c57b3.var_29d0de09;
            roundend.var_b0ab3472.roundend = function_f8d53445();
            roundend.var_d21c921d.roundend = isdefined(game.stat[#"teamscores"]) ? game.stat[#"teamscores"] : [];
            roundend.var_e394d7c0.roundend = util::getroundsplayed();
            roundend.overtime_round.roundend = overtime::is_overtime_round();
            function_92d1707f(#"hash_4aeb25514c599057", roundend);
        }
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x2 linked
// Checksum 0x2d28744, Offset: 0xf98
// Size: 0x4d4
function on_player_connect() {
    if (!is_true(self.pers[#"hash_2042ab53f67e07c0"].connected)) {
        /#
            println("<unknown string>" + gettime());
            println("<unknown string>" + getutc());
            println("<unknown string>" + self.name);
        #/
        self.pers[#"weaponstats"] = [];
        if (!isdefined(self.pers[#"hash_2042ab53f67e07c0"])) {
            self.pers[#"hash_2042ab53f67e07c0"] = {};
        }
        self.pers[#"hash_2042ab53f67e07c0"].var_5c64b4dd = getutc();
        self.pers[#"hash_2042ab53f67e07c0"].connected = 1;
        self.pers[#"hash_2042ab53f67e07c0"].var_35a0b8bd = self rank::getrankxp();
        self.pers[#"hash_2042ab53f67e07c0"].var_a1938c60 = self rank::function_5b197def(0);
        self.pers[#"hash_2042ab53f67e07c0"].var_970f034c = self rank::function_5b197def(1);
        self.pers[#"hash_2042ab53f67e07c0"].var_43ab3c14 = self rank::function_5b197def(2);
        self.pers[#"hash_2042ab53f67e07c0"].var_9c4d3f78 = self rank::function_5b197def(3);
        self.pers[#"hash_2042ab53f67e07c0"].var_12173831 = self rank::function_5b197def(5);
        self.pers[#"hash_2042ab53f67e07c0"].var_9f177532 = self rank::getrank();
        self.pers[#"hash_2042ab53f67e07c0"].var_af870172 = self rank::getprestige();
        if (isdefined(game.var_341c57b3.player_count)) {
            self.pers[#"hash_2042ab53f67e07c0"].var_6ba64843 = game.var_341c57b3.player_count;
            game.var_341c57b3.player_count++;
            /#
                println("<unknown string>" + game.var_341c57b3.player_count);
            #/
        } else {
            /#
                println("<unknown string>");
            #/
            return;
        }
        /#
            println("<unknown string>");
        #/
        var_db44b078 = {};
        var_db44b078.var_5c64b4dd.var_db44b078 = self.pers[#"hash_2042ab53f67e07c0"].var_5c64b4dd;
        var_db44b078.var_6ba64843.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_6ba64843) ? self.pers[#"hash_2042ab53f67e07c0"].var_6ba64843 : 0;
        var_db44b078.var_524ab934.var_db44b078 = self function_d40f1a0e();
        var_db44b078.var_504e19f4.var_db44b078 = self function_21f71ac8();
        var_db44b078.var_68441d6f.var_db44b078 = self function_325dc923();
        self function_678f57c8(#"hash_2d1a41c5bbfe18dd", var_db44b078);
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x2 linked
// Checksum 0x3ee6e39e, Offset: 0x1478
// Size: 0x115c
function on_player_disconnect() {
    if (!is_true(self.pers[#"hash_2042ab53f67e07c0"].connected)) {
        return;
    }
    self.pers[#"hash_2042ab53f67e07c0"].connected = 0;
    var_db44b078 = {};
    /#
        println("<unknown string>" + self.name);
        println("<unknown string>" + gettime());
    #/
    var_db44b078.var_5c64b4dd.var_db44b078 = 0;
    var_db44b078.utc_disconnect_time_s.var_db44b078 = 0;
    var_db44b078.var_37b8e421.var_db44b078 = 0;
    var_2d1a13b2 = getutc();
    if (isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_5c64b4dd)) {
        var_db44b078.var_5c64b4dd.var_db44b078 = self.pers[#"hash_2042ab53f67e07c0"].var_5c64b4dd;
        var_db44b078.utc_disconnect_time_s = var_2d1a13b2;
        var_db44b078.var_37b8e421.var_db44b078 = var_2d1a13b2 - var_db44b078.var_5c64b4dd;
    }
    var_db44b078.var_6ba64843.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_6ba64843) ? self.pers[#"hash_2042ab53f67e07c0"].var_6ba64843 : 0;
    if (isdefined(self.pers)) {
        var_db44b078.score.var_db44b078 = isdefined(self.pers[#"score"]) ? self.pers[#"score"] : 0;
        var_db44b078.kills.var_db44b078 = isdefined(self.pers[#"kills"]) ? self.pers[#"kills"] : 0;
        var_db44b078.deaths.var_db44b078 = isdefined(self.pers[#"deaths"]) ? self.pers[#"deaths"] : 0;
        var_db44b078.headshots.var_db44b078 = isdefined(self.pers[#"headshots"]) ? self.pers[#"headshots"] : 0;
        var_db44b078.assists.var_db44b078 = isdefined(self.pers[#"assists"]) ? self.pers[#"assists"] : 0;
        var_db44b078.damage_dealt.var_db44b078 = isdefined(self.pers[#"damagedone"]) ? self.pers[#"damagedone"] : 0;
        var_db44b078.suicides.var_db44b078 = isdefined(self.pers[#"suicides"]) ? self.pers[#"suicides"] : 0;
        var_db44b078.shots.var_db44b078 = isdefined(self.pers[#"shotsfired"]) ? self.pers[#"shotsfired"] : 0;
        var_db44b078.hits.var_db44b078 = isdefined(self.pers[#"shotshit"]) ? self.pers[#"shotshit"] : 0;
        var_db44b078.time_played_alive.var_db44b078 = isdefined(self.pers[#"time_played_alive"]) ? self.pers[#"time_played_alive"] : 0;
        var_db44b078.var_ef5017c7.var_db44b078 = isdefined(self.pers[#"best_kill_streak"]) ? self.pers[#"best_kill_streak"] : 0;
        var_db44b078.multikills.var_db44b078 = isdefined(self.pers[#"hash_104ec9727c3d4ef7"]) ? self.pers[#"hash_104ec9727c3d4ef7"] : 0;
        var_db44b078.var_fc1e4ef3.var_db44b078 = isdefined(self.pers[#"highestmultikill"]) ? self.pers[#"highestmultikill"] : 0;
        var_db44b078.ekia.var_db44b078 = isdefined(self.pers[#"ekia"]) ? self.pers[#"ekia"] : 0;
        var_db44b078.team.var_db44b078 = hash(isdefined(self.pers[#"team"]) ? self.pers[#"team"] : "");
        var_db44b078.var_b0689e83.var_db44b078 = isdefined(self.pers[#"hash_766a818213440d53"]) ? self.pers[#"hash_766a818213440d53"] : 0;
        timeplayed = isdefined(self.timeplayed[#"total"]) ? self.timeplayed[#"total"] : 0;
        if (timeplayed >= 120) {
            var_db44b078.var_4f85ae57.var_db44b078 = int(float(1000) * float(var_db44b078.var_b0689e83 - var_db44b078.deaths - var_db44b078.suicides) / float(timeplayed) / float(60));
            var_db44b078.var_60e624ae.var_db44b078 = int(float(1000) * float(var_db44b078.kills - var_db44b078.deaths - var_db44b078.suicides) / float(timeplayed) / float(60));
            var_db44b078.var_664364c7.var_db44b078 = int(int(var_db44b078.score) / int(timeplayed / 60));
        } else {
            var_db44b078.var_4f85ae57.var_db44b078 = 0;
            var_db44b078.var_60e624ae.var_db44b078 = 0;
            var_db44b078.var_664364c7.var_db44b078 = 0;
        }
        var_db44b078.var_62eb1d70.var_db44b078 = isdefined(self.pers[#"hash_26948141ff5e29a3"]) ? self.pers[#"hash_26948141ff5e29a3"] : 0;
        /#
            println("<unknown string>" + var_db44b078.var_b0689e83);
        #/
    }
    var_db44b078.var_35a0b8bd.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_35a0b8bd) ? self.pers[#"hash_2042ab53f67e07c0"].var_35a0b8bd : 0;
    var_db44b078.var_f29581ce.var_db44b078 = self rank::getrankxp();
    var_db44b078.var_a1938c60.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_a1938c60) ? self.pers[#"hash_2042ab53f67e07c0"].var_a1938c60 : 0;
    var_db44b078.var_7ddf8420.var_db44b078 = self rank::function_5b197def(0);
    var_db44b078.var_970f034c.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_970f034c) ? self.pers[#"hash_2042ab53f67e07c0"].var_970f034c : 0;
    var_db44b078.var_b7d93a80.var_db44b078 = self rank::function_5b197def(1);
    var_db44b078.var_43ab3c14.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_43ab3c14) ? self.pers[#"hash_2042ab53f67e07c0"].var_43ab3c14 : 0;
    var_db44b078.var_460c9ce.var_db44b078 = self rank::function_5b197def(2);
    var_db44b078.var_9c4d3f78.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_9c4d3f78) ? self.pers[#"hash_2042ab53f67e07c0"].var_9c4d3f78 : 0;
    var_db44b078.var_5f67b464.var_db44b078 = self rank::function_5b197def(3);
    var_db44b078.var_12173831.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_12173831) ? self.pers[#"hash_2042ab53f67e07c0"].var_12173831 : 0;
    var_db44b078.var_c4d676ee.var_db44b078 = self rank::function_5b197def(5);
    var_db44b078.var_9f177532.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_9f177532) ? self.pers[#"hash_2042ab53f67e07c0"].var_9f177532 : 0;
    var_db44b078.var_735f5996.var_db44b078 = self rank::getrank();
    var_db44b078.var_af870172.var_db44b078 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_af870172) ? self.pers[#"hash_2042ab53f67e07c0"].var_af870172 : 0;
    var_db44b078.var_7d032a98.var_db44b078 = self rank::getprestige();
    var_db44b078.objectives.var_db44b078 = isdefined(self.objectives) ? self.objectives : 0;
    if (!is_true(level.disablestattracking)) {
        var_db44b078.var_9ffd4086.var_db44b078 = self stats::get_stat_global(#"kills");
        var_db44b078.var_56c22769.var_db44b078 = self stats::get_stat_global(#"deaths");
        var_db44b078.var_3c57e59.var_db44b078 = self stats::get_stat_global(#"wins");
        var_db44b078.var_e42ad7c9.var_db44b078 = self stats::get_stat_global(#"losses");
        var_db44b078.var_270e8e42.var_db44b078 = self stats::get_stat_global(#"ties");
        var_db44b078.var_4c4d425a.var_db44b078 = self stats::get_stat_global(#"hits");
        var_db44b078.var_5197016d.var_db44b078 = self stats::get_stat_global(#"misses");
        var_db44b078.var_359ee86a.var_db44b078 = self stats::get_stat_global(#"time_played_total");
        var_db44b078.var_4ab9220a.var_db44b078 = self stats::get_stat_global(#"score");
    }
    var_db44b078.operator.var_db44b078 = 0;
    role = self player_role::get();
    if (sessionmodeismultiplayergame() || sessionmodeiswarzonegame()) {
        var_a791abd1 = function_b14806c6(role, currentsessionmode());
        var_db44b078.operator.var_db44b078 = isdefined(var_a791abd1) ? var_a791abd1 : 0;
        var_db44b078.var_887376f4.var_db44b078 = self function_b568258e();
    }
    var_db44b078.var_161a9fc9.var_db44b078 = 0;
    var_db44b078.var_a3ba1678.var_db44b078 = #"tie";
    if (!match::get_flag("tie")) {
        if (match::function_a2b53e17(self)) {
            var_db44b078.var_a3ba1678.var_db44b078 = #"win";
        } else {
            var_db44b078.var_a3ba1678.var_db44b078 = #"loss";
        }
    }
    var_a38b89a4 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].life.var_4f7ff485) ? self.pers[#"hash_2042ab53f67e07c0"].life.var_4f7ff485 : -1;
    lifeindex = isdefined(self.pers[#"hash_2042ab53f67e07c0"].life.var_2824e826) ? self.pers[#"hash_2042ab53f67e07c0"].life.var_2824e826 : -1;
    if (var_a38b89a4 != lifeindex) {
        data = {};
        data.victim.data = self;
        data.attacker = undefined;
        data.weapon = undefined;
        data.victimweapon.data = self.currentweapon;
        data.var_d18366fd.data = 1;
        var_db44b078.var_161a9fc9.var_db44b078 = 1;
        if (isalive(self)) {
            data.died.data = 0;
        } else {
            data.died.data = 1;
        }
        if (isdefined(self.pers[#"hash_2042ab53f67e07c0"].life)) {
            self.pers[#"hash_2042ab53f67e07c0"].life.var_75cd3884 = function_f8d53445();
        }
        function_607901f4(data);
    }
    self function_678f57c8(#"hash_4a80e3ea4f031ba4", var_db44b078);
    self function_21b451d5(var_db44b078.score, var_db44b078.kills, var_db44b078.deaths, var_db44b078.headshots, var_db44b078.assists, var_db44b078.suicides, var_db44b078.var_35a0b8bd, var_db44b078.var_f29581ce, var_db44b078.var_9f177532, var_db44b078.var_735f5996, var_db44b078.time_played_alive);
    self function_792e6d18();
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x2 linked
// Checksum 0xb644cdbc, Offset: 0x25e0
// Size: 0x476
function on_player_spawned() {
    if (!isdefined(self.pers[#"hash_2042ab53f67e07c0"])) {
        self.pers[#"hash_2042ab53f67e07c0"] = {};
    }
    self.pers[#"hash_2042ab53f67e07c0"].life = {};
    self.pers[#"hash_2042ab53f67e07c0"].life.var_62c7b24e = function_f8d53445();
    self.pers[#"hash_2042ab53f67e07c0"].life.spawn_origin = self.origin;
    self.pers[#"hash_2042ab53f67e07c0"].life.var_cc189f4f = isdefined(self.pers[#"score"]) ? self.pers[#"score"] : 0;
    self.pers[#"hash_2042ab53f67e07c0"].life.var_a04d3223 = isdefined(self.pers[#"assists"]) ? self.pers[#"assists"] : 0;
    self.pers[#"hash_2042ab53f67e07c0"].life.var_75f84f99 = isdefined(self.pers[#"kills"]) ? self.pers[#"kills"] : 0;
    self.pers[#"hash_2042ab53f67e07c0"].life.var_3ba59e4e = [];
    if (isdefined(game.var_341c57b3.life_count)) {
        self.pers[#"hash_2042ab53f67e07c0"].life.var_2824e826 = game.var_341c57b3.life_count;
        game.var_341c57b3.life_count++;
        /#
            println("<unknown string>" + self.name);
            println("<unknown string>" + game.var_341c57b3.life_count);
        #/
    }
    /#
        println("<unknown string>");
    #/
    if (!isdefined(self.pers[#"hash_2042ab53f67e07c0"].var_9c9223d5)) {
        var_234012ff = {#var_887376f4:"", #operator:""};
        var_8efad2ca = self player_role::get();
        if (sessionmodeismultiplayergame() || sessionmodeiswarzonegame()) {
            var_a791abd1 = function_b14806c6(isdefined(var_8efad2ca) ? var_8efad2ca : 0, currentsessionmode());
            var_234012ff.operator.var_234012ff = isdefined(var_a791abd1) ? var_a791abd1 : "";
            var_234012ff.var_887376f4.var_234012ff = self function_b568258e();
        }
        self function_678f57c8(#"hash_2858113be21419d2", var_234012ff);
        self.pers[#"hash_2042ab53f67e07c0"].var_9c9223d5 = 1;
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
    namespace_341c57b3::function_f397069a();
    if (var_a7dd086f && isdefined(self)) {
        var_a38b89a4 = isdefined(self.pers[#"hash_2042ab53f67e07c0"].life.var_4f7ff485) ? self.pers[#"hash_2042ab53f67e07c0"].life.var_4f7ff485 : -1;
        lifeindex = isdefined(self.pers[#"hash_2042ab53f67e07c0"].life.var_2824e826) ? self.pers[#"hash_2042ab53f67e07c0"].life.var_2824e826 : -1;
        if (var_a38b89a4 != lifeindex) {
            data = {};
            data.victim.data = self;
            data.attacker = undefined;
            data.weapon = undefined;
            data.victimweapon.data = self.currentweapon;
            data.died.data = 0;
            if (isdefined(self.pers[#"hash_2042ab53f67e07c0"].life)) {
                self.pers[#"hash_2042ab53f67e07c0"].life.var_75cd3884 = var_87e50fa8;
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
    if (isdefined(data.victim.pers[#"hash_2042ab53f67e07c0"].life)) {
        data.victim.pers[#"hash_2042ab53f67e07c0"].life.var_75cd3884 = function_f8d53445();
    }
    if (isdefined(data.victim.var_c8836f02)) {
        data.var_cc4bc1dd.data = arraycopy(data.victim.var_c8836f02);
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
    var_37d8e38f = {};
    var_37d8e38f.died = died;
    var_37d8e38f.var_161a9fc9.var_37d8e38f = isdefined(data.var_d18366fd) ? data.var_d18366fd : 0;
    var_37d8e38f.var_62c7b24e.var_37d8e38f = 0;
    var_37d8e38f.var_75cd3884.var_37d8e38f = 0;
    var_37d8e38f.var_39872854.var_37d8e38f = 0;
    if (isdefined(data.victim.pers[#"hash_2042ab53f67e07c0"].life.var_62c7b24e)) {
        var_37d8e38f.var_62c7b24e.var_37d8e38f = data.victim.pers[#"hash_2042ab53f67e07c0"].life.var_62c7b24e;
        if (isdefined(data.victim.pers[#"hash_2042ab53f67e07c0"].life.var_75cd3884)) {
            var_37d8e38f.var_75cd3884.var_37d8e38f = data.victim.pers[#"hash_2042ab53f67e07c0"].life.var_75cd3884;
            var_37d8e38f.var_39872854.var_37d8e38f = var_37d8e38f.var_75cd3884 - var_37d8e38f.var_62c7b24e;
        }
    }
    var_37d8e38f.var_5b58152b.var_37d8e38f = isdefined(data.victim.var_6fd69072) ? data.victim.var_6fd69072 : 0;
    var_37d8e38f.var_41d1b088.var_37d8e38f = isdefined(data.victim.var_8cb03411) ? data.victim.var_8cb03411 : 0;
    var_37d8e38f.var_f079a94e.var_37d8e38f = 0;
    if (squad_spawn::function_d072f205()) {
        var_37d8e38f.var_f079a94e.var_37d8e38f = 1;
    }
    var_37d8e38f.var_816b59c6.var_37d8e38f = isdefined(data.victim.spawn.var_a9914487) ? data.victim.spawn.var_a9914487 : 0;
    var_37d8e38f.var_d5eb9cb8.var_37d8e38f = isdefined(data.victim.spawn.var_4db23b) ? data.victim.spawn.var_4db23b : 0;
    var_37d8e38f.team.var_37d8e38f = data.victim.team;
    var_37d8e38f.var_2824e826.var_37d8e38f = -1;
    if (isdefined(data.victim.pers[#"hash_2042ab53f67e07c0"].life.var_2824e826)) {
        var_37d8e38f.var_2824e826.var_37d8e38f = data.victim.pers[#"hash_2042ab53f67e07c0"].life.var_2824e826;
    }
    if (isdefined(data.victim.pers[#"hash_2042ab53f67e07c0"].life.spawn_origin)) {
        var_37d8e38f.var_8b82b087.var_37d8e38f = data.victim.pers[#"hash_2042ab53f67e07c0"].life.spawn_origin[0];
        var_37d8e38f.var_9d3f5400.var_37d8e38f = data.victim.pers[#"hash_2042ab53f67e07c0"].life.spawn_origin[1];
        var_37d8e38f.var_ab1e6fbe.var_37d8e38f = data.victim.pers[#"hash_2042ab53f67e07c0"].life.spawn_origin[2];
    }
    var_37d8e38f.var_e399fbd4.var_37d8e38f = !data.victim gamepadusedlast();
    var_37d8e38f.var_915c82d0.var_37d8e38f = -1;
    if (died) {
        victimorigin = isdefined(data.victimorigin) ? data.victimorigin : data.victim.origin;
        var_37d8e38f.var_a8ffa14f.var_37d8e38f = victimorigin[0];
        var_37d8e38f.var_e6a11c91.var_37d8e38f = victimorigin[1];
        var_37d8e38f.var_d4717832.var_37d8e38f = victimorigin[2];
        var_5fceefd4 = isdefined(data.var_5fceefd4) ? data.var_5fceefd4 : data.victim getplayerangles();
        var_37d8e38f.var_7c125af5.var_37d8e38f = var_5fceefd4[0];
        var_37d8e38f.var_8d9bfe08.var_37d8e38f = var_5fceefd4[1];
        var_37d8e38f.var_506d83ac.var_37d8e38f = var_5fceefd4[2];
        var_37d8e38f.var_873aa898.var_37d8e38f = hash(isdefined(data.victimstance) ? data.victimstance : data.victim getstance());
        var_37d8e38f.means_of_death.var_37d8e38f = hash(isdefined(data.smeansofdeath) ? data.smeansofdeath : "");
        var_37d8e38f.hit_location.var_37d8e38f = hash(isdefined(data.shitloc) ? data.shitloc : "");
        var_37d8e38f.var_144a7f3.var_37d8e38f = data.var_f0b3c772;
        if (isdefined(data.victimweapon)) {
            var_37d8e38f.victim_weapon.var_37d8e38f = data.victimweapon.name;
            var_37d8e38f.var_fcdf958f.var_37d8e38f = function_8d2c5f27(isdefined(data.victimweapon.attachments) ? data.victimweapon.attachments : []);
        }
        if (isdefined(data.attacker) && isplayer(data.attacker)) {
            var_971d14fd = isdefined(data.attackerorigin) ? data.attackerorigin : data.attacker.origin;
            var_83634238 = isdefined(data.var_83634238) ? data.var_83634238 : data.attacker getplayerangles();
            var_37d8e38f.var_47f53c15.var_37d8e38f = var_971d14fd[0];
            var_37d8e38f.var_1a44e0b5.var_37d8e38f = var_971d14fd[1];
            var_37d8e38f.var_ed820730.var_37d8e38f = var_971d14fd[2];
            var_37d8e38f.var_f202c401.var_37d8e38f = var_83634238[0];
            var_37d8e38f.var_72c6458a.var_37d8e38f = var_83634238[1];
            var_37d8e38f.var_840c6816.var_37d8e38f = var_83634238[2];
            var_37d8e38f.var_4d858e3d.var_37d8e38f = hash(isdefined(data.attackerstance) ? data.attackerstance : "");
            var_37d8e38f.var_1ec9deac.var_37d8e38f = data.attacker playerads();
            var_37d8e38f.var_11737fc2.var_37d8e38f = util::within_fov(var_971d14fd, var_83634238, data.victimorigin, 0.5);
            var_37d8e38f.var_cc3e142b.var_37d8e38f = util::within_fov(data.victimorigin, var_5fceefd4, var_971d14fd, 0.5);
            var_37d8e38f.var_67fadda6.var_37d8e38f = !data.attacker gamepadusedlast();
            var_37d8e38f.var_915c82d0.var_37d8e38f = isdefined(data.attacker.pers[#"hash_2042ab53f67e07c0"].life.var_2824e826) ? data.attacker.pers[#"hash_2042ab53f67e07c0"].life.var_2824e826 : -1;
            var_37d8e38f.var_8e368e7c.var_37d8e38f = isdefined(data.attacker.pers[#"hash_2042ab53f67e07c0"].var_ee8d3324) ? data.attacker.pers[#"hash_2042ab53f67e07c0"].var_ee8d3324 : 0;
        }
        if (isdefined(data.weapon)) {
            var_37d8e38f.var_ff979809.var_37d8e38f = data.weapon.name;
            weapon_attachments = data.weapon.attachments;
            if (weapon_attachments.size > 0) {
                var_4e00795d = [];
                for (i = 0; i < weapon_attachments.size; i++) {
                    var_4e00795d[i] = hash(weapon_attachments[i]);
                }
                var_37d8e38f.var_f5205237 = var_4e00795d;
            }
        }
    }
    var_37d8e38f.var_5bf208a0.var_37d8e38f = 0;
    if (isdefined(data.victim.class_num)) {
        if (!isdefined(data.victim.pers[#"hash_2042ab53f67e07c0"].var_728f5d7d)) {
            data.victim.pers[#"hash_2042ab53f67e07c0"].var_728f5d7d = [];
        }
        var_6165a2d8 = data.victim.pers[#"hash_2042ab53f67e07c0"].var_ee8d3324;
        if (isdefined(var_6165a2d8)) {
            var_75000956 = data.victim.pers[#"hash_2042ab53f67e07c0"].var_728f5d7d;
            var_1ab1ae57 = 0;
            for (i = 0; i < var_75000956.size; i++) {
                if (var_75000956[i] == var_6165a2d8) {
                    var_1ab1ae57 = 1;
                    break;
                }
            }
            if (!var_1ab1ae57) {
                var_75000956[var_75000956.size] = var_6165a2d8;
                /#
                    println("<unknown string>" + var_6165a2d8);
                #/
                function_6d57b52a(data.victim, var_6165a2d8, data.var_cc4bc1dd);
            }
            var_37d8e38f.var_5bf208a0 = var_6165a2d8;
        }
    }
    var_37d8e38f.var_123cae71.var_37d8e38f = isdefined(data.victim.pickedupweapons[data.victimweapon]);
    var_37d8e38f.var_8c6afa1f.var_37d8e38f = isdefined(data.attacker.pickedupweapons[data.weapon]);
    if (!isdefined(data.victim.pers[#"score"])) {
        data.victim.pers[#"score"] = 0;
    }
    var_37d8e38f.var_2769fb6e.var_37d8e38f = data.victim.pers[#"score"] - data.victim.pers[#"hash_2042ab53f67e07c0"].life.var_cc189f4f;
    if (!isdefined(data.victim.pers[#"assists"])) {
        data.victim.pers[#"assists"] = 0;
    }
    var_37d8e38f.assists.var_37d8e38f = data.victim.pers[#"assists"] - data.victim.pers[#"hash_2042ab53f67e07c0"].life.var_a04d3223;
    if (!isdefined(data.victim.pers[#"kills"])) {
        data.victim.pers[#"kills"] = 0;
    }
    var_37d8e38f.kills.var_37d8e38f = data.victim.pers[#"kills"] - data.victim.pers[#"hash_2042ab53f67e07c0"].life.var_75f84f99;
    var_37d8e38f.var_1af2a81e.var_37d8e38f = data.victim.pers[#"hash_2042ab53f67e07c0"].life.var_3ba59e4e;
    /#
        println("<unknown string>" + var_37d8e38f.var_2824e826);
    #/
    if (isdefined(data.attacker) && isplayer(data.attacker)) {
        data.victim function_678f57c8(#"hash_56b3bb4a34717783", var_37d8e38f, #"attacker", data.attacker);
    } else {
        data.victim function_678f57c8(#"hash_56b3bb4a34717783", var_37d8e38f);
    }
    data.victim.pers[#"hash_2042ab53f67e07c0"].life.var_4f7ff485 = var_37d8e38f.var_2824e826;
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 3, eflags: 0x2 linked
// Checksum 0x48708ecc, Offset: 0x3d80
// Size: 0x6f4
function function_6d57b52a(player, var_6165a2d8, var_cc4bc1dd) {
    var_2153b0fe = {};
    var_2153b0fe.var_5bf208a0 = var_6165a2d8;
    primaryweapon = player loadout::function_18a77b37("primary");
    if (isdefined(primaryweapon)) {
        var_2153b0fe.primary_weapon.var_2153b0fe = primaryweapon.name;
        var_2153b0fe.var_70eb2c9d.var_2153b0fe = function_8d2c5f27(isdefined(primaryweapon.attachments) ? primaryweapon.attachments : []);
        var_df9e1af5 = player function_e601ff48(player.class_num, 0);
        var_ff1e2369 = function_69031255(primaryweapon, var_df9e1af5);
        var_2153b0fe.var_4be85015.var_2153b0fe = isdefined(var_ff1e2369.var_a6b3fd45) ? var_ff1e2369.var_a6b3fd45 : 0;
        primaryweaponoptions = player function_ade49959(primaryweapon);
        var_6df37b82 = getcamoindex(primaryweaponoptions);
        var_cc073e42 = function_6f89999e(var_6df37b82);
        var_2153b0fe.var_5eb8cc7c.var_2153b0fe = isdefined(var_cc073e42) ? var_cc073e42 : 0;
    }
    secondaryweapon = player loadout::function_18a77b37("secondary");
    if (isdefined(secondaryweapon)) {
        var_2153b0fe.secondary_weapon.var_2153b0fe = secondaryweapon.name;
        var_2153b0fe.var_85aac3ff.var_2153b0fe = function_8d2c5f27(isdefined(secondaryweapon.attachments) ? secondaryweapon.attachments : []);
        var_48d617f1 = player function_e601ff48(player.class_num, 14);
        var_96a1671e = function_69031255(secondaryweapon, var_48d617f1);
        var_2153b0fe.var_61e93312.var_2153b0fe = isdefined(var_96a1671e.var_a6b3fd45) ? var_96a1671e.var_a6b3fd45 : 0;
        secondaryweaponoptions = player function_ade49959(secondaryweapon);
        var_b65500f8 = getcamoindex(secondaryweaponoptions);
        var_e1e3c149 = function_6f89999e(var_b65500f8);
        var_2153b0fe.var_a656d9c6.var_2153b0fe = isdefined(var_e1e3c149) ? var_e1e3c149 : 0;
    }
    primarygrenade = player loadout::function_18a77b37("primarygrenade");
    if (isdefined(primarygrenade)) {
        var_2153b0fe.primary_grenade.var_2153b0fe = primarygrenade.name;
    }
    secondarygrenade = player loadout::function_18a77b37("secondarygrenade");
    if (isdefined(secondarygrenade)) {
        var_2153b0fe.var_68f5c0ed.var_2153b0fe = secondarygrenade.name;
    }
    fieldupgrade = player loadout::function_18a77b37("specialgrenade");
    if (isdefined(fieldupgrade)) {
        var_2153b0fe.field_upgrade.var_2153b0fe = fieldupgrade.name;
    }
    if (isdefined(var_cc4bc1dd)) {
        var_2153b0fe.perks.var_2153b0fe = [];
        switch (var_cc4bc1dd.size) {
        case 6:
        case #"hash_defdefdefdefdef0":
            var_2153b0fe.perks[5] = var_cc4bc1dd[5].namehash;
        case 5:
            var_2153b0fe.perks[4] = var_cc4bc1dd[4].namehash;
        case 4:
            var_2153b0fe.perks[3] = var_cc4bc1dd[3].namehash;
        case 3:
            var_2153b0fe.perks[2] = var_cc4bc1dd[2].namehash;
        case 2:
            var_2153b0fe.perks[1] = var_cc4bc1dd[1].namehash;
        case 1:
            var_2153b0fe.perks[0] = var_cc4bc1dd[0].namehash;
        case 0:
            break;
        }
    }
    wildcards = player function_6f2c0492(player.class_num);
    if (isdefined(wildcards)) {
        var_2153b0fe.wildcards.var_2153b0fe = [];
        switch (wildcards.size) {
        case 3:
        case #"hash_defdefdefdefdef0":
            var_2153b0fe.wildcards[2] = wildcards[2];
        case 2:
            var_2153b0fe.wildcards[1] = wildcards[1];
        case 1:
            var_2153b0fe.wildcards[0] = wildcards[0];
        case 0:
            break;
        }
    }
    killstreaks = player.killstreak;
    if (isdefined(killstreaks)) {
        var_2153b0fe.killstreaks.var_2153b0fe = [];
        switch (killstreaks.size) {
        case 3:
        case #"hash_defdefdefdefdef0":
            var_2153b0fe.killstreaks[2] = killstreaks[2];
        case 2:
            var_2153b0fe.killstreaks[1] = killstreaks[1];
        case 1:
            var_2153b0fe.killstreaks[0] = killstreaks[0];
        case 0:
            break;
        }
    }
    player function_678f57c8(#"hash_46722c5c0abe049f", var_2153b0fe);
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
        if (!isdefined(data.player.pers[#"hash_2042ab53f67e07c0"].var_68ef7250)) {
            return;
        }
        key = data.weapon.name + data.player.pers[#"hash_2042ab53f67e07c0"].var_68ef7250;
        if (!isdefined(data.player.pers[#"weaponstats"][key])) {
            if (data.player.pers[#"weaponstats"].size >= 5) {
                data.player function_792e6d18();
                data.player.pers[#"weaponstats"] = [];
            }
            data.player.pers[#"weaponstats"][key] = {#var_6165a2d8:data.player.pers[#"hash_2042ab53f67e07c0"].var_ee8d3324, #weapon:data.weapon, #stats:[]};
        }
        var_ae601515 = data.player.pers[#"weaponstats"][key].stats;
        if (!isdefined(var_ae601515[data.statname])) {
            var_ae601515[data.statname] = 0;
        }
        var_ae601515[data.statname] = var_ae601515[data.statname] + data.value;
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x2 linked
// Checksum 0x81e08425, Offset: 0x46c8
// Size: 0x3d8
function function_792e6d18() {
    foreach (weaponinfo in self.pers[#"weaponstats"]) {
        var_a0af8e8f = getbaseweaponitemindex(weaponinfo.weapon);
        weaponstats = {#var_2b43b7a2:isdefined(weaponinfo.stats[#"hash_30756c193f03f009"]) ? weaponinfo.stats[#"hash_30756c193f03f009"] : 0, #var_fbed9c9c:(isdefined(self getcurrentgunrank(var_a0af8e8f)) ? self getcurrentgunrank(var_a0af8e8f) : 0) + 1, #var_9239f70f:isdefined(weaponinfo.stats[#"xpearned"]) ? weaponinfo.stats[#"xpearned"] : 0, #time_used_s:isdefined(weaponinfo.stats[#"timeused"]) ? weaponinfo.stats[#"timeused"] : 0, #var_7e2968cc:isdefined(weaponinfo.stats[#"deathsduringuse"]) ? weaponinfo.stats[#"deathsduringuse"] : 0, #headshots:isdefined(weaponinfo.stats[#"headshots"]) ? weaponinfo.stats[#"headshots"] : 0, #kills:isdefined(weaponinfo.stats[#"kills"]) ? weaponinfo.stats[#"kills"] : 0, #hits:isdefined(weaponinfo.stats[#"hits"]) ? weaponinfo.stats[#"hits"] : 0, #shots:isdefined(weaponinfo.stats[#"shots"]) ? weaponinfo.stats[#"shots"] : 0, #var_5bf208a0:weaponinfo.var_6165a2d8, #weapon_name:weaponinfo.weapon.name};
        self function_678f57c8(#"hash_71e24083d5b3f555", weaponstats);
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 0, eflags: 0x2 linked
// Checksum 0xed7e781d, Offset: 0x4aa8
// Size: 0xc6
function function_e2162733() {
    var_ee8d3324 = self function_13f24803(self.class_num);
    self.pers[#"hash_2042ab53f67e07c0"].var_ee8d3324 = var_ee8d3324;
    if (isdefined(var_ee8d3324)) {
        self.pers[#"hash_2042ab53f67e07c0"].var_68ef7250 = "+loadoutChecksum" + string(var_ee8d3324);
    } else {
        self.pers[#"hash_2042ab53f67e07c0"].var_68ef7250 = undefined;
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 1, eflags: 0x2 linked
// Checksum 0x7ca020c, Offset: 0x4b78
// Size: 0x144
function function_c1165a2d(data) {
    var_e3b99e34 = {};
    var_e3b99e34.var_48672d70.var_e3b99e34 = data.eventtype;
    var_e3b99e34.var_87a3e584.var_e3b99e34 = isdefined(data.var_51b1d48e) ? data.var_51b1d48e : function_f8d53445();
    if (isdefined(data.player.origin)) {
        var_e3b99e34.var_39c6001a.var_e3b99e34 = data.player.origin[0];
        var_e3b99e34.var_71986fbe.var_e3b99e34 = data.player.origin[1];
        var_e3b99e34.var_efd8ec65.var_e3b99e34 = data.player.origin[2];
    }
    if (isdefined(data.player)) {
        function_92d1707f(#"hash_16b85b3fe51a7bd4", var_e3b99e34, #"player", data.player);
    } else {
        function_92d1707f(#"hash_16b85b3fe51a7bd4", var_e3b99e34);
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 1, eflags: 0x2 linked
// Checksum 0xd8ba40ce, Offset: 0x4cc8
// Size: 0x6a
function function_6c95006e(data) {
    if (isdefined(data.var_bdc4bbd2)) {
        var_3ba59e4e = data.player.pers[#"hash_2042ab53f67e07c0"].life.var_3ba59e4e;
        var_3ba59e4e[var_3ba59e4e.size] = data.var_bdc4bbd2;
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 1, eflags: 0x2 linked
// Checksum 0x10f010d5, Offset: 0x4d40
// Size: 0x9c
function function_9cac835e(data) {
    if (isdefined(data.weapon)) {
        function_abbc84ad({#weaponpickedup:0, #value:1, #statname:#"hash_30756c193f03f009", #weapon:data.weapon, #player:self});
    }
}

// Namespace namespace_a77a81df/namespace_a77a81df
// Params 1, eflags: 0x2 linked
// Checksum 0x4346a1e3, Offset: 0x4de8
// Size: 0x60
function function_8d2c5f27(array) {
    var_67a93196 = [];
    for (i = 0; i < array.size; i++) {
        var_67a93196[i] = hash(array[i]);
    }
    return var_67a93196;
}

