// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\archetype_nosferatu.gsc;
#using script_3faf478d5b0850fe;
#using script_2a5bf5b4a00cee0d;
#using script_164a456ce05c3483;
#using script_47851dbeea22fe66;
#using script_1ee011cd0961afd7;
#using script_5f20d3b434d24884;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using scripts\core_common\ai\archetype_locomotion_utility.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\ai\systems\ai_blackboard.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_be2ae534;

// Namespace namespace_be2ae534/namespace_be2ae534
// Params 0, eflags: 0x2 linked
// Checksum 0x3bca795d, Offset: 0x1e0
// Size: 0x7c
function init() {
    namespace_250e9486::function_252dff4d("demon", 4, &function_8cff66e5, &function_227b5187);
    clientfield::register("actor", "nfrtu_move_dash", 8000, 1, "int");
    registerbehaviorscriptfunctions();
}

// Namespace namespace_be2ae534/namespace_be2ae534
// Params 0, eflags: 0x2 linked
// Checksum 0xb529001e, Offset: 0x268
// Size: 0x504
function registerbehaviorscriptfunctions() {
    assert(isscriptfunctionptr(&namespace_250e9486::function_32353f6e));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_ef20564d67585c5", &namespace_250e9486::function_32353f6e);
    assert(isscriptfunctionptr(&function_a3037ba2));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_463e60b10fe1afee", &function_a3037ba2);
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&function_1d87e1af) || isscriptfunctionptr(&function_1d87e1af));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    behaviortreenetworkutility::registerbehaviortreeaction(#"hash_6cdf9a7fdb31b1e4", undefined, &function_1d87e1af, undefined);
    assert(isscriptfunctionptr(&function_3e73036b));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_783b67afe0ea98a5", &function_3e73036b);
    assert(isscriptfunctionptr(&function_a85ea11));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5be8a05866186293", &function_a85ea11);
    assert(isscriptfunctionptr(&function_7df9c6d8));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2321be589a6d9a0", &function_7df9c6d8);
    assert(isscriptfunctionptr(&function_cf9a996));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_3a2582998db5774b", &function_cf9a996);
    assert(isscriptfunctionptr(&function_bc8edc07));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_3c518f78c393482e", &function_bc8edc07);
    assert(isscriptfunctionptr(&namespace_250e9486::function_abb6c18a));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_48a15a732caa47ce", &namespace_250e9486::function_abb6c18a);
    assert(isscriptfunctionptr(&namespace_250e9486::function_99ed5179));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4b5d0f518720c6e9", &namespace_250e9486::function_99ed5179);
    assert(isscriptfunctionptr(&namespace_250e9486::function_50547dae));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1f5497ad3559808d", &namespace_250e9486::function_50547dae);
}

// Namespace namespace_be2ae534/namespace_be2ae534
// Params 0, eflags: 0x2 linked
// Checksum 0xbd052b07, Offset: 0x778
// Size: 0x114
function function_8cff66e5() {
    self namespace_250e9486::function_25b2c8a9();
    self.animrate = 1;
    self.var_df416181 = "annhilate";
    self.var_d1bf288 = 3000;
    self.health = 600 + getplayers().size * 400;
    self.no_gib = 1;
    self asmsetanimationrate(self.animrate);
    self namespace_83eb6304::function_3ecfde67("demon_burst");
    self thread namespace_9fc66ac::function_ba33d23d(#"hash_4fb3839181258631", #"hash_4fb3839181258631", #"hash_3da6894b4a02a91b");
    self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_demon_spawn");
}

// Namespace namespace_be2ae534/namespace_be2ae534
// Params 0, eflags: 0x2 linked
// Checksum 0x7e8caf31, Offset: 0x898
// Size: 0x1c
function function_227b5187() {
    self namespace_250e9486::function_8971bbb7();
}

// Namespace namespace_be2ae534/namespace_be2ae534
// Params 1, eflags: 0x4
// Checksum 0xe7491896, Offset: 0x8c0
// Size: 0xc8
function private function_5c82fd66(entity) {
    var_7a69f7e9 = blackboard::getblackboardevents("nfrtu_stun");
    if (isdefined(var_7a69f7e9) && var_7a69f7e9.size) {
        foreach (event in var_7a69f7e9) {
            if (event.nosferatu === entity) {
                return false;
            }
        }
    }
    return true;
}

// Namespace namespace_be2ae534/namespace_be2ae534
// Params 1, eflags: 0x2 linked
// Checksum 0x96ce48f5, Offset: 0x990
// Size: 0x7c
function function_a3037ba2(entity) {
    namespace_250e9486::stunstart(entity);
    var_268f1415 = spawnstruct();
    var_268f1415.nosferatu = entity;
    blackboard::addblackboardevent("nfrtu_stun", var_268f1415, randomintrange(10000, 12000));
}

// Namespace namespace_be2ae534/namespace_be2ae534
// Params 2, eflags: 0x6 linked
// Checksum 0x7475308, Offset: 0xa18
// Size: 0x38
function private function_1d87e1af(entity, *asmstatename) {
    if (asmstatename ai::is_stunned()) {
        return 5;
    }
    return 4;
}

// Namespace namespace_be2ae534/namespace_be2ae534
// Params 1, eflags: 0x2 linked
// Checksum 0x783411d8, Offset: 0xa58
// Size: 0xec
function function_3e73036b(entity) {
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

// Namespace namespace_be2ae534/namespace_be2ae534
// Params 1, eflags: 0x6 linked
// Checksum 0xc5b1f063, Offset: 0xb50
// Size: 0x6c
function private function_a85ea11(entity) {
    var_77d2339d = spawnstruct();
    var_77d2339d.enemy = entity.enemy;
    blackboard::addblackboardevent("nfrtu_full_pain", var_77d2339d, randomintrange(4500, 6500));
}

// Namespace namespace_be2ae534/namespace_be2ae534
// Params 1, eflags: 0x6 linked
// Checksum 0x45ffa347, Offset: 0xbc8
// Size: 0x2c
function private function_7df9c6d8(entity) {
    entity pathmode("move allowed");
}

// Namespace namespace_be2ae534/namespace_be2ae534
// Params 1, eflags: 0x2 linked
// Checksum 0x7d67e06f, Offset: 0xc00
// Size: 0x50
function function_cf9a996(entity) {
    entity namespace_e32bb68::function_3a59ec34("zmb_doa_ai_demon_vocal_leap");
    entity clientfield::set("nfrtu_move_dash", 1);
    return true;
}

// Namespace namespace_be2ae534/namespace_be2ae534
// Params 1, eflags: 0x2 linked
// Checksum 0xd6b63393, Offset: 0xc58
// Size: 0x30
function function_bc8edc07(entity) {
    entity clientfield::set("nfrtu_move_dash", 0);
    return true;
}

