// Atian COD Tools GSC CW decompiler test
#using script_72d96920f15049b8;
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\teams\teams.gsc;
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace chopper_gunner;

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x5
// Checksum 0x3cb1918b, Offset: 0xd8
// Size: 0x54
function private autoexec __init__system__() {
    system::register(#"chopper_gunner", &preinit, undefined, &function_3675de8b, #"killstreaks");
}

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x6 linked
// Checksum 0x828f0ac6, Offset: 0x138
// Size: 0x5e
function private preinit() {
    profilestart();
    player::function_cf3aa03d(&function_d45a1f8d, 1);
    level.var_2d4792e7 = &function_5160bb1e;
    namespace_e8c18978::preinit("killstreak_chopper_gunner");
    profilestop();
}

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x6 linked
// Checksum 0xe13769ec, Offset: 0x1a0
// Size: 0x14
function private function_3675de8b() {
    namespace_e8c18978::function_3675de8b();
}

// Namespace chopper_gunner/chopper_gunner
// Params 1, eflags: 0x6 linked
// Checksum 0xf9b1d86b, Offset: 0x1c0
// Size: 0x118
function private function_5160bb1e(killstreaktype) {
    player = self;
    player endon(#"disconnect");
    level endon(#"game_ended");
    assert(!isdefined(level.chopper_gunner));
    var_d6940e18 = namespace_e8c18978::function_5160bb1e(killstreaktype);
    if (var_d6940e18 && isbot(player)) {
        player thread function_25d9a09f(level.chopper_gunner);
    }
    util::function_a3f7de13(21, player.team, player getentitynumber(), level.killstreaks[#"chopper_gunner"].uiname);
    return var_d6940e18;
}

// Namespace chopper_gunner/chopper_gunner
// Params 9, eflags: 0x2 linked
// Checksum 0xbc9028c, Offset: 0x2e0
// Size: 0xe4
function function_d45a1f8d(einflictor, attacker, *idamage, *smeansofdeath, weapon, *vdir, *shitloc, *psoffsettime, *deathanimduration) {
    if (!isdefined(level.chopper_gunner) || !isdefined(shitloc.owner) || !isdefined(psoffsettime) || !isdefined(deathanimduration)) {
        return;
    }
    if (shitloc.owner == psoffsettime && deathanimduration == getweapon(#"hash_1734871fef9c0549")) {
        level.chopper_gunner namespace_e8c18978::function_631f02c5();
    }
}

// Namespace chopper_gunner/chopper_gunner
// Params 1, eflags: 0x2 linked
// Checksum 0x25a3ee11, Offset: 0x3d0
// Size: 0x2a4
function function_25d9a09f(vehicle) {
    vehicle endon(#"hash_6668be249f2eab45", #"death");
    self endon(#"disconnect");
    waitframe(1);
    while (self isremotecontrolling()) {
        enemy = undefined;
        enemies = self teams::getenemyplayers();
        enemies = array::randomize(enemies);
        foreach (potentialenemy in enemies) {
            if (isalive(potentialenemy)) {
                enemy = potentialenemy;
                break;
            }
        }
        if (isdefined(enemy)) {
            vectorfromenemy = vectornormalize(((vehicle.origin - enemy.origin)[0], (vehicle.origin - enemy.origin)[1], 0));
            vehicle turretsettarget(0, enemy);
            vehicle waittilltimeout(1, #"turret_on_target");
            vehicle vehicle_ai::fire_for_time(2 + randomfloat(0.8), 0, enemy);
            vehicle vehicle_ai::fire_for_rounds(1, 1, enemy);
            vehicle turretcleartarget(0);
            vehicle turretsettargetangles(0, (15, 0, 0));
            if (isdefined(enemy)) {
                wait(2 + randomfloat(0.5));
            }
        }
        wait(0.1);
    }
}

