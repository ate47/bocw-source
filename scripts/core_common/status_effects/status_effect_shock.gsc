// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\values_shared.gsc;

#namespace status_effect_shock;

// Namespace status_effect_shock/status_effect_shock
// Params 0, eflags: 0x5
// Checksum 0x6389fc17, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"status_effect_shock", &preinit, undefined, undefined, undefined);
}

// Namespace status_effect_shock/status_effect_shock
// Params 0, eflags: 0x6 linked
// Checksum 0xdf406d8d, Offset: 0x110
// Size: 0x6c
function private preinit() {
    status_effect::register_status_effect_callback_apply(5, &shock_apply);
    status_effect::function_5bae5120(5, &shock_end);
    status_effect::function_6f4eaf88(getstatuseffect("shock"));
}

// Namespace status_effect_shock/status_effect_shock
// Params 3, eflags: 0x2 linked
// Checksum 0xd0f8927b, Offset: 0x188
// Size: 0x14c
function shock_apply(var_756fda07, *weapon, *applicant) {
    if (isdefined(applicant.var_120475e6) ? applicant.var_120475e6 : 0) {
        self.owner setlowready(1);
        self.owner val::set(#"shock", "freezecontrols");
    }
    self.var_52b189ce = 1;
    if (isdefined(applicant)) {
        self.var_52b189ce = isdefined(applicant.var_52b189ce) ? applicant.var_52b189ce : 1;
    }
    if (self.var_52b189ce) {
        self.owner setelectrifiedstate(1);
        self thread shock_rumble_loop(float(self.duration) / 1000);
        self.owner playsound(#"hash_7d53dd7b886b60ae");
    }
}

// Namespace status_effect_shock/status_effect_shock
// Params 0, eflags: 0x2 linked
// Checksum 0xfe9aa38, Offset: 0x2e0
// Size: 0xc4
function shock_end() {
    if (isdefined(self)) {
        if (isdefined(self.var_4f6b79a4.var_120475e6) ? self.var_4f6b79a4.var_120475e6 : 0) {
            self.owner setlowready(0);
            self.owner val::reset(#"shock", "freezecontrols");
        }
        if (self.var_52b189ce) {
            self.owner stoprumble("proximity_grenade");
            self.owner setelectrifiedstate(0);
        }
    }
}

// Namespace status_effect_shock/status_effect_shock
// Params 1, eflags: 0x6 linked
// Checksum 0x8b7a168e, Offset: 0x3b0
// Size: 0xd6
function private shock_rumble_loop(duration) {
    self notify(#"shock_rumble_loop");
    self endon(#"shock_rumble_loop", #"endstatuseffect");
    self.owner endon(#"disconnect", #"death");
    goaltime = gettime() + int(duration * 1000);
    while (gettime() < goaltime && isdefined(self.owner)) {
        self.owner playrumbleonentity("proximity_grenade");
        wait(1);
    }
}

