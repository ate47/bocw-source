// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\bb.gsc;
#using scripts\core_common\match_record.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\gamestate.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\mp_common\gametypes\globallogic_utils.gsc;

#namespace player_monitor;

// Namespace player_monitor/player_monitor
// Params 0, eflags: 0x5
// Checksum 0x4b369126, Offset: 0xf8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"player_monitor", &preinit, undefined, undefined, undefined);
}

// Namespace player_monitor/player_monitor
// Params 0, eflags: 0x6 linked
// Checksum 0xc542b240, Offset: 0x140
// Size: 0x44
function private preinit() {
    callback::on_player_killed(&on_player_killed);
    callback::on_end_game(&on_end_game);
}

// Namespace player_monitor/player_monitor
// Params 0, eflags: 0x2 linked
// Checksum 0xc5dfcb84, Offset: 0x190
// Size: 0x144
function monitor() {
    if (sessionmodeismultiplayergame()) {
        if (!isbot(self) && getdvarint(#"hash_18b3343408da85f5", 0) == 1) {
            self thread breadcrumbs();
        }
    } else if (sessionmodeiswarzonegame()) {
        if (!isbot(self) && getdvarint(#"hash_6d5a49354d02940d", 0) == 1) {
            self thread breadcrumbs();
        }
    }
    self thread travel_dist();
    if (sessionmodeiswarzonegame()) {
        self function_654cd97();
        return;
    }
    self thread inactivity();
}

// Namespace player_monitor/player_monitor
// Params 4, eflags: 0x2 linked
// Checksum 0xd3d2187a, Offset: 0x2e0
// Size: 0x1a2
function function_d35f877a(player, *weapon, statname, value = 0) {
    if (isdefined(weapon.var_3dc66299)) {
        if (statname == #"shots") {
            weapon.var_3dc66299.shots += value;
            return;
        }
        if (statname == #"hits") {
            weapon.var_3dc66299.hits += value;
            return;
        }
        if (statname == #"kills") {
            weapon.var_3dc66299.kills += value;
            return;
        }
        if (statname == #"deathsduringuse") {
            weapon.var_3dc66299.deathsduringuse += value;
            return;
        }
        if (statname == #"headshots") {
            weapon.var_3dc66299.headshots += value;
        }
    }
}

// Namespace player_monitor/player_monitor
// Params 1, eflags: 0x2 linked
// Checksum 0x1ba75159, Offset: 0x490
// Size: 0x3c
function function_36185795(*params) {
    if (isalive(self)) {
        waittillframeend();
        self function_43e771ee();
    }
}

// Namespace player_monitor/player_monitor
// Params 1, eflags: 0x6 linked
// Checksum 0x82edba79, Offset: 0x4d8
// Size: 0x36a
function private function_43e771ee(died = 0) {
    if (!isdefined(self)) {
        return;
    }
    self endon(#"disconnect");
    if (isdefined(self.var_3dc66299.currentweapon)) {
        timeused = function_f8d53445() - self.var_3dc66299.starttime;
        if (self.var_3dc66299.shots > 0 || timeused >= 2000) {
            longesthitdist = 0;
            currentlifeindex = self match_record::get_player_stat(#"hash_ec4aea1a8bbd82");
            if (isdefined(currentlifeindex)) {
                longesthitdist = self match_record::get_stat(#"lives", currentlifeindex, "longest_hit_distance");
                self match_record::set_stat(#"lives", currentlifeindex, "longest_hit_distance", 0);
            }
            if (self.var_3dc66299.deathsduringuse > 0) {
                died = 1;
            }
            var_27047881 = int(timeused / 1000);
            attachments = bb::function_285f8efd(self.var_3dc66299.currentweapon);
            reticle = hash(self getweaponoptic(self.var_3dc66299.currentweapon));
            var_178db383 = spawnstruct();
            var_178db383.shots = self.var_3dc66299.shots;
            var_178db383.hits = self.var_3dc66299.hits;
            var_178db383.kills = self.var_3dc66299.kills;
            var_178db383.headshots = self.var_3dc66299.headshots;
            var_178db383.died = died;
            var_178db383.time_used_s = var_27047881;
            var_178db383.longest_hit_distance = longesthitdist;
            var_178db383.attachment1 = attachments.attachment0;
            var_178db383.attachment2 = attachments.attachment1;
            var_178db383.attachment3 = attachments.attachment2;
            var_178db383.attachment4 = attachments.attachment3;
            var_178db383.attachment5 = attachments.attachment4;
            var_178db383.attachment6 = attachments.attachment5;
            var_178db383.attachment7 = attachments.attachment6;
            var_178db383.reticle = reticle;
            var_178db383.weapon = self.var_3dc66299.currentweapon.name;
            function_92d1707f(#"hash_618e6178a21f0b3d", var_178db383);
            self.var_3dc66299.currentweapon = undefined;
        }
    }
}

// Namespace player_monitor/weapon_change_complete
// Params 1, eflags: 0x20
// Checksum 0xa97f7167, Offset: 0x850
// Size: 0x102
function event_handler[weapon_change_complete] function_91abdff4(eventstruct) {
    if (!sessionmodeiswarzonegame()) {
        return;
    }
    if (game.state == #"playing") {
        if (isdefined(eventstruct.weapon)) {
            self function_43e771ee();
            if (!isdefined(self.var_3dc66299)) {
                self.var_3dc66299 = {};
            }
            self.var_3dc66299.currentweapon = eventstruct.weapon;
            self.var_3dc66299.starttime = function_f8d53445();
            self.var_3dc66299.shots = 0;
            self.var_3dc66299.hits = 0;
            self.var_3dc66299.kills = 0;
            self.var_3dc66299.deathsduringuse = 0;
            self.var_3dc66299.headshots = 0;
        }
    }
}

// Namespace player_monitor/player_monitor
// Params 1, eflags: 0x2 linked
// Checksum 0x9f0a0a15, Offset: 0x960
// Size: 0x94
function on_player_killed(*params) {
    self function_43e771ee(1);
    if (isdefined(self.lastswimmingstarttime) && self isplayerswimming()) {
        self function_9fabf258();
    }
    if (isdefined(self.lastwallrunstarttime) && self isplayerwallrunning()) {
        self function_83433c76();
    }
}

// Namespace player_monitor/player_monitor
// Params 0, eflags: 0x6 linked
// Checksum 0x7e4df700, Offset: 0xa00
// Size: 0x82
function private function_654cd97() {
    self.var_3dc66299 = {};
    self.var_3dc66299.starttime = -1;
    self.var_3dc66299.shots = 0;
    self.var_3dc66299.hits = 0;
    self.var_3dc66299.kills = 0;
    self.var_3dc66299.deathsduringuse = 0;
    self.var_3dc66299.headshots = 0;
    self.var_3dc66299.currentweapon = undefined;
}

// Namespace player_monitor/player_monitor
// Params 0, eflags: 0x6 linked
// Checksum 0xc61a263e, Offset: 0xa90
// Size: 0x19e
function private breadcrumbs() {
    self endon(#"death", #"disconnect");
    level endon(#"game_ended");
    waittime = 10;
    if (sessionmodeismultiplayergame()) {
        while (level.inprematchperiod) {
            waitframe(1);
        }
        waittime = getdvarfloat(#"hash_78606296733432c4", 2);
    } else if (sessionmodeiswarzonegame()) {
        level waittill(#"game_playing");
        waittime = getdvarfloat(#"hash_2872d2b12241500c", 4);
    }
    while (true) {
        if (isalive(self)) {
            lifeindex = isdefined(self.pers[#"telemetry"].life.life_index) ? self.pers[#"telemetry"].life.life_index : -1;
            recordbreadcrumbdataforplayer(self, lifeindex);
        }
        wait(waittime);
    }
}

// Namespace player_monitor/player_monitor
// Params 0, eflags: 0x6 linked
// Checksum 0x4767f333, Offset: 0xc38
// Size: 0x552
function private travel_dist() {
    self notify("46c3d76bfbd558e8");
    self endon("46c3d76bfbd558e8");
    self.time_played_moving = self.pers[#"time_played_moving"];
    if (!isdefined(self.pers[#"movement_update_count"])) {
        self.pers[#"movement_update_count"] = 0;
    }
    prevpos = self.origin;
    positionptm = self.origin;
    var_aab0a48f = 0;
    var_601d5ffc = 0;
    var_ec704eef = 0;
    var_365f7ec5 = 0;
    var_7e8e90a4 = 0;
    var_87a9b1b1 = 0;
    while (true) {
        profilestart();
        if (!isdefined(self)) {
            profilestop();
            return;
        }
        is_alive = isalive(self);
        if (is_alive) {
            dist = distance(self.origin, prevpos);
            var_365f7ec5 += dist;
            if (dist > 0 && game.state == #"playing") {
                if (!self isinvehicle()) {
                    groundent = self getgroundent();
                    if (isdefined(groundent) && !isvehicle(groundent)) {
                        var_7e8e90a4 += dist;
                        if (is_true(self.outsidedeathcircle)) {
                            var_87a9b1b1 += dist;
                        }
                    }
                }
            }
            var_601d5ffc++;
            prevpos = self.origin;
            if (dist >= 1.6) {
                var_aab0a48f += 1;
            }
        }
        if (var_601d5ffc % 5 == 0 || !is_alive || isdefined(self.usingremote)) {
            if (var_aab0a48f > 0) {
                distancemoved = distance(self.origin, positionptm);
                if (distancemoved > 16) {
                    var_ec704eef += distancemoved;
                    self.time_played_moving += var_aab0a48f;
                }
            }
            positionptm = self.origin;
            var_aab0a48f = 0;
        }
        profilestop();
        if (is_alive && isdefined(self.usingremote)) {
            self waittill(#"stopped_using_remote", #"death", #"disconnect", #"hash_44f09afc8f27cf23");
            if (isdefined(self)) {
                prevpos = self.origin;
                positionptm = self.origin;
                is_alive = isalive(self);
            }
        }
        if (isdefined(self) && (!is_alive || level.gameended === 1 || self.player_disconnected === 1)) {
            self stats::function_d40764f3(#"distance_traveled_foot", int(var_7e8e90a4));
            self stats::function_d40764f3(#"hash_630fffa7f053a2b7", int(var_87a9b1b1));
            self match_record::function_34800eec(#"hash_630fffa7f053a2b7", int(var_87a9b1b1));
            self.pers[#"total_distance_travelled"] = self.pers[#"total_distance_travelled"] + var_365f7ec5;
            self.pers[#"movement_update_count"] = self.pers[#"movement_update_count"] + var_601d5ffc;
            self.pers[#"hash_20464b40eeb9b465"] = self.pers[#"hash_20464b40eeb9b465"] + var_ec704eef;
            self.pers[#"time_played_moving"] = self.time_played_moving;
            return;
        }
        self waittilltimeout(1, #"death", #"disconnect", #"hash_44f09afc8f27cf23");
    }
}

// Namespace player_monitor/player_monitor
// Params 0, eflags: 0x2 linked
// Checksum 0x3dad37e1, Offset: 0x1198
// Size: 0x36
function on_end_game() {
    if (!isplayer(self)) {
        return;
    }
    self notify(#"hash_44f09afc8f27cf23");
}

// Namespace player_monitor/wallrun_begin
// Params 1, eflags: 0x20
// Checksum 0x2c896dcf, Offset: 0x11d8
// Size: 0x16
function event_handler[wallrun_begin] function_f69038ac(*eventstruct) {
    self.lastwallrunstarttime = gettime();
}

// Namespace player_monitor/wallrun_end
// Params 1, eflags: 0x20
// Checksum 0x1d70aa91, Offset: 0x11f8
// Size: 0x24
function event_handler[wallrun_end] function_830b9d71(*eventstruct) {
    self function_83433c76();
}

// Namespace player_monitor/player_monitor
// Params 0, eflags: 0x2 linked
// Checksum 0xbf8bee51, Offset: 0x1228
// Size: 0x36
function function_83433c76() {
    if (!isdefined(self.timespentwallrunninginlife)) {
        self.timespentwallrunninginlife = 0;
    }
    self.timespentwallrunninginlife += gettime() - self.lastwallrunstarttime;
}

// Namespace player_monitor/swimming_begin
// Params 1, eflags: 0x20
// Checksum 0xef1b3283, Offset: 0x1268
// Size: 0x16
function event_handler[swimming_begin] function_d18b7e6e(*eventstruct) {
    self.lastswimmingstarttime = gettime();
}

// Namespace player_monitor/swimming_end
// Params 1, eflags: 0x20
// Checksum 0xd022ba2f, Offset: 0x1288
// Size: 0x24
function event_handler[swimming_end] function_b3154405(*eventstruct) {
    self function_9fabf258();
}

// Namespace player_monitor/player_monitor
// Params 0, eflags: 0x2 linked
// Checksum 0x1e73cebf, Offset: 0x12b8
// Size: 0x36
function function_9fabf258() {
    if (!isdefined(self.timespentswimminginlife)) {
        self.timespentswimminginlife = 0;
    }
    self.timespentswimminginlife += gettime() - self.lastswimmingstarttime;
}

// Namespace player_monitor/slide_begin
// Params 1, eflags: 0x20
// Checksum 0xdcc3aeb4, Offset: 0x12f8
// Size: 0x38
function event_handler[slide_begin] function_86596790(*eventstruct) {
    self.lastslidestarttime = gettime();
    if (!isdefined(self.numberofslidesinlife)) {
        self.numberofslidesinlife = 0;
    }
    self.numberofslidesinlife++;
}

// Namespace player_monitor/doublejump_begin
// Params 1, eflags: 0x20
// Checksum 0xe229bda0, Offset: 0x1338
// Size: 0x38
function event_handler[doublejump_begin] function_2d820dd0(*eventstruct) {
    self.lastdoublejumpstarttime = gettime();
    if (!isdefined(self.numberofdoublejumpsinlife)) {
        self.numberofdoublejumpsinlife = 0;
    }
    self.numberofdoublejumpsinlife++;
}

// Namespace player_monitor/player_monitor
// Params 0, eflags: 0x6 linked
// Checksum 0x7c28be15, Offset: 0x1378
// Size: 0xe6
function private inactivity() {
    self endon(#"disconnect");
    self notify(#"player_monitor_inactivity");
    self endon(#"player_monitor_inactivity");
    wait(10);
    while (true) {
        if (isdefined(self)) {
            if (self isremotecontrolling() || self util::isusingremote() || is_true(level.inprematchperiod) || is_true(self.var_4c45f505)) {
                self resetinactivitytimer();
            }
        }
        wait(5);
    }
}

