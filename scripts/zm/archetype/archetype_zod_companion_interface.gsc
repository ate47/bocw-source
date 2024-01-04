// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\zm\archetype\archetype_zod_companion.gsc;

#namespace zodcompanioninterface;

// Namespace zodcompanioninterface/archetype_zod_companion_interface
// Params 0, eflags: 0x0
// Checksum 0x5a9b1619, Offset: 0x90
// Size: 0x4c
function registerzodcompanioninterfaceattributes() {
    ai::registermatchedinterface(#"zod_companion", #"sprint", 0, array(1, 0));
}

