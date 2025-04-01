#using scripts\core_common\clientfield_shared;
#using scripts\core_common\system_shared;

#namespace parabolic_mic;

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x5
// Checksum 0xbfa6031f, Offset: 0x118
// Size: 0x34
function private autoexec __init__system__()
{
    system::register( "parabolic_mic", &preinit, undefined, undefined, undefined );
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x4
// Checksum 0xd40e8eb7, Offset: 0x158
// Size: 0x124
function private preinit()
{
    var_1e935eba = array( "scriptmover" );
    
    foreach ( str_type in var_1e935eba )
    {
        clientfield::register( str_type, "parabolic_mic_volume_scale", 1, 5, "float", &scale_volume, 1, 0 );
    }
    
    clientfield::register_clientuimodel( "hudItems.ParabolicMic.active", #"parabolic_mic", #"active", 1, 1, "int", undefined, 0, 1 );
}

// Namespace parabolic_mic/parabolic_mic
// Params 7, eflags: 0x4
// Checksum 0x85b9a2b9, Offset: 0x288
// Size: 0x7e
function private scale_volume( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    self notify( "354e823c02b201c" );
    self endon( "354e823c02b201c" );
    
    while ( isdefined( self ) )
    {
        self function_7b308729( bwastimejump );
        waitframe( 1 );
    }
}

