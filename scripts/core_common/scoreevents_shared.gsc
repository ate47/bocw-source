// Atian COD Tools GSC CW decompiler test
#using script_7a8059ca02b7b09e;
#using scripts\core_common\rank_shared.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\abilities\ability_power.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\contracts_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace scoreevents;

// Namespace scoreevents/scoreevents_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xd1a072d7, Offset: 0x1a0
// Size: 0xf2
function registerscoreeventcallback(callback, func) {
    if (!isdefined(level.scoreeventcallbacks)) {
        level.scoreeventcallbacks = [];
    }
    if (!isdefined(level.scoreeventcallbacks[callback])) {
        level.scoreeventcallbacks[callback] = [];
    }
    if (!isdefined(level.scoreeventcallbacks[callback])) {
        level.scoreeventcallbacks[callback] = [];
    } else if (!isarray(level.scoreeventcallbacks[callback])) {
        level.scoreeventcallbacks[callback] = array(level.scoreeventcallbacks[callback]);
    }
    level.scoreeventcallbacks[callback][level.scoreeventcallbacks[callback].size] = func;
}

// Namespace scoreevents/scoreevents_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x2d46ccc5, Offset: 0x2a0
// Size: 0xf2
function function_9677601b(callback, func) {
    if (!isdefined(level.var_8c00e05d)) {
        level.var_8c00e05d = [];
    }
    if (!isdefined(level.var_8c00e05d[callback])) {
        level.var_8c00e05d[callback] = [];
    }
    if (!isdefined(level.var_8c00e05d[callback])) {
        level.var_8c00e05d[callback] = [];
    } else if (!isarray(level.var_8c00e05d[callback])) {
        level.var_8c00e05d[callback] = array(level.var_8c00e05d[callback]);
    }
    level.var_8c00e05d[callback][level.var_8c00e05d[callback].size] = func;
}

// Namespace scoreevents/scoreevents_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xca804e0b, Offset: 0x3a0
// Size: 0xc0
function function_6f51d1e9(event, players, victim, weapon) {
    if (!isdefined(players)) {
        return;
    }
    foreach (player in players) {
        if (!isdefined(player)) {
            continue;
        }
        processscoreevent(event, player, victim, weapon);
    }
}

// Namespace scoreevents/scoreevents_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xc76ec1b, Offset: 0x468
// Size: 0x7e
function function_2a2e1723(event, player, victim, weapon) {
    scoregiven = processscoreevent(event, player, victim, weapon, undefined, undefined, undefined, 1);
    if (isdefined(victim.var_1318544a)) {
        victim.var_1318544a.var_7b4d33ac = 1;
    }
    return scoregiven;
}

// Namespace scoreevents/scoreevents_shared
// Params 9, eflags: 0x2 linked
// Checksum 0xfcad663, Offset: 0x4f0
// Size: 0x9c8
function processscoreevent(event, player, victim, weapon, var_36f23f1f, var_dbaa74e2, var_28e349dc, var_6d2812ce, inflictor) {
    scoregiven = 0;
    if (is_true(victim.var_12745932)) {
        return scoregiven;
    }
    if (isdefined(level.scoreinfo[event]) && is_true(level.scoreinfo[event][#"is_deprecated"])) {
        return scoregiven;
    }
    if (is_true(level.disablescoreevents)) {
        return scoregiven;
    }
    if (!isplayer(player)) {
        return scoregiven;
    }
    if (isdefined(level.var_e4688422)) {
        foreach (var_91c18f6b in level.var_e4688422) {
            if (var_91c18f6b === event) {
                return scoregiven;
            }
        }
    }
    profileNamedStart(#"");
    isscoreevent = 0;
    /#
        if (getdvarint(#"logscoreevents", 0) > 0) {
            if (!isdefined(level.var_10cd7193)) {
                level.var_10cd7193 = [];
            }
            eventstr = ishash(event) ? function_9e72a96(event) : event;
            if (!isdefined(level.var_10cd7193)) {
                level.var_10cd7193 = [];
            } else if (!isarray(level.var_10cd7193)) {
                level.var_10cd7193 = array(level.var_10cd7193);
            }
            level.var_10cd7193[level.var_10cd7193.size] = eventstr;
        }
    #/
    if (isdefined(level.challengesoneventreceived)) {
        player thread [[ level.challengesoneventreceived ]](event);
    }
    if (isdefined(level.var_6c0f31f5)) {
        profilestart();
        params = {};
        params.event = event;
        params.victim = victim;
        player [[ level.var_6c0f31f5 ]](params);
        profilestop();
    }
    if (isregisteredevent(event)) {
        if (isdefined(level.scoreongiveplayerscore) && !is_true(var_28e349dc)) {
            scoregiven = [[ level.scoreongiveplayerscore ]](event, player, victim, undefined, weapon, var_36f23f1f, var_dbaa74e2);
            if (scoregiven > 0) {
                player ability_power::power_gain_event_score(event, victim, scoregiven, weapon);
                /#
                    if (getdvarint(#"hash_628a73b6809e0598", 0) > 0) {
                        println("<unknown string>" + player.playername + "<unknown string>" + function_9e72a96(event) + "<unknown string>" + scoregiven);
                    }
                #/
            }
        }
    }
    if (shouldaddrankxp(player) && (!isdefined(victim) || !is_true(victim.disable_score_events))) {
        pickedup = isdefined(player.pickedupweapons[weapon]);
        xp_difficulty_multiplier = 1;
        var_50e404bf = 1;
        if (isdefined(level.var_3426461d)) {
            xp_difficulty_multiplier = player [[ level.var_3426461d ]](event);
        }
        if (isdefined(level.var_2f528eb0)) {
            var_50e404bf = player [[ level.var_2f528eb0 ]](event);
        }
        var_6b09455c = undefined;
        if (var_6d2812ce === 1 && isdefined(level.var_e7152385)) {
            var_6b09455c = [[ level.var_e7152385 ]]({#victim:victim});
        }
        if (isdefined(weapon) && !pickedup) {
            weaponitemindex = getbaseweaponitemindex(weapon);
            gunxp = isdefined(player function_5ab9855c(weaponitemindex)) ? player function_5ab9855c(weaponitemindex) : 0;
        }
        player addrankxp(event, 0, weapon, player.class_num, pickedup, xp_difficulty_multiplier, var_6b09455c, var_50e404bf);
        if (isdefined(weapon) && !pickedup) {
            newgunxp = isdefined(player function_5ab9855c(weaponitemindex)) ? player function_5ab9855c(weaponitemindex) : 0;
            var_de0c8b34 = newgunxp - gunxp;
            if (var_de0c8b34 > 0) {
                level thread telemetry::function_18135b72(#"hash_b88b6d2e0028e13", {#player:player, #weapon:weapon, #statname:#"xpearned", #value:var_de0c8b34, #weaponpickedup:pickedup});
            }
        }
        if (level.hardcoremode && isdefined(level.var_c26a3a23[event])) {
            player stats::function_dad108fa(level.var_c26a3a23[event], 1);
        }
        if (isdefined(weapon) && isdefined(level.scoreinfo[event])) {
            var_6d1793bb = level.scoreinfo[event][#"medalnamehash"];
            if (isdefined(var_6d1793bb)) {
                specialistindex = player getspecialistindex();
                medalname = function_dcad256c(specialistindex, currentsessionmode(), 0);
                if (medalname == var_6d1793bb) {
                    player.pers["ability_medal_count" + specialistindex] = (isdefined(player.pers["ability_medal_count" + specialistindex]) ? player.pers["ability_medal_count" + specialistindex] : 0) + 1;
                }
                medalname = function_dcad256c(specialistindex, currentsessionmode(), 1);
                if (medalname == var_6d1793bb) {
                    player.pers["equipment_medal_count" + specialistindex] = (isdefined(player.pers["equipment_medal_count" + specialistindex]) ? player.pers["equipment_medal_count" + specialistindex] : 0) + 1;
                }
            }
        }
    }
    profileNamedStop();
    if (sessionmodeiscampaigngame() && isdefined(xp_difficulty_multiplier)) {
        if (isdefined(victim) && isdefined(victim.team)) {
            if (victim.team == #"axis" || victim.team == #"team3") {
                scoregiven *= xp_difficulty_multiplier;
            }
        }
    }
    if (isdefined(victim.deathtime)) {
        time = victim.deathtime;
    }
    function_644d867a(player, time, event, weapon, inflictor);
    return scoregiven;
}

// Namespace scoreevents/scoreevents_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x4ed809d0, Offset: 0xec0
// Size: 0x6e
function doscoreeventcallback(callback, data) {
    function_e4171c51(callback, data);
    function_32358e67(callback, data);
    if (isdefined(data.victim.var_1318544a)) {
        data.victim.var_1318544a = undefined;
    }
}

// Namespace scoreevents/scoreevents_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xc9457c8, Offset: 0xf38
// Size: 0x70
function private function_e4171c51(callback, data) {
    if (!isdefined(level.scoreeventcallbacks[callback])) {
        return;
    }
    for (i = 0; i < level.scoreeventcallbacks[callback].size; i++) {
        thread [[ level.scoreeventcallbacks[callback][i] ]](data);
    }
}

// Namespace scoreevents/scoreevents_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xca06eedc, Offset: 0xfb0
// Size: 0x70
function private function_32358e67(callback, data) {
    if (!isdefined(level.var_8c00e05d[callback])) {
        return;
    }
    for (i = 0; i < level.var_8c00e05d[callback].size; i++) {
        thread [[ level.var_8c00e05d[callback][i] ]](data);
    }
}

// Namespace scoreevents/scoreevents_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2ef7e440, Offset: 0x1028
// Size: 0x186
function shouldaddrankxp(player) {
    if (level.gametype == "fr") {
        return false;
    }
    if (level.gametype == "zclassic" && is_true(level.var_5164a0ca)) {
        return false;
    }
    if (is_true(level.var_4f654f3a)) {
        /#
            playername = "<unknown string>";
            if (isdefined(player) && isdefined(player.name)) {
                playername = player.name;
            }
            println("<unknown string>" + playername);
        #/
        return false;
    }
    if (isdefined(level.var_77d7c40d)) {
        if ([[ level.var_77d7c40d ]](player)) {
            return false;
        }
    }
    if (!isdefined(level.rankcap) || level.rankcap == 0) {
        return true;
    }
    if (player.pers[#"plevel"] > 0 || player.pers[#"rank"] >= level.rankcap) {
        return false;
    }
    return true;
}

// Namespace scoreevents/scoreevents_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x5eb287a, Offset: 0x11b8
// Size: 0xc4
function uninterruptedobitfeedkills(attacker, weapon) {
    self endon(#"disconnect");
    wait(0.1);
    util::waittillslowprocessallowed();
    wait(0.1);
    if (isdefined(attacker)) {
        processscoreevent(#"uninterrupted_obit_feed_kills", attacker, self, weapon);
        attacker contracts::increment_contract(#"contract_mp_quad_feed");
        attacker stats::function_dad108fa(#"hash_3b7d759c8864b5d8", 1);
    }
}

// Namespace scoreevents/scoreevents_shared
// Params 5, eflags: 0x0
// Checksum 0xecdcf4ca, Offset: 0x1288
// Size: 0x64
function function_c046c773(waitduration, event, player, victim, weapon) {
    self endon(#"disconnect");
    wait(waitduration);
    processscoreevent(event, player, victim, weapon);
}

// Namespace scoreevents/scoreevents_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf53b8b93, Offset: 0x12f8
// Size: 0x30
function isregisteredevent(type) {
    if (isdefined(level.scoreinfo[type])) {
        return 1;
    }
    return 0;
}

// Namespace scoreevents/scoreevents_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x4b2cc1c0, Offset: 0x1330
// Size: 0x4c
function decrementlastobituaryplayercountafterfade() {
    level endon(#"reset_obituary_count");
    wait(5);
    level.lastobituaryplayercount--;
    assert(level.lastobituaryplayercount >= 0);
}

// Namespace scoreevents/scoreevents_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x2bf4a054, Offset: 0x1388
// Size: 0x122
function function_2b96d7dc() {
    if (!isdefined(level.var_d1455682)) {
        return undefined;
    }
    table_name = function_6a9e36d6();
    if (!isdefined(table_name)) {
        return undefined;
    }
    args = strtok(table_name, "\");
    if (args.size) {
        table_name = "";
        foreach (index, arg in args) {
            table_name += arg;
            if (index < args.size - 1) {
                table_name += "/";
            }
        }
    }
    return hash(table_name);
}

// Namespace scoreevents/scoreevents_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf3b3d44d, Offset: 0x14b8
// Size: 0x228
function getscoreeventtablename(gametype) {
    table_name = function_2b96d7dc();
    if (isdefined(table_name) && is_true(isassetloaded("stringtable", table_name))) {
        return table_name;
    }
    if (!isdefined(gametype)) {
        gametype = "base";
    }
    prefix = #"gamedata/tables/mp/scoreinfo/mp_scoreinfo";
    if (sessionmodeiscampaigngame()) {
        prefix = #"gamedata/tables/cp/scoreinfo/cp_scoreinfo";
    } else if (sessionmodeiszombiesgame()) {
        prefix = #"gamedata/tables/zm/scoreinfo/zm_scoreinfo";
    } else if (sessionmodeiswarzonegame()) {
        prefix = #"gamedata/tables/wz/scoreinfo/wz_scoreinfo";
    }
    gametype = strreplace(gametype, "_hc", "");
    gametype = strreplace(gametype, "_cdl", "");
    gametype = strreplace(gametype, "_bb", "");
    tablename = prefix + "_" + gametype + ".csv";
    if (!is_true(isassetloaded("stringtable", tablename))) {
        tablename = prefix + "_base.csv";
    }
    if (is_true(isassetloaded("stringtable", tablename))) {
        return tablename;
    }
    return tablename;
}

// Namespace scoreevents/scoreevents_shared
// Params 1, eflags: 0x0
// Checksum 0xbdef755b, Offset: 0x16e8
// Size: 0xe8
function getscoreeventtableid(gametype) {
    scoreinfotableloaded = 0;
    tablename = getscoreeventtablename(gametype);
    scoreinfotableid = tablelookupfindcoreasset(tablename);
    if (!isdefined(scoreinfotableid)) {
        tablelookupfindcoreasset(getscoreeventtablename("base"));
    }
    if (isdefined(scoreinfotableid)) {
        scoreinfotableloaded = 1;
    }
    assert(scoreinfotableloaded, "<unknown string>" + function_9e72a96(getscoreeventtablename()));
    return scoreinfotableid;
}

// Namespace scoreevents/scoreevents_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xafba13e7, Offset: 0x17d8
// Size: 0x1dc
function givecratecapturemedal(crate, capturer) {
    if (isdefined(crate.owner) && isplayer(crate.owner)) {
        if (level.teambased) {
            if (capturer.team != crate.owner.team) {
                crate.owner playlocalsound(#"mpl_crate_enemy_steals");
                if (!isdefined(crate.hacker)) {
                    processscoreevent(#"capture_enemy_crate", capturer, undefined, undefined);
                }
            } else if (isdefined(crate.owner) && capturer != crate.owner) {
                crate.owner playlocalsound(#"mpl_crate_friendly_steals");
                if (!isdefined(crate.hacker)) {
                    level.globalsharepackages++;
                    processscoreevent(#"share_care_package", crate.owner, undefined, undefined);
                }
            }
            return;
        }
        if (capturer != crate.owner) {
            crate.owner playlocalsound(#"mpl_crate_enemy_steals");
            if (!isdefined(crate.hacker)) {
                processscoreevent(#"capture_enemy_crate", capturer, undefined, undefined);
            }
        }
    }
}

// Namespace scoreevents/scoreevents_shared
// Params 1, eflags: 0x0
// Checksum 0xe2d725f1, Offset: 0x19c0
// Size: 0x44
function register_hero_ability_kill_event(event_func) {
    if (!isdefined(level.hero_ability_kill_events)) {
        level.hero_ability_kill_events = [];
    }
    level.hero_ability_kill_events[level.hero_ability_kill_events.size] = event_func;
}

// Namespace scoreevents/scoreevents_shared
// Params 1, eflags: 0x0
// Checksum 0xab8ea5ab, Offset: 0x1a10
// Size: 0x44
function register_hero_ability_multikill_event(event_func) {
    if (!isdefined(level.hero_ability_multikill_events)) {
        level.hero_ability_multikill_events = [];
    }
    level.hero_ability_multikill_events[level.hero_ability_multikill_events.size] = event_func;
}

// Namespace scoreevents/scoreevents_shared
// Params 1, eflags: 0x0
// Checksum 0x1a287799, Offset: 0x1a60
// Size: 0x44
function register_hero_weapon_multikill_event(event_func) {
    if (!isdefined(level.hero_weapon_multikill_events)) {
        level.hero_weapon_multikill_events = [];
    }
    level.hero_weapon_multikill_events[level.hero_weapon_multikill_events.size] = event_func;
}

// Namespace scoreevents/scoreevents_shared
// Params 2, eflags: 0x0
// Checksum 0xa4b8e45c, Offset: 0x1ab0
// Size: 0xb2
function hero_ability_kill_event(ability, victim_ability) {
    if (!isdefined(level.hero_ability_kill_events)) {
        return;
    }
    foreach (event_func in level.hero_ability_kill_events) {
        if (isdefined(event_func)) {
            self [[ event_func ]](ability, victim_ability);
        }
    }
}

// Namespace scoreevents/scoreevents_shared
// Params 2, eflags: 0x0
// Checksum 0xdb99a48d, Offset: 0x1b70
// Size: 0xb2
function hero_ability_multikill_event(killcount, ability) {
    if (!isdefined(level.hero_ability_multikill_events)) {
        return;
    }
    foreach (event_func in level.hero_ability_multikill_events) {
        if (isdefined(event_func)) {
            self [[ event_func ]](killcount, ability);
        }
    }
}

// Namespace scoreevents/scoreevents_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x59cc27b1, Offset: 0x1c30
// Size: 0xb2
function hero_weapon_multikill_event(killcount, weapon) {
    if (!isdefined(level.hero_weapon_multikill_events)) {
        return;
    }
    foreach (event_func in level.hero_weapon_multikill_events) {
        if (isdefined(event_func)) {
            self [[ event_func ]](killcount, weapon);
        }
    }
}

// Namespace scoreevents/scoreevents_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x7dba135b, Offset: 0x1cf0
// Size: 0x34
function function_dcdf1105() {
    self callback::add_callback(#"fully_healed", &player_fully_healed);
}

// Namespace scoreevents/scoreevents_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x1aa3cb3, Offset: 0x1d30
// Size: 0xd4
function player_fully_healed() {
    self.var_ae639436 = undefined;
    if (self.var_9cd2c51d.var_43797ec0 === level.var_507570e9) {
        var_b68a8a9f = self.health - (isdefined(self.var_9cd2c51d.var_6e219f3c) ? self.var_9cd2c51d.var_6e219f3c : 0);
        if (var_b68a8a9f > 0) {
            self stats::function_dad108fa(#"hash_1cd9a591d101dca", var_b68a8a9f);
            self stats::function_dad108fa(#"hash_4c84965d6d12a705", var_b68a8a9f);
            self stats::function_dad108fa(#"hash_4c84905d6d129cd3", var_b68a8a9f);
        }
    }
}

// Namespace scoreevents/scoreevents_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x9f7fdb4f, Offset: 0x1e10
// Size: 0x10
function player_spawned() {
    profilestart();
    self.var_ae639436 = undefined;
    profilestop();
}

// Namespace scoreevents/scoreevents_shared
// Params 3, eflags: 0x0
// Checksum 0xa130c62c, Offset: 0x1e28
// Size: 0xbc
function function_f40d64cc(attacker, vehicle, weapon) {
    if (!isdefined(weapon)) {
        return;
    }
    switch (weapon.statname) {
    case #"ultimate_turret":
        event = "automated_turret_vehicle_destruction";
        break;
    default:
        return;
    }
    victim = isdefined(vehicle) ? vehicle.owner : undefined;
    processscoreevent(event, attacker, victim, weapon);
}

// Namespace scoreevents/scoreevents_shared
// Params 5, eflags: 0x2 linked
// Checksum 0xfead77ea, Offset: 0x1ef0
// Size: 0x1d6
function function_644d867a(attacker, time, statname, weapon, inflictor) {
    var_42648a02 = level.var_42648a02[statname];
    if (isdefined(var_42648a02) && attacker.var_d853c1af !== 1) {
        attackerentnum = attacker getentitynumber();
        if (!isdefined(time)) {
            time = gettime();
        }
        if (!isdefined(level.var_75aa0434[attackerentnum][statname]) || level.var_75aa0434[attackerentnum][statname] < time) {
            var_1215a07e = 1;
            if (isdefined(level.var_1acb0192)) {
                var_1215a07e = [[ level.var_1acb0192 ]](var_42648a02);
            }
            if (sessionmodeiszombiesgame()) {
                n_chance = var_42648a02[1] * var_1215a07e * 100;
                var_bcbd6252 = math::cointoss(n_chance);
            } else {
                var_bcbd6252 = var_42648a02[1] * var_1215a07e > randomfloatrange(0, 1);
            }
            if (var_bcbd6252) {
                function_31eb1b07(attacker, statname, var_42648a02[0], var_42648a02[3], weapon, inflictor);
            }
            level.var_75aa0434[attackerentnum][statname] = time + 100;
        }
    }
}

// Namespace scoreevents/scoreevents_shared
// Params 6, eflags: 0x2 linked
// Checksum 0xb3709e66, Offset: 0x20d0
// Size: 0x184
function function_31eb1b07(player, statname, var_26568428, timetoplay, weapon, inflictor) {
    attackerentnum = player getentitynumber();
    var_46604f00 = level.var_648e79b7[attackerentnum];
    if (isdefined(var_46604f00)) {
        var_30ffb0d9 = isdefined(level.var_42648a02[var_46604f00.statname][0]) ? level.var_42648a02[var_46604f00.statname][0] : 0;
        if (var_26568428 >= var_30ffb0d9) {
            level.var_648e79b7[attackerentnum] = {#statname:statname, #timestamp:gettime() + timetoplay, #weapon:weapon, #einflictor:inflictor};
        }
        return;
    }
    level.var_648e79b7[attackerentnum] = {#statname:statname, #timestamp:gettime() + timetoplay, #weapon:weapon, #einflictor:inflictor};
}

