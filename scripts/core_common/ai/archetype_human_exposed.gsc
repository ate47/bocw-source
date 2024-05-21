// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\archetype_human_cover.gsc;
#using scripts\core_common\ai\archetype_cover_utility.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;

#namespace archetype_human_exposed;

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 0, eflags: 0x1
// Checksum 0xa8cfb1c8, Offset: 0x250
// Size: 0x7b4
function autoexec registerbehaviorscriptfunctions() {
    assert(isscriptfunctionptr(&hascloseenemy));
    behaviortreenetworkutility::registerbehaviortreescriptapi("hasCloseEnemy", &hascloseenemy);
    assert(isscriptfunctionptr(&nocloseenemyservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("noCloseEnemyService", &nocloseenemyservice);
    assert(isscriptfunctionptr(&tryreacquireservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("tryReacquireService", &tryreacquireservice);
    assert(isscriptfunctionptr(&preparetoreacttoenemy));
    behaviortreenetworkutility::registerbehaviortreescriptapi("prepareToReactToEnemy", &preparetoreacttoenemy);
    assert(isscriptfunctionptr(&resetreactiontoenemy));
    behaviortreenetworkutility::registerbehaviortreescriptapi("resetReactionToEnemy", &resetreactiontoenemy);
    assert(isscriptfunctionptr(&function_fa6d93ea));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2ec2006a59a43ce", &function_fa6d93ea);
    assert(isscriptfunctionptr(&exposedupdateservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("exposedUpdateService", &exposedupdateservice);
    assert(isscriptfunctionptr(&exposedshootstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi("exposedShootStart", &exposedshootstart);
    assert(isscriptfunctionptr(&exposedshootupdate));
    behaviortreenetworkutility::registerbehaviortreescriptapi("exposedShootUpdate", &exposedshootupdate);
    assert(isscriptfunctionptr(&exposedshootterminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi("exposedShootTerminate", &exposedshootterminate);
    assert(isscriptfunctionptr(&exposedreloadinitialize));
    behaviortreenetworkutility::registerbehaviortreescriptapi("exposedReloadInitialize", &exposedreloadinitialize);
    assert(isscriptfunctionptr(&exposedreloadterminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi("exposedReloadTerminate", &exposedreloadterminate);
    assert(isscriptfunctionptr(&exposedsetdesiredstancetostand));
    behaviortreenetworkutility::registerbehaviortreescriptapi("exposedSetDesiredStanceToStand", &exposedsetdesiredstancetostand);
    assert(isscriptfunctionptr(&setpathmovedelayedrandom));
    behaviortreenetworkutility::registerbehaviortreescriptapi("setPathMoveDelayedRandom", &setpathmovedelayedrandom);
    assert(isscriptfunctionptr(&shouldusesidearmpistol));
    behaviortreenetworkutility::registerbehaviortreescriptapi("shouldUseSidearmPistol", &shouldusesidearmpistol);
    assert(isscriptfunctionptr(&function_ec3ea122));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_bf0ead963f57001", &function_ec3ea122);
    assert(isscriptfunctionptr(&function_bb575b62));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_30b41b7040b96c68", &function_bb575b62);
    assert(isscriptfunctionptr(&isusingsidearm));
    behaviorstatemachine::registerbsmscriptapiinternal(#"isusingsidearm", &isusingsidearm);
    assert(isscriptfunctionptr(&outofammo));
    behaviorstatemachine::registerbsmscriptapiinternal(#"outofammo", &outofammo);
    assert(isscriptfunctionptr(&function_56512b87));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_b01c4c3e55f7cd", &function_56512b87);
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x2 linked
// Checksum 0x55dcb8df, Offset: 0xa10
// Size: 0x14c
function function_fa6d93ea(entity) {
    if (btapi_locomotionbehaviorcondition(entity) && !entity shouldholdgroundagainstenemy()) {
        return false;
    }
    if (btapi_isatcovercondition(entity)) {
        if (entity isatcovernodestrict() && is_true(entity.var_342553bc)) {
            if (archetype_human_cover::function_1fa73a96(entity)) {
                return true;
            }
            if (is_true(entity.ai.reloading)) {
                return true;
            }
            if (isdefined(entity.var_541abeb7) && gettime() - entity.var_541abeb7 < 3000) {
                if (distancesquared(entity.origin, entity.var_99d0daef) < sqr(32)) {
                    return true;
                }
            }
        }
        return false;
    }
    return true;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x6 linked
// Checksum 0x66737bc3, Offset: 0xb68
// Size: 0x72
function private exposedupdateservice(entity) {
    if (entity isatcovernode()) {
        aiutility::function_3823e69e(entity);
        entity.var_342553bc = 1;
        entity.var_b8cc25c = 0;
        entity.var_f13fb34f = gettime();
        entity.var_39226de1 = entity.origin;
    }
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x6 linked
// Checksum 0x3249f855, Offset: 0xbe8
// Size: 0x3e
function private exposedshootstart(entity) {
    aiutility::releaseclaimnode(entity);
    entity.var_b636f23b = 0;
    entity.var_a4f84a7f = entity.lastshottime;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x6 linked
// Checksum 0x33e92d24, Offset: 0xc30
// Size: 0xde
function private exposedshootupdate(entity) {
    if (entity asmistransitionrunning()) {
        return;
    }
    if (entity.lastshottime > entity.var_a4f84a7f) {
        entity.var_b636f23b = 0;
        entity.var_a4f84a7f = entity.lastshottime;
    }
    if (isdefined(entity.enemy) && entity cansee(entity.enemy)) {
        entity.var_b636f23b += 0.05;
    } else {
        entity.var_b636f23b = 0;
    }
    if (entity.var_b636f23b >= 5) {
        entity.nextfindbestcovertime = gettime();
        entity.var_b636f23b = 0;
    }
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x6 linked
// Checksum 0x3ae1e110, Offset: 0xd18
// Size: 0x22
function private exposedshootterminate(entity) {
    entity.var_b636f23b = undefined;
    entity.var_a4f84a7f = undefined;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x6 linked
// Checksum 0x6f8ce3df, Offset: 0xd48
// Size: 0x3c
function private exposedreloadinitialize(entity) {
    aiutility::keepclaimnode(entity);
    aiutility::function_43a090a8(entity);
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x6 linked
// Checksum 0x15ea273, Offset: 0xd90
// Size: 0x54
function private exposedreloadterminate(entity) {
    if (isalive(entity)) {
        aiutility::function_dc44803c(entity);
    }
    aiutility::releaseclaimnode(entity);
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x6 linked
// Checksum 0xef81c98d, Offset: 0xdf0
// Size: 0x44
function private preparetoreacttoenemy(behaviortreeentity) {
    behaviortreeentity.newenemyreaction = 0;
    behaviortreeentity.malfunctionreaction = 0;
    behaviortreeentity pathmode("move delayed", 1, 3);
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x6 linked
// Checksum 0x9f0af29a, Offset: 0xe40
// Size: 0x22
function private resetreactiontoenemy(behaviortreeentity) {
    behaviortreeentity.newenemyreaction = 0;
    behaviortreeentity.malfunctionreaction = 0;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x6 linked
// Checksum 0xf40aa7be, Offset: 0xe70
// Size: 0x54
function private nocloseenemyservice(behaviortreeentity) {
    if (isdefined(behaviortreeentity.enemy) && aiutility::hascloseenemytomelee(behaviortreeentity)) {
        behaviortreeentity clearpath();
        return true;
    }
    return false;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x6 linked
// Checksum 0x82a70972, Offset: 0xed0
// Size: 0x5a
function private hascloseenemy(behaviortreeentity) {
    if (!isdefined(behaviortreeentity.enemy)) {
        return false;
    }
    if (distancesquared(behaviortreeentity.origin, behaviortreeentity.enemy.origin) < 22500) {
        return true;
    }
    return false;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x6 linked
// Checksum 0x7c7decd4, Offset: 0xf38
// Size: 0x2a
function private function_56512b87(entity) {
    entity.bulletsinclip = entity.sidearm.clipsize;
    return true;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x6 linked
// Checksum 0x1da5f859, Offset: 0xf70
// Size: 0x36
function private outofammo(entity) {
    outofammo = 0;
    if (entity.bulletsinclip <= 0) {
        outofammo = 1;
    }
    return outofammo;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x6 linked
// Checksum 0x2cbc1442, Offset: 0xfb0
// Size: 0x10
function private function_bb575b62(*entity) {
    return true;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x6 linked
// Checksum 0xcf54783f, Offset: 0xfc8
// Size: 0x20
function private isusingsidearm(entity) {
    return entity.weapon != entity.primaryweapon;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x6 linked
// Checksum 0x8370e0ec, Offset: 0xff0
// Size: 0x34
function private function_ec3ea122(entity) {
    return !shouldusesidearmpistol(entity, sqr(500));
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 2, eflags: 0x6 linked
// Checksum 0x2648cb13, Offset: 0x1030
// Size: 0x386
function private shouldusesidearmpistol(entity, checkdistance = sqr(300)) {
    var_64c23a1b = 0;
    if (isdefined(entity.sidearm)) {
        if (is_true(entity.forcesidearm)) {
            var_64c23a1b = 1;
        } else if (is_true(entity.var_742cee23)) {
            if (isdefined(entity.enemy) && distancesquared(entity.origin, entity.enemy.origin) < checkdistance) {
                targetangles = vectortoangles(entity.enemy.origin - entity.origin);
                entityangles = entity.angles;
                if (isdefined(entity.node) && (entity.node.type == #"cover left" || entity.node.type == #"cover right" || entity.node.type == #"cover pillar" || entity.node.type == #"cover stand" || entity.node.type == #"conceal stand" || entity.node.type == #"cover crouch" || entity.node.type == #"cover crouch window" || entity.node.type == #"conceal crouch") && btapi_isatcovercondition(entity)) {
                    entityangles = entity.node.angles;
                }
                var_507685eb = angleclamp180(targetangles[1] - entityangles[1]);
                if (abs(var_507685eb) < 60) {
                    var_64c23a1b = 1;
                }
            }
        }
    }
    /#
        var_f5093b66 = is_true(entity.usingsidearm);
        if (var_64c23a1b != var_f5093b66) {
            println("<unknown string>" + entity getentnum() + "<unknown string>" + var_64c23a1b + "<unknown string>");
        }
    #/
    entity.usingsidearm = var_64c23a1b;
    return var_64c23a1b;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 2, eflags: 0x6 linked
// Checksum 0xcc6835cd, Offset: 0x13c0
// Size: 0x4c
function private setpathmovedelayedrandom(behaviortreeentity, *asmstatename) {
    asmstatename pathmode("move delayed", 0, randomfloatrange(1, 3));
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 2, eflags: 0x6 linked
// Checksum 0x9b1aeeeb, Offset: 0x1418
// Size: 0x7c
function private exposedsetdesiredstancetostand(behaviortreeentity, *asmstatename) {
    aiutility::keepclaimnode(asmstatename);
    currentstance = asmstatename getblackboardattribute("_stance");
    asmstatename setblackboardattribute("_desired_stance", "stand");
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x6 linked
// Checksum 0xad6abb5e, Offset: 0x14a0
// Size: 0x3c6
function private tryreacquireservice(behaviortreeentity) {
    if (!isdefined(behaviortreeentity.reacquire_state)) {
        behaviortreeentity.reacquire_state = 0;
    }
    var_d78ca29a = aiutility::function_589c524f(behaviortreeentity);
    if (var_d78ca29a == 4) {
        behaviortreeentity function_d4c687c9();
        behaviortreeentity.ai.var_47823ae7 = gettime() + 5000;
    }
    if (!isdefined(behaviortreeentity.enemy)) {
        behaviortreeentity.reacquire_state = 0;
        return false;
    }
    if (aiutility::isexposedatcovercondition(behaviortreeentity)) {
        return false;
    }
    if (isdefined(behaviortreeentity.ai.var_47823ae7) && gettime() < behaviortreeentity.ai.var_47823ae7) {
        behaviortreeentity.reacquire_state = 0;
        return false;
    }
    if (behaviortreeentity.birthtime + 1000 > gettime()) {
        behaviortreeentity.reacquire_state = 0;
        return false;
    }
    if (behaviortreeentity haspath()) {
        behaviortreeentity.reacquire_state = 0;
        return false;
    }
    if (is_true(behaviortreeentity.fixednode)) {
        behaviortreeentity.reacquire_state = 0;
        return false;
    }
    if (behaviortreeentity seerecently(behaviortreeentity.enemy, 4)) {
        behaviortreeentity.reacquire_state = 0;
        return false;
    }
    dirtoenemy = vectornormalize(behaviortreeentity.enemy.origin - behaviortreeentity.origin);
    forward = anglestoforward(behaviortreeentity.angles);
    if (vectordot(dirtoenemy, forward) < 0.5) {
        behaviortreeentity.reacquire_state = 0;
        return false;
    }
    switch (behaviortreeentity.reacquire_state) {
    case 0:
    case 1:
    case 2:
        step_size = 32 + behaviortreeentity.reacquire_state * 32;
        reacquirepos = behaviortreeentity reacquirestep(step_size);
        break;
    case 4:
        if (!behaviortreeentity cansee(behaviortreeentity.enemy) || !behaviortreeentity canshootenemy()) {
            behaviortreeentity flagenemyunattackable();
        }
        break;
    default:
        if (behaviortreeentity.reacquire_state > 15) {
            behaviortreeentity.reacquire_state = 0;
            return false;
        }
        break;
    }
    if (isvec(reacquirepos)) {
        behaviortreeentity.ai.var_bb3caa0f = gettime();
        behaviortreeentity function_a57c34b7(reacquirepos, undefined, "exposed_reacquire");
        return true;
    }
    behaviortreeentity.reacquire_state++;
    return false;
}

