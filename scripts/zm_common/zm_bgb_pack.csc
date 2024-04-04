// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\load.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\struct.csc;

#namespace bgb_pack;

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x5
// Checksum 0x45b269a2, Offset: 0xb0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"bgb_pack", &preinit, &postinit, undefined, undefined);
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x6 linked
// Checksum 0xbe1c1edc, Offset: 0x108
// Size: 0x20
function private preinit() {
    if (!is_true(level.bgb_in_use)) {
        return;
    }
}

// Namespace bgb_pack/zm_bgb_pack
// Params 0, eflags: 0x6 linked
// Checksum 0xf92f5887, Offset: 0x130
// Size: 0x20
function private postinit() {
    if (!is_true(level.bgb_in_use)) {
        return;
    }
}

