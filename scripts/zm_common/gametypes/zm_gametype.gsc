// Atian COD Tools GSC CW decompiler test
#using script_4194df57536e11ed;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_game_module.gsc;
#using scripts\zm_common\zm_blockers.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\zm.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\zm_common\gametypes\spawning.gsc;
#using scripts\zm_common\gametypes\hud_message.gsc;
#using scripts\zm_common\gametypes\globallogic_utils.gsc;
#using scripts\zm_common\gametypes\globallogic_ui.gsc;
#using scripts\zm_common\gametypes\globallogic_spawn.gsc;
#using scripts\zm_common\gametypes\globallogic_score.gsc;
#using scripts\zm_common\gametypes\globallogic_defaults.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\gamestate_util.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_gametype;

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x5
// Checksum 0x8c00b81e, Offset: 0x5f8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_gametype", &preinit, undefined, undefined, undefined);
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x6 linked
// Checksum 0x8c241de9, Offset: 0x640
// Size: 0x24
function private preinit() {
    callback::on_connecting(&menu_onplayerconnect);
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0xabd425ab, Offset: 0x670
// Size: 0x5e4
function main() {
    globallogic::init();
    globallogic_setupdefault_zombiecallbacks();
    menu_init();
    util::registerroundlimit(1, 1);
    util::registertimelimit(0, 0);
    util::registerscorelimit(0, 0);
    util::registerroundwinlimit(0, 0);
    util::registernumlives(1, 1);
    globallogic::registerfriendlyfiredelay(level.gametype, 15, 0, 1440);
    level.takelivesondeath = 1;
    level.teambased = 1;
    level.disablemomentum = 1;
    level.overrideteamscore = 0;
    level.overrideplayerscore = 0;
    level.displayhalftimetext = 0;
    level.displayroundendtext = 0;
    level.allowannouncer = 0;
    level.endgameonscorelimit = 0;
    level.endgameontimelimit = 0;
    level.resetplayerscoreeveryround = 1;
    level.doprematch = 0;
    level.cumulativeroundscores = 1;
    level.forceautoassign = 1;
    level.dontshowendreason = 1;
    level.forceallallies = 1;
    level.allow_teamchange = 0;
    setdvar(#"scr_disable_team_selection", 1);
    setdvar(#"scr_disable_weapondrop", 1);
    level.onstartgametype = &onstartgametype;
    level.onspawnplayer = &globallogic::blank;
    level.onspawnplayerunified = &onspawnplayerunified;
    level.onroundendgame = &onroundendgame;
    level.playermayspawn = &mayspawn;
    game.zm_roundlimit = 1;
    game.zm_scorelimit = 1;
    game._team1_num = 0;
    game._team2_num = 0;
    map_name = level.script;
    mode = util::get_game_type();
    if ((!isdefined(mode) || mode == "") && isdefined(level.default_game_mode)) {
        mode = level.default_game_mode;
    }
    zm_utility::set_gamemode_var_once("mode", mode);
    if (!isdefined(game.side_selection)) {
        game.side_selection = 1;
    }
    location = level.default_start_location;
    zm_utility::set_gamemode_var_once("location", location);
    zm_utility::set_gamemode_var_once("randomize_mode", getdvarint(#"zm_rand_mode", 0));
    zm_utility::set_gamemode_var_once("randomize_location", getdvarint(#"zm_rand_loc", 0));
    zm_utility::set_gamemode_var_once("team_1_score", 0);
    zm_utility::set_gamemode_var_once("team_2_score", 0);
    zm_utility::set_gamemode_var_once("current_round", 0);
    zm_utility::set_gamemode_var_once("rules_read", 0);
    if (!isdefined(game.switchedsides)) {
        game.switchedsides = 0;
    }
    gametype = util::get_game_type();
    game.dialog[#"gametype"] = gametype + "_start";
    game.dialog[#"gametype_hardcore"] = gametype + "_start";
    game.dialog[#"offense_obj"] = "generic_boost";
    game.dialog[#"defense_obj"] = "generic_boost";
    zm_utility::set_gamemode_var("pre_init_zombie_spawn_func", undefined);
    zm_utility::set_gamemode_var("post_init_zombie_spawn_func", undefined);
    zm_utility::set_gamemode_var("match_end_notify", undefined);
    zm_utility::set_gamemode_var("match_end_func", undefined);
    callback::on_connect(&onplayerconnect_check_for_hotjoin);
    callback::add_callback(#"on_host_migration_end", &on_host_migration_end);
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0xe258420c, Offset: 0xc60
// Size: 0x4bc
function globallogic_setupdefault_zombiecallbacks() {
    level.spawnplayer = &globallogic_spawn::spawnplayer;
    level.spawnplayerprediction = &globallogic_spawn::spawnplayerprediction;
    level.spawnclient = &globallogic_spawn::spawnclient;
    level.spawnspectator = &globallogic_spawn::spawnspectator;
    level.spawnintermission = &globallogic_spawn::spawnintermission;
    level.scoreongiveplayerscore = &globallogic_score::giveplayerscore;
    level.onplayerscore = &globallogic_score::default_onplayerscore;
    level.onteamscore = &globallogic::blank;
    level.wavespawntimer = &globallogic::wavespawntimer;
    level.onspawnplayer = &globallogic::blank;
    level.onspawnplayerunified = &globallogic::blank;
    level.onspawnspectator = &onspawnspectator;
    level.onspawnintermission = &onspawnintermission;
    level.onrespawndelay = &globallogic::blank;
    level.onforfeit = &globallogic::blank;
    level.ontimelimit = &globallogic::blank;
    level.onscorelimit = &globallogic::blank;
    level.ondeadevent = &ondeadevent;
    level.ononeleftevent = &globallogic::blank;
    level.giveteamscore = &globallogic::blank;
    level.gettimepassed = &globallogic_utils::gettimepassed;
    level.gettimeremaining = &globallogic_utils::gettimeremaining;
    level.gettimelimit = &globallogic_defaults::default_gettimelimit;
    level.getteamkillpenalty = &globallogic::blank;
    level.getteamkillscore = &globallogic::blank;
    level.iskillboosting = &globallogic::blank;
    level._setteamscore = &globallogic_score::_setteamscore;
    level._setplayerscore = &globallogic::blank;
    level._getteamscore = &globallogic::blank;
    level._getplayerscore = &globallogic::blank;
    level.onprecachegametype = &globallogic::blank;
    level.onstartgametype = &globallogic::blank;
    level.onplayerconnect = &globallogic::blank;
    level.onplayerdisconnect = &onplayerdisconnect;
    level.onplayerdamage = &globallogic::blank;
    level.onplayerkilled = &globallogic::blank;
    level.onplayerkilledextraunthreadedcbs = [];
    level.onteamoutcomenotify = &globallogic::blank;
    level.onoutcomenotify = &globallogic::blank;
    level.onendgame = &onendgame;
    level.onroundendgame = &globallogic::blank;
    level.onmedalawarded = &globallogic::blank;
    level.dogmanagerongetdogs = &globallogic::blank;
    level.autoassign = &globallogic_ui::menuautoassign;
    level.spectator = &globallogic_ui::menuspectator;
    level.allies = &menuallieszombies;
    level.teammenu = &globallogic_ui::menuteam;
    level.autocontrolplayer = &globallogic_ui::menuautocontrolplayer;
    level.callbackactorkilled = &globallogic::blank;
    level.callbackvehicledamage = &globallogic::blank;
    level.callbackvehiclekilled = &globallogic::blank;
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x0
// Checksum 0x6f589951, Offset: 0x1128
// Size: 0x5e
function do_game_mode_shellshock() {
    self endon(#"disconnect");
    self._being_shellshocked = 1;
    self shellshock(#"grief_stab_zm", 0.75);
    wait(0.75);
    self._being_shellshocked = 0;
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0x17a439af, Offset: 0x1190
// Size: 0x6
function canplayersuicide() {
    return false;
}

// Namespace zm_gametype/zm_gametype
// Params 1, eflags: 0x2 linked
// Checksum 0xfecf6c77, Offset: 0x11a0
// Size: 0x24
function on_host_migration_end(*params) {
    level zm_player::function_8ef51109();
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0x1ec46eb7, Offset: 0x11d0
// Size: 0x5c
function onplayerdisconnect() {
    if (gamestate::is_shutting_down()) {
        return;
    }
    if (isdefined(level.var_7b27c856)) {
        level [[ level.var_7b27c856 ]](self);
    }
    level zm_player::function_8ef51109(self);
}

// Namespace zm_gametype/zm_gametype
// Params 1, eflags: 0x2 linked
// Checksum 0x1be7ea4f, Offset: 0x1238
// Size: 0x2c
function ondeadevent(*team) {
    thread globallogic::endgame(level.zombie_team, "");
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0x9cf781f9, Offset: 0x1270
// Size: 0xd4
function onspawnintermission() {
    spawnpointname = "info_intermission";
    spawnpoints = getentarray(spawnpointname, "classname");
    if (spawnpoints.size < 1) {
        println("stand" + spawnpointname + "closeLoadingMovie");
        return;
    }
    spawnpoint = spawnpoints[randomint(spawnpoints.size)];
    if (isdefined(spawnpoint)) {
        self spawn(spawnpoint.origin, spawnpoint.angles);
    }
}

// Namespace zm_gametype/zm_gametype
// Params 2, eflags: 0x2 linked
// Checksum 0x6e7b5b17, Offset: 0x1350
// Size: 0x14
function onspawnspectator(*origin, *angles) {
    
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0x96e32da1, Offset: 0x1370
// Size: 0x76
function mayspawn() {
    if (isdefined(level.custommayspawnlogic)) {
        return self [[ level.custommayspawnlogic ]]();
    }
    if (self.pers[#"lives"] === 0) {
        level notify(#"player_eliminated");
        self notify(#"player_eliminated");
        return 0;
    }
    return 1;
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0xac95cadb, Offset: 0x13f0
// Size: 0x17c
function onstartgametype() {
    setclientnamemode("auto_change");
    level.spawnmins = (0, 0, 0);
    level.spawnmaxs = (0, 0, 0);
    structs = struct::get_array("player_respawn_point", "targetname");
    foreach (struct in structs) {
        level.spawnmins = math::expand_mins(level.spawnmins, struct.origin);
        level.spawnmaxs = math::expand_maxs(level.spawnmaxs, struct.origin);
    }
    level.mapcenter = math::find_box_center(level.spawnmins, level.spawnmaxs);
    setmapcenter(level.mapcenter);
    spawning::create_map_placed_influencers();
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0x489ef00c, Offset: 0x1578
// Size: 0x1c
function onspawnplayerunified() {
    onspawnplayer(0);
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0xec0816c3, Offset: 0x15a0
// Size: 0x2f2
function onfindvalidspawnpoint() {
    println("<unknown string>");
    if (level flag::get("begin_spawning")) {
        spawnpoint = zm_player::check_for_valid_spawn_near_team(self, 1);
        /#
            if (!isdefined(spawnpoint)) {
                println("<unknown string>");
            }
        #/
    }
    if (!isdefined(spawnpoint)) {
        match_string = "";
        location = level.scr_zm_map_start_location;
        if ((location == "default" || location == "") && isdefined(level.default_start_location)) {
            location = level.default_start_location;
        }
        match_string = level.scr_zm_ui_gametype + "_" + location;
        spawnpoints = [];
        structs = struct::get_array("initial_spawn", "script_noteworthy");
        if (isdefined(structs)) {
            foreach (struct in structs) {
                if (isdefined(struct.script_string)) {
                    tokens = strtok(struct.script_string, " ");
                    foreach (token in tokens) {
                        if (token == match_string) {
                            spawnpoints[spawnpoints.size] = struct;
                        }
                    }
                }
            }
        }
        if (!isdefined(spawnpoints) || spawnpoints.size == 0) {
            spawnpoints = struct::get_array("initial_spawn_points", "targetname");
        }
        assert(isdefined(spawnpoints), "<unknown string>");
        spawnpoint = zm_player::getfreespawnpoint(spawnpoints, self);
    }
    return spawnpoint;
}

// Namespace zm_gametype/zm_gametype
// Params 1, eflags: 0x2 linked
// Checksum 0x610d497, Offset: 0x18a0
// Size: 0x3bc
function onspawnplayer(predictedspawn = 0) {
    self.usingobj = undefined;
    self.is_zombie = 0;
    zm_player::updateplayernum(self);
    if (isdefined(level.custom_spawnplayer) && is_true(self.player_initialized)) {
        self [[ level.custom_spawnplayer ]]();
        return;
    }
    if (isdefined(level.customspawnlogic)) {
        println("<unknown string>");
        spawnpoint = self [[ level.customspawnlogic ]](predictedspawn);
        if (predictedspawn) {
            return;
        }
    } else {
        println("<unknown string>");
        spawnpoint = self onfindvalidspawnpoint();
        if (predictedspawn) {
            self predictspawnpoint(spawnpoint.origin, spawnpoint.angles);
            return;
        } else {
            self spawn(spawnpoint.origin, spawnpoint.angles, "zsurvival");
        }
    }
    self.entity_num = self getentitynumber();
    self thread zm_player::onplayerspawned();
    self thread zm_player::player_revive_monitor();
    self val::set(#"onspawnplayer", "freezecontrols");
    self val::set(#"onspawnplayer", "disablegadgets");
    self.spectator_respawn = spawnpoint;
    self.score = self globallogic_score::getpersstat(#"score");
    self.pers[#"participation"] = 0;
    /#
        if (getdvarint(#"zombie_cheat", 0) >= 1) {
            self.score = 100000;
        }
    #/
    self.score_total = self.score;
    self.old_score = self.score;
    self.player_initialized = 0;
    self.zombification_time = 0;
    self thread zm_blockers::rebuild_barrier_reward_reset();
    if (!is_true(level.host_ended_game)) {
        self val::reset(#"onspawnplayer", "freezecontrols");
        self val::reset(#"onspawnplayer", "disablegadgets");
        self enableweapons();
    }
    if (isdefined(level.var_ce6bb796)) {
        spawn_in_spectate = [[ level.var_ce6bb796 ]]();
        if (spawn_in_spectate) {
            self util::delay(0.05, undefined, &zm_player::spawnspectator);
        }
    }
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0xb5e1641e, Offset: 0x1c68
// Size: 0x202
function get_player_spawns_for_gametype() {
    a_s_player_spawns = [];
    a_structs = struct::get_array("player_respawn_point", "targetname");
    foreach (struct in a_structs) {
        if (isdefined(struct.script_string)) {
            var_61fc7c84 = strtok(struct.script_string, " ");
            foreach (var_5d975b01 in var_61fc7c84) {
                if (var_5d975b01 == level.scr_zm_ui_gametype) {
                    if (!isdefined(a_s_player_spawns)) {
                        a_s_player_spawns = [];
                    } else if (!isarray(a_s_player_spawns)) {
                        a_s_player_spawns = array(a_s_player_spawns);
                    }
                    a_s_player_spawns[a_s_player_spawns.size] = struct;
                }
            }
            continue;
        }
        if (!isdefined(a_s_player_spawns)) {
            a_s_player_spawns = [];
        } else if (!isarray(a_s_player_spawns)) {
            a_s_player_spawns = array(a_s_player_spawns);
        }
        a_s_player_spawns[a_s_player_spawns.size] = struct;
    }
    return a_s_player_spawns;
}

// Namespace zm_gametype/zm_gametype
// Params 1, eflags: 0x2 linked
// Checksum 0x6dea1b37, Offset: 0x1e78
// Size: 0xc
function onendgame(*winningteam) {
    
}

// Namespace zm_gametype/zm_gametype
// Params 1, eflags: 0x2 linked
// Checksum 0x4803ef65, Offset: 0x1e90
// Size: 0x102
function onroundendgame(*roundwinner) {
    if (game.stat[#"roundswon"][#"allies"] == game.stat[#"roundswon"][#"axis"]) {
        winner = "tie";
    } else if (game.stat[#"roundswon"][#"axis"] > game.stat[#"roundswon"][#"allies"]) {
        winner = #"axis";
    } else {
        winner = #"allies";
    }
    return winner;
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0x2abd2a4a, Offset: 0x1fa0
// Size: 0x1ec
function menu_init() {
    game.menu = [];
    game.menu[#"menu_team"] = "ChangeTeam";
    game.menu[#"menu_changeclass_allies"] = "ChooseClass_InGame";
    game.menu[#"menu_initteam_allies"] = "initteam_marines";
    game.menu[#"menu_changeclass_axis"] = "ChooseClass_InGame";
    game.menu[#"menu_initteam_axis"] = "initteam_opfor";
    game.menu[#"menu_class"] = "class";
    game.menu[#"menu_start_menu"] = "StartMenu_Main";
    game.menu[#"menu_changeclass"] = "PositionDraft";
    game.menu[#"menu_changeclass_offline"] = "PositionDraft";
    game.menu[#"menu_changeclass_custom"] = "PositionDraft";
    game.menu[#"menu_draft"] = "PositionDraft";
    game.menu[#"menu_controls"] = "ingame_controls";
    game.menu[#"menu_options"] = "ingame_options";
    game.menu[#"menu_leavegame"] = "popup_leavegame";
    game.menu[#"menu_restartgamepopup"] = "T7Hud_zm_factory";
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0xffdce6a, Offset: 0x2198
// Size: 0x1c
function menu_onplayerconnect() {
    self thread menu_onmenuresponse();
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0xab381645, Offset: 0x21c0
// Size: 0x4c
function zm_map_restart() {
    self endon(#"disconnect");
    while (!function_65f7de49()) {
        waitframe(1);
    }
    map_restart(1);
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0xfae50020, Offset: 0x2218
// Size: 0x8bc
function menu_onmenuresponse() {
    self endon(#"disconnect");
    for (;;) {
        waitresult = self waittill(#"menuresponse");
        menu = waitresult.menu;
        response = waitresult.response;
        intval = waitresult.intpayload;
        if (response == "back") {
            self closeingamemenu();
            if (level.console) {
                if (menu == game.menu[#"menu_changeclass"] || menu == game.menu_changeclass_offline || menu == game.menu[#"menu_team"] || menu == game.menu[#"menu_controls"]) {
                    if (self.pers[#"team"] == #"allies") {
                        self openmenu(game.menu[#"menu_start_menu"]);
                    }
                    if (self.pers[#"team"] == #"axis") {
                        self openmenu(game.menu[#"menu_start_menu"]);
                    }
                }
            }
            continue;
        }
        if (response == "changeteam" && level.allow_teamchange) {
            self closeingamemenu();
            self openmenu(game.menu[#"menu_team"]);
        }
        if (response == "changeclass_marines") {
            self closeingamemenu();
            self openmenu(game.menu[#"menu_changeclass_allies"]);
            continue;
        }
        if (response == "changeclass_opfor") {
            self closeingamemenu();
            self openmenu(game.menu[#"menu_changeclass_axis"]);
            continue;
        }
        if (response == "changeclass_custom") {
            self closeingamemenu();
            self openmenu(game.menu[#"menu_changeclass_custom"]);
            continue;
        }
        if (response == "changeclass_marines_splitscreen") {
            self openmenu("changeclass_marines_splitscreen");
        }
        if (response == "changeclass_opfor_splitscreen") {
            self openmenu("changeclass_opfor_splitscreen");
        }
        if (!isdedicated() && self ishost()) {
            if (response == "endgame") {
                if (self issplitscreen()) {
                    level.skipvote = 1;
                    if (!is_true(level.gameended)) {
                        self zm_laststand::add_weighted_down();
                        self zm_stats::increment_client_stat("deaths");
                        self zm_stats::increment_player_stat("deaths");
                        level.host_ended_game = 1;
                        foreach (player in getplayers()) {
                            player val::set(#"game_end", "freezecontrols");
                            player val::set(#"game_end", "disablegadgets");
                        }
                        level notify(#"end_game");
                    }
                }
                continue;
            }
            if (response == "endround") {
                if (!is_true(level.gameended)) {
                    self globallogic::gamehistoryplayerquit();
                    self zm_laststand::add_weighted_down();
                    self closeingamemenu();
                    level.host_ended_game = 1;
                    foreach (player in getplayers()) {
                        player val::set(#"game_end", "freezecontrols");
                        player val::set(#"game_end", "disablegadgets");
                    }
                    level notify(#"end_game");
                } else {
                    self closeingamemenu();
                    self iprintln(#"hash_6e4cedc56165f367");
                }
                continue;
            }
        }
        if (response == "hide_class_select_slideout") {
            self notify(#"hide_class_select_slideout");
        } else if (response == "show_class_select_slideout") {
            self notify(#"show_class_select_slideout");
        }
        if (menu == game.menu[#"menu_team"] && level.allow_teamchange) {
            switch (response) {
            case #"allies":
                self [[ level.allies ]]();
                break;
            case #"axis":
                self [[ level.teammenu ]](response);
                break;
            case #"autoassign":
                self [[ level.autoassign ]](1);
                break;
            case #"spectator":
                self [[ level.spectator ]]();
                break;
            }
            continue;
        }
        if (menu == game.menu[#"menu_changeclass"] || menu == game.menu[#"menu_changeclass_offline"] || menu == game.menu[#"menu_changeclass_custom"]) {
            self closeingamemenu();
            self.selectedclass = 1;
            self [[ level.curclass ]](response);
        }
    }
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0xb060d0b1, Offset: 0x2ae0
// Size: 0x1ee
function menuallieszombies() {
    if (!level.console && !level.allow_teamchange && isdefined(self.hasdonecombat) && self.hasdonecombat) {
        return;
    }
    if (self.pers[#"team"] != #"allies") {
        if (level.ingraceperiod && (!isdefined(self.hasdonecombat) || !self.hasdonecombat)) {
            self.hasspawned = 0;
        }
        if (self.sessionstate == "playing") {
            self.switching_teams = 1;
            self.joining_team = #"allies";
            self.leaving_team = self.pers[#"team"];
            self suicide();
        }
        self.pers[#"team"] = #"allies";
        self.team = #"allies";
        self.pers[#"class"] = undefined;
        self.curclass = undefined;
        self.pers[#"weapon"] = undefined;
        self.pers[#"savedmodel"] = undefined;
        self.sessionteam = #"allies";
        self player::function_466d8a4b(0);
        self notify(#"end_respawn");
    }
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0xb580db49, Offset: 0x2cd8
// Size: 0x34
function custom_spawn_init_func() {
    array::thread_all(level.zombie_spawners, &spawner::add_spawn_function, level._zombies_round_spawn_failsafe);
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x0
// Checksum 0xee99b25, Offset: 0x2d18
// Size: 0x5c
function init() {
    level flag::init("pregame");
    level flag::set("pregame");
    level thread onplayerconnect();
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0xd1bba0a1, Offset: 0x2d80
// Size: 0x78
function onplayerconnect() {
    for (;;) {
        waitresult = level waittill(#"connected");
        waitresult.player thread onplayerspawned();
        if (isdefined(level.var_2742b26e)) {
            waitresult.player [[ level.var_2742b26e ]]();
        }
    }
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0xd00fb5b3, Offset: 0x2e00
// Size: 0x234
function onplayerspawned() {
    level endon(#"end_game");
    self endon(#"disconnect");
    for (;;) {
        self waittill(#"spawned_player", #"fake_spawned_player");
        if (is_true(level.match_is_ending)) {
            return;
        }
        if (self laststand::player_is_in_laststand()) {
            self thread zm_laststand::auto_revive(self);
        }
        if (isdefined(level.var_3129849c)) {
            self [[ level.var_3129849c ]]();
        }
        self setstance("stand");
        self.zmbdialogqueue = [];
        self.zmbdialogactive = 0;
        self.zmbdialoggroups = [];
        self.zmbdialoggroup = "";
        self takeallweapons();
        self giveweapon(level.weaponbasemelee);
        if (isdefined(level.onplayerspawned_restore_previous_weapons) && is_true(level.isresetting_grief)) {
            weapons_restored = self [[ level.onplayerspawned_restore_previous_weapons ]]();
        }
        if (!is_true(weapons_restored)) {
            self zm_loadout::give_start_weapon(1);
        }
        weapons_restored = 0;
        if (isdefined(level._team_loadout)) {
            self giveweapon(level._team_loadout);
            self switchtoweapon(level._team_loadout);
        }
        if (isdefined(level.var_3c7ec322)) {
            self [[ level.var_3c7ec322 ]]();
        }
    }
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0x35d2779f, Offset: 0x3040
// Size: 0x13c
function onplayerconnect_check_for_hotjoin() {
    /#
        if (getdvarint(#"zm_instajoin", 0) > 0) {
            return;
        }
    #/
    gametype = hash(util::get_game_type());
    if (gametype == #"zsurvival") {
        if (level flag::get("start_zombie_round_logic")) {
            music::setmusicstate("none", self);
        }
        if (isdefined(level.contentmanager.activeobjective)) {
            self thread player_hotjoin();
        }
        return;
    }
    if (level flag::get("start_zombie_round_logic") && !is_true(level.var_e52901a5)) {
        self thread player_hotjoin();
    }
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0x679eeaeb, Offset: 0x3188
// Size: 0x304
function player_hotjoin() {
    self endon(#"disconnect");
    self.rebuild_barrier_reward = 1;
    self.is_hotjoining = 1;
    val::set(#"initial_black", "hide");
    val::set(#"initial_black", "takedamage", 0);
    val::set(#"initial_black", "ignoreme");
    val::set(#"initial_black", "freezecontrols");
    wait(0.5);
    self zm_player::spawnspectator();
    if (zm_utility::is_survival()) {
        self clientfield::set_player_uimodel("hudItems.zombiesSurvivalRespawn", 1);
    }
    self.is_hotjoining = 0;
    self.is_hotjoin = 1;
    if (is_true(level.intermission) || is_true(level.host_ended_game)) {
        self setclientthirdperson(0);
        self resetfov();
        self.health = 100;
        self thread [[ level.custom_intermission ]]();
    }
    self util::streamer_wait(undefined, 0, 30);
    if (isdefined(level.var_58d27156)) {
        wait(level.var_58d27156);
    }
    initialblackend();
    val::reset(#"initial_black", "hide");
    val::reset(#"initial_black", "takedamage");
    val::reset(#"initial_black", "freezecontrols");
    val::reset(#"initial_black", "ignoreme");
    if (zm_utility::is_survival()) {
        var_2629b314 = globallogic_spawn::timeuntilspawn();
        wait(var_2629b314);
        self zm_player::spectator_respawn_player();
    }
}

// Namespace zm_gametype/zm_gametype
// Params 0, eflags: 0x2 linked
// Checksum 0x5907ae42, Offset: 0x3498
// Size: 0x24
function initialblackend() {
    self clientfield::set_player_uimodel("closeLoadingMovie", 1);
}

// Namespace zm_gametype/zm_gametype
// Params 1, eflags: 0x4
// Checksum 0x822a1474, Offset: 0x34c8
// Size: 0x20
function private function_788fb510(value) {
    if (!isdefined(value)) {
        return "";
    }
    return value;
}

