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
    system::register(#"mechz", &init, undefined, &finalize, undefined);
}

// Namespace namespace_3444cb7b/mechz
// Params 0, eflags: 0x2 linked
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
// Params 0, eflags: 0x2 linked
// Checksum 0xc824d46a, Offset: 0xc28
// Size: 0xe4
function finalize() {
    level thread aat::register_immunity("ammomod_brainrot", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_cryofreeze", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_deadwire", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_napalmburst", #"mechz", 1, 1, 1);
}

// Namespace namespace_3444cb7b/mechz
// Params 0, eflags: 0x6 linked
// Checksum 0x6d31a3e7, Offset: 0xd18
// Size: 0x100c
function private function_eebf86a4() {
    assert(isscriptfunctionptr(&mechztargetservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzTargetService", &mechztargetservice);
    assert(isscriptfunctionptr(&mechzgrenadeservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzGrenadeService", &mechzgrenadeservice);
    assert(isscriptfunctionptr(&mechzberserkknockdownservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzBerserkKnockdownService", &mechzberserkknockdownservice);
    assert(isscriptfunctionptr(&mechzshouldmelee));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldMelee", &mechzshouldmelee);
    assert(isscriptfunctionptr(&mechzshouldshowpain));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldShowPain", &mechzshouldshowpain);
    assert(isscriptfunctionptr(&mechzshouldshowjetpackpain));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldShowJetpackPain", &mechzshouldshowjetpackpain);
    assert(isscriptfunctionptr(&mechzenemyinaim));
    behaviorstatemachine::registerbsmscriptapiinternal("mechzEnemyInAim", &mechzenemyinaim);
    assert(isscriptfunctionptr(&mechzenemynotinaim));
    behaviorstatemachine::registerbsmscriptapiinternal("mechzEnemyNotInAim", &mechzenemynotinaim);
    assert(isscriptfunctionptr(&mechzshouldshootgrenade));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldShootGrenade", &mechzshouldshootgrenade);
    assert(isscriptfunctionptr(&mechzshouldshootflame));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldShootFlame", &mechzshouldshootflame);
    assert(isscriptfunctionptr(&mechzshouldshootflamesweep));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldShootFlameSweep", &mechzshouldshootflamesweep);
    assert(isscriptfunctionptr(&mechzshouldturnberserk));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldTurnBerserk", &mechzshouldturnberserk);
    assert(isscriptfunctionptr(&mechzshouldstumble));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldStumble", &mechzshouldstumble);
    assert(isscriptfunctionptr(&mechzisinsafezone));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzIsInSafeZone", &mechzisinsafezone);
    assert(isscriptfunctionptr(&mechzshouldturninplacebeforeidle));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShouldTurnInPlaceBeforeIdle", &mechzshouldturninplacebeforeidle);
    assert(!isdefined(&function_db525b31) || isscriptfunctionptr(&function_db525b31));
    assert(!isdefined(&function_c21030e3) || isscriptfunctionptr(&function_c21030e3));
    assert(!isdefined(&function_c13b8a0c) || isscriptfunctionptr(&function_c13b8a0c));
    behaviortreenetworkutility::registerbehaviortreeaction("mechzStumbleLoop", &function_db525b31, &function_c21030e3, &function_c13b8a0c);
    assert(!isdefined(&function_5a7ad15e) || isscriptfunctionptr(&function_5a7ad15e));
    assert(!isdefined(&function_a3c24f6a) || isscriptfunctionptr(&function_a3c24f6a));
    assert(!isdefined(&function_d58e0db5) || isscriptfunctionptr(&function_d58e0db5));
    behaviortreenetworkutility::registerbehaviortreeaction("mechzShootFlameAction", &function_5a7ad15e, &function_a3c24f6a, &function_d58e0db5);
    assert(isscriptfunctionptr(&mechzpreptoshootgrenadestart));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzPrepToShootGrenadeStart", &mechzpreptoshootgrenadestart);
    assert(isscriptfunctionptr(&mechzpreptoshootgrenadestart));
    behaviorstatemachine::registerbsmscriptapiinternal("mechzPrepToShootGrenadeStart", &mechzpreptoshootgrenadestart);
    assert(isscriptfunctionptr(&mechzpreptoshootgrenadesterminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzPrepToShootGrenadesTerminate", &mechzpreptoshootgrenadesterminate);
    assert(isscriptfunctionptr(&mechzpreptoshootgrenadesterminate));
    behaviorstatemachine::registerbsmscriptapiinternal("mechzPrepToShootGrenadesTerminate", &mechzpreptoshootgrenadesterminate);
    assert(isscriptfunctionptr(&mechzshootgrenadestart));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShootGrenadeStart", &mechzshootgrenadestart);
    assert(isscriptfunctionptr(&mechzshootgrenadestart));
    behaviorstatemachine::registerbsmscriptapiinternal("mechzShootGrenadeStart", &mechzshootgrenadestart);
    assert(isscriptfunctionptr(&mechzshootgrenadeterminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShootGrenadeTerminate", &mechzshootgrenadeterminate);
    assert(isscriptfunctionptr(&mechzshootgrenadeterminate));
    behaviorstatemachine::registerbsmscriptapiinternal("mechzShootGrenadeTerminate", &mechzshootgrenadeterminate);
    assert(isscriptfunctionptr(&mechzsetspeedwalk));
    behaviorstatemachine::registerbsmscriptapiinternal("mechzSetSpeedWalk", &mechzsetspeedwalk);
    assert(isscriptfunctionptr(&mechzsetspeedrun));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzSetSpeedRun", &mechzsetspeedrun);
    assert(isscriptfunctionptr(&mechzshootflame));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzShootFlame", &mechzshootflame);
    assert(isscriptfunctionptr(&mechzupdateflame));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzUpdateFlame", &mechzupdateflame);
    assert(isscriptfunctionptr(&mechzstopflame));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzStopFlame", &mechzstopflame);
    assert(isscriptfunctionptr(&mechzplayedberserkintro));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzPlayedBerserkIntro", &mechzplayedberserkintro);
    assert(isscriptfunctionptr(&mechzattackstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzAttackStart", &mechzattackstart);
    assert(isscriptfunctionptr(&mechzdeathstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzDeathStart", &mechzdeathstart);
    assert(isscriptfunctionptr(&mechzidlestart));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzIdleStart", &mechzidlestart);
    assert(isscriptfunctionptr(&mechzpainstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzPainStart", &mechzpainstart);
    assert(isscriptfunctionptr(&mechzpainterminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzPainTerminate", &mechzpainterminate);
    assert(isscriptfunctionptr(&mechzjetpackpainterminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi("mechzJetpackPainTerminate", &mechzjetpackpainterminate);
    animationstatenetwork::registernotetrackhandlerfunction("melee_soldat", &function_d9de8431);
    animationstatenetwork::registernotetrackhandlerfunction("fire_chaingun", &function_e26728bc);
    animationstatenetwork::registernotetrackhandlerfunction("jump_shake", &function_4e89924a);
}

// Namespace namespace_3444cb7b/mechz
// Params 0, eflags: 0x6 linked
// Checksum 0x4d159ae8, Offset: 0x1d30
// Size: 0x32
function private function_b19391ae() {
    blackboard::createblackboardforentity(self);
    self.___archetypeonanimscriptedcallback = &function_dd01e0e4;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0xaf8f9c51, Offset: 0x1d70
// Size: 0x2c
function private function_dd01e0e4(entity) {
    entity.__blackboard = undefined;
    entity function_b19391ae();
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0xd238f8df, Offset: 0x1da8
// Size: 0x44
function private function_d9de8431(entity) {
    if (isdefined(entity.var_9d23af0d)) {
        entity thread [[ entity.var_9d23af0d ]]();
    }
    entity melee();
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0x6f06ae69, Offset: 0x1df8
// Size: 0x28c
function private function_e26728bc(entity) {
    if (!isdefined(entity.enemy)) {
        return;
    }
    var_3e3a3402 = entity.enemy.origin;
    v_velocity = entity.enemy getvelocity();
    var_b6897326 = randomfloatrange(1, 2.5);
    var_3e3a3402 += v_velocity * var_b6897326;
    var_736d384 = math::randomsign() * randomint(48);
    var_6b1c9b42 = math::randomsign() * randomint(48);
    target_pos = var_3e3a3402 + (var_736d384, var_6b1c9b42, 0);
    dir = vectortoangles(target_pos - entity.origin);
    dir = anglestoforward(dir);
    launch_offset = dir * 5;
    var_8598bad6 = entity gettagorigin("tag_gun_barrel2") + launch_offset;
    dist = distance(var_8598bad6, target_pos);
    velocity = dir * dist;
    velocity += (0, 0, 120);
    val = 1;
    oldval = entity clientfield::get("mechz_115_gun_firing");
    if (oldval === val) {
        val = 0;
    }
    entity clientfield::set("mechz_115_gun_firing", val);
    entity magicgrenadetype(getweapon("eq_mechz_firebomb"), var_8598bad6, velocity);
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x2 linked
// Checksum 0xb8f45527, Offset: 0x2090
// Size: 0x2c
function function_4e89924a(entity) {
    entity clientfield::increment("mechz_long_jump");
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x2 linked
// Checksum 0xa9a344b4, Offset: 0x20c8
// Size: 0x2fc
function mechztargetservice(entity) {
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
            entity.ignore_player = [];
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
    }
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
    }
    entity setgoal(entity.origin);
    if (isdefined(entity.var_9d92b55a)) {
        [[ entity.var_9d92b55a ]](entity);
    }
    return 0;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0x65bd2f21, Offset: 0x23d0
// Size: 0xce
function private mechzgrenadeservice(entity) {
    if (!isdefined(entity.var_a0e09fde)) {
        entity.var_a0e09fde = 0;
    }
    if (entity.var_a0e09fde >= 1) {
        if (gettime() > entity.var_a8e56aa3) {
            entity.var_a0e09fde = 0;
        }
    }
    if (isdefined(level.var_542ac835)) {
        arrayremovevalue(level.var_542ac835, undefined);
        var_a4615441 = array::filter(level.var_542ac835, 0, &function_424646a8, entity);
        entity.var_856a7b8a = var_a4615441.size;
        return;
    }
    entity.var_856a7b8a = 0;
}

// Namespace namespace_3444cb7b/mechz
// Params 2, eflags: 0x6 linked
// Checksum 0xae54d17c, Offset: 0x24a8
// Size: 0x30
function private function_424646a8(grenade, mechz) {
    if (grenade.owner === mechz) {
        return true;
    }
    return false;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0xd5dd9a53, Offset: 0x24e0
// Size: 0x3ce
function private mechzberserkknockdownservice(entity) {
    velocity = entity getvelocity();
    var_b98d779c = 0.3;
    predicted_pos = entity.origin + velocity * var_b98d779c;
    move_dist_sq = distancesquared(predicted_pos, entity.origin);
    speed = move_dist_sq / var_b98d779c;
    if (speed >= 10) {
        a_zombies = getentitiesinradius(entity.origin, 48, 15);
        var_eb2cabb5 = array::filter(a_zombies, 0, &function_c01bcef, entity, predicted_pos);
        if (var_eb2cabb5.size > 0) {
            foreach (zombie in var_eb2cabb5) {
                zombie.knockdown = 1;
                zombie.knockdown_type = "knockdown_shoved";
                var_c255a411 = entity.origin - zombie.origin;
                var_3355d62f = vectornormalize((var_c255a411[0], var_c255a411[1], 0));
                zombie_forward = anglestoforward(zombie.angles);
                zombie_forward_2d = vectornormalize((zombie_forward[0], zombie_forward[1], 0));
                zombie_right = anglestoright(zombie.angles);
                zombie_right_2d = vectornormalize((zombie_right[0], zombie_right[1], 0));
                dot = vectordot(var_3355d62f, zombie_forward_2d);
                if (dot >= 0.5) {
                    zombie.knockdown_direction = "front";
                    zombie.getup_direction = "getup_back";
                    continue;
                }
                if (dot < 0.5 && dot > -0.5) {
                    dot = vectordot(var_3355d62f, zombie_right_2d);
                    if (dot > 0) {
                        zombie.knockdown_direction = "right";
                        if (math::cointoss()) {
                            zombie.getup_direction = "getup_back";
                        } else {
                            zombie.getup_direction = "getup_belly";
                        }
                    } else {
                        zombie.knockdown_direction = "left";
                        zombie.getup_direction = "getup_belly";
                    }
                    continue;
                }
                zombie.knockdown_direction = "back";
                zombie.getup_direction = "getup_belly";
            }
        }
    }
}

// Namespace namespace_3444cb7b/mechz
// Params 3, eflags: 0x6 linked
// Checksum 0xee263f28, Offset: 0x28b8
// Size: 0x178
function private function_c01bcef(zombie, mechz, *predicted_pos) {
    if (!isdefined(mechz) || !isdefined(predicted_pos)) {
        return false;
    }
    if (mechz.knockdown === 1) {
        return false;
    }
    if (mechz.archetype !== #"zombie") {
        return false;
    }
    if (mechz.var_33fb0350 === 1) {
        return false;
    }
    origin = predicted_pos.origin;
    facing_vec = anglestoforward(predicted_pos.angles);
    enemy_vec = mechz.origin - origin;
    var_660d1fec = (enemy_vec[0], enemy_vec[1], 0);
    var_58877074 = (facing_vec[0], facing_vec[1], 0);
    var_660d1fec = vectornormalize(var_660d1fec);
    var_58877074 = vectornormalize(var_58877074);
    enemy_dot = vectordot(var_58877074, var_660d1fec);
    if (enemy_dot < 0) {
        return false;
    }
    return true;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x2 linked
// Checksum 0xfad5325, Offset: 0x2a38
// Size: 0xca
function mechzshouldmelee(entity) {
    if (!isdefined(entity.enemy)) {
        return false;
    }
    if (distancesquared(entity.origin, entity.enemy.origin) > 12544) {
        return false;
    }
    if (is_true(entity.enemy.usingvehicle)) {
        return true;
    }
    yaw = abs(zombie_utility::getyawtoenemy());
    if (yaw > 45) {
        return false;
    }
    return true;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0xdea395d2, Offset: 0x2b10
// Size: 0x28
function private mechzshouldshowpain(entity) {
    if (entity.var_bc17791c === 1) {
        return true;
    }
    return false;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0x4cc28058, Offset: 0x2b40
// Size: 0x28
function private mechzshouldshowjetpackpain(entity) {
    if (entity.var_97601164 === 1) {
        return true;
    }
    return false;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0xa716776f, Offset: 0x2b70
// Size: 0x2e
function private mechzenemyinaim(entity) {
    if (entity namespace_8681f0e2::function_923942a7()) {
        return true;
    }
    return false;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0xe775bf95, Offset: 0x2ba8
// Size: 0x24
function private mechzenemynotinaim(entity) {
    return !mechzenemyinaim(entity);
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x2 linked
// Checksum 0xc3c255b, Offset: 0x2bd8
// Size: 0x21e
function mechzshouldshootgrenade(entity) {
    if (entity.berserk === 1) {
        return false;
    }
    if (entity.var_d03c4664 !== 1) {
        return false;
    }
    if (is_true(entity.var_10552fac)) {
        return false;
    }
    if (entity.var_9329a57c > gettime()) {
        return false;
    }
    if (is_true(self.ignoreall)) {
        return false;
    }
    if (isdefined(self.var_bfd4c4c4) || isdefined(self.var_6da37a9a)) {
        return false;
    }
    enemy = zm_ai_utility::function_825317c(entity);
    if (!isdefined(enemy)) {
        return false;
    }
    if (!isdefined(entity.var_a0e09fde) || entity.var_a0e09fde >= 1) {
        return false;
    }
    if (entity.var_856a7b8a >= 3) {
        return false;
    }
    if (!entity cansee(enemy)) {
        var_b51839b1 = 0;
        if (isplayer(enemy) && enemy isinvehicle()) {
            vehicle = enemy getvehicleoccupied();
            var_b51839b1 = entity cansee(vehicle);
        }
        if (!var_b51839b1) {
            return false;
        }
    }
    dist_sq = distancesquared(entity.origin, enemy.origin);
    if (dist_sq < 62500 || dist_sq > 1440000) {
        return false;
    }
    if (!mechzenemyinaim(self)) {
        return false;
    }
    return true;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x2 linked
// Checksum 0x1976176f, Offset: 0x2e00
// Size: 0x2be
function mechzshouldshootflame(entity) {
    /#
        if (is_true(entity.var_7b41c3ce)) {
            return true;
        }
    #/
    if (entity.berserk === 1) {
        return false;
    }
    if (is_true(entity.var_492622ad) && gettime() < entity.var_b25ccf7) {
        return true;
    }
    enemy = is_true(entity.var_1fa24724) ? entity.enemy : entity.favoriteenemy;
    if (!isdefined(enemy)) {
        return false;
    }
    if (entity.var_492622ad === 1 && entity.var_b25ccf7 <= gettime()) {
        return false;
    }
    if (entity.var_e05f2c0a > gettime() || entity.var_9329a57c > gettime()) {
        return false;
    }
    if (!entity namespace_8681f0e2::function_923942a7(26)) {
        return false;
    }
    var_52ef606d = !is_true(entity.var_1fa24724) && isdefined(enemy) && abs(entity.origin[2] - enemy.origin[2]) < 60;
    dist_sq = distancesquared(entity.origin, enemy.origin);
    if (var_52ef606d && dist_sq < 9216 || dist_sq > 90000) {
        return false;
    }
    in_vehicle = isplayer(enemy) && enemy isinvehicle();
    can_see = bullettracepassed(entity.origin + (0, 0, 36), enemy.origin + (0, 0, 36), 0, undefined);
    if (!can_see && !in_vehicle) {
        entity.var_e05f2c0a = gettime() + 2500;
        return false;
    }
    return true;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0x2d381b2f, Offset: 0x30c8
// Size: 0xb4
function private mechzshouldshootflamesweep(entity) {
    if (entity.berserk === 1) {
        return false;
    }
    if (!mechzshouldshootflame(entity)) {
        return false;
    }
    if (randomint(100) > 10) {
        return false;
    }
    var_39156533 = 0;
    players = getplayers(undefined, entity.origin, 100);
    if (players.size < 2) {
        return false;
    }
    return true;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0x8237d02c, Offset: 0x3188
// Size: 0xa2
function private mechzshouldturnberserk(entity) {
    if (entity.berserk === 1 && entity.var_5eca4346 !== 1) {
        return true;
    }
    if (is_true(entity.var_10552fac) && !is_true(entity.berserk) && !is_true(entity.var_5eca4346)) {
        return true;
    }
    return false;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0xf5997b86, Offset: 0x3238
// Size: 0x2e
function private mechzshouldstumble(entity) {
    if (is_true(entity.stumble)) {
        return true;
    }
    return false;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x2 linked
// Checksum 0xf957fe77, Offset: 0x3270
// Size: 0x80
function mechzisinsafezone(entity) {
    if (!isdefined(entity.favoriteenemy)) {
        return false;
    }
    distsqr = distancesquared(entity.origin, entity.favoriteenemy.origin);
    if (distsqr < 360000 && distsqr > 50625) {
        return true;
    }
    return false;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x2 linked
// Checksum 0xf4947d08, Offset: 0x32f8
// Size: 0x76
function mechzshouldturninplacebeforeidle(entity) {
    enemy = is_true(entity.var_1fa24724) ? entity.enemy : entity.favoriteenemy;
    if (!isdefined(enemy)) {
        return false;
    }
    if (entity namespace_8681f0e2::function_923942a7(26)) {
        return false;
    }
    return true;
}

// Namespace namespace_3444cb7b/mechz
// Params 2, eflags: 0x4
// Checksum 0x9e4c88be, Offset: 0x3378
// Size: 0x42
function private function_cc7ec28(entity, asmstatename) {
    animationstatenetworkutility::requeststate(entity, asmstatename);
    entity.var_83ce7c8f = gettime() + 3000;
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
// Params 2, eflags: 0x6 linked
// Checksum 0x37f9ea3a, Offset: 0x3408
// Size: 0x42
function private function_db525b31(entity, asmstatename) {
    animationstatenetworkutility::requeststate(entity, asmstatename);
    entity.var_773b5b9a = gettime() + 500;
    return 5;
}

// Namespace namespace_3444cb7b/mechz
// Params 2, eflags: 0x6 linked
// Checksum 0xb8ed64f3, Offset: 0x3458
// Size: 0x2c
function private function_c21030e3(entity, *asmstatename) {
    if (gettime() > asmstatename.var_773b5b9a) {
        return 4;
    }
    return 5;
}

// Namespace namespace_3444cb7b/mechz
// Params 2, eflags: 0x6 linked
// Checksum 0x750a7cc9, Offset: 0x3490
// Size: 0x32
function private function_c13b8a0c(entity, *asmstatename) {
    asmstatename.stumble = 0;
    asmstatename.var_57fca545 = gettime() + 10000;
    return 4;
}

// Namespace namespace_3444cb7b/mechz
// Params 2, eflags: 0x2 linked
// Checksum 0xe0e422a, Offset: 0x34d0
// Size: 0x56
function function_5a7ad15e(entity, asmstatename) {
    animationstatenetworkutility::requeststate(entity, asmstatename);
    mechzshootflame(entity);
    entity.blindaim = 1;
    return 5;
}

// Namespace namespace_3444cb7b/mechz
// Params 2, eflags: 0x2 linked
// Checksum 0xa8639e74, Offset: 0x3530
// Size: 0x128
function function_a3c24f6a(entity, *asmstatename) {
    if (is_true(asmstatename.berserk)) {
        mechzstopflame(asmstatename);
        return 4;
    }
    var_5e55975f = isdefined(self.var_5e55975f) ? self.var_5e55975f : &mechzshouldmelee;
    if (is_true([[ var_5e55975f ]](asmstatename))) {
        mechzstopflame(asmstatename);
        return 4;
    }
    if (is_true(asmstatename.var_492622ad)) {
        if (isdefined(asmstatename.var_b25ccf7) && gettime() > asmstatename.var_b25ccf7) {
            mechzstopflame(asmstatename);
            return 4;
        }
        mechzupdateflame(asmstatename);
    }
    return 5;
}

// Namespace namespace_3444cb7b/mechz
// Params 2, eflags: 0x2 linked
// Checksum 0x1b98a8d7, Offset: 0x3660
// Size: 0x3a
function function_d58e0db5(entity, *asmstatename) {
    mechzstopflame(asmstatename);
    asmstatename.blindaim = 0;
    return 4;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0x44a08812, Offset: 0x36a8
// Size: 0x1e
function private mechzpreptoshootgrenadestart(entity) {
    entity.blindaim = 1;
    return true;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0x915cd8b5, Offset: 0x36d0
// Size: 0x1a
function private mechzpreptoshootgrenadesterminate(entity) {
    entity.blindaim = 0;
    return true;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0x808eef45, Offset: 0x36f8
// Size: 0x4e
function private mechzshootgrenadestart(entity) {
    entity.var_a0e09fde++;
    if (entity.var_a0e09fde >= 1) {
        entity.var_a8e56aa3 = gettime() + 6000;
    }
    entity.blindaim = 1;
    return true;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0xe4120c34, Offset: 0x3750
// Size: 0x86
function private mechzshootgrenadeterminate(entity) {
    entity.blindaim = 0;
    entity clearpath();
    entity setgoal(entity.origin);
    if (isdefined(entity.var_9d92b55a)) {
        [[ entity.var_9d92b55a ]](entity);
    }
    entity.var_9329a57c = gettime() + 2000;
    return true;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0x2064424a, Offset: 0x37e0
// Size: 0x34
function private mechzsetspeedwalk(entity) {
    entity setblackboardattribute("_locomotion_speed", "locomotion_speed_walk");
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0x14ac2e5d, Offset: 0x3820
// Size: 0x34
function private mechzsetspeedrun(entity) {
    entity setblackboardattribute("_locomotion_speed", "locomotion_speed_run");
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0xb20db72f, Offset: 0x3860
// Size: 0x24
function private mechzshootflame(entity) {
    entity thread function_35c0aac1();
}

// Namespace namespace_3444cb7b/mechz
// Params 0, eflags: 0x6 linked
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
// Params 1, eflags: 0x6 linked
// Checksum 0x235cb27b, Offset: 0x3928
// Size: 0x410
function private mechzupdateflame(entity) {
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
                        continue;
                    }
                    player thread function_5afe5280(entity);
                }
            }
        }
        if (!isdefined(entity.var_15978c43)) {
            entity.var_15978c43 = [];
        }
        if (!isdefined(entity.var_22dae8df)) {
            entity.var_22dae8df = -1;
        }
        if (entity.var_22dae8df < gettime()) {
            entity.var_22dae8df = gettime() + 500;
            entity.var_15978c43 = getentitiesinradius(entity.origin, 300, 12);
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
// Params 1, eflags: 0x2 linked
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
// Params 1, eflags: 0x2 linked
// Checksum 0xc166a637, Offset: 0x3e68
// Size: 0xe2
function function_fd99ea48(mechz) {
    self endon(#"death");
    self endon(#"disconnect");
    tick_rate = 0.25;
    if (!is_true(self.is_burning)) {
        self.is_burning = 1;
        for (percentage = 0; percentage <= 1; percentage += tick_rate) {
            self dodamage(250 * tick_rate, self.origin, mechz, undefined, undefined, "MOD_BURNED", 0);
            wait(1.5 * tick_rate);
        }
        self.is_burning = 0;
    }
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x2 linked
// Checksum 0xf1c2e2f1, Offset: 0x3f58
// Size: 0x9a
function mechzstopflame(entity) {
    self notify(#"hash_35afb115cb92d570");
    entity clientfield::set("mechz_ft", 0);
    entity.var_492622ad = 0;
    var_82d51e42 = randomintrange(2500, 3500);
    entity.var_e05f2c0a = gettime() + var_82d51e42;
    entity.var_9329a57c = gettime() + 2000;
    entity.var_b25ccf7 = undefined;
}

// Namespace namespace_3444cb7b/mechz
// Params 0, eflags: 0x2 linked
// Checksum 0x28e5930f, Offset: 0x4000
// Size: 0x8c
function function_34d763b5() {
    entity = self;
    g_time = gettime();
    entity.var_c109fa4b = g_time + 10000;
    if (entity.berserk !== 1) {
        entity.berserk = 1;
        entity thread function_9e135033();
        entity setblackboardattribute("_locomotion_speed", "locomotion_speed_sprint");
    }
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0x22cfd045, Offset: 0x4098
// Size: 0x1a
function private mechzplayedberserkintro(entity) {
    entity.var_5eca4346 = 1;
}

// Namespace namespace_3444cb7b/mechz
// Params 0, eflags: 0x6 linked
// Checksum 0x1b07deb6, Offset: 0x40c0
// Size: 0xc0
function private function_9e135033() {
    self endon(#"death");
    self endon(#"disconnect");
    while (self.berserk === 1) {
        if (gettime() >= self.var_c109fa4b) {
            self.berserk = 0;
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
// Params 1, eflags: 0x6 linked
// Checksum 0x89b51839, Offset: 0x4188
// Size: 0x2c
function private mechzattackstart(entity) {
    entity clientfield::set("mechz_face", 1);
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0x26ff23b3, Offset: 0x41c0
// Size: 0x2c
function private mechzdeathstart(entity) {
    entity clientfield::set("mechz_face", 2);
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0xdbd45819, Offset: 0x41f8
// Size: 0x2c
function private mechzidlestart(entity) {
    entity clientfield::set("mechz_face", 3);
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0x19020730, Offset: 0x4230
// Size: 0x2c
function private mechzpainstart(entity) {
    entity clientfield::set("mechz_face", 4);
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0x212ff850, Offset: 0x4268
// Size: 0x22
function private mechzpainterminate(entity) {
    entity.var_bc17791c = 0;
    entity.var_54db22a4 = undefined;
}

// Namespace namespace_3444cb7b/mechz
// Params 1, eflags: 0x6 linked
// Checksum 0x1f33716, Offset: 0x4298
// Size: 0x2c
function private mechzjetpackpainterminate(entity) {
    entity.var_97601164 = 0;
    mechzpainterminate(entity);
}

#namespace namespace_8681f0e2;

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x6 linked
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
    self.grenadecount = 3;
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
    self.var_e5365d8a = (0, 0, 6);
    aiutility::addaioverridedamagecallback(self, &function_679ee5b3);
    self thread function_fe2419fc();
    self namespace_47c5b560::function_904442b2();
    self.var_6d409ca1 = &function_6d409ca1;
    self callback::function_d8abfc3d(#"hash_69106b41ba3763f7", &function_9d12d0d2);
    level thread zm_spawner::zombie_death_event(self);
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x6 linked
// Checksum 0x9e523dcd, Offset: 0x45f8
// Size: 0x32
function private function_6d409ca1() {
    if (is_true(self.favoriteenemy.ignoreme)) {
        return undefined;
    }
    return self.favoriteenemy;
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x2 linked
// Checksum 0xc44c89ad, Offset: 0x4638
// Size: 0x4e
function function_5d873f78() {
    self function_7202e3df();
    namespace_81245006::initweakpoints(self);
    self.completed_emerging_into_playable_area = 1;
    self.canbetargetedbyturnedzombies = 1;
}

// Namespace namespace_8681f0e2/mechz
// Params 1, eflags: 0x2 linked
// Checksum 0xc75bfcc9, Offset: 0x4690
// Size: 0x24
function function_d0651b24(watcher) {
    mechzfirebomb::function_5545649e(watcher);
}

// Namespace namespace_8681f0e2/mechz
// Params 1, eflags: 0x2 linked
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
    while (true) {
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
// Params 0, eflags: 0x6 linked
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
// Params 13, eflags: 0x2 linked
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
        self.var_6936b30b = {#weakpoint:weakpoint, #var_ebcff177:4};
        return 0;
    }
    if (is_true(self.stumble)) {
        if (self.var_57fca545 < gettime() && !is_true(self.berserk)) {
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
            if (weakpoint.type === #"armor" && weakpoint.currstate === 1) {
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
                dflags *= 0.75;
                if (isdefined(level.var_1b01acb4)) {
                    dflags *= [[ level.var_1b01acb4 ]](self, var_fd90b0bb, damage);
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
    self.var_6936b30b = {#weakpoint:weakpoint, #var_ebcff177:damage_type};
    return dflags;
}

// Namespace namespace_8681f0e2/mechz
// Params 7, eflags: 0x6 linked
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
        level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:attacker, #scoreevent:"hit_weak_point_zm"});
    } else if (weakpoint.type === #"armor") {
        var_6dd5345c = 3;
        damage_mod = 1;
        if (isdefined(level.var_56f626bc)) {
            damage_mod = [[ level.var_56f626bc ]](entity, weapon, attacker);
        }
        damage *= damage_mod;
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
            level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:attacker, #scoreevent:scoreevent});
        }
    }
    return var_6dd5345c;
}

// Namespace namespace_8681f0e2/mechz
// Params 2, eflags: 0x6 linked
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
// Params 0, eflags: 0x2 linked
// Checksum 0xd559a739, Offset: 0x5390
// Size: 0x24
function function_7101cd45() {
    self playsound("zmb_ai_mechz_destruction");
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x2 linked
// Checksum 0xebf8fe2, Offset: 0x53c0
// Size: 0x1c
function show_hit_marker() {
    self util::show_hit_marker();
}

// Namespace namespace_8681f0e2/mechz
// Params 1, eflags: 0x2 linked
// Checksum 0x206d351, Offset: 0x53e8
// Size: 0x3c
function hide_part(var_7527000) {
    if (self haspart(var_7527000)) {
        self hidepart(var_7527000);
    }
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x2 linked
// Checksum 0x388b5118, Offset: 0x5430
// Size: 0xa0
function function_40c68562() {
    self clientfield::set("mechz_faceplate_detached", 1);
    self.var_c646abf1 = 0;
    self function_ee30c07();
    self.var_bc17791c = 1;
    self setblackboardattribute("_mechz_part", "mechz_faceplate");
    self namespace_3444cb7b::function_34d763b5();
    level notify(#"mechz_faceplate_detached");
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x2 linked
// Checksum 0xf5a2e04d, Offset: 0x54d8
// Size: 0x5c
function function_3ebf4258() {
    self clientfield::set("mechz_powercap_detached", 1);
    self.var_5a91b92e = 0;
    self.var_bc17791c = 1;
    self setblackboardattribute("_mechz_part", "mechz_powercore");
}

// Namespace namespace_8681f0e2/mechz
// Params 4, eflags: 0x2 linked
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
// Params 1, eflags: 0x2 linked
// Checksum 0xfa889c4, Offset: 0x5658
// Size: 0xf4
function function_4c489c31(attacker) {
    self hide_part("j_jetpack");
    self clientfield::set("mechz_jetpack_explosion", 1);
    self.var_7c4488fd = 0;
    self.var_97601164 = 1;
    self.var_bc17791c = 1;
    if (isplayer(attacker)) {
        attacker.var_6de2953f = gettime();
    }
    self radiusdamage(self.origin + (0, 0, 36), 128, 150, 95, attacker, "MOD_EXPLOSIVE");
    if (isdefined(self.var_bacf9a1a)) {
        self thread [[ self.var_bacf9a1a ]](attacker);
    }
}

// Namespace namespace_8681f0e2/mechz
// Params 3, eflags: 0x2 linked
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
        origin += var_b7ff6051 * var_a460aef2;
    }
    facing_vec = anglestoforward(angles);
    enemy = is_true(self.var_1fa24724) ? self.enemy : self.favoriteenemy;
    if (!isdefined(enemy)) {
        return false;
    }
    enemy_vec = enemy.origin - origin;
    var_660d1fec = (enemy_vec[0], enemy_vec[1], 0);
    var_58877074 = (facing_vec[0], facing_vec[1], 0);
    var_660d1fec = vectornormalize(var_660d1fec);
    var_58877074 = vectornormalize(var_58877074);
    enemy_dot = vectordot(var_58877074, var_660d1fec);
    if (enemy_dot < var_40f25562) {
        return false;
    }
    var_529624a4 = vectortoangles(enemy_vec);
    if (!is_true(self.var_1fa24724) && abs(angleclamp180(var_529624a4[0])) > 60) {
        return false;
    }
    return true;
}

// Namespace namespace_8681f0e2/mechz
// Params 1, eflags: 0x2 linked
// Checksum 0x8cdcd3fa, Offset: 0x59b0
// Size: 0x64
function function_ee30c07(var_832f96cf) {
    if (var_832f96cf !== 1) {
        self clientfield::set("mechz_headlamp_off", 1);
        return;
    }
    self clientfield::set("mechz_headlamp_off", 2);
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x2 linked
// Checksum 0x8bda4ea3, Offset: 0x5a20
// Size: 0x2c
function function_fe2419fc() {
    self.var_b467f3a1 = &function_53f176ae;
    self thread function_fb451f53();
}

// Namespace namespace_8681f0e2/mechz
// Params 1, eflags: 0x2 linked
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
    default:
        n_priority = 2;
        break;
    }
    level thread zm_audio::zmbaivox_playvox(self, str_alias, var_6281c93d, n_priority, var_c8109157);
}

// Namespace namespace_8681f0e2/mechz
// Params 0, eflags: 0x2 linked
// Checksum 0x83e02428, Offset: 0x5cd0
// Size: 0x168
function function_fb451f53() {
    self endon(#"death");
    str_notify = "ambient";
    while (true) {
        min_wait = 2;
        max_wait = 5;
        if (is_true(self.berserk) || is_true(self.var_e8f3d773)) {
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
// Params 1, eflags: 0x2 linked
// Checksum 0xcb72c83b, Offset: 0x5e40
// Size: 0x24
function function_9d12d0d2(*params) {
    self namespace_3444cb7b::function_34d763b5();
}

