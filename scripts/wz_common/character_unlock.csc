#using scripts\core_common\callbacks_shared;
#using scripts\core_common\item_inventory;
#using scripts\core_common\item_world_fixup;
#using scripts\core_common\system_shared;

#namespace character_unlock;

// Namespace character_unlock/character_unlock
// Params 0, eflags: 0x5
// Checksum 0x944709fd, Offset: 0xa0
// Size: 0x44
function private autoexec __init__system__()
{
    system::register( #"character_unlock", &preinit, undefined, undefined, #"character_unlock_fixup" );
}

// Namespace character_unlock/character_unlock
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0xf0
// Size: 0x4
function private preinit()
{
    
}

// Namespace character_unlock/character_unlock
// Params 3, eflags: 0x0
// Checksum 0x107156d2, Offset: 0x100
// Size: 0x1c
function function_d2294476( *var_2ab9d3bd, *replacementcount, *var_3afaa57b )
{
    
}

