// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\spawner_shared.gsc;

#namespace namespace_baa4b777;

// Namespace namespace_baa4b777/namespace_a84b7a30
// Params 0, eflags: 0x1
// Checksum 0x83e51516, Offset: 0x98
// Size: 0x44
function autoexec init() {
    registerbehaviorscriptfunctions();
    spawner::add_archetype_spawn_function(#"hash_7c0d83ac1e845ac2", &function_f9fa2bbb);
}

/#

    // Namespace namespace_baa4b777/namespace_a84b7a30
    // Params 0, eflags: 0x4
    // Checksum 0x9944b7af, Offset: 0xe8
    // Size: 0x24
    function private function_acf96b05() {
        assert(isdefined(self.ai));
    }

#/

// Namespace namespace_baa4b777/namespace_a84b7a30
// Params 0, eflags: 0x6 linked
// Checksum 0xcdeb0367, Offset: 0x118
// Size: 0x7a
function private function_f9fa2bbb() {
    blackboard::createblackboardforentity(self);
    ai::createinterfaceforentity(self);
    self.___archetypeonanimscriptedcallback = &function_b8053d02;
    self.___archetypeonbehavecallback = &function_2c84ab00;
    self.var_7401c936 = &function_580889d1;
}

// Namespace namespace_baa4b777/namespace_a84b7a30
// Params 1, eflags: 0x6 linked
// Checksum 0x8b5fffb5, Offset: 0x1a0
// Size: 0x1c
function private function_580889d1(*entity) {
    function_fa765ef3();
}

// Namespace namespace_baa4b777/namespace_a84b7a30
// Params 1, eflags: 0x6 linked
// Checksum 0x1ca671d2, Offset: 0x1c8
// Size: 0x1c
function private function_2c84ab00(*entity) {
    function_fa765ef3();
}

// Namespace namespace_baa4b777/namespace_a84b7a30
// Params 1, eflags: 0x6 linked
// Checksum 0x2b93c0f3, Offset: 0x1f0
// Size: 0x2c
function private function_b8053d02(*entity) {
    self.__blackboard = undefined;
    self function_f9fa2bbb();
}

// Namespace namespace_baa4b777/namespace_a84b7a30
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x228
// Size: 0x4
function private registerbehaviorscriptfunctions() {
    
}

// Namespace namespace_baa4b777/namespace_a84b7a30
// Params 0, eflags: 0x6 linked
// Checksum 0x58679d25, Offset: 0x238
// Size: 0x2a
function private function_fa765ef3() {
    if (is_true(self.var_d003d23c)) {
        self.pushable = 0;
    }
}

/#

    // Namespace namespace_baa4b777/namespace_a84b7a30
    // Params 1, eflags: 0x4
    // Checksum 0x65f2663f, Offset: 0x270
    // Size: 0x54
    function private function_ee21651d(message) {
        if (getdvarint(#"hash_71bbda417e2a07e9", 0)) {
            println("<unknown string>" + message);
        }
    }

#/
