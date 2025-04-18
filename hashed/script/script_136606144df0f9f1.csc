#using scripts\core_common\clientfield_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace namespace_791d0451;

// Namespace namespace_791d0451/namespace_791d0451
// Params 0, eflags: 0x5
// Checksum 0xc64a6ef9, Offset: 0x100
// Size: 0x4c
function private autoexec __init__system__()
{
    system::register( #"hash_2d064899850813e2", &preinit, &postinit, undefined, undefined );
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 0, eflags: 0x0
// Checksum 0x8da17698, Offset: 0x158
// Size: 0x1bc
function preinit()
{
    clientfield::register_clientuimodel( "zm_perks_per_controller.count", #"zm_perks_per_controller", #"count", 1, 4, "int", undefined, 0, 0 );
    
    for (i = 1; i <= 10; i++) {
        clientfield::register_clientuimodel( "zm_perks_per_controller." + i + ".itemIndex", #"zm_perks_per_controller", [ hash( isdefined( i ) ? "" + i : "" ), #"itemindex" ], 1, 8, "int", undefined, 0, 0 );
        clientfield::register_clientuimodel( "zm_perks_per_controller." + i + ".lost", #"zm_perks_per_controller", [ hash( isdefined( i ) ? "" + i : "" ), #"lost" ], 1, 2, "int", undefined, 0, 0 );
    }
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x320
// Size: 0x4
function postinit()
{
    
}

