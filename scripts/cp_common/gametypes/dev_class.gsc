// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\util.gsc;
#using scripts\cp_common\gametypes\dev.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace dev_class;

/#

    // Namespace dev_class/dev_class
    // Params 0, eflags: 0x5
    // Checksum 0xbbe6c03a, Offset: 0xb0
    // Size: 0x3c
    function private autoexec __init__system__() {
        system::register(#"dev_class", &preinit, undefined, undefined, undefined);
    }

    // Namespace dev_class/dev_class
    // Params 0, eflags: 0x4
    // Checksum 0x19627f88, Offset: 0xf8
    // Size: 0x2c
    function private preinit() {
        callback::on_start_gametype(&init);
    }

    // Namespace dev_class/dev_class
    // Params 0, eflags: 0x0
    // Checksum 0xbea67bb0, Offset: 0x130
    // Size: 0x680
    function init() {
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
                break;
            }
            if (reset) {
                setdvar(#"devgui_dev_cac", "<unknown string>");
            }
        }
    }

    // Namespace dev_class/dev_class
    // Params 1, eflags: 0x0
    // Checksum 0x7273eb19, Offset: 0x7b8
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
    // Checksum 0xbb8e784, Offset: 0x8c8
    // Size: 0x20e
    function dev_cac_dpad_think(part_name, cycle_function, tag) {
        self notify(#"dev_cac_dpad_think");
        self endon(#"dev_cac_dpad_think", #"disconnect");
        iprintln("<unknown string>" + part_name + "<unknown string>");
        iprintln("<unknown string>" + part_name + "<unknown string>");
        dpad_left = 0;
        dpad_right = 0;
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
            waitframe(1);
        }
    }

    // Namespace dev_class/dev_class
    // Params 2, eflags: 0x0
    // Checksum 0x871b7ada, Offset: 0xae0
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
    // Checksum 0xa7d02970, Offset: 0xb80
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
    // Checksum 0x9d00210e, Offset: 0xc28
    // Size: 0x1a
    function dev_cac_set_player_model() {
        self.tag_stowed_back = undefined;
        self.tag_stowed_hip = undefined;
    }

    // Namespace dev_class/dev_class
    // Params 2, eflags: 0x0
    // Checksum 0xfe7c32db, Offset: 0xc50
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
    // Checksum 0x8e69d2fb, Offset: 0xd38
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
    // Checksum 0xea11bedc, Offset: 0xe30
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
    // Params 2, eflags: 0x0
    // Checksum 0x78476bdf, Offset: 0xf28
    // Size: 0x54
    function dev_cac_cycle_render_options(forward, tag) {
        if (!dev_cac_player_valid()) {
            return;
        }
        level.dev_cac_player function_fda57e3c(tag, forward);
    }

    // Namespace dev_class/dev_class
    // Params 0, eflags: 0x0
    // Checksum 0x537d2ce9, Offset: 0xf88
    // Size: 0x38
    function dev_cac_player_valid() {
        return isdefined(level.dev_cac_player) && level.dev_cac_player.sessionstate == "<unknown string>";
    }

    // Namespace dev_class/dev_class
    // Params 1, eflags: 0x0
    // Checksum 0xd22da396, Offset: 0xfc8
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
    // Checksum 0x858dcec3, Offset: 0x10b8
    // Size: 0x44
    function highlight_player() {
        self sethighlighted(1);
        wait(1);
        self sethighlighted(0);
    }

    // Namespace dev_class/dev_class
    // Params 0, eflags: 0x0
    // Checksum 0x338e26ce, Offset: 0x1108
    // Size: 0x6c
    function dev_cac_overlay_think() {
        hud = dev_cac_overlay_create();
        level thread dev_cac_overlay_update(hud);
        level waittill(#"dev_cac_overlay_think");
        dev_cac_overlay_destroy(hud);
    }

    // Namespace dev_class/dev_class
    // Params 1, eflags: 0x0
    // Checksum 0x8eac1597, Offset: 0x1180
    // Size: 0x10
    function dev_cac_overlay_update(*hud) {
        
    }

    // Namespace dev_class/dev_class
    // Params 1, eflags: 0x0
    // Checksum 0xab39676d, Offset: 0x1198
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
    // Checksum 0x6076feac, Offset: 0x1238
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
    // Checksum 0x51ee9904, Offset: 0x1e50
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
    // Checksum 0x48b8ff66, Offset: 0x1ee8
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
    // Checksum 0x6b408d6b, Offset: 0x20d0
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
    // Checksum 0x769d9835, Offset: 0x2190
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
    // Checksum 0x5c303cc2, Offset: 0x2250
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
