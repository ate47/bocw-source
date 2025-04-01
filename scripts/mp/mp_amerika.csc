#using scripts\core_common\callbacks_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\util_shared;

#namespace mp_amerika;

// Namespace mp_amerika/level_init
// Params 1, eflags: 0x20
// Checksum 0xb3b245a2, Offset: 0xa8
// Size: 0x114
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
}

// Namespace mp_amerika/mp_amerika
// Params 1, eflags: 0x0
// Checksum 0x4f525e73, Offset: 0x1c8
// Size: 0x34
function on_gameplay_started( *localclientnum )
{
    waitframe( 1 );
    util::function_8eb5d4b0( 500, 1.25 );
}

