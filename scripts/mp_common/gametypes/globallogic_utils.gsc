// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\gametypes\round.gsc;
#using scripts\mp_common\gametypes\hud_message.gsc;
#using scripts\mp_common\gametypes\hostmigration.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using script_7f6cd71c43c45c57;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\hud_message_shared.gsc;
#using scripts\core_common\hostmigration_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace globallogic_utils;

// Namespace globallogic_utils/globallogic_utils
// Params 2, eflags: 0x0
// Checksum 0x451e158c, Offset: 0xf8
// Size: 0xba
function is_winner(outcome, team_or_player) {
    if (isplayer(team_or_player)) {
        if (outcome.players.size && outcome.players[0] == team_or_player) {
            return true;
        }
        if (isdefined(outcome.team) && outcome.team == team_or_player.team) {
            return true;
        }
    } else if (isdefined(outcome.team) && outcome.team == team_or_player) {
        return true;
    }
    return false;
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x0
// Checksum 0xd193563d, Offset: 0x1c0
// Size: 0xb8
function testshock() {
    self endon(#"death", #"disconnect");
    for (;;) {
        wait(3);
        numshots = randomint(6);
        for (i = 0; i < numshots; i++) {
            iprintlnbold(numshots);
            self shellshock(#"frag_grenade_mp", 0.2);
            wait(0.1);
        }
    }
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x2 linked
// Checksum 0x61731ce2, Offset: 0x280
// Size: 0x10e
function timeuntilroundend() {
    if (level.gameended) {
        timepassed = float(gettime() - level.gameendtime) / 1000;
        timeremaining = level.roundenddelay[3] - timepassed;
        if (timeremaining < 0) {
            return 0;
        }
        return timeremaining;
    }
    if (level.timelimit <= 0) {
        return undefined;
    }
    if (!isdefined(level.starttime)) {
        return undefined;
    }
    timepassed = float(gettimepassed() - level.starttime) / 1000;
    timeremaining = level.timelimit * 60 - timepassed;
    return timeremaining + level.roundenddelay[3];
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x2 linked
// Checksum 0x3dc9a282, Offset: 0x398
// Size: 0x3c
function gettimeremaining() {
    return level.timelimit * int(60 * 1000) - gettimepassed();
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x2 linked
// Checksum 0xdd42a5ff, Offset: 0x3e0
// Size: 0x44
function registerpostroundevent(eventfunc) {
    if (!isdefined(level.postroundevents)) {
        level.postroundevents = [];
    }
    level.postroundevents[level.postroundevents.size] = eventfunc;
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x2 linked
// Checksum 0x5de604a0, Offset: 0x430
// Size: 0x56
function executepostroundevents() {
    if (!isdefined(level.postroundevents)) {
        return;
    }
    for (i = 0; i < level.postroundevents.size; i++) {
        [[ level.postroundevents[i] ]]();
    }
}

// Namespace globallogic_utils/globallogic_utils
// Params 3, eflags: 0x0
// Checksum 0xa13b8664, Offset: 0x490
// Size: 0x46
function getvalueinrange(value, minvalue, maxvalue) {
    if (value > maxvalue) {
        return maxvalue;
    }
    if (value < minvalue) {
        return minvalue;
    }
    return value;
}

/#

    // Namespace globallogic_utils/globallogic_utils
    // Params 0, eflags: 0x0
    // Checksum 0xf6f4f7e9, Offset: 0x4e0
    // Size: 0x2a8
    function assertproperplacement() {
        numplayers = level.placement[#"all"].size;
        if (level.teambased) {
            for (i = 0; i < numplayers - 1; i++) {
                if (level.placement[#"all"][i].score < level.placement[#"all"][i + 1].score) {
                    println("<unknown string>");
                    for (j = 0; j < numplayers; j++) {
                        player = level.placement[#"all"][j];
                        println("<unknown string>" + j + "<unknown string>" + player.name + "<unknown string>" + player.score);
                    }
                    assertmsg("<unknown string>");
                    break;
                }
            }
            return;
        }
        for (i = 0; i < numplayers - 1; i++) {
            if (level.placement[#"all"][i].pointstowin < level.placement[#"all"][i + 1].pointstowin) {
                println("<unknown string>");
                for (j = 0; j < numplayers; j++) {
                    player = level.placement[#"all"][j];
                    println("<unknown string>" + j + "<unknown string>" + player.name + "<unknown string>" + player.pointstowin);
                }
                assertmsg("<unknown string>");
                break;
            }
        }
    }

#/

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x2 linked
// Checksum 0x4ca64f7b, Offset: 0x790
// Size: 0x22
function isvalidclass(c) {
    return isdefined(c) && c != "";
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x0
// Checksum 0xa4640ba8, Offset: 0x7c0
// Size: 0x118
function playtickingsound(gametype_tick_sound) {
    self endon(#"death", #"stop_ticking");
    level endon(#"game_ended");
    time = level.bombtimer;
    while (true) {
        self playsound(gametype_tick_sound);
        if (time > 10) {
            time -= 1;
            wait(1);
        } else if (time > 4) {
            time -= 0.5;
            wait(0.5);
        } else if (time > 1) {
            time -= 0.4;
            wait(0.4);
        } else {
            time -= 0.3;
            wait(0.3);
        }
        hostmigration::waittillhostmigrationdone();
    }
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x0
// Checksum 0x43b488f3, Offset: 0x8e0
// Size: 0x1e
function stoptickingsound() {
    if (isdefined(self)) {
        self notify(#"stop_ticking");
    }
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x2 linked
// Checksum 0x1a79e0dd, Offset: 0x908
// Size: 0x11c
function gametimer() {
    level endon(#"game_ended");
    level.var_8a3a9ca4.roundstart = gettime();
    level.starttime = gettime();
    level.discardtime = 0;
    if (isdefined(game.roundmillisecondsalreadypassed)) {
        level.starttime -= game.roundmillisecondsalreadypassed;
        game.roundmillisecondsalreadypassed = undefined;
    }
    prevtime = gettime() - 1000;
    while (game.state == #"playing") {
        if (!level.timerstopped) {
            game.timepassed += gettime() - prevtime;
        }
        if (!level.playabletimerstopped) {
            game.playabletimepassed += gettime() - prevtime;
        }
        prevtime = gettime();
        wait(1);
    }
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x2 linked
// Checksum 0x8ba2103, Offset: 0xa30
// Size: 0x7c
function disableplayerroundstartdelay() {
    player = self;
    player endon(#"death", #"disconnect");
    if (getroundstartdelay()) {
        wait(getroundstartdelay());
    }
    player disableroundstartdelay();
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x2 linked
// Checksum 0x5c0fd5e4, Offset: 0xab8
// Size: 0x54
function getroundstartdelay() {
    waittime = level.roundstartexplosivedelay - float([[ level.gettimepassed ]]()) / 1000;
    if (waittime > 0) {
        return waittime;
    }
    return 0;
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x2 linked
// Checksum 0x27fd4f9a, Offset: 0xb18
// Size: 0xa4
function applyroundstartdelay() {
    self endon(#"disconnect", #"joined_spectators", #"death");
    if (game.state == #"pregame") {
        level waittill(#"game_playing");
    } else {
        waitframe(1);
    }
    self enableroundstartdelay();
    self thread disableplayerroundstartdelay();
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x2 linked
// Checksum 0x43f5156b, Offset: 0xbc8
// Size: 0x66
function gettimepassed() {
    if (!isdefined(level.starttime)) {
        return 0;
    }
    if (level.timerstopped) {
        return (level.timerpausetime - level.starttime - level.discardtime);
    }
    return gettime() - level.starttime - level.discardtime;
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x2 linked
// Checksum 0x5242d31, Offset: 0xc38
// Size: 0x54
function pausetimer(pauseplayabletimer = 0) {
    level.playabletimerstopped = pauseplayabletimer;
    if (level.timerstopped) {
        return;
    }
    level.timerstopped = 1;
    level.timerpausetime = gettime();
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x2 linked
// Checksum 0x15e0b91b, Offset: 0xc98
// Size: 0x60
function resumetimer() {
    if (!level.timerstopped) {
        return;
    }
    level.timerstopped = 0;
    level.playabletimerstopped = 0;
    if (isdefined(level.discardtime)) {
        level.discardtime += gettime() - level.timerpausetime;
    }
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x0
// Checksum 0x5e41099e, Offset: 0xd00
// Size: 0x44
function resumetimerdiscardoverride(discardtime) {
    if (!level.timerstopped) {
        return;
    }
    level.timerstopped = 0;
    level.discardtime = discardtime + level.var_9d348da1;
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x2 linked
// Checksum 0x6e367979, Offset: 0xd50
// Size: 0x1c
function getscoreremaining(score) {
    return level.scorelimit - score;
}

// Namespace globallogic_utils/globallogic_utils
// Params 2, eflags: 0x2 linked
// Checksum 0xafeaf995, Offset: 0xd78
// Size: 0x50
function function_fd90317f(user, var_b393387d) {
    if (level.cumulativeroundscores && isdefined(game.lastroundscore[user])) {
        return (var_b393387d - game.lastroundscore[user]);
    }
    return var_b393387d;
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x2 linked
// Checksum 0x35a26ebe, Offset: 0xdd0
// Size: 0x56
function getscoreperminute(var_d0266750) {
    minutespassed = gettimepassed() / int(60 * 1000) + 0.0001;
    return var_d0266750 / minutespassed;
}

// Namespace globallogic_utils/globallogic_utils
// Params 2, eflags: 0x2 linked
// Checksum 0x74ca1f1f, Offset: 0xe30
// Size: 0x6e
function getestimatedtimeuntilscorelimit(total_score, var_d0266750) {
    scoreperminute = self getscoreperminute(var_d0266750);
    scoreremaining = self getscoreremaining(total_score);
    if (!scoreperminute) {
        return 999999;
    }
    return scoreremaining / scoreperminute;
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x0
// Checksum 0xc2a039c2, Offset: 0xea8
// Size: 0x48
function rumbler() {
    self endon(#"disconnect");
    while (true) {
        wait(0.1);
        self playrumbleonentity("damage_heavy");
    }
}

// Namespace globallogic_utils/globallogic_utils
// Params 2, eflags: 0x2 linked
// Checksum 0xeb561703, Offset: 0xef8
// Size: 0x24
function waitfortimeornotify(time, notifyname) {
    self endon(notifyname);
    wait(time);
}

// Namespace globallogic_utils/globallogic_utils
// Params 2, eflags: 0x0
// Checksum 0xb0384710, Offset: 0xf28
// Size: 0x60
function waitfortimeornotifynoartillery(time, notifyname) {
    self endon(notifyname);
    wait(time);
    while (isdefined(level.artilleryinprogress)) {
        assert(level.artilleryinprogress);
        wait(0.25);
    }
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x0
// Checksum 0x599a5a41, Offset: 0xf90
// Size: 0x166
function gethitlocheight(shitloc) {
    switch (shitloc) {
    case #"head":
    case #"helmet":
    case #"neck":
        return 60;
    case #"left_arm_lower":
    case #"left_arm_upper":
    case #"torso_upper":
    case #"right_arm_lower":
    case #"left_hand":
    case #"right_arm_upper":
    case #"gun":
    case #"right_hand":
        return 48;
    case #"torso_lower":
        return 40;
    case #"right_leg_upper":
    case #"left_leg_upper":
        return 32;
    case #"left_leg_lower":
    case #"right_leg_lower":
        return 10;
    case #"left_foot":
    case #"right_foot":
        return 5;
    }
    return 48;
}

/#

    // Namespace globallogic_utils/globallogic_utils
    // Params 2, eflags: 0x0
    // Checksum 0xd3a3b75a, Offset: 0x1100
    // Size: 0x5a
    function debugline(start, end) {
                for (i = 0; i < 50; i++) {
            line(start, end);
            waitframe(1);
        }
    }

#/

// Namespace globallogic_utils/globallogic_utils
// Params 2, eflags: 0x2 linked
// Checksum 0xc0040d95, Offset: 0x1168
// Size: 0x24
function function_4aa8d809(index, string) {
    level.var_336c35f1[index] = string;
}

/#

    // Namespace globallogic_utils/globallogic_utils
    // Params 1, eflags: 0x2 linked
    // Checksum 0x826d07e3, Offset: 0x1198
    // Size: 0x23c
    function function_8d61a6c2(var_c1e98979) {
        assert(isdefined(var_c1e98979));
        assert(isdefined(level.var_336c35f1[var_c1e98979]));
        log_string = level.var_336c35f1[var_c1e98979];
        winner = round::get_winner();
        if (isplayer(winner)) {
            print("<unknown string>" + winner getxuid() + "<unknown string>" + winner.name + "<unknown string>");
        }
        if (isdefined(winner)) {
            if (isplayer(winner)) {
                log_string = log_string + "<unknown string>" + winner getxuid() + "<unknown string>" + winner.name + "<unknown string>";
            } else {
                log_string = log_string + "<unknown string>" + winner;
            }
        }
        foreach (team, str_team in level.teams) {
            log_string = log_string + "<unknown string>" + str_team + "<unknown string>" + game.stat[#"teamscores"][team];
        }
        print(log_string);
    }

#/

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x0
// Checksum 0xbf8ebafc, Offset: 0x13e0
// Size: 0x44
function add_map_error(msg) {
    if (!isdefined(level.maperrors)) {
        level.maperrors = [];
    }
    level.maperrors[level.maperrors.size] = msg;
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x0
// Checksum 0x570f0037, Offset: 0x1430
// Size: 0xdc
function print_map_errors() {
    if (isdefined(level.maperrors) && level.maperrors.size > 0) {
        /#
            println("<unknown string>");
            for (i = 0; i < level.maperrors.size; i++) {
                println("<unknown string>" + level.maperrors[i]);
            }
            println("<unknown string>");
            util::error("<unknown string>");
        #/
        callback::abort_level();
        return true;
    }
    return false;
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x2 linked
// Checksum 0x6e8a6132, Offset: 0x1518
// Size: 0x22
function function_308e3379() {
    return strendswith(level.gametype, "_bb");
}

