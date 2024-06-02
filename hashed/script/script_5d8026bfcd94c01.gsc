// Atian COD Tools GSC CW decompiler test
#using script_b9a55edd207e4ca;
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\spawning_shared.gsc;
#using script_335d0650ed05d36d;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\dogtags.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_f2e23b4a;

// Namespace namespace_f2e23b4a/namespace_f2e23b4a
// Params 0, eflags: 0x5
// Checksum 0x8d4f2efc, Offset: 0x100
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_112a74f076cda31", &function_62730899, undefined, undefined, #"territory");
}

// Namespace namespace_f2e23b4a/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x2d749af9, Offset: 0x150
// Size: 0x8c
function event_handler[gametype_init] main(*eventstruct) {
    namespace_2938acdc::init();
    spawning::addsupportedspawnpointtype("tdm");
    callback::on_spawned(&on_player_spawned);
    level.var_61d4f517 = 1;
    level.var_febab1ea = #"conf_dogtags_hpc";
    level.var_e7b05b51 = 1;
}

// Namespace namespace_f2e23b4a/namespace_f2e23b4a
// Params 0, eflags: 0x4
// Checksum 0xa8ac6e40, Offset: 0x1e8
// Size: 0xd4
function private function_62730899() {
    if (isdefined(level.territory) && level.territory.name != "zoo") {
        namespace_2938acdc::function_4212369d();
    }
    level.onstartgametype = &onstartgametype;
    player::function_cf3aa03d(&onplayerkilled);
    level.teamscoreperkillconfirmed = getgametypesetting(#"teamscoreperkillconfirmed");
    level.teamscoreperkilldenied = getgametypesetting(#"teamscoreperkilldenied");
}

// Namespace namespace_f2e23b4a/namespace_f2e23b4a
// Params 0, eflags: 0x0
// Checksum 0x41d7a230, Offset: 0x2c8
// Size: 0x34
function onstartgametype() {
    dogtags::init();
    if (!util::isoneround()) {
        level.displayroundendtext = 1;
    }
}

// Namespace namespace_f2e23b4a/namespace_f2e23b4a
// Params 1, eflags: 0x0
// Checksum 0x2b1b9a7d, Offset: 0x308
// Size: 0xec
function function_79b13f76(attacker) {
    /#
        if (abs(level.mapcenter[2] + self.origin[2]) > 100000) {
            return;
        }
    #/
    numdogtags = 1;
    for (index = 0; index < numdogtags; index++) {
        posoffset = (randomintrange(-20, 20), randomintrange(-20, 20), 0) * index;
        level thread dogtags::spawn_dog_tag(self, attacker, &onuse, 0, posoffset);
    }
}

// Namespace namespace_f2e23b4a/namespace_f2e23b4a
// Params 9, eflags: 0x0
// Checksum 0x9c711cb4, Offset: 0x400
// Size: 0xfc
function onplayerkilled(*einflictor, attacker, *idamage, *smeansofdeath, weapon, *vdir, *shitloc, *psoffsettime, *deathanimduration) {
    if (!isplayer(psoffsettime) || psoffsettime.team == self.team) {
        return;
    }
    if (!isdefined(killstreaks::get_killstreak_for_weapon(deathanimduration)) || is_true(level.killstreaksgivegamescore)) {
        psoffsettime globallogic_score::giveteamscoreforobjective(psoffsettime.team, level.teamscoreperkill);
    }
    function_79b13f76(psoffsettime);
}

// Namespace namespace_f2e23b4a/namespace_f2e23b4a
// Params 1, eflags: 0x0
// Checksum 0x5947773e, Offset: 0x508
// Size: 0x302
function onuse(player) {
    tacinsertboost = 0;
    var_5f50a7ed = 0;
    player.pers[#"objectives"]++;
    player.objectives = player.pers[#"objectives"];
    if (!util::function_fbce7263(player.team, self.victimteam)) {
        tacinsertboost = self.tacinsert;
        if (isdefined(self.attacker) && !util::function_fbce7263(self.attacker.team, self.attackerteam)) {
            self.attacker luinotifyevent(#"player_callout", 2, #"mp/kill_denied", player.entnum);
        }
        if (!tacinsertboost) {
            player globallogic_score::giveteamscoreforobjective(player.team, level.teamscoreperkilldenied);
        }
        return;
    }
    /#
        assert(isdefined(player.lastkillconfirmedtime));
        assert(isdefined(player.lastkillconfirmedcount));
    #/
    if (isdefined(self.attacker) && util::function_fbce7263(self.attacker.team, player.team)) {
        self.attacker luinotifyevent(#"player_callout", 2, #"hash_75462478f6a06755", player.entnum);
    }
    player.pers[#"killsconfirmed"]++;
    player.killsconfirmed = player.pers[#"killsconfirmed"];
    player globallogic_score::giveteamscoreforobjective(player.team, level.teamscoreperkillconfirmed);
    if (!tacinsertboost) {
        currenttime = gettime();
        if (player.lastkillconfirmedtime + 4000 > currenttime) {
            player.lastkillconfirmedcount++;
            if (player.lastkillconfirmedcount >= 3) {
                scoreevents::processscoreevent(#"kill_confirmed_multi", player, undefined, undefined);
                player.lastkillconfirmedcount = 0;
            }
        } else {
            player.lastkillconfirmedcount = 1;
        }
        player.lastkillconfirmedtime = currenttime;
    }
}

// Namespace namespace_f2e23b4a/namespace_f2e23b4a
// Params 0, eflags: 0x0
// Checksum 0x84a40574, Offset: 0x818
// Size: 0x62
function on_player_spawned() {
    self.usingobj = undefined;
    if (spawning::usestartspawns() && !level.ingraceperiod) {
        spawning::function_7a87efaa();
    }
    self.lastkillconfirmedtime = 0;
    self.lastkillconfirmedcount = 0;
}

