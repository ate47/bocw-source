// Atian COD Tools GSC CW decompiler test
#using script_fe983bbff18d77f;
#using script_6f8610e78fdd3440;
#using script_1883fa4e60abbf9f;
#using script_7e3221b6c80d8cc4;
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
function function_aec6058a(*ent, *vol) {
    
}

#namespace namespace_3fc78cb6;

// Namespace namespace_3fc78cb6/group
// Params 1, eflags: 0x2 linked
// Checksum 0x6f8a4a44, Offset: 0x1b8
// Size: 0xf8
function function_e4c62da6(groupname) {
    if (!isdefined(level.stealth.var_9bd7a27)) {
        level.stealth.var_9bd7a27 = spawnstruct();
    }
    var_9bd7a27 = level.stealth.var_9bd7a27;
    if (!isdefined(var_9bd7a27.groups)) {
        var_9bd7a27.groups.var_9bd7a27 = [];
    }
    var_db2f9de8 = var_9bd7a27.groups[groupname];
    if (!isdefined(var_db2f9de8)) {
        var_db2f9de8 = spawnstruct();
        var_9bd7a27.groups[groupname] = var_db2f9de8;
        var_db2f9de8.name = groupname;
        var_db2f9de8.members.var_db2f9de8 = [];
        var_db2f9de8.pods.var_db2f9de8 = [];
    }
    level.stealth.var_9bd7a27 notify(groupname);
}

// Namespace namespace_3fc78cb6/group
// Params 2, eflags: 0x2 linked
// Checksum 0xbbd34e67, Offset: 0x2b8
// Size: 0xec
function function_573416a4(groupname, guy) {
    if (!isdefined(level.stealth.var_9bd7a27) || !isdefined(level.stealth.var_9bd7a27.groups) || !isdefined(level.stealth.var_9bd7a27.groups[groupname])) {
        function_e4c62da6(groupname);
    }
    var_db2f9de8 = level.stealth.var_9bd7a27.groups[groupname];
    var_db2f9de8.members[var_db2f9de8.members.size] = guy;
    var_db2f9de8 thread function_dc999fba(guy);
}

// Namespace namespace_3fc78cb6/group
// Params 1, eflags: 0x2 linked
// Checksum 0xe520e14c, Offset: 0x3b0
// Size: 0x64
function function_b6ebd4af(guy) {
    if (!isdefined(guy.var_d6319e36)) {
        return;
    }
    var_56952d23 = getgroup(guy.var_d6319e36);
    if (isdefined(var_56952d23)) {
        var_56952d23 function_34c06bfe(guy);
    }
}

// Namespace namespace_3fc78cb6/group
// Params 1, eflags: 0x2 linked
// Checksum 0xe897695b, Offset: 0x420
// Size: 0x124
function function_34c06bfe(guy) {
    function_46846d9b(self, guy);
    var_da75a416 = self.members.size;
    for (var_774cf4d0 = 0; var_774cf4d0 < var_da75a416; var_774cf4d0++) {
        if (self.members[var_774cf4d0] == guy) {
            var_a47c95a3 = self.members.size - 1;
            self.members[var_774cf4d0] = self.members[var_a47c95a3];
            self.members[var_a47c95a3] = undefined;
            break;
        }
    }
    if (isdefined(guy.stealth) && isdefined(guy.stealth.var_bd106aaa)) {
        region = guy.stealth.var_bd106aaa.var_64a52bf3;
        guy namespace_5cd4acd8::function_327e7609(region);
    }
}

// Namespace namespace_3fc78cb6/group
// Params 1, eflags: 0x2 linked
// Checksum 0x47a22f55, Offset: 0x550
// Size: 0x54
function function_dc999fba(guy) {
    guy waittill(#"death");
    guy thread namespace_f1f700ac::function_65da73e7();
    self function_34c06bfe(guy);
}

// Namespace namespace_3fc78cb6/group
// Params 0, eflags: 0x0
// Checksum 0x63eda8fc, Offset: 0x5b0
// Size: 0x172
function function_b92c96bc() {
    if (!isdefined(level.stealth.var_9bd7a27)) {
        return;
    }
    if (!isdefined(level.stealth.var_9bd7a27.groups)) {
        return;
    }
    /#
        foreach (group in level.stealth.var_9bd7a27.groups) {
            if (isdefined(group.pods)) {
                foreach (pod in group.pods) {
                    pod notify(#"debug off");
                }
            }
        }
    #/
    level.stealth.var_9bd7a27.groups = undefined;
}

// Namespace namespace_3fc78cb6/group
// Params 1, eflags: 0x2 linked
// Checksum 0xc29bae96, Offset: 0x730
// Size: 0xa4
function getgroup(groupname) {
    /#
        assert(isdefined(level.stealth));
    #/
    /#
        assert(isdefined(level.stealth.var_9bd7a27));
    #/
    /#
        assert(isdefined(level.stealth.var_9bd7a27.groups));
    #/
    return level.stealth.var_9bd7a27.groups[groupname];
}

// Namespace namespace_3fc78cb6/group
// Params 0, eflags: 0x0
// Checksum 0xca509509, Offset: 0x7e0
// Size: 0x2bc
function function_957fac82() {
    /#
        foreach (group in level.stealth.var_9bd7a27.groups) {
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
    #/
}

// Namespace namespace_3fc78cb6/group
// Params 3, eflags: 0x2 linked
// Checksum 0xedc6e61, Offset: 0xaa8
// Size: 0x98
function function_92bed96c(var_9bd7a27, state, origin) {
    var_d04be568 = spawnstruct();
    var_d04be568.state = state;
    var_d04be568.members.var_d04be568 = [];
    var_d04be568.var_5b37f889 = var_9bd7a27;
    var_9bd7a27.pods[var_9bd7a27.pods.size] = var_d04be568;
    if (isdefined(origin)) {
        function_f6ab9430(var_d04be568, origin);
    }
    return var_d04be568;
}

// Namespace namespace_3fc78cb6/group
// Params 3, eflags: 0x2 linked
// Checksum 0x29be02b3, Offset: 0xb48
// Size: 0x8c
function function_f6ab9430(pod, origin, var_ccf5f27b) {
    /#
        assert(isdefined(origin));
    #/
    pod.origin.pod = getclosestpointonnavmesh(origin, 500, 16);
    if (!isdefined(pod.origin)) {
        pod.origin = origin;
    }
    function_4f3db9c6(pod, var_ccf5f27b);
}

// Namespace namespace_3fc78cb6/group
// Params 2, eflags: 0x2 linked
// Checksum 0xd5791ce4, Offset: 0xbe0
// Size: 0x2c
function function_5e27aefe(pod, guy) {
    pod.members[pod.members.size] = guy;
}

// Namespace namespace_3fc78cb6/group
// Params 2, eflags: 0x2 linked
// Checksum 0xaadf58ca, Offset: 0xc18
// Size: 0x20c
function function_4f3db9c6(pod, var_ccf5f27b) {
    mindistsq = function_a3f6cdac(100);
    if (!isdefined(var_ccf5f27b)) {
        var_ccf5f27b = 0;
    }
    /#
        assert(isdefined(pod));
    #/
    if (!isdefined(pod.origin)) {
        return;
    }
    if (var_ccf5f27b > 3) {
        return;
    }
    foreach (group in level.stealth.var_9bd7a27.groups) {
        foreach (var_dff5abf9 in group.pods) {
            if (var_dff5abf9 === pod) {
                continue;
            }
            if (!isdefined(var_dff5abf9.origin)) {
                continue;
            }
            if (distancesquared(var_dff5abf9.origin, pod.origin) < mindistsq) {
                var_85bca00c = function_d040bd9(pod.origin, 500);
                if (isdefined(var_85bca00c)) {
                    function_f6ab9430(pod, var_85bca00c, var_ccf5f27b + 1);
                }
            }
        }
    }
}

// Namespace namespace_3fc78cb6/group
// Params 5, eflags: 0x2 linked
// Checksum 0xd13139a7, Offset: 0xe30
// Size: 0x136
function function_6357ddad(var_9bd7a27, var_b53645b0, var_87ae720e, guy, var_844650da) {
    var_76bc7166 = 65536;
    foreach (pod in var_9bd7a27.pods) {
        if (isdefined(var_b53645b0) && var_b53645b0 == pod) {
            continue;
        }
        if (pod.state == var_87ae720e) {
            if (distancesquared(var_844650da, pod.origin) < var_76bc7166) {
                function_46846d9b(var_9bd7a27, guy);
                function_5e27aefe(pod, guy);
                return pod;
            }
        }
    }
}

// Namespace namespace_3fc78cb6/group
// Params 3, eflags: 0x2 linked
// Checksum 0x2cac26ef, Offset: 0xf70
// Size: 0x170
function function_91679cf9(var_9bd7a27, guy, var_844650da) {
    var_76bc7166 = 65536;
    var_3a13d151 = function_6357ddad(var_9bd7a27, undefined, 1, guy, var_844650da);
    if (isdefined(var_3a13d151)) {
        var_3a13d151 function_21e27027(guy, var_844650da);
        return 0;
    }
    function_46846d9b(var_9bd7a27, guy);
    var_d04be568 = function_92bed96c(var_9bd7a27, 1, var_844650da);
    function_5e27aefe(var_d04be568, guy);
    function_4b33561d(var_d04be568, guy.var_d6319e36, var_844650da);
    vol = level.stealth.var_65d8f1bf[self.var_d6319e36];
    if (isdefined(vol)) {
        var_d04be568.volume = vol;
        var_d04be568.var_35becac4.var_d04be568 = vol istouching(var_844650da);
    }
    /#
        thread function_f0edd2ed(var_d04be568);
    #/
    return 1;
}

// Namespace namespace_3fc78cb6/group
// Params 4, eflags: 0x2 linked
// Checksum 0x9cf25b13, Offset: 0x10e8
// Size: 0x304
function function_6944c509(var_9bd7a27, guy, lastknownpos, *lastknowntime) {
    function_46846d9b(guy, lastknownpos);
    foreach (pod in guy.pods) {
        if (pod.state == 2) {
            if (!isdefined(lastknownpos.enemy) || !isdefined(pod.target) || pod.target == lastknownpos.enemy) {
                function_5e27aefe(pod, lastknownpos);
                if (!isdefined(pod.target)) {
                    pod.target.pod = lastknownpos.enemy;
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
    var_d04be568 = function_92bed96c(guy, 2, lastknowntime);
    function_5e27aefe(var_d04be568, lastknownpos);
    var_d04be568.target.var_d04be568 = lastknownpos.enemy;
    function_4b33561d(var_d04be568, lastknownpos.var_d6319e36, lastknowntime);
    vol = level.stealth.var_d89f1312[self.var_d6319e36];
    if (isdefined(vol)) {
        var_d04be568.volume = vol;
        var_d04be568.var_35becac4.var_d04be568 = vol istouching(lastknowntime);
    }
    var_d04be568.var_1e912fb5.var_d04be568 = gettime();
    level thread function_7b7042da();
    var_d04be568 thread function_d474dfcd();
    var_d04be568 thread function_2714d93c();
    /#
        if (isdefined(var_d04be568.var_35becac4) && !var_d04be568.var_35becac4) {
            function_65b21ab8(lastknownpos, "<unknown string>");
        } else {
            function_65b21ab8(lastknownpos, "<unknown string>");
        }
    #/
    /#
        var_d04be568 thread function_f0edd2ed(var_d04be568);
    #/
}

// Namespace namespace_3fc78cb6/group
// Params 2, eflags: 0x2 linked
// Checksum 0xd2799050, Offset: 0x13f8
// Size: 0x164
function function_46846d9b(var_9bd7a27 = getgroup(guy.var_d6319e36), guy) {
    pod = function_9fd1b21a(var_9bd7a27, guy);
    if (!isdefined(pod)) {
        return;
    }
    var_da75a416 = pod.members.size;
    for (var_774cf4d0 = 0; var_774cf4d0 < var_da75a416; var_774cf4d0++) {
        if (pod.members[var_774cf4d0] == guy) {
            var_a47c95a3 = pod.members.size - 1;
            pod.members[var_774cf4d0] = pod.members[var_a47c95a3];
            pod.members[var_a47c95a3] = undefined;
            break;
        }
    }
    if (pod.members.size == 0) {
        if (pod.state == 2) {
            guy namespace_979752dc::function_beced526("stealth_combat_hunting", guy.var_d6319e36);
        }
        pod function_72b42550();
    }
}

// Namespace namespace_3fc78cb6/group
// Params 1, eflags: 0x0
// Checksum 0x8e4ff02d, Offset: 0x1568
// Size: 0xfc
function function_11a1e593(origin) {
    /#
        r = 6;
        forward = (r, 0, 0);
        left = (0, r, 0);
        up = (0, 0, r);
        color = (0, 1, 0);
        line(origin - forward, origin + forward, color, 1, 0, 1);
        line(origin - left, origin + left, color, 1, 0, 1);
        line(origin - up, origin + up, color, 1, 0, 1);
    #/
}

// Namespace namespace_3fc78cb6/group
// Params 1, eflags: 0x0
// Checksum 0xab5d7b98, Offset: 0x1670
// Size: 0x58e
function function_f0edd2ed(pod) {
    /#
        pod endon(#"state_change");
        up = vectorscale((0, 0, 1), 128);
        down = vectorscale((0, 0, -1), 12);
        while (1) {
            if (function_852e4bbb() && isdefined(pod.origin)) {
                zoffset = 0;
                var_5a7a026e = [];
                foreach (group in level.stealth.var_9bd7a27.groups) {
                    foreach (var_dff5abf9 in group.pods) {
                        if (!isdefined(var_dff5abf9.origin)) {
                            continue;
                        }
                        if (distancesquared(var_dff5abf9.origin, pod.origin) < function_a3f6cdac(20)) {
                            if (pod == var_dff5abf9) {
                                zoffset = var_5a7a026e.size * 30;
                            }
                            var_5a7a026e[var_5a7a026e.size] = var_dff5abf9;
                        }
                    }
                }
                zoffset = (0, 0, zoffset);
                line(pod.origin + zoffset, pod.origin + up + zoffset, (0, 0, 1), 1, 0, 1);
                groupname = pod.var_5b37f889.name;
                if (isdefined(groupname)) {
                    print3d(pod.origin + zoffset, groupname, (1, 1, 0), 1, 0.8, 1);
                }
                var_887c25e4 = "<unknown string>";
                foreach (member in pod.members) {
                    if (isalive(member)) {
                        var_887c25e4 = var_887c25e4 + "<unknown string>" + member getentitynumber();
                    }
                }
                if (pod.state == 1) {
                    print3d(pod.origin + zoffset + down, "<unknown string>" + var_887c25e4, (1, 1, 0), 1, 0.4, 1);
                } else if (pod.state == 2) {
                    print3d(pod.origin + zoffset + down, "<unknown string>" + var_887c25e4, (1, 1, 0), 1, 0.4, 1);
                }
                foreach (point in pod.var_5462c308) {
                    function_11a1e593(point.origin);
                }
                var_7c70464e = pod.members.size;
                var_f2e0ace0 = 360 / var_7c70464e;
                for (var_e4551d3f = 0; var_e4551d3f < var_7c70464e + 1; var_e4551d3f++) {
                    angle = var_e4551d3f * var_f2e0ace0;
                    line(pod.origin, pod.origin + 128 * (cos(angle - var_f2e0ace0), sin(angle - var_f2e0ace0), 0), (0, 1, 0), 1, 0, 1);
                }
            }
            waitframe(1);
        }
    #/
}

// Namespace namespace_3fc78cb6/group
// Params 2, eflags: 0x2 linked
// Checksum 0x3fd6b46c, Offset: 0x1c08
// Size: 0x2ea
function function_ddedab04(pos, var_ae3b954a) {
    var_3f2754d4 = 2304;
    var_37f4db4d = undefined;
    closestdistsq = 2359296;
    var_b588680 = [];
    foreach (group in level.stealth.var_9bd7a27.groups) {
        if (group.name == var_ae3b954a) {
            continue;
        }
        volume = level.stealth.var_65d8f1bf[group.name];
        if (isdefined(volume) && !volume istouching(pos)) {
            continue;
        }
        foreach (pod in group.pods) {
            if (pod.state == 1 && distance2dsquared(pod.origin, pos) < var_3f2754d4) {
                return undefined;
            }
        }
        foreach (guy in group.members) {
            if ([[ self.var_c6018f4 ]]()) {
                distsq = distancesquared(guy.origin, pos);
                if (distsq < closestdistsq) {
                    var_b588680[var_b588680.size] = guy;
                    if (var_b588680.size > 8) {
                        break;
                    }
                }
            }
        }
    }
    if (var_b588680.size > 0) {
        var_37f4db4d = function_3d613058(var_b588680, pos);
    }
    return var_37f4db4d;
}

// Namespace namespace_3fc78cb6/group
// Params 1, eflags: 0x2 linked
// Checksum 0xc9c7f3d, Offset: 0x1f00
// Size: 0x114
function function_2a4de0ff(e) {
    volume = level.stealth.var_65d8f1bf[self.var_d6319e36];
    if (isdefined(volume)) {
        if (!volume istouching(e.var_ce3a18c7)) {
            var_37f4db4d = function_ddedab04(e.var_ce3a18c7, self.var_d6319e36);
            if (isdefined(var_37f4db4d)) {
                /#
                    function_65b21ab8(self, "<unknown string>");
                #/
                /#
                    function_65b21ab8(self, "<unknown string>");
                #/
                /#
                    function_65b21ab8(var_37f4db4d, "<unknown string>");
                #/
                var_37f4db4d function_a3fcf9e0("seek_backup", self, e.var_ce3a18c7);
                return 1;
            }
        }
    }
    return 0;
}

// Namespace namespace_3fc78cb6/group
// Params 3, eflags: 0x2 linked
// Checksum 0x67887362, Offset: 0x2020
// Size: 0x84
function function_f40dd0f4(groupname, guy, e) {
    var_9bd7a27 = getgroup(groupname);
    var_89808178 = function_91679cf9(var_9bd7a27, guy, e.var_ce3a18c7);
    if (var_89808178) {
        guy thread function_2233d456(e);
    }
}

// Namespace namespace_3fc78cb6/group
// Params 1, eflags: 0x2 linked
// Checksum 0xcf68c8cb, Offset: 0x20b0
// Size: 0x17c
function function_2233d456(e) {
    self endon(#"death", #"hash_15ec42f1846ef9d0", #"takedown");
    waitframe(1);
    self function_2a4de0ff(e);
    waitframe(1);
    group = getgroup(self.var_d6319e36);
    pod = function_9fd1b21a(group, self);
    if (!isdefined(pod)) {
        return;
    }
    if (pod.members.size == 1) {
        var_da75a416 = group.members.size;
        for (var_774cf4d0 = 0; var_774cf4d0 < var_da75a416; var_774cf4d0++) {
            var_37f4db4d = group.members[var_774cf4d0];
            if (var_37f4db4d.stealth.var_abf79234 == 0 && distancesquared(var_37f4db4d.origin, self.origin) < 10000) {
                var_37f4db4d ai::function_ccc923fb(self, undefined, undefined, 0.55);
            }
        }
    }
}

// Namespace namespace_3fc78cb6/group
// Params 3, eflags: 0x2 linked
// Checksum 0xbe442d64, Offset: 0x2238
// Size: 0x25a
function function_4b33561d(pod, groupname, origin) {
    var_9bd7a27 = getgroup(groupname);
    /#
        assert(pod.state == 1 || pod.state == 2);
    #/
    /#
        assert(!isdefined(pod.var_5462c308));
    #/
    var_804461ee = 1000000;
    var_c491acad = [];
    var_f5ea0eba = getnodearray("seek_patrol", "targetname");
    var_7e3b3cbc = struct::get_array("seek_patrol", "targetname");
    var_f5ea0eba = arraycombine(var_f5ea0eba, var_7e3b3cbc);
    var_e10e2e46 = 0;
    while (var_e10e2e46 < var_f5ea0eba.size) {
        var_594c1bc9 = 0;
        point = var_f5ea0eba[var_e10e2e46];
        if (distancesquared(point.origin, origin) > var_804461ee) {
            var_594c1bc9 = 1;
        } else if (isdefined(point.var_d6319e36)) {
            if (point.var_d6319e36 == groupname) {
                var_c491acad[var_c491acad.size] = point;
            }
            var_594c1bc9 = 1;
        }
        if (var_594c1bc9) {
            lastpoint = var_f5ea0eba.size - 1;
            var_f5ea0eba[var_e10e2e46] = var_f5ea0eba[lastpoint];
            var_f5ea0eba[lastpoint] = undefined;
        } else {
            var_e10e2e46++;
        }
    }
    var_c491acad = arraysortclosest(var_c491acad, origin);
    var_f5ea0eba = arraysortclosest(var_f5ea0eba, origin);
    pod.var_5462c308.pod = arraycombine(var_c491acad, var_f5ea0eba);
}

// Namespace namespace_3fc78cb6/group
// Params 2, eflags: 0x2 linked
// Checksum 0x7ea13fe8, Offset: 0x24a0
// Size: 0xc8
function function_9fd1b21a(var_9bd7a27, guy) {
    if (!isdefined(var_9bd7a27.pods)) {
        return;
    }
    var_7f61b3cb = var_9bd7a27.pods.size;
    for (var_87ea7ba7 = 0; var_87ea7ba7 < var_7f61b3cb; var_87ea7ba7++) {
        pod = var_9bd7a27.pods[var_87ea7ba7];
        var_da75a416 = pod.members.size;
        for (var_774cf4d0 = 0; var_774cf4d0 < var_da75a416; var_774cf4d0++) {
            if (pod.members[var_774cf4d0] == guy) {
                return pod;
            }
        }
    }
}

// Namespace namespace_3fc78cb6/group
// Params 2, eflags: 0x2 linked
// Checksum 0x3391b7d7, Offset: 0x2570
// Size: 0x6c
function function_172d6f0b(pod, point) {
    if (!isdefined(pod.var_239f0268)) {
        pod.var_239f0268.pod = [];
    }
    pod.var_239f0268[pod.var_239f0268.size] = {#var_3e2a561b:gettime() + 5000, #origin:point};
}

// Namespace namespace_3fc78cb6/group
// Params 1, eflags: 0x2 linked
// Checksum 0x3ef553d, Offset: 0x25e8
// Size: 0xdc
function function_7c90914c(pod) {
    if (!isdefined(pod.var_239f0268)) {
        pod.var_239f0268.pod = [];
    }
    curtime = gettime();
    var_e10e2e46 = 0;
    while (var_e10e2e46 < pod.var_239f0268.size) {
        if (isdefined(pod.var_239f0268[var_e10e2e46].var_3e2a561b) && curtime >= pod.var_239f0268[var_e10e2e46].var_3e2a561b) {
            pod.var_239f0268[var_e10e2e46] = pod.var_239f0268[pod.var_239f0268.size - 1];
            pod.var_239f0268[pod.var_239f0268.size - 1] = undefined;
        } else {
            var_e10e2e46++;
        }
    }
}

// Namespace namespace_3fc78cb6/group
// Params 2, eflags: 0x2 linked
// Checksum 0x5e7e3f4, Offset: 0x26d0
// Size: 0x85e
function function_2e140491(guy, *volume) {
    /#
        assert(isdefined(volume.origin));
    #/
    if (!isdefined(volume.origin)) {
        return (0, 0, 0);
    }
    var_9bd7a27 = getgroup(volume.var_d6319e36);
    pod = function_9fd1b21a(var_9bd7a27, volume);
    /#
        assert(isdefined(pod));
    #/
    /#
        assert(isdefined(pod.var_5462c308));
    #/
    /#
        assert(pod.state == 2 || pod.state == 1);
    #/
    /#
        assert(isdefined(pod.origin));
    #/
    if (!isdefined(pod.origin)) {
        return volume.origin;
    }
    function_7c90914c(pod);
    var_86a04485 = undefined;
    dots = [];
    arrayremovevalue(pod.members, undefined);
    foreach (member in pod.members) {
        data = spawnstruct();
        data.guy = member;
        var_5c185af = member.origin - pod.origin;
        data.angle.data = function_2981bd91(var_5c185af);
        dots[dots.size] = data;
        if (member == volume) {
            var_86a04485 = data.angle;
        }
    }
    /#
        assert(isdefined(var_86a04485));
    #/
    var_73f7fb2a = 0;
    foreach (dot in dots) {
        if (dot.angle < var_86a04485) {
            var_73f7fb2a++;
        }
    }
    var_5c185af = volume.origin - pod.origin;
    var_689e1c11 = length(var_5c185af);
    var_ee7f3a11 = 768;
    var_dc7be821 = 512;
    var_f64a59e = 256;
    var_5c49f737 = -128;
    var_29469527 = 64;
    var_f2e0ace0 = 360 / dots.size;
    var_941fad23 = var_73f7fb2a * var_f2e0ace0;
    foreach (point in pod.var_5462c308) {
        if (isdefined(point.var_b26d6449)) {
            continue;
        }
        if (function_53cf9571(point, pod, var_941fad23, var_f2e0ace0, var_689e1c11, var_f64a59e)) {
            point.var_b26d6449.point = gettime();
            return point.origin;
        }
    }
    var_2e04480f = var_689e1c11;
    if (var_689e1c11 > var_ee7f3a11) {
        var_2e04480f = max(60, randomfloatrange(var_689e1c11 - var_f64a59e * 2, var_689e1c11 - var_f64a59e));
    } else if (var_689e1c11 > var_dc7be821) {
        var_2e04480f = randomfloatrange(var_689e1c11 + var_5c49f737, var_689e1c11 + var_f64a59e);
    } else {
        var_2e04480f = randomfloatrange(var_689e1c11, var_689e1c11 + var_f64a59e);
    }
    var_dc04453c = (0.5 + var_73f7fb2a + randomfloatrange(-0.5, 0.5)) * var_f2e0ace0;
    var_8bfbd3f = (cos(var_dc04453c), sin(var_dc04453c), 0);
    var_cee92a66 = pod.origin + var_2e04480f * var_8bfbd3f;
    var_9ea07d03 = pod.state == 2;
    var_bbfbe34b = smart_object::function_ab981ed(var_cee92a66, pod.volume, 512, var_9ea07d03);
    if (isdefined(var_bbfbe34b)) {
        return self namespace_77fd5d41::function_4efdd16b(var_bbfbe34b);
    }
    function_172d6f0b(pod, self.origin);
    if (isdefined(pod.volume)) {
        var_99400a59 = namespace_206491b4::function_19b8c555(pod.volume, volume.origin, var_cee92a66, pod.var_239f0268, 12);
        if (isdefined(var_99400a59)) {
            function_172d6f0b(pod, var_99400a59);
            return var_99400a59;
        }
    } else if (volume.goalradius > 64 && isdefined(volume.var_ba41ef8)) {
        var_99400a59 = namespace_206491b4::function_24d0d4f3(volume.var_ba41ef8, volume.goalradius, volume.origin, var_cee92a66, pod.var_239f0268, 12);
        if (isdefined(var_99400a59)) {
            function_172d6f0b(pod, var_99400a59);
            return var_99400a59;
        }
    }
    var_a212a37d = getclosestpointonnavmesh(var_cee92a66, 500, 16);
    if (!isdefined(var_a212a37d)) {
        var_a212a37d = var_cee92a66;
    }
    var_e887f629 = undefined;
    if (isdefined(pod.volume)) {
        var_e887f629 = self function_a93cf25c(var_a212a37d, pod.volume);
        if (!isdefined(var_e887f629)) {
            var_e887f629 = function_d040bd9(pod.origin, var_29469527);
        }
    }
    if (!isdefined(var_e887f629)) {
        var_e887f629 = function_d040bd9(var_a212a37d, var_29469527);
    }
    if (!isdefined(var_e887f629)) {
        var_e887f629 = getclosestpointonnavmesh(pod.origin, 500, 16);
        if (!isdefined(var_e887f629)) {
            var_e887f629 = pod.origin;
        }
    }
    return var_e887f629;
}

// Namespace namespace_3fc78cb6/group
// Params 6, eflags: 0x2 linked
// Checksum 0x62b0f510, Offset: 0x2f38
// Size: 0xd6
function function_53cf9571(point, pod, var_941fad23, var_f2e0ace0, var_689e1c11, var_f64a59e) {
    var_1a3a18a0 = point.origin - pod.origin;
    d = length(var_1a3a18a0);
    angle = function_2981bd91(var_1a3a18a0);
    diff = angle - var_941fad23;
    if (diff >= 0 && diff <= var_f2e0ace0) {
        if (var_689e1c11 + var_f64a59e > d) {
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_3fc78cb6/group
// Params 3, eflags: 0x2 linked
// Checksum 0x112f3fc0, Offset: 0x3018
// Size: 0xa4
function function_4db5104b(groupname, guy, e) {
    var_9bd7a27 = getgroup(groupname);
    var_9bd7a27 thread function_3fc0db9c(guy);
    var_89808178 = function_91679cf9(var_9bd7a27, guy, e.var_ce3a18c7);
    if (var_89808178) {
        self thread function_b3200aff(var_9bd7a27, e);
    }
}

// Namespace namespace_3fc78cb6/group
// Params 1, eflags: 0x2 linked
// Checksum 0x657669d3, Offset: 0x30c8
// Size: 0x3e
function function_3fc0db9c(guy) {
    wait(2);
    if (isdefined(guy) && isalive(guy)) {
        self.var_bb6b3b67 = 1;
    }
}

// Namespace namespace_3fc78cb6/group
// Params 2, eflags: 0x2 linked
// Checksum 0xd9607ead, Offset: 0x3110
// Size: 0x22c
function function_b3200aff(var_9bd7a27, e) {
    self endon(#"death", #"hash_15ec42f1846ef9d0", #"takedown");
    waitframe(1);
    pod = function_9fd1b21a(var_9bd7a27, self);
    if (!isdefined(pod)) {
        return;
    }
    if (pod.members.size == 1) {
        var_da75a416 = var_9bd7a27.members.size;
        for (var_774cf4d0 = 0; var_774cf4d0 < var_da75a416; var_774cf4d0++) {
            var_37f4db4d = var_9bd7a27.members[var_774cf4d0];
            if (var_37f4db4d != self && var_37f4db4d.stealth.var_abf79234 == 0 && distancesquared(var_37f4db4d.origin, self.origin) < 10000) {
                var_37f4db4d ai::function_ccc923fb(self, undefined, undefined, 0.55);
            }
        }
    }
    if (function_2a4de0ff(e)) {
        return;
    }
    if (var_9bd7a27.members.size > 1) {
        pod = function_9fd1b21a(var_9bd7a27, self);
        if (isdefined(pod) && pod.state == 1 && pod.members.size == 1 && (!isdefined(pod.var_35becac4) || pod.var_35becac4)) {
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "seek_backup", 2, undefined, 1);
        }
    }
}

// Namespace namespace_3fc78cb6/group
// Params 2, eflags: 0x2 linked
// Checksum 0xf59d482b, Offset: 0x3348
// Size: 0x80
function function_21e27027(guy, pos) {
    /#
        assert(isdefined(pos));
    #/
    if (!isdefined(self)) {
        return;
    }
    self.origin = pos;
    if (!isdefined(self.var_9d82663e)) {
        self.var_9d82663e = [];
    }
    self.var_67bd7875 = guy;
    self.var_9d82663e[self.var_9d82663e.size] = guy;
}

// Namespace namespace_3fc78cb6/group
// Params 2, eflags: 0x2 linked
// Checksum 0x5c8752e8, Offset: 0x33d0
// Size: 0x11c
function function_bd1a5c71(groupname, guy) {
    var_9bd7a27 = getgroup(groupname);
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
    function_46846d9b(var_9bd7a27, guy);
    function_6944c509(var_9bd7a27, guy, lastknownpos, lastknowntime);
}

// Namespace namespace_3fc78cb6/group
// Params 2, eflags: 0x2 linked
// Checksum 0xca749914, Offset: 0x34f8
// Size: 0x112
function function_e6ae3581(guy, var_4af4ea3d) {
    var_9bd7a27 = getgroup(guy.var_d6319e36);
    pod = function_9fd1b21a(var_9bd7a27, guy);
    /#
        assert(isdefined(pod));
    #/
    /#
        assert(pod.state == 2);
    #/
    /#
        assert(isdefined(var_4af4ea3d));
    #/
    function_f6ab9430(pod, var_4af4ea3d);
    pod.var_b595bdc4 = undefined;
    if (isdefined(pod.volume)) {
        pod.var_35becac4.pod = pod.volume istouching(pod.origin);
    }
    return pod.origin;
}

// Namespace namespace_3fc78cb6/group
// Params 0, eflags: 0x2 linked
// Checksum 0x46f48241, Offset: 0x3618
// Size: 0xaa
function function_d474dfcd() {
    self endon(#"state_change");
    self thread function_3de11dda();
    if (isdefined(level.stealth.var_714182) && level.stealth.var_714182[self.var_d6319e36]) {
        endtime = level.stealth.var_714182[self.var_d6319e36];
        wait(endtime);
        self thread function_887c0ace();
    } else {
        return;
    }
}

// Namespace namespace_3fc78cb6/group
// Params 0, eflags: 0x2 linked
// Checksum 0x132c9d58, Offset: 0x36d0
// Size: 0x106
function function_3de11dda() {
    self endon(#"state_change");
    while (1) {
        var_65199be1 = isdefined(self.volume) && !is_true(self.var_35becac4);
        if (var_65199be1) {
            if (!isdefined(self.var_30695eae)) {
                self.var_30695eae = gettime();
                self.var_7beb0c9b = 1;
            } else if (is_true(self.var_7beb0c9b) && gettime() > self.var_30695eae + 20000) {
                self.var_7beb0c9b = undefined;
                self function_b55ead5e();
            }
        } else {
            self.var_7beb0c9b = undefined;
            self.var_30695eae = undefined;
            self function_b55ead5e();
        }
        waitframe(1);
    }
}

// Namespace namespace_3fc78cb6/group
// Params 0, eflags: 0x2 linked
// Checksum 0xd48f7fad, Offset: 0x37e0
// Size: 0xb0
function function_b55ead5e() {
    self.var_7beb0c9b = undefined;
    self.var_30695eae = undefined;
    foreach (member in self.members) {
        if (isalive(member)) {
            member namespace_77fd5d41::function_d7e2a7d9(member);
        }
    }
}

// Namespace namespace_3fc78cb6/group
// Params 0, eflags: 0x2 linked
// Checksum 0x7c99ba34, Offset: 0x3898
// Size: 0x168
function function_2714d93c() {
    self endon(#"state_change");
    wait(3);
    var_9bd7a27 = self.var_5b37f889;
    foreach (guy in var_9bd7a27.members) {
        if (guy [[ guy.var_c6018f4 ]]() || guy [[ guy.var_cd774402 ]]()) {
            var_d6fd5eab = 1;
            if (isdefined(guy.stealth.funcs) && isdefined(guy.stealth.funcs[#"hash_24243e64d705b92a"])) {
                var_d6fd5eab = guy [[ guy.stealth.funcs[#"hash_24243e64d705b92a"] ]]();
            }
            if (var_d6fd5eab) {
                guy namespace_f1f700ac::function_52839330("hunt", undefined);
            }
        }
    }
}

// Namespace namespace_3fc78cb6/group
// Params 0, eflags: 0x2 linked
// Checksum 0x8a9498d9, Offset: 0x3a08
// Size: 0x4ca
function function_7b7042da() {
    if (!isdefined(level.var_f1f0bdfc)) {
        level.var_f1f0bdfc = 1;
    } else {
        return;
    }
    first_lost = undefined;
    while (1) {
        hunters = [];
        foreach (group in level.stealth.var_9bd7a27.groups) {
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
                case #"hash_defdefdefdefdef0":
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
    level.var_f1f0bdfc = undefined;
}

// Namespace namespace_3fc78cb6/group
// Params 2, eflags: 0x2 linked
// Checksum 0xf515a6c5, Offset: 0x3ee0
// Size: 0x140
function function_897e2305(var_9bd7a27, guy) {
    function_46846d9b(var_9bd7a27, guy);
    foreach (pod in var_9bd7a27.pods) {
        if (pod.state == 3) {
            function_5e27aefe(pod, guy);
            return 0;
        }
    }
    var_d04be568 = function_92bed96c(var_9bd7a27, 3, undefined);
    function_5e27aefe(var_d04be568, guy);
    var_d04be568 thread function_993f6627();
    var_d04be568 thread function_71675c77();
    return 1;
}

// Namespace namespace_3fc78cb6/group
// Params 1, eflags: 0x2 linked
// Checksum 0x5d280b69, Offset: 0x4028
// Size: 0xb8
function function_ec43a43a(groupname) {
    var_9bd7a27 = getgroup(groupname);
    foreach (pod in var_9bd7a27.pods) {
        if (pod.state == 3) {
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_3fc78cb6/group
// Params 3, eflags: 0x2 linked
// Checksum 0x6fee2630, Offset: 0x40e8
// Size: 0xdc
function function_4e3e17b5(groupname, guy, target) {
    var_23fa0e2d = getgroup(groupname);
    targetpos = undefined;
    if (isdefined(target)) {
        targetpos = target.origin;
    }
    pod = function_9fd1b21a(var_23fa0e2d, guy);
    function_897e2305(var_23fa0e2d, guy);
    var_23fa0e2d thread function_79baf7a9(2, guy, target, targetpos);
    var_23fa0e2d thread function_29f4d0fb(3, guy, target, targetpos);
}

// Namespace namespace_3fc78cb6/group
// Params 4, eflags: 0x2 linked
// Checksum 0x7849215e, Offset: 0x41d0
// Size: 0x324
function function_29f4d0fb(delaytime, guy, target, targetpos) {
    wait(delaytime);
    if (!isdefined(guy) || !isalive(guy) || is_true(guy.var_fb9a2c03)) {
        return;
    }
    if (!isdefined(target)) {
        return;
    }
    guy endon(#"death");
    target endon(#"death");
    var_5bc0b0ef = function_a3f6cdac(99999);
    foreach (var_9bd7a27 in level.stealth.var_9bd7a27.groups) {
        var_760c584d = arraysort(var_9bd7a27.members, guy.origin);
        foreach (var_37f4db4d in var_760c584d) {
            if (!isdefined(var_37f4db4d)) {
                continue;
            }
            if (guy == var_37f4db4d) {
                continue;
            }
            pod = function_9fd1b21a(var_9bd7a27, var_37f4db4d);
            if (!isdefined(pod)) {
                continue;
            }
            if (pod.state == 1 || pod.state == 2 && isdefined(pod.target) && pod.target == target) {
                if (guy.var_d6319e36 == var_37f4db4d.var_d6319e36 || distancesquared(guy.origin, var_37f4db4d.origin) < var_5bc0b0ef) {
                    var_37f4db4d getenemyinfo(target);
                    var_37f4db4d function_a3fcf9e0("combat", target, targetpos);
                    /#
                        function_65b21ab8(var_37f4db4d, "<unknown string>");
                    #/
                    wait(0.5);
                }
            }
        }
    }
}

// Namespace namespace_3fc78cb6/group
// Params 4, eflags: 0x2 linked
// Checksum 0x622cef40, Offset: 0x4500
// Size: 0x4b4
function function_79baf7a9(delaytime, guy, target, targetpos) {
    var_21562a15 = float(function_60d95f53()) / 1000 * 2;
    wait(var_21562a15);
    if (is_true(guy.stealth.var_ba19d2b1)) {
        guy waittill(#"hash_22ca87c523f21d6d");
    }
    if (delaytime > var_21562a15) {
        wait(delaytime - var_21562a15);
    }
    var_91239be5 = function_a3f6cdac(99999);
    if (!isdefined(guy) || !isalive(guy) || is_true(guy.var_fb9a2c03)) {
        return;
    }
    guy endon(#"death");
    self.var_bb6b3b67 = 1;
    level notify(#"cover_blown");
    foreach (var_9bd7a27 in level.stealth.var_9bd7a27.groups) {
        var_760c584d = arraysort(var_9bd7a27.members, guy.origin);
        foreach (var_37f4db4d in var_760c584d) {
            if (!isalive(var_37f4db4d)) {
                continue;
            }
            if (guy == var_37f4db4d) {
                continue;
            }
            var_b288ad4a = 0;
            var_3f01ab8a = 0;
            pod = function_9fd1b21a(var_9bd7a27, var_37f4db4d);
            if (isdefined(pod) && pod.state == 3) {
                continue;
            }
            if (isdefined(target)) {
                if (var_37f4db4d cansee(target)) {
                    var_b288ad4a = 1;
                    var_3f01ab8a = 1;
                    /#
                        function_65b21ab8(var_37f4db4d, "<unknown string>");
                    #/
                }
            }
            if (!var_b288ad4a && var_37f4db4d cansee(guy)) {
                var_b288ad4a = 1;
                /#
                    function_65b21ab8(var_37f4db4d, "<unknown string>");
                #/
            }
            if (!var_b288ad4a && distancesquared(var_37f4db4d.origin, guy.origin) < var_91239be5 && (!0 || var_37f4db4d util::function_748809fc(guy))) {
                var_b288ad4a = 1;
                if (isdefined(target)) {
                    var_3f01ab8a = 1;
                }
                /#
                    function_65b21ab8(var_37f4db4d, "<unknown string>");
                #/
            }
            if (var_3f01ab8a) {
                var_37f4db4d getenemyinfo(target);
            }
            if (var_b288ad4a) {
                if (isdefined(target)) {
                    var_37f4db4d function_a3fcf9e0("combat", target, targetpos);
                } else {
                    var_37f4db4d function_a3fcf9e0("combat", guy, guy.origin);
                }
                wait(0.5);
            }
        }
    }
}

// Namespace namespace_3fc78cb6/group
// Params 2, eflags: 0x0
// Checksum 0xa0952db7, Offset: 0x49c0
// Size: 0x100
function function_8c7b5056(var_3f01ab8a, enemy) {
    /#
        assert(!var_3f01ab8a || isdefined(enemy));
    #/
    var_44edde10 = self.members;
    foreach (guy in var_44edde10) {
        if (var_3f01ab8a) {
            guy getenemyinfo(enemy);
        }
        guy function_a3fcf9e0("combat", enemy, enemy.origin);
    }
}

// Namespace namespace_3fc78cb6/group
// Params 0, eflags: 0x2 linked
// Checksum 0x3b1ec5d7, Offset: 0x4ac8
// Size: 0x2e4
function function_efb123c8() {
    level notify(#"hash_231bf1036978b7d8");
    level endon(#"hash_231bf1036978b7d8");
    waitframe(1);
    while (is_true(level.stealth.var_ffa24aff)) {
        var_3b124a7f = [];
        var_2f7e139f = 1;
        foreach (var_9bd7a27 in level.stealth.var_9bd7a27.groups) {
            foreach (pod in var_9bd7a27.pods) {
                if (pod.state == 3) {
                    var_3b124a7f[var_3b124a7f.size] = pod;
                    if (!isdefined(pod.var_c00c156f) || !pod function_b728365a()) {
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
                    var_62ac8068 namespace_979752dc::function_1f6fa8aa("stealth_combat_hunting");
                    var_49201461 function_bad3b457();
                }
                wait(randomfloatrange(0.5, 1));
            }
            return;
        }
        wait(2);
    }
}

// Namespace namespace_3fc78cb6/group
// Params 0, eflags: 0x2 linked
// Checksum 0xcb2d2cb4, Offset: 0x4db8
// Size: 0xec
function function_993f6627() {
    self endon(#"state_change");
    wait(5);
    if (!self function_b728365a() && isdefined(level.stealth.funcs) && isdefined(level.stealth.funcs[#"hash_6fddb66367e0a124"])) {
        self thread [[ level.stealth.funcs[#"hash_6fddb66367e0a124"] ]]();
    }
    if (!is_true(level.stealth.var_ffa24aff)) {
        return;
    }
    self.var_c00c156f = 1;
    level thread function_efb123c8();
}

// Namespace namespace_3fc78cb6/group
// Params 0, eflags: 0x2 linked
// Checksum 0x82a1047a, Offset: 0x4eb0
// Size: 0x2e4
function function_b728365a() {
    var_31e68066 = 10000;
    var_36307b39 = 20000;
    var_e7b5c776 = 15000;
    var_3d09454a = 50625;
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
            if (curtime < lasttime + var_31e68066) {
                return 0;
            }
            var_accfee47 = guy lastknownpos(enemy);
            if (curtime < lasttime + var_36307b39 && distancesquared(enemy.origin, var_accfee47) < var_3d09454a) {
                return 0;
            }
            if (curtime < lasttime + var_e7b5c776 && enemy util::function_748809fc(var_accfee47)) {
                return 0;
            }
            if (isdefined(self.var_eb8e0fdd)) {
                return 0;
            }
        } else if (!isdefined(guy.enemy) && guy flag::exists("in_the_dark") && guy flag::get("in_the_dark") && curtime - guy.lastenemysighttime < var_31e68066) {
            return 0;
        }
    }
    return 1;
}

// Namespace namespace_3fc78cb6/group
// Params 3, eflags: 0x2 linked
// Checksum 0x7d88e8b5, Offset: 0x51a0
// Size: 0x122
function function_5d08eb4b(var_37f4db4d, radius, var_2c0664ad) {
    if (!var_2c0664ad) {
        var_2c0664ad = 0;
    }
    radiussq = radius * radius;
    function_1eaaceab(self.members);
    foreach (guy in self.members) {
        if (distancesquared(var_37f4db4d.origin, guy.origin) > radiussq) {
            continue;
        }
        if (var_2c0664ad && !var_37f4db4d util::function_748809fc(guy)) {
            continue;
        }
        return 1;
    }
    return 0;
}

// Namespace namespace_3fc78cb6/group
// Params 0, eflags: 0x2 linked
// Checksum 0x6fff550a, Offset: 0x52d0
// Size: 0x1de
function function_71675c77() {
    self endon(#"state_change");
    var_69617fed = 1;
    var_26031df0 = 384;
    wait(var_69617fed);
    while (1) {
        foreach (group in level.stealth.var_9bd7a27.groups) {
            foreach (guy in group.members) {
                if (guy.stealth.var_abf79234 == 3 || guy.stealth.var_abf79234 == 2) {
                    continue;
                }
                if (self function_5d08eb4b(guy, var_26031df0, 1)) {
                    /#
                        function_65b21ab8(guy, "<unknown string>");
                    #/
                    guy function_a3fcf9e0("combat", guy, guy.origin);
                }
            }
        }
        wait(var_69617fed);
    }
}

// Namespace namespace_3fc78cb6/group
// Params 0, eflags: 0x2 linked
// Checksum 0xd7197f1d, Offset: 0x54b8
// Size: 0x1c
function function_bad3b457() {
    self thread function_b921795f();
}

// Namespace namespace_3fc78cb6/group
// Params 0, eflags: 0x6 linked
// Checksum 0x1f746ace, Offset: 0x54e0
// Size: 0x1d8
function private function_b921795f() {
    self notify(#"hash_2bead39ea5955c93");
    self endon(#"hash_2bead39ea5955c93");
    var_44edde10 = arraycopy(self.members);
    var_44edde10 = arraysortclosest(var_44edde10, level.players[0].origin);
    foreach (guy in var_44edde10) {
        if (!isalive(guy)) {
            continue;
        }
        var_d6fd5eab = 1;
        if (isdefined(guy.stealth.funcs) && isdefined(guy.stealth.funcs[#"hash_24243e64d705b92a"])) {
            var_d6fd5eab = guy [[ guy.stealth.funcs[#"hash_24243e64d705b92a"] ]]();
        }
        if (!var_d6fd5eab) {
            guy namespace_f1f700ac::function_52839330("idle", undefined);
        } else {
            guy namespace_f1f700ac::function_52839330("hunt", undefined);
            wait(randomfloatrange(0.5, 1));
        }
    }
}

// Namespace namespace_3fc78cb6/group
// Params 0, eflags: 0x2 linked
// Checksum 0xa1631625, Offset: 0x56c0
// Size: 0xa0
function function_887c0ace() {
    foreach (guy in self.members) {
        guy function_a3fcf9e0("reset", guy, guy.origin);
    }
}

// Namespace namespace_3fc78cb6/group
// Params 1, eflags: 0x0
// Checksum 0xfc46ce3c, Offset: 0x5768
// Size: 0x96
function function_3ac82cf2(guy) {
    var_9bd7a27 = getgroup(guy.var_d6319e36);
    pod = function_9fd1b21a(var_9bd7a27, guy);
    if (!isdefined(pod)) {
        return 0;
    }
    /#
        assert(pod.members.size > 0);
    #/
    return pod.members[0] == guy;
}

// Namespace namespace_3fc78cb6/group
// Params 1, eflags: 0x2 linked
// Checksum 0x9376ad7c, Offset: 0x5808
// Size: 0xfc
function function_d36ab8c9(pos) {
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

// Namespace namespace_3fc78cb6/group
// Params 0, eflags: 0x2 linked
// Checksum 0x4a59aae8, Offset: 0x5910
// Size: 0x108
function function_72b42550() {
    self notify(#"state_change");
    /#
        assert(isdefined(self.var_5b37f889));
    #/
    /#
        assert(self.members.size == 0);
    #/
    var_9bd7a27 = self.var_5b37f889;
    var_7f61b3cb = var_9bd7a27.pods.size;
    for (var_87ea7ba7 = 0; var_87ea7ba7 < var_7f61b3cb; var_87ea7ba7++) {
        if (var_9bd7a27.pods[var_87ea7ba7] == self) {
            var_542fc63d = var_9bd7a27.pods.size - 1;
            var_9bd7a27.pods[var_87ea7ba7] = var_9bd7a27.pods[var_542fc63d];
            var_9bd7a27.pods[var_542fc63d] = undefined;
            break;
        }
    }
}

