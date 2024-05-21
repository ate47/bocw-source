// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\gametypes\hostmigration.gsc;
#using scripts\zm_common\gametypes\globallogic_score.gsc;
#using scripts\core_common\hud_message_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace globallogic_utils;

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x0
// Checksum 0x530c38eb, Offset: 0xc0
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
// Params 0, eflags: 0x0
// Checksum 0xdcc9ee06, Offset: 0x180
// Size: 0xe4
function timeuntilroundend() {
    if (level.gameended) {
        timepassed = (gettime() - level.gameendtime) / 1000;
        timeremaining = level.postroundtime - timepassed;
        if (timeremaining < 0) {
            return 0;
        }
        return timeremaining;
    }
    if (level.inovertime) {
        return undefined;
    }
    if (level.timelimit <= 0) {
        return undefined;
    }
    if (!isdefined(level.starttime)) {
        return undefined;
    }
    timepassed = (gettimepassed() - level.starttime) / 1000;
    timeremaining = level.timelimit * 60 - timepassed;
    return timeremaining + level.postroundtime;
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x2 linked
// Checksum 0x19f3aecf, Offset: 0x270
// Size: 0x4c
function gettimeremaining() {
    if (!isdefined(level.timelimit)) {
        level.timelimit = 0;
    }
    return level.timelimit * 60 * 1000 - gettimepassed();
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x2 linked
// Checksum 0x132d68f9, Offset: 0x2c8
// Size: 0x44
function registerpostroundevent(eventfunc) {
    if (!isdefined(level.postroundevents)) {
        level.postroundevents = [];
    }
    level.postroundevents[level.postroundevents.size] = eventfunc;
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x0
// Checksum 0x763a41fe, Offset: 0x318
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
// Checksum 0xbd0bc23f, Offset: 0x378
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
    // Checksum 0xf3af1811, Offset: 0x3c8
    // Size: 0x1b8
    function assertproperplacement() {
        numplayers = level.placement[#"all"].size;
        for (i = 0; i < numplayers - 1; i++) {
            if (isdefined(level.placement[#"all"][i]) && isdefined(level.placement[#"all"][i + 1])) {
                if (level.placement[#"all"][i].score < level.placement[#"all"][i + 1].score) {
                    println("<unknown string>");
                    for (i = 0; i < numplayers; i++) {
                        player = level.placement[#"all"][i];
                        println("<unknown string>" + i + "<unknown string>" + player.name + "<unknown string>" + player.score);
                    }
                    assertmsg("<unknown string>");
                    break;
                }
            }
        }
    }

#/

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x2 linked
// Checksum 0xdf9ae564, Offset: 0x588
// Size: 0x22
function isvalidclass(vclass) {
    return isdefined(vclass) && vclass != "";
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x0
// Checksum 0x3628ec19, Offset: 0x5b8
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
// Checksum 0x562df85b, Offset: 0x6d8
// Size: 0x16
function stoptickingsound() {
    self notify(#"stop_ticking");
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x2 linked
// Checksum 0x88c8fe4, Offset: 0x6f8
// Size: 0xec
function gametimer() {
    level endon(#"game_ended");
    level waittill(#"prematch_over");
    level.starttime = gettime();
    level.discardtime = 0;
    if (isdefined(game.roundmillisecondsalreadypassed)) {
        level.starttime -= game.roundmillisecondsalreadypassed;
        game.roundmillisecondsalreadypassed = undefined;
    }
    prevtime = gettime();
    while (game.state == "playing") {
        if (!level.timerstopped) {
            game.timepassed += gettime() - prevtime;
        }
        prevtime = gettime();
        wait(1);
    }
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x2 linked
// Checksum 0xe88906a9, Offset: 0x7f0
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
// Params 0, eflags: 0x0
// Checksum 0xb17d87df, Offset: 0x860
// Size: 0x30
function pausetimer() {
    if (level.timerstopped) {
        return;
    }
    level.timerstopped = 1;
    level.timerpausetime = gettime();
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x0
// Checksum 0x1cdb4f6e, Offset: 0x898
// Size: 0x44
function resumetimer() {
    if (!level.timerstopped) {
        return;
    }
    level.timerstopped = 0;
    level.discardtime += gettime() - level.timerpausetime;
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x2 linked
// Checksum 0xf88daf1e, Offset: 0x8e8
// Size: 0x9e
function getscoreremaining(team) {
    assert(isplayer(self) || isdefined(team));
    scorelimit = level.scorelimit;
    if (isplayer(self)) {
        return (scorelimit - globallogic_score::_getplayerscore(self));
    }
    return scorelimit - getteamscore(team);
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x2 linked
// Checksum 0xca6985f5, Offset: 0x990
// Size: 0xea
function getscoreperminute(team) {
    assert(isplayer(self) || isdefined(team));
    scorelimit = level.scorelimit;
    timelimit = level.timelimit;
    minutespassed = gettimepassed() / 60000 + 0.0001;
    if (isplayer(self)) {
        return (globallogic_score::_getplayerscore(self) / minutespassed);
    }
    return getteamscore(team) / minutespassed;
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x2 linked
// Checksum 0x71eb87c5, Offset: 0xa88
// Size: 0x96
function getestimatedtimeuntilscorelimit(team) {
    assert(isplayer(self) || isdefined(team));
    scoreperminute = self getscoreperminute(team);
    scoreremaining = self getscoreremaining(team);
    if (!scoreperminute) {
        return 999999;
    }
    return scoreremaining / scoreperminute;
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x0
// Checksum 0xce66739b, Offset: 0xb28
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
// Checksum 0x4722de7a, Offset: 0xb78
// Size: 0x24
function waitfortimeornotify(time, notifyname) {
    self endon(notifyname);
    wait(time);
}

// Namespace globallogic_utils/globallogic_utils
// Params 2, eflags: 0x0
// Checksum 0xb26a4202, Offset: 0xba8
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
// Checksum 0xc521ca61, Offset: 0xc10
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
    // Checksum 0xb66ad44c, Offset: 0xd80
    // Size: 0x5a
    function debugline(start, end) {
                for (i = 0; i < 50; i++) {
            line(start, end);
            waitframe(1);
        }
    }

    // Namespace globallogic_utils/globallogic_utils
    // Params 2, eflags: 0x2 linked
    // Checksum 0x21da9363, Offset: 0xde8
    // Size: 0x10c
    function logteamwinstring(wintype, winner) {
        log_string = wintype;
        if (isdefined(winner)) {
            log_string = log_string + "<unknown string>" + winner;
        }
        foreach (team, str_team in level.teams) {
            log_string = log_string + "<unknown string>" + str_team + "<unknown string>" + game.stat[#"teamscores"][team];
        }
        print(log_string);
    }

#/
