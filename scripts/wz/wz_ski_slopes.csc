#using scripts\core_common\callbacks_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\util_shared;

#namespace wz_ski_slopes;

// Namespace wz_ski_slopes/level_init
// Params 1, eflags: 0x20
// Checksum 0xdf3c98bf, Offset: 0xf8
// Size: 0x124
function event_handler[level_init] main( *eventstruct )
{
    setsaveddvar( #"enable_global_wind", 1 );
    setsaveddvar( #"wind_global_vector", "88 0 0" );
    setsaveddvar( #"wind_global_low_altitude", 0 );
    setsaveddvar( #"wind_global_hi_altitude", 10000 );
    setsaveddvar( #"wind_global_low_strength_percent", 100 );
    callback::on_gameplay_started( &on_gameplay_started );
    load::main();
    util::waitforclient( 0 );
    function_103cfebf();
}

// Namespace wz_ski_slopes/wz_ski_slopes
// Params 0, eflags: 0x4
// Checksum 0xf3dbdfe7, Offset: 0x228
// Size: 0x1b8
function private function_103cfebf()
{
    foreach ( n_decal in findvolumedecalindexarray( "hordehunt_corpses_1" ) )
    {
        hidevolumedecal( n_decal );
    }
    
    foreach ( n_decal in findvolumedecalindexarray( "hordehunt_corpses_2" ) )
    {
        hidevolumedecal( n_decal );
    }
    
    foreach ( n_decal in findvolumedecalindexarray( "hordehunt_corpses_3" ) )
    {
        hidevolumedecal( n_decal );
    }
}

// Namespace wz_ski_slopes/wz_ski_slopes
// Params 1, eflags: 0x0
// Checksum 0xb64f8a7, Offset: 0x3e8
// Size: 0x7c
function on_gameplay_started( *localclientnum )
{
    waitframe( 1 );
    
    if ( util::get_game_type() === "zsurvival" )
    {
        util::function_8eb5d4b0( 3200, 4.25 );
        return;
    }
    
    util::function_8eb5d4b0( 500, 2.75 );
}

