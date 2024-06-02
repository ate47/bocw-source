// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\item_supply_drop.gsc;
#using script_b9a55edd207e4ca;
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\player\player_utils.gsc;
#using script_1304295570304027;
#using scripts\mp_common\gametypes\overtime.gsc;
#using scripts\mp_common\gametypes\globallogic_utils.gsc;
#using script_1cc417743d7c262d;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\mp_common\challenges.gsc;
#using scripts\killstreaks\planemortar_shared.gsc;
#using script_7a8059ca02b7b09e;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\sound_shared.gsc;
#using script_44b0b8420eabacad;
#using script_335d0650ed05d36d;
#using scripts\core_common\potm_shared.gsc;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\medals_shared.gsc;
#using scripts\core_common\hostmigration_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\demo_shared.gsc;

#namespace groundwar_base;

// Namespace groundwar_base/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xec218c0d, Offset: 0x320
// Size: 0x11c
function event_handler[gametype_init] main(*eventstruct) {
    namespace_2938acdc::init();
    spawning::function_c40af6fa();
    spawning::addsupportedspawnpointtype("base");
    level.onstartgametype = &onstartgametype;
    callback::on_spawned(&onspawnplayer);
    callback::on_game_playing(&function_3a7ee360);
    player::function_cf3aa03d(&onplayerkilled);
    level.ddbombmodel = [];
    level.var_3cf1b85 = "bombzone";
    level.var_cd008cab = &function_c5764b12;
    level.var_fd30a287 = &function_4d528908;
    gameobjects::register_allowed_gameobject(level.var_3cf1b85);
}

// Namespace groundwar_base/groundwar_base
// Params 0, eflags: 0x0
// Checksum 0xff9cc92b, Offset: 0x448
// Size: 0xdc
function onstartgametype() {
    setbombtimer("A", 0);
    setmatchflag("bomb_timer_a", 0);
    setbombtimer("B", 0);
    setmatchflag("bomb_timer_b", 0);
    level._effect[#"bombexplosion"] = #"explosions/fx_exp_bomb_demo_mp";
    bombzones = getentarray(level.var_3cf1b85, "targetname");
    thread updategametypedvars();
    thread bombs();
}

// Namespace groundwar_base/groundwar_base
// Params 0, eflags: 0x0
// Checksum 0x4876cc26, Offset: 0x530
// Size: 0xf4
function function_3a7ee360() {
    foreach (bombzone in level.bombzones) {
        if (!is_true(bombzone.var_a9ecfe20)) {
            function_60aa4296(bombzone);
        }
    }
    namespace_5c32f369::update_settings();
    if (namespace_5c32f369::function_dbba0e25()) {
        level.domflags = namespace_5c32f369::function_16ee17b2(&function_b4ab93bd);
    }
}

// Namespace groundwar_base/groundwar_base
// Params 2, eflags: 0x0
// Checksum 0xc7ab4986, Offset: 0x630
// Size: 0x94
function function_c521ddc8(door, bombzone) {
    door waittill(#"broken", #"death");
    if (!bombzone.var_49957ef3) {
        bombzone.var_49957ef3 = 1;
        bombzone gameobjects::allow_use(#"hash_33c49a99551acae7");
        bombzone.trigger setcursorhint("HINT_INTERACTIVE_PROMPT");
    }
}

// Namespace groundwar_base/groundwar_base
// Params 1, eflags: 0x0
// Checksum 0xcd630b18, Offset: 0x6d0
// Size: 0xb0
function function_60aa4296(bombzone) {
    foreach (door in bombzone.doors) {
        door setcandamage(1);
        thread function_c521ddc8(door, bombzone);
    }
}

// Namespace groundwar_base/groundwar_base
// Params 0, eflags: 0x0
// Checksum 0x77915706, Offset: 0x788
// Size: 0x26
function onspawnplayer() {
    self.isplanting = 0;
    self.isdefusing = 0;
    self.isbombcarrier = 0;
}

// Namespace groundwar_base/groundwar_base
// Params 9, eflags: 0x0
// Checksum 0xf1f54d5f, Offset: 0x7b8
// Size: 0x37c
function onplayerkilled(einflictor, attacker, *idamage, *smeansofdeath, weapon, *vdir, *shitloc, *psoffsettime, *deathanimduration) {
    bombzone = undefined;
    for (index = 0; index < level.bombzones.size; index++) {
        if (!isdefined(level.bombzones[index].bombexploded) || !level.bombzones[index].bombexploded) {
            dist = distance2dsquared(self.origin, level.bombzones[index].curorigin);
            if (dist < level.defaultoffenseradiussq) {
                bombzone = level.bombzones[index];
                break;
            }
            dist = distance2dsquared(psoffsettime.origin, level.bombzones[index].curorigin);
            if (dist < level.defaultoffenseradiussq) {
                inbombzone = 1;
                break;
            }
        }
    }
    if (isdefined(bombzone) && isplayer(psoffsettime) && psoffsettime.pers[#"team"] != self.pers[#"team"]) {
        if (bombzone gameobjects::get_owner_team() != psoffsettime.team) {
            if (!isdefined(psoffsettime.var_c6ebcbd7)) {
                psoffsettime.var_c6ebcbd7 = 0;
            }
            psoffsettime.var_c6ebcbd7++;
            if (level.playeroffensivemax >= psoffsettime.var_c6ebcbd7) {
                psoffsettime medals::offenseglobalcount();
                psoffsettime thread challenges::killedbasedefender(bombzone.trigger);
            } else {
                /#
                    psoffsettime iprintlnbold("<unknown string>");
                #/
            }
            return;
        }
        if (!isdefined(psoffsettime.var_80aeaf59)) {
            psoffsettime.var_80aeaf59 = 0;
        }
        psoffsettime.var_80aeaf59++;
        if (level.playerdefensivemax >= psoffsettime.var_80aeaf59) {
            if (isdefined(psoffsettime.pers[#"defends"])) {
                psoffsettime.pers[#"defends"]++;
                psoffsettime.defends = psoffsettime.pers[#"defends"];
            }
            psoffsettime medals::defenseglobalcount();
            psoffsettime thread challenges::killedbaseoffender(bombzone.trigger, deathanimduration, shitloc);
            return;
        }
        /#
            psoffsettime iprintlnbold("<unknown string>");
        #/
    }
}

// Namespace groundwar_base/groundwar_base
// Params 2, eflags: 0x0
// Checksum 0x308dfd09, Offset: 0xb40
// Size: 0xc4
function end_round(winningteam, var_c1e98979) {
    foreach (bombzone in level.bombzones) {
        bombzone gameobjects::set_visible(#"hash_161f03feaadc9b8f");
    }
    thread globallogic::function_a3e3bd39(winningteam, var_c1e98979);
}

// Namespace groundwar_base/groundwar_base
// Params 0, eflags: 0x0
// Checksum 0x514248b3, Offset: 0xc10
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

// Namespace groundwar_base/groundwar_base
// Params 0, eflags: 0x0
// Checksum 0x8d327b6d, Offset: 0xdd8
// Size: 0x1e2
function resetbombzone() {
    if (overtime::is_overtime_round()) {
        self gameobjects::set_owner_team(#"neutral");
        self gameobjects::allow_use(#"hash_5ccfd7bbbf07c770");
    } else {
        self gameobjects::allow_use(#"hash_33c49a99551acae7");
    }
    self gameobjects::set_use_time(level.planttime);
    self gameobjects::set_use_text(#"hash_1fd43fb1addaf0aa");
    self gameobjects::set_use_hint_text(#"hash_10c61997a0f3235");
    self gameobjects::set_2d_icon(#"hash_150a20fa4efc5c7a", "waypoint_defend" + self.label);
    self gameobjects::set_3d_icon(#"hash_150a20fa4efc5c7a", "waypoint_defend" + self.label);
    self gameobjects::set_2d_icon(#"hash_33c49a99551acae7", "waypoint_target" + self.label);
    self gameobjects::set_3d_icon(#"hash_33c49a99551acae7", "waypoint_target" + self.label);
    self gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
    self.useweapon = getweapon(#"briefcase_bomb");
}

// Namespace groundwar_base/groundwar_base
// Params 0, eflags: 0x0
// Checksum 0xe597fabc, Offset: 0xfc8
// Size: 0xa4
function setupfordefusing() {
    self gameobjects::allow_use(#"hash_150a20fa4efc5c7a");
    self gameobjects::set_use_time(level.defusetime);
    self gameobjects::set_use_text(#"mp/defusing_explosive");
    self gameobjects::set_use_hint_text(#"hash_754b795109a2bbba");
    self gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
}

// Namespace groundwar_base/groundwar_base
// Params 0, eflags: 0x0
// Checksum 0xa4654da3, Offset: 0x1078
// Size: 0x676
function bombs() {
    level.var_ea8469b5 = 0;
    level.var_119e12f4 = 0;
    level.bombplanted = 0;
    level.bombzones = [];
    level.var_9fb20124 = [];
    bombzones = getentarray(level.var_3cf1b85, "targetname");
    for (index = 0; index < bombzones.size; index++) {
        trigger = bombzones[index];
        scriptlabel = trigger.script_label;
        var_d584ad9f = getentarray("bombzone_clip" + scriptlabel, "targetname");
        visuals = getentarray(bombzones[index].target, "targetname");
        var_b3c46dd0 = trigger.script_team;
        name = #"base" + scriptlabel;
        bombzone = gameobjects::create_use_object(var_b3c46dd0, trigger, visuals, (0, 0, 0), name, 1, 1);
        bombzone gameobjects::set_use_time(level.planttime);
        bombzone gameobjects::set_use_text(#"hash_1fd43fb1addaf0aa");
        bombzone gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
        if (scriptlabel == "_c") {
            level.var_9fb20124[trigger.script_team] = bombzone;
            bombzone.var_a9ecfe20 = 1;
            bombzone gameobjects::hide_waypoint();
        }
        bombzone.var_49957ef3 = 0;
        bombzone.trigger = trigger;
        bombzone.team = trigger.script_team;
        bombzone.label = scriptlabel;
        bombzone.index = index;
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
            visual.team = #"neutral";
        }
        level.bombzones[level.bombzones.size] = bombzone;
        defusetrig = getent(visuals[0].target, "targetname");
        bombzone.bombdefusetrig = defusetrig;
        assert(isdefined(bombzone.bombdefusetrig));
        bombzone.bombdefusetrig.origin += (0, 0, -10000);
        bombzone.bombdefusetrig.label = scriptlabel;
        doors = getentarray(defusetrig.target, "targetname");
        bombzone.doors = doors;
        foreach (door in doors) {
            door setcandamage(0);
            door.bombzone = bombzone;
        }
        team_mask = util::getteammask(game.attackers);
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

// Namespace groundwar_base/groundwar_base
// Params 3, eflags: 0x0
// Checksum 0xaeee2aa3, Offset: 0x16f8
// Size: 0xbc
function setbomboverheatingafterweaponchange(useobject, overheated, heat) {
    self endon(#"death", #"disconnect", #"joined_team", #"joined_spectators");
    waitresult = self waittill(#"weapon_change");
    if (waitresult.weapon == useobject.useweapon) {
        self setweaponoverheating(overheated, heat, waitresult.weapon);
    }
}

// Namespace groundwar_base/groundwar_base
// Params 1, eflags: 0x0
// Checksum 0x7a4aa65, Offset: 0x17c0
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

// Namespace groundwar_base/groundwar_base
// Params 1, eflags: 0x0
// Checksum 0x798a3f48, Offset: 0x1850
// Size: 0x25c
function onbeginuse(player) {
    timeremaining = globallogic_utils::gettimeremaining();
    if (timeremaining <= int(level.planttime * 1000)) {
        globallogic_utils::pausetimer();
        level.var_2a07e987 = 1;
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
    } else {
        player.isplanting = 1;
        player thread setbomboverheatingafterweaponchange(self, 0, 0);
    }
    player playsound(#"fly_bomb_raise_plr");
}

// Namespace groundwar_base/groundwar_base
// Params 3, eflags: 0x0
// Checksum 0x2f4e8014, Offset: 0x1ab8
// Size: 0xf4
function onenduse(*team, player, result) {
    if (!isdefined(player)) {
        return;
    }
    if (!level.var_ea8469b5 && !level.var_119e12f4) {
        globallogic_utils::resumetimer();
        level.var_2a07e987 = 0;
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

// Namespace groundwar_base/groundwar_base
// Params 1, eflags: 0x0
// Checksum 0x7748b338, Offset: 0x1bb8
// Size: 0x2c
function oncantuse(player) {
    player iprintlnbold(#"hash_480e9067f6524bf");
}

// Namespace groundwar_base/groundwar_base
// Params 1, eflags: 0x0
// Checksum 0x7a803c3b, Offset: 0x1bf0
// Size: 0x55c
function function_41ba5f03(player) {
    team = player.team;
    self function_1e4847e();
    player function_1e4847e();
    if (!self function_208ed5d5(team)) {
        self gameobjects::set_flags(1);
        level thread bombplanted(self, player);
        /#
            print("<unknown string>" + self.label);
        #/
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

// Namespace groundwar_base/groundwar_base
// Params 1, eflags: 0x0
// Checksum 0xa128fba6, Offset: 0x2158
// Size: 0xf4
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
    self gameobjects::set_3d_icon(#"hash_150a20fa4efc5c7a", "waypoint_bomb");
    sound::play_on_players(game.bomb_dropped_sound, game.attackers);
}

// Namespace groundwar_base/groundwar_base
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x2258
// Size: 0x4
function onreset() {
    
}

// Namespace groundwar_base/groundwar_base
// Params 2, eflags: 0x0
// Checksum 0x985ef108, Offset: 0x2268
// Size: 0x10c
function function_c15fc31f(label, *reason) {
    if (reason == "_a" || reason == "_c") {
        reason = "_a";
        level.var_ea8469b5 = 0;
        setbombtimer("A", 0);
    } else {
        level.var_119e12f4 = 0;
        setbombtimer("B", 0);
    }
    setmatchflag("bomb_timer" + reason, 0);
    if (!level.var_ea8469b5 && !level.var_119e12f4) {
        globallogic_utils::resumetimer();
    }
    self.visuals[0] globallogic_utils::stoptickingsound();
}

// Namespace groundwar_base/groundwar_base
// Params 2, eflags: 0x0
// Checksum 0x792370a, Offset: 0x2380
// Size: 0x25c
function dropbombmodel(player, site) {
    trace = bullettrace(player.origin + (0, 0, 20), player.origin - (0, 0, 2000), 0, player);
    tempangle = randomfloat(360);
    forward = (cos(tempangle), sin(tempangle), 0);
    forward = vectornormalize(forward - vectorscale(trace[#"normal"], vectordot(forward, trace[#"normal"])));
    dropangles = vectortoangles(forward);
    if (isdefined(trace[#"surfacetype"]) && trace[#"surfacetype"] == "water") {
        phystrace = playerphysicstrace(player.origin + (0, 0, 20), player.origin - (0, 0, 2000));
        if (isdefined(phystrace)) {
            trace[#"position"] = phystrace;
        }
    }
    level.ddbombmodel[site] = spawn("script_model", trace[#"position"]);
    level.ddbombmodel[site].angles = dropangles;
    level.ddbombmodel[site] setmodel(#"p7_mp_suitcase_bomb");
}

// Namespace groundwar_base/groundwar_base
// Params 2, eflags: 0x0
// Checksum 0x40516b33, Offset: 0x25e8
// Size: 0x764
function bombplanted(destroyedobj, player) {
    level endon(#"game_ended");
    destroyedobj endon(#"bomb_defused");
    team = player.team;
    game.challenge[team][#"plantedbomb"] = 1;
    globallogic_utils::pausetimer();
    destroyedobj.bombplanted = 1;
    player setweaponoverheating(1, 100, destroyedobj.useweapon);
    player playbombplant();
    destroyedobj.visuals[0] thread globallogic_utils::playtickingsound("mpl_sab_ui_suitcasebomb_timer");
    destroyedobj.tickingobject = destroyedobj.visuals[0];
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
    player.isbombcarrier = 0;
    game.challenge[team][#"plantedbomb"] = 1;
    destroyedobj function_473a1738(label, level.bombtimer);
    destroyedobj function_c15fc31f(label, "bomb_exploded");
    if (level.gameended) {
        return;
    }
    destroyedobj.bombexploded = 1;
    explosionorigin = destroyedobj.curorigin;
    level.ddbombmodel[destroyedobj.label] delete();
    clips = getentarray("bombzone_clip" + destroyedobj.label, "targetname");
    foreach (clip in clips) {
        clip delete();
    }
    if (isdefined(player)) {
        destroyedobj.visuals[0] radiusdamage(explosionorigin, 512, 200, 20, player, "MOD_EXPLOSIVE", getweapon(#"briefcase_bomb"));
        level thread popups::displayteammessagetoall(#"hash_74fa1e5aa0983f9", player);
    } else {
        destroyedobj.visuals[0] radiusdamage(explosionorigin, 512, 200, 20, undefined, "MOD_EXPLOSIVE", getweapon(#"briefcase_bomb"));
    }
    rot = randomfloat(360);
    explosioneffect = spawnfx(level._effect[#"bombexplosion"], explosionorigin + (0, 0, 50), (0, 0, 1), (cos(rot), sin(rot), 0));
    triggerfx(explosioneffect);
    thread sound::play_in_space("mpl_sd_exp_suitcase_bomb_main", explosionorigin);
    if (isdefined(destroyedobj.exploderindex)) {
        exploder::exploder(destroyedobj.exploderindex);
    }
    var_3c6bbe27 = 0;
    for (index = 0; index < level.bombzones.size; index++) {
        if ((!isdefined(level.bombzones[index].bombexploded) || !level.bombzones[index].bombexploded) && level.bombzones[index].team == destroyedobj.team) {
            var_3c6bbe27++;
        }
    }
    destroyedobj gameobjects::disable_object();
    if (var_3c6bbe27 == 0) {
        globallogic_utils::pausetimer();
        level.var_2a07e987 = 1;
        setgameendtime(0);
        wait(3);
        end_round(team, 1);
        return;
    }
    if (var_3c6bbe27 == 1) {
        function_60aa4296(level.var_9fb20124[destroyedobj.team]);
        level.var_9fb20124[destroyedobj.team] gameobjects::show_waypoint();
    }
}

// Namespace groundwar_base/groundwar_base
// Params 2, eflags: 0x0
// Checksum 0xb087b569, Offset: 0x2d58
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

// Namespace groundwar_base/groundwar_base
// Params 2, eflags: 0x0
// Checksum 0x21674619, Offset: 0x2ee8
// Size: 0xf4
function function_789dbdd3(var_d40f7c9f, detonatetime) {
    if (var_d40f7c9f == "_a" || var_d40f7c9f == "_c") {
        var_d40f7c9f = "_a";
        level.var_ea8469b5 = 1;
        setbombtimer("A", int(detonatetime));
    } else {
        level.var_119e12f4 = 1;
        setbombtimer("B", int(detonatetime));
    }
    setmatchflag("bomb_timer" + var_d40f7c9f, int(detonatetime));
}

// Namespace groundwar_base/groundwar_base
// Params 1, eflags: 0x0
// Checksum 0x870d6b06, Offset: 0x2fe8
// Size: 0xf4
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
}

// Namespace groundwar_base/groundwar_base
// Params 0, eflags: 0x0
// Checksum 0xdcc85b8f, Offset: 0x30e8
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

// Namespace groundwar_base/groundwar_base
// Params 2, eflags: 0x0
// Checksum 0x60bda7ae, Offset: 0x31f0
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

// Namespace groundwar_base/groundwar_base
// Params 0, eflags: 0x0
// Checksum 0x2b2cf016, Offset: 0x3258
// Size: 0x276
function function_c5764b12() {
    if (!isdefined(level.bombzones) || level.bombzones.size <= 0) {
        return;
    }
    level.baseorigin = [];
    basecount = [];
    foreach (bombzone in level.bombzones) {
        team = bombzone.team;
        if (!isdefined(level.baseorigin[team])) {
            level.baseorigin[team] = (0, 0, 0);
            basecount[team] = 0;
        }
        level.baseorigin[team] = level.baseorigin[team] + bombzone.origin;
        basecount[team] = basecount[team] + 1;
    }
    assert(level.baseorigin.size == basecount.size);
    foreach (team, origin in level.baseorigin) {
        level.baseorigin[team] = origin / basecount[team];
    }
    var_7ed8b321 = (0, 0, 0);
    foreach (team, origin in level.baseorigin) {
        var_7ed8b321 += origin;
    }
    var_7ed8b321 /= level.baseorigin.size;
    return var_7ed8b321;
}

// Namespace groundwar_base/groundwar_base
// Params 0, eflags: 0x0
// Checksum 0xa723a78a, Offset: 0x34d8
// Size: 0xd2
function function_4d528908() {
    if (!isdefined(level.baseorigin) || level.baseorigin.size <= 1) {
        return;
    }
    keys = getarraykeys(level.baseorigin);
    direction = level.baseorigin[keys[0]] - level.baseorigin[keys[1]];
    angles = vectortoangles(vectornormalize(direction));
    return angles[1] + 0;
}

// Namespace groundwar_base/groundwar_base
// Params 1, eflags: 0x0
// Checksum 0x43729631, Offset: 0x35b8
// Size: 0xb2
function function_b4ab93bd(capturearea) {
    capturearea.onuse = &function_b8ddeed6;
    capturearea.onbeginuse = &function_cf31144e;
    capturearea.onuseupdate = &function_8643ae79;
    capturearea.onenduse = &function_65acf0d;
    capturearea.onupdateuserate = &function_b7965582;
    capturearea.ondecaycomplete = &function_1428c0d;
    capturearea.ontouchuse = &function_894b7236;
}

// Namespace groundwar_base/groundwar_base
// Params 1, eflags: 0x0
// Checksum 0xbaa420ef, Offset: 0x3678
// Size: 0x24
function function_b8ddeed6(sentient) {
    namespace_5c32f369::function_290b5aa8(sentient);
}

// Namespace groundwar_base/groundwar_base
// Params 1, eflags: 0x0
// Checksum 0xecb0b529, Offset: 0x36a8
// Size: 0x24
function function_cf31144e(sentient) {
    namespace_5c32f369::on_begin_use(sentient);
}

// Namespace groundwar_base/groundwar_base
// Params 1, eflags: 0x0
// Checksum 0xa746f4b0, Offset: 0x36d8
// Size: 0x24
function function_894b7236(sentient) {
    namespace_5c32f369::on_touch_use(sentient);
}

// Namespace groundwar_base/groundwar_base
// Params 3, eflags: 0x0
// Checksum 0x21a79d76, Offset: 0x3708
// Size: 0x34
function function_8643ae79(var_98fb2758, progress, change) {
    namespace_5c32f369::on_use_update(var_98fb2758, progress, change);
}

// Namespace groundwar_base/groundwar_base
// Params 3, eflags: 0x0
// Checksum 0x666f2d41, Offset: 0x3748
// Size: 0xac
function function_65acf0d(var_98fb2758, player, success) {
    if (success) {
        if (self.label == "_d") {
            function_7d1ea7e8();
        } else if (self.label == "_e") {
            function_bba6497c(player);
        } else if (self.label == "_f") {
        }
    }
    namespace_5c32f369::on_end_use(var_98fb2758, player, success);
}

// Namespace groundwar_base/groundwar_base
// Params 0, eflags: 0x0
// Checksum 0x5f509a31, Offset: 0x3800
// Size: 0x14
function function_b7965582() {
    namespace_5c32f369::function_bcaf6836();
}

// Namespace groundwar_base/groundwar_base
// Params 0, eflags: 0x0
// Checksum 0xe6646a15, Offset: 0x3820
// Size: 0x14
function function_1428c0d() {
    namespace_5c32f369::on_decay_complete();
}

// Namespace groundwar_base/groundwar_base
// Params 0, eflags: 0x0
// Checksum 0x1c2bf678, Offset: 0x3840
// Size: 0x34
function function_7d1ea7e8() {
    level thread item_supply_drop::drop_supply_drop(self.origin, 1, 1, "vehicle_t8_mil_tank_wz_base_mg");
}

// Namespace groundwar_base/groundwar_base
// Params 1, eflags: 0x0
// Checksum 0x4e33c162, Offset: 0x3880
// Size: 0x4c
function function_bba6497c(player) {
    locations = function_f8a7c512(player);
    player thread planemortar::doplanemortar(locations, player.team);
}

// Namespace groundwar_base/groundwar_base
// Params 1, eflags: 0x0
// Checksum 0x39663aa7, Offset: 0x38d8
// Size: 0x146
function function_f8a7c512(player) {
    locations = [];
    foreach (base in level.bombzones) {
        if (base.team != player.team) {
            locationinfo = spawnstruct();
            locationinfo.origin = base.origin + (-320, -600, 0);
            locationinfo.yaw = 0;
            locations[locations.size] = locationinfo;
            locationinfo = spawnstruct();
            locationinfo.origin = base.origin + (320, -600, 0);
            locationinfo.yaw = 0;
            locations[locations.size] = locationinfo;
        }
    }
    return locations;
}

