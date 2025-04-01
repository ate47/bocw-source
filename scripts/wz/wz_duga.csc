#using scripts\core_common\audio_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\util_shared;

#namespace wz_duga;

// Namespace wz_duga/level_init
// Params 1, eflags: 0x20
// Checksum 0x7c5aad3, Offset: 0x110
// Size: 0x15c
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
    forcestreammaterial( "mc/t9_water_lake_wz_duga_01", -1 );
    level thread function_b1c181b9();
}

// Namespace wz_duga/wz_duga
// Params 0, eflags: 0x4
// Checksum 0x6f6627f, Offset: 0x278
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

// Namespace wz_duga/wz_duga
// Params 1, eflags: 0x0
// Checksum 0x49d7918e, Offset: 0x438
// Size: 0x2c
function on_gameplay_started( *localclientnum )
{
    waitframe( 1 );
    util::function_8eb5d4b0( 700, 1.5 );
}

// Namespace wz_duga/wz_duga
// Params 0, eflags: 0x0
// Checksum 0xfcba10fa, Offset: 0x470
// Size: 0x34
function function_b1c181b9()
{
    audio::playloopat( #"hash_85f5d79551f8b65", ( 1509, 4267, 8793 ) );
}

