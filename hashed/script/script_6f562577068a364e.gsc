// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using script_d67878983e3d7c;
#using script_4e53735256f112ac;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\beam_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_ce9594c1;

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 0, eflags: 0x5
// Checksum 0x5fc7e9ef, Offset: 0x278
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_49946b57ce6e712f", &preinit, undefined, undefined, #"hash_13a43d760497b54d");
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 0, eflags: 0x6 linked
// Checksum 0x264c2cd9, Offset: 0x2c8
// Size: 0x94
function private preinit() {
    clientfield::register("allplayers", "fx_frenzied_guard_player_clientfield", 9000, 1, "int", &function_dfadfc0e, 1, 0);
    clientfield::register("actor", "fx_frenzied_guard_actor_clientfield", 9000, 1, "int", &function_d3b68b9b, 1, 0);
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 7, eflags: 0x2 linked
// Checksum 0xac7a6f3a, Offset: 0x368
// Size: 0x306
function function_dfadfc0e(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwastimejump) {
        if (!zm_utility::function_f8796df3(fieldname)) {
            self.var_7b61d94d = function_239993de(fieldname, "zm_weapons/fx9_fld_frenzied_guard_head_3p", self, "j_head");
            self.var_ac385caa = function_239993de(fieldname, "zm_weapons/fx9_fld_frenzied_guard_torso_3p", self, "j_spine4");
        } else {
            if (!self postfx::function_556665f2("pstfx_zm_dying_wish")) {
                self postfx::playpostfxbundle(#"pstfx_zm_dying_wish");
            }
            if (!isdefined(self.var_cc84f2f5) && self function_da43934d()) {
                self.var_cc84f2f5 = playfxoncamera(fieldname, "zm_weapons/fx9_fld_frenzied_guard_head_1p", (0, 0, 0), (1, 0, 0), (0, 0, 1));
            }
        }
        if (!isdefined(self.var_5ceafd03)) {
            self playsound(fieldname, #"hash_3c448f01c0cd7e64");
            self.var_5ceafd03 = self playloopsound(#"hash_53e2a6691a758304");
        }
        return;
    }
    if (self postfx::function_556665f2("pstfx_zm_dying_wish")) {
        self postfx::stoppostfxbundle(#"pstfx_zm_dying_wish");
    }
    if (isdefined(self.var_7b61d94d) && isdefined(self.var_ac385caa)) {
        stopfx(fieldname, self.var_7b61d94d);
        stopfx(fieldname, self.var_ac385caa);
    }
    if (isdefined(self.var_5ceafd03)) {
        self playsound(fieldname, #"hash_4b49ab981fdefe5d");
        self stoploopsound(self.var_5ceafd03);
        self.var_5ceafd03 = undefined;
    }
    if (isdefined(self.var_cc84f2f5)) {
        stopfx(fieldname, self.var_cc84f2f5);
        self.var_cc84f2f5 = undefined;
    }
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 7, eflags: 0x2 linked
// Checksum 0x9acf0883, Offset: 0x678
// Size: 0x2c6
function function_d3b68b9b(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwastimejump) {
        if (isdefined(self.archetype)) {
            switch (self.archetype) {
            case #"zombie_dog":
                self.var_d1ed81ee = function_239993de(fieldname, "zm_weapons/fx9_fld_frenzied_guard_lvl5_enemy_slow", self, "j_ball_mid_le");
                self.var_c4f4d1e5 = function_239993de(fieldname, "zm_weapons/fx9_fld_frenzied_guard_lvl5_enemy_slow", self, "j_ball_mid_ri");
                self.var_62025f88 = function_239993de(fieldname, "zm_weapons/fx9_fld_frenzied_guard_lvl5_enemy_slow", self, "j_palm_mid_le");
                self.var_3a23707d = function_239993de(fieldname, "zm_weapons/fx9_fld_frenzied_guard_lvl5_enemy_slow", self, "j_palm_mid_ri");
                break;
            case #"zombie":
                self.var_d1ed81ee = function_239993de(fieldname, "zm_weapons/fx9_fld_frenzied_guard_lvl5_enemy_slow", self, "j_ball_le");
                self.var_c4f4d1e5 = function_239993de(fieldname, "zm_weapons/fx9_fld_frenzied_guard_lvl5_enemy_slow", self, "j_ball_ri");
                break;
            }
        }
        self.var_cd26d88f = self playloopsound(#"hash_58ee9d9df63d0294", undefined, (0, 0, 30));
        return;
    }
    if (isdefined(self.var_d1ed81ee)) {
        stopfx(fieldname, self.var_d1ed81ee);
    }
    if (isdefined(self.var_c4f4d1e5)) {
        stopfx(fieldname, self.var_c4f4d1e5);
    }
    if (isdefined(self.var_62025f88)) {
        stopfx(fieldname, self.var_62025f88);
    }
    if (isdefined(self.var_3a23707d)) {
        stopfx(fieldname, self.var_3a23707d);
    }
    if (isdefined(self.var_cd26d88f)) {
        self stoploopsound(self.var_cd26d88f);
        self.var_cd26d88f = undefined;
    }
}

