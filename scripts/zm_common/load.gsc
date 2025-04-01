#using script_165beea08a63a243;
#using script_2a30ac7aa0ee8988;
#using script_5e96d104c70be5ac;
#using script_655e1025200f4d5b;
#using scripts\core_common\ai\zombie_utility;
#using scripts\core_common\audio_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\fx_shared;
#using scripts\core_common\hud_message_shared;
#using scripts\core_common\item_drop;
#using scripts\core_common\item_inventory;
#using scripts\core_common\item_spawn_groups;
#using scripts\core_common\item_supply_drop;
#using scripts\core_common\item_world;
#using scripts\core_common\item_world_cleanup;
#using scripts\core_common\item_world_debug;
#using scripts\core_common\item_world_fixup;
#using scripts\core_common\load_shared;
#using scripts\core_common\lui_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\turret_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\core_common\vehicle_shared;
#using scripts\weapons\zm\weaponobjects;
#using scripts\zm_common\art;
#using scripts\zm_common\bots\zm_bot;
#using scripts\zm_common\callbacks;
#using scripts\zm_common\gametypes\clientids;
#using scripts\zm_common\gametypes\serversettings;
#using scripts\zm_common\gametypes\shellshock;
#using scripts\zm_common\gametypes\spawnlogic;
#using scripts\zm_common\gametypes\spectating;
#using scripts\zm_common\util;
#using scripts\zm_common\zm;
#using scripts\zm_common\zm_aoe;
#using scripts\zm_common\zm_audio;
#using scripts\zm_common\zm_behavior;
#using scripts\zm_common\zm_blockers;
#using scripts\zm_common\zm_clone;
#using scripts\zm_common\zm_devgui;
#using scripts\zm_common\zm_magicbox;
#using scripts\zm_common\zm_power;
#using scripts\zm_common\zm_score;
#using scripts\zm_common\zm_stats;
#using scripts\zm_common\zm_traps;
#using scripts\zm_common\zm_unitrigger;
#using scripts\zm_common\zm_zonemgr;

#namespace load;

// Namespace load/createstruct
// Params 1, eflags: 0x24
// Checksum 0xf0614eb2, Offset: 0x2b8
// Size: 0x25c
function private event_handler[createstruct] function_e0a8e4ba( struct )
{
    foreach ( __k59, k in [ "content_script_name", "content_key", "zombie_weapon_upgrade", "script_unitrigger_type" ] )
    {
        if ( !isdefined( level.var_41204f29 ) )
        {
            level.var_41204f29 = [];
        }
        else if ( !isarray( level.var_41204f29 ) )
        {
            level.var_41204f29 = array( level.var_41204f29 );
        }
        
        if ( !isinarray( level.var_41204f29, tolower( k ) ) )
        {
            level.var_41204f29[ level.var_41204f29.size ] = tolower( k );
        }
    }
    
    level.var_5e990e96 = arraycopy( level.var_41204f29 );
    
    if ( isdefined( level.struct ) )
    {
        temp = arraycopy( level.struct );
        level.struct = [];
        
        foreach ( struct in temp )
        {
            struct::init( struct );
        }
    }
    
    function_6c07201b( "CreateStruct", &function_e0a8e4ba );
}

// Namespace load/load
// Params 0, eflags: 0x1
// Checksum 0xecd52ccc, Offset: 0x520
// Size: 0x3c
function autoexec function_aeb1baea()
{
    assert( !isdefined( level.var_f18a6bd6 ) );
    level.var_f18a6bd6 = &function_5e443ed1;
}

// Namespace load/load
// Params 0, eflags: 0x0
// Checksum 0x3a059c06, Offset: 0x568
// Size: 0xfc
function function_5e443ed1()
{
    assert( isdefined( level.first_frame ), "<dev string:x38>" );
    zm::init();
    level._loadstarted = 1;
    register_clientfields();
    level.aitriggerspawnflags = getaitriggerflags() | 8192;
    level.vehicletriggerspawnflags = getvehicletriggerflags();
    level thread start_intro_screen_zm();
    system::function_c11b0642();
    level thread art_review();
    level flag::set( #"load_main_complete" );
}

// Namespace load/load
// Params 0, eflags: 0x0
// Checksum 0xb82c9c75, Offset: 0x670
// Size: 0x92
function start_intro_screen_zm()
{
    players = getplayers();
    
    for (i = 0; i < players.size; i++) {
        players[ i ] lui::screen_fade_out( 0, undefined );
        players[ i ] val::set( #"start_intro_screen_zm", "freezecontrols" );
    }
    
    wait 1;
}

// Namespace load/load
// Params 0, eflags: 0x0
// Checksum 0xc773604c, Offset: 0x710
// Size: 0x34
function register_clientfields()
{
    clientfield::register( "allplayers", "zmbLastStand", 1, 1, "int" );
}

