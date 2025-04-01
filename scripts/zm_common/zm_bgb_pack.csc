#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\zm_common\load;

#namespace bgb_pack;

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x5
// Checksum 0x45b269a2, Offset: 0xb0
// Size: 0x4c
function private autoexec __init__system__()
{
    system::register( #"bgb_pack", &preinit, &postinit, undefined, undefined );
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x4
// Checksum 0xbe1c1edc, Offset: 0x108
// Size: 0x20
function private preinit()
{
    if ( !is_true( level.bgb_in_use ) )
    {
        return;
    }
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x4
// Checksum 0xf92f5887, Offset: 0x130
// Size: 0x20
function private postinit()
{
    if ( !is_true( level.bgb_in_use ) )
    {
        return;
    }
}

