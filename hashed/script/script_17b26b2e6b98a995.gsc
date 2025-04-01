#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\trigger_shared;

#namespace namespace_ecdab0f4;

// Namespace namespace_ecdab0f4/namespace_aa16cd50
// Params 0, eflags: 0x0
// Checksum 0xcfe099cd, Offset: 0xf0
// Size: 0x54
function function_b68e2d37()
{
    setdvar( #"hash_76c0d7e6385ee6de", 0.3 );
    setdvar( #"hash_5639762beeb6f5ad", 1.9 );
}

// Namespace namespace_ecdab0f4/namespace_aa16cd50
// Params 0, eflags: 0x0
// Checksum 0xd7fb9cf1, Offset: 0x150
// Size: 0xa4
function function_f84e1e7()
{
    var_dd67799c = getent( "heli", "targetname" );
    var_dd67799c.probe = getent( "probe_script_introHeli", "targetname" );
    
    if ( isdefined( var_dd67799c.probe ) )
    {
        var_dd67799c.probe linkto( var_dd67799c, "tag_origin_animate", ( 50, 0, -50 ), ( 0, 89.981, 2.4999 ) );
    }
}

