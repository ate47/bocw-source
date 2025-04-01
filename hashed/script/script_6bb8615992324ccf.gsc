#using scripts\core_common\clientfield_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\values_shared;
#using scripts\cp_common\ui\prompts;

#namespace namespace_7b8a8e22;

// Namespace namespace_7b8a8e22/namespace_7b8a8e22
// Params 0, eflags: 0x5
// Checksum 0x301e, Offset: 0x108
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"hash_5bc761d26eb100ef", &preload, undefined, undefined, undefined );
}

// Namespace namespace_7b8a8e22/namespace_7b8a8e22
// Params 0, eflags: 0x0
// Checksum 0xfaa8a6b3, Offset: 0x150
// Size: 0x94
function preload()
{
    clientfield::register( "toplayer", "set_camera_state", 1, 1, "int" );
    clientfield::register( "toplayer", "swap_camera", 1, 1, "counter" );
    clientfield::register( "toplayer", "block_zoom_input", 1, 1, "int" );
}

// Namespace namespace_7b8a8e22/namespace_7b8a8e22
// Params 1, eflags: 0x0
// Checksum 0x3d63edeb, Offset: 0x1f0
// Size: 0x10c
function function_6186baa2( var_b3a11ae2 )
{
    self endon( #"death" );
    
    if ( isdefined( self.var_80730518 ) )
    {
        self.var_80730518 usevehicle( self, 0 );
        self clientfield::increment_to_player( "swap_camera", 1 );
    }
    else
    {
        self clientfield::set_to_player( "set_camera_state", 1 );
    }
    
    var_b3a11ae2 usevehicle( self, 0 );
    self val::set( #"hash_5bc761d26eb100ef", "freezecontrols", 1 );
    wait 0.4;
    self val::reset( #"hash_5bc761d26eb100ef", "freezecontrols" );
}

// Namespace namespace_7b8a8e22/namespace_7b8a8e22
// Params 0, eflags: 0x0
// Checksum 0xe942f5e4, Offset: 0x308
// Size: 0xb4
function function_c168eb01()
{
    self endon( #"death" );
    self clientfield::set_to_player( "set_camera_state", 0 );
    self val::set( #"hash_5bc761d26eb100ef", "freezecontrols", 1 );
    wait 0.4;
    self val::reset( #"hash_5bc761d26eb100ef", "freezecontrols" );
    self.var_80730518 usevehicle( self, 0 );
}

// Namespace namespace_7b8a8e22/namespace_7b8a8e22
// Params 1, eflags: 0x0
// Checksum 0xc2dde55f, Offset: 0x3c8
// Size: 0x2c
function block_zoom_input( b_state )
{
    self clientfield::set_to_player( "block_zoom_input", b_state );
}

