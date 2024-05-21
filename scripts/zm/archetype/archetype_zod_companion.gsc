// Atian COD Tools GSC CW decompiler test
#using script_48f7c4ab73137f8;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm.gsc;
#using script_ed50e9299d3e143;
#using scripts\zm\archetype\archetype_zod_companion_interface.gsc;
#using scripts\core_common\ai\systems\shared.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\ai\systems\destructible_character.gsc;
#using scripts\core_common\ai\systems\debug.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_mocomp.gsc;
#using scripts\core_common\ai\systems\ai_squads.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\ai\systems\ai_blackboard.gsc;
#using scripts\core_common\ai\zombie_death.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\ai\archetype_mocomps_utility.gsc;
#using scripts\core_common\ai\archetype_locomotion_utility.gsc;
#using scripts\core_common\ai\archetype_human_exposed.gsc;
#using script_3819e7a1427df6d2;
#using scripts\core_common\ai\archetype_cover_utility.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace archetype_zod_companion;

// Namespace archetype_zod_companion/archetype_zod_companion
// Params 0, eflags: 0x1
// Checksum 0xd9d8925a, Offset: 0xa20
// Size: 0x11c
function autoexec main() {
    clientfield::register("allplayers", "" + #"being_robot_revived", 24000, 1, "int");
    spawner::add_archetype_spawn_function(#"zod_companion", &zodcompanionbehavior::archetypezodcompanionblackboardinit);
    spawner::add_archetype_spawn_function(#"zod_companion", &zodcompanionserverutils::zodcompanionsoldierspawnsetup);
    zodcompanioninterface::registerzodcompanioninterfaceattributes();
    zodcompanionbehavior::registerbehaviorscriptfunctions();
    val::register("prioritize_target_near_leader", 1);
    val::default_value("prioritize_target_near_leader", 0);
    /#
        zm_devgui::function_c7dd7a17("parasite");
    #/
}

#namespace zodcompanionbehavior;

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 0, eflags: 0x0
// Checksum 0x454edb27, Offset: 0xb48
// Size: 0xf0c
function registerbehaviorscriptfunctions() {
    assert(isscriptfunctionptr(&zodcompaniontacticalwalkactionstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionTacticalWalkActionStart", &zodcompaniontacticalwalkactionstart);
    assert(isscriptfunctionptr(&zodcompanionabletoshootcondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionAbleToShoot", &zodcompanionabletoshootcondition);
    assert(isscriptfunctionptr(&zodcompanionshouldtacticalwalk));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionShouldTacticalWalk", &zodcompanionshouldtacticalwalk);
    assert(isscriptfunctionptr(&zodcompanionmovement));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionMovement", &zodcompanionmovement);
    assert(isscriptfunctionptr(&zodcompaniondelaymovement));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionDelayMovement", &zodcompaniondelaymovement);
    assert(isscriptfunctionptr(&zodcompanionsetdesiredstancetostand));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionSetDesiredStanceToStand", &zodcompanionsetdesiredstancetostand);
    assert(isscriptfunctionptr(&zodcompanionfinishedsprinttransition));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionFinishedSprintTransition", &zodcompanionfinishedsprinttransition);
    assert(isscriptfunctionptr(&zodcompanionsprinttransitioning));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionSprintTransitioning", &zodcompanionsprinttransitioning);
    assert(isscriptfunctionptr(&zodcompanionkeepscurrentmovementmode));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionKeepsCurrentMovementMode", &zodcompanionkeepscurrentmovementmode);
    assert(isscriptfunctionptr(&zodcompanionshouldmelee));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionShouldMelee", &zodcompanionshouldmelee);
    assert(isscriptfunctionptr(&zodcompanionisinmeleecooldown));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionIsInMeleeCooldown", &zodcompanionisinmeleecooldown);
    assert(isscriptfunctionptr(&zodshouldattackenemy));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodShouldAttackEnemy", &zodshouldattackenemy);
    assert(isscriptfunctionptr(&zodcompanionisexhausted));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionIsExhausted", &zodcompanionisexhausted);
    assert(isscriptfunctionptr(&zodcompanionhasattackable));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionHasAttackable", &zodcompanionhasattackable);
    assert(isscriptfunctionptr(&function_b0f37bd1));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_20604332da3960bd", &function_b0f37bd1);
    assert(isscriptfunctionptr(&zodcompanionhasdefendlocation));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionHasDefendLocation", &zodcompanionhasdefendlocation);
    assert(isscriptfunctionptr(&zodcompaniondontshootwhilemoving));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionDontShootWhileMoving", &zodcompaniondontshootwhilemoving);
    assert(isscriptfunctionptr(&zodcompanioniscarryingbomb));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionIsCarryingBomb", &zodcompanioniscarryingbomb);
    assert(isscriptfunctionptr(&zodcompanioncarrybombcanmove));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionCarryBombCanMove", &zodcompanioncarrybombcanmove);
    assert(isscriptfunctionptr(&zodcompanionissprinting));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionIsSprinting", &zodcompanionissprinting);
    assert(isscriptfunctionptr(&zodcompanioncanjuke));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionCanJuke", &zodcompanioncanjuke);
    assert(isscriptfunctionptr(&zodcompanioncanpreemptivejuke));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionCanPreemptiveJuke", &zodcompanioncanpreemptivejuke);
    assert(isscriptfunctionptr(&zodcompanionjukeinitialize));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionJukeInitialize", &zodcompanionjukeinitialize);
    assert(isscriptfunctionptr(&zodcompanionpreemptivejuketerminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionPreemptiveJukeTerminate", &zodcompanionpreemptivejuketerminate);
    assert(isscriptfunctionptr(&zodcompanionleapterminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionLeapTerminate", &zodcompanionleapterminate);
    assert(isscriptfunctionptr(&zodcompaniontargetservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionTargetService", &zodcompaniontargetservice);
    assert(isscriptfunctionptr(&zodcompaniontryreacquireservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionTryReacquireService", &zodcompaniontryreacquireservice);
    assert(isscriptfunctionptr(&manage_companion_movement));
    behaviortreenetworkutility::registerbehaviortreescriptapi("manage_companion_movement", &manage_companion_movement);
    assert(isscriptfunctionptr(&zodcompanioncollisionservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionCollisionService", &zodcompanioncollisionservice);
    assert(isscriptfunctionptr(&trystoppingcompanionservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("tryStoppingCompanionService", &trystoppingcompanionservice);
    assert(isscriptfunctionptr(&zodcompanionexhaustedbehaviorservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionExhaustedBehaviorService", &zodcompanionexhaustedbehaviorservice);
    assert(isscriptfunctionptr(&zodcompaniondefendlocationbehaviorservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionDefendLocationBehaviorService", &zodcompaniondefendlocationbehaviorservice);
    assert(isscriptfunctionptr(&zodcompanionclearobstacleservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCompanionClearObstacleService", &zodcompanionclearobstacleservice);
    assert(!isdefined(&function_72edbea6) || isscriptfunctionptr(&function_72edbea6));
    assert(!isdefined(&function_7598aa02) || isscriptfunctionptr(&function_7598aa02));
    assert(!isdefined(&function_74ffdef5) || isscriptfunctionptr(&function_74ffdef5));
    behaviortreenetworkutility::registerbehaviortreeaction("zodProceduralTraversal", &function_72edbea6, &function_7598aa02, &function_74ffdef5);
    assert(isscriptfunctionptr(&zodcalcproceduraltraversal));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodCalcProceduralTraversal", &zodcalcproceduraltraversal);
    assert(isscriptfunctionptr(&function_2b827272));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodProceduralLanding", &function_2b827272);
    assert(isscriptfunctionptr(&zodtraverseend));
    behaviortreenetworkutility::registerbehaviortreescriptapi("zodTraverseEnd", &zodtraverseend);
    animationstatenetwork::registeranimationmocomp("mocomp_procedural_traversal", &function_26cc92cd, &function_7d1f506, &function_dd922f46);
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0xe5da91f3, Offset: 0x1a60
// Size: 0x232
function private zodcompanionshouldmelee(behaviortreeentity) {
    if (function_b0f37bd1(behaviortreeentity)) {
        return true;
    } else {
        enemy = function_a8bce123(behaviortreeentity);
        if (isdefined(enemy)) {
            meleedist = 80;
            if (isdefined(behaviortreeentity.meleeweapon) && behaviortreeentity.meleeweapon !== level.weaponnone) {
                meleedist = behaviortreeentity.meleeweapon.aimeleerange;
            }
            if (isalive(enemy) && distancesquared(behaviortreeentity.origin, enemy.origin) < sqr(meleedist)) {
                if (behaviortreeentity cansee(enemy)) {
                    return true;
                }
            } else {
                var_d32424f1 = getentitiesinradius(behaviortreeentity.origin, meleedist, 15);
                var_d32424f1 = array::exclude(var_d32424f1, behaviortreeentity);
                if (var_d32424f1.size > 0) {
                    foreach (ai in var_d32424f1) {
                        if (isalive(ai) && behaviortreeentity cansee(ai)) {
                            self.favoriteenemy = ai;
                            self.nexttargetserviceupdate = gettime() + 1000;
                            return true;
                        }
                    }
                } else {
                    return false;
                }
            }
        }
    }
    return false;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x562af5bc, Offset: 0x1ca0
// Size: 0x4e
function private zodcompanionisinmeleecooldown(behaviortreeentity) {
    if (!isdefined(behaviortreeentity)) {
        return false;
    }
    if (function_b0f37bd1(behaviortreeentity)) {
        return false;
    }
    return isdefined(behaviortreeentity.melee_cooldown) && gettime() < behaviortreeentity.melee_cooldown;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x65f3df1, Offset: 0x1cf8
// Size: 0x54
function private function_a8bce123(entity) {
    if (isdefined(entity.attackable)) {
        return entity.attackable;
    }
    return isdefined(entity.enemy) ? entity.enemy : entity.favoriteenemy;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x82587a31, Offset: 0x1d58
// Size: 0x56
function private zodshouldattackenemy(entity) {
    var_d81e0034 = isdefined(entity.enemy) || isdefined(entity.favoriteenemy);
    return var_d81e0034 && !zodcompanionhasattackable(entity);
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0xd39f32e, Offset: 0x1db8
// Size: 0xbe
function trystoppingcompanionservice(entity) {
    if (is_true(entity.exhausted) || isdefined(entity.var_9140144d) || isdefined(entity.v_zombie_custom_goal_pos) || is_true(self.reviving_a_player)) {
        return false;
    }
    enemy = function_a8bce123(entity);
    if (!isdefined(enemy)) {
        aiutility::keepclaimnode(entity);
        return true;
    }
    aiutility::releaseclaimnode(entity);
    return false;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 5, eflags: 0x4
// Checksum 0xfc3049cd, Offset: 0x1e80
// Size: 0x74
function private mocompignorepainfaceenemyinit(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration.blockingpain = 1;
    mocompduration orientmode("face enemy");
    mocompduration animmode("pos deltas");
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 5, eflags: 0x4
// Checksum 0xb079c321, Offset: 0x1f00
// Size: 0x36
function private mocompignorepainfaceenemyterminate(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration.blockingpain = 0;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 0, eflags: 0x4
// Checksum 0x4244059c, Offset: 0x1f40
// Size: 0x74
function private archetypezodcompanionblackboardinit() {
    entity = self;
    entity.pushable = 1;
    blackboard::createblackboardforentity(entity);
    ai::createinterfaceforentity(entity);
    self setblackboardattribute("_locomotion_speed", "locomotion_speed_sprint");
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x8aceea0e, Offset: 0x1fc0
// Size: 0x44
function private zodcompaniondelaymovement(entity) {
    entity pathmode("move delayed", 0, randomfloatrange(1, 2));
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x62221bdd, Offset: 0x2010
// Size: 0x5c
function private zodcompanionmovement(entity) {
    if (entity getblackboardattribute("_stance") != "stand") {
        entity setblackboardattribute("_desired_stance", "stand");
    }
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0x25fd5903, Offset: 0x2078
// Size: 0x13e
function zodcompanioncanjuke(entity) {
    if (!is_true(entity.steppedoutofcover) && aiutility::canjuke(entity)) {
        jukeevents = blackboard::getblackboardevents("robot_juke");
        tooclosejukedistancesqr = 57600;
        foreach (event in jukeevents) {
            if (event.data.entity != entity && distance2dsquared(entity.origin, event.data.origin) <= tooclosejukedistancesqr) {
                return false;
            }
        }
        return true;
    }
    return false;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0x5f151201, Offset: 0x21c0
// Size: 0x2be
function zodcompanioncanpreemptivejuke(entity) {
    if (!isdefined(entity.enemy) || !isplayer(entity.enemy)) {
        return 0;
    }
    if (entity getblackboardattribute("_stance") == "crouch") {
        return 0;
    }
    if (!entity.shouldpreemptivejuke) {
        return 0;
    }
    if (isdefined(entity.nextpreemptivejuke) && entity.nextpreemptivejuke > gettime()) {
        return 0;
    }
    if (entity.enemy playerads() < entity.nextpreemptivejukeads) {
        return 0;
    }
    if (distancesquared(entity.origin, entity.enemy.origin) < 360000) {
        angledifference = absangleclamp180(entity.angles[1] - entity.enemy.angles[1]);
        /#
            record3dtext(angledifference, entity.origin + (0, 0, 5), (0, 1, 0), "neck");
        #/
        if (angledifference > 135) {
            enemyangles = entity.enemy getgunangles();
            toenemy = entity.enemy.origin - entity.origin;
            forward = anglestoforward(enemyangles);
            dotproduct = abs(vectordot(vectornormalize(toenemy), forward));
            /#
                record3dtext(acos(dotproduct), entity.origin + (0, 0, 10), (0, 1, 0), "neck");
            #/
            if (dotproduct > 0.9848) {
                return zodcompanioncanjuke(entity);
            }
        }
    }
    return 0;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0xb47bf06a, Offset: 0x2488
// Size: 0xa8
function private _isvalidplayer(player) {
    if (!isdefined(player) || !isalive(player) || !isplayer(player) || player.sessionstate == "spectator" || player.sessionstate == "intermission" || player laststand::player_is_in_laststand() || player.ignoreme) {
        return false;
    }
    return true;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 3, eflags: 0x4
// Checksum 0x73d1a21b, Offset: 0x2538
// Size: 0x248
function private _findclosest(entity, entities, var_eac22f6) {
    if (!entities.size) {
        return undefined;
    }
    var_b98a92a2 = isdefined(entity.var_b98a92a2) ? entity.var_b98a92a2 : 2500;
    entities = arraysortclosest(entities, var_eac22f6, 10, 0, var_b98a92a2);
    if (!entities.size) {
        return undefined;
    }
    potential_targets = [];
    var_8d6705e8 = [];
    foreach (target in entities) {
        enemypositiononnavmesh = getclosestpointonnavmesh(target.origin, 200);
        if (isdefined(enemypositiononnavmesh)) {
            potential_targets[potential_targets.size] = target;
            var_8d6705e8[var_8d6705e8.size] = enemypositiononnavmesh;
        }
    }
    if (!potential_targets.size) {
        return undefined;
    }
    var_674755ca = function_5cb65d8a(var_eac22f6, var_8d6705e8, entity, entity getpathfindingradius(), entity function_6a9ae71(), -1, -1, 1000);
    if (!isdefined(var_674755ca)) {
        return undefined;
    }
    for (i = 0; i < var_674755ca.size; i++) {
        if (var_674755ca[i] >= 0) {
            closest = {#distancesquared:distancesquared(var_eac22f6, var_8d6705e8[i]), #entity:potential_targets[i]};
            return closest;
        }
    }
    return undefined;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x61328ce2, Offset: 0x2788
// Size: 0x4b2
function private zodcompaniontargetservice(entity) {
    if (!zodcompanionabletoshootcondition(entity)) {
        return;
    }
    if (is_true(entity.ignoreall)) {
        return;
    }
    if (isdefined(entity.attackable)) {
        entity.nexttargetserviceupdate = 0;
        return;
    }
    if (is_true(entity.enemy.aat_turned)) {
        entity clearenemy();
    }
    if (isdefined(entity.nexttargetserviceupdate) && entity.nexttargetserviceupdate > gettime() && isalive(entity.favoriteenemy) && !is_true(entity.favoriteenemy.aat_turned)) {
        return 0;
    }
    entity.nexttargetserviceupdate = gettime() + randomintrange(500, 1000);
    aienemies = [];
    playerenemies = [];
    ais = getactorteamarray("axis", "team3");
    players = getplayers();
    if (is_true(entity.("prioritize_target_near_leader")) && isdefined(entity.leader)) {
        positiononnavmesh = getclosestpointonnavmesh(entity.leader.origin);
    }
    if (!isdefined(positiononnavmesh)) {
        positiononnavmesh = getclosestpointonnavmesh(entity.origin, 200);
    }
    if (!isdefined(positiononnavmesh)) {
        return;
    }
    if (ais.size) {
        var_f7dcf937 = [];
        foreach (ai in ais) {
            if (isalive(ai)) {
                var_f7dcf937[var_f7dcf937.size] = ai;
            }
        }
        closestai = _findclosest(entity, var_f7dcf937, positiononnavmesh);
    }
    if (!is_false(entity.var_ab38d331)) {
        validplayers = [];
        foreach (value in players) {
            if (_isvalidplayer(value)) {
                validplayers[validplayers.size] = value;
            }
        }
        closestplayer = _findclosest(entity, validplayers, positiononnavmesh);
    }
    if (!isdefined(closestplayer.entity) && !isdefined(closestai.entity)) {
        entity.favoriteenemy = undefined;
        return;
    }
    if (isdefined(self.var_135f3e2e)) {
        entity.favoriteenemy = [[ self.var_135f3e2e ]](closestai, closestplayer);
        return;
    }
    if (!isdefined(closestai.entity)) {
        entity.favoriteenemy = closestplayer.entity;
        return;
    }
    if (!isdefined(closestplayer.entity)) {
        entity.favoriteenemy = closestai.entity;
        return;
    }
    if (closestai.distancesquared < closestplayer.distancesquared) {
        entity.favoriteenemy = closestai.entity;
        return;
    }
    entity.favoriteenemy = closestplayer.entity;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x5ce54723, Offset: 0x2c48
// Size: 0x2c
function private zodcompaniontacticalwalkactionstart(entity) {
    entity orientmode("face enemy");
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0xae1041a, Offset: 0x2c80
// Size: 0x4e
function private zodcompanionabletoshootcondition(entity) {
    return entity.weapon.name != level.weaponnone.name && !gibserverutils::isgibbed(entity, 16);
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x7735c155, Offset: 0x2cd8
// Size: 0x2e
function private zodcompanionshouldtacticalwalk(entity) {
    if (!entity haspath()) {
        return false;
    }
    return true;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0xae1b590a, Offset: 0x2d10
// Size: 0x94
function private zodcompanionjukeinitialize(entity) {
    aiutility::choosejukedirection(entity);
    entity clearpath();
    jukeinfo = spawnstruct();
    jukeinfo.origin = entity.origin;
    jukeinfo.entity = entity;
    blackboard::addblackboardevent("robot_juke", jukeinfo, 2000);
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0xdcc5d7ed, Offset: 0x2db0
// Size: 0x5a
function private zodcompanionpreemptivejuketerminate(entity) {
    entity.nextpreemptivejuke = gettime() + randomintrange(4000, 6000);
    entity.nextpreemptivejukeads = randomfloatrange(0.5, 0.95);
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0xbfab9a3e, Offset: 0x2e18
// Size: 0x34
function private zodcompanionleapterminate(entity) {
    entity setblackboardattribute("_locomotion_speed", "locomotion_speed_walk");
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0xba1864d4, Offset: 0x2e58
// Size: 0x2b6
function private zodcompaniontryreacquireservice(entity) {
    if (!isdefined(entity.reacquire_state)) {
        entity.reacquire_state = 0;
    }
    if (!isdefined(entity.enemy)) {
        entity.reacquire_state = 0;
        return false;
    }
    if (entity haspath()) {
        return false;
    }
    if (!zodcompanionabletoshootcondition(entity)) {
        return false;
    }
    if (entity cansee(entity.enemy) && entity canshootenemy()) {
        entity.reacquire_state = 0;
        return false;
    }
    dirtoenemy = vectornormalize(entity.enemy.origin - entity.origin);
    forward = anglestoforward(entity.angles);
    if (vectordot(dirtoenemy, forward) < 0.5) {
        entity.reacquire_state = 0;
        return false;
    }
    switch (entity.reacquire_state) {
    case 0:
    case 1:
    case 2:
        step_size = 32 + entity.reacquire_state * 32;
        reacquirepos = entity reacquirestep(step_size);
        break;
    case 4:
        if (!entity cansee(entity.enemy) || !entity canshootenemy()) {
            entity flagenemyunattackable();
        }
        break;
    default:
        if (entity.reacquire_state > 15) {
            entity.reacquire_state = 0;
            return false;
        }
        break;
    }
    if (isvec(reacquirepos)) {
        entity function_a57c34b7(reacquirepos);
        return true;
    }
    entity.reacquire_state++;
    return false;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x751b8a77, Offset: 0x3118
// Size: 0xba4
function private manage_companion_movement(entity) {
    self endon(#"death");
    if (is_true(entity.exhausted)) {
        return;
    }
    if (zodcompanioniscarryingbomb(entity)) {
        return;
    }
    if (isdefined(level.var_1a612d42) && level.var_1a612d42.eligible_leader) {
        self.leader = level.var_1a612d42;
    }
    if (!isdefined(entity.var_5f694f04)) {
        entity.var_5f694f04 = 0;
    }
    if (isdefined(entity.ai.bulletsinclip) && entity.ai.bulletsinclip < entity.weapon.clipsize) {
        entity.ai.bulletsinclip = entity.weapon.clipsize;
    }
    if (entity.reviving_a_player === 1) {
        return;
    }
    if (entity.time_expired === 1) {
        return;
    }
    if (entity.var_8dc43281 === 1 || entity.teleporting === 1) {
        return;
    }
    if (isdefined(entity.leader) && entity.leader.teleporting === 1) {
        entity thread function_818f64d1(entity.leader.teleport_location);
        return;
    }
    if (entity.var_7e56b71c === 1) {
        return;
    }
    if (isdefined(entity.leader) && entity.leader.is_flung === 1) {
        entity thread function_d5390a05(entity.leader.var_a76eba5b);
    }
    foreach (player in level.players) {
        if (player laststand::player_is_in_laststand() && entity.reviving_a_player === 0 && (!is_true(player.var_b895a3ff) && player.revivetrigger.beingrevived !== 1 || is_true(player.var_b895a3ff) && player.var_dc4f101.revivetrigger.beingrevived !== 1)) {
            time = gettime();
            point = is_true(player.var_b895a3ff) ? player.var_dc4f101.origin : player.origin;
            if (zm_utility::check_point_in_playable_area(point) && distancesquared(entity.origin, point) <= sqr(1024) && time >= entity.var_5f694f04) {
                if (isdefined(player.var_7d960eaa) && player.var_7d960eaa > gettime()) {
                    continue;
                }
                entity.reviving_a_player = 1;
                entity zod_companion_revive_player(player);
                return;
            }
        }
    }
    if (isdefined(entity.attackable) && isdefined(entity.var_b238ef38) && isdefined(entity.var_b238ef38.position)) {
        if (zodcompanionhasdefendlocation(entity)) {
            entity zodcompanionutility::function_34179e9a();
        }
        var_ad1c1da4 = entity.var_b238ef38.position;
        if (distancesquared(entity.origin, var_ad1c1da4) <= sqr(entity getpathfindingradius())) {
            entity clearpath();
            return;
        }
        goalinfo = entity function_4794d6a3();
        if (!isdefined(goalinfo.goalpos) || entity.var_5db9cc48 !== goalinfo.goalpos) {
            if (distancesquared(entity.origin, var_ad1c1da4) > sqr(64)) {
                if (is_true(entity.var_b238ef38.slot.on_navmesh)) {
                    positiononnavmesh = var_ad1c1da4;
                } else {
                    positiononnavmesh = getclosestpointonnavmesh(var_ad1c1da4, entity getpathfindingradius(), entity getpathfindingradius());
                }
                if (isdefined(positiononnavmesh)) {
                    entity.companion_destination = positiononnavmesh;
                    entity.var_5db9cc48 = positiononnavmesh;
                    entity clearforcedgoal();
                    entity setgoal(positiononnavmesh, 1);
                }
            }
            return;
        }
        if (entity isatgoal()) {
            entity clearpath();
        }
        return;
    }
    if (isdefined(entity.var_9140144d)) {
        if (isdefined(entity.var_a72ffc1e) && entity namespace_47c5b560::function_72371f2a() && isdefined(entity.v_zombie_custom_goal_pos)) {
            goalinfo = entity function_4794d6a3();
            if (!isdefined(goalinfo.goalpos) || entity.v_zombie_custom_goal_pos !== goalinfo.goalpos) {
                entity setgoal(entity.v_zombie_custom_goal_pos, 1);
            }
        }
        return;
    }
    if (!isdefined(entity.var_f4fb31fe)) {
        entity.var_f4fb31fe = gettime();
    }
    if (gettime() >= entity.var_f4fb31fe && isdefined(level.active_powerups) && level.active_powerups.size > 0) {
        if (!isdefined(entity.var_345d40)) {
            entity.var_345d40 = 0;
        }
        foreach (powerup in level.active_powerups) {
            if (isdefined(powerup)) {
                if (isinarray(entity.var_2f03f56a, powerup.powerup_name)) {
                    dist = distancesquared(entity.origin, powerup.origin);
                    if (dist <= 147456 && randomint(100) < 50 + 10 * entity.var_345d40) {
                        entity setgoal(powerup.origin, 1);
                        entity.var_f4fb31fe = gettime() + randomintrange(2500, 3500);
                        entity.next_move_time = gettime() + randomintrange(2500, 3500);
                        entity.var_345d40 = 0;
                        return;
                    }
                    entity.var_345d40 += 1;
                }
            }
        }
        entity.var_f4fb31fe = gettime() + randomintrange(333, 666);
    }
    follow_radius_squared = sqr(isdefined(entity.var_397796ce) ? entity.var_397796ce : 256);
    if (isdefined(entity.leader)) {
        entity.companion_anchor_point = entity.leader.origin;
    }
    if (isdefined(entity.pathgoalpos)) {
        dist_check_start_point = entity.pathgoalpos;
    } else {
        dist_check_start_point = entity.origin;
    }
    if (isdefined(entity.enemy) && isdefined(entity.enemy.archetype) && entity.enemy.archetype == "parasite") {
        height_difference = abs(entity.origin[2] - entity.enemy.origin[2]);
        var_3b91e18 = sqr(1.5 * height_difference);
        if (distancesquared(dist_check_start_point, entity.enemy.origin) < var_3b91e18) {
            entity pick_new_movement_point();
        }
    }
    if (distancesquared(dist_check_start_point, entity.companion_anchor_point) > follow_radius_squared || distancesquared(dist_check_start_point, entity.companion_anchor_point) < 4096) {
        entity pick_new_movement_point();
    }
    if (gettime() >= entity.next_move_time) {
        entity pick_new_movement_point();
    }
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0xd0585864, Offset: 0x3cc8
// Size: 0x1a6
function private zodcompanioncollisionservice(entity) {
    if (isdefined(entity.dontpushtime)) {
        if (gettime() < entity.dontpushtime) {
            return true;
        }
    }
    var_26cddecd = 0;
    zombies = getaiteamarray(level.zombie_team);
    foreach (zombie in zombies) {
        if (zombie == entity) {
            continue;
        }
        dist_sq = distancesquared(entity.origin, zombie.origin);
        if (dist_sq < 14400) {
            if (is_true(zombie.cant_move)) {
                zombie thread function_d0371e1e();
                var_26cddecd = 1;
            }
        }
    }
    if (var_26cddecd) {
        entity collidewithactors(0);
        entity.dontpushtime = gettime() + 2000;
        return true;
    }
    entity collidewithactors(1);
    return false;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 0, eflags: 0x4
// Checksum 0xa54d0553, Offset: 0x3e78
// Size: 0x4c
function private function_d0371e1e() {
    self endon(#"death");
    self collidewithactors(0);
    wait(2);
    self collidewithactors(1);
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 2, eflags: 0x4
// Checksum 0x7365adc7, Offset: 0x3ed0
// Size: 0x10e
function private function_a2ba1ce8(target_entity, max_distance) {
    entity = self;
    target_location = target_entity.origin;
    if (distancesquared(entity.origin, target_location) > sqr(max_distance)) {
        return false;
    }
    path = entity calcapproximatepathtoposition(target_location);
    segmentlength = 0;
    for (index = 1; index < path.size; index++) {
        currentseglength = distance(path[index - 1], path[index]);
        if (currentseglength + segmentlength > max_distance) {
            return false;
        }
        segmentlength += currentseglength;
    }
    return true;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x102dacb8, Offset: 0x3fe8
// Size: 0x72
function private function_818f64d1(var_d2a1361a) {
    self endon(#"death");
    self.var_8dc43281 = 1;
    self setgoal(var_d2a1361a, 1);
    self waittill(#"goal");
    wait(1);
    self.var_8dc43281 = 0;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x62444fb0, Offset: 0x4068
// Size: 0xc2
function private function_d5390a05(var_33d955f9) {
    self endon(#"death");
    self.var_7e56b71c = 1;
    var_cf5caf08 = getnodearray("flinger_traversal", "script_noteworthy");
    var_b2546f7 = arraygetclosest(var_33d955f9, var_cf5caf08);
    self setgoal(var_b2546f7.origin, 1);
    self waittill(#"goal");
    wait(1);
    self.var_7e56b71c = 0;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 0, eflags: 0x4
// Checksum 0xa643ab28, Offset: 0x4138
// Size: 0x4c6
function private pick_new_movement_point() {
    if (isdefined(self.v_zombie_custom_goal_pos)) {
        goalinfo = self function_4794d6a3();
        if (goalinfo.goalpos === self.v_zombie_custom_goal_pos) {
            return;
        }
        /#
            if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
                println("MOD_EXPLOSIVE" + "full_ammo" + self.v_zombie_custom_goal_pos);
            }
        #/
        self.companion_destination = self.v_zombie_custom_goal_pos;
        aiutility::releaseclaimnode(self);
        self clearforcedgoal();
        self setgoal(self.companion_destination, 1);
        self.next_move_time = gettime() + randomintrange(20000, 30000);
        return;
    }
    if (namespace_47c5b560::aishouldleap(self) || is_true(self.var_2b5f41fd)) {
        /#
            if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
                println("MOD_EXPLOSIVE" + "<unknown string>");
            }
        #/
        self.next_move_time = gettime() + randomintrange(2000, 3000);
        return;
    }
    var_a054e094 = isdefined(self.var_397796ce) ? self.var_397796ce : 256;
    queryresult = positionquery_source_navigation(self.companion_anchor_point, 96, var_a054e094, 32, 20, self);
    if (queryresult.data.size) {
        if (isdefined(self.enemy) && isdefined(self.enemy.archetype) && self.enemy.archetype == "parasite") {
            array::filter(queryresult.data, 0, &function_bc4cbfe, self.enemy);
        }
    }
    if (queryresult.data.size) {
        for (point = queryresult.data[randomint(queryresult.data.size)]; queryresult.data.size > 1 && isdefined(self.companion_destination) && point.origin === self.companion_destination; point = queryresult.data[randomint(queryresult.data.size)]) {
        }
        pathsuccess = self findpath(self.origin, point.origin, 1, 0);
        if (!pathsuccess) {
            pathsuccess = self namespace_47c5b560::function_765e9504(point.origin);
        }
        if (pathsuccess) {
            self.companion_destination = point.origin;
        } else {
            self.next_move_time = gettime() + randomintrange(500, 1500);
            return;
        }
    }
    if (isdefined(self.companion_destination)) {
        /#
            if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
                println("MOD_EXPLOSIVE" + "<unknown string>" + self.companion_destination);
            }
        #/
        if (!self zodcompanionutility::function_c2725e7e(self.companion_destination)) {
            self setgoal(self.companion_destination, 1);
        }
    }
    self.next_move_time = gettime() + randomintrange(20000, 30000);
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x8f685ce6, Offset: 0x4608
// Size: 0xa8
function private function_bc4cbfe(parasite) {
    point = self;
    height_difference = abs(point.origin[2] - parasite.origin[2]);
    var_3b91e18 = sqr(1.5 * height_difference);
    return distancesquared(point.origin, parasite.origin) > var_3b91e18;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x29d66199, Offset: 0x46b8
// Size: 0x6c
function private zodcompanionsetdesiredstancetostand(behaviortreeentity) {
    currentstance = behaviortreeentity getblackboardattribute("_stance");
    if (currentstance == "crouch") {
        behaviortreeentity setblackboardattribute("_desired_stance", "stand");
    }
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0xb18f766c, Offset: 0x4730
// Size: 0x894
function zod_companion_revive_player(player) {
    self endon(#"death", #"revive_terminated", #"end_game");
    player endon(#"disconnect");
    if (!is_true(self.reviving_a_player)) {
        self.reviving_a_player = 1;
    }
    self flag::set(#"reviving_a_player");
    player.being_revived_by_robot = 0;
    self thread zod_companion_monitor_revive_attempt(player);
    self val::set(#"zod_companion", "ignoreall", 1);
    pathmode = self getpathmode();
    var_46939b30 = 96;
    var_26304c9d = 64;
    var_7ad033f4 = 3;
    while (true) {
        target_point = is_true(player.var_b895a3ff) ? player.var_dc4f101.origin : player.origin;
        if (!isdefined(self.companion_destination) || distancesquared(self.companion_destination, target_point) > sqr(var_46939b30)) {
            queryresult = positionquery_source_navigation(target_point, var_26304c9d, var_46939b30, 96, 18, self);
            if (queryresult.data.size) {
                point = queryresult.data[randomint(queryresult.data.size)];
                self.companion_destination = point.origin;
            } else {
                if (var_7ad033f4 == 3) {
                    var_46939b30 = 128;
                    var_26304c9d = 32;
                }
                var_7ad033f4--;
                if (var_7ad033f4 == 0) {
                    println("<unknown string>" + target_point);
                    player.var_7d960eaa = gettime() + 1000;
                    self.var_90b19379 = 1;
                    return;
                }
                wait(1);
                continue;
            }
        }
        self pathmode("move allowed");
        aiutility::releaseclaimnode(self);
        self clearforcedgoal();
        self setgoal(self.companion_destination, 1);
        self waittilltimeout(1, #"goal");
        if (self isatgoal() && distancesquared(self.companion_destination, self.origin) <= sqr(self.goalradius)) {
            break;
        }
    }
    self pathmode(pathmode);
    waitframe(1);
    var_4ac740f2 = is_true(player.var_b895a3ff) ? player.var_dc4f101.revivetrigger : player.revivetrigger;
    target_point = is_true(player.var_b895a3ff) ? player.var_dc4f101.origin : player.origin;
    if (isplayer(player) && isdefined(var_4ac740f2)) {
        level.var_ee623e8 = 1;
        var_4ac740f2.beingrevived = 1;
        player.being_revived_by_robot = 1;
        player.var_c6a6f334 = 1;
        vector = vectornormalize(target_point - self.origin);
        angles = vectortoangles(vector);
        angles = (0, angles[1], 0);
        self teleport(self.origin, angles);
        if (isdefined(self.var_69bfb00a)) {
            self [[ self.var_69bfb00a ]](angles);
        } else {
            self thread animation::play("ai_robot_base_stn_exposed_revive", self, angles, 1.5);
        }
        wait(0.67);
        player clientfield::set("" + #"being_robot_revived", 1);
        if (!is_true(player.var_b895a3ff)) {
            player val::set(#"hash_78da69acddea21c2", "allow_movement", 0);
        }
        player thread laststand::revive_hud_show_n_fade(#"hash_772a7cb5462ff9a", 3);
        player thread function_9cb5b8e0();
        self waittill(#"robot_revive_complete");
        if (level.players.size == 1 && level flag::get("solo_game")) {
            self.var_5f694f04 = gettime() + 10000;
        } else {
            self.var_5f694f04 = gettime() + 5000;
        }
        if (isdefined(level.a_revive_success_perk_func)) {
            foreach (func in level.a_revive_success_perk_func) {
                self [[ func ]]();
            }
        }
        level.var_ff482f76 zm_laststand_client::close(player);
        if (is_true(player.var_b895a3ff)) {
            if (isdefined(level.var_655e32ec)) {
                player [[ level.var_655e32ec ]]();
            }
        } else {
            player thread zm_laststand::revive_success(self, 0);
            player notify(#"stop_revive_trigger");
        }
        level.var_ee623e8 = 0;
        players = getplayers();
        if (players.size == 1 && level flag::get("solo_game") && is_true(player.waiting_to_revive)) {
            level.solo_game_free_player_quickrevive = 1;
            player thread zm_perks::function_a7ae070c(#"hash_7f98b3dd3cce95aa");
        }
    }
    self zod_companion_revive_cleanup(player);
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 0, eflags: 0x0
// Checksum 0x2a6302d2, Offset: 0x4fd0
// Size: 0x126
function function_9cb5b8e0() {
    revivetime = 3;
    for (var_d3e5d819 = 0; isdefined(self); var_d3e5d819 += float(function_60d95f53()) / 1000) {
        hud_player = isplayer(self.var_1ff8de20) ? self.var_1ff8de20 : self;
        level.var_ff482f76 zm_laststand_client::set_revive_progress(hud_player, var_d3e5d819 / revivetime);
        if (isdefined(hud_player.var_57b374b4)) {
            objective_setprogress(hud_player.var_57b374b4, var_d3e5d819 / revivetime);
            objective_setgamemodeflags(hud_player.var_57b374b4, 0);
        }
        if (var_d3e5d819 >= revivetime) {
            break;
        }
        waitframe(1);
    }
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0xf8b7e849, Offset: 0x5100
// Size: 0x1a6
function zod_companion_monitor_revive_attempt(player) {
    self endon(#"death", #"revive_terminated");
    while (true) {
        if (is_true(player.var_b895a3ff)) {
            if (!isdefined(player.var_dc4f101.revivetrigger) || player.var_dc4f101.revivetrigger.beingrevived === 1 && player.being_revived_by_robot !== 1) {
                self zod_companion_revive_cleanup(player);
            }
        } else if (!isdefined(player.revivetrigger) || player.revivetrigger.beingrevived === 1 && player.being_revived_by_robot !== 1 || is_true(player.revivetrigger.auto_revive)) {
            self zod_companion_revive_cleanup(player);
        }
        if (!is_true(player laststand::player_is_in_laststand()) || is_true(self.var_90b19379)) {
            self zod_companion_revive_cleanup(player);
        }
        waitframe(1);
    }
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0xc8d163f2, Offset: 0x52b0
// Size: 0x156
function zod_companion_revive_cleanup(player) {
    self val::reset(#"zod_companion", "ignoreall");
    self.reviving_a_player = 0;
    self.var_90b19379 = undefined;
    self flag::clear(#"reviving_a_player");
    if (isplayer(player)) {
        if (player.being_revived_by_robot === 1) {
            player.being_revived_by_robot = 0;
        }
        if (isdefined(player.revivetrigger) && player.revivetrigger.beingrevived === 1) {
            player.revivetrigger.beingrevived = 0;
        }
        player.var_c6a6f334 = 0;
        player clientfield::set("" + #"being_robot_revived", 0);
        player val::reset(#"hash_78da69acddea21c2", "allow_movement");
    }
    self notify(#"revive_terminated");
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x63c9358a, Offset: 0x5410
// Size: 0xd4
function private zodcompanionfinishedsprinttransition(behaviortreeentity) {
    behaviortreeentity.sprint_transition_happening = 0;
    if (behaviortreeentity getblackboardattribute("_locomotion_speed") == "locomotion_speed_walk") {
        behaviortreeentity ai::set_behavior_attribute("sprint", 1);
        behaviortreeentity setblackboardattribute("_locomotion_speed", "locomotion_speed_sprint");
        return;
    }
    behaviortreeentity ai::set_behavior_attribute("sprint", 0);
    behaviortreeentity setblackboardattribute("_locomotion_speed", "locomotion_speed_walk");
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x13c63c01, Offset: 0x54f0
// Size: 0x14a
function private zodcompanionkeepscurrentmovementmode(behaviortreeentity) {
    var_202e5b5c = 640000;
    if (function_55a341c9(behaviortreeentity)) {
        var_202e5b5c = 36864;
    }
    var_c351bd17 = 36864;
    if (isdefined(behaviortreeentity.var_3948eee7)) {
        if (behaviortreeentity getblackboardattribute("_locomotion_speed") != behaviortreeentity.var_3948eee7) {
            return false;
        }
        return true;
    }
    dist = 0;
    if (isdefined(behaviortreeentity.pathgoalpos)) {
        dist = distancesquared(behaviortreeentity.origin, behaviortreeentity.pathgoalpos);
    }
    if (dist > var_202e5b5c && behaviortreeentity getblackboardattribute("_locomotion_speed") == "locomotion_speed_walk") {
        return false;
    }
    if (dist < var_c351bd17 && behaviortreeentity getblackboardattribute("_locomotion_speed") == "locomotion_speed_sprint") {
        return false;
    }
    return true;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x8a0a719e, Offset: 0x5648
// Size: 0x28
function private zodcompanionsprinttransitioning(behaviortreeentity) {
    if (behaviortreeentity.sprint_transition_happening === 1) {
        return true;
    }
    return false;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0x9a09f14c, Offset: 0x5678
// Size: 0x22
function zodcompanionisexhausted(behaviortreeentity) {
    return is_true(behaviortreeentity.exhausted);
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0xfc3d3c9a, Offset: 0x56a8
// Size: 0xc2
function zodcompanionexhaustedbehaviorservice(behaviortreeentity) {
    if (!is_true(behaviortreeentity.exhausted)) {
        return;
    }
    goalinfo = behaviortreeentity function_4794d6a3();
    if (isdefined(behaviortreeentity.var_342791dd) && goalinfo.goalpos === behaviortreeentity.var_342791dd && behaviortreeentity isatgoal()) {
        behaviortreeentity pathmode("dont move", 1);
        behaviortreeentity.var_342791dd = undefined;
        behaviortreeentity.pushable = 0;
    }
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0x4e49cb28, Offset: 0x5778
// Size: 0x18
function zodcompanionhasdefendlocation(behaviortreeentity) {
    return isdefined(behaviortreeentity.var_9140144d);
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0x2d59e623, Offset: 0x5798
// Size: 0x2a
function function_55a341c9(behaviortreeentity) {
    return isdefined(behaviortreeentity.var_9140144d) && isdefined(behaviortreeentity.var_a72ffc1e);
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0x1638c395, Offset: 0x57d0
// Size: 0x20c
function zodcompaniondefendlocationbehaviorservice(behaviortreeentity) {
    if (!zodcompanionhasdefendlocation(behaviortreeentity)) {
        return;
    }
    if (zodcompanionisexhausted(behaviortreeentity)) {
        return;
    }
    if (is_true(behaviortreeentity.reviving_a_player)) {
        return;
    }
    if (isdefined(behaviortreeentity.leader)) {
        var_54b4d8be = distancesquared(behaviortreeentity.origin, behaviortreeentity.leader.origin);
        if (var_54b4d8be > sqr(1200)) {
            /#
                if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
                    println("MOD_EXPLOSIVE" + "<unknown string>");
                }
            #/
            behaviortreeentity zodcompanionutility::function_34179e9a();
            return;
        }
    }
    if (!isdefined(behaviortreeentity.var_a72ffc1e)) {
        if (distancesquared(behaviortreeentity.origin, behaviortreeentity.var_9140144d) > sqr(256)) {
            /#
                if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
                    println("MOD_EXPLOSIVE" + "<unknown string>");
                }
            #/
            behaviortreeentity zodcompanionutility::function_fc7a4f48(behaviortreeentity.var_9140144d);
            return;
        }
        behaviortreeentity pathmode("dont move", 1);
    }
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0x2921d5e9, Offset: 0x59e8
// Size: 0x35a
function zodcompanionclearobstacleservice(behaviortreeentity) {
    var_126918fc = function_55a341c9(behaviortreeentity);
    time = gettime();
    if (isdefined(behaviortreeentity.var_879af1ac)) {
        if (var_126918fc) {
            if (time < behaviortreeentity.var_879af1ac) {
                behaviortreeentity function_a57c34b7(behaviortreeentity.origin);
                return;
            }
            /#
                iprintlnbold("<unknown string>");
            #/
        }
        behaviortreeentity val::reset(#"hash_6b00cd63706305ff", "ignoreall");
        behaviortreeentity val::reset(#"hash_6b00cd63706305ff", "prioritize_target_near_leader");
        behaviortreeentity function_d4c687c9();
        behaviortreeentity.var_879af1ac = undefined;
        behaviortreeentity.var_2c14b3fd = 0;
    }
    if (!var_126918fc) {
        return;
    }
    if (behaviortreeentity haspath() && !behaviortreeentity isatgoal()) {
        if (isdefined(behaviortreeentity.var_43933fca) && time < behaviortreeentity.var_43933fca) {
            return;
        }
        is_blocked = 0;
        if (isdefined(behaviortreeentity.previous_pos)) {
            var_545a671 = distancesquared(behaviortreeentity.previous_pos, behaviortreeentity.origin);
            is_blocked = var_545a671 < 4;
        }
        behaviortreeentity.var_43933fca = time + 1000;
        behaviortreeentity.previous_pos = behaviortreeentity.origin;
        if (is_blocked && !behaviortreeentity function_dd070839()) {
            var_d32424f1 = getentitiesinradius(behaviortreeentity.origin, 80, 15);
            var_d32424f1 = array::exclude(var_d32424f1, behaviortreeentity);
            if (var_d32424f1.size > 0) {
                if (!isdefined(behaviortreeentity.var_2c14b3fd)) {
                    behaviortreeentity.var_2c14b3fd = 0;
                }
                behaviortreeentity.var_2c14b3fd++;
                if (behaviortreeentity.var_2c14b3fd >= 3) {
                    behaviortreeentity.var_879af1ac = time + 3000;
                    behaviortreeentity val::set(#"hash_6b00cd63706305ff", "ignoreall", 0);
                    behaviortreeentity val::set(#"hash_6b00cd63706305ff", "prioritize_target_near_leader", 0);
                    /#
                        iprintlnbold("<unknown string>");
                    #/
                }
                return;
            }
        }
        behaviortreeentity.var_2c14b3fd = 0;
    }
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0x1174f71f, Offset: 0x5d50
// Size: 0x3c
function zodcompaniondontshootwhilemoving(behaviortreeentity) {
    return zodcompanionisexhausted(behaviortreeentity) || zodcompanionhasdefendlocation(behaviortreeentity);
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0x7f5404dc, Offset: 0x5d98
// Size: 0x34
function zodcompanionissprinting(behaviortreeentity) {
    return behaviortreeentity getblackboardattribute("_locomotion_speed") === "locomotion_speed_sprint";
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0x3344d6b3, Offset: 0x5dd8
// Size: 0x18
function zodcompanionhasattackable(behaviortreeentity) {
    return isdefined(behaviortreeentity.attackable);
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0xcf00bedb, Offset: 0x5df8
// Size: 0x9e
function function_b0f37bd1(behaviortreeentity) {
    if (!isdefined(behaviortreeentity.attackable) || !isdefined(behaviortreeentity.var_b238ef38.position)) {
        return false;
    }
    if (isdefined(behaviortreeentity.var_8a3828c6)) {
        return false;
    }
    if (distancesquared(behaviortreeentity.var_b238ef38.position, behaviortreeentity.origin) < sqr(64)) {
        return true;
    }
    return false;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0xd6939960, Offset: 0x5ea0
// Size: 0x5c2
function private zodcalcproceduraltraversal(entity) {
    if (isdefined(entity.traversestartnode) && isdefined(entity.traverseendnode)) {
        startpos = entity.origin;
        endpos = entity.traverseendnode.origin;
    } else if (isdefined(entity.traversalstartpos) && isdefined(entity.traversalendpos)) {
        startpos = entity.origin;
        endpos = entity.traversalendpos;
    } else {
        return;
    }
    entity.traversal = spawnstruct();
    traversal = entity.traversal;
    traversal.landingdistance = 24;
    traversal.minimumspeed = 18;
    traversal.startpoint1 = startpos;
    traversal.endpoint1 = endpos;
    traversal.distancetoend = distance(traversal.startpoint1, traversal.endpoint1);
    traversal.absheighttoend = abs(traversal.startpoint1[2] - traversal.endpoint1[2]);
    traversal.abslengthtoend = distance2d(traversal.startpoint1, traversal.endpoint1);
    speedboost = 0;
    if (traversal.abslengthtoend > 200) {
        speedboost = 16;
    } else if (traversal.abslengthtoend > 120) {
        speedboost = 8;
    } else if (traversal.abslengthtoend > 80 || traversal.absheighttoend > 80) {
        speedboost = 4;
    }
    if (isdefined(entity.traversalspeedboost)) {
        speedboost = entity [[ entity.traversalspeedboost ]]();
    }
    traversal.speedoncurve = (traversal.minimumspeed + speedboost) * 12;
    heightoffset = min(96, max(traversal.absheighttoend * 0.6, traversal.abslengthtoend));
    traversal.startpoint2 = entity.origin + (0, 0, heightoffset);
    traversal.endpoint2 = traversal.endpoint1 + (0, 0, heightoffset);
    if (traversal.startpoint1[2] < traversal.endpoint1[2]) {
        traversal.startpoint2 += (0, 0, traversal.absheighttoend);
    } else {
        traversal.endpoint2 += (0, 0, traversal.absheighttoend);
    }
    /#
        recordline(traversal.startpoint1, traversal.startpoint2, (1, 0.5, 0), "neck", entity);
        recordline(traversal.startpoint1, traversal.endpoint1, (1, 0.5, 0), "neck", entity);
        recordline(traversal.endpoint1, traversal.endpoint2, (1, 0.5, 0), "neck", entity);
        recordline(traversal.startpoint2, traversal.endpoint2, (1, 0.5, 0), "neck", entity);
        record3dtext(traversal.abslengthtoend, traversal.endpoint1 + (0, 0, 12), (1, 0.5, 0), "neck", entity);
    #/
    segments = 10;
    previouspoint = traversal.startpoint1;
    traversal.curvelength = 0;
    for (index = 1; index <= segments; index++) {
        t = index / segments;
        nextpoint = calculatecubicbezier(t, traversal.startpoint1, traversal.startpoint2, traversal.endpoint2, traversal.endpoint1);
        /#
            recordline(previouspoint, nextpoint, (0, 1, 0), "neck", entity);
        #/
        traversal.curvelength += distance(previouspoint, nextpoint);
        previouspoint = nextpoint;
    }
    traversal.starttime = gettime();
    traversal.endtime = traversal.starttime + traversal.curvelength * 1000 / traversal.speedoncurve;
    traversal.totaltime = traversal.endtime - traversal.starttime;
    traversal.landing = 0;
    return 1;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 2, eflags: 0x4
// Checksum 0x89a530cc, Offset: 0x6470
// Size: 0xa8
function private function_72edbea6(entity, asmstatename) {
    entity.skipdeath = 1;
    traversal = entity.traversal;
    traversal.starttime = gettime();
    traversal.endtime = traversal.starttime + traversal.curvelength * 1000 / traversal.speedoncurve;
    traversal.totaltime = traversal.endtime - traversal.starttime;
    animationstatenetworkutility::requeststate(entity, asmstatename);
    return 5;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 2, eflags: 0x4
// Checksum 0x9f69b2f3, Offset: 0x6520
// Size: 0xcc
function private function_7598aa02(entity, *asmstatename) {
    assert(isdefined(asmstatename.traversal));
    traversal = asmstatename.traversal;
    t = min((gettime() - traversal.starttime) / traversal.totaltime, 1);
    curveremaining = traversal.curvelength * (1 - t);
    if (curveremaining < traversal.landingdistance) {
        traversal.landing = 1;
        return 4;
    }
    return 5;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0xdb0992b4, Offset: 0x65f8
// Size: 0x38
function private function_2b827272(entity) {
    if (isdefined(entity.traversal)) {
        entity finishtraversal();
    }
    return 5;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 2, eflags: 0x4
// Checksum 0x59a3c916, Offset: 0x6638
// Size: 0x48
function private function_74ffdef5(entity, *asmstatename) {
    if (!isalive(asmstatename)) {
        asmstatename startragdoll();
    }
    return 4;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0xe2ae9fce, Offset: 0x6688
// Size: 0x54
function private zodtraverseend(entity) {
    function_74ffdef5(entity);
    entity.skipdeath = 0;
    entity.traversal = undefined;
    entity notify(#"traverse_end");
    return 4;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 5, eflags: 0x4
// Checksum 0xe5121f3f, Offset: 0x66e8
// Size: 0x10c
function private function_26cc92cd(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    traversal = mocompduration.traversal;
    mocompduration setavoidancemask("avoid none");
    mocompduration orientmode("face angle", mocompduration.angles[1]);
    mocompduration setrepairpaths(0);
    mocompduration animmode("noclip", 0);
    mocompduration.blockingpain = 1;
    mocompduration.clamptonavmesh = 0;
    if (isdefined(traversal) && traversal.landing) {
        mocompduration animmode("angle deltas", 0);
    }
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 5, eflags: 0x4
// Checksum 0x69b054de, Offset: 0x6800
// Size: 0x1d4
function private function_7d1f506(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    traversal = mocompduration.traversal;
    if (isdefined(traversal)) {
        if (mocompduration ispaused()) {
            traversal.starttime += int(float(function_60d95f53()) / 1000 * 1000);
            return;
        }
        realt = (gettime() - traversal.starttime) / traversal.totaltime;
        t = min(realt, 1);
        if (t < 1 || realt == 1) {
            currentpos = calculatecubicbezier(t, traversal.startpoint1, traversal.startpoint2, traversal.endpoint2, traversal.endpoint1);
            angles = mocompduration.angles;
            if (isdefined(traversal.angles)) {
                angles = traversal.angles;
            }
            mocompduration forceteleport(currentpos, angles, 0);
            return;
        }
        mocompduration animmode("normal_nogravity", 0);
    }
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 5, eflags: 0x4
// Checksum 0xfb1b4a, Offset: 0x69e0
// Size: 0xd4
function private function_dd922f46(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    traversal = mocompduration.traversal;
    if (isdefined(traversal) && gettime() >= traversal.endtime) {
        mocompduration pathmode("move allowed");
    }
    mocompduration.clamptonavmesh = 1;
    mocompduration.blockingpain = 0;
    mocompduration setrepairpaths(1);
    mocompduration setavoidancemask("avoid all");
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 5, eflags: 0x4
// Checksum 0x2fc5b743, Offset: 0x6ac0
// Size: 0xd2
function private calculatecubicbezier(t, p1, p2, p3, p4) {
    return pow(1 - t, 3) * p1 + 3 * pow(1 - t, 2) * t * p2 + 3 * (1 - t) * pow(t, 2) * p3 + pow(t, 3) * p4;
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0x4718af46, Offset: 0x6ba0
// Size: 0x22
function zodcompanioniscarryingbomb(behaviortreeentity) {
    return is_true(behaviortreeentity.var_fee1e0f4);
}

// Namespace zodcompanionbehavior/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0x2d4d08de, Offset: 0x6bd0
// Size: 0xf2
function zodcompanioncarrybombcanmove(behaviortreeentity) {
    if (behaviortreeentity zodcompanionutility::function_be70ddb1() <= 0) {
        return 0;
    }
    foreach (player in function_a1ef346b()) {
        if (distancesquared(behaviortreeentity.origin, player.origin) > 360000) {
            return 0;
        }
    }
    return behaviortreeentity haspath();
}

#namespace zodcompanionserverutils;

// Namespace zodcompanionserverutils/archetype_zod_companion
// Params 6, eflags: 0x4
// Checksum 0x7064ac85, Offset: 0x6cd0
// Size: 0x174
function private _trygibbinghead(entity, damage, weapon, var_fd90b0bb, hitloc, isexplosive) {
    var_c3317960 = gibserverutils::function_de4d9d(weapon, var_fd90b0bb);
    if (isexplosive && randomfloatrange(0, 1) <= 0.5) {
        gibserverutils::gibhead(entity, var_c3317960);
        return;
    }
    if (isinarray(array("head", "neck", "helmet"), hitloc) && randomfloatrange(0, 1) <= 1) {
        gibserverutils::gibhead(entity, var_c3317960);
        return;
    }
    if (entity.health - damage <= 0 && randomfloatrange(0, 1) <= 0.25) {
        gibserverutils::gibhead(entity, var_c3317960);
    }
}

// Namespace zodcompanionserverutils/archetype_zod_companion
// Params 6, eflags: 0x4
// Checksum 0x1399ff18, Offset: 0x6e50
// Size: 0x2bc
function private _trygibbinglimb(entity, damage, weapon, var_fd90b0bb, hitloc, isexplosive) {
    if (gibserverutils::isgibbed(entity, 32) || gibserverutils::isgibbed(entity, 16)) {
        return;
    }
    var_c3317960 = gibserverutils::function_de4d9d(weapon, var_fd90b0bb);
    if (isexplosive && randomfloatrange(0, 1) <= 0.25) {
        if (entity.health - damage <= 0 && entity.allowdeath && math::cointoss()) {
            gibserverutils::gibrightarm(entity, var_c3317960);
        } else {
            gibserverutils::gibleftarm(entity, var_c3317960);
        }
        return;
    }
    if (isinarray(array("left_hand", "left_arm_lower", "left_arm_upper"), hitloc)) {
        gibserverutils::gibleftarm(entity, var_c3317960);
        return;
    }
    if (entity.health - damage <= 0 && entity.allowdeath && isinarray(array("right_hand", "right_arm_lower", "right_arm_upper"), hitloc)) {
        gibserverutils::gibrightarm(entity, var_c3317960);
        return;
    }
    if (entity.health - damage <= 0 && entity.allowdeath && randomfloatrange(0, 1) <= 0.25) {
        if (math::cointoss()) {
            gibserverutils::gibleftarm(entity, var_c3317960);
            return;
        }
        gibserverutils::gibrightarm(entity, var_c3317960);
    }
}

// Namespace zodcompanionserverutils/archetype_zod_companion
// Params 7, eflags: 0x4
// Checksum 0xf7090faf, Offset: 0x7118
// Size: 0x384
function private _trygibbinglegs(entity, damage, weapon, var_fd90b0bb, hitloc, isexplosive, attacker = entity) {
    var_c3317960 = gibserverutils::function_de4d9d(weapon, var_fd90b0bb);
    cangiblegs = entity.health - damage <= 0 && entity.allowdeath;
    cangiblegs = cangiblegs || (entity.health - damage) / entity.maxhealth <= 0.25 && distancesquared(entity.origin, attacker.origin) <= 360000 && entity.allowdeath;
    if (entity.health - damage <= 0 && entity.allowdeath && isexplosive && randomfloatrange(0, 1) <= 0.5) {
        gibserverutils::giblegs(entity, var_c3317960);
        entity startragdoll();
        return;
    }
    if (cangiblegs && isinarray(array("left_leg_upper", "left_leg_lower", "left_foot"), hitloc) && randomfloatrange(0, 1) <= 1) {
        if (entity.health - damage > 0) {
            entity.becomecrawler = 1;
        }
        gibserverutils::gibleftleg(entity, var_c3317960);
        return;
    }
    if (cangiblegs && isinarray(array("right_leg_upper", "right_leg_lower", "right_foot"), hitloc) && randomfloatrange(0, 1) <= 1) {
        if (entity.health - damage > 0) {
            entity.becomecrawler = 1;
        }
        gibserverutils::gibrightleg(entity, var_c3317960);
        return;
    }
    if (entity.health - damage <= 0 && entity.allowdeath && randomfloatrange(0, 1) <= 0.25) {
        if (math::cointoss()) {
            gibserverutils::gibleftleg(entity, var_c3317960);
            return;
        }
        gibserverutils::gibrightleg(entity, var_c3317960);
    }
}

// Namespace zodcompanionserverutils/archetype_zod_companion
// Params 13, eflags: 0x4
// Checksum 0x662a0a56, Offset: 0x74a8
// Size: 0x178
function private zodcompaniongibdamageoverride(*inflictor, attacker, damage, *flags, meansofdeath, weapon, var_fd90b0bb, *point, *dir, hitloc, *offsettime, *boneindex, *modelindex) {
    entity = self;
    if ((entity.health - dir) / entity.maxhealth > 0.75) {
        return dir;
    }
    gibserverutils::togglespawngibs(entity, 1);
    isexplosive = isinarray(array("MOD_GRENADE", "MOD_GRENADE_SPLASH", "MOD_PROJECTILE", "MOD_PROJECTIVLE_SPLASH", "MOD_EXPLOSIVE"), hitloc);
    _trygibbinghead(entity, dir, offsettime, boneindex, modelindex, isexplosive);
    _trygibbinglimb(entity, dir, offsettime, boneindex, modelindex, isexplosive);
    _trygibbinglegs(entity, dir, offsettime, boneindex, modelindex, isexplosive, point);
    return dir;
}

// Namespace zodcompanionserverutils/archetype_zod_companion
// Params 12, eflags: 0x4
// Checksum 0x38cd8c22, Offset: 0x7628
// Size: 0x1fc
function private zodcompaniondestructdeathoverride(*inflictor, *attacker, damage, *flags, *meansofdeath, *weapon, *point, *dir, *hitloc, *offsettime, *boneindex, *modelindex) {
    entity = self;
    if (entity.health - modelindex <= 0) {
        destructserverutils::togglespawngibs(entity, 1);
        piececount = destructserverutils::getpiececount(entity);
        possiblepieces = [];
        for (index = 1; index <= piececount; index++) {
            if (!destructserverutils::isdestructed(entity, index) && randomfloatrange(0, 1) <= 0.2) {
                possiblepieces[possiblepieces.size] = index;
            }
        }
        gibbedpieces = 0;
        for (index = 0; index < possiblepieces.size && possiblepieces.size > 1 && gibbedpieces < 2; index++) {
            randompiece = randomintrange(0, possiblepieces.size - 1);
            if (!destructserverutils::isdestructed(entity, possiblepieces[randompiece])) {
                destructserverutils::destructpiece(entity, possiblepieces[randompiece]);
                gibbedpieces++;
            }
        }
    }
    return modelindex;
}

// Namespace zodcompanionserverutils/archetype_zod_companion
// Params 13, eflags: 0x4
// Checksum 0xb62c943f, Offset: 0x7830
// Size: 0xda
function private zodcompaniondamageoverride(*inflictor, *attacker, damage, *flags, *meansofdeath, *weapon, *var_fd90b0bb, *point, *dir, hitloc, *offsettime, *boneindex, *modelindex) {
    entity = self;
    if (modelindex == "helmet" || modelindex == "head" || modelindex == "neck") {
        boneindex = int(boneindex * 0.5);
    }
    return boneindex;
}

// Namespace zodcompanionserverutils/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0xf7f966f7, Offset: 0x7918
// Size: 0x76
function private findclosestnavmeshpositiontoenemy(enemy) {
    enemypositiononnavmesh = undefined;
    for (tolerancelevel = 1; tolerancelevel <= 4; tolerancelevel++) {
        enemypositiononnavmesh = getclosestpointonnavmesh(enemy.origin, 200 * tolerancelevel);
        if (isdefined(enemypositiononnavmesh)) {
            break;
        }
    }
    return enemypositiononnavmesh;
}

// Namespace zodcompanionserverutils/archetype_zod_companion
// Params 0, eflags: 0x4
// Checksum 0x42cfee3b, Offset: 0x7998
// Size: 0x1e4
function private zodcompanionsoldierspawnsetup() {
    entity = self;
    entity.combatmode = "cover";
    entity.fullhealth = entity.health;
    entity.controllevel = 0;
    entity.steppedoutofcover = 0;
    entity.startingweapon = entity.weapon;
    entity.jukedistance = 90;
    entity.jukemaxdistance = 600;
    entity.entityradius = 15;
    entity.highlyawareradius = 256;
    entity.treatallcoversasgeneric = 1;
    entity.onlycroucharrivals = 1;
    entity.nextpreemptivejukeads = randomfloatrange(0.5, 0.95);
    entity.shouldpreemptivejuke = math::cointoss();
    entity.reviving_a_player = 0;
    aiutility::addaioverridedamagecallback(entity, &destructserverutils::handledamage);
    aiutility::addaioverridedamagecallback(entity, &zodcompaniondamageoverride);
    aiutility::addaioverridedamagecallback(entity, &zodcompaniongibdamageoverride);
    entity.companion_anchor_point = entity.origin;
    entity.next_move_time = gettime();
    entity.allow_zombie_to_target_ai = 1;
    entity.var_4d607241 = &zodcompanionutility::function_878dd91;
    entity val::set(#"zod_companion", "ignoreme", 1);
    entity thread zodcompanionutility::function_dbd6fcc6();
    entity thread zodcompanionutility::manage_companion();
}

#namespace zodcompanionutility;

// Namespace zodcompanionutility/archetype_zod_companion
// Params 0, eflags: 0x0
// Checksum 0x311aacb6, Offset: 0x7b88
// Size: 0xb8
function manage_companion() {
    self endon(#"death");
    while (true) {
        if (!self.reviving_a_player && !zodcompanionbehavior::zodcompanionisexhausted(self)) {
            if (!isdefined(self.leader) || !self.leader.eligible_leader) {
                if (self flag::get(#"hash_2ba0c8dec55ab3f2")) {
                } else {
                    self define_new_leader();
                }
            }
        }
        wait(0.5);
    }
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 0, eflags: 0x0
// Checksum 0x8a82438c, Offset: 0x7c48
// Size: 0x88
function function_dbd6fcc6() {
    self.var_2f03f56a = [];
    self.var_2f03f56a[0] = "double_points";
    self.var_2f03f56a[1] = "fire_sale";
    self.var_2f03f56a[2] = "insta_kill";
    self.var_2f03f56a[3] = "nuke";
    self.var_2f03f56a[4] = "full_ammo";
    self.var_2f03f56a[5] = "insta_kill_ug";
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 0, eflags: 0x0
// Checksum 0x81278be, Offset: 0x7cd8
// Size: 0x252
function define_new_leader() {
    if (isdefined(level.var_1a612d42) && level.var_1a612d42.eligible_leader) {
        self.leader = level.var_1a612d42;
        return;
    }
    var_4266300b = getdvarint(#"hash_6d35b5921943876a", 1) ? 32 : 200;
    a_potential_leaders = get_potential_leaders(self, var_4266300b);
    closest_leader = undefined;
    closest_distance = 1000000;
    if (a_potential_leaders.size == 0) {
        self.leader = undefined;
        return;
    }
    if (getdvarint(#"hash_6d35b5921943876a", 1)) {
        foreach (potential_leader in a_potential_leaders) {
            if (distancesquared(potential_leader.entity.origin, potential_leader.goal_pos) < sqr(var_4266300b)) {
                self.leader = potential_leader.entity;
                break;
            }
        }
        return;
    }
    foreach (potential_leader in a_potential_leaders) {
        if (potential_leader.var_5478eb1b < closest_distance) {
            closest_distance = potential_leader.var_5478eb1b;
            self.leader = potential_leader.entity;
        }
    }
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 2, eflags: 0x0
// Checksum 0x6aa34329, Offset: 0x7f38
// Size: 0x270
function get_potential_leaders(companion, var_4266300b) {
    a_potential_leaders = [];
    potential_targets = [];
    var_8d6705e8 = [];
    players = getplayers();
    foreach (player in players) {
        if (!zodcompanionbehavior::_isvalidplayer(player)) {
            continue;
        }
        if (!isdefined(player.eligible_leader)) {
            player.eligible_leader = 1;
        }
        if (!is_true(player.eligible_leader)) {
            continue;
        }
        positiononnavmesh = getclosestpointonnavmesh(player.origin, var_4266300b);
        if (isdefined(positiononnavmesh)) {
            potential_targets[potential_targets.size] = player;
            var_8d6705e8[var_8d6705e8.size] = positiononnavmesh;
        }
    }
    if (!potential_targets.size) {
        return a_potential_leaders;
    }
    var_674755ca = function_5cb65d8a(companion.origin, var_8d6705e8, companion, companion getpathfindingradius(), companion function_6a9ae71(), -1, -1, 5000);
    if (!isdefined(var_674755ca)) {
        return a_potential_leaders;
    }
    for (i = 0; i < var_674755ca.size; i++) {
        if (var_674755ca[i] >= 0) {
            leader = {#var_5478eb1b:var_674755ca[i], #goal_pos:var_8d6705e8[i], #entity:potential_targets[i]};
            a_potential_leaders[a_potential_leaders.size] = leader;
        }
    }
    return a_potential_leaders;
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 2, eflags: 0x0
// Checksum 0x6c5d194e, Offset: 0x81b0
// Size: 0x248
function function_14f3d97b(goalpos, var_ff1d11ed = 0) {
    self endon(#"death");
    var_5a7117fb = undefined;
    if (is_true(var_ff1d11ed) && zodcompanionbehavior::zodcompanionhasdefendlocation(self)) {
        self function_34179e9a();
    }
    if (isdefined(goalpos)) {
        if (distancesquared(self.origin, goalpos) <= sqr(self getpathfindingradius())) {
            self.var_342791dd = self.origin;
            var_5a7117fb = 1;
        } else {
            positiononnavmesh = getclosestpointonnavmesh(goalpos, self getpathfindingradius(), self getpathfindingradius());
            if (!isdefined(positiononnavmesh)) {
                positiononnavmesh = getclosestpointonnavmesh(goalpos, 50, self getpathfindingradius());
            }
            if (isdefined(positiononnavmesh)) {
                self.var_342791dd = positiononnavmesh;
                var_5a7117fb = 1;
            }
        }
    }
    if (is_true(var_5a7117fb)) {
        self.exhausted = 1;
        self val::set(#"exhausted", "ignoreall", 1);
        aiutility::releaseclaimnode(self);
        self clearforcedgoal();
        self setgoal(self.var_342791dd);
        self pathmode("move allowed");
    }
    return var_5a7117fb;
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0x9ded4252, Offset: 0x8400
// Size: 0x36
function function_3fb3f41e(var_a5839c5b) {
    if (isdefined(var_a5839c5b)) {
        self.leader = var_a5839c5b;
        self.leader.eligible_leader = 1;
    }
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0xe178f086, Offset: 0x8440
// Size: 0xbc
function function_633d6f7b(var_ff1d11ed = 1) {
    if (is_true(var_ff1d11ed) && zodcompanionbehavior::zodcompanionhasdefendlocation(self)) {
        self function_34179e9a();
    }
    self.exhausted = undefined;
    self val::reset(#"exhausted", "ignoreall");
    self.pushable = 1;
    self pathmode("move allowed");
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 2, eflags: 0x0
// Checksum 0x960058b6, Offset: 0x8508
// Size: 0x428
function function_fc7a4f48(goalpos, var_f36009e2 = 0) {
    if (zodcompanionbehavior::zodcompanionisexhausted(self)) {
        return 0;
    }
    if (zodcompanionbehavior::zodcompanioniscarryingbomb(self)) {
        return 0;
    }
    if (namespace_47c5b560::aishouldleap(self)) {
        /#
            if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
                println("MOD_EXPLOSIVE" + "<unknown string>" + goalpos);
            }
        #/
        self.var_a8130f46 = {#goalpos:goalpos, #var_f36009e2:var_f36009e2};
        return 1;
    }
    if (isdefined(self.var_a72ffc1e)) {
        /#
            if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
                println("MOD_EXPLOSIVE" + "<unknown string>");
            }
        #/
        self flag::clear(#"hash_3218e127380e4a29");
        self notify(#"hash_6edebe8930290c3b");
    }
    self.var_9140144d = undefined;
    var_5a7117fb = 0;
    if (isdefined(goalpos)) {
        if (distancesquared(self.origin, goalpos) <= sqr(self.goalradius)) {
            self.var_a72ffc1e = undefined;
            var_5a7117fb = 1;
        } else if (var_f36009e2) {
            self.var_a72ffc1e = goalpos;
            var_5a7117fb = 1;
        } else {
            positiononnavmesh = getclosestpointonnavmesh(goalpos, self getpathfindingradius(), self getpathfindingradius());
            if (!isdefined(positiononnavmesh)) {
                positiononnavmesh = getclosestpointonnavmesh(goalpos, 256, self getpathfindingradius());
            }
            if (isdefined(positiononnavmesh)) {
                self.var_a72ffc1e = positiononnavmesh;
                var_5a7117fb = 1;
            }
        }
    }
    if (var_5a7117fb) {
        /#
            if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
                println("MOD_EXPLOSIVE" + "<unknown string>" + goalpos);
            }
        #/
        self.var_9140144d = goalpos;
        if (isdefined(self.var_a72ffc1e)) {
            self pathmode("move allowed");
            self val::set(#"hash_5a1605e61cf90569", "ignoreall", 1);
            aiutility::releaseclaimnode(self);
            self clearforcedgoal();
            self flag::clear(#"hash_3218e127380e4a29");
            if (!self function_c2725e7e(self.var_a72ffc1e)) {
                self setgoal(self.var_a72ffc1e, 1);
                self thread function_9660ee54();
            }
        } else {
            self flag::set(#"hash_3218e127380e4a29");
        }
    }
    return var_5a7117fb;
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 0, eflags: 0x4
// Checksum 0x1870029a, Offset: 0x8938
// Size: 0x254
function private function_9660ee54() {
    var_17b7891d = "8f51a1643370f5e" + #"hash_27c2dda34d73743a";
    self notify(var_17b7891d);
    self endon(var_17b7891d);
    level endon(#"end_game");
    self endon(#"hash_6edebe8930290c3b", #"death");
    while (true) {
        self waittill(#"goal");
        if (distancesquared(self.origin, self.var_a72ffc1e) > sqr(self.goalradius)) {
            /#
                if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
                    println("MOD_EXPLOSIVE" + "<unknown string>" + self.origin + "<unknown string>" + self.var_a72ffc1e + "<unknown string>");
                }
            #/
            waitframe(1);
            continue;
        }
        break;
    }
    /#
        if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
            println("MOD_EXPLOSIVE" + "<unknown string>" + self.origin);
        }
    #/
    self pathmode("dont move", 1);
    self.var_a72ffc1e = undefined;
    self val::reset(#"hash_5a1605e61cf90569", "ignoreall");
    self val::set(#"hash_5a1605e61cf90569", "prioritize_target_near_leader", 0);
    self flag::set(#"hash_3218e127380e4a29");
    self thread function_706cbe78();
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 0, eflags: 0x4
// Checksum 0xacaf3e06, Offset: 0x8b98
// Size: 0x8c
function private function_706cbe78() {
    if (isdefined(self.var_fab98b03)) {
        foreach (callback in self.var_fab98b03) {
            self thread [[ callback ]]();
        }
    }
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 0, eflags: 0x0
// Checksum 0x96e5bfb8, Offset: 0x8c30
// Size: 0x21e
function function_34179e9a() {
    if (isdefined(self.var_9140144d)) {
        /#
            if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
                println("MOD_EXPLOSIVE" + "<unknown string>");
            }
        #/
        self pathmode("move allowed");
        goalinfo = self function_4794d6a3();
        if (isdefined(goalinfo.goalpos)) {
            if (goalinfo.goalpos === self.var_a72ffc1e || goalinfo.goalpos === self.var_9140144d) {
                self clearpath();
                self clearforcedgoal();
                self setgoal(self.origin);
            } else {
                self clearforcedgoal();
                self setgoal(goalinfo.goalpos);
            }
            self.next_move_time = gettime();
        }
        self.var_9140144d = undefined;
        self.var_a72ffc1e = undefined;
        self val::reset(#"hash_5a1605e61cf90569", "ignoreall");
        self val::reset(#"hash_5a1605e61cf90569", "prioritize_target_near_leader");
        self function_e13a5dec();
        self flag::clear(#"hash_3218e127380e4a29");
        self notify(#"hash_6edebe8930290c3b");
    }
    self.var_a8130f46 = undefined;
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0xf43859c3, Offset: 0x8e58
// Size: 0x3c
function function_fc67b7ed(func) {
    if (!isdefined(self.var_fab98b03)) {
        self.var_fab98b03 = [];
    }
    self.var_fab98b03[self.var_fab98b03.size] = func;
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0xe40b7780, Offset: 0x8ea0
// Size: 0xa4
function function_30df05d5(func) {
    foreach (index, callback in self.var_fab98b03) {
        if (callback == func) {
            arrayremoveindex(self.var_fab98b03, index, 0);
            break;
        }
    }
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 0, eflags: 0x0
// Checksum 0x254ab089, Offset: 0x8f50
// Size: 0xa
function function_3419fc55() {
    return self.var_fab98b03;
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 0, eflags: 0x4
// Checksum 0xbe74c859, Offset: 0x8f68
// Size: 0x7e
function private function_edaf4203() {
    foreach (var_182df905 in self.var_c7f5b6e1) {
        var_182df905.reserved = 1;
    }
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 0, eflags: 0x0
// Checksum 0xd0c42620, Offset: 0x8ff0
// Size: 0x46
function function_26b4d2aa() {
    if (isdefined(self.var_c7f5b6e1) && self.var_c7f5b6e1.size > 0) {
        return is_true(self.var_c7f5b6e1[0].reserved);
    }
    return 0;
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 0, eflags: 0x0
// Checksum 0x71e031f2, Offset: 0x9040
// Size: 0x1dc
function function_ae69d4a5() {
    /#
        if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
            println("MOD_EXPLOSIVE" + "<unknown string>");
        }
    #/
    if (isdefined(self.var_a8130f46)) {
        /#
            if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
                println("MOD_EXPLOSIVE" + "<unknown string>" + self.var_a8130f46.goalpos);
            }
        #/
        self function_fc7a4f48(self.var_a8130f46.goalpos, self.var_a8130f46.var_f36009e2);
        self.var_a8130f46 = undefined;
        return;
    }
    var_793f966c = self function_26b4d2aa();
    if (!var_793f966c && isdefined(self.var_a72ffc1e)) {
        /#
            if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
                println("MOD_EXPLOSIVE" + "<unknown string>" + self.var_a72ffc1e);
            }
        #/
        self clearforcedgoal();
        self setgoal(self.var_a72ffc1e, 1);
        self thread function_9660ee54();
    }
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 0, eflags: 0x0
// Checksum 0x6a2cf80f, Offset: 0x9228
// Size: 0xdc
function function_681263de() {
    /#
        if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
            println("MOD_EXPLOSIVE" + "<unknown string>");
        }
    #/
    self.var_c7f5b6e1 = undefined;
    if (zodcompanionbehavior::zodcompanionhasdefendlocation(self)) {
        /#
            if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
                println("MOD_EXPLOSIVE" + "<unknown string>");
            }
        #/
        self function_34179e9a();
    }
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0xa10cd791, Offset: 0x9310
// Size: 0x52
function function_878dd91(var_182df905) {
    if (isdefined(self.var_9140144d)) {
        if (!isdefined(self.var_a72ffc1e) || !is_true(var_182df905.reserved)) {
            return false;
        }
    }
    return true;
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 1, eflags: 0x4
// Checksum 0x4859369b, Offset: 0x9370
// Size: 0x118
function private function_c2725e7e(goal) {
    self function_e13a5dec();
    if (self namespace_47c5b560::function_a6b0387d(self.origin, goal, 1)) {
        self function_edaf4203();
        /#
            if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
                println("MOD_EXPLOSIVE" + "<unknown string>" + goal);
            }
        #/
        return true;
    }
    /#
        if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
            println("MOD_EXPLOSIVE" + "<unknown string>" + goal);
        }
    #/
    self.var_c7f5b6e1 = undefined;
    return false;
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 0, eflags: 0x4
// Checksum 0x4210e6b3, Offset: 0x9490
// Size: 0xbe
function private function_e13a5dec() {
    if (self namespace_47c5b560::function_72371f2a() && isdefined(self.v_zombie_custom_goal_pos)) {
        /#
            if (getdvarint(#"hash_1b2cf8e5ac354d32", 0)) {
                println("MOD_EXPLOSIVE" + "<unknown string>");
            }
        #/
        self namespace_47c5b560::function_c2576f59();
        self namespace_47c5b560::function_240680df();
        self.var_2b5f41fd = undefined;
        self.var_c7f5b6e1 = undefined;
    }
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0x566599a7, Offset: 0x9558
// Size: 0x94
function function_60dcf99d(var_ac5f535) {
    if (is_true(var_ac5f535)) {
        self.var_fee1e0f4 = 1;
        self val::reset(#"zod_companion", "ignoreme");
        return;
    }
    self.var_fee1e0f4 = undefined;
    self val::set(#"zod_companion", "ignoreme", 1);
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 0, eflags: 0x0
// Checksum 0x810bb948, Offset: 0x95f8
// Size: 0x1c
function function_be70ddb1() {
    return isdefined(self.var_20b90c56) ? self.var_20b90c56 : 0;
}

// Namespace zodcompanionutility/archetype_zod_companion
// Params 1, eflags: 0x0
// Checksum 0xdb552b1d, Offset: 0x9620
// Size: 0x32
function function_423c790b(speed) {
    self.var_20b90c56 = math::clamp(speed, 0, 100);
}

