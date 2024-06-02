// Atian COD Tools GSC CW decompiler test
#using scripts\abilities\gadgets\gadget_concertina_wire.csc;
#using scripts\core_common\system_shared.csc;

#namespace concertina_wire;

// Namespace concertina_wire/gadget_concertina_wire
// Params 0, eflags: 0x5
// Checksum 0x25357ed7, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"gadget_concertina_wire", &preinit, undefined, undefined, undefined);
}

// Namespace concertina_wire/gadget_concertina_wire
// Params 0, eflags: 0x6 linked
// Checksum 0xd6bcf011, Offset: 0xf8
// Size: 0x1c
function private preinit() {
    init_shared("concertina_wire_settings_wz");
}

