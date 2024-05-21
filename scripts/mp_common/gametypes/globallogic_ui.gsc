// Atian COD Tools GSC CW decompiler test
#using scripts\abilities\ability_player.gsc;
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\userspawnselection.gsc;
#using scripts\mp_common\teams\team_assignment.gsc;
#using scripts\mp_common\player\player_loadout.gsc;
#using scripts\mp_common\player\player.gsc;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\mp_common\draft.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using script_3d703ef87a841fe4;
#using script_45fdb6cec5580007;
#using scripts\core_common\spectating.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\player\player_role.gsc;
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\hud_util_shared.gsc;
#using scripts\core_common\hud_message_shared.gsc;
#using scripts\core_common\gamestate_util.gsc;

#namespace globallogic_ui;

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x1c0
// Size: 0x4
function init() {
    
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0xc4dd1b91, Offset: 0x1d0
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
    // Checksum 0x53611123, Offset: 0x270
    // Size: 0x284
    function freegameplayhudelems() {
        /#
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
        #/
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
// Params 2, eflags: 0x6 linked
// Checksum 0x1b7e1966, Offset: 0x500
// Size: 0x100
function private function_34a60b2f(original_team, new_team) {
    if (!isdefined(original_team) || original_team == #"spectator" || !isdefined(new_team)) {
        return;
    }
    if (isdefined(game.everexisted) && is_true(game.everexisted[original_team]) && !is_true(game.everexisted[new_team]) && is_true(level.playerlives[original_team])) {
        game.everexisted[original_team] = 0;
        level.everexisted[original_team] = 0;
        level.teameliminated[original_team] = 0;
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 3, eflags: 0x2 linked
// Checksum 0x49ebb9e9, Offset: 0x608
// Size: 0x47c
function menuautoassign(comingfrommenu, var_4c542e39, var_432c77c2) {
    original_team = self.pers[#"team"];
    self luinotifyevent(#"clear_notification_queue");
    if (level.teambased) {
        assignment = teams::function_d22a4fbb(comingfrommenu, var_4c542e39, var_432c77c2);
        if (assignment === self.pers[#"team"] && (self.sessionstate === "playing" || self.sessionstate === "dead")) {
            self beginclasschoice(0);
            if (assignment === #"spectator") {
                self player::function_6f6c29e(comingfrommenu);
            }
            return;
        }
    } else {
        assignment = teams::function_b55ab4b3(comingfrommenu, var_4c542e39);
    }
    /#
        assignmentoverride = getdvarstring(#"autoassignteam");
        if (assignmentoverride != "<unknown string>" && (assignmentoverride != #"spectator" || !isbot(self))) {
            assignment = assignmentoverride;
        }
    #/
    if (!isdefined(assignment)) {
        assignment = var_4c542e39;
    }
    assert(isdefined(assignment));
    if (assignment === #"spectator" && !level.forceautoassign) {
        self teams::function_dc7eaabd(assignment);
        self player::function_6f6c29e(comingfrommenu);
        return;
    }
    if (assignment !== self.pers[#"team"] && (self.sessionstate == "playing" || self.sessionstate == "dead")) {
        self.switching_teams = 1;
        self.switchedteamsresetgadgets = 1;
        self.joining_team = assignment;
        self.leaving_team = self.pers[#"team"];
        self suicide();
    }
    self.pers[#"class"] = "";
    self.curclass = "";
    self.pers[#"weapon"] = undefined;
    self.pers[#"savedmodel"] = undefined;
    self teams::function_dc7eaabd(assignment);
    self squads::function_c70b26ea(var_432c77c2);
    distribution = teams::function_7d93567f();
    self updateobjectivetext();
    if (!isalive(self)) {
        self.statusicon = "hud_status_dead";
    }
    function_34a60b2f(original_team, assignment);
    self player::function_466d8a4b(comingfrommenu, assignment);
    if (level.var_b3c4b7b7 === 1) {
        draft::assign_remaining_players(self);
    } else {
        self notify(#"end_respawn");
        self beginclasschoice(comingfrommenu);
    }
    /#
        self teams::function_58b6d2c9();
    #/
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0xf93133c2, Offset: 0xa90
// Size: 0x1b4
function updateobjectivetext() {
    if (self.pers[#"team"] == #"spectator" || !isdefined(level.teams[self.pers[#"team"]])) {
        self setclientcgobjectivetext("");
        return;
    }
    if (level.scorelimit > 0 || level.roundscorelimit > 0) {
        if (isdefined(util::getobjectivescoretext(self.pers[#"team"]))) {
            self setclientcgobjectivetext(util::getobjectivescoretext(self.pers[#"team"]));
        } else {
            self setclientcgobjectivetext("");
        }
        return;
    }
    if (isdefined(util::getobjectivetext(self.pers[#"team"]))) {
        self setclientcgobjectivetext(util::getobjectivetext(self.pers[#"team"]));
        return;
    }
    self setclientcgobjectivetext("");
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0xbe3c5628, Offset: 0xc50
// Size: 0x1c
function closemenus() {
    self closeingamemenu();
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0x90d25914, Offset: 0xc78
// Size: 0x134
function beginclasschoice(*comingfrommenu) {
    if (isbot(self)) {
        return;
    }
    if (self.pers[#"team"] == #"spectator") {
        return;
    }
    assert(isdefined(level.teams[self.pers[#"team"]]));
    team = self.pers[#"team"];
    if (level.disableclassselection == 1 || getdvarint(#"migration_soak", 0) == 1) {
        level thread globallogic::updateteamstatus();
        self thread spectating::set_permissions_for_machine();
        return;
    }
    self function_bc2eb1b8();
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0xeb225dda, Offset: 0xdb8
// Size: 0x8c
function showmainmenuforteam() {
    assert(isdefined(level.teams[self.pers[#"team"]]));
    team = self.pers[#"team"];
    [[ level.spawnspectator ]]();
    self draft::open();
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0xa3e5e625, Offset: 0xe50
// Size: 0x314
function menuteam(team) {
    if (!level.console && !level.allow_teamchange && isdefined(self.hasdonecombat) && self.hasdonecombat) {
        return;
    }
    if (self.pers[#"team"] != team) {
        function_34a60b2f(self.pers[#"team"], team);
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
        self userspawnselection::closespawnselect();
        self userspawnselection::clearcacheforplayer();
        self luinotifyevent(#"clear_notification_queue");
        self.pers[#"team"] = team;
        self.team = team;
        if (level.var_d1455682.var_67bfde2a === 1) {
            var_9168605c = self player_role::function_2a911680();
            player_role::set(var_9168605c, 1);
        }
        self.pers[#"class"] = "";
        self.curclass = "";
        self.pers[#"weapon"] = undefined;
        self.pers[#"savedmodel"] = undefined;
        self updateobjectivetext();
        if (!level.rankedmatch && !level.leaguematch) {
            self.sessionstate = "spectator";
        }
        self.sessionteam = team;
        self player::function_466d8a4b(1, team);
        self notify(#"end_respawn");
    }
    self beginclasschoice(1);
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0xb9c1dbf4, Offset: 0x1170
// Size: 0x1d4
function menuspectator() {
    self closemenus();
    if (self.pers[#"team"] != #"spectator") {
        if (isalive(self)) {
            self.switching_teams = 1;
            self.switchedteamsresetgadgets = 1;
            self.joining_team = #"spectator";
            self.leaving_team = self.pers[#"team"];
            self suicide();
        }
        self.pers[#"team"] = #"spectator";
        self.team = #"spectator";
        self.pers[#"class"] = "";
        self.curclass = "";
        self.pers[#"weapon"] = undefined;
        self.pers[#"savedmodel"] = undefined;
        self updateobjectivetext();
        self.sessionteam = #"spectator";
        [[ level.spawnspectator ]]();
        self thread player::spectate_player_watcher();
        self player::function_6f6c29e(1);
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 4, eflags: 0x2 linked
// Checksum 0xff7c95eb, Offset: 0x1350
// Size: 0x8d8
function menuclass(response, forcedclass, *updatecharacterindex, var_632376a3) {
    if (!isdefined(self.pers[#"team"]) || !isdefined(level.teams[self.pers[#"team"]])) {
        return 0;
    }
    if (!loadout::function_87bcb1b()) {
        if ((game.state == #"pregame" || game.state == #"playing") && self.sessionstate != "playing") {
            self thread [[ level.spawnclient ]](0);
        }
        return;
    }
    if (!isdefined(updatecharacterindex)) {
        playerclass = self loadout::function_97d216fa(forcedclass);
    } else {
        playerclass = updatecharacterindex;
    }
    if (!isdefined(playerclass)) {
        return 0;
    }
    if (is_true(level.disablecustomcac) && issubstr(playerclass, "CLASS_CUSTOM") && isarray(level.classtoclassnum) && level.classtoclassnum.size > 0) {
        defaultclasses = [];
        foreach (classnum, classname in level.var_8e1db8ee) {
            if (issubstr(classname, "CLASS_")) {
                defaultclasses[classnum] = classname;
            }
        }
        defaultclasses = getarraykeys(defaultclasses);
        playerclass = level.var_8e1db8ee[defaultclasses[randomint(defaultclasses.size)]];
    }
    if (!isdefined(playerclass)) {
        return 0;
    }
    self loadout::function_d7c205b9(playerclass);
    if (!player_role::is_valid(self player_role::get())) {
        characterindex = player_role::function_965ea244();
        self draft::select_character(characterindex, 1);
    }
    if (isdefined(self.pers[#"class"]) && self.pers[#"class"] == playerclass) {
        return 1;
    }
    self.pers[#"changed_class"] = !isdefined(self.curclass) || self.curclass != playerclass;
    var_8d7a946 = !isdefined(self.curclass) || self.curclass == "";
    self.pers[#"class"] = playerclass;
    self.curclass = playerclass;
    self loadout::function_d7c205b9(playerclass);
    self.pers[#"weapon"] = undefined;
    self notify(#"changed_class");
    if (gamestate::is_game_over()) {
        return 0;
    }
    if (isbot(self)) {
        self thread [[ level.spawnclient ]](undefined);
    } else if (!isdefined(self.sessionstate)) {
        return 0;
    } else if (self.sessionstate != "playing") {
        if (self.sessionstate != "spectator") {
            if (self isinvehicle()) {
                return 0;
            }
            if (self isremotecontrolling()) {
                return 0;
            }
            if (self isweaponviewonlylinked()) {
                return 0;
            }
        }
        if (self.sessionstate != "dead" || !self.hasspawned) {
            timepassed = undefined;
            if (!is_true(level.var_d0252074) || !is_true(self.hasspawned)) {
                if (isdefined(self.respawntimerstarttime)) {
                    println("<unknown string>" + self.name + "<unknown string>");
                    timepassed = float(gettime() - self.respawntimerstarttime) / 1000;
                }
                self thread [[ level.spawnclient ]](timepassed);
                self.respawntimerstarttime = undefined;
            }
        } else if (!var_8d7a946 && self.pers[#"changed_class"] && !is_true(level.var_f46d16f0)) {
            function_4538a730(playerclass);
        }
    }
    if (self.sessionstate == "playing") {
        supplystationclasschange = isdefined(self.usingsupplystation) && self.usingsupplystation;
        self.usingsupplystation = 0;
        if (!is_true(self.var_e8c7d324) && (is_true(level.ingraceperiod) && !is_true(self.hasdonecombat) || is_true(supplystationclasschange) || var_632376a3 === 1 || self.pers[#"time_played_alive"] < level.graceperiod && !is_true(self.hasdonecombat))) {
            self loadout::function_53b62db1(self.pers[#"class"]);
            self.tag_stowed_back = undefined;
            self.tag_stowed_hip = undefined;
            self ability_player::gadgets_save_power(0);
            self loadout::give_loadout(self.pers[#"team"], self.pers[#"class"], var_632376a3);
            self killstreaks::give_owned();
            if (var_632376a3 === 1 && isdefined(level.var_f830a9db)) {
                self thread [[ level.var_f830a9db ]]();
            }
        } else if (!var_8d7a946 && self.pers[#"changed_class"] && !is_true(level.var_f46d16f0)) {
            function_4538a730(playerclass);
        }
    }
    level thread globallogic::updateteamstatus();
    self thread spectating::set_permissions_for_machine();
    return 1;
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0x21613487, Offset: 0x1c30
// Size: 0x5c
function function_4538a730(playerclass) {
    loadoutindex = self loadout::get_class_num(playerclass);
    self luinotifyevent(#"hash_6b67aa04e378d681", 2, 6, loadoutindex);
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0x2f04b297, Offset: 0x1c98
// Size: 0x5c
function menuautocontrolplayer() {
    self closemenus();
    if (self.pers[#"team"] != #"spectator") {
        toggleplayercontrol(self);
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 2, eflags: 0x2 linked
// Checksum 0x3759c3f9, Offset: 0x1d00
// Size: 0x16c
function menupositiondraft(response, *intpayload) {
    if (intpayload == "changecharacter") {
        if (self draft::function_904deeb2()) {
            self player_role::clear();
        }
        return;
    }
    if (intpayload == "randomcharacter") {
        self player_role::clear();
        draft::assign_remaining_players(self);
        if (!is_true(level.inprematchperiod)) {
            self draft::close();
            if (!self function_8b1a219a()) {
                self closeingamemenu();
            }
        }
        return;
    }
    if (intpayload == "ready") {
        self draft::client_ready();
        return;
    }
    if (intpayload == "opendraft") {
        self draft::open();
        return;
    }
    if (intpayload == "closedraft") {
        self draft::close();
    }
}

// Namespace globallogic_ui/globallogic_ui
// Params 1, eflags: 0x2 linked
// Checksum 0x646d8f6e, Offset: 0x1e78
// Size: 0x54
function removespawnmessageshortly(delay) {
    self endon(#"disconnect");
    waittillframeend();
    self endon(#"end_respawn");
    wait(delay);
    self hud_message::clearlowermessage();
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0xc5b2b5fa, Offset: 0x1ed8
// Size: 0x24
function function_bc2eb1b8() {
    self luinotifyevent(#"hash_3ab41287e432bf6c");
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x0
// Checksum 0x510114d9, Offset: 0x1f08
// Size: 0x24
function function_f8f38932() {
    self luinotifyevent(#"hash_6994832352c6262b");
}

