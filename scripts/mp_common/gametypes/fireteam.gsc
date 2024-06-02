// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\bb.gsc;
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\mp_common\gametypes\match.gsc;
#using scripts\core_common\dogtags.gsc;
#using scripts\killstreaks\mp\killstreaks.gsc;
#using scripts\mp_common\gametypes\spawning.gsc;
#using scripts\mp_common\gametypes\globallogic_utils.gsc;
#using scripts\mp_common\gametypes\globallogic_spawn.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using script_1cc417743d7c262d;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\mp_common\gametypes\gametype.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\spawning_shared.gsc;
#using script_335d0650ed05d36d;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\player\player_role.gsc;
#using scripts\core_common\gameobjects_shared.gsc;

#namespace fireteam;

// Namespace fireteam/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xa4927062, Offset: 0x190
// Size: 0x15c
function event_handler[gametype_init] main(*eventstruct) {
    globallogic::init();
    util::registerroundscorelimit(0, 10000);
    level.takelivesondeath = 1;
    level.onstartgametype = &onstartgametype;
    level.onspawnplayer = &onspawnplayer;
    level.onroundswitch = &onroundswitch;
    level.onendround = &onendround;
    player::function_cf3aa03d(&onplayerkilled);
    spawning::addsupportedspawnpointtype("tdm");
    spawning::addsupportedspawnpointtype("fireteam");
    if (getdvarint(#"hash_5795d85dc4b1b0d9", 0)) {
        level.var_49a15413 = getdvarint(#"hash_5795d85dc4b1b0d9", 0);
        level.scoremodifiercallback = &function_f9df98d3;
    }
}

// Namespace fireteam/fireteam
// Params 0, eflags: 0x0
// Checksum 0x1fad1e09, Offset: 0x2f8
// Size: 0x8c
function onstartgametype() {
    level.displayroundendtext = 0;
    level thread onscoreclosemusic();
    if (!util::isoneround()) {
        level.displayroundendtext = 1;
        if (level.scoreroundwinbased) {
            globallogic_score::resetteamscores();
        }
    }
    if (is_true(level.droppedtagrespawn)) {
        level.numlives = 1;
    }
}

// Namespace fireteam/fireteam
// Params 1, eflags: 0x0
// Checksum 0xbae5bcb5, Offset: 0x390
// Size: 0x7c
function onspawnplayer(predictedspawn) {
    self.usingobj = undefined;
    if (spawning::usestartspawns() && !level.ingraceperiod && !level.playerqueuedrespawn) {
        spawning::function_7a87efaa();
    }
    spawning::onspawnplayer(predictedspawn);
}

// Namespace fireteam/fireteam
// Params 0, eflags: 0x0
// Checksum 0xc30aec68, Offset: 0x418
// Size: 0x24
function onroundswitch() {
    gametype::on_round_switch();
    globallogic_score::function_9779ac61();
}

// Namespace fireteam/fireteam
// Params 1, eflags: 0x0
// Checksum 0xe4e16bd, Offset: 0x448
// Size: 0x24
function onendround(var_c1e98979) {
    function_e596b745(var_c1e98979);
}

// Namespace fireteam/fireteam
// Params 0, eflags: 0x0
// Checksum 0x8f4acc22, Offset: 0x478
// Size: 0x19c
function onscoreclosemusic() {
    teamscores = [];
    while (!level.gameended) {
        scorelimit = level.scorelimit;
        scorethreshold = scorelimit * 0.1;
        scorethresholdstart = abs(scorelimit - scorethreshold);
        scorelimitcheck = scorelimit - 10;
        topscore = 0;
        runnerupscore = 0;
        foreach (team, _ in level.teams) {
            score = [[ level._getteamscore ]](team);
            if (score > topscore) {
                runnerupscore = topscore;
                topscore = score;
                continue;
            }
            if (score > runnerupscore) {
                runnerupscore = score;
            }
        }
        scoredif = topscore - runnerupscore;
        if (topscore >= scorelimit * 0.5) {
            level notify(#"sndmusichalfway");
            return;
        }
        wait(1);
    }
}

// Namespace fireteam/fireteam
// Params 9, eflags: 0x0
// Checksum 0xb1380bf, Offset: 0x620
// Size: 0x214
function onplayerkilled(einflictor, attacker, idamage, smeansofdeath, weapon, vdir, shitloc, psoffsettime, deathanimduration) {
    if (smeansofdeath == "MOD_META") {
        return;
    }
    if (is_true(level.droppedtagrespawn)) {
        thread dogtags::checkallowspectating();
        should_spawn_tags = self dogtags::should_spawn_tags(einflictor, attacker, idamage, smeansofdeath, weapon, vdir, shitloc, psoffsettime, deathanimduration);
        should_spawn_tags = should_spawn_tags && !globallogic_spawn::mayspawn();
        if (should_spawn_tags) {
            level thread dogtags::spawn_dog_tag(self, attacker, &dogtags::onusedogtag, 0);
        }
    }
    if (isplayer(attacker) == 0 || attacker.team == self.team) {
        return;
    }
    if (!isdefined(killstreaks::get_killstreak_for_weapon(weapon)) || is_true(level.killstreaksgivegamescore)) {
        attacker globallogic_score::giveteamscoreforobjective(attacker.team, level.teamscoreperkill);
        self globallogic_score::giveteamscoreforobjective(self.team, level.teamscoreperdeath * -1);
        if (smeansofdeath == "MOD_HEAD_SHOT") {
            attacker globallogic_score::giveteamscoreforobjective(attacker.team, level.teamscoreperheadshot);
        }
    }
}

// Namespace fireteam/fireteam
// Params 1, eflags: 0x0
// Checksum 0x74aea4ce, Offset: 0x840
// Size: 0x104
function function_e596b745(var_c1e98979) {
    gamemodedata = spawnstruct();
    gamemodedata.remainingtime = max(0, globallogic_utils::gettimeremaining());
    switch (var_c1e98979) {
    case 2:
        gamemodedata.wintype = "time_limit_reached";
        break;
    case 3:
        gamemodedata.wintype = "score_limit_reached";
        break;
    case 9:
    case 10:
    default:
        gamemodedata.wintype = "NA";
        break;
    }
    bb::function_bf5cad4e(gamemodedata);
}

// Namespace fireteam/fireteam
// Params 2, eflags: 0x0
// Checksum 0xb6a2667e, Offset: 0x950
// Size: 0x3e
function function_f9df98d3(type, value) {
    if (type === #"ekia") {
        return (value + level.var_49a15413);
    }
    return value;
}

