#namespace delete;

// Namespace delete/delete
// Params 1, eflags: 0x24
// Checksum 0xfd2f2ac5, Offset: 0x80
// Size: 0x104
function private event_handler[delete] function_55217f7b( *eventstruct )
{
    assert( isdefined( self ) );
    
    if ( isdefined( self ) )
    {
        /#
            if ( isdefined( self.classname ) )
            {
                if ( self.classname == "<dev string:x38>" || self.classname == "<dev string:x48>" || self.classname == "<dev string:x5a>" )
                {
                    println( "<dev string:x6e>" );
                    println( "<dev string:x72>" + self getentitynumber() + "<dev string:xb3>" + self.origin );
                    println( "<dev string:x6e>" );
                }
            }
        #/
        
        self delete();
    }
}

// Namespace delete/event_9aed3d2d
// Params 1, eflags: 0x24
// Checksum 0x2a5a0dbd, Offset: 0x190
// Size: 0x10c
function private event_handler[event_9aed3d2d] function_f447a48e( *eventstruct )
{
    assert( isdefined( self ) );
    waitframe( 1 );
    
    if ( isdefined( self ) )
    {
        /#
            if ( isdefined( self.classname ) )
            {
                if ( self.classname == "<dev string:x38>" || self.classname == "<dev string:x48>" || self.classname == "<dev string:x5a>" )
                {
                    println( "<dev string:x6e>" );
                    println( "<dev string:x72>" + self getentitynumber() + "<dev string:xb3>" + self.origin );
                    println( "<dev string:x6e>" );
                }
            }
        #/
        
        self delete();
    }
}

