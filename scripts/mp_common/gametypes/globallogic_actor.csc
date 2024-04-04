// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\struct.csc;

#namespace globallogic_actor;

// Namespace globallogic_actor/globallogic_actor
// Params 0, eflags: 0x5
// Checksum 0xf4acac49, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"globallogic_actor", &preinit, undefined, undefined, undefined);
}

// Namespace globallogic_actor/globallogic_actor
// Params 0, eflags: 0x6 linked
// Checksum 0xb11258bf, Offset: 0xf8
// Size: 0x2c
function private preinit() {
    level._effect[#"rcbombexplosion"] = #"killstreaks/fx_rcxd_exp";
}

