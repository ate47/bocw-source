#using scripts\core_common\clientfield_shared;
#using scripts\core_common\system_shared;
#using scripts\weapons\weaponobjects;

#namespace spycraft;

// Namespace spycraft/spycraft_shared
// Params 0, eflags: 0x5
// Checksum 0x38dbb241, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"spycraft", &preinit, undefined, undefined, undefined );
}

// Namespace spycraft/spycraft_shared
// Params 0, eflags: 0x4
// Checksum 0xa0e1a343, Offset: 0x108
// Size: 0x14
function private preinit()
{
    register_clientfields();
}

// Namespace spycraft/spycraft_shared
// Params 0, eflags: 0x4
// Checksum 0x83f82676, Offset: 0x128
// Size: 0xb4
function private register_clientfields()
{
    clientfield::register( "vehicle", "" + #"hash_2d5a2cd7892a4fdc", 1, 1, "counter", &function_a874e85b, 0, 0 );
    clientfield::register( "missile", "" + #"hash_2d5a2cd7892a4fdc", 1, 1, "counter", &function_a874e85b, 0, 0 );
}

// Namespace spycraft/spycraft_shared
// Params 7, eflags: 0x0
// Checksum 0xf729942e, Offset: 0x1e8
// Size: 0x54
function function_a874e85b( localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    self weaponobjects::updateenemyequipment( bwastimejump );
}

