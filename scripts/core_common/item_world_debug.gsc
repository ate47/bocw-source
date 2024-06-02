// Atian COD Tools GSC CW decompiler test
#using script_340a2e805e35f7a2;
#using script_471b31bd963b388e;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace item_world_debug;

// Namespace item_world_debug/item_world_debug
// Params 0, eflags: 0x5
// Checksum 0x57847ac1, Offset: 0xc8
// Size: 0x54
function private autoexec __init__system__() {
    system::register(#"item_world_debug", &preinit, &postinit, undefined, #"item_world");
}

// Namespace item_world_debug/item_world_debug
// Params 0, eflags: 0x6 linked
// Checksum 0x264680ab, Offset: 0x128
// Size: 0xb4
function private preinit() {
    if (!item_world_util::use_item_spawns()) {
        return;
    }
    gametype = util::get_game_type();
    if (gametype == #"zsurvival") {
        return;
    }
    /#
        level thread function_13c803de();
    #/
    /#
        level thread _setup_devgui();
    #/
    /#
        level thread function_cdd9b388();
    #/
    /#
        level thread function_91ef342();
    #/
}

// Namespace item_world_debug/item_world_debug
// Params 0, eflags: 0x6 linked
// Checksum 0xd6f20ab, Offset: 0x1e8
// Size: 0x54
function private postinit() {
    gametype = util::get_game_type();
    if (gametype == #"zsurvival") {
        return;
    }
    /#
        level thread function_9cc59537();
    #/
}

/#

    // Namespace item_world_debug/item_world_debug
    // Params 2, eflags: 0x4
    // Checksum 0x8702f2e8, Offset: 0x248
    // Size: 0xa4
    function private function_13d7bba(xoffset, yoffset) {
        elem = newdebughudelem();
        elem.alignx = "<unknown string>";
        elem.horzalign = "<unknown string>";
        elem.x = xoffset + 0;
        elem.y = yoffset;
        elem.fontscale = 1;
        elem.color = (1, 1, 1);
        elem.fontstyle3d = "<unknown string>";
        return elem;
    }

    // Namespace item_world_debug/item_world_debug
    // Params 2, eflags: 0x4
    // Checksum 0x1fe2e4e2, Offset: 0x2f8
    // Size: 0x326
    function private function_11421106(typestring, type) {
        tab = "<unknown string>";
        return typestring + "<unknown string>" + (isdefined(level.var_efeab371[type]) ? level.var_efeab371[type] : 0) + "<unknown string>" + int((isdefined(level.var_efeab371[type]) ? level.var_efeab371[type] : 0) / int(max(level.var_66e56764, 1)) * 100) + "<unknown string>" + tab + "<unknown string>" + (isdefined(level.var_d80c35aa[type]) ? level.var_d80c35aa[type] : 0) + "<unknown string>" + int((isdefined(level.var_d80c35aa[type]) ? level.var_d80c35aa[type] : 0) / int(max(level.var_136445c0, 1)) * 100) + "<unknown string>" + tab + "<unknown string>" + (isdefined(level.var_8d9ad8e8[type]) ? level.var_8d9ad8e8[type] : 0) + "<unknown string>" + int((isdefined(level.var_8d9ad8e8[type]) ? level.var_8d9ad8e8[type] : 0) / int(max(level.var_5720c09a, 1)) * 100) + "<unknown string>" + tab + "<unknown string>" + (isdefined(level.var_ecf16fd3[type]) ? level.var_ecf16fd3[type] : 0) + "<unknown string>" + int((isdefined(level.var_ecf16fd3[type]) ? level.var_ecf16fd3[type] : 0) / int(max(level.var_2850ef5, 1)) * 100) + "<unknown string>";
    }

    // Namespace item_world_debug/item_world_debug
    // Params 0, eflags: 0x4
    // Checksum 0x3aafc3c1, Offset: 0x628
    // Size: 0x224
    function private function_bebe535() {
        n_total = 0;
        var_9243cc66 = 0;
        foreach (i, list in level.var_2e96a450) {
            str_set = function_9e72a96(i);
            println(str_set + "<unknown string>" + list);
            n_total += list;
            a_tokens = strtok(str_set, "<unknown string>");
            foreach (token in a_tokens) {
                if (token === "<unknown string>" || token === "<unknown string>") {
                    var_9243cc66 += list;
                    break;
                }
            }
        }
        if (isdefined(level.var_2e96a450[#"paint_can_items"])) {
            var_9243cc66 -= level.var_2e96a450[#"paint_can_items"];
        }
        println("<unknown string>" + n_total);
        println("<unknown string>" + var_9243cc66);
    }

    // Namespace item_world_debug/item_world_debug
    // Params 0, eflags: 0x4
    // Checksum 0x82429aa5, Offset: 0x858
    // Size: 0xb8
    function private function_2248268e() {
        vehicles = getvehiclearray();
        foreach (vehicle in vehicles) {
            if (isdefined(vehicle.scriptvehicletype)) {
                println(vehicle.scriptvehicletype);
            }
        }
    }

    // Namespace item_world_debug/item_world_debug
    // Params 1, eflags: 0x4
    // Checksum 0xc561ffd, Offset: 0x918
    // Size: 0xd0
    function private function_99216e10(mapname) {
        if (mapname === "<unknown string>") {
            world_items = ["<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>"];
            return world_items;
        }
    }

    // Namespace item_world_debug/item_world_debug
    // Params 0, eflags: 0x4
    // Checksum 0x8c68fcb8, Offset: 0x9f0
    // Size: 0x4ec
    function private function_10b50848() {
        self notify("<unknown string>");
        self endon("<unknown string>");
        file = openfile("<unknown string>", "<unknown string>");
        if (file == -1) {
            iprintlnbold("<unknown string>");
            return;
        }
        println("<unknown string>");
        mapname = util::get_map_name();
        world_items = function_99216e10(mapname);
        count = 0;
        item_count = 0;
        while (count < world_items.size) {
            itemlist = function_91b29d2a(world_items[count]);
            foreach (item in itemlist) {
                the_item = item_world::function_2e3efdda(item.origin, undefined, 1, 1, -1, 1);
                if (the_item.size > 0) {
                    type = "<unknown string>";
                    if (isdefined(the_item[0].itementry) && isdefined(the_item[0].itementry.itemtype)) {
                        switch (the_item[0].itementry.itemtype) {
                        case #"survival_essence":
                            type = "<unknown string>";
                            break;
                        case #"survival_scrap":
                            type = "<unknown string>";
                            break;
                        case #"survival_armor_shard":
                            type = "<unknown string>";
                            break;
                        case #"hash_fc797c2a8f4d208":
                            type = "<unknown string>";
                            break;
                        case #"survival_perk":
                            type = "<unknown string>";
                            break;
                        case #"survival_ammo":
                            type = "<unknown string>";
                            break;
                        case #"armor":
                            type = "<unknown string>";
                            break;
                        case #"equipment":
                            type = "<unknown string>";
                            break;
                        case #"field_upgrade":
                            type = "<unknown string>";
                            break;
                        case #"tactical":
                            type = "<unknown string>";
                            break;
                        case #"attachment":
                            type = "<unknown string>";
                            break;
                        case #"resource":
                            type = "<unknown string>";
                            break;
                        default:
                            type = "<unknown string>";
                            break;
                        }
                    }
                    if (isdefined(the_item[0].itementry)) {
                        debug_string = the_item[0].itementry.name + "<unknown string>" + function_9e72a96(the_item[0].targetname) + "<unknown string>" + the_item[0].origin + "<unknown string>" + type + "<unknown string>" + the_item[0].itementry.rarity;
                        fprintln(file, debug_string);
                        item_count++;
                    }
                }
            }
            count++;
        }
        println("<unknown string>" + item_count + "<unknown string>");
        println("<unknown string>");
        closefile(file);
    }

    // Namespace item_world_debug/item_world_debug
    // Params 0, eflags: 0x4
    // Checksum 0xb64db741, Offset: 0xee8
    // Size: 0x4e4
    function private function_b6ea080() {
        self notify("<unknown string>");
        self endon("<unknown string>");
        file = openfile("<unknown string>", "<unknown string>");
        if (file == -1) {
            iprintlnbold("<unknown string>");
            return;
        }
        println("<unknown string>");
        mapname = util::get_map_name();
        world_items = function_99216e10(mapname);
        count = 0;
        item_count = 0;
        while (count < world_items.size) {
            itemlist = function_91b29d2a(world_items[count]);
            foreach (item in itemlist) {
                the_item = item_world::function_2e3efdda(item.origin, undefined, 1, 1, -1, 1);
                if (the_item.size > 0) {
                    type = "<unknown string>";
                    if (isdefined(the_item[0].itementry) && isdefined(the_item[0].itementry.itemtype)) {
                        switch (the_item[0].itementry.itemtype) {
                        case #"ammo":
                            type = "<unknown string>";
                            break;
                        case #"weapon":
                            type = "<unknown string>";
                            break;
                        case #"health":
                            type = "<unknown string>";
                            break;
                        case #"armor":
                            type = "<unknown string>";
                            break;
                        case #"equipment":
                            type = "<unknown string>";
                            break;
                        case #"field_upgrade":
                            type = "<unknown string>";
                            break;
                        case #"tactical":
                            type = "<unknown string>";
                            break;
                        case #"backpack":
                            type = "<unknown string>";
                            break;
                        case #"generic":
                            type = "<unknown string>";
                            break;
                        case #"cash":
                            type = "<unknown string>";
                            break;
                        case #"killstreak":
                            type = "<unknown string>";
                            break;
                        case #"attachment":
                            type = "<unknown string>";
                            break;
                        case #"resource":
                            type = "<unknown string>";
                            break;
                        default:
                            type = "<unknown string>";
                            break;
                        }
                    }
                    if (isdefined(the_item[0].itementry)) {
                        debug_string = the_item[0].itementry.name + "<unknown string>" + function_9e72a96(the_item[0].targetname) + "<unknown string>" + the_item[0].origin + "<unknown string>" + type;
                        fprintln(file, debug_string);
                        item_count++;
                    }
                }
            }
            count++;
        }
        println("<unknown string>" + item_count + "<unknown string>");
        println("<unknown string>");
        closefile(file);
    }

    // Namespace item_world_debug/item_world_debug
    // Params 0, eflags: 0x4
    // Checksum 0x99cf2427, Offset: 0x13d8
    // Size: 0x54c
    function private function_938d798a() {
        str_filename = util::get_map_name() + "<unknown string>";
        file = openfile(str_filename, "<unknown string>");
        if (file == -1) {
            iprintlnbold("<unknown string>" + str_filename);
            return;
        }
        freadln(file);
        freadln(file);
        freadln(file);
        freadln(file);
        var_7099d03 = [];
        while (freadln(file) > 0) {
            var_6f08946b = fgetarg(file, 0);
            var_dd52f0fe = fgetarg(file, 1);
            var_5e4d7301 = fgetarg(file, 2);
            var_6f08946b = strreplace(var_6f08946b, "<unknown string>", "<unknown string>");
            var_5e4d7301 = strreplace(var_5e4d7301, "<unknown string>", "<unknown string>");
            var_5e4d7301 = strreplace(var_5e4d7301, "<unknown string>", "<unknown string>");
            var_5e4d7301 = strreplace(var_5e4d7301, "<unknown string>", "<unknown string>");
            a_vec = [];
            a_vec[0] = float(var_6f08946b);
            a_vec[1] = float(var_dd52f0fe);
            a_vec[2] = float(var_5e4d7301);
            if (!isdefined(var_7099d03)) {
                var_7099d03 = [];
            } else if (!isarray(var_7099d03)) {
                var_7099d03 = array(var_7099d03);
            }
            var_7099d03[var_7099d03.size] = a_vec;
        }
        closefile(file);
        player = getplayers()[0];
        while (level.var_938d798a) {
            foreach (vec in var_7099d03) {
                var_31e25ea2 = (vec[0], vec[1], vec[2]);
                if (distance2d(player.origin, var_31e25ea2) < 8000) {
                    radius = 128;
                    var_84dd2a8b = 4096;
                    if (distancesquared(player.origin, var_31e25ea2) < sqr(var_84dd2a8b)) {
                        radius = max(distance(player.origin, var_31e25ea2) / var_84dd2a8b * radius, 1);
                    }
                    sphere(var_31e25ea2, radius, (1, 0, 0), 1, 0, 10, 20);
                    var_f4b807cb = item_world::function_2e3efdda(var_31e25ea2, undefined, 128, 1);
                    item = var_f4b807cb[0];
                    if (isdefined(item.targetname)) {
                        print3d(item.origin + (0, 0, 32), function_9e72a96(item.targetname), (1, 0, 0), 1, 0.3, 20);
                    }
                }
            }
            waitframe(1);
        }
        iprintlnbold("<unknown string>");
    }

    // Namespace item_world_debug/item_world_debug
    // Params 0, eflags: 0x4
    // Checksum 0x53bd0f86, Offset: 0x1930
    // Size: 0x334
    function private function_f9efe895() {
        var_7f0b4b6b = [];
        buoy_stash = [];
        var_7f0b4b6b = arraycombine(function_91b29d2a("<unknown string>"), function_91b29d2a("<unknown string>"), 1, 0);
        var_7f0b4b6b = arraycombine(var_7f0b4b6b, function_91b29d2a("<unknown string>"), 1, 0);
        var_7f0b4b6b = arraycombine(var_7f0b4b6b, function_91b29d2a("<unknown string>"), 1, 0);
        buoy_stash = function_91b29d2a("<unknown string>");
        var_7f0b4b6b = arraycombine(var_7f0b4b6b, buoy_stash, 1, 0);
        player = util::gethostplayer();
        n_index = 0;
        var_d4714efb = 0;
        wait(1);
        iprintlnbold("<unknown string>");
        while (level.var_f9efe895) {
            if (player adsbuttonpressed() && player function_78931318("<unknown string>")) {
                if (n_index < var_7f0b4b6b.size - 1) {
                    n_index++;
                } else {
                    n_index = 0;
                }
            } else if (player adsbuttonpressed() && player function_78931318("<unknown string>")) {
                if (n_index == 0) {
                    n_index = var_7f0b4b6b.size - 1;
                } else {
                    n_index--;
                }
            }
            if (n_index != var_d4714efb) {
                v_player_pos = var_7f0b4b6b[n_index].origin + anglestoforward(var_7f0b4b6b[n_index].angles) * 96;
                var_543a44a5 = vectortoangles(var_7f0b4b6b[n_index].origin - v_player_pos + (0, 0, 36));
                player setorigin(v_player_pos);
                player setplayerangles(var_543a44a5);
                var_d4714efb = n_index;
                iprintlnbold("<unknown string>" + n_index);
                wait(0.1);
            }
            waitframe(1);
        }
        iprintlnbold("<unknown string>");
    }

    // Namespace item_world_debug/item_world_debug
    // Params 0, eflags: 0x4
    // Checksum 0xf0921d43, Offset: 0x1c70
    // Size: 0x32c
    function private function_f0d72128() {
        var_df1e5fef = [];
        var_df1e5fef = function_91b29d2a("<unknown string>");
        player = util::gethostplayer();
        if (!isdefined(level.var_99026891)) {
            level.var_99026891 = var_df1e5fef.size - 1;
        }
        var_d4714efb = 0;
        v_offset = (0, 0, 50);
        wait(1);
        iprintlnbold("<unknown string>");
        adddebugcommand("<unknown string>");
        while (level.var_f0d72128) {
            if (player jumpbuttonpressed() && player function_78931318("<unknown string>")) {
                if (level.var_99026891 < var_df1e5fef.size - 1) {
                    level.var_99026891++;
                } else {
                    level.var_99026891 = 0;
                }
            } else if (player jumpbuttonpressed() && player function_78931318("<unknown string>")) {
                if (level.var_99026891 == 0) {
                    level.var_99026891 = var_df1e5fef.size - 1;
                } else {
                    level.var_99026891--;
                }
            }
            if (level.var_99026891 != var_d4714efb) {
                debugstar(var_df1e5fef[level.var_99026891].origin, 190, (1, 1, 1));
                v_player_pos = var_df1e5fef[level.var_99026891].origin - anglestoright(var_df1e5fef[level.var_99026891].angles) * 128;
                var_543a44a5 = vectortoangles(var_df1e5fef[level.var_99026891].origin - v_player_pos);
                v_player_pos -= v_offset;
                player setorigin(v_player_pos);
                player setplayerangles(var_543a44a5);
                var_d4714efb = level.var_99026891;
                iprintlnbold("<unknown string>" + level.var_99026891);
                wait(0.1);
            }
            waitframe(1);
        }
        iprintlnbold("<unknown string>");
    }

    // Namespace item_world_debug/item_world_debug
    // Params 1, eflags: 0x0
    // Checksum 0x98adda0a, Offset: 0x1fa8
    // Size: 0x164
    function function_78931318(str_button) {
        switch (str_button) {
        case #"down":
            str_btn = "<unknown string>";
            var_7a00db94 = "<unknown string>";
            break;
        case #"left":
            str_btn = "<unknown string>";
            var_7a00db94 = "<unknown string>";
            break;
        case #"right":
            str_btn = "<unknown string>";
            var_7a00db94 = "<unknown string>";
            break;
        case #"up":
            str_btn = "<unknown string>";
            var_7a00db94 = "<unknown string>";
            break;
        }
        if (isdefined(str_btn)) {
            if (self buttonpressed(str_btn) || self buttonpressed(var_7a00db94)) {
                while (self buttonpressed(str_btn) || self buttonpressed(var_7a00db94)) {
                    waitframe(1);
                }
                return 1;
            }
        }
        return 0;
    }

    // Namespace item_world_debug/item_world_debug
    // Params 1, eflags: 0x4
    // Checksum 0x87115b7b, Offset: 0x2118
    // Size: 0x12c0
    function private function_66b45a31(origin) {
        atv_spawn = function_91b29d2a(#"atv_spawn");
        cargo_truck_spawn = function_91b29d2a(#"cargo_truck_spawn");
        cargo_truck_clearing_spawn = function_91b29d2a(#"cargo_truck_clearing_spawn");
        heli_spawn = function_91b29d2a(#"heli_spawn");
        heli_clearing_spawn = function_91b29d2a(#"heli_clearing_spawn");
        zodiac_spawn = function_91b29d2a(#"zodiac_spawn");
        var_e8750c36 = function_91b29d2a(#"zodiac_spawn_docks");
        var_1901b1fa = function_91b29d2a(#"zodiac_spawn_hydro");
        var_453c640c = function_91b29d2a(#"zodiac_spawn_nuketown");
        var_b351e4a0 = function_91b29d2a(#"zodiac_spawn_skyscraper");
        var_e4dc1e88 = function_91b29d2a(#"zodiac_spawn_hijacked");
        muscle_car_spawn = function_91b29d2a(#"muscle_car_spawn");
        arav_spawn = function_91b29d2a(#"arav_spawn");
        suv_spawn = function_91b29d2a(#"suv_spawn");
        pbr_spawn = function_91b29d2a(#"pbr_spawn");
        foreach (vehicle in atv_spawn) {
            radius = 128;
            var_84dd2a8b = 4096;
            if (distancesquared(origin, vehicle.origin) < sqr(var_84dd2a8b)) {
                radius = max(distance(origin, vehicle.origin) / var_84dd2a8b * radius, 1);
            }
            sphere(vehicle.origin, radius, (1, 0, 0), 1, 0, 10, 20);
        }
        foreach (vehicle in cargo_truck_spawn) {
            radius = 128;
            var_84dd2a8b = 4096;
            if (distancesquared(origin, vehicle.origin) < sqr(var_84dd2a8b)) {
                radius = max(distance(origin, vehicle.origin) / var_84dd2a8b * radius, 1);
            }
            sphere(vehicle.origin, radius, (1, 1, 0), 1, 0, 10, 20);
        }
        foreach (vehicle in cargo_truck_clearing_spawn) {
            radius = 128;
            var_84dd2a8b = 4096;
            if (distancesquared(origin, vehicle.origin) < sqr(var_84dd2a8b)) {
                radius = max(distance(origin, vehicle.origin) / var_84dd2a8b * radius, 1);
            }
            sphere(vehicle.origin, radius, (1, 1, 0), 1, 0, 10, 20);
        }
        foreach (vehicle in heli_spawn) {
            radius = 128;
            var_84dd2a8b = 4096;
            if (distancesquared(origin, vehicle.origin) < sqr(var_84dd2a8b)) {
                radius = max(distance(origin, vehicle.origin) / var_84dd2a8b * radius, 1);
            }
            sphere(vehicle.origin, radius, (1, 0, 1), 1, 0, 10, 20);
        }
        foreach (vehicle in heli_clearing_spawn) {
            radius = 128;
            var_84dd2a8b = 4096;
            if (distancesquared(origin, vehicle.origin) < sqr(var_84dd2a8b)) {
                radius = max(distance(origin, vehicle.origin) / var_84dd2a8b * radius, 1);
            }
            sphere(vehicle.origin, radius, (1, 0, 1), 1, 0, 10, 20);
        }
        foreach (vehicle in zodiac_spawn) {
            radius = 128;
            var_84dd2a8b = 4096;
            if (distancesquared(origin, vehicle.origin) < sqr(var_84dd2a8b)) {
                radius = max(distance(origin, vehicle.origin) / var_84dd2a8b * radius, 1);
            }
            sphere(vehicle.origin, radius, (1, 0.5, 0), 1, 0, 10, 20);
        }
        foreach (vehicle in var_e8750c36) {
            radius = 128;
            var_84dd2a8b = 4096;
            if (distancesquared(origin, vehicle.origin) < sqr(var_84dd2a8b)) {
                radius = max(distance(origin, vehicle.origin) / var_84dd2a8b * radius, 1);
            }
            sphere(vehicle.origin, radius, (1, 0.5, 0), 1, 0, 10, 20);
        }
        foreach (vehicle in var_1901b1fa) {
            radius = 128;
            var_84dd2a8b = 4096;
            if (distancesquared(origin, vehicle.origin) < sqr(var_84dd2a8b)) {
                radius = max(distance(origin, vehicle.origin) / var_84dd2a8b * radius, 1);
            }
            sphere(vehicle.origin, radius, (1, 0.5, 0), 1, 0, 10, 20);
        }
        foreach (vehicle in var_453c640c) {
            radius = 128;
            var_84dd2a8b = 4096;
            if (distancesquared(origin, vehicle.origin) < sqr(var_84dd2a8b)) {
                radius = max(distance(origin, vehicle.origin) / var_84dd2a8b * radius, 1);
            }
            sphere(vehicle.origin, radius, (1, 0.5, 0), 1, 0, 10, 20);
        }
        foreach (vehicle in var_b351e4a0) {
            radius = 128;
            var_84dd2a8b = 4096;
            if (distancesquared(origin, vehicle.origin) < sqr(var_84dd2a8b)) {
                radius = max(distance(origin, vehicle.origin) / var_84dd2a8b * radius, 1);
            }
            sphere(vehicle.origin, radius, (1, 0.5, 0), 1, 0, 10, 20);
        }
        foreach (vehicle in var_e4dc1e88) {
            radius = 128;
            var_84dd2a8b = 4096;
            if (distancesquared(origin, vehicle.origin) < sqr(var_84dd2a8b)) {
                radius = max(distance(origin, vehicle.origin) / var_84dd2a8b * radius, 1);
            }
            sphere(vehicle.origin, radius, (1, 0.5, 0), 1, 0, 10, 20);
        }
        foreach (vehicle in muscle_car_spawn) {
            radius = 128;
            var_84dd2a8b = 4096;
            if (distancesquared(origin, vehicle.origin) < sqr(var_84dd2a8b)) {
                radius = max(distance(origin, vehicle.origin) / var_84dd2a8b * radius, 1);
            }
            sphere(vehicle.origin, radius, (0, 1, 1), 1, 0, 10, 20);
        }
        foreach (vehicle in suv_spawn) {
            radius = 128;
            var_84dd2a8b = 4096;
            if (distancesquared(origin, vehicle.origin) < sqr(var_84dd2a8b)) {
                radius = max(distance(origin, vehicle.origin) / var_84dd2a8b * radius, 1);
            }
            sphere(vehicle.origin, radius, (0, 1, 1), 1, 0, 10, 20);
        }
        foreach (vehicle in arav_spawn) {
            radius = 128;
            var_84dd2a8b = 4096;
            if (distancesquared(origin, vehicle.origin) < sqr(var_84dd2a8b)) {
                radius = max(distance(origin, vehicle.origin) / var_84dd2a8b * radius, 1);
            }
            sphere(vehicle.origin, radius, (0.501961, 0.501961, 0), 1, 0, 10, 20);
        }
        foreach (vehicle in pbr_spawn) {
            radius = 128;
            var_84dd2a8b = 4096;
            if (distancesquared(origin, vehicle.origin) < sqr(var_84dd2a8b)) {
                radius = max(distance(origin, vehicle.origin) / var_84dd2a8b * radius, 1);
            }
            sphere(vehicle.origin, radius, (0, 1, 0), 1, 0, 10, 20);
        }
    }

    // Namespace item_world_debug/item_world_debug
    // Params 1, eflags: 0x4
    // Checksum 0xa7d048fd, Offset: 0x33e0
    // Size: 0x220
    function private function_f4c71526(origin) {
        vehicles = getvehiclearray();
        foreach (vehicle in vehicles) {
            color = (0.75, 0.75, 0.75);
            radius = 128;
            var_84dd2a8b = 4096;
            if (distancesquared(origin, vehicle.origin) < sqr(var_84dd2a8b)) {
                radius = max(distance(origin, vehicle.origin) / var_84dd2a8b * radius, 1);
            }
            if (isdefined(vehicle.scriptvehicletype)) {
                color = (1, 1, 1);
                switch (vehicle.scriptvehicletype) {
                case #"player_atv":
                    color = (0, 1, 1);
                    break;
                case #"cargo_truck_wz":
                    color = (1, 1, 0);
                    break;
                case #"tactical_raft_wz":
                    color = (1, 0.5, 0);
                    break;
                case #"helicopter_light":
                    color = (1, 0, 1);
                    break;
                }
                sphere(vehicle.origin, radius, color, 1, 0, 10, 20);
            }
        }
    }

    // Namespace item_world_debug/item_world_debug
    // Params 0, eflags: 0x4
    // Checksum 0x9b04434f, Offset: 0x3608
    // Size: 0x316c
    function private function_cdd9b388() {
        while (true) {
            if (getdvarint(#"hash_594f4fa67a3b1977", 0)) {
                wait(1);
            } else {
                waitframe(1);
            }
            if (!isdefined(level flag::get(#"item_world_initialized"))) {
                continue;
            }
            if (getdvarint(#"hash_4341150bd02e99a1", 0) > 0) {
                xoffset = 20;
                yoffset = 160;
                var_27afd540 = 15;
                var_9e681fbf = 10;
                if (!isdefined(level.var_f0d0335b)) {
                    level.var_f0d0335b = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540 + var_9e681fbf;
                }
                if (!isdefined(level.var_7f7d26cc)) {
                    level.var_7f7d26cc = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540;
                }
                if (!isdefined(level.var_6deb23ed)) {
                    level.var_6deb23ed = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540 + var_9e681fbf;
                }
                if (!isdefined(level.var_5c6c77b3)) {
                    level.var_5c6c77b3 = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540;
                }
                if (!isdefined(level.var_5471e557)) {
                    level.var_5471e557 = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540;
                }
                if (!isdefined(level.var_544a823a)) {
                    level.var_544a823a = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540;
                }
                if (!isdefined(level.var_eaa15f28)) {
                    level.var_eaa15f28 = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540;
                }
                if (!isdefined(level.var_6fc93583)) {
                    level.var_6fc93583 = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540;
                }
                if (!isdefined(level.var_f2a04fda)) {
                    level.var_f2a04fda = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540;
                }
                if (!isdefined(level.var_721a3621)) {
                    level.var_721a3621 = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540;
                }
                if (!isdefined(level.var_67220c03)) {
                    level.var_67220c03 = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540 + var_9e681fbf;
                }
                if (!isdefined(level.var_58faba13)) {
                    level.var_58faba13 = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540;
                }
                if (!isdefined(level.var_c36fe7fe)) {
                    level.var_c36fe7fe = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540;
                }
                if (!isdefined(level.var_d302f942)) {
                    level.var_d302f942 = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540;
                }
                if (!isdefined(level.var_1e11d9ad)) {
                    level.var_1e11d9ad = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540;
                }
                if (!isdefined(level.var_598c0b05)) {
                    level.var_598c0b05 = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540;
                }
                if (!isdefined(level.var_68135970)) {
                    level.var_68135970 = function_13d7bba(xoffset, yoffset);
                    yoffset += var_27afd540;
                }
                tab = "<unknown string>";
                level.var_f0d0335b settext("<unknown string>" + (isdefined(level.var_d80c35aa[#"blank"]) ? level.var_d80c35aa[#"blank"] : 0) + "<unknown string>" + int((isdefined(level.var_d80c35aa[#"blank"]) ? level.var_d80c35aa[#"blank"] : 0) / int(max(level.var_136445c0, 1) + (isdefined(level.var_d80c35aa[#"blank"]) ? level.var_d80c35aa[#"blank"] : 0)) * 100) + "<unknown string>");
                level.var_7f7d26cc settext("<unknown string>" + level.var_136445c0 + (isdefined(level.var_d80c35aa[#"blank"]) ? level.var_d80c35aa[#"blank"] : 0));
                level.var_6deb23ed settext("<unknown string>" + level.var_66e56764 + tab + tab + "<unknown string>" + level.var_136445c0 + tab + tab + "<unknown string>" + level.var_5720c09a + tab + tab + "<unknown string>" + level.var_2850ef5);
                level.var_5c6c77b3 settext(function_11421106("<unknown string>", "<unknown string>"));
                level.var_5471e557 settext(function_11421106("<unknown string>", "<unknown string>"));
                level.var_544a823a settext(function_11421106("<unknown string>", "<unknown string>"));
                level.var_eaa15f28 settext(function_11421106("<unknown string>", "<unknown string>"));
                level.var_6fc93583 settext(function_11421106("<unknown string>", "<unknown string>"));
                level.var_f2a04fda settext(function_11421106("<unknown string>", "<unknown string>"));
                level.var_721a3621 settext(function_11421106("<unknown string>", "<unknown string>"));
                level.var_67220c03 settext(function_11421106("<unknown string>", "<unknown string>"));
                level.var_c36fe7fe settext(function_11421106("<unknown string>", "<unknown string>"));
                level.var_d302f942 settext(function_11421106("<unknown string>", "<unknown string>"));
                level.var_1e11d9ad settext(function_11421106("<unknown string>", "<unknown string>"));
                level.var_598c0b05 settext(function_11421106("<unknown string>", "<unknown string>"));
                level.var_68135970 settext(function_11421106("<unknown string>", "<unknown string>"));
                level.var_58faba13 settext("<unknown string>" + (isdefined(level.var_f2db6a7f) ? level.var_f2db6a7f : 0));
            } else {
                if (isdefined(level.var_f0d0335b)) {
                    level.var_f0d0335b destroy();
                }
                if (isdefined(level.var_7f7d26cc)) {
                    level.var_7f7d26cc destroy();
                }
                if (isdefined(level.var_6deb23ed)) {
                    level.var_6deb23ed destroy();
                }
                if (isdefined(level.var_5c6c77b3)) {
                    level.var_5c6c77b3 destroy();
                }
                if (isdefined(level.var_5471e557)) {
                    level.var_5471e557 destroy();
                }
                if (isdefined(level.var_544a823a)) {
                    level.var_544a823a destroy();
                }
                if (isdefined(level.var_eaa15f28)) {
                    level.var_eaa15f28 destroy();
                }
                if (isdefined(level.var_6fc93583)) {
                    level.var_6fc93583 destroy();
                }
                if (isdefined(level.var_f2a04fda)) {
                    level.var_f2a04fda destroy();
                }
                if (isdefined(level.var_721a3621)) {
                    level.var_721a3621 destroy();
                }
                if (isdefined(level.var_67220c03)) {
                    level.var_67220c03 destroy();
                }
                if (isdefined(level.var_58faba13)) {
                    level.var_58faba13 destroy();
                }
                if (isdefined(level.var_c36fe7fe)) {
                    level.var_c36fe7fe destroy();
                }
                if (isdefined(level.var_d302f942)) {
                    level.var_d302f942 destroy();
                }
                if (isdefined(level.var_1e11d9ad)) {
                    level.var_1e11d9ad destroy();
                }
                if (isdefined(level.var_598c0b05)) {
                    level.var_598c0b05 destroy();
                }
                if (isdefined(level.var_68135970)) {
                    level.var_68135970 destroy();
                }
            }
            if (getdvarint(#"hash_66ec171c69a26bfe", 0) > 0) {
                level clientfield::set("<unknown string>", 0);
            }
            if (getdvarint(#"hash_cc335a24301e7a1", 0) > 0) {
                if (!level.var_1d8e6dd8) {
                    level.var_1d8e6dd8 = 1;
                    level thread function_b6ea080();
                }
            }
            if (getdvarint(#"hash_7504a27146161805", 0) > 0) {
                if (!level.var_1d8e6dd8) {
                    level.var_1d8e6dd8 = 1;
                    level thread function_10b50848();
                }
            }
            if (getdvarint(#"hash_7701b1eb7e173692", 0)) {
                if (!level.var_938d798a) {
                    wait(0.5);
                    level.var_938d798a = 1;
                    level thread function_938d798a();
                }
            }
            if (getdvarint(#"hash_7701b1eb7e173692", 0) == 0) {
                level.var_938d798a = 0;
            }
            if (getdvarint(#"hash_cb3296a761d4f6c", 0)) {
                if (!level.var_f9efe895) {
                    wait(0.5);
                    level.var_f9efe895 = 1;
                    level thread function_f9efe895();
                }
            }
            if (getdvarint(#"hash_cb3296a761d4f6c", 0) == 0) {
                level.var_f9efe895 = 0;
            }
            if (getdvarint(#"hash_4f4c47d52d6ad262", 0)) {
                if (!level.var_f0d72128) {
                    wait(0.5);
                    level.var_f0d72128 = 1;
                    level thread function_f0d72128();
                }
            }
            if (getdvarint(#"hash_4f4c47d52d6ad262", 0) == 0) {
                level.var_f0d72128 = 0;
            }
            if (getdvarint(#"hash_170b29b9b506feed", 0)) {
                setdvar(#"hash_170b29b9b506feed", 0);
                level thread function_bebe535();
            }
            if (getdvarint(#"hash_38ea7228f76d733f", 0)) {
                setdvar(#"hash_38ea7228f76d733f", 0);
                level thread function_2248268e();
            }
            if (getdvarint(#"hash_cc335a24301e7a1", 0) == 0) {
                level.var_1d8e6dd8 = 0;
            } else {
                setdvar(#"hash_cc335a24301e7a1", 0);
            }
            if (getdvarint(#"hash_7504a27146161805", 0) == 0) {
                level.var_1d8e6dd8 = 0;
            } else {
                setdvar(#"hash_7504a27146161805", 0);
            }
            if (getdvarint(#"hash_3fdd3b60f349d462", 0) > 0) {
                players = getplayers();
                if (players.size <= 0) {
                    continue;
                }
                origin = players[0].origin;
                var_f4b807cb = item_world::function_2e3efdda(origin, undefined, 128, 2000);
                foreach (item in var_f4b807cb) {
                    hidden = item.hidetime < 0 ? "<unknown string>" : "<unknown string>";
                    print3d(item.origin + (0, 0, 10), "<unknown string>" + item.networkid + hidden + "<unknown string>" + item.itementry.name, (1, 0.5, 0), 1, 0.4);
                }
            }
            if (getdvarint(#"hash_52c63fdd1c1d96ac", 0)) {
                itemtype = getdvarint(#"hash_52c63fdd1c1d96ac", 1);
                players = getplayers();
                if (players.size <= 0) {
                    continue;
                }
                origin = players[0].origin;
                if (itemtype == 18) {
                    function_66b45a31(origin);
                } else if (itemtype == 19) {
                    function_f4c71526(origin);
                } else {
                    var_f4b807cb = item_world::function_2e3efdda(origin, undefined, 4000, 30000, -1, 0);
                    foreach (item in var_f4b807cb) {
                        if (isdefined(item.itementry) && isdefined(item.itementry.rarity)) {
                            switch (item.itementry.rarity) {
                            case #"common":
                                color = (0, 1, 0);
                                break;
                            case #"rare":
                                color = (0, 0, 1);
                                break;
                            case #"legendary":
                                color = (1, 0.5, 0);
                                break;
                            case #"epic":
                                color = (1, 0, 1);
                                break;
                            default:
                                color = (0.75, 0.75, 0.75);
                                break;
                            }
                        } else {
                            color = (0.75, 0.75, 0.75);
                        }
                        radius = 64;
                        var_84dd2a8b = 2048;
                        if (distancesquared(origin, item.origin) < sqr(var_84dd2a8b)) {
                            radius = max(distance(origin, item.origin) / var_84dd2a8b * radius, 1);
                        }
                        switch (itemtype) {
                        case 1:
                            color = (1, 0, 1);
                            sphere(item.origin, radius, color, 1, 0, 10, 20);
                            if (isdefined(item.targetname)) {
                                print3d(item.origin + (0, 0, 32), function_9e72a96(item.targetname), color, 1, 0.3, 20);
                            }
                            break;
                        case 2:
                            if (isdefined(item.itementry)) {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                                if (isdefined(item.targetname)) {
                                    print3d(item.origin + (0, 0, 32), function_9e72a96(item.targetname), color, 1, 0.3, 20);
                                }
                            }
                        case 3:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"survival_ammo") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                                if (isdefined(item.targetname)) {
                                    print3d(item.origin + (0, 0, 32), function_9e72a96(item.targetname), color, 1, 0.3, 20);
                                }
                            }
                            break;
                        case 4:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"weapon") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 5:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"armor") {
                                if (item.itementry.name == "<unknown string>") {
                                    sphere(item.origin, radius, (0, 1, 0), 1, 0, 10, 20);
                                } else if (item.itementry.name == "<unknown string>") {
                                    sphere(item.origin, radius, (0, 0, 1), 1, 0, 10, 20);
                                } else if (item.itementry.name == "<unknown string>") {
                                    sphere(item.origin, radius, (1, 1, 0), 1, 0, 10, 20);
                                } else {
                                    sphere(item.origin, radius, color, 1, 0, 10, 20);
                                }
                                if (isdefined(item.itementry) && item.itementry.itemtype === #"weapon") {
                                    sphere(item.origin, radius, color, 1, 0, 10, 20);
                                }
                            }
                            break;
                        case 6:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"equipment") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 7:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"attachment") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 8:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"survival_armor_shard") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 9:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"survival_essence") {
                                if (item.itementry.amount === 1) {
                                    color = (0.75, 0.75, 0.75);
                                } else {
                                    radius *= 2;
                                }
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 10:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"survival_scrap") {
                                if (item.itementry.amount === 1) {
                                    color = (0.75, 0.75, 0.75);
                                } else {
                                    radius *= 2;
                                }
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 11:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"survival_perk") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 12:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"hash_fc797c2a8f4d208") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 13:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"generic") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 14:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"resource") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 16:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"field_upgrade") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 17:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"tactical") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        }
                    }
                }
            }
            if (getdvarint(#"hash_594f4fa67a3b1977", 0)) {
                itemtype = getdvarint(#"hash_594f4fa67a3b1977", 1);
                players = getplayers();
                if (players.size <= 0) {
                    continue;
                }
                origin = players[0].origin;
                if (itemtype == 17) {
                    function_66b45a31(origin);
                } else if (itemtype == 18) {
                    function_f4c71526(origin);
                } else if (itemtype == 19) {
                    var_83f919af = arraycombine(function_91b29d2a(#"world_stash"), function_91b29d2a(#"hash_7ce3442d00bdfee4"), 1, 0);
                    var_83f919af = arraycombine(var_83f919af, function_91b29d2a(#"hash_1aa42430861b65d5"), 1, 0);
                    var_83f919af = arraycombine(var_83f919af, function_91b29d2a(#"hash_553eee9af583811e"), 1, 0);
                    foreach (point in var_83f919af) {
                        player = level.players[0];
                        if (vectordot(player.origin, point.origin) > 0) {
                            color = (0, 0, 1);
                            radius = 128;
                            var_84dd2a8b = 4096;
                            if (distancesquared(origin, point.origin) < sqr(var_84dd2a8b)) {
                                radius = max(distance(origin, point.origin) / var_84dd2a8b * radius, 1);
                            }
                            stash_items = item_world::function_2e3efdda(point.origin, undefined, 100, 1);
                            if (stash_items.size > 0) {
                                switch (stash_items[0].targetname) {
                                case #"world_dynent_stash_health":
                                    color = (1, 0, 0);
                                    break;
                                case #"world_dynent_stash_supply":
                                    color = (0, 1, 0);
                                    break;
                                case #"hash_ea6664e89a0bff6":
                                    color = (0.501961, 0.501961, 0);
                                    break;
                                }
                                sphere(point.origin, radius, color, 1, 0, 10, 20);
                                continue;
                            }
                            color = (0.75, 0.75, 0.75);
                            sphere(point.origin, radius, color, 1, 0, 10, 20);
                        }
                    }
                } else {
                    var_f4b807cb = item_world::function_2e3efdda(origin, undefined, 4000, 30000, -1, 0);
                    foreach (item in var_f4b807cb) {
                        if (isdefined(item.itementry) && isdefined(item.itementry.rarity)) {
                            switch (item.itementry.rarity) {
                            case #"common":
                                color = (0, 1, 0);
                                break;
                            case #"rare":
                                color = (0, 0, 1);
                                break;
                            case #"legendary":
                                color = (1, 0.5, 0);
                                break;
                            case #"epic":
                                color = (1, 0, 1);
                                break;
                            default:
                                color = (0.75, 0.75, 0.75);
                                break;
                            }
                        } else {
                            color = (0.75, 0.75, 0.75);
                        }
                        radius = 64;
                        var_84dd2a8b = 2048;
                        if (distancesquared(origin, item.origin) < sqr(var_84dd2a8b)) {
                            radius = max(distance(origin, item.origin) / var_84dd2a8b * radius, 1);
                        }
                        switch (itemtype) {
                        case 1:
                            color = (1, 0, 1);
                            sphere(item.origin, radius, color, 1, 0, 10, 20);
                            if (isdefined(item.targetname)) {
                                print3d(item.origin + (0, 0, 32), function_9e72a96(item.targetname), color, 1, 0.3, 20);
                            }
                            break;
                        case 2:
                            if (isdefined(item.itementry)) {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                        case 3:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"ammo") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 4:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"weapon") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 5:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"health") {
                                if (item.itementry.name == "<unknown string>") {
                                    sphere(item.origin, radius, (0, 1, 0), 1, 0, 10, 20);
                                } else if (item.itementry.name == "<unknown string>") {
                                    sphere(item.origin, radius, (0, 0, 1), 1, 0, 10, 20);
                                } else if (item.itementry.name == "<unknown string>") {
                                    sphere(item.origin, radius, (1, 0.5, 0), 1, 0, 10, 20);
                                } else {
                                    sphere(item.origin, radius, color, 1, 0, 10, 20);
                                }
                            }
                            break;
                        case 6:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"armor") {
                                if (item.itementry.name == "<unknown string>") {
                                    sphere(item.origin, radius, (0, 1, 0), 1, 0, 10, 20);
                                } else if (item.itementry.name == "<unknown string>") {
                                    sphere(item.origin, radius, (0, 0, 1), 1, 0, 10, 20);
                                } else if (item.itementry.name == "<unknown string>") {
                                    sphere(item.origin, radius, (1, 1, 0), 1, 0, 10, 20);
                                } else {
                                    sphere(item.origin, radius, color, 1, 0, 10, 20);
                                }
                            }
                            break;
                        case 7:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"equipment") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 8:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"backpack") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 9:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"attachment") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 10:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"generic") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 11:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"killstreak") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 12:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"quest") {
                                sphere(item.origin, radius, (1, 0.5, 0), 1, 0, 10, 20);
                            }
                            break;
                        case 13:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"cash") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 14:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"resource") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 15:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"field_upgrade") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        case 16:
                            if (isdefined(item.itementry) && item.itementry.itemtype === #"tactical") {
                                sphere(item.origin, radius, color, 1, 0, 10, 20);
                            }
                            break;
                        }
                    }
                }
            }
            if (getdvarint(#"hash_5d7b010a8d4f8666", 0)) {
                if (isdefined(level.var_8819644a)) {
                    foreach (info in level.var_8819644a) {
                        vehicle = info.vehicle;
                        spawnpoint = info.origin;
                        players = getplayers();
                        if (players.size <= 0) {
                            continue;
                        }
                        origin = players[0].origin;
                        if (isdefined(vehicle)) {
                            radius = 64;
                            var_84dd2a8b = 2048;
                            if (distancesquared(origin, spawnpoint) < sqr(var_84dd2a8b)) {
                                radius = max(distance(origin, spawnpoint) / var_84dd2a8b * radius, 10);
                            }
                            sphere(spawnpoint, radius, (1, 1, 0), 1, 0, 10, 20);
                            line(spawnpoint, vehicle.origin, (0, 1, 0));
                            sphere(vehicle.origin, radius, (1, 0, 0), 1, 0, 10, 20);
                        }
                    }
                }
            }
        }
    }

    // Namespace item_world_debug/item_world_debug
    // Params 0, eflags: 0x4
    // Checksum 0x7a1d5dd5, Offset: 0x6780
    // Size: 0x70
    function private function_13c803de() {
        level endon(#"end_game");
        self notify("<unknown string>");
        self endon("<unknown string>");
        while (true) {
            level waittill(#"host_migration_begin");
            level thread _setup_devgui();
        }
    }

    // Namespace item_world_debug/item_world_debug
    // Params 0, eflags: 0x4
    // Checksum 0x242b6f96, Offset: 0x67f8
    // Size: 0x2e4
    function private _setup_devgui() {
        while (!canadddebugcommand()) {
            waitframe(1);
        }
        mapname = util::get_map_name();
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
    }

    // Namespace item_world_debug/item_world_debug
    // Params 0, eflags: 0x0
    // Checksum 0x1216920a, Offset: 0x6ae8
    // Size: 0x8e
    function function_91ef342() {
        level endon(#"game_ended");
        while (true) {
            r = level waittill(#"devgui_bot");
            switch (r.args[0]) {
            case #"hash_29f59f6b62fdbf94":
                function_c07eae4e();
                break;
            }
        }
    }

    // Namespace item_world_debug/item_world_debug
    // Params 0, eflags: 0x0
    // Checksum 0x9b9b5460, Offset: 0x6b80
    // Size: 0x246
    function function_c07eae4e() {
        var_6e5bbee1 = [];
        itemcount = function_8322cf16();
        for (i = 0; i < itemcount; i++) {
            item = function_b1702735(i);
            if (isdefined(item.itementry) && item.itementry.itemtype == "<unknown string>" && item.itementry.weapon.isprimary) {
                array::add(var_6e5bbee1, item_world_util::function_35e06774(item.itementry), 0);
            }
        }
        var_6e5bbee1 = array::randomize(var_6e5bbee1);
        if (var_6e5bbee1.size == 0) {
            return;
        }
        players = getplayers();
        var_9db8ea1b = 0;
        foreach (player in players) {
            if (isbot(player)) {
                weapon = var_6e5bbee1[var_9db8ea1b];
                player giveweapon(weapon);
                player givemaxammo(weapon);
                player switchtoweaponimmediate(weapon);
                var_9db8ea1b++;
                if (var_9db8ea1b >= var_6e5bbee1.size) {
                    var_9db8ea1b = 0;
                }
            }
        }
    }

    // Namespace item_world_debug/item_world_debug
    // Params 0, eflags: 0x0
    // Checksum 0xa3a7a2d3, Offset: 0x6dd0
    // Size: 0x1e7a
    function function_9cc59537() {
        level endon(#"game_ended");
        var_55a05f87 = 0;
        var_cbc7aaf6 = 0;
        var_ebd66b56 = [];
        level flag::wait_till("<unknown string>");
        while (!isdefined(level.players) || !isplayer(level.players[0])) {
            wait(1);
        }
        level.players[0] endon(#"disconnect");
        gametype = util::get_game_type();
        var_796ab805 = [];
        while (true) {
            wait(1);
            if (!getdvarint(#"hash_68dcd0d52e11b957", 0)) {
                continue;
            }
            do {
                waitframe(8);
                item_spawn_drops = level.item_spawn_drops;
                if (isarray(item_spawn_drops)) {
                    foreach (drop in item_spawn_drops) {
                        if (isdefined(drop) && !is_true(drop.var_49d5e215)) {
                            if (isdefined(drop.itementry.killstreak)) {
                                if (!isdefined(var_796ab805[drop.itementry.name])) {
                                    var_796ab805[drop.itementry.name] = [];
                                } else if (!isarray(var_796ab805[drop.itementry.name])) {
                                    var_796ab805[drop.itementry.name] = array(var_796ab805[drop.itementry.name]);
                                }
                                var_796ab805[drop.itementry.name][var_796ab805[drop.itementry.name].size] = drop.itementry.killstreak;
                            } else if (isdefined(drop.itementry.name) && drop.itementry.name != "<unknown string>") {
                                if (!isdefined(var_796ab805[drop.itementry.name])) {
                                    var_796ab805[drop.itementry.name] = [];
                                } else if (!isarray(var_796ab805[drop.itementry.name])) {
                                    var_796ab805[drop.itementry.name] = array(var_796ab805[drop.itementry.name]);
                                }
                                var_796ab805[drop.itementry.name][var_796ab805[drop.itementry.name].size] = drop.itementry.name;
                            }
                            drop.var_49d5e215 = 1;
                        }
                    }
                    var_bd9acc19 = 150;
                    foreach (i, item_drop in var_796ab805) {
                        var_bd9acc19 += 24;
                        var_6abd8aff = function_9e72a96(i) + "<unknown string>" + item_drop.size;
                        debug2dtext((810, var_bd9acc19, 0), var_6abd8aff, (1, 1, 1), undefined, undefined, undefined, undefined, 8);
                        if (getdvarint(#"hash_156f2cf900b33f9f", 0)) {
                            print(var_6abd8aff + "<unknown string>");
                        }
                    }
                    if (getdvarint(#"hash_156f2cf900b33f9f", 0)) {
                        setdvar(#"hash_156f2cf900b33f9f", 0);
                    }
                }
                var_1d9375fc = struct::get_array("<unknown string>", "<unknown string>");
                foreach (group in var_1d9375fc) {
                    group.debug_spawnpoints = [];
                    var_f0179f4a = getdvarstring(#"hash_230734aeaaf8671", "<unknown string>");
                    if (isstring(group.target) && (var_f0179f4a == "<unknown string>" || function_d72aa67e(var_f0179f4a, group.target))) {
                        group.debug_spawnpoints = function_91b29d2a(group.target);
                    }
                }
                var_7cb887a8 = [];
                foreach (group in var_1d9375fc) {
                    itemlistbundle = getscriptbundle(group.scriptbundlename);
                    if (!isdefined(itemlistbundle) || is_true(itemlistbundle.vehiclespawner) || group.debug_spawnpoints.size == 0 || !isdefined(group.targetname) || itemlistbundle.name === "<unknown string>" || itemlistbundle.name === "<unknown string>" || itemlistbundle.name === "<unknown string>" || !is_true(itemlistbundle.var_4f220d03) && gametype === "<unknown string>") {
                        continue;
                    } else if (itemlistbundle.name === "<unknown string>") {
                        var_df1e5fef = arraysortclosest(group.debug_spawnpoints, level.players[0].origin, 85, 1, getdvarint(#"hash_6ac8a75bc45c3633", 10000));
                        foreach (point in var_df1e5fef) {
                            sphere(point.origin, 16, (1, 1, 1), 1, 0, 16, 8);
                        }
                        continue;
                    }
                    spawn_points = arraysortclosest(group.debug_spawnpoints, level.players[0].origin, 85, 1, getdvarint(#"hash_6ac8a75bc45c3633", 10000));
                    foreach (point in spawn_points) {
                        if (getdvarint(#"hash_7ae201bf5aee2017", 0)) {
                            var_4b82457c = distance2d(point.origin, level.players[0].origin);
                            n_radius = getdvarfloat(#"hash_69e2c57538bbcb9b", 0.015) * var_4b82457c;
                            if (n_radius > 128) {
                                n_radius = 128;
                            }
                            switch (itemlistbundle.name) {
                            case #"hash_102716229ce6474b":
                                color = (1, 1, 0);
                                break;
                            case #"hash_102715229ce64598":
                                color = (1, 0, 1);
                                break;
                            default:
                                color = (0, 1, 0);
                                break;
                            }
                            sphere(point.origin, n_radius, color, 1, 0, 16, 8);
                            continue;
                        }
                        if (level.players[0] util::is_player_looking_at(point.origin, 0.6, 0)) {
                            b_failed = 0;
                            var_47748885 = 28;
                            var_c5330f11 = 32;
                            v_color = (1, 0, 1);
                            if (isdefined(itemlistbundle.itemlist[0])) {
                                if (itemlistbundle.itemlist[0].itementry === "<unknown string>" || itemlistbundle.itemlist[0].itementry === "<unknown string>" || itemlistbundle.itemlist[0].itementry === "<unknown string>" || itemlistbundle.itemlist[0].itementry === "<unknown string>" || itemlistbundle.itemlist[0].itementry === "<unknown string>" || itemlistbundle.itemlist[0].itementry === "<unknown string>") {
                                    v_color = (1, 1, 0);
                                    var_47748885 = 4;
                                    var_c5330f11 = 4;
                                }
                            } else {
                                continue;
                            }
                            dynents = [];
                            if (isdefined(group.targetname)) {
                                dynents = function_c79d31c4(group.targetname, 1);
                                if (getdvarint(#"hash_f6b57eebb5965e6", 0) && dynents.size >= getdvarint(#"hash_6a4b2cc3aa3a5d21", 50)) {
                                    foreach (i, stash in dynents) {
                                        if (i >= getdvarint(#"hash_6a4b2cc3aa3a5d21", 50)) {
                                            continue;
                                        }
                                        waitframe(2);
                                        stash thread namespace_65181344::function_fd87c780(stash.itemlistbundle.name, stash.available, 3);
                                    }
                                    setdvar(#"hash_f6b57eebb5965e6", 0);
                                }
                            }
                            items = item_world::function_2e3efdda(point.origin, undefined, 1, var_47748885, -1, 1);
                            if (items.size > 0) {
                                v_color = (0, 1, 0);
                                dynent = undefined;
                                foreach (dynent in dynents) {
                                    if (dynent.origin == point.origin) {
                                        var_a835512 = function_ffdbe8c2(dynent);
                                        if (var_a835512 === 3) {
                                            v_color = (1, 1, 0);
                                        } else if (var_a835512 === 2) {
                                            v_color = (1, 0.5, 0);
                                        }
                                        break;
                                    }
                                }
                            }
                            n_radius = 4;
                            var_7cb887a8 = [];
                            var_3e832e74 = 360 / 8;
                            v_angles = point.angles;
                            var_c24ea284 = undefined;
                            var_4b82457c = distance2d(point.origin, level.players[0].origin);
                            var_24b0b1ea = itemlistbundle.var_7fb0967b;
                            if (isdefined(var_24b0b1ea)) {
                                if (items.size > 0) {
                                    var_abc7e003 = item_world::function_2e3efdda(point.origin, undefined, 20, var_24b0b1ea, -1, 1);
                                    var_abc7e003 = arraysortclosest(var_abc7e003, point.origin, 10, var_47748885);
                                    foreach (item_type in itemlistbundle.itemlist) {
                                        foreach (var_d76a7255 in var_abc7e003) {
                                            if (item_type.itementry === var_d76a7255.itementry.name && var_d76a7255.itementry.name === items[0].itementry.name) {
                                                print3d(point.origin + (0, 0, 18), item_type.itementry + "<unknown string>" + var_24b0b1ea, (1, 0.5, 0), 1, 0.3, 8);
                                                line(var_d76a7255.origin, point.origin, (1, 0.5, 0), 1, 0, 8);
                                            }
                                        }
                                    }
                                }
                            }
                            up = vectorscale(anglestoup(v_angles), 16);
                            if (is_true(itemlistbundle.supplystash)) {
                                n_depth = 9;
                                n_width = 14;
                                if (itemlistbundle.name === "<unknown string>" || itemlistbundle.name === "<unknown string>" || itemlistbundle.name === "<unknown string>") {
                                    n_depth = 12;
                                    n_width = 48;
                                }
                                var_7cb887a8[0] = up + vectorscale(anglestoforward(v_angles), n_depth);
                                var_7cb887a8[1] = up + vectorscale(anglestoforward(v_angles) * -1, n_depth + 4);
                                var_7cb887a8[2] = up + vectorscale(anglestoright(v_angles), n_width);
                                var_7cb887a8[3] = up + vectorscale(anglestoright(v_angles) * -1, n_width);
                            } else {
                                for (i = 0; i < 8; i++) {
                                    var_7cb887a8[i] = up + vectorscale(anglestoforward(v_angles), var_47748885);
                                    v_angles += (0, var_3e832e74, 0);
                                }
                            }
                            var_2e0e7774 = arraysortclosest(spawn_points, point.origin, 20, 1, var_c5330f11);
                            foreach (close in var_2e0e7774) {
                                if (bullettracepassed(up, close.origin, 0, level.players[0])) {
                                    v_color = (0, 0, 1);
                                    b_failed = 1;
                                    line(close.origin, point.origin, v_color, 1, 0, 8);
                                    circle(point.origin, var_c5330f11 / 2, v_color, 0, 1, 8);
                                    print3d(point.origin + (0, 0, 24), sqrt(distancesquared(point.origin, close.origin)), v_color, 1, 0.3, 8);
                                }
                            }
                            if (is_true(itemlistbundle.supplystash)) {
                                var_47748885 = n_depth;
                                foreach (i, v_test in var_7cb887a8) {
                                    if (i > 2) {
                                        var_47748885 = n_width;
                                    }
                                    a_trace = bullettrace(point.origin + (0, 0, 12), v_test, 0, level.players[0]);
                                    if (distancesquared(a_trace[#"position"], point.origin + (0, 0, 24)) < var_47748885 * var_47748885 - 20 && !isdefined(a_trace[#"dynent"]) || point.angles[0] > 30 || point.angles[0] < -30 || point.angles[2] < -30 || point.angles[2] > 30) {
                                        v_color = (1, 0, 0);
                                        b_failed = 1;
                                        if (var_4b82457c < 256) {
                                            debugstar(a_trace[#"position"], 8, v_color);
                                        }
                                    }
                                }
                                var_47748885 = 9;
                            } else {
                                foreach (v_test in var_7cb887a8) {
                                    a_trace = bullettrace(up, v_test, 0, level.players[0]);
                                    if (distancesquared(a_trace[#"position"], up) < var_47748885 * var_47748885 - 6 && !isdefined(a_trace[#"dynent"])) {
                                        v_color = (1, 0, 0);
                                        b_failed = 1;
                                        if (var_4b82457c < 256) {
                                            debugstar(a_trace[#"position"], 8, v_color);
                                        }
                                    }
                                }
                            }
                            n_radius = getdvarfloat(#"hash_69e2c57538bbcb9b", 0.015) * var_4b82457c;
                            if (isdefined(dynent) && (v_color == (0, 1, 0) || v_color == (1, 1, 0) || v_color == (1, 0.5, 0) || v_color == (1, 0, 0))) {
                                point = dynent;
                            }
                            if (n_radius > 32) {
                                n_radius = 32;
                            }
                            if (var_4b82457c <= 1024) {
                                if (is_true(itemlistbundle.supplystash) && v_angles !== (0, 0, 0)) {
                                    function_47351fa3(point.origin, v_angles, v_color, 8);
                                    box(point.origin + vectorscale(anglestoup(v_angles), 16), (n_depth + 4, n_width, 16) * -1, (n_depth, n_width, 16), v_angles, v_color, 1, 0, 8);
                                } else {
                                    circle(point.origin, var_47748885, v_color, 0, 1, 8);
                                }
                                if (var_4b82457c < 512) {
                                    print3d(point.origin + (0, 0, 48), function_9e72a96(group.targetname), v_color, 1, 0.3, 8);
                                    print3d(point.origin + (0, 0, 42), function_9e72a96(point.targetname), v_color, 1, 0.3, 8);
                                    if (var_4b82457c < 256 && level.players[0] util::is_player_looking_at(point.origin, 0.87, 0)) {
                                        print3d(point.origin + (0, 0, 36), itemlistbundle.name, v_color, 1, 0.3, 8);
                                        print3d(point.origin + (0, 0, 30), point.origin, v_color, 1, 0.3, 8);
                                        if (dynents.size > 0) {
                                            var_a1bd87ef = getdynentarray(point.targetname);
                                            print3d(point.origin + (0, 0, 24), "<unknown string>" + var_a1bd87ef.size, (1, 1, 0), 1, 0.3, 8);
                                            print3d(point.origin + (0, 0, 24), "<unknown string>" + var_a1bd87ef.size, (0, 1, 0), 1, 0.3, 8);
                                            print3d(point.origin + (0, 0, 24), "<unknown string>" + dynents.size, (1, 1, 0), 1, 0.3, 8);
                                            print3d(point.origin + (0, 0, 18), "<unknown string>" + group.debug_spawnpoints.size, (1, 1, 0), 1, 0.3, 8);
                                        }
                                    }
                                }
                                continue;
                            }
                            sphere(point.origin, n_radius, v_color, 1, 0, 8, 8);
                        }
                    }
                }
            } while (getdvarint(#"hash_68dcd0d52e11b957", 0));
        }
    }

    // Namespace item_world_debug/item_world_debug
    // Params 2, eflags: 0x0
    // Checksum 0x534a7fde, Offset: 0x8c58
    // Size: 0xbe
    function function_d72aa67e(str_list, str_name) {
        a_str_tok = strtok(str_list, "<unknown string>");
        foreach (tok in a_str_tok) {
            if (tok == str_name) {
                return 1;
            }
        }
        return 0;
    }

    // Namespace item_world_debug/item_world_debug
    // Params 4, eflags: 0x0
    // Checksum 0x46086cdf, Offset: 0x8d20
    // Size: 0x284
    function function_47351fa3(org, ang, opcolor, frames) {
        if (!isdefined(frames)) {
            frames = 1;
        }
        forward = anglestoforward(ang);
        forwardfar = vectorscale(forward, 50);
        forwardclose = vectorscale(forward, 50 * 0.8);
        right = anglestoright(ang);
        left = anglestoright(ang) * -1;
        leftdraw = vectorscale(right, 50 * -0.2);
        rightdraw = vectorscale(right, 50 * 0.2);
        up = anglestoup(ang);
        right = vectorscale(right, 50);
        left = vectorscale(left, 50);
        up = vectorscale(up, 50);
        red = (0.9, 0.2, 0.2);
        green = (0.2, 0.9, 0.2);
        blue = (0.2, 0.2, 0.9);
        if (isdefined(opcolor)) {
            red = opcolor;
            green = opcolor;
            blue = opcolor;
        }
        line(org, org + forwardfar, red, 0.9, 0, frames);
        line(org + forwardfar, org + forwardclose + rightdraw, red, 0.9, 0, frames);
        line(org + forwardfar, org + forwardclose + leftdraw, red, 0.9, 0, frames);
    }

#/
