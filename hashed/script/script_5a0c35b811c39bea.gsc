// Atian COD Tools GSC CW decompiler test
#using script_35b8a6927c851193;
#using script_2618e0f3e5e11649;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using script_1940fc077a028a81;
#using script_3411bb48d41bd3b;
#using script_3357acf79ce92f4b;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using script_2c5daa95f8fec03c;
#using script_3819e7a1427df6d2;
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\ai\archetype_avogadro.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\aat_shared.gsc;

#namespace namespace_9f3d3e9;

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 0, eflags: 0x5
// Checksum 0xfe461728, Offset: 0x2b8
// Size: 0x54
function private autoexec __init__system__() {
    system::register(#"wz_ai_avogadro", &preinit, undefined, &function_4df027f2, #"archetype_avogadro");
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 0, eflags: 0x6 linked
// Checksum 0x2e976368, Offset: 0x318
// Size: 0x204
function private preinit() {
    spawner::add_archetype_spawn_function(#"avogadro", &function_f34df3c);
    spawner::function_89a2cd87(#"avogadro", &function_c41e67c);
    level.var_8791f7c5 = &function_ac94df05;
    level.var_a35afcb2 = &function_7d5cf0e4;
    assert(isscriptfunctionptr(&function_f498585b));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_76e19aed5b42448f", &function_f498585b);
    assert(isscriptfunctionptr(&function_5871bcf8));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_408e0b3d57595bf7", &function_5871bcf8, 1);
    assert(isscriptfunctionptr(&function_14b5c940));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_21f9e6b4d52f79cb", &function_14b5c940);
    namespace_ce1f29cc::add_archetype_spawn_function(#"avogadro", &function_1d490042);
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x528
// Size: 0x4
function function_4df027f2() {
    
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 0, eflags: 0x6 linked
// Checksum 0x2254609e, Offset: 0x538
// Size: 0x39a
function private function_f34df3c() {
    blackboard::createblackboardforentity(self);
    ai::createinterfaceforentity(self);
    self callback::function_d8abfc3d(#"hash_10ab46b52df7967a", &namespace_85745671::function_5cb3181e);
    self.var_8f78592b = &namespace_e292b080::zombieshouldmelee;
    self.cant_move_cb = &function_9c573bc6;
    self.var_31a789c0 = 1;
    self.var_1c0eb62a = 180;
    self.var_13138acf = 1;
    self.var_e729ffb = 2;
    self.var_1731eda3 = 1;
    self.var_721a3dbd = 1;
    self.var_8f61d7f4 = 1;
    self.var_4cc2bf28 = 0;
    self.var_90d0c0ff = "anim_avogadro_spawn";
    self.var_ecbef856 = "anim_avogadro_despawn";
    self.despawn_anim = "ai_t9_zm_avogadro_exit";
    self.var_c11b8a5a = 1;
    self.var_e9c62827 = 1;
    self.ai.var_870d0893 = 1;
    self.no_powerups = 1;
    self.var_b3c613a7 = [1, 1, 1, 1, 1];
    self.var_414bc881 = 1;
    self.var_97ca51c7 = 1;
    self namespace_85745671::function_9758722("walk");
    self callback::function_d8abfc3d(#"on_ai_damage", &function_ce2bd83c);
    self callback::function_d8abfc3d(#"on_ai_killed", &function_8886bcc4);
    self callback::function_d8abfc3d(#"on_ai_melee", &namespace_85745671::zombie_on_melee);
    self callback::function_d8abfc3d(#"hash_7140c3848cbefaa1", &function_e44ef704);
    self callback::function_d8abfc3d(#"hash_3bb51ce51020d0eb", &namespace_85745671::function_16e2f075);
    self callback::function_d8abfc3d(#"hash_c1d64b00f1dc607", &function_f59c1777);
    self callback::function_d8abfc3d(#"hash_4afe635f36531659", &awareness::function_c6b1009e);
    aiutility::addaioverridedamagecallback(self, &function_1fef432);
    self.completed_emerging_into_playable_area = 1;
    self.canbetargetedbyturnedzombies = 1;
    level thread zm_spawner::zombie_death_event(self);
    if (!isdefined(self)) {
        return;
    }
    /#
        self.var_6c408220 = &function_c698f66b;
    #/
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 0, eflags: 0x6 linked
// Checksum 0xe600b4d5, Offset: 0x8e0
// Size: 0xbc
function private function_c41e67c() {
    self endon(#"death");
    self.var_15aa1ae0 = 2000;
    self.var_533dbb42 = 20;
    self.var_7654fbc7 = 40;
    self.var_168f9987 = 700;
    self.var_946951ef = 1000;
    self.var_36221cb6 = 1500;
    self.var_724ec089 = 1500;
    timeout = getanimlength("ai_t9_zm_avogadro_arrival");
    self waittilltimeout(timeout, #"avogadro_arrival_finished");
    self function_99cad91e();
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 0, eflags: 0x6 linked
// Checksum 0x6276209f, Offset: 0x9a8
// Size: 0x5c
function private function_1d490042() {
    var_e2948315 = isdefined(level.var_506300cc) ? level.var_506300cc : 3000;
    if (var_e2948315 > 0) {
        self archetype_avogadro::function_33237109(self, self.origin, var_e2948315);
    }
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 0, eflags: 0x2 linked
// Checksum 0xfd772022, Offset: 0xa10
// Size: 0x164
function function_9c573bc6() {
    self notify("3d43796ba0a483d2");
    self endon("7699a6bf329a1c95", #"death");
    if (isdefined(self.enemy_override)) {
        return;
    }
    if (is_true(self.allowoffnavmesh) && is_true(level.var_5e8121a) && is_true(self.var_35eedf58)) {
        self.var_ef59b90 = 5;
        return;
    } else if (self.aistate === 3 && is_true(self.canseeplayer)) {
        if (isdefined(self.favoriteenemy) && is_true(self.var_de6e22f7) && !self.var_13138acf) {
            self.var_ef59b90 = 6;
            return;
        }
        self.var_ef59b90 = 5;
        return;
    }
    self collidewithactors(0);
    wait(2);
    self collidewithactors(1);
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 0, eflags: 0x2 linked
// Checksum 0xe8927578, Offset: 0xb80
// Size: 0x1dc
function function_99cad91e() {
    self.has_awareness = 1;
    self.ignorelaststandplayers = 1;
    self.fovcosine = 0.2;
    self.maxsightdistsqrd = sqr(1000);
    self.var_1267fdea = 1;
    self callback::function_d8abfc3d(#"on_ai_damage", &awareness::function_5f511313);
    awareness::register_state(self, #"wander", &function_83e04f3c, &awareness::function_4ebe4a6d, &awareness::function_b264a0bc, undefined, &awareness::function_555d960b);
    awareness::register_state(self, #"investigate", &function_92c28840, &awareness::function_9eefc327, &awareness::function_34162a25, undefined, &awareness::function_a360dd00);
    awareness::register_state(self, #"chase", &function_b28bc84e, &function_f8aa7ab9, &function_cea6c5e9, &function_93d792b9, undefined);
    awareness::set_state(self, #"wander");
    self thread awareness::function_fa6e010d();
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0x5b6d6f36, Offset: 0xd68
// Size: 0x7c
function function_83e04f3c(entity) {
    self.fovcosine = 0.2;
    self.maxsightdistsqrd = sqr(1000);
    self.var_1267fdea = 0;
    entity namespace_85745671::function_9758722("walk");
    awareness::function_9c9d96b5(entity);
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0xa5a8819e, Offset: 0xdf0
// Size: 0x5c
function function_92c28840(entity) {
    self.fovcosine = 0;
    self.maxsightdistsqrd = sqr(1800);
    self.var_1267fdea = 0;
    awareness::function_b41f0471(entity);
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0x17869ad1, Offset: 0xe58
// Size: 0x94
function function_b28bc84e(entity) {
    self.fovcosine = 0;
    self.maxsightdistsqrd = sqr(3000);
    self.var_1267fdea = 0;
    entity namespace_85745671::function_9758722("run");
    entity.maxsightdistsqrd = sqr(2000);
    awareness::function_978025e4(entity);
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0xcd87214d, Offset: 0xef8
// Size: 0x10c
function function_f8aa7ab9(entity) {
    if (function_7436ece2(entity.favoriteenemy)) {
        entity.var_972b23bb = 1;
        function_a756bd8e(entity);
        return;
    }
    target = archetype_avogadro::get_target_ent(entity);
    if (isdefined(target) && archetype_avogadro::function_d58f8483(entity)) {
        entity namespace_85745671::function_9758722("run");
        archetype_avogadro::function_de781d41(entity);
        return;
    }
    entity namespace_85745671::function_9758722("sprint");
    function_a756bd8e(entity);
    awareness::function_39da6c3c(entity);
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0xa1040175, Offset: 0x1010
// Size: 0x16
function function_a756bd8e(entity) {
    entity.var_e8a7f45d = undefined;
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0x6b9e20d8, Offset: 0x1030
// Size: 0xac
function function_cea6c5e9(entity) {
    function_a756bd8e(entity);
    entity.var_972b23bb = undefined;
    if (isdefined(entity.cluster) && entity.cluster.status === 0) {
        entity callback::callback(#"hash_10ab46b52df7967a");
        return;
    }
    entity.maxsightdistsqrd = sqr(1000);
    awareness::function_b9f81e8b(entity);
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0x9d470dba, Offset: 0x10e8
// Size: 0x3c
function function_93d792b9(entity) {
    if (function_7436ece2(entity.favoriteenemy)) {
        return;
    }
    awareness::function_5c40e824(entity);
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x0
// Checksum 0x4bf968b0, Offset: 0x1130
// Size: 0x24
function avogadrodespawn(entity) {
    entity thread onallcracks(entity);
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0xfcbd8999, Offset: 0x1160
// Size: 0x198
function onallcracks(entity) {
    entity endon(#"death");
    entity.var_8a96267d = undefined;
    entity.is_digging = 1;
    entity pathmode("dont move", 1);
    timeout = getanimlength("ai_t9_zm_avogadro_exit");
    entity animscripted("avogadro_exit_finished", self.origin, self.angles, "ai_t9_zm_avogadro_exit", "normal", "root", 1, 0);
    waitresult = entity waittilltimeout(timeout, #"avogadro_exit_finished");
    entity ghost();
    entity notsolid();
    entity val::set(#"avogadro_despawn", "ignoreall", 1);
    entity clientfield::set("" + #"hash_2eec8fc21495a18c", 0);
    entity notify(#"is_underground");
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0xa65ab249, Offset: 0x1300
// Size: 0x8a
function function_7436ece2(entity) {
    if (!isplayer(entity) || !namespace_85745671::function_142c3c86(entity)) {
        return false;
    }
    vehicle = entity getvehicleoccupied();
    if (vehicle getspeed() < 100) {
        return false;
    }
    return true;
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0x31d09f12, Offset: 0x1398
// Size: 0xfa
function function_f498585b(entity) {
    if (gettime() < entity.var_4cc2bf28) {
        return 0;
    }
    if (isdefined(entity.favoriteenemy) && is_true(entity.favoriteenemy.usingvehicle)) {
        vehicle = entity.favoriteenemy getvehicleoccupied();
        if (isdefined(vehicle.var_7cdc3732)) {
            function_1eaaceab(vehicle.var_7cdc3732, 0);
            if (vehicle.var_7cdc3732.size >= 3 && !isinarray(vehicle.var_7cdc3732, self)) {
                return 0;
            }
        }
    }
    return function_7436ece2(entity.favoriteenemy);
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0xf057bfac, Offset: 0x14a0
// Size: 0x6e
function function_14b5c940(entity) {
    if (is_false(entity.can_shoot)) {
        return false;
    }
    if (!isdefined(entity.favoriteenemy)) {
        return false;
    }
    if (isdefined(level.var_a35afcb2) && ![[ level.var_a35afcb2 ]](entity)) {
        return false;
    }
    return true;
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0xd113f018, Offset: 0x1518
// Size: 0xfc
function function_175d123b(vehicle) {
    self endon(#"death");
    vehicle endon(#"death");
    if (!isdefined(vehicle.var_7cdc3732)) {
        vehicle.var_7cdc3732 = [];
    }
    vehicle.var_7cdc3732[vehicle.var_7cdc3732.size] = self;
    while (vehicle getspeed() >= 100 && isplayer(self.favoriteenemy) && isdefined(vehicle getoccupantseat(self.favoriteenemy))) {
        waitframe(1);
    }
    if (isdefined(vehicle) && isdefined(self)) {
        arrayremovevalue(vehicle.var_7cdc3732, self);
    }
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0x1495f942, Offset: 0x1620
// Size: 0x786
function function_5871bcf8(entity) {
    if (isdefined(entity.var_78dd7804)) {
        return;
    }
    vehicle = entity.favoriteenemy getvehicleoccupied();
    speed = vehicle getspeed();
    if (!isdefined(vehicle.var_7cdc3732) || !isinarray(vehicle.var_7cdc3732, entity)) {
        entity thread function_175d123b(vehicle);
    }
    angles = entity.favoriteenemy getplayerangles();
    angles = (0, angles[1], 0);
    direction = anglestoforward(angles);
    right = anglestoright(angles);
    angularvelocity = vehicle getangularvelocity();
    var_b03d2fe7 = abs(angularvelocity[2]);
    var_c27adf49 = mapfloat(0, 2.6, 300, 800, var_b03d2fe7);
    rightoffset = right * var_c27adf49 * (angularvelocity[2] > 0 ? -1 : 1);
    var_ff89cc4c = max(speed * 2, 1500);
    forwardoffset = direction * var_ff89cc4c;
    var_2ca243fc = rightoffset + forwardoffset;
    var_9d75e0da = length(var_2ca243fc);
    if (isdefined(vehicle.origin)) {
        var_37cf85c7 = getclosestpointonnavmesh(vehicle.origin, 128, entity getpathfindingradius() * 1.2);
    }
    if (!isdefined(var_37cf85c7)) {
        return;
    }
    entity.var_78dd7804 = archetype_avogadro::function_205c9932(entity);
    if (!isdefined(entity.var_78dd7804)) {
        return;
    }
    nextpos = checknavmeshdirection(var_37cf85c7, var_2ca243fc, var_9d75e0da, entity getpathfindingradius() * 1.2);
    if (distancesquared(vehicle.origin, nextpos) < sqr(1500)) {
        archetype_avogadro::function_c6e09354(entity.var_78dd7804);
        entity.var_78dd7804 = undefined;
        return;
    }
    points = array(nextpos + (150, 0, 0), nextpos + (300, 0, 0), nextpos - (150, 0, 0), nextpos - (300, 0, 0), nextpos + (0, 150, 0), nextpos + (0, 300, 0), nextpos - (0, 150, 0), nextpos - (0, 300, 0));
    bestpoint = undefined;
    traceheightoffset = entity function_6a9ae71();
    points = array::randomize(points);
    foreach (point in points) {
        nextpos = groundtrace(point + (0, 0, 500) + (0, 0, 8), point + (0, 0, 500) + (0, 0, -100000), 0, entity)[#"position"];
        if (nextpos[2] < point[2] - 2000) {
            /#
                recordsphere(point, 10, (1, 0, 0), "<unknown string>", entity);
            #/
            continue;
        }
        if (bullettracepassed(nextpos + (0, 0, traceheightoffset), vehicle.origin + (0, 0, traceheightoffset), 0, vehicle)) {
            bestpoint = nextpos;
            break;
        }
        /#
            recordsphere(nextpos, 10, (1, 0, 0), "<unknown string>", entity);
        #/
    }
    if (!isdefined(bestpoint)) {
        archetype_avogadro::function_c6e09354(entity.var_78dd7804);
        entity.var_78dd7804 = undefined;
        return;
    }
    var_baa2a8c4 = vehicle.origin - bestpoint;
    /#
        recordsphere(bestpoint, 15, (0, 0, 1), "<unknown string>");
        recordline(entity.origin, bestpoint, (0, 0, 1), "<unknown string>");
    #/
    var_dd695160 = entity gettagorigin("j_spine4") - entity.origin;
    entity.var_78dd7804.array[0].origin = entity.origin + var_dd695160;
    entity.var_78dd7804.array[1].origin = bestpoint + var_dd695160;
    entity thread archetype_avogadro::function_d979c854(entity);
    entity forceteleport(bestpoint, vectortoangles(var_baa2a8c4));
    entity.var_4cc2bf28 = gettime() + int(3.5 * 1000);
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0xdb963f42, Offset: 0x1db0
// Size: 0x3cc
function function_ce2bd83c(params) {
    if (is_true(self.is_phasing)) {
        return;
    }
    if (isdefined(params.einflictor) && isdefined(params.weapon) && params.smeansofdeath !== "MOD_DOT") {
        dot_params = function_f74d2943(params.weapon, 7);
        if (isdefined(dot_params)) {
            status_effect::status_effect_apply(dot_params, params.weapon, params.einflictor);
        }
    }
    if (isdefined(params.einflictor) && !isdefined(self.attackable) && isdefined(params.einflictor.var_b79a8ac7) && isarray(params.einflictor.var_b79a8ac7.slots) && isarray(level.var_7fc48a1a) && isinarray(level.var_7fc48a1a, params.weapon)) {
        if (params.einflictor namespace_85745671::get_attackable_slot(self)) {
            self.attackable = params.einflictor;
        }
    }
    if (params.smeansofdeath == "MOD_CRUSH") {
        self function_f59c1777({#origin:self.origin, #radius:250, #jammer:self});
        if (isdefined(params.einflictor)) {
            params.einflictor dodamage(500, self.origin, self, self, "none", "MOD_UNKNOWN");
        }
        if (isalive(self)) {
            self.allowdeath = 1;
            level thread hud::function_c9800094(params.eattacker, self.origin, self.maxhealth, 1);
            self kill(self.origin, params.eattacker, params.einflictor, undefined, 0, 1);
        }
    }
    if (params.smeansofdeath === "MOD_MELEE") {
        if (isplayer(params.einflictor)) {
            if (self.shield) {
                params.einflictor status_effect::status_effect_apply(level.var_2ea60515, undefined, self, 0);
            }
        }
        if (!self.shield) {
            self.shield = 1;
            self.hit_by_melee++;
        }
    } else if (self.hit_by_melee > 0) {
        self.hit_by_melee--;
    }
    self archetype_avogadro::function_ec39f01c(params.idamage, params.eattacker, params.vdir, params.vpoint, params.smeansofdeath, undefined, undefined, undefined, params.weapon);
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 13, eflags: 0x2 linked
// Checksum 0xe043c287, Offset: 0x2188
// Size: 0xa2
function function_1fef432(*inflictor, *attacker, damage, *idflags, *smeansofdeath, *weapon, *var_fd90b0bb, *point, *dir, *shitloc, *offsettime, *boneindex, *modelindex) {
    /#
        if (is_true(level.var_85a39c96)) {
            return (self.health + 1);
        }
    #/
    return modelindex;
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0xc693957d, Offset: 0x2238
// Size: 0x68
function function_8886bcc4(params) {
    self playsound(#"hash_64bb457a8c6f828c");
    self clientfield::set("sndAwarenessChange", 0);
    if (!isplayer(params.eattacker)) {
        return;
    }
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0x4dbf3a23, Offset: 0x22a8
// Size: 0x3c
function function_e44ef704(*params) {
    self.var_ef59b90 = 5;
    self callback::callback(#"hash_10ab46b52df7967a");
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0x9d4730d7, Offset: 0x22f0
// Size: 0x6a
function function_ac94df05(entity) {
    return isdefined(entity.current_state) && entity.current_state.name === #"chase" && (entity.var_9bff71aa < 2 || gettime() - entity.var_7fde19e8 > 1000);
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0x5122372a, Offset: 0x2368
// Size: 0x3e
function function_7d5cf0e4(entity) {
    return isdefined(entity.current_state) && entity.current_state.name == #"chase";
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x2 linked
// Checksum 0x148e4322, Offset: 0x23b0
// Size: 0x120
function function_f59c1777(params) {
    entities = getentitiesinradius(params.origin, params.radius);
    foreach (entity in entities) {
        if (!function_b16c8865(entity, self)) {
            continue;
        }
        if (isplayer(entity)) {
            entity status_effect::status_effect_apply(level.var_2ea60515, undefined, self, 0);
            continue;
        }
        self thread function_e27c41b4(entity, params.jammer);
    }
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 2, eflags: 0x6 linked
// Checksum 0x8c2efde, Offset: 0x24d8
// Size: 0x118
function private function_b16c8865(entity, owner) {
    if (self == entity) {
        return false;
    }
    if (!isplayer(entity) && (!isdefined(entity.model) || entity.model == #"")) {
        return false;
    }
    if (isactor(entity) && !is_true(entity.var_8f61d7f4)) {
        return false;
    }
    if (isdefined(entity.team) && !util::function_fbce7263(entity.team, owner.team)) {
        return false;
    }
    if (isdefined(entity.ignoreemp) ? entity.ignoreemp : 0) {
        return false;
    }
    return true;
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 2, eflags: 0x6 linked
// Checksum 0x1d4b290b, Offset: 0x25f8
// Size: 0x17e
function private function_e27c41b4(entity, jammer = undefined) {
    entity endon(#"death");
    if (!isdefined(entity)) {
        return;
    }
    if (isalive(entity) && isvehicle(entity) && isdefined(level.is_staircase_up)) {
        if (isdefined(entity.maxhealth)) {
            damage = max(entity.maxhealth * 0.1, 200);
            entity dodamage(damage, entity.origin, jammer, undefined, "none", "MOD_UNKNOWN");
        }
        function_1c430dad(entity, 1);
        entity thread [[ level.is_staircase_up ]](self, jammer);
        return;
    }
    if (isalive(entity) && isactor(entity)) {
        function_1c430dad(entity, 1);
        return;
    }
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x4
// Checksum 0x3b6b116b, Offset: 0x2780
// Size: 0xc4
function private function_b8c5ab9c(player) {
    player notify(#"hash_4f2e183cc0ec68bd");
    player endon(#"death", #"hash_4f2e183cc0ec68bd");
    player clientfield::set_to_player("isJammed", 1);
    player.isjammed = 1;
    player.var_fe1ebada = self;
    player setempjammed(1);
    wait(5);
    if (!isdefined(player)) {
        return;
    }
    function_d88f3e48(player);
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 2, eflags: 0x2 linked
// Checksum 0x3f796cc4, Offset: 0x2850
// Size: 0x86
function function_1c430dad(entity, isjammed) {
    if (!isplayer(entity) && !isactor(entity)) {
        entity clientfield::set("isJammed", isjammed);
    }
    entity.isjammed = isjammed;
    entity.emped = isjammed;
}

// Namespace namespace_9f3d3e9/namespace_9f3d3e9
// Params 1, eflags: 0x6 linked
// Checksum 0x56f3e3fa, Offset: 0x28e0
// Size: 0x7c
function private function_d88f3e48(entity) {
    if (!isdefined(entity)) {
        return;
    }
    if (isplayer(entity)) {
        entity clientfield::set_to_player("isJammed", 0);
        entity setempjammed(0);
    }
    function_1c430dad(entity, 0);
}

/#

    // Namespace namespace_9f3d3e9/namespace_9f3d3e9
    // Params 0, eflags: 0x0
    // Checksum 0x3a44c844, Offset: 0x2968
    // Size: 0x8
    function function_c698f66b() {
        
    }

#/
