// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\bgbs\zm_bgb_anywhere_but_here.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_trial_util.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_5c493a54;

// Namespace namespace_5c493a54/namespace_5c493a54
// Params 0, eflags: 0x5
// Checksum 0xcdd37357, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_23b914dca866a297", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_5c493a54/namespace_5c493a54
// Params 0, eflags: 0x4
// Checksum 0x9a2a0c20, Offset: 0x100
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"hash_b7f913776f85df2", &on_begin, &on_end);
}

// Namespace namespace_5c493a54/namespace_5c493a54
// Params 3, eflags: 0x4
// Checksum 0x1fbee890, Offset: 0x168
// Size: 0x118
function private on_begin(var_2e5ed433, var_1532dab3, var_94d24883) {
    level.var_2e5ed433 = zm_trial::function_5769f26a(var_2e5ed433) * 1000;
    if (isdefined(var_1532dab3)) {
        var_1532dab3 = zm_trial::function_5769f26a(var_1532dab3);
    }
    if (isdefined(var_94d24883)) {
        var_94d24883 = zm_trial::function_5769f26a(var_94d24883);
    }
    foreach (player in getplayers()) {
        player thread point_watcher(var_1532dab3, var_94d24883);
    }
}

// Namespace namespace_5c493a54/namespace_5c493a54
// Params 1, eflags: 0x4
// Checksum 0xb214d494, Offset: 0x288
// Size: 0x28
function private on_end(*round_reset) {
    level.var_2e5ed433 = undefined;
    level notify(#"hash_2669c6e7b1eb2e4b");
}

// Namespace namespace_5c493a54/namespace_5c493a54
// Params 0, eflags: 0x0
// Checksum 0x1296eac3, Offset: 0x2b8
// Size: 0x32
function is_active() {
    challenge = zm_trial::function_a36e8c38(#"hash_b7f913776f85df2");
    return isdefined(challenge);
}

// Namespace namespace_5c493a54/namespace_5c493a54
// Params 2, eflags: 0x4
// Checksum 0x432086b5, Offset: 0x2f8
// Size: 0x11c
function private point_watcher(var_1532dab3 = 1, var_94d24883 = 0.9) {
    level endon(#"hash_2669c6e7b1eb2e4b", #"end_game", #"hash_7646638df88a3656");
    self endon(#"disconnect");
    wait(15);
    while (true) {
        if (isalive(self) && !self laststand::player_is_in_laststand() && isdefined(self.score) && self.score > level.var_2e5ed433) {
            self dodamage(var_1532dab3, self.origin);
            wait(var_94d24883);
        }
        waitframe(1);
    }
}

