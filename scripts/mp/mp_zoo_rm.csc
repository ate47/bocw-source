#using scripts\core_common\callbacks_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\util_shared;

#namespace mp_zoo_rm;

// Namespace mp_zoo_rm/level_init
// Params 1, eflags: 0x20
// Checksum 0xff4d7d6e, Offset: 0xd8
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

// Namespace mp_zoo_rm/mp_zoo_rm
// Params 1, eflags: 0x0
// Checksum 0xcc9f140b, Offset: 0x1f8
// Size: 0x44
function on_gameplay_started( *localclientnum )
{
    waitframe( 1 );
    util::function_8eb5d4b0( 700, 1.5 );
    level thread function_76691523();
}

// Namespace mp_zoo_rm/mp_zoo_rm
// Params 0, eflags: 0x0
// Checksum 0xce881c2b, Offset: 0x248
// Size: 0x2e
function function_76691523()
{
    while ( true )
    {
        scene::play( "p9_fxanim_mp_zoo_ambulance_loop_bundle" );
        wait 60;
    }
}

