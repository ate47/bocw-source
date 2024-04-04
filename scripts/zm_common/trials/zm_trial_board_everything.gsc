// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_trial_util.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace zm_trial_board_everything;

// Namespace zm_trial_board_everything/zm_trial_board_everything
// Params 0, eflags: 0x5
// Checksum 0xe48e8047, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_board_everything", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_board_everything/zm_trial_board_everything
// Params 0, eflags: 0x4
// Checksum 0x664cc0a3, Offset: 0x110
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"board_everything", &on_begin, &on_end);
}

// Namespace zm_trial_board_everything/zm_trial_board_everything
// Params 0, eflags: 0x4
// Checksum 0x533c9878, Offset: 0x178
// Size: 0x34
function private on_begin() {
    zm_powerups::function_74b8ec6b("carpenter");
    level thread function_4172344e();
}

// Namespace zm_trial_board_everything/zm_trial_board_everything
// Params 1, eflags: 0x4
// Checksum 0x9650ed19, Offset: 0x1b8
// Size: 0x8c
function private on_end(round_reset) {
    if (!round_reset && level.var_3de460b1 < level.var_70135c38) {
        zm_trial::fail(#"hash_e0fa688fb248886");
    }
    level.var_3de460b1 = undefined;
    level.var_70135c38 = undefined;
    zm_trial_util::function_f3dbeda7();
    zm_powerups::function_41cedb05("carpenter");
}

// Namespace zm_trial_board_everything/zm_trial_board_everything
// Params 0, eflags: 0x0
// Checksum 0xcba84ee7, Offset: 0x250
// Size: 0x192
function function_4172344e() {
    level endon(#"hash_7646638df88a3656");
    while (true) {
        level.var_70135c38 = level.exterior_goals.size;
        level.var_3de460b1 = 0;
        foreach (s_barrier in level.exterior_goals) {
            if (zm_utility::all_chunks_intact(s_barrier, s_barrier.barrier_chunks) || zm_utility::no_valid_repairable_boards(s_barrier, s_barrier.barrier_chunks)) {
                level.var_3de460b1++;
            }
        }
        zm_trial_util::function_2976fa44(level.var_70135c38);
        zm_trial_util::function_dace284(level.var_3de460b1, 1);
        s_waitresult = level waittill(#"zombie_board_tear", #"board_repaired", #"carpenter_finished");
    }
}

