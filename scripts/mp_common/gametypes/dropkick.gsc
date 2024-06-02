// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\recon_plane.gsc;
#using scripts\killstreaks\mp\uav.gsc;
#using scripts\weapons\weapon_utils.gsc;
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\mp_common\gametypes\match.gsc;
#using scripts\mp_common\gametypes\spawning.gsc;
#using scripts\mp_common\gametypes\globallogic_defaults.gsc;
#using scripts\mp_common\gametypes\globallogic_utils.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using script_1cc417743d7c262d;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\mp_common\gametypes\gametype.gsc;
#using scripts\mp_common\challenges.gsc;
#using scripts\core_common\armor.gsc;
#using script_3d703ef87a841fe4;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\hud_message_shared.gsc;
#using scripts\core_common\hostmigration_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\influencers_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\struct.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\spawning_shared.gsc;
#using script_335d0650ed05d36d;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\player\player_role.gsc;
#using scripts\core_common\gameobjects_shared.gsc;

#namespace dropkick;

// Namespace dropkick/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xd89fe61e, Offset: 0x3a0
// Size: 0x32c
function event_handler[gametype_init] main(*eventstruct) {
    globallogic::init();
    util::registerroundscorelimit(0, 10000);
    level.takelivesondeath = 1;
    level.var_8abcfbb8 = max(getgametypesetting(#"capturetime"), 0.1);
    level.carryscore = getgametypesetting(#"carryscore");
    level.var_6ecc0fa6 = isdefined(getgametypesetting(#"idleflagresettime")) ? getgametypesetting(#"idleflagresettime") : 0;
    level.var_ce802423 = 1;
    level.dropkickcarrierarmor = isdefined(getgametypesetting(#"dropkickcarrierarmor")) ? getgametypesetting(#"dropkickcarrierarmor") : 0;
    level.onstartgametype = &onstartgametype;
    level.onspawnplayer = &onspawnplayer;
    level.onspawnspectator = &onspawnspectator;
    level.onscorelimit = &onscorelimit;
    player::function_3c5cc656(&function_610d3790);
    player::function_cf3aa03d(&onplayerkilled);
    level.player_team_mask = getteammask(#"allies");
    level.enemy_team_mask = getteammask(#"axis");
    spawning::addsupportedspawnpointtype("dropkick");
    spawning::addsupportedspawnpointtype("tdm");
    spawning::function_32b97d1b(&spawning::function_90dee50d);
    spawning::function_adbbb58a(&spawning::function_c24e290c);
    clientfield::register("world", "" + #"hash_69d32ac298f2aa22", 1, 2, "int");
    level.var_2ee800c8 = "dropkickNearWinning";
    level.var_78739954 = "dropkickNearLosing";
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0xc88ce952, Offset: 0x6d8
// Size: 0x3c
function onstartgametype() {
    level thread onscoreclosemusic();
    function_2f873f5e();
    function_4e92a5e8();
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0xe4af01c3, Offset: 0x720
// Size: 0xbc
function onscorelimit() {
    if (level.var_f2a67a5d === 1) {
        return;
    }
    level notify(#"score_limit_reached");
    level.var_f2a67a5d = 1;
    function_b256c6a7();
    winner = teams::function_ef80de99();
    thread globallogic_audio::leader_dialog("dropkickGameWon", winner);
    thread globallogic_audio::leader_dialog_for_other_teams("dropkickGameLost", winner);
    level thread end_round();
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0xf7b9c9bc, Offset: 0x7e8
// Size: 0xd4
function end_round() {
    level childthread function_1a67afed();
    level childthread function_f7c2fc80();
    level childthread function_86ca9275();
    level childthread function_311e397d();
    level childthread function_68f13f40();
    music::setmusicstate("dropkick_round_end");
    playsoundatposition(#"hash_31f07589beb0a02e", (0, 0, 0));
    wait(11);
    globallogic_defaults::default_onscorelimit();
}

// Namespace dropkick/dropkick
// Params 4, eflags: 0x0
// Checksum 0xd6f71a23, Offset: 0x8c8
// Size: 0x13e
function function_610d3790(einflictor, victim, *idamage, weapon) {
    if (level.var_f2a67a5d === 1) {
        return;
    }
    attacker = self;
    if (!isplayer(attacker) || !isplayer(idamage) || attacker.pers[#"team"] === idamage.pers[#"team"]) {
        return;
    }
    if (attacker === level.var_1d402358 || idamage === level.var_1d402358) {
        attacker challenges::function_2f462ffd(idamage, weapon, victim, level.var_bb695b91);
        attacker.pers[#"objectiveekia"]++;
        attacker.objectiveekia = attacker.pers[#"objectiveekia"];
    }
}

// Namespace dropkick/dropkick
// Params 9, eflags: 0x0
// Checksum 0xd3370ec3, Offset: 0xa10
// Size: 0x32c
function onplayerkilled(*einflictor, attacker, *idamage, smeansofdeath, weapon, *vdir, *shitloc, *psoffsettime, *deathanimduration) {
    if (level.var_f2a67a5d === 1) {
        return;
    }
    victim = self;
    if (!isplayer(shitloc) || !isplayer(victim) || shitloc.pers[#"team"] === victim.pers[#"team"]) {
        return;
    }
    if (shitloc === level.var_1d402358) {
        scoreevents::processscoreevent(#"hash_487edfe4eab89682", shitloc, victim, deathanimduration);
        if (weapons::ismeleemod(psoffsettime)) {
            scoreevents::processscoreevent(#"hash_18b5a81700734b76", shitloc, victim, deathanimduration);
        }
        if (!isdefined(level.var_13faac26)) {
            level.var_13faac26 = 0;
        }
        level.var_13faac26++;
        if (level.var_13faac26 == 5) {
            scoreevents::processscoreevent(#"hash_6926a7955b525980", shitloc, victim, deathanimduration);
        }
        return;
    }
    if (victim === level.var_1d402358) {
        level.var_d0bebb68 = shitloc;
        scoreevents::processscoreevent(#"hash_2fa5091c22f8e529", shitloc, victim, deathanimduration);
        return;
    }
    if (isdefined(level.var_1d402358) && isalive(level.var_1d402358) && shitloc.team === level.var_1d402358.team) {
        if (isdefined(level.var_1d402358.attackerdata) && isdefined(victim.clientid)) {
            if (isdefined(level.var_1d402358.attackerdata[victim.clientid])) {
                scoreevents::processscoreevent(#"hash_576110aaf8aa4c5", shitloc, victim, deathanimduration);
            }
        }
        if (distance2dsquared(shitloc.origin, level.var_1d402358.origin) < level.defaultoffenseradiussq) {
            scoreevents::processscoreevent(#"hash_13fa27ec1b3826b5", shitloc, victim);
        }
    }
}

// Namespace dropkick/dropkick
// Params 1, eflags: 0x0
// Checksum 0xe004388a, Offset: 0xd48
// Size: 0x6c
function onspawnplayer(predictedspawn) {
    if (spawning::usestartspawns() && !level.ingraceperiod && !level.playerqueuedrespawn) {
        spawning::function_7a87efaa();
    }
    spawning::onspawnplayer(predictedspawn);
}

// Namespace dropkick/dropkick
// Params 2, eflags: 0x0
// Checksum 0xb762f8fb, Offset: 0xdc0
// Size: 0x64
function onspawnspectator(origin, angles) {
    if (!self mayspawn()) {
        hud_message::setlowermessage(#"hash_366993465c98de65");
    }
    globallogic_defaults::default_onspawnspectator(origin, angles);
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x4
// Checksum 0x192260ab, Offset: 0xe30
// Size: 0xac
function private function_2f873f5e() {
    if (level.waverespawndelay) {
        foreach (team in level.teams) {
            level.wavedelay[team] = 0;
        }
        return;
    }
    level.mayspawn = &mayspawn;
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0xa810a678, Offset: 0xee8
// Size: 0x44
function mayspawn() {
    if (!isdefined(self.team) || !isdefined(level.var_1d402358)) {
        return true;
    }
    return self.team != level.var_1d402358.team;
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0xbdcba052, Offset: 0xf38
// Size: 0x100
function forcespawnplayer() {
    if (!isdefined(self)) {
        return;
    }
    if (isalive(self) || self.pers[#"team"] === #"spectator") {
        return;
    }
    if (!globallogic_utils::isvalidclass(self.pers[#"class"])) {
        self.pers[#"class"] = "CLASS_CUSTOM1";
        self.curclass = self.pers[#"class"];
    }
    if (!self function_8b1a219a()) {
        self closeingamemenu();
    }
    self thread [[ level.spawnclient ]]();
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0x564a6d5b, Offset: 0x1040
// Size: 0x1b4
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
        if (topscore >= scorelimit * 0.9) {
            level notify(#"hash_15b8b6edc4ed3032", {#var_7090bf53:0});
            return;
        }
        wait(1);
    }
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0xc5b96ceb, Offset: 0x1200
// Size: 0x444
function function_4e92a5e8() {
    var_35c5fae0 = struct::get_array("dropkick_football_location", "targetname");
    if (var_35c5fae0.size == 0) {
        var_35c5fae0[0] = {};
        var_35c5fae0[0].origin = getclosestpointonnavmesh(level.mapcenter, 256, 32);
        var_35c5fae0[0].angles = (0, 0, 0);
    }
    var_791ffffd = var_35c5fae0[randomint(var_35c5fae0.size)];
    trigger = spawn("trigger_radius_use", var_791ffffd.origin, 0, 110, 110);
    trigger triggerignoreteam();
    trigger setvisibletoall();
    trigger setteamfortrigger(#"none");
    trigger function_682f34cf(-800);
    trigger.trigger_offset = (0, 0, trigger.mins[2] - trigger.maxs[2]) / 2;
    var_e9f2629a = [];
    var_e9f2629a[0] = spawn("script_model", var_791ffffd.origin);
    var_e9f2629a[0] setmodel(#"hash_2f3403e630d2a0f7");
    var_e9f2629a[0].angles = var_791ffffd.angles;
    var_4cabc96 = gameobjects::create_carry_object(#"neutral", trigger, var_e9f2629a, (0, 0, 0), #"dropkick_football");
    var_4cabc96 gameobjects::allow_carry(#"hash_5ccfd7bbbf07c770");
    var_4cabc96 gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
    var_4cabc96 gameobjects::set_use_time(level.var_8abcfbb8);
    var_4cabc96 gameobjects::set_objective_entity(var_4cabc96);
    var_4cabc96 gameobjects::function_a8c842d6(isdefined(getgametypesetting(#"carrier_manualdrop")) ? getgametypesetting(#"carrier_manualdrop") : 0, 1, 1);
    var_4cabc96 gameobjects::set_onpickup_event(&function_3dbc9c80);
    var_4cabc96 gameobjects::function_13798243(&function_279b8022);
    var_4cabc96 gameobjects::set_onbeginuse_event(&onbeginuse);
    var_4cabc96 gameobjects::set_onenduse_event(&onenduse);
    var_4cabc96.onreset = &onreset;
    var_4cabc96.objectiveonself = 1;
    var_4cabc96.allowweapons = 1;
    var_4cabc96.var_22389d70 = 0;
    if (true) {
        var_4cabc96.enemyobjid = gameobjects::get_next_obj_id();
        objective_add(var_4cabc96.enemyobjid, "invisible", var_791ffffd.origin, #"hash_7a7d8800746ef2a5");
    }
    level.var_bb695b91 = var_4cabc96;
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0xe565bfb7, Offset: 0x1650
// Size: 0xb4
function function_b256c6a7() {
    var_4cabc96 = level.var_bb695b91;
    if (!isdefined(var_4cabc96)) {
        return;
    }
    var_4cabc96 gameobjects::set_visible(#"hash_161f03feaadc9b8f");
    var_4cabc96.trigger setinvisibletoall();
    if (isdefined(var_4cabc96.droptrigger)) {
        var_4cabc96.droptrigger setinvisibletoall();
    }
    if (isdefined(var_4cabc96.enemyobjid)) {
        objective_setstate(var_4cabc96.enemyobjid, "invisible");
    }
}

// Namespace dropkick/dropkick
// Params 1, eflags: 0x0
// Checksum 0xbd8ae9a7, Offset: 0x1710
// Size: 0x364
function function_3dbc9c80(player) {
    if (level.var_f2a67a5d === 1) {
        return;
    }
    assert(isdefined(player) && isdefined(player.team));
    ownerteam = player.team;
    var_4cabc96 = self;
    self gameobjects::set_owner_team(ownerteam);
    self.visuals[0] notsolid();
    if (player !== level.var_d0bebb68) {
        level.var_d0bebb68 = undefined;
    }
    if (isdefined(self.enemyobjid)) {
        self gameobjects::set_visible(#"hash_150a20fa4efc5c7a");
        objective_setstate(self.enemyobjid, "active");
        objective_setteam(self.enemyobjid, ownerteam);
        function_c939fac4(self.enemyobjid, ownerteam);
        self thread function_6e8c149a();
        self thread function_96a10724();
    } else {
        self gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
    }
    if (isdefined(self.trigger)) {
        self.trigger triggerenable(0);
    }
    player.var_e8c7d324 = 1;
    player setmovespeedscale(1);
    player clientfield::set("ctf_flag_carrier", 1);
    player function_e9921723();
    if (level.dropkickcarrierarmor > 0) {
        player function_b64329fe();
    }
    remove_influencers(self, player);
    level.var_6c99ff95 = player influencers::create_entity_influencer("dropkick_football", level.player_team_mask | level.enemy_team_mask);
    level.var_1d402358 = player;
    level.var_13faac26 = 0;
    if (level.waverespawndelay) {
        level.wavedelay[ownerteam] = isdefined(level.waverespawndelay) ? level.waverespawndelay : 0;
    }
    player thread globallogic_audio::leader_dialog_on_player("dropkickPlayerPickup");
    thread globallogic_audio::function_b4319f8e("dropkickFriendlyPickup", ownerteam, player);
    thread globallogic_audio::leader_dialog_for_other_teams("dropkickEnemyPickup", ownerteam);
    self thread function_a7574777();
}

// Namespace dropkick/dropkick
// Params 1, eflags: 0x0
// Checksum 0x141c9123, Offset: 0x1a80
// Size: 0x370
function function_279b8022(*player) {
    carrier = level.var_1d402358;
    level.var_1d402358 = undefined;
    if (level.waverespawndelay) {
        level.wavedelay[carrier.team] = 0;
    } else {
        foreach (person in getplayers(carrier.team)) {
            if (person === carrier) {
                continue;
            }
            person forcespawnplayer();
        }
    }
    if (level.var_f2a67a5d === 1) {
        return;
    }
    self notify(#"hash_69b164cea4605785");
    self gameobjects::set_owner_team(#"neutral");
    self gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
    self.visuals[0] solid();
    if (isdefined(self.enemyobjid)) {
        objective_setvisibletoall(self.enemyobjid);
        objective_setstate(self.enemyobjid, "invisible");
        objective_setteam(self.enemyobjid, #"none");
    }
    if (isdefined(carrier)) {
        carrier.var_e8c7d324 = 0;
        carrier setmovespeedscale(1);
        carrier clientfield::set("ctf_flag_carrier", 0);
        carrier function_f58ec571();
    }
    remove_influencers(self, carrier);
    level.var_adb77100 = self influencers::create_entity_influencer("dropkick_football", level.player_team_mask | level.enemy_team_mask);
    level.var_13faac26 = 0;
    if (carrier === level.var_d0bebb68) {
        level.var_d0bebb68 = undefined;
    }
    self thread function_aa074770();
    foreach (person in getplayers()) {
        person playlocalsound(#"hash_2e71f0773ee8286a");
    }
}

// Namespace dropkick/dropkick
// Params 1, eflags: 0x0
// Checksum 0x24b3e07, Offset: 0x1df8
// Size: 0x24
function onbeginuse(*player) {
    self function_3f367c2e();
}

// Namespace dropkick/dropkick
// Params 3, eflags: 0x0
// Checksum 0x86725a3d, Offset: 0x1e28
// Size: 0x54
function onenduse(*team, *player, success) {
    if (!success && self gameobjects::is_object_away_from_home()) {
        self thread function_aa074770();
    }
}

// Namespace dropkick/dropkick
// Params 1, eflags: 0x0
// Checksum 0x81e5c8b3, Offset: 0x1e88
// Size: 0x24
function onreset(*previousorigin) {
    self function_3f367c2e();
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0xac8e3640, Offset: 0x1eb8
// Size: 0x270
function function_a7574777() {
    level endon(#"score_limit_reached");
    self endon(#"hash_69b164cea4605785");
    timeheld = 0;
    var_ec4f42f2 = 0;
    for (var_a14bc571 = 0; true; var_a14bc571 = 1) {
        wait(1);
        hostmigration::waittillhostmigrationdone();
        team = self gameobjects::get_owner_team();
        if (!isdefined(team)) {
            return;
        }
        globallogic_score::giveteamscoreforobjective(team, level.carryscore);
        player = self.carrier;
        if (isdefined(player)) {
            if (isdefined(player.pers[#"objtime"])) {
                player.pers[#"objtime"]++;
                player.objtime = player.pers[#"objtime"];
            }
            player stats::function_bb7eedf0(#"objective_time", 1);
            player globallogic_score::incpersstat(#"objectivetime", 1, 0, 1);
            timeheld++;
            if (timeheld % 5 == 0) {
                scoreevents::processscoreevent(#"hash_5da3cbb3a47375eb", player);
            }
            if (timeheld >= 50 && !var_ec4f42f2) {
                scoreevents::processscoreevent(#"hash_7a2b068529e599a8", player);
                var_ec4f42f2 = 1;
            }
            if (timeheld >= 30 && player === level.var_d0bebb68 && !var_a14bc571) {
                scoreevents::processscoreevent(#"hash_149ab2bcfb997bbc", player);
            }
        }
    }
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0x91ddfc57, Offset: 0x2130
// Size: 0x186
function function_6e8c149a() {
    self notify("38e3b8e87896c1e1");
    self endon("38e3b8e87896c1e1");
    level endon(#"score_limit_reached");
    self endon(#"hash_69b164cea4605785");
    while (true) {
        carrier = self gameobjects::get_carrier();
        if (!isdefined(self.enemyobjid) || !isdefined(carrier)) {
            return;
        }
        var_e000301a = 0;
        stance = carrier getstance();
        if (stance === "stand") {
            height = 70;
            var_e000301a = height / 1.5;
        } else if (stance === "crouch") {
            height = 50;
            var_e000301a = height / 2;
        } else if (stance === "prone") {
            height = 30;
            var_e000301a = height / 2;
        }
        objectiveposition = carrier.origin + (0, 0, var_e000301a);
        objective_setposition(self.enemyobjid, objectiveposition);
        wait(3);
    }
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0x20e6a278, Offset: 0x22c0
// Size: 0x170
function function_96a10724() {
    level endon(#"score_limit_reached");
    self endon(#"hash_69b164cea4605785");
    var_2c26f7e5 = 0;
    while (true) {
        carrier = self gameobjects::get_carrier();
        var_8afaec49 = carrier uav::function_781f1bf2() || carrier recon_plane::function_4dc67281();
        if (var_8afaec49) {
            if (!var_2c26f7e5) {
                objective_setstate(self.enemyobjid, "invisible");
                self gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
                var_2c26f7e5 = 1;
            }
        } else if (var_2c26f7e5) {
            self thread function_6e8c149a();
            objective_setstate(self.enemyobjid, "active");
            self gameobjects::set_visible(#"hash_150a20fa4efc5c7a");
            var_2c26f7e5 = 0;
        }
        wait(0.25);
    }
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0x5253fb9b, Offset: 0x2438
// Size: 0x16c
function function_e9921723() {
    primaryweapon = getweapon(#"hash_29ab150f9f8964f");
    self giveweapon(primaryweapon);
    self givestartammo(primaryweapon);
    self switchtoweapon(primaryweapon, 1);
    self val::set(#"hash_57686500ed84dbcc", "disable_weapon_cycling", 1);
    self val::set(#"hash_57686500ed84dbcc", "disable_offhand_weapons", 1);
    self val::set(#"hash_57686500ed84dbcc", "disable_weapon_pickup", 1);
    self loadout::function_442539("primary", primaryweapon);
    self.droppeddeathweapon = 1;
    gestures::function_a5202150(#"hash_6c5354e57d5054f6", #"hash_29ab150f9f8964f");
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0x675ad079, Offset: 0x25b0
// Size: 0x64
function function_b64329fe() {
    self armor::set_armor(level.dropkickcarrierarmor, level.dropkickcarrierarmor, 0, 0, 1, 1, 5, 1, 1, 1);
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0x29137175, Offset: 0x2620
// Size: 0x9e
function function_f58ec571() {
    primaryweapon = getweapon(#"hash_29ab150f9f8964f");
    if (self hasweapon(primaryweapon)) {
        self takeweapon(primaryweapon);
    }
    self enableweaponcycling();
    self val::reset_all(#"hash_57686500ed84dbcc");
    self.droppeddeathweapon = undefined;
}

// Namespace dropkick/dropkick
// Params 2, eflags: 0x0
// Checksum 0xa7e065c4, Offset: 0x26c8
// Size: 0x96
function remove_influencers(var_4cabc96, carrier) {
    if (isdefined(level.var_adb77100) && isdefined(var_4cabc96)) {
        var_4cabc96 influencers::remove_influencer(level.var_adb77100);
        level.var_adb77100 = undefined;
    }
    if (isdefined(level.var_6c99ff95) && isdefined(carrier)) {
        carrier influencers::remove_influencer(level.var_6c99ff95);
        level.var_6c99ff95 = undefined;
    }
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0x7cf66045, Offset: 0x2768
// Size: 0x84
function function_aa074770() {
    if (!isdefined(level.var_6ecc0fa6) || level.var_6ecc0fa6 == 0) {
        return;
    }
    self endon(#"hash_656fdc4ee4edf47c");
    wait(level.var_6ecc0fa6);
    if (level.var_f2a67a5d === 1) {
        return;
    }
    if (!isdefined(self.carrier)) {
        self thread gameobjects::return_home();
    }
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0xe60519d8, Offset: 0x27f8
// Size: 0x3e
function function_3f367c2e() {
    if (!isdefined(level.var_6ecc0fa6) || level.var_6ecc0fa6 == 0) {
        return;
    }
    self notify(#"hash_656fdc4ee4edf47c");
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x0
// Checksum 0xd6d3602c, Offset: 0x2840
// Size: 0xc4
function function_1a67afed() {
    clientfield::set("" + #"hash_69d32ac298f2aa22", 1);
    level waittill(#"pre_potm");
    clientfield::set("" + #"hash_69d32ac298f2aa22", 2);
    level waittill(#"potm_finished");
    clientfield::set("" + #"hash_69d32ac298f2aa22", 3);
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x4
// Checksum 0x4f804518, Offset: 0x2910
// Size: 0x164
function private function_311e397d() {
    wait(2.5);
    var_1c3c21f1 = function_ec196fb0();
    var_5ac13eb1 = struct::get_array(#"hash_4b493e0124411b31", "targetname");
    if (var_5ac13eb1.size == 0 && !isdefined(var_1c3c21f1)) {
        return;
    }
    var_a996ef6 = var_5ac13eb1[randomint(var_5ac13eb1.size)];
    if (isdefined(var_1c3c21f1)) {
        var_a996ef6 = var_1c3c21f1;
    }
    origin = var_a996ef6.origin;
    forward = anglestoforward(var_a996ef6.angles);
    up = anglestoup(var_a996ef6.angles);
    playsoundatposition(#"hash_36412d3d8dabf70e", (0, 0, 0));
    playfx(#"hash_76b02047787f0357", origin, forward, up, 1);
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x4
// Checksum 0x2e783fd1, Offset: 0x2a80
// Size: 0x66
function private function_ec196fb0() {
    if (!isdefined(level.var_4c887efb) || !isdefined(level.var_4c887efb.origin)) {
        return;
    }
    if (!isdefined(level.var_4c887efb.angles)) {
        level.var_4c887efb.angles = (0, 0, 0);
    }
    return level.var_4c887efb;
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x4
// Checksum 0x119dc9da, Offset: 0x2af0
// Size: 0x210
function private function_f7c2fc80() {
    wait(2);
    foreach (player in getplayers()) {
        player function_66337ef1(#"dropkick_nuke_rumble_first");
    }
    var_3b3fc42b = 4;
    wait(var_3b3fc42b);
    foreach (player in getplayers()) {
        player stoprumble(#"dropkick_nuke_rumble_first");
        player function_66337ef1(#"dropkick_nuke_rumble_second");
    }
    var_6972a090 = 3.4;
    wait(var_6972a090);
    foreach (player in getplayers()) {
        player stoprumble(#"dropkick_nuke_rumble_second");
    }
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x4
// Checksum 0xc5812740, Offset: 0x2d08
// Size: 0x170
function private function_68f13f40() {
    wait(2.1);
    foreach (player in getplayers()) {
        player gestures::play_gesture(#"hash_6c5354e57d5054f6", undefined, 1);
    }
    duration = 6.9;
    wait(duration);
    foreach (player in getplayers()) {
        if (player isgestureplaying(#"hash_6c5354e57d5054f6")) {
            player stopgestureviewmodel(#"hash_6c5354e57d5054f6");
        }
    }
}

// Namespace dropkick/dropkick
// Params 0, eflags: 0x4
// Checksum 0xf839c03d, Offset: 0x2e80
// Size: 0xb0
function private function_86ca9275() {
    wait(2);
    foreach (player in getplayers()) {
        player val::set(#"hash_31a56c396d195997", "show_hud", 0);
    }
}

