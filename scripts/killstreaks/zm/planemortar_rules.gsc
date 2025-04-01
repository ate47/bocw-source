#using scripts\core_common\system_shared;
#using scripts\killstreaks\killstreakrules_shared;

#namespace planemortar_rules;

// Namespace planemortar_rules/planemortar_rules
// Params 0, eflags: 0x5
// Checksum 0x9b4c1b3d, Offset: 0xb0
// Size: 0x44
function private autoexec __init__system__()
{
    system::register( #"planemortar_rules", &preinit, undefined, undefined, #"killstreaks" );
}

// Namespace planemortar_rules/planemortar_rules
// Params 0, eflags: 0x0
// Checksum 0xb68f22b2, Offset: 0x100
// Size: 0x44
function preinit()
{
    if ( isdefined( level.killstreakrules[ #"hero_weapons" ] ) )
    {
        killstreakrules::addkillstreaktorule( "planemortar", "hero_weapons", 0, 0 );
    }
}

