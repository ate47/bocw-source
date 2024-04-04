// Atian COD Tools GSC CW decompiler test
#using script_590bc513b5881751;
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\teams\teams.gsc;
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace ac130_mp;

// Namespace ac130_mp/ac130
// Params 0, eflags: 0x5
// Checksum 0x59a967de, Offset: 0xd8
// Size: 0x54
function private autoexec __init__system__() {
    system::register(#"ac130", &preinit, undefined, &function_3675de8b, #"killstreaks");
}

// Namespace ac130_mp/ac130
// Params 0, eflags: 0x6 linked
// Checksum 0x21170833, Offset: 0x138
// Size: 0x5e
function private preinit() {
    profilestart();
    player::function_cf3aa03d(&function_d45a1f8d, 1);
    level.var_f987766c = &spawnac130;
    ac130_shared::preinit("killstreak_ac130");
    profilestop();
}

// Namespace ac130_mp/ac130
// Params 0, eflags: 0x6 linked
// Checksum 0xe13769ec, Offset: 0x1a0
// Size: 0x14
function private function_3675de8b() {
    ac130_shared::function_3675de8b();
}

// Namespace ac130_mp/ac130
// Params 1, eflags: 0x6 linked
// Checksum 0xbf84859, Offset: 0x1c0
// Size: 0x118
function private spawnac130(killstreaktype) {
    player = self;
    player endon(#"disconnect");
    level endon(#"game_ended");
    assert(!isdefined(level.ac130));
    var_b0b764aa = ac130_shared::spawnac130(killstreaktype);
    if (var_b0b764aa && isbot(player)) {
        level.ac130 thread ac130_shared::function_a514a080(player);
    }
    util::function_a3f7de13(21, player.team, player getentitynumber(), level.killstreaks[#"ac130"].uiname);
    return var_b0b764aa;
}

// Namespace ac130_mp/ac130
// Params 9, eflags: 0x2 linked
// Checksum 0x22bd7eef, Offset: 0x2e0
// Size: 0x16c
function function_d45a1f8d(einflictor, attacker, *idamage, *smeansofdeath, weapon, *vdir, *shitloc, *psoffsettime, *deathanimduration) {
    if (!isdefined(shitloc) || !isdefined(shitloc.owner) || !isdefined(psoffsettime) || self.team === psoffsettime.team || !isdefined(deathanimduration)) {
        return;
    }
    if (shitloc.owner == psoffsettime && deathanimduration.statname == "ac130") {
        if (deathanimduration == getweapon(#"hash_17df39d53492b0bf")) {
            var_f9e67747 = 0;
        } else if (deathanimduration == getweapon(#"hash_7b24d0d0d2823bca")) {
            var_f9e67747 = 1;
        } else {
            var_f9e67747 = 2;
        }
        if (isdefined(level.ac130)) {
            level.ac130 ac130_shared::function_631f02c5(var_f9e67747);
        }
    }
}

// Namespace ac130_mp/ac130
// Params 1, eflags: 0x0
// Checksum 0xe157daf9, Offset: 0x458
// Size: 0x64
function function_6b26dd0c(player) {
    self endon(#"death", #"ac130_shutdown");
    player endon(#"disconnect");
    wait(2);
    player thread ac130_shared::function_8721028e(player, 0, 1);
}

