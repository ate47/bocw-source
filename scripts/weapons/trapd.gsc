// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weaponobjects.gsc;
#using scripts\weapons\molotov.gsc;

#namespace trapd;

// Namespace trapd/trapd
// Params 1, eflags: 0x0
// Checksum 0xfcf00259, Offset: 0xb0
// Size: 0x15e
function function_ae7e49da(watcher) {
    watcher.watchforfire = 1;
    watcher.activatesound = #"wpn_claymore_alert";
    watcher.hackable = 0;
    watcher.hackertoolradius = level.equipmenthackertoolradius;
    watcher.hackertooltimems = level.equipmenthackertooltimems;
    watcher.activatefx = 1;
    watcher.ownergetsassist = 1;
    watcher.ignoredirection = undefined;
    watcher.immediatedetonation = 1;
    watcher.immunespecialty = "specialty_immunetriggerbetty";
    watcher.detectiondot = cos(70);
    watcher.detectionmindist = 20;
    watcher.detectiongraceperiod = 0.6;
    watcher.stuntime = 3;
    watcher.notequipment = 1;
    watcher.activationdelay = 0.5;
    watcher.ondetonatecallback = &weaponobjects::proximitydetonate;
    watcher.onfizzleout = &weaponobjects::weaponobjectfizzleout;
    watcher.onspawn = &weaponobjects::onspawnproximitygrenadeweaponobject;
    watcher.stun = &weaponobjects::weaponstun;
    return watcher;
}

// Namespace trapd/trapd
// Params 1, eflags: 0x0
// Checksum 0xe4b7c022, Offset: 0x218
// Size: 0x146
function function_1daa29fc(watcher) {
    watcher.watchforfire = 1;
    watcher.activatesound = #"wpn_claymore_alert";
    watcher.hackable = 0;
    watcher.hackertoolradius = level.equipmenthackertoolradius;
    watcher.hackertooltimems = level.equipmenthackertooltimems;
    watcher.activatefx = 1;
    watcher.ownergetsassist = 1;
    watcher.ignoredirection = 1;
    watcher.immediatedetonation = 1;
    watcher.immunespecialty = "specialty_immunetriggerbetty";
    watcher.detectionmindist = 64;
    watcher.detectiongraceperiod = 0.6;
    watcher.stuntime = 3;
    watcher.notequipment = 1;
    watcher.activationdelay = 0.5;
    watcher.ondetonatecallback = &weaponobjects::proximitydetonate;
    watcher.onfizzleout = &weaponobjects::weaponobjectfizzleout;
    watcher.onspawn = &weaponobjects::onspawnproximitygrenadeweaponobject;
    watcher.stun = &weaponobjects::weaponstun;
    return watcher;
}

// Namespace trapd/trapd
// Params 1, eflags: 0x0
// Checksum 0x708e08a4, Offset: 0x368
// Size: 0x146
function function_d8d3b49b(watcher) {
    watcher.watchforfire = 1;
    watcher.activatesound = #"wpn_claymore_alert";
    watcher.hackable = 0;
    watcher.hackertoolradius = level.equipmenthackertoolradius;
    watcher.hackertooltimems = level.equipmenthackertooltimems;
    watcher.activatefx = 1;
    watcher.ownergetsassist = 1;
    watcher.ignoredirection = 1;
    watcher.immediatedetonation = 1;
    watcher.immunespecialty = "specialty_immunetriggerbetty";
    watcher.detectionmindist = 64;
    watcher.detectiongraceperiod = 0.6;
    watcher.stuntime = 3;
    watcher.notequipment = 1;
    watcher.activationdelay = 0.5;
    watcher.ondetonatecallback = &weaponobjects::proximitydetonate;
    watcher.onfizzleout = &weaponobjects::weaponobjectfizzleout;
    watcher.onspawn = &weaponobjects::onspawnproximitygrenadeweaponobject;
    watcher.stun = &weaponobjects::weaponstun;
    return watcher;
}

// Namespace trapd/trapd
// Params 1, eflags: 0x0
// Checksum 0xb6445b43, Offset: 0x4b8
// Size: 0x146
function function_518130e(watcher) {
    watcher.watchforfire = 1;
    watcher.activatesound = #"wpn_claymore_alert";
    watcher.hackable = 0;
    watcher.hackertoolradius = level.equipmenthackertoolradius;
    watcher.hackertooltimems = level.equipmenthackertooltimems;
    watcher.activatefx = 1;
    watcher.ownergetsassist = 1;
    watcher.ignoredirection = 1;
    watcher.immediatedetonation = 1;
    watcher.immunespecialty = "specialty_immunetriggerbetty";
    watcher.detectionmindist = 64;
    watcher.detectiongraceperiod = 0.6;
    watcher.stuntime = 3;
    watcher.notequipment = 1;
    watcher.activationdelay = 0.5;
    watcher.ondetonatecallback = &function_367f94ba;
    watcher.onfizzleout = &weaponobjects::weaponobjectfizzleout;
    watcher.onspawn = &weaponobjects::onspawnproximitygrenadeweaponobject;
    watcher.stun = &weaponobjects::weaponstun;
    return watcher;
}

// Namespace trapd/trapd
// Params 3, eflags: 0x0
// Checksum 0x18ecd8b6, Offset: 0x608
// Size: 0xc4
function function_367f94ba(*attacker, *weapon, *target) {
    self.killcament.starttime = gettime();
    self molotov::function_462c8632(self.owner, self.origin, (0, 0, 1), (0, 0, -400), self.killcament, self.team, getscriptbundle(self.weapon.customsettings));
    self hide();
    wait(10);
    self delete();
}

