#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\status_effects\status_effect_util;
#using scripts\core_common\system_shared;

#namespace status_effect_explosive_damage;

// Namespace status_effect_explosive_damage/status_effect_explosive_damage
// Params 0, eflags: 0x5
// Checksum 0x8154ccad, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"status_effect_explosive_damage", &preinit, undefined, undefined, undefined );
}

// Namespace status_effect_explosive_damage/status_effect_explosive_damage
// Params 0, eflags: 0x4
// Checksum 0x93a22431, Offset: 0x100
// Size: 0x2c
function private preinit()
{
    status_effect::function_6f4eaf88( getstatuseffect( "explosive_damage" ) );
}

