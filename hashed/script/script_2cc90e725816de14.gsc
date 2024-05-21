// Atian COD Tools GSC CW decompiler test
#using script_1940fc077a028a81;
#using scripts\zm_common\zm_behavior.gsc;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using script_3411bb48d41bd3b;
#using script_3357acf79ce92f4b;
#using scripts\weapons\mechz_firebomb.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using script_7f35d42a9593323b;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\aat_shared.gsc;

#namespace namespace_394b7174;

// Namespace namespace_394b7174/namespace_394b7174
// Params 0, eflags: 0x5
// Checksum 0xa3e4fb00, Offset: 0x3b8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_76fcf333cf2abd11", &__init__, undefined, &function_4df027f2, undefined);
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 0, eflags: 0x2 linked
// Checksum 0xe2ff3565, Offset: 0x408
// Size: 0x64
function __init__() {
    spawner::add_archetype_spawn_function(#"mechz", &function_b8e86206);
    spawner::function_89a2cd87(#"mechz", &function_3f369eaa);
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 0, eflags: 0x6 linked
// Checksum 0xd086a29a, Offset: 0x478
// Size: 0x544
function private function_4df027f2() {
    level thread aat::register_immunity("ammomod_brainrot", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_brainrot_1", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_brainrot_2", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_brainrot_3", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_brainrot_4", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_brainrot_5", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_cryofreeze", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_cryofreeze_1", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_cryofreeze_2", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_cryofreeze_3", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_cryofreeze_4", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_cryofreeze_5", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_deadwire", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_deadwire_1", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_deadwire_2", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_deadwire_3", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_deadwire_4", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_deadwire_5", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_napalmburst", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_napalmburst_1", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_napalmburst_2", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_napalmburst_3", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_napalmburst_4", #"mechz", 1, 1, 1);
    level thread aat::register_immunity("ammomod_napalmburst_5", #"mechz", 1, 1, 1);
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 0, eflags: 0x2 linked
// Checksum 0x8adc400a, Offset: 0x9c8
// Size: 0x162
function function_b8e86206() {
    self callback::function_d8abfc3d(#"on_ai_melee", &namespace_85745671::zombie_on_melee);
    self callback::function_d8abfc3d(#"hash_10ab46b52df7967a", &function_3076443);
    self.var_12af7864 = 1;
    self.blockingpain = 1;
    self.var_d8695234 = 1;
    self.var_90d0c0ff = "anim_mechz_spawn";
    self.var_ecbef856 = "anim_mechz_despawn";
    self.should_zigzag = 0;
    self.ai.var_870d0893 = 1;
    self.var_f7c8ccf5 = &function_f7c8ccf5;
    self.var_b3c613a7 = [1, 1.5, 1.5, 2, 2];
    self.var_414bc881 = 0.5;
    self.var_97ca51c7 = 2;
    self.var_5e55975f = &namespace_e292b080::zombieshouldmelee;
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 0, eflags: 0x2 linked
// Checksum 0x856b6635, Offset: 0xb38
// Size: 0xfc
function function_3f369eaa() {
    self function_8d5f13fa();
    if (is_true(self.var_1a5b6b7e)) {
        self endon(#"death");
        awareness::pause(self);
        self animscripted("rise_anim", self.origin, (0, self.angles[1], 0), #"hash_768cb7840d5e6d2b", "normal", undefined, 1, 0.2);
        self waittillmatch({#notetrack:"end"}, #"rise_anim");
        awareness::resume(self);
    }
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 1, eflags: 0x2 linked
// Checksum 0x5e4bc445, Offset: 0xc40
// Size: 0x134
function function_3076443(*params) {
    self endon(#"death");
    if (isdefined(self.attackable)) {
        namespace_85745671::function_2b925fa5(self);
    }
    self animscripted("despawn_anim", self.origin, self.angles, #"hash_d4f220b98771ce4", "normal", undefined, 1, 0.2);
    self waittillmatch({#notetrack:"end"}, #"despawn_anim");
    self ghost();
    self notsolid();
    waittillframeend();
    self.var_98f1f37c = 1;
    self.allowdeath = 1;
    self kill(undefined, undefined, undefined, undefined, 0, 1);
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 0, eflags: 0x2 linked
// Checksum 0xfdfd3ed8, Offset: 0xd80
// Size: 0x314
function function_8d5f13fa() {
    self.fovcosine = 0.5;
    self.maxsightdistsqrd = sqr(900);
    self.has_awareness = 1;
    self.ignorelaststandplayers = 1;
    self.var_1267fdea = 1;
    self callback::function_d8abfc3d(#"on_ai_damage", &awareness::function_5f511313);
    awareness::register_state(self, #"wander", &function_65f28890, &awareness::function_4ebe4a6d, &awareness::function_b264a0bc, undefined, &awareness::function_555d960b);
    awareness::register_state(self, #"investigate", &awareness::function_b41f0471, &awareness::function_9eefc327, &awareness::function_34162a25, undefined, &awareness::function_a360dd00);
    awareness::register_state(self, #"chase", &function_43c21e81, &function_3715dbff, &function_dca46c2e, &awareness::function_5c40e824, undefined);
    awareness::register_state(self, #"hash_6cac9101afa678f2", &function_3a6dfa8b, &function_6e7d7d1, &function_7ea826b6, &awareness::function_5c40e824, undefined);
    awareness::register_state(self, #"scripted", &function_235c2ec8, undefined, &function_39e16337);
    awareness::set_state(self, #"wander");
    self callback::function_d8abfc3d(#"hash_1c5ac76933317a1d", &awareness::pause, undefined, array(self));
    self callback::function_d8abfc3d(#"hash_6ce1d15fa3e62552", &function_a84a928b);
    self callback::on_ai_damage(&function_d3f3bff7);
    self thread awareness::function_fa6e010d();
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 1, eflags: 0x2 linked
// Checksum 0x9933a6b, Offset: 0x10a0
// Size: 0x84
function function_65f28890(entity) {
    entity setblackboardattribute("_locomotion_speed", "locomotion_speed_walk");
    entity.fovcosine = 0.5;
    entity.maxsightdistsqrd = sqr(1000);
    entity.var_1267fdea = 0;
    awareness::function_9c9d96b5(entity);
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 1, eflags: 0x0
// Checksum 0x6903cb79, Offset: 0x1130
// Size: 0x5c
function function_64072d21(entity) {
    entity.fovcosine = 0;
    entity.maxsightdistsqrd = sqr(1800);
    entity.var_1267fdea = 0;
    awareness::function_b41f0471(entity);
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 1, eflags: 0x4
// Checksum 0x69aa15cb, Offset: 0x1198
// Size: 0x2c
function private function_32309e80(entity) {
    return isdefined(entity.var_a8e56aa3) && entity.var_a8e56aa3 > gettime();
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 1, eflags: 0x6 linked
// Checksum 0x69ed0d11, Offset: 0x11d0
// Size: 0x2c
function private function_cdbe8d0a(entity) {
    return isdefined(entity.var_e05f2c0a) && entity.var_e05f2c0a > gettime();
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 1, eflags: 0x2 linked
// Checksum 0x8487f745, Offset: 0x1208
// Size: 0xc4
function function_43c21e81(entity) {
    entity.fovcosine = 0;
    entity.maxsightdistsqrd = sqr(3000);
    entity.var_1267fdea = 0;
    entity setblackboardattribute("_locomotion_speed", "locomotion_speed_run");
    entity.maxsightdistsqrd = sqr(3000);
    entity.var_972b23bb = 1;
    zm_ai_utility::function_4d22f6d1(entity);
    awareness::function_978025e4(entity);
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 3, eflags: 0x6 linked
// Checksum 0x5079b884, Offset: 0x12d8
// Size: 0xc0
function private function_f7c8ccf5(entity, point1, point2) {
    if (isdefined(entity.var_a8eff0f2) && gettime() - entity.var_a8eff0f2 < int(1 * 1000)) {
        return false;
    }
    trace = physicstraceex(point1, point2, entity getmins(), entity getmaxs(), entity);
    return trace[#"fraction"] >= 1;
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 1, eflags: 0x2 linked
// Checksum 0x7596b94, Offset: 0x13a0
// Size: 0x2ac
function function_3715dbff(entity) {
    if (is_true(entity.var_1fa24724) && isdefined(entity.enemy)) {
        zm_behavior::function_483766be(entity);
        var_db31ebd5 = !entity haspath() && abs(entity.enemy.origin[2] - self.origin[2]) > 120;
        if (var_db31ebd5) {
            return;
        }
    }
    target = isdefined(entity.favoriteenemy) ? entity.favoriteenemy : entity.attackable;
    if (isdefined(target) && entity.var_9329a57c < gettime()) {
        if (namespace_3444cb7b::mechzisinsafezone(entity) && entity cansee(target)) {
            /#
                distsqr = distancesquared(entity.origin, entity.favoriteenemy.origin);
                record3dtext("<unknown string>" + 225 + "<unknown string>" + 600 + "<unknown string>" + sqrt(distsqr), entity.origin, (0, 1, 0));
                recordline(entity.origin, target.origin, (0, 1, 0));
            #/
            if (!namespace_3444cb7b::mechzshouldshootgrenade(entity)) {
                if (function_cdbe8d0a(entity)) {
                    awareness::set_state(entity, #"hash_6cac9101afa678f2");
                    return;
                }
                var_274bac27 = 90000;
                if (distancesquared(entity.origin, target.origin) > var_274bac27) {
                    awareness::function_39da6c3c(entity);
                }
            }
            return;
        }
    }
    awareness::function_39da6c3c(entity);
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 1, eflags: 0x2 linked
// Checksum 0xe20f9f68, Offset: 0x1658
// Size: 0x9c
function function_dca46c2e(entity) {
    entity.maxsightdistsqrd = sqr(900);
    entity.var_972b23bb = undefined;
    if (isdefined(entity.cluster) && entity.cluster.status === 0) {
        entity callback::callback(#"hash_10ab46b52df7967a");
        return;
    }
    awareness::function_b9f81e8b(entity);
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 1, eflags: 0x2 linked
// Checksum 0x381d4352, Offset: 0x1700
// Size: 0x5dc
function function_3a6dfa8b(entity) {
    function_43c21e81(entity);
    entity setblackboardattribute("_locomotion_speed", "locomotion_speed_run");
    enemy = entity.favoriteenemy;
    assert(isdefined(enemy));
    var_1f1d655 = vectortoangles(entity.origin - entity.favoriteenemy.origin)[1];
    var_8daf3ac3 = 300;
    var_5c85bc30 = [];
    angle_offsets = [30, -30];
    foreach (angle in angle_offsets) {
        var_43ed722a = absangleclamp360(var_1f1d655 + angle);
        target_vec = anglestoforward((0, var_43ed722a, 0));
        target_pos = enemy.origin + target_vec * var_8daf3ac3;
        var_c38ec8b1 = getclosestpointonnavmesh(target_pos, 64, entity getpathfindingradius());
        if (isdefined(var_c38ec8b1)) {
            var_5c85bc30[var_5c85bc30.size] = var_c38ec8b1;
        }
    }
    var_e3a26bf0 = undefined;
    var_9da770d9 = 0;
    var_e1aa7e8 = undefined;
    var_6481e3f2 = entity getangles()[1];
    forward_vec = anglestoforward((0, var_6481e3f2, 0));
    foreach (pos in var_5c85bc30) {
        var_2872f5ac = pos - entity.origin;
        dot = vectordot(var_2872f5ac, forward_vec);
        if (dot > 0) {
            var_e3a26bf0 = pos;
        }
        if (!isdefined(var_e1aa7e8)) {
            var_e1aa7e8 = dot;
        }
        if (math::sign(dot) != math::sign(var_e1aa7e8)) {
            var_9da770d9 = 1;
        }
        var_e1aa7e8 = dot;
        /#
            recordsphere(pos, 10, (1, 0, 0), "<unknown string>");
            record3dtext("<unknown string>" + dot, pos + (0, 0, -10), (1, 0, 0));
        #/
    }
    if (var_9da770d9) {
    } else if (isplayer(enemy)) {
        player_yaw = enemy getplayerangles()[1];
        var_ae507841 = anglestoforward((0, player_yaw, 0));
        var_ba9c64fa = enemy.origin + var_ae507841 * var_8daf3ac3;
        /#
            recordsphere(var_ba9c64fa, 10, (0, 1, 0), "<unknown string>");
        #/
        var_3393a039 = 2147483647;
        foreach (pos in var_5c85bc30) {
            dist_sqr = distancesquared(var_ba9c64fa, pos);
            if (dist_sqr < var_3393a039) {
                var_3393a039 = dist_sqr;
                var_e3a26bf0 = pos;
            }
        }
    } else if (var_5c85bc30.size > 0) {
        var_e3a26bf0 = var_5c85bc30[randomint(var_5c85bc30.size)];
    }
    if (isdefined(var_e3a26bf0)) {
        entity setgoal(var_e3a26bf0);
        /#
            recordsphere(var_e3a26bf0, 10, (0, 0, 1), "<unknown string>");
        #/
    }
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 1, eflags: 0x2 linked
// Checksum 0xbac648db, Offset: 0x1ce8
// Size: 0x14c
function function_6e7d7d1(entity) {
    /#
        record3dtext("<unknown string>", entity.origin + (0, 20, 0), (0, 0, 1));
    #/
    if (is_true(entity.var_1fa24724)) {
        awareness::set_state(entity, #"chase");
        return;
    }
    if (isdefined(entity.favoriteenemy)) {
        goalinfo = entity function_4794d6a3();
        var_127a38a7 = distancesquared(goalinfo.goalpos, entity.origin);
        if (!namespace_3444cb7b::mechzisinsafezone(entity) || goalinfo.isatgoal || var_127a38a7 < sqr(64)) {
            awareness::set_state(entity, #"chase");
        }
    }
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 1, eflags: 0x2 linked
// Checksum 0x40a601eb, Offset: 0x1e40
// Size: 0x24
function function_7ea826b6(entity) {
    function_dca46c2e(entity);
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 1, eflags: 0x2 linked
// Checksum 0xe750bb10, Offset: 0x1e70
// Size: 0x4c
function function_235c2ec8(entity) {
    entity.favoriteenemy = undefined;
    entity clearpath();
    entity setgoal(entity.origin, 1);
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 1, eflags: 0x2 linked
// Checksum 0x93334c2b, Offset: 0x1ec8
// Size: 0x4c
function function_39e16337(entity) {
    entity.favoriteenemy = undefined;
    entity clearpath();
    entity setgoal(entity.origin, 1);
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 1, eflags: 0x2 linked
// Checksum 0x2ff67db0, Offset: 0x1f20
// Size: 0x252
function function_d3f3bff7(params) {
    if (isdefined(params.einflictor) && !isdefined(self.attackable) && isdefined(params.einflictor.var_b79a8ac7) && isarray(params.einflictor.var_b79a8ac7.slots) && isarray(level.var_7fc48a1a) && isinarray(level.var_7fc48a1a, params.weapon)) {
        if (params.einflictor namespace_85745671::get_attackable_slot(self)) {
            self.attackable = params.einflictor;
        }
    }
    if (!isdefined(self.favoriteenemy) && isdefined(params.einflictor) && !isdefined(self.var_4b559171)) {
        awareness::function_c241ef9a(self, params.einflictor, 8);
        pointonnavmesh = getclosestpointonnavmesh(params.einflictor.origin, 256, self getpathfindingradius() * 1.2);
        var_f2f7ce25 = getclosestpointonnavmesh(self.origin, 256, self getpathfindingradius() * 1.2);
        if (!isdefined(pointonnavmesh) || !isdefined(var_f2f7ce25)) {
            return;
        }
        to_origin = self.origin - pointonnavmesh;
        goalpos = checknavmeshdirection(pointonnavmesh, to_origin, 96, self getpathfindingradius() * 1.2);
        self.var_4b559171 = goalpos;
    }
}

// Namespace namespace_394b7174/namespace_394b7174
// Params 1, eflags: 0x2 linked
// Checksum 0x43140705, Offset: 0x2180
// Size: 0x100
function function_a84a928b(*params) {
    awareness::resume(self);
    nearby_zombies = getentitiesinradius(self.origin, self getpathfindingradius() * 3, 15);
    foreach (zombie in nearby_zombies) {
        if (zombie.archetype == #"zombie") {
            zombie zombie_utility::setup_zombie_knockdown(self);
        }
    }
}

