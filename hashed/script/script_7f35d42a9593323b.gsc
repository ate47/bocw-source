// Atian COD Tools GSC CW decompiler test
#using script_ed50e9299d3e143;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\weapons\mechz_firebomb.gsc;
#using scripts\weapons\weaponobjects.gsc;
#using scripts\core_common\ai\archetype_mocomps_utility.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\ai\systems\debug.gsc;
#using scripts\core_common\ai\systems\destructible_character.gsc;
#using script_2c5daa95f8fec03c;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using script_3819e7a1427df6d2;
#using scripts\core_common\ai\systems\animation_state_machine_mocomp.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_notetracks.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\burnplayer.gsc;
#using scripts\core_common\visionset_mgr_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\aat_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_3444cb7b;

// Namespace namespace_3444cb7b/mechz
// Params 0, eflags: 0x5
// Checksum 0x4d20460a, Offset: 0x950
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"mechz", &init, undefined, &function_5700f119, undefined);
}

// Namespace namespace_3444cb7b/mechz
// Params 0, eflags: 0x0
// Checksum 0x53f46ab3, Offset: 0x9a0
// Size: 0x27c
function init() {
    function_eebf86a4();
    spawner::add_archetype_spawn_function(#"mechz", &function_b19391ae);
    spawner::add_archetype_spawn_function(#"mechz", &namespace_8681f0e2::function_3b8b6e80);
    spawner::function_89a2cd87(#"mechz", &namespace_8681f0e2::function_5d873f78);
    clientfield::register("actor", "mechz_ft", 1, 1, "int");
    clientfield::register("actor", "mechz_faceplate_detached", 1, 1, "int");
    clientfield::register("actor", "mechz_powercap_detached", 1, 1, "int");
    clientfield::register("actor", "mechz_claw_detached", 1, 1, "int");
    clientfield::register("actor", "mechz_115_gun_firing", 1, 1, "int");
    clientfield::register("actor", "mechz_headlamp_off", 1, 2, "int");
    clientfield::register("actor", "mechz_long_jump", 1, 1, "counter");
    clientfield::register("actor", "mechz_jetpack_explosion", 1, 1, "int");
    clientfield::register("actor", "mechz_face", 1, 3, "int");
    level.var_92e56a0f[#"mechz"] = &namespace_8681f0e2::function_669e8e27;
}

// Namespace namespace_3444cb7b/mechz
// Params 0, eflags: 0x0
// Checksum 0xc824d46a, Offset: 0xc28
// Size: 0xe4
function function_5700f119() {
    level thread aat::register_immunity("ammomod_brainrot", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_cryofreeze", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_deadwire", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_napalmburst", #"mechz", 1, 1, 1);
}

// Namespace namespace_3444cb7b/mechz
// Params 0, eflags: 0x4
// Checksum 0x6d31a3e7, Offset: 0xd18
// Size: 0x100c
function private function_eebf86a4() {
    /#
        assert(isscriptfunctionptr(&function_d38b475f));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzTargetService", &function_d38b475f);
    /#
        assert(isscriptfunctionptr(&function_d177be75));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzGrenadeService", &function_d177be75);
    /#
        assert(isscriptfunctionptr(&function_1c9301d6));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzBerserkKnockdownService", &function_1c9301d6);
    /#
        assert(isscriptfunctionptr(&function_2a1d23a3));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldMelee", &function_2a1d23a3);
    /#
        assert(isscriptfunctionptr(&function_95c51ad6));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldShowPain", &function_95c51ad6);
    /#
        assert(isscriptfunctionptr(&function_843546a7));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldShowJetpackPain", &function_843546a7);
    /#
        assert(isscriptfunctionptr(&function_3b7595ba));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal("mechzEnemyInAim", &function_3b7595ba);
    /#
        assert(isscriptfunctionptr(&function_15b0a251));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal("mechzEnemyNotInAim", &function_15b0a251);
    /#
        assert(isscriptfunctionptr(&function_6aa1f869));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldShootGrenade", &function_6aa1f869);
    /#
        assert(isscriptfunctionptr(&function_45f4e87d));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldShootFlame", &function_45f4e87d);
    /#
        assert(isscriptfunctionptr(&function_c929b50f));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldShootFlameSweep", &function_c929b50f);
    /#
        assert(isscriptfunctionptr(&function_55d53cbb));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldTurnBerserk", &function_55d53cbb);
    /#
        assert(isscriptfunctionptr(&function_70d2a97f));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldStumble", &function_70d2a97f);
    /#
        assert(isscriptfunctionptr(&function_77bd7d26));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzIsInSafeZone", &function_77bd7d26);
    /#
        assert(isscriptfunctionptr(&function_bb90106e));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldTurnInPlaceBeforeIdle", &function_bb90106e);
    /#
        assert(!isdefined(&function_db525b31) || isscriptfunctionptr(&function_db525b31));
    #/
    /#
        assert(!isdefined(&function_c21030e3) || isscriptfunctionptr(&function_c21030e3));
    #/
    /#
        assert(!isdefined(&function_c13b8a0c) || isscriptfunctionptr(&function_c13b8a0c));
    #/
    behaviortreenetworkutility::registerbehaviortreeaction("mechzStumbleLoop", &function_db525b31, &function_c21030e3, &function_c13b8a0c);
    /#
        assert(!isdefined(&function_5a7ad15e) || isscriptfunctionptr(&function_5a7ad15e));
    #/
    /#
        assert(!isdefined(&function_a3c24f6a) || isscriptfunctionptr(&function_a3c24f6a));
    #/
    /#
        assert(!isdefined(&function_d58e0db5) || isscriptfunctionptr(&function_d58e0db5));
    #/
    behaviortreenetworkutility::registerbehaviortreeaction("mechzShootFlameAction", &function_5a7ad15e, &function_a3c24f6a, &function_d58e0db5);
    /#
        assert(isscriptfunctionptr(&function_d40c590a));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzPrepToShootGrenadeStart", &function_d40c590a);
    /#
        assert(isscriptfunctionptr(&function_d40c590a));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal("mechzPrepToShootGrenadeStart", &function_d40c590a);
    /#
        assert(isscriptfunctionptr(&function_f5ffcbb4));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzPrepToShootGrenadesTerminate", &function_f5ffcbb4);
    /#
        assert(isscriptfunctionptr(&function_f5ffcbb4));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal("mechzPrepToShootGrenadesTerminate", &function_f5ffcbb4);
    /#
        assert(isscriptfunctionptr(&function_61dd507d));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShootGrenadeStart", &function_61dd507d);
    /#
        assert(isscriptfunctionptr(&function_61dd507d));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal("mechzShootGrenadeStart", &function_61dd507d);
    /#
        assert(isscriptfunctionptr(&function_e8c59ca8));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShootGrenadeTerminate", &function_e8c59ca8);
    /#
        assert(isscriptfunctionptr(&function_e8c59ca8));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal("mechzShootGrenadeTerminate", &function_e8c59ca8);
    /#
        assert(isscriptfunctionptr(&function_fc05dfd3));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal("mechzSetSpeedWalk", &function_fc05dfd3);
    /#
        assert(isscriptfunctionptr(&function_1a37c206));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzSetSpeedRun", &function_1a37c206);
    /#
        assert(isscriptfunctionptr(&function_4b2bb1e));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShootFlame", &function_4b2bb1e);
    /#
        assert(isscriptfunctionptr(&function_3c48fa1b));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzUpdateFlame", &function_3c48fa1b);
    /#
        assert(isscriptfunctionptr(&function_a7ee39a8));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzStopFlame", &function_a7ee39a8);
    /#
        assert(isscriptfunctionptr(&function_2f8660f6));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzPlayedBerserkIntro", &function_2f8660f6);
    /#
        assert(isscriptfunctionptr(&function_9bcfb4ed));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzAttackStart", &function_9bcfb4ed);
    /#
        assert(isscriptfunctionptr(&function_951a1b56));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzDeathStart", &function_951a1b56);
    /#
        assert(isscriptfunctionptr(&function_19e0a4ed));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzIdleStart", &function_19e0a4ed);
    /#
        assert(isscriptfunctionptr(&function_5977aa05));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzPainStart", &function_5977aa05);
    /#
        assert(isscriptfunctionptr(&function_4f625150));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzPainTerminate", &function_4f625150);
    /#
        assert(isscriptfunctionptr(&function_2726bc43));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzJetpackPainTerminate", &function_2726bc43);
    animationstatenetwork::registernotetrackhandlerfunction("melee_soldat", &function_d9de8431);
    animationstatenetwork::registernotetrackhandlerfunction("fire_chaingun", &function_e26728bc);
    animationstatenetwork::registernotetrackhandlerfunction("jump_shake", &function_4e89924a);
}

// Namespace namespace_3444cb7b/mechz
// Params 0, eflags: 0x4
// Checksum 0x4d159ae8, Offset: 0x1d30
// Size: 0x32
function private function_b19391ae() {
    blackboard::createblackboardforentity(self);
    self.___archetypeonanimscriptedcallback = &function_dd01e0e4;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0xaf8f9c51, Offset: 0x1d70
// Size: 0x2c
function private function_dd01e0e4(entity) {
    entity.__blackboard = undefined;
    entity function_b19391ae();
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0xd238f8df, Offset: 0x1da8
// Size: 0x44
function private function_d9de8431(entity) {
    if (isdefined(entity.var_9d23af0d)) {
        entity thread [[ entity.var_9d23af0d ]]();
    }
    entity melee();
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x6f06ae69, Offset: 0x1df8
// Size: 0x28c
function private function_e26728bc(entity) {
    if (!isdefined(entity.enemy)) {
        return;
    }
    var_3e3a3402 = entity.enemy.origin;
    v_velocity = entity.enemy getvelocity();
    var_b6897326 = randomfloatrange(1, 2.5);
    var_3e3a3402 = var_3e3a3402 + v_velocity * var_b6897326;
    var_736d384 = math::randomsign() * randomint(48);
    var_6b1c9b42 = math::randomsign() * randomint(48);
    target_pos = var_3e3a3402 + (var_736d384, var_6b1c9b42, 0);
    dir = vectortoangles(target_pos - entity.origin);
    dir = anglestoforward(dir);
    var_7e2cde6 = dir * 5;
    var_8598bad6 = entity gettagorigin("tag_gun_barrel2") + var_7e2cde6;
    dist = distance(var_8598bad6, target_pos);
    velocity = dir * dist;
    velocity = velocity + vectorscale((0, 0, 1), 120);
    val = 1;
    oldval = entity clientfield::get("mechz_115_gun_firing");
    if (oldval === val) {
        val = 0;
    }
    entity clientfield::set("mechz_115_gun_firing", val);
    entity magicgrenadetype(getweapon("eq_mechz_firebomb"), var_8598bad6, velocity);
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x0
// Checksum 0xb8f45527, Offset: 0x2090
// Size: 0x2c
function function_4e89924a(entity) {
    entity clientfield::increment("mechz_long_jump");
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x0
// Checksum 0xa9a344b4, Offset: 0x20c8
// Size: 0x2fc
function function_d38b475f(entity) {
    if (is_true(entity.ignoreall)) {
        return 0;
    }
    if (isdefined(entity.var_11efa4b6)) {
        return 0;
    }
    player = zombie_utility::get_closest_valid_player(self.origin, self.ignore_player);
    entity.favoriteenemy = player;
    if (!isdefined(player) || player isnotarget()) {
        if (isdefined(entity.ignore_player)) {
            if (isdefined(level._should_skip_ignore_player_logic) && [[ level._should_skip_ignore_player_logic ]]()) {
                return;
            }
            entity.ignore_player.entity = [];
        }
        /#
            if (is_true(level.var_19bb726b)) {
                entity setgoal(entity.origin);
                if (isdefined(entity.var_9d92b55a)) {
                    [[ entity.var_9d92b55a ]](entity);
                }
                return 0;
            }
        #/
        if (isdefined(level.no_target_override)) {
            [[ level.no_target_override ]](entity);
        } else {
            entity setgoal(entity.origin);
            if (isdefined(entity.var_9d92b55a)) {
                [[ entity.var_9d92b55a ]](entity);
            }
        }
        return 0;
    } else {
        if (isdefined(level.enemy_location_override_func)) {
            var_2c9acc81 = [[ level.enemy_location_override_func ]](entity, player);
            if (isdefined(var_2c9acc81)) {
                entity setgoal(var_2c9acc81);
                if (isdefined(entity.var_9d92b55a)) {
                    [[ entity.var_9d92b55a ]](entity);
                }
                return 1;
            }
        }
        targetpos = getclosestpointonnavmesh(player.origin, 64, 30);
        if (isdefined(targetpos)) {
            entity setgoal(targetpos);
            if (isdefined(entity.var_9d92b55a)) {
                [[ entity.var_9d92b55a ]](entity);
            }
            return 1;
        } else {
            entity setgoal(entity.origin);
            if (isdefined(entity.var_9d92b55a)) {
                [[ entity.var_9d92b55a ]](entity);
            }
            return 0;
        }
    }
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x65bd2f21, Offset: 0x23d0
// Size: 0xce
function private function_d177be75(entity) {
    if (!isdefined(entity.var_a0e09fde)) {
        entity.var_a0e09fde.entity = 0;
    }
    if (entity.var_a0e09fde >= 1) {
        if (gettime() > entity.var_a8e56aa3) {
            entity.var_a0e09fde.entity = 0;
        }
    }
    if (isdefined(level.var_542ac835)) {
        arrayremovevalue(level.var_542ac835, undefined);
        var_a4615441 = array::filter(level.var_542ac835, 0, &function_424646a8, entity);
        entity.var_856a7b8a.entity = var_a4615441.size;
    } else {
        entity.var_856a7b8a.entity = 0;
    }
}

// Namespace namespace_3444cb7b/mechz
// Params 2, eflags: 0x4
// Checksum 0xae54d17c, Offset: 0x24a8
// Size: 0x30
function private function_424646a8(grenade, mechz) {
    if (grenade.owner === mechz) {
        return 1;
    }
    return 0;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0xd5dd9a53, Offset: 0x24e0
// Size: 0x3ce
function private function_1c9301d6(entity) {
    velocity = entity getvelocity();
    var_b98d779c = 0.3;
    var_6c6317b9 = entity.origin + velocity * var_b98d779c;
    move_dist_sq = distancesquared(var_6c6317b9, entity.origin);
    speed = move_dist_sq / var_b98d779c;
    if (speed >= 10) {
        a_zombies = getentitiesinradius(entity.origin, 48, 15);
        var_eb2cabb5 = array::filter(a_zombies, 0, &function_c01bcef, entity, var_6c6317b9);
        if (var_eb2cabb5.size > 0) {
            foreach (zombie in var_eb2cabb5) {
                zombie.knockdown.zombie = 1;
                zombie.knockdown_type.zombie = "knockdown_shoved";
                var_c255a411 = entity.origin - zombie.origin;
                var_3355d62f = vectornormalize((var_c255a411[0], var_c255a411[1], 0));
                zombie_forward = anglestoforward(zombie.angles);
                zombie_forward_2d = vectornormalize((zombie_forward[0], zombie_forward[1], 0));
                zombie_right = anglestoright(zombie.angles);
                zombie_right_2d = vectornormalize((zombie_right[0], zombie_right[1], 0));
                dot = vectordot(var_3355d62f, zombie_forward_2d);
                if (dot >= 0.5) {
                    zombie.knockdown_direction.zombie = "front";
                    zombie.getup_direction.zombie = "getup_back";
                } else if (dot < 0.5 && dot > -0.5) {
                    dot = vectordot(var_3355d62f, zombie_right_2d);
                    if (dot > 0) {
                        zombie.knockdown_direction.zombie = "right";
                        if (math::cointoss()) {
                            zombie.getup_direction.zombie = "getup_back";
                        } else {
                            zombie.getup_direction.zombie = "getup_belly";
                        }
                    } else {
                        zombie.knockdown_direction.zombie = "left";
                        zombie.getup_direction.zombie = "getup_belly";
                    }
                } else {
                    zombie.knockdown_direction.zombie = "back";
                    zombie.getup_direction.zombie = "getup_belly";
                }
            }
        }
    }
}

// Namespace namespace_3444cb7b/mechz
// Params 3, eflags: 0x4
// Checksum 0xee263f28, Offset: 0x28b8
// Size: 0x178
function private function_c01bcef(zombie, mechz, *var_6c6317b9) {
    if (!isdefined(mechz) || !isdefined(var_6c6317b9)) {
        return 0;
    }
    if (mechz.knockdown === 1) {
        return 0;
    }
    if (mechz.archetype !== #"zombie") {
        return 0;
    }
    if (mechz.var_33fb0350 === 1) {
        return 0;
    }
    origin = var_6c6317b9.origin;
    var_3c08a493 = anglestoforward(var_6c6317b9.angles);
    var_e14511cb = mechz.origin - origin;
    var_660d1fec = (var_e14511cb[0], var_e14511cb[1], 0);
    var_58877074 = (var_3c08a493[0], var_3c08a493[1], 0);
    var_660d1fec = vectornormalize(var_660d1fec);
    var_58877074 = vectornormalize(var_58877074);
    var_704c3d16 = vectordot(var_58877074, var_660d1fec);
    if (var_704c3d16 < 0) {
        return 0;
    }
    return 1;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x0
// Checksum 0xfad5325, Offset: 0x2a38
// Size: 0xca
function function_2a1d23a3(entity) {
    if (!isdefined(entity.enemy)) {
        return 0;
    }
    if (distancesquared(entity.origin, entity.enemy.origin) > 12544) {
        return 0;
    }
    if (is_true(entity.enemy.usingvehicle)) {
        return 1;
    }
    yaw = abs(zombie_utility::getyawtoenemy());
    if (yaw > 45) {
        return 0;
    }
    return 1;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0xdea395d2, Offset: 0x2b10
// Size: 0x28
function private function_95c51ad6(entity) {
    if (entity.var_bc17791c === 1) {
        return 1;
    }
    return 0;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x4cc28058, Offset: 0x2b40
// Size: 0x28
function private function_843546a7(entity) {
    if (entity.var_97601164 === 1) {
        return 1;
    }
    return 0;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0xa716776f, Offset: 0x2b70
// Size: 0x2e
function private function_3b7595ba(entity) {
    if (entity namespace_8681f0e2::function_923942a7()) {
        return 1;
    }
    return 0;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0xe775bf95, Offset: 0x2ba8
// Size: 0x24
function private function_15b0a251(entity) {
    return !function_3b7595ba(entity);
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x0
// Checksum 0xc3c255b, Offset: 0x2bd8
// Size: 0x21e
function function_6aa1f869(entity) {
    if (entity.var_72d96058 === 1) {
        return 0;
    }
    if (entity.var_d03c4664 !== 1) {
        return 0;
    }
    if (is_true(entity.var_10552fac)) {
        return 0;
    }
    if (entity.var_9329a57c > gettime()) {
        return 0;
    }
    if (is_true(self.ignoreall)) {
        return 0;
    }
    if (isdefined(self.var_bfd4c4c4) || isdefined(self.var_6da37a9a)) {
        return 0;
    }
    enemy = zm_ai_utility::function_825317c(entity);
    if (!isdefined(enemy)) {
        return 0;
    }
    if (!isdefined(entity.var_a0e09fde) || entity.var_a0e09fde >= 1) {
        return 0;
    }
    if (entity.var_856a7b8a >= 3) {
        return 0;
    }
    if (!entity cansee(enemy)) {
        var_b51839b1 = 0;
        if (isplayer(enemy) && enemy isinvehicle()) {
            vehicle = enemy getvehicleoccupied();
            var_b51839b1 = entity cansee(vehicle);
        }
        if (!var_b51839b1) {
            return 0;
        }
    }
    dist_sq = distancesquared(entity.origin, enemy.origin);
    if (dist_sq < 62500 || dist_sq > 1440000) {
        return 0;
    }
    if (!function_3b7595ba(self)) {
        return 0;
    }
    return 1;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x0
// Checksum 0x1976176f, Offset: 0x2e00
// Size: 0x2be
function function_45f4e87d(entity) {
    /#
        if (is_true(entity.var_7b41c3ce)) {
            return 1;
        }
    #/
    if (entity.var_72d96058 === 1) {
        return 0;
    }
    if (is_true(entity.var_492622ad) && gettime() < entity.var_b25ccf7) {
        return 1;
    }
    enemy = is_true(entity.var_1fa24724) ? entity.enemy : entity.favoriteenemy;
    if (!isdefined(enemy)) {
        return 0;
    }
    if (entity.var_492622ad === 1 && entity.var_b25ccf7 <= gettime()) {
        return 0;
    }
    if (entity.var_e05f2c0a > gettime() || entity.var_9329a57c > gettime()) {
        return 0;
    }
    if (!entity namespace_8681f0e2::function_923942a7(26)) {
        return 0;
    }
    var_52ef606d = !is_true(entity.var_1fa24724) && isdefined(enemy) && abs(entity.origin[2] - enemy.origin[2]) < 60;
    dist_sq = distancesquared(entity.origin, enemy.origin);
    if (var_52ef606d && dist_sq < 9216 || dist_sq > 90000) {
        return 0;
    }
    in_vehicle = isplayer(enemy) && enemy isinvehicle();
    can_see = bullettracepassed(entity.origin + vectorscale((0, 0, 1), 36), enemy.origin + vectorscale((0, 0, 1), 36), 0, undefined);
    if (!can_see && !in_vehicle) {
        entity.var_e05f2c0a.entity = gettime() + 2500;
        return 0;
    }
    return 1;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x2d381b2f, Offset: 0x30c8
// Size: 0xb4
function private function_c929b50f(entity) {
    if (entity.var_72d96058 === 1) {
        return 0;
    }
    if (!function_45f4e87d(entity)) {
        return 0;
    }
    if (randomint(100) > 10) {
        return 0;
    }
    var_39156533 = 0;
    players = getplayers(undefined, entity.origin, 100);
    if (players.size < 2) {
        return 0;
    }
    return 1;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x8237d02c, Offset: 0x3188
// Size: 0xa2
function private function_55d53cbb(entity) {
    if (entity.var_72d96058 === 1 && entity.var_5eca4346 !== 1) {
        return 1;
    }
    if (is_true(entity.var_10552fac) && !is_true(entity.var_72d96058) && !is_true(entity.var_5eca4346)) {
        return 1;
    }
    return 0;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0xf5997b86, Offset: 0x3238
// Size: 0x2e
function private function_70d2a97f(entity) {
    if (is_true(entity.stumble)) {
        return 1;
    }
    return 0;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x0
// Checksum 0xf957fe77, Offset: 0x3270
// Size: 0x80
function function_77bd7d26(entity) {
    if (!isdefined(entity.favoriteenemy)) {
        return 0;
    }
    distsqr = distancesquared(entity.origin, entity.favoriteenemy.origin);
    if (distsqr < 360000 && distsqr > 50625) {
        return 1;
    }
    return 0;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x0
// Checksum 0xf4947d08, Offset: 0x32f8
// Size: 0x76
function function_bb90106e(entity) {
    enemy = is_true(entity.var_1fa24724) ? entity.enemy : entity.favoriteenemy;
    if (!isdefined(enemy)) {
        return 0;
    }
    if (entity namespace_8681f0e2::function_923942a7(26)) {
        return 0;
    }
    return 1;
}

// Namespace namespace_3444cb7b/mechz
// Params 2, eflags: 0x4
// Checksum 0x9e4c88be, Offset: 0x3378
// Size: 0x42
function private function_cc7ec28(entity, asmstatename) {
    animationstatenetworkutility::requeststate(entity, asmstatename);
    entity.var_83ce7c8f.entity = gettime() + 3000;
    return 5;
}

// Namespace namespace_3444cb7b/mechz
// Params 2, eflags: 0x4
// Checksum 0xf2db1011, Offset: 0x33c8
// Size: 0x38
function private function_d09ba7f5(entity, *asmstatename) {
    if (!is_true(asmstatename.var_2cf1dc08)) {
        return 4;
    }
    return 5;
}

// Namespace namespace_3444cb7b/mechz
// Params 2, eflags: 0x4
// Checksum 0x37f9ea3a, Offset: 0x3408
// Size: 0x42
function private function_db525b31(entity, asmstatename) {
    animationstatenetworkutility::requeststate(entity, asmstatename);
    entity.var_773b5b9a.entity = gettime() + 500;
    return 5;
}

// Namespace namespace_3444cb7b/mechz
// Params 2, eflags: 0x4
// Checksum 0xb8ed64f3, Offset: 0x3458
// Size: 0x2c
function private function_c21030e3(entity, *asmstatename) {
    if (gettime() > asmstatename.var_773b5b9a) {
        return 4;
    }
    return 5;
}

// Namespace namespace_3444cb7b/mechz
// Params 2, eflags: 0x4
// Checksum 0x750a7cc9, Offset: 0x3490
// Size: 0x32
function private function_c13b8a0c(entity, *asmstatename) {
    asmstatename.stumble.asmstatename = 0;
    asmstatename.var_57fca545.asmstatename = gettime() + 10000;
    return 4;
}

// Namespace namespace_3444cb7b/mechz
// Params 2, eflags: 0x0
// Checksum 0xe0e422a, Offset: 0x34d0
// Size: 0x56
function function_5a7ad15e(entity, asmstatename) {
    animationstatenetworkutility::requeststate(entity, asmstatename);
    function_4b2bb1e(entity);
    entity.blindaim.entity = 1;
    return 5;
}

// Namespace namespace_3444cb7b/mechz
// Params 2, eflags: 0x0
// Checksum 0xa8639e74, Offset: 0x3530
// Size: 0x128
function function_a3c24f6a(entity, *asmstatename) {
    if (is_true(asmstatename.var_72d96058)) {
        function_a7ee39a8(asmstatename);
        return 4;
    }
    var_5e55975f = isdefined(self.var_5e55975f) ? self.var_5e55975f : &function_2a1d23a3;
    if (is_true([[ var_5e55975f ]](asmstatename))) {
        function_a7ee39a8(asmstatename);
        return 4;
    }
    if (is_true(asmstatename.var_492622ad)) {
        if (isdefined(asmstatename.var_b25ccf7) && gettime() > asmstatename.var_b25ccf7) {
            function_a7ee39a8(asmstatename);
            return 4;
        }
        function_3c48fa1b(asmstatename);
    }
    return 5;
}

// Namespace namespace_3444cb7b/mechz
// Params 2, eflags: 0x0
// Checksum 0x1b98a8d7, Offset: 0x3660
// Size: 0x3a
function function_d58e0db5(entity, *asmstatename) {
    function_a7ee39a8(asmstatename);
    asmstatename.blindaim.asmstatename = 0;
    return 4;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x44a08812, Offset: 0x36a8
// Size: 0x1e
function private function_d40c590a(entity) {
    entity.blindaim.entity = 1;
    return 1;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x915cd8b5, Offset: 0x36d0
// Size: 0x1a
function private function_f5ffcbb4(entity) {
    entity.blindaim.entity = 0;
    return 1;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x808eef45, Offset: 0x36f8
// Size: 0x4e
function private function_61dd507d(entity) {
    entity.var_a0e09fde++;
    if (entity.var_a0e09fde >= 1) {
        entity.var_a8e56aa3.entity = gettime() + 6000;
    }
    entity.blindaim.entity = 1;
    return 1;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0xe4120c34, Offset: 0x3750
// Size: 0x86
function private function_e8c59ca8(entity) {
    entity.blindaim.entity = 0;
    entity clearpath();
    entity setgoal(entity.origin);
    if (isdefined(entity.var_9d92b55a)) {
        [[ entity.var_9d92b55a ]](entity);
    }
    entity.var_9329a57c.entity = gettime() + 2000;
    return 1;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x2064424a, Offset: 0x37e0
// Size: 0x34
function private function_fc05dfd3(entity) {
    entity setblackboardattribute("_locomotion_speed", "locomotion_speed_walk");
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x14ac2e5d, Offset: 0x3820
// Size: 0x34
function private function_1a37c206(entity) {
    entity setblackboardattribute("_locomotion_speed", "locomotion_speed_run");
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0xb20db72f, Offset: 0x3860
// Size: 0x24
function private function_4b2bb1e(entity) {
    entity thread function_35c0aac1();
}

// Namespace namespace_3444cb7b/mechz
// Params 0, eflags: 0x4
// Checksum 0x3eec5b7e, Offset: 0x3890
// Size: 0x8a
function private function_35c0aac1() {
    self endon(#"death");
    self notify(#"hash_35afb115cb92d570");
    self endon(#"hash_35afb115cb92d570");
    wait(0.3);
    self clientfield::set("mechz_ft", 1);
    self.var_492622ad = 1;
    self.var_b25ccf7 = gettime() + 2500;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x235cb27b, Offset: 0x3928
// Size: 0x410
function private function_3c48fa1b(entity) {
    if (!isdefined(entity.var_1df3d140)) {
        return;
    }
    if (isdefined(level.var_27748d3)) {
        [[ level.var_27748d3 ]](entity);
    } else {
        players = getplayers();
        foreach (player in players) {
            var_86d02e70 = 0;
            if (player isinvehicle()) {
                vehicle = player getvehicleoccupied();
                var_86d02e70 = is_true(vehicle.var_9a6644f2);
            }
            if (!is_true(player.is_burning) && !is_true(var_86d02e70)) {
                if (player istouching(entity.var_1df3d140)) {
                    if (isdefined(entity.var_13fbc6ec)) {
                        player thread [[ entity.var_13fbc6ec ]]();
                    } else {
                        player thread function_5afe5280(entity);
                    }
                }
            }
        }
        if (!isdefined(entity.var_15978c43)) {
            entity.var_15978c43.entity = [];
        }
        if (!isdefined(entity.var_22dae8df)) {
            entity.var_22dae8df.entity = -1;
        }
        if (entity.var_22dae8df < gettime()) {
            entity.var_22dae8df.entity = gettime() + 500;
            entity.var_15978c43.entity = getentitiesinradius(entity.origin, 300, 12);
        }
        foreach (vehicle in entity.var_15978c43) {
            if (isvehicle(vehicle) && vehicle istouching(entity.var_1df3d140)) {
                vehicle thread function_fd99ea48(entity);
                if (!is_true(vehicle.var_9a6644f2)) {
                    occupants = vehicle getvehoccupants();
                    foreach (occupant in occupants) {
                        if (!is_true(occupant.burning)) {
                            occupant thread function_5afe5280(entity);
                        }
                    }
                }
            }
        }
    }
    if (isdefined(level.var_449f9dce)) {
        [[ level.var_449f9dce ]](entity);
    }
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x0
// Checksum 0xe744df3, Offset: 0x3d40
// Size: 0x11e
function function_5afe5280(mechz) {
    self endon(#"death");
    self endon(#"disconnect");
    if (!is_true(self.is_burning) && zombie_utility::is_player_valid(self, 1)) {
        self.is_burning = 1;
        if (!self hasperk("specialty_armorvest")) {
            self burnplayer::setplayerburning(1.5, 0.5, 30, mechz, undefined, 1);
        } else {
            self burnplayer::setplayerburning(1.5, 0.5, 20, mechz, undefined, 1);
        }
        wait(1.5);
        self.is_burning = 0;
    }
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x0
// Checksum 0xc166a637, Offset: 0x3e68
// Size: 0xe2
function function_fd99ea48(mechz) {
    self endon(#"death");
    self endon(#"disconnect");
    var_4004985c = 0.25;
    if (!is_true(self.is_burning)) {
        self.is_burning = 1;
        percentage = 0;
        while (percentage <= 1) {
            self dodamage(250 * var_4004985c, self.origin, mechz, undefined, undefined, "MOD_BURNED", 0);
            wait(1.5 * var_4004985c);
            percentage = percentage + var_4004985c;
        }
        self.is_burning = 0;
    }
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x0
// Checksum 0xf1c2e2f1, Offset: 0x3f58
// Size: 0x9a
function function_a7ee39a8(entity) {
    self notify(#"hash_35afb115cb92d570");
    entity clientfield::set("mechz_ft", 0);
    entity.var_492622ad.entity = 0;
    var_82d51e42 = randomintrange(2500, 3500);
    entity.var_e05f2c0a.entity = gettime() + var_82d51e42;
    entity.var_9329a57c.entity = gettime() + 2000;
    entity.var_b25ccf7 = undefined;
}

// Namespace namespace_3444cb7b/mechz
// Params 0, eflags: 0x0
// Checksum 0x28e5930f, Offset: 0x4000
// Size: 0x8c
function function_34d763b5() {
    entity = self;
    g_time = gettime();
    entity.var_c109fa4b.entity = g_time + 10000;
    if (entity.var_72d96058 !== 1) {
        entity.var_72d96058.entity = 1;
        entity thread function_9e135033();
        entity setblackboardattribute("_locomotion_speed", "locomotion_speed_sprint");
    }
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x22cfd045, Offset: 0x4098
// Size: 0x1a
function private function_2f8660f6(entity) {
    entity.var_5eca4346.entity = 1;
}

// Namespace namespace_3444cb7b/mechz
// Params 0, eflags: 0x4
// Checksum 0x1b07deb6, Offset: 0x40c0
// Size: 0xc0
function private function_9e135033() {
    self endon(#"death");
    self endon(#"disconnect");
    while (self.var_72d96058 === 1) {
        if (gettime() >= self.var_c109fa4b) {
            self.var_72d96058 = 0;
            self.var_5eca4346 = 0;
            if (!isdefined(self.var_19ec2cc3)) {
                self asmsetanimationrate(1);
            }
            self setblackboardattribute("_locomotion_speed", "locomotion_speed_run");
        }
        wait(0.25);
    }
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x89b51839, Offset: 0x4188
// Size: 0x2c
function private function_9bcfb4ed(entity) {
    entity clientfield::set("mechz_face", 1);
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x26ff23b3, Offset: 0x41c0
// Size: 0x2c
function private function_951a1b56(entity) {
    entity clientfield::set("mechz_face", 2);
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0xdbd45819, Offset: 0x41f8
// Size: 0x2c
function private function_19e0a4ed(entity) {
    entity clientfield::set("mechz_face", 3);
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x19020730, Offset: 0x4230
// Size: 0x2c
function private function_5977aa05(entity) {
    entity clientfield::set("mechz_face", 4);
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x212ff850, Offset: 0x4268
// Size: 0x22
function private function_4f625150(entity) {
    entity.var_bc17791c.entity = 0;
    entity.var_54db22a4 = undefined;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x4
// Checksum 0x1f33716, Offset: 0x4298
// Size: 0x2c
function private function_2726bc43(entity) {
    entity.var_97601164.entity = 0;
    function_4f625150(entity);
}

#namespace namespace_8681f0e2;

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x4
// Checksum 0xee2f6261, Offset: 0x42d0
// Size: 0x31c
function private function_3b8b6e80() {
    self.disableammodrop = 1;
    self.no_gib = 1;
    self.ignore_nuke = 1;
    self.ignore_enemy_count = 1;
    self.var_262a6cba = 1;
    self.var_1c0eb62a = 180;
    self.zombie_move_speed = "run";
    self setblackboardattribute("_locomotion_speed", "locomotion_speed_run");
    self.var_cccb0ad2 = 1;
    self.var_270a22e2 = 3;
    self.var_e05f2c0a = gettime();
    self.var_57fca545 = gettime();
    self.var_9329a57c = gettime();
    self.var_e9c62827 = 1;
    self weaponobjects::createwatcher("eq_mechz_firebomb", &function_d0651b24, 1);
    /#
        self.debug_traversal_ast = "getup_back";
    #/
    self.var_1df3d140 = spawn("trigger_box", self.origin, 0, 700, 50, 25);
    self thread deleteondeath(self.var_1df3d140);
    self.var_1df3d140 enablelinkto();
    self.var_1df3d140.origin = self gettagorigin("tag_flamethrower_fx");
    self.var_1df3d140.angles = self gettagangles("tag_flamethrower_fx");
    self.var_1df3d140 linkto(self, "tag_flamethrower_fx");
    self thread weaponobjects::watchweaponobjectspawn();
    self.pers = [];
    self.pers[#"team"] = self.team;
    self destructserverutils::togglespawngibs(self, 1);
    self.var_28621cf4 = "j_neck";
    self.var_e5365d8a = vectorscale((0, 0, 1), 6);
    aiutility::addaioverridedamagecallback(self, &function_679ee5b3);
    self thread function_fe2419fc();
    self namespace_47c5b560::function_904442b2();
    self.var_6d409ca1 = &function_6d409ca1;
    self callback::function_d8abfc3d(#"hash_69106b41ba3763f7", &function_9d12d0d2);
    level thread zm_spawner::zombie_death_event(self);
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x4
// Checksum 0x9e523dcd, Offset: 0x45f8
// Size: 0x32
function private function_6d409ca1() {
    if (is_true(self.favoriteenemy.ignoreme)) {
        return undefined;
    }
    return self.favoriteenemy;
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x0
// Checksum 0xc44c89ad, Offset: 0x4638
// Size: 0x4e
function function_5d873f78() {
    self function_7202e3df();
    namespace_81245006::initweakpoints(self);
    self.completed_emerging_into_playable_area = 1;
    self.canbetargetedbyturnedzombies = 1;
}

// Namespace namespace_8681f0e2/mechz
// Params 1, eflags: 0x0
// Checksum 0xc75bfcc9, Offset: 0x4690
// Size: 0x24
function function_d0651b24(watcher) {
    mechzfirebomb::function_5545649e(watcher);
}

// Namespace namespace_8681f0e2/mechz
// Params 1, eflags: 0x0
// Checksum 0xfa365456, Offset: 0x46c0
// Size: 0x3c
function deleteondeath(object) {
    self waittill(#"death");
    if (isdefined(object)) {
        object delete();
    }
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x4
// Checksum 0x138c3e9c, Offset: 0x4708
// Size: 0x76
function private function_769e329() {
    self endon(#"death");
    while (1) {
        if (isdefined(self.favoriteenemy)) {
            if (self.var_1df3d140 istouching(self.favoriteenemy)) {
                /#
                    printtoprightln("MOD_EXPLOSIVE");
                #/
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x4
// Checksum 0x1b725e93, Offset: 0x4788
// Size: 0x42
function private function_7202e3df() {
    self.var_7c4488fd = 1;
    self.var_d03c4664 = 1;
    self.var_c646abf1 = 1;
    self.var_e5dc4e62 = 1;
    self.var_5a91b92e = 1;
}

// Namespace namespace_8681f0e2/mechz
// Params 13, eflags: 0x0
// Checksum 0x69e1431b, Offset: 0x47d8
// Size: 0x80a
function function_679ee5b3(inflictor, attacker, damage, dflags, mod, weapon, *var_fd90b0bb, point, dir, hitloc, offsettime, boneindex, modelindex) {
    if (damage === self || !util::function_fbce7263(damage.team, self.team)) {
        return 0;
    }
    if (isdefined(self.var_28d6380a) && !is_true(self.var_28d6380a)) {
        return 0;
    }
    if (self flag::get("kill_hvt_teleporting")) {
        weakpoint = namespace_81245006::function_3131f5dd(self, hitloc, 1);
        self.var_6936b30b = {#var_ebcff177:4, #weakpoint:weakpoint};
        return 0;
    }
    if (is_true(self.stumble)) {
        if (self.var_57fca545 < gettime() && !is_true(self.var_72d96058)) {
            self [[ level.var_df70a9a7 ]](attacker, damage, dflags, mod, weapon, var_fd90b0bb, point, dir, hitloc, offsettime, boneindex, modelindex);
        }
    }
    dflags = function_311ae556(dflags, var_fd90b0bb);
    if (isdefined(level.var_bb85b5a3)) {
        dflags = [[ level.var_bb85b5a3 ]](damage, dflags);
    }
    if (!isdefined(self.var_c7b2318c) || gettime() >= self.var_c7b2318c) {
        self thread function_7101cd45();
        self.var_c7b2318c = gettime() + 250 + randomint(500);
    }
    if (isdefined(self.var_50a0c385)) {
        self [[ self.var_50a0c385 ]](attacker, damage, dflags, mod, weapon, var_fd90b0bb, point, dir, hitloc, offsettime, boneindex, modelindex);
    }
    /#
        if (is_true(level.var_85a39c96)) {
            return (self.health + 1);
        }
    #/
    damage_type = 1;
    if (namespace_81245006::hasarmor(self) && (weapon === "MOD_PROJECTILE_SPLASH" || weapon === "MOD_GRENADE_SPLASH" || weapon == "MOD_EXPLOSIVE")) {
        var_3cddb028 = 0.5 * dflags;
        var_31e96b81 = int(var_3cddb028);
        foreach (weakpoint in self.var_5ace757d) {
            if (weakpoint.type === #"armor" && weakpoint.var_292e2bf1 === 1) {
                function_669e8e27(self, weakpoint, damage, dflags, var_fd90b0bb, weapon, attacker);
            }
        }
    }
    weakpoint = namespace_81245006::function_3131f5dd(self, hitloc, 1);
    if (!isdefined(weakpoint)) {
        weakpoint = namespace_81245006::function_73ab4754(self, point, 1);
    }
    if (weakpoint.var_3765e777 === 1 && aiutility::function_e2278a4b(var_fd90b0bb, weapon)) {
        damage show_hit_marker();
        dflags = int(dflags * 1);
        /#
            iprintlnbold("mechz_jetpack_destroyed_zm" + dflags + "<unknown string>" + self.health - dflags);
        #/
        damage_type = 2;
    }
    if (hitloc !== "none") {
        /#
            iprintlnbold("<unknown string>" + dflags + "<unknown string>" + self.health - dflags);
        #/
    } else if (weapon == "MOD_PROJECTILE" || weapon == "MOD_GRENADE") {
        dflags = int(dflags * 2);
        /#
            iprintlnbold("<unknown string>" + dflags + "<unknown string>" + self.health - dflags);
        #/
    } else if (weapon == "MOD_PROJECTILE_SPLASH" || weapon == "MOD_BURNED" || weapon == "MOD_GRENADE_SPLASH" || weapon == "MOD_EXPLOSIVE") {
        dflags = int(dflags * 3);
        /#
            iprintlnbold("<unknown string>" + dflags + "<unknown string>" + self.health - dflags);
        #/
    } else if (weapon == "MOD_CRUSH") {
        /#
            iprintlnbold("<unknown string>" + dflags + "<unknown string>" + self.health - dflags);
        #/
    }
    if (!isdefined(weakpoint)) {
        weakpoint = namespace_81245006::function_37e3f011(self, boneindex, 1);
    }
    if (isdefined(weakpoint)) {
        var_6dd5345c = function_669e8e27(self, weakpoint, damage, dflags, var_fd90b0bb, weapon, attacker);
        if (isdefined(var_6dd5345c)) {
            damage_type = var_6dd5345c;
            if (damage_type == 3) {
                dflags = dflags * 0.75;
                if (isdefined(level.var_1b01acb4)) {
                    dflags = dflags * [[ level.var_1b01acb4 ]](self, var_fd90b0bb, damage);
                }
            }
        }
    }
    if (!aiutility::function_493e5914(weapon)) {
        point = aiutility::function_cb552839(self);
    }
    if (killstreaks::is_killstreak_weapon(var_fd90b0bb)) {
        damage_type = 1;
    }
    self.var_6936b30b = {#var_ebcff177:damage_type, #weakpoint:weakpoint};
    return dflags;
}

// Namespace namespace_8681f0e2/mechz
// Params 7, eflags: 0x4
// Checksum 0xd273414c, Offset: 0x4ff0
// Size: 0x320
function private function_669e8e27(entity, weakpoint, attacker, damage, weapon, mod, inflictor) {
    var_6dd5345c = undefined;
    if (weakpoint.type === #"weakpoint") {
        var_6dd5345c = 2;
        namespace_81245006::function_ef87b7e8(weakpoint, damage);
        if (namespace_81245006::function_f29756fe(weakpoint) === 3 && isdefined(weakpoint.var_f371ebb0)) {
            destructserverutils::function_8475c53a(entity, weakpoint.var_f371ebb0);
            if (weakpoint.var_f371ebb0 == "left_arm_armor") {
                scoreevent = "mechz_power_core_destroyed_zm";
                entity function_39d47bef(attacker, weapon, mod, inflictor);
            }
        }
        level scoreevents::doscoreeventcallback("scoreEventZM", {#scoreevent:"hit_weak_point_zm", #attacker:attacker});
    } else if (weakpoint.type === #"armor") {
        var_6dd5345c = 3;
        damage_mod = 1;
        if (isdefined(level.var_56f626bc)) {
            damage_mod = [[ level.var_56f626bc ]](entity, weapon, attacker);
        }
        damage = damage * damage_mod;
        namespace_81245006::function_ef87b7e8(weakpoint, damage);
        if (namespace_81245006::function_f29756fe(weakpoint) === 3 && isdefined(weakpoint.var_f371ebb0)) {
            destructserverutils::function_8475c53a(entity, weakpoint.var_f371ebb0);
            scoreevent = "destroyed_armor_zm";
            if (weakpoint.var_f371ebb0 == "helmet") {
                entity function_40c68562();
            }
            if (weakpoint.var_f371ebb0 == "jet_pack") {
                entity function_4c489c31(attacker);
                scoreevent = "mechz_jetpack_destroyed_zm";
            }
            if (weakpoint.var_f371ebb0 == "power_core_cover") {
                entity function_3ebf4258();
            }
            level scoreevents::doscoreeventcallback("scoreEventZM", {#scoreevent:scoreevent, #attacker:attacker});
        }
    }
    return var_6dd5345c;
}

// Namespace namespace_8681f0e2/mechz
// Params 2, eflags: 0x4
// Checksum 0x2158e216, Offset: 0x5318
// Size: 0x70
function private function_311ae556(damage, weapon) {
    if (isdefined(weapon) && isdefined(weapon.name)) {
        if (weapon.name == #"eq_mechz_firebomb") {
            return 0;
        }
        if (weapon.name == #"molotov_fire") {
            return 0;
        }
    }
    return damage;
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x0
// Checksum 0xd559a739, Offset: 0x5390
// Size: 0x24
function function_7101cd45() {
    self playsound("zmb_ai_mechz_destruction");
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x0
// Checksum 0xebf8fe2, Offset: 0x53c0
// Size: 0x1c
function show_hit_marker() {
    self util::show_hit_marker();
}

// Namespace namespace_8681f0e2/mechz
// Params 1, eflags: 0x0
// Checksum 0x206d351, Offset: 0x53e8
// Size: 0x3c
function function_1780a22f(var_7527000) {
    if (self haspart(var_7527000)) {
        self hidepart(var_7527000);
    }
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x0
// Checksum 0x388b5118, Offset: 0x5430
// Size: 0xa0
function function_40c68562() {
    self clientfield::set("mechz_faceplate_detached", 1);
    self.var_c646abf1 = 0;
    self function_ee30c07();
    self.var_bc17791c = 1;
    self setblackboardattribute("_mechz_part", "mechz_faceplate");
    self namespace_3444cb7b::function_34d763b5();
    level notify(#"hash_710da473a9f077a5");
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x0
// Checksum 0xf5a2e04d, Offset: 0x54d8
// Size: 0x5c
function function_3ebf4258() {
    self clientfield::set("mechz_powercap_detached", 1);
    self.var_5a91b92e = 0;
    self.var_bc17791c = 1;
    self setblackboardattribute("_mechz_part", "mechz_powercore");
}

// Namespace namespace_8681f0e2/mechz
// Params 4, eflags: 0x0
// Checksum 0x5cf27edf, Offset: 0x5540
// Size: 0x10c
function function_39d47bef(attacker, weapon, mod, inflictor) {
    self clientfield::set("mechz_claw_detached", 1);
    self.var_e5dc4e62 = 0;
    self.var_d03c4664 = 0;
    self.var_bc17791c = 1;
    self setblackboardattribute("_mechz_part", "mechz_gun");
    level notify(#"hash_37e527c370856cf2");
    var_4f88297a = self.maxhealth * 0.1;
    self zombie_utility::function_6975aa10(weapon);
    self dodamage(var_4f88297a, self.origin, attacker, inflictor, "none", mod, 0, weapon);
}

// Namespace namespace_8681f0e2/mechz
// Params 1, eflags: 0x0
// Checksum 0xfa889c4, Offset: 0x5658
// Size: 0xf4
function function_4c489c31(attacker) {
    self function_1780a22f("j_jetpack");
    self clientfield::set("mechz_jetpack_explosion", 1);
    self.var_7c4488fd = 0;
    self.var_97601164 = 1;
    self.var_bc17791c = 1;
    if (isplayer(attacker)) {
        attacker.var_6de2953f.attacker = gettime();
    }
    self radiusdamage(self.origin + vectorscale((0, 0, 1), 36), 128, 150, 95, attacker, "MOD_EXPLOSIVE");
    if (isdefined(self.var_bacf9a1a)) {
        self thread [[ self.var_bacf9a1a ]](attacker);
    }
}

// Namespace namespace_8681f0e2/mechz
// Params 3, eflags: 0x0
// Checksum 0xd2f9e0e4, Offset: 0x5758
// Size: 0x24e
function function_923942a7(var_a460aef2, aim_tag, var_40f25562 = 0.5) {
    origin = self.origin;
    angles = self.angles;
    if (isdefined(aim_tag)) {
        origin = self gettagorigin(aim_tag);
        angles = self gettagangles(aim_tag);
    }
    if (isdefined(var_a460aef2)) {
        var_b7ff6051 = anglestoright(angles);
        origin = origin + var_b7ff6051 * var_a460aef2;
    }
    var_3c08a493 = anglestoforward(angles);
    enemy = is_true(self.var_1fa24724) ? self.enemy : self.favoriteenemy;
    if (!isdefined(enemy)) {
        return 0;
    }
    var_e14511cb = enemy.origin - origin;
    var_660d1fec = (var_e14511cb[0], var_e14511cb[1], 0);
    var_58877074 = (var_3c08a493[0], var_3c08a493[1], 0);
    var_660d1fec = vectornormalize(var_660d1fec);
    var_58877074 = vectornormalize(var_58877074);
    var_704c3d16 = vectordot(var_58877074, var_660d1fec);
    if (var_704c3d16 < var_40f25562) {
        return 0;
    }
    var_529624a4 = vectortoangles(var_e14511cb);
    if (!is_true(self.var_1fa24724) && abs(angleclamp180(var_529624a4[0])) > 60) {
        return 0;
    }
    return 1;
}

// Namespace namespace_8681f0e2/mechz
// Params 1, eflags: 0x0
// Checksum 0x8cdcd3fa, Offset: 0x59b0
// Size: 0x64
function function_ee30c07(var_832f96cf) {
    if (var_832f96cf !== 1) {
        self clientfield::set("mechz_headlamp_off", 1);
    } else {
        self clientfield::set("mechz_headlamp_off", 2);
    }
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x0
// Checksum 0x8bda4ea3, Offset: 0x5a20
// Size: 0x2c
function function_fe2419fc() {
    self.var_b467f3a1 = &function_53f176ae;
    self thread function_fb451f53();
}

// Namespace namespace_8681f0e2/mechz
// Params 1, eflags: 0x0
// Checksum 0xbea1225f, Offset: 0x5a58
// Size: 0x26c
function function_53f176ae(eventstruct) {
    if (!is_true(level.var_2356dff1)) {
        return;
    }
    notify_string = eventstruct.action;
    str_alias = notify_string;
    var_6281c93d = 0;
    n_priority = 1;
    var_c8109157 = 0;
    switch (notify_string) {
    case #"arrive":
    case #"death":
        var_6281c93d = 1;
        n_priority = 4;
        break;
    case #"pain":
    case #"land":
    case #"weapon_fire":
        var_6281c93d = 1;
        n_priority = 3;
        break;
    case #"summon":
    case #"stun_stunned":
    case #"enrage":
    case #"pain_jetpack":
    case #"melee_notetrack_2":
        var_6281c93d = 1;
        n_priority = 3;
        var_c8109157 = 1;
        break;
    case #"alerted":
    case #"melee_notetrack":
    case #"stun_intro":
    case #"jump":
    case #"lose_enemy":
        var_6281c93d = 1;
        n_priority = 2;
        var_c8109157 = 1;
        break;
    case #"ambient":
    case #"ambient_enraged":
    case #"ambient_alert":
        n_priority = 1;
        break;
    case #"attack_melee":
        return;
    case #"hash_defdefdefdefdef0":
        n_priority = 2;
        break;
    }
    level thread zm_audio::zmbaivox_playvox(self, str_alias, var_6281c93d, n_priority, var_c8109157);
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x0
// Checksum 0x83e02428, Offset: 0x5cd0
// Size: 0x168
function function_fb451f53() {
    self endon(#"death");
    str_notify = "ambient";
    while (1) {
        min_wait = 2;
        max_wait = 5;
        if (is_true(self.var_72d96058) || is_true(self.var_e8f3d773)) {
            str_notify = "ambient_enraged";
        } else if (isdefined(self.zombie_move_speed) && self.zombie_move_speed === "run") {
            str_notify = "ambient_enraged";
        } else if (isdefined(self.awarenesslevelcurrent) && self.awarenesslevelcurrent === "combat") {
            str_notify = "ambient_alert";
        } else {
            str_notify = "ambient";
        }
        bhtnactionstartevent(self, str_notify);
        self notify(#"bhtn_action_notify", {#action:str_notify});
        wait(randomfloatrange(min_wait, max_wait));
    }
}

// Namespace namespace_8681f0e2/mechz
// Params 1, eflags: 0x0
// Checksum 0xcb72c83b, Offset: 0x5e40
// Size: 0x24
function function_9d12d0d2(*params) {
    self namespace_3444cb7b::function_34d763b5();
}
