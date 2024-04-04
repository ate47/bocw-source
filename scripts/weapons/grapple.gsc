// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weaponobjects.gsc;
#using scripts\abilities\ability_player.gsc;
#using scripts\core_common\globallogic\globallogic_score.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\battlechatter.gsc;

#namespace grapple;

// Namespace grapple/grapple
// Params 0, eflags: 0x5
// Checksum 0xb919e64, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"grapple", &preinit, undefined, undefined, undefined);
}

// Namespace grapple/grapple
// Params 0, eflags: 0x4
// Checksum 0x4209c952, Offset: 0x100
// Size: 0xa4
function private preinit() {
    ability_player::register_gadget_activation_callbacks(20, undefined, &gadget_grapple_off);
    globallogic_score::register_kill_callback(getweapon(#"eq_grapple"), &function_d79e9bb5);
    weaponobjects::function_e6400478(#"eq_grapple", &function_422f24cc, 1);
}

// Namespace grapple/grapple
// Params 1, eflags: 0x0
// Checksum 0x699ed066, Offset: 0x1b0
// Size: 0x22
function function_422f24cc(watcher) {
    watcher.ondamage = &function_1987d583;
}

// Namespace grapple/grapple
// Params 5, eflags: 0x0
// Checksum 0xd85564c7, Offset: 0x1e0
// Size: 0x8c
function function_d79e9bb5(attacker, *victim, weapon, attackerweapon, *meansofdeath) {
    if (!isdefined(weapon) || isdefined(meansofdeath) && meansofdeath == attackerweapon) {
        return false;
    }
    return weapon isgrappling() || isdefined(weapon.var_700a5910) && weapon.var_700a5910 + 2000 > gettime();
}

// Namespace grapple/grapple
// Params 2, eflags: 0x0
// Checksum 0x2b3b3493, Offset: 0x278
// Size: 0x44
function gadget_grapple_off(*slot, weapon) {
    if (!function_d79e9bb5(self)) {
        self battlechatter::function_916b4c72(weapon);
    }
}

// Namespace grapple/grapple_cancel
// Params 1, eflags: 0x20
// Checksum 0x5a991069, Offset: 0x2c8
// Size: 0x16
function event_handler[grapple_cancel] function_cb368201(*eventstruct) {
    self.var_700a5910 = gettime();
}

// Namespace grapple/grapple
// Params 1, eflags: 0x0
// Checksum 0x5f013abc, Offset: 0x2e8
// Size: 0x24
function function_1987d583(*watcher) {
    self setcandamage(0);
}

