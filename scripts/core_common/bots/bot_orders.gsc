// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\bots\bot.gsc;

#namespace bot_orders;

// Namespace bot_orders/bot_orders
// Params 0, eflags: 0x2 linked
// Checksum 0xda3fc878, Offset: 0xe0
// Size: 0x304
function preinit() {
    level.var_774ed7e9 = [];
    foreach (team in level.teams) {
        level.var_774ed7e9[team] = [];
    }
    level.var_d3b9615b = function_b6e6a59b();
    level.var_4b98dc10 = [];
    level register_state(#"assault", &function_2fe359ab, &assault_start, &function_6a672c6d);
    level register_state(#"capture", &function_bcd00fa7, &capture_start, &function_423ecbc1);
    level register_state(#"defend", &function_1ba5e803, &defend_start, &function_72084729);
    level register_state(#"chase_enemy", &function_7c479af0, &function_6790cfd3, &function_63b3aa81);
    level register_state(#"hash_2fc0534d4a96a7ea", &function_199c516, &function_36d63786, &function_91d9d948);
    level register_state(#"camp", &function_c5686e54, &function_c35b807e, &function_17d77980);
    level register_state(#"patrol", &function_82c1a3e9, &patrol_start, &patrol_think);
    /#
        level thread function_7a7ab1a2();
    #/
}

// Namespace bot_orders/bot_orders
// Params 0, eflags: 0x2 linked
// Checksum 0xf77d409d, Offset: 0x3f0
// Size: 0x1c
function shutdown() {
    self clear();
}

// Namespace bot_orders/bot_orders
// Params 0, eflags: 0x2 linked
// Checksum 0x8a8040a, Offset: 0x418
// Size: 0x20e
function think() {
    profileNamedStart(#"");
    info = self function_4794d6a3();
    if (info.goalforced || self.ignoreall) {
        self clear();
        profileNamedStop();
        return;
    }
    bot = self.bot;
    if (isdefined(bot.objective) && !bot.objective.active) {
        self clear();
    }
    if (!isdefined(bot.objective)) {
        objective = self function_79241feb();
        if (isdefined(objective)) {
            self function_b35e00d9(objective);
        }
    }
    if (isdefined(bot.order)) {
        state = level.var_4b98dc10[bot.order];
        if (bot.order != bot.objective.var_a1980fcb && self function_4b2723cf(bot.objective.var_a1980fcb, bot.objective)) {
            state = level.var_4b98dc10[bot.order];
        }
        self [[ state.think ]](bot.objective);
    }
    /#
        if (self bot::should_record(#"hash_bb5c278818b000b")) {
            self function_26b3a2f();
            self function_d966fb1c();
        }
    #/
    profileNamedStop();
}

// Namespace bot_orders/bot_orders
// Params 0, eflags: 0x6 linked
// Checksum 0xb4d26942, Offset: 0x630
// Size: 0x1a2
function private function_79241feb() {
    var_271aef88 = level.var_774ed7e9[self.team];
    if (var_271aef88.size <= 0) {
        return 0;
    }
    totalweight = 0;
    weights = [];
    foreach (objective in var_271aef88) {
        weight = 1;
        if (isdefined(objective.weight)) {
            weight = self [[ objective.weight ]](objective);
        }
        totalweight += weight;
        weights[weights.size] = totalweight;
    }
    var_e8351662 = randomfloat(totalweight);
    objective = undefined;
    foreach (i, weight in weights) {
        if (var_e8351662 < weight) {
            return var_271aef88[i];
        }
    }
    return undefined;
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x5960e8ad, Offset: 0x7e0
// Size: 0x80
function private function_b35e00d9(objective) {
    if (!self function_4b2723cf(objective.var_a1980fcb, objective) && !self function_4b2723cf(objective.var_5e99151a, objective)) {
        return false;
    }
    self.bot.objective = objective;
    objective.count++;
    return true;
}

// Namespace bot_orders/bot_orders
// Params 2, eflags: 0x6 linked
// Checksum 0xc7401f81, Offset: 0x868
// Size: 0x96
function private function_4b2723cf(order, objective) {
    if (!isdefined(order)) {
        return false;
    }
    state = level.var_4b98dc10[order];
    if (!isdefined(state)) {
        return false;
    }
    if (!self [[ state.ready ]](objective) || !self [[ state.start ]](objective)) {
        return false;
    }
    self.bot.order = order;
    return true;
}

// Namespace bot_orders/bot_orders
// Params 4, eflags: 0x6 linked
// Checksum 0xb8533100, Offset: 0x908
// Size: 0x88
function private register_state(order, var_47dfc5f2, var_20ef4046, var_7b441679) {
    state = {#order:order, #ready:var_47dfc5f2, #start:var_20ef4046, #think:var_7b441679};
    level.var_4b98dc10[order] = state;
}

// Namespace bot_orders/bot_orders
// Params 0, eflags: 0x6 linked
// Checksum 0x510396c0, Offset: 0x998
// Size: 0xb4
function private clear() {
    if (isdefined(self.bot.objective)) {
        self.bot.objective.count--;
    }
    self.bot.objective = undefined;
    self.bot.order = undefined;
    self.bot.defendtime = undefined;
    self.bot.var_f0015c1 = undefined;
    self.bot.var_6b695775 = undefined;
    self.bot.var_3d1abfb9 = undefined;
    self.bot.var_941ba251 = undefined;
    self function_9392d2c9();
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0xf288011, Offset: 0xa58
// Size: 0x38
function private function_82c1a3e9(*objective) {
    players = function_f6f34851(self.team);
    return players.size > 0;
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x54df5853, Offset: 0xa98
// Size: 0x88
function private patrol_start(*objective) {
    id = self function_e559e4d5();
    if (!isdefined(id)) {
        return false;
    }
    route = self function_89751246(id);
    if (route.size <= 0) {
        return false;
    }
    self function_fd78dbc(route);
    return true;
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0xc4113dd0, Offset: 0xb28
// Size: 0x54
function private patrol_think(*objective) {
    self function_db3a19e8();
    if (!self function_28557cd1()) {
        self clear();
    }
}

// Namespace bot_orders/bot_orders
// Params 0, eflags: 0x6 linked
// Checksum 0x162a3415, Offset: 0xb88
// Size: 0x1be
function private function_e559e4d5() {
    players = function_f6f34851(self.team);
    if (players.size <= 0) {
        return undefined;
    }
    player = players[randomint(players.size)];
    tpoint = getclosesttacpoint(player.origin);
    if (!isdefined(tpoint)) {
        return undefined;
    }
    ids = [];
    info = function_b507a336(tpoint.region);
    if (info.tacpoints.size >= 10) {
        ids[ids.size] = info.id;
    }
    foreach (id in info.neighbors) {
        info = function_b507a336(id);
        if (info.tacpoints.size < 10) {
            continue;
        }
        ids[ids.size] = id;
    }
    if (ids.size <= 0) {
        return undefined;
    }
    return ids[randomint(ids.size)];
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x965cd5d8, Offset: 0xd50
// Size: 0x1a
function private function_7c479af0(*objective) {
    return self.bot.var_e8c84f98;
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0xb82d39bb, Offset: 0xd78
// Size: 0x88
function private function_6790cfd3(*objective) {
    bot = self.bot;
    if (!isdefined(bot.var_494658cd)) {
        return false;
    }
    route = self function_89751246(bot.var_494658cd.region);
    if (route.size <= 0) {
        return false;
    }
    self function_fd78dbc(route);
    return true;
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0xf7bcf7f2, Offset: 0xe08
// Size: 0x1b4
function private function_63b3aa81(*objective) {
    self function_db3a19e8();
    if (!self.bot.var_e8c84f98 && !self function_28557cd1()) {
        info = self function_4794d6a3();
        if (is_true(info.var_9e404264)) {
            self clear();
            return;
        }
    }
    bot = self.bot;
    if (self.bot.enemyvisible && isdefined(bot.var_494658cd) && isdefined(bot.tpoint) && bot.var_494658cd.region != bot.tpoint.region) {
        if (!self function_28557cd1() || bot.var_494658cd.region != self function_f25530e3()) {
            route = self function_89751246(bot.var_494658cd.region);
            if (route.size > 0) {
                self function_fd78dbc(route);
            }
        }
    }
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0xee13de4c, Offset: 0xfc8
// Size: 0x1a
function private function_199c516(*objective) {
    return self.bot.var_e8c84f98;
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0xf4e9a9fe, Offset: 0xff0
// Size: 0x90
function private function_36d63786(*objective) {
    info = self function_4794d6a3();
    if (isdefined(info.regionid)) {
        return true;
    }
    if (!isdefined(self.bot.tpoint)) {
        return false;
    }
    self setgoal(self.bot.tpoint.region);
    return true;
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x67afd0d2, Offset: 0x1088
// Size: 0x244
function private function_91d9d948(*objective) {
    goalinfo = self function_4794d6a3();
    if (!self.bot.var_e8c84f98 || !isdefined(goalinfo.regionid)) {
        self clear();
        return;
    }
    var_494658cd = self.bot.var_494658cd;
    if (!isdefined(var_494658cd)) {
        return;
    }
    if (var_494658cd.region != goalinfo.regionid) {
        return;
    }
    var_dae7049a = vectornormalize(self.enemy.origin - self.origin);
    var_6dc3b94d = [];
    regioninfo = function_b507a336(goalinfo.regionid);
    foreach (neighborid in regioninfo.neighbors) {
        var_a110f1ae = function_b507a336(neighborid);
        if (vectordot(var_dae7049a, var_a110f1ae.origin) <= 0.866) {
            var_6dc3b94d[var_6dc3b94d.size] = neighborid;
        }
    }
    if (var_6dc3b94d.size <= 0) {
        self clear();
        return;
    }
    var_41cf0e63 = var_6dc3b94d[randomint(var_6dc3b94d.size)];
    self setgoal(var_41cf0e63);
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x71289771, Offset: 0x12d8
// Size: 0x22
function private function_bcd00fa7(objective) {
    return self function_8b26cb41(objective);
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x9a1a488e, Offset: 0x1308
// Size: 0x68
function private capture_start(objective) {
    self function_9392d2c9();
    trigger = objective.info.target.trigger;
    self setgoal(trigger);
    return true;
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x4a04687, Offset: 0x1378
// Size: 0x24
function private function_423ecbc1(objective) {
    self update_threat(objective);
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0xac2f7b26, Offset: 0x13a8
// Size: 0x22
function private function_1ba5e803(objective) {
    return self function_8b26cb41(objective);
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x2 linked
// Checksum 0x17c109d6, Offset: 0x13d8
// Size: 0x28
function defend_start(*objective) {
    self function_9392d2c9();
    return true;
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0xe091d602, Offset: 0x1408
// Size: 0x444
function private function_72084729(objective) {
    if (!isdefined(self.bot.defendtime)) {
        self.bot.defendtime = gettime() + int(randomintrange(20, 60) * 1000);
    } else if (!isdefined(self.bot.defendtime) || self.bot.defendtime <= gettime()) {
        if (self.bot.var_e8c84f98 || !is_true(objective.secure)) {
            self.bot.defendtime = gettime() + int(randomintrange(20, 60) * 1000);
        } else {
            self clear();
            return;
        }
    }
    info = self function_4794d6a3();
    trigger = objective.info.target.trigger;
    if (isdefined(trigger) && !is_true(objective.secure)) {
        if (!isdefined(info.goalvolume) || info.goalvolume != trigger) {
            self setgoal(trigger);
            self.bot.var_6b695775 = undefined;
        }
    } else if (!isdefined(self.bot.var_6b695775) && isdefined(info.regionid) && isdefined(self.bot.tpoint) && info.regionid == self.bot.tpoint.region) {
        self.bot.var_6b695775 = gettime() + int(randomfloatrange(5, 10) * 1000);
    } else if ((!isdefined(self.bot.var_6b695775) || self.bot.var_6b695775 <= gettime()) && is_true(info.var_9e404264) && !self.bot.var_e8c84f98) {
        id = objective.info.var_dd2331cb[randomint(objective.info.var_dd2331cb.size)];
        if (isdefined(id)) {
            self setgoal(id);
            self.bot.var_6b695775 = undefined;
        }
    } else if (!isinarray(objective.info.var_dd2331cb, info.regionid)) {
        id = objective.info.var_dd2331cb[randomint(objective.info.var_dd2331cb.size)];
        if (isdefined(id)) {
            self setgoal(id);
            self.bot.var_6b695775 = undefined;
        }
    }
    self update_threat(objective);
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0xea9d4f2, Offset: 0x1858
// Size: 0x24
function private function_2fe359ab(objective) {
    return objective.info.var_dd2331cb.size > 0;
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x4ec4eaf, Offset: 0x1888
// Size: 0x22
function private assault_start(objective) {
    return self function_c3253ef(objective);
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x100613b, Offset: 0x18b8
// Size: 0x54
function private function_6a672c6d(objective) {
    self function_db3a19e8();
    if (!self function_99dcd0bd(objective)) {
        self function_c3253ef(objective);
    }
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x73033f3c, Offset: 0x1918
// Size: 0x1c
function private function_c5686e54(*objective) {
    return !self.bot.enemyvisible;
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0xd33096f9, Offset: 0x1940
// Size: 0x100
function private function_c35b807e(*objective) {
    regioncount = function_548ca110();
    if (regioncount <= 0) {
        return false;
    }
    var_de0b3c66 = randomintrange(1, regioncount);
    var_f1120f81 = function_b507a336(var_de0b3c66);
    if (var_f1120f81.tacpoints.size < 15 || var_f1120f81.neighbors.size < 2) {
        return false;
    }
    route = self function_89751246(var_de0b3c66);
    if (route.size <= 0) {
        return false;
    }
    self function_fd78dbc(route);
    return true;
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x9c3056, Offset: 0x1a48
// Size: 0x104
function private function_17d77980(objective) {
    self function_db3a19e8();
    if (self function_28557cd1()) {
        return;
    }
    self update_threat(objective);
    if (!isdefined(self.bot.var_f0015c1)) {
        self.bot.var_f0015c1 = gettime() + int(randomintrange(20, 60) * 1000);
        return;
    }
    if (!isdefined(self.bot.var_f0015c1) || self.bot.var_f0015c1 <= gettime()) {
        self clear();
    }
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x81498ec, Offset: 0x1b58
// Size: 0xc4
function private function_8b26cb41(objective) {
    tpoint = self.bot.tpoint;
    if (!isdefined(tpoint)) {
        return false;
    }
    foreach (id in objective.info.var_dd2331cb) {
        if (tpoint.region == id) {
            return true;
        }
    }
    return false;
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x97d21ea8, Offset: 0x1c28
// Size: 0xd0
function private function_c3253ef(objective) {
    if (!isdefined(objective.info.var_dd2331cb) || objective.info.var_dd2331cb.size <= 0) {
        return false;
    }
    id = objective.info.var_dd2331cb[randomint(objective.info.var_dd2331cb.size)];
    route = self function_89751246(id);
    if (route.size <= 0) {
        return false;
    }
    self function_fd78dbc(route);
    return true;
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x6e9508b2, Offset: 0x1d00
// Size: 0x92
function private function_99dcd0bd(objective) {
    if (!self function_28557cd1()) {
        return 0;
    }
    endindex = self.bot.route.size - 1;
    var_69c6b167 = self.bot.route[endindex];
    return isinarray(objective.info.var_dd2331cb, var_69c6b167);
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0xbd96d795, Offset: 0x1da0
// Size: 0x104
function private function_89751246(regionid) {
    profileNamedStart(#"");
    var_66e7b0ba = self.bot.tpoint;
    if (!isdefined(var_66e7b0ba) || var_66e7b0ba.region == regionid) {
        profileNamedStop();
        return array(regionid);
    }
    var_d3547bb1 = function_b507a336(regionid);
    var_cdea01dc = randomfloatrange(-1, 1);
    self function_ca06456b(self.origin, var_d3547bb1.origin, level.var_d3b9615b, var_cdea01dc);
    profileNamedStop();
    return function_afd64b51(var_66e7b0ba.region, regionid);
}

// Namespace bot_orders/bot_orders
// Params 4, eflags: 0x6 linked
// Checksum 0x5b9798d6, Offset: 0x1eb0
// Size: 0x3fe
function private function_ca06456b(start, end, bounds, var_cdea01dc) {
    profileNamedStart(#"");
    directdir = end - start;
    var_8c171e74 = length(directdir);
    var_43bc5205 = vectortoangles(directdir);
    var_d62fe1dc = anglestoforward(var_43bc5205);
    var_cb764353 = anglestoright(var_43bc5205);
    if (var_cdea01dc < 0) {
        var_cb764353 = (0, 0, 0) - var_cb764353;
        var_cdea01dc = abs(var_cdea01dc);
    }
    var_c7a2a5bd = var_cb764353 * var_8c171e74 * 0.75;
    clipstart = function_24531a26(start, start + var_c7a2a5bd, bounds.absmins, bounds.absmaxs);
    var_6d229307 = vectorlerp(start, clipstart.end, var_cdea01dc);
    var_c7a484a2 = distance(start, var_6d229307);
    clipend = function_24531a26(end, end + var_c7a2a5bd, bounds.absmins, bounds.absmaxs);
    var_57a5b0 = vectorlerp(end, clipend.end, var_cdea01dc);
    var_315d734c = distance(end, var_57a5b0);
    var_acfd9e68 = var_c7a484a2 > 500;
    var_16eedbee = var_315d734c > 500;
    var_22405e9b = var_57a5b0 - var_6d229307;
    var_ccb07583 = length(var_22405e9b);
    var_f8c9ffb2 = vectortoangles(var_22405e9b);
    var_beaef07d = anglestoforward(var_f8c9ffb2);
    var_75128d22 = anglestoright(var_f8c9ffb2);
    /#
        shouldrecord = self bot::should_record(#"hash_bb5c278818b000b");
        if (shouldrecord) {
            recordline(start, var_6d229307, (1, 0, 1), "<unknown string>", self);
            recordline(var_6d229307, var_57a5b0, (1, 0, 1), "<unknown string>", self);
            recordline(var_57a5b0, end, (1, 0, 1), "<unknown string>", self);
        }
    #/
    points = array(start, var_6d229307, var_57a5b0, end);
    function_c36796ff(10, 0.2, 500, points, 10, 20);
    profileNamedStop();
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x67e3292a, Offset: 0x22b8
// Size: 0x2e
function private function_fd78dbc(route) {
    self.bot.route = route;
    self.bot.var_e923c16d = 0;
}

// Namespace bot_orders/bot_orders
// Params 0, eflags: 0x6 linked
// Checksum 0xd53e91f3, Offset: 0x22f0
// Size: 0x22
function private function_9392d2c9() {
    self.bot.route = undefined;
    self.bot.var_e923c16d = undefined;
}

// Namespace bot_orders/bot_orders
// Params 0, eflags: 0x6 linked
// Checksum 0xfaa9a4d6, Offset: 0x2320
// Size: 0x14
function private function_28557cd1() {
    return isdefined(self.bot.route);
}

// Namespace bot_orders/bot_orders
// Params 0, eflags: 0x6 linked
// Checksum 0x62c9b1c5, Offset: 0x2340
// Size: 0x3a
function private function_f25530e3() {
    route = self.bot.route;
    if (!isdefined(route)) {
        return undefined;
    }
    return route[route.size - 1];
}

// Namespace bot_orders/bot_orders
// Params 0, eflags: 0x6 linked
// Checksum 0xae2c10f4, Offset: 0x2388
// Size: 0x25e
function private function_db3a19e8() {
    profileNamedStart(#"");
    if (self isplayinganimscripted() || self arecontrolsfrozen() || self function_5972c3cf() || self isinvehicle()) {
        profileNamedStop();
        return;
    }
    bot = self.bot;
    if (!isarray(bot.route) || bot.route.size <= 0) {
        profileNamedStop();
        return;
    }
    id = bot.route[bot.var_e923c16d];
    if (bot.route.size == 1) {
        self setgoal(id);
        self forceupdategoalpos();
        self function_9392d2c9();
    } else if (isdefined(bot.tpoint) && bot.tpoint.region == id) {
        bot.var_e923c16d++;
        if (bot.var_e923c16d < bot.route.size) {
            self setgoal(bot.route[bot.var_e923c16d]);
            self forceupdategoalpos();
        } else {
            self function_9392d2c9();
        }
    } else {
        info = self function_4794d6a3();
        if (!isdefined(info.regionid) || info.regionid != id) {
            self setgoal(id);
            self forceupdategoalpos();
        }
    }
    profileNamedStop();
}

// Namespace bot_orders/bot_orders
// Params 0, eflags: 0x6 linked
// Checksum 0xc23a641b, Offset: 0x25f0
// Size: 0x5e
function private function_b6e6a59b() {
    bounds = function_5ac49687();
    if (isdefined(bounds)) {
        bounds.var_f521d351 = (bounds.maxs[0], bounds.maxs[1], bounds.mins[2]);
    }
    return bounds;
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x3996d191, Offset: 0x2658
// Size: 0x29c
function private update_threat(objective) {
    if (self.bot.var_e8c84f98) {
        self.bot.var_3d1abfb9 = undefined;
        return;
    }
    if (!(!isdefined(self.bot.var_3d1abfb9) || self.bot.var_3d1abfb9 <= gettime()) && self.bot.var_9931c7dc) {
        return;
    }
    pixbeginevent("update_threat");
    trigger = objective.info.target.trigger;
    if (isdefined(trigger) && !is_true(objective.secure)) {
        point = self function_f217ace2(trigger);
        if (isdefined(point)) {
            self.bot.var_941ba251 = point;
            self.bot.var_3d1abfb9 = gettime() + int(randomfloatrange(1.5, 3) * 1000);
        }
    } else {
        neighborids = objective.info.neighborids;
        if (!isdefined(neighborids) && isdefined(self.bot.tpoint)) {
            info = function_b507a336(self.bot.tpoint.region);
            neighborids = info.neighbors;
        }
        point = self function_146c03bd(neighborids);
        if (isdefined(point)) {
            self.bot.var_941ba251 = point;
            self.bot.var_3d1abfb9 = gettime() + int(randomfloatrange(2, 5) * 1000);
        }
    }
    pixendevent();
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x7a559b7e, Offset: 0x2900
// Size: 0xd2
function private function_146c03bd(var_dd2331cb) {
    if (!isdefined(var_dd2331cb) || var_dd2331cb.size <= 0) {
        return undefined;
    }
    id = var_dd2331cb[randomint(var_dd2331cb.size)];
    points = tacticalquery(#"hash_74b4463994f96eae", id, self);
    if (points.size <= 0) {
        return undefined;
    }
    return points[randomint(points.size)].origin + (0, 0, 50);
}

// Namespace bot_orders/bot_orders
// Params 1, eflags: 0x6 linked
// Checksum 0x71632c1d, Offset: 0x29e0
// Size: 0x8a
function private function_f217ace2(volume) {
    points = tacticalquery(#"hash_eea3b34d24d4bdd", volume, self);
    if (points.size <= 0) {
        return undefined;
    }
    return points[randomint(points.size)].origin + (0, 0, 50);
}

/#

    // Namespace bot_orders/bot_orders
    // Params 0, eflags: 0x4
    // Checksum 0xc388cc72, Offset: 0x2a78
    // Size: 0x64c
    function private function_7a7ab1a2() {
        level endon(#"game_ended");
        while (true) {
            waitframe(1);
            if (getdvarint(#"hash_bb5c278818b000b", 0) <= 0) {
                continue;
            }
            function_af72dbc5(level.var_d3b9615b.origin, level.var_d3b9615b.mins, level.var_d3b9615b.var_f521d351, 0, (1, 0, 0), "<unknown string>");
            zoffset = 0;
            var_dd2331cb = [];
            neighborids = [];
            foreach (team, var_271aef88 in level.var_774ed7e9) {
                foreach (objective in var_271aef88) {
                    if (!isdefined(objective.info) || !isdefined(objective.info.target)) {
                        continue;
                    }
                    record3dtext(level.teams[team] + "<unknown string>" + objective.count + "<unknown string>" + function_9e72a96(objective.var_a1980fcb) + "<unknown string>" + function_9e72a96(objective.var_5e99151a), objective.info.target.origin + (0, 0, zoffset), (0, 1, 1), "<unknown string>");
                    if (isdefined(objective.info.var_dd2331cb)) {
                        foreach (id in objective.info.var_dd2331cb) {
                            var_dd2331cb[id] = id;
                        }
                    }
                    if (isdefined(objective.info.neighborids)) {
                        foreach (id in objective.info.neighborids) {
                            neighborids[id] = id;
                        }
                    }
                }
                zoffset += -10;
            }
            foreach (id in var_dd2331cb) {
                info = function_b507a336(id);
                foreach (point in info.tacpoints) {
                    recordstar(point.origin, (0, 1, 1), "<unknown string>");
                }
                record3dtext(id, info.origin, (0, 1, 1), "<unknown string>");
            }
            foreach (id in neighborids) {
                info = function_b507a336(id);
                foreach (point in info.tacpoints) {
                    recordstar(point.origin, (0, 0, 1), "<unknown string>");
                }
                record3dtext(id, info.origin, (0, 0, 1), "<unknown string>");
            }
        }
    }

    // Namespace bot_orders/bot_orders
    // Params 0, eflags: 0x4
    // Checksum 0x942ad6dd, Offset: 0x30d0
    // Size: 0x174
    function private function_26b3a2f() {
        order = self.bot.order;
        if (!isdefined(order)) {
            record3dtext(function_9e72a96(#"hash_266967e49741306c"), self.origin, (0, 1, 1), "<unknown string>", self, 0.5);
        } else {
            record3dtext(function_9e72a96(#"hash_15017f84fb1a2e46") + function_9e72a96(order), self.origin, (0, 1, 1), "<unknown string>", self, 0.5);
        }
        objective = self.bot.objective;
        if (isdefined(objective) && isdefined(objective.info) && isdefined(objective.info.target)) {
            recordline(self.origin, objective.info.target.origin, (0, 1, 1), "<unknown string>", self);
        }
    }

    // Namespace bot_orders/bot_orders
    // Params 0, eflags: 0x4
    // Checksum 0xbecc4502, Offset: 0x3250
    // Size: 0x1be
    function private function_d966fb1c() {
        route = self.bot.route;
        if (!isdefined(route)) {
            return;
        }
        var_e923c16d = self.bot.var_e923c16d;
        lastorigin = undefined;
        foreach (i, id in route) {
            info = function_b507a336(id);
            color = (0, 1, 0);
            if (i > var_e923c16d) {
                color = (0, 1, 1);
            } else if (i < var_e923c16d) {
                color = (0, 0, 1);
            }
            text = id + "<unknown string>" + i + "<unknown string>" + info.tacpoints.size;
            record3dtext(text, info.origin, color, "<unknown string>", self);
            if (isdefined(lastorigin)) {
                recordline(lastorigin, info.origin, color, "<unknown string>", self);
            }
            lastorigin = info.origin;
        }
    }

#/
