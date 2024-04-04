// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace status_effect_movement_speed;

// Namespace status_effect_movement_speed/status_effect_movement_speed
// Params 0, eflags: 0x5
// Checksum 0x27735d49, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"status_effect_movement_speed", &preinit, undefined, undefined, undefined);
}

// Namespace status_effect_movement_speed/status_effect_movement_speed
// Params 0, eflags: 0x6 linked
// Checksum 0xa8d1f58f, Offset: 0xe8
// Size: 0x4c
function private preinit() {
    status_effect::function_6f4eaf88(getstatuseffect("movement"));
    status_effect::function_5bae5120(8, &function_f7e9c0bb);
}

// Namespace status_effect_movement_speed/status_effect_movement_speed
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x140
// Size: 0x4
function function_f7e9c0bb() {
    
}

