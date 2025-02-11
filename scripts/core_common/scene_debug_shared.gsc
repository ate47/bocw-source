#using scripts\core_common\animation_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace scene;

/#

    // Namespace scene/scene_debug_shared
    // Params 0, eflags: 0x5
    // Checksum 0x69cfa57c, Offset: 0xc0
    // Size: 0x3c
    function private autoexec __init__system__() {
        system::register(#"scene_debug", &function_c3c9d0e5, undefined, undefined, undefined);
    }

    // Namespace scene/scene_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0xdb5a95ea, Offset: 0x108
    // Size: 0x19c
    function function_c3c9d0e5() {
        if (getdvarstring(#"scene_menu_mode", "<dev string:x38>") == "<dev string:x38>") {
            setdvar(#"scene_menu_mode", "<dev string:x3c>");
        }
        if (!isdefined(level.scene_roots)) {
            level.scene_roots = [];
        }
        setdvar(#"run_client_scene", "<dev string:x38>");
        setdvar(#"init_client_scene", "<dev string:x38>");
        setdvar(#"stop_client_scene", "<dev string:x38>");
        setdvar(#"hash_62cdb8fd35a5a4c3", 0);
        level thread run_scene_tests();
        level thread toggle_scene_menu();
        level thread toggle_postfx_igc_loop();
        level thread debug_display_all();
        level thread function_42edf155();
    }

    // Namespace scene/scene_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0xa31241c6, Offset: 0x2b0
    // Size: 0x6be
    function run_scene_tests() {
        level endon(#"run_scene_tests");
        var_cdb63291 = 0;
        while (true) {
            str_run_scene = getdvarstring(#"run_scene");
            a_toks = strtok(str_run_scene, "<dev string:x47>");
            str_scene = a_toks[0];
            str_shot = a_toks[1];
            str_mode = tolower(getdvarstring(#"scene_menu_mode", "<dev string:x3c>"));
            if (str_mode == "<dev string:x3c>" && isdefined(a_toks[2])) {
                str_mode = a_toks[2];
            }
            if (!isdefined(str_scene)) {
                str_scene = "<dev string:x38>";
            }
            str_client_scene = getdvarstring(#"run_client_scene");
            b_capture = 0;
            if (b_capture) {
                if (str_scene != "<dev string:x38>") {
                    setdvar(#"init_scene", str_scene);
                    setdvar(#"run_scene", "<dev string:x38>");
                }
            } else {
                if (str_client_scene != "<dev string:x38>") {
                    level util::clientnotify(str_client_scene + "<dev string:x4c>");
                    util::wait_network_frame();
                }
                if (str_scene != "<dev string:x38>") {
                    setdvar(#"run_scene", "<dev string:x38>");
                    b_series = str_mode == "<dev string:x58>";
                    if (str_mode == "<dev string:x6a>" || str_mode == "<dev string:x58>") {
                        str_mode += "<dev string:x7c>" + getdvarstring(#"hash_3018c0b9207d1c", "<dev string:x87>");
                        str_mode += "<dev string:x8c>" + getdvarstring(#"hash_51617678bebb961a", "<dev string:x95>");
                        str_mode += "<dev string:x9b>" + getdvarstring(#"hash_4bf15ae7a6fbf73c", "<dev string:xa4>");
                        str_mode += "<dev string:xab>" + getdvarstring(#"hash_7b946c8966b56a8e", "<dev string:x87>");
                    }
                    level thread test_play(str_scene, str_shot, str_mode);
                }
            }
            str_scene = getdvarstring(#"init_scene");
            str_client_scene = getdvarstring(#"init_client_scene");
            if (str_client_scene != "<dev string:x38>") {
                level util::clientnotify(str_client_scene + "<dev string:xb5>");
                util::wait_network_frame();
            }
            if (str_scene != "<dev string:x38>") {
                setdvar(#"init_scene", "<dev string:x38>");
                level thread test_play(str_scene, undefined, "<dev string:xc1>");
                if (b_capture) {
                    capture_scene(str_scene, str_mode);
                }
            }
            str_scene = getdvarstring(#"stop_scene");
            str_client_scene = getdvarstring(#"stop_client_scene");
            if (str_client_scene != "<dev string:x38>") {
                level util::clientnotify(str_client_scene + "<dev string:xc9>");
                util::wait_network_frame();
            }
            if (str_scene != "<dev string:x38>") {
                setdvar(#"stop_scene", "<dev string:x38>");
                function_d2785094(level.var_a572f325);
                level stop(str_scene);
            }
            str_scene = getdvarstring(#"clear_scene");
            if (str_scene != "<dev string:x38>") {
                setdvar(#"clear_scene", "<dev string:x38>");
                function_d2785094(level.var_a572f325);
                level stop(str_scene);
                level delete_scene_spawned_ents(str_scene);
            }
            if (var_cdb63291 != getdvarint(#"hash_62cdb8fd35a5a4c3", 0)) {
                var_cdb63291 = getdvarint(#"hash_62cdb8fd35a5a4c3", 0);
                if (var_cdb63291 == 1) {
                    adddebugcommand("<dev string:xd5>");
                } else {
                    adddebugcommand("<dev string:x10b>");
                }
            }
            waitframe(1);
        }
    }

    // Namespace scene/scene_debug_shared
    // Params 2, eflags: 0x0
    // Checksum 0x913f461c, Offset: 0x978
    // Size: 0x64
    function capture_scene(str_scene, str_mode) {
        setdvar(#"scene_menu", 0);
        level play(str_scene, undefined, undefined, 1, str_mode);
    }

    // Namespace scene/scene_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0x2361f99, Offset: 0x9e8
    // Size: 0x244
    function toggle_scene_menu() {
        setdvar(#"scene_menu", 0);
        n_scene_menu_last = -1;
        while (true) {
            n_scene_menu = getdvarstring(#"scene_menu");
            if (n_scene_menu != "<dev string:x38>") {
                n_scene_menu = int(n_scene_menu);
                if (n_scene_menu != n_scene_menu_last) {
                    switch (n_scene_menu) {
                    case 1:
                        level thread display_scene_menu("<dev string:x12b>");
                        break;
                    case 2:
                        level thread display_scene_menu("<dev string:x134>");
                        break;
                    default:
                        function_1f93be7b();
                        level flag::clear(#"menu_open");
                        level flag::clear(#"menu_open");
                        level flag::clear(#"hash_4035a6aa4a6ba08d");
                        level flag::clear(#"hash_7b50fddf7a4b9e2e");
                        level flag::clear(#"hash_5bcd66a9c21f5b2d");
                        level notify(#"scene_menu_cleanup");
                        setdvar(#"bgcache_disablewarninghints", 0);
                        setdvar(#"cl_tacticalhud", 1);
                        break;
                    }
                    n_scene_menu_last = n_scene_menu;
                }
            }
            waitframe(1);
        }
    }

    // Namespace scene/scene_debug_shared
    // Params 1, eflags: 0x0
    // Checksum 0x5ed9bbe9, Offset: 0xc38
    // Size: 0xd4
    function function_8ee42bf(o_scene) {
        if (isdefined(o_scene) && isdefined(o_scene._s)) {
            str_type = isdefined(o_scene._s.scenetype) ? o_scene._s.scenetype : "<dev string:x12b>";
            if (level flag::get(str_type + "<dev string:x13e>") && level flag::get(#"hash_5bcd66a9c21f5b2d")) {
                level thread display_scene_menu(o_scene._s.scenetype);
            }
        }
    }

    // Namespace scene/scene_debug_shared
    // Params 1, eflags: 0x0
    // Checksum 0x61a2732a, Offset: 0xd18
    // Size: 0x74
    function function_70042fe2(str_scene) {
        if (!level flag::get("<dev string:x153>")) {
            level flag::set("<dev string:x153>");
            level.var_a97df3b7 = str_scene;
            function_27f5972e(str_scene);
        }
    }

    // Namespace scene/scene_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0x2b0cd32, Offset: 0xd98
    // Size: 0x76
    function function_1f93be7b() {
        if (level flag::get("<dev string:x153>") && isdefined(level.var_a97df3b7)) {
            level flag::clear("<dev string:x153>");
            function_f81475ae(level.var_a97df3b7);
            level.var_a97df3b7 = undefined;
        }
    }

    // Namespace scene/scene_debug_shared
    // Params 2, eflags: 0x0
    // Checksum 0x7675ff07, Offset: 0xe18
    // Size: 0xfc6
    function display_scene_menu(str_type, str_scene) {
        if (!isdefined(str_type)) {
            str_type = "<dev string:x12b>";
        }
        level flag::clear(#"hash_4035a6aa4a6ba08d");
        level flag::clear(#"hash_7b50fddf7a4b9e2e");
        level notify(#"scene_menu_cleanup");
        level endon(#"scene_menu_cleanup");
        waittillframeend();
        level flag::set(#"menu_open");
        setdvar(#"bgcache_disablewarninghints", 1);
        setdvar(#"cl_tacticalhud", 0);
        names = [];
        b_shot_menu = 0;
        if (isstring(str_scene)) {
            names[names.size] = "<dev string:x16e>";
            names[names.size] = "<dev string:x176>";
            names[names.size] = "<dev string:x38>";
            names = arraycombine(names, get_all_shot_names(str_scene), 1, 0);
            names[names.size] = "<dev string:x38>";
            names[names.size] = "<dev string:x17e>";
            names[names.size] = "<dev string:x186>";
            names[names.size] = "<dev string:x38>";
            names[names.size] = "<dev string:x18f>";
            str_title = str_scene;
            b_shot_menu = 1;
            selected = isdefined(level.scene_menu_shot_index) ? level.scene_menu_shot_index : 0;
        } else {
            level flag::set(str_type + "<dev string:x13e>");
            if (level flag::get(#"hash_5bcd66a9c21f5b2d")) {
                println("<dev string:x197>" + toupper(str_type) + "<dev string:x1ac>");
            }
            var_72acc069 = 1;
            foreach (str_scenedef in level.scenedefs) {
                s_scenedef = getscriptbundle(str_scenedef);
                if (s_scenedef.vmtype !== "<dev string:x1be>" && s_scenedef.scenetype === str_type) {
                    if (level flag::get(#"hash_5bcd66a9c21f5b2d")) {
                        if (is_scene_active(s_scenedef.name) && function_c0f30783(s_scenedef)) {
                            array::add_sorted(names, s_scenedef.name, 0);
                            println("<dev string:x197>" + toupper(str_type) + "<dev string:x1c8>" + var_72acc069 + "<dev string:x1cd>" + s_scenedef.name);
                            var_72acc069++;
                        }
                        continue;
                    }
                    if (function_c0f30783(s_scenedef)) {
                        array::add_sorted(names, s_scenedef.name, 0);
                    }
                }
            }
            if (level flag::get(#"hash_5bcd66a9c21f5b2d")) {
                println("<dev string:x197>" + toupper(str_type) + "<dev string:x1d7>");
            }
            foreach (str_scene_name in names) {
                str_prefix = getsubstr(str_scene_name, 0, 4);
                if (str_prefix == "<dev string:x1e7>") {
                    arrayremovevalue(names, str_scene_name);
                    array::push_front(names, str_scene_name);
                }
            }
            names[names.size] = "<dev string:x38>";
            names[names.size] = "<dev string:x1ef>";
            array::push_front(names, "<dev string:x38>");
            array::push_front(names, "<dev string:x1f7>");
            str_title = str_type + "<dev string:x219>";
            selected = isdefined(level.scene_menu_index) ? level.scene_menu_index : 0;
        }
        if (selected > names.size - 1) {
            selected = 0;
        }
        if (!b_shot_menu && !level flag::get(#"scene_menu_disable")) {
            debug2dtext((150, 410 + 400, 0), "<dev string:x21e>", (1, 1, 1), 1, (0, 0, 0), 1, 2);
        }
        up_pressed = 0;
        down_pressed = 0;
        held = 0;
        old_selected = selected;
        while (true) {
            if (!isdefined(level.host)) {
                waitframe(1);
                continue;
            }
            if (b_shot_menu) {
                if (isdefined(level.last_scene_state) && isdefined(level.last_scene_state[str_scene])) {
                    str_title = str_scene + "<dev string:x243>" + level.last_scene_state[str_scene] + "<dev string:x249>";
                } else {
                    str_title = str_scene;
                }
                function_70042fe2(str_scene);
            } else {
                function_1f93be7b();
            }
            if (held) {
                scene_list_settext(names, selected, str_title, b_shot_menu, 10);
                wait 0.5;
            } else {
                scene_list_settext(names, selected, str_title, b_shot_menu, 1);
            }
            if (!up_pressed) {
                if (level.host util::up_button_pressed()) {
                    up_pressed = 1;
                    selected--;
                    if (names[selected] === "<dev string:x38>") {
                        selected--;
                    }
                }
            } else if (level.host util::up_button_held()) {
                held = 1;
                selected -= 10;
            } else if (!level.host util::up_button_pressed()) {
                held = 0;
                up_pressed = 0;
            }
            if (!down_pressed) {
                if (level.host util::down_button_pressed()) {
                    down_pressed = 1;
                    selected++;
                    if (names[selected] === "<dev string:x38>") {
                        selected++;
                    }
                }
            } else if (level.host util::down_button_held()) {
                held = 1;
                selected += 10;
            } else if (!level.host util::down_button_pressed()) {
                held = 0;
                down_pressed = 0;
            }
            if (!down_pressed && !up_pressed) {
                if (names[selected] === "<dev string:x38>") {
                    selected++;
                }
            }
            if (held) {
                if (selected < 0) {
                    selected = 0;
                } else if (selected >= names.size) {
                    selected = names.size - 1;
                }
            } else if (selected < 0) {
                selected = names.size - 1;
            } else if (selected >= names.size) {
                selected = 0;
            }
            if (level.host buttonpressed("<dev string:x24e>")) {
                if (b_shot_menu) {
                    while (level.host buttonpressed("<dev string:x24e>")) {
                        waitframe(1);
                    }
                    level.scene_menu_shot_index = selected;
                    level thread display_scene_menu(str_type);
                } else {
                    level.scene_menu_index = selected;
                    setdvar(#"scene_menu", 0);
                }
            }
            if (names[selected] != "<dev string:x1ef>" && !b_shot_menu) {
                if (level.host buttonpressed("<dev string:x25a>") || level.host buttonpressed("<dev string:x268>")) {
                    level.host move_to_scene(names[selected]);
                    while (level.host buttonpressed("<dev string:x25a>") || level.host buttonpressed("<dev string:x268>")) {
                        waitframe(1);
                    }
                } else if (level.host buttonpressed("<dev string:x276>") || level.host buttonpressed("<dev string:x283>")) {
                    level.host move_to_scene(names[selected], 1);
                    while (level.host buttonpressed("<dev string:x276>") || level.host buttonpressed("<dev string:x283>")) {
                        waitframe(1);
                    }
                }
            }
            if (b_shot_menu && function_940c526f() && isdefined(str_scene) && function_9730988a(str_scene, names[selected])) {
                setdvar(#"run_scene", str_scene + "<dev string:x47>" + names[selected] + "<dev string:x47>" + "<dev string:x290>");
            } else if (function_606f1f21()) {
                if (names[selected] == "<dev string:x1f7>") {
                    level flag::toggle("<dev string:x2a2>");
                    while (function_606f1f21()) {
                        waitframe(1);
                    }
                    level thread display_scene_menu(str_type);
                } else if (names[selected] == "<dev string:x1ef>") {
                    setdvar(#"scene_menu", 0);
                } else if (b_shot_menu) {
                    if (names[selected] == "<dev string:x18f>") {
                        level.scene_menu_shot_index = selected;
                        while (function_606f1f21()) {
                            waitframe(1);
                        }
                        level thread display_scene_menu(str_type);
                    } else if (names[selected] == "<dev string:x17e>") {
                        setdvar(#"stop_scene", str_scene);
                    } else if (names[selected] == "<dev string:x186>") {
                        setdvar(#"clear_scene", str_scene);
                    } else if (names[selected] == "<dev string:x16e>") {
                        setdvar(#"init_scene", str_scene);
                    } else if (names[selected] == "<dev string:x176>") {
                        setdvar(#"run_scene", str_scene);
                    } else {
                        setdvar(#"run_scene", str_scene + "<dev string:x47>" + names[selected]);
                    }
                }
                while (function_606f1f21() || function_940c526f()) {
                    waitframe(1);
                }
                if (!b_shot_menu && isdefined(names[selected]) && names[selected] != "<dev string:x38>") {
                    level.scene_menu_index = selected;
                    level thread display_scene_menu(str_type, names[selected]);
                }
            }
            waitframe(1);
        }
    }

    // Namespace scene/scene_debug_shared
    // Params 1, eflags: 0x0
    // Checksum 0xf8244fc8, Offset: 0x1de8
    // Size: 0x84
    function function_c0f30783(s_scenedef) {
        if (!is_true(s_scenedef.var_241c5f3c) || is_true(s_scenedef.var_241c5f3c) && getdvarint(#"zm_debug_ee", 0)) {
            return 1;
        }
        return 0;
    }

    // Namespace scene/scene_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0x7d6fe21d, Offset: 0x1e78
    // Size: 0x82
    function function_606f1f21() {
        if (level.host buttonpressed("<dev string:x2bc>") || level.host buttonpressed("<dev string:x2c8>") || level.host buttonpressed("<dev string:x2d4>")) {
            return 1;
        }
        return 0;
    }

    // Namespace scene/scene_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0xf88092f7, Offset: 0x1f08
    // Size: 0x38
    function function_940c526f() {
        if (level.host buttonpressed("<dev string:x2dd>")) {
            return 1;
        }
        return 0;
    }

    // Namespace scene/scene_debug_shared
    // Params 5, eflags: 0x0
    // Checksum 0xac04c304, Offset: 0x1f48
    // Size: 0x74
    function scene_list_settext(strings, n_selected, str_title, b_shot_menu, var_444abf97) {
        if (!level flag::get(#"scene_menu_disable")) {
            thread _scene_list_settext(strings, n_selected, str_title, b_shot_menu, var_444abf97);
        }
    }

    // Namespace scene/scene_debug_shared
    // Params 5, eflags: 0x4
    // Checksum 0x3d9f99d5, Offset: 0x1fc8
    // Size: 0x434
    function private _scene_list_settext(strings, n_selected, str_title, b_shot_menu, var_444abf97) {
        if (!isdefined(b_shot_menu)) {
            b_shot_menu = 0;
        }
        if (!isdefined(var_444abf97)) {
            var_444abf97 = 1;
        }
        debug2dtext((150, 325, 0), str_title, (1, 1, 1), 1, (0, 0, 0), 1, 1, var_444abf97);
        str_mode = tolower(getdvarstring(#"scene_menu_mode", "<dev string:x3c>"));
        switch (str_mode) {
        case #"default":
            debug2dtext((150, 362.5, 0), "<dev string:x2e9>", (1, 1, 1), 1, (0, 0, 0), 1, 1, var_444abf97);
            break;
        case #"loop":
            debug2dtext((150, 362.5, 0), "<dev string:x2fa>", (1, 1, 1), 1, (0, 0, 0), 1, 1, var_444abf97);
            break;
        case #"capture_single":
            debug2dtext((150, 362.5, 0), "<dev string:x308>", (1, 1, 1), 1, (0, 0, 0), 1, 1, var_444abf97);
            break;
        case #"capture_series":
            debug2dtext((150, 362.5, 0), "<dev string:x326>", (1, 1, 1), 1, (0, 0, 0), 1, 1, var_444abf97);
            break;
        }
        for (i = 0; i < 16; i++) {
            index = i + n_selected - 5;
            if (isdefined(strings[index])) {
                text = strings[index];
            } else {
                text = "<dev string:x38>";
            }
            str_scene = text;
            if (isdefined(level.last_scene_state) && isdefined(level.last_scene_state[text])) {
                text += "<dev string:x243>" + level.last_scene_state[text] + "<dev string:x249>";
            }
            if (i == 5) {
                text = "<dev string:x33d>" + text + "<dev string:x343>";
                str_color = (0.8, 0.4, 0);
            } else if (is_scene_active(str_scene)) {
                str_color = (0, 1, 0);
            } else {
                str_color = (1, 1, 1);
            }
            debug2dtext((136, 400 + i * 25, 0), text, str_color, 1, (0, 0, 0), 1, 1, var_444abf97);
        }
        if (b_shot_menu) {
            debug2dtext((150, 410 + 400, 0), "<dev string:x348>", (1, 1, 1), 1, (0, 0, 0), 1, 1, var_444abf97);
            return;
        }
        debug2dtext((150, 410 + 400, 0), "<dev string:x21e>", (1, 1, 1), 1, (0, 0, 0), 1, 1, var_444abf97);
    }

    // Namespace scene/scene_debug_shared
    // Params 1, eflags: 0x0
    // Checksum 0x476541af, Offset: 0x2408
    // Size: 0x58
    function is_scene_active(str_scene) {
        if (str_scene != "<dev string:x38>" && str_scene != "<dev string:x1ef>") {
            if (level is_active(str_scene)) {
                return 1;
            }
        }
        return 0;
    }

    // Namespace scene/scene_debug_shared
    // Params 1, eflags: 0x0
    // Checksum 0x8944070b, Offset: 0x2468
    // Size: 0x192
    function function_3bafd088(var_a572f325) {
        /#
            if (getdvarint(#"dvr_enable", 0) > 0 && getdvarint(#"scr_scene_dvr", 0) > 0) {
                if (!isdefined(var_a572f325)) {
                    var_a572f325 = spawnstruct();
                }
                var_a572f325.drawbig = getdvarint(#"hash_13d62f4d290ef671", 0);
                var_a572f325.var_2640d68e = getdvarint(#"scr_show_shot_info_for_igcs", 0);
                var_a572f325.drawfps = getdvarint(#"cg_drawfps", 1);
                level.var_a572f325 = var_a572f325;
                setdvar(#"hash_13d62f4d290ef671", 1);
                setdvar(#"scr_show_shot_info_for_igcs", 1);
                setdvar(#"cg_drawfps", 0);
                adddebugcommand("<dev string:x38f>");
                wait 1;
            }
        #/
    }

    // Namespace scene/scene_debug_shared
    // Params 1, eflags: 0x0
    // Checksum 0x929c21e5, Offset: 0x2608
    // Size: 0x16c
    function function_d2785094(var_a572f325) {
        /#
            if (getdvarint(#"dvr_enable", 0) > 0 && getdvarint(#"scr_scene_dvr", 0) > 0) {
                drawbig = 0;
                var_2640d68e = 0;
                drawfps = 1;
                if (isdefined(var_a572f325)) {
                    if (isdefined(var_a572f325.drawbig)) {
                        drawbig = var_a572f325.drawbig;
                    }
                    if (isdefined(var_a572f325.var_2640d68e)) {
                        var_2640d68e = var_a572f325.var_2640d68e;
                    }
                    if (isdefined(var_a572f325.drawfps)) {
                        drawfps = var_a572f325.drawfps;
                    }
                }
                setdvar(#"hash_13d62f4d290ef671", drawbig);
                setdvar(#"scr_show_shot_info_for_igcs", var_2640d68e);
                setdvar(#"cg_drawfps", drawfps);
                adddebugcommand("<dev string:x39e>");
            }
        #/
    }

    // Namespace scene/scene_debug_shared
    // Params 3, eflags: 0x0
    // Checksum 0x2e1613c1, Offset: 0x2780
    // Size: 0x11c
    function test_play(arg1, arg2, str_mode) {
        n_skipto = getdvarfloat(#"scr_scene_skipto_time", 0);
        if (n_skipto > 0) {
            str_mode += "<dev string:x3ab>" + n_skipto;
        }
        var_a572f325 = spawnstruct();
        var_a572f325.name = arg1;
        if (!isdefined(var_a572f325.name)) {
            var_a572f325.name = self.scriptbundlename;
        }
        if (!isdefined(var_a572f325.name)) {
            var_a572f325.name = "<dev string:x3c>";
        }
        function_3bafd088(var_a572f325);
        play(arg1, arg2, undefined, 1, str_mode);
        function_d2785094(var_a572f325);
    }

    // Namespace scene/scene_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0x1fb55477, Offset: 0x28a8
    // Size: 0x12a
    function debug_display_all() {
        while (true) {
            level flag::wait_till("<dev string:x3b7>");
            debug_frames = randomintrange(5, 10);
            debug_time = debug_frames / 20;
            if (isdefined(level.scene_roots)) {
                arrayremovevalue(level.scene_roots, undefined);
                foreach (scene in level.scene_roots) {
                    scene debug_display(debug_frames);
                }
            }
            wait debug_time;
        }
    }

    // Namespace scene/scene_debug_shared
    // Params 1, eflags: 0x0
    // Checksum 0xccaabec5, Offset: 0x29e0
    // Size: 0x30c
    function debug_display(debug_frames) {
        sphere(debug_display_origin(), 1, (1, 1, 0), 1, 1, 8, debug_frames);
        i = 0;
        if (self == level) {
            b_found = 0;
            if (isdefined(self.scene_ents)) {
                foreach (k, scene in self.scene_ents) {
                    if (isarray(scene)) {
                        foreach (ent in scene) {
                            if (isdefined(ent)) {
                                b_found = 1;
                                print_scene_debug(debug_frames, i, k, self.last_scene_state_instance[k]);
                                i++;
                                break;
                            }
                        }
                    }
                }
            }
            if (!b_found) {
                return;
            }
            return;
        }
        if (isdefined(self.last_scene_state_instance)) {
            foreach (str_scene, str_state in self.last_scene_state_instance) {
                print_scene_debug(debug_frames, i, str_scene, str_state);
                i++;
            }
            return;
        }
        if (isdefined(self.scriptbundlename)) {
            if (ishash(self.scriptbundlename)) {
                str_scene = function_9e72a96(self.scriptbundlename);
            } else {
                str_scene = self.scriptbundlename;
            }
            n_offset = 15;
            print3d(debug_display_origin() - (0, 0, n_offset), str_scene, (0.8, 0.2, 0.8), 1, 0.3, debug_frames);
        }
    }

    // Namespace scene/scene_debug_shared
    // Params 4, eflags: 0x0
    // Checksum 0x68aee50e, Offset: 0x2cf8
    // Size: 0x124
    function print_scene_debug(debug_frames, i, str_scene, str_state) {
        v_origin = debug_display_origin();
        n_offset = 15 * (i + 1);
        str_scene = function_9e72a96(str_scene);
        print3d(v_origin - (0, 0, n_offset), str_scene, (0.8, 0.2, 0.8), 1, 0.3, debug_frames);
        print3d(v_origin - (0, 0, n_offset + 5), "<dev string:x3c5>" + str_state + "<dev string:x3ca>", (0.8, 0.2, 0.8), 1, 0.15, debug_frames);
    }

    // Namespace scene/scene_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0xaec54bb0, Offset: 0x2e28
    // Size: 0x28
    function debug_display_origin() {
        if (self == level) {
            return (0, 0, 0);
        }
        return self.origin;
    }

    // Namespace scene/scene_debug_shared
    // Params 2, eflags: 0x0
    // Checksum 0x95a0fe2d, Offset: 0x2e58
    // Size: 0x24c
    function move_to_scene(str_scene, b_reverse_dir) {
        if (!isdefined(b_reverse_dir)) {
            b_reverse_dir = 0;
        }
        if (level.debug_current_scene_name !== str_scene) {
            level.debug_current_scene_instances = struct::get_array(str_scene, "<dev string:x3cf>");
            level.debug_current_scene_index = 0;
            level.debug_current_scene_name = str_scene;
        } else if (b_reverse_dir) {
            level.debug_current_scene_index--;
            if (level.debug_current_scene_index == -1) {
                level.debug_current_scene_index = level.debug_current_scene_instances.size - 1;
            }
        } else {
            level.debug_current_scene_index++;
            if (level.debug_current_scene_index == level.debug_current_scene_instances.size) {
                level.debug_current_scene_index = 0;
            }
        }
        if (level.debug_current_scene_instances.size == 0) {
            s_bundle = getscriptbundle(str_scene);
            if (!isdefined(s_bundle)) {
                error_on_screen("<dev string:x3e3>" + str_scene);
            } else if (isdefined(s_bundle.aligntarget)) {
                e_align = get_existing_ent(s_bundle.aligntarget, 0, 1);
                if (isdefined(e_align)) {
                    level.host set_origin(e_align.origin);
                } else {
                    error_on_screen("<dev string:x40a>");
                }
            } else {
                error_on_screen("<dev string:x43d>");
            }
            return;
        }
        s_scene = level.debug_current_scene_instances[level.debug_current_scene_index];
        level.host set_origin(s_scene.origin);
    }

    // Namespace scene/scene_debug_shared
    // Params 1, eflags: 0x0
    // Checksum 0x96e61b6, Offset: 0x30b0
    // Size: 0x64
    function set_origin(v_origin) {
        if (!self isinmovemode("<dev string:x46f>", "<dev string:x476>")) {
            adddebugcommand("<dev string:x476>");
        }
        self setorigin(v_origin);
    }

    // Namespace scene/scene_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0x1ec48407, Offset: 0x3120
    // Size: 0x84
    function toggle_postfx_igc_loop() {
        while (true) {
            if (getdvarint(#"scr_postfx_igc_loop", 0)) {
                array::run_all(function_a1ef346b(), &clientfield::increment_to_player, "<dev string:x480>", 1);
                wait 4;
            }
            wait 1;
        }
    }

    // Namespace scene/scene_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0x7ca369bc, Offset: 0x31b0
    // Size: 0x2d6
    function function_42edf155() {
        while (true) {
            requestflag = getdvarint(#"hash_1c68b689a2dac0fa", 0);
            if (requestflag != 0) {
                position_x = 0;
                position_y = 0;
                position_z = 0;
                angle_x = 0;
                angle_y = 0;
                angle_z = 0;
                align_target = getdvarstring(#"hash_442538f50d245600");
                align_tag = getdvarstring(#"hash_2004f1dddc83a63b");
                s = get_existing_ent(align_target, 0, 1);
                if (isdefined(s)) {
                    if (align_tag != "<dev string:x38>") {
                        s = animation::_get_align_pos(s, align_tag);
                    }
                    position_x = s.origin[0];
                    position_y = s.origin[1];
                    position_z = s.origin[2];
                    angle_x = s.angles[0];
                    angle_y = s.angles[1];
                    angle_z = s.angles[2];
                }
                setdvar(#"hash_6c03d4e558bf8abd", position_x);
                setdvar(#"hash_6c03d3e558bf890a", position_y);
                setdvar(#"hash_6c03d2e558bf8757", position_z);
                setdvar(#"hash_277ac0be2726df0f", angle_x);
                setdvar(#"hash_277abfbe2726dd5c", angle_y);
                setdvar(#"hash_277ac2be2726e275", angle_z);
                setdvar(#"hash_1c68b689a2dac0fa", 0);
            }
            waitframe(1);
        }
    }

#/
