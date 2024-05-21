// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\footsteps_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace namespace_a204c0f4;

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 0, eflags: 0x2 linked
// Checksum 0x6b77e55a, Offset: 0x5b0
// Size: 0x77c
function init() {
    function_cae618b4("spawner_zombietron_margwa");
    clientfield::register("actor", "margwa_head_left", 1, 2, "int", &function_7f774ede, 0, 0);
    clientfield::register("actor", "margwa_head_mid", 1, 2, "int", &function_a99ba434, 0, 0);
    clientfield::register("actor", "margwa_head_right", 1, 2, "int", &function_e579d5d9, 0, 0);
    clientfield::register("actor", "margwa_fx_in", 1, 1, "counter", &function_39ef8b74, 0, 0);
    clientfield::register("actor", "margwa_fx_out", 1, 1, "counter", &function_9604ce8a, 0, 0);
    clientfield::register("actor", "margwa_fx_spawn", 1, 1, "counter", &function_3037d1ec, 0, 0);
    clientfield::register("actor", "margwa_smash", 1, 1, "counter", &function_a3a09c93, 0, 0);
    clientfield::register("actor", "margwa_head_left_hit", 1, 1, "counter", &function_d1df36a2, 0, 0);
    clientfield::register("actor", "margwa_head_mid_hit", 1, 1, "counter", &function_751de3f8, 0, 0);
    clientfield::register("actor", "margwa_head_right_hit", 1, 1, "counter", &function_1d106112, 0, 0);
    clientfield::register("actor", "margwa_head_killed", 1, 2, "int", &function_5a1be0a8, 0, 0);
    clientfield::register("actor", "margwa_jaw", 1, 6, "int", &function_8cba01dd, 0, 0);
    clientfield::register("toplayer", "margwa_head_explosion", 1, 1, "counter", &function_c8b15a9b, 0, 0);
    clientfield::register("scriptmover", "margwa_fx_travel", 1, 1, "int", &function_1b421769, 0, 0);
    clientfield::register("scriptmover", "margwa_fx_travel_tell", 1, 1, "int", &function_4a696f55, 0, 0);
    clientfield::register("actor", "supermargwa", 1, 1, "int", undefined, 0, 0);
    ai::add_archetype_spawn_function(#"margwa", &function_9874b8cd);
    level.var_c54efd75 = [];
    level.var_c54efd75[1] = "idle_1";
    level.var_c54efd75[3] = "idle_pain_head_l_explode";
    level.var_c54efd75[4] = "idle_pain_head_m_explode";
    level.var_c54efd75[5] = "idle_pain_head_r_explode";
    level.var_c54efd75[6] = "react_stun";
    level.var_c54efd75[8] = "react_idgun";
    level.var_c54efd75[9] = "react_idgun_pack";
    level.var_c54efd75[7] = "run_charge_f";
    level.var_c54efd75[13] = "run_f";
    level.var_c54efd75[14] = "smash_attack_1";
    level.var_c54efd75[15] = "swipe";
    level.var_c54efd75[16] = "swipe_player";
    level.var_c54efd75[17] = "teleport_in";
    level.var_c54efd75[18] = "teleport_out";
    level.var_c54efd75[19] = "trv_jump_across_256";
    level.var_c54efd75[20] = "trv_jump_down_128";
    level.var_c54efd75[21] = "trv_jump_down_36";
    level.var_c54efd75[22] = "trv_jump_down_96";
    level.var_c54efd75[23] = "trv_jump_up_128";
    level.var_c54efd75[24] = "trv_jump_up_36";
    level.var_c54efd75[25] = "trv_jump_up_96";
    level._effect[#"hash_73340632a86cc551"] = "zombie/fx_margwa_teleport_zod_zmb";
    level._effect[#"hash_5bb584a2ff8acafa"] = "zombie/fx_margwa_teleport_travel_zod_zmb";
    level._effect[#"hash_361a04ec39dfdd45"] = "zombie/fx_margwa_teleport_tell_zod_zmb";
    level._effect[#"hash_4ee757f35edb6a60"] = "zombie/fx_margwa_teleport_intro_zod_zmb";
    level._effect[#"hash_2194a9c4c97b274d"] = "zombie/fx_margwa_head_shot_zod_zmb";
    level._effect[#"hash_3ff64a095c3c339a"] = "zombie/fx_margwa_roar_zod_zmb";
    level._effect[#"hash_5c9c6d7de1238d59"] = "zombie/fx_margwa_roar_purple_zod_zmb";
    footsteps::registeraitypefootstepcb(#"margwa", &function_d96c49e7);
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0x4068d2fd, Offset: 0xd38
// Size: 0x32a
function private function_9874b8cd(localclientnum) {
    self util::waittill_dobj(localclientnum);
    if (!isdefined(self)) {
        return;
    }
    self setanim(#"hash_60bac319c9abb540", 1, 0.2, 1);
    self setanim(#"hash_3a0441f1951d769d", 1, 0.2, 1);
    self setanim(#"hash_14a02ee57f9109ba", 1, 0.2, 1);
    for (i = 1; i <= 7; i++) {
        var_25dd550a = #"hash_3aa340cf7e8075f0" + i;
        var_43aa83b8 = #"hash_79ffdacfeb1dcc9e" + i;
        self setanim(var_25dd550a, 1, 0.2, 1);
        self setanim(var_43aa83b8, 1, 0.2, 1);
    }
    self.heads = [];
    self.heads[1] = spawnstruct();
    self.heads[1].index = 1;
    self.heads[1].var_90d98881 = #"hash_60bac319c9abb540";
    self.heads[1].var_64883f29 = "ai_margwa_jaw_l_";
    self.heads[2] = spawnstruct();
    self.heads[2].index = 2;
    self.heads[2].var_90d98881 = #"hash_3a0441f1951d769d";
    self.heads[2].var_64883f29 = "ai_margwa_jaw_m_";
    self.heads[3] = spawnstruct();
    self.heads[3].index = 3;
    self.heads[3].var_90d98881 = #"hash_14a02ee57f9109ba";
    self.heads[3].var_64883f29 = "ai_margwa_jaw_r_";
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 7, eflags: 0x6 linked
// Checksum 0xeb0e970, Offset: 0x1070
// Size: 0x452
function private function_7f774ede(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (isdefined(self.var_fd694760)) {
        stopfx(fieldname, self.var_fd694760);
    }
    self util::waittill_dobj(fieldname);
    if (!isdefined(self) || !isdefined(self.heads)) {
        return;
    }
    switch (wasdemojump) {
    case 1:
        self.heads[1].var_90d98881 = #"hash_521e8e871b9a68b0";
        self setanim(#"hash_521e8e871b9a68b0", 1, 0.1, 1);
        self clearanim(#"hash_60bac319c9abb540", 0.1);
        var_60a180bc = level._effect[#"hash_3ff64a095c3c339a"];
        if (isdefined(self.var_f61e3379)) {
            var_60a180bc = self.var_f61e3379;
        }
        if (self clientfield::get("supermargwa")) {
            self.var_fd694760 = util::playfxontag(fieldname, level._effect[#"hash_5c9c6d7de1238d59"], self, "tag_head_left");
        } else {
            self.var_fd694760 = util::playfxontag(fieldname, var_60a180bc, self, "tag_head_left");
        }
        break;
    case 2:
        self.heads[1].var_90d98881 = #"hash_60bac319c9abb540";
        self setanim(#"hash_60bac319c9abb540", 1, 0.1, 1);
        self clearanim(#"hash_521e8e871b9a68b0", 0.1);
        self clearanim(#"hash_51cfcc94518cf8d5", 0.1);
        break;
    case 3:
        self.heads[1].var_90d98881 = #"hash_51cfcc94518cf8d5";
        self clearanim(#"hash_521e8e871b9a68b0", 0.1);
        self clearanim(#"hash_60bac319c9abb540", 0.1);
        self setanimrestart(#"hash_51cfcc94518cf8d5", 1, 0.1, 1);
        var_60a180bc = level._effect[#"hash_3ff64a095c3c339a"];
        if (isdefined(self.var_f61e3379)) {
            var_60a180bc = self.var_f61e3379;
        }
        if (self clientfield::get("supermargwa")) {
            self.var_fd694760 = util::playfxontag(fieldname, level._effect[#"hash_5c9c6d7de1238d59"], self, "tag_head_left");
        } else {
            self.var_fd694760 = util::playfxontag(fieldname, var_60a180bc, self, "tag_head_left");
        }
        self thread function_bb0ffabc(fieldname);
        break;
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 7, eflags: 0x6 linked
// Checksum 0xe85fcf5f, Offset: 0x14d0
// Size: 0x3d2
function private function_a99ba434(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (isdefined(self.var_694b6f)) {
        stopfx(fieldname, self.var_694b6f);
    }
    self util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    switch (wasdemojump) {
    case 1:
        self setanim(#"hash_3c80dfc4cad4bea9", 1, 0.1, 1);
        self clearanim(#"hash_3a0441f1951d769d", 0.1);
        var_60a180bc = level._effect[#"hash_3ff64a095c3c339a"];
        if (isdefined(self.var_f61e3379)) {
            var_60a180bc = self.var_f61e3379;
        }
        if (self clientfield::get("supermargwa")) {
            self.var_694b6f = util::playfxontag(fieldname, level._effect[#"hash_5c9c6d7de1238d59"], self, "tag_head_mid");
        } else {
            self.var_694b6f = util::playfxontag(fieldname, var_60a180bc, self, "tag_head_mid");
        }
        break;
    case 2:
        self setanim(#"hash_3a0441f1951d769d", 1, 0.1, 1);
        self clearanim(#"hash_3c80dfc4cad4bea9", 0.1);
        self clearanim(#"hash_1423c2827943ae20", 0.1);
        break;
    case 3:
        self clearanim(#"hash_3c80dfc4cad4bea9", 0.1);
        self clearanim(#"hash_3a0441f1951d769d", 0.1);
        self setanimrestart(#"hash_1423c2827943ae20", 1, 0.1, 1);
        var_60a180bc = level._effect[#"hash_3ff64a095c3c339a"];
        if (isdefined(self.var_f61e3379)) {
            var_60a180bc = self.var_f61e3379;
        }
        if (self clientfield::get("supermargwa")) {
            self.var_694b6f = util::playfxontag(fieldname, level._effect[#"hash_5c9c6d7de1238d59"], self, "tag_head_mid");
        } else {
            self.var_694b6f = util::playfxontag(fieldname, var_60a180bc, self, "tag_head_mid");
        }
        self thread function_bb0ffabc(fieldname);
        break;
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 7, eflags: 0x6 linked
// Checksum 0xf2065f86, Offset: 0x18b0
// Size: 0x3d2
function private function_e579d5d9(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (isdefined(self.var_f254784b)) {
        stopfx(fieldname, self.var_f254784b);
    }
    self util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    switch (wasdemojump) {
    case 1:
        self setanim(#"hash_26f33adf13df5f66", 1, 0.1, 1);
        self clearanim(#"hash_14a02ee57f9109ba", 0.1);
        var_60a180bc = level._effect[#"hash_3ff64a095c3c339a"];
        if (isdefined(self.var_f61e3379)) {
            var_60a180bc = self.var_f61e3379;
        }
        if (self clientfield::get("supermargwa")) {
            self.var_f254784b = util::playfxontag(fieldname, level._effect[#"hash_5c9c6d7de1238d59"], self, "tag_head_right");
        } else {
            self.var_f254784b = util::playfxontag(fieldname, var_60a180bc, self, "tag_head_right");
        }
        break;
    case 2:
        self setanim(#"hash_14a02ee57f9109ba", 1, 0.1, 1);
        self clearanim(#"hash_26f33adf13df5f66", 0.1);
        self clearanim(#"hash_4f91289daeb5378f", 0.1);
        break;
    case 3:
        self clearanim(#"hash_26f33adf13df5f66", 0.1);
        self clearanim(#"hash_14a02ee57f9109ba", 0.1);
        self setanimrestart(#"hash_4f91289daeb5378f", 1, 0.1, 1);
        var_60a180bc = level._effect[#"hash_3ff64a095c3c339a"];
        if (isdefined(self.var_f61e3379)) {
            var_60a180bc = self.var_f61e3379;
        }
        if (self clientfield::get("supermargwa")) {
            self.var_f254784b = util::playfxontag(fieldname, level._effect[#"hash_5c9c6d7de1238d59"], self, "tag_head_right");
        } else {
            self.var_f254784b = util::playfxontag(fieldname, var_60a180bc, self, "tag_head_right");
        }
        self thread function_bb0ffabc(fieldname);
        break;
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0xe9fd3f99, Offset: 0x1c90
// Size: 0xa4
function private function_bb0ffabc(localclientnum) {
    self endon(#"death");
    wait(0.6);
    if (isdefined(self.var_fd694760)) {
        stopfx(localclientnum, self.var_fd694760);
    }
    if (isdefined(self.var_694b6f)) {
        stopfx(localclientnum, self.var_694b6f);
    }
    if (isdefined(self.var_f254784b)) {
        stopfx(localclientnum, self.var_f254784b);
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 7, eflags: 0x6 linked
// Checksum 0x522a4c1a, Offset: 0x1d40
// Size: 0x9a
function private function_39ef8b74(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump) {
        self.var_f2f751dd = playfx(fieldname, level._effect[#"hash_73340632a86cc551"], self gettagorigin("j_spine_1"));
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 7, eflags: 0x6 linked
// Checksum 0x8e254177, Offset: 0x1de8
// Size: 0xaa
function private function_9604ce8a(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump) {
        tagpos = self gettagorigin("j_spine_1");
        self.var_e6a4bc80 = playfx(fieldname, level._effect[#"hash_73340632a86cc551"], tagpos);
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 7, eflags: 0x6 linked
// Checksum 0x5f786ce4, Offset: 0x1ea0
// Size: 0xda
function private function_1b421769(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    switch (wasdemojump) {
    case 0:
        deletefx(fieldname, self.var_3e71124a);
        break;
    case 1:
        self.var_3e71124a = util::playfxontag(fieldname, level._effect[#"hash_5bb584a2ff8acafa"], self, "tag_origin");
        break;
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 7, eflags: 0x6 linked
// Checksum 0x3bf1e27e, Offset: 0x1f88
// Size: 0x102
function private function_4a696f55(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    switch (wasdemojump) {
    case 0:
        deletefx(fieldname, self.var_598f22c4);
        self notify(#"hash_3ad013815bda7968");
        break;
    case 1:
        self.var_598f22c4 = util::playfxontag(fieldname, level._effect[#"hash_361a04ec39dfdd45"], self, "tag_origin");
        self thread function_bc09ffc1(fieldname);
        break;
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x2 linked
// Checksum 0xea353503, Offset: 0x2098
// Size: 0xce
function function_bc09ffc1(localclientnum) {
    self notify(#"hash_3ad013815bda7968");
    self endon(#"hash_3ad013815bda7968");
    self endon(#"death");
    player = function_5c10bd79(localclientnum);
    while (true) {
        if (isdefined(player)) {
            dist_sq = distancesquared(player.origin, self.origin);
            if (dist_sq < 1000000) {
                player playrumbleonentity(localclientnum, "tank_rumble");
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 7, eflags: 0x6 linked
// Checksum 0x918e5409, Offset: 0x2170
// Size: 0xf4
function private function_3037d1ec(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump) {
        spawnfx = level._effect[#"hash_4ee757f35edb6a60"];
        if (isdefined(self.var_c525a905)) {
            spawnfx = self.var_c525a905;
        }
        self.spawnfx = playfx(fieldname, spawnfx, self gettagorigin("j_spine_1"));
        playsound(0, #"hash_376c0791744acc6a", self gettagorigin("j_spine_1"));
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 7, eflags: 0x6 linked
// Checksum 0x25c0d942, Offset: 0x2270
// Size: 0x64
function private function_c8b15a9b(*localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump) {
        self postfx::playpostfxbundle(#"hash_1a330df4b4188375");
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 5, eflags: 0x2 linked
// Checksum 0x787171da, Offset: 0x22e0
// Size: 0x1f4
function function_d96c49e7(localclientnum, pos, *surface, *notetrack, *bone) {
    e_player = function_5c10bd79(notetrack);
    n_dist = distancesquared(bone, e_player.origin);
    var_d55585a1 = getdvarint(#"hash_b2a0736c2b88fda", 1000) * getdvarint(#"hash_b2a0736c2b88fda", 1000);
    if (var_d55585a1 > 0) {
        n_scale = (var_d55585a1 - n_dist) / var_d55585a1;
    } else {
        return;
    }
    if (n_scale > 1 || n_scale < 0) {
        return;
    }
    n_scale *= 0.25;
    if (n_scale <= 0.01) {
        return;
    }
    earthquake(notetrack, n_scale, 0.1, bone, n_dist);
    if (n_scale <= 0.25 && n_scale > 0.2) {
        function_36e4ebd4(notetrack, "shotgun_fire");
        return;
    }
    if (n_scale <= 0.2 && n_scale > 0.1) {
        function_36e4ebd4(notetrack, "damage_heavy");
        return;
    }
    function_36e4ebd4(notetrack, "reload_small");
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 7, eflags: 0x6 linked
// Checksum 0x4eafccde, Offset: 0x24e0
// Size: 0x184
function private function_a3a09c93(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump) {
        e_player = function_5c10bd79(fieldname);
        var_9f06b4e9 = self.origin + vectorscale(anglestoforward(self.angles), 60);
        distsq = distancesquared(var_9f06b4e9, e_player.origin);
        if (distsq < 20736) {
            earthquake(fieldname, 0.7, 0.25, e_player.origin, 3000);
            function_36e4ebd4(fieldname, "shotgun_fire");
            return;
        }
        if (distsq < 36864) {
            earthquake(fieldname, 0.7, 0.25, e_player.origin, 1500);
            function_36e4ebd4(fieldname, "damage_heavy");
        }
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 7, eflags: 0x6 linked
// Checksum 0x968b2d5b, Offset: 0x2670
// Size: 0xa2
function private function_d1df36a2(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump) {
        effect = level._effect[#"hash_2194a9c4c97b274d"];
        if (isdefined(self.var_7526e3c3)) {
            effect = self.var_7526e3c3;
        }
        self.var_7f006628 = util::playfxontag(fieldname, effect, self, "tag_head_left");
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 7, eflags: 0x6 linked
// Checksum 0x6ec6e2b9, Offset: 0x2720
// Size: 0xa2
function private function_751de3f8(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump) {
        effect = level._effect[#"hash_2194a9c4c97b274d"];
        if (isdefined(self.var_7526e3c3)) {
            effect = self.var_7526e3c3;
        }
        self.var_a0288d14 = util::playfxontag(fieldname, effect, self, "tag_head_mid");
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 7, eflags: 0x6 linked
// Checksum 0xe0cb0c88, Offset: 0x27d0
// Size: 0xa2
function private function_1d106112(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump) {
        effect = level._effect[#"hash_2194a9c4c97b274d"];
        if (isdefined(self.var_7526e3c3)) {
            effect = self.var_7526e3c3;
        }
        self.var_752b722d = util::playfxontag(fieldname, effect, self, "tag_head_right");
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 7, eflags: 0x6 linked
// Checksum 0xedde30d, Offset: 0x2880
// Size: 0x82
function private function_5a1be0a8(*localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump && isdefined(self.heads) && isdefined(self.heads[wasdemojump])) {
        self.heads[wasdemojump].killed = 1;
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 7, eflags: 0x6 linked
// Checksum 0xc504cd3b, Offset: 0x2910
// Size: 0x1a0
function private function_8cba01dd(*localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump) {
        foreach (head in self.heads) {
            if (is_true(head.killed)) {
                if (isdefined(head.var_3cdae679)) {
                    self clearanim(head.var_3cdae679, 0.2);
                }
                if (isdefined(head.var_90d98881)) {
                    self clearanim(head.var_90d98881, 0.1);
                }
                var_cd3a4460 = head.var_64883f29 + level.var_c54efd75[wasdemojump];
                head.var_3cdae679 = var_cd3a4460;
                self setanim(var_cd3a4460, 1, 0.2, 1);
            }
        }
    }
}

