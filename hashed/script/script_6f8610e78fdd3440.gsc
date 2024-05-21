// Atian COD Tools GSC CW decompiler test
#using script_7b68dad851540de;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_5cd4acd8;

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 0, eflags: 0x2 linked
// Checksum 0x25e2a0f7, Offset: 0x158
// Size: 0xca
function init_hunt_regions() {
    if (!(isdefined(level.hunt_region_load) && isdefined(level.stealth.hunt_stealth_group_region_sets))) {
        level.hunt_region_load = spawnstruct();
        inithuntregiondata();
    }
    if (isdefined(level.stealth)) {
        assert(isdefined(level.hunt_region_load) && isdefined(level.hunt_region_load.hunt_stealth_group_region_sets));
        level.stealth.hunt_stealth_group_region_sets = level.hunt_region_load.hunt_stealth_group_region_sets;
        level.hunt_region_load = undefined;
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 4, eflags: 0x2 linked
// Checksum 0x65b53ac5, Offset: 0x230
// Size: 0x386
function findnextpointofinterest(curpos, region, var_5a990e80, bforward = 1) {
    var_9a135fe4 = var_5a990e80;
    checkpos = curpos;
    dist = min(region.bfs_distance, 3);
    var_9da4df29 = 48 * (1 + dist);
    var_aea7aa5b = 84 * (1 + dist);
    while (bforward && var_9a135fe4 < region.route_points.size || !bforward && var_9a135fe4 >= 0) {
        var_84ee6edd = region.route_points[var_9a135fe4].origin;
        smartobj = self smart_object::function_a49ba261(checkpos, var_84ee6edd, region, undefined, var_9da4df29, var_aea7aa5b, 0);
        if (isdefined(smartobj)) {
            var_640dd14c = checkpos;
            if (bforward && var_9a135fe4 - 1 >= 0) {
                var_640dd14c = region.route_points[var_9a135fe4 - 1].origin;
            } else if (!bforward && var_9a135fe4 + 1 < region.route_points.size) {
                var_640dd14c = region.route_points[var_9a135fe4 + 1].origin;
            }
            starttoend = var_84ee6edd - var_640dd14c;
            var_e15dea17 = length(starttoend);
            starttoend /= var_e15dea17;
            var_acb91842 = var_9a135fe4 == var_5a990e80 && (var_5a990e80 == 0 && bforward || var_5a990e80 == region.route_points.size && !bforward);
            result = [];
            result[0] = smartobj;
            result[1] = var_9a135fe4;
            if (var_acb91842 || vectordot(starttoend, smartobj.origin - var_640dd14c) > var_e15dea17 - 24) {
                if (bforward) {
                    result[1] = var_9a135fe4 + 1;
                } else {
                    result[1] = var_9a135fe4 - 1;
                }
            }
            return result;
        }
        var_c22264c1 = distance2d(checkpos, var_84ee6edd);
        var_9da4df29 = max(var_9da4df29 - var_c22264c1, 0);
        var_aea7aa5b = max(var_aea7aa5b - var_c22264c1, 0);
        checkpos = var_84ee6edd;
        if (bforward) {
            var_9a135fe4++;
            continue;
        }
        var_9a135fe4--;
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 2, eflags: 0x2 linked
// Checksum 0xdc16f00c, Offset: 0x5c0
// Size: 0x280
function findcurposonroute(curpos, route) {
    var_6a605059 = route.size;
    bestscore = 0;
    var_747c2571 = -1;
    var_5a1a59a4 = -1;
    var_5b94af06 = 0;
    for (var_6bc1390 = 0; var_6bc1390 < var_6a605059; var_6bc1390++) {
        nextpt = (var_6bc1390 + 1) % var_6a605059;
        starttoend = route[nextpt].origin - route[var_6bc1390].origin;
        var_5e9b5f9f = length(starttoend);
        starttoend /= var_5e9b5f9f;
        var_4fbaae92 = curpos - route[var_6bc1390].origin;
        var_98883cf9 = vectordot(starttoend, var_4fbaae92);
        if (bestscore > 0 && (var_98883cf9 < 0 || var_98883cf9 > var_5e9b5f9f)) {
            continue;
        }
        var_bb8e7f0d = (starttoend[1], -1 * starttoend[0], 0);
        var_bb8e7f0d = vectornormalize(var_bb8e7f0d);
        var_c79274d2 = abs(vectordot(var_bb8e7f0d, var_4fbaae92));
        if (bestscore <= 0 || var_c79274d2 < bestscore) {
            bestscore = var_c79274d2;
            var_747c2571 = nextpt;
        }
        if (var_5b94af06 <= 0 || var_c79274d2 < var_5b94af06) {
            if (!isdefined(route[nextpt].var_4ff89bee) || gettime() > route[nextpt].var_4ff89bee) {
                var_5b94af06 = var_c79274d2;
                var_5a1a59a4 = nextpt;
            }
        }
    }
    if (var_5a1a59a4 >= 0) {
        var_747c2571 = var_5a1a59a4;
    }
    assert(var_747c2571 >= 0);
    return var_747c2571;
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0x3b98c8b, Offset: 0x848
// Size: 0x16e
function getregionforpos(pos) {
    mindist = 1000000000;
    var_ccae54a1 = undefined;
    var_945ef26b = level.stealth.hunt_stealth_group_region_sets[self.script_stealth_region_group];
    if (!isdefined(var_945ef26b)) {
        return undefined;
    }
    foreach (region in var_945ef26b.hunt_regions) {
        if (!isdefined(self.script_stealth_region_group) || self.script_stealth_region_group != region.stealth_group) {
            continue;
        }
        if (region.volume istouching(pos)) {
            return region;
        }
        dist = lengthsquared(region.approx_location - self.origin);
        if (dist < mindist) {
            mindist = dist;
            var_ccae54a1 = region;
        }
    }
    return var_ccae54a1;
}

/#

    // Namespace namespace_5cd4acd8/namespace_1a229754
    // Params 3, eflags: 0x0
    // Checksum 0x5d809fe8, Offset: 0x9c0
    // Size: 0x12c
    function function_7a946650(msg, index, var_371132fe) {
        idx = string(index);
        target = "<unknown string>";
        targetname = "<unknown string>";
        if (isdefined(var_371132fe.target)) {
            target = var_371132fe.target;
        }
        if (isdefined(var_371132fe.targetname)) {
            targetname = var_371132fe.targetname;
        }
        transition = "<unknown string>";
        if (var_371132fe.transitions.size > 0) {
            transition = "<unknown string>";
        }
        println("<unknown string>" + msg + "<unknown string>" + idx + "<unknown string>" + targetname + "<unknown string>" + target + "<unknown string>" + transition);
    }

    // Namespace namespace_5cd4acd8/namespace_1a229754
    // Params 0, eflags: 0x0
    // Checksum 0x9f925225, Offset: 0xaf8
    // Size: 0x1a0
    function function_28ec085c() {
        foreach (region in level.stealth.hunt_regions) {
            foreach (point in region.transition_points) {
                foreach (transition in point.transitions) {
                    println("<unknown string>" + point.index + "<unknown string>" + transition.index + "<unknown string>");
                }
            }
        }
    }

#/

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0xbae41036, Offset: 0xca0
// Size: 0x16a
function gethuntstealthgroups(var_bbf5d56f) {
    var_9e7c8581 = [];
    foreach (volume in var_bbf5d56f) {
        assert(isdefined(volume.script_stealth_region_group), "<unknown string>");
        var_86fb4fc6 = strtok(volume.script_stealth_region_group, " ");
        foreach (str in var_86fb4fc6) {
            var_9e7c8581[var_9e7c8581.size] = str;
        }
    }
    var_9e7c8581 = array::function_b1d17853(var_9e7c8581);
    return var_9e7c8581;
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0xcf6cbc64, Offset: 0xe18
// Size: 0xf8
function gethuntroutepoints(*var_bbf5d56f) {
    var_1f7c13ae = struct::get_array("stealth_clearpath", "variantname");
    var_23471399 = [];
    foreach (struct in var_1f7c13ae) {
        var_371132fe = struct;
        var_371132fe.transitions = [];
        size = var_23471399.size;
        var_371132fe.index = size;
        var_23471399[size] = var_371132fe;
    }
    return var_23471399;
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 2, eflags: 0x2 linked
// Checksum 0x85292825, Offset: 0xf18
// Size: 0x14e
function gethuntstealthgroupvolumelists(var_9e7c8581, var_bbf5d56f) {
    var_5310ca1e = [];
    foreach (group in var_9e7c8581) {
        var_5310ca1e[group] = [];
        foreach (volume in var_bbf5d56f) {
            if (issubstr(volume.script_stealth_region_group, group)) {
                size = var_5310ca1e[group].size;
                var_5310ca1e[group][size] = volume;
            }
        }
    }
    return var_5310ca1e;
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 0, eflags: 0x2 linked
// Checksum 0x41992284, Offset: 0x1070
// Size: 0x410
function buildhuntstealthgrouptransitiondata() {
    foreach (group_data in level.hunt_region_load.hunt_stealth_group_region_sets) {
        foreach (region in group_data.hunt_regions) {
            var_18b52478 = [];
            foreach (index, transition_point in region.transition_points) {
                stealth_group = region.stealth_group;
                transition_points = struct::get_array(transition_point.target, "targetname");
                foreach (to_point in transition_points) {
                    foreach (var_4e481c6b in to_point.containing_regions) {
                        if (var_4e481c6b.stealth_group == stealth_group) {
                            if (!array::contains(transition_point.transitions, to_point)) {
                                transition_point.transitions[transition_point.transitions.size] = to_point;
                            }
                            if (!isdefined(to_point.transitions)) {
                                to_point.transitions = [];
                            }
                            if (!array::contains(to_point.transitions, transition_point)) {
                                to_point.transitions[to_point.transitions.size] = transition_point;
                            }
                            if (!array::contains(var_4e481c6b.transition_points, to_point)) {
                                size = var_4e481c6b.transition_points.size;
                                var_4e481c6b.transition_points[size] = to_point;
                            }
                            break;
                        }
                    }
                }
                if (transition_point.transitions.size == 0) {
                    var_18b52478[var_18b52478.size] = index;
                }
            }
            foreach (index in var_18b52478) {
                array::remove_index(region.transition_points, index, 0);
            }
        }
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 0, eflags: 0x2 linked
// Checksum 0x50187d0f, Offset: 0x1488
// Size: 0x53a
function buildhuntstealthgroupgraphdata() {
    foreach (group_data in level.hunt_region_load.hunt_stealth_group_region_sets) {
        foreach (region in group_data.hunt_regions) {
            region.region_links = [];
            foreach (transition_point in region.transition_points) {
                foreach (var_b568c168 in transition_point.transitions) {
                    var_4e481c6b = undefined;
                    foreach (var_35862c8b in var_b568c168.containing_regions) {
                        if (var_35862c8b.stealth_group == region.stealth_group) {
                            var_4e481c6b = var_35862c8b;
                            break;
                        }
                    }
                    if (!isdefined(var_4e481c6b)) {
                        continue;
                    }
                    var_2f106193 = spawnstruct();
                    var_2f106193.region = var_4e481c6b;
                    var_2f106193.transition_point = transition_point;
                    var_2f106193.transition_to_point = var_b568c168;
                    size = region.region_links.size;
                    region.region_links[size] = var_2f106193;
                }
            }
        }
        foreach (region in group_data.hunt_regions) {
            if (region.route_points.size == 0) {
                continue;
            }
            if (region.route_points.size == 1) {
                region.approx_location = region.route_points[0].origin;
                continue;
            }
            var_fb678b1c = 0;
            var_ebcfaa4d = 0;
            i = 1;
            for (i = 1; i < region.route_points.size; i++) {
                var_ebcfaa4d = length(region.route_points[i].origin - region.route_points[i - 1].origin);
                var_fb678b1c += var_ebcfaa4d;
            }
            var_fb678b1c *= 0.5;
            for (i = 0; i < region.route_points.size - 1; i++) {
                var_ebcfaa4d = length(region.route_points[i].origin - region.route_points[i + 1].origin);
                if (var_fb678b1c - var_ebcfaa4d < 0) {
                    break;
                }
                var_fb678b1c -= var_ebcfaa4d;
            }
            fraction = var_fb678b1c / var_ebcfaa4d;
            region.approx_location = vectorlerp(region.route_points[i].origin, region.route_points[i + 1].origin, fraction);
        }
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0x6cca6341, Offset: 0x19d0
// Size: 0x182
function cleanuphuntbuilddata(var_23471399) {
    foreach (point in var_23471399) {
        point.containing_regions = undefined;
        point.transitions = undefined;
    }
    foreach (var_57287dad in level.hunt_region_load.hunt_stealth_group_region_sets) {
        foreach (region in var_57287dad.hunt_regions) {
            region.transition_points = undefined;
        }
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 0, eflags: 0x2 linked
// Checksum 0x8c780e81, Offset: 0x1b60
// Size: 0xbf4
function inithuntregiondata() {
    aiprofile_beginentry("Init Hunt Region Data");
    var_bbf5d56f = getentarray("info_volume_stealth_clear", "variantname");
    var_9e7c8581 = gethuntstealthgroups(var_bbf5d56f);
    var_23471399 = gethuntroutepoints(var_bbf5d56f);
    var_b8850d25 = [];
    var_ed36f7a7 = gethuntstealthgroupvolumelists(var_9e7c8581, var_bbf5d56f);
    level.hunt_region_load.hunt_stealth_group_region_sets = [];
    foreach (group, var_2e6299dc in var_ed36f7a7) {
        level.hunt_region_load.hunt_stealth_group_region_sets[group] = spawnstruct();
        level.hunt_region_load.hunt_stealth_group_region_sets[group].hunt_regions = [];
        level.hunt_region_load.hunt_stealth_group_region_sets[group].target_score = 0;
        foreach (index, volume in var_2e6299dc) {
            region = spawnstruct();
            region.volume = volume;
            region.index = index;
            region.approx_location = (0, 0, 0);
            region.bfs_distance = 100000;
            region.bfs_score = 100000;
            region.cooldown = 20000;
            shared_data = var_b8850d25[volume getentitynumber()];
            if (!isdefined(shared_data)) {
                shared_data = spawnstruct();
                shared_data.bfs_assigned = 0;
                shared_data.max_enemies = 2;
                shared_data.bfs_cooldown = 0;
                shared_data.in_region = 0;
                shared_data.player_in_region = 0;
                shared_data.assign_window = 0;
                var_b8850d25[volume getentitynumber()] = shared_data;
            }
            region.shared_data = shared_data;
            if (isdefined(volume.script_count)) {
                shared_data.max_enemies = volume.script_count;
            }
            if (isdefined(volume.script_timer)) {
                shared_data.cooldown = volume.script_timer * 1000;
            }
            region.stealth_group = group;
            region.route_points = [];
            region.transition_points = [];
            foreach (point in var_23471399) {
                if (volume istouching(point.origin)) {
                    size = region.route_points.size;
                    region.route_points[size] = point;
                    if (!isdefined(point.containing_regions)) {
                        point.containing_regions = [];
                    }
                    size = point.containing_regions.size;
                    point.containing_regions[size] = region;
                    var_3eeed7ad = struct::get_array(point.target, "targetname");
                    var_3eeed7ad = arraycombine(var_3eeed7ad, struct::get_array(point.targetname, "target"));
                    var_3eeed7ad = array::function_b1d17853(var_3eeed7ad);
                    foreach (link in var_3eeed7ad) {
                        if (link !== point && link.variantname === "stealth_clearpath" && !volume istouching(link.origin)) {
                            region.transition_points[region.transition_points.size] = link;
                            region.transition_points = array::function_b1d17853(region.transition_points);
                        }
                    }
                }
            }
            if (region.route_points.size == 0) {
                assertmsg("<unknown string>");
            }
            region.smart_objects = [];
            foreach (smart_object in level.smartobjectpoints) {
                if (volume istouching(smart_object.origin)) {
                    size = region.smart_objects.size;
                    region.smart_objects[size] = smart_object;
                }
            }
            size = level.hunt_region_load.hunt_stealth_group_region_sets[group].hunt_regions.size;
            level.hunt_region_load.hunt_stealth_group_region_sets[group].hunt_regions[size] = region;
        }
        foreach (region in level.hunt_region_load.hunt_stealth_group_region_sets[group].hunt_regions) {
            if (region.route_points.size == 0) {
                continue;
            }
            startnode = -1;
            for (i = 0; i < region.route_points.size; i++) {
                point = region.route_points[i];
                targetname = point.targetname;
                if (!isdefined(targetname)) {
                    if (startnode != -1) {
                        orig = point.origin;
                        assertmsg("<unknown string>" + orig[0] + "<unknown string>" + orig[1] + "<unknown string>" + orig[2] + "<unknown string>");
                    }
                    startnode = i;
                    continue;
                }
                var_8bacc3fa = undefined;
                foreach (var_40ad2e7d in region.route_points) {
                    if (isdefined(var_40ad2e7d.target) && var_40ad2e7d.target == targetname) {
                        var_8bacc3fa = var_40ad2e7d;
                    }
                }
                if (!isdefined(var_8bacc3fa)) {
                    if (startnode != -1) {
                        assertmsg("<unknown string>" + targetname + "<unknown string>");
                    }
                    startnode = i;
                }
            }
            if (startnode == -1) {
                startnode = 0;
            }
            buffer = [];
            curidx = startnode;
            buffer[0] = region.route_points[curidx];
            for (i = 1; i < region.route_points.size; i++) {
                point = region.route_points[curidx];
                target = point.target;
                j = 0;
                var_e1c83c67 = undefined;
                while (j < region.route_points.size) {
                    target_point = region.route_points[j];
                    targetname = target_point.targetname;
                    if (isdefined(targetname) && target == targetname) {
                        var_e1c83c67 = target_point;
                        break;
                    }
                    j++;
                }
                if (!isdefined(var_e1c83c67)) {
                    assertmsg("<unknown string>");
                }
                buffer[i] = var_e1c83c67;
                curidx = j;
            }
            region.route_points = buffer;
        }
    }
    var_b8850d25 = undefined;
    foreach (var_371132fe in var_23471399) {
        if (!isdefined(var_371132fe.containing_regions)) {
            assertmsg("<unknown string>" + var_371132fe.origin + "<unknown string>");
        }
    }
    buildhuntstealthgrouptransitiondata();
    buildhuntstealthgroupgraphdata();
    cleanuphuntbuilddata(var_23471399);
    aiprofile_endentry();
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 2, eflags: 0x2 linked
// Checksum 0x9858520d, Offset: 0x2760
// Size: 0x464
function huntcomputeaiindependentregionscores(*group, group_data) {
    aiprofile_beginentry("AI Hunt Init Scoring");
    numregions = group_data.hunt_regions.size;
    for (var_3e6a3ff3 = 0; var_3e6a3ff3 < numregions; var_3e6a3ff3++) {
        region = group_data.hunt_regions[var_3e6a3ff3];
        region.bfs_score = 1;
        region.shared_data.player_in_region = 0;
    }
    foreach (player in getplayers()) {
        if (!player flag::exists("stealth_enabled") || !player flag::get("stealth_enabled")) {
            continue;
        }
        for (var_3e6a3ff3 = 0; var_3e6a3ff3 < numregions; var_3e6a3ff3++) {
            region = group_data.hunt_regions[var_3e6a3ff3];
            region.bfs_visited = 0;
        }
        var_924463ec = undefined;
        mindist = 1e+20;
        for (var_3e6a3ff3 = 0; var_3e6a3ff3 < numregions; var_3e6a3ff3++) {
            region = group_data.hunt_regions[var_3e6a3ff3];
            if (region.volume istouching(player.origin)) {
                var_924463ec = region;
                break;
            }
            dist = lengthsquared(region.approx_location - player.origin);
            if (dist < mindist) {
                mindist = dist;
                var_924463ec = region;
            }
        }
        var_924463ec.shared_data.player_in_region = 1;
        var_21487804 = [var_924463ec];
        var_924463ec.bfs_visited = 1;
        dist = 0;
        index = 0;
        while (index < var_21487804.size) {
            stop = var_21487804.size;
            for (i = index; i < stop; i++) {
                region = var_21487804[i];
                region.bfs_score = dist * region.bfs_score;
                region.bfs_visited = 1;
                region.bfs_distance = dist;
                var_d6b10147 = region.region_links.size;
                for (ilink = 0; ilink < var_d6b10147; ilink++) {
                    link = region.region_links[ilink];
                    if (!link.region.bfs_visited) {
                        var_21487804[var_21487804.size] = link.region;
                        link.region.bfs_visited = 1;
                    }
                }
            }
            index = stop;
            dist++;
        }
    }
    highestscore = 1;
    for (var_3e6a3ff3 = 0; var_3e6a3ff3 < numregions; var_3e6a3ff3++) {
        region = group_data.hunt_regions[var_3e6a3ff3];
        highestscore = max(region.bfs_score, highestscore);
    }
    for (var_3e6a3ff3 = 0; var_3e6a3ff3 < numregions; var_3e6a3ff3++) {
        region = group_data.hunt_regions[var_3e6a3ff3];
        region.bfs_score /= highestscore;
        region.bfs_visited = undefined;
    }
    aiprofile_endentry();
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0xc1a65297, Offset: 0x2bd0
// Size: 0x4c
function huntassigntoregion(region) {
    if (isdefined(self.stealth.cleardata)) {
        self.stealth.cleardata.curregion = region;
        huntincaiassignment(region);
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0x571564b, Offset: 0x2c28
// Size: 0x5c
function huntunassignfromregion(region) {
    if (isdefined(self.stealth.cleardata.curregion) && self.stealth.cleardata.curregion == region) {
        huntdecaiassignment(region);
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0xe252418d, Offset: 0x2c90
// Size: 0x4c
function huntincaiassignment(region) {
    region.shared_data.bfs_assigned += 1;
    self hunttrytoenterregionvolume(region);
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0xaa5c3ab9, Offset: 0x2ce8
// Size: 0xb6
function huntdecaiassignment(region) {
    assert(region.shared_data.bfs_assigned != 0, "<unknown string>");
    region.shared_data.bfs_assigned -= 1;
    self hunttrytoexitregionvolume(region);
    if (region.shared_data.in_region == 0) {
        region.shared_data.bfs_cooldown = gettime() + region.cooldown;
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0xc4f33f0c, Offset: 0x2da8
// Size: 0x13a
function hunttrytoenterregionvolume(region) {
    if (!self.stealth.cleardata.isinregion && region.volume istouching(self.origin)) {
        assert(self.stealth.cleardata.curregion == region, "<unknown string>" + region.index + "<unknown string>");
        region.shared_data.in_region += 1;
        self.stealth.cleardata.isinregion = 1;
        if (region.shared_data.player_in_region && region.shared_data.in_region == 1) {
            var_8a32f5c = 1000;
            region.shared_data.assign_window = gettime() + var_8a32f5c;
        }
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0x36974a85, Offset: 0x2ef0
// Size: 0xb6
function hunttrytoexitregionvolume(region) {
    assert(self.stealth.cleardata.curregion == region, "<unknown string>" + region.index + "<unknown string>");
    if (self.stealth.cleardata.isinregion) {
        region.shared_data.in_region -= 1;
        self.stealth.cleardata.isinregion = 0;
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0x159c7f27, Offset: 0x2fb0
// Size: 0x370
function huntgetnextregion(region) {
    aiprofile_beginentry("Hunt Get Next Reg");
    if (region.region_links.size == 0) {
        aiprofile_endentry();
        return;
    }
    if (!isdefined(self.script_stealth_region_group) || !isdefined(level.stealth.hunt_stealth_group_region_sets[self.script_stealth_region_group])) {
        aiprofile_endentry();
        return;
    }
    var_161b41f9 = undefined;
    curtime = gettime();
    target_score = level.stealth.hunt_stealth_group_region_sets[self.script_stealth_region_group].target_score;
    var_6036e3a2 = 1;
    foreach (toregion in level.stealth.hunt_stealth_group_region_sets[self.script_stealth_region_group].hunt_regions) {
        if (toregion == region) {
            continue;
        }
        if (toregion.shared_data.bfs_cooldown > gettime()) {
            continue;
        }
        if (toregion.shared_data.player_in_region && toregion.shared_data.in_region > 0 && curtime > toregion.shared_data.assign_window) {
            continue;
        }
        if (self.script_stealth_region_group != toregion.stealth_group) {
            continue;
        }
        if (toregion.shared_data.bfs_assigned >= toregion.shared_data.max_enemies) {
            continue;
        }
        target_dist = abs(target_score - toregion.bfs_score);
        if (target_dist < var_6036e3a2) {
            var_161b41f9 = toregion;
            var_6036e3a2 = target_dist;
        }
    }
    if (!isdefined(var_161b41f9)) {
        var_161b41f9 = region.region_links[0].region;
    }
    self.stealth.cleardata.prevregion[0] = self.stealth.cleardata.prevregion[1];
    self.stealth.cleardata.prevregion[1] = self.stealth.cleardata.curregion;
    target_score += 0.5;
    if (target_score > 1) {
        target_score = 0;
    }
    level.stealth.hunt_stealth_group_region_sets[self.script_stealth_region_group].target_score = target_score;
    aiprofile_endentry();
    return var_161b41f9;
}

