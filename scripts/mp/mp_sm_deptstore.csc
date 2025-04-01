#using scripts\core_common\load_shared;
#using scripts\core_common\util_shared;

#namespace mp_sm_deptstore;

// Namespace mp_sm_deptstore/level_init
// Params 1, eflags: 0x20
// Checksum 0xd006f416, Offset: 0xa0
// Size: 0x114
function event_handler[level_init] main( *eventstruct )
{
    setsaveddvar( #"enable_global_wind", 1 );
    setsaveddvar( #"wind_global_vector", "88 0 0" );
    setsaveddvar( #"wind_global_low_altitude", 0 );
    setsaveddvar( #"wind_global_hi_altitude", 10000 );
    setsaveddvar( #"wind_global_low_strength_percent", 100 );
    load::main();
    util::waitforclient( 0 );
    util::function_8eb5d4b0( 500, 1.75 );
}

