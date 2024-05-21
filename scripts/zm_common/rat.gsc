// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_trial.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\rat_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace rat;

/#

    // Namespace rat/rat
    // Params 0, eflags: 0x5
    // Checksum 0xd5463d36, Offset: 0xd8
    // Size: 0x3c
    function private autoexec __init__system__() {
        system::register(#"rat", &preinit, undefined, undefined, undefined);
    }

    // Namespace rat/rat
    // Params 0, eflags: 0x4
    // Checksum 0xd2a5965e, Offset: 0x120
    // Size: 0x544
    function private preinit() {
        init();
        level.rat.common.gethostplayer = &util::gethostplayer;
        addratscriptcmd("<unknown string>", &derriesezombiespawnnavmeshtest);
        addratscriptcmd("<unknown string>", &function_b8181e0d);
        addratscriptcmd("<unknown string>", &function_38d6a592);
        addratscriptcmd("<unknown string>", &function_ff8061ca);
        addratscriptcmd("<unknown string>", &function_1428d95e);
        addratscriptcmd("<unknown string>", &function_63a39134);
        addratscriptcmd("<unknown string>", &function_26a15f4d);
        addratscriptcmd("<unknown string>", &function_3d37c034);
        addratscriptcmd("<unknown string>", &function_7a11ca68);
        addratscriptcmd("<unknown string>", &function_782c6850);
        addratscriptcmd("<unknown string>", &function_125e2d8d);
        addratscriptcmd("<unknown string>", &function_e7dffcf9);
        addratscriptcmd("<unknown string>", &function_c3aa7d01);
        addratscriptcmd("<unknown string>", &function_684f2efb);
        addratscriptcmd("<unknown string>", &function_123195b9);
        addratscriptcmd("<unknown string>", &function_c79c0501);
        addratscriptcmd("<unknown string>", &function_3bbff2c5);
        addratscriptcmd("<unknown string>", &function_ea4b3f00);
        addratscriptcmd("<unknown string>", &function_8f340c78);
        addratscriptcmd("<unknown string>", &function_1bd3da0f);
        addratscriptcmd("<unknown string>", &function_6ea9a113);
        addratscriptcmd("<unknown string>", &function_e2143adf);
        addratscriptcmd("<unknown string>", &function_ff8f5737);
        addratscriptcmd("<unknown string>", &function_5b9ddfdb);
        addratscriptcmd("<unknown string>", &function_d49caa1a);
        addratscriptcmd("<unknown string>", &function_d52c7fc3);
        addratscriptcmd("<unknown string>", &function_d87f9fe1);
        addratscriptcmd("<unknown string>", &function_94ac25d9);
        addratscriptcmd("<unknown string>", &function_a6f7ea4a);
        addratscriptcmd("<unknown string>", &function_303319e9);
        addratscriptcmd("<unknown string>", &function_d71d4f64);
        addratscriptcmd("<unknown string>", &function_e1bdc812);
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x27f11865, Offset: 0x670
    // Size: 0x24
    function function_e1bdc812(*params) {
        return zm_trial::function_ba9853db();
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x298abc3a, Offset: 0x6a0
    // Size: 0x278
    function function_303319e9(params) {
        zombies = getaiarchetypearray("<unknown string>", level.zombie_team);
        player = getplayer(params);
        forward = anglestoforward(player.angles);
        distance = 31;
        if (isdefined(params.distance)) {
            distance = float(params.distance);
        }
        spawn = player.origin + forward * distance;
        foreach (zombie in zombies) {
            zombie forceteleport(spawn, player.angles);
            if (isdefined(params.is_dummy) && params.is_dummy == 1) {
                if (!isdefined(zombie.ignore_player)) {
                    zombie.ignore_player = [];
                } else if (!isarray(zombie.ignore_player)) {
                    zombie.ignore_player = array(zombie.ignore_player);
                }
                zombie.ignore_player[zombie.ignore_player.size] = player;
                zombie.var_67faa700 = 1;
                zombie.ignoremelee = 1;
                zombie.ignore_round_spawn_failsafe = 1;
                zombie pathmode("<unknown string>");
                zombie orientmode("<unknown string>", player.angles[1]);
            }
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x20c88a36, Offset: 0x920
    // Size: 0xf0
    function function_d71d4f64(params) {
        zombies = getaiarchetypearray("<unknown string>", level.zombie_team);
        foreach (zombie in zombies) {
            function_55e20e75(params._id, zombie.origin);
            function_55e20e75(params._id, zombie.angles);
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x64ac3557, Offset: 0xa18
    // Size: 0x3c
    function function_a6f7ea4a(*params) {
        zombie_utility::set_zombie_var(#"rebuild_barrier_cap_per_round", 2147483647);
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x69e61430, Offset: 0xa60
    // Size: 0xf8
    function function_94ac25d9(params) {
        windows = level.exterior_goals;
        if (isdefined(windows)) {
            foreach (window in windows) {
                origin = window.origin;
                function_55e20e75(params._id, origin);
                angles = window.angles;
                function_55e20e75(params._id, angles);
            }
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0xbce32850, Offset: 0xb60
    // Size: 0x13c
    function function_8f340c78(params) {
        chests = level.chests;
        if (isdefined(chests)) {
            foreach (chest in chests) {
                if (chest.hidden == 0) {
                    origin = chest.origin;
                    function_55e20e75(params._id, origin);
                    angles = (chest.angles[0], chest.angles[1] - 90, chest.angles[2]);
                    function_55e20e75(params._id, angles);
                    break;
                }
            }
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x9b7e545d, Offset: 0xca8
    // Size: 0x154
    function function_d52c7fc3(params) {
                for (i = 0; i < level._unitriggers.trigger_stubs.size; i++) {
            triggerstub = level._unitriggers.trigger_stubs[i];
            if (isdefined(triggerstub.script_noteworthy)) {
                if (triggerstub.script_noteworthy == "<unknown string>" || triggerstub.script_noteworthy == "<unknown string>") {
                    origin = (triggerstub.origin[0], triggerstub.origin[1], triggerstub.origin[2]);
                    function_55e20e75(params._id, origin);
                    angles = (triggerstub.angles[0], triggerstub.angles[1], triggerstub.angles[2]);
                    function_55e20e75(params._id, angles);
                }
            }
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0xa1f2facf, Offset: 0xe08
    // Size: 0x3a
    function function_d87f9fe1(*params) {
        host = util::gethostplayer();
        return isdefined(host.var_4e90ce0c);
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x2dd4267b, Offset: 0xe50
    // Size: 0x1dc
    function function_6ea9a113(params) {
        foreach (items in level.item_spawns) {
            foreach (item in items) {
                if (isdefined(item)) {
                    offset = (item.origin[0], item.origin[1], item.origin[2]);
                    function_55e20e75(params._id, offset);
                    forward = item.origin - offset;
                    angle = vectornormalize(forward);
                    angles = (item.angles[0], item.angles[1], item.angles[2]);
                    function_55e20e75(params._id, angles);
                }
            }
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x84ff8f05, Offset: 0x1038
    // Size: 0x144
    function function_ff8f5737(params) {
                for (i = 0; i < level._unitriggers.trigger_stubs.size; i++) {
            triggerstub = level._unitriggers.trigger_stubs[i];
            if (isdefined(triggerstub.target)) {
                if (triggerstub.target == "<unknown string>") {
                    origin = (triggerstub.origin[0], triggerstub.origin[1], triggerstub.origin[2]);
                    function_55e20e75(params._id, origin);
                    angles = (triggerstub.angles[0], triggerstub.angles[1] + 180, triggerstub.angles[2]);
                    function_55e20e75(params._id, angles);
                }
            }
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0xb94c928, Offset: 0x1188
    // Size: 0x144
    function function_5b9ddfdb(params) {
                for (i = 0; i < level._unitriggers.trigger_stubs.size; i++) {
            triggerstub = level._unitriggers.trigger_stubs[i];
            if (isdefined(triggerstub.target)) {
                if (triggerstub.target == "<unknown string>") {
                    origin = (triggerstub.origin[0], triggerstub.origin[1], triggerstub.origin[2]);
                    function_55e20e75(params._id, origin);
                    angles = (triggerstub.angles[0], triggerstub.angles[1] + 180, triggerstub.angles[2]);
                    function_55e20e75(params._id, angles);
                }
            }
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x790cd4dd, Offset: 0x12d8
    // Size: 0x32
    function function_e2143adf(*params) {
        if (isdefined(level.item_inventory)) {
            return level.item_inventory.size;
        }
        return 0;
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x931bb79e, Offset: 0x1318
    // Size: 0x160
    function function_1bd3da0f(params) {
        chunks = level.s_pap_quest.a_s_locations;
        if (isdefined(chunks)) {
            foreach (chunk in chunks) {
                origin = (chunk.origin[0], chunk.origin[1] - 40, chunk.origin[2] - 40);
                function_55e20e75(params._id, origin);
                angles = (chunk.angles[0], chunk.angles[1] + 180, chunk.angles[2]);
                function_55e20e75(params._id, angles);
            }
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0xf97aa48e, Offset: 0x1480
    // Size: 0x24
    function function_d49caa1a(*params) {
        return level.s_pap_quest.var_be6e6f65;
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0xee4fb7b2, Offset: 0x14b0
    // Size: 0x122
    function function_ea4b3f00(params) {
        host = util::gethostplayer();
        skip = 0;
        if (isdefined(params.var_f870f386)) {
            if (params.var_f870f386 == "<unknown string>") {
                skip = 1;
            }
        }
        players = getplayers();
        foreach (player in players) {
            if (skip) {
                if (player != host) {
                    player enableinvulnerability();
                }
                continue;
            }
            skip = 0;
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x9e772fe1, Offset: 0x15e0
    // Size: 0x74
    function function_c79c0501(params) {
        if (isdefined(params.round)) {
            setdvar(#"scr_zombie_round", int(params.round));
            adddebugcommand("<unknown string>");
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x8e2c3aca, Offset: 0x1660
    // Size: 0x7c
    function function_3bbff2c5(params) {
        num = 3;
        if (isdefined(params.num)) {
            num = int(params.num);
        }
        if (num > 0) {
            adddebugcommand("<unknown string>" + num);
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x176d781, Offset: 0x16e8
    // Size: 0x10
    function function_123195b9(*params) {
        
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x2759beda, Offset: 0x1700
    // Size: 0x1f8
    function function_684f2efb(params) {
        trigs = getentarray("<unknown string>", "<unknown string>");
        foreach (ent in trigs) {
            ent_parts = getentarray(ent.target, "<unknown string>");
            foreach (e in ent_parts) {
                if (isdefined(e.script_noteworthy) && e.script_noteworthy == "<unknown string>") {
                    master_switch = e;
                    function_55e20e75(params._id, master_switch.origin);
                    angles = (master_switch.angles[0], master_switch.angles[1], master_switch.angles[2]);
                    function_55e20e75(params._id, angles);
                    break;
                }
            }
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0xbff25ba, Offset: 0x1900
    // Size: 0x50
    function function_c3aa7d01(*params) {
        player = util::gethostplayer();
        if (isdefined(player)) {
            if (isdefined(player.perk_purchased)) {
                return player.perk_purchased;
            }
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x919d9bfe, Offset: 0x1958
    // Size: 0x92
    function function_125e2d8d(*params) {
        zombie_doors = getentarray("<unknown string>", "<unknown string>");
        count = 0;
        if (isdefined(zombie_doors)) {
            for (i = 0; i < zombie_doors.size; i++) {
                if (isdefined(zombie_doors[i].purchaser)) {
                    count++;
                }
            }
        }
        return count;
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0xba9cc823, Offset: 0x19f8
    // Size: 0x134
    function function_e7dffcf9(params) {
        zombie_doors = getentarray("<unknown string>", "<unknown string>");
        if (isdefined(zombie_doors)) {
            for (i = 0; i < zombie_doors.size; i++) {
                door = zombie_doors[i];
                if (isdefined(door.script_noteworthy)) {
                    if (door.script_noteworthy == "<unknown string>" && door._door_open == 0) {
                        function_55e20e75(params._id, door.origin);
                        angles = (door.angles[0], door.angles[1] + 90, door.angles[2]);
                        function_55e20e75(params._id, angles);
                    }
                }
            }
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x5c15b105, Offset: 0x1b38
    // Size: 0x134
    function function_7a11ca68(params) {
                for (i = 0; i < level._unitriggers.trigger_stubs.size; i++) {
            triggerstub = level._unitriggers.trigger_stubs[i];
            if (triggerstub.cursor_hint == "<unknown string>") {
                origin = triggerstub zm_unitrigger::unitrigger_origin();
                origin = (origin[0], origin[1], origin[2] - 40);
                function_55e20e75(params._id, origin);
                angles = triggerstub.angles;
                angles = (angles[0], angles[1] - 90, angles[2]);
                function_55e20e75(params._id, angles);
            }
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x314311b4, Offset: 0x1c78
    // Size: 0x124
    function function_782c6850(params) {
                for (i = 0; i < level._unitriggers.trigger_stubs.size; i++) {
            triggerstub = level._unitriggers.trigger_stubs[i];
            if (isdefined(triggerstub.hint_string) && triggerstub.hint_string == "<unknown string>") {
                origin = triggerstub zm_unitrigger::unitrigger_origin();
                function_55e20e75(params._id, origin);
                angles = triggerstub.angles;
                angles = (angles[0], angles[1] + 180, angles[2]);
                function_55e20e75(params._id, angles);
            }
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x3c51e049, Offset: 0x1da8
    // Size: 0xe8
    function function_3d37c034(*params) {
        a_e_players = getplayers();
        foreach (e_player in a_e_players) {
            if (isdefined(e_player.intermission) || e_player.sessionstate == "<unknown string>" || e_player.sessionstate == "<unknown string>") {
                continue;
            }
            return 1;
        }
        return 0;
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x51d6f08b, Offset: 0x1e98
    // Size: 0x34
    function function_38d6a592(*params) {
        setdvar(#"zombie_cheat", 2);
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x53b21199, Offset: 0x1ed8
    // Size: 0x34
    function function_26a15f4d(*params) {
        setdvar(#"zombie_cheat", 0);
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0x8356c43f, Offset: 0x1f18
    // Size: 0xec
    function function_1428d95e(*params) {
        player = util::gethostplayer();
        forward = anglestoforward(player.angles);
        spawn = player.origin + forward * 10;
        zombie = zm_devgui::devgui_zombie_spawn();
        if (isdefined(zombie)) {
            zombie forceteleport(spawn, player.angles + (0, 180, 0));
            zombie pathmode("<unknown string>");
        }
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0xf910cd2e, Offset: 0x2010
    // Size: 0x24
    function function_63a39134(*params) {
        return zombie_utility::get_current_zombie_count();
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0xcb3d04e3, Offset: 0x2040
    // Size: 0x38
    function function_b8181e0d(*params) {
        player = util::gethostplayer();
        return player.score;
    }

    // Namespace rat/rat
    // Params 1, eflags: 0x0
    // Checksum 0xb9b180fa, Offset: 0x2080
    // Size: 0x2e
    function function_ff8061ca(*params) {
        if (isdefined(level.power_local_doors_globally)) {
            return 1;
        }
        return 0;
    }

    // Namespace rat/rat
    // Params 2, eflags: 0x0
    // Checksum 0x7b77e8ed, Offset: 0x20b8
    // Size: 0x474
    function derriesezombiespawnnavmeshtest(params, inrat) {
        if (!isdefined(inrat)) {
            inrat = 1;
        }
        if (inrat) {
            wait(10);
        }
        enemy = zm_devgui::devgui_zombie_spawn();
        enemy.is_rat_test = 1;
        failed_spawn_origin = [];
        failed_node_origin = [];
        failed_attack_spot_spawn_origin = [];
        failed_attack_spot = [];
        size = 0;
        failed_attack_spot_size = 0;
        wait(0.2);
        foreach (zone in level.zones) {
            foreach (loc in zone.a_loc_types[#"zombie_location"]) {
                angles = (0, 0, 0);
                enemy forceteleport(loc.origin, angles);
                wait(0.2);
                node = undefined;
                for (j = 0; j < level.exterior_goals.size; j++) {
                    if (isdefined(level.exterior_goals[j].script_string) && level.exterior_goals[j].script_string == loc.script_string) {
                        node = level.exterior_goals[j];
                    }
                }
                if (isdefined(node)) {
                    ispath = enemy setgoal(node.origin);
                    if (!ispath) {
                        failed_spawn_origin[size] = loc.origin;
                        failed_node_origin[size] = node.origin;
                        size++;
                    }
                    wait(0.2);
                    for (j = 0; j < node.attack_spots.size; j++) {
                        isattackpath = enemy setgoal(node.attack_spots[j]);
                        if (!isattackpath) {
                            failed_attack_spot_spawn_origin[failed_attack_spot_size] = loc.origin;
                            failed_attack_spot[failed_attack_spot_size] = node.attack_spots[j];
                            failed_attack_spot_size++;
                        }
                        wait(0.2);
                    }
                }
            }
        }
        if (inrat) {
            errmsg = "<unknown string>";
            for (i = 0; i < size; i++) {
                errmsg += "<unknown string>" + failed_spawn_origin[i] + "<unknown string>" + failed_node_origin[i] + "<unknown string>";
            }
            for (i = 0; i < failed_attack_spot_size; i++) {
                errmsg += "<unknown string>" + failed_attack_spot_spawn_origin[i] + "<unknown string>" + failed_attack_spot[i] + "<unknown string>";
            }
            if (size > 0 || failed_attack_spot_size > 0) {
                ratreportcommandresult(params._id, 0, errmsg);
                return;
            }
            ratreportcommandresult(params._id, 1);
        }
    }

#/
