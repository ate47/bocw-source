#using scripts\core_common\clientfield_shared;
#using scripts\core_common\util_shared;

#namespace namespace_1d4ee4f8;

// Namespace namespace_1d4ee4f8/namespace_1d4ee4f8
// Params 0, eflags: 0x0
// Checksum 0xce22b64, Offset: 0xe0
// Size: 0x94
function preload()
{
    clientfield::register( "toplayer", "optional_objective_camera_fx", 1, 1, "int", &optional_objective_camera_fx, 0, 0 );
    clientfield::register( "toplayer", "set_sun_color_black", 1, 1, "int", &function_1f548758, 0, 0 );
}

// Namespace namespace_1d4ee4f8/namespace_1d4ee4f8
// Params 0, eflags: 0x0
// Checksum 0xb3600679, Offset: 0x180
// Size: 0x2c
function postload()
{
    level._effect[ #"hash_57ee68985468f554" ] = #"wz/fx8_plyr_pstfx_numbers";
}

// Namespace namespace_1d4ee4f8/namespace_1d4ee4f8
// Params 7, eflags: 0x0
// Checksum 0x7102f816, Offset: 0x1b8
// Size: 0xba
function optional_objective_camera_fx( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( isdefined( self.var_dcb8af99 ) )
    {
        stopfx( fieldname, self.var_dcb8af99 );
        self.var_d392b4d1 = undefined;
    }
    
    if ( bwastimejump )
    {
        self.var_dcb8af99 = playfxoncamera( fieldname, level._effect[ #"hash_57ee68985468f554" ], undefined, ( 1, 0, 0 ), ( 0, 0, 1 ) );
    }
}

// Namespace namespace_1d4ee4f8/namespace_1d4ee4f8
// Params 7, eflags: 0x0
// Checksum 0x61b862b7, Offset: 0x280
// Size: 0x7c
function function_1f548758( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *wasdemojump )
{
    if ( wasdemojump )
    {
        util::function_8d617b62( ( 0, 0, 0 ), 12.5 );
        return;
    }
    
    util::function_5ff170ee();
}

