#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\mp_common\draft;

#namespace namespace_44084910;

// Namespace namespace_44084910/namespace_44084910
// Params 0, eflags: 0x5
// Checksum 0x2e9f4857, Offset: 0x120
// Size: 0x4c
function private autoexec __init__system__()
{
    system::register( #"mp_jungle2_scripted", &__init__, &__main__, undefined, undefined );
}

// Namespace namespace_44084910/namespace_44084910
// Params 0, eflags: 0x0
// Checksum 0x9d8aa2cf, Offset: 0x178
// Size: 0x54
function __init__()
{
    clientfield::register( "scriptmover", "spawn_flavor_napalm_rumble", 1, 1, "counter" );
    callback::on_game_playing( &on_game_playing );
}

// Namespace namespace_44084910/namespace_44084910
// Params 0, eflags: 0x0
// Checksum 0x5bc175b5, Offset: 0x1d8
// Size: 0x2c
function __main__()
{
    /#
        init_devgui();
    #/
    
    function_2cdcf5c3();
}

// Namespace namespace_44084910/namespace_44084910
// Params 0, eflags: 0x0
// Checksum 0xadbdf3b8, Offset: 0x210
// Size: 0x188
function on_game_playing()
{
    array::delete_all( getentarray( "sun_block", "targetname" ) );
    
    if ( !getdvarint( #"hash_14f8907ba73d8e4f", 1 ) )
    {
        return;
    }
    
    wait getdvarfloat( #"hash_68cf1e8e429452b0", 0 );
    
    if ( util::isfirstround() )
    {
        level thread scene::add_scene_func( #"p8_fxanim_mp_jun_napalm_drop_bundle", &function_69a9563e, "Shot 2" );
        level thread scene::play( #"p8_fxanim_mp_jun_napalm_drop_bundle", "Shot 2" );
        
        foreach ( scene in level.var_38bda94 )
        {
            level thread scene::play( scene );
        }
    }
}

// Namespace namespace_44084910/namespace_44084910
// Params 0, eflags: 0x0
// Checksum 0xf86ff74e, Offset: 0x3a0
// Size: 0x238
function function_2cdcf5c3()
{
    if ( !getdvarint( #"hash_14f8907ba73d8e4f", 1 ) )
    {
        return;
    }
    
    level.var_38bda94 = array( #"p8_fxanim_mp_seaside_parrots_orange_flock_01_bundle", #"p8_fxanim_mp_seaside_parrots_orange_flock_02_bundle", #"p8_fxanim_mp_seaside_parrots_scarlet_flock_01_bundle", #"p8_fxanim_mp_seaside_parrots_scarlet_flock_02_bundle", #"p8_fxanim_mp_seaside_parrots_yellow_flock_01_bundle", #"p8_fxanim_mp_seaside_parrots_yellow_flock_02_bundle" );
    
    if ( util::isfirstround() )
    {
        foreach ( scene in level.var_38bda94 )
        {
            level thread scene::init( scene );
        }
        
        while ( !draft::function_d255fb3e() )
        {
            waitframe( 1 );
        }
        
        level thread scene::play( #"p8_fxanim_mp_jun_napalm_drop_bundle", "Shot 1" );
        return;
    }
    
    level thread scene::skipto_end( #"p8_fxanim_mp_jun_napalm_drop_bundle" );
    
    foreach ( scene in level.var_38bda94 )
    {
        level thread scene::skipto_end( scene );
    }
}

// Namespace namespace_44084910/namespace_44084910
// Params 1, eflags: 0x0
// Checksum 0xa4aee203, Offset: 0x5e0
// Size: 0xc0
function function_69a9563e( a_ents )
{
    self endon( #"scenes_done", #"death", #"hash_694043bb3252702" );
    
    while ( isdefined( a_ents[ #"prop 1" ] ) )
    {
        a_ents[ #"prop 1" ] waittill( #"napalm_rumble" );
        
        if ( isdefined( a_ents[ #"prop 1" ] ) )
        {
            a_ents[ #"prop 1" ] clientfield::increment( "spawn_flavor_napalm_rumble" );
        }
    }
}

/#

    // Namespace namespace_44084910/namespace_44084910
    // Params 0, eflags: 0x0
    // Checksum 0xf2d50ecf, Offset: 0x6a8
    // Size: 0x9c, Type: dev
    function init_devgui()
    {
        mapname = util::get_map_name();
        adddebugcommand( "<dev string:x38>" + mapname + "<dev string:x49>" );
        adddebugcommand( "<dev string:x38>" + mapname + "<dev string:x89>" );
        adddebugcommand( "<dev string:x38>" + mapname + "<dev string:xc9>" );
    }

#/
