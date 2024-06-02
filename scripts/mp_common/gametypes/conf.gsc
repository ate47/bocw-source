// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\player\player_utils.gsc;
#using script_43f7c47906da34c7;
#using scripts\mp_common\gametypes\spawning.gsc;
#using scripts\mp_common\gametypes\match.gsc;
#using scripts\mp_common\gametypes\hostmigration.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using script_1cc417743d7c262d;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\core_common\dogtags.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\spawning_shared.gsc;
#using script_335d0650ed05d36d;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\contracts_shared.gsc;

#namespace conf;

// Namespace conf/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xc28f37f, Offset: 0x128
// Size: 0x114
function event_handler[gametype_init] main(*eventstruct) {
    globallogic::init();
    spawning::addsupportedspawnpointtype("tdm");
    spawning::function_32b97d1b(&spawning::function_90dee50d);
    spawning::function_adbbb58a(&spawning::function_c24e290c);
    level.onstartgametype = &onstartgametype;
    level.onspawnplayer = &onspawnplayer;
    player::function_cf3aa03d(&onplayerkilled);
    level.teamscoreperkillconfirmed = getgametypesetting(#"teamscoreperkillconfirmed");
    level.teamscoreperkilldenied = getgametypesetting(#"teamscoreperkilldenied");
}

// Namespace conf/conf
// Params 0, eflags: 0x0
// Checksum 0xfdeae029, Offset: 0x248
// Size: 0x34
function onstartgametype() {
    dogtags::init();
    if (!util::isoneround()) {
        level.displayroundendtext = 1;
    }
}

// Namespace conf/conf
// Params 9, eflags: 0x0
// Checksum 0x297d4b9e, Offset: 0x288
// Size: 0x10c
function onplayerkilled(*einflictor, attacker, *idamage, *smeansofdeath, weapon, *vdir, *shitloc, *psoffsettime, *deathanimduration) {
    if (!isplayer(psoffsettime) || psoffsettime.team == self.team) {
        return;
    }
    level thread dogtags::spawn_dog_tag(self, psoffsettime, &onuse, 0);
    if (!isdefined(killstreaks::get_killstreak_for_weapon(deathanimduration)) || is_true(level.killstreaksgivegamescore)) {
        psoffsettime globallogic_score::giveteamscoreforobjective(psoffsettime.team, level.teamscoreperkill);
    }
}

// Namespace conf/conf
// Params 1, eflags: 0x0
// Checksum 0xa2409e69, Offset: 0x3a0
// Size: 0x372
function onuse(player) {
    tacinsertboost = 0;
    player.pers[#"objectives"]++;
    player.objectives = player.pers[#"objectives"];
    if (level.var_ac25d260 === 1) {
        player cranked::function_cf725f10();
    }
    if (player.team != self.attackerteam) {
        tacinsertboost = self.tacinsert;
        if (isdefined(self.attacker) && self.attacker.team == self.attackerteam) {
            self.attacker luinotifyevent(#"player_callout", 2, #"mp/kill_denied", player.entnum);
        }
        if (!tacinsertboost) {
            player globallogic_score::giveteamscoreforobjective(player.team, level.teamscoreperkilldenied);
            player contracts::increment_contract(#"hash_7f29e6dade49a6b7", 1);
        }
        return;
    }
    /#
        assert(isdefined(player.lastkillconfirmedtime));
        assert(isdefined(player.lastkillconfirmedcount));
    #/
    player.pers[#"killsconfirmed"]++;
    player.killsconfirmed = player.pers[#"killsconfirmed"];
    player globallogic_score::giveteamscoreforobjective(player.team, level.teamscoreperkillconfirmed);
    player contracts::increment_contract(#"hash_27de6edf9043b26f", 1);
    if (level.var_ac25d260 === 1 && isdefined(self.attacker) && self.attacker !== player) {
        self.attacker cranked::function_cf725f10();
    }
    if (!tacinsertboost) {
        currenttime = gettime();
        if (player.lastkillconfirmedtime + 4000 > currenttime) {
            player.lastkillconfirmedcount++;
            if (player.lastkillconfirmedcount >= 3) {
                scoreevents::processscoreevent(#"kill_confirmed_multi", player, undefined, undefined);
                player contracts::increment_contract(#"hash_2185f973f409838f", 1);
                player stats::function_cc215323(#"hash_1b563e11d9caca7e", 1);
                player.lastkillconfirmedcount = 0;
            }
        } else {
            player.lastkillconfirmedcount = 1;
        }
        player.lastkillconfirmedtime = currenttime;
    }
}

// Namespace conf/conf
// Params 1, eflags: 0x0
// Checksum 0x6d9f584a, Offset: 0x720
// Size: 0x8c
function onspawnplayer(predictedspawn) {
    self.usingobj = undefined;
    if (spawning::usestartspawns() && !level.ingraceperiod) {
        spawning::function_7a87efaa();
    }
    self.lastkillconfirmedtime = 0;
    self.lastkillconfirmedcount = 0;
    spawning::onspawnplayer(predictedspawn);
    dogtags::on_spawn_player();
}

