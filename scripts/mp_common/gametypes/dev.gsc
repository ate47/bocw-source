// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\player\player_loadout.gsc;
#using scripts\core_common\bots\bot_action.gsc;
#using scripts\core_common\bots\bot.gsc;
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\gametypes\globallogic_utils.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\mp_common\gametypes\dev_spawn.gsc;
#using scripts\mp_common\gametypes\dev_class.gsc;
#using scripts\mp_common\devgui.gsc;
#using script_7d712f77ab8d0c16;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\sound_shared.gsc;
#using scripts\core_common\potm_shared.gsc;
#using scripts\core_common\perks.gsc;
#using scripts\killstreaks\helicopter_shared.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\killcam_shared.gsc;
#using scripts\core_common\dev_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace dev;

// Namespace dev/dev
// Params 0, eflags: 0x5
// Checksum 0x40af7eb2, Offset: 0x140
// Size: 0x4c
function private autoexec __init__system__() {
    /#
        register(#"dev", &function_70a657d8, undefined, undefined, #"spawning_shared");
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x4
// Checksum 0x4cbd484f, Offset: 0x198
// Size: 0x5c
function private function_70a657d8() {
    callback::on_start_gametype(&init);
    callback::on_connect(&on_player_connected);
    /#
        level.devongetormakebot = &getormakebot;
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x2 linked
// Checksum 0x436e6bbd, Offset: 0x200
// Size: 0x3a8
function init() {
    /#
        if (getdvarstring(#"scr_show_hq_spawns") == "<unknown string>") {
            setdvar(#"scr_show_hq_spawns", "<unknown string>");
        }
        if (!isdefined(getdvar(#"scr_testscriptruntimeerror"))) {
            setdvar(#"scr_testscriptruntimeerror", "<unknown string>");
        }
        if (getdvarstring(#"hash_42bc2c660a3d2ecd") == "<unknown string>") {
            setdvar(#"hash_42bc2c660a3d2ecd", "<unknown string>");
        }
        thread testscriptruntimeerror();
        thread testdvars();
        thread addenemyheli();
        thread addtestcarepackage();
        thread devhelipathdebugdraw();
        thread devstraferunpathdebugdraw();
        thread dev_cac_init();
        thread function_d8049496();
        thread setplayermomentumdebug();
        setdvar(#"scr_giveperk", "<unknown string>");
        setdvar(#"scr_forceevent", "<unknown string>");
        setdvar(#"scr_draw_triggers", 0);
        setdvar(#"scr_givegesture", "<unknown string>");
        thread engagement_distance_debug_toggle();
        thread equipment_dev_gui();
        thread grenade_dev_gui();
        setdvar(#"debug_dynamic_ai_spawning", 0);
        level.dem_spawns = [];
        if (level.gametype == "<unknown string>") {
            extra_spawns = [];
            extra_spawns[0] = "<unknown string>";
            extra_spawns[1] = "<unknown string>";
            extra_spawns[2] = "<unknown string>";
            extra_spawns[3] = "<unknown string>";
            for (i = 0; i < extra_spawns.size; i++) {
                points = getentarray(extra_spawns[i], "<unknown string>");
                if (isdefined(points) && points.size > 0) {
                    level.dem_spawns = arraycombine(level.dem_spawns, points, 1, 0);
                }
            }
        }
        for (;;) {
            updatedevsettings();
            wait(0.5);
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x2 linked
// Checksum 0xad188b31, Offset: 0x5b0
// Size: 0x44
function on_player_connected() {
    /#
        if (is_true(level.devgui_unlimited_ammo)) {
            wait(1);
            self thread devgui_unlimited_ammo();
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0xfe727550, Offset: 0x600
// Size: 0x3d8
function updatehardpoints() {
    /#
        foreach (key, streak in level.killstreaks) {
            dvar = streak.devdvar;
            enemydvar = streak.devenemydvar;
            host = gethostplayer();
            if (isdefined(dvar) && getdvarint(dvar, 0) == 1) {
                foreach (player in level.players) {
                    if (is_true(level.usingmomentum) && is_true(level.usingscorestreaks)) {
                        player give(key);
                    } else if (isbot(player)) {
                        player.bot[#"killstreaks"] = [];
                        player.bot[#"killstreaks"][0] = get_menu_name(key);
                        killstreakweapon = get_killstreak_weapon(key);
                        player give_weapon(killstreakweapon, 1);
                        _setplayermomentum(player, 2000);
                    } else {
                        player give(key);
                    }
                }
                setdvar(dvar, 0);
            }
            if (isdefined(enemydvar) && getdvarint(enemydvar, 0) == 1) {
                team = "<unknown string>";
                player = gethostplayer();
                if (isdefined(player.team)) {
                    team = getotherteam(player.team);
                }
                ent = getormakebot(team);
                if (!isdefined(ent)) {
                    println("<unknown string>");
                } else {
                    wait(1);
                    if (isdefined(ent)) {
                        ent give(key);
                        ent function_d6318084(streak.weapon);
                        ent function_32020adf(3);
                    }
                    setdvar(enemydvar, 0);
                }
            }
        }
    #/
}

// Namespace dev/dev
// Params 1, eflags: 0x0
// Checksum 0xf33029c2, Offset: 0x9e0
// Size: 0x64
function warpalltohost(team) {
    /#
        host = gethostplayer();
        players = getplayers();
        function_30d59c86(team, host, players);
    #/
}

// Namespace dev/dev
// Params 2, eflags: 0x0
// Checksum 0xb10e3058, Offset: 0xa50
// Size: 0xa4
function warpalltoplayer(team, player) {
    /#
        players = getplayers();
        target = undefined;
        for (i = 0; i < players.size; i++) {
            if (players[i].name == player) {
                target = players[i];
                break;
            }
        }
        function_30d59c86(team, player, players);
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0xc618ed1f, Offset: 0xb00
// Size: 0x3c
function function_9758857b() {
    /#
        host = gethostplayer();
        function_e8b29265(host);
    #/
}

// Namespace dev/dev
// Params 1, eflags: 0x0
// Checksum 0xdba615f, Offset: 0xb48
// Size: 0x15c
function function_e8b29265(player) {
    /#
        players = [];
        foreach (team in level.teams) {
            players_on_team = getplayers(team);
            foreach (person in players_on_team) {
                if (isalive(person)) {
                    players[players.size] = person;
                    break;
                }
            }
        }
        function_30d59c86(undefined, player, players);
    #/
}

// Namespace dev/dev
// Params 3, eflags: 0x0
// Checksum 0x1d7f2b4d, Offset: 0xcb0
// Size: 0x40c
function function_30d59c86(team, target, players) {
    /#
        if (isdefined(target)) {
            origin = target.origin;
            nodes = getnodesinradius(origin, 128, 32, 128, #"path");
            angles = target getplayerangles();
            yaw = (0, angles[1], 0);
            forward = anglestoforward(yaw);
            spawn_origin = origin + forward * 128 + vectorscale((0, 0, 1), 16);
            spiral = undefined;
            if (!bullettracepassed(target geteye(), spawn_origin, 0, target)) {
                spawn_origin = undefined;
            } else {
                spiral = function_a4ccb933(spawn_origin, angleclamp180(angles[1] + 180));
            }
            foreach (player in players) {
                if (player == target) {
                    continue;
                }
                if (isdefined(team)) {
                    if (strstartswith(team, "<unknown string>") && target.team == player.team) {
                        continue;
                    }
                    jumpiffalse(strstartswith(team, "<unknown string>") && target.team != player.team) LOC_00000288;
                } else {
                LOC_00000288:
                    goal = undefined;
                    if (isdefined(spiral)) {
                        origin = function_98c05766(spiral);
                        angle = function_4783f10c(spiral);
                        function_df0b6f84(spiral);
                        player setorigin(origin);
                        player setplayerangles((0, angle, 0));
                        goal = origin;
                    } else if (nodes.size > 0) {
                        node = random(nodes);
                        player setorigin(node.origin);
                        goal = node;
                    } else {
                        player setorigin(origin);
                        goal = origin;
                    }
                    if (isdefined(goal) && isbot(player)) {
                        player setgoal(goal, 1);
                    }
                }
            }
        }
        setdvar(#"scr_playerwarp", "<unknown string>");
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0xe0ae1d29, Offset: 0x10c8
// Size: 0x424
function updatedevsettingszm() {
    /#
        if (level.players.size > 0) {
            if (getdvarint(#"r_streamdumpdistance", 0) == 3) {
                if (!isdefined(level.streamdumpteamindex)) {
                    level.streamdumpteamindex = 0;
                } else {
                    level.streamdumpteamindex++;
                }
                numpoints = 0;
                spawnpoints = [];
                location = level.scr_zm_map_start_location;
                if ((location == "<unknown string>" || location == "<unknown string>") && isdefined(level.default_start_location)) {
                    location = level.default_start_location;
                }
                match_string = level.scr_zm_ui_gametype + "<unknown string>" + location;
                if (level.streamdumpteamindex < level.teams.size) {
                    structs = get_array("<unknown string>", "<unknown string>");
                    if (isdefined(structs)) {
                        foreach (struct in structs) {
                            if (isdefined(struct.script_string)) {
                                tokens = strtok(struct.script_string, "<unknown string>");
                                foreach (token in tokens) {
                                    if (token == match_string) {
                                        spawnpoints[spawnpoints.size] = struct;
                                    }
                                }
                            }
                        }
                    }
                    if (!isdefined(spawnpoints) || spawnpoints.size == 0) {
                        spawnpoints = get_array("<unknown string>", "<unknown string>");
                    }
                    if (isdefined(spawnpoints)) {
                        numpoints = spawnpoints.size;
                    }
                }
                if (numpoints == 0) {
                    setdvar(#"r_streamdumpdistance", 0);
                    level.streamdumpteamindex = -1;
                } else {
                    averageorigin = (0, 0, 0);
                    averageangles = (0, 0, 0);
                    foreach (spawnpoint in spawnpoints) {
                        averageorigin = averageorigin + spawnpoint.origin / numpoints;
                        averageangles = averageangles + spawnpoint.angles / numpoints;
                    }
                    level.players[0] setplayerangles(averageangles);
                    level.players[0] setorigin(averageorigin);
                    wait(5);
                    setdvar(#"r_streamdumpdistance", 2);
                }
            }
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x89fa7e82, Offset: 0x14f8
// Size: 0x25ec
function updatedevsettings() {
    /#
        player = gethostplayer();
        updateminimapsetting();
        if (level.players.size > 0) {
            updatehardpoints();
            playerwarp_string = getdvarstring(#"scr_playerwarp");
            if (playerwarp_string == "<unknown string>") {
                warpalltohost();
            } else if (playerwarp_string == "<unknown string>") {
                warpalltohost(playerwarp_string);
            } else if (playerwarp_string == "<unknown string>") {
                warpalltohost(playerwarp_string);
            } else if (playerwarp_string == "<unknown string>") {
                function_9758857b();
            } else if (strstartswith(playerwarp_string, "<unknown string>")) {
                name = getsubstr(playerwarp_string, 8);
                warpalltoplayer(playerwarp_string, name);
            } else if (strstartswith(playerwarp_string, "<unknown string>")) {
                name = getsubstr(playerwarp_string, 11);
                warpalltoplayer(playerwarp_string, name);
            } else if (strstartswith(playerwarp_string, "<unknown string>")) {
                name = getsubstr(playerwarp_string, 4);
                warpalltoplayer(undefined, name);
            } else if (playerwarp_string == "<unknown string>") {
                players = getplayers();
                setdvar(#"scr_playerwarp", "<unknown string>");
                if (!isdefined(level.devgui_start_spawn_index)) {
                    level.devgui_start_spawn_index = 0;
                }
                player = gethostplayer();
                spawns = level.spawn_start[player.pers[#"team"]];
                if (!isdefined(spawns) || spawns.size <= 0) {
                    return;
                }
                for (i = 0; i < players.size; i++) {
                    players[i] setorigin(spawns[level.devgui_start_spawn_index].origin);
                    players[i] setplayerangles(spawns[level.devgui_start_spawn_index].angles);
                }
                level.devgui_start_spawn_index++;
                if (level.devgui_start_spawn_index >= spawns.size) {
                    level.devgui_start_spawn_index = 0;
                }
            } else if (playerwarp_string == "<unknown string>") {
                players = getplayers();
                setdvar(#"scr_playerwarp", "<unknown string>");
                if (!isdefined(level.devgui_start_spawn_index)) {
                    level.devgui_start_spawn_index = 0;
                }
                player = gethostplayer();
                spawns = level.spawn_start[player.pers[#"team"]];
                if (!isdefined(spawns) || spawns.size <= 0) {
                    return;
                }
                for (i = 0; i < players.size; i++) {
                    players[i] setorigin(spawns[level.devgui_start_spawn_index].origin);
                    players[i] setplayerangles(spawns[level.devgui_start_spawn_index].angles);
                }
                level.devgui_start_spawn_index--;
                if (level.devgui_start_spawn_index < 0) {
                    level.devgui_start_spawn_index = spawns.size - 1;
                }
            } else if (playerwarp_string == "<unknown string>") {
                players = getplayers();
                setdvar(#"scr_playerwarp", "<unknown string>");
                if (!isdefined(level.devgui_spawn_index)) {
                    level.devgui_spawn_index = 0;
                }
                spawns = isdefined(level.var_3da2623a) ? level.var_3da2623a : level.spawnpoints;
                spawns = arraycombine(spawns, level.dem_spawns, 1, 0);
                if (!isdefined(spawns) || spawns.size <= 0) {
                    return;
                }
                for (i = 0; i < players.size; i++) {
                    players[i] setorigin(spawns[level.devgui_spawn_index].origin);
                    players[i] setplayerangles(spawns[level.devgui_spawn_index].angles);
                }
                level.devgui_spawn_index++;
                if (level.devgui_spawn_index >= spawns.size) {
                    level.devgui_spawn_index = 0;
                }
            } else if (playerwarp_string == "<unknown string>") {
                players = getplayers();
                setdvar(#"scr_playerwarp", "<unknown string>");
                if (!isdefined(level.devgui_spawn_index)) {
                    level.devgui_spawn_index = 0;
                }
                spawns = isdefined(level.var_3da2623a) ? level.var_3da2623a : level.spawnpoints;
                spawns = arraycombine(spawns, level.dem_spawns, 1, 0);
                if (!isdefined(spawns) || spawns.size <= 0) {
                    return;
                }
                for (i = 0; i < players.size; i++) {
                    players[i] setorigin(spawns[level.devgui_spawn_index].origin);
                    players[i] setplayerangles(spawns[level.devgui_spawn_index].angles);
                }
                level.devgui_spawn_index--;
                if (level.devgui_spawn_index < 0) {
                    level.devgui_spawn_index = spawns.size - 1;
                }
            } else if (getdvarstring(#"scr_devgui_spawn") != "<unknown string>") {
                player = gethostplayer();
                if (!isdefined(player.devgui_spawn_active)) {
                    player.devgui_spawn_active.player = 0;
                }
                if (!player.devgui_spawn_active) {
                    iprintln("<unknown string>");
                    iprintln("<unknown string>");
                    player.devgui_spawn_active.player = 1;
                    player thread devgui_spawn_think();
                } else {
                    player notify(#"devgui_spawn_think");
                    player.devgui_spawn_active.player = 0;
                    player setactionslot(3, "<unknown string>");
                }
                setdvar(#"scr_devgui_spawn", "<unknown string>");
            } else if (getdvarstring(#"hash_c9f8ff06a656024") != "<unknown string>") {
                if (!isdefined(level.var_31922da4)) {
                    level.var_31922da4 = 0;
                }
                player = level.players[0];
                if (!level.var_31922da4) {
                    iprintln("<unknown string>");
                    iprintln("<unknown string>");
                    level.var_31922da4 = 1;
                    player thread function_48a6b85();
                } else {
                    level notify(#"hash_47f3d9a9e91670d1");
                    level.var_31922da4 = 0;
                    player setactionslot(3, "<unknown string>");
                }
                setdvar(#"hash_c9f8ff06a656024", "<unknown string>");
            } else if (getdvarstring(#"scr_player_ammo") != "<unknown string>") {
                players = getplayers();
                if (!isdefined(level.devgui_unlimited_ammo)) {
                    level.devgui_unlimited_ammo = 1;
                } else {
                    level.devgui_unlimited_ammo = !level.devgui_unlimited_ammo;
                }
                if (level.devgui_unlimited_ammo) {
                    iprintln("<unknown string>");
                } else {
                    iprintln("<unknown string>");
                }
                for (i = 0; i < players.size; i++) {
                    if (level.devgui_unlimited_ammo) {
                        players[i] thread devgui_unlimited_ammo();
                    } else {
                        players[i] notify(#"devgui_unlimited_ammo");
                    }
                }
                setdvar(#"scr_player_ammo", "<unknown string>");
            } else if (getdvarstring(#"scr_player_momentum") != "<unknown string>") {
                if (!isdefined(level.devgui_unlimited_momentum)) {
                    level.devgui_unlimited_momentum = 1;
                } else {
                    level.devgui_unlimited_momentum = !level.devgui_unlimited_momentum;
                }
                if (level.devgui_unlimited_momentum) {
                    iprintln("<unknown string>");
                    level thread devgui_unlimited_momentum();
                } else {
                    iprintln("<unknown string>");
                    level notify(#"devgui_unlimited_momentum");
                }
                setdvar(#"scr_player_momentum", "<unknown string>");
            } else if (getdvarstring(#"scr_give_player_score") != "<unknown string>") {
                level thread devgui_increase_momentum(getdvarint(#"scr_give_player_score", 0));
                setdvar(#"scr_give_player_score", "<unknown string>");
            } else if (getdvarstring(#"hash_7d7add0fb8d419c8") != "<unknown string>") {
                level thread function_e88bdbcf();
                setdvar(#"hash_7d7add0fb8d419c8", "<unknown string>");
            } else if (getdvarstring(#"scr_player_zero_ammo") != "<unknown string>") {
                players = getplayers();
                for (i = 0; i < players.size; i++) {
                    player = players[i];
                    weapons = player getweaponslist();
                    arrayremovevalue(weapons, level.weaponbasemelee);
                    for (j = 0; j < weapons.size; j++) {
                        if (weapons[j] == level.weaponnone) {
                            continue;
                        }
                        player setweaponammostock(weapons[j], 0);
                        player setweaponammoclip(weapons[j], 0);
                    }
                }
                setdvar(#"scr_player_zero_ammo", "<unknown string>");
            } else if (getdvarstring(#"scr_emp_jammed") != "<unknown string>") {
                players = getplayers();
                for (i = 0; i < players.size; i++) {
                    player = players[i];
                    player setempjammed(getdvarint(#"scr_emp_jammed", 0));
                }
                setdvar(#"scr_emp_jammed", "<unknown string>");
            } else if (getdvarstring(#"scr_round_pause") != "<unknown string>") {
                if (!level.timerstopped) {
                    iprintln("<unknown string>");
                    pausetimer();
                } else {
                    iprintln("<unknown string>");
                    resumetimer();
                }
                setdvar(#"scr_round_pause", "<unknown string>");
            } else if (getdvarstring(#"scr_round_end") != "<unknown string>") {
                level forceend();
                setdvar(#"scr_round_end", "<unknown string>");
            } else if (getdvarint(#"scr_health_debug", 0)) {
                players = getplayers();
                host = gethostplayer();
                if (!isdefined(host.devgui_health_debug)) {
                    host.devgui_health_debug.host = 0;
                }
                if (host.devgui_health_debug) {
                    host.devgui_health_debug.host = 0;
                    for (i = 0; i < players.size; i++) {
                        players[i] notify(#"devgui_health_debug");
                        if (isdefined(players[i].debug_health_bar)) {
                            players[i].debug_health_bar destroy();
                            players[i].debug_health_text destroy();
                            players[i].debug_health_bar = undefined;
                            players[i].debug_health_text = undefined;
                        }
                    }
                } else {
                    host.devgui_health_debug.host = 1;
                    for (i = 0; i < players.size; i++) {
                        players[i] thread devgui_health_debug();
                    }
                }
                setdvar(#"scr_health_debug", 0);
            } else if (getdvarstring(#"scr_show_hq_spawns") != "<unknown string>") {
                if (!isdefined(level.devgui_show_hq)) {
                    level.devgui_show_hq = 0;
                }
                if (level.gametype == "<unknown string>" && isdefined(level.radios)) {
                    if (!level.devgui_show_hq) {
                        for (i = 0; i < level.radios.size; i++) {
                            color = (1, 0, 0);
                            level showonespawnpoint(level.radios[i], color, "<unknown string>", 32, "<unknown string>");
                        }
                    } else {
                        level notify(#"hide_hq_points");
                    }
                    level.devgui_show_hq = !level.devgui_show_hq;
                }
                setdvar(#"scr_show_hq_spawns", "<unknown string>");
            }
            if (getdvarint(#"r_streamdumpdistance", 0) == 3) {
                if (!isdefined(level.streamdumpteamindex)) {
                    level.streamdumpteamindex = 0;
                } else {
                    level.streamdumpteamindex++;
                }
                numpoints = 0;
                if (level.streamdumpteamindex < level.teams.size) {
                    teamname = getarraykeys(level.teams)[level.streamdumpteamindex];
                    if (isdefined(level.spawn_start[teamname])) {
                        numpoints = level.spawn_start[teamname].size;
                    }
                }
                if (numpoints == 0) {
                    setdvar(#"r_streamdumpdistance", 0);
                    level.streamdumpteamindex = -1;
                } else {
                    averageorigin = (0, 0, 0);
                    averageangles = (0, 0, 0);
                    foreach (spawnpoint in level.spawn_start[teamname]) {
                        averageorigin = averageorigin + spawnpoint.origin / numpoints;
                        averageangles = averageangles + spawnpoint.angles / numpoints;
                    }
                    level.players[0] setplayerangles(averageangles);
                    level.players[0] setorigin(averageorigin);
                    wait(5);
                    setdvar(#"r_streamdumpdistance", 2);
                }
            }
        }
        if (getdvarstring(#"scr_giveperk") == "<unknown string>") {
            players = getplayers();
            iprintln("<unknown string>");
            for (i = 0; i < players.size; i++) {
                players[i] clearperks();
                players[i].extraperks = undefined;
            }
            setdvar(#"scr_giveperk", "<unknown string>");
        }
        if (getdvarstring(#"scr_giveperk") != "<unknown string>") {
            perk = getdvarstring(#"scr_giveperk");
            specialties = strtok(perk, "<unknown string>");
            players = getplayers();
            iprintln("<unknown string>" + perk + "<unknown string>");
            for (i = 0; i < players.size; i++) {
                for (j = 0; j < specialties.size; j++) {
                    players[i] perk_setperk(specialties[j]);
                    players[i].extraperks[specialties[j]] = 1;
                }
            }
            setdvar(#"scr_giveperk", "<unknown string>");
        }
        if (getdvarstring(#"scr_giveskill") == "<unknown string>") {
            players = getplayers();
            iprintln("<unknown string>");
            foreach (player in players) {
                if (!isdefined(player)) {
                    continue;
                }
                player function_e6f9e3cd();
                player function_3d16577a(player.team, player.curclass);
            }
            setdvar(#"scr_giveskill", "<unknown string>");
        }
        if (getdvarstring(#"scr_giveskill") != "<unknown string>") {
            talentname = getdvarstring(#"scr_giveskill");
            var_2fe3f7e3 = hash(talentname);
            players = getplayers();
            iprintln("<unknown string>" + talentname + "<unknown string>");
            foreach (player in players) {
                if (!isdefined(player)) {
                    continue;
                }
                player function_b5feff95(var_2fe3f7e3);
                player function_3d16577a(player.team, player.curclass);
            }
            setdvar(#"scr_giveskill", "<unknown string>");
        }
        if (getdvarstring(#"scr_givetalent") == "<unknown string>") {
            players = getplayers();
            iprintln("<unknown string>");
            foreach (player in players) {
                if (!isdefined(player)) {
                    continue;
                }
                player function_e6f9e3cd();
                player function_3d16577a(player.team, player.curclass);
            }
            setdvar(#"scr_givetalent", "<unknown string>");
        }
        if (getdvarstring(#"scr_givetalent") != "<unknown string>") {
            talentname = getdvarstring(#"scr_givetalent");
            var_2fe3f7e3 = hash(talentname);
            players = getplayers();
            iprintln("<unknown string>" + talentname + "<unknown string>");
            foreach (player in players) {
                if (!isdefined(player)) {
                    continue;
                }
                player function_b5feff95(var_2fe3f7e3);
                player function_3d16577a(player.team, player.curclass);
            }
            setdvar(#"scr_givetalent", "<unknown string>");
        }
        if (getdvarstring(#"scr_forcegrenade") != "<unknown string>") {
            force_grenade_throw(getweapon(getdvarstring(#"scr_forcegrenade")));
            setdvar(#"scr_forcegrenade", "<unknown string>");
        }
        if (getdvarstring(#"scr_forceevent") != "<unknown string>") {
            event = getdvarstring(#"scr_forceevent");
            player = gethostplayer();
            forward = anglestoforward(player.angles);
            right = anglestoright(player.angles);
            if (event == "<unknown string>") {
                player dodamage(1, player.origin + forward);
            } else if (event == "<unknown string>") {
                player dodamage(1, player.origin - forward);
            } else if (event == "<unknown string>") {
                player dodamage(1, player.origin - right);
            } else if (event == "<unknown string>") {
                player dodamage(1, player.origin + right);
            }
            setdvar(#"scr_forceevent", "<unknown string>");
        }
        if (getdvarstring(#"scr_takeperk") != "<unknown string>") {
            perk = getdvarstring(#"scr_takeperk");
            for (i = 0; i < level.players.size; i++) {
                level.players[i] perk_unsetperk(perk);
                level.players[i].extraperks[perk] = undefined;
            }
            setdvar(#"scr_takeperk", "<unknown string>");
        }
        if (getdvarstring(#"scr_x_kills_y") != "<unknown string>") {
            nametokens = strtok(getdvarstring(#"scr_x_kills_y"), "<unknown string>");
            if (nametokens.size > 1) {
                thread xkillsy(nametokens[0], nametokens[1]);
            }
            setdvar(#"scr_x_kills_y", "<unknown string>");
        }
        if (getdvarstring(#"scr_usedogs") != "<unknown string>") {
            ownername = getdvarstring(#"scr_usedogs");
            setdvar(#"scr_usedogs", "<unknown string>");
            owner = undefined;
            for (index = 0; index < level.players.size; index++) {
                if (level.players[index].name == ownername) {
                    owner = level.players[index];
                }
            }
            if (isdefined(owner)) {
                owner trigger_killstreak("<unknown string>");
            }
        }
        if (getdvarstring(#"scr_entdebug") != "<unknown string>") {
            ents = getentarray();
            level.entarray = [];
            level.entcounts = [];
            level.entgroups = [];
            for (index = 0; index < ents.size; index++) {
                classname = ents[index].classname;
                if (!issubstr(classname, "<unknown string>")) {
                    curent = ents[index];
                    level.entarray[level.entarray.size] = curent;
                    if (!isdefined(level.entcounts[classname])) {
                        level.entcounts[classname] = 0;
                    }
                    level.entcounts[classname]++;
                    if (!isdefined(level.entgroups[classname])) {
                        level.entgroups[classname] = [];
                    }
                    level.entgroups[classname][level.entgroups[classname].size] = curent;
                }
            }
        }
        if (getdvarint(#"debug_dynamic_ai_spawning", 0) && !isdefined(level.larry)) {
            thread larry_thread();
        } else if (!getdvarint(#"debug_dynamic_ai_spawning", 0)) {
            level notify(#"kill_larry");
        }
        if (getdvarint(#"scr_force_finalkillcam", 0) == 1) {
            level thread do_final_killcam();
            level thread waitthennotifyfinalkillcam();
        }
        if (getdvarint(#"scr_force_roundkillcam", 0) == 1) {
            level thread do_final_killcam();
            level thread waitthennotifyroundkillcam();
        }
        debugupdate();
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x22bcc1aa, Offset: 0x3af0
// Size: 0x44
function waitthennotifyroundkillcam() {
    /#
        waitframe(1);
        level notify(#"play_final_killcam");
        setdvar(#"scr_force_roundkillcam", 0);
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x8d205cc, Offset: 0x3b40
// Size: 0x4c
function waitthennotifyfinalkillcam() {
    /#
        waitframe(1);
        level notify(#"play_final_killcam");
        waitframe(1);
        setdvar(#"scr_force_finalkillcam", 0);
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x399fd103, Offset: 0x3b98
// Size: 0x1d0
function devgui_unlimited_ammo() {
    /#
        if (!isdefined(self)) {
            return;
        }
        self notify(#"devgui_unlimited_ammo");
        self endon(#"devgui_unlimited_ammo");
        self endon(#"disconnect");
        for (;;) {
            wait(1);
            if (!isdefined(self) || !isalive(self)) {
                continue;
            }
            primary_weapons = self getweaponslistprimaries();
            offhand_weapons_and_alts = exclude(self getweaponslist(1), primary_weapons);
            weapons = arraycombine(primary_weapons, offhand_weapons_and_alts, 0, 0);
            arrayremovevalue(weapons, level.weaponbasemelee);
            for (i = 0; i < weapons.size; i++) {
                weapon = weapons[i];
                if (weapon == level.weaponnone) {
                    continue;
                }
                if (is_killstreak_weapon(weapon)) {
                    continue;
                }
                if (weapon.iscliponly) {
                    continue;
                }
                if (self getfractionmaxammo(weapon) == 1) {
                    continue;
                }
                self givemaxammo(weapon);
            }
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0xe59b8ec7, Offset: 0x3d70
// Size: 0x11c
function devgui_unlimited_momentum() {
    /#
        level notify(#"devgui_unlimited_momentum");
        level endon(#"devgui_unlimited_momentum");
        for (;;) {
            wait(1);
            players = getplayers();
            foreach (player in players) {
                if (!isdefined(player)) {
                    continue;
                }
                if (!isalive(player)) {
                    continue;
                }
                if (player.sessionstate != "<unknown string>") {
                    continue;
                }
                _setplayermomentum(player, 5000);
            }
        }
    #/
}

// Namespace dev/dev
// Params 1, eflags: 0x0
// Checksum 0x80a37c0d, Offset: 0x3e98
// Size: 0x100
function devgui_increase_momentum(score) {
    /#
        players = getplayers();
        foreach (player in players) {
            if (!isdefined(player)) {
                continue;
            }
            if (!isalive(player)) {
                continue;
            }
            if (player.sessionstate != "<unknown string>") {
                continue;
            }
            player giveplayermomentumnotification(score, #"kill", "<unknown string>");
        }
    #/
}

// Namespace dev/dev
// Params 1, eflags: 0x0
// Checksum 0x575ba120, Offset: 0x3fa0
// Size: 0xe8
function function_e88bdbcf(*score) {
    /#
        players = getplayers();
        foreach (player in players) {
            if (isdefined(player) && isalive(player) && player.sessionstate == "<unknown string>") {
                player resetplayermomentum();
            }
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0xa07d2a38, Offset: 0x4090
// Size: 0x320
function devgui_health_debug() {
    /#
        self notify(#"devgui_health_debug");
        self endon(#"devgui_health_debug");
        self endon(#"disconnect");
        x = 80;
        y = 40;
        self.debug_health_bar = newdebughudelem(self);
        self.debug_health_bar.x = x + 80;
        self.debug_health_bar.y = y + 2;
        self.debug_health_bar.alignx = "<unknown string>";
        self.debug_health_bar.aligny = "<unknown string>";
        self.debug_health_bar.horzalign = "<unknown string>";
        self.debug_health_bar.vertalign = "<unknown string>";
        self.debug_health_bar.alpha = 1;
        self.debug_health_bar.foreground = 1;
        self.debug_health_bar setshader(#"black", 1, 8);
        self.debug_health_text = newdebughudelem(self);
        self.debug_health_text.x = x + 80;
        self.debug_health_text.y = y;
        self.debug_health_text.alignx = "<unknown string>";
        self.debug_health_text.aligny = "<unknown string>";
        self.debug_health_text.horzalign = "<unknown string>";
        self.debug_health_text.vertalign = "<unknown string>";
        self.debug_health_text.alpha = 1;
        self.debug_health_text.fontscale = 1;
        self.debug_health_text.foreground = 1;
        if (!isdefined(self.maxhealth) || self.maxhealth <= 0) {
            self.maxhealth = 100;
        }
        for (;;) {
            waitframe(1);
            width = self.health / self.maxhealth * 300;
            width = int(max(width, 1));
            self.debug_health_bar setshader(#"black", width, 8);
            self.debug_health_text setvalue(self.health);
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x1c0bc86d, Offset: 0x43b8
// Size: 0xac
function giveextraperks() {
    /#
        if (!isdefined(self.extraperks)) {
            return;
        }
        perks = getarraykeys(self.extraperks);
        for (i = 0; i < perks.size; i++) {
            /#
                println("<unknown string>" + self.name + "<unknown string>" + perks[i] + "<unknown string>");
            #/
            self perk_setperk(perks[i]);
        }
    #/
}

// Namespace dev/dev
// Params 2, eflags: 0x0
// Checksum 0x9f866857, Offset: 0x4470
// Size: 0x148
function xkillsy(attackername, victimname) {
    /#
        attacker = undefined;
        victim = undefined;
        for (index = 0; index < level.players.size; index++) {
            if (level.players[index].name == attackername) {
                attacker = level.players[index];
            } else if (level.players[index].name == victimname) {
                victim = level.players[index];
            }
        }
        if (!isalive(attacker) || !isalive(victim)) {
            return;
        }
        victim thread [[ level.callbackplayerdamage ]](attacker, attacker, 1000, 0, "<unknown string>", level.weaponnone, (0, 0, 0), (0, 0, 0), "<unknown string>", (0, 0, 0), 0, 0, (1, 0, 0));
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x18537b36, Offset: 0x45c0
// Size: 0x24
function testscriptruntimeerrorassert() {
    /#
        wait(1);
        /#
            assert(0);
        #/
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x543af3e2, Offset: 0x45f0
// Size: 0x2c
function testscriptruntimeassertmsgassert() {
    /#
        wait(1);
        /#
            assertmsg("<unknown string>");
        #/
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0xa3fdaafb, Offset: 0x4628
// Size: 0x2c
function testscriptruntimeerrormsgassert() {
    /#
        wait(1);
        /#
            errormsg("<unknown string>");
        #/
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x1031a3ba, Offset: 0x4660
// Size: 0x44
function testscriptruntimeerror2() {
    /#
        myundefined = "<unknown string>";
        if (myundefined == 1) {
            println("<unknown string>");
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x33cc66b5, Offset: 0x46b0
// Size: 0x1c
function testscriptruntimeerror1() {
    /#
        testscriptruntimeerror2();
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x3467fb2a, Offset: 0x46d8
// Size: 0x12c
function testscriptruntimeerror() {
    /#
        wait(5);
        for (;;) {
            for (;;) {
                if (getdvarstring(#"scr_testscriptruntimeerror") != "<unknown string>") {
                    break;
                }
            }
        }
        myerror = getdvarstring(#"scr_testscriptruntimeerror");
        setdvar(#"scr_testscriptruntimeerror", "<unknown string>");
        if (myerror == "<unknown string>") {
            testscriptruntimeerrorassert();
        } else if (myerror == "<unknown string>") {
            testscriptruntimeassertmsgassert();
        } else if (myerror == "<unknown string>") {
            testscriptruntimeerrormsgassert();
        } else {
            testscriptruntimeerror1();
        }
        thread testscriptruntimeerror();
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0xab925ad7, Offset: 0x4810
// Size: 0xfc
function testdvars() {
    /#
        wait(5);
        for (;;) {
            for (;;) {
                if (getdvarstring(#"scr_testdvar") != "<unknown string>") {
                    break;
                }
            }
        }
        tokens = strtok(getdvarstring(#"scr_testdvar"), "<unknown string>");
        dvarname = tokens[0];
        dvarvalue = tokens[1];
        setdvar(dvarname, dvarvalue);
        setdvar(#"scr_testdvar", "<unknown string>");
        thread testdvars();
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x5c27f9db, Offset: 0x4918
// Size: 0x22c
function addenemyheli() {
    /#
        wait(5);
        for (;;) {
            for (;;) {
                if (getdvarint(#"scr_spawnenemyheli", 0) > 0) {
                    break;
                }
            }
        }
        enemyheli = getdvarint(#"scr_spawnenemyheli", 0);
        setdvar(#"scr_spawnenemyheli", 0);
        team = "<unknown string>";
        player = gethostplayer();
        if (isdefined(player.pers[#"team"])) {
            team = getotherteam(player.pers[#"team"]);
        }
        ent = getormakebot(team);
        if (!isdefined(ent)) {
            println("<unknown string>");
            wait(1);
            thread addenemyheli();
            return;
        }
        switch (enemyheli) {
        case 1:
            level.helilocation = ent.origin;
            ent thread usekillstreakhelicopter("<unknown string>");
            wait(0.5);
            ent notify(#"confirm_location", {#position:level.helilocation});
            break;
        case 2:
            break;
        }
        thread addenemyheli();
    #/
}

// Namespace dev/dev
// Params 1, eflags: 0x0
// Checksum 0x97f5a377, Offset: 0x4b50
// Size: 0xf8
function getormakebot(team) {
    /#
        for (i = 0; i < level.players.size; i++) {
            if (level.players[i].team == team) {
                if (isbot(level.players[i])) {
                    return level.players[i];
                }
            }
        }
        ent = add_bot(team);
        if (isdefined(ent)) {
            play_on_players("<unknown string>");
            ent waittill(#"spawned_player");
            ent.ignoreall.ent = 1;
        }
        return ent;
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x761b7b7c, Offset: 0x4c50
// Size: 0x8
function addtestcarepackage() {
    /#
    #/
}

// Namespace dev/dev
// Params 6, eflags: 0x0
// Checksum 0xa33f1a23, Offset: 0x4c60
// Size: 0x6e
function print3duntilnotified(origin, text, color, alpha, scale, notification) {
    /#
        level endon(notification);
        for (;;) {
            print3d(origin, text, color, alpha, scale);
            waitframe(1);
        }
    #/
}

// Namespace dev/dev
// Params 5, eflags: 0x0
// Checksum 0x8e28398, Offset: 0x4cd8
// Size: 0x66
function lineuntilnotified(start, end, color, depthtest, notification) {
    /#
        level endon(notification);
        for (;;) {
            line(start, end, color, depthtest);
            waitframe(1);
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x250ae2f6, Offset: 0x4d48
// Size: 0x184
function engagement_distance_debug_toggle() {
    /#
        level endon(#"kill_engage_dist_debug_toggle_watcher");
        if (!isdefined(getdvarint(#"debug_engage_dists", 0))) {
            setdvar(#"debug_engage_dists", 0);
        }
        laststate = getdvarint(#"debug_engage_dists", 0);
        while (1) {
            currentstate = getdvarint(#"debug_engage_dists", 0);
            if (dvar_turned_on(currentstate) && !dvar_turned_on(laststate)) {
                weapon_engage_dists_init();
                thread debug_realtime_engage_dist();
                laststate = currentstate;
            } else if (!dvar_turned_on(currentstate) && dvar_turned_on(laststate)) {
                level notify(#"kill_all_engage_dist_debug");
                laststate = currentstate;
            }
            wait(0.3);
        }
    #/
}

// Namespace dev/dev
// Params 1, eflags: 0x0
// Checksum 0xf8a273ce, Offset: 0x4ed8
// Size: 0x2a
function dvar_turned_on(val) {
    /#
        if (val <= 0) {
            return 0;
        } else {
            return 1;
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x66b07110, Offset: 0x4f10
// Size: 0x3d2
function engagement_distance_debug_init() {
    /#
        level.debug_xpos = -50;
        level.debug_ypos = 250;
        level.debug_yinc = 18;
        level.debug_fontscale = 1.5;
        level.white = (1, 1, 1);
        level.green = (0, 1, 0);
        level.yellow = (1, 1, 0);
        level.red = (1, 0, 0);
        level.realtimeengagedist = newdebughudelem();
        level.realtimeengagedist.alignx = "<unknown string>";
        level.realtimeengagedist.fontscale = level.debug_fontscale;
        level.realtimeengagedist.x = level.debug_xpos;
        level.realtimeengagedist.y = level.debug_ypos;
        level.realtimeengagedist.color = level.white;
        level.realtimeengagedist settext("<unknown string>");
        xpos = level.debug_xpos + 245;
        level.realtimeengagedist_value = newdebughudelem();
        level.realtimeengagedist_value.alignx = "<unknown string>";
        level.realtimeengagedist_value.fontscale = level.debug_fontscale;
        level.realtimeengagedist_value.x = xpos;
        level.realtimeengagedist_value.y = level.debug_ypos;
        level.realtimeengagedist_value.color = level.white;
        level.realtimeengagedist_value setvalue(0);
        xpos = xpos + 37;
        level.realtimeengagedist_middle = newdebughudelem();
        level.realtimeengagedist_middle.alignx = "<unknown string>";
        level.realtimeengagedist_middle.fontscale = level.debug_fontscale;
        level.realtimeengagedist_middle.x = xpos;
        level.realtimeengagedist_middle.y = level.debug_ypos;
        level.realtimeengagedist_middle.color = level.white;
        level.realtimeengagedist_middle settext("<unknown string>");
        xpos = xpos + 105;
        level.realtimeengagedist_offvalue = newdebughudelem();
        level.realtimeengagedist_offvalue.alignx = "<unknown string>";
        level.realtimeengagedist_offvalue.fontscale = level.debug_fontscale;
        level.realtimeengagedist_offvalue.x = xpos;
        level.realtimeengagedist_offvalue.y = level.debug_ypos;
        level.realtimeengagedist_offvalue.color = level.white;
        level.realtimeengagedist_offvalue setvalue(0);
        hudobjarray = [];
        hudobjarray[0] = level.realtimeengagedist;
        hudobjarray[1] = level.realtimeengagedist_value;
        hudobjarray[2] = level.realtimeengagedist_middle;
        hudobjarray[3] = level.realtimeengagedist_offvalue;
        return hudobjarray;
    #/
}

// Namespace dev/dev
// Params 2, eflags: 0x0
// Checksum 0x4c26c91b, Offset: 0x52f0
// Size: 0x5c
function engage_dist_debug_hud_destroy(hudarray, killnotify) {
    /#
        level waittill(killnotify);
        for (i = 0; i < hudarray.size; i++) {
            hudarray[i] destroy();
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x68dbaf28, Offset: 0x5358
// Size: 0x684
function weapon_engage_dists_init() {
    /#
        level.engagedists = [];
        genericpistol = spawnstruct();
        genericpistol.engagedistmin.genericpistol = 125;
        genericpistol.engagedistoptimal.genericpistol = 225;
        genericpistol.engagedistmulligan.genericpistol = 50;
        genericpistol.engagedistmax.genericpistol = 400;
        shotty = spawnstruct();
        shotty.engagedistmin.shotty = 50;
        shotty.engagedistoptimal.shotty = 200;
        shotty.engagedistmulligan.shotty = 75;
        shotty.engagedistmax.shotty = 350;
        genericsmg = spawnstruct();
        genericsmg.engagedistmin.genericsmg = 100;
        genericsmg.engagedistoptimal.genericsmg = 275;
        genericsmg.engagedistmulligan.genericsmg = 100;
        genericsmg.engagedistmax.genericsmg = 500;
        genericlmg = spawnstruct();
        genericlmg.engagedistmin.genericlmg = 325;
        genericlmg.engagedistoptimal.genericlmg = 550;
        genericlmg.engagedistmulligan.genericlmg = 150;
        genericlmg.engagedistmax.genericlmg = 850;
        genericriflesa = spawnstruct();
        genericriflesa.engagedistmin.genericriflesa = 325;
        genericriflesa.engagedistoptimal.genericriflesa = 550;
        genericriflesa.engagedistmulligan.genericriflesa = 150;
        genericriflesa.engagedistmax.genericriflesa = 850;
        genericriflebolt = spawnstruct();
        genericriflebolt.engagedistmin.genericriflebolt = 350;
        genericriflebolt.engagedistoptimal.genericriflebolt = 600;
        genericriflebolt.engagedistmulligan.genericriflebolt = 150;
        genericriflebolt.engagedistmax.genericriflebolt = 900;
        generichmg = spawnstruct();
        generichmg.engagedistmin.generichmg = 390;
        generichmg.engagedistoptimal.generichmg = 600;
        generichmg.engagedistmulligan.generichmg = 100;
        generichmg.engagedistmax.generichmg = 900;
        genericsniper = spawnstruct();
        genericsniper.engagedistmin.genericsniper = 950;
        genericsniper.engagedistoptimal.genericsniper = 1700;
        genericsniper.engagedistmulligan.genericsniper = 300;
        genericsniper.engagedistmax.genericsniper = 3000;
        engage_dists_add("<unknown string>", genericpistol);
        engage_dists_add("<unknown string>", genericpistol);
        engage_dists_add("<unknown string>", genericpistol);
        engage_dists_add("<unknown string>", genericpistol);
        engage_dists_add("<unknown string>", genericsmg);
        engage_dists_add("<unknown string>", genericsmg);
        engage_dists_add("<unknown string>", genericsmg);
        engage_dists_add("<unknown string>", genericsmg);
        engage_dists_add("<unknown string>", genericsmg);
        engage_dists_add("<unknown string>", genericsmg);
        engage_dists_add("<unknown string>", genericsmg);
        engage_dists_add("<unknown string>", shotty);
        engage_dists_add("<unknown string>", genericlmg);
        engage_dists_add("<unknown string>", genericlmg);
        engage_dists_add("<unknown string>", genericlmg);
        engage_dists_add("<unknown string>", genericlmg);
        engage_dists_add("<unknown string>", genericlmg);
        engage_dists_add("<unknown string>", genericlmg);
        engage_dists_add("<unknown string>", genericlmg);
        engage_dists_add("<unknown string>", genericlmg);
        engage_dists_add("<unknown string>", genericlmg);
        engage_dists_add("<unknown string>", genericlmg);
        engage_dists_add("<unknown string>", genericriflesa);
        engage_dists_add("<unknown string>", genericriflesa);
        engage_dists_add("<unknown string>", genericriflesa);
        engage_dists_add("<unknown string>", genericriflesa);
        engage_dists_add("<unknown string>", genericriflebolt);
        engage_dists_add("<unknown string>", genericriflebolt);
        engage_dists_add("<unknown string>", genericriflebolt);
        engage_dists_add("<unknown string>", genericriflebolt);
        engage_dists_add("<unknown string>", genericriflebolt);
        engage_dists_add("<unknown string>", generichmg);
        engage_dists_add("<unknown string>", generichmg);
        engage_dists_add("<unknown string>", generichmg);
        engage_dists_add("<unknown string>", generichmg);
        engage_dists_add("<unknown string>", genericsniper);
        engage_dists_add("<unknown string>", genericsniper);
        engage_dists_add("<unknown string>", genericsniper);
        engage_dists_add("<unknown string>", genericsniper);
        engage_dists_add("<unknown string>", genericsniper);
        engage_dists_add("<unknown string>", genericsniper);
        level thread engage_dists_watcher();
    #/
}

// Namespace dev/dev
// Params 2, eflags: 0x0
// Checksum 0x95d25f43, Offset: 0x59e8
// Size: 0x3c
function engage_dists_add(weaponname, values) {
    /#
        level.engagedists[getweapon(weaponname)] = values;
    #/
}

// Namespace dev/dev
// Params 1, eflags: 0x0
// Checksum 0x74717def, Offset: 0x5a30
// Size: 0x3e
function get_engage_dists(weapon) {
    /#
        if (isdefined(level.engagedists[weapon])) {
            return level.engagedists[weapon];
        } else {
            return undefined;
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0xedc49e66, Offset: 0x5a78
// Size: 0x108
function engage_dists_watcher() {
    /#
        level endon(#"kill_all_engage_dist_debug");
        level endon(#"kill_engage_dists_watcher");
        while (1) {
            player = gethostplayer();
            playerweapon = player getcurrentweapon();
            if (!isdefined(player.lastweapon)) {
                player.lastweapon = playerweapon;
            } else if (player.lastweapon == playerweapon) {
                waitframe(1);
                continue;
            }
            values = get_engage_dists(playerweapon);
            if (isdefined(values)) {
                level.weaponengagedistvalues = values;
            } else {
                level.weaponengagedistvalues = undefined;
            }
            player.lastweapon = playerweapon;
            waitframe(1);
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x7027ebb8, Offset: 0x5b88
// Size: 0x466
function debug_realtime_engage_dist() {
    /#
        level endon(#"kill_all_engage_dist_debug");
        level endon(#"kill_realtime_engagement_distance_debug");
        hudobjarray = engagement_distance_debug_init();
        level thread engage_dist_debug_hud_destroy(hudobjarray, "<unknown string>");
        level.debugrtengagedistcolor = level.green;
        player = gethostplayer();
        while (1) {
            lasttracepos = (0, 0, 0);
            direction = player getplayerangles();
            direction_vec = anglestoforward(direction);
            eye = player geteye();
            eye = (eye[0], eye[1], eye[2] + 20);
            trace = bullettrace(eye, eye + vectorscale(direction_vec, 100000), 1, player);
            tracepoint = trace[#"position"];
            tracenormal = trace[#"normal"];
            tracedist = int(distance(eye, tracepoint));
            if (tracepoint != lasttracepos) {
                lasttracepos = tracepoint;
                if (!isdefined(level.weaponengagedistvalues)) {
                    hudobj_changecolor(hudobjarray, level.white);
                    hudobjarray engagedist_hud_changetext("<unknown string>", tracedist);
                } else {
                    engagedistmin = level.weaponengagedistvalues.engagedistmin;
                    engagedistoptimal = level.weaponengagedistvalues.engagedistoptimal;
                    engagedistmulligan = level.weaponengagedistvalues.engagedistmulligan;
                    engagedistmax = level.weaponengagedistvalues.engagedistmax;
                    if (tracedist >= engagedistmin && tracedist <= engagedistmax) {
                        if (tracedist >= engagedistoptimal - engagedistmulligan && tracedist <= engagedistoptimal + engagedistmulligan) {
                            hudobjarray engagedist_hud_changetext("<unknown string>", tracedist);
                            hudobj_changecolor(hudobjarray, level.green);
                        } else {
                            hudobjarray engagedist_hud_changetext("<unknown string>", tracedist);
                            hudobj_changecolor(hudobjarray, level.yellow);
                        }
                    } else if (tracedist < engagedistmin) {
                        hudobj_changecolor(hudobjarray, level.red);
                        hudobjarray engagedist_hud_changetext("<unknown string>", tracedist);
                    } else if (tracedist > engagedistmax) {
                        hudobj_changecolor(hudobjarray, level.red);
                        hudobjarray engagedist_hud_changetext("<unknown string>", tracedist);
                    }
                }
            }
            thread function_6844bea4(1, 5, 0.05, level.debugrtengagedistcolor, tracepoint, tracenormal);
            thread function_6844bea4(1, 1, 0.05, level.debugrtengagedistcolor, tracepoint, tracenormal);
            waitframe(1);
        }
    #/
}

// Namespace dev/dev
// Params 2, eflags: 0x0
// Checksum 0xdaea8ffe, Offset: 0x5ff8
// Size: 0x78
function hudobj_changecolor(hudobjarray, newcolor) {
    /#
        for (i = 0; i < hudobjarray.size; i++) {
            hudobj = hudobjarray[i];
            if (hudobj.color != newcolor) {
                hudobj.color = newcolor;
                level.debugrtengagedistcolor = newcolor;
            }
        }
    #/
}

// Namespace dev/dev
// Params 2, eflags: 0x0
// Checksum 0x5768e33d, Offset: 0x6078
// Size: 0x2ec
function engagedist_hud_changetext(engagedisttype, units) {
    /#
        if (!isdefined(level.lastdisttype)) {
            level.lastdisttype = "<unknown string>";
        }
        if (engagedisttype == "<unknown string>") {
            self[1] setvalue(units);
            self[2] settext("<unknown string>");
            self[3].alpha = 0;
        } else if (engagedisttype == "<unknown string>") {
            self[1] setvalue(units);
            self[2] settext("<unknown string>");
            self[3].alpha = 0;
        } else if (engagedisttype == "<unknown string>") {
            amountunder = level.weaponengagedistvalues.engagedistmin - units;
            self[1] setvalue(units);
            self[3] setvalue(amountunder);
            self[3].alpha = 1;
            if (level.lastdisttype != engagedisttype) {
                self[2] settext("<unknown string>");
            }
        } else if (engagedisttype == "<unknown string>") {
            amountover = units - level.weaponengagedistvalues.engagedistmax;
            self[1] setvalue(units);
            self[3] setvalue(amountover);
            self[3].alpha = 1;
            if (level.lastdisttype != engagedisttype) {
                self[2] settext("<unknown string>");
            }
        } else if (engagedisttype == "<unknown string>") {
            self[1] setvalue(units);
            self[2] settext("<unknown string>");
            self[3].alpha = 0;
        }
        level.lastdisttype = engagedisttype;
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x9401f54b, Offset: 0x6370
// Size: 0x14e
function larry_thread() {
    /#
        level.larry = spawnstruct();
        player = gethostplayer();
        player thread larry_init(level.larry);
        level waittill(#"kill_larry");
        larry_hud_destroy(level.larry);
        if (isdefined(level.larry.model)) {
            level.larry.model delete();
        }
        if (isdefined(level.larry.ai)) {
            for (i = 0; i < level.larry.ai.size; i++) {
                kick(level.larry.ai[i] getentitynumber());
            }
        }
        level.larry = undefined;
    #/
}

// Namespace dev/dev
// Params 1, eflags: 0x0
// Checksum 0xcc8d0370, Offset: 0x64c8
// Size: 0x244
function larry_init(larry) {
    /#
        level endon(#"kill_larry");
        larry_hud_init(larry);
        larry.model.larry = spawn("<unknown string>", (0, 0, 0));
        larry.model setmodel(#"defaultactor");
        larry.ai.larry = [];
        wait(0.1);
        for (;;) {
            waitframe(1);
            if (larry.ai.size > 0) {
                larry.model hide();
            } else {
                direction = self getplayerangles();
                direction_vec = anglestoforward(direction);
                eye = self geteye();
                trace = bullettrace(eye, eye + vectorscale(direction_vec, 8000), 0, undefined);
                dist = distance(eye, trace[#"position"]);
                position = eye + vectorscale(direction_vec, dist - 64);
                larry.model.origin = position;
                larry.model.angles = self.angles + vectorscale((0, 1, 0), 180);
                if (self usebuttonpressed()) {
                    self larry_ai(larry);
                    while (self usebuttonpressed()) {
                        waitframe(1);
                    }
                }
            }
        }
    #/
}

// Namespace dev/dev
// Params 1, eflags: 0x0
// Checksum 0x61bd3db6, Offset: 0x6718
// Size: 0x23c
function larry_ai(larry) {
    /#
        var_572bc68e = "<unknown string>";
        if (level.teambased) {
            foreach (team in level.teams) {
                if (team != self.team) {
                    var_572bc68e = team;
                    break;
                }
            }
        } else {
            foreach (team in level.teams) {
                if (getplayers(team).size == 0) {
                    var_572bc68e = team;
                    break;
                }
            }
        }
        bot = add_fixed_spawn_bot(var_572bc68e, larry.model.origin, larry.model.angles[1]);
        larry.ai[larry.ai.size] = bot;
        i = larry.ai.size - 1;
        larry.ai[i] thread larry_ai_thread(larry);
        larry.ai[i] thread larry_ai_damage(larry);
        larry.ai[i] thread larry_ai_health(larry);
    #/
}

// Namespace dev/dev
// Params 1, eflags: 0x0
// Checksum 0x8a29bb6b, Offset: 0x6960
// Size: 0x170
function larry_ai_thread(larry) {
    /#
        level endon(#"kill_larry");
        for (;;) {
            self waittill(#"spawned_player");
            larry.menu[larry.menu_health] setvalue(self.health);
            larry.menu[larry.menu_damage] settext("<unknown string>");
            larry.menu[larry.menu_range] settext("<unknown string>");
            larry.menu[larry.menu_hitloc] settext("<unknown string>");
            larry.menu[larry.menu_weapon] settext("<unknown string>");
            larry.menu[larry.menu_perks] settext("<unknown string>");
            self clearperks();
        }
    #/
}

// Namespace dev/dev
// Params 1, eflags: 0x0
// Checksum 0xd42c0e80, Offset: 0x6ad8
// Size: 0x270
function larry_ai_damage(larry) {
    /#
        level endon(#"kill_larry");
        for (;;) {
            waitresult = undefined;
            waitresult = self waittill(#"damage");
            attacker = waitresult.attacker;
            damage = waitresult.amount;
            point = waitresult.position;
            if (!isdefined(attacker)) {
                continue;
            }
            player = gethostplayer();
            if (!isdefined(player)) {
                continue;
            }
            if (attacker != player) {
                continue;
            }
            eye = player geteye();
            range = int(distance(eye, point));
            larry.menu[larry.menu_health] setvalue(self.health);
            larry.menu[larry.menu_damage] setvalue(damage);
            larry.menu[larry.menu_range] setvalue(range);
            if (isdefined(self.cac_debug_location)) {
                larry.menu[larry.menu_hitloc] settext(self.cac_debug_location);
            } else {
                larry.menu[larry.menu_hitloc] settext("<unknown string>");
            }
            if (isdefined(self.cac_debug_weapon)) {
                larry.menu[larry.menu_weapon] settext(self.cac_debug_weapon);
            } else {
                larry.menu[larry.menu_weapon] settext("<unknown string>");
            }
        }
    #/
}

// Namespace dev/dev
// Params 1, eflags: 0x0
// Checksum 0x43b2254d, Offset: 0x6d50
// Size: 0x58
function larry_ai_health(larry) {
    /#
        level endon(#"kill_larry");
        for (;;) {
            waitframe(1);
            larry.menu[larry.menu_health] setvalue(self.health);
        }
    #/
}

// Namespace dev/dev
// Params 1, eflags: 0x0
// Checksum 0xc725fb2c, Offset: 0x6db0
// Size: 0x4c4
function larry_hud_init(larry) {
    /#
        /#
            x = -45;
            y = 275;
            menu_name = "<unknown string>";
            larry.hud.larry = new_hud(menu_name, undefined, x, y, 1);
            larry.hud setshader(#"white", 135, 65);
            larry.hud.alignx = "<unknown string>";
            larry.hud.aligny = "<unknown string>";
            larry.hud.sort = 10;
            larry.hud.alpha = 0.6;
            larry.hud.color = vectorscale((0, 0, 1), 0.5);
            larry.menu[0] = new_hud(menu_name, "<unknown string>", x + 5, y + 10, 1);
            larry.menu[1] = new_hud(menu_name, "<unknown string>", x + 5, y + 20, 1);
            larry.menu[2] = new_hud(menu_name, "<unknown string>", x + 5, y + 30, 1);
            larry.menu[3] = new_hud(menu_name, "<unknown string>", x + 5, y + 40, 1);
            larry.menu[4] = new_hud(menu_name, "<unknown string>", x + 5, y + 50, 1);
            larry.cleartextmarker.larry = newdebughudelem();
            larry.cleartextmarker.alpha = 0;
            larry.cleartextmarker settext("<unknown string>");
            larry.menu_health.larry = larry.menu.size;
            larry.menu_damage.larry = larry.menu.size + 1;
            larry.menu_range.larry = larry.menu.size + 2;
            larry.menu_hitloc.larry = larry.menu.size + 3;
            larry.menu_weapon.larry = larry.menu.size + 4;
            larry.menu_perks.larry = larry.menu.size + 5;
            x_offset = 70;
            larry.menu[larry.menu_health] = new_hud(menu_name, "<unknown string>", x + x_offset, y + 10, 1);
            larry.menu[larry.menu_damage] = new_hud(menu_name, "<unknown string>", x + x_offset, y + 20, 1);
            larry.menu[larry.menu_range] = new_hud(menu_name, "<unknown string>", x + x_offset, y + 30, 1);
            larry.menu[larry.menu_hitloc] = new_hud(menu_name, "<unknown string>", x + x_offset, y + 40, 1);
            larry.menu[larry.menu_weapon] = new_hud(menu_name, "<unknown string>", x + x_offset, y + 50, 1);
            larry.menu[larry.menu_perks] = new_hud(menu_name, "<unknown string>", x + x_offset, y + 60, 1);
        #/
    #/
}

// Namespace dev/dev
// Params 1, eflags: 0x0
// Checksum 0x36de2dfa, Offset: 0x7280
// Size: 0x9c
function larry_hud_destroy(larry) {
    /#
        if (isdefined(larry.hud)) {
            larry.hud destroy();
            for (i = 0; i < larry.menu.size; i++) {
                larry.menu[i] destroy();
            }
            larry.cleartextmarker destroy();
        }
    #/
}

// Namespace dev/dev
// Params 5, eflags: 0x0
// Checksum 0xa725f912, Offset: 0x7328
// Size: 0xc4
function new_hud(hud_name, msg, x, y, scale) {
    /#
        if (!isdefined(level.hud_array)) {
            level.hud_array = [];
        }
        if (!isdefined(level.hud_array[hud_name])) {
            level.hud_array[hud_name] = [];
        }
        hud = set_hudelem(msg, x, y, scale);
        level.hud_array[hud_name][level.hud_array[hud_name].size] = hud;
        return hud;
    #/
}

// Namespace dev/dev
// Params 7, eflags: 0x0
// Checksum 0x57a4a3d4, Offset: 0x73f8
// Size: 0x142
function set_hudelem(text, x, y, scale, alpha, sort, *debug_hudelem) {
    /#
        /#
            if (!isdefined(sort)) {
                sort = 1;
            }
            if (!isdefined(alpha)) {
                alpha = 1;
            }
            if (!isdefined(debug_hudelem)) {
                debug_hudelem = 20;
            }
            hud = newdebughudelem();
            hud.debug_hudelem.hud = 1;
            hud.location.hud = 0;
            hud.alignx.hud = "<unknown string>";
            hud.aligny.hud = "<unknown string>";
            hud.foreground.hud = 1;
            hud.fontscale = alpha;
            hud.sort = debug_hudelem;
            hud.alpha = sort;
            hud.x = y;
            hud.y = scale;
            hud.og_scale = alpha;
            if (isdefined(x)) {
                hud settext(x);
            }
            return hud;
        #/
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x470b75ae, Offset: 0x7548
// Size: 0x154
function print_weapon_name() {
    /#
        /#
            self notify(#"print_weapon_name");
            self endon(#"print_weapon_name");
            wait(0.2);
            if (self isswitchingweapons()) {
                waitresult = undefined;
                waitresult = self waittill(#"weapon_change_complete");
                fail_safe = 0;
                while (waitresult.weapon == level.weaponnone) {
                    waitresult = undefined;
                    waitresult = self waittill(#"weapon_change_complete");
                    waitframe(1);
                    fail_safe++;
                    if (fail_safe > 120) {
                        break;
                    }
                }
            } else {
                weapon = self getcurrentweapon();
            }
            printweaponname = getdvarint(#"scr_print_weapon_name", 1);
            if (printweaponname) {
                iprintlnbold(function_a16a090d(weapon));
            }
        #/
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x1246524a, Offset: 0x76a8
// Size: 0x2c8
function set_equipment_list() {
    /#
        if (isdefined(level.dev_equipment)) {
            return;
        }
        level.dev_equipment = [];
        level.dev_equipment[1] = getweapon(#"acoustic_sensor");
        level.dev_equipment[2] = getweapon(#"camera_spike");
        level.dev_equipment[3] = getweapon(#"claymore");
        level.dev_equipment[4] = getweapon(#"satchel_charge");
        level.dev_equipment[5] = getweapon(#"scrambler");
        level.dev_equipment[6] = getweapon(#"tactical_insertion");
        level.dev_equipment[7] = getweapon(#"bouncingbetty");
        level.dev_equipment[8] = getweapon(#"trophy_system");
        level.dev_equipment[9] = getweapon(#"pda_hack");
        level.dev_equipment[10] = getweapon(#"threat_detector");
        level.dev_equipment[11] = getweapon(#"armor_station");
        level.dev_equipment[12] = getweapon(#"hash_2b9efbad11308e02");
        level.dev_equipment[13] = getweapon(#"missile_turret");
        level.dev_equipment[14] = getweapon(#"weapon_armor");
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0xfc3cdec2, Offset: 0x7978
// Size: 0x298
function set_grenade_list() {
    /#
        if (isdefined(level.dev_grenade)) {
            return;
        }
        level.dev_grenade = [];
        level.dev_grenade[1] = getweapon(#"frag_grenade");
        level.dev_grenade[2] = getweapon(#"sticky_grenade");
        level.dev_grenade[3] = getweapon(#"hatchet");
        level.dev_grenade[4] = getweapon(#"willy_pete");
        level.dev_grenade[5] = getweapon(#"proximity_grenade");
        level.dev_grenade[6] = getweapon(#"flash_grenade");
        level.dev_grenade[7] = getweapon(#"concussion_grenade");
        level.dev_grenade[8] = getweapon(#"nightingale");
        level.dev_grenade[9] = getweapon(#"emp_grenade");
        level.dev_grenade[10] = getweapon(#"sensor_grenade");
        level.dev_grenade[11] = getweapon(#"incendiary_grenade");
        level.dev_grenade[12] = getweapon(#"sprint_boost_grenade");
        level.dev_grenade[13] = getweapon(#"hash_5287190a1612cbd2");
    #/
}

// Namespace dev/dev
// Params 1, eflags: 0x0
// Checksum 0xd2634d31, Offset: 0x7c18
// Size: 0xac
function take_all_grenades_and_equipment(player) {
    /#
        for (i = 0; i < level.dev_equipment.size; i++) {
            player takeweapon(level.dev_equipment[i + 1]);
        }
        for (i = 0; i < level.dev_grenade.size; i++) {
            player takeweapon(level.dev_grenade[i + 1]);
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x2e94aff4, Offset: 0x7cd0
// Size: 0x148
function equipment_dev_gui() {
    /#
        set_equipment_list();
        set_grenade_list();
        setdvar(#"scr_give_equipment", "<unknown string>");
        while (1) {
            wait(0.5);
            devgui_int = getdvarint(#"scr_give_equipment", 0);
            if (devgui_int != 0) {
                for (i = 0; i < level.players.size; i++) {
                    take_all_grenades_and_equipment(level.players[i]);
                    level.players[i] devgui_give_weapon(function_a16a090d(level.dev_equipment[devgui_int]));
                }
                setdvar(#"scr_give_equipment", 0);
            }
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x394376bc, Offset: 0x7e20
// Size: 0x148
function grenade_dev_gui() {
    /#
        set_equipment_list();
        set_grenade_list();
        setdvar(#"scr_give_grenade", "<unknown string>");
        while (1) {
            wait(0.5);
            devgui_int = getdvarint(#"scr_give_grenade", 0);
            if (devgui_int != 0) {
                for (i = 0; i < level.players.size; i++) {
                    take_all_grenades_and_equipment(level.players[i]);
                    level.players[i] devgui_give_weapon(function_a16a090d(level.dev_grenade[devgui_int]));
                }
                setdvar(#"scr_give_grenade", 0);
            }
        }
    #/
}

// Namespace dev/dev
// Params 1, eflags: 0x0
// Checksum 0xb394c152, Offset: 0x7f70
// Size: 0x1cc
function force_grenade_throw(weapon) {
    /#
        if (weapon == level.weaponnone) {
            return;
        }
        host = gethostplayer();
        if (!isdefined(host.team)) {
            iprintln("<unknown string>");
            return;
        }
        bot = getormakebot(getotherteam(host.team));
        if (!isdefined(bot)) {
            iprintln("<unknown string>");
            return;
        }
        angles = host getplayerangles();
        angles = (0, angles[1], 0);
        dir = anglestoforward(angles);
        dir = vectornormalize(dir);
        origin = host geteye() + vectorscale(dir, 256);
        velocity = vectorscale(dir, -1024);
        grenade = bot magicgrenadeplayer(weapon, origin, velocity);
        grenade setteam(bot.team);
        grenade setowner(bot);
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x719ef25e, Offset: 0x8148
// Size: 0x456
function devstraferunpathdebugdraw() {
    /#
        white = (1, 1, 1);
        red = (1, 0, 0);
        green = (0, 1, 0);
        blue = (0, 0, 1);
        violet = (0.4, 0, 0.6);
        maxdrawtime = 10;
        drawtime = maxdrawtime;
        origintextoffset = vectorscale((0, 0, -1), 50);
        endonmsg = "<unknown string>";
        while (1) {
            if (should_draw_debug("<unknown string>") > 0) {
                nodes = [];
                end = 0;
                node = getvehiclenode("<unknown string>", "<unknown string>");
                if (!isdefined(node)) {
                    println("<unknown string>");
                    setdvar(#"scr_devstraferunpathdebugdraw", 0);
                    continue;
                }
                while (isdefined(node.target)) {
                    new_node = getvehiclenode(node.target, "<unknown string>");
                    foreach (n in nodes) {
                        if (n == new_node) {
                            end = 1;
                        }
                    }
                    textscale = 30;
                    if (drawtime == maxdrawtime) {
                        node thread drawpathsegment(new_node, violet, violet, 1, textscale, origintextoffset, drawtime, endonmsg);
                    }
                    if (isdefined(node.script_noteworthy)) {
                        textscale = 10;
                        switch (node.script_noteworthy) {
                        case #"strafe_start":
                            textcolor = green;
                            textalpha = 1;
                            break;
                        case #"strafe_stop":
                            textcolor = red;
                            textalpha = 1;
                            break;
                        case #"strafe_leave":
                            textcolor = white;
                            textalpha = 1;
                            break;
                        }
                        switch (node.script_noteworthy) {
                        case #"strafe_stop":
                        case #"strafe_leave":
                        case #"strafe_start":
                            sides = 10;
                            radius = 100;
                            if (drawtime == maxdrawtime) {
                                sphere(node.origin, radius, textcolor, textalpha, 1, sides, int(drawtime * 1000));
                            }
                            node draworiginlines();
                            node drawnoteworthytext(textcolor, textalpha, textscale);
                            break;
                        }
                    }
                    if (end) {
                        break;
                    }
                    nodes[nodes.size] = new_node;
                    node = new_node;
                }
                drawtime = drawtime - 0.05;
                if (drawtime < 0) {
                    drawtime = maxdrawtime;
                }
                waitframe(1);
            } else {
                wait(1);
            }
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0xe41f2f11, Offset: 0x85a8
// Size: 0x3bc
function devhelipathdebugdraw() {
    /#
        white = (1, 1, 1);
        red = (1, 0, 0);
        green = (0, 1, 0);
        blue = (0, 0, 1);
        textcolor = white;
        textalpha = 1;
        textscale = 1;
        maxdrawtime = 10;
        drawtime = maxdrawtime;
        origintextoffset = vectorscale((0, 0, -1), 50);
        endonmsg = "<unknown string>";
        while (1) {
            if (getdvarint(#"scr_devhelipathsdebugdraw", 0) > 0) {
                script_origins = getentarray("<unknown string>", "<unknown string>");
                foreach (ent in script_origins) {
                    if (isdefined(ent.targetname)) {
                        switch (ent.targetname) {
                        case #"heli_start":
                            textcolor = blue;
                            textalpha = 1;
                            textscale = 3;
                            break;
                        case #"heli_loop_start":
                            textcolor = green;
                            textalpha = 1;
                            textscale = 3;
                            break;
                        case #"heli_attack_area":
                            textcolor = red;
                            textalpha = 1;
                            textscale = 3;
                            break;
                        case #"heli_leave":
                            textcolor = white;
                            textalpha = 1;
                            textscale = 3;
                            break;
                        }
                        switch (ent.targetname) {
                        case #"heli_leave":
                        case #"heli_attack_area":
                        case #"heli_start":
                        case #"heli_loop_start":
                            if (drawtime == maxdrawtime) {
                                ent thread drawpath(textcolor, white, textalpha, textscale, origintextoffset, drawtime, endonmsg);
                            }
                            ent draworiginlines();
                            ent drawtargetnametext(textcolor, textalpha, textscale);
                            ent draworigintext(textcolor, textalpha, textscale, origintextoffset);
                            break;
                        }
                    }
                }
                drawtime = drawtime - 0.05;
                if (drawtime < 0) {
                    drawtime = maxdrawtime;
                }
            }
            if (getdvarint(#"scr_devhelipathsdebugdraw", 0) == 0) {
                level notify(endonmsg);
                drawtime = maxdrawtime;
                wait(1);
            }
            waitframe(1);
        }
    #/
}

// Namespace dev/dev
// Params 0, eflags: 0x0
// Checksum 0x51a2490a, Offset: 0x8970
// Size: 0xfc
function draworiginlines() {
    /#
        red = (1, 0, 0);
        green = (0, 1, 0);
        blue = (0, 0, 1);
        line(self.origin, self.origin + anglestoforward(self.angles) * 10, red);
        line(self.origin, self.origin + anglestoright(self.angles) * 10, green);
        line(self.origin, self.origin + anglestoup(self.angles) * 10, blue);
    #/
}

// Namespace dev/dev
// Params 4, eflags: 0x0
// Checksum 0xa9a0c0ed, Offset: 0x8a78
// Size: 0x64
function drawtargetnametext(textcolor, textalpha, textscale, textoffset) {
    /#
        if (!isdefined(textoffset)) {
            textoffset = (0, 0, 0);
        }
        print3d(self.origin + textoffset, self.targetname, textcolor, textalpha, textscale);
    #/
}

// Namespace dev/dev
// Params 4, eflags: 0x0
// Checksum 0xdce45ff4, Offset: 0x8ae8
// Size: 0x64
function drawnoteworthytext(textcolor, textalpha, textscale, textoffset) {
    /#
        if (!isdefined(textoffset)) {
            textoffset = (0, 0, 0);
        }
        print3d(self.origin + textoffset, self.script_noteworthy, textcolor, textalpha, textscale);
    #/
}

// Namespace dev/dev
// Params 4, eflags: 0x0
// Checksum 0xf48acdd9, Offset: 0x8b58
// Size: 0xbc
function draworigintext(textcolor, textalpha, textscale, textoffset) {
    /#
        if (!isdefined(textoffset)) {
            textoffset = (0, 0, 0);
        }
        originstring = "<unknown string>" + self.origin[0] + "<unknown string>" + self.origin[1] + "<unknown string>" + self.origin[2] + "<unknown string>";
        print3d(self.origin + textoffset, originstring, textcolor, textalpha, textscale);
    #/
}

// Namespace dev/dev
// Params 4, eflags: 0x0
// Checksum 0x67437ab2, Offset: 0x8c20
// Size: 0xcc
function drawspeedacceltext(textcolor, textalpha, textscale, textoffset) {
    /#
        if (isdefined(self.script_airspeed)) {
            print3d(self.origin + (0, 0, textoffset[2] * 2), "<unknown string>" + self.script_airspeed, textcolor, textalpha, textscale);
        }
        if (isdefined(self.script_accel)) {
            print3d(self.origin + (0, 0, textoffset[2] * 3), "<unknown string>" + self.script_accel, textcolor, textalpha, textscale);
        }
    #/
}

// Namespace dev/dev
// Params 7, eflags: 0x0
// Checksum 0x8c03d4fa, Offset: 0x8cf8
// Size: 0x11e
function drawpath(linecolor, textcolor, textalpha, textscale, textoffset, drawtime, endonmsg) {
    /#
        level endon(endonmsg);
        ent = self;
        entfirsttarget = ent.targetname;
        while (isdefined(ent.target)) {
            enttarget = getent(ent.target, "<unknown string>");
            ent thread drawpathsegment(enttarget, linecolor, textcolor, textalpha, textscale, textoffset, drawtime, endonmsg);
            if (ent.targetname == "<unknown string>") {
                entfirsttarget = ent.target;
            } else if (ent.target == entfirsttarget) {
                break;
            }
            ent = enttarget;
            waitframe(1);
        }
    #/
}

// Namespace dev/dev
// Params 8, eflags: 0x0
// Checksum 0x25f3c94, Offset: 0x8e20
// Size: 0x116
function drawpathsegment(enttarget, linecolor, textcolor, textalpha, textscale, textoffset, drawtime, endonmsg) {
    /#
        level endon(endonmsg);
        while (drawtime > 0) {
            if (isdefined(self.targetname) && self.targetname == "<unknown string>") {
                print3d(self.origin + textoffset, self.targetname, textcolor, textalpha, textscale);
            }
            line(self.origin, enttarget.origin, linecolor);
            self drawspeedacceltext(textcolor, textalpha, textscale, textoffset);
            drawtime = drawtime - 0.05;
            waitframe(1);
        }
    #/
}
