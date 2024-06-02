// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\teams\teams.gsc;
#using scripts\mp_common\player\player_loadout.gsc;
#using scripts\mp_common\gametypes\round.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\mp_common\gameadvertisement.gsc;
#using scripts\wz_common\teams\teams.gsc;
#using scripts\wz_common\spawn.gsc;
#using script_b9a55edd207e4ca;
#using script_46192c58ea066d7f;
#using script_46a1e199a5662ca1;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using script_335d0650ed05d36d;
#using script_5ee699b0aaf564c4;
#using script_26187575f84f8d07;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\oob.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\item_world.gsc;
#using script_69514c4c056c768;
#using script_1cc417743d7c262d;
#using scripts\core_common\gameobjects_shared.gsc;
#using script_595f2d6a7b798a87;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;

#namespace fireteam_elimination;

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x5
// Checksum 0xdbfdecc1, Offset: 0x438
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_112a74f076cda31", &function_62730899, undefined, undefined, #"territory");
}

// Namespace fireteam_elimination/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xb37f4c9f, Offset: 0x488
// Size: 0x764
function event_handler[gametype_init] main(*eventstruct) {
    level.var_3e5fe4d1 = 1;
    namespace_2938acdc::init();
    namespace_b77e8eb1::init();
    namespace_fc40d35f::function_dd83b835();
    spawning::addsupportedspawnpointtype("tdm");
    level.var_61d4f517 = 1;
    level.takelivesondeath = 1;
    level.var_c8f28fd7 = 1;
    level.var_d60fd7cd = getgametypesetting(#"hash_162ebc3912b68841");
    level.var_46f2c796 = isdefined(getgametypesetting(#"hash_982be25d9d36fcb")) ? getgametypesetting(#"hash_982be25d9d36fcb") : 0;
    level.var_60693fca = (isdefined(getgametypesetting(#"hash_37aefeabeef0ec6c")) ? getgametypesetting(#"hash_37aefeabeef0ec6c") : 0) * 100;
    level.var_60e3f99c = 99999;
    level.var_c2eba59b = getgametypesetting(#"capturetime");
    level.var_8166e83a = -1;
    /#
        if (getdvarint(#"hash_36f30cd685f7126f", 0)) {
            level.var_d60fd7cd = 3;
            level.var_7108bd31 = 5;
            level.var_46f2c796 = 1;
        }
        if (getdvarint(#"hash_3d999d24113bebf6", 0)) {
            level.var_f3bbe6b4 = 1;
        }
        level.var_8166e83a = getdvarint(#"hash_4112aa7dda50b138", -1);
        init_devgui();
    #/
    callback::on_spawned(&onplayerspawned);
    callback::on_player_killed(&on_player_killed);
    callback::on_connect(&on_player_connect);
    callback::on_game_playing(&on_game_playing);
    level.givecustomloadout = &givecustomloadout;
    level.var_eada15e7 = &function_407d343f;
    level.ondeadevent = &ondeadevent;
    level.var_13de4626 = &function_13de4626;
    item_world::function_861f348d(#"hash_75a7db904ba5faed", &function_18f58ab2);
    level.var_b9f31e66 = isdefined(getgametypesetting(#"hash_3eeecb0a77c21db1")) ? getgametypesetting(#"hash_3eeecb0a77c21db1") : 100;
    level.var_8c05a764 = isdefined(getgametypesetting(#"hash_2e824e2ee213574d")) ? getgametypesetting(#"hash_2e824e2ee213574d") : 10;
    level.var_89a6bd00 = isdefined(getgametypesetting(#"hash_7b5af9a43263b4a9")) ? getgametypesetting(#"hash_7b5af9a43263b4a9") : 15;
    level.var_65a0fe4d = isdefined(getgametypesetting(#"hash_7b3feba4324cd527")) ? getgametypesetting(#"hash_7b3feba4324cd527") : 30;
    level thread namespace_234f0efc::function_8d066de9(level.var_b9f31e66, level.var_89a6bd00, level.var_65a0fe4d, level.var_8c05a764);
    level.var_c3a003ad = &namespace_234f0efc::function_aecae28d;
    level.var_574cc797 = &namespace_234f0efc::function_588a586d;
    clientfield::function_5b7d846d("hud_items_fireteam.exfil_state", 20000, 2, "int");
    clientfield::register("scriptmover", "isExfilSite", 20000, 1, "int");
    clientfield::register_clientuimodel("hud_items_fireteam_percontroller.teamRedeployableCount", 1, 3, "int", 1);
    level.var_ce3bff50 = 1;
    level.var_9b927bb4 = &function_9b927bb4;
    level.var_a962eeb6 = undefined;
    level.var_5c0efff9 = 1;
    level.var_e1206a08 = 1;
    level.var_1ff083bd = [];
    level.var_1ff083bd[0] = 6;
    level.var_1ff083bd[1] = 9;
    level.var_1ff083bd[2] = 12;
    level.var_1ff083bd[3] = 15;
    level.var_1ff083bd[4] = 0;
    level.var_696cfecf = [#"smg_standard_t9", #"smg_handling_t9", #"smg_capacity_t9", #"pistol_burst_t9", #"smg_heavy_t9"];
    level.startingweapon = getweapon(level.var_696cfecf[randomint(level.var_696cfecf.size)]);
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x6 linked
// Checksum 0x2a0ac0ac, Offset: 0xbf8
// Size: 0x1c
function private on_player_connect() {
    self thread function_ec3bb66c();
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x6 linked
// Checksum 0x478bc768, Offset: 0xc20
// Size: 0x1ac
function private on_game_playing() {
    gameadvertisement::setadvertisedstatus(0);
    foreach (team in level.teams) {
        players = getplayers(team);
        foreach (player in players) {
            player clientfield::set_player_uimodel("hud_items_fireteam_percontroller.teamRedeployableCount", players.size);
        }
    }
    /#
        if (is_true(level.var_f3bbe6b4)) {
            level thread function_149055ce();
            return;
        }
    #/
    function_a3e78cba();
    function_7545eaf0();
    level thread function_b359b7b0();
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 1, eflags: 0x2 linked
// Checksum 0x44ae3128, Offset: 0xdd8
// Size: 0x34c
function givecustomloadout(*takeoldweapon) {
    self loadout::init_player(1);
    self function_e6f9e3cd();
    self clearperks();
    perks = self getloadoutperks(0);
    foreach (perk in perks) {
        self setperk(perk);
    }
    spawnweapon = level.startingweapon;
    self giveweapon(spawnweapon);
    self switchtoweapon(spawnweapon);
    var_f945fa92 = getweapon(#"bare_hands");
    self giveweapon(var_f945fa92);
    if (self.firstspawn !== 0) {
        self setspawnweapon(spawnweapon);
    }
    primaryoffhand = level.var_34d27b26;
    self giveweapon(primaryoffhand);
    self setweaponammostock(primaryoffhand, 0);
    self switchtooffhand(primaryoffhand);
    secondaryoffhand = level.var_6388e216;
    self giveweapon(secondaryoffhand);
    self setweaponammostock(secondaryoffhand, 0);
    self switchtooffhand(secondaryoffhand);
    fieldupgrade = level.var_43a51921;
    self giveweapon(fieldupgrade);
    self setweaponammoclip(fieldupgrade, 0);
    actionslot3 = getdvarint(#"hash_449fa75f87a4b5b4", 0) < 0 ? "flourish_callouts" : "ping_callouts";
    self setactionslot(3, actionslot3);
    self setactionslot(4, #"scorestreak_wheel");
    self loadout::function_6573eeeb();
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x2 linked
// Checksum 0x2e0c2abf, Offset: 0x1130
// Size: 0xdc
function onplayerspawned() {
    self namespace_234f0efc::function_b0000c15();
    if (game.state === #"playing") {
        if (self.pers[#"lives"] > 1) {
            self util::delay(1, "disconnect", &playlocalsound, #"hash_2ddeea4fb69be891");
            return;
        }
        self util::delay(1, "disconnect", &playlocalsound, #"hash_405214f38bd93f20");
    }
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 1, eflags: 0x2 linked
// Checksum 0x1c47bc05, Offset: 0x1218
// Size: 0x54
function on_player_killed(*params) {
    self namespace_234f0efc::function_b0000c15();
    self namespace_234f0efc::function_bf29212a();
    self thread function_ec3bb66c();
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x2 linked
// Checksum 0x5d0e0c1c, Offset: 0x1278
// Size: 0x198
function function_ec3bb66c() {
    if (game.state != #"playing") {
        return;
    }
    wait(1);
    if (!isdefined(self)) {
        return;
    }
    squadplayers = getplayers(self.team);
    var_6200ef6 = 0;
    foreach (squadplayer in squadplayers) {
        if (!isdefined(squadplayer.pers[#"lives"]) || squadplayer.pers[#"lives"] > 0) {
            var_6200ef6++;
        }
    }
    foreach (squadplayer in squadplayers) {
        squadplayer clientfield::set_player_uimodel("hud_items_fireteam_percontroller.teamRedeployableCount", var_6200ef6);
    }
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x2 linked
// Checksum 0xce01f875, Offset: 0x1418
// Size: 0x9c
function function_13de4626() {
    if (!isdefined(self.pers[#"lives"])) {
        return;
    }
    if (!function_1a22a165(self.team) || !isalive(self) && self.pers[#"lives"] <= 0) {
        self globallogic_score::function_78e7b549(0.85, "loss");
    }
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x6 linked
// Checksum 0xfe064ec4, Offset: 0x14c0
// Size: 0x5c
function private function_62730899() {
    if (isdefined(level.territory) && level.territory.name != "zoo") {
        namespace_2938acdc::function_4212369d();
        namespace_2938acdc::function_20d09030();
    }
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x6 linked
// Checksum 0xd0ab212a, Offset: 0x1528
// Size: 0xb4
function private function_b359b7b0() {
    level endon(#"game_ended");
    function_2d5cfefd();
    if (!isdefined(level.var_8e875f24)) {
        function_c21c59f();
    }
    luinotifyevent(#"hash_5d656f791da06e1d");
    clientfield::set_world_uimodel("hud_items_fireteam.exfil_state", 1);
    exfil_chopper::function_7f1fe6f8(level.var_8e875f24);
    namespace_b77e8eb1::function_904efdb8();
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 1, eflags: 0x6 linked
// Checksum 0xf377b762, Offset: 0x15e8
// Size: 0x374
function private ondeadevent(team) {
    aliveteamcount = 0;
    var_e5bc959 = undefined;
    foreach (var_20648004 in level.teams) {
        if (function_1a22a165(var_20648004)) {
            globallogic_score::giveteamscoreforobjective(var_20648004, 1);
            aliveteamcount++;
            var_e5bc959 = var_20648004;
        }
    }
    if (aliveteamcount == 1) {
        var_89be624f = getplayers(var_e5bc959);
        foreach (winner in var_89be624f) {
            winner stats::function_dad108fa(#"hash_28b6ab1b019d73", 1);
        }
    }
    if (team == "all") {
        var_d72df62 = teams::function_c7eae573();
        winning_team = teams::function_c2f2fb84(var_d72df62);
        count = 2;
        foreach (final_team in var_d72df62) {
            if (!isdefined(winning_team) || util::function_fbce7263(winning_team, final_team.team)) {
                teams::team_eliminated(final_team.team, count);
                count++;
            }
        }
        teams::function_5fed3908(winning_team);
        round::function_af2e264f(winning_team);
        thread globallogic::end_round(6);
        return;
    }
    if (teams::function_9dd75dad(team) && !is_true(level.var_606becce[team]) && teams::is_all_dead(team)) {
        teams::team_eliminated(team, globallogic::function_e9e52d05() + 1);
    }
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 1, eflags: 0x6 linked
// Checksum 0x3fdbdc1c, Offset: 0x1968
// Size: 0xba
function private function_1a22a165(team) {
    players = getplayers(team);
    foreach (player in players) {
        if (isalive(player)) {
            return true;
        }
    }
    return false;
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 1, eflags: 0x6 linked
// Checksum 0x18b6528f, Offset: 0x1a30
// Size: 0x432
function private function_9b927bb4(var_698dbb78) {
    insertionplayer = var_698dbb78 namespace_aaddef5a::function_70f1d702();
    inradiation = 1;
    if (!isdefined(insertionplayer)) {
        teamplayers = getplayers(var_698dbb78.team);
        foreach (player in teamplayers) {
            if (isalive(player)) {
                insertionplayer = player;
                if (!player namespace_b77e8eb1::function_8e4e3bb2()) {
                    inradiation = 0;
                    break;
                }
            }
        }
    }
    origin = insertionplayer.origin;
    angles = insertionplayer.angles;
    if (inradiation) {
        var_4c3e77ea = (0, 0, 0);
        foreach (var_9bbce2cd in level.var_ac7be286) {
            if (!isdefined(var_9bbce2cd.origin) || !isdefined(var_9bbce2cd.var_8e392e0f)) {
                continue;
            }
            var_9a8acd88 = distance2dsquared(insertionplayer.origin, var_9bbce2cd.origin);
            radius = var_9bbce2cd.var_8e392e0f;
            radius += 600;
            if (radius * radius < var_9a8acd88) {
                continue;
            }
            var_8675da3 = insertionplayer.origin - var_9bbce2cd.origin;
            var_8675da3 = (var_8675da3[0], var_8675da3[1], 0);
            var_bd581e61 = vectornormalize(var_8675da3) * radius;
            target = level.exfilstruct.origin;
            if (isdefined(target)) {
                var_d43dd174 = target - insertionplayer.origin;
                var_d43dd174 = (var_d43dd174[0], var_d43dd174[1], 0);
                a = vectordot(var_d43dd174, var_d43dd174);
                b = 2 * vectordot(var_8675da3, var_d43dd174);
                c = vectordot(var_8675da3, var_8675da3) - radius * radius;
                d = sqrt(b * b - 4 * a * c);
                t = (d - b) / 2 * a;
                var_14ff2ad5 = t * var_d43dd174;
            } else {
                var_14ff2ad5 = var_bd581e61 - var_8675da3;
            }
            var_4c3e77ea += var_14ff2ad5;
            var_2932eb0b = 1;
        }
        origin += var_4c3e77ea;
    }
    return namespace_aaddef5a::function_e624cfcf(var_698dbb78, origin, angles);
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x6 linked
// Checksum 0xe4d77aa, Offset: 0x1e70
// Size: 0x2bc
function private function_a3e78cba() {
    var_8bf4109d = exfil_chopper::function_662f57c9();
    if (var_8bf4109d.size <= 0) {
        return undefined;
    }
    if (level.var_8166e83a >= 0) {
        foreach (exfilstruct in var_8bf4109d) {
            if (exfilstruct.var_6956912d == level.var_8166e83a) {
                level.exfilstruct = exfilstruct;
                break;
            }
        }
    } else {
        level.exfilstruct = var_8bf4109d[randomint(var_8bf4109d.size)];
    }
    level.var_5d5301ba = level.exfilstruct.var_6956912d;
    if (!isdefined(level.var_5d5301ba)) {
        assertmsg("<unknown string>");
        return;
    }
    level.exfilstruct.var_f389af4f = 1;
    level.exfilstruct.hintstring = #"hash_1ed278859e55fb7b";
    level.var_36cba6d6 = level.exfilstruct.origin;
    var_e8a4ae59 = 64;
    var_a3c01952 = 128;
    startorigin = level.exfilstruct.origin + (0, 0, var_e8a4ae59);
    endorigin = startorigin - (0, 0, var_a3c01952);
    trace = physicstraceex(startorigin, endorigin, (-0.5, -0.5, -0.5), (0.5, 0.5, 0.5), undefined, 1);
    level.exfilstruct.origin = trace[#"position"];
    level.var_ffa615ef = spawn("script_model", level.exfilstruct.origin);
    level.var_ffa615ef clientfield::set("isExfilSite", 1);
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x6 linked
// Checksum 0xe3919888, Offset: 0x2138
// Size: 0x17c
function private function_c21c59f() {
    level.var_8e875f24 = exfil_chopper::function_c21c59f(level.exfilstruct, #"hash_40ec3d423b284abf");
    level.var_8e875f24.onbeginuse = &function_e96dd5cf;
    level.var_8e875f24.onenduse = &function_7447e7df;
    level.var_8e875f24.onuse = &function_d5dfe4b;
    level.var_8e875f24.oncontested = &function_e49cc01a;
    level.var_8e875f24.useweapon = getweapon(#"hash_52ea38778c7d2fb3");
    level.var_8e875f24.var_dddda5d8 = 1;
    level.var_8e875f24.dontlinkplayertotrigger = 1;
    level.var_8e875f24 gameobjects::function_8f776dd0(1);
    /#
        level.var_8e875f24 thread function_78ae3a87(level.var_8e875f24.smokefx);
    #/
    /#
        level.var_8e875f24 thread function_436dbdd3();
    #/
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 1, eflags: 0x6 linked
// Checksum 0xeff96098, Offset: 0x22c0
// Size: 0x36c
function private function_e96dd5cf(player) {
    players = getplayers();
    foreach (otherplayer in players) {
        if (otherplayer !== player) {
            otherplayer thread globallogic_audio::leader_dialog_on_player("vipAttackersExfilStartVIP", "vipAttackersExfilStartVIP");
        }
    }
    if (!isdefined(level.var_a8e30ca7)) {
        level.var_a8e30ca7 = spawn("script_model", player.origin);
    }
    playerangles = player getplayerangles();
    level.var_a8e30ca7 dontinterpolate();
    level.var_a8e30ca7.origin = player.origin;
    level.var_a8e30ca7.angles = playerangles;
    player playerlinkto(level.var_a8e30ca7, undefined, 0, 0, 0, 0, 0);
    player function_66f3a713();
    var_a35cd71 = min(-14, playerangles[0]);
    lookat = isdefined(self.helicopter.rope) ? self.helicopter.rope gettagorigin("carabiner_jnt") : self.origin;
    goalyaw = vectortoyaw(lookat - player getplayercamerapos());
    var_8eef4f81 = absangleclamp180(playerangles[0] - var_a35cd71);
    var_9756b1d4 = absangleclamp180(playerangles[1] - goalyaw);
    var_f4f58cca = 0.25;
    var_bd70ec3f = 0.75;
    var_d9a208ec = math::clamp(max(var_8eef4f81, var_9756b1d4) / 180, 0, 1);
    var_7e42472f = var_f4f58cca + var_d9a208ec * (var_bd70ec3f - var_f4f58cca);
    level.var_a8e30ca7 rotateto((var_a35cd71, goalyaw, 0), var_7e42472f, var_7e42472f * 0.25, var_7e42472f * 0.25);
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 3, eflags: 0x6 linked
// Checksum 0x23f6b281, Offset: 0x2638
// Size: 0x76
function private function_7447e7df(*var_98fb2758, player, success) {
    if (isdefined(level.var_a8e30ca7)) {
        if (isdefined(player)) {
            player unlink();
        }
        if (success) {
            level.var_a8e30ca7 deletedelay();
            level.var_a8e30ca7 = undefined;
        }
    }
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 1, eflags: 0x2 linked
// Checksum 0xaa5fed23, Offset: 0x26b8
// Size: 0x4c
function function_d5dfe4b(player) {
    self thread function_93ef48b(player, self.helicopter);
    level.var_8e875f24 gameobjects::disable_object(1);
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x2710
// Size: 0x4
function function_e49cc01a() {
    
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 2, eflags: 0x2 linked
// Checksum 0x8f656872, Offset: 0x2720
// Size: 0x760
function function_93ef48b(vip, helicopter) {
    if (!isdefined(vip) || !isalive(vip) || !isdefined(helicopter) || !isdefined(self)) {
        return;
    }
    helicopter endon(#"death");
    vip endon(#"death", #"disconnect");
    vip setclientuivisibilityflag("hud_visible", 0);
    vip dontinterpolate();
    vip disableweaponfire();
    vip enableinvulnerability();
    vip freezecontrols(1);
    vip function_8a945c0e(0);
    vip function_8b8a321a(0);
    vip disableexecutionattack();
    vip disableexecutionvictim();
    vip.oobdisabled = 1;
    var_867f5d0 = spawn("script_model", vip.origin);
    var_867f5d0.angles = vip getplayerangles();
    var_867f5d0 dontinterpolate();
    vip playerlinkto(var_867f5d0, undefined, 0, 0, 0, 0, 0);
    var_2bf4050a = 0.6;
    var_d892ba80 = helicopter.rope gettagorigin("carabiner_jnt");
    var_de324c05 = 12;
    var_867f5d0 function_3b897a2(vip, var_d892ba80, var_de324c05, var_2bf4050a);
    waittillframeend();
    if (!isdefined(vip) || !isalive(vip) || !isdefined(var_867f5d0)) {
        return;
    }
    helicopter thread function_ce44e2a8(helicopter);
    var_ba5977f4 = 40;
    var_a080de98 = helicopter gettagorigin("tag_enter_passenger1")[2] - var_ba5977f4;
    var_867f5d0.angles = vip getplayerangles();
    goalyaw = helicopter.angles[1] - 90;
    var_867f5d0 thread function_d914539a(goalyaw);
    vip function_44d63ecd(0, 1.9);
    while (isdefined(var_867f5d0) && isalive(vip) && var_867f5d0.origin[2] < var_a080de98 && isdefined(helicopter.rope)) {
        var_443bf2ea = vip gettagorigin("j_spineupper");
        var_70f8d8e1 = vip.origin - var_443bf2ea + var_de324c05 * anglestoforward(vip.angles);
        var_867f5d0.origin = helicopter.rope gettagorigin("carabiner_jnt") + var_70f8d8e1;
        waitframe(1);
    }
    if (!isdefined(vip) || !isalive(vip) || !isdefined(var_867f5d0)) {
        return;
    }
    vip unlink();
    var_867f5d0 delete();
    lerptime = 0.4;
    helicopter thread function_a34ad686();
    var_a3476af7 = helicopter gettagorigin("tag_passenger3");
    var_eb72be15 = helicopter gettagangles("tag_passenger3");
    helicopter thread function_c05c19ed();
    function_3d30adf7(vip.team);
    round::set_winner(vip.team);
    thread globallogic::function_a3e3bd39(vip.team, 12);
    var_89be624f = getplayers(vip.team);
    foreach (winner in var_89be624f) {
        winner stats::function_dad108fa(#"hash_28b6ab1b019d73", 1);
    }
    vip startcameratween(lerptime, 0, 0);
    vip animation::play(#"hash_56f45aa3dfb2cdf", var_a3476af7, var_eb72be15, 1, 0.15, 0, lerptime, undefined, undefined, 0);
    waitframe(1);
    if (!isdefined(vip) || !isalive(vip)) {
        return;
    }
    helicopter usevehicle(vip, 7);
    if (vip hasweapon(self.useweapon)) {
        vip takeweapon(self.useweapon);
    }
    vip setlowready(1);
    helicopter notify(#"hash_371e4087fcc0efc2");
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 1, eflags: 0x2 linked
// Checksum 0x5a13672f, Offset: 0x2e88
// Size: 0x248
function function_3d30adf7(winningteam) {
    var_9238c552 = [];
    foreach (team, _ in level.teams) {
        if (function_1a22a165(team)) {
            players = getplayers(team);
            team_kills = function_7e309c84(team, players);
            damage_done = function_3915e148(team, players);
            if (!isdefined(var_9238c552)) {
                var_9238c552 = [];
            } else if (!isarray(var_9238c552)) {
                var_9238c552 = array(var_9238c552);
            }
            var_9238c552[var_9238c552.size] = {#team:team, #players:players, #winner:team == winningteam, #kills:team_kills, #damage:damage_done};
        }
    }
    var_ec950e92 = array::merge_sort(var_9238c552, &function_39971b81);
    points = 1;
    for (i = var_ec950e92.size - 2; i >= 0; i--) {
        teamdata = var_ec950e92[i];
        globallogic_score::giveteamscoreforobjective(teamdata.team, points);
        points++;
    }
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 2, eflags: 0x2 linked
// Checksum 0x56f8126b, Offset: 0x30d8
// Size: 0xa4
function function_7e309c84(*team, players) {
    team_kills = 0;
    foreach (player in players) {
        team_kills += player.kills;
    }
    return team_kills;
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 2, eflags: 0x2 linked
// Checksum 0xd0706d3c, Offset: 0x3188
// Size: 0xa4
function function_3915e148(*team, players) {
    damage_done = 0;
    foreach (player in players) {
        damage_done += player.damagedone;
    }
    return damage_done;
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 2, eflags: 0x2 linked
// Checksum 0xb0bdb07b, Offset: 0x3238
// Size: 0xbe
function function_39971b81(var_d3ba512b, var_c0856555) {
    if (is_true(var_d3ba512b.winner)) {
        return true;
    }
    if (is_true(var_c0856555.winner)) {
        return false;
    }
    if (var_d3ba512b.kills > var_c0856555.kills) {
        return true;
    }
    if (var_c0856555.kills > var_d3ba512b.kills) {
        return false;
    }
    if (var_d3ba512b.damage > var_c0856555.damage) {
        return true;
    }
    if (var_c0856555.damage > var_d3ba512b.damage) {
        return false;
    }
    return true;
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 4, eflags: 0x2 linked
// Checksum 0x6bb1b749, Offset: 0x3300
// Size: 0x156
function function_3b897a2(vip, var_d892ba80, var_10890b28, movetime) {
    self endon(#"death");
    vip endon(#"death", #"disconnect");
    endtime = gettime() + int(movetime * 1000);
    while (isdefined(self) && isdefined(vip) && isalive(vip) && gettime() < endtime) {
        var_443bf2ea = vip gettagorigin("j_spineupper");
        var_70f8d8e1 = vip.origin - var_443bf2ea + var_10890b28 * anglestoforward(vip.angles);
        goalpos = var_d892ba80 + var_70f8d8e1;
        self moveto(goalpos, movetime);
        waitframe(1);
    }
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 1, eflags: 0x6 linked
// Checksum 0xeeb25835, Offset: 0x3460
// Size: 0xdc
function private function_ce44e2a8(helicopter) {
    if (!isdefined(helicopter.rope)) {
        return;
    }
    helicopter endon(#"death");
    helicopter.rope endon(#"death");
    helicopter notify(#"hash_4c9df8896f727a2e");
    var_2e2c7ee7 = 0.5;
    helicopter.rope animation::play(#"hash_3f5deb4729726f2c", helicopter, "tag_origin_animate", var_2e2c7ee7, 0.2, 0.1, undefined, undefined, undefined, 0);
    function_1d3cfe48(helicopter);
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 1, eflags: 0x6 linked
// Checksum 0x35f26576, Offset: 0x3548
// Size: 0x4c
function private function_1d3cfe48(helicopter) {
    helicopter endon(#"death");
    if (isdefined(helicopter.rope)) {
        helicopter.rope delete();
    }
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 1, eflags: 0x2 linked
// Checksum 0x8658a750, Offset: 0x35a0
// Size: 0x1ac
function function_d914539a(goalyaw) {
    self endon(#"death");
    var_ecaa456b = 1.9;
    var_9546359 = min(-75, self.angles[0]);
    var_64165cee = 0.6;
    var_44cf825 = math::clamp(var_64165cee / var_ecaa456b, 0, 1);
    var_bc4bc17d = anglelerp(self.angles[1], goalyaw, var_44cf825);
    var_fc27b3e3 = (var_9546359, var_bc4bc17d, 0);
    self rotateto(var_fc27b3e3, var_64165cee, 0.2, 0.1);
    wait(var_64165cee);
    if (!isdefined(self)) {
        return;
    }
    var_3c4cc94a = -60;
    var_f0d8f62c = math::clamp(var_ecaa456b - var_64165cee, 0, var_ecaa456b);
    var_cbb558d8 = (var_3c4cc94a, goalyaw, 0);
    self rotateto(var_cbb558d8, var_f0d8f62c, 0, min(var_f0d8f62c, 0.5));
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x2 linked
// Checksum 0x45634683, Offset: 0x3758
// Size: 0x3c
function function_a34ad686() {
    self animation::play(#"hash_54933f08b311d2db", self, "tag_passenger3", 1, 0, 0, undefined, undefined, undefined, 0);
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x2 linked
// Checksum 0x1edc3e77, Offset: 0x37a0
// Size: 0x124
function function_c05c19ed() {
    var_2dd14343 = self.var_2dd14343;
    if (!isdefined(var_2dd14343)) {
        return;
    }
    self endon(#"death");
    var_2dd14343 endon(#"death");
    var_2dd14343 animation::play(#"hash_18755f57707b62a4", self gettagorigin("tag_passenger3"), self gettagangles("tag_passenger3"), 1, 0.2, 0.1, undefined, undefined, undefined, 0);
    var_2dd14343 animation::play(#"hash_74a9c4a2475fa8f1", self gettagorigin("tag_passenger3"), self gettagangles("tag_passenger3"), 1, 0.2, 0.1, undefined, undefined, undefined, 0);
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 7, eflags: 0x6 linked
// Checksum 0x7d81cac0, Offset: 0x38d0
// Size: 0x150
function private function_18f58ab2(item, player, networkid, itemid, itemcount, var_aec6fa7f, slot) {
    pickup = 0;
    switch (item.itementry.name) {
    case #"hash_6ebec4f42d4b01c":
        pickup = function_dc3115e2(item, player, networkid, itemid, itemcount, var_aec6fa7f, slot);
        break;
    case #"hash_2ec97717fa7f8ee":
        pickup = function_a882bcee(item, player, networkid, itemid, itemcount, var_aec6fa7f, slot);
        break;
    case #"hash_44cca2edb9c2041c":
        pickup = namespace_234f0efc::function_dd8cb464(item, player, networkid, itemid, itemcount, var_aec6fa7f, slot);
        break;
    case #"hash_583f1687cefbd3f3":
        pickup = namespace_234f0efc::function_98942433(item, player, networkid, itemid, itemcount, var_aec6fa7f, slot);
        break;
    }
    return itemcount - pickup;
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 7, eflags: 0x6 linked
// Checksum 0xc75bccc7, Offset: 0x3a28
// Size: 0x110
function private function_dc3115e2(*item, player, *networkid, *itemid, *itemcount, *var_aec6fa7f, *slot) {
    if (slot.pers[#"lives"] > 5) {
        return false;
    }
    slot.pers[#"lives"]++;
    slot clientfield::set_player_uimodel("hudItems.playerLivesRemaining", slot.pers[#"lives"]);
    slot clientfield::set_player_uimodel("hudItems.playerLivesRemainingPredicted", slot.pers[#"lives"]);
    slot spawn::function_1390f875();
    slot luinotifyevent(#"hash_4f2c417a86cf227");
    return true;
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 7, eflags: 0x6 linked
// Checksum 0xb53ff185, Offset: 0x3b40
// Size: 0x11c
function private function_a882bcee(*item, player, *networkid, *itemid, *itemcount, *var_aec6fa7f, *slot) {
    squadplayers = function_c65231e2(slot.squad);
    foreach (squadplayer in squadplayers) {
        squadplayer.pers[#"lives"]++;
        squadplayer spawn::function_1390f875();
        squadplayer luinotifyevent(#"hash_4f2c417a86cf227");
    }
    return true;
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x2 linked
// Checksum 0xac2a11b3, Offset: 0x3c68
// Size: 0x3c4
function function_2d5cfefd() {
    skipwait = 0;
    /#
        if (getdvarint(#"hash_36f30cd685f7126f", 0) || getdvarint(#"scr_disable_infiltration", 0)) {
            skipwait = 1;
        }
    #/
    if (!skipwait) {
        wait(60);
    }
    level.var_75db41a7 = gettime() + int((level.var_93c1de64.size - 1) * level.var_d60fd7cd * 1000);
    for (i = 0; i < level.var_93c1de64.size; i++) {
        bomb = level.var_93c1de64[i];
        waittime = level.var_d60fd7cd - bomb.var_a2d52f9d;
        if (waittime < 0) {
            bomb.var_a2d52f9d += waittime;
            waittime = 0;
        }
        if (i == 0) {
            globallogic_audio::function_61e17de0("warCircleDetectedFirst", getplayers());
        } else if (i == level.var_93c1de64.size - 1) {
            globallogic_audio::function_61e17de0("warCircleDetectedLast", getplayers());
        } else {
            globallogic_audio::function_61e17de0("warCircleDetected", getplayers());
        }
        if (i == level.var_93c1de64.size - 1) {
            function_c21c59f();
            level.var_8e875f24 gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
            level.var_8e875f24 gameobjects::set_flags(1);
        }
        wait(waittime);
        if (waittime > 0) {
            globallogic_audio::function_61e17de0("warCircleCollapseImminent", getplayers());
        }
        if (isdefined(level.var_1ff083bd[i]) && level.var_1ff083bd[i] > 0) {
            level.var_f87355e5 = level.var_1ff083bd[i];
        } else {
            level.var_f87355e5 = (isdefined(getgametypesetting(#"hash_319a587185662631")) ? getgametypesetting(#"hash_319a587185662631") : 1) * (i + 1) / level.var_93c1de64.size;
        }
        bomb thread function_c77a61d();
        wait(bomb.var_a2d52f9d);
    }
    level.var_4afb8f5a[#"hash_6ebec4f42d4b01c"] = #"hash_fb37841b0d2d7e7";
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x2 linked
// Checksum 0x25716726, Offset: 0x4038
// Size: 0x3dc
function function_c77a61d() {
    self.model namespace_b77e8eb1::function_1cb7e339();
    self.objectiveid = gameobjects::get_next_obj_id();
    objective = #"hash_2854f6c09dd9a316";
    objective_add(self.objectiveid, "active", self.model.origin, objective);
    function_9a8950ee(self.objectiveid, 1);
    objective_setgamemodeflags(self.objectiveid, 1);
    objective_setteam(self.objectiveid, #"hash_34db99d80fb3607f");
    if (level.var_46f2c796 != 0) {
        self.model playloopsound(#"hash_78cdfb1438b360bf", 1);
        wait(level.var_46f2c796);
        if (isdefined(self.model)) {
            self.model stoploopsound(0.5);
        }
    }
    origin = self.origin;
    damage = level.var_60e3f99c;
    playsoundatposition("exp_dirty_bomb_explo", origin + (0, 0, 60));
    entities = getdamageableentarray(origin, level.var_60693fca, 1);
    foreach (entity in entities) {
        if (!isalive(entity)) {
            continue;
        }
        entity.killcamkilledbyent = self.model.killcament;
        entity.killcament = self.model.killcament;
        entity dodamage(damage, origin, undefined, self.model, undefined, "MOD_EXPLOSIVE");
    }
    fwd = (0, 0, 1);
    right = (0, -1, 0);
    playfx("wz/fx9_dirtybomb_exp", origin, fwd, right);
    if (isentity(self.model)) {
        self.model.killcament delete();
        self.model delete();
    }
    globallogic_audio::function_61e17de0("warCircleCollapseOccurring", getplayers());
    self namespace_b77e8eb1::function_a5caaee0();
    wait(self.var_a2d52f9d);
    if (isdefined(self.objectiveid)) {
        objective_delete(self.objectiveid);
        gameobjects::release_obj_id(self.objectiveid);
    }
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 1, eflags: 0x2 linked
// Checksum 0xf73de91b, Offset: 0x4420
// Size: 0x12a
function function_87b2107c(&structs) {
    var_e8a4ae59 = 64;
    var_a3c01952 = 1024;
    foreach (struct in structs) {
        startorigin = struct.origin + (0, 0, var_e8a4ae59);
        endorigin = startorigin - (0, 0, var_a3c01952);
        trace = physicstraceex(startorigin, endorigin, (-0.5, -0.5, -0.5), (0.5, 0.5, 0.5), undefined, 1);
        struct.origin = trace[#"position"];
    }
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x2 linked
// Checksum 0x3a6ee95f, Offset: 0x4558
// Size: 0x37e
function function_7545eaf0() {
    var_93c1de64 = struct::get_array("radiation_collapse_bomb", "variantname");
    level.var_93c1de64 = [];
    foreach (bomb in var_93c1de64) {
        if (bomb.var_6956912d === level.var_5d5301ba) {
            level.var_93c1de64[level.var_93c1de64.size] = bomb;
        }
    }
    if (level.var_93c1de64.size == 0) {
        assertmsg("<unknown string>");
        return;
    }
    array::randomize(level.var_93c1de64);
    function_6ca1fed3();
    var_3cf63bfa = 0;
    var_cb7ddcbe = 0;
    for (i = 1; i < level.var_93c1de64.size; i++) {
        bomb = level.var_93c1de64[i];
        if (bomb.script_radius > level.var_93c1de64[var_3cf63bfa].script_radius) {
            var_3cf63bfa = i;
            continue;
        }
        if (bomb.script_radius < level.var_93c1de64[var_cb7ddcbe].script_radius) {
            var_cb7ddcbe = i;
        }
    }
    if (var_3cf63bfa != 0) {
        var_fc765109 = level.var_93c1de64[0];
        level.var_93c1de64[0] = level.var_93c1de64[var_3cf63bfa];
        level.var_93c1de64[var_3cf63bfa] = var_fc765109;
    }
    if (var_cb7ddcbe == 0) {
        var_cb7ddcbe = var_3cf63bfa;
    }
    if (var_cb7ddcbe != level.var_93c1de64.size - 1) {
        var_fc765109 = level.var_93c1de64[level.var_93c1de64.size - 1];
        level.var_93c1de64[level.var_93c1de64.size - 1] = level.var_93c1de64[var_cb7ddcbe];
        level.var_93c1de64[var_cb7ddcbe] = var_fc765109;
    }
    function_87b2107c(level.var_93c1de64);
    foreach (bomb in level.var_93c1de64) {
        bomb function_f37d284();
        bomb.var_a2d52f9d = bomb.script_radius / 800 * 10;
    }
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x2 linked
// Checksum 0x82ea9a8c, Offset: 0x48e0
// Size: 0x1da
function function_6ca1fed3() {
    var_9e7a53fd = level.var_ffa615ef.origin;
    foreach (var_30c82ccc in level.var_93c1de64) {
        origin = var_30c82ccc.origin;
        if (oob::chr_party(origin)) {
            continue;
        }
        origin = (origin[0], origin[1], var_9e7a53fd[2] + 5000);
        var_6e241132 = origin - var_9e7a53fd;
        var_6e241132 = (var_6e241132[0], var_6e241132[1], 0);
        var_602d4d77 = vectornormalize(var_6e241132);
        var_602d4d77 *= 800;
        maxattempts = 30;
        for (i = 0; i < maxattempts; i++) {
            origin += var_602d4d77;
            if (oob::chr_party(origin)) {
                var_30c82ccc.script_radius += 800 * (i + 1);
                var_30c82ccc.origin = (origin[0], origin[1], var_30c82ccc.origin[2]);
                break;
            }
        }
    }
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x6 linked
// Checksum 0xfd107a29, Offset: 0x4ac8
// Size: 0x13c
function private function_f37d284() {
    self.model = spawn("script_model", self.origin);
    self.model.angles = self.angles;
    self.model setmodel("p9_wz_dirty_bomb_01");
    self.model function_619a5c20();
    self.model.killcament = spawn("script_model", self.model.origin + (0, 0, 40));
    self.model.killcament setmodel(#"tag_origin");
    self.model.killcament.angles = (0, 0, 0);
    self.model.killcament setweapon(level.weaponnone);
}

// Namespace fireteam_elimination/fireteam_elimination
// Params 0, eflags: 0x2 linked
// Checksum 0x96fedfad, Offset: 0x4c10
// Size: 0xd8
function function_407d343f() {
    self function_e6f9e3cd();
    self clearperks();
    perks = self getloadoutperks(0);
    foreach (perk in perks) {
        self setperk(perk);
    }
}

/#

    // Namespace fireteam_elimination/fireteam_elimination
    // Params 0, eflags: 0x4
    // Checksum 0xebf028ad, Offset: 0x4cf0
    // Size: 0x2c8
    function private function_149055ce() {
        level.var_99a6bc80 = -1;
        level.var_8bf4109d = exfil_chopper::function_662f57c9();
        level.var_bb075e98 = spawn("<unknown string>", (0, 0, 0));
        while (!canadddebugcommand()) {
            waitframe(1);
        }
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        while (true) {
            wait(0.25);
            dvarstr = getdvarstring(#"hash_656def2b11d6b8f7", "<unknown string>");
            if (dvarstr == "<unknown string>") {
                continue;
            }
            setdvar(#"hash_656def2b11d6b8f7", "<unknown string>");
            if (dvarstr == "<unknown string>" && level.var_99a6bc80 < level.var_8bf4109d.size - 1) {
                level.var_99a6bc80++;
            } else if (dvarstr == "<unknown string>" && level.var_99a6bc80 > 0) {
                level.var_99a6bc80--;
            } else if (dvarstr == "<unknown string>" && isdefined(level.var_8e875f24)) {
                if (isdefined(level.var_8e875f24.helicopter)) {
                    level.var_8e875f24.helicopter delete();
                }
                luinotifyevent(#"hash_5d656f791da06e1d");
                thread exfil_chopper::function_7f1fe6f8(level.var_8e875f24);
                continue;
            }
            if (isdefined(level.var_8e875f24)) {
                function_84774057();
                namespace_b77e8eb1::function_366d6aba();
            } else if (level.var_99a6bc80 < 0) {
                level.var_99a6bc80 = 0;
            }
            function_a90b3aca();
            function_b6420ef7();
        }
    }

    // Namespace fireteam_elimination/fireteam_elimination
    // Params 0, eflags: 0x4
    // Checksum 0x9fa005c7, Offset: 0x4fc0
    // Size: 0x17c
    function private function_a90b3aca() {
        var_8bf4109d = exfil_chopper::function_662f57c9();
        if (var_8bf4109d.size <= 0) {
            return undefined;
        }
        level.exfilstruct = var_8bf4109d[level.var_99a6bc80];
        level.var_5d5301ba = level.exfilstruct.var_6956912d;
        if (!isdefined(level.var_5d5301ba)) {
            assertmsg("<unknown string>");
            return;
        }
        level.players[0] iprintlnbold("<unknown string>" + level.var_5d5301ba);
        level.exfilstruct.var_f389af4f = 1;
        level.exfilstruct.hintstring = #"hash_1ed278859e55fb7b";
        function_c21c59f();
        if (isdefined(level.exfilstruct.target)) {
            level.var_8e875f24.var_6728673 = getvehiclenode(level.exfilstruct.target, "<unknown string>");
        }
        level.var_8e875f24 exfil_chopper::function_f76880c5();
    }

    // Namespace fireteam_elimination/fireteam_elimination
    // Params 0, eflags: 0x4
    // Checksum 0x21417987, Offset: 0x5148
    // Size: 0x64
    function private function_84774057() {
        if (isdefined(level.var_8e875f24.helicopter)) {
            level.var_8e875f24.helicopter delete();
        }
        level.var_8e875f24 gameobjects::destroy_object(0);
    }

    // Namespace fireteam_elimination/fireteam_elimination
    // Params 0, eflags: 0x4
    // Checksum 0x884626e4, Offset: 0x51b8
    // Size: 0xfc
    function private function_b6420ef7() {
        var_93c1de64 = struct::get_array("<unknown string>", "<unknown string>");
        level.var_93c1de64 = [];
        foreach (bomb in var_93c1de64) {
            if (bomb.var_6956912d === level.var_5d5301ba) {
                level.var_93c1de64[level.var_93c1de64.size] = bomb;
            }
        }
        namespace_b77e8eb1::function_c6ce0ef0(level.var_93c1de64);
    }

    // Namespace fireteam_elimination/fireteam_elimination
    // Params 0, eflags: 0x0
    // Checksum 0x274986e, Offset: 0x52c0
    // Size: 0x24
    function init_devgui() {
        adddebugcommand("<unknown string>");
    }

    // Namespace fireteam_elimination/fireteam_elimination
    // Params 1, eflags: 0x0
    // Checksum 0x8519e506, Offset: 0x52f0
    // Size: 0x150
    function function_78ae3a87(fx) {
        self endon(#"death");
        while (getdvarint(#"hash_27392129ff420c70", 0)) {
            waitframe(15);
            if (!isdefined(level.var_f5f2d350)) {
                level.var_f5f2d350 = [];
            }
            if (!isdefined(level.var_f5f2d350)) {
                level.var_f5f2d350 = [];
            } else if (!isarray(level.var_f5f2d350)) {
                level.var_f5f2d350 = array(level.var_f5f2d350);
            }
            level.var_f5f2d350[level.var_f5f2d350.size] = fx;
            print3d(fx.origin, fx.origin, (1, 1, 0), 1, 1, 15);
            circle(fx.origin, 12, (1, 1, 0), 0, 1, 15);
        }
    }

    // Namespace fireteam_elimination/fireteam_elimination
    // Params 0, eflags: 0x0
    // Checksum 0x5ec1e93b, Offset: 0x5448
    // Size: 0x240
    function function_436dbdd3() {
        self endon(#"death");
        for (start = undefined; !isdefined(start) && getdvarint(#"hash_27392129ff420c70", 0); start = self.var_6728673) {
            waitframe(1);
        }
        next = start;
        exfil = next;
        end = start;
        while (isdefined(start) && isdefined(next.target) && getdvarint(#"hash_27392129ff420c70", 0)) {
            waitframe(1);
            exfil = next;
            next = getvehiclenode(next.target, "<unknown string>");
            if (next.script_notify === "<unknown string>") {
                exfil = next;
            }
            if (!isdefined(next.target)) {
                end = next;
                break;
            }
        }
        while (isdefined(start) && getdvarint(#"hash_27392129ff420c70", 0)) {
            waitframe(15);
            sphere(start.origin, 64, (0, 1, 0), 1, 0, undefined, 15);
            sphere(end.origin, 64, (1, 1, 0), 1, 0, undefined, 15);
            line(start.origin, exfil.origin, (0, 1, 0), 1, 0, 15);
            line(exfil.origin, end.origin, (1, 1, 0), 1, 0, 15);
        }
    }

#/
