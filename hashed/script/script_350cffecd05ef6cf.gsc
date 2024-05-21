// Atian COD Tools GSC CW decompiler test
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_3bbf85ab4cb9f3c2;
#using script_3faf478d5b0850fe;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_6b6510e124bad778;
#using script_1ee011cd0961afd7;
#using script_17dcb1172e441bf6;
#using script_f38dc50f0e82277;
#using script_68cdf0ca5df5e;
#using script_2474a362752098d2;
#using script_26187f7b449f7b92;
#using script_1d730eca5a7f1fa8;
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

#namespace namespace_1c2a96f9;

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 0, eflags: 0x2 linked
// Checksum 0x1180ac6c, Offset: 0x4a8
// Size: 0x5cc
function init() {
    level.doa.var_fe92efd8 = array({#model:#"hash_273d308f6bb71fae", #var_3831681e:#"hash_6e744af240c402ac", #var_c8386627:1, #fx:"wild_portal_radial_burst", #sfx:"evt_doa_teleporter_wilds_burst", #var_af104f33:2, #var_d75b5b21:(0, 0, 0), #announce:3}, {#model:#"hash_42b8ffbfd71df167", #var_3831681e:#"hash_2b7c424b5ef0e2b0", #var_c8386627:2, #fx:"wild_portal_radial_burst", #sfx:"evt_doa_teleporter_wilds_burst", #var_af104f33:4, #var_d75b5b21:(0, 0, 0), #announce:4}, {#model:#"hash_1e339b8f1e89db22", #var_3831681e:#"hash_44b52314f673fa69", #var_c8386627:8, #fx:"wild_portal_radial_burst", #sfx:"evt_doa_teleporter_wilds_burst", #var_af104f33:5, #var_d75b5b21:(0, 0, 0), #announce:2}, {#model:#"hash_8f3b696b6667a76", #var_3831681e:#"hash_5f6693af9870068a", #var_c8386627:4, #fx:"wild_portal_radial_burst", #sfx:"evt_doa_teleporter_wilds_burst", #var_af104f33:3, #var_d75b5b21:(-70, 80, 0), #announce:5}, {#model:#"hash_6cba5659239df9f7", #var_3831681e:#"hash_76b491b6efa81601", #var_c8386627:16, #fx:"wild_portal_radial_burst", #sfx:"evt_doa_teleporter_wilds_burst", #var_af104f33:6, #var_d75b5b21:(-70, 80, 0), #announce:6}, {#model:#"hash_d25c44d026e4514", #var_3831681e:#"hash_6a4770856aa98d12", #var_c8386627:32, #fx:"wild_portal_radial_burst", #sfx:"evt_doa_teleporter_wilds_burst", #var_af104f33:7, #var_d75b5b21:(0, 0, 0), #announce:7});
    objective_add(14 + 0, "invisible", (0, 0, 0), #"hash_793a72598916f307");
    objective_add(14 + 1, "invisible", (0, 0, 0), #"hash_793a72598916f307");
    objective_add(14 + 2, "invisible", (0, 0, 0), #"hash_793a72598916f307");
    objective_add(14 + 3, "invisible", (0, 0, 0), #"hash_793a72598916f307");
    objective_add(14 + 4, "invisible", (0, 0, 0), #"hash_793a72598916f307");
    objective_add(14 + 5, "invisible", (0, 0, 0), #"hash_793a72598916f307");
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 0, eflags: 0x2 linked
// Checksum 0xd307e012, Offset: 0xa80
// Size: 0x6c
function main() {
    level.doa.var_fa624022 = array(1, 2, 4, 8, 16, 32);
    level.doa.var_36d8eb11 = undefined;
    level clientfield::set("banner_eventplayer", 0);
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 0, eflags: 0x2 linked
// Checksum 0x5a82113c, Offset: 0xaf8
// Size: 0xe4
function function_1324dc3b() {
    if (isdefined(level.doa.var_36d8eb11)) {
        fate = level.doa.var_36d8eb11;
    } else if (level.doa.var_fa624022.size) {
        fate = level.doa.var_fa624022[randomint(level.doa.var_fa624022.size)];
        arrayremovevalue(level.doa.var_fa624022, fate);
    }
    if (isdefined(fate)) {
        level.doa.var_36d8eb11 = fate;
        return function_e8822b3b(fate);
    }
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 1, eflags: 0x2 linked
// Checksum 0xed6e5004, Offset: 0xbe8
// Size: 0x38
function function_85da1646(var_c8386627) {
    level.doa.var_fa624022[level.doa.var_fa624022.size] = var_c8386627;
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 1, eflags: 0x2 linked
// Checksum 0x3905772b, Offset: 0xc28
// Size: 0x9e
function function_e8822b3b(var_c8386627) {
    foreach (fate in level.doa.var_fe92efd8) {
        if (fate.var_c8386627 == var_c8386627) {
            return fate;
        }
    }
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 1, eflags: 0x2 linked
// Checksum 0xcfa2a040, Offset: 0xcd0
// Size: 0x48
function function_afe89b8c(var_c8386627) {
    assert(isdefined(self.doa.var_484cc88b));
    return self.doa.var_484cc88b & var_c8386627;
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 1, eflags: 0x2 linked
// Checksum 0xd6bea709, Offset: 0xd20
// Size: 0x1a4
function function_edfc9233(var_484cc88b = 0) {
    delay = 0;
    if (var_484cc88b & 1) {
        self function_15a789ab(1, delay, 0);
        delay += 0.5;
    }
    if (var_484cc88b & 2) {
        self function_15a789ab(2, delay, 0);
        delay += 0.5;
    }
    if (var_484cc88b & 4) {
        self function_15a789ab(4, delay, 0);
        delay += 0.5;
    }
    if (var_484cc88b & 8) {
        self function_15a789ab(8, delay, 0);
        delay += 0.5;
    }
    if (var_484cc88b & 16) {
        self function_15a789ab(16, delay, 0);
        delay += 0.5;
    }
    if (var_484cc88b & 32) {
        self function_15a789ab(32, delay, 0);
        delay += 0.5;
    }
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 3, eflags: 0x2 linked
// Checksum 0x1444019c, Offset: 0xed0
// Size: 0x2ac
function function_15a789ab(var_c8386627, delay = 0, banner = 1) {
    if (delay) {
        wait(delay);
    }
    assert(isdefined(self.doa.var_484cc88b));
    if (var_c8386627 == 0) {
        if (self function_9e59136f()) {
            self.doa.var_ed8fde10 = "zombietron_lmg";
            self namespace_41cb996::function_8b7acf56();
        }
        if (self function_d17f9bcb()) {
            self.doa.var_e5805edb = 1;
            self setmovespeedscale(self.doa.var_e5805edb);
            self namespace_83eb6304::turnofffx("fast_feet");
        }
        if (self function_d5b51f1e() && isdefined(self.var_10948967)) {
            self.var_10948967 namespace_4ff32993::function_a7be9625();
            self.var_10948967 = undefined;
        }
        if (self function_d438e371()) {
        }
        if (self function_b01c3b20()) {
            self.doa.var_96ca2395 = 1;
        }
        self.doa.var_484cc88b = 0;
        namespace_1e25ad94::debugmsg("Player's fates have been striped");
        self thread namespace_6e90e490::function_47e11416(1);
        return;
    }
    if (!function_afe89b8c(var_c8386627)) {
        self thread namespace_6e90e490::function_47e11416(4);
        level thread function_86515c3b(self, function_e8822b3b(var_c8386627), banner);
        namespace_1e25ad94::debugmsg("Player awarded fate:" + var_c8386627);
        return;
    }
    namespace_1e25ad94::debugmsg("Player already fated with this fate:" + var_c8386627);
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 3, eflags: 0x2 linked
// Checksum 0x9410643e, Offset: 0x1188
// Size: 0x12e
function function_42b0778(var_4198fa33, player, roj) {
    player endon(#"disconnect");
    fate = var_4198fa33.data;
    var_4198fa33 notsolid();
    var_4198fa33 ghost();
    if (var_4198fa33.context === 2) {
        namespace_491fa2b2::function_df55eb9d(2, 7, var_4198fa33);
        roj = undefined;
    }
    function_86515c3b(player, fate);
    if (isdefined(roj)) {
        if (roj == 0) {
            player.doa.rof = fate.var_c8386627;
            player.doa.var_e448d81 = undefined;
            return;
        }
        player.doa.roj = fate.var_c8386627;
        player.doa.var_cb8b16a = undefined;
    }
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 3, eflags: 0x2 linked
// Checksum 0x82e96675, Offset: 0x12c0
// Size: 0x70a
function function_86515c3b(player, var_191ca105, banner = 1) {
    player endon(#"disconnect");
    player namespace_83eb6304::function_3ecfde67("lightningStrike");
    player namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
    if (!isdefined(player.entnum)) {
        player.entnum = player getentitynumber();
    }
    if (is_true(banner)) {
        var_6b186658 = var_191ca105.var_af104f33 + (player.entnum << 4);
        level clientfield::set("banner_eventplayer", var_6b186658);
        level thread namespace_9fc66ac::announce(var_191ca105.announce, 1 << player.entnum);
    }
    player namespace_d2efac9a::function_9d3fe107();
    var_f1bda869 = namespace_ec06fe4a::spawnmodel(player.origin + (0, 0, 1500), var_191ca105.var_3831681e);
    if (isdefined(var_f1bda869)) {
        var_f1bda869.angles = var_191ca105.var_d75b5b21;
        var_f1bda869 thread namespace_dfc652ee::function_7e4e4b8a(player, 0);
        var_f1bda869 waittilltimeout(3.5, #"bombsaway");
        var_f1bda869 delete();
        player namespace_83eb6304::function_3ecfde67(var_191ca105.fx);
        player namespace_e32bb68::function_3a59ec34(var_191ca105.sfx);
    }
    player.doa.var_484cc88b |= var_191ca105.var_c8386627;
    var_9a24b67c = level.var_73ffa220[player.name];
    assert(isdefined(var_9a24b67c), "<unknown string>");
    if (isdefined(var_9a24b67c)) {
        var_9a24b67c.var_484cc88b = player.doa.var_484cc88b;
    }
    switch (var_191ca105.var_c8386627) {
    case 1:
        player.doa.var_ed8fde10 = "zombietron_deathmachine";
        player.doa.var_d6b75dff = 1;
        player namespace_41cb996::function_8b7acf56();
        break;
    case 2:
        if (player.doa.score.var_194c59ae < 2) {
            player.doa.score.var_194c59ae = 2;
        }
        break;
    case 4:
        weaponlevel = player.doa.weaponlevel;
        player.doa.var_9c7d56c1 = [[ player.doa.weaponpack ]]->function_91c18b19(weaponlevel);
        weaponlevel = math::clamp(player.doa.weaponlevel + level.doa.var_6c58d51, player.doa.weaponlevel, 2);
        player.doa.var_4eda72ee = [[ player.doa.weaponpack ]]->function_91c18b19(weaponlevel);
        player.var_10948967 = player namespace_4ff32993::function_f69400ca("zombietron_fated_chicken", 1, 1.2);
        break;
    case 8:
        player.doa.var_e5805edb = 1.5;
        player setmovespeedscale(player.doa.var_e5805edb);
        player namespace_83eb6304::function_3ecfde67("fast_feet");
        break;
    case 32:
        player.doa.var_96ca2395 = 5;
        if (isdefined(level.doa.var_16a35e94)) {
            player thread [[ level.doa.var_16a35e94 ]]();
        }
        break;
    case 16:
        player.doa.score.bombs = int(max(player.doa.score.bombs, 2));
        roll = randomint(30);
        if (roll < 10) {
            level namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_barrel"), player.origin, undefined, undefined, 1, undefined, undefined, undefined, player);
        } else if (roll < 10) {
            level namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_boxing_glove"), player.origin, undefined, undefined, 1, undefined, undefined, undefined, player);
        } else {
            level namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_sawblade"), player.origin, undefined, undefined, 1, undefined, undefined, undefined, player);
        }
        player thread namespace_b754744b::function_b784c6bd(46);
        break;
    default:
        assert(0, "<unknown string>");
        break;
    }
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 0, eflags: 0x2 linked
// Checksum 0x2edad9a3, Offset: 0x19d8
// Size: 0x68
function function_9e59136f() {
    if (!isplayer(self)) {
        return 0;
    }
    assert(isdefined(self.doa.var_484cc88b), "<unknown string>");
    return self.doa.var_484cc88b & 1;
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 0, eflags: 0x2 linked
// Checksum 0xc148100a, Offset: 0x1a48
// Size: 0x68
function function_d17f9bcb() {
    if (!isplayer(self)) {
        return 0;
    }
    assert(isdefined(self.doa.var_484cc88b), "<unknown string>");
    return self.doa.var_484cc88b & 8;
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 0, eflags: 0x2 linked
// Checksum 0x859c935c, Offset: 0x1ab8
// Size: 0x68
function function_d5b51f1e() {
    if (!isplayer(self)) {
        return 0;
    }
    assert(isdefined(self.doa.var_484cc88b), "<unknown string>");
    return self.doa.var_484cc88b & 4;
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 0, eflags: 0x2 linked
// Checksum 0x86ab32bf, Offset: 0x1b28
// Size: 0x68
function function_d438e371() {
    if (!isplayer(self)) {
        return 0;
    }
    assert(isdefined(self.doa.var_484cc88b), "<unknown string>");
    return self.doa.var_484cc88b & 2;
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 0, eflags: 0x2 linked
// Checksum 0x887f3aa7, Offset: 0x1b98
// Size: 0x68
function function_8a19ece() {
    if (!isplayer(self)) {
        return 0;
    }
    assert(isdefined(self.doa.var_484cc88b), "<unknown string>");
    return self.doa.var_484cc88b & 16;
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 0, eflags: 0x2 linked
// Checksum 0xbf803589, Offset: 0x1c08
// Size: 0x68
function function_b01c3b20() {
    if (!isplayer(self)) {
        return 0;
    }
    assert(isdefined(self.doa.var_484cc88b), "<unknown string>");
    return self.doa.var_484cc88b & 32;
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 1, eflags: 0x0
// Checksum 0x6f46bfa6, Offset: 0x1c78
// Size: 0x2fc
function function_42755584(delay = 0) {
    var_cc43ccdc = [];
    if (self function_9e59136f() == 0) {
        if (!isdefined(var_cc43ccdc)) {
            var_cc43ccdc = [];
        } else if (!isarray(var_cc43ccdc)) {
            var_cc43ccdc = array(var_cc43ccdc);
        }
        var_cc43ccdc[var_cc43ccdc.size] = 1;
    }
    if (self function_d17f9bcb() == 0) {
        if (!isdefined(var_cc43ccdc)) {
            var_cc43ccdc = [];
        } else if (!isarray(var_cc43ccdc)) {
            var_cc43ccdc = array(var_cc43ccdc);
        }
        var_cc43ccdc[var_cc43ccdc.size] = 8;
    }
    if (self function_d5b51f1e() == 0) {
        if (!isdefined(var_cc43ccdc)) {
            var_cc43ccdc = [];
        } else if (!isarray(var_cc43ccdc)) {
            var_cc43ccdc = array(var_cc43ccdc);
        }
        var_cc43ccdc[var_cc43ccdc.size] = 4;
    }
    if (self function_d438e371() == 0) {
        if (!isdefined(var_cc43ccdc)) {
            var_cc43ccdc = [];
        } else if (!isarray(var_cc43ccdc)) {
            var_cc43ccdc = array(var_cc43ccdc);
        }
        var_cc43ccdc[var_cc43ccdc.size] = 2;
    }
    if (self function_b01c3b20() == 0) {
        if (!isdefined(var_cc43ccdc)) {
            var_cc43ccdc = [];
        } else if (!isarray(var_cc43ccdc)) {
            var_cc43ccdc = array(var_cc43ccdc);
        }
        var_cc43ccdc[var_cc43ccdc.size] = 32;
    }
    if (self function_8a19ece() == 0) {
        if (!isdefined(var_cc43ccdc)) {
            var_cc43ccdc = [];
        } else if (!isarray(var_cc43ccdc)) {
            var_cc43ccdc = array(var_cc43ccdc);
        }
        var_cc43ccdc[var_cc43ccdc.size] = 16;
    }
    self thread function_15a789ab(var_cc43ccdc[randomint(var_cc43ccdc.size)], delay);
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 1, eflags: 0x2 linked
// Checksum 0x8a390175, Offset: 0x1f80
// Size: 0x4a
function function_4808b985(time) {
    if (!self function_d438e371()) {
        return time;
    }
    return int(time * 1.8);
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 1, eflags: 0x2 linked
// Checksum 0xc31b02f5, Offset: 0x1fd8
// Size: 0x4a
function function_2ce61fb9(time) {
    if (!self function_8a19ece()) {
        return time;
    }
    return int(time * 1.6);
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 0, eflags: 0x2 linked
// Checksum 0xe3f07ee9, Offset: 0x2030
// Size: 0xb9c
function function_11463552() {
    level endon(#"hash_7626a6770055d63c");
    self notify("1ed5031487f7073d");
    self endon("1ed5031487f7073d");
    level clientfield::set("banner_eventplayer", 0);
    var_637c4df = getent("room_of_fate_shaft_trigger", "targetname");
    result = var_637c4df waittill(#"trigger");
    foreach (player in getplayers()) {
        if (isdefined(player.doa.vehicle)) {
            player notify(#"hash_279998c5df86c04d");
            continue;
        }
        vehicle = player getvehicleoccupied();
        if (isdefined(vehicle)) {
            vehicle usevehicle(player, 0);
        }
    }
    util::wait_network_frame();
    foreach (player in getplayers()) {
        player thread namespace_7f5aeb59::turnplayershieldon(0);
        if (player === result.activator) {
            continue;
        }
        if (!isalive(player) || is_true(player.doa.respawning)) {
            player namespace_7f5aeb59::function_513831e1();
        }
        player setorigin(var_637c4df.origin);
    }
    objective_setstate(12, "invisible");
    level util::set_lighting_state(3, 0);
    var_b01b0395 = getent("room_of_fate_trigger", "targetname");
    result = var_b01b0395 waittill(#"trigger");
    level flag::set("doa_rof_visited");
    var_7f432780 = array::randomize(struct::get_array("room_of_fate_origin", "targetname"));
    var_fe92efd8 = array::randomize(level.doa.var_fe92efd8);
    wait(1);
    level namespace_a6ddb172::function_7a0e5387(44);
    wait(2);
    level thread namespace_9fc66ac::announce(71);
    wait(2);
    wait(4);
    namespace_1e25ad94::debugmsg("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ F A T E  R O C K S $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
    if (is_true(level.doa.var_2e2d85d4)) {
        level namespace_a6ddb172::function_7a0e5387(47);
    } else if (level.doa.var_4ebe1b74 > 0) {
        level namespace_a6ddb172::function_7a0e5387(48);
    }
    for (i = 0; i < var_7f432780.size; i++) {
        assert(i < var_fe92efd8.size);
        fate = var_fe92efd8[i];
        model = "zombietron_fate_rock_default";
        if (is_true(level.doa.var_2e2d85d4)) {
            model = fate.model;
        } else if (level.doa.var_4ebe1b74 > 0) {
            choose = randomint(100 - i * 25) < 25;
            if (choose) {
                model = fate.model;
                level.doa.var_4ebe1b74 = 0;
            }
        }
        var_ea5e17f4 = namespace_ec06fe4a::spawnmodel(var_7f432780[i].origin + (0, 0, 1500), model);
        if (isdefined(var_ea5e17f4)) {
            var_ea5e17f4 solid();
            var_ea5e17f4.data = fate;
            var_ea5e17f4.context = 1;
            var_ea5e17f4.dest = var_7f432780[i].origin;
            if (model == "zombietron_fate_rock_default") {
                var_ea5e17f4.angles = (0, randomint(180), 0);
            } else {
                var_ea5e17f4.angles = fate.var_d75b5b21 + (0, randomint(180), 0);
            }
            var_ea5e17f4.objectiveid = 14 + i;
            var_ea5e17f4 thread function_e4867f1d(fate);
            var_7f432780[i].model = var_ea5e17f4;
            objective_onentity(var_ea5e17f4.objectiveid, var_ea5e17f4);
            objective_setstate(var_ea5e17f4.objectiveid, "active");
            namespace_1e25ad94::debugmsg("$$$ ROCK " + i + " set to model: " + model + " and assigned to fate: " + fate.var_c8386627);
        }
    }
    /#
        mask = 0;
        for (i = 0; i < var_7f432780.size; i++) {
            var_5ab7bbf5 = var_7f432780[i].model.data.var_c8386627;
            assert((mask & var_5ab7bbf5) != var_5ab7bbf5, "<unknown string>");
            mask |= var_5ab7bbf5;
        }
    #/
    if (isdefined(level.doa.var_a5d58dd1)) {
        timeout = level.doa.var_a5d58dd1 * 1000 + gettime();
    } else {
        timeout = 45000 + gettime();
    }
    warning = timeout - 15000;
    lasttime = gettime();
    alldone = 0;
    level thread namespace_9fc66ac::announce(8);
    while (!alldone) {
        time = gettime();
        if (time > timeout) {
            break;
        }
        if (lasttime <= warning && time > warning) {
            level namespace_a6ddb172::function_7a0e5387(45);
            level thread namespace_9fc66ac::announce(11);
        }
        lasttime = time;
        wait(1);
        alldone = 1;
        foreach (player in namespace_7f5aeb59::function_23e1f90f()) {
            if (!isdefined(player.doa.rof)) {
                alldone = 0;
                break;
            }
        }
    }
    level notify(#"hash_60341577c9ac6277");
    for (i = 0; i < var_7f432780.size; i++) {
        objective_setstate(14 + i, "invisible");
        if (isdefined(var_7f432780[i].model.trigger)) {
            var_7f432780[i].model.trigger delete();
        }
        if (isdefined(var_7f432780[i].model)) {
            var_7f432780[i].model moveto(var_7f432780[i].model.origin + (0, 0, 1500), 1);
            var_7f432780[i].model waittill(#"movedone");
            if (isdefined(var_7f432780[i].model)) {
                var_7f432780[i].model delete();
            }
        }
    }
    level thread namespace_9fc66ac::announce(9);
    level notify(#"hash_7626a6770055d63c", {#banner:46});
    namespace_7f5aeb59::function_f8645db3(getdvarint(#"hash_3ee59243c26b309e", 1750) + getdvarint(#"hash_3ee59243c26b309e", 1250), getdvarint(#"hash_7c5b80d878427a83", 1000) + getdvarint(#"hash_6bf35a0be925bbac", 1000));
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 2, eflags: 0x2 linked
// Checksum 0xe5046ae3, Offset: 0x2bd8
// Size: 0x414
function function_e4867f1d(fate, roj = 0) {
    self endon(#"death");
    level endon(#"hash_60341577c9ac6277");
    self moveto(self.dest, 1);
    self thread namespace_ec06fe4a::function_d55f042c(level, "game_over");
    wait(0.9);
    self namespace_83eb6304::function_3ecfde67("fate_landing");
    self namespace_e32bb68::function_3a59ec34("zmb_hellhound_bolt");
    wait(1);
    trigger = namespace_ec06fe4a::spawntrigger("trigger_radius", self.dest + (0, 0, -72), 0, 80, 256);
    if (isdefined(trigger)) {
        self.trigger = trigger;
        trigger thread namespace_ec06fe4a::function_d55f042c(level, "game_over");
        while (true) {
            result = trigger waittill(#"trigger");
            player = result.activator;
            if (roj == 0) {
                if (isdefined(player.doa.rof)) {
                    continue;
                }
                if (isdefined(player.doa.var_e448d81)) {
                    continue;
                }
            } else {
                if (isdefined(player.doa.roj)) {
                    continue;
                }
                if (isdefined(player.doa.var_cb8b16a)) {
                    continue;
                }
            }
            var_ff6bef4b = is_true(level.doa.hardcoremode) ? 1 : 2;
            if (player function_e19c55bd() >= var_ff6bef4b) {
                var_6b186658 = 1 + (player.entnum << 4);
                level clientfield::set("banner_eventplayer", var_6b186658);
                player thread function_fe008f40();
                continue;
            }
            if (!player function_afe89b8c(fate.var_c8386627)) {
                self namespace_83eb6304::function_3ecfde67("lightningStrike");
                self namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
                break;
            }
        }
        if (roj == 0) {
            player.doa.var_e448d81 = 1;
        } else {
            player.doa.var_cb8b16a = 1;
        }
        self namespace_83eb6304::function_3ecfde67("fate_explo");
        objective_setstate(self.objectiveid, "invisible");
        level thread function_42b0778(self, player, roj);
        player giveachievement(#"doa_achievement_fated");
        return;
    }
    assert(0, "<unknown string>");
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 1, eflags: 0x2 linked
// Checksum 0x4e445351, Offset: 0x2ff8
// Size: 0x74
function function_fe008f40(time = 5) {
    self endon(#"disconnect");
    wait(time);
    var_6b186658 = 0 + (self.entnum << 4);
    level clientfield::set("banner_eventplayer", var_6b186658);
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 0, eflags: 0x2 linked
// Checksum 0x478c2f55, Offset: 0x3078
// Size: 0xa6
function function_e19c55bd() {
    var_9c6b83ad = 0;
    if (self function_9e59136f()) {
        var_9c6b83ad++;
    }
    if (self function_d17f9bcb()) {
        var_9c6b83ad++;
    }
    if (self function_d5b51f1e()) {
        var_9c6b83ad++;
    }
    if (self function_d438e371()) {
        var_9c6b83ad++;
    }
    if (self function_8a19ece()) {
        var_9c6b83ad++;
    }
    if (self function_b01c3b20()) {
        var_9c6b83ad++;
    }
    return var_9c6b83ad;
}

// Namespace namespace_1c2a96f9/namespace_1c2a96f9
// Params 1, eflags: 0x2 linked
// Checksum 0xb9b818f7, Offset: 0x3128
// Size: 0x654
function function_41d66855(var_419d3eb7 = 0) {
    level endon(#"game_over");
    self notify("684577d104992a1e");
    self endon("684577d104992a1e");
    level util::set_lighting_state(3, 0);
    level clientfield::set("banner_eventplayer", 0);
    var_7f432780 = array::randomize(struct::get_array("room_of_fate_origin", "targetname"));
    var_fe92efd8 = array::randomize(level.doa.var_fe92efd8);
    wait(1);
    if (var_419d3eb7) {
        level namespace_a6ddb172::function_7a0e5387(55);
        namespace_7f5aeb59::function_f8645db3(getdvarint(#"hash_68ba61d82ed34879", 1000));
    } else {
        level namespace_a6ddb172::function_7a0e5387(56);
    }
    namespace_1e25ad94::debugmsg("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ F A T E  R O C K S $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
    for (i = 0; i < var_7f432780.size; i++) {
        assert(i < var_fe92efd8.size);
        fate = var_fe92efd8[i];
        model = var_419d3eb7 ? fate.var_3831681e : "zombietron_fate_rock_default";
        var_ea5e17f4 = namespace_ec06fe4a::spawnmodel(var_7f432780[i].origin + (0, 0, 1500), model);
        if (isdefined(var_ea5e17f4)) {
            var_ea5e17f4 solid();
            var_ea5e17f4.data = fate;
            var_ea5e17f4.context = 1;
            var_ea5e17f4.dest = var_7f432780[i].origin + (0, 0, 20);
            var_ea5e17f4.angles = fate.var_d75b5b21 + (0, randomint(180), 0);
            var_ea5e17f4.objectiveid = 14 + i;
            var_ea5e17f4 thread function_e4867f1d(fate, 1);
            var_7f432780[i].model = var_ea5e17f4;
            objective_onentity(var_ea5e17f4.objectiveid, var_ea5e17f4);
            objective_setstate(var_ea5e17f4.objectiveid, "active");
        }
    }
    if (isdefined(level.doa.var_a5d58dd1)) {
        timeout = level.doa.var_a5d58dd1 * 1000 + gettime();
    } else {
        timeout = 45000 + gettime();
    }
    warning = timeout - 15000;
    lasttime = gettime();
    alldone = 0;
    level thread namespace_9fc66ac::announce(8);
    while (!alldone) {
        time = gettime();
        if (time > timeout) {
            break;
        }
        if (lasttime <= warning && time > warning) {
            level namespace_a6ddb172::function_7a0e5387(45);
            level thread namespace_9fc66ac::announce(11);
        }
        lasttime = time;
        wait(1);
        alldone = 1;
        foreach (player in namespace_7f5aeb59::function_23e1f90f()) {
            if (!isdefined(player.doa.roj)) {
                alldone = 0;
                break;
            }
        }
    }
    level notify(#"hash_60341577c9ac6277");
    for (i = 0; i < var_7f432780.size; i++) {
        objective_setstate(14 + i, "invisible");
        if (isdefined(var_7f432780[i].model.trigger)) {
            var_7f432780[i].model.trigger delete();
        }
        if (isdefined(var_7f432780[i].model)) {
            var_7f432780[i].model moveto(var_7f432780[i].model.origin + (0, 0, 1500), 1);
            var_7f432780[i].model waittill(#"movedone");
            if (isdefined(var_7f432780[i].model)) {
                var_7f432780[i].model delete();
            }
        }
    }
    level thread namespace_9fc66ac::announce(9);
}

