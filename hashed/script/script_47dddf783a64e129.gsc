// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace flashlight;

// Namespace flashlight/flashlight
// Params 0, eflags: 0x5
// Checksum 0x59de438d, Offset: 0x130
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"flashlight", &preinit, undefined, undefined, undefined);
}

// Namespace flashlight/flashlight
// Params 3, eflags: 0x2 linked
// Checksum 0x8c93fe50, Offset: 0x178
// Size: 0x1dc
function function_69258685(localclientnum, flashlightfx = "light/fx9_light_cp_flashlight", flashlightfxtag = "tag_light") {
    if (!isdefined(self.flashlight)) {
        self.flashlight = {};
    }
    var_5a528883 = self.flashlight.fx !== flashlightfx;
    var_f49dadc4 = self.flashlight.fxtag !== flashlightfxtag;
    var_5a9e0eeb = var_5a528883 && flashlightfx !== "light/fx9_light_cp_flashlight" ? flashlightfx : undefined;
    var_9acb6f5e = var_f49dadc4 && flashlightfxtag !== "tag_light" ? flashlightfxtag : undefined;
    if (!isdefined(self.flashlight) && (isdefined(var_5a9e0eeb) || isdefined(var_9acb6f5e))) {
        self.flashlight = {};
    }
    self.flashlight.fx = var_5a9e0eeb;
    self.flashlight.fxtag = var_9acb6f5e;
    if (self == level) {
        level notify(#"hash_3832e59879eaf7fd");
        return;
    }
    flashlight_on = isdefined(self.flashlight.fxid);
    if (flashlight_on && (var_5a528883 || var_f49dadc4)) {
        self function_24a560cf(localclientnum);
        self function_69fc092e(localclientnum);
    }
}

// Namespace flashlight/flashlight
// Params 1, eflags: 0x0
// Checksum 0xf8c089f6, Offset: 0x360
// Size: 0x1e
function function_663e512c(fxtag) {
    self.flashlight.var_787d46f2 = fxtag;
}

// Namespace flashlight/flashlight
// Params 0, eflags: 0x6 linked
// Checksum 0xbc06667c, Offset: 0x388
// Size: 0x14
function private preinit() {
    register_clientfields();
}

// Namespace flashlight/flashlight
// Params 0, eflags: 0x6 linked
// Checksum 0x1f0661d2, Offset: 0x3a8
// Size: 0xdc
function private register_clientfields() {
    clientfield::register("actor", "flashlightfx", 1, 1, "int", &function_7e507d3c, 0, 0);
    clientfield::register("scriptmover", "flashlightfx", 1, 2, "int", &function_8cd382e7, 0, 0);
    clientfield::register("actor", "gunflashlightfx", 1, 1, "int", &function_db7bbe6c, 0, 0);
}

// Namespace flashlight/flashlight
// Params 7, eflags: 0x6 linked
// Checksum 0x71048321, Offset: 0x490
// Size: 0x114
function private function_db7bbe6c(localclientnum, *oldvalue, *newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    flashlight_on = self clientfield::get("gunflashlightfx");
    var_787d46f2 = "tag_muzzle";
    if (isdefined(self.flashlight.var_787d46f2)) {
        var_787d46f2 = self.flashlight.var_787d46f2;
    }
    if (flashlight_on) {
        function_69258685(wasdemojump, "light/fx9_light_cp_flashlight", var_787d46f2);
    }
    function_2573297e(wasdemojump, flashlight_on);
    if (!flashlight_on) {
        function_69258685(wasdemojump, "light/fx9_light_cp_flashlight", "tag_light");
    }
}

// Namespace flashlight/flashlight
// Params 7, eflags: 0x6 linked
// Checksum 0x62c798d4, Offset: 0x5b0
// Size: 0x7c
function private function_7e507d3c(localclientnum, *oldvalue, *newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    flashlight_on = self clientfield::get("flashlightfx");
    function_2573297e(wasdemojump, flashlight_on);
}

// Namespace flashlight/flashlight
// Params 2, eflags: 0x6 linked
// Checksum 0x99df8064, Offset: 0x638
// Size: 0xf4
function private function_2573297e(localclientnum, flashlight_on) {
    if (flashlight_on == 1) {
        var_17716e4f = isdefined(self.flashlight.fxid);
        if (var_17716e4f && !isfxplaying(localclientnum, self.flashlight.fxid)) {
            self function_24a560cf(localclientnum);
        }
        if (!isdefined(self.flashlight.fxid)) {
            self function_69fc092e(localclientnum);
        }
        return;
    }
    if (flashlight_on == 0 && isdefined(self.flashlight.fxid)) {
        self function_24a560cf(localclientnum);
    }
}

// Namespace flashlight/flashlight
// Params 7, eflags: 0x6 linked
// Checksum 0x28f7a0ce, Offset: 0x738
// Size: 0xe4
function private function_8cd382e7(localclientnum, *oldvalue, newvalue, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump == 1) {
        self notify(#"hash_6f398d21a29fce31");
        self function_a530c545(fieldname, 1);
        return;
    }
    if (wasdemojump == 0) {
        self notify(#"hash_6f398d21a29fce31");
        self function_a530c545(fieldname, 0);
        return;
    }
    if (wasdemojump == 2) {
        self thread function_2b580006(fieldname);
    }
}

// Namespace flashlight/flashlight
// Params 2, eflags: 0x6 linked
// Checksum 0x9fcc04c2, Offset: 0x828
// Size: 0xde
function private function_a530c545(localclientnum, on) {
    if (is_true(on)) {
        if (!isdefined(self.var_103f6c4c)) {
            fx = isdefined(level.flashlight.fx) ? level.flashlight.fx : "light/fx9_light_cp_flashlight";
            self.var_103f6c4c = util::playfxontag(localclientnum, fx, self, "tag_light");
        }
        return;
    }
    if (isdefined(self.var_103f6c4c)) {
        killfx(localclientnum, self.var_103f6c4c);
        self.var_103f6c4c = undefined;
    }
}

// Namespace flashlight/flashlight
// Params 1, eflags: 0x6 linked
// Checksum 0xd57b7f75, Offset: 0x910
// Size: 0x14c
function private function_2b580006(localclientnum) {
    self notify(#"hash_6f398d21a29fce31");
    self endon(#"hash_6f398d21a29fce31", #"death");
    self function_a530c545(localclientnum, 0);
    wait(randomfloatrange(0.2, 0.3));
    self function_a530c545(localclientnum, 1);
    wait(randomfloatrange(0.2, 0.4));
    self function_a530c545(localclientnum, 0);
    wait(randomfloatrange(0.2, 0.3));
    self function_a530c545(localclientnum, 1);
    wait(randomfloatrange(0.2, 0.3));
    self function_a530c545(localclientnum, 0);
}

// Namespace flashlight/flashlight
// Params 1, eflags: 0x6 linked
// Checksum 0x95985910, Offset: 0xa68
// Size: 0x144
function private function_69fc092e(localclientnum) {
    if (!isdefined(self.flashlight)) {
        self.flashlight = {};
    }
    if (isdefined(self.flashlight.fx)) {
        flashlightfx = self.flashlight.fx;
    } else if (isdefined(level.flashlight.fx)) {
        flashlightfx = level.flashlight.fx;
    } else {
        flashlightfx = "light/fx9_light_cp_flashlight";
    }
    if (isdefined(self.flashlight.fxtag)) {
        flashlightfxtag = self.flashlight.fxtag;
    } else if (isdefined(level.flashlight.fxtag)) {
        flashlightfxtag = level.flashlight.fxtag;
    } else {
        flashlightfxtag = "tag_light";
    }
    self.flashlight.fxid = util::playfxontag(localclientnum, flashlightfx, self, flashlightfxtag);
    self thread function_54557944(localclientnum);
}

// Namespace flashlight/flashlight
// Params 1, eflags: 0x6 linked
// Checksum 0x539bd1bb, Offset: 0xbb8
// Size: 0x8e
function private function_24a560cf(localclientnum) {
    if (isdefined(self.flashlight.fxid)) {
        killfx(localclientnum, self.flashlight.fxid);
        self.flashlight.fxid = undefined;
        if (!isdefined(self.flashlight.fx) && !isdefined(self.flashlight.fxtag)) {
            self.flashlight = undefined;
        }
    }
}

// Namespace flashlight/flashlight
// Params 1, eflags: 0x6 linked
// Checksum 0x814bbf76, Offset: 0xc50
// Size: 0x7c
function private function_54557944(localclientnum) {
    self notify("261acc760efea5e1");
    self endon("261acc760efea5e1");
    self endon(#"death");
    level waittill(#"hash_3832e59879eaf7fd");
    self function_24a560cf(localclientnum);
    self function_69fc092e(localclientnum);
}

