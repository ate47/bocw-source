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
    /#
        assert(isscriptfunctionptr(&hascloseenemy));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("hasCloseEnemy", &hascloseenemy);
    /#
        assert(isscriptfunctionptr(&nocloseenemyservice));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("noCloseEnemyService", &nocloseenemyservice);
    /#
        assert(isscriptfunctionptr(&tryreacquireservice));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("tryReacquireService", &tryreacquireservice);
    /#
        assert(isscriptfunctionptr(&preparetoreacttoenemy));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("prepareToReactToEnemy", &preparetoreacttoenemy);
    /#
        assert(isscriptfunctionptr(&resetreactiontoenemy));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("resetReactionToEnemy", &resetreactiontoenemy);
    /#
        assert(isscriptfunctionptr(&function_fa6d93ea));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2ec2006a59a43ce", &function_fa6d93ea);
    /#
        assert(isscriptfunctionptr(&function_66b40330));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("exposedUpdateService", &function_66b40330);
    /#
        assert(isscriptfunctionptr(&function_36cba91d));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("exposedShootStart", &function_36cba91d);
    /#
        assert(isscriptfunctionptr(&function_9d21c8ff));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("exposedShootUpdate", &function_9d21c8ff);
    /#
        assert(isscriptfunctionptr(&function_c20ec4e4));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("exposedShootTerminate", &function_c20ec4e4);
    /#
        assert(isscriptfunctionptr(&function_d9b2ddf9));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("exposedReloadInitialize", &function_d9b2ddf9);
    /#
        assert(isscriptfunctionptr(&function_7852409f));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("exposedReloadTerminate", &function_7852409f);
    /#
        assert(isscriptfunctionptr(&exposedsetdesiredstancetostand));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("exposedSetDesiredStanceToStand", &exposedsetdesiredstancetostand);
    /#
        assert(isscriptfunctionptr(&setpathmovedelayedrandom));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("setPathMoveDelayedRandom", &setpathmovedelayedrandom);
    /#
        assert(isscriptfunctionptr(&function_e44a792b));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("shouldUseSidearmPistol", &function_e44a792b);
    /#
        assert(isscriptfunctionptr(&function_ec3ea122));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_bf0ead963f57001", &function_ec3ea122);
    /#
        assert(isscriptfunctionptr(&function_bb575b62));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_30b41b7040b96c68", &function_bb575b62);
    /#
        assert(isscriptfunctionptr(&function_3a4e776));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_4de6a3a7ccc9d8f6", &function_3a4e776);
    /#
        assert(isscriptfunctionptr(&function_52dfff39));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_235249277c9d92c4", &function_52dfff39);
    /#
        assert(isscriptfunctionptr(&function_56512b87));
    #/
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_b01c4c3e55f7cd", &function_56512b87);
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x0
// Checksum 0x55dcb8df, Offset: 0xa10
// Size: 0x14c
function function_fa6d93ea(entity) {
    if (btapi_locomotionbehaviorcondition(entity) && !entity shouldholdgroundagainstenemy()) {
        return 0;
    }
    if (btapi_isatcovercondition(entity)) {
        if (entity isatcovernodestrict() && is_true(entity.var_342553bc)) {
            if (archetype_human_cover::function_1fa73a96(entity)) {
                return 1;
            }
            if (is_true(entity.ai.reloading)) {
                return 1;
            }
            if (isdefined(entity.var_541abeb7) && gettime() - entity.var_541abeb7 < 3000) {
                if (distancesquared(entity.origin, entity.var_99d0daef) < function_a3f6cdac(32)) {
                    return 1;
                }
            }
        }
        return 0;
    }
    return 1;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x4
// Checksum 0x66737bc3, Offset: 0xb68
// Size: 0x72
function private function_66b40330(entity) {
    if (entity isatcovernode()) {
        aiutility::function_3823e69e(entity);
        entity.var_342553bc.entity = 1;
        entity.var_b8cc25c.entity = 0;
        entity.var_f13fb34f.entity = gettime();
        entity.var_39226de1.entity = entity.origin;
    }
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x4
// Checksum 0x3249f855, Offset: 0xbe8
// Size: 0x3e
function private function_36cba91d(entity) {
    aiutility::releaseclaimnode(entity);
    entity.var_b636f23b.entity = 0;
    entity.var_a4f84a7f.entity = entity.var_c67bb799;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x4
// Checksum 0x33e92d24, Offset: 0xc30
// Size: 0xde
function private function_9d21c8ff(entity) {
    if (entity asmistransitionrunning()) {
        return;
    }
    if (entity.var_c67bb799 > entity.var_a4f84a7f) {
        entity.var_b636f23b.entity = 0;
        entity.var_a4f84a7f.entity = entity.var_c67bb799;
    }
    if (isdefined(entity.enemy) && entity cansee(entity.enemy)) {
        entity.var_b636f23b.entity = entity.var_b636f23b + 0.05;
    } else {
        entity.var_b636f23b.entity = 0;
    }
    if (entity.var_b636f23b >= 5) {
        entity.nextfindbestcovertime.entity = gettime();
        entity.var_b636f23b.entity = 0;
    }
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x4
// Checksum 0x3ae1e110, Offset: 0xd18
// Size: 0x22
function private function_c20ec4e4(entity) {
    entity.var_b636f23b = undefined;
    entity.var_a4f84a7f = undefined;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x4
// Checksum 0x6f8ce3df, Offset: 0xd48
// Size: 0x3c
function private function_d9b2ddf9(entity) {
    aiutility::keepclaimnode(entity);
    aiutility::function_43a090a8(entity);
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x4
// Checksum 0x15ea273, Offset: 0xd90
// Size: 0x54
function private function_7852409f(entity) {
    if (isalive(entity)) {
        aiutility::function_dc44803c(entity);
    }
    aiutility::releaseclaimnode(entity);
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x4
// Checksum 0xef81c98d, Offset: 0xdf0
// Size: 0x44
function private preparetoreacttoenemy(behaviortreeentity) {
    behaviortreeentity.newenemyreaction.behaviortreeentity = 0;
    behaviortreeentity.malfunctionreaction.behaviortreeentity = 0;
    behaviortreeentity pathmode("move delayed", 1, 3);
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x4
// Checksum 0x9f0af29a, Offset: 0xe40
// Size: 0x22
function private resetreactiontoenemy(behaviortreeentity) {
    behaviortreeentity.newenemyreaction.behaviortreeentity = 0;
    behaviortreeentity.malfunctionreaction.behaviortreeentity = 0;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x4
// Checksum 0xf40aa7be, Offset: 0xe70
// Size: 0x54
function private nocloseenemyservice(behaviortreeentity) {
    if (isdefined(behaviortreeentity.enemy) && aiutility::hascloseenemytomelee(behaviortreeentity)) {
        behaviortreeentity clearpath();
        return 1;
    }
    return 0;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x4
// Checksum 0x82a70972, Offset: 0xed0
// Size: 0x5a
function private hascloseenemy(behaviortreeentity) {
    if (!isdefined(behaviortreeentity.enemy)) {
        return 0;
    }
    if (distancesquared(behaviortreeentity.origin, behaviortreeentity.enemy.origin) < 22500) {
        return 1;
    }
    return 0;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x4
// Checksum 0x7c7decd4, Offset: 0xf38
// Size: 0x2a
function private function_56512b87(entity) {
    entity.bulletsinclip.entity = entity.sidearm.clipsize;
    return 1;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x4
// Checksum 0x1da5f859, Offset: 0xf70
// Size: 0x36
function private function_52dfff39(entity) {
    var_52dfff39 = 0;
    if (entity.bulletsinclip <= 0) {
        var_52dfff39 = 1;
    }
    return var_52dfff39;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x4
// Checksum 0x2cbc1442, Offset: 0xfb0
// Size: 0x10
function private function_bb575b62(*entity) {
    return 1;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x4
// Checksum 0xcf54783f, Offset: 0xfc8
// Size: 0x20
function private function_3a4e776(entity) {
    return entity.weapon != entity.primaryweapon;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x4
// Checksum 0x8370e0ec, Offset: 0xff0
// Size: 0x34
function private function_ec3ea122(entity) {
    return !function_e44a792b(entity, function_a3f6cdac(500));
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 2, eflags: 0x4
// Checksum 0x2648cb13, Offset: 0x1030
// Size: 0x386
function private function_e44a792b(entity, checkdistance = function_a3f6cdac(300)) {
    var_64c23a1b = 0;
    if (isdefined(entity.sidearm)) {
        if (is_true(entity.var_f0ab915e)) {
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
        var_f5093b66 = is_true(entity.var_f4e1bacb);
        if (var_64c23a1b != var_f5093b66) {
            println("<unknown string>" + entity getentnum() + "<unknown string>" + var_64c23a1b + "<unknown string>");
        }
    #/
    entity.var_f4e1bacb = var_64c23a1b;
    return var_64c23a1b;
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 2, eflags: 0x4
// Checksum 0xcc6835cd, Offset: 0x13c0
// Size: 0x4c
function private setpathmovedelayedrandom(behaviortreeentity, *asmstatename) {
    asmstatename pathmode("move delayed", 0, randomfloatrange(1, 3));
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 2, eflags: 0x4
// Checksum 0x9b1aeeeb, Offset: 0x1418
// Size: 0x7c
function private exposedsetdesiredstancetostand(behaviortreeentity, *asmstatename) {
    aiutility::keepclaimnode(asmstatename);
    currentstance = asmstatename getblackboardattribute("_stance");
    asmstatename setblackboardattribute("_desired_stance", "stand");
}

// Namespace archetype_human_exposed/archetype_human_exposed
// Params 1, eflags: 0x4
// Checksum 0xad6abb5e, Offset: 0x14a0
// Size: 0x3c6
function private tryreacquireservice(behaviortreeentity) {
    if (!isdefined(behaviortreeentity.reacquire_state)) {
        behaviortreeentity.reacquire_state.behaviortreeentity = 0;
    }
    var_d78ca29a = aiutility::function_589c524f(behaviortreeentity);
    if (var_d78ca29a == 4) {
        behaviortreeentity function_d4c687c9();
        behaviortreeentity.ai.var_47823ae7 = gettime() + 5000;
    }
    if (!isdefined(behaviortreeentity.enemy)) {
        behaviortreeentity.reacquire_state.behaviortreeentity = 0;
        return 0;
    }
    if (aiutility::isexposedatcovercondition(behaviortreeentity)) {
        return 0;
    }
    if (isdefined(behaviortreeentity.ai.var_47823ae7) && gettime() < behaviortreeentity.ai.var_47823ae7) {
        behaviortreeentity.reacquire_state.behaviortreeentity = 0;
        return 0;
    }
    if (behaviortreeentity.birthtime + 1000 > gettime()) {
        behaviortreeentity.reacquire_state.behaviortreeentity = 0;
        return 0;
    }
    if (behaviortreeentity haspath()) {
        behaviortreeentity.reacquire_state.behaviortreeentity = 0;
        return 0;
    }
    if (is_true(behaviortreeentity.fixednode)) {
        behaviortreeentity.reacquire_state.behaviortreeentity = 0;
        return 0;
    }
    if (behaviortreeentity seerecently(behaviortreeentity.enemy, 4)) {
        behaviortreeentity.reacquire_state.behaviortreeentity = 0;
        return 0;
    }
    dirtoenemy = vectornormalize(behaviortreeentity.enemy.origin - behaviortreeentity.origin);
    forward = anglestoforward(behaviortreeentity.angles);
    if (vectordot(dirtoenemy, forward) < 0.5) {
        behaviortreeentity.reacquire_state.behaviortreeentity = 0;
        return 0;
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
    case #"hash_defdefdefdefdef0":
        if (behaviortreeentity.reacquire_state > 15) {
            behaviortreeentity.reacquire_state.behaviortreeentity = 0;
            return 0;
        }
        break;
    }
    if (isvec(reacquirepos)) {
        behaviortreeentity.ai.var_bb3caa0f = gettime();
        behaviortreeentity function_a57c34b7(reacquirepos, undefined, "exposed_reacquire");
        return 1;
    }
    behaviortreeentity.reacquire_state++;
    return 0;
}
