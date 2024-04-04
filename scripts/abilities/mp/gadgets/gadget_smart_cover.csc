// Atian COD Tools GSC CW decompiler test
#using scripts\abilities\ability_util.csc;
#using scripts\abilities\ability_power.csc;
#using scripts\abilities\ability_player.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\abilities\gadgets\gadget_smart_cover.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\struct.csc;

#namespace smart_cover;

// Namespace smart_cover/gadget_smart_cover
// Params 0, eflags: 0x5
// Checksum 0xa34d3656, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"gadget_smart_cover", &preinit, undefined, undefined, undefined);
}

// Namespace smart_cover/gadget_smart_cover
// Params 0, eflags: 0x6 linked
// Checksum 0x98b8c2b9, Offset: 0x110
// Size: 0x14
function private preinit() {
    init_shared();
}

