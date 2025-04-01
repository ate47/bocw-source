#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\weapons\weaponobjects;

#namespace weaponobjects;

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x5
// Checksum 0xe7ff0b14, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"weaponobjects", &preinit, undefined, undefined, undefined );
}

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x4
// Checksum 0x98b8c2b9, Offset: 0x100
// Size: 0x14
function private preinit()
{
    init_shared();
}

