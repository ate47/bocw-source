// Atian COD Tools GSC CW decompiler test
#using scripts\wz_common\hud.gsc;
#using scripts\mp_common\teams\teams.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace teams;

// Namespace teams/teams
// Params 2, eflags: 0x6 linked
// Checksum 0xf71ee4bd, Offset: 0xc0
// Size: 0x62
function private function_74a8f2ed(var_d3ba512b, var_c0856555) {
    if (var_d3ba512b.score > var_c0856555.score) {
        return 1;
    }
    if (var_c0856555.score > var_d3ba512b.score) {
        return 0;
    }
    return function_39971b81(var_d3ba512b, var_c0856555);
}

// Namespace teams/teams
// Params 0, eflags: 0x2 linked
// Checksum 0xfae5b876, Offset: 0x130
// Size: 0x2bc
function function_f1394038() {
    var_17616452 = [];
    foreach (team, _ in level.teams) {
        if (function_9dd75dad(team) && !is_true(level.var_606becce[team]) && !isdefined(level.var_eed7c027[team])) {
            players = getplayers(team);
            team_score = [[ level._getteamscore ]](team);
            team_kills = function_7e309c84(team, players);
            damage_done = function_3915e148(team, players);
            if (!isdefined(var_17616452)) {
                var_17616452 = [];
            } else if (!isarray(var_17616452)) {
                var_17616452 = array(var_17616452);
            }
            var_17616452[var_17616452.size] = {#team:team, #players:players, #last_alive:undefined, #kills:team_kills, #damage:damage_done, #score:team_score};
        }
    }
    var_ec950e92 = array::merge_sort(var_17616452, &function_74a8f2ed);
    placement = 1;
    foreach (team in var_ec950e92) {
        level.var_eed7c027[team.team] = placement;
        placement++;
    }
}

// Namespace teams/teams
// Params 2, eflags: 0x2 linked
// Checksum 0xd400315d, Offset: 0x3f8
// Size: 0xe6
function function_94203702(*team, players) {
    var_b7771cfa = 0;
    last_player = undefined;
    foreach (player in players) {
        if (is_true(player.teamkilled)) {
            continue;
        }
        if (player.deathtime > var_b7771cfa) {
            var_b7771cfa = player.deathtime;
            last_player = player;
        }
    }
    return last_player;
}

// Namespace teams/teams
// Params 2, eflags: 0x2 linked
// Checksum 0x472350ec, Offset: 0x4e8
// Size: 0xa4
function function_7e309c84(*team, players) {
    team_kills = 0;
    foreach (player in players) {
        team_kills += player.kills;
    }
    return team_kills;
}

// Namespace teams/teams
// Params 2, eflags: 0x2 linked
// Checksum 0x316067c1, Offset: 0x598
// Size: 0xa4
function function_3915e148(*team, players) {
    damage_done = 0;
    foreach (player in players) {
        damage_done += player.damagedone;
    }
    return damage_done;
}

// Namespace teams/teams
// Params 2, eflags: 0x2 linked
// Checksum 0xac3c9382, Offset: 0x648
// Size: 0x14e
function function_39971b81(var_d3ba512b, var_c0856555) {
    if (isdefined(var_d3ba512b.last_alive) && !isdefined(var_c0856555.last_alive)) {
        return true;
    }
    if (isdefined(var_c0856555.last_alive) && !isdefined(var_d3ba512b.last_alive)) {
        return false;
    }
    if (isdefined(var_d3ba512b.last_alive) && var_d3ba512b.last_alive.deathtime > var_c0856555.last_alive.deathtime) {
        return true;
    }
    if (isdefined(var_d3ba512b.last_alive) && var_c0856555.last_alive.deathtime > var_d3ba512b.last_alive.deathtime) {
        return false;
    }
    if (var_d3ba512b.kills > var_c0856555.kills) {
        return true;
    }
    if (var_c0856555.kills > var_d3ba512b.kills) {
        return false;
    }
    if (var_d3ba512b.damage > var_c0856555.damage) {
        return true;
    }
    if (var_c0856555.damage > var_d3ba512b.damage) {
        return false;
    }
    return true;
}

// Namespace teams/teams
// Params 0, eflags: 0x2 linked
// Checksum 0x68f8810c, Offset: 0x7a0
// Size: 0x1e2
function function_c7eae573() {
    var_d72df62 = [];
    foreach (team, _ in level.teams) {
        if (function_9dd75dad(team) && !is_true(level.var_606becce[team]) && is_all_dead(team)) {
            players = getplayers(team);
            last_alive = function_94203702(team, players);
            team_kills = function_7e309c84(team, players);
            damage_done = function_3915e148(team, players);
            var_d72df62[var_d72df62.size] = {#team:team, #players:players, #last_alive:last_alive, #kills:team_kills, #damage:damage_done};
        }
    }
    var_ec950e92 = array::merge_sort(var_d72df62, &function_39971b81);
    return var_ec950e92;
}

// Namespace teams/teams
// Params 1, eflags: 0x2 linked
// Checksum 0xc9d63cc5, Offset: 0x990
// Size: 0x4a
function function_c2f2fb84(var_d72df62) {
    if (var_d72df62.size == 0) {
        return undefined;
    }
    if (var_d72df62.size == 1) {
        return var_d72df62[0].team;
    }
    return var_d72df62[0].team;
}

// Namespace teams/teams
// Params 1, eflags: 0x2 linked
// Checksum 0xbc1e7211, Offset: 0x9e8
// Size: 0x100
function function_5fed3908(team) {
    if (!isdefined(team)) {
        return;
    }
    callback::callback(#"hash_677c43609aa6ce47", team);
    players = getplayers(team);
    foreach (player in players) {
        if (player function_8b1a219a()) {
            player clientfield::set_to_player("RGB_keyboard_manager", 1);
        }
    }
}

// Namespace teams/teams
// Params 2, eflags: 0x2 linked
// Checksum 0xa6cef08b, Offset: 0xaf0
// Size: 0x170
function team_eliminated(team, var_293493b) {
    level.var_606becce[team] = 1;
    callback::callback(#"hash_1019ab4b81d07b35", {#team:team, #var_293493b:var_293493b});
    level hud::function_22df4165();
    level thread function_9498e451(team);
    deadteam = getplayers(team);
    foreach (teammember in deadteam) {
        teammember notify(#"end_respawn");
        teammember luinotifyevent(#"team_eliminated", 1, var_293493b);
    }
    level.var_eed7c027[team] = var_293493b;
}

// Namespace teams/teams
// Params 1, eflags: 0x2 linked
// Checksum 0x5d0bedaf, Offset: 0xc68
// Size: 0x38
function function_9498e451(*team) {
    wait(1);
    while (is_true(level.var_fec861a7)) {
        waitframe(1);
    }
}

