// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\spawnbeacon.gsc;
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\mp_common\gametypes\globallogic_utils.gsc;
#using scripts\mp_common\gametypes\globallogic_spawn.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using script_1304295570304027;
#using scripts\mp_common\challenges.gsc;
#using scripts\mp_common\bb.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using script_7a8059ca02b7b09e;
#using scripts\core_common\spawning_shared.gsc;
#using script_335d0650ed05d36d;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\globallogic\globallogic_score.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;

#namespace dom;

// Namespace dom/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x608b35e3, Offset: 0x2b0
// Size: 0x154
function event_handler[gametype_init] main(*eventstruct) {
    globallogic::init();
    namespace_5c32f369::init();
    util::registerscorelimit(0, 2000);
    util::registerroundscorelimit(0, 2000);
    level.killstreaksgivegamescore = getgametypesetting(#"killstreaksgivegamescore");
    level.onstartgametype = &onstartgametype;
    player::function_cf3aa03d(&onplayerkilled);
    player::function_3c5cc656(&function_610d3790);
    level.onendround = &onendround;
    level.var_1aef539f = &function_a800815;
    level.var_d3a438fb = &function_d3a438fb;
    clientfield::register("scriptmover", "scriptid", 1, 5, "int");
}

// Namespace dom/dom
// Params 0, eflags: 0x0
// Checksum 0x279cdbac, Offset: 0x410
// Size: 0x29c
function onstartgametype() {
    namespace_5c32f369::onstartgametype();
    level.flagbasefxid = [];
    level thread function_873b25c7();
    foreach (var_85344832 in level.domflags) {
        spawn_beacon::function_18f38647(var_85344832.trigger);
    }
    function_4e5d7f76();
    level.var_882f7b6a[1] = "a";
    level.var_882f7b6a[2] = "b";
    level.var_882f7b6a[3] = "c";
    level.var_882f7b6a[4] = "d";
    level.var_882f7b6a[5] = "e";
    level.var_882f7b6a[6] = "f";
    level.zones = getentarray("flag_primary", "targetname");
    foreach (zone in level.zones) {
        othervisuals = getentarray("dom" + level.var_882f7b6a[zone.script_index], "targetname");
        if (isdefined(zone.target2)) {
            othervisuals = getentarray(zone.target2, "targetname");
        }
        for (j = 0; j < othervisuals.size; j++) {
            othervisuals[j] notsolid();
        }
    }
    level thread function_171b6c0();
}

// Namespace dom/dom
// Params 0, eflags: 0x0
// Checksum 0x4fe90472, Offset: 0x6b8
// Size: 0x148
function function_171b6c0() {
    level endon(#"game_ended");
    foreach (zone in level.zones) {
        othervisuals = getentarray("dom" + level.var_882f7b6a[zone.script_index], "targetname");
        if (isdefined(zone.target2)) {
            othervisuals = getentarray(zone.target2, "targetname");
        }
        for (j = 0; j < othervisuals.size; j++) {
            othervisuals[j] clientfield::set("scriptid", zone.script_index);
        }
    }
}

// Namespace dom/dom
// Params 1, eflags: 0x0
// Checksum 0xf1483f7f, Offset: 0x808
// Size: 0x194
function onendround(var_c1e98979) {
    foreach (var_85344832 in level.domflags) {
        if (var_85344832.var_45438686 == 1) {
            team = var_85344832 gameobjects::get_owner_team();
            label = var_85344832 gameobjects::get_label();
            challenges::holdflagentirematch(team, label);
        }
        if (isdefined(var_85344832.var_56d394cd)) {
            if (!isdefined(var_85344832.var_249009fd)) {
                var_85344832.var_249009fd = [];
            } else if (!isarray(var_85344832.var_249009fd)) {
                var_85344832.var_249009fd = array(var_85344832.var_249009fd);
            }
            var_85344832.var_249009fd[var_85344832.var_249009fd.size] = gettime() - var_85344832.var_56d394cd;
        }
    }
    function_1609a882(var_c1e98979);
}

// Namespace dom/dom
// Params 0, eflags: 0x0
// Checksum 0x1d914498, Offset: 0x9a8
// Size: 0x90
function function_873b25c7() {
    level endon(#"game_ended", #"hash_62be49427d942098");
    level thread function_e2073ee4(60);
    for (;;) {
        waitresult = level waittill(#"hash_3809ea07643ef10e");
        waitresult.player challenges::function_f96312cb();
    }
}

// Namespace dom/dom
// Params 1, eflags: 0x0
// Checksum 0x5856651d, Offset: 0xa40
// Size: 0x40
function function_e2073ee4(*time) {
    level endon(#"game_ended");
    wait(60);
    level notify(#"hash_62be49427d942098");
}

// Namespace dom/dom
// Params 4, eflags: 0x0
// Checksum 0x2f25aef6, Offset: 0xa88
// Size: 0xc34
function function_610d3790(einflictor, victim, *idamage, weapon) {
    attacker = self;
    if (isdefined(weapon) && isdefined(level.iskillstreakweapon)) {
        if ([[ level.iskillstreakweapon ]](weapon) || isdefined(weapon.statname) && [[ level.iskillstreakweapon ]](getweapon(weapon.statname))) {
            weaponiskillstreak = 1;
        }
    }
    var_1cfdf798 = isdefined(idamage.lastattacker) ? idamage.lastattacker === attacker : 0;
    foreach (var_b9adb6e8 in level.domflags) {
        flag = var_b9adb6e8.trigger;
        if (isdefined(victim) && isdefined(attacker) && victim != attacker) {
            if (victim istouching(flag)) {
                awardscore = 1;
            } else {
                continue;
            }
        } else {
            awardscore = 1;
        }
        owner_team = flag.gameobject gameobjects::get_owner_team();
        if (var_1cfdf798 && idamage globallogic_score::function_2e33e275(victim, attacker, weapon, flag)) {
            idamage thread globallogic_score::function_7d830bc(victim, attacker, weapon, flag, owner_team);
        }
    }
    if (!is_true(awardscore)) {
        return;
    }
    if (isdefined(attacker) && isplayer(attacker)) {
        scoreeventprocessed = 0;
        if (!scoreeventprocessed && isdefined(attacker.touchtriggers) && attacker.touchtriggers.size && attacker.pers[#"team"] != idamage.pers[#"team"]) {
            triggerids = getarraykeys(attacker.touchtriggers);
            domflag = attacker.touchtriggers[triggerids[0]].gameobject;
            team = attacker.pers[#"team"];
            if (team != domflag gameobjects::get_owner_team()) {
                if (!is_true(weaponiskillstreak) && var_1cfdf798) {
                    scoreevents::function_2a2e1723(#"kill_enemy_while_capping_dom", attacker, idamage, weapon);
                    attacker stats::function_cc215323(#"hash_61cf0b4451d9ff9b", 1);
                }
                attacker challenges::function_2f462ffd(idamage, weapon, victim, domflag);
                attacker.pers[#"objectiveekia"]++;
                attacker.objectiveekia = attacker.pers[#"objectiveekia"];
                attacker.pers[#"objectives"]++;
                attacker.objectives = attacker.pers[#"objectives"];
                scoreeventprocessed = 1;
            }
        }
        foreach (var_b9adb6e8 in level.domflags) {
            trigger = var_b9adb6e8.trigger;
            flagteam = "invalidTeam";
            inflagzone = 0;
            defendedflag = 0;
            offendedflag = 0;
            if (idamage istouching(trigger) || attacker istouching(trigger)) {
                inflagzone = 1;
                if (trigger getflagteam() == attacker.pers[#"team"] || trigger getflagteam() == #"neutral") {
                    defendedflag = 1;
                } else {
                    offendedflag = 1;
                }
            }
            if (inflagzone && isplayer(attacker) && attacker.pers[#"team"] != idamage.pers[#"team"]) {
                if (offendedflag) {
                    if (!isdefined(attacker.dom_defends)) {
                        attacker.dom_defends = 0;
                    }
                    attacker.dom_defends++;
                    if (level.playerdefensivemax >= attacker.dom_defends) {
                        if (var_1cfdf798) {
                            attacker thread challenges::killedbasedefender(trigger);
                            level thread telemetry::function_18135b72(#"hash_37f96a1d3c57a089", {#player:idamage, #var_bdc4bbd2:#"defending"});
                        }
                        if (!scoreeventprocessed) {
                            if (!is_true(weaponiskillstreak) && var_1cfdf798) {
                                scoreevents::function_2a2e1723(#"killed_defender", attacker, idamage, weapon);
                            }
                            attacker challenges::function_2f462ffd(idamage, weapon, victim, trigger.gameobject);
                            attacker.pers[#"objectiveekia"]++;
                            attacker.objectiveekia = attacker.pers[#"objectiveekia"];
                            attacker.pers[#"objectives"]++;
                            attacker.objectives = attacker.pers[#"objectives"];
                            scoreeventprocessed = 1;
                        }
                        break;
                    } else {
                        /#
                            attacker iprintlnbold("<unknown string>");
                        #/
                    }
                }
                if (defendedflag) {
                    if (!isdefined(attacker.dom_offends)) {
                        attacker.dom_offends = 0;
                    }
                    if (var_1cfdf798) {
                        attacker thread updateattackermultikills();
                    }
                    attacker.dom_offends++;
                    if (level.playeroffensivemax >= attacker.dom_offends) {
                        if (var_1cfdf798) {
                            attacker.pers[#"defends"]++;
                            attacker.defends = attacker.pers[#"defends"];
                            attacker recordgameevent("return");
                            level thread telemetry::function_18135b72(#"hash_540cddd637f71a5e", {#player:attacker, #eventtype:#"return"});
                            attacker thread challenges::killedbaseoffender(trigger, weapon, victim);
                            attacker challenges::killedzoneattacker(weapon);
                            level thread telemetry::function_18135b72(#"hash_37f96a1d3c57a089", {#player:idamage, #var_bdc4bbd2:#"assaulting"});
                        }
                        if (!scoreeventprocessed) {
                            if (!is_true(weaponiskillstreak) && var_1cfdf798) {
                                scoreevents::function_2a2e1723(#"killed_attacker", attacker, idamage, weapon);
                            }
                            attacker challenges::function_2f462ffd(idamage, weapon, victim, trigger.gameobject);
                            attacker.pers[#"objectiveekia"]++;
                            attacker.objectiveekia = attacker.pers[#"objectiveekia"];
                            attacker.pers[#"objectives"]++;
                            attacker.objectives = attacker.pers[#"objectives"];
                            scoreeventprocessed = 1;
                        }
                        break;
                    }
                    /#
                        attacker iprintlnbold("<unknown string>");
                    #/
                }
            }
        }
        if (var_1cfdf798 && !is_true(weaponiskillstreak) && isdefined(idamage.touchtriggers) && idamage.touchtriggers.size && attacker.pers[#"team"] != idamage.pers[#"team"]) {
            triggerids = getarraykeys(idamage.touchtriggers);
            flag = idamage.touchtriggers[triggerids[0]].gameobject;
            ownerteam = flag gameobjects::get_owner_team();
            team = idamage.pers[#"team"];
            if (team != ownerteam) {
                scoreevents::processscoreevent(#"kill_enemy_that_is_capping_your_objective", attacker, idamage, weapon);
                scoreeventprocessed = 1;
                if (flag.contested === 1) {
                    attacker killwhilecontesting(flag, weapon);
                }
            }
        }
        if (var_1cfdf798 && scoreeventprocessed === 1) {
            attacker challenges::function_82bb78f7(weapon, idamage);
        }
    }
}

// Namespace dom/dom
// Params 9, eflags: 0x0
// Checksum 0x495a97cc, Offset: 0x16c8
// Size: 0xf4
function onplayerkilled(*einflictor, attacker, *idamage, smeansofdeath, weapon, *vdir, *shitloc, *psoffsettime, *deathanimduration) {
    if (psoffsettime == "MOD_META") {
        return;
    }
    if (isplayer(shitloc) == 0 || shitloc.team == self.team) {
        return;
    }
    if (!isdefined(killstreaks::get_killstreak_for_weapon(deathanimduration)) || is_true(level.killstreaksgivegamescore)) {
        shitloc globallogic_score::giveteamscoreforobjective(shitloc.team, level.teamscoreperkill);
    }
}

// Namespace dom/dom
// Params 2, eflags: 0x0
// Checksum 0x831e2ffa, Offset: 0x17c8
// Size: 0x180
function function_a800815(victim, attacker) {
    if (!isdefined(victim) || !isdefined(victim.pers) || !isdefined(victim.pers[#"team"])) {
        return false;
    }
    if (!isdefined(attacker) || !isdefined(attacker.pers) || !isdefined(attacker.pers[#"team"])) {
        return false;
    }
    if (isdefined(victim.touchtriggers) && victim.touchtriggers.size && attacker.pers[#"team"] != victim.pers[#"team"]) {
        triggerids = getarraykeys(victim.touchtriggers);
        domflag = victim.touchtriggers[triggerids[0]].gameobject;
        team = victim.pers[#"team"];
        if (team != domflag gameobjects::get_owner_team()) {
            return true;
        }
    }
    return false;
}

// Namespace dom/dom
// Params 1, eflags: 0x0
// Checksum 0xf42c829c, Offset: 0x1950
// Size: 0xaa
function function_d3a438fb(entity) {
    foreach (var_85344832 in level.domflags) {
        if (entity istouching(var_85344832.trigger)) {
            return true;
        }
    }
    return false;
}

// Namespace dom/dom
// Params 2, eflags: 0x0
// Checksum 0x1e5b6bbb, Offset: 0x1a08
// Size: 0x206
function killwhilecontesting(flag, weapon) {
    self notify(#"killwhilecontesting");
    self endon(#"killwhilecontesting", #"disconnect");
    killtime = gettime();
    playerteam = self.pers[#"team"];
    if (!isdefined(self.clearenemycount)) {
        self.clearenemycount = 0;
    }
    self.clearenemycount++;
    flag waittill(#"contest_over");
    if (playerteam != self.pers[#"team"] || isdefined(self.spawntime) && killtime < self.spawntime) {
        self.clearenemycount = 0;
        return;
    }
    if (flag.ownerteam != playerteam && flag gameobjects::get_owner_team() != #"neutral") {
        self.clearenemycount = 0;
        return;
    }
    if (self.clearenemycount >= 2 && killtime + 200 > gettime()) {
        scoreevents::processscoreevent(#"clear_2_attackers", self, undefined, undefined);
        self challenges::function_e0f51b6f(weapon);
        self stats::function_dad108fa(#"hash_70320f43067a9540", 1);
        self stats::function_cc215323(#"hash_3c79e0a509575a03", 1);
    }
    self.clearenemycount = 0;
}

// Namespace dom/dom
// Params 0, eflags: 0x0
// Checksum 0xc2848f0f, Offset: 0x1c18
// Size: 0xae
function updateattackermultikills() {
    self endon(#"disconnect");
    level endon(#"game_ended");
    self notify(#"updatedomrecentkills");
    self endon(#"updatedomrecentkills");
    if (!isdefined(self.recentdomattackerkillcount)) {
        self.recentdomattackerkillcount = 0;
    }
    self.recentdomattackerkillcount++;
    wait(4);
    if (self.recentdomattackerkillcount > 1) {
        self challenges::domattackermultikill(self.recentdomattackerkillcount);
    }
    self.recentdomattackerkillcount = 0;
}

// Namespace dom/dom
// Params 0, eflags: 0x0
// Checksum 0x94981d8e, Offset: 0x1cd0
// Size: 0x1a
function getflagteam() {
    return self.gameobject gameobjects::get_owner_team();
}

// Namespace dom/dom
// Params 0, eflags: 0x0
// Checksum 0x6eb42032, Offset: 0x1cf8
// Size: 0x1fa
function function_4e5d7f76() {
    descriptorsbylinkname = [];
    descriptors = getentarray("flag_descriptor", "targetname");
    foreach (var_85344832 in level.domflags) {
        closestdist = undefined;
        closestdesc = undefined;
        for (j = 0; j < descriptors.size; j++) {
            dist = distance(var_85344832.trigger.origin, descriptors[j].origin);
            if (!isdefined(closestdist) || dist < closestdist) {
                closestdist = dist;
                closestdesc = descriptors[j];
            }
        }
        if (!isdefined(closestdesc)) {
            globallogic_utils::add_map_error("there is no flag_descriptor in the map! see explanation in dom.gsc");
            break;
        }
        if (isdefined(closestdesc.flag)) {
            globallogic_utils::add_map_error("flag_descriptor with script_linkname \"" + closestdesc.script_linkname + "\" is nearby more than one flag; is there a unique descriptor near each flag?");
            continue;
        }
        var_85344832.trigger.descriptor = closestdesc;
        closestdesc.flag = var_85344832.trigger;
        descriptorsbylinkname[closestdesc.script_linkname] = closestdesc;
    }
    if (globallogic_utils::print_map_errors()) {
        return 0;
    }
}

// Namespace dom/dom
// Params 1, eflags: 0x0
// Checksum 0x5f687691, Offset: 0x1f00
// Size: 0x224
function function_1609a882(var_c1e98979) {
    gamemodedata = spawnstruct();
    switch (var_c1e98979) {
    case 4:
        gamemodedata.wintype = "round_score_reached";
        break;
    case 9:
    case 10:
    default:
        gamemodedata.wintype = "NA";
        break;
    }
    bb::function_bf5cad4e(gamemodedata);
    for (var_268d0315 = 0; var_268d0315 < level.domflags.size; var_268d0315++) {
        domflag = level.domflags[var_268d0315];
        var_9669dd4c = 0;
        for (var_be3d50b0 = 0; var_be3d50b0 < domflag.var_249009fd.size; var_be3d50b0++) {
            var_9669dd4c += domflag.var_249009fd[var_be3d50b0];
        }
        if (domflag.var_249009fd.size != 0) {
            averagetime = var_9669dd4c / domflag.var_249009fd.size;
        }
        var_93746b40 = {#gametime:function_f8d53445(), #round:game.roundsplayed, #label:domflag gameobjects::get_label(), #var_afd986ce:isdefined(averagetime) ? averagetime : 0};
        function_92d1707f(#"hash_4b747d11b8ad1b23", var_93746b40);
    }
}

