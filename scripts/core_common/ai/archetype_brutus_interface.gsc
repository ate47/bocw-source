// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\ai\archetype_brutus.gsc;

#namespace brutusinterface;

// Namespace brutusinterface/archetype_brutus_interface
// Params 0, eflags: 0x2 linked
// Checksum 0xb80e64e6, Offset: 0x90
// Size: 0xec
function registerbrutusinterfaceattributes() {
    ai::registermatchedinterface(#"brutus", #"can_ground_slam", 0, array(1, 0));
    ai::registermatchedinterface(#"brutus", #"scripted_mode", 0, array(1, 0), &archetypebrutus::function_f8aa76ea);
    ai::registermatchedinterface(#"brutus", #"patrol", 0, array(1, 0));
}

