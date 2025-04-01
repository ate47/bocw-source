#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\killstreaks\killstreaks_shared;
#using scripts\killstreaks\planemortar_shared;

#namespace planemortar;

// Namespace planemortar/planemortar
// Params 0, eflags: 0x5
// Checksum 0x212b7465, Offset: 0xc8
// Size: 0x44
function private autoexec __init__system__()
{
    system::register( #"planemortar", &preinit, undefined, undefined, #"killstreaks" );
}

// Namespace planemortar/planemortar
// Params 0, eflags: 0x4
// Checksum 0x944acc22, Offset: 0x118
// Size: 0x44
function private preinit()
{
    init_shared();
    killstreaks::register_killstreak( "killstreak_planemortar" + "_cp", &usekillstreakplanemortar );
}

