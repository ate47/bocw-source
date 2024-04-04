// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_98decc78;

// Namespace namespace_98decc78/namespace_98decc78
// Params 0, eflags: 0x5
// Checksum 0x68f0d52a, Offset: 0x110
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_5cb28995c23c44a", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_98decc78/namespace_98decc78
// Params 0, eflags: 0x6 linked
// Checksum 0xf9c52dfc, Offset: 0x158
// Size: 0x5c
function private preinit() {
    clientfield::register("toplayer", "" + #"hash_3a86c740229275b7", 1, 3, "counter", &function_d5270d1a, 0, 0);
}

// Namespace namespace_98decc78/namespace_98decc78
// Params 7, eflags: 0x2 linked
// Checksum 0x1bd1f27, Offset: 0x1c0
// Size: 0x29c
function function_d5270d1a(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    self endon(#"death");
    util::waittill_dobj(localclientnum);
    if (!isplayer(self)) {
        return;
    }
    self thread postfx::playpostfxbundle(#"hash_1d2ed88d1700cf24");
    if (newval === 1) {
        self postfx::function_c8b5f318(#"hash_1d2ed88d1700cf24", "Origin Y", 1);
        self postfx::function_c8b5f318(#"hash_1d2ed88d1700cf24", "Origin X", 0);
    } else if (newval === 2) {
        self postfx::function_c8b5f318(#"hash_1d2ed88d1700cf24", "Origin Y", -1);
        self postfx::function_c8b5f318(#"hash_1d2ed88d1700cf24", "Origin X", 0);
    } else if (newval === 3) {
        self postfx::function_c8b5f318(#"hash_1d2ed88d1700cf24", "Origin Y", 0);
        self postfx::function_c8b5f318(#"hash_1d2ed88d1700cf24", "Origin X", 1);
    } else if (newval === 4) {
        self postfx::function_c8b5f318(#"hash_1d2ed88d1700cf24", "Origin Y", 0);
        self postfx::function_c8b5f318(#"hash_1d2ed88d1700cf24", "Origin X", -1);
    }
    if (!isdefined(self.var_f0007ebc)) {
        self.var_f0007ebc = 0;
    }
    self thread function_28efdb7f(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
}

// Namespace namespace_98decc78/namespace_98decc78
// Params 7, eflags: 0x2 linked
// Checksum 0x1a006604, Offset: 0x468
// Size: 0x1a4
function function_28efdb7f(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self.var_d5e7df0f = 1;
    self postfx::function_c8b5f318(#"hash_1d2ed88d1700cf24", "Opacity", 0);
    self util::lerp_generic(bwastimejump, 175, &function_606248f8, self.var_f0007ebc, 1, "Opacity", #"hash_1d2ed88d1700cf24");
    self postfx::function_c8b5f318(#"hash_1d2ed88d1700cf24", "Screen Radius Inner", 0.5);
    self postfx::function_c8b5f318(#"hash_1d2ed88d1700cf24", "Screen Radius Outer", 0.7);
    wait(0.175);
    self util::lerp_generic(bwastimejump, 1650, &function_606248f8, self.var_f0007ebc, 0, "Opacity", #"hash_1d2ed88d1700cf24");
}

// Namespace namespace_98decc78/namespace_98decc78
// Params 8, eflags: 0x2 linked
// Checksum 0x73153c95, Offset: 0x618
// Size: 0xec
function function_606248f8(*currenttime, elapsedtime, *localclientnum, duration, stagefrom, stageto, *constant, *postfx) {
    self endon(#"death");
    if (!self postfx::function_556665f2(#"hash_1d2ed88d1700cf24")) {
        return;
    }
    percent = stagefrom / stageto;
    amount = postfx * percent + constant * (1 - percent);
    self.var_f0007ebc = amount;
    self postfx::function_c8b5f318(#"hash_1d2ed88d1700cf24", "Opacity", amount);
}

