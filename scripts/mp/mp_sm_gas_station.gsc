#using scripts\core_common\callbacks_shared;
#using scripts\core_common\compass;
#using scripts\core_common\load_shared;

#namespace mp_sm_gas_station;

// Namespace mp_sm_gas_station/level_init
// Params 1, eflags: 0x20
// Checksum 0x2a70bdc6, Offset: 0xa0
// Size: 0x14c
function event_handler[level_init] main( *eventstruct )
{
    level.missileremotelaunchvert = 9500;
    callback::function_900862de( &function_900862de );
    callback::on_game_playing( &on_game_playing );
    load::main();
    compass::setupminimap( "" );
    setdvar( #"hash_7b06b8037c26b99b", 70 );
    level.var_3944682[ #"allies" ] = { #origin:( 0, 1500, 1200 ), #angles:( 0, -65, 0 ) };
    level.var_3944682[ #"axis" ] = { #origin:( 0, 1500, 1200 ), #angles:( 0, 115, 0 ) };
}

// Namespace mp_sm_gas_station/mp_sm_gas_station
// Params 0, eflags: 0x0
// Checksum 0xf43a80ed, Offset: 0x1f8
// Size: 0xa8
function function_900862de()
{
    a_players = getplayers();
    
    foreach ( player in a_players )
    {
        player setsunshadowsplitdistance( 3500 );
    }
}

// Namespace mp_sm_gas_station/mp_sm_gas_station
// Params 0, eflags: 0x0
// Checksum 0xa0e48346, Offset: 0x2a8
// Size: 0xa8
function on_game_playing()
{
    a_players = getplayers();
    
    foreach ( player in a_players )
    {
        player setsunshadowsplitdistance( 1500 );
    }
}

