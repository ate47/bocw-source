// Atian COD Tools GSC CW decompiler test
#using script_47851dbeea22fe66;
#using script_3faf478d5b0850fe;
#using script_2a5bf5b4a00cee0d;
#using script_164a456ce05c3483;
#using script_1ee011cd0961afd7;
#using script_5f20d3b434d24884;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\ai\systems\debug.gsc;
#using script_2c5daa95f8fec03c;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_notetracks.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_mocomp.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\ai\systems\ai_blackboard.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\zombie.gsc;
#using scripts\core_common\ai\archetype_mocomps_utility.gsc;
#using scripts\core_common\ai\archetype_locomotion_utility.gsc;
#using script_3819e7a1427df6d2;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\ai\zombie_eye_glow.gsc;
#using scripts\core_common\ai\systems\destructible_character.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\aat_shared.gsc;

#namespace namespace_146875e;

// Namespace namespace_146875e/namespace_146875e
// Params 0, eflags: 0x2 linked
// Checksum 0xc6b3ce92, Offset: 0x840
// Size: 0x154
function init() {
    level.doa.var_48af1fc9 = [];
    namespace_250e9486::function_252dff4d("gladiator_destroyer", 6, &function_5af2c5ef, undefined, 5, &function_adb41cc7);
    namespace_250e9486::function_252dff4d("gladiator_marauder", 7, &function_5af2c5ef, undefined, 5, &function_adb41cc7);
    registerbehaviorscriptfunctions();
    registergladiatorinterfaceattributes();
    clientfield::register("toplayer", "gladiator_melee_effect", 1, 1, "counter");
    clientfield::register("actor", "gladiator_arm_effect", 1, 2, "int");
    animationstatenetwork::registernotetrackhandlerfunction("dropgun_left", &detachleft);
    animationstatenetwork::registernotetrackhandlerfunction("dropgun_right", &detachright);
}

// Namespace namespace_146875e/namespace_146875e
// Params 0, eflags: 0x2 linked
// Checksum 0x4e743750, Offset: 0x9a0
// Size: 0xd4
function registergladiatorinterfaceattributes() {
    ai::registermatchedinterface(#"gladiator", #"run", 0, array(1, 0));
    ai::registermatchedinterface(#"gladiator", #"axe_throw", 1, array(1, 0));
    ai::registernumericinterface(#"gladiator", #"damage_multiplier", 1, 0, 100);
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x2 linked
// Checksum 0x45c6183a, Offset: 0xa80
// Size: 0x4c
function detachleft(entity) {
    if (is_true(self.var_fe593357)) {
        destructserverutils::function_9885f550(entity, "left_hand", "tag_weapon_left");
    }
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x2 linked
// Checksum 0x26da94d2, Offset: 0xad8
// Size: 0x4c
function detachright(entity) {
    if (is_true(self.var_88d88318)) {
        destructserverutils::function_9885f550(entity, "right_hand", "tag_weapon_right");
    }
}

// Namespace namespace_146875e/namespace_146875e
// Params 0, eflags: 0x2 linked
// Checksum 0x2f6ac485, Offset: 0xb30
// Size: 0xdec
function registerbehaviorscriptfunctions() {
    assert(isscriptfunctionptr(&gladiatortargetservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"gladiatortargetservice", &gladiatortargetservice);
    assert(isscriptfunctionptr(&function_4f73587a));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2f31066d04316712", &function_4f73587a);
    assert(isscriptfunctionptr(&function_4660925e));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_19f5dddb53541f2f", &function_4660925e);
    assert(isscriptfunctionptr(&function_edd0777f));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_3d538371b59fc4ce", &function_edd0777f);
    assert(isscriptfunctionptr(&function_154454e8));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_205614b8bf4014e6", &function_154454e8);
    assert(isscriptfunctionptr(&function_154454e8));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_205614b8bf4014e6", &function_154454e8);
    assert(isscriptfunctionptr(&function_2b6f49c8));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_48c3fc4eec7605", &function_2b6f49c8);
    assert(isscriptfunctionptr(&function_2b6f49c8));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_48c3fc4eec7605", &function_2b6f49c8);
    assert(isscriptfunctionptr(&function_d2ab62ae));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4aefcc750ed27716", &function_d2ab62ae);
    assert(isscriptfunctionptr(&function_a3329afd));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1e62e0f93339aad3", &function_a3329afd);
    assert(isscriptfunctionptr(&function_13f886a2));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4038d6d7b731c1de", &function_13f886a2);
    assert(isscriptfunctionptr(&function_61e7d5f5));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1d96f193711e7602", &function_61e7d5f5);
    assert(isscriptfunctionptr(&function_6bbfa1a0));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_753bdf09b9b21d9a", &function_6bbfa1a0);
    assert(isscriptfunctionptr(&function_dd674e3c));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_649ab6146cce9955", &function_dd674e3c);
    assert(isscriptfunctionptr(&function_7468904d));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_19966227fe912af8", &function_7468904d);
    assert(isscriptfunctionptr(&gladiatorshouldreact));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"gladiatorshouldreact", &gladiatorshouldreact);
    assert(isscriptfunctionptr(&function_c1b97472));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5934d511f3d43e76", &function_c1b97472);
    assert(isscriptfunctionptr(&function_fe0ecd9f));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7114ad7e891644ce", &function_fe0ecd9f);
    assert(isscriptfunctionptr(&gladiatorpickaxe));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"gladiatorpickaxe", &gladiatorpickaxe);
    assert(isscriptfunctionptr(&gladiatorpickaxe));
    behaviorstatemachine::registerbsmscriptapiinternal(#"gladiatorpickaxe", &gladiatorpickaxe);
    assert(isscriptfunctionptr(&function_7891bd9b));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2ec3db12905e5ef2", &function_7891bd9b);
    assert(isscriptfunctionptr(&function_490a290d));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_324b5266aa732357", &function_490a290d);
    assert(isscriptfunctionptr(&function_6719445a));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7a99cf7ed75b85d4", &function_6719445a);
    assert(isscriptfunctionptr(&function_fced00e1));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_84d084fea1afb67", &function_fced00e1);
    assert(isscriptfunctionptr(&function_3963581d));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_72578a0bdaf6cabc", &function_3963581d);
    assert(isscriptfunctionptr(&function_dfbf9d5e));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1c6cfcf6fdb404ff", &function_dfbf9d5e);
    assert(isscriptfunctionptr(&function_8d49edfa));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_50e5d4b2634f5877", &function_8d49edfa);
    assert(isscriptfunctionptr(&function_990c9627));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_52aa25564f02b9a1", &function_990c9627);
    assert(isscriptfunctionptr(&function_6ba071ff));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2d6fdeb321d8ce80", &function_6ba071ff);
    assert(isscriptfunctionptr(&function_3ca98f5a));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7ed731cb43b72ab7", &function_3ca98f5a);
    assert(isscriptfunctionptr(&function_e217245a));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_51d4a260f5e68d32", &function_e217245a);
    animationstatenetwork::registeranimationmocomp("mocomp_gladiator_leap", &registerhud_message_electricity_, &function_3f15e557, &function_96f1cbf6);
    animationstatenetwork::registeranimationmocomp("mocomp_gladiator_throw", &function_3137174f, &function_64cd870, &function_d9e4ebc8);
    animationstatenetwork::registeranimationmocomp("mocomp_gladiator_run_melee", &function_37d33f09, &function_3f7c46a, &function_2bc1ffb8);
    animationstatenetwork::registernotetrackhandlerfunction("gladiator_melee", &function_cdef55f0);
    animationstatenetwork::registernotetrackhandlerfunction("axe_throw_start", &function_f3c02dbf);
    animationstatenetwork::registernotetrackhandlerfunction("axe_reload", &function_14ff2d78);
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x6514161b, Offset: 0x1928
// Size: 0x3d6
function private gladiatortargetservice(entity) {
    if (!isdefined(entity)) {
        return;
    }
    if (!is_true(entity.hasseenfavoriteenemy)) {
        if (isdefined(entity.favoriteenemy) && entity cansee(entity.favoriteenemy) || isdefined(entity.var_cb89528d)) {
            entity.var_cb89528d = undefined;
            entity.hasseenfavoriteenemy = 1;
            entity.var_908a5d30 = 1;
            if (entity.var_9fde8624 == #"gladiator_destroyer") {
                entity setblackboardattribute("_gladiator_react", "idle");
                if (entity haspath()) {
                    entity setblackboardattribute("_gladiator_react", "walk");
                }
            } else {
                if (!isdefined(entity.favoriteenemy)) {
                    return;
                }
                assert(isdefined(entity.favoriteenemy.origin), "left_arm_upper" + (isdefined(entity.favoriteenemy.birthtime) ? entity.favoriteenemy.birthtime : "<unknown string>") + "<unknown string>" + entity.favoriteenemy getentitynumber());
                to_enemy = entity.favoriteenemy.origin - entity.origin;
                to_enemy = (to_enemy[0], to_enemy[1], 0);
                var_2ddabcd3 = anglestoforward(entity.angles);
                var_2ddabcd3 = (var_2ddabcd3[0], var_2ddabcd3[1], 0);
                gladiator_right = anglestoright(entity.angles);
                gladiator_right = (gladiator_right[0], gladiator_right[1], 0);
                dot_forward = vectordot(var_2ddabcd3, to_enemy);
                dot_right = vectordot(gladiator_right, to_enemy);
                if (abs(dot_forward) > abs(dot_right)) {
                    dot = dot_forward;
                    directions = array("front", "back");
                } else {
                    dot = dot_right;
                    directions = array("right", "left");
                }
                if (dot >= 0) {
                    entity setblackboardattribute("_gladiator_react", directions[0]);
                } else {
                    entity setblackboardattribute("_gladiator_react", directions[1]);
                }
            }
            if (entity.var_9fde8624 == #"gladiator_marauder") {
                entity ai::set_behavior_attribute("run", 1);
            }
        }
    }
    return 0;
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0xcf1f86ef, Offset: 0x1d08
// Size: 0x194
function private function_4f73587a(entity) {
    enemy = entity.favoriteenemy;
    if (entity ai::has_behavior_attribute("run")) {
        if (entity ai::get_behavior_attribute("run")) {
            entity setblackboardattribute("_locomotion_speed", "locomotion_speed_run");
            return true;
        }
    }
    if (!is_true(entity.hasseenfavoriteenemy)) {
        entity setblackboardattribute("_locomotion_speed", "locomotion_speed_walk");
        return false;
    }
    if (isdefined(enemy) && isalive(enemy)) {
        dist_sq = distancesquared(entity.origin, enemy.origin);
        if (dist_sq > 360000) {
            entity setblackboardattribute("_locomotion_speed", "locomotion_speed_run");
            return true;
        }
        if (dist_sq < 160000) {
            entity setblackboardattribute("_locomotion_speed", "locomotion_speed_walk");
            return true;
        }
    }
    return false;
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x66af77aa, Offset: 0x1ea8
// Size: 0x30
function private function_4660925e(entity) {
    if (entity.var_9fde8624 == #"gladiator_destroyer") {
        return true;
    }
    return false;
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0xda39b77f, Offset: 0x1ee0
// Size: 0x42
function private gladiatorpickaxe(entity) {
    if (math::cointoss()) {
        entity.var_34cc44de = "left";
        return;
    }
    entity.var_34cc44de = "right";
}

// Namespace namespace_146875e/namespace_146875e
// Params 0, eflags: 0x6 linked
// Checksum 0xd6e87ce2, Offset: 0x1f30
// Size: 0x16
function private function_104b8cc1() {
    self.var_844453ff = gettime() + 3000;
}

// Namespace namespace_146875e/namespace_146875e
// Params 0, eflags: 0x6 linked
// Checksum 0xe3475735, Offset: 0x1f50
// Size: 0x16
function private function_d1242576() {
    self.next_leap_time = gettime() + 3000;
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0xf61cc743, Offset: 0x1f70
// Size: 0x20e
function private function_edd0777f(entity) {
    if (!entity ai::get_behavior_attribute("axe_throw")) {
        return false;
    }
    if (!isdefined(entity.favoriteenemy) || !isdefined(entity.favoriteenemy.origin)) {
        return false;
    }
    if (isdefined(entity.favoriteenemy.birthtime) && gettime() < entity.favoriteenemy.birthtime + 1000) {
        return false;
    }
    if (entity.var_9fde8624 != #"gladiator_destroyer") {
        return false;
    }
    if (!entity.has_left_arm || !entity.has_right_arm) {
        return false;
    }
    if (entity.var_ba481973) {
        return false;
    }
    if (gettime() < entity.var_844453ff) {
        return false;
    }
    dist_sq = distancesquared(entity.origin, entity.favoriteenemy.origin);
    if (dist_sq < 57600) {
        return false;
    }
    if (dist_sq > 360000) {
        return false;
    }
    yaw = abs(namespace_ec06fe4a::getyawtoenemy());
    if (yaw > 22.5) {
        return false;
    }
    can_see = bullettracepassed(entity.origin + (0, 0, 36), entity.favoriteenemy.origin + (0, 0, 36), 0, undefined);
    if (!can_see) {
        return false;
    }
    return true;
}

// Namespace namespace_146875e/namespace_146875e
// Params 0, eflags: 0x2 linked
// Checksum 0xd58052a9, Offset: 0x2188
// Size: 0x64
function function_f7d9bc34() {
    self endon(#"disconnect");
    self namespace_83eb6304::function_3ecfde67("incoming_impact");
    wait(1.2);
    if (isdefined(self)) {
        self namespace_83eb6304::turnofffx("incoming_impact");
    }
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x98731901, Offset: 0x21f8
// Size: 0x28
function private function_154454e8(*entity) {
    if (self.var_34cc44de === "left") {
        return true;
    }
    return false;
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0xbd499f7e, Offset: 0x2228
// Size: 0x28
function private function_2b6f49c8(*entity) {
    if (self.var_34cc44de === "right") {
        return true;
    }
    return false;
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0xf7822e3c, Offset: 0x2258
// Size: 0x46
function private function_a3329afd(*entity) {
    if (self.var_34cc44de === "left") {
        if (is_true(self.var_d5e9528)) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0xb670e9d6, Offset: 0x22a8
// Size: 0x46
function private function_d2ab62ae(*entity) {
    if (self.var_34cc44de === "right") {
        if (is_true(self.var_d5e9528)) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x2 linked
// Checksum 0x40aae1d5, Offset: 0x22f8
// Size: 0x292
function function_13f886a2(entity) {
    if (entity.ignoreall) {
        return false;
    }
    if (!isdefined(entity.favoriteenemy)) {
        return false;
    }
    if (!self.has_left_arm || !self.has_right_arm) {
        return false;
    }
    var_17c3916f = sqr(128);
    if (self.var_9fde8624 == #"gladiator_marauder") {
        if (gettime() < entity.next_leap_time) {
            return false;
        }
        enemy_dist_sq = distancesquared(entity.origin, entity.favoriteenemy.origin);
        if (enemy_dist_sq < sqr(128)) {
            return false;
        }
        var_17c3916f = sqr(240);
        z_diff = abs(entity.origin[2] - entity.favoriteenemy.origin[2]);
        if (z_diff > 72) {
            return false;
        }
    } else if (self.var_9fde8624 == #"gladiator_destroyer") {
        z_diff = abs(entity.origin[2] - entity.favoriteenemy.origin[2]);
        if (z_diff > 48) {
            return false;
        }
    }
    if (distancesquared(entity.origin, entity.favoriteenemy.origin) > var_17c3916f) {
        return false;
    }
    yawtoenemy = angleclamp180(entity.angles[1] - vectortoangles(entity.favoriteenemy.origin - entity.origin)[1]);
    if (abs(yawtoenemy) > 60) {
        return false;
    }
    return true;
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x2 linked
// Checksum 0x56ada768, Offset: 0x2598
// Size: 0x1d2
function function_61e7d5f5(entity) {
    if (!is_true(entity.completed_emerging_into_playable_area)) {
        return false;
    }
    if (entity.ignoreall) {
        return false;
    }
    if (!isdefined(entity.favoriteenemy)) {
        return false;
    }
    if (self.var_9fde8624 != #"gladiator_destroyer") {
        return false;
    }
    if (self.has_left_arm && self.has_right_arm) {
        return false;
    }
    var_ff38566a = lengthsquared(entity.favoriteenemy getvelocity());
    var_17c3916f = sqr(100);
    if (var_ff38566a < sqr(175)) {
        var_17c3916f = sqr(190);
    }
    if (distancesquared(entity.origin, entity.favoriteenemy.origin) > var_17c3916f) {
        return false;
    }
    yawtoenemy = angleclamp180(entity.angles[1] - vectortoangles(entity.favoriteenemy.origin - entity.origin)[1]);
    if (abs(yawtoenemy) > 60) {
        return false;
    }
    return true;
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x9fd6b44, Offset: 0x2778
// Size: 0x2c
function private function_7891bd9b(entity) {
    entity pathmode("dont move", 1);
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x1ea83fa6, Offset: 0x27b0
// Size: 0x2c
function private function_490a290d(entity) {
    entity pathmode("move allowed");
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x44978968, Offset: 0x27e8
// Size: 0x2e
function private function_8d49edfa(entity) {
    if (is_true(entity.knockdown)) {
        return false;
    }
    return true;
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0xb61c6c7c, Offset: 0x2820
// Size: 0x2e
function private function_6bbfa1a0(entity) {
    if (is_true(entity.var_9b959f19)) {
        return true;
    }
    return false;
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0xbf2cde12, Offset: 0x2858
// Size: 0x50
function private function_dd674e3c(entity) {
    locomotionspeed = entity getblackboardattribute("_locomotion_speed");
    if (locomotionspeed === "locomotion_speed_run") {
        return true;
    }
    return false;
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x49a6a54f, Offset: 0x28b0
// Size: 0x58
function private function_7468904d(entity) {
    if (entity getblackboardattribute("_locomotion_speed") === "locomotion_speed_run" && entity haspath()) {
        return true;
    }
    return false;
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x96ec553f, Offset: 0x2910
// Size: 0x2e
function private gladiatorshouldreact(entity) {
    if (is_true(entity.var_908a5d30)) {
        return true;
    }
    return false;
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x5215823b, Offset: 0x2948
// Size: 0x24
function private function_c1b97472(entity) {
    entity function_104b8cc1();
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x217adc82, Offset: 0x2978
// Size: 0x2c
function private function_fe0ecd9f(entity) {
    entity.var_d5e9528 = 0;
    entity function_104b8cc1();
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x1645ebd6, Offset: 0x29b0
// Size: 0x84
function private function_6719445a(entity) {
    if (entity.var_9fde8624 == #"gladiator_marauder") {
        entity.var_5dd07a80 = 1;
        entity.var_c2986b66 = 1;
        entity function_d1242576();
        entity.var_b736fc8b = 1;
        entity pathmode("dont move", 1);
    }
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0xe7840a8, Offset: 0x2a40
// Size: 0x7c
function private function_fced00e1(entity) {
    if (entity.var_9fde8624 == #"gladiator_marauder") {
        entity.var_5dd07a80 = undefined;
        entity.var_c2986b66 = undefined;
        entity function_d1242576();
        entity.var_b736fc8b = 0;
        entity pathmode("move allowed");
    }
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0xfe5b3195, Offset: 0x2ac8
// Size: 0x42
function private function_3963581d(entity) {
    if (entity.var_9fde8624 == #"gladiator_marauder") {
        entity.var_5dd07a80 = 1;
        entity.var_c2986b66 = 1;
    }
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0xae5d00ae, Offset: 0x2b18
// Size: 0x3e
function private function_dfbf9d5e(entity) {
    if (entity.var_9fde8624 == #"gladiator_marauder") {
        entity.var_5dd07a80 = undefined;
        entity.var_c2986b66 = undefined;
    }
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x94972e46, Offset: 0x2b60
// Size: 0x2c
function private function_990c9627(entity) {
    entity pathmode("dont move", 1);
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x5b14d6a6, Offset: 0x2b98
// Size: 0x34
function private function_6ba071ff(entity) {
    entity.var_9b959f19 = 0;
    entity pathmode("move allowed");
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x66448ad, Offset: 0x2bd8
// Size: 0x56
function private function_3ca98f5a(entity) {
    entity pathmode("dont move", 1);
    if (entity.var_9fde8624 == #"gladiator_marauder") {
        entity.var_4f1b8d2b = 1;
    }
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x455dd0e1, Offset: 0x2c38
// Size: 0x36
function private function_e217245a(entity) {
    entity pathmode("move allowed");
    entity.var_908a5d30 = 0;
}

// Namespace namespace_146875e/namespace_146875e
// Params 0, eflags: 0x2 linked
// Checksum 0x22427592, Offset: 0x2c78
// Size: 0x3a
function function_85b2f76f() {
    meleeinfo = spawnstruct();
    meleeinfo.adjustmentstarted = 0;
    meleeinfo.var_425c4c8b = 1;
    return meleeinfo;
}

// Namespace namespace_146875e/namespace_146875e
// Params 5, eflags: 0x2 linked
// Checksum 0x95ef6dfe, Offset: 0x2cc0
// Size: 0x264
function registerhud_message_electricity_(entity, mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompanimflag animmode("gravity", 1);
    mocompanimflag orientmode("face angle", mocompanimflag.angles[1]);
    mocompanimflag.blockingpain = 1;
    mocompanimflag.var_5dd07a80 = 1;
    mocompanimflag.var_c2986b66 = 1;
    mocompanimflag.usegoalanimweight = 1;
    mocompanimflag pathmode("dont move");
    mocompanimflag collidewithactors(0);
    if (isdefined(mocompanimflag.favoriteenemy)) {
        dirtoenemy = vectornormalize(mocompanimflag.favoriteenemy.origin - mocompanimflag.origin);
        mocompanimflag forceteleport(mocompanimflag.origin, vectortoangles(dirtoenemy));
    }
    if (!isdefined(self.meleeinfo)) {
        self.meleeinfo = function_85b2f76f();
        self.meleeinfo.var_9bfa8497 = mocompanimflag.origin;
        self.meleeinfo.var_98bc84b7 = getnotetracktimes(mocompduration, "start_procedural")[0];
        self.meleeinfo.var_6392c3a2 = getnotetracktimes(mocompduration, "stop_procedural")[0];
        var_e397f54c = getmovedelta(mocompduration, 0, 1);
        self.meleeinfo.var_cb28f380 = mocompanimflag localtoworldcoords(var_e397f54c);
    }
    namespace_1e25ad94::debugmsg("mocompGladiatorLeapStart entNum:" + self getentitynumber());
}

// Namespace namespace_146875e/namespace_146875e
// Params 5, eflags: 0x2 linked
// Checksum 0x4a0a33d7, Offset: 0x2f30
// Size: 0x734
function function_3f15e557(entity, mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    if (self.health <= 0) {
        return;
    }
    assert(isdefined(self.meleeinfo));
    if (!isdefined(self.meleeinfo)) {
        return;
    }
    currentanimtime = mocompanimflag getanimtime(mocompduration);
    if (isdefined(self.favoriteenemy) && !self.meleeinfo.adjustmentstarted && self.meleeinfo.var_425c4c8b && currentanimtime >= self.meleeinfo.var_98bc84b7) {
        predictedenemypos = mocompanimflag.favoriteenemy.origin;
        if (isplayer(mocompanimflag.favoriteenemy)) {
            velocity = mocompanimflag.favoriteenemy getvelocity();
            if (length(velocity) >= 0) {
                predictedenemypos += vectorscale(velocity, 0.25);
            }
        }
        var_83fd29ee = vectornormalize(predictedenemypos - mocompanimflag.origin);
        var_1efb2395 = predictedenemypos - var_83fd29ee * mocompanimflag getpathfindingradius();
        self.meleeinfo.adjustedendpos = var_1efb2395;
        var_776ddabf = distancesquared(self.meleeinfo.var_cb28f380, self.meleeinfo.adjustedendpos);
        var_65cbfb52 = distancesquared(self.meleeinfo.var_9bfa8497, self.meleeinfo.adjustedendpos);
        if (var_776ddabf <= sqr(20)) {
            self.meleeinfo.var_425c4c8b = 0;
        } else if (var_65cbfb52 <= sqr(90)) {
            self.meleeinfo.var_425c4c8b = 0;
        } else if (var_65cbfb52 >= sqr(400)) {
            self.meleeinfo.var_425c4c8b = 0;
        }
        if (self.meleeinfo.var_425c4c8b) {
            var_776ddabf = distancesquared(self.meleeinfo.var_cb28f380, self.meleeinfo.adjustedendpos);
            myforward = anglestoforward(self.angles);
            var_1c3641f2 = (mocompanimflag.favoriteenemy.origin[0], mocompanimflag.favoriteenemy.origin[1], mocompanimflag.origin[2]);
            dirtoenemy = vectornormalize(var_1c3641f2 - mocompanimflag.origin);
            zdiff = self.meleeinfo.var_cb28f380[2] - mocompanimflag.favoriteenemy.origin[2];
            withinzrange = abs(zdiff) <= 45;
            withinfov = vectordot(myforward, dirtoenemy) > cos(30);
            var_7948b2f3 = withinzrange && withinfov;
            isvisible = bullettracepassed(mocompanimflag.origin, mocompanimflag.favoriteenemy.origin, 0, self);
            var_425c4c8b = isvisible && var_7948b2f3;
            if (var_425c4c8b) {
                var_90c3cdd2 = length(self.meleeinfo.adjustedendpos - self.meleeinfo.var_cb28f380);
                timestep = function_60d95f53();
                animlength = getanimlength(mocompduration) * 1000;
                starttime = self.meleeinfo.var_98bc84b7 * animlength;
                stoptime = self.meleeinfo.var_6392c3a2 * animlength;
                starttime = floor(starttime / timestep);
                stoptime = floor(stoptime / timestep);
                adjustduration = stoptime - starttime;
                self.meleeinfo.var_10b8b6d1 = vectornormalize(self.meleeinfo.adjustedendpos - self.meleeinfo.var_cb28f380);
                self.meleeinfo.var_8b9a15a6 = var_90c3cdd2 / adjustduration;
                self.meleeinfo.var_425c4c8b = 1;
                self.meleeinfo.adjustmentstarted = 1;
            } else {
                self.meleeinfo.var_425c4c8b = 0;
            }
        }
    }
    if (self.meleeinfo.adjustmentstarted && currentanimtime <= self.meleeinfo.var_6392c3a2) {
        assert(isdefined(self.meleeinfo.var_10b8b6d1) && isdefined(self.meleeinfo.var_8b9a15a6));
        adjustedorigin = mocompanimflag.origin + mocompanimflag.meleeinfo.var_10b8b6d1 * self.meleeinfo.var_8b9a15a6;
        mocompanimflag forceteleport(adjustedorigin);
    }
}

// Namespace namespace_146875e/namespace_146875e
// Params 5, eflags: 0x2 linked
// Checksum 0x533abe0f, Offset: 0x3670
// Size: 0xe6
function function_96f1cbf6(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    namespace_1e25ad94::debugmsg("mocompGladiatorLeapEnd entNum:" + self getentitynumber());
    mocompduration.blockingpain = 0;
    mocompduration.var_5dd07a80 = undefined;
    mocompduration.var_c2986b66 = undefined;
    mocompduration.usegoalanimweight = 0;
    mocompduration pathmode("move allowed");
    mocompduration orientmode("face default");
    mocompduration collidewithactors(1);
    mocompduration.meleeinfo = undefined;
}

// Namespace namespace_146875e/namespace_146875e
// Params 5, eflags: 0x2 linked
// Checksum 0x31492a30, Offset: 0x3760
// Size: 0xbc
function function_3137174f(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    if (isdefined(mocompduration.favoriteenemy)) {
        to_enemy = vectornormalize(mocompduration.favoriteenemy.origin - mocompduration.origin);
        angles_to_enemy = vectortoangles(to_enemy);
        mocompduration orientmode("face angle", angles_to_enemy[1]);
    }
}

// Namespace namespace_146875e/namespace_146875e
// Params 5, eflags: 0x2 linked
// Checksum 0xc81004f5, Offset: 0x3828
// Size: 0xd4
function function_64cd870(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    if (isdefined(mocompduration.favoriteenemy)) {
        if (!is_true(mocompduration.var_ba481973)) {
            to_enemy = vectornormalize(mocompduration.favoriteenemy.origin - mocompduration.origin);
            angles_to_enemy = vectortoangles(to_enemy);
            mocompduration orientmode("face angle", angles_to_enemy[1]);
        }
    }
}

// Namespace namespace_146875e/namespace_146875e
// Params 5, eflags: 0x2 linked
// Checksum 0x9f996947, Offset: 0x3908
// Size: 0x2c
function function_d9e4ebc8(*entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    
}

// Namespace namespace_146875e/namespace_146875e
// Params 5, eflags: 0x2 linked
// Checksum 0xcc9ef2c0, Offset: 0x3940
// Size: 0x6c
function function_37d33f09(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration animmode("normal");
    mocompduration orientmode("face motion");
}

// Namespace namespace_146875e/namespace_146875e
// Params 5, eflags: 0x2 linked
// Checksum 0x3279c9f6, Offset: 0x39b8
// Size: 0xbc
function function_3f7c46a(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    if (isdefined(mocompduration.favoriteenemy)) {
        if (distancesquared(mocompduration.origin, mocompduration.favoriteenemy.origin) <= sqr(50)) {
            mocompduration animmode("angle deltas");
            return;
        }
        mocompduration animmode("normal");
    }
}

// Namespace namespace_146875e/namespace_146875e
// Params 5, eflags: 0x2 linked
// Checksum 0xc0cb4eb8, Offset: 0x3a80
// Size: 0x4c
function function_2bc1ffb8(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration animmode("normal");
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0xb64ecc55, Offset: 0x3ad8
// Size: 0xa4
function private function_cdef55f0(entity) {
    hitent = entity melee(anglestoforward(entity.angles));
    entity.var_4f1b8d2b = 0;
    if (isdefined(hitent) && isplayer(hitent) && hitent.birthtime !== gettime()) {
        hitent clientfield::increment_to_player("gladiator_melee_effect");
    }
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x74d4aff3, Offset: 0x3b88
// Size: 0x5c
function private function_f3c02dbf(entity) {
    if (!isdefined(entity.favoriteenemy)) {
        return;
    }
    entity function_5be18f96(0);
    entity function_8a8841b0(entity.favoriteenemy.origin);
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x4c28c2ea, Offset: 0x3bf0
// Size: 0x24
function private function_14ff2d78(entity) {
    entity function_5be18f96();
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x4
// Checksum 0x37e228b3, Offset: 0x3c20
// Size: 0x2c4
function private function_894d3d57(entity) {
    if (!isdefined(entity)) {
        return;
    }
    if (!isdefined(entity.damage_info) || !isdefined(entity.damage_info.hitloc)) {
        return;
    }
    var_34cc44de = "right";
    hand = "right_hand";
    if (entity.damage_info.hitloc == "left_arm_lower") {
        var_34cc44de = "left";
        hand = "left_hand";
    }
    entity destructserverutils::handledamage(entity.damage_info.inflictor, entity.damage_info.attacker, entity.damage_info.damage, entity.damage_info.idflags, entity.damage_info.meansofdeath, entity.damage_info.weapon, entity.damage_info.var_fd90b0bb, entity.damage_info.point, entity.damage_info.dir, entity.damage_info.hitloc, entity.damage_info.offsettime, entity.damage_info.boneindex, entity.damage_info.modelindex);
    if (entity.var_ba481973 && entity.var_34cc44de == var_34cc44de) {
        if (isdefined(entity.axe_model)) {
            entity notify(#"arm_destroyed");
            entity.axe_model delete();
        }
        return;
    }
    entity destructserverutils::handledamage(entity.damage_info.inflictor, entity.damage_info.attacker, entity.damage_info.damage, entity.damage_info.idflags, entity.damage_info.meansofdeath, entity.damage_info.weapon, entity.damage_info.var_fd90b0bb, entity.damage_info.point, entity.damage_info.dir, hand, entity.damage_info.offsettime, entity.damage_info.boneindex, entity.damage_info.modelindex);
}

// Namespace namespace_146875e/namespace_146875e
// Params 0, eflags: 0x2 linked
// Checksum 0xe3c4eccc, Offset: 0x3ef0
// Size: 0x14a
function function_adb41cc7() {
    max = level.doa.world_state == 0 ? 10 : 20;
    function_1eaaceab(level.doa.var_48af1fc9);
    total = level.doa.var_48af1fc9.size;
    foreach (item in level.doa.var_dcbded2) {
        type = [[ item.spawndef ]]->gettype();
        if (type == 6 || type == 7) {
            total += item.count;
        }
    }
    return total <= max;
}

// Namespace namespace_146875e/namespace_146875e
// Params 0, eflags: 0x2 linked
// Checksum 0x13829d4a, Offset: 0x4048
// Size: 0x4ac
function function_5af2c5ef() {
    if (!isdefined(level.doa.var_48af1fc9)) {
        level.doa.var_48af1fc9 = [];
    } else if (!isarray(level.doa.var_48af1fc9)) {
        level.doa.var_48af1fc9 = array(level.doa.var_48af1fc9);
    }
    level.doa.var_48af1fc9[level.doa.var_48af1fc9.size] = self;
    self namespace_250e9486::function_25b2c8a9();
    self.maxhealth = self.health + 13000;
    if (isdefined(level.doa.var_a77e6349)) {
        self.maxhealth += 10000;
    }
    self.meleedistsq = 1764 * 2;
    self.health = self.maxhealth;
    self.var_f979e699 = 250;
    self.no_gib = 1;
    self.var_e66cd6fb = 1;
    self.goalradius = 60;
    self.var_9a9a0311 = [];
    self.var_f46fbf3f = 1;
    self.closest_player_override = &namespace_7f5aeb59::function_7781556b;
    self.doa.var_74e4ded8 = 1;
    self setblackboardattribute("_locomotion_speed", "locomotion_speed_walk");
    self.zombie_move_speed = "walk";
    self collidewithactors(1);
    if (self.var_9fde8624 == #"gladiator_destroyer") {
        self.var_3a001247 = 1;
        self function_f6a04c04();
        self thread namespace_9fc66ac::function_ba33d23d(#"hash_6be5064b066a7b98", #"hash_6be5064b066a7b98", #"hash_33fa791e022eebca");
        self namespace_e32bb68::function_3a59ec34("zmb_ai_gladiator_spawn_des");
        self.org = namespace_ec06fe4a::spawnmodel(self.origin, "tag_origin", (0, 0, 0), "gladiator org");
        if (isdefined(self.org)) {
            self.org thread namespace_ec06fe4a::function_d55f042c(self, "death");
        }
    } else if (self.var_9fde8624 == #"gladiator_marauder") {
        self function_2617ff14();
        self.next_leap_time = gettime() + 3000;
        self thread namespace_9fc66ac::function_ba33d23d(#"hash_777f818e6f3092bc", #"hash_777f818e6f3092bc", #"hash_2abe1fa45408f3b6");
        self namespace_e32bb68::function_3a59ec34("zmb_ai_gladiator_spawn_mar");
    }
    namespace_81245006::initweakpoints(self);
    self function_104b8cc1();
    self.var_844453ff = gettime() + 3000;
    self.has_left_arm = 1;
    self.has_right_arm = 1;
    self.var_ba481973 = 0;
    self.var_8c28b842 = 1;
    self.var_7672fb41 = 1;
    self.ignorepathenemyfightdist = 1;
    self.allowdeath = 1;
    self thread zombie_eye_glow::function_b43f92cd();
    aiutility::addaioverridedamagecallback(self, &function_75f32da6);
    self callback::function_d8abfc3d(#"on_ai_killed", &function_3b8907b9);
    target_set(self);
}

// Namespace namespace_146875e/namespace_146875e
// Params 13, eflags: 0x6 linked
// Checksum 0xed1ec2ca, Offset: 0x4500
// Size: 0xa5c
function private function_75f32da6(inflictor, attacker, damage, idflags, meansofdeath, weapon, var_fd90b0bb, point, dir, hitloc, offsettime, boneindex, modelindex) {
    if (isdefined(attacker) && attacker.team === self.team) {
        return 0;
    }
    if (damage == 0) {
        return 0;
    }
    if (is_true(self.var_6dc6e670) || meansofdeath === #"mod_unknown" || meansofdeath === #"mod_crush") {
        return (self.health + 187);
    }
    if (isdefined(attacker) && self.var_9fde8624 == #"gladiator_marauder" && !isdefined(self.var_4f1b8d2b)) {
        if (issentient(attacker)) {
            self.favoriteenemy = attacker;
            self.var_4f1b8d2b = 1;
            self.var_cb89528d = 1;
        }
    }
    var_786d7e06 = namespace_250e9486::function_422fdfd4(self, attacker, weapon, boneindex, hitloc, point);
    var_dd54fdb1 = var_786d7e06.var_84ed9a13;
    var_88e794fb = var_786d7e06.registerzombie_bgb_used_reinforce;
    if (!isdefined(var_dd54fdb1)) {
        weakpoints = namespace_81245006::function_fab3ee3e(self);
        if (isdefined(weakpoints)) {
            foreach (pointinfo in weakpoints) {
                if (namespace_81245006::function_f29756fe(pointinfo) === 1 && pointinfo.type === #"armor") {
                    var_dd54fdb1 = pointinfo;
                    var_88e794fb = 1;
                    break;
                }
            }
        }
    }
    adjusted_damage = int(damage * var_786d7e06.damage_scale);
    if (isdefined(var_dd54fdb1)) {
        if (isdefined(var_dd54fdb1.var_8223b0cf) && var_dd54fdb1.var_8223b0cf > 0) {
            adjusted_damage = damage * var_786d7e06.damage_scale * var_dd54fdb1.var_8223b0cf;
        }
        adjusted_damage = int(adjusted_damage);
        if (var_88e794fb) {
            namespace_81245006::function_ef87b7e8(var_dd54fdb1, adjusted_damage);
            if (namespace_81245006::function_f29756fe(var_dd54fdb1) === 3) {
                var_a7d0fdac = 0;
                if (var_dd54fdb1.hitlocs[0] == "left_arm_lower" || var_dd54fdb1.hitlocs[0] == "right_arm_lower") {
                    var_a7d0fdac = 1;
                    self.damage_info = {#inflictor:inflictor, #attacker:attacker, #damage:damage, #idflags:idflags, #meansofdeath:meansofdeath, #weapon:weapon, #var_fd90b0bb:var_fd90b0bb, #point:point, #dir:dir, #hitloc:var_dd54fdb1.hitlocs[0], #offsettime:offsettime, #boneindex:boneindex, #modelindex:modelindex};
                }
                self destructserverutils::handledamage(inflictor, attacker, damage, idflags, meansofdeath, weapon, var_fd90b0bb, point, dir, var_dd54fdb1.hitlocs[0], offsettime, boneindex, modelindex);
                self.gibbed = 1;
                if (isdefined(level.var_36fff581) && !var_a7d0fdac) {
                    self [[ level.var_36fff581 ]](attacker);
                    if (namespace_ec06fe4a::function_a8975c67()) {
                        if (function_3238d10d(self.origin)) {
                            playsoundatposition(#"hash_10711c56d7aa52d5", self.origin + (0, 0, 30));
                        }
                    }
                }
                if (var_dd54fdb1.hitlocs[0] == "helmet") {
                    var_465efe42 = namespace_81245006::function_37e3f011(self, "j_head", 2);
                    namespace_81245006::function_6c64ebd3(var_465efe42, 1);
                    self.var_9b959f19 = 1;
                    self setblackboardattribute("_gladiator_weakpoint", "head");
                } else if (var_dd54fdb1.hitlocs[0] == "left_arm_upper") {
                    var_449bfcd3 = namespace_81245006::function_37e3f011(self, "j_shoulder_le");
                } else if (var_dd54fdb1.hitlocs[0] == "right_arm_upper") {
                    var_449bfcd3 = namespace_81245006::function_37e3f011(self, "j_shoulder_ri");
                } else if (var_dd54fdb1.hitlocs[0] == "left_arm_lower") {
                    self.has_left_arm = 0;
                    if (!gibserverutils::isgibbed(self, 32)) {
                        gibserverutils::gibleftarm(self, 0);
                    }
                    if (!self.has_right_arm) {
                        self thread namespace_ec06fe4a::function_570729f0(0.1, attacker, meansofdeath, weapon);
                    } else {
                        self ai::set_behavior_attribute("run", 1);
                        self setblackboardattribute("_gladiator_arm", "right_arm");
                    }
                    if (!self isattached(#"c_t8_zmb_dlc0_zombie_destroyer_larm1_dam")) {
                        self attach(#"c_t8_zmb_dlc0_zombie_destroyer_larm1_dam");
                    }
                    self.var_9b959f19 = 1;
                    self clientfield::set("gladiator_arm_effect", 1);
                    self setblackboardattribute("_gladiator_weakpoint", "left_arm");
                    self ai::set_behavior_attribute("run", 1);
                } else if (var_dd54fdb1.hitlocs[0] == "right_arm_lower") {
                    self.has_right_arm = 0;
                    if (!gibserverutils::isgibbed(self, 16)) {
                        gibserverutils::gibrightarm(self, 0);
                    }
                    if (!self.has_left_arm) {
                        self thread namespace_ec06fe4a::function_570729f0(0.1, attacker, meansofdeath, weapon);
                    } else {
                        self setblackboardattribute("_gladiator_arm", "left_arm");
                    }
                    if (!self isattached(#"c_t8_zmb_dlc0_zombie_destroyer_rarm1_dam")) {
                        self attach(#"c_t8_zmb_dlc0_zombie_destroyer_rarm1_dam");
                    }
                    self.var_9b959f19 = 1;
                    self clientfield::set("gladiator_arm_effect", 2);
                    self setblackboardattribute("_gladiator_weakpoint", "right_arm");
                    self ai::set_behavior_attribute("run", 1);
                }
                if (isdefined(var_449bfcd3)) {
                    namespace_81245006::function_6c64ebd3(var_449bfcd3, 1);
                }
                if (is_true(var_dd54fdb1.var_641ce20e)) {
                    namespace_81245006::function_6742b846(self, var_dd54fdb1);
                }
            }
            if (adjusted_damage >= self.maxhealth) {
                return adjusted_damage;
            }
            if (var_dd54fdb1.type === #"armor") {
                if (isdefined(attacker)) {
                    attacker util::show_hit_marker(!isalive(self));
                }
                return 0;
            }
        }
    }
    return adjusted_damage;
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x9f1aac7f, Offset: 0x4f68
// Size: 0x368
function private function_3b8907b9(s_params) {
    if (self.archetype != #"gladiator") {
        return;
    }
    arrayremovevalue(level.doa.var_48af1fc9, self);
    self val::set(#"gladiator_death", "takedamage", 0);
    if (isdefined(self.var_9a9a0311[#"tag_weapon_left"])) {
        self.var_9a9a0311[#"tag_weapon_left"] delete();
    }
    if (isdefined(self.var_9a9a0311[#"tag_weapon_right"])) {
        self.var_9a9a0311[#"tag_weapon_right"] delete();
    }
    impulse = anglestoforward(self.angles) + (0, 0, 5);
    impulse = vectorscale(impulse, 3);
    self function_5be18f96(0);
    if (self isattached("c_t8_zmb_dlc0_zombie_destroyer_axe1", "tag_weapon_left")) {
        var_ae295f0 = self gettagorigin("tag_weapon_left");
        var_5ad95b22 = self gettagangles("tag_weapon_left");
        var_2f69def6 = namespace_ec06fe4a::spawnmodel(var_ae295f0, "c_t8_zmb_dlc0_zombie_destroyer_axe1");
        if (isdefined(var_2f69def6)) {
            var_2f69def6 thread namespace_ec06fe4a::function_52afe5df(8);
            var_2f69def6.angles = var_5ad95b22;
            var_2f69def6 physicslaunch(self.origin, impulse);
        }
    }
    if (self isattached("c_t8_zmb_dlc0_zombie_destroyer_axe1", "tag_weapon_right")) {
        var_9d073a3b = self gettagorigin("tag_weapon_right");
        var_9219c99e = self gettagangles("tag_weapon_right");
        var_53e8a7f3 = namespace_ec06fe4a::spawnmodel(var_9d073a3b, "c_t8_zmb_dlc0_zombie_destroyer_axe1");
        if (isdefined(var_53e8a7f3)) {
            var_53e8a7f3 thread namespace_ec06fe4a::function_52afe5df(8);
            var_53e8a7f3.angles = var_9219c99e;
            var_53e8a7f3 physicslaunch(self.origin, impulse);
        }
    }
    if (!isplayer(s_params.eattacker)) {
        return;
    }
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0x15ca5453, Offset: 0x52d8
// Size: 0x13c
function private function_33247080(owner) {
    self endon(#"death");
    owner waittill(#"death");
    impulse = anglestoforward(self.angles) + (0, 0, 1);
    impulse = vectorscale(impulse, 3);
    self namespace_83eb6304::turnofffx("axe_trail");
    self namespace_83eb6304::turnofffx("red_shield");
    var_2f69def6 = namespace_ec06fe4a::spawnmodel(self.origin, "c_t8_zmb_dlc0_zombie_destroyer_axe1", self.angles, "gladiator axe");
    if (isdefined(var_2f69def6)) {
        var_2f69def6 thread namespace_ec06fe4a::function_52afe5df(12);
        var_2f69def6 physicslaunch(var_2f69def6.origin, impulse);
    }
    self delete();
}

// Namespace namespace_146875e/namespace_146875e
// Params 2, eflags: 0x6 linked
// Checksum 0xe0043572, Offset: 0x5420
// Size: 0x324
function private function_fbc2806e(var_a4388d06, spin_dir) {
    self endon(#"death", #"arm_destroyed");
    var_23f0c5b3 = self gettagorigin(var_a4388d06);
    var_ecc54f32 = self gettagangles(var_a4388d06);
    invert = 1;
    if (isdefined(spin_dir)) {
        invert *= spin_dir;
    }
    var_ecc54f32 = (0, self.angles[1], 0);
    axe = namespace_ec06fe4a::spawnmodel(var_23f0c5b3, "tag_origin");
    if (!isdefined(axe)) {
        return;
    }
    axe thread function_33247080(self);
    axe.angles = var_ecc54f32;
    self.var_9a9a0311[var_a4388d06] = axe;
    axe namespace_83eb6304::function_3ecfde67("axe_trail");
    axe namespace_83eb6304::function_3ecfde67("red_shield");
    axe namespace_e32bb68::function_3a59ec34("zmb_ai_gladiator_axe_lp");
    enemy = self.favoriteenemy;
    if (isdefined(enemy) && enemy.birthtime == gettime()) {
        return;
    }
    var_6a774ef = self.favoriteenemy geteye();
    dist_to_target = distance(var_23f0c5b3, var_6a774ef);
    var_bb95ea0c = 250;
    interval_dist = var_bb95ea0c * 0.1;
    time_to_target = dist_to_target / var_bb95ea0c;
    total_dist = 0;
    max_dist = 450;
    var_7900b267 = vectornormalize(var_6a774ef - var_23f0c5b3);
    var_285f5e05 = vectortoangles(var_7900b267);
    while (true) {
        move_pos = axe.origin + var_7900b267 * interval_dist;
        if (self function_88d65504(axe, var_7900b267, move_pos)) {
            break;
        }
        axe moveto(move_pos, 0.1);
        wait(0.1);
        total_dist += interval_dist;
        if (total_dist >= max_dist) {
            break;
        }
    }
    self function_137ed431(axe, var_a4388d06, spin_dir);
}

// Namespace namespace_146875e/namespace_146875e
// Params 3, eflags: 0x6 linked
// Checksum 0x98e164b4, Offset: 0x5750
// Size: 0x226
function private function_88d65504(axe, *var_7900b267, move_pos) {
    trace = physicstrace(var_7900b267.origin, move_pos, (-16, -16, -12), (16, 16, 12), self);
    if (trace[#"fraction"] < 1) {
        hit_ent = trace[#"entity"];
        level notify(#"hash_435816ec8f13c19b", {#var_f1445bd6:trace, #ai_gladiator:self, #mdl_axe:var_7900b267, #hit_ent:hit_ent});
        if (isdefined(hit_ent)) {
            if (isplayer(hit_ent)) {
                if (is_true(hit_ent.hasriotshield)) {
                    if (is_true(hit_ent.hasriotshieldequipped)) {
                        if (hit_ent namespace_ec06fe4a::is_facing(var_7900b267, 0.2)) {
                            return true;
                        }
                    } else if (!isdefined(hit_ent.riotshieldentity)) {
                        if (!hit_ent namespace_ec06fe4a::is_facing(var_7900b267, -0.2)) {
                            return true;
                        }
                    }
                }
                hit_ent dodamage(50, var_7900b267.origin, self, self);
                if (namespace_ec06fe4a::function_a8975c67()) {
                    hit_ent playsoundtoplayer(#"evt_player_swiped", hit_ent);
                }
                return true;
            }
        } else {
            return true;
        }
    }
    return false;
}

// Namespace namespace_146875e/namespace_146875e
// Params 3, eflags: 0x6 linked
// Checksum 0xc2a07715, Offset: 0x5980
// Size: 0xd2
function private function_c3712093(axe, var_a4388d06, var_bb95ea0c) {
    self endon(#"death");
    axe endon(#"death");
    while (true) {
        tag_pos = self gettagorigin(var_a4388d06);
        dist = distance(axe.origin, tag_pos);
        time = dist / var_bb95ea0c;
        if (time < 0.7) {
            break;
        }
        waitframe(1);
    }
    self.var_d5e9528 = 1;
}

// Namespace namespace_146875e/namespace_146875e
// Params 3, eflags: 0x6 linked
// Checksum 0x4b63faec, Offset: 0x5a60
// Size: 0x2ee
function private function_137ed431(axe, var_a4388d06, *spin_dir) {
    tag_pos = self gettagorigin(spin_dir);
    tag_ang = self gettagangles(spin_dir);
    var_bf72b943 = distance(var_a4388d06.origin, tag_pos);
    var_bb95ea0c = 500;
    interval_dist = var_bb95ea0c * 0.1;
    var_6cdcefc1 = interval_dist * interval_dist;
    total_dist = 0;
    max_dist = 450;
    var_7900b267 = vectornormalize(tag_pos - var_a4388d06.origin);
    new_yaw = absangleclamp360(var_a4388d06.angles[1] + 180);
    var_a4388d06.angles = (0, new_yaw, 0);
    self thread function_c3712093(var_a4388d06, spin_dir, var_bb95ea0c);
    while (true) {
        tag_pos = self gettagorigin(spin_dir);
        var_7900b267 = vectornormalize(tag_pos - var_a4388d06.origin);
        move_pos = var_a4388d06.origin + var_7900b267 * interval_dist;
        self function_88d65504(var_a4388d06, var_7900b267, move_pos);
        var_a4388d06 moveto(move_pos, 0.1);
        wait(0.1);
        var_8abea022 = distancesquared(var_a4388d06.origin, tag_pos);
        if (var_8abea022 < var_6cdcefc1) {
            break;
        }
    }
    var_a4388d06 namespace_83eb6304::turnofffx("axe_trail");
    var_a4388d06 namespace_83eb6304::turnofffx("red_shield");
    var_a4388d06 namespace_e32bb68::function_ae271c0b("zmb_ai_gladiator_axe_lp");
    self.var_9a9a0311[spin_dir] = undefined;
    var_a4388d06 delete();
    self function_5be18f96();
    self.var_ba481973 = 0;
}

// Namespace namespace_146875e/namespace_146875e
// Params 0, eflags: 0x2 linked
// Checksum 0x1c6aac05, Offset: 0x5d58
// Size: 0x136
function function_f6a04c04() {
    self attach("c_t8_zmb_dlc0_zombie_destroyer_le_arm1", "j_shoulder_le");
    self attach("c_t8_zmb_dlc0_zombie_destroyer_ri_arm1", "j_clavicle_ri");
    self attach("c_t8_zmb_dlc0_zombie_destroyer_helmet1", "j_head");
    self attach("c_t8_zmb_dlc0_zombie_destroyer_le_pauldron1", "tag_pauldron_le");
    self attach("c_t8_zmb_dlc0_zombie_destroyer_ri_pauldron1", "tag_pauldron_ri");
    self attach("c_t8_zmb_dlc0_zombie_destroyer_axe1", "tag_weapon_right");
    self attach("c_t8_zmb_dlc0_zombie_destroyer_axe1", "tag_weapon_left");
    self.var_88d88318 = 1;
    self.var_fe593357 = 1;
}

// Namespace namespace_146875e/namespace_146875e
// Params 0, eflags: 0x2 linked
// Checksum 0x683ca68e, Offset: 0x5e98
// Size: 0x74
function function_2617ff14() {
    self attach("c_t8_zmb_dlc0_zombie_marauder_helmet1");
    self attach("c_t8_zmb_dlc0_zombie_gladiator_le_cestus1", "tag_weapon_left");
    self attach("c_t8_zmb_dlc0_zombie_gladiator_ri_cestus1", "tag_weapon_right");
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0xd001576b, Offset: 0x5f18
// Size: 0x24e
function private function_5be18f96(display = 1) {
    if (self.var_34cc44de === "left") {
        if (display) {
            self attach("c_t8_zmb_dlc0_zombie_destroyer_axe1", "tag_weapon_left");
            self.var_fe593357 = 1;
        } else if (is_true(self.var_fe593357)) {
            if (self isattached("c_t8_zmb_dlc0_zombie_destroyer_axe1", "tag_weapon_left")) {
                self detach("c_t8_zmb_dlc0_zombie_destroyer_axe1", "tag_weapon_left");
            }
            self.var_fe593357 = 0;
        }
        return;
    }
    if (display) {
        if (self.has_left_arm && is_true(self.var_fe593357)) {
            if (self isattached("c_t8_zmb_dlc0_zombie_destroyer_axe1", "tag_weapon_left")) {
                self detach("c_t8_zmb_dlc0_zombie_destroyer_axe1", "tag_weapon_left");
            }
            self.var_fe593357 = 0;
        }
        self attach("c_t8_zmb_dlc0_zombie_destroyer_axe1", "tag_weapon_right");
        self.var_88d88318 = 1;
        if (self.has_left_arm) {
            self attach("c_t8_zmb_dlc0_zombie_destroyer_axe1", "tag_weapon_left");
            self.var_fe593357 = 1;
        }
        return;
    }
    if (is_true(self.var_88d88318)) {
        if (self isattached("c_t8_zmb_dlc0_zombie_destroyer_axe1", "tag_weapon_right")) {
            self detach("c_t8_zmb_dlc0_zombie_destroyer_axe1", "tag_weapon_right");
        }
        self.var_88d88318 = 0;
    }
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x6 linked
// Checksum 0xda8dc396, Offset: 0x6170
// Size: 0xdc
function private function_8a8841b0(var_49e4e4be) {
    if (self.health <= 0) {
        return;
    }
    self namespace_e32bb68::function_3a59ec34("zmb_ai_gladiator_axe_throw");
    if (isdefined(self.org)) {
        self.org.origin = var_49e4e4be;
        self.org thread function_f7d9bc34();
    }
    self.var_ba481973 = 1;
    if (self.var_34cc44de === "left") {
        self thread function_fbc2806e("tag_weapon_left", -1);
        return;
    }
    self thread function_fbc2806e("tag_weapon_right");
}

// Namespace namespace_146875e/namespace_146875e
// Params 1, eflags: 0x0
// Checksum 0xf97f9ba5, Offset: 0x6258
// Size: 0x1c
function function_36fff581(func) {
    level.var_36fff581 = func;
}

// Namespace namespace_146875e/namespace_146875e
// Params 0, eflags: 0x0
// Checksum 0x385c2c34, Offset: 0x6280
// Size: 0x8e
function function_dfcfc03b() {
    if (isdefined(self.favoriteenemy)) {
        predictedpos = self lastknownpos(self.favoriteenemy);
        if (isdefined(predictedpos)) {
            turnyaw = absangleclamp360(self.angles[1] - vectortoangles(predictedpos - self.origin)[1]);
            return turnyaw;
        }
    }
    return undefined;
}

