// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\archetype_catalyst_interface.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_mocomp.gsc;
#using scripts\core_common\spawner_shared.gsc;

#namespace archetypecatalyst;

// Namespace archetypecatalyst/archetype_catalyst
// Params 0, eflags: 0x1
// Checksum 0xa82c0324, Offset: 0x100
// Size: 0x84
function autoexec main() {
    registerbehaviorscriptfunctions();
    spawner::add_archetype_spawn_function(#"catalyst", &function_728127b);
    spawner::add_archetype_spawn_function(#"catalyst", &function_5608540a);
    catalystinterface::registercatalystinterfaceattributes();
}

// Namespace archetypecatalyst/archetype_catalyst
// Params 0, eflags: 0x6 linked
// Checksum 0x57b8b711, Offset: 0x190
// Size: 0x9c
function private registerbehaviorscriptfunctions() {
    assert(isscriptfunctionptr(&iscatalyst));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"iscatalyst", &iscatalyst);
    animationstatenetwork::registeranimationmocomp("mocomp_teleport_traversal@catalyst", &function_720a0584, undefined, undefined);
}

// Namespace archetypecatalyst/archetype_catalyst
// Params 1, eflags: 0x2 linked
// Checksum 0x77e4c2d8, Offset: 0x238
// Size: 0x24
function iscatalyst(*entity) {
    return self.archetype === #"catalyst";
}

// Namespace archetypecatalyst/archetype_catalyst
// Params 0, eflags: 0x2 linked
// Checksum 0xc676403f, Offset: 0x268
// Size: 0xbc
function function_5608540a() {
    self.zombie_move_speed = "walk";
    var_9d3ec6f = [];
    var_9d3ec6f[#"catalyst_corrosive"] = 1;
    var_9d3ec6f[#"catalyst_electric"] = 3;
    var_9d3ec6f[#"catalyst_plasma"] = 2;
    var_9d3ec6f[#"catalyst_water"] = 4;
    if (isdefined(self.var_9fde8624) && isdefined(var_9d3ec6f[self.var_9fde8624])) {
        function_27c82a36(self, var_9d3ec6f[self.var_9fde8624]);
    }
}

// Namespace archetypecatalyst/archetype_catalyst
// Params 0, eflags: 0x6 linked
// Checksum 0xe75e4209, Offset: 0x330
// Size: 0x4a
function private function_728127b() {
    blackboard::createblackboardforentity(self);
    ai::createinterfaceforentity(self);
    self.___archetypeonanimscriptedcallback = &function_dc16721f;
}

// Namespace archetypecatalyst/archetype_catalyst
// Params 2, eflags: 0x2 linked
// Checksum 0x171d584d, Offset: 0x388
// Size: 0x16a
function function_27c82a36(entity, catalyst_type) {
    entity function_b7e4069(catalyst_type);
    if (isdefined(level.var_f6d5bd0c)) {
        if (level.var_f6d5bd0c[0].size > 0) {
            foreach (spawn_func in level.var_f6d5bd0c[0]) {
                entity [[ spawn_func ]]();
            }
        }
        if (level.var_f6d5bd0c[catalyst_type].size > 0) {
            foreach (spawn_func in level.var_f6d5bd0c[catalyst_type]) {
                entity [[ spawn_func ]]();
            }
        }
    }
    return entity;
}

// Namespace archetypecatalyst/archetype_catalyst
// Params 3, eflags: 0x0
// Checksum 0x5fc3945a, Offset: 0x500
// Size: 0xd8
function function_84c6177b(spawner, catalyst_type, location) {
    spawner.script_forcespawn = 1;
    entity = zombie_utility::spawn_zombie(spawner, undefined, location);
    if (!isdefined(entity)) {
        return;
    }
    if (isdefined(entity.catalyst_type)) {
        return;
    }
    entity = function_27c82a36(entity, catalyst_type);
    if (!isdefined(location.angles)) {
        angles = (0, 0, 0);
    } else {
        angles = location.angles;
    }
    entity forceteleport(location.origin, angles);
    return entity;
}

// Namespace archetypecatalyst/archetype_catalyst
// Params 1, eflags: 0x6 linked
// Checksum 0x9f8bdc7a, Offset: 0x5e0
// Size: 0x1a
function private function_b7e4069(catalyst_type) {
    self.catalyst_type = catalyst_type;
}

// Namespace archetypecatalyst/archetype_catalyst
// Params 1, eflags: 0x6 linked
// Checksum 0xde316b10, Offset: 0x608
// Size: 0x2c
function private function_dc16721f(entity) {
    entity.__blackboard = undefined;
    entity function_728127b();
}

// Namespace archetypecatalyst/archetype_catalyst
// Params 2, eflags: 0x2 linked
// Checksum 0x6c122579, Offset: 0x640
// Size: 0xb6
function function_8f9b9d24(catalyst_type, func) {
    if (!isdefined(level.var_f6d5bd0c)) {
        level.var_f6d5bd0c = [];
        level.var_f6d5bd0c[0] = [];
        level.var_f6d5bd0c[1] = [];
        level.var_f6d5bd0c[3] = [];
        level.var_f6d5bd0c[2] = [];
        level.var_f6d5bd0c[4] = [];
    }
    if (isdefined(level.var_f6d5bd0c[catalyst_type])) {
        level.var_f6d5bd0c[catalyst_type][level.var_f6d5bd0c[catalyst_type].size] = func;
    }
}

// Namespace archetypecatalyst/archetype_catalyst
// Params 5, eflags: 0x2 linked
// Checksum 0xde350f3e, Offset: 0x700
// Size: 0x174
function function_720a0584(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration orientmode("face angle", mocompduration.angles[1]);
    mocompduration animmode("normal");
    if (isdefined(mocompduration.traverseendnode)) {
        /#
            print3d(mocompduration.traversestartnode.origin, "<unknown string>", (1, 0, 0), 1, 1, 60);
            print3d(mocompduration.traverseendnode.origin, "<unknown string>", (0, 1, 0), 1, 1, 60);
            line(mocompduration.traversestartnode.origin, mocompduration.traverseendnode.origin, (0, 1, 0), 1, 0, 60);
        #/
        mocompduration forceteleport(mocompduration.traverseendnode.origin, mocompduration.traverseendnode.angles, 0);
    }
}

