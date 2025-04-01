#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace zsurvival_collapse;

// Namespace zsurvival_collapse/zsurvival_collapse
// Params 0, eflags: 0x5
// Checksum 0xea85a3fd, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"zsurvival_collapse", &preinit, undefined, undefined, undefined );
}

// Namespace zsurvival_collapse/zsurvival_collapse
// Params 0, eflags: 0x4
// Checksum 0x9a11cd68, Offset: 0xe0
// Size: 0x44
function private preinit()
{
    if ( is_true( getgametypesetting( #"hash_1e1a5ebefe2772ba" ) ) )
    {
        level.var_53bc31ad = 1;
    }
}

