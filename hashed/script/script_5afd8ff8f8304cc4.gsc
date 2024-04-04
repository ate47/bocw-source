// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_trial.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_a476311c;

// Namespace namespace_a476311c/namespace_a476311c
// Params 0, eflags: 0x5
// Checksum 0x5eec2cb7, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_7ceb08aa364e4596", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_a476311c/namespace_a476311c
// Params 0, eflags: 0x4
// Checksum 0xa258d993, Offset: 0xd8
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"hash_250115340b2e27a5", &on_begin, &on_end);
}

// Namespace namespace_a476311c/namespace_a476311c
// Params 2, eflags: 0x4
// Checksum 0x2c0829f1, Offset: 0x140
// Size: 0x2c
function private on_begin(*local_client_num, *params) {
    level.var_7db2b064 = &function_ecc5a0b9;
}

// Namespace namespace_a476311c/namespace_a476311c
// Params 1, eflags: 0x4
// Checksum 0xe1d22bd1, Offset: 0x178
// Size: 0x16
function private on_end(*local_client_num) {
    level.var_7db2b064 = undefined;
}

// Namespace namespace_a476311c/namespace_a476311c
// Params 0, eflags: 0x0
// Checksum 0x2c70c1b, Offset: 0x198
// Size: 0x32
function is_active() {
    challenge = zm_trial::function_a36e8c38(#"hash_250115340b2e27a5");
    return isdefined(challenge);
}

// Namespace namespace_a476311c/namespace_a476311c
// Params 3, eflags: 0x4
// Checksum 0x7640df8f, Offset: 0x1d8
// Size: 0x44
function private function_ecc5a0b9(*local_client_num, *player, damage) {
    if (int(damage) <= 1) {
        return true;
    }
    return false;
}

