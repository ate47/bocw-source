#using script_13114d8a31c6152a;
#using script_35ae72be7b4fec10;
#using scripts\core_common\system_shared;

#namespace generic_note;

// Namespace generic_note/generic_note
// Params 0, eflags: 0x5
// Checksum 0xce7f31f8, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"generic_note", &preinit, undefined, undefined, undefined );
}

// Namespace generic_note/generic_note
// Params 0, eflags: 0x4
// Checksum 0xfd8d35fd, Offset: 0xe0
// Size: 0x6c
function private preinit()
{
    /#
        function_5ac4dc99( "<dev string:x38>", "<dev string:x45>" );
        function_cd140ee9( "<dev string:x38>", &function_538c9c9b );
        adddebugcommand( "<dev string:x49>" );
    #/
}

/#

    // Namespace generic_note/generic_note
    // Params 1, eflags: 0x4
    // Checksum 0x9837cd00, Offset: 0x158
    // Size: 0x14c, Type: dev
    function private function_538c9c9b( params )
    {
        assert( params.name == "<dev string:x38>" );
        
        if ( params.value == "<dev string:x45>" )
        {
            return;
        }
        
        setdvar( #"show_note", "<dev string:x45>" );
        
        if ( namespace_61e6d095::exists( #"generic_note" ) )
        {
            return;
        }
        
        paramarray = strtok( params.value, "<dev string:x89>" );
        assert( paramarray.size == 2 );
        notetype = paramarray[ 0 ];
        noteid = paramarray[ 1 ];
        player = getplayers()[ 0 ];
        player thread function_32402e29( notetype, noteid );
    }

#/

// Namespace generic_note/generic_note
// Params 2, eflags: 0x4
// Checksum 0x8d358aa7, Offset: 0x2b0
// Size: 0x14c
function private function_32402e29( *notetype, *noteid )
{
    player = self;
    
    if ( namespace_61e6d095::exists( #"generic_note" ) )
    {
        assertmsg( "<dev string:x8e>" );
        return;
    }
    
    namespace_61e6d095::create( #"generic_note", #"hash_77979ca92bd3cc85" );
    namespace_61e6d095::function_28027c42( #"generic_note", #"generic_note" );
    namespace_c8e236da::function_ebf737f8( #"hash_1aefb4de625039be" );
    level waittill( #"note_closed" );
    namespace_c8e236da::removelist();
    namespace_61e6d095::remove( #"generic_note" );
    namespace_61e6d095::function_4279fd02( #"generic_note" );
}

