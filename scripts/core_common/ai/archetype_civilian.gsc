// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai\archetype_human_cover.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\ai\archetype_human_locomotion.gsc;
#using scripts\core_common\ai\archetype_civilian_interface.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\ai\systems\ai_blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace archetype_civilian;

// Namespace archetype_civilian/archetype_civilian
// Params 0, eflags: 0x1
// Checksum 0xa2258ed0, Offset: 0x438
// Size: 0x24
function autoexec main() {
    archetypecivilian::registerbehaviorscriptfunctions();
    civilianinterface::registercivilianinterfaceattributes();
}

#namespace archetypecivilian;

// Namespace archetypecivilian/archetype_civilian
// Params 0, eflags: 0x2 linked
// Checksum 0xf0ee4f91, Offset: 0x468
// Size: 0x7ac
function registerbehaviorscriptfunctions() {
    spawner::add_archetype_spawn_function(#"civilian", &civilianblackboardinit);
    spawner::add_archetype_spawn_function(#"civilian", &civilianinit);
    assert(!isdefined(&civilianmoveactioninitialize) || isscriptfunctionptr(&civilianmoveactioninitialize));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&civilianmoveactionfinalize) || isscriptfunctionptr(&civilianmoveactionfinalize));
    behaviortreenetworkutility::registerbehaviortreeaction("civilianMoveAction", &civilianmoveactioninitialize, undefined, &civilianmoveactionfinalize);
    assert(isscriptfunctionptr(&civilianwanderservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("civilianWanderService", &civilianwanderservice, 1);
    assert(isscriptfunctionptr(&civilianpanicescapechooseposition));
    behaviortreenetworkutility::registerbehaviortreescriptapi("civilianPanicEscapeChoosePosition", &civilianpanicescapechooseposition, 1);
    assert(isscriptfunctionptr(&rioterchoosepositionservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("rioterChoosePositionService", &rioterchoosepositionservice, 1);
    assert(isscriptfunctionptr(&civilianfollowservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("civilianFollowService", &civilianfollowservice, 1);
    assert(isscriptfunctionptr(&civiliancanthrowmolotovgrenade));
    behaviortreenetworkutility::registerbehaviortreescriptapi("civilianCanThrowMolotovGrenade", &civiliancanthrowmolotovgrenade);
    assert(isscriptfunctionptr(&civilianpreparetothrowgrenade));
    behaviortreenetworkutility::registerbehaviortreescriptapi("civilianPrepareToThrowGrenade", &civilianpreparetothrowgrenade);
    assert(isscriptfunctionptr(&civiliancleanuptothrowgrenade));
    behaviortreenetworkutility::registerbehaviortreescriptapi("civilianCleanUpToThrowGrenade", &civiliancleanuptothrowgrenade);
    assert(isscriptfunctionptr(&civilianispanicked));
    behaviortreenetworkutility::registerbehaviortreescriptapi("civilianIsPanicked", &civilianispanicked);
    assert(isscriptfunctionptr(&civilianarrivalallowed));
    behaviorstatemachine::registerbsmscriptapiinternal("civilianArrivalAllowed", &civilianarrivalallowed);
    assert(isscriptfunctionptr(&civilianareturnsallowed));
    behaviorstatemachine::registerbsmscriptapiinternal("civilianAreTurnsAllowed", &civilianareturnsallowed);
    assert(isscriptfunctionptr(&civilianisrioter));
    behaviorstatemachine::registerbsmscriptapiinternal("civilianIsRioter", &civilianisrioter);
    assert(isscriptfunctionptr(&civilianisrioter));
    behaviortreenetworkutility::registerbehaviortreescriptapi("civilianIsRioter", &civilianisrioter);
    assert(isscriptfunctionptr(&rioterreaquireservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("rioterReaquireService", &rioterreaquireservice);
    assert(isscriptfunctionptr(&function_91a0507));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_9d096baef09c4d3", &function_91a0507);
    assert(isscriptfunctionptr(&function_c93e1821));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_199c583edcee4a40", &function_c93e1821);
    assert(isscriptfunctionptr(&function_4f13d157));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_7b00798f103c87e8", &function_4f13d157);
}

// Namespace archetypecivilian/archetype_civilian
// Params 0, eflags: 0x6 linked
// Checksum 0x528eb0d5, Offset: 0xc20
// Size: 0x4a
function private civilianblackboardinit() {
    blackboard::createblackboardforentity(self);
    ai::createinterfaceforentity(self);
    self.___archetypeonanimscriptedcallback = &civilianonanimscriptedcallback;
}

// Namespace archetypecivilian/archetype_civilian
// Params 4, eflags: 0x2 linked
// Checksum 0x9a8ebf95, Offset: 0xc78
// Size: 0x6c
function function_49d80e54(civilian, *attribute, *oldvalue, value) {
    assert(issentient(oldvalue));
    oldvalue setblackboardattribute("follow", value);
}

// Namespace archetypecivilian/archetype_civilian
// Params 0, eflags: 0x6 linked
// Checksum 0xa7fab5fc, Offset: 0xcf0
// Size: 0x10c
function private civilianinit() {
    entity = self;
    locomotiontypes = array("alt1", "alt2", "alt3");
    altindex = entity getentitynumber() % locomotiontypes.size;
    entity setblackboardattribute("_human_locomotion_variation", locomotiontypes[altindex]);
    entity setavoidancemask("avoid none");
    entity disableaimassist();
    entity.ignorepathenemyfightdist = 1;
    entity trackblackboardattribute("_traversal_type");
    entity finalizetrackedblackboardattributes();
}

// Namespace archetypecivilian/archetype_civilian
// Params 1, eflags: 0x6 linked
// Checksum 0x424159c8, Offset: 0xe08
// Size: 0x2c
function private civilianonanimscriptedcallback(entity) {
    entity.__blackboard = undefined;
    entity civilianblackboardinit();
}

// Namespace archetypecivilian/archetype_civilian
// Params 1, eflags: 0x6 linked
// Checksum 0x8e79cabb, Offset: 0xe40
// Size: 0xa6
function private function_ebea502e(entity) {
    if (entity asmistransitionrunning() || entity getbehaviortreestatus() != 5 || entity asmissubstatepending() || entity asmistransdecrunning()) {
        return true;
    }
    if (entity getpathmode() == "dont move") {
        return false;
    }
    return false;
}

// Namespace archetypecivilian/archetype_civilian
// Params 1, eflags: 0x6 linked
// Checksum 0xf4b0ea44, Offset: 0xef0
// Size: 0x414
function private rioterchoosepositionservice(entity) {
    if (entity getblackboardattribute(#"hash_78e762abc4fbf1de") != "riot") {
        return false;
    }
    if (!isdefined(entity.enemy)) {
        return false;
    }
    if (function_ebea502e(entity)) {
        return false;
    }
    goalinfo = entity function_4794d6a3();
    forcedgoal = is_true(goalinfo.goalforced);
    isatscriptgoal = entity isatgoal() || entity isapproachinggoal();
    itsbeenawhile = gettime() > entity.nextfindbestcovertime;
    isinbadplace = entity isinanybadplace();
    lastknownpos = entity lastknownpos(entity.enemy);
    dist = distance2d(entity.origin, lastknownpos);
    var_1ebff8de = itsbeenawhile || !isatscriptgoal || isinbadplace;
    if (!var_1ebff8de) {
        return false;
    }
    if (forcedgoal) {
        assert(isdefined(goalinfo.goalpos));
        entity function_a57c34b7(goalinfo.goalpos);
        aiutility::setnextfindbestcovertime(entity);
        return true;
    }
    center = entity.origin;
    if (isdefined(entity.goalpos)) {
        center = entity.goalpos;
    }
    cylinder = ai::t_cylinder(center, entity.goalradius, entity.goalheight);
    profileNamedStart(#"");
    aiprofile_beginentry("rioter_tacquery_combat");
    tacpoints = tacticalquery("rioter_tacquery_combat", center, entity, cylinder);
    aiprofile_endentry();
    profileNamedStop();
    pickedpoint = undefined;
    if (isdefined(tacpoints)) {
        tacpoints = array::randomize(tacpoints);
        foreach (tacpoint in tacpoints) {
            if (self isingoal(tacpoint.origin)) {
                if (isdefined(entity.pathgoalpos) && entity.pathgoalpos == tacpoint.origin) {
                    continue;
                }
                pickedpoint = tacpoint;
                break;
            }
        }
    }
    if (isdefined(pickedpoint)) {
        entity function_a57c34b7(pickedpoint.origin);
        aiutility::setnextfindbestcovertime(entity);
        return true;
    }
    return false;
}

// Namespace archetypecivilian/archetype_civilian
// Params 1, eflags: 0x2 linked
// Checksum 0x56f44319, Offset: 0x1310
// Size: 0x11a
function civilianpanicescapechooseposition(entity) {
    if (entity getblackboardattribute(#"hash_78e762abc4fbf1de") != "panic") {
        return false;
    }
    if (is_true(entity.ai.escaping)) {
        return false;
    }
    if (!ai::getaiattribute(entity, "auto_escape")) {
        return false;
    }
    escape_nodes = getnodearray("civ_escape", "targetname");
    if (escape_nodes.size) {
        var_cc364bf7 = arraygetclosest(entity.origin, escape_nodes);
        entity function_a57c34b7(var_cc364bf7.origin);
        entity.ai.escaping = 1;
        return true;
    }
    return false;
}

// Namespace archetypecivilian/archetype_civilian
// Params 1, eflags: 0x6 linked
// Checksum 0x288b5312, Offset: 0x1438
// Size: 0x42c
function private civilianwanderservice(entity) {
    if (isentity(entity getblackboardattribute("follow"))) {
        return false;
    }
    if (entity getblackboardattribute(#"hash_78e762abc4fbf1de") == "riot") {
        return false;
    }
    if (entity getblackboardattribute(#"hash_78e762abc4fbf1de") == "panic" && ai::getaiattribute(entity, "auto_escape")) {
        return false;
    }
    if (!ai::getaiattribute(entity, "auto_wander")) {
        return false;
    }
    if (function_ebea502e(entity)) {
        return false;
    }
    goalinfo = entity function_4794d6a3();
    forcedgoal = is_true(goalinfo.goalforced);
    isatscriptgoal = entity isatgoal() || entity isapproachinggoal();
    itsbeenawhile = gettime() > entity.nextfindbestcovertime;
    var_1ebff8de = itsbeenawhile || !isatscriptgoal;
    if (!var_1ebff8de) {
        return false;
    }
    if (forcedgoal) {
        assert(isdefined(goalinfo.goalpos));
        entity function_a57c34b7(goalinfo.goalpos);
        aiutility::setnextfindbestcovertime(entity);
        return true;
    }
    cylinder = ai::t_cylinder(entity.goalpos, entity.goalradius, entity.goalheight);
    profileNamedStart(#"");
    aiprofile_beginentry("civilian_wander_tacquery");
    tacpoints = tacticalquery("civilian_wander_tacquery", entity.goalpos, entity, cylinder);
    aiprofile_endentry();
    profileNamedStop();
    pickedpoint = undefined;
    if (isdefined(tacpoints)) {
        tacpoints = array::randomize(tacpoints);
        foreach (tacpoint in tacpoints) {
            if (!self isposinclaimedlocation(tacpoint.origin) && self isingoal(tacpoint.origin)) {
                if (isdefined(entity.pathgoalpos) && entity.pathgoalpos == tacpoint.origin) {
                    continue;
                }
                pickedpoint = tacpoint;
                break;
            }
        }
    }
    if (isdefined(pickedpoint)) {
        entity function_a57c34b7(pickedpoint.origin);
        aiutility::setnextfindbestcovertime(entity);
        return true;
    }
    return false;
}

// Namespace archetypecivilian/archetype_civilian
// Params 1, eflags: 0x6 linked
// Checksum 0xf5c503cc, Offset: 0x1870
// Size: 0x3d4
function private civilianfollowservice(entity) {
    followradiussq = 300 * 300;
    followent = entity getblackboardattribute("follow");
    if (!isentity(followent)) {
        return false;
    }
    if (entity getblackboardattribute(#"hash_78e762abc4fbf1de") == "panic" && ai::getaiattribute(entity, "auto_escape")) {
        return false;
    }
    if (function_ebea502e(entity)) {
        return false;
    }
    goalinfo = entity function_4794d6a3();
    distsq = isdefined(entity.overridegoalpos) ? distancesquared(entity.overridegoalpos, followent.origin) : -1;
    forcedgoal = is_true(goalinfo.goalforced);
    isatscriptgoal = entity isatgoal() || entity isapproachinggoal();
    itsbeenawhile = gettime() > entity.nextfindbestcovertime;
    var_1ebff8de = itsbeenawhile || !isatscriptgoal || distsq < 0 || distsq > followradiussq;
    if (!var_1ebff8de) {
        return false;
    }
    profileNamedStart(#"");
    aiprofile_beginentry("civilian_follow_tacquery");
    tacpoints = tacticalquery("civilian_follow_tacquery", followent, entity, followent);
    aiprofile_endentry();
    profileNamedStop();
    pickedpoint = undefined;
    if (isdefined(tacpoints)) {
        tacpoints = array::randomize(tacpoints);
        if (tacpoints.size == 0) {
            pickedpoint = followent;
        } else {
            foreach (tacpoint in tacpoints) {
                if (!self isposinclaimedlocation(tacpoint.origin) && self isingoal(tacpoint.origin)) {
                    if (isdefined(entity.pathgoalpos) && entity.pathgoalpos == tacpoint.origin) {
                        continue;
                    }
                    pickedpoint = tacpoint;
                    break;
                }
            }
        }
    }
    if (isdefined(pickedpoint)) {
        entity function_a57c34b7(pickedpoint.origin);
        aiutility::setnextfindbestcovertime(entity);
        return true;
    }
    return false;
}

// Namespace archetypecivilian/archetype_civilian
// Params 2, eflags: 0x6 linked
// Checksum 0x76295e12, Offset: 0x1c50
// Size: 0x58
function private civilianmoveactioninitialize(entity, asmstatename) {
    entity setblackboardattribute("_desired_stance", "stand");
    animationstatenetworkutility::requeststate(entity, asmstatename);
    return 5;
}

// Namespace archetypecivilian/archetype_civilian
// Params 2, eflags: 0x6 linked
// Checksum 0x9f5fad8, Offset: 0x1cb0
// Size: 0x68
function private civilianmoveactionfinalize(entity, *asmstatename) {
    if (asmstatename getblackboardattribute("_stance") != "stand") {
        asmstatename setblackboardattribute("_desired_stance", "stand");
    }
    return 4;
}

// Namespace archetypecivilian/archetype_civilian
// Params 1, eflags: 0x6 linked
// Checksum 0xf2c509c1, Offset: 0x1d20
// Size: 0x34
function private civilianispanicked(entity) {
    return entity getblackboardattribute(#"hash_78e762abc4fbf1de") == "panic";
}

// Namespace archetypecivilian/archetype_civilian
// Params 0, eflags: 0x6 linked
// Checksum 0xf92681ed, Offset: 0x1d60
// Size: 0x22
function private function_e27d2a1b() {
    return ai::getaiattribute(self, #"hash_78e762abc4fbf1de");
}

// Namespace archetypecivilian/archetype_civilian
// Params 1, eflags: 0x6 linked
// Checksum 0xca8e85bd, Offset: 0x1d90
// Size: 0x36
function private civilianarrivalallowed(entity) {
    if (ai::getaiattribute(entity, "disablearrivals")) {
        return false;
    }
    return true;
}

// Namespace archetypecivilian/archetype_civilian
// Params 1, eflags: 0x6 linked
// Checksum 0xd0ba2311, Offset: 0x1dd0
// Size: 0x40
function private civilianareturnsallowed(entity) {
    if (entity getblackboardattribute(#"hash_78e762abc4fbf1de") == "calm") {
        return false;
    }
    return true;
}

// Namespace archetypecivilian/archetype_civilian
// Params 1, eflags: 0x2 linked
// Checksum 0x9a60135e, Offset: 0x1e18
// Size: 0x40
function civilianisrioter(entity) {
    if (entity getblackboardattribute(#"hash_78e762abc4fbf1de") == "riot") {
        return true;
    }
    return false;
}

// Namespace archetypecivilian/archetype_civilian
// Params 2, eflags: 0x2 linked
// Checksum 0x3bccbb1b, Offset: 0x1e60
// Size: 0x58e
function civiliancanthrowmolotovgrenade(behaviortreeentity, throwifpossible = 0) {
    if (!isdefined(behaviortreeentity.enemy)) {
        return false;
    }
    if (!issentient(behaviortreeentity.enemy)) {
        return false;
    }
    if (isvehicle(behaviortreeentity.enemy) && behaviortreeentity.enemy.vehicleclass === "helicopter") {
        return false;
    }
    if (!ai::getaiattribute(behaviortreeentity, "useGrenades")) {
        return false;
    }
    entityangles = behaviortreeentity.angles;
    toenemy = behaviortreeentity.enemy.origin - behaviortreeentity.origin;
    toenemy = vectornormalize((toenemy[0], toenemy[1], 0));
    entityforward = anglestoforward(entityangles);
    entityforward = vectornormalize((entityforward[0], entityforward[1], 0));
    if (vectordot(toenemy, entityforward) < 0.5) {
        return false;
    }
    if (!throwifpossible) {
        foreach (player in level.players) {
            if (player laststand::player_is_in_laststand() && distancesquared(behaviortreeentity.enemy.origin, player.origin) <= 640000) {
                return false;
            }
        }
        grenadethrowinfos = blackboard::getblackboardevents("team_grenade_throw");
        foreach (grenadethrowinfo in grenadethrowinfos) {
            if (grenadethrowinfo.data.grenadethrowerteam === behaviortreeentity.team) {
                return false;
            }
        }
        grenadethrowinfos = blackboard::getblackboardevents("riot_grenade_throw");
        foreach (grenadethrowinfo in grenadethrowinfos) {
            if (isdefined(grenadethrowinfo.data.grenadethrownat) && isalive(grenadethrowinfo.data.grenadethrownat)) {
                if (grenadethrowinfo.data.grenadethrower == behaviortreeentity) {
                    return false;
                }
                if (isdefined(grenadethrowinfo.data.grenadethrownat) && grenadethrowinfo.data.grenadethrownat == behaviortreeentity.enemy) {
                    return false;
                }
                if (isdefined(grenadethrowinfo.data.grenadethrownposition) && isdefined(behaviortreeentity.grenadethrowposition) && distancesquared(grenadethrowinfo.data.grenadethrownposition, behaviortreeentity.grenadethrowposition) <= 1440000) {
                    return false;
                }
            }
        }
    }
    throw_dist = distance2dsquared(behaviortreeentity.origin, behaviortreeentity lastknownpos(behaviortreeentity.enemy));
    if (throw_dist < sqr(300) || throw_dist > sqr(1250)) {
        return false;
    }
    arm_offset = archetype_human_cover::temp_get_arm_offset(behaviortreeentity, behaviortreeentity lastknownpos(behaviortreeentity.enemy));
    throw_vel = behaviortreeentity canthrowgrenadepos(arm_offset, behaviortreeentity lastknownpos(behaviortreeentity.enemy));
    if (!isdefined(throw_vel)) {
        return false;
    }
    return true;
}

// Namespace archetypecivilian/archetype_civilian
// Params 1, eflags: 0x6 linked
// Checksum 0xb61c34b6, Offset: 0x23f8
// Size: 0x13e
function private civilianpreparetothrowgrenade(behaviortreeentity) {
    aiutility::keepclaimnode(behaviortreeentity);
    if (isdefined(behaviortreeentity.enemy)) {
        behaviortreeentity.grenadethrowposition = behaviortreeentity lastknownpos(behaviortreeentity.enemy);
    }
    grenadethrowinfo = spawnstruct();
    grenadethrowinfo.grenadethrower = behaviortreeentity;
    grenadethrowinfo.grenadethrownat = behaviortreeentity.enemy;
    grenadethrowinfo.grenadethrownposition = behaviortreeentity.grenadethrowposition;
    blackboard::addblackboardevent("riot_grenade_throw", grenadethrowinfo, randomintrange(15000, 20000));
    grenadethrowinfo = spawnstruct();
    grenadethrowinfo.grenadethrowerteam = behaviortreeentity.team;
    blackboard::addblackboardevent("team_grenade_throw", grenadethrowinfo, randomintrange(5000, 10000));
    behaviortreeentity.preparegrenadeammo = behaviortreeentity.grenadeammo;
}

// Namespace archetypecivilian/archetype_civilian
// Params 1, eflags: 0x6 linked
// Checksum 0x6222be8c, Offset: 0x2540
// Size: 0x1e4
function private civiliancleanuptothrowgrenade(behaviortreeentity) {
    aiutility::releaseclaimnode(behaviortreeentity);
    if (behaviortreeentity.preparegrenadeammo == behaviortreeentity.grenadeammo) {
        if (behaviortreeentity.health <= 0) {
            grenade = undefined;
            if (isactor(behaviortreeentity.enemy) && isdefined(behaviortreeentity.grenadeweapon)) {
                grenade = behaviortreeentity.enemy magicgrenadetype(behaviortreeentity.grenadeweapon, behaviortreeentity gettagorigin("j_wrist_ri"), (0, 0, 0), float(behaviortreeentity.grenadeweapon.aifusetime) / 1000);
            } else if (isplayer(behaviortreeentity.enemy) && isdefined(behaviortreeentity.grenadeweapon)) {
                grenade = behaviortreeentity.enemy magicgrenadeplayer(behaviortreeentity.grenadeweapon, behaviortreeentity gettagorigin("j_wrist_ri"), (0, 0, 0));
            }
            if (isdefined(grenade)) {
                grenade.owner = behaviortreeentity;
                grenade.team = behaviortreeentity.team;
                grenade setcontents(grenade setcontents(0) & ~(32768 | 16777216 | 2097152 | 8388608));
            }
        }
    }
}

// Namespace archetypecivilian/archetype_civilian
// Params 1, eflags: 0x6 linked
// Checksum 0x83832a9d, Offset: 0x2730
// Size: 0x2c2
function private rioterreaquireservice(entity) {
    if (entity getblackboardattribute(#"hash_78e762abc4fbf1de") != "riot") {
        return false;
    }
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
    if (entity seerecently(entity.enemy, 3)) {
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
        entity.reacquire_state = 0;
        return true;
    }
    entity.reacquire_state++;
    return false;
}

// Namespace archetypecivilian/archetype_civilian
// Params 1, eflags: 0x6 linked
// Checksum 0x77bb7025, Offset: 0x2a00
// Size: 0x30
function private function_91a0507(entity) {
    entity function_ed7c3705("non_combat_run");
    return true;
}

// Namespace archetypecivilian/archetype_civilian
// Params 1, eflags: 0x6 linked
// Checksum 0x4c17a255, Offset: 0x2a38
// Size: 0x30
function private function_c93e1821(entity) {
    namespace_2dd2c4d8::function_3b9e6ead(entity, "turn@locomotion");
    return true;
}

// Namespace archetypecivilian/archetype_civilian
// Params 1, eflags: 0x6 linked
// Checksum 0xc6308504, Offset: 0x2a70
// Size: 0x30
function private function_4f13d157(entity) {
    entity function_ed7c3705("none");
    return true;
}

