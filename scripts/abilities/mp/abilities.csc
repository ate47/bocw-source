// Atian COD Tools GSC CW decompiler test
#using scripts\abilities\ability_util.csc;
#using scripts\abilities\ability_power.csc;
#using scripts\abilities\ability_player.csc;
#using scripts\abilities\ability_gadgets.csc;
#using scripts\core_common\visionset_mgr_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\struct.csc;

#namespace abilities;

// Namespace abilities/abilities
// Params 0, eflags: 0x5
// Checksum 0xcec9cd49, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"abilities", &preinit, undefined, undefined, undefined);
}

// Namespace abilities/abilities
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x118
// Size: 0x4
function private preinit() {
    
}

