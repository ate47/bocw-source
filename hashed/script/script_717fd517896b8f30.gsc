// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_trial_util.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zm_trial_randomize_perks;

// Namespace zm_trial_randomize_perks/namespace_3c6f8637
// Params 0, eflags: 0x5
// Checksum 0xc3d448ce, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_24dadafee669bfbe", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_randomize_perks/namespace_3c6f8637
// Params 0, eflags: 0x4
// Checksum 0x4a993d69, Offset: 0xe0
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"hash_45ef12aaa7c1d585", &on_begin, &on_end);
}

// Namespace zm_trial_randomize_perks/namespace_3c6f8637
// Params 2, eflags: 0x4
// Checksum 0x4c4788ae, Offset: 0x148
// Size: 0xd0
function private on_begin(var_e38c7612, var_2d4ba9d4) {
    self.var_e38c7612 = zm_trial::function_5769f26a(var_e38c7612);
    self.var_2d4ba9d4 = isdefined(var_2d4ba9d4);
    foreach (player in getplayers()) {
        player thread function_e4c3443c(self);
    }
}

// Namespace zm_trial_randomize_perks/namespace_3c6f8637
// Params 1, eflags: 0x4
// Checksum 0x9ebf5cce, Offset: 0x220
// Size: 0x194
function private on_end(round_reset) {
    if (!round_reset) {
        var_696c3b4 = [];
        foreach (player in getplayers()) {
            if (!is_true(player.var_167bc422)) {
                if (!isdefined(var_696c3b4)) {
                    var_696c3b4 = [];
                } else if (!isarray(var_696c3b4)) {
                    var_696c3b4 = array(var_696c3b4);
                }
                var_696c3b4[var_696c3b4.size] = player;
            }
            player.var_167bc422 = undefined;
            player zm_trial_util::function_f3aacffb();
        }
        if (var_696c3b4.size) {
            if (is_true(self.var_2d4ba9d4)) {
                var_ded5d2ed = #"hash_192dc062b9c5de31";
            } else {
                var_ded5d2ed = #"hash_26f44827b2b24825";
            }
            zm_trial::fail(var_ded5d2ed, var_696c3b4);
        }
    }
}

// Namespace zm_trial_randomize_perks/namespace_3c6f8637
// Params 1, eflags: 0x0
// Checksum 0xd4278ad9, Offset: 0x3c0
// Size: 0x3a
function is_active(*var_34f09024) {
    challenge = zm_trial::function_a36e8c38(#"hash_45ef12aaa7c1d585");
    return isdefined(challenge);
}

// Namespace zm_trial_randomize_perks/namespace_3c6f8637
// Params 1, eflags: 0x4
// Checksum 0x55e18abd, Offset: 0x408
// Size: 0x1ee
function private function_e4c3443c(s_challenge) {
    level endon(#"hash_7646638df88a3656");
    self endon(#"disconnect");
    while (true) {
        if (is_true(s_challenge.var_2d4ba9d4)) {
            if (!is_true(self.var_167bc422) && self.score < s_challenge.var_e38c7612) {
                self zm_trial_util::function_63060af4(1);
                self.var_167bc422 = 1;
            } else if (is_true(self.var_167bc422) && self.score >= s_challenge.var_e38c7612) {
                self zm_trial_util::function_63060af4(0);
                self.var_167bc422 = undefined;
            }
        } else if (!is_true(self.var_167bc422) && self.score >= s_challenge.var_e38c7612) {
            self zm_trial_util::function_63060af4(1);
            self.var_167bc422 = 1;
        } else if (is_true(self.var_167bc422) && self.score < s_challenge.var_e38c7612) {
            self zm_trial_util::function_63060af4(0);
            self.var_167bc422 = undefined;
        }
        self waittill(#"earned_points", #"spent_points", #"reduced_points");
    }
}

