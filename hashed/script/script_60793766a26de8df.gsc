// Atian COD Tools GSC CW decompiler test
#using script_5dc2afb89fe97cd0;
#using scripts\core_common\footsteps_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\ai\systems\fx_character.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace namespace_88795f45;

// Namespace namespace_88795f45/namespace_88795f45
// Params 0, eflags: 0x5
// Checksum 0x7ce67f29, Offset: 0x428
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_338a74f5c94ba66a", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 0, eflags: 0x6 linked
// Checksum 0x29c8378b, Offset: 0x470
// Size: 0x25c
function private preinit() {
    clientfield::register("actor", "steiner_radiation_bomb_prepare_fire_clientfield", 1, 1, "int", &function_bc28111c, 0, 0);
    clientfield::register("scriptmover", "radiation_bomb_play_landed_fx", 1, 2, "int", &function_8a3fc4ac, 0, 0);
    clientfield::register("missile", "radiation_bomb_trail_fx_clientfield", 1, 1, "int", &function_fc88234b, 0, 0);
    clientfield::register("actor", "steiner_split_combine_fx_clientfield", 1, 1, "int", &function_66027924, 0, 0);
    clientfield::register("actor", "steiner_perform_split_clientfield", 1, 1, "counter", &function_5bde700f, 0, 0);
    clientfield::register("actor", "steiner_cleanup_teleport_clientfield", 4000, 1, "counter", &function_99c14949, 0, 0);
    function_cae618b4("spawner_zm_steiner");
    function_cae618b4("spawner_zm_steiner_split_radiation_blast");
    function_cae618b4("spawner_zm_steiner_split_radiation_bomb");
    footsteps::registeraitypefootstepcb(#"hash_7c0d83ac1e845ac2", &function_5a53905d);
    ai::add_archetype_spawn_function(#"hash_7c0d83ac1e845ac2", &function_7ec99c76);
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 1, eflags: 0x6 linked
// Checksum 0x5adbd881, Offset: 0x6d8
// Size: 0x19c
function private function_7ec99c76(localclientnum) {
    if (self.var_9fde8624 === #"hash_5653bbc44a034094" || self.var_9fde8624 === #"hash_12fa854f3a7721b9") {
        util::playfxontag(localclientnum, "zm_ai/fx9_steiner_eyes_glow_sm", self, "J_EyeBall_RI");
        self thread function_59ee055f(localclientnum);
    } else if (self.var_9fde8624 === #"hash_70162f4bc795092" || self.var_9fde8624 === #"hash_3498fb1fbfcd0cf") {
        util::playfxontag(localclientnum, "zm_ai/fx9_steiner_eyes_glow_sm", self, "J_EyeBall_LE");
        self thread function_59ee055f(localclientnum);
    } else if (self.team === #"allies") {
    } else {
        self.eyefx = util::playfxontag(localclientnum, "zm_ai/fx9_steiner_eyes_glow", self, "J_EyeBall_LE");
        self thread function_8d607c5a(localclientnum);
    }
    if (isdefined(self.fxdef)) {
        fxclientutils::playfxbundle(localclientnum, self, self.fxdef);
    }
    self thread function_14dd171f(localclientnum);
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 1, eflags: 0x2 linked
// Checksum 0x94bf4ab3, Offset: 0x880
// Size: 0xd4
function function_8d607c5a(localclientnum) {
    self playsound(localclientnum, #"hash_13985582064d5e89");
    if (!is_true(level.var_12da60e6)) {
        self playsound(localclientnum, #"hash_152bc9d7c6ad1991");
    }
    self.var_5bea7e99 = self playloopsound(#"hash_2353ca5802f38a90", undefined, (0, 0, 50));
    self thread function_c3ae0dcf();
    self thread function_ce1bd3f2(localclientnum);
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 1, eflags: 0x2 linked
// Checksum 0x134e4635, Offset: 0x960
// Size: 0x6c
function function_59ee055f(localclientnum) {
    self.var_5bea7e99 = self playloopsound(#"hash_2cf37d960900db7a", undefined, (0, 0, 50));
    self thread function_c3ae0dcf();
    self thread function_b53ee6c9(localclientnum);
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 0, eflags: 0x2 linked
// Checksum 0x75b62a90, Offset: 0x9d8
// Size: 0x76
function function_c3ae0dcf() {
    self endon(#"death", #"entitydeleted");
    while (true) {
        s_result = self waittill(#"sndambientbreath");
        self.var_ce0f9600 = int(s_result.active);
    }
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 1, eflags: 0x2 linked
// Checksum 0x2ee63393, Offset: 0xa58
// Size: 0x1e8
function function_ce1bd3f2(localclientnum) {
    if (!isdefined(self.var_ce0f9600)) {
        self.var_ce0f9600 = 1;
    }
    self endon(#"death", #"entitydeleted");
    var_b240b48 = "inhale";
    suffix = "";
    var_4f50b172 = 0.7;
    var_5fbfc988 = 0.8;
    var_7f07b218 = 1.2;
    var_4dfa7e5a = 1.3;
    n_wait_min = var_4f50b172;
    n_wait_max = var_5fbfc988;
    var_d49193ec = #"hash_43accb909782c33";
    while (true) {
        if (self.var_ce0f9600 >= 1) {
            suffix = "";
            n_wait_min = var_4f50b172;
            n_wait_max = var_5fbfc988;
            if (self.var_ce0f9600 >= 2) {
                suffix = "_slow";
                n_wait_min = var_7f07b218;
                n_wait_max = var_4dfa7e5a;
            }
            self playsound(localclientnum, var_d49193ec + var_b240b48 + suffix, self.origin + (0, 0, 75));
            wait(randomfloatrange(n_wait_min, n_wait_max));
            if (var_b240b48 === "inhale") {
                var_b240b48 = "exhale";
            } else {
                var_b240b48 = "inhale";
            }
            continue;
        }
        wait(0.1);
    }
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 1, eflags: 0x2 linked
// Checksum 0x91556452, Offset: 0xc48
// Size: 0x220
function function_b53ee6c9(localclientnum) {
    if (!isdefined(self.var_ce0f9600)) {
        self.var_ce0f9600 = 1;
    }
    self endon(#"death", #"entitydeleted");
    var_b240b48 = "inhale";
    suffix = "";
    var_4f50b172 = 0.75;
    var_5fbfc988 = 0.85;
    var_7f07b218 = 0.75;
    var_4dfa7e5a = 0.85;
    n_wait_min = var_4f50b172;
    n_wait_max = var_5fbfc988;
    var_d49193ec = #"hash_24b7a2e5066beff3";
    while (true) {
        if (self.var_ce0f9600 >= 1) {
            suffix = "";
            n_wait_min = var_4f50b172;
            n_wait_max = var_5fbfc988;
            if (self.var_ce0f9600 >= 2) {
                suffix = "_slow";
                n_wait_min = var_7f07b218;
                n_wait_max = var_4dfa7e5a;
            }
            self playsound(localclientnum, var_d49193ec + var_b240b48 + suffix, self.origin + (0, 0, 75));
            if (var_b240b48 === "inhale") {
                wait(randomfloatrange(0.45, 0.5));
            } else {
                wait(randomfloatrange(n_wait_min, n_wait_max));
            }
            if (var_b240b48 === "inhale") {
                var_b240b48 = "exhale";
            } else {
                var_b240b48 = "inhale";
            }
            continue;
        }
        wait(0.1);
    }
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 7, eflags: 0x0
// Checksum 0x4327ac80, Offset: 0xe70
// Size: 0x74
function function_43c3e59b(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump && self util::function_50ed1561(fieldname)) {
        self thread function_90825d39(fieldname);
    }
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 1, eflags: 0x6 linked
// Checksum 0x3af24cc2, Offset: 0xef0
// Size: 0xe6
function private function_90825d39(*localclientnum) {
    self notify(#"hash_508cee63b27b3dfe");
    self endon(#"death", #"disconnect", #"hash_508cee63b27b3dfe");
    var_9e38be0 = 1;
    self endoncallback(&function_8e5ed66f, #"death", #"hash_54e6312d7378b65e");
    if (!self postfx::function_556665f2("pstfx_damage_over_time")) {
        self postfx::playpostfxbundle("pstfx_damage_over_time");
    }
    wait(var_9e38be0);
    self notify(#"hash_54e6312d7378b65e");
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 1, eflags: 0x6 linked
// Checksum 0xa946febc, Offset: 0xfe0
// Size: 0x4c
function private function_8e5ed66f(*notifyhash) {
    if (self postfx::function_556665f2("pstfx_damage_over_time")) {
        self postfx::stoppostfxbundle("pstfx_damage_over_time");
    }
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 7, eflags: 0x2 linked
// Checksum 0x86acd29b, Offset: 0x1038
// Size: 0x3c
function function_bc28111c(*localclientnum, *oldvalue, *newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 7, eflags: 0x6 linked
// Checksum 0x54d42094, Offset: 0x1080
// Size: 0x8c
function private function_523961e2(startpos, normal, var_4997e17c, fxindex, fxcount, defaultdistance, rotation) {
    currentangle = 360 / fxcount * fxindex;
    var_7ee25402 = rotatepointaroundaxis(var_4997e17c * defaultdistance, normal, currentangle + rotation);
    return startpos + var_7ee25402;
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 2, eflags: 0x6 linked
// Checksum 0xeadeabd7, Offset: 0x1118
// Size: 0x5ca
function private function_371c2ab4(startpos, normal) {
    normal = vectornormalize(normal);
    if (normal[2] < 0.3) {
        normal = (0, 0, 1);
    }
    locations = [];
    rotation = randomint(360);
    var_4997e17c = perpendicularvector(normal);
    for (count = 0; count < 12; count++) {
        locations[count] = {#position:(0, 0, 0), #normal:(0, 0, 1), #fx:"zm_ai/fx9_steiner_rad_bomb_spot_lg_loop"};
        point = function_523961e2(startpos, normal, var_4997e17c, count, 12, 120, rotation);
        /#
            if (getdvarint(#"hash_65abc910bc611782", 0)) {
                line(startpos + normal * 20, point, (0.1, 0.1, 0.1), 1, 1, 300);
            }
        #/
        trace = bullettrace(startpos + normal * 20, point, 0, undefined);
        traceposition = trace[#"position"];
        hitsomething = 0;
        if (trace[#"fraction"] < 0.7) {
            locations[count].position = traceposition;
            locations[count].normal = trace[#"normal"];
            locations[count].fx = trace[#"fraction"] > 0.2 ? "zm_ai/fx9_steiner_rad_bomb_spot_md_loop" : "zm_ai/fx9_steiner_rad_bomb_spot_lg_loop";
            hitsomething = 1;
        }
        if (!hitsomething) {
            tracedown = bullettrace(traceposition, traceposition - normal * 100, 0, undefined);
            if (tracedown[#"fraction"] != 1) {
                locations[count].position = tracedown[#"position"];
                locations[count].normal = tracedown[#"normal"];
                locations[count].fx = "zm_ai/fx9_steiner_rad_bomb_spot_sm_loop";
            }
        }
        randangle = randomint(360);
        var_c4b09917 = randomfloatrange(-25, 25);
        var_7ee25402 = rotatepointaroundaxis(var_4997e17c, normal, randangle);
        var_995eb37a = int(min(2 * trace[#"fraction"] + 1, 2));
        for (var_ecef2fde = 0; var_ecef2fde < var_995eb37a && count % 2 == 0; var_ecef2fde++) {
            fraction = (var_ecef2fde + 1) / (var_995eb37a + 1);
            offsetpoint = startpos + (traceposition - startpos) * fraction + var_7ee25402 * var_c4b09917;
            var_9417df90 = bullettrace(offsetpoint, offsetpoint - normal * 90, 0, undefined);
            if (var_9417df90[#"fraction"] != 1) {
                locindex = count + 12 * (var_ecef2fde + 1);
                locations[locindex] = {#position:var_9417df90[#"position"], #normal:var_9417df90[#"normal"], #fx:"zm_ai/fx9_steiner_rad_bomb_spot_lg_loop"};
            }
        }
    }
    return arraycombine([{#position:startpos, #normal:normal, #fx:"zm_ai/fx9_steiner_rad_bomb_rock_exp"}, {#position:startpos, #normal:normal, #fx:"zm_ai/fx9_steiner_rad_bomb_circle_128"}], locations);
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 7, eflags: 0x2 linked
// Checksum 0xb063a005, Offset: 0x16f0
// Size: 0x424
function function_8a3fc4ac(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self)) {
        return;
    }
    if (isdefined(self.var_c84b9ae1)) {
        foreach (fx in self.var_c84b9ae1) {
            stopfx(fieldname, fx);
        }
        self.var_c84b9ae1 = undefined;
    }
    if (isdefined(self.var_50ad299b)) {
        self stoploopsound(self.var_50ad299b);
        self.var_50ad299b = undefined;
    }
    if (bwastimejump == 1) {
        if (!isdefined(self.var_50ad299b)) {
            self.var_50ad299b = self playloopsound(#"hash_274eabfed204a7fc", undefined, (0, 0, 25));
        }
        locations = function_371c2ab4(self.origin, self.angles);
        self.var_c84b9ae1 = [];
        foreach (loc in locations) {
            if (!isdefined(loc)) {
                continue;
            }
            /#
                if (getdvarint(#"hash_65abc910bc611782", 0)) {
                    sphere(loc.position, 5, (1, 0, 0), 1, 1, 60, 300);
                }
            #/
            if (lengthsquared(loc.position) < 0.001 || lengthsquared(loc.normal) < 0.99) {
                continue;
            }
            forward = (1, 0, 0);
            if (abs(vectordot(forward, loc.normal)) > 0.999) {
                forward = (0, 0, 1);
            }
            self.var_c84b9ae1[self.var_c84b9ae1.size] = playfx(fieldname, loc.fx, loc.position, forward, loc.normal);
        }
        return;
    }
    if (bwastimejump == 2) {
        return;
    }
    normal = vectornormalize(self.angles);
    forward = (1, 0, 0);
    if (abs(vectordot(forward, normal)) > 0.999) {
        forward = (0, 0, 1);
    }
    if (normal !== (0, 0, 0)) {
        playfx(fieldname, #"hash_f384e23fbf73002", self.origin, forward, normal);
    }
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 7, eflags: 0x2 linked
// Checksum 0xa49d7d67, Offset: 0x1b20
// Size: 0xae
function function_fc88234b(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.trailfx = util::playfxontag(fieldname, #"zm_ai/fx9_steiner_rad_bomb_ai", self, "tag_origin");
        return;
    }
    if (isdefined(self.trailfx)) {
        level thread function_e5799b09(fieldname, self.trailfx);
        self.trailfx = undefined;
    }
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 2, eflags: 0x6 linked
// Checksum 0xb28f42db, Offset: 0x1bd8
// Size: 0x34
function private function_e5799b09(localclientnum, fx) {
    waitframe(1);
    stopfx(localclientnum, fx);
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 5, eflags: 0x2 linked
// Checksum 0x19dbef1c, Offset: 0x1c18
// Size: 0x1b4
function function_5a53905d(*localclientnum, *pos, *surface, *notetrack, *bone) {
    if (self.var_9fde8624 === #"hash_5653bbc44a034094" || self.var_9fde8624 === #"hash_70162f4bc795092" || self.var_9fde8624 === #"hash_12fa854f3a7721b9" || self.var_9fde8624 === #"hash_3498fb1fbfcd0cf") {
        return;
    }
    /#
        if (isdefined(level.var_53094f02)) {
            return;
        }
    #/
    a_players = getlocalplayers();
    for (i = 0; i < a_players.size; i++) {
        if (abs(self.origin[2] - a_players[i].origin[2]) < 128) {
            var_ed2e93e5 = a_players[i] getlocalclientnumber();
            if (isdefined(var_ed2e93e5)) {
                earthquake(var_ed2e93e5, 0.22, 0.1, self.origin, 1000);
                playrumbleonposition(var_ed2e93e5, "steiner_footsteps", self.origin);
            }
        }
    }
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 7, eflags: 0x2 linked
// Checksum 0xe38a6765, Offset: 0x1dd8
// Size: 0x74
function function_66027924(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump && isdefined(self)) {
        util::playfxontag(fieldname, "zombie/fx8_red_bathhouse_mirror_glare_loop", self, "j_spineupper");
    }
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 1, eflags: 0x6 linked
// Checksum 0xd3b83491, Offset: 0x1e58
// Size: 0xc
function private function_14dd171f(*localclientnum) {
    
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 7, eflags: 0x2 linked
// Checksum 0x232cd1c4, Offset: 0x1e70
// Size: 0x86
function function_5bde700f(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump && isdefined(self)) {
        if (isdefined(self.eyefx)) {
            killfx(fieldname, self.eyefx);
            self.eyefx = undefined;
        }
    }
}

// Namespace namespace_88795f45/namespace_88795f45
// Params 7, eflags: 0x2 linked
// Checksum 0xdef077ed, Offset: 0x1f00
// Size: 0x6c
function function_99c14949(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (isdefined(self)) {
        util::playfxontag(bwasdemojump, #"hash_784a8bc7b9b17876", self, "j_spineupper");
    }
}

