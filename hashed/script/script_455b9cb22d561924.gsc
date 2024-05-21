// Atian COD Tools GSC CW decompiler test
#using script_19de6a08d25644f4;
#using script_3819e7a1427df6d2;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_2be98cb7;

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 0, eflags: 0x1
// Checksum 0x8b6d3836, Offset: 0x230
// Size: 0x54
function autoexec init() {
    spawner::add_archetype_spawn_function(#"dog", &function_ef4b81af);
    registerbehaviorscriptfunctions();
    namespace_835228b4::function_7304e94b();
}

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 0, eflags: 0x6 linked
// Checksum 0xf8be9658, Offset: 0x290
// Size: 0xd4
function private function_ef4b81af() {
    function_ae45f57b();
    self allowpitchangle(1);
    self setpitchorient();
    self setavoidancemask("avoid all");
    self collidewithactors(1);
    self ai::set_behavior_attribute("spacing_value", randomfloatrange(-1, 1));
    aiutility::addaioverridedamagecallback(self, &function_756cb98c);
}

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 0, eflags: 0x2 linked
// Checksum 0x9c62bc43, Offset: 0x370
// Size: 0x294
function registerbehaviorscriptfunctions() {
    assert(isscriptfunctionptr(&dogtargetservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("dogTargetService", &dogtargetservice);
    assert(isscriptfunctionptr(&dogshouldmelee));
    behaviortreenetworkutility::registerbehaviortreescriptapi("dogShouldMelee", &dogshouldmelee);
    assert(isscriptfunctionptr(&dogshouldwalk));
    behaviortreenetworkutility::registerbehaviortreescriptapi("dogShouldWalk", &dogshouldwalk);
    assert(isscriptfunctionptr(&dogshouldrun));
    behaviortreenetworkutility::registerbehaviortreescriptapi("dogShouldRun", &dogshouldrun);
    assert(!isdefined(&dogmeleeaction) || isscriptfunctionptr(&dogmeleeaction));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&function_303397b0) || isscriptfunctionptr(&function_303397b0));
    behaviortreenetworkutility::registerbehaviortreeaction("dogMeleeAction", &dogmeleeaction, undefined, &function_303397b0);
}

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 1, eflags: 0x0
// Checksum 0x3308092b, Offset: 0x610
// Size: 0x54
function function_cebd576f(entity) {
    entity melee();
    /#
        record3dtext("<unknown string>", self.origin, (1, 0, 0), "<unknown string>", entity);
    #/
}

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 0, eflags: 0x2 linked
// Checksum 0xce20030a, Offset: 0x670
// Size: 0x4a
function function_ae45f57b() {
    blackboard::createblackboardforentity(self);
    ai::createinterfaceforentity(self);
    self.___archetypeonanimscriptedcallback = &function_cb274b5;
}

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 1, eflags: 0x6 linked
// Checksum 0x4a92fd0f, Offset: 0x6c8
// Size: 0x2c
function private function_cb274b5(entity) {
    entity.__blackboard = undefined;
    entity function_ae45f57b();
}

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 0, eflags: 0x2 linked
// Checksum 0x8487a977, Offset: 0x700
// Size: 0x4e
function bb_getshouldrunstatus() {
    if (is_true(self.hasseenfavoriteenemy) || ai::getaiattribute(self, "chaseenemyonspawn")) {
        return "run";
    }
    return "walk";
}

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 1, eflags: 0x2 linked
// Checksum 0x8bdf391f, Offset: 0x758
// Size: 0x3e
function getyaw(org) {
    angles = vectortoangles(org - self.origin);
    return angles[1];
}

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 0, eflags: 0x2 linked
// Checksum 0xded20b9a, Offset: 0x7a0
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

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 0, eflags: 0x2 linked
// Checksum 0x3215719a, Offset: 0x840
// Size: 0x27a
function need_to_run() {
    if (ai::getaiattribute(self, "chaseenemyonspawn")) {
        return true;
    }
    run_dist_squared = sqr(self ai::get_behavior_attribute("min_run_dist"));
    run_yaw = 20;
    run_pitch = 30;
    run_height = 64;
    if (self.health < self.maxhealth) {
        return true;
    }
    if (!isdefined(self.enemy) || !isalive(self.enemy)) {
        return false;
    }
    lastknownpostime = self lastknowntime(self.enemy);
    isfullyaware = gettime() - lastknownpostime < 20000;
    if (!self cansee(self.enemy) && !isfullyaware) {
        return false;
    }
    dist = distancesquared(self.origin, self.enemy.origin);
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

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 2, eflags: 0x6 linked
// Checksum 0x88ac44e2, Offset: 0xac8
// Size: 0x110
function private is_target_valid(dog, target) {
    if (!isdefined(target)) {
        return false;
    }
    if (!isalive(target)) {
        return false;
    }
    if (isplayer(target) && target.sessionstate == "spectator") {
        return false;
    }
    if (isplayer(target) && target.sessionstate == "intermission") {
        return false;
    }
    if (is_true(self.intermission)) {
        return false;
    }
    if (is_true(target.ignoreme)) {
        return false;
    }
    if (target isnotarget()) {
        return false;
    }
    if (dog.team == target.team) {
        return false;
    }
    return true;
}

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 1, eflags: 0x6 linked
// Checksum 0x67054611, Offset: 0xbe0
// Size: 0x1b4
function private get_favorite_enemy(dog) {
    dog_targets = [];
    dog_targets = arraycombine(getplayers(), getaiarray(), 0, 0);
    least_hunted = dog_targets[0];
    closest_target_dist_squared = undefined;
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
    if (!is_target_valid(dog, least_hunted)) {
        return undefined;
    }
    least_hunted.hunted_by += 1;
    return least_hunted;
}

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 0, eflags: 0x2 linked
// Checksum 0xa895c0bb, Offset: 0xda0
// Size: 0x2e
function get_last_valid_position() {
    if (isplayer(self)) {
        return self.last_valid_position;
    }
    return self.origin;
}

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 1, eflags: 0x2 linked
// Checksum 0x3ece4704, Offset: 0xdd8
// Size: 0x21a
function get_locomotion_target(behaviortreeentity) {
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

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 1, eflags: 0x2 linked
// Checksum 0x6604cab4, Offset: 0x1000
// Size: 0x2aa
function dogtargetservice(behaviortreeentity) {
    if (behaviortreeentity.ignoreall || behaviortreeentity.pacifist || isdefined(behaviortreeentity.favoriteenemy) && !is_target_valid(behaviortreeentity, behaviortreeentity.favoriteenemy)) {
        if (isdefined(behaviortreeentity.favoriteenemy) && isdefined(behaviortreeentity.favoriteenemy.hunted_by) && behaviortreeentity.favoriteenemy.hunted_by > 0) {
            behaviortreeentity.favoriteenemy.hunted_by--;
        }
        behaviortreeentity.favoriteenemy = undefined;
        behaviortreeentity.hasseenfavoriteenemy = 0;
        if (!behaviortreeentity.ignoreall) {
            behaviortreeentity function_a57c34b7(behaviortreeentity.origin);
        }
        return;
    }
    if (!is_target_valid(behaviortreeentity, behaviortreeentity.favoriteenemy)) {
        behaviortreeentity.favoriteenemy = get_favorite_enemy(behaviortreeentity);
    }
    if (!is_true(behaviortreeentity.hasseenfavoriteenemy)) {
        if (isdefined(behaviortreeentity.favoriteenemy) && behaviortreeentity need_to_run()) {
            behaviortreeentity.hasseenfavoriteenemy = 1;
        }
    }
    if (isdefined(behaviortreeentity.favoriteenemy)) {
        if (isdefined(level.enemy_location_override_func)) {
            goalpos = [[ level.enemy_location_override_func ]](behaviortreeentity, behaviortreeentity.favoriteenemy);
            if (isdefined(goalpos)) {
                behaviortreeentity function_a57c34b7(goalpos);
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

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 1, eflags: 0x2 linked
// Checksum 0xa72a30f5, Offset: 0x12b8
// Size: 0xe0
function dogshouldmelee(behaviortreeentity) {
    if (behaviortreeentity.ignoreall || !is_target_valid(behaviortreeentity, behaviortreeentity.favoriteenemy)) {
        return false;
    }
    if (!is_true(level.intermission)) {
        meleedist = 72;
        if (distancesquared(behaviortreeentity.origin, behaviortreeentity.favoriteenemy.origin) < sqr(meleedist) && behaviortreeentity cansee(behaviortreeentity.favoriteenemy)) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 1, eflags: 0x2 linked
// Checksum 0x9ee29e38, Offset: 0x13a0
// Size: 0x24
function dogshouldwalk(*behaviortreeentity) {
    return bb_getshouldrunstatus() == "walk";
}

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 1, eflags: 0x2 linked
// Checksum 0x84b9b197, Offset: 0x13d0
// Size: 0x24
function dogshouldrun(*behaviortreeentity) {
    return bb_getshouldrunstatus() == "run";
}

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 0, eflags: 0x2 linked
// Checksum 0x8fab3791, Offset: 0x1400
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

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 2, eflags: 0x2 linked
// Checksum 0xdf5ce1fd, Offset: 0x1570
// Size: 0xa0
function dogmeleeaction(behaviortreeentity, asmstatename) {
    behaviortreeentity clearpath();
    context = "high";
    if (behaviortreeentity use_low_attack()) {
        context = "low";
    }
    behaviortreeentity setblackboardattribute("_context", context);
    animationstatenetworkutility::requeststate(behaviortreeentity, asmstatename);
    return 5;
}

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 2, eflags: 0x2 linked
// Checksum 0xc4bfe3f8, Offset: 0x1618
// Size: 0x38
function function_303397b0(behaviortreeentity, *asmstatename) {
    asmstatename setblackboardattribute("_context", undefined);
    return 4;
}

// Namespace namespace_2be98cb7/namespace_a57914e0
// Params 13, eflags: 0x6 linked
// Checksum 0x31c1599d, Offset: 0x1658
// Size: 0xea
function private function_756cb98c(*einflictor, eattacker, idamage, *idflags, smeansofdeath, *weapon, *var_fd90b0bb, *vpoint, *vdir, *shitloc, *psoffsettime, *boneindex, *modelindex) {
    if (isdefined(psoffsettime) && isactor(psoffsettime) && (modelindex === "MOD_RIFLE_BULLET" || modelindex == "MOD_PISTOL_BULLET" || modelindex == "MOD_HEAD_SHOT")) {
        level.var_d7e2833c = 1;
        boneindex *= 3;
    }
    return boneindex;
}

