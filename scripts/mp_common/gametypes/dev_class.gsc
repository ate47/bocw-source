// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\gametypes\dev.gsc;
#using scripts\core_common\util_shared.gsc;

#namespace dev_class;

/#

    // Namespace dev_class/dev_class
    // Params 0, eflags: 0x0
    // Checksum 0x19619e91, Offset: 0x90
    // Size: 0xb28
    function dev_cac_init() {
        dev_cac_overlay = 0;
        dev_cac_camera_on = 0;
        level thread dev_cac_gdt_update_think();
        for (;;) {
            wait(0.5);
            reset = 1;
            if (getdvarstring(#"scr_disable_cac_2") != "<unknown string>") {
                continue;
            }
            host = util::gethostplayer();
            if (!isdefined(level.dev_cac_player)) {
                level.dev_cac_player = host;
            }
            switch (getdvarstring(#"devgui_dev_cac")) {
            case 0:
                reset = 0;
                break;
            case #"dpad_body":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_body, "<unknown string>");
                break;
            case #"dpad_head":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_head, "<unknown string>");
                break;
            case #"dpad_character":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_character, "<unknown string>");
                break;
            case #"next_player":
                dev_cac_cycle_player(1);
                break;
            case #"prev_player":
                dev_cac_cycle_player(0);
                break;
            case #"cac_overlay":
                level notify(#"dev_cac_overlay_think");
                if (!dev_cac_overlay) {
                    level thread dev_cac_overlay_think();
                }
                dev_cac_overlay = !dev_cac_overlay;
                break;
            case #"best_bullet_armor":
                dev_cac_set_model_range(&sort_greatest, "<unknown string>");
                break;
            case #"worst_bullet_armor":
                dev_cac_set_model_range(&sort_least, "<unknown string>");
                break;
            case #"best_explosive_armor":
                dev_cac_set_model_range(&sort_greatest, "<unknown string>");
                break;
            case #"worst_explosive_armor":
                dev_cac_set_model_range(&sort_least, "<unknown string>");
                break;
            case #"best_mobility":
                dev_cac_set_model_range(&sort_greatest, "<unknown string>");
                break;
            case #"worst_mobility":
                dev_cac_set_model_range(&sort_least, "<unknown string>");
                break;
            case #"camera":
                dev_cac_camera_on = !dev_cac_camera_on;
                dev_cac_camera(dev_cac_camera_on);
                break;
            case #"dpad_camo":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"dpad_meleecamo":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"dpad_lens":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"dpad_reticle":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"hash_726874ce63e6471c":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"hash_175b7e6688ef31a6":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"hash_4293810c7550f275":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"hash_69d8a058583621e4":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"hash_69d8a15858362397":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"hash_69d8a2585836254a":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"hash_69d8a358583626fd":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"hash_69d89c5858361b18":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"hash_69d89d5858361ccb":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"hash_69d89e5858361e7e":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"hash_69d89f5858362031":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"hash_6197bff71b874ed0":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"hash_6197c0f71b875083":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"hash_6197c1f71b875236":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"hash_6197c2f71b8753e9":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"dpad_reticle_color":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"dpad_facepaint_pattern":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"dpad_facepaint_color":
                host thread dev_cac_dpad_think("<unknown string>", &dev_cac_cycle_render_options, "<unknown string>");
                break;
            case #"dpad_reset":
                host notify(#"dev_cac_dpad_think");
                if (isdefined(level.var_5a507627)) {
                    host setactionslot(3, level.var_5a507627);
                    host setactionslot(4, level.var_4918d3b8);
                    level.var_5a507627 = undefined;
                    level.var_4918d3b8 = undefined;
                }
                break;
            }
            if (reset) {
                setdvar(#"devgui_dev_cac", "<unknown string>");
            }
        }
    }

    // Namespace dev_class/dev_class
    // Params 1, eflags: 0x0
    // Checksum 0x1286a5f9, Offset: 0xbc0
    // Size: 0x104
    function dev_cac_camera(on) {
        if (on) {
            self setclientthirdperson(1);
            setdvar(#"cg_thirdpersonangle", 185);
            setdvar(#"cg_thirdpersonrange", 138);
            setdvar(#"cg_fov", 20);
            return;
        }
        self setclientthirdperson(0);
        setdvar(#"cg_fov", getdvarstring(#"cg_fov_default"));
    }

    // Namespace dev_class/dev_class
    // Params 3, eflags: 0x0
    // Checksum 0x7b5cf147, Offset: 0xcd0
    // Size: 0x356
    function dev_cac_dpad_think(part_name, cycle_function, tag) {
        self notify(#"dev_cac_dpad_think");
        self endon(#"dev_cac_dpad_think", #"disconnect");
        iprintln("<unknown string>" + part_name + "<unknown string>");
        iprintln("<unknown string>" + part_name + "<unknown string>");
        dpad_left = 0;
        dpad_right = 0;
        var_4b4b4a13 = 0;
        var_fed1b26 = 0;
        if (!isdefined(level.var_5a507627)) {
            level.var_5a507627 = self function_a8bbc98a(3);
            level.var_4918d3b8 = self function_a8bbc98a(4);
        }
        level.dev_cac_player thread highlight_player();
        for (;;) {
            self setactionslot(3, "<unknown string>");
            self setactionslot(4, "<unknown string>");
            if (!dpad_left && self buttonpressed("<unknown string>")) {
                [[ cycle_function ]](0, tag);
                dpad_left = 1;
            } else if (!self buttonpressed("<unknown string>")) {
                dpad_left = 0;
            }
            if (!dpad_right && self buttonpressed("<unknown string>")) {
                [[ cycle_function ]](1, tag);
                dpad_right = 1;
            } else if (!self buttonpressed("<unknown string>")) {
                dpad_right = 0;
            }
            if (!var_4b4b4a13 && self buttonpressed("<unknown string>")) {
                [[ cycle_function ]](0, tag);
                var_4b4b4a13 = 1;
            } else if (!self buttonpressed("<unknown string>")) {
                var_4b4b4a13 = 0;
            }
            if (!var_fed1b26 && self buttonpressed("<unknown string>")) {
                [[ cycle_function ]](1, tag);
                var_fed1b26 = 1;
            } else if (!self buttonpressed("<unknown string>")) {
                var_fed1b26 = 0;
            }
            waitframe(1);
        }
    }

    // Namespace dev_class/dev_class
    // Params 2, eflags: 0x0
    // Checksum 0xb808d0b4, Offset: 0x1030
    // Size: 0x94
    function next_in_list(value, list) {
        if (!isdefined(value)) {
            return list[0];
        }
        for (i = 0; i < list.size; i++) {
            if (value == list[i]) {
                if (isdefined(list[i + 1])) {
                    value = list[i + 1];
                } else {
                    value = list[0];
                }
                break;
            }
        }
        return value;
    }

    // Namespace dev_class/dev_class
    // Params 2, eflags: 0x0
    // Checksum 0x4672373f, Offset: 0x10d0
    // Size: 0x9e
    function prev_in_list(value, list) {
        if (!isdefined(value)) {
            return list[0];
        }
        for (i = 0; i < list.size; i++) {
            if (value == list[i]) {
                if (isdefined(list[i - 1])) {
                    value = list[i - 1];
                } else {
                    value = list[list.size - 1];
                }
                break;
            }
        }
        return value;
    }

    // Namespace dev_class/dev_class
    // Params 0, eflags: 0x0
    // Checksum 0xd878e949, Offset: 0x1178
    // Size: 0x1a
    function dev_cac_set_player_model() {
        self.tag_stowed_back = undefined;
        self.tag_stowed_hip = undefined;
    }

    // Namespace dev_class/dev_class
    // Params 2, eflags: 0x0
    // Checksum 0x2357a413, Offset: 0x11a0
    // Size: 0xdc
    function dev_cac_cycle_body(forward, *tag) {
        if (!dev_cac_player_valid()) {
            return;
        }
        player = level.dev_cac_player;
        keys = getarraykeys(level.cac_functions[#"set_body_model"]);
        if (tag) {
            player.cac_body_type = next_in_list(player.cac_body_type, keys);
        } else {
            player.cac_body_type = prev_in_list(player.cac_body_type, keys);
        }
        player dev_cac_set_player_model();
    }

    // Namespace dev_class/dev_class
    // Params 2, eflags: 0x0
    // Checksum 0xd034cef7, Offset: 0x1288
    // Size: 0xec
    function dev_cac_cycle_head(forward, *tag) {
        if (!dev_cac_player_valid()) {
            return;
        }
        player = level.dev_cac_player;
        keys = getarraykeys(level.cac_functions[#"set_head_model"]);
        if (tag) {
            player.cac_head_type = next_in_list(player.cac_head_type, keys);
        } else {
            player.cac_head_type = prev_in_list(player.cac_head_type, keys);
        }
        player.cac_hat_type = "<unknown string>";
        player dev_cac_set_player_model();
    }

    // Namespace dev_class/dev_class
    // Params 2, eflags: 0x0
    // Checksum 0xc3669f9c, Offset: 0x1380
    // Size: 0xec
    function dev_cac_cycle_character(forward, *tag) {
        if (!dev_cac_player_valid()) {
            return;
        }
        player = level.dev_cac_player;
        keys = getarraykeys(level.cac_functions[#"set_body_model"]);
        if (tag) {
            player.cac_body_type = next_in_list(player.cac_body_type, keys);
        } else {
            player.cac_body_type = prev_in_list(player.cac_body_type, keys);
        }
        player.cac_hat_type = "<unknown string>";
        player dev_cac_set_player_model();
    }

    // Namespace dev_class/dev_class
    // Params 3, eflags: 0x0
    // Checksum 0x40467351, Offset: 0x1478
    // Size: 0x5c
    function dev_cac_cycle_render_options(forward, tag, count) {
        if (!dev_cac_player_valid()) {
            return;
        }
        level.dev_cac_player function_fda57e3c(tag, forward, count);
    }

    // Namespace dev_class/dev_class
    // Params 0, eflags: 0x0
    // Checksum 0x6ca24e41, Offset: 0x14e0
    // Size: 0x38
    function dev_cac_player_valid() {
        return isdefined(level.dev_cac_player) && level.dev_cac_player.sessionstate == "<unknown string>";
    }

    // Namespace dev_class/dev_class
    // Params 1, eflags: 0x0
    // Checksum 0x5b393425, Offset: 0x1520
    // Size: 0xe2
    function dev_cac_cycle_player(forward) {
        players = getplayers();
        for (i = 0; i < players.size; i++) {
            if (forward) {
                level.dev_cac_player = next_in_list(level.dev_cac_player, players);
            } else {
                level.dev_cac_player = prev_in_list(level.dev_cac_player, players);
            }
            if (dev_cac_player_valid()) {
                level.dev_cac_player thread highlight_player();
                return;
            }
        }
        level.dev_cac_player = undefined;
    }

    // Namespace dev_class/dev_class
    // Params 0, eflags: 0x0
    // Checksum 0x365afda0, Offset: 0x1610
    // Size: 0x44
    function highlight_player() {
        self sethighlighted(1);
        wait(1);
        self sethighlighted(0);
    }

    // Namespace dev_class/dev_class
    // Params 0, eflags: 0x0
    // Checksum 0x642843ca, Offset: 0x1660
    // Size: 0x6c
    function dev_cac_overlay_think() {
        hud = dev_cac_overlay_create();
        level thread dev_cac_overlay_update(hud);
        level waittill(#"dev_cac_overlay_think");
        dev_cac_overlay_destroy(hud);
    }

    // Namespace dev_class/dev_class
    // Params 1, eflags: 0x0
    // Checksum 0x36a572df, Offset: 0x16d8
    // Size: 0x10
    function dev_cac_overlay_update(*hud) {
        
    }

    // Namespace dev_class/dev_class
    // Params 1, eflags: 0x0
    // Checksum 0xf2fae2ce, Offset: 0x16f0
    // Size: 0x94
    function dev_cac_overlay_destroy(hud) {
                for (i = 0; i < hud.menu.size; i++) {
            hud.menu[i] destroy();
        }
        hud destroy();
        setdvar(#"player_debugsprint", 0);
    }

    // Namespace dev_class/dev_class
    // Params 0, eflags: 0x0
    // Checksum 0x725818a9, Offset: 0x1790
    // Size: 0xc0e
    function dev_cac_overlay_create() {
        x = -80;
        y = 140;
        menu_name = "<unknown string>";
        hud = dev::new_hud(menu_name, undefined, x, y, 1);
        hud setshader(#"white", 185, 285);
        hud.alignx = "<unknown string>";
        hud.aligny = "<unknown string>";
        hud.sort = 10;
        hud.alpha = 0.6;
        hud.color = (0, 0, 0.5);
        x_offset = 100;
        hud.menu[0] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 10, 1.3);
        hud.menu[1] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 25, 1);
        hud.menu[2] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 35, 1);
        hud.menu[3] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 45, 1);
        hud.menu[4] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 55, 1);
        hud.menu[5] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 70, 1);
        hud.menu[6] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 80, 1);
        hud.menu[7] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 90, 1);
        hud.menu[8] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 100, 1);
        hud.menu[9] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 110, 1);
        hud.menu[10] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 120, 1);
        hud.menu[11] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 135, 1);
        hud.menu[12] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 145, 1);
        hud.menu[13] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 155, 1);
        hud.menu[14] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 170, 1);
        hud.menu[15] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 180, 1);
        hud.menu[16] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 190, 1);
        hud.menu[17] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 205, 1);
        hud.menu[18] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 215, 1);
        hud.menu[19] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 225, 1);
        hud.menu[20] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 235, 1);
        hud.menu[21] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 245, 1);
        hud.menu[22] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 255, 1);
        hud.menu[23] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 265, 1);
        hud.menu[24] = dev::new_hud(menu_name, "<unknown string>", x + 5, y + 275, 1);
        x_offset = 65;
        hud.menu[25] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 35, 1);
        hud.menu[26] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 45, 1);
        hud.menu[27] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 55, 1);
        x_offset = 100;
        hud.menu[28] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 80, 1);
        hud.menu[29] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 90, 1);
        hud.menu[30] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 100, 1);
        hud.menu[31] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 110, 1);
        hud.menu[32] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 120, 1);
        hud.menu[33] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 145, 1);
        hud.menu[34] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 155, 1);
        hud.menu[35] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 180, 1);
        hud.menu[36] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 190, 1);
        x_offset = 65;
        hud.menu[37] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 215, 1);
        hud.menu[38] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 225, 1);
        hud.menu[39] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 235, 1);
        hud.menu[40] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 245, 1);
        hud.menu[41] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 255, 1);
        hud.menu[42] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 265, 1);
        hud.menu[43] = dev::new_hud(menu_name, "<unknown string>", x + x_offset, y + 275, 1);
        return hud;
    }

    // Namespace dev_class/dev_class
    // Params 1, eflags: 0x0
    // Checksum 0x4f7a674b, Offset: 0x23a8
    // Size: 0x8c
    function color(value) {
        r = 1;
        g = 1;
        b = 0;
        color = (0, 0, 0);
        if (value > 0) {
            r -= value;
        } else {
            g += value;
        }
        c = (r, g, b);
        return c;
    }

    // Namespace dev_class/dev_class
    // Params 0, eflags: 0x0
    // Checksum 0x2068385e, Offset: 0x2440
    // Size: 0x1da
    function dev_cac_gdt_update_think() {
        for (;;) {
            waitresult = level waittill(#"gdt_update");
            asset = waitresult.asset;
            keyvalue = waitresult.keyvalue;
            keyvalue = strtok(keyvalue, "<unknown string>");
            key = keyvalue[0];
            switch (key) {
            case #"armorbullet":
                key = "<unknown string>";
                break;
            case #"armorexplosive":
                key = "<unknown string>";
                break;
            case #"movespeed":
                key = "<unknown string>";
                break;
            case #"sprinttimetotal":
                key = "<unknown string>";
                break;
            case #"sprinttimecooldown":
                key = "<unknown string>";
                break;
            default:
                key = undefined;
                break;
            }
            if (!isdefined(key)) {
                continue;
            }
            value = float(keyvalue[1]);
            level.cac_attributes[key][asset] = value;
            players = getplayers();
            for (i = 0; i < players.size; i++) {
            }
        }
    }

    // Namespace dev_class/dev_class
    // Params 3, eflags: 0x0
    // Checksum 0xc4b5be98, Offset: 0x2628
    // Size: 0xb2
    function sort_greatest(func, attribute, greatest) {
        keys = getarraykeys(level.cac_functions[func]);
        greatest = keys[0];
        for (i = 0; i < keys.size; i++) {
            if (level.cac_attributes[attribute][keys[i]] > level.cac_attributes[attribute][greatest]) {
                greatest = keys[i];
            }
        }
        return greatest;
    }

    // Namespace dev_class/dev_class
    // Params 3, eflags: 0x0
    // Checksum 0x5d1e6a6c, Offset: 0x26e8
    // Size: 0xb2
    function sort_least(func, attribute, least) {
        keys = getarraykeys(level.cac_functions[func]);
        least = keys[0];
        for (i = 0; i < keys.size; i++) {
            if (level.cac_attributes[attribute][keys[i]] < level.cac_attributes[attribute][least]) {
                least = keys[i];
            }
        }
        return least;
    }

    // Namespace dev_class/dev_class
    // Params 2, eflags: 0x0
    // Checksum 0x5e46b6d4, Offset: 0x27a8
    // Size: 0xac
    function dev_cac_set_model_range(sort_function, attribute) {
        if (!dev_cac_player_valid()) {
            return;
        }
        player = level.dev_cac_player;
        player.cac_body_type = [[ sort_function ]]("<unknown string>", attribute);
        player.cac_head_type = [[ sort_function ]]("<unknown string>", attribute);
        player.cac_hat_type = [[ sort_function ]]("<unknown string>", attribute);
        player dev_cac_set_player_model();
    }

#/
