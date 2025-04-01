#namespace behaviortreenetworkutility;

// Namespace behaviortreenetworkutility/behavior_tree_utility
// Params 3, eflags: 0x0
// Checksum 0x39369a3d, Offset: 0x80
// Size: 0xe4
function registerbehaviortreescriptapi( functionname, functionptr, allowedcallsperframe )
{
    if ( !isdefined( level._behaviortreescriptfunctions ) )
    {
        level._behaviortreescriptfunctions = [];
    }
    
    assert( isdefined( functionname ) && isdefined( functionptr ), "<dev string:x38>" );
    
    /#
        if ( !is_true( level.var_70f1c402 ) )
        {
            assert( !isdefined( level._behaviortreescriptfunctions[ functionname ] ), "<dev string:xaa>" );
        }
    #/
    
    level._behaviortreescriptfunctions[ functionname ] = functionptr;
    
    if ( isdefined( allowedcallsperframe ) )
    {
        registerlimitedbehaviortreeapi( functionname, allowedcallsperframe );
    }
}

// Namespace behaviortreenetworkutility/behavior_tree_utility
// Params 4, eflags: 0x0
// Checksum 0x669eca6, Offset: 0x170
// Size: 0x1ea
function registerbehaviortreeaction( actionname, startfuncptr, updatefuncptr, terminatefuncptr )
{
    if ( !isdefined( level._behaviortreeactions ) )
    {
        level._behaviortreeactions = [];
    }
    
    assert( isdefined( actionname ), "<dev string:x10a>" );
    
    /#
        if ( !is_true( level.var_70f1c402 ) )
        {
            assert( !isdefined( level._behaviortreeactions[ actionname ] ), "<dev string:x154>" + actionname + "<dev string:x18d>" );
        }
    #/
    
    level._behaviortreeactions[ actionname ] = array();
    
    if ( isdefined( startfuncptr ) )
    {
        assert( isfunctionptr( startfuncptr ), "<dev string:x1a8>" );
        level._behaviortreeactions[ actionname ][ #"bhtn_action_start" ] = startfuncptr;
    }
    
    if ( isdefined( updatefuncptr ) )
    {
        assert( isfunctionptr( updatefuncptr ), "<dev string:x1ed>" );
        level._behaviortreeactions[ actionname ][ #"bhtn_action_update" ] = updatefuncptr;
    }
    
    if ( isdefined( terminatefuncptr ) )
    {
        assert( isfunctionptr( terminatefuncptr ), "<dev string:x233>" );
        level._behaviortreeactions[ actionname ][ #"bhtn_action_terminate" ] = terminatefuncptr;
    }
}

