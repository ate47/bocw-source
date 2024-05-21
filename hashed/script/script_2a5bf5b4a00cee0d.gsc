// Atian COD Tools GSC CW decompiler test
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_ec06fe4a;

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0x8465ac5e, Offset: 0x310
// Size: 0xcc
function function_ae010bb4(player) {
    assert(isdefined(self), "<unknown string>");
    assert(isdefined(player), "<unknown string>");
    assert(isplayer(player), "<unknown string>");
    self endon(#"death");
    player waittill(#"disconnect");
    if (isdefined(self)) {
        self function_52afe5df(0.05);
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0x9f9b558e, Offset: 0x3e8
// Size: 0x52
function function_8ff7f92c(myteam = "allies") {
    team = util::getotherteam(myteam);
    return getaiteamarray(team);
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0x786046b, Offset: 0x448
// Size: 0x8c
function getclosestenemy(myteam = "allies") {
    team = util::getotherteam(myteam);
    enemy = getaiteamarray(team);
    guys = arraysortclosest(enemy, self.origin);
    return guys[0];
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0x135b46a5, Offset: 0x4e0
// Size: 0x60
function addpoi(ent) {
    arrayremovevalue(level.doa.var_af6d47dd, undefined);
    level.doa.var_af6d47dd[level.doa.var_af6d47dd.size] = ent;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0xd46a1ba1, Offset: 0x548
// Size: 0x19e
function function_ff7594d7(origin, var_5e23c42a = sqr(200)) {
    arrayremovevalue(level.doa.var_af6d47dd, undefined);
    if (level.doa.var_af6d47dd.size > 0) {
        pois = arraysortclosest(level.doa.var_af6d47dd, origin);
        foreach (poi in pois) {
            var_5e23c42a = isdefined(poi.var_7f3187c5) ? poi.var_7f3187c5 : var_5e23c42a;
            distsq = distancesquared(poi.origin, origin);
            if (distsq < var_5e23c42a) {
                if (!isdefined(poi.var_860a34b9)) {
                    poi.var_860a34b9 = getclosestpointonnavmesh(poi.origin, 128, 30);
                }
                return poi;
            }
        }
    }
    return undefined;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0x9099bc4f, Offset: 0x6f0
// Size: 0x24
function function_fb4eb048(team) {
    return getaiteamarray(team).size;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 0, eflags: 0x2 linked
// Checksum 0xd24f735b, Offset: 0x720
// Size: 0x14
function function_38de0ce8() {
    return getaiarray().size;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0x5cd64c56, Offset: 0x740
// Size: 0x156
function function_9788bacc(myteam = "allies") {
    team = util::getotherteam(myteam);
    teamsize = 0;
    if (isdefined(level.doa.var_e2e8967b)) {
        if (level.doa.var_e2e8967b.size) {
            arrayremovevalue(level.doa.var_e2e8967b, undefined);
        }
        foreach (guy in level.doa.var_e2e8967b) {
            if (guy.oldteam === team) {
                teamsize++;
            }
        }
    }
    teamsize += getaiteamarray(team).size;
    return teamsize;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0xa2ed1d54, Offset: 0x8a0
// Size: 0xd4
function function_bd89b452(time, other) {
    if (isdefined(time) && time > 0) {
        wait(time);
    }
    if (!isdefined(other)) {
        return;
    }
    other notify(#"hash_717d9188a95b458f");
    if (isdefined(other.anchor)) {
        other.anchor delete();
    }
    if (isdefined(other.pickup)) {
        other.pickup = undefined;
    }
    if (isdefined(other.trigger)) {
        other.trigger delete();
    }
    other deletedelay();
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0xb85d18b7, Offset: 0x980
// Size: 0x54
function function_70b34352(time) {
    self endon(#"death");
    if (isdefined(time) && time > 0) {
        wait(time);
    }
    self detonate();
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0xf8945aed, Offset: 0x9e0
// Size: 0xcc
function function_52afe5df(time) {
    self endon(#"death");
    if (isdefined(time) && time > 0) {
        wait(time);
    }
    self notify(#"hash_717d9188a95b458f");
    if (isdefined(self.anchor)) {
        self.anchor delete();
    }
    if (isdefined(self.pickup)) {
        self.pickup = undefined;
    }
    if (isdefined(self.trigger)) {
        self.trigger delete();
    }
    self deletedelay();
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0x3f13b6be, Offset: 0xab8
// Size: 0x92
function function_b6b79fd1(timeout = 5) {
    if (timeout > 0) {
        timeout = gettime() + timeout * 1000;
        while (function_9788bacc() > 0 && gettime() < timeout) {
            waitframe(1);
        }
        return;
    }
    while (function_9788bacc() > 0) {
        waitframe(1);
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 0, eflags: 0x2 linked
// Checksum 0xa7c4f0ee, Offset: 0xb58
// Size: 0xa0
function function_42304070() {
    enemies = function_8ff7f92c();
    foreach (var_fd93c973 in enemies) {
        var_fd93c973 delete();
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x0
// Checksum 0xe1b19499, Offset: 0xc00
// Size: 0x58
function function_3b3bb5c(var_687ec70b, dmg) {
    self endon(#"death");
    while (true) {
        wait(var_687ec70b);
        self dodamage(dmg, self.origin);
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 3, eflags: 0x0
// Checksum 0xe2ebd2b3, Offset: 0xc60
// Size: 0x74
function function_e10101e(seconds, bosskills = 1, var_f906062a = 0) {
    self notify("5e47f210d9abe826");
    self endon("5e47f210d9abe826");
    wait(seconds);
    level thread function_de70888a(bosskills, var_f906062a);
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0xd2aef79a, Offset: 0xce0
// Size: 0x276
function function_de70888a(bosskills = 1, var_f906062a = 0) {
    self notify("3b9e4824698b6816");
    self endon("3b9e4824698b6816");
    level.doa.var_1b8c7044 = 1;
    numleft = function_9788bacc();
    attempts = 20;
    while (numleft > 0 && attempts > 0) {
        level.doa.var_dcbded2 = [];
        enemies = function_8ff7f92c();
        foreach (var_fd93c973 in enemies) {
            numleft--;
            if (is_true(var_fd93c973.boss) && bosskills == 0) {
                continue;
            }
            if (is_true(var_fd93c973.var_f906062a) && var_f906062a) {
                continue;
            }
            if (isdefined(var_fd93c973.var_d1fac34a)) {
                var_fd93c973.var_d1fac34a.count++;
                arrayremovevalue(var_fd93c973.var_d1fac34a.enemylist, var_fd93c973);
                var_fd93c973.var_d1fac34a = undefined;
            }
            var_fd93c973.takedamage = 1;
            var_fd93c973.allowdeath = 1;
            var_fd93c973 dodamage(var_fd93c973.health + 187, var_fd93c973.origin);
        }
        waitframe(1);
        if (attempts) {
            attempts--;
            numleft = function_9788bacc();
        }
    }
    level.doa.var_1b8c7044 = 0;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0x9569c526, Offset: 0xf60
// Size: 0x44
function freezeplayercontrols(frozen = 1) {
    self.doa.var_a5eb0385 = frozen;
    self freezecontrols(frozen);
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0xfdf8caf1, Offset: 0xfb0
// Size: 0xd0
function function_445bad70(frozen = 1) {
    players = namespace_7f5aeb59::function_23e1f90f();
    foreach (player in players) {
        player freezeplayercontrols(frozen);
        player setlowready(frozen);
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0xcde3c696, Offset: 0x1088
// Size: 0xc4
function function_2552a0a0(minwait = 90) {
    self endon(#"death", #"hash_71199e509f750629");
    while (flag::get("doa_round_spawning")) {
        wait(1);
        if (minwait > 0) {
            minwait--;
        }
    }
    if (minwait > 0) {
        wait(minwait);
    }
    self.takedamage = 1;
    self.allowdeath = 1;
    self dodamage(self.health + 187, self.origin);
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0xd17c45c3, Offset: 0x1158
// Size: 0x1a4
function function_aef7e3f6(minwait = 10, fails = 30) {
    self endon(#"death", #"hash_71199e509f750629");
    while (flag::get("doa_round_spawning")) {
        wait(1);
        if (minwait > 0) {
            minwait--;
        }
    }
    if (minwait > 0) {
        wait(minwait);
    }
    reset = fails;
    while (fails) {
        pos = (self.origin[0], self.origin[1], 0);
        wait(1);
        newpos = (self.origin[0], self.origin[1], 0);
        distsq = distancesquared(newpos, pos);
        if (distsq < sqr(12)) {
            fails--;
            continue;
        }
        fails = reset;
    }
    self.takedamage = 1;
    self.allowdeath = 1;
    self dodamage(self.health + 187, self.origin);
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 4, eflags: 0x2 linked
// Checksum 0xda9ae67d, Offset: 0x1308
// Size: 0x184
function function_570729f0(time = 0, attacker, mod = "MOD_UNKNOWN", weapon) {
    assert(!isplayer(self));
    if (!isdefined(self)) {
        return;
    }
    if (self function_22d11b92()) {
        return;
    }
    self endon(#"death");
    if (!is_true(self.marked_for_death)) {
        self function_1811d978(time);
    }
    while (gettime() < self.var_95ff4bd6) {
        wait(0.28);
    }
    util::wait_network_frame();
    self.takedamage = 1;
    self.allowdeath = 1;
    self dodamage(self.health, self.origin, attacker, attacker, "none", mod, 0, isdefined(weapon) ? weapon : getweapon("none"));
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0xb9b74701, Offset: 0x1498
// Size: 0x166
function function_4adce635(dir, var_594fccd3 = 100) {
    profilestart();
    if (is_true(self.var_e66cd6fb)) {
        profilestop();
        return;
    }
    if (!isactor(self)) {
        profilestop();
        return;
    }
    if (isalive(self)) {
        profilestop();
        return;
    }
    if (is_true(self.var_4a257c70)) {
        profilestop();
        return;
    }
    self setplayercollision(0);
    self startragdoll(1);
    self.var_4a257c70 = 1;
    if (isdefined(dir) && function_a8975c67()) {
        dir = vectornormalize(dir);
        var_594fccd3 = math::clamp(var_594fccd3, 0, 200);
        self launchragdoll(dir * var_594fccd3);
        self namespace_e32bb68::function_3a59ec34("zmb_ragdoll_launched");
    }
    profilestop();
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 0, eflags: 0x2 linked
// Checksum 0xf1124e24, Offset: 0x1608
// Size: 0x68
function function_22d11b92() {
    if (is_true(self.marked_for_death)) {
        assert(isdefined(self.var_ef7cd97));
        if (isdefined(self.var_ef7cd97) && gettime() - self.var_ef7cd97 < 1500) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0x81742245, Offset: 0x1678
// Size: 0x6e
function function_1811d978(timesec) {
    var_b92f73b0 = gettime();
    if (isdefined(timesec)) {
        var_b92f73b0 += timesec * 1000;
    }
    self.marked_for_death = 1;
    self.var_ef7cd97 = gettime();
    self.var_95ff4bd6 = var_b92f73b0;
    self.takedamage = 1;
    self.allowdeath = 1;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 4, eflags: 0x2 linked
// Checksum 0xa111f35, Offset: 0x16f0
// Size: 0x104
function function_b4ff2191(dir, var_594fccd3, *unused = 100, attacker) {
    assert(!isplayer(self));
    if (!isdefined(self)) {
        return;
    }
    if (self function_22d11b92()) {
        return;
    }
    self function_1811d978();
    self.takedamage = 1;
    self.allowdeath = 1;
    self dodamage(self.health + 187, self.origin, attacker, attacker, "none", "MOD_UNKNOWN");
    self function_4adce635(var_594fccd3, unused);
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 0, eflags: 0x2 linked
// Checksum 0xf69eed48, Offset: 0x1800
// Size: 0xfc
function function_592e0d6b() {
    self notify("1afc48493607fddf");
    self endon("1afc48493607fddf");
    while (true) {
        wait(1);
        corpse_array = getcorpsearray();
        foreach (corpse in corpse_array) {
            if (!isdefined(corpse.var_b0d4cf4b)) {
                corpse.var_b0d4cf4b = 5;
                corpse thread function_52afe5df(corpse.var_b0d4cf4b);
            }
        }
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0x19266d09, Offset: 0x1908
// Size: 0xdc
function clearallcorpses(num = 99) {
    level thread function_592e0d6b();
    corpse_array = getcorpsearray();
    if (num == 99) {
        total = corpse_array.size;
    } else {
        total = num;
    }
    for (i = 0; i < total; i++) {
        if (is_true(corpse_array[i].var_931f033a)) {
            continue;
        }
        if (isdefined(corpse_array[i])) {
            corpse_array[i] delete();
        }
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0x2304007, Offset: 0x19f0
// Size: 0xfc
function function_d55f042c(other, note) {
    if (!isdefined(other)) {
        return;
    }
    self endon(#"death");
    killnote = function_7fcca25d("DeleteNote");
    self thread function_719951d3(other, killnote);
    if (isplayer(other)) {
        if (note == "disconnect") {
            other waittill(note, killnote);
        } else {
            other waittill(note, #"disconnect", killnote);
        }
    } else {
        other waittill(note, killnote);
    }
    if (isdefined(self)) {
        self function_52afe5df(0);
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 3, eflags: 0x2 linked
// Checksum 0x3f8ad98e, Offset: 0x1af8
// Size: 0xf6
function function_203591b7(other, note, var_df2b8649) {
    if (!isdefined(other)) {
        return;
    }
    self endon(#"death");
    killnote = function_7fcca25d("DeleteNote");
    self thread function_719951d3(other, killnote);
    if (isplayer(other)) {
        if (note == "disconnect") {
            other waittill(note, killnote);
        } else {
            other waittill(note, #"disconnect", killnote);
        }
    } else {
        other waittill(note, killnote);
    }
    if (isdefined(self)) {
        self notify(var_df2b8649);
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0x46b6595, Offset: 0x1bf8
// Size: 0x5c
function function_719951d3(other, note) {
    self endon(note);
    other endon(#"death");
    self waittill(#"death");
    if (isdefined(other)) {
        other notify(note);
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0xae597f6b, Offset: 0x1c60
// Size: 0x134
function function_ad852085(other, note) {
    if (!isdefined(other)) {
        return;
    }
    self endon(#"death");
    killnote = function_7fcca25d("killNote");
    self thread function_719951d3(other, killnote);
    if (isplayer(other)) {
        if (note == "disconnect") {
            other waittill(note, killnote);
        } else {
            other waittill(note, #"disconnect", killnote);
        }
    } else {
        other waittill(note, killnote);
    }
    if (isdefined(self)) {
        self notify(killnote);
        self.aioverridedamage = undefined;
        self.takedamage = 1;
        self.allowdeath = 1;
        self dodamage(self.health + 187, self.origin);
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0xabd218b, Offset: 0x1da0
// Size: 0x5c
function deletemeonnotify(note, delay = 1) {
    self endon(#"death");
    self waittill(note);
    self thread function_52afe5df(delay);
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0xb0f47632, Offset: 0x1e08
// Size: 0x60
function function_7fcca25d(note) {
    if (!isdefined(level.doa.var_3898afe7)) {
        level.doa.var_3898afe7 = 0;
    }
    level.doa.var_3898afe7++;
    return note + level.doa.var_3898afe7;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 0, eflags: 0x2 linked
// Checksum 0xf324b6a0, Offset: 0x1e70
// Size: 0x58
function function_3390402b() {
    if (!isdefined(level.doa.var_8f229afa)) {
        level.doa.var_8f229afa = 0;
    }
    level.doa.var_8f229afa++;
    return "doa_dynamic_" + level.doa.var_8f229afa;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0x61a6274c, Offset: 0x1ed0
// Size: 0x2c
function function_9d713536(vel) {
    return length(vel) * 0.0568182;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0xe0a42eaf, Offset: 0x1f08
// Size: 0x34
function function_f506b4c7(time = 4) {
    self thread function_2d920b3c(time);
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0x80e99b75, Offset: 0x1f48
// Size: 0xce
function function_2d920b3c(var_bf710acd = 0.6, clockwise = 1) {
    self endon(#"death", #"hash_7bf2519960a3852a");
    angle = clockwise ? (0, 180, 0) : (0, -180, 0);
    while (isdefined(self)) {
        self.var_c9f66f0d = self.angles + angle;
        self rotateto(self.var_c9f66f0d, var_bf710acd);
        wait(var_bf710acd);
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 3, eflags: 0x2 linked
// Checksum 0xf275baa7, Offset: 0x2020
// Size: 0x166
function function_8b1ae345(time = 2, dist = 24, killnote) {
    self endon(#"death");
    if (isdefined(killnote)) {
        self endon(killnote);
    }
    var_21419d4d = time;
    var_c421a5fd = dist;
    var_e9fa66c6 = var_21419d4d / 2;
    start_origin = self.origin;
    top = self.origin + (0, 0, var_c421a5fd);
    bottom = self.origin - (0, 0, var_c421a5fd);
    while (true) {
        self moveto(top, var_e9fa66c6, 0.2, 0.2);
        wait(var_e9fa66c6);
        self moveto(bottom, var_e9fa66c6, 0.2, 0.2);
        wait(var_e9fa66c6);
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 3, eflags: 0x2 linked
// Checksum 0x4ceff6ed, Offset: 0x2190
// Size: 0xd6
function function_1ebe83a7(startscale, endscale = 1, timems = 3000) {
    self endon(#"death");
    var_44bf347e = startscale;
    var_c7fbfa53 = (endscale - startscale) / timems / 50;
    endtime = gettime() + timems;
    while (isdefined(self) && gettime() < endtime) {
        var_44bf347e += var_c7fbfa53;
        self setscale(var_44bf347e);
        waitframe(1);
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x0
// Checksum 0x221b20c, Offset: 0x2270
// Size: 0x62
function getyawtospot(spot) {
    pos = spot;
    yaw = self.angles[1] - getyaw(pos);
    yaw = angleclamp180(yaw);
    return yaw;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 0, eflags: 0x2 linked
// Checksum 0x18accd69, Offset: 0x22e0
// Size: 0xca
function getyawtoenemy() {
    pos = undefined;
    if (isvalidenemy(self.enemy)) {
        pos = self.enemy.origin;
    } else {
        forward = anglestoforward(self.angles);
        forward = vectorscale(forward, 150);
        pos = self.origin + forward;
    }
    yaw = self.angles[1] - getyaw(pos);
    yaw = angleclamp180(yaw);
    return yaw;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0x7598c8d7, Offset: 0x23b8
// Size: 0x1c
function isvalidenemy(enemy) {
    if (!isdefined(enemy)) {
        return false;
    }
    return true;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0x7e5c233f, Offset: 0x23e0
// Size: 0x3e
function getyaw(org) {
    angles = vectortoangles(org - self.origin);
    return angles[1];
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0xf68b3ca1, Offset: 0x2428
// Size: 0x66
function getyaw2d(org) {
    angles = vectortoangles((org[0], org[1], 0) - (self.origin[0], self.origin[1], 0));
    return angles[1];
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 0, eflags: 0x2 linked
// Checksum 0x520e7dc7, Offset: 0x2498
// Size: 0xa2
function absyawtoenemy() {
    assert(isvalidenemy(self.enemy));
    yaw = self.angles[1] - getyaw(self.enemy.origin);
    yaw = angleclamp180(yaw);
    if (yaw < 0) {
        yaw = -1 * yaw;
    }
    return yaw;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 0, eflags: 0x0
// Checksum 0x8c5882d9, Offset: 0x2548
// Size: 0xa2
function absyawtoenemy2d() {
    assert(isvalidenemy(self.enemy));
    yaw = self.angles[1] - getyaw2d(self.enemy.origin);
    yaw = angleclamp180(yaw);
    if (yaw < 0) {
        yaw = -1 * yaw;
    }
    return yaw;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x0
// Checksum 0xff06caef, Offset: 0x25f8
// Size: 0x6a
function absyawtoorigin(org) {
    yaw = self.angles[1] - getyaw(org);
    yaw = angleclamp180(yaw);
    if (yaw < 0) {
        yaw = -1 * yaw;
    }
    return yaw;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x0
// Checksum 0x5018656, Offset: 0x2670
// Size: 0x5a
function absyawtoangles(angles) {
    yaw = self.angles[1] - angles;
    yaw = angleclamp180(yaw);
    if (yaw < 0) {
        yaw = -1 * yaw;
    }
    return yaw;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0x63ddffa5, Offset: 0x26d8
// Size: 0x3e
function getyawfromorigin(org, start) {
    angles = vectortoangles(org - start);
    return angles[1];
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x0
// Checksum 0x6f06054f, Offset: 0x2720
// Size: 0x7a
function getyawtotag(tag, org) {
    yaw = self gettagangles(tag)[1] - getyawfromorigin(org, self gettagorigin(tag));
    yaw = angleclamp180(yaw);
    return yaw;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x0
// Checksum 0x5e3f3fab, Offset: 0x27a8
// Size: 0x52
function getyawtoorigin(org) {
    yaw = self.angles[1] - getyaw(org);
    yaw = angleclamp180(yaw);
    return yaw;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x0
// Checksum 0xfcf9200, Offset: 0x2808
// Size: 0x6a
function geteyeyawtoorigin(org) {
    yaw = self gettagangles("TAG_EYE")[1] - getyaw(org);
    yaw = angleclamp180(yaw);
    return yaw;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x0
// Checksum 0x7e9fcd26, Offset: 0x2880
// Size: 0x82
function getcovernodeyawtoorigin(org) {
    yaw = self.covernode.angles[1] + self.animarray[#"angle_step_out"][self.a.cornermode] - getyaw(org);
    yaw = angleclamp180(yaw);
    return yaw;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0x9ca10c6a, Offset: 0x2910
// Size: 0x98
function rotatevec(vector, angle) {
    return (vector[0] * cos(angle) - vector[1] * sin(angle), vector[0] * sin(angle) + vector[1] * cos(angle), vector[2]);
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 3, eflags: 0x2 linked
// Checksum 0x9fcf6d8f, Offset: 0x29b0
// Size: 0x86
function function_65ee50ba(start, updelta = 48, var_51a8354e = -1024) {
    s_trace = groundtrace(start + (0, 0, updelta), start + (0, 0, var_51a8354e), 0, self);
    return s_trace[#"position"];
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0x67890e22, Offset: 0x2a40
// Size: 0x136
function function_1a117d29(location, timesec = 1) {
    self notify(#"hash_1a927c82f4391e40");
    self endon(#"hash_1a927c82f4391e40");
    self endon(#"death");
    if (isplayer(self)) {
        self endon(#"disconnect");
    }
    if (timesec <= 0) {
        timesec = 1;
    }
    frame = 1000 / function_60d95f53();
    increment = (self.origin - location) / timesec * 20;
    targettime = gettime() + timesec * 1000;
    while (gettime() < targettime) {
        self.origin -= increment;
        waitframe(1);
    }
    self notify(#"movedone");
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 0, eflags: 0x2 linked
// Checksum 0x6fb422c9, Offset: 0x2b80
// Size: 0x10c
function function_ecec1794() {
    self endon(#"death");
    sticks = 0;
    lastorigin = self.origin;
    lastangles = self.angles;
    while (sticks < 20) {
        waitframe(1);
        var_bcb6ea2 = lengthsquared(lastangles - self.angles);
        var_4d6917c7 = distancesquared(lastorigin, self.origin);
        if (var_4d6917c7 < sqr(4) && var_bcb6ea2 < 0.1) {
            sticks++;
            continue;
        }
        lastorigin = self.origin;
        lastangles = self.angles;
        sticks = 0;
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 0, eflags: 0x2 linked
// Checksum 0x48d7ea55, Offset: 0x2c98
// Size: 0x42
function function_8c808737() {
    if (isdefined(self)) {
        self notify(#"hash_5251ab0953e7989f");
        self ghost();
        self.var_cd7dffa1 = 1;
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 0, eflags: 0x2 linked
// Checksum 0x813a9d86, Offset: 0x2ce8
// Size: 0x2e
function function_4f72130c() {
    if (isdefined(self)) {
        self show();
        self.var_cd7dffa1 = 0;
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0x96cf6f40, Offset: 0x2d20
// Size: 0x6c
function function_6eacecf5(origin, dist = 1024) {
    players = getplayers();
    closest = arraysortclosest(players, origin, 1, 0, dist);
    return closest[0];
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0x8a230d8f, Offset: 0x2d98
// Size: 0x6c
function function_bd3709ce(origin, dist = 1024) {
    actors = getactorarray();
    closest = arraysortclosest(actors, origin, 1, 0, dist);
    return closest[0];
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0xade24db3, Offset: 0x2e10
// Size: 0xa0
function function_f3eab80e(origin, dist = 1024) {
    ents = arraycombine(getplayers(), getactorarray());
    closest = arraysortclosest(ents, origin, 1, 0, dist);
    if (!closest.size) {
        return;
    }
    return closest[0];
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 5, eflags: 0x2 linked
// Checksum 0x9a470f16, Offset: 0x2eb8
// Size: 0x9c
function function_87612422(spot, angles, priority = 1, lifetime = 3, lightstate = 0) {
    assert(isdefined(spot));
    if (isdefined(spot)) {
        level util::create_streamer_hint(spot, angles, priority, lifetime, lightstate);
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 5, eflags: 0x2 linked
// Checksum 0x8f919872, Offset: 0x2f60
// Size: 0x1c4
function function_2f4b0f9(health, eattacker, var_799e18e5, idamage, var_5f32808d) {
    if (health <= 0) {
        health = 0;
    }
    var_8c77492a = health / self.maxhealth;
    health = var_8c77492a * ((1 << 8) - 1);
    self clientfield::set("set_health_bar", int(health));
    if (health != (1 << 8) - 1 && health > 0) {
        self clientfield::set("show_health_bar", 1);
    } else {
        self clientfield::set("show_health_bar", 0);
    }
    if (isdefined(eattacker) && idamage > 0) {
        hud::function_c9800094(eattacker, var_799e18e5, int(idamage / 10), var_5f32808d);
        if (!isdefined(eattacker.pers[#"damagedone"])) {
            eattacker.pers[#"damagedone"] = 0;
        }
        eattacker.pers[#"damagedone"] = eattacker.pers[#"damagedone"] + idamage;
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0x35547f2, Offset: 0x3130
// Size: 0x52
function spawnorigin(origin) {
    if (!function_a8975c67()) {
        return;
    }
    if (!function_3238d10d(origin)) {
        return;
    }
    return spawn("script_origin", origin);
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 4, eflags: 0x2 linked
// Checksum 0x6a4db763, Offset: 0x3190
// Size: 0xea
function spawnmodel(origin, modelname = "tag_origin", angles, targetname) {
    if (!function_a8975c67()) {
        return;
    }
    if (!isdefined(origin) || !function_3238d10d(origin)) {
        return;
    }
    mdl = spawn("script_model", origin);
    if (isdefined(mdl)) {
        if (isdefined(modelname)) {
            mdl setmodel(modelname);
        }
        if (isdefined(angles)) {
            mdl.angles = angles;
        }
        if (isdefined(targetname)) {
            mdl.targetname = targetname;
        }
    }
    return mdl;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 6, eflags: 0x2 linked
// Checksum 0xb2e0d2d6, Offset: 0x3288
// Size: 0x118
function spawntrigger(triggertype, origin, flags = 1, var_bacb72c4, height, width) {
    if (!mayspawnfakeentity()) {
        return;
    }
    if (!function_3238d10d(origin)) {
        return;
    }
    if (triggertype == "trigger_radius" || triggertype == "trigger_radius_use") {
        trigger = spawn(triggertype, origin, flags, var_bacb72c4, height);
    } else if (triggertype == "trigger_box") {
        trigger = spawn(triggertype, origin, flags, var_bacb72c4, width, height);
    } else {
        assert(0, "<unknown string>");
    }
    return trigger;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x2 linked
// Checksum 0x7eaf0962, Offset: 0x33a8
// Size: 0x124
function is_facing(facee, requireddot = 0.9) {
    orientation = self getplayerangles();
    forwardvec = anglestoforward(orientation);
    forwardvec2d = (forwardvec[0], forwardvec[1], 0);
    unitforwardvec2d = vectornormalize(forwardvec2d);
    tofaceevec = facee.origin - self.origin;
    tofaceevec2d = (tofaceevec[0], tofaceevec[1], 0);
    unittofaceevec2d = vectornormalize(tofaceevec2d);
    dotproduct = vectordot(unitforwardvec2d, unittofaceevec2d);
    return dotproduct > requireddot;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0xab623f52, Offset: 0x34d8
// Size: 0x7e
function is_explosive_damage(mod) {
    if (!isdefined(mod)) {
        return false;
    }
    if (mod == "MOD_GRENADE" || mod == "MOD_GRENADE_SPLASH" || mod == "MOD_PROJECTILE" || mod == "MOD_PROJECTILE_SPLASH" || mod == "MOD_EXPLOSIVE") {
        return true;
    }
    return false;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 2, eflags: 0x0
// Checksum 0x59c4050f, Offset: 0x3560
// Size: 0x16a
function function_2017393e(array, weights) {
    assert(array.size == weights.size);
    if (array.size > 0) {
        var_766a145f = 0;
        keys = getarraykeys(array);
        foreach (key in keys) {
            var_766a145f += weights[key];
        }
        var_ca23d24f = function_7ae7bf61(0, var_766a145f);
        var_da00fb33 = keys[0];
        for (i = 0; i < keys.size && var_ca23d24f >= 0; i++) {
            var_da00fb33 = keys[i];
            var_ca23d24f -= weights[var_da00fb33];
        }
        return array[var_da00fb33];
    }
    return undefined;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 3, eflags: 0x2 linked
// Checksum 0x4885b89c, Offset: 0x36d8
// Size: 0xf0
function function_73d79e7d(parent, var_b1f98440 = 0, offset = (0, 0, 0)) {
    self notify("2c50a80bfa941a0d");
    self endon("2c50a80bfa941a0d");
    self endon(#"death", #"unlink");
    while (isdefined(parent)) {
        if (var_b1f98440) {
            self.origin = (self.origin[0], self.origin[1], parent.origin[2]);
        } else {
            self.origin = parent.origin;
        }
        self.origin += offset;
        waitframe(1);
    }
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 1, eflags: 0x2 linked
// Checksum 0xedb5e89e, Offset: 0x37d0
// Size: 0x76
function function_a8975c67(var_635abe53 = 0) {
    if (var_635abe53 == 0 & mayspawnentity()) {
        return true;
    }
    var_25384f8 = function_210c40b8() - var_635abe53;
    if (var_25384f8 > 0) {
        return true;
    }
    return false;
}

// Namespace namespace_ec06fe4a/namespace_ec06fe4a
// Params 0, eflags: 0x2 linked
// Checksum 0xb781363, Offset: 0x3850
// Size: 0x108
function function_ef369bae() {
    playercount = getplayers().size;
    if (!isdefined(level.doa.var_39459d49) || level.doa.var_39459d49 == 0) {
        level.doa.var_39459d49 = getplayers().size;
    }
    var_737826ee = math::clamp(level.doa.roundnumber, 1, level.doa.roundnumber);
    avg = math::clamp(level.doa.var_39459d49 / var_737826ee, playercount, 4);
    if (avg < playercount) {
        return playercount;
    }
    return avg;
}

