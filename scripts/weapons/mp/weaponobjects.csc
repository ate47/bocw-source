#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\weapons\weaponobjects;

#namespace weaponobjects;

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x5
// Checksum 0xe7ff0b14, Offset: 0x140
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"weaponobjects", &preinit, undefined, undefined, undefined );
}

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x4
// Checksum 0xdfdd32c0, Offset: 0x188
// Size: 0x84
function private preinit()
{
    init_shared( sessionmodeiscampaigngame() ? #"rob_sonar_set_friendlyequip_cp" : #"rob_sonar_set_friendlyequip_mp", #"rob_sonar_set_enemyequip" );
    level setupscriptmovercompassicons();
    level setupmissilecompassicons();
}

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x0
// Checksum 0x85cb466b, Offset: 0x218
// Size: 0xdc
function setupscriptmovercompassicons()
{
    if ( !isdefined( level.scriptmovercompassicons ) )
    {
        level.scriptmovercompassicons = [];
    }
    
    level.scriptmovercompassicons[ #"wpn_t7_turret_emp_core" ] = "compass_empcore_white";
    level.scriptmovercompassicons[ #"t6_wpn_turret_ads_world" ] = "compass_guardian_white";
    level.scriptmovercompassicons[ #"veh_t7_drone_uav_enemy_vista" ] = "compass_uav";
    level.scriptmovercompassicons[ #"veh_t7_mil_vtol_fighter_mp" ] = "compass_lightningstrike";
    level.scriptmovercompassicons[ #"veh_t7_drone_rolling_thunder" ] = "compass_lodestar";
    level.scriptmovercompassicons[ #"veh_t7_drone_srv_blimp" ] = "t7_hud_minimap_hatr";
}

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x0
// Checksum 0x2b206968, Offset: 0x300
// Size: 0x74
function setupmissilecompassicons()
{
    if ( !isdefined( level.missilecompassicons ) )
    {
        level.missilecompassicons = [];
    }
    
    if ( isdefined( getweapon( #"drone_strike" ) ) )
    {
        level.missilecompassicons[ getweapon( #"drone_strike" ) ] = "compass_lodestar";
    }
}

