#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\zm_common\zm_powerups;

#namespace zm_powerup_hero_weapon_power;

// Namespace zm_powerup_hero_weapon_power/zm_powerup_hero_weapon_power
// Params 0, eflags: 0x5
// Checksum 0x3286e177, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"zm_powerup_hero_weapon_power", &preinit, undefined, undefined, undefined );
}

// Namespace zm_powerup_hero_weapon_power/zm_powerup_hero_weapon_power
// Params 0, eflags: 0x4
// Checksum 0x8b338208, Offset: 0xf8
// Size: 0x34
function private preinit()
{
    zm_powerups::include_zombie_powerup( "hero_weapon_power" );
    zm_powerups::add_zombie_powerup( "hero_weapon_power" );
}

