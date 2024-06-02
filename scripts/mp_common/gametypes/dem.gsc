// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\mp_common\gametypes\round.gsc;
#using scripts\mp_common\gametypes\overtime.gsc;
#using scripts\mp_common\gametypes\hud_message.gsc;
#using scripts\mp_common\gametypes\globallogic_utils.gsc;
#using scripts\mp_common\gametypes\globallogic_spawn.gsc;
#using scripts\mp_common\gametypes\globallogic_defaults.gsc;
#using script_1cc417743d7c262d;
#using scripts\mp_common\gametypes\globallogic_audio.gsc;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\mp_common\gametypes\gametype.gsc;
#using scripts\core_common\dogtags.gsc;
#using scripts\core_common\battlechatter.gsc;
#using scripts\mp_common\challenges.gsc;
#using scripts\mp_common\bb.gsc;
#using scripts\core_common\util_shared.gsc;
#using script_7a8059ca02b7b09e;
#using scripts\core_common\spectating.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using script_44b0b8420eabacad;
#using script_335d0650ed05d36d;
#using scripts\core_common\sound_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\potm_shared.gsc;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\medals_shared.gsc;
#using scripts\core_common\influencers_shared.gsc;
#using scripts\core_common\hostmigration_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\demo_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;

#namespace dem;

// Namespace dem/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x3902cd4, Offset: 0x500
// Size: 0x1fc
function event_handler[gametype_init] main(*eventstruct) {
    globallogic::init();
    util::registerscorelimit(0, 500);
    level.onstartgametype = &onstartgametype;
    level.onspawnplayer = &onspawnplayer;
    level.playerspawnedcb = &function_fcf8c3f3;
    player::function_cf3aa03d(&onplayerkilled);
    level.ondeadevent = &ondeadevent;
    level.ononeleftevent = &ononeleftevent;
    level.ontimelimit = &ontimelimit;
    level.onroundswitch = &onroundswitch;
    level.gettimelimit = &gettimelimit;
    level.shouldplayovertimeround = &shouldplayovertimeround;
    level.var_17ae20ae = &function_17ae20ae;
    level.var_6c4ec3fc = &function_8af3b312;
    level.var_21479330 = undefined;
    level.var_3b2307bb = undefined;
    level.ddbombmodel = [];
    level.endgameonscorelimit = 0;
    level.var_cbdf9ba4 = "bombzone_dem";
    level.var_ce802423 = 1;
    globallogic_defaults::function_daa7e9d5();
    spawning::addsupportedspawnpointtype("dem");
    clientfield::register_clientuimodel("Demolition.isCarryingBomb", 1, 1, "int", 0);
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0xf66f9945, Offset: 0x708
// Size: 0x138
function function_b4530b39() {
    level endon(#"game_ended");
    while (game.state != #"playing") {
        waitframe(1);
    }
    globallogic_audio::leader_dialog("roundOvertime");
    foreach (player in level.players) {
        team = player.pers[#"team"];
        if (team === #"spectator") {
            continue;
        }
        player luinotifyevent(#"hash_6b67aa04e378d681", 1, 21);
    }
}

// Namespace dem/dem
// Params 4, eflags: 0x0
// Checksum 0xdf411118, Offset: 0x848
// Size: 0x5e
function function_17ae20ae(*einflictor, *attacker, *smeansofdeath, *weapon) {
    if (isdefined(self.isdefusing) && self.isdefusing || isdefined(self.isplanting) && self.isplanting) {
        return true;
    }
    return false;
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0x81b8d2f9, Offset: 0x8b0
// Size: 0x12c
function onroundswitch() {
    if (game.stat[#"teamscores"][#"allies"] == level.scorelimit - 1 && game.stat[#"teamscores"][#"axis"] == level.scorelimit - 1) {
        aheadteam = getbetterteam();
        if (aheadteam != game.defenders) {
            game.switchedsides = !game.switchedsides;
        }
        level.halftimetype = 4;
        if (isdefined(level.bombzones[1])) {
            level.bombzones[1] gameobjects::disable_object();
        }
        return;
    }
    gametype::on_round_switch();
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0x25a235d9, Offset: 0x9e8
// Size: 0x26a
function getbetterteam() {
    kills[#"allies"] = 0;
    kills[#"axis"] = 0;
    deaths[#"allies"] = 0;
    deaths[#"axis"] = 0;
    for (i = 0; i < level.players.size; i++) {
        player = level.players[i];
        team = player.pers[#"team"];
        if (isdefined(team) && (team == #"allies" || team == #"axis")) {
            kills[team] = kills[team] + player.kills;
            deaths[team] = deaths[team] + player.deaths;
        }
    }
    if (kills[#"allies"] > kills[#"axis"]) {
        return #"allies";
    } else if (kills[#"axis"] > kills[#"allies"]) {
        return #"axis";
    }
    if (deaths[#"allies"] < deaths[#"axis"]) {
        return #"allies";
    } else if (deaths[#"axis"] < deaths[#"allies"]) {
        return #"axis";
    }
    if (randomint(2) == 0) {
        return #"allies";
    }
    return #"axis";
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0x362fc35c, Offset: 0xc60
// Size: 0x244
function onstartgametype() {
    setbombtimer("A", 0);
    setmatchflag("bomb_timer_a", 0);
    setbombtimer("B", 0);
    setmatchflag("bomb_timer_b", 0);
    level.usingextratime = 0;
    hud_message::function_36419c2(1, game.strings[#"target_destroyed"], game.strings[#"target_destroyed"]);
    setclientnamemode("manual_change");
    game.strings[#"target_destroyed"] = #"mp/target_destroyed";
    game.strings[#"bomb_defused"] = #"mp/bomb_defused";
    level._effect[#"bombexplosion"] = #"hash_1811460fd925f1f8";
    level._effect[#"hash_568509fa2561a75d"] = #"hash_4d29da75039cfce";
    bombzones = getentarray(level.var_cbdf9ba4, "targetname");
    if (bombzones.size == 0) {
        level.var_cbdf9ba4 = "bombzone";
    }
    thread updategametypedvars();
    thread bombs();
    level thread function_39dabed5();
    if (is_true(level.droppedtagrespawn)) {
        level.numlives = 1;
    }
    if (overtime::is_overtime_round()) {
        thread function_b4530b39();
    }
}

// Namespace dem/dem
// Params 1, eflags: 0x0
// Checksum 0xe0ee9c6f, Offset: 0xeb0
// Size: 0x6c
function onspawnplayer(predictedspawn) {
    self.isplanting = 0;
    self.isdefusing = 0;
    self.isbombcarrier = !isdefending(self);
    self thread function_1e8f61d1();
    spawning::onspawnplayer(predictedspawn);
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0xd3af70e9, Offset: 0xf28
// Size: 0x54
function function_1e8f61d1() {
    self endon(#"death", #"disconnect");
    waitframe(1);
    self clientfield::set_player_uimodel("Demolition.isCarryingBomb", self.isbombcarrier);
}

// Namespace dem/dem
// Params 1, eflags: 0x0
// Checksum 0x63a65925, Offset: 0xf88
// Size: 0x30
function isdefending(player) {
    if (game.overtime_round) {
        return false;
    }
    return game.defenders == player.team;
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0x9b43e28d, Offset: 0xfc0
// Size: 0x18
function function_fcf8c3f3() {
    level notify(#"spawned_player");
}

// Namespace dem/dem
// Params 9, eflags: 0x0
// Checksum 0xe529d352, Offset: 0xfe0
// Size: 0x6fc
function onplayerkilled(einflictor, attacker, idamage, smeansofdeath, weapon, vdir, shitloc, psoffsettime, deathanimduration) {
    thread checkallowspectating();
    if (is_true(level.droppedtagrespawn)) {
        should_spawn_tags = self dogtags::should_spawn_tags(einflictor, attacker, idamage, smeansofdeath, weapon, vdir, shitloc, psoffsettime, deathanimduration);
        should_spawn_tags = should_spawn_tags && !globallogic_spawn::mayspawn();
        if (should_spawn_tags) {
            level thread dogtags::spawn_dog_tag(self, attacker, &dogtags::onusedogtag, 0);
        }
    }
    bombzone = undefined;
    for (index = 0; index < level.bombzones.size; index++) {
        if (!isdefined(level.bombzones[index].bombexploded) || !level.bombzones[index].bombexploded) {
            dist = distance2dsquared(self.origin, level.bombzones[index].curorigin);
            if (dist < level.defaultoffenseradiussq) {
                bombzone = level.bombzones[index];
                break;
            }
            dist = distance2dsquared(attacker.origin, level.bombzones[index].curorigin);
            if (dist < level.defaultoffenseradiussq) {
                inbombzone = 1;
                break;
            }
        }
    }
    if (isdefined(bombzone) && isplayer(attacker) && attacker.pers[#"team"] != self.pers[#"team"]) {
        if (bombzone gameobjects::get_owner_team() != attacker.team) {
            if (!isdefined(attacker.var_28c6734a)) {
                attacker.var_28c6734a = 0;
            }
            attacker.var_28c6734a++;
            if (level.playeroffensivemax >= attacker.var_28c6734a) {
                attacker medals::offenseglobalcount();
                attacker thread challenges::killedbasedefender(bombzone.trigger);
                scoreevents::processscoreevent("killed_defender", attacker, self, weapon);
                level thread telemetry::function_18135b72(#"hash_37f96a1d3c57a089", {#player:self, #var_bdc4bbd2:#"defending"});
                attacker challenges::function_2f462ffd(self, weapon, einflictor, bombzone.trigger);
                attacker.pers[#"objectiveekia"]++;
                attacker.objectiveekia = attacker.pers[#"objectiveekia"];
                attacker.pers[#"objectives"]++;
                attacker.objectives = attacker.pers[#"objectives"];
            } else {
                /#
                    attacker iprintlnbold("<unknown string>");
                #/
            }
        } else {
            if (!isdefined(attacker.var_b9f51a5d)) {
                attacker.var_b9f51a5d = 0;
            }
            attacker.var_b9f51a5d++;
            if (level.playerdefensivemax >= attacker.var_b9f51a5d) {
                if (isdefined(attacker.pers[#"defends"])) {
                    attacker.pers[#"defends"]++;
                    attacker.defends = attacker.pers[#"defends"];
                }
                attacker medals::defenseglobalcount();
                attacker thread challenges::killedbaseoffender(bombzone.trigger, weapon, einflictor);
                scoreevents::processscoreevent("killed_attacker", attacker, self, weapon);
                level thread telemetry::function_18135b72(#"hash_37f96a1d3c57a089", {#player:self, #var_bdc4bbd2:#"assaulting"});
                attacker challenges::function_2f462ffd(self, weapon, einflictor, bombzone.trigger);
                attacker.pers[#"objectiveekia"]++;
                attacker.objectiveekia = attacker.pers[#"objectiveekia"];
                attacker.pers[#"objectives"]++;
                attacker.objectives = attacker.pers[#"objectives"];
            } else {
                /#
                    attacker iprintlnbold("<unknown string>");
                #/
            }
        }
    }
    if (self.isplanting == 1) {
        level thread telemetry::function_18135b72(#"hash_37f96a1d3c57a089", {#player:self, #var_bdc4bbd2:#"planting"});
    }
    if (self.isdefusing == 1) {
        level thread telemetry::function_18135b72(#"hash_37f96a1d3c57a089", {#player:self, #var_bdc4bbd2:#"defusing"});
    }
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0xbccbd413, Offset: 0x16e8
// Size: 0x144
function checkallowspectating() {
    self endon(#"disconnect");
    waitframe(1);
    update = 0;
    livesleft = !(level.numlives && !self.pers[#"lives"]);
    if (!function_a1ef346b(game.attackers).size && !livesleft) {
        level.spectateoverride[game.attackers].allowenemyspectate = #"all";
        update = 1;
    }
    if (!function_a1ef346b(game.defenders).size && !livesleft) {
        level.spectateoverride[game.defenders].allowenemyspectate = #"all";
        update = 1;
    }
    if (update) {
        spectating::update_settings();
    }
}

// Namespace dem/dem
// Params 2, eflags: 0x0
// Checksum 0x251e026c, Offset: 0x1838
// Size: 0xc4
function function_92164b1c(winningteam, var_c1e98979) {
    foreach (bombzone in level.bombzones) {
        bombzone gameobjects::set_visible(#"hash_161f03feaadc9b8f");
    }
    thread globallogic::function_a3e3bd39(winningteam, var_c1e98979);
}

// Namespace dem/dem
// Params 1, eflags: 0x0
// Checksum 0xf6bfc604, Offset: 0x1908
// Size: 0xd4
function function_6e7465ab(var_c1e98979) {
    foreach (bombzone in level.bombzones) {
        bombzone gameobjects::set_visible(#"hash_161f03feaadc9b8f");
    }
    round::set_flag("tie");
    thread globallogic::end_round(var_c1e98979);
}

// Namespace dem/dem
// Params 1, eflags: 0x0
// Checksum 0xad8688a5, Offset: 0x19e8
// Size: 0x10c
function ondeadevent(team) {
    if (level.bombexploded || level.bombdefused) {
        return;
    }
    if (team == "all") {
        if (level.bombplanted) {
            function_92164b1c(game.attackers, 6);
        } else {
            function_92164b1c(game.defenders, 6);
        }
        return;
    }
    if (team == game.attackers) {
        if (level.bombplanted) {
            return;
        }
        function_92164b1c(game.defenders, 6);
        return;
    }
    if (team == game.defenders) {
        function_92164b1c(game.attackers, 6);
    }
}

// Namespace dem/dem
// Params 1, eflags: 0x0
// Checksum 0x738c18ff, Offset: 0x1b00
// Size: 0x3c
function ononeleftevent(team) {
    if (level.bombexploded || level.bombdefused) {
        return;
    }
    warnlastplayer(team);
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0x3edc7f19, Offset: 0x1b48
// Size: 0x12c
function ontimelimit() {
    if (overtime::is_overtime_round()) {
        function_6e7465ab(2);
        return;
    }
    if (level.teambased) {
        var_3c6bbe27 = 0;
        for (index = 0; index < level.bombzones.size; index++) {
            if (!isdefined(level.bombzones[index].bombexploded) || !level.bombzones[index].bombexploded) {
                var_3c6bbe27++;
            }
        }
        if (var_3c6bbe27 == 0 || level.var_e8b70364 === 1) {
            function_92164b1c(game.attackers, 1);
        } else {
            function_92164b1c(game.defenders, 2);
        }
        return;
    }
    function_6e7465ab(2);
}

// Namespace dem/dem
// Params 1, eflags: 0x0
// Checksum 0xd494be2c, Offset: 0x1c80
// Size: 0x154
function warnlastplayer(team) {
    if (!isdefined(level.warnedlastplayer)) {
        level.warnedlastplayer = [];
    }
    if (isdefined(level.warnedlastplayer[team])) {
        return;
    }
    level.warnedlastplayer[team] = 1;
    players = level.players;
    for (i = 0; i < players.size; i++) {
        player = players[i];
        if (isdefined(player.pers[#"team"]) && player.pers[#"team"] == team && isdefined(player.pers[#"class"])) {
            if (player.sessionstate == "playing" && !player.afk) {
                break;
            }
        }
    }
    if (i == players.size) {
        return;
    }
    players[i] thread givelastattackerwarning();
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0x3f9db264, Offset: 0x1de0
// Size: 0xcc
function givelastattackerwarning() {
    self endon(#"death", #"disconnect");
    fullhealthtime = 0;
    interval = 0.05;
    while (true) {
        if (self.health != self.maxhealth) {
            fullhealthtime = 0;
        } else {
            fullhealthtime += interval;
        }
        wait(interval);
        if (self.health == self.maxhealth && fullhealthtime >= 3) {
            break;
        }
    }
    self globallogic_audio::leader_dialog_on_player("roundSuddenDeath");
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0x28f81b9c, Offset: 0x1eb8
// Size: 0x1bc
function updategametypedvars() {
    level.planttime = getgametypesetting(#"planttime");
    level.defusetime = getgametypesetting(#"defusetime");
    level.bombtimer = getgametypesetting(#"bombtimer");
    level.extratime = getgametypesetting(#"extratime");
    level.overtimetimelimit = getgametypesetting(#"overtimetimelimit");
    level.teamkillpenaltymultiplier = getgametypesetting(#"teamkillpenalty");
    level.teamkillscoremultiplier = getgametypesetting(#"teamkillscore");
    level.var_3db672a4 = getgametypesetting(#"maxplayereventsperminute");
    level.var_f5ae264 = getgametypesetting(#"maxobjectiveeventsperminute");
    level.playeroffensivemax = getgametypesetting(#"maxplayeroffensive");
    level.playerdefensivemax = getgametypesetting(#"maxplayerdefensive");
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0xbcf1c35e, Offset: 0x2080
// Size: 0xe2
function resetbombzone() {
    if (overtime::is_overtime_round()) {
        self gameobjects::set_owner_team(#"neutral");
        self gameobjects::allow_use(#"hash_5ccfd7bbbf07c770");
    } else {
        self gameobjects::allow_use(#"hash_33c49a99551acae7");
    }
    self gameobjects::set_use_time(level.planttime);
    self gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
    self.useweapon = getweapon(#"briefcase_bomb");
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0x5ba5aef, Offset: 0x2170
// Size: 0x64
function setupfordefusing() {
    self gameobjects::allow_use(#"hash_150a20fa4efc5c7a");
    self gameobjects::set_use_time(level.defusetime);
    self gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0x88099c0d, Offset: 0x21e0
// Size: 0x83a
function bombs() {
    level.var_ea8469b5 = 0;
    level.var_119e12f4 = 0;
    level.bombplanted = 0;
    level.bombdefused = 0;
    level.bombexploded = 0;
    sdbomb = getent("sd_bomb", "targetname");
    if (isdefined(sdbomb)) {
        sdbomb delete();
    }
    level.bombzones = [];
    bombzones = getentarray(level.var_cbdf9ba4, "targetname");
    for (index = 0; index < bombzones.size; index++) {
        trigger = bombzones[index];
        scriptlabel = trigger.script_label;
        visuals = getentarray(bombzones[index].target, "targetname");
        var_d584ad9f = getentarray("bombzone_clip" + scriptlabel, "targetname");
        defusetrig = getent(visuals[0].target, "targetname");
        var_b3c46dd0 = game.defenders;
        var_2b4ef22b = #"hash_33c49a99551acae7";
        if (overtime::is_overtime_round()) {
            if (scriptlabel != "_overtime") {
                trigger delete();
                defusetrig delete();
                visuals[0] delete();
                foreach (clip in var_d584ad9f) {
                    clip delete();
                }
                continue;
            }
            var_b3c46dd0 = #"neutral";
            var_2b4ef22b = #"hash_5ccfd7bbbf07c770";
            scriptlabel = "_a";
        } else if (scriptlabel == "_overtime") {
            trigger delete();
            defusetrig delete();
            visuals[0] delete();
            foreach (clip in var_d584ad9f) {
                clip delete();
            }
            continue;
        }
        name = #"dem" + scriptlabel;
        trigger setcursorhint("HINT_INTERACTIVE_PROMPT");
        trigger usetriggerignoreuseholdtime();
        trigger function_268e4500();
        trigger function_682f34cf(-800);
        bombzone = gameobjects::create_use_object(var_b3c46dd0, trigger, visuals, (0, 0, 0), name, 1, 1);
        bombzone gameobjects::allow_use(var_2b4ef22b);
        bombzone gameobjects::set_use_time(level.planttime);
        bombzone.label = scriptlabel;
        bombzone.index = index;
        bombzone gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
        bombzone.onbeginuse = &onbeginuse;
        bombzone.onenduse = &onenduse;
        bombzone.onuse = &function_41ba5f03;
        bombzone.oncantuse = &oncantuse;
        bombzone.useweapon = getweapon(#"briefcase_bomb");
        bombzone.visuals[0].killcament = spawn("script_model", bombzone.visuals[0].origin + (0, 0, 128));
        if (isdefined(level.bomb_zone_fixup)) {
            [[ level.bomb_zone_fixup ]](bombzone);
        }
        for (i = 0; i < visuals.size; i++) {
            if (isdefined(visuals[i].script_exploder)) {
                bombzone.exploderindex = visuals[i].script_exploder;
                break;
            }
        }
        foreach (visual in bombzone.visuals) {
            visual.team = #"none";
        }
        level.bombzones[level.bombzones.size] = bombzone;
        bombzone.bombdefusetrig = defusetrig;
        assert(isdefined(bombzone.bombdefusetrig));
        bombzone.bombdefusetrig.origin += (0, 0, -10000);
        bombzone.bombdefusetrig.label = scriptlabel;
        team_mask = util::getteammask(game.attackers);
        bombzone.spawninfluencer = bombzone influencers::create_influencer("dem_enemy_base", trigger.origin, team_mask);
    }
    for (index = 0; index < level.bombzones.size; index++) {
        array = [];
        for (otherindex = 0; otherindex < level.bombzones.size; otherindex++) {
            if (otherindex != index) {
                array[array.size] = level.bombzones[otherindex];
            }
        }
        level.bombzones[index].otherbombzones = array;
    }
}

// Namespace dem/dem
// Params 3, eflags: 0x0
// Checksum 0x7976c0ec, Offset: 0x2a28
// Size: 0xbc
function setbomboverheatingafterweaponchange(useobject, overheated, heat) {
    self endon(#"death", #"disconnect", #"joined_team", #"joined_spectators");
    waitresult = self waittill(#"weapon_change");
    if (waitresult.weapon == useobject.useweapon) {
        self setweaponoverheating(overheated, heat, waitresult.weapon);
    }
}

// Namespace dem/dem
// Params 1, eflags: 0x0
// Checksum 0x3b50d012, Offset: 0x2af0
// Size: 0x88
function function_208ed5d5(team) {
    team = util::get_team_mapping(team);
    if (!level.teambased) {
        return true;
    }
    owner_team = self gameobjects::get_owner_team();
    if (owner_team == #"any") {
        return true;
    }
    if (owner_team == team) {
        return true;
    }
    return false;
}

// Namespace dem/dem
// Params 1, eflags: 0x0
// Checksum 0x205f9119, Offset: 0x2b80
// Size: 0x23c
function onbeginuse(player) {
    timeremaining = globallogic_utils::gettimeremaining();
    if (timeremaining <= int(level.planttime * 1000)) {
        globallogic_utils::pausetimer();
        level.timerpaused = 1;
    }
    if (self function_208ed5d5(player.pers[#"team"])) {
        player playsound(#"mpl_sd_bomb_defuse");
        player.isdefusing = 1;
        player thread setbomboverheatingafterweaponchange(self, 0, 0);
        bestdistance = 9000000;
        var_fa43ed99 = undefined;
        if (isdefined(level.ddbombmodel)) {
            keys = getarraykeys(level.ddbombmodel);
            for (bomblabel = 0; bomblabel < keys.size; bomblabel++) {
                bomb = level.ddbombmodel[keys[bomblabel]];
                if (!isdefined(bomb)) {
                    continue;
                }
                dist = distancesquared(player.origin, bomb.origin);
                if (dist < bestdistance) {
                    bestdistance = dist;
                    var_fa43ed99 = bomb;
                }
            }
            assert(isdefined(var_fa43ed99));
            player.defusing = var_fa43ed99;
            var_fa43ed99 hide();
        }
        return;
    }
    player.isplanting = 1;
    player thread setbomboverheatingafterweaponchange(self, 0, 0);
}

// Namespace dem/dem
// Params 3, eflags: 0x0
// Checksum 0x539c15e5, Offset: 0x2dc8
// Size: 0x12c
function onenduse(*team, player, result) {
    if (!isdefined(player)) {
        if (!result) {
            self gameobjects::clear_progress();
            self.trigger releaseclaimedtrigger();
        }
        return;
    }
    if (!level.var_ea8469b5 && !level.var_119e12f4) {
        globallogic_utils::resumetimer();
        level.timerpaused = 0;
    }
    player.isdefusing = 0;
    player.isplanting = 0;
    player notify(#"event_ended");
    if (self function_208ed5d5(player.pers[#"team"])) {
        if (isdefined(player.defusing) && !result) {
            player.defusing show();
        }
    }
}

// Namespace dem/dem
// Params 1, eflags: 0x0
// Checksum 0xdaa4e4bf, Offset: 0x2f00
// Size: 0x2c
function oncantuse(player) {
    player iprintlnbold(#"hash_480e9067f6524bf");
}

// Namespace dem/dem
// Params 1, eflags: 0x0
// Checksum 0xf5380fed, Offset: 0x2f38
// Size: 0x61c
function function_41ba5f03(player) {
    team = player.team;
    enemyteam = util::getotherteam(team);
    self function_1e4847e();
    player function_1e4847e();
    if (!self function_208ed5d5(team)) {
        self gameobjects::set_flags(1);
        level thread bombplanted(self, player);
        /#
            print("<unknown string>" + self.label);
        #/
        bb::function_95a5b5c2("dem_bombplant", self.label, team, player.origin);
        player notify(#"bomb_planted");
        if (isdefined(player.pers[#"plants"])) {
            player.pers[#"plants"]++;
            player.plants = player.pers[#"plants"];
        }
        player.pers[#"objectives"]++;
        player.objectives = player.pers[#"objectives"];
        if (!isscoreboosting(player, self)) {
            demo::bookmark(#"event", gettime(), player);
            potm::bookmark(#"event", gettime(), player);
            player stats::function_bb7eedf0(#"plants", 1);
            player stats::function_dad108fa(#"plants_defuses", 1);
            scoreevents::processscoreevent("planted_bomb", player, undefined, undefined);
            player recordgameevent("plant");
            level thread telemetry::function_18135b72(#"hash_540cddd637f71a5e", {#player:player, #eventtype:#"plant"});
        } else {
            /#
                player iprintlnbold("<unknown string>");
            #/
        }
        level thread popups::displayteammessagetoall(#"hash_12473d7e6ed6e752", player);
        globallogic_audio::leader_dialog("bombPlanted");
        return;
    }
    self gameobjects::set_flags(0);
    player notify(#"bomb_defused");
    /#
        print("<unknown string>" + self.label);
    #/
    self thread bombdefused(player);
    self resetbombzone();
    bb::function_95a5b5c2("dem_bombdefused", self.label, team, player.origin);
    if (isdefined(player.pers[#"defuses"])) {
        player.pers[#"defuses"]++;
        player.defuses = player.pers[#"defuses"];
    }
    player.pers[#"objectives"]++;
    player.objectives = player.pers[#"objectives"];
    if (!isscoreboosting(player, self)) {
        demo::bookmark(#"event", gettime(), player);
        player stats::function_bb7eedf0(#"defuses", 1);
        player stats::function_dad108fa(#"plants_defuses", 1);
        scoreevents::processscoreevent("defused_bomb", player, undefined, undefined);
        player recordgameevent("defuse");
        level thread telemetry::function_18135b72(#"hash_540cddd637f71a5e", {#player:player, #eventtype:#"defuse"});
    } else {
        /#
            player iprintlnbold("<unknown string>");
        #/
    }
    level thread popups::displayteammessagetoall(#"hash_53c3f7bb9aec1bcc", player);
    globallogic_audio::leader_dialog("bombDefused");
}

// Namespace dem/dem
// Params 1, eflags: 0x0
// Checksum 0x36008595, Offset: 0x3560
// Size: 0xcc
function ondrop(player) {
    if (!level.bombplanted) {
        globallogic_audio::leader_dialog("bombFriendlyDropped", player.pers[#"team"]);
        /#
            if (isdefined(player)) {
                print("<unknown string>");
            } else {
                print("<unknown string>");
            }
        #/
    }
    player notify(#"event_ended");
    sound::play_on_players(game.bomb_dropped_sound, game.attackers);
}

// Namespace dem/dem
// Params 1, eflags: 0x0
// Checksum 0x66da3038, Offset: 0x3638
// Size: 0x10c
function onpickup(player) {
    player.isbombcarrier = 1;
    player thread function_1e8f61d1();
    if (!level.bombdefused) {
        thread sound::play_on_players("mus_sd_pickup" + "_" + level.teampostfix[player.pers[#"team"]], player.pers[#"team"]);
        globallogic_audio::leader_dialog("bombFriendlyTaken", player.pers[#"team"]);
        /#
            print("<unknown string>");
        #/
    }
    sound::play_on_players(game.bomb_recovered_sound, game.attackers);
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x3750
// Size: 0x4
function onreset() {
    
}

// Namespace dem/dem
// Params 2, eflags: 0x0
// Checksum 0x6b6448ae, Offset: 0x3760
// Size: 0x154
function function_c15fc31f(label, reason) {
    if (label == "_a") {
        level.var_ea8469b5 = 0;
        setbombtimer("A", 0);
    } else {
        level.var_119e12f4 = 0;
        setbombtimer("B", 0);
    }
    setmatchflag("bomb_timer" + label, 0);
    if (!level.var_ea8469b5 && !level.var_119e12f4) {
        level.timerpaused = 0;
        globallogic_utils::resumetimer();
    }
    self.visuals[0] globallogic_utils::stoptickingsound();
    if (reason == "bomb_exploded") {
        self gameobjects::allow_use(#"hash_161f03feaadc9b8f");
        self gameobjects::set_flags(2);
        self gameobjects::disable_object(0, 0);
    }
}

// Namespace dem/dem
// Params 2, eflags: 0x0
// Checksum 0xbf721b0e, Offset: 0x38c0
// Size: 0x27c
function dropbombmodel(player, site) {
    trace = bullettrace(player.origin + (0, 0, 20), player.origin - (0, 0, 2000), 0, player);
    tempangle = randomfloat(360);
    forward = (cos(tempangle), sin(tempangle), 0);
    forward = vectornormalize(forward - vectorscale(trace[#"normal"], vectordot(forward, trace[#"normal"])));
    dropangles = vectortoangles(forward);
    offset = (0, 0, 3);
    if (isdefined(trace[#"surfacetype"]) && trace[#"surfacetype"] == "water") {
        phystrace = playerphysicstrace(player.origin + (0, 0, 20), player.origin - (0, 0, 2000));
        if (isdefined(phystrace)) {
            trace[#"position"] = phystrace;
        }
    }
    level.ddbombmodel[site] = spawn("script_model", trace[#"position"] + offset);
    level.ddbombmodel[site].angles = dropangles;
    level.ddbombmodel[site] setmodel(#"hash_2fc0c9b938896273");
}

// Namespace dem/dem
// Params 1, eflags: 0x4
// Checksum 0xd53451d9, Offset: 0x3b48
// Size: 0xdc
function private function_ddc47ed1(label) {
    spawning::function_c40af6fa();
    spawning::addsupportedspawnpointtype("dem");
    if (label == "_a") {
        spawning::addsupportedspawnpointtype("dem_remove_b");
        spawning::addsupportedspawnpointtype("dem_attacker_a");
        spawning::addsupportedspawnpointtype("dem_defender_b");
        return;
    }
    spawning::addsupportedspawnpointtype("dem_remove_a");
    spawning::addsupportedspawnpointtype("dem_attacker_b");
    spawning::addsupportedspawnpointtype("dem_defender_a");
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0x3f8a811d, Offset: 0x3c30
// Size: 0x124
function function_8af3b312() {
    spawning::addsupportedspawnpointtype("dem");
    if (!overtime::is_overtime_round()) {
        spawning::addsupportedspawnpointtype("dem_remove_a");
        spawning::addsupportedspawnpointtype("dem_remove_b");
        spawning::addsupportedspawnpointtype("dem_defender_a");
        spawning::addsupportedspawnpointtype("dem_defender_b");
    }
    spawnpoint = spawning::get_random_intermission_point();
    setdemointermissionpoint(spawnpoint.origin, spawnpoint.angles);
    if (overtime::is_overtime_round()) {
        spawning::addsupportedspawnpointtype("dem_overtime");
    } else {
        spawning::addsupportedspawnpointtype("dem_start_spawn");
    }
    globallogic::function_8af3b312();
}

// Namespace dem/dem
// Params 2, eflags: 0x0
// Checksum 0x4a68bf18, Offset: 0x3d60
// Size: 0x994
function bombplanted(destroyedobj, player) {
    level endon(#"game_ended");
    destroyedobj endon(#"bomb_defused");
    team = player.team;
    game.challenge[team][#"plantedbomb"] = 1;
    globallogic_utils::pausetimer();
    level.timerpaused = 1;
    destroyedobj.bombplanted = 1;
    player setweaponoverheating(1, 100, destroyedobj.useweapon);
    player playbombplant();
    destroyedobj.visuals[0] thread globallogic_utils::playtickingsound("mpl_sab_ui_suitcasebomb_timer");
    destroyedobj.tickingobject = destroyedobj.visuals[0];
    level thread function_ee6e5993();
    label = destroyedobj.label;
    detonatetime = gettime() + int(level.bombtimer * 1000);
    function_789dbdd3(label, detonatetime);
    destroyedobj.detonatetime = detonatetime;
    trace = bullettrace(player.origin + (0, 0, 20), player.origin - (0, 0, 2000), 0, player);
    self dropbombmodel(player, destroyedobj.label);
    destroyedobj gameobjects::allow_use(#"hash_161f03feaadc9b8f");
    destroyedobj gameobjects::set_visible(#"hash_161f03feaadc9b8f");
    if (overtime::is_overtime_round()) {
        destroyedobj gameobjects::set_owner_team(util::getotherteam(player.team));
    }
    destroyedobj setupfordefusing();
    game.challenge[team][#"plantedbomb"] = 1;
    destroyedobj function_473a1738(label, level.bombtimer);
    destroyedobj function_c15fc31f(label, "bomb_exploded");
    if (level.gameended) {
        return;
    }
    origin = (0, 0, 0);
    if (isdefined(player)) {
        origin = player.origin;
    }
    bb::function_95a5b5c2("dem_bombexplode", label, team, origin);
    destroyedobj.bombexploded = 1;
    game.challenge[team][#"destroyedbombsite"] = 1;
    explosionorigin = destroyedobj.curorigin;
    level.ddbombmodel[destroyedobj.label] delete();
    if (isdefined(player)) {
        destroyedobj.visuals[0] radiusdamage(explosionorigin, 512, 200, 20, player, "MOD_EXPLOSIVE", getweapon(#"briefcase_bomb"));
        if (player.team == team) {
            player stats::function_bb7eedf0(#"destructions", 1);
            scoreevents::processscoreevent("bomb_detonated", player, undefined, undefined);
        }
        player recordgameevent("destroy");
        level thread telemetry::function_18135b72(#"hash_540cddd637f71a5e", {#player:player, #eventtype:#"destroy"});
    } else {
        destroyedobj.visuals[0] radiusdamage(explosionorigin, 512, 200, 20, undefined, "MOD_EXPLOSIVE", getweapon(#"briefcase_bomb"));
    }
    currenttime = gettime();
    if (isdefined(level.var_21479330) && level.var_3b2307bb == team) {
        if (level.var_21479330 + 10000 > currenttime) {
            for (i = 0; i < level.players.size; i++) {
                if (level.players[i].team == team) {
                    level.players[i] challenges::bothbombsdetonatewithintime();
                }
            }
        }
    }
    level.var_21479330 = currenttime;
    level.var_3b2307bb = team;
    rot = randomfloat(360);
    explosioneffect = spawnfx(level._effect[#"bombexplosion"], explosionorigin + (0, 0, 50), (0, 0, 1), (cos(rot), sin(rot), 0));
    triggerfx(explosioneffect);
    destroyedobj thread function_98274264();
    thread sound::play_in_space("mpl_sd_exp_suitcase_bomb_main", explosionorigin);
    if (isdefined(destroyedobj.exploderindex)) {
        exploder::exploder(destroyedobj.exploderindex);
    }
    var_3c6bbe27 = 0;
    for (index = 0; index < level.bombzones.size; index++) {
        if (!isdefined(level.bombzones[index].bombexploded) || !level.bombzones[index].bombexploded) {
            var_3c6bbe27++;
        }
    }
    if (var_3c6bbe27 == 0) {
        level.var_e8b70364 = 1;
        globallogic_utils::pausetimer();
        level.timerpaused = 1;
        setgameendtime(0);
        wait(3);
        function_92164b1c(team, 1);
        return;
    }
    enemyteam = util::getotherteam(team);
    level thread function_b98a264e(1);
    if ([[ level.gettimelimit ]]() > 0) {
        level.usingextratime = 1;
    }
    foreach (player in level.players) {
        team = player.pers[#"team"];
        if (team === #"spectator") {
            continue;
        }
        player luinotifyevent(#"hash_6b67aa04e378d681", 1, 20);
    }
    destroyedobj influencers::remove_influencer(destroyedobj.spawninfluencer);
    destroyedobj.spawninfluencer = undefined;
    function_ddc47ed1(label);
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0x4e30a741, Offset: 0x4700
// Size: 0xec
function function_98274264() {
    if (!isdefined(self.visuals[0])) {
        return;
    }
    var_d46e7070 = self.visuals[0].origin;
    var_e6397375 = anglestoforward(self.visuals[0].angles);
    var_213527e2 = anglestoup(self.visuals[0].angles);
    wait(0.1);
    var_238e7468 = spawnfx(level._effect[#"hash_568509fa2561a75d"], var_d46e7070, var_e6397375, var_213527e2);
    triggerfx(var_238e7468);
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0x5f53a7aa, Offset: 0x47f8
// Size: 0x62
function gettimelimit() {
    timelimit = globallogic_defaults::default_gettimelimit();
    if (overtime::is_overtime_round()) {
        timelimit = level.overtimetimelimit;
    }
    if (level.usingextratime) {
        return (timelimit + level.extratime);
    }
    return timelimit;
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0xc70022cd, Offset: 0x4868
// Size: 0xa4
function shouldplayovertimeround() {
    if (overtime::is_overtime_round()) {
        return false;
    }
    if (game.stat[#"teamscores"][#"allies"] == level.roundwinlimit - 1 && game.stat[#"teamscores"][#"axis"] == level.roundwinlimit - 1) {
        return true;
    }
    return false;
}

// Namespace dem/dem
// Params 2, eflags: 0x0
// Checksum 0xe5797ad8, Offset: 0x4918
// Size: 0x188
function function_473a1738(var_d40f7c9f, duration) {
    if (duration == 0) {
        return;
    }
    assert(duration > 0);
    starttime = gettime();
    endtime = gettime() + int(duration * 1000);
    while (gettime() < endtime) {
        hostmigration::waittillhostmigrationstarts(float(endtime - gettime()) / 1000);
        while (isdefined(level.hostmigrationtimer)) {
            endtime += 250;
            function_789dbdd3(var_d40f7c9f, endtime);
            wait(0.25);
        }
    }
    /#
        if (gettime() != endtime) {
            println("<unknown string>" + gettime() + "<unknown string>" + endtime);
        }
    #/
    while (isdefined(level.hostmigrationtimer)) {
        endtime += 250;
        function_789dbdd3(var_d40f7c9f, endtime);
        wait(0.25);
    }
    return gettime() - starttime;
}

// Namespace dem/dem
// Params 2, eflags: 0x0
// Checksum 0x25057ab1, Offset: 0x4aa8
// Size: 0xdc
function function_789dbdd3(var_d40f7c9f, detonatetime) {
    if (var_d40f7c9f == "_a") {
        level.var_ea8469b5 = 1;
        setbombtimer("A", int(detonatetime));
    } else {
        level.var_119e12f4 = 1;
        setbombtimer("B", int(detonatetime));
    }
    setmatchflag("bomb_timer" + var_d40f7c9f, int(detonatetime));
}

// Namespace dem/dem
// Params 1, eflags: 0x0
// Checksum 0x6f5e709c, Offset: 0x4b90
// Size: 0x10c
function bombdefused(player) {
    self.tickingobject globallogic_utils::stoptickingsound();
    self gameobjects::allow_use(#"hash_161f03feaadc9b8f");
    self gameobjects::set_visible(#"hash_161f03feaadc9b8f");
    self.bombdefused = 1;
    self notify(#"bomb_defused");
    self.bombplanted = 0;
    self function_c15fc31f(self.label, "bomb_defused");
    player setweaponoverheating(1, 100, self.useweapon);
    player playbombdefuse();
    level thread function_b98a264e();
}

// Namespace dem/dem
// Params 2, eflags: 0x0
// Checksum 0x4b80e206, Offset: 0x4ca8
// Size: 0x32
function function_ae26fe4(team, enemyteam) {
    wait(3);
    if (!isdefined(team) || !isdefined(enemyteam)) {
        return;
    }
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0xa3dea36c, Offset: 0x4ce8
// Size: 0xfa
function function_1e4847e() {
    if (!isdefined(self.var_a6766873)) {
        self.var_57260b12 = 0;
        self.var_a6766873 = 0;
    }
    self.var_57260b12++;
    minutespassed = float(globallogic_utils::gettimepassed()) / 60000;
    if (isplayer(self) && isdefined(self.timeplayed[#"total"])) {
        minutespassed = self.timeplayed[#"total"] / 60;
    }
    self.var_a6766873 = self.var_57260b12 / minutespassed;
    if (self.var_a6766873 > self.var_57260b12) {
        self.var_a6766873 = self.var_57260b12;
    }
}

// Namespace dem/dem
// Params 2, eflags: 0x0
// Checksum 0xa2643005, Offset: 0x4df0
// Size: 0x5e
function isscoreboosting(player, flag) {
    if (!level.rankedmatch) {
        return false;
    }
    if (player.var_a6766873 > level.var_3db672a4) {
        return true;
    }
    if (flag.var_a6766873 > level.var_f5ae264) {
        return true;
    }
    return false;
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0xc4a5bf1e, Offset: 0x4e58
// Size: 0x30
function function_ee6e5993() {
    level notify(#"hash_15b8b6edc4ed3032", {#var_7090bf53:1});
}

// Namespace dem/dem
// Params 1, eflags: 0x0
// Checksum 0x289a3075, Offset: 0x4e90
// Size: 0x114
function function_b98a264e(var_96a07b96 = 0) {
    timeleft = float(globallogic_utils::gettimeremaining()) / 1000;
    timeleftint = int(timeleft + 0.5);
    if (is_true(var_96a07b96)) {
        level.var_a8b23f5a = 0;
    }
    if (timeleftint <= 31 && !var_96a07b96) {
        return;
    }
    if (level.var_ea8469b5 || level.var_119e12f4) {
        return;
    }
    level notify(#"hash_28434e94a8844dc5");
    level thread globallogic_audio::function_13bcae23();
    level thread globallogic_audio::function_913f483f();
}

// Namespace dem/dem
// Params 0, eflags: 0x0
// Checksum 0xf7473d45, Offset: 0x4fb0
// Size: 0x78
function function_39dabed5() {
    level endon(#"game_ended");
    while (true) {
        level waittill(#"match_ending_pretty_soon");
        level.var_a8b23f5a = 1;
        level notify(#"hash_d50c83061fcd561");
        level thread globallogic_audio::function_913f483f();
    }
}

