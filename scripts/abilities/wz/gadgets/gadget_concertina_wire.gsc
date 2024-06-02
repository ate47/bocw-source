// Atian COD Tools GSC CW decompiler test
#using scripts\abilities\gadgets\gadget_concertina_wire.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace concertina_wire;

// Namespace concertina_wire/gadget_concertina_wire
// Params 0, eflags: 0x5
// Checksum 0x1d2866d6, Offset: 0xb0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"gadget_concertina_wire", &preinit, undefined, undefined, #"weapons");
}

// Namespace concertina_wire/gadget_concertina_wire
// Params 0, eflags: 0x6 linked
// Checksum 0xaf3aee0, Offset: 0x100
// Size: 0x3c
function private preinit() {
    init_shared("concertina_wire_settings_wz");
    function_c5f0b9e7(&onconcertinawireplaced);
}

// Namespace concertina_wire/gadget_concertina_wire
// Params 1, eflags: 0x2 linked
// Checksum 0x7e384db9, Offset: 0x148
// Size: 0xc
function onconcertinawireplaced(*concertinawire) {
    
}

