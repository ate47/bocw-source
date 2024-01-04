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
function function_83fc0e8c() {
    if (!(isdefined(level.var_d4a2da0) && isdefined(level.stealth.var_ebbdef7a))) {
        level.var_d4a2da0 = spawnstruct();
        function_5303ad8d();
    }
    if (isdefined(level.stealth)) {
        /#
            assert(isdefined(level.var_d4a2da0) && isdefined(level.var_d4a2da0.var_ebbdef7a));
        #/
        level.stealth.var_ebbdef7a = level.var_d4a2da0.var_ebbdef7a;
        level.var_d4a2da0 = undefined;
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 4, eflags: 0x2 linked
// Checksum 0x65b53ac5, Offset: 0x230
// Size: 0x386
function function_784b4e1e(curpos, region, var_5a990e80, var_939dd5a2 = 1) {
    var_9a135fe4 = var_5a990e80;
    checkpos = curpos;
    dist = min(region.var_ef83d208, 3);
    var_9da4df29 = 48 * (1 + dist);
    var_aea7aa5b = 84 * (1 + dist);
    while (var_939dd5a2 && var_9a135fe4 < region.var_e7f2146e.size || !var_939dd5a2 && var_9a135fe4 >= 0) {
        var_84ee6edd = region.var_e7f2146e[var_9a135fe4].origin;
        var_9bf11123 = self namespace_7b4b2b57::function_a49ba261(checkpos, var_84ee6edd, region, undefined, var_9da4df29, var_aea7aa5b, 0);
        if (isdefined(var_9bf11123)) {
            var_640dd14c = checkpos;
            if (var_939dd5a2 && var_9a135fe4 - 1 >= 0) {
                var_640dd14c = region.var_e7f2146e[var_9a135fe4 - 1].origin;
            } else if (!var_939dd5a2 && var_9a135fe4 + 1 < region.var_e7f2146e.size) {
                var_640dd14c = region.var_e7f2146e[var_9a135fe4 + 1].origin;
            }
            var_ffbaa11e = var_84ee6edd - var_640dd14c;
            var_e15dea17 = length(var_ffbaa11e);
            var_ffbaa11e = var_ffbaa11e / var_e15dea17;
            var_acb91842 = var_9a135fe4 == var_5a990e80 && (var_5a990e80 == 0 && var_939dd5a2 || var_5a990e80 == region.var_e7f2146e.size && !var_939dd5a2);
            result = [];
            result[0] = var_9bf11123;
            result[1] = var_9a135fe4;
            if (var_acb91842 || vectordot(var_ffbaa11e, var_9bf11123.origin - var_640dd14c) > var_e15dea17 - 24) {
                if (var_939dd5a2) {
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
        if (var_939dd5a2) {
            var_9a135fe4++;
        } else {
            var_9a135fe4--;
        }
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 2, eflags: 0x2 linked
// Checksum 0xdc16f00c, Offset: 0x5c0
// Size: 0x280
function function_20f51edc(curpos, var_24e30bb8) {
    var_6a605059 = var_24e30bb8.size;
    bestscore = 0;
    var_747c2571 = -1;
    var_5a1a59a4 = -1;
    var_5b94af06 = 0;
    for (var_6bc1390 = 0; var_6bc1390 < var_6a605059; var_6bc1390++) {
        var_ae402dfe = (var_6bc1390 + 1) % var_6a605059;
        var_ffbaa11e = var_24e30bb8[var_ae402dfe].origin - var_24e30bb8[var_6bc1390].origin;
        var_5e9b5f9f = length(var_ffbaa11e);
        var_ffbaa11e = var_ffbaa11e / var_5e9b5f9f;
        var_4fbaae92 = curpos - var_24e30bb8[var_6bc1390].origin;
        var_98883cf9 = vectordot(var_ffbaa11e, var_4fbaae92);
        if (bestscore > 0 && (var_98883cf9 < 0 || var_98883cf9 > var_5e9b5f9f)) {
            continue;
        }
        var_bb8e7f0d = (var_ffbaa11e[1], -1 * var_ffbaa11e[0], 0);
        var_bb8e7f0d = vectornormalize(var_bb8e7f0d);
        var_c79274d2 = abs(vectordot(var_bb8e7f0d, var_4fbaae92));
        if (bestscore <= 0 || var_c79274d2 < bestscore) {
            bestscore = var_c79274d2;
            var_747c2571 = var_ae402dfe;
        }
        if (var_5b94af06 <= 0 || var_c79274d2 < var_5b94af06) {
            if (!isdefined(var_24e30bb8[var_ae402dfe].var_4ff89bee) || gettime() > var_24e30bb8[var_ae402dfe].var_4ff89bee) {
                var_5b94af06 = var_c79274d2;
                var_5a1a59a4 = var_ae402dfe;
            }
        }
    }
    if (var_5a1a59a4 >= 0) {
        var_747c2571 = var_5a1a59a4;
    }
    /#
        assert(var_747c2571 >= 0);
    #/
    return var_747c2571;
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0x3b98c8b, Offset: 0x848
// Size: 0x16e
function function_56a3513c(pos) {
    mindist = 1000000000;
    var_ccae54a1 = undefined;
    var_945ef26b = level.stealth.var_ebbdef7a[self.var_f09600d3];
    if (!isdefined(var_945ef26b)) {
        return undefined;
    }
    foreach (region in var_945ef26b.var_6ccb99d7) {
        if (!isdefined(self.var_f09600d3) || self.var_f09600d3 != region.var_3fc78cb6) {
            continue;
        }
        if (region.volume istouching(pos)) {
            return region;
        }
        dist = lengthsquared(region.var_efc995b3 - self.origin);
        if (dist < mindist) {
            mindist = dist;
            var_ccae54a1 = region;
        }
    }
    return var_ccae54a1;
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 3, eflags: 0x0
// Checksum 0x5d809fe8, Offset: 0x9c0
// Size: 0x12c
function function_7a946650(msg, index, var_371132fe) {
    /#
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
    #/
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 0, eflags: 0x0
// Checksum 0x9f925225, Offset: 0xaf8
// Size: 0x1a0
function function_28ec085c() {
    /#
        foreach (region in level.stealth.var_6ccb99d7) {
            foreach (point in region.var_dcc5d0c0) {
                foreach (transition in point.transitions) {
                    println("<unknown string>" + point.index + "<unknown string>" + transition.index + "<unknown string>");
                }
            }
        }
    #/
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0xbae41036, Offset: 0xca0
// Size: 0x16a
function function_92afe4eb(var_bbf5d56f) {
    var_9e7c8581 = [];
    foreach (volume in var_bbf5d56f) {
        /#
            assert(isdefined(volume.var_f09600d3), "<unknown string>");
        #/
        var_86fb4fc6 = strtok(volume.var_f09600d3, " ");
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
function function_cb3e5a31(*var_bbf5d56f) {
    var_1f7c13ae = struct::get_array("stealth_clearpath", "variantname");
    var_23471399 = [];
    foreach (struct in var_1f7c13ae) {
        var_371132fe = struct;
        var_371132fe.transitions.var_371132fe = [];
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
function function_dffff4ff(var_9e7c8581, var_bbf5d56f) {
    var_5310ca1e = [];
    foreach (group in var_9e7c8581) {
        var_5310ca1e[group] = [];
        foreach (volume in var_bbf5d56f) {
            if (issubstr(volume.var_f09600d3, group)) {
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
function function_44b60190() {
    foreach (var_462028a0 in level.var_d4a2da0.var_ebbdef7a) {
        foreach (region in var_462028a0.var_6ccb99d7) {
            var_18b52478 = [];
            foreach (var_f4f0dcfd in region.var_dcc5d0c0) {
                var_3fc78cb6 = region.var_3fc78cb6;
                var_dcc5d0c0 = struct::get_array(var_f4f0dcfd.target, "targetname");
                foreach (var_b042e906 in var_dcc5d0c0) {
                    foreach (var_4e481c6b in var_b042e906.var_1e7e507) {
                        if (var_4e481c6b.var_3fc78cb6 == var_3fc78cb6) {
                            if (!array::contains(var_f4f0dcfd.transitions, var_b042e906)) {
                                var_f4f0dcfd.transitions[var_f4f0dcfd.transitions.size] = var_b042e906;
                            }
                            if (!isdefined(var_b042e906.transitions)) {
                                var_b042e906.transitions.var_b042e906 = [];
                            }
                            if (!array::contains(var_b042e906.transitions, var_f4f0dcfd)) {
                                var_b042e906.transitions[var_b042e906.transitions.size] = var_f4f0dcfd;
                            }
                            if (!array::contains(var_4e481c6b.var_dcc5d0c0, var_b042e906)) {
                                size = var_4e481c6b.var_dcc5d0c0.size;
                                var_4e481c6b.var_dcc5d0c0[size] = var_b042e906;
                            }
                            break;
                        }
                    }
                }
                if (var_f4f0dcfd.transitions.size == 0) {
                    var_18b52478[var_18b52478.size] = index;
                }
            }
            foreach (index in var_18b52478) {
                array::remove_index(region.var_dcc5d0c0, index, 0);
            }
        }
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 0, eflags: 0x2 linked
// Checksum 0x50187d0f, Offset: 0x1488
// Size: 0x53a
function function_7c1be127() {
    foreach (var_462028a0 in level.var_d4a2da0.var_ebbdef7a) {
        foreach (region in var_462028a0.var_6ccb99d7) {
            region.var_606108c5.region = [];
            foreach (var_f4f0dcfd in region.var_dcc5d0c0) {
                foreach (var_b568c168 in var_f4f0dcfd.transitions) {
                    var_4e481c6b = undefined;
                    foreach (var_35862c8b in var_b568c168.var_1e7e507) {
                        if (var_35862c8b.var_3fc78cb6 == region.var_3fc78cb6) {
                            var_4e481c6b = var_35862c8b;
                            break;
                        }
                    }
                    if (!isdefined(var_4e481c6b)) {
                        continue;
                    }
                    var_2f106193 = spawnstruct();
                    var_2f106193.region = var_4e481c6b;
                    var_2f106193.var_f4f0dcfd = var_f4f0dcfd;
                    var_2f106193.var_bfe8c1cb = var_b568c168;
                    size = region.var_606108c5.size;
                    region.var_606108c5[size] = var_2f106193;
                }
            }
        }
        foreach (region in var_462028a0.var_6ccb99d7) {
            if (region.var_e7f2146e.size == 0) {
                continue;
            }
            if (region.var_e7f2146e.size == 1) {
                region.var_efc995b3.region = region.var_e7f2146e[0].origin;
            } else {
                var_fb678b1c = 0;
                var_ebcfaa4d = 0;
                i = 1;
                for (i = 1; i < region.var_e7f2146e.size; i++) {
                    var_ebcfaa4d = length(region.var_e7f2146e[i].origin - region.var_e7f2146e[i - 1].origin);
                    var_fb678b1c = var_fb678b1c + var_ebcfaa4d;
                }
                var_fb678b1c = var_fb678b1c * 0.5;
                for (i = 0; i < region.var_e7f2146e.size - 1; i++) {
                    var_ebcfaa4d = length(region.var_e7f2146e[i].origin - region.var_e7f2146e[i + 1].origin);
                    if (var_fb678b1c - var_ebcfaa4d < 0) {
                        break;
                    }
                    var_fb678b1c = var_fb678b1c - var_ebcfaa4d;
                }
                fraction = var_fb678b1c / var_ebcfaa4d;
                region.var_efc995b3.region = vectorlerp(region.var_e7f2146e[i].origin, region.var_e7f2146e[i + 1].origin, fraction);
            }
        }
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0x6cca6341, Offset: 0x19d0
// Size: 0x182
function function_ecb94e45(var_23471399) {
    foreach (point in var_23471399) {
        point.var_1e7e507 = undefined;
        point.transitions = undefined;
    }
    foreach (var_57287dad in level.var_d4a2da0.var_ebbdef7a) {
        foreach (region in var_57287dad.var_6ccb99d7) {
            region.var_dcc5d0c0 = undefined;
        }
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 0, eflags: 0x2 linked
// Checksum 0x8c780e81, Offset: 0x1b60
// Size: 0xbf4
function function_5303ad8d() {
    aiprofile_beginentry("Init Hunt Region Data");
    var_bbf5d56f = getentarray("info_volume_stealth_clear", "variantname");
    var_9e7c8581 = function_92afe4eb(var_bbf5d56f);
    var_23471399 = function_cb3e5a31(var_bbf5d56f);
    var_b8850d25 = [];
    var_ed36f7a7 = function_dffff4ff(var_9e7c8581, var_bbf5d56f);
    level.var_d4a2da0.var_ebbdef7a = [];
    foreach (group, var_2e6299dc in var_ed36f7a7) {
        level.var_d4a2da0.var_ebbdef7a[group] = spawnstruct();
        level.var_d4a2da0.var_ebbdef7a[group].var_6ccb99d7 = [];
        level.var_d4a2da0.var_ebbdef7a[group].var_ec548349 = 0;
        foreach (volume in var_2e6299dc) {
            region = spawnstruct();
            region.volume = volume;
            region.index = index;
            region.var_efc995b3.region = (0, 0, 0);
            region.var_ef83d208.region = 100000;
            region.var_b7f459a6.region = 100000;
            region.cooldown.region = 20000;
            var_fce4be17 = var_b8850d25[volume getentitynumber()];
            if (!isdefined(var_fce4be17)) {
                var_fce4be17 = spawnstruct();
                var_fce4be17.var_792655ad.var_fce4be17 = 0;
                var_fce4be17.var_4eced871.var_fce4be17 = 2;
                var_fce4be17.var_e8ce4164.var_fce4be17 = 0;
                var_fce4be17.var_841cd537.var_fce4be17 = 0;
                var_fce4be17.var_4c20b79d.var_fce4be17 = 0;
                var_fce4be17.var_ae55b10.var_fce4be17 = 0;
                var_b8850d25[volume getentitynumber()] = var_fce4be17;
            }
            region.var_fce4be17 = var_fce4be17;
            if (isdefined(volume.var_3b62c9b4)) {
                var_fce4be17.var_4eced871.var_fce4be17 = volume.var_3b62c9b4;
            }
            if (isdefined(volume.script_timer)) {
                var_fce4be17.cooldown.var_fce4be17 = volume.script_timer * 1000;
            }
            region.var_3fc78cb6 = group;
            region.var_e7f2146e.region = [];
            region.var_dcc5d0c0.region = [];
            foreach (point in var_23471399) {
                if (volume istouching(point.origin)) {
                    size = region.var_e7f2146e.size;
                    region.var_e7f2146e[size] = point;
                    if (!isdefined(point.var_1e7e507)) {
                        point.var_1e7e507.point = [];
                    }
                    size = point.var_1e7e507.size;
                    point.var_1e7e507[size] = region;
                    var_3eeed7ad = struct::get_array(point.target, "targetname");
                    var_3eeed7ad = arraycombine(var_3eeed7ad, struct::get_array(point.targetname, "target"));
                    var_3eeed7ad = array::function_b1d17853(var_3eeed7ad);
                    foreach (link in var_3eeed7ad) {
                        if (link !== point && link.variantname === "stealth_clearpath" && !volume istouching(link.origin)) {
                            region.var_dcc5d0c0[region.var_dcc5d0c0.size] = link;
                            region.var_dcc5d0c0.region = array::function_b1d17853(region.var_dcc5d0c0);
                        }
                    }
                }
            }
            if (region.var_e7f2146e.size == 0) {
                /#
                    assertmsg("<unknown string>");
                #/
            }
            region.var_b60f2156.region = [];
            foreach (var_7b4b2b57 in level.var_1ccc840f) {
                if (volume istouching(var_7b4b2b57.origin)) {
                    size = region.var_b60f2156.size;
                    region.var_b60f2156[size] = var_7b4b2b57;
                }
            }
            size = level.var_d4a2da0.var_ebbdef7a[group].var_6ccb99d7.size;
            level.var_d4a2da0.var_ebbdef7a[group].var_6ccb99d7[size] = region;
        }
        foreach (region in level.var_d4a2da0.var_ebbdef7a[group].var_6ccb99d7) {
            if (region.var_e7f2146e.size == 0) {
                continue;
            }
            startnode = -1;
            for (i = 0; i < region.var_e7f2146e.size; i++) {
                point = region.var_e7f2146e[i];
                targetname = point.targetname;
                if (!isdefined(targetname)) {
                    if (startnode != -1) {
                        orig = point.origin;
                        /#
                            assertmsg("<unknown string>" + orig[0] + "<unknown string>" + orig[1] + "<unknown string>" + orig[2] + "<unknown string>");
                        #/
                    }
                    startnode = i;
                } else {
                    var_8bacc3fa = undefined;
                    foreach (var_40ad2e7d in region.var_e7f2146e) {
                        if (isdefined(var_40ad2e7d.target) && var_40ad2e7d.target == targetname) {
                            var_8bacc3fa = var_40ad2e7d;
                        }
                    }
                    if (!isdefined(var_8bacc3fa)) {
                        if (startnode != -1) {
                            /#
                                assertmsg("<unknown string>" + targetname + "<unknown string>");
                            #/
                        }
                        startnode = i;
                    }
                }
            }
            if (startnode == -1) {
                startnode = 0;
            }
            buffer = [];
            var_149c4067 = startnode;
            buffer[0] = region.var_e7f2146e[var_149c4067];
            for (i = 1; i < region.var_e7f2146e.size; i++) {
                point = region.var_e7f2146e[var_149c4067];
                target = point.target;
                j = 0;
                var_e1c83c67 = undefined;
                while (j < region.var_e7f2146e.size) {
                    target_point = region.var_e7f2146e[j];
                    targetname = target_point.targetname;
                    if (isdefined(targetname) && target == targetname) {
                        var_e1c83c67 = target_point;
                        break;
                    }
                    j++;
                }
                if (!isdefined(var_e1c83c67)) {
                    /#
                        assertmsg("<unknown string>");
                    #/
                }
                buffer[i] = var_e1c83c67;
                var_149c4067 = j;
            }
            region.var_e7f2146e = buffer;
        }
    }
    var_b8850d25 = undefined;
    foreach (var_371132fe in var_23471399) {
        if (!isdefined(var_371132fe.var_1e7e507)) {
            /#
                assertmsg("<unknown string>" + var_371132fe.origin + "<unknown string>");
            #/
        }
    }
    function_44b60190();
    function_7c1be127();
    function_ecb94e45(var_23471399);
    aiprofile_endentry();
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 2, eflags: 0x2 linked
// Checksum 0x9858520d, Offset: 0x2760
// Size: 0x464
function function_4ec3af07(*group, var_462028a0) {
    aiprofile_beginentry("AI Hunt Init Scoring");
    numregions = var_462028a0.var_6ccb99d7.size;
    for (var_3e6a3ff3 = 0; var_3e6a3ff3 < numregions; var_3e6a3ff3++) {
        region = var_462028a0.var_6ccb99d7[var_3e6a3ff3];
        region.var_b7f459a6.region = 1;
        region.var_fce4be17.var_4c20b79d = 0;
    }
    foreach (player in getplayers()) {
        if (!player flag::exists("stealth_enabled") || !player flag::get("stealth_enabled")) {
            continue;
        }
        for (var_3e6a3ff3 = 0; var_3e6a3ff3 < numregions; var_3e6a3ff3++) {
            region = var_462028a0.var_6ccb99d7[var_3e6a3ff3];
            region.var_578553d6.region = 0;
        }
        var_924463ec = undefined;
        mindist = 1e+20;
        for (var_3e6a3ff3 = 0; var_3e6a3ff3 < numregions; var_3e6a3ff3++) {
            region = var_462028a0.var_6ccb99d7[var_3e6a3ff3];
            if (region.volume istouching(player.origin)) {
                var_924463ec = region;
                break;
            }
            dist = lengthsquared(region.var_efc995b3 - player.origin);
            if (dist < mindist) {
                mindist = dist;
                var_924463ec = region;
            }
        }
        var_924463ec.var_fce4be17.var_4c20b79d = 1;
        var_21487804 = [0:var_924463ec];
        var_924463ec.var_578553d6.var_924463ec = 1;
        dist = 0;
        index = 0;
        while (index < var_21487804.size) {
            stop = var_21487804.size;
            for (i = index; i < stop; i++) {
                region = var_21487804[i];
                region.var_b7f459a6.region = dist * region.var_b7f459a6;
                region.var_578553d6.region = 1;
                region.var_ef83d208 = dist;
                var_d6b10147 = region.var_606108c5.size;
                for (var_91181e90 = 0; var_91181e90 < var_d6b10147; var_91181e90++) {
                    link = region.var_606108c5[var_91181e90];
                    if (!link.region.var_578553d6) {
                        var_21487804[var_21487804.size] = link.region;
                        link.region.var_578553d6 = 1;
                    }
                }
            }
            index = stop;
            dist++;
        }
    }
    highestscore = 1;
    for (var_3e6a3ff3 = 0; var_3e6a3ff3 < numregions; var_3e6a3ff3++) {
        region = var_462028a0.var_6ccb99d7[var_3e6a3ff3];
        highestscore = max(region.var_b7f459a6, highestscore);
    }
    for (var_3e6a3ff3 = 0; var_3e6a3ff3 < numregions; var_3e6a3ff3++) {
        region = var_462028a0.var_6ccb99d7[var_3e6a3ff3];
        region.var_b7f459a6.region = region.var_b7f459a6 / highestscore;
        region.var_578553d6 = undefined;
    }
    aiprofile_endentry();
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0xc1a65297, Offset: 0x2bd0
// Size: 0x4c
function function_8ae3cf7(region) {
    if (isdefined(self.stealth.var_bd106aaa)) {
        self.stealth.var_bd106aaa.var_64a52bf3 = region;
        function_bcf7b9dd(region);
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0x571564b, Offset: 0x2c28
// Size: 0x5c
function function_327e7609(region) {
    if (isdefined(self.stealth.var_bd106aaa.var_64a52bf3) && self.stealth.var_bd106aaa.var_64a52bf3 == region) {
        function_4405db51(region);
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0xe252418d, Offset: 0x2c90
// Size: 0x4c
function function_bcf7b9dd(region) {
    region.var_fce4be17.var_792655ad = region.var_fce4be17.var_792655ad + 1;
    self function_349347d3(region);
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0xaa5c3ab9, Offset: 0x2ce8
// Size: 0xb6
function function_4405db51(region) {
    /#
        assert(region.var_fce4be17.var_792655ad != 0, "<unknown string>");
    #/
    region.var_fce4be17.var_792655ad = region.var_fce4be17.var_792655ad - 1;
    self function_bbb35692(region);
    if (region.var_fce4be17.var_841cd537 == 0) {
        region.var_fce4be17.var_e8ce4164 = gettime() + region.cooldown;
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0xc4f33f0c, Offset: 0x2da8
// Size: 0x13a
function function_349347d3(region) {
    if (!self.stealth.var_bd106aaa.var_62a9ce67 && region.volume istouching(self.origin)) {
        /#
            assert(self.stealth.var_bd106aaa.var_64a52bf3 == region, "<unknown string>" + region.index + "<unknown string>");
        #/
        region.var_fce4be17.var_841cd537 = region.var_fce4be17.var_841cd537 + 1;
        self.stealth.var_bd106aaa.var_62a9ce67 = 1;
        if (region.var_fce4be17.var_4c20b79d && region.var_fce4be17.var_841cd537 == 1) {
            var_8a32f5c = 1000;
            region.var_fce4be17.var_ae55b10 = gettime() + var_8a32f5c;
        }
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0x36974a85, Offset: 0x2ef0
// Size: 0xb6
function function_bbb35692(region) {
    /#
        assert(self.stealth.var_bd106aaa.var_64a52bf3 == region, "<unknown string>" + region.index + "<unknown string>");
    #/
    if (self.stealth.var_bd106aaa.var_62a9ce67) {
        region.var_fce4be17.var_841cd537 = region.var_fce4be17.var_841cd537 - 1;
        self.stealth.var_bd106aaa.var_62a9ce67 = 0;
    }
}

// Namespace namespace_5cd4acd8/namespace_1a229754
// Params 1, eflags: 0x2 linked
// Checksum 0x159c7f27, Offset: 0x2fb0
// Size: 0x370
function function_4732f30e(region) {
    aiprofile_beginentry("Hunt Get Next Reg");
    if (region.var_606108c5.size == 0) {
        aiprofile_endentry();
        return;
    }
    if (!isdefined(self.var_f09600d3) || !isdefined(level.stealth.var_ebbdef7a[self.var_f09600d3])) {
        aiprofile_endentry();
        return;
    }
    var_161b41f9 = undefined;
    curtime = gettime();
    var_ec548349 = level.stealth.var_ebbdef7a[self.var_f09600d3].var_ec548349;
    var_6036e3a2 = 1;
    foreach (var_35b60bb6 in level.stealth.var_ebbdef7a[self.var_f09600d3].var_6ccb99d7) {
        if (var_35b60bb6 == region) {
            continue;
        }
        if (var_35b60bb6.var_fce4be17.var_e8ce4164 > gettime()) {
            continue;
        }
        if (var_35b60bb6.var_fce4be17.var_4c20b79d && var_35b60bb6.var_fce4be17.var_841cd537 > 0 && curtime > var_35b60bb6.var_fce4be17.var_ae55b10) {
            continue;
        }
        if (self.var_f09600d3 != var_35b60bb6.var_3fc78cb6) {
            continue;
        }
        if (var_35b60bb6.var_fce4be17.var_792655ad >= var_35b60bb6.var_fce4be17.var_4eced871) {
            continue;
        }
        target_dist = abs(var_ec548349 - var_35b60bb6.var_b7f459a6);
        if (target_dist < var_6036e3a2) {
            var_161b41f9 = var_35b60bb6;
            var_6036e3a2 = target_dist;
        }
    }
    if (!isdefined(var_161b41f9)) {
        var_161b41f9 = region.var_606108c5[0].region;
    }
    self.stealth.var_bd106aaa.var_c727f45c[0] = self.stealth.var_bd106aaa.var_c727f45c[1];
    self.stealth.var_bd106aaa.var_c727f45c[1] = self.stealth.var_bd106aaa.var_64a52bf3;
    var_ec548349 = var_ec548349 + 0.5;
    if (var_ec548349 > 1) {
        var_ec548349 = 0;
    }
    level.stealth.var_ebbdef7a[self.var_f09600d3].var_ec548349 = var_ec548349;
    aiprofile_endentry();
    return var_161b41f9;
}

