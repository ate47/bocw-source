#using scripts\core_common\clientfield_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\visionset_mgr_shared;
#using scripts\zm_common\zm_perks;

#namespace zm_perk_sleight_of_hand;

// Namespace zm_perk_sleight_of_hand/zm_perk_sleight_of_hand
// Params 0, eflags: 0x5
// Checksum 0x91c624c9, Offset: 0xf8
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"zm_perk_sleight_of_hand", &preinit, undefined, undefined, undefined );
}

// Namespace zm_perk_sleight_of_hand/zm_perk_sleight_of_hand
// Params 0, eflags: 0x4
// Checksum 0x656ec3ca, Offset: 0x140
// Size: 0x14
function private preinit()
{
    function_a8fdd433();
}

// Namespace zm_perk_sleight_of_hand/zm_perk_sleight_of_hand
// Params 0, eflags: 0x0
// Checksum 0xe609e24c, Offset: 0x160
// Size: 0xb4
function function_a8fdd433()
{
    zm_perks::register_perk_clientfields( #"talent_speedcola", &function_38dda839, &function_3bdb96bc );
    zm_perks::register_perk_effects( #"talent_speedcola", "sleight_light" );
    zm_perks::register_perk_init_thread( #"talent_speedcola", &function_7d2154f5 );
    zm_perks::function_f3c80d73( "zombie_perk_bottle_sleight" );
}

// Namespace zm_perk_sleight_of_hand/zm_perk_sleight_of_hand
// Params 0, eflags: 0x0
// Checksum 0x58e1fa1c, Offset: 0x220
// Size: 0x3c
function function_7d2154f5()
{
    if ( is_true( level.enable_magic ) )
    {
        level._effect[ #"sleight_light" ] = "zombie/fx_perk_speedcola_ndu";
    }
}

// Namespace zm_perk_sleight_of_hand/zm_perk_sleight_of_hand
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x268
// Size: 0x4
function function_38dda839()
{
    
}

// Namespace zm_perk_sleight_of_hand/zm_perk_sleight_of_hand
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x278
// Size: 0x4
function function_3bdb96bc()
{
    
}

