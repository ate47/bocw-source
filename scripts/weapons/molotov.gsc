// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\influencers_shared.gsc;
#using scripts\weapons\weapons.gsc;
#using scripts\weapons\weaponobjects.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\globallogic\globallogic_score.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\killcam_shared.gsc;
#using scripts\core_common\entityheadicons_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using script_396f7d71538c9677;
#using scripts\core_common\battlechatter.gsc;

#namespace molotov;

// Namespace molotov/molotov
// Params 0, eflags: 0x5
// Checksum 0xdf66bcc9, Offset: 0x240
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"molotov", &init_shared, undefined, undefined, undefined);
}

// Namespace molotov/molotov
// Params 0, eflags: 0x2 linked
// Checksum 0xb2e55ed6, Offset: 0x288
// Size: 0x12c
function init_shared() {
    params = getgametypesetting(#"hardcoremode") === 1 ? getstatuseffect("dot_molotov_hc") : getstatuseffect("dot_molotov");
    level.var_e6a4f161 = params.var_18d16a6b;
    level.var_5d450296 = params.setype;
    level.var_e8a6b3ee = [];
    level._effect[#"hash_31b6cc906e6d0ae0"] = #"hash_275ff19f0dcbb2a6";
    weaponobjects::function_e6400478(#"eq_molotov", &function_853f8cff, 1);
    status_effect::function_30e7d622(getweapon(#"molotov_fire"), "flakjacket");
}

// Namespace molotov/molotov
// Params 1, eflags: 0x2 linked
// Checksum 0xb91b5a58, Offset: 0x3c0
// Size: 0x22
function function_853f8cff(watcher) {
    watcher.onspawn.watcher = &function_f37c777a;
}

// Namespace molotov/molotov
// Params 2, eflags: 0x2 linked
// Checksum 0x52dd8a2a, Offset: 0x3f0
// Size: 0x9c
function function_f37c777a(*watcher, player) {
    player endon(#"death", #"disconnect");
    level endon(#"game_ended");
    player stats::function_e24eec31(self.weapon, #"used", 1);
    self thread function_1cdbb1e5(player, self.weapon);
}

// Namespace molotov/molotov
// Params 0, eflags: 0x2 linked
// Checksum 0x516154fd, Offset: 0x498
// Size: 0x2e
function function_bba54dca() {
    self waittill(#"death");
    waittillframeend();
    self notify(#"molotov_deleted");
}

// Namespace molotov/molotov
// Params 2, eflags: 0x2 linked
// Checksum 0xd07ef807, Offset: 0x4d0
// Size: 0x3ac
function function_1cdbb1e5(owner, weapon) {
    self endon(#"hacked", #"molotov_deleted");
    /#
        assert(isdefined(weapon.customsettings), "<unknown string>" + weapon.name);
    #/
    self thread function_bba54dca();
    team = self.team;
    var_3e7a440 = getscriptbundle(weapon.customsettings);
    killcament = spawn("script_model", self.origin);
    killcament util::deleteaftertime(var_3e7a440.var_b79d64a9 + 5);
    killcament.starttime.killcament = gettime();
    killcament linkto(self);
    killcament setweapon(self.weapon);
    killcament killcam::store_killcam_entity_on_entity(self);
    self thread function_71c73ece();
    waitresult = undefined;
    waitresult = self waittill(#"projectile_impact_explode", #"explode");
    if (waitresult._notify == "projectile_impact_explode") {
        if (isdefined(killcament)) {
            killcament unlink();
        }
        var_bd5f5c6c = !is_under_water(waitresult.position);
        if (var_bd5f5c6c) {
            normal = waitresult.normal;
            var_a0148c55 = bullettrace(self.origin, self.origin - vectorscale(normal, 4), 1, self);
            if (isplayer(var_a0148c55[#"entity"]) || isactor(var_a0148c55[#"entity"])) {
                explosionfx = #"hash_76c34cde560cd085";
                var_cb4f434e = 1;
            } else {
                explosionfx = #"hash_48ee6e0152301529";
                var_cb4f434e = 0;
            }
            velocity = vectornormalize(self.var_59ba00f5) * -1;
            angles = vectortoangles(velocity);
            playfx(explosionfx, self.origin, velocity, anglestoup(angles));
            function_462c8632(owner, waitresult.position, normal, self.var_59ba00f5, killcament, team, var_3e7a440, var_cb4f434e);
        }
    }
}

// Namespace molotov/molotov
// Params 8, eflags: 0x2 linked
// Checksum 0xf18733d7, Offset: 0x888
// Size: 0x94
function function_462c8632(owner, origin, normal, velocity, killcament, team, customsettings, var_cb4f434e = 0) {
    playsoundatposition("", origin);
    self thread function_e8ad1d81(origin, owner, normal, velocity, killcament, team, customsettings, var_cb4f434e);
}

// Namespace molotov/molotov
// Params 1, eflags: 0x2 linked
// Checksum 0x9c58f8ed, Offset: 0x928
// Size: 0x42
function is_under_water(position) {
    water_depth = getwaterheight(position) - position[2];
    return water_depth >= 24;
}

// Namespace molotov/molotov
// Params 1, eflags: 0x2 linked
// Checksum 0x80d853e4, Offset: 0x978
// Size: 0x24
function function_a66ba8cc(water_depth) {
    return 0 < water_depth && water_depth < 24;
}

// Namespace molotov/molotov
// Params 1, eflags: 0x2 linked
// Checksum 0xbae91a27, Offset: 0x9a8
// Size: 0x2c
function get_water_depth(position) {
    return getwaterheight(position) - position[2];
}

// Namespace molotov/molotov
// Params 0, eflags: 0x2 linked
// Checksum 0x9848a927, Offset: 0x9e0
// Size: 0x7a
function function_71c73ece() {
    self endon(#"projectile_impact_explode", #"death");
    while (1) {
        self.var_59ba00f5 = self getvelocity();
        wait(float(function_60d95f53()) / 1000);
    }
}

// Namespace molotov/molotov
// Params 1, eflags: 0x2 linked
// Checksum 0x7158e57e, Offset: 0xa68
// Size: 0x84
function function_7cbeb2f0(normal) {
    if (normal[2] < 0.5) {
        stepoutdistance = normal * getdvarint(#"hash_72463d6fcf7cb178", 50);
    } else {
        stepoutdistance = normal * getdvarint(#"hash_1423ebf820f9483f", 12);
    }
    return stepoutdistance;
}

// Namespace molotov/molotov
// Params 8, eflags: 0x2 linked
// Checksum 0xe90034ce, Offset: 0xaf8
// Size: 0x994
function function_e8ad1d81(position, owner, normal, velocity, killcament, team, customsettings, var_cb4f434e) {
    originalposition = position;
    var_493d36f9 = normal;
    var_77261b6 = vectornormalize(velocity);
    var_1f254a06 = vectorscale(var_77261b6, -1);
    var_d6d43109 = 1;
    var_e76400c0 = undefined;
    wallnormal = undefined;
    var_693f108f = undefined;
    var_aecaaa11 = getweapon(#"molotov_fire");
    var_5632b17 = getweapon("molotov_fire_wall");
    var_7bf146f2 = getweapon("molotov_steam");
    if (normal[2] < -0.5) {
        var_36c22d1d = position + vectorscale(normal, 2);
        var_8ae62b02 = var_36c22d1d - vectorscale((0, 0, 1), 240);
        var_69d15ad0 = physicstrace(var_36c22d1d, var_8ae62b02, vectorscale((-1, -1, -1), 0.5), vectorscale((1, 1, 1), 0.5), self, 1);
        if (var_69d15ad0[#"fraction"] < 1) {
            position = var_69d15ad0[#"position"];
            if (var_69d15ad0[#"fraction"] > 0) {
                normal = var_69d15ad0[#"normal"];
            } else {
                normal = (0, 0, 1);
            }
            var_1b1117c6 = 1.2 * var_69d15ad0[#"fraction"];
            var_1f254a06 = normal;
            if (var_1b1117c6 > 0) {
                wait(var_1b1117c6);
            }
        } else {
            return;
        }
    } else if (normal[2] < 0.5) {
        var_36c22d1d = position + vectorscale(var_493d36f9, 2);
        var_8ae62b02 = var_36c22d1d - vectorscale((0, 0, 1), 20);
        var_69d15ad0 = physicstrace(var_36c22d1d, var_8ae62b02, vectorscale((-1, -1, -1), 0.5), vectorscale((1, 1, 1), 0.5), self, 1);
        if (var_69d15ad0[#"fraction"] < 1) {
            position = var_36c22d1d;
            if (var_69d15ad0[#"fraction"] > 0) {
                normal = var_69d15ad0[#"normal"];
            } else {
                normal = (0, 0, 1);
            }
        }
    }
    if (normal[2] < 0.5) {
        wall_normal = normal;
        var_36c22d1d = originalposition + vectorscale(var_493d36f9, 8);
        var_8ae62b02 = var_36c22d1d - vectorscale((0, 0, 1), 300);
        var_69d15ad0 = physicstrace(var_36c22d1d, var_8ae62b02, vectorscale((-1, -1, -1), 3), vectorscale((1, 1, 1), 3), self, 1);
        var_693f108f = var_69d15ad0[#"fraction"] * 300;
        position = var_69d15ad0[#"position"];
        var_959a2a8b = 0;
        if (var_693f108f > 10) {
            var_e76400c0 = originalposition;
            wallnormal = var_493d36f9;
            var_d6d43109 = sqrt(1 - var_69d15ad0[#"fraction"]);
            var_85da99e6 = position + vectorscale((0, 0, 1), 32);
            var_9be8db01 = var_85da99e6 - vectorscale(var_493d36f9, 8);
            var_24066267 = physicstrace(var_85da99e6, var_9be8db01, vectorscale((-1, -1, -1), 3), vectorscale((1, 1, 1), 3), self, 1);
            if (var_24066267[#"fraction"] < 1) {
                var_959a2a8b = 1;
            }
        }
        if (var_69d15ad0[#"fraction"] < 1) {
            if (var_69d15ad0[#"fraction"] > 0) {
                normal = var_69d15ad0[#"normal"];
            } else {
                normal = (0, 0, 1);
            }
        }
        if (var_959a2a8b) {
            x = originalposition[0];
            y = originalposition[1];
            lowestz = var_69d15ad0[#"position"][2];
            z = originalposition[2];
            while (z > lowestz) {
                newpos = (x, y, z);
                water_depth = get_water_depth(newpos);
                if (function_a66ba8cc(water_depth) || is_under_water(newpos)) {
                    newpos = newpos - (0, 0, water_depth);
                    level thread function_42b9fdbe(var_7bf146f2, newpos, (0, 0, 1), int(customsettings.var_b79d64a9), team);
                    break;
                }
                level thread function_42b9fdbe(var_5632b17, newpos, wall_normal, int(customsettings.var_b79d64a9), team);
                z = z - randomintrange(20, 30);
            }
            var_bc9ec158 = 0.6 * var_69d15ad0[#"fraction"];
            if (var_bc9ec158 > 0) {
                wait(var_bc9ec158);
            }
        }
    }
    startpos = position + function_7cbeb2f0(normal);
    desiredendpos = startpos + vectorscale((0, 0, 1), 60);
    function_1493c734(startpos, 20, (0, 1, 0), 0.6, 200);
    phystrace = physicstrace(startpos, desiredendpos, vectorscale((-1, -1, -1), 4), vectorscale((1, 1, 1), 4), self, 1);
    goalpos = phystrace[#"fraction"] > 1 ? phystrace[#"position"] : desiredendpos;
    if (isdefined(killcament)) {
        killcament moveto(goalpos, 0.5);
    }
    rotation = randomint(360);
    if (normal[2] < 0.1 && !isdefined(var_e76400c0)) {
        black = vectorscale((1, 1, 1), 0.1);
        trace = hitpos(startpos, startpos + normal * -1 * 70 + (0, 0, -1) * 70, black);
        traceposition = trace[#"position"];
        if (trace[#"fraction"] < 0.9) {
            var_252a0dc7 = trace[#"normal"];
            spawntimedfx(var_5632b17, traceposition, var_252a0dc7, int(customsettings.var_b79d64a9), team);
        }
    }
    var_1f254a06 = normal;
    level function_8a03d3f3(owner, position, startpos, var_1f254a06, var_d6d43109, rotation, killcament, customsettings, team, var_e76400c0, wallnormal, var_693f108f, var_cb4f434e);
}

// Namespace molotov/molotov
// Params 7, eflags: 0x2 linked
// Checksum 0x2b8c2711, Offset: 0x1498
// Size: 0x8c
function function_523961e2(startpos, normal, var_4997e17c, fxindex, fxcount, defaultdistance, rotation) {
    currentangle = 360 / fxcount * fxindex;
    var_7ee25402 = rotatepointaroundaxis(var_4997e17c * defaultdistance, normal, currentangle + rotation);
    return startpos + var_7ee25402;
}

// Namespace molotov/molotov
// Params 0, eflags: 0x2 linked
// Checksum 0xf4a930d5, Offset: 0x1530
// Size: 0xe4
function function_31cc6bd9() {
    if (!isdefined(level.var_a88ac760)) {
        return;
    }
    keys = getarraykeys(level.var_a88ac760);
    time = gettime();
    foreach (key in keys) {
        if (level.var_a88ac760[key].var_46ee5246 < time) {
            level.var_a88ac760[key] = undefined;
        }
    }
}

// Namespace molotov/molotov
// Params 2, eflags: 0x2 linked
// Checksum 0x2bd511cb, Offset: 0x1620
// Size: 0xfe
function function_31f342a2(origin, var_9c7e3678) {
    if (!isdefined(level.var_a88ac760)) {
        return 0;
    }
    foreach (molotov in level.var_a88ac760) {
        if (abs(molotov.origin[2] - origin[2] > 20)) {
            continue;
        }
        if (distance2dsquared(molotov.origin, origin) < var_9c7e3678) {
            return 1;
        }
    }
    return 0;
}

// Namespace molotov/molotov
// Params 13, eflags: 0x2 linked
// Checksum 0x2fe2543e, Offset: 0x1728
// Size: 0xf00
function function_8a03d3f3(owner, impactpos, startpos, normal, multiplier, rotation, killcament, customsettings, team, var_e76400c0, wallnormal, var_693f108f, var_cb4f434e) {
    defaultdistance = customsettings.var_6193a41b * multiplier;
    defaultdropdistance = getdvarint(#"hash_4a8fc6d7cacea9d5", 90);
    colorarray = [];
    colorarray[colorarray.size] = (0.9, 0.2, 0.2);
    colorarray[colorarray.size] = (0.2, 0.9, 0.2);
    colorarray[colorarray.size] = (0.2, 0.2, 0.9);
    colorarray[colorarray.size] = vectorscale((1, 1, 1), 0.9);
    locations = [];
    locations[#"color"] = [];
    locations[#"loc"] = [];
    locations[#"tracepos"] = [];
    locations[#"distsqrd"] = [];
    locations[#"fxtoplay"] = [];
    locations[#"radius"] = [];
    locations[#"tallfire"] = [];
    locations[#"smallfire"] = [];
    locations[#"steam"] = [];
    fxcount = customsettings.var_b650dc43;
    var_33ad9452 = isdefined(customsettings.var_bc24d9d3) ? customsettings.var_bc24d9d3 : 0;
    fxcount = int(math::clamp(fxcount * multiplier + 6, 6, customsettings.var_b650dc43));
    if (multiplier < 0.04) {
        fxcount = 0;
    }
    function_31cc6bd9();
    if (function_31f342a2(startpos, function_a3f6cdac(customsettings.var_6193a41b * 1.5)) && fxcount > 10) {
        fxcount = 7;
    }
    var_4997e17c = perpendicularvector(normal);
    for (fxindex = 0; fxindex < fxcount; fxindex++) {
        locations[#"point"][fxindex] = function_523961e2(startpos, normal, var_4997e17c, fxindex, fxcount, defaultdistance, rotation);
        function_1493c734(locations[#"point"][fxindex], 10, (0, fxindex * 20, 0), 0.6, 200);
        locations[#"color"][fxindex] = colorarray[fxindex % colorarray.size];
    }
    var_1cac1ca8 = normal[2] > 0.5;
    for (count = 0; count < fxcount; count++) {
        trace = hitpos(startpos, locations[#"point"][count], locations[#"color"][count]);
        traceposition = trace[#"position"];
        locations[#"tracepos"][count] = traceposition;
        hitsomething = 0;
        if (trace[#"fraction"] < 0.7) {
            function_1493c734(traceposition, 10, (1, 0, 0), 0.6, 200);
            locations[#"loc"][count] = traceposition;
            locations[#"normal"][count] = trace[#"normal"];
            if (var_1cac1ca8) {
                locations[#"tallfire"][count] = 1;
            }
            hitsomething = 1;
        }
        if (!hitsomething) {
            var_e5d1793d = hitpos(traceposition, traceposition - normal * defaultdropdistance, locations[#"color"][count]);
            if (var_e5d1793d[#"fraction"] != 1) {
                function_1493c734(var_e5d1793d[#"position"], 10, (0, 0, 1), 0.6, 200);
                locations[#"loc"][count] = var_e5d1793d[#"position"];
                water_depth = get_water_depth(var_e5d1793d[#"position"]);
                if (function_a66ba8cc(water_depth)) {
                    locations[#"normal"][count] = (0, 0, 1);
                    locations[#"steam"][count] = 1;
                    locations[#"loc"][count] = locations[#"loc"][count] - (0, 0, water_depth);
                } else {
                    locations[#"normal"][count] = var_e5d1793d[#"normal"];
                    locations[#"smallfire"][count] = 1;
                }
            }
        }
        randangle = randomint(360);
        var_c4b09917 = randomfloatrange(-25, 25);
        var_7ee25402 = rotatepointaroundaxis(var_4997e17c, normal, randangle);
        var_995eb37a = int(min(var_33ad9452 * multiplier * trace[#"fraction"] + 1, var_33ad9452));
        for (var_ecef2fde = 0; var_ecef2fde < var_995eb37a && count % 2 == 0; var_ecef2fde++) {
            fraction = (var_ecef2fde + 1) / (var_995eb37a + 1);
            offsetpoint = startpos + (traceposition - startpos) * fraction + var_7ee25402 * var_c4b09917;
            var_9417df90 = hitpos(offsetpoint, offsetpoint - normal * defaultdropdistance, locations[#"color"][count]);
            if (var_9417df90[#"fraction"] != 1) {
                function_1493c734(var_9417df90[#"position"], 10, (0, 0, 1), 0.6, 200);
                locindex = count + fxcount * (var_ecef2fde + 1);
                locations[#"loc"][locindex] = var_9417df90[#"position"];
                water_depth = get_water_depth(var_9417df90[#"position"]);
                if (function_a66ba8cc(water_depth)) {
                    locations[#"normal"][locindex] = (0, 0, 1);
                    locations[#"steam"][locindex] = 1;
                    locations[#"loc"][locindex] = locations[#"loc"][locindex] - (0, 0, water_depth);
                } else {
                    locations[#"normal"][locindex] = var_9417df90[#"normal"];
                }
            }
        }
    }
    var_aecaaa11 = getweapon(#"molotov_fire");
    var_3cbce009 = getweapon("molotov_fire_tall");
    var_4a1b9411 = getweapon("molotov_fire_small");
    var_7bf146f2 = getweapon("molotov_steam");
    if (var_cb4f434e) {
        var_6b23e1c9 = hitpos(impactpos, impactpos - (0, 0, defaultdropdistance), (1, 0, 0))[#"position"];
    } else {
        var_6b23e1c9 = impactpos + normal * 1.5;
    }
    forward = (1, 0, 0);
    if (abs(vectordot(forward, normal)) > 0.999) {
        forward = (0, 0, 1);
    }
    if (!is_under_water(var_6b23e1c9)) {
        playfx(level._effect[#"hash_31b6cc906e6d0ae0"], var_6b23e1c9, forward, normal, 0, team);
        if (!isdefined(var_e76400c0)) {
            spawntimedfx(var_aecaaa11, var_6b23e1c9, normal, int(customsettings.var_b79d64a9), team);
        }
    }
    if (level.gameended) {
        return;
    }
    if (!isdefined(level.var_801fd65e)) {
        level.var_801fd65e = 0;
    }
    if (!isdefined(level.var_a88ac760)) {
        level.var_a88ac760 = [];
    }
    var_bf264593 = level.var_a88ac760.size;
    level.var_a88ac760[var_bf264593] = {};
    var_4b424bc1 = level.var_a88ac760[var_bf264593];
    var_4b424bc1.var_46ee5246.var_4b424bc1 = int(gettime() + customsettings.var_b79d64a9 * 1000);
    var_4b424bc1.origin = startpos;
    var_d58f4be = {};
    thread damageeffectarea(owner, startpos, killcament, normal, var_aecaaa11, customsettings, multiplier, var_e76400c0, wallnormal, var_693f108f, var_4b424bc1.var_46ee5246, var_d58f4be);
    thread function_9464e4ad(owner, startpos, killcament, var_aecaaa11, customsettings, multiplier, var_4b424bc1.var_46ee5246, var_d58f4be);
    var_b1dd2ca0 = getarraykeys(locations[#"loc"]);
    foreach (lockey in var_b1dd2ca0) {
        if (!isdefined(lockey)) {
            continue;
        }
        if (is_under_water(locations[#"loc"][lockey])) {
            continue;
        }
        if (isdefined(locations[#"smallfire"][lockey])) {
            fireweapon = var_4a1b9411;
        } else if (isdefined(locations[#"steam"][lockey])) {
            fireweapon = var_7bf146f2;
        } else {
            fireweapon = isdefined(locations[#"tallfire"][lockey]) ? var_3cbce009 : var_aecaaa11;
        }
        level thread function_42b9fdbe(fireweapon, locations[#"loc"][lockey], locations[#"normal"][lockey], int(customsettings.var_b79d64a9), team);
    }
}

// Namespace molotov/molotov
// Params 5, eflags: 0x2 linked
// Checksum 0x85655051, Offset: 0x2630
// Size: 0x7c
function function_42b9fdbe(weapon, loc, normal, duration, team) {
    fxnormal = normal;
    wait(randomfloatrange(0, 0.5));
    spawntimedfx(weapon, loc, fxnormal, duration, team);
}

// Namespace molotov/molotov
// Params 5, eflags: 0x0
// Checksum 0xeeb0eded, Offset: 0x26b8
// Size: 0xb4
function incendiary_debug_line(from, to, color, depthtest, time) {
    /#
        debug_rcbomb = getdvarint(#"scr_molotov_debug", 0);
        if (debug_rcbomb == 1) {
            if (!isdefined(time)) {
                time = 100;
            }
            if (!isdefined(depthtest)) {
                depthtest = 1;
            }
            line(from, to, color, 1, depthtest, time);
        }
    #/
}

// Namespace molotov/molotov
// Params 12, eflags: 0x6 linked
// Checksum 0xbf408cc7, Offset: 0x2778
// Size: 0x720
function private damageeffectarea(owner, position, killcament, *normal, weapon, customsettings, radius_multiplier, var_e76400c0, wallnormal, var_cbaaea69, damageendtime, var_d58f4be) {
    radius = customsettings.var_6193a41b * radius_multiplier;
    height = customsettings.var_cbd86f3e;
    if (sessionmodeiscampaigngame()) {
        duration = (damageendtime - gettime()) / 1000;
        badplace_cylinder("molotov", duration, killcament, radius + 30, height, "allies", "axis", "neutral");
    }
    trigger_radius_position = killcament - (0, 0, height);
    trigger_radius_height = height * 2;
    if (isdefined(var_e76400c0) && isdefined(wallnormal)) {
        var_21f4217c = var_e76400c0 + vectorscale(wallnormal, 12) - (0, 0, var_cbaaea69);
        var_289a74bc = spawn("trigger_radius", var_21f4217c, 0, 12, var_cbaaea69);
        var_d58f4be.var_289a74bc = var_289a74bc;
        /#
            if (getdvarint(#"scr_draw_triggers", 0)) {
                level thread drawcylinder(var_21f4217c, 12, var_cbaaea69, undefined, "<unknown string>", (1, 0, 0), 0.9);
            }
        #/
    }
    if (radius >= 0.04) {
        fireeffectarea = spawn("trigger_radius", trigger_radius_position, 0, radius, trigger_radius_height);
        var_d58f4be.fireeffectarea = fireeffectarea;
        firesound = spawn("script_origin", killcament + vectorscale((0, 0, 1), 15));
        if (isdefined(firesound)) {
            firesound playloopsound(#"hash_d2a83cecbfbd9e2");
        }
        level thread influencers::create_grenade_influencers(isdefined(position) ? position.team : undefined, weapon, fireeffectarea);
    }
    /#
        if (getdvarint(#"scr_draw_triggers", 0)) {
            level thread drawcylinder(trigger_radius_position, radius, trigger_radius_height, undefined, "<unknown string>");
        }
    #/
    self.var_ebf0b1c9 = [];
    burntime = 0;
    var_d0603aba = 1;
    originalteam = isdefined(position) ? position.team : undefined;
    while (gettime() < damageendtime && (!isdefined(position) || position.team == originalteam) && level.gameended !== 1) {
        potential_targets = self getpotentialtargets(position, customsettings);
        if (isdefined(position)) {
            position.var_52dceca.position = [];
        }
        foreach (target in potential_targets) {
            self trytoapplyfiredamage(target, position, killcament, fireeffectarea, var_289a74bc, normal, weapon, customsettings);
        }
        if (isdefined(position)) {
            var_2d3611fa = position.var_52dceca.size;
            if (var_2d3611fa > 0 && burntime < gettime()) {
                scoreevents::processscoreevent(#"hash_1343f5418bd52c6c", position, undefined, weapon, var_2d3611fa);
                burntime = gettime() + int(customsettings.var_5c06ec56 * 1000);
            }
            if (var_d0603aba) {
                var_9194a036 = battlechatter::mpdialog_value("molotovSuccessLineCount", 0);
                if (var_2d3611fa >= (isdefined(var_9194a036) ? var_9194a036 : 3)) {
                    position battlechatter::play_gadget_success(weapon);
                }
            }
            if (var_d0603aba) {
                var_d0603aba = 0;
            }
        }
        wait(customsettings.var_90bd7d92);
    }
    arrayremovevalue(self.var_ebf0b1c9, undefined);
    foreach (target in self.var_ebf0b1c9) {
        target.var_84e41b20 = undefined;
        target status_effect::function_408158ef(level.var_5d450296, level.var_e6a4f161);
    }
    if (isdefined(position)) {
        position.var_52dceca.position = [];
    }
    if (isdefined(normal)) {
        normal entityheadicons::destroyentityheadicons();
    }
    if (isdefined(fireeffectarea)) {
        fireeffectarea delete();
        if (isdefined(firesound)) {
            firesound thread stopfiresound();
        }
    }
    if (isdefined(var_289a74bc)) {
        var_289a74bc delete();
    }
    /#
        if (getdvarint(#"scr_draw_triggers", 0)) {
            level notify(#"hash_33d328e380ab0acc");
        }
    #/
}

// Namespace molotov/molotov
// Params 0, eflags: 0x2 linked
// Checksum 0xf0919dd3, Offset: 0x2ea0
// Size: 0x54
function stopfiresound() {
    firesound = self;
    firesound stoploopsound(2);
    wait(0.5);
    if (isdefined(firesound)) {
        firesound delete();
    }
}

// Namespace molotov/molotov
// Params 8, eflags: 0x6 linked
// Checksum 0x8ba9b9e9, Offset: 0x2f00
// Size: 0x2fc
function private function_9464e4ad(owner, position, killcament, weapon, customsettings, radius_multiplier, damageendtime, var_d58f4be) {
    level endon(#"game_ended");
    radius = customsettings.var_6193a41b * radius_multiplier;
    height = customsettings.var_cbd86f3e;
    self.var_ebf0b1c9 = [];
    if (isdefined(level.var_31179876)) {
        self thread [[ level.var_31179876 ]](damageendtime, owner, position, var_d58f4be.fireeffectarea, var_d58f4be.var_289a74bc, killcament, weapon, customsettings);
    } else {
        self thread function_f8f4d9fc(damageendtime, owner, position, var_d58f4be.fireeffectarea, var_d58f4be.var_289a74bc, killcament, weapon, customsettings);
    }
    while (gettime() < damageendtime) {
        potential_targets = self weapons::function_356292be(owner, position, radius);
        foreach (target in potential_targets) {
            if (!isdefined(target)) {
                continue;
            }
            if (isactor(target)) {
                continue;
            }
            self trytoapplyfiredamage(target, owner, position, var_d58f4be.fireeffectarea, var_d58f4be.var_289a74bc, killcament, weapon, customsettings);
        }
        wait(customsettings.var_8fbd03cb);
    }
    arrayremovevalue(self.var_ebf0b1c9, undefined);
    foreach (target in self.var_ebf0b1c9) {
        target.var_84e41b20 = undefined;
        target status_effect::function_408158ef(level.var_5d450296, level.var_e6a4f161);
    }
    if (isdefined(owner)) {
        owner globallogic_score::function_d3ca3608(#"hash_468ad9ee571cf1c6");
    }
}

// Namespace molotov/molotov
// Params 8, eflags: 0x6 linked
// Checksum 0x927b5286, Offset: 0x3208
// Size: 0x120
function private function_f8f4d9fc(damageendtime, owner, position, fireeffectarea, var_289a74bc, killcament, weapon, customsettings) {
    while (gettime() < damageendtime) {
        potential_targets = getaiarray();
        foreach (target in potential_targets) {
            if (!isdefined(target)) {
                continue;
            }
            self trytoapplyfiredamage(target, owner, position, fireeffectarea, var_289a74bc, killcament, weapon, customsettings);
        }
        wait(customsettings.var_4bf1fc1f);
    }
}

// Namespace molotov/molotov
// Params 2, eflags: 0x2 linked
// Checksum 0x2a5b50a0, Offset: 0x3330
// Size: 0x346
function getpotentialtargets(owner, customsettings) {
    owner_team = isdefined(owner) ? owner.team : undefined;
    if (level.teambased && isdefined(owner_team) && level.friendlyfire == 0) {
        potential_targets = [];
        foreach (team, _ in level.teams) {
            if (customsettings.var_14e16318 === 1 || util::function_fbce7263(team, owner_team)) {
                potential_targets = arraycombine(potential_targets, getplayers(team), 0, 0);
                continue;
            }
        }
        if (is_true(customsettings.var_4e1d1f97)) {
            if (!isdefined(potential_targets)) {
                potential_targets = [];
            } else if (!isarray(potential_targets)) {
                potential_targets = array(potential_targets);
            }
            if (!isinarray(potential_targets, owner)) {
                potential_targets[potential_targets.size] = owner;
            }
        }
        return potential_targets;
    }
    all_targets = [];
    all_targets = arraycombine(all_targets, level.players, 0, 0);
    if (level.friendlyfire > 0) {
        return all_targets;
    }
    potential_targets = [];
    foreach (target in all_targets) {
        if (!isdefined(target)) {
            continue;
        }
        if (!isdefined(target.team)) {
            continue;
        }
        if (isdefined(owner)) {
            if (target != owner) {
                if (!isdefined(owner_team)) {
                    continue;
                }
                if (!util::function_fbce7263(target.team, owner_team)) {
                    continue;
                }
            }
        } else {
            if (!isdefined(self)) {
                continue;
            }
            if (!isdefined(self.team)) {
                continue;
            }
            if (!util::function_fbce7263(target.team, self.team)) {
                continue;
            }
        }
        potential_targets[potential_targets.size] = target;
    }
    return potential_targets;
}

// Namespace molotov/molotov
// Params 8, eflags: 0x2 linked
// Checksum 0x79e8a07d, Offset: 0x3680
// Size: 0x35c
function trytoapplyfiredamage(target, owner, position, fireeffectarea, var_289a74bc, killcament, weapon, customsettings) {
    if (!(isdefined(fireeffectarea) || isdefined(var_289a74bc)) || target.var_8ef7113a === 1) {
        return;
    }
    var_4c3c1b32 = 0;
    var_75046efd = 0;
    sourcepos = position;
    if (isdefined(fireeffectarea)) {
        var_4c3c1b32 = target istouching(fireeffectarea);
        sourcepos = fireeffectarea.origin;
    }
    if (isdefined(var_289a74bc)) {
        var_75046efd = target istouching(var_289a74bc);
        sourcepos = var_289a74bc.origin;
    }
    var_be45d685 = !(var_4c3c1b32 || var_75046efd);
    targetentnum = target getentitynumber();
    if (!var_be45d685 && (!isdefined(target.sessionstate) || target.sessionstate == "playing")) {
        trace = bullettrace(position, target getshootatpos(), 0, target);
        if (trace[#"fraction"] == 1) {
            if (isplayer(target)) {
                target thread damageinfirearea(sourcepos, killcament, weapon, customsettings, owner);
                if (isdefined(owner) && util::function_fbce7263(target.team, owner.team)) {
                    owner.var_52dceca[targetentnum] = target;
                }
            } else if (isactor(target)) {
                target thread function_8422dabd(killcament, weapon, customsettings, owner);
            } else {
                target thread function_37ddab3(killcament, weapon, customsettings, owner);
            }
            self.var_ebf0b1c9[targetentnum] = target;
        } else {
            var_be45d685 = 1;
        }
    }
    if (var_be45d685 && isdefined(target.var_84e41b20) && isplayer(target)) {
        if (target.var_84e41b20.size == 0) {
            target.var_84e41b20 = undefined;
            target status_effect::function_408158ef(level.var_5d450296, level.var_e6a4f161);
            self.var_ebf0b1c9[targetentnum] = undefined;
        } else if (isdefined(killcament)) {
            target.var_84e41b20[killcament.starttime] = undefined;
        }
        if (isdefined(owner)) {
            owner.var_52dceca[targetentnum] = undefined;
        }
    }
}

// Namespace molotov/molotov
// Params 5, eflags: 0x6 linked
// Checksum 0xb0673954, Offset: 0x39e8
// Size: 0x1cc
function private damageinfirearea(origin, killcament, weapon, customsettings, owner) {
    self endon(#"death");
    if (candofiredamage(killcament, self, customsettings.var_90bd7d92)) {
        /#
            level.molotov_debug = getdvarint(#"scr_molotov_debug", 0);
            if (level.molotov_debug) {
                if (!isdefined(level.incendiarydamagetime)) {
                    level.incendiarydamagetime = gettime();
                }
                iprintlnbold(level.incendiarydamagetime - gettime());
                level.incendiarydamagetime = gettime();
            }
        #/
        var_4dd4e6ee = owner;
        if (!isdefined(self.var_84e41b20)) {
            self.var_84e41b20 = [];
        }
        if (isdefined(killcament)) {
            self.var_84e41b20[killcament.starttime] = 1;
        }
        params = level.hardcoremode === 1 ? getstatuseffect("dot_molotov_hc") : getstatuseffect("dot_molotov");
        params.killcament = killcament;
        self status_effect::status_effect_apply(params, weapon, owner, 0, undefined, undefined, origin);
        self.var_ae639436 = var_4dd4e6ee;
        self thread sndfiredamage();
    }
}

// Namespace molotov/molotov
// Params 4, eflags: 0x6 linked
// Checksum 0xa36cc916, Offset: 0x3bc0
// Size: 0x19a
function private function_8422dabd(killcament, weapon, customsettings, owner) {
    self endon(#"death");
    if (candofiredamage(killcament, self, customsettings.var_4bf1fc1f)) {
        var_4dd4e6ee = owner;
        if (!isdefined(self.var_84e41b20)) {
            self.var_84e41b20 = [];
        }
        if (isdefined(killcament)) {
            self.var_84e41b20[killcament.starttime] = 1;
        }
        var_341dfe48 = int(customsettings.var_ba904176 * customsettings.var_4bf1fc1f);
        self dodamage(var_341dfe48, self.origin, owner, weapon, "none", "MOD_BURNED", 0, weapon);
        /#
            time = gettime();
            var_4b6c578e = self getentitynumber();
            println("<unknown string>" + var_4b6c578e + "<unknown string>" + string(var_341dfe48) + "<unknown string>" + time);
        #/
        self.var_ae639436 = var_4dd4e6ee;
    }
}

// Namespace molotov/molotov
// Params 4, eflags: 0x6 linked
// Checksum 0xce9f29d3, Offset: 0x3d68
// Size: 0x11a
function private function_37ddab3(killcament, weapon, customsettings, owner) {
    self endon(#"death");
    if (candofiredamage(killcament, self, customsettings.var_8fbd03cb)) {
        var_4dd4e6ee = owner;
        if (!isdefined(self.var_84e41b20)) {
            self.var_84e41b20 = [];
        }
        if (isdefined(killcament)) {
            self.var_84e41b20[killcament.starttime] = 1;
        }
        var_341dfe48 = int(customsettings.var_4931651e * customsettings.var_8fbd03cb);
        self dodamage(var_341dfe48, self.origin, owner, weapon, "none", "MOD_BURNED", 0, weapon);
        self.var_ae639436 = var_4dd4e6ee;
    }
}

// Namespace molotov/molotov
// Params 0, eflags: 0x2 linked
// Checksum 0x905fcb25, Offset: 0x3e90
// Size: 0x1a6
function sndfiredamage() {
    self notify(#"sndfire");
    self endon(#"sndfire", #"death", #"disconnect");
    if (!isdefined(self.sndfireent)) {
        if (isdefined(self gettagorigin("j_head"))) {
            self.sndfireent = spawn("script_origin", self gettagorigin("j_head"));
        } else {
            self.sndfireent = spawn("script_origin", self.origin);
        }
        self.sndfireent linkto(self);
        self.sndfireent playsound(#"chr_burn_start");
        self thread sndfiredamage_deleteent(self.sndfireent);
    }
    self.sndfireent playloopsound(#"chr_burn_start_loop", 0.5);
    wait(3);
    if (isdefined(self.sndfireent)) {
        self.sndfireent delete();
        self.sndfireent = undefined;
    }
}

// Namespace molotov/molotov
// Params 1, eflags: 0x2 linked
// Checksum 0x21648c09, Offset: 0x4040
// Size: 0x4c
function sndfiredamage_deleteent(ent) {
    self waittill(#"death", #"disconnect");
    if (isdefined(ent)) {
        ent delete();
    }
}

// Namespace molotov/molotov
// Params 3, eflags: 0x2 linked
// Checksum 0xb1ae4245, Offset: 0x4098
// Size: 0xe0
function hitpos(start, end, color) {
    trace = bullettrace(start, end, 0, undefined);
    /#
        level.molotov_debug = getdvarint(#"scr_molotov_debug", 0);
        if (level.molotov_debug) {
            debugstar(trace[#"position"], 2000, color);
        }
        thread incendiary_debug_line(start, trace[#"position"], color, 1, 80);
    #/
    return trace;
}

// Namespace molotov/molotov
// Params 3, eflags: 0x2 linked
// Checksum 0xf1ccfd76, Offset: 0x4180
// Size: 0xc4
function candofiredamage(*killcament, victim, resetfiretime) {
    if (isplayer(victim) && victim depthofplayerinwater() >= 1) {
        return 0;
    }
    entnum = victim getentitynumber();
    if (!isdefined(level.var_e8a6b3ee[entnum])) {
        level.var_e8a6b3ee[entnum] = 1;
        level thread resetfiredamage(entnum, resetfiretime);
        return 1;
    }
    return 0;
}

// Namespace molotov/molotov
// Params 2, eflags: 0x2 linked
// Checksum 0xd0f92fdb, Offset: 0x4250
// Size: 0x7c
function resetfiredamage(entnum, time) {
    if (time > 0.05) {
        wait(time - 0.05);
    }
    level.var_e8a6b3ee[entnum] = undefined;
    /#
        current_time = gettime();
        println("<unknown string>" + entnum + "<unknown string>" + current_time);
    #/
}

// Namespace molotov/molotov
// Params 5, eflags: 0x2 linked
// Checksum 0xa967710c, Offset: 0x42d8
// Size: 0xac
function function_1493c734(origin, radius, color, alpha, time) {
    /#
        debug_fire = getdvarint(#"hash_58042b6209e0c2a6", 0);
        if (debug_fire > 0) {
            if (debug_fire > 1) {
                radius = int(radius / debug_fire);
            }
            debug_sphere(origin, radius, color, alpha, time);
        }
    #/
}
