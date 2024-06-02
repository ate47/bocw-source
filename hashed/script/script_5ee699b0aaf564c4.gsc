// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\territory_util.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\spectating.gsc;
#using script_7dc3a36c222eaf22;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\oob.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\player\player_loadout.gsc;
#using script_305d57cf0618009d;
#using scripts\core_common\player\player_insertion.gsc;
#using script_1cc417743d7c262d;
#using scripts\core_common\influencers_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_aaddef5a;

// Namespace namespace_aaddef5a/namespace_f9f7b554
// Params 0, eflags: 0x2 linked
// Checksum 0x1e2d47b4, Offset: 0x180
// Size: 0x25c
function function_98ebe1b4() {
    if (!sessionmodeiswarzonegame()) {
        return;
    }
    callback::on_player_killed(&function_7d709aa4);
    level.var_4cf012f7 = [];
    level.var_4cf012f7[level.var_4cf012f7.size] = {#forwardoffset:300, #rightoffset:100, #upoffset:0};
    level.var_4cf012f7[level.var_4cf012f7.size] = {#forwardoffset:300, #rightoffset:-100, #upoffset:100};
    level.var_4cf012f7[level.var_4cf012f7.size] = {#forwardoffset:150, #rightoffset:300, #upoffset:200};
    level.var_4cf012f7[level.var_4cf012f7.size] = {#forwardoffset:150, #rightoffset:-300, #upoffset:300};
    level.var_4cf012f7[level.var_4cf012f7.size] = {#forwardoffset:0, #rightoffset:500, #upoffset:400};
    level.var_4cf012f7[level.var_4cf012f7.size] = {#forwardoffset:0, #rightoffset:-500, #upoffset:500};
    if (!isdefined(level.var_b113cd65)) {
        level.var_b113cd65 = 1;
    }
    level thread function_1e077098();
}

// Namespace namespace_aaddef5a/namespace_f9f7b554
// Params 1, eflags: 0x2 linked
// Checksum 0x6ca7c798, Offset: 0x3e8
// Size: 0x44
function function_7d709aa4(*params) {
    if (!level.var_d0252074) {
        self thread function_c3144b08();
    }
    self thread function_9505e24b();
}

// Namespace namespace_aaddef5a/namespace_f9f7b554
// Params 0, eflags: 0x2 linked
// Checksum 0xc3061959, Offset: 0x438
// Size: 0x6c
function function_9505e24b() {
    self endon(#"disconnect", #"spawned");
    level endon(#"game_ended");
    while (true) {
        if (self.currentspectatingclient > -1) {
            self.var_26074a5b = self.currentspectatingclient;
        }
        waitframe(1);
    }
}

// Namespace namespace_aaddef5a/namespace_f9f7b554
// Params 0, eflags: 0x2 linked
// Checksum 0xbeaaf5ae, Offset: 0x4b0
// Size: 0xe4
function function_c3144b08() {
    self endon(#"disconnect", #"hash_4651029f46118bc1", #"force_spawn");
    level endon(#"game_ended");
    waitresult = self waittill(#"waitingtospawn");
    var_fa9f2461 = waitresult.timeuntilspawn + -0.5;
    if (var_fa9f2461 > 0) {
        wait(var_fa9f2461);
    }
    if (self.sessionstate != "playing") {
        self.var_d95e672b = 1;
        self luinotifyevent(#"hash_175f8739ed7a932", 0);
    }
}

// Namespace namespace_aaddef5a/namespace_f9f7b554
// Params 0, eflags: 0x0
// Checksum 0x7b494062, Offset: 0x5a0
// Size: 0x22
function function_403f2d91() {
    return getgametypesetting(#"hash_564289af24e283db");
}

// Namespace namespace_aaddef5a/namespace_f9f7b554
// Params 1, eflags: 0x2 linked
// Checksum 0x33c1176d, Offset: 0x5d0
// Size: 0x22a
function function_46fcf917(player) {
    point_team = player.pers[#"team"];
    influencer_team = player.pers[#"team"];
    vis_team_mask = util::getotherteamsmask(player.pers[#"team"]);
    var_5f9a6e72 = ["start_spawn"];
    if (level.var_5e74f048[player.squad].lasttime + 6000 < gettime()) {
        var_ffdfd3c9 = util::get_start_time();
        level.var_5e74f048[player.squad].anchorpoint = getbestspawnpoint(point_team, influencer_team, vis_team_mask, player, 0, var_5f9a6e72);
        util::note_elapsed_time(var_ffdfd3c9, "spawn point");
        level.var_5e74f048[player.squad].lasttime = gettime();
        level.var_5e74f048[player.squad].nextindex = 0;
    }
    var_5a752f59 = level.var_5e74f048[player.squad].anchorpoint;
    assert(isdefined(var_5a752f59));
    if (!isdefined(var_5a752f59)) {
        return {#origin:level.mapcenter, #angles:(0, 0, 0)};
    }
    return function_e624cfcf(player, var_5a752f59[#"origin"], var_5a752f59[#"angles"]);
}

// Namespace namespace_aaddef5a/namespace_f9f7b554
// Params 3, eflags: 0x2 linked
// Checksum 0xb877c530, Offset: 0x808
// Size: 0x20c
function function_e624cfcf(player, origin, angles) {
    nextindex = level.var_5e74f048[player.squad].nextindex % level.var_4cf012f7.size;
    level.var_5e74f048[player.squad].nextindex = nextindex + 1;
    var_4cf012f7 = level.var_4cf012f7[nextindex];
    playerorigin = origin;
    trace = groundtrace(playerorigin + (0, 0, 100), playerorigin - (0, 0, 10100), 0, playerorigin, 0, 0);
    if (trace[#"surfacetype"] == #"none" || trace[#"surfacetype"] == #"default") {
        playerorigin = (playerorigin[0], playerorigin[1], level.mapcenter[2]);
    } else {
        playerorigin = trace[#"position"];
    }
    offset_origin = playerorigin + anglestoforward(angles) * var_4cf012f7.forwardoffset;
    offset_origin += anglestoright(angles) * var_4cf012f7.rightoffset;
    offset_origin += anglestoup(angles) * var_4cf012f7.upoffset;
    return {#origin:offset_origin, #angles:angles};
}

// Namespace namespace_aaddef5a/namespace_f9f7b554
// Params 1, eflags: 0x2 linked
// Checksum 0xe58ac88e, Offset: 0xa20
// Size: 0x34c
function function_96d350e9(spawn) {
    if (!isdefined(self.var_d95e672b)) {
        self thread function_598b9aa7();
    }
    self.var_d95e672b = undefined;
    if (!isdefined(level.inprematchperiod) || level.inprematchperiod) {
        return;
    }
    origin = spawn.origin;
    angles = spawn.angles;
    if (!isdefined(level.var_5e74f048)) {
        level.var_5e74f048 = [];
    }
    if (!isdefined(level.var_5e74f048[self.squad])) {
        level.var_5e74f048[self.squad] = spawnstruct();
    }
    if (!isdefined(level.var_5e74f048[self.squad].lasttime)) {
        level.var_5e74f048[self.squad].lasttime = 0;
    }
    if (!isdefined(level.var_5e74f048[self.squad].nextindex)) {
        level.var_5e74f048[self.squad].nextindex = 0;
    }
    if (isdefined(level.var_9b927bb4)) {
        spawn = [[ level.var_9b927bb4 ]](self);
        origin = spawn.origin;
        angles = spawn.angles;
    } else if (is_true(self.var_20250438)) {
        spawn = function_46fcf917(self);
        origin = spawn.origin;
        angles = spawn.angles;
    } else if (level.var_b113cd65) {
        var_613ca383 = function_70f1d702();
        if (isdefined(var_613ca383)) {
            if (!isdefined(var_613ca383.var_86f5f2a9)) {
                var_613ca383.var_86f5f2a9 = 0;
            }
            if (var_613ca383.var_86f5f2a9 + 3000 < gettime()) {
                var_613ca383.var_86f5f2a9 = gettime();
                var_613ca383.var_9e066a4d = var_613ca383.origin;
            }
            forward = anglestoforward(level.mapcenter - var_613ca383.var_9e066a4d);
            angles = vectortoangles(forward);
            spawn = function_e624cfcf(self, var_613ca383.var_9e066a4d, angles);
            origin = spawn.origin;
            angles = spawn.angles;
        }
    }
    zoffset = getdvarint(#"hash_1e5142ed6dd5c6a0", randomintrange(10000, 10100));
    origin += (0, 0, zoffset);
    self thread function_2613549d(origin, angles);
}

// Namespace namespace_aaddef5a/namespace_f9f7b554
// Params 0, eflags: 0x2 linked
// Checksum 0x2be3c57b, Offset: 0xd78
// Size: 0x6c
function function_598b9aa7() {
    if (!level.var_d0252074) {
        self luinotifyevent(#"hash_300ac247ca9e52d3", 0);
        return;
    }
    wait(0.5);
    if (!isdefined(self)) {
        return;
    }
    self luinotifyevent(#"hash_175f8739ed7a932", 0);
}

// Namespace namespace_aaddef5a/namespace_f9f7b554
// Params 0, eflags: 0x2 linked
// Checksum 0x4cb0f5e9, Offset: 0xdf0
// Size: 0x22a
function function_70f1d702() {
    if (isdefined(self.var_26074a5b)) {
        player = getentbynum(self.var_26074a5b);
        if (isalive(player) && player.team == self.team) {
            return player;
        }
    }
    players = function_a1cff525(self.squad);
    validplayers = [];
    time = gettime();
    foreach (player in players) {
        if (player == self) {
            continue;
        }
        if (player function_9a0edd92() || player isinfreefall()) {
            continue;
        }
        if (is_true(player.laststand)) {
            continue;
        }
        if (player player_insertion::function_51350a25()) {
            continue;
        }
        if (player isinvehicle()) {
            vehicle = player getvehicleoccupied();
            if (isdefined(vehicle.var_38800c0) && vehicle.var_38800c0 != 1) {
                continue;
            }
        }
        if (player.lastspawntime < time) {
            validplayers[validplayers.size] = player;
        }
    }
    if (validplayers.size > 0) {
        return validplayers[randomint(validplayers.size)];
    }
    return undefined;
}

// Namespace namespace_aaddef5a/namespace_f9f7b554
// Params 2, eflags: 0x0
// Checksum 0x9a575d8d, Offset: 0x1028
// Size: 0x18c
function function_b74c009d(groundpoint, angles) {
    players = function_c65231e2(self.squad);
    if (players.size <= 0) {
        return;
    }
    for (squadindex = 0; squadindex < players.size; squadindex++) {
        if (self == players[squadindex]) {
            break;
        }
    }
    slice = 360 / players.size;
    angle = squadindex * slice;
    r = randomintrange(150, 200);
    xoffset = r * cos(angle);
    yoffset = r * sin(angle);
    zoffset = getdvarint(#"hash_1e5142ed6dd5c6a0", randomintrange(10000, 10100));
    origin = groundpoint + (xoffset, yoffset, zoffset);
    self thread function_2613549d(origin, angles);
}

// Namespace namespace_aaddef5a/namespace_f9f7b554
// Params 2, eflags: 0x2 linked
// Checksum 0x890d79ad, Offset: 0x11c0
// Size: 0x2cc
function function_2613549d(origin, angles) {
    level endon(#"game_ended");
    self endon(#"disconnect", #"end_respawn");
    if (isbot(self) && is_true(self.bot.var_6af67fd1)) {
        return 0;
    }
    vehicle = self.var_b88236d6;
    self.var_b88236d6 = undefined;
    launchvelocity = (0, 0, 0);
    self spawn(origin, angles);
    if (isdefined(vehicle)) {
        vehicle.origin = origin;
        vehicle.angles = angles;
        self ghost();
        self notsolid();
        self dontinterpolate();
        self setclientthirdperson(1);
        self function_648c1f6(vehicle, undefined, 0, 180, 180, 180, 180, 0);
        self setplayerangles(angles);
        wait(0);
        self setclientthirdperson(0);
        self startcameratween(0);
        self show();
        self solid();
        self unlink();
        launchvelocity = anglestoforward(self getplayerangles());
        vehicle deletedelay();
    }
    self setplayerangles((85, angles[1], 0));
    self player_insertion::start_freefall(launchvelocity, 1);
    self function_c147c6c5();
    level thread function_5d5011dc(self);
}

// Namespace namespace_aaddef5a/namespace_f9f7b554
// Params 1, eflags: 0x2 linked
// Checksum 0x32c207d4, Offset: 0x1498
// Size: 0x58
function function_5d5011dc(var_b1cf3b20) {
    wait(1);
    if (!isdefined(var_b1cf3b20)) {
        return;
    }
    level.var_a349ea8[var_b1cf3b20 getentitynumber()] = undefined;
    level.var_c1413cbd[level.var_c1413cbd.size] = var_b1cf3b20;
}

// Namespace namespace_aaddef5a/namespace_f9f7b554
// Params 0, eflags: 0x2 linked
// Checksum 0xab02dc72, Offset: 0x14f8
// Size: 0x4fe
function function_1e077098() {
    level endon(#"game_ended");
    level.var_c1413cbd = [];
    var_e11beb90 = sqr(500);
    level.var_a349ea8 = [];
    while (true) {
        var_dbcced97 = [];
        var_c1413cbd = level.var_c1413cbd;
        level.var_c1413cbd = [];
        var_24c3509f = 0;
        foreach (var_ab9478c7 in var_c1413cbd) {
            if (var_24c3509f >= 2) {
                var_24c3509f = 0;
                waitframe(1);
            }
            var_24c3509f++;
            if (!isdefined(var_ab9478c7)) {
                continue;
            }
            if (var_ab9478c7 isonground()) {
                level.var_a349ea8[var_ab9478c7 getentitynumber()] = undefined;
                continue;
            }
            trace = groundtrace(var_ab9478c7.origin, var_ab9478c7.origin - (0, 0, 5000), 0, var_ab9478c7, 0, 0);
            if (trace[#"surfacetype"] == #"none") {
                var_dbcced97[var_dbcced97.size] = var_ab9478c7;
                continue;
            }
            if (distancesquared(var_ab9478c7.origin, trace[#"position"]) < var_e11beb90) {
                level.var_a349ea8[var_ab9478c7 getentitynumber()] = undefined;
                continue;
            }
            var_7ec01616 = getplayers(undefined, trace[#"position"], 3000);
            var_c3d4dc49 = isdefined(level.var_a349ea8[var_ab9478c7 getentitynumber()]) ? level.var_a349ea8[var_ab9478c7 getentitynumber()] : [];
            foreach (var_ba607277 in var_7ec01616) {
                if (var_ba607277 == var_ab9478c7) {
                    continue;
                }
                if (!isalive(var_ba607277)) {
                    continue;
                }
                if (isdefined(var_c3d4dc49[var_ba607277 getentitynumber()])) {
                    continue;
                }
                if (var_ba607277.team != var_ab9478c7.team) {
                    if (isdefined(var_ba607277.var_7adbb832) && var_ba607277.var_7adbb832 > gettime()) {
                        continue;
                    }
                    var_ba607277 globallogic_audio::play_taacom_dialog("airSpawnEnemyDropping", undefined, undefined, undefined, undefined, undefined, 1);
                    var_ba607277.var_7adbb832 = gettime() + int(5 * 1000);
                } else {
                    if (isdefined(var_ba607277.var_291cbaa3) && var_ba607277.var_291cbaa3 > gettime()) {
                        continue;
                    }
                    var_ba607277 globallogic_audio::play_taacom_dialog("airSpawnFriendlyDropping", undefined, undefined, undefined, undefined, undefined, 1);
                    var_ba607277.var_291cbaa3 = gettime() + int(5 * 1000);
                }
                var_c3d4dc49[var_ba607277 getentitynumber()] = 1;
            }
            level.var_a349ea8[var_ab9478c7 getentitynumber()] = var_c3d4dc49;
            var_dbcced97[var_dbcced97.size] = var_ab9478c7;
        }
        level.var_c1413cbd = arraycombine(var_dbcced97, level.var_c1413cbd, 0, 0);
        waitframe(1);
    }
}

// Namespace namespace_aaddef5a/namespace_f9f7b554
// Params 0, eflags: 0x2 linked
// Checksum 0x91e14b84, Offset: 0x1a00
// Size: 0x34
function function_c147c6c5() {
    if (isdefined(level.var_a1c77c9c)) {
        [[ level.var_a1c77c9c ]](self.team, self.curclass);
    }
}

