// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\util.csc;
#using scripts\core_common\scene_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using script_13263926d775e7d7;
#using script_280ea497b298d2e;
#using script_38867f943fb86135;
#using scripts\core_common\animation_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using script_140d5347de8af85c;
#using scripts\core_common\easing.csc;
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\util_shared.csc;

#namespace cp_nam_armada;

// Namespace cp_nam_armada/level_init
// Params 1, eflags: 0x20
// Checksum 0x5ccfb9e0, Offset: 0x3c8
// Size: 0x1cc
function event_handler[level_init] main(*eventstruct) {
    setsaveddvar(#"enable_global_wind", 1);
    setsaveddvar(#"wind_global_vector", "88 0 0");
    setsaveddvar(#"wind_global_low_altitude", 0);
    setsaveddvar(#"wind_global_hi_altitude", 10000);
    setsaveddvar(#"wind_global_low_strength_percent", 100);
    init_clientfields();
    level._effect[#"hash_12368454c367c6fc"] = #"hash_41db1a73a41027b";
    load::main();
    level thread namespace_72b0499b::init_audio();
    util::waitforclient(0);
    level thread function_578ff07e();
    players = getlocalplayers();
    allowactionslotinput(players[0] getlocalclientnumber());
    setdvar(#"hash_3fe46a1700f8faf6", 0.3);
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 0, eflags: 0x2 linked
// Checksum 0xdaed0c1, Offset: 0x5a0
// Size: 0x794
function init_clientfields() {
    clientfield::register("toplayer", "pstfx_sprite_rain_loop", 1, 1, "int", &function_949d138a, 0, 0);
    clientfield::register("toplayer", "pstfx_slowed", 1, 1, "int", &pstfx_slowed, 0, 0);
    clientfield::register("toplayer", "pstfx_vignette", 1, 1, "int", &function_ba76755f, 0, 0);
    clientfield::register("vehicle", "bamboo_heli_landing_rain_fx", 1, 1, "int", &function_783e9aab, 0, 0);
    clientfield::register("vehicle", "adler_chopper_mortar_village", 1, 1, "int", &function_8617decb, 0, 0);
    clientfield::register("world", "toggle_dynsignage_mortartown", 1, 1, "int", &function_f6f70714, 0, 0);
    clientfield::register("toplayer", "ease_to_dialog_dof", 1, 1, "int", &function_98d73c30, 0, 0);
    clientfield::register("toplayer", "lerp_fov", 1, 3, "int", &lerp_fov, 0, 1);
    clientfield::register("toplayer", "postfx_bundle_explosive_damage", 1, 1, "int", &function_dd4482eb, 0, 0);
    clientfield::register("toplayer", "pstfx_script_vignette", 1, 2, "int", &namespace_f180c0d7::function_117e5e22, 0, 0);
    clientfield::register("toplayer", "forest_pbg_switch", 1, 1, "int", &function_67987ae7, 0, 0);
    clientfield::register("world", "toggle_gameplay_character_visibility", 1, 2, "int", &function_d29b4c27, 0, 0);
    clientfield::register("vehicle", "" + #"hash_4ddf67f7aa0f6884", 1, 1, "int", &function_241229f1, 0, 0);
    clientfield::register("vehicle", "" + #"hash_354296015ca81fd", 1, 1, "int", &function_936cacda, 0, 0);
    clientfield::register("toplayer", "" + #"hash_7474973a37272b2c", 1, getminbitcountfornum(2), "int", &function_abeb9b2d, 0, 0);
    clientfield::register("vehicle", "" + #"hash_2299cc8957801441", 1, 1, "int", &function_ba96d53c, 0, 0);
    clientfield::register("world", "" + #"hash_5a188b1de711e5ca", 1, 1, "int", &function_69d7c128, 0, 0);
    clientfield::register("world", "" + #"hash_7705eee7a483781a", 1, 1, "int", &function_a7313d0d, 0, 0);
    clientfield::register("world", "" + #"hash_4ee03d623b77b0c2", 1, 1, "int", &function_855380ee, 0, 0);
    clientfield::register("world", "" + #"hash_16a1381cc22da440", 1, 1, "int", &function_c10a31d2, 0, 0);
    clientfield::register("world", "" + #"hash_147afd2c82d374fe", 1, 1, "int", &function_9bf56dad, 0, 0);
    clientfield::register("toplayer", "" + #"force_stream_weapons", 1, 2, "int", &force_stream_weapons, 0, 0);
    clientfield::register("toplayer", "" + #"hash_1d5f8429329030", 1, 2, "int", &function_35172364, 0, 0);
    clientfield::register("toplayer", "" + #"hash_4e480e273ade4c04", 1, 2, "int", &function_2dca33ef, 0, 0);
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0x67f62b32, Offset: 0xd40
// Size: 0xac
function function_d29b4c27(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    waitframe(1);
    if (bwasdemojump == 2) {
        util::function_8eb5d4b0(5000, 6);
        return;
    }
    if (bwasdemojump) {
        util::function_8eb5d4b0(400, 1.5);
        return;
    }
    util::function_21aef83c();
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0x2dbf510b, Offset: 0xdf8
// Size: 0x3c
function lerp_fov(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 0, eflags: 0x0
// Checksum 0x48ed328b, Offset: 0xe40
// Size: 0x1ee
function dof_enable_autofocus() {
    self endoncallback(&function_26826144, #"death", #"hash_b2522f6440eb5d5");
    self function_9e574055(1);
    self easing::function_136edb11(undefined, 5.6, 1, #"linear");
    while (true) {
        v_eye = self geteye();
        v_fwd = anglestoforward(self getcamangles());
        a_trace = physicstrace(v_eye, v_eye + v_fwd * 1000, (1 * -1, 1 * -1, 1 * -1), (1, 1, 1), self, 1);
        var_a84275e3 = distance(v_eye, a_trace[#"position"] + v_fwd * 1);
        if (var_a84275e3 < 100) {
            self function_9e574055(2);
        } else {
            self function_9e574055(1);
        }
        self function_d7be9a9f(var_a84275e3, 0);
        waitframe(1);
    }
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 0, eflags: 0x0
// Checksum 0xb5deeffa, Offset: 0x1038
// Size: 0x16
function dof_disable_autofocus() {
    self notify(#"hash_b2522f6440eb5d5");
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 1, eflags: 0x2 linked
// Checksum 0xf10e98a, Offset: 0x1058
// Size: 0x54
function function_26826144(*str_notify) {
    self function_9e574055(0);
    self function_3c54e2b8(1);
    self function_9ea7b4eb(1);
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0xf43f912d, Offset: 0x10b8
// Size: 0x10c
function function_98d73c30(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self function_9e574055(2);
        self easing::function_b6f1c993(undefined, 60, 1, #"linear");
        self easing::function_136edb11(undefined, 1, 1, #"linear");
        return;
    }
    self easing::function_b6f1c993(undefined, 10000, 2, #"linear");
    self easing::function_136edb11(undefined, 50, 2, #"linear");
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0x8871eef6, Offset: 0x11d0
// Size: 0xa4
function function_783e9aab(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_40e9c967 = self util::playfxontag(fieldname, level._effect[#"hash_12368454c367c6fc"], self, "tag_origin");
        return;
    }
    stopfx(fieldname, self.var_40e9c967);
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0x9678b723, Offset: 0x1280
// Size: 0x84
function function_8617decb(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self function_9974c822("cp_nam_armada_helicopter");
        return;
    }
    self function_5dcc74d1("cp_nam_armada_helicopter");
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0x603095cd, Offset: 0x1310
// Size: 0xc4
function function_949d138a(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        if (self postfx::function_556665f2("pstfx_t9_sprite_heli_spray_r")) {
            self postfx::stoppostfxbundle("pstfx_t9_sprite_heli_spray_r");
        }
        self postfx::playpostfxbundle("pstfx_t9_sprite_heli_spray_r");
        return;
    }
    self postfx::exitpostfxbundle("pstfx_t9_sprite_heli_spray_r");
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 0, eflags: 0x2 linked
// Checksum 0x52a73528, Offset: 0x13e0
// Size: 0xde
function function_578ff07e() {
    while (true) {
        fov = getdvarfloat(#"cg_fov", 60);
        started = 0;
        while (!started) {
            active = getdvarint(#"hash_4fd2de7c0e3c131a", 0);
            if (active) {
                started = 1;
                break;
            }
            waitframe(1);
        }
        players = getlocalplayers();
        players[0] function_49cdf043(fov, 0);
        waitframe(1);
    }
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0x958c774b, Offset: 0x14c8
// Size: 0xf4
function pstfx_slowed(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        if (self postfx::function_556665f2("pstfx_slowed")) {
            self postfx::stoppostfxbundle("pstfx_slowed");
        }
        self postfx::playpostfxbundle("pstfx_slowed");
        self postfx::function_c8b5f318("pstfx_slowed", "Blur", 0.02);
        return;
    }
    self postfx::exitpostfxbundle("pstfx_slowed");
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0x98388320, Offset: 0x15c8
// Size: 0xc4
function function_ba76755f(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        if (self postfx::function_556665f2("pstfx_vignette")) {
            self postfx::stoppostfxbundle("pstfx_vignette");
        }
        self postfx::playpostfxbundle("pstfx_vignette");
        return;
    }
    self postfx::exitpostfxbundle("pstfx_vignette");
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0x6c4c303c, Offset: 0x1698
// Size: 0xc4
function function_dd4482eb(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        if (self postfx::function_556665f2("postfx_bundle_explosive_damage")) {
            self postfx::stoppostfxbundle("postfx_bundle_explosive_damage");
        }
        self postfx::playpostfxbundle("postfx_bundle_explosive_damage");
        return;
    }
    self postfx::exitpostfxbundle("postfx_bundle_explosive_damage");
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0x13138cb3, Offset: 0x1768
// Size: 0xb4
function function_67987ae7(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        setexposureactivebank(fieldname, 2);
        setpbgactivebank(fieldname, 2);
        return;
    }
    setexposureactivebank(fieldname, 1);
    setpbgactivebank(fieldname, 1);
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0x31710a28, Offset: 0x1828
// Size: 0x414
function function_69d7c128(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        forcestreamxmodel(#"hash_8cd82152094d2a0");
        function_3385d776(#"hash_11fe9ff5e4f2a6cd");
        function_3385d776(#"hash_11fe9cf5e4f2a1b4");
        function_3385d776(#"hash_7b203243ad7d0395");
        function_3385d776(#"hash_7b202f43ad7cfe7c");
        function_3385d776(#"hash_10274f95da53fc32");
        function_3385d776(#"hash_25b41b370890873c");
        function_3385d776(#"hash_53bcdb28dcd612a0");
        function_3385d776(#"hash_7122be00d75afa05");
        function_3385d776(#"hash_4c2c096e23faf610");
        function_3385d776(#"hash_63729dfa8ef2b601");
        function_3385d776(#"hash_4c28e66e23f884c0");
        function_3385d776(#"hash_6e1d6ac6b4311bd1");
        function_3385d776(#"hash_7acf0f22b1fd5f46");
        function_3385d776(#"hash_67b4b0bc7a445a09");
        return;
    }
    stopforcestreamingxmodel(#"hash_8cd82152094d2a0");
    function_c22a1ca2(#"hash_11fe9ff5e4f2a6cd");
    function_c22a1ca2(#"hash_11fe9cf5e4f2a1b4");
    function_c22a1ca2(#"hash_7b203243ad7d0395");
    function_c22a1ca2(#"hash_7b202f43ad7cfe7c");
    function_c22a1ca2(#"hash_10274f95da53fc32");
    function_c22a1ca2(#"hash_25b41b370890873c");
    function_c22a1ca2(#"hash_53bcdb28dcd612a0");
    function_c22a1ca2(#"hash_7122be00d75afa05");
    function_c22a1ca2(#"hash_4c2c096e23faf610");
    function_c22a1ca2(#"hash_63729dfa8ef2b601");
    function_c22a1ca2(#"hash_4c28e66e23f884c0");
    function_c22a1ca2(#"hash_6e1d6ac6b4311bd1");
    function_c22a1ca2(#"hash_7acf0f22b1fd5f46");
    function_c22a1ca2(#"hash_67b4b0bc7a445a09");
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0xf185a27b, Offset: 0x1c48
// Size: 0xcc
function function_a7313d0d(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        forcestreamxmodel(#"hash_21a97142189b5d28");
        forcestreamxmodel(#"hash_2606328857a76ba3");
        return;
    }
    stopforcestreamingxmodel(#"hash_21a97142189b5d28");
    stopforcestreamingxmodel(#"hash_2606328857a76ba3");
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0x22f34a0, Offset: 0x1d20
// Size: 0x18c
function function_855380ee(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        forcestreamxmodel(#"hash_21a97142189b5d28");
        forcestreamxmodel(#"hash_2606328857a76ba3");
        forcestreamxmodel(#"hash_4f34655ac3f72169");
        forcestreamxmodel(#"hash_df624519733aea1");
        forcestreamxmodel(#"hash_14393238d3c50834");
        return;
    }
    stopforcestreamingxmodel(#"hash_21a97142189b5d28");
    stopforcestreamingxmodel(#"hash_2606328857a76ba3");
    stopforcestreamingxmodel(#"hash_4f34655ac3f72169");
    stopforcestreamingxmodel(#"hash_df624519733aea1");
    stopforcestreamingxmodel(#"hash_14393238d3c50834");
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0xa7b95acd, Offset: 0x1eb8
// Size: 0x40c
function function_c10a31d2(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        function_3385d776(#"hash_15ef049a313d82ac");
        function_3385d776(#"hash_768b66892fcba96f");
        function_3385d776(#"hash_1165c07d9c9c7e9c");
        function_3385d776(#"hash_2aa3604c6392b2a6");
        function_3385d776(#"hash_5f0091ae3710e9f3");
        function_3385d776(#"hash_58de865168f42aee");
        function_3385d776(#"hash_77c2b6ac52930cb1");
        function_3385d776(#"hash_43d39ce5226b1f8e");
        function_3385d776(#"hash_6c5d1d5d4088c101");
        function_3385d776(#"hash_3b0cd83ac8ad5c56");
        function_3385d776(#"hash_706dd15212939f8d");
        function_3385d776(#"hash_1a4a4a928cfbbb2e");
        function_3385d776(#"hash_6d1a1169ba51609e");
        function_3385d776(#"hash_66ee45514fb3bdc9");
        function_3385d776(#"hash_38d65b6c7dc927c3");
        return;
    }
    function_c22a1ca2(#"hash_15ef049a313d82ac");
    function_c22a1ca2(#"hash_768b66892fcba96f");
    function_c22a1ca2(#"hash_1165c07d9c9c7e9c");
    function_c22a1ca2(#"hash_2aa3604c6392b2a6");
    function_c22a1ca2(#"hash_5f0091ae3710e9f3");
    function_c22a1ca2(#"hash_58de865168f42aee");
    function_c22a1ca2(#"hash_77c2b6ac52930cb1");
    function_c22a1ca2(#"hash_43d39ce5226b1f8e");
    function_c22a1ca2(#"hash_6c5d1d5d4088c101");
    function_c22a1ca2(#"hash_3b0cd83ac8ad5c56");
    function_c22a1ca2(#"hash_706dd15212939f8d");
    function_c22a1ca2(#"hash_1a4a4a928cfbbb2e");
    function_c22a1ca2(#"hash_6d1a1169ba51609e");
    function_c22a1ca2(#"hash_66ee45514fb3bdc9");
    function_c22a1ca2(#"hash_38d65b6c7dc927c3");
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0xa6cde735, Offset: 0x22d0
// Size: 0x18c
function function_9bf56dad(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        function_3385d776(#"hash_73a93959db93a4cc");
        function_3385d776(#"hash_2e0287f5c8b13f57");
        function_3385d776(#"hash_6ddfd86d840222e7");
        function_3385d776(#"hash_546522712687189f");
        function_3385d776(#"hash_6e5583d35c662b17");
        return;
    }
    function_c22a1ca2(#"hash_73a93959db93a4cc");
    function_c22a1ca2(#"hash_2e0287f5c8b13f57");
    function_c22a1ca2(#"hash_6ddfd86d840222e7");
    function_c22a1ca2(#"hash_546522712687189f");
    function_c22a1ca2(#"hash_6e5583d35c662b17");
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0x69b30a6b, Offset: 0x2468
// Size: 0x1dc
function function_241229f1(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    player = getlocalplayers()[0];
    if (!isalive(player)) {
        return;
    }
    if (bwastimejump) {
        self setsoundentcontext("plr_vehicle", "driver");
        player playrumblelooponentity(fieldname, #"hash_3c2b94894227f3cf");
        self thread scene::play(#"hash_7dabd48a4919ffbd");
        player codeplaypostfxbundle("pstfx_mp_door_gunner_vignette");
        self setanim(#"hash_30cafb59b2924e48");
        wait(getanimlength(#"hash_30cafb59b2924e48"));
        if (isdefined(player)) {
            player stoprumble(fieldname, #"hash_3c2b94894227f3cf");
        }
        if (isdefined(self)) {
            self clearanim(#"hash_30cafb59b2924e48", 0.2);
        }
        return;
    }
    if (player function_d2cb869e("pstfx_mp_door_gunner_vignette")) {
        player codestoppostfxbundle("pstfx_mp_door_gunner_vignette");
    }
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0x736a4e06, Offset: 0x2650
// Size: 0xae
function function_936cacda(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_88f38d6d = util::playfxontag(fieldname, #"hash_701a95e763f457a5", self, "tag_body");
        return;
    }
    if (isdefined(self.var_88f38d6d)) {
        stopfx(fieldname, self.var_88f38d6d);
        self.var_88f38d6d = undefined;
    }
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0xae426f53, Offset: 0x2708
// Size: 0x1c4
function function_abeb9b2d(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        if (!self postfx::function_556665f2("pstfx_t9_cp_prisoner_mkultra_white_transition_short")) {
            function_be93487f(fieldname, 8, 0, 1, 0, 0);
            self postfx::playpostfxbundle("pstfx_t9_cp_prisoner_mkultra_white_transition_short");
        }
        return;
    }
    if (bwastimejump == 2) {
        if (!self postfx::function_556665f2("pstfx_t9_cp_prisoner_mkultra_transition_short")) {
            self postfx::playpostfxbundle("pstfx_t9_cp_prisoner_mkultra_transition_short");
        }
        return;
    }
    if (self postfx::function_556665f2("pstfx_t9_cp_prisoner_mkultra_white_transition_short")) {
        function_be93487f(fieldname, 1, 1, 0, 0, 0);
        self postfx::exitpostfxbundle("pstfx_t9_cp_prisoner_mkultra_white_transition_short");
    }
    if (self postfx::function_556665f2("pstfx_t9_cp_prisoner_mkultra_transition_short")) {
        self postfx::exitpostfxbundle("pstfx_t9_cp_prisoner_mkultra_transition_short");
    }
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0x77b1e228, Offset: 0x28d8
// Size: 0xbe
function function_ba96d53c(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (!isdefined(self.var_e7badf37)) {
            self.var_e7badf37 = util::playfxontag(fieldname, #"hash_6109cdb6146abcaa", self, "tag_body");
        }
        return;
    }
    if (isdefined(self.var_e7badf37)) {
        stopfx(fieldname, self.var_e7badf37);
        self.var_e7badf37 = undefined;
    }
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0xd235609c, Offset: 0x29a0
// Size: 0x220
function function_f6f70714(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    var_cc46e921 = getdynentarray("dyn_signage");
    var_855e6723 = getentarray(fieldname, "static_signage", "targetname");
    if (bwasdemojump == 1) {
        foreach (var_a077d41f in var_855e6723) {
            var_a077d41f hide();
        }
        return;
    }
    foreach (var_ccd8cd20 in var_cc46e921) {
        setdynentenabled(var_ccd8cd20, 0);
    }
    foreach (var_a077d41f in var_855e6723) {
        var_a077d41f show();
    }
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0x39a96834, Offset: 0x2bc8
// Size: 0xe2
function function_35172364(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    switch (bwasdemojump) {
    case 1:
        level.var_a9e29100 = self function_82f1cbd2();
        break;
    case 2:
        if (isdefined(level.var_a9e29100)) {
            self function_49cdf043(level.var_a9e29100, 0);
            self function_9298adaf(1);
        }
        break;
    }
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0xe405cb99, Offset: 0x2cb8
// Size: 0xe2
function function_2dca33ef(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    switch (bwasdemojump) {
    case 1:
        level.var_244d2f22 = self function_82f1cbd2();
        break;
    case 2:
        if (isdefined(level.var_244d2f22)) {
            self function_49cdf043(level.var_244d2f22, 0);
            self function_9298adaf(2);
        }
        break;
    }
}

// Namespace cp_nam_armada/cp_nam_armada
// Params 7, eflags: 0x2 linked
// Checksum 0x9e2c6ddb, Offset: 0x2da8
// Size: 0x2ec
function force_stream_weapons(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump <= 0) {
        self util::force_stream_weapons(fieldname);
        return;
    }
    var_4a5fb55d = [];
    switch (bwasdemojump) {
    case 1:
        var_4a5fb55d[var_4a5fb55d.size] = getweapon(#"hash_4ff481a4f55ed901", array("fastreload"));
        var_4a5fb55d[var_4a5fb55d.size] = getweapon(#"pistol_semiauto_t9", array("extclip"));
        var_4a5fb55d[var_4a5fb55d.size] = getweapon(#"lmg_accurate_t9", "grip2");
        var_4a5fb55d[var_4a5fb55d.size] = getweapon(#"lmg_accurate_t9", "acog");
        var_4a5fb55d[var_4a5fb55d.size] = getweapon(#"hash_4ff481a4f55ed901");
        var_4a5fb55d[var_4a5fb55d.size] = getweapon(#"hash_4ff481a4f55ed901", "stalker");
        var_4a5fb55d[var_4a5fb55d.size] = getweapon(#"hash_4ff481a4f55ed901", "extclip");
        var_4a5fb55d[var_4a5fb55d.size] = getweapon(#"tr_precisionsemi_t9", "fastreload");
        var_4a5fb55d[var_4a5fb55d.size] = getweapon(#"tr_precisionsemi_t9", "scope3x");
        break;
    case 2:
        var_4a5fb55d[var_4a5fb55d.size] = getweapon(#"lmg_slowfire_t9");
        var_4a5fb55d[var_4a5fb55d.size] = getweapon(#"pistol_semiauto_t9");
        break;
    }
    self util::force_stream_weapons(fieldname, var_4a5fb55d);
}

