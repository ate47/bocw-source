// Atian COD Tools GSC CW decompiler test
#using script_1f0e83e43bf9c3b9;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using scripts\core_common\ai\systems\ai_blackboard.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_notetracks.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_mocomp.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\aat_shared.gsc;

#namespace archetypenosferatu;

// Namespace archetypenosferatu
// Method(s) 2 Total 2
class class_1546f28e {

    var adjustmentstarted;
    var var_425c4c8b;

    // Namespace class_1546f28e/archetype_nosferatu
    // Params 0, eflags: 0xa linked
    // Checksum 0xd6824552, Offset: 0x2948
    // Size: 0x1a
    constructor() {
        adjustmentstarted = 0;
        var_425c4c8b = 1;
    }

}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 0, eflags: 0x1
// Checksum 0x857bbd6d, Offset: 0x318
// Size: 0x84
function autoexec init() {
    namespace_b3c8cf82::function_da6eecb2();
    registerbehaviorscriptfunctions();
    spawner::add_archetype_spawn_function(#"nosferatu", &function_5b800648);
    clientfield::register("actor", "nfrtu_leap_melee_rumb", 8000, 1, "counter");
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 0, eflags: 0x6 linked
// Checksum 0x3de1b315, Offset: 0x3a8
// Size: 0x4a
function private function_dbd0360f() {
    blackboard::createblackboardforentity(self);
    self.___archetypeonanimscriptedcallback = &function_f8ab724f;
    self.___archetypeonbehavecallback = &function_b1df7220;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x8f033804, Offset: 0x400
// Size: 0xc
function private function_b1df7220(*entity) {
    
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x34473333, Offset: 0x418
// Size: 0x2c
function private function_f8ab724f(*entity) {
    self.__blackboard = undefined;
    self function_dbd0360f();
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 0, eflags: 0x6 linked
// Checksum 0xa671bc9b, Offset: 0x450
// Size: 0xb4
function private function_5b800648() {
    assert(isdefined(self.ai));
    function_dbd0360f();
    self.ignorepathenemyfightdist = 1;
    self.var_ceed8829 = 1;
    self.zigzag_activation_distance = 400;
    self.var_7d39ec6a = 1;
    self setavoidancemask("avoid actor");
    self callback::function_d8abfc3d(#"on_ai_melee", &function_2e5f2af4);
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 0, eflags: 0x6 linked
// Checksum 0x9959de10, Offset: 0x510
// Size: 0x3c
function private function_2e5f2af4() {
    if (isdefined(self.meleeinfo)) {
        radiusdamage(self.origin, 150, 15, 5, self, "MOD_MELEE");
    }
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 0, eflags: 0x6 linked
// Checksum 0x93576a92, Offset: 0x558
// Size: 0x804
function private registerbehaviorscriptfunctions() {
    assert(isscriptfunctionptr(&nosferatushouldmelee));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"nosferatushouldmelee", &nosferatushouldmelee);
    assert(isscriptfunctionptr(&function_7ffbbff));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_986eb7e87a024a", &function_7ffbbff);
    assert(isscriptfunctionptr(&function_85d8b15d));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_12fd6029cfc2a603", &function_85d8b15d);
    assert(isscriptfunctionptr(&function_4df0b87d));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_571c2407eee0f7ce", &function_4df0b87d);
    assert(isscriptfunctionptr(&function_ed80a3bc));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_326882aa02157f0d", &function_ed80a3bc);
    assert(isscriptfunctionptr(&function_15d413b9));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4c559b769f33559e", &function_15d413b9);
    assert(isscriptfunctionptr(&function_e9819a23));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7c46d4f8f6bd8a19", &function_e9819a23);
    assert(isscriptfunctionptr(&function_b5047448));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_d557a256994b864", &function_b5047448);
    assert(isscriptfunctionptr(&function_15d413b9));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_4c559b769f33559e", &function_15d413b9);
    assert(isscriptfunctionptr(&function_a41a5aea));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_2392a1b5bcda2a4d", &function_a41a5aea);
    assert(isscriptfunctionptr(&function_b5305a8f));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_55bb0ab8a037fcca", &function_b5305a8f);
    assert(isscriptfunctionptr(&function_ebe0e1b5));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_38a10af328e33bf7", &function_ebe0e1b5);
    assert(isscriptfunctionptr(&function_76505306));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5ba3133a0e93c9f1", &function_76505306);
    assert(isscriptfunctionptr(&function_e0ad0db2));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_77c524bf92130b36", &function_e0ad0db2);
    assert(isscriptfunctionptr(&function_b75dd595));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_544b52e495ac560e", &function_b75dd595);
    assert(isscriptfunctionptr(&function_8b2173e0));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_4d02bd1f2f959be9", &function_8b2173e0);
    assert(isscriptfunctionptr(&function_b758de87));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_ee12d5fffc3b8bb", &function_b758de87);
    animationstatenetwork::registeranimationmocomp("mocomp_nfrtu_leap_attack", &function_1ad502a0, &function_3511ecd1, &function_b472ba3d);
    animationstatenetwork::registeranimationmocomp("mocomp_nfrtu_latch_attack", &function_1ad502a0, &function_3511ecd1, &function_b472ba3d);
    animationstatenetwork::registeranimationmocomp("mocomp_nfrtu_run_attack", &function_37d5cfc, undefined, &function_4b55eb0a);
    animationstatenetwork::registernotetrackhandlerfunction("nosferatu_leap_attack_rumble", &nfrtuleaprumble);
    animationstatenetwork::registernotetrackhandlerfunction("nosferatu_bite", &function_2e8014e);
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x2 linked
// Checksum 0xf5e57ebb, Offset: 0xd68
// Size: 0x64
function function_2e8014e(entity) {
    if (isdefined(entity) && isdefined(entity.enemy)) {
        entity.enemy dodamage(25, entity.enemy.origin, entity, entity, "neck", "MOD_MELEE");
    }
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x7227f63f, Offset: 0xdd8
// Size: 0x10c
function private function_b75dd595(entity) {
    if (!isdefined(entity.enemy)) {
        return false;
    }
    if (entity.var_9fde8624 !== #"crimson_nosferatu") {
        return false;
    }
    var_ae9326df = blackboard::getblackboardevents("nfrtu_move_dash");
    if (isdefined(var_ae9326df) && var_ae9326df.size) {
        foreach (var_d86ae1c4 in var_ae9326df) {
            if (var_d86ae1c4.data.enemy === entity.enemy) {
                return false;
            }
        }
    }
    return true;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x7abe6d88, Offset: 0xef0
// Size: 0x70
function private function_8b2173e0(entity) {
    var_d86ae1c4 = spawnstruct();
    var_d86ae1c4.enemy = entity.enemy;
    blackboard::addblackboardevent("nfrtu_move_dash", var_d86ae1c4, randomintrange(8500, 10000));
    return true;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x914e2148, Offset: 0xf68
// Size: 0x11c
function private function_3df24b25(entity) {
    /#
        if (getdvarint(#"hash_5ebc5d42d65e6fd1", 0)) {
            return true;
        }
    #/
    if (!isdefined(entity.enemy)) {
        return false;
    }
    var_935d5acc = blackboard::getblackboardevents("nfrtu_latch_melee");
    if (isdefined(var_935d5acc) && var_935d5acc.size) {
        foreach (var_1e5d8d32 in var_935d5acc) {
            if (var_1e5d8d32.data.enemy === entity.enemy) {
                return false;
            }
        }
    }
    return true;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0xde2cef86, Offset: 0x1090
// Size: 0x80
function private function_15d413b9(entity) {
    entity.var_1c33120d = 1;
    var_1e5d8d32 = spawnstruct();
    var_1e5d8d32.enemy = entity.enemy;
    blackboard::addblackboardevent("nfrtu_latch_melee", var_1e5d8d32, randomintrange(30000, 50000));
    return true;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0xed88c9e3, Offset: 0x1118
// Size: 0x8c
function private function_b758de87(entity) {
    entity.var_1c33120d = 0;
    entity clearpath();
    var_3bfe8ebe = spawnstruct();
    var_3bfe8ebe.enemy = entity.enemy;
    blackboard::addblackboardevent("nfrtu_leap_melee", var_3bfe8ebe, randomintrange(6000, 9000));
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x87654a4d, Offset: 0x11b0
// Size: 0x38
function private function_b5305a8f(entity) {
    if (isdefined(entity.enemy)) {
        entity thread function_20a76c21(entity);
    }
    return true;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x6c4030e7, Offset: 0x11f0
// Size: 0xcc
function private function_2ad18645(*notifyhash) {
    player = self;
    if (isdefined(self) && !isplayer(self) && isdefined(self.enemy) && isplayer(self.enemy)) {
        player = self.enemy;
    }
    if (isdefined(player)) {
        player val::reset(#"nosferatu_latch", "ignoreme");
        player val::reset(#"nosferatu_latch", "disable_weapons");
    }
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 2, eflags: 0x6 linked
// Checksum 0x5a1cb3e2, Offset: 0x12c8
// Size: 0x106
function private function_fb3fdf43(entity, latch_enemy) {
    entity endoncallback(&function_2ad18645, #"death");
    latch_enemy endoncallback(&function_2ad18645, #"disconnect", #"death");
    if (isdefined(self) && isdefined(entity) && isdefined(latch_enemy)) {
        self scene::play(#"aib_vign_cust_mnsn_nfrtu_attack_latch_01", array(entity, latch_enemy));
    }
    if (isdefined(entity)) {
        entity.meleeinfo = undefined;
        entity.var_1c33120d = 0;
    }
    if (isdefined(self)) {
        self notify(#"hash_7a32b2af2eef5415");
    }
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x40268485, Offset: 0x13d8
// Size: 0x1ec
function private function_20a76c21(entity) {
    entity endoncallback(&function_2ad18645, #"death");
    latch_enemy = entity.enemy;
    latch_enemy endoncallback(&function_2ad18645, #"disconnect", #"death");
    if (isdefined(latch_enemy)) {
        latch_enemy thread function_db62d88a();
    }
    alignnode = spawnstruct();
    alignnode.origin = entity.enemy.origin;
    alignnode.angles = entity.enemy.angles;
    alignnode thread function_fb3fdf43(entity, latch_enemy);
    alignnode waittilltimeout(7, #"hash_7a32b2af2eef5415");
    if (isdefined(alignnode)) {
        alignnode struct::delete();
    }
    if (isdefined(latch_enemy)) {
        latch_enemy val::reset(#"nosferatu_latch", "disable_weapons");
        latch_enemy notify(#"hash_7a32b2af2eef5415");
    }
    if (isdefined(entity)) {
        entity.var_1c33120d = 0;
        entity clearpath();
    }
    var_3bfe8ebe = spawnstruct();
    var_3bfe8ebe.enemy = latch_enemy;
    blackboard::addblackboardevent("nfrtu_leap_melee", var_3bfe8ebe, randomintrange(6000, 9000));
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 0, eflags: 0x6 linked
// Checksum 0xb526d6bf, Offset: 0x15d0
// Size: 0xec
function private function_db62d88a() {
    self endon(#"death");
    self val::set(#"nosferatu_latch", "ignoreme", 1);
    w_current = self getcurrentweapon();
    if (isdefined(w_current) && is_true(w_current.isheroweapon)) {
        self val::set(#"nosferatu_latch", "disable_weapons", 1);
    }
    wait(8);
    self val::reset(#"nosferatu_latch", "ignoreme");
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x83b2250e, Offset: 0x16c8
// Size: 0x1e6
function private function_a41a5aea(entity) {
    if (!isdefined(entity.enemy)) {
        return false;
    }
    if (!isplayer(entity.enemy)) {
        return false;
    }
    if (is_true(entity.enemy.var_7ebdb2c9)) {
        return false;
    }
    if (abs(entity.origin[2] - entity.enemy.origin[2]) > 64) {
        return false;
    }
    distancesq = distancesquared(entity.origin, entity.enemy.origin);
    if (distancesq >= sqr(96)) {
        return false;
    }
    if (!entity cansee(entity.enemy)) {
        return false;
    }
    enemyangles = entity.enemy getplayerangles();
    if (!util::within_fov(entity.enemy.origin, enemyangles, self.origin, cos(25))) {
        return false;
    }
    if (!tracepassedonnavmesh(entity.origin, entity.enemy.origin, entity getpathfindingradius())) {
        return false;
    }
    return true;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x7d3600d4, Offset: 0x18b8
// Size: 0x17a
function private function_b5047448(entity) {
    if (entity asmistransitionrunning() || entity asmistransdecrunning()) {
        return false;
    }
    if (isdefined(entity.enemy)) {
        if (!entity haspath()) {
            return false;
        }
        if (!btapi_shouldchargemelee(entity)) {
            return false;
        }
        if (!function_c2f87d6(entity)) {
            return false;
        }
        if (!isplayer(entity.enemy)) {
            return false;
        }
        if (abs(entity.origin[2] - entity.enemy.origin[2]) > 64) {
            return false;
        }
        if (!entity cansee(entity.enemy)) {
            return false;
        }
        if (!tracepassedonnavmesh(entity.origin, entity.enemy.origin, entity getpathfindingradius())) {
            return false;
        }
        return true;
    }
    return false;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x7472d237, Offset: 0x1a40
// Size: 0x3d2
function private function_e9819a23(entity) {
    if (entity.var_9fde8624 !== #"crimson_nosferatu") {
        return false;
    }
    if (entity asmistransitionrunning() || entity asmistransdecrunning()) {
        return false;
    }
    if (isdefined(entity.enemy)) {
        if (!btapi_shouldchargemelee(entity)) {
            return false;
        }
        if (!function_3df24b25(entity)) {
            return false;
        }
        if (!isplayer(entity.enemy)) {
            return false;
        }
        if (is_true(entity.enemy.var_7ebdb2c9)) {
            return false;
        }
        if (abs(entity.origin[2] - entity.enemy.origin[2]) > 64) {
            return false;
        }
        predictedenemypos = entity.enemy.origin;
        velocity = entity.enemy getvelocity();
        if (length(velocity) > 0) {
            predictedenemypos += vectorscale(velocity, 0.25);
        }
        distancesq = distancesquared(entity.origin, predictedenemypos);
        if (distancesq <= sqr(128)) {
            return false;
        }
        if (distancesq >= sqr(100)) {
            if (entity.enemy issprinting()) {
                enemyvelocity = vectornormalize(entity.enemy getvelocity());
                var_7a61ad67 = vectornormalize(entity getvelocity());
                if (vectordot(var_7a61ad67, enemyvelocity) > cos(20)) {
                    /#
                        record3dtext("<unknown string>", entity.origin + (0, 0, 60), (1, 0, 0), "<unknown string>");
                    #/
                    return false;
                }
            }
        }
        if (!entity cansee(entity.enemy)) {
            return false;
        }
        enemyangles = entity.enemy getplayerangles();
        if (!util::within_fov(entity.enemy.origin, enemyangles, self.origin, cos(25))) {
            return false;
        }
        if (!tracepassedonnavmesh(entity.origin, predictedenemypos, entity getpathfindingradius())) {
            return false;
        }
        return true;
    }
    return false;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0xfe29700c, Offset: 0x1e20
// Size: 0x322
function private function_85d8b15d(entity) {
    if (entity asmistransitionrunning() || entity asmistransdecrunning()) {
        return false;
    }
    if (isdefined(entity.enemy)) {
        if (!btapi_shouldchargemelee(entity)) {
            return false;
        }
        if (!function_105988a0(entity)) {
            return false;
        }
        if (!isplayer(entity.enemy)) {
            return false;
        }
        if (abs(entity.origin[2] - entity.enemy.origin[2]) > 64) {
            return false;
        }
        predictedenemypos = entity.enemy.origin;
        velocity = entity.enemy getvelocity();
        if (length(velocity) > 0) {
            predictedenemypos += vectorscale(velocity, 0.25);
        }
        distancesq = distancesquared(entity.origin, predictedenemypos);
        if (distancesq <= sqr(128)) {
            return false;
        }
        if (distancesq >= sqr(100)) {
            if (entity.enemy issprinting()) {
                enemyvelocity = vectornormalize(entity.enemy getvelocity());
                var_7a61ad67 = vectornormalize(entity getvelocity());
                if (vectordot(var_7a61ad67, enemyvelocity) > cos(20)) {
                    /#
                        record3dtext("<unknown string>", entity.origin + (0, 0, 60), (1, 0, 0), "<unknown string>");
                    #/
                    return false;
                }
            }
        }
        if (!entity cansee(entity.enemy)) {
            return false;
        }
        if (!tracepassedonnavmesh(entity.origin, predictedenemypos, entity getpathfindingradius())) {
            return false;
        }
        return true;
    }
    return false;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x2 linked
// Checksum 0xa95da70e, Offset: 0x2150
// Size: 0xec
function function_ebe0e1b5(entity) {
    if (!isdefined(entity.enemy)) {
        return false;
    }
    var_623b3520 = blackboard::getblackboardevents("nfrtu_full_pain");
    if (isdefined(var_623b3520) && var_623b3520.size) {
        foreach (var_77d2339d in var_623b3520) {
            if (var_77d2339d.data.enemy === entity.enemy) {
                return false;
            }
        }
    }
    return true;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x61edd056, Offset: 0x2248
// Size: 0x6c
function private function_76505306(entity) {
    var_77d2339d = spawnstruct();
    var_77d2339d.enemy = entity.enemy;
    blackboard::addblackboardevent("nfrtu_full_pain", var_77d2339d, randomintrange(4500, 6500));
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x55867be5, Offset: 0x22c0
// Size: 0x2c
function private function_e0ad0db2(entity) {
    entity pathmode("move allowed");
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x48f1e09c, Offset: 0x22f8
// Size: 0xb0
function private nosferatushouldmelee(entity) {
    if (!isdefined(entity.enemy)) {
        return false;
    }
    if (is_true(entity.enemy.ignoreme)) {
        return false;
    }
    if (function_85d8b15d(entity) || function_7ffbbff(entity) || function_e9819a23(entity) || function_b5047448(entity)) {
        return true;
    }
    return false;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x2cb91085, Offset: 0x23b0
// Size: 0x24e
function private function_7ffbbff(entity) {
    if (!isdefined(entity.enemy)) {
        return false;
    }
    if (entity asmistransitionrunning() || entity asmistransdecrunning()) {
        return false;
    }
    if (isdefined(entity.marked_for_death)) {
        return false;
    }
    if (is_true(entity.ignoremelee)) {
        return false;
    }
    if (abs(entity.origin[2] - entity.enemy.origin[2]) > 64) {
        return false;
    }
    if (distancesquared(entity.origin, entity.enemy.origin) > sqr(80)) {
        return false;
    }
    yawtoenemy = angleclamp180(entity.angles[1] - vectortoangles(entity.enemy.origin - entity.origin)[1]);
    if (abs(yawtoenemy) > (isdefined(entity.var_1c0eb62a) ? entity.var_1c0eb62a : 60)) {
        return false;
    }
    if (!entity cansee(entity.enemy)) {
        return false;
    }
    if (!tracepassedonnavmesh(entity.origin, isdefined(entity.enemy.last_valid_position) ? entity.enemy.last_valid_position : entity.enemy.origin, entity.enemy getpathfindingradius())) {
        return false;
    }
    return true;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x64e1880, Offset: 0x2608
// Size: 0x11c
function private function_105988a0(entity) {
    /#
        if (getdvarint(#"hash_541d64bc060bdd29", 0)) {
            return true;
        }
    #/
    if (!isdefined(entity.enemy)) {
        return false;
    }
    var_33f55f67 = blackboard::getblackboardevents("nfrtu_leap_melee");
    if (isdefined(var_33f55f67) && var_33f55f67.size) {
        foreach (var_3bfe8ebe in var_33f55f67) {
            if (var_3bfe8ebe.data.enemy === entity.enemy) {
                return false;
            }
        }
    }
    return true;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0xcd5ab558, Offset: 0x2730
// Size: 0x11c
function private function_c2f87d6(entity) {
    /#
        if (getdvarint(#"hash_43a13163c1956e08", 0)) {
            return true;
        }
    #/
    if (!isdefined(entity.enemy)) {
        return false;
    }
    var_33f55f67 = blackboard::getblackboardevents("nfrtu_run_melee");
    if (isdefined(var_33f55f67) && var_33f55f67.size) {
        foreach (var_3bfe8ebe in var_33f55f67) {
            if (var_3bfe8ebe.data.enemy === entity.enemy) {
                return false;
            }
        }
    }
    return true;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0x5f588537, Offset: 0x2858
// Size: 0x6c
function private function_ed80a3bc(entity) {
    var_3bfe8ebe = spawnstruct();
    var_3bfe8ebe.enemy = entity.enemy;
    blackboard::addblackboardevent("nfrtu_run_melee", var_3bfe8ebe, randomintrange(10000, 12000));
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x6 linked
// Checksum 0xc60befdb, Offset: 0x28d0
// Size: 0x6c
function private function_4df0b87d(entity) {
    var_3bfe8ebe = spawnstruct();
    var_3bfe8ebe.enemy = entity.enemy;
    blackboard::addblackboardevent("nfrtu_leap_melee", var_3bfe8ebe, randomintrange(6000, 9000));
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 5, eflags: 0x2 linked
// Checksum 0x6c5c0067, Offset: 0x2a08
// Size: 0x9a
function function_37d5cfc(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration animmode("zonly_physics", 1);
    mocompduration orientmode("face enemy");
    mocompduration pathmode("dont move", 0);
    mocompduration.usegoalanimweight = 1;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 5, eflags: 0x2 linked
// Checksum 0xdd504965, Offset: 0x2ab0
// Size: 0x84
function function_4b55eb0a(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration.blockingpain = 0;
    mocompduration.usegoalanimweight = 0;
    mocompduration orientmode("face default");
    mocompduration pathmode("move delayed", 0, 0.2);
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 5, eflags: 0x2 linked
// Checksum 0x1bb033a, Offset: 0x2b40
// Size: 0x2f4
function function_1ad502a0(entity, mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompanimflag animmode("gravity", 1);
    mocompanimflag orientmode("face angle", mocompanimflag.angles[1]);
    mocompanimflag.blockingpain = 1;
    mocompanimflag.usegoalanimweight = 1;
    mocompanimflag pathmode("dont move", 1);
    mocompanimflag collidewithactors(0);
    if (isdefined(mocompanimflag.enemy)) {
        dirtoenemy = vectornormalize(mocompanimflag.enemy.origin - mocompanimflag.origin);
        mocompanimflag forceteleport(mocompanimflag.origin, vectortoangles(dirtoenemy));
    }
    if (!isdefined(mocompanimflag.meleeinfo)) {
        mocompanimflag.meleeinfo = new class_1546f28e();
        mocompanimflag.meleeinfo.var_9bfa8497 = mocompanimflag.origin;
        mocompanimflag.meleeinfo.var_98bc84b7 = getnotetracktimes(mocompduration, "start_adjust")[0];
        mocompanimflag.meleeinfo.var_6392c3a2 = getnotetracktimes(mocompduration, "end_adjust")[0];
        var_e397f54c = getmovedelta(mocompduration, 0, 1);
        mocompanimflag.meleeinfo.var_cb28f380 = mocompanimflag localtoworldcoords(var_e397f54c);
        /#
            movedelta = getmovedelta(mocompduration, 0, 1);
            animendpos = mocompanimflag localtoworldcoords(movedelta);
            distance = distance(mocompanimflag.origin, animendpos);
            recordcircle(animendpos, 3, (0, 1, 0), "<unknown string>");
            record3dtext("<unknown string>" + distance, animendpos, (0, 1, 0), "<unknown string>");
        #/
    }
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 5, eflags: 0x2 linked
// Checksum 0x9d1ae32c, Offset: 0x2e40
// Size: 0xb64
function function_3511ecd1(entity, mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    if (!isalive(mocompanimflag)) {
        return;
    }
    assert(isdefined(mocompanimflag.meleeinfo));
    currentanimtime = mocompanimflag getanimtime(mocompduration);
    if (isdefined(mocompanimflag.enemy) && !mocompanimflag.meleeinfo.adjustmentstarted && mocompanimflag.meleeinfo.var_425c4c8b && currentanimtime >= mocompanimflag.meleeinfo.var_98bc84b7) {
        predictedenemypos = mocompanimflag.enemy.origin;
        velocity = mocompanimflag.enemy getvelocity();
        if (length(velocity) > 0) {
            predictedenemypos += vectorscale(velocity, 0.25);
        }
        mocompanimflag.meleeinfo.adjustedendpos = predictedenemypos;
        var_cf699df5 = distancesquared(mocompanimflag.meleeinfo.var_9bfa8497, mocompanimflag.meleeinfo.var_cb28f380);
        var_776ddabf = distancesquared(mocompanimflag.meleeinfo.var_cb28f380, mocompanimflag.meleeinfo.adjustedendpos);
        var_65cbfb52 = distancesquared(mocompanimflag.meleeinfo.var_9bfa8497, mocompanimflag.meleeinfo.adjustedendpos);
        var_201660e6 = tracepassedonnavmesh(mocompanimflag.meleeinfo.var_9bfa8497, mocompanimflag.meleeinfo.adjustedendpos, mocompanimflag getpathfindingradius());
        traceresult = bullettrace(mocompanimflag.origin, mocompanimflag.meleeinfo.adjustedendpos + (0, 0, 30), 0, mocompanimflag, 0, 0, mocompanimflag.enemy);
        isvisible = traceresult[#"fraction"] == 1;
        var_535d098c = 0;
        if (isdefined(traceresult[#"hitloc"]) && traceresult[#"hitloc"] == "riotshield") {
            var_cc075bd0 = vectornormalize(mocompanimflag.origin - mocompanimflag.meleeinfo.adjustedendpos);
            mocompanimflag.meleeinfo.adjustedendpos += vectorscale(var_cc075bd0, 50);
            var_535d098c = 1;
        }
        if (traceresult[#"fraction"] < 0.9) {
            /#
                record3dtext("<unknown string>", mocompanimflag.origin + (0, 0, 60), (1, 0, 0), "<unknown string>");
            #/
            mocompanimflag.meleeinfo.var_425c4c8b = 0;
        } else if (!var_201660e6) {
            /#
                record3dtext("<unknown string>", mocompanimflag.origin + (0, 0, 60), (1, 0, 0), "<unknown string>");
            #/
            mocompanimflag.meleeinfo.var_425c4c8b = 0;
        } else if (var_cf699df5 > var_65cbfb52 && var_776ddabf >= sqr(130)) {
            /#
                record3dtext("<unknown string>", mocompanimflag.origin + (0, 0, 60), (1, 0, 0), "<unknown string>");
            #/
            mocompanimflag.meleeinfo.var_425c4c8b = 0;
        } else if (var_65cbfb52 >= sqr(450)) {
            /#
                record3dtext("<unknown string>", mocompanimflag.origin + (0, 0, 60), (1, 0, 0), "<unknown string>");
            #/
            mocompanimflag.meleeinfo.var_425c4c8b = 0;
        }
        if (var_535d098c) {
            /#
                record3dtext("<unknown string>", mocompanimflag.origin + (0, 0, 60), (1, 0, 0), "<unknown string>");
            #/
            mocompanimflag.meleeinfo.var_425c4c8b = 1;
        }
        if (mocompanimflag.meleeinfo.var_425c4c8b) {
            var_776ddabf = distancesquared(mocompanimflag.meleeinfo.var_cb28f380, mocompanimflag.meleeinfo.adjustedendpos);
            myforward = anglestoforward(mocompanimflag.angles);
            var_1c3641f2 = (mocompanimflag.enemy.origin[0], mocompanimflag.enemy.origin[1], mocompanimflag.origin[2]);
            dirtoenemy = vectornormalize(var_1c3641f2 - mocompanimflag.origin);
            zdiff = mocompanimflag.meleeinfo.var_cb28f380[2] - mocompanimflag.enemy.origin[2];
            withinzrange = abs(zdiff) <= 64;
            withinfov = vectordot(myforward, dirtoenemy) > cos(50);
            var_7948b2f3 = withinzrange && withinfov;
            var_425c4c8b = (isvisible || var_535d098c) && var_7948b2f3;
            /#
                reasons = "<unknown string>" + isvisible + "<unknown string>" + withinzrange + "<unknown string>" + withinfov;
                if (var_425c4c8b) {
                    record3dtext(reasons, mocompanimflag.origin + (0, 0, 60), (0, 1, 0), "<unknown string>");
                } else {
                    record3dtext(reasons, mocompanimflag.origin + (0, 0, 60), (1, 0, 0), "<unknown string>");
                }
            #/
            if (var_425c4c8b) {
                var_90c3cdd2 = length(mocompanimflag.meleeinfo.adjustedendpos - mocompanimflag.meleeinfo.var_cb28f380);
                timestep = function_60d95f53();
                animlength = getanimlength(mocompduration) * 1000;
                starttime = mocompanimflag.meleeinfo.var_98bc84b7 * animlength;
                stoptime = mocompanimflag.meleeinfo.var_6392c3a2 * animlength;
                starttime = ceil(starttime / timestep);
                stoptime = ceil(stoptime / timestep);
                adjustduration = stoptime - starttime;
                mocompanimflag.meleeinfo.var_10b8b6d1 = vectornormalize(mocompanimflag.meleeinfo.adjustedendpos - mocompanimflag.meleeinfo.var_cb28f380);
                mocompanimflag.meleeinfo.var_8b9a15a6 = var_90c3cdd2 / adjustduration;
                mocompanimflag.meleeinfo.var_425c4c8b = 1;
                mocompanimflag.meleeinfo.adjustmentstarted = 1;
            } else {
                mocompanimflag.meleeinfo.var_425c4c8b = 0;
            }
        }
    }
    if (mocompanimflag.meleeinfo.adjustmentstarted) {
        if (currentanimtime <= mocompanimflag.meleeinfo.var_6392c3a2) {
            assert(isdefined(mocompanimflag.meleeinfo.var_10b8b6d1) && isdefined(mocompanimflag.meleeinfo.var_8b9a15a6));
            /#
                recordsphere(mocompanimflag.meleeinfo.var_cb28f380, 3, (0, 1, 0), "<unknown string>");
                recordsphere(mocompanimflag.meleeinfo.adjustedendpos, 3, (0, 0, 1), "<unknown string>");
            #/
            adjustedorigin = mocompanimflag.origin + mocompanimflag.meleeinfo.var_10b8b6d1 * mocompanimflag.meleeinfo.var_8b9a15a6;
            mocompanimflag forceteleport(adjustedorigin);
            return;
        }
        if (isdefined(mocompanimflag.enemy)) {
            mocompanimflag orientmode("face enemy");
        }
    }
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 5, eflags: 0x2 linked
// Checksum 0xc40bbfc6, Offset: 0x39b0
// Size: 0xbe
function function_b472ba3d(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration.blockingpain = 0;
    mocompduration.usegoalanimweight = 0;
    mocompduration orientmode("face enemy");
    mocompduration collidewithactors(1);
    mocompduration clearpath();
    mocompduration pathmode("move delayed", 1, 0.2);
    mocompduration.meleeinfo = undefined;
}

// Namespace archetypenosferatu/archetype_nosferatu
// Params 1, eflags: 0x2 linked
// Checksum 0x45d28fc, Offset: 0x3a78
// Size: 0x2c
function nfrtuleaprumble(entity) {
    entity clientfield::increment("nfrtu_leap_melee_rumb");
}

