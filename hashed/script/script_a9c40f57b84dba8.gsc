// Atian COD Tools GSC CW decompiler test
#using script_7c8886f468a029fb;
#using scripts\zm_common\zm_utility.csc;
#using scripts\zm_common\zm_ping.csc;
#using scripts\core_common\beam_shared.csc;
#using scripts\core_common\renderoverridebundle.csc;
#using scripts\core_common\audio_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\animation_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_1b312da5;

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x5
// Checksum 0x9424a653, Offset: 0x288
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_3cd3b81be4386726", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0x1c882f3, Offset: 0x2d0
// Size: 0x4ac
function preinit() {
    if (!zm_utility::is_survival()) {
        return;
    }
    clientfield::register("scriptmover", "" + #"hash_627fe6d726003b48", 1, 1, "int", &function_a233f763, 0, 0);
    clientfield::register("world", "" + #"hash_1ff35e37755facac", 1, getminbitcountfornum(6), "int", &function_a913a80c, 0, 0);
    clientfield::register("toplayer", "" + #"hash_583ce51cd4d9a904", 1, getminbitcountfornum(6), "int", &function_bbadd47c, 0, 0);
    clientfield::register("allplayers", "" + #"hash_33e8b606c01f74ee", 1, 1, "int", &function_42b24a10, 0, 0);
    clientfield::register("world", "" + #"hash_645bdb2b2ae769ef", 1, 1, "int", &function_f23a642e, 0, 0);
    clientfield::register("world", "" + #"hash_6d4501b4a27d3b0f", 1, getminbitcountfornum(6), "int", &function_5e51d561, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_723ddf6790b39408", 1, getminbitcountfornum(5), "int", &function_54098fb4, 0, 0);
    clientfield::register("world", "" + #"hash_6eb00b16d3628642", 1, 1, "int", &function_761f03cf, 0, 0);
    clientfield::register("world", "" + #"hash_763dd8035e80f7c", 1, 1, "int", &function_44dc8dc9, 0, 0);
    if (!is_true(getgametypesetting(#"hash_759fe9a9853a9b36")) && !getdvarint(#"hash_730311c63805303a", 0)) {
        level.var_3c3b40c7 = sr_orda_health_bar::register();
    }
    zm_ping::function_5ae4a10c(#"sr_ee_hulk_wild_thing", "sr_ee_hulk_wild_thing", undefined, undefined, #"hash_49a2dcb46e6d1d96");
    zm_ping::function_5ae4a10c(#"hash_7b7cbb4eb2fd70e3", "sr_ee_hulk_interest", #"hash_c614bf6db74b718", undefined, #"hash_336559c6c8ed5192");
    zm_ping::function_5ae4a10c(#"hash_f93e1bf903e219b", "sr_ee_hulk_interest_fake", #"hash_c614bf6db74b718", undefined, #"hash_336559c6c8ed5192");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 7, eflags: 0x2 linked
// Checksum 0x7cad254c, Offset: 0x788
// Size: 0xca
function function_a233f763(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(self.model)) {
        switch (self.model) {
        case #"sr_ee_hulk_wild_thing":
            self.targetname = "sr_ee_hulk_wild_thing";
            break;
        case #"hash_7b7cbb4eb2fd70e3":
            self.targetname = "sr_ee_hulk_interest";
            break;
        case #"hash_f93e1bf903e219b":
            self.targetname = "sr_ee_hulk_interest_fake";
            break;
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 7, eflags: 0x2 linked
// Checksum 0xd85cdb76, Offset: 0x860
// Size: 0x1fa
function function_a913a80c(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    switch (bwastimejump) {
    case 1:
        forcestreamxmodel(#"hash_413e6d8ec7666d41");
        forcestreamxmodel(#"hash_413e6b8ec76669db");
        forcestreamxmodel(#"hash_413e6c8ec7666b8e");
        function_3385d776(#"hash_31b9905217e0bfe3");
        break;
    case 2:
        forcestreamxmodel(#"hash_ffa046503bd02bb");
        break;
    case 3:
        stopforcestreamingxmodel(#"hash_ffa046503bd02bb");
        break;
    case 4:
        forcestreamxmodel(#"hash_46cb6387fd2006a7");
        break;
    case 5:
        forcestreamxmodel(#"hash_31be7c895b8fbf9b");
        break;
    case 6:
        stopforcestreamingxmodel(#"hash_31be7c895b8fbf9b");
        break;
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 7, eflags: 0x2 linked
// Checksum 0x19ac652c, Offset: 0xa68
// Size: 0x45a
function function_bbadd47c(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    switch (bwastimejump) {
    case 1:
        self playsound(fieldname, #"hash_b315ff59968763f");
        self postfx::playpostfxbundle(#"hash_48d5efe2859096e0");
        self playrumbleonentity(fieldname, #"damage_heavy");
        earthquake(fieldname, 0.3, 1.5, self.origin, 1024);
        break;
    case 2:
        self playsound(fieldname, #"hash_1ec55d24bb7fa94");
        if (!self postfx::function_556665f2(#"hash_4bce2bc0fe1ee966")) {
            self postfx::playpostfxbundle(#"hash_4bce2bc0fe1ee966");
            wait(3);
            self postfx::exitpostfxbundle(#"hash_4bce2bc0fe1ee966");
        }
        break;
    case 3:
        if (!self postfx::function_556665f2(#"hash_54da2f2da5752d99")) {
            self postfx::playpostfxbundle(#"hash_54da2f2da5752d99");
        }
        if (!isdefined(self.var_b892704e)) {
            playsound(fieldname, #"hash_7b5289d48cc02d77", (0, 0, 0));
            self.var_b892704e = self playloopsound(#"evt_sr_phase_player_lp");
        }
        if (!isdefined(self.var_50b39858) && viewmodelhastag(fieldname, "tag_torso")) {
            self.var_50b39858 = playviewmodelfx(fieldname, #"hash_289962ed0e76921d", "tag_torso");
        }
        break;
    case 4:
        if (self postfx::function_556665f2(#"hash_54da2f2da5752d99")) {
            self postfx::exitpostfxbundle(#"hash_54da2f2da5752d99");
        }
        if (isdefined(self.var_b892704e)) {
            playsound(fieldname, #"hash_37b1613c2cb4c8f3", (0, 0, 0));
            self stoploopsound(self.var_b892704e);
            self.var_b892704e = undefined;
        }
        if (isdefined(self.var_50b39858)) {
            stopfx(fieldname, self.var_50b39858);
            self.var_50b39858 = undefined;
        }
        break;
    case 5:
        self setenemyglobalscrambler(1);
        break;
    case 6:
        if (!is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
            self setenemyglobalscrambler(0);
        }
        break;
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 7, eflags: 0x2 linked
// Checksum 0x77e6e4dd, Offset: 0xed0
// Size: 0x264
function function_42b24a10(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    var_e534cbe9 = 0;
    if (isdefined(self.var_efb5d2f2[fieldname])) {
        killfx(fieldname, self.var_efb5d2f2[fieldname]);
        self.var_efb5d2f2[fieldname] = undefined;
        var_e534cbe9 = 1;
    }
    if (bwastimejump > 0) {
        if (function_65b9eb0f(fieldname)) {
            return;
        }
        if (!var_e534cbe9) {
            self playsound(fieldname, #"hash_79a78504d4dbaf3f");
        }
        if (self zm_utility::function_f8796df3(fieldname)) {
            if (viewmodelhastag(fieldname, "tag_flashlight")) {
                self.var_efb5d2f2[fieldname] = playviewmodelfx(fieldname, #"hash_679d39e5fd4eae19", "tag_flashlight");
            }
        } else {
            self.var_efb5d2f2[fieldname] = util::playfxontag(fieldname, #"hash_153f56ac9d13a399", self, "tag_flashlight");
        }
        if (self == function_5c10bd79(fieldname)) {
            util::function_8eb5d4b0(3500, 0);
        }
        return;
    }
    if (var_e534cbe9) {
        self playsound(fieldname, #"hash_13715035b161a0c3");
    }
    if (self == function_5c10bd79(fieldname)) {
        util::function_8eb5d4b0(3500, 2.5);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 7, eflags: 0x2 linked
// Checksum 0x60866b38, Offset: 0x1140
// Size: 0x144
function function_f23a642e(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    var_c75c14fb = struct::get(#"hash_2fa4eb0aaf83db26");
    if (bwastimejump) {
        if (!isdefined(var_c75c14fb.var_73f720d5)) {
            var_c75c14fb.var_73f720d5 = util::spawn_model(fieldname, #"hash_a02ea23378ffdcb", var_c75c14fb.origin, var_c75c14fb.angles);
        }
        var_c75c14fb.var_73f720d5 thread animation::play_siege(#"p9_fxanim_zm_silver_jellyfish_large_sanim", undefined, 1, 1);
        util::playfxontag(fieldname, #"sr/fx9_aether_jellyfish_self_large", var_c75c14fb.var_73f720d5, "tag_origin");
        return;
    }
    if (isdefined(var_c75c14fb.var_73f720d5)) {
        var_c75c14fb.var_73f720d5 delete();
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 7, eflags: 0x2 linked
// Checksum 0xe962e410, Offset: 0x1290
// Size: 0x732
function function_5e51d561(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    switch (bwastimejump) {
    case 1:
        wait(7);
        level notify(#"hash_6516df6bc445c4e4");
        level thread function_e84a12f5();
        break;
    case 2:
        a_doors = struct::get_array("lockdown_door", "targetname");
        foreach (door in a_doors) {
            door thread function_7b485a17(fieldname);
        }
        level notify(#"hash_6516df6bc445c4e4");
        level notify(#"hash_74db455d82405753");
        wait(12);
        level thread function_3c6b5550();
        level notify(#"hash_74db455d82405753");
        break;
    case 3:
        e_player = getlocalplayers()[0];
        e_player playsound(fieldname, #"hash_4997e2b0d569ce1e");
        a_locations = array((-7043, -6478, -1614), (-6116, -3980, -1614), (-3490, -4938, -1614));
        foreach (location in a_locations) {
            audio::playloopat(#"hash_78745f007a514d2b", location);
            wait(0.05);
        }
        wait(14.5);
        level notify(#"hash_6516df6bc445c4e4");
        break;
    case 4:
        level notify(#"hash_6516df6bc445c4e4");
        level thread function_e84a12f5(0);
        a_locations = array((-7043, -6478, -1614), (-6116, -3980, -1614), (-3490, -4938, -1614));
        foreach (location in a_locations) {
            audio::stoploopat(#"hash_78745f007a514d2b", location);
            wait(0.05);
        }
        setsoundcontext("spawn_stinger", "inactive");
        a_locations = array((-2429, -4277, 500), (-6407, -2881, 500));
        foreach (location in a_locations) {
            audio::playloopat(#"evt_sur_we_portal_common_lp", location);
            playsound(fieldname, #"hash_46461ba72b8ab7a2", location);
            wait(0.05);
        }
        var_ca4b2a1e = (-4653, -4608, 300);
        audio::playloopat(#"hash_1c57ae0803680c93", var_ca4b2a1e);
        playsound(fieldname, #"hash_735ba59f382594d", var_ca4b2a1e);
        function_5ea2c6e3("zmb_sr_dropallaudioby4", 1, 1);
        break;
    case 5:
        var_ca4b2a1e = (-4653, -4608, 300);
        playsound(fieldname, #"hash_3da10571694b9942", var_ca4b2a1e);
        wait(5);
        playsound(fieldname, #"hash_39e41dface2369a8", var_ca4b2a1e);
        audio::stoploopat(#"hash_1c57ae0803680c93", var_ca4b2a1e);
        break;
    case 6:
        a_locations = array((-2429, -4277, 500), (-6407, -2881, 500));
        foreach (location in a_locations) {
            audio::stoploopat(#"evt_sur_we_portal_common_lp", location);
            playsound(fieldname, #"hash_3c03699766f040c7", location);
            wait(0.05);
        }
        break;
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xe4fbb8d7, Offset: 0x19d0
// Size: 0x14c
function function_7b485a17(localclientnum) {
    var_8120ba58 = #"hash_22d5b337ab9580cb";
    var_ff3c5ccc = #"hash_29ba123aa4f8357d";
    var_477800b2 = #"hash_3c97b64efcb572d9";
    if (isdefined(self.script_string)) {
        var_8120ba58 = var_8120ba58 + "_" + self.script_string;
        var_ff3c5ccc = var_ff3c5ccc + "_" + self.script_string;
        var_477800b2 = var_477800b2 + "_" + self.script_string;
    }
    n_waittime = 5;
    if (isdefined(self.script_int)) {
        n_waittime = self.script_int;
    }
    playsound(localclientnum, var_8120ba58, self.origin);
    soundloopemitter(var_ff3c5ccc, self.origin);
    wait(n_waittime);
    soundstoploopemitter(var_ff3c5ccc, self.origin);
    playsound(localclientnum, var_477800b2, self.origin);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0x6459350a, Offset: 0x1b28
// Size: 0x124
function function_3c6b5550() {
    audio::playloopat(#"hash_7228dff2158154c2", (-7150, -6333, -907));
    audio::playloopat(#"hash_7228dff2158154c2", (-6911, -6596, -901));
    audio::playloopat(#"hash_7228dff2158154c2", (-6915, -6335, -897));
    audio::playloopat(#"hash_7228dff2158154c2", (-3307, -4985, -923));
    audio::playloopat(#"hash_7228dff2158154c2", (-3437, -4767, -904));
    audio::playloopat(#"hash_7228dff2158154c2", (-3640, -4897, -901));
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xee79b9ef, Offset: 0x1c58
// Size: 0x1a0
function function_e84a12f5(b_on = 1) {
    var_fb1a1d4d = array((-5957, -3908, -913), (-6213, -3840, -913), (-6266, -4060, -913), (-6059, -4133, -932), (-3644, -4888, -915), (-3549, -5087, -944), (-3336, -5001, -935), (-3456, -4772, -938), (-6907, -6327, -928), (-7127, -6320, -942), (-7169, -6544, -946), (-6902, -6561, -938));
    foreach (location in var_fb1a1d4d) {
        if (b_on) {
            audio::playloopat(#"hash_1f12fb0aea401be9", location);
            continue;
        }
        audio::stoploopat(#"hash_1f12fb0aea401be9", location);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 7, eflags: 0x2 linked
// Checksum 0xf69f4ce1, Offset: 0x1e00
// Size: 0x5d2
function function_54098fb4(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level.var_b4488d57)) {
        level.var_b4488d57 = spawnstruct();
    }
    var_b4488d57 = level.var_b4488d57;
    str_model = self.model;
    if (isdefined(str_model)) {
        switch (str_model) {
        case #"hash_46cb6387fd2006a7":
            switch (bwastimejump) {
            case 1:
                var_b4488d57.var_5beedbc3 = self;
                break;
            case 2:
                if (!isdefined(var_b4488d57.var_2afde778)) {
                    var_b4488d57.var_2afde778 = playfx(fieldname, #"zm_ai/fx9_orda_spawn_portal_c", self.origin + (0, 0, 7000), anglestoforward(self.angles), anglestoup(self.angles + (90, 0, 0)));
                }
                if (!isdefined(var_b4488d57.var_d63b9eb9)) {
                    var_b4488d57.var_d63b9eb9 = playfx(fieldname, #"sr/fx9_orda_aether_portal_beam", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
                }
                if (!isdefined(var_b4488d57.var_e1cd0eb7)) {
                    var_b4488d57.var_e1cd0eb7 = self.origin + (0, 0, 500);
                    playsound(fieldname, #"hash_46461ba72b8ab7a2", var_b4488d57.var_e1cd0eb7);
                    audio::playloopat(#"evt_sur_we_portal_common_lp", var_b4488d57.var_e1cd0eb7);
                }
                break;
            case 3:
                if (isdefined(var_b4488d57.var_2afde778)) {
                    stopfx(fieldname, var_b4488d57.var_2afde778);
                    var_b4488d57.var_2afde778 = undefined;
                }
                if (isdefined(var_b4488d57.var_d63b9eb9)) {
                    stopfx(fieldname, var_b4488d57.var_d63b9eb9);
                    var_b4488d57.var_d63b9eb9 = undefined;
                }
                if (isdefined(var_b4488d57.var_e1cd0eb7)) {
                    playsound(fieldname, #"hash_3c03699766f040c7", var_b4488d57.var_e1cd0eb7);
                    audio::stoploopat(#"evt_sur_we_portal_common_lp", var_b4488d57.var_e1cd0eb7);
                    var_b4488d57.var_e1cd0eb7 = undefined;
                }
                break;
            }
            break;
        case #"hash_bc01edf8191a2b1":
            self renderoverridebundle::function_f4eab437(fieldname, 1, #"hash_1a1e90e909359ce0");
            break;
        case #"hash_7f6a9e056951dafb":
            if (bwastimejump) {
                level thread function_7da52bb6(fieldname, self);
            }
            break;
        case #"tag_origin":
            switch (bwastimejump) {
            case 1:
                var_b4488d57.var_47e634f = self;
                break;
            case 2:
                level thread function_abac41c9(var_b4488d57, self);
                break;
            case 3:
                if (!isdefined(self.var_75234429)) {
                    self.var_75234429 = util::playfxontag(fieldname, #"hash_5962648e079ec8af", self, "tag_origin");
                }
                level thread function_51ed2144(var_b4488d57, self);
                break;
            case 4:
                if (isdefined(self.var_75234429)) {
                    stopfx(fieldname, self.var_75234429);
                    self.var_75234429 = undefined;
                }
                var_b4488d57 notify(#"hash_6a2f3283df9a5b38");
                if (isdefined(self.var_28efd47d)) {
                    beam::function_47deed80(fieldname, self.var_28efd47d);
                }
                playfx(fieldname, #"hash_2da720ea9c396030", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
                break;
            case 5:
                level thread function_8591d2e2(var_b4488d57, self);
                break;
            }
            break;
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xebc62421, Offset: 0x23e0
// Size: 0xb4
function function_abac41c9(var_b4488d57, var_3e5ed63d) {
    if (!(isdefined(var_b4488d57) && isdefined(var_3e5ed63d))) {
        return;
    }
    var_3e5ed63d endon(#"death");
    for (mdl_origin = var_b4488d57.var_47e634f; !isdefined(mdl_origin); mdl_origin = var_b4488d57.var_47e634f) {
        waitframe(1);
    }
    mdl_origin endon(#"death");
    mdl_origin beam::launch(mdl_origin, "tag_origin", var_3e5ed63d, "tag_origin", "beam9_sr_boss_avo_teleport");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xc5ac5bba, Offset: 0x24a0
// Size: 0xd2
function function_51ed2144(var_b4488d57, mdl_orb) {
    if (!(isdefined(var_b4488d57) && isdefined(mdl_orb))) {
        return;
    }
    var_b4488d57 endon(#"hash_6a2f3283df9a5b38");
    mdl_orb endon(#"death");
    for (var_5beedbc3 = var_b4488d57.var_5beedbc3; !isdefined(var_5beedbc3); var_5beedbc3 = var_b4488d57.var_5beedbc3) {
        waitframe(1);
    }
    var_5beedbc3 endon(#"death");
    mdl_orb.var_28efd47d = mdl_orb beam::launch(mdl_orb, "tag_origin", var_5beedbc3, "j_spine4", "beam9_sr_boss_avo_orb_tether");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x17e3499f, Offset: 0x2580
// Size: 0xb4
function function_8591d2e2(var_b4488d57, var_f5c75ddf) {
    if (!(isdefined(var_b4488d57) && isdefined(var_f5c75ddf))) {
        return;
    }
    var_f5c75ddf endon(#"death");
    for (var_5beedbc3 = var_b4488d57.var_5beedbc3; !isdefined(var_5beedbc3); var_5beedbc3 = var_b4488d57.var_5beedbc3) {
        waitframe(1);
    }
    var_5beedbc3 endon(#"death");
    var_f5c75ddf beam::launch(var_5beedbc3, "tag_heart", var_f5c75ddf, "tag_origin", "beam9_sr_boss_avo_bolt_tell");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 7, eflags: 0x2 linked
// Checksum 0x40090fed, Offset: 0x2640
// Size: 0x220
function function_761f03cf(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    var_a258e9ff = struct::get_array(#"hash_6e6880a03eaa44c");
    foreach (var_ffcdfc70 in var_a258e9ff) {
        if (isdefined(var_ffcdfc70.target)) {
            s_target = struct::get(var_ffcdfc70.target);
            if (isdefined(s_target)) {
                if (bwastimejump) {
                    var_ffcdfc70.var_2638052d = util::spawn_model(fieldname, #"tag_origin", var_ffcdfc70.origin, var_ffcdfc70.angles);
                    s_target.var_2638052d = util::spawn_model(fieldname, #"tag_origin", s_target.origin, s_target.angles);
                    var_ffcdfc70.var_2638052d beam::launch(var_ffcdfc70.var_2638052d, "tag_origin", s_target.var_2638052d, "tag_origin", "beam9_sr_boss_avo_spawn");
                    continue;
                }
                if (isdefined(var_ffcdfc70.var_2638052d)) {
                    var_ffcdfc70.var_2638052d delete();
                }
                if (isdefined(s_target.var_2638052d)) {
                    s_target.var_2638052d delete();
                }
            }
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 7, eflags: 0x2 linked
// Checksum 0x541ff0b1, Offset: 0x2868
// Size: 0xcc
function function_44dc8dc9(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (!function_148ccc79(fieldname, #"hash_5e358762e4678906")) {
            function_a837926b(fieldname, #"hash_5e358762e4678906");
        }
        return;
    }
    if (function_148ccc79(fieldname, #"hash_5e358762e4678906")) {
        codestoppostfxbundlelocal(fieldname, #"hash_5e358762e4678906");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x3f613f7c, Offset: 0x2940
// Size: 0x144
function function_7da52bb6(localclientnum, var_a2fbae60) {
    if (!(isdefined(localclientnum) && isdefined(var_a2fbae60))) {
        return;
    }
    var_a2fbae60 endoncallback(&function_9ba86d16, #"death");
    var_a2fbae60.var_6aa3f2c3 = util::spawn_model(localclientnum, #"hash_2a5390b16843700", var_a2fbae60.origin, var_a2fbae60.angles);
    var_a2fbae60 util::delay(0.2, undefined, &hide);
    playsound(localclientnum, #"hash_6c00f83cd6fdb678", var_a2fbae60.origin + (0, 0, 50));
    var_a2fbae60.var_6aa3f2c3 animation::play_siege(#"p9_fxanim_sv_boss_crystals_sanim", undefined, 1, 0);
    var_a2fbae60 show();
    wait(1);
    var_a2fbae60 function_9ba86d16();
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xd5cee24, Offset: 0x2a90
// Size: 0x34
function function_9ba86d16(*str_notify) {
    if (isdefined(self.var_6aa3f2c3)) {
        self.var_6aa3f2c3 delete();
    }
}

