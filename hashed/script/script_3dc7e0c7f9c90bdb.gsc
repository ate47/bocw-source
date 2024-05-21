// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_63c7213c;

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 0, eflags: 0x5
// Checksum 0x85d36a22, Offset: 0x188
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_3c43448fdb77ea73", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 0, eflags: 0x2 linked
// Checksum 0xe59b330c, Offset: 0x1d0
// Size: 0x1d0
function preinit() {
    if (!zm_utility::is_survival() && !zm_utility::is_classic()) {
        return;
    }
    if (is_true(getgametypesetting(#"hash_1e1a5ebefe2772ba"))) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_1e2b95e15661dad")) && !getdvarint(#"hash_730311c63805303a", 0) && !is_true(level.var_1d1a6e08)) {
        return;
    }
    clientfield::register("actor", "soul_capture_zombie_fire", 1, 1, "int", &soul_capture_zombie_fire, 0, 0);
    clientfield::register("scriptmover", "soul_capture_leave", 1, 1, "int", &soul_capture_leave, 0, 0);
    clientfield::register("scriptmover", "soul_capture_timer", 1, 1, "int", &function_86bba240, 0, 0);
    level.var_1ffd81e8 = [];
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 7, eflags: 0x2 linked
// Checksum 0x5c54fa81, Offset: 0x3a8
// Size: 0xbe
function soul_capture_zombie_fire(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (!isdefined(self.var_f6a6e73d)) {
            self.var_f6a6e73d = util::playfxontag(fieldname, #"hash_5a09c40118c2df6e", self, "j_spine4");
        }
        return;
    }
    if (isdefined(self.var_f6a6e73d)) {
        stopfx(fieldname, self.var_f6a6e73d);
        self.var_f6a6e73d = undefined;
    }
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 7, eflags: 0x2 linked
// Checksum 0x29bdbb1d, Offset: 0x470
// Size: 0x1e4
function soul_capture_leave(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (!isdefined(self.n_fx)) {
            var_70609425 = self.origin + (0, 0, 5000);
            self.b_success = 1;
            self.var_c2310a57 = playfx(fieldname, #"zm_ai/fx9_orda_spawn_portal_c", var_70609425, (1, 0, 0), (0, 0, 1));
            self playrumbleonentity(fieldname, "sr_world_event_soul_capture_crystal_leave_rumble");
        }
        if (!isdefined(self.soundorigin)) {
            self.soundorigin = self.origin;
            playsound(fieldname, #"hash_46461ba72b8ab7a2", self.soundorigin);
            soundloopemitter("evt_sur_we_portal_common_lp", self.soundorigin);
        }
        return;
    }
    if (isdefined(self.var_c2310a57)) {
        stopfx(fieldname, self.var_c2310a57);
    }
    if (isdefined(self.soundorigin)) {
        playsound(fieldname, #"hash_3c03699766f040c7", self.soundorigin);
        soundstoploopemitter("evt_sur_we_portal_common_lp", self.soundorigin);
        self.soundorigin = undefined;
    }
    self stoprumble(fieldname, "sr_world_event_soul_capture_crystal_leave_rumble");
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 7, eflags: 0x2 linked
// Checksum 0x488c60d5, Offset: 0x660
// Size: 0x1cc
function function_86bba240(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (self.model === #"hash_26730916f0bb7003") {
        if (bwastimejump) {
            self playrenderoverridebundle(#"hash_5e190029d2c86444");
            self function_78233d29(#"hash_5e190029d2c86444", "", "Brightness", 1);
            self function_78233d29(#"hash_5e190029d2c86444", "", "Threshold", 1);
        } else {
            self thread function_d0b587e2(fieldname);
        }
        return;
    }
    if (bwastimejump) {
        self.var_59419da4[fieldname] = playfx(fieldname, #"hash_37652ead88a2ed5e", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
        return;
    }
    if (isdefined(self.var_59419da4[fieldname])) {
        stopfx(fieldname, self.var_59419da4[fieldname]);
        self.var_59419da4[fieldname] = undefined;
    }
}

// Namespace namespace_63c7213c/namespace_63c7213c
// Params 1, eflags: 0x6 linked
// Checksum 0xd2a8bb30, Offset: 0x838
// Size: 0xd4
function private function_d0b587e2(*localclientnum) {
    self endon(#"death");
    n_percent = 1;
    n_increment = 1 / 50;
    while (n_percent > 0) {
        self function_78233d29(#"hash_5e190029d2c86444", "", "Threshold", n_percent);
        n_percent -= n_increment;
        wait(1);
    }
    self function_78233d29(#"hash_5e190029d2c86444", "", "Threshold", 0);
}

