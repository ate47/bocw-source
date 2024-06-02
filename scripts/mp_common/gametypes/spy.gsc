// Atian COD Tools GSC CW decompiler test
#using script_3d703ef87a841fe4;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\mp_common\gametypes\match.gsc;
#using scripts\mp_common\gametypes\round.gsc;
#using script_647623c4304d91a5;
#using script_100ef73a5b9a46f;
#using script_6b4984dd2d3d3eea;
#using script_4e6bcfa8856b2a96;
#using script_1267bfe8aee25f0d;
#using scripts\mp_common\gametypes\globallogic_spawn.gsc;
#using scripts\mp_common\gametypes\globallogic_defaults.gsc;
#using scripts\mp_common\gameadvertisement.gsc;
#using scripts\mp_common\player\player_killed.gsc;
#using scripts\mp_common\player\player_loadout.gsc;
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\mp_common\load.gsc;
#using scripts\mp_common\callbacks.gsc;
#using script_1cc417743d7c262d;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using script_54f593f5beb1464a;
#using script_2a30ac7aa0ee8988;
#using script_7a8059ca02b7b09e;
#using scripts\core_common\values_shared.gsc;
#using script_67ce8e728d8f37ba;
#using script_1471eea5d2e60f83;
#using scripts\core_common\potm_shared.gsc;
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\player\player_role.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\gamestate_util.gsc;
#using scripts\core_common\dogtags.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using script_1caf36ff04a85ff6;
#using script_471b31bd963b388e;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\item_drop.gsc;
#using script_340a2e805e35f7a2;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\hud_message_shared.gsc;
#using script_335d0650ed05d36d;
#using script_44b0b8420eabacad;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\armor.gsc;
#using script_6b33c6ebd0dfd1fd;

#namespace spy;

// Namespace spy/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x951452b7, Offset: 0xb18
// Size: 0x11fc
function event_handler[gametype_init] main(*eventstruct) {
    globallogic::init();
    if (!isdefined(game.var_dc542c3a)) {
        game.var_dc542c3a = [];
    }
    level.var_febab1ea = #"axis_base";
    level.onstartgametype = &onstartgametype;
    level.ontimelimit = &ontimelimit;
    level.onendround = &onendround;
    level.onendgame = &onendgame;
    level.givecustomloadout = &givecustomloadout;
    level.mayspawn = &mayspawn;
    level.gettimelimit = &gettimelimit;
    level.ondeadevent = &globallogic::blank;
    level.ononeleftevent = &globallogic::blank;
    level.endgameonscorelimit = 0;
    level.trackweaponstats = 0;
    level.var_f002a5c1 = int(isdefined(getgametypesetting(#"investigatormaxhealth")) ? getgametypesetting(#"investigatormaxhealth") : 301);
    level.var_3cb33d52 = int(isdefined(getgametypesetting(#"operativemaxhealth")) ? getgametypesetting(#"operativemaxhealth") : 175);
    level.var_d07164a6 = int(isdefined(getgametypesetting(#"doubleagentmaxhealth")) ? getgametypesetting(#"doubleagentmaxhealth") : 175);
    level.var_f16bfc14 = isdefined(getgametypesetting(#"spymodestartingweaponoption")) ? getgametypesetting(#"spymodestartingweaponoption") : 1;
    level.var_a1f33484 = isdefined(getgametypesetting(#"spymodelootweaponsoption")) ? getgametypesetting(#"spymodelootweaponsoption") : 0;
    level.var_d815e50d = isdefined(getgametypesetting(#"spymodewinrules")) ? getgametypesetting(#"spymodewinrules") : 0;
    level.var_737c0ab8 = isdefined(getgametypesetting("spyModeInvestigatorPassiveSkill")) ? getgametypesetting("spyModeInvestigatorPassiveSkill") : 1;
    level.var_17f131d7 = isdefined(getgametypesetting("spyModeDoubleAgentPassiveSkill")) ? getgametypesetting("spyModeDoubleAgentPassiveSkill") : 1;
    level.var_21840d7d = isdefined(getgametypesetting(#"spymodeteamkillrespawn")) ? getgametypesetting(#"spymodeteamkillrespawn") : 0;
    level.var_2d34348d = isdefined(getgametypesetting(#"spymodeinvestigatorarmoramount")) ? getgametypesetting(#"spymodeinvestigatorarmoramount") : 150;
    level.var_cd1f9bfe = isdefined(getgametypesetting(#"spymodeoperativearmoramount")) ? getgametypesetting(#"spymodeoperativearmoramount") : 150;
    level.var_41c76eb2 = isdefined(getgametypesetting(#"spymodedoubleagentarmoramount")) ? getgametypesetting(#"spymodedoubleagentarmoramount") : 150;
    level.var_e4f93869 = isdefined(getgametypesetting("spyModeInvestigatorScorestreaks")) ? getgametypesetting("spyModeInvestigatorScorestreaks") : 1;
    level.var_d9cbaa6b = isdefined(getgametypesetting("spyModeDoubleAgentScorestreaks")) ? getgametypesetting("spyModeDoubleAgentScorestreaks") : 1;
    level.var_4ba11f84 = 1;
    level.var_ccf9686a = 1;
    level.var_46b16649 = 1;
    level.var_239d1e6a = 1;
    level.var_70cd9e95 = 1;
    level.var_60507c71 = 1;
    level.var_ce802423 = 1;
    level.var_4614c421 = &function_cb429de3;
    level.var_fe1dd361 = &function_fe1dd361;
    level.var_b059ce9e = &function_b059ce9e;
    level.var_75bb902f = &function_75bb902f;
    setdvar(#"hash_3cb5a4a4ff50a917", 10);
    setdvar(#"hash_6bca15a5b1ca32cf", 1);
    level.var_f6462266 = 0;
    level.var_24bb6bd8 = 0;
    level.var_f8aa7dce = 0;
    level.onspawnspectator = &function_7f61c43e;
    level.var_7ad7cae9 = &function_7ad7cae9;
    level.var_e4688422 = [];
    level.var_799cca7d = &function_c83b8450;
    level.var_f82f37a9 = &function_6279301a;
    level.var_8811f9ea = &function_7a7907d4;
    setdvar(#"cg_enemynamefadeout", 1250);
    setdvar(#"cg_friendlynamefadeout", 1250);
    setdvar(#"cg_friendlynamefadein", 48);
    setdvar(#"cg_enemynamefadein", 48);
    if (!isdefined(getdvar(#"hash_7616b5961f10df6d"))) {
        setdvar(#"hash_7616b5961f10df6d", 1);
    }
    if (!isdefined(getdvar(#"hash_388a565a02f4a632"))) {
        setdvar(#"hash_388a565a02f4a632", 1);
    }
    setdvar(#"hash_79c9c84661796289", 1);
    if (!isdefined(level.var_44018194)) {
        level.var_44018194 = hud_spy::register();
        level.var_af25ea23 = 1;
    }
    if (level.var_a1f33484 === 1) {
        var_f8a4c541 = &item_world_fixup::function_6991057;
        namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_1644ab2affea9119", #"hash_72184d98be62d1da");
        namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_2d2fc99bcc8605af", #"hash_72184d98be62d1da");
        namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_5718bc21dd75177c", #"hash_72184d98be62d1da");
        namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_609ca802282ea18e", #"hash_72184d98be62d1da");
        namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_352dba5e0d178c05", #"hash_72184d98be62d1da");
        namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_54cbe2affe53faec", #"hash_72184d98be62d1da");
    }
    spawning::addsupportedspawnpointtype("spy");
    spawning::function_32b97d1b(&function_d0ff82d4);
    callback::function_c11071a8(&function_c11071a8);
    callback::on_prematch_end(&on_prematch_end);
    callback::on_game_playing(&on_game_playing);
    callback::on_connect(&on_player_connect);
    callback::on_spawned(&on_player_spawned);
    callback::on_player_damage(&on_player_damaged);
    callback::on_player_killed(&on_player_killed);
    callback::on_start_gametype(&on_start_gametype);
    callback::add_callback(#"hash_20dca48305feccf5", &function_e8ea847);
    level.onplayerdisconnect = &onplayerdisconnect;
    level.var_a28b6edf = [];
    level thread namespace_e51f0bc1::init();
    level thread function_3706f731();
    level thread function_9c8c2e04();
    namespace_4d9a1379::function_30e98aee();
    function_9e23f471();
    function_fa414efa();
    clientfield::register_clientuimodel("hudItems.radiationVestHealth", 1, 5, "float");
    clientfield::register_clientuimodel("hudItems.armorType", 1, 2, "int", 0);
    clientfield::function_5b7d846d("hudItems.spyMatchData.playerCount", 1, 5, "int");
    clientfield::function_5b7d846d("hudItems.spyMatchData.deadPlayerCount", 1, 5, "int");
    clientfield::function_5b7d846d("hudItems.spyMatchData.playerAssignedIDCounter", 1, 5, "counter");
    for (i = 1; i <= 25; i++) {
        clientfield::function_5b7d846d("hudItems.spyMatchData." + i + ".spyRole", 1, 2, "int");
        clientfield::function_5b7d846d("hudItems.spyMatchData." + i + ".isConnected", 1, 1, "int");
        clientfield::function_5b7d846d("hudItems.spyMatchData." + i + ".clientNum", 1, 5, "int");
        clientfield::function_5b7d846d("hudItems.spyMatchData." + i + ".talkInPrivateChannel", 1, 1, "int");
        clientfield::function_5b7d846d("hudItems.spyMatchData." + i + ".identityIsKnown", 1, 1, "int");
        clientfield::function_5b7d846d("hudItems.spyMatchData." + i + ".isAlive", 1, 1, "int");
        clientfield::function_5b7d846d("hudItems.spyMatchData." + i + ".isWanted", 1, 1, "int");
        clientfield::function_5b7d846d("hudItems.spyMatchData." + i + ".detonations", 1, 4, "int");
    }
    clientfield::register("toplayer", "spyRole", 28000, 2, "int");
    clientfield::register("world", "corpse_observer_client_num", 28000, 5, "int");
    clientfield::register("allplayers", "corpse_client_num", 28000, 5, "int");
    clientfield::register("world", "body_identity", 28000, 2, "int");
    clientfield::register("world", "corpse_observer_role", 28000, 2, "int");
    clientfield::register("toplayer", "killed_by_client_num", 28000, 4, "int");
    clientfield::register("toplayer", "killed_by_role", 28000, 2, "int");
    clientfield::register("toplayer", "show_spy_keyline", 28000, 2, "int");
    clientfield::register("allplayers", "record_operative_elims", 28000, 6, "int");
    clientfield::register("allplayers", "record_investigator_elims", 28000, 3, "int");
    clientfield::register("allplayers", "record_spy_elims", 28000, 5, "int");
    clientfield::register("toplayer", "show_spy_numbers_fx", 28000, 1, "int");
    /#
        level thread init_devgui();
    #/
    telemetry::function_98df8818(#"hash_711212b10739dcce", &function_d0482a08);
    telemetry::function_98df8818(#"hash_fc0d1250fc48d49", &function_645d656f);
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x344913db, Offset: 0x1d20
// Size: 0x8e
function function_6279301a(activeteamcount) {
    if (!isdefined(level.var_c11fb64)) {
        level.var_c11fb64 = gettime();
    }
    if (gettime() - level.var_c11fb64 > int(20 * 1000)) {
        return true;
    }
    if (activeteamcount[#"any"] < getnumexpectedplayers()) {
        return false;
    }
    return true;
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x96974cd9, Offset: 0x1db8
// Size: 0x32
function function_5eb6288f(val) {
    return isdefined(val.sessionstate) && val.sessionstate == "spectator";
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0xf20e646c, Offset: 0x1df8
// Size: 0x3dc
function function_c83b8450() {
    if (self issplitscreen()) {
        allplayers = getplayers();
        foreach (otherplayer in allplayers) {
            if (!isalive(otherplayer) || otherplayer === self) {
                continue;
            }
            if (otherplayer isplayeronsamemachine(self)) {
                self allowspectateallteams(0);
                self allowspectateteam("localplayers", 1);
                return;
            }
        }
    }
    party = self getparty();
    if (isdefined(party) && party.var_a15e4438 > 1) {
        teams = [];
        self allowspectateallteams(0);
        aliveplayers = array::filter(party.party_members, 0, &isalive);
        spectators = array::filter(party.party_members, 0, &function_5eb6288f);
        foreach (aliveplayer in aliveplayers) {
            if (!isdefined(teams)) {
                teams = [];
            } else if (!isarray(teams)) {
                teams = array(teams);
            }
            teams[teams.size] = aliveplayer.team;
        }
        foreach (spectator in spectators) {
            if (teams.size > 0) {
                foreach (team in teams) {
                    spectator allowspectateteam(team, 1);
                }
                continue;
            }
            spectator allowspectateallteams(1);
        }
        return;
    }
    self allowspectateallteams(1);
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x4d38f42, Offset: 0x21e0
// Size: 0x32
function function_d0ff82d4() {
    return array::randomize(struct::get_array("mp_spawn_point", "targetname"));
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0xa349540a, Offset: 0x2220
// Size: 0x440
function function_9e23f471() {
    if (!isdefined(level.var_e4688422)) {
        level.var_e4688422 = [];
    } else if (!isarray(level.var_e4688422)) {
        level.var_e4688422 = array(level.var_e4688422);
    }
    level.var_e4688422[level.var_e4688422.size] = #"ekia";
    if (!isdefined(level.var_e4688422)) {
        level.var_e4688422 = [];
    } else if (!isarray(level.var_e4688422)) {
        level.var_e4688422 = array(level.var_e4688422);
    }
    level.var_e4688422[level.var_e4688422.size] = #"kill_enemy_with_armor";
    if (!isdefined(level.var_e4688422)) {
        level.var_e4688422 = [];
    } else if (!isarray(level.var_e4688422)) {
        level.var_e4688422 = array(level.var_e4688422);
    }
    level.var_e4688422[level.var_e4688422.size] = #"hash_2c6f50f863fe41b0";
    if (!isdefined(level.var_e4688422)) {
        level.var_e4688422 = [];
    } else if (!isarray(level.var_e4688422)) {
        level.var_e4688422 = array(level.var_e4688422);
    }
    level.var_e4688422[level.var_e4688422.size] = #"hash_729bc010900de6e1";
    if (!isdefined(level.var_e4688422)) {
        level.var_e4688422 = [];
    } else if (!isarray(level.var_e4688422)) {
        level.var_e4688422 = array(level.var_e4688422);
    }
    level.var_e4688422[level.var_e4688422.size] = #"hash_18522e88ad05a3b2";
    if (!isdefined(level.var_e4688422)) {
        level.var_e4688422 = [];
    } else if (!isarray(level.var_e4688422)) {
        level.var_e4688422 = array(level.var_e4688422);
    }
    level.var_e4688422[level.var_e4688422.size] = #"hash_5a02ff4e546b68f1";
    if (!isdefined(level.var_e4688422)) {
        level.var_e4688422 = [];
    } else if (!isarray(level.var_e4688422)) {
        level.var_e4688422 = array(level.var_e4688422);
    }
    level.var_e4688422[level.var_e4688422.size] = #"hash_7b589b3c0bd1a913";
    if (!isdefined(level.var_e4688422)) {
        level.var_e4688422 = [];
    } else if (!isarray(level.var_e4688422)) {
        level.var_e4688422 = array(level.var_e4688422);
    }
    level.var_e4688422[level.var_e4688422.size] = #"hash_374faf9b296382e8";
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x72ec197f, Offset: 0x2668
// Size: 0xd0
function function_fa414efa() {
    level.var_6196feea = [];
    level.var_6196feea[1] = #"pistol_semiauto_t9_item";
    level.var_6196feea[2] = #"hash_218f6b7797b8ccfc";
    level.var_6196feea[3] = #"hash_cf3994dfed6c15f";
    level.var_6196feea[4] = #"hash_593b4312a751497f";
    level.var_6196feea[5] = #"hash_53e92e3233adce70";
    level.var_6196feea[6] = #"hash_42886dffb475ca60";
    level.var_6196feea[7] = #"hash_4f99bd070512e22d";
    level.var_6196feea[8] = #"hash_7e675508bfa4337a";
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x79659a82, Offset: 0x2740
// Size: 0xd2
function onstartgametype() {
    var_1ba87ea4 = getgametypesetting("spyPreparePeriod");
    if (isdefined(var_1ba87ea4) && var_1ba87ea4 > 0) {
        level.graceperiod = var_1ba87ea4;
    }
    dogtags::init();
    game.telemetry.var_1496a660 = 0;
    game.telemetry.var_b9b8098c = 0;
    game.telemetry.var_cee82c1d = 0;
    game.telemetry.var_74b664fc = 0;
    game.telemetry.var_f464ee1d = 0;
    game.telemetry.var_aa6fccd3 = 0;
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0xe5b55da3, Offset: 0x2820
// Size: 0x6e
function gettimelimit() {
    timelimit = globallogic_defaults::default_gettimelimit();
    if (timelimit <= 0) {
        return 0;
    }
    if (isdefined(level.var_9072c13a) && level.var_9072c13a > 0) {
        timelimit += level.var_9072c13a / 60;
    }
    return timelimit;
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0xdbab77e5, Offset: 0x2898
// Size: 0x5c
function function_3d83e588(playerrole) {
    if (!isdefined(playerrole)) {
        return false;
    }
    return playerrole == 3 && level.var_e4f93869 == 1 || playerrole == 1 && level.var_d9cbaa6b == 1;
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x6ad8458, Offset: 0x2900
// Size: 0x6a
function ontimelimit() {
    thread globallogic::function_a3e3bd39(#"allies", 13);
    game.telemetry.var_8b9e841f = #"hash_37c13a8a191d2108";
    game.telemetry.var_e72137e8 = #"timeout";
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0xff3c2b34, Offset: 0x2978
// Size: 0x634
function onendround(*var_c1e98979) {
    var_79bd9998 = 0;
    if (!isdefined(game.telemetry.var_160ffca5)) {
        game.telemetry.var_160ffca5 = 0;
    }
    if (round::get_winning_team() == #"axis") {
        var_79bd9998 = 1;
        game.telemetry.var_160ffca5++;
    }
    game.telemetry.var_21144a84 = function_24d1cd4f(1).size;
    game.telemetry.var_b02e1bf6 = function_24d1cd4f(3).size;
    game.telemetry.var_726204bf = function_24d1cd4f(2).size;
    foreach (player in getplayers()) {
        player namespace_e51f0bc1::function_80d6d39b();
        level.var_44018194 hud_spy::set_state(player, #"hash_6724d4bba3d5bf31");
        if (function_3d83e588(player.var_d7e8ad6f)) {
            player thread namespace_4d9a1379::function_6a08066c();
        }
        if (isdefined(player.var_588e0374)) {
            level clientfield::set_world_uimodel("hudItems.spyMatchData." + player.var_588e0374 + ".detonations", isdefined(player.pers[#"hash_dcca75fef649c79"]) ? player.pers[#"hash_dcca75fef649c79"] : 0);
        }
        if (is_true(player.hasspawned) && isdefined(player.pers[#"hash_4e60a48509fd5c6f"])) {
            scoreevents::processscoreevent(#"hash_1f6e7a3859eab3e0", player);
            role = player function_da8679c7();
            if (var_79bd9998 && role == 1) {
                if (isdefined(player.pers[#"hash_4e60a48509fd5c6f"])) {
                    player.pers[#"hash_4e60a48509fd5c6f"]++;
                }
                scoreevents::processscoreevent(#"hash_423c4380222dc23", player);
                if (isalive(player)) {
                    scoreevents::processscoreevent(#"hash_29f5cc0b9054117c", player);
                }
            } else if (!var_79bd9998 && role != 1) {
                if (isdefined(player.pers[#"hash_4e60a48509fd5c6f"])) {
                    player.pers[#"hash_4e60a48509fd5c6f"]++;
                }
                scoreevents::processscoreevent(#"hash_423c4380222dc23", player);
                if (isalive(player)) {
                    if (role == 3) {
                        scoreevents::processscoreevent(#"hash_17322ce7ea062b45", player);
                    }
                    if (role == 2) {
                        scoreevents::processscoreevent(#"hash_7c5da395f31d95a9", player);
                    }
                }
            }
            if (isdefined(player.pers[#"hash_4e60a48509fd5c6f"])) {
                player.victory = player.pers[#"hash_4e60a48509fd5c6f"];
            }
        }
    }
    level namespace_e51f0bc1::function_54ad2da0();
    if (isdefined(level.item_spawn_stashes)) {
        foreach (dynent in level.item_spawn_stashes) {
            if (isdefined(dynent.itemlistbundle)) {
                dynent.itemlistbundle = undefined;
                item_world::function_160294c7(dynent);
            }
        }
    }
    foreach (objectiveid in level.var_a08e14c4) {
        objective_delete(objectiveid);
    }
    namespace_65181344::reset_items();
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0xc86c4054, Offset: 0x2fb8
// Size: 0x120
function onendgame(*var_c1e98979) {
    var_ca002956 = int(getgametypesetting(#"roundlimit") / 2);
    foreach (player in getplayers()) {
        if (isdefined(player.pers[#"hash_4e60a48509fd5c6f"]) && player.pers[#"hash_4e60a48509fd5c6f"] > var_ca002956) {
            match::function_af2e264f(player);
        }
    }
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x88ced55c, Offset: 0x30e0
// Size: 0x480
function givecustomloadout() {
    self takeallweapons();
    self clearperks();
    if (!isdefined(self.var_7ec4f7d7)) {
        self.var_7ec4f7d7 = [];
    }
    if (!isdefined(self.var_7ec4f7d7)) {
        self.var_7ec4f7d7 = [];
    } else if (!isarray(self.var_7ec4f7d7)) {
        self.var_7ec4f7d7 = array(self.var_7ec4f7d7);
    }
    if (!isinarray(self.var_7ec4f7d7, #"hash_25c2dcf9ec4c42e2")) {
        self.var_7ec4f7d7[self.var_7ec4f7d7.size] = #"hash_25c2dcf9ec4c42e2";
    }
    if (!isdefined(self.var_7ec4f7d7)) {
        self.var_7ec4f7d7 = [];
    } else if (!isarray(self.var_7ec4f7d7)) {
        self.var_7ec4f7d7 = array(self.var_7ec4f7d7);
    }
    if (!isinarray(self.var_7ec4f7d7, #"talent_flakjacket_mp")) {
        self.var_7ec4f7d7[self.var_7ec4f7d7.size] = #"talent_flakjacket_mp";
    }
    self item_inventory::reset_inventory(0);
    if (level.var_f16bfc14 == 1) {
        weapon = item_world_util::function_49ce7663(#"pistol_semiauto_t9_item");
        var_fa3df96 = self item_inventory::function_e66dcff5(weapon);
        self item_world::function_de2018e3(weapon, self, var_fa3df96);
        var_2f1b52af = namespace_a0d533d1::function_2b83d3ff(weapon);
    } else {
        var_d9ddb3b8 = level.var_60fa96d6;
        self giveweapon(var_d9ddb3b8);
        self switchtoweapon(var_d9ddb3b8, 1);
        self loadout::function_442539(#"primary", var_d9ddb3b8);
        var_2f1b52af = var_d9ddb3b8;
    }
    primaryoffhand = level.var_34d27b26;
    if (isdefined(primaryoffhand)) {
        self giveweapon(primaryoffhand);
        self setweaponammostock(primaryoffhand, 0);
        self switchtooffhand(primaryoffhand);
    }
    secondaryoffhand = level.var_6388e216;
    if (isdefined(secondaryoffhand)) {
        self giveweapon(secondaryoffhand);
        self setweaponammostock(secondaryoffhand, 0);
        self switchtooffhand(secondaryoffhand);
    }
    self loadout::function_6573eeeb();
    var_71575725 = self function_7683b07();
    if (var_71575725 == "") {
        self giveexecution(hash("execution_004"));
    }
    self setperk(#"specialty_sprint");
    self setperk(#"specialty_slide");
    self setperk(#"specialty_sprintreload");
    self setperk(#"specialty_sprintheal");
    return var_2f1b52af;
}

// Namespace spy/weapon_change
// Params 1, eflags: 0x20
// Checksum 0x6490e612, Offset: 0x3568
// Size: 0x4a
function event_handler[weapon_change] weapon_changed(eventstruct) {
    if (!isplayer(self)) {
        return;
    }
    self.currentweapon = eventstruct.weapon;
    self.previousweapon = eventstruct.last_weapon;
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0xba39f3eb, Offset: 0x35c0
// Size: 0x74
function function_c11071a8() {
    level.var_c3a003ad = &function_aecae28d;
    if (game.roundsplayed > 0) {
        util::delay(1, #"game_ended", &globallogic_audio::set_music_global, "roundend_finish");
    }
    function_f9935e6c();
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0xb5a65405, Offset: 0x3640
// Size: 0x14
function on_prematch_end() {
    level.var_2df66923 = "end";
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0xb1827846, Offset: 0x3660
// Size: 0x14
function on_game_playing() {
    thread function_7dd63f6c();
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0xeb07e3da, Offset: 0x3680
// Size: 0xd0
function function_7ad7cae9() {
    foreach (player in getplayers()) {
        if (!isdefined(player)) {
            return;
        }
        player allowmelee(0);
        player disableweaponfire();
        player disableoffhandweapons();
    }
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x82b28b0f, Offset: 0x3758
// Size: 0x354
function function_7dd63f6c() {
    level endon(#"game_ended");
    level thread function_2c7d73e9();
    foreach (player in getplayers()) {
        if (isdefined(player)) {
            level.var_44018194 hud_spy::set_state(player, #"hash_75ae26cee1b43762");
            if (isdefined(player.var_588e0374)) {
                level clientfield::set_world_uimodel("hudItems.spyMatchData." + player.var_588e0374 + ".identityIsKnown", 0);
            }
        }
    }
    level flag::set("spy_prepare_started");
    var_a02f2176 = 1;
    if (game.roundsplayed <= 0) {
        var_a02f2176 = 5;
    }
    util::delay(var_a02f2176, #"game_ended", &music::setmusicstate, "initial_setup");
    level thread namespace_e51f0bc1::function_2398866a(1, undefined);
    for (countdown = getgametypesetting("spyPreparePeriod"); countdown > 0; countdown--) {
        level thread namespace_e51f0bc1::function_2398866a(10, undefined, countdown);
        if (countdown <= 10) {
            foreach (player in level.players) {
                player playlocalsound(#"hash_5e14726f77107d1b");
            }
        }
        wait(1);
    }
    level.var_9e5563a6 = 1;
    function_fc4712c0();
    function_88be810f();
    level notify(#"hash_2f26b8ad3c26a7cb");
    level flag::clear("spy_prepare_started");
    flag::clear("spy_plane_active");
    if (util::islastround()) {
        gameadvertisement::setadvertisedstatus(0);
    }
    level thread function_6c0cf89a();
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x3ae97f50, Offset: 0x3ab8
// Size: 0x65c
function on_player_connect() {
    xuid = self getxuid();
    /#
        if (isbot(self)) {
            xuid = self.playername;
        }
    #/
    var_ca86c405 = array::find(game.var_dc542c3a, xuid);
    if (!isdefined(var_ca86c405)) {
        if (is_true(game.var_44b8bb22)) {
            game.var_dc542c3a = [];
            foreach (player in level.players) {
                if (isdefined(player.var_588e0374)) {
                    xuid = player getxuid();
                    /#
                        if (isbot(player)) {
                            xuid = player.playername;
                        }
                    #/
                    game.var_dc542c3a[player.var_588e0374 - 1] = xuid;
                }
            }
            game.var_44b8bb22 = undefined;
        }
        for (i = 0; i < 25; i++) {
            if (!isdefined(game.var_dc542c3a[i])) {
                game.var_dc542c3a[i] = xuid;
                self.var_588e0374 = i + 1;
                if (i == 24) {
                    game.var_44b8bb22 = 1;
                }
                break;
            }
        }
    } else {
        self.var_588e0374 = var_ca86c405 + 1;
    }
    level.var_44018194 hud_spy::function_7350f1fd(self, self.var_588e0374);
    level clientfield::set_world_uimodel("hudItems.spyMatchData." + self.var_588e0374 + ".clientNum", self getentitynumber());
    level clientfield::increment_world_uimodel("hudItems.spyMatchData.playerAssignedIDCounter");
    util::wait_network_frame();
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(self.pers[#"hash_68ca8998bc9193fa"])) {
        self.pers[#"hash_68ca8998bc9193fa"] = 0;
    }
    if (!isdefined(self.pers[#"hash_2264183a7679593c"])) {
        self.pers[#"hash_2264183a7679593c"] = 0;
    }
    if (!isdefined(self.pers[#"hash_297fd6e15ec7493f"])) {
        self.pers[#"hash_297fd6e15ec7493f"] = 0;
    }
    self clientfield::set("record_operative_elims", self.pers[#"hash_68ca8998bc9193fa"] + 1);
    self clientfield::set("record_investigator_elims", self.pers[#"hash_2264183a7679593c"] + 1);
    self clientfield::set("record_spy_elims", self.pers[#"hash_297fd6e15ec7493f"] + 1);
    if (level flag::get("spy_role_assigned")) {
        if (self util::is_spectating()) {
            level clientfield::set_world_uimodel("hudItems.spyMatchData." + self.var_588e0374 + ".isConnected", 0);
            level flag::clear(#"hash_263f55e6bcaa1891");
            if (isdefined(level.var_83b6f354)) {
                if (isdefined(level.var_bd0bdf7f)) {
                    level.var_44018194 hud_spy::function_ddf21dbe(self, level.var_bd0bdf7f);
                }
                if (isdefined(level.var_83b6f354.var_588e0374)) {
                    level.var_44018194 hud_spy::function_410e8b54(self, level.var_83b6f354.var_588e0374);
                }
            }
            self thread function_f0e34();
            self thread function_56626d08();
            while (self.currentspectatingclient < 0) {
                waitframe(1);
                if (!isdefined(self)) {
                    return;
                }
            }
            foreach (player in function_a1ef346b()) {
                if (self.currentspectatingclient == player getentitynumber()) {
                    function_23485579(player);
                    break;
                }
            }
        }
        return;
    }
    level clientfield::set_world_uimodel("hudItems.spyMatchData." + self.var_588e0374 + ".isConnected", 1);
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x5ff96ad1, Offset: 0x4120
// Size: 0xf4
function function_f0e34() {
    self endon(#"disconnect");
    level endon(#"game_ended");
    if (isdefined(level.var_ffca3315) && (level.var_ffca3315 >= 1 || level.var_ffca3315 < 4)) {
        for (var_9044c8bb = 1; var_9044c8bb <= level.var_8ecd8fc; var_9044c8bb++) {
            var_1edcbdd3 = (level.var_5fd149b8 >> var_9044c8bb - 1) % 2;
            if (var_1edcbdd3) {
                level.var_44018194 hud_spy::function_adf24ba3(self, var_9044c8bb);
                util::wait_network_frame(5);
            }
        }
    }
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x12a1a380, Offset: 0x4220
// Size: 0x74c
function on_player_spawned() {
    if (level flag::get("spy_role_assigned") && (!isdefined(self.var_6e2d9bb4) || self.var_6e2d9bb4 == 0)) {
        self suicide();
        return;
    }
    if (self.var_6e2d9bb4 === 1) {
        self thread function_744d4f7e();
        self thread function_f40dba48();
        self [[ level.givecustomloadout ]]();
        self function_5536bd9e();
        self.var_dff29d6 = [];
        self.var_65dccfef = 0;
        self.var_b5fc63cb = [];
        self thread namespace_4d9a1379::function_8da4c80d();
        if (!level.var_44018194 hud_spy::is_open(self)) {
            level.var_44018194 hud_spy::open(self);
        }
        level.var_44018194 hud_spy::set_state(self, #"combathud");
        self clientfield::set_to_player("corpse_entity_num", 26);
        return;
    }
    if (isdefined(self.pers[#"latejoin"])) {
        self.pers[#"latejoin"] = 0;
    }
    self allowmelee(0);
    self disableweaponfire();
    self disableoffhandweapons();
    self thread function_fb0a3b28();
    self thread function_744d4f7e();
    self thread function_f40dba48();
    level.playermaxhealth = 150;
    level.var_90bb9821 = 0;
    self player::function_9080887a();
    self.var_dff29d6 = [];
    self.var_65dccfef = 0;
    self.var_b5fc63cb = [];
    self thread namespace_4d9a1379::function_8da4c80d();
    self namespace_4d9a1379::function_eba95887(0);
    if (!isdefined(self.var_f166aad3)) {
        self.var_f166aad3 = [];
    }
    level flag::set("spy_player_spawned");
    if (!isdefined(self.var_d7e8ad6f)) {
        self.var_d7e8ad6f = 0;
    }
    level clientfield::set_world_uimodel("hudItems.spyMatchData." + self.var_588e0374 + ".spyRole", 0);
    level clientfield::set_world_uimodel("hudItems.spyMatchData." + self.var_588e0374 + ".isAlive", 1);
    level clientfield::set_world_uimodel("hudItems.spyMatchData." + self.var_588e0374 + ".isWanted", 0);
    if (!level.var_44018194 hud_spy::is_open(self)) {
        level.var_44018194 hud_spy::open(self);
        level.var_44018194 hud_spy::set_state(self, "HideAll");
    }
    if (isdefined(self.pers[#"hash_629f4666af73d943"]) && player_role::is_valid(self.pers[#"hash_629f4666af73d943"])) {
        self player_role::set(self.pers[#"hash_629f4666af73d943"]);
    }
    self.pers[#"hash_629f4666af73d943"] = isdefined(self.pers[#"hash_629f4666af73d943"]) ? self.pers[#"hash_629f4666af73d943"] : self getspecialistindex();
    if (isdefined(self.pers[#"hash_4e60a48509fd5c6f"])) {
        self.victory = self.pers[#"hash_4e60a48509fd5c6f"];
    }
    self.pers[#"hash_4e60a48509fd5c6f"] = isdefined(self.pers[#"hash_4e60a48509fd5c6f"]) ? self.pers[#"hash_4e60a48509fd5c6f"] : 0;
    if (level flag::get("spy_prepare_started")) {
        level.var_44018194 hud_spy::set_state(self, #"hash_75ae26cee1b43762");
    }
    if (isdefined(self.pers[#"hash_2264183a7679593c"])) {
        self clientfield::set("record_investigator_elims", self.pers[#"hash_2264183a7679593c"] + 1);
    }
    if (isdefined(self.pers[#"hash_68ca8998bc9193fa"])) {
        self clientfield::set("record_operative_elims", self.pers[#"hash_68ca8998bc9193fa"] + 1);
    }
    if (isdefined(self.pers[#"hash_297fd6e15ec7493f"])) {
        self clientfield::set("record_spy_elims", self.pers[#"hash_297fd6e15ec7493f"] + 1);
    }
    util::wait_network_frame();
    if (isdefined(self)) {
        level.var_44018194 hud_spy::function_727bf185(self, 1);
    }
    util::wait_network_frame();
    if (isdefined(self)) {
        level.var_44018194 hud_spy::function_727bf185(self, 0);
    }
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x14b4c69d, Offset: 0x4978
// Size: 0x20
function on_start_gametype() {
    level.var_5b544215 = -1;
    level.scoreresetondeath = 0;
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x7b300427, Offset: 0x49a0
// Size: 0x164
function function_6c0cf89a() {
    level endon(#"game_ended");
    starttime = float(level.starttime) / 1000;
    endtime = float(level.starttime) / 1000 + level.timelimit * 60;
    timeremaining = endtime - starttime;
    threshold = getgametypesetting("spyModeSpyPlaneActivationTime");
    while (timeremaining > threshold && !flag::get("spy_plane_active")) {
        wait(1);
        currenttime = float(gettime()) / 1000;
        timeremaining = int(round(endtime - currenttime));
    }
    level thread function_bff5aee0();
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0xa63dbff, Offset: 0x4b10
// Size: 0xf6
function function_f40dba48() {
    assert(isplayer(self));
    level endon(#"game_ended");
    self endon(#"disconnect", #"death");
    if (self gamepadusedlast()) {
        waitframe(1);
        return;
    }
    while (true) {
        if (self buttonbitstate("BUTTON_BIT_ACTIVATE")) {
            level.var_44018194 hud_spy::function_46c41f5(self, 1);
        } else {
            level.var_44018194 hud_spy::function_46c41f5(self, 0);
        }
        waitframe(1);
    }
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x84b1ad91, Offset: 0x4c10
// Size: 0x128
function function_fb0a3b28() {
    assert(isplayer(self));
    self endon(#"death", #"disconnect");
    level endon(#"game_ended", #"hash_1b006807c1efbfb");
    level flag::wait_till("all_players_spawned");
    while (true) {
        if (self attackbuttonpressed() || self meleebuttonpressed() || self fragbuttonpressed() || self secondaryoffhandbuttonpressed()) {
            level thread namespace_e51f0bc1::function_702cbb0d(self, 9);
            wait(2);
            continue;
        }
        waitframe(1);
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x4e872621, Offset: 0x4d40
// Size: 0x2c
function function_61538028(val) {
    return isdefined(val.var_d7e8ad6f) && val.var_d7e8ad6f != 0;
}

// Namespace spy/spy
// Params 2, eflags: 0x0
// Checksum 0x4fa56782, Offset: 0x4d78
// Size: 0x4c
function function_ddbe5c75(val, roletype) {
    return isdefined(val.var_d7e8ad6f) && val.var_d7e8ad6f == roletype && isalive(val);
}

// Namespace spy/spy
// Params 2, eflags: 0x0
// Checksum 0xfe11850d, Offset: 0x4dd0
// Size: 0x36
function function_701a9d44(val, roletype) {
    return isdefined(val.var_d7e8ad6f) && val.var_d7e8ad6f == roletype;
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x256f901b, Offset: 0x4e10
// Size: 0x2a
function function_7a7907d4() {
    return array::filter(level.players, 0, &function_61538028);
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x8f1aefef, Offset: 0x4e48
// Size: 0x32
function function_24d1cd4f(roletype) {
    return array::filter(level.players, 0, &function_ddbe5c75, roletype);
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x68310c83, Offset: 0x4e88
// Size: 0x32
function function_3919b452(roletype) {
    return array::filter(level.players, 0, &function_701a9d44, roletype);
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x694a6edc, Offset: 0x4ec8
// Size: 0xb4
function function_744d4f7e() {
    self endon(#"death", #"disconnect");
    level endon(#"game_ended");
    self clientfield::set_to_player("show_spy_keyline", 2);
    level waittill(#"hash_1b006807c1efbfb");
    if (isdefined(self.var_d7e8ad6f) && self.var_d7e8ad6f == 1) {
        self clientfield::set_to_player("show_spy_keyline", 1);
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0xa79bccd8, Offset: 0x4f88
// Size: 0xbc
function function_b106923d(role) {
    count = 0;
    a_players = function_a1ef346b();
    foreach (player in a_players) {
        if (player.var_d7e8ad6f == role) {
            count++;
        }
    }
    return count;
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0xc36bb58f, Offset: 0x5050
// Size: 0x26a
function function_6a1d53f3() {
    /#
        if (getdvarint(#"hash_9e3d2d9bc100406", 0) && function_a1ef346b().size == 1) {
            return;
        }
    #/
    var_8577fb12 = function_b106923d(1);
    aliveplayercount = function_a1ef346b().size;
    if (var_8577fb12 == 0 && aliveplayercount > 0) {
        thread globallogic::function_a3e3bd39(#"allies", 14);
        game.telemetry.var_8b9e841f = #"hash_37c13a8a191d2108";
        game.telemetry.var_e72137e8 = #"hash_2b0828f67a90160d";
    } else if (!function_b106923d(3) && !function_b106923d(2)) {
        thread globallogic::function_a3e3bd39(#"axis", 12);
        game.telemetry.var_8b9e841f = #"hash_7c4041b358f9cfe";
        game.telemetry.var_e72137e8 = #"hash_61cf92141266b6eb";
    }
    if (level.var_d815e50d != 1 && is_true(getdvarint(#"hash_388a565a02f4a632")) && level.var_346345d6.size == 0) {
        thread globallogic::function_a3e3bd39(#"axis", 15);
        game.telemetry.var_8b9e841f = #"hash_7c4041b358f9cfe";
        game.telemetry.var_e72137e8 = #"hash_702839005c1c3dd7";
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x4
// Checksum 0x3f423820, Offset: 0x52c8
// Size: 0xf4
function private function_effcb5d1(player) {
    var_20ad403d = player.var_d7e8ad6f === 1 ? #"hash_7f0c9c0ec4410623" : #"hash_14b3ab2971ce1112";
    var_4bf709a4 = player.var_d7e8ad6f === 1 ? #"hash_14b3ab2971ce1112" : #"hash_7f0c9c0ec4410623";
    globallogic_audio::function_abf21f69(var_20ad403d, function_3919b452(1));
    globallogic_audio::function_abf21f69(var_4bf709a4, function_3919b452(2));
    globallogic_audio::function_abf21f69(var_4bf709a4, function_3919b452(3));
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0xa2fecd08, Offset: 0x53c8
// Size: 0x23c
function function_3e7f8f4f() {
    level endon(#"game_ended");
    var_4ef0429d = function_b106923d(3);
    var_d79afc8 = function_b106923d(2);
    var_df8f8f53 = var_4ef0429d + var_d79afc8;
    var_8577fb12 = function_b106923d(1);
    if (level.var_f6462266 === 0 && var_df8f8f53 == 2) {
        globallogic_audio::function_61e17de0("spyAlliesLowLives", function_3919b452(1));
        level.var_f6462266 = 1;
    }
    if (level.var_f8aa7dce === 0 && var_8577fb12 == 1) {
        globallogic_audio::function_61e17de0("spyDoubleAgentLowLife", function_24d1cd4f(1));
        level.var_f8aa7dce = 1;
        level notify(#"hash_15b8b6edc4ed3032", {#var_7090bf53:0});
    }
    if (level.var_24bb6bd8 === 0 && var_4ef0429d == 0) {
        globallogic_audio::function_61e17de0("spyInvestigatorNoLiveDoubleAgent", function_3919b452(1));
        otherplayers = array::exclude(function_7a7907d4(), function_3919b452(1));
        globallogic_audio::function_61e17de0("spyInvestigatorNoLive", otherplayers);
        level.var_24bb6bd8 = 1;
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x40cf665f, Offset: 0x5610
// Size: 0x6c
function on_player_damaged(params) {
    attacker = params.eattacker;
    if (!isplayer(attacker)) {
        return;
    }
    if (!attacker function_90e387d2(self)) {
        self.var_f166aad3[attacker.clientid] = gettime();
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0xb1075edc, Offset: 0x5688
// Size: 0x3cc
function on_player_killed(params) {
    victim = self;
    if (level.var_21840d7d === 1) {
        if (isdefined(victim) && isplayer(params.eattacker)) {
            attacker = params.eattacker;
            var_7dfc60c = attacker function_da8679c7();
            victim thread function_e74613a1(var_7dfc60c, attacker getentitynumber());
            victim thread function_831cac09();
            var_5ed12177 = victim function_da8679c7();
            if (attacker != victim) {
                if (var_7dfc60c == var_5ed12177 || var_7dfc60c == 3 && var_5ed12177 == 2 || var_7dfc60c == 2 && var_5ed12177 == 3) {
                    attacker thread function_677fd153(victim);
                    victim.var_6e2d9bb4 = 1;
                    victim thread function_19c59819();
                    return;
                }
            }
            victim.var_6e2d9bb4 = 0;
        }
    }
    victim thread function_56626d08();
    if (!level flag::get("spy_role_assigned")) {
        return;
    }
    level clientfield::set_world_uimodel("hudItems.spyMatchData." + victim.var_588e0374 + ".isAlive", 0);
    if (isdefined(params) && isdefined(params.eattacker) && isplayer(params.eattacker)) {
        attacker = params.eattacker;
        var_7dfc60c = attacker function_da8679c7();
        attacker function_fc2f7eee();
        victim thread function_48a1200f(attacker);
        victim thread function_f7551e4c(attacker);
        var_a0375b77 = victim getentitynumber();
        attacker clientfield::set("victim_entity_num", var_a0375b77 + 1);
        namespace_4d9a1379::function_f77996e9(attacker, victim);
        victim thread function_e74613a1(var_7dfc60c, attacker getentitynumber());
        if (!attacker function_90e387d2(victim)) {
            attacker thread function_677fd153(victim);
        } else {
            attacker thread function_63b1b505(victim);
        }
        victim thread function_831cac09();
    }
    victim thread function_8caeee8f(gettime(), victim, params.weapon, 0, params.smeansofdeath);
    victim thread function_7ef70910();
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x7f13c313, Offset: 0x5a60
// Size: 0x5c
function function_19c59819() {
    level endon(#"game_ended");
    self endon(#"disconnect");
    self waittill(#"end_killcam");
    self thread globallogic_spawn::waitandspawnclient(undefined);
}

// Namespace spy/spy
// Params 2, eflags: 0x0
// Checksum 0x58c40a81, Offset: 0x5ac8
// Size: 0xf4
function function_e74613a1(var_7dfc60c, attackerentitynum) {
    victim = self;
    victim clientfield::set_to_player("killed_by_client_num", -1);
    victim clientfield::set_to_player("killed_by_role", 0);
    util::wait_network_frame();
    if (!isdefined(victim)) {
        return;
    }
    victim clientfield::set_to_player("killed_by_client_num", attackerentitynum);
    victim clientfield::set_to_player("killed_by_role", var_7dfc60c);
    util::wait_network_frame();
    if (!isdefined(victim)) {
        return;
    }
    victim thread namespace_e51f0bc1::function_fa207882(11);
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x6f1e910, Offset: 0x5bc8
// Size: 0x26c
function function_7ef70910() {
    if (self.var_d7e8ad6f === 2) {
        reward = level.var_7e569431.var_c77b4162;
        foreach (player in getplayers()) {
            if (player.var_d7e8ad6f === 3) {
                player namespace_4d9a1379::function_53a81144(reward);
            }
        }
    }
    level thread function_a9490fb5();
    level thread function_effcb5d1(self);
    level thread function_3e7f8f4f();
    function_6a1d53f3();
    var_c58e23e9 = getgametypesetting("spyModeRemainingPlayerCountForSpyPlane");
    if (function_a1ef346b().size < var_c58e23e9) {
        level thread function_bff5aee0();
    }
    namespace_e51f0bc1::function_80d6d39b();
    if (isdefined(self.var_a08e14c4)) {
        objective_delete(self.var_a08e14c4);
    }
    if (self.var_d7e8ad6f === 3) {
        if (isdefined(level.var_5c1616a8)) {
            objective_delete(level.var_5c1616a8);
        }
        if (isdefined(level.var_5b5f82c2)) {
            objective_delete(level.var_5b5f82c2);
        }
    }
    if (isdefined(self.var_73a2057c)) {
        objective_delete(self.var_73a2057c);
    }
    if (isdefined(self.var_349e0ec6)) {
        objective_delete(self.var_349e0ec6);
    }
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x3c7791be, Offset: 0x5e40
// Size: 0x74
function function_9c8c2e04() {
    level waittill(#"potm_selected");
    luinotifyevent(#"hash_4e04fabfcf5645a0");
    level waittill(#"potm_finished");
    luinotifyevent(#"hash_5bcad2526c42e308");
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x3789f205, Offset: 0x5ec0
// Size: 0xac
function function_fc2f7eee() {
    var_8577fb12 = function_b106923d(1);
    if (var_8577fb12 == 0) {
        potm::bookmark(#"hash_65d2da7a06dd1e3f", gettime(), self);
        return;
    }
    if (!function_b106923d(3) && !function_b106923d(2)) {
        potm::bookmark(#"hash_65d2da7a06dd1e3f", gettime(), self);
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0xb4f2872a, Offset: 0x5f78
// Size: 0x1c4
function function_677fd153(victim) {
    assert(isdefined(victim));
    var_5ed12177 = victim function_da8679c7();
    var_7dfc60c = self function_da8679c7();
    if (var_7dfc60c == 3 && var_5ed12177 == 2) {
        self thread globallogic_audio::leader_dialog_on_player("spyPunishmentDeathForTeamkill");
        var_fd1c771a = self.health / 2;
        self.health -= int(var_fd1c771a);
        level thread namespace_e51f0bc1::function_702cbb0d(self, 4);
    }
    if (var_7dfc60c == 2 && var_5ed12177 != 1) {
        self thread globallogic_audio::leader_dialog_on_player("spyPunishmentDeathForTeamkill");
        waitframe(1);
        level thread namespace_e51f0bc1::function_702cbb0d(self, 4);
        self thread namespace_e51f0bc1::function_fa207882(10);
        self suicide();
        if (!is_true(level.gameended)) {
            level.var_44018194 hud_spy::set_state(self, #"friendlyfire");
        }
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x1b353385, Offset: 0x6148
// Size: 0x420
function function_63b1b505(victim) {
    assert(isdefined(victim));
    var_5ed12177 = victim function_da8679c7();
    var_7dfc60c = self function_da8679c7();
    if (self == victim || var_5ed12177 == var_7dfc60c) {
        return;
    }
    if (var_5ed12177 == 3 && var_7dfc60c != 1) {
        return;
    }
    if (var_5ed12177 == 2 && var_7dfc60c != 1) {
        return;
    }
    switch (var_5ed12177) {
    case 3:
        self.pers[#"hash_2264183a7679593c"] = isdefined(self.pers[#"hash_2264183a7679593c"]) ? self.pers[#"hash_2264183a7679593c"] + 1 : 1;
        self clientfield::set("record_investigator_elims", self.pers[#"hash_2264183a7679593c"] + 1);
        break;
    case 2:
        self.pers[#"hash_68ca8998bc9193fa"] = isdefined(self.pers[#"hash_68ca8998bc9193fa"]) ? self.pers[#"hash_68ca8998bc9193fa"] + 1 : 1;
        self clientfield::set("record_operative_elims", self.pers[#"hash_68ca8998bc9193fa"] + 1);
        break;
    case 1:
        self.pers[#"hash_297fd6e15ec7493f"] = isdefined(self.pers[#"hash_297fd6e15ec7493f"]) ? self.pers[#"hash_297fd6e15ec7493f"] + 1 : 1;
        self clientfield::set("record_spy_elims", self.pers[#"hash_297fd6e15ec7493f"] + 1);
        break;
    }
    util::wait_network_frame();
    foreach (player in getplayers()) {
        level.var_44018194 hud_spy::function_727bf185(player, 1);
    }
    util::wait_network_frame();
    foreach (player in getplayers()) {
        level.var_44018194 hud_spy::function_727bf185(player, 0);
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x8b29bc29, Offset: 0x6570
// Size: 0x11a
function function_90e387d2(victim) {
    assert(isdefined(victim));
    var_5ed12177 = victim function_da8679c7();
    var_7dfc60c = self function_da8679c7();
    lastdamagetime = self.var_f166aad3[victim.clientid];
    var_b8732d06 = isdefined(lastdamagetime) ? lastdamagetime + int(10 * 1000) > gettime() : 0;
    if (self == victim || var_7dfc60c == 1 || var_5ed12177 == 1 || var_b8732d06 || isdefined(victim.var_53d88012)) {
        return true;
    }
    return false;
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x3330a338, Offset: 0x6698
// Size: 0x124
function function_f9935e6c() {
    if (level.var_a1f33484 === 4 || level.var_a1f33484 === 3) {
        return;
    }
    spawns = struct::get_array("spy_weapon_spawn", "targetname");
    var_5609c166 = 1;
    weaponslist = "t9_spy_weapons";
    if (level.var_a1f33484 === 1) {
        weaponslist = #"hash_72184d98be62d1da";
        var_5609c166 = 0;
    }
    level namespace_65181344::function_ae93ad7b(weaponslist, spawns, 6);
    if (var_5609c166) {
        spawns = struct::get_array("spy_launcher_weapon_spawn", "targetname");
        if (spawns.size > 0) {
            level namespace_65181344::function_ae93ad7b("t9_spy_launcher", spawns, 6);
        }
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x51a56724, Offset: 0x67c8
// Size: 0x16
function function_fe1dd361(item) {
    return item.weaponoptions;
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x670bf395, Offset: 0x67e8
// Size: 0x16
function function_b059ce9e(item) {
    return item.var_e91aba42;
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0xb9ac503d, Offset: 0x6808
// Size: 0xe
function function_75bb902f() {
    return level.players;
}

// Namespace spy/spy
// Params 0, eflags: 0x4
// Checksum 0xe21a61d8, Offset: 0x6820
// Size: 0x12c
function private function_3706f731() {
    /#
        if (getdvarint(#"hash_7f933c465f03f3fa", 0)) {
            var_f05c87a6 = 100;
        }
    #/
    var_f4fe85c7 = getdynentarray("spy_special_weapon_stash", 1);
    if (isdefined(var_f4fe85c7) && var_f4fe85c7.size > 0) {
        var_89df4619 = int(ceil(100 / var_f4fe85c7.size) * 2);
        level thread function_2248d04("spy_special_weapon_stash", isdefined(var_f05c87a6) ? var_f05c87a6 : var_89df4619);
    }
    level thread function_2248d04("spy_ammo_stash", 100);
    level thread function_2248d04("spy_equipment_stash", 100);
}

// Namespace spy/spy
// Params 2, eflags: 0x4
// Checksum 0x2967a8c7, Offset: 0x6958
// Size: 0x180
function private function_2248d04(targetname, probability) {
    level flag::wait_till(#"item_world_reset");
    dynents = getdynentarray(targetname, 1);
    probability = isdefined(probability) ? probability : level.var_f8299840;
    foreach (dynent in dynents) {
        item_world::function_160294c7(dynent);
    }
    if (level.var_a1f33484 === 2 || level.var_a1f33484 === 4) {
        println("spyAlliesLowLives" + level.var_a1f33484);
        return;
    }
    dynents = item_world::function_7a0c5d2e(probability, targetname);
    if (isdefined(level.var_e8dfa0d2)) {
        [[ level.var_e8dfa0d2 ]](dynents);
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x48889861, Offset: 0x6ae0
// Size: 0x804
function function_61b78a16(role) {
    self.var_d7e8ad6f = role;
    self function_75903a3(0);
    level.var_44018194 hud_spy::function_5d23ae16(self, role);
    level.var_44018194 hud_spy::set_state(self, #"hash_7d11e1c1b565495");
    self function_b0000c15();
    if (self.var_d7e8ad6f == 1) {
        self thread globallogic_audio::function_c246758e("role_set_spy");
        self function_75903a3(1);
        if (level.var_17f131d7 == 1) {
            self function_f4c28f63();
        }
        if (isdefined(self.var_a08e14c4)) {
            objective_delete(self.var_a08e14c4);
            self.var_a08e14c4 = undefined;
        }
        self.var_a08e14c4 = gameobjects::get_next_obj_id();
        objective_add(self.var_a08e14c4, "active", self, #"hash_272c63781ae23021", self);
        if (!isdefined(level.var_a08e14c4)) {
            level.var_a08e14c4 = [];
        } else if (!isarray(level.var_a08e14c4)) {
            level.var_a08e14c4 = array(level.var_a08e14c4);
        }
        if (!isinarray(level.var_a08e14c4, self.var_a08e14c4)) {
            level.var_a08e14c4[level.var_a08e14c4.size] = self.var_a08e14c4;
        }
        objective_setinvisibletoplayer(self.var_a08e14c4, self);
        self thread function_ac945cba();
        self thread globallogic_audio::leader_dialog_on_player("spyRoleAssignedDoubleAgent");
        self.pers[#"telemetry"].var_d7e8ad6f = #"hash_7c4041b358f9cfe";
        self.pers[#"hash_1ef87e3d4b5f018a"] = 1;
    } else {
        self thread globallogic_audio::function_c246758e("role_set");
        if (self.var_d7e8ad6f == 3) {
            self function_c4fe1aa7();
            level clientfield::set_world_uimodel("hudItems.spyMatchData." + self.var_588e0374 + ".identityIsKnown", 1);
            level.var_5c1616a8 = gameobjects::get_next_obj_id();
            objective_add(level.var_5c1616a8, "active", self, #"hash_5f5111a6a4ee4333", self);
            objective_setinvisibletoplayer(level.var_5c1616a8, self);
            level.var_5b5f82c2 = gameobjects::get_next_obj_id();
            objective_add(level.var_5b5f82c2, "active", self, #"hash_7b5fe70cfd892f00", self);
            objective_setinvisibletoplayer(level.var_5b5f82c2, self);
            if (!isdefined(level.var_a08e14c4)) {
                level.var_a08e14c4 = [];
            } else if (!isarray(level.var_a08e14c4)) {
                level.var_a08e14c4 = array(level.var_a08e14c4);
            }
            if (!isinarray(level.var_a08e14c4, level.var_5c1616a8)) {
                level.var_a08e14c4[level.var_a08e14c4.size] = level.var_5c1616a8;
            }
            if (!isdefined(level.var_a08e14c4)) {
                level.var_a08e14c4 = [];
            } else if (!isarray(level.var_a08e14c4)) {
                level.var_a08e14c4 = array(level.var_a08e14c4);
            }
            if (!isinarray(level.var_a08e14c4, level.var_5b5f82c2)) {
                level.var_a08e14c4[level.var_a08e14c4.size] = level.var_5b5f82c2;
            }
            playerroletemplatecount = getplayerroletemplatecount(currentsessionmode());
            var_1dd54192 = self getplayergendertype() == "male" ? #"hash_79c2c831cc0403a7" : #"hash_184b76adf81ff4de";
            for (i = 0; i < playerroletemplatecount; i++) {
                var_3c6fd4f7 = function_b14806c6(i, currentsessionmode());
                if (var_3c6fd4f7 == var_1dd54192) {
                    self.characterindex = i;
                    break;
                }
            }
            player_role::set(self.characterindex);
            self thread globallogic_audio::leader_dialog_on_player("spyRoleAssignedInvestigator");
            self.pers[#"telemetry"].var_d7e8ad6f = #"hash_40e0009ec5c43d30";
            self.pers[#"hash_1ef87e3d4b5f018a"] = 1;
        } else {
            if (level.var_383f3268 > 1) {
                self thread globallogic_audio::leader_dialog_on_player("spyRoleAssignedOperativeMulti");
            } else {
                self thread globallogic_audio::leader_dialog_on_player("spyRoleAssignedOperative");
            }
            self.pers[#"telemetry"].var_d7e8ad6f = #"hash_13dcb65be8a47406";
        }
    }
    level clientfield::set_world_uimodel("hudItems.spyMatchData." + self.var_588e0374 + ".spyRole", self.var_d7e8ad6f);
    if (!isbot(self)) {
        self thread function_99b429b0();
    }
    if (is_true(getdvarint(#"hash_7616b5961f10df6d")) || self.var_d7e8ad6f == 3) {
        self thread function_83ea8b7f();
    }
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0xea86ef65, Offset: 0x72f0
// Size: 0xec
function function_c4fe1aa7() {
    var_2ad4c464 = isdefined(getgametypesetting(#"spymodeinvestigatorstartingweaponoption")) ? getgametypesetting(#"spymodeinvestigatorstartingweaponoption") : 0;
    if (var_2ad4c464 != 0) {
        weaponname = level.var_6196feea[var_2ad4c464];
        if (isdefined(weaponname)) {
            weapon = item_world_util::function_49ce7663(weaponname);
            var_fa3df96 = self item_inventory::function_e66dcff5(weapon);
            self item_world::function_de2018e3(weapon, self, var_fa3df96);
        }
    }
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0xc1b46dfc, Offset: 0x73e8
// Size: 0xee
function function_f4c28f63() {
    assert(isplayer(self));
    item = item_world_util::function_49ce7663("radiation_vest_spy_item_t9");
    self clientfield::set_player_uimodel("hudItems.radiationVestHealth", 1);
    self.var_1181c08b = isdefined(item.itementry.var_1181c08b) ? item.itementry.var_1181c08b : 0;
    self.var_4a1cb171 = self.var_1181c08b;
    self.var_dba54111 = isdefined(item.itementry.var_dba54111) ? item.itementry.var_dba54111 : 0;
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x6998c0, Offset: 0x74e0
// Size: 0x6c
function function_b0000c15() {
    assert(isplayer(self));
    self.var_1181c08b = 0;
    self.var_dba54111 = 0;
    self.var_4a1cb171 = 0;
    self clientfield::set_player_uimodel("hudItems.radiationVestHealth", 0);
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x487b4c0b, Offset: 0x7558
// Size: 0x180
function function_aecae28d(damage) {
    if (!isplayer(self)) {
        return damage;
    }
    if (isdefined(self.var_1181c08b) && self.var_1181c08b <= 0) {
        return damage;
    }
    if (self.var_d7e8ad6f == 1 && level.var_17f131d7 == 1) {
        return 0;
    }
    var_babbb09b = 0;
    var_e67d2721 = damage - self.var_dba54111;
    if (var_e67d2721 < 0) {
        var_e67d2721 = 0;
    }
    self.var_1181c08b -= var_e67d2721;
    if (self.var_1181c08b < 0) {
        var_babbb09b = self.var_1181c08b;
    }
    self.var_1181c08b = max(self.var_1181c08b, 0);
    if (self.var_1181c08b == 0) {
        self.var_dba54111 = 0;
        self.var_4a1cb171 = 0;
    }
    var_db01f8df = self.var_4a1cb171 <= 0 ? 0 : self.var_1181c08b / self.var_4a1cb171;
    self clientfield::set_player_uimodel("hudItems.radiationVestHealth", var_db01f8df);
    return var_babbb09b;
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0xc3ab5771, Offset: 0x76e0
// Size: 0x27c
function function_5536bd9e() {
    assert(self.var_d7e8ad6f);
    if (self.var_d7e8ad6f == 3) {
        var_6a9f86b9 = level.var_f002a5c1 - self.maxhealth;
        self.maxhealth = level.var_f002a5c1;
        self.health = level.var_f002a5c1;
        self.var_894f7879[#"spy"] = var_6a9f86b9;
        self player::function_9080887a();
    } else if (self.var_d7e8ad6f == 2) {
        var_6a9f86b9 = level.var_3cb33d52 - self.maxhealth;
        self.maxhealth = level.var_3cb33d52;
        self.health = level.var_3cb33d52;
        self.var_894f7879[#"spy"] = var_6a9f86b9;
        self player::function_9080887a();
    } else if (self.var_d7e8ad6f == 1) {
        var_6a9f86b9 = level.var_d07164a6 - self.maxhealth;
        self.maxhealth = level.var_d07164a6;
        self.health = level.var_d07164a6;
        self.var_894f7879[#"spy"] = var_6a9f86b9;
        self player::function_9080887a();
    }
    if (level.var_4ba11f84) {
        if (self.var_d7e8ad6f == 3) {
            armor = level.var_2d34348d;
        } else if (self.var_d7e8ad6f == 2) {
            armor = level.var_cd1f9bfe;
        } else if (self.var_d7e8ad6f == 1) {
            armor = level.var_41c76eb2;
        }
        self armor::set_armor(armor, armor, 0, 0, 1, 1, 5, 1, 1, 1);
    }
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x6b1d4679, Offset: 0x7968
// Size: 0x146
function function_ac945cba() {
    assert(isplayer(self));
    level endon(#"game_ended");
    self endon(#"disconnect", #"death");
    while (true) {
        if (self buttonbitstate("BUTTON_BIT_TALK_IN_PRIVATE_CHANNEL")) {
            level clientfield::set_world_uimodel("hudItems.spyMatchData." + self.var_588e0374 + ".talkInPrivateChannel", 1);
            level.var_44018194 hud_spy::function_f8d33ca8(self, 2);
        } else {
            level clientfield::set_world_uimodel("hudItems.spyMatchData." + self.var_588e0374 + ".talkInPrivateChannel", 0);
            level.var_44018194 hud_spy::function_f8d33ca8(self, 1);
        }
        waitframe(1);
    }
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x8f5ec658, Offset: 0x7ab8
// Size: 0x450
function function_fc4712c0() {
    if (!isdefined(level.var_40e2ce8b)) {
        level.var_40e2ce8b = [];
    }
    if (!isdefined(level.var_db0408e8)) {
        level.var_db0408e8 = [];
    }
    if (!isdefined(level.var_a6c36606)) {
        level.var_a6c36606 = [];
    }
    if (!isdefined(level.var_2861c0b)) {
        level.var_2861c0b = [];
    }
    foreach (role in [[1, "spy"], [3, "investigator"]]) {
        var_50898292 = role[0];
        var_95ce2408 = role[1];
        if (isdefined(game.roundsplayed) && game.roundsplayed > 0) {
            var_d461f61b = 0;
            var_7acfc91 = 0;
            foreach (player in level.players) {
                if (isdefined(player.pers[#"hash_53aa5300d636269f"]) && isdefined(player.pers[#"hash_53aa5300d636269f"][var_50898292])) {
                    var_d461f61b += player.pers[#"hash_53aa5300d636269f"][var_50898292];
                    var_7acfc91 += 1;
                }
            }
            if (var_7acfc91 == 0) {
                level.var_40e2ce8b[var_50898292] = isdefined(getgametypesetting(var_95ce2408 + "RoleAssignmentInitWeight")) ? getgametypesetting(var_95ce2408 + "RoleAssignmentInitWeight") : 10;
            } else {
                level.var_40e2ce8b[var_50898292] = round(var_d461f61b / var_7acfc91);
            }
        } else {
            level.var_40e2ce8b[var_50898292] = isdefined(getgametypesetting(var_95ce2408 + "RoleAssignmentInitWeight")) ? getgametypesetting(var_95ce2408 + "RoleAssignmentInitWeight") : 10;
        }
        level.var_db0408e8[var_50898292] = isdefined(getgametypesetting(var_95ce2408 + "RoleAssignmentWeightIncrement")) ? getgametypesetting(var_95ce2408 + "RoleAssignmentWeightIncrement") : 4;
        level.var_a6c36606[var_50898292] = isdefined(getgametypesetting(var_95ce2408 + "RoleAssignmentResetWeight")) ? getgametypesetting(var_95ce2408 + "RoleAssignmentResetWeight") : 2;
        level.var_2861c0b[var_50898292] = isdefined(getgametypesetting(var_95ce2408 + "RoleAssignmentOpponentWeightProportionalChange")) ? getgametypesetting(var_95ce2408 + "RoleAssignmentOpponentWeightProportionalChange") : 0.5;
    }
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x34506acf, Offset: 0x7f10
// Size: 0x26
function function_da8679c7() {
    if (!isdefined(self.var_d7e8ad6f)) {
        self.var_d7e8ad6f = 2;
    }
    return self.var_d7e8ad6f;
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0xe68bde8b, Offset: 0x7f40
// Size: 0x7e
function function_8c7b79d4() {
    player = self;
    player.pers[#"hash_53aa5300d636269f"] = [];
    player.pers[#"hash_53aa5300d636269f"][1] = level.var_40e2ce8b[1];
    player.pers[#"hash_53aa5300d636269f"][3] = level.var_40e2ce8b[3];
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0xe4d961bb, Offset: 0x7fc8
// Size: 0x2be
function function_4114d883(var_1ad7055e) {
    foreach (player in var_1ad7055e) {
        role = player function_da8679c7();
        if (!isdefined(player.pers[#"hash_53aa5300d636269f"])) {
            player function_8c7b79d4();
        }
        if (role == 0) {
            continue;
        }
        if (role == 2) {
            player.pers[#"hash_53aa5300d636269f"][1] = player.pers[#"hash_53aa5300d636269f"][1] + level.var_db0408e8[1];
            player.pers[#"hash_53aa5300d636269f"][3] = player.pers[#"hash_53aa5300d636269f"][3] + level.var_db0408e8[3];
            continue;
        }
        player.pers[#"hash_53aa5300d636269f"][role] = level.var_a6c36606[role];
        var_3bd0bdb2 = role == 1 ? 3 : 1;
        player.pers[#"hash_53aa5300d636269f"][var_3bd0bdb2] = player.pers[#"hash_53aa5300d636269f"][var_3bd0bdb2] * level.var_2861c0b[var_3bd0bdb2];
        player.pers[#"hash_53aa5300d636269f"][var_3bd0bdb2] = round(player.pers[#"hash_53aa5300d636269f"][var_3bd0bdb2]);
        player.pers[#"hash_53aa5300d636269f"][var_3bd0bdb2] = player.pers[#"hash_53aa5300d636269f"][var_3bd0bdb2] + level.var_db0408e8[var_3bd0bdb2];
        /#
        #/
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x5b0210fb, Offset: 0x8290
// Size: 0x94
function function_129708ae(role) {
    player = self;
    if (isdefined(player.pers[#"hash_53aa5300d636269f"]) && isdefined(player.pers[#"hash_53aa5300d636269f"][role])) {
        return int(player.pers[#"hash_53aa5300d636269f"][role]);
    }
    return 0;
}

// Namespace spy/spy
// Params 4, eflags: 0x0
// Checksum 0xd3a6f937, Offset: 0x8330
// Size: 0x24c
function function_e2f9564e(role, var_ffcb4356, var_1ad7055e, var_447f6d07) {
    totalweight = 0;
    var_2a4649ab = 0;
    for (i = 0; i < var_1ad7055e.size; i++) {
        if (!isdefined(var_1ad7055e[i].pers[#"hash_53aa5300d636269f"])) {
            var_1ad7055e[i] function_8c7b79d4();
        }
        if (var_447f6d07[i] == 0) {
            totalweight += var_1ad7055e[i] function_129708ae(role);
        }
    }
    for (i = 0; i < var_ffcb4356; i++) {
        var_b5d60b47 = -1;
        if (totalweight <= 0) {
            randomnumber = randomint(var_ffcb4356 - var_2a4649ab);
            var_803ecb64 = 0;
            for (pidx = 0; pidx < var_1ad7055e.size; pidx++) {
                if (var_447f6d07[pidx] == 0) {
                    if (randomnumber == 0) {
                        var_b5d60b47 = pidx;
                        break;
                    }
                    randomnumber--;
                }
            }
        } else {
            randomnumber = randomint(totalweight);
            var_43d48ef1 = 0;
            for (pidx = 0; pidx < var_1ad7055e.size; pidx++) {
                if (var_447f6d07[pidx] != 0) {
                    continue;
                }
                var_803ecb64 = var_1ad7055e[pidx] function_129708ae(role);
                newweight = var_43d48ef1 + var_803ecb64;
                if (randomnumber >= var_43d48ef1 && randomnumber < newweight) {
                    var_b5d60b47 = pidx;
                    break;
                }
                var_43d48ef1 += var_803ecb64;
            }
        }
        if (var_b5d60b47 >= 0) {
            var_447f6d07[var_b5d60b47] = role;
            totalweight -= var_803ecb64;
            var_2a4649ab++;
        }
    }
    return var_447f6d07;
}

// Namespace spy/spy
// Params 3, eflags: 0x0
// Checksum 0x629788ce, Offset: 0x8588
// Size: 0x5a
function function_b60a680(var_962a3529, var_8ef9b44e, var_447f6d07) {
    for (i = 0; i < var_447f6d07.size; i++) {
        if (var_447f6d07[i] == var_962a3529) {
            var_447f6d07[i] = var_8ef9b44e;
        }
    }
    return var_447f6d07;
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x5d578ace, Offset: 0x85f0
// Size: 0xd8c
function function_88be810f() {
    level.var_2df66923 = "assign_role";
    var_1ad7055e = [];
    foreach (player in level.players) {
        player freezecontrols(1);
        player val::set(#"hash_25b1afa9787ccf0a", "disable_oob", 1);
        if (is_true(player.hasspawned)) {
            if (isalive(player)) {
                if (!isdefined(var_1ad7055e)) {
                    var_1ad7055e = [];
                } else if (!isarray(var_1ad7055e)) {
                    var_1ad7055e = array(var_1ad7055e);
                }
                var_1ad7055e[var_1ad7055e.size] = player;
            }
        }
    }
    game.telemetry.var_5af269f = var_1ad7055e.size;
    level.var_244980fc = var_1ad7055e.size < 1 ? 0 : 1;
    level.var_383f3268 = 1;
    if (var_1ad7055e.size >= 4) {
        level.var_244980fc = isdefined(getgametypesetting(#"hash_2fcf4ad6cbe20d11" + var_1ad7055e.size)) ? getgametypesetting(#"hash_2fcf4ad6cbe20d11" + var_1ad7055e.size) : 1;
        level.var_383f3268 = isdefined(getgametypesetting(#"hash_327bb499f29db2ee" + var_1ad7055e.size)) ? getgametypesetting(#"hash_327bb499f29db2ee" + var_1ad7055e.size) : 1;
    }
    level.var_e0e2a19d = var_1ad7055e.size - level.var_383f3268 - level.var_244980fc;
    var_6d9047e5 = [];
    for (i = 0; i < var_1ad7055e.size; i++) {
        if (!isdefined(var_6d9047e5)) {
            var_6d9047e5 = [];
        } else if (!isarray(var_6d9047e5)) {
            var_6d9047e5 = array(var_6d9047e5);
        }
        var_6d9047e5[var_6d9047e5.size] = 0;
    }
    /#
        for (i = 0; i < var_1ad7055e.size; i++) {
            player = var_1ad7055e[i];
            if (isdefined(player.var_e3096ed9)) {
                if (player.var_e3096ed9 == 1 && level.var_244980fc > 0) {
                    level.var_244980fc--;
                } else if (player.var_e3096ed9 == 3 && level.var_383f3268 > 0) {
                    level.var_383f3268--;
                } else if (level.var_e0e2a19d > 0) {
                    player.var_e3096ed9 = 2;
                    level.var_e0e2a19d--;
                } else {
                    player.var_e3096ed9 = undefined;
                    break;
                }
                player function_61b78a16(player.var_e3096ed9);
                player function_5536bd9e();
                var_6d9047e5[i] = player.var_e3096ed9;
            }
        }
    #/
    if (util::islastround()) {
        for (i = 0; i < var_1ad7055e.size; i++) {
            player = var_1ad7055e[i];
            if (!is_true(player.pers[#"hash_1ef87e3d4b5f018a"])) {
                if (level.var_244980fc > 0) {
                    var_6d9047e5[i] = 1;
                    level.var_244980fc--;
                    continue;
                }
                if (level.var_383f3268 > 0) {
                    var_6d9047e5[i] = 3;
                    level.var_383f3268--;
                }
            }
        }
    }
    var_6d9047e5 = function_e2f9564e(3, level.var_383f3268, var_1ad7055e, var_6d9047e5);
    var_6d9047e5 = function_e2f9564e(1, level.var_244980fc, var_1ad7055e, var_6d9047e5);
    var_6d9047e5 = function_b60a680(0, 2, var_6d9047e5);
    for (i = 0; i < var_1ad7055e.size; i++) {
        player = var_1ad7055e[i];
        /#
            if (isdefined(player.var_e3096ed9)) {
                player.var_e3096ed9 = undefined;
                continue;
            }
        #/
        player function_61b78a16(var_6d9047e5[i]);
        player function_5536bd9e();
        /#
            if (!isdefined(player.pers[#"hash_7af594f055f713cf"])) {
                player.pers[#"hash_7af594f055f713cf"] = [];
                player.pers[#"hash_7af594f055f713cf"][1] = 0;
                player.pers[#"hash_7af594f055f713cf"][2] = 0;
                player.pers[#"hash_7af594f055f713cf"][3] = 0;
            }
            player.pers[#"hash_7af594f055f713cf"][var_6d9047e5[i]] = player.pers[#"hash_7af594f055f713cf"][var_6d9047e5[i]] + 1;
        #/
    }
    function_4114d883(var_1ad7055e);
    level.autoheal = 0;
    thread function_20f8f88a(5);
    level flag::set("spy_role_assigned");
    foreach (player in var_1ad7055e) {
        player clientfield::set_to_player("spyRole", player.var_d7e8ad6f);
        if (player.var_d7e8ad6f != 1) {
            foreach (spy in function_3919b452(1)) {
                objective_setinvisibletoplayer(spy.var_a08e14c4, player);
            }
            if (isdefined(level.var_5b5f82c2)) {
                objective_setinvisibletoplayer(level.var_5b5f82c2, player);
            }
        } else {
            if (isdefined(level.var_5c1616a8)) {
                objective_setinvisibletoplayer(level.var_5c1616a8, player);
            }
            player setperk(#"specialty_immunecounteruav");
        }
        player setperk(#"specialty_flakjacket");
        player setperk(#"specialty_showenemyvehicles");
        player setperk(#"specialty_showscorestreakicons");
    }
    level clientfield::set_world_uimodel("hudItems.spyMatchData.playerCount", var_1ad7055e.size);
    level clientfield::set_world_uimodel("hudItems.spyMatchData.deadPlayerCount", 0);
    countdown = 5;
    wait(countdown);
    level.var_b3df940b = [];
    level.var_d21954ef = [];
    foreach (player in var_1ad7055e) {
        if (!isdefined(player)) {
            continue;
        }
        player freezecontrols(0);
        player allowmelee(1);
        player enableweaponfire();
        player enableoffhandweapons();
        player val::reset(#"hash_25b1afa9787ccf0a", "disable_oob");
        if (function_701a9d44(player, 3) || function_701a9d44(player, 2)) {
            if (!isdefined(level.var_d21954ef)) {
                level.var_d21954ef = [];
            } else if (!isarray(level.var_d21954ef)) {
                level.var_d21954ef = array(level.var_d21954ef);
            }
            level.var_d21954ef[level.var_d21954ef.size] = player.team;
            continue;
        }
        if (!isdefined(level.var_b3df940b)) {
            level.var_b3df940b = [];
        } else if (!isarray(level.var_b3df940b)) {
            level.var_b3df940b = array(level.var_b3df940b);
        }
        level.var_b3df940b[level.var_b3df940b.size] = player.team;
        function_909b6ab("platoon_1", player.team);
    }
    util::function_d7e70327(level.var_b3df940b);
    util::function_d7e70327(level.var_d21954ef);
    foreach (player in level.players) {
        if (isdefined(player)) {
            level.var_44018194 hud_spy::set_state(player, #"combathud");
            function_4d60151c(player);
            level.var_44018194 hud_spy::function_c060174(player, var_1ad7055e.size);
            level.var_44018194 hud_spy::function_2b10da38(player, 0);
        }
    }
    level thread namespace_e51f0bc1::function_2398866a(2, undefined);
    level thread namespace_4d9a1379::function_9e75b1a6();
    function_6a1d53f3();
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x6d80a89, Offset: 0x9388
// Size: 0x154
function function_e8ea847(*winner) {
    type = round::function_3624d032();
    spies = function_3919b452(1);
    otherplayers = array::exclude(function_7a7907d4(), function_3919b452(1));
    if (type === 14) {
        thread globallogic_audio::function_61e17de0("spyRoundEncourageDoubleAgentLost", spies);
        thread globallogic_audio::function_61e17de0("spyRoundEncourageWon", otherplayers);
        return;
    }
    if (type === 12) {
        thread globallogic_audio::function_61e17de0("spyRoundEncourageDoubleAgentWon", spies);
        thread globallogic_audio::function_61e17de0("spyRoundEncourageLost", otherplayers);
        return;
    }
    if (type === 13) {
        thread globallogic_audio::function_61e17de0("spyTimesupDoubleAgent", spies);
        thread globallogic_audio::function_61e17de0("spyTimesup", otherplayers);
    }
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x4d309c44, Offset: 0x94e8
// Size: 0x12c
function function_99b429b0() {
    level endon(#"game_ended");
    player = self;
    wait(2);
    if (!isdefined(player) || isbot(player)) {
        return;
    }
    var_fba79ca = 0;
    if (!player arecontrolsfrozen()) {
        var_fba79ca = 1;
        player freezecontrols(1);
    }
    var_f68f724c = player cloneplayer(0, "none");
    if (var_fba79ca) {
        player freezecontrols(0);
    }
    var_f68f724c hide();
    var_f68f724c.team = player.team;
    level.var_a28b6edf[player getentitynumber()] = var_f68f724c;
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x81f36bc3, Offset: 0x9620
// Size: 0x19c
function onplayerdisconnect() {
    if (gamestate::is_shutting_down()) {
        return;
    }
    if (level flag::get("spy_role_assigned")) {
        self thread function_1542fb2a();
        self thread function_7ef70910();
    }
    if (isdefined(self.var_588e0374)) {
        level clientfield::set_world_uimodel("hudItems.spyMatchData." + self.var_588e0374 + ".isConnected", 0);
        level clientfield::set_world_uimodel("hudItems.spyMatchData." + self.var_588e0374 + ".clientNum", 26);
        playercount = function_7a7907d4().size;
        level clientfield::set_world_uimodel("hudItems.spyMatchData.playerCount", playercount);
        level clientfield::set_world_uimodel("hudItems.spyMatchData.deadPlayerCount", playercount - function_a1ef346b().size);
    }
    game.telemetry.var_1496a660++;
    if (isdefined(self.var_bc50b028) || !is_true(self.hasspawned)) {
        game.telemetry.var_b9b8098c++;
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0xaed01f2a, Offset: 0x97c8
// Size: 0x7c
function function_80b780f5(var_f68f724c) {
    player = self;
    var_f68f724c show();
    var_f68f724c startragdoll();
    force = (0, 0, 1);
    force *= 50;
    var_f68f724c launchragdoll(force, "torso_lower");
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x982bb6eb, Offset: 0x9850
// Size: 0x2a
function mayspawn() {
    return level.inprematchperiod === 1 || level.var_9e5563a6 !== 1;
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x461bf53c, Offset: 0x9888
// Size: 0x2a
function function_e76e0cd0() {
    return isdefined(level.var_2df66923) && level.var_2df66923 == "end";
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x7c75a789, Offset: 0x98c0
// Size: 0x18c
function function_a9490fb5() {
    players = function_7a7907d4();
    aliveplayers = function_a1ef346b();
    foreach (player in players) {
        waitframe(1);
        if (!isdefined(player)) {
            continue;
        }
        level.var_44018194 hud_spy::function_c060174(player, aliveplayers.size);
        waitframe(1);
        if (!isdefined(player)) {
            continue;
        }
        level clientfield::set_world_uimodel("hudItems.spyMatchData." + player.var_588e0374 + ".isAlive", isalive(player));
        waitframe(1);
        if (!isdefined(player)) {
            continue;
        }
        function_4d60151c(player);
    }
    level clientfield::set_world_uimodel("hudItems.spyMatchData.deadPlayerCount", players.size - aliveplayers.size);
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x723588e9, Offset: 0x9a58
// Size: 0x9c
function function_4d60151c(player) {
    level.var_44018194 hud_spy::function_341ec963(player, function_b106923d(1));
    level.var_44018194 hud_spy::function_6d5882c8(player, function_b106923d(2));
    level.var_44018194 hud_spy::function_de4daba8(player, function_b106923d(3));
}

// Namespace spy/spy
// Params 2, eflags: 0x0
// Checksum 0x46f1cc3e, Offset: 0x9b00
// Size: 0x4a
function function_7f61c43e(origin, angles) {
    level flag::set("spy_spwan_spectator");
    return globallogic_defaults::default_onspawnspectator(origin, angles);
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x97dbb09c, Offset: 0x9b58
// Size: 0x94
function function_dc7dadee() {
    time = gettime();
    var_94fab29 = player::function_51b57f72();
    while (!self player::function_114b77dd(time, var_94fab29) || !level flag::get("spy_spwan_spectator")) {
        waitframe(1);
    }
    self namespace_66d6aa44::function_684bad0f();
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x5783f23f, Offset: 0x9bf8
// Size: 0x168
function function_56626d08() {
    self endon(#"disconnect");
    level endon(#"game_ended");
    self function_dc7dadee();
    while (true) {
        if (!isdefined(self)) {
            return;
        }
        if (level flag::get("spy_role_assigned")) {
            if (!level.var_44018194 hud_spy::is_open(self)) {
                level.var_44018194 hud_spy::open(self);
            }
            self namespace_66d6aa44::function_8ec328e1(1);
            level.var_44018194 hud_spy::function_c060174(self, function_a1ef346b().size);
            function_4d60151c(self);
        }
        result = self waittill(#"spectator_cycle");
        target = result.entity;
        self function_23485579(target);
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0xb23e34fd, Offset: 0x9d68
// Size: 0x334
function function_23485579(target) {
    if (!isplayer(target) || !isdefined(target.var_588e0374)) {
        return;
    }
    if (isdefined(self.var_bc50b028) && self.var_bc50b028 != target && isdefined(self.var_bc50b028.var_4ea906ac)) {
        arrayremovevalue(self.var_bc50b028.var_4ea906ac, self);
    }
    self.var_bc50b028 = target;
    if (!isdefined(target.var_4ea906ac)) {
        target.var_4ea906ac = [];
    } else if (!isarray(target.var_4ea906ac)) {
        target.var_4ea906ac = array(target.var_4ea906ac);
    }
    if (!isinarray(target.var_4ea906ac, self)) {
        target.var_4ea906ac[target.var_4ea906ac.size] = self;
    }
    level.var_44018194 hud_spy::function_7350f1fd(self, target.var_588e0374);
    if (isdefined(level.var_ffca3315) && (level.var_ffca3315 == 7 || level.var_ffca3315 > 3)) {
        level.var_44018194 hud_spy::function_adf24ba3(self, level.var_ffca3315);
    }
    if (level flag::get("spy_role_assigned")) {
        var_7ed349ce = target function_da8679c7();
        level.var_44018194 hud_spy::function_5d23ae16(self, var_7ed349ce);
        self childthread function_6bc5f3cd(target);
        self childthread function_b3177e83(target);
        self childthread function_9adf4dd(target);
        if (var_7ed349ce == 3) {
            self childthread function_70306bdb(target);
        } else {
            level.var_44018194 hud_spy::set_state(self, #"combathud");
        }
        if (var_7ed349ce == 1) {
            self clientfield::set_to_player("show_spy_keyline", 1);
        } else {
            self clientfield::set_to_player("show_spy_keyline", 2);
        }
        return;
    }
    self childthread function_1b4baa26(target);
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0xe0b3ed0d, Offset: 0xa0a8
// Size: 0xa0
function function_9adf4dd(target) {
    self endon(#"game_ended", #"spectator_cycle", #"disconnect");
    target endon(#"death");
    while (true) {
        if (isdefined(target.var_55d4f9a8)) {
            level.dirtybombusebar dirtybomb_usebar::function_f0df5702(self, target.var_55d4f9a8);
            target.var_55d4f9a8 = undefined;
        }
        waitframe(1);
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0xbdc0c946, Offset: 0xa150
// Size: 0x158
function function_6bc5f3cd(target) {
    self endon(#"game_ended", #"spectator_cycle", #"disconnect");
    target endon(#"death");
    while (true) {
        if (target flag::get("dirtybomb_detonatingSpyMode")) {
            level.dirtybombusebar dirtybomb_usebar::set_state(self, #"hash_288548f3fca8b603");
        } else {
            target flag::wait_till("dirtybomb_detonatingSpyMode");
            if (!isdefined(self)) {
                return;
            }
            level.dirtybombusebar dirtybomb_usebar::set_state(self, #"hash_288548f3fca8b603");
        }
        target flag::wait_till_clear("dirtybomb_detonatingSpyMode");
        if (!isdefined(self)) {
            return;
        }
        if (level.dirtybombusebar dirtybomb_usebar::is_open(self)) {
            level.dirtybombusebar dirtybomb_usebar::close(self);
        }
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0xf1d0bb5a, Offset: 0xa2b0
// Size: 0x148
function function_b3177e83(target) {
    self endon(#"game_ended", #"spectator_cycle", #"disconnect");
    target endon(#"death");
    while (true) {
        if (target flag::get("dirtybomb_stopCountDown")) {
            level.dirtybombusebar dirtybomb_usebar::set_state(self, #"hash_1a2812055c330ee0");
        } else {
            target flag::wait_till("dirtybomb_stopCountDown");
            level.dirtybombusebar dirtybomb_usebar::set_state(self, #"hash_1a2812055c330ee0");
        }
        target flag::wait_till_clear("dirtybomb_stopCountDown");
        if (level.dirtybombusebar dirtybomb_usebar::is_open(self)) {
            level.dirtybombusebar dirtybomb_usebar::close(self);
        }
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0xc75b5bd4, Offset: 0xa400
// Size: 0x160
function function_70306bdb(target) {
    self endon(#"game_ended", #"spectator_cycle", #"disconnect");
    target endon(#"death");
    while (true) {
        if (target flag::get("selectingWantedPlayer")) {
            level.var_44018194 hud_spy::set_state(self, #"wantedordermenu");
            target flag::wait_till_clear("selectingWantedPlayer");
            level.var_44018194 hud_spy::set_state(self, #"combathud");
            continue;
        }
        level.var_44018194 hud_spy::set_state(self, #"combathud");
        target flag::wait_till("selectingWantedPlayer");
        level.var_44018194 hud_spy::set_state(self, #"wantedordermenu");
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x4456939c, Offset: 0xa568
// Size: 0x124
function function_1b4baa26(target) {
    self endon(#"spectator_cycle");
    level flag::wait_till("spy_role_assigned");
    if (isdefined(self)) {
        var_7ed349ce = target function_da8679c7();
        level.var_44018194 hud_spy::function_5d23ae16(self, var_7ed349ce);
        self childthread function_6bc5f3cd(target);
        self childthread function_b3177e83(target);
        self childthread function_9adf4dd(target);
        if (var_7ed349ce == 3) {
            self childthread function_70306bdb(target);
            return;
        }
        level.var_44018194 hud_spy::set_state(self, #"combathud");
    }
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x6d51256e, Offset: 0xa698
// Size: 0x74
function function_831cac09() {
    self endon(#"disconnect");
    level endon(#"game_ended");
    self waittill(#"begin_killcam");
    if (!isdefined(self)) {
        return;
    }
    level.var_44018194 hud_spy::set_state(self, #"hash_37663a3349e1e83c");
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x7a1272da, Offset: 0xa718
// Size: 0x200
function function_bff5aee0() {
    if (flag::get("spy_plane_active")) {
        return;
    }
    flag::set("spy_plane_active");
    level endon(#"game_ended");
    level thread namespace_e51f0bc1::function_2398866a(12);
    level thread namespace_e51f0bc1::function_4f53c9a2(14);
    players = function_a1ef346b();
    foreach (player in players) {
        if (!isdefined(player.team)) {
            continue;
        }
        function_e72ac8f4(player.team, 1);
    }
    roundtimeremaining = level.timelimit * 60;
    wait(roundtimeremaining);
    players = function_a1ef346b();
    foreach (player in players) {
        if (!isdefined(player.team)) {
            continue;
        }
        function_e72ac8f4(player.team, 0);
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x13abb7aa, Offset: 0xa920
// Size: 0xbe
function function_a72b3f71(team) {
    if (!isdefined(team)) {
        return undefined;
    }
    players = function_a1ef346b(team);
    if (players.size > 0) {
        foreach (player in players) {
            if (isdefined(player)) {
                return player;
            }
        }
    }
    return undefined;
}

// Namespace spy/spy
// Params 0, eflags: 0x4
// Checksum 0xde02d058, Offset: 0xa9e8
// Size: 0x154
function private function_2c7d73e9() {
    level endon(#"game_ended");
    level waittill(#"hash_1b006807c1efbfb");
    while (true) {
        wait(30);
        players = getplayers();
        foreach (player in players) {
            if (!isdefined(player)) {
                continue;
            }
            if (is_true(player.hasspawned)) {
                if (isalive(player)) {
                    scoreevents::processscoreevent(#"hash_417efdedd307f6bd", player);
                }
                scoreevents::processscoreevent(#"hash_22d015633f4b83b8", player);
            }
        }
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x4
// Checksum 0x661ad3a, Offset: 0xab48
// Size: 0x114
function private function_f7551e4c(attacker) {
    var_5ed12177 = self function_da8679c7();
    var_7dfc60c = attacker function_da8679c7();
    if (var_7dfc60c == 1) {
        switch (var_5ed12177) {
        case 3:
            scoreevents::processscoreevent(#"hash_140b85daf2ec2e07", attacker);
            break;
        case 2:
            scoreevents::processscoreevent(#"hash_7900f30ace13297b", attacker);
            break;
        }
        return;
    }
    if (var_5ed12177 == 1) {
        scoreevents::processscoreevent(#"hash_68fbee339244166b", attacker);
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x4
// Checksum 0x7f950f33, Offset: 0xac68
// Size: 0x248
function private function_48a1200f(attacker) {
    if (isdefined(self.attackers)) {
        var_5ed12177 = self function_da8679c7();
        foreach (player in self.attackers) {
            if (!isdefined(player)) {
                continue;
            }
            if (player == attacker) {
                continue;
            }
            playerrole = player function_da8679c7();
            if (var_5ed12177 == 1 && playerrole == 1 || var_5ed12177 != 1 && playerrole != 1) {
                continue;
            }
            damage_done = self.attackerdamage[player.clientid].damage;
            if (isdefined(player.currentweapon)) {
                function_92d1707f(#"hash_d1357992f4715f0", {#gametime:function_f8d53445(), #assistspawnid:getplayerspawnid(player), #assistspecialist:function_b14806c6(player player_role::get(), currentsessionmode()), #assistweapon:player.currentweapon.name});
            }
            player processassist(self);
        }
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x4
// Checksum 0x11488247, Offset: 0xaeb8
// Size: 0x104
function private processassist(killedplayer) {
    self endon(#"disconnect");
    killedplayer endon(#"disconnect");
    waitframe(1);
    util::waittillslowprocessallowed();
    if (!isdefined(level.teams[self.pers[#"team"]])) {
        return;
    }
    if (self.pers[#"team"] == killedplayer.pers[#"team"]) {
        return;
    }
    var_d7d627cf = self function_da8679c7() == 1 ? "spy_spy_assist_kill" : "spy_nonspy_assist_kill";
    scoreevents::processscoreevent(var_d7d627cf, self, killedplayer);
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0x230f2ddf, Offset: 0xafc8
// Size: 0x44
function function_cb429de3() {
    return teams::function_959bac94() == #"spectator" || flag::get("spy_role_assigned");
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0xaed6f5be, Offset: 0xb018
// Size: 0x170
function function_20f8f88a(seconds) {
    level endon(#"game_ended");
    level flag::wait_till("spy_role_assigned");
    foreach (player in function_3919b452(1)) {
        player clientfield::set_to_player("show_spy_numbers_fx", 1);
    }
    wait(seconds);
    foreach (player in function_3919b452(1)) {
        player clientfield::set_to_player("show_spy_numbers_fx", 0);
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x2fd08334, Offset: 0xb190
// Size: 0xbe
function wait_for_players(timeout) {
    level endon(#"game_ended");
    if (!isdefined(timeout)) {
        timeout = int(60 * 1000);
    }
    starttime = gettime();
    level.var_9072c13a = 0;
    while (!all_players_spawned()) {
        wait(0.5);
        level.var_9072c13a += 0.5;
        if (gettime() - starttime > timeout) {
            return;
        }
    }
}

// Namespace spy/spy
// Params 0, eflags: 0x4
// Checksum 0xdb616532, Offset: 0xb258
// Size: 0x12c
function private all_players_spawned() {
    var_5c6783e9 = getnumexpectedplayers(0);
    if (level.players.size < var_5c6783e9) {
        return false;
    }
    foreach (player in level.players) {
        if (player.team === #"spectator" || player.sessionstate === "disconnected") {
            continue;
        }
        if (player.hasspawned !== 1 || !isdefined(player.lastweaponchange) || player.lastweaponchange <= 0) {
            return false;
        }
    }
    return true;
}

// Namespace spy/spy
// Params 0, eflags: 0x0
// Checksum 0xcfa3a724, Offset: 0xb390
// Size: 0x5c4
function function_d0482a08() {
    var_a9afec80 = {};
    var_a9afec80.var_e394d7c0 = util::getroundsplayed();
    var_a9afec80.var_afff0ce5 = function_f8d53445();
    if (isdefined(game.telemetry.var_8b9e841f)) {
        println("RoleAssignmentInitWeight" + game.telemetry.var_8b9e841f);
        var_a9afec80.var_8b9e841f = game.telemetry.var_8b9e841f;
    }
    if (isdefined(game.telemetry.var_e72137e8)) {
        println("<unknown string>" + game.telemetry.var_e72137e8);
        var_a9afec80.var_e72137e8 = game.telemetry.var_e72137e8;
    }
    if (isdefined(game.telemetry.var_21144a84)) {
        println("<unknown string>" + game.telemetry.var_21144a84);
        var_a9afec80.var_21144a84 = game.telemetry.var_21144a84;
    }
    if (isdefined(game.telemetry.var_b02e1bf6)) {
        println("<unknown string>" + game.telemetry.var_b02e1bf6);
        var_a9afec80.var_b02e1bf6 = game.telemetry.var_b02e1bf6;
    }
    if (isdefined(game.telemetry.var_726204bf)) {
        println("<unknown string>" + game.telemetry.var_726204bf);
        var_a9afec80.var_726204bf = game.telemetry.var_726204bf;
    }
    if (isdefined(game.telemetry.var_5af269f)) {
        println("<unknown string>" + game.telemetry.var_5af269f);
        var_a9afec80.var_5af269f = game.telemetry.var_5af269f;
    }
    if (isdefined(game.telemetry.var_1496a660)) {
        println("<unknown string>" + game.telemetry.var_1496a660);
        var_a9afec80.var_1496a660 = game.telemetry.var_1496a660;
    }
    if (isdefined(game.telemetry.var_b9b8098c)) {
        println("<unknown string>" + game.telemetry.var_b9b8098c);
        var_a9afec80.var_b9b8098c = game.telemetry.var_b9b8098c;
    }
    if (isdefined(game.telemetry.var_cee82c1d)) {
        println("<unknown string>" + game.telemetry.var_cee82c1d);
        var_a9afec80.var_cee82c1d = game.telemetry.var_cee82c1d;
    }
    if (isdefined(game.telemetry.var_74b664fc)) {
        println("<unknown string>" + game.telemetry.var_74b664fc);
        var_a9afec80.var_74b664fc = game.telemetry.var_74b664fc;
    }
    if (isdefined(game.telemetry.var_f464ee1d)) {
        println("<unknown string>" + game.telemetry.var_f464ee1d);
        var_a9afec80.var_f464ee1d = game.telemetry.var_f464ee1d;
    }
    if (isdefined(game.telemetry.var_aa6fccd3)) {
        println("<unknown string>" + game.telemetry.var_aa6fccd3);
        var_a9afec80.var_aa6fccd3 = game.telemetry.var_aa6fccd3;
    }
    function_92d1707f(#"hash_40e17dc0588fd0b6", var_a9afec80);
    if (util::waslastround()) {
        var_de60698c = {};
        var_de60698c.map = hash(util::get_map_name());
        if (isdefined(game.telemetry.var_160ffca5)) {
            println("<unknown string>" + game.telemetry.var_160ffca5);
            var_de60698c.var_160ffca5 = game.telemetry.var_160ffca5;
        }
        function_92d1707f(#"hash_7b08cd7bf61bc341", var_de60698c);
    }
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x7d4b0ebf, Offset: 0xb960
// Size: 0x1f4
function function_645d656f(data) {
    if (!isdefined(data.victim) || !isplayer(data.victim)) {
        return;
    }
    var_5a1edd = {};
    var_9933416a = data.victim.pers[#"telemetry"].var_d7e8ad6f;
    if (isdefined(var_9933416a)) {
        var_5a1edd.var_3f980f2b = var_9933416a;
    }
    var_9933416a = data.victim.pers[#"telemetry"].var_d7e8ad6f;
    if (isdefined(var_9933416a)) {
        var_5a1edd.var_3f980f2b = var_9933416a;
    }
    if (isdefined(data.attacker) && isplayer(data.attacker)) {
        var_d387a62e = data.attacker.pers[#"telemetry"].var_d7e8ad6f;
        if (isdefined(var_d387a62e)) {
            var_5a1edd.var_458292fc = var_d387a62e;
        }
    }
    if (isdefined(data.weapon)) {
        var_5a1edd.var_e61476c4 = data.weapon.name;
    }
    var_5a1edd.means_of_death = hash(isdefined(data.smeansofdeath) ? data.smeansofdeath : "");
    var_5a1edd.var_6b9d614a = function_f8d53445();
    data.victim function_678f57c8(#"hash_73daf022e6184456", var_5a1edd);
}

/#

    // Namespace spy/spy
    // Params 0, eflags: 0x4
    // Checksum 0xaa0ea2f5, Offset: 0xbb60
    // Size: 0x12c
    function private init_devgui() {
        util::init_dvar("<unknown string>", "<unknown string>", &function_5d988ad9);
        util::init_dvar("<unknown string>", "<unknown string>", undefined);
        util::waittill_can_add_debug_command();
        adddebugcommand("<unknown string>" + "<unknown string>" + "<unknown string>" + 1 + "<unknown string>");
        adddebugcommand("<unknown string>" + "<unknown string>" + "<unknown string>" + 2 + "<unknown string>");
        adddebugcommand("<unknown string>" + "<unknown string>" + "<unknown string>" + 3 + "<unknown string>");
    }

    // Namespace spy/spy
    // Params 1, eflags: 0x4
    // Checksum 0xb2140aec, Offset: 0xbc98
    // Size: 0x1bc
    function private function_5d988ad9(dvar) {
        if (dvar.value != "<unknown string>") {
            var_a2304aa8 = int(getdvar(#"hash_11f8f3680dea55fd"));
            foreach (player in level.players) {
                if (!isbot(player)) {
                    if (isdefined(var_a2304aa8) && isdefined(player.var_588e0374) && var_a2304aa8 > 0 && var_a2304aa8 <= 25) {
                        if (var_a2304aa8 == player.var_588e0374) {
                            player.var_e3096ed9 = int(dvar.value);
                            break;
                        }
                        continue;
                    }
                    player.var_e3096ed9 = int(dvar.value);
                }
            }
            setdvar(dvar.name, "<unknown string>");
            setdvar(#"hash_11f8f3680dea55fd", "<unknown string>");
        }
    }

#/
