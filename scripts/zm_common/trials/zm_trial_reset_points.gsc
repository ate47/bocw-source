// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_bgb.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zm_trial_reset_points;

// Namespace zm_trial_reset_points/zm_trial_reset_points
// Params 0, eflags: 0x5
// Checksum 0x37970b4e, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_reset_points", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_reset_points/zm_trial_reset_points
// Params 0, eflags: 0x4
// Checksum 0x7d6792d0, Offset: 0xf8
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"reset_points", &on_begin, &on_end);
}

// Namespace zm_trial_reset_points/zm_trial_reset_points
// Params 1, eflags: 0x4
// Checksum 0x4967fd0, Offset: 0x160
// Size: 0xd0
function private on_begin(var_899c6d17) {
    if (isdefined(var_899c6d17)) {
        var_899c6d17 = zm_trial::function_5769f26a(var_899c6d17);
    } else {
        var_899c6d17 = 0;
    }
    wait(6);
    foreach (player in getplayers()) {
        player thread reset_points(var_899c6d17);
    }
}

// Namespace zm_trial_reset_points/zm_trial_reset_points
// Params 1, eflags: 0x4
// Checksum 0x40941cec, Offset: 0x238
// Size: 0x8c
function private reset_points(var_899c6d17) {
    if (self bgb::is_enabled(#"zm_bgb_shopping_free")) {
        self bgb::do_one_shot_use();
        self playsoundtoplayer(#"zmb_bgb_shoppingfree_coinreturn", self);
        return;
    }
    self.score = var_899c6d17;
    self.pers[#"score"] = var_899c6d17;
}

// Namespace zm_trial_reset_points/zm_trial_reset_points
// Params 1, eflags: 0x4
// Checksum 0x14246399, Offset: 0x2d0
// Size: 0xc
function private on_end(*round_reset) {
    
}

