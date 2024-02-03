// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\zm\ai\zm_ai_dog.gsc;

#namespace zm_ai_dog_interface;

// Namespace zm_ai_dog_interface/zm_ai_dog_interface
// Params 0, eflags: 0x2 linked
// Checksum 0x19da6908, Offset: 0xa8
// Size: 0x134
function registerzombiedoginterfaceattributes() {
    ai::registermatchedinterface(#"zombie_dog", #"gravity", "normal", array("low", "normal"), &zm_ai_dog::zombiedoggravity);
    ai::registermatchedinterface(#"zombie_dog", #"min_run_dist", 700);
    ai::registermatchedinterface(#"zombie_dog", #"sprint", 0, array(1, 0));
    ai::registermatchedinterface(#"zombie_dog", #"patrol", 0, array(1, 0));
}

