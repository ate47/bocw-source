#using scripts\core_common\clientfield_shared;

#namespace namespace_98521e8b;

// Namespace namespace_98521e8b/level_init
// Params 1, eflags: 0x20
// Checksum 0x45402e6d, Offset: 0xa0
// Size: 0x64
function event_handler[level_init] function_9347830c( *eventstruct )
{
    clientfield::register( "world", "" + #"hash_6789a69336880f89", 10000, 1, "int", &function_e3b277ad, 0, 0 );
}

// Namespace namespace_98521e8b/namespace_98521e8b
// Params 7, eflags: 0x0
// Checksum 0xbb775f20, Offset: 0x110
// Size: 0x8c
function function_e3b277ad( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump )
    {
        forcestreamxmodel( #"vehicle_t9_mil_us_helicopter_large_mp_intro" );
        return;
    }
    
    stopforcestreamingxmodel( #"vehicle_t9_mil_us_helicopter_large_mp_intro" );
}

