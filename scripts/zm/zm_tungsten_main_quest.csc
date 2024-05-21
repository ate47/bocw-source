// Atian COD Tools GSC CW decompiler test
#using script_5ef14bd74fdef7c6;
#using scripts\zm_common\zm_utility.csc;
#using scripts\zm_common\objective_manager.csc;
#using script_5458797d0d475250;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\beam_shared.csc;

#namespace zm_tungsten_main_quest;

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x95139b51, Offset: 0x938
// Size: 0x98c
function init() {
    clientfield::register("actor", "" + #"abom_swallow", 1, 1, "counter", &abom_swallow, 0, 0);
    clientfield::register("actor", "" + #"hash_11839f68b17da97a", 1, 1, "counter", &function_651b7e42, 0, 0);
    clientfield::register("actor", "" + #"hash_3b24d38fe21de8fd", 1, 1, "int", &function_18f73941, 0, 0);
    clientfield::register("actor", "" + #"hash_6f2c45f149dc1e5d", 1, 1, "counter", &function_87208d06, 0, 0);
    clientfield::register("missile", "" + #"crystal_grenade", 1, 1, "int", &function_e095cbef, 0, 0);
    clientfield::register("toplayer", "fogofwareffects", 1, 1, "int", undefined, 0, 1);
    clientfield::register("toplayer", "" + #"hash_1509a2aa5d40a44c", 1, 1, "int", &function_b0f10fd9, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_55456562f670860", 1, 1, "int", &function_9b05e2c0, 0, 0);
    clientfield::register("scriptmover", "" + #"player_barrier", 1, 1, "int", &function_e495fd3e, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_5b48c7bf93fc3a4b", 1, 1, "int", &function_f621928c, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_4b03e692ae3dfa64", 1, 1, "counter", &function_a84c11f7, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_6ba3e6fd544c34a5", 1, 2, "int", &function_5c05a55e, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_2ad0f9c6cbc5eed", 1, 1, "counter", &function_204364c2, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_77d7a6f3a8842303", 1, 1, "int", &function_f9ecb065, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_36fbe21deb0433d8", 1, 1, "counter", &function_2117533c, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_54a76d632c7c51", 1, 1, "int", &crystal_fx, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_4d2911e91cdb1e91", 1, 1, "int", &function_bb8c1f5e, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_1b9d966608efb40e", 1, 1, "counter", &function_8d5df064, 0, 0);
    clientfield::register("scriptmover", "" + #"crystal_shard", 1, 1, "int", &function_7c1ee869, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_5e0a6fc6597e6e03", 1, 1, "counter", &function_5066198d, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_41e8bfe605fbbfe6", 1, 1, "counter", &function_d147715f, 0, 0);
    clientfield::register("vehicle", "" + #"hash_485fe8f642043f78", 1, 1, "counter", &function_e2f489c, 0, 0);
    clientfield::register("vehicle", "" + #"gp_spawn", 1, 1, "counter", &function_26e6cccc, 0, 0);
    clientfield::register("world", "" + #"hash_2509c24cd62ed5bc", 1, 1, "int", &function_e9a10998, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_419ce223196785ef", 1, 1, "counter", &function_a5f3bfc2, 0, 0);
    clientfield::register("world", "" + #"hash_5940bc2717a75c96", 1, 1, "int", &function_aecabc8a, 0, 0);
    clientfield::register("world", "" + #"hash_7b50097ac4242bc9", 1, getminbitcountfornum(3), "int", &function_6b85db33, 0, 0);
    level.var_9b6e1cc9 = zm_tungsten_title_cards::register();
    if (!zm_utility::is_ee_enabled()) {
        return;
    }
    callback::on_localclient_connect(&on_localclient_connect);
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xf8beda30, Offset: 0x12d0
// Size: 0x24
function on_localclient_connect(localclientnum) {
    level thread function_347f52dd(localclientnum);
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 1, eflags: 0x6 linked
// Checksum 0x62b5055d, Offset: 0x1300
// Size: 0xf4
function private function_347f52dd(localclientnum) {
    self notify("49500164d82f5c49");
    self endon("49500164d82f5c49");
    var_ef2f4cec = spawnstruct();
    var_ef2f4cec.var_e450444f = 0;
    while (true) {
        currentplayer = function_5c10bd79(localclientnum);
        if (!isdefined(currentplayer)) {
            waitframe(1);
            continue;
        }
        b_state = currentplayer clientfield::get_to_player("fogofwareffects");
        if (var_ef2f4cec.var_e450444f !== b_state) {
            var_ef2f4cec function_d45dd62(localclientnum, b_state, currentplayer);
            var_ef2f4cec.var_e450444f = b_state;
        }
        waitframe(1);
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 3, eflags: 0x6 linked
// Checksum 0xfbd21d83, Offset: 0x1400
// Size: 0x196
function private function_d45dd62(localclientnum, b_state, currentplayer) {
    if (b_state == 1) {
        if (!isdefined(currentplayer.var_103fdf58)) {
            playsound(localclientnum, #"hash_7b5289d48cc02d77", (0, 0, 0));
            currentplayer.var_103fdf58 = currentplayer playloopsound("evt_sr_phase_player_lp");
        }
        if (!function_148ccc79(localclientnum, #"hash_2964f82e2c05c8b8")) {
            function_a837926b(localclientnum, #"hash_2964f82e2c05c8b8");
            self.var_7bd7bdc8 = #"hash_2964f82e2c05c8b8";
        }
        return;
    }
    if (isdefined(currentplayer.var_103fdf58)) {
        playsound(localclientnum, #"hash_37b1613c2cb4c8f3", (0, 0, 0));
        currentplayer stoploopsound(currentplayer.var_103fdf58);
        currentplayer.var_103fdf58 = undefined;
    }
    if (isdefined(self.var_7bd7bdc8)) {
        if (function_148ccc79(localclientnum, self.var_7bd7bdc8)) {
            function_24cd4cfb(localclientnum, self.var_7bd7bdc8);
        }
        self.var_7bd7bdc8 = undefined;
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x44bdbb65, Offset: 0x15a0
// Size: 0xdc
function function_9b05e2c0(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (self.model === #"hash_1d9e6c13811400c6" || self.model === #"hash_1d9e6b138113ff13") {
        var_ee6bcd51 = #"hash_1a6400b20e8126bf";
    } else {
        var_ee6bcd51 = #"hash_4a9cb80afea6f8cb";
    }
    if (bwastimejump) {
        self playrenderoverridebundle(var_ee6bcd51);
        return;
    }
    self stoprenderoverridebundle(var_ee6bcd51);
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x4d8bce6a, Offset: 0x1688
// Size: 0x244
function function_f9ecb065(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self useanimtree("generic");
    if (bwastimejump == 1) {
        self setanim("p9_fxanim_zm_tungsten_pn_full_ani");
        if (isdefined(self.var_f1c4246e)) {
            self stoploopsound(self.var_f1c4246e);
        }
        self.var_67819d90 = util::playfxontag(fieldname, "maps/zm_tungsten/fx9_zm_tungsten_neutralizer_loop", self, "tag_origin");
        self playsound(fieldname, #"hash_1538fd1c5b0e4f80");
        self.var_eb1b20d = self playloopsound(#"hash_3d77ba3fcee6d3a5");
        return;
    }
    self notify(#"deactivate");
    self clearanim("p9_fxanim_zm_tungsten_pn_full_ani", 1);
    if (isdefined(self.var_67819d90)) {
        stopfx(fieldname, self.var_67819d90);
        self.var_67819d90 = undefined;
    }
    self playsound(fieldname, #"hash_3586b76b932a0795");
    if (isdefined(self.var_eb1b20d)) {
        self stoploopsound(self.var_eb1b20d);
        self.var_eb1b20d = undefined;
    }
    if (isdefined(self.var_ee6bcd51) && isdefined(self)) {
        self function_78233d29(self.var_ee6bcd51, "", "Alpha", 0);
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0xabd8c677, Offset: 0x18d8
// Size: 0xde
function function_8d5df064(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.n_fx_id = playfx(bwastimejump, "maps/zm_tungsten/fx9_zm_catalyzed_crystal_ambient", self.origin);
    self.var_469b2e53 = self playloopsound(#"hash_7bd1dac66847ea05");
    self waittill(#"death");
    if (isdefined(self.n_fx_id)) {
        killfx(bwastimejump, self.n_fx_id);
        self.n_fx_id = undefined;
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x71a5399d, Offset: 0x19c0
// Size: 0x64
function function_5066198d(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::playfxontag(bwastimejump, "maps/zm_tungsten/fx9_zm_wall_destruction_c4_exp", self, "tag_origin");
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x9b13c59b, Offset: 0x1a30
// Size: 0x64
function function_d147715f(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::playfxontag(bwastimejump, "maps/zm_tungsten/fx9_zm_abom_hit_wall_smk", self, "tag_origin");
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x21cc35fb, Offset: 0x1aa0
// Size: 0x10e
function function_7c1ee869(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_50573acf = util::playfxontag(fieldname, "maps/zm_tungsten/fx9_zm_crystal_grenade_ambient", self, "tag_origin");
        self.var_141a532a = self playloopsound(#"hash_1ef3679818a3b94");
        return;
    }
    if (isdefined(self.var_50573acf)) {
        stopfx(fieldname, self.var_50573acf);
        self.var_50573acf = undefined;
    }
    if (isdefined(self.var_141a532a)) {
        self stoploopsound(self.var_141a532a);
        self.var_141a532a = undefined;
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x73801dbb, Offset: 0x1bb8
// Size: 0xd4
function function_e095cbef(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_fac7e686 = util::playfxontag(fieldname, "maps/zm_tungsten/fx9_zm_crystal_grenade_ambient", self, "tag_origin");
        return;
    }
    if (isdefined(self.var_fac7e686)) {
        stopfx(fieldname, self.var_fac7e686);
        self.var_fac7e686 = undefined;
    }
    util::playfxontag(fieldname, "maps/zm_tungsten/fx9_zm_crystal_grenade_exp", self, "tag_origin");
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x7aacb824, Offset: 0x1c98
// Size: 0x17c
function function_bb8c1f5e(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_a65735b6 = util::playfxontag(fieldname, "maps/zm_tungsten/fx9_zm_dark_crystals_ambient", self, "tag_origin");
        soundloopemitter(#"hash_1aebc516d61c565c", self.origin + (0, 0, 30));
        return;
    }
    if (isdefined(self.var_a65735b6)) {
        stopfx(fieldname, self.var_a65735b6);
        self.var_a65735b6 = undefined;
    }
    soundstoploopemitter(#"hash_1aebc516d61c565c", self.origin + (0, 0, 30));
    playsound(fieldname, #"hash_10e0a1ad837bef3c", self.origin + (0, 0, 30));
    util::playfxontag(fieldname, "maps/zm_tungsten/fx9_zm_dark_aether_crystals_exp", self, "tag_origin");
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x34d97860, Offset: 0x1e20
// Size: 0xb4
function abom_swallow(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self setanim(#"aib_t9_zm_abom_swallow_crystal_01");
    wait(getanimlength("aib_t9_zm_abom_swallow_crystal_01"));
    if (isalive(self)) {
        self clearanim("aib_t9_zm_abom_swallow_crystal_01", 0.2);
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0xd3206647, Offset: 0x1ee0
// Size: 0x134
function crystal_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_a5ded638 = util::playfxontag(fieldname, "maps/zm_tungsten/fx9_zm_phase_catalyzed_crystal_ambient", self, "tag_origin");
        self.var_469b2e53 = self playloopsound(#"hash_1c52e7ca3cde1126");
        return;
    }
    if (isdefined(self.var_a5ded638)) {
        stopfx(fieldname, self.var_a5ded638);
        self.var_a5ded638 = undefined;
    }
    if (isdefined(self.var_469b2e53)) {
        self stoploopsound(self.var_469b2e53);
        self.var_469b2e53 = undefined;
    }
    util::playfxontag(fieldname, "maps/zm_tungsten/fx9_zm_phase_catalyzed_crystal_breaking", self, "tag_origin");
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x9cae4f96, Offset: 0x2020
// Size: 0xe6
function function_204364c2(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::playfxontag(bwastimejump, "sr/fx9_obj_secure_rocket_essence_absorb", self, "tag_monitor");
    self playsound(bwastimejump, #"hash_2fae425a6d8e1256");
    if (isdefined(self.var_7d8e0749) && self.var_7d8e0749 >= 0) {
        self.var_7d8e0749 += 40;
        if (self.var_7d8e0749 > 100) {
            self.var_7d8e0749 = 100;
        }
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x37a11888, Offset: 0x2110
// Size: 0x64
function function_651b7e42(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::playfxontag(bwastimejump, "maps/zm_tungsten/fx9_zm_zombie_dark_black_ambients", self, "tag_origin");
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x34be31d4, Offset: 0x2180
// Size: 0x1d6
function function_a84c11f7(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self.var_ee6bcd51 = "rob_zm_fuel_tank_script";
    var_1105889c = 0;
    self.var_38fee6d5 = 100;
    self.var_7d8e0749 = self.var_38fee6d5;
    self playrenderoverridebundle(self.var_ee6bcd51);
    self function_78233d29(self.var_ee6bcd51, "", "Brightness", 1);
    self function_78233d29(self.var_ee6bcd51, "", "Alpha", var_1105889c);
    self playsound(bwastimejump, #"hash_61951b05c7932ba6");
    self.var_f1c4246e = self playloopsound(#"hash_22d6d61841f2b48a");
    while (true) {
        wait(0.5);
        var_1105889c += 0.01;
        self function_78233d29(self.var_ee6bcd51, "", "Alpha", var_1105889c);
        if (var_1105889c >= 1) {
            var_1105889c = 1;
            break;
        }
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x61a800a4, Offset: 0x2360
// Size: 0x10c
function function_2117533c(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"deactivate");
    var_1105889c = self.var_7d8e0749 / self.var_38fee6d5;
    if (isdefined(self.var_7d8e0749) && self.var_7d8e0749 > 0) {
        self.var_7d8e0749 -= 1;
        if (self.var_7d8e0749 < 15) {
            self.var_7d8e0749 = 15;
        }
    }
    if (isdefined(self.var_7d8e0749)) {
        var_1105889c = self.var_7d8e0749 / self.var_38fee6d5;
        self function_78233d29(self.var_ee6bcd51, "", "Alpha", var_1105889c);
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x4d681865, Offset: 0x2478
// Size: 0x34e
function function_5c05a55e(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(self.var_b235555f)) {
        killfx(binitialsnap, self.var_b235555f);
        self.var_b235555f = undefined;
    }
    if (isdefined(self.var_b880246b)) {
        self stoploopsound(self.var_b880246b);
        self.var_b880246b = undefined;
    }
    if (bwastimejump == 1) {
        self.var_b235555f = util::playfxontag(binitialsnap, "sr/fx9_mq_phase_neutralizer_shield", self, "tag_origin");
        self.var_b880246b = self playloopsound(#"hash_28d37680253cb1ae");
        if (fieldname == 2 || fieldname == 3) {
            self playsound(binitialsnap, #"hash_4bc133d528c81c3");
        }
        return;
    }
    if (bwastimejump == 2) {
        self.var_b235555f = util::playfxontag(binitialsnap, "maps/zm_tungsten/fx9_zm_tungsten_phase_neutralizer_shield_large", self, "tag_origin");
        self.var_b880246b = self playloopsound(#"hash_6b0024b500e39996");
        if (fieldname == 1) {
            self playsound(binitialsnap, #"hash_37821c226fc8accc");
        } else if (fieldname == 3) {
            self playsound(binitialsnap, #"hash_4bc133d528c81c3");
        }
        return;
    }
    if (bwastimejump == 3) {
        self.var_b235555f = util::playfxontag(binitialsnap, "maps/zm_tungsten/fx9_zm_tungsten_phase_neutralizer_shield_big", self, "tag_origin");
        self.var_b880246b = self playloopsound(#"hash_40060e2917f3fb33");
        if (fieldname == 1 || fieldname == 2) {
            self playsound(binitialsnap, #"hash_37821c226fc8accc");
        }
        return;
    }
    if (isdefined(self.var_b235555f)) {
        killfx(binitialsnap, self.var_b235555f);
        self.var_b235555f = undefined;
    }
    if (isdefined(self.var_b880246b)) {
        self stoploopsound(self.var_b880246b);
        self.var_b880246b = undefined;
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x7e7a38fd, Offset: 0x27d0
// Size: 0x15c
function function_f621928c(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_1b7a4481 = util::playfxontag(fieldname, "maps/zm_tungsten/fx9_zm_crystals_orbs_trail", self, "tag_origin");
        self.var_7d2ad612 = self playloopsound(#"hash_227bf6d9c3bba85");
        return;
    }
    if (isdefined(self.var_1b7a4481)) {
        stopfx(fieldname, self.var_1b7a4481);
        self.var_1b7a4481 = undefined;
    }
    if (isdefined(self.var_7d2ad612)) {
        self stoploopsound(self.var_7d2ad612);
        self.var_7d2ad612 = undefined;
    }
    playsound(fieldname, #"hash_98b4462bc702629", self.origin);
    util::playfxontag(fieldname, "maps/zm_tungsten/fx9_zm_crystals_orbs_exp", self, "tag_origin");
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0xef7534ca, Offset: 0x2938
// Size: 0x9c
function function_e2f489c(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::playfxontag(bwastimejump, "explosions/fx9_vexp_rcxd_exp", self, "tag_origin");
    playsound(bwastimejump, #"hash_49567ef6e7579f2", self.origin + (0, 0, 20));
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x2ade818f, Offset: 0x29e0
// Size: 0x164
function function_26e6cccc(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    util::playfxontag(bwastimejump, "maps/zm_tungsten/fx9_zm_rcxd_born", self, "tag_origin");
    playsound(bwastimejump, #"hash_828435c0edc0e5c", self.origin + (0, 0, 20));
    if (self.model === #"hash_7dde995ef49216f") {
        n_delay = 1;
        var_b978a3c9 = 0;
        wait(20);
        while (true) {
            if (isdefined(self)) {
                self playsound(bwastimejump, "mpl_veh_recon_alert");
                wait(n_delay);
                var_b978a3c9++;
                if (var_b978a3c9 === 3) {
                    n_delay = 0.5;
                } else if (var_b978a3c9 === 6) {
                    n_delay = 0.1;
                }
            }
            waitframe(1);
        }
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0xfaacfb59, Offset: 0x2b50
// Size: 0xae
function function_e495fd3e(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump === 1) {
        self.var_52240bf2 = util::playfxontag(fieldname, "maps/zm_tungsten/fx9_zm_energy_barrier_area", self, "tag_origin");
        return;
    }
    if (isdefined(self.var_52240bf2)) {
        stopfx(fieldname, self.var_52240bf2);
        self.var_52240bf2 = undefined;
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0xc1a3394a, Offset: 0x2c08
// Size: 0x1ae
function function_b0f10fd9(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        if (function_65b9eb0f(fieldname)) {
            return;
        }
        if (self isplayer()) {
            self postfx::playpostfxbundle(#"hash_155ea60c5e7f292e");
            self postfx::playpostfxbundle(#"hash_30968a1635fb3366");
            self function_116b95e5(#"hash_155ea60c5e7f292e", #"inner mask", 0.3);
            self function_116b95e5(#"hash_155ea60c5e7f292e", #"outer mask", 0.8);
            self.var_a74ce90c = 1;
        }
        return;
    }
    if (function_65b9eb0f(fieldname)) {
        return;
    }
    if (self isplayer()) {
        self postfx::exitpostfxbundle(#"hash_155ea60c5e7f292e");
        self postfx::exitpostfxbundle(#"hash_30968a1635fb3366");
        self.var_a74ce90c = undefined;
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x885cebe8, Offset: 0x2dc0
// Size: 0x74
function function_87208d06(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    wait(3);
    if (isdefined(self)) {
        util::playfxontag(bwastimejump, "zm_ai/fx9_abom_gulp_crystal_ambient", self, "j_tail_neck");
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0xf5551fa1, Offset: 0x2e40
// Size: 0x25c
function function_18f73941(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        str_fx_tag = isdefined(self gettagorigin("j_spine4")) ? "j_spine4" : "tag_origin";
        var_9b69599b = struct::get("gp_machine");
        var_bacf9f1e = struct::get("gp_machine_fx");
        if (isdefined(var_9b69599b)) {
            var_23563ba5 = util::spawn_model(fieldname, "tag_origin", var_9b69599b.origin);
        }
        if (isdefined(var_bacf9f1e)) {
            var_ea7f8dca = util::spawn_model(fieldname, "tag_origin", var_bacf9f1e.origin, var_bacf9f1e.angles);
        }
        if (isdefined(var_23563ba5)) {
            self.beam_id = self beam::launch(self, str_fx_tag, var_23563ba5, "tag_origin", "beam9_zm_aat_dead_wire_arc");
            playsound(fieldname, #"hash_44ae4884e8776cc", var_23563ba5.origin);
            self thread function_149bbdd9(fieldname, str_fx_tag, var_23563ba5, "tag_origin", 3);
        }
        wait(0.1);
        if (isdefined(var_ea7f8dca)) {
            var_ea7f8dca.n_fx_id = util::playfxontag(fieldname, "maps/zm_tungsten/fx9_zm_arcade_cabinet_elec_spark", var_ea7f8dca, "tag_origin");
            var_ea7f8dca thread function_695e2e56(fieldname);
        }
        return;
    }
    if (isdefined(self.beam_id)) {
        beam::kill(self, str_fx_tag, var_23563ba5, "tag_origin", "beam9_zm_aat_dead_wire_arc");
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xf9fa3d71, Offset: 0x30a8
// Size: 0x46
function function_695e2e56(localclientnum) {
    wait(6);
    if (isdefined(self.n_fx_id)) {
        stopfx(localclientnum, self.n_fx_id);
        self.n_fx_id = undefined;
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 5, eflags: 0x2 linked
// Checksum 0x308584a4, Offset: 0x30f8
// Size: 0x74
function function_149bbdd9(*localclientnum, str_fx_tag, var_23563ba5, var_94df3b7b, waittime) {
    level endon(#"game_ended");
    wait(waittime);
    if (isdefined(self)) {
        beam::kill(self, str_fx_tag, var_23563ba5, var_94df3b7b, "beam9_zm_aat_dead_wire_arc");
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x4722848b, Offset: 0x3178
// Size: 0xe4
function function_e9a10998(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        forcestreamxmodel(#"hash_2370a0aa7155ca07");
        function_3385d776(#"hash_122a51c7a09dab6b");
    } else {
        stopforcestreamingxmodel(#"hash_2370a0aa7155ca07");
        function_c22a1ca2(#"hash_122a51c7a09dab6b");
    }
    level thread function_38b121cf(bwastimejump);
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xf72f0559, Offset: 0x3268
// Size: 0x1c0
function function_38b121cf(newval) {
    var_f1f2f161 = ["gfx8_shockwave_elec_anim_em_pb_i16", "gfx8_shockwave_anim_em_gp_i06", "gfx9_fire_sm_lick_short_curl_anim_hdrg_exp_purple", "gfx9_fire_md_lick_deplete_anim_purple_hdrg", "gfx9_fire_md_lick_dissipate_anim_purple_hdrg", "gfx9_fire_md_lick_deplete_anim_rof_hdrg", "gfx9_fire_md_lick_dissipate_anim_rof_hdrg", "gfx9_fire_sm_base_anim_hdrg_exp_purple", "gfx8_smk_md_thick_lobe_anim_lit", "gfx8_smk_md_thick_scatter_anim_lit", "gfx9_elec_lightning_circle_energy_em_gp_i06", "gfx_lightning_beam_em_pb_i16", "gfx_lightning_cloud_em_gp_i06", "gfx8_fog_slow_lg_anim_em_gp_i06_full_lite", "gfx8_fog_slow_lg_anim_lit", "gfx_web_patch_em_gp_i06"];
    foreach (var_53edfe53 in var_f1f2f161) {
        if (newval) {
            forcestreammaterial(var_53edfe53);
            continue;
        }
        stopforcestreamingmaterial(var_53edfe53);
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x867f4ce1, Offset: 0x3430
// Size: 0x5c
function function_a5f3bfc2(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self playrenderoverridebundle(#"hash_497cc7cd78d13d4e");
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0xcf0a5f2f, Offset: 0x3498
// Size: 0x220
function function_aecabc8a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level.var_3f41835d)) {
        level.var_3f41835d = getdynentarray(#"hash_44bc86e237774e32", 1);
    }
    if (!isdefined(level.var_55f82e4e)) {
        level.var_55f82e4e = getdynentarray(#"hash_58429c810ec1d78a", 1);
    }
    if (bwastimejump == 1) {
        var_a6e81c57 = arraycombine(level.var_3f41835d, level.var_55f82e4e);
        foreach (var_aa3984f0 in var_a6e81c57) {
            function_e2a06860(fieldname, var_aa3984f0, 2);
            function_75d53026(var_aa3984f0);
        }
        return;
    }
    foreach (var_aa3984f0 in level.var_3f41835d) {
        function_e2a06860(fieldname, var_aa3984f0, 0);
    }
}

// Namespace zm_tungsten_main_quest/zm_tungsten_main_quest
// Params 7, eflags: 0x2 linked
// Checksum 0x205aa3f7, Offset: 0x36c0
// Size: 0x4ec
function function_6b85db33(*localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump === 1) {
        level.var_5ac1ae9c = 1;
        forcestreamxmodel(#"hash_2676ba5ee50e609b");
        forcestreamxmodel(#"hash_2676bf5ee50e691a");
        forcestreamxmodel(#"hash_2676be5ee50e6767");
        forcestreamxmodel(#"hash_5d5d8e4791668a70");
        forcestreamxmodel(#"hash_5d5d8f4791668c23");
        forcestreamxmodel(#"hash_5d5d9447916694a2");
        forcestreamxmodel(#"hash_5d5d954791669655");
        forcestreamxmodel(#"hash_5d5d92479166913c");
    } else if (fieldname === 1) {
        stopforcestreamingxmodel(#"hash_2676ba5ee50e609b");
        stopforcestreamingxmodel(#"hash_2676bf5ee50e691a");
        stopforcestreamingxmodel(#"hash_2676be5ee50e6767");
        stopforcestreamingxmodel(#"hash_5d5d8e4791668a70");
        stopforcestreamingxmodel(#"hash_5d5d8f4791668c23");
        stopforcestreamingxmodel(#"hash_5d5d9447916694a2");
        stopforcestreamingxmodel(#"hash_5d5d954791669655");
        stopforcestreamingxmodel(#"hash_5d5d92479166913c");
    }
    if (bwastimejump === 2) {
        forcestreamxmodel(#"hash_6ecb1d8b25490379");
        forcestreamxmodel(#"hash_6ecb1b8b25490013");
    } else if (fieldname === 2) {
        stopforcestreamingxmodel(#"hash_6ecb1d8b25490379");
        stopforcestreamingxmodel(#"hash_6ecb1b8b25490013");
    }
    if (bwastimejump === 3) {
        forcestreamxmodel(#"hash_6ecb1d8b25490379");
        forcestreamxmodel(#"hash_6ecb1b8b25490013");
        forcestreamxmodel(#"hash_4f29ef57be52ff53");
        forcestreamxmodel(#"hash_77c9ad3e788f76e0");
        forcestreamxmodel(#"hash_4d930f46137443f5");
        forcestreamxmodel(#"hash_7dde0d6fcb87c79a");
        forcestreamxmodel(#"hash_54e30f7b1638eb6f");
        return;
    }
    if (fieldname === 3) {
        stopforcestreamingxmodel(#"hash_6ecb1d8b25490379");
        stopforcestreamingxmodel(#"hash_6ecb1b8b25490013");
        stopforcestreamingxmodel(#"hash_4f29ef57be52ff53");
        stopforcestreamingxmodel(#"hash_77c9ad3e788f76e0");
        stopforcestreamingxmodel(#"hash_4d930f46137443f5");
        stopforcestreamingxmodel(#"hash_7dde0d6fcb87c79a");
        stopforcestreamingxmodel(#"hash_54e30f7b1638eb6f");
    }
}

