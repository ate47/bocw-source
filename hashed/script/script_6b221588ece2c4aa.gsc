// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weaponobjects.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\util_shared.gsc;

#namespace weaponobjects;

// Namespace weaponobjects/namespace_4c668920
// Params 0, eflags: 0x2 linked
// Checksum 0x6ceb7364, Offset: 0xb0
// Size: 0x15c
function function_b455d5d8() {
    function_e6400478(#"tactical_insertion", &createtactinsertwatcher, 1);
    function_e6400478(#"rcbomb", &creatercbombwatcher, 1);
    function_e6400478(#"qrdrone", &createqrdronewatcher, 1);
    function_e6400478(#"helicopter_player", &createplayerhelicopterwatcher, 1);
    function_e6400478(#"tr_flechette_t8", &function_1eaa3e20);
    if (is_true(level.var_b68902c4)) {
        function_e6400478(#"tr_flechette_t8_upgraded", &function_1eaa3e20);
    }
}

// Namespace weaponobjects/namespace_4c668920
// Params 1, eflags: 0x2 linked
// Checksum 0xdb83d73e, Offset: 0x218
// Size: 0xe2
function createspecialcrossbowwatchertypes(watcher) {
    watcher.ondetonatecallback = &delete;
    watcher.ondamage = &util::void;
    if (is_true(level.b_crossbow_bolt_destroy_on_impact)) {
        watcher.onspawn = &onspawncrossbowboltimpact;
        watcher.onspawnretrievetriggers = &util::void;
        watcher.pickup = &util::void;
        return;
    }
    watcher.onspawn = &onspawncrossbowbolt;
    watcher.onspawnretrievetriggers = &function_23b0aea9;
    watcher.pickup = &function_d9219ce2;
}

// Namespace weaponobjects/namespace_4c668920
// Params 0, eflags: 0x0
// Checksum 0x6bb7d7a0, Offset: 0x308
// Size: 0x8c
function function_f297d773() {
    function_e6400478(#"special_crossbow_t9", &createspecialcrossbowwatchertypes, 1);
    if (is_true(level.b_create_upgraded_crossbow_watchers)) {
        function_e6400478(#"special_crossbow_t9_upgraded", &createspecialcrossbowwatchertypes, 1);
    }
}

// Namespace weaponobjects/namespace_4c668920
// Params 1, eflags: 0x2 linked
// Checksum 0x2d0d3606, Offset: 0x3a0
// Size: 0x26
function function_1eaa3e20(watcher) {
    watcher.notequipment = 1;
    watcher.onfizzleout = undefined;
}

// Namespace weaponobjects/namespace_4c668920
// Params 1, eflags: 0x2 linked
// Checksum 0xa1d684d7, Offset: 0x3d0
// Size: 0x16
function createtactinsertwatcher(watcher) {
    watcher.playdestroyeddialog = 0;
}

// Namespace weaponobjects/namespace_4c668920
// Params 1, eflags: 0x2 linked
// Checksum 0xd1f245f6, Offset: 0x3f0
// Size: 0x6e
function creatercbombwatcher(watcher) {
    watcher.altdetonate = 0;
    watcher.ismovable = 1;
    watcher.ownergetsassist = 1;
    watcher.playdestroyeddialog = 0;
    watcher.deleteonkillbrush = 0;
    watcher.ondetonatecallback = level.rcbombonblowup;
    watcher.stuntime = 1;
    watcher.notequipment = 1;
}

// Namespace weaponobjects/namespace_4c668920
// Params 1, eflags: 0x2 linked
// Checksum 0x145f32a0, Offset: 0x468
// Size: 0x7e
function createqrdronewatcher(watcher) {
    watcher.altdetonate = 0;
    watcher.ismovable = 1;
    watcher.ownergetsassist = 1;
    watcher.playdestroyeddialog = 0;
    watcher.deleteonkillbrush = 0;
    watcher.ondetonatecallback = level.qrdroneonblowup;
    watcher.ondamage = level.qrdroneondamage;
    watcher.stuntime = 5;
    watcher.notequipment = 1;
}

// Namespace weaponobjects/namespace_4c668920
// Params 1, eflags: 0x2 linked
// Checksum 0xea3a968e, Offset: 0x4f0
// Size: 0xb2
function getspikelauncheractivespikecount(watcher) {
    currentitemcount = 0;
    foreach (obj in watcher.objectarray) {
        if (isdefined(obj) && obj.item !== watcher.weapon) {
            currentitemcount++;
        }
    }
    return currentitemcount;
}

// Namespace weaponobjects/namespace_4c668920
// Params 1, eflags: 0x0
// Checksum 0x9b17f87d, Offset: 0x5b0
// Size: 0xe6
function watchspikelauncheritemcountchanged(watcher) {
    self endon(#"death");
    lastitemcount = undefined;
    while (true) {
        waitresult = self waittill(#"weapon_change");
        for (weapon = waitresult.weapon; weapon.name == #"spike_launcher"; weapon = self getcurrentweapon()) {
            currentitemcount = getspikelauncheractivespikecount(watcher);
            if (currentitemcount !== lastitemcount) {
                lastitemcount = currentitemcount;
            }
            wait(0.1);
        }
    }
}

// Namespace weaponobjects/namespace_4c668920
// Params 1, eflags: 0x2 linked
// Checksum 0x108a66cb, Offset: 0x6a0
// Size: 0x3e
function spikesdetonating(watcher) {
    spikecount = getspikelauncheractivespikecount(watcher);
    if (spikecount > 0) {
        wait(2);
    }
}

// Namespace weaponobjects/namespace_4c668920
// Params 1, eflags: 0x0
// Checksum 0x4e5c4b2a, Offset: 0x6e8
// Size: 0x11a
function createspikelauncherwatcher(watcher) {
    watcher.altname = #"spike_charge";
    watcher.altweapon = getweapon(#"spike_charge");
    watcher.altdetonate = 0;
    watcher.watchforfire = 1;
    watcher.hackable = 1;
    watcher.hackertoolradius = level.equipmenthackertoolradius;
    watcher.hackertooltimems = level.equipmenthackertooltimems;
    watcher.ondetonatecallback = &spikedetonate;
    watcher.onstun = &weaponstun;
    watcher.stuntime = 1;
    watcher.ownergetsassist = 1;
    watcher.detonatestationary = 0;
    watcher.detonationdelay = 0;
    watcher.detonationsound = #"wpn_claymore_alert";
    watcher.ondetonationhandle = &spikesdetonating;
}

// Namespace weaponobjects/namespace_4c668920
// Params 1, eflags: 0x2 linked
// Checksum 0x3534eb35, Offset: 0x810
// Size: 0x26
function createplayerhelicopterwatcher(watcher) {
    watcher.altdetonate = 1;
    watcher.notequipment = 1;
}

// Namespace weaponobjects/namespace_4c668920
// Params 1, eflags: 0x0
// Checksum 0x86bf94a6, Offset: 0x840
// Size: 0x42
function function_50d4198b(watcher) {
    watcher.hackable = 0;
    watcher.headicon = 0;
    watcher.enemydestroy = 0;
    watcher.onspawn = &function_f0e307a2;
}

// Namespace weaponobjects/namespace_4c668920
// Params 2, eflags: 0x2 linked
// Checksum 0x4ecf2579, Offset: 0x890
// Size: 0xc4
function function_f0e307a2(watcher, player) {
    level endon(#"game_ended");
    self endon(#"death");
    if (isdefined(player)) {
        player stats::function_e24eec31(self.weapon, #"used", 1);
    }
    self playloopsound(#"uin_c4_air_alarm_loop");
    self waittilltimeout(10, #"stationary");
    function_b70eb3a9(watcher, player);
}

// Namespace weaponobjects/namespace_4c668920
// Params 2, eflags: 0x2 linked
// Checksum 0xc6a86631, Offset: 0x960
// Size: 0xc4
function function_b70eb3a9(*watcher, player) {
    pos = self.origin + (0, 0, 15);
    self.ammo_trigger = spawn("trigger_radius", pos, 0, 50, 50);
    self.ammo_trigger setteamfortrigger(player.team);
    self.ammo_trigger.owner = player;
    self thread function_5742754c();
    self thread function_42eeab72(self);
}

// Namespace weaponobjects/namespace_4c668920
// Params 0, eflags: 0x2 linked
// Checksum 0xe7213601, Offset: 0xa30
// Size: 0x150
function function_5742754c() {
    station = self;
    station endon(#"death");
    if (!isdefined(station.ammo_resupplies_given)) {
        station.ammo_resupplies_given = 0;
    }
    assert(isdefined(station.ammo_trigger));
    trigger = station.ammo_trigger;
    while (isdefined(trigger)) {
        waitresult = trigger waittill(#"touch");
        player = waitresult.entity;
        if (!isplayer(player)) {
            continue;
        }
        if (!isalive(player)) {
            continue;
        }
        if (isdefined(trigger.team) && util::function_fbce7263(player.team, trigger.team)) {
            continue;
        }
        station function_e98cee52(player, station);
    }
}

// Namespace weaponobjects/namespace_4c668920
// Params 2, eflags: 0x2 linked
// Checksum 0x1cc4cd73, Offset: 0xb88
// Size: 0x16c
function function_e98cee52(player, station) {
    primary_weapons = player getweaponslistprimaries();
    var_c20b09e1 = 0;
    foreach (weapon in primary_weapons) {
        var_c20b09e1 |= player function_61bdb626(weapon);
    }
    if (!var_c20b09e1) {
        return;
    }
    if (!isdefined(station.last_ammo_resupply_time)) {
        station.last_ammo_resupply_time = [];
    }
    station.last_ammo_resupply_time[player getentitynumber()] = gettime();
    station.ammo_resupplies_given++;
    if (station.ammo_resupplies_given >= 1) {
        station function_f47cd4cb();
        station delete();
    }
}

// Namespace weaponobjects/namespace_4c668920
// Params 1, eflags: 0x2 linked
// Checksum 0x23b96430, Offset: 0xd00
// Size: 0xa4
function function_61bdb626(weapon) {
    player = self;
    new_ammo = weapon.clipsize;
    stockammo = player getweaponammostock(weapon);
    player setweaponammostock(weapon, int(stockammo + new_ammo));
    newammo = player getweaponammostock(weapon);
    return newammo > stockammo;
}

// Namespace weaponobjects/namespace_4c668920
// Params 1, eflags: 0x2 linked
// Checksum 0x3e2c9e04, Offset: 0xdb0
// Size: 0x34
function function_42eeab72(*station) {
    self waittill(#"death");
    self function_f47cd4cb();
}

// Namespace weaponobjects/namespace_4c668920
// Params 0, eflags: 0x2 linked
// Checksum 0xa25a731c, Offset: 0xdf0
// Size: 0x2c
function function_f47cd4cb() {
    if (isdefined(self.ammo_trigger)) {
        self.ammo_trigger delete();
    }
}

// Namespace weaponobjects/namespace_4c668920
// Params 2, eflags: 0x2 linked
// Checksum 0x252cf1a4, Offset: 0xe28
// Size: 0xe4
function delayedspikedetonation(attacker, weapon) {
    if (!isdefined(self.owner.spikedelay)) {
        self.owner.spikedelay = 0;
    }
    delaytime = self.owner.spikedelay;
    owner = self.owner;
    self.owner.spikedelay += 0.3;
    waittillframeend();
    wait(delaytime);
    owner.spikedelay -= 0.3;
    if (isdefined(self)) {
        self weapondetonate(attacker, weapon);
    }
}

// Namespace weaponobjects/namespace_4c668920
// Params 3, eflags: 0x2 linked
// Checksum 0x35a0fe1, Offset: 0xf18
// Size: 0x6c
function spikedetonate(attacker, weapon, *target) {
    if (isdefined(target) && target.isvalid) {
        if (isdefined(weapon)) {
            if (self.owner util::isenemyplayer(weapon)) {
            }
        }
    }
    thread delayedspikedetonation(weapon, target);
}

// Namespace weaponobjects/namespace_4c668920
// Params 2, eflags: 0x2 linked
// Checksum 0xe8c1d050, Offset: 0xf90
// Size: 0x3c
function onspawncrossbowbolt(watcher, player) {
    self.delete_on_death = 1;
    self thread onspawncrossbowbolt_internal(watcher, player);
}

// Namespace weaponobjects/namespace_4c668920
// Params 2, eflags: 0x2 linked
// Checksum 0x67bc48be, Offset: 0xfd8
// Size: 0xdc
function onspawncrossbowbolt_internal(*watcher, player) {
    player endon(#"disconnect");
    self endon(#"death");
    wait(0.25);
    linkedent = self getlinkedent();
    if (!isdefined(linkedent) || !isvehicle(linkedent)) {
        self.takedamage = 0;
        return;
    }
    self.takedamage = 1;
    if (isvehicle(linkedent)) {
        self thread dieonentitydeath(linkedent, player);
    }
}

// Namespace weaponobjects/namespace_4c668920
// Params 2, eflags: 0x2 linked
// Checksum 0xec770cdc, Offset: 0x10c0
// Size: 0x3c
function onspawncrossbowboltimpact(s_watcher, e_player) {
    self.delete_on_death = 1;
    self thread onspawncrossbowboltimpact_internal(s_watcher, e_player);
}

// Namespace weaponobjects/namespace_4c668920
// Params 2, eflags: 0x2 linked
// Checksum 0x26f31165, Offset: 0x1108
// Size: 0x10c
function onspawncrossbowboltimpact_internal(s_watcher, e_player) {
    self endon(#"death");
    e_player endon(#"disconnect");
    self waittill(#"stationary");
    s_watcher thread waitandfizzleout(self, 0);
    foreach (n_index, e_object in s_watcher.objectarray) {
        if (self == e_object) {
            s_watcher.objectarray[n_index] = undefined;
        }
    }
    cleanweaponobjectarray(s_watcher);
}

// Namespace weaponobjects/namespace_4c668920
// Params 2, eflags: 0x2 linked
// Checksum 0x5c5d3ea8, Offset: 0x1220
// Size: 0xb6
function dieonentitydeath(entity, player) {
    player endon(#"disconnect");
    self endon(#"death");
    alreadydead = entity.dead === 1 || isdefined(entity.health) && entity.health < 0;
    if (!alreadydead) {
        entity waittill(#"death");
    }
    self notify(#"death");
}

