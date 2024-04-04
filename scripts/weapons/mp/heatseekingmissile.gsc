// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\heatseekingmissile.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace heatseekingmissile;

// Namespace heatseekingmissile/heatseekingmissile
// Params 0, eflags: 0x5
// Checksum 0x373c835e, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"heatseekingmissile", &preinit, undefined, undefined, undefined);
}

// Namespace heatseekingmissile/heatseekingmissile
// Params 0, eflags: 0x6 linked
// Checksum 0x65b6df64, Offset: 0xd8
// Size: 0x34
function private preinit() {
    level.lockoncloserange = 330;
    level.lockoncloseradiusscaler = 3;
    init_shared();
}

