// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_d9b7a459;

/#

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x5
    // Checksum 0xfc240ec8, Offset: 0xc8
    // Size: 0x4c
    function private autoexec __init__system__() {
        system::register(#"hash_5f4a915350d11e3b", &preinit, &postinit, undefined, undefined);
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x4
    // Checksum 0x26f1eb99, Offset: 0x120
    // Size: 0x340
    function private preinit() {
        level.var_2fb0636f = struct::get_array("<unknown string>", "<unknown string>");
        if (!level.var_2fb0636f.size) {
            return;
        }
        setdvar(#"hash_68eef81d0a2a76ed", 1);
        setdvar(#"hash_3c4a113ed57cc120", 1);
        setdvar(#"hash_130bfa97ce58483d", "<unknown string>");
        setdvar(#"hash_236d76abc8b15698", "<unknown string>");
        setdvar(#"hash_69bc1ab1b58a4dd9", "<unknown string>");
        setdvar(#"hash_4adbfcef4bba8e12", "<unknown string>");
        setdvar(#"hash_2fd7846bcf2b3161", 0);
        level.var_402412cd = 1;
        level.var_5a4e0f2e = 1;
        level.var_59a2c772 = 0;
        level.var_acfca739 = 0;
        a_s_temp = [];
        foreach (n_index, s_instance in level.var_2fb0636f) {
            str_name = isdefined(s_instance.targetname) ? s_instance.targetname : "<unknown string>" + n_index;
            s_instance.targetname = str_name;
            a_s_temp[str_name] = s_instance;
        }
        level.var_2fb0636f = arraycopy(a_s_temp);
        var_91562d8c = struct::get_array("<unknown string>", "<unknown string>");
        level.var_4aca3c1 = [];
        foreach (n_index, var_d7eff26a in var_91562d8c) {
            str_name = isdefined(var_d7eff26a.targetname) ? var_d7eff26a.targetname : "<unknown string>" + n_index;
            level.var_4aca3c1[str_name] = var_d7eff26a;
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x4
    // Checksum 0x956d1bc7, Offset: 0x468
    // Size: 0x5c
    function private postinit() {
        if (!level.var_2fb0636f.size) {
            return;
        }
        function_f29b39b1();
        level thread function_51acf127();
        level thread function_291b284f();
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x0
    // Checksum 0xf967e68f, Offset: 0x4d0
    // Size: 0x8c
    function function_291b284f() {
        level flag::wait_till("<unknown string>");
        level.var_59a2c772 = 1;
        level.var_acfca739 = 1;
        level thread function_1c40531e();
        level thread function_e01777dc();
        level thread function_fcde0f45();
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x0
    // Checksum 0x8b9b2203, Offset: 0x568
    // Size: 0x3f4
    function function_51acf127() {
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        util::waittill_can_add_debug_command();
        foreach (str_name, s_teleport in level.var_4aca3c1) {
            adddebugcommand("<unknown string>" + function_9e72a96(str_name) + "<unknown string>" + function_9e72a96(str_name) + "<unknown string>");
        }
        foreach (var_80b4780d, s_instance in level.var_2fb0636f) {
            adddebugcommand("<unknown string>" + function_9e72a96(var_80b4780d) + "<unknown string>" + function_9e72a96(var_80b4780d) + "<unknown string>");
            adddebugcommand("<unknown string>" + function_9e72a96(var_80b4780d) + "<unknown string>" + function_9e72a96(var_80b4780d) + "<unknown string>");
            adddebugcommand("<unknown string>" + function_9e72a96(var_80b4780d) + "<unknown string>" + function_9e72a96(var_80b4780d) + "<unknown string>");
            util::waittill_can_add_debug_command();
        }
        util::waittill_can_add_debug_command();
        adddebugcommand("<unknown string>");
        function_cd140ee9("<unknown string>", &function_ddb1f662);
        function_cd140ee9("<unknown string>", &function_ddb1f662);
        function_cd140ee9("<unknown string>", &function_ddb1f662);
        function_cd140ee9("<unknown string>", &function_ddb1f662);
        function_cd140ee9("<unknown string>", &function_ddb1f662);
        function_cd140ee9("<unknown string>", &function_ddb1f662);
        function_cd140ee9("<unknown string>", &function_ddb1f662);
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 1, eflags: 0x0
    // Checksum 0xe349f90d, Offset: 0x968
    // Size: 0x1da
    function function_ddb1f662(params) {
        switch (params.name) {
        case #"hash_68eef81d0a2a76ed":
            level.var_59a2c772 = params.value;
            break;
        case #"hash_130bfa97ce58483d":
            teleport_player(params.value);
            break;
        case #"hash_3c4a113ed57cc120":
            level.var_acfca739 = params.value;
            break;
        case #"hash_236d76abc8b15698":
            thread function_e099a386(params.value);
            setdvar(#"hash_236d76abc8b15698", "<unknown string>");
            break;
        case #"hash_69bc1ab1b58a4dd9":
            function_d6a44f15(params.value);
            setdvar(#"hash_69bc1ab1b58a4dd9", "<unknown string>");
            break;
        case #"hash_4adbfcef4bba8e12":
            function_5f0fa6bb(params.value);
            setdvar(#"hash_4adbfcef4bba8e12", "<unknown string>");
            break;
        case #"hash_2fd7846bcf2b3161":
            function_cad382ca();
            break;
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x0
    // Checksum 0x3ac4f3a3, Offset: 0xb50
    // Size: 0xf0
    function function_cad382ca() {
        foreach (s_instance in level.var_2fb0636f) {
            if (isdefined(s_instance.var_906f7138)) {
                s_instance.var_906f7138 delete();
            }
            if (isdefined(s_instance.e_rotator)) {
                s_instance.e_rotator delete();
            }
            if (isdefined(s_instance.var_ef831719)) {
                s_instance.var_ef831719 delete();
            }
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 1, eflags: 0x0
    // Checksum 0xf6a80780, Offset: 0xc48
    // Size: 0xc4
    function teleport_player(str_name) {
        if (str_name === "<unknown string>") {
            return;
        }
        s_teleport = level.var_4aca3c1[str_name];
        if (isdefined(s_teleport)) {
            player = util::gethostplayer();
            player setorigin(s_teleport.origin);
            player setplayerangles(s_teleport.angles);
            setdvar(#"hash_130bfa97ce58483d", "<unknown string>");
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x0
    // Checksum 0xb2516255, Offset: 0xd18
    // Size: 0x948
    function function_f29b39b1() {
        foreach (var_a0eafb23 in level.var_2fb0636f) {
            if (isdefined(var_a0eafb23.targetname)) {
                var_a0eafb23.var_c2e8ace2 = getentarray(var_a0eafb23.targetname, "<unknown string>");
            }
            var_a52f9ea8 = getscriptbundle(var_a0eafb23.scriptbundlename);
            foreach (var_58de05e9 in var_a52f9ea8.assetlist) {
                if (var_58de05e9.assettype === "<unknown string>") {
                    var_618821b1 = var_58de05e9.playeroutfit;
                } else {
                    var_618821b1 = isdefined(var_58de05e9.var_8427fa8a) ? var_58de05e9.var_8427fa8a : var_58de05e9.model;
                }
                var_1b72f1aa = {#str_name:var_618821b1, #str_label:var_58de05e9.assetlabel, #str_type:var_58de05e9.assettype};
                if (isarray(var_58de05e9.var_7970f5e5)) {
                    foreach (s_anim in var_58de05e9.var_7970f5e5) {
                        var_480e1f7d = {#animation:s_anim.animation, #var_867459dc:s_anim.attachmodel, #var_31e8d962:s_anim.var_e7723a7f};
                        var_480e1f7d.var_4ec51611 = (isdefined(s_anim.var_16da66bb) ? s_anim.var_16da66bb : 0, isdefined(s_anim.var_a8938a2f) ? s_anim.var_a8938a2f : 0, isdefined(s_anim.var_bb462f94) ? s_anim.var_bb462f94 : 0);
                        var_480e1f7d.var_4224ff2d = (isdefined(s_anim.var_45ebfe9b) ? s_anim.var_45ebfe9b : 0, isdefined(s_anim.var_e28537cb) ? s_anim.var_e28537cb : 0, isdefined(s_anim.var_b437db31) ? s_anim.var_b437db31 : 0);
                        if (!isdefined(var_1b72f1aa.var_ab3948d3)) {
                            var_1b72f1aa.var_ab3948d3 = [];
                        } else if (!isarray(var_1b72f1aa.var_ab3948d3)) {
                            var_1b72f1aa.var_ab3948d3 = array(var_1b72f1aa.var_ab3948d3);
                        }
                        var_1b72f1aa.var_ab3948d3[var_1b72f1aa.var_ab3948d3.size] = var_480e1f7d;
                    }
                }
                if (isarray(var_58de05e9.var_a69bae99)) {
                    foreach (var_7517594c in var_58de05e9.var_a69bae99) {
                        if (var_58de05e9.assettype === "<unknown string>") {
                            if (!isdefined(var_1b72f1aa.var_cfa4576)) {
                                var_1b72f1aa.var_cfa4576 = [];
                            } else if (!isarray(var_1b72f1aa.var_cfa4576)) {
                                var_1b72f1aa.var_cfa4576 = array(var_1b72f1aa.var_cfa4576);
                            }
                            var_1b72f1aa.var_cfa4576[var_1b72f1aa.var_cfa4576.size] = var_7517594c.var_c29d189;
                            var_2ceba174 = isdefined(var_7517594c.var_f041f003) ? var_7517594c.var_f041f003 : 0;
                            if (!isdefined(var_1b72f1aa.var_871281ad)) {
                                var_1b72f1aa.var_871281ad = [];
                            } else if (!isarray(var_1b72f1aa.var_871281ad)) {
                                var_1b72f1aa.var_871281ad = array(var_1b72f1aa.var_871281ad);
                            }
                            var_1b72f1aa.var_871281ad[var_1b72f1aa.var_871281ad.size] = var_2ceba174;
                            continue;
                        }
                        if (!isdefined(var_1b72f1aa.var_cfa4576)) {
                            var_1b72f1aa.var_cfa4576 = [];
                        } else if (!isarray(var_1b72f1aa.var_cfa4576)) {
                            var_1b72f1aa.var_cfa4576 = array(var_1b72f1aa.var_cfa4576);
                        }
                        var_1b72f1aa.var_cfa4576[var_1b72f1aa.var_cfa4576.size] = var_7517594c.modelvariant;
                    }
                }
                var_1b72f1aa.var_417ff571 = var_58de05e9.var_f603705;
                var_1b72f1aa.var_e33b5953 = var_58de05e9.model;
                var_1b72f1aa.str_fx_tag = var_58de05e9.fxtag;
                var_1b72f1aa.var_d3c21d73 = (isdefined(var_58de05e9.var_cb839fdc) ? var_58de05e9.var_cb839fdc : 0, isdefined(var_58de05e9.var_d7e738a3) ? var_58de05e9.var_d7e738a3 : 0, isdefined(var_58de05e9.var_e5a95427) ? var_58de05e9.var_e5a95427 : 0);
                var_1b72f1aa.v_ang_offset = (isdefined(var_58de05e9.var_5b038738) ? var_58de05e9.var_5b038738 : 0, isdefined(var_58de05e9.var_db060743) ? var_58de05e9.var_db060743 : 0, isdefined(var_58de05e9.var_ed4c2bcf) ? var_58de05e9.var_ed4c2bcf : 0);
                var_1b72f1aa.var_867459dc = var_58de05e9.attachmodel;
                var_1b72f1aa.var_31e8d962 = var_58de05e9.var_e7723a7f;
                var_1b72f1aa.var_4ec51611 = (isdefined(var_58de05e9.var_16da66bb) ? var_58de05e9.var_16da66bb : 0, isdefined(var_58de05e9.var_a8938a2f) ? var_58de05e9.var_a8938a2f : 0, isdefined(var_58de05e9.var_bb462f94) ? var_58de05e9.var_bb462f94 : 0);
                var_1b72f1aa.var_4224ff2d = (isdefined(var_58de05e9.var_45ebfe9b) ? var_58de05e9.var_45ebfe9b : 0, isdefined(var_58de05e9.var_e28537cb) ? var_58de05e9.var_e28537cb : 0, isdefined(var_58de05e9.var_b437db31) ? var_58de05e9.var_b437db31 : 0);
                if (!isdefined(var_a0eafb23.var_e3cf25b2)) {
                    var_a0eafb23.var_e3cf25b2 = [];
                } else if (!isarray(var_a0eafb23.var_e3cf25b2)) {
                    var_a0eafb23.var_e3cf25b2 = array(var_a0eafb23.var_e3cf25b2);
                }
                if (!isinarray(var_a0eafb23.var_e3cf25b2, var_1b72f1aa)) {
                    var_a0eafb23.var_e3cf25b2[var_a0eafb23.var_e3cf25b2.size] = var_1b72f1aa;
                }
            }
            var_a0eafb23.var_d6cb6df6 = 0;
            if (is_true(var_a0eafb23.script_enable_on_start)) {
                level flag::set("<unknown string>");
                level thread function_765ece13(var_a0eafb23);
            }
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x0
    // Checksum 0x54c8b814, Offset: 0x1668
    // Size: 0x74a
    function function_1c40531e() {
        level flag::wait_till("<unknown string>");
        host = util::gethostplayer();
        level thread function_6559555e();
        host endon(#"disconnect");
        var_e0acd843 = 0;
        while (true) {
            if (level flag::get(#"menu_open")) {
                waitframe(1);
                continue;
            }
            if (!level.var_acfca739) {
                host val::reset("<unknown string>", "<unknown string>");
                host val::reset("<unknown string>", "<unknown string>");
                host val::reset("<unknown string>", "<unknown string>");
                waitframe(1);
                continue;
            }
            host val::set("<unknown string>", "<unknown string>", 1);
            host val::set("<unknown string>", "<unknown string>", 0);
            if (host fragbuttonpressed()) {
                var_334c38a9 = 1;
                var_e0acd843 = 0;
                host val::set("<unknown string>", "<unknown string>", 0);
            } else if (host adsbuttonpressed()) {
                var_e0acd843 = 1;
                var_334c38a9 = 0;
                host val::reset("<unknown string>", "<unknown string>");
            } else {
                var_e0acd843 = 0;
                var_334c38a9 = 0;
                host val::reset("<unknown string>", "<unknown string>");
            }
            if (host actionslotonebuttonpressed() && !host sprintbuttonpressed()) {
                if (var_334c38a9) {
                    host function_801766d7("<unknown string>");
                } else if (var_e0acd843) {
                    function_b9ad688b();
                } else {
                    function_e5720d25();
                }
                while (host actionslotonebuttonpressed()) {
                    if (var_e0acd843) {
                        function_3964f9d();
                    }
                    waitframe(1);
                }
            }
            if (host actionslotthreebuttonpressed() && !host sprintbuttonpressed()) {
                if (var_334c38a9) {
                    host function_801766d7("<unknown string>");
                } else if (var_e0acd843) {
                    endcamanimscripted(host);
                } else {
                    host cycle_model("<unknown string>");
                }
                while (host actionslotthreebuttonpressed()) {
                    waitframe(1);
                }
            }
            if (host actionslotfourbuttonpressed() && !host sprintbuttonpressed()) {
                if (var_334c38a9) {
                    host function_801766d7("<unknown string>");
                } else if (var_e0acd843) {
                    level flag::toggle("<unknown string>");
                } else {
                    host cycle_model("<unknown string>");
                }
                while (host actionslotfourbuttonpressed()) {
                    waitframe(1);
                }
            }
            if (host actionslottwobuttonpressed() && !host sprintbuttonpressed()) {
                if (var_334c38a9) {
                    function_2ccbc3d6();
                    host function_801766d7("<unknown string>");
                } else if (var_e0acd843) {
                    foreach (s_instance in level.var_2fb0636f) {
                        if (isdefined(s_instance.var_906f7138) && isdefined(s_instance.e_rotator) && !is_true(s_instance.var_906f7138.var_769f97fc)) {
                            s_instance.var_906f7138 unlink();
                            s_instance.var_906f7138 function_5fcc703c();
                            s_instance.var_906f7138 linkto(s_instance.e_rotator);
                        }
                    }
                } else {
                    level flag::toggle("<unknown string>");
                }
                while (host actionslottwobuttonpressed()) {
                    if (var_334c38a9) {
                        function_c7030deb();
                    }
                    waitframe(1);
                }
            }
            if (host secondaryoffhandbuttonpressed()) {
                if (var_e0acd843) {
                } else {
                    level flag::toggle("<unknown string>");
                }
                while (host secondaryoffhandbuttonpressed()) {
                    waitframe(1);
                }
            }
            if (host jumpbuttonpressed()) {
                while (host jumpbuttonpressed()) {
                    waitframe(1);
                }
            }
            waitframe(1);
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 1, eflags: 0x0
    // Checksum 0x714c198c, Offset: 0x1dc0
    // Size: 0x1dc
    function function_d6a44f15(str_instance) {
        if (str_instance === "<unknown string>") {
            return;
        }
        s_instance = level.var_2fb0636f[str_instance];
        function_86086836(s_instance);
        host = getplayers()[0];
        v_forward = anglestoforward(host getplayerangles());
        v_forward = vectorscale(v_forward, 4000);
        var_5927a215 = (10, 10, 10);
        v_eye = host getplayercamerapos();
        var_abd03397 = physicstrace(v_eye, v_eye + v_forward, -1 * var_5927a215, var_5927a215, getplayers()[0], 64 | 2);
        v_origin = var_abd03397[#"position"];
        if (isdefined(s_instance.var_ef831719)) {
            s_instance.var_ef831719 delete();
        }
        s_instance.var_ef831719 = util::spawn_model("<unknown string>", v_origin);
        s_instance.e_rotator.origin = v_origin;
        s_instance.e_rotator linkto(s_instance.var_ef831719);
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 1, eflags: 0x0
    // Checksum 0x5ee4214e, Offset: 0x1fa8
    // Size: 0x1c4
    function function_e099a386(str_instance) {
        if (str_instance === "<unknown string>") {
            return;
        }
        s_instance = level.var_2fb0636f[str_instance];
        function_86086836(s_instance);
        host = getplayers()[0];
        v_forward = anglestoforward(host getplayerangles());
        v_forward = vectorscale(v_forward, 125);
        v_player_origin = host getorigin();
        v_origin = v_player_origin + v_forward;
        if (isdefined(s_instance.var_ef831719)) {
            s_instance.var_ef831719 delete();
        }
        s_instance.var_ef831719 = util::spawn_model("<unknown string>", v_origin);
        s_instance.var_ef831719.var_14e5bc7e = 1;
        s_instance.e_rotator.origin = s_instance.var_ef831719.origin;
        s_instance.e_rotator linkto(s_instance.var_ef831719);
        s_instance.var_ef831719 linkto(host);
        s_instance.var_ef831719 thread function_e742c352();
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x0
    // Checksum 0xa8129bdc, Offset: 0x2178
    // Size: 0x13e
    function function_e742c352() {
        host = getplayers()[0];
        host endon(#"death");
        self endon(#"death");
        while (true) {
            var_74aaeccd = host getnormalizedmovement();
            var_3e6ac197 = host getnormalizedcameramovement();
            if (level.var_acfca739 && host adsbuttonpressed() && var_3e6ac197 != (0, 0, 0)) {
                self unlink();
                self.origin = (self.origin[0], self.origin[1], self.origin[2] + var_3e6ac197[0] * 3);
                self linkto(host);
            }
            waitframe(1);
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 1, eflags: 0x0
    // Checksum 0xe797ad14, Offset: 0x22c0
    // Size: 0xbe
    function function_5f0fa6bb(str_instance) {
        if (str_instance === "<unknown string>") {
            return;
        }
        s_instance = level.var_2fb0636f[str_instance];
        function_86086836(s_instance);
        host = getplayers()[0];
        if (isdefined(s_instance.var_ef831719)) {
            s_instance.var_ef831719 delete();
        }
        s_instance.e_rotator.origin = s_instance.origin;
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 1, eflags: 0x0
    // Checksum 0x708071e7, Offset: 0x2388
    // Size: 0xdc
    function function_756c5bf4(s_instance) {
        if (!isarray(s_instance.var_c2e8ace2) || !s_instance.var_c2e8ace2.size) {
            return 1;
        }
        foreach (var_cce981c8 in s_instance.var_c2e8ace2) {
            if (self istouching(var_cce981c8)) {
                return 1;
            }
        }
        return 0;
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 1, eflags: 0x0
    // Checksum 0xcc7aa7aa, Offset: 0x2470
    // Size: 0x3c
    function function_37ee741(s_instance) {
        var_618821b1 = s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].str_name;
        return var_618821b1;
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 1, eflags: 0x0
    // Checksum 0xcd224358, Offset: 0x24b8
    // Size: 0x3c
    function function_fb7f89f1(s_instance) {
        str_type = s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].str_type;
        return str_type;
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 1, eflags: 0x0
    // Checksum 0x2c913634, Offset: 0x2500
    // Size: 0xc8
    function function_9e86911f(s_instance) {
        var_30bd5f98 = s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_30bd5f98;
        if (isarray(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_ab3948d3) && isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_ab3948d3[var_30bd5f98].animation)) {
            str_anim = s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_ab3948d3[var_30bd5f98].animation;
        }
        return str_anim;
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 1, eflags: 0x0
    // Checksum 0xf95ce65e, Offset: 0x25d0
    // Size: 0x2ec
    function function_637cc13b(s_instance) {
        var_30bd5f98 = s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_30bd5f98;
        if (isdefined(s_instance.var_906f7138.var_546c3278)) {
            s_instance.var_906f7138.var_546c3278 delete();
        }
        if (isarray(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_ab3948d3) && isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_ab3948d3[var_30bd5f98].var_867459dc)) {
            s_anim = s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_ab3948d3[var_30bd5f98];
            var_867459dc = s_anim.var_867459dc;
            str_tag = isdefined(s_anim.var_31e8d962) ? s_anim.var_31e8d962 : "<unknown string>";
            s_instance.var_906f7138.var_546c3278 = util::spawn_model(var_867459dc, s_instance.var_906f7138.origin, s_instance.var_906f7138.angles);
            s_instance.var_906f7138.var_546c3278 linkto(s_instance.var_906f7138, str_tag, s_anim.var_4ec51611, s_anim.var_4224ff2d);
            return;
        }
        if (isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_867459dc)) {
            var_867459dc = s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_867459dc;
            str_tag = isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_31e8d962) ? s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_31e8d962 : "<unknown string>";
            s_instance.var_906f7138.var_546c3278 = util::spawn_model(var_867459dc, s_instance.var_906f7138.origin, s_instance.var_906f7138.angles);
            s_instance.var_906f7138.var_546c3278 linkto(s_instance.var_906f7138, str_tag, s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_4ec51611, s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_4224ff2d);
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 1, eflags: 0x0
    // Checksum 0xf3dce246, Offset: 0x28c8
    // Size: 0x3a2
    function function_801766d7(str_option) {
        if (!isdefined(str_option)) {
            str_option = "<unknown string>";
        }
        foreach (s_instance in level.var_2fb0636f) {
            if (!self function_756c5bf4(s_instance) || !isarray(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_ab3948d3)) {
                continue;
            }
            if (str_option == "<unknown string>") {
                if (!isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_30bd5f98)) {
                    s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_30bd5f98 = 1;
                }
                s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_30bd5f98--;
                if (s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_30bd5f98 < 0) {
                    s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_30bd5f98 = s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_ab3948d3.size - 1;
                }
                s_instance.var_906f7138.var_734e9da0 = undefined;
            } else if (str_option == "<unknown string>") {
                if (!isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_30bd5f98)) {
                    s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_30bd5f98 = -1;
                }
                s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_30bd5f98++;
                if (s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_30bd5f98 > s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_ab3948d3.size - 1) {
                    s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_30bd5f98 = 0;
                }
                s_instance.var_906f7138.var_734e9da0 = undefined;
            }
            str_anim = function_9e86911f(s_instance);
            if (isdefined(str_anim)) {
                if (isdefined(s_instance.var_906f7138)) {
                    if (str_option == "<unknown string>") {
                        var_9b259ac1 = 1;
                    } else {
                        var_9b259ac1 = 0;
                    }
                    s_instance function_77a3cb81(str_anim, var_9b259ac1);
                }
                continue;
            }
            if (isdefined(s_instance.var_906f7138) && !is_true(s_instance.var_906f7138.var_769f97fc)) {
                s_instance.var_906f7138 animation::stop();
                s_instance.var_906f7138 linkto(s_instance.e_rotator);
                s_instance.var_906f7138.var_734e9da0 = undefined;
            }
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 2, eflags: 0x0
    // Checksum 0x1f1d4675, Offset: 0x2c78
    // Size: 0x1cc
    function function_77a3cb81(str_anim, var_2cc700ad) {
        if (!isdefined(var_2cc700ad)) {
            var_2cc700ad = 0;
        }
        function_637cc13b(self);
        if (var_2cc700ad) {
            if (is_true(self.var_906f7138.var_734e9da0)) {
                n_start_time = self.var_906f7138 getanimtime(str_anim);
                self.var_906f7138 thread animation::play(str_anim, self.e_rotator, undefined, level.var_5a4e0f2e, 0.5, undefined, undefined, n_start_time, undefined, 0, undefined, undefined, "<unknown string>");
            }
            return;
        }
        if (is_true(self.var_906f7138.var_734e9da0)) {
            n_start_time = self.var_906f7138 getanimtime(str_anim);
            b_paused = 1;
            self.var_906f7138.var_734e9da0 = undefined;
        } else {
            n_start_time = self.var_906f7138 getanimtime(str_anim);
            b_paused = 0;
            self.var_906f7138.var_734e9da0 = 1;
        }
        self.var_906f7138 thread animation::play(str_anim, self.e_rotator, undefined, level.var_5a4e0f2e, 0.5, undefined, undefined, n_start_time, undefined, 0, undefined, b_paused, "<unknown string>");
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 1, eflags: 0x0
    // Checksum 0x7ae73dfc, Offset: 0x2e50
    // Size: 0x178
    function cycle_model(str_direction) {
        if (!isdefined(str_direction)) {
            str_direction = "<unknown string>";
        }
        foreach (s_instance in level.var_2fb0636f) {
            if (!self function_756c5bf4(s_instance)) {
                continue;
            }
            if (str_direction == "<unknown string>") {
                if (!isdefined(s_instance.var_d6cb6df6)) {
                    s_instance.var_d6cb6df6 = 1;
                }
                s_instance.var_d6cb6df6--;
                if (s_instance.var_d6cb6df6 < 0) {
                    s_instance.var_d6cb6df6 = s_instance.var_e3cf25b2.size - 1;
                }
            } else {
                if (!isdefined(s_instance.var_d6cb6df6)) {
                    s_instance.var_d6cb6df6 = -1;
                }
                s_instance.var_d6cb6df6++;
                if (s_instance.var_d6cb6df6 > s_instance.var_e3cf25b2.size - 1) {
                    s_instance.var_d6cb6df6 = 0;
                }
            }
            function_765ece13(s_instance);
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 1, eflags: 0x0
    // Checksum 0x6a8f1927, Offset: 0x2fd0
    // Size: 0x114
    function function_86086836(s_instance) {
        level flag::set("<unknown string>");
        if (!isdefined(s_instance.e_rotator)) {
            s_instance.e_rotator = util::spawn_model("<unknown string>", s_instance.origin, s_instance.angles);
        }
        if (!isdefined(s_instance.var_bfd82e27) && isdefined(s_instance.linkname)) {
            s_instance.var_bfd82e27 = util::spawn_model("<unknown string>", s_instance.origin, s_instance.angles);
            s_instance.var_af075c72 = getentarray(s_instance.linkname, "<unknown string>");
            array::run_all(s_instance.var_af075c72, &linkto, s_instance.var_bfd82e27);
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 3, eflags: 0x0
    // Checksum 0x13d3e68d, Offset: 0x30f0
    // Size: 0x864
    function function_765ece13(s_instance, var_b9701a73, var_2ceba174) {
        level flag::wait_till("<unknown string>");
        function_86086836(s_instance);
        host = getplayers()[0];
        endcamanimscripted(host);
        if (isdefined(s_instance.var_906f7138.var_546c3278)) {
            s_instance.var_906f7138.var_546c3278 delete();
        }
        if (isdefined(s_instance.var_906f7138)) {
            s_instance.var_906f7138 delete();
        }
        var_9eb2d2aa = function_37ee741(s_instance);
        str_type = function_fb7f89f1(s_instance);
        v_pos = s_instance.e_rotator.origin + s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_d3c21d73;
        v_ang = s_instance.e_rotator.angles + s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].v_ang_offset;
        switch (str_type) {
        case #"playeroutfit":
            s_instance.var_906f7138 = function_ff217e96(isdefined(var_b9701a73) ? var_b9701a73 : var_9eb2d2aa, v_pos, v_ang, s_instance, var_2ceba174);
            if (!isdefined(s_instance.var_906f7138)) {
                iprintlnbold("<unknown string>" + function_9e72a96(isdefined(var_b9701a73) ? var_b9701a73 : var_9eb2d2aa) + "<unknown string>");
                s_instance.var_906f7138 = util::spawn_anim_player_model("<unknown string>", v_pos, v_ang);
            }
            break;
        case #"vehicle":
            s_instance.var_906f7138 = spawnvehicle(var_9eb2d2aa, v_pos, v_ang);
            s_instance.var_906f7138 val::set("<unknown string>", "<unknown string>", 1);
            s_instance.var_906f7138 val::set("<unknown string>", "<unknown string>", 1);
            break;
        case #"aitype":
            s_instance.var_906f7138 = spawnactor(var_9eb2d2aa, v_pos, v_ang, undefined, 1);
            s_instance.var_906f7138 val::set("<unknown string>", "<unknown string>", 1);
            s_instance.var_906f7138 val::set("<unknown string>", "<unknown string>", 1);
            break;
        case #"character":
        case #"xmodel":
            if (is_true(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_417ff571)) {
                s_instance.var_906f7138 = util::spawn_anim_player_model(var_9eb2d2aa, v_pos, v_ang);
            } else {
                s_instance.var_906f7138 = util::spawn_anim_model(var_9eb2d2aa, v_pos, v_ang);
            }
            break;
        case #"fx":
            s_instance.var_906f7138 = util::spawn_model(isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_e33b5953) ? s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_e33b5953 : "<unknown string>", v_pos, v_ang);
            s_instance.var_906f7138 fx::play(var_9eb2d2aa, v_pos, v_ang, undefined, 1, isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].str_fx_tag) ? s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].str_fx_tag : "<unknown string>", 1);
            s_instance.var_906f7138.var_769f97fc = 1;
            break;
        default:
            /#
                iprintlnbold("<unknown string>");
            #/
            return;
        }
        s_instance.var_906f7138 linkto(s_instance.e_rotator);
        s_instance.e_rotator unlink();
        s_instance.e_rotator.angles = (s_instance.e_rotator.angles[0], s_instance.e_rotator.angles[1], 0);
        if (isdefined(s_instance.var_ef831719)) {
            s_instance.var_ef831719 unlink();
            s_instance.var_ef831719.angles = (s_instance.var_ef831719.angles[0], s_instance.var_ef831719.angles[1], 0);
            if (is_true(s_instance.var_ef831719.var_14e5bc7e)) {
                s_instance.e_rotator linkto(s_instance.var_ef831719);
                s_instance.var_ef831719 linkto(host);
            }
        }
        if (isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_867459dc)) {
            str_tag = isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_31e8d962) ? s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_31e8d962 : "<unknown string>";
            s_instance.var_906f7138.var_546c3278 = util::spawn_model(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_867459dc, s_instance.var_906f7138.origin, s_instance.var_906f7138.angles);
            s_instance.var_906f7138.var_546c3278 linkto(s_instance.var_906f7138, str_tag, s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_4ec51611, s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_4224ff2d);
        }
        if (isdefined(s_instance.script_string)) {
            if (isdefined(s_instance.script_label)) {
                s_align = struct::get(s_instance.script_label);
            } else {
                s_align = s_instance;
            }
            camanimscripted(getplayers()[0], s_instance.script_string, 0, s_align.origin, s_align.angles);
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 5, eflags: 0x0
    // Checksum 0x4dc97820, Offset: 0x3960
    // Size: 0x3a6
    function function_ff217e96(var_5a86a1c2, v_pos, v_ang, s_instance, var_2ceba174) {
        if (!isdefined(var_2ceba174)) {
            var_2ceba174 = 0;
        }
        level flag::wait_till("<unknown string>");
        player = getplayers()[0];
        var_be7bc546 = currentsessionmode();
        var_123ebd30 = getallcharacterbodies(var_be7bc546);
        foreach (var_2074c3ff in var_123ebd30) {
            var_b744a7ed = function_d299ef16(var_2074c3ff, var_be7bc546);
            for (var_6e0e2531 = 0; var_6e0e2531 < var_b744a7ed; var_6e0e2531++) {
                var_322595c6 = function_d7c3cf6c(var_2074c3ff, var_6e0e2531, var_be7bc546);
                if (var_322595c6.namehash === var_5a86a1c2) {
                    var_c22fcaad = player getcharacterbodytype();
                    var_81cd46bd = player getcharacteroutfit();
                    player setcharacterbodytype(var_2074c3ff);
                    player setcharacteroutfit(var_6e0e2531);
                    if (isdefined(var_2ceba174) && isarray(var_322595c6.presets)) {
                        foreach (var_a343b02b, s_preset in var_322595c6.presets) {
                            if (!is_true(s_preset.isvalid)) {
                                continue;
                            }
                            if (var_a343b02b == var_2ceba174) {
                                player function_fbc5a093(var_a343b02b);
                                break;
                            }
                        }
                    }
                    var_412d5310 = player util::spawn_player_clone(player);
                    var_412d5310.origin = v_pos;
                    var_412d5310.angles = v_ang;
                    if (!is_true(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_417ff571)) {
                        var_412d5310 useanimtree("<unknown string>");
                    }
                    player setcharacterbodytype(var_c22fcaad);
                    player setcharacteroutfit(var_81cd46bd);
                    return var_412d5310;
                }
            }
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x0
    // Checksum 0xce8ed0f, Offset: 0x3d10
    // Size: 0x506
    function function_6559555e() {
        while (true) {
            /#
                if (level flag::get(#"menu_open") || !level.var_acfca739) {
                    waitframe(1);
                    continue;
                }
                if (level.var_59a2c772) {
                    if (getplayers()[0] fragbuttonpressed()) {
                        debug2dtext((50, 530, 0), "<unknown string>", undefined, undefined, undefined, 1, 0.8, 1);
                        debug2dtext((50, 530, 0) + (0, 20, 0), "<unknown string>", undefined, undefined, undefined, 1, 0.8, 1);
                        debug2dtext((50, 530, 0) + (0, 20, 0) * 2, "<unknown string>", undefined, undefined, undefined, 1, 0.8, 1);
                    } else if (getplayers()[0] adsbuttonpressed()) {
                        debug2dtext((50, 530, 0), "<unknown string>", undefined, undefined, undefined, 1, 0.8, 1);
                        debug2dtext((50, 530, 0) + (0, 20, 0), "<unknown string>", undefined, undefined, undefined, 1, 0.8, 1);
                        debug2dtext((50, 530, 0) + (0, 20, 0) * 2, "<unknown string>", undefined, undefined, undefined, 1, 0.8, 1);
                        debug2dtext((50, 530, 0) + (0, 20, 0) * 3, "<unknown string>", undefined, undefined, undefined, 1, 0.8, 1);
                        debug2dtext((50, 530, 0) + (0, 20, 0) * 4, "<unknown string>", undefined, undefined, undefined, 1, 0.8, 1);
                    } else {
                        debug2dtext((50, 530, 0), "<unknown string>", undefined, undefined, undefined, 1, 0.8, 1);
                        debug2dtext((50, 530, 0) + (0, 20, 0), "<unknown string>", undefined, undefined, undefined, 1, 0.8, 1);
                        debug2dtext((50, 530, 0) + (0, 20, 0) * 2, "<unknown string>", undefined, undefined, undefined, 1, 0.8, 1);
                        debug2dtext((50, 530, 0) + (0, 20, 0) * 3, "<unknown string>", undefined, undefined, undefined, 1, 0.8, 1);
                        debug2dtext((50, 530, 0) + (0, 20, 0) * 4, "<unknown string>", undefined, undefined, undefined, 1, 0.8, 1);
                        debug2dtext((50, 530, 0) + (0, 20, 0) * 5, "<unknown string>", undefined, undefined, undefined, 1, 0.8, 1);
                    }
                    debug2dtext((640, 25, 0), "<unknown string>", undefined, undefined, undefined, 1, 0.8, 1);
                    function_c88700();
                }
            #/
            waitframe(1);
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x0
    // Checksum 0xa72bbc6f, Offset: 0x4220
    // Size: 0x130
    function function_b9ad688b() {
        level.var_402412cd -= 0.25;
        if (level.var_402412cd < 0.25) {
            level.var_402412cd = 1;
        }
        foreach (s_instance in level.var_2fb0636f) {
            if (isdefined(s_instance.var_906f7138)) {
                s_instance.var_906f7138 setscale(level.var_402412cd);
            }
            if (isdefined(s_instance.var_906f7138.var_546c3278)) {
                s_instance.var_906f7138.var_546c3278 setscale(level.var_402412cd);
            }
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x0
    // Checksum 0x200778d9, Offset: 0x4358
    // Size: 0x530
    function function_e5720d25() {
        foreach (s_instance in level.var_2fb0636f) {
            if (isarray(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_cfa4576) && s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_cfa4576.size > 0 && isdefined(s_instance.var_906f7138)) {
                if (isdefined(s_instance.var_906f7138.head) && s_instance.var_906f7138 isattached(s_instance.var_906f7138.head)) {
                    s_instance.var_906f7138 detach(s_instance.var_906f7138.head);
                }
                if (!isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_50f3b70e)) {
                    s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_50f3b70e = 0;
                    s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_67bb5365 = s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_cfa4576[s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_50f3b70e];
                    var_67bb5365 = s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_67bb5365;
                    if (s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].str_type === "<unknown string>") {
                        s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_2ceba174 = function_d1ac4601(s_instance);
                        function_765ece13(s_instance, var_67bb5365, s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_2ceba174);
                    } else {
                        s_instance.var_906f7138 setmodel(var_67bb5365);
                    }
                    continue;
                }
                s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_50f3b70e++;
                if (s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_50f3b70e >= s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_cfa4576.size) {
                    s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_50f3b70e = -1;
                    if (s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].str_type === "<unknown string>") {
                        s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_2ceba174 = function_d1ac4601(s_instance);
                        function_765ece13(s_instance, s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].str_name, s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_2ceba174);
                    } else {
                        s_instance.var_906f7138 setmodel(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].str_name);
                    }
                    s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_67bb5365 = undefined;
                    continue;
                }
                s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_67bb5365 = s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_cfa4576[s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_50f3b70e];
                var_67bb5365 = s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_67bb5365;
                if (isdefined(var_67bb5365)) {
                    if (s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].str_type === "<unknown string>") {
                        s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_2ceba174 = function_d1ac4601(s_instance);
                        function_765ece13(s_instance, var_67bb5365, s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_2ceba174);
                        continue;
                    }
                    s_instance.var_906f7138 setmodel(var_67bb5365);
                }
            }
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 1, eflags: 0x0
    // Checksum 0x1d4cdf92, Offset: 0x4890
    // Size: 0xa6
    function function_d1ac4601(s_instance) {
        if (isarray(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_871281ad) && s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_871281ad.size > 0) {
            var_2ceba174 = s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_871281ad[s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_50f3b70e];
        }
        return var_2ceba174;
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x0
    // Checksum 0xbf866cef, Offset: 0x4940
    // Size: 0x84
    function function_2ccbc3d6() {
        if (level.var_5a4e0f2e == 1) {
            level.var_5a4e0f2e = 0.1;
            return;
        }
        if (level.var_5a4e0f2e == 0.5) {
            level.var_5a4e0f2e = 1;
            return;
        }
        if (level.var_5a4e0f2e == 0.1) {
            level.var_5a4e0f2e = 0.5;
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 1, eflags: 0x0
    // Checksum 0x29aec340, Offset: 0x49d0
    // Size: 0x282
    function function_e01777dc(s_instance) {
        while (true) {
            if (level flag::get("<unknown string>") || level flag::get("<unknown string>")) {
                foreach (s_instance in level.var_2fb0636f) {
                    function_86086836(s_instance);
                    var_5a15da23 = (s_instance.e_rotator.angles[0], s_instance.e_rotator.angles[1], s_instance.e_rotator.angles[2]);
                    if (level flag::get("<unknown string>")) {
                        var_5a15da23 = (var_5a15da23[0] + 3, var_5a15da23[1], var_5a15da23[2]);
                    }
                    if (level flag::get("<unknown string>")) {
                        var_5a15da23 = (s_instance.e_rotator.angles[0], s_instance.e_rotator.angles[1] + 3, s_instance.e_rotator.angles[2]);
                    }
                    if (level flag::get("<unknown string>")) {
                        var_5a15da23 = (var_5a15da23[0], var_5a15da23[1], var_5a15da23[2] + 3);
                    }
                    var_5a15da23 = absangleclamp360(var_5a15da23);
                    s_instance.e_rotator rotateto(var_5a15da23, float(function_60d95f53()) / 1000);
                }
            }
            waitframe(1);
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 1, eflags: 0x0
    // Checksum 0x32329fa9, Offset: 0x4c60
    // Size: 0x102
    function function_fcde0f45(s_instance) {
        while (true) {
            if (level flag::get("<unknown string>")) {
                foreach (s_instance in level.var_2fb0636f) {
                    if (isdefined(s_instance.var_bfd82e27)) {
                        s_instance.var_bfd82e27 rotateyaw(3, float(function_60d95f53()) / 1000);
                    }
                }
            }
            waitframe(1);
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x0
    // Checksum 0xd7a760d7, Offset: 0x4d70
    // Size: 0x5c
    function function_3964f9d() {
        if (level.var_59a2c772) {
            /#
                debug2dtext((700, 530, 0), "<unknown string>" + level.var_402412cd, undefined, undefined, undefined, 1, 1, 5);
            #/
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x0
    // Checksum 0x1d86e6cb, Offset: 0x4dd8
    // Size: 0x64
    function function_c7030deb() {
        if (level.var_59a2c772) {
            /#
                debug2dtext((700, 530, 0), "<unknown string>" + level.var_5a4e0f2e + "<unknown string>", undefined, undefined, undefined, 1, 1, 5);
            #/
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x0
    // Checksum 0xb2694610, Offset: 0x4e48
    // Size: 0x450
    function function_c88700() {
        if (level.var_59a2c772) {
            /#
                foreach (s_instance in level.var_2fb0636f) {
                    if (isdefined(s_instance.var_906f7138)) {
                        var_c954ac15 = "<unknown string>" + (isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].str_label) ? "<unknown string>" + s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].str_label : "<unknown string>") + "<unknown string>" + s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].str_type + "<unknown string>" + function_9e72a96(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].str_name) + "<unknown string>" + s_instance.targetname;
                        if (is_true(s_instance.var_906f7138.var_734e9da0) && isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_30bd5f98) && isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_ab3948d3[s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_30bd5f98].var_867459dc)) {
                            var_c954ac15 = var_c954ac15 + "<unknown string>" + function_9e72a96(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_ab3948d3[s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_30bd5f98].var_867459dc);
                        } else if (isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_867459dc)) {
                            var_c954ac15 = var_c954ac15 + "<unknown string>" + function_9e72a96(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_867459dc);
                        }
                        if (isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_67bb5365)) {
                            if (s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].str_type === "<unknown string>") {
                                var_9e3d7699 = "<unknown string>";
                            } else {
                                var_9e3d7699 = "<unknown string>";
                            }
                            var_c954ac15 = var_c954ac15 + "<unknown string>" + var_9e3d7699 + s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_50f3b70e + 1 + "<unknown string>" + function_9e72a96(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_67bb5365);
                            if (isdefined(s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_2ceba174)) {
                                var_c954ac15 += "<unknown string>" + s_instance.var_e3cf25b2[s_instance.var_d6cb6df6].var_2ceba174;
                            }
                        }
                        if (level.host util::is_player_looking_at(s_instance.var_906f7138 getcentroid(), 0.9, 1, s_instance.var_906f7138)) {
                            print3d(s_instance.var_906f7138.origin + (15, 0, 20), var_c954ac15, (1, 1, 0), 1, 0.2);
                        }
                    }
                }
            #/
        }
    }

    // Namespace namespace_d9b7a459/namespace_3c79982f
    // Params 0, eflags: 0x0
    // Checksum 0x4718a8f1, Offset: 0x52a0
    // Size: 0xda
    function function_5fcc703c() {
        v_ground = groundtrace(self.origin + (0, 0, 8), self.origin + (0, 0, -100000), 0, self)[#"position"];
        var_b8c346f = self getpointinbounds(0, 0, -1);
        n_z_diff = var_b8c346f[2] - v_ground[2];
        self.origin = (self.origin[0], self.origin[1], self.origin[2] - n_z_diff);
    }

#/
