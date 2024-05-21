// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\gametypes\globallogic_spawn.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\killcam_shared.gsc;
#using script_44b0b8420eabacad;
#using script_335d0650ed05d36d;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\gamestate_util.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace userspawnselection;

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x5
// Checksum 0xe5637958, Offset: 0x1e0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"userspawnselection", &preinit, undefined, undefined, undefined);
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x6 linked
// Checksum 0x7974e5e4, Offset: 0x228
// Size: 0x1ec
function private preinit() {
    if (!isdefined(level.spawnselect)) {
        level.spawnselect = spawnstruct();
    }
    level.spawnselect.vox_plr_1_revive_down_2 = [];
    level.spawnselect.lastchosenplayerspawns = [];
    level.spawnselectenabled = getgametypesetting(#"spawnselectenabled");
    level.usespawngroups = getgametypesetting(#"usespawngroups");
    level.spawngroups = [];
    level.next_spawn_group_index = 0;
    level.var_abb55703 = &function_a316ca82;
    level.registeravailablespawnbeacon = &registeravailablespawnbeacon;
    level.var_13edf38c = &removespawnbeacon;
    level.spawnselect_timelimit_ms = getdvarint(#"spawnselect_timelimit_ms", 10000);
    if (isspawnselectenabled()) {
        callback::on_start_gametype(&on_start_gametype);
        callback::on_disconnect(&on_player_disconnect);
        callback::on_spawned(&onplayerspawned);
        spawning::function_754c78a6(&function_259770ba);
        level.var_b8622956 = &filter_spawnpoints;
    }
    registerclientfields();
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x2 linked
// Checksum 0x53c07f69, Offset: 0x420
// Size: 0xa0
function function_127864f2(player) {
    foreach (spawnbeacon in level.spawnselect.vox_plr_1_revive_down_2) {
        if (player == spawnbeacon.owner) {
            return true;
        }
    }
    return false;
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x0
// Checksum 0xf7f6fe2f, Offset: 0x4c8
// Size: 0x42
function function_93076e1d() {
    if (!isdefined(level.spawnselect)) {
        level.spawnselect = spawnstruct();
    }
    level.spawnselect.var_d302b268 = 1;
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x2 linked
// Checksum 0x73223e6c, Offset: 0x518
// Size: 0x3e
function function_a316ca82(player) {
    spawnbeacon = player function_b9573d36();
    if (isdefined(spawnbeacon)) {
        return true;
    }
    return false;
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0xb8956721, Offset: 0x560
// Size: 0x74
function onplayerspawned() {
    closespawnselect();
    if (!isdefined(level.spawnselect.lastchosenplayerspawns[self.clientid])) {
        return;
    }
    if (level.spawnselect.lastchosenplayerspawns[self.clientid] == -2) {
        level.spawnselect.lastchosenplayerspawns[self.clientid] = -1;
    }
}

// Namespace userspawnselection/userspawnselection
// Params 2, eflags: 0x2 linked
// Checksum 0xe5c00a81, Offset: 0x5e0
// Size: 0x5c
function registeravailablespawnbeacon(spawnbeaconid, spawnbeacon) {
    assert(!isdefined(level.spawnselect.vox_plr_1_revive_down_2[spawnbeaconid]));
    level.spawnselect.vox_plr_1_revive_down_2[spawnbeaconid] = spawnbeacon;
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x2 linked
// Checksum 0x76545831, Offset: 0x648
// Size: 0xac
function removespawnbeacon(spawnbeaconid) {
    if (!isdefined(spawnbeaconid) || !isdefined(level.spawnselect.vox_plr_1_revive_down_2[spawnbeaconid])) {
        return;
    }
    spawnbeacon = level.spawnselect.vox_plr_1_revive_down_2[spawnbeaconid];
    if (isdefined(spawnbeacon) && isdefined(spawnbeacon.spawnlist)) {
        clearspawnpoints(spawnbeacon.spawnlist);
    }
    level.spawnselect.vox_plr_1_revive_down_2[spawnbeaconid] = undefined;
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0x3b1fe15d, Offset: 0x700
// Size: 0xe
function isspawnselectenabled() {
    return level.spawnselectenabled;
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x0
// Checksum 0x174f854c, Offset: 0x718
// Size: 0x1c
function getspawngroup(index) {
    return level.spawngroups[index];
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x0
// Checksum 0xc217f78e, Offset: 0x740
// Size: 0xbc
function getspawngroupbyname(target) {
    retunrarr = [];
    foreach (spawngroup in level.spawngroups) {
        if (spawngroup.target == target) {
            array::add(retunrarr, spawngroup);
        }
    }
    return retunrarr;
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x0
// Checksum 0xce22b746, Offset: 0x808
// Size: 0xbc
function getspawngroupsforzone(zoneindex) {
    returnarray = [];
    foreach (spawngroup in level.spawngroups) {
        if (spawngroup.script_zoneindex == zoneindex) {
            array::add(returnarray, spawngroup);
        }
    }
    return returnarray;
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x0
// Checksum 0x1bfb6b5a, Offset: 0x8d0
// Size: 0xcc
function getspawngroupwithscriptnoteworthy(script_noteworthy) {
    returnarray = [];
    foreach (spawngroup in level.spawngroups) {
        if (isdefined(spawngroup.script_noteworthy) && spawngroup.script_noteworthy == script_noteworthy) {
            array::add(returnarray, spawngroup);
        }
    }
    return returnarray;
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x2 linked
// Checksum 0xbcd284f6, Offset: 0x9a8
// Size: 0x64
function changeusability(isusable) {
    usestatusmodel = getclientfieldprefix(self.uiindex) + "useStatus";
    self.ison = isusable;
    level clientfield::set_world_uimodel(usestatusmodel, isusable);
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x2 linked
// Checksum 0xfbd613e3, Offset: 0xa18
// Size: 0x54
function changevisibility(isvisible) {
    visstatusmodel = getclientfieldprefix(self.uiindex) + "visStatus";
    level clientfield::set_world_uimodel(visstatusmodel, isvisible);
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x0
// Checksum 0xca68ebcb, Offset: 0xa78
// Size: 0xa4
function changeteam(teamname) {
    teamclientfieldindex = getteamclientfieldvalue(teamname);
    teammodel = getclientfieldprefix(self.uiindex) + "team";
    level clientfield::set_world_uimodel(teammodel, teamclientfieldindex);
    enablespawnpointlist(self.spawnlist, util::getteammask(teamname));
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0xfa2500c6, Offset: 0xb28
// Size: 0xb8
function setspawngroupsenabled() {
    if (!isdefined(level.spawngroups)) {
        return;
    }
    foreach (spawngroup in level.spawngroups) {
        spawngroup changeusability(1);
        spawngroup changevisibility(1);
    }
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x0
// Checksum 0xbbbe204e, Offset: 0xbe8
// Size: 0x10
function canplayerusespawngroup(*spawngroupindex) {
    return true;
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x2 linked
// Checksum 0x60b2d4c0, Offset: 0xc00
// Size: 0x28
function setspawngroupforplayer(selectedspawngroupindex) {
    level.spawnselect.lastchosenplayerspawns[self.clientid] = selectedspawngroupindex;
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0x1904eb60, Offset: 0xc30
// Size: 0x174
function function_b9573d36() {
    player = self;
    if (level.spawnselectenabled !== 1 && level.var_6cd68fbe === 1) {
        return player.var_583f6cce;
    }
    if (isdefined(player.var_583f6cce) && strstartswith(level.gametype, "sd")) {
        return player.var_583f6cce;
    }
    if (!isdefined(level.spawnselect.lastchosenplayerspawns[player.clientid])) {
        return undefined;
    }
    spawbeaconid = level.spawnselect.lastchosenplayerspawns[player.clientid];
    if (spawbeaconid == -1 || spawbeaconid == -2) {
        return undefined;
    }
    if (!isdefined(level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid])) {
        return undefined;
    }
    if (isdefined(level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid].var_34d7dddd) && level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid].var_34d7dddd) {
        return undefined;
    }
    return level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid];
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x0
// Checksum 0x80b5d1ba, Offset: 0xdb0
// Size: 0xb0
function fillspawnlists() {
    foreach (spawngroup in level.spawngroups) {
        spawngroup setupspawnlistforspawngroup(spawngroup.target, spawngroup.spawnlist, util::get_team_mapping(spawngroup.script_team));
    }
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0x936c8f85, Offset: 0xe68
// Size: 0x70
function clearcacheforplayer() {
    if (!isdefined(self) || !isdefined(self.clientid)) {
        return;
    }
    if (isdefined(level.spawnselect.lastchosenplayerspawns) && isdefined(level.spawnselect.lastchosenplayerspawns[self.clientid])) {
        level.spawnselect.lastchosenplayerspawns[self.clientid] = undefined;
    }
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0x6a88ff1d, Offset: 0xee0
// Size: 0x16
function clearcacheforallplayers() {
    level.spawnselect.lastchosenplayerspawns = [];
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x0
// Checksum 0x4107d31e, Offset: 0xf00
// Size: 0x9c
function getlastchosenspawngroupforplayer() {
    if (!isdefined(level.spawnselect.lastchosenplayerspawns[self.clientid])) {
        return undefined;
    }
    if (level.spawnselect.lastchosenplayerspawns[self.clientid] == -2) {
        return undefined;
    }
    lastchosenid = level.spawnselect.lastchosenplayerspawns[self.clientid];
    if (!isdefined(level.spawngroups[lastchosenid])) {
        return undefined;
    }
    return level.spawngroups[lastchosenid];
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0xf5d3e812, Offset: 0xfa8
// Size: 0x34
function onroundchange() {
    clearcacheforallplayers();
    supressspawnselectionmenuforallplayers();
    closespawnselectionmenuforallplayers();
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x0
// Checksum 0xa898340c, Offset: 0xfe8
// Size: 0x30
function function_5cd68e00() {
    player = self;
    level.spawnselect.lastchosenplayerspawns[player.clientid] = -2;
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0x3b4227c2, Offset: 0x1020
// Size: 0x10
function supressspawnselectionmenuforallplayers() {
    level.showspawnselectionmenu = [];
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0x10bad694, Offset: 0x1038
// Size: 0x164
function shouldshowspawnselectionmenu() {
    isbot = isbot(self);
    var_1367cd2a = (isdefined(level.spawnselect.lastchosenplayerspawns[self.clientid]) ? level.spawnselect.lastchosenplayerspawns[self.clientid] : -1) == -2;
    gameended = gamestate::is_game_over();
    nolives = level.numteamlives > 0 && game.lives[self.team] < 0;
    var_d302b268 = (isdefined(level.spawnselect.var_d302b268) ? level.spawnselect.var_d302b268 : 0) && function_127864f2(self);
    return !isbot && !var_1367cd2a && !level.infinalkillcam && !gameended && !nolives || var_d302b268;
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0xf6da6e9c, Offset: 0x11a8
// Size: 0x18
function activatespawnselectionmenu() {
    level.showspawnselectionmenu[self.clientid] = 1;
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0x9826ec4e, Offset: 0x11c8
// Size: 0x80
function openspawnselect() {
    if (is_true(level.var_582f7d48)) {
        while (is_true(level.var_582f7d48)) {
            waitframe(1);
        }
    }
    self clientfield::set_player_uimodel("hudItems.showSpawnSelect", 1);
    level notify(#"hash_4c1be11f1e312a36");
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0xb363f1b6, Offset: 0x1250
// Size: 0x38
function closespawnselect() {
    self clientfield::set_player_uimodel("hudItems.showSpawnSelect", 0);
    level notify(#"hash_48b4c5f856407d62");
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x0
// Checksum 0x78bfdd94, Offset: 0x1290
// Size: 0x28
function function_fed7687f() {
    return self clientfield::get_player_uimodel("hudItems.showSpawnSelect") == 1;
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0xc560ac63, Offset: 0x12c0
// Size: 0xa0
function closespawnselectionmenuforallplayers() {
    players = getplayers();
    foreach (player in players) {
        player closespawnselect();
    }
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0x4b7d457a, Offset: 0x1368
// Size: 0x54
function function_b55c5868() {
    self endon(#"disconnect", #"end_respawn");
    self openspawnselect();
    self thread watchforselectiontimeout();
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0xe2f944a, Offset: 0x13c8
// Size: 0x184
function waitforspawnselection() {
    self endon(#"disconnect", #"end_respawn");
    while (true) {
        waitresult = self waittill(#"menuresponse");
        menu = waitresult.menu;
        response = waitresult.response;
        if (response == "SpawnRegionFocus") {
            waitframe(1);
            continue;
        }
        var_ff3ca6eb = 0;
        if (isdefined(level.var_2fa4efc2)) {
            var_ff3ca6eb = [[ level.var_2fa4efc2 ]](waitresult);
        }
        if (menu == "SpawnSelect" && !var_ff3ca6eb) {
            if (isplayer(self)) {
                self setspawngroupforplayer(waitresult.intpayload);
                if (!level.infinalkillcam) {
                    self killcam::function_875fc588();
                }
                self closespawnselect();
                self.var_eca4c67f = 0;
            }
            return;
        }
        waitframe(1);
    }
    self closespawnselect();
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0xaaeb9f4b, Offset: 0x1558
// Size: 0x84
function watchforselectiontimeout() {
    self endon(#"disconnect", #"end_respawn");
    self.spawnselect_start_time = gettime();
    while (true) {
        if (level.spawnselect_timelimit_ms - gettime() - self.spawnselect_start_time <= 0) {
            self luinotifyevent(#"force_spawn_selection");
            return;
        }
        wait(0.1);
    }
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x6 linked
// Checksum 0xeabc1290, Offset: 0x15e8
// Size: 0x1c
function private on_player_disconnect() {
    self clearcacheforplayer();
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x2 linked
// Checksum 0x800233bc, Offset: 0x1610
// Size: 0x20e
function filter_spawnpoints(*spawnpoints) {
    e_player = self;
    if (!isdefined(e_player.clientid)) {
        return;
    }
    if (!isdefined(level.spawnselect.lastchosenplayerspawns[e_player.clientid])) {
        return undefined;
    }
    spawbeaconid = level.spawnselect.lastchosenplayerspawns[e_player.clientid];
    if (spawbeaconid == -1) {
        return undefined;
    }
    if (spawbeaconid == -2) {
        return undefined;
    }
    if (!isdefined(level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid])) {
        /#
            print("<unknown string>");
        #/
        level.spawnselect.lastchosenplayerspawns[e_player.clientid] = -1;
        return undefined;
    }
    assert(e_player getteam() == level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid].team);
    if (e_player getteam() != level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid].team) {
        return undefined;
    }
    assert(isdefined(level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid].spawns) && level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid].spawns.size > 0);
    e_player.var_7007b746 = 1;
    return level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid].spawns;
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x6 linked
// Checksum 0xbdac9af, Offset: 0x1828
// Size: 0x5ca
function private function_259770ba(e_player) {
    if (!isdefined(level.spawnselect.lastchosenplayerspawns[e_player.clientid]) || spawning::usestartspawns()) {
        return undefined;
    }
    spawbeaconid = level.spawnselect.lastchosenplayerspawns[e_player.clientid];
    if (spawbeaconid == -1) {
        return undefined;
    }
    if (spawbeaconid == -2) {
        return undefined;
    }
    if (!isdefined(level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid])) {
        /#
            print("<unknown string>");
        #/
        level.spawnselect.lastchosenplayerspawns[e_player.clientid] = -1;
        return undefined;
    }
    if (e_player getteam() != level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid].team) {
        /#
            println("<unknown string>");
            println("<unknown string>" + spawbeaconid + "<unknown string>");
            println("<unknown string>" + e_player.team + "<unknown string>");
            for (index = 0; index < level.spawnselect.vox_plr_1_revive_down_2.size; index++) {
                if (!isdefined(level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid])) {
                    continue;
                }
                println("<unknown string>" + index + "<unknown string>");
                println("<unknown string>" + level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid].objectiveid + "<unknown string>");
                println("<unknown string>" + level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid].team + "<unknown string>");
                if (isdefined(level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid].owner.playername)) {
                    println("<unknown string>" + level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid].owner.playername + "<unknown string>");
                }
                println("<unknown string>");
            }
            println("<unknown string>" + level.numgametypereservedobjectives + "<unknown string>");
            println("<unknown string>" + level.releasedobjectives.size + "<unknown string>");
            println("<unknown string>");
            foreach (objid in level.releasedobjectives) {
                println(objid + "<unknown string>");
            }
            println("<unknown string>");
            foreach (objid in level.spawnbeaconsettings.var_e7571ff1) {
                println(objid + "<unknown string>");
            }
            println("<unknown string>");
        #/
        assert(e_player.team == level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid].team);
        return undefined;
    }
    assert(isdefined(level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid].spawns) && level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid].spawns.size > 0);
    return level.spawnselect.vox_plr_1_revive_down_2[spawbeaconid].spawnlist;
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x6 linked
// Checksum 0x611d9a31, Offset: 0x1e00
// Size: 0x20
function private getclientfieldprefix(id) {
    return "spawngroupStatus_" + id + "_";
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x6 linked
// Checksum 0x507855b4, Offset: 0x1e28
// Size: 0x14c
function private registerclientfields() {
    for (index = 0; index < 20; index++) {
        basename = getclientfieldprefix(index);
        clientfield::function_5b7d846d(basename + "visStatus", 1, 1, "int");
        clientfield::function_5b7d846d(basename + "useStatus", 1, 1, "int");
        clientfield::function_5b7d846d(basename + "team", 1, 2, "int");
    }
    clientfield::register_clientuimodel("hudItems.showSpawnSelect", 1, 1, "int");
    clientfield::register_clientuimodel("hudItems.killcamActive", 1, 1, "int");
    clientfield::function_5b7d846d("hideautospawnoption", 1, 1, "int");
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0x3a6ed7ae, Offset: 0x1f80
// Size: 0x2c
function waitandenablespawngroups() {
    util::wait_network_frame(1);
    setspawngroupsenabled();
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x0
// Checksum 0x4a47c149, Offset: 0x1fb8
// Size: 0x2c
function function_4f78b01d(shoulddisable) {
    level clientfield::set_world_uimodel("hideautospawnoption", shoulddisable);
}

// Namespace userspawnselection/userspawnselection
// Params 0, eflags: 0x2 linked
// Checksum 0x8e22dba, Offset: 0x1ff0
// Size: 0x13e
function on_start_gametype() {
    spawngroups = getentarray("spawn_group_marker", "classname");
    if (!isdefined(spawngroups) || spawngroups.size == 0) {
        return;
    }
    if (level.usespawngroups) {
        spawngroupssorted = arraysort(spawngroups, (0, 0, 0), 1);
        foreach (spawngroup in spawngroupssorted) {
            if (!spawning::function_d3d4ff67(spawngroup)) {
                continue;
            }
            setupspawngroup(spawngroup);
        }
    }
    waitandenablespawngroups();
    if (isspawnselectenabled()) {
    }
}

// Namespace userspawnselection/userspawnselection
// Params 3, eflags: 0x6 linked
// Checksum 0x7d8bb86f, Offset: 0x2138
// Size: 0x1f0
function private setupspawnlistforspawngroup(spawngroupkey, spawnlistname, team) {
    rawspawns = struct::get_array(spawngroupkey, "groupname");
    if (!isdefined(rawspawns)) {
        return;
    }
    self.spawns = [];
    var_38345be7 = 0;
    var_496cfe58 = 0;
    var_12de913c = 0;
    var_3cc38ddd = 0;
    foreach (spawn in rawspawns) {
        if (!spawning::function_d3d4ff67(spawn)) {
            continue;
        }
        if (!isdefined(spawn.enabled)) {
            spawn.enabled = -1;
        }
        array::add(self.spawns, spawn);
        var_38345be7 += spawn.origin[0];
        var_496cfe58 += spawn.origin[1];
        var_12de913c += spawn.origin[2];
        var_3cc38ddd++;
    }
    var_b5d9fb3a = undefined;
    if (var_3cc38ddd > 0) {
        var_b5d9fb3a = (var_38345be7 / var_3cc38ddd, var_496cfe58 / var_3cc38ddd, var_12de913c / var_3cc38ddd);
    }
    addspawnpoints(team, self.spawns, spawnlistname);
    return var_b5d9fb3a;
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x6 linked
// Checksum 0xd806d74f, Offset: 0x2330
// Size: 0x13e
function private setupspawngroup(spawngroup) {
    spawngroup.objectiveid = gameobjects::get_next_obj_id();
    if (level.teambased && isdefined(game.switchedsides) && game.switchedsides) {
        spawngroup.team = util::getotherteam(spawngroup.script_team);
    } else {
        spawngroup.team = spawngroup.script_team;
    }
    var_b5d9fb3a = spawngroup setupspawnlistforspawngroup(spawngroup.target, spawngroup.spawnlist, spawngroup.team);
    objectivename = spawngroup.script_objective;
    objective_add(spawngroup.objectiveid, "active", var_b5d9fb3a, objectivename);
    objective_setteam(spawngroup.objectiveid, spawngroup.team);
    level.spawnselect.vox_plr_1_revive_down_2[spawngroup.objectiveid] = spawngroup;
    spawngroup.var_34d7dddd = 1;
}

// Namespace userspawnselection/userspawnselection
// Params 1, eflags: 0x2 linked
// Checksum 0xc492f1d9, Offset: 0x2478
// Size: 0x98
function getteamclientfieldvalue(team) {
    if (!isdefined(team)) {
        return 0;
    }
    teamname = util::get_team_mapping(team);
    if (team == #"allies") {
        return 1;
    } else if (team == #"axis") {
        return 2;
    } else if (team == #"neutral") {
        return 3;
    }
    return 0;
}

