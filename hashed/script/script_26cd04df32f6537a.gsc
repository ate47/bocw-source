// Atian COD Tools GSC CW decompiler test
#using script_2c5daa95f8fec03c;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;

#namespace namespace_5df129e7;

// Namespace namespace_5df129e7/namespace_e942233b
// Params 0, eflags: 0x1
// Checksum 0xc3efd89d, Offset: 0xb8
// Size: 0xa4
function autoexec init() {
    registerbehaviorscriptfunctions();
    spawner::add_archetype_spawn_function(#"tormentor", &function_d0439ae2);
    spawner::add_archetype_spawn_function(#"tormentor", &zombie_utility::zombiespawnsetup);
    spawner::function_89a2cd87(#"tormentor", &function_bac4724a);
}

// Namespace namespace_5df129e7/namespace_e942233b
// Params 0, eflags: 0x4
// Checksum 0xc54f72dc, Offset: 0x168
// Size: 0x56
function private function_d0439ae2() {
    blackboard::createblackboardforentity(self);
    ai::createinterfaceforentity(self);
    self.___archetypeonanimscriptedcallback = &function_71825c43;
    self.zombie_think_done = 1;
}

// Namespace namespace_5df129e7/namespace_e942233b
// Params 1, eflags: 0x4
// Checksum 0x5878ff88, Offset: 0x1c8
// Size: 0x2c
function private function_71825c43(entity) {
    entity.__blackboard = undefined;
    entity function_d0439ae2();
}

// Namespace namespace_5df129e7/namespace_e942233b
// Params 0, eflags: 0x0
// Checksum 0x9f8e2504, Offset: 0x200
// Size: 0x4a
function function_9668f61f() {
    self.stumble = 0;
    self.var_b1c7a59d = gettime();
    self.var_eabe8c08 = gettime();
    self.var_4db55459 = 0;
    self.var_8198a38c = 30;
    self.var_b91eb4e5 = 15;
}

// Namespace namespace_5df129e7/namespace_e942233b
// Params 0, eflags: 0x0
// Checksum 0xdd673004, Offset: 0x258
// Size: 0x66
function function_bac4724a() {
    function_9668f61f();
    namespace_81245006::initweakpoints(self);
    self callback::function_d8abfc3d(#"on_ai_killed", &function_c24ab28e);
    self.should_zigzag = 0;
}

// Namespace namespace_5df129e7/namespace_e942233b
// Params 1, eflags: 0x4
// Checksum 0x1df04669, Offset: 0x2c8
// Size: 0x16
function private function_c24ab28e(*params) {
    self.takedamage = 0;
}

// Namespace namespace_5df129e7/namespace_e942233b
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x2e8
// Size: 0x4
function private registerbehaviorscriptfunctions() {
    
}

