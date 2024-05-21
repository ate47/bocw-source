// Atian COD Tools GSC CW decompiler test
#using script_36f4be19da8eb6d0;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_cleanup_mgr.gsc;
#using script_5f261a5d57de5f7c;
#using script_1940fc077a028a81;
#using script_3411bb48d41bd3b;
#using script_3357acf79ce92f4b;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using script_20dc0f45753888c7;
#using script_789f2367a00401d8;
#using scripts\zm\ai\zm_ai_dog_interface.gsc;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\ai\zombie.gsc;
#using scripts\core_common\ai\archetype_mocomps_utility.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_notetracks.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_mocomp.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;

#namespace zm_ai_dog;

// Namespace zm_ai_dog
// Method(s) 2 Total 2
class class_970c2a7e {

    var adjustmentstarted;
    var var_425c4c8b;

    // Namespace class_970c2a7e/zm_ai_dog
    // Params 0, eflags: 0xa linked
    // Checksum 0x9cfd8e2d, Offset: 0x7760
    // Size: 0x1a
    constructor() {
        adjustmentstarted = 0;
        var_425c4c8b = 1;
    }

}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x5
// Checksum 0x8980a7d2, Offset: 0x618
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_ai_dog", &preinit, undefined, undefined, undefined);
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x6 linked
// Checksum 0xc97a917e, Offset: 0x660
// Size: 0xc6
function private preinit() {
    profilestart();
    registerbehaviorscriptfunctions();
    spawner::add_archetype_spawn_function(#"zombie_dog", &function_b9d56970);
    zm_cleanup::function_cdf5a512(#"zombie_dog", &function_f70e30a9);
    clientfield::register("actor", "ZombieDogVocals", 1, 2, "int");
    /#
        thread function_db4f75e();
    #/
    profilestop();
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0x69472e80, Offset: 0x730
// Size: 0x26c
function function_b9d56970() {
    self.var_93a62fe = zm_utility::get_closest_valid_player(self.origin, undefined, 1);
    self.closest_player_override = &zm_utility::function_3d70ba7a;
    self.var_ef1ed308 = &function_ea61b64a;
    self.var_b077b73d = &function_b077b73d;
    self.var_58c4c69b = 1;
    self.var_f8df968e = &function_d4dbfd41;
    self.var_81e5ae7 = &function_8aafc418;
    self.on_brainrot = &on_brainrot;
    self.var_10083d9f = &function_10083d9f;
    self.var_b82726ff = 0;
    self.var_4b07f09f = 0;
    level thread zm_spawner::zombie_death_event(self);
    if (!zm_utility::is_survival()) {
        self callback::function_d8abfc3d(#"on_ai_killed", &function_ca4ce82b);
        if (isdefined(level.dog_round_count)) {
            if (level.dog_round_count <= 1) {
                self clientfield::set("ZombieDogVocals", 1);
            } else {
                self clientfield::set("ZombieDogVocals", 2);
            }
        }
        self.no_powerups = 1;
    }
    self callback::function_d8abfc3d(#"death", &function_92178cf8);
    if (zm_utility::is_classic()) {
        self.var_cc7af248 = 1;
    }
    if (self.var_9fde8624 === #"hash_2a5479b83161cb35") {
        self callback::function_d8abfc3d(#"on_ai_killed", &function_dd2995a8);
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0x1149e39a, Offset: 0x9a8
// Size: 0x24
function private function_8aafc418(player) {
    return isdefined(zm_utility::function_ebd87099(player));
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x6 linked
// Checksum 0xdcb40e3b, Offset: 0x9d8
// Size: 0x2f8
function private function_f70e30a9() {
    self endon(#"death");
    while (true) {
        var_31f7011a = arraysortclosest(getplayers(), self.origin);
        foreach (player in var_31f7011a) {
            if (zm_utility::is_player_valid(player)) {
                closest_player = player;
                break;
            }
        }
        if (isdefined(closest_player)) {
            break;
        }
        util::wait_network_frame();
    }
    s_spawn_locs = level.zm_loc_types[#"dog_location"];
    var_69681a59 = [];
    if (isdefined(level.active_zone_names) && isarray(s_spawn_locs) && s_spawn_locs.size > 0) {
        foreach (spawn_loc in s_spawn_locs) {
            if (isdefined(spawn_loc.zone_name) && array::contains(level.active_zone_names, spawn_loc.zone_name)) {
                if (!isdefined(var_69681a59)) {
                    var_69681a59 = [];
                } else if (!isarray(var_69681a59)) {
                    var_69681a59 = array(var_69681a59);
                }
                var_69681a59[var_69681a59.size] = spawn_loc;
            }
        }
    }
    if (var_69681a59.size > 0) {
        var_e0c39feb = arraysortclosest(var_69681a59, closest_player.origin, 1, 512);
        if (var_e0c39feb.size > 0) {
            self zm_ai_utility::function_a8dc3363(var_e0c39feb[0]);
            self function_d4dbfd41(var_e0c39feb[0].origin, self.angles);
        }
    }
    return true;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 3, eflags: 0x6 linked
// Checksum 0x8638c618, Offset: 0xcd8
// Size: 0x224
function private function_d4dbfd41(*origin, angles, *spawn_anim) {
    self endon(#"death");
    if (isdefined(self.favoriteenemy)) {
        angle = vectortoangles(self.favoriteenemy.origin - self.origin);
        spawn_anim = (self.angles[0], angle[1], self.angles[2]);
    } else {
        spawn_anim = self.angles;
    }
    if (is_true(self.var_bee4eef1)) {
        self namespace_85745671::function_9758722(#"super_sprint");
        return;
    }
    self ghost();
    self pathmode("dont move", 1);
    self val::set(#"dog_spawn", "ignoreme");
    self val::set(#"dog_spawn", "takedamage", 0);
    self clientfield::increment("sr_dog_pre_spawn_fx");
    self setfreecameralockonallowed(0);
    if (self.var_9fde8624 === #"hash_2a5479b83161cb35") {
        self animation::play("ai_t9_zm_zombie_dog_spawn_air_plaguehound_01", self.origin, spawn_anim);
        return;
    }
    if (self.var_9fde8624 === #"hash_28e36e7b7d5421f") {
        self animation::play("ai_t9_zm_zombie_dog_spawn_air_hellhound_01", self.origin, spawn_anim);
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0xb37473c7, Offset: 0xf08
// Size: 0xea4
function registerbehaviorscriptfunctions() {
    spawner::add_archetype_spawn_function(#"zombie_dog", &archetypezombiedogblackboardinit);
    assert(isscriptfunctionptr(&zombiedogtargetservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiedogtargetservice", &zombiedogtargetservice, 1);
    assert(isscriptfunctionptr(&function_5e50d260));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_29b43f0d0b6bd4e2", &function_5e50d260, 2);
    assert(isscriptfunctionptr(&function_cb259df5));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6a3b7cd3d64a9e0e", &function_cb259df5);
    assert(isscriptfunctionptr(&function_2cf71b2));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_a662462addf3d75", &function_2cf71b2);
    assert(isscriptfunctionptr(&zombiedogshouldmelee));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiedogshouldmelee", &zombiedogshouldmelee);
    assert(isscriptfunctionptr(&zombiedogshouldwalk));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiedogshouldwalk", &zombiedogshouldwalk);
    assert(isscriptfunctionptr(&zombiedogshouldwalk));
    behaviorstatemachine::registerbsmscriptapiinternal(#"zombiedogshouldwalk", &zombiedogshouldwalk);
    assert(isscriptfunctionptr(&zombiedogshouldrun));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiedogshouldrun", &zombiedogshouldrun);
    assert(isscriptfunctionptr(&zombiedogshouldrun));
    behaviorstatemachine::registerbsmscriptapiinternal(#"zombiedogshouldrun", &zombiedogshouldrun);
    assert(isscriptfunctionptr(&function_9c2fe7e6));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_32d317d9aed4eaeb", &function_9c2fe7e6);
    assert(isscriptfunctionptr(&function_9c2fe7e6));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_32d317d9aed4eaeb", &function_9c2fe7e6);
    assert(isscriptfunctionptr(&function_77b7ec2d));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1a882594c3f18ac5", &function_77b7ec2d);
    assert(isscriptfunctionptr(&function_77b7ec2d));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_1a882594c3f18ac5", &function_77b7ec2d);
    assert(isscriptfunctionptr(&function_1a2ec6cf));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_302c63f6e1cadacc", &function_1a2ec6cf);
    assert(isscriptfunctionptr(&function_731939c2));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_6f309052a6def471", &function_731939c2);
    assert(isscriptfunctionptr(&function_82f55309));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_17f565e0da36a81f", &function_82f55309);
    assert(isscriptfunctionptr(&function_2d500a7e));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5723c9d68fe69d54", &function_2d500a7e);
    assert(isscriptfunctionptr(&function_a82712bc));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_366544d16d423e37", &function_a82712bc);
    assert(isscriptfunctionptr(&function_4a7e2ba0));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_545a7d19924edd47", &function_4a7e2ba0);
    assert(isscriptfunctionptr(&function_c13b6bae));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_76e6e7abd3fe046a", &function_c13b6bae);
    assert(!isdefined(&zombiedogmeleeaction) || isscriptfunctionptr(&zombiedogmeleeaction));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&zombiedogmeleeactionterminate) || isscriptfunctionptr(&zombiedogmeleeactionterminate));
    behaviortreenetworkutility::registerbehaviortreeaction("zombieDogMeleeAction", &zombiedogmeleeaction, undefined, &zombiedogmeleeactionterminate);
    animationstatenetwork::registernotetrackhandlerfunction("zombie_dog_explode", &function_7ee905fc);
    animationstatenetwork::registernotetrackhandlerfunction("zombie_dog_suicide", &function_7ee905fc);
    animationstatenetwork::registeranimationmocomp("mocomp_zombie_dog_juke", &function_bdd562d7, &function_5c3d4c42, &function_826afb7e);
    animationstatenetwork::registeranimationmocomp("mocomp_zombie_dog_leap_attack", &function_fba7325a, &function_b1b9da60, &function_9280d53b);
    assert(!isdefined(&function_856447f6) || isscriptfunctionptr(&function_856447f6));
    assert(!isdefined(&function_e87d4fff) || isscriptfunctionptr(&function_e87d4fff));
    assert(!isdefined(&function_81758b93) || isscriptfunctionptr(&function_81758b93));
    behaviortreenetworkutility::registerbehaviortreeaction(#"hash_1765abc5cdc24867", &function_856447f6, &function_e87d4fff, &function_81758b93);
    assert(isscriptfunctionptr(&pa_cl_vport_zscale_4));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1e70520bdbcffd27", &pa_cl_vport_zscale_4);
    assert(isscriptfunctionptr(&function_2e0abd15));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_286661abebb905a2", &function_2e0abd15);
    assert(isscriptfunctionptr(&function_70daebd0));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_480dc00bc877ad26", &function_70daebd0);
    assert(isscriptfunctionptr(&function_70daebd0));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_480dc00bc877ad26", &function_70daebd0);
    assert(isscriptfunctionptr(&function_9baf0ee8));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7828fc2e61d3b060", &function_9baf0ee8);
    assert(isscriptfunctionptr(&function_f0beb97c));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_76f5c00a30cdfd69", &function_f0beb97c);
    assert(isscriptfunctionptr(&function_45cf2e16));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_61b99f3b97bfe943", &function_45cf2e16);
    animationstatenetwork::registernotetrackhandlerfunction("pounce", &function_8ee8d380);
    zm_ai_dog_interface::registerzombiedoginterfaceattributes();
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0xcf7ed66, Offset: 0x1db8
// Size: 0x56
function archetypezombiedogblackboardinit() {
    blackboard::createblackboardforentity(self);
    ai::createinterfaceforentity(self);
    self.___archetypeonanimscriptedcallback = &archetypezombiedogonanimscriptedcallback;
    self.kill_on_wine_coccon = 1;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0x1359f4d8, Offset: 0x1e18
// Size: 0x2c
function private archetypezombiedogonanimscriptedcallback(entity) {
    entity.__blackboard = undefined;
    entity archetypezombiedogblackboardinit();
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0xbcc2f41, Offset: 0x1e50
// Size: 0xba
function bb_getshouldrunstatus() {
    if (isdefined(self.var_1dddf9ab)) {
        return self [[ self.var_1dddf9ab ]]();
    }
    /#
        if (is_true(self.ispuppet)) {
            return "dot_toxic_claw_staminup";
        }
    #/
    if (is_true(self.hasseenfavoriteenemy) || ai::hasaiattribute(self, "sprint") && ai::getaiattribute(self, "sprint")) {
        return "run";
    }
    return "walk";
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0xda66dae2, Offset: 0x1f18
// Size: 0xc2
function bb_getshouldhowlstatus() {
    if (self ai::has_behavior_attribute("howl_chance") && is_true(self.hasseenfavoriteenemy)) {
        if (!isdefined(self.shouldhowl)) {
            chance = self ai::get_behavior_attribute("howl_chance");
            self.shouldhowl = randomfloat(1) <= chance;
        }
        return (self.shouldhowl ? "howl" : "dont_howl");
    }
    return "dont_howl";
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0x195711d2, Offset: 0x1fe8
// Size: 0x3e
function getyaw(org) {
    angles = vectortoangles(org - self.origin);
    return angles[1];
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0x1678cc29, Offset: 0x2030
// Size: 0x92
function absyawtoenemy() {
    assert(isdefined(self.enemy));
    yaw = self.angles[1] - getyaw(self.enemy.origin);
    yaw = angleclamp180(yaw);
    if (yaw < 0) {
        yaw = -1 * yaw;
    }
    return yaw;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0xf9f8284b, Offset: 0x20d0
// Size: 0x21a
function need_to_run() {
    run_dist_squared = sqr(self ai::get_behavior_attribute("min_run_dist"));
    run_yaw = 20;
    run_pitch = 30;
    run_height = 192;
    if (level.dog_round_count > 1) {
        return true;
    }
    if (self.health < self.maxhealth) {
        return true;
    }
    if (!isdefined(self.enemy) || !isalive(self.enemy)) {
        return false;
    }
    if (!self cansee(self.enemy)) {
        return false;
    }
    dist = distance2dsquared(self.origin, self.enemy.origin);
    if (dist > run_dist_squared) {
        return false;
    }
    height = self.origin[2] - self.enemy.origin[2];
    if (abs(height) > run_height) {
        return false;
    }
    yaw = self absyawtoenemy();
    if (yaw > run_yaw) {
        return false;
    }
    pitch = angleclamp180(vectortoangles(self.origin - self.enemy.origin)[0]);
    if (abs(pitch) > run_pitch) {
        return false;
    }
    return true;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 2, eflags: 0x2 linked
// Checksum 0x7f248228, Offset: 0x22f8
// Size: 0x20c
function is_target_valid(dog, target) {
    if (!isdefined(target)) {
        return 0;
    }
    if (!isalive(target)) {
        return 0;
    }
    if (!(dog.team == #"allies")) {
        if (!isplayer(target) && sessionmodeiszombiesgame()) {
            return 0;
        }
        if (isdefined(target.is_zombie) && target.is_zombie == 1) {
            return 0;
        }
    }
    if (isplayer(target) && target.sessionstate == "spectator") {
        return 0;
    }
    if (isplayer(target) && target.sessionstate == "intermission") {
        return 0;
    }
    if (is_true(self.intermission)) {
        return 0;
    }
    if (is_true(target.ignoreme)) {
        return 0;
    }
    if (target isnotarget()) {
        return 0;
    }
    if (dog.team == target.team) {
        return 0;
    }
    if (isplayer(target) && isdefined(level.var_6f6cc58)) {
        if (!dog [[ level.var_6f6cc58 ]](target)) {
            return 0;
        }
    }
    if (isplayer(target) && isdefined(level.is_player_valid_override)) {
        return [[ level.is_player_valid_override ]](target);
    }
    return 1;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0xcaaa1296, Offset: 0x2510
// Size: 0x264
function private get_favorite_enemy(dog) {
    dog_targets = [];
    if (sessionmodeiszombiesgame()) {
        if (self.team == #"allies") {
            dog_targets = getaiteamarray(level.zombie_team);
        } else {
            dog_targets = getplayers();
        }
    } else {
        dog_targets = arraycombine(getplayers(), getaiarray(), 0, 0);
    }
    least_hunted = dog_targets[0];
    closest_target_dist_squared = undefined;
    if (is_target_valid(dog, self.var_8a3828c6)) {
        least_hunted = self.var_8a3828c6;
    } else {
        for (i = 0; i < dog_targets.size; i++) {
            if (!isdefined(dog_targets[i].hunted_by)) {
                dog_targets[i].hunted_by = 0;
            }
            if (!is_target_valid(dog, dog_targets[i])) {
                continue;
            }
            if (!is_target_valid(dog, least_hunted)) {
                least_hunted = dog_targets[i];
            }
            dist_squared = distancesquared(dog.origin, dog_targets[i].origin);
            if (dog_targets[i].hunted_by <= least_hunted.hunted_by && (!isdefined(closest_target_dist_squared) || dist_squared < closest_target_dist_squared)) {
                least_hunted = dog_targets[i];
                closest_target_dist_squared = dist_squared;
            }
        }
    }
    if (!is_target_valid(dog, least_hunted)) {
        return undefined;
    }
    if (!isdefined(least_hunted.hunted_by)) {
        least_hunted.hunted_by = 0;
    }
    least_hunted.hunted_by += 1;
    return least_hunted;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0xf4cb0e32, Offset: 0x2780
// Size: 0x2e
function get_last_valid_position() {
    if (isplayer(self)) {
        return self.last_valid_position;
    }
    return self.origin;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0xb066f76f, Offset: 0x27b8
// Size: 0x232
function get_locomotion_target(behaviortreeentity) {
    if (!isdefined(behaviortreeentity.favoriteenemy)) {
        return undefined;
    }
    last_valid_position = behaviortreeentity.favoriteenemy get_last_valid_position();
    if (!isdefined(last_valid_position)) {
        return undefined;
    }
    locomotion_target = last_valid_position;
    if (ai::has_behavior_attribute("spacing_value")) {
        spacing_near_dist = ai::get_behavior_attribute("spacing_near_dist");
        spacing_far_dist = ai::get_behavior_attribute("spacing_far_dist");
        spacing_horz_dist = ai::get_behavior_attribute("spacing_horz_dist");
        spacing_value = ai::get_behavior_attribute("spacing_value");
        to_enemy = behaviortreeentity.favoriteenemy.origin - behaviortreeentity.origin;
        perp = vectornormalize((to_enemy[1] * -1, to_enemy[0], 0));
        offset = perp * spacing_horz_dist * spacing_value;
        spacing_dist = math::clamp(length(to_enemy), spacing_near_dist, spacing_far_dist);
        lerp_amount = math::clamp((spacing_dist - spacing_near_dist) / (spacing_far_dist - spacing_near_dist), 0, 1);
        desired_point = last_valid_position + offset * lerp_amount;
        desired_point = getclosestpointonnavmesh(desired_point, spacing_horz_dist * 1.2, 16);
        if (isdefined(desired_point)) {
            locomotion_target = desired_point;
        }
    }
    return locomotion_target;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0xd7b5bf69, Offset: 0x29f8
// Size: 0x412
function zombiedogtargetservice(behaviortreeentity) {
    if (is_true(behaviortreeentity.ai.var_870d0893)) {
        return;
    }
    if (is_true(level.intermission)) {
        behaviortreeentity clearpath();
        return;
    }
    /#
        if (is_true(behaviortreeentity.ispuppet)) {
            return;
        }
    #/
    if (behaviortreeentity ai::has_behavior_attribute("patrol") && behaviortreeentity ai::get_behavior_attribute("patrol")) {
        return;
    }
    if (!is_target_valid(behaviortreeentity, behaviortreeentity.favoriteenemy) || behaviortreeentity.favoriteenemy !== behaviortreeentity.var_8a3828c6) {
        if (isdefined(behaviortreeentity.favoriteenemy)) {
            function_ea61b64a(behaviortreeentity);
            behaviortreeentity.hasseenfavoriteenemy = 0;
        }
        behaviortreeentity.favoriteenemy = get_favorite_enemy(behaviortreeentity);
    }
    if (behaviortreeentity.ignoreall || behaviortreeentity.pacifist || !is_target_valid(behaviortreeentity, behaviortreeentity.favoriteenemy)) {
        if (is_target_valid(behaviortreeentity, behaviortreeentity.favoriteenemy)) {
            if (isdefined(level.var_d22435d9)) {
                [[ level.var_d22435d9 ]](behaviortreeentity);
            }
        } else {
            if (isdefined(behaviortreeentity function_4794d6a3().overridegoalpos)) {
                behaviortreeentity function_d4c687c9();
            }
            if (isdefined(level.no_target_override)) {
                [[ level.no_target_override ]](behaviortreeentity);
                return;
            }
            behaviortreeentity setgoal(behaviortreeentity.origin);
            return;
        }
    }
    if (!is_true(behaviortreeentity.hasseenfavoriteenemy)) {
        if (isdefined(behaviortreeentity.favoriteenemy) && behaviortreeentity need_to_run()) {
            behaviortreeentity.hasseenfavoriteenemy = 1;
            if (level.dog_round_count <= 1) {
                self clientfield::set("ZombieDogVocals", 2);
            }
        }
    }
    if (isdefined(behaviortreeentity.favoriteenemy)) {
        if (isdefined(level.enemy_location_override_func)) {
            goalpos = [[ level.enemy_location_override_func ]](behaviortreeentity, behaviortreeentity.favoriteenemy);
            if (isdefined(goalpos)) {
                behaviortreeentity setgoal(goalpos);
                return;
            }
        }
        locomotion_target = get_locomotion_target(behaviortreeentity);
        if (isdefined(locomotion_target)) {
            repathdist = 16;
            if (!isdefined(behaviortreeentity.lasttargetposition) || distancesquared(behaviortreeentity.lasttargetposition, locomotion_target) > sqr(repathdist) || !behaviortreeentity haspath()) {
                behaviortreeentity function_a57c34b7(locomotion_target);
                behaviortreeentity.lasttargetposition = locomotion_target;
            }
        }
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0x48723ed3, Offset: 0x2e18
// Size: 0x2b0
function zombiedogshouldmelee(behaviortreeentity) {
    if (behaviortreeentity.var_9fde8624 === #"hash_2a5479b83161cb35") {
        return 0;
    }
    if (behaviortreeentity.var_9fde8624 === #"hash_28e36e7b7d5421f" && function_a82712bc(behaviortreeentity)) {
        return 1;
    }
    if (is_true(behaviortreeentity.ai.var_870d0893)) {
        shouldmelee = namespace_e292b080::zombieshouldmelee(behaviortreeentity);
        if (!shouldmelee) {
            if (behaviortreeentity.var_9fde8624 === #"hash_28e36e7b7d5421f") {
                if (isdefined(behaviortreeentity.favoriteenemy)) {
                    goal_info = behaviortreeentity function_4794d6a3();
                    if (is_true(goal_info.isatgoal)) {
                        test_origin = behaviortreeentity.favoriteenemy.origin;
                        dist_sq = distance2dsquared(behaviortreeentity.origin, test_origin);
                        meleedistsq = zombiebehavior::function_997f1224(behaviortreeentity);
                        if (dist_sq <= meleedistsq) {
                            if (test_origin[2] > behaviortreeentity.origin[2]) {
                                z_delta = test_origin[2] - behaviortreeentity.origin[2];
                                if (z_delta < 128) {
                                    return 1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return shouldmelee;
    }
    if (behaviortreeentity.ignoreall || !is_target_valid(behaviortreeentity, behaviortreeentity.favoriteenemy)) {
        return 0;
    }
    if (!is_true(level.intermission)) {
        meleedist = 72;
        if (distancesquared(behaviortreeentity.origin, behaviortreeentity.favoriteenemy.origin) < sqr(meleedist) && behaviortreeentity cansee(behaviortreeentity.favoriteenemy)) {
            return 1;
        }
    }
    return 0;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0xf21cc942, Offset: 0x30d0
// Size: 0x84
function zombiedogshouldwalk(behaviortreeentity) {
    if (is_true(behaviortreeentity.ai.var_870d0893) || isdefined(behaviortreeentity.var_9fde8624)) {
        return (behaviortreeentity getblackboardattribute("_locomotion_speed_zombie") === "locomotion_speed_walk");
    }
    return bb_getshouldrunstatus() == "walk";
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0x7481773e, Offset: 0x3160
// Size: 0x84
function zombiedogshouldrun(behaviortreeentity) {
    if (is_true(behaviortreeentity.ai.var_870d0893) || isdefined(behaviortreeentity.var_9fde8624)) {
        return (behaviortreeentity getblackboardattribute("_locomotion_speed_zombie") === "locomotion_speed_run");
    }
    return bb_getshouldrunstatus() == "run";
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0xb96016a6, Offset: 0x31f0
// Size: 0x34
function function_9c2fe7e6(behaviortreeentity) {
    return behaviortreeentity getblackboardattribute("_locomotion_speed_zombie") === "locomotion_speed_super_sprint";
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0x59ea21d4, Offset: 0x3230
// Size: 0x9a
function function_a82712bc(behaviortreeentity) {
    if (behaviortreeentity.var_9fde8624 === #"hash_28e36e7b7d5421f") {
        node = behaviortreeentity.traversestartnode;
        if (namespace_85745671::function_f4087909(node.var_597f08bf)) {
            behaviortreeentity.var_597f08bf = node.var_597f08bf;
            return true;
        }
        if (namespace_85745671::function_f4087909(behaviortreeentity.var_597f08bf)) {
            return true;
        }
        return false;
    }
    return false;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0x8e580a7c, Offset: 0x32d8
// Size: 0x68
function function_4a7e2ba0(behaviortreeentity) {
    if (!is_true(behaviortreeentity.takedamage)) {
        return false;
    }
    if (behaviortreeentity.var_9fde8624 === #"hash_28e36e7b7d5421f") {
        return true;
    }
    return false;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0x8e35c6e0, Offset: 0x3348
// Size: 0xec
function function_c13b6bae(behaviortreeentity) {
    in_vehicle = isplayer(behaviortreeentity.favoriteenemy) && behaviortreeentity.favoriteenemy isinvehicle();
    if (in_vehicle) {
        yaw = vectortoyaw(behaviortreeentity.favoriteenemy.origin - behaviortreeentity.origin);
        behaviortreeentity orientmode("face angle", yaw);
        behaviortreeentity forceteleport(behaviortreeentity.origin, (behaviortreeentity.angles[0], yaw, behaviortreeentity.angles[2]), 0);
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0xd9b932a9, Offset: 0x3440
// Size: 0xd6
function function_f0beb97c(entity) {
    if (entity.var_9fde8624 === #"hash_2a5479b83161cb35") {
        if (isdefined(entity.favoriteenemy)) {
            if (is_true(entity.var_326351f)) {
                goal_info = entity function_4794d6a3();
                if (isdefined(goal_info.overridegoalpos)) {
                    dist_sq = distancesquared(entity.origin, goal_info.overridegoalpos);
                    if (dist_sq < sqr(32)) {
                        return true;
                    }
                }
            }
        }
    }
    return false;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0x45f95215, Offset: 0x3520
// Size: 0x24
function private function_45cf2e16(*entity) {
    level.zombie_total++;
    level.zombie_total_subtract++;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0xbea1ce2a, Offset: 0x3550
// Size: 0x166
function use_low_attack() {
    if (!isdefined(self.enemy) || !isplayer(self.enemy)) {
        return false;
    }
    height_diff = self.enemy.origin[2] - self.origin[2];
    low_enough = 30;
    if (height_diff < low_enough && self.enemy getstance() == "prone") {
        return true;
    }
    melee_origin = (self.origin[0], self.origin[1], self.origin[2] + 65);
    enemy_origin = (self.enemy.origin[0], self.enemy.origin[1], self.enemy.origin[2] + 32);
    if (!bullettracepassed(melee_origin, enemy_origin, 0, self)) {
        return true;
    }
    return false;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 2, eflags: 0x2 linked
// Checksum 0x1b1f3749, Offset: 0x36c0
// Size: 0xa0
function zombiedogmeleeaction(behaviortreeentity, asmstatename) {
    behaviortreeentity clearpath();
    context = "high";
    if (behaviortreeentity use_low_attack()) {
        context = "low";
    }
    behaviortreeentity setblackboardattribute("_context", context);
    animationstatenetworkutility::requeststate(behaviortreeentity, asmstatename);
    return 5;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 2, eflags: 0x2 linked
// Checksum 0x9e098cfa, Offset: 0x3768
// Size: 0x38
function zombiedogmeleeactionterminate(behaviortreeentity, *asmstatename) {
    asmstatename setblackboardattribute("_context", undefined);
    return 4;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 4, eflags: 0x2 linked
// Checksum 0xd2255158, Offset: 0x37a8
// Size: 0x44
function zombiedoggravity(entity, *attribute, *oldvalue, value) {
    oldvalue setblackboardattribute("_low_gravity", value);
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0xe0d3f66a, Offset: 0x37f8
// Size: 0x186
function function_5e50d260(dog) {
    if (is_true(dog.ai.var_870d0893)) {
        return;
    }
    if (!isdefined(dog.favoriteenemy) || !zm_utility::is_player_valid(dog.favoriteenemy)) {
        return;
    }
    if (!isdefined(dog.var_93a62fe) || dog.favoriteenemy == dog.var_93a62fe) {
        return;
    }
    if (!is_true(dog.var_2eda3fd0)) {
        dog.var_90957231 = dog zm_utility::approximate_path_dist(dog.favoriteenemy);
        dog.var_2eda3fd0 = 1;
        return;
    }
    new_target_dist = dog zm_utility::approximate_path_dist(dog.var_93a62fe);
    if (isdefined(dog.var_90957231)) {
        if (isdefined(new_target_dist) && dog.var_90957231 - new_target_dist > 200) {
            dog function_e856134(dog, dog.var_93a62fe);
        }
    } else if (isdefined(new_target_dist)) {
        dog function_e856134(dog, dog.var_93a62fe);
    }
    dog.var_2eda3fd0 = 0;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 2, eflags: 0x2 linked
// Checksum 0x2728bc10, Offset: 0x3988
// Size: 0x64
function function_e856134(dog, new_target) {
    function_ea61b64a(dog);
    if (!isdefined(new_target.hunted_by)) {
        new_target.hunted_by = 0;
    }
    dog.favoriteenemy = new_target;
    dog.favoriteenemy.hunted_by++;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0x9a93949d, Offset: 0x39f8
// Size: 0x6e
function function_ea61b64a(dog) {
    if (isdefined(dog.favoriteenemy) && isdefined(dog.favoriteenemy.hunted_by) && dog.favoriteenemy.hunted_by > 0) {
        dog.favoriteenemy.hunted_by--;
    }
    dog.favoriteenemy = undefined;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0xfcda3072, Offset: 0x3a70
// Size: 0xdc
function private function_7ee905fc(*params) {
    if (self.var_9fde8624 === #"hash_2a5479b83161cb35") {
        function_120c3407(self);
    }
    if (self ishidden()) {
        return;
    }
    self callback::callback(#"on_dog_killed");
    if (!is_true(self.ai.var_870d0893)) {
        if (isalive(self)) {
            self kill(undefined, undefined, undefined, undefined, 0, 1);
        }
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0xbcd329ff, Offset: 0x3b58
// Size: 0xcc
function private function_b077b73d(*time) {
    if (self.var_9fde8624 === #"hash_28e36e7b7d5421f" || self.var_9fde8624 === #"hash_2a5479b83161cb35") {
        context = self getblackboardattribute("_context");
        if (isdefined(context) && (context == "low" || context == "high")) {
            self ai::stun();
            println("<unknown string>");
        }
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0x4bc31034, Offset: 0x3c30
// Size: 0x94
function private function_ca4ce82b(*s_params) {
    self clientfield::set("ZombieDogVocals", 0);
    if (self.var_9fde8624 === #"hash_2a5479b83161cb35") {
        self playsound(#"hash_6e603d5f1970365b");
        return;
    }
    self playsound(#"hash_550a93f75490460f");
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0x9095c2, Offset: 0x3cd0
// Size: 0x64
function private function_92178cf8(*s_params) {
    if (isdefined(self.var_73d04341)) {
        self.var_73d04341 delete();
        self ghost();
        self deletedelay();
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0x8c51993f, Offset: 0x3d40
// Size: 0x24
function function_dd2995a8(*params) {
    function_120c3407(self);
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x4
// Checksum 0x2a9ed850, Offset: 0x3d70
// Size: 0x36
function private function_84460929(entity) {
    entity.var_3f59be70 = gettime() + randomintrange(4500, 6000);
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0xed136092, Offset: 0x3db0
// Size: 0x10
function private function_1a2ec6cf(*entity) {
    return true;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0xb6f8517e, Offset: 0x3dc8
// Size: 0x36
function private function_731939c2(entity) {
    entity.var_3f59be70 = gettime() + randomintrange(4500, 6000);
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0xce3fbfa, Offset: 0x3e08
// Size: 0x1ac
function function_77b7ec2d(entity) {
    if (entity.var_9fde8624 === #"hash_28e36e7b7d5421f") {
        return false;
    }
    if (!is_true(entity.var_91a12932)) {
        return false;
    }
    if (!isdefined(entity.favoriteenemy) || !isplayer(entity.favoriteenemy)) {
        return false;
    }
    if (isdefined(entity.var_3f59be70) && entity.var_3f59be70 > gettime()) {
        return false;
    }
    disttoenemysq = distancesquared(entity.origin, entity.favoriteenemy.origin);
    if (disttoenemysq < sqr(1800) && disttoenemysq >= sqr(400)) {
        if (util::within_fov(entity.origin, entity.angles, entity.favoriteenemy.origin, cos(30))) {
            /#
                record3dtext("<unknown string>", entity.origin + (0, 0, 10), (0, 1, 0), "<unknown string>");
            #/
            return true;
        }
    }
    return false;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 5, eflags: 0x2 linked
// Checksum 0xd01f0e0c, Offset: 0x3fc0
// Size: 0x84
function function_bdd562d7(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration animmode("zonly_physics", 0);
    mocompduration.blockingpain = 1;
    mocompduration.usegoalanimweight = 1;
    mocompduration pathmode("dont move");
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 5, eflags: 0x2 linked
// Checksum 0xf025371e, Offset: 0x4050
// Size: 0x2c
function function_5c3d4c42(*entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 5, eflags: 0x2 linked
// Checksum 0x74f5cf6e, Offset: 0x4088
// Size: 0x7c
function function_826afb7e(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration.blockingpain = 0;
    mocompduration.usegoalanimweight = 0;
    mocompduration pathmode("move allowed");
    mocompduration orientmode("face default");
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0x356c1e9d, Offset: 0x4110
// Size: 0x16
function function_82f55309(entity) {
    entity.idletime = gettime();
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0x97c7c8f8, Offset: 0x4130
// Size: 0x86
function function_2d500a7e(entity) {
    if (is_true(entity.ai.var_870d0893)) {
        return;
    }
    if (gettime() - entity.idletime > 2500) {
        if (is_true(entity.var_5372f2b4) || isdefined(entity.var_94d159ee)) {
            entity.var_5372f2b4 = 0;
            entity.var_94d159ee = undefined;
        }
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0x8c316acd, Offset: 0x41c0
// Size: 0x64c
function function_70daebd0(entity) {
    if (self.var_9fde8624 !== #"hash_2a5479b83161cb35") {
        return false;
    }
    if (is_true(self.var_1fa24724)) {
        return false;
    }
    if (entity.ignoreall || !isdefined(entity.favoriteenemy) || !namespace_85745671::is_player_valid(entity.favoriteenemy) && entity.team === level.zombie_team) {
        return false;
    }
    in_vehicle = isplayer(entity.favoriteenemy) && entity.favoriteenemy isinvehicle();
    enemydistsq = distancesquared(entity.origin, entity.favoriteenemy.origin);
    if (enemydistsq < sqr(96) && !is_true(entity.var_4b07f09f) && !in_vehicle) {
        yawtoenemy = angleclamp180(entity.angles[1] - vectortoangles(entity.favoriteenemy.origin - entity.origin)[1]);
        if (abs(yawtoenemy) <= (isdefined(entity.var_1c0eb62a) ? entity.var_1c0eb62a : 60)) {
            return false;
        }
        return true;
    }
    player = entity.favoriteenemy;
    if (is_true(player.var_d31a4da6) && !in_vehicle) {
        if (player.var_500fbd91 !== entity) {
            return false;
        }
    }
    if (isdefined(player.var_fee14b00) && gettime() <= player.var_fee14b00) {
        return false;
    }
    vehicle = undefined;
    var_c0e2ccb = entity.favoriteenemy.origin[2];
    if (in_vehicle) {
        vehicle = player getvehicleoccupied();
        var_c0e2ccb = vehicle.origin[2];
    }
    z_dist = abs(entity.origin[2] - var_c0e2ccb);
    if (z_dist > 36) {
        return false;
    }
    if (!in_vehicle && !entity cansee(player)) {
        return false;
    }
    if (in_vehicle) {
        if (sqr(vehicle getspeed()) < length2dsquared(entity getvelocity())) {
            forward_vector = rotatepointaroundaxis((1, 0, 0), (0, 0, 1), vehicle.angles[1]);
            dot = vectordot(vectornormalize(entity.origin - entity.favoriteenemy.origin), forward_vector);
            if (abs(dot) > 0.5) {
                return false;
            }
            var_9b757147 = rotatepointaroundaxis((0, 1, 0), (0, 0, 1), vehicle.angles[1]);
            projected = vectorprojection(entity.favoriteenemy.origin - vehicle.origin, var_9b757147);
            if (lengthsquared(projected) > 2) {
                dot = vectordot(entity.origin - entity.favoriteenemy.origin, projected);
                if (dot <= 0) {
                    return false;
                }
            }
        }
    }
    if (enemydistsq < sqr(256)) {
        yawtoenemy = angleclamp180(entity.angles[1] - vectortoangles(entity.favoriteenemy.origin - entity.origin)[1]);
        if (abs(yawtoenemy) <= 80) {
            return true;
        }
        var_5a73f96c = in_vehicle ? sqr(144) : sqr(96);
        if (enemydistsq < var_5a73f96c && (!entity haspath() || in_vehicle)) {
            return true;
        }
    }
    return false;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0xd2fb4251, Offset: 0x4818
// Size: 0x276
function function_9baf0ee8(entity) {
    if (self.var_9fde8624 !== #"hash_2a5479b83161cb35") {
        return false;
    }
    if (!is_true(entity.var_522042)) {
        return false;
    }
    player = entity.favoriteenemy;
    if (isdefined(player)) {
        if (isdefined(player.var_fee14b00) && gettime() <= player.var_fee14b00) {
            return false;
        }
    }
    if (entity.ignoreall || !isdefined(entity.favoriteenemy) || !namespace_85745671::is_player_valid(entity.favoriteenemy) && entity.team === level.zombie_team) {
        return false;
    }
    z_dist = abs(entity.origin[2] - entity.favoriteenemy.origin[2]);
    if (z_dist > 50) {
        return false;
    }
    yawtoenemy = angleclamp180(entity.angles[1] - vectortoangles(entity.favoriteenemy.origin - entity.origin)[1]);
    in_vehicle = isplayer(player) && player isinvehicle();
    var_5490629e = in_vehicle ? 30 : 60;
    if (abs(yawtoenemy) > var_5490629e) {
        return false;
    }
    enemydistsq = distancesquared(entity.origin, entity.favoriteenemy.origin);
    if (enemydistsq < sqr(96)) {
        return true;
    }
    return false;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0xf54dc5e6, Offset: 0x4a98
// Size: 0x4d2
function private function_67ac704b(entity) {
    if (is_true(entity.ignoreall)) {
        return 0;
    }
    if (is_true(entity.disabletargetservice)) {
        return 0;
    }
    if (is_true(entity.var_fa801b4c)) {
        var_eef1279d = 0;
        if (distancesquared(entity.origin, entity.favoriteenemy.origin) >= sqr(200)) {
            var_eef1279d = 1;
        }
        if (var_eef1279d && !is_true(entity.var_cc94acec) && !is_true(entity.var_b11272e3)) {
            if (!isdefined(entity.var_aaeee932)) {
                entity.var_aaeee932 = 0;
                if (math::cointoss()) {
                    entity.var_aaeee932 = 2;
                }
            }
            entity function_4ab2a687();
        }
    } else {
        enemy = entity.favoriteenemy;
        dist_sq = distancesquared(entity.origin, enemy.origin);
        if (dist_sq < sqr(240)) {
            entity.var_92457a8d = 1;
            entity.var_d873b994 = 0;
            entity.var_eb166a17 = 1;
        }
    }
    if (is_true(entity.var_cc94acec) && !is_true(entity.var_b11272e3)) {
        self function_a57c34b7(entity.var_826049b6);
        if (entity function_5f5b0c1a()) {
            entity.var_b82726ff = 1;
            entity namespace_85745671::function_9758722(#"super_sprint");
        } else if (entity.var_b82726ff === 1) {
            entity namespace_85745671::function_9758722(#"super_sprint");
        } else {
            entity namespace_85745671::function_9758722(#"walk");
        }
        if (distancesquared(entity.origin, entity.var_826049b6) <= sqr(32)) {
            entity.var_b11272e3 = 1;
            if (entity function_5f5b0c1a() === 0 && is_true(entity.var_4b07f09f)) {
                entity.var_b82726ff = 0;
            } else {
                entity.var_b82726ff = 1;
            }
            self function_d4c687c9();
            if (!entity function_5f5b0c1a()) {
                entity.var_92457a8d = 1;
            }
        }
        return 1;
    }
    if (distancesquared(entity.origin, entity.favoriteenemy.origin) <= sqr(64)) {
        entity.var_b11272e3 = 0;
        entity.var_cc94acec = 0;
        entity namespace_85745671::function_9758722(#"super_sprint");
        entity.var_b82726ff = 1;
        return;
    }
    if (entity function_5f5b0c1a()) {
        entity namespace_85745671::function_9758722(#"super_sprint");
        entity.var_b82726ff = 1;
        function_40bf36ef(entity);
        return;
    }
    entity.var_cc94acec = 0;
    entity.var_b11272e3 = 0;
    entity.var_aaeee932 = undefined;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x6 linked
// Checksum 0xb6a8ddc2, Offset: 0x4f78
// Size: 0x21c
function private function_4ab2a687() {
    var_77f4782e = 45;
    if (isdefined(self.var_aaeee932)) {
        if (self.var_aaeee932 == 0) {
            var_77f4782e = -45;
        } else if (self.var_aaeee932 == 1) {
            var_77f4782e = -22.5;
        } else if (self.var_aaeee932 == 3) {
            var_77f4782e = 22.5;
        }
        self.var_aaeee932++;
        if (self.var_aaeee932 > 3) {
            self.var_aaeee932 = 0;
        }
    }
    enemy = self.favoriteenemy;
    var_4a8dc744 = vectortoangles(self.origin - self.favoriteenemy.origin)[1];
    var_36294491 = absangleclamp360(var_4a8dc744 + var_77f4782e);
    var_ef2595f9 = anglestoforward((0, var_36294491, 0));
    var_9b0fde6d = enemy.origin + var_ef2595f9 * 400;
    var_b4a11ac2 = getclosestpointonnavmesh(var_9b0fde6d, 128, self getpathfindingradius());
    if (isdefined(var_b4a11ac2)) {
        path_success = self findpath(self.origin, var_b4a11ac2, 1, 0);
        if (path_success) {
            self.var_826049b6 = var_b4a11ac2;
            self.var_cc94acec = 1;
            /#
                recordsphere(self.var_826049b6, 3, (0, 1, 0), "<unknown string>");
            #/
            return true;
        }
    }
    return false;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x6 linked
// Checksum 0x68a63c50, Offset: 0x51a0
// Size: 0x4a
function private function_5f5b0c1a() {
    player = self.favoriteenemy;
    if (isdefined(player)) {
        if (!isdefined(player.var_fee14b00) || gettime() > player.var_fee14b00) {
            return true;
        }
    }
    return false;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0x6bdcf55c, Offset: 0x51f8
// Size: 0x584
function function_90da9686(entity) {
    if (is_true(entity.var_1fa24724)) {
        if (!isplayer(entity.enemy) || float(gettime() - entity.enemy.var_dbb28b34) / 1000 > 5) {
            entity.var_6324ed63 = undefined;
        }
        goal = getclosestpointonnavmesh(entity.origin, 2 * 39.3701, entity getpathfindingradius() * 1.2);
        if (isdefined(level.var_d1a2ae79)) {
            var_8d66aa5c = [[ level.var_d1a2ae79 ]](self, goal);
            if (isdefined(var_8d66aa5c)) {
                goal = var_8d66aa5c;
            }
        }
        if (isdefined(goal)) {
            entity setgoal(goal);
        } else {
            entity setgoal(self.origin);
        }
    }
    if (!isdefined(entity.enemy_override) && !isdefined(entity.attackable) && !awareness::function_2bc424fd(entity, entity.enemy)) {
        awareness::set_state(entity, #"wander");
        return;
    }
    if (isdefined(entity.var_b238ef38) && isdefined(entity.var_b238ef38.position) && is_true(entity.var_b238ef38.slot.on_navmesh)) {
        entity namespace_e292b080::zombieupdategoal(entity.var_b238ef38.position);
        return;
    }
    if (isdefined(entity.enemy_override)) {
        goal = getclosestpointonnavmesh(entity.enemy_override.origin, 200, entity getpathfindingradius() * 1.2);
        if (isdefined(goal)) {
            entity namespace_e292b080::zombieupdategoal(goal);
            return;
        }
    }
    if (isdefined(entity.favoriteenemy) && !is_true(entity.var_1fa24724)) {
        dist_sq = distancesquared(entity.origin, entity.favoriteenemy.origin);
        if (distancesquared(entity.origin, entity.favoriteenemy.origin) >= sqr(600) && !is_true(entity.var_cc94acec) || is_true(entity.var_bee4eef1)) {
            function_40bf36ef(entity);
            return;
        }
        if (is_true(entity.var_92457a8d)) {
            if (is_true(entity.var_d873b994)) {
                function_c1de0139(entity);
            } else if (is_true(entity.var_eb166a17)) {
                if (entity function_5f5b0c1a() && !entity function_a168099()) {
                    function_9e361d71(entity);
                } else {
                    function_c1de0139(entity);
                }
            } else if (is_true(entity.var_522042) && !is_true(entity.var_2876c0b5)) {
                function_473c71d0(entity);
            } else if (isplayer(entity.favoriteenemy) && entity.favoriteenemy isinvehicle() && !is_true(entity.var_2876c0b5)) {
                function_40bf36ef(entity);
            }
            return;
        }
        function_67ac704b(entity);
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0xc67d93b6, Offset: 0x5788
// Size: 0xac
function private function_cb259df5(entity) {
    if (is_true(entity.ai.var_870d0893)) {
        return;
    }
    if (!isdefined(entity.favoriteenemy) || !zm_utility::is_player_valid(entity.favoriteenemy)) {
        return;
    }
    if (!isdefined(entity.var_93a62fe) || entity.favoriteenemy == entity.var_93a62fe) {
        return;
    }
    entity function_e856134(entity, entity.var_93a62fe);
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0x4cb77c05, Offset: 0x5840
// Size: 0x4fc
function private function_2cf71b2(entity) {
    if (is_true(entity.ai.var_870d0893)) {
        return;
    }
    if (!is_target_valid(entity, entity.favoriteenemy) || entity.favoriteenemy !== entity.var_8a3828c6) {
        if (isdefined(entity.favoriteenemy)) {
            function_ea61b64a(entity);
            entity.hasseenfavoriteenemy = 0;
        }
        entity.favoriteenemy = get_favorite_enemy(entity);
    }
    entity.var_326351f = 0;
    if (isdefined(entity.favoriteenemy)) {
        if (isdefined(level.var_d22435d9)) {
            [[ level.var_d22435d9 ]](entity);
        }
        if (is_true(entity.var_1fa24724) && isplayer(entity.favoriteenemy)) {
            if (float(entity.favoriteenemy.var_4ca11261 - entity.favoriteenemy.var_7df98a95) / 1000 > 2) {
                var_2a4e3502 = zm_utility::function_ebd87099(entity.favoriteenemy);
                if (isdefined(var_2a4e3502)) {
                    goal = getclosestpointonnavmesh(var_2a4e3502.goal_origin, var_2a4e3502.var_b9e9cdf3, entity getpathfindingradius() * 1.2);
                }
                if (!isdefined(goal)) {
                    goal = getclosestpointonnavmesh(entity.favoriteenemy.origin, 128, entity getpathfindingradius() * 1.2);
                }
                if (isdefined(goal)) {
                    entity.var_326351f = 1;
                    entity function_a57c34b7(goal);
                    return;
                } else {
                    /#
                        record3dtext("<unknown string>" + entity.favoriteenemy.origin, entity.origin + (0, 0, 20), (1, 0, 0));
                    #/
                }
            }
        }
        dist_sq = distancesquared(entity.origin, entity.favoriteenemy.origin);
        if (distancesquared(entity.origin, entity.favoriteenemy.origin) >= sqr(600) && !is_true(entity.var_cc94acec) || is_true(entity.var_bee4eef1)) {
            function_40bf36ef(entity);
        } else if (is_true(entity.var_92457a8d)) {
            if (is_true(entity.var_d873b994)) {
                function_c1de0139(entity);
            } else if (is_true(entity.var_eb166a17)) {
                if (entity function_5f5b0c1a() && !entity function_a168099()) {
                    function_9e361d71(entity);
                } else {
                    function_c1de0139(entity);
                }
            } else if (is_true(entity.var_522042) && !is_true(entity.var_2876c0b5)) {
                function_473c71d0(entity);
            }
        } else {
            function_67ac704b(entity);
        }
        return;
    }
    if (isdefined(level.no_target_override)) {
        [[ level.no_target_override ]](entity);
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0xa49eb4dd, Offset: 0x5d48
// Size: 0x8e
function private function_195e0b5c(entity) {
    entity.var_92457a8d = 0;
    entity.var_f80163dc = undefined;
    entity.var_cc94acec = 0;
    entity.var_b11272e3 = 0;
    entity.var_aaeee932 = undefined;
    entity.var_5372f2b4 = 0;
    entity.var_94d159ee = undefined;
    entity.var_64a351a7 = 0;
    entity.var_d873b994 = 1;
    entity.var_2876c0b5 = 0;
    entity.var_522042 = 0;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0xcde6c2f, Offset: 0x5de0
// Size: 0x1fc
function private function_40bf36ef(entity) {
    if (isplayer(entity.favoriteenemy)) {
        goalent = zm_ai_utility::function_a2e8fd7b(entity, entity.favoriteenemy);
        if (isdefined(goalent.last_valid_position)) {
            goalpos = getclosestpointonnavmesh(goalent.last_valid_position, 64, entity getpathfindingradius());
            if (!isdefined(goalpos)) {
                goalpos = goalent.origin;
            }
        } else {
            goalpos = goalent.origin;
        }
    } else {
        goalpos = getclosestpointonnavmesh(entity.favoriteenemy.origin, 64, entity getpathfindingradius());
        if (!isdefined(goalpos) && isactor(entity.favoriteenemy) && entity.favoriteenemy function_dd070839() && isdefined(entity.favoriteenemy.traversestartnode)) {
            goalpos = entity.favoriteenemy.traversestartnode.origin;
        }
        if (!isdefined(goalpos)) {
            goalpos = entity.origin;
        }
    }
    goal_info = entity function_4794d6a3();
    if (isdefined(goal_info.overridegoalpos)) {
        function_195e0b5c(entity);
        entity function_d4c687c9();
    }
    entity namespace_e292b080::zombieupdategoal(goalpos);
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0xf99dc553, Offset: 0x5fe8
// Size: 0x144
function private function_5212a796(entity) {
    if (!isdefined(entity.var_f80163dc)) {
        entity.var_f80163dc = randomint(8);
    } else {
        entity.var_f80163dc++;
        if (entity.var_f80163dc >= 8) {
            entity.var_f80163dc = 0;
        }
    }
    entity function_1e0ddac1();
    if (isdefined(entity.var_94d159ee)) {
        yaw = entity function_fc5e132e();
        entity setblackboardattribute("_zombie_dog_tracking_turn_yaw", yaw);
        entity function_a57c34b7(entity.var_94d159ee);
        entity.var_5372f2b4 = 1;
        /#
            record3dtext("<unknown string>" + yaw, entity.origin + (0, 0, 20), (0, 1, 1));
        #/
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0x15fc9e27, Offset: 0x6138
// Size: 0xa6
function function_fc5e132e() {
    if (isdefined(self.var_94d159ee)) {
        track_pos = self.var_94d159ee;
    } else {
        enemy = self.favoriteenemy;
        if (isdefined(enemy)) {
            track_pos = enemy.last_valid_position;
        }
    }
    if (isdefined(track_pos)) {
        turnyaw = absangleclamp360(self.angles[1] - vectortoangles(track_pos - self.origin)[1]);
        return turnyaw;
    }
    return 0;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0x1f7ef891, Offset: 0x61e8
// Size: 0x36c
function private function_c1de0139(entity) {
    in_vehicle = isplayer(entity.favoriteenemy) && entity.favoriteenemy isinvehicle();
    if (in_vehicle) {
        var_ec050b6b = 10;
        vehicle = entity.favoriteenemy getvehicleoccupied();
        speed = abs(vehicle getspeed());
        if (speed > var_ec050b6b) {
            entity.var_d873b994 = 0;
            entity.var_64a351a7 = 1;
            entity.var_5372f2b4 = 0;
            entity.var_eb166a17 = 0;
            return;
        }
    }
    if (!is_true(entity.var_5372f2b4) || !isdefined(entity.var_94d159ee)) {
        function_5212a796(entity);
        return;
    }
    goal_info = entity function_4794d6a3();
    if (!is_true(goal_info.var_9e404264)) {
        var_30d5a1c5 = distance2dsquared(entity.origin, entity.var_94d159ee);
        z_diff = abs(entity.origin[2] - entity.var_94d159ee[2]);
        if (var_30d5a1c5 < 8 && z_diff < 32) {
            var_e87dbaa1 = 1;
        }
    }
    if (is_true(goal_info.var_9e404264) || is_true(var_e87dbaa1)) {
        entity.var_5372f2b4 = 0;
        entity.var_94d159ee = undefined;
        if (is_true(entity.var_b82726ff)) {
            entity.var_b82726ff = 0;
            entity namespace_85745671::function_9758722(#"walk");
            entity.var_64a351a7 = 1;
            entity thread function_5835a872();
        }
        if (is_true(entity.var_d873b994)) {
            entity.var_d873b994 = 0;
            entity.var_eb166a17 = 1;
            /#
                record3dtext("<unknown string>", entity.origin + (0, 0, 10), (0, 1, 1));
            #/
        }
        function_5212a796(entity);
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0x434c38ad, Offset: 0x6560
// Size: 0x334
function private function_473c71d0(entity) {
    in_vehicle = isdefined(entity.favoriteenemy) && isplayer(entity.favoriteenemy) && entity.favoriteenemy isinvehicle();
    if (in_vehicle) {
        vehicle = entity.favoriteenemy getvehicleoccupied();
        goal = namespace_85745671::function_401070dd(vehicle, entity.favoriteenemy);
        if (isvec(goal)) {
            goal += vectornormalize(goal - vehicle.origin) * 100;
            goal = getclosestpointonnavmesh(goal, 200, entity getpathfindingradius());
            if (isvec(goal)) {
                entity function_a57c34b7(goal);
            }
        }
    } else {
        last_pos = entity.favoriteenemy.last_valid_position;
        if (!isdefined(last_pos)) {
            last_pos = getclosestpointonnavmesh(entity.favoriteenemy.origin, 128, self getpathfindingradius() * 1.2);
            if (!isdefined(last_pos)) {
                last_pos = entity.favoriteenemy.origin;
            }
        }
        entity function_a57c34b7(last_pos);
    }
    goal_info = entity function_4794d6a3();
    if (is_true(goal_info.var_9e404264)) {
        entity.var_cb8b801c = 1;
        /#
            record3dtext("<unknown string>", entity.origin, (0, 1, 1));
        #/
        return;
    }
    player = entity.favoriteenemy;
    if (isdefined(player)) {
        if (is_true(player.var_d31a4da6)) {
            if (entity === player.var_500fbd91) {
                /#
                    record3dtext("<unknown string>", entity.origin, (0, 1, 0));
                #/
                return;
            }
            /#
                record3dtext("<unknown string>", entity.origin, (1, 0, 0));
            #/
        }
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x6 linked
// Checksum 0x90ef1e3f, Offset: 0x68a0
// Size: 0x114
function private function_9e361d71(entity) {
    player = entity.favoriteenemy;
    if (isdefined(player)) {
        if (!is_true(player.var_d31a4da6)) {
            player.var_d31a4da6 = 1;
            player.var_f056b7dd = gettime();
            player.var_500fbd91 = entity;
            player thread function_a8adfa8e();
            entity.var_eb166a17 = 0;
            entity.var_5372f2b4 = 0;
            entity.var_94d159ee = undefined;
            entity.var_522042 = 1;
            yaw = entity function_fc5e132e();
            entity setblackboardattribute("_zombie_dog_tracking_turn_yaw", yaw);
            /#
                record3dtext("<unknown string>" + yaw, entity.origin, (0, 1, 0));
            #/
        }
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x6 linked
// Checksum 0x5624c784, Offset: 0x69c0
// Size: 0x96
function private function_a8adfa8e() {
    self notify("7613b08d7e1f52f7");
    self endon("7613b08d7e1f52f7");
    self endon(#"death");
    while (true) {
        entity = self.var_500fbd91;
        if (isdefined(entity)) {
            if (!isdefined(entity.favoriteenemy) || entity.favoriteenemy != self) {
                self.var_d31a4da6 = 0;
                self.var_500fbd91 = 0;
                return;
            }
        }
        waitframe(1);
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0xa0fe4926, Offset: 0x6a60
// Size: 0xbc
function function_120c3407(entity) {
    player = entity.favoriteenemy;
    if (isdefined(player)) {
        if (is_true(player.var_d31a4da6)) {
            if (!isdefined(player.var_500fbd91) || player.var_500fbd91 == entity) {
                player.var_d31a4da6 = 0;
                player.var_500fbd91 = undefined;
                /#
                    record3dtext("<unknown string>", entity.origin, (1, 0.5, 0));
                #/
            }
        }
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x6 linked
// Checksum 0xf57b74f0, Offset: 0x6b28
// Size: 0xf4
function private function_a168099() {
    player = self.favoriteenemy;
    if (isdefined(player)) {
        if (is_true(player.var_d31a4da6)) {
            var_10eeca9c = player.var_f056b7dd + 10000;
            if (gettime() > var_10eeca9c) {
                /#
                    record3dtext("<unknown string>", self.origin + (0, 0, 30), (0, 1, 0));
                #/
                player.var_d31a4da6 = 0;
                player.var_500fbd91 = undefined;
                return false;
            }
            /#
                record3dtext("<unknown string>", self.origin + (0, 0, 30), (1, 0, 0));
            #/
            return true;
        }
    }
    return false;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x6 linked
// Checksum 0x5bb579d3, Offset: 0x6c28
// Size: 0x140
function private function_5835a872() {
    self notify("481ea84e9c4d773d");
    self endon("481ea84e9c4d773d");
    self endon(#"death");
    while (true) {
        if (isdefined(self.favoriteenemy)) {
            dist_sq = distancesquared(self.origin, self.favoriteenemy.origin);
            if (dist_sq > sqr(360)) {
                self.var_92457a8d = 0;
                self.var_2876c0b5 = 0;
                self.var_522042 = 0;
                self.var_eb166a17 = 0;
                self.var_5372f2b4 = 0;
                self.var_94d159ee = undefined;
                function_120c3407(self);
                self namespace_85745671::function_9758722(#"super_sprint");
                /#
                    record3dtext("<unknown string>", self.origin, (0, 1, 0));
                #/
                return;
            }
        }
        waitframe(1);
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x6 linked
// Checksum 0xfd6a15df, Offset: 0x6d70
// Size: 0x50a
function private function_1e0ddac1() {
    var_77f4782e = 45 * self.var_f80163dc;
    self.var_f80163dc++;
    if (self.var_f80163dc >= 8) {
        self.var_f80163dc = 0;
    }
    enemy = self.favoriteenemy;
    var_38cb8547 = vectortoangles(self.origin - self.favoriteenemy.origin)[1];
    var_c26841f8 = angleclamp180(var_38cb8547 + var_77f4782e);
    var_c133cecc = anglestoforward((0, var_c26841f8, 0));
    var_47ce0158 = randomintrange(120, 240);
    var_9aa88e16 = enemy.origin + var_c133cecc * var_47ce0158;
    var_a8d0b911 = getclosestpointonnavmesh(var_9aa88e16, 128, self getpathfindingradius() * 1.2);
    if (isdefined(var_a8d0b911)) {
        var_1e7bd768 = self getpathfindingradius() * 2;
        dist_sq = distancesquared(self.origin, var_a8d0b911);
        if (dist_sq < sqr(var_1e7bd768)) {
            /#
                recordline(self.origin, var_a8d0b911, (1, 0, 0));
                recordcircle(var_a8d0b911, 16, (1, 0, 0));
                record3dtext("<unknown string>", self.origin, (1, 0, 0));
            #/
            return false;
        }
        turnyaw = absangleclamp360(self.angles[1] - vectortoangles(var_a8d0b911 - self.origin)[1]);
        if (turnyaw < 15 || turnyaw > 345) {
            /#
                recordline(self.origin, var_a8d0b911, (1, 0, 0));
                recordcircle(var_a8d0b911, 16, (1, 0, 0));
                record3dtext("<unknown string>", self.origin, (1, 0, 0));
            #/
            return false;
        }
        if (is_true(self.var_cc7af248)) {
            zone = zm_zonemgr::get_zone_from_position(var_a8d0b911);
            if (!isdefined(zone) || !is_true(level.zones[zone].is_enabled)) {
                /#
                    recordline(self.origin, var_a8d0b911, (1, 0, 0));
                    recordcircle(var_a8d0b911, 20, (1, 0, 0));
                    record3dtext("<unknown string>", self.origin, (1, 0, 0));
                #/
                return false;
            }
            if (!zm_utility::check_point_in_playable_area(var_a8d0b911)) {
                /#
                    recordline(self.origin, var_a8d0b911, (1, 0, 0));
                    recordcircle(var_a8d0b911, 16, (1, 0, 0));
                    record3dtext("<unknown string>", self.origin, (1, 0, 0));
                #/
                return false;
            }
        }
        /#
            recordline(self.origin, var_a8d0b911, (0, 1, 0));
            recordcircle(var_a8d0b911, 16, (0, 1, 0));
            record3dtext("<unknown string>", self.origin, (0, 1, 0));
        #/
        self.var_94d159ee = var_a8d0b911;
        return true;
    }
    return false;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 2, eflags: 0x6 linked
// Checksum 0x6fa902fb, Offset: 0x7288
// Size: 0x48
function private function_856447f6(entity, asmstatename) {
    animationstatenetworkutility::requeststate(entity, asmstatename);
    pa_cl_vport_zscale_4(entity);
    return 5;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 2, eflags: 0x6 linked
// Checksum 0xf97e8ab0, Offset: 0x72d8
// Size: 0x1d8
function private function_e87d4fff(entity, *asmstatename) {
    if (asmstatename asmgetstatus() == "asm_status_complete") {
        return 4;
    }
    if (isdefined(asmstatename.hit_ent) || !isdefined(asmstatename.favoriteenemy) || !is_true(asmstatename.var_47c91780)) {
        return 5;
    }
    eye_pos = asmstatename util::get_eye();
    enemy_eye_pos = asmstatename.favoriteenemy util::get_eye();
    meleerange = asmstatename.meleeweapon.aimeleerange;
    if (isplayer(asmstatename.favoriteenemy)) {
        if (asmstatename.favoriteenemy getstance() == "prone") {
            meleerange *= 1.5;
        }
        if (asmstatename.favoriteenemy isinvehicle()) {
            enemy_eye_pos = asmstatename.favoriteenemy getcentroid();
            meleerange *= 2;
        }
    }
    if (distancesquared(eye_pos, enemy_eye_pos) > sqr(meleerange)) {
        return 5;
    }
    asmstatename function_5295d194(eye_pos, enemy_eye_pos);
    return 5;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 2, eflags: 0x6 linked
// Checksum 0xc2836138, Offset: 0x74b8
// Size: 0x30
function private function_81758b93(entity, *asmstatename) {
    function_2e0abd15(asmstatename);
    return 4;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0x2dd256f1, Offset: 0x74f0
// Size: 0x8e
function pa_cl_vport_zscale_4(entity) {
    self function_2b82dc3c();
    entity pathmode("dont move", 1);
    entity clearpath();
    entity function_d4c687c9();
    entity.hit_ent = undefined;
    entity.var_2876c0b5 = 1;
    return true;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0xef3861d5, Offset: 0x7588
// Size: 0x13c
function function_2e0abd15(entity) {
    self function_2b82dc3c();
    entity.var_b82726ff = 1;
    entity namespace_85745671::function_9758722(#"run");
    entity function_a57c34b7(entity.origin);
    entity pathmode("move allowed");
    entity.var_92457a8d = 1;
    entity.var_f80163dc = undefined;
    entity.hit_ent = undefined;
    entity.var_cc94acec = 0;
    entity.var_b11272e3 = 0;
    entity.var_aaeee932 = undefined;
    entity.var_5372f2b4 = 0;
    entity.var_94d159ee = undefined;
    entity.var_64a351a7 = 0;
    entity.var_d873b994 = 1;
    entity.var_2876c0b5 = 0;
    entity.var_522042 = 0;
    function_120c3407(entity);
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 2, eflags: 0x2 linked
// Checksum 0xce76b1cd, Offset: 0x76d0
// Size: 0x84
function function_35b4cc91(tiger, entity) {
    forward = anglestoforward(tiger.angles);
    to_enemy = vectornormalize(entity.origin - tiger.origin);
    return vectordot(forward, to_enemy) >= 0.966;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 5, eflags: 0x2 linked
// Checksum 0xaebc2a84, Offset: 0x7820
// Size: 0x514
function function_fba7325a(entity, mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompanimflag animmode("gravity", 1);
    mocompanimflag orientmode("face angle", mocompanimflag.angles[1]);
    mocompanimflag.blockingpain = 1;
    mocompanimflag.var_5dd07a80 = 1;
    mocompanimflag.var_c2986b66 = 1;
    mocompanimflag.usegoalanimweight = 1;
    mocompanimflag pathmode("dont move");
    mocompanimflag collidewithactors(0);
    mocompanimflag.var_47c91780 = 0;
    mocompanimflag.var_b736fc8b = 1;
    mocompanimflag.var_ce44ec9f = getnotetracktimes(mocompduration, "start_trace")[0];
    mocompanimflag.minigun_killstreak_minigun_inbound = getnotetracktimes(mocompduration, "stop_trace")[0];
    if (isdefined(mocompanimflag.favoriteenemy)) {
        enemypos = mocompanimflag.favoriteenemy.origin;
        if (isplayer(mocompanimflag.favoriteenemy) && mocompanimflag.favoriteenemy isinvehicle()) {
            vehicle = mocompanimflag.favoriteenemy getvehicleoccupied();
            /#
                debugstar(enemypos, 50, (1, 1, 1));
            #/
            vehicleoffset = vehicle getvelocity() * distance2d(enemypos, mocompanimflag.origin) * getdvarfloat(#"hash_7167a82d9d60a72", 0.0015);
            if (vectordot(enemypos + vehicleoffset - mocompanimflag.origin, enemypos - mocompanimflag.origin) >= 0) {
                enemypos += vehicleoffset;
            }
            /#
                debugstar(enemypos, 50, (0, 0, 1));
            #/
        }
        dirtoenemy = vectornormalize(enemypos - mocompanimflag.origin);
        mocompanimflag forceteleport(mocompanimflag.origin, vectortoangles(dirtoenemy));
    }
    if (!isdefined(self.meleeinfo)) {
        self.meleeinfo = new class_970c2a7e();
        self.meleeinfo.var_9bfa8497 = mocompanimflag.origin;
        self.meleeinfo.var_98bc84b7 = getnotetracktimes(mocompduration, "start_procedural")[0];
        self.meleeinfo.var_6392c3a2 = getnotetracktimes(mocompduration, "stop_procedural")[0];
        var_2401d30a = getnotetracktimes(mocompduration, "stop_procedural_distance_check")[0];
        var_e397f54c = getmovedelta(mocompduration, 0, isdefined(var_2401d30a) ? var_2401d30a : 1);
        self.meleeinfo.var_cb28f380 = mocompanimflag localtoworldcoords(var_e397f54c);
        /#
            movedelta = getmovedelta(mocompduration, 0, 1);
            animendpos = mocompanimflag localtoworldcoords(movedelta);
            distance = distance(mocompanimflag.origin, animendpos);
            recordcircle(animendpos, 3, (0, 1, 0), "<unknown string>");
            record3dtext("<unknown string>" + distance, animendpos, (0, 1, 0), "<unknown string>");
        #/
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 5, eflags: 0x2 linked
// Checksum 0xcaf15324, Offset: 0x7d40
// Size: 0xa34
function function_b1b9da60(entity, mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    assert(isdefined(self.meleeinfo));
    currentanimtime = mocompanimflag getanimtime(mocompduration);
    if (isdefined(self.var_ce44ec9f) && currentanimtime >= self.var_ce44ec9f && currentanimtime <= self.minigun_killstreak_minigun_inbound) {
        self.var_47c91780 = 1;
    } else {
        self.var_47c91780 = 0;
    }
    if (isdefined(self.favoriteenemy) && !self.meleeinfo.adjustmentstarted && self.meleeinfo.var_425c4c8b && currentanimtime >= self.meleeinfo.var_98bc84b7) {
        predictedenemypos = mocompanimflag.favoriteenemy.origin;
        if (isplayer(mocompanimflag.favoriteenemy)) {
            velocity = mocompanimflag.favoriteenemy getvelocity();
            if (length(velocity) >= 0) {
                predictedenemypos += vectorscale(velocity, 0.25);
            }
        }
        var_83fd29ee = vectornormalize(predictedenemypos - mocompanimflag.origin);
        var_1efb2395 = predictedenemypos - var_83fd29ee * mocompanimflag getpathfindingradius() * 1.1;
        self.meleeinfo.adjustedendpos = var_1efb2395;
        var_776ddabf = distancesquared(self.meleeinfo.var_cb28f380, self.meleeinfo.adjustedendpos);
        var_65cbfb52 = distancesquared(self.meleeinfo.var_9bfa8497, self.meleeinfo.adjustedendpos);
        if (var_776ddabf <= sqr(35)) {
            /#
                record3dtext("<unknown string>", mocompanimflag.origin + (0, 0, 60), (1, 0, 0), "<unknown string>");
            #/
            self.meleeinfo.var_425c4c8b = 0;
        } else if (var_65cbfb52 <= sqr(200)) {
            /#
                record3dtext("<unknown string>", mocompanimflag.origin + (0, 0, 60), (1, 0, 0), "<unknown string>");
            #/
            self.meleeinfo.var_425c4c8b = 0;
        } else if (var_65cbfb52 >= sqr(250)) {
            /#
                record3dtext("<unknown string>", mocompanimflag.origin + (0, 0, 60), (1, 0, 0), "<unknown string>");
            #/
            self.meleeinfo.var_425c4c8b = 0;
        }
        if (self.meleeinfo.var_425c4c8b) {
            var_776ddabf = distancesquared(self.meleeinfo.var_cb28f380, self.meleeinfo.adjustedendpos);
            myforward = anglestoforward(self.angles);
            var_1c3641f2 = (mocompanimflag.favoriteenemy.origin[0], mocompanimflag.favoriteenemy.origin[1], mocompanimflag.origin[2]);
            dirtoenemy = vectornormalize(var_1c3641f2 - mocompanimflag.origin);
            zdiff = self.meleeinfo.var_cb28f380[2] - mocompanimflag.favoriteenemy.origin[2];
            withinzrange = abs(zdiff) <= 30;
            withinfov = vectordot(myforward, dirtoenemy) > cos(30);
            var_7948b2f3 = withinzrange && withinfov;
            isvisible = bullettracepassed(mocompanimflag.origin, mocompanimflag.favoriteenemy.origin, 0, self);
            var_425c4c8b = isvisible && var_7948b2f3;
            /#
                reasons = "<unknown string>" + isvisible + "<unknown string>" + withinzrange + "<unknown string>" + withinfov;
                if (var_425c4c8b) {
                    record3dtext(reasons, mocompanimflag.origin + (0, 0, 60), (0, 1, 0), "<unknown string>");
                } else {
                    record3dtext(reasons, mocompanimflag.origin + (0, 0, 60), (1, 0, 0), "<unknown string>");
                }
            #/
            if (var_425c4c8b) {
                var_90c3cdd2 = length(self.meleeinfo.adjustedendpos - self.meleeinfo.var_cb28f380);
                timestep = function_60d95f53();
                animlength = getanimlength(mocompduration) * 1000;
                starttime = self.meleeinfo.var_98bc84b7 * animlength;
                stoptime = self.meleeinfo.var_6392c3a2 * animlength;
                starttime = floor(starttime / timestep);
                stoptime = floor(stoptime / timestep);
                adjustduration = stoptime - starttime;
                self.meleeinfo.var_10b8b6d1 = anglestoforward(mocompanimflag.angles);
                self.meleeinfo.var_8b9a15a6 = var_90c3cdd2 / adjustduration;
                self.meleeinfo.var_425c4c8b = 1;
                self.meleeinfo.adjustmentstarted = 1;
                self allowpitchangle(0);
                self clearpitchorient();
            } else {
                self.meleeinfo.var_425c4c8b = 0;
            }
        }
    }
    if (self.meleeinfo.adjustmentstarted && currentanimtime <= self.meleeinfo.var_6392c3a2) {
        assert(isdefined(self.meleeinfo.var_10b8b6d1) && isdefined(self.meleeinfo.var_8b9a15a6));
        /#
            recordsphere(self.meleeinfo.var_cb28f380, 3, (0, 1, 0), "<unknown string>");
            recordsphere(self.meleeinfo.adjustedendpos, 3, (0, 0, 1), "<unknown string>");
        #/
        adjustedorigin = mocompanimflag.origin + mocompanimflag.meleeinfo.var_10b8b6d1 * self.meleeinfo.var_8b9a15a6;
    }
    if (isdefined(mocompanimflag.favoriteenemy) && distancesquared(mocompanimflag.favoriteenemy.origin, mocompanimflag.origin) <= sqr(64) && function_35b4cc91(mocompanimflag, mocompanimflag.favoriteenemy)) {
        mocompanimflag animmode("angle deltas");
        return;
    }
    mocompanimflag animmode("gravity");
    if (isdefined(adjustedorigin)) {
        mocompanimflag forceteleport(adjustedorigin);
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 5, eflags: 0x2 linked
// Checksum 0x7c7a2fc, Offset: 0x8780
// Size: 0xf4
function function_9280d53b(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration.blockingpain = 0;
    mocompduration.var_5dd07a80 = undefined;
    mocompduration.var_c2986b66 = undefined;
    mocompduration.usegoalanimweight = 0;
    mocompduration pathmode("move allowed");
    mocompduration orientmode("face default");
    mocompduration collidewithactors(1);
    mocompduration.var_b736fc8b = 0;
    mocompduration.meleeinfo = undefined;
    mocompduration allowpitchangle(1);
    mocompduration setpitchorient();
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0x108642c2, Offset: 0x8880
// Size: 0x24
function function_8ee8d380(entity) {
    entity function_5295d194();
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 2, eflags: 0x2 linked
// Checksum 0xb6ee3dab, Offset: 0x88b0
// Size: 0x74
function function_2bef4245(hit_ent, damage) {
    hit_ent endon(#"death");
    self endon(#"death");
    waittillframeend();
    hit_ent dodamage(damage, self.origin, self, self, "torso_upper", "MOD_MELEE");
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 2, eflags: 0x2 linked
// Checksum 0xad20e162, Offset: 0x8930
// Size: 0x2b2
function function_5295d194(eye_pos, enemy_eye_pos) {
    if (!isdefined(self.favoriteenemy)) {
        return;
    }
    if (!isdefined(eye_pos)) {
        eye_pos = self util::get_eye();
    }
    in_vehicle = isplayer(self.favoriteenemy) && self.favoriteenemy isinvehicle();
    if (!isdefined(enemy_eye_pos)) {
        enemy_eye_pos = undefined;
        if (in_vehicle) {
            enemy_eye_pos = self.favoriteenemy getcentroid();
        } else {
            enemy_eye_pos = self.favoriteenemy util::get_eye();
        }
    }
    trace = physicstrace(eye_pos, enemy_eye_pos, (-15, -15, -15), (15, 15, 15), self);
    if (trace[#"fraction"] < 1) {
        self.hit_ent = trace[#"entity"];
    }
    if (isdefined(self.hit_ent)) {
        if (isvehicle(self.hit_ent)) {
            namespace_85745671::function_2713ff17(self.hit_ent, self.var_a0193213);
        } else {
            var_65781b1d = 30;
            if (is_true(self.aat_turned)) {
                if (isdefined(self.var_16d0eb06)) {
                    var_65781b1d = self.var_16d0eb06;
                }
            }
            self thread function_2bef4245(self.hit_ent, var_65781b1d);
            if (isplayer(self.hit_ent)) {
                if (self.hit_ent isinvehicle()) {
                    vehicle = self.hit_ent getvehicleoccupied();
                    namespace_85745671::function_2713ff17(vehicle, self.var_a0193213);
                    if (!is_true(vehicle.var_9a6644f2)) {
                        self function_5b561e92(self.hit_ent);
                        self.var_4b07f09f = 1;
                    }
                }
            }
        }
        return;
    }
    self.var_4b07f09f = 0;
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0x355146dc, Offset: 0x8bf0
// Size: 0x2e
function function_2b82dc3c() {
    player = self.favoriteenemy;
    if (isdefined(player)) {
        player.var_fee14b00 = gettime() + 500;
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0xd9561c74, Offset: 0x8c28
// Size: 0xe4
function function_5b561e92(player) {
    var_7e6e7f9f = getweapon(#"tear_gas");
    params = getstatuseffect("dot_toxic_claw");
    if (player namespace_e86ffa8::function_3623f9d1(1)) {
        params = getstatuseffect("dot_toxic_claw_staminup");
    }
    player status_effect::status_effect_apply(params, var_7e6e7f9f, self);
    player clientfield::increment_to_player("" + #"hash_10eff6a8464fb235", 1);
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0x86f4b983, Offset: 0x8d18
// Size: 0x260
function function_f7d44ebf() {
    self endon(#"death");
    wait(1);
    while (true) {
        var_c2113d3e = 1;
        if (isdefined(self.favoriteenemy) && !self haspath()) {
            var_c2113d3e = 0;
        } else if (!isdefined(self.favoriteenemy)) {
            var_c2113d3e = 0;
        }
        nearbyzombies = getentitiesinradius(self.origin, 512, 15);
        if (isalive(self) && !var_c2113d3e && !isdefined(self.var_73d04341) && nearbyzombies.size <= 1) {
            closestplayer = arraygetclosest(self.origin, getplayers());
            if (isplayer(closestplayer)) {
                self setgoal(closestplayer.origin, 1);
            }
            usetrigger = spawn("trigger_radius_use", self.origin + (0, 0, 32), 0, 128, 128, 1);
            usetrigger triggerignoreteam();
            usetrigger setcursorhint("HINT_NOICON");
            usetrigger sethintstring(#"hash_c0744e442e94c14");
            usetrigger.dog = self;
            usetrigger thread function_d442eca6();
            usetrigger callback::on_trigger(&function_eee6f04);
            self.var_73d04341 = usetrigger;
            return;
        }
        wait(1);
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0xeb8d74ca, Offset: 0x8f80
// Size: 0x10c
function function_9454fb2d() {
    if (!isalive(self)) {
        return;
    }
    self endon(#"death");
    nearbyzombies = getentitiesinradius(self.origin, 512, 15);
    if (nearbyzombies.size > 1) {
        if (is_true(self.var_bb8bba59)) {
            if (isdefined(self.var_73d04341)) {
                self.var_73d04341 delete();
            }
            self animcustom(&function_82cc0356);
            self waittill(#"hash_18c50031a3a3c6cd");
            if (isalive(self)) {
                self thread function_f7d44ebf();
            }
        }
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0x26bc6e17, Offset: 0x9098
// Size: 0x192
function function_71b1652b() {
    self endon(#"death");
    self clientfield::set("ZombieDogVocals", 0);
    self.var_bb8bba59 = 1;
    self forceteleport(self.origin, self.var_47d9e0ed);
    self animmode("gravity");
    self animscripted(#"ai_t9_zm_zombie_dog_com_pet_intro", self.origin, self.angles, #"ai_t9_zm_zombie_dog_com_pet_intro", "custom", undefined, 1, 0.2);
    anim_time = getanimlength("ai_t9_zm_zombie_dog_com_pet_intro");
    self waittillmatchtimeout(anim_time, {#notetrack:"end"}, #"ai_t9_zm_zombie_dog_com_pet_intro");
    self animscripted(#"hash_2fdc6d4cc63c0d4c", self.origin, self.angles, #"hash_2fdc6d4cc63c0d4c", "custom", undefined, 1, 0.2);
    wait(20);
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0x15b8a870, Offset: 0x9238
// Size: 0xfa
function function_ba44fcfa() {
    self endon(#"death");
    self forceteleport(self.origin, self.var_47d9e0ed);
    self animscripted(#"hash_6884c6c87674c98", self.origin, self.angles, #"hash_6884c6c87674c98", "custom", undefined, 1, 0.2);
    wait(1);
    self animscripted(#"hash_2fdc6d4cc63c0d4c", self.origin, self.angles, #"hash_2fdc6d4cc63c0d4c", "custom", undefined, 1, 0.2);
    wait(20);
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0xd7cc9c46, Offset: 0x9340
// Size: 0x10e
function function_82cc0356() {
    self endon(#"death");
    self animscripted(#"hash_2591bae3caaef873", self.origin, self.angles, #"hash_2591bae3caaef873", "custom", undefined, 1, 0.2);
    anim_time = getanimlength(#"hash_2591bae3caaef873");
    self waittillmatchtimeout(anim_time, {#notetrack:"end"}, #"hash_2591bae3caaef873");
    self clientfield::set("ZombieDogVocals", 2);
    self.var_bb8bba59 = undefined;
    self notify(#"hash_18c50031a3a3c6cd");
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0xad073e5c, Offset: 0x9458
// Size: 0x218
function function_d442eca6() {
    if (!isalive(self.dog)) {
        return;
    }
    self endon(#"death");
    self.dog endon(#"death");
    while (true) {
        self.origin = self.dog.origin + (0, 0, 32);
        self.dog function_9454fb2d();
        if (!is_true(self.dog.var_bb8bba59) && !self.dog function_dd070839()) {
            foreach (player in function_a1ef346b(undefined, self.origin, 512)) {
                target = player.origin - self.dog.origin;
                target = vectornormalize(target);
                angles = vectortoangles(target);
                self.dog.var_bb8bba59 = 1;
                self.dog.var_47d9e0ed = angles;
                self.dog animcustom(&function_71b1652b);
                break;
            }
        }
        wait(0.2);
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 1, eflags: 0x2 linked
// Checksum 0xadee3341, Offset: 0x9678
// Size: 0x184
function function_eee6f04(eventstruct) {
    if (isplayer(eventstruct.activator) && isdefined(self.dog)) {
        player = eventstruct.activator;
        if (player isreloading() || player function_104d7b4d()) {
            return;
        }
        if (!is_true(player.var_9b04c606)) {
            scoreevents::processscoreevent(#"hash_16aa9e7d582cff1f", player);
            player.var_9b04c606 = 1;
        }
        target = player.origin - self.dog.origin;
        target = vectornormalize(target);
        angles = vectortoangles(target);
        player gestures::function_56e00fbf(#"hash_6ecc1d58899727bb", undefined, 0);
        self.dog.var_47d9e0ed = angles;
        self.dog animcustom(&function_ba44fcfa);
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0xe33039bb, Offset: 0x9808
// Size: 0x4c
function on_brainrot() {
    if (is_true(getgametypesetting(#"hash_72c534ee96e553ba"))) {
        self thread function_f7d44ebf();
    }
}

// Namespace zm_ai_dog/zm_ai_dog
// Params 0, eflags: 0x2 linked
// Checksum 0x868e6cfa, Offset: 0x9860
// Size: 0x7a
function function_10083d9f() {
    if (is_true(self.var_bb8bba59)) {
        if (isdefined(self.var_73d04341)) {
            self.var_73d04341 delete();
        }
        self animcustom(&function_82cc0356);
        self waittill(#"hash_18c50031a3a3c6cd");
    }
}

/#

    // Namespace zm_ai_dog/zm_ai_dog
    // Params 0, eflags: 0x0
    // Checksum 0x63b6f3bf, Offset: 0x98e8
    // Size: 0xa4
    function function_db4f75e() {
        function_5ac4dc99(#"hash_8b22ac08c03321a", "<unknown string>");
        function_cd140ee9(#"hash_8b22ac08c03321a", &function_4072bc4d);
        util::add_debug_command("<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
    }

    // Namespace zm_ai_dog/zm_ai_dog
    // Params 1, eflags: 0x0
    // Checksum 0xd1493a38, Offset: 0x9998
    // Size: 0x94
    function function_4072bc4d(dvar) {
        switch (dvar.value) {
        case #"hash_71dc780eee2bf889":
            level thread function_a8cde6e0();
            break;
        case 0:
            return;
        }
        setdvar(#"hash_8b22ac08c03321a", "<unknown string>");
    }

    // Namespace zm_ai_dog/zm_ai_dog
    // Params 0, eflags: 0x0
    // Checksum 0xcbf0bc48, Offset: 0x9a38
    // Size: 0x19a
    function function_a8cde6e0() {
        if (!isdefined(level.var_45c2d80e)) {
            level.var_45c2d80e = [];
            level.var_45c2d80e[level.var_45c2d80e.size] = "<unknown string>";
            level.var_45c2d80e[level.var_45c2d80e.size] = "<unknown string>";
            level.var_45c2d80e[level.var_45c2d80e.size] = "<unknown string>";
            level.var_45c2d80e[level.var_45c2d80e.size] = "<unknown string>";
            level.var_8bf2b256 = 0;
        } else {
            level.var_8bf2b256++;
            if (level.var_8bf2b256 >= level.var_45c2d80e.size) {
                level.var_8bf2b256 = 0;
            }
        }
        foreach (dog in getaiarchetypearray(#"zombie_dog")) {
            dog.knockdown = 1;
            dog.knockdown_type = "<unknown string>";
            dog.knockdown_direction = level.var_45c2d80e[level.var_8bf2b256];
        }
    }

#/
