// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\gib.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\renderoverridebundle.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\aat_shared.csc;

#namespace ammomod_brainrot;

// Namespace ammomod_brainrot/ammomod_brainrot
// Params 0, eflags: 0x2 linked
// Checksum 0xc4598ab3, Offset: 0x380
// Size: 0x2ac
function init_brainrot() {
    if (!is_true(level.aat_in_use)) {
        return;
    }
    aat::register("ammomod_brainrot", #"zmui/zm_ammomod_brainrot", "ui_icon_zombie_ammomod_brainrot_stacked");
    aat::register("ammomod_brainrot_1", #"zmui/zm_ammomod_brainrot", "ui_icon_zombie_ammomod_brainrot_stacked");
    aat::register("ammomod_brainrot_2", #"zmui/zm_ammomod_brainrot", "ui_icon_zombie_ammomod_brainrot_stacked");
    aat::register("ammomod_brainrot_3", #"zmui/zm_ammomod_brainrot", "ui_icon_zombie_ammomod_brainrot_stacked");
    aat::register("ammomod_brainrot_4", #"zmui/zm_ammomod_brainrot", "ui_icon_zombie_ammomod_brainrot_stacked");
    aat::register("ammomod_brainrot_5", #"zmui/zm_ammomod_brainrot", "ui_icon_zombie_ammomod_brainrot_stacked");
    clientfield::register("actor", "ammomod_brainrot", 1, 1, "int", &function_d500905a, 0, 0);
    clientfield::register("vehicle", "ammomod_brainrot", 1, 1, "int", &function_d500905a, 0, 0);
    clientfield::register("actor", "zm_ammomod_brainrot_exp", 1, 1, "counter", &function_1d8434b9, 0, 0);
    clientfield::register("vehicle", "zm_ammomod_brainrot_exp", 1, 1, "counter", &function_1d8434b9, 0, 0);
    clientfield::register("toplayer", "ammomod_brainrot_proc", 1, 1, "counter", &function_e437bd26, 1, 0);
}

// Namespace ammomod_brainrot/ammomod_brainrot
// Params 7, eflags: 0x2 linked
// Checksum 0x1e97dc0c, Offset: 0x638
// Size: 0x64
function function_e437bd26(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    playviewmodelfx(bwastimejump, #"hash_3538aa737ab364c7", "tag_fx1", 0);
}

// Namespace ammomod_brainrot/ammomod_brainrot
// Params 7, eflags: 0x2 linked
// Checksum 0x8fb64855, Offset: 0x6a8
// Size: 0x544
function function_d500905a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self renderoverridebundle::function_c8d97b8e(fieldname, #"zm_friendly", #"hash_4e9065fcc3da0f7f");
    if (bwastimejump) {
        self setdrawname(#"hash_3bbbc2abb11e8ec1", 1);
        if (!gibclientutils::isgibbed(fieldname, self, 8)) {
            if (isdefined(self.archetype)) {
                switch (self.archetype) {
                case #"raz":
                    if (isdefined(self gettagorigin("j_head"))) {
                        self.var_d59aa7bb = util::playfxontag(fieldname, "zm_weapons/fx9_aat_brain_rot_lvl1_mc_raz_eye", self, "j_head");
                    }
                    break;
                case #"avogadro":
                    if (isdefined(self gettagorigin("j_head"))) {
                        self.var_d59aa7bb = util::playfxontag(fieldname, "zm_weapons/fx9_aat_brain_rot_lvl1_mc_avo_eye", self, "j_head");
                    }
                    break;
                case #"mimic":
                    if (isdefined(self gettagorigin("j_head"))) {
                        self.var_d59aa7bb = util::playfxontag(fieldname, "zm_weapons/fx9_aat_brain_rot_lvl1_mc_mimic_eye", self, "j_head");
                    }
                    break;
                case #"zombie_dog":
                    if (isdefined(self gettagorigin("j_eyeball_le"))) {
                        if (self.var_9fde8624 === #"hash_28e36e7b7d5421f") {
                            self.var_d59aa7bb = util::playfxontag(fieldname, "zm_weapons/fx9_aat_brain_rot_lvl1_mc_hound_hell_eye", self, "j_eyeball_le");
                        }
                        if (self.var_9fde8624 === #"hash_2a5479b83161cb35") {
                            self.var_d59aa7bb = util::playfxontag(fieldname, "zm_weapons/fx9_aat_brain_rot_lvl1_mc_hound_plague_eye", self, "j_eyeball_le");
                        }
                    }
                    break;
                default:
                    if (isdefined(self gettagorigin("j_eyeball_le"))) {
                        self.var_d59aa7bb = util::playfxontag(fieldname, "zm_weapons/fx9_aat_brain_rot_lvl1_mc_eye", self, "j_eyeball_le");
                    }
                    break;
                }
            }
        }
        if (isdefined(self gettagorigin("j_spine4"))) {
            self.var_6e431702 = util::playfxontag(fieldname, "zm_weapons/fx9_aat_brain_rot_lvl1_mc_torso", self, "j_spine4");
        }
        if (!isdefined(self.var_85f16cb5)) {
            self playsound(fieldname, #"hash_2d155a1b76096d88");
            self.var_85f16cb5 = self playloopsound(#"hash_530331283b555ef9");
        }
        if (isdefined(self.var_5da36454)) {
            self [[ self.var_5da36454 ]](fieldname, bwastimejump);
        }
        if (self function_d2503806(#"hash_30651f363ef055e9")) {
            self stoprenderoverridebundle(#"hash_30651f363ef055e9");
        }
        return;
    }
    if (isdefined(self.var_d59aa7bb)) {
        stopfx(fieldname, self.var_d59aa7bb);
        self.var_d59aa7bb = undefined;
    }
    if (isdefined(self.var_8a31e8f)) {
        stopfx(fieldname, self.var_8a31e8f);
        self.var_8a31e8f = undefined;
    }
    if (isdefined(self.var_6e431702)) {
        stopfx(fieldname, self.var_6e431702);
        self.var_6e431702 = undefined;
    }
    if (isdefined(self.var_85f16cb5)) {
        self stoploopsound(self.var_85f16cb5);
        self.var_85f16cb5 = undefined;
    }
    if (isdefined(self.var_5da36454)) {
        self [[ self.var_5da36454 ]](fieldname, bwastimejump);
    }
}

// Namespace ammomod_brainrot/ammomod_brainrot
// Params 2, eflags: 0x0
// Checksum 0xc531cd01, Offset: 0xbf8
// Size: 0x70
function function_b9c917cc(localclientnum, *str_bundle) {
    if (!self function_ca024039() || is_true(level.var_dc60105c) || isigcactive(str_bundle)) {
        return false;
    }
    return true;
}

// Namespace ammomod_brainrot/ammomod_brainrot
// Params 7, eflags: 0x2 linked
// Checksum 0x6c5b2cf4, Offset: 0xc70
// Size: 0xa4
function function_1d8434b9(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(self gettagorigin("j_head"))) {
        util::playfxontag(bwastimejump, "zm_weapons/fx9_aat_brain_rot_lvl5_aoe", self, "j_head");
    }
    self playsound(0, #"hash_70173e20912069e7");
}

