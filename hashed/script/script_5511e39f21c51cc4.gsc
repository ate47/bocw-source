// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\core_common\battlechatter.gsc;
#using scripts\mp_common\challenges.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using script_4721de209091b1a6;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\killstreaks\helicopter_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;

#namespace helicopter;

// Namespace helicopter/helicopter_guard
// Params 0, eflags: 0x5
// Checksum 0x1e5c1a04, Offset: 0x158
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"helicopter_guard", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace helicopter/helicopter_guard
// Params 0, eflags: 0x6 linked
// Checksum 0xa2aad656, Offset: 0x1a8
// Size: 0x104
function private preinit() {
    level.var_34f03cda = &function_34f03cda;
    level.var_4d5e1035 = &function_4d5e1035;
    level.var_6af968ce = &function_6af968ce;
    bundle = "killstreak_helicopter_guard";
    if (sessionmodeiswarzonegame()) {
        bundle = "killstreak_helicopter_guard_wz";
    }
    if (sessionmodeismultiplayergame() || sessionmodeiswarzonegame()) {
        killstreaks::register_killstreak(bundle, &usekillstreakhelicopter);
    }
    init_shared();
    player::function_cf3aa03d(&function_d45a1f8d, 0);
}

// Namespace helicopter/helicopter_guard
// Params 3, eflags: 0x2 linked
// Checksum 0xb40cdb06, Offset: 0x2b8
// Size: 0x158
function function_6af968ce(attacker, weapon, mod) {
    if (isdefined(attacker) && isplayer(attacker)) {
        if (!isdefined(self.owner) || self.owner util::isenemyplayer(attacker)) {
            attacker battlechatter::function_eebf94f6(self.killstreaktype);
            self killstreaks::function_73566ec7(attacker, weapon, self.owner);
            challenges::destroyedhelicopter(attacker, weapon, mod, 0, self);
            attacker challenges::addflyswatterstat(weapon, self);
            attacker stats::function_e24eec31(weapon, #"hash_3f3d8a93c372c67d", 1);
        }
    }
    if (self.leaving !== 1) {
        self namespace_f9b02f80::play_destroyed_dialog_on_owner(self.killstreaktype, self.killstreak_id);
        attacker notify(#"destroyedaircraft");
    }
}

// Namespace helicopter/helicopter_guard
// Params 1, eflags: 0x2 linked
// Checksum 0x78a38fcd, Offset: 0x418
// Size: 0xc
function function_34f03cda(*hardpointtype) {
    
}

// Namespace helicopter/helicopter_guard
// Params 7, eflags: 0x2 linked
// Checksum 0xf79adaad, Offset: 0x430
// Size: 0x148
function function_4d5e1035(attacker, weapon, type, weapon_damage, event, playercontrolled, hardpointtype) {
    if (weapon_damage > 0) {
        self challenges::trackassists(attacker, weapon_damage, 0);
    }
    if (isdefined(event)) {
        if (isdefined(self.owner) && self.owner util::isenemyplayer(attacker)) {
            challenges::destroyedhelicopter(attacker, weapon, type, playercontrolled, self);
            scoreevents::processscoreevent(event, attacker, self.owner, weapon);
            attacker challenges::addflyswatterstat(weapon, self);
            if (playercontrolled == 1) {
                attacker challenges::destroyedplayercontrolledaircraft();
            }
            if (hardpointtype == "helicopter_player_gunner") {
                attacker stats::function_e24eec31(weapon, #"destroyed_controlled_killstreak", 1);
            }
        }
    }
}

// Namespace helicopter/helicopter_guard
// Params 9, eflags: 0x2 linked
// Checksum 0x2164be41, Offset: 0x580
// Size: 0x12e
function function_d45a1f8d(einflictor, attacker, *idamage, *smeansofdeath, weapon, *vdir, *shitloc, *psoffsettime, *deathanimduration) {
    if (!isdefined(shitloc) || !isdefined(shitloc.owner) || !isdefined(psoffsettime) || !isdefined(deathanimduration)) {
        return;
    }
    if (shitloc.owner == psoffsettime && deathanimduration == getweapon(#"cobra_20mm_comlink") && (isdefined(shitloc.lastkillvo) ? shitloc.lastkillvo : 0) < gettime()) {
        shitloc namespace_f9b02f80::play_pilot_dialog_on_owner("kill", "helicopter_guard", shitloc.killstreak_id);
        shitloc.lastkillvo = gettime() + 5000;
    }
}

