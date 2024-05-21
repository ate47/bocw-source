// Atian COD Tools GSC CW decompiler test
#using script_7f6cd71c43c45c57;
#using scripts\core_common\weapons_shared.gsc;
#using scripts\core_common\hud_message_shared.gsc;

#namespace globallogic_utils;

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x0
// Checksum 0xc5601228, Offset: 0xe0
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
// Checksum 0x47283ec9, Offset: 0x1a0
// Size: 0xf8
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
    timepassed = float(gettimepassed() - level.starttime) / 1000;
    timeremaining = level.timelimit * 60 - timepassed;
    return timeremaining + level.postroundtime;
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x2 linked
// Checksum 0x7a6d764f, Offset: 0x2a0
// Size: 0x44
function gettimeremaining() {
    if (level.timelimit == 0) {
        return undefined;
    }
    return level.timelimit * 60 * 1000 - gettimepassed();
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x0
// Checksum 0x67301bcb, Offset: 0x2f0
// Size: 0x44
function registerpostroundevent(eventfunc) {
    if (!isdefined(level.postroundevents)) {
        level.postroundevents = [];
    }
    level.postroundevents[level.postroundevents.size] = eventfunc;
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x2 linked
// Checksum 0xa3858f0a, Offset: 0x340
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
// Checksum 0xb7f626eb, Offset: 0x3a0
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
    // Checksum 0x98fe7a89, Offset: 0x3f0
    // Size: 0x2a0
    function assertproperplacement() {
        numplayers = level.placement[#"all"].size;
        if (level.teambased) {
            for (i = 0; i < numplayers - 1; i++) {
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
            return;
        }
        for (i = 0; i < numplayers - 1; i++) {
            if (level.placement[#"all"][i].pointstowin < level.placement[#"all"][i + 1].pointstowin) {
                println("<unknown string>");
                for (i = 0; i < numplayers; i++) {
                    player = level.placement[#"all"][i];
                    println("<unknown string>" + i + "<unknown string>" + player.name + "<unknown string>" + player.pointstowin);
                }
                assertmsg("<unknown string>");
                break;
            }
        }
    }

#/

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x2 linked
// Checksum 0xe3af5cbe, Offset: 0x698
// Size: 0x6a
function isvalidclass(c) {
    if (level.oldschool || sessionmodeiszombiesgame()) {
        assert(!isdefined(c));
        return true;
    }
    return isdefined(c) && c != "";
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x0
// Checksum 0x600d82d5, Offset: 0x710
// Size: 0x104
function playtickingsound(gametype_tick_sound) {
    self endon(#"death", #"stop_ticking");
    level endon(#"game_ended");
    time = level.bombtimer;
    while (true) {
        self playsound(gametype_tick_sound);
        if (time > 10) {
            time -= 1;
            wait(1);
            continue;
        }
        if (time > 4) {
            time -= 0.5;
            wait(0.5);
            continue;
        }
        if (time > 1) {
            time -= 0.4;
            wait(0.4);
            continue;
        }
        time -= 0.3;
        wait(0.3);
    }
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x0
// Checksum 0xf456ea3a, Offset: 0x820
// Size: 0x16
function stoptickingsound() {
    self notify(#"stop_ticking");
}

// Namespace globallogic_utils/globallogic_utils
// Params 0, eflags: 0x2 linked
// Checksum 0x66b348d0, Offset: 0x840
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
// Checksum 0xb05d4968, Offset: 0x938
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
// Checksum 0xd77a9d09, Offset: 0x9a8
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
// Checksum 0x212ad84f, Offset: 0x9e0
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
// Checksum 0x676f3548, Offset: 0xa30
// Size: 0x16
function getscoreremaining(*team) {
    return level.scorelimit;
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x0
// Checksum 0xdf559dce, Offset: 0xa50
// Size: 0xe
function getteamscoreforround(*team) {
    return false;
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x2 linked
// Checksum 0x670b07a3, Offset: 0xa68
// Size: 0xe
function getscoreperminute(*team) {
    return false;
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x2 linked
// Checksum 0x484f1ac9, Offset: 0xa80
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
// Checksum 0x5d393f9b, Offset: 0xb20
// Size: 0x48
function rumbler() {
    self endon(#"disconnect");
    while (true) {
        wait(0.1);
        self playrumbleonentity("damage_heavy");
    }
}

// Namespace globallogic_utils/globallogic_utils
// Params 2, eflags: 0x0
// Checksum 0xa26be05a, Offset: 0xb70
// Size: 0x24
function waitfortimeornotify(time, notifyname) {
    self endon(notifyname);
    wait(time);
}

// Namespace globallogic_utils/globallogic_utils
// Params 2, eflags: 0x0
// Checksum 0x745258fc, Offset: 0xba0
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
// Params 4, eflags: 0x2 linked
// Checksum 0x912d3c9a, Offset: 0xc08
// Size: 0xfe
function isheadshot(weapon, shitloc, smeansofdeath, *einflictor) {
    if (smeansofdeath != "head" && smeansofdeath != "helmet") {
        return false;
    }
    switch (einflictor) {
    case #"mod_melee_weapon_butt":
    case #"mod_melee_assassinate":
    case #"mod_melee":
        return false;
    case #"mod_impact":
        baseweapon = weapons::getbaseweapon(shitloc);
        if (!shitloc.isballisticknife && baseweapon != level.weaponspecialcrossbow && baseweapon != level.weaponflechette) {
            return false;
        }
        break;
    }
    return true;
}

// Namespace globallogic_utils/globallogic_utils
// Params 1, eflags: 0x2 linked
// Checksum 0xfd88fe50, Offset: 0xd10
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
    // Checksum 0x30f46fb3, Offset: 0xe80
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
// Checksum 0x97391f74, Offset: 0xee8
// Size: 0x10c
function logteamwinstring(wintype, winner) {
    log_string = wintype;
    if (isdefined(winner)) {
        log_string = log_string + ", win: " + winner;
    }
    foreach (team, str_team in level.teams) {
        log_string = log_string + ", " + str_team + ": " + game.stat[#"teamscores"][team];
    }
    /#
        print(log_string);
    #/
}

