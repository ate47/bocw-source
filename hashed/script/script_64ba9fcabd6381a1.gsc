// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_e0966e1e;

// Namespace namespace_e0966e1e/namespace_e0966e1e
// Params 0, eflags: 0x5
// Checksum 0x19db5c21, Offset: 0x150
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_6f7d2657f403b90d", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_e0966e1e/namespace_e0966e1e
// Params 0, eflags: 0x6 linked
// Checksum 0xd5777840, Offset: 0x198
// Size: 0x10c
function private preinit() {
    clientfield::register("scriptmover", "" + #"hash_452045cf5cb8bc4c", 16000, 2, "int", &function_830c306e, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_7833487f87cacad1", 16000, 1, "int", &function_aa0ed712, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_1e3fecb02ce56163", 16000, 1, "int", &function_6a360cde, 0, 0);
}

// Namespace namespace_e0966e1e/namespace_e0966e1e
// Params 7, eflags: 0x2 linked
// Checksum 0xb24b5e58, Offset: 0x2b0
// Size: 0x11e
function function_6a360cde(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_f70ef53c = util::playfxontag(fieldname, #"hash_76e6cbdd75a0ae46", self, "tag_animate");
        if (isdefined(self.var_83f12b7c)) {
            self stoploopsound(self.var_83f12b7c);
            self.var_83f12b7c = undefined;
        }
        self playsound(fieldname, #"hash_671944ab50b7a130");
        self.var_a9c2bfe4 = 1;
        return;
    }
    if (isdefined(self.var_f70ef53c)) {
        stopfx(fieldname, self.var_f70ef53c);
    }
    self.var_a9c2bfe4 = 0;
}

// Namespace namespace_e0966e1e/namespace_e0966e1e
// Params 7, eflags: 0x2 linked
// Checksum 0xfed9bbd2, Offset: 0x3d8
// Size: 0x5c2
function function_830c306e(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    switch (bwastimejump) {
    case 0:
        if (isdefined(self.var_3504fb78)) {
            stopfx(fieldname, self.var_3504fb78);
        }
        if (isdefined(self.var_edd303cf)) {
            stopfx(fieldname, self.var_edd303cf);
        }
        if (isdefined(self.var_87fd74a7)) {
            stopfx(fieldname, self.var_87fd74a7);
        }
        if (isdefined(self.var_71937d24)) {
            self playsound(fieldname, #"hash_6010defaf1c41ae4");
            self stoploopsound(self.var_71937d24);
            self.var_71937d24 = undefined;
        }
        if (isdefined(self.var_b8bfe17e)) {
            self stoploopsound(self.var_b8bfe17e);
            self.var_b8bfe17e = undefined;
        }
        self notify(#"hash_52be29763bc2391e");
        break;
    case 1:
        if (isdefined(self.var_83f12b7c)) {
            self stoploopsound(self.var_83f12b7c);
            self.var_83f12b7c = undefined;
        }
        self.var_3504fb78 = util::playfxontag(fieldname, #"hash_2acd20deb7d56350", self, "tag_animate");
        self playsound(fieldname, #"hash_56e074f1a171421d");
        self.var_71937d24 = self playloopsound(#"hash_760ed99900106de3");
        zombie = self getlinkedent();
        if (isdefined(zombie)) {
            forward = self.origin - zombie.origin;
            self.var_edd303cf = playfx(fieldname, #"hash_240c7f76d259b9a3", self.origin, forward);
            self thread function_d9150e58(fieldname);
            self thread function_d99e101d(fieldname, zombie);
        }
        break;
    case 2:
        if (isdefined(self.var_3504fb78)) {
            stopfx(fieldname, self.var_3504fb78);
        }
        if (isdefined(self.var_edd303cf)) {
            stopfx(fieldname, self.var_edd303cf);
        }
        if (isdefined(self.var_83f12b7c)) {
            self stoploopsound(self.var_83f12b7c);
            self.var_83f12b7c = undefined;
        }
        if (isdefined(self.var_71937d24)) {
            self playsound(fieldname, #"hash_6010defaf1c41ae4");
            self stoploopsound(self.var_71937d24);
            self.var_71937d24 = undefined;
        }
        self.var_87fd74a7 = util::playfxontag(fieldname, #"hash_3354e735e33805a7", self, "tag_animate");
        self playsound(fieldname, #"hash_534278acb9340669");
        self notify(#"hash_52be29763bc2391e");
        break;
    case 3:
        if (isdefined(self.var_3504fb78)) {
            stopfx(fieldname, self.var_3504fb78);
        }
        if (isdefined(self.var_edd303cf)) {
            stopfx(fieldname, self.var_edd303cf);
        }
        if (isdefined(self.var_87fd74a7)) {
            stopfx(fieldname, self.var_87fd74a7);
        }
        if (isdefined(self.var_71937d24)) {
            self playsound(fieldname, #"hash_6010defaf1c41ae4");
            self stoploopsound(self.var_71937d24);
            self.var_71937d24 = undefined;
        }
        if (isdefined(self.var_b8bfe17e)) {
            self stoploopsound(self.var_b8bfe17e);
            self.var_b8bfe17e = undefined;
        }
        self notify(#"hash_52be29763bc2391e");
        util::playfxontag(fieldname, #"hash_7e225ece0c91121", self, "tag_animate");
        break;
    default:
        break;
    }
}

// Namespace namespace_e0966e1e/namespace_e0966e1e
// Params 1, eflags: 0x2 linked
// Checksum 0x5f158668, Offset: 0x9a8
// Size: 0x6c
function function_d9150e58(localclientnum) {
    level endon(#"end_game");
    self waittilltimeout(6, #"death");
    if (isdefined(self.var_edd303cf)) {
        stopfx(localclientnum, self.var_edd303cf);
    }
}

// Namespace namespace_e0966e1e/namespace_e0966e1e
// Params 2, eflags: 0x2 linked
// Checksum 0x6d4cba91, Offset: 0xa20
// Size: 0x1f8
function function_d99e101d(localclientnum, var_86cccd7b) {
    level endon(#"end_game");
    self endon(#"death", #"hash_52be29763bc2391e");
    var_86cccd7b endon(#"death");
    var_c848a436 = array("j_elbow_le", "j_elbow_ri", "j_shoulder_le", "j_shoulder_ri", "j_spine4", "j_head");
    if (var_86cccd7b.archetype == #"zombie_dog") {
        var_c848a436 = array("j_spine2", "j_spine3", "j_spine4", "j_neck", "j_head");
    }
    while (true) {
        tag = array::random(var_c848a436);
        start_pos = var_86cccd7b gettagorigin(tag);
        if (!isdefined(start_pos)) {
            continue;
        }
        var_9ce372f7 = util::spawn_model(localclientnum, "tag_origin", start_pos);
        var_9ce372f7.var_29dd623b = util::playfxontag(localclientnum, #"hash_523a16f9296294f0", var_9ce372f7, "tag_origin");
        var_9ce372f7 thread function_6333cd88(self);
        var_9ce372f7 thread function_ca3614(self);
        wait(0.1);
    }
}

// Namespace namespace_e0966e1e/namespace_e0966e1e
// Params 1, eflags: 0x2 linked
// Checksum 0x20409f6c, Offset: 0xc20
// Size: 0x84
function function_6333cd88(var_bea4648f) {
    level endon(#"end_game");
    self endon(#"death");
    self moveto(var_bea4648f.origin, 0.1);
    wait(0.1);
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace namespace_e0966e1e/namespace_e0966e1e
// Params 1, eflags: 0x2 linked
// Checksum 0x1332ec4b, Offset: 0xcb0
// Size: 0x6c
function function_ca3614(parent) {
    level endon(#"end_game");
    self endon(#"death");
    parent waittill(#"death");
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace namespace_e0966e1e/namespace_e0966e1e
// Params 7, eflags: 0x2 linked
// Checksum 0x797544c0, Offset: 0xd28
// Size: 0x182
function function_aa0ed712(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(self.light_fx)) {
        killfx(fieldname, self.light_fx);
    }
    if (isdefined(self.var_83f12b7c)) {
        self stoploopsound(self.var_83f12b7c);
        self.var_83f12b7c = undefined;
    }
    if (bwastimejump == 1) {
        self.light_fx = util::playfxontag(fieldname, #"hash_194a9dcd4ca41ca9", self, "tag_animate");
        if (!is_true(self.var_a9c2bfe4)) {
            self.var_83f12b7c = self playloopsound(#"hash_c977a3c790ccd55");
        }
        return;
    }
    self.light_fx = util::playfxontag(fieldname, #"hash_210ef7d0a601f6d9", self, "tag_animate");
    if (!is_true(self.var_a9c2bfe4)) {
        self.var_83f12b7c = self playloopsound(#"hash_3af833d1182396f3");
    }
}

