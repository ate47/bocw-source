// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\bots\bot.gsc;

#namespace namespace_87549638;

// Namespace namespace_87549638/namespace_87549638
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0xe8
// Size: 0x4
function preinit() {
    
}

// Namespace namespace_87549638/namespace_87549638
// Params 0, eflags: 0x2 linked
// Checksum 0x45a197ac, Offset: 0xf8
// Size: 0x418
function think() {
    profileNamedStart(#"");
    if (self isinexecutionvictim() || self isinexecutionattack()) {
        profileNamedStop();
        return;
    }
    if (isdefined(self.bot.var_5efe88e4)) {
        self botsetlookangles(self.bot.var_5efe88e4);
        self.bot.var_9931c7dc = 0;
    } else if (self isplayinganimscripted() || self arecontrolsfrozen() || self.bot.flashed) {
        self.bot.var_9931c7dc = 0;
    } else if (self function_37d408b6()) {
        self function_23401de9();
        self.bot.var_9931c7dc = 0;
    } else if (isdefined(self.bot.var_87751145)) {
        self.bot.var_9931c7dc = self function_2f110827();
    } else if (self.bot.enemyvisible) {
        entity = self.enemy;
        if (isplayer(self.enemy)) {
            if (self.enemy isinvehicle() && !self.enemy isremotecontrolling()) {
                entity = self.enemy getvehicleoccupied();
            } else if (isdefined(self.enemy.prop)) {
                entity = self.enemy.prop;
            }
        }
        self.bot.var_9931c7dc = self function_58d48e86(entity, self.bot.enemydist, self.bot.var_2d563ebf);
    } else if (self.bot.var_e8c84f98 && self function_204b5b9c() && self function_8174b063(self.enemylastseenpos)) {
        self.bot.var_9931c7dc = self function_e958519b();
    } else if (self function_b21ea513()) {
        self.bot.var_9931c7dc = 0;
    } else if (isdefined(self.bot.var_941ba251) && self function_8174b063(self.bot.var_941ba251)) {
        self function_19ef91d7();
        self.bot.var_9931c7dc = 1;
    } else if (self haspath()) {
        self function_311aed8b();
        self.bot.var_9931c7dc = 0;
    } else if (isdefined(self.bot.traversal)) {
        self function_23401de9();
        self.bot.var_9931c7dc = 0;
    } else {
        self function_eb94f73e();
        self.bot.var_9931c7dc = 0;
    }
    profileNamedStop();
}

// Namespace namespace_87549638/namespace_87549638
// Params 1, eflags: 0x6 linked
// Checksum 0x7912e3fb, Offset: 0x518
// Size: 0x74
function private function_8174b063(aimpoint) {
    profileNamedStart(#"");
    eye = self.origin + (0, 0, self getplayerviewheight());
    profileNamedStop();
    return bullettracepassed(eye, aimpoint, 0, self, self.enemy, 1, 1, 1);
}

// Namespace namespace_87549638/namespace_87549638
// Params 1, eflags: 0x6 linked
// Checksum 0xde8e67f9, Offset: 0x598
// Size: 0x72
function private function_37d408b6(traversal) {
    if (!isdefined(traversal)) {
        return false;
    }
    return traversal.type == #"ladder" || traversal.type == #"jump" || traversal.deltaz >= 50;
}

// Namespace namespace_87549638/namespace_87549638
// Params 2, eflags: 0x6 linked
// Checksum 0x5385c93a, Offset: 0x618
// Size: 0xac
function private function_9b25bbe5(traversal, aimpoint) {
    if (!self function_37d408b6(traversal)) {
        return false;
    }
    eye = self.origin + (0, 0, self getplayerviewheight());
    dir = vectornormalize(eye - aimpoint);
    return vectordot(traversal.normal, dir) < 0.5;
}

// Namespace namespace_87549638/namespace_87549638
// Params 0, eflags: 0x6 linked
// Checksum 0xef63add4, Offset: 0x6d0
// Size: 0xa8
function private function_204b5b9c() {
    point = self.enemylastseenpos;
    if (distance2dsquared(self.origin, point) <= 9216) {
        return false;
    }
    normal = self.bot.var_a0b6205e;
    if (isdefined(normal)) {
        dir = self.origin - self.enemylastseenpos;
        return (vectordot(dir, normal) > 0);
    }
    return true;
}

// Namespace namespace_87549638/namespace_87549638
// Params 0, eflags: 0x6 linked
// Checksum 0xa30a78c7, Offset: 0x780
// Size: 0x210
function private function_b21ea513() {
    if (self.bot.var_e8c84f98 || self.ignoreall) {
        return false;
    }
    enemies = self getenemiesinradius(self.origin, 1000);
    var_8a75d6bc = undefined;
    var_6e4e5c17 = undefined;
    foreach (enemy in enemies) {
        if (is_true(enemy.ignoreme)) {
            continue;
        }
        var_f1e73cd = self lastknowntime(enemy);
        enemypos = self lastknownpos(enemy);
        if (!isdefined(var_f1e73cd) || !isdefined(enemypos) || var_f1e73cd + 3000 < gettime()) {
            continue;
        }
        if (!isdefined(var_6e4e5c17) || var_6e4e5c17 < var_f1e73cd) {
            var_6e4e5c17 = var_f1e73cd;
            var_8a75d6bc = enemypos;
        }
    }
    if (!isdefined(var_8a75d6bc)) {
        return false;
    }
    var_8a75d6bc += (0, 0, self getplayerviewheight());
    self function_b5460039(var_8a75d6bc, #"hash_4d7ab907ebdddd3c", (1, 0.5, 0));
    return true;
}

// Namespace namespace_87549638/namespace_87549638
// Params 0, eflags: 0x6 linked
// Checksum 0x28ee521f, Offset: 0x998
// Size: 0xaa
function private function_2f110827() {
    point = self.bot.var_87751145;
    if (self function_9b25bbe5(self.bot.traversal, point)) {
        self function_23401de9();
        return 0;
    }
    self function_b5460039(point, #"point", (0, 1, 1));
    return self function_8174b063(point);
}

// Namespace namespace_87549638/namespace_87549638
// Params 0, eflags: 0x6 linked
// Checksum 0xdcd1eb31, Offset: 0xa50
// Size: 0x88
function private function_e958519b() {
    point = self.enemylastseenpos;
    if (self function_9b25bbe5(self.bot.traversal, point)) {
        self function_23401de9();
        return false;
    }
    self function_b5460039(point, #"hash_517fc0a2cf80dbb8", (1, 0, 1));
    return true;
}

// Namespace namespace_87549638/namespace_87549638
// Params 0, eflags: 0x6 linked
// Checksum 0xe9923e89, Offset: 0xae0
// Size: 0x94
function private function_19ef91d7() {
    point = self.bot.var_941ba251;
    if (self function_9b25bbe5(self.bot.traversal, point)) {
        self function_23401de9();
        return;
    }
    self function_b5460039(point, #"threat", (1, 0.5, 0));
}

// Namespace namespace_87549638/namespace_87549638
// Params 3, eflags: 0x6 linked
// Checksum 0xb310440d, Offset: 0xb80
// Size: 0x240
function private function_58d48e86(ent, dist, tag) {
    if (self function_9b25bbe5(self.bot.traversal, ent.origin)) {
        self function_23401de9();
        return false;
    }
    if (isdefined(self.scriptenemy) && self.scriptenemy == ent) {
        tag = self.scriptenemytag;
    } else if (isdefined(ent.shootattag)) {
        tag = ent.shootattag;
    }
    if (isdefined(tag)) {
        tagorigin = ent gettagorigin(tag);
        if (isdefined(tagorigin)) {
            self function_b5460039(tagorigin, tag, (1, 0, 1));
            return true;
        }
    } else if (isvehicle(ent) && target_istarget(ent)) {
        tagorigin = target_getorigin(ent);
        self function_b5460039(tagorigin, #"hash_7b9926f357c45aa8", (1, 0, 1));
        return true;
    } else {
        point = self function_466e841e(ent, dist);
        if (isdefined(point)) {
            self function_b5460039(point, #"entity", (1, 0, 1));
            return true;
        }
    }
    centroid = ent getcentroid();
    self function_b5460039(centroid, #"centroid", (1, 0, 1));
    return true;
}

// Namespace namespace_87549638/namespace_87549638
// Params 2, eflags: 0x6 linked
// Checksum 0xf91a40a3, Offset: 0xdc8
// Size: 0xe4
function private function_466e841e(ent, dist) {
    profileNamedStart(#"");
    defaultorigin = ent gettagorigin("j_spineupper");
    if (!isdefined(defaultorigin)) {
        profileNamedStop();
        return undefined;
    }
    if (dist >= 250) {
        profileNamedStop();
        return defaultorigin;
    }
    var_d7b829fb = ent gettagorigin("j_neck");
    if (!isdefined(var_d7b829fb)) {
        profileNamedStop();
        return defaultorigin;
    }
    t = max(dist / 250, 0.25);
    profileNamedStop();
    return vectorlerp(var_d7b829fb, defaultorigin, t);
}

// Namespace namespace_87549638/namespace_87549638
// Params 0, eflags: 0x6 linked
// Checksum 0xf8ac288, Offset: 0xeb8
// Size: 0xf4
function private function_311aed8b() {
    var_8be65bb9 = self function_f04bd922();
    if (isdefined(var_8be65bb9)) {
        if (self function_35170b35(var_8be65bb9.var_b8c123c0, 128, #"hash_c5ef7c07caa7856", (0, 1, 1))) {
            return;
        }
        if (self function_35170b35(var_8be65bb9.var_bef48941, 64, #"hash_77da0a5a26fe7baf", (0, 0, 1))) {
            return;
        }
        if (self function_35170b35(var_8be65bb9.var_2cfdc66d, 32, #"hash_4c52ca575ab8182b", (1, 0, 1))) {
            return;
        }
    }
    self function_eb94f73e();
}

// Namespace namespace_87549638/namespace_87549638
// Params 4, eflags: 0x6 linked
// Checksum 0x945fb075, Offset: 0xfb8
// Size: 0x130
function private function_35170b35(var_104d463, mindist, var_e125ba43, debugcolor) {
    if (!isdefined(var_104d463) || distance2dsquared(self.origin, var_104d463) < mindist * mindist) {
        return false;
    }
    if (self isplayerswimming()) {
        eye = self.origin + (0, 0, self getplayerviewheight());
        var_42e28bb1 = (var_104d463[0], var_104d463[1], eye[2]);
        self function_b5460039(var_42e28bb1, var_e125ba43, debugcolor);
    } else {
        aimoffset = (0, 0, self getplayerviewheight());
        self function_b5460039(var_104d463 + aimoffset, var_e125ba43, debugcolor);
    }
    return true;
}

// Namespace namespace_87549638/namespace_87549638
// Params 0, eflags: 0x6 linked
// Checksum 0x61a47769, Offset: 0x10f0
// Size: 0xfc
function private function_eb94f73e() {
    movedir = self bot::move_dir();
    if (lengthsquared(movedir) > 0.0001) {
        eye = self.origin + (0, 0, self getplayerviewheight());
        var_d9100e0 = eye + vectornormalize(movedir) * 128;
        self function_b5460039(var_d9100e0, #"forward", (0, 1, 1));
        return;
    }
    self botsetlookangles(self.angles);
}

// Namespace namespace_87549638/namespace_87549638
// Params 0, eflags: 0x6 linked
// Checksum 0xe9bc5c09, Offset: 0x11f8
// Size: 0xfc
function private function_23401de9() {
    traversal = self.bot.traversal;
    enddist = vectordot(self.origin - traversal.var_15dca465, traversal.normal);
    if (enddist > 15) {
        endpoint = traversal.end_position + (0, 0, self getplayerviewheight());
        self function_b5460039(endpoint, #"hash_7d35f3d861b9ec10", (1, 1, 0));
        return;
    }
    dir = (0, 0, 0) - traversal.normal;
    self botsetlookdir(dir);
}

// Namespace namespace_87549638/namespace_87549638
// Params 3, eflags: 0x6 linked
// Checksum 0xbd7fdbdc, Offset: 0x1300
// Size: 0x2c4
function private function_b5460039(point, var_e125ba43, debugcolor) {
    var_a3375299 = undefined;
    if (isdefined(self.bot.var_32d8dabe)) {
        var_a3375299 = point;
        point += rotatepoint(self.bot.var_32d8dabe, self.angles + (0, 180, 0));
    }
    /#
        if (self bot::should_record("<unknown string>")) {
            function_af72dbc5(point, (-1.5, -1.5, -1.5), (1.5, 1.5, 1.5), self.angles[1], debugcolor, "<unknown string>", self);
            record3dtext(function_9e72a96(var_e125ba43), point + (0, 0, -0.75), (1, 1, 1), "<unknown string>", self, 0.5);
            if (isdefined(var_a3375299)) {
                function_af72dbc5(var_a3375299, (-1.5, -1.5, -1.5), (1.5, 1.5, 1.5), self.angles[1], (0.75, 0.75, 0.75), "<unknown string>", self);
                recordline(var_a3375299, point, (0.75, 0.75, 0.75), "<unknown string>", self);
                if (isdefined(self.bot.var_9e5aaf8d)) {
                    record3dtext(self.bot.var_9e5aaf8d + "<unknown string>", var_a3375299, (1, 1, 0), "<unknown string>", self, 0.5);
                }
            }
        }
    #/
    if (isdefined(self.bot.var_f50fa466)) {
        var_deb75a87 = self botgetprojectileaimangles(self.bot.var_f50fa466, point);
        if (isdefined(var_deb75a87)) {
            self botsetlookangles(var_deb75a87.var_478aeacd);
        } else {
            self botsetlookcurrent();
        }
        return;
    }
    self botsetlookpoint(point);
}

