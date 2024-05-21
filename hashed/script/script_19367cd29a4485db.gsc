// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\zombie_shared.gsc;
#using scripts\core_common\ai\zombie_death.gsc;
#using script_7a5293d92c61c788;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using script_16b1b77a76492c6a;
#using script_2618e0f3e5e11649;
#using script_3411bb48d41bd3b;
#using script_3357acf79ce92f4b;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_6167e26342be354b;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\dev_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\bots\bot.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\armor.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\aat_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_420b39d3;

/#

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x5
    // Checksum 0xb8af6715, Offset: 0x178
    // Size: 0x4c
    function private autoexec __init__system__() {
        system::register(#"hash_3a0015e9f67cadaf", &preinit, &postinit, undefined, undefined);
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x4
    // Checksum 0x462608cf, Offset: 0x1d0
    // Size: 0x74
    function private preinit() {
        util::init_dvar(#"hash_3a0015e9f67cadaf", "<unknown string>", &function_8cf627fd);
        util::init_dvar(#"hash_46ea982132a001ec", 0, &function_f1f26ccb);
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x4
    // Checksum 0x7ddd030d, Offset: 0x250
    // Size: 0x1c
    function private postinit() {
        level thread function_76de3950();
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x0
    // Checksum 0xec0f4d1f, Offset: 0x278
    // Size: 0x1b8
    function function_76de3950() {
        infovolumedebuginit();
        function_6f31d177();
        function_c4fe091c();
        if (is_true(level.aat_in_use)) {
            level thread aat::setup_devgui("<unknown string>");
            util::add_debug_command("<unknown string>");
        }
        util::add_debug_command("<unknown string>");
        util::waittill_can_add_debug_command();
        if (isdefined(level.var_c0f77370)) {
            level thread [[ level.var_c0f77370 ]]();
        }
        util::waittill_can_add_debug_command();
        if (isdefined(level.var_633b283d)) {
            level thread [[ level.var_633b283d ]]();
        }
        util::waittill_can_add_debug_command();
        if (isdefined(level.var_f793af68)) {
            level thread [[ level.var_f793af68 ]]();
        }
        util::waittill_can_add_debug_command();
        if (isdefined(level.var_6aa829ef)) {
            level thread [[ level.var_6aa829ef ]]();
        }
        util::waittill_can_add_debug_command();
        if (isdefined(level.var_800654fc)) {
            level thread [[ level.var_800654fc ]]();
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x4
    // Checksum 0xb8d1a2a, Offset: 0x438
    // Size: 0x204
    function private function_6f31d177() {
        var_d9c347d9 = struct::get_array("<unknown string>", "<unknown string>");
        foreach (var_aafdab5f in var_d9c347d9) {
            if (isdefined(var_aafdab5f.target)) {
                a_s_spawns = struct::get_array(var_aafdab5f.targetname, "<unknown string>");
                foreach (n_index, s_spawn in a_s_spawns) {
                    util::add_debug_command("<unknown string>" + var_aafdab5f.target + "<unknown string>" + n_index + "<unknown string>" + var_aafdab5f.target + "<unknown string>" + n_index + "<unknown string>");
                }
                util::add_debug_command("<unknown string>" + var_aafdab5f.target + "<unknown string>" + var_aafdab5f.target + "<unknown string>");
            }
        }
        util::add_debug_command("<unknown string>");
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x4
    // Checksum 0x714bff78, Offset: 0x648
    // Size: 0x240
    function private function_c4fe091c() {
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        var_de82b392 = function_19df1c1c();
        foreach (var_7ecdee63 in var_de82b392) {
            var_7ecdee63 = function_9e72a96(var_7ecdee63);
            util::add_debug_command("<unknown string>" + var_7ecdee63 + "<unknown string>" + var_7ecdee63 + "<unknown string>");
            util::add_debug_command("<unknown string>" + var_7ecdee63 + "<unknown string>" + var_7ecdee63 + "<unknown string>");
            util::add_debug_command("<unknown string>" + var_7ecdee63 + "<unknown string>" + var_7ecdee63 + "<unknown string>");
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 1, eflags: 0x0
    // Checksum 0x19a8745, Offset: 0x890
    // Size: 0x116c
    function function_8cf627fd(params) {
        self notify("<unknown string>");
        self endon("<unknown string>");
        waitframe(1);
        if (!isdefined(params.value)) {
            return;
        }
        cmd = strtok(params.value, "<unknown string>");
        if (!cmd.size) {
            return;
        }
        switch (cmd[0]) {
        case #"hash_2e685b829361da56":
            function_867e712a({#value:!is_true(level.var_be5f7304)});
            level.var_be5f7304 = !is_true(level.var_be5f7304);
            break;
        case #"hash_47552ceecca70bbf":
            function_ad391a04({#value:!is_true(level.var_120cb74c)});
            level.var_120cb74c = !is_true(level.var_120cb74c);
            break;
        case #"hash_1601070d585ddd81":
            function_3fe9e6d5({#value:!is_true(level.var_2602effb)});
            level.var_2602effb = !is_true(level.var_2602effb);
            break;
        case #"hash_7ac289b5f23d2a16":
            function_42d3c9f5({#value:cmd[1]});
            break;
        case #"hash_c2cc9e25cab2cd7":
            spawn_aitype(cmd[1]);
            break;
        case #"hash_6aa7001d6e1ebe88":
            function_e645d51a(level.var_a46cf88a, cmd[1]);
            break;
        case #"hash_577941bb0dacd434":
            function_e645d51a(getaiarray(), cmd[1]);
            break;
        case #"hash_c959cc1595e2f7":
            array::thread_all(function_a1ef346b(), &zm_devgui::function_8d799ebd);
            break;
        case #"hash_1f1842f8525e2b9e":
            array::thread_all(function_a1ef346b(), &zm_devgui::zombie_devgui_give_money, 50);
            break;
        case #"hash_122c4df3e2c0a31e":
            array::thread_all(function_a1ef346b(), &zm_devgui::zombie_devgui_give_money, 100);
            break;
        case #"hash_346579f3f60438aa":
            array::thread_all(function_a1ef346b(), &zm_devgui::zombie_devgui_give_money, 500);
            break;
        case #"hash_ca6d38b092c2dae":
            array::thread_all(function_a1ef346b(), &zm_devgui::zombie_devgui_give_money, 5000);
            break;
        case #"hash_27d4bc4bf6d98bdf":
            array::thread_all(function_a1ef346b(), &namespace_dd7e54e3::function_b2f69241);
            break;
        case #"hash_67c3788855e430dd":
            array::thread_all(function_a1ef346b(), &namespace_dd7e54e3::give_armor, #"armor_item_lv1_t9_sr");
            break;
        case #"hash_67c3758855e42bc4":
            array::thread_all(function_a1ef346b(), &namespace_dd7e54e3::give_armor, #"armor_item_lv2_t9_sr");
            break;
        case #"hash_67c3768855e42d77":
            array::thread_all(function_a1ef346b(), &namespace_dd7e54e3::give_armor, #"armor_item_lv3_t9_sr");
            break;
        case #"hash_278d3011e8daefc9":
            var_cc6e64ae = getdvarint(#"hash_7255c78e5d6bfa33", -1);
            if (isdefined(level.var_37778628)) {
                [[ level.var_37778628 ]](var_cc6e64ae);
            }
            break;
        case #"hash_68b02f0279a6018a":
            level.var_c7552541 = !is_true(level.var_c7552541);
            if (level.var_c7552541) {
                level thread function_e59c3c07();
            } else {
                level notify(#"hash_2a5b4fb329b3984a");
            }
            break;
        case #"hash_79295473b7f29d5":
            var_9965967d = namespace_ce1f29cc::function_fac3e87c();
            var_625b64e6 = namespace_2c949ef8::function_10c88d2e();
            spawns = arraycombine(&var_9965967d, &var_625b64e6, 0);
            level thread function_46997bdf(&spawns, "<unknown string>");
            break;
        case #"hash_6c29b11ea918c7bb":
            var_9965967d = namespace_ce1f29cc::function_fac3e87c();
            var_625b64e6 = namespace_2c949ef8::function_10c88d2e();
            spawns = arraycombine(&var_9965967d, &var_625b64e6, 0);
            function_70e877d7(&spawns);
            break;
        case #"hash_5f4a68bd8f1d951c":
            if (!level flag::get(#"hash_2948fbc2709393c1")) {
                level thread function_34f85f1b(#"hash_2948fbc2709393c1");
            } else {
                level flag::clear(#"hash_2948fbc2709393c1");
            }
            break;
        case #"hash_4dcde390e34421ba":
            if (!level flag::get(#"hash_7c64d48a72acee19")) {
                level thread function_34f85f1b(#"hash_7c64d48a72acee19", 0);
            } else {
                level flag::clear(#"hash_7c64d48a72acee19");
            }
        case #"hash_17f656e4906d263d":
            zombies = getaiarchetypearray(#"zombie");
            foreach (zombie in zombies) {
                zombie zombie_utility::set_zombie_run_cycle_override_value("<unknown string>");
            }
            break;
        case #"hash_58f657c627e51661":
            level.var_f662b93f = !is_true(level.var_f662b93f);
            if (level.var_f662b93f) {
                getplayers()[0] thread function_df5be8b2();
            } else {
                level notify(#"hash_624d34392463b628");
            }
            break;
        case #"hash_3d82e58502d3b9a7":
            function_f9023d3a();
            break;
        case #"hash_166eb0846966ee22":
            function_c78fe37a();
            break;
        case #"hash_51e79de8f027c5e1":
            function_71797cab();
            break;
        case #"hash_5814e765f67e3421":
            function_dabc0bfe();
            if (isdefined(level.var_29cf6901)) {
                level.var_29cf6901 = undefined;
                level notify(#"hash_38fcca4f222bb813");
            }
            break;
        case #"hash_10568fdee341e234":
            function_832956c9();
            break;
        case #"hash_77b350e55c00c7f2":
            function_60cf1e76();
            break;
        case #"hash_15ba5e2d53488ef6":
            level.var_29cf6901.repeat = !is_true(level.var_29cf6901.repeat);
            level thread function_58e8b7e3();
            break;
        case #"hash_4f637a6935df3a1c":
            level thread function_b104a7cb();
            break;
        case #"hash_34eaa65aa218e34c":
            level function_e77b67f(params, 1);
            break;
        case #"hash_2a07c5c2234c0125":
            level function_e77b67f(params, 0);
            break;
        case #"hash_6e8b16b2c5467b11":
            level notify(#"hash_4fbe4720f6f13107", {#b_success:1});
            break;
        case #"hash_51c4d89a493056a":
            level.var_12f54bf = !is_true(level.var_12f54bf);
            break;
        case #"hash_693513693fe08584":
            level thread function_254bafc6();
            break;
        case #"hash_790736a92ac26568":
            v_origin = getplayers()[0] function_7ae85497();
            actor = arraygetclosest(v_origin, getactorarray());
            if (isdefined(actor)) {
                if (isdefined(level.var_cc1e4a20)) {
                    level.var_cc1e4a20 deletedelay();
                }
                level.var_cc1e4a20 = util::spawn_model("<unknown string>", v_origin);
                if (isdefined(level.var_cc1e4a20)) {
                    slots = namespace_85745671::function_bdb2b85b(level.var_cc1e4a20, level.var_cc1e4a20.origin, level.var_cc1e4a20.angles, 40, 5, 16);
                    if (!isdefined(slots) || slots.size <= 0) {
                        return;
                    }
                    level.var_cc1e4a20.is_active = 1;
                    level.var_cc1e4a20.var_b79a8ac7 = {#var_f019ea1a:6000, #slots:slots};
                    if (!namespace_85745671::function_a31a41e8(actor, level.var_cc1e4a20)) {
                        level.var_cc1e4a20 deletedelay();
                        level.var_cc1e4a20 = undefined;
                    }
                }
            }
            break;
        case #"hash_7dc916f19cb3187":
            switch (cmd[1]) {
            case #"obj":
            case #"objective":
                list = level.contentmanager.var_407236bf.list;
                index = level.contentmanager.var_407236bf.index;
                break;
            case #"capsule":
            case #"cap":
                list = level.contentmanager.var_dc858a58.list;
                index = level.contentmanager.var_dc858a58.index;
                break;
            }
            if (!isdefined(list)) {
                break;
            }
            for (i = 0; i < list.size; i++) {
                if (i === index) {
                    println("<unknown string>" + function_9e72a96(list[i]) + "<unknown string>");
                    continue;
                }
                println(function_9e72a96(list[i]) + "<unknown string>");
            }
            break;
        case #"hash_5c8627bc3cc0e4ef":
            target_player = getplayers()[0];
            var_8a3f16c6 = target_player;
            spawn = var_8a3f16c6 squad_spawn::function_e402b74e(var_8a3f16c6, target_player);
            if (isdefined(spawn)) {
                debugstar(spawn.origin, 1200, (1, 0, 1));
                debugstar(var_8a3f16c6.origin, 1200, (0, 0, 1));
                line(spawn.origin, var_8a3f16c6.origin, (0, 0, 1), 1, 0, 1200);
            }
            break;
        default:
            break;
        }
        if (isdefined(level.var_c7b02cfe)) {
            [[ level.var_c7b02cfe ]](params);
        }
        if (isdefined(level.var_d4c3c1b9)) {
            for (index = 0; index < level.var_d4c3c1b9.size; index++) {
                [[ level.var_d4c3c1b9[index] ]](params);
            }
        }
        setdvar(#"hash_3a0015e9f67cadaf", "<unknown string>");
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 1, eflags: 0x0
    // Checksum 0x21e25527, Offset: 0x1a08
    // Size: 0x48
    function function_d8ef0f00(callback) {
        if (!isdefined(level.var_d4c3c1b9)) {
            level.var_d4c3c1b9 = [];
        }
        level.var_d4c3c1b9[level.var_d4c3c1b9.size] = callback;
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 2, eflags: 0x0
    // Checksum 0x7e650b97, Offset: 0x1a58
    // Size: 0x208
    function function_e77b67f(params, show) {
        cmd = strtok(params.value, "<unknown string>");
        if (cmd.size <= 1 || cmd.size > 3) {
            return;
        }
        key = "<unknown string>";
        value = cmd[1];
        if (cmd.size > 2) {
            key = cmd[1];
            value = cmd[2];
        }
        ents = getentarray(value, key);
        if (!ents.size) {
            println("<unknown string>" + key + "<unknown string>" + value);
            return;
        }
        foreach (ent in ents) {
            if (show) {
                setdvar(#"g_drawdebuginfovolumes", 1);
                showinfovolume(ent getentitynumber(), (1, 1, 0), 0.5);
                continue;
            }
            hideinfovolume(ent getentitynumber());
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x0
    // Checksum 0x59489f7c, Offset: 0x1c68
    // Size: 0xe4
    function function_f9023d3a() {
        v_origin = getplayers()[0] function_7ae85497();
        v_origin = getclosestpointonnavmesh(v_origin, 64, 32);
        if (!isdefined(v_origin)) {
            return;
        }
        if (!isdefined(level.var_29cf6901)) {
            level.var_29cf6901 = {};
        }
        if (!isdefined(level.var_29cf6901.start)) {
            level.var_29cf6901.start = [];
        }
        level.var_29cf6901.start[level.var_29cf6901.start.size] = v_origin;
        level thread function_37c30a3b();
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x0
    // Checksum 0xb791d49d, Offset: 0x1d58
    // Size: 0xe4
    function function_c78fe37a() {
        v_origin = getplayers()[0] function_7ae85497();
        v_origin = getclosestpointonnavmesh(v_origin, 64, 32);
        if (!isdefined(v_origin)) {
            return;
        }
        if (!isdefined(level.var_29cf6901)) {
            level.var_29cf6901 = {};
        }
        if (!isdefined(level.var_29cf6901.end)) {
            level.var_29cf6901.end = [];
        }
        level.var_29cf6901.end[level.var_29cf6901.end.size] = v_origin;
        level thread function_37c30a3b();
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x0
    // Checksum 0xfea8d4ed, Offset: 0x1e48
    // Size: 0x60
    function function_dabc0bfe() {
        function_832956c9();
        if (isdefined(level.var_29cf6901)) {
            level.var_29cf6901.start = undefined;
            level.var_29cf6901.end = undefined;
            level notify(#"hash_38fcca4f222bb813");
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x0
    // Checksum 0xf5458755, Offset: 0x1eb0
    // Size: 0x15c
    function function_71797cab() {
        v_origin = getplayers()[0] function_7ae85497();
        points = [];
        if (isdefined(level.var_29cf6901.start)) {
            points = level.var_29cf6901.start;
        }
        if (isdefined(level.var_29cf6901.end)) {
            points = arraycombine(points, level.var_29cf6901.end, 1, 0);
        }
        closest_point = arraygetclosest(v_origin, points);
        if (isdefined(closest_point)) {
            if (isdefined(level.var_29cf6901.start)) {
                arrayremovevalue(level.var_29cf6901.start, closest_point);
            }
            if (isdefined(level.var_29cf6901.end)) {
                arrayremovevalue(level.var_29cf6901.end, closest_point);
            }
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x0
    // Checksum 0xdaded791, Offset: 0x2018
    // Size: 0x1b8
    function function_60cf1e76() {
        if (!(isdefined(level.var_29cf6901.start) && isdefined(level.var_29cf6901) && isdefined(level.var_29cf6901.end))) {
            return;
        }
        if (!isdefined(level.var_29cf6901.ai)) {
            level.var_29cf6901.ai = [];
        }
        start = array::random(level.var_29cf6901.start);
        end = array::random(level.var_29cf6901.end);
        forward = end - start;
        var_1a614c37 = spawnactor(#"spawner_zm_zombie", start, vectortoangles((0, forward[1], 0)), "<unknown string>", 1);
        if (!isdefined(var_1a614c37)) {
            return;
        }
        var_1a614c37.ignoreall = 1;
        var_1a614c37.var_67faa700 = 1;
        var_1a614c37.backedupgoal = var_1a614c37.origin;
        var_1a614c37.b_ignore_cleanup = 1;
        var_1a614c37 thread function_eee42c73();
        level.var_29cf6901.ai[level.var_29cf6901.ai.size] = var_1a614c37;
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x0
    // Checksum 0x2aaf713d, Offset: 0x21d8
    // Size: 0xe8
    function function_832956c9() {
        if (!isdefined(level.var_29cf6901.ai)) {
            return;
        }
        if (isarray(level.var_29cf6901.ai) && level.var_29cf6901.ai.size) {
            foreach (ai in level.var_29cf6901.ai) {
                ai deletedelay();
            }
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x0
    // Checksum 0x6b41257e, Offset: 0x22c8
    // Size: 0x29a
    function function_b104a7cb() {
        if (is_true(level.var_26340887)) {
            level notify(#"hash_f214fb1df20b46b");
            level.var_26340887 = undefined;
            return;
        }
        level.var_26340887 = 1;
        level endon(#"hash_f214fb1df20b46b");
        record = getdvar(#"recorder_enablerec", 0);
        while (true) {
            foreach (player in function_a1ef346b()) {
                color = (0, 1, 1);
                position = player.last_valid_position;
                if (!isdefined(position)) {
                    color = (1, 0, 0);
                    position = player.origin;
                }
                debug2dtext((960, 180, 0), "<unknown string>" + distance(player.origin, position) + "<unknown string>" + distancesquared(player.origin, position), (1, 1, 0), 1, (0, 0, 0), 0.75);
                if (record) {
                    recordstar(position, color, "<unknown string>", player);
                    recordline(position, position + (0, 0, 72), color, "<unknown string>", player);
                    continue;
                }
                debugstar(position, 1, color);
                line(position, position + (0, 0, 72), color, 1, 1, 1);
            }
            waitframe(1);
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x0
    // Checksum 0xff7eb9cb, Offset: 0x2570
    // Size: 0x158
    function function_eee42c73() {
        self endon(#"death");
        while (isdefined(level.var_29cf6901) && zm_utility::is_classic() && !is_true(self.completed_emerging_into_playable_area)) {
            waitframe(1);
        }
        current_goal = 0;
        var_6936a23a = [level.var_29cf6901.end, level.var_29cf6901.start];
        self setgoal(array::random(var_6936a23a[current_goal]));
        while (is_true(level.var_29cf6901.repeat)) {
            self waittill(#"goal");
            current_goal = !current_goal;
            self setgoal(array::random(var_6936a23a[current_goal]));
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x0
    // Checksum 0x56bb1239, Offset: 0x26d0
    // Size: 0x7e
    function function_58e8b7e3() {
        while (is_true(level.var_29cf6901.repeat)) {
            debug2dtext((100, 100, 0), "<unknown string>", (0, 1, 0), 1, (0.5, 0.5, 0.5), 0.75);
            waitframe(1);
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x0
    // Checksum 0x624afcf8, Offset: 0x2758
    // Size: 0x2f4
    function function_37c30a3b() {
        self notify("<unknown string>");
        self endon("<unknown string>");
        level endon(#"game_ended", #"hash_38fcca4f222bb813");
        while (true) {
            waitframe(1);
            if (!isdefined(level.var_29cf6901)) {
                continue;
            }
            if (isdefined(level.var_29cf6901.start)) {
                foreach (origin in level.var_29cf6901.start) {
                    debugstar(origin, 1, (0, 1, 0));
                }
            }
            if (isdefined(level.var_29cf6901.end)) {
                foreach (origin in level.var_29cf6901.end) {
                    debugstar(origin, 1, (1, 0, 0));
                }
            }
            if (isarray(level.var_29cf6901.ai) && level.var_29cf6901.ai.size) {
                function_1eaaceab(level.var_29cf6901.ai);
                foreach (ai in level.var_29cf6901.ai) {
                    line(ai.origin, ai.origin + (0, 0, ai function_6a9ae71()), (1, 0, 1), 1, 0, 1);
                }
            }
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 1, eflags: 0x0
    // Checksum 0x1ae9b13b, Offset: 0x2a58
    // Size: 0xe8
    function function_7ae85497(*dist) {
        v_forward = anglestoforward(self getplayerangles());
        v_forward = vectorscale(v_forward, 4000);
        var_5927a215 = (10, 10, 10);
        v_eye = self getplayercamerapos();
        var_abd03397 = physicstrace(v_eye, v_eye + v_forward, -1 * var_5927a215, var_5927a215, getplayers()[0], 64 | 2);
        return var_abd03397[#"position"];
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 1, eflags: 0x0
    // Checksum 0xa65a3749, Offset: 0x2b48
    // Size: 0x174
    function spawn_aitype(aitype) {
        host = getplayers()[0];
        v_origin = host function_7ae85497();
        ai = spawnactor(aitype, v_origin, host.angles + (0, 180, 0), "<unknown string>", 1);
        if (isdefined(ai)) {
            if (!isdefined(level.var_a46cf88a)) {
                level.var_a46cf88a = [];
            } else if (!isarray(level.var_a46cf88a)) {
                level.var_a46cf88a = array(level.var_a46cf88a);
            }
            level.var_a46cf88a[level.var_a46cf88a.size] = ai;
            function_1eaaceab(level.var_a46cf88a);
            return;
        }
        iprintlnbold("<unknown string>" + aitype + "<unknown string>" + getailimit() + "<unknown string>");
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 2, eflags: 0x4
    // Checksum 0x2fe17209, Offset: 0x2cc8
    // Size: 0x10c
    function private function_e645d51a(a_ai, var_7ecdee63) {
        if (isarray(a_ai)) {
            foreach (ai in a_ai) {
                if (isalive(ai) && (!isdefined(var_7ecdee63) || ai.aitype === var_7ecdee63)) {
                    ai.allowdeath = 1;
                    ai kill();
                }
            }
            function_1eaaceab(a_ai);
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 1, eflags: 0x4
    // Checksum 0xd6a68eeb, Offset: 0x2de0
    // Size: 0x60
    function private function_867e712a(params) {
        if (is_true(params.value)) {
            level thread function_51403488();
            return;
        }
        level notify(#"hash_275c4bf3f697b9e");
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x4
    // Checksum 0x88bea973, Offset: 0x2e48
    // Size: 0x1ba
    function private function_51403488() {
        level notify(#"hash_275c4bf3f697b9e");
        level endon(#"hash_275c4bf3f697b9e", #"end_game", #"game_ended");
        while (true) {
            player = getplayers()[0];
            if (!isdefined(player)) {
                return;
            }
            a_ai = player getenemiesinradius(player.origin, 2000);
            foreach (ai in a_ai) {
                if (isalive(ai)) {
                    print3d(ai.origin + (0, 0, 68), "<unknown string>" + ai.health + "<unknown string>" + (isdefined(ai.maxhealth) ? ai.maxhealth : "<unknown string>"), (0, 1, 0), 1, 0.5);
                }
            }
            waitframe(1);
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 1, eflags: 0x4
    // Checksum 0x566ffb20, Offset: 0x3010
    // Size: 0x70
    function private function_ad391a04(params) {
        if (isint(params.value) && params.value) {
            level thread print_zombie_counts();
            return;
        }
        level notify(#"hash_87534d41fedbdf9");
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x4
    // Checksum 0x5b43c670, Offset: 0x3088
    // Size: 0x352
    function private print_zombie_counts() {
        level notify(#"hash_87534d41fedbdf9");
        level endon(#"hash_87534d41fedbdf9");
        while (true) {
            var_c708e6e1 = 120;
            var_6a432250 = [];
            a_ai = getaiarray();
            foreach (ai in a_ai) {
                if (isalive(ai) && isdefined(ai.archetype)) {
                    if (isdefined(ai.var_9fde8624)) {
                        str_archetype = function_9e72a96(ai.archetype) + "<unknown string>" + function_9e72a96(ai.var_9fde8624) + "<unknown string>";
                    } else {
                        str_archetype = function_9e72a96(ai.archetype);
                    }
                    if (!isdefined(var_6a432250[str_archetype])) {
                        var_6a432250[str_archetype] = 0;
                    }
                    var_6a432250[str_archetype]++;
                }
            }
            debug2dtext((700, var_c708e6e1, 0), "<unknown string>", (0, 1, 0), 1, (0, 0, 0), 0.8, 1.5, 5);
            var_c708e6e1 += 33;
            debug2dtext((700, var_c708e6e1, 0), "<unknown string>", (0, 1, 0), 1, (0, 0, 0), 0.8, 1, 5);
            foreach (str_archetype, n_ai_count in var_6a432250) {
                var_c708e6e1 += 22;
                debug2dtext((700, var_c708e6e1, 0), function_9e72a96(str_archetype) + "<unknown string>" + n_ai_count + "<unknown string>", (0, 1, 0), 1, (0, 0, 0), 0.8, 1, 5);
            }
            waitframe(5);
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 1, eflags: 0x4
    // Checksum 0x4f5a44e3, Offset: 0x33e8
    // Size: 0x118
    function private function_3fe9e6d5(params) {
        if (isdefined(params.value) && params.value !== 0) {
            spawner::add_ai_spawn_function(&function_e9939aa7);
            foreach (zombie in getactorarray()) {
                zombie thread function_e9939aa7();
            }
            return;
        }
        spawner::function_932006d1(&function_e9939aa7);
        level notify(#"hash_339fb98e940fbaf6");
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x4
    // Checksum 0xf0d74b44, Offset: 0x3508
    // Size: 0x90
    function private function_e9939aa7() {
        self endon(#"death");
        level endon(#"hash_339fb98e940fbaf6");
        while (true) {
            waitframe(1);
            record3dtext(is_true(self.var_1fa24724) ? "<unknown string>" : "<unknown string>", self.origin, (0, 1, 0), "<unknown string>", self);
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 1, eflags: 0x4
    // Checksum 0xd05e9148, Offset: 0x35a0
    // Size: 0x58
    function private function_f1f26ccb(params) {
        level.var_2b46c827 = is_true(params.value);
        if (!level.var_2b46c827) {
            level notify(#"hash_39e4c9a17bf97f7d");
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 1, eflags: 0x4
    // Checksum 0x653a29f, Offset: 0x3600
    // Size: 0x220
    function private function_42d3c9f5(params) {
        if (params.value === "<unknown string>") {
            return;
        }
        var_bfae6869 = strtok(params.value, "<unknown string>");
        var_3480e14d = var_bfae6869[0];
        var_a75f9486 = var_bfae6869[1];
        s_instance = content_manager::get_children(struct::get(var_3480e14d))[0];
        a_s_spawns = content_manager::get_children(s_instance);
        if (isdefined(var_a75f9486)) {
            var_a75f9486 = int(var_a75f9486);
            player = getplayers()[0];
            player setorigin(a_s_spawns[var_a75f9486].origin);
            player setplayerangles(a_s_spawns[var_a75f9486].angles);
            return;
        }
        foreach (n_index, player in getplayers()) {
            s_spawn = a_s_spawns[n_index];
            if (isdefined(s_spawn)) {
                player setorigin(s_spawn.origin);
                player setplayerangles(s_spawn.angles);
            }
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 1, eflags: 0x0
    // Checksum 0x8c7eec62, Offset: 0x3828
    // Size: 0xc4
    function function_2fab7a62(str_type) {
        if (isdefined(str_type) && str_type != "<unknown string>") {
            str_dvar = "<unknown string>" + str_type;
            util::init_dvar(str_dvar, 0, &function_2a3a4bf6);
            util::add_devgui(content_manager::devgui_path("<unknown string>", function_9e72a96(str_type), 103), "<unknown string>" + str_dvar + "<unknown string>");
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 1, eflags: 0x0
    // Checksum 0x1d149e99, Offset: 0x38f8
    // Size: 0xf4
    function function_2a3a4bf6(params) {
        var_806a0877 = function_9e72a96(params.name);
        a_str_tokens = strtok(var_806a0877, "<unknown string>");
        assert(isdefined(a_str_tokens) && a_str_tokens.size > 1, var_806a0877 + "<unknown string>");
        str_type = a_str_tokens[1];
        if (params.value === 1 || params.value === 0) {
            level thread function_afb25532(str_type, params.value);
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 2, eflags: 0x0
    // Checksum 0xb6fc4c14, Offset: 0x39f8
    // Size: 0x3be
    function function_afb25532(str_type, b_enable) {
        if (!isdefined(b_enable)) {
            b_enable = 1;
        }
        level notify("<unknown string>" + str_type);
        level endon("<unknown string>" + str_type, #"end_game", #"game_ended");
        if (b_enable) {
            while (true) {
                player = getplayers()[0];
                if (!isdefined(player)) {
                    return;
                }
                var_e5880035 = struct::get_array(str_type, "<unknown string>");
                if (!var_e5880035.size) {
                    return;
                }
                foreach (var_97aab885 in var_e5880035) {
                    if (isdefined(var_97aab885.contentgroups[#"capture_point"][0])) {
                        v_loc = var_97aab885.contentgroups[#"capture_point"][0].origin;
                        v_color = (0, 1, 0);
                    } else if (isdefined(var_97aab885.contentgroups[#"hash_6b1e5d8f9e70a70e"][0])) {
                        v_loc = var_97aab885.contentgroups[#"hash_6b1e5d8f9e70a70e"][0].origin;
                        v_color = (0, 1, 0);
                    } else if (isdefined(var_97aab885.contentgroups[#"trigger_spawn"][0])) {
                        v_loc = var_97aab885.contentgroups[#"trigger_spawn"][0].origin;
                        v_color = (0, 1, 0);
                    } else {
                        v_loc = var_97aab885.origin;
                        v_color = (1, 0, 0);
                    }
                    print3d(v_loc, "<unknown string>" + str_type + "<unknown string>" + (isdefined(var_97aab885.targetname) ? var_97aab885.targetname : "<unknown string>"), (1, 1, 0), undefined, 1);
                    n_radius = 64;
                    n_dist = distance(v_loc, player.origin);
                    n_radius *= n_dist / 3000;
                    sphere(v_loc, n_radius, v_color);
                }
                debug2dtext((100, 900, 0), "<unknown string>", (0, 1, 0), undefined, undefined, undefined, 1.5);
                debug2dtext((100, 925, 0), "<unknown string>", (1, 0, 0), undefined, undefined, undefined, 1.5);
                waitframe(1);
            }
            return;
        }
        level notify("<unknown string>" + str_type);
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x0
    // Checksum 0x12af9c23, Offset: 0x3dc0
    // Size: 0x296
    function function_e59c3c07() {
        level notify(#"hash_2a5b4fb329b3984a");
        level endon(#"hash_2a5b4fb329b3984a");
        while (isdefined(level.attackables)) {
            foreach (attackable in level.attackables) {
                circle(attackable.origin, attackable.var_b79a8ac7.var_f019ea1a, (1, 0, 1), 0, 1);
                foreach (slot in attackable.var_b79a8ac7.slots) {
                    circle(slot.origin, 8, (1, 0, 1), 0, 1);
                    debugstar(slot.origin, 1, (1, 0, 1));
                    line(attackable.origin, slot.origin, (1, 0, 1), 1, 0);
                    if (!isalive(slot.entity)) {
                        continue;
                    }
                    circle(slot.entity.origin, slot.entity getpathfindingradius(), (0, 1, 1), 0, 1);
                    line(slot.origin, slot.entity.origin, (0, 1, 1), 1, 0);
                }
            }
            waitframe(1);
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 2, eflags: 0x0
    // Checksum 0x3877e949, Offset: 0x4060
    // Size: 0x494
    function function_34f85f1b(str_flag, var_1303e212) {
        if (!isdefined(var_1303e212)) {
            var_1303e212 = 1;
        }
        level flag::set(str_flag);
        if (var_1303e212) {
            var_4777a582 = getdvar(#"hash_7c3872b765911891");
            setdvar(#"hash_7c3872b765911891", 0);
            if (var_4777a582 !== 0) {
                wait(3);
            }
        }
        level.var_78b6c3a4 = 0;
        while (level flag::get(str_flag)) {
            if (var_1303e212 && (!isdefined(level.hotzones) || !level.hotzones.size)) {
                wait(1);
                continue;
            }
            var_842cdacd = [];
            if (var_1303e212) {
                hotzone = arraygetclosest(getplayers()[0].origin, level.hotzones);
                var_842cdacd = struct::get_array(hotzone.targetname, "<unknown string>");
            } else {
                trigger = arraygetclosest(getplayers()[0].origin, getentarray("<unknown string>", "<unknown string>"));
                if (isdefined(trigger.target)) {
                    var_842cdacd = struct::get_array(trigger.target, "<unknown string>");
                }
            }
            if (!var_842cdacd.size) {
                wait(1);
                continue;
            }
            foreach (spawn_point in var_842cdacd) {
                while (level flag::get(str_flag) && (level.var_78b6c3a4 >= var_842cdacd.size || getaicount() >= getailimit())) {
                    wait(1);
                }
                if (!level flag::get(str_flag)) {
                    break;
                }
                new_ai = spawnactor(#"hash_7cba8a05511ceedf", spawn_point.origin, spawn_point.angles, undefined, 1);
                if (!isdefined(new_ai)) {
                    println("<unknown string>" + spawn_point.origin);
                    debugstar(spawn_point.origin, 30, (1, 0, 0), "<unknown string>");
                }
                if (isdefined(spawn_point.var_90d0c0ff) && function_c4cb6239(#"hash_7cba8a05511ceedf", spawn_point.var_90d0c0ff)) {
                    new_ai.var_c9b11cb3 = spawn_point.var_90d0c0ff;
                }
                level.var_78b6c3a4++;
                new_ai thread function_8245d8a0();
                if (isdefined(spawn_point.var_90d0c0ff)) {
                    debugstar(spawn_point.origin, 100, (1, 1, 1), "<unknown string>" + spawn_point.var_90d0c0ff, 0.65);
                }
            }
        }
        if (isdefined(var_4777a582)) {
            setdvar(#"hash_7c3872b765911891", var_4777a582);
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x0
    // Checksum 0x600875ee, Offset: 0x4500
    // Size: 0x70
    function function_8245d8a0() {
        self waittill(#"hash_790882ac8688cee5", #"death");
        wait(1);
        if (isalive(self)) {
            self.allowdeath = 1;
            self delete();
        }
        level.var_78b6c3a4--;
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 2, eflags: 0x0
    // Checksum 0x2a757269, Offset: 0x4578
    // Size: 0x588
    function function_46997bdf(spawn_points, var_e6c99abc) {
        level endon(#"game_ended");
        if (!isdefined(var_e6c99abc)) {
            var_e6c99abc = "<unknown string>";
        }
        totalspawns = spawn_points.size;
        if (!isdefined(level.contentmanager.currentdestination)) {
            return;
        }
        destination = level.contentmanager.currentdestination;
        iprintln("<unknown string>" + var_e6c99abc + "<unknown string>");
        println("<unknown string>");
        println("<unknown string>" + destination.targetname + "<unknown string>" + totalspawns + "<unknown string>");
        println("<unknown string>" + var_e6c99abc + "<unknown string>");
        println("<unknown string>");
        level notify(#"hash_2d15e9ef4a8fd60c");
        level.var_5c5abaf2 = 1;
        level.var_135a36f7 = [];
        level.var_d3582224 = 0;
        var_4777a582 = getdvarint(#"hash_7c3872b765911891", 0);
        setdvar(#"hash_7c3872b765911891", 0);
        if (var_4777a582 != 0) {
            wait(3);
        }
        available_slots = getailimit() - getaicount();
        iprintln("<unknown string>" + available_slots);
        foreach (spawn_point in spawn_points) {
            available_slots = getailimit() - getaicount();
            if (available_slots > 0 && function_103c90c0(spawn_point, 0)) {
                available_slots -= 1;
            }
            while (available_slots <= 0) {
                available_slots = getailimit() - getaicount();
                wait(0.1);
            }
        }
        while (level.var_d3582224 > 0) {
            wait(0.1);
        }
        var_d6d7c500 = level.var_135a36f7.size > 0;
        var_76fb4fcc = var_d6d7c500 ? "<unknown string>" + level.var_135a36f7.size + "<unknown string>" : "<unknown string>";
        color = var_d6d7c500 ? "<unknown string>" : "<unknown string>";
        println(color + "<unknown string>");
        println(color + "<unknown string>" + destination.targetname + "<unknown string>" + var_e6c99abc + "<unknown string>" + var_76fb4fcc);
        println(color + "<unknown string>");
        iprintlnbold(color + "<unknown string>" + destination.targetname + "<unknown string>" + var_e6c99abc + "<unknown string>" + var_76fb4fcc);
        if (var_d6d7c500) {
            foreach (msg in level.var_135a36f7) {
                println(color + msg);
            }
            println(color + "<unknown string>");
        }
        setdvar(#"hash_7c3872b765911891", var_4777a582);
        level.var_5c5abaf2 = 0;
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 1, eflags: 0x0
    // Checksum 0x8585dfb3, Offset: 0x4b08
    // Size: 0x254
    function function_70e877d7(spawn_points) {
        level.var_135a36f7 = undefined;
        var_d610cbe2 = sqr(1000);
        player = getplayers()[0];
        player_vec = vectornormalize(anglestoforward(player getplayerangles()));
        var_167af5ff = undefined;
        best_dot = 0.707;
        foreach (spawn_point in spawn_points) {
            var_a9944b6 = vectornormalize(spawn_point.origin - player.origin);
            dot = vectordot(player_vec, var_a9944b6);
            if (dot > best_dot && distancesquared(spawn_point.origin, player.origin) < var_d610cbe2) {
                best_dot = dot;
                var_167af5ff = spawn_point;
            }
        }
        if (isdefined(var_167af5ff)) {
            iprintln("<unknown string>" + var_167af5ff.origin);
            if (function_103c90c0(var_167af5ff, 1)) {
                debugstar(var_167af5ff.origin, 30, (0, 0, 1), "<unknown string>");
            }
            return;
        }
        iprintln("<unknown string>");
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 2, eflags: 0x0
    // Checksum 0xdc42601e, Offset: 0x4d68
    // Size: 0x182
    function function_103c90c0(spawn_point, var_957493b8) {
        if (!isdefined(var_957493b8)) {
            var_957493b8 = 0;
        }
        new_ai = spawnactor(#"hash_7cba8a05511ceedf", spawn_point.origin, spawn_point.angles, undefined, 1);
        if (!isdefined(new_ai)) {
            println("<unknown string>" + spawn_point.origin);
            debugstar(spawn_point.origin, 30, (1, 0, 0), "<unknown string>");
            return 0;
        }
        if (!isdefined(level.var_d3582224)) {
            level.var_d3582224 = 0;
        }
        if (is_false(var_957493b8)) {
            level.var_d3582224 += 1;
        }
        if (isdefined(spawn_point.var_90d0c0ff) && function_c4cb6239(#"hash_7cba8a05511ceedf", spawn_point.var_90d0c0ff)) {
            new_ai.var_c9b11cb3 = spawn_point.var_90d0c0ff;
        }
        new_ai thread function_fabd315d(spawn_point, var_957493b8);
        return 1;
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 2, eflags: 0x0
    // Checksum 0x4820d6dc, Offset: 0x4ef8
    // Size: 0x4ec
    function function_fabd315d(spawn_point, var_957493b8) {
        if (is_false(var_957493b8)) {
            self endoncallback(&function_cad1a4b5, #"death");
        } else {
            self endon(#"death");
        }
        self waittill(#"hash_790882ac8688cee5");
        if (!ispointonnavmesh(self.origin, self)) {
            println("<unknown string>" + spawn_point.origin);
            debugstar(spawn_point.origin, 80, (1, 0, 0), "<unknown string>");
            if (isdefined(level.var_135a36f7)) {
                errormsg = "<unknown string>" + spawn_point.origin;
                if (isdefined(self.var_90d0c0ff) && isdefined(self.var_1a02009e)) {
                    errormsg += "<unknown string>" + self.var_90d0c0ff + "<unknown string>" + function_9e72a96(self.var_1a02009e);
                }
                level.var_135a36f7[level.var_135a36f7.size] = errormsg;
            } else {
                errormsg = "<unknown string>" + spawn_point.origin;
                if (isdefined(self.var_90d0c0ff) && isdefined(self.var_1a02009e)) {
                    errormsg += "<unknown string>" + self.var_90d0c0ff + "<unknown string>" + function_9e72a96(self.var_1a02009e);
                }
                println("<unknown string>" + errormsg);
            }
        } else {
            self.cant_move_cb = &function_bc21ac74;
            var_6e56b150 = 0;
            for (i = 0; i < 2; i++) {
                goal = awareness::function_b184324d(spawn_point.origin, isdefined(spawn_point.wander_radius) ? spawn_point.wander_radius : 128, self getpathfindingradius() * 1.2, self getpathfindingradius() * 1.2);
                if (isdefined(goal)) {
                    self setgoal(goal);
                }
                waitresult = self waittilltimeout(7, #"goal", #"bad_path", #"death");
                if (waitresult._notify == #"goal" || waitresult._notify == "<unknown string>") {
                    break;
                } else if (waitresult._notify == #"bad_path") {
                    var_6e56b150++;
                }
                self waittilltimeout(2, #"goal_changed");
            }
            if (var_6e56b150 >= 2) {
                println("<unknown string>" + spawn_point.origin);
                debugstar(spawn_point.origin, 80, (1, 0, 0), "<unknown string>");
                if (isdefined(level.var_135a36f7)) {
                    errormsg = "<unknown string>" + spawn_point.origin;
                    if (isdefined(self.var_90d0c0ff) && isdefined(self.var_1a02009e)) {
                        errormsg += "<unknown string>" + self.var_90d0c0ff + "<unknown string>" + function_9e72a96(self.var_1a02009e);
                    }
                    level.var_135a36f7[level.var_135a36f7.size] = errormsg;
                }
            }
        }
        if (is_false(var_957493b8)) {
            self.allowdeath = 1;
            self kill();
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 1, eflags: 0x4
    // Checksum 0x2c5615a0, Offset: 0x53f0
    // Size: 0x2c
    function private function_cad1a4b5(*str_notify) {
        level.var_d3582224 -= 1;
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x4
    // Checksum 0xca34a73a, Offset: 0x5428
    // Size: 0x1e
    function private function_bc21ac74() {
        self notify(#"bad_path");
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x4
    // Checksum 0x83a28e92, Offset: 0x5450
    // Size: 0x26e
    function private function_df5be8b2() {
        self endon(#"death", #"disconnect");
        level endon(#"hash_624d34392463b628");
        while (true) {
            view_pos = self getplayercamerapos();
            dir = anglestoforward(self getplayerangles()) * 500;
            end_pos = view_pos + dir;
            trace = physicstraceex(view_pos, end_pos, (0, 0, 0), (0, 0, 0), self);
            if (getdvarint(#"recorder_enablerec", 0)) {
                recordline(view_pos, view_pos + dir * trace[#"fraction"], (0, 1, 0), "<unknown string>");
            } else {
                line(view_pos, view_pos + dir * trace[#"fraction"], (0, 1, 0));
            }
            if (getdvarint(#"recorder_enablerec", 0)) {
                recordcircle(end_pos, 32, (0, 1, 0), "<unknown string>");
            } else {
                circle(end_pos, 32, (0, 1, 0), 0, 1);
            }
            if (getdvarint(#"recorder_enablerec", 0)) {
                recordstar(view_pos + dir * trace[#"fraction"], (1, 0, 0), "<unknown string>");
            } else {
                debugstar(view_pos + dir * trace[#"fraction"], (1, 0, 0));
            }
            waitframe(1);
        }
    }

    // Namespace namespace_420b39d3/namespace_420b39d3
    // Params 0, eflags: 0x0
    // Checksum 0xa4dc121e, Offset: 0x56c8
    // Size: 0x24e
    function function_254bafc6() {
        var_17b7891d = "<unknown string>" + "<unknown string>";
        self notify(var_17b7891d);
        self endon(var_17b7891d);
        level endon(#"end_game");
        if (!isdefined(level.var_d9a2ea61)) {
            level.var_d9a2ea61 = 0;
        }
        level.var_d9a2ea61 = !level.var_d9a2ea61;
        if (level.var_d9a2ea61) {
            while (true) {
                foreach (volume in level.var_afa5478b) {
                    foreach (node in volume.nodes) {
                        recordsphere(node.origin, 10, (1, 0, 0));
                        record3dtext("<unknown string>" + (isdefined(node.floor) ? node.floor : "<unknown string>"), node.origin + (0, 0, 10), (1, 0, 0));
                        if (is_true(node.var_6fff1a72)) {
                            record3dtext("<unknown string>", node.origin + (0, 0, 15), (1, 0, 0));
                        }
                    }
                }
                waitframe(1);
            }
        }
    }

#/
