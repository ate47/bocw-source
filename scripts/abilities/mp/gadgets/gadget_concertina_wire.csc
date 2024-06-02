// Atian COD Tools GSC CW decompiler test
#using scripts\abilities\ability_util.csc;
#using scripts\abilities\ability_power.csc;
#using scripts\abilities\ability_player.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\abilities\gadgets\gadget_concertina_wire.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\struct.csc;

#namespace concertina_wire;

// Namespace concertina_wire/gadget_concertina_wire
// Params 0, eflags: 0x5
// Checksum 0x69eb9160, Offset: 0xe8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"gadget_concertina_wire", &preinit, undefined, undefined, undefined);
}

// Namespace concertina_wire/gadget_concertina_wire
// Params 0, eflags: 0x4
// Checksum 0x34cea211, Offset: 0x130
// Size: 0x1c
function private preinit() {
    init_shared("concertina_wire_settings");
}

