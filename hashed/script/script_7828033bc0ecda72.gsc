// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_7499819f;

// Namespace namespace_7499819f/namespace_7499819f
// Params 0, eflags: 0x5
// Checksum 0x3dc689a7, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_3887e77731340f48", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_7499819f/namespace_7499819f
// Params 0, eflags: 0x4
// Checksum 0x3b18c2e, Offset: 0xe8
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"hash_b143bd998abdd27", &on_begin, &on_end);
}

// Namespace namespace_7499819f/namespace_7499819f
// Params 0, eflags: 0x4
// Checksum 0x8d64ebdf, Offset: 0x150
// Size: 0x98
function private on_begin() {
    foreach (player in getplayers()) {
        player callback::on_laststand(&on_player_laststand);
    }
}

// Namespace namespace_7499819f/namespace_7499819f
// Params 1, eflags: 0x4
// Checksum 0x14e78e93, Offset: 0x1f0
// Size: 0xa0
function private on_end(*round_reset) {
    foreach (player in getplayers()) {
        player callback::remove_on_laststand(&on_player_laststand);
    }
}

// Namespace namespace_7499819f/namespace_7499819f
// Params 0, eflags: 0x4
// Checksum 0x3ef2f948, Offset: 0x298
// Size: 0x4c
function private on_player_laststand() {
    var_57807cdc = [];
    array::add(var_57807cdc, self, 0);
    zm_trial::fail(#"hash_272fae998263208b", var_57807cdc);
}

