#using scripts\core_common\system_shared;
#using scripts\killstreaks\killstreakrules_shared;

#namespace lmg_rules;

// Namespace lmg_rules/lmg_rules
// Params 0, eflags: 0x5
// Checksum 0x51c3bf90, Offset: 0xb0
// Size: 0x44
function private autoexec __init__system__()
{
    system::register( #"lmg_rules", &preinit, undefined, undefined, #"killstreaks" );
}

// Namespace lmg_rules/lmg_rules
// Params 0, eflags: 0x0
// Checksum 0x2ec2ad32, Offset: 0x100
// Size: 0x44
function preinit()
{
    if ( isdefined( level.killstreakrules[ #"hero_weapons" ] ) )
    {
        killstreakrules::addkillstreaktorule( "sig_lmg", "hero_weapons", 0, 0 );
    }
}

