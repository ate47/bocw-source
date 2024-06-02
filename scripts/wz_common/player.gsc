// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\item_supply_drop.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace wz_player;

// Namespace wz_player/player
// Params 0, eflags: 0x5
// Checksum 0xe06b8e0d, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"wz_player", &preinit, undefined, undefined, undefined);
}

// Namespace wz_player/player
// Params 0, eflags: 0x4
// Checksum 0x1afb9973, Offset: 0xe0
// Size: 0x24
function private preinit() {
    callback::on_spawned(&on_player_spawned);
}

// Namespace wz_player/player
// Params 0, eflags: 0x0
// Checksum 0xa4508d5f, Offset: 0x110
// Size: 0x24
function on_player_spawned() {
    self callback::on_grenade_fired(&on_grenade_fired);
}

// Namespace wz_player/player
// Params 1, eflags: 0x0
// Checksum 0x99aafa30, Offset: 0x140
// Size: 0xa2
function on_grenade_fired(params) {
    grenade = params.projectile;
    weapon = params.weapon;
    switch (weapon.name) {
    case #"flare_gun":
        grenade function_4861487f(weapon, self);
        grenade thread function_cd8ee3c5();
        break;
    default:
        break;
    }
}

// Namespace wz_player/player
// Params 2, eflags: 0x0
// Checksum 0xc9e9c075, Offset: 0x1f0
// Size: 0x56
function function_4861487f(weapon, player) {
    if (!isdefined(self)) {
        return;
    }
    if (!self grenade_safe_to_throw(player, weapon)) {
        self thread makegrenadedudanddestroy();
        return;
    }
}

// Namespace wz_player/player
// Params 0, eflags: 0x0
// Checksum 0xd127a71c, Offset: 0x250
// Size: 0x124
function function_cd8ee3c5() {
    self endon(#"grenade_dud");
    waitresult = self waittill(#"explode", #"death");
    if (waitresult._notify == #"explode") {
        trace = groundtrace(waitresult.position, waitresult.position + (0, 0, -20000), 0, self, 0);
        if (isdefined(trace[#"position"]) && trace[#"surfacetype"] != #"none") {
            org = trace[#"position"];
            item_supply_drop::drop_supply_drop(org, 1);
        }
    }
}

// Namespace wz_player/player
// Params 2, eflags: 0x0
// Checksum 0x24d46ce6, Offset: 0x380
// Size: 0x18
function grenade_safe_to_throw(*player, *weapon) {
    return true;
}

// Namespace wz_player/player
// Params 0, eflags: 0x0
// Checksum 0xafd39949, Offset: 0x3a0
// Size: 0x64
function makegrenadedudanddestroy() {
    self endon(#"death");
    self notify(#"grenade_dud");
    self makegrenadedud();
    wait(3);
    if (isdefined(self)) {
        self delete();
    }
}

/#

    // Namespace wz_player/player
    // Params 3, eflags: 0x0
    // Checksum 0x47c4a3f9, Offset: 0x410
    // Size: 0x7c
    function debug_star(origin, seconds, color) {
        if (!isdefined(seconds)) {
            seconds = 1;
        }
        if (!isdefined(color)) {
            color = (1, 0, 0);
        }
        frames = int(20 * seconds);
        debugstar(origin, frames, color);
    }

#/
