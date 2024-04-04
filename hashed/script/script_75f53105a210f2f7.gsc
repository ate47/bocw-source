// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_901adecc;

// Namespace namespace_901adecc/namespace_901adecc
// Params 0, eflags: 0x5
// Checksum 0xa52cbb84, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_5e733914ebbc17f7", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_901adecc/namespace_901adecc
// Params 0, eflags: 0x4
// Checksum 0xdf29f960, Offset: 0xe8
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"hash_293a2fd65ffe0222", &on_begin, &on_end);
}

// Namespace namespace_901adecc/namespace_901adecc
// Params 0, eflags: 0x4
// Checksum 0x35a59a22, Offset: 0x150
// Size: 0x98
function private on_begin() {
    foreach (player in getplayers()) {
        player callback::on_player_damage(&on_player_damage);
    }
}

// Namespace namespace_901adecc/namespace_901adecc
// Params 1, eflags: 0x4
// Checksum 0xaefa5855, Offset: 0x1f0
// Size: 0xa0
function private on_end(*round_reset) {
    foreach (player in getplayers()) {
        player callback::remove_on_player_damage(&on_player_damage);
    }
}

// Namespace namespace_901adecc/namespace_901adecc
// Params 1, eflags: 0x4
// Checksum 0xfd4b565b, Offset: 0x298
// Size: 0xc4
function private on_player_damage(params) {
    if ((isai(params.eattacker) || isai(params.einflictor)) && (params.idamage > 0 || isdefined(self.armor) && self.armor > 0)) {
        var_57807cdc = [];
        array::add(var_57807cdc, self, 0);
        zm_trial::fail(#"hash_41122a695bc6065d", var_57807cdc);
    }
}

