#using scripts\core_common\array_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\util_shared;

#namespace namespace_53a8fe5e;

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 0, eflags: 0x0
// Checksum 0x440e69b6, Offset: 0x180
// Size: 0xa4
function init()
{
    clientfield::register( "actor", "hellhound_fx", 1, 1, "int", &function_1ec447d3, 0, 0 );
    function_cae618b4( "spawner_zombietron_wolf" );
    function_cae618b4( "spawner_zombietron_wolf_ghost" );
    function_cae618b4( "spawner_zombietron_hellhound" );
    init_dog_fx();
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 0, eflags: 0x0
// Checksum 0x9eceabc3, Offset: 0x230
// Size: 0x144
function init_dog_fx()
{
    level._effect[ #"dog_eye_glow" ] = #"hash_70696527ecb861ae";
    level._effect[ #"hash_55d6ab2c7eecbad4" ] = #"hash_249f091d13da3663";
    level._effect[ #"hash_808a86715bfac90" ] = #"hash_78f02617f4f71d8a";
    level._effect[ #"hash_5e4d4083a69396b8" ] = #"hash_36a9dd505e78a";
    level._effect[ #"hash_33fd6545401e3622" ] = #"hash_39b25de05718b20c";
    level._effect[ #"hash_63f497890003547" ] = #"hash_3055dc23ae9ca695";
    level._effect[ #"dog_gib" ] = #"zm_ai/fx8_dog_death_exp";
    level._effect[ #"lightning_dog_spawn" ] = #"zm_ai/fx8_dog_lightning_spawn";
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 7, eflags: 0x0
// Checksum 0x6428e54e, Offset: 0x380
// Size: 0x30c
function function_1ec447d3( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    util::waittill_dobj( fieldname );
    
    if ( !isdefined( self ) )
    {
        return;
    }
    
    if ( bwastimejump )
    {
        if ( !isdefined( self.var_93471229 ) )
        {
            self.var_93471229 = [];
        }
        
        array::add( self.var_93471229, util::playfxontag( fieldname, level._effect[ #"hash_5e4d4083a69396b8" ], self, "j_tail0" ) );
        array::add( self.var_93471229, util::playfxontag( fieldname, level._effect[ #"hash_5e4d4083a69396b8" ], self, "j_tail1" ) );
        array::add( self.var_93471229, util::playfxontag( fieldname, level._effect[ #"hash_33fd6545401e3622" ], self, "j_spine2" ) );
        array::add( self.var_93471229, util::playfxontag( fieldname, level._effect[ #"hash_63f497890003547" ], self, "j_neck" ) );
        array::add( self.var_93471229, util::playfxontag( fieldname, level._effect[ #"hash_55d6ab2c7eecbad4" ], self, "tag_eye" ) );
        self mapshaderconstant( fieldname, 0, "scriptVector2", 0, 1, 1 );
        return;
    }
    
    if ( isdefined( self.var_93471229 ) )
    {
        foreach ( fxhandle in self.var_93471229 )
        {
            deletefx( fieldname, fxhandle );
        }
    }
    
    util::playfxontag( fieldname, level._effect[ #"dog_gib" ], self, "j_spine2" );
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 1, eflags: 0x0
// Checksum 0xf231a807, Offset: 0x698
// Size: 0xe6
function function_f7a64042( localclientnum )
{
    self notify( #"hash_178210c7441aeb0b" );
    self endon( #"hash_178210c7441aeb0b" );
    
    while ( isdefined( self ) )
    {
        array::add( self.var_93471229, util::playfxontag( localclientnum, level._effect[ #"hash_1d9e53a201883cb" ], self, "RI_Ear" ) );
        array::add( self.var_93471229, util::playfxontag( localclientnum, level._effect[ #"hash_1d9e53a201883cb" ], self, "LE_Ear" ) );
        wait 6;
    }
}

