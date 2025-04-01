#using script_644007a8c3885fc;
#using scripts\core_common\item_world_fixup;

#namespace namespace_2d440395;

// Namespace namespace_2d440395/namespace_2d440395
// Params 0, eflags: 0x1
// Checksum 0xc637cce8, Offset: 0x90
// Size: 0x14
function autoexec function_88ff61e0()
{
    thread function_45a212c0();
}

// Namespace namespace_2d440395/namespace_2d440395
// Params 0, eflags: 0x0
// Checksum 0x82318c2d, Offset: 0xb0
// Size: 0x70
function function_45a212c0()
{
    var_87d0eef8 = &item_world_fixup::remove_item;
    var_74257310 = &item_world_fixup::add_item_replacement;
    var_f8a4c541 = &item_world_fixup::function_6991057;
    
    while ( !isdefined( level ) )
    {
        waitframe( 1 );
    }
    
    level.var_21f73755 = 1;
}

/#

    // Namespace namespace_2d440395/namespace_2d440395
    // Params 2, eflags: 0x4
    // Checksum 0x46a315f1, Offset: 0x128
    // Size: 0x74, Type: dev
    function private function_205a8326( msg, var_9fb99f62 )
    {
        if ( isdefined( var_9fb99f62 ) )
        {
            println( "<dev string:x38>" + msg + "<dev string:x50>" + var_9fb99f62 );
            return;
        }
        
        println( "<dev string:x38>" + msg );
    }

    // Namespace namespace_2d440395/namespace_2d440395
    // Params 1, eflags: 0x4
    // Checksum 0x41ea0ebc, Offset: 0x1a8
    // Size: 0x124, Type: dev
    function private function_48b77dbf( customgame )
    {
        var_9fb99f62 = "<dev string:x5e>";
        
        if ( !is_true( getgametypesetting( #"wzenablespraycans" ) ) )
        {
            var_9fb99f62 = "<dev string:x69>" + ( isdefined( getgametypesetting( #"wzenablespraycans" ) ) ? getgametypesetting( #"wzenablespraycans" ) : "<dev string:x81>" );
        }
        else if ( customgame )
        {
            if ( gamemodeismode( 1 ) )
            {
                var_9fb99f62 = "<dev string:x8e>";
            }
            else if ( gamemodeismode( 7 ) )
            {
                var_9fb99f62 = "<dev string:x9f>";
            }
        }
        
        function_205a8326( "<dev string:xb6>", var_9fb99f62 );
    }

#/
