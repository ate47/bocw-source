#using scripts\core_common\clientfield_shared;
#using scripts\core_common\postfx_shared;
#using scripts\core_common\util_shared;

#namespace cp_nic_revolucion_fx;

// Namespace cp_nic_revolucion_fx/cp_nic_revolucion_fx
// Params 0, eflags: 0x0
// Checksum 0xa5a4d36, Offset: 0x140
// Size: 0xdc
function preload()
{
    clientfield::register( "toplayer", "cctv_cam_swap", 1, 1, "counter", &function_80614586, 0, 0 );
    clientfield::register( "toplayer", "cctv_cam_static", 1, 2, "int", &function_653d42c1, 0, 0 );
    clientfield::register( "vehicle", "ac130_runner", 1, 1, "int", &function_bf0e01f7, 0, 0 );
}

// Namespace cp_nic_revolucion_fx/cp_nic_revolucion_fx
// Params 7, eflags: 0x0
// Checksum 0x89f2ef7d, Offset: 0x228
// Size: 0x84
function function_80614586( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump > 0 )
    {
        self postfx::stoppostfxbundle( #"hash_73422bbb830f0e2d" );
        self postfx::playpostfxbundle( #"hash_73422bbb830f0e2d" );
    }
}

// Namespace cp_nic_revolucion_fx/cp_nic_revolucion_fx
// Params 7, eflags: 0x0
// Checksum 0x5c8f87a7, Offset: 0x2b8
// Size: 0xec
function function_653d42c1( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump == 0 )
    {
        self postfx::stoppostfxbundle( #"hash_61c82b9155df8f6b" );
        self postfx::stoppostfxbundle( #"hash_4428330acc3d3af0" );
    }
    
    if ( bwastimejump == 1 )
    {
        self postfx::playpostfxbundle( #"hash_61c82b9155df8f6b" );
    }
    
    if ( bwastimejump == 2 )
    {
        self postfx::playpostfxbundle( #"hash_4428330acc3d3af0" );
    }
}

// Namespace cp_nic_revolucion_fx/cp_nic_revolucion_fx
// Params 7, eflags: 0x0
// Checksum 0xf1006277, Offset: 0x3b0
// Size: 0x6c
function function_bf0e01f7( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump > 0 )
    {
        util::playfxontag( fieldname, "maps/cp_nic_revolucion/fx9_veh_gunship_exhausts_runner", self, "tag_origin" );
    }
}

