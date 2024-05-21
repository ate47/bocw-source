// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace perks;

// Namespace perks/perks
// Params 0, eflags: 0x5
// Checksum 0x45295b7f, Offset: 0x110
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"perks", &preinit, undefined, undefined, undefined);
}

// Namespace perks/perks
// Params 0, eflags: 0x6 linked
// Checksum 0x101bb13a, Offset: 0x158
// Size: 0x84
function private preinit() {
    clientfield::register("allplayers", "flying", 1, 1, "int");
    callback::on_spawned(&on_player_spawned);
    callback::on_loadout(&on_loadout);
    level.var_222e62a6 = 1;
}

// Namespace perks/perks
// Params 0, eflags: 0x2 linked
// Checksum 0x8976dabf, Offset: 0x1e8
// Size: 0x1c
function on_player_spawned() {
    self thread monitorflight();
}

// Namespace perks/perks
// Params 0, eflags: 0x2 linked
// Checksum 0xe718e425, Offset: 0x210
// Size: 0x34
function on_loadout() {
    self thread monitorgpsjammer();
    self thread monitorsengrenjammer();
}

// Namespace perks/perks
// Params 0, eflags: 0x2 linked
// Checksum 0x9c24ddfc, Offset: 0x250
// Size: 0xcc
function monitorflight() {
    level endon(#"game_ended");
    self endon(#"death", #"disconnect");
    self.flying = 0;
    while (isdefined(self)) {
        flying = !self isonground() || self isplayerswimming();
        if (self.flying != flying) {
            self clientfield::set("flying", flying);
            self.flying = flying;
        }
        waitframe(1);
    }
}

// Namespace perks/perks
// Params 0, eflags: 0x2 linked
// Checksum 0xc4ee3e37, Offset: 0x328
// Size: 0x5dc
function monitorgpsjammer() {
    self notify("6d612c390e1ac8b6");
    self endon("6d612c390e1ac8b6");
    level endon(#"game_ended");
    self endon(#"death", #"disconnect");
    require_perk = 1;
    /#
        require_perk = 0;
    #/
    if (require_perk && self hasperk(#"specialty_gpsjammer") == 0) {
        return;
    }
    graceperiods = self function_ee4a9054(#"grace_periods");
    self clientfield::set("gps_jammer_active", self hasperk(#"specialty_gpsjammer") ? 1 : 0);
    minspeed = self function_ee4a9054(#"min_speed");
    mindistance = self function_ee4a9054(#"min_distance");
    timeperiod = self function_ee4a9054("time_period");
    timeperiodsec = float(timeperiod) / 1000;
    minspeedsq = minspeed * minspeed;
    mindistancesq = mindistance * mindistance;
    if (minspeedsq == 0) {
        return;
    }
    assert(timeperiodsec >= 0.05);
    if (timeperiodsec < 0.05) {
        return;
    }
    hasperk = 1;
    statechange = 0;
    faileddistancecheck = 0;
    currentfailcount = 0;
    timepassed = 0;
    timesincedistancecheck = 0;
    previousorigin = self.origin;
    gpsjammerprotection = 0;
    while (true) {
        /#
            graceperiods = self function_ee4a9054(#"grace_periods");
            minspeed = self function_ee4a9054(#"min_speed");
            mindistance = self function_ee4a9054(#"min_distance");
            timeperiod = self function_ee4a9054("<unknown string>");
            timeperiodsec = float(timeperiod) / 1000;
            minspeedsq = minspeed * minspeed;
            mindistancesq = mindistance * mindistance;
        #/
        gpsjammerprotection = 0;
        if (util::isusingremote() || is_true(self.isplanting) || is_true(self.isdefusing)) {
            gpsjammerprotection = 1;
        } else {
            if (timesincedistancecheck > 1) {
                timesincedistancecheck = 0;
                if (distancesquared(previousorigin, self.origin) < mindistancesq) {
                    faileddistancecheck = 1;
                } else {
                    faileddistancecheck = 0;
                }
                previousorigin = self.origin;
            }
            velocity = self getvelocity();
            speedsq = lengthsquared(velocity);
            if (speedsq > minspeedsq && faileddistancecheck == 0) {
                gpsjammerprotection = 1;
            }
        }
        if (gpsjammerprotection == 1 && self hasperk(#"specialty_gpsjammer")) {
            /#
                if (getdvarint(#"scr_debug_perk_gpsjammer", 0) != 0) {
                    sphere(self.origin + (0, 0, 70), 12, (0, 0, 1), 1, 1, 16, 3);
                }
            #/
            currentfailcount = 0;
            if (hasperk == 0) {
                statechange = 0;
                hasperk = 1;
                self clientfield::set("gps_jammer_active", 1);
            }
        } else {
            currentfailcount++;
            if (hasperk == 1 && currentfailcount >= graceperiods) {
                statechange = 1;
                hasperk = 0;
                self clientfield::set("gps_jammer_active", 0);
            }
        }
        if (statechange == 1) {
            level notify(#"radar_status_change");
        }
        timesincedistancecheck += timeperiodsec;
        wait(timeperiodsec);
    }
}

// Namespace perks/perks
// Params 0, eflags: 0x2 linked
// Checksum 0x5cc25658, Offset: 0x910
// Size: 0x5fc
function monitorsengrenjammer() {
    level endon(#"game_ended");
    self endon(#"death", #"disconnect");
    require_perk = 1;
    /#
        require_perk = 0;
    #/
    if (require_perk && self hasperk(#"specialty_sengrenjammer") == 0) {
        return;
    }
    self clientfield::set("sg_jammer_active", self hasperk(#"specialty_sengrenjammer") ? 1 : 0);
    graceperiods = getdvarint(#"perk_sgjammer_graceperiods", 4);
    minspeed = getdvarint(#"perk_sgjammer_min_speed", 100);
    mindistance = getdvarint(#"perk_sgjammer_min_distance", 10);
    timeperiod = getdvarint(#"perk_sgjammer_time_period", 200);
    timeperiodsec = float(timeperiod) / 1000;
    minspeedsq = minspeed * minspeed;
    mindistancesq = mindistance * mindistance;
    if (minspeedsq == 0) {
        return;
    }
    assert(timeperiodsec >= 0.05);
    if (timeperiodsec < 0.05) {
        return;
    }
    hasperk = 1;
    statechange = 0;
    faileddistancecheck = 0;
    currentfailcount = 0;
    timepassed = 0;
    timesincedistancecheck = 0;
    previousorigin = self.origin;
    sgjammerprotection = 0;
    while (true) {
        /#
            graceperiods = getdvarint(#"perk_sgjammer_graceperiods", graceperiods);
            minspeed = getdvarint(#"perk_sgjammer_min_speed", minspeed);
            mindistance = getdvarint(#"perk_sgjammer_min_distance", mindistance);
            timeperiod = getdvarint(#"perk_sgjammer_time_period", timeperiod);
            timeperiodsec = float(timeperiod) / 1000;
            minspeedsq = minspeed * minspeed;
            mindistancesq = mindistance * mindistance;
        #/
        sgjammerprotection = 0;
        if (util::isusingremote() || is_true(self.isplanting) || is_true(self.isdefusing)) {
            sgjammerprotection = 1;
        } else {
            if (timesincedistancecheck > 1) {
                timesincedistancecheck = 0;
                if (distancesquared(previousorigin, self.origin) < mindistancesq) {
                    faileddistancecheck = 1;
                } else {
                    faileddistancecheck = 0;
                }
                previousorigin = self.origin;
            }
            velocity = self getvelocity();
            speedsq = lengthsquared(velocity);
            if (speedsq > minspeedsq && faileddistancecheck == 0) {
                sgjammerprotection = 1;
            }
        }
        if (sgjammerprotection == 1 && self hasperk(#"specialty_sengrenjammer")) {
            /#
                if (getdvarint(#"scr_debug_perk_sengrenjammer", 0) != 0) {
                    sphere(self.origin + (0, 0, 65), 12, (0, 1, 0), 1, 1, 16, 3);
                }
            #/
            currentfailcount = 0;
            if (hasperk == 0) {
                statechange = 0;
                hasperk = 1;
                self clientfield::set("sg_jammer_active", 1);
            }
        } else {
            currentfailcount++;
            if (hasperk == 1 && currentfailcount >= graceperiods) {
                statechange = 1;
                hasperk = 0;
                self clientfield::set("sg_jammer_active", 0);
            }
        }
        if (statechange == 1) {
            level notify(#"radar_status_change");
        }
        timesincedistancecheck += timeperiodsec;
        wait(timeperiodsec);
    }
}

