// Atian COD Tools GSC CW decompiler test
#using script_fe983bbff18d77f;
#using script_6f8610e78fdd3440;
#using scripts\core_common\stealth\utility.gsc;
#using scripts\core_common\stealth\debug.gsc;
#using script_5450c003e8a913b7;
#using script_3072532951b5b4ae;
#using scripts\core_common\ai_shared.gsc;
#using script_7b68dad851540de;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace group;

// Namespace group/group
// Params 2, eflags: 0x0
// Checksum 0xce1e8598, Offset: 0x198
// Size: 0x14
function scalevolume(*ent, *vol) {
    
}

#namespace stealth_group;

// Namespace stealth_group/group
// Params 1, eflags: 0x2 linked
// Checksum 0x6f8a4a44, Offset: 0x1b8
// Size: 0xf8
function initgroup(groupname) {
    if (!isdefined(level.stealth.groupdata)) {
        level.stealth.groupdata = spawnstruct();
    }
    groupdata = level.stealth.groupdata;
    if (!isdefined(groupdata.groups)) {
        groupdata.groups = [];
    }
    mygroup = groupdata.groups[groupname];
    if (!isdefined(mygroup)) {
        mygroup = spawnstruct();
        groupdata.groups[groupname] = mygroup;
        mygroup.name = groupname;
        mygroup.members = [];
        mygroup.pods = [];
    }
    level.stealth.groupdata notify(groupname);
}

// Namespace stealth_group/group
// Params 2, eflags: 0x2 linked
// Checksum 0xbbd34e67, Offset: 0x2b8
// Size: 0xec
function addtogroup(groupname, guy) {
    if (!isdefined(level.stealth.groupdata) || !isdefined(level.stealth.groupdata.groups) || !isdefined(level.stealth.groupdata.groups[groupname])) {
        initgroup(groupname);
    }
    mygroup = level.stealth.groupdata.groups[groupname];
    mygroup.members[mygroup.members.size] = guy;
    mygroup thread group_waitfordeath(guy);
}

// Namespace stealth_group/group
// Params 1, eflags: 0x2 linked
// Checksum 0xe520e14c, Offset: 0x3b0
// Size: 0x64
function function_b6ebd4af(guy) {
    if (!isdefined(guy.script_stealthgroup)) {
        return;
    }
    stealthgroup = getgroup(guy.script_stealthgroup);
    if (isdefined(stealthgroup)) {
        stealthgroup function_34c06bfe(guy);
    }
}

// Namespace stealth_group/group
// Params 1, eflags: 0x2 linked
// Checksum 0xe897695b, Offset: 0x420
// Size: 0x124
function function_34c06bfe(guy) {
    group_removefrompod(self, guy);
    nummembers = self.members.size;
    for (imember = 0; imember < nummembers; imember++) {
        if (self.members[imember] == guy) {
            var_a47c95a3 = self.members.size - 1;
            self.members[imember] = self.members[var_a47c95a3];
            self.members[var_a47c95a3] = undefined;
            break;
        }
    }
    if (isdefined(guy.stealth) && isdefined(guy.stealth.cleardata)) {
        region = guy.stealth.cleardata.curregion;
        guy namespace_5cd4acd8::huntunassignfromregion(region);
    }
}

// Namespace stealth_group/group
// Params 1, eflags: 0x2 linked
// Checksum 0x47a22f55, Offset: 0x550
// Size: 0x54
function group_waitfordeath(guy) {
    guy waittill(#"death");
    guy thread namespace_f1f700ac::death_cleanup();
    self function_34c06bfe(guy);
}

// Namespace stealth_group/group
// Params 0, eflags: 0x0
// Checksum 0x63eda8fc, Offset: 0x5b0
// Size: 0x172
function clearallgroups() {
    if (!isdefined(level.stealth.groupdata)) {
        return;
    }
    if (!isdefined(level.stealth.groupdata.groups)) {
        return;
    }
    /#
        foreach (group in level.stealth.groupdata.groups) {
            if (isdefined(group.pods)) {
                foreach (pod in group.pods) {
                    pod notify(#"debug off");
                }
            }
        }
    #/
    level.stealth.groupdata.groups = undefined;
}

// Namespace stealth_group/group
// Params 1, eflags: 0x2 linked
// Checksum 0xc29bae96, Offset: 0x730
// Size: 0xa4
function getgroup(groupname) {
    assert(isdefined(level.stealth));
    assert(isdefined(level.stealth.groupdata));
    assert(isdefined(level.stealth.groupdata.groups));
    return level.stealth.groupdata.groups[groupname];
}

/#

    // Namespace stealth_group/group
    // Params 0, eflags: 0x0
    // Checksum 0xca509509, Offset: 0x7e0
    // Size: 0x2bc
    function function_957fac82() {
        foreach (group in level.stealth.groupdata.groups) {
            println("<unknown string>" + group.name);
            println("<unknown string>");
            foreach (guy in group.members) {
                println("<unknown string>" + guy getentitynumber());
            }
            var_d78e3a4f = 0;
            println("<unknown string>");
            foreach (pod in group.pods) {
                println("<unknown string>" + var_d78e3a4f + "<unknown string>");
                foreach (guy in pod.members) {
                    println("<unknown string>" + guy getentitynumber());
                }
                var_d78e3a4f++;
            }
        }
    }

#/

// Namespace stealth_group/group
// Params 3, eflags: 0x2 linked
// Checksum 0xedc6e61, Offset: 0xaa8
// Size: 0x98
function makenewpod(groupdata, state, origin) {
    newpod = spawnstruct();
    newpod.state = state;
    newpod.members = [];
    newpod.parentgroup = groupdata;
    groupdata.pods[groupdata.pods.size] = newpod;
    if (isdefined(origin)) {
        function_f6ab9430(newpod, origin);
    }
    return newpod;
}

// Namespace stealth_group/group
// Params 3, eflags: 0x2 linked
// Checksum 0x29be02b3, Offset: 0xb48
// Size: 0x8c
function function_f6ab9430(pod, origin, var_ccf5f27b) {
    assert(isdefined(origin));
    pod.origin = getclosestpointonnavmesh(origin, 500, 16);
    if (!isdefined(pod.origin)) {
        pod.origin = origin;
    }
    function_4f3db9c6(pod, var_ccf5f27b);
}

// Namespace stealth_group/group
// Params 2, eflags: 0x2 linked
// Checksum 0xd5791ce4, Offset: 0xbe0
// Size: 0x2c
function addtopod(pod, guy) {
    pod.members[pod.members.size] = guy;
}

// Namespace stealth_group/group
// Params 2, eflags: 0x2 linked
// Checksum 0xaadf58ca, Offset: 0xc18
// Size: 0x20c
function function_4f3db9c6(pod, var_ccf5f27b) {
    mindistsq = sqr(100);
    if (!isdefined(var_ccf5f27b)) {
        var_ccf5f27b = 0;
    }
    assert(isdefined(pod));
    if (!isdefined(pod.origin)) {
        return;
    }
    if (var_ccf5f27b > 3) {
        return;
    }
    foreach (group in level.stealth.groupdata.groups) {
        foreach (var_dff5abf9 in group.pods) {
            if (var_dff5abf9 === pod) {
                continue;
            }
            if (!isdefined(var_dff5abf9.origin)) {
                continue;
            }
            if (distancesquared(var_dff5abf9.origin, pod.origin) < mindistsq) {
                var_85bca00c = getrandomnavpoint(pod.origin, 500);
                if (isdefined(var_85bca00c)) {
                    function_f6ab9430(pod, var_85bca00c, var_ccf5f27b + 1);
                }
            }
        }
    }
}

// Namespace stealth_group/group
// Params 5, eflags: 0x2 linked
// Checksum 0xd13139a7, Offset: 0xe30
// Size: 0x136
function group_trytojoinexistingpod(groupdata, currentpod, podstate, guy, investigatepos) {
    var_76bc7166 = 65536;
    foreach (pod in groupdata.pods) {
        if (isdefined(currentpod) && currentpod == pod) {
            continue;
        }
        if (pod.state == podstate) {
            if (distancesquared(investigatepos, pod.origin) < var_76bc7166) {
                group_removefrompod(groupdata, guy);
                addtopod(pod, guy);
                return pod;
            }
        }
    }
}

// Namespace stealth_group/group
// Params 3, eflags: 0x2 linked
// Checksum 0x2cac26ef, Offset: 0xf70
// Size: 0x170
function group_assigntoinvestigatepod(groupdata, guy, investigatepos) {
    var_76bc7166 = 65536;
    existingpod = group_trytojoinexistingpod(groupdata, undefined, 1, guy, investigatepos);
    if (isdefined(existingpod)) {
        existingpod pod_updateinvestigateorigin(guy, investigatepos);
        return false;
    }
    group_removefrompod(groupdata, guy);
    newpod = makenewpod(groupdata, 1, investigatepos);
    addtopod(newpod, guy);
    group_generateinitialinvestigatepoints(newpod, guy.script_stealthgroup, investigatepos);
    vol = level.stealth.investigate_volumes[self.script_stealthgroup];
    if (isdefined(vol)) {
        newpod.volume = vol;
        newpod.borigininvolume = vol istouching(investigatepos);
    }
    /#
        thread pod_debug(newpod);
    #/
    return true;
}

// Namespace stealth_group/group
// Params 4, eflags: 0x2 linked
// Checksum 0x9cf25b13, Offset: 0x10e8
// Size: 0x304
function group_assigntohuntpod(groupdata, guy, lastknownpos, *lastknowntime) {
    group_removefrompod(guy, lastknownpos);
    foreach (pod in guy.pods) {
        if (pod.state == 2) {
            if (!isdefined(lastknownpos.enemy) || !isdefined(pod.target) || pod.target == lastknownpos.enemy) {
                addtopod(pod, lastknownpos);
                if (!isdefined(pod.target)) {
                    pod.target = lastknownpos.enemy;
                    if (isdefined(lastknowntime)) {
                        function_f6ab9430(pod, lastknowntime);
                    }
                }
                return;
            }
        }
    }
    if (!isdefined(lastknowntime)) {
        lastknowntime = lastknownpos.origin;
    }
    newpod = makenewpod(guy, 2, lastknowntime);
    addtopod(newpod, lastknownpos);
    newpod.target = lastknownpos.enemy;
    group_generateinitialinvestigatepoints(newpod, lastknownpos.script_stealthgroup, lastknowntime);
    vol = level.stealth.hunt_volumes[self.script_stealthgroup];
    if (isdefined(vol)) {
        newpod.volume = vol;
        newpod.borigininvolume = vol istouching(lastknowntime);
    }
    newpod.lastannouncetime = gettime();
    level thread pod_hunt_vo();
    newpod thread pod_hunt_update();
    newpod thread pod_hunt_delayednotify();
    /#
        if (isdefined(newpod.borigininvolume) && !newpod.borigininvolume) {
            stealth_debug::function_65b21ab8(lastknownpos, "<unknown string>");
        } else {
            stealth_debug::function_65b21ab8(lastknownpos, "<unknown string>");
        }
    #/
    /#
        newpod thread pod_debug(newpod);
    #/
}

// Namespace stealth_group/group
// Params 2, eflags: 0x2 linked
// Checksum 0xd2799050, Offset: 0x13f8
// Size: 0x164
function group_removefrompod(groupdata = getgroup(guy.script_stealthgroup), guy) {
    pod = group_findpod(groupdata, guy);
    if (!isdefined(pod)) {
        return;
    }
    nummembers = pod.members.size;
    for (imember = 0; imember < nummembers; imember++) {
        if (pod.members[imember] == guy) {
            var_a47c95a3 = pod.members.size - 1;
            pod.members[imember] = pod.members[var_a47c95a3];
            pod.members[var_a47c95a3] = undefined;
            break;
        }
    }
    if (pod.members.size == 0) {
        if (pod.state == 2) {
            guy namespace_979752dc::group_flag_clear("stealth_combat_hunting", guy.script_stealthgroup);
        }
        pod pod_delete();
    }
}

/#

    // Namespace stealth_group/group
    // Params 1, eflags: 0x0
    // Checksum 0x8e4ff02d, Offset: 0x1568
    // Size: 0xfc
    function drawcross(origin) {
        r = 6;
        forward = (r, 0, 0);
        left = (0, r, 0);
        up = (0, 0, r);
        color = (0, 1, 0);
        line(origin - forward, origin + forward, color, 1, 0, 1);
        line(origin - left, origin + left, color, 1, 0, 1);
        line(origin - up, origin + up, color, 1, 0, 1);
    }

    // Namespace stealth_group/group
    // Params 1, eflags: 0x0
    // Checksum 0xab5d7b98, Offset: 0x1670
    // Size: 0x58e
    function pod_debug(pod) {
        pod endon(#"state_change");
        up = (0, 0, 128);
        down = (0, 0, -12);
        while (true) {
            if (stealth_debug::debug_enabled() && isdefined(pod.origin)) {
                zoffset = 0;
                var_5a7a026e = [];
                foreach (group in level.stealth.groupdata.groups) {
                    foreach (var_dff5abf9 in group.pods) {
                        if (!isdefined(var_dff5abf9.origin)) {
                            continue;
                        }
                        if (distancesquared(var_dff5abf9.origin, pod.origin) < sqr(20)) {
                            if (pod == var_dff5abf9) {
                                zoffset = var_5a7a026e.size * 30;
                            }
                            var_5a7a026e[var_5a7a026e.size] = var_dff5abf9;
                        }
                    }
                }
                zoffset = (0, 0, zoffset);
                line(pod.origin + zoffset, pod.origin + up + zoffset, (0, 0, 1), 1, 0, 1);
                groupname = pod.parentgroup.name;
                if (isdefined(groupname)) {
                    print3d(pod.origin + zoffset, groupname, (1, 1, 0), 1, 0.8, 1);
                }
                guystr = "<unknown string>";
                foreach (member in pod.members) {
                    if (isalive(member)) {
                        guystr += "<unknown string>" + member getentitynumber();
                    }
                }
                if (pod.state == 1) {
                    print3d(pod.origin + zoffset + down, "<unknown string>" + guystr, (1, 1, 0), 1, 0.4, 1);
                } else if (pod.state == 2) {
                    print3d(pod.origin + zoffset + down, "<unknown string>" + guystr, (1, 1, 0), 1, 0.4, 1);
                }
                foreach (point in pod.investigatepoints) {
                    drawcross(point.origin);
                }
                numlanes = pod.members.size;
                lanewidth = 360 / numlanes;
                for (ilane = 0; ilane < numlanes + 1; ilane++) {
                    angle = ilane * lanewidth;
                    line(pod.origin, pod.origin + 128 * (cos(angle - lanewidth), sin(angle - lanewidth), 0), (0, 1, 0), 1, 0, 1);
                }
            }
            waitframe(1);
        }
    }

#/

// Namespace stealth_group/group
// Params 2, eflags: 0x2 linked
// Checksum 0x3fd6b46c, Offset: 0x1c08
// Size: 0x2ea
function group_findsomeotherguytoinvestigate(pos, var_ae3b954a) {
    var_3f2754d4 = 2304;
    otherguy = undefined;
    closestdistsq = 2359296;
    candidateguys = [];
    foreach (group in level.stealth.groupdata.groups) {
        if (group.name == var_ae3b954a) {
            continue;
        }
        volume = level.stealth.investigate_volumes[group.name];
        if (isdefined(volume) && !volume istouching(pos)) {
            continue;
        }
        foreach (pod in group.pods) {
            if (pod.state == 1 && distance2dsquared(pod.origin, pos) < var_3f2754d4) {
                return undefined;
            }
        }
        foreach (guy in group.members) {
            if ([[ self.fnisinstealthidle ]]()) {
                distsq = distancesquared(guy.origin, pos);
                if (distsq < closestdistsq) {
                    candidateguys[candidateguys.size] = guy;
                    if (candidateguys.size > 8) {
                        break;
                    }
                }
            }
        }
    }
    if (candidateguys.size > 0) {
        otherguy = findclosestpointbyapproxpathdist(candidateguys, pos);
    }
    return otherguy;
}

// Namespace stealth_group/group
// Params 1, eflags: 0x2 linked
// Checksum 0xc9c7f3d, Offset: 0x1f00
// Size: 0x114
function group_checkrequestbackupoutsideofvolume(e) {
    volume = level.stealth.investigate_volumes[self.script_stealthgroup];
    if (isdefined(volume)) {
        if (!volume istouching(e.investigate_pos)) {
            otherguy = group_findsomeotherguytoinvestigate(e.investigate_pos, self.script_stealthgroup);
            if (isdefined(otherguy)) {
                /#
                    stealth_debug::function_65b21ab8(self, "<unknown string>");
                #/
                /#
                    stealth_debug::function_65b21ab8(self, "<unknown string>");
                #/
                /#
                    stealth_debug::function_65b21ab8(otherguy, "<unknown string>");
                #/
                otherguy function_a3fcf9e0("seek_backup", self, e.investigate_pos);
                return true;
            }
        }
    }
    return false;
}

// Namespace stealth_group/group
// Params 3, eflags: 0x2 linked
// Checksum 0x67887362, Offset: 0x2020
// Size: 0x84
function group_eventinvestigate(groupname, guy, e) {
    groupdata = getgroup(groupname);
    var_89808178 = group_assigntoinvestigatepod(groupdata, guy, e.investigate_pos);
    if (var_89808178) {
        guy thread group_investigate_seekbackup(e);
    }
}

// Namespace stealth_group/group
// Params 1, eflags: 0x2 linked
// Checksum 0xcf68c8cb, Offset: 0x20b0
// Size: 0x17c
function group_investigate_seekbackup(e) {
    self endon(#"death", #"hash_15ec42f1846ef9d0", #"takedown");
    waitframe(1);
    self group_checkrequestbackupoutsideofvolume(e);
    waitframe(1);
    group = getgroup(self.script_stealthgroup);
    pod = group_findpod(group, self);
    if (!isdefined(pod)) {
        return;
    }
    if (pod.members.size == 1) {
        nummembers = group.members.size;
        for (imember = 0; imember < nummembers; imember++) {
            otherguy = group.members[imember];
            if (otherguy.stealth.bsmstate == 0 && distancesquared(otherguy.origin, self.origin) < 10000) {
                otherguy ai::look_at(self, undefined, undefined, 0.55);
            }
        }
    }
}

// Namespace stealth_group/group
// Params 3, eflags: 0x2 linked
// Checksum 0xbe442d64, Offset: 0x2238
// Size: 0x25a
function group_generateinitialinvestigatepoints(pod, groupname, origin) {
    groupdata = getgroup(groupname);
    assert(pod.state == 1 || pod.state == 2);
    assert(!isdefined(pod.investigatepoints));
    var_804461ee = 1000000;
    var_c491acad = [];
    var_f5ea0eba = getnodearray("seek_patrol", "targetname");
    var_7e3b3cbc = struct::get_array("seek_patrol", "targetname");
    var_f5ea0eba = arraycombine(var_f5ea0eba, var_7e3b3cbc);
    for (var_e10e2e46 = 0; var_e10e2e46 < var_f5ea0eba.size; var_e10e2e46++) {
        var_594c1bc9 = 0;
        point = var_f5ea0eba[var_e10e2e46];
        if (distancesquared(point.origin, origin) > var_804461ee) {
            var_594c1bc9 = 1;
        } else if (isdefined(point.script_stealthgroup)) {
            if (point.script_stealthgroup == groupname) {
                var_c491acad[var_c491acad.size] = point;
            }
            var_594c1bc9 = 1;
        }
        if (var_594c1bc9) {
            lastpoint = var_f5ea0eba.size - 1;
            var_f5ea0eba[var_e10e2e46] = var_f5ea0eba[lastpoint];
            var_f5ea0eba[lastpoint] = undefined;
            continue;
        }
    }
    var_c491acad = arraysortclosest(var_c491acad, origin);
    var_f5ea0eba = arraysortclosest(var_f5ea0eba, origin);
    pod.investigatepoints = arraycombine(var_c491acad, var_f5ea0eba);
}

// Namespace stealth_group/group
// Params 2, eflags: 0x2 linked
// Checksum 0x7ea13fe8, Offset: 0x24a0
// Size: 0xc8
function group_findpod(groupdata, guy) {
    if (!isdefined(groupdata.pods)) {
        return;
    }
    numpods = groupdata.pods.size;
    for (ipod = 0; ipod < numpods; ipod++) {
        pod = groupdata.pods[ipod];
        nummembers = pod.members.size;
        for (imember = 0; imember < nummembers; imember++) {
            if (pod.members[imember] == guy) {
                return pod;
            }
        }
    }
}

// Namespace stealth_group/group
// Params 2, eflags: 0x2 linked
// Checksum 0x3391b7d7, Offset: 0x2570
// Size: 0x6c
function pod_addusedpoint(pod, point) {
    if (!isdefined(pod.usedpoints)) {
        pod.usedpoints = [];
    }
    pod.usedpoints[pod.usedpoints.size] = {#origin:point, #expire:gettime() + 5000};
}

// Namespace stealth_group/group
// Params 1, eflags: 0x2 linked
// Checksum 0x3ef553d, Offset: 0x25e8
// Size: 0xdc
function pod_cleanupusedpoints(pod) {
    if (!isdefined(pod.usedpoints)) {
        pod.usedpoints = [];
    }
    curtime = gettime();
    for (var_e10e2e46 = 0; var_e10e2e46 < pod.usedpoints.size; var_e10e2e46++) {
        if (isdefined(pod.usedpoints[var_e10e2e46].expire) && curtime >= pod.usedpoints[var_e10e2e46].expire) {
            pod.usedpoints[var_e10e2e46] = pod.usedpoints[pod.usedpoints.size - 1];
            pod.usedpoints[pod.usedpoints.size - 1] = undefined;
            continue;
        }
    }
}

// Namespace stealth_group/group
// Params 2, eflags: 0x2 linked
// Checksum 0x5e7e3f4, Offset: 0x26d0
// Size: 0x85e
function group_getinvestigatepoint(guy, *volume) {
    assert(isdefined(volume.origin));
    if (!isdefined(volume.origin)) {
        return (0, 0, 0);
    }
    groupdata = getgroup(volume.script_stealthgroup);
    pod = group_findpod(groupdata, volume);
    assert(isdefined(pod));
    assert(isdefined(pod.investigatepoints));
    assert(pod.state == 2 || pod.state == 1);
    assert(isdefined(pod.origin));
    if (!isdefined(pod.origin)) {
        return volume.origin;
    }
    pod_cleanupusedpoints(pod);
    var_86a04485 = undefined;
    dots = [];
    arrayremovevalue(pod.members, undefined);
    foreach (member in pod.members) {
        data = spawnstruct();
        data.guy = member;
        var_5c185af = member.origin - pod.origin;
        data.angle = vectortoyaw(var_5c185af);
        dots[dots.size] = data;
        if (member == volume) {
            var_86a04485 = data.angle;
        }
    }
    assert(isdefined(var_86a04485));
    var_73f7fb2a = 0;
    foreach (dot in dots) {
        if (dot.angle < var_86a04485) {
            var_73f7fb2a++;
        }
    }
    var_5c185af = volume.origin - pod.origin;
    distfromcenter = length(var_5c185af);
    var_ee7f3a11 = 768;
    var_dc7be821 = 512;
    var_f64a59e = 256;
    var_5c49f737 = -128;
    var_29469527 = 64;
    lanewidth = 360 / dots.size;
    var_941fad23 = var_73f7fb2a * lanewidth;
    foreach (point in pod.investigatepoints) {
        if (isdefined(point.lastinvestigatedtime)) {
            continue;
        }
        if (ispointinlane(point, pod, var_941fad23, lanewidth, distfromcenter, var_f64a59e)) {
            point.lastinvestigatedtime = gettime();
            return point.origin;
        }
    }
    var_2e04480f = distfromcenter;
    if (distfromcenter > var_ee7f3a11) {
        var_2e04480f = max(60, randomfloatrange(distfromcenter - var_f64a59e * 2, distfromcenter - var_f64a59e));
    } else if (distfromcenter > var_dc7be821) {
        var_2e04480f = randomfloatrange(distfromcenter + var_5c49f737, distfromcenter + var_f64a59e);
    } else {
        var_2e04480f = randomfloatrange(distfromcenter, distfromcenter + var_f64a59e);
    }
    var_dc04453c = (0.5 + var_73f7fb2a + randomfloatrange(-0.5, 0.5)) * lanewidth;
    var_8bfbd3f = (cos(var_dc04453c), sin(var_dc04453c), 0);
    desiredpos = pod.origin + var_2e04480f * var_8bfbd3f;
    var_9ea07d03 = pod.state == 2;
    smartobject = smart_object::function_ab981ed(desiredpos, pod.volume, 512, var_9ea07d03);
    if (isdefined(smartobject)) {
        return self namespace_77fd5d41::function_4efdd16b(smartobject);
    }
    pod_addusedpoint(pod, self.origin);
    if (isdefined(pod.volume)) {
        searchpos = namespace_206491b4::findclosestnonlospointwithinvolume(pod.volume, volume.origin, desiredpos, pod.usedpoints, 12);
        if (isdefined(searchpos)) {
            pod_addusedpoint(pod, searchpos);
            return searchpos;
        }
    } else if (volume.goalradius > 64 && isdefined(volume.scriptgoalpos)) {
        searchpos = namespace_206491b4::findclosestnonlospointwithinradius(volume.scriptgoalpos, volume.goalradius, volume.origin, desiredpos, pod.usedpoints, 12);
        if (isdefined(searchpos)) {
            pod_addusedpoint(pod, searchpos);
            return searchpos;
        }
    }
    var_a212a37d = getclosestpointonnavmesh(desiredpos, 500, 16);
    if (!isdefined(var_a212a37d)) {
        var_a212a37d = desiredpos;
    }
    var_e887f629 = undefined;
    if (isdefined(pod.volume)) {
        var_e887f629 = self findlastpointonpathwithinvolume(var_a212a37d, pod.volume);
        if (!isdefined(var_e887f629)) {
            var_e887f629 = getrandomnavpoint(pod.origin, var_29469527);
        }
    }
    if (!isdefined(var_e887f629)) {
        var_e887f629 = getrandomnavpoint(var_a212a37d, var_29469527);
    }
    if (!isdefined(var_e887f629)) {
        var_e887f629 = getclosestpointonnavmesh(pod.origin, 500, 16);
        if (!isdefined(var_e887f629)) {
            var_e887f629 = pod.origin;
        }
    }
    return var_e887f629;
}

// Namespace stealth_group/group
// Params 6, eflags: 0x2 linked
// Checksum 0x62b0f510, Offset: 0x2f38
// Size: 0xd6
function ispointinlane(point, pod, var_941fad23, lanewidth, distfromcenter, var_f64a59e) {
    var_1a3a18a0 = point.origin - pod.origin;
    d = length(var_1a3a18a0);
    angle = vectortoyaw(var_1a3a18a0);
    diff = angle - var_941fad23;
    if (diff >= 0 && diff <= lanewidth) {
        if (distfromcenter + var_f64a59e > d) {
            return true;
        }
    }
    return false;
}

// Namespace stealth_group/group
// Params 3, eflags: 0x2 linked
// Checksum 0x112f3fc0, Offset: 0x3018
// Size: 0xa4
function group_eventcoverblown(groupname, guy, e) {
    groupdata = getgroup(groupname);
    groupdata thread group_delayedcoverblownpropagation(guy);
    var_89808178 = group_assigntoinvestigatepod(groupdata, guy, e.investigate_pos);
    if (var_89808178) {
        self thread group_coverblown_seekbackup(groupdata, e);
    }
}

// Namespace stealth_group/group
// Params 1, eflags: 0x2 linked
// Checksum 0x657669d3, Offset: 0x30c8
// Size: 0x3e
function group_delayedcoverblownpropagation(guy) {
    wait(2);
    if (isdefined(guy) && isalive(guy)) {
        self.bcoverhasbeenblown = 1;
    }
}

// Namespace stealth_group/group
// Params 2, eflags: 0x2 linked
// Checksum 0xd9607ead, Offset: 0x3110
// Size: 0x22c
function group_coverblown_seekbackup(groupdata, e) {
    self endon(#"death", #"hash_15ec42f1846ef9d0", #"takedown");
    waitframe(1);
    pod = group_findpod(groupdata, self);
    if (!isdefined(pod)) {
        return;
    }
    if (pod.members.size == 1) {
        nummembers = groupdata.members.size;
        for (imember = 0; imember < nummembers; imember++) {
            otherguy = groupdata.members[imember];
            if (otherguy != self && otherguy.stealth.bsmstate == 0 && distancesquared(otherguy.origin, self.origin) < 10000) {
                otherguy ai::look_at(self, undefined, undefined, 0.55);
            }
        }
    }
    if (group_checkrequestbackupoutsideofvolume(e)) {
        return;
    }
    if (groupdata.members.size > 1) {
        pod = group_findpod(groupdata, self);
        if (isdefined(pod) && pod.state == 1 && pod.members.size == 1 && (!isdefined(pod.borigininvolume) || pod.borigininvolume)) {
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "seek_backup", 2, undefined, 1);
        }
    }
}

// Namespace stealth_group/group
// Params 2, eflags: 0x2 linked
// Checksum 0xf59d482b, Offset: 0x3348
// Size: 0x80
function pod_updateinvestigateorigin(guy, pos) {
    assert(isdefined(pos));
    if (!isdefined(self)) {
        return;
    }
    self.origin = pos;
    if (!isdefined(self.needsupdate)) {
        self.needsupdate = [];
    }
    self.investigateoriginguy = guy;
    self.needsupdate[self.needsupdate.size] = guy;
}

// Namespace stealth_group/group
// Params 2, eflags: 0x2 linked
// Checksum 0x5c8752e8, Offset: 0x33d0
// Size: 0x11c
function group_eventhunt(groupname, guy) {
    groupdata = getgroup(groupname);
    lastknownpos = self.origin;
    lastknowntime = 0;
    if (isdefined(guy.enemy)) {
        lastknownpos = guy lastknownpos(guy.enemy);
        lastknowntime = guy lastknowntime(guy.enemy);
        var_3951724e = getclosestpointonnavmesh(lastknownpos, 500, 16);
        if (!isdefined(var_3951724e)) {
            var_3951724e = lastknownpos;
        }
        lastknownpos = var_3951724e;
    }
    group_removefrompod(groupdata, guy);
    group_assigntohuntpod(groupdata, guy, lastknownpos, lastknowntime);
}

// Namespace stealth_group/group
// Params 2, eflags: 0x2 linked
// Checksum 0xca749914, Offset: 0x34f8
// Size: 0x112
function group_updatepodhuntorigin(guy, var_4af4ea3d) {
    groupdata = getgroup(guy.script_stealthgroup);
    pod = group_findpod(groupdata, guy);
    assert(isdefined(pod));
    assert(pod.state == 2);
    assert(isdefined(var_4af4ea3d));
    function_f6ab9430(pod, var_4af4ea3d);
    pod.borigininvestigated = undefined;
    if (isdefined(pod.volume)) {
        pod.borigininvolume = pod.volume istouching(pod.origin);
    }
    return pod.origin;
}

// Namespace stealth_group/group
// Params 0, eflags: 0x2 linked
// Checksum 0x46f48241, Offset: 0x3618
// Size: 0xaa
function pod_hunt_update() {
    self endon(#"state_change");
    self thread pod_hunt_hunker_update();
    if (isdefined(level.stealth.hunttimeout) && level.stealth.hunttimeout[self.script_stealthgroup]) {
        endtime = level.stealth.hunttimeout[self.script_stealthgroup];
        wait(endtime);
        self thread pod_settoidle();
        return;
    }
    return;
}

// Namespace stealth_group/group
// Params 0, eflags: 0x2 linked
// Checksum 0x132c9d58, Offset: 0x36d0
// Size: 0x106
function pod_hunt_hunker_update() {
    self endon(#"state_change");
    while (true) {
        var_65199be1 = isdefined(self.volume) && !is_true(self.borigininvolume);
        if (var_65199be1) {
            if (!isdefined(self.hunkerstarttime)) {
                self.hunkerstarttime = gettime();
                self.bhunkering = 1;
            } else if (is_true(self.bhunkering) && gettime() > self.hunkerstarttime + 20000) {
                self.bhunkering = undefined;
                self function_b55ead5e();
            }
        } else {
            self.bhunkering = undefined;
            self.hunkerstarttime = undefined;
            self function_b55ead5e();
        }
        waitframe(1);
    }
}

// Namespace stealth_group/group
// Params 0, eflags: 0x2 linked
// Checksum 0xd48f7fad, Offset: 0x37e0
// Size: 0xb0
function function_b55ead5e() {
    self.bhunkering = undefined;
    self.hunkerstarttime = undefined;
    foreach (member in self.members) {
        if (isalive(member)) {
            member namespace_77fd5d41::hunt_hunker_terminate(member);
        }
    }
}

// Namespace stealth_group/group
// Params 0, eflags: 0x2 linked
// Checksum 0x7c99ba34, Offset: 0x3898
// Size: 0x168
function pod_hunt_delayednotify() {
    self endon(#"state_change");
    wait(3);
    groupdata = self.parentgroup;
    foreach (guy in groupdata.members) {
        if (guy [[ guy.fnisinstealthidle ]]() || guy [[ guy.fnisinstealthinvestigate ]]()) {
            var_d6fd5eab = 1;
            if (isdefined(guy.stealth.funcs) && isdefined(guy.stealth.funcs[#"hash_24243e64d705b92a"])) {
                var_d6fd5eab = guy [[ guy.stealth.funcs[#"hash_24243e64d705b92a"] ]]();
            }
            if (var_d6fd5eab) {
                guy namespace_f1f700ac::bt_set_stealth_state("hunt", undefined);
            }
        }
    }
}

// Namespace stealth_group/group
// Params 0, eflags: 0x2 linked
// Checksum 0x8a9498d9, Offset: 0x3a08
// Size: 0x4ca
function pod_hunt_vo() {
    if (!isdefined(level.bcs_stealthhuntthink)) {
        level.bcs_stealthhuntthink = 1;
    } else {
        return;
    }
    first_lost = undefined;
    while (true) {
        hunters = [];
        foreach (group in level.stealth.groupdata.groups) {
            if (isdefined(group.pods)) {
                foreach (pod in group.pods) {
                    if (isdefined(pod.state) && pod.state == 2) {
                        foreach (hunter in pod.members) {
                            array::add(hunters, hunter);
                        }
                    }
                }
            }
        }
        if (hunters.size < 1) {
            break;
        }
        if (hunters.size > 1) {
            hunters = arraysortclosest(hunters, getplayers()[0].origin);
            if (!is_true(hunters[0].ignoreall)) {
                leader = hunters[0];
                arrayremovevalue(hunters, leader);
                wait(randomfloatrange(2, 2.5));
                function_1eaaceab(hunters);
                hunters = arraysortclosest(hunters, getplayers()[0].origin);
                hunter = undefined;
                switch (hunters.size) {
                case 0:
                    break;
                case 1:
                case 2:
                case 3:
                    hunter = hunters[randomint(hunters.size)];
                    break;
                default:
                    hunter = hunters[randomint(3)];
                    break;
                }
                if (!isdefined(hunter)) {
                    break;
                }
                array::add(hunters, leader);
                hunter thread namespace_979752dc::function_f5f4416f("stealth", "hunt", "lost_sight", undefined, undefined, 1);
            }
        } else {
            hunter = hunters[0];
            if (!is_true(hunter.ignoreall)) {
                if (!isdefined(first_lost)) {
                    first_lost = 1;
                    hunter thread namespace_979752dc::function_f5f4416f("stealth", "hunt", "first_lost");
                } else {
                    hunter thread namespace_979752dc::function_f5f4416f("stealth", "hunt", "lost_sight");
                }
            }
        }
        wait(randomintrange(10, 15));
    }
    level.bcs_stealthhuntthink = undefined;
}

// Namespace stealth_group/group
// Params 2, eflags: 0x2 linked
// Checksum 0xf515a6c5, Offset: 0x3ee0
// Size: 0x140
function group_assigntocombatpod(groupdata, guy) {
    group_removefrompod(groupdata, guy);
    foreach (pod in groupdata.pods) {
        if (pod.state == 3) {
            addtopod(pod, guy);
            return false;
        }
    }
    newpod = makenewpod(groupdata, 3, undefined);
    addtopod(newpod, guy);
    newpod thread pod_combat_update_checklosttarget();
    newpod thread pod_combat_periodicping();
    return true;
}

// Namespace stealth_group/group
// Params 1, eflags: 0x2 linked
// Checksum 0x5d280b69, Offset: 0x4028
// Size: 0xb8
function group_anyoneincombat(groupname) {
    groupdata = getgroup(groupname);
    foreach (pod in groupdata.pods) {
        if (pod.state == 3) {
            return true;
        }
    }
    return false;
}

// Namespace stealth_group/group
// Params 3, eflags: 0x2 linked
// Checksum 0x6fee2630, Offset: 0x40e8
// Size: 0xdc
function group_eventcombat(groupname, guy, target) {
    var_23fa0e2d = getgroup(groupname);
    targetpos = undefined;
    if (isdefined(target)) {
        targetpos = target.origin;
    }
    pod = group_findpod(var_23fa0e2d, guy);
    group_assigntocombatpod(var_23fa0e2d, guy);
    var_23fa0e2d thread group_delayedcombatpropagation(2, guy, target, targetpos);
    var_23fa0e2d thread group_delayedcombatpropagationfromhunt(3, guy, target, targetpos);
}

// Namespace stealth_group/group
// Params 4, eflags: 0x2 linked
// Checksum 0x7849215e, Offset: 0x41d0
// Size: 0x324
function group_delayedcombatpropagationfromhunt(delaytime, guy, target, targetpos) {
    wait(delaytime);
    if (!isdefined(guy) || !isalive(guy) || is_true(guy.in_melee_death)) {
        return;
    }
    if (!isdefined(target)) {
        return;
    }
    guy endon(#"death");
    target endon(#"death");
    var_5bc0b0ef = sqr(99999);
    foreach (groupdata in level.stealth.groupdata.groups) {
        var_760c584d = arraysort(groupdata.members, guy.origin);
        foreach (otherguy in var_760c584d) {
            if (!isdefined(otherguy)) {
                continue;
            }
            if (guy == otherguy) {
                continue;
            }
            pod = group_findpod(groupdata, otherguy);
            if (!isdefined(pod)) {
                continue;
            }
            if (pod.state == 1 || pod.state == 2 && isdefined(pod.target) && pod.target == target) {
                if (guy.script_stealthgroup == otherguy.script_stealthgroup || distancesquared(guy.origin, otherguy.origin) < var_5bc0b0ef) {
                    otherguy getenemyinfo(target);
                    otherguy function_a3fcf9e0("combat", target, targetpos);
                    /#
                        stealth_debug::function_65b21ab8(otherguy, "<unknown string>");
                    #/
                    wait(0.5);
                }
            }
        }
    }
}

// Namespace stealth_group/group
// Params 4, eflags: 0x2 linked
// Checksum 0x622cef40, Offset: 0x4500
// Size: 0x4b4
function group_delayedcombatpropagation(delaytime, guy, target, targetpos) {
    initialwait = float(function_60d95f53()) / 1000 * 2;
    wait(initialwait);
    if (is_true(guy.stealth.reacting)) {
        guy waittill(#"hash_22ca87c523f21d6d");
    }
    if (delaytime > initialwait) {
        wait(delaytime - initialwait);
    }
    var_91239be5 = sqr(99999);
    if (!isdefined(guy) || !isalive(guy) || is_true(guy.in_melee_death)) {
        return;
    }
    guy endon(#"death");
    self.bcoverhasbeenblown = 1;
    level notify(#"cover_blown");
    foreach (groupdata in level.stealth.groupdata.groups) {
        var_760c584d = arraysort(groupdata.members, guy.origin);
        foreach (otherguy in var_760c584d) {
            if (!isalive(otherguy)) {
                continue;
            }
            if (guy == otherguy) {
                continue;
            }
            var_b288ad4a = 0;
            var_3f01ab8a = 0;
            pod = group_findpod(groupdata, otherguy);
            if (isdefined(pod) && pod.state == 3) {
                continue;
            }
            if (isdefined(target)) {
                if (otherguy cansee(target)) {
                    var_b288ad4a = 1;
                    var_3f01ab8a = 1;
                    /#
                        stealth_debug::function_65b21ab8(otherguy, "<unknown string>");
                    #/
                }
            }
            if (!var_b288ad4a && otherguy cansee(guy)) {
                var_b288ad4a = 1;
                /#
                    stealth_debug::function_65b21ab8(otherguy, "<unknown string>");
                #/
            }
            if (!var_b288ad4a && distancesquared(otherguy.origin, guy.origin) < var_91239be5 && (!false || otherguy util::has_tac_vis(guy))) {
                var_b288ad4a = 1;
                if (isdefined(target)) {
                    var_3f01ab8a = 1;
                }
                /#
                    stealth_debug::function_65b21ab8(otherguy, "<unknown string>");
                #/
            }
            if (var_3f01ab8a) {
                otherguy getenemyinfo(target);
            }
            if (var_b288ad4a) {
                if (isdefined(target)) {
                    otherguy function_a3fcf9e0("combat", target, targetpos);
                } else {
                    otherguy function_a3fcf9e0("combat", guy, guy.origin);
                }
                wait(0.5);
            }
        }
    }
}

// Namespace stealth_group/group
// Params 2, eflags: 0x0
// Checksum 0xa0952db7, Offset: 0x49c0
// Size: 0x100
function pod_settocombat(var_3f01ab8a, enemy) {
    assert(!var_3f01ab8a || isdefined(enemy));
    localmembers = self.members;
    foreach (guy in localmembers) {
        if (var_3f01ab8a) {
            guy getenemyinfo(enemy);
        }
        guy function_a3fcf9e0("combat", enemy, enemy.origin);
    }
}

// Namespace stealth_group/group
// Params 0, eflags: 0x2 linked
// Checksum 0x3b1ec5d7, Offset: 0x4ac8
// Size: 0x2e4
function groups_combat_checklosttarget() {
    level notify(#"hash_231bf1036978b7d8");
    level endon(#"hash_231bf1036978b7d8");
    waitframe(1);
    while (is_true(level.stealth.var_ffa24aff)) {
        var_3b124a7f = [];
        var_2f7e139f = 1;
        foreach (groupdata in level.stealth.groupdata.groups) {
            foreach (pod in groupdata.pods) {
                if (pod.state == 3) {
                    var_3b124a7f[var_3b124a7f.size] = pod;
                    if (!isdefined(pod.bchecklosttarget) || !pod pod_haslostenemy()) {
                        var_2f7e139f = 0;
                        break;
                    }
                }
            }
            if (!var_2f7e139f) {
                break;
            }
        }
        if (var_2f7e139f) {
            foreach (var_49201461 in var_3b124a7f) {
                arrayremovevalue(var_49201461.members, undefined);
                if (var_49201461.members.size > 0) {
                    var_62ac8068 = var_49201461.members[0];
                    var_62ac8068 namespace_979752dc::group_flag_set("stealth_combat_hunting");
                    var_49201461 pod_settohunt();
                }
                wait(randomfloatrange(0.5, 1));
            }
            return;
        }
        wait(2);
    }
}

// Namespace stealth_group/group
// Params 0, eflags: 0x2 linked
// Checksum 0xcb2d2cb4, Offset: 0x4db8
// Size: 0xec
function pod_combat_update_checklosttarget() {
    self endon(#"state_change");
    wait(5);
    if (!self pod_haslostenemy() && isdefined(level.stealth.funcs) && isdefined(level.stealth.funcs[#"hash_6fddb66367e0a124"])) {
        self thread [[ level.stealth.funcs[#"hash_6fddb66367e0a124"] ]]();
    }
    if (!is_true(level.stealth.var_ffa24aff)) {
        return;
    }
    self.bchecklosttarget = 1;
    level thread groups_combat_checklosttarget();
}

// Namespace stealth_group/group
// Params 0, eflags: 0x2 linked
// Checksum 0x82a1047a, Offset: 0x4eb0
// Size: 0x2e4
function pod_haslostenemy() {
    ctimetolose = 10000;
    var_36307b39 = 20000;
    var_e7b5c776 = 15000;
    cstillrighttheredistsq = 50625;
    curtime = gettime();
    var_2f31a4a5 = undefined;
    foreach (guy in self.members) {
        if (isdefined(guy.stealth.funcs) && isdefined(guy.stealth.funcs[#"hash_6fc6e860faaf2da5"])) {
            return guy [[ guy.stealth.funcs[#"hash_6fc6e860faaf2da5"] ]]();
        }
        enemy = guy.enemy;
        if (isdefined(enemy) && issentient(enemy) && isalive(enemy)) {
            if (enemy.team != "allies") {
                return 0;
            }
            lasttime = guy lastknowntime(enemy);
            if (curtime < lasttime + ctimetolose) {
                return 0;
            }
            lastknownpostoenemy = guy lastknownpos(enemy);
            if (curtime < lasttime + var_36307b39 && distancesquared(enemy.origin, lastknownpostoenemy) < cstillrighttheredistsq) {
                return 0;
            }
            if (curtime < lasttime + var_e7b5c776 && enemy util::has_tac_vis(lastknownpostoenemy)) {
                return 0;
            }
            if (isdefined(self.benemyinlowcover)) {
                return 0;
            }
            continue;
        }
        if (!isdefined(guy.enemy) && guy flag::exists("in_the_dark") && guy flag::get("in_the_dark") && curtime - guy.lastenemysighttime < ctimetolose) {
            return 0;
        }
    }
    return 1;
}

// Namespace stealth_group/group
// Params 3, eflags: 0x2 linked
// Checksum 0x7d88e8b5, Offset: 0x51a0
// Size: 0x122
function pod_isclosetoanymembers(otherguy, radius, var_2c0664ad) {
    if (!var_2c0664ad) {
        var_2c0664ad = 0;
    }
    radiussq = radius * radius;
    function_1eaaceab(self.members);
    foreach (guy in self.members) {
        if (distancesquared(otherguy.origin, guy.origin) > radiussq) {
            continue;
        }
        if (var_2c0664ad && !otherguy util::has_tac_vis(guy)) {
            continue;
        }
        return true;
    }
    return false;
}

// Namespace stealth_group/group
// Params 0, eflags: 0x2 linked
// Checksum 0x6fff550a, Offset: 0x52d0
// Size: 0x1de
function pod_combat_periodicping() {
    self endon(#"state_change");
    var_69617fed = 1;
    var_26031df0 = 384;
    wait(var_69617fed);
    while (true) {
        foreach (group in level.stealth.groupdata.groups) {
            foreach (guy in group.members) {
                if (guy.stealth.bsmstate == 3 || guy.stealth.bsmstate == 2) {
                    continue;
                }
                if (self pod_isclosetoanymembers(guy, var_26031df0, 1)) {
                    /#
                        stealth_debug::function_65b21ab8(guy, "<unknown string>");
                    #/
                    guy function_a3fcf9e0("combat", guy, guy.origin);
                }
            }
        }
        wait(var_69617fed);
    }
}

// Namespace stealth_group/group
// Params 0, eflags: 0x2 linked
// Checksum 0xd7197f1d, Offset: 0x54b8
// Size: 0x1c
function pod_settohunt() {
    self thread function_b921795f();
}

// Namespace stealth_group/group
// Params 0, eflags: 0x6 linked
// Checksum 0x1f746ace, Offset: 0x54e0
// Size: 0x1d8
function private function_b921795f() {
    self notify(#"pod_settohunt");
    self endon(#"pod_settohunt");
    localmembers = arraycopy(self.members);
    localmembers = arraysortclosest(localmembers, level.players[0].origin);
    foreach (guy in localmembers) {
        if (!isalive(guy)) {
            continue;
        }
        var_d6fd5eab = 1;
        if (isdefined(guy.stealth.funcs) && isdefined(guy.stealth.funcs[#"hash_24243e64d705b92a"])) {
            var_d6fd5eab = guy [[ guy.stealth.funcs[#"hash_24243e64d705b92a"] ]]();
        }
        if (!var_d6fd5eab) {
            guy namespace_f1f700ac::bt_set_stealth_state("idle", undefined);
            continue;
        }
        guy namespace_f1f700ac::bt_set_stealth_state("hunt", undefined);
        wait(randomfloatrange(0.5, 1));
    }
}

// Namespace stealth_group/group
// Params 0, eflags: 0x2 linked
// Checksum 0xa1631625, Offset: 0x56c0
// Size: 0xa0
function pod_settoidle() {
    foreach (guy in self.members) {
        guy function_a3fcf9e0("reset", guy, guy.origin);
    }
}

// Namespace stealth_group/group
// Params 1, eflags: 0x0
// Checksum 0xfc46ce3c, Offset: 0x5768
// Size: 0x96
function pod_isleader(guy) {
    groupdata = getgroup(guy.script_stealthgroup);
    pod = group_findpod(groupdata, guy);
    if (!isdefined(pod)) {
        return false;
    }
    assert(pod.members.size > 0);
    return pod.members[0] == guy;
}

// Namespace stealth_group/group
// Params 1, eflags: 0x2 linked
// Checksum 0x9376ad7c, Offset: 0x5808
// Size: 0xfc
function pod_getclosestguy(pos) {
    var_a9da6f8e = undefined;
    closestdistsq = 99999999;
    foreach (guy in self.members) {
        if (!isdefined(guy)) {
            continue;
        }
        distsq = distancesquared(guy.origin, pos);
        if (!isdefined(var_a9da6f8e) || distsq < closestdistsq) {
            var_a9da6f8e = guy;
            closestdistsq = distsq;
        }
    }
    return var_a9da6f8e;
}

// Namespace stealth_group/group
// Params 0, eflags: 0x2 linked
// Checksum 0x4a59aae8, Offset: 0x5910
// Size: 0x108
function pod_delete() {
    self notify(#"state_change");
    assert(isdefined(self.parentgroup));
    assert(self.members.size == 0);
    groupdata = self.parentgroup;
    numpods = groupdata.pods.size;
    for (ipod = 0; ipod < numpods; ipod++) {
        if (groupdata.pods[ipod] == self) {
            var_542fc63d = groupdata.pods.size - 1;
            groupdata.pods[ipod] = groupdata.pods[var_542fc63d];
            groupdata.pods[var_542fc63d] = undefined;
            break;
        }
    }
}

