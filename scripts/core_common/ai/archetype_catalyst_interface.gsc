// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\zombie.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;

#namespace catalystinterface;

// Namespace catalystinterface/archetype_catalyst_interface
// Params 0, eflags: 0x2 linked
// Checksum 0xda08dd19, Offset: 0xa8
// Size: 0x6c
function registercatalystinterfaceattributes() {
    ai::registermatchedinterface(#"catalyst", #"gravity", "normal", array("low", "normal"), &zombiebehavior::function_db26137a);
}

