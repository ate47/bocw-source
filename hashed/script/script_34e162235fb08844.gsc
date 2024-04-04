// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\bots\bot_position.gsc;
#using scripts\core_common\bots\bot_action.gsc;
#using scripts\core_common\bots\bot.gsc;

#namespace namespace_255a2b21;

// Namespace namespace_255a2b21/namespace_255a2b21
// Params 0, eflags: 0x2 linked
// Checksum 0x4d209f19, Offset: 0xa0
// Size: 0x114
function preinit() {
    if (currentsessionmode() == 4 || !(isdefined(getgametypesetting(#"allowlaststandforactiveclients")) ? getgametypesetting(#"allowlaststandforactiveclients") : 0)) {
        return;
    }
    callback::on_spawned(&on_player_spawned);
    callback::on_laststand(&on_player_laststand);
    callback::on_revived(&on_player_revived);
    callback::on_player_killed(&on_player_killed);
    callback::on_disconnect(&on_player_disconnect);
}

// Namespace namespace_255a2b21/namespace_255a2b21
// Params 0, eflags: 0x6 linked
// Checksum 0xa672f194, Offset: 0x1c0
// Size: 0x24
function private on_player_spawned() {
    level function_301f229d(self.team);
}

// Namespace namespace_255a2b21/namespace_255a2b21
// Params 0, eflags: 0x6 linked
// Checksum 0x261c4875, Offset: 0x1f0
// Size: 0x54
function private on_player_laststand() {
    if (isbot(self)) {
        self bot::clear_revive_target();
    }
    waitframe(1);
    level function_301f229d(self.team);
}

// Namespace namespace_255a2b21/namespace_255a2b21
// Params 1, eflags: 0x6 linked
// Checksum 0x436277b8, Offset: 0x250
// Size: 0x2c
function private on_player_revived(*params) {
    level function_301f229d(self.team);
}

// Namespace namespace_255a2b21/namespace_255a2b21
// Params 1, eflags: 0x6 linked
// Checksum 0xbde33bef, Offset: 0x288
// Size: 0x5c
function private on_player_killed(*params) {
    level function_301f229d(self.team);
    if (isbot(self)) {
        self bot::clear_revive_target();
    }
}

// Namespace namespace_255a2b21/namespace_255a2b21
// Params 0, eflags: 0x6 linked
// Checksum 0x3c801c28, Offset: 0x2f0
// Size: 0x24
function private on_player_disconnect() {
    level function_301f229d(self.team);
}

// Namespace namespace_255a2b21/namespace_255a2b21
// Params 1, eflags: 0x6 linked
// Checksum 0x8e2f4d49, Offset: 0x320
// Size: 0x700
function private function_301f229d(team) {
    var_9e7013f = [];
    var_52e61055 = [];
    players = getplayers(team);
    foreach (player in players) {
        if (!isalive(player)) {
            continue;
        }
        if (isdefined(player.revivetrigger)) {
            if (!is_true(player.revivetrigger.beingrevived)) {
                var_9e7013f[var_9e7013f.size] = player;
            }
            continue;
        }
        if (isbot(player)) {
            if (!player.ignoreall && !player isplayinganimscripted() && !player arecontrolsfrozen() && !player function_5972c3cf() && !player isinvehicle()) {
                if (!isdefined(player.bot.revivetarget) || !isdefined(player.bot.revivetarget.revivetrigger) || !is_true(player.is_reviving_any)) {
                    var_52e61055[var_52e61055.size] = player;
                }
            }
        }
    }
    assignments = [];
    foreach (bot in var_52e61055) {
        radius = bot getpathfindingradius();
        foreach (player in var_9e7013f) {
            distance = undefined;
            if (bot istouching(player.revivetrigger)) {
                distance = distance(bot.origin, player.origin);
                arrayinsert(assignments, {#bot:bot, #target:player, #distance:distance}, 0);
                continue;
            }
            navmeshpoint = bot_position::function_13796beb(player.origin);
            if (!isdefined(navmeshpoint)) {
                continue;
            }
            if (tracepassedonnavmesh(bot.origin, navmeshpoint, 15)) {
                distance = distance2d(bot.origin, navmeshpoint);
            } else {
                var_65c8979b = bot_position::function_13796beb(bot.origin);
                if (!isdefined(var_65c8979b)) {
                    continue;
                }
                path = generatenavmeshpath(var_65c8979b, navmeshpoint, bot);
                if (!isdefined(path) || !isdefined(path.pathpoints) || path.pathpoints.size == 0) {
                    continue;
                }
                distance = path.pathdistance;
            }
            if (distance > 2000) {
                continue;
            }
            for (i = 0; i < assignments.size; i++) {
                if (distance < assignments[i].distance) {
                    break;
                }
            }
            arrayinsert(assignments, {#bot:bot, #target:player, #distance:distance}, i);
        }
    }
    for (i = 0; i < assignments.size; i++) {
        assignment = assignments[i];
        if (assignment.bot bot::get_revive_target() !== assignment.target) {
            assignment.bot bot::set_revive_target(assignment.target);
        }
        arrayremovevalue(var_52e61055, assignment.bot);
        for (j = i + 1; j < assignments.size; j++) {
            var_ecf75b21 = assignments[j];
            if (var_ecf75b21.bot == assignment.bot || var_ecf75b21.target == assignment.target) {
                arrayremoveindex(assignments, j);
                continue;
            }
        }
    }
    foreach (bot in var_52e61055) {
        if (isdefined(bot bot::get_revive_target())) {
            bot bot::clear_revive_target();
        }
    }
}

