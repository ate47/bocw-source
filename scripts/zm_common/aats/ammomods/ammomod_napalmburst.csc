// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\gib.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\aat_shared.csc;

#namespace ammomod_napalmburst;

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 0, eflags: 0x2 linked
// Checksum 0xc4a340ce, Offset: 0x650
// Size: 0xcfc
function init_napalmburst() {
    if (!is_true(level.aat_in_use)) {
        return;
    }
    aat::register("ammomod_napalmburst", #"zmui/zm_ammomod_napalmburst", "ui_icon_zombie_ammomod_napalmburst_stacked");
    aat::register("ammomod_napalmburst_1", #"zmui/zm_ammomod_napalmburst", "ui_icon_zombie_ammomod_napalmburst_stacked");
    aat::register("ammomod_napalmburst_2", #"zmui/zm_ammomod_napalmburst", "ui_icon_zombie_ammomod_napalmburst_stacked");
    aat::register("ammomod_napalmburst_3", #"zmui/zm_ammomod_napalmburst", "ui_icon_zombie_ammomod_napalmburst_stacked");
    aat::register("ammomod_napalmburst_4", #"zmui/zm_ammomod_napalmburst", "ui_icon_zombie_ammomod_napalmburst_stacked");
    aat::register("ammomod_napalmburst_5", #"zmui/zm_ammomod_napalmburst", "ui_icon_zombie_ammomod_napalmburst_stacked");
    clientfield::register("actor", "zm_ammomod_napalmburst_explosion", 1, 1, "counter", &function_c8e3a0dc, 0, 0);
    clientfield::register("vehicle", "zm_ammomod_napalmburst_explosion", 1, 1, "counter", &function_c8e3a0dc, 0, 0);
    clientfield::register("actor", "zm_ammomod_napalmburst_burn", 1, 1, "int", &function_f3b43353, 0, 0);
    clientfield::register("vehicle", "zm_ammomod_napalmburst_burn", 1, 1, "int", &function_2d64f265, 0, 0);
    clientfield::register("toplayer", "ammomod_napalmburst_proc", 1, 1, "counter", &function_15482148, 1, 0);
    function_c487d6b1(#"zombie", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_arm_left", "j_shoulder_le", 32);
    function_c487d6b1(#"zombie", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_arm_right", "j_shoulder_ri", 16);
    function_c487d6b1(#"zombie", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_head", "j_head", 8);
    function_c487d6b1(#"zombie", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_hip_left", "j_hip_le", 256);
    function_c487d6b1(#"zombie", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_hip_right", "j_hip_ri", 128);
    function_c487d6b1(#"zombie", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_leg_left", "j_knee_le", 256);
    function_c487d6b1(#"zombie", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_leg_right", "j_knee_ri", 128);
    function_c487d6b1(#"zombie", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_waist", "j_spinelower", undefined);
    function_c487d6b1(#"zombie", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_torso", "j_spine4", undefined);
    function_c487d6b1(#"zombie_dog", "zm_weapons/fx9_aat_burnination_lvl1_fire_hound_torso", "j_spine4", undefined);
    function_c487d6b1(#"raz", "zm_weapons/fx9_aat_burnination_lvl1_fire_raz_hip_left", "j_hip_le", 256);
    function_c487d6b1(#"raz", "zm_weapons/fx9_aat_burnination_lvl1_fire_raz_hip_right", "j_hip_ri", 128);
    function_c487d6b1(#"raz", "zm_weapons/fx9_aat_burnination_lvl1_fire_raz_leg_left", "j_knee_le", 256);
    function_c487d6b1(#"raz", "zm_weapons/fx9_aat_burnination_lvl1_fire_raz_leg_right", "j_knee_ri", 128);
    function_c487d6b1(#"raz", "zm_weapons/fx9_aat_burnination_lvl1_fire_raz_waist", "j_spinelower", undefined);
    function_c487d6b1(#"raz", "zm_weapons/fx9_aat_burnination_lvl1_fire_raz_torso", "j_spine4", undefined);
    function_c487d6b1(#"mimic", "zm_weapons/fx9_aat_burnination_lvl1_fire_raz_hip_left", "j_hip_le", 256);
    function_c487d6b1(#"mimic", "zm_weapons/fx9_aat_burnination_lvl1_fire_raz_hip_right", "j_hip_ri", 128);
    function_c487d6b1(#"mimic", "zm_weapons/fx9_aat_burnination_lvl1_fire_raz_leg_left", "j_knee_le", 256);
    function_c487d6b1(#"mimic", "zm_weapons/fx9_aat_burnination_lvl1_fire_raz_leg_right", "j_knee_ri", 128);
    function_c487d6b1(#"mimic", "zm_weapons/fx9_aat_burnination_lvl1_fire_raz_waist", "j_spinelower", undefined);
    function_c487d6b1(#"mimic", "zm_weapons/fx9_aat_burnination_lvl1_fire_raz_torso", "j_spine4", undefined);
    function_c487d6b1(#"avogadro", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_arm_left", "j_shoulder_le", 32);
    function_c487d6b1(#"avogadro", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_arm_right", "j_shoulder_ri", 16);
    function_c487d6b1(#"avogadro", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_head", "j_head", 8);
    function_c487d6b1(#"avogadro", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_hip_left", "j_hip_le", 256);
    function_c487d6b1(#"avogadro", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_hip_right", "j_hip_ri", 128);
    function_c487d6b1(#"avogadro", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_leg_left", "j_knee_le", 256);
    function_c487d6b1(#"avogadro", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_leg_right", "j_knee_ri", 128);
    function_c487d6b1(#"avogadro", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_waist", "j_spinelower", undefined);
    function_c487d6b1(#"avogadro", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_torso", "j_spine4", undefined);
    function_c487d6b1(#"soa", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_arm_left", "j_shoulder_le", 32);
    function_c487d6b1(#"soa", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_arm_right", "j_shoulder_ri", 16);
    function_c487d6b1(#"soa", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_head", "j_head", 8);
    function_c487d6b1(#"soa", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_hip_left", "j_hip_le", 256);
    function_c487d6b1(#"soa", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_hip_right", "j_hip_ri", 128);
    function_c487d6b1(#"soa", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_leg_left", "j_knee_le", 256);
    function_c487d6b1(#"soa", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_leg_right", "j_knee_ri", 128);
    function_c487d6b1(#"soa", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_waist", "j_spinelower", undefined);
    function_c487d6b1(#"soa", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_torso", "j_spine4", undefined);
    function_c487d6b1(#"tormentor", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_arm_left", "j_shoulder_le", 32);
    function_c487d6b1(#"tormentor", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_arm_right", "j_shoulder_ri", 16);
    function_c487d6b1(#"tormentor", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_head", "j_head", 8);
    function_c487d6b1(#"tormentor", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_hip_left", "j_hip_le", 256);
    function_c487d6b1(#"tormentor", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_hip_right", "j_hip_ri", 128);
    function_c487d6b1(#"tormentor", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_leg_left", "j_knee_le", 256);
    function_c487d6b1(#"tormentor", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_leg_right", "j_knee_ri", 128);
    function_c487d6b1(#"tormentor", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_waist", "j_spinelower", undefined);
    function_c487d6b1(#"tormentor", "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_torso", "j_spine4", undefined);
}

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 7, eflags: 0x2 linked
// Checksum 0x13958838, Offset: 0x1358
// Size: 0x64
function function_15482148(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    playviewmodelfx(bwastimejump, #"hash_308bd3bf83b35604", "tag_fx1", 0);
}

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 4, eflags: 0x2 linked
// Checksum 0x36145a08, Offset: 0x13c8
// Size: 0xc2
function function_c487d6b1(archetype, fx, joint, gibflag) {
    if (!isdefined(level.var_fd6cbce7)) {
        level.var_fd6cbce7 = [];
    }
    if (!isdefined(level.var_fd6cbce7[archetype])) {
        level.var_fd6cbce7[archetype] = [];
    }
    level.var_fd6cbce7[archetype][fx] = spawnstruct();
    level.var_fd6cbce7[archetype][fx].joint = joint;
    level.var_fd6cbce7[archetype][fx].gibflag = gibflag;
}

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 7, eflags: 0x2 linked
// Checksum 0x56d616d6, Offset: 0x1498
// Size: 0xd4
function function_c8e3a0dc(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(self)) {
        str_tag = isdefined(self gettagorigin("j_spine4")) ? "j_spine4" : "tag_origin";
        self playsound(bwastimejump, #"hash_1b3441156c512173");
        self util::playfxontag(bwastimejump, "zm_weapons/fx9_aat_burnination_lvl5_aoe", self, str_tag);
    }
}

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 7, eflags: 0x2 linked
// Checksum 0xdeb81d87, Offset: 0x1578
// Size: 0x74
function function_f3b43353(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self function_a681160a(fieldname);
        return;
    }
    self function_725a593f(fieldname);
}

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 7, eflags: 0x2 linked
// Checksum 0xae6a33da, Offset: 0x15f8
// Size: 0x7c
function function_2d64f265(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self function_a681160a(fieldname, 1);
        return;
    }
    self function_725a593f(fieldname);
}

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 2, eflags: 0x2 linked
// Checksum 0x142524fd, Offset: 0x1680
// Size: 0x382
function function_a681160a(localclientnum, is_vehicle = 0) {
    if (is_vehicle) {
        str_tag = isdefined(self gettagorigin("tag_body")) ? "tag_body" : "tag_origin";
        self.var_b1312f24 = util::playfxontag(localclientnum, "zm_weapons/fx9_aat_burnination_lvl1_fire_zmb_torso", self, str_tag);
    } else {
        if (isdefined(self.var_9bdf44ae)) {
            function_725a593f();
        }
        if (!isdefined(self.var_9bdf44ae)) {
            self.var_9bdf44ae = [];
            if (isarray(level.var_fd6cbce7[self.archetype])) {
                foreach (i, fx in level.var_fd6cbce7[self.archetype]) {
                    if (isdefined(fx.gibflag)) {
                        if (isdefined(self gettagorigin(fx.joint)) && !gibclientutils::isgibbed(localclientnum, self, fx.gibflag)) {
                            fxid = util::playfxontag(localclientnum, i, self, fx.joint);
                            if (!isdefined(self.var_9bdf44ae)) {
                                self.var_9bdf44ae = [];
                            } else if (!isarray(self.var_9bdf44ae)) {
                                self.var_9bdf44ae = array(self.var_9bdf44ae);
                            }
                            self.var_9bdf44ae[self.var_9bdf44ae.size] = fxid;
                        }
                        continue;
                    }
                    if (isdefined(self gettagorigin(fx.joint))) {
                        fxid = util::playfxontag(localclientnum, i, self, fx.joint);
                        if (!isdefined(self.var_9bdf44ae)) {
                            self.var_9bdf44ae = [];
                        } else if (!isarray(self.var_9bdf44ae)) {
                            self.var_9bdf44ae = array(self.var_9bdf44ae);
                        }
                        self.var_9bdf44ae[self.var_9bdf44ae.size] = fxid;
                    }
                }
            }
        }
    }
    if (!isdefined(self.var_428ce87c)) {
        self playsound(localclientnum, #"hash_60984c7920920c54", self.origin + (0, 0, 50));
        self.var_428ce87c = self playloopsound(#"hash_aed7c693cd1b7cd");
    }
}

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 1, eflags: 0x2 linked
// Checksum 0xa93e8d67, Offset: 0x1a10
// Size: 0x102
function function_725a593f(localclientnum) {
    if (isdefined(self.var_428ce87c)) {
        self stoploopsound(self.var_428ce87c);
    }
    if (isdefined(self.var_9bdf44ae)) {
        foreach (fxid in self.var_9bdf44ae) {
            if (isint(fxid) && isint(localclientnum)) {
                stopfx(localclientnum, fxid);
            }
        }
        self.var_9bdf44ae = undefined;
    }
}

