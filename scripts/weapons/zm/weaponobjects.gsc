// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\util.gsc;
#using scripts\weapons\weaponobjects.gsc;
#using scripts\core_common\weapons_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace weaponobjects;

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x5
// Checksum 0xe7ff0b14, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"weaponobjects", &preinit, undefined, undefined, undefined);
}

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x6 linked
// Checksum 0x98b8c2b9, Offset: 0x110
// Size: 0x14
function private preinit() {
    init_shared();
}

