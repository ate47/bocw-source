// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\fx_character.csc;
#using scripts\core_common\ai\archetype_secondary_animations.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace raz;

// Namespace raz/raz
// Params 0, eflags: 0x1
// Checksum 0xeeb1bce5, Offset: 0x558
// Size: 0x154
function autoexec main() {
    clientfield::register("scriptmover", "raz_detonate_ground_torpedo", 1, 1, "int", &namespace_fe3871d9::function_e7290ec2, 0, 0);
    clientfield::register("scriptmover", "raz_torpedo_play_fx_on_self", 1, 1, "int", &namespace_fe3871d9::function_dc17c6d6, 0, 0);
    clientfield::register("scriptmover", "raz_torpedo_play_trail", 1, 1, "counter", &namespace_fe3871d9::function_868b328b, 0, 0);
    clientfield::register("actor", "raz_gun_weakpoint_hit", 1, 1, "counter", &namespace_fe3871d9::function_250b46c7, 0, 0);
    ai::add_archetype_spawn_function(#"raz", &namespace_fe3871d9::function_e94574ae);
}

// Namespace raz/raz
// Params 0, eflags: 0x1
// Checksum 0xcb51e791, Offset: 0x6b8
// Size: 0x810
function autoexec precache() {
    level._effect[#"hash_139afc42653bd345"] = "dlc1/castle/fx_mech_foot_step";
    level._effect[#"hash_c824652e58b5fdf"] = "zm_ai/fx9_raz_mc_shockwave_projectile_impact";
    level._effect[#"hash_4e7511e7b7f63d0a"] = "impacts/fx_bul_impact_concrete_xtreme";
    level._effect[#"hash_7d199c49ab77b780"] = "zm_ai/fx9_raz_mc_shockwave_projectile";
    level._effect[#"hash_494b459d33f13b6"] = "zm_ai/fx9_raz_dest_weak_point_exp";
    level._effect[#"hash_656c73c7e4336a47"] = "zm_ai/fx9_raz_dest_weak_point_sparking_loop";
    level._effect[#"hash_7badd093aab9e236"] = "zm_ai/fx9_raz_dmg_weak_point";
    level._effect[#"hash_4faeb86b1620aac4"] = "zm_ai/fx9_raz_dest_weak_point_exp_generic";
    level.var_b8d03316 = [];
    if (!isdefined(level.var_b8d03316)) {
        level.var_b8d03316 = [];
    } else if (!isarray(level.var_b8d03316)) {
        level.var_b8d03316 = array(level.var_b8d03316);
    }
    level.var_b8d03316[level.var_b8d03316.size] = "vox_mang_mangler_taunt_0";
    if (!isdefined(level.var_b8d03316)) {
        level.var_b8d03316 = [];
    } else if (!isarray(level.var_b8d03316)) {
        level.var_b8d03316 = array(level.var_b8d03316);
    }
    level.var_b8d03316[level.var_b8d03316.size] = "vox_mang_mangler_taunt_1";
    if (!isdefined(level.var_b8d03316)) {
        level.var_b8d03316 = [];
    } else if (!isarray(level.var_b8d03316)) {
        level.var_b8d03316 = array(level.var_b8d03316);
    }
    level.var_b8d03316[level.var_b8d03316.size] = "vox_mang_mangler_taunt_2";
    if (!isdefined(level.var_b8d03316)) {
        level.var_b8d03316 = [];
    } else if (!isarray(level.var_b8d03316)) {
        level.var_b8d03316 = array(level.var_b8d03316);
    }
    level.var_b8d03316[level.var_b8d03316.size] = "vox_mang_mangler_taunt_3";
    if (!isdefined(level.var_b8d03316)) {
        level.var_b8d03316 = [];
    } else if (!isarray(level.var_b8d03316)) {
        level.var_b8d03316 = array(level.var_b8d03316);
    }
    level.var_b8d03316[level.var_b8d03316.size] = "vox_mang_mangler_taunt_4";
    if (!isdefined(level.var_b8d03316)) {
        level.var_b8d03316 = [];
    } else if (!isarray(level.var_b8d03316)) {
        level.var_b8d03316 = array(level.var_b8d03316);
    }
    level.var_b8d03316[level.var_b8d03316.size] = "vox_mang_mangler_taunt_5";
    if (!isdefined(level.var_b8d03316)) {
        level.var_b8d03316 = [];
    } else if (!isarray(level.var_b8d03316)) {
        level.var_b8d03316 = array(level.var_b8d03316);
    }
    level.var_b8d03316[level.var_b8d03316.size] = "vox_mang_mangler_taunt_6";
    if (!isdefined(level.var_b8d03316)) {
        level.var_b8d03316 = [];
    } else if (!isarray(level.var_b8d03316)) {
        level.var_b8d03316 = array(level.var_b8d03316);
    }
    level.var_b8d03316[level.var_b8d03316.size] = "vox_mang_mangler_taunt_7";
    if (!isdefined(level.var_b8d03316)) {
        level.var_b8d03316 = [];
    } else if (!isarray(level.var_b8d03316)) {
        level.var_b8d03316 = array(level.var_b8d03316);
    }
    level.var_b8d03316[level.var_b8d03316.size] = "vox_mang_mangler_taunt_8";
    if (!isdefined(level.var_b8d03316)) {
        level.var_b8d03316 = [];
    } else if (!isarray(level.var_b8d03316)) {
        level.var_b8d03316 = array(level.var_b8d03316);
    }
    level.var_b8d03316[level.var_b8d03316.size] = "vox_mang_mangler_taunt_9";
    if (!isdefined(level.var_b8d03316)) {
        level.var_b8d03316 = [];
    } else if (!isarray(level.var_b8d03316)) {
        level.var_b8d03316 = array(level.var_b8d03316);
    }
    level.var_b8d03316[level.var_b8d03316.size] = "vox_mang_mangler_taunt_10";
    if (!isdefined(level.var_b8d03316)) {
        level.var_b8d03316 = [];
    } else if (!isarray(level.var_b8d03316)) {
        level.var_b8d03316 = array(level.var_b8d03316);
    }
    level.var_b8d03316[level.var_b8d03316.size] = "vox_mang_mangler_taunt_11";
    if (!isdefined(level.var_b8d03316)) {
        level.var_b8d03316 = [];
    } else if (!isarray(level.var_b8d03316)) {
        level.var_b8d03316 = array(level.var_b8d03316);
    }
    level.var_b8d03316[level.var_b8d03316.size] = "vox_mang_mangler_taunt_12";
    if (!isdefined(level.var_b8d03316)) {
        level.var_b8d03316 = [];
    } else if (!isarray(level.var_b8d03316)) {
        level.var_b8d03316 = array(level.var_b8d03316);
    }
    level.var_b8d03316[level.var_b8d03316.size] = "vox_mang_mangler_taunt_13";
}

#namespace namespace_fe3871d9;

// Namespace namespace_fe3871d9/raz
// Params 1, eflags: 0x6 linked
// Checksum 0x2463546f, Offset: 0xed0
// Size: 0x7c
function private function_e94574ae(localclientnum) {
    level._footstepcbfuncs[self.archetype] = &function_525f8122;
    self thread function_3f40a429(localclientnum);
    util::waittill_dobj(localclientnum);
    fxclientutils::playfxbundle(localclientnum, self, self.fxdef);
}

// Namespace namespace_fe3871d9/raz
// Params 1, eflags: 0x6 linked
// Checksum 0x3448f740, Offset: 0xf58
// Size: 0xa8
function private function_3f40a429(localclientnum) {
    self endon(#"death");
    while (isdefined(self)) {
        self waittill(#"lights_on");
        self mapshaderconstant(localclientnum, 0, "scriptVector3", 0, 1, 1);
        self waittill(#"lights_off");
        self mapshaderconstant(localclientnum, 0, "scriptVector3", 0, 0, 0);
    }
}

// Namespace namespace_fe3871d9/raz
// Params 1, eflags: 0x4
// Checksum 0xb1bba114, Offset: 0x1008
// Size: 0x80
function private function_baf6efda(localclientnum) {
    self endon(#"death");
    while (isdefined(self)) {
        self waittill(#"roar");
        self playsound(localclientnum, "vox_raz_exert_enrage", self gettagorigin("tag_eye"));
    }
}

// Namespace namespace_fe3871d9/raz
// Params 1, eflags: 0x0
// Checksum 0x4a65cb2c, Offset: 0x1090
// Size: 0x9e
function function_d0d17a03(localclientnum) {
    self endon(#"death");
    self endon(#"hash_44b53862eee262c9");
    while (isdefined(self)) {
        wait(randomintrange(2, 9));
        self playsound(localclientnum, "vox_ai_raz_ambient_radio", self gettagorigin("tag_eye"));
        wait(5);
    }
}

// Namespace namespace_fe3871d9/raz
// Params 5, eflags: 0x2 linked
// Checksum 0xaa9eb63c, Offset: 0x1138
// Size: 0x20e
function function_525f8122(localclientnum, pos, *surface, *notetrack, bone) {
    e_player = function_5c10bd79(surface);
    n_dist = distancesquared(notetrack, e_player.origin);
    var_775e0d4 = 160000;
    if (var_775e0d4 > 0) {
        n_scale = (var_775e0d4 - n_dist) / var_775e0d4;
    } else {
        return;
    }
    if (n_scale > 1 || n_scale < 0) {
        return;
    }
    if (n_scale <= 0.01) {
        return;
    }
    var_1826041c = n_scale * 0.1;
    if (var_1826041c > 0.01) {
        earthquake(surface, var_1826041c, 0.1, notetrack, n_dist);
    }
    if (n_scale <= 1 && n_scale > 0.8) {
        e_player playrumbleonentity(surface, "damage_heavy");
    } else if (n_scale <= 0.8 && n_scale > 0.4) {
        e_player playrumbleonentity(surface, "damage_light");
    } else {
        e_player playrumbleonentity(surface, "reload_small");
    }
    fx = util::playfxontag(surface, level._effect[#"hash_139afc42653bd345"], self, bone);
}

// Namespace namespace_fe3871d9/raz
// Params 7, eflags: 0x6 linked
// Checksum 0x27f84d8b, Offset: 0x1350
// Size: 0x7e
function private function_e7290ec2(localclientnum, *oldvalue, *newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    fx = playfx(wasdemojump, level._effect[#"hash_c824652e58b5fdf"], self.origin);
}

// Namespace namespace_fe3871d9/raz
// Params 7, eflags: 0x6 linked
// Checksum 0x300bd494, Offset: 0x13d8
// Size: 0x7e
function private function_868b328b(localclientnum, *oldvalue, *newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    fx = playfx(wasdemojump, level._effect[#"hash_4e7511e7b7f63d0a"], self.origin);
}

// Namespace namespace_fe3871d9/raz
// Params 7, eflags: 0x6 linked
// Checksum 0x462b4e58, Offset: 0x1460
// Size: 0xda
function private function_dc17c6d6(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump == 0 && isdefined(self.var_475864c)) {
        stopfx(fieldname, self.var_475864c);
        self.var_475864c = undefined;
    }
    if (wasdemojump == 1 && !isdefined(self.var_475864c)) {
        self.var_475864c = util::playfxontag(fieldname, level._effect[#"hash_7d199c49ab77b780"], self, "tag_origin");
    }
}

// Namespace namespace_fe3871d9/raz
// Params 7, eflags: 0x6 linked
// Checksum 0xcc90549c, Offset: 0x1548
// Size: 0x1a4
function private function_16686fd4(localclientnum, model, pos, angles, *hitpos, var_243511ab = 1, direction) {
    if (!isdefined(angles) || !isdefined(hitpos)) {
        return;
    }
    velocity = self getvelocity();
    var_9ec7627b = vectornormalize(velocity);
    var_bab6cdb7 = length(velocity);
    if (isdefined(direction) && direction == "back") {
        var_5846115f = anglestoforward(self.angles) * -1;
    } else {
        var_5846115f = anglestoforward(self.angles);
    }
    var_bab6cdb7 *= 0.1;
    if (var_bab6cdb7 < 10) {
        var_bab6cdb7 = 10;
    }
    var_5846115f = var_5846115f * 0.5 + var_9ec7627b * 0.5;
    var_5846115f *= var_bab6cdb7;
    createdynentandlaunch(model, pos, angles, hitpos, self.origin, var_5846115f * var_243511ab);
}

// Namespace namespace_fe3871d9/raz
// Params 7, eflags: 0x4
// Checksum 0x625048e5, Offset: 0x16f8
// Size: 0x19c
function private function_27830d87(localclientnum, *oldvalue, *newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    fx = util::playfxontag(wasdemojump, level._effect[#"hash_494b459d33f13b6"], self, "TAG_FX_Shoulder_RI_GIB");
    var_96f5534c = self gettagorigin("j_elbow_ri");
    var_bcffa218 = self gettagangles("j_elbow_ri");
    var_2c37b16f = self gettagorigin("j_shouldertwist_ri_attach");
    var_7c071f82 = self gettagangles("j_shouldertwist_ri_attach");
    dynent = function_16686fd4(wasdemojump, "c_zom_dlc3_raz_s_armcannon", var_96f5534c, var_bcffa218, self.origin, 1.3, "back");
    self playsound(wasdemojump, "zmb_raz_gun_explo", self gettagorigin("tag_eye"));
}

// Namespace namespace_fe3871d9/raz
// Params 7, eflags: 0x6 linked
// Checksum 0x28a9c468, Offset: 0x18a0
// Size: 0x7e
function private function_250b46c7(localclientnum, *oldvalue, *newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    fx = util::playfxontag(wasdemojump, level._effect[#"hash_7badd093aab9e236"], self, "j_shoulder_ri");
}

// Namespace namespace_fe3871d9/raz
// Params 2, eflags: 0x4
// Checksum 0x644330ed, Offset: 0x1928
// Size: 0xac
function private applynewfaceanim(localclientnum, animation) {
    self endon(#"death");
    if (isdefined(animation)) {
        self._currentfaceanim = animation;
        if (self hasdobj(localclientnum) && self hasanimtree()) {
            self setflaggedanimknob("ai_secondary_facial_anim", animation, 1, 0.1, 1);
        }
    }
}

// Namespace namespace_fe3871d9/raz
// Params 1, eflags: 0x4
// Checksum 0x9c0be7ea, Offset: 0x19e0
// Size: 0x76
function private clearcurrentfacialanim(localclientnum) {
    if (isdefined(self._currentfaceanim) && self hasdobj(localclientnum) && self hasanimtree()) {
        self clearanim(self._currentfaceanim, 0.2);
    }
    self._currentfaceanim = undefined;
}

