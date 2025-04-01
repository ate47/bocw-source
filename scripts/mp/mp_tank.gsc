#using scripts\core_common\array_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\compass;
#using scripts\core_common\load_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\util_shared;
#using scripts\killstreaks\killstreaks_shared;

#namespace mp_tank;

// Namespace mp_tank/level_init
// Params 1, eflags: 0x20
// Checksum 0x94d0d7e7, Offset: 0x1a0
// Size: 0x1fc
function event_handler[level_init] main( *eventstruct )
{
    clientfield::register( "world", "" + #"hash_7de1e9f42b73bf42", 1, 1, "int" );
    level thread function_21acba11();
    killstreaks::function_257a5f13( "straferun", 40 );
    killstreaks::function_257a5f13( "helicopter_comlink", 75 );
    scene::function_497689f6( #"cin_mp_tank_intro_hva", "helicopter", "tag_probe_attach", "prb_tn_tank_heli_transport", "play" );
    scene::add_scene_func( #"cin_mp_tank_intro_hva", &function_8d9c0c2d, "init" );
    scene::add_scene_func( #"cin_mp_tank_intro_hva", &function_a4fed09f, "done" );
    load::main();
    compass::setupminimap( "" );
    spawncollision( "collision_clip_wall_512x512x10", "collider", ( -1296, -3112, -5 ), ( 270, 0, 0 ) );
    spawncollision( "collision_clip_wall_512x512x10", "collider", ( -64, -952, -5 ), ( 270, 0, 0 ) );
}

// Namespace mp_tank/mp_tank
// Params 1, eflags: 0x0
// Checksum 0x291d4d5, Offset: 0x3a8
// Size: 0x44
function function_8d9c0c2d( *a_ents )
{
    level clientfield::set( "" + #"hash_7de1e9f42b73bf42", 1 );
}

// Namespace mp_tank/mp_tank
// Params 1, eflags: 0x0
// Checksum 0x54214f00, Offset: 0x3f8
// Size: 0x3c
function function_a4fed09f( *a_ents )
{
    level clientfield::set( "" + #"hash_7de1e9f42b73bf42", 0 );
}

// Namespace mp_tank/mp_tank
// Params 0, eflags: 0x0
// Checksum 0x20e6f211, Offset: 0x440
// Size: 0x74
function function_21acba11()
{
    if ( util::get_game_type() !== #"zonslaught" )
    {
        hidemiscmodels( "tank_onslaught_props" );
        array::delete_all( getentarray( "tank_onslaught_props", "targetname" ) );
    }
}

