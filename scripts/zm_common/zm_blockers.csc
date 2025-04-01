#using scripts\core_common\audio_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\zm_common\zm_utility;
#using scripts\zm_common\zm_weapons;

#namespace zm_blockers;

// Namespace zm_blockers/zm_blockers
// Params 0, eflags: 0x5
// Checksum 0x6994554a, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"zm_blockers", &preinit, undefined, undefined, undefined );
}

// Namespace zm_blockers/zm_blockers
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x110
// Size: 0x4
function private preinit()
{
    
}

// Namespace zm_blockers/zm_blockers
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x120
// Size: 0x4
function private postinit()
{
    
}

