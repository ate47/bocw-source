// Atian COD Tools GSC CW decompiler test
#using script_197da0bce1da228f;
#using scripts\core_common\ai\systems\fx_character.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace archetype_mimic;

// Namespace archetype_mimic/archetype_mimic
// Params 0, eflags: 0x5
// Checksum 0x83b915d3, Offset: 0x2a8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"archetype_mimic", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace archetype_mimic/archetype_mimic
// Params 0, eflags: 0x0
// Checksum 0x5aaae274, Offset: 0x2f0
// Size: 0x2ec
function function_70a657d8() {
    if (!isarchetypeloaded(#"mimic")) {
        return;
    }
    clientfield::register("actor", "" + #"hash_2f1c34ea62d86c57", 1, 1, "int", &function_ef33ecb7, 0, 0);
    clientfield::register("toplayer", "mimic_force_stream", 1, 1, "int", &function_1fc8d7ca, 0, 0);
    clientfield::register("actor", "mimic_emerge_fx", 1, 1, "int", &function_807a046, 0, 0);
    clientfield::register("toplayer", "mimic_attack_hit", 1, 1, "int", &mimic_attack_hit, 0, 0);
    clientfield::register("toplayer", "mimic_grab_hit", 1, 1, "int", &function_309d67f9, 0, 0);
    clientfield::register("actor", "mimic_weakpoint_fx", 1, 1, "int", &function_bd5297e4, 0, 0);
    clientfield::register("scriptmover", "mimic_prop_lure_fx", 16000, 1, "int", &function_1c6775d4, 0, 0);
    clientfield::register("actor", "mimic_death_gib_fx", 1, 1, "int", &function_9d4b7144, 0, 0);
    clientfield::register("toplayer", "mimic_bite_hit", 16000, 1, "counter", &function_90fb7f1f, 0, 0);
    ai::add_archetype_spawn_function(#"mimic", &function_c50aa4b2);
}

// Namespace archetype_mimic/archetype_mimic
// Params 1, eflags: 0x0
// Checksum 0x111eabb9, Offset: 0x5e8
// Size: 0x2c
function function_c50aa4b2(localclientnum) {
    self fxclientutils::playfxbundle(localclientnum, self, self.fxdef);
}

// Namespace archetype_mimic/archetype_mimic
// Params 7, eflags: 0x0
// Checksum 0x23c13294, Offset: 0x620
// Size: 0x180
function function_ef33ecb7(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (self.archetype !== #"mimic") {
        return;
    }
    self util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    foreach (bone in [7:"j_tentacle_04_ri", 6:"j_tentacle_04_le", 5:"j_tentacle_03_ri", 4:"j_tentacle_03_le", 3:"j_tentacle_02_ri", 2:"j_tentacle_02_le", 1:"j_tentacle_01_ri", 0:"j_tentacle_01_le"]) {
        self function_d309e55a(bone, bwastimejump);
    }
}

// Namespace archetype_mimic/archetype_mimic
// Params 7, eflags: 0x0
// Checksum 0x869c328b, Offset: 0x7a8
// Size: 0x8c
function function_1fc8d7ca(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        util::lock_model(#"hash_5e75036cb47cbc1");
    } else {
        util::unlock_model(#"hash_5e75036cb47cbc1");
    }
}

// Namespace archetype_mimic/archetype_mimic
// Params 7, eflags: 0x0
// Checksum 0xaaa0cefd, Offset: 0x840
// Size: 0xe4
function function_807a046(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    var_e50d2931 = self.origin;
    var_675c08c1 = anglestoforward(self.angles);
    playfx(bwastimejump, "zm_ai/fx9_mimic_emerge_base", var_e50d2931, var_675c08c1);
    playsound(bwastimejump, #"hash_4f37c259b7d6bd76", var_e50d2931 + vectorscale((0, 0, 1), 20));
    playsound(bwastimejump, #"hash_10d33a1d9ba04133", var_e50d2931);
}

// Namespace archetype_mimic/archetype_mimic
// Params 7, eflags: 0x0
// Checksum 0x787c77bf, Offset: 0x930
// Size: 0x74
function mimic_attack_hit(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        earthquake(fieldname, 0.5, 0.8, self.origin, 500);
    }
}

// Namespace archetype_mimic/archetype_mimic
// Params 7, eflags: 0x0
// Checksum 0x2b8d5980, Offset: 0x9b0
// Size: 0xe6
function function_309d67f9(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    util::waittill_dobj(fieldname);
    if (bwastimejump) {
        if (!isdefined(self.var_a0d6f528)) {
            self.var_a0d6f528 = playfxoncamera(fieldname, #"hash_37726d87afd1fe2", (0, 0, 0), (1, 0, 0));
        }
    } else if (isdefined(self.var_a0d6f528)) {
        stopfx(fieldname, self.var_a0d6f528);
        self.var_a0d6f528 = undefined;
    }
}

// Namespace archetype_mimic/archetype_mimic
// Params 7, eflags: 0x0
// Checksum 0xf8f3aeb7, Offset: 0xaa0
// Size: 0xd4
function function_bd5297e4(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwastimejump === 1) {
        self.var_bd5297e4 = util::playfxontag(fieldname, "zm_ai/fx9_mimic_weak_point", self, "tag_weakpoint_mouth");
    }
    if (bwastimejump === 0 && isdefined(self.var_bd5297e4)) {
        stopfx(fieldname, self.var_bd5297e4);
    }
}

// Namespace archetype_mimic/archetype_mimic
// Params 7, eflags: 0x0
// Checksum 0xa58474e8, Offset: 0xb80
// Size: 0xf4
function function_1c6775d4(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self)) {
        return;
    }
    if (bwastimejump) {
        if (!self function_d2503806("rob_sr_item_gold")) {
            self playrenderoverridebundle("rob_sr_item_gold");
        }
    } else {
        if (self function_d2503806("rob_sr_item_gold")) {
            self function_f6e99a8d("rob_sr_item_gold");
        }
        playfx(fieldname, #"zm_ai/fx9_mimic_prop_spawn_out", self.origin);
    }
}

// Namespace archetype_mimic/archetype_mimic
// Params 7, eflags: 0x0
// Checksum 0xfc42e82, Offset: 0xc80
// Size: 0x46
function function_9d4b7144(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self)) {
        return;
    }
}

// Namespace archetype_mimic/archetype_mimic
// Params 7, eflags: 0x0
// Checksum 0x9a865a45, Offset: 0xcd0
// Size: 0xcc
function function_90fb7f1f(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    util::waittill_dobj(bwastimejump);
    if (!isdefined(self)) {
        return;
    }
    var_86b3d9b7 = #"hash_5e666010ee5cb822";
    if (self postfx::function_556665f2(var_86b3d9b7)) {
        self postfx::stoppostfxbundle(var_86b3d9b7);
    }
    self postfx::playpostfxbundle(var_86b3d9b7);
}
