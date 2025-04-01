#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\util_shared;

#namespace namespace_4914de7c;

// Namespace namespace_4914de7c/level_init
// Params 1, eflags: 0x20
// Checksum 0x20e49aa3, Offset: 0xd0
// Size: 0x8c
function event_handler[level_init] main( *eventstruct )
{
    if ( util::get_map_name() !== "wz_russia" )
    {
        return;
    }
    
    callback::add_callback( #"objective_started", &function_386821d6 );
    callback::add_callback( #"objective_ended", &function_b1eb7f05 );
}

// Namespace namespace_4914de7c/namespace_4914de7c
// Params 1, eflags: 0x0
// Checksum 0x1aac2ccc, Offset: 0x168
// Size: 0x54
function function_386821d6( *eventstruct )
{
    if ( level.contentmanager.activeobjective.content_script_name === "holdout" )
    {
        clientfield::set( "set_objective_fog", 2 );
    }
}

// Namespace namespace_4914de7c/namespace_4914de7c
// Params 1, eflags: 0x0
// Checksum 0x5f3152, Offset: 0x1c8
// Size: 0x24
function function_b1eb7f05( *eventstruct )
{
    clientfield::set( "set_objective_fog", 0 );
}

