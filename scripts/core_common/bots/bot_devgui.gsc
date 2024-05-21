// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\dev_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\bots\bot_action.gsc;
#using scripts\core_common\bots\bot.gsc;

#namespace bot_devgui;

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x5
// Checksum 0xdee51b52, Offset: 0x598
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"bot_devgui", &preinit, undefined, undefined, undefined);
}

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x6 linked
// Checksum 0xcd3bc0eb, Offset: 0x5e0
// Size: 0x164
function private preinit() {
    if (util::is_frontend_map()) {
        return;
    }
    if (isshipbuild() || currentsessionmode() == 4 || currentsessionmode() == 2) {
        return;
    }
    callback::on_connect(&on_player_connect);
    callback::on_disconnect(&on_player_disconnect);
    callback::on_spawned(&on_player_spawned);
    callback::add_callback(#"hash_6efb8cec1ca372dc", &function_ac5215a9);
    callback::add_callback(#"hash_6280ac8ed281ce3c", &function_8d1480e9);
    /#
        level thread function_d3901b82();
    #/
    level thread devgui_loop();
}

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x6 linked
// Checksum 0xedb4b941, Offset: 0x750
// Size: 0x34
function private on_player_connect() {
    if (!isbot(self)) {
        return;
    }
    self thread add_bot_devgui_menu();
}

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x6 linked
// Checksum 0x80cb9587, Offset: 0x790
// Size: 0x24
function private on_player_disconnect() {
    if (isdefined(self.bot)) {
        self thread clear_bot_devgui_menu();
    }
}

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x6 linked
// Checksum 0x852ec61e, Offset: 0x7c0
// Size: 0x8c
function private on_player_spawned() {
    if (!isbot(self)) {
        return;
    }
    if (getdvarint(#"bots_invulnerable", 0)) {
        self val::set(#"devgui", "takedamage", 0);
    }
    self function_78a14db2();
}

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x6 linked
// Checksum 0x33210884, Offset: 0x858
// Size: 0x1c
function private function_ac5215a9() {
    self thread add_bot_devgui_menu();
}

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x6 linked
// Checksum 0xca4ff8a, Offset: 0x880
// Size: 0x1c
function private function_8d1480e9() {
    self thread clear_bot_devgui_menu();
}

// Namespace bot_devgui/bot_devgui
// Params 1, eflags: 0x6 linked
// Checksum 0xa0d6e528, Offset: 0x8a8
// Size: 0x728
function private function_40dbe923(dvarstr) {
    args = strtok(dvarstr, " ");
    host = util::gethostplayerforbots();
    switch (args[0]) {
    case #"spawn_enemy":
        level function_5aef57f5(host, #"enemy");
        break;
    case #"spawn_friendly":
        level function_5aef57f5(host, #"friendly");
        break;
    case #"add":
        level devgui_add_bots(host, args[1], int(args[2]));
        break;
    case #"remove":
        level devgui_remove_bots(host, args[1]);
        break;
    case #"kill":
        level devgui_kill_bots(host, args[1]);
        break;
    case #"invulnerable":
        level devgui_invulnerable(host, args[1], args[2]);
        break;
    case #"ignoreall":
        level devgui_ignoreall(host, args[1], int(args[2]));
        break;
    case #"force_press_button":
        level devgui_force_button(host, args[1], int(args[2]), 0);
        break;
    case #"force_toggle_button":
        level devgui_force_button(host, args[1], int(args[2]), 1);
        break;
    case #"clear_forced_buttons":
        level function_baee1142(host, args[1]);
        break;
    case #"force_offhand_primary":
        level function_8bb94cab(host, args[1], #"offhand", #"lethal grenade");
        break;
    case #"force_offhand_secondary":
        level function_8bb94cab(host, args[1], #"offhand", #"tactical grenade");
        break;
    case #"force_offhand_special":
        level function_8bb94cab(host, args[1], "ability", #"special");
        break;
    case #"force_scorestreak":
        level function_9a65e59a(host, args[1]);
        break;
    case #"tpose":
        level devgui_tpose(host, args[1]);
        break;
    }
    if (isdefined(host)) {
        switch (args[0]) {
        case #"add_fixed_spawn":
            host devgui_add_fixed_spawn_bots(args[1], args[2], args[3]);
            break;
        case #"hash_218217dc7d667f07":
            host function_57d0759d(args[1], undefined, args[2], (float(args[3]), float(args[4]), float(args[5])), float(args[6]));
            break;
        case #"set_target":
            host devgui_set_target(args[1], args[2]);
            break;
        case #"goal":
            host devgui_goal(args[1], args[2]);
            break;
        case #"force_aim_copy":
            host function_30f27f9f(args[1]);
            break;
        case #"force_aim_freeze":
            host function_b037d12d(args[1]);
            break;
        case #"force_aim_clear":
            host function_f419ffae(args[1]);
            break;
        case #"hash_7d471b297adb925d":
            host function_263ca697();
            break;
        case #"warp":
            host function_fbdf36c1(args[1]);
            break;
        }
    }
    level notify(#"devgui_bot", {#host:host, #args:args});
}

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x6 linked
// Checksum 0xc51cab2d, Offset: 0xfd8
// Size: 0xb8
function private devgui_loop() {
    while (true) {
        waitframe(1);
        dvarstr = getdvarstring(#"devgui_bot", "");
        if (dvarstr == "") {
            continue;
        }
        println(dvarstr);
        setdvar(#"devgui_bot", "");
        self thread function_40dbe923(dvarstr);
    }
}

// Namespace bot_devgui/bot_devgui
// Params 2, eflags: 0x6 linked
// Checksum 0x3a9be23c, Offset: 0x1098
// Size: 0x1a6
function private function_9a819607(host, botarg) {
    if (strisnumber(botarg)) {
        ent = getentbynum(int(botarg));
        if (isbot(ent)) {
            return [ent];
        }
        return [];
    }
    if (botarg == "all") {
        return get_bots();
    }
    if (isdefined(level.teams[botarg])) {
        return function_a0f5b7f5(level.teams[botarg]);
    }
    if (isdefined(host)) {
        if (botarg == "friendly") {
            return host get_friendly_bots();
        }
        if (botarg == "enemy") {
            return host get_enemy_bots();
        }
    }
    if (botarg == "friendly") {
        return function_a0f5b7f5(#"allies");
    } else if (botarg == "enemy") {
        return function_a0f5b7f5(#"axis");
    }
    return [];
}

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x2 linked
// Checksum 0x38634ed8, Offset: 0x1248
// Size: 0xc2
function get_bots() {
    players = getplayers();
    bots = [];
    foreach (player in players) {
        if (isbot(player)) {
            bots[bots.size] = player;
        }
    }
    return bots;
}

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x2 linked
// Checksum 0x65477e47, Offset: 0x1318
// Size: 0xce
function get_friendly_bots() {
    players = getplayers(self.team);
    bots = [];
    foreach (player in players) {
        if (!isbot(player)) {
            continue;
        }
        bots[bots.size] = player;
    }
    return bots;
}

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x2 linked
// Checksum 0x538727be, Offset: 0x13f0
// Size: 0xea
function get_enemy_bots() {
    players = getplayers();
    bots = [];
    foreach (player in players) {
        if (!isbot(player)) {
            continue;
        }
        if (util::function_fbce7263(player.team, self.team)) {
            bots[bots.size] = player;
        }
    }
    return bots;
}

// Namespace bot_devgui/bot_devgui
// Params 1, eflags: 0x2 linked
// Checksum 0xf176858e, Offset: 0x14e8
// Size: 0xd6
function function_a0f5b7f5(team) {
    players = getplayers(team);
    bots = [];
    foreach (player in players) {
        if (!isbot(player)) {
            continue;
        }
        bots[bots.size] = player;
    }
    return bots;
}

/#

    // Namespace bot_devgui/bot_devgui
    // Params 0, eflags: 0x4
    // Checksum 0xbe878247, Offset: 0x15c8
    // Size: 0x220
    function private function_d3901b82() {
        level endon(#"game_ended");
        sessionmode = currentsessionmode();
        if (sessionmode != 4) {
            var_48c9cde3 = getallcharacterbodies(sessionmode);
            foreach (index in var_48c9cde3) {
                if (index == 0) {
                    continue;
                }
                displayname = makelocalizedstring(getcharacterdisplayname(index, sessionmode));
                assetname = function_9e72a96(function_ac0419ac(index, sessionmode));
                name = displayname + "T-Pose" + assetname + ":";
                cmd = "Force Button:" + name + "<unknown string>" + index + "<unknown string>" + index + "<unknown string>";
                util::add_debug_command(cmd);
                cmd = "<unknown string>" + name + "<unknown string>" + index + "<unknown string>" + index + "<unknown string>";
                util::add_debug_command(cmd);
            }
        }
    }

#/

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x6 linked
// Checksum 0xadcc1aaa, Offset: 0x17f0
// Size: 0x620
function private add_bot_devgui_menu() {
    self endon(#"disconnect");
    entnum = self getentitynumber();
    if (entnum >= 16) {
        return;
    }
    i = 0;
    self add_bot_devgui_cmd(entnum, "Ignore All:" + i + "/On", 0, "ignoreall", "1");
    self add_bot_devgui_cmd(entnum, "Ignore All:" + i + "/Off", 1, "ignoreall", "0");
    i++;
    self add_bot_devgui_cmd(entnum, "Set Target:" + i + "/From Crosshair", 0, "set_target", "crosshair");
    self add_bot_devgui_cmd(entnum, "Set Target:" + i + "/Attack Me", 1, "set_target", "me");
    self add_bot_devgui_cmd(entnum, "Set Target:" + i + "/Clear", 2, "set_target", "clear");
    i++;
    self add_bot_devgui_cmd(entnum, "Set Goal:" + i + "/Force", 0, "goal", "force");
    self add_bot_devgui_cmd(entnum, "Set Goal:" + i + "/Add Forced", 1, "goal", "add_forced");
    self add_bot_devgui_cmd(entnum, "Set Goal:" + i + "/Clear Forced", 2, "goal", "clear");
    self add_bot_devgui_cmd(entnum, "Set Goal:" + i + "/Radius", 3, "goal", "set");
    self add_bot_devgui_cmd(entnum, "Set Goal:" + i + "/Region", 4, "goal", "set_region");
    self add_bot_devgui_cmd(entnum, "Set Goal:" + i + "/Follow Me", 5, "goal", "me");
    i++;
    i++;
    if (!is_true(level.var_fa5cacde)) {
        self function_ade411a3(entnum, i);
        i++;
        self add_bot_devgui_cmd(entnum, "Force Aim:" + i + "/Copy Me", 0, "force_aim_copy");
        self add_bot_devgui_cmd(entnum, "Force Aim:" + i + "/Freeze ", 1, "force_aim_freeze");
        self add_bot_devgui_cmd(entnum, "Force Aim:" + i + "/Clear ", 2, "force_aim_clear");
        i++;
        self add_bot_devgui_cmd(entnum, "Force Use:" + i + "/Lethal", 0, "force_offhand_primary");
        self add_bot_devgui_cmd(entnum, "Force Use:" + i + "/Tactical", 1, "force_offhand_secondary");
        self add_bot_devgui_cmd(entnum, "Force Use:" + i + "/Field Upgrade", 2, "force_offhand_special");
        self add_bot_devgui_cmd(entnum, "Force Use:" + i + "/Inventory Scorestreak", 3, "force_scorestreak");
        i++;
    }
    self add_bot_devgui_cmd(entnum, "Invulnerable:" + i + "/On", 0, "invulnerable", "on");
    self add_bot_devgui_cmd(entnum, "Invulnerable:" + i + "/Off", 1, "invulnerable", "off");
    i++;
    self add_bot_devgui_cmd(entnum, "Warp to Crosshair", i, "warp");
    i++;
    self add_bot_devgui_cmd(entnum, "T-Pose", i, "tpose");
    i++;
    self add_bot_devgui_cmd(entnum, "Kill", i, "kill");
    i++;
    self add_bot_devgui_cmd(entnum, "Remove", i, "remove");
    i++;
}

// Namespace bot_devgui/bot_devgui
// Params 5, eflags: 0x6 linked
// Checksum 0x51271fe7, Offset: 0x1e18
// Size: 0xe4
function private add_bot_devgui_cmd(entnum, path, sortkey, devguiarg, cmdargs = "") {
    cmd = "devgui_cmd \"Bots/" + entnum + " " + self.name + ":" + entnum + "/" + path + ":" + sortkey + "\" \"set devgui_bot " + devguiarg + " " + entnum + " " + cmdargs + "\"";
    util::add_debug_command(cmd);
}

// Namespace bot_devgui/bot_devgui
// Params 5, eflags: 0x6 linked
// Checksum 0x38cbee0a, Offset: 0x1f08
// Size: 0xdc
function private function_f105dc20(entnum, var_eeb5e4bd, buttonmenu, var_1e443b4, buttonbit) {
    self add_bot_devgui_cmd(entnum, "Force Button:" + var_eeb5e4bd + "/" + buttonmenu + ":" + var_1e443b4 + "/Press", 0, "force_press_button", buttonbit);
    self add_bot_devgui_cmd(entnum, "Force Button:" + var_eeb5e4bd + "/" + buttonmenu + ":" + var_1e443b4 + "/Toggle", 1, "force_toggle_button", buttonbit);
}

// Namespace bot_devgui/bot_devgui
// Params 2, eflags: 0x6 linked
// Checksum 0x447fc05e, Offset: 0x1ff0
// Size: 0x32c
function private function_ade411a3(entnum, var_eeb5e4bd) {
    i = 0;
    self function_f105dc20(entnum, var_eeb5e4bd, "Fire", i, 0);
    i++;
    self function_f105dc20(entnum, var_eeb5e4bd, "Sprint", i, 1);
    i++;
    self function_f105dc20(entnum, var_eeb5e4bd, "ADS", i, 11);
    i++;
    self function_f105dc20(entnum, var_eeb5e4bd, "Jump", i, 10);
    i++;
    self function_f105dc20(entnum, var_eeb5e4bd, "Change Seat", i, 28);
    i++;
    self function_f105dc20(entnum, var_eeb5e4bd, "Reload", i, 4);
    i++;
    self function_f105dc20(entnum, var_eeb5e4bd, "Activate", i, 3);
    i++;
    self function_f105dc20(entnum, var_eeb5e4bd, "Use | Reload", i, 5);
    i++;
    self function_f105dc20(entnum, var_eeb5e4bd, "Melee", i, 2);
    i++;
    self function_f105dc20(entnum, var_eeb5e4bd, "Offhand Secondary", i, 15);
    i++;
    self function_f105dc20(entnum, var_eeb5e4bd, "Vehicle Fire", i, 34);
    i++;
    self function_f105dc20(entnum, var_eeb5e4bd, "Vehicle Fire 2", i, 35);
    i++;
    self function_f105dc20(entnum, var_eeb5e4bd, "Increment ADS Zoom Select", i, 31);
    i++;
    self function_f105dc20(entnum, var_eeb5e4bd, "Increment ADS Zoom Smooth", i, 32);
    i++;
    self function_f105dc20(entnum, var_eeb5e4bd, "Decrement ADS Zoom Smooth", i, 33);
    i++;
    self add_bot_devgui_cmd(entnum, "Force Button:" + var_eeb5e4bd + "/Clear All", 500, "clear_forced_buttons");
}

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x2 linked
// Checksum 0xddff6f50, Offset: 0x2328
// Size: 0x7c
function clear_bot_devgui_menu() {
    entnum = self getentitynumber();
    if (entnum >= 16) {
        return;
    }
    cmd = "devgui_remove \"Bots/" + entnum + " " + self.name + "\"";
    util::add_debug_command(cmd);
}

// Namespace bot_devgui/bot_devgui
// Params 3, eflags: 0x6 linked
// Checksum 0x5437da3d, Offset: 0x23b0
// Size: 0xc4
function private devgui_add_bots(host, botarg, count) {
    team = function_881d3aa(host, botarg);
    if (!isdefined(team)) {
        return;
    }
    players = getplayers(team);
    max_players = player::function_d36b6597();
    if (players.size < max_players || max_players == 0) {
        level thread bot::add_bots(count, team);
    }
}

// Namespace bot_devgui/bot_devgui
// Params 2, eflags: 0x6 linked
// Checksum 0xf76b8b28, Offset: 0x2480
// Size: 0x96
function private function_5aef57f5(host, botarg) {
    level endon(#"game_ended");
    team = function_881d3aa(host, botarg);
    if (!isdefined(team)) {
        return;
    }
    bot = bot::add_bot(team);
    bot.ignoreall = 1;
    bot.bot.var_261b9ab3 = 1;
}

// Namespace bot_devgui/bot_devgui
// Params 3, eflags: 0x6 linked
// Checksum 0xbfad25e1, Offset: 0x2520
// Size: 0x39c
function private devgui_add_fixed_spawn_bots(botarg, var_b27e53da, countarg) {
    team = function_881d3aa(self, botarg);
    if (!isdefined(team)) {
        return;
    }
    if (!isdefined(countarg)) {
        countarg = 1;
    }
    var_c6e7a9ca = max(int(countarg), 1);
    count = var_c6e7a9ca;
    players = getplayers(team);
    max_players = player::function_d36b6597();
    if (max_players > 0) {
        count = min(count, max_players - players.size);
    }
    if (count <= 0) {
        return;
    }
    if (!isdefined(var_b27e53da)) {
        var_b27e53da = -1;
    }
    roleindex = int(var_b27e53da);
    trace = self eye_trace(0, 1);
    spawndir = self.origin - trace[#"position"];
    spawnangles = vectortoangles(spawndir);
    offset = (0, 0, 5);
    origin = trace[#"position"] + offset;
    bots = function_bd48ef10(team, count, origin, spawnangles[1], roleindex);
    vehicle = trace[#"entity"];
    if (isvehicle(vehicle)) {
        pos = trace[#"position"];
        seatindex = vehicle function_eee09f16(pos);
        if (isdefined(seatindex)) {
            foreach (bot in bots) {
                bot bot::function_bcc79b86(vehicle, seatindex);
            }
        }
    }
    println("<unknown string>" + botarg + "<unknown string>" + var_c6e7a9ca + "<unknown string>" + origin[0] + "<unknown string>" + origin[1] + "<unknown string>" + origin[2] + "<unknown string>" + spawnangles[1]);
}

// Namespace bot_devgui/bot_devgui
// Params 5, eflags: 0x6 linked
// Checksum 0xfee772cf, Offset: 0x28c8
// Size: 0x196
function private function_57d0759d(botarg, var_b27e53da, countarg, origin, angle) {
    team = function_881d3aa(self, botarg);
    if (!isdefined(team)) {
        return;
    }
    if (!isdefined(countarg)) {
        countarg = 1;
    }
    count = max(int(countarg), 1);
    players = getplayers(team);
    max_players = player::function_d36b6597();
    if (max_players > 0) {
        count = min(count, max_players - players.size);
    }
    if (count <= 0) {
        return;
    }
    if (!isdefined(var_b27e53da)) {
        var_b27e53da = -1;
    }
    roleindex = int(var_b27e53da);
    offset = (0, 0, 5);
    origin += offset;
    bots = function_bd48ef10(team, count, origin, angle, roleindex);
}

// Namespace bot_devgui/bot_devgui
// Params 5, eflags: 0x6 linked
// Checksum 0x159dc2d3, Offset: 0x2a68
// Size: 0x1aa
function private function_bd48ef10(team, count, origin, yaw, roleindex) {
    bots = [];
    if (!isdefined(bots)) {
        bots = [];
    } else if (!isarray(bots)) {
        bots = array(bots);
    }
    bots[bots.size] = self bot::add_fixed_spawn_bot(team, origin, yaw, roleindex);
    /#
        spiral = dev::function_a4ccb933(origin, yaw);
        for (i = 0; i < count - 1; i++) {
            dev::function_df0b6f84(spiral);
            origin = dev::function_98c05766(spiral);
            angle = dev::function_4783f10c(spiral);
            if (!isdefined(bots)) {
                bots = [];
            } else if (!isarray(bots)) {
                bots = array(bots);
            }
            bots[bots.size] = self bot::add_fixed_spawn_bot(team, origin, angle, roleindex);
        }
    #/
    return bots;
}

// Namespace bot_devgui/bot_devgui
// Params 2, eflags: 0x6 linked
// Checksum 0x11a06f1d, Offset: 0x2c20
// Size: 0xd2
function private function_881d3aa(host, botarg) {
    if (botarg == "all") {
        return #"none";
    }
    if (isdefined(level.teams[botarg])) {
        return level.teams[botarg];
    }
    friendlyteam = #"allies";
    if (isdefined(host) && host.team != #"spectator") {
        friendlyteam = host.team;
    }
    if (botarg == "friendly") {
        return friendlyteam;
    }
    return function_8dbb49c0(friendlyteam);
}

// Namespace bot_devgui/bot_devgui
// Params 1, eflags: 0x6 linked
// Checksum 0xf01d1d64, Offset: 0x2d00
// Size: 0x100
function private function_8dbb49c0(ignoreteam) {
    assert(isdefined(ignoreteam));
    maxteamplayers = player::function_d36b6597();
    foreach (team, _ in level.teams) {
        if (team == ignoreteam) {
            continue;
        }
        players = getplayers(team);
        if (maxteamplayers > 0 && players.size < maxteamplayers) {
            return team;
        }
    }
    return undefined;
}

// Namespace bot_devgui/bot_devgui
// Params 2, eflags: 0x6 linked
// Checksum 0x730032dc, Offset: 0x2e08
// Size: 0xb8
function private devgui_remove_bots(host, botarg) {
    bots = function_9a819607(host, botarg);
    foreach (bot in bots) {
        level thread bot::remove_bot(bot);
    }
}

// Namespace bot_devgui/bot_devgui
// Params 3, eflags: 0x6 linked
// Checksum 0x276a805f, Offset: 0x2ec8
// Size: 0xb6
function private devgui_ignoreall(host, botarg, cmdarg) {
    bots = function_9a819607(host, botarg);
    foreach (bot in bots) {
        bot.ignoreall = cmdarg;
    }
}

// Namespace bot_devgui/bot_devgui
// Params 2, eflags: 0x6 linked
// Checksum 0x950decaf, Offset: 0x2f88
// Size: 0x190
function private devgui_set_target(botarg, cmdarg) {
    target = undefined;
    switch (cmdarg) {
    case #"crosshair":
        target = self function_59842621();
        break;
    case #"me":
        target = self;
        break;
    case #"clear":
        break;
    default:
        return;
    }
    bots = function_9a819607(self, botarg);
    foreach (bot in bots) {
        if (isdefined(target)) {
            if (target != bot) {
                bot setentitytarget(target);
                bot getperfectinfo(target, 1);
            }
            continue;
        }
        bot clearentitytarget();
    }
}

// Namespace bot_devgui/bot_devgui
// Params 2, eflags: 0x6 linked
// Checksum 0x68502caa, Offset: 0x3120
// Size: 0x132
function private devgui_goal(botarg, cmdarg) {
    switch (cmdarg) {
    case #"set":
        self set_goal(botarg, 0);
        return;
    case #"set_region":
        self function_417ef9e7(botarg);
        return;
    case #"force":
        self set_goal(botarg, 1);
        return;
    case #"add_forced":
        self function_93996ae6(botarg);
        return;
    case #"me":
        self set_goal_ent(botarg, self);
        return;
    case #"clear":
        self function_be8f790e(botarg);
        return;
    }
}

// Namespace bot_devgui/bot_devgui
// Params 2, eflags: 0x6 linked
// Checksum 0xf9119095, Offset: 0x3260
// Size: 0x2d8
function private set_goal(botarg, force = 0) {
    trace = self eye_trace(1);
    pos = trace[#"position"];
    if (force) {
        pos = getclosestpointonnavmesh(pos, 16, 16);
        if (!isdefined(pos)) {
            return;
        }
    }
    bots = function_9a819607(self, botarg);
    vehicle = isvehicle(trace[#"entity"]) ? trace[#"entity"] : undefined;
    foreach (bot in bots) {
        bot notify(#"hash_7597caa242064632");
        bot botreleasemanualcontrol();
        bot setgoal(pos, force);
        bot.goalradius = 512;
        if (bot isinvehicle()) {
            currentvehicle = bot getvehicleoccupied();
            if (vehicle === currentvehicle) {
                seatindex = vehicle function_d1409e38(pos);
                if (!vehicle isvehicleseatoccupied(seatindex)) {
                    vehicle function_1090ca(bot, seatindex);
                }
            } else {
                var_c3eee21b = currentvehicle getoccupantseat(bot);
                currentvehicle usevehicle(bot, var_c3eee21b);
            }
            continue;
        }
        if (isdefined(vehicle)) {
            seatindex = vehicle function_eee09f16(pos);
            if (isdefined(seatindex)) {
                vehicle usevehicle(bot, seatindex);
            }
        }
    }
}

// Namespace bot_devgui/bot_devgui
// Params 1, eflags: 0x6 linked
// Checksum 0x763d90b8, Offset: 0x3540
// Size: 0x148
function private function_417ef9e7(botarg) {
    trace = self eye_trace(1);
    bots = function_9a819607(self, botarg);
    pos = trace[#"position"];
    point = getclosesttacpoint(pos);
    if (!isdefined(point)) {
        return;
    }
    foreach (bot in bots) {
        bot notify(#"hash_7597caa242064632");
        bot botreleasemanualcontrol();
        bot setgoal(point.region);
    }
}

// Namespace bot_devgui/bot_devgui
// Params 2, eflags: 0x6 linked
// Checksum 0x3ac237f1, Offset: 0x3690
// Size: 0x160
function private set_goal_ent(botarg, ent) {
    bots = function_9a819607(self, botarg);
    foreach (bot in bots) {
        bot notify(#"hash_7597caa242064632");
        bot botreleasemanualcontrol();
        bot setgoal(ent);
        bot.goalradius = 96;
        if (bot isinvehicle()) {
            vehicle = bot getvehicleoccupied();
            seatindex = vehicle getoccupantseat(bot);
            vehicle usevehicle(bot, seatindex);
        }
    }
}

// Namespace bot_devgui/bot_devgui
// Params 1, eflags: 0x6 linked
// Checksum 0x7d2dfc16, Offset: 0x37f8
// Size: 0xc0
function private function_be8f790e(botarg) {
    bots = function_9a819607(self, botarg);
    foreach (bot in bots) {
        bot notify(#"hash_7597caa242064632");
        bot clearforcedgoal();
    }
}

// Namespace bot_devgui/bot_devgui
// Params 1, eflags: 0x6 linked
// Checksum 0x71e7452b, Offset: 0x38c0
// Size: 0x1d0
function private function_93996ae6(botarg) {
    trace = self eye_trace(1);
    pos = trace[#"position"];
    pos = getclosestpointonnavmesh(pos, 16, 16);
    if (!isdefined(pos)) {
        return;
    }
    bots = function_9a819607(self, botarg);
    foreach (bot in bots) {
        bot botreleasemanualcontrol();
        goals = bot.bot.var_bdb21e1f;
        if (isdefined(goals)) {
            goals[goals.size] = pos;
            continue;
        }
        goals = [];
        bot.bot.var_bdb21e1f = goals;
        info = bot function_4794d6a3();
        if (info.goalforced) {
            goals[goals.size] = info.goalpos;
        }
        goals[goals.size] = pos;
        bot function_cc8c642a(goals);
    }
}

// Namespace bot_devgui/bot_devgui
// Params 1, eflags: 0x6 linked
// Checksum 0x4e6f8c52, Offset: 0x3a98
// Size: 0xbc
function private function_cc8c642a(&goals) {
    self endoncallback(&function_bc3bbe26, #"death", #"hash_7597caa242064632");
    for (i = 0; true; i = (i + 1) % goals.size) {
        self setgoal(goals[i], 1);
        while (goals.size <= 1) {
            waitframe(1);
        }
        self waittill(#"goal");
    }
}

// Namespace bot_devgui/bot_devgui
// Params 1, eflags: 0x6 linked
// Checksum 0x2c74573, Offset: 0x3b60
// Size: 0x1a
function private function_bc3bbe26(*notifyhash) {
    self.bot.var_bdb21e1f = undefined;
}

// Namespace bot_devgui/bot_devgui
// Params 4, eflags: 0x6 linked
// Checksum 0x97ba2706, Offset: 0x3b88
// Size: 0x140
function private devgui_force_button(host, botarg, cmdarg, toggle) {
    bots = function_9a819607(host, botarg);
    foreach (bot in bots) {
        if (!isdefined(bot.bot.var_458ddbc0)) {
            bot.bot.var_458ddbc0 = [];
        }
        forcebits = bot.bot.var_458ddbc0;
        if (toggle) {
            forcebits[cmdarg] = is_true(forcebits[cmdarg]) ? undefined : 1;
            continue;
        }
        forcebits[cmdarg] = 2;
    }
}

// Namespace bot_devgui/bot_devgui
// Params 2, eflags: 0x6 linked
// Checksum 0x37dc73c0, Offset: 0x3cd0
// Size: 0xb6
function private function_baee1142(host, botarg) {
    bots = function_9a819607(host, botarg);
    foreach (bot in bots) {
        bot.bot.var_458ddbc0 = [];
    }
}

// Namespace bot_devgui/bot_devgui
// Params 4, eflags: 0x6 linked
// Checksum 0x939d9194, Offset: 0x3d90
// Size: 0x120
function private function_8bb94cab(host, botarg, inventorytype, offhandslot) {
    bots = function_9a819607(host, botarg);
    foreach (bot in bots) {
        weapon = bot function_b24b9a1e(inventorytype, offhandslot);
        if (isdefined(weapon)) {
            bot givemaxammo(weapon);
            bot bot_action::function_d6318084(weapon);
            bot bot_action::function_32020adf(3);
        }
    }
}

// Namespace bot_devgui/bot_devgui
// Params 2, eflags: 0x6 linked
// Checksum 0xe9c4e0ac, Offset: 0x3eb8
// Size: 0xd2
function private function_b24b9a1e(inventorytype, offhandslot) {
    weapons = self getweaponslist();
    foreach (weapon in weapons) {
        if (weapon.inventorytype == inventorytype && weapon.offhandslot == offhandslot) {
            return weapon;
        }
    }
    return undefined;
}

// Namespace bot_devgui/bot_devgui
// Params 2, eflags: 0x6 linked
// Checksum 0xc01c73a5, Offset: 0x3f98
// Size: 0xf8
function private function_9a65e59a(host, botarg) {
    bots = function_9a819607(host, botarg);
    foreach (bot in bots) {
        weapon = bot function_ef14f060();
        if (isdefined(weapon)) {
            bot bot_action::function_d6318084(weapon);
            bot bot_action::function_32020adf(3);
        }
    }
}

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x6 linked
// Checksum 0xa9495cbb, Offset: 0x4098
// Size: 0x1dc
function private function_ef14f060() {
    weapons = self getweaponslist();
    foreach (weapon in weapons) {
        if (weapon.inventorytype != #"item" || self getweaponammoclip(weapon) <= 0) {
            continue;
        }
        foreach (name in self.killstreak) {
            if (weapon.name == name) {
            }
        }
        foreach (killstreak in level.killstreaks) {
            if (killstreak.weapon == weapon) {
                return weapon;
            }
        }
    }
    return undefined;
}

// Namespace bot_devgui/bot_devgui
// Params 1, eflags: 0x6 linked
// Checksum 0x3ca01c98, Offset: 0x4280
// Size: 0x1a8
function private function_fbdf36c1(botarg) {
    bots = function_9a819607(self, botarg);
    yaw = absangleclamp360(self.angles[1] + 180);
    angle = (0, yaw, 0);
    trace = self eye_trace(1, 1);
    pos = trace[#"position"];
    foreach (bot in bots) {
        bot dontinterpolate();
        bot setplayerangles(angle);
        bot setorigin(pos);
        if (bot function_4794d6a3().goalforced) {
            bot setgoal(pos, 1);
        }
    }
}

// Namespace bot_devgui/bot_devgui
// Params 1, eflags: 0x6 linked
// Checksum 0xaee23841, Offset: 0x4430
// Size: 0xb0
function private function_30f27f9f(botarg) {
    bots = function_9a819607(self, botarg);
    foreach (bot in bots) {
        bot thread function_2e08087e(self);
    }
}

// Namespace bot_devgui/bot_devgui
// Params 1, eflags: 0x6 linked
// Checksum 0x5e2c16c5, Offset: 0x44e8
// Size: 0xce
function private function_b037d12d(botarg) {
    bots = function_9a819607(self, botarg);
    foreach (bot in bots) {
        bot notify(#"hash_1fc88ab5756d805");
        bot.bot.var_5efe88e4 = bot getplayerangles();
    }
}

// Namespace bot_devgui/bot_devgui
// Params 1, eflags: 0x6 linked
// Checksum 0x8b9c8ff, Offset: 0x45c0
// Size: 0xbe
function private function_f419ffae(botarg) {
    bots = function_9a819607(self, botarg);
    foreach (bot in bots) {
        bot notify(#"hash_1fc88ab5756d805");
        bot.bot.var_5efe88e4 = undefined;
    }
}

// Namespace bot_devgui/bot_devgui
// Params 1, eflags: 0x6 linked
// Checksum 0x10426658, Offset: 0x4688
// Size: 0x11a
function private function_2e08087e(player) {
    self endon(#"death", #"disconnect", #"hash_1fc88ab5756d805", #"hash_6280ac8ed281ce3c");
    while (isdefined(player) && isalive(player)) {
        angles = player getplayerangles();
        yawoffset = getdvarint(#"hash_68c18f3309126669", 0) * 15;
        var_6cd5d6b6 = angles + (0, yawoffset, 0);
        self.bot.var_5efe88e4 = angleclamp180(var_6cd5d6b6);
        waitframe(1);
    }
    self.bot.var_5efe88e4 = undefined;
}

// Namespace bot_devgui/bot_devgui
// Params 2, eflags: 0x2 linked
// Checksum 0xfc9f5602, Offset: 0x47b0
// Size: 0xe8
function devgui_tpose(host, botarg) {
    bots = function_9a819607(host, botarg);
    foreach (bot in bots) {
        setdvar(#"bg_boastenabled", 1);
        bot function_c6775cf9("dev_boast_tpose");
    }
}

// Namespace bot_devgui/bot_devgui
// Params 3, eflags: 0x6 linked
// Checksum 0x284c14f1, Offset: 0x48a0
// Size: 0x118
function private devgui_invulnerable(host, botarg, cmdarg) {
    bots = function_9a819607(host, botarg);
    foreach (bot in bots) {
        if (cmdarg == "on") {
            bot val::set(#"devgui", "takedamage", 0);
            continue;
        }
        bot val::reset(#"devgui", "takedamage");
    }
}

// Namespace bot_devgui/bot_devgui
// Params 2, eflags: 0x6 linked
// Checksum 0xe5033f2d, Offset: 0x49c0
// Size: 0x140
function private devgui_kill_bots(host, botarg) {
    bots = function_9a819607(host, botarg);
    foreach (bot in bots) {
        if (!isalive(bot)) {
            continue;
        }
        bot val::set(#"devgui_kill", "takedamage", 1);
        bot dodamage(bot.health + 1000, bot.origin);
        bot val::reset(#"devgui_kill", "takedamage");
    }
}

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x6 linked
// Checksum 0xbaef47d9, Offset: 0x4b08
// Size: 0x180
function private function_263ca697() {
    weapon = self getcurrentweapon();
    weaponoptions = self function_ade49959(weapon);
    var_e91aba42 = self function_8cbd254d(weapon);
    /#
        setdvar(#"bot_spawn_weapon", getweaponname(weapon.rootweapon));
        setdvar(#"hash_c6e51858c88a5ee", util::function_2146bd83(weapon));
    #/
    bots = get_bots();
    foreach (bot in bots) {
        bot function_35e77034(weapon, weaponoptions, var_e91aba42);
    }
}

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x6 linked
// Checksum 0x448944f1, Offset: 0x4c90
// Size: 0xbc
function private function_78a14db2() {
    weapon = undefined;
    if (getdvarstring(#"bot_spawn_weapon", "") != "") {
        weapon = util::get_weapon_by_name(getdvarstring(#"bot_spawn_weapon"), getdvarstring(#"hash_c6e51858c88a5ee"));
        if (isdefined(weapon)) {
            self function_35e77034(weapon);
        }
    }
}

// Namespace bot_devgui/bot_devgui
// Params 3, eflags: 0x6 linked
// Checksum 0x8df8f82c, Offset: 0x4d58
// Size: 0xb4
function private function_35e77034(weapon, weaponoptions, var_e91aba42) {
    if (!isdefined(weapon) || weapon == level.weaponnone) {
        return;
    }
    self function_85e7342b();
    self giveweapon(weapon, weaponoptions, var_e91aba42);
    self givemaxammo(weapon);
    self switchtoweaponimmediate(weapon);
    self setspawnweapon(weapon);
}

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x6 linked
// Checksum 0xcf097da, Offset: 0x4e18
// Size: 0xa8
function private function_85e7342b() {
    weapons = self getweaponslistprimaries();
    foreach (weapon in weapons) {
        self takeweapon(weapon);
    }
}

// Namespace bot_devgui/bot_devgui
// Params 2, eflags: 0x6 linked
// Checksum 0xcf0be617, Offset: 0x4ec8
// Size: 0xea
function private eye_trace(hitents = 0, var_18daeece = 0) {
    angles = self getplayerangles();
    fwd = anglestoforward(angles);
    var_98b02a87 = self getplayerviewheight();
    eye = self.origin + (0, 0, var_98b02a87);
    end = eye + fwd * 8000;
    return bullettrace(eye, end, hitents, self, var_18daeece);
}

// Namespace bot_devgui/bot_devgui
// Params 0, eflags: 0x6 linked
// Checksum 0x64b3886, Offset: 0x4fc0
// Size: 0x46
function private function_59842621() {
    trace = self eye_trace(1);
    targetentity = trace[#"entity"];
    return targetentity;
}

// Namespace bot_devgui/bot_devgui
// Params 1, eflags: 0x6 linked
// Checksum 0x14e9ad68, Offset: 0x5010
// Size: 0x118
function private function_eee09f16(pos) {
    seatindex = undefined;
    var_d64c5caf = undefined;
    for (i = 0; i < 11; i++) {
        if (self function_dcef0ba1(i)) {
            var_3693c73b = self function_defc91b2(i);
            if (isdefined(var_3693c73b) && var_3693c73b >= 0 && !self isvehicleseatoccupied(i)) {
                dist = distance(pos, self function_5051cc0c(i));
                if (!isdefined(seatindex) || var_d64c5caf > dist) {
                    seatindex = i;
                    var_d64c5caf = dist;
                }
            }
        }
    }
    return seatindex;
}

// Namespace bot_devgui/bot_devgui
// Params 1, eflags: 0x6 linked
// Checksum 0xb9cbae48, Offset: 0x5130
// Size: 0xf8
function private function_d1409e38(pos) {
    seatindex = undefined;
    var_d64c5caf = undefined;
    for (i = 0; i < 11; i++) {
        if (self function_dcef0ba1(i)) {
            var_3693c73b = self function_defc91b2(i);
            if (isdefined(var_3693c73b) && var_3693c73b >= 0) {
                dist = distance(pos, self function_5051cc0c(i));
                if (!isdefined(seatindex) || var_d64c5caf > dist) {
                    seatindex = i;
                    var_d64c5caf = dist;
                }
            }
        }
    }
    return seatindex;
}

