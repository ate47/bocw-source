#using scripts\core_common\callbacks_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace scythe;

// Namespace scythe/scythe
// Params 0, eflags: 0x5
// Checksum 0x70785597, Offset: 0x98
// Size: 0x44
function private autoexec __init__system__()
{
    system::register( #"scythe", &__init__, undefined, undefined, #"killstreaks" );
}

// Namespace scythe/scythe
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0xe8
// Size: 0x4
function __init__()
{
    
}

