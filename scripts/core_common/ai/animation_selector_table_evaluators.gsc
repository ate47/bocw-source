// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\ai\systems\animation_selector_table.gsc;

#namespace animation_selector_table_evaluators;

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 0, eflags: 0x1
// Checksum 0x1371da8f, Offset: 0x358
// Size: 0x234
function autoexec registerastscriptfunctions() {
    animationselectortable::registeranimationselectortableevaluator("testFunction", &testfunction);
    animationselectortable::registeranimationselectortableevaluator("evaluateMoveToCQBAnimations", &evaluatemovetocqbanimations);
    animationselectortable::registeranimationselectortableevaluator("evaluateBlockedAnimations", &evaluateblockedanimations);
    animationselectortable::registeranimationselectortableevaluator("evaluateBlockedCoverArrivalAnimations", &evaluateblockedcoverarrivalanimations);
    animationselectortable::registeranimationselectortableevaluator("evaluateBlockedCoverExitAnimations", &evaluateblockedcoverexitanimations);
    animationselectortable::registeranimationselectortableevaluator("evaluateBlockedNoStairsAnimations", &evaluateblockednostairsanimations);
    animationselectortable::registeranimationselectortableevaluator("evaluateBlockedAnimationsRelaxed", &evaluateblockedanimationsrelaxed);
    animationselectortable::registeranimationselectortableevaluator("evaluateBlockedAnimationsOffNavmesh", &evaluateblockedanimationsoffnavmesh);
    animationselectortable::registeranimationselectortableevaluator("evaluateHumanTurnAnimations", &evaluatehumanturnanimations);
    animationselectortable::registeranimationselectortableevaluator("matchPrePlannedTurn", &matchpreplannedturn);
    animationselectortable::registeranimationselectortableevaluator("planHumanTurnAnimations", &planhumanturnanimations);
    animationselectortable::registeranimationselectortableevaluator("evaluateHumanExposedArrivalAnimations", &evaluatehumanexposedarrivalanimations);
    animationselectortable::registeranimationselectortableevaluator("evaluateJukeBlockedAnimations", &evaluatejukeblockedanimations);
    animationselectortable::registeranimationselectortableevaluator("humanDeathEvaluation", &humandeathevaluation);
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x2 linked
// Checksum 0x8f908b1a, Offset: 0x598
// Size: 0x46
function testfunction(*entity, animations) {
    if (isarray(animations) && animations.size > 0) {
        return animations[0];
    }
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0xad57a976, Offset: 0x5e8
// Size: 0x162
function private function_aa7530df(entity, animation) {
    profileNamedStart(#"");
    assert(isactor(entity));
    forwarddir = anglestoforward(entity.angles);
    localdeltavector = getmovedelta(animation, 0, 1);
    endpoint = entity localtoworldcoords(localdeltavector);
    forwardpoint = endpoint + vectorscale(forwarddir, 100);
    /#
        recordline(entity.origin, endpoint, (0, 0, 1), "<unknown string>", entity);
        recordline(endpoint, forwardpoint, (1, 0.5, 0), "<unknown string>", entity);
    #/
    if (entity maymovefrompointtopoint(endpoint, forwardpoint, 1, 1)) {
        profileNamedStop();
        return true;
    }
    profileNamedStop();
    return false;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0xc482695a, Offset: 0x758
// Size: 0x74
function private evaluatejukeblockedanimations(entity, animations) {
    if (animations.size > 0) {
        return evaluator_findfirstvalidanimation(entity, animations, array(&evaluator_checkanimationagainstnavmesh, &function_aa7530df, &evaluator_checkanimationforovershootinggoal));
    }
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0x2834d45a, Offset: 0x7d8
// Size: 0x222
function private evaluator_checkanimationagainstgeo(entity, animation) {
    profileNamedStart(#"");
    assert(isactor(entity));
    splittime = function_382b0cfb(animation);
    localdeltahalfvector = getmovedelta(animation, 0, splittime);
    midpoint = entity localtoworldcoords(localdeltahalfvector);
    midpoint = (midpoint[0], midpoint[1], entity.origin[2] + 6);
    /#
        recordline(entity.origin, midpoint, (1, 0.5, 0), "<unknown string>", entity);
    #/
    if (entity maymovetopoint(midpoint, 1, 1, entity, 0.05)) {
        localdeltavector = getmovedelta(animation, 0, 1);
        endpoint = entity localtoworldcoords(localdeltavector);
        endpoint = (endpoint[0], endpoint[1], entity.origin[2] + 6);
        /#
            recordline(midpoint, endpoint, (1, 0.5, 0), "<unknown string>", entity);
        #/
        if (entity maymovefrompointtopoint(midpoint, endpoint, 1, 1, entity, 0.05)) {
            profileNamedStop();
            return true;
        }
    }
    profileNamedStop();
    return false;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x4
// Checksum 0xcb69bee2, Offset: 0xa08
// Size: 0x11a
function private evaluator_checkanimationendpointagainstgeo(entity, animation) {
    profileNamedStart(#"");
    assert(isactor(entity));
    localdeltavector = getmovedelta(animation, 0, 1);
    var_e21fa5a4 = entity.angles + (0, entity function_144f21ef(), 0);
    endpoint = coordtransform(localdeltavector, entity.origin, var_e21fa5a4);
    endpoint = (endpoint[0], endpoint[1], entity.origin[2]);
    if (entity maymovetopoint(endpoint, 0, 0)) {
        profileNamedStop();
        return true;
    }
    profileNamedStop();
    return false;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0x13c7d40e, Offset: 0xb30
// Size: 0x144
function private function_91a832bb(entity, animation) {
    localdeltavector = getmovedelta(animation, 0, 1);
    var_f0ccb726 = lengthsquared(localdeltavector);
    if (var_f0ccb726 > sqr(entity getpathlength())) {
        return false;
    }
    splittime = function_382b0cfb(animation);
    localdeltavector = getmovedelta(animation, 0, splittime);
    var_773216e9 = length(localdeltavector);
    disttocorner = distance2d(entity.origin, entity.var_14b548c5);
    if (var_773216e9 >= disttocorner && var_773216e9 < disttocorner * 1.2) {
        return true;
    }
    return false;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0x9417c8ed, Offset: 0xc80
// Size: 0x5c
function private function_3c7d2020(entity, animation) {
    if (animhasnotetrack(animation, "corner")) {
        return 1;
    }
    return evaluator_checkanimationforovershootinggoal(entity, animation);
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0x69392023, Offset: 0xce8
// Size: 0x348
function private evaluator_checkanimationforovershootinggoal(entity, animation) {
    profileNamedStart(#"");
    assert(isactor(entity));
    if (entity haspath()) {
        startpos = entity.origin;
        goalpos = entity.var_14b548c5;
        assert(isdefined(goalpos));
        disttogoalsq = distance2dsquared(startpos, goalpos);
        localdeltavector = getmovedelta(animation, 0, 1);
        animdistsq = lengthsquared(localdeltavector);
        if (entity.traversalstartdist > 0 && animdistsq > sqr(entity.traversalstartdist)) {
            profileNamedStop();
            return false;
        } else if ((isdefined(entity.var_c4c50a0b) ? entity.var_c4c50a0b : 0) && animdistsq > disttogoalsq) {
            profileNamedStop();
            return false;
        }
        codemovetime = function_199662d1(animation);
        localdeltavector = getmovedelta(animation, 0, codemovetime);
        animdistsq = lengthsquared(localdeltavector);
        if (entity.isarrivalpending && distance2dsquared(startpos, entity.overridegoalpos) < disttogoalsq) {
            goalpos = entity.overridegoalpos;
            disttogoalsq = distance2dsquared(startpos, goalpos);
        }
        if (animdistsq < disttogoalsq * 0.9) {
            profileNamedStop();
            return true;
        }
        /#
            record3dtext("<unknown string>" + function_9e72a96(animation) + "<unknown string>" + sqrt(animdistsq) + "<unknown string>" + sqrt(disttogoalsq), entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.4);
        #/
    } else {
        /#
            record3dtext("<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.4);
        #/
    }
    profileNamedStop();
    return false;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0x53bbfe42, Offset: 0x1040
// Size: 0x1a6
function private function_da29fa63(entity, animation) {
    pixbeginevent(#"hash_4de9b510d8b94b2c");
    assert(isactor(entity));
    if (isdefined(entity.node)) {
        if (entity haspath()) {
            startpos = entity.origin;
            goalpos = entity getnodeoffsetposition(entity.node);
            disttogoalsq = distance2dsquared(startpos, goalpos);
            localdeltavector = getmovedelta(animation, 0, 1);
            animdistsq = lengthsquared(localdeltavector);
            if (animdistsq <= disttogoalsq) {
                pixendevent();
                return true;
            }
        }
        /#
            record3dtext("<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity);
        #/
    }
    pixendevent();
    return false;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0xc784fe0e, Offset: 0x11f0
// Size: 0xfe
function private function_89b21ba9(entity, animation) {
    assert(isactor(entity));
    localdeltavector = getmovedelta(animation, 0, 1);
    endpoint = coordtransform(localdeltavector, entity.origin, entity.angles);
    if (!ispointonstairs(endpoint)) {
        return true;
    }
    /#
        record3dtext("<unknown string>" + endpoint, entity.origin, (1, 0.5, 0), "<unknown string>", entity);
    #/
    return false;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0xd83e7b95, Offset: 0x12f8
// Size: 0x218
function private function_8bd6d54d(entity, animation) {
    assert(isactor(entity));
    maxdist = entity getpathfindingradius() * 2;
    maxdistsq = sqr(maxdist);
    localdeltavector = getmovedelta(animation, 0, 1);
    endpoint = entity localtoworldcoords(localdeltavector);
    radius = length(localdeltavector) + maxdist;
    allies = function_e45cbe76(entity.origin, radius, entity.team);
    foreach (ally in allies) {
        if (ally != entity) {
            var_6560f463 = function_39ceb9d4(entity.origin, endpoint, ally.origin);
            if (var_6560f463 < maxdistsq) {
                /#
                    record3dtext("<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity);
                #/
                return false;
            }
        }
    }
    return true;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0x612df2e3, Offset: 0x1518
// Size: 0x126
function private evaluator_checkanimationagainstnavmesh(entity, animation) {
    assert(isactor(entity));
    localdeltavector = getmovedelta(animation, 0, 1);
    var_e21fa5a4 = entity.angles + (0, entity function_144f21ef(), 0);
    endpoint = coordtransform(localdeltavector, entity.origin, var_e21fa5a4);
    if (ispointonnavmesh(endpoint)) {
        return true;
    }
    /#
        record3dtext("<unknown string>" + endpoint, entity.origin, (1, 0.5, 0), "<unknown string>", entity);
    #/
    return false;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x2 linked
// Checksum 0x71101f24, Offset: 0x1648
// Size: 0x19e
function function_50c1352d(entity, animation) {
    localdeltavector = getmovedelta(animation, 0, 1);
    animdistsq = lengthsquared(localdeltavector);
    goalpos = entity.pathgoalpos;
    disttogoalsq = distance2dsquared(entity.origin, goalpos);
    if (disttogoalsq <= animdistsq && abs(goalpos[2] - entity.origin[2]) < 48) {
        if (is_true(entity.ai.var_a5dabb8b)) {
            return true;
        }
        var_4da2186 = coordtransform(localdeltavector, entity.origin, entity.angles);
        if (distance2dsquared(goalpos, var_4da2186) < sqr(16) && abs(goalpos[2] - var_4da2186[2]) < 48) {
            return true;
        }
    }
    return false;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 3, eflags: 0x2 linked
// Checksum 0x6051e46d, Offset: 0x17f0
// Size: 0x1aa
function evaluator_findfirstvalidanimation(entity, animations, tests) {
    assert(isarray(animations), "<unknown string>");
    assert(isarray(tests), "<unknown string>");
    foreach (aliasanimations in animations) {
        if (aliasanimations.size > 0) {
            valid = 1;
            animation = aliasanimations[0];
            foreach (test in tests) {
                if (![[ test ]](entity, animation)) {
                    valid = 0;
                    break;
                }
            }
            if (valid) {
                return animation;
            }
        }
    }
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0x4d51ef4f, Offset: 0x19a8
// Size: 0x108
function private evaluatemovetocqbanimations(entity, animations) {
    if (is_true(entity.var_81238017)) {
        return undefined;
    }
    anim = evaluateblockedanimations(entity, animations);
    /#
        if (isdefined(anim)) {
            record3dtext("<unknown string>" + function_9e72a96(anim), entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
        } else {
            record3dtext("<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
        }
    #/
    return anim;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0xb5807677, Offset: 0x1ab8
// Size: 0x126
function private evaluateblockedanimations(entity, animations) {
    if (animations.size > 0) {
        anim = evaluator_findfirstvalidanimation(entity, animations, array(&evaluator_checkanimationagainstnavmesh, &evaluator_checkanimationforovershootinggoal));
        if (isdefined(anim)) {
            /#
                record3dtext("<unknown string>" + function_9e72a96(anim), entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
            #/
            return anim;
        }
    }
    /#
        record3dtext("<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
    #/
    return undefined;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0x5d6e4c81, Offset: 0x1be8
// Size: 0x116
function private evaluateblockedcoverarrivalanimations(entity, animations) {
    if (animations.size > 0) {
        anim = evaluator_findfirstvalidanimation(entity, animations, array(&function_da29fa63));
        if (isdefined(anim)) {
            /#
                record3dtext("<unknown string>" + function_9e72a96(anim), entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
            #/
            return anim;
        }
    }
    /#
        record3dtext("<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
    #/
    return undefined;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0x6738c9f4, Offset: 0x1d08
// Size: 0x146
function private evaluateblockedcoverexitanimations(entity, animations) {
    if (animations.size > 0) {
        anim = evaluator_findfirstvalidanimation(entity, animations, array(&evaluator_checkanimationagainstnavmesh, &function_3c7d2020, &function_89b21ba9, &function_8bd6d54d));
        if (isdefined(anim)) {
            /#
                record3dtext("<unknown string>" + function_9e72a96(anim), entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
            #/
            return anim;
        }
    }
    /#
        record3dtext("<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
    #/
    return undefined;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0x20f0877a, Offset: 0x1e58
// Size: 0x136
function private evaluateblockednostairsanimations(entity, animations) {
    if (animations.size > 0) {
        anim = evaluator_findfirstvalidanimation(entity, animations, array(&evaluator_checkanimationagainstnavmesh, &evaluator_checkanimationforovershootinggoal, &function_89b21ba9));
        if (isdefined(anim)) {
            /#
                record3dtext("<unknown string>" + function_9e72a96(anim), entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
            #/
            return anim;
        }
    }
    /#
        record3dtext("<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
    #/
    return undefined;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0xfae2fc8b, Offset: 0x1f98
// Size: 0x116
function private evaluateblockedanimationsrelaxed(entity, animations) {
    if (animations.size > 0) {
        anim = evaluator_findfirstvalidanimation(entity, animations, array(&evaluator_checkanimationforovershootinggoal));
        if (isdefined(anim)) {
            /#
                record3dtext("<unknown string>" + function_9e72a96(anim), entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
            #/
            return anim;
        }
    }
    /#
        record3dtext("<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
    #/
    return undefined;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0xe59523e0, Offset: 0x20b8
// Size: 0x116
function private evaluateblockedanimationsoffnavmesh(entity, animations) {
    if (animations.size > 0) {
        anim = evaluator_findfirstvalidanimation(entity, animations, array(&evaluator_checkanimationagainstgeo));
        if (isdefined(anim)) {
            /#
                record3dtext("<unknown string>" + function_9e72a96(anim), entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
            #/
            return anim;
        }
    }
    /#
        record3dtext("<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
    #/
    return undefined;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0xbc55f7bf, Offset: 0x21d8
// Size: 0x1b6
function private evaluatehumanturnanimations(entity, animations) {
    /#
        if (is_true(level.ai_dontturn)) {
            return undefined;
        }
    #/
    /#
        record3dtext("<unknown string>" + gettime() + "<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
    #/
    if (animations.size > 0) {
        anim = evaluator_findfirstvalidanimation(entity, animations, array(&function_91a832bb, &evaluator_checkanimationagainstgeo, &evaluator_checkanimationagainstnavmesh));
        if (isdefined(anim)) {
            /#
                record3dtext("<unknown string>" + function_9e72a96(anim), entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
            #/
            return anim;
        }
    }
    /#
        record3dtext("<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
    #/
    return undefined;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x2 linked
// Checksum 0xb16ef202, Offset: 0x2398
// Size: 0x2a0
function evaluatehumanexposedarrivalanimations(entity, animations) {
    if (isdefined(entity.pathgoalpos)) {
        if (animations.size > 0) {
            var_5e259f59 = evaluator_findfirstvalidanimation(entity, animations, array(&function_50c1352d));
            /#
                if (isdefined(var_5e259f59)) {
                    record3dtext("<unknown string>" + function_9e72a96(var_5e259f59), entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
                } else {
                    record3dtext("<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
                }
            #/
            return var_5e259f59;
        }
    } else if (!entity haspath() && !isdefined(entity.node)) {
        if (animations.size > 0) {
            foreach (aliasanimations in animations) {
                if (aliasanimations.size > 0) {
                    anim = aliasanimations[0];
                    /#
                        if (isdefined(anim)) {
                            record3dtext("<unknown string>" + function_9e72a96(anim), entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
                        } else {
                            record3dtext("<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity, 0.65);
                        }
                    #/
                    return anim;
                }
            }
        }
    }
    return undefined;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 1, eflags: 0x6 linked
// Checksum 0x29318062, Offset: 0x2640
// Size: 0xc4
function private function_199662d1(animation) {
    codemovetime = 1;
    if (animhasnotetrack(animation, "code_move")) {
        times = getnotetracktimes(animation, "code_move");
        codemovetime = times[0];
    } else if (animhasnotetrack(animation, "mocomp_end")) {
        times = getnotetracktimes(animation, "mocomp_end");
        codemovetime = times[0];
    }
    return codemovetime;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 1, eflags: 0x6 linked
// Checksum 0xc5b592bf, Offset: 0x2710
// Size: 0xca
function private function_382b0cfb(animation) {
    splittime = 0.5;
    if (animhasnotetrack(animation, "corner")) {
        times = getnotetracktimes(animation, "corner");
        assert(times.size == 1, "<unknown string>" + function_9e72a96(animation) + "<unknown string>" + "<unknown string>" + "<unknown string>");
        splittime = times[0];
    }
    return splittime;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0x9168e37a, Offset: 0x27e8
// Size: 0x7a
function private matchpreplannedturn(entity, animations) {
    if (isdefined(entity.var_7b1f015a.animation)) {
        for (i = 0; i < animations.size; i++) {
            if (animations[i][0] == entity.var_7b1f015a.animation) {
                return animations[i][0];
            }
        }
    }
    return undefined;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0x7bc6bd55, Offset: 0x2870
// Size: 0x2b4
function private planhumanturnanimations(entity, animations) {
    if (!isdefined(entity.var_7b1f015a)) {
        entity.var_7b1f015a = {};
    }
    if (animations.size > 0) {
        var_bff64930 = evaluator_findfirstvalidanimation(entity, animations, array(&function_147224));
        entity.var_7b1f015a.animation = var_bff64930;
        if (isdefined(var_bff64930)) {
            splittime = function_382b0cfb(var_bff64930);
            halftime = splittime * 0.5;
            speed = animation::function_a23b2a60(var_bff64930, 0, halftime);
            /#
                record3dtext("<unknown string>" + gettime() + "<unknown string>" + function_9e72a96(var_bff64930) + "<unknown string>" + speed, entity.origin, (1, 0.5, 0), "<unknown string>", entity);
            #/
            entity.var_3b77553e = speed;
            entity.var_7b1f015a.pos = entity.var_14b548c5;
            entity.var_7b1f015a.angle = entity.var_871c9e86;
            entity.var_7b1f015a.var_568d90d2 = function_15a5703b(#"human", entity function_359fd121());
            return var_bff64930;
        } else {
            /#
                record3dtext("<unknown string>" + gettime() + "<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity);
            #/
            entity.var_3b77553e = -1;
        }
        return var_bff64930;
    }
    /#
        record3dtext("<unknown string>" + gettime() + "<unknown string>", entity.origin, (1, 0.5, 0), "<unknown string>", entity);
    #/
    entity.var_3b77553e = -1;
    return undefined;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 1, eflags: 0x6 linked
// Checksum 0xb39d5404, Offset: 0x2b30
// Size: 0xc6
function private function_fe8e7e36(point) {
    if (abs(self.pathgoalpos[2] - self.origin[2]) > 0.5) {
        trace = groundtrace(point + (0, 0, 72), point + (0, 0, -72), 0, 0, 0);
        point = (point[0], point[1], trace[#"position"][2] + 6);
    }
    return point;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0xc6649c3, Offset: 0x2c00
// Size: 0x368
function private function_147224(entity, animation) {
    profileNamedStart(#"");
    assert(isactor(entity));
    midpoint = (entity.var_14b548c5[0], entity.var_14b548c5[1], entity.origin[2] + 6);
    midpoint = entity function_fe8e7e36(midpoint);
    splittime = function_382b0cfb(animation);
    localdeltahalfvector = getmovedelta(animation, 0, splittime);
    var_3f5aa15b = distance2dsquared(entity.origin, midpoint);
    if (var_3f5aa15b > 0 && var_3f5aa15b < length2dsquared(localdeltahalfvector)) {
        profileNamedStop();
        return false;
    }
    entrypoint = midpoint + vectornormalize(entity.origin - midpoint) * length(localdeltahalfvector);
    entrypoint = entity function_fe8e7e36(entrypoint);
    if (entity maymovefrompointtopoint(entrypoint, midpoint, 1, 1, entity, 0.75)) {
        /#
            recordline(midpoint, entrypoint, (1, 0.5, 0), "<unknown string>", entity);
        #/
        codemovetime = function_199662d1(animation);
        var_16ebe729 = getmovedelta(animation, 0, codemovetime);
        var_d66f5018 = vectortoangles(midpoint - entrypoint);
        endpoint = coordtransform(var_16ebe729, entrypoint, var_d66f5018);
        endpoint = entity function_fe8e7e36(endpoint);
        if (entity maymovefrompointtopoint(midpoint, endpoint, 1, 1, entity, 0.75)) {
            /#
                recordline(midpoint, endpoint, (0, 1, 0), "<unknown string>", entity);
            #/
            profileNamedStop();
            return true;
        } else {
            /#
                recordline(midpoint, endpoint, (1, 0, 0), "<unknown string>", entity);
            #/
        }
    } else {
        /#
            recordline(midpoint, entrypoint, (1, 0, 0), "<unknown string>", entity);
        #/
    }
    profileNamedStop();
    return false;
}

// Namespace animation_selector_table_evaluators/animation_selector_table_evaluators
// Params 2, eflags: 0x6 linked
// Checksum 0x72896e4e, Offset: 0x2f78
// Size: 0x184
function private humandeathevaluation(*entity, animations) {
    var_bec12c3d = 0;
    if ((isdefined(self.script_longdeath) ? self.script_longdeath : 1) == 0 || (isdefined(level.var_d03f21c6) ? level.var_d03f21c6 : 0) > gettime()) {
        var_bec12c3d = 1;
    }
    var_f4e2809d = undefined;
    if (var_bec12c3d) {
        validcount = 0;
        for (i = 0; i < animations.size; i++) {
            length = getanimlength(animations[i]);
            if (length < 4) {
                validcount++;
                if (randomint(validcount) == validcount - 1) {
                    var_f4e2809d = animations[i];
                }
            }
        }
    } else {
        randomindex = randomint(animations.size);
        var_f4e2809d = animations[randomindex];
        length = getanimlength(var_f4e2809d);
        if (length >= 4) {
            level.var_d03f21c6 = gettime() + 30000;
        }
    }
    return var_f4e2809d;
}

