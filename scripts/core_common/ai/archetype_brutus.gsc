// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\archetype_brutus_interface.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\spawner_shared.gsc;

#namespace archetypebrutus;

// Namespace archetypebrutus/archetype_brutus
// Params 0, eflags: 0x1
// Checksum 0x7ced4030, Offset: 0xa0
// Size: 0x54
function autoexec init() {
    brutusinterface::registerbrutusinterfaceattributes();
    registerbehaviorscriptfunctions();
    spawner::add_archetype_spawn_function(#"brutus", &function_517fd069);
}

/#

    // Namespace archetypebrutus/archetype_brutus
    // Params 0, eflags: 0x4
    // Checksum 0xa338ef4e, Offset: 0x100
    // Size: 0x24
    function private function_651f04c3() {
        assert(isdefined(self.ai));
    }

#/

// Namespace archetypebrutus/archetype_brutus
// Params 0, eflags: 0x6 linked
// Checksum 0xe96b30f5, Offset: 0x130
// Size: 0x62
function private function_517fd069() {
    blackboard::createblackboardforentity(self);
    ai::createinterfaceforentity(self);
    self.___archetypeonanimscriptedcallback = &function_666b2409;
    self.___archetypeonbehavecallback = &function_3cdbfffd;
}

// Namespace archetypebrutus/archetype_brutus
// Params 1, eflags: 0x6 linked
// Checksum 0xdaef7faf, Offset: 0x1a0
// Size: 0xc
function private function_3cdbfffd(*entity) {
    
}

// Namespace archetypebrutus/archetype_brutus
// Params 1, eflags: 0x6 linked
// Checksum 0x955fe402, Offset: 0x1b8
// Size: 0x2c
function private function_666b2409(*entity) {
    self.__blackboard = undefined;
    self function_517fd069();
}

// Namespace archetypebrutus/archetype_brutus
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x1f0
// Size: 0x4
function private registerbehaviorscriptfunctions() {
    
}

/#

    // Namespace archetypebrutus/archetype_brutus
    // Params 1, eflags: 0x4
    // Checksum 0x6e797976, Offset: 0x200
    // Size: 0x54
    function private function_f9f08bb1(message) {
        if (getdvarint(#"scr_brutusdebug", 0)) {
            println("<unknown string>" + message);
        }
    }

#/

// Namespace archetypebrutus/archetype_brutus
// Params 4, eflags: 0x2 linked
// Checksum 0x352492e3, Offset: 0x260
// Size: 0x44
function function_f8aa76ea(entity, *attribute, *oldvalue, value) {
    if (value) {
        oldvalue function_d4c687c9();
    }
}

