// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\potm_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace demo;

// Namespace demo/demo_shared
// Params 0, eflags: 0x5
// Checksum 0x59b4e56, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"demo", &preinit, undefined, undefined, undefined);
}

// Namespace demo/demo_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x61796efc, Offset: 0xe0
// Size: 0x54
function private preinit() {
    game.var_e9714926 = #"demo";
    callback::on_start_gametype(&init);
    level thread watch_actor_bookmarks();
}

// Namespace demo/demo_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x495d6ee7, Offset: 0x140
// Size: 0x14
function private init() {
    potm::function_d71338e4();
}

// Namespace demo/demo_shared
// Params 2, eflags: 0x6 linked
// Checksum 0x250e7fd6, Offset: 0x160
// Size: 0x8c
function private add_bookmark(bookmark, overrideentitycamera) {
    if (!isdefined(bookmark)) {
        return;
    }
    if (!isdefined(overrideentitycamera)) {
        overrideentitycamera = 0;
    }
    adddemobookmark(bookmark.var_900768bc.id, bookmark.time, bookmark.mainclientnum, bookmark.otherclientnum, bookmark.scoreeventpriority, bookmark.inflictorentnum, bookmark.inflictorenttype, bookmark.var_5f0256c4, overrideentitycamera);
}

// Namespace demo/demo_shared
// Params 5, eflags: 0x2 linked
// Checksum 0xa28aa7f4, Offset: 0x1f8
// Size: 0x84
function kill_bookmark(var_81538b15, var_f28fb772, einflictor, var_50d1e41a, overrideentitycamera) {
    bookmark = potm::function_5b1e9ed4(game.var_e9714926, #"kill", gettime(), var_81538b15, var_f28fb772, 0, einflictor, var_50d1e41a, overrideentitycamera);
    add_bookmark(bookmark, overrideentitycamera);
}

// Namespace demo/demo_shared
// Params 2, eflags: 0x0
// Checksum 0x376c577a, Offset: 0x288
// Size: 0x6c
function function_651a5f4(var_81538b15, einflictor) {
    bookmark = potm::function_5b1e9ed4(game.var_e9714926, #"object_destroy", gettime(), var_81538b15, undefined, 0, einflictor);
    add_bookmark(bookmark);
}

// Namespace demo/demo_shared
// Params 5, eflags: 0x0
// Checksum 0xe4736878, Offset: 0x300
// Size: 0x7c
function event_bookmark(bookmarkname, time, var_81538b15, scoreeventpriority, eventdata) {
    bookmark = potm::function_5b1e9ed4(game.var_e9714926, bookmarkname, time, var_81538b15, undefined, scoreeventpriority, undefined, undefined, 0, eventdata);
    add_bookmark(bookmark);
}

// Namespace demo/demo_shared
// Params 5, eflags: 0x2 linked
// Checksum 0x54f41ded, Offset: 0x388
// Size: 0x74
function bookmark(bookmarkname, time, var_81538b15, var_f28fb772, scoreeventpriority) {
    bookmark = potm::function_5b1e9ed4(game.var_e9714926, bookmarkname, time, var_81538b15, var_f28fb772, scoreeventpriority);
    add_bookmark(bookmark);
}

// Namespace demo/demo_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x712abe2d, Offset: 0x408
// Size: 0xc4
function function_c6ae5fd6(bookmarkname, winningteamindex, losingteamindex) {
    bookmark = potm::function_5b1e9ed4(game.var_e9714926, bookmarkname, gettime(), undefined, undefined, 0);
    if (!isdefined(bookmark)) {
        println("<unknown string>" + bookmarkname + "<unknown string>");
        return;
    }
    if (isdefined(winningteamindex)) {
        bookmark.mainclientnum = winningteamindex;
    }
    if (isdefined(losingteamindex)) {
        bookmark.otherclientnum = losingteamindex;
    }
    add_bookmark(bookmark);
}

// Namespace demo/demo_shared
// Params 3, eflags: 0x0
// Checksum 0xe0551be1, Offset: 0x4d8
// Size: 0x5c
function initactorbookmarkparams(killtimescount, killtimemsec, killtimedelay) {
    level.actor_bookmark_kill_times_count = killtimescount;
    level.actor_bookmark_kill_times_msec = killtimemsec;
    level.actor_bookmark_kill_times_delay = killtimedelay;
    level.actorbookmarkparamsinitialized = 1;
}

// Namespace demo/demo_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x23a86c9d, Offset: 0x540
// Size: 0x74
function reset_actor_bookmark_kill_times() {
    if (!isdefined(level.actorbookmarkparamsinitialized)) {
        return;
    }
    if (!isdefined(self.actor_bookmark_kill_times)) {
        self.actor_bookmark_kill_times = [];
        self.ignore_actor_kill_times = 0;
    }
    for (i = 0; i < level.actor_bookmark_kill_times_count; i++) {
        self.actor_bookmark_kill_times[i] = 0;
    }
}

// Namespace demo/demo_shared
// Params 0, eflags: 0x0
// Checksum 0xe874369e, Offset: 0x5c0
// Size: 0x10c
function add_actor_bookmark_kill_time() {
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(level.actorbookmarkparamsinitialized)) {
        return;
    }
    if (!isdefined(self.ignore_actor_kill_times)) {
        self reset_actor_bookmark_kill_times();
    }
    now = gettime();
    if (now <= self.ignore_actor_kill_times) {
        return;
    }
    oldest_index = 0;
    oldest_time = now + 1;
    for (i = 0; i < level.actor_bookmark_kill_times_count; i++) {
        if (!self.actor_bookmark_kill_times[i]) {
            oldest_index = i;
            break;
        }
        if (oldest_time > self.actor_bookmark_kill_times[i]) {
            oldest_index = i;
            oldest_time = self.actor_bookmark_kill_times[i];
        }
    }
    self.actor_bookmark_kill_times[oldest_index] = now;
}

// Namespace demo/demo_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x231c60ea, Offset: 0x6d8
// Size: 0x1e2
function watch_actor_bookmarks() {
    while (true) {
        if (!isdefined(level.actorbookmarkparamsinitialized)) {
            wait(0.5);
            continue;
        }
        waitframe(1);
        waittillframeend();
        now = gettime();
        oldest_allowed = now - level.actor_bookmark_kill_times_msec;
        players = getplayers();
        for (player_index = 0; player_index < players.size; player_index++) {
            player = players[player_index];
            /#
                if (isbot(player)) {
                    continue;
                }
            #/
            for (time_index = 0; time_index < level.actor_bookmark_kill_times_count; time_index++) {
                if (!isdefined(player.actor_bookmark_kill_times) || !player.actor_bookmark_kill_times[time_index]) {
                    break;
                }
                if (oldest_allowed > player.actor_bookmark_kill_times[time_index]) {
                    player.actor_bookmark_kill_times[time_index] = 0;
                    break;
                }
            }
            if (time_index >= level.actor_bookmark_kill_times_count) {
                bookmark(#"actor_kill", gettime(), player);
                potm::bookmark(#"actor_kill", gettime(), player);
                player reset_actor_bookmark_kill_times();
                player.ignore_actor_kill_times = now + level.actor_bookmark_kill_times_delay;
            }
        }
    }
}

