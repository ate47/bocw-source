#using scripts\core_common\callbacks_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\util_shared;

#namespace mp_apocalypse;

// Namespace mp_apocalypse/level_init
// Params 1, eflags: 0x20
// Checksum 0xa69ee2db, Offset: 0xa8
// Size: 0x1ec
function event_handler[level_init] main( *eventstruct )
{
    if ( level.var_87c6c648 !== 1 )
    {
        function_11e3e877( #"hash_711f8e3cf768b75e", #"hash_25285069d9775867" );
        function_11e3e877( #"hash_23c7fe3d13bad685", #"hash_6ef5ffbf46638ae8" );
        function_11e3e877( #"hash_37daa48934825c05", #"hash_735a151800f02868" );
        function_11e3e877( #"hash_6318ed894cfbaf2f", #"hash_15396fd7c94ec672" );
    }
    
    setsaveddvar( #"enable_global_wind", 1 );
    setsaveddvar( #"wind_global_vector", "88 0 0" );
    setsaveddvar( #"wind_global_low_altitude", 0 );
    setsaveddvar( #"wind_global_hi_altitude", 10000 );
    setsaveddvar( #"wind_global_low_strength_percent", 100 );
    callback::on_gameplay_started( &on_gameplay_started );
    load::main();
    util::waitforclient( 0 );
}

// Namespace mp_apocalypse/mp_apocalypse
// Params 1, eflags: 0x0
// Checksum 0x5872977b, Offset: 0x2a0
// Size: 0x2c
function on_gameplay_started( *localclientnum )
{
    waitframe( 1 );
    util::function_8eb5d4b0( 1000, 1.875 );
}

