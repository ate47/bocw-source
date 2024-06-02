// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\item_world.gsc;
#using script_1160d62024d6945b;
#using script_471b31bd963b388e;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_drop.gsc;
#using script_40fc784c60f9fa7b;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\territory_util.gsc;
#using scripts\core_common\territory.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_65181344;

// Namespace namespace_65181344/namespace_65181344
// Params 0, eflags: 0x6 linked
// Checksum 0x69b6e044, Offset: 0x210
// Size: 0x1b8
function private function_2c4d3d40() {
    function_4233b851();
    level.var_de3d5d56 = [];
    var_3a1737b4 = getscriptbundles(#"itemspawnentry");
    var_cce250bc = function_d634ed59();
    index = 0;
    offsetorigin = (0, 0, -64000);
    foreach (var_1461de43, var_28f8f6a9 in var_3a1737b4) {
        if (isdefined(level.var_de3d5d56)) {
            level.var_de3d5d56[var_1461de43] = var_28f8f6a9;
        }
        function_43cd95f4(index, var_1461de43);
        function_54ca5536(index, 1);
        function_b97dfce0(index, offsetorigin);
        index++;
        if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
            waitframe(1);
            level.var_d0676b07 = getrealtime();
        }
    }
}

// Namespace namespace_65181344/namespace_65181344
// Params 1, eflags: 0x6 linked
// Checksum 0xec14da01, Offset: 0x3d0
// Size: 0x324
function private function_440f0490(itemlistbundle) {
    assert(isdefined(itemlistbundle) && itemlistbundle.type === "<unknown string>");
    assert(itemlistbundle.itemlist.size > 0, "<unknown string>" + itemlistbundle.name + "<unknown string>");
    if (itemlistbundle.itemlist.size <= 0) {
        return;
    }
    weights = [];
    weighttotal = 0;
    for (rowindex = 0; rowindex < itemlistbundle.itemlist.size; rowindex++) {
        if (!isdefined(itemlistbundle.itemlist[rowindex].itementry)) {
            continue;
        }
        var_35843db5 = isdefined(itemlistbundle.itemlist[rowindex].minweight) ? itemlistbundle.itemlist[rowindex].minweight : 0;
        var_ccef9e25 = isdefined(itemlistbundle.itemlist[rowindex].maxweight) ? itemlistbundle.itemlist[rowindex].maxweight : 0;
        minweight = int(min(var_35843db5, var_ccef9e25));
        maxweight = int(max(var_35843db5, var_ccef9e25));
        diff = maxweight - minweight;
        randomint = function_d59c2d03(diff + 1);
        weight = randomint + minweight;
        weights[weights.size] = weight;
        weighttotal += weight;
    }
    if (weighttotal <= 0) {
        return;
    }
    var_d54615ef = function_d59c2d03(weighttotal);
    currentweight = 0;
    for (weightindex = 0; weightindex < weights.size; weightindex++) {
        if (!isdefined(itemlistbundle.itemlist[weightindex].itementry)) {
            continue;
        }
        currentweight += weights[weightindex];
        if (var_d54615ef <= currentweight) {
            itemlistbundle = getscriptbundle(itemlistbundle.itemlist[weightindex].itementry);
            assert(itemlistbundle.type === "<unknown string>");
            break;
        }
    }
    return itemlistbundle;
}

// Namespace namespace_65181344/namespace_65181344
// Params 0, eflags: 0x6 linked
// Checksum 0xd048251, Offset: 0x700
// Size: 0xe
function private function_6a5c090c() {
    level.var_de3d5d56 = undefined;
}

// Namespace namespace_65181344/namespace_65181344
// Params 0, eflags: 0x2 linked
// Checksum 0x7019201f, Offset: 0x718
// Size: 0x180
function function_9e9f43cd() {
    if (!level flag::get(#"hash_67b445a4b1d59922")) {
        assert(0);
        return;
    }
    foreach (targetname, points in level.var_1d777960) {
        for (index = 0; index < points.size; index++) {
            origin = points[index].origin;
            angles = points[index].angles;
            position = origin;
            function_53a81463(position, angles, targetname, #"");
        }
        if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
            waitframe(1);
            level.var_d0676b07 = getrealtime();
        }
    }
}

// Namespace namespace_65181344/namespace_65181344
// Params 0, eflags: 0x2 linked
// Checksum 0x80713a46, Offset: 0x8a0
// Size: 0x194
function function_e88ecf7f() {
    if (!level flag::get(#"hash_67b445a4b1d59922")) {
        assert(0);
        return;
    }
    assert(level.var_bf9b06d3.size == level.var_8d50adaa.size);
    for (index = 0; index < level.var_bf9b06d3.size; index++) {
        points = function_abaeb170(level.var_bf9b06d3[index], undefined, undefined, level.var_8d50adaa[index], undefined, 0);
        for (pointindex = 0; pointindex < points.size; pointindex++) {
            function_b2cf8bc6(points[pointindex].id, #"");
            if (isdefined(points[pointindex].targetname)) {
                level.var_28cd0b1f[points[pointindex].targetname] = 1;
            }
        }
        if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
            waitframe(1);
            level.var_d0676b07 = getrealtime();
        }
    }
}

// Namespace namespace_65181344/namespace_65181344
// Params 4, eflags: 0x6 linked
// Checksum 0xa1ab3cdb, Offset: 0xa40
// Size: 0x146
function private function_35461e5f(index, row, stashitem = 0, falling = 2) {
    items = [];
    item_name = self.itemlistbundle.itemlist[row].itementry;
    item = function_62c0d32d(index, item_name, stashitem, falling);
    if (isdefined(item)) {
        items[items.size] = item;
    }
    for (index = 1; index <= 5; index++) {
        item_name = self.itemlistbundle.itemlist[row].("childitementry_" + index);
        if (!isdefined(item_name)) {
            continue;
        }
        item = function_62c0d32d(index + items.size, item_name, stashitem, falling);
        if (isdefined(item)) {
            items[items.size] = item;
        }
    }
    return items;
}

// Namespace namespace_65181344/namespace_65181344
// Params 4, eflags: 0x6 linked
// Checksum 0x666506dd, Offset: 0xb90
// Size: 0x3a8
function private function_62c0d32d(index, item_name, stashitem = 0, falling = 2) {
    if (isdefined(item_name) && isdefined(level.var_4afb8f5a[item_name])) {
        item_name = level.var_4afb8f5a[item_name];
    }
    if (isdefined(item_name) && isdefined(level.var_a332ae5f[item_name])) {
        var_8ac22deb = [[ level.var_a332ae5f[item_name] ]]();
        if (isdefined(var_8ac22deb)) {
            item_name = var_8ac22deb;
        }
    }
    if (!isdefined(item_name) || item_name == "") {
        return;
    }
    itemspawnpoint = function_4ba8fde(item_name);
    if (!isdefined(itemspawnpoint)) {
        return;
    }
    origin = (0, 0, 0);
    angles = (0, 0, 0);
    if (!stashitem) {
        origin = self.origin;
        angles = self.angles;
    }
    itementry = isdefined(level.var_de3d5d56) ? level.var_de3d5d56[item_name] : getscriptbundle(item_name);
    var_e91aba42 = undefined;
    if (item_world_util::function_6daf3c87(itementry)) {
        weaponinfo = item_world_util::function_4ea13733(itementry);
        if (isdefined(weaponinfo)) {
            weapon = weaponinfo.weapon;
            var_e91aba42 = weaponinfo.var_fd90b0bb;
        }
    } else if (isdefined(itementry.var_a53e9db0) || isdefined(itementry.var_3e805062)) {
        weapon = function_67456242(itementry);
    } else {
        weapon = item_world_util::function_35e06774(itementry, isdefined(itementry.attachments));
    }
    itemcount = isdefined(itementry.amount) ? itementry.amount : 1;
    var_aec6fa7f = 0;
    if (itementry.itemtype == #"weapon") {
        var_aec6fa7f = itementry.amount * weapon.clipsize;
    } else if (itementry.itemtype == #"armor" || itementry.itemtype == #"ammo") {
        var_aec6fa7f = itementry.amount;
        itemcount = 1;
    }
    item = item_drop::function_fd9026e4(index, weapon, itemcount, var_aec6fa7f, itemspawnpoint.id, origin, angles, falling, stashitem, undefined, undefined, undefined, undefined, undefined, undefined, var_e91aba42);
    if (isdefined(item)) {
        item.spawning = 1;
    }
    if (isdefined(itementry.spawnsound)) {
        playsoundatposition(itementry.spawnsound, origin);
    }
    return item;
}

// Namespace namespace_65181344/namespace_65181344
// Params 1, eflags: 0x6 linked
// Checksum 0xd618c04c, Offset: 0xf40
// Size: 0x84
function private function_98013deb(row) {
    numchildren = 0;
    for (index = 1; index <= 5; index++) {
        item_name = self.itemlistbundle.itemlist[row].("childitementry_" + index);
        if (isdefined(item_name)) {
            numchildren++;
        }
    }
    return numchildren;
}

// Namespace namespace_65181344/namespace_65181344
// Params 3, eflags: 0x6 linked
// Checksum 0xeec1c122, Offset: 0xfd0
// Size: 0xaec
function private _spawn_item(point, row, stashitem = 0) {
    if (!isdefined(point)) {
        return;
    }
    item_name = self.itemlistbundle.itemlist[row].itementry;
    if (isdefined(item_name) && isdefined(level.var_4afb8f5a[item_name])) {
        item_name = level.var_4afb8f5a[item_name];
    }
    if (!isdefined(item_name) || item_name == "") {
        function_43cd95f4(point.id, "");
        /#
            if (!isdefined(level.var_d80c35aa[#"blank"])) {
                level.var_d80c35aa[#"blank"] = 0;
            }
            level.var_d80c35aa[#"blank"]++;
        #/
        return;
    }
    itementry = isdefined(level.var_de3d5d56) ? level.var_de3d5d56[item_name] : getscriptbundle(item_name);
    /#
        if (!stashitem && isdefined(itementry) && isdefined(itementry.itemtype)) {
            if (!isdefined(level.var_d80c35aa[itementry.itemtype])) {
                level.var_d80c35aa[itementry.itemtype] = 0;
            }
            level.var_d80c35aa[itementry.itemtype]++;
        }
    #/
    if (!isdefined(itementry) || !isdefined(itementry.itemtype) || itementry.itemtype == #"blank") {
        function_43cd95f4(point.id, "");
        return;
    } else if (itementry.itemtype == #"vehicle") {
        ground_pos = bullettrace(point.origin + (0, 0, 128), point.origin - (0, 0, 128), 0, undefined, 1);
        if (ground_pos[#"surfacetype"] == "water" || ground_pos[#"surfacetype"] == "watershallow") {
            ground_pos = bullettrace(point.origin + (0, 0, 2048), point.origin - (0, 0, 2048), 0, undefined, 1);
        }
        spawnpoint = ground_pos[#"position"] + (0, 0, 36);
        vehicle = undefined;
        if (item_world_util::function_74e1e547(spawnpoint) && territory::is_inside(spawnpoint)) {
            params = spawnstruct();
            params.origin = point.origin;
            var_b9c86846 = getscriptbundle(item_name);
            params.var_45e1ab0 = spawnstruct();
            params.var_45e1ab0.presetname = var_b9c86846.var_423d0316;
            vehicle = namespace_d0eacb0d::function_f863c07e(itementry.vehicle, spawnpoint, point.angles, &player_vehicle::function_934f56ec, params);
        }
        if (isdefined(vehicle)) {
            level.item_vehicles[level.item_vehicles.size] = vehicle;
            level.var_8819644a[level.var_8819644a.size] = {#origin:vehicle.origin, #vehicletype:vehicle.vehicletype, #vehicle:vehicle, #used:0};
        }
        function_43cd95f4(point.id, "");
        /#
            level.var_f2db6a7f++;
        #/
        if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
            waitframe(1);
            level.var_d0676b07 = getrealtime();
        }
        return;
    } else if (!sessionmodeiszombiesgame() && is_true(getgametypesetting(#"hash_36c2645732ad1c3b"))) {
        return;
    }
    numchildren = self function_98013deb(row);
    if (!stashitem) {
        origin = point.origin;
        angles = point.angles;
        if (numchildren > 0) {
            if (!isdefined(itementry.var_47f145b4)) {
                angles = (0, angleclamp180(origin[0] + origin[1] + origin[2]), 0);
                forward = anglestoforward(angles) * level.var_69dda516[0];
                offset = rotatepoint(forward, (0, level.var_cc113617[0], 0));
                origin += offset;
                ground_pos = physicstraceex(origin + (0, 0, 24), origin - (0, 0, 96), (0, 0, 0), (0, 0, 0), undefined, 32);
                origin = ground_pos[#"position"];
                normal = ground_pos[#"normal"];
                angles = function_c1fa62a2(angles, normal);
            }
        } else if (!isdefined(itementry.var_47f145b4)) {
            angles = combineangles(angles, (0, angleclamp180(origin[0] + origin[1] + origin[2]), 0));
        } else {
            angles = (0, angles[1], 0);
        }
        angles = combineangles(angles, (isdefined(itementry.angleoffsetx) ? itementry.angleoffsetx : 0, isdefined(itementry.angleoffsety) ? itementry.angleoffsety : 0, isdefined(itementry.angleoffsetz) ? itementry.angleoffsetz : 0));
        originoffset = (isdefined(itementry.positionoffsetx) ? itementry.positionoffsetx : 0, isdefined(itementry.positionoffsety) ? itementry.positionoffsety : 0, isdefined(itementry.positionoffsetz) ? itementry.positionoffsetz : 0);
        origin += originoffset;
        if (numchildren > 0 || isdefined(itementry.var_47f145b4)) {
            point = function_53a81463(origin, angles, point.targetname, item_name);
        } else {
            function_b97dfce0(point.id, origin);
            function_3eab95b5(point.id, angles);
            point.angles = angles;
        }
    }
    function_43cd95f4(point.id, item_name);
    if (isdefined(itementry.var_a53e9db0) || isdefined(itementry.var_3e805062)) {
        function_126ac556(point.id, function_67456242(itementry));
    }
    if (stashitem) {
        function_54ca5536(point.id, -1);
    }
    /#
        if (stashitem) {
            if (isdefined(itementry.itemtype) && !isdefined(level.var_ecf16fd3[itementry.itemtype])) {
                level.var_ecf16fd3[itementry.itemtype] = 0;
                level.var_ecf16fd3[itementry.itemtype]++;
                level.var_2850ef5++;
            }
        } else {
            level.var_136445c0++;
        }
    #/
    if (numchildren > 0) {
        for (index = 1; index <= 5; index++) {
            item_name = self.itemlistbundle.itemlist[row].("childitementry_" + index);
            if (isdefined(item_name)) {
                function_f0e5262b(item_name, point, index, stashitem, point.targetname);
            }
        }
    }
}

// Namespace namespace_65181344/namespace_65181344
// Params 5, eflags: 0x6 linked
// Checksum 0x21802470, Offset: 0x1ac8
// Size: 0x4fc
function private function_f0e5262b(item_name, point, childindex, stashitem = 0, targetname) {
    if (isdefined(level.var_4afb8f5a[item_name])) {
        item_name = level.var_4afb8f5a[item_name];
    }
    itementry = isdefined(level.var_de3d5d56) ? level.var_de3d5d56[item_name] : getscriptbundle(item_name);
    offset = (0, 0, 0);
    angles = (0, 0, 0);
    origin = point.origin;
    if (!stashitem) {
        assert(childindex > 0 && childindex <= 5);
        parentangles = (0, point.angles[1], 0);
        degree = level.var_cc113617[childindex];
        distance = level.var_69dda516[childindex];
        offset = (cos(degree) * distance, sin(degree) * distance, 0);
        offset = rotatepoint(offset, parentangles);
        origin += offset;
        ground_pos = physicstraceex(origin + (0, 0, 24), origin - (0, 0, 96), (0, 0, 0), (0, 0, 0), undefined, 32);
        var_f05b52fe = (isdefined(itementry.positionoffsetx) ? itementry.positionoffsetx : 0, isdefined(itementry.positionoffsety) ? itementry.positionoffsety : 0, isdefined(itementry.positionoffsetz) ? itementry.positionoffsetz : 0);
        origin = ground_pos[#"position"] + var_f05b52fe;
        normal = ground_pos[#"normal"];
        angles += (0, level.var_82e94a26[childindex], 0);
        angles += (0, point.angles[1], 0);
        angles = function_c1fa62a2(angles, normal);
        angles = combineangles(angles, (isdefined(itementry.angleoffsetx) ? itementry.angleoffsetx : 0, isdefined(itementry.angleoffsety) ? itementry.angleoffsety : 0, isdefined(itementry.angleoffsetz) ? itementry.angleoffsetz : 0));
        if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
            waitframe(1);
            level.var_d0676b07 = getrealtime();
        }
    }
    var_23972ae0 = function_53a81463(origin, angles, targetname, item_name);
    if (stashitem) {
        function_54ca5536(var_23972ae0.id, -1);
    }
    /#
        if (stashitem) {
            if (isdefined(itementry.itemtype) && !isdefined(level.var_ecf16fd3[itementry.itemtype])) {
                level.var_ecf16fd3[itementry.itemtype] = 0;
                level.var_ecf16fd3[itementry.itemtype]++;
                level.var_2850ef5++;
            }
            return;
        }
        if (isdefined(itementry.itemtype) && !isdefined(level.var_8d9ad8e8[itementry.itemtype])) {
            level.var_8d9ad8e8[itementry.itemtype] = 0;
            level.var_8d9ad8e8[itementry.itemtype]++;
            level.var_5720c09a++;
        }
    #/
}

// Namespace namespace_65181344/namespace_65181344
// Params 1, eflags: 0x6 linked
// Checksum 0xefe68463, Offset: 0x1fd0
// Size: 0x6da
function private function_ea39d1fa(stash) {
    stash.var_aa9f8f87 = self.scriptbundlename;
    var_aa9f8f87 = self.itemlistbundle;
    if (isdefined(var_aa9f8f87) && isdefined(level.var_fb9a8536[var_aa9f8f87.name])) {
        var_aa9f8f87 = getscriptbundle(level.var_fb9a8536[var_aa9f8f87.name]);
    }
    var_eff83f3 = var_aa9f8f87;
    if (isdefined(level.var_93c59949[var_aa9f8f87.name])) {
        var_cf36f90d = level.var_93c59949[var_aa9f8f87.name];
        for (index = 0; index < var_cf36f90d.size; index++) {
            randindex = function_d59c2d03(var_cf36f90d.size);
            var_ec7042e9 = var_cf36f90d[index];
            var_cf36f90d[index] = var_cf36f90d[randindex];
            var_cf36f90d[randindex] = var_ec7042e9;
        }
        foreach (var_ee110db8 in var_cf36f90d) {
            if (isdefined(var_ee110db8.var_52a66db0)) {
                if (stash.targetname !== var_ee110db8.var_52a66db0) {
                    continue;
                }
            }
            if (var_ee110db8.count == 0) {
                continue;
            }
            var_1dd9b7f1 = getscriptbundle(var_ee110db8.replacement);
            if (var_1dd9b7f1.type !== #"itemspawnlist") {
                assert(0, "<unknown string>" + var_ee110db8);
                continue;
            }
            var_eff83f3 = var_1dd9b7f1;
            self.itemlistbundle = var_eff83f3;
            if (var_ee110db8.count > 0) {
                var_ee110db8.count--;
            }
            break;
        }
    }
    stash.itemlistbundle = var_eff83f3;
    if (is_true(var_eff83f3.var_4f220d03)) {
        if (isdefined(stash.targetname)) {
            function_f0e5262b(#"hash_b52c813369f685d", stash, -1, 1, stash.targetname);
            spawncount = 0;
            for (row = 0; row < var_eff83f3.itemlist.size; row++) {
                available = isdefined(var_eff83f3.itemlist[row].available) ? var_eff83f3.itemlist[row].available : 0;
                available = int(max(available, 0));
                spawncount += available;
            }
            stash.available = spawncount;
        } else {
            assert(0);
        }
    } else {
        var_f16b79a = 0;
        for (row = 0; row < var_eff83f3.itemlist.size; row++) {
            if (!isdefined(var_eff83f3.itemlist[row].itementry)) {
                continue;
            }
            itemlistbundle = getscriptbundle(var_eff83f3.itemlist[row].itementry);
            if (itemlistbundle.name == "defaultscriptbundle") {
                continue;
            }
            var_bbe618cc = itemlistbundle.type == #"itemspawnlist" || itemlistbundle.type == #"itemspawnlistalias";
            available = isdefined(var_eff83f3.itemlist[row].available) ? var_eff83f3.itemlist[row].available : 0;
            var_8107154f = [];
            do {
                point = function_53a81463(stash.origin + stash.centeroffset, stash.angles, isdefined(stash.targetname) ? stash.targetname : stash.target, "");
                var_8107154f[var_8107154f.size] = point.id;
                if (!var_bbe618cc) {
                    _spawn_item(point, row, 1);
                }
                available--;
            } while (available > 0);
            if (var_bbe618cc) {
                if (itemlistbundle.type == #"itemspawnlistalias") {
                    var_12ab6449 = function_440f0490(itemlistbundle);
                    if (!isdefined(var_12ab6449)) {
                        continue;
                    }
                    itemlistbundle = var_12ab6449;
                }
                if (isdefined(itemlistbundle) && isdefined(level.var_fb9a8536[itemlistbundle.name])) {
                    itemlistbundle = getscriptbundle(level.var_fb9a8536[itemlistbundle.name]);
                }
                itemspawnlist = spawnstruct();
                itemspawnlist.itemlistbundle = itemlistbundle;
                items = itemspawnlist function_e25c9d12(var_f16b79a, var_8107154f, var_8107154f.size, 1);
                var_f16b79a += items.size;
            }
            if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
                waitframe(1);
                level.var_d0676b07 = getrealtime();
            }
        }
    }
    self.itemlistbundle = var_aa9f8f87;
}

// Namespace namespace_65181344/namespace_65181344
// Params 1, eflags: 0x6 linked
// Checksum 0xf841600f, Offset: 0x26b8
// Size: 0x7e4
function private function_216a69d6(spawnchance) {
    dynents = array();
    if (isdefined(self.target)) {
        dynents = getdynentarray(self.target, 1);
    }
    if (isdefined(self.targetname)) {
        var_ed91073b = function_c79d31c4(self.targetname, 1);
        dynents = arraycombine(dynents, var_ed91073b, 0, 0);
    }
    for (index = 0; index < self.points.size; index++) {
        randindex = function_d59c2d03(self.points.size);
        tempid = self.points[index];
        self.points[index] = self.points[randindex];
        self.points[randindex] = tempid;
    }
    if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
        waitframe(1);
        level.var_d0676b07 = getrealtime();
    }
    maxspawns = isdefined(self.itemlistbundle.var_9b009839) ? self.itemlistbundle.var_9b009839 : 0;
    var_418a2e03 = [];
    foreach (dynent in dynents) {
        level.item_spawn_stashes[level.item_spawn_stashes.size] = dynent;
        dynent.lootlocker = self.itemlistbundle.lootlocker;
        if (is_true(dynent.lootlocker)) {
        }
        randint = function_d59c2d03(100);
        shouldspawn = randint <= spawnchance;
        if (maxspawns > -1 && var_418a2e03.size >= maxspawns) {
            shouldspawn = 0;
        }
        if (shouldspawn) {
            var_418a2e03[var_418a2e03.size] = dynent;
            continue;
        }
        setdynentenabled(dynent, 0);
    }
    if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
        waitframe(1);
        level.var_d0676b07 = getrealtime();
    }
    var_c041d1bd = 0;
    var_a9826383 = 0;
    for (pointindex = 0; var_c041d1bd < var_418a2e03.size; pointindex++) {
        if (var_c041d1bd >= self.points.size) {
            break;
        }
        if (pointindex >= self.points.size) {
            if (var_a9826383) {
                break;
            }
            var_a9826383 = 1;
            pointindex = 0;
        }
        if (self.points[pointindex] == -1) {
            continue;
        }
        point = function_b1702735(self.points[pointindex]);
        if (point.hidetime == -1) {
            continue;
        }
        if (isdefined(self.itemlistbundle.var_7fb0967b) && !var_a9826383) {
            var_1ba7b9c8 = arraysortclosest(level.var_5ce07338, point.origin, 1, 0, self.itemlistbundle.var_7fb0967b);
            if (var_1ba7b9c8.size > 0) {
                continue;
            }
        }
        function_54ca5536(self.points[pointindex], -1);
        self.points[pointindex] = -1;
        dynent = var_418a2e03[var_c041d1bd];
        centeroffset = (0, 0, 0);
        if (isdefined(dynent.var_15d44120)) {
            centeroffset = getxmodelcenteroffset(dynent.var_15d44120);
        }
        angleoffset = (isdefined(self.itemlistbundle.var_9b80f2b0) ? self.itemlistbundle.var_9b80f2b0 : 0, isdefined(self.itemlistbundle.var_713a9e24) ? self.itemlistbundle.var_713a9e24 : 0, isdefined(self.itemlistbundle.var_c52545f8) ? self.itemlistbundle.var_c52545f8 : 0);
        dynent.angles = combineangles(point.angles, angleoffset);
        dynent.origin = point.origin;
        dynent.centeroffset = centeroffset;
        dynent.hintstring = self.itemlistbundle.hintstring;
        dynent.displayname = self.itemlistbundle.displayname;
        dynent.var_3d685b35 = isdefined(self.itemlistbundle.var_3d685b35) ? self.itemlistbundle.var_3d685b35 : 0;
        level.var_5ce07338[level.var_5ce07338.size] = dynent;
        targetname = isdefined(dynent.targetname) ? dynent.targetname : dynent.target;
        if (!isdefined(level.var_93d08989[targetname])) {
            level.var_93d08989[targetname] = array();
        }
        var_2a4308b9 = level.var_93d08989[targetname].size;
        level.var_93d08989[targetname][var_2a4308b9] = dynent;
        setdynentenabled(dynent, 1);
        function_e2a06860(dynent, 0);
        self function_ea39d1fa(dynent);
        var_c041d1bd++;
    }
    if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
        waitframe(1);
        level.var_d0676b07 = getrealtime();
    }
    for (var_63d7a070 = var_c041d1bd; var_63d7a070 < var_418a2e03.size; var_63d7a070++) {
        dynent = var_418a2e03[var_63d7a070];
        setdynentenabled(dynent, 0);
    }
}

// Namespace namespace_65181344/namespace_65181344
// Params 0, eflags: 0x6 linked
// Checksum 0x18efc4ef, Offset: 0x2ea8
// Size: 0x8c
function private _spawn() {
    if (is_true(self.itemlistbundle.supplystash)) {
        self function_216a69d6(isdefined(self.itemlistbundle.var_fde72c94) ? self.itemlistbundle.var_fde72c94 : 100);
        return;
    }
    self function_e25c9d12(0, self.var_8107154f, self.var_8107154f.size);
}

// Namespace namespace_65181344/namespace_65181344
// Params 0, eflags: 0x6 linked
// Checksum 0x5a86c79, Offset: 0x2f40
// Size: 0x1fa
function private _setup() {
    self.itemlistbundle = getscriptbundle(self.scriptbundlename);
    if (isdefined(self.itemlistbundle) && isdefined(level.var_fb9a8536[self.itemlistbundle.name])) {
        self.itemlistbundle = getscriptbundle(level.var_fb9a8536[self.itemlistbundle.name]);
    }
    assert(isdefined(self.itemlistbundle), "<unknown string>" + self.scriptbundlename + "<unknown string>");
    if (!isdefined(self.itemlistbundle.itemlist)) {
        self.itemlistbundle.itemlist = [];
    }
    self.remaining = isdefined(self.count) ? self.count : 0;
    self.points = function_d0dc448b(self.target);
    self.var_8107154f = [];
    foreach (pointid in self.points) {
        self.var_8107154f[pointid] = pointid;
    }
    if (!isdefined(level.var_28cd0b1f[self.target]) && self.target !== #"hash_4f6d836b1441bd94") {
    }
    if (!isdefined(self.points)) {
        self.points = [];
    }
}

// Namespace namespace_65181344/namespace_65181344
// Params 0, eflags: 0x6 linked
// Checksum 0x2195aded, Offset: 0x3148
// Size: 0x76
function private _teardown() {
    self.points = undefined;
    self.var_8107154f = undefined;
    self.itemlistbundle = undefined;
    self.angles = undefined;
    self.available = undefined;
    self.var_ccc6d5b7 = undefined;
    self.modelscale = undefined;
    self.remaining = undefined;
    self.var_3ddde668 = undefined;
    self.var_5d3a106 = undefined;
    self.var_202d2992 = undefined;
    self.rows = undefined;
    self.weights = undefined;
    self.weighttotal = undefined;
}

// Namespace namespace_65181344/namespace_65181344
// Params 0, eflags: 0x2 linked
// Checksum 0xd2ff2ebb, Offset: 0x31c8
// Size: 0x44
function function_3095d12a() {
    if (isdefined(level.var_ccc3aaf)) {
        return;
    }
    level.var_ccc3aaf = 1;
    flag::set(#"item_world_traces");
}

// Namespace namespace_65181344/namespace_65181344
// Params 0, eflags: 0x6 linked
// Checksum 0xd3c3693e, Offset: 0x3218
// Size: 0xa4
function private function_9db93def() {
    assert(isdefined(self.target) && self.target != "<unknown string>", "<unknown string>" + self.origin + "<unknown string>");
    assert(self.target !== self.targetname, "<unknown string>" + self.origin + "<unknown string>" + self.target + "<unknown string>");
}

// Namespace namespace_65181344/namespace_65181344
// Params 5, eflags: 0x6 linked
// Checksum 0x6470d421, Offset: 0x32c8
// Size: 0x6b0
function private function_a8e0dc24(itementry, data, limit, var_a3a56d95, maxattachments) {
    assert(isstruct(itementry));
    assert(itementry.itemtype == #"weapon");
    assert(maxattachments >= var_a3a56d95);
    assert(isarray(data.currentattachments));
    assert(isarray(data.possibleattachments));
    assert(isarray(data.availableslots));
    attachments = data.currentattachments;
    if (maxattachments < var_a3a56d95) {
        return attachments;
    }
    possibleattachments = data.possibleattachments;
    var_1f5af2f9 = getarraykeys(possibleattachments);
    for (index = 0; index < possibleattachments.size; index++) {
        randindex = function_d59c2d03(possibleattachments.size);
        tempid = possibleattachments[var_1f5af2f9[randindex]];
        possibleattachments[var_1f5af2f9[randindex]] = possibleattachments[var_1f5af2f9[index]];
        possibleattachments[var_1f5af2f9[index]] = tempid;
    }
    var_a3a56d95 = int(min(var_a3a56d95, possibleattachments.size));
    maxattachments = int(min(maxattachments, possibleattachments.size));
    assert(maxattachments >= var_a3a56d95);
    var_5f5def05 = var_a3a56d95;
    var_ac516129 = maxattachments - var_a3a56d95;
    if (var_ac516129 > 0) {
        var_5f5def05 += function_d59c2d03(var_ac516129);
    }
    var_5f5def05 = min(var_5f5def05, 8);
    var_5f5def05 = min(var_5f5def05, attachments.size + limit);
    for (index = 0; index < possibleattachments.size && attachments.size < var_5f5def05; index++) {
        var_41ade915 = possibleattachments[index].var_6be1bec7;
        var_fe35755b = getscriptbundle(var_41ade915);
        if (!isstruct(var_fe35755b)) {
            assert(0);
            continue;
        }
        var_e77f982 = 1;
        foreach (slot in array("attachSlotOptics", "attachSlotMuzzle", "attachSlotBarrel", "attachSlotUnderbarrel", "attachSlotBody", "attachSlotMagazine", "attachSlotHandle", "attachSlotStock")) {
            if (is_true(var_fe35755b.(slot)) && !is_true(data.availableslots[slot])) {
                var_e77f982 = 0;
                break;
            }
        }
        if (!var_e77f982) {
            continue;
        }
        var_8d5b1d0 = arraycopy(attachments);
        foreach (attachment in var_fe35755b.attachments) {
            var_8d5b1d0[var_8d5b1d0.size] = attachment.var_6be1bec7;
        }
        weapon = getweapon(itementry.weapon.name, var_8d5b1d0);
        weapon = function_1242e467(weapon);
        if (weapon.attachments.size == var_8d5b1d0.size) {
            attachments = var_8d5b1d0;
            foreach (slot in array("attachSlotOptics", "attachSlotMuzzle", "attachSlotBarrel", "attachSlotUnderbarrel", "attachSlotBody", "attachSlotMagazine", "attachSlotHandle", "attachSlotStock")) {
                if (is_true(var_fe35755b.(slot))) {
                    data.availableslots[slot] = 0;
                }
            }
        }
    }
    return attachments;
}

// Namespace namespace_65181344/namespace_65181344
// Params 1, eflags: 0x2 linked
// Checksum 0x13db6acf, Offset: 0x3980
// Size: 0x532
function function_67456242(itementry) {
    assert(isstruct(itementry));
    assert(itementry.itemtype == #"weapon");
    assert(isdefined(itementry.var_a53e9db0) || isdefined(itementry.var_3e805062));
    weapon = item_world_util::function_35e06774(itementry, 1);
    attachments = weapon.attachments;
    availableslots = [];
    foreach (slot in array("attachSlotOptics", "attachSlotMuzzle", "attachSlotBarrel", "attachSlotUnderbarrel", "attachSlotBody", "attachSlotMagazine", "attachSlotHandle", "attachSlotStock")) {
        availableslots[slot] = is_true(itementry.(slot));
    }
    foreach (attachment in attachments) {
        var_41ade915 = item_world_util::function_6a0ee21a(attachment);
        var_fe35755b = getscriptbundle(var_41ade915);
        if (!isstruct(var_fe35755b)) {
            assert(0);
            continue;
        }
        foreach (slot in array("attachSlotOptics", "attachSlotMuzzle", "attachSlotBarrel", "attachSlotUnderbarrel", "attachSlotBody", "attachSlotMagazine", "attachSlotHandle", "attachSlotStock")) {
            if (is_true(var_fe35755b.(slot))) {
                availableslots[slot] = 0;
            }
        }
    }
    var_a3a56d95 = isdefined(itementry.var_8e212f46) ? itementry.var_8e212f46 : 0;
    maxattachments = isdefined(itementry.var_d0e99a2a) ? itementry.var_d0e99a2a : 0;
    assert(maxattachments >= var_a3a56d95);
    data = spawnstruct();
    data.currentattachments = attachments;
    data.availableslots = availableslots;
    if (isdefined(itementry.var_3e805062)) {
        data.possibleattachments = itementry.var_3e805062;
        data.currentattachments = function_a8e0dc24(itementry, data, 1, var_a3a56d95, maxattachments);
        weapon = getweapon(itementry.weapon.name, data.currentattachments);
        weapon = function_1242e467(weapon);
    }
    if (isdefined(itementry.var_a53e9db0)) {
        data.possibleattachments = itementry.var_a53e9db0;
        data.currentattachments = function_a8e0dc24(itementry, data, 2147483647, var_a3a56d95, maxattachments);
        weapon = getweapon(itementry.weapon.name, data.currentattachments);
        weapon = function_1242e467(weapon);
    }
    return weapon;
}

// Namespace namespace_65181344/namespace_65181344
// Params 7, eflags: 0x6 linked
// Checksum 0x91279168, Offset: 0x3ec0
// Size: 0x16f2
function private function_e25c9d12(var_f16b79a, &var_8107154f, spawncount, stashitem = 0, falling = 2, &var_a1b91de4 = undefined, var_7d55e249 = undefined) {
    if (!isstruct(self)) {
        assert(0);
        return;
    }
    /#
        if (isdefined(self.points) && isdefined(self.target)) {
            level.var_2e96a450[self.target] = self.points.size;
        }
    #/
    assert(isstruct(self));
    assert(isarray(var_8107154f));
    assert(isint(spawncount));
    assert(isdefined(self.itemlistbundle));
    assert(!is_true(self.vehiclespawner));
    assert(!is_true(self.supplystash));
    if (spawncount <= 0) {
        return;
    }
    items = [];
    self.rows = isdefined(self.itemlistbundle.itemlist.size) ? self.itemlistbundle.itemlist.size : 0;
    self.count = spawncount;
    self.var_5b4935 = [];
    self.available = [];
    self.weights = [];
    self.weighttotal = 0;
    for (row = 0; row < self.rows; row++) {
        item_name = self.itemlistbundle.itemlist[row].itementry;
        if (!isdefined(item_name) || item_name == "") {
            continue;
        }
        if (isdefined(item_name) && isdefined(level.var_4afb8f5a[item_name])) {
            item_name = level.var_4afb8f5a[item_name];
        }
        itementry = isdefined(level.var_de3d5d56) && isdefined(level.var_de3d5d56[item_name]) ? level.var_de3d5d56[item_name] : getscriptbundle(item_name);
        if (!isdefined(itementry) || itementry.name == "defaultscriptbundle") {
            self.var_5b4935[row] = 1;
        }
    }
    for (row = 0; row < self.rows; row++) {
        self.available[row] = isdefined(self.itemlistbundle.itemlist[row].available) ? self.itemlistbundle.itemlist[row].available : 0;
        if (is_true(self.var_5b4935[row])) {
            self.available[row] = 0;
        }
        if (self.available[row] != 0) {
            var_35843db5 = isdefined(self.itemlistbundle.itemlist[row].minweight) ? self.itemlistbundle.itemlist[row].minweight : 0;
            var_ccef9e25 = isdefined(self.itemlistbundle.itemlist[row].maxweight) ? self.itemlistbundle.itemlist[row].maxweight : 0;
            minweight = int(min(var_35843db5, var_ccef9e25));
            maxweight = int(max(var_35843db5, var_ccef9e25));
            diff = maxweight - minweight;
            weight = function_d59c2d03(diff + 1) + minweight;
            self.weights[row] = weight;
            self.weighttotal += self.weights[row];
        }
    }
    if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
        waitframe(1);
        level.var_d0676b07 = getrealtime();
    }
    var_399d601b = spawncount;
    var_413b71b8 = self.weighttotal;
    self.weighttotal = 0;
    for (row = 0; row < self.rows; row++) {
        if (self.available[row] == 0) {
            continue;
        }
        if (self.available[row] < 0) {
            self.weighttotal += self.weights[row];
            continue;
        }
        points = 0;
        if (var_413b71b8 > 0 && var_399d601b > 0) {
            points = self.weights[row] / var_413b71b8 * var_399d601b;
        }
        if (points > self.available[row]) {
            self.weights[row] = 2147483647;
            spawncount -= self.available[row];
            continue;
        }
        self.weighttotal += self.weights[row];
    }
    if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
        waitframe(1);
        level.var_d0676b07 = getrealtime();
    }
    self.var_202d2992 = [];
    self.var_3ddde668 = [];
    self.var_43feff59 = 0;
    self.var_5d3a106 = 0;
    totalspawncount = spawncount / max(self.weighttotal, 1);
    for (row = 0; row < self.rows; row++) {
        if (self.available[row] != 0) {
            if (self.weights[row] == 2147483647) {
                points = self.available[row];
            } else {
                points = self.weights[row] * totalspawncount;
            }
            self.var_202d2992[row] = int(floor(points));
            self.var_3ddde668[row] = int((points - self.var_202d2992[row]) * 1000);
            self.var_43feff59 += self.var_202d2992[row];
            self.var_5d3a106 += self.var_3ddde668[row];
        }
    }
    if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
        waitframe(1);
        level.var_d0676b07 = getrealtime();
    }
    arrayremovevalue(self.var_202d2992, 0, 1);
    arrayremovevalue(self.var_3ddde668, 0, 1);
    assert(self.var_43feff59 <= var_399d601b);
    var_c499a7fa = getarraykeys(self.var_3ddde668);
    if (self.var_5d3a106 > 0) {
        for (pointindex = self.var_43feff59; pointindex < spawncount && self.var_5d3a106 > 0; pointindex++) {
            randomval = function_d59c2d03(self.var_5d3a106);
            var_28ef6352 = 0;
            for (var_56c03814 = 0; var_56c03814 < self.var_3ddde668.size; var_56c03814++) {
                var_75aa5cbb = var_c499a7fa[var_c499a7fa.size - var_56c03814 - 1];
                if (self.available[var_75aa5cbb] != 0) {
                    var_cc5fea3d = var_28ef6352 + self.var_3ddde668[var_75aa5cbb];
                    if (var_28ef6352 <= randomval && randomval <= var_cc5fea3d) {
                        self.var_5d3a106 -= self.var_3ddde668[var_75aa5cbb];
                        self.var_3ddde668[var_75aa5cbb] = 0;
                        self.var_202d2992[var_75aa5cbb] = (isdefined(self.var_202d2992[var_75aa5cbb]) ? self.var_202d2992[var_75aa5cbb] : 0) + 1;
                        self.var_43feff59++;
                        break;
                    }
                    var_28ef6352 = var_cc5fea3d;
                }
            }
        }
    }
    if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
        waitframe(1);
        level.var_d0676b07 = getrealtime();
    }
    assert(self.var_43feff59 <= var_399d601b);
    if (!isdefined(var_a1b91de4)) {
        var_a1b91de4 = getarraykeys(var_8107154f);
        for (index = 0; index < var_8107154f.size; index++) {
            randindex = function_d59c2d03(var_8107154f.size);
            tempid = var_8107154f[var_a1b91de4[randindex]];
            var_8107154f[var_a1b91de4[randindex]] = var_8107154f[var_a1b91de4[index]];
            var_8107154f[var_a1b91de4[index]] = tempid;
        }
    }
    if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
        waitframe(1);
        level.var_d0676b07 = getrealtime();
    }
    self.var_ccc6d5b7 = [];
    var_7a7ab6bf = 0;
    var_a9826383 = 0;
    arraykeys = getarraykeys(self.var_202d2992);
    var_f5111345 = 0;
    for (pointindex = 0; var_f5111345 < arraykeys.size && var_7a7ab6bf < self.count; pointindex++) {
        if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
            waitframe(1);
            level.var_d0676b07 = getrealtime();
        }
        var_75aa5cbb = arraykeys[var_f5111345];
        if (pointindex >= var_8107154f.size) {
            assert(var_a9826383 === 0);
            var_a9826383 = 1;
            pointindex = 0;
        }
        if (var_8107154f[var_a1b91de4[pointindex]] == -1) {
            continue;
        }
        itementry = self.itemlistbundle.itemlist[var_75aa5cbb].itementry;
        if (isdefined(itementry) && itementry != "") {
            scriptbundle = isdefined(level.var_de3d5d56) && isdefined(level.var_de3d5d56[itementry]) ? level.var_de3d5d56[itementry] : getscriptbundle(itementry);
            if (isdefined(scriptbundle) && isdefined(scriptbundle.type) && (scriptbundle.type == #"itemspawnlist" || scriptbundle.type == #"itemspawnlistalias")) {
                self.var_ccc6d5b7[var_75aa5cbb] = self.var_202d2992[var_75aa5cbb];
                self.var_202d2992[var_75aa5cbb] = 0;
                var_f5111345++;
                continue;
            }
        }
        if (var_8107154f[var_a1b91de4[pointindex]] == -2) {
            spawnitems = undefined;
            if (isdefined(var_7d55e249) && isarray(var_7d55e249)) {
                self.origin = var_7d55e249[var_a1b91de4[pointindex]].origin;
            }
            spawnitems = self function_35461e5f(var_f16b79a + items.size, var_75aa5cbb, stashitem, falling);
            items = arraycombine(items, spawnitems, 1, 0);
        } else {
            itemspawnpoint = function_b1702735(var_8107154f[var_a1b91de4[pointindex]]);
            if (isdefined(self.itemlistbundle.var_7fb0967b) && !var_a9826383) {
                var_8822f354 = 0;
                itemtype = undefined;
                if (isdefined(itementry)) {
                    scriptbundle = isdefined(level.var_de3d5d56) && isdefined(level.var_de3d5d56[itementry]) ? level.var_de3d5d56[itementry] : getscriptbundle(itementry);
                    if (isdefined(scriptbundle)) {
                        itemtype = scriptbundle.itemtype;
                    }
                }
                if (isdefined(self.itemlistbundle.var_dc7ffbef) && isdefined(itemtype)) {
                    if (itemtype == #"vehicle") {
                        vehicles = getvehiclearray();
                        nearbyvehicles = arraysortclosest(vehicles, itemspawnpoint.origin, 1, 0, self.itemlistbundle.var_7fb0967b);
                        var_8822f354 = nearbyvehicles.size;
                    } else {
                        var_f4b807cb = function_abaeb170(itemspawnpoint.origin, undefined, undefined, self.itemlistbundle.var_7fb0967b, -1, 1, -2147483647);
                        for (var_55879fe2 = 0; var_55879fe2 < var_f4b807cb.size; var_55879fe2++) {
                            if (isdefined(var_f4b807cb[var_55879fe2]) && isdefined(var_f4b807cb[var_55879fe2].itementry) && var_f4b807cb[var_55879fe2].itementry.itemtype == itemtype) {
                                var_8822f354++;
                                break;
                            }
                        }
                        var_f4b807cb = [];
                    }
                } else {
                    var_8822f354 = function_6de8969b(itemspawnpoint.origin, undefined, self.itemlistbundle.var_7fb0967b, -1, 1, -2147483647);
                }
                if (var_8822f354 > 0) {
                    continue;
                }
            }
            self _spawn_item(itemspawnpoint, var_75aa5cbb, stashitem);
        }
        var_8107154f[var_a1b91de4[pointindex]] = -1;
        self.var_202d2992[var_75aa5cbb]--;
        var_7a7ab6bf++;
        if (self.var_202d2992[var_75aa5cbb] == 0) {
            var_f5111345++;
        }
    }
    if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
        waitframe(1);
        level.var_d0676b07 = getrealtime();
    }
    for (index = 0; index < self.itemlistbundle.itemlist.size; index++) {
        if (!isdefined(self.var_ccc6d5b7[index])) {
            continue;
        }
        itemlist = self.itemlistbundle.itemlist[index];
        if (!isdefined(itemlist.itementry) || itemlist.itementry === "") {
            continue;
        }
        itemlistbundle = getscriptbundle(itemlist.itementry);
        if (!isdefined(itemlistbundle.type) || itemlistbundle.type != #"itemspawnlist" && itemlistbundle.type != #"itemspawnlistalias") {
            continue;
        }
        if (itemlistbundle.type == #"itemspawnlistalias") {
            var_12ab6449 = function_440f0490(itemlistbundle);
            if (!isdefined(var_12ab6449)) {
                continue;
            }
            itemlistbundle = var_12ab6449;
        }
        if (isdefined(itemlistbundle) && isdefined(level.var_fb9a8536[itemlistbundle.name])) {
            var_12ab6449 = getscriptbundle(level.var_fb9a8536[itemlistbundle.name]);
            if (!isdefined(var_12ab6449)) {
                println("<unknown string>" + itemlistbundle.name);
                assert(0);
                continue;
            }
            itemlistbundle = var_12ab6449;
        }
        if (isdefined(level.var_9af526f0) && itemlistbundle.name !== level.var_9af526f0 && getdvarint(#"hash_362cb8a4f269c52c", 0) == 0) {
            var_45749876 = function_d59c2d03(100);
            if (!isdefined(level.var_50cd96dc)) {
                level.var_50cd96dc = 0;
            }
            level.var_50cd96dc++;
            if (var_45749876 < (isdefined(level.var_546946af) ? level.var_546946af : 100)) {
                var_3224b39a = 0;
                if (isdefined(itemlistbundle.itemlist) && itemlistbundle.itemlist.size > 0 && isdefined(itemlistbundle.itemlist[0].itementry)) {
                    var_9c6a2603 = getscriptbundle(itemlistbundle.itemlist[0].itementry);
                    var_3224b39a = var_9c6a2603.type !== "itemspawnlist";
                }
                if (var_3224b39a) {
                    itemlistbundle = getscriptbundle(level.var_9af526f0);
                }
            }
        }
        itemspawnlist = spawnstruct();
        itemspawnlist.itemlistbundle = itemlistbundle;
        itemspawnlist.origin = self.origin;
        itemspawnlist.angles = self.angles;
        var_4168f4f3 = itemspawnlist function_e25c9d12(var_f16b79a + items.size, var_8107154f, self.var_ccc6d5b7[index], stashitem, falling, var_a1b91de4);
        items = arraycombine(items, var_4168f4f3, 1, 0);
    }
    return items;
}

// Namespace namespace_65181344/namespace_65181344
// Params 0, eflags: 0x2 linked
// Checksum 0xe1fce277, Offset: 0x55c0
// Size: 0x118
function function_62fdaf9e() {
    /#
        if (getdvarint(#"hash_68dcd0d52e11b957", 0)) {
            return;
        }
    #/
    foreach (value in struct::get_array("scriptbundle_itemspawnlist", "classname")) {
        value struct::delete();
        if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
            waitframe(1);
            level.var_d0676b07 = getrealtime();
        }
    }
}

// Namespace namespace_65181344/namespace_65181344
// Params 0, eflags: 0x2 linked
// Checksum 0xfd64f2a4, Offset: 0x56e0
// Size: 0x4c
function init_spawn_system() {
    level.var_d0676b07 = getrealtime();
    level.var_3e9c9a35 = 30;
    function_2c4d3d40();
    function_3095d12a();
}

// Namespace namespace_65181344/namespace_65181344
// Params 0, eflags: 0x0
// Checksum 0xf419124f, Offset: 0x5738
// Size: 0x5a0
function reset_items() {
    originalpoints = function_c77ddcd6();
    for (pointid = 0; pointid < originalpoints; pointid++) {
        point = function_b1702735(pointid);
        itementry = point.itementry;
        if (!isdefined(itementry)) {
            continue;
        }
        origin = point.origin;
        angles = point.angles;
        angles = function_bdd10bae(angles, (isdefined(itementry.angleoffsetx) ? itementry.angleoffsetx : 0, isdefined(itementry.angleoffsety) ? itementry.angleoffsety : 0, isdefined(itementry.angleoffsetz) ? itementry.angleoffsetz : 0));
        if (!isdefined(itementry.var_47f145b4)) {
            angles = function_bdd10bae(angles, (0, angleclamp180(origin[0] + origin[1] + origin[2]), 0));
        }
        originoffset = ((isdefined(itementry.positionoffsetx) ? itementry.positionoffsetx : 0) * -1, (isdefined(itementry.positionoffsety) ? itementry.positionoffsety : 0) * -1, (isdefined(itementry.positionoffsetz) ? itementry.positionoffsetz : 0) * -1);
        origin += originoffset;
        function_b97dfce0(point.id, origin);
        function_3eab95b5(point.id, angles);
        if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
            waitframe(1);
            level.var_d0676b07 = getrealtime();
        }
    }
    function_682385e7();
    if (isarray(level.item_spawn_drops)) {
        foreach (item in level.item_spawn_drops) {
            if (isdefined(item)) {
                item delete();
            }
        }
    }
    if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
        waitframe(1);
        level.var_d0676b07 = getrealtime();
    }
    level.item_spawn_drops = [];
    if (isarray(level.var_8ac64bf3)) {
        foreach (stash in level.var_8ac64bf3) {
            if (isdefined(stash)) {
                stash delete();
            }
        }
    }
    if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
        waitframe(1);
        level.var_d0676b07 = getrealtime();
    }
    level.var_8ac64bf3 = [];
    if (isarray(level.item_vehicles)) {
        foreach (vehicle in level.item_vehicles) {
            if (isdefined(vehicle)) {
                vehicle delete();
            }
        }
    }
    if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
        waitframe(1);
        level.var_d0676b07 = getrealtime();
    }
    level.item_vehicles = [];
    level.var_8819644a = [];
    level.item_spawn_drops = [];
}

// Namespace namespace_65181344/namespace_65181344
// Params 0, eflags: 0x2 linked
// Checksum 0xe517073, Offset: 0x5ce0
// Size: 0xca
function function_ca77960f() {
    var_1d9375fc = struct::get_array("scriptbundle_itemspawnlist", "classname");
    if (isdefined(level.var_9af526f0)) {
        var_52096b93 = spawnstruct();
        var_52096b93.scriptbundlename = level.var_9af526f0;
        var_52096b93.angles = (0, 0, 0);
        var_52096b93.origin = (0, 0, 0);
        var_52096b93.classname = "scriptbundle_itemspawnlist";
        var_52096b93.count = -1;
        var_52096b93.modelscale = 1;
        var_52096b93.target = #"hash_4f6d836b1441bd94";
        var_1d9375fc[var_1d9375fc.size] = var_52096b93;
    }
    return var_1d9375fc;
}

// Namespace namespace_65181344/namespace_65181344
// Params 2, eflags: 0x2 linked
// Checksum 0x86ca0b76, Offset: 0x5db8
// Size: 0x2f4
function function_50a2c746(&var_f38d5b52, var_87e9f374 = 0) {
    assert(isarray(var_f38d5b52));
    /#
        if (var_87e9f374) {
        }
    #/
    var_1d9375fc = function_ca77960f();
    foreach (group in var_1d9375fc) {
        if (!isdefined(group.target)) {
            continue;
        }
        itemlistbundle = getscriptbundle(group.scriptbundlename);
        if (isdefined(itemlistbundle) && isdefined(level.var_fb9a8536[itemlistbundle.name])) {
            itemlistbundle = getscriptbundle(level.var_fb9a8536[itemlistbundle.name]);
        }
        if (!isdefined(itemlistbundle)) {
            continue;
        }
        if (var_87e9f374) {
            if (!is_true(itemlistbundle.var_dc91e192) || !is_true(itemlistbundle.supplystash)) {
                continue;
            }
        } else if (is_true(itemlistbundle.var_dc91e192) && is_true(itemlistbundle.supplystash)) {
            continue;
        }
        if (isdefined(var_f38d5b52[group.target])) {
            if (!is_true(itemlistbundle.supplystash)) {
                continue;
            }
        }
        var_f38d5b52[group.target] = 1;
        group function_9db93def();
        group _setup();
        group _spawn();
        group _teardown();
        if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
            waitframe(1);
            level.var_d0676b07 = getrealtime();
        }
    }
    return var_f38d5b52;
}

// Namespace namespace_65181344/namespace_65181344
// Params 0, eflags: 0x6 linked
// Checksum 0x33f369b1, Offset: 0x60b8
// Size: 0x8
function private function_4233b851() {
    /#
    #/
}

// Namespace namespace_65181344/namespace_65181344
// Params 0, eflags: 0x2 linked
// Checksum 0x76c280ad, Offset: 0x60c8
// Size: 0x624
function setup_groups() {
    self notify("56d5c19f2e922cdc");
    self endon("56d5c19f2e922cdc");
    while (level.var_21f73755 !== 1) {
        waitframe(1);
    }
    level flag::set(#"hash_67b445a4b1d59922");
    flag::wait_till(#"item_world_traces");
    function_4233b851();
    /#
    #/
    starttime = gettime();
    level.var_d0676b07 = getrealtime();
    level.var_4afb8f5a = level.itemreplacement;
    foreach (key, value in level.var_4afb8f5a) {
    }
    level.var_fb9a8536 = level.var_ee110db8;
    foreach (value in level.var_fb9a8536) {
    }
    if (!isdefined(level.var_28cd0b1f)) {
        level.var_28cd0b1f = [];
    }
    function_e88ecf7f();
    function_9e9f43cd();
    level.item_spawn_stashes = [];
    level.var_5ce07338 = [];
    level.var_93d08989 = [];
    level.item_vehicles = [];
    level.var_8819644a = [];
    level.var_cc113617 = [-130, 50, 120, 315, 225, 270];
    level.var_82e94a26 = [1:10, 2:-5, 3:-15, 4:5, 5:0];
    level.var_69dda516 = [17, 34, 32, 25, 25, 25];
    /#
        level.var_136445c0 = 0;
        level.var_d80c35aa = [];
        level.var_5720c09a = 0;
        level.var_8d9ad8e8 = [];
        level.var_2850ef5 = 0;
        level.var_ecf16fd3 = [];
        level.var_f2db6a7f = 0;
    #/
    var_f38d5b52 = [];
    function_50a2c746(var_f38d5b52, 1);
    if (getrealtime() - level.var_d0676b07 > level.var_3e9c9a35) {
        waitframe(1);
        level.var_d0676b07 = getrealtime();
    }
    function_50a2c746(var_f38d5b52, 0);
    /#
        level.var_a7247d85 = function_8322cf16();
        level.var_66e56764 = level.var_136445c0 + level.var_5720c09a + level.var_2850ef5;
        level.var_efeab371 = [];
        foreach (type, count in level.var_d80c35aa) {
            level.var_efeab371[type] = (isdefined(count) ? count : 0) + (isdefined(level.var_8d9ad8e8[type]) ? level.var_8d9ad8e8[type] : 0) + (isdefined(level.var_ecf16fd3[type]) ? level.var_ecf16fd3[type] : 0);
        }
    #/
    /#
        foreach (type, count in level.var_efeab371) {
        }
    #/
    function_62fdaf9e();
    function_6a5c090c();
    var_282e0a11 = function_d59c2d03(65536 - 1);
    item_world::function_5d4b134e(var_282e0a11);
    /#
    #/
    level.var_f1f90fd3 = float(gettime() - starttime) / 1000;
    println("<unknown string>" + var_282e0a11);
}

// Namespace namespace_65181344/namespace_65181344
// Params 2, eflags: 0x2 linked
// Checksum 0x9f53f8f8, Offset: 0x66f8
// Size: 0x546
function function_5eada592(scriptbundlename, linkto = 1) {
    if (!isdefined(self)) {
        assert(0);
        return;
    }
    if (!isdefined(scriptbundlename)) {
        assert(0);
        return;
    }
    self.itemlistbundle = getscriptbundle(scriptbundlename);
    if (!isdefined(self.itemlistbundle)) {
        assert(0);
        return;
    }
    items = [];
    if (is_true(self.itemlistbundle.var_4f220d03)) {
        item = function_62c0d32d(0, #"hash_b52c813369f685d", 1, 1);
        items[items.size] = item;
        spawncount = 0;
        for (row = 0; row < self.itemlistbundle.itemlist.size; row++) {
            available = isdefined(self.itemlistbundle.itemlist[row].available) ? self.itemlistbundle.itemlist[row].available : 0;
            available = int(max(available, 0));
            spawncount += available;
        }
        self.available = spawncount;
    } else {
        for (row = 0; row < self.itemlistbundle.itemlist.size; row++) {
            if (!isdefined(self.itemlistbundle.itemlist[row].itementry)) {
                continue;
            }
            itemlistbundle = getscriptbundle(self.itemlistbundle.itemlist[row].itementry);
            var_bbe618cc = itemlistbundle.type == #"itemspawnlist" || itemlistbundle.type == #"itemspawnlistalias";
            available = isdefined(self.itemlistbundle.itemlist[row].available) ? self.itemlistbundle.itemlist[row].available : 0;
            var_8107154f = [];
            do {
                var_8107154f[var_8107154f.size] = -2;
                if (!var_bbe618cc) {
                    spawnitems = function_35461e5f(items.size, row, 1, 1);
                    items = arraycombine(items, spawnitems, 1, 0);
                }
                available--;
            } while (available > 0);
            if (var_bbe618cc) {
                if (itemlistbundle.type == #"itemspawnlistalias") {
                    var_12ab6449 = function_440f0490(itemlistbundle);
                    if (!isdefined(var_12ab6449)) {
                        continue;
                    }
                    itemlistbundle = var_12ab6449;
                }
                if (isdefined(itemlistbundle) && isdefined(level.var_fb9a8536[itemlistbundle.name])) {
                    itemlistbundle = getscriptbundle(level.var_fb9a8536[itemlistbundle.name]);
                }
                itemspawnlist = spawnstruct();
                itemspawnlist.itemlistbundle = itemlistbundle;
                spawnitems = itemspawnlist function_e25c9d12(items.size, var_8107154f, var_8107154f.size, 1);
                items = arraycombine(items, spawnitems, 1, 0);
            }
        }
    }
    foreach (item in items) {
        if (!isdefined(item)) {
            continue;
        }
        item.targetnamehash = self.targetname;
        item.origin = self.origin;
        if (linkto) {
            item linkto(self);
        }
        item.spawning = 0;
    }
    return items;
}

// Namespace namespace_65181344/namespace_65181344
// Params 4, eflags: 0x0
// Checksum 0xd74bd9a7, Offset: 0x6c48
// Size: 0x3fc
function function_ae93ad7b(scriptbundlename, points, falling = 2, var_9961d9f3) {
    if (!isdefined(scriptbundlename)) {
        assert(0);
        return;
    }
    if (!isarray(points) || points.size <= 0) {
        assert(0);
        return;
    }
    scriptbundle = getscriptbundle(scriptbundlename);
    if (!isdefined(scriptbundle)) {
        assert(0);
        return;
    }
    itemgroup = spawnstruct();
    itemgroup.itemlistbundle = scriptbundle;
    itemgroup.origin = (0, 0, 0);
    itemgroup.angles = (0, 0, 0);
    var_8107154f = [];
    for (pointid = 0; pointid < points.size; pointid++) {
        var_8107154f[var_8107154f.size] = -2;
    }
    var_a1b91de4 = getarraykeys(var_8107154f);
    for (index = 0; index < var_8107154f.size; index++) {
        randindex = function_d59c2d03(var_8107154f.size);
        tempid = var_8107154f[var_a1b91de4[randindex]];
        var_8107154f[var_a1b91de4[randindex]] = var_8107154f[var_a1b91de4[index]];
        var_8107154f[var_a1b91de4[index]] = tempid;
    }
    items = itemgroup function_e25c9d12(0, var_8107154f, var_8107154f.size, 0, falling, var_a1b91de4, points);
    foreach (item in items) {
        if (!isdefined(item)) {
            continue;
        }
        if (isdefined(var_9961d9f3) && isdefined(item.itementry)) {
            item.itementry.var_31dcb18d = var_9961d9f3;
        }
        item.spawning = 0;
        if (isentity(item) && isdefined(item.var_627c698b.attachments) && !isdefined(item.attachments)) {
            attachments = item.var_627c698b.attachments;
            foreach (attachment in attachments) {
                var_41ade915 = item_world_util::function_6a0ee21a(attachment);
                attachmentitem = function_4ba8fde(var_41ade915);
                namespace_a0d533d1::function_8b7b98f(item, attachmentitem);
            }
        }
    }
}

// Namespace namespace_65181344/namespace_65181344
// Params 4, eflags: 0x2 linked
// Checksum 0xf50e39a0, Offset: 0x7050
// Size: 0x4b0
function function_fd87c780(scriptbundlename, itemcount, falling = 2, var_9961d9f3) {
    if (!isdefined(self)) {
        assert(0);
        return;
    }
    if (!isdefined(scriptbundlename)) {
        assert(0);
        return;
    }
    if (!isint(itemcount) || itemcount <= 0) {
        assert(0);
        return;
    }
    scriptbundle = getscriptbundle(scriptbundlename);
    if (!isdefined(scriptbundle)) {
        assert(0);
        return;
    }
    assert(isdefined(self.origin));
    itemgroup = spawnstruct();
    itemgroup.itemlistbundle = scriptbundle;
    itemgroup.origin = self.origin;
    itemgroup.angles = isdefined(self.angles) ? self.angles : (0, 0, 0);
    if (is_true(scriptbundle.var_4f220d03)) {
        angleoffset = (isdefined(self.itemlistbundle.var_eec6a9b) ? self.itemlistbundle.var_eec6a9b : 0, isdefined(self.itemlistbundle.var_56257910) ? self.itemlistbundle.var_56257910 : 0, isdefined(self.itemlistbundle.var_24681596) ? self.itemlistbundle.var_24681596 : 0);
        itemgroup.angles = combineangles(itemgroup.angles, angleoffset);
    }
    if (isvec(self.anglesoffset)) {
        itemgroup.angles += self.anglesoffset;
    }
    var_8107154f = [];
    for (pointid = 0; pointid < itemcount; pointid++) {
        var_8107154f[var_8107154f.size] = -2;
    }
    items = itemgroup function_e25c9d12(0, var_8107154f, var_8107154f.size, 0, falling);
    foreach (item in items) {
        if (!isdefined(item)) {
            continue;
        }
        if (isdefined(var_9961d9f3) && isdefined(item.itementry)) {
            item.itementry.var_31dcb18d = var_9961d9f3;
        }
        item.spawning = 0;
        if (isentity(item) && isdefined(item.var_627c698b.attachments) && !isdefined(item.attachments)) {
            attachments = item.var_627c698b.attachments;
            foreach (attachment in attachments) {
                var_41ade915 = item_world_util::function_6a0ee21a(attachment);
                attachmentitem = function_4ba8fde(var_41ade915);
                namespace_a0d533d1::function_8b7b98f(item, attachmentitem);
            }
        }
    }
    return items;
}

