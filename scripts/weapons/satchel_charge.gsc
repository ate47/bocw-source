// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weaponobjects.gsc;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\globallogic\globallogic_score.gsc;

#namespace satchel_charge;

// Namespace satchel_charge/satchel_charge
// Params 0, eflags: 0x2 linked
// Checksum 0x4c0cd22c, Offset: 0x148
// Size: 0xa4
function init_shared() {
    if (!isdefined(level.var_ac78d00e)) {
        level.var_ac78d00e = {};
    }
    weaponobjects::function_e6400478(#"satchel_charge", &function_a8a4341, 1);
    callback::on_player_killed(&onplayerkilled);
    clientfield::register("missile", "satchelChargeWarning", 1, 1, "int");
}

// Namespace satchel_charge/satchel_charge
// Params 1, eflags: 0x2 linked
// Checksum 0xa3452511, Offset: 0x1f8
// Size: 0x1c2
function function_a8a4341(watcher) {
    if (sessionmodeiszombiesgame()) {
        watcher.onspawnretrievetriggers = &function_4ba658e5;
        watcher.deleteonplayerspawn = 0;
    }
    if (isdefined(watcher.weapon.customsettings)) {
        var_6f1c6122 = getscriptbundle(watcher.weapon.customsettings);
        assert(isdefined(var_6f1c6122));
        level.var_ac78d00e.var_a74161cc = var_6f1c6122;
    }
    watcher.altdetonate = 1;
    watcher.hackertoolradius = level.equipmenthackertoolradius;
    watcher.hackertooltimems = level.equipmenthackertooltimems;
    watcher.ondetonatecallback = &function_b96af076;
    watcher.onspawn = &function_af3365b5;
    watcher.onstun = &weaponobjects::weaponstun;
    watcher.stuntime = 1;
    watcher.ownergetsassist = 1;
    watcher.detonatestationary = 1;
    watcher.detonationdelay = getdvarfloat(#"hash_6639441fa6223b36", 0);
    watcher.immunespecialty = "specialty_immunetriggerc4";
    watcher.var_296e14ab = 1;
    watcher.var_2fd8b883 = 1;
    if (function_a2f3d962()) {
        watcher.var_e7ebbd38 = &function_a39c62de;
    }
}

// Namespace satchel_charge/satchel_charge
// Params 2, eflags: 0x2 linked
// Checksum 0x7e5521fd, Offset: 0x3c8
// Size: 0x214
function function_af3365b5(watcher, owner) {
    self endon(#"death", #"hacked", #"detonating");
    self thread weaponobjects::onspawnuseweaponobject(watcher, owner);
    self function_619a5c20();
    if (isdefined(owner)) {
        owner stats::function_e24eec31(self.weapon, #"used", 1);
        if (isdefined(level.var_1f5cc2b4)) {
            owner thread [[ level.var_1f5cc2b4 ]]();
        }
        if (!isdefined(owner.var_1e593689)) {
            owner.var_1e593689 = [];
        }
        if (!isdefined(owner.var_1e593689)) {
            owner.var_1e593689 = [];
        } else if (!isarray(owner.var_1e593689)) {
            owner.var_1e593689 = array(owner.var_1e593689);
        }
        owner.var_1e593689[owner.var_1e593689.size] = self;
    }
    self.var_3f9bd15 = &function_9b8337c3;
    if (function_a2f3d962()) {
        self thread function_939d8a36(watcher);
    } else {
        /#
            self thread function_87e9f461();
        #/
        self thread function_acc500c4(watcher);
    }
    if (isdefined(self.killcament)) {
        self.killcament setweapon(self.weapon);
    }
}

// Namespace satchel_charge/satchel_charge
// Params 0, eflags: 0x2 linked
// Checksum 0xad7b4b8c, Offset: 0x5e8
// Size: 0x2e
function function_a0778d59() {
    self waittilltimeout(10, #"stationary", #"death");
}

// Namespace satchel_charge/satchel_charge
// Params 0, eflags: 0x2 linked
// Checksum 0x44f1318a, Offset: 0x620
// Size: 0x24
function function_a2f3d962() {
    return level.var_ac78d00e.var_a74161cc.var_c66e4eb1 === 1;
}

// Namespace satchel_charge/satchel_charge
// Params 3, eflags: 0x2 linked
// Checksum 0x2233cbae, Offset: 0x650
// Size: 0x94
function function_b96af076(attacker, weapon, target) {
    if (isdefined(self.owner.var_1e593689)) {
        arrayremovevalue(self.owner.var_1e593689, self);
        if (self.owner.var_1e593689.size <= 0) {
            self.owner.var_1e593689 = undefined;
        }
    }
    weaponobjects::proximitydetonate(attacker, weapon, target);
}

// Namespace satchel_charge/satchel_charge
// Params 1, eflags: 0x2 linked
// Checksum 0x5c85af65, Offset: 0x6f0
// Size: 0x134
function function_939d8a36(*watcher) {
    self endon(#"death", #"detonating");
    if (level.var_ac78d00e.var_a74161cc.var_3a06462 !== 1) {
        util::waittillnotmoving();
    }
    var_c4725fe8 = isdefined(level.var_ac78d00e.var_a74161cc.var_342ad32c) ? level.var_ac78d00e.var_a74161cc.var_342ad32c : 0;
    if (var_c4725fe8 > 0) {
        self playsound(isdefined(level.var_ac78d00e.var_a74161cc.var_f1c52016) ? level.var_ac78d00e.var_a74161cc.var_f1c52016 : "");
        wait(var_c4725fe8);
    }
    flag::set("satchelIsArmed");
}

// Namespace satchel_charge/satchel_charge
// Params 0, eflags: 0x2 linked
// Checksum 0xe05e3aba, Offset: 0x830
// Size: 0x130
function function_a0a96965() {
    if (isdefined(self.var_1e593689) && isdefined(level.var_ac78d00e.var_a74161cc.var_90724e7f) && self.isjammed !== 1) {
        arrayremovevalue(self.var_1e593689, undefined);
        foreach (var_77a228b3 in self.var_1e593689) {
            if (var_77a228b3.isjammed !== 1) {
                var_77a228b3 clientfield::set("satchelChargeWarning", 1);
                var_77a228b3 playsound(level.var_ac78d00e.var_a74161cc.var_90724e7f);
            }
        }
    }
}

// Namespace satchel_charge/satchel_charge
// Params 1, eflags: 0x2 linked
// Checksum 0xbd5b1885, Offset: 0x968
// Size: 0x284
function function_acc500c4(watcher) {
    self endon(#"death", #"hacked", #"detonating");
    if (isdefined(watcher.weapon.customsettings)) {
        function_a0778d59();
        if (isdefined(level.var_ac78d00e.var_a74161cc.var_28f86309)) {
            self playloopsound(level.var_ac78d00e.var_a74161cc.var_28f86309);
        }
        var_1911997c = level.var_ac78d00e.var_a74161cc.var_e26881f;
        if (isdefined(var_1911997c)) {
            var_5d0f385a = isdefined(level.var_ac78d00e.var_a74161cc.var_c932e2b0) ? level.var_ac78d00e.var_a74161cc.var_c932e2b0 : 0;
            assert(var_5d0f385a <= self.weapon.fusetime);
            var_d3839360 = float(self.weapon.fusetime) / 1000 - var_5d0f385a;
            wait(var_d3839360);
            if (isdefined(level.var_ac78d00e.var_a74161cc.var_28f86309)) {
                self stoploopsound(0.1);
            }
            self clientfield::set("satchelChargeWarning", 1);
            self playsound(var_1911997c);
            return;
        }
        wait(float(self.weapon.fusetime) / 1000);
        if (isdefined(level.var_ac78d00e.var_a74161cc.var_28f86309)) {
            self stoploopsound(0.1);
        }
    }
}

// Namespace satchel_charge/satchel_charge
// Params 0, eflags: 0x2 linked
// Checksum 0xd964d7a9, Offset: 0xbf8
// Size: 0xb4
function function_6db0705() {
    for (;;) {
        if (isdefined(self.var_1e593689)) {
            foreach (var_77a228b3 in self.var_1e593689) {
                if (var_77a228b3 flag::get("satchelIsArmed")) {
                    return true;
                }
            }
        } else {
            return false;
        }
        waitframe(1);
    }
    return false;
}

// Namespace satchel_charge/satchel_charge
// Params 0, eflags: 0x2 linked
// Checksum 0xabeca5cf, Offset: 0xcb8
// Size: 0xd2
function function_51108722() {
    for (;;) {
        if (isdefined(self.var_1e593689)) {
            var_263fb98 = 1;
            foreach (var_77a228b3 in self.var_1e593689) {
                if (!var_77a228b3 flag::get("satchelIsArmed")) {
                    var_263fb98 = 0;
                }
            }
            if (var_263fb98) {
                return true;
            }
        } else {
            return false;
        }
        waitframe(1);
    }
    return false;
}

// Namespace satchel_charge/satchel_charge
// Params 0, eflags: 0x2 linked
// Checksum 0x127e1820, Offset: 0xd98
// Size: 0x14a
function function_542663a0() {
    var_5d175791 = level.weaponsatchelcharge;
    self.var_bd5b6650 = 1;
    var_e8b7635c = self getcurrentoffhand();
    if (var_e8b7635c !== var_5d175791) {
        if (!self hasweapon(var_5d175791)) {
            var_6e2c7396 = 1;
            self giveweapon(var_5d175791);
        }
        self switchtooffhand(var_5d175791);
    }
    waitframe(1);
    if (!self gestures::function_56e00fbf(#"hash_7e249c3769936b51", undefined, 1)) {
        if (isdefined(var_6e2c7396)) {
            self takeweapon(var_5d175791);
        }
        self.var_bd5b6650 = undefined;
        return false;
    }
    function_a0a96965();
    wait(0.5);
    if (isdefined(var_6e2c7396)) {
        self takeweapon(var_5d175791);
    }
    self.var_bd5b6650 = undefined;
    return true;
}

// Namespace satchel_charge/satchel_charge
// Params 0, eflags: 0x2 linked
// Checksum 0x5f4c6487, Offset: 0xef0
// Size: 0x3c
function function_adee7bee() {
    if (level.var_ac78d00e.var_a74161cc.var_7ab8e1cb === 1) {
        function_542663a0();
    }
}

// Namespace satchel_charge/satchel_charge
// Params 1, eflags: 0x2 linked
// Checksum 0x5c781616, Offset: 0xf38
// Size: 0x29e
function function_521f546a(watcher) {
    self endon(#"death");
    if (self.var_bf73db8c === 1 || self inlaststand() || self function_55acff10(1) || self function_b4813488()) {
        return;
    }
    self.var_bf73db8c = 1;
    if (isdefined(self.var_1e593689)) {
        arrayremovevalue(self.var_1e593689, undefined);
        if (self.var_1e593689.size > 0) {
            var_4ca85007 = level.var_ac78d00e.var_a74161cc.var_f258f7d4 === 1 ? &function_51108722 : &function_6db0705;
            if (!self [[ var_4ca85007 ]]()) {
                function_adee7bee();
                self.var_bf73db8c = undefined;
                return;
            }
            var_c970f338 = function_542663a0();
            if (var_c970f338 === 1 && isdefined(self.var_1e593689)) {
                foreach (var_77a228b3 in self.var_1e593689) {
                    if (var_77a228b3 flag::get("satchelIsArmed") && self.isjammed !== 1 && var_77a228b3.isjammed !== 1) {
                        watcher thread weaponobjects::waitanddetonate(var_77a228b3, 0, self, var_77a228b3.weapon);
                    }
                }
            }
        } else {
            self.var_1e593689 = undefined;
            function_adee7bee();
        }
    } else {
        function_adee7bee();
    }
    self.var_bf73db8c = undefined;
}

// Namespace satchel_charge/satchel_charge
// Params 1, eflags: 0x2 linked
// Checksum 0x94aecd2, Offset: 0x11e0
// Size: 0x124
function function_a39c62de(watcher) {
    self endon(#"death");
    weapon = level.weaponsatchelcharge;
    if (isdefined(weapon) && self hasweapon(weapon) || isdefined(self.var_1e593689) && self.var_1e593689.size > 0) {
        if (!isdefined(self.var_1e593689) && self getammocount(weapon) == 0) {
            self playsoundtoplayer("uin_default_action_denied", self);
            itemindex = getitemindexfromref(weapon.name);
            self luinotifyevent(#"hash_74dc06b4b4fb436c", 1, itemindex);
        }
        function_521f546a(watcher);
    }
}

// Namespace satchel_charge/satchel_charge
// Params 1, eflags: 0x2 linked
// Checksum 0xaae8c77b, Offset: 0x1310
// Size: 0x18c
function onplayerkilled(params) {
    weapon = params.weapon;
    eattacker = params.eattacker;
    einflictor = params.einflictor;
    self.var_1e593689 = undefined;
    self.var_bf73db8c = undefined;
    if (weapon.name === #"satchel_charge" && eattacker util::isenemyplayer(self) && self isinvehicle()) {
        if (!isdefined(einflictor.var_3c0a7eef)) {
            einflictor.var_3c0a7eef = [];
        }
        sparams = spawnstruct();
        sparams.player = self;
        sparams.vehicle = self getvehicleoccupied();
        sparams.var_33c9fbd5 = gettime();
        if (!isdefined(einflictor.var_3c0a7eef)) {
            einflictor.var_3c0a7eef = [];
        } else if (!isarray(einflictor.var_3c0a7eef)) {
            einflictor.var_3c0a7eef = array(einflictor.var_3c0a7eef);
        }
        einflictor.var_3c0a7eef[einflictor.var_3c0a7eef.size] = sparams;
    }
}

// Namespace satchel_charge/satchel_charge
// Params 9, eflags: 0x2 linked
// Checksum 0x47f23839, Offset: 0x14a8
// Size: 0x1d4
function function_9b8337c3(einflictor, eattacker, *idamage, *smeansofdeath, *weapon, *vdir, *shitloc, *psoffsettime, occupants) {
    if (isdefined(occupants.size) && occupants.size > 0) {
        foreach (occupant in occupants) {
            if (psoffsettime util::isenemyplayer(occupant)) {
                shitloc function_af9b1762(psoffsettime);
                break;
            }
        }
        return;
    }
    if (isdefined(shitloc.var_3c0a7eef)) {
        foreach (sparams in shitloc.var_3c0a7eef) {
            if (self == sparams.vehicle && sparams.var_33c9fbd5 == gettime()) {
                shitloc function_af9b1762(psoffsettime);
                break;
            }
        }
    }
}

// Namespace satchel_charge/satchel_charge
// Params 1, eflags: 0x2 linked
// Checksum 0xffc0ceaf, Offset: 0x1688
// Size: 0x6c
function function_af9b1762(eattacker) {
    scoreevents = globallogic_score::function_3cbc4c6c(self.weapon.var_2e4a8800);
    if (isdefined(scoreevents.var_f8792376)) {
        scoreevents::processscoreevent(scoreevents.var_f8792376, eattacker, undefined, self.weapon, undefined);
    }
}

// Namespace satchel_charge/event_7f43a0d6
// Params 1, eflags: 0x20
// Checksum 0x1c2c1995, Offset: 0x1700
// Size: 0x11c
function event_handler[event_7f43a0d6] function_99514548(eventstruct) {
    weapon = eventstruct.weapon;
    var_5d175791 = level.weaponsatchelcharge;
    if (weapon !== var_5d175791) {
        return;
    }
    if (!function_a2f3d962()) {
        return;
    }
    player = self;
    if (!isplayer(player)) {
        return;
    }
    if (isdefined(var_5d175791) && player hasweapon(var_5d175791)) {
        var_383b646d = player getammocount(weapon);
        if (var_383b646d <= 0) {
            watcher = player weaponobjects::getweaponobjectwatcherbyweapon(weapon);
            if (isdefined(watcher)) {
                player thread function_521f546a(watcher);
            }
        }
    }
}

// Namespace satchel_charge/satchel_charge
// Params 2, eflags: 0x2 linked
// Checksum 0x605df89, Offset: 0x1828
// Size: 0x14
function function_4ba658e5(*watcher, *player) {
    
}

/#

    // Namespace satchel_charge/satchel_charge
    // Params 1, eflags: 0x0
    // Checksum 0x6e0c8f20, Offset: 0x1848
    // Size: 0x74
    function function_335a9072(text) {
        if (level.weaponobjectdebug == 1) {
            entitynumber = self getentitynumber();
            println("<unknown string>" + entitynumber + "<unknown string>" + text);
        }
    }

    // Namespace satchel_charge/satchel_charge
    // Params 0, eflags: 0x0
    // Checksum 0xcdfc7ca5, Offset: 0x18c8
    // Size: 0xb6
    function function_87e9f461() {
        self endon(#"death", #"hacked", #"detonating");
        function_a0778d59();
        starttime = gettime();
        while (true) {
            function_335a9072("<unknown string>" + float(self.weapon.fusetime - gettime() - starttime) / 1000);
            waitframe(1);
        }
    }

#/
