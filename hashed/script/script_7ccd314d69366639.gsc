// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace objective_retrieval;

// Namespace objective_retrieval/level_init
// Params 1, eflags: 0x20
// Checksum 0x4234be52, Offset: 0x2b8
// Size: 0x1dc
function event_handler[level_init] main(*eventstruct) {
    clientfield::register("toplayer", "" + #"hash_502dbbefce1f656c", 1, 1, "int", &function_d3af9ddb, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_25f023cad32eccf0", 1, 1, "counter", &function_704685e1, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_29bff1aafecc8591", 1, 1, "int", &function_6b90cf3a, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_7e6957dfc36e2214", 1, 1, "int", &function_1eb1d4d6, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_5bc7fe725b36bd67", 1, 1, "int", &function_5ce76614, 0, 0);
    util::waitforclient(0);
}

// Namespace objective_retrieval/objective_retrieval
// Params 7, eflags: 0x2 linked
// Checksum 0x3144da86, Offset: 0x4a0
// Size: 0x246
function function_5ce76614(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_3e09a106 = util::playfxontag(fieldname, "sr/fx9_obj_retrieval_truck_light_spin", self, "tag_fx_launch_beacon_light_lb");
        self.var_c454a3d = util::playfxontag(fieldname, "sr/fx9_obj_retrieval_truck_light_spin", self, "tag_fx_launch_beacon_light_lf");
        self.var_faaadabb = util::playfxontag(fieldname, "sr/fx9_obj_retrieval_truck_light_spin", self, "tag_fx_launch_beacon_light_rb");
        self.var_c7ae258d = util::playfxontag(fieldname, "sr/fx9_obj_retrieval_truck_light_spin", self, "tag_fx_launch_beacon_light_rf");
        wait(4);
        self.var_67819d90 = util::playfxontag(fieldname, "sr/fx9_obj_retrieval_rocket_thruster_cam_shack", self, "tag_rocket_animate");
        return;
    }
    if (isdefined(self.var_67819d90)) {
        stopfx(fieldname, self.var_67819d90);
        self.var_67819d90 = undefined;
    }
    wait(15);
    if (isdefined(self.var_3e09a106)) {
        stopfx(fieldname, self.var_3e09a106);
        self.var_3e09a106 = undefined;
    }
    if (isdefined(self.var_c454a3d)) {
        stopfx(fieldname, self.var_c454a3d);
        self.var_c454a3d = undefined;
    }
    if (isdefined(self.var_faaadabb)) {
        stopfx(fieldname, self.var_faaadabb);
        self.var_faaadabb = undefined;
    }
    if (isdefined(self.var_c7ae258d)) {
        stopfx(fieldname, self.var_c7ae258d);
        self.var_c7ae258d = undefined;
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 7, eflags: 0x2 linked
// Checksum 0x2c2a6154, Offset: 0x6f0
// Size: 0x11e
function function_6b90cf3a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.n_fx_id = util::playfxontag(fieldname, "sr/fx9_canister_pod_aether", self, "tag_animate");
        self.var_b3673abf = self playloopsound(#"hash_724ba66a7599d72d", undefined, (0, 0, 15));
        return;
    }
    if (isdefined(self.n_fx_id)) {
        stopfx(fieldname, self.n_fx_id);
        self.n_fx_id = undefined;
    }
    if (isdefined(self.var_b3673abf)) {
        self stoploopsound(self.var_b3673abf);
        self.var_b3673abf = undefined;
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 7, eflags: 0x2 linked
// Checksum 0x95726a97, Offset: 0x818
// Size: 0x166
function function_1eb1d4d6(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump === 1) {
        if (isdefined(self.n_fx_id)) {
            killfx(fieldname, self.n_fx_id);
            self.n_fx_id = undefined;
        }
        self.n_fx_id = util::playfxontag(fieldname, "sr/fx9_obj_retrieval_container_glow", self, "p9_sur_console_control_01_canister_handle_jnt");
        if (!isdefined(self.var_b3673abf)) {
            self.var_b3673abf = self playloopsound(#"hash_3432d05cab6568b1", undefined, (0, 0, 10));
        }
        return;
    }
    if (isdefined(self.n_fx_id)) {
        killfx(fieldname, self.n_fx_id);
        self.n_fx_id = undefined;
    }
    if (isdefined(self.var_b3673abf)) {
        self stoploopsound(self.var_b3673abf);
        self.var_b3673abf = undefined;
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 7, eflags: 0x2 linked
// Checksum 0x32df1eda, Offset: 0x988
// Size: 0xf4
function function_704685e1(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (self.model === #"hash_7f311e8d38b7d936") {
        str_fx = #"hash_138a5318ce27c2ca";
    } else {
        str_fx = #"zombie/fx9_player_shockwave_retrieval";
    }
    playfx(bwastimejump, str_fx, self.origin, (180, 0, 0));
    self playsound(bwastimejump, #"hash_5db462e1df5084e7");
    self playrumbleonentity(bwastimejump, "damage_heavy");
}

// Namespace objective_retrieval/objective_retrieval
// Params 7, eflags: 0x2 linked
// Checksum 0xc62f95ca, Offset: 0xa88
// Size: 0x386
function function_d3af9ddb(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    if (bwastimejump == 1) {
        if (function_65b9eb0f(fieldname)) {
            return;
        }
        if (self isplayer()) {
            self.var_726a59ef = playfxoncamera(fieldname, "sr/fx9_camera_canister_in_hand", (0, 0, 0), (1, 0, 0), (0, 0, 1));
            self postfx::playpostfxbundle(#"hash_75fe7a4dbc759253");
            self.var_51dd9721 = #"hash_75fe7a4dbc759253";
            self function_116b95e5(#"hash_75fe7a4dbc759253", #"inner mask", 0.3);
            self function_116b95e5(#"hash_75fe7a4dbc759253", #"outer mask", 0.8);
            if (!isdefined(self.var_fbd5f7c8)) {
                self.var_fbd5f7c8 = util::playfxontag(fieldname, "sr/fx9_obj_retrieval_container_gas_trail", self, "tag_stowed_back");
            }
            if (!isdefined(self.var_e53a5eb7)) {
                self playsound(fieldname, #"hash_22a6864697c92c12");
                self.var_e53a5eb7 = self playloopsound(#"hash_6d68538eca6c8226");
            }
        }
        return;
    }
    if (function_65b9eb0f(fieldname)) {
        return;
    }
    if (self isplayer()) {
        if (isdefined(self.var_726a59ef)) {
            stopfx(fieldname, self.var_726a59ef);
            self.var_726a59ef = undefined;
        }
        if (isdefined(self.var_fbd5f7c8)) {
            stopfx(fieldname, self.var_fbd5f7c8);
            self.var_fbd5f7c8 = undefined;
        }
        if (isdefined(self.var_e53a5eb7)) {
            self playsound(fieldname, #"hash_211ebca22128a977");
            self stoploopsound(self.var_e53a5eb7);
            self.var_e53a5eb7 = undefined;
        }
        self notify(#"hash_639f680ae2bb2ff");
        wait(0.5);
        if (isdefined(self)) {
            self function_116b95e5(#"hash_75fe7a4dbc759253", #"blur", 0);
            self postfx::exitpostfxbundle(#"hash_75fe7a4dbc759253");
            self.var_51dd9721 = undefined;
        }
    }
}

// Namespace objective_retrieval/objective_retrieval
// Params 0, eflags: 0x0
// Checksum 0x740f4cab, Offset: 0xe18
// Size: 0x114
function function_d233fb1f() {
    self endon(#"death", #"disconnect", #"hash_639f680ae2bb2ff");
    var_9b8a1091 = 0.01;
    while (true) {
        self function_116b95e5(#"hash_75fe7a4dbc759253", #"blur", var_9b8a1091);
        wait(0.08);
        var_9b8a1091 += 0.01;
        if (var_9b8a1091 > 0.1) {
            while (var_9b8a1091 > 0) {
                var_9b8a1091 -= 0.01;
                self function_116b95e5(#"hash_75fe7a4dbc759253", #"blur", var_9b8a1091);
                wait(0.08);
            }
        }
    }
}

