// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_vo.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_662ff671;

// Namespace namespace_662ff671/level_init
// Params 1, eflags: 0x20
// Checksum 0x83047c41, Offset: 0x1d8
// Size: 0x2cc
function event_handler[level_init] main(*eventstruct) {
    clientfield::register("actor", "" + #"hash_74382f598f4de051", 1, 1, "counter", &function_9f72eb8b, 0, 0);
    clientfield::register("actor", "" + #"hash_b74182bd1e44a44", 1, 1, "int", &function_cdc867b2, 0, 0);
    clientfield::register("actor", "" + #"hash_435db79c304e12a5", 1, 1, "counter", &function_f15a1018, 0, 0);
    clientfield::register("actor", "" + #"hash_3049a409503be8a0", 1, 1, "int", &function_f471577a, 0, 0);
    clientfield::register("actor", "" + #"hash_4460e5ee368004ed", 1, 1, "int", &function_dea39d5a, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_60e4230d63925ac1", 1, 1, "int", &function_60886116, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_6d05bbcab1912e5a", 1, 1, "int", &function_691412b4, 0, 0);
    clientfield::register("world", "" + #"hash_7d92d99179091a4f", 1, 1, "int", &function_a2e43552, 0, 0);
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 7, eflags: 0x2 linked
// Checksum 0x9b1d68e1, Offset: 0x4b0
// Size: 0xd4
function function_a2e43552(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        forcestreamxmodel(#"p9_sur_computer_console_hvt_01_screen_laser_in_act");
        forcestreamxmodel(#"p9_sur_computer_console_hvt_01_screen_laser_act");
        return;
    }
    stopforcestreamingxmodel(#"p9_sur_computer_console_hvt_01_screen_laser_in_act");
    stopforcestreamingxmodel(#"p9_sur_computer_console_hvt_01_screen_laser_act");
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 7, eflags: 0x2 linked
// Checksum 0xe6303099, Offset: 0x590
// Size: 0xd6
function function_dea39d5a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwastimejump == 1) {
        self.var_3af8abd3 = util::playfxontag(fieldname, "sr/fx9_hvt_zombie_summon", self, "j_spine4");
        return;
    }
    if (isdefined(self.var_3af8abd3)) {
        stopfx(fieldname, self.var_3af8abd3);
        self.var_3af8abd3 = undefined;
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 7, eflags: 0x2 linked
// Checksum 0xa8184571, Offset: 0x670
// Size: 0xd6
function function_f471577a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwastimejump == 1) {
        self.var_27b51434 = util::playfxontag(fieldname, "sr/fx9_hvt_aether_beam_distant", self, "tag_origin");
        return;
    }
    if (isdefined(self.var_27b51434)) {
        stopfx(fieldname, self.var_27b51434);
        self.var_27b51434 = undefined;
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 7, eflags: 0x2 linked
// Checksum 0xd7a95f04, Offset: 0x750
// Size: 0xcc
function function_691412b4(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwastimejump == 1) {
        self.var_942f8233 = util::playfxontag(fieldname, "sr/fx9_hvt_aether_move_trail", self, "tag_origin");
        return;
    }
    if (isdefined(self.var_942f8233)) {
        stopfx(fieldname, self.var_942f8233);
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 7, eflags: 0x2 linked
// Checksum 0x86b9085b, Offset: 0x828
// Size: 0x2de
function function_60886116(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwastimejump == 1) {
        self.var_3e3964d7 = playfx(fieldname, "sr/fx9_hvt_aether_beam", self.origin, anglestoup(self.angles));
        if (!isdefined(self.var_7f6cb624)) {
            self playsound(fieldname, #"hash_62101ae824e3101a");
            self.var_7f6cb624 = self playloopsound(#"hash_234e4f385aba4fae");
        }
        wait(2.5);
        self.var_ae8b25ed = playfx(fieldname, "sr/fx9_hvt_aether_portal_spawn", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
        return;
    }
    self.var_1c6eb712 = playfx(fieldname, "sr/fx9_hvt_aether_portal_close", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
    if (isdefined(self.var_3e3964d7)) {
        stopfx(fieldname, self.var_3e3964d7);
        self.var_3e3964d7 = undefined;
    }
    if (isdefined(self.var_ae8b25ed)) {
        stopfx(fieldname, self.var_ae8b25ed);
        self.var_ae8b25ed = undefined;
    }
    if (isdefined(self.var_7f6cb624)) {
        self playsound(fieldname, #"hash_7e2855c20a4abd8f");
        self stoploopsound(self.var_7f6cb624);
        self.var_7f6cb624 = undefined;
    }
    wait(2);
    if (isdefined(self.var_1c6eb712)) {
        stopfx(fieldname, self.var_1c6eb712);
        self.var_1c6eb712 = undefined;
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 7, eflags: 0x2 linked
// Checksum 0xe35a86c2, Offset: 0xb10
// Size: 0xec
function function_f15a1018(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(bwastimejump);
    playfx(bwastimejump, "sr/fx9_hvt_aether_portal_exp", self.origin + (0, 0, 32), anglestoforward(self.angles), anglestoup(self.angles));
    self playsound(bwastimejump, #"hash_591b69e6e55b5eb1");
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 7, eflags: 0x2 linked
// Checksum 0xe0185822, Offset: 0xc08
// Size: 0x174
function function_9f72eb8b(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(bwastimejump);
    earthquake(bwastimejump, 0.3, 2, self.origin, 2500);
    function_36e4ebd4(bwastimejump, #"hash_28f3f7b037cdb4bc");
    if (isdefined(self) && isdefined(bwastimejump)) {
        self playsound(bwastimejump, #"hash_6916591c817c7bf8");
        a_players = getplayers(bwastimejump, undefined, self.origin, 2500);
        array::thread_all(a_players, &postfx::playpostfxbundle, #"hash_4bce2bc0fe1ee966");
        level thread function_36083e9a(bwastimejump, a_players);
    }
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 2, eflags: 0x2 linked
// Checksum 0x44b0ca73, Offset: 0xd88
// Size: 0x64
function function_36083e9a(*localclientnum, a_players) {
    wait(1);
    arrayremovevalue(a_players, undefined);
    array::thread_all(a_players, &postfx::exitpostfxbundle, #"hash_4bce2bc0fe1ee966");
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 7, eflags: 0x2 linked
// Checksum 0x7e5de425, Offset: 0xdf8
// Size: 0x18c
function function_cdc867b2(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwastimejump) {
        if (!isdefined(self.var_bb6d69f0)) {
            self.var_bb6d69f0 = playfx(fieldname, "sr/fx9_hvt_aether_portal_spawn", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
        }
        return;
    }
    if (isdefined(self.var_bb6d69f0)) {
        stopfx(fieldname, self.var_bb6d69f0);
        self.var_bb6d69f0 = undefined;
    }
    var_4776f2b8 = playfx(fieldname, "sr/fx9_hvt_aether_portal_close", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
    level thread function_2f3f5638(fieldname, var_4776f2b8);
}

// Namespace namespace_662ff671/namespace_662ff671
// Params 2, eflags: 0x2 linked
// Checksum 0x3c5cd04f, Offset: 0xf90
// Size: 0x42
function function_2f3f5638(localclientnum, var_4776f2b8) {
    wait(2);
    if (isdefined(var_4776f2b8)) {
        stopfx(localclientnum, var_4776f2b8);
        var_4776f2b8 = undefined;
    }
}

