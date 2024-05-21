// Atian COD Tools GSC CW decompiler test
#using script_76983b49bef66b2e;
#using script_3d173c89c2828216;
#using script_2c052d834cd7619a;
#using script_717759a5d2a40e63;
#using script_abb3791af68bace;
#using script_3d5e6c007c0e2bb1;
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_350cffecd05ef6cf;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
#using scripts\core_common\ai\systems\shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_5d515bd5;

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 0, eflags: 0x2 linked
// Checksum 0xa0f7442f, Offset: 0x358
// Size: 0xa6
function init() {
    clientfield::register("actor", "clone_activated", 1, 1, "int");
    clientfield::register("actor", "clone_damaged", 1, 1, "int");
    clientfield::register("allplayers", "clone_activated", 1, 1, "int");
    level.doa.clones = [];
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 0, eflags: 0x2 linked
// Checksum 0x32f0b705, Offset: 0x408
// Size: 0x154
function function_60c2247c() {
    self notify("7e7583031d63abc7");
    self endon("7e7583031d63abc7");
    self endon(#"disconnect");
    self clientfield::set("clone_activated", 1);
    self flag::set(#"clone_activated");
    self namespace_83eb6304::function_3ecfde67("clone_appear");
    self thread function_f9d22968();
    timeout = self namespace_1c2a96f9::function_4808b985(25);
    level waittilltimeout(timeout, #"doa_exit_taken");
    self clientfield::set("clone_activated", 0);
    self flag::clear(#"clone_activated");
    self function_a7a144f0(self);
    self function_b400bcb1();
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 1, eflags: 0x2 linked
// Checksum 0xbf5141a4, Offset: 0x568
// Size: 0xce
function function_a7a144f0(player) {
    if (isdefined(player.doa.clones)) {
        foreach (clone in player.doa.clones) {
            if (isdefined(clone)) {
                clone notify(#"clone_shutdown");
            }
        }
    }
    player.doa.clones = [];
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 0, eflags: 0x2 linked
// Checksum 0xe1f6f59a, Offset: 0x640
// Size: 0x2c
function is_jumping() {
    ground_ent = self getgroundent();
    return !isdefined(ground_ent);
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 3, eflags: 0x2 linked
// Checksum 0xb2a17ce7, Offset: 0x678
// Size: 0x3fa
function function_bd34685d(origin, angles, var_91e0802f) {
    player = self;
    startangles = [];
    testangles = [];
    testangles[0] = (0, 0, 0);
    testangles[1] = (0, -30, 0);
    testangles[2] = (0, 30, 0);
    testangles[3] = (0, -60, 0);
    testangles[4] = (0, 60, 0);
    testangles[5] = (0, 90, 0);
    testangles[6] = (0, -90, 0);
    testangles[7] = (0, 120, 0);
    testangles[8] = (0, -120, 0);
    testangles[9] = (0, 150, 0);
    testangles[10] = (0, -150, 0);
    testangles[11] = (0, 180, 0);
    validspawns = spawnstruct();
    validpositions = [];
    var_e9fa8058 = [];
    var_c78218d5 = [];
    var_c78218d5[0] = 5;
    var_c78218d5[1] = 0;
    if (player is_jumping()) {
        var_c78218d5[2] = -5;
    }
    foreach (var_9e563db1 in var_c78218d5) {
        for (i = 0; i < testangles.size; i++) {
            startangles[i] = (0, angles[1], 0);
            startpoint = origin + vectorscale(anglestoforward(startangles[i] + testangles[i]), var_91e0802f);
            startpoint += (0, 0, var_9e563db1);
            if (playerpositionvalidignoreent(startpoint, self)) {
                var_4c85436b = getclosestpointonnavmesh(startpoint, 500);
                if (isdefined(var_4c85436b)) {
                    startpoint = var_4c85436b;
                    trace = groundtrace(startpoint + (0, 0, 24), startpoint - (0, 0, 24), 0, 0, 0);
                    if (isdefined(trace[#"position"])) {
                        startpoint = trace[#"position"];
                    }
                }
                validpositions[validpositions.size] = startpoint;
                var_e9fa8058[var_e9fa8058.size] = startangles[i] + testangles[i];
                if (var_e9fa8058.size == 3) {
                    break;
                }
            }
        }
        if (var_e9fa8058.size == 3) {
            break;
        }
    }
    validspawns.validpositions = validpositions;
    validspawns.var_e9fa8058 = var_e9fa8058;
    return validspawns;
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 1, eflags: 0x2 linked
// Checksum 0x6a02183c, Offset: 0xa80
// Size: 0x144
function function_4e0fa155(clone) {
    if (!isdefined(self.doa.clones)) {
        self.doa.clones = [];
    }
    if (isdefined(self) && isplayer(self)) {
        self.doa.clones[self.doa.clones.size] = clone;
    }
    var_329388c = 0;
    for (i = 0; i < 12; i++) {
        if (!isdefined(level.doa.clones[i])) {
            level.doa.clones[i] = clone;
            var_329388c = 1;
            /#
                namespace_1e25ad94::debugmsg("<unknown string>" + i + "<unknown string>" + level.doa.clones.size);
            #/
            break;
        }
    }
    assert(var_329388c);
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 1, eflags: 0x2 linked
// Checksum 0xea4c69a1, Offset: 0xbd0
// Size: 0xf0
function function_34038097(clone) {
    for (i = 0; i < 12; i++) {
        if (isdefined(level.doa.clones[i]) && level.doa.clones[i] == clone) {
            level.doa.clones[i] = undefined;
            arrayremovevalue(level.doa.clones, undefined);
            /#
                namespace_1e25ad94::debugmsg("<unknown string>" + i + "<unknown string>" + level.doa.clones.size);
            #/
            break;
        }
    }
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 0, eflags: 0x2 linked
// Checksum 0xd4a8aa42, Offset: 0xcc8
// Size: 0x1cc
function function_56d29b42() {
    assert(level.doa.clones.size == 12);
    var_c81221ac = undefined;
    for (i = 0; i < 12; i++) {
        if (!isdefined(var_c81221ac) && isdefined(level.doa.clones[i])) {
            var_c81221ac = level.doa.clones[i];
            oldestindex = i;
            continue;
        }
        if (isdefined(level.doa.clones[i]) && level.doa.clones[i].spawntime < var_c81221ac.spawntime) {
            var_c81221ac = level.doa.clones[i];
            oldestindex = i;
        }
    }
    /#
        namespace_1e25ad94::debugmsg("<unknown string>" + i + "<unknown string>" + level.doa.clones.size);
    #/
    level.doa.clones[oldestindex] notify(#"clone_shutdown");
    level.doa.clones[oldestindex] = undefined;
    arrayremovevalue(level.doa.clones, undefined);
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 0, eflags: 0x2 linked
// Checksum 0x52f65f73, Offset: 0xea0
// Size: 0x38
function function_cb30c0aa() {
    while (level.doa.clones.size >= 12) {
        function_56d29b42();
    }
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 0, eflags: 0x2 linked
// Checksum 0x4ccd2ef5, Offset: 0xee0
// Size: 0x4c2
function function_f9d22968() {
    self endon(#"disconnect", #"player_died");
    self function_a7a144f0(self);
    timeout = self namespace_1c2a96f9::function_4808b985(25);
    velocity = self getvelocity();
    velocity += (0, 0, velocity[2] * -1);
    velocity = vectornormalize(velocity);
    origin = self.origin + velocity * 17 + vectorscale(anglestoforward(self getangles()), 17);
    validspawns = function_bd34685d(origin, self getangles(), 300);
    if (validspawns.validpositions.size < 3) {
        var_262ce494 = function_bd34685d(origin, self getangles(), 900);
        for (index = 0; index < var_262ce494.validpositions.size && validspawns.validpositions.size < 3; index++) {
            validspawns.validpositions[validspawns.validpositions.size] = var_262ce494.validpositions[index];
            validspawns.var_e9fa8058[validspawns.var_e9fa8058.size] = var_262ce494.var_e9fa8058[index];
        }
    }
    for (i = 0; i < validspawns.validpositions.size; i++) {
        traveldistance = distance(validspawns.validpositions[i], self.origin);
        validspawns.spawntimes[i] = traveldistance / 200;
        self thread function_7e6356ef(validspawns.validpositions[i], validspawns.spawntimes[i]);
    }
    for (i = 0; i < validspawns.validpositions.size; i++) {
        function_cb30c0aa();
        clone = spawnactor("spawner_zombietron_hat_clone", validspawns.validpositions[i], validspawns.var_e9fa8058[i], "", 1);
        if (!isdefined(clone)) {
            continue;
        }
        clone thread namespace_ec06fe4a::function_203591b7(self, "disconnect", "clone_shutdown");
        clone thread namespace_ec06fe4a::function_203591b7(level, "arena_completed", "clone_shutdown");
        clone thread namespace_ec06fe4a::function_203591b7(level, "game_over", "clone_shutdown");
        clone thread namespace_ec06fe4a::function_52afe5df(timeout + 2);
        clone.team = self.team;
        clone.var_c497caa3 = 1;
        function_241f12a1(clone, self);
        clone pathmode("move delayed", 1, validspawns.spawntimes[i]);
        clone.var_539ad42b = 1;
        clone.doa = spawnstruct();
        clone.doa.var_484cc88b = 0;
        self thread function_5d01145(clone, self, anglestoforward(validspawns.var_e9fa8058[i]), validspawns.spawntimes[i]);
        self function_4e0fa155(clone);
        waitframe(1);
    }
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 1, eflags: 0x6 linked
// Checksum 0x38e91242, Offset: 0x13b0
// Size: 0x3e8
function private _updateclonepathing(player) {
    self endon(#"death");
    var_81ef612a = self.origin;
    self.lastknownpos = self.origin;
    self.lastknownpostime = gettime();
    while (true) {
        if (self.origin[2] + 36 <= getwaterheight(self.origin)) {
            self setblackboardattribute("_stance", "swim");
            self setgoal(var_81ef612a, 1);
            wait(1);
            continue;
        } else {
            self setblackboardattribute("_stance", "stand");
        }
        if (distancesquared(self.lastknownpos, self.origin) < sqr(24) && !self haspath()) {
            self setblackboardattribute("_stance", "crouch");
            wait(0.5);
            continue;
        }
        if (self.lastknownpostime + 2000 <= gettime()) {
            self.lastknownpos = self.origin;
            self.lastknownpostime = gettime();
        }
        if (isdefined(player)) {
            self.var_ef51fb4c = player.origin;
        }
        distance = 0;
        if (isdefined(self.var_ef51fb4c)) {
            distance = distancesquared(self.var_ef51fb4c, self.origin);
        }
        if (distance > sqr(120) || !self haspath()) {
            if (isdefined(player)) {
                forward = anglestoforward(player getangles());
            } else {
                forward = anglestoforward(self getangles());
            }
            searchorigin = self.origin + forward * 256;
            self._goal_center_point = searchorigin;
            queryresult = positionquery_source_navigation(self._goal_center_point, 128, 256, 256, 100, self);
            if (queryresult.data.size == 0) {
                queryresult = positionquery_source_navigation(self.origin, 128, 256, 256, 100, self);
            }
            if (queryresult.data.size > 0) {
                randindex = randomintrange(0, queryresult.data.size);
                self setgoal(queryresult.data[randindex].origin, 1);
                self.var_ef51fb4c = queryresult.data[randindex].origin;
                self.var_49e3c1d3 = 256;
            }
        }
        wait(1.5);
    }
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 2, eflags: 0x2 linked
// Checksum 0x2caec976, Offset: 0x17a0
// Size: 0x124
function function_7e6356ef(endpos, traveltime) {
    spawnpos = self gettagorigin("j_spine4");
    if (!isdefined(spawnpos)) {
        return;
    }
    fxorg = namespace_ec06fe4a::spawnmodel(spawnpos, "tag_origin");
    if (!isdefined(fxorg)) {
        return;
    }
    fxorg namespace_83eb6304::function_3ecfde67("clone_orb");
    var_ab91afbe = endpos + (0, 0, 35);
    fxorg moveto(var_ab91afbe, traveltime);
    self waittilltimeout(traveltime, #"player_died", #"disconnect");
    if (isdefined(self)) {
        self notify(#"hash_5f82250ecd4b484c");
    }
    fxorg delete();
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 2, eflags: 0x2 linked
// Checksum 0x3f7be6e1, Offset: 0x18d0
// Size: 0x44
function function_241f12a1(clone, player) {
    clone namespace_7f5aeb59::function_12bdee53(clone, player);
    clone namespace_7f5aeb59::function_31df67c1(player);
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 4, eflags: 0x6 linked
// Checksum 0x523cf5c3, Offset: 0x1920
// Size: 0x3ec
function private function_5d01145(clone, player, forward, spawntime) {
    player endon(#"disconnect");
    clone.isaiclone = 1;
    clone.ignoretriggerdamage = 1;
    clone.minwalkdistance = 125;
    clone.overrideactordamage = &clonedamageoverride;
    clone.spawntime = gettime();
    clone setmaxhealth(600);
    if (isdefined(clone.pathablematerial)) {
        clone.pathablematerial &= ~2;
    }
    clone collidewithactors(1);
    clone pushplayer(1);
    clone setcontents(8192);
    clone setavoidancemask("avoid none");
    clone asmsetanimationrate(randomfloatrange(0.98, 1.02));
    clone setclone();
    clone thread function_227f283d(player);
    clone thread function_1b998c04();
    clone._goal_center_point = forward * 1000 + clone.origin;
    clone._goal_center_point = getclosestpointonnavmesh(clone._goal_center_point, 600);
    queryresult = undefined;
    if (isdefined(clone._goal_center_point) && clone findpath(clone.origin, clone._goal_center_point, 1, 0)) {
        queryresult = positionquery_source_navigation(clone._goal_center_point, 0, 450, 450, 100, clone);
    } else {
        queryresult = positionquery_source_navigation(clone.origin, 128, 256, 256, 50, clone);
    }
    if (queryresult.data.size > 0) {
        clone setgoal(queryresult.data[0].origin, 1);
        clone.var_ef51fb4c = queryresult.data[0].origin;
        clone.var_49e3c1d3 = 450;
    } else {
        clone._goal_center_point = clone.origin;
    }
    clone namespace_ec06fe4a::function_8c808737();
    clone thread function_d1b2df66(spawntime, player);
    result = clone waittilltimeout(spawntime + 0.5, #"hash_21a476934a4bd2ba", #"clone_shutdown", #"death");
    if (result._notify != #"clone_shutdown") {
        _configurecloneteam(clone, player, 0);
        clone thread _updateclonepathing(player);
    }
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 0, eflags: 0x6 linked
// Checksum 0x571649e0, Offset: 0x1d18
// Size: 0x4c
function private function_b400bcb1() {
    if (isdefined(self)) {
        self namespace_83eb6304::function_3ecfde67("clone_vanish");
        self namespace_e32bb68::function_3a59ec34("evt_doa_pickup_magichat_clone_disappear");
    }
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 2, eflags: 0x0
// Checksum 0xedc216b4, Offset: 0x1d70
// Size: 0x3c
function function_e04252ed(player, ishacked = 0) {
    _configurecloneteam(self, player, ishacked);
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 3, eflags: 0x6 linked
// Checksum 0x2a84796f, Offset: 0x1db8
// Size: 0xd4
function private _configurecloneteam(clone, player, ishacked) {
    if (!isdefined(clone) || !isdefined(player)) {
        return;
    }
    if (ishacked == 0) {
        clone.originalteam = player.team;
    }
    clone val::set(#"hash_41154f7fe6ac52b6", "ignoreall", 1);
    clone.owner = player;
    clone setteam(player.team);
    clone.team = player.team;
    clone setentityowner(player);
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 2, eflags: 0x6 linked
// Checksum 0x9373968f, Offset: 0x1e98
// Size: 0x24e
function private function_d1b2df66(spawntime, player) {
    self endon(#"death", #"clone_shutdown");
    wait(spawntime);
    self namespace_ec06fe4a::function_4f72130c();
    roll = randomint(6);
    switch (roll) {
    case 0:
        self thread namespace_dcd37093::function_d28e9b17();
        break;
    case 1:
        level thread namespace_7da86f3c::function_eeb092f5(self);
        break;
    case 2:
        self thread namespace_5f74ac47::function_f44fbe7c();
        break;
    case 3:
        self thread namespace_9038b9d9::function_6ec0595a();
        break;
    case 4:
        self thread namespace_bf41daf8::barrelupdate();
        break;
    case 5:
        self thread namespace_52ba5a8a::sawbladeupdate();
        break;
    }
    if (self.var_539ad42b === 1) {
        self clientfield::set("clone_activated", 1);
    }
    self namespace_e32bb68::function_3a59ec34("evt_doa_pickup_magichat_clone_appear");
    self namespace_83eb6304::function_3ecfde67("clone_appear");
    if (isdefined(player)) {
        self.color = player.doa.color;
        self namespace_83eb6304::function_3ecfde67("player_trail_" + self.color);
    }
    self notify(#"hash_21a476934a4bd2ba");
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 0, eflags: 0x2 linked
// Checksum 0x52af8a7f, Offset: 0x20f0
// Size: 0x7e
function function_504b77c8() {
    self endon(#"death");
    self clientfield::set("clone_damaged", 1);
    util::wait_network_frame();
    self clientfield::set("clone_damaged", 0);
    self notify(#"clone_shutdown");
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 16, eflags: 0x2 linked
// Checksum 0xdb507c7a, Offset: 0x2178
// Size: 0xbe
function clonedamageoverride(*einflictor, eattacker, *idamage, *idflags, *smeansofdeath, *weapon, *var_fd90b0bb, *vpoint, *vdir, *shitloc, *vdamageorigin, *timeoffset, *boneindex, *modelindex, *surfacetype, *surfacenormal) {
    if (isdefined(surfacenormal) && surfacenormal.team !== self.team) {
        self thread function_504b77c8();
    }
    return false;
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 1, eflags: 0x2 linked
// Checksum 0x81594aa8, Offset: 0x2240
// Size: 0x80
function function_227f283d(player) {
    self notify("10138ae7d107b523");
    self endon("10138ae7d107b523");
    clone = self;
    clone endon(#"clone_shutdown");
    player waittill(#"disconnect");
    if (isdefined(clone)) {
        clone notify(#"clone_shutdown");
    }
}

// Namespace namespace_5d515bd5/namespace_515a5054
// Params 0, eflags: 0x2 linked
// Checksum 0x43683380, Offset: 0x22c8
// Size: 0x13c
function function_1b998c04() {
    clone = self;
    clone waittill(#"clone_shutdown", #"death");
    clone notify(#"hash_1e2c098e8231a30f");
    clone notify(#"hash_3e2226cc328d43a7");
    clone notify(#"hash_5c1fd96dc1cc50e7");
    clone notify(#"hash_1c99dfc5992f1a01");
    if (isdefined(clone)) {
        if (isdefined(clone.color)) {
            clone namespace_83eb6304::turnofffx("player_trail_" + clone.color);
        }
        clone function_b400bcb1();
        function_34038097(clone);
        util::wait_network_frame();
        if (isdefined(clone)) {
            clone delete();
        }
    }
}

