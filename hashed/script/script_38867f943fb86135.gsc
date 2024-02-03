// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace cp_post;

// Namespace cp_post/cp_post
// Params 0, eflags: 0x5
// Checksum 0xe1aaf840, Offset: 0x118
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"cp_post", undefined, &function_64608eb3, undefined, undefined);
}

// Namespace cp_post/cp_post
// Params 0, eflags: 0x2 linked
// Checksum 0xd8f8265f, Offset: 0x160
// Size: 0x24
function function_64608eb3() {
    callback::on_localplayer_spawned(&start);
}

// Namespace cp_post/cp_post
// Params 7, eflags: 0x2 linked
// Checksum 0x58dbfb26, Offset: 0x190
// Size: 0x184
function start(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (function_72a9e321()) {
        self.bundle = "pstfx_t9_cp_default";
    } else {
        self.bundle = "pstfx_t9_cp_current_gen";
    }
    self postfx::playpostfxbundle(self.bundle);
    self postfx::function_c8b5f318(self.bundle, "Vignette Fade", 0.5);
    self postfx::function_c8b5f318(self.bundle, "Reveal Threshold", 0.5);
    if (function_72a9e321()) {
        self postfx::function_c8b5f318(self.bundle, "Blur Amount", 0.5);
        self postfx::function_c8b5f318(self.bundle, "Aberration", 0.5);
    }
    setdvar(#"hash_7633a587d5705d08", 1);
}

// Namespace cp_post/cp_post
// Params 7, eflags: 0x0
// Checksum 0x80cf5a44, Offset: 0x320
// Size: 0x74
function stop(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (postfx::function_556665f2(self.bundle)) {
        self postfx::stoppostfxbundle(self.bundle);
    }
}

// Namespace cp_post/cp_post
// Params 4, eflags: 0x0
// Checksum 0xf9bc6735, Offset: 0x3a0
// Size: 0x124
function function_d9475fc(var_dccfb95, var_72b185dd, aberration, reveal_threshold) {
    if (!postfx::function_556665f2(self.bundle)) {
        waitframe(1);
    }
    if (isdefined(var_dccfb95)) {
        self postfx::function_c8b5f318(self.bundle, "Vignette Fade", var_dccfb95);
    }
    if (isdefined(var_72b185dd) && function_72a9e321()) {
        self postfx::function_c8b5f318(self.bundle, "Blur Amount", var_72b185dd);
    }
    if (isdefined(aberration) && function_72a9e321()) {
        self postfx::function_c8b5f318(self.bundle, "Aberration", aberration);
    }
    if (isdefined(reveal_threshold)) {
        self postfx::function_c8b5f318(self.bundle, "Reveal Threshold", reveal_threshold);
    }
}

