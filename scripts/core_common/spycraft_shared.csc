// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weaponobjects.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace spycraft;

// Namespace spycraft/namespace_1ec2f789
// Params 0, eflags: 0x5
// Checksum 0x38dbb241, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"spycraft", &preinit, undefined, undefined, undefined);
}

// Namespace spycraft/namespace_1ec2f789
// Params 0, eflags: 0x6 linked
// Checksum 0xa0e1a343, Offset: 0x108
// Size: 0x14
function private preinit() {
    register_clientfields();
}

// Namespace spycraft/namespace_1ec2f789
// Params 0, eflags: 0x6 linked
// Checksum 0x83f82676, Offset: 0x128
// Size: 0xb4
function private register_clientfields() {
    clientfield::register("vehicle", "" + #"hash_2d5a2cd7892a4fdc", 1, 1, "counter", &function_a874e85b, 0, 0);
    clientfield::register("missile", "" + #"hash_2d5a2cd7892a4fdc", 1, 1, "counter", &function_a874e85b, 0, 0);
}

// Namespace spycraft/namespace_1ec2f789
// Params 7, eflags: 0x2 linked
// Checksum 0xf729942e, Offset: 0x1e8
// Size: 0x54
function function_a874e85b(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self weaponobjects::updateenemyequipment(bwastimejump);
}

