// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace status_effect_deaf;

// Namespace status_effect_deaf/status_effect_deaf
// Params 0, eflags: 0x5
// Checksum 0x6f9e419f, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"status_effect_deaf", &preinit, undefined, undefined, undefined);
}

// Namespace status_effect_deaf/status_effect_deaf
// Params 0, eflags: 0x6 linked
// Checksum 0xa7016ff0, Offset: 0xe8
// Size: 0x8c
function private preinit() {
    status_effect::register_status_effect_callback_apply(0, &deaf_apply);
    status_effect::function_5bae5120(0, &function_c5189bd);
    status_effect::function_6f4eaf88(getstatuseffect("deaf"));
    callback::on_spawned(&on_player_spawned);
}

// Namespace status_effect_deaf/status_effect_deaf
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x180
// Size: 0x4
function on_player_spawned() {
    
}

// Namespace status_effect_deaf/status_effect_deaf
// Params 3, eflags: 0x2 linked
// Checksum 0x1faccbfa, Offset: 0x190
// Size: 0x1c
function deaf_apply(*var_756fda07, *weapon, *applicant) {
    
}

// Namespace status_effect_deaf/status_effect_deaf
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x1b8
// Size: 0x4
function function_c5189bd() {
    
}

