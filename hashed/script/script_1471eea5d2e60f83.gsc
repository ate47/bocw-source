// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\popups_shared.gsc;
#using script_45fdb6cec5580007;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\ping_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\battlechatter.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace ping;

// Namespace ping/ping
// Params 0, eflags: 0x5
// Checksum 0x76049cf7, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"ping", undefined, &postinit, undefined, undefined);
}

// Namespace ping/ping
// Params 0, eflags: 0x6 linked
// Checksum 0x747f9a36, Offset: 0x100
// Size: 0x24c
function private postinit() {
    setdvar(#"hash_1d7aa0dce875f0eb", 1);
    if (!getdvarint(#"hash_449fa75f87a4b5b4", 0)) {
        return;
    }
    level.ping = {#players:[], #count:0, #pings:[], #durations:[60, 60, 10, 15, 20, 30, 15, 15, 25, 25, level.var_142ecedc, 15, 15]};
    assert(level.ping.durations.size == 13);
    callback::function_94eab4fb(&function_94eab4fb);
    callback::on_disconnect(&on_disconnect);
    callback::on_joined_team(&on_joined_team);
    callback::on_spawned(&on_player_spawn);
    callback::on_death(&function_d58bf295);
    callback::on_end_game(&on_end_game);
    callback::function_dd017b2e(&function_dd017b2e);
    level thread update();
}

// Namespace ping/ping
// Params 1, eflags: 0x2 linked
// Checksum 0x9a77b9ec, Offset: 0x358
// Size: 0x4c
function function_dd017b2e(params) {
    self function_b56144ae(self function_9c9adcf1(), 17, 0, (0, 0, 0), undefined, undefined, params.title);
}

// Namespace ping/ping
// Params 0, eflags: 0x6 linked
// Checksum 0x2d9afd89, Offset: 0x3b0
// Size: 0x2c
function private function_77d2f4f5() {
    return level.ping.players[self getentitynumber()];
}

// Namespace ping/ping
// Params 0, eflags: 0x6 linked
// Checksum 0x3c579ec0, Offset: 0x3e8
// Size: 0x2c
function private function_76fbd527() {
    level.ping.players[self getentitynumber()] = [];
}

// Namespace ping/ping
// Params 0, eflags: 0x6 linked
// Checksum 0xf72e4297, Offset: 0x420
// Size: 0xe2
function private function_9c9adcf1() {
    if (isdefined(level.var_75bb902f)) {
        return [[ level.var_75bb902f ]]();
    }
    pingplayers = undefined;
    if (squads::function_a9758423() && isdefined(self.squad)) {
        pingplayers = function_c65231e2(self.squad);
    } else if (isdefined(self.team)) {
        pingplayers = getfriendlyplayers(self.team);
    }
    if (!isdefined(pingplayers)) {
        pingplayers = [];
    } else if (!isarray(pingplayers)) {
        pingplayers = array(pingplayers);
    }
    return pingplayers;
}

// Namespace ping/ping
// Params 0, eflags: 0x6 linked
// Checksum 0xc4f7e4a1, Offset: 0x510
// Size: 0x14c
function private function_68ee7643() {
    pings = self function_77d2f4f5();
    entnum = self getentitynumber();
    if (isdefined(pings)) {
        foreach (ping in level.ping.pings) {
            if (entnum == ping.playerentnum) {
                function_aa50d3e4(ping);
            }
        }
        self function_b56144ae(self function_9c9adcf1(), 15, 1, (0, 0, 0));
        level.ping.players[self getentitynumber()] = undefined;
    }
}

// Namespace ping/ping
// Params 0, eflags: 0x6 linked
// Checksum 0x168bae95, Offset: 0x668
// Size: 0xf0
function private clear_all_pings() {
    foreach (ping in level.ping.pings) {
        ping.player function_b56144ae(ping.player function_9c9adcf1(), ping.eventtype, 1, ping.location, ping.param, ping.id);
        function_aa50d3e4(ping);
    }
}

// Namespace ping/ping
// Params 0, eflags: 0x2 linked
// Checksum 0xa12fee56, Offset: 0x760
// Size: 0x44
function on_player_spawn() {
    pings = self function_77d2f4f5();
    if (!isdefined(pings)) {
        self function_76fbd527();
    }
}

// Namespace ping/ping
// Params 1, eflags: 0x2 linked
// Checksum 0xd8761c2e, Offset: 0x7b0
// Size: 0x3c
function on_joined_team(*params) {
    self function_68ee7643();
    self function_76fbd527();
}

// Namespace ping/ping
// Params 0, eflags: 0x2 linked
// Checksum 0x246a0dde, Offset: 0x7f8
// Size: 0x1c
function on_disconnect() {
    self function_68ee7643();
}

// Namespace ping/ping
// Params 0, eflags: 0x2 linked
// Checksum 0xf1be7885, Offset: 0x820
// Size: 0x14
function on_end_game() {
    clear_all_pings();
}

// Namespace ping/ping
// Params 1, eflags: 0x2 linked
// Checksum 0xf859c829, Offset: 0x840
// Size: 0x1c8
function function_d58bf295(*params) {
    entnum = isentity(self) ? self getentitynumber() : -1;
    foreach (ping in level.ping.pings) {
        if (ping.eventtype != 2 && ping.eventtype != 3 && ping.eventtype != 10) {
            continue;
        }
        if (ping.param != entnum) {
            continue;
        }
        if (!isdefined(ping.player) || !isplayer(ping.player)) {
            continue;
        }
        ping.player function_b56144ae(ping.player function_9c9adcf1(), ping.eventtype, 1, ping.location, ping.param, ping.id);
        function_aa50d3e4(ping);
    }
}

// Namespace ping/ping
// Params 1, eflags: 0x0
// Checksum 0x623e33cf, Offset: 0xa10
// Size: 0x1b8
function function_9455917d(entity) {
    if (!isdefined(level.ping.pings)) {
        return;
    }
    entnum = isentity(entity) ? entity getentitynumber() : -1;
    foreach (ping in level.ping.pings) {
        if (ping.eventtype != 2 && ping.eventtype != 3 && ping.eventtype != 10 && ping.eventtype != 8) {
            continue;
        }
        if (ping.param != entnum) {
            continue;
        }
        ping.player function_b56144ae(ping.player function_9c9adcf1(), ping.eventtype, 1, ping.location, ping.param, ping.id);
        function_aa50d3e4(ping);
    }
}

// Namespace ping/ping
// Params 4, eflags: 0x6 linked
// Checksum 0x31499a5e, Offset: 0xbd0
// Size: 0x356
function private function_c5f0d88f(player, eventtype, location, param) {
    pool = function_5947d757(eventtype);
    ping = spawnstruct();
    ping.player = player;
    ping.playerentnum = player getentitynumber();
    ping.eventtype = eventtype;
    ping.pooltype = pool;
    ping.location = location;
    ping.param = param;
    assert(isdefined(level.ping.durations[eventtype]));
    duration = level.ping.durations[eventtype];
    if (isfunctionptr(duration)) {
        duration = [[ duration ]](param);
    }
    if (duration >= 0) {
        ping.expiration = gettime() + int(duration * 1000);
    }
    ping.id = level.ping.count;
    var_6e071234 = player function_77d2f4f5();
    assert(isdefined(var_6e071234));
    if (isdefined(var_6e071234[pool]) && var_6e071234[pool].size >= function_44806bba(eventtype)) {
        function_aa50d3e4(var_6e071234[pool][0]);
    }
    assert(!isdefined(level.ping.pings[ping.id]));
    if (isdefined(level.ping.pings[ping.id])) {
        function_aa50d3e4(level.ping.pings[ping.id]);
    }
    level.ping.pings[ping.id] = ping;
    level.ping.count++;
    if (level.ping.count >= 16384) {
        level.ping.count = 0;
    }
    if (!isdefined(var_6e071234[pool])) {
        var_6e071234[pool] = [];
    } else if (!isarray(var_6e071234[pool])) {
        var_6e071234[pool] = array(var_6e071234[pool]);
    }
    var_6e071234[pool][var_6e071234[pool].size] = ping;
    return ping;
}

// Namespace ping/ping
// Params 1, eflags: 0x2 linked
// Checksum 0x5f838c45, Offset: 0xf30
// Size: 0x15c
function function_bbe2694a(networkid) {
    if (!isdefined(level.ping.pings)) {
        return;
    }
    foreach (ping in level.ping.pings) {
        if (ping.pooltype == 4 && ping.param == networkid) {
            if (isplayer(ping.player)) {
                ping.player function_b56144ae(ping.player function_9c9adcf1(), ping.eventtype, 1, ping.location, ping.param, ping.id);
            }
            function_aa50d3e4(ping);
            break;
        }
    }
}

// Namespace ping/ping
// Params 1, eflags: 0x6 linked
// Checksum 0xc480d552, Offset: 0x1098
// Size: 0x16c
function private function_aa50d3e4(ping) {
    assert(isdefined(level.ping.pings[ping.id]));
    level.ping.pings[ping.id] = undefined;
    assert(isdefined(level.ping.players[ping.playerentnum][ping.pooltype]));
    var_2d64756e = level.ping.players[ping.playerentnum][ping.pooltype];
    if (!isdefined(var_2d64756e)) {
        return;
    }
    index = array::find(var_2d64756e, ping);
    assert(isdefined(index));
    if (var_2d64756e.size == 1) {
        level.ping.players[ping.playerentnum][ping.pooltype] = undefined;
        return;
    }
    if (isdefined(index)) {
        array::pop(var_2d64756e, index, 0);
    }
}

// Namespace ping/ping
// Params 2, eflags: 0x6 linked
// Checksum 0x6ef4e2a0, Offset: 0x1210
// Size: 0x24
function private function_220a4754(ping, param) {
    return ping.param === param;
}

// Namespace ping/ping
// Params 3, eflags: 0x6 linked
// Checksum 0x84ae78e3, Offset: 0x1240
// Size: 0xf8
function private function_cff0c866(player, event_type, param) {
    var_6e071234 = player function_77d2f4f5();
    pool = function_5947d757(event_type);
    assert(isdefined(var_6e071234));
    if (isdefined(var_6e071234[pool])) {
        index = array::find(var_6e071234[pool], param, &function_220a4754);
        if (isdefined(index)) {
            ping = var_6e071234[pool][index];
            function_aa50d3e4(ping);
        }
    }
    return ping;
}

// Namespace ping/ping
// Params 1, eflags: 0x6 linked
// Checksum 0xdfc39577, Offset: 0x1340
// Size: 0x16c
function private function_94eab4fb(params) {
    player = params.player;
    eventtype = params.type;
    remove = params.remove;
    param = params.param;
    location = params.location;
    assert(isdefined(eventtype));
    targets = player function_9c9adcf1();
    if (eventtype < 13) {
        if (remove) {
            ping = function_cff0c866(player, eventtype, param);
        } else {
            ping = function_c5f0d88f(player, eventtype, location, param);
        }
        id = ping.id;
        if (isdefined(id)) {
            player function_b56144ae(targets, eventtype, remove, location, param, id);
        }
        return;
    }
    player function_b56144ae(targets, eventtype, remove, location, param);
}

// Namespace ping/ping
// Params 0, eflags: 0x6 linked
// Checksum 0xd27910e9, Offset: 0x14b8
// Size: 0x162
function private update() {
    while (true) {
        time = gettime();
        foreach (ping in level.ping.pings) {
            if (isdefined(ping.expiration) && ping.expiration < time) {
                targets = ping.player function_9c9adcf1();
                if (isdefined(level.var_75bb902f)) {
                    targets = [[ level.var_75bb902f ]]();
                }
                ping.player function_b56144ae(targets, ping.eventtype, 1, ping.location, ping.param, ping.id);
                function_aa50d3e4(ping);
            }
        }
        wait(1);
    }
}

