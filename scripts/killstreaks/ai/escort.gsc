// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\ai\tracking.gsc;
#using scripts\killstreaks\ai\target.gsc;
#using scripts\killstreaks\ai\state.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace ai_escort;

// Namespace ai_escort/escort
// Params 0, eflags: 0x0
// Checksum 0xf5980119, Offset: 0xb8
// Size: 0x74
function init() {
    ai_state::function_e9b061a8(1, &function_ae92f67d, &update_escort, undefined, &update_enemy, &function_4af1ff64, &function_a78474f2, &update_debug);
}

// Namespace ai_escort/escort
// Params 5, eflags: 0x4
// Checksum 0x9edf4b95, Offset: 0x138
// Size: 0xc2
function private init_escort(var_5a529222, var_edc20efd, var_d73e0c6e, var_544ae93d, var_db083d2c) {
    assert(isdefined(self.ai));
    self.ai.escort = {#state:2, #var_5a529222:var_5a529222, #var_edc20efd:var_edc20efd, #var_d73e0c6e:var_d73e0c6e, #var_544ae93d:var_544ae93d, #var_db083d2c:var_db083d2c};
}

// Namespace ai_escort/escort
// Params 1, eflags: 0x0
// Checksum 0xf64c8ad6, Offset: 0x208
// Size: 0x74
function function_60415868(bundle) {
    self.ai.bundle = bundle;
    init_escort(isdefined(bundle.var_d6c2930c) ? bundle.var_d6c2930c : 100, bundle.var_c45a5808, bundle.var_ee9fdcf3, bundle.var_946f502c, bundle.var_52c674ec);
}

// Namespace ai_escort/escort
// Params 0, eflags: 0x0
// Checksum 0xdef039f9, Offset: 0x288
// Size: 0x22
function function_ae92f67d() {
    self.goalradius = self.ai.escort.var_5a529222;
}

// Namespace ai_escort/escort
// Params 0, eflags: 0x0
// Checksum 0x150db524, Offset: 0x2b8
// Size: 0x4e
function function_4af1ff64() {
    if (self function_7e09d4ab()) {
        return self.ai.escort.var_edc20efd;
    }
    return self.ai.escort.var_d73e0c6e;
}

// Namespace ai_escort/escort
// Params 0, eflags: 0x0
// Checksum 0x2346bdab, Offset: 0x310
// Size: 0xa
function function_a78474f2() {
    return self.origin;
}

// Namespace ai_escort/escort
// Params 0, eflags: 0x0
// Checksum 0x63015a1f, Offset: 0x328
// Size: 0x2c
function function_7e09d4ab() {
    if (self.ai.escort.state == 1) {
        return true;
    }
    return false;
}

// Namespace ai_escort/escort
// Params 0, eflags: 0x0
// Checksum 0x740f02cc, Offset: 0x360
// Size: 0x4e
function function_c6c4dd36() {
    if (self.ai.escort.state == 1 || self.ai.escort.state == 2) {
        return true;
    }
    return false;
}

// Namespace ai_escort/escort
// Params 3, eflags: 0x4
// Checksum 0xdbcc8be4, Offset: 0x3b8
// Size: 0x132
function private function_2be96ed8(current_point, var_673e28d2, points) {
    new_points = [];
    var_a85cb855 = 10000;
    foreach (point in points) {
        dist = distancesquared(current_point, point.origin);
        if (dist < var_a85cb855) {
            continue;
        }
        dist = distancesquared(var_673e28d2, point.origin);
        if (dist < var_a85cb855) {
            continue;
        }
        new_points[new_points.size] = point;
    }
    if (new_points.size == 0) {
        return points;
    }
    return new_points;
}

// Namespace ai_escort/escort
// Params 2, eflags: 0x0
// Checksum 0x45b18e1e, Offset: 0x4f8
// Size: 0x28
function function_cd106dcf(left, right) {
    return left.dot > right.dot;
}

// Namespace ai_escort/escort
// Params 1, eflags: 0x4
// Checksum 0xe6889df3, Offset: 0x528
// Size: 0xd2
function private function_2d44c54f(points) {
    if (points.size < 5) {
        new_points = arraycopy(points);
    } else {
        new_points = [];
        for (i = 0; i < points.size / 2 + 1; i++) {
            if (!isdefined(new_points)) {
                new_points = [];
            } else if (!isarray(new_points)) {
                new_points = array(new_points);
            }
            new_points[new_points.size] = points[i];
        }
    }
    return array::randomize(new_points);
}

// Namespace ai_escort/escort
// Params 0, eflags: 0x0
// Checksum 0x480711de, Offset: 0x608
// Size: 0x4a
function function_14457965() {
    if (!isdefined(self.script_owner) || !isalive(self.script_owner)) {
        return self.origin;
    }
    return self.script_owner.origin;
}

// Namespace ai_escort/escort
// Params 0, eflags: 0x0
// Checksum 0x80acff5, Offset: 0x660
// Size: 0x192
function get_point_of_interest() {
    targets = self ai_target::get_targets();
    ai_target = arraygetclosest(self.origin, targets);
    var_56bd1bef = function_14457965();
    objective_target = gameobjects::function_6cdadc59(var_56bd1bef);
    if (!isdefined(ai_target) && !isdefined(objective_target)) {
        return level.mapcenter;
    } else if (!isdefined(objective_target)) {
        return ai_target.origin;
    } else if (!isdefined(ai_target)) {
        return objective_target.origin;
    }
    ai_distance = distance(ai_target.origin, var_56bd1bef);
    var_3ac8b299 = distance(objective_target.origin, var_56bd1bef);
    if (ai_distance + var_3ac8b299 == 0) {
        return level.mapcenter;
    }
    coef = ai_distance / (ai_distance + var_3ac8b299);
    origin = vectorlerp(ai_target.origin, objective_target.origin, coef);
    return origin;
}

// Namespace ai_escort/escort
// Params 1, eflags: 0x0
// Checksum 0xbda03dd1, Offset: 0x800
// Size: 0xa6
function function_d15dd929(origin) {
    result = function_9cc082d2(origin + (0, 0, 100), 200);
    if (isdefined(result) && isdefined(result[#"materialflags"]) && result[#"materialflags"] & 2) {
        return false;
    }
    if (!ispointonnavmesh(origin, 16, 1)) {
        return false;
    }
    return true;
}

// Namespace ai_escort/escort
// Params 1, eflags: 0x0
// Checksum 0x2e216d74, Offset: 0x8b0
// Size: 0x144
function function_cb4925e3(tacpoints) {
    validpoints = [];
    foreach (tacpoint in tacpoints) {
        if (function_d15dd929(tacpoint.origin)) {
            array::add(validpoints, tacpoint);
            continue;
        }
        /#
            record3dtext("<unknown string>", tacpoint.origin + (0, 0, 40), (1, 1, 1), "<unknown string>");
        #/
        /#
            recordline(tacpoint.origin + (0, 0, 40), tacpoint.origin, (1, 1, 1), "<unknown string>");
        #/
    }
    return validpoints;
}

// Namespace ai_escort/escort
// Params 0, eflags: 0x0
// Checksum 0x75d4c09d, Offset: 0xa00
// Size: 0x636
function function_b6f15bda() {
    if (!function_c6c4dd36()) {
        return;
    }
    var_56bd1bef = self function_14457965();
    if (!isdefined(var_56bd1bef)) {
        return;
    }
    if (!ispointonnavmesh(var_56bd1bef, self)) {
        return;
    }
    if (is_true(self.isarriving)) {
        return;
    }
    if (isactor(self) && (self asmistransdecrunning() || self asmistransitionrunning())) {
        return;
    }
    velocity = self.script_owner tracking::get_velocity();
    var_9d59ceab = self.script_owner getvelocity();
    cylinder = ai::t_cylinder(var_56bd1bef, self.ai.escort.var_5a529222, 30);
    tacpoints = undefined;
    if (lengthsquared(var_9d59ceab) > 20 && isdefined(velocity) && !is_true(self.ai.var_82cafa78)) {
        var_84e7232 = var_56bd1bef + vectorscale(vectornormalize(velocity), 200);
        var_84e7232 = getclosestpointonnavmesh(var_84e7232, 200, 20);
        if (isdefined(var_84e7232) && isdefined(self.ai.escort.var_db083d2c)) {
            var_84e7232 = checknavmeshdirection(var_56bd1bef, var_84e7232 - var_56bd1bef, 100, 0);
            if (isdefined(var_84e7232)) {
                /#
                    recordsphere(var_84e7232, 8, (0, 1, 1), "<unknown string>");
                #/
                var_b6a10143 = ai::t_cylinder(var_56bd1bef, 80, 30);
                assert(isdefined(var_b6a10143.origin));
                tacpoints = tacticalquery(self.ai.escort.var_db083d2c, cylinder, self, var_b6a10143, var_84e7232, var_56bd1bef);
            }
        }
    } else {
        var_84e7232 = var_56bd1bef + vectorscale(anglestoforward((0, self.script_owner.angles[1], 0)), 300);
        var_84e7232 = getclosestpointonnavmesh(var_84e7232, 200, 20);
        if (isdefined(var_84e7232) && isdefined(self.ai.escort.var_db083d2c)) {
            var_84e7232 = checknavmeshdirection(var_56bd1bef, var_84e7232 - var_56bd1bef, 300, 0);
            if (isdefined(var_84e7232)) {
                /#
                    recordsphere(var_84e7232, 8, (1, 0.5, 0), "<unknown string>");
                #/
                cylinder = ai::t_cylinder(var_84e7232, self.ai.escort.var_5a529222, 30);
                var_8f3583cf = ai::t_cylinder(self.origin, 200, 30);
                assert(isdefined(var_8f3583cf.origin));
                tacpoints = tacticalquery(self.ai.escort.var_db083d2c, cylinder, self, var_8f3583cf, var_84e7232, var_56bd1bef);
            } else {
                /#
                    recordsphere(var_84e7232, 8, (1, 0, 0), "<unknown string>");
                #/
            }
        }
    }
    if (!isdefined(tacpoints) || tacpoints.size == 0) {
        tacpoints = tacticalquery(self.ai.escort.var_544ae93d, cylinder, self);
    }
    if (isdefined(tacpoints) && tacpoints.size != 0) {
        tacpoints = function_cb4925e3(tacpoints);
        if (isdefined(tacpoints) && tacpoints.size != 0) {
            self.var_36299b51 = tacpoints;
            newpos = tacpoints[0].origin;
            if (isdefined(newpos)) {
                self.ai.escort.var_8d8186ad = var_56bd1bef;
                self.ai.escort.var_e48a6ca = gettime();
                self setgoal(newpos);
                self function_a57c34b7(newpos);
                if (is_true(self.ai.var_82cafa78)) {
                    self.ai.var_82cafa78 = 0;
                }
            }
        }
    }
}

// Namespace ai_escort/escort
// Params 0, eflags: 0x0
// Checksum 0x34eb0df3, Offset: 0x1040
// Size: 0x4c
function function_81832658() {
    goalinfo = self function_4794d6a3();
    if (!isdefined(goalinfo.var_9e404264) || goalinfo.var_9e404264) {
        return true;
    }
    return false;
}

// Namespace ai_escort/escort
// Params 0, eflags: 0x0
// Checksum 0xed1a3f96, Offset: 0x1098
// Size: 0x2fa
function function_11d6df2c() {
    var_56bd1bef = self function_14457965();
    goalinfo = self function_4794d6a3();
    if (is_true(self.ai.var_b1248bd1)) {
        self.ai.var_b1248bd1 = 0;
        return true;
    }
    if (isdefined(self.ai.escort.var_8d8186ad)) {
        if (distancesquared(self.ai.escort.var_8d8186ad, var_56bd1bef) >= sqr(self.ai.escort.var_5a529222)) {
            return true;
        }
    } else if (distancesquared(self.origin, var_56bd1bef) >= sqr(self.ai.escort.var_5a529222)) {
        return true;
    }
    if (isdefined(var_56bd1bef) && isdefined(self.script_owner) && isdefined(self.script_owner.angles)) {
        origin = self.origin;
        if (self haspath() && isdefined(self.pathgoalpos)) {
            origin = self.pathgoalpos;
        }
        if (!util::within_fov(var_56bd1bef, self.script_owner.angles, origin, cos(30))) {
            return true;
        }
    }
    if (isdefined(self.ai.escort.var_8d8186ad) && isdefined(self.ai.escort.var_e48a6ca) && !self haspath()) {
        if (isdefined(var_56bd1bef) && gettime() > self.ai.escort.var_e48a6ca + randomintrange(3000, 5000)) {
            if (distancesquared(self.ai.escort.var_8d8186ad, var_56bd1bef) <= sqr(350)) {
                self.ai.var_82cafa78 = 1;
                return true;
            }
        }
    }
    return false;
}

// Namespace ai_escort/escort
// Params 0, eflags: 0x0
// Checksum 0x3d48d997, Offset: 0x13a0
// Size: 0x2c
function update_escort() {
    if (function_11d6df2c()) {
        self function_b6f15bda();
    }
}

// Namespace ai_escort/escort
// Params 0, eflags: 0x0
// Checksum 0x37cc7826, Offset: 0x13d8
// Size: 0x7e
function update_enemy() {
    if (is_true(self.ai.hasseenfavoriteenemy)) {
        self.ai.escort.state = 0;
        return;
    }
    if (self.ai.escort.state == 0) {
        self.ai.escort.state = 2;
    }
}

// Namespace ai_escort/escort
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x1460
// Size: 0x4
function update_debug() {
    
}

