#using scripts\core_common\system_shared;
#using scripts\killstreaks\killstreakrules_shared;

#namespace annihilator_rules;

// Namespace annihilator_rules/annihilator_rules
// Params 0, eflags: 0x5
// Checksum 0xada1a63f, Offset: 0xb8
// Size: 0x44
function private autoexec __init__system__()
{
    system::register( #"annihilator_rules", &preinit, undefined, undefined, #"killstreaks" );
}

// Namespace annihilator_rules/annihilator_rules
// Params 0, eflags: 0x0
// Checksum 0xa3ad9dc3, Offset: 0x108
// Size: 0x44
function preinit()
{
    if ( isdefined( level.killstreakrules[ #"hero_weapons" ] ) )
    {
        killstreakrules::addkillstreaktorule( "hero_annihilator", "hero_weapons", 0, 0 );
    }
}

