// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weaponobjects.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace claymore;

// Namespace claymore/claymore
// Params 0, eflags: 0x5
// Checksum 0x4a15f55a, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"claymore", &init_shared, undefined, undefined, undefined);
}

// Namespace claymore/claymore
// Params 0, eflags: 0x0
// Checksum 0x36a5c816, Offset: 0x108
// Size: 0x2c
function init_shared() {
    weaponobjects::function_e6400478("claymore", &createclaymorewatcher, 0);
}

// Namespace claymore/claymore
// Params 1, eflags: 0x0
// Checksum 0xdfc9846f, Offset: 0x140
// Size: 0x252
function createclaymorewatcher(watcher) {
    watcher.watchforfire = 1;
    watcher.activatesound = #"wpn_claymore_alert";
    watcher.hackable = 1;
    watcher.hackertoolradius = level.equipmenthackertoolradius;
    watcher.hackertooltimems = level.equipmenthackertooltimems;
    watcher.ownergetsassist = 1;
    watcher.ignoredirection = undefined;
    watcher.immediatedetonation = 1;
    watcher.immunespecialty = "specialty_immunetriggerbetty";
    watcher.var_8eda8949 = (0, 0, 0);
    var_e2fa0bc6 = getweapon(#"claymore");
    if (isdefined(var_e2fa0bc6.customsettings)) {
        var_e6fbac16 = getscriptbundle(var_e2fa0bc6.customsettings);
        assert(isdefined(var_e6fbac16));
        watcher.detectiondot = cos(isdefined(var_e6fbac16.var_bec17b8b) ? var_e6fbac16.var_bec17b8b : 0);
        watcher.detectionmindist = isdefined(var_e6fbac16.var_5303bdc6) ? var_e6fbac16.var_5303bdc6 : 0;
        watcher.detectiongraceperiod = isdefined(var_e6fbac16.var_88b0248b) ? var_e6fbac16.var_88b0248b : 0;
        if (isdefined(var_e6fbac16.var_29467698) && var_e6fbac16.var_29467698 != 0) {
            watcher.detonateradius = var_e6fbac16.var_29467698;
        }
    }
    watcher.stuntime = 1;
    watcher.ondetonatecallback = &weaponobjects::proximitydetonate;
    watcher.onfizzleout = &weaponobjects::weaponobjectfizzleout;
    watcher.onspawn = &function_c9893179;
    watcher.stun = &weaponobjects::weaponstun;
    watcher.var_994b472b = &function_aeb91d3;
}

// Namespace claymore/claymore
// Params 1, eflags: 0x0
// Checksum 0xdfc810c9, Offset: 0x3a0
// Size: 0x24
function function_aeb91d3(*player) {
    self weaponobjects::weaponobjectfizzleout();
}

// Namespace claymore/claymore
// Params 2, eflags: 0x0
// Checksum 0x7ce7ddf1, Offset: 0x3d0
// Size: 0x52
function function_c9893179(watcher, player) {
    weaponobjects::onspawnproximitygrenadeweaponobject(watcher, player);
    self.weapon = getweapon(#"claymore");
}

