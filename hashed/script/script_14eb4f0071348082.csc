#using scripts\core_common\array_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace namespace_df7b10e3;

// Namespace namespace_df7b10e3/namespace_df7b10e3
// Params 0, eflags: 0x5
// Checksum 0x4aa5149c, Offset: 0x140
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"hash_68f737a6647aee3f", &preinit, undefined, undefined, undefined );
}

// Namespace namespace_df7b10e3/namespace_df7b10e3
// Params 0, eflags: 0x4
// Checksum 0xfd22b645, Offset: 0x188
// Size: 0x5c
function private preinit()
{
    clientfield::register( "actor", "" + #"hash_46c612ad0b7cbdb1", 1, 1, "int", &function_f4515ba8, 0, 0 );
}

// Namespace namespace_df7b10e3/namespace_df7b10e3
// Params 7, eflags: 0x0
// Checksum 0xdb9f7699, Offset: 0x1f0
// Size: 0x1f2
function function_f4515ba8( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump )
    {
        str_tag = "j_spinelower";
        
        if ( !isdefined( self gettagorigin( str_tag ) ) )
        {
            str_tag = "tag_origin";
        }
        
        if ( isdefined( level._effect ) && isdefined( level._effect[ #"character_fire_death_torso" ] ) )
        {
            self.var_62f2a054 = util::playfxontag( fieldname, level._effect[ #"character_fire_death_torso" ], self, str_tag );
        }
        
        self thread function_8847b8aa( fieldname );
        self.var_2be01485 = undefined;
        return;
    }
    
    self notify( #"hash_395dfda1274cd506" );
    
    if ( isdefined( self.var_62f2a054 ) )
    {
        stopfx( fieldname, self.var_62f2a054 );
        self.var_62f2a054 = undefined;
    }
    
    if ( isdefined( self.var_803e161e ) )
    {
        foreach ( n_fx_id in self.var_803e161e )
        {
            stopfx( fieldname, n_fx_id );
        }
        
        self.var_803e161e = undefined;
    }
}

// Namespace namespace_df7b10e3/namespace_df7b10e3
// Params 1, eflags: 0x4
// Checksum 0xfc0a1bc4, Offset: 0x3f0
// Size: 0x1f8
function private function_8847b8aa( localclientnum )
{
    self endon( #"death", #"hash_395dfda1274cd506" );
    wait 1;
    a_str_tags = [];
    a_str_tags[ 0 ] = "j_elbow_le";
    a_str_tags[ 1 ] = "j_elbow_ri";
    a_str_tags[ 2 ] = "j_knee_ri";
    a_str_tags[ 3 ] = "j_knee_le";
    a_str_tags = array::randomize( a_str_tags );
    self.var_803e161e = [];
    self.var_803e161e[ 0 ] = util::playfxontag( localclientnum, level._effect[ #"character_fire_death_sm" ], self, a_str_tags[ 0 ] );
    wait 1;
    a_str_tags[ 0 ] = "j_wrist_ri";
    a_str_tags[ 1 ] = "j_wrist_le";
    
    if ( !is_true( self.missinglegs ) )
    {
        a_str_tags[ 2 ] = "j_ankle_ri";
        a_str_tags[ 3 ] = "j_ankle_le";
    }
    
    a_str_tags = array::randomize( a_str_tags );
    self.var_803e161e[ 1 ] = util::playfxontag( localclientnum, level._effect[ #"character_fire_death_sm" ], self, a_str_tags[ 0 ] );
    self.var_803e161e[ 2 ] = util::playfxontag( localclientnum, level._effect[ #"character_fire_death_sm" ], self, a_str_tags[ 1 ] );
}

