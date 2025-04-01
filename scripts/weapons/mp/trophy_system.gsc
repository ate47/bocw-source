#using scripts\core_common\battlechatter;
#using scripts\core_common\contracts_shared;
#using scripts\core_common\player\player_stats;
#using scripts\core_common\system_shared;
#using scripts\weapons\trophy_system;

#namespace trophy_system;

// Namespace trophy_system/trophy_system
// Params 0, eflags: 0x5
// Checksum 0xc37f88fc, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"trophy_system", &preinit, undefined, undefined, undefined );
}

// Namespace trophy_system/trophy_system
// Params 0, eflags: 0x4
// Checksum 0x62577666, Offset: 0xf0
// Size: 0x34
function private preinit()
{
    init_shared();
    function_720ddf7f( &function_ccfcde75 );
}

// Namespace trophy_system/trophy_system
// Params 2, eflags: 0x0
// Checksum 0x64f8ec1f, Offset: 0x130
// Size: 0x90
function function_ccfcde75( trophy, grenade )
{
    self battlechatter::function_fc82b10( trophy.weapon, grenade.origin, trophy );
    self contracts::increment_contract( #"hash_5d75f7e385889afa" );
    
    if ( isdefined( level.var_b7bc3c75.var_fbbc4c75 ) )
    {
        self [[ level.var_b7bc3c75.var_fbbc4c75 ]]( trophy );
    }
}

