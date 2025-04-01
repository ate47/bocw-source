#using scripts\core_common\clientfield_shared;
#using scripts\core_common\util_shared;

#namespace namespace_af0fb818;

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 0, eflags: 0x0
// Checksum 0xa3957164, Offset: 0xd0
// Size: 0x10c
function function_39da2f0()
{
    clientfield::register( "vehicle", "" + #"hash_7882b7772f4ea0a8", 9000, 1, "int", &train_move, 0, 0 );
    clientfield::register( "scriptmover", "" + #"hash_7882b7772f4ea0a8", 9000, 1, "int", &train_move, 0, 0 );
    clientfield::register( "vehicle", "" + #"hash_5dd246706762931", 9000, 1, "int", &function_e8c79645, 0, 0 );
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x1e8
// Size: 0x4
function main()
{
    
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 7, eflags: 0x0
// Checksum 0x990e7eeb, Offset: 0x1f8
// Size: 0xb4
function train_move( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump )
{
    self endon( #"death" );
    
    if ( bwasdemojump )
    {
        self playrumblelooponentity( fieldname, #"hash_41dcb918f58061f6" );
        return;
    }
    
    self stoprumble( fieldname, #"hash_41dcb918f58061f6" );
}

// Namespace namespace_af0fb818/namespace_af0fb818
// Params 7, eflags: 0x0
// Checksum 0x67c4ba50, Offset: 0x2b8
// Size: 0xc6
function function_e8c79645( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump )
{
    self endon( #"death" );
    
    if ( bwasdemojump )
    {
        self.var_995f9c5 = util::playfxontag( fieldname, #"hash_443e406921d9df87", self, "tag_linkage_front" );
        return;
    }
    
    if ( isdefined( self.var_995f9c5 ) )
    {
        stopfx( fieldname, self.var_995f9c5 );
        self.var_995f9c5 = undefined;
    }
}

