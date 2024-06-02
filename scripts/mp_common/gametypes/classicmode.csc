// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;

#namespace classicmode;

// Namespace classicmode/classicmode
// Params 0, eflags: 0x5
// Checksum 0x4e9e2709, Offset: 0x88
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"classicmode", &preinit, undefined, undefined, undefined);
}

// Namespace classicmode/classicmode
// Params 0, eflags: 0x4
// Checksum 0x9a77a97b, Offset: 0xd0
// Size: 0x4c
function private preinit() {
    level.classicmode = getgametypesetting(#"classicmode");
    if (level.classicmode) {
        enableclassicmode();
    }
}

// Namespace classicmode/classicmode
// Params 0, eflags: 0x0
// Checksum 0xc249700e, Offset: 0x128
// Size: 0x164
function enableclassicmode() {
    setdvar(#"playerenergy_slideenergyenabled", 0);
    setdvar(#"trm_maxsidemantleheight", 0);
    setdvar(#"trm_maxbackmantleheight", 0);
    setdvar(#"player_swimming_enabled", 0);
    setdvar(#"player_swimheightratio", 0.9);
    setdvar(#"jump_slowdownenable", 1);
    setdvar(#"sprint_allowrestore", 0);
    setdvar(#"sprint_allowrechamber", 0);
    setdvar(#"cg_blur_time", 500);
    setdvar(#"tu11_enableclassicmode", 1);
}

