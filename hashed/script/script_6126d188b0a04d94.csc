#using scripts\core_common\ai\archetype_nosferatu;
#using scripts\core_common\array_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\util_shared;

#namespace namespace_58e19d6;

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x0
// Checksum 0xebbaa55b, Offset: 0x110
// Size: 0x64
function init()
{
    function_cae618b4( "spawner_zombietron_silverback" );
    clientfield::register( "actor", "silverback_spawn", 1, 1, "counter", &silverback_spawn, 0, 0 );
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 7, eflags: 0x4
// Checksum 0xa5ad3dbe, Offset: 0x180
// Size: 0x8c
function private silverback_spawn( localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    util::waittill_dobj( bwastimejump );
    forcestreamxmodel( "zombietron_spoon" );
    wait 3;
    stopforcestreamingxmodel( "zombietron_spoon" );
}

