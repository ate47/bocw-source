#using script_2f272fb57a31d81c;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\killstreaks\killstreak_vehicle;

#namespace missile_turret;

// Namespace missile_turret/missile_turret
// Params 0, eflags: 0x5
// Checksum 0x61c37470, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"missile_turret", &preinit, undefined, undefined, undefined );
}

// Namespace missile_turret/missile_turret
// Params 0, eflags: 0x4
// Checksum 0x787f9a41, Offset: 0x108
// Size: 0x4c
function private preinit()
{
    init_shared();
    bundle = getscriptbundle( "killstreak_missile_turret" );
    killstreak_vehicle::init_killstreak( bundle );
}

