#using scripts\core_common\system_shared;
#using scripts\killstreaks\killstreakrules_shared;

#namespace flamethrower_rules;

// Namespace flamethrower_rules/flamethrower_rules
// Params 0, eflags: 0x5
// Checksum 0x5683568c, Offset: 0xb8
// Size: 0x44
function private autoexec __init__system__()
{
    system::register( #"flamethrower_rules", &preinit, undefined, undefined, #"killstreaks" );
}

// Namespace flamethrower_rules/flamethrower_rules
// Params 0, eflags: 0x0
// Checksum 0xd1529033, Offset: 0x108
// Size: 0x44
function preinit()
{
    if ( isdefined( level.killstreakrules[ #"hero_weapons" ] ) )
    {
        killstreakrules::addkillstreaktorule( "hero_flamethrower", "hero_weapons", 0, 0 );
    }
}

