// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_notetracks.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_behavior_utility;

// Namespace zm_behavior_utility/zm_behavior_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x87a93b6d, Offset: 0xe8
// Size: 0x3a
function setupattackproperties() {
    self val::reset(#"attack_properties", "ignoreall");
    self.meleeattackdist = 64;
}

// Namespace zm_behavior_utility/zm_behavior_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x52984d6d, Offset: 0x130
// Size: 0x3c
function enteredplayablearea() {
    self zm_spawner::zombie_complete_emerging_into_playable_area();
    self.pushable = 1;
    self setupattackproperties();
}

