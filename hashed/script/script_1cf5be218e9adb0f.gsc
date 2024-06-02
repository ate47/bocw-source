// Atian COD Tools GSC CW decompiler test
#using script_28e27ee9b45fd02d;
#using scripts\cp_common\snd_utility.csc;
#using script_1cd690a97dfca36e;
#using scripts\cp_common\snd.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\serverfield_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\easing.csc;
#using script_140d5347de8af85c;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace spy_camera;

// Namespace spy_camera/spy_camera
// Params 0, eflags: 0x5
// Checksum 0xbfa6031f, Offset: 0x2c0
// Size: 0x34
function private autoexec __init__system__() {
    system::register("spy_camera", &preinit, undefined, undefined, undefined);
}

// Namespace spy_camera/spy_camera
// Params 0, eflags: 0x6 linked
// Checksum 0x864809f4, Offset: 0x300
// Size: 0x31c
function private preinit() {
    clientfield::register("toplayer", "spy_camera_state", 1, 2, "int", &function_6e0dbd75, 1, 0);
    clientfield::register("toplayer", "binoculars_overlay", 1, 1, "int", &binoculars_overlay, 1, 0);
    clientfield::register("toplayer", "spy_camera_tagging", 1, 1, "int", &function_f31f3835, 1, 0);
    clientfield::register("actor", "spy_camera_remove_highlight", 1, 1, "int", &function_fd29dc97, 1, 0);
    var_1e935eba = array("actor", "scriptmover");
    foreach (str_type in var_1e935eba) {
        clientfield::register(str_type, "spy_camera_object_of_interest", 1, 2, "int", &function_cdfa0362, 1, 0);
    }
    level.var_14094ff8 = spawnstruct();
    level.var_14094ff8.var_e3f5eafc = getweapon("eq_spy_camera");
    level.var_14094ff8.var_42db149f = getweapon("eq_binoculars");
    level.var_14094ff8.var_37cc74fb = [];
    level.var_2a045adf = 0;
    /#
        if (!isdefined(level.var_f234c5a2)) {
            level.var_f234c5a2 = [];
        }
        util::init_dvar("<unknown string>", 212.456 / 2 * tan(32), &function_db698ba5);
        util::init_dvar("<unknown string>", 0, &function_db698ba5);
    #/
}

/#

    // Namespace spy_camera/spy_camera
    // Params 1, eflags: 0x4
    // Checksum 0xd8d0f166, Offset: 0x628
    // Size: 0x88
    function private function_db698ba5(dvar) {
        if (dvar.name == "<unknown string>") {
            level.var_f234c5a2[dvar.name] = dvar.value * 2 * tan(32);
            return;
        }
        level.var_f234c5a2[dvar.name] = dvar.value;
    }

#/

// Namespace spy_camera/spy_camera
// Params 1, eflags: 0x0
// Checksum 0xb2437868, Offset: 0x6b8
// Size: 0x52
function function_6b8f99c7(var_aa5b3320) {
    if (var_aa5b3320 < 14.64) {
        var_aa5b3320 = 14.64;
    } else if (var_aa5b3320 > 200) {
        var_aa5b3320 = 200;
    }
    level.var_14094ff8.var_ecd84717 = var_aa5b3320;
}

// Namespace spy_camera/spy_camera
// Params 1, eflags: 0x0
// Checksum 0xecb92880, Offset: 0x718
// Size: 0x22
function function_1323f7ed(var_f3dc27c4) {
    level.var_14094ff8.var_ae91c8dd = var_f3dc27c4;
}

// Namespace spy_camera/spy_camera
// Params 1, eflags: 0x0
// Checksum 0xb9e0e75a, Offset: 0x748
// Size: 0x22
function function_cd91501d(var_7c7f12fe) {
    level.var_14094ff8.var_88976e48 = var_7c7f12fe;
}

// Namespace spy_camera/spy_camera
// Params 1, eflags: 0x0
// Checksum 0xdbb2fca7, Offset: 0x778
// Size: 0x22
function function_b25b398f(var_c0458ce3) {
    level.var_14094ff8.var_b25b398f = var_c0458ce3;
}

// Namespace spy_camera/spy_camera
// Params 1, eflags: 0x0
// Checksum 0x13d66d96, Offset: 0x7a8
// Size: 0x22
function function_3819321e(var_e2472115) {
    level.var_14094ff8.var_3819321e = var_e2472115;
}

// Namespace spy_camera/spy_camera
// Params 1, eflags: 0x0
// Checksum 0x267178e5, Offset: 0x7d8
// Size: 0x22
function function_1a686ec3(var_c5e6882c) {
    level.var_14094ff8.var_1a686ec3 = var_c5e6882c;
}

// Namespace spy_camera/spy_camera
// Params 1, eflags: 0x2 linked
// Checksum 0x5c18fb34, Offset: 0x808
// Size: 0x22
function function_7e711267(var_b4e32e95) {
    level.var_14094ff8.var_7e711267 = var_b4e32e95;
}

// Namespace spy_camera/spy_camera
// Params 7, eflags: 0x2 linked
// Checksum 0x15c5f56b, Offset: 0x838
// Size: 0x74
function function_f31f3835(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        function_7e711267(1);
        return;
    }
    function_7e711267(0);
}

// Namespace spy_camera/spy_camera
// Params 7, eflags: 0x6 linked
// Checksum 0x33e88c4c, Offset: 0x8b8
// Size: 0xbe
function private function_cdfa0362(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        level.var_14094ff8.var_37cc74fb[self getentitynumber()] = self;
    } else {
        level.var_14094ff8.var_37cc74fb[self getentitynumber()] = undefined;
    }
    if (bwastimejump == 2) {
        self.var_f6ce3aa0 = 1;
        return;
    }
    self.var_f6ce3aa0 = 0;
}

// Namespace spy_camera/spy_camera
// Params 7, eflags: 0x6 linked
// Checksum 0x6198d0e5, Offset: 0x980
// Size: 0x35a
function private function_6e0dbd75(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    var_c88b777b = getcurrentweapon(binitialsnap);
    level.var_14094ff8.var_c5c03b2 = var_c88b777b != level.weaponnone && var_c88b777b === level.var_14094ff8.var_42db149f;
    switch (bwastimejump) {
    case 1:
        if (!level.var_14094ff8.var_c5c03b2) {
            function_ef02d214(binitialsnap, 1);
            function_612f81a4(binitialsnap, 1);
            function_65b4e0a9(binitialsnap, 0);
            if (!level.var_2a045adf) {
                level.var_2a045adf = 1;
                function_5ea2c6e3("cp_spy_camera_ads", 0.2, 1);
            }
        } else {
            level.var_2a045adf = 1;
            function_5ea2c6e3("cp_binoculars_ads", 0.2, 1);
        }
        if (fieldname != 2) {
            self thread function_38401b6f(binitialsnap);
        }
        break;
    case 2:
        if (fieldname == 1) {
            self thread function_c6c2696d(binitialsnap);
            snd::play("gdt_spy_camera_shutter");
        }
        break;
    default:
        self function_c2856ebd(0.1);
        if (!level.var_14094ff8.var_c5c03b2) {
            function_ef02d214(binitialsnap, 0);
            function_612f81a4(binitialsnap, 0);
        }
        if (isdefined(self.var_1523fda0)) {
            snd::stop(self.var_1523fda0);
        }
        if (level.var_2a045adf) {
            level.var_2a045adf = 0;
            if (!level.var_14094ff8.var_c5c03b2) {
                function_ed62c9c2("cp_spy_camera_ads", 0.2);
            } else {
                function_ed62c9c2("cp_binoculars_ads", 0.2);
            }
        }
        self notify(#"camera_zoom", {#pct:0});
        break;
    }
}

// Namespace spy_camera/spy_camera
// Params 7, eflags: 0x6 linked
// Checksum 0x588479a9, Offset: 0xce8
// Size: 0x86
function private function_fd29dc97(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (is_true(bwastimejump) && is_true(self.var_696ee14a)) {
        self notify(#"hash_c2721e96b517b9a");
    }
}

// Namespace spy_camera/spy_camera
// Params 1, eflags: 0x6 linked
// Checksum 0xb01feb41, Offset: 0xd78
// Size: 0xd26
function private function_38401b6f(localclientnum) {
    self endon(#"death", #"disconnected", #"deactivate_camera_lens_overrides");
    var_73024e3b = 0;
    var_8c180cda = 0;
    var_95d1f1bd = 0.33;
    var_357a3717 = 40;
    if (isdefined(level.var_14094ff8.var_ecd84717)) {
        var_357a3717 = level.var_14094ff8.var_ecd84717;
    }
    if (is_true(level.var_14094ff8.var_b25b398f) && isdefined(level.var_14094ff8.var_e78c4b55)) {
        var_357a3717 = level.var_14094ff8.var_e78c4b55;
    }
    self function_49cdf043(var_357a3717, 0);
    var_e99a5258 = isdefined(level.var_14094ff8.var_88976e48) ? level.var_14094ff8.var_88976e48 : 5000;
    var_4f64fb6b = 1;
    var_c5e00469 = (var_4f64fb6b * -1, var_4f64fb6b * -1, var_4f64fb6b * -1);
    var_43ac2595 = (var_4f64fb6b, var_4f64fb6b, var_4f64fb6b);
    var_b4e0311b = 0.2;
    var_cbcfc238 = self function_82f1cbd2();
    if (var_357a3717 > 14.64) {
        var_cbcfc238 = var_357a3717;
        var_73024e3b = pow((var_cbcfc238 - 14.64) / 185.36 / 4, 0.333333);
    }
    var_e17c45e2 = 1;
    self function_d7be9a9f(var_e17c45e2, 0);
    var_58cb5a30 = 0;
    var_b0ea9e6d = 2;
    var_33a13023 = 5;
    var_c846ce25 = 0;
    var_411db665 = 0.8;
    var_1c99d07b = 0.2;
    self function_1816c600(0.1, 0);
    self function_9e574055(1);
    /#
        function_5ac4dc99("<unknown string>", 0);
    #/
    waitframe(1);
    self easing::function_136edb11(undefined, 3.5, var_33a13023, #"hash_2de1684e2167ada4", 1, 0);
    while (true) {
        var_546112ef = self util::function_ca4b4e19(localclientnum, 0)[#"move"];
        var_8c180cda = lerpfloat(var_8c180cda, util::function_b5338ccb(var_546112ef[1], var_b4e0311b), 0.25);
        if (var_8c180cda != 0 && (var_8c180cda < 0 && var_cbcfc238 > 14.64 || var_8c180cda > 0 && var_cbcfc238 < 200)) {
            var_73024e3b += var_8c180cda * var_95d1f1bd * float(self function_8e4cd43b()) / 1000;
            if (var_73024e3b < 0) {
                var_73024e3b = 0;
            } else if (var_73024e3b > 1) {
                var_73024e3b = 1;
            }
            self notify(#"camera_zoom", {#pct:var_73024e3b});
            var_cbcfc238 = easing::ease_cubic(14.64, 200, var_73024e3b, 1, 1);
            self function_49cdf043(var_cbcfc238, 0);
            level.var_14094ff8.var_e78c4b55 = var_cbcfc238;
            if (!var_c846ce25 && abs(var_546112ef[1]) > 0) {
                var_c846ce25 = 1;
                if (!level.var_14094ff8.var_c5c03b2) {
                    self playsound(localclientnum, #"hash_4531b312d7992884");
                } else {
                    self playsound(localclientnum, #"hash_5fe6599633a11f96");
                }
                if (!isdefined(self.var_1523fda0)) {
                    if (!level.var_14094ff8.var_c5c03b2) {
                        self.var_1523fda0 = snd::play("gdt_spy_camera_zoom_lp");
                    } else {
                        self.var_1523fda0 = snd::play("gdt_binoculars_zoom_lp");
                    }
                }
            }
            if (isdefined(self.var_1523fda0)) {
                var_a44cc3b9 = abs(var_8c180cda);
                var_28bd232a = abs(var_8c180cda);
                var_2647836e = snd::function_a0a15145(var_cbcfc238, 15, 30, 0.3, 1);
                var_6c14cbba = snd::function_a0a15145(var_cbcfc238, 150, 200, 1, 0.2);
                var_a44cc3b9 *= min(var_2647836e, var_6c14cbba);
                var_28bd232a *= min(var_2647836e, var_6c14cbba);
                if (var_a44cc3b9 < 0) {
                    var_a44cc3b9 = 0;
                } else if (var_a44cc3b9 > 1) {
                    var_a44cc3b9 = 1;
                }
                if (var_28bd232a < 0.7071) {
                    var_28bd232a = 0.7071;
                } else if (var_28bd232a > 1.4142) {
                    var_28bd232a = 1.4142;
                }
                snd::function_db78159d(self.var_1523fda0, var_a44cc3b9);
                snd::function_964c3a03(self.var_1523fda0, var_28bd232a);
            }
        } else if (var_c846ce25) {
            var_c846ce25 = 0;
            if (!level.var_14094ff8.var_c5c03b2) {
                self playsound(localclientnum, #"hash_3876d444e5dbbbc0");
            } else {
                self playsound(localclientnum, #"hash_526e69d7a19bdbe");
            }
            if (isdefined(self.var_1523fda0)) {
                snd::stop(self.var_1523fda0);
            }
        }
        if (var_c846ce25 && abs(var_546112ef[1]) == 0) {
            var_c846ce25 = 0;
            if (!level.var_14094ff8.var_c5c03b2) {
                self playsound(localclientnum, #"hash_3876d444e5dbbbc0");
            } else {
                self playsound(localclientnum, #"hash_526e69d7a19bdbe");
            }
            if (isdefined(self.var_8bbff4f8)) {
                self stoploopsound(self.var_8bbff4f8);
                self.var_8bbff4f8 = undefined;
            }
        }
        eye = self geteye();
        fwd = anglestoforward(self getplayerangles());
        var_cdcfe8fe = isdefined(level.var_14094ff8.var_ae91c8dd) ? level.var_14094ff8.var_ae91c8dd : 72;
        trace = physicstrace(eye + fwd * var_cdcfe8fe, eye + fwd * var_e99a5258, var_c5e00469, var_43ac2595, self, 1, 16 | 65536 | 8192);
        var_de79cd4c = distance(eye, trace[#"position"] + fwd * var_43ac2595[0]);
        if (var_58cb5a30 < self getclienttime() && abs(var_de79cd4c - var_e17c45e2) < 100) {
            var_e17c45e2 = lerpfloat(var_e17c45e2, var_de79cd4c, 0.5);
            self function_d7be9a9f(var_e17c45e2, 0);
        } else if (var_58cb5a30 < self getclienttime() || abs(var_de79cd4c - var_e17c45e2) >= 100) {
            var_36df6119 = isdefined(var_33a13023) ? var_33a13023 : var_b0ea9e6d;
            var_58cb5a30 = self getclienttime() + int(var_36df6119 * 1000);
            var_e17c45e2 = var_de79cd4c;
            self easing::function_b6f1c993(undefined, var_e17c45e2, var_36df6119, #"back", 0, 1, undefined, var_cdcfe8fe);
            var_33a13023 = undefined;
        }
        if (!level.var_14094ff8.var_c5c03b2) {
            if (abs(var_de79cd4c - self function_78bf7752()) < 50) {
                function_65b4e0a9(localclientnum, 2);
            } else {
                function_65b4e0a9(localclientnum, 1);
            }
        }
        if (is_true(level.var_14094ff8.var_7e711267)) {
            function_a259ab2b(localclientnum);
        }
        /#
            if (getdvarint(#"hash_43c519a373d839ab", 0)) {
                box(trace[#"position"] + fwd * var_43ac2595[0], var_c5e00469, var_43ac2595, self getplayerangles()[1], (1, 0, 0), 0, 1);
            }
        #/
        waitframe(1);
    }
}

// Namespace spy_camera/spy_camera
// Params 1, eflags: 0x6 linked
// Checksum 0x74000e25, Offset: 0x1aa8
// Size: 0x7e
function private function_b0af17c8(fov) {
    /#
        return level.var_f234c5a2[#"hash_16ec799e74db6b19"] / 2 * tan(fov / 2);
    #/
    return 212.456 / 2 * tan(fov / 2);
}

// Namespace spy_camera/spy_camera
// Params 8, eflags: 0x6 linked
// Checksum 0x524d1d00, Offset: 0x1b30
// Size: 0x3b2
function private function_48d47618(localclientnum, ent, eye_pos, var_753686d6, var_de79cd4c, var_1e8c12, var_1456edd4, var_ff9d26ff) {
    target_pos = ent.origin;
    if (ent getentitytype() == 15) {
        head_pos = ent gettagorigin("j_head");
        if (isdefined(head_pos)) {
            target_pos = head_pos;
        }
    }
    var_cc746cfb = 0;
    if (!is_true(level.var_14094ff8.var_3819321e)) {
        var_3300333c = distance(target_pos, eye_pos);
        /#
            if (level.var_f234c5a2[#"hash_3e3f17ce43aad14c"] != 0) {
                print3d(target_pos + (0, 0, 12), "<unknown string>" + int(var_3300333c) + "<unknown string>" + int(var_753686d6), (1, 1, 1), undefined, 0.25, isdefined(var_ff9d26ff) ? undefined : 500, 1);
            }
        #/
        if (var_3300333c > var_753686d6) {
            if (is_true(ent.var_f6ce3aa0)) {
                var_cc746cfb = 1;
            } else {
                return false;
            }
        }
        var_dbe5c357 = var_3300333c - var_de79cd4c;
        if (var_dbe5c357 < 0 && var_dbe5c357 * -1 > var_1e8c12) {
            return false;
        }
        if (var_dbe5c357 > 0 && var_dbe5c357 > var_1456edd4) {
            return false;
        }
    }
    screen_pos = self function_a6a764a9(target_pos, 1);
    if (isdefined(screen_pos) && abs(screen_pos[0]) < 0.7 && abs(screen_pos[1]) < 0.7) {
        if (is_true(level.var_14094ff8.var_1a686ec3) || bullettracepassed(eye_pos, target_pos, 1, ent, undefined, 0, 1)) {
            if (var_cc746cfb) {
                function_bcae220e(localclientnum, ent, 0, 2);
                return false;
            } else if (isdefined(var_ff9d26ff)) {
                if (!isdefined(ent.var_ff9d26ff)) {
                    ent.var_ff9d26ff = 0;
                }
                ent.var_ff9d26ff += float(self function_8e4cd43b()) / 1000;
                if (ent.var_ff9d26ff < var_ff9d26ff) {
                    return false;
                }
            }
            return true;
        }
    }
    return false;
}

// Namespace spy_camera/spy_camera
// Params 1, eflags: 0x6 linked
// Checksum 0x614c1035, Offset: 0x1ef0
// Size: 0x2a8
function private function_a259ab2b(localclientnum) {
    targets = getentarraybytype(localclientnum, 15);
    function_1eaaceab(targets);
    eye_pos = self geteye();
    var_de79cd4c = self function_78bf7752();
    fov = self function_9169401e();
    var_753686d6 = function_b0af17c8(fov);
    var_1e8c12 = easing::ease_power(100, 500, math::clamp(fov / 64, 0, 1), 0, 1, 1.75);
    var_1456edd4 = easing::ease_power(100, 500, math::clamp(fov / 64, 0, 1), 1, 0, 1.75);
    foreach (target in targets) {
        if (!isdefined(target) || is_true(target.var_696ee14a) || is_true(target.var_7b755cc0) || target.team === #"allies") {
            continue;
        }
        if (self function_48d47618(localclientnum, target, eye_pos, var_753686d6, var_de79cd4c, var_1e8c12, var_1456edd4, 1.5)) {
            target thread function_c3f05233();
        }
    }
}

// Namespace spy_camera/spy_camera
// Params 0, eflags: 0x6 linked
// Checksum 0x9af7e699, Offset: 0x21a0
// Size: 0xb6
function private function_c3f05233() {
    rob = #"hash_1dced6114b72a678";
    if (self.team !== #"axis") {
        rob = #"hash_44adc567f9f60d61";
    }
    self.var_696ee14a = 1;
    self playrenderoverridebundle(rob);
    self waittill(#"death", #"hash_c2721e96b517b9a");
    self stoprenderoverridebundle(rob);
    self.var_696ee14a = 0;
}

// Namespace spy_camera/spy_camera
// Params 1, eflags: 0x6 linked
// Checksum 0x9007a3cf, Offset: 0x2260
// Size: 0x30c
function private function_c6c2696d(localclientnum) {
    self thread postfx::playpostfxbundle("pstfx_camera_snapshot");
    function_36e4ebd4(localclientnum, "reload_small");
    var_be065286 = getentarraybytype(localclientnum, 15);
    function_1eaaceab(var_be065286);
    arrayremovevalue(level.var_14094ff8.var_37cc74fb, undefined, 1);
    var_be065286 = arraycombine(var_be065286, level.var_14094ff8.var_37cc74fb, 0, 0);
    eye_pos = self geteye();
    var_de79cd4c = self function_78bf7752();
    fov = self function_9169401e();
    var_753686d6 = function_b0af17c8(fov);
    var_1e8c12 = easing::ease_power(100, 500, math::clamp(fov / 64, 0, 1), 0, 1, 1.75);
    var_1456edd4 = easing::ease_power(100, 500, math::clamp(fov / 64, 0, 1), 1, 0, 1.75);
    foreach (var_487cc792 in var_be065286) {
        if (!isdefined(var_487cc792)) {
            continue;
        }
        if (is_true(var_487cc792.var_1d5b38b1)) {
            continue;
        }
        if (self function_48d47618(localclientnum, var_487cc792, eye_pos, var_753686d6, var_de79cd4c, var_1e8c12, var_1456edd4)) {
            var_487cc792.var_1d5b38b1 = 1;
            function_bcae220e(localclientnum, var_487cc792, 0, 1);
            var_487cc792 notify(#"hash_4e1642d862c17b5b");
        }
    }
}

// Namespace spy_camera/spy_camera
// Params 7, eflags: 0x6 linked
// Checksum 0xdaebdddb, Offset: 0x2578
// Size: 0x134
function private binoculars_overlay(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    var_baa65467 = function_1df4c3b0(fieldname, #"hash_7b72ad35b5202ebd");
    var_b3a126ea = getuimodel(var_baa65467, "hideNoReticleDot");
    if (isdefined(var_b3a126ea)) {
        setuimodelvalue(var_b3a126ea, bwastimejump);
    }
    if (bwastimejump) {
        if (self postfx::function_556665f2("pstfx_binoculars_cp")) {
            self postfx::stoppostfxbundle("pstfx_binoculars_cp");
        }
        self postfx::playpostfxbundle("pstfx_binoculars_cp");
        return;
    }
    self postfx::stoppostfxbundle("pstfx_binoculars_cp");
}

// Namespace spy_camera/spy_camera
// Params 1, eflags: 0x6 linked
// Checksum 0x20b9e426, Offset: 0x26b8
// Size: 0x2a
function private function_80847fa6(localclientnum) {
    return function_1df4c3b0(localclientnum, #"spy_camera");
}

// Namespace spy_camera/spy_camera
// Params 2, eflags: 0x6 linked
// Checksum 0x11ee5d1b, Offset: 0x26f0
// Size: 0xac
function private function_ef02d214(localclientnum, active) {
    rootmodel = function_80847fa6(localclientnum);
    var_9d9ad8f1 = getuimodel(rootmodel, "active");
    if (isdefined(var_9d9ad8f1)) {
        setuimodelvalue(var_9d9ad8f1, active);
        return;
    }
    /#
        iprintlnbold("<unknown string>" + rootmodel + "<unknown string>");
    #/
}

// Namespace spy_camera/spy_camera
// Params 2, eflags: 0x6 linked
// Checksum 0xb388fe2b, Offset: 0x27a8
// Size: 0x84
function private function_612f81a4(localclientnum, hide) {
    var_baa65467 = function_1df4c3b0(localclientnum, #"hash_7b72ad35b5202ebd");
    var_b3a126ea = getuimodel(var_baa65467, "hideNoReticleDot");
    if (isdefined(var_b3a126ea)) {
        setuimodelvalue(var_b3a126ea, hide);
    }
}

// Namespace spy_camera/spy_camera
// Params 2, eflags: 0x6 linked
// Checksum 0xc6b7300d, Offset: 0x2838
// Size: 0xac
function private function_65b4e0a9(localclientnum, state) {
    rootmodel = function_80847fa6(localclientnum);
    var_9d9ad8f1 = getuimodel(rootmodel, "focusState");
    if (isdefined(var_9d9ad8f1)) {
        setuimodelvalue(var_9d9ad8f1, state);
        return;
    }
    /#
        iprintlnbold("<unknown string>" + rootmodel + "<unknown string>");
    #/
}

