// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_trial.gsc;
#using scripts\zm_common\zm_trial_util.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zm_trial_open_all_doors;

// Namespace zm_trial_open_all_doors/zm_trial_open_all_doors
// Params 0, eflags: 0x5
// Checksum 0xa41c624c, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_open_all_doors", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_open_all_doors/zm_trial_open_all_doors
// Params 0, eflags: 0x4
// Checksum 0x5822d58f, Offset: 0x118
// Size: 0xec
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zombie_doors = getentarray("zombie_door", "targetname");
    zombie_debris = getentarray("zombie_debris", "targetname");
    level.var_a0f5e369 = function_d34c075e(zombie_doors);
    level.var_3a748490 = function_d34c075e(zombie_debris);
    zm_trial::register_challenge(#"open_all_doors", &on_begin, &on_end);
}

// Namespace zm_trial_open_all_doors/zm_trial_open_all_doors
// Params 1, eflags: 0x4
// Checksum 0xcf947a77, Offset: 0x210
// Size: 0xdc
function private on_begin(n_timer) {
    level.var_d39baced = level.zombie_total_set_func;
    level.zombie_total_set_func = &set_zombie_total;
    zm_trial_util::function_2976fa44(function_d2a5d1f0());
    zm_trial_util::function_2976fa44(function_e242d7a8());
    level thread function_b2fa4678();
    if (isdefined(n_timer)) {
        self.n_timer = zm_trial::function_5769f26a(n_timer);
        level thread monitor_timer(self.n_timer);
    }
}

// Namespace zm_trial_open_all_doors/zm_trial_open_all_doors
// Params 1, eflags: 0x4
// Checksum 0x857a70de, Offset: 0x2f8
// Size: 0x15a
function private on_end(round_reset) {
    level.zombie_total_set_func = level.var_d39baced;
    zm_trial_util::function_f3dbeda7();
    if (!round_reset) {
        var_eeba6731 = function_d2a5d1f0();
        var_de1def71 = function_e242d7a8();
        if (var_eeba6731 < var_de1def71) {
            zm_trial::fail(#"hash_2c31c30f3d0b0484", getplayers());
        }
    }
    if (isdefined(self.n_timer)) {
        foreach (player in getplayers()) {
            player zm_trial_util::function_885fb2c8();
        }
    }
    level.var_d0b04690 = undefined;
}

// Namespace zm_trial_open_all_doors/zm_trial_open_all_doors
// Params 0, eflags: 0x0
// Checksum 0x8986d010, Offset: 0x460
// Size: 0x64
function set_zombie_total() {
    var_92217b88 = (level.var_a0f5e369 + level.var_3a748490) * 10;
    level.zombie_total = int(max(level.zombie_total, var_92217b88));
}

// Namespace zm_trial_open_all_doors/zm_trial_open_all_doors
// Params 1, eflags: 0x4
// Checksum 0x6bdaf1e6, Offset: 0x4d0
// Size: 0xc6
function private function_d34c075e(ents) {
    arrayremovevalue(ents, undefined, 0);
    unique = [];
    foreach (ent in ents) {
        if (isdefined(ent.target)) {
            unique[ent.target] = 1;
        }
    }
    return unique.size;
}

// Namespace zm_trial_open_all_doors/zm_trial_open_all_doors
// Params 2, eflags: 0x4
// Checksum 0x7f37be5f, Offset: 0x5a0
// Size: 0x11e
function private function_a4cfa984(door_ents, debris_ents) {
    var_8b730c3e = [];
    foreach (door_ent in door_ents) {
        if (isdefined(door_ent.target) && is_true(door_ent.has_been_opened)) {
            var_8b730c3e[door_ent.target] = 1;
        }
    }
    var_eeba6731 = var_8b730c3e.size;
    var_c5f7c25b = function_d34c075e(debris_ents);
    var_69310a8a = level.var_3a748490 - var_c5f7c25b;
    return var_eeba6731 + var_69310a8a;
}

// Namespace zm_trial_open_all_doors/zm_trial_open_all_doors
// Params 0, eflags: 0x4
// Checksum 0xd5bc9a7f, Offset: 0x6c8
// Size: 0x100
function private function_b2fa4678() {
    self endon(#"disconnect");
    level endon(#"hash_7646638df88a3656");
    var_c43a6efa = 0;
    var_58161ed2 = function_e242d7a8();
    while (true) {
        var_54e16eaa = function_d2a5d1f0();
        if (var_54e16eaa != var_c43a6efa) {
            if (var_54e16eaa >= var_58161ed2) {
                zm_trial_util::function_7d32b7d0(1);
                level notify(#"hash_6ba2e2da302282");
                level.var_d0b04690 = 1;
            } else {
                zm_trial_util::function_dace284(var_54e16eaa);
            }
            var_c43a6efa = var_54e16eaa;
        }
        wait(0.5);
    }
}

// Namespace zm_trial_open_all_doors/zm_trial_open_all_doors
// Params 1, eflags: 0x4
// Checksum 0xc530142d, Offset: 0x7d0
// Size: 0x1cc
function private monitor_timer(n_timer) {
    level endon(#"hash_7646638df88a3656");
    wait(12);
    foreach (player in getplayers()) {
        player zm_trial_util::function_128378c9(n_timer, 1, #"hash_c2b77be4cf5b142");
    }
    level waittilltimeout(n_timer + 1, #"hash_6ba2e2da302282");
    foreach (player in getplayers()) {
        player zm_trial_util::function_885fb2c8();
    }
    if (function_d2a5d1f0() < function_e242d7a8()) {
        zm_trial::fail(#"hash_2c31c30f3d0b0484", getplayers());
    }
}

// Namespace zm_trial_open_all_doors/zm_trial_open_all_doors
// Params 0, eflags: 0x0
// Checksum 0x894f9d97, Offset: 0x9a8
// Size: 0x7a
function function_d2a5d1f0() {
    zombie_doors = getentarray("zombie_door", "targetname");
    zombie_debris = getentarray("zombie_debris", "targetname");
    var_49a2fc65 = function_a4cfa984(zombie_doors, zombie_debris);
    return var_49a2fc65;
}

// Namespace zm_trial_open_all_doors/zm_trial_open_all_doors
// Params 0, eflags: 0x0
// Checksum 0xa08d4b, Offset: 0xa30
// Size: 0x18
function function_e242d7a8() {
    return level.var_a0f5e369 + level.var_3a748490;
}

