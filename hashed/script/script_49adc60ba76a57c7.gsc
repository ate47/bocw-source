// Atian COD Tools GSC CW decompiler test
#using script_2a5bf5b4a00cee0d;
#using script_164a456ce05c3483;
#using script_47851dbeea22fe66;
#using script_1ee011cd0961afd7;
#using script_5f20d3b434d24884;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\statemachine_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using script_67e37e63e177f107;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using script_2c5daa95f8fec03c;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\ai\systems\ai_blackboard.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\ai\archetype_locomotion_utility.gsc;
#using script_3819e7a1427df6d2;
#using scripts\core_common\ai\systems\animation_state_machine_mocomp.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_notetracks.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_2e61cc4b;

// Namespace namespace_2e61cc4b
// Method(s) 2 Total 2
class class_a504b9a3 {

    var var_190509f3;
    var var_6392c3a2;
    var var_9177748f;
    var var_9ab05afa;
    var var_fadcdbaf;

    // Namespace class_a504b9a3/namespace_2e61cc4b
    // Params 0, eflags: 0xa linked
    // Checksum 0x3d86206d, Offset: 0x37d0
    // Size: 0x3e
    constructor() {
        var_9ab05afa = 0;
        var_6392c3a2 = 0;
        var_190509f3 = 0;
        var_9177748f = gettime();
        var_fadcdbaf = gettime();
    }

}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 0, eflags: 0x2 linked
// Checksum 0xec9fd4fd, Offset: 0x5d8
// Size: 0x91c
function init() {
    namespace_250e9486::function_252dff4d("elephant", 26, &function_295c9975, &function_238b5fdc);
    clientfield::register("actor", "towers_boss_melee_effect", 1, 1, "counter");
    clientfield::register("actor", "tower_boss_death_fx", 1, 1, "counter");
    clientfield::register("actor", "towers_boss_eye_fx_cf", 1, 2, "int");
    clientfield::register("actor", "boss_death_rob", 1, 2, "int");
    clientfield::register("scriptmover", "entrails_model_cf", 1, 1, "int");
    clientfield::register("scriptmover", "towers_boss_head_proj_fx_cf", 1, 1, "int");
    clientfield::register("scriptmover", "towers_boss_head_proj_explosion_fx_cf", 1, 1, "int");
    assert(isscriptfunctionptr(&function_2c58bc39));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2f6e4a95b8974fcd", &function_2c58bc39);
    assert(isscriptfunctionptr(&function_10a75bb7));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_40d6b5994b49d7aa", &function_10a75bb7);
    assert(isscriptfunctionptr(&function_d3d560e9));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_9188ed9ed594c69", &function_d3d560e9);
    assert(isscriptfunctionptr(&elephantknockdownservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"elephantknockdownservice", &elephantknockdownservice);
    assert(isscriptfunctionptr(&function_5db0f49a));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_7aace3e67f786b19", &function_5db0f49a);
    assert(isscriptfunctionptr(&function_1c0db2ec));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_a14b98894f1d688", &function_1c0db2ec);
    assert(isscriptfunctionptr(&function_18e1bf30));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_4b225936ae91a204", &function_18e1bf30);
    assert(isscriptfunctionptr(&elephantshouldmelee));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"elephantshouldmelee", &elephantshouldmelee);
    assert(isscriptfunctionptr(&elephantshouldmelee));
    behaviorstatemachine::registerbsmscriptapiinternal(#"elephantshouldmelee", &elephantshouldmelee);
    assert(isscriptfunctionptr(&function_9c076ff9));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_2cab44d162eb9a83", &function_9c076ff9);
    assert(isscriptfunctionptr(&function_69faa74));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_597ef06035bca069", &function_69faa74);
    assert(isscriptfunctionptr(&function_cd472d5));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4e7335c0f98549c3", &function_cd472d5);
    assert(isscriptfunctionptr(&function_f2c697c7));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_4fbf554dacfacc1f", &function_f2c697c7);
    assert(isscriptfunctionptr(&function_f8145b00));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_67699fc0b32fc954", &function_f8145b00);
    assert(isscriptfunctionptr(&function_2bfd3841));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_72b216f44f66e0ca", &function_2bfd3841);
    animationstatenetwork::registeranimationmocomp("mocomp_melee@towers_boss", &function_5e17ac7a, &function_e88518a1, &function_10296bfa);
    animationstatenetwork::registernotetrackhandlerfunction("towersboss_melee", &function_2328518e);
    animationstatenetwork::registernotetrackhandlerfunction("towersboss_melee_big", &function_df15eebf);
    animationstatenetwork::registernotetrackhandlerfunction("launch_head_proj", &function_4b28fc8c);
    animationstatenetwork::registernotetrackhandlerfunction("launch_head_proj2", &function_4b28fc8c);
    animationstatenetwork::registernotetrackhandlerfunction("towers_boss_ground_attack", &function_ce8fe2b0);
    animation::add_global_notetrack_handler("tower_boss_death_effects", &function_afc99f32, 0);
    animation::add_global_notetrack_handler("tower_boss_entrace_effects", &function_35130a59, 0);
    level.var_c6001986 = &function_67525edc;
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 0, eflags: 0x2 linked
// Checksum 0x2297fcf3, Offset: 0xf00
// Size: 0xac
function function_238b5fdc() {
    self endon(#"death");
    while (true) {
        if (isdefined(self.enemy) && is_true(self.enemy.laststand)) {
            self clearenemy();
            self.favoriteenemy = undefined;
        }
        if (!isdefined(self.enemy)) {
            self namespace_250e9486::function_4b49bf0d();
            wait(0.5);
            continue;
        }
        wait(0.1);
    }
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 0, eflags: 0x2 linked
// Checksum 0x96340707, Offset: 0xfb8
// Size: 0x124
function function_ea5dfa17() {
    self notify("55e25450fcf6bf52");
    self endon("55e25450fcf6bf52");
    streamermodelhint("c_t8_zmb_dlc0_elephant_body1", 999);
    streamermodelhint("c_t8_zmb_dlc0_elephant_husk_body1", 999);
    streamermodelhint("c_t8_zmb_dlc0_elephant_body1_evil", 999);
    streamermodelhint("c_t8_zmb_dlc0_elephant_husk_body1_evil", 999);
    level waittill(#"game_over", #"hash_77e4bcc14697c018");
    streamermodelhint("c_t8_zmb_dlc0_elephant_body1", 0);
    streamermodelhint("c_t8_zmb_dlc0_elephant_husk_body1", 0);
    streamermodelhint("c_t8_zmb_dlc0_elephant_body1_evil", 0);
    streamermodelhint("c_t8_zmb_dlc0_elephant_husk_body1_evil", 0);
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 0, eflags: 0x2 linked
// Checksum 0x9fd8b4d5, Offset: 0x10e8
// Size: 0x394
function function_295c9975() {
    namespace_250e9486::function_25b2c8a9();
    level thread function_ea5dfa17();
    self.maxhealth += 150000 + int(75000 * namespace_ec06fe4a::function_ef369bae());
    self.health = self.maxhealth;
    self.var_1c8b76d3 = 1;
    self namespace_250e9486::function_db744d28();
    self.no_gib = 1;
    self.overrideactordamage = &function_36603968;
    self.ai.phase = #"hash_266f56fb994e6639";
    self disableaimassist();
    self.var_3a001247 = 1;
    self pushplayer(1);
    self setavoidancemask("avoid none");
    self.ai.var_5c1cc6e9 = gettime() + 3000;
    self.ai.var_c53cce81 = gettime() + randomint(2000);
    self.ai.var_a05929e4 = getweapon("elephant_eye_projectile_zm");
    self.ai.var_4622f7a9 = gettime() + randomintrange(1500, 2000);
    self setrepairpaths(0);
    self.clamptonavmesh = 1;
    self.ai.var_a5dabb8b = 1;
    self bloodimpact("none");
    namespace_81245006::initweakpoints(self);
    self.ai.var_112ec817 = #"hash_8e170ae91588f20";
    self setblackboardattribute("_locomotion_speed", "locomotion_speed_run");
    self thread function_4ccdadc3();
    self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_hellephant_spawn");
    self.var_a6bdfeb8 = self.origin;
    self.var_473fb012 = 0;
    self.proximitykill = namespace_ec06fe4a::spawntrigger("trigger_radius", self.origin, 2, 90, 60);
    if (isdefined(self.proximitykill)) {
        self.proximitykill enablelinkto();
        self.proximitykill thread namespace_ec06fe4a::function_d55f042c(self, "death");
        self.proximitykill thread function_538a00bb(self);
        self.proximitykill linkto(self, "tag_origin", (0, 0, 30));
    }
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x2 linked
// Checksum 0xabd8e17f, Offset: 0x1488
// Size: 0xf2
function function_538a00bb(owner) {
    self endon(#"death");
    while (true) {
        result = self waittill(#"trigger");
        time = gettime();
        if (isdefined(result.activator)) {
            if (!isdefined(result.activator.var_4f58c24d)) {
                result.activator.var_4f58c24d = 0;
            }
            if (time > result.activator.var_4f58c24d) {
                result.activator dodamage(149, self.origin, owner);
                result.activator.var_4f58c24d = time + 1500;
            }
        }
    }
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 13, eflags: 0x6 linked
// Checksum 0x345d6aef, Offset: 0x1588
// Size: 0x190
function private function_36603968(inflictor, attacker, damage, *flags, *meansofdamage, *weapon, *var_fd90b0bb, point, *dir, *hitloc, *offsettime, *boneindex, *modelindex) {
    if (is_true(self.dying)) {
        return 0;
    }
    if (isdefined(offsettime)) {
        if (isdefined(offsettime.owner)) {
            offsettime = offsettime.owner;
        }
        if (!isplayer(offsettime)) {
            self namespace_ec06fe4a::function_2f4b0f9(self.health);
            return 0;
        }
    }
    var_799e18e5 = modelindex;
    var_5f32808d = 1;
    if (boneindex >= 1000) {
        var_5f32808d = 2;
    }
    self.lastattacker = offsettime;
    self.var_d429b0ce = hitloc;
    if (boneindex >= self.health) {
        level thread elephantstartdeath(self);
    }
    self namespace_ec06fe4a::function_2f4b0f9(self.health - boneindex, offsettime, var_799e18e5, boneindex, var_5f32808d);
    return boneindex;
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x2 linked
// Checksum 0xd9d6e959, Offset: 0x1720
// Size: 0x188
function function_67525edc(dustball) {
    enemies = function_f6f34851(self.team);
    foreach (target in enemies) {
        if (isplayer(target)) {
            distsq = distancesquared(dustball.origin, target.origin);
            if (distsq <= sqr(150)) {
                params = getstatuseffect(#"hash_12a64221f4d27f9b");
                weapon = getweapon(#"eq_molotov");
                target status_effect::status_effect_apply(params, weapon, dustball, 0, 3000, undefined, dustball.origin);
            }
        }
    }
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 0, eflags: 0x2 linked
// Checksum 0xbf2b8a11, Offset: 0x18b0
// Size: 0x24
function function_35130a59() {
    self clientfield::increment("tower_boss_death_fx");
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 0, eflags: 0x2 linked
// Checksum 0xf9cd4f43, Offset: 0x18e0
// Size: 0x24
function function_afc99f32() {
    self clientfield::increment("tower_boss_death_fx");
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x2 linked
// Checksum 0xfbcc9b3b, Offset: 0x1910
// Size: 0x2d4
function elephantstartdeath(elephant) {
    if (is_true(elephant.dying)) {
        return;
    }
    elephant namespace_ec06fe4a::function_2f4b0f9(0);
    elephant clientfield::set("show_health_bar", 0);
    model = "p8_fxanim_zm_towers_boss_death_02_mod";
    animname = "p8_fxanim_zm_towers_boss_death_02_anim";
    deathanim = elephant animmappingsearch(#"hash_2ca88c72c7b85749");
    phase = elephant.ai.phase;
    elephant.skipdeath = 1;
    elephant.diedinscriptedanim = 1;
    elephant.entrailsmodel = namespace_ec06fe4a::spawnmodel(elephant.origin);
    elephant.entrailsmodel thread namespace_ec06fe4a::function_52afe5df(10);
    elephant.entrailsmodel setmodel(model);
    elephant.entrailsmodel useanimtree("generic");
    elephant.entrailsmodel thread animation::play(animname, elephant.origin, elephant.angles, 1, 0.2, 0.1, undefined, undefined, undefined, 0);
    elephant.entrailsmodel clientfield::set("entrails_model_cf", 1);
    origin = elephant.origin;
    angles = elephant.angles;
    elephant clientfield::set("towers_boss_eye_fx_cf", 0);
    attacker = elephant.lastattacker;
    if (isdefined(elephant.var_d429b0ce) && isdefined(elephant.var_d429b0ce.owner)) {
        attacker = elephant.var_d429b0ce.owner;
    }
    elephant.dying = 1;
    elephant dodamage(elephant.health, elephant.origin, elephant.lastattacker, elephant.var_d429b0ce);
    level thread function_106b6b29();
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 0, eflags: 0x2 linked
// Checksum 0x106ce2c6, Offset: 0x1bf0
// Size: 0x44
function function_106b6b29() {
    wait(4.5);
    if (namespace_ec06fe4a::function_a8975c67()) {
        playsoundatposition(#"hash_4cf49c7c9533b539", (0, 0, 0));
    }
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x2 linked
// Checksum 0x532dda63, Offset: 0x1c40
// Size: 0x378
function function_4b28fc8c(entity) {
    assert(isdefined(entity.ai.var_a05929e4));
    launchpos = entity gettagorigin("j_head");
    var_d82e1fd1 = entity gettagangles("j_head");
    /#
        recordsphere(launchpos, 3, (0, 0, 1), "<unknown string>");
    #/
    landpos = entity.var_f6ea2286;
    if (!isdefined(landpos)) {
        landpos = entity.favoriteenemy.origin;
    }
    headproj = namespace_ec06fe4a::spawnmodel(launchpos, "tag_origin");
    vectorfromenemy = vectornormalize(entity.origin - landpos);
    vectorfromenemy = vectorscale(vectorfromenemy, 250);
    targetpos = landpos + vectorfromenemy + (0, 0, 200);
    headproj clientfield::set("towers_boss_head_proj_fx_cf", 1);
    trajectory = [];
    dirtotarget = targetpos - launchpos;
    var_f1c85329 = (0, 0, 30);
    var_62e75be4 = (0, 0, 200);
    trajectory[trajectory.size] = launchpos + dirtotarget * 0.85 + var_f1c85329;
    trajectory[trajectory.size] = launchpos + dirtotarget * 0.5 + var_62e75be4;
    trajectory[trajectory.size] = launchpos + dirtotarget * 0.15 + var_f1c85329;
    trajectory = array::reverse(trajectory);
    var_10b732dc = 0.3;
    foreach (point in trajectory) {
        headproj moveto(point, var_10b732dc);
        headproj waittill(#"movedone");
    }
    if (namespace_ec06fe4a::function_a8975c67()) {
        self playsound(#"hash_62894125ab280b62");
    }
    self notify(#"hash_79e095919e415a70");
    if (isdefined(entity.ai.var_502d9d0d)) {
        [[ entity.ai.var_502d9d0d ]](entity, headproj);
    }
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0xb9465ad0, Offset: 0x1fc0
// Size: 0x2d0
function private function_df15eebf(entity) {
    origin = entity gettagorigin("j_nose4");
    radiusdamage(origin, 200, 150, 150, entity);
    /#
        level thread namespace_1e25ad94::debugcircle(origin, 200, 5, (1, 0, 0));
    #/
    enemies = function_f6f34851(self.team);
    foreach (target in enemies) {
        dist = distance(self.origin, target.origin);
        if (isplayer(target) && dist < 600) {
            params = getstatuseffect(#"hash_2c80515d8ac9f1b4");
            weapon = getweapon(#"zombie_ai_defaultmelee");
            target status_effect::status_effect_apply(params, weapon, entity, 0, 500);
        }
    }
    entity clientfield::increment("towers_boss_melee_effect");
    zombiesarray = getaiarchetypearray(#"zombie");
    zombiesarray = array::filter(zombiesarray, 0, &function_1d65bc12, entity);
    foreach (zombie in zombiesarray) {
        zombie namespace_250e9486::setup_zombie_knockdown(entity);
    }
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0x8fca6e3b, Offset: 0x2298
// Size: 0x39c
function private function_2328518e(entity) {
    if (!isdefined(entity)) {
        return;
    }
    entity endon(#"death");
    if (!isdefined(entity.var_470f7225)) {
        entity.var_470f7225 = [];
    }
    if (entity haspart("j_heart_fnt")) {
        origin = entity gettagorigin("j_heart_fnt");
    } else {
        origin = entity.origin;
    }
    dmgorigin = namespace_ec06fe4a::function_65ee50ba(origin);
    radiusdamage(dmgorigin, 200, 150, 150, entity);
    function_1eaaceab(entity.var_470f7225);
    if (entity.var_470f7225.size < 6 && randomint(100) < 25) {
        if (!isdefined(level.doa.var_314b1f0)) {
            level.doa.var_314b1f0 = doa_enemy::function_d7c5adee("spider");
        }
        ai = doa_enemy::function_db55a448(level.doa.var_314b1f0, origin);
        if (isdefined(ai)) {
            if (!isdefined(entity.var_470f7225)) {
                entity.var_470f7225 = [];
            } else if (!isarray(entity.var_470f7225)) {
                entity.var_470f7225 = array(entity.var_470f7225);
            }
            entity.var_470f7225[entity.var_470f7225.size] = ai;
        }
    }
    /#
        level thread namespace_1e25ad94::debugcircle(dmgorigin, 200, 5, (1, 0, 1));
    #/
    enemies = function_f6f34851(entity.team);
    foreach (target in enemies) {
        dist = distance(dmgorigin, target.origin);
        if (isplayer(target) && dist < 450) {
            params = getstatuseffect(#"hash_2c80515d8ac9f1b4");
            weapon = getweapon("zombie_ai_defaultmelee");
            target status_effect::status_effect_apply(params, weapon, entity, 0, 500);
        }
    }
    entity clientfield::increment("towers_boss_melee_effect");
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 0, eflags: 0x6 linked
// Checksum 0xba825aed, Offset: 0x2640
// Size: 0xa4
function private function_4ccdadc3() {
    self endon(#"death");
    while (!isdefined(self.ai.phase)) {
        wait(0.1);
    }
    if (self.ai.phase === #"hash_266f56fb994e6639") {
        self clientfield::set("towers_boss_eye_fx_cf", 2);
        return;
    }
    self clientfield::set("towers_boss_eye_fx_cf", 1);
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0xc7bda067, Offset: 0x26f0
// Size: 0x26
function private function_5db0f49a(entity) {
    entity.ai.isturning = 1;
    return true;
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0x77dde3ae, Offset: 0x2720
// Size: 0x22
function private function_1c0db2ec(entity) {
    entity.ai.isturning = 0;
    return true;
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0x66f820c3, Offset: 0x2750
// Size: 0x44
function private function_9c076ff9(entity) {
    entity setgoal(entity.origin);
    entity clearpath();
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 3, eflags: 0x6 linked
// Checksum 0x54edbca9, Offset: 0x27a0
// Size: 0x190
function private function_1d65bc12(enemy, elephant, var_60e4c6b7 = 1) {
    if (is_true(enemy.knockdown)) {
        return false;
    }
    if (gibserverutils::isgibbed(enemy, 384)) {
        return false;
    }
    if (distancesquared(enemy.origin, elephant.origin) > sqr(250)) {
        return false;
    }
    facingvec = anglestoforward(elephant.angles);
    enemyvec = enemy.origin - elephant.origin;
    var_3e3c8075 = (enemyvec[0], enemyvec[1], 0);
    var_c2ee8451 = (facingvec[0], facingvec[1], 0);
    var_3e3c8075 = vectornormalize(var_3e3c8075);
    var_c2ee8451 = vectornormalize(var_c2ee8451);
    if (var_60e4c6b7) {
        enemydot = vectordot(var_c2ee8451, var_3e3c8075);
        if (enemydot < 0) {
            return false;
        }
    }
    return true;
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0x9a58de20, Offset: 0x2938
// Size: 0x170
function private elephantknockdownservice(entity) {
    if (!isdefined(self.ai.var_a504b9a3)) {
        return 0;
    }
    zombiesarray = getaiarchetypearray(#"zombie");
    zombiesarray = arraycombine(zombiesarray, getaiarchetypearray(#"catalyst"), 0, 0);
    zombiesarray = arraycombine(zombiesarray, getaiarchetypearray(#"tiger"), 0, 0);
    zombiesarray = array::filter(zombiesarray, 0, &function_1d65bc12, entity);
    foreach (zombie in zombiesarray) {
        zombie namespace_250e9486::setup_zombie_knockdown(entity);
    }
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x2 linked
// Checksum 0x4d948c01, Offset: 0x2ab0
// Size: 0x1dc
function function_cd472d5(entity) {
    if (is_true(self.var_b554dbf2)) {
        return false;
    }
    if (!isdefined(entity.favoriteenemy)) {
        return false;
    }
    if (isdefined(entity.ai.var_f2d193df) && gettime() < entity.ai.var_f2d193df) {
        return false;
    }
    if (distancesquared(entity.favoriteenemy.origin, entity.origin) < sqr(200)) {
        return false;
    }
    fov = cos(30);
    if (!util::within_fov(entity.origin, entity.angles, entity.favoriteenemy.origin, fov)) {
        return false;
    }
    var_b21fc1a7 = blackboard::getblackboardevents("towersboss_head_proj");
    if (isdefined(var_b21fc1a7) && var_b21fc1a7.size) {
        foreach (var_358d39a3 in var_b21fc1a7) {
            if (var_358d39a3.enemy === entity.favoriteenemy) {
                return false;
            }
        }
    }
    return true;
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 2, eflags: 0x2 linked
// Checksum 0xcf43125e, Offset: 0x2c98
// Size: 0x3bc
function function_ce8fe2b0(entity, splitorigin) {
    self endon(#"death");
    forwardvec = vectornormalize(anglestoforward(entity.angles));
    forwarddist = 200;
    if (isdefined(splitorigin)) {
        launchpoint = splitorigin;
    } else {
        launchpoint = entity.origin + forwarddist * forwardvec;
    }
    closestpointonnavmesh = getclosestpointonnavmesh(launchpoint, 500, 200);
    if (isdefined(closestpointonnavmesh)) {
        trace = groundtrace(closestpointonnavmesh + (0, 0, 200), closestpointonnavmesh + (0, 0, -200), 0, undefined);
        if (isdefined(trace[#"position"])) {
            newpos = trace[#"position"];
        }
        /#
            recordsphere(newpos, 15, (1, 0.5, 0), "<unknown string>");
        #/
        dustball = spawnvehicle(#"hash_6be593a62b8b87a5", newpos, entity.angles, "dynamic_spawn_ai");
        dustball thread namespace_ec06fe4a::function_52afe5df(15);
        if (isdefined(dustball)) {
            dustball.var_6353e3f1 = 1;
            entity.ai.var_f2d193df = gettime() + randomintrange(5000, 8000);
            if (is_true(self.var_fe41477d)) {
                entity.ai.var_f2d193df = gettime() + 5000;
            }
        }
    } else {
        /#
            recordsphere(launchpoint, 15, (0, 0, 0), "<unknown string>");
        #/
    }
    wait(0.5);
    targets = getplayers();
    for (i = 0; i < targets.size; i++) {
        target = targets[i];
        if (!is_player_valid(target, 1, 1) || !function_71790b86(entity)) {
            arrayremovevalue(targets, target);
            break;
        }
    }
    if (targets.size == 0) {
        return;
    }
    if (targets.size > 1 && self.ai.phase == #"hash_266f56fb994e6639" && isdefined(dustball) && isalive(dustball) && !isdefined(splitorigin)) {
        function_ce8fe2b0(self, dustball.origin);
    }
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x2 linked
// Checksum 0xe36f3e08, Offset: 0x3060
// Size: 0x1ac
function function_69faa74(entity) {
    if (is_true(self.var_fe41477d)) {
        return false;
    }
    if (!isdefined(entity.favoriteenemy)) {
        return false;
    }
    if (gettime() < entity.ai.var_c53cce81) {
        return false;
    }
    if (distancesquared(entity.favoriteenemy.origin, entity.origin) < sqr(256)) {
        return false;
    }
    fov = 60;
    if (!util::within_fov(entity.origin, entity.angles, entity.favoriteenemy.origin, fov)) {
        return false;
    }
    var_b21fc1a7 = blackboard::getblackboardevents("towersboss_head_proj");
    if (isdefined(var_b21fc1a7) && var_b21fc1a7.size) {
        foreach (var_358d39a3 in var_b21fc1a7) {
            if (var_358d39a3.enemy === entity.favoriteenemy) {
                return false;
            }
        }
    }
    return true;
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x2 linked
// Checksum 0x9a3d07ec, Offset: 0x3218
// Size: 0xb4
function function_2bfd3841(entity) {
    entity.ai.var_c53cce81 = gettime() + randomint(3000);
    var_51955401 = spawnstruct();
    var_51955401.enemy = entity.favoriteenemy;
    entity.var_f6ea2286 = entity.favoriteenemy.origin;
    blackboard::addblackboardevent("towersboss_head_proj", var_51955401, randomintrange(3500, 4000));
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x2 linked
// Checksum 0x815c6067, Offset: 0x32d8
// Size: 0x7e
function function_18e1bf30(entity) {
    if (!elephantshouldmelee(entity)) {
        return false;
    }
    if (!util::within_fov(entity.origin, entity.angles, entity.favoriteenemy.origin, cos(45))) {
        return false;
    }
    return true;
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0x7eb4c6fb, Offset: 0x3360
// Size: 0x156
function private elephantshouldmelee(entity) {
    if (!isdefined(entity.favoriteenemy)) {
        return false;
    }
    if (entity asmistransitionrunning() || entity asmistransdecrunning()) {
        return false;
    }
    if (is_true(entity.ai.isturning)) {
        return false;
    }
    disttoenemysq = distancesquared(entity.favoriteenemy.origin, entity.origin);
    yawtoenemy = angleclamp180(entity.angles[1] - vectortoangles(entity.favoriteenemy.origin - entity.origin)[1]);
    if (disttoenemysq <= sqr(200) && abs(yawtoenemy) < 30) {
        return true;
    }
    return false;
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0xa9e3f91d, Offset: 0x34c0
// Size: 0x10
function private function_71790b86(*entity) {
    return true;
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0x15fd73fb, Offset: 0x34d8
// Size: 0x1be
function private function_ec336810(entity) {
    if (isdefined(entity.favoriteenemy)) {
        if (distance(entity.var_a6bdfeb8, entity.favoriteenemy.origin) > 6000) {
            if (distance(entity.var_a6bdfeb8, entity.origin) > 1000) {
                entity.ai.var_ea8d826a = 1;
                targetpos = getclosestpointonnavmesh(entity.var_a6bdfeb8, 400, entity getpathfindingradius() * 1.2);
                entity setgoal(targetpos);
                entity.var_473fb012 = 1;
            } else if (entity.health < entity.maxhealth) {
                entity.health = entity.maxhealth;
            }
        } else {
            entity.ai.var_ea8d826a = 0;
            entity.var_473fb012 = 0;
        }
    }
    if (entity.var_473fb012 === 1) {
        if (distance(entity.var_a6bdfeb8, entity.origin) < 600) {
            entity.var_473fb012 = 0;
            entity.ai.var_ea8d826a = 0;
            if (entity.health < entity.maxhealth) {
                entity.health = entity.maxhealth;
            }
        }
    }
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0x336e4b62, Offset: 0x36a0
// Size: 0x126
function private function_2ff17378(entity) {
    function_ec336810(entity);
    if (is_true(entity.ai.var_ea8d826a)) {
        return false;
    }
    if (!isdefined(entity.favoriteenemy)) {
        return false;
    }
    if (entity.ai.var_5c1cc6e9 > gettime()) {
        return false;
    }
    if (isdefined(entity.ai.var_a504b9a3)) {
        return false;
    }
    if (entity asmistransitionrunning() || entity asmistransdecrunning()) {
        return false;
    }
    if (is_true(entity.ai.isturning)) {
        return false;
    }
    if (!function_71790b86(entity)) {
        return false;
    }
    if (elephantshouldmelee(entity)) {
        return false;
    }
    return true;
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0x9052072a, Offset: 0x38b0
// Size: 0x9c
function private function_10a75bb7(entity) {
    if (function_2ff17378(entity)) {
        targetpos = getclosestpointonnavmesh(entity.favoriteenemy.origin, 400, entity getpathfindingradius() * 1.2);
        if (isdefined(targetpos)) {
            entity setgoal(targetpos);
            return true;
        }
    }
    return false;
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0xa7048eea, Offset: 0x3958
// Size: 0x13e
function private function_f2c697c7(entity) {
    entity.ai.var_a504b9a3 = new class_a504b9a3();
    entity.ai.var_a504b9a3.var_86d0fc5 = entity.goalpos;
    entity.ai.var_a504b9a3.var_9ab05afa = distancesquared(entity.origin, entity.goalpos);
    entity.ai.var_a504b9a3.startpos = entity.origin;
    entity.ai.var_a504b9a3.var_6392c3a2 = gettime() + randomintrange(3500, 4000);
    entity.ai.var_a504b9a3.var_190509f3 = sqr(250);
    entity.ai.var_a504b9a3.var_f84fafb2 = sqr(400);
    return true;
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0xde88f12a, Offset: 0x3aa0
// Size: 0xe2
function private function_5dee26ed(entity) {
    if (!isdefined(entity.var_261ff182)) {
        entity.var_261ff182 = entity.origin;
        entity.var_7ab66e6a = gettime() + 2000;
        return;
    }
    if (isdefined(entity.var_7ab66e6a) && entity.var_7ab66e6a < gettime()) {
        var_eef47db = distance(entity.origin, entity.var_261ff182);
        if (var_eef47db < 250) {
            entity.var_261ff182 = undefined;
            function_9c076ff9(entity);
            return;
        }
        entity.var_261ff182 = entity.origin;
        entity.var_7ab66e6a = gettime() + 2000;
    }
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0xc70974e8, Offset: 0x3b90
// Size: 0x5ca
function private function_f8145b00(entity) {
    if (isdefined(entity.favoriteenemy) && isalive(entity.favoriteenemy)) {
        assert(isdefined(entity.ai.var_a504b9a3));
        assert(isdefined(entity.ai.var_a504b9a3.var_86d0fc5));
        assert(isdefined(entity.ai.var_a504b9a3.var_6392c3a2));
        function_5dee26ed(entity);
        /#
            recordsphere(entity.ai.var_a504b9a3.var_86d0fc5, 8, (1, 0, 0), "<unknown string>");
        #/
        if (entity asmistransitionrunning() || entity asmistransdecrunning()) {
            return true;
        }
        if (gettime() < entity.ai.var_a504b9a3.var_9177748f) {
            return true;
        }
        if (gettime() <= entity.ai.var_a504b9a3.var_6392c3a2) {
            var_ba63d54d = distancesquared(entity.ai.var_a504b9a3.var_86d0fc5, entity.favoriteenemy.origin);
            var_3a73a0ae = distancesquared(entity.ai.var_a504b9a3.startpos, entity.favoriteenemy.origin) > entity.ai.var_a504b9a3.var_9ab05afa;
            threshold = entity.ai.var_a504b9a3.var_190509f3;
            if (var_3a73a0ae) {
                threshold = entity.ai.var_a504b9a3.var_f84fafb2;
            }
            if (var_ba63d54d <= threshold && sighttracepassed(entity.origin + (0, 0, 200), entity.favoriteenemy.origin + (0, 0, 100), 0, entity, entity.favoriteenemy)) {
                /#
                    recordline(entity.origin + (0, 0, 200), entity.favoriteenemy.origin + (0, 0, 200), (0, 1, 0), "<unknown string>");
                #/
                targetpos = getclosestpointonnavmesh(entity.favoriteenemy.origin, 400, entity getpathfindingradius() * 1.2);
                if (isdefined(targetpos)) {
                    /#
                        recordsphere(targetpos, 8, (0, 1, 1), "<unknown string>");
                    #/
                    dirtoenemy = vectornormalize(targetpos - self.origin);
                    targetpos += vectorscale(dirtoenemy * -1, 170);
                    targetpos = getclosestpointonnavmesh(targetpos, 400, entity getpathfindingradius() * 1.2);
                    if (isdefined(targetpos)) {
                        path = generatenavmeshpath(self.origin, targetpos, self);
                        if (!isdefined(path) || !isdefined(path.pathpoints) || path.pathpoints.size == 0) {
                            /#
                                recordsphere(targetpos, 8, (0.1, 0.1, 0.1), "<unknown string>");
                            #/
                        } else {
                            entity setgoal(targetpos);
                            /#
                                recordsphere(targetpos, 8, (0, 0, 1), "<unknown string>");
                            #/
                            /#
                                recordline(entity.ai.var_a504b9a3.var_86d0fc5, targetpos, (1, 0, 0), "<unknown string>");
                            #/
                        }
                    } else {
                        /#
                            recordsphere(targetpos, 8, (0.1, 0.1, 0.1), "<unknown string>");
                        #/
                    }
                }
            }
        }
    }
    entity.ai.var_a504b9a3.var_9177748f = gettime() + 200;
    return true;
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0xcacf91f7, Offset: 0x4168
// Size: 0x6a
function private function_d3d560e9(entity) {
    entity aiutility::cleararrivalpos(entity);
    entity.ai.var_a504b9a3 = undefined;
    entity.ai.var_5c1cc6e9 = gettime() + randomintrange(500, 2000);
    return true;
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 3, eflags: 0x2 linked
// Checksum 0x90e00ed9, Offset: 0x41e0
// Size: 0x188
function is_player_valid(player, checkignoremeflag, ignore_laststand_players) {
    if (!isdefined(player)) {
        return 0;
    }
    if (!isalive(player)) {
        return 0;
    }
    if (!isplayer(player)) {
        return 0;
    }
    if (player isnotarget()) {
        return 0;
    }
    if (isdefined(player.is_zombie) && player.is_zombie == 1) {
        return 0;
    }
    if (player.sessionstate == "spectator") {
        return 0;
    }
    if (player.sessionstate == "intermission") {
        return 0;
    }
    if (is_true(player.intermission)) {
        return 0;
    }
    if (!is_true(ignore_laststand_players)) {
        if (player laststand::player_is_in_laststand()) {
            return 0;
        }
    }
    if (player isnotarget()) {
        return 0;
    }
    if (is_true(checkignoremeflag) && player.ignoreme) {
        return 0;
    }
    if (isdefined(level.is_player_valid_override)) {
        return [[ level.is_player_valid_override ]](player);
    }
    return 1;
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 1, eflags: 0x6 linked
// Checksum 0xb0145431, Offset: 0x4370
// Size: 0xc
function private function_2c58bc39(*entity) {
    
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 5, eflags: 0x6 linked
// Checksum 0xec69388e, Offset: 0x4388
// Size: 0xa4
function private function_5e17ac7a(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration animmode("zonly_physics", 1);
    mocompduration pathmode("dont move");
    mocompduration clearpath();
    mocompduration setgoal(mocompduration.origin);
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 5, eflags: 0x6 linked
// Checksum 0xb7603b3c, Offset: 0x4438
// Size: 0x2c
function private function_e88518a1(*entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    
}

// Namespace namespace_2e61cc4b/namespace_2e61cc4b
// Params 5, eflags: 0x6 linked
// Checksum 0xfcd478da, Offset: 0x4470
// Size: 0x6c
function private function_10296bfa(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration pathmode("move allowed");
    mocompduration setgoal(mocompduration.origin);
}

