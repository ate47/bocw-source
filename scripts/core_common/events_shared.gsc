// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;

#namespace events;

// Namespace events/events_shared
// Params 3, eflags: 0x0
// Checksum 0x7c2da131, Offset: 0x88
// Size: 0x6c
function add_timed_event(seconds, notify_string, client_notify_string) {
    assert(seconds >= 0);
    if (level.timelimit > 0) {
        level thread timed_event_monitor(seconds, notify_string, client_notify_string);
    }
}

// Namespace events/events_shared
// Params 3, eflags: 0x0
// Checksum 0xd8c87683, Offset: 0x100
// Size: 0xa2
function timed_event_monitor(seconds, notify_string, client_notify_string) {
    for (;;) {
        wait(0.5);
        if (!isdefined(level.starttime)) {
            continue;
        }
        millisecs_remaining = [[ level.gettimeremaining ]]();
        seconds_remaining = float(millisecs_remaining) / 1000;
        if (seconds_remaining <= seconds) {
            event_notify(notify_string, client_notify_string);
            return;
        }
    }
}

// Namespace events/events_shared
// Params 3, eflags: 0x0
// Checksum 0x49a853a9, Offset: 0x1b0
// Size: 0x94
function add_score_event(score, notify_string, client_notify_string) {
    assert(score >= 0);
    if (level.scorelimit > 0) {
        if (level.teambased) {
            level thread score_team_event_monitor(score, notify_string, client_notify_string);
            return;
        }
        level thread score_event_monitor(score, notify_string, client_notify_string);
    }
}

// Namespace events/events_shared
// Params 3, eflags: 0x0
// Checksum 0xf2e40375, Offset: 0x250
// Size: 0xbc
function add_round_score_event(score, notify_string, client_notify_string) {
    assert(score >= 0);
    if (level.roundscorelimit > 0) {
        roundscoretobeat = level.roundscorelimit * game.roundsplayed + score;
        if (level.teambased) {
            level thread score_team_event_monitor(roundscoretobeat, notify_string, client_notify_string);
            return;
        }
        level thread score_event_monitor(roundscoretobeat, notify_string, client_notify_string);
    }
}

// Namespace events/events_shared
// Params 1, eflags: 0x0
// Checksum 0xad5bb174, Offset: 0x318
// Size: 0xac
function any_team_reach_score(score) {
    foreach (team, _ in level.teams) {
        if (game.stat[#"teamscores"][team] >= score) {
            return true;
        }
    }
    return false;
}

// Namespace events/events_shared
// Params 3, eflags: 0x0
// Checksum 0x5f5b184c, Offset: 0x3d0
// Size: 0x5a
function score_team_event_monitor(score, notify_string, client_notify_string) {
    for (;;) {
        wait(0.5);
        if (any_team_reach_score(score)) {
            event_notify(notify_string, client_notify_string);
            return;
        }
    }
}

// Namespace events/events_shared
// Params 3, eflags: 0x0
// Checksum 0x220dcf59, Offset: 0x438
// Size: 0xaa
function score_event_monitor(score, notify_string, client_notify_string) {
    for (;;) {
        wait(0.5);
        players = getplayers();
        for (i = 0; i < players.size; i++) {
            if (isdefined(players[i].score) && players[i].score >= score) {
                event_notify(notify_string, client_notify_string);
                return;
            }
        }
    }
}

// Namespace events/events_shared
// Params 2, eflags: 0x0
// Checksum 0x6e32686d, Offset: 0x4f0
// Size: 0x44
function event_notify(notify_string, client_notify_string) {
    if (isdefined(notify_string)) {
        level notify(notify_string);
    }
    if (isdefined(client_notify_string)) {
        util::clientnotify(client_notify_string);
    }
}

