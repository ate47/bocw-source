#using scripts\core_common\system_shared;
#using scripts\killstreaks\planemortar_shared;

#namespace planemortar;

// Namespace planemortar/planemortar
// Params 0, eflags: 0x5
// Checksum 0x30ffec58, Offset: 0x90
// Size: 0x44
function private autoexec __init__system__()
{
    system::register( #"planemortar", &preinit, undefined, undefined, #"killstreaks" );
}

// Namespace planemortar/planemortar
// Params 0, eflags: 0x4
// Checksum 0x98b8c2b9, Offset: 0xe0
// Size: 0x14
function private preinit()
{
    init_shared();
}

