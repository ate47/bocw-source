// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;
#using script_84f5590d2ac48f8;
#using script_214d8d80fea7a6eb;
#using scripts\cp_common\util.csc;
#using scripts\core_common\animation_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using script_38867f943fb86135;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\easing.csc;
#using script_dfd475a961626c7;
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\util_shared.csc;

#namespace cp_takedown;

// Namespace cp_takedown/level_init
// Params 1, eflags: 0x20
// Checksum 0xb649902, Offset: 0x3d8
// Size: 0x134
function event_handler[level_init] main(*eventstruct) {
    full_screen_movie::register();
    setsaveddvar(#"enable_global_wind", 1);
    setsaveddvar(#"wind_global_vector", "88 0 0");
    setsaveddvar(#"wind_global_low_altitude", 0);
    setsaveddvar(#"wind_global_hi_altitude", 10000);
    setsaveddvar(#"wind_global_low_strength_percent", 100);
    init_clientfields();
    callback::on_spawned(&on_spawned);
    load::main();
    util::waitforclient(0);
}

// Namespace cp_takedown/cp_takedown
// Params 1, eflags: 0x2 linked
// Checksum 0x7873ae86, Offset: 0x518
// Size: 0x74
function on_spawned(*localclientnum) {
    self endon(#"death", #"disconnect");
    waitframe(1);
    util::function_8eb5d4b0(3000, 0.23);
    self thread cp_post::function_d9475fc(0.6, undefined, undefined, undefined);
}

// Namespace cp_takedown/cp_takedown
// Params 0, eflags: 0x2 linked
// Checksum 0x4d154c5a, Offset: 0x598
// Size: 0x5ec
function init_clientfields() {
    clientfield::register("scriptmover", "burning_photo", 1, 3, "int", &function_513e85fe, 0, 0);
    clientfield::register("vehicle", "le_door_en2_death_fallout", 1, 1, "int", &function_371e91f5, 0, 0);
    clientfield::register("vehicle", "ri_door_en2_death_fallout", 1, 1, "int", &function_c4e8d2c6, 0, 0);
    clientfield::register("world", "fake_snipercam_slomo", 1, 1, "int", &function_d1d298b9, 0, 0);
    clientfield::register("vehicle", "4x4_getin_door", 1, 1, "int", &function_5359a453, 0, 0);
    clientfield::register("vehicle", "4x4_getin_door_woods", 1, 1, "int", &function_3cb79acb, 0, 0);
    clientfield::register("vehicle", "af_rc_deploy1", 1, 1, "int", &function_4cce7a86, 0, 0);
    clientfield::register("vehicle", "af_rc_deploy2", 1, 1, "int", &function_3e1ddd25, 0, 0);
    clientfield::register("vehicle", "af_rc_deploy3", 1, 1, "int", &function_da9d1625, 0, 0);
    clientfield::register("toplayer", "lerp_fov", 1, 3, "int", &lerp_fov, 0, 0);
    clientfield::register("vehicle", "hit1_helispotlight", 1, 1, "int", &hit1_helispotlight, 0, 0);
    clientfield::register("vehicle", "hit1_track_vehicle", 1, 1, "int", &hit1_track_vehicle, 0, 0);
    clientfield::register("scriptmover", "hit1_track_ent", 1, 1, "int", &hit1_track_ent, 0, 0);
    clientfield::register("scriptmover", "hit1_tracking", 1, 1, "int", &hit1_tracking, 0, 0);
    clientfield::register("scriptmover", "hit1_light", 1, 1, "int", &hit1_light, 0, 0);
    clientfield::register("world", "wreck_volume_decals", 1, 1, "int", &function_f48f6d3, 0, 1);
    clientfield::register("world", "crash_models", 1, 1, "int", &function_7f111718, 0, 1);
    clientfield::register("toplayer", "set_player_pbg_bank", 1, 1, "int", &set_player_pbg_bank, 0, 0);
    clientfield::register("toplayer", "wreck_vision", 1, 1, "int", &function_a315cdc9, 1, 0);
    clientfield::register("world", "prop_wash", 1, 1, "int", &function_766abe10, 0, 0);
    clientfield::register("toplayer", "force_stream_weapons", 1, 2, "int", &force_stream_weapons, 1, 1);
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0xf42d9062, Offset: 0xb90
// Size: 0xb4
function function_d1d298b9(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        level easing::ease_dvar(fieldname, "runtime_time_scale", 0, 0.5, 0.1, #"linear");
        return;
    }
    setdvar(#"runtime_time_scale", 1);
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0x7baccaff, Offset: 0xc50
// Size: 0xec
function function_513e85fe(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self playrenderoverridebundle(#"hash_12e9e7962353adb0");
        return;
    }
    if (bwastimejump == 2) {
        self stoprenderoverridebundle(#"hash_12e9e7962353adb0");
        waitframe(1);
        self playrenderoverridebundle(#"hash_51e0b8d384aeac65");
        return;
    }
    self function_f6e99a8d(#"hash_51e0b8d384aeac65");
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0xe0dc135e, Offset: 0xd48
// Size: 0x11c
function function_766abe10(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    ents = getdynentarray("prop_blast_me");
    for (i = 0; i < 20; i++) {
        foreach (ent in ents) {
            launchdynent(ent, (-0.15, 0, 0));
        }
        waitframe(1);
        waitframe(1);
    }
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0x49787f49, Offset: 0xe70
// Size: 0xb8
function hit1_track_ent(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (isdefined(level.var_9a3944f4)) {
        level.var_9a3944f4.var_ba240678 = self;
        level.var_cc43fb24 = undefined;
        if (isdefined(level.var_bda6b1e1)) {
            level.var_9a3944f4.var_ba240678.tracking = level.var_bda6b1e1;
            level.var_bda6b1e1 = undefined;
        }
        return;
    }
    level.var_cc43fb24 = self;
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0xf36e0f7c, Offset: 0xf30
// Size: 0x8c
function hit1_tracking(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (isdefined(level.var_9a3944f4.var_ba240678)) {
        level.var_9a3944f4.var_ba240678.tracking = self;
        level.var_bda6b1e1 = undefined;
        return;
    }
    level.var_bda6b1e1 = self;
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0x58948eb1, Offset: 0xfc8
// Size: 0x8c
function hit1_track_vehicle(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (isdefined(level.var_9a3944f4.var_ba240678)) {
        level.var_9a3944f4.var_ba240678.tracking = self;
        level.var_bda6b1e1 = undefined;
        return;
    }
    level.var_bda6b1e1 = self;
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0x85a61f66, Offset: 0x1060
// Size: 0x70
function hit1_light(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (isdefined(level.var_9a3944f4)) {
        level.var_9a3944f4.light = self;
        return;
    }
    level.var_c3ea2341 = self;
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0x6b4abac9, Offset: 0x10d8
// Size: 0x436
function hit1_helispotlight(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self endon(#"hash_55fc2759ea7b7c72");
    getplayers(fieldname)[0] endon(#"death", #"disconnect");
    if (isdefined(level.var_cc43fb24)) {
        level.var_9a3944f4.var_ba240678 = level.var_cc43fb24;
        level.var_cc43fb24 = undefined;
        if (isdefined(level.var_bda6b1e1)) {
            level.var_9a3944f4.var_ba240678.tracking = level.var_bda6b1e1;
            level.var_bda6b1e1 = undefined;
        }
    }
    var_61bc4e7 = 0;
    var_7dfc67b2 = "tag_searchlight_bracket";
    var_5d9bcd31 = "tag_searchlight_attach";
    tag_body = "tag_searchlight";
    tag_fx = "tag_searchlight_fx";
    if (bwastimejump) {
        self endon(#"hash_55fc2759ea7b7c72");
        level.var_9a3944f4 = self;
        while (true) {
            if (isdefined(self.var_ba240678.tracking)) {
                /#
                    if (is_true(var_61bc4e7)) {
                        sphere(self.var_ba240678.origin, 8, (1, 0, 0), 1, 0, 10, 1);
                        sphere(self.var_ba240678.tracking.origin, 4, (0, 0, 1), 1, 0, 10, 1);
                    }
                #/
                org = self gettagorigin(tag_body);
                ang = self gettagangles(var_7dfc67b2);
                var_ba943ae1 = self gettagangles(var_5d9bcd31);
                var_bca870f9 = angleclamp180(ang - var_ba943ae1);
                var_54c9ea3b = (0, var_bca870f9[1], 0);
                var_26ea01fb = vectortoangles(self.var_ba240678.origin - org);
                var_bca870f9 = angleclamp180(var_26ea01fb - var_ba943ae1);
                var_54c9ea3b = (0, var_bca870f9[1], 0);
                self function_2e566abb(var_7dfc67b2, (0, 0, 0), var_54c9ea3b);
                var_bca870f9 = angleclamp180(var_26ea01fb - ang);
                var_76d79dc0 = (var_bca870f9[0], 0, 0);
                self function_2e566abb(tag_body, (0, 0, 0), var_76d79dc0);
                /#
                    fwd = anglestoforward(self gettagangles(tag_fx));
                    fwd = vectornormalize(fwd);
                    fwd *= 2512;
                #/
            }
            waitframe(1);
        }
        return;
    }
    self notify(#"hash_55fc2759ea7b7c72");
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0xaf046560, Offset: 0x1518
// Size: 0x5c
function function_371e91f5(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self setanimrestart(#"hash_55c97e9bf41cf070");
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0xac3bb212, Offset: 0x1580
// Size: 0x5c
function function_c4e8d2c6(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self setanimrestart(#"hash_7ed3204394a2ff5e");
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0x7dfbf6e6, Offset: 0x15e8
// Size: 0x5c
function function_4cce7a86(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self setanimrestart(#"hash_65fb765a66b27ef1");
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0x27c2a9f3, Offset: 0x1650
// Size: 0x5c
function function_3e1ddd25(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self setanimrestart(#"hash_77cbdb56c22e71f");
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0x6d65da63, Offset: 0x16b8
// Size: 0x5c
function function_da9d1625(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self setanimrestart(#"hash_3be8472c6114d6b6");
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0xd785ed23, Offset: 0x1720
// Size: 0x5c
function function_5359a453(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self setanimrestart(#"hash_7e2b806a227352d0");
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0x227e389c, Offset: 0x1788
// Size: 0x5c
function function_3cb79acb(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self setanimrestart(#"hash_7310b4167a3dbe5f");
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x0
// Checksum 0xadd36c23, Offset: 0x17f0
// Size: 0x5c
function function_d93be6d9(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self setanimrestart(#"hash_7e27abd232bfd236");
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0x37929310, Offset: 0x1858
// Size: 0x342
function lerp_fov(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    switch (bwasdemojump) {
    case 1:
        self easing::function_f95cb457(undefined, 15.5, 0.5, #"linear");
        break;
    case 2:
        self easing::function_f95cb457(undefined, 20.2, 1.8, #"linear");
        self function_9e574055(0);
        self function_3c54e2b8(1);
        break;
    case 3:
        self function_9e574055(2);
        self easing::function_136edb11(undefined, 3, 0.1, #"linear", 1, 1);
        self function_d7be9a9f(15, 0.1);
        break;
    case 5:
        self easing::function_136edb11(undefined, 5.6, 2, #"linear", 1, 1);
        break;
    case 0:
        self function_9e574055(0);
        self function_3c54e2b8(2);
        self function_9ea7b4eb(2);
        self function_9298adaf(2);
        break;
    case 6:
        self easing::function_f95cb457(undefined, 17.2, 2, #"linear");
        self function_9e574055(0);
        self function_3c54e2b8(1);
        break;
    case 7:
        self easing::function_f95cb457(undefined, 20.2, 1.8, #"linear");
        self function_9e574055(0);
        self function_3c54e2b8(1);
        break;
    }
}

// Namespace cp_takedown/cp_takedown
// Params 0, eflags: 0x0
// Checksum 0x671cef28, Offset: 0x1ba8
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

// Namespace cp_takedown/cp_takedown
// Params 0, eflags: 0x0
// Checksum 0x440bc574, Offset: 0x1da0
// Size: 0x16
function dof_disable_autofocus() {
    self notify(#"hash_b2522f6440eb5d5");
}

// Namespace cp_takedown/cp_takedown
// Params 1, eflags: 0x2 linked
// Checksum 0x5a02150c, Offset: 0x1dc0
// Size: 0x54
function function_26826144(*str_notify) {
    self function_9e574055(0);
    self function_3c54e2b8(1);
    self function_9ea7b4eb(1);
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0xd5331188, Offset: 0x1e20
// Size: 0x2c2
function function_f48f6d3(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    a_n_decals = findvolumedecalindexarray("wreck_volume_decals");
    var_648616bf = findstaticmodelindexarray("plane_body");
    switch (bwastimejump) {
    case 0:
        foreach (n_decal in a_n_decals) {
            hidevolumedecal(n_decal);
        }
        foreach (model in var_648616bf) {
            hidestaticmodel(model);
        }
        break;
    case 1:
        foreach (n_decal in a_n_decals) {
            unhidevolumedecal(n_decal);
        }
        foreach (model in var_648616bf) {
            unhidestaticmodel(model);
        }
        break;
    default:
        break;
    }
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0x58195bfa, Offset: 0x20f0
// Size: 0x1aa
function function_7f111718(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    var_648616bf = findstaticmodelindexarray("prewing_smash_debris ");
    switch (bwastimejump) {
    case 0:
        foreach (model in var_648616bf) {
            hidestaticmodel(model);
        }
        break;
    case 1:
        foreach (model in var_648616bf) {
            unhidestaticmodel(model);
        }
        break;
    default:
        break;
    }
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0x8af1f99f, Offset: 0x22a8
// Size: 0xec
function set_player_pbg_bank(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        setpbgactivebank(fieldname, 2);
        function_be93487f(fieldname, 2, 0, 1, 0, 0);
        return;
    }
    setpbgactivebank(fieldname, 1);
    function_be93487f(fieldname, 1, 1, 0, 0, 0);
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0x99288f78, Offset: 0x23a0
// Size: 0xc4
function function_a315cdc9(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        if (!self postfx::function_556665f2("pstfx_takedown_wreck_vision")) {
            self postfx::playpostfxbundle("pstfx_takedown_wreck_vision");
        }
        return;
    }
    if (self postfx::function_556665f2("pstfx_takedown_wreck_vision")) {
        self postfx::exitpostfxbundle("pstfx_takedown_wreck_vision");
    }
}

// Namespace cp_takedown/cp_takedown
// Params 7, eflags: 0x2 linked
// Checksum 0xd7f80820, Offset: 0x2470
// Size: 0x284
function force_stream_weapons(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    weapons = [];
    switch (bwasdemojump) {
    case 1:
        weapons[weapons.size] = getweapon(#"smg_standard_t9", "steadyaim", "elo2");
        weapons[weapons.size] = getweapon(#"smg_handling_t9", "steadyaim", "reflex", "grip");
        weapons[weapons.size] = getweapon(#"smg_heavy_t9", "acog");
        break;
    case 2:
        weapons[weapons.size] = getweapon(#"ar_standard_t9", array("holo", "steadyaim", "grip", "extclip"));
        weapons[weapons.size] = getweapon(#"sniper_quickscope_t9");
    default:
        weapons[weapons.size] = getweapon(#"smg_standard_t9", "steadyaim", "elo2");
        weapons[weapons.size] = getweapon(#"smg_handling_t9", "steadyaim", "reflex", "grip");
        weapons[weapons.size] = getweapon(#"smg_heavy_t9", "acog");
        break;
    }
    self thread util::force_stream_weapons(fieldname, weapons);
}

