// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_36ebd7e4;

// Namespace namespace_36ebd7e4/namespace_36ebd7e4
// Params 0, eflags: 0x0
// Checksum 0x36654aad, Offset: 0x140
// Size: 0x14
function init() {
    init_clientfields();
}

// Namespace namespace_36ebd7e4/namespace_36ebd7e4
// Params 0, eflags: 0x0
// Checksum 0x9735f16, Offset: 0x160
// Size: 0x1bc
function init_clientfields() {
    clientfield::register("scriptmover", "" + #"hash_7b253f73f6f094c6", 1, 1, "int", &function_54819cfd, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_5b7ac337732b7e59", 1, 1, "int", &function_20635639, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_4566af74eca7b0fc", 1, 1, "int", &function_30a63f3c, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_3133b920dbedc06b", 1, 1, "int", &function_efac1e5d, 0, 0);
    clientfield::register("world", "" + #"hash_66b3c585c1eacb0b", 1, 1, "counter", &function_7d090e7e, 0, 0);
}

// Namespace namespace_36ebd7e4/namespace_36ebd7e4
// Params 7, eflags: 0x0
// Checksum 0x5be9844f, Offset: 0x328
// Size: 0x1a4
function function_54819cfd(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_1f3cb09a = util::playfxontag(fieldname, #"hash_6c8d478322adcc6a", self, "j_mainroot");
        self.var_eb074a88 = self playloopsound("evt_bunny_loop");
        self.var_27af60a = self playloopsound("amb_bunny_float_loop");
        return;
    }
    if (isdefined(self.var_1f3cb09a)) {
        stopfx(fieldname, self.var_1f3cb09a);
        self stoploopsound(self.var_eb074a88, 0.5);
        self stoploopsound(self.var_27af60a, 0.25);
        self.var_1f3cb09a = undefined;
        self.var_eb074a88 = undefined;
        self.var_27af60a = undefined;
    }
    self.explode_fx = util::playfxontag(fieldname, #"hash_5cde32c15506b440", self, "j_mainroot");
    self playsound(0, #"wpn_grenade_explode");
}

// Namespace namespace_36ebd7e4/namespace_36ebd7e4
// Params 7, eflags: 0x0
// Checksum 0x103e74ff, Offset: 0x4d8
// Size: 0x7a
function function_20635639(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_1f3cb09a = util::playfxontag(fieldname, #"hash_3e6d96a7e22056c7", self, "tag_origin");
    }
}

// Namespace namespace_36ebd7e4/namespace_36ebd7e4
// Params 7, eflags: 0x0
// Checksum 0xb188d1bb, Offset: 0x560
// Size: 0xa4
function function_7d090e7e(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    e_player = function_5c10bd79(bwastimejump);
    if (isdefined(e_player)) {
        e_player postfx::playpostfxbundle(#"hash_413b0a0d47ce8d45");
        function_5ea2c6e3("zm_silver_darkaether_leadin", 1);
    }
}

// Namespace namespace_36ebd7e4/namespace_36ebd7e4
// Params 7, eflags: 0x0
// Checksum 0x9a0b6ba5, Offset: 0x610
// Size: 0xae
function function_30a63f3c(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_76ac182f = util::playfxontag(fieldname, #"hash_151c82f0168fb3c4", self, "tag_light_blue_fx");
        return;
    }
    if (isdefined(self.var_76ac182f)) {
        stopfx(fieldname, self.var_76ac182f);
        self.var_76ac182f = undefined;
    }
}

// Namespace namespace_36ebd7e4/namespace_36ebd7e4
// Params 7, eflags: 0x0
// Checksum 0xc6f53a8e, Offset: 0x6c8
// Size: 0x10a
function function_efac1e5d(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (isdefined(self.var_92e420b)) {
            stopfx(fieldname, self.var_92e420b);
            self.var_92e420b = undefined;
        }
        self.var_fe656876 = util::playfxontag(fieldname, #"hash_194a9dcd4ca41ca9", self, "tag_origin");
        return;
    }
    if (isdefined(self.var_fe656876)) {
        stopfx(fieldname, self.var_fe656876);
        self.var_fe656876 = undefined;
    }
    self.var_92e420b = util::playfxontag(fieldname, #"hash_210ef7d0a601f6d9", self, "tag_origin");
}

