// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\territory_util.gsc;
#using script_3e196d275a6fb180;
#using script_491ff5a2ba670762;
#using script_335d0650ed05d36d;
#using script_44b0b8420eabacad;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\map.gsc;
#using scripts\core_common\influencers_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\oob.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace spawning;

// Namespace spawning/namespace_ade8eb98
// Params 0, eflags: 0x2 linked
// Checksum 0x7d9ad59e, Offset: 0x150
// Size: 0xd4
function function_d0149d6b() {
    assert(isdefined(level.spawnsystem));
    if (!isdefined(level.spawnsystem.var_bfd7cd96)) {
        level.spawnsystem.var_bfd7cd96 = &function_4fe2525a;
    }
    if (!isdefined(level.supportedspawntypes)) {
        level.supportedspawntypes = [];
    }
    mapbundle = map::get_script_bundle();
    if (isdefined(mapbundle) && isdefined(mapbundle.var_2feed9e4)) {
        setdvar(#"spawnsystem_sight_check_max_distance", mapbundle.var_2feed9e4);
    }
}

// Namespace spawning/namespace_ade8eb98
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x230
// Size: 0x4
function clear_spawn_points() {
    
}

// Namespace spawning/namespace_ade8eb98
// Params 1, eflags: 0x2 linked
// Checksum 0x34e38d0c, Offset: 0x240
// Size: 0x4a
function function_32b97d1b(callbackfunction) {
    if (!isdefined(level.spawnsystem)) {
        level.spawnsystem = spawnstruct();
    }
    level.spawnsystem.var_bfd7cd96 = callbackfunction;
}

// Namespace spawning/namespace_ade8eb98
// Params 1, eflags: 0x2 linked
// Checksum 0xb2edf719, Offset: 0x298
// Size: 0x4a
function function_adbbb58a(callbackfunction) {
    if (!isdefined(level.spawnsystem)) {
        level.spawnsystem = spawnstruct();
    }
    level.spawnsystem.var_adbbb58a = callbackfunction;
}

// Namespace spawning/namespace_ade8eb98
// Params 0, eflags: 0x0
// Checksum 0x808e8dc2, Offset: 0x2f0
// Size: 0x10
function function_c40af6fa() {
    level.supportedspawntypes = [];
}

// Namespace spawning/namespace_ade8eb98
// Params 1, eflags: 0x2 linked
// Checksum 0x187a9477, Offset: 0x308
// Size: 0xb2
function function_d3d4ff67(spawn) {
    foreach (var_a24ffdcc in level.supportedspawntypes) {
        supportedspawntype = var_a24ffdcc.type;
        if (function_82ca1565(spawn, supportedspawntype)) {
            return true;
        }
    }
    return false;
}

// Namespace spawning/namespace_ade8eb98
// Params 1, eflags: 0x2 linked
// Checksum 0x3e960b12, Offset: 0x3c8
// Size: 0xd2
function function_7309b6b3(spawn) {
    if (!isdefined(level.supportedspawntypes)) {
        level.supportedspawntypes = [];
    }
    foreach (var_a24ffdcc in level.supportedspawntypes) {
        supportedspawntype = var_a24ffdcc.type;
        if (function_82ca1565(spawn, supportedspawntype)) {
            return true;
        }
    }
    return false;
}

// Namespace spawning/namespace_ade8eb98
// Params 2, eflags: 0x2 linked
// Checksum 0xfe652980, Offset: 0x4a8
// Size: 0x8c
function addsupportedspawnpointtype(spawnpointtype, team) {
    if (!isdefined(level.supportedspawntypes)) {
        level.supportedspawntypes = [];
    }
    var_79942a82 = spawnstruct();
    var_79942a82.type = spawnpointtype;
    if (isdefined(team)) {
        var_79942a82.team = team;
    }
    array::add(level.supportedspawntypes, var_79942a82);
}

// Namespace spawning/namespace_ade8eb98
// Params 1, eflags: 0x2 linked
// Checksum 0xef81107a, Offset: 0x540
// Size: 0xd2
function function_b404fc61(rawspawns) {
    if (isdefined(level.spawnsystem.var_adbbb58a)) {
        validspawns = [];
        foreach (spawn in rawspawns) {
            if (![[ level.spawnsystem.var_adbbb58a ]](spawn)) {
                validspawns[validspawns.size] = spawn;
            }
        }
        rawspawns = validspawns;
    }
    return rawspawns;
}

// Namespace spawning/namespace_ade8eb98
// Params 0, eflags: 0x2 linked
// Checksum 0xfeafbd6f, Offset: 0x620
// Size: 0x22
function function_4fe2525a() {
    return struct::get_array("mp_spawn_point", "targetname");
}

// Namespace spawning/namespace_ade8eb98
// Params 1, eflags: 0x2 linked
// Checksum 0xe5bb61c, Offset: 0x650
// Size: 0x294
function function_beae80f9(rawspawns) {
    rawspawns = function_b404fc61(rawspawns);
    var_2014d551 = [];
    var_f152fde5 = [];
    var_22a1f7c8 = [];
    foreach (spawn in rawspawns) {
        if (!isdefined(spawn.group_index)) {
            spawn.group_index = 0;
        }
        if (!function_7309b6b3(spawn)) {
            continue;
        }
        if (oob::chr_party(spawn.origin) && territory::is_inside(spawn.origin)) {
            continue;
        }
        if (!isdefined(var_2014d551[spawn.group_index])) {
            var_2014d551[spawn.group_index] = [];
        }
        if (!isdefined(var_f152fde5[spawn.group_index])) {
            var_f152fde5[spawn.group_index] = [];
        }
        if (!isdefined(var_22a1f7c8[spawn.group_index])) {
            var_22a1f7c8[spawn.group_index] = [];
        }
        if (is_true(spawn._human_were)) {
            array::add(var_f152fde5[spawn.group_index], spawn);
        } else {
            array::add(var_2014d551[spawn.group_index], spawn);
        }
        if (is_true(spawn.var_4a7883fa)) {
            array::add(var_22a1f7c8[spawn.group_index], spawn);
        }
    }
    function_4277fa85(var_2014d551, "auto_normal");
    function_4277fa85(var_f152fde5, "start_spawn");
    function_4277fa85(var_22a1f7c8, "hq");
}

// Namespace spawning/namespace_ade8eb98
// Params 2, eflags: 0x6 linked
// Checksum 0x8a1759f7, Offset: 0x8f0
// Size: 0xf8
function private function_4277fa85(spawnpoints, var_6de73ddb) {
    spawngroups = getarraykeys(spawnpoints);
    foreach (groupindex in spawngroups) {
        function_923afc2e(spawnpoints[groupindex]);
        var_4a4a963a = function_3ea24e49(groupindex);
        addspawnpoints(var_4a4a963a, spawnpoints[groupindex], var_6de73ddb);
    }
}

// Namespace spawning/namespace_ade8eb98
// Params 0, eflags: 0x2 linked
// Checksum 0xbcbd57cf, Offset: 0x9f0
// Size: 0xe4
function addspawns() {
    clearspawnpoints("auto_normal");
    clearspawnpoints("fallback");
    rawspawns = [[ level.spawnsystem.var_bfd7cd96 ]]();
    if (isdefined(rawspawns)) {
        function_beae80f9(rawspawns);
    }
    function_100e84f();
    function_fbff01ea();
    calculate_map_center();
    spawnpoint = get_random_intermission_point();
    setdemointermissionpoint(spawnpoint.origin, spawnpoint.angles);
}

// Namespace spawning/namespace_ade8eb98
// Params 0, eflags: 0x2 linked
// Checksum 0x92cc86a6, Offset: 0xae0
// Size: 0x1d4
function function_b4f071cd() {
    var_ba7cd990 = struct::get(#"hash_3ccb068cc20d10fb");
    var_3ab559fb = struct::get(#"hash_2a16a120d7d497f0");
    if (!isdefined(var_ba7cd990) || !isdefined(var_3ab559fb)) {
        println("<unknown string>");
        return;
    }
    spawns = function_82061144("start_spawn", #"allies");
    if (spawns.size == 0) {
        println("<unknown string>");
        return;
    }
    var_bbd0ce18 = distancesquared(spawns[0].origin, var_ba7cd990.origin);
    var_1f5969dc = distancesquared(spawns[0].origin, var_3ab559fb.origin);
    if (var_bbd0ce18 < var_1f5969dc) {
        var_ba7cd990.team = #"allies";
        var_3ab559fb.team = #"axis";
    } else {
        var_3ab559fb.team = #"allies";
        var_ba7cd990.team = #"axis";
    }
    util::function_c77e4851(var_ba7cd990.team, var_3ab559fb.team);
}

