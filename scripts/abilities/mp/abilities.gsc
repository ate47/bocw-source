// Atian COD Tools GSC CW decompiler test
#using scripts\abilities\ability_util.gsc;
#using scripts\abilities\ability_power.gsc;
#using scripts\abilities\ability_player.gsc;
#using scripts\abilities\ability_gadgets.gsc;
#using scripts\core_common\visionset_mgr_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\bots\bot.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace abilities;

// Namespace abilities/abilities
// Params 0, eflags: 0x5
// Checksum 0xcec9cd49, Offset: 0xe8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"abilities", &preinit, undefined, undefined, undefined);
}

// Namespace abilities/abilities
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x130
// Size: 0x4
function private preinit() {
    
}

