// Atian COD Tools GSC CW decompiler test
#using script_18077945bb84ede7;
#using scripts\core_common\player\player_stats.gsc;
#using script_36f4be19da8eb6d0;
#using scripts\zm_common\zm_ui_inventory.gsc;
#using script_6fc2be37feeb317b;
#using script_7a5293d92c61c788;
#using script_3751b21462a54a7d;
#using script_4ccfb58a9443a60b;
#using scripts\zm_common\rat.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_turned.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_round_logic.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm_placeable_mine.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using scripts\zm_common\zm_pack_a_punch_util.gsc;
#using scripts\zm_common\zm_melee_weapon.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using script_62caa307a394c18c;
#using scripts\zm_common\zm_characters.gsc;
#using scripts\zm_common\zm_behavior.gsc;
#using scripts\zm_common\zm_blockers.gsc;
#using scripts\zm_common\zm.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\zombie_shared.gsc;
#using scripts\core_common\ai\zombie_death.gsc;
#using script_7f6cd71c43c45c57;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\dev_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\bots\bot.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\aat_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_devgui;

/#

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x5
    // Checksum 0xcfe7f671, Offset: 0x228
    // Size: 0x4c
    function private autoexec __init__system__() {
        system::register(#"zm_devqui", &preinit, &postinit, undefined, undefined);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x4
    // Checksum 0xe1042ba9, Offset: 0x280
    // Size: 0x234
    function private preinit() {
        setdvar(#"zombie_devgui", "<unknown string>");
        setdvar(#"scr_force_weapon", "<unknown string>");
        util::init_dvar(#"scr_zombie_spawn_in_view", 0, &function_f1be4492);
        level.devgui_add_weapon = &devgui_add_weapon;
        level.devgui_add_ability = &devgui_add_ability;
        if (!zm_utility::is_survival()) {
            level.var_37778628 = &zombie_devgui_goto_round;
        }
        level thread zombie_devgui_think();
        thread zombie_weapon_devgui_think();
        thread function_3b534f9c();
        thread function_1e285ac2();
        thread devgui_zombie_healthbar();
        thread dev::devgui_test_chart_think();
        if (!isdefined(getdvar(#"scr_testscriptruntimeerror"))) {
            setdvar(#"scr_testscriptruntimeerror", "<unknown string>");
        }
        level thread dev::body_customization_devgui(0);
        thread testscriptruntimeerror();
        callback::on_connect(&player_on_connect);
        add_custom_devgui_callback(&function_2f5772bf);
        spawner::add_ai_spawn_function(&function_a4eebdf3);
        thread init_debug_center_screen();
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x4
    // Checksum 0x93986a1, Offset: 0x4c0
    // Size: 0xdc
    function private postinit() {
        level thread zombie_devgui_player_commands();
        level thread zombie_devgui_validation_commands();
        level thread function_8817dd98();
        level thread function_e9b89aac();
        level thread function_38184bf8();
        level thread function_b5d522f8();
        level thread function_300dfb68();
        level thread function_4eaed09d();
        level thread namespace_42457a0::function_5dbd7c2a();
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xeefc52fc, Offset: 0x5a8
    // Size: 0x1a4
    function function_a4eebdf3() {
        if (self.targetname !== "<unknown string>") {
            return;
        }
        if (self.archetype === #"zombie") {
            self.custom_location = &function_9960be00;
            self.start_inert = 1;
            var_c5de9c31 = 0;
            if (isdefined(self.spawn_funcs)) {
                foreach (pair in self.spawn_funcs) {
                    if (pair[#"function"] === &zm_behavior::function_d63f6426) {
                        var_c5de9c31 = 1;
                        break;
                    }
                }
            }
            self endon(#"death");
            if (!var_c5de9c31) {
                waittillframeend();
                self zm_behavior::function_d63f6426();
            }
        }
        if (is_true(level.var_2b46c827)) {
            waittillframeend();
            self setentitypaused(1);
            level waittill(#"hash_39e4c9a17bf97f7d");
            self setentitypaused(0);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xcd9ef7f3, Offset: 0x758
    // Size: 0x8
    function zombie_devgui_player_commands() {
        
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x3291240a, Offset: 0x768
    // Size: 0x104
    function function_358c899d() {
        test_scores = array(1, 10, 50, 100, 3500, 9999);
        i = 0;
        foreach (score in test_scores) {
            adddebugcommand("<unknown string>" + score + "<unknown string>" + i + "<unknown string>" + score + "<unknown string>");
            i++;
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x9fc481c, Offset: 0x878
    // Size: 0x208
    function function_5ac8947e() {
        setdvar(#"zombie_devgui_hud", "<unknown string>");
        while (true) {
            cmd = getdvar(#"zombie_devgui_hud", "<unknown string>");
            if (cmd == "<unknown string>") {
                wait(0.1);
                continue;
            }
            if (strstartswith(cmd, "<unknown string>")) {
                str = strreplace(cmd, "<unknown string>", "<unknown string>");
                score = int(str);
                players = getplayers();
                foreach (player in players) {
                    if (isplayer(player)) {
                        player luinotifyevent(#"score_event", 2, #"hash_60899927812586a1", score);
                        break;
                    }
                }
            }
            setdvar(#"zombie_devgui_hud", "<unknown string>");
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x474ef91a, Offset: 0xa88
    // Size: 0x44
    function player_on_connect() {
        level flag::wait_till("<unknown string>");
        wait(1);
        if (isdefined(self)) {
            zombie_devgui_player_menu(self);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x54314586, Offset: 0xad8
    // Size: 0x44
    function zombie_devgui_player_menu_clear(playername) {
        rootclear = "<unknown string>" + playername + "<unknown string>";
        adddebugcommand(rootclear);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 2, eflags: 0x0
    // Checksum 0xafced6eb, Offset: 0xb28
    // Size: 0xb4
    function function_c7dd7a17(archetype, var_9fde8624) {
        if (!isdefined(var_9fde8624)) {
            var_9fde8624 = "<unknown string>";
        }
        displayname = archetype;
        if (isdefined(var_9fde8624) && var_9fde8624 != "<unknown string>") {
            displayname = displayname + "<unknown string>" + var_9fde8624;
        }
        adddebugcommand("<unknown string>" + displayname + "<unknown string>" + archetype + "<unknown string>" + var_9fde8624 + "<unknown string>");
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x4
    // Checksum 0xb0b41196, Offset: 0xbe8
    // Size: 0x3b4
    function private function_2f5772bf(cmd) {
        if (strstartswith(cmd, "<unknown string>")) {
            player = level.players[0];
            direction = player getplayerangles();
            direction_vec = anglestoforward(direction);
            eye = player geteye();
            direction_vec = (direction_vec[0] * 8000, direction_vec[1] * 8000, direction_vec[2] * 8000);
            trace = bullettrace(eye, eye + direction_vec, 0, undefined);
            ai = undefined;
            ai_info = strreplace(cmd, "<unknown string>", "<unknown string>");
            ai_info = strtok(ai_info, "<unknown string>");
            aitype = ai_info[0];
            if (ai_info.size > 1) {
                var_9fde8624 = ai_info[1];
            }
            spawners = getspawnerarray();
            foreach (spawner in spawners) {
                if (isdefined(spawner.archetype) && spawner.archetype == aitype && (!isdefined(var_9fde8624) || isdefined(spawner.var_9fde8624) && spawner.var_9fde8624 == var_9fde8624)) {
                    ai_spawner = spawner;
                    break;
                }
            }
            if (!isdefined(ai_spawner)) {
                iprintln("<unknown string>" + aitype);
                return;
            }
            ai_spawner.script_forcespawn = 1;
            ai = zombie_utility::spawn_zombie(ai_spawner, undefined, ai_spawner);
            if (isdefined(ai)) {
                if (ai.team != ai_spawner.team) {
                    ai.team = ai_spawner.team;
                }
                wait(0.5);
                if (isvehicle(ai)) {
                    ai.origin = trace[#"position"];
                    ai function_a57c34b7(trace[#"position"]);
                    return;
                }
                ai forceteleport(trace[#"position"], player.angles + (0, 180, 0));
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x702427d3, Offset: 0xfa8
    // Size: 0x544
    function zombie_devgui_player_menu(player) {
        zombie_devgui_player_menu_clear(player.name);
        ip1 = player getentitynumber() + 1;
        adddebugcommand("<unknown string>" + player.name + "<unknown string>" + ip1 + "<unknown string>" + ip1 + "<unknown string>");
        adddebugcommand("<unknown string>" + player.name + "<unknown string>" + ip1 + "<unknown string>" + ip1 + "<unknown string>");
        adddebugcommand("<unknown string>" + player.name + "<unknown string>" + ip1 + "<unknown string>" + ip1 + "<unknown string>");
        adddebugcommand("<unknown string>" + player.name + "<unknown string>" + ip1 + "<unknown string>" + ip1 + "<unknown string>");
        adddebugcommand("<unknown string>" + player.name + "<unknown string>" + ip1 + "<unknown string>" + ip1 + "<unknown string>");
        adddebugcommand("<unknown string>" + player.name + "<unknown string>" + ip1 + "<unknown string>" + ip1 + "<unknown string>");
        adddebugcommand("<unknown string>" + player.name + "<unknown string>" + ip1 + "<unknown string>" + ip1 + "<unknown string>");
        adddebugcommand("<unknown string>" + player.name + "<unknown string>" + ip1 + "<unknown string>" + ip1 + "<unknown string>");
        adddebugcommand("<unknown string>" + player.name + "<unknown string>" + ip1 + "<unknown string>" + ip1 + "<unknown string>");
        adddebugcommand("<unknown string>" + player.name + "<unknown string>" + ip1 + "<unknown string>" + ip1 + "<unknown string>");
        adddebugcommand("<unknown string>" + player.name + "<unknown string>" + ip1 + "<unknown string>" + ip1 + "<unknown string>");
        adddebugcommand("<unknown string>" + player.name + "<unknown string>" + ip1 + "<unknown string>" + ip1 + "<unknown string>");
        adddebugcommand("<unknown string>" + player.name + "<unknown string>" + ip1 + "<unknown string>" + ip1 + "<unknown string>");
        adddebugcommand("<unknown string>" + player.name + "<unknown string>" + ip1 + "<unknown string>" + ip1 + "<unknown string>");
        adddebugcommand("<unknown string>" + player.name + "<unknown string>" + ip1 + "<unknown string>" + ip1 + "<unknown string>");
        if (isdefined(level.var_e2c54606)) {
            level thread [[ level.var_e2c54606 ]](player, ip1);
        }
        self thread zombie_devgui_player_menu_clear_on_disconnect(player);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0xd22160c, Offset: 0x14f8
    // Size: 0x54
    function zombie_devgui_player_menu_clear_on_disconnect(player) {
        playername = player.name;
        player waittill(#"disconnect");
        zombie_devgui_player_menu_clear(playername);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xa3b0e162, Offset: 0x1558
    // Size: 0x44a
    function function_38184bf8() {
        while (true) {
            var_c635168c = getdvarint(#"hash_67d19b13a4ab8b94", 0);
            if (var_c635168c >= 0 && isdefined(level.zone_paths[var_c635168c])) {
                zone_paths = level.zone_paths[var_c635168c];
                foreach (var_375627f0, zone_path in zone_paths) {
                    zone = level.zones[var_375627f0];
                    print_origin = undefined;
                    if (isdefined(zone.nodes[0])) {
                        print_origin = zone.nodes[0].origin;
                    }
                    if (!isdefined(print_origin)) {
                        print_origin = zone.volumes[0].origin;
                    }
                    color = (1, 0, 0);
                    if (zone_path.cost < 4) {
                        color = (0, 1, 0);
                    } else if (zone_path.cost < 8) {
                        color = (1, 0.5, 0);
                    }
                    circle(print_origin, 30, color);
                    print3d(print_origin, function_9e72a96(var_375627f0), color, 1, 0.5);
                    print3d(print_origin + (0, 0, -10), "<unknown string>" + zone_path.cost, color, 1, 0.5);
                    if (isdefined(zone_path.to_zone)) {
                        to_zone = level.zones[zone_path.to_zone];
                        if (isdefined(to_zone.nodes[0])) {
                            var_fbe06d06 = to_zone.nodes[0].origin;
                        }
                        if (!isdefined(var_fbe06d06)) {
                            var_fbe06d06 = to_zone.volumes[0].origin;
                        }
                        line(print_origin, var_fbe06d06, color, 0, 0);
                    }
                }
                foreach (zone_name, zone in level.zones) {
                    if (!isdefined(zone_paths[zone_name])) {
                        print_origin = undefined;
                        if (isdefined(zone.nodes[0])) {
                            print_origin = zone.nodes[0].origin;
                        }
                        if (!isdefined(print_origin)) {
                            print_origin = zone.volumes[0].origin;
                        }
                        print3d(print_origin, function_9e72a96(zone_name), (1, 0, 0), 1, 0.5);
                        circle(print_origin, 30, (1, 0, 0));
                        circle(print_origin, 35, (1, 0, 0));
                        circle(print_origin, 40, (1, 0, 0));
                    }
                }
            }
            waitframe(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xb99cbc72, Offset: 0x19b0
    // Size: 0x108
    function function_300dfb68() {
        setdvar(#"hash_45632f9301da0179", "<unknown string>");
        adddebugcommand("<unknown string>");
        while (true) {
            cmd = getdvarstring(#"hash_45632f9301da0179");
            if (cmd != "<unknown string>") {
                switch (cmd) {
                case #"teleport":
                    function_1ecbcf72();
                    break;
                }
                setdvar(#"hash_45632f9301da0179", "<unknown string>");
            }
            util::wait_network_frame();
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x9a0661e3, Offset: 0x1ac0
    // Size: 0x130
    function function_4eaed09d() {
        setdvar(#"hash_6850d2ee27e63e98", "<unknown string>");
        setdvar(#"hash_72c3f824ab058229", 50);
        adddebugcommand("<unknown string>");
        while (true) {
            cmd = getdvarstring(#"hash_6850d2ee27e63e98");
            if (cmd != "<unknown string>") {
                switch (cmd) {
                case #"hash_5b9880594bd122e4":
                    function_a2b4b889();
                    break;
                }
                setdvar(#"hash_6850d2ee27e63e98", "<unknown string>");
            }
            util::wait_network_frame();
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x6f99c58a, Offset: 0x1bf8
    // Size: 0xce
    function function_a2b4b889() {
        a_ai_zombies = getaispeciesarray("<unknown string>", "<unknown string>");
        foreach (ai in a_ai_zombies) {
            ai.var_2e38a54d = getdvarint(#"hash_72c3f824ab058229", 50);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xbe1b6680, Offset: 0x1cd0
    // Size: 0x3c
    function function_1ecbcf72() {
        params = {#is_dummy:1};
        rat::function_303319e9(params);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xfb9a8842, Offset: 0x1d18
    // Size: 0x220
    function zombie_devgui_validation_commands() {
        setdvar(#"validation_devgui_command", "<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        while (true) {
            cmd = getdvarstring(#"validation_devgui_command");
            if (cmd != "<unknown string>") {
                switch (cmd) {
                case #"structs":
                    thread bunker_entrance_zoned();
                    break;
                case #"spawner":
                    zombie_spawner_validation();
                    break;
                case #"zone_adj":
                    if (!isdefined(level.toggle_zone_adjacencies_validation)) {
                        level.toggle_zone_adjacencies_validation = 1;
                    } else {
                        level.toggle_zone_adjacencies_validation = !level.toggle_zone_adjacencies_validation;
                    }
                    thread zone_adjacencies_validation();
                    break;
                case #"zone_paths":
                    break;
                case #"pathing":
                    thread zombie_pathing_validation();
                default:
                    break;
                }
                setdvar(#"validation_devgui_command", "<unknown string>");
            }
            util::wait_network_frame();
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x3638ff67, Offset: 0x1f40
    // Size: 0x1b4
    function function_edce7be0() {
        spawners = getspawnerarray();
        var_26193d02 = [];
        foreach (spawner in spawners) {
            have_spawner = 0;
            foreach (unique_spawner in var_26193d02) {
                if (spawner.classname === unique_spawner.classname) {
                    have_spawner = 1;
                    break;
                }
            }
            if (have_spawner) {
                continue;
            }
            if (!isdefined(var_26193d02)) {
                var_26193d02 = [];
            } else if (!isarray(var_26193d02)) {
                var_26193d02 = array(var_26193d02);
            }
            if (!isinarray(var_26193d02, spawner)) {
                var_26193d02[var_26193d02.size] = spawner;
            }
        }
        return var_26193d02;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x6f71715c, Offset: 0x2100
    // Size: 0xe0
    function function_6758ede4(zone) {
        if (isdefined(zone.nodes)) {
            foreach (node in zone.nodes) {
                node_region = getnoderegion(node);
                if (!isdefined(node_region)) {
                    thread drawvalidation(node.origin, undefined, undefined, undefined, node);
                }
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 2, eflags: 0x0
    // Checksum 0x80ea71d4, Offset: 0x21e8
    // Size: 0x166
    function function_995340b7(zone, var_87f65b00) {
        if (!isdefined(zone.a_loc_types[#"wait_location"]) || zone.a_loc_types[#"wait_location"].size <= 0) {
            if (is_true(var_87f65b00)) {
                level.validation_errors_count++;
                if (isdefined(zone.nodes) && zone.nodes.size > 0) {
                    origin = zone.nodes[0].origin + (0, 0, 32);
                } else {
                    origin = zone.volumes[0].origin;
                }
                thread drawvalidation(origin, zone.name);
                println("<unknown string>" + zone.name);
                iprintlnbold("<unknown string>" + zone.name);
            }
            return 0;
        }
        return 1;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 4, eflags: 0x0
    // Checksum 0xed394116, Offset: 0x2358
    // Size: 0x2e8
    function function_1f0bc660(zone, enemy, spawner, spawn_location) {
        if (!isdefined(zone.a_loc_types[spawn_location])) {
            return enemy;
        }
        foreach (spawn_point in zone.a_loc_types[spawn_location]) {
            if (!isdefined(enemy)) {
                enemy = zombie_utility::spawn_zombie(spawner, spawner.targetname, spawn_point);
            }
            spawn_point_origin = spawn_point.origin;
            if (isdefined(spawn_point.script_string) && spawn_point.script_string != "<unknown string>") {
                spawn_point_origin = enemy validate_to_board(spawn_point, spawn_point_origin);
            }
            if (!ispointonnavmesh(spawn_point_origin, enemy getpathfindingradius() + 1)) {
                new_spawn_point_origin = getclosestpointonnavmesh(spawn_point_origin, 64, enemy getpathfindingradius() + 1);
            } else {
                new_spawn_point_origin = spawn_point_origin;
            }
            var_d37fcf94 = isdefined(spawn_point.script_noteworthy) && !issubstr(spawn_point.script_noteworthy, "<unknown string>");
            if (is_true(var_d37fcf94) && !isdefined(new_spawn_point_origin) && !is_true(spawn_point.var_f0596bbb)) {
                level.validation_errors_count++;
                thread drawvalidation(spawn_point_origin);
                println("<unknown string>" + spawn_point_origin);
                iprintlnbold("<unknown string>" + spawn_point_origin);
                spawn_point.var_f0596bbb = 1;
            }
            if (!isdefined(new_spawn_point_origin)) {
                continue;
            }
            ispath = enemy validate_to_wait_point(zone, new_spawn_point_origin, spawn_point);
        }
        return enemy;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xe15cd731, Offset: 0x2648
    // Size: 0x3b0
    function zombie_spawner_validation() {
        level.validation_errors_count = 0;
        if (!isdefined(level.toggle_spawner_validation)) {
            level.toggle_spawner_validation = 1;
            zombie_devgui_open_sesame();
            spawners = function_edce7be0();
            foreach (zone in level.zones) {
                function_6758ede4(zone);
                function_995340b7(zone, 1);
            }
            foreach (spawner in spawners) {
                if (!isdefined(spawner.aitype)) {
                    continue;
                }
                archetype = getarchetypefromclassname(spawner.aitype);
                if (!isdefined(archetype)) {
                    continue;
                }
                var_f41ab3f2 = spawner ai::function_9139c839().spawnlocations;
                if (!isdefined(var_f41ab3f2)) {
                    continue;
                }
                var_4d7c27e3 = 0;
                enemy = undefined;
                foreach (zone in level.zones) {
                    if (!function_995340b7(zone)) {
                        continue;
                    }
                    foreach (var_37121713 in var_f41ab3f2) {
                        enemy = function_1f0bc660(zone, enemy, spawner, var_37121713.spawnlocation);
                        if (isdefined(enemy)) {
                            var_4d7c27e3 = 1;
                        }
                    }
                }
                if (!var_4d7c27e3) {
                    iprintlnbold("<unknown string>" + spawner.aitype);
                }
            }
            println("<unknown string>" + level.validation_errors_count);
            iprintlnbold("<unknown string>" + level.validation_errors_count);
            level.validation_errors_count = undefined;
            return;
        }
        level.toggle_spawner_validation = !level.toggle_spawner_validation;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 2, eflags: 0x0
    // Checksum 0xa8603982, Offset: 0x2a00
    // Size: 0x2aa
    function validate_to_board(spawn_point, spawn_point_origin_backup) {
                for (j = 0; j < level.exterior_goals.size; j++) {
            if (isdefined(level.exterior_goals[j].script_string) && level.exterior_goals[j].script_string == spawn_point.script_string) {
                node = level.exterior_goals[j];
                break;
            }
        }
        if (isdefined(node)) {
            ispath = self canpath(spawn_point.origin, node.origin);
            if (!ispath) {
                level.validation_errors_count++;
                thread drawvalidation(spawn_point_origin_backup, undefined, undefined, node.origin, undefined, self.archetype);
                if (isdefined(self.archetype)) {
                    println("<unknown string>" + function_9e72a96(self.archetype) + "<unknown string>" + spawn_point_origin_backup + "<unknown string>" + spawn_point.targetname);
                    iprintlnbold("<unknown string>" + function_9e72a96(self.archetype) + "<unknown string>" + spawn_point_origin_backup + "<unknown string>" + spawn_point.targetname);
                } else {
                    println("<unknown string>" + spawn_point_origin_backup + "<unknown string>" + spawn_point.targetname);
                    iprintlnbold("<unknown string>" + spawn_point_origin_backup + "<unknown string>" + spawn_point.targetname);
                }
            }
            nodeforward = anglestoforward(node.angles);
            nodeforward = vectornormalize(nodeforward);
            spawn_point_origin = node.origin + nodeforward * 100;
            return spawn_point_origin;
        }
        return spawn_point_origin_backup;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 3, eflags: 0x0
    // Checksum 0xb3ffb082, Offset: 0x2cb8
    // Size: 0x2b0
    function validate_to_wait_point(zone, new_spawn_point_origin, spawn_point) {
        foreach (loc in zone.a_loc_types[#"wait_location"]) {
            if (isdefined(loc)) {
                wait_point = loc.origin;
                if (isdefined(wait_point)) {
                    new_wait_point = getclosestpointonnavmesh(wait_point, self getpathfindingradius(), 30);
                    if (isdefined(new_spawn_point_origin) && isdefined(new_wait_point)) {
                        ispath = self findpath(new_spawn_point_origin, new_wait_point);
                        if (ispath) {
                            return 1;
                        }
                        level.validation_errors_count++;
                        thread drawvalidation(new_spawn_point_origin, undefined, new_wait_point, undefined, undefined, self.archetype);
                        if (isdefined(self.archetype)) {
                            println("<unknown string>" + function_9e72a96(self.archetype) + "<unknown string>" + new_spawn_point_origin + "<unknown string>" + spawn_point.targetname);
                            iprintlnbold("<unknown string>" + function_9e72a96(self.archetype) + "<unknown string>" + new_spawn_point_origin + "<unknown string>" + spawn_point.targetname);
                        } else {
                            println("<unknown string>" + new_spawn_point_origin + "<unknown string>" + spawn_point.targetname);
                            iprintlnbold("<unknown string>" + new_spawn_point_origin + "<unknown string>" + spawn_point.targetname);
                        }
                        return 0;
                    }
                }
            }
        }
        return 0;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 6, eflags: 0x0
    // Checksum 0xebec12de, Offset: 0x2f70
    // Size: 0x44e
    function drawvalidation(origin, zone_name, nav_mesh_wait_point, boards_point, zone_node, archetype) {
        if (!isdefined(zone_name)) {
            zone_name = undefined;
        }
        if (!isdefined(nav_mesh_wait_point)) {
            nav_mesh_wait_point = undefined;
        }
        if (!isdefined(boards_point)) {
            boards_point = undefined;
        }
        if (!isdefined(zone_node)) {
            zone_node = undefined;
        }
        if (!isdefined(archetype)) {
            archetype = undefined;
        }
        if (isdefined(archetype)) {
            archetype = function_9e72a96(archetype);
        }
        while (true) {
            if (is_true(level.toggle_spawner_validation)) {
                if (!isdefined(origin)) {
                    break;
                }
                if (isdefined(zone_name)) {
                    circle(origin, 32, (1, 0, 0));
                    print3d(origin, "<unknown string>" + zone_name, (1, 1, 1), 1, 0.5);
                } else if (isdefined(nav_mesh_wait_point)) {
                    circle(origin, 32, (0, 0, 1));
                    if (isdefined(archetype)) {
                        print3d(origin, archetype + "<unknown string>" + origin, (1, 1, 1), 1, 0.5);
                    } else {
                        print3d(origin, "<unknown string>" + origin, (1, 1, 1), 1, 0.5);
                    }
                    line(origin, nav_mesh_wait_point, (1, 0, 0));
                    circle(nav_mesh_wait_point, 32, (1, 0, 0));
                    print3d(nav_mesh_wait_point, "<unknown string>" + nav_mesh_wait_point, (1, 1, 1), 1, 0.5);
                } else if (isdefined(boards_point)) {
                    circle(origin, 32, (0, 0, 1));
                    if (isdefined(archetype)) {
                        print3d(origin, archetype + "<unknown string>" + origin, (1, 1, 1), 1, 0.5);
                    } else {
                        print3d(origin, "<unknown string>" + origin, (1, 1, 1), 1, 0.5);
                    }
                    line(origin, boards_point, (1, 0, 0));
                    circle(boards_point, 32, (1, 0, 0));
                    print3d(boards_point, "<unknown string>" + boards_point, (1, 1, 1), 1, 0.5);
                } else if (isdefined(zone_node)) {
                    circle(origin, 32, (1, 0, 0));
                    print3d(origin, "<unknown string>" + (isdefined(zone_node.targetname) ? zone_node.targetname : "<unknown string>") + "<unknown string>" + origin + "<unknown string>", (1, 1, 1), 1, 0.5);
                } else {
                    circle(origin, 32, (0, 0, 1));
                    print3d(origin, "<unknown string>" + origin, (1, 1, 1), 1, 0.5);
                }
            }
            waitframe(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xcd0749a9, Offset: 0x33c8
    // Size: 0x2da
    function zone_adjacencies_validation() {
        zombie_devgui_open_sesame();
        while (true) {
            if (is_true(level.toggle_zone_adjacencies_validation)) {
                if (!isdefined(getplayers()[0].zone_name)) {
                    waitframe(1);
                    continue;
                }
                str_zone = getplayers()[0].zone_name;
                keys = getarraykeys(level.zones);
                offset = 0;
                foreach (key in keys) {
                    if (key === str_zone) {
                        draw_zone_adjacencies_validation(level.zones[key], 2, key);
                        continue;
                    }
                    if (isdefined(level.zones[str_zone].adjacent_zones[key])) {
                        if (level.zones[str_zone].adjacent_zones[key].is_connected) {
                            offset += 10;
                            draw_zone_adjacencies_validation(level.zones[key], 1, key, level.zones[str_zone], offset);
                        } else {
                            draw_zone_adjacencies_validation(level.zones[key], 0, key);
                        }
                        continue;
                    }
                    draw_zone_adjacencies_validation(level.zones[key], 0, key);
                }
                foreach (zone in level.zones) {
                    function_f4669d7b(level.zones, zone);
                }
            }
            waitframe(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 5, eflags: 0x0
    // Checksum 0x59f0b97, Offset: 0x36b0
    // Size: 0x27c
    function draw_zone_adjacencies_validation(zone, status, name, current_zone, offset) {
        if (!isdefined(current_zone)) {
            current_zone = undefined;
        }
        if (!isdefined(offset)) {
            offset = 0;
        }
        if (!isdefined(zone.volumes[0]) && !isdefined(zone.nodes[0])) {
            return;
        }
        if (isdefined(zone.nodes[0])) {
            print_origin = zone.nodes[0].origin;
        }
        if (!isdefined(print_origin)) {
            print_origin = zone.volumes[0].origin;
        }
        if (status == 2) {
            circle(print_origin, 30, (0, 1, 0));
            print3d(print_origin, function_9e72a96(name), (0, 1, 0), 1, 0.5);
            return;
        }
        if (status == 1) {
            circle(print_origin, 30, (0, 0, 1));
            print3d(print_origin, function_9e72a96(name), (0, 0, 1), 1, 0.5);
            if (isdefined(current_zone.nodes[0])) {
                print_origin = current_zone.nodes[0].origin;
            }
            if (!isdefined(print_origin)) {
                print_origin = current_zone.volumes[0].origin;
            }
            print3d(print_origin + (0, 20, offset * -1), function_9e72a96(name), (0, 0, 1), 1, 0.5);
            return;
        }
        circle(print_origin, 30, (1, 0, 0));
        print3d(print_origin, function_9e72a96(name), (1, 0, 0), 1, 0.5);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 2, eflags: 0x0
    // Checksum 0xc291a093, Offset: 0x3938
    // Size: 0x1d0
    function function_f4669d7b(zones, zone) {
        if (!isdefined(zone.volumes[0]) && !isdefined(zone.nodes[0])) {
            return;
        }
        if (isdefined(zone.nodes[0])) {
            origin = zone.nodes[0].origin;
        }
        if (!isdefined(origin)) {
            origin = zone.volumes[0].origin;
        }
        foreach (var_4c973d00, adjacent in zone.adjacent_zones) {
            adjacent_zone = zones[var_4c973d00];
            if (adjacent_zone.nodes.size && isdefined(adjacent_zone.nodes[0].origin)) {
                var_16c82636 = adjacent_zone.nodes[0].origin;
            }
            if (!isdefined(var_16c82636)) {
                var_16c82636 = adjacent_zone.volumes[0].origin;
            }
            if (adjacent.is_connected) {
                line(origin, var_16c82636, (0, 1, 0), 0, 0);
                continue;
            }
            line(origin, var_16c82636, (1, 0, 0), 0, 0);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xde8b084e, Offset: 0x3b10
    // Size: 0x142
    function zombie_pathing_validation() {
        if (!isdefined(level.zombie_spawners[0])) {
            return;
        }
        if (!isdefined(level.zombie_pathing_validation)) {
            level.zombie_pathing_validation = 1;
        }
        zombie_devgui_open_sesame();
        setdvar(#"zombie_default_max", 0);
        zombie_devgui_goto_round(20);
        wait(2);
        spawner = level.zombie_spawners[0];
        slums_station = (808, -1856, 544);
        enemy = zombie_utility::spawn_zombie(spawner, spawner.targetname);
        wait(1);
        while (isdefined(enemy) && enemy.completed_emerging_into_playable_area !== 1) {
            waitframe(1);
        }
        if (isdefined(enemy)) {
            enemy forceteleport(slums_station);
            enemy.b_ignore_cleanup = 1;
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 3, eflags: 0x0
    // Checksum 0x754f56cb, Offset: 0x3c60
    // Size: 0xf4
    function function_bcc8843e(weapon_name, up, root) {
        util::waittill_can_add_debug_command();
        rootslash = "<unknown string>";
        if (isdefined(root) && root.size) {
            rootslash = root + "<unknown string>";
        }
        uppath = "<unknown string>" + up;
        if (up.size < 1) {
            uppath = "<unknown string>";
        }
        cmd = "<unknown string>" + rootslash + weapon_name + uppath + "<unknown string>" + weapon_name + "<unknown string>";
        adddebugcommand(cmd);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 3, eflags: 0x0
    // Checksum 0x39b98ca4, Offset: 0x3d60
    // Size: 0x274
    function devgui_add_weapon_entry(weapon, root, n_order) {
        weapon_name = getweaponname(weapon);
        if (isdefined(root) && root.size) {
            adddebugcommand("<unknown string>" + root + "<unknown string>" + n_order + "<unknown string>" + weapon_name + "<unknown string>" + weapon_name + "<unknown string>");
            return;
        }
        if (getdvarint(#"zm_debug_attachments", 0)) {
            var_876795bf = weapon.supportedattachments;
            weapon_root = "<unknown string>" + weapon_name + "<unknown string>";
            adddebugcommand(weapon_root + weapon_name + "<unknown string>" + weapon_name + "<unknown string>");
            foreach (var_96bc131f in var_876795bf) {
                if (var_96bc131f != "<unknown string>" && var_96bc131f != "<unknown string>") {
                    util::waittill_can_add_debug_command();
                    var_29c3a74d = weapon_name + "<unknown string>" + var_96bc131f;
                    adddebugcommand(weapon_root + var_29c3a74d + "<unknown string>" + var_29c3a74d + "<unknown string>");
                }
            }
            return;
        }
        adddebugcommand("<unknown string>" + weapon_name + "<unknown string>" + weapon_name + "<unknown string>");
    }

    // Namespace zm_devgui/zm_devgui
    // Params 7, eflags: 0x0
    // Checksum 0xc206e3a6, Offset: 0x3fe0
    // Size: 0x18c
    function devgui_add_weapon(weapon, *upgrade, in_box, *cost, *weaponvo, *weaponvoresp, *ammo_cost) {
        level endon(#"game_ended");
        if (ammo_cost) {
            level thread function_bcc8843e(getweaponname(weaponvoresp), "<unknown string>", "<unknown string>");
        }
        util::waittill_can_add_debug_command();
        if (zm_loadout::is_offhand_weapon(weaponvoresp) && !zm_loadout::is_melee_weapon(weaponvoresp)) {
            devgui_add_weapon_entry(weaponvoresp, "<unknown string>", 2);
            return;
        }
        if (zm_loadout::is_melee_weapon(weaponvoresp)) {
            devgui_add_weapon_entry(weaponvoresp, "<unknown string>", 3);
            return;
        }
        if (zm_weapons::is_wonder_weapon(weaponvoresp)) {
            devgui_add_weapon_entry(weaponvoresp, "<unknown string>", 5);
            return;
        }
        devgui_add_weapon_entry(weaponvoresp, "<unknown string>", 6);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x3ba8b7e4, Offset: 0x4178
    // Size: 0x348
    function function_3b534f9c() {
        level.zombie_devgui_gun = getdvarstring(#"hash_1c9225f4f6e82068");
        for (;;) {
            wait(0.1);
            cmd = getdvarstring(#"hash_1c9225f4f6e82068");
            if (isdefined(cmd) && cmd.size > 0) {
                level.zombie_devgui_gun = cmd;
                players = getplayers();
                if (players.size >= 1) {
                    players[0] thread zombie_devgui_weapon_give(level.zombie_devgui_gun);
                }
                setdvar(#"hash_1c9225f4f6e82068", "<unknown string>");
            }
            wait(0.1);
            cmd = getdvarstring(#"hash_1c9228f4f6e82581");
            if (isdefined(cmd) && cmd.size > 0) {
                level.zombie_devgui_gun = cmd;
                players = getplayers();
                if (players.size >= 2) {
                    players[1] thread zombie_devgui_weapon_give(level.zombie_devgui_gun);
                }
                setdvar(#"hash_1c9228f4f6e82581", "<unknown string>");
            }
            wait(0.1);
            cmd = getdvarstring(#"hash_1c9227f4f6e823ce");
            if (isdefined(cmd) && cmd.size > 0) {
                level.zombie_devgui_gun = cmd;
                players = getplayers();
                if (players.size >= 3) {
                    players[2] thread zombie_devgui_weapon_give(level.zombie_devgui_gun);
                }
                setdvar(#"hash_1c9227f4f6e823ce", "<unknown string>");
            }
            wait(0.1);
            cmd = getdvarstring(#"hash_1c922af4f6e828e7");
            if (isdefined(cmd) && cmd.size > 0) {
                level.zombie_devgui_gun = cmd;
                players = getplayers();
                if (players.size >= 4) {
                    players[3] thread zombie_devgui_weapon_give(level.zombie_devgui_gun);
                }
                setdvar(#"hash_1c922af4f6e828e7", "<unknown string>");
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x91fd8ec3, Offset: 0x44c8
    // Size: 0xf0
    function zombie_weapon_devgui_think() {
        level.zombie_devgui_gun = getdvarstring(#"zombie_devgui_gun");
        for (;;) {
            wait(0.25);
            cmd = getdvarstring(#"zombie_devgui_gun");
            if (isdefined(cmd) && cmd.size > 0) {
                level.zombie_devgui_gun = cmd;
                array::thread_all(getplayers(), &zombie_devgui_weapon_give, level.zombie_devgui_gun);
                setdvar(#"zombie_devgui_gun", "<unknown string>");
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x27eaca71, Offset: 0x45c0
    // Size: 0x214
    function zombie_devgui_weapon_give(weapon_name) {
        split = strtok(function_9e72a96(weapon_name), "<unknown string>");
        switch (split.size) {
        case 1:
        default:
            weapon = getweapon(split[0]);
            break;
        case 2:
            weapon = getweapon(split[0], split[1]);
            break;
        case 3:
            weapon = getweapon(split[0], split[1], split[2]);
            break;
        case 4:
            weapon = getweapon(split[0], split[1], split[2], split[3]);
            break;
        case 5:
            weapon = getweapon(split[0], split[1], split[2], split[3], split[4]);
            break;
        }
        if (zm_loadout::is_melee_weapon(weapon) && isdefined(zm_melee_weapon::find_melee_weapon(weapon))) {
            self zm_melee_weapon::award_melee_weapon(weapon_name);
            return;
        }
        self function_2d4d7fd9(weapon);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x9b2e1dcf, Offset: 0x47e0
    // Size: 0x74
    function function_2d4d7fd9(weapon) {
        if (self hasweapon(weapon, 1)) {
            self zm_weapons::weapon_take(weapon);
        }
        self thread function_bb54e671(weapon);
        self zm_weapons::weapon_give(weapon);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x10a589b9, Offset: 0x4860
    // Size: 0x184
    function function_bb54e671(weapon) {
        self notify(#"hash_7c6363440c125d8b");
        self endon(#"disconnect", #"hash_7c6363440c125d8b");
        if (!isdefined(self.var_8d5839f4)) {
            self.var_8d5839f4 = [];
        } else if (!isarray(self.var_8d5839f4)) {
            self.var_8d5839f4 = array(self.var_8d5839f4);
        }
        self.var_8d5839f4[self.var_8d5839f4.size] = weapon;
        while (true) {
            self waittill(#"weapon_change_complete");
            foreach (weapon in arraycopy(self.var_8d5839f4)) {
                if (!self hasweapon(weapon)) {
                    arrayremovevalue(self.var_8d5839f4, weapon);
                }
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 5, eflags: 0x0
    // Checksum 0x92fc383a, Offset: 0x49f0
    // Size: 0x164
    function devgui_add_ability(name, *upgrade_active_func, *stat_name, *stat_desired_value, *game_end_reset_if_not_achieved) {
        online_game = sessionmodeisonlinegame();
        if (!online_game) {
            return;
        }
        if (!is_true(level.devgui_watch_abilities)) {
            cmd = "<unknown string>";
            adddebugcommand(cmd);
            cmd = "<unknown string>";
            adddebugcommand(cmd);
            level thread zombie_ability_devgui_think();
            level.devgui_watch_abilities = 1;
        }
        cmd = "<unknown string>" + game_end_reset_if_not_achieved + "<unknown string>" + game_end_reset_if_not_achieved + "<unknown string>";
        adddebugcommand(cmd);
        cmd = "<unknown string>" + game_end_reset_if_not_achieved + "<unknown string>" + game_end_reset_if_not_achieved + "<unknown string>";
        adddebugcommand(cmd);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x390b3fd1, Offset: 0x4b60
    // Size: 0x10
    function zombie_devgui_ability_give(*name) {
        
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x6ba0736e, Offset: 0x4b78
    // Size: 0x10
    function zombie_devgui_ability_take(*name) {
        
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x6119170e, Offset: 0x4b90
    // Size: 0x200
    function zombie_ability_devgui_think() {
        level.zombie_devgui_give_ability = getdvarstring(#"zombie_devgui_give_ability");
        level.zombie_devgui_take_ability = getdvarstring(#"zombie_devgui_take_ability");
        for (;;) {
            wait(0.25);
            cmd = getdvarstring(#"zombie_devgui_give_ability");
            if (!isdefined(level.zombie_devgui_give_ability) || level.zombie_devgui_give_ability != cmd) {
                if (cmd == "<unknown string>") {
                    level flag::set("<unknown string>");
                } else if (cmd == "<unknown string>") {
                    level flag::clear("<unknown string>");
                } else {
                    level.zombie_devgui_give_ability = cmd;
                    array::thread_all(getplayers(), &zombie_devgui_ability_give, level.zombie_devgui_give_ability);
                }
            }
            wait(0.25);
            cmd = getdvarstring(#"zombie_devgui_take_ability");
            if (!isdefined(level.zombie_devgui_take_ability) || level.zombie_devgui_take_ability != cmd) {
                level.zombie_devgui_take_ability = cmd;
                array::thread_all(getplayers(), &zombie_devgui_ability_take, level.zombie_devgui_take_ability);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 2, eflags: 0x0
    // Checksum 0x6928deaf, Offset: 0x4d98
    // Size: 0xec
    function zombie_healthbar(pos, dsquared) {
        if (distancesquared(pos, self.origin) > dsquared) {
            return;
        }
        rate = 1;
        if (isdefined(self.maxhealth)) {
            rate = self.health / self.maxhealth;
        }
        color = (1 - rate, rate, 0);
        text = "<unknown string>" + int(self.health);
        print3d(self.origin + (0, 0, 0), text, color, 1, 0.5, 1);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xd726463c, Offset: 0x4e90
    // Size: 0x13a
    function devgui_zombie_healthbar() {
        while (true) {
            if (getdvarint(#"scr_zombie_healthbars", 0) == 1) {
                e_player = getplayers()[0];
                if (isalive(e_player)) {
                    a_ai_zombies = getaispeciesarray("<unknown string>", "<unknown string>");
                    foreach (ai_zombie in a_ai_zombies) {
                        ai_zombie zombie_healthbar(e_player.origin, 360000);
                    }
                }
            }
            waitframe(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x7eb04f9c, Offset: 0x4fd8
    // Size: 0x7c
    function zombie_devgui_watch_input() {
        level flag::wait_till("<unknown string>");
        wait(1);
        players = getplayers();
        for (i = 0; i < players.size; i++) {
            players[i] thread watch_debug_input();
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x13f3fa82, Offset: 0x5060
    // Size: 0x5c
    function damage_player() {
        self val::set(#"damage_player", "<unknown string>", 1);
        self dodamage(self.health / 2, self.origin);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x9aa40eb5, Offset: 0x50c8
    // Size: 0xb4
    function kill_player() {
        self val::set(#"kill_player", "<unknown string>", 1);
        death_from = (randomfloatrange(-20, 20), randomfloatrange(-20, 20), randomfloatrange(-20, 20));
        self dodamage(self.health + 666, self.origin + death_from);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xbee6a250, Offset: 0x5188
    // Size: 0x6c
    function force_drink() {
        wait(0.01);
        build_weapon = getweapon(#"zombie_builder");
        self thread gestures::function_f3e2696f(self, build_weapon, undefined, 2.5, undefined, undefined, undefined);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x42a371aa, Offset: 0x5200
    // Size: 0x1c
    function zombie_devgui_dpad_none() {
        self thread watch_debug_input();
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xcc142846, Offset: 0x5228
    // Size: 0x2c
    function zombie_devgui_dpad_death() {
        self thread watch_debug_input(&kill_player);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x9cbb913f, Offset: 0x5260
    // Size: 0x2c
    function zombie_devgui_dpad_damage() {
        self thread watch_debug_input(&damage_player);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x9a051dd8, Offset: 0x5298
    // Size: 0x2c
    function zombie_devgui_dpad_changeweapon() {
        self thread watch_debug_input(&force_drink);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x9821d6f2, Offset: 0x52d0
    // Size: 0xc2
    function watch_debug_input(callback) {
        self endon(#"disconnect");
        self notify(#"watch_debug_input");
        self endon(#"watch_debug_input");
        level.devgui_dpad_watch = 0;
        if (isdefined(callback)) {
            level.devgui_dpad_watch = 1;
            for (;;) {
                if (self actionslottwobuttonpressed()) {
                    self thread [[ callback ]]();
                    while (self actionslottwobuttonpressed()) {
                        waitframe(1);
                    }
                }
                waitframe(1);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xa49594e5, Offset: 0x53a0
    // Size: 0x2f00
    function zombie_devgui_think() {
        level notify(#"zombie_devgui_think");
        level endon(#"zombie_devgui_think");
        for (;;) {
            cmd = getdvarstring(#"zombie_devgui");
            switch (cmd) {
            case #"money":
                players = getplayers();
                array::thread_all(players, &zombie_devgui_give_money);
                break;
            case #"scrap":
                players = getplayers();
                array::thread_all(players, &function_6de15bb7);
                break;
            case #"player1_money":
                players = getplayers();
                if (players.size >= 1) {
                    players[0] thread zombie_devgui_give_money();
                }
                break;
            case #"player2_money":
                players = getplayers();
                if (players.size >= 2) {
                    players[1] thread zombie_devgui_give_money();
                }
                break;
            case #"player3_money":
                players = getplayers();
                if (players.size >= 3) {
                    players[2] thread zombie_devgui_give_money();
                }
                break;
            case #"player4_money":
                players = getplayers();
                if (players.size >= 4) {
                    players[3] thread zombie_devgui_give_money();
                }
                break;
            case #"moneydown":
                players = getplayers();
                array::thread_all(players, &zombie_devgui_take_money);
                break;
            case #"player1_moneydown":
                players = getplayers();
                if (players.size >= 1) {
                    players[0] thread zombie_devgui_take_money();
                }
                break;
            case #"player2_moneydown":
                players = getplayers();
                if (players.size >= 2) {
                    players[1] thread zombie_devgui_take_money();
                }
                break;
            case #"player3_moneydown":
                players = getplayers();
                if (players.size >= 3) {
                    players[2] thread zombie_devgui_take_money();
                }
                break;
            case #"player4_moneydown":
                players = getplayers();
                if (players.size >= 4) {
                    players[3] thread zombie_devgui_take_money();
                }
                break;
            case #"ammodown":
                players = getplayers();
                array::thread_all(players, &function_dc7312be);
                break;
            case #"hash_428dbd0a89fc5d32":
                players = getplayers();
                if (players.size >= 1) {
                    players[0] thread function_dc7312be();
                }
                break;
            case #"hash_119220b211e16ba9":
                players = getplayers();
                if (players.size >= 2) {
                    players[1] thread function_dc7312be();
                }
                break;
            case #"hash_6cdf097974c7bcd0":
                players = getplayers();
                if (players.size >= 3) {
                    players[2] thread function_dc7312be();
                }
                break;
            case #"hash_5e281497ef267e37":
                players = getplayers();
                if (players.size >= 4) {
                    players[3] thread function_dc7312be();
                }
                break;
            case #"hash_59a96f9816430398":
                players = getplayers();
                if (players.size >= 1) {
                    players[0] thread zombie_devgui_give_xp(1000);
                }
                break;
            case #"hash_423b4f1fbe6391dd":
                players = getplayers();
                if (players.size >= 2) {
                    players[1] thread zombie_devgui_give_xp(1000);
                }
                break;
            case #"hash_50580bf75ed9e65e":
                players = getplayers();
                if (players.size >= 3) {
                    players[2] thread zombie_devgui_give_xp(1000);
                }
                break;
            case #"hash_4e18caaf131ec443":
                players = getplayers();
                if (players.size >= 4) {
                    players[3] thread zombie_devgui_give_xp(1000);
                }
                break;
            case #"hash_1dec476dd3df3678":
                players = getplayers();
                if (players.size >= 1) {
                    players[0] thread zombie_devgui_give_xp(10000);
                }
                break;
            case #"hash_6e595ff08330f5b7":
                players = getplayers();
                if (players.size >= 2) {
                    players[1] thread zombie_devgui_give_xp(10000);
                }
                break;
            case #"hash_5f82c3562c428cea":
                players = getplayers();
                if (players.size >= 3) {
                    players[2] thread zombie_devgui_give_xp(10000);
                }
                break;
            case #"hash_52e4da7d7d47cf69":
                players = getplayers();
                if (players.size >= 4) {
                    players[3] thread zombie_devgui_give_xp(10000);
                }
                break;
            case #"health":
                array::thread_all(getplayers(), &zombie_devgui_give_health);
                break;
            case #"player1_health":
                players = getplayers();
                if (players.size >= 1) {
                    players[0] thread zombie_devgui_give_health();
                }
                break;
            case #"player2_health":
                players = getplayers();
                if (players.size >= 2) {
                    players[1] thread zombie_devgui_give_health();
                }
                break;
            case #"player3_health":
                players = getplayers();
                if (players.size >= 3) {
                    players[2] thread zombie_devgui_give_health();
                }
                break;
            case #"player4_health":
                players = getplayers();
                if (players.size >= 4) {
                    players[3] thread zombie_devgui_give_health();
                }
                break;
            case #"minhealth":
                array::thread_all(getplayers(), &zombie_devgui_low_health);
                break;
            case #"player1_minhealth":
                players = getplayers();
                if (players.size >= 1) {
                    players[0] thread zombie_devgui_low_health();
                }
                break;
            case #"player2_minhealth":
                players = getplayers();
                if (players.size >= 2) {
                    players[1] thread zombie_devgui_low_health();
                }
                break;
            case #"player3_minhealth":
                players = getplayers();
                if (players.size >= 3) {
                    players[2] thread zombie_devgui_low_health();
                }
                break;
            case #"player4_minhealth":
                players = getplayers();
                if (players.size >= 4) {
                    players[3] thread zombie_devgui_low_health();
                }
                break;
            case #"ammo":
                array::thread_all(getplayers(), &zombie_devgui_toggle_ammo);
                break;
            case #"ignore":
                array::thread_all(getplayers(), &zombie_devgui_toggle_ignore);
                break;
            case #"player1_ignore":
                players = getplayers();
                if (players.size >= 1) {
                    players[0] thread zombie_devgui_toggle_ignore();
                }
                break;
            case #"player2_ignore":
                players = getplayers();
                if (players.size >= 2) {
                    players[1] thread zombie_devgui_toggle_ignore();
                }
                break;
            case #"player3_ignore":
                players = getplayers();
                if (players.size >= 3) {
                    players[2] thread zombie_devgui_toggle_ignore();
                }
                break;
            case #"player4_ignore":
                players = getplayers();
                if (players.size >= 4) {
                    players[3] thread zombie_devgui_toggle_ignore();
                }
                break;
            case #"invul_on":
                zombie_devgui_invulnerable(undefined, 1);
                break;
            case #"invul_off":
                zombie_devgui_invulnerable(undefined, 0);
                break;
            case #"player1_invul_on":
                zombie_devgui_invulnerable(0, 1);
                break;
            case #"player1_invul_off":
                zombie_devgui_invulnerable(0, 0);
                break;
            case #"player2_invul_on":
                zombie_devgui_invulnerable(1, 1);
                break;
            case #"player2_invul_off":
                zombie_devgui_invulnerable(1, 0);
                break;
            case #"player3_invul_on":
                zombie_devgui_invulnerable(2, 1);
                break;
            case #"player3_invul_off":
                zombie_devgui_invulnerable(2, 0);
                break;
            case #"player4_invul_on":
                zombie_devgui_invulnerable(3, 1);
                break;
            case #"player4_invul_off":
                zombie_devgui_invulnerable(3, 0);
                break;
            case #"revive_all":
                array::thread_all(getplayers(), &zombie_devgui_revive);
                break;
            case #"player1_revive":
                players = getplayers();
                if (players.size >= 1) {
                    players[0] thread zombie_devgui_revive();
                }
                break;
            case #"player2_revive":
                players = getplayers();
                if (players.size >= 2) {
                    players[1] thread zombie_devgui_revive();
                }
                break;
            case #"player3_revive":
                players = getplayers();
                if (players.size >= 3) {
                    players[2] thread zombie_devgui_revive();
                }
                break;
            case #"player4_revive":
                players = getplayers();
                if (players.size >= 4) {
                    players[3] thread zombie_devgui_revive();
                }
                break;
            case #"player1_kill":
                players = getplayers();
                if (players.size >= 1) {
                    players[0] thread zombie_devgui_kill();
                }
                break;
            case #"player2_kill":
                players = getplayers();
                if (players.size >= 2) {
                    players[1] thread zombie_devgui_kill();
                }
                break;
            case #"player3_kill":
                players = getplayers();
                if (players.size >= 3) {
                    players[2] thread zombie_devgui_kill();
                }
                break;
            case #"player4_kill":
                players = getplayers();
                if (players.size >= 4) {
                    players[3] thread zombie_devgui_kill();
                }
                break;
            case #"hash_7f4d70c7ded8e94a":
                if (zm_utility::get_story() === 2) {
                    array::random(getplayers()) giveweapon(getweapon(#"homunculus"));
                }
                array::thread_all(getplayers(), &function_8d799ebd);
                break;
            case #"hash_505efa1825e2cb99":
                players = getplayers();
                if (players.size >= 1) {
                    players[0] thread function_8d799ebd();
                }
                break;
            case #"hash_15233852e3dc3500":
                players = getplayers();
                if (players.size >= 2) {
                    players[1] thread function_8d799ebd();
                }
                break;
            case #"hash_5cb5edc4858d92f7":
                players = getplayers();
                if (players.size >= 3) {
                    players[2] thread function_8d799ebd();
                }
                break;
            case #"hash_6d57ff86c541a5fe":
                players = getplayers();
                if (players.size >= 4) {
                    players[3] thread function_8d799ebd();
                }
                break;
            case #"hash_2c320318aed843b2":
                array::thread_all(getplayers(), &zm_laststand::function_3d685b5f, 100);
                break;
            case #"hash_72783b08840a3ab7":
                players = getplayers();
                if (players.size >= 1) {
                    players[0] thread zm_laststand::function_3d685b5f(100);
                }
                break;
            case #"hash_447712ef48d6ea0":
                players = getplayers();
                if (players.size >= 2) {
                    players[1] thread zm_laststand::function_3d685b5f(100);
                }
                break;
            case #"hash_2a15f60adbba0cf5":
                players = getplayers();
                if (players.size >= 3) {
                    players[2] thread zm_laststand::function_3d685b5f(100);
                }
                break;
            case #"hash_430eb4715f49a5fe":
                players = getplayers();
                if (players.size >= 4) {
                    players[3] thread zm_laststand::function_3d685b5f(100);
                }
                break;
            case #"hash_7f98b3dd3cce95aa":
                level.solo_lives_given = 0;
            case #"specialty_electriccherry":
            case #"hash_4110e6372aa77f7e":
            case #"hash_602a1b6107105f07":
            case #"hash_210097a75bb6c49a":
            case #"specialty_phdflopper":
            case #"specialty_fastmeleerecovery":
            case #"specialty_widowswine":
            case #"specialty_vultureaid":
            case #"specialty_showonradar":
            case #"hash_38c08136902fd553":
            case #"specialty_additionalprimaryweapon":
                zombie_devgui_give_perk(cmd);
                break;
            case #"remove_perks":
                zombie_devgui_take_perks(cmd);
                break;
            case #"insta_kill":
            case #"lose_points_team":
            case #"hash_6e53cf6d1c583d31":
            case #"naughty_or_nice":
            case #"hash_75498ace109f55e9":
            case #"hero_weapon_power":
            case #"double_points":
            case #"minigun":
            case #"carpenter":
            case #"zmarcade_key":
            case #"free_perk":
            case #"extra_lives":
            case #"tesla":
            case #"cranked_pause":
            case #"pack_a_punch":
            case #"bonus_points_player":
            case #"lose_perk":
            case #"hash_3a780f4f7b791f2c":
            case #"meat_stink":
            case #"hash_55b98b6e24a3e48e":
            case #"full_ammo":
            case #"empty_clip":
            case #"bonus_points_team":
            case #"random_weapon":
            case #"nuke":
            case #"fire_sale":
            case #"bonfire_sale":
                zombie_devgui_give_powerup(cmd, 1);
                break;
            case #"next_extra_lives":
            case #"next_random_weapon":
            case #"next_full_ammo":
            case #"next_lose_perk":
            case #"hash_6b6c14b0d315d68f":
            case #"next_zmarcade_key":
            case #"hash_49f2171f2a5b4c28":
            case #"next_nuke":
            case #"next_fire_sale":
            case #"next_bonus_points_team":
            case #"next_lose_points_team":
            case #"next_free_perk":
            case #"next_bonus_points_player":
            case #"next_bonfire_sale":
            case #"next_minigun":
            case #"next_empty_clip":
            case #"next_double_points":
            case #"next_pack_a_punch":
            case #"next_insta_kill":
            case #"next_tesla":
            case #"next_carpenter":
            case #"next_hero_weapon_power":
            case #"next_meat_stink":
                zombie_devgui_give_powerup(getsubstr(cmd, 5), 0);
                break;
            case #"round":
                zombie_devgui_goto_round(getdvarint(#"scr_zombie_round", 0));
                break;
            case #"round_next":
                zombie_devgui_goto_round(level.round_number + 1);
                break;
            case #"round_prev":
                zombie_devgui_goto_round(level.round_number - 1);
                break;
            case #"chest_warp":
                array::thread_all(getplayers(), &function_4bb7eb36);
                break;
            case #"pap_warp":
                array::thread_all(getplayers(), &function_84f0a909);
                break;
            case #"chest_move":
                if (isdefined(level.chest_accessed)) {
                    level notify(#"devgui_chest_end_monitor");
                    level.var_401aaa92 = 1;
                }
                break;
            case #"chest_never_move":
                if (isdefined(level.chest_accessed)) {
                    level.var_401aaa92 = 0;
                    level thread zombie_devgui_chest_never_move();
                }
                break;
            case #"chest":
                if (isdefined(level.zombie_weapons[getweapon(getdvarstring(#"scr_force_weapon"))])) {
                    if (isdefined(level.zombie_weapons[getweapon(getdvarstring(#"scr_force_weapon"))].item_entry)) {
                        level.var_f83c8dc2 = level.zombie_weapons[getweapon(getdvarstring(#"scr_force_weapon"))].item_entry;
                    }
                }
                break;
            case #"give_claymores":
                array::thread_all(getplayers(), &zombie_devgui_give_placeable_mine, getweapon(#"claymore"));
                break;
            case #"give_bouncingbetties":
                array::thread_all(getplayers(), &zombie_devgui_give_placeable_mine, getweapon(#"bouncingbetty"));
                break;
            case #"give_frags":
                array::thread_all(getplayers(), &zombie_devgui_give_frags);
                break;
            case #"give_sticky":
                array::thread_all(getplayers(), &zombie_devgui_give_sticky);
                break;
            case #"give_monkey":
                array::thread_all(getplayers(), &zombie_devgui_give_monkey);
                break;
            case #"give_bhb":
                array::thread_all(getplayers(), &zombie_devgui_give_bhb);
                break;
            case #"give_quantum":
                array::thread_all(getplayers(), &zombie_devgui_give_qed);
                break;
            case #"give_dolls":
                array::thread_all(getplayers(), &zombie_devgui_give_dolls);
                break;
            case #"give_emp_bomb":
                array::thread_all(getplayers(), &zombie_devgui_give_emp_bomb);
                break;
            case #"dog_round":
                zombie_devgui_dog_round(1);
                break;
            case #"dog_round_skip":
                zombie_devgui_dog_round_skip();
                break;
            case #"print_variables":
                zombie_devgui_dump_zombie_vars();
                break;
            case #"pack_current_weapon":
                zombie_devgui_pack_current_weapon();
                break;
            case #"hash_f9c9f7dd75a4047":
                function_8c9f2dea();
                break;
            case #"hash_5605531ad17b5408":
                function_b7ef4b8();
                break;
            case #"hash_2dde14d5c2960aea":
                function_9b4d61fa();
                break;
            case #"hash_465e01a5b9f4f28e":
                function_cdc3d061();
                break;
            case #"hash_26abd478093a24d0":
                zombie_devgui_repack_current_weapon();
                break;
            case #"unpack_current_weapon":
                zombie_devgui_unpack_current_weapon();
                break;
            case #"hash_72edcaf35bf3346d":
                function_2a5ce9b1(#"white");
                break;
            case #"hash_62c70a71f6331428":
                function_2a5ce9b1(#"green");
                break;
            case #"hash_7067e48773d50cbe":
                function_2a5ce9b1(#"blue");
                break;
            case #"hash_309cf17674ed6d45":
                function_2a5ce9b1(#"purple");
                break;
            case #"hash_166a522b8358b72b":
                function_2a5ce9b1(#"orange");
                break;
            case #"hash_3c2b067b1510118c":
                function_c8949116();
                break;
            case #"hash_769c6d03952dd107":
                function_9d21f44b();
                break;
            case #"hash_68e9afed4aa9c0dd":
                function_e2a97bab();
                break;
            case #"hash_3f4888627ed06269":
                function_1a560cfc();
                break;
            case #"hash_73ecd8731ecdf6b0":
                function_c8ee84ba();
                break;
            case #"hash_49563ad3930e97e4":
                function_c83c6fa();
                break;
            case #"reopt_current_weapon":
                zombie_devgui_reopt_current_weapon();
                break;
            case #"weapon_take_all_fallback":
                zombie_devgui_take_weapons(1);
                break;
            case #"weapon_take_all":
                zombie_devgui_take_weapons(0);
                break;
            case #"weapon_take_current":
                zombie_devgui_take_weapon();
                break;
            case #"power_on":
                level flag::set("<unknown string>");
                level clientfield::set("<unknown string>", 1);
                power_trigs = getentarray("<unknown string>", "<unknown string>");
                foreach (trig in power_trigs) {
                    if (isdefined(trig.script_int)) {
                        level flag::set("<unknown string>" + trig.script_int);
                        level clientfield::set("<unknown string>", trig.script_int + 1);
                    }
                }
                break;
            case #"power_off":
                level flag::clear("<unknown string>");
                level clientfield::set("<unknown string>", 0);
                power_trigs = getentarray("<unknown string>", "<unknown string>");
                foreach (trig in power_trigs) {
                    if (isdefined(trig.script_int)) {
                        level flag::clear("<unknown string>" + trig.script_int);
                        level clientfield::set("<unknown string>", trig.script_int);
                    }
                }
                break;
            case #"zombie_dpad_none":
                array::thread_all(getplayers(), &zombie_devgui_dpad_none);
                break;
            case #"zombie_dpad_damage":
                array::thread_all(getplayers(), &zombie_devgui_dpad_damage);
                break;
            case #"zombie_dpad_kill":
                array::thread_all(getplayers(), &zombie_devgui_dpad_death);
                break;
            case #"zombie_dpad_drink":
                array::thread_all(getplayers(), &zombie_devgui_dpad_changeweapon);
                break;
            case #"director_easy":
                zombie_devgui_director_easy();
                break;
            case #"open_sesame":
                zombie_devgui_open_sesame();
                break;
            case #"allow_fog":
                zombie_devgui_allow_fog();
                break;
            case #"disable_kill_thread_toggle":
                zombie_devgui_disable_kill_thread_toggle();
                break;
            case #"check_kill_thread_every_frame_toggle":
                zombie_devgui_check_kill_thread_every_frame_toggle();
                break;
            case #"kill_thread_test_mode_toggle":
                zombie_devgui_kill_thread_test_mode_toggle();
                break;
            case #"zombie_failsafe_debug_flush":
                level notify(#"zombie_failsafe_debug_flush");
                break;
            case #"rat_navmesh":
                level thread rat::derriesezombiespawnnavmeshtest(0, 0);
                break;
            case #"spawn":
                devgui_zombie_spawn();
                break;
            case #"spawn_dummy":
                function_6f066ef();
                break;
            case #"spawn_near":
                function_7c17d00f();
                break;
            case #"spawn_all":
                devgui_all_spawn();
                break;
            case #"crawler":
                devgui_make_crawler();
                break;
            case #"toggle_show_spawn_locations":
                devgui_toggle_show_spawn_locations();
                break;
            case #"toggle_show_exterior_goals":
                devgui_toggle_show_exterior_goals();
                break;
            case #"draw_traversals":
                zombie_devgui_draw_traversals();
                break;
            case #"dump_traversals":
                function_bbeaa2da();
                break;
            case #"debug_hud":
                array::thread_all(getplayers(), &devgui_debug_hud);
                break;
            case #"reverse_carpenter":
                function_f12b8a34();
                break;
            case #"keyline_always":
                zombie_devgui_keyline_always();
                break;
            case #"hash_1e51dfcdbebdf936":
                robotsupportsovercover_manager_();
                break;
            case #"debug_counts":
                function_92523b12();
                break;
            case #"hash_604a84ea1690f781":
                thread function_3a5618f8();
                break;
            case #"hash_72a10718318ec7ff":
                function_21f1fbf1();
                break;
            case #"debug_navmesh_zone":
                function_e395a714();
                break;
            case #"hash_28fd3c9a92f22718":
                function_5349e112();
                break;
            case #"hash_7fafc507d5398c0b":
                function_567ee21f();
                break;
            case #"hash_3ede275f03a4aa2b":
                function_1762ff96();
                break;
            case #"hash_74f6277a8a40911e":
                function_e5713258();
                break;
            case #"hash_3d647b897ae5dca6":
                function_f298dd5c();
                break;
            case #"hash_3f826ccc785705ba":
                function_26417ea7();
                break;
            case #"hash_683b625d2ace3726":
                function_fb88b423();
                break;
            case #"hash_3f9e70ff9f34194a":
                function_1b531660();
                break;
            case #"hash_7883eb109c3e6a94":
                array::thread_all(function_a1ef346b(), &function_1bb72156);
                break;
            case #"draw_wallbuy":
                function_2f0c6f91();
                break;
            case #"hash_320b004253fe00b8":
                function_1a4752d0();
                break;
            case 0:
                break;
            default:
                if (isdefined(level.custom_devgui)) {
                    if (isarray(level.custom_devgui)) {
                        foreach (devgui in level.custom_devgui) {
                            b_result = [[ devgui ]](cmd);
                            if (is_true(b_result)) {
                                break;
                            }
                        }
                    } else {
                        [[ level.custom_devgui ]](cmd);
                    }
                }
                break;
            }
            setdvar(#"zombie_devgui", "<unknown string>");
            wait(0.5);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x34c3c9f9, Offset: 0x82a8
    // Size: 0x170
    function add_custom_devgui_callback(callback) {
        if (isdefined(level.custom_devgui)) {
            if (!isarray(level.custom_devgui)) {
                cdgui = level.custom_devgui;
                level.custom_devgui = [];
                if (!isdefined(level.custom_devgui)) {
                    level.custom_devgui = [];
                } else if (!isarray(level.custom_devgui)) {
                    level.custom_devgui = array(level.custom_devgui);
                }
                level.custom_devgui[level.custom_devgui.size] = cdgui;
            }
        } else {
            level.custom_devgui = [];
        }
        if (!isdefined(level.custom_devgui)) {
            level.custom_devgui = [];
        } else if (!isarray(level.custom_devgui)) {
            level.custom_devgui = array(level.custom_devgui);
        }
        level.custom_devgui[level.custom_devgui.size] = callback;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x913c0b3b, Offset: 0x8420
    // Size: 0x84
    function devgui_all_spawn() {
        player = util::gethostplayer();
        for (i = 0; i < 3; i++) {
            bot::add_bot(player.team);
            wait(0.1);
        }
        zombie_devgui_goto_round(8);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x13cb598, Offset: 0x84b0
    // Size: 0x44
    function devgui_toggle_show_spawn_locations() {
        if (!isdefined(level.toggle_show_spawn_locations)) {
            level.toggle_show_spawn_locations = 1;
            return;
        }
        level.toggle_show_spawn_locations = !level.toggle_show_spawn_locations;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xfbbaa7f8, Offset: 0x8500
    // Size: 0x44
    function devgui_toggle_show_exterior_goals() {
        if (!isdefined(level.toggle_show_exterior_goals)) {
            level.toggle_show_exterior_goals = 1;
            return;
        }
        level.toggle_show_exterior_goals = !level.toggle_show_exterior_goals;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x6b6ae095, Offset: 0x8550
    // Size: 0x290
    function function_567ee21f() {
        level.var_377c39e4 = !is_true(level.var_377c39e4);
        if (level.var_377c39e4) {
            foreach (player in level.players) {
                player setclientplayerpushamount(1);
            }
            foreach (ai in getaiteamarray(#"axis")) {
                ai pushplayer(1);
            }
            return;
        }
        foreach (player in level.players) {
            player setclientplayerpushamount(0);
        }
        foreach (ai in getaiteamarray(#"axis")) {
            ai pushplayer(0);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x34f75f7d, Offset: 0x87e8
    // Size: 0xa
    function function_9960be00() {
                return;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 4, eflags: 0x0
    // Checksum 0x9ee34208, Offset: 0x8800
    // Size: 0x54
    function function_33825850(spawner, target_name, *spot, *round_number) {
        guy = spot spawnfromspawner(round_number, 1);
        return guy;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x3c82b41f, Offset: 0x8860
    // Size: 0x27a
    function devgui_zombie_spawn() {
        player = getplayers()[0];
        spawnername = undefined;
        spawnername = "<unknown string>";
        direction = player getplayerangles();
        direction_vec = anglestoforward(direction);
        eye = player geteye();
        scale = 8000;
        direction_vec = (direction_vec[0] * scale, direction_vec[1] * scale, direction_vec[2] * scale);
        trace = bullettrace(eye, eye + direction_vec, 0, undefined);
        guy = undefined;
        if (isdefined(level.fn_custom_zombie_spawner_selection)) {
            spawner = [[ level.fn_custom_zombie_spawner_selection ]]();
        } else {
            spawners = getentarray(spawnername, "<unknown string>");
            spawner = array::random(spawners);
        }
        var_f4dd97fd = spawner.script_forcespawn;
        spawner.script_forcespawn = 1;
        var_9e1082b2 = level.overridezombiespawn;
        level.overridezombiespawn = &function_33825850;
        guy = zombie_utility::spawn_zombie(spawner, "<unknown string>");
        level.overridezombiespawn = var_9e1082b2;
        spawner.script_forcespawn = var_f4dd97fd;
        if (isdefined(guy)) {
            guy.script_string = "<unknown string>";
            guy dontinterpolate();
            guy forceteleport(trace[#"position"], player.angles + (0, 180, 0));
        }
        return guy;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xb5075516, Offset: 0x8ae8
    // Size: 0xdc
    function function_6f066ef() {
        player = getplayers()[0];
        forward = anglestoforward(player.angles);
        spawn = player.origin + forward * 25;
        guy = devgui_zombie_spawn();
        if (isdefined(guy)) {
            waitframe(1);
            guy pathmode("<unknown string>");
            guy forceteleport(spawn, player.angles);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x2b881195, Offset: 0x8bd0
    // Size: 0xc4
    function function_7c17d00f() {
        player = getplayers()[0];
        forward = anglestoforward(player.angles);
        spawn = player.origin + forward * 100;
        guy = devgui_zombie_spawn();
        if (isdefined(guy)) {
            guy forceteleport(spawn, player.angles + (0, 180, 0));
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xd6541bba, Offset: 0x8ca0
    // Size: 0x1d8
    function devgui_make_crawler() {
        zombies = zombie_utility::get_round_enemy_array();
        foreach (zombie in zombies) {
            gib_style = [];
            gib_style[gib_style.size] = "<unknown string>";
            gib_style[gib_style.size] = "<unknown string>";
            gib_style[gib_style.size] = "<unknown string>";
            gib_style = array::randomize(gib_style);
            zombie.a.gib_ref = gib_style[0];
            zombie zombie_utility::function_df5afb5e(1);
            zombie allowedstances("<unknown string>");
            zombie setphysparams(15, 0, 24);
            zombie allowpitchangle(1);
            zombie setpitchorient();
            health = zombie.health;
            health *= 0.1;
            zombie thread zombie_death::do_gib();
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x5266d5e7, Offset: 0x8e80
    // Size: 0x3b4
    function zombie_devgui_open_sesame() {
        setdvar(#"zombie_unlock_all", 1);
        level flag::set("<unknown string>");
        level clientfield::set("<unknown string>", 1);
        power_trigs = getentarray("<unknown string>", "<unknown string>");
        foreach (trig in power_trigs) {
            if (isdefined(trig.script_int)) {
                level flag::set("<unknown string>" + trig.script_int);
                level clientfield::set("<unknown string>", trig.script_int + 1);
            }
        }
        players = getplayers();
        array::thread_all(players, &zombie_devgui_give_money);
        zombie_doors = getentarray("<unknown string>", "<unknown string>");
        for (i = 0; i < zombie_doors.size; i++) {
            if (!is_true(zombie_doors[i].has_been_opened)) {
                zombie_doors[i] notify(#"trigger", {#activator:players[0]});
            }
            if (is_true(zombie_doors[i].power_door_ignore_flag_wait)) {
                zombie_doors[i] notify(#"power_on");
            }
            waitframe(1);
        }
        zombie_airlock_doors = getentarray("<unknown string>", "<unknown string>");
        for (i = 0; i < zombie_airlock_doors.size; i++) {
            zombie_airlock_doors[i] notify(#"trigger", {#activator:players[0]});
            waitframe(1);
        }
        zombie_debris = getentarray("<unknown string>", "<unknown string>");
        for (i = 0; i < zombie_debris.size; i++) {
            if (isdefined(zombie_debris[i])) {
                zombie_debris[i] notify(#"trigger", {#activator:players[0]});
            }
            waitframe(1);
        }
        level notify(#"open_sesame");
        wait(1);
        setdvar(#"zombie_unlock_all", 0);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xb00c541d, Offset: 0x9240
    // Size: 0xb4
    function any_player_in_noclip() {
        foreach (player in getplayers()) {
            if (player isinmovemode("<unknown string>", "<unknown string>")) {
                return 1;
            }
        }
        return 0;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xc2dd2e5b, Offset: 0x9300
    // Size: 0x168
    function diable_fog_in_noclip() {
        level.fog_disabled_in_noclip = 1;
        level endon(#"allowfoginnoclip");
        level flag::wait_till("<unknown string>");
        while (true) {
            while (!any_player_in_noclip()) {
                wait(1);
            }
            setdvar(#"scr_fog_disable", 1);
            setdvar(#"r_fog_disable", 1);
            if (isdefined(level.culldist)) {
                setculldist(0);
            }
            while (any_player_in_noclip()) {
                wait(1);
            }
            setdvar(#"scr_fog_disable", 0);
            setdvar(#"r_fog_disable", 0);
            if (isdefined(level.culldist)) {
                setculldist(level.culldist);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x44fa2dd6, Offset: 0x9470
    // Size: 0x9c
    function zombie_devgui_allow_fog() {
        if (is_true(level.fog_disabled_in_noclip)) {
            level notify(#"allowfoginnoclip");
            level.fog_disabled_in_noclip = 0;
            setdvar(#"scr_fog_disable", 0);
            setdvar(#"r_fog_disable", 0);
            return;
        }
        thread diable_fog_in_noclip();
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x25281313, Offset: 0x9518
    // Size: 0x44
    function zombie_devgui_give_money(var_90c2e203) {
        if (!isdefined(var_90c2e203)) {
            var_90c2e203 = 100000;
        }
        level.devcheater = 1;
        self zm_score::add_to_player_score(var_90c2e203);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x9e7bb7be, Offset: 0x9568
    // Size: 0x4c
    function function_6de15bb7(var_90c2e203) {
        if (!isdefined(var_90c2e203)) {
            var_90c2e203 = 10000;
        }
        self namespace_2a9f256a::function_afab250a(var_90c2e203);
        self namespace_2a9f256a::function_a6d4221f(var_90c2e203);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xa3f079f2, Offset: 0x95c0
    // Size: 0xbc
    function zombie_devgui_take_money() {
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        if (self.score > 100) {
            self zm_score::player_reduce_points("<unknown string>");
            return;
        }
        self zm_score::player_reduce_points("<unknown string>");
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x395f6f38, Offset: 0x9688
    // Size: 0x1a4
    function function_dc7312be() {
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        if (!self zm_utility::is_drinking()) {
            weapon = self getcurrentweapon();
            if (weapon != level.weaponnone && weapon != level.weaponzmfists && !is_true(weapon.isflourishweapon)) {
                ammo = self getweaponammostock(weapon);
                max = weapon.maxammo;
                if (isdefined(max) && isdefined(ammo)) {
                    if (ammo > max / 10) {
                        self setweaponammostock(weapon, int(ammo / 2));
                        return;
                    }
                    self setweaponammostock(weapon, 0);
                }
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x9d0d8f12, Offset: 0x9838
    // Size: 0xac
    function zombie_devgui_give_xp(amount) {
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        self addrankxp("<unknown string>", 0, self.currentweapon, undefined, undefined, amount / 50);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x9f196f54, Offset: 0x98f0
    // Size: 0x16c
    function zombie_devgui_turn_player(index) {
        players = getplayers();
        if (!isdefined(index) || index >= players.size) {
            player = players[0];
        } else {
            player = players[index];
        }
        assert(isdefined(player));
        assert(isplayer(player));
        assert(isalive(player));
        level.devcheater = 1;
        if (player hasperk(#"specialty_playeriszombie")) {
            println("<unknown string>");
            player zm_turned::turn_to_human();
            return;
        }
        println("<unknown string>");
        player zm_turned::turn_to_zombie();
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xf594c06d, Offset: 0x9a68
    // Size: 0x224
    function function_4bb7eb36() {
        if (!isdefined(level.chests) || !isdefined(level.chest_index)) {
            iprintlnbold("<unknown string>");
            return;
        }
        entnum = self getentitynumber();
        chest = level.chests[level.chest_index];
        origin = chest.zbarrier.origin;
        forward = anglestoforward(chest.zbarrier.angles);
        right = anglestoright(chest.zbarrier.angles);
        var_21f5823e = vectortoangles(right);
        plorigin = origin - 48 * right;
        switch (entnum) {
        case 0:
            plorigin += 16 * right;
            break;
        case 1:
            plorigin += 16 * forward;
            break;
        case 2:
            plorigin -= 16 * right;
            break;
        case 3:
            plorigin -= 16 * forward;
            break;
        }
        self setorigin(plorigin);
        self setplayerangles(var_21f5823e);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x356c907f, Offset: 0x9c98
    // Size: 0x1fc
    function function_84f0a909() {
        entnum = self getentitynumber();
        paps = getentarray("<unknown string>", "<unknown string>");
        pap = paps[0];
        if (!isdefined(pap)) {
            return;
        }
        origin = pap.origin;
        forward = anglestoforward(pap.angles);
        right = anglestoright(pap.angles);
        var_21f5823e = vectortoangles(right * -1);
        plorigin = origin + 72 * right;
        switch (entnum) {
        case 0:
            plorigin -= 16 * right;
            break;
        case 1:
            plorigin += 16 * forward;
            break;
        case 2:
            plorigin += 16 * right;
            break;
        case 3:
            plorigin -= 16 * forward;
            break;
        }
        self setorigin(plorigin);
        self setplayerangles(var_21f5823e);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x9bfa634f, Offset: 0x9ea0
    // Size: 0x2c
    function zombie_devgui_cool_jetgun() {
        if (isdefined(level.zm_devgui_jetgun_never_overheat)) {
            self thread [[ level.zm_devgui_jetgun_never_overheat ]]();
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xfe45089, Offset: 0x9ed8
    // Size: 0x92
    function zombie_devgui_preserve_turbines() {
        self endon(#"disconnect");
        self notify(#"preserve_turbines");
        self endon(#"preserve_turbines");
        if (!is_true(self.preserving_turbines)) {
            self.preserving_turbines = 1;
            while (true) {
                self.turbine_health = 1200;
                wait(1);
            }
        }
        self.preserving_turbines = 0;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xc06c1d7e, Offset: 0x9f78
    // Size: 0x166
    function zombie_devgui_equipment_stays_healthy() {
        self endon(#"disconnect");
        self notify(#"preserve_equipment");
        self endon(#"preserve_equipment");
        if (!is_true(self.preserving_equipment)) {
            self.preserving_equipment = 1;
            while (true) {
                self.equipment_damage = [];
                self.shielddamagetaken = 0;
                if (isdefined(level.destructible_equipment)) {
                    foreach (equip in level.destructible_equipment) {
                        if (isdefined(equip)) {
                            equip.shielddamagetaken = 0;
                            equip.damage = 0;
                            equip.headchopper_kills = 0;
                            equip.springpad_kills = 0;
                            equip.subwoofer_kills = 0;
                        }
                    }
                }
                wait(0.1);
            }
        }
        self.preserving_equipment = 0;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x2910d8cd, Offset: 0xa0e8
    // Size: 0x12
    function zombie_devgui_disown_equipment() {
        self.deployed_equipment = [];
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x2a6bf6ee, Offset: 0xa108
    // Size: 0xbc
    function zombie_devgui_equipment_give(equipment) {
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        level.devcheater = 1;
        if (zm_equipment::is_included(equipment)) {
            self zm_equipment::buy(equipment);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x467746e3, Offset: 0xa1d0
    // Size: 0x15e
    function zombie_devgui_give_placeable_mine(weapon) {
        self endon(#"disconnect");
        self notify(#"give_planted_grenade_thread");
        self endon(#"give_planted_grenade_thread");
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        level.devcheater = 1;
        if (!zm_loadout::is_placeable_mine(weapon)) {
            return;
        }
        if (isdefined(self zm_loadout::get_player_placeable_mine())) {
            self zm_weapons::weapon_take(self zm_loadout::get_player_placeable_mine());
        }
        self thread zm_placeable_mine::setup_for_player(weapon);
        while (true) {
            self givemaxammo(weapon);
            wait(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x9c6ad339, Offset: 0xa338
    // Size: 0x166
    function zombie_devgui_give_claymores() {
        self endon(#"disconnect");
        self notify(#"give_planted_grenade_thread");
        self endon(#"give_planted_grenade_thread");
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        level.devcheater = 1;
        if (isdefined(self zm_loadout::get_player_placeable_mine())) {
            self zm_weapons::weapon_take(self zm_loadout::get_player_placeable_mine());
        }
        wpn_type = zm_placeable_mine::get_first_available();
        if (wpn_type != level.weaponnone) {
            self thread zm_placeable_mine::setup_for_player(wpn_type);
        }
        while (true) {
            self givemaxammo(wpn_type);
            wait(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0xb29af707, Offset: 0xa4a8
    // Size: 0x15e
    function zombie_devgui_give_lethal(weapon) {
        self endon(#"disconnect");
        self notify(#"give_lethal_grenade_thread");
        self endon(#"give_lethal_grenade_thread");
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        level.devcheater = 1;
        if (isdefined(self zm_loadout::get_player_lethal_grenade())) {
            self takeweapon(self zm_loadout::get_player_lethal_grenade());
        }
        self giveweapon(weapon);
        self zm_loadout::set_player_lethal_grenade(weapon);
        while (true) {
            self givemaxammo(weapon);
            wait(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x51f89f49, Offset: 0xa610
    // Size: 0x3c
    function zombie_devgui_give_frags() {
        zombie_devgui_give_lethal(getweapon(#"eq_frag_grenade"));
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xe48d7e67, Offset: 0xa658
    // Size: 0x3c
    function zombie_devgui_give_sticky() {
        zombie_devgui_give_lethal(getweapon(#"sticky_grenade"));
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x9145d2cb, Offset: 0xa6a0
    // Size: 0x166
    function zombie_devgui_give_monkey() {
        self endon(#"disconnect");
        self notify(#"give_tactical_grenade_thread");
        self endon(#"give_tactical_grenade_thread");
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        level.devcheater = 1;
        if (isdefined(self zm_loadout::get_player_tactical_grenade())) {
            self takeweapon(self zm_loadout::get_player_tactical_grenade());
        }
        if (isdefined(level.zombiemode_devgui_cymbal_monkey_give)) {
            self [[ level.zombiemode_devgui_cymbal_monkey_give ]]();
            while (true) {
                self givemaxammo(getweapon(#"cymbal_monkey"));
                wait(1);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xef3f5b8c, Offset: 0xa810
    // Size: 0x14e
    function zombie_devgui_give_bhb() {
        self endon(#"disconnect");
        self notify(#"give_tactical_grenade_thread");
        self endon(#"give_tactical_grenade_thread");
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        level.devcheater = 1;
        if (isdefined(self zm_loadout::get_player_tactical_grenade())) {
            self zm_weapons::weapon_take(self zm_loadout::get_player_tactical_grenade());
        }
        if (isdefined(level.var_5076c574)) {
            self [[ level.var_5076c574 ]]();
            while (true) {
                self givemaxammo(level.w_black_hole_bomb);
                wait(1);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x9fd87014, Offset: 0xa968
    // Size: 0x14e
    function zombie_devgui_give_qed() {
        self endon(#"disconnect");
        self notify(#"give_tactical_grenade_thread");
        self endon(#"give_tactical_grenade_thread");
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        level.devcheater = 1;
        if (isdefined(self zm_loadout::get_player_tactical_grenade())) {
            self zm_weapons::weapon_take(self zm_loadout::get_player_tactical_grenade());
        }
        if (isdefined(level.var_3079bbd7)) {
            self [[ level.var_3079bbd7 ]]();
            while (true) {
                self givemaxammo(level.w_quantum_bomb);
                wait(1);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xf9eacec0, Offset: 0xaac0
    // Size: 0x14e
    function zombie_devgui_give_dolls() {
        self endon(#"disconnect");
        self notify(#"give_tactical_grenade_thread");
        self endon(#"give_tactical_grenade_thread");
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        level.devcheater = 1;
        if (isdefined(self zm_loadout::get_player_tactical_grenade())) {
            self zm_weapons::weapon_take(self zm_loadout::get_player_tactical_grenade());
        }
        if (isdefined(level.var_42cebfa6)) {
            self [[ level.var_42cebfa6 ]]();
            while (true) {
                self givemaxammo(level.w_nesting_dolls);
                wait(1);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x89d0e384, Offset: 0xac18
    // Size: 0x166
    function zombie_devgui_give_emp_bomb() {
        self endon(#"disconnect");
        self notify(#"give_tactical_grenade_thread");
        self endon(#"give_tactical_grenade_thread");
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        level.devcheater = 1;
        if (isdefined(self zm_loadout::get_player_tactical_grenade())) {
            self zm_weapons::weapon_take(self zm_loadout::get_player_tactical_grenade());
        }
        if (isdefined(level.var_153af402)) {
            self [[ level.var_153af402 ]]();
            while (true) {
                self givemaxammo(getweapon(#"emp_grenade"));
                wait(1);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 2, eflags: 0x0
    // Checksum 0x2a9ea5f, Offset: 0xad88
    // Size: 0xfc
    function zombie_devgui_invulnerable(playerindex, onoff) {
        players = getplayers();
        if (!isdefined(playerindex)) {
            for (i = 0; i < players.size; i++) {
                zombie_devgui_invulnerable(i, onoff);
            }
            return;
        }
        if (players.size > playerindex) {
            if (onoff) {
                players[playerindex] val::set(#"zombie_devgui", "<unknown string>", 0);
                return;
            }
            players[playerindex] val::reset(#"zombie_devgui", "<unknown string>");
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xe0b77c9a, Offset: 0xae90
    // Size: 0x124
    function zombie_devgui_kill() {
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        self val::set(#"devgui_kill", "<unknown string>", 1);
        death_from = (randomfloatrange(-20, 20), randomfloatrange(-20, 20), randomfloatrange(-20, 20));
        self dodamage(self.health + 666, self.origin + death_from);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x6a89b1f8, Offset: 0xafc0
    // Size: 0x2ee
    function zombie_devgui_toggle_ammo() {
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        self notify(#"devgui_toggle_ammo");
        self endon(#"devgui_toggle_ammo");
        self.ammo4evah = !is_true(self.ammo4evah);
        while (isdefined(self) && self.ammo4evah) {
            if (!self zm_utility::is_drinking()) {
                weapon = self getcurrentweapon();
                if (weapon != level.weaponnone && weapon != level.weaponzmfists && !is_true(weapon.isflourishweapon)) {
                    self setweaponoverheating(0, 0);
                    max = weapon.maxammo;
                    if (isdefined(max)) {
                        self setweaponammostock(weapon, max);
                    }
                    if (isdefined(self zm_loadout::get_player_tactical_grenade())) {
                        self givemaxammo(self zm_loadout::get_player_tactical_grenade());
                    }
                    if (isdefined(self zm_loadout::get_player_lethal_grenade())) {
                        self givemaxammo(self zm_loadout::get_player_lethal_grenade());
                    }
                }
                for (i = 0; i < 3; i++) {
                    if (isdefined(self._gadgets_player[i]) && self hasweapon(self._gadgets_player[i])) {
                        if (!self util::gadget_is_in_use(i) && self gadgetcharging(i)) {
                            self gadgetpowerset(i, self._gadgets_player[i].gadget_powermax);
                        }
                    }
                }
            }
            wait(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xdc3404a7, Offset: 0xb2b8
    // Size: 0x134
    function zombie_devgui_toggle_ignore() {
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        if (!isdefined(self.devgui_ignoreme)) {
            self.devgui_ignoreme = 0;
        }
        self.devgui_ignoreme = !self.devgui_ignoreme;
        if (self.devgui_ignoreme) {
            self val::set(#"devgui", "<unknown string>");
        } else {
            self val::reset(#"devgui", "<unknown string>");
        }
        if (self.ignoreme) {
            setdvar(#"ai_showfailedpaths", 0);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x1f8153e1, Offset: 0xb3f8
    // Size: 0x6e
    function zombie_devgui_revive() {
        assert(isdefined(self));
        assert(isplayer(self));
        if (laststand::player_is_in_laststand()) {
            self notify(#"auto_revive");
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xe30e9017, Offset: 0xb470
    // Size: 0x12c
    function zombie_devgui_give_health() {
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        self notify(#"devgui_health");
        self endon(#"devgui_health", #"disconnect", #"death");
        level.devcheater = 1;
        while (true) {
            self.maxhealth = 100000;
            self.health = 100000;
            self waittill(#"player_revived", #"perk_used", #"spawned_player");
            wait(2);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x659a40b2, Offset: 0xb5a8
    // Size: 0x12c
    function zombie_devgui_low_health() {
        assert(isdefined(self));
        assert(isplayer(self));
        assert(isalive(self));
        self notify(#"devgui_health");
        self endon(#"devgui_health", #"disconnect", #"death");
        level.devcheater = 1;
        while (true) {
            self.maxhealth = 10;
            self.health = 10;
            self waittill(#"player_revived", #"perk_used", #"spawned_player");
            wait(2);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0xd282539e, Offset: 0xb6e0
    // Size: 0x130
    function zombie_devgui_give_perk(perk) {
        vending_machines = zm_perks::get_perk_machines();
        level.devcheater = 1;
        if (vending_machines.size < 1) {
            return;
        }
        foreach (player in getplayers()) {
            for (i = 0; i < vending_machines.size; i++) {
                if (vending_machines[i].script_noteworthy == perk) {
                    vending_machines[i] notify(#"trigger", {#activator:player});
                    break;
                }
            }
            wait(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x2c6bce15, Offset: 0xb818
    // Size: 0x1aa
    function zombie_devgui_take_perks(*cmd) {
        vending_machines = zm_perks::get_perk_machines();
        perks = [];
        for (i = 0; i < vending_machines.size; i++) {
            perk = vending_machines[i].script_noteworthy;
            if (isdefined(self.perk_purchased) && self.perk_purchased == perk) {
                continue;
            }
            perks[perks.size] = perk;
        }
        foreach (player in getplayers()) {
            foreach (perk in perks) {
                perk_str = perk + "<unknown string>";
                player notify(perk_str);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x24578aea, Offset: 0xb9d0
    // Size: 0x34
    function function_fd6c1b3c(cmd) {
        if (isdefined(level.perk_random_devgui_callback)) {
            self [[ level.perk_random_devgui_callback ]](cmd);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x7c390646, Offset: 0xba10
    // Size: 0x34
    function function_82f7d6a1(cmd) {
        if (isdefined(level.perk_random_devgui_callback)) {
            self [[ level.perk_random_devgui_callback ]](cmd);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0xaff5a63b, Offset: 0xba50
    // Size: 0x34
    function function_68bd1e17(cmd) {
        if (isdefined(level.perk_random_devgui_callback)) {
            self [[ level.perk_random_devgui_callback ]](cmd);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x441594b9, Offset: 0xba90
    // Size: 0x34
    function function_7565dd74(cmd) {
        if (isdefined(level.perk_random_devgui_callback)) {
            self [[ level.perk_random_devgui_callback ]](cmd);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x730ebb49, Offset: 0xbad0
    // Size: 0x34
    function function_87979c2c(cmd) {
        if (isdefined(level.perk_random_devgui_callback)) {
            self [[ level.perk_random_devgui_callback ]](cmd);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0xc68993dc, Offset: 0xbb10
    // Size: 0x34
    function function_2cbcab61(cmd) {
        if (isdefined(level.perk_random_devgui_callback)) {
            self [[ level.perk_random_devgui_callback ]](cmd);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x5f4f5730, Offset: 0xbb50
    // Size: 0x34
    function function_18fc6a29(cmd) {
        if (isdefined(level.perk_random_devgui_callback)) {
            self [[ level.perk_random_devgui_callback ]](cmd);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 3, eflags: 0x0
    // Checksum 0xa3b9d3ea, Offset: 0xbb90
    // Size: 0x27c
    function zombie_devgui_give_powerup(powerup_name, now, origin) {
        player = getplayers()[0];
        found = 0;
        level.devcheater = 1;
        if (isdefined(now) && !now) {
            for (i = 0; i < level.zombie_powerup_array.size; i++) {
                if (level.zombie_powerup_array[i] == powerup_name) {
                    level.zombie_powerup_index = i;
                    found = 1;
                    break;
                }
            }
            if (!found) {
                return;
            }
            level.zombie_devgui_power = 1;
            zombie_utility::set_zombie_var(#"zombie_drop_item", 1);
            level.powerup_drop_count = 0;
            return;
        }
        direction = player getplayerangles();
        direction_vec = anglestoforward(direction);
        eye = player geteye();
        scale = 8000;
        direction_vec = (direction_vec[0] * scale, direction_vec[1] * scale, direction_vec[2] * scale);
        trace = bullettrace(eye, eye + direction_vec, 0, undefined);
        if (!isdefined(level.zombie_powerups) || !isdefined(level.zombie_powerups[powerup_name])) {
            return;
        }
        if (isdefined(origin)) {
            level thread zm_powerups::specific_powerup_drop(powerup_name, origin, undefined, undefined, undefined, undefined, undefined, undefined, undefined, 1);
            return;
        }
        level thread zm_powerups::specific_powerup_drop(powerup_name, trace[#"position"], undefined, undefined, undefined, undefined, undefined, undefined, undefined, 1);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 2, eflags: 0x0
    // Checksum 0xbb7b730c, Offset: 0xbe18
    // Size: 0x1f4
    function zombie_devgui_give_powerup_player(powerup_name, now) {
        player = self;
        found = 0;
        level.devcheater = 1;
        if (isdefined(now) && !now) {
            for (i = 0; i < level.zombie_powerup_array.size; i++) {
                if (level.zombie_powerup_array[i] == powerup_name) {
                    level.zombie_powerup_index = i;
                    found = 1;
                    break;
                }
            }
            if (!found) {
                return;
            }
            level.zombie_devgui_power = 1;
            zombie_utility::set_zombie_var(#"zombie_drop_item", 1);
            level.powerup_drop_count = 0;
            return;
        }
        direction = player getplayerangles();
        direction_vec = anglestoforward(direction);
        eye = player geteye();
        scale = 8000;
        direction_vec = (direction_vec[0] * scale, direction_vec[1] * scale, direction_vec[2] * scale);
        trace = bullettrace(eye, eye + direction_vec, 0, undefined);
        level thread zm_powerups::specific_powerup_drop(powerup_name, trace[#"position"], undefined, undefined, player);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x169308f0, Offset: 0xc018
    // Size: 0x1b4
    function zombie_devgui_goto_round(target_round) {
        player = getplayers()[0];
        if (target_round < 1) {
            target_round = 1;
        }
        level.devcheater = 1;
        level.zombie_total = 0;
        level.zombie_health = isdefined(level.var_41dd92fd[#"zombie"].health) ? level.var_41dd92fd[#"zombie"].health : 100;
        zm_round_logic::set_round_number(target_round - 1);
        if (isdefined(level.var_e63636af)) {
            [[ level.var_e63636af ]](target_round - 1);
        }
        level notify(#"kill_round");
        wait(1);
        zombies = getaiteamarray(level.zombie_team);
        if (isdefined(zombies)) {
            for (i = 0; i < zombies.size; i++) {
                if (is_true(zombies[i].ignore_devgui_death)) {
                    continue;
                }
                zombies[i] dodamage(zombies[i].health + 666, zombies[i].origin);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x3828e43, Offset: 0xc1d8
    // Size: 0x34
    function zombie_devgui_monkey_round() {
        if (isdefined(level.var_141b0a3a)) {
            zombie_devgui_goto_round(level.var_141b0a3a);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x2c4b08f0, Offset: 0xc218
    // Size: 0x34
    function zombie_devgui_thief_round() {
        if (isdefined(level.var_3a35aed4)) {
            zombie_devgui_goto_round(level.var_3a35aed4);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x3696368e, Offset: 0xc258
    // Size: 0xec
    function zombie_devgui_dog_round(num_dogs) {
        if (!isdefined(level.var_57c1626e) || !level.var_57c1626e) {
            return;
        }
        if (!isdefined(level.var_a3f67fc2) || !level.var_a3f67fc2) {
            return;
        }
        if (!isdefined(level.enemy_dog_spawns) || level.enemy_dog_spawns.size < 1) {
            return;
        }
        if (!level flag::get("<unknown string>")) {
            setdvar(#"force_dogs", num_dogs);
        }
        zombie_devgui_goto_round(level.round_number + 1);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x5da8a35, Offset: 0xc350
    // Size: 0x34
    function zombie_devgui_dog_round_skip() {
        if (isdefined(level.next_dog_round)) {
            zombie_devgui_goto_round(level.next_dog_round);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x6545f3ab, Offset: 0xc390
    // Size: 0xf4
    function zombie_devgui_dump_zombie_vars() {
        if (!isdefined(level.zombie_vars)) {
            return;
        }
        if (level.zombie_vars.size > 0) {
            println("<unknown string>");
        } else {
            return;
        }
        var_names = getarraykeys(level.zombie_vars);
        for (i = 0; i < level.zombie_vars.size; i++) {
            key = var_names[i];
            println(key + "<unknown string>" + zombie_utility::get_zombie_var(key));
        }
        println("<unknown string>");
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x57c2fc0d, Offset: 0xc490
    // Size: 0x1a4
    function zombie_devgui_pack_current_weapon() {
        players = getplayers();
        level.devcheater = 1;
        for (i = 0; i < players.size; i++) {
            if (!players[i] laststand::player_is_in_laststand() && players[i].sessionstate !== "<unknown string>") {
                weap = players[i] getcurrentweapon();
                item = players[i] item_inventory::function_230ceec4(weap);
                var_27751b99 = namespace_4b9fccd8::function_ee7e837d(item);
                if (isdefined(item) && var_27751b99 == 0 && item.networkid != 32767) {
                    players[i] item_inventory::function_73ae3380(item, 1);
                    continue;
                }
                if (isdefined(item.paplv) && item.paplv < 4) {
                    paplevel = item.paplv + 1;
                    players[i] item_inventory::function_73ae3380(item, paplevel);
                }
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x81423a07, Offset: 0xc640
    // Size: 0x134
    function zombie_devgui_repack_current_weapon() {
        players = getplayers();
        level.devcheater = 1;
        for (i = 0; i < players.size; i++) {
            if (!players[i] laststand::player_is_in_laststand() && players[i].sessionstate !== "<unknown string>") {
                weap = players[i] getcurrentweapon();
                item = players[i] item_inventory::function_230ceec4(weap);
                if (isdefined(item.paplv) && item.paplv < 4) {
                    paplevel = item.paplv + 1;
                    players[i] item_inventory::function_73ae3380(item, paplevel);
                }
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xd28a13fc, Offset: 0xc780
    // Size: 0x22c
    function zombie_devgui_unpack_current_weapon() {
        players = getplayers();
        level.devcheater = 1;
        for (i = 0; i < players.size; i++) {
            if (!players[i] laststand::player_is_in_laststand() && players[i].sessionstate !== "<unknown string>") {
                weap = players[i] getcurrentweapon();
                item = players[i] item_inventory::function_230ceec4(weap);
                if (isdefined(item.paplv) && item.paplv > 1) {
                    paplevel = item.paplv - 1;
                    players[i] item_inventory::function_73ae3380(item, paplevel);
                    continue;
                }
                if (isdefined(item.itementry) && isdefined(item.itementry.rarity)) {
                    rarity = item.itementry.rarity;
                }
                weapon = self weapons::function_251ec78c(weap, 1);
                players[i] zm_weapons::weapon_take(weap);
                weapon = players[i] zm_weapons::give_build_kit_weapon(weapon);
                players[i] zm_weapons::function_7c5dd4bd(weapon);
                players[i] switchtoweapon(weapon);
                players[i] thread function_3594cd6d(rarity);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x876464cb, Offset: 0xc9b8
    // Size: 0x6c
    function function_3594cd6d(rarity) {
        if (!isdefined(rarity)) {
            rarity = #"white";
        }
        self endon(#"death");
        self waittill(#"weapon_change_complete");
        wait(1);
        self zm_weapons::function_17e9ed37(rarity);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0xa1a1f43, Offset: 0xca30
    // Size: 0x2c
    function function_2a5ce9b1(*rarity) {
        iprintlnbold("<unknown string>");
    }

    // Namespace zm_devgui/zm_devgui
    // Params 2, eflags: 0x0
    // Checksum 0x62ad776b, Offset: 0xca68
    // Size: 0x74
    function function_55c6dedd(str_weapon, xp) {
        if (!str_weapon || !level.onlinegame) {
            return;
        }
        if (0 > xp) {
            xp = 0;
        }
        self stats::set_stat(#"ranked_item_stats", str_weapon, #"xp", xp);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x5f526592, Offset: 0xcae8
    // Size: 0xea
    function function_335cdac(weapon) {
        gunlevels = [];
        table = popups::devgui_notif_getgunleveltablename();
        weapon_name = weapon.rootweapon.name;
        for (i = 0; i < 15; i++) {
            var_4a3def14 = tablelookup(table, 2, weapon_name, 0, i, 1);
            if ("<unknown string>" == var_4a3def14) {
                break;
            }
            gunlevels[i] = int(var_4a3def14);
        }
        return gunlevels;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 2, eflags: 0x0
    // Checksum 0x5ac9124c, Offset: 0xcbe0
    // Size: 0x7e
    function function_72e79f3b(weapon, var_56c1b8d) {
        xp = 0;
        gunlevels = function_335cdac(weapon);
        if (gunlevels.size) {
            xp = gunlevels[gunlevels.size - 1];
            if (var_56c1b8d < gunlevels.size) {
                xp = gunlevels[var_56c1b8d];
            }
        }
        return xp;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x23d35791, Offset: 0xcc68
    // Size: 0x62
    function function_af7d932(weapon) {
        xp = 0;
        gunlevels = function_335cdac(weapon);
        if (gunlevels.size) {
            xp = gunlevels[gunlevels.size - 1];
        }
        return xp;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xcd9ef7f3, Offset: 0xccd8
    // Size: 0x8
    function function_c8949116() {
        
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x666477fb, Offset: 0xcce8
    // Size: 0x8
    function function_9d21f44b() {
        
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x666477fb, Offset: 0xccf8
    // Size: 0x8
    function function_e2a97bab() {
        
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x72cd6f69, Offset: 0xcd08
    // Size: 0x8
    function function_1a560cfc() {
        
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x820ccf8f, Offset: 0xcd18
    // Size: 0x8
    function function_c8ee84ba() {
        
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xc79c7266, Offset: 0xcd28
    // Size: 0x8
    function function_c83c6fa() {
        
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x2ccc45db, Offset: 0xcd38
    // Size: 0x124
    function function_cbdab30d(xp) {
        if (self.pers[#"rankxp"] > xp) {
            self.pers[#"rank"] = 0;
            self setrank(0);
            self stats::set_stat(#"playerstatslist", #"rank", #"statvalue", 0);
        }
        self.pers[#"rankxp"] = xp;
        self rank::updaterank();
        self stats::set_stat(#"playerstatslist", #"rank", #"statvalue", self.pers[#"rank"]);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0xee6bde5, Offset: 0xce68
    // Size: 0x14
    function function_5c26ad27(*var_56c1b8d) {
        return 0;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x4aa453fe, Offset: 0xce88
    // Size: 0x4c
    function function_5da832fa() {
        xp = 0;
        if (isdefined(level.ranktable)) {
            xp = function_5c26ad27(level.ranktable.size - 1);
        }
        return xp;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x90c3e60f, Offset: 0xcee0
    // Size: 0xd4
    function function_8c9f2dea() {
        players = getplayers();
        level.devcheater = 1;
        for (i = 0; i < players.size; i++) {
            player = players[i];
            if (!player laststand::player_is_in_laststand()) {
                var_56c1b8d = player rank::getrank();
                xp = function_5c26ad27(var_56c1b8d);
                player function_cbdab30d(xp);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xc9d058d4, Offset: 0xcfc0
    // Size: 0xdc
    function function_b7ef4b8() {
        players = getplayers();
        level.devcheater = 1;
        for (i = 0; i < players.size; i++) {
            player = players[i];
            if (!player laststand::player_is_in_laststand()) {
                var_56c1b8d = player rank::getrank();
                xp = function_5c26ad27(var_56c1b8d);
                player function_cbdab30d(xp - 50);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xe90e8ed1, Offset: 0xd0a8
    // Size: 0xb4
    function function_9b4d61fa() {
        players = getplayers();
        level.devcheater = 1;
        for (i = 0; i < players.size; i++) {
            player = players[i];
            if (!player laststand::player_is_in_laststand()) {
                xp = function_5da832fa();
                player function_cbdab30d(xp);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xe8630fcf, Offset: 0xd168
    // Size: 0x94
    function function_cdc3d061() {
        players = getplayers();
        level.devcheater = 1;
        for (i = 0; i < players.size; i++) {
            player = players[i];
            if (!player laststand::player_is_in_laststand()) {
                player function_cbdab30d(0);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x4e5a6c38, Offset: 0xd208
    // Size: 0x134
    function zombie_devgui_reopt_current_weapon() {
        players = getplayers();
        reviver = players[0];
        level.devcheater = 1;
        for (i = 0; i < players.size; i++) {
            if (!players[i] laststand::player_is_in_laststand()) {
                weapon = players[i] getcurrentweapon();
                if (isdefined(players[i].pack_a_punch_weapon_options)) {
                    players[i].pack_a_punch_weapon_options[weapon] = undefined;
                }
                players[i] zm_weapons::weapon_take(weapon);
                weapon = players[i] zm_weapons::give_build_kit_weapon(weapon);
                players[i] zm_weapons::function_7c5dd4bd(weapon);
                players[i] switchtoweapon(weapon);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xafa58391, Offset: 0xd348
    // Size: 0xd4
    function zombie_devgui_take_weapon() {
        players = getplayers();
        reviver = players[0];
        level.devcheater = 1;
        for (i = 0; i < players.size; i++) {
            if (!players[i] laststand::player_is_in_laststand()) {
                players[i] zm_weapons::weapon_take(players[i] getcurrentweapon());
                players[i] zm_weapons::switch_back_primary_weapon(undefined);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x3da8a79a, Offset: 0xd428
    // Size: 0x138
    function zombie_devgui_take_weapons(*give_fallback) {
        players = getplayers();
        reviver = players[0];
        level.devcheater = 1;
        for (i = 0; i < players.size; i++) {
            if (!players[i] laststand::player_is_in_laststand()) {
                a_weapons = players[i] getweaponslist();
                foreach (weapon in a_weapons) {
                    players[i] zm_weapons::weapon_take(weapon);
                }
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0xe3b7642f, Offset: 0xd568
    // Size: 0x7c
    function get_upgrade(weapon) {
        if (isdefined(level.zombie_weapons[weapon]) && isdefined(level.zombie_weapons[weapon].upgrade_name)) {
            return zm_weapons::get_upgrade_weapon(weapon, 0);
        }
        return zm_weapons::get_upgrade_weapon(weapon, 1);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xeadc8008, Offset: 0xd5f0
    // Size: 0x28
    function zombie_devgui_director_easy() {
        if (isdefined(level.var_e5cb87fe)) {
            [[ level.var_e5cb87fe ]]();
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xff6e83b3, Offset: 0xd620
    // Size: 0x4a
    function zombie_devgui_chest_never_move() {
        level notify(#"devgui_chest_end_monitor");
        level endon(#"devgui_chest_end_monitor");
        for (;;) {
            level.chest_accessed = 0;
            wait(5);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x1e0b56cd, Offset: 0xd678
    // Size: 0x44
    function zombie_devgui_disable_kill_thread_toggle() {
        if (!is_true(level.disable_kill_thread)) {
            level.disable_kill_thread = 1;
            return;
        }
        level.disable_kill_thread = 0;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xf45a1cad, Offset: 0xd6c8
    // Size: 0x44
    function zombie_devgui_check_kill_thread_every_frame_toggle() {
        if (!is_true(level.check_kill_thread_every_frame)) {
            level.check_kill_thread_every_frame = 1;
            return;
        }
        level.check_kill_thread_every_frame = 0;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x249eb41c, Offset: 0xd718
    // Size: 0x44
    function zombie_devgui_kill_thread_test_mode_toggle() {
        if (!is_true(level.kill_thread_test_mode)) {
            level.kill_thread_test_mode = 1;
            return;
        }
        level.kill_thread_test_mode = 0;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 5, eflags: 0x0
    // Checksum 0x929cac54, Offset: 0xd768
    // Size: 0x4ae
    function showonespawnpoint(spawn_point, color, notification, height, print) {
        if (!isdefined(height) || height <= 0) {
            height = util::get_player_height();
        }
        if (!isdefined(print)) {
            print = spawn_point.classname;
        }
        center = spawn_point.origin;
        forward = anglestoforward(spawn_point.angles);
        right = anglestoright(spawn_point.angles);
        forward = vectorscale(forward, 16);
        right = vectorscale(right, 16);
        a = center + forward - right;
        b = center + forward + right;
        c = center - forward + right;
        d = center - forward - right;
        thread lineuntilnotified(a, b, color, 0, notification);
        thread lineuntilnotified(b, c, color, 0, notification);
        thread lineuntilnotified(c, d, color, 0, notification);
        thread lineuntilnotified(d, a, color, 0, notification);
        thread lineuntilnotified(a, a + (0, 0, height), color, 0, notification);
        thread lineuntilnotified(b, b + (0, 0, height), color, 0, notification);
        thread lineuntilnotified(c, c + (0, 0, height), color, 0, notification);
        thread lineuntilnotified(d, d + (0, 0, height), color, 0, notification);
        a += (0, 0, height);
        b += (0, 0, height);
        c += (0, 0, height);
        d += (0, 0, height);
        thread lineuntilnotified(a, b, color, 0, notification);
        thread lineuntilnotified(b, c, color, 0, notification);
        thread lineuntilnotified(c, d, color, 0, notification);
        thread lineuntilnotified(d, a, color, 0, notification);
        center += (0, 0, height / 2);
        arrow_forward = anglestoforward(spawn_point.angles);
        arrowhead_forward = anglestoforward(spawn_point.angles);
        arrowhead_right = anglestoright(spawn_point.angles);
        arrow_forward = vectorscale(arrow_forward, 32);
        arrowhead_forward = vectorscale(arrowhead_forward, 24);
        arrowhead_right = vectorscale(arrowhead_right, 8);
        a = center + arrow_forward;
        b = center + arrowhead_forward - arrowhead_right;
        c = center + arrowhead_forward + arrowhead_right;
        thread lineuntilnotified(center, a, color, 0, notification);
        thread lineuntilnotified(a, b, color, 0, notification);
        thread lineuntilnotified(a, c, color, 0, notification);
        thread print3duntilnotified(spawn_point.origin + (0, 0, height), print, color, 1, 1, notification);
        return;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 6, eflags: 0x0
    // Checksum 0x338420c8, Offset: 0xdc20
    // Size: 0x6e
    function print3duntilnotified(origin, text, color, alpha, scale, notification) {
        level endon(notification);
        for (;;) {
            print3d(origin, text, color, alpha, scale);
            waitframe(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 5, eflags: 0x0
    // Checksum 0x15fa3e5a, Offset: 0xdc98
    // Size: 0x66
    function lineuntilnotified(start, end, color, depthtest, notification) {
        level endon(notification);
        for (;;) {
            line(start, end, color, depthtest);
            waitframe(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xb60db64d, Offset: 0xdd08
    // Size: 0x2e4
    function devgui_debug_hud() {
        if (isdefined(self zm_loadout::get_player_lethal_grenade())) {
            self givemaxammo(self zm_loadout::get_player_lethal_grenade());
        }
        wpn_type = zm_placeable_mine::get_first_available();
        if (wpn_type != level.weaponnone) {
            self thread zm_placeable_mine::setup_for_player(wpn_type);
        }
        if (isdefined(level.zombiemode_devgui_cymbal_monkey_give)) {
            if (isdefined(self zm_loadout::get_player_tactical_grenade())) {
                self takeweapon(self zm_loadout::get_player_tactical_grenade());
            }
            self [[ level.zombiemode_devgui_cymbal_monkey_give ]]();
        } else if (isdefined(self zm_loadout::get_player_tactical_grenade())) {
            self givemaxammo(self zm_loadout::get_player_tactical_grenade());
        }
        if (isdefined(level.zombie_include_equipment) && !isdefined(self zm_equipment::get_player_equipment())) {
            equipment = getarraykeys(level.zombie_include_equipment);
            if (isdefined(equipment[0])) {
                self zombie_devgui_equipment_give(equipment[0]);
            }
        }
        for (i = 0; i < 10; i++) {
            zombie_devgui_give_powerup("<unknown string>", 1, self.origin);
            wait(0.25);
        }
        zombie_devgui_give_powerup("<unknown string>", 1, self.origin);
        wait(0.25);
        zombie_devgui_give_powerup("<unknown string>", 1, self.origin);
        wait(0.25);
        zombie_devgui_give_powerup("<unknown string>", 1, self.origin);
        wait(0.25);
        zombie_devgui_give_powerup("<unknown string>", 1, self.origin);
        wait(0.25);
        zombie_devgui_give_powerup("<unknown string>", 1, self.origin);
        wait(0.25);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xbd7b4e21, Offset: 0xdff8
    // Size: 0x44
    function zombie_devgui_draw_traversals() {
        if (!isdefined(level.toggle_draw_traversals)) {
            level.toggle_draw_traversals = 1;
            return;
        }
        level.toggle_draw_traversals = !level.toggle_draw_traversals;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x3afef367, Offset: 0xe048
    // Size: 0x44
    function zombie_devgui_keyline_always() {
        if (!isdefined(level.toggle_keyline_always)) {
            level.toggle_keyline_always = 1;
            return;
        }
        level.toggle_keyline_always = !level.toggle_keyline_always;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x83fb513b, Offset: 0xe098
    // Size: 0x94
    function robotsupportsovercover_manager_() {
        if (level flag::get("<unknown string>")) {
            level flag::clear("<unknown string>");
            iprintln("<unknown string>");
            return;
        }
        level flag::set("<unknown string>");
        iprintln("<unknown string>");
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x9e7a9502, Offset: 0xe138
    // Size: 0x44
    function function_92523b12() {
        if (!isdefined(level.var_5171ee4a)) {
            level.var_5171ee4a = 1;
            return;
        }
        level.var_5171ee4a = !level.var_5171ee4a;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0xe1f6dc7c, Offset: 0xe188
    // Size: 0x298
    function wait_for_zombie(crawler) {
        nodes = getallnodes();
        while (true) {
            ai = getactorarray();
            zombie = ai[0];
            if (isdefined(zombie)) {
                foreach (node in nodes) {
                    if (node.type == #"begin" || node.type == #"end" || node.type == #"bad node") {
                        if (isdefined(node.animscript)) {
                            zombie setblackboardattribute("<unknown string>", "<unknown string>");
                            zombie setblackboardattribute("<unknown string>", node.animscript);
                            table = "<unknown string>";
                            if (is_true(crawler)) {
                                table = "<unknown string>";
                            }
                            if (isdefined(zombie.debug_traversal_ast)) {
                                table = zombie.debug_traversal_ast;
                            }
                            anim_results = zombie astsearch(table);
                            if (!isdefined(anim_results[#"animation"])) {
                                if (is_true(crawler)) {
                                    node.bad_crawler_traverse = 1;
                                } else {
                                    node.bad_traverse = 1;
                                }
                                continue;
                            }
                            if (anim_results[#"animation"] == "<unknown string>") {
                                teleport = 1;
                            }
                        }
                    }
                }
                break;
            }
            wait(0.25);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x87fcd8f5, Offset: 0xe428
    // Size: 0x1fa
    function zombie_draw_traversals() {
        level thread wait_for_zombie();
        level thread wait_for_zombie(1);
        nodes = getallnodes();
        while (true) {
            if (is_true(level.toggle_draw_traversals)) {
                foreach (node in nodes) {
                    if (isdefined(node.animscript)) {
                        txt_color = (0, 0.8, 0.6);
                        circle_color = (1, 1, 1);
                        if (is_true(node.bad_traverse)) {
                            txt_color = (1, 0, 0);
                            circle_color = (1, 0, 0);
                        }
                        circle(node.origin, 16, circle_color);
                        print3d(node.origin, node.animscript, txt_color, 1, 0.5);
                        if (is_true(node.bad_crawler_traverse)) {
                            print3d(node.origin + (0, 0, -12), "<unknown string>", (1, 0, 0), 1, 0.5);
                        }
                    }
                }
            }
            waitframe(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xf3d322f0, Offset: 0xe630
    // Size: 0x1e4
    function function_bbeaa2da() {
        nodes = getallnodes();
        var_43e9aabd = [];
        foreach (node in nodes) {
            if (isdefined(node.animscript) && node.animscript != "<unknown string>") {
                var_43e9aabd[node.animscript] = 1;
            }
        }
        var_cb16f0db = getarraykeys(var_43e9aabd);
        sortednames = array::sort_by_value(var_cb16f0db, 1);
        println("<unknown string>");
        foreach (name in sortednames) {
            println("<unknown string>" + name);
        }
        println("<unknown string>");
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x8042ff51, Offset: 0xe820
    // Size: 0x1ee
    function function_e9b89aac() {
        while (true) {
            if (isdefined(level.zones) && (getdvarint(#"zombiemode_debug_zones", 0) || getdvarint(#"hash_756b3f2accaa1678", 0))) {
                foreach (zone in level.zones) {
                    foreach (node in zone.nodes) {
                        node_region = getnoderegion(node);
                        var_747013f8 = node.targetname;
                        if (isdefined(node_region)) {
                            var_747013f8 = node_region + "<unknown string>" + node.targetname;
                        }
                        print3d(node.origin + (0, 0, 12), var_747013f8, (0, 1, 0), 1, 1);
                    }
                }
            }
            waitframe(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xbca16743, Offset: 0xea18
    // Size: 0xe8
    function function_e395a714() {
        if (!isdefined(level.var_9a11ee76)) {
            level.var_9a11ee76 = 0;
        }
        foreach (player in level.players) {
            if (level.var_9a11ee76) {
                player notify(#"hash_d592b5d81b7b3a7");
                continue;
            }
            player thread function_fb482cad();
        }
        level.var_9a11ee76 = !level.var_9a11ee76;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x78582704, Offset: 0xeb08
    // Size: 0x3e
    function function_2fcf8a4a(*notifyhash) {
        if (isdefined(self.var_d35d1d3d)) {
            self.var_d35d1d3d destroy();
            self.var_d35d1d3d = undefined;
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x54caedd6, Offset: 0xeb50
    // Size: 0x186
    function function_fb482cad() {
        self notify(#"hash_d592b5d81b7b3a7");
        self endoncallback(&function_2fcf8a4a, #"hash_d592b5d81b7b3a7", #"disconnect");
        while (true) {
            if (!isdefined(self.var_d35d1d3d)) {
                self.var_d35d1d3d = newdebughudelem(self);
                self.var_d35d1d3d.alignx = "<unknown string>";
                self.var_d35d1d3d.horzalign = "<unknown string>";
                self.var_d35d1d3d.aligny = "<unknown string>";
                self.var_d35d1d3d.vertalign = "<unknown string>";
                self.var_d35d1d3d.color = (1, 1, 1);
                self.var_d35d1d3d.alpha = 1;
            }
            debug_text = "<unknown string>";
            if (isdefined(self.cached_zone_volume)) {
                debug_text = "<unknown string>";
            } else if (isdefined(self.var_3b65cdd7)) {
                debug_text = "<unknown string>";
            }
            self.var_d35d1d3d settext(debug_text);
            self waittill(#"zone_change");
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x38ac8e16, Offset: 0xece0
    // Size: 0x218
    function function_5349e112() {
        if (!isdefined(level.var_1d432d3)) {
            level.var_b086a41a = getentarray("<unknown string>", "<unknown string>");
            infovolumedebuginit();
        }
        level.var_1d432d3 = !is_true(level.var_1d432d3);
        if (is_true(level.var_1d432d3)) {
            setdvar(#"g_drawdebuginfovolumes", 1);
            foreach (area in level.var_b086a41a) {
                showinfovolume(area getentitynumber(), (1, 1, 0), 0.5);
            }
            return;
        }
        setdvar(#"g_drawdebuginfovolumes", 0);
        foreach (area in level.var_b086a41a) {
            hideinfovolume(area getentitynumber());
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xff3bb13c, Offset: 0xef00
    // Size: 0x226
    function function_8817dd98() {
        while (true) {
            if (is_true(level.var_5171ee4a)) {
                if (!isdefined(level.var_fcfab54a)) {
                    level.var_fcfab54a = newdebughudelem();
                    level.var_fcfab54a.alignx = "<unknown string>";
                    level.var_fcfab54a.x = 2;
                    level.var_fcfab54a.y = 160;
                    level.var_fcfab54a.fontscale = 1.5;
                    level.var_fcfab54a.color = (1, 1, 1);
                }
                zombie_count = zombie_utility::get_current_zombie_count();
                zombie_left = level.zombie_total;
                zombie_runners = 0;
                var_536fd32b = zombie_utility::get_zombie_array();
                foreach (ai_zombie in var_536fd32b) {
                    if (ai_zombie.zombie_move_speed == "<unknown string>") {
                        zombie_runners++;
                    }
                }
                level.var_fcfab54a settext("<unknown string>" + zombie_count + "<unknown string>" + zombie_left + "<unknown string>" + zombie_runners);
            } else if (isdefined(level.var_fcfab54a)) {
                level.var_fcfab54a destroy();
            }
            waitframe(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x35808682, Offset: 0xf130
    // Size: 0x24
    function testscriptruntimeerrorassert() {
        wait(1);
        assert(0);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x4b989a13, Offset: 0xf160
    // Size: 0x44
    function testscriptruntimeerror2() {
        myundefined = "<unknown string>";
        if (myundefined == 1) {
            println("<unknown string>");
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xd2149d8d, Offset: 0xf1b0
    // Size: 0x1c
    function testscriptruntimeerror1() {
        testscriptruntimeerror2();
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x6c0d15d, Offset: 0xf1d8
    // Size: 0xdc
    function testscriptruntimeerror() {
        wait(5);
        for (;;) {
            if (getdvarstring(#"scr_testscriptruntimeerror") != "<unknown string>") {
                break;
            }
            wait(1);
        }
        myerror = getdvarstring(#"scr_testscriptruntimeerror");
        setdvar(#"scr_testscriptruntimeerror", "<unknown string>");
        if (myerror == "<unknown string>") {
            testscriptruntimeerrorassert();
        } else {
            testscriptruntimeerror1();
        }
        thread testscriptruntimeerror();
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xfcc99592, Offset: 0xf2c0
    // Size: 0x26e
    function function_f12b8a34() {
        barriers = struct::get_array("<unknown string>", "<unknown string>");
        if (isdefined(level._additional_carpenter_nodes)) {
            barriers = arraycombine(barriers, level._additional_carpenter_nodes, 0, 0);
        }
        foreach (barrier in barriers) {
            if (isdefined(barrier.zbarrier)) {
                a_pieces = barrier.zbarrier getzbarrierpieceindicesinstate("<unknown string>");
                if (isdefined(a_pieces)) {
                    for (xx = 0; xx < a_pieces.size; xx++) {
                        chunk = a_pieces[xx];
                        barrier.zbarrier zbarrierpieceusedefaultmodel(chunk);
                        barrier.zbarrier.chunk_health[chunk] = 0;
                    }
                }
                for (x = 0; x < barrier.zbarrier getnumzbarrierpieces(); x++) {
                    barrier.zbarrier setzbarrierpiecestate(x, "<unknown string>");
                    barrier.zbarrier showzbarrierpiece(x);
                }
            }
            if (isdefined(barrier.clip)) {
                barrier.clip triggerenable(1);
                barrier.clip disconnectpaths();
            } else {
                zm_blockers::blocker_connect_paths(barrier.neg_start, barrier.neg_end);
            }
            waitframe(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x3e968273, Offset: 0xf538
    // Size: 0x8c
    function function_29dcbd58() {
        var_a6f3b62c = getdvarint(#"hash_1e8ebf0a767981dd", 0);
        return array(array(var_a6f3b62c / 2, 30), array(var_a6f3b62c - 1, 20));
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xbb8952f5, Offset: 0xf5d0
    // Size: 0x25c
    function function_3a5618f8() {
        self endon(#"hash_63ae1cb168b8e0d7");
        var_a6f3b62c = getdvarint(#"hash_1e8ebf0a767981dd", 0);
        timescale = getdvarint(#"hash_7438b7c847f3c0", 0);
        var_59ed21fc = function_29dcbd58();
        setdvar(#"runtime_time_scale", timescale);
        while (level.round_number < var_a6f3b62c) {
            foreach (round_info in var_59ed21fc) {
                if (level.round_number < round_info[0]) {
                    wait(round_info[1]);
                    break;
                }
            }
            ai_enemies = getaiteamarray(#"axis");
            foreach (ai in ai_enemies) {
                ai kill();
            }
            adddebugcommand("<unknown string>");
            wait(0.2);
        }
        setdvar(#"runtime_time_scale", 1);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x4b282488, Offset: 0xf838
    // Size: 0x44
    function function_21f1fbf1() {
        self notify(#"hash_63ae1cb168b8e0d7");
        setdvar(#"runtime_time_scale", 1);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x707c0820, Offset: 0xf888
    // Size: 0x80
    function function_1762ff96() {
        level.var_afb69372 = !is_true(self.var_afb69372);
        if (is_true(level.var_afb69372)) {
            level thread function_b7e34647();
            return;
        }
        level notify(#"hash_2876f101dd7375df");
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x9e71b793, Offset: 0xf910
    // Size: 0x242
    function function_b7e34647() {
        level endon(#"hash_2876f101dd7375df");
        while (true) {
            zombies = [];
            foreach (archetype in level.var_58903b1f) {
                ai = getaiarchetypearray(archetype, level.zombie_team);
                if (ai.size) {
                    zombies = arraycombine(zombies, ai, 0, 0);
                }
            }
            foreach (zombie in zombies) {
                if (is_true(zombie.need_closest_player)) {
                    record3dtext("<unknown string>", zombie.origin + (0, 0, 72), (1, 0, 0));
                    continue;
                }
                record3dtext("<unknown string>", zombie.origin + (0, 0, 72), (0, 1, 0));
                if (isdefined(zombie.var_26f25576)) {
                    record3dtext(gettime() - zombie.var_26f25576, zombie.origin + (0, 0, 54), (1, 1, 1));
                }
            }
            waitframe(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xc19226c3, Offset: 0xfb60
    // Size: 0x84
    function function_1e285ac2() {
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        level thread function_c774d870();
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xcb23a2a3, Offset: 0xfbf0
    // Size: 0x298
    function function_c774d870() {
        for (;;) {
            wait(0.25);
            cmd = getdvarint(#"hash_5b8785c3d6383b3a", 0);
            if (isdefined(cmd) && cmd == 1) {
                iprintlnbold("<unknown string>");
                zm::function_1442d44f();
                setdvar(#"hash_5b8785c3d6383b3a", 0);
            }
            cmd = getdvarstring(#"hash_2d9d21912cbffb75");
            if (isdefined(cmd) && cmd == 1) {
                iprintlnbold("<unknown string>");
                level.gamedifficulty = 0;
                setdvar(#"hash_2d9d21912cbffb75", 0);
                setdvar(#"hash_5b8785c3d6383b3a", 1);
            }
            cmd = getdvarstring(#"hash_2b205a3ab882058c");
            if (isdefined(cmd) && cmd == 1) {
                iprintlnbold("<unknown string>");
                level.gamedifficulty = 1;
                setdvar(#"hash_2b205a3ab882058c", 0);
                setdvar(#"hash_5b8785c3d6383b3a", 1);
            }
            cmd = getdvarstring(#"hash_393960bacf784966");
            if (isdefined(cmd) && cmd == 1) {
                iprintlnbold("<unknown string>");
                level.gamedifficulty = 2;
                setdvar(#"hash_393960bacf784966", 0);
                setdvar(#"hash_5b8785c3d6383b3a", 1);
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x4
    // Checksum 0x980f8afa, Offset: 0xfe90
    // Size: 0xa6
    function private function_255c7194() {
        player = getplayers()[0];
        queryresult = positionquery_source_navigation(player.origin, 256, 512, 128, 20);
        if (isdefined(queryresult) && queryresult.data.size > 0) {
            return queryresult.data[0];
        }
        return {#origin:player.origin};
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x4
    // Checksum 0xa02ac222, Offset: 0xff40
    // Size: 0x10e
    function private function_b4dcb9ce() {
        player = getplayers()[0];
        direction = player getplayerangles();
        direction_vec = anglestoforward(direction);
        eye = player geteye();
        scale = 8000;
        direction_vec = (direction_vec[0] * scale, direction_vec[1] * scale, direction_vec[2] * scale);
        trace = bullettrace(eye, eye + direction_vec, 0, player);
        return {#origin:trace[#"position"]};
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0xc377ddd5, Offset: 0x10058
    // Size: 0xdc
    function spawn_archetype(spawner_name) {
        spawners = getspawnerarray(spawner_name, "<unknown string>");
        spawn_point = function_b4dcb9ce();
        if (spawners.size == 0) {
            iprintln("<unknown string>" + spawner_name + "<unknown string>");
            return;
        }
        entity = spawners[0] spawnfromspawner(0, 1);
        if (isdefined(entity)) {
            entity forceteleport(spawn_point.origin);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0x10ed7e66, Offset: 0x10140
    // Size: 0xc8
    function kill_archetype(archetype) {
        enemies = getaiarchetypearray(archetype);
        foreach (enemy in enemies) {
            if (isalive(enemy)) {
                enemy kill();
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xfd645019, Offset: 0x10210
    // Size: 0x56c
    function function_8d799ebd() {
        self notify("<unknown string>");
        self endon("<unknown string>");
        level.devcheater = 1;
        if (!self laststand::player_is_in_laststand()) {
            var_d4073f30 = array::randomize(array(#"shotgun_fullauto_t9", #"tr_fastburst_t9", #"sniper_powersemi_t9", #"lmg_fastfire_t9", #"ar_accurate_t9"));
            foreach (w_primary in self getweaponslistprimaries()) {
                self zm_weapons::weapon_take(w_primary);
            }
            self val::set("<unknown string>", "<unknown string>", 1);
            for (i = 0; i < zm_utility::get_player_weapon_limit(self); i++) {
                str_weapon_name = array::random(var_d4073f30);
                arrayremovevalue(var_d4073f30, str_weapon_name);
                weapon = getweapon(str_weapon_name);
                self zm_weapons::weapon_give(weapon, 1, 0, undefined, undefined, array::random(array(#"orange", #"gold")));
                do {
                    s_waitresult = self waittill(#"weapon_change_complete");
                } while (self item_inventory::function_a33744de(s_waitresult.weapon) == 32767);
                item = self item_inventory::function_230ceec4(s_waitresult.weapon);
                if (isdefined(item) && item.networkid != 32767) {
                    var_2a2c98f2 = self item_inventory::function_73ae3380(item, 1);
                    if (isstruct(var_2a2c98f2) && isdefined(var_2a2c98f2.networkid) && var_2a2c98f2.networkid != 32767) {
                        self item_inventory::function_73ae3380(var_2a2c98f2, 2);
                        if (is_true(level.aat_in_use) && !aat::is_exempt_weapon(var_2a2c98f2.var_627c698b)) {
                            str_aat = array::random(array("<unknown string>", "<unknown string>"));
                            self zm_weapons::function_37e9e0cb(var_2a2c98f2, weapon, str_aat);
                        }
                    }
                }
            }
            self val::reset("<unknown string>", "<unknown string>");
            self namespace_dd7e54e3::give_armor(#"armor_item_lv3_t9_sr");
            self namespace_791d0451::function_3fecad82(#"hash_7f98b3dd3cce95aa");
            self namespace_791d0451::function_3fecad82(#"hash_5930cf0eb070e35a");
            self namespace_791d0451::function_3fecad82(#"hash_4110e6372aa77f7e");
            self namespace_791d0451::function_3fecad82(#"hash_47d7a8105237c88");
            self namespace_1cc7b406::give_equipment("<unknown string>", 2);
            self namespace_1cc7b406::give_equipment("<unknown string>", 2);
            self namespace_1cc7b406::give_equipment("<unknown string>", 2);
            self namespace_1cc7b406::give_equipment("<unknown string>", 2);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x8ca8817c, Offset: 0x10788
    // Size: 0x60
    function function_f298dd5c() {
        /#
            if (!isdefined(level.var_9db63456)) {
                level.var_9db63456 = 0;
            }
        #/
        if (!isdefined(level.var_9db63456)) {
            level.var_9db63456 = 1;
        }
        level.var_9db63456 = !level.var_9db63456;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xa67cb50c, Offset: 0x107f0
    // Size: 0x78
    function function_e5713258() {
        if (is_true(level.var_33571ef1)) {
            level notify(#"hash_147174071dbfe31e");
        } else {
            level thread function_15ee6847();
        }
        level.var_33571ef1 = !is_true(level.var_33571ef1);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x4861cea8, Offset: 0x10870
    // Size: 0x286
    function function_15ee6847() {
        self notify("<unknown string>");
        self endon("<unknown string>");
        level endon(#"hash_147174071dbfe31e");
        while (true) {
            teststring = "<unknown string>";
            foreach (player in level.players) {
                teststring += "<unknown string>" + player getentitynumber() + "<unknown string>";
                if (player.sessionstate == "<unknown string>") {
                    teststring += "<unknown string>";
                    continue;
                }
                if (is_true(self.hostmigrationcontrolsfrozen)) {
                    teststring += "<unknown string>";
                    continue;
                }
                if (player zm_player::in_life_brush()) {
                    teststring += "<unknown string>";
                    continue;
                }
                if (player zm_player::in_kill_brush()) {
                    teststring += "<unknown string>";
                    continue;
                }
                if (!player zm_player::in_enabled_playable_area()) {
                    teststring += "<unknown string>";
                    continue;
                }
                if (isdefined(level.player_out_of_playable_area_override) && !is_true(player [[ level.player_out_of_playable_area_override ]]())) {
                    teststring += "<unknown string>";
                    continue;
                }
                teststring += "<unknown string>";
            }
            debug2dtext((400, 100, 0), teststring, (1, 1, 0), undefined, (0, 0, 0), 0.75, 1, 1);
            waitframe(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xa3773a82, Offset: 0x10b00
    // Size: 0x8c
    function function_2f0c6f91() {
        if (!isdefined(level.var_df7f30f4)) {
            level.var_df7f30f4 = 0;
        }
        level.var_df7f30f4 = level.var_df7f30f4 == 0 ? 1 : 0;
        if (!level.var_df7f30f4) {
            level notify(#"hash_21adc62fc2f5bc32");
            return;
        }
        level thread function_5ec967f7();
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x76119710, Offset: 0x10b98
    // Size: 0x2a4
    function function_1a4752d0() {
        if (!isdefined(level.var_d13a2c74)) {
            level.var_d13a2c74 = 0;
        }
        foreach (location in level.contentmanager.locations) {
            if (isdefined(location.instances[#"wallbuy"])) {
                if (isarray(location.instances[#"wallbuy"].contentgroups[#"wallbuy_chalk"])) {
                    var_d82a99e8 = location.instances[#"wallbuy"].contentgroups[#"wallbuy_chalk"][level.var_d13a2c74];
                    player = getplayers()[0];
                    forward = anglestoright(var_d82a99e8.angles);
                    forward = vectornormalize(forward);
                    forward = (forward[0] * 64, forward[1] * 64, forward[2] * 64);
                    var_92f819ac = var_d82a99e8.origin + forward;
                    player setorigin(var_92f819ac);
                    level.var_d13a2c74++;
                    if (level.var_d13a2c74 >= location.instances[#"wallbuy"].contentgroups[#"wallbuy_chalk"].size) {
                        level.var_d13a2c74 = level.var_d13a2c74 >= location.instances[#"wallbuy"].contentgroups[#"wallbuy_chalk"].size - 1;
                    }
                }
            }
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x10896436, Offset: 0x10e48
    // Size: 0x206
    function function_5ec967f7() {
        level endon(#"hash_21adc62fc2f5bc32");
        while (true) {
            foreach (location in level.contentmanager.locations) {
                if (isdefined(location.instances[#"wallbuy"])) {
                    if (isarray(location.instances[#"wallbuy"].contentgroups[#"wallbuy_chalk"])) {
                        foreach (wallbuy in location.instances[#"wallbuy"].contentgroups[#"wallbuy_chalk"]) {
                            player = getplayers()[0];
                            if (player util::is_looking_at(wallbuy.origin)) {
                                sphere(wallbuy.origin, 32, (1, 0, 0), 1, 0, 10, 10);
                            }
                        }
                    }
                }
            }
            waitframe(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xa0881f51, Offset: 0x11058
    // Size: 0x30
    function function_26417ea7() {
        level.var_565d6ce0 = !is_true(level.var_565d6ce0);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x8d36251b, Offset: 0x11090
    // Size: 0xb8
    function function_fb88b423() {
        zombies = getaiarray();
        foreach (zombie in zombies) {
            zombie zombie_utility::setup_zombie_knockdown(level.players[0]);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x93329eb6, Offset: 0x11150
    // Size: 0x1b8
    function init_debug_center_screen() {
        waitframe(1);
        setdvar(#"debug_center_screen", 0);
        level flag::wait_till("<unknown string>");
        zero_idle_movement = 0;
        devgui_base = "<unknown string>";
        adddebugcommand(devgui_base + "<unknown string>" + "<unknown string>" + "<unknown string>");
        for (;;) {
            if (getdvarint(#"debug_center_screen", 0)) {
                if (!isdefined(level.center_screen_debug_hudelem_active) || level.center_screen_debug_hudelem_active == 0) {
                    thread debug_center_screen();
                    zero_idle_movement = getdvarint(#"zero_idle_movement", 0);
                    if (zero_idle_movement == 0) {
                        setdvar(#"zero_idle_movement", 1);
                        zero_idle_movement = 1;
                    }
                }
            } else {
                level notify(#"stop center screen debug");
                if (zero_idle_movement == 1) {
                    setdvar(#"zero_idle_movement", 0);
                    zero_idle_movement = 0;
                }
            }
            wait(0.5);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x1f6c0bfb, Offset: 0x11310
    // Size: 0x238
    function debug_center_screen() {
        level.center_screen_debug_hudelem_active = 1;
        wait(0.1);
        level.center_screen_debug_hudelem1 = newdebughudelem(level.players[0]);
        level.center_screen_debug_hudelem1.alignx = "<unknown string>";
        level.center_screen_debug_hudelem1.aligny = "<unknown string>";
        level.center_screen_debug_hudelem1.fontscale = 1;
        level.center_screen_debug_hudelem1.alpha = 0.5;
        level.center_screen_debug_hudelem1.x = 320 - 1;
        level.center_screen_debug_hudelem1.y = 240;
        level.center_screen_debug_hudelem1 setshader("<unknown string>", 1000, 1);
        level.center_screen_debug_hudelem2 = newdebughudelem(level.players[0]);
        level.center_screen_debug_hudelem2.alignx = "<unknown string>";
        level.center_screen_debug_hudelem2.aligny = "<unknown string>";
        level.center_screen_debug_hudelem2.fontscale = 1;
        level.center_screen_debug_hudelem2.alpha = 0.5;
        level.center_screen_debug_hudelem2.x = 320 - 1;
        level.center_screen_debug_hudelem2.y = 240;
        level.center_screen_debug_hudelem2 setshader("<unknown string>", 1, 480);
        level waittill(#"stop center screen debug");
        level.center_screen_debug_hudelem1 destroy();
        level.center_screen_debug_hudelem2 destroy();
        level.center_screen_debug_hudelem_active = 0;
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x3f9f3951, Offset: 0x11550
    // Size: 0x270
    function function_b5d522f8() {
        self notify("<unknown string>");
        self endon("<unknown string>");
        function_7c9dd642();
        setdvar(#"hash_46eec505e691414c", "<unknown string>");
        setdvar(#"hash_74f1952a0f93d08e", -1);
        while (true) {
            wait(0.1);
            var_9261da43 = getdvar(#"hash_46eec505e691414c", "<unknown string>");
            var_10acd4fa = getdvar(#"hash_74f1952a0f93d08e", -1);
            if (var_9261da43 == "<unknown string>" && var_10acd4fa == -1) {
                continue;
            }
            player = level.players[0];
            if (isplayer(player)) {
                if (var_9261da43 != "<unknown string>") {
                    args = strtok(var_9261da43, "<unknown string>");
                    level zm_ui_inventory::function_7df6bb60(args[0], int(args[1]), player);
                }
                if (var_10acd4fa != -1) {
                    if (var_10acd4fa > 0) {
                        player zm_ui_inventory::function_d8f1d200(#"hash_336cbe1bb6ff213");
                    } else {
                        player zm_ui_inventory::function_d8f1d200(#"");
                    }
                }
            }
            setdvar(#"hash_46eec505e691414c", "<unknown string>");
            setdvar(#"hash_74f1952a0f93d08e", -1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x5f5159ca, Offset: 0x117c8
    // Size: 0x21c
    function function_7c9dd642() {
        while (!isdefined(level.var_a16c38d9)) {
            wait(0.1);
        }
        path = "<unknown string>";
        cmd = "<unknown string>";
        keys = getarraykeys(level.var_a16c38d9);
        foreach (key in keys) {
            mapping = level.var_a16c38d9[key];
            num = pow(2, mapping.numbits);
            for (i = 0; i < num; i++) {
                cmdarg = function_9e72a96(key) + "<unknown string>" + i;
                util::add_devgui(path + function_9e72a96(key) + "<unknown string>" + i, cmd + cmdarg);
            }
        }
        var_30a96cf9 = "<unknown string>";
        cmd = "<unknown string>";
        util::add_devgui(var_30a96cf9 + "<unknown string>", cmd + 1);
        util::add_devgui(var_30a96cf9 + "<unknown string>", cmd + 0);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x54401074, Offset: 0x119f0
    // Size: 0x3d2
    function bunker_entrance_zoned() {
        self notify("<unknown string>");
        self endon("<unknown string>");
        if (getdvarint(#"hash_4cebb1d3b0ee545a", 0) == 0) {
            setdvar(#"hash_4cebb1d3b0ee545a", 1);
        } else {
            setdvar(#"hash_4cebb1d3b0ee545a", 0);
            return;
        }
        a_s_key = struct::get_array(1, "<unknown string>");
        a_e_all = getentitiesinradius((0, 0, 0), 640000);
        a_e_key = [];
        foreach (ent in a_e_all) {
            if (is_true(ent.var_61330f48)) {
                array::add(a_e_key, ent);
            }
        }
        a_key = arraycombine(a_s_key, a_e_key, 0, 0);
        while (getdvarint(#"hash_4cebb1d3b0ee545a", 0)) {
            foreach (key in a_key) {
                var_91d1913b = distance2d(level.players[0].origin, key.origin);
                n_radius = 0.015 * var_91d1913b;
                if (n_radius > 768) {
                    n_radius = 768;
                }
                if (var_91d1913b > 64 && var_91d1913b < 2000) {
                    v_color = (0, 0, 1);
                    if (isdefined(key.targetname)) {
                        str_type = function_9e72a96(key.targetname);
                    } else if (isdefined(key.model)) {
                        str_type = function_9e72a96(key.model);
                    } else {
                        str_type = key.origin;
                    }
                    sphere(key.origin, n_radius, v_color);
                    print3d(key.origin + (0, 0, 24), str_type, v_color);
                }
            }
            waitframe(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0x93222c6e, Offset: 0x11dd0
    // Size: 0x94
    function function_1b531660() {
        if (!isdefined(level.var_77e1430c)) {
            level.var_77e1430c = 0;
        }
        level.var_77e1430c = !level.var_77e1430c;
        if (level.var_77e1430c) {
            callback::on_ai_damage(&function_e7321799);
            return;
        }
        callback::remove_on_ai_damage(&function_e7321799);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0xe1380e6a, Offset: 0x11e70
    // Size: 0x10c
    function function_e7321799(params) {
        damage = params.idamage;
        location = params.vpoint;
        target = self;
        smeansofdeath = params.smeansofdeath;
        if (smeansofdeath == "<unknown string>" || smeansofdeath == "<unknown string>") {
            location = self.origin + (0, 0, 60);
        }
        if (damage) {
            thread function_2cde0af9("<unknown string>" + damage, (1, 1, 1), location, (randomfloatrange(-1, 1), randomfloatrange(-1, 1), 2), 30);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 5, eflags: 0x0
    // Checksum 0x4c168e95, Offset: 0x11f88
    // Size: 0xbe
    function function_2cde0af9(text, color, start, velocity, frames) {
        location = start;
        alpha = 1;
        for (i = 0; i < frames; i++) {
            print3d(location, text, color, alpha, 0.6, 1);
            location += velocity;
            alpha -= 1 / frames * 2;
            waitframe(1);
        }
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x0
    // Checksum 0xba0885d9, Offset: 0x12050
    // Size: 0x74
    function function_1bb72156() {
        level_name = util::get_map_name();
        if (level_name == "<unknown string>") {
            return;
        }
        weapon = self getcurrentweapon();
        namespace_b376a999::function_96db9f3(weapon, 10000);
    }

    // Namespace zm_devgui/zm_devgui
    // Params 1, eflags: 0x0
    // Checksum 0xb98ce553, Offset: 0x120d0
    // Size: 0x50
    function function_f1be4492(dvar) {
        if (dvar.value) {
            level thread function_62e3e0a();
            return;
        }
        level notify(#"hash_49dd681f2dd51383");
    }

    // Namespace zm_devgui/zm_devgui
    // Params 0, eflags: 0x4
    // Checksum 0x4e5030b9, Offset: 0x12128
    // Size: 0x320
    function private function_62e3e0a() {
        self notify("<unknown string>");
        self endon("<unknown string>");
        level endon(#"hash_49dd681f2dd51383");
        while (!isdefined(level.zm_loc_types)) {
            waitframe(1);
        }
        while (true) {
            waitframe(1);
            player = getplayers()[0];
            player_vec = vectornormalize(anglestoforward(player getplayerangles()));
            player_vec_2d = (player_vec[0], player_vec[1], 0);
            foreach (key, array in level.zm_loc_types) {
                color = (1, 1, 1);
                var_10623ec8 = function_9e72a96(key);
                if (key == #"zombie_location") {
                    color = (1, 0, 0);
                }
                foreach (spot in array) {
                    player_spawn = vectornormalize(spot.origin - player.origin);
                    player_spawn_2d = (player_spawn[0], player_spawn[1], 0);
                    dot = vectordot(player_vec_2d, player_spawn_2d);
                    dist = distance(spot.origin, player.origin);
                    if (dot > 0.707 && dist <= getdvarint(#"scr_zombie_spawn_in_view_dist", 0)) {
                        color = (0, 1, 0);
                    }
                    debugstar(spot.origin, 1, color, var_10623ec8, 0.75);
                }
            }
        }
    }

#/
