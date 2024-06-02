// Atian COD Tools GSC CW decompiler test
#using script_10a2f2b06daf3f04;
#using scripts\mp_common\player\player_loadout.gsc;
#using scripts\mp_common\gametypes\globallogic_utils.gsc;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\mp_common\gametypes\gametype.gsc;
#using scripts\mp_common\gametypes\match.gsc;
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\mp_common\perks.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using scripts\mp_common\draft.gsc;
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\callbacks.gsc;
#using script_1cc417743d7c262d;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\hostmigration_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\serverfield_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\sound_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using script_44b0b8420eabacad;
#using script_335d0650ed05d36d;

#namespace scream;

// Namespace scream/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xe6d49c4a, Offset: 0x4b8
// Size: 0x798
function event_handler[gametype_init] main(*eventstruct) {
    globallogic::init();
    util::registerroundscorelimit(0, 10000);
    level.var_60507c71 = 1;
    level.var_a35b128f = 1;
    level.var_2a029538 = 1;
    level.onstartgametype = &onstartgametype;
    level.onroundswitch = &onroundswitch;
    level.onendround = &onendround;
    level.onendgame = &onendgame;
    level.ontimelimit = &ontimelimit;
    level.givecustomloadout = &givecustomloadout;
    level.mayspawn = &mayspawn;
    level.var_f82f37a9 = &function_2415840b;
    level.var_beb69c9 = &function_beb69c9;
    callback::on_game_playing(&ongameplaying);
    callback::on_connect(&onconnect);
    callback::on_disconnect(&ondisconnect);
    callback::on_spawned(&onspawned);
    callback::function_acaac19b(&function_34d76906);
    callback::add_callback(#"on_status_effect", &function_935f0220);
    callback::function_c11071a8(&function_c11071a8);
    player::function_cf3aa03d(&onplayerkilled);
    spawning::addsupportedspawnpointtype("ffa");
    spawning::function_32b97d1b(&spawning::function_90dee50d);
    spawning::function_adbbb58a(&spawning::function_c24e290c);
    level.screamheartbeatradius = isdefined(getgametypesetting(#"screamheartbeatradius")) ? getgametypesetting(#"screamheartbeatradius") : 0;
    level.screamplayerscreamtimer = isdefined(getgametypesetting(#"screamplayerscreamtimer")) ? getgametypesetting(#"screamplayerscreamtimer") : 0;
    level.var_1d07375a = isdefined(getgametypesetting(#"hash_582505cf308f477")) ? getgametypesetting(#"hash_582505cf308f477") : 0;
    level.var_aa7fa50d = isdefined(getgametypesetting(#"hash_4981d8956f2ea77d")) ? getgametypesetting(#"hash_4981d8956f2ea77d") : 0;
    level.var_b85ed4e7 = isdefined(getgametypesetting(#"hash_57841ca38b4fc03d")) ? getgametypesetting(#"hash_57841ca38b4fc03d") : 0;
    level.screamslasherlethalequipment = isdefined(getgametypesetting(#"screamslasherlethalequipment")) ? getgametypesetting(#"screamslasherlethalequipment") : 0;
    level.screamsurvivortacticalequipment = isdefined(getgametypesetting(#"screamsurvivortacticalequipment")) ? getgametypesetting(#"screamsurvivortacticalequipment") : 0;
    level.screamslashermovespeedoverride = isdefined(getgametypesetting(#"screamslashermovespeedoverride")) ? getgametypesetting(#"screamslashermovespeedoverride") : 0;
    level.var_673aa6d8 = function_fafe6b47();
    level.var_d2cc3b7 = getscriptbundle("mp_scream_loadouts");
    level.scream_deathmatch_timer = scream_deathmatch_timer::register();
    clientfield::register("toplayer", "scream_slasher_postfx", 17000, 1, "int");
    clientfield::register("allplayers", "scream_role_assignment", 17000, 2, "int");
    clientfield::register("allplayers", "scream_underscores", 17000, 1, "int");
    clientfield::register("scriptmover", "scream_scrambler", 17000, 1, "int");
    clientfield::register_clientuimodel("hudItems.alivePlayerCount", 17000, 4, "int", 1);
    clientfield::register_clientuimodel("hudItems.aliveTeammateCount", 1, 4, "int", 1);
    clientfield::register_clientuimodel("hudItems.screamSlasherClientNum0", 17000, 7, "int", 1);
    clientfield::register_clientuimodel("hudItems.screamSlasherClientNum1", 17000, 7, "int", 1);
    serverfield::register("scream_slasher_chasing_vo", 17000, 1, "int", &function_591e9ac4);
    if (level.var_2a029538) {
        game.musicset = "_" + "scream";
    }
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0x71816055, Offset: 0xc58
// Size: 0x9c
function onstartgametype() {
    level.graceperiod = level.var_1d07375a;
    function_5737e2d4();
    level.var_826250a4 = [];
    level.var_ebc0113e = [];
    level.var_c251edf0 = [];
    level.var_caa79fb2 = [];
    level.var_fcd3d9ae = spawn("script_model", isdefined(level.mapcenter) ? level.mapcenter : (0, 0, 0));
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0x5d752551, Offset: 0xd00
// Size: 0x4cc
function ongameplaying() {
    level endon(#"game_ended");
    playsoundatposition(#"hash_5a903084d1d3a71e", (0, 0, 0));
    level function_3c555e08();
    function_6ebe14e9();
    players = function_eb6cbb5();
    foreach (player in players) {
        if (player.var_4adf3a85 === 1) {
            player function_5da79dde();
            continue;
        }
        player function_e5e6a6db();
    }
    foreach (player in getplayers()) {
        for (i = 0; i < level.var_c251edf0.size; i++) {
            if (isdefined(level.var_c251edf0[i])) {
                clientnum = level.var_c251edf0[i] getentitynumber();
                player clientfield::set_player_uimodel("hudItems.screamSlasherClientNum" + i, clientnum);
            }
        }
    }
    level thread wait_for_timeout();
    if (!isdefined(level.var_826250a4) || level.var_826250a4.size == 0) {
        function_36f8016e(1);
    } else if (!isdefined(level.var_c251edf0) || level.var_c251edf0.size == 0) {
        function_36f8016e(2);
    }
    if (level.var_826250a4.size === 1) {
        function_92a8deeb(level.var_826250a4);
    }
    function_86cf3bac();
    level.var_67ff1bf8 = 1;
    foreach (player in getplayers()) {
        if (level.var_c251edf0.size > 1) {
            var_21cc35b1 = level.var_c251edf0[0] getentitynumber();
            var_26da87aa = level.var_c251edf0[1] getentitynumber();
            player luinotifyevent(#"hash_296febf8f9af74a6", 2, var_21cc35b1, var_26da87aa);
            continue;
        }
        var_21cc35b1 = level.var_c251edf0[0] getentitynumber();
        player luinotifyevent(#"hash_58031fb609d4342c", 1, var_21cc35b1);
    }
    level thread function_6e23a6f9();
    level thread function_d4adecf();
    if (level.var_2a029538) {
        level thread function_939e12fc();
    }
    function_1ccf32e3();
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0x29a85892, Offset: 0x11d8
// Size: 0x15c
function onconnect() {
    if (!isdefined(self.pers[#"hash_6942b8fcd2d53275"])) {
        self.pers[#"hash_6942b8fcd2d53275"] = 0;
    }
    if (!isdefined(self.pers[#"objtime"])) {
        self.pers[#"objtime"] = 0;
    }
    function_1ccf32e3();
    if (level.var_67ff1bf8 === 1) {
        for (i = 0; i < level.var_c251edf0.size; i++) {
            clientnum = level.var_c251edf0[i] getentitynumber();
            self clientfield::set_player_uimodel("hudItems.screamSlasherClientNum" + i, clientnum);
        }
        return;
    }
    self clientfield::set_player_uimodel("hudItems.screamSlasherClientNum0", 64);
    self clientfield::set_player_uimodel("hudItems.screamSlasherClientNum1", 64);
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0xb480e404, Offset: 0x1340
// Size: 0xc4
function ondisconnect() {
    if (level.gameended || level.var_67ff1bf8 !== 1) {
        return;
    }
    if (self.var_4adf3a85 === 1) {
        arrayremovevalue(level.var_c251edf0, self);
        self function_1b5a0106();
    } else if (self.var_4adf3a85 === 2) {
        arrayremovevalue(level.var_826250a4, self);
        self function_26934983();
    }
    function_1ccf32e3();
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0x43d498cc, Offset: 0x1410
// Size: 0x1bc
function onspawned() {
    self.var_295c2193 = 1;
    self disableexecutionattack();
    self disableexecutionvictim();
    if (level.var_67ff1bf8 === 1) {
        self function_e5e6a6db();
        function_86cf3bac();
        for (i = 0; i < level.var_c251edf0.size; i++) {
            clientnum = level.var_c251edf0[i] getentitynumber();
            self clientfield::set_player_uimodel("hudItems.screamSlasherClientNum" + i, clientnum);
        }
    } else {
        self clientfield::set_player_uimodel("hudItems.screamSlasherClientNum0", 64);
        self clientfield::set_player_uimodel("hudItems.screamSlasherClientNum1", 64);
    }
    var_59fb30b2 = self.pers[#"hash_629f4666af73d943"];
    if (!isdefined(var_59fb30b2)) {
        current_role = self getspecialistindex();
        self.pers[#"hash_629f4666af73d943"] = current_role;
    }
    self.var_d2ede313 = 1;
    function_1ccf32e3();
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0xe17b5f2b, Offset: 0x15d8
// Size: 0x84
function function_34d76906() {
    if (!isplayer(self) || self.var_4adf3a85 !== 1) {
        return;
    }
    self draft::select_character(self.pers[#"hash_629f4666af73d943"], 1);
    self clientfield::set_to_player("scream_slasher_postfx", 0);
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0x5f027ede, Offset: 0x1668
// Size: 0x34
function function_c11071a8() {
    if (game.roundsplayed > 0) {
        level thread globallogic_audio::set_music_global("roundend_finish");
    }
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0xbd25b4ea, Offset: 0x16a8
// Size: 0x14
function mayspawn() {
    return level.var_67ff1bf8 !== 1;
}

// Namespace scream/scream
// Params 1, eflags: 0x0
// Checksum 0x6279d3da, Offset: 0x16c8
// Size: 0x8e
function function_2415840b(activeteamcount) {
    if (!isdefined(level.var_d195d19b)) {
        level.var_d195d19b = gettime();
    }
    if (gettime() - level.var_d195d19b > int(20 * 1000)) {
        return true;
    }
    if (activeteamcount[#"any"] < getnumexpectedplayers()) {
        return false;
    }
    return true;
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0x8cf3980b, Offset: 0x1760
// Size: 0xf4
function onroundswitch() {
    foreach (var_24153654 in level.var_c251edf0) {
        if (!isplayer(var_24153654)) {
            continue;
        }
        var_24153654 draft::select_character(var_24153654.pers[#"hash_629f4666af73d943"], 1);
        var_24153654 clientfield::set_to_player("scream_slasher_postfx", 0);
    }
    gametype::on_round_switch();
}

// Namespace scream/scream
// Params 1, eflags: 0x0
// Checksum 0xb9186e28, Offset: 0x1860
// Size: 0x64
function onendround(var_c1e98979) {
    if (var_c1e98979 === 13 && level.var_d62d0655 === 1) {
        if (level.var_2a029538) {
            thread globallogic_audio::function_61e17de0("screamSlasherKilled", getplayers());
        }
    }
}

// Namespace scream/scream
// Params 1, eflags: 0x0
// Checksum 0x2d6b9764, Offset: 0x18d0
// Size: 0xac
function onendgame(*var_c1e98979) {
    placement = level.placement[#"all"];
    var_96974d12 = min(globallogic_score::function_d68cdc5d(), placement.size);
    for (i = 0; i < var_96974d12; i++) {
        player = placement[i];
        match::function_af2e264f(player);
    }
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0x35fd6490, Offset: 0x1988
// Size: 0x34
function ontimelimit() {
    if (level.var_17ccaafc === 1) {
        return;
    }
    function_36f8016e(2);
}

// Namespace scream/scream
// Params 9, eflags: 0x0
// Checksum 0x25778b90, Offset: 0x19c8
// Size: 0x114
function onplayerkilled(*einflictor, attacker, *idamage, *smeansofdeath, *weapon, *vdir, *shitloc, *psoffsettime, *deathanimduration) {
    if (isdefined(self.pers[#"lives"]) && self.pers[#"lives"] <= 0) {
        self.var_ab02ca61 = 1;
    }
    function_1ccf32e3();
    if (self.var_4adf3a85 === 1) {
        self function_1b5a0106(deathanimduration);
    } else if (self.var_4adf3a85 === 2) {
        self function_26934983(deathanimduration);
    }
    sound::play_on_players("mpl_scream_survivor_enemy_score");
}

// Namespace scream/scream
// Params 1, eflags: 0x4
// Checksum 0x49e3f04c, Offset: 0x1ae8
// Size: 0xa4
function private function_8f5272b2(player) {
    if (isdefined(player.team)) {
        globallogic_audio::play_2d_on_team(#"hash_1fd7191be5ac6aa9", player.team);
        otherteam = util::getotherteam(player.team);
        if (isdefined(otherteam) && otherteam != player.team) {
            globallogic_audio::play_2d_on_team(#"hash_23c0cacaa80dfb30", otherteam);
        }
    }
}

// Namespace scream/scream
// Params 1, eflags: 0x0
// Checksum 0x7d65c3b4, Offset: 0x1b98
// Size: 0x9c
function function_935f0220(var_756fda07) {
    applicant = var_756fda07.applicant;
    if (!isplayer(applicant) || !isplayer(self)) {
        return;
    }
    if (applicant.var_4adf3a85 === 2 && self.var_4adf3a85 === 1) {
        givescore(#"hash_57c8d5e82830f545", applicant);
    }
}

// Namespace scream/scream
// Params 1, eflags: 0x0
// Checksum 0x677431b9, Offset: 0x1c40
// Size: 0x154
function function_36f8016e(winning_team) {
    if (level.var_17ccaafc === 1) {
        return;
    }
    wait(1);
    level function_132f1087();
    var_c1e98979 = 1;
    if (winning_team === 1) {
        var_c1e98979 = 12;
    } else if (winning_team == 2) {
        survivors = function_eb6cbb5(level.var_826250a4);
        foreach (survivor in survivors) {
            givescore(#"hash_3584bd609b2dec5a", survivor);
        }
        var_c1e98979 = 13;
    }
    level.var_17ccaafc = 1;
    thread globallogic::end_round(var_c1e98979);
}

// Namespace scream/scream
// Params 1, eflags: 0x4
// Checksum 0x2ba3f076, Offset: 0x1da0
// Size: 0xac
function private function_1b5a0106(attacker) {
    var_85efa2fd = function_eb6cbb5(level.var_c251edf0);
    if (attacker.var_4adf3a85 === 2 && self util::isenemyplayer(attacker)) {
        givescore(#"hash_a226e6225f54a81", attacker);
    }
    if (var_85efa2fd.size <= 0) {
        level.var_d62d0655 = 1;
        thread function_36f8016e(2);
    }
}

// Namespace scream/scream
// Params 1, eflags: 0x4
// Checksum 0xf98cb37e, Offset: 0x1e58
// Size: 0x234
function private function_26934983(attacker) {
    survivors = function_eb6cbb5(level.var_826250a4);
    if (attacker.var_4adf3a85 === 1 && self util::isenemyplayer(attacker)) {
        attacker playlocalsound(#"hash_14b3ab2971ce1112");
        if (level.var_2a029538) {
            attacker thread function_dc32021(#"hash_6c31850d2db601fe");
        }
        givescore(#"hash_5e89244faccebdb", attacker);
        attacker.pers[#"objectiveekia"]++;
        attacker.objectiveekia = attacker.pers[#"objectiveekia"];
    }
    foreach (survivor in survivors) {
        givescore(#"hash_27cf9f74aac87c7b", survivor);
    }
    if (survivors.size <= 0) {
        thread function_36f8016e(1);
        return;
    }
    if (survivors.size == 1) {
        self playlocalsound(#"hash_45b81a2002cb071f");
        function_92a8deeb(survivors);
        return;
    }
    self playlocalsound(#"hash_45b81a2002cb071f");
}

// Namespace scream/scream
// Params 1, eflags: 0x4
// Checksum 0xec48a2e9, Offset: 0x2098
// Size: 0x364
function private function_92a8deeb(survivors) {
    level function_132f1087();
    level notify(#"hash_15b8b6edc4ed3032", {#var_7090bf53:0});
    foreach (player in getplayers()) {
        player.var_295c2193 = 0;
        player val::reset(#"hash_32ffc9e998f81c49", "disable_weapon_cycling");
        player enableexecutionattack();
        player enableexecutionvictim();
        if (player.var_4adf3a85 === 1) {
            var_642eb038 = player function_826ed2dd();
            if (isdefined(var_642eb038)) {
                player takeweapon(var_642eb038);
            }
            player val::set(#"hash_473344e2f663f35c", "disable_offhand_weapons", 1);
            if (isdefined(player.var_7cedc725)) {
                player.var_7cedc725 = [];
            }
            player notify(#"hash_5c998eb8e3fcffe5");
            player luinotifyevent(#"hash_56f1bab68a324c3b");
        }
    }
    if (!isdefined(survivors)) {
        return;
    }
    foreach (survivor in survivors) {
        weapon = getweapon(#"melee_machete_t9");
        survivor giveweapon(weapon);
        survivor givestartammo(weapon);
        survivor switchtoweapon(weapon, 1);
        survivor loadout::function_442539("primary", weapon);
        survivor luinotifyevent(#"hash_2fa61b57b75f2625");
    }
    function_38f40b8b();
    if (level.var_2a029538) {
        level thread function_d438ffed();
    }
}

// Namespace scream/scream
// Params 1, eflags: 0x0
// Checksum 0x31a66f5a, Offset: 0x2408
// Size: 0x13a
function function_eb6cbb5(players = getplayers()) {
    remainingplayers = [];
    foreach (player in players) {
        if (!isplayer(player)) {
            continue;
        }
        if (player.var_ab02ca61 !== 1) {
            if (!isdefined(remainingplayers)) {
                remainingplayers = [];
            } else if (!isarray(remainingplayers)) {
                remainingplayers = array(remainingplayers);
            }
            if (!isinarray(remainingplayers, player)) {
                remainingplayers[remainingplayers.size] = player;
            }
        }
    }
    return remainingplayers;
}

// Namespace scream/scream
// Params 0, eflags: 0x4
// Checksum 0x391ab1d8, Offset: 0x2550
// Size: 0x44
function private function_86cf3bac() {
    level.var_fdf974de = [];
    util::function_d7e70327(level.var_caa79fb2);
    util::function_d7e70327(level.var_ebc0113e);
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0x74b4c2f2, Offset: 0x25a0
// Size: 0x1c
function givecustomloadout() {
    self function_19fdeba1(2);
}

// Namespace scream/scream
// Params 0, eflags: 0x4
// Checksum 0xba4ac66f, Offset: 0x25c8
// Size: 0xba
function private function_5737e2d4() {
    var_44dd7e5d = #"hash_511bbcd521bfe80e";
    playerroletemplatecount = getplayerroletemplatecount(currentsessionmode());
    for (i = 0; i < playerroletemplatecount; i++) {
        var_3c6fd4f7 = function_b14806c6(i, currentsessionmode());
        if (var_3c6fd4f7 == var_44dd7e5d) {
            level.var_531e1c29 = i;
            return;
        }
    }
}

// Namespace scream/scream
// Params 0, eflags: 0x4
// Checksum 0x9d675662, Offset: 0x2690
// Size: 0x2cc
function private function_5da79dde() {
    if (!isplayer(self)) {
        return;
    }
    self.var_4adf3a85 = 1;
    self function_19fdeba1(0);
    self.var_295c2193 = 1;
    self val::set(#"hash_2c87578442f31bee", "allow_sprint", 0);
    self allowslide(0);
    self clientfield::set("scream_role_assignment", 1);
    self clientfield::set("scream_underscores", 1);
    if (level.screamslashermovespeedoverride > 0) {
        self setmovespeedscale(level.screamslashermovespeedoverride / 100);
    } else {
        self setmovespeedscale(1.55);
    }
    self enableexecutionattack();
    self disableexecutionvictim();
    self thread function_292de865();
    if (!isdefined(level.var_c251edf0)) {
        level.var_c251edf0 = [];
    } else if (!isarray(level.var_c251edf0)) {
        level.var_c251edf0 = array(level.var_c251edf0);
    }
    if (!isinarray(level.var_c251edf0, self)) {
        level.var_c251edf0[level.var_c251edf0.size] = self;
    }
    if (!isdefined(level.var_caa79fb2)) {
        level.var_caa79fb2 = [];
    } else if (!isarray(level.var_caa79fb2)) {
        level.var_caa79fb2 = array(level.var_caa79fb2);
    }
    if (!isinarray(level.var_caa79fb2, self.team)) {
        level.var_caa79fb2[level.var_caa79fb2.size] = self.team;
    }
    function_909b6ab("platoon_1", self.team);
}

// Namespace scream/scream
// Params 0, eflags: 0x4
// Checksum 0x8d93d479, Offset: 0x2968
// Size: 0x24c
function private function_e5e6a6db() {
    if (!isplayer(self)) {
        return;
    }
    self.var_4adf3a85 = 2;
    self function_19fdeba1(1);
    self.var_295c2193 = 0;
    self clientfield::set("scream_role_assignment", 2);
    self clientfield::set("scream_underscores", 1);
    self thread function_2c0f551b();
    self thread function_475ad454();
    self disableexecutionattack();
    self enableexecutionvictim();
    if (!isdefined(level.var_826250a4)) {
        level.var_826250a4 = [];
    } else if (!isarray(level.var_826250a4)) {
        level.var_826250a4 = array(level.var_826250a4);
    }
    if (!isinarray(level.var_826250a4, self)) {
        level.var_826250a4[level.var_826250a4.size] = self;
    }
    if (!isdefined(level.var_ebc0113e)) {
        level.var_ebc0113e = [];
    } else if (!isarray(level.var_ebc0113e)) {
        level.var_ebc0113e = array(level.var_ebc0113e);
    }
    if (!isinarray(level.var_ebc0113e, self.team)) {
        level.var_ebc0113e[level.var_ebc0113e.size] = self.team;
    }
    function_909b6ab("platoon_2", self.team);
}

// Namespace scream/scream
// Params 0, eflags: 0x4
// Checksum 0xe7749d49, Offset: 0x2bc0
// Size: 0x17c
function private function_292de865() {
    level endon(#"game_ended");
    self endon(#"death");
    self clientfield::set_to_player("scream_slasher_postfx", 1);
    fxorigin = isdefined(self gettagorigin("j_spineupper")) ? self gettagorigin("j_spineupper") : self.origin;
    playsoundatposition(#"hash_1ff264c8a40930fd", fxorigin);
    if (level.var_2a029538) {
        self thread function_dc32021(#"hash_2de35adf3ecb4c48", 1);
    }
    self val::set(#"hash_49a0e5e1f4613b81", "freezecontrols_allowlook", 1);
    wait(1.5);
    if (!isplayer(self)) {
        return;
    }
    self val::reset(#"hash_49a0e5e1f4613b81", "freezecontrols_allowlook");
}

// Namespace scream/scream
// Params 0, eflags: 0x4
// Checksum 0xef356068, Offset: 0x2d48
// Size: 0x460
function private function_6ebe14e9() {
    level endon(#"game_ended");
    var_58365861 = 0;
    for (attempts = 0; var_58365861 < level.var_673aa6d8 && attempts < 20; attempts++) {
        var_85efa2fd = [];
        aliveplayers = function_a1ef346b();
        validplayers = [];
        foreach (player in aliveplayers) {
            if (player.var_d2ede313 === 1 && player.var_4adf3a85 !== 1) {
                validplayers[validplayers.size] = player;
            }
        }
        if (validplayers.size <= 0) {
            attempts++;
            waitframe(1);
            continue;
        }
        var_1bba912a = 2147483647;
        foreach (player in validplayers) {
            if (player.pers[#"hash_6942b8fcd2d53275"] < var_1bba912a) {
                var_1bba912a = player.pers[#"hash_6942b8fcd2d53275"];
            }
        }
        var_7066482d = [];
        foreach (player in validplayers) {
            if (player.pers[#"hash_6942b8fcd2d53275"] === var_1bba912a) {
                var_7066482d[var_7066482d.size] = player;
            }
        }
        var_7066482d = array::randomize(var_7066482d);
        for (i = var_58365861; i < level.var_673aa6d8; i++) {
            var_24153654 = var_7066482d[i];
            if (!isdefined(var_24153654)) {
                break;
            }
            if (!isdefined(var_85efa2fd)) {
                var_85efa2fd = [];
            } else if (!isarray(var_85efa2fd)) {
                var_85efa2fd = array(var_85efa2fd);
            }
            if (!isinarray(var_85efa2fd, var_24153654)) {
                var_85efa2fd[var_85efa2fd.size] = var_24153654;
            }
            if (level.var_2a029538) {
                var_24153654 draft::select_character(level.var_531e1c29, 1);
            }
        }
        waitframe(1);
        foreach (var_24153654 in var_85efa2fd) {
            if (isdefined(var_24153654)) {
                var_24153654.pers[#"hash_6942b8fcd2d53275"]++;
                var_24153654.var_4adf3a85 = 1;
                var_58365861++;
                continue;
            }
            arrayremovevalue(var_85efa2fd, var_24153654);
        }
    }
}

// Namespace scream/scream
// Params 1, eflags: 0x4
// Checksum 0x8d308033, Offset: 0x31b0
// Size: 0x1dc
function private function_19fdeba1(loadoutindex = 0) {
    if (!isplayer(self)) {
        return;
    }
    self reset_player();
    bundle = level.var_d2cc3b7;
    assert(isdefined(bundle));
    loadout = bundle.defaultloadouts[loadoutindex];
    primary = loadout.primary;
    primaryattachments = loadout.primaryattachments;
    secondary = loadout.secondary;
    secondaryattachments = loadout.secondaryattachments;
    primarygrenade = loadout.primarygrenade;
    var_db7ff8ba = loadout.var_1c89585f === 1;
    secondarygrenade = loadout.secondarygrenade;
    var_7bf99497 = loadout.var_285151c1 === 1;
    specialgrenade = loadout.specialgrenade;
    talents = loadout.talents;
    self function_3d9ed85a(talents);
    self function_1a7fd1b7(primary, primaryattachments, secondary, secondaryattachments, primarygrenade, var_db7ff8ba, secondarygrenade, var_7bf99497, specialgrenade);
    self function_6573eeeb();
    self loadout::function_cdb86a18();
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0x2a2d4a16, Offset: 0x3398
// Size: 0x3e
function reset_player() {
    self takeallweapons(level.var_60fa96d6);
    self.specialty = [];
    self notify(#"give_map");
}

// Namespace scream/scream
// Params 1, eflags: 0x0
// Checksum 0x91467dd0, Offset: 0x33e0
// Size: 0x24c
function function_3d9ed85a(talents) {
    self function_e6f9e3cd();
    self clearperks();
    if (level.perksenabled === 1) {
        if (isdefined(talents)) {
            foreach (talent in talents) {
                self function_b5feff95(talent.talent + level.game_mode_suffix);
            }
        }
    }
    self function_b5feff95(#"hash_25c2dcf9ec4c42e2");
    perks = self getloadoutperks(0);
    foreach (perk in perks) {
        self setperk(perk);
    }
    self setperk(#"specialty_sprint");
    self setperk(#"specialty_slide");
    self setperk(#"specialty_sprintreload");
    self setperk(#"specialty_sprintheal");
    self thread perks::monitorgpsjammer();
}

// Namespace scream/scream
// Params 9, eflags: 0x0
// Checksum 0xa30f25b6, Offset: 0x3638
// Size: 0x67c
function function_1a7fd1b7(primary, primaryattachments, secondary, secondaryattachments, primarygrenade, var_db7ff8ba, secondarygrenade, var_7bf99497, specialgrenade) {
    if (isdefined(primary)) {
        attachments = undefined;
        if (isdefined(primaryattachments)) {
            attachments = [];
            foreach (attachment in primaryattachments) {
                attachments[attachments.size] = attachment.attachment;
            }
        }
        primaryweapon = function_af7d16ac(primary, attachments);
        self giveweapon(primaryweapon);
        self givestartammo(primaryweapon);
        self switchtoweapon(primaryweapon, 1);
        self loadout::function_442539("primary", primaryweapon);
    } else {
        nullprimary = level.var_60fa96d6;
        self giveweapon(nullprimary);
        self setweaponammoclip(nullprimary, 0);
        self loadout::function_442539("primary", nullprimary);
    }
    if (isdefined(secondary)) {
        attachments = undefined;
        if (isdefined(secondaryattachments)) {
            attachments = [];
            foreach (attachment in secondaryattachments) {
                attachments[attachments.size] = attachment.attachment;
            }
        }
        secondaryweapon = function_af7d16ac(secondary, attachments);
        self giveweapon(secondaryweapon);
        self givestartammo(secondaryweapon);
        self loadout::function_442539("secondary", secondaryweapon);
        if (!isdefined(primary)) {
            self switchtoweapon(secondaryweapon, 1);
        }
    } else {
        nullsecondary = level.var_60fa96d6;
        self giveweapon(nullsecondary);
        self setweaponammoclip(nullsecondary, 0);
        self loadout::function_442539("secondary", nullsecondary);
    }
    var_8daf373a = self.var_4adf3a85 !== 1 || level.screamslasherlethalequipment;
    if (isdefined(primarygrenade) && var_8daf373a) {
        var_8e797a67 = function_af7d16ac(primarygrenade);
        self giveweapon(var_8e797a67);
        var_4e6e2c39 = 1;
        if (var_db7ff8ba) {
            var_4e6e2c39++;
        }
        self setweaponammoclip(var_8e797a67, var_4e6e2c39);
        self loadout::function_442539("primarygrenade", var_8e797a67);
    }
    var_e9060eaa = self.var_4adf3a85 !== 2 || level.screamsurvivortacticalequipment > 0;
    if (isdefined(secondarygrenade) && var_e9060eaa) {
        var_a66b455e = function_af7d16ac(secondarygrenade);
        self giveweapon(var_a66b455e);
        var_7173f066 = 1;
        if (self.var_4adf3a85 === 2) {
            var_7173f066 = level.screamsurvivortacticalequipment;
        } else if (var_7bf99497) {
            var_7173f066++;
        }
        self setweaponammoclip(var_a66b455e, var_7173f066);
        self loadout::function_442539("secondarygrenade", var_a66b455e);
    } else {
        var_b1336578 = level.var_6388e216;
        self giveweapon(var_b1336578);
        self loadout::function_442539("secondarygrenade", var_b1336578);
    }
    if (isdefined(specialgrenade)) {
        var_8b0bfce9 = function_af7d16ac(specialgrenade);
        self thread function_fa62642c(var_8b0bfce9, 1);
    } else {
        var_ad731691 = level.var_6388e216;
        self giveweapon(var_ad731691);
        self loadout::function_442539("specialgrenade", var_ad731691);
    }
    self val::set(#"hash_32ffc9e998f81c49", "disable_weapon_pickup", 1);
    self val::set(#"hash_32ffc9e998f81c49", "disable_weapon_cycling", 1);
}

// Namespace scream/scream
// Params 2, eflags: 0x4
// Checksum 0x33c83f6e, Offset: 0x3cc0
// Size: 0x5a
function private function_af7d16ac(weaponname, attachments) {
    if (weaponname === #"hash_28fdaa999c8aa3af") {
        weaponname = #"hash_75224185e7789694";
    }
    weapon = getweapon(weaponname, attachments);
    return weapon;
}

// Namespace scream/scream
// Params 2, eflags: 0x0
// Checksum 0x66150ab3, Offset: 0x3d28
// Size: 0x104
function function_fa62642c(var_8b0bfce9, var_5c25da5) {
    self giveweapon(var_8b0bfce9);
    self loadout::function_442539("specialgrenade", var_8b0bfce9);
    waitframe(1);
    if (!isalive(self)) {
        return;
    }
    if (game.state == #"playing" && isalive(self) && self hasweapon(var_8b0bfce9)) {
        self.pers[#"hash_13b806f669a6bb82"][#"ammo"] = var_5c25da5;
        self setweaponammoclip(var_8b0bfce9, var_5c25da5);
    }
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0xb23d2d82, Offset: 0x3e38
// Size: 0xfc
function function_6573eeeb() {
    if (!getdvar(#"hash_61dac11dea7f8b8d", 0)) {
        return;
    }
    if (!getdvar(#"hash_db579ad2a3dd6b", 0)) {
        return;
    }
    if (!isplayer(self)) {
        return;
    }
    execution = level.var_2a029538 && self.var_4adf3a85 === 1 ? #"execution_198" : self function_7683b07();
    if (execution != "") {
        self giveexecution(execution);
        return;
    }
    self clearexecution();
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0xca902925, Offset: 0x3f40
// Size: 0x430
function function_6e23a6f9() {
    self notify("319428cd5a424c67");
    self endon("319428cd5a424c67");
    level endon(#"game_ended");
    var_76b419c6 = int(level.screamplayerscreamtimer * 1000);
    if (var_76b419c6 <= 0) {
        return;
    }
    var_66a6e71 = 500;
    var_99b741b6 = 5000;
    var_b08d72f2 = (0, 0, 0);
    minimapcorners = getentarray("minimap_corner", "targetname");
    if (minimapcorners.size > 0) {
        var_b08d72f2 = minimapcorners[0].origin;
    }
    setbombtimer("A", gettime() + var_76b419c6);
    setmatchflag("bomb_timer_a", 1);
    var_8478b202 = gettime();
    var_5d536761 = 0;
    while (true) {
        if (!var_5d536761 && level.timelimit > 0 && globallogic_utils::gettimeremaining() < int(60 * 1000)) {
            var_76b419c6 = int(min(var_76b419c6, int(10 * 1000)));
            var_5d536761 = 1;
        }
        var_b7f88f11 = gettime() > var_8478b202 + var_76b419c6 - var_66a6e71;
        if (var_b7f88f11) {
            setmatchflag("bomb_timer_a", 0);
            var_efc6859 = arraysortclosest(level.var_826250a4, var_b08d72f2);
            foreach (survivor in var_efc6859) {
                if (!isdefined(survivor) || !isalive(survivor)) {
                    continue;
                }
                var_73326434 = #"hash_17b3e3c40e7314c5";
                if (survivor getplayergendertype() === "female") {
                    var_73326434 = #"hash_78b7fe4e5d92ba48";
                }
                survivor playsound(var_73326434);
                hostmigration::waitlongdurationwithhostmigrationpause(1.5);
            }
            var_8478b202 = gettime();
            var_d25df60e = var_76b419c6 + function_eb6cbb5(level.var_826250a4).size * 2000;
            if (level.timelimit > 0 && var_d25df60e >= globallogic_utils::gettimeremaining() - var_99b741b6) {
                return;
            }
            setbombtimer("A", gettime() + var_76b419c6);
            setmatchflag("bomb_timer_a", 1);
        }
        hostmigration::waitlongdurationwithhostmigrationpause(0.5);
    }
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0x85b743ae, Offset: 0x4378
// Size: 0x2e8
function function_2c0f551b() {
    self notify("e19331e0532183e");
    self endon("e19331e0532183e");
    level endon(#"game_ended");
    if (level.screamheartbeatradius <= 0) {
        return;
    }
    wait(3.6);
    var_56463c00 = 3;
    lastheartbeattime = 0;
    var_6c1334e1 = var_56463c00 / 4;
    var_3bd70d7 = 3.6 - var_6c1334e1 * 2;
    var_37805d8 = 3.6 - var_6c1334e1 * 3;
    while (isplayer(self) && self.var_ab02ca61 !== 1) {
        var_85efa2fd = function_eb6cbb5(level.var_c251edf0);
        if (var_85efa2fd.size == 0) {
            wait(2);
            continue;
        }
        var_d89b54b2 = var_85efa2fd.size == 1 ? var_85efa2fd[0] : arraygetclosest(self.origin, var_85efa2fd);
        if (isdefined(var_d89b54b2.origin)) {
            dist = distance2d(self.origin, var_d89b54b2.origin);
            if (dist < level.screamheartbeatradius) {
                if (dist < 256) {
                    var_2586180f = 0.6;
                } else {
                    fraction = (dist - 256) / (level.screamheartbeatradius - 256);
                    var_2586180f = 0.6 + fraction * var_56463c00;
                }
                var_89dbab63 = #"hash_5d9332bbba421aef";
                if (var_2586180f >= var_3bd70d7) {
                    var_89dbab63 = #"hash_58affb5b9a7a5538";
                } else if (var_2586180f >= var_37805d8) {
                    var_89dbab63 = #"hash_71485ac352b330d9";
                }
                currenttime = gettime();
                if (currenttime - lastheartbeattime > int(var_2586180f * 1000)) {
                    self playsoundtoplayer(var_89dbab63, self);
                    self function_bc82f900(#"hash_64d90f3b864ff23a");
                    lastheartbeattime = currenttime;
                }
            }
        }
        wait(0.1);
    }
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0x76d405e0, Offset: 0x4668
// Size: 0x1c0
function function_38f40b8b() {
    var_2a2cc6df = level.var_aa7fa50d;
    if (isdefined(var_2a2cc6df)) {
        var_85efa2fd = function_eb6cbb5(level.var_c251edf0);
        foreach (var_24153654 in var_85efa2fd) {
            if (!isdefined(var_24153654.team)) {
                continue;
            }
            setteamspyplane(var_24153654.team, var_2a2cc6df);
        }
    }
    var_7e548ecb = level.var_b85ed4e7;
    if (isdefined(var_7e548ecb)) {
        survivors = function_eb6cbb5(level.var_826250a4);
        foreach (survivor in survivors) {
            if (!isdefined(survivor.team)) {
                continue;
            }
            setteamspyplane(survivor.team, var_7e548ecb);
        }
    }
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0xbd0d4bf7, Offset: 0x4830
// Size: 0x160
function function_1ccf32e3() {
    players = getplayers();
    var_e63ca453 = level.var_67ff1bf8 === 1 ? level.var_826250a4 : players;
    count = function_eb6cbb5(var_e63ca453).size;
    var_85efa2fd = function_eb6cbb5(level.var_c251edf0).size;
    foreach (player in players) {
        if (!isplayer(player)) {
            continue;
        }
        player clientfield::set_player_uimodel("hudItems.alivePlayerCount", count);
        player clientfield::set_player_uimodel("hudItems.aliveTeammateCount", var_85efa2fd);
    }
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0x18d04772, Offset: 0x4998
// Size: 0x238
function function_3c555e08() {
    level endon(#"game_ended");
    self notify("cf54035051cf2e");
    self endon("cf54035051cf2e");
    time = level.var_1d07375a;
    foreach (player in getplayers()) {
        level.scream_deathmatch_timer scream_deathmatch_timer::open(player);
        level.scream_deathmatch_timer scream_deathmatch_timer::function_302c4b81(player, time);
    }
    while (time > 0) {
        foreach (player in getplayers()) {
            level.scream_deathmatch_timer scream_deathmatch_timer::function_302c4b81(player, time);
        }
        wait(1);
        time--;
    }
    foreach (player in getplayers()) {
        level.scream_deathmatch_timer scream_deathmatch_timer::close(player);
    }
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0xff4857b7, Offset: 0x4bd8
// Size: 0x130
function function_d4adecf() {
    level endon(#"game_ended");
    wait(1);
    while (true) {
        survivors = function_eb6cbb5(level.var_826250a4);
        foreach (survivor in survivors) {
            survivor.pers[#"objtime"]++;
            survivor.objtime = survivor.pers[#"objtime"];
            survivor stats::function_bb7eedf0(#"objective_time", 1);
        }
        hostmigration::waitlongdurationwithhostmigrationpause(1);
    }
}

// Namespace scream/scream
// Params 0, eflags: 0x4
// Checksum 0xbac3ed8b, Offset: 0x4d10
// Size: 0x70
function private function_fafe6b47() {
    var_673aa6d8 = isdefined(getgametypesetting(#"screamslashercount")) ? getgametypesetting(#"screamslashercount") : 0;
    if (var_673aa6d8 > 0) {
        return var_673aa6d8;
    }
    return 2;
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0x7b7b63c0, Offset: 0x4d88
// Size: 0x5c
function wait_for_timeout() {
    level endon(#"game_ended", #"hash_6c8454cd6428ce61");
    level waittill(#"hash_15b8b6edc4ed3032");
    level thread function_132f1087();
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0x8308fa8b, Offset: 0x4df0
// Size: 0xb0
function function_132f1087() {
    level notify(#"hash_6c8454cd6428ce61");
    foreach (player in getplayers()) {
        player clientfield::set("scream_underscores", 0);
    }
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0xbcc82afa, Offset: 0x4ea8
// Size: 0x33a
function function_475ad454() {
    self notify("5dcc63722c88ce88");
    self endon("5dcc63722c88ce88");
    level endon(#"game_ended");
    self endon(#"death");
    if (self.var_4adf3a85 !== 2) {
        return;
    }
    while (true) {
        cansee = 0;
        var_85efa2fd = function_eb6cbb5(level.var_c251edf0);
        if (var_85efa2fd.size < 1) {
            waitframe(1);
            continue;
        }
        foreach (var_24153654 in var_85efa2fd) {
            if (!isdefined(var_24153654) || !isdefined(self)) {
                waitframe(1);
                continue;
            }
            if (!isdefined(self.var_56122211)) {
                distsq = distance2dsquared(self.origin, var_24153654.origin);
                if (distsq > 250000) {
                    waitframe(1);
                    continue;
                }
            }
            if (!isdefined(var_24153654.angles) || !isdefined(var_24153654.origin)) {
                waitframe(1);
                continue;
            }
            var_2f9800c8 = anglestoforward(var_24153654.angles);
            var_eb5ac886 = self.origin - var_24153654.origin;
            infront = vectordot(var_2f9800c8, var_eb5ac886) > 0;
            if (infront) {
                var_23ce734d = var_24153654 util::get_eye();
                selfeye = self util::get_eye();
                if (sighttracepassed(var_23ce734d, selfeye, 0, self)) {
                    cansee = 1;
                    self.var_56122211 = gettime();
                    waitframe(1);
                    break;
                }
            }
            waitframe(1);
        }
        if (!cansee && isdefined(self.var_56122211)) {
            var_b172b743 = gettime() - self.var_56122211;
            if (var_b172b743 > int(5 * 1000)) {
                givescore(#"hash_7a581317de16befa", self);
                self.var_56122211 = undefined;
            }
        }
    }
}

// Namespace scream/scream
// Params 2, eflags: 0x0
// Checksum 0x9de84a66, Offset: 0x51f0
// Size: 0x9a
function function_beb69c9(dialogkey, var_89cfcebd) {
    if (!level.var_2a029538) {
        return var_89cfcebd;
    }
    switch (dialogkey) {
    case #"startscreamdeathmatch":
    case #"screamorders":
    case #"hash_64a6bdbd7637776b":
        return #"hash_6ee97311fb9fac80";
    default:
        return var_89cfcebd;
    }
}

// Namespace scream/scream
// Params 2, eflags: 0x0
// Checksum 0x26bb6080, Offset: 0x5298
// Size: 0xce
function function_dc32021(alias, delay) {
    level endon(#"game_ended");
    self endon(#"disconnect");
    if (isdefined(delay)) {
        wait(delay);
    }
    if (!isplayer(self) || !isalive(self)) {
        return;
    }
    if (self.var_3f2a7500 === 1) {
        return;
    }
    self.var_3f2a7500 = 1;
    self playsound(alias);
    wait(6);
    self.var_3f2a7500 = 0;
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0xa15e8452, Offset: 0x5370
// Size: 0xd0
function function_d438ffed() {
    level endon(#"game_ended");
    wait(6.1);
    var_85efa2fd = function_eb6cbb5(level.var_c251edf0);
    foreach (var_24153654 in var_85efa2fd) {
        var_24153654 thread function_dc32021(#"hash_145d1a8562618894");
    }
}

// Namespace scream/scream
// Params 2, eflags: 0x0
// Checksum 0xb2cc585c, Offset: 0x5448
// Size: 0x8c
function function_591e9ac4(*oldval, newval) {
    if (!isalive(self) || self.var_4adf3a85 !== 1 || !level.var_2a029538) {
        return;
    }
    self.var_c5d2ef3b = newval;
    if (!newval) {
        self thread function_dc32021(#"hash_24630bde029475c4", 1);
    }
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0x6afd017f, Offset: 0x54e0
// Size: 0x1ec
function function_939e12fc() {
    level endon(#"game_ended");
    while (true) {
        starttime = gettime();
        var_85efa2fd = function_eb6cbb5(level.var_c251edf0);
        foreach (var_24153654 in var_85efa2fd) {
            if (!isplayer(var_24153654) || !isalive(var_24153654)) {
                continue;
            }
            if (self.var_c5d2ef3b === 1) {
                var_24153654 thread function_dc32021(#"hash_60a8feffa60045e3");
            } else {
                var_24153654 thread function_dc32021(#"hash_5e2bfc7e4a21ffc4");
            }
            wait(5);
        }
        waittime = int(randomintrange(25, 40) * 1000);
        var_427d13b9 = starttime + waittime - gettime();
        if (var_427d13b9 > 0) {
            wait(float(var_427d13b9) / 1000);
            continue;
        }
        waitframe(1);
    }
}

// Namespace scream/scream
// Params 2, eflags: 0x4
// Checksum 0x3a5d8c6, Offset: 0x56d8
// Size: 0x6c
function private givescore(event, player) {
    if (!isplayer(player)) {
        return;
    }
    score = scoreevents::processscoreevent(event, player);
    player globallogic_score::givepointstowin(score);
}

