// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\visionset_mgr_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_957938f0;

// Namespace namespace_957938f0/namespace_957938f0
// Params 0, eflags: 0x5
// Checksum 0x8d3600c2, Offset: 0x1f0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_3256c1e06451aec4", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_957938f0/namespace_957938f0
// Params 0, eflags: 0x2 linked
// Checksum 0x35c01aa5, Offset: 0x238
// Size: 0x1c4
function preinit() {
    if (!zm_utility::is_survival()) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_318abd2654cf527a")) && !getdvarint(#"hash_1afcd13f069fa385", 0)) {
        return;
    }
    clientfield::register("scriptmover", "jump_pad_active", 1, 1, "int", &jump_pad_active, 0, 0);
    clientfield::register("scriptmover", "jump_pad_essence_fx", 1, 1, "int", &jump_pad_essence_fx, 0, 0);
    clientfield::register("scriptmover", "jump_pad_amb_sound_lp", 1, 1, "int", &jump_pad_amb_sound_lp, 0, 0);
    clientfield::register("toplayer", "jump_pad_wind_sound", 1, 1, "int", &jump_pad_wind_sound, 0, 0);
    visionset_mgr::register_overlay_info_style_postfx_bundle("sr_jump_pad_visionset", 1, 1, "pstfx_jump_pad_launch");
}

// Namespace namespace_957938f0/namespace_957938f0
// Params 7, eflags: 0x2 linked
// Checksum 0xf9bf56d1, Offset: 0x408
// Size: 0x164
function jump_pad_active(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwastimejump) {
        self.var_3364a192 = util::playfxontag(fieldname, #"hash_2fa753029cdd63bd", self, "tag_light_right_fx");
        self.var_d47b7586 = util::playfxontag(fieldname, #"hash_2fa753029cdd63bd", self, "tag_light_left_fx");
    } else {
        if (isdefined(self.var_3364a192)) {
            killfx(fieldname, self.var_3364a192);
        }
        if (isdefined(self.var_d47b7586)) {
            killfx(fieldname, self.var_d47b7586);
        }
    }
    self function_d309e55a("tag_light_left", bwastimejump);
    self function_d309e55a("tag_light_right", bwastimejump);
}

// Namespace namespace_957938f0/namespace_957938f0
// Params 7, eflags: 0x2 linked
// Checksum 0x4a1fcd5e, Offset: 0x578
// Size: 0x12c
function jump_pad_essence_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwastimejump) {
        playfx(fieldname, #"hash_740a639c59126f59", self.origin);
        function_239993de(fieldname, #"hash_23f38f1190bb99d9", self, "tag_origin");
        self thread function_6192b162();
        return;
    }
    playfx(fieldname, #"hash_326df840230b71d6", self.origin);
    playsound(fieldname, #"zmb_powerup_resource_large_pickup", self.origin);
}

// Namespace namespace_957938f0/namespace_957938f0
// Params 0, eflags: 0x2 linked
// Checksum 0x5143311d, Offset: 0x6b0
// Size: 0x6e
function function_6192b162() {
    self endon(#"death");
    while (true) {
        if (!self function_d2503806(#"hash_5b08235c0b55a003")) {
            self playrenderoverridebundle(#"hash_5b08235c0b55a003");
        }
        waitframe(1);
    }
}

// Namespace namespace_957938f0/namespace_957938f0
// Params 7, eflags: 0x2 linked
// Checksum 0xd20c827b, Offset: 0x728
// Size: 0x6a
function jump_pad_amb_sound_lp(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_c50612a2 = self playloopsound(#"hash_67d068901551222c");
    }
}

// Namespace namespace_957938f0/namespace_957938f0
// Params 7, eflags: 0x2 linked
// Checksum 0xd9c66b56, Offset: 0x7a0
// Size: 0xfe
function jump_pad_wind_sound(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_dbe88563 = self playloopsound(#"hash_296e1c756ae8ae2b");
        self thread function_ca483953(fieldname);
        self thread function_6b3f6fa7(fieldname);
        self thread function_d80deb1d();
        return;
    }
    if (isdefined(self.var_dbe88563)) {
        self stoploopsound(self.var_dbe88563);
        self.var_dbe88563 = undefined;
    }
    self notify(#"hash_7387c0ba13aefdd7");
}

// Namespace namespace_957938f0/namespace_957938f0
// Params 1, eflags: 0x2 linked
// Checksum 0x9aad237d, Offset: 0x8a8
// Size: 0xc0
function function_ca483953(localclientnum) {
    self notify("1a03edd1862740b0");
    self endon("1a03edd1862740b0");
    self endon(#"death", #"hash_5db49134b7c7de10", #"hash_7387c0ba13aefdd7");
    while (true) {
        earthquake(localclientnum, 0.15, 0.3, self.origin, 256);
        wait(0.1);
    }
}

// Namespace namespace_957938f0/namespace_957938f0
// Params 1, eflags: 0x2 linked
// Checksum 0x4969a8bf, Offset: 0x970
// Size: 0xa0
function function_6b3f6fa7(localclientnum) {
    self notify("2c1a4b7fe6426f07");
    self endon("2c1a4b7fe6426f07");
    self endon(#"death", #"hash_78558ed9d8282358", #"hash_7387c0ba13aefdd7");
    while (true) {
        self playrumbleonentity(localclientnum, #"hash_33c84c73c645ea27");
        wait(0.1);
    }
}

// Namespace namespace_957938f0/namespace_957938f0
// Params 0, eflags: 0x2 linked
// Checksum 0xe6bc9b83, Offset: 0xa18
// Size: 0xd6
function function_d80deb1d() {
    self notify("7c94ac39bb174eec");
    self endon("7c94ac39bb174eec");
    self endon(#"death", #"hash_7387c0ba13aefdd7");
    while (self getvelocity()[2] <= 666) {
        waitframe(1);
    }
    while (self getvelocity()[2] > 666) {
        waitframe(1);
    }
    self notify(#"hash_5db49134b7c7de10");
    wait(0.5);
    self notify(#"hash_78558ed9d8282358");
}

