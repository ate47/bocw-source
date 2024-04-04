// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_983e5028;

// Namespace namespace_983e5028/namespace_983e5028
// Params 0, eflags: 0x5
// Checksum 0xe14e7959, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_1633972af838a447", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_983e5028/namespace_983e5028
// Params 0, eflags: 0x4
// Checksum 0x7cd68ec0, Offset: 0x108
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"hash_2fc73bc20035fe8", &on_begin, &on_end);
}

// Namespace namespace_983e5028/namespace_983e5028
// Params 1, eflags: 0x4
// Checksum 0x7982a27, Offset: 0x170
// Size: 0xd8
function private on_begin(var_d34d02af) {
    level.var_d34d02af = zm_trial::function_5769f26a(var_d34d02af);
    callback::on_weapon_fired(&on_weapon_fired);
    foreach (player in getplayers()) {
        player thread function_a5a431f6();
    }
}

// Namespace namespace_983e5028/namespace_983e5028
// Params 1, eflags: 0x4
// Checksum 0x32f5efa4, Offset: 0x250
// Size: 0x36
function private on_end(*round_reset) {
    callback::remove_on_weapon_fired(&on_weapon_fired);
    level.var_d34d02af = undefined;
}

// Namespace namespace_983e5028/namespace_983e5028
// Params 1, eflags: 0x4
// Checksum 0xf975a15c, Offset: 0x290
// Size: 0x7c
function private on_weapon_fired(params) {
    if (zm_weapons::is_explosive_weapon(params.weapon)) {
        self zm_score::player_reduce_points("take_specified", level.var_d34d02af * 2);
        return;
    }
    self zm_score::player_reduce_points("take_specified", level.var_d34d02af);
}

// Namespace namespace_983e5028/namespace_983e5028
// Params 0, eflags: 0x4
// Checksum 0xc400492b, Offset: 0x318
// Size: 0x90
function private function_a5a431f6() {
    self endon(#"disconnect");
    level endon(#"hash_7646638df88a3656");
    while (true) {
        s_waitresult = self waittill(#"ammo_reduction", #"lightning_ball_created");
        self zm_score::player_reduce_points("take_specified", level.var_d34d02af);
    }
}

