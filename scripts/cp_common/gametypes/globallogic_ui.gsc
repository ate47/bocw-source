// Atian COD Tools GSC CW decompiler test
#using script_13114d8a31c6152a;
#using scripts\cp_common\util.gsc;
#using script_4ccd0c3512b52a10;
#using script_35ae72be7b4fec10;
#using script_1478fbd17fe393cf;
#using script_32399001bdb550da;
#using scripts\cp_common\gametypes\loadout.gsc;
#using scripts\cp_common\gametypes\globallogic_player.gsc;
#using scripts\cp_common\gametypes\globallogic.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\spectating.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\hud_util_shared.gsc;
#using scripts\core_common\hud_message_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using script_4194df57536e11ed;
#using script_25db7030b1397730;

#namespace globallogic_ui;

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0x884d90d7, Offset: 0x6c0
// Size: 0x154
function init() {
    level.var_36a4cf75 = &function_760546ce;
    level.var_84bcc5b0 = &function_75788ef4;
    level.var_e30ae574 = &function_2793ce76;
    level.var_659c87ff = &function_760546ce;
    transient = savegame::function_6440b06b(#"transient");
    transient.var_c42c3d = [];
    level flag::init("all_players_class_choice_completed");
    thread function_1cb458b4();
    callback::add_callback(#"on_player_spawned", &on_player_spawn);
    clientfield::register_clientuimodel("hudItems.playerInCombat", 1, 1, "int");
    clientfield::register_clientuimodel("hudItems.serverDifficulty", 1, 3, "int");
    function_11bcbb57();
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0x54d10317, Offset: 0x820
// Size: 0x2c
function function_11bcbb57() {
    lui::add_luimenu("cpChyron", &cp_chyron::register);
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0x124c8eee, Offset: 0x858
// Size: 0xe4
function on_player_spawn() {
    self thread function_36e052();
    self thread function_261cbef4();
    if (!is_true(level.var_2ca580c2) || isbot(self)) {
        self function_251fa54a();
    }
    assert(isdefined(level.gameskill));
    self clientfield::set_player_uimodel("hudItems.serverDifficulty", level.gameskill);
    self setclientuivisibilityflag("radar_client", 1);
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x6 linked
// Checksum 0x6f4073b4, Offset: 0x948
// Size: 0x84
function private function_36e052() {
    self endon(#"death");
    while (true) {
        ent_num = self function_f053dcd4("hudItems.crosshairEntity");
        if (isdefined(ent_num)) {
            level.var_7315ba31 = getentbynum(ent_num);
        } else {
            level.var_7315ba31 = undefined;
        }
        waitframe(1);
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x6 linked
// Checksum 0x11d07bc9, Offset: 0x9d8
// Size: 0x1ec
function private function_1cb458b4() {
    function_3e57e536();
    thread function_109202c3(1);
    while (true) {
        level waittill(#"save_restore");
        setdvar(#"ui_busyblockingamemenu", 0);
        level flag::set(#"hash_321357f5b78401ef");
        level.var_6ca9b5fe = gettime();
        function_3e57e536(1);
        function_3f278444();
        player = getplayers()[0];
        foreach (alias, luimenu in level.luimenus) {
            if (alias != "InitialBlack") {
                var_5f6d4251 = luimenu.var_779239b4 && !player flag::get(luimenu.var_6fba7045);
                if ([[ luimenu ]]->function_7bfd10e6(player)) {
                    [[ luimenu ]]->close_luielem(player);
                }
                if (var_5f6d4251) {
                    player thread function_5e65cc6f(luimenu);
                }
            }
        }
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0x377a7c71, Offset: 0xbd0
// Size: 0x74
function function_5e65cc6f(luimenu) {
    util::wait_network_frame(2);
    if (!is_true(luimenu.var_779239b4) && !self flag::get(luimenu.var_6fba7045)) {
        [[ luimenu ]]->open_luielem(self);
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0xef3e98b, Offset: 0xc50
// Size: 0x1c4
function function_760546ce() {
    level flag::set("restoring_ui_models");
    level flag::set("level_restarting");
    level.var_815395f5 = 1;
    player = getplayers()[0];
    if (isdefined(player)) {
        player flag::set("level_restarting");
    }
    namespace_61e6d095::remove_all();
    namespace_96850e69::remove_all();
    waitframe(1);
    function_3e57e536(1);
    savegame::function_6440b06b(#"transient").var_c42c3d = [];
    if (isdefined(player.var_c341be0e)) {
        player setluimenudata(player.var_c341be0e, #"hash_6437862a5ea9ee0d", #"");
        player setluimenudata(player.var_c341be0e, #"hash_76be1320dd574b24", #"");
        player closemenu("CPMissionFailed");
    }
    level flag::clear("restoring_ui_models");
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x6 linked
// Checksum 0x25fc9611, Offset: 0xe20
// Size: 0x4bc
function private function_3e57e536(set) {
    if (is_true(set)) {
        level flag::set("restoring_ui_models");
        function_9ed5232e("hudItems.cpObjectiveUiData.compassMessage", #"", 1, undefined, undefined, undefined, undefined, 1);
        function_9ed5232e("hudItems.cpObjectiveUiData.compassState", 0, 1, undefined, undefined, undefined, undefined, 1);
        function_9ed5232e("hudItems.cpObjectiveUiData.showHideHint", 0, 1, undefined, undefined, undefined, undefined, 1);
        function_9ed5232e("hudItems.cpObjectiveUiData.splash", 0, 1, undefined, undefined, undefined, undefined, 1);
        function_9ed5232e("hudItems.cpObjectiveUiData.updateList", 0, 1, undefined, undefined, undefined, undefined, 1);
        function_9ed5232e("hudItems.subtitles.noAutoHide", 0, undefined, undefined, undefined, undefined, 1);
        function_9ed5232e("hudItems.cpHudFadeControl.doFadeOut", 0, undefined, undefined, undefined, undefined, undefined, 1);
        function_9ed5232e("hudItems.hideWaypoints", 0, undefined, undefined, undefined, undefined, undefined, 1);
        function_9ed5232e("ActorOverheadNames.0.overrideName", "", undefined, undefined, undefined, undefined, undefined, 1);
        function_9ed5232e("ActorOverheadNames.0.overrideTeam", 0, undefined, undefined, undefined, undefined, undefined, 1);
        function_9ed5232e("ActorOverheadNames.0.hidden", 0, undefined, undefined, undefined, undefined, undefined, 1);
        setuimodelvalue(getuimodel(function_90d058e8(#"spy_camera"), "active"), 0);
        setuimodelvalue(getuimodel(function_90d058e8(#"spy_camera"), "stream"), 0);
        setuimodelvalue(getuimodel(function_90d058e8(#"hash_3d93adfe2bc1e980"), "active"), 0);
        setuimodelvalue(getuimodel(function_90d058e8(#"lockpick"), "active"), 0);
        setuimodelvalue(getuimodel(function_90d058e8(#"lockpick"), "stream"), 0);
        level flag::clear("restoring_ui_models");
        return;
    }
    function_52da41bb("hudItems.cpObjectiveUiData.compassMessage", #"", 1);
    function_52da41bb("hudItems.cpObjectiveUiData.compassState", 0, 1);
    function_52da41bb("hudItems.cpObjectiveUiData.showHideHint", 0, 1);
    function_52da41bb("hudItems.cpObjectiveUiData.splash", 0, 1);
    function_52da41bb("hudItems.cpObjectiveUiData.updateList", 0, 1);
    function_52da41bb("hudItems.subtitles.noAutoHide", 0);
    function_52da41bb("hudItems.cpHudFadeControl.doFadeOut", 0);
    function_52da41bb("hudItems.hideWaypoints", 0);
}

// Namespace globallogic_ui/globallogic_ui
// Params 5, eflags: 0x6 linked
// Checksum 0xef92c95e, Offset: 0x12e8
// Size: 0x19a
function private function_52da41bb(model_name, var_832d6681, var_ec71f60a, var_2226bd51, created) {
    if (level flag::get("restoring_ui_models")) {
        return;
    }
    transient = savegame::function_6440b06b(#"transient");
    if (!isdefined(transient.var_c42c3d)) {
        transient.var_c42c3d = [];
    }
    if (!isdefined(transient.var_c42c3d[model_name])) {
        transient.var_c42c3d[model_name] = spawnstruct();
    }
    transient.var_c42c3d[model_name].name = model_name;
    transient.var_c42c3d[model_name].value = var_832d6681;
    transient.var_c42c3d[model_name].global = is_true(var_ec71f60a);
    transient.var_c42c3d[model_name].var_2226bd51 = is_true(var_2226bd51);
    transient.var_c42c3d[model_name].created = is_true(transient.var_c42c3d[model_name].created) || is_true(created);
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0xc07c0811, Offset: 0x1490
// Size: 0x12c
function function_3f278444() {
    level flag::set("restoring_ui_models");
    transient = savegame::function_6440b06b(#"transient");
    if (!isdefined(transient.var_c42c3d)) {
        transient.var_c42c3d = [];
    }
    foreach (model_data in transient.var_c42c3d) {
        function_9ed5232e(model_data.name, model_data.value, model_data.global, 1, undefined, undefined, model_data.var_2226bd51);
    }
    level flag::clear("restoring_ui_models");
}

// Namespace globallogic_ui/globallogic_ui
// Params 2, eflags: 0x2 linked
// Checksum 0xc566ddde, Offset: 0x15c8
// Size: 0x1c8
function function_2ec075a9(model_name, var_c15ae58d) {
    level notify("removing_ui_model_data_" + model_name);
    if (level flag::get("restoring_ui_models")) {
        return;
    }
    transient = savegame::function_6440b06b(#"transient");
    if (!isdefined(transient.var_c42c3d)) {
        transient.var_c42c3d = [];
    }
    arrayremoveindex(transient.var_c42c3d, model_name, 1);
    if (is_true(var_c15ae58d)) {
        if (ishash(model_name)) {
            model_name = string(model_name, 16);
        }
        foreach (val in transient.var_c42c3d) {
            if (strstartswith(val.name, model_name)) {
                level notify("removing_ui_model_data_" + val.name);
                arrayremoveindex(transient.var_c42c3d, val.name, 1);
            }
        }
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 8, eflags: 0x2 linked
// Checksum 0xffb3ad79, Offset: 0x1798
// Size: 0x2b8
function function_4e49c51d(title = #"", description = #"", var_c7f36d1c = 0, var_92c0faf8, cancel_callback, callback_params, var_380e2def = #"", var_c9ec8cda = #"") {
    function_9ed5232e("cp_confirm_overlay" + ".title", title);
    function_9ed5232e("cp_confirm_overlay" + ".description", description);
    function_9ed5232e("cp_confirm_overlay" + ".disableCancel", var_c7f36d1c);
    function_9ed5232e("cp_confirm_overlay" + ".confirmText", var_380e2def);
    function_9ed5232e("cp_confirm_overlay" + ".cancelText", var_c9ec8cda);
    function_e299661a(hash("InGameConfirmOverlay"));
    function_2ec075a9("cp_confirm_overlay");
    do {
        waitresult = self waittill(#"menuresponse");
        menu = waitresult.menu;
        response = waitresult.response;
        intpayload = waitresult.intpayload;
        if (menu == "InGameConfirmOverlay" && response == "confirmresponse" && intpayload == 1) {
            if (isdefined(var_92c0faf8)) {
                self [[ var_92c0faf8 ]](callback_params);
            }
            return true;
        }
        waitframe(1);
    } while (menu != "InGameConfirmOverlay" || response != "confirmresponse");
    if (isdefined(cancel_callback)) {
        self [[ cancel_callback ]](callback_params);
    }
    return false;
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0x28110552, Offset: 0x1a58
// Size: 0x64
function function_e299661a(var_8e4097ab) {
    assert(ishash(var_8e4097ab));
    function_9ed5232e("ScriptedWidgetData.overlay", var_8e4097ab);
    function_2ec075a9("ScriptedWidgetData.overlay");
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0xa3d082d7, Offset: 0x1ac8
// Size: 0x1be
function function_8f0a7b3b(playerent) {
    ais = getaiteamarray(util::getotherteam(playerent.team));
    ais = arraycombine(ais, getaiteamarray(#"team3"), 0, 0);
    foreach (ai in ais) {
        if (issentient(ai)) {
            if (ai attackedrecently(playerent, 10)) {
                return true;
            }
            if (ai.enemy === playerent && isdefined(ai.weapon) && ai.weapon.name === "none" && distancesquared(ai.origin, playerent.origin) < sqr(240)) {
                return true;
            }
        }
    }
    return false;
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x0
// Checksum 0x769b8788, Offset: 0x1c90
// Size: 0x12c
function function_ff5a6c36(playerent) {
    ais = getaiteamarray(util::getotherteam(playerent.team));
    ais = arraycombine(ais, getaiteamarray(#"team3"), 0, 0);
    foreach (ai in ais) {
        if (issentient(ai)) {
            if (ai lastknowntime(playerent) + 4000 >= gettime()) {
                return true;
            }
        }
    }
    return false;
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0xdd39318f, Offset: 0x1dc8
// Size: 0x20
function function_b0604e5b(playerent) {
    return playerent.health < playerent.maxhealth;
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0x86928fbc, Offset: 0x1df0
// Size: 0xd8
function function_261cbef4() {
    self notify(#"hash_4f9f0ce07fc8ab8c");
    self endon(#"hash_4f9f0ce07fc8ab8c", #"disconnect");
    while (true) {
        if (function_b0604e5b(self) || function_8f0a7b3b(self)) {
            self clientfield::set_player_uimodel("hudItems.playerInCombat", 1);
        } else {
            self clientfield::set_player_uimodel("hudItems.playerInCombat", 0);
        }
        wait(randomfloatrange(0.333333, 0.666667));
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0xaaf0d521, Offset: 0x1ed0
// Size: 0x94
function setupcallbacks() {
    level.autoassign = &menuautoassign;
    level.spectator = &menuspectator;
    level.curclass = &menuclass;
    level.teammenu = &menuteam;
    level.draftmenu = &menupositiondraft;
    level.autocontrolplayer = &menuautocontrolplayer;
}

/#

    // Namespace globallogic_ui/globallogic_ui
    // Params 0, eflags: 0x0
    // Checksum 0xa8d04d62, Offset: 0x1f70
    // Size: 0x27c
    function freegameplayhudelems() {
        if (isdefined(self.perkicon)) {
            for (numspecialties = 0; numspecialties < level.maxspecialties; numspecialties++) {
                if (isdefined(self.perkicon[numspecialties])) {
                    self.perkicon[numspecialties] hud::destroyelem();
                    self.perkname[numspecialties] hud::destroyelem();
                }
            }
        }
        if (isdefined(self.perkhudelem)) {
            self.perkhudelem hud::destroyelem();
        }
        if (isdefined(self.killstreakicon)) {
            if (isdefined(self.killstreakicon[0])) {
                self.killstreakicon[0] hud::destroyelem();
            }
            if (isdefined(self.killstreakicon[1])) {
                self.killstreakicon[1] hud::destroyelem();
            }
            if (isdefined(self.killstreakicon[2])) {
                self.killstreakicon[2] hud::destroyelem();
            }
            if (isdefined(self.killstreakicon[3])) {
                self.killstreakicon[3] hud::destroyelem();
            }
            if (isdefined(self.killstreakicon[4])) {
                self.killstreakicon[4] hud::destroyelem();
            }
        }
        if (isdefined(self.lowermessage)) {
            self.lowermessage hud::destroyelem();
        }
        if (isdefined(self.lowertimer)) {
            self.lowertimer hud::destroyelem();
        }
        if (isdefined(self.proxbar)) {
            self.proxbar hud::destroyelem();
        }
        if (isdefined(self.proxbartext)) {
            self.proxbartext hud::destroyelem();
        }
        if (isdefined(self.carryicon)) {
            self.carryicon hud::destroyelem();
        }
    }

#/

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x0
// Checksum 0xed635113, Offset: 0x21f8
// Size: 0xb6
function teamplayercountsequal(playercounts) {
    count = undefined;
    foreach (team, _ in level.teams) {
        if (!isdefined(count)) {
            count = playercounts[team];
            continue;
        }
        if (count != playercounts[team]) {
            return false;
        }
    }
    return true;
}

// Namespace globallogic_ui/globallogic_ui
// Params 2, eflags: 0x0
// Checksum 0xc21b917a, Offset: 0x22b8
// Size: 0xc4
function teamwithlowestplayercount(playercounts, *ignore_team) {
    count = 9999;
    lowest_team = undefined;
    foreach (team, _ in level.teams) {
        if (count > ignore_team[team]) {
            count = ignore_team[team];
            lowest_team = team;
        }
    }
    return lowest_team;
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0x54781d8e, Offset: 0x2388
// Size: 0x38c
function menuautoassign(comingfrommenu) {
    self closemenus();
    assignment = #"allies";
    if (isdefined(self.botteam) && self.botteam != "autoassign") {
        assignment = self.botteam;
    }
    fields = getmapfields();
    if (isdefined(fields) && isdefined(fields.playerteam)) {
        assignment = fields.playerteam;
    }
    if (level.teambased) {
        if (assignment == self.pers[#"team"] && (self.sessionstate == "playing" || self.sessionstate == "dead")) {
            self beginclasschoice();
            return;
        }
    } else if (getdvarint(#"party_autoteams", 0) == 1) {
        if (!level.allow_teamchange || !self.hasspawned && !comingfrommenu) {
            team = getassignedteam(self);
            if (isdefined(level.teams[team])) {
                assignment = team;
            } else if (team == "spectator" && !level.forceautoassign) {
                return;
            }
        }
    }
    if (assignment != self.pers[#"team"] && (self.sessionstate == "playing" || self.sessionstate == "dead")) {
        self.switching_teams = 1;
        self.switchedteamsresetgadgets = 1;
        self.joining_team = assignment;
        self.leaving_team = self.pers[#"team"];
        self suicide();
    }
    self.pers[#"team"] = assignment;
    self.team = assignment;
    self.pers[#"class"] = undefined;
    self.curclass = undefined;
    self.pers[#"weapon"] = undefined;
    self.pers[#"savedmodel"] = undefined;
    self updateobjectivetext();
    self.sessionteam = assignment;
    if (!isalive(self)) {
        self.statusicon = "hud_status_dead";
    }
    self player::function_466d8a4b(comingfrommenu);
    self notify(#"end_respawn");
    self beginclasschoice();
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0x675ad255, Offset: 0x2720
// Size: 0xcc
function teamscoresequal() {
    score = undefined;
    foreach (team, _ in level.teams) {
        if (!isdefined(score)) {
            score = getteamscore(team);
            continue;
        }
        if (score != getteamscore(team)) {
            return false;
        }
    }
    return true;
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0xdd6c302b, Offset: 0x27f8
// Size: 0xbe
function teamwithlowestscore() {
    score = 99999999;
    lowest_team = undefined;
    foreach (team, _ in level.teams) {
        if (score > getteamscore(team)) {
            lowest_team = team;
        }
    }
    return lowest_team;
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x0
// Checksum 0xe1da1bd3, Offset: 0x28c0
// Size: 0x7a
function pickteamfromscores(teams) {
    assignment = #"allies";
    if (teamscoresequal()) {
        assignment = teams[randomint(teams.size)];
    } else {
        assignment = teamwithlowestscore();
    }
    return assignment;
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x0
// Checksum 0x2f1f91cd, Offset: 0x2948
// Size: 0xca
function get_splitscreen_team() {
    for (index = 0; index < level.players.size; index++) {
        if (!isdefined(level.players[index])) {
            continue;
        }
        if (level.players[index] == self) {
            continue;
        }
        if (!self isplayeronsamemachine(level.players[index])) {
            continue;
        }
        team = level.players[index].sessionteam;
        if (team != "spectator") {
            return team;
        }
    }
    return "";
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0x5d3de58c, Offset: 0x2a20
// Size: 0xdc
function updateobjectivetext() {
    if (sessionmodeiszombiesgame() || self.pers[#"team"] == "spectator") {
        self setclientcgobjectivetext("");
        return;
    }
    if (level.scorelimit > 0) {
        self setclientcgobjectivetext(util::getobjectivescoretext(self.pers[#"team"]));
        return;
    }
    self setclientcgobjectivetext(util::getobjectivetext(self.pers[#"team"]));
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0x8e06f4d9, Offset: 0x2b08
// Size: 0x1c
function closemenus() {
    self closeingamemenu();
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0xdf8f256a, Offset: 0x2b30
// Size: 0x3b4
function beginclasschoice() {
    assert(isdefined(level.teams[self.pers[#"team"]]));
    team = self.pers[#"team"];
    self closemenu(game.menu[#"menu_start_menu"]);
    if (isbot(self)) {
        self closemenu(game.menu[#"menu_changeclass"]);
        self openmenu(game.menu["menu_changeclass_" + level.teams[team]]);
        return;
    }
    if (!getdvarint(#"art_review", 0)) {
        self thread function_ac6e682a();
    }
    var_2bd8b207 = getdvarint(#"hash_c9bd2003951a4a8", 0);
    if (!getdvarint(#"hash_16efeb2766b64b92", 0) || var_2bd8b207) {
        if (isdefined(world.var_f2c8b0cb)) {
            if (isdefined(world.var_f2c8b0cb[self.name])) {
                self savegame::set_player_data("playerClass", world.var_f2c8b0cb[self.name]);
                self thread spawn_player(world.var_f2c8b0cb[self.name]);
                if (level flag::get(#"all_players_class_choice_completed")) {
                    world.var_f2c8b0cb = undefined;
                }
                level notify(#"hash_68a23a10a81d2ba5");
                self function_251fa54a();
                return;
            }
        }
        prevclass = self savegame::function_2ee66e93("playerClass", undefined);
        if (isdefined(prevclass) || var_2bd8b207 || function_ee6b4b2b() || getdvarint(#"migration_soak", 0) == 1 || getdvarint(#"art_review", 0)) {
            self thread spawn_player(prevclass);
            self function_251fa54a();
            return;
        }
    }
    self closemenu(game.menu[#"menu_changeclass"]);
    self openmenu(game.menu["menu_changeclass_" + level.teams[team]]);
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0xe5f20dfe, Offset: 0x2ef0
// Size: 0x34
function function_ee6b4b2b() {
    return is_true(level.disableclassselection) || is_true(self.disableclassselection);
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0x66a894fd, Offset: 0x2f30
// Size: 0xfc
function spawn_player(*prevclass) {
    self endon(#"disconnect");
    selectedclass = self stats::get_stat(#"selectedcustomclass");
    if (!isdefined(selectedclass)) {
        selectedclass = 0;
    }
    self.curclass = "default";
    self.pers[#"class"] = self.curclass;
    waitframe(1);
    if (self.sessionstate != "playing" && game.state == "playing") {
        self thread [[ level.spawnclient ]]();
    }
    globallogic::updateteamstatus();
    self thread spectating::set_permissions_for_machine();
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0x1938bcd1, Offset: 0x3038
// Size: 0x16c
function function_251fa54a() {
    if (self flag::get(#"hash_68a23a10a81d2ba5")) {
        return;
    }
    self flag::set(#"hash_68a23a10a81d2ba5");
    if (!isbot(self)) {
        level flag::set(#"hash_5f146bdc82ca0298");
    }
    var_efeeee7e = 1;
    a_players = getplayers();
    foreach (player in a_players) {
        if (!player flag::get(#"hash_68a23a10a81d2ba5")) {
            var_efeeee7e = 0;
            break;
        }
    }
    if (var_efeeee7e) {
        level flag::set("all_players_class_choice_completed");
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 2, eflags: 0x2 linked
// Checksum 0xb9d29edf, Offset: 0x31b0
// Size: 0x7c
function function_cdbb5c49(show, persistent) {
    player = getplayers()[0];
    if (is_true(show)) {
        util::function_1690fd42(player, persistent);
        return;
    }
    util::function_cd98604b(player);
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0xed3d5a64, Offset: 0x3238
// Size: 0x5ac
function function_ac6e682a() {
    self endon(#"disconnect");
    initial_black = lui::get_luimenu("InitialBlack");
    initial_black.var_6fba7045 = #"kill_initial_black";
    self val::set(#"initial_black", "disable_oob", 1);
    function_cdbb5c49(1, 1);
    while (self isloadingcinematicplaying()) {
        waitframe(1);
    }
    self val::set(#"initial_black", "show_hud", 0);
    if (!self.hasspawned) {
        self waittill(#"spawned");
    }
    self val::set(#"initial_black", "freezecontrols");
    self val::set(#"initial_black", "disable_weapons");
    self val::set(#"initial_black", "takedamage", 0);
    self val::set(#"initial_black", "allowdeath", 0);
    self val::set(#"initial_black", "hide");
    var_d723471a = level flag::get(#"loaded");
    level flag::wait_till(#"loaded");
    waitframe(1);
    if (isdefined(level.var_a7b99722) || isdefined(level.var_d7d201ba)) {
        function_894987d3();
        if (isdefined(level.var_a7b99722)) {
            level flag::wait_till(level.var_a7b99722);
        }
        if (isdefined(level.var_d7d201ba)) {
            self flag::wait_till(level.var_d7d201ba);
        }
    }
    self flag::wait_till("loadout_given");
    do {
        waitframe(1);
    } while (self flag::get(#"chyron_menu_open") || level flag::get(#"waitting_for_igc_ready"));
    waitframe(1);
    level flag::wait_till_clear("streamer_waits");
    self flag::set(#"kill_initial_black");
    self lui::screen_fade_out(0, "black");
    util::wait_network_frame(2);
    function_cdbb5c49(0);
    self val::reset(#"initial_black", "show_hud");
    self val::reset(#"initial_black", "freezecontrols");
    self val::reset(#"initial_black", "disable_weapons");
    self val::reset(#"initial_black", "hide");
    level clientfield::set("gameplay_started", 1);
    level flag::set(#"gameplay_started");
    if (!isdefined(level.var_cb4dca51)) {
        level.var_cb4dca51 = 0.05;
    }
    if (!isdefined(level.var_c0c469ea)) {
        level.var_c0c469ea = 0.3;
    }
    self util::delay(level.var_cb4dca51, "disconnect", &lui::screen_fade_in, level.var_c0c469ea, (0, 0, 0));
    /#
        streamerskiptodebug(getskiptos());
    #/
    self val::reset(#"initial_black", "takedamage");
    self val::reset(#"initial_black", "allowdeath");
    self val::reset(#"initial_black", "disable_oob");
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0xdf9b1d37, Offset: 0x37f0
// Size: 0xb4
function function_894987d3() {
    if (isdefined(level.var_d7d201ba) && !self flag::exists(level.var_d7d201ba)) {
        self flag::init(level.var_d7d201ba);
    }
    if (isdefined(level.var_a7b99722) && !level flag::exists(level.var_a7b99722)) {
        level flag::init(level.var_a7b99722);
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0x8146a239, Offset: 0x38b0
// Size: 0x9c
function showmainmenuforteam() {
    assert(isdefined(level.teams[self.pers[#"team"]]));
    team = self.pers[#"team"];
    self openmenu(game.menu["menu_changeclass_" + level.teams[team]]);
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0xc23eae94, Offset: 0x3958
// Size: 0x54
function menuautocontrolplayer() {
    self closemenus();
    if (self.pers[#"team"] != "spectator") {
        toggleplayercontrol(self);
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0xd17c9362, Offset: 0x39b8
// Size: 0x244
function menuteam(team) {
    self closemenus();
    if (!level.console && !level.allow_teamchange && isdefined(self.hasdonecombat) && self.hasdonecombat) {
        return;
    }
    if (self.pers[#"team"] != team) {
        if (level.ingraceperiod && (!isdefined(self.hasdonecombat) || !self.hasdonecombat)) {
            self.hasspawned = 0;
        }
        if (self.sessionstate == "playing") {
            self.switching_teams = 1;
            self.switchedteamsresetgadgets = 1;
            self.joining_team = team;
            self.leaving_team = self.pers[#"team"];
            self suicide();
        }
        self.pers[#"team"] = team;
        self.team = team;
        self.pers[#"class"] = undefined;
        self.curclass = undefined;
        self.pers[#"weapon"] = undefined;
        self.pers[#"savedmodel"] = undefined;
        self updateobjectivetext();
        if (!level.rankedmatch && !level.leaguematch) {
            self.sessionstate = "spectator";
        }
        self.sessionteam = team;
        self player::function_466d8a4b(1);
        self notify(#"end_respawn");
    }
    self beginclasschoice();
}

// Namespace globallogic_ui/globallogic_ui
// Params 2, eflags: 0x2 linked
// Checksum 0x166bf1f3, Offset: 0x3c08
// Size: 0x14
function menupositiondraft(*response, *intpayload) {
    
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x3c28
// Size: 0x4
function menuspectator() {
    
}

// Namespace globallogic_ui/globallogic_ui
// Params 2, eflags: 0x2 linked
// Checksum 0xdf71665f, Offset: 0x3c38
// Size: 0x14
function menuclass(*response, *intpayload) {
    
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0x36def397, Offset: 0x3c58
// Size: 0x54
function removespawnmessageshortly(delay) {
    self endon(#"disconnect");
    waittillframeend();
    self endon(#"end_respawn");
    wait(delay);
    self hud_message::clearlowermessage();
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0xcdebceba, Offset: 0x3cb8
// Size: 0x148
function function_b4057fae(var_426fecc3) {
    self endon(#"death", #"hash_5aa439133f7cf591");
    while (true) {
        waitresult = self waittill(#"hash_1fb77fec1c54b437");
        bonename = waitresult.bone_name;
        event = waitresult.event;
        if (bonename == var_426fecc3) {
            if (event == "damage") {
                luinotifyevent(#"hash_1fb77fec1c54b437", 3, 2, self getentitynumber(), var_426fecc3);
            } else if (event == "repulse") {
                luinotifyevent(#"hash_1fb77fec1c54b437", 3, 3, self getentitynumber(), var_426fecc3);
            }
            wait(0.5);
        }
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x0
// Checksum 0x8c1ec61e, Offset: 0x3e08
// Size: 0x56
function function_3744c25b(var_426fecc3) {
    luinotifyevent(#"hash_1fb77fec1c54b437", 3, 0, self getentitynumber(), var_426fecc3);
    self notify(#"hash_5aa439133f7cf591");
}

// Namespace globallogic_ui/globallogic_ui
// Params 3, eflags: 0x0
// Checksum 0x1982dbfd, Offset: 0x3e68
// Size: 0xf4
function function_3d8fe4dd(var_426fecc3, closestatemaxdistance = undefined, mediumstatemaxdistance = undefined) {
    if (!isdefined(closestatemaxdistance)) {
        closestatemaxdistance = getdvarint(#"ui_weakpointindicatornear", 1050);
    }
    if (!isdefined(mediumstatemaxdistance)) {
        mediumstatemaxdistance = getdvarint(#"ui_weakpointindicatormedium", 1900);
    }
    luinotifyevent(#"hash_1fb77fec1c54b437", 5, 1, self getentitynumber(), var_426fecc3, closestatemaxdistance, mediumstatemaxdistance);
    self thread function_b4057fae(var_426fecc3);
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x0
// Checksum 0x3835c5dd, Offset: 0x3f68
// Size: 0x46
function function_541212af(var_426fecc3) {
    self notify(#"hash_1fb77fec1c54b437", {#bone_name:var_426fecc3, #event:"damage"});
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x0
// Checksum 0xc2447694, Offset: 0x3fb8
// Size: 0x46
function function_b03b1c3c(var_426fecc3) {
    self notify(#"hash_1fb77fec1c54b437", {#bone_name:var_426fecc3, #event:"repulse"});
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x0
// Checksum 0x420c5432, Offset: 0x4008
// Size: 0x24
function function_4b3da818() {
    clientfield::set_player_uimodel("hudItems.showCPNotificationText", 1);
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x0
// Checksum 0x59150815, Offset: 0x4038
// Size: 0x1c
function function_1de56000() {
    clientfield::set_player_uimodel("hudItems.showCPNotificationText", 0);
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0x5605341e, Offset: 0x4060
// Size: 0x3c
function function_4c96ea2c(var_1dbeb54) {
    clientfield::set_player_uimodel("hudItems.cpInstructionText", getlocalizedstringindex(var_1dbeb54));
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0xa5a767cf, Offset: 0x40a8
// Size: 0x3c
function function_d679cb5b() {
    clientfield::set_player_uimodel("hudItems.cpInstructionText", getlocalizedstringindex(#""));
}

// Namespace globallogic_ui/globallogic_ui
// Params 2, eflags: 0x2 linked
// Checksum 0x8fc7fcbb, Offset: 0x40f0
// Size: 0x144
function function_7bc0e4b9(var_4146002e = 1, var_d76d90ac = 0) {
    level.chyron_text_active = 1;
    level flag::set(#"chyron_active");
    foreach (player in getplayers()) {
        if (!isbot(player)) {
            player thread function_36e939c(var_4146002e, var_d76d90ac);
        }
    }
    level waittill(#"chyron_menu_closed");
    level.chyron_text_active = undefined;
    level flag::clear(#"chyron_active");
}

// Namespace globallogic_ui/globallogic_ui
// Params 2, eflags: 0x6 linked
// Checksum 0x95e2dddc, Offset: 0x4240
// Size: 0x334
function private function_36e939c(var_4146002e = 1, var_d76d90ac = 0) {
    self endon(#"disconnect");
    self notify("641c2040237d352a");
    self endon("641c2040237d352a");
    self flag::set(#"chyron_menu_open");
    level flag::wait_till(#"hash_60361de05624e591");
    assert(var_d76d90ac >= 0);
    assert(var_d76d90ac <= 15);
    cp_chyron = lui::get_luimenu("cpChyron");
    cp_chyron cp_chyron::function_90bde5d3(self, var_d76d90ac);
    cp_chyron cp_chyron::close(self);
    cp_chyron cp_chyron::open(self);
    if (var_4146002e) {
        self val::set(#"chyron", "takedamage", 0);
        self val::set(#"chyron", "freezecontrols", 1);
        self val::set(#"chyron", "disable_weapons", 1);
        self val::set(#"chyron", "ignoreme", 1);
    }
    waittillframeend();
    level notify(#"chyron_menu_open");
    self waittillmatchtimeout(15, {#menu:#"cp_chyron", #response:#"closed"}, #"menuresponse");
    cp_chyron.var_779239b4 = 0;
    self notify(#"chyron_menu_closed");
    level notify(#"chyron_menu_closed");
    self flag::clear(#"chyron_menu_open");
    waitframe(1);
    level flag::wait_till_clear("waitting_for_igc_ready");
    self val::reset_all(#"chyron");
    wait(10);
    cp_chyron cp_chyron::close(self);
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0xa1818c5e, Offset: 0x4580
// Size: 0x228
function function_75788ef4(var_22323d67) {
    var_b263f6a2 = getscriptbundle(var_22323d67.m_s_bundle.var_b263f6a2);
    settings = getscriptbundle(var_b263f6a2.var_b263f6a2[var_22323d67.var_6dfc35a].minigame);
    descriptions = settings.descriptions;
    prompts = settings.prompts;
    if (isdefined(prompts)) {
        foreach (prompt in prompts) {
            namespace_c8e236da::function_ebf737f8(prompt.prompt);
        }
    }
    if (isdefined(descriptions)) {
        player = getplayers()[0];
        foreach (description in descriptions) {
            if (player gamepadusedlast()) {
                hint_tutorial::function_4c2d4fc4(description.description);
            } else {
                hint_tutorial::function_4c2d4fc4(description.var_35251d9e);
            }
            wait(3);
            hint_tutorial::function_9f427d88();
        }
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0xb35d3a3d, Offset: 0x47b0
// Size: 0x1c
function function_2793ce76(*var_22323d67) {
    namespace_c8e236da::removelist();
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0x382ca70c, Offset: 0x47d8
// Size: 0x2c
function function_909d9a15(*player) {
    level flag::wait_till(#"hash_321357f5b78401ef");
}

// Namespace globallogic_ui/globallogic_ui
// Params 3, eflags: 0x2 linked
// Checksum 0x184c5b3c, Offset: 0x4810
// Size: 0xe2
function function_5b3d23d5(model_name, var_f566006a, var_1f7d0ca0) {
    function_909d9a15();
    var_1b3a1e73 = undefined;
    if (is_true(var_f566006a)) {
        var_1b3a1e73 = getglobaluimodel();
    } else {
        var_1b3a1e73 = function_5c2e399f();
    }
    if (is_true(var_1f7d0ca0)) {
        model_name = string(#"hash_34625569b2422261", 16) + "." + model_name;
    }
    return getuimodel(var_1b3a1e73, model_name);
}

// Namespace globallogic_ui/globallogic_ui
// Params 3, eflags: 0x2 linked
// Checksum 0x723f748e, Offset: 0x4900
// Size: 0x5e
function function_f053dcd4(model_name, var_f566006a, var_1f7d0ca0) {
    model = function_5b3d23d5(model_name, var_f566006a, var_1f7d0ca0);
    if (isdefined(model)) {
        return getuimodelvalue(model);
    }
    return undefined;
}

// Namespace globallogic_ui/globallogic_ui
// Params 8, eflags: 0x2 linked
// Checksum 0xc41c8a5, Offset: 0x4968
// Size: 0x1c4
function function_9ed5232e(model_name, var_832d6681, var_f566006a, var_80d5359e, var_1f7d0ca0, var_7b030046, var_2226bd51, var_cb887047) {
    if (!level flag::get("level_restarting") || is_true(var_cb887047)) {
        model = function_5b3d23d5(model_name, var_f566006a, var_1f7d0ca0);
        created = 0;
        if (!isdefined(model)) {
            if (is_true(var_1f7d0ca0)) {
                model_name = string(#"hash_34625569b2422261", 16) + "." + model_name;
            }
            if (is_true(var_f566006a)) {
                model = createuimodel(getglobaluimodel(), model_name);
            } else {
                model = createuimodel(function_5c2e399f(), model_name);
            }
            created = 1;
        }
        thread function_5b537ee3(model, model_name, var_832d6681, var_80d5359e, var_7b030046, var_2226bd51);
        function_52da41bb(model_name, var_832d6681, var_f566006a, var_2226bd51, created);
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 6, eflags: 0x6 linked
// Checksum 0xcec5f453, Offset: 0x4b38
// Size: 0x134
function private function_5b537ee3(model, model_name, var_832d6681, var_80d5359e, var_7b030046, var_2226bd51) {
    if (is_true(var_2226bd51)) {
        level notify("set_ui_model_" + model_name);
        level endon("set_ui_model_" + model_name, "removing_ui_model_data_" + model_name, #"level_restarting");
        waittillframeend();
    }
    notified = 0;
    if (isdefined(var_832d6681)) {
        if (is_true(var_7b030046)) {
            notified = function_8543bf5e(model, var_832d6681);
        } else {
            notified = setuimodelvalue(model, var_832d6681);
        }
    }
    if (!notified && is_true(var_80d5359e)) {
        forcenotifyuimodel(model);
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 3, eflags: 0x2 linked
// Checksum 0x34fb2d42, Offset: 0x4c78
// Size: 0x5c
function function_d9f3d3b4(model_name, var_f566006a, var_1f7d0ca0) {
    model = function_5b3d23d5(model_name, var_f566006a, var_1f7d0ca0);
    if (isdefined(model)) {
        forcenotifyuimodel(model);
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 5, eflags: 0x2 linked
// Checksum 0xa4f5ac80, Offset: 0x4ce0
// Size: 0x9a
function function_a8d716c5(var_d98decb5, index, model_name, var_f566006a, var_1f7d0ca0) {
    if (ishash(var_d98decb5)) {
        var_d98decb5 = string(var_d98decb5, 16);
    }
    return function_5b3d23d5(var_d98decb5 + "." + index + "." + model_name, var_f566006a, var_1f7d0ca0);
}

// Namespace globallogic_ui/globallogic_ui
// Params 5, eflags: 0x2 linked
// Checksum 0x417f2b6c, Offset: 0x4d88
// Size: 0x9a
function function_596db691(var_d98decb5, index, model_name, var_f566006a, var_1f7d0ca0) {
    if (ishash(var_d98decb5)) {
        var_d98decb5 = string(var_d98decb5, 16);
    }
    return function_f053dcd4(var_d98decb5 + "." + index + "." + model_name, var_f566006a, var_1f7d0ca0);
}

// Namespace globallogic_ui/globallogic_ui
// Params 8, eflags: 0x2 linked
// Checksum 0x869fb064, Offset: 0x4e30
// Size: 0x12c
function function_8954fa13(var_d98decb5, index, model_name, var_832d6681, var_f566006a, var_1f7d0ca0, var_7b030046, var_2226bd51) {
    if (ishash(var_d98decb5)) {
        var_d98decb5 = string(var_d98decb5, 16);
    }
    if (!isdefined(function_5b3d23d5(var_d98decb5 + "." + index, var_f566006a, var_1f7d0ca0))) {
        function_9ed5232e(var_d98decb5 + "." + index + "." + "listIndex", index, var_f566006a, 0, var_1f7d0ca0, var_7b030046, var_2226bd51);
    }
    function_9ed5232e(var_d98decb5 + "." + index + "." + model_name, var_832d6681, var_f566006a, 0, var_1f7d0ca0, var_7b030046);
}

// Namespace globallogic_ui/globallogic_ui
// Params 4, eflags: 0x2 linked
// Checksum 0xfbb74db9, Offset: 0x4f68
// Size: 0x154
function function_6db5e620(var_d98decb5, index, var_f566006a = 0, reset) {
    if (ishash(var_d98decb5)) {
        var_d98decb5 = string(var_d98decb5, 16);
    }
    model = function_5b3d23d5(var_d98decb5 + "." + index, var_f566006a);
    if (isdefined(model)) {
        if (!is_true(function_f053dcd4(var_d98decb5 + "." + index + ".remove", var_f566006a))) {
            function_9ed5232e(var_d98decb5 + "." + index + ".remove", 1, undefined, undefined, undefined, undefined, undefined, reset);
        }
        function_2ec075a9(var_d98decb5 + "." + index, 1);
        return true;
    }
    return false;
}

// Namespace globallogic_ui/globallogic_ui
// Params 2, eflags: 0x2 linked
// Checksum 0xcc8317ef, Offset: 0x50c8
// Size: 0x64
function function_ec25f500(name, team = 0) {
    level.var_da53c8c9 = self;
    function_9ed5232e("ActorOverheadNames.0.overrideName", name);
    function_9ed5232e("ActorOverheadNames.0.overrideTeam", team);
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0xd33b30c1, Offset: 0x5138
// Size: 0x7e
function function_109202c3(force) {
    if (level.var_da53c8c9 === self || is_true(force)) {
        function_9ed5232e("ActorOverheadNames.0.overrideName", "");
        function_9ed5232e("ActorOverheadNames.0.overrideTeam", 0);
        level.var_da53c8c9 = undefined;
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x0
// Checksum 0xe56b208f, Offset: 0x51c0
// Size: 0x24
function function_68bb2f48() {
    function_9ed5232e("ForceClearSubtitles", 1, 0, 1);
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x0
// Checksum 0x8297044e, Offset: 0x51f0
// Size: 0x24
function function_d0a59ab9() {
    function_9ed5232e("cp_hud_data.hideNoReticleDot", 1);
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x0
// Checksum 0xcb69de0b, Offset: 0x5220
// Size: 0x1c
function function_16b7aa78() {
    function_9ed5232e("cp_hud_data.hideNoReticleDot", 0);
}

