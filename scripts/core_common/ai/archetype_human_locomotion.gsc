// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\ai\archetype_locomotion_utility.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;

#namespace namespace_2dd2c4d8;

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 0, eflags: 0x1
// Checksum 0x8b5b12fc, Offset: 0x240
// Size: 0x12b4
function autoexec registerbehaviorscriptfunctions() {
    assert(isscriptfunctionptr(&prepareformovement));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"prepareformovement", &prepareformovement);
    assert(isscriptfunctionptr(&prepareformovement));
    behaviorstatemachine::registerbsmscriptapiinternal(#"prepareformovement", &prepareformovement);
    assert(isscriptfunctionptr(&shouldtacticalarrivecondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"shouldtacticalarrive", &shouldtacticalarrivecondition);
    assert(isscriptfunctionptr(&planhumanarrivalatcover));
    behaviorstatemachine::registerbsmscriptapiinternal(#"planhumanarrivalatcover", &planhumanarrivalatcover);
    assert(isscriptfunctionptr(&shouldplanarrivalintocover));
    behaviorstatemachine::registerbsmscriptapiinternal(#"shouldplanarrivalintocover", &shouldplanarrivalintocover);
    assert(iscodefunctionptr(&btapi_shouldarriveexposed));
    behaviorstatemachine::registerbsmscriptapiinternal(#"btapi_shouldarriveexposed", &btapi_shouldarriveexposed);
    assert(isscriptfunctionptr(&function_d68785cf));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_68e2b8b69e5739d0", &function_d68785cf);
    assert(iscodefunctionptr(&btapi_humannoncombatlocomotionupdate));
    behaviorstatemachine::registerbsmscriptapiinternal(#"btapi_humannoncombatlocomotionupdate", &btapi_humannoncombatlocomotionupdate);
    assert(isscriptfunctionptr(&combatlocomotionstart));
    behaviorstatemachine::registerbsmscriptapiinternal(#"combatlocomotionstart", &combatlocomotionstart);
    assert(isscriptfunctionptr(&function_52950d3d));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_6b12744ac88be28f", &function_52950d3d);
    assert(isscriptfunctionptr(&function_4937d436));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_5ff9dd2b25d5c185", &function_4937d436);
    assert(isscriptfunctionptr(&function_145df88b));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_57981ededd43a0de", &function_145df88b);
    assert(isscriptfunctionptr(&function_2985b5fa));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_4caa5fa7a97f83ea", &function_2985b5fa);
    assert(isscriptfunctionptr(&function_31a6aada));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_341f9ccd69da418c", &function_31a6aada);
    assert(isscriptfunctionptr(&function_41ae663f));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_cf6fb7a59d64171", &function_41ae663f);
    assert(isscriptfunctionptr(&function_76ff98aa));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_1fa0b1eca87bd7ef", &function_76ff98aa);
    assert(isscriptfunctionptr(&function_e20dbfa4));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_66f99f9da0a69762", &function_e20dbfa4);
    assert(isscriptfunctionptr(&function_888d9ea5));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_58eba240a42bbdcd", &function_888d9ea5);
    assert(isscriptfunctionptr(&function_e20dbfa4));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_66f99f9da0a69762", &function_e20dbfa4);
    assert(isscriptfunctionptr(&function_888d9ea5));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_58eba240a42bbdcd", &function_888d9ea5);
    assert(isscriptfunctionptr(&function_45d8f364));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_4160e8b3456ab234", &function_45d8f364);
    assert(isscriptfunctionptr(&function_27c368b1));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_6c5516f89d4ff0c7", &function_27c368b1);
    assert(isscriptfunctionptr(&function_45d8f364));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4160e8b3456ab234", &function_45d8f364);
    assert(isscriptfunctionptr(&function_27c368b1));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6c5516f89d4ff0c7", &function_27c368b1);
    assert(iscodefunctionptr(&btapi_combatlocomotionupdate));
    behaviorstatemachine::registerbsmscriptapiinternal(#"btapi_combatlocomotionupdate", &btapi_combatlocomotionupdate);
    assert(iscodefunctionptr(&btapi_humannoncombatlocomotioncondition));
    behaviorstatemachine::registerbsmscriptapiinternal(#"btapi_humannoncombatlocomotioncondition", &btapi_humannoncombatlocomotioncondition);
    assert(iscodefunctionptr(&btapi_humancombatlocomotioncondition));
    behaviorstatemachine::registerbsmscriptapiinternal(#"btapi_humancombatlocomotioncondition", &btapi_humancombatlocomotioncondition);
    assert(isscriptfunctionptr(&preparetostopnearenemy));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"preparetostopnearenemy", &preparetostopnearenemy);
    assert(isscriptfunctionptr(&preparetostopnearenemy));
    behaviorstatemachine::registerbsmscriptapiinternal(#"preparetostopnearenemy", &preparetostopnearenemy);
    assert(isscriptfunctionptr(&preparetomoveawayfromnearbyenemy));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"preparetomoveawayfromnearbyenemy", &preparetomoveawayfromnearbyenemy);
    assert(isscriptfunctionptr(&shouldtacticalwalkpain));
    behaviorstatemachine::registerbsmscriptapiinternal(#"shouldtacticalwalkpain", &shouldtacticalwalkpain);
    assert(isscriptfunctionptr(&begintacticalwalkpain));
    behaviorstatemachine::registerbsmscriptapiinternal(#"begintacticalwalkpain", &begintacticalwalkpain);
    assert(isscriptfunctionptr(&shouldcontinuetacticalwalkpain));
    behaviorstatemachine::registerbsmscriptapiinternal(#"shouldcontinuetacticalwalkpain", &shouldcontinuetacticalwalkpain);
    assert(isscriptfunctionptr(&bsmlocomotionhasvalidpaininterrupt));
    behaviorstatemachine::registerbsmscriptapiinternal(#"bsmlocomotionhasvalidpaininterrupt", &bsmlocomotionhasvalidpaininterrupt);
    assert(isscriptfunctionptr(&function_1972c057));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_61aa304b516f76a7", &function_1972c057);
    assert(isscriptfunctionptr(&function_968efd1f));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_17b044df7de84a21", &function_968efd1f);
    assert(isscriptfunctionptr(&function_80c579d8));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_2a9f4015fc6217df", &function_80c579d8);
    assert(iscodefunctionptr(&function_2da76de));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_34f3c9eb834c01fb", &function_2da76de);
    assert(iscodefunctionptr(&function_2da76de));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_34f3c9eb834c01fb", &function_2da76de);
    assert(isscriptfunctionptr(&function_c34dd9f8));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_2746da0437b7aaf9", &function_c34dd9f8);
    assert(isscriptfunctionptr(&function_f2c9142));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_77f68c7d2552ba09", &function_f2c9142);
    assert(isscriptfunctionptr(&function_d8a81861));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_3d48a4a68d62f9b2", &function_d8a81861);
    assert(isscriptfunctionptr(&function_ab6f96b6));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_25898377b0649f0e", &function_ab6f96b6);
    assert(isscriptfunctionptr(&function_7ba867a8));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_631ad7fc5b704ad", &function_7ba867a8);
    assert(isscriptfunctionptr(&function_52c3ab28));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_799d1239ee7780df", &function_52c3ab28);
    assert(isscriptfunctionptr(&function_b1092561));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_7a0baaf803e988e1", &function_b1092561);
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xebed3b61, Offset: 0x1500
// Size: 0x6e
function private shouldtacticalwalkpain(entity) {
    if ((!isdefined(entity.startpaintime) || entity.startpaintime + 3000 < gettime()) && randomfloat(1) > 0.25) {
        return bsmlocomotionhasvalidpaininterrupt(entity);
    }
    return 0;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xaa3a9f62, Offset: 0x1578
// Size: 0x1a
function private begintacticalwalkpain(entity) {
    entity.startpaintime = gettime();
    return true;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x6c6f5d14, Offset: 0x15a0
// Size: 0x20
function private shouldcontinuetacticalwalkpain(entity) {
    return entity.startpaintime + 100 >= gettime();
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x2da3d5f3, Offset: 0x15c8
// Size: 0x2a
function private bsmlocomotionhasvalidpaininterrupt(entity) {
    return entity hasvalidinterrupt("pain");
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xd9c597f9, Offset: 0x1600
// Size: 0x3c
function private preparetostopnearenemy(behaviortreeentity) {
    behaviortreeentity clearpath();
    aiutility::keepclaimnode(behaviortreeentity);
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xd9ce52ed, Offset: 0x1648
// Size: 0x3c
function private preparetomoveawayfromnearbyenemy(behaviortreeentity) {
    behaviortreeentity clearpath();
    aiutility::keepclaimnode(behaviortreeentity);
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xa1e605c3, Offset: 0x1690
// Size: 0x2ba
function private shouldplanarrivalintocover(behaviortreeentity) {
    goingtocovernode = isdefined(behaviortreeentity.node) && iscovernode(behaviortreeentity.node) && behaviortreeentity function_4c2fffe6(behaviortreeentity.node);
    if (!goingtocovernode) {
        return false;
    }
    if (!aiutility::function_c94f0d1(behaviortreeentity)) {
        return false;
    }
    if (isdefined(behaviortreeentity.pathgoalpos)) {
        if (is_true(behaviortreeentity.ai.var_ee9a2dfd)) {
            return true;
        } else if (isdefined(behaviortreeentity.arrivalfinalpos)) {
            nodeoffsetpos = behaviortreeentity getnodeoffsetposition(behaviortreeentity.node);
            if (behaviortreeentity.arrivalfinalpos != nodeoffsetpos) {
                return true;
            } else if (behaviortreeentity.ai.replannedcoverarrival === 0 && isdefined(behaviortreeentity.exitpos) && isdefined(behaviortreeentity.predictedexitpos)) {
                behaviortreeentity.ai.replannedcoverarrival = 1;
                exitdir = vectornormalize(behaviortreeentity.predictedexitpos - behaviortreeentity.exitpos);
                currentdir = vectornormalize(behaviortreeentity.origin - behaviortreeentity.exitpos);
                if (lengthsquared(exitdir) > 0.0001 && lengthsquared(currentdir) > 0.0001 && vectordot(exitdir, currentdir) < cos(30)) {
                    behaviortreeentity.predictedarrivaldirectionvalid = 0;
                    return true;
                }
                var_f4f4457e = function_15a5703b(#"human", behaviortreeentity function_28e7d252());
                if (behaviortreeentity.var_2dc0ed5e !== var_f4f4457e) {
                    return true;
                }
            }
        } else {
            return true;
        }
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x70f07c2d, Offset: 0x1958
// Size: 0x128
function private combatlocomotionstart(behaviortreeentity) {
    behaviortreeentity.ai.var_9ec404f2 = behaviortreeentity getblackboardattribute("_stance");
    behaviortreeentity setblackboardattribute("_desired_stance", "stand");
    behaviortreeentity ai::function_fc7bd6c7();
    randomchance = randomint(100);
    if (randomchance > 50) {
        behaviortreeentity setblackboardattribute("_run_n_gun_variation", "variation_forward");
        return true;
    }
    if (randomchance > 25) {
        behaviortreeentity setblackboardattribute("_run_n_gun_variation", "variation_strafe_1");
        return true;
    }
    behaviortreeentity setblackboardattribute("_run_n_gun_variation", "variation_strafe_2");
    return true;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x5a3ab914, Offset: 0x1a88
// Size: 0x38
function private function_52950d3d(behaviortreeentity) {
    behaviortreeentity.ai.var_9ec404f2 = undefined;
    behaviortreeentity ai::function_f6060793();
    return true;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 2, eflags: 0x2 linked
// Checksum 0x59626471, Offset: 0x1ac8
// Size: 0x4c
function function_3b9e6ead(entity, var_cddf6299) {
    if (function_52c3ab28(entity)) {
        entity astsearch(var_cddf6299, "planHumanTurnAnimations");
    }
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xb9d89cfd, Offset: 0x1b20
// Size: 0x138
function private function_4937d436(behaviortreeentity) {
    behaviortreeentity setblackboardattribute("_desired_stance", "stand");
    behaviortreeentity function_ed7c3705("run_n_gun");
    behaviortreeentity ai::function_fc7bd6c7();
    behaviortreeentity.var_f334caee = 1;
    behaviortreeentity.var_e62db63f = 0;
    randomchance = randomint(100);
    if (randomchance > 50) {
        behaviortreeentity setblackboardattribute("_run_n_gun_variation", "variation_forward");
        return true;
    }
    if (randomchance > 25) {
        behaviortreeentity setblackboardattribute("_run_n_gun_variation", "variation_strafe_1");
        return true;
    }
    behaviortreeentity setblackboardattribute("_run_n_gun_variation", "variation_strafe_2");
    return true;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x7aaccaef, Offset: 0x1c60
// Size: 0x94
function private function_145df88b(entity) {
    if (is_true(entity.var_f334caee)) {
        if (!entity asmistransitionrunning()) {
            entity.var_d4a1d7ed = gettime() + 2000;
            entity.var_f334caee = undefined;
        }
    }
    if (btapi_combatlocomotionupdate(entity)) {
        function_3b9e6ead(entity, "turn@locomotion");
        return true;
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xbaf6ad1, Offset: 0x1d00
// Size: 0x52
function private function_2985b5fa(behaviortreeentity) {
    behaviortreeentity ai::function_f6060793();
    behaviortreeentity function_ed7c3705("none");
    behaviortreeentity.var_d4a1d7ed = 0;
    return true;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x57040f55, Offset: 0x1d60
// Size: 0x70
function private function_31a6aada(behaviortreeentity) {
    behaviortreeentity setblackboardattribute("_desired_stance", "stand");
    behaviortreeentity function_ed7c3705("non_combat_run");
    behaviortreeentity ai::function_fc7bd6c7();
    return true;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xd9a2c6da, Offset: 0x1dd8
// Size: 0x4c
function private function_41ae663f(entity) {
    if (btapi_humannoncombatlocomotionupdate(entity)) {
        function_3b9e6ead(entity, "turn@locomotion");
        return true;
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xfda30926, Offset: 0x1e30
// Size: 0x48
function private function_76ff98aa(behaviortreeentity) {
    behaviortreeentity ai::function_f6060793();
    behaviortreeentity function_ed7c3705("none");
    return true;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xfff4d052, Offset: 0x1e80
// Size: 0x28
function private function_e20dbfa4(behaviortreeentity) {
    behaviortreeentity ai::function_fc7bd6c7();
    return true;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xb7a629cb, Offset: 0x1eb0
// Size: 0x28
function private function_888d9ea5(behaviortreeentity) {
    behaviortreeentity ai::function_f6060793();
    return true;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x70ea8ccb, Offset: 0x1ee0
// Size: 0x28
function private function_45d8f364(behaviortreeentity) {
    behaviortreeentity ai::function_fc7bd6c7();
    return true;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x364049e3, Offset: 0x1f10
// Size: 0x28
function private function_27c368b1(behaviortreeentity) {
    behaviortreeentity ai::function_f6060793();
    return true;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x8b61e62e, Offset: 0x1f40
// Size: 0x38
function private prepareformovement(behaviortreeentity) {
    behaviortreeentity setblackboardattribute("_stance", "stand");
    return true;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xf27565b9, Offset: 0x1f80
// Size: 0x32
function private isarrivingfour(arrivalangle) {
    if (arrivalangle >= 45 && arrivalangle <= 120) {
        return true;
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x62992e38, Offset: 0x1fc0
// Size: 0x32
function private isarrivingone(arrivalangle) {
    if (arrivalangle >= 120 && arrivalangle <= 165) {
        return true;
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x4da71372, Offset: 0x2000
// Size: 0x32
function private isarrivingtwo(arrivalangle) {
    if (arrivalangle >= 165 && arrivalangle <= 195) {
        return true;
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x31a05a44, Offset: 0x2040
// Size: 0x32
function private isarrivingthree(arrivalangle) {
    if (arrivalangle >= 195 && arrivalangle <= 240) {
        return true;
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xe66f75d1, Offset: 0x2080
// Size: 0x32
function private isarrivingsix(arrivalangle) {
    if (arrivalangle >= 240 && arrivalangle <= 315) {
        return true;
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x67adc186, Offset: 0x20c0
// Size: 0x32
function private isfacingfour(facingangle) {
    if (facingangle >= 45 && facingangle <= 135) {
        return true;
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xb989d407, Offset: 0x2100
// Size: 0x32
function private isfacingeight(facingangle) {
    if (facingangle >= -45 && facingangle <= 45) {
        return true;
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xad5fafa4, Offset: 0x2140
// Size: 0x30
function private isfacingseven(facingangle) {
    if (facingangle >= 0 && facingangle <= 90) {
        return true;
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x7b79d2d4, Offset: 0x2178
// Size: 0x32
function private isfacingsix(facingangle) {
    if (facingangle >= -135 && facingangle <= -45) {
        return true;
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x8cba065e, Offset: 0x21b8
// Size: 0x30
function private isfacingnine(facingangle) {
    if (facingangle >= -90 && facingangle <= 0) {
        return true;
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xf95bc452, Offset: 0x21f0
// Size: 0x3fa
function private shouldtacticalarrivecondition(behaviortreeentity) {
    if (getdvarint(#"enabletacticalarrival", 0) != 1) {
        return false;
    }
    if (!isdefined(behaviortreeentity.node)) {
        return false;
    }
    if (!(behaviortreeentity.node.type == #"cover left")) {
        return false;
    }
    stance = behaviortreeentity getblackboardattribute("_arrival_stance");
    if (stance != "stand") {
        return false;
    }
    arrivaldistance = 35;
    /#
        arrivaldvar = getdvarint(#"tacarrivaldistance", 0);
        if (arrivaldvar != 0) {
            arrivaldistance = arrivaldvar;
        }
    #/
    nodeoffsetposition = behaviortreeentity getnodeoffsetposition(behaviortreeentity.node);
    if (distance(nodeoffsetposition, behaviortreeentity.origin) > arrivaldistance || distance(nodeoffsetposition, behaviortreeentity.origin) < 25) {
        return false;
    }
    entityangles = vectortoangles(behaviortreeentity.origin - nodeoffsetposition);
    if (abs(behaviortreeentity.node.angles[1] - entityangles[1]) < 60) {
        return false;
    }
    tacticalfaceangle = behaviortreeentity getblackboardattribute("_tactical_arrival_facing_yaw");
    arrivalangle = behaviortreeentity getblackboardattribute("_locomotion_arrival_yaw");
    if (isarrivingfour(arrivalangle)) {
        if (!isfacingsix(tacticalfaceangle) && !isfacingeight(tacticalfaceangle) && !isfacingfour(tacticalfaceangle)) {
            return false;
        }
    } else if (isarrivingone(arrivalangle)) {
        if (!isfacingnine(tacticalfaceangle) && !isfacingseven(tacticalfaceangle)) {
            return false;
        }
    } else if (isarrivingtwo(arrivalangle)) {
        if (!isfacingeight(tacticalfaceangle)) {
            return false;
        }
    } else if (isarrivingthree(arrivalangle)) {
        if (!isfacingseven(tacticalfaceangle) && !isfacingnine(tacticalfaceangle)) {
            return false;
        }
    } else if (isarrivingsix(arrivalangle)) {
        if (!isfacingfour(tacticalfaceangle) && !isfacingeight(tacticalfaceangle) && !isfacingsix(tacticalfaceangle)) {
            return false;
        }
    } else {
        return false;
    }
    return true;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 2, eflags: 0x6 linked
// Checksum 0x62f30268, Offset: 0x25f8
// Size: 0x68c
function private planhumanarrivalatcover(behaviortreeentity, arrivalanim) {
    behaviortreeentity.ai.var_ee9a2dfd = undefined;
    if (behaviortreeentity ai::get_behavior_attribute("disablearrivals")) {
        return false;
    }
    behaviortreeentity setblackboardattribute("_desired_stance", "stand");
    if (!isdefined(arrivalanim)) {
        return false;
    }
    if (!aiutility::function_c94f0d1(behaviortreeentity)) {
        return false;
    }
    if (isdefined(behaviortreeentity.node) && isdefined(behaviortreeentity.pathgoalpos)) {
        if (!iscovernode(behaviortreeentity.node) || !behaviortreeentity function_4c2fffe6(behaviortreeentity.node)) {
            return false;
        }
        nodeoffsetposition = behaviortreeentity getnodeoffsetposition(behaviortreeentity.node);
        if (isdefined(arrivalanim)) {
            splittime = getarrivalsplittime(arrivalanim);
            issplitarrival = splittime > 0 && splittime < 1;
            nodeapproachyaw = behaviortreeentity getnodeoffsetangles(behaviortreeentity.node)[1];
            angle = (0, nodeapproachyaw - getangledelta(arrivalanim), 0);
            forwarddir = anglestoforward(angle);
            rightdir = anglestoright(angle);
            animlength = getanimlength(arrivalanim);
            var_ff177acc = getmovedelta(arrivalanim, 0, (animlength - 0.2) / animlength);
            if (issplitarrival) {
                var_d56d1d2d = getmovedelta(arrivalanim, 0, splittime);
                var_f0dd8bc8 = var_ff177acc - var_d56d1d2d;
                var_fb34812f = vectorscale(forwarddir, var_d56d1d2d[0]);
                var_944b0150 = vectorscale(rightdir, var_d56d1d2d[1]);
                var_85e98eb9 = vectorscale(forwarddir, var_f0dd8bc8[0]);
                var_a358ca3 = vectorscale(rightdir, var_f0dd8bc8[1]);
                var_6e775fcc = nodeoffsetposition - var_85e98eb9 + var_a358ca3;
                coverenterpos = var_6e775fcc - var_fb34812f + var_944b0150;
                var_5fd77fe1 = var_6e775fcc + (0, 0, 8);
                var_c7c8e445 = nodeoffsetposition + (0, 0, 8);
                var_6c21c197 = coverenterpos + (0, 0, 8);
                /#
                    recordline(var_5fd77fe1, var_c7c8e445, (1, 0.5, 0), "<unknown string>");
                    record3dtext("<unknown string>", var_5fd77fe1, (1, 0.5, 0), "<unknown string>");
                    recordline(var_6c21c197, var_5fd77fe1, (1, 0.5, 0), "<unknown string>");
                    record3dtext("<unknown string>", var_6c21c197, (1, 0.5, 0), "<unknown string>");
                #/
                if (!behaviortreeentity maymovefrompointtopoint(var_5fd77fe1, var_c7c8e445, 1, 1, behaviortreeentity, 0.05)) {
                    return false;
                }
                if (!behaviortreeentity maymovefrompointtopoint(var_6c21c197, var_5fd77fe1, 1, 1, behaviortreeentity, 0.05)) {
                    return false;
                }
            } else {
                forward = vectorscale(forwarddir, var_ff177acc[0]);
                right = vectorscale(rightdir, var_ff177acc[1]);
                coverenterpos = nodeoffsetposition - forward + right;
                var_c7c8e445 = nodeoffsetposition + (0, 0, 8);
                var_6c21c197 = coverenterpos + (0, 0, 8);
                /#
                    recordline(var_6c21c197, var_c7c8e445, (1, 0.5, 0), "<unknown string>");
                    record3dtext("<unknown string>", var_6c21c197, (1, 0.5, 0), "<unknown string>");
                #/
                if (!behaviortreeentity maymovefrompointtopoint(var_6c21c197, var_c7c8e445, 1, 1, behaviortreeentity, 0.05)) {
                    return false;
                }
            }
            if (!checkcoverarrivalconditions(coverenterpos, nodeoffsetposition)) {
                return false;
            }
            if (ispointonnavmesh(coverenterpos, behaviortreeentity)) {
                behaviortreeentity.var_2dc0ed5e = function_15a5703b(#"human", behaviortreeentity function_28e7d252());
                /#
                    recordcircle(coverenterpos, 2, (1, 0, 0), "<unknown string>");
                #/
                behaviortreeentity function_a57c34b7(coverenterpos, nodeoffsetposition, "arrival");
                return true;
            }
        }
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 2, eflags: 0x6 linked
// Checksum 0xe234e144, Offset: 0x2c90
// Size: 0x2ec
function private checkcoverarrivalconditions(coverenterpos, coverpos) {
    distsqtonode = distancesquared(self.origin, coverpos);
    distsqfromnodetoenterpos = distancesquared(coverpos, coverenterpos);
    awayfromenterpos = distsqtonode >= distsqfromnodetoenterpos + 150;
    if (!awayfromenterpos) {
        return false;
    }
    trace = groundtrace(coverenterpos + (0, 0, 72), coverenterpos + (0, 0, -72), 0, 0, 0);
    if (isdefined(trace[#"position"]) && abs(trace[#"position"][2] - coverpos[2]) > 30) {
        /#
            if (getdvarint(#"ai_debugarrivals", 0)) {
                recordcircle(coverenterpos, 1, (1, 0, 0), "<unknown string>");
                record3dtext("<unknown string>", coverenterpos, (1, 0, 0), "<unknown string>", undefined, 0.4);
                recordcircle(trace[#"position"], 1, (1, 0, 0), "<unknown string>");
                record3dtext("<unknown string>" + int(abs(trace[#"position"][2] - coverpos[2])), trace[#"position"] + (0, 0, 5), (1, 0, 0), "<unknown string>", undefined, 0.4);
                record3dtext("<unknown string>" + 30, trace[#"position"], (1, 0, 0), "<unknown string>", undefined, 0.4);
                recordline(coverenterpos, trace[#"position"], (1, 0, 0), "<unknown string>");
            }
        #/
        return false;
    }
    return true;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x99ed455d, Offset: 0x2f88
// Size: 0x240
function private getarrivalsplittime(arrivalanim) {
    if (!isdefined(level.animarrivalsplittimes)) {
        level.animarrivalsplittimes = [];
    }
    if (isdefined(level.animarrivalsplittimes[arrivalanim])) {
        return level.animarrivalsplittimes[arrivalanim];
    }
    bestsplit = -1;
    if (animhasnotetrack(arrivalanim, "corner")) {
        times = getnotetracktimes(arrivalanim, "corner");
        assert(times.size == 1, "<unknown string>" + function_9e72a96(arrivalanim) + "<unknown string>" + "<unknown string>" + "<unknown string>");
        bestsplit = times[0];
    } else {
        /#
            var_1e582813 = function_9e72a96(arrivalanim);
            var_ccd34262 = issubstr(var_1e582813, "<unknown string>") || issubstr(var_1e582813, "<unknown string>") || issubstr(var_1e582813, "<unknown string>");
            var_ffc4381b = issubstr(var_1e582813, "<unknown string>");
            if (var_ccd34262 && !var_ffc4381b && self.archetype == #"human") {
                assertmsg("<unknown string>" + var_1e582813 + "<unknown string>" + "<unknown string>" + "<unknown string>");
            }
        #/
    }
    level.animarrivalsplittimes[arrivalanim] = bestsplit;
    return bestsplit;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 2, eflags: 0x4
// Checksum 0x8d40205b, Offset: 0x31d0
// Size: 0x92
function private deltarotate(delta, yaw) {
    cosine = cos(yaw);
    sine = sin(yaw);
    return (delta[0] * cosine - delta[1] * sine, delta[1] * cosine + delta[0] * sine, 0);
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 0, eflags: 0x6 linked
// Checksum 0x6cd999a9, Offset: 0x3270
// Size: 0x72
function private function_e7f9cf11() {
    assert(self.archetype == #"human" || self.archetype == #"civilian");
    speed = self function_28e7d252();
    return speed;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 0, eflags: 0x6 linked
// Checksum 0x32e7145d, Offset: 0x32f0
// Size: 0x5a
function private function_3298688b() {
    assert(self.archetype == #"human");
    speed = self function_359fd121();
    return speed;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 0, eflags: 0x6 linked
// Checksum 0xecd79f3c, Offset: 0x3358
// Size: 0x3a
function private function_eb731440() {
    assert(self.archetype == #"human");
    return self.var_55a3f1d3;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 0, eflags: 0x6 linked
// Checksum 0xd46fe5b5, Offset: 0x33a0
// Size: 0x5e
function private function_631d7179() {
    assert(self.archetype == #"human");
    if (is_true(self.var_dd1cd771)) {
        return self.var_31162969;
    }
    return self.var_55a3f1d3;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x9998eacb, Offset: 0x3408
// Size: 0x164
function private function_cb9c22a2(entity) {
    if (entity haspath() && !isdefined(entity.traversestartnode) && !entity function_3c566724()) {
        if (entity getorientmode("script") != "face enemy strafe") {
            entity.var_6a36b46d = 1;
            entity animmode("zonly_physics");
            entity orientmode("face enemy strafe");
            entity.var_6a36b46d = 0;
        }
    }
    var_55a3f1d3 = entity function_144f21ef();
    if (is_true(entity.ai.var_c978f9a1)) {
        if (-85 < var_55a3f1d3 && var_55a3f1d3 < 35) {
            return false;
        }
        return true;
    }
    if (var_55a3f1d3 < -90 || var_55a3f1d3 > 90) {
        return true;
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x5bce60a2, Offset: 0x3578
// Size: 0x2e
function private function_1972c057(entity) {
    if (function_cb9c22a2(entity)) {
        return true;
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xfbf620e, Offset: 0x35b0
// Size: 0x2e
function private function_968efd1f(entity) {
    if (!function_cb9c22a2(entity)) {
        return true;
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x8d13e9aa, Offset: 0x35e8
// Size: 0x5e
function private function_c2fb1a1e(entity) {
    if (!level.enablehipflip) {
        return false;
    }
    starttime = entity.ai.var_f92c6536;
    if (!isdefined(starttime)) {
        return false;
    }
    if (gettime() - starttime < 1000) {
        return false;
    }
    return true;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xdc1f1757, Offset: 0x3650
// Size: 0xb8
function private function_aede5c43(entity) {
    if (entity haspath()) {
        disttogoalsq = distancesquared(entity.pathgoalpos, entity.origin);
        if (disttogoalsq < sqr(150)) {
            return false;
        }
    }
    footstep = entity function_4b57124f(150);
    if (footstep != "left foot") {
        return false;
    }
    return true;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xe7981c97, Offset: 0x3710
// Size: 0xf6
function private function_c34dd9f8(entity) {
    if (!function_c2fb1a1e(entity)) {
        return 0;
    }
    if (!is_true(entity.ai.var_c978f9a1)) {
        var_55a3f1d3 = entity.ai.var_7979fbb2;
        if (var_55a3f1d3 < -120 && var_55a3f1d3 < entity.ai.var_798e85cd) {
            return function_aede5c43(entity);
        }
        if (var_55a3f1d3 > 55 && var_55a3f1d3 < 90 && var_55a3f1d3 > entity.ai.var_798e85cd) {
            return function_aede5c43(entity);
        }
    }
    return 0;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0xad3e6dc8, Offset: 0x3810
// Size: 0x106
function private function_f2c9142(entity) {
    if (!function_c2fb1a1e(entity)) {
        return 0;
    }
    if (is_true(entity.ai.var_c978f9a1)) {
        var_55a3f1d3 = entity.ai.var_7979fbb2;
        if (var_55a3f1d3 < 55 && var_55a3f1d3 > 20 && var_55a3f1d3 < entity.ai.var_798e85cd) {
            return function_aede5c43(entity);
        }
        if (var_55a3f1d3 > -135 && var_55a3f1d3 < -105 && var_55a3f1d3 > entity.ai.var_798e85cd) {
            return function_aede5c43(entity);
        }
    }
    return 0;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x595f9bf7, Offset: 0x3920
// Size: 0xca
function private function_d8a81861(entity) {
    if (!level.enablehipflip) {
        return function_1972c057(entity);
    }
    if (!is_true(entity.ai.var_c978f9a1)) {
        var_55a3f1d3 = entity.ai.var_7979fbb2;
        if (var_55a3f1d3 > 135 && var_55a3f1d3 > entity.ai.var_798e85cd) {
            return 1;
        }
        if (var_55a3f1d3 < -135 && var_55a3f1d3 < entity.ai.var_798e85cd) {
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x3b9a3ac9, Offset: 0x39f8
// Size: 0x90
function private function_ab6f96b6(entity) {
    if (!level.enablehipflip) {
        return function_968efd1f(entity);
    }
    if (is_true(entity.ai.var_c978f9a1)) {
        var_55a3f1d3 = entity.ai.var_7979fbb2;
        if (var_55a3f1d3 > -60 && var_55a3f1d3 < 45) {
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x2 linked
// Checksum 0x1b8908cc, Offset: 0x3a90
// Size: 0x66
function function_7ba867a8(entity) {
    var_422d3ed4 = entity function_fe54a83e();
    if (var_422d3ed4 >= 45 && var_422d3ed4 <= 315) {
        return 1;
    }
    entity.var_3b77553e = -1;
    return 0;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x2 linked
// Checksum 0x4ec06549, Offset: 0x3b00
// Size: 0x150
function function_52c3ab28(entity) {
    if (!function_7ba867a8(entity)) {
        return false;
    } else if (!isdefined(entity.var_3b77553e) || entity.var_3b77553e <= 0) {
        return true;
    } else if (!isdefined(entity.var_7b1f015a)) {
        return true;
    } else if (distance2dsquared(entity.var_7b1f015a.pos, entity.var_14b548c5) > sqr(4)) {
        return true;
    } else if (abs(entity.var_7b1f015a.angle - entity.var_871c9e86) > 1) {
        return true;
    } else if (entity.var_7b1f015a.var_568d90d2 != function_15a5703b(#"human", entity function_359fd121())) {
        return true;
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x2 linked
// Checksum 0xe79e24cf, Offset: 0x3c58
// Size: 0x1b0
function function_b1092561(entity) {
    if ((isdefined(entity.var_3b77553e) ? entity.var_3b77553e : 0) > 0 && isdefined(entity.var_7b1f015a.animation) && isdefined(entity.var_14b548c5)) {
        splittime = 0.5;
        if (animhasnotetrack(entity.var_7b1f015a.animation, "corner")) {
            times = getnotetracktimes(entity.var_7b1f015a.animation, "corner");
            assert(times.size == 1, "<unknown string>" + function_9e72a96(entity.var_7b1f015a.animation) + "<unknown string>" + "<unknown string>" + "<unknown string>");
            splittime = times[0];
        }
        localdeltahalfvector = getmovedelta(entity.var_7b1f015a.animation, 0, splittime);
        if (distance2dsquared(entity.origin, entity.var_14b548c5) <= lengthsquared(localdeltahalfvector)) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x51882e11, Offset: 0x3e10
// Size: 0x12
function private function_80c579d8(*entity) {
    return self.var_ca796dd1;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 0, eflags: 0x2 linked
// Checksum 0xe52d80d, Offset: 0x3e30
// Size: 0x108
function function_2fa3d847() {
    enemy = self.enemy;
    if (!isdefined(enemy)) {
        return self.var_e62db63f;
    }
    var_3e0a4a57 = self function_584873ef();
    var_7c8caf6 = var_3e0a4a57 - self.var_e62db63f;
    var_b3aae738 = 1;
    if (var_7c8caf6 < 0) {
        var_b3aae738 = -1;
    }
    var_7c8caf6 = min(abs(var_7c8caf6), self.var_1f35a3cf);
    var_d4699b3f = self.var_e62db63f + var_b3aae738 * var_7c8caf6;
    self.var_e62db63f = var_d4699b3f;
    /#
        recordenttext("<unknown string>" + var_d4699b3f, self, (1, 0, 0), "<unknown string>");
    #/
    return var_d4699b3f;
}

// Namespace namespace_2dd2c4d8/archetype_human_locomotion
// Params 1, eflags: 0x6 linked
// Checksum 0x45e2e59a, Offset: 0x3f40
// Size: 0x6a
function private function_d68785cf(entity) {
    if (btapi_shouldarriveexposed(entity)) {
        var_55a3f1d3 = entity function_144f21ef();
        if (abs(var_55a3f1d3) < 3) {
            return true;
        }
    }
    return false;
}

