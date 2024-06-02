// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\territory_util.gsc;
#using script_335d0650ed05d36d;
#using script_7d712f77ab8d0c16;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\influencers_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace spawning;

// Namespace spawning/namespace_48f955ce
// Params 0, eflags: 0x2 linked
// Checksum 0xa83c607b, Offset: 0x158
// Size: 0x11c
function calculate_map_center() {
    if (isdefined(level.mapcenter)) {
        return;
    }
    if (!function_5abfedf7("auto_normal")) {
        return;
    }
    var_7465f696 = function_92f03095("auto_normal");
    level.spawnmins = var_7465f696[#"mins"];
    level.spawnmaxs = var_7465f696[#"maxs"];
    level.mapbounds.var_1d694d71 = var_7465f696[#"mins"];
    level.mapbounds.var_a13a9915 = var_7465f696[#"maxs"];
    level.mapbounds.center = var_7465f696[#"center"];
    level.mapcenter = var_7465f696[#"center"];
    setmapcenter(level.mapcenter);
}

// Namespace spawning/namespace_48f955ce
// Params 0, eflags: 0x0
// Checksum 0xaadfad36, Offset: 0x280
// Size: 0x3a
function function_1bc642b7() {
    if (game.switchedsides == 0) {
        return false;
    }
    if (level.spawnsystem.var_3709dc53 == 0) {
        return true;
    }
    return false;
}

// Namespace spawning/namespace_48f955ce
// Params 3, eflags: 0x2 linked
// Checksum 0xab912d86, Offset: 0x2c8
// Size: 0xba
function get_spawnpoint_random(spawnpoints, predictedspawn, isintermissionspawn = 0) {
    if (!isdefined(spawnpoints)) {
        return undefined;
    }
    for (i = 0; i < spawnpoints.size; i++) {
        j = randomint(spawnpoints.size);
        spawnpoint = spawnpoints[i];
        spawnpoints[i] = spawnpoints[j];
        spawnpoints[j] = spawnpoint;
    }
    return get_spawnpoint_final(spawnpoints, predictedspawn, isintermissionspawn);
}

// Namespace spawning/namespace_48f955ce
// Params 3, eflags: 0x2 linked
// Checksum 0x5cad0bc, Offset: 0x390
// Size: 0x250
function get_spawnpoint_final(spawnpoints, predictedspawn, isintermmissionspawn = 0) {
    var_e627dced = &positionwouldtelefrag;
    if (isdefined(level.var_79f19f00)) {
        var_e627dced = level.var_79f19f00;
    }
    bestspawnpoint = undefined;
    if (!isdefined(spawnpoints) || spawnpoints.size == 0) {
        return undefined;
    }
    if (!isdefined(predictedspawn)) {
        predictedspawn = 0;
    }
    if (isdefined(self.lastspawnpoint) && self.lastspawnpoint.lastspawnpredicted && !predictedspawn && !isintermmissionspawn && (!isdefined(self.var_7007b746) || !self.var_7007b746)) {
        if (![[ var_e627dced ]](self.lastspawnpoint.origin)) {
            bestspawnpoint = self.lastspawnpoint;
        }
    }
    if (!isdefined(bestspawnpoint)) {
        for (i = 0; i < spawnpoints.size; i++) {
            if (isdefined(self.lastspawnpoint) && self.lastspawnpoint == spawnpoints[i] && !self.lastspawnpoint.lastspawnpredicted) {
                continue;
            }
            if ([[ var_e627dced ]](spawnpoints[i].origin)) {
                continue;
            }
            bestspawnpoint = spawnpoints[i];
            break;
        }
    }
    if (!isdefined(bestspawnpoint)) {
        if (isdefined(self.lastspawnpoint) && ![[ var_e627dced ]](self.lastspawnpoint.origin)) {
            for (i = 0; i < spawnpoints.size; i++) {
                if (spawnpoints[i] == self.lastspawnpoint) {
                    bestspawnpoint = spawnpoints[i];
                    break;
                }
            }
        }
    }
    if (!isdefined(bestspawnpoint)) {
        bestspawnpoint = spawnpoints[0];
    }
    self finalize_spawnpoint_choice(bestspawnpoint, predictedspawn);
    return bestspawnpoint;
}

// Namespace spawning/namespace_48f955ce
// Params 0, eflags: 0x2 linked
// Checksum 0x6bd85019, Offset: 0x5e8
// Size: 0xf2
function get_random_intermission_point() {
    spawnpoints = [];
    if (isdefined(level.var_b65f1e4)) {
        spawnpoints = [[ level.var_b65f1e4 ]]();
    }
    if (!spawnpoints.size) {
        spawnpoints = get_spawnpoint_array("mp_global_intermission");
    }
    if (!spawnpoints.size) {
        spawnpoints = get_spawnpoint_array("cp_global_intermission");
    }
    if (!spawnpoints.size) {
        spawnpoints = get_spawnpoint_array("info_player_start");
    }
    assert(spawnpoints.size);
    spawnpoint = get_spawnpoint_random(spawnpoints, undefined, 1);
    return spawnpoint;
}

// Namespace spawning/namespace_48f955ce
// Params 2, eflags: 0x2 linked
// Checksum 0x1899141a, Offset: 0x6e8
// Size: 0x6a
function finalize_spawnpoint_choice(spawnpoint, predictedspawn) {
    time = gettime();
    self.lastspawnpoint = spawnpoint;
    self.lastspawntime = time;
    self.var_7007b746 = 0;
    spawnpoint.lastspawnedplayer = self;
    spawnpoint.lastspawntime = time;
    spawnpoint.lastspawnpredicted = predictedspawn;
}

// Namespace spawning/namespace_48f955ce
// Params 4, eflags: 0x0
// Checksum 0x1d4ea5cf, Offset: 0x760
// Size: 0x196
function move_spawn_point(var_75347e0b, start_point, new_point, new_angles) {
    targetnamearray = [];
    if (isarray(var_75347e0b)) {
        targetnamearray = var_75347e0b;
    } else {
        if (!isdefined(targetnamearray)) {
            targetnamearray = [];
        } else if (!isarray(targetnamearray)) {
            targetnamearray = array(targetnamearray);
        }
        targetnamearray[targetnamearray.size] = var_75347e0b;
    }
    foreach (targetname in targetnamearray) {
        spawn_points = get_spawnpoint_array(targetname);
        for (i = 0; i < spawn_points.size; i++) {
            if (distancesquared(spawn_points[i].origin, start_point) < 1) {
                spawn_points[i].origin = new_point;
                if (isdefined(new_angles)) {
                    spawn_points[i].angles = new_angles;
                }
            }
        }
    }
}

// Namespace spawning/namespace_48f955ce
// Params 2, eflags: 0x2 linked
// Checksum 0xa7c43e31, Offset: 0x900
// Size: 0x16a
function get_spawnpoint_array(classname, include_disabled = 0) {
    spawn_points = struct::get_array(classname, "targetname");
    if (!include_disabled && getdvarint(#"spawnsystem_use_code_point_enabled", 0) == 0) {
        enabled_spawn_points = [];
        foreach (spawn_point in spawn_points) {
            if (!is_true(spawn_point.disabled)) {
                if (!isdefined(enabled_spawn_points)) {
                    enabled_spawn_points = [];
                } else if (!isarray(enabled_spawn_points)) {
                    enabled_spawn_points = array(enabled_spawn_points);
                }
                enabled_spawn_points[enabled_spawn_points.size] = spawn_point;
            }
        }
        spawn_points = enabled_spawn_points;
    }
    return spawn_points;
}

// Namespace spawning/namespace_48f955ce
// Params 1, eflags: 0x0
// Checksum 0x67e77280, Offset: 0xa78
// Size: 0x9c
function drop_spawn_points(spawnpointname) {
    spawnpoints = get_spawnpoint_array(spawnpointname);
    if (!spawnpoints.size) {
        println("<unknown string>" + spawnpointname + "<unknown string>");
        return;
    }
    for (index = 0; index < spawnpoints.size; index++) {
        placespawnpoint(spawnpoints[index]);
    }
}

// Namespace spawning/namespace_48f955ce
// Params 2, eflags: 0x2 linked
// Checksum 0xffa59ad1, Offset: 0xb20
// Size: 0x984
function function_82ca1565(spawnpoint, gametype) {
    switch (gametype) {
    case #"base":
        return (isdefined(spawnpoint.base) && spawnpoint.base);
    case #"ffa":
        return (isdefined(spawnpoint.ffa) && spawnpoint.ffa);
    case #"sd":
        return (isdefined(spawnpoint.sd) && spawnpoint.sd);
    case #"ctf":
        return (isdefined(spawnpoint.ctf) && spawnpoint.ctf);
    case #"dom":
        return (isdefined(spawnpoint.domination) && spawnpoint.domination);
    case #"dem":
        return (isdefined(spawnpoint.demolition) && spawnpoint.demolition);
    case #"gg":
        return (isdefined(spawnpoint.gg) && spawnpoint.gg);
    case #"tdm":
        return (isdefined(spawnpoint.tdm) && spawnpoint.tdm);
    case #"infil":
        return (isdefined(spawnpoint.infiltration) && spawnpoint.infiltration);
    case #"control":
        return (isdefined(spawnpoint.control) && spawnpoint.control);
    case #"uplink":
        return (isdefined(spawnpoint.uplink) && spawnpoint.uplink);
    case #"kc":
        return (isdefined(spawnpoint.kc) && spawnpoint.kc);
    case #"koth":
        return (isdefined(spawnpoint.hardpoint) && spawnpoint.hardpoint);
    case #"frontline":
        return (isdefined(spawnpoint.frontline) && spawnpoint.frontline);
    case #"dom_flag_a":
        return (isdefined(spawnpoint.domination_flag_a) && spawnpoint.domination_flag_a);
    case #"dom_flag_b":
        return (isdefined(spawnpoint.domination_flag_b) && spawnpoint.domination_flag_b);
    case #"dom_flag_c":
        return (isdefined(spawnpoint.domination_flag_c) && spawnpoint.domination_flag_c);
    case #"hash_6da017d055932bbd":
        return (isdefined(spawnpoint.var_99227e72) && spawnpoint.var_99227e72);
    case #"hash_6da016d055932a0a":
        return (isdefined(spawnpoint.var_6cd325d0) && spawnpoint.var_6cd325d0);
    case #"hash_6da015d055932857":
        return (isdefined(spawnpoint.var_991d7e64) && spawnpoint.var_991d7e64);
    case #"hash_6056c310624d5afd":
        return (isdefined(spawnpoint.demolition_attacker_a) && spawnpoint.demolition_attacker_a);
    case #"hash_6056c010624d55e4":
        return (isdefined(spawnpoint.demolition_attacker_b) && spawnpoint.demolition_attacker_b);
    case #"hash_6ef2d89ce8ee9a32":
        return (isdefined(spawnpoint.demolition_remove_a) && spawnpoint.demolition_remove_a);
    case #"hash_6ef2d79ce8ee987f":
        return (isdefined(spawnpoint.demolition_remove_b) && spawnpoint.demolition_remove_b);
    case #"dem_overtime":
        return (isdefined(spawnpoint.demolition_overtime) && spawnpoint.demolition_overtime);
    case #"hash_7cb9d0a58715cebe":
        return (isdefined(spawnpoint.demolition_start_spawn) && spawnpoint.demolition_start_spawn);
    case #"hash_6d83e5f1bdefa7dd":
        return (isdefined(spawnpoint.demolition_defender_a) && spawnpoint.demolition_defender_a);
    case #"hash_6d83e2f1bdefa2c4":
        return (isdefined(spawnpoint.demolition_defender_b) && spawnpoint.demolition_defender_b);
    case #"control_attack_add_0":
        return (isdefined(spawnpoint.control_attack_add_a) && spawnpoint.control_attack_add_a);
    case #"control_attack_add_1":
        return (isdefined(spawnpoint.control_attack_add_b) && spawnpoint.control_attack_add_b);
    case #"control_attack_remove_0":
        return (isdefined(spawnpoint.control_attack_remove_a) && spawnpoint.control_attack_remove_a);
    case #"control_attack_remove_1":
        return (isdefined(spawnpoint.control_attack_remove_b) && spawnpoint.control_attack_remove_b);
    case #"control_defend_add_0":
        return (isdefined(spawnpoint.registerlast_mapshouldstun) && spawnpoint.registerlast_mapshouldstun);
    case #"control_defend_add_1":
        return (isdefined(spawnpoint.control_defend_add_b) && spawnpoint.control_defend_add_b);
    case #"control_defend_remove_0":
        return (isdefined(spawnpoint.control_defend_remove_a) && spawnpoint.control_defend_remove_a);
    case #"control_defend_remove_1":
        return (isdefined(spawnpoint.control_defend_remove_b) && spawnpoint.control_defend_remove_b);
    case #"ct":
        return (isdefined(spawnpoint.ct) && spawnpoint.ct);
    case #"escort":
        return (isdefined(spawnpoint.escort) && spawnpoint.escort);
    case #"bounty":
        return (isdefined(spawnpoint.bounty) && spawnpoint.bounty);
    case #"fireteam":
        return is_true(spawnpoint.fireteam);
    case #"vip":
        return is_true(spawnpoint.vip);
    case #"war":
        return is_true(spawnpoint.war);
    case #"dropkick":
        return is_true(spawnpoint.dropkick);
    case #"hash_35b3b60f0a291417":
        return is_true(spawnpoint.var_3cb82e5e);
    case #"hash_450dd6aacc69e524":
        return is_true(spawnpoint.var_d8e690f8);
    case #"hash_42f07692f7d48364":
        return is_true(spawnpoint.var_3d72e6da);
    case #"spy":
        return is_true(spawnpoint.spy);
    default:
        assertmsg("<unknown string>" + gametype + "<unknown string>" + spawnpoint.origin[0] + "<unknown string>" + spawnpoint.origin[1] + "<unknown string>" + spawnpoint.origin[2]);
        break;
    }
    return 0;
}

// Namespace spawning/namespace_48f955ce
// Params 1, eflags: 0x2 linked
// Checksum 0xf7c99061, Offset: 0x14b0
// Size: 0xc2
function is_spawn_trapped(team) {
    if (!level.rankedmatch) {
        return false;
    }
    if (level.spawnsystem.spawntraptriggertime == 0) {
        return false;
    }
    if (isdefined(level.alivetimesaverage) && isdefined(level.alivetimesaverage[team]) && level.alivetimesaverage[team] != 0 && level.alivetimesaverage[team] < int(level.spawnsystem.spawntraptriggertime * 1000)) {
        return true;
    }
    return false;
}

// Namespace spawning/namespace_48f955ce
// Params 2, eflags: 0x2 linked
// Checksum 0x82c4822, Offset: 0x1580
// Size: 0x7e
function function_e1a7c3d9(spawn_origin, spawn_angles) {
    var_50747a19 = spawn_origin + (0, 0, 60);
    self predictspawnpoint(var_50747a19, spawn_angles);
    self.predicted_spawn_point = {#origin:var_50747a19, #angles:spawn_angles};
}

// Namespace spawning/namespace_48f955ce
// Params 1, eflags: 0x2 linked
// Checksum 0x163f8a74, Offset: 0x1608
// Size: 0x44
function function_754c78a6(func_callback) {
    if (!isdefined(level.var_811300ad)) {
        level.var_811300ad = [];
    }
    array::add(level.var_811300ad, func_callback);
}

// Namespace spawning/namespace_48f955ce
// Params 1, eflags: 0x0
// Checksum 0xeace7b25, Offset: 0x1658
// Size: 0xe2
function function_4c00b132(func_callback) {
    assert(isdefined(level.var_811300ad) && level.var_811300ad.size, "<unknown string>");
    foreach (index, func in level.var_811300ad) {
        if (func == func_callback) {
            arrayremoveindex(level.var_811300ad, index, 0);
            return;
        }
    }
}

// Namespace spawning/namespace_48f955ce
// Params 1, eflags: 0x2 linked
// Checksum 0x144b0fe3, Offset: 0x1748
// Size: 0xc4
function function_a782529(e_player) {
    var_8bfdbbee = [];
    foreach (func in level.var_811300ad) {
        var_ee69d92d = [[ func ]](e_player);
        if (isdefined(var_ee69d92d)) {
            array::add(var_8bfdbbee, var_ee69d92d);
        }
    }
    return var_8bfdbbee;
}

// Namespace spawning/namespace_48f955ce
// Params 0, eflags: 0x2 linked
// Checksum 0xbdef7752, Offset: 0x1818
// Size: 0x46
function usestartspawns() {
    if (is_true(level.alwaysusestartspawns)) {
        return true;
    }
    if (!is_true(level.usestartspawns)) {
        return false;
    }
    return true;
}

// Namespace spawning/namespace_48f955ce
// Params 0, eflags: 0x2 linked
// Checksum 0x5e0fa6d5, Offset: 0x1868
// Size: 0x10
function function_7a87efaa() {
    level.usestartspawns = 0;
}

// Namespace spawning/namespace_48f955ce
// Params 0, eflags: 0x2 linked
// Checksum 0x941c0af3, Offset: 0x1880
// Size: 0x14
function function_6325a7c5() {
    level.usestartspawns = 1;
}

// Namespace spawning/namespace_48f955ce
// Params 1, eflags: 0x2 linked
// Checksum 0xc396e8c3, Offset: 0x18a0
// Size: 0x90
function function_923afc2e(spawnpointarray) {
    foreach (spawn in spawnpointarray) {
        placespawnpoint(spawn);
    }
}

// Namespace spawning/namespace_48f955ce
// Params 1, eflags: 0x2 linked
// Checksum 0x8b5a9c9c, Offset: 0x1938
// Size: 0x6c
function function_3ea24e49(team) {
    var_f1072cd3 = team;
    if (game.switchedsides && (team == 2 || team == 1)) {
        var_f1072cd3 = team == 1 ? 2 : 1;
    }
    return var_f1072cd3;
}

// Namespace spawning/namespace_48f955ce
// Params 3, eflags: 0x0
// Checksum 0x24f68026, Offset: 0x19b0
// Size: 0x2cc
function function_fac242d0(var_9be0d23f, var_f64fe0e3, var_efb263ee) {
    spawns = struct::get_array("mp_spawn_point", "targetname");
    var_a6155878 = [];
    foreach (spawn in spawns) {
        for (index = 0; index < var_9be0d23f; index++) {
            key = var_f64fe0e3 + index;
            if (is_true(spawn.(key))) {
                if (!isdefined(var_a6155878[index])) {
                    var_a6155878[index] = [];
                }
                if (!isdefined(var_a6155878[index][spawn.group_index])) {
                    var_a6155878[index][spawn.group_index] = [];
                } else if (!isarray(var_a6155878[index][spawn.group_index])) {
                    var_a6155878[index][spawn.group_index] = array(var_a6155878[index][spawn.group_index]);
                }
                var_a6155878[index][spawn.group_index][var_a6155878[index][spawn.group_index].size] = spawn;
            }
        }
    }
    var_3d07f18c = getarraykeys(var_a6155878);
    for (index = 0; index < var_3d07f18c.size; index++) {
        var_49c85f88 = var_3d07f18c[index];
        spawnlistname = [[ var_efb263ee ]](var_49c85f88);
        var_f3ec1a55 = getarraykeys(var_a6155878[var_49c85f88]);
        for (teamindex = 0; teamindex < var_f3ec1a55.size; teamindex++) {
            var_b2b02f12 = var_f3ec1a55[teamindex];
            var_598298ff = var_a6155878[var_49c85f88][var_b2b02f12];
            addspawnpoints(var_b2b02f12, var_598298ff, spawnlistname);
        }
    }
}

// Namespace spawning/namespace_48f955ce
// Params 0, eflags: 0x2 linked
// Checksum 0xd08fefc, Offset: 0x1c88
// Size: 0x122
function function_90dee50d() {
    var_637da63f = [];
    spawns = function_4fe2525a();
    foreach (spawn in spawns) {
        if (!territory::is_valid(spawn)) {
            continue;
        }
        if (territory::is_inside(spawn.origin)) {
            if (!isdefined(var_637da63f)) {
                var_637da63f = [];
            } else if (!isarray(var_637da63f)) {
                var_637da63f = array(var_637da63f);
            }
            var_637da63f[var_637da63f.size] = spawn;
        }
    }
    return var_637da63f;
}

// Namespace spawning/namespace_48f955ce
// Params 1, eflags: 0x2 linked
// Checksum 0x58dc8f4c, Offset: 0x1db8
// Size: 0x44
function function_c24e290c(spawn) {
    if (!territory::is_valid(spawn)) {
        return false;
    }
    return !territory::is_inside(spawn.origin);
}

// Namespace spawning/namespace_48f955ce
// Params 0, eflags: 0x2 linked
// Checksum 0x2d2500e5, Offset: 0x1e08
// Size: 0x32
function function_daa5852f() {
    if (level.var_f2814a96 === 0 || level.var_f2814a96 === 2) {
        return true;
    }
    return false;
}

