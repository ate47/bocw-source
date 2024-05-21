// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\influencers_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace spawning;

/#

    // Namespace spawning/namespace_797605b0
    // Params 1, eflags: 0x0
    // Checksum 0x30a2e227, Offset: 0xc8
    // Size: 0x20
    function function_a860c440(var_ef54e156) {
        level.var_c99a6ece = var_ef54e156;
    }

    // Namespace spawning/namespace_797605b0
    // Params 0, eflags: 0x0
    // Checksum 0x5b0e1de5, Offset: 0xf0
    // Size: 0x3c8
    function spawnpoint_debug() {
        a_spawnlists = getspawnlists();
        index = 0;
        foreach (s_list in a_spawnlists) {
            adddebugcommand("<unknown string>" + s_list + "<unknown string>" + index + "<unknown string>");
            index++;
        }
        adddebugcommand("<unknown string>" + "<unknown string>" + "<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        while (true) {
            spawnsystem_debug_command = getdvarstring(#"spawnsystem_debug_command");
            switch (spawnsystem_debug_command) {
            case #"next_best":
                selectedplayerindex = getdvarint(#"spawnsystem_debug_current_player", 0);
                foreach (player in level.players) {
                    if (player getentitynumber() == selectedplayerindex) {
                        selectedplayer = player;
                        break;
                    }
                }
                if (!isdefined(selectedplayer)) {
                    continue;
                }
                point_team = selectedplayer.pers[#"team"];
                influencer_team = selectedplayer.pers[#"team"];
                vis_team_mask = util::getotherteamsmask(selectedplayer.pers[#"team"]);
                nextbestspawnpoint = getbestspawnpoint(point_team, influencer_team, vis_team_mask, selectedplayer, 0);
                selectedplayer setorigin(nextbestspawnpoint[#"origin"]);
                selectedplayer setplayerangles(nextbestspawnpoint[#"angles"]);
                break;
            case #"refresh":
                level flag::set(#"spawnpoints_dirty");
                break;
            }
            setdvar(#"spawnsystem_debug_command", "<unknown string>");
            wait(0.5);
        }
    }

    // Namespace spawning/namespace_797605b0
    // Params 4, eflags: 0x0
    // Checksum 0xf30fc024, Offset: 0x4c0
    // Size: 0x11c
    function function_df47057f(*team, label, var_2f64048d, spawnpoints) {
        if (!spawnpoints.size) {
            return;
        }
        var_2e980658 = spawnstruct();
        var_2e980658.name = label + var_2f64048d;
        var_2e980658.spawns = spawnpoints;
        if (!isdefined(level.var_94f4ca81.dataset)) {
            level.var_94f4ca81.dataset = [];
        } else if (!isarray(level.var_94f4ca81.dataset)) {
            level.var_94f4ca81.dataset = array(level.var_94f4ca81.dataset);
        }
        level.var_94f4ca81.dataset[level.var_94f4ca81.dataset.size] = var_2e980658;
    }

    // Namespace spawning/namespace_797605b0
    // Params 4, eflags: 0x0
    // Checksum 0xbb7ca74a, Offset: 0x5e8
    // Size: 0x6c
    function function_25e7711a(list_type, team, label, var_2f64048d) {
        spawnpoints = function_82061144(list_type, team);
        function_df47057f(team, label, var_2f64048d, spawnpoints);
    }

    // Namespace spawning/namespace_797605b0
    // Params 0, eflags: 0x0
    // Checksum 0xf51ab269, Offset: 0x660
    // Size: 0x9f6
    function function_48a6b85() {
        level endon(#"hash_47f3d9a9e91670d1");
        self endon(#"disconnect");
        dpad_left = 0;
        dpad_right = 0;
        dpad_up = 0;
        dpad_down = 0;
        if (!isdefined(level.var_94f4ca81)) {
            level.var_94f4ca81 = spawnstruct();
            level.var_94f4ca81.dataset = [];
            var_975467b9 = "<unknown string>";
            function_25e7711a("<unknown string>", #"none", var_975467b9, "<unknown string>");
            foreach (team, team_name in level.teams) {
                function_25e7711a("<unknown string>", team, var_975467b9, team_name);
            }
            var_96a18257 = "<unknown string>";
            foreach (team, team_name in level.teams) {
                function_25e7711a("<unknown string>", team, var_96a18257, team_name);
            }
            if (isdefined(level.var_c99a6ece)) {
                [[ level.var_c99a6ece ]]();
            }
        }
        level.var_94f4ca81.teamfilter = "<unknown string>";
        level.var_94f4ca81.currentsetindex = 0;
        level.var_94f4ca81.currentspawnindex = 0;
        var_f94a23 = 0;
        while (true) {
            self setactionslot(3, "<unknown string>");
            self setactionslot(4, "<unknown string>");
            if (!dpad_up && (self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>"))) {
                level.var_94f4ca81.currentsetindex++;
                if (level.var_94f4ca81.currentsetindex >= level.var_94f4ca81.dataset.size) {
                    level.var_94f4ca81.currentsetindex = 0;
                }
                level.var_94f4ca81.currentspawnindex = 0;
                dpad_up = 1;
                var_f94a23 = 1;
            } else if (!self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>")) {
                dpad_up = 0;
            }
            if (!dpad_down && (self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>"))) {
                level.var_94f4ca81.currentsetindex--;
                if (level.var_94f4ca81.currentsetindex < 0) {
                    level.var_94f4ca81.currentsetindex = level.var_94f4ca81.dataset.size - 1;
                }
                level.var_94f4ca81.currentspawnindex = 0;
                var_f94a23 = 1;
                dpad_down = 1;
            } else if (!self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>")) {
                dpad_down = 0;
            }
            if (!dpad_left && (self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>"))) {
                while (true) {
                    level.var_94f4ca81.currentspawnindex--;
                    if (level.var_94f4ca81.currentspawnindex < 0) {
                        level.var_94f4ca81.currentspawnindex = level.var_94f4ca81.dataset[level.var_94f4ca81.currentsetindex].spawns.size - 1;
                    }
                    if (!is_true(level.var_94f4ca81.dataset[level.var_94f4ca81.currentsetindex].spawns[level.var_94f4ca81.currentspawnindex].ct)) {
                        break;
                    }
                }
                var_f94a23 = 1;
                dpad_left = 1;
            } else if (!self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>")) {
                dpad_left = 0;
            }
            if (!dpad_right && (self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>"))) {
                while (true) {
                    level.var_94f4ca81.currentspawnindex++;
                    if (level.var_94f4ca81.currentspawnindex >= level.var_94f4ca81.dataset[level.var_94f4ca81.currentsetindex].spawns.size) {
                        level.var_94f4ca81.currentspawnindex = 0;
                    }
                    if (!is_true(level.var_94f4ca81.dataset[level.var_94f4ca81.currentsetindex].spawns[level.var_94f4ca81.currentspawnindex].ct)) {
                        break;
                    }
                }
                var_f94a23 = 1;
                dpad_right = 1;
            } else if (!self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>")) {
                dpad_right = 0;
            }
            if (var_f94a23 && level.var_94f4ca81.dataset[level.var_94f4ca81.currentsetindex].spawns.size > 0) {
                origin = level.var_94f4ca81.dataset[level.var_94f4ca81.currentsetindex].spawns[level.var_94f4ca81.currentspawnindex].origin;
                angles = level.var_94f4ca81.dataset[level.var_94f4ca81.currentsetindex].spawns[level.var_94f4ca81.currentspawnindex].angles;
                println("<unknown string>" + level.var_94f4ca81.dataset[level.var_94f4ca81.currentsetindex].name);
                self setorigin(origin);
                self setplayerangles(angles);
                var_f94a23 = 0;
            }
            debug2dtext((100, 750, 0), "<unknown string>" + level.var_94f4ca81.dataset[level.var_94f4ca81.currentsetindex].name, (1, 0, 0));
            debug2dtext((100, 800, 0), "<unknown string>" + string(level.var_94f4ca81.currentspawnindex) + "<unknown string>" + string(level.var_94f4ca81.dataset[level.var_94f4ca81.currentsetindex].spawns.size), (1, 0, 0));
            waitframe(1);
        }
    }

    // Namespace spawning/namespace_797605b0
    // Params 0, eflags: 0x0
    // Checksum 0x8eaee1b1, Offset: 0x1060
    // Size: 0x3e8
    function devgui_spawn_think() {
        self notify(#"devgui_spawn_think");
        self endon(#"devgui_spawn_think");
        self endon(#"disconnect");
        dpad_left = 0;
        dpad_right = 0;
        dpad_up = 0;
        dpad_down = 0;
        for (;;) {
            self setactionslot(3, "<unknown string>");
            self setactionslot(4, "<unknown string>");
            if (!dpad_left && (self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>"))) {
                setdvar(#"scr_playerwarp", "<unknown string>");
                dpad_left = 1;
            } else if (!self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>")) {
                dpad_left = 0;
            }
            if (!dpad_right && (self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>"))) {
                setdvar(#"scr_playerwarp", "<unknown string>");
                dpad_right = 1;
            } else if (!self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>")) {
                dpad_right = 0;
            }
            if (!dpad_up && (self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>"))) {
                setdvar(#"scr_playerwarp", "<unknown string>");
                dpad_up = 1;
            } else if (!self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>")) {
                dpad_up = 0;
            }
            if (!dpad_down && (self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>"))) {
                setdvar(#"scr_playerwarp", "<unknown string>");
                dpad_down = 1;
            } else if (!self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>")) {
                dpad_down = 0;
            }
            waitframe(1);
        }
    }

#/
