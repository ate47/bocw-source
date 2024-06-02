// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\oob.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\battlechatter.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace deployable;

// Namespace deployable/deployable
// Params 0, eflags: 0x5
// Checksum 0x72ce963, Offset: 0xf8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"deployable", &preinit, undefined, undefined, undefined);
}

// Namespace deployable/deployable
// Params 0, eflags: 0x6 linked
// Checksum 0x23128b54, Offset: 0x140
// Size: 0xcc
function private preinit() {
    callback::on_spawned(&on_player_spawned);
    level.var_160dcfef = spawnstruct();
    level.var_160dcfef.var_1b8ab31d = [];
    level.var_160dcfef.var_d4ef836e = 0;
    level.var_160dcfef.var_a48608a0 = [];
    if (!isdefined(level.var_1765ad79)) {
        level.var_1765ad79 = 1;
    }
    /#
        level.var_160dcfef.var_193db709 = [];
        setdvar(#"hash_8d4e58d73e3f876", 0);
    #/
}

// Namespace deployable/deployable
// Params 6, eflags: 0x2 linked
// Checksum 0x7ff5b632, Offset: 0x218
// Size: 0x1c6
function register_deployable(weapon, var_c0064c29, var_94b4fa08 = undefined, placehintstr = undefined, var_a39cb3db = undefined, var_fe12c0d9 = undefined) {
    if (!isdefined(level._deployable_weapons)) {
        level._deployable_weapons = [];
    }
    if (weapon.name == #"none") {
        return;
    }
    assert(weapon.name != #"none");
    level._deployable_weapons[weapon.statindex] = spawnstruct();
    level._deployable_weapons[weapon.statindex].var_159652c0 = &function_6654310c;
    level._deployable_weapons[weapon.statindex].var_9f2c21ea = var_c0064c29;
    level._deployable_weapons[weapon.statindex].var_1463c9a8 = var_94b4fa08;
    level._deployable_weapons[weapon.statindex].placehintstr = placehintstr;
    level._deployable_weapons[weapon.statindex].var_a39cb3db = var_a39cb3db;
    level._deployable_weapons[weapon.statindex].var_fe12c0d9 = var_fe12c0d9;
}

// Namespace deployable/deployable
// Params 1, eflags: 0x2 linked
// Checksum 0x55800863, Offset: 0x3e8
// Size: 0x88
function function_209fda28(weapon) {
    if (!isdefined(level._deployable_weapons)) {
        level._deployable_weapons = [];
    }
    if (isdefined(level._deployable_weapons[weapon.statindex]) && isdefined(level._deployable_weapons[weapon.statindex].var_159652c0)) {
        self [[ level._deployable_weapons[weapon.statindex].var_159652c0 ]](weapon);
    }
}

/#

    // Namespace deployable/deployable
    // Params 1, eflags: 0x2 linked
    // Checksum 0x9d291da1, Offset: 0x478
    // Size: 0x2c
    function function_84fa8d39(*weapon) {
        println("<unknown string>");
    }

#/

// Namespace deployable/deployable
// Params 1, eflags: 0x2 linked
// Checksum 0xa53a6805, Offset: 0x4b0
// Size: 0x4c
function function_cf538621(*weapon) {
    println("<unknown string>");
    self clientfield::set_to_player("gameplay_allows_deploy", 1);
}

// Namespace deployable/deployable
// Params 1, eflags: 0x2 linked
// Checksum 0x5ee368d6, Offset: 0x508
// Size: 0x44
function function_2750bb69(weapon) {
    println("<unknown string>");
    self thread battlechatter::function_916b4c72(weapon);
}

// Namespace deployable/deployable
// Params 2, eflags: 0x2 linked
// Checksum 0xa8d94ea6, Offset: 0x558
// Size: 0x148
function function_d60e5a06(center, radius) {
    var_5795c216 = spawnstruct();
    var_5795c216.origin = center;
    var_5795c216.radiussqr = radius * radius;
    var_5795c216._id = level.var_160dcfef.var_d4ef836e;
    if (!isdefined(level.var_160dcfef.var_1b8ab31d)) {
        level.var_160dcfef.var_1b8ab31d = [];
    } else if (!isarray(level.var_160dcfef.var_1b8ab31d)) {
        level.var_160dcfef.var_1b8ab31d = array(level.var_160dcfef.var_1b8ab31d);
    }
    level.var_160dcfef.var_1b8ab31d[level.var_160dcfef.var_1b8ab31d.size] = var_5795c216;
    var_81327e4b = level.var_160dcfef.var_d4ef836e;
    level.var_160dcfef.var_d4ef836e++;
    return var_81327e4b;
}

// Namespace deployable/deployable
// Params 1, eflags: 0x2 linked
// Checksum 0x33a82f9b, Offset: 0x6a8
// Size: 0x9e
function function_b20df196(zoneid) {
    for (index = 0; index < level.var_160dcfef.var_1b8ab31d.size; index++) {
        if (level.var_160dcfef.var_1b8ab31d[index]._id == zoneid) {
            level.var_160dcfef.var_1b8ab31d = array::remove_index(level.var_160dcfef.var_1b8ab31d, index, 0);
            break;
        }
    }
}

// Namespace deployable/deployable
// Params 1, eflags: 0x2 linked
// Checksum 0xd8bbadbc, Offset: 0x750
// Size: 0xb2
function function_89d64a2c(origin) {
    foreach (var_5795c216 in level.var_160dcfef.var_1b8ab31d) {
        if (distance2dsquared(var_5795c216.origin, origin) < var_5795c216.radiussqr) {
            return true;
        }
    }
    return false;
}

// Namespace deployable/deployable
// Params 2, eflags: 0x2 linked
// Checksum 0xdfc663bc, Offset: 0x810
// Size: 0x8c
function function_6ec9ee30(var_a2a6139a, deployable_weapon) {
    battlechatter::function_cad61ec(deployable_weapon);
    var_a2a6139a.weapon = deployable_weapon;
    var_a2a6139a thread function_670cd4a3();
    var_4d5b521e = self gadgetgetslot(deployable_weapon);
    self function_69b5c53c(var_4d5b521e, 0);
}

// Namespace deployable/deployable
// Params 1, eflags: 0x2 linked
// Checksum 0x22b3e778, Offset: 0x8a8
// Size: 0x24
function function_81598103(var_a2a6139a) {
    var_a2a6139a function_34d37476();
}

// Namespace deployable/deployable
// Params 1, eflags: 0x2 linked
// Checksum 0x2095683d, Offset: 0x8d8
// Size: 0xb0
function function_416f03e6(deployableweapon) {
    if (!isdefined(self)) {
        return;
    }
    var_4d5b521e = self gadgetgetslot(deployableweapon);
    if (isdefined(deployableweapon)) {
        self function_69b5c53c(var_4d5b521e, 0);
    }
    if (isdefined(deployableweapon) && deployableweapon.issupplydropweapon !== 1) {
        self setriotshieldfailhint();
    }
    if (isdefined(level.var_cf16ff75)) {
        self [[ level.var_cf16ff75 ]](deployableweapon);
    }
}

// Namespace deployable/deployable
// Params 2, eflags: 0x2 linked
// Checksum 0xa9a66bf9, Offset: 0x990
// Size: 0x1a6
function function_b3d993e9(deployable_weapon, sethintstring = 0) {
    player = self;
    if (deployable_weapon.var_e0d42861) {
        player function_bf191832(1, (0, 0, 0), (0, 0, 0));
        return 1;
    }
    var_2e7d45cb = player function_27476e09(deployable_weapon, sethintstring);
    player.var_7a3f3edf = function_ab25be55(deployable_weapon, sethintstring) && var_2e7d45cb.isvalid && function_d6ac81c7(deployable_weapon, player, var_2e7d45cb.origin, var_2e7d45cb.angles);
    player setplacementhint(player.var_7a3f3edf);
    player function_bf191832(player.var_7a3f3edf, var_2e7d45cb.origin, var_2e7d45cb.angles);
    player clientfield::set_to_player("gameplay_allows_deploy", player.var_7a3f3edf);
    if (player.var_7a3f3edf) {
        self.var_b8878ba9 = var_2e7d45cb.origin;
        self.var_ddc03e10 = var_2e7d45cb.angles;
    } else {
        self.var_b8878ba9 = undefined;
        self.var_ddc03e10 = undefined;
    }
    return player.var_7a3f3edf;
}

// Namespace deployable/deployable
// Params 2, eflags: 0x6 linked
// Checksum 0xa0e19b8f, Offset: 0xb40
// Size: 0x96
function private function_ab25be55(weapon, *sethintstring) {
    if (self isplayerswimming() && !(isdefined(sethintstring.canuseunderwater) ? sethintstring.canuseunderwater : 0)) {
        self sethintstring(#"hash_37605398dce96965");
        return false;
    }
    if (!self isonground()) {
        return false;
    }
    return true;
}

// Namespace deployable/deployable
// Params 2, eflags: 0x6 linked
// Checksum 0x9b7ae701, Offset: 0xbe0
// Size: 0x18e
function private function_831707e8(player, deployable_weapon) {
    if (!is_true(deployable_weapon.var_dbbd4cec)) {
        return false;
    }
    if (player depthinwater() > (isdefined(deployable_weapon.var_76127e14) ? deployable_weapon.var_76127e14 : 0)) {
        return false;
    }
    if (oob::chr_party(player.origin)) {
        return false;
    }
    if (!player isonground()) {
        return false;
    }
    if (function_89d64a2c(player.origin)) {
        return false;
    }
    if (function_54267517(player.origin)) {
        return false;
    }
    traceresults = bullettrace(player.origin + (0, 0, 20), player.origin + (0, 0, -20), 0, player);
    if (isdefined(traceresults[#"entity"])) {
        entity = traceresults[#"entity"];
        if (!function_db9eb027(entity)) {
            return false;
        }
    } else {
        return false;
    }
    return true;
}

// Namespace deployable/deployable
// Params 1, eflags: 0x6 linked
// Checksum 0x7d1253c, Offset: 0xd78
// Size: 0x6c
function private function_867664f6(player) {
    var_8a074131 = worldentnumber();
    groundent = player getgroundent();
    if (!isdefined(groundent)) {
        return false;
    }
    return var_8a074131 == groundent getentitynumber();
}

// Namespace deployable/deployable
// Params 2, eflags: 0x6 linked
// Checksum 0xd7c804ab, Offset: 0xdf0
// Size: 0x2fe
function private function_27476e09(deployable_weapon, *sethintstring) {
    var_ac12dd4b = level._deployable_weapons[sethintstring.statindex].var_1463c9a8;
    if (!isdefined(var_ac12dd4b)) {
        results = self function_242060b9(sethintstring);
    } else {
        results = [[ var_ac12dd4b ]](self);
    }
    assert(isdefined(results));
    assert(isdefined(results.isvalid));
    assert(isdefined(results.origin));
    assert(isdefined(results.angles));
    if (!isdefined(results.waterdepth)) {
        results.waterdepth = 0;
    }
    var_a98c3ea7 = 1;
    if (results.waterdepth > (isdefined(sethintstring.var_76127e14) ? sethintstring.var_76127e14 : 0)) {
        results.isvalid = 0;
    } else if ((isdefined(results.waterdepth) ? results.waterdepth : 0) > 0 && isdefined(results.waterbottom)) {
        results.origin = results.waterbottom;
    }
    results.isvalid = results.isvalid && !oob::chr_party(results.origin);
    results.isvalid = results.isvalid && !function_89d64a2c(results.origin);
    results.isvalid = results.isvalid && !function_54267517(results.origin);
    results.isvalid = results.isvalid && function_db9eb027(results.hitent);
    if (level.var_1765ad79 && !isdefined(results.hitent)) {
        results.isvalid = results.isvalid && function_867664f6(self);
    }
    if (!results.isvalid && function_831707e8(self, sethintstring)) {
        results.origin = self.origin;
        results.angles = self.angles;
        results.isvalid = 1;
    }
    return results;
}

// Namespace deployable/deployable
// Params 4, eflags: 0x6 linked
// Checksum 0x4e6ab439, Offset: 0x10f8
// Size: 0x68
function private function_d6ac81c7(deployable_weapon, player, origin, angles) {
    var_9f2c21ea = level._deployable_weapons[deployable_weapon.statindex].var_9f2c21ea;
    if (!isdefined(var_9f2c21ea)) {
        return 1;
    }
    return [[ var_9f2c21ea ]](origin, angles, player);
}

// Namespace deployable/deployable
// Params 1, eflags: 0x6 linked
// Checksum 0x290dccbe, Offset: 0x1168
// Size: 0x66
function private function_6654310c(weapon) {
    player = self;
    if (level.time == player.var_3abd9b54) {
        return;
    }
    player.var_3abd9b54 = level.time;
    var_7a3f3edf = player function_b3d993e9(weapon);
}

// Namespace deployable/deployable
// Params 0, eflags: 0x2 linked
// Checksum 0xa560be3, Offset: 0x11d8
// Size: 0xc
function location_valid() {
    return isdefined(self.var_b8878ba9);
}

// Namespace deployable/deployable
// Params 1, eflags: 0x2 linked
// Checksum 0xf5c3ea4a, Offset: 0x11f0
// Size: 0x5e
function function_dd266e08(owner) {
    if (isdefined(owner) && isdefined(owner.var_b8878ba9)) {
        self.origin = owner.var_b8878ba9;
    }
    if (isdefined(owner) && isdefined(owner.var_ddc03e10)) {
        self.angles = owner.var_ddc03e10;
    }
}

// Namespace deployable/deployable
// Params 0, eflags: 0x2 linked
// Checksum 0x65333180, Offset: 0x1258
// Size: 0x4c
function on_player_spawned() {
    self.var_3abd9b54 = 0;
    self clientfield::set_to_player("gameplay_allows_deploy", 1);
    self callback::on_weapon_change(&on_weapon_change);
}

// Namespace deployable/deployable
// Params 0, eflags: 0x6 linked
// Checksum 0x5d701c88, Offset: 0x12b0
// Size: 0x7c
function private function_aab01e08() {
    weapon = undefined;
    if (self isusingoffhand()) {
        weapon = self getcurrentoffhand();
    } else {
        weapon = self getcurrentweapon();
    }
    if (!weapon.deployable || weapon.var_e0d42861) {
        return undefined;
    }
    return weapon;
}

// Namespace deployable/deployable
// Params 0, eflags: 0x6 linked
// Checksum 0xdcb584fd, Offset: 0x1338
// Size: 0x1ae
function private function_f0adf9c() {
    self notify("3fe9db6e886fbc87");
    self endon("3fe9db6e886fbc87");
    player = self;
    player endon(#"death", #"disconnect");
    deployable_weapon = player function_aab01e08();
    if (!isdefined(deployable_weapon)) {
        if (is_true(player.var_c702a701)) {
            player.var_c702a701 = undefined;
            player thread function_765a2e96();
        }
        return;
    }
    while (true) {
        waitframe(1);
        var_7a3f3edf = player function_b3d993e9(deployable_weapon);
        if (var_7a3f3edf) {
            if (isdefined(level._deployable_weapons[deployable_weapon.statindex].placehintstr)) {
                player sethintstring(level._deployable_weapons[deployable_weapon.statindex].placehintstr);
                player.var_c702a701 = 1;
            }
            continue;
        }
        if (isdefined(level._deployable_weapons[deployable_weapon.statindex].var_a39cb3db)) {
            player sethintstring(level._deployable_weapons[deployable_weapon.statindex].var_a39cb3db);
            player.var_c702a701 = 1;
        }
    }
}

// Namespace deployable/deployable
// Params 0, eflags: 0x2 linked
// Checksum 0x780aa20, Offset: 0x14f0
// Size: 0x4c
function function_765a2e96() {
    self endon(#"death", #"disconnect");
    wait(1.5);
    self sethintstring("");
}

// Namespace deployable/deployable
// Params 1, eflags: 0x2 linked
// Checksum 0x7a6ccbc6, Offset: 0x1548
// Size: 0x8e
function function_db9eb027(entity) {
    if (!isdefined(entity)) {
        return true;
    }
    if (isvehicle(entity) || isai(entity) || entity ismovingplatform()) {
        return false;
    }
    if (isdefined(entity.weapon) || isdefined(entity.killstreakid)) {
        return false;
    }
    return true;
}

// Namespace deployable/deployable
// Params 5, eflags: 0x0
// Checksum 0xcb1e789f, Offset: 0x15e0
// Size: 0x9a2
function function_54d27855(client_pos, client_angles, var_36baa3f1, previs_weapon, ignore_entity) {
    results = spawnstruct();
    var_5130f5dd = 0;
    var_caa96e8a = 0;
    var_a7bfb = 0;
    var_e76d3149 = 0;
    var_68e91c5c = 0;
    var_ae7d780d = 0;
    var_f94d59f8 = 2;
    var_5adff8ce = (0, 0, 0);
    var_4c59d56 = (0, 0, 0);
    forward = anglestoforward(client_angles);
    var_6c16750a = previs_weapon.var_f7e67f28;
    if (previs_weapon.var_9111ccc0 && previs_weapon.var_5ac2e7a4 > previs_weapon.var_f7e67f28) {
        var_6c16750a = previs_weapon.var_5ac2e7a4;
    }
    trace_distance = var_6c16750a / abs(cos(client_angles[0]));
    forward_vector = vectorscale(forward, trace_distance);
    trace_start = var_36baa3f1;
    trace_result = bullettrace(trace_start, trace_start + forward_vector, 0, ignore_entity);
    hit_location = trace_start + forward_vector;
    hit_normal = (0, 0, 1);
    hit_distance = 10;
    var_def28dc4 = previs_weapon.var_9111ccc0;
    hitent = undefined;
    var_d22ba639 = 0;
    if (trace_result[#"fraction"] < 1) {
        hit_location = trace_result[#"position"];
        hit_normal = trace_result[#"normal"];
        var_6165e0de = hit_normal[2] < 0.7;
        hit_distance = trace_result[#"fraction"] * trace_distance;
        if (distance2dsquared(client_pos, hit_location) < sqr(previs_weapon.var_f7e67f28)) {
            var_caa96e8a = 1;
        }
        height_offset = hit_location[2] - client_pos[2];
        if (var_def28dc4 && var_6165e0de) {
            if (height_offset <= previs_weapon.var_ab300840 && height_offset >= previs_weapon.var_849af6b4) {
                var_a7bfb = 1;
            }
            var_e76d3149 = 1;
            wall_dot = vectordot(forward * -1, hit_normal);
            if (wall_dot > cos(previs_weapon.var_c4aae0fa)) {
                var_68e91c5c = 1;
            }
            if (!var_68e91c5c) {
                var_d22ba639 = 1;
            }
            hitent = trace_result[#"entity"];
        } else {
            if (height_offset <= previs_weapon.var_227c90e1 && height_offset >= previs_weapon.var_849af6b4) {
                var_a7bfb = 1;
            }
            out_of_range = hit_distance > previs_weapon.var_f7e67f28;
            if (out_of_range) {
                var_d22ba639 = 1;
            }
            if (!var_def28dc4 && var_6165e0de) {
                hit_location = client_pos + (forward_vector[0], forward_vector[1], 0) * trace_result[#"fraction"];
                hit_normal = (0, 0, 1);
                var_ae7d780d = 1;
                var_d22ba639 = 0;
            }
        }
    } else {
        var_d22ba639 = 1;
    }
    water_depth = 0;
    water_bottom = hit_location;
    if (var_d22ba639) {
        forward2d = anglestoforward((0, client_angles[1], 0));
        var_f7e67f28 = previs_weapon.var_f7e67f28;
        var_75e7a61 = client_pos + (0, 0, previs_weapon.var_227c90e1);
        var_1a606e14 = var_75e7a61 + forward2d * var_f7e67f28;
        var_b6085963 = bullettrace(var_75e7a61, var_1a606e14, 0, ignore_entity);
        if (var_b6085963[#"fraction"] > 0) {
            var_f7e67f28 = previs_weapon.var_f7e67f28 * var_b6085963[#"fraction"] - var_f94d59f8;
            ground_trace_start = client_pos + forward2d * var_f7e67f28 + (0, 0, previs_weapon.var_227c90e1);
            ground_trace_end = ground_trace_start - (0, 0, previs_weapon.var_227c90e1 - previs_weapon.var_849af6b4);
            var_4bc118b9 = groundtrace(ground_trace_start, ground_trace_end, 0, ignore_entity);
            hitent = var_4bc118b9[#"entity"];
            if (var_4bc118b9[#"fraction"] > 0.01 && var_4bc118b9[#"fraction"] < 1 && var_4bc118b9[#"normal"][2] > 0.9) {
                hit_location = var_4bc118b9[#"position"];
                hit_normal = var_4bc118b9[#"normal"];
                hit_distance = var_4bc118b9[#"fraction"] * var_f7e67f28;
                var_caa96e8a = 1;
                var_a7bfb = 1;
                if (isdefined(var_4bc118b9[#"waterdepth"])) {
                    water_depth = var_4bc118b9[#"waterdepth"];
                    water_bottom = var_4bc118b9[#"waterbottom"];
                }
            }
        }
    }
    if (isdefined(hit_location)) {
        var_5adff8ce = hit_location;
        if (hit_normal[2] < 0.7) {
            var_89135834 = angleclamp180(vectortoangles(hit_normal)[0] + 90);
            var_503578d3 = vectortoangles(hit_normal)[1];
            var_e8a49b1 = 0;
        } else {
            hit_angles = vectortoangles(hit_normal);
            var_503578d3 = client_angles[1];
            pitch = angleclamp180(hit_angles[0] + 90);
            var_18f32ba4 = absangleclamp360(hit_angles[1] - client_angles[1]);
            var_aba68694 = cos(var_18f32ba4);
            var_c59a47b6 = sin(var_18f32ba4) * -1;
            var_89135834 = pitch * var_aba68694;
            var_e8a49b1 = pitch * var_c59a47b6;
        }
        var_4c59d56 = (var_89135834, var_503578d3, var_e8a49b1);
    }
    var_5130f5dd = var_caa96e8a && var_a7bfb && (!var_e76d3149 || var_68e91c5c) && !var_ae7d780d;
    if (var_5130f5dd && !is_true(previs_weapon.var_33d50507)) {
        var_e3c2e9c6 = var_5adff8ce + (0, 0, 1) * 30;
        var_cc9ea9b = physicstrace(var_36baa3f1, var_e3c2e9c6, (-16, -16, -16), (16, 16, 16), ignore_entity);
        var_5130f5dd = var_cc9ea9b[#"fraction"] == 1;
    }
    results.isvalid = var_5130f5dd;
    results.origin = var_5adff8ce;
    results.angles = var_4c59d56;
    results.hitent = hitent;
    results.waterdepth = water_depth;
    results.waterbottom = water_bottom;
    return results;
}

// Namespace deployable/deployable
// Params 1, eflags: 0x6 linked
// Checksum 0x4fca9e37, Offset: 0x1f90
// Size: 0x5c
function private on_weapon_change(*params) {
    self setplacementhint(1);
    self clientfield::set_to_player("gameplay_allows_deploy", 1);
    self thread function_f0adf9c();
}

// Namespace deployable/deployable
// Params 0, eflags: 0x2 linked
// Checksum 0xf56ddb53, Offset: 0x1ff8
// Size: 0x80
function function_670cd4a3() {
    self endon(#"death");
    self.var_19fde5b7 = [];
    while (true) {
        waitresult = self waittill(#"grenade_stuck");
        if (isdefined(waitresult.projectile)) {
            array::add(self.var_19fde5b7, waitresult.projectile);
        }
    }
}

// Namespace deployable/deployable
// Params 0, eflags: 0x2 linked
// Checksum 0xdb915eed, Offset: 0x2080
// Size: 0xb8
function function_34d37476() {
    if (!isdefined(self.var_19fde5b7)) {
        return;
    }
    foreach (var_221be278 in self.var_19fde5b7) {
        if (!isdefined(var_221be278)) {
            continue;
        }
        var_221be278 dodamage(500, self.origin, undefined, undefined, undefined, "MOD_EXPLOSIVE");
    }
}

