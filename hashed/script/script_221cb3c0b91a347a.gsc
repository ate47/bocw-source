// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\zm\chopper_gunner.gsc;
#using script_5ed2585bb7f6211f;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using script_3751b21462a54a7d;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm\zm_tungsten.gsc;
#using script_5f261a5d57de5f7c;
#using script_4acbbbcdc7ef16a0;
#using scripts\zm\zm_tungsten_main_quest.gsc;
#using script_6fd04d6a5aedaec9;
#using scripts\zm_common\zm_fasttravel.gsc;
#using script_34ab99a4ca1a43d;
#using scripts\zm_common\objective_manager.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_sq.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using script_3411bb48d41bd3b;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\item_world.gsc;
#using script_18077945bb84ede7;
#using script_39794946bfda42fb;
#using script_2cb831533cab2794;
#using script_1cf46b33555422b7;
#using scripts\core_common\damagefeedback_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\healthoverlay.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_dbaeabbd;

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0xb6954f5c, Offset: 0xaa0
// Size: 0x57c
function init() {
    level.var_55fd9380 = luielemtext::register();
    level.var_252ba2b0 = zm_tungsten_grandprix::register();
    level.var_eda01097 = [];
    clientfield::register("world", "" + #"hash_112d67305f861fe", 28000, 3, "int");
    clientfield::register("scriptmover", "" + #"hash_3d5c2390c0768ed2", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_79077a9af52542c8", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_46bf4cc1eea0741a", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_6e68f1a9f11ee7a7", 28000, 1, "int");
    clientfield::register("toplayer", "" + #"hash_1c5f8a62c31e12a5", 28000, 1, "int");
    clientfield::register("world", "" + #"hash_1050257bf996b481", 28000, 4, "int");
    clientfield::register("scriptmover", "" + #"hash_696368486685bb5c", 28000, 1, "int");
    clientfield::register("toplayer", "" + #"hash_1a1bf38ae538a50d", 28000, 1, "int");
    clientfield::register("toplayer", "" + #"hash_2b3bf178344cc787", 28000, 1, "int");
    clientfield::register("actor", "" + #"hash_303ed2c4515453aa", 28000, 1, "counter");
    clientfield::register("vehicle", "" + #"hash_24b93fe5f3d174f8", 28000, 3, "int");
    clientfield::register("toplayer", "" + #"hash_355304ea91d4edc8", 28000, 1, "counter");
    clientfield::register("vehicle", "" + #"hash_6324044c00c5672d", 28000, 4, "int");
    clientfield::register("world", "" + #"hash_6c40bdc03cfa78bb", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_2777a21403131281", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_4a1dfb77dccf6587", 28000, 1, "counter");
    clientfield::register("scriptmover", "" + #"hash_3215084197667777", 28000, 1, "int");
    clientfield::register("world", "" + #"hash_665b17bb90845861", 28000, 2, "int");
    level thread function_c07c7ebc("hide");
    level thread function_619fdf5f();
    if (!zm_utility::is_ee_enabled()) {
        return;
    }
    function_b5f47b0c();
    /#
        level thread function_37597f29();
    #/
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0xc83e31af, Offset: 0x1028
// Size: 0x31c
function function_b5f47b0c() {
    level zm_sq::register(#"hash_592ce418976db238", #"step_1", #"hash_27600aac20c66933", &function_37f28f2b, &function_8abd620);
    level zm_sq::register(#"hash_592ce418976db238", #"step_2", #"hash_27600bac20c66ae6", &function_8f75cb6a, &function_edc7972d);
    level zm_sq::register(#"hash_57230432a83836b9", #"step_1", #"hash_73596b2d2d57ce04", &function_a7e59618, &function_e37354de);
    level zm_sq::register(#"hash_57230432a83836b9", #"step_2", #"hash_73596e2d2d57d31d", &function_882e782f, &function_1fe4ebed);
    level zm_sq::register(#"hash_7591c30825555587", #"step_1", #"hash_1c15011351799adb", &function_9a3e69a6, &function_14f1a95a);
    level zm_sq::register(#"hash_7591c30825555587", #"step_2", #"hash_1c15021351799c8e", &function_e86d6eef, &function_8cf6a181);
    level zm_sq::register(#"hash_7591c30825555587", #"step_3", #"hash_1c15031351799e41", &function_4d5c7397, &function_ce6f66c8);
    level zm_sq::start(#"hash_592ce418976db238");
    level zm_sq::start(#"hash_57230432a83836b9");
    level zm_sq::start(#"hash_7591c30825555587");
    level thread function_bd26a10a();
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0xc2941817, Offset: 0x1350
// Size: 0xc8
function function_2c55b43() {
    level endon(#"end_game");
    var_317ae7e0 = struct::get_array("side_quest_gp_zombies", "targetname");
    foreach (var_559521c0 in var_317ae7e0) {
        var_559521c0 thread function_1efd8a9b();
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0xec8f8145, Offset: 0x1420
// Size: 0x28c
function function_1efd8a9b() {
    level endon(#"end_game");
    if (self.script_noteworthy === "mimic") {
        self thread scene::play("aib_t9_zm_tungsten_grand_prix_mimic_dance");
    } else if (self.script_noteworthy === "mechz") {
        self thread scene::play("aib_t9_zm_tungsten_grand_prix_mechz_dance");
    } else if (self.script_noteworthy === "raz") {
        var_af0ec1a6 = randomintrangeinclusive(1, 7);
        str_state = "dance_" + var_af0ec1a6;
        self thread scene::play("aib_t9_zm_tungsten_grand_prix_raz_dance", str_state);
    } else if (self.script_noteworthy === "zombie") {
        var_af0ec1a6 = randomintrangeinclusive(1, 7);
        str_state = "dance_" + var_af0ec1a6;
        self thread scene::play("aib_t9_zm_tungsten_grand_prix_zombie_dance", str_state);
    } else if (self.script_noteworthy === "zombie_racing_start") {
        self thread scene::play("aib_t9_zm_tungsten_grand_prix_zombie_dance", "idle");
        level flag::wait_till(#"hash_31c8302c06f5b552");
        self thread scene::play("aib_t9_zm_tungsten_grand_prix_zombie_dance", "racing_start");
        self waittill(#"scenes_done");
        var_af0ec1a6 = randomintrangeinclusive(1, 7);
        str_state = "dance_" + var_af0ec1a6;
        self thread scene::play("aib_t9_zm_tungsten_grand_prix_zombie_dance", str_state);
    }
    level flag::wait_till(#"hash_4e003b0a25eefe02");
    self scene::delete_scene_spawned_ents();
    self scene::stop();
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x61da7494, Offset: 0x16b8
// Size: 0x72
function function_bd26a10a() {
    level.var_181464da = {};
    level.var_181464da.var_5c62b88d = [30, 30, 100];
    level.var_181464da.var_6d6e20de = level function_64969e00();
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x4c80329d, Offset: 0x1738
// Size: 0x264
function function_64969e00() {
    var_638ed7d7 = {#nodes:[], #start:struct::get("grand_prix_racetrack_start")};
    var_15a51335 = var_638ed7d7.start;
    /#
        var_e542c08f = undefined;
        var_e6336354 = "5c8e4ef37d460e7e";
    #/
    while (isdefined(var_15a51335)) {
        var_638ed7d7 function_c6fdb204(var_15a51335);
        /#
            var_e542c08f = var_e6336354;
            var_e6336354 = var_15a51335.target;
        #/
        var_15a51335 = var_15a51335 function_af68d4ba();
        if (var_15a51335.state === 2) {
            break;
        }
    }
    /#
        if (!isdefined(var_15a51335)) {
            str_msg = "wpn_semtex_alert" + (isdefined(var_e6336354) ? var_e6336354 : "<unknown string>") + "<unknown string>" + (isdefined(var_e542c08f) ? var_e542c08f : "<unknown string>");
            assertmsg(str_msg);
        }
    #/
    assert(var_15a51335 === var_638ed7d7.start, "<unknown string>");
    assert(var_638ed7d7.checkpoints.size > 1, "<unknown string>");
    foreach (var_15a51335 in var_638ed7d7.nodes) {
        var_15a51335 function_c2466e15();
        /#
            level thread function_ff9ac35b(var_15a51335);
        #/
    }
    return var_638ed7d7;
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0xfda40a3, Offset: 0x19a8
// Size: 0x28e
function function_c6fdb204(var_15a51335) {
    assert(var_15a51335.angles[2] == 0);
    var_15a51335.axis = {#right:anglestoright(var_15a51335.angles)};
    var_15a51335.width = isdefined(var_15a51335.width) ? var_15a51335.width : 100;
    var_15a51335.height = isdefined(var_15a51335.height) ? var_15a51335.height : -1;
    var_bfb91b7c = var_15a51335.axis.right * var_15a51335.width;
    var_15a51335.left = var_15a51335.origin - var_bfb91b7c;
    var_15a51335.right = var_15a51335.origin + var_bfb91b7c;
    assert(!isdefined(var_15a51335.index));
    var_15a51335.index = self.nodes.size;
    if (!isdefined(self.nodes)) {
        self.nodes = [];
    } else if (!isarray(self.nodes)) {
        self.nodes = array(self.nodes);
    }
    if (!isinarray(self.nodes, var_15a51335)) {
        self.nodes[self.nodes.size] = var_15a51335;
    }
    if (is_true(var_15a51335.checkpoint)) {
        if (!isdefined(self.checkpoints)) {
            self.checkpoints = [];
        } else if (!isarray(self.checkpoints)) {
            self.checkpoints = array(self.checkpoints);
        }
        if (!isinarray(self.checkpoints, var_15a51335)) {
            self.checkpoints[self.checkpoints.size] = var_15a51335;
        }
    }
    var_15a51335.state = 1;
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x9c5b96bd, Offset: 0x1c40
// Size: 0x7e
function function_af68d4ba() {
    assert(self.state >= 1);
    s_next = struct::get(self.target);
    if (isdefined(s_next)) {
        self.next = s_next;
        s_next.prev = self;
    }
    self.state = 2;
    return s_next;
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x17e610d6, Offset: 0x1cc8
// Size: 0x1c6
function function_c2466e15() {
    assert(self.state >= 2);
    v_right = self.axis.right;
    assert(isdefined(v_right));
    self.edge = {#left:(0, 0, 0), #right:(0, 0, 0)};
    s_next = self.next;
    if (isdefined(s_next)) {
        assert(s_next.state >= 2);
        var_665441ed = s_next.origin - self.origin;
        self.axis.up = vectornormalize(vectorcross(v_right, var_665441ed));
        self.edge.left = s_next.left - self.left;
        self.edge.right = s_next.right - self.right;
    } else {
        self.axis.up = (0, 0, 1);
    }
    self.axis.forward = vectorcross(self.axis.up, v_right);
    self.state = 3;
}

/#

    // Namespace namespace_dbaeabbd/namespace_dbaeabbd
    // Params 1, eflags: 0x0
    // Checksum 0x34385a45, Offset: 0x1e98
    // Size: 0x336
    function function_ff9ac35b(var_15a51335) {
        level endon(#"end_game");
        while (true) {
            if (getdvarint(#"hash_4f9bc320ac30703d", 0)) {
                v_color = is_true(var_15a51335.checkpoint) ? (1, 1, 0) : (1, 0, 0);
                line(var_15a51335.origin, var_15a51335.origin + var_15a51335.axis.forward * 20, v_color, 1, 1, 100);
                line(var_15a51335.origin, var_15a51335.origin + var_15a51335.axis.up * 20, v_color, 1, 1, 100);
                v_left = var_15a51335.left;
                v_right = var_15a51335.right;
                n_height = var_15a51335.height < 0 ? 100 : var_15a51335.height;
                var_f6da19f0 = var_15a51335.axis.up * n_height;
                var_b11226dc = var_15a51335.axis.up * -50;
                if (isdefined(var_15a51335.next)) {
                    line(v_left, var_15a51335.next.left, (1, 0, 0), 1, 1, 100);
                    line(v_right, var_15a51335.next.right, (1, 0, 0), 1, 1, 100);
                }
                line(v_left, v_right, v_color, 1, 1, 100);
                if (var_15a51335.height > 0) {
                    line(v_left + var_f6da19f0, v_right + var_f6da19f0, v_color, 1, 1, 100);
                }
                line(v_left + var_b11226dc, v_left + var_f6da19f0, v_color, 1, 1, 100);
                line(v_right + var_b11226dc, v_right + var_f6da19f0, v_color, 1, 1, 100);
                line(v_left + var_b11226dc, v_left + var_b11226dc, v_color, 1, 1, 100);
            }
            waitframe(100);
        }
    }

#/

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0xeb62b542, Offset: 0x21d8
// Size: 0xe8
function function_5d97ec11(v_point) {
    var_74de1ad0 = v_point - self.left;
    var_d47effbe = v_point - self.right;
    var_af5e30e8 = vectordot(vectorcross(var_74de1ad0, self.edge.left), self.axis.up);
    var_ddc1df15 = vectordot(vectorcross(var_d47effbe, self.edge.right), self.axis.up);
    return var_af5e30e8 * var_ddc1df15 >= 0;
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0xab917e29, Offset: 0x22c8
// Size: 0x210
function function_39ad79f1(v_point) {
    var_5cf32b1d = v_point - self.origin;
    var_caf232e4 = vectordot(var_5cf32b1d, self.axis.right);
    if (var_caf232e4 < self.width * -1) {
        var_caf232e4 = self.width * -1;
    } else if (var_caf232e4 > self.width) {
        var_caf232e4 = self.width;
    }
    var_1fe2f091 = self.origin + self.axis.right * var_caf232e4;
    var_a693b30e = vectordot(var_5cf32b1d, self.axis.up);
    var_33cb36c = v_point - self.axis.up * var_a693b30e;
    var_d2902d22 = distancesquared(var_33cb36c, var_1fe2f091);
    /#
        if (getdvarint(#"hash_4f9bc320ac30703d", 0)) {
            n_color = sqrt(var_d2902d22) / 500;
            if (n_color > 1) {
                n_color = 1;
            }
            v_color = (n_color, 1 - n_color, 0);
            line(v_point, var_33cb36c, v_color, 1, 1, 1);
            line(var_33cb36c, var_1fe2f091, v_color, 1, 1, 1);
        }
    #/
    return var_d2902d22;
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 2, eflags: 0x2 linked
// Checksum 0x2b291026, Offset: 0x24e0
// Size: 0x310
function function_e5d9dcfc(var_163bd9fc, var_27e17d47) {
    var_a8881d11 = isdefined(var_163bd9fc.var_4290ff97.time) ? var_163bd9fc.var_4290ff97.time : 2147483647;
    var_c8dde57b = isdefined(var_27e17d47.var_4290ff97.time) ? var_27e17d47.var_4290ff97.time : 2147483647;
    if (var_a8881d11 != var_c8dde57b) {
        return (var_a8881d11 < var_c8dde57b);
    }
    var_2ac75b4e = isdefined(var_163bd9fc.var_4290ff97.dist) ? var_163bd9fc.var_4290ff97.dist : -1;
    var_7cc2a3a1 = isdefined(var_27e17d47.var_4290ff97.dist) ? var_27e17d47.var_4290ff97.dist : -1;
    if (var_2ac75b4e != var_7cc2a3a1) {
        return (var_2ac75b4e > var_7cc2a3a1);
    }
    if (var_163bd9fc.var_5b345137 != var_27e17d47.var_5b345137) {
        return (var_163bd9fc.var_5b345137 > var_27e17d47.var_5b345137);
    }
    var_1ba29af7 = level.var_181464da.var_6d6e20de.checkpoints;
    var_4c5b7de6 = level.var_181464da.var_6d6e20de.nodes.size;
    var_fea222c = isdefined(var_163bd9fc.var_8307a35a.node.index) ? var_163bd9fc.var_8307a35a.node.index : -1;
    var_edc9a69e = isdefined(var_27e17d47.var_8307a35a.node.index) ? var_27e17d47.var_8307a35a.node.index : -1;
    if (var_fea222c > var_163bd9fc.var_d4821534) {
        var_fea222c -= var_4c5b7de6;
    }
    if (var_edc9a69e > var_27e17d47.var_d4821534) {
        var_edc9a69e -= var_4c5b7de6;
    }
    if (var_fea222c != var_edc9a69e) {
        return (var_fea222c > var_edc9a69e);
    }
    var_1330233 = isdefined(var_163bd9fc.var_8307a35a.dist_to_next) ? var_163bd9fc.var_8307a35a.dist_to_next : 2147483647;
    var_b64408e1 = isdefined(var_27e17d47.var_8307a35a.dist_to_next) ? var_27e17d47.var_8307a35a.dist_to_next : 2147483647;
    return var_1330233 < var_b64408e1;
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x32f9eaa9, Offset: 0x27f8
// Size: 0x414
function function_8a2eb37() {
    level endon(#"end_game", #"grand_prix_step_2_completed");
    var_57850891 = 0;
    while (!var_57850891) {
        waitframe(1);
        waittillframeend();
        if (!isdefined(level.var_3ab17de8)) {
            continue;
        }
        arrayremovevalue(level.var_3ab17de8, undefined);
        var_be321485 = array::merge_sort(level.var_3ab17de8, &function_e5d9dcfc);
        n_total = var_be321485.size;
        if (n_total > 0) {
            var_57850891 = var_be321485[n_total - 1] flag::get(#"hash_47e8aeea930e0d76");
        } else {
            var_57850891 = 1;
        }
        for (i = 0; i < n_total; i++) {
            e_vehicle = var_be321485[i];
            var_ff4491b2 = e_vehicle.owner;
            if (!level.var_252ba2b0 zm_tungsten_grandprix::is_open(var_ff4491b2)) {
                level.var_252ba2b0 zm_tungsten_grandprix::open(var_ff4491b2);
            }
            level.var_252ba2b0 zm_tungsten_grandprix::function_2b44c64e(var_ff4491b2, i);
            /#
                var_55935bba = e_vehicle.var_8307a35a;
                if (isdefined(var_55935bba)) {
                    if (e_vehicle flag::get(#"hash_47e8aeea930e0d76")) {
                        v_color = (0, 1, 0);
                    } else {
                        var_dcaeab5 = gettime() - var_55935bba.last_update;
                        n_color = math::clamp(var_dcaeab5 / 500, 0, 1);
                        v_color = (1, 1 - n_color, 1 - n_color);
                    }
                    debugstar(var_55935bba.last_pos, 10, v_color);
                    n_player = e_vehicle.owner getentnum();
                    var_38811eba = e_vehicle.var_5b345137 + "<unknown string>" + 3;
                    var_9ac6b2ac = "<unknown string>" + n_player + "<unknown string>" + i + 1 + "<unknown string>" + n_total + "<unknown string>" + var_38811eba;
                    var_f5eb67b0 = sqrt(var_55935bba.dist_to_next);
                    var_ba0b397c = "<unknown string>" + var_55935bba.node.index + "<unknown string>" + var_f5eb67b0;
                    var_a2d88df3 = "<unknown string>" + e_vehicle.next_checkpoint;
                    debug2dtext((900, 600 + i * 30, 0), var_9ac6b2ac + var_ba0b397c + var_a2d88df3, v_color);
                }
            #/
        }
    }
    music::setmusicstate("");
    wait(5);
    level flag::set(#"grand_prix_step_2_completed");
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 2, eflags: 0x2 linked
// Checksum 0x6fe67c2a, Offset: 0x2c18
// Size: 0x292
function function_e951ccfe(var_15a51335, n_time) {
    assert(var_15a51335.state == 3);
    var_b202ed98 = var_15a51335.targetname;
    if (!isdefined(self.var_2ab8445c[var_b202ed98])) {
        self.var_2ab8445c[var_b202ed98] = {#node:var_15a51335};
    }
    var_2ddc0533 = self.var_2ab8445c[var_b202ed98];
    var_5cf32b1d = self.origin - var_15a51335.origin;
    if (vectordot(var_5cf32b1d, var_15a51335.axis.forward) < 0) {
        return;
    }
    s_next = var_15a51335.next;
    if (isdefined(s_next)) {
        var_50a4e36b = self.origin - s_next.origin;
        if (vectordot(var_50a4e36b, s_next.axis.forward) >= 0) {
            return;
        }
    }
    var_a693b30e = vectordot(var_5cf32b1d, var_15a51335.axis.up);
    if (var_a693b30e < -50) {
        return;
    }
    if (var_15a51335.height > 0 && var_a693b30e > var_15a51335.height) {
        return;
    }
    var_cf8ec119 = var_15a51335 function_5d97ec11(self.origin);
    if (var_cf8ec119) {
        return;
    }
    var_d2902d22 = var_15a51335 function_39ad79f1(self.origin);
    if (isdefined(var_15a51335.next)) {
        var_328fb11b = var_15a51335.next function_39ad79f1(self.origin);
    }
    var_2ddc0533.last_update = n_time;
    var_2ddc0533.last_pos = self.origin;
    var_2ddc0533.var_87324918 = var_a693b30e;
    var_2ddc0533.var_1a4cb070 = var_d2902d22;
    var_2ddc0533.dist_to_next = var_328fb11b;
    return var_2ddc0533;
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x3dd3e86b, Offset: 0x2eb8
// Size: 0x2d4
function function_290d0461(var_ce9da91e) {
    var_638ed7d7 = level.var_181464da.var_6d6e20de;
    if (var_ce9da91e.node === var_638ed7d7.checkpoints[self.next_checkpoint] && var_ce9da91e.var_1a4cb070 < 1600) {
        if (self.next_checkpoint == 0) {
            if (self.var_5b345137 < 3) {
                self.var_5b345137++;
                if (isdefined(self.owner)) {
                    self.owner playsoundtoplayer(#"hash_2116f6ce15a45c4a", self.owner);
                    level.var_252ba2b0 zm_tungsten_grandprix::function_307daa91(self.owner, self.var_5b345137);
                }
            } else {
                self flag::set(#"hash_47e8aeea930e0d76");
                self.var_4290ff97 = {#time:var_ce9da91e.last_update, #dist:var_ce9da91e.var_1a4cb070};
                if (isdefined(self.owner)) {
                    self.owner clientfield::set_to_player("" + #"hash_1a1bf38ae538a50d", 0);
                    self.owner playsoundtoplayer(#"hash_5a0bc57f6d12bf4c", self.owner);
                    music::setmusicstate("", self.owner);
                }
                level notify(#"hash_51adedadaedb6ebd", {#vehicle:self, #record:self.var_4290ff97});
                return;
            }
        }
        level notify(#"hash_4847149e99d2b54", {#vehicle:self, #checkpoint:self.next_checkpoint, #lap:self.var_5b345137});
        assert(var_638ed7d7.checkpoints.size > 1);
        self.next_checkpoint = (self.next_checkpoint + 1) % var_638ed7d7.checkpoints.size;
        self function_dc6e31a(self.next_checkpoint);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x6 linked
// Checksum 0xe1b95edd, Offset: 0x3198
// Size: 0x72
function private function_dc6e31a(var_836b8ec4) {
    var_57ef78ed = level.var_181464da.var_6d6e20de.checkpoints[var_836b8ec4];
    self.var_d4821534 = isdefined(var_57ef78ed.prev.index) ? var_57ef78ed.prev.index : -1;
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x608230a9, Offset: 0x3218
// Size: 0xbc
function function_3dd87730(var_ff4491b2) {
    self.owner = var_ff4491b2;
    self setteam(var_ff4491b2.team);
    self.var_2ab8445c = [];
    self.var_8307a35a = undefined;
    self.var_4290ff97 = undefined;
    self.var_5b345137 = 0;
    self.next_checkpoint = 0;
    self function_dc6e31a(self.next_checkpoint);
    self clientfield::set("" + #"hash_24b93fe5f3d174f8", var_ff4491b2.teammateindex);
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0xf22cd102, Offset: 0x32e0
// Size: 0x3e6
function function_3594e062(var_638ed7d7) {
    self endon(#"death", #"hash_47e8aeea930e0d76");
    while (true) {
        v_position = self.origin;
        var_1bc7135d = arraysortclosest(var_638ed7d7.nodes, v_position);
        a_closest = [];
        for (i = 0; i < var_1bc7135d.size && (a_closest.size < 10 || distancesquared(v_position, var_1bc7135d[i].origin) < 1000000); i++) {
            if (!isdefined(a_closest)) {
                a_closest = [];
            } else if (!isarray(a_closest)) {
                a_closest = array(a_closest);
            }
            if (!isinarray(a_closest, var_1bc7135d[i])) {
                a_closest[a_closest.size] = var_1bc7135d[i];
            }
            var_a3496a80 = var_1bc7135d[i].prev;
            if (isdefined(var_a3496a80)) {
                if (!isdefined(a_closest)) {
                    a_closest = [];
                } else if (!isarray(a_closest)) {
                    a_closest = array(a_closest);
                }
                if (!isinarray(a_closest, var_a3496a80)) {
                    a_closest[a_closest.size] = var_a3496a80;
                }
            }
        }
        if (isdefined(self.var_8307a35a)) {
            if (!isdefined(a_closest)) {
                a_closest = [];
            } else if (!isarray(a_closest)) {
                a_closest = array(a_closest);
            }
            if (!isinarray(a_closest, self.var_8307a35a.node)) {
                a_closest[a_closest.size] = self.var_8307a35a.node;
            }
        }
        var_2f5b0b52 = 0;
        n_time = gettime();
        foreach (var_15a51335 in a_closest) {
            var_907882e = self function_e951ccfe(var_15a51335, n_time);
            if (isdefined(var_907882e)) {
                if (self.var_8307a35a.last_update === n_time) {
                    if (abs(self.var_8307a35a.var_87324918) > abs(var_907882e.var_87324918)) {
                        self.var_8307a35a = var_907882e;
                        var_2f5b0b52 = 1;
                    }
                    continue;
                }
                self.var_8307a35a = var_907882e;
                var_2f5b0b52 = 1;
            }
        }
        if (var_2f5b0b52) {
            self thread function_290d0461(self.var_8307a35a);
        }
        waitframe(1);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 2, eflags: 0x2 linked
// Checksum 0xbcb7ad07, Offset: 0x36d0
// Size: 0x160
function function_b3944074(e_vehicle, var_393fdcb6) {
    level endon(#"end_game", #"grand_prix_step_2_completed");
    self endon(#"death", #"disconnect");
    e_vehicle endon(#"hash_47e8aeea930e0d76");
    assert(isdefined(var_393fdcb6) && var_393fdcb6.size >= 0);
    self.var_ae881231 = var_393fdcb6.size;
    level.var_252ba2b0 zm_tungsten_grandprix::function_2b80b614(self, self.var_ae881231);
    level flag::wait_till(#"hash_3f4a32a9aa24334a");
    while (self.var_ae881231 > 0) {
        n_duration = level.var_181464da.var_5c62b88d[self.var_ae881231 - 1];
        wait(n_duration);
        self.var_ae881231--;
        level.var_252ba2b0 zm_tungsten_grandprix::function_2b80b614(self, self.var_ae881231);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x5827328d, Offset: 0x3838
// Size: 0x124
function function_402055f0(b_show = 1) {
    if (!isdefined(self) || !isdefined(level.zm_hint_text)) {
        return;
    }
    if (b_show) {
        if (!level.zm_hint_text zm_hint_text::is_open(self)) {
            level.zm_hint_text zm_hint_text::open(self);
        }
        level.zm_hint_text zm_hint_text::set_text(self, #"hash_52d1bd770ba77ae0");
        level.zm_hint_text zm_hint_text::set_visible(self, 1);
        return;
    }
    if (level.zm_hint_text zm_hint_text::is_open(self)) {
        level.zm_hint_text zm_hint_text::set_visible(self, 0);
        level.zm_hint_text zm_hint_text::close(self);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x6 linked
// Checksum 0xa230727c, Offset: 0x3968
// Size: 0x1f4
function private function_7e0ee279() {
    self endon(#"death");
    var_76f90141 = self.var_8307a35a.node;
    if (isdefined(var_76f90141)) {
        v_location = var_76f90141.origin;
        s_trace = groundtrace(v_location + (0, 0, 50), v_location - (0, 0, 50), 0, self);
        if (isdefined(s_trace[#"position"])) {
            v_location = s_trace[#"position"];
        }
        self setbrake(1);
        if (isdefined(self.owner)) {
            self.owner clientfield::set_to_player("" + #"hash_2b3bf178344cc787", 1);
            util::wait_network_frame();
            wait(1);
        }
        self.origin = v_location + (0, 0, 8);
        self.angles = var_76f90141.angles;
        if (isdefined(self.owner)) {
            self.owner dontinterpolate();
            self function_1090ca(self.owner, 0);
            wait(0.1);
            self.owner clientfield::set_to_player("" + #"hash_2b3bf178344cc787", 0);
        }
        self setbrake(0);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0xa028ea2, Offset: 0x3b68
// Size: 0x168
function function_9afd667d() {
    level endon(#"endgame");
    self endon(#"death", #"hash_47e8aeea930e0d76");
    var_59af9d7a = 0;
    var_3bac3fd3 = (0, 0, 1);
    while (true) {
        var_553d7ca5 = anglestoup(self.angles);
        n_dot = vectordot(var_553d7ca5, var_3bac3fd3);
        if (n_dot < 0.5 && abs(self getspeed()) < 0.2) {
            var_59af9d7a++;
            /#
                iprintlnbold("<unknown string>" + self getentnum() + "<unknown string>" + var_59af9d7a);
            #/
            if (var_59af9d7a > 5) {
                self function_7e0ee279();
                var_59af9d7a = 0;
            }
        } else {
            var_59af9d7a = 0;
        }
        wait(0.5);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x71994016, Offset: 0x3cd8
// Size: 0x80c
function function_c07c7ebc(state) {
    level endon(#"end_game");
    level flag::wait_till(#"start_zombie_round_logic");
    if (!isdefined(level.var_ddb70629)) {
        level.var_ddb70629 = getent("side_quest_gp_col", "targetname");
    }
    if (!isdefined(level.var_d4d980c3)) {
        level.var_d4d980c3 = getent("side_quest_gp_activating_volume", "targetname");
    }
    if (!isdefined(level.var_7af22cc0)) {
        level.var_7af22cc0 = getent("side_quest_gp_hide_col", "targetname");
    }
    if (!isdefined(level.var_40c94970)) {
        level.var_40c94970 = getentarray("side_quest_gp_hide_obj", "targetname");
    }
    if (!isdefined(level.var_78819471)) {
        level.var_78819471 = getent("side_quest_gp_starting_col", "targetname");
    }
    if (!isdefined(level.vol_side_quest_gp_fire_work_1)) {
        level.vol_side_quest_gp_fire_work_1 = getent("vol_side_quest_gp_fire_work_1", "targetname");
    }
    if (!isdefined(level.vol_side_quest_gp_fire_work_2)) {
        level.vol_side_quest_gp_fire_work_2 = getent("vol_side_quest_gp_fire_work_2", "targetname");
    }
    if (!isdefined(level.vol_side_quest_gp_fire_work_3)) {
        level.vol_side_quest_gp_fire_work_3 = getent("vol_side_quest_gp_fire_work_3", "targetname");
    }
    if (state === "hide") {
        hidemiscmodels("side_quest_gp_guide_arrow");
        hidemiscmodels("side_quest_gp_zombies");
        hidemiscmodels("side_quest_gp_track");
        hidemiscmodels("side_quest_gp_track_2");
        hidemiscmodels("side_quest_gp_crystal");
        showmiscmodels("side_quest_gp_hide_model");
        exploder::stop_exploder("fxexp_dark_aether_interior_04");
        level.var_ddb70629 hide();
        level.var_ddb70629 notsolid();
        level.var_ddb70629 removeforcenocull();
        level.var_7af22cc0 show();
        level.var_7af22cc0 solid();
        level.var_ddb70629 setforcenocull();
        foreach (obj in level.var_40c94970) {
            if (isdefined(obj)) {
                obj show();
                obj solid();
            }
        }
        level.var_78819471 hide();
        level.var_78819471 notsolid();
        level.var_78819471 removeforcenocull();
        if (isdefined(level.var_a266b15d)) {
            level.var_a266b15d delete();
        }
        if (isdefined(level.var_ee263952)) {
            array::delete_all(level.var_ee263952);
        }
        return;
    }
    showmiscmodels("side_quest_gp_guide_arrow");
    showmiscmodels("side_quest_gp_zombies");
    showmiscmodels("side_quest_gp_track");
    showmiscmodels("side_quest_gp_crystal");
    hidemiscmodels("side_quest_gp_hide_model");
    exploder::exploder("fxexp_dark_aether_interior_04");
    level.var_ddb70629 show();
    level.var_ddb70629 solid();
    level.var_ddb70629 setforcenocull();
    level.var_7af22cc0 hide();
    level.var_7af22cc0 notsolid();
    level.var_7af22cc0 removeforcenocull();
    foreach (obj in level.var_40c94970) {
        if (isdefined(obj)) {
            obj hide();
            obj notsolid();
        }
    }
    level.var_78819471 show();
    level.var_78819471 solid();
    level.var_78819471 setforcenocull();
    if (!isdefined(level.var_ee263952)) {
        var_e0a4c144 = struct::get_array("side_quest_gp_start_door", "targetname");
        level.var_ee263952 = [];
        foreach (var_26f7498 in var_e0a4c144) {
            mdl_door = util::spawn_model(var_26f7498.model, var_26f7498.origin, var_26f7498.angles);
            mdl_door.script_angles = var_26f7498.script_angles;
            if (!isdefined(level.var_ee263952)) {
                level.var_ee263952 = [];
            } else if (!isarray(level.var_ee263952)) {
                level.var_ee263952 = array(level.var_ee263952);
            }
            level.var_ee263952[level.var_ee263952.size] = mdl_door;
        }
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x6b4c4cea, Offset: 0x44f0
// Size: 0x1d4
function function_a7e59618(*var_a276c861) {
    level endon(#"end_game");
    zm_tungsten::function_994637d8(#"hash_1695615ee9fcfe29");
    level flag::wait_till_all([#"start_zombie_round_logic", #"connect_anytown_usa_rooftops", #"connect_video_store", #"connect_tv_repair"]);
    if (!isdefined(level.var_51d15368)) {
        var_2551a4be = struct::get("side_quest_gp_machine_screen");
        level.var_51d15368 = util::spawn_model("tag_origin", var_2551a4be.origin, var_2551a4be.angles);
    }
    callback::on_ai_killed(&function_dccb02f);
    level.var_648bb225 = 0;
    level.var_85bdbe16 = struct::get("side_quest_gp_machine");
    level.var_ada9f1c6 = level.var_85bdbe16 zm_unitrigger::create(&function_47bc03e4, 64, &function_4b0c47c1);
    level flag::wait_till(#"hash_1f50a4230ca8934e");
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x280a84a8, Offset: 0x46d0
// Size: 0xdc
function function_dccb02f(*params) {
    if (is_true(self.var_390850ac) && isdefined(level.var_51d15368) && isdefined(level.var_85bdbe16) && isdefined(level.var_d4d980c3) && !level flag::get(#"hash_7fa3d027663c32a9")) {
        if (self istouching(level.var_d4d980c3)) {
            self clientfield::increment("" + #"hash_303ed2c4515453aa");
            level.var_51d15368 thread function_2d3b4eae();
        }
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x4517de51, Offset: 0x47b8
// Size: 0x14c
function function_2d3b4eae() {
    level endon(#"end_game", #"hash_7fa3d027663c32a9");
    self endon(#"death");
    self notify("77b6c41259ef8052");
    self endon("77b6c41259ef8052");
    wait(1);
    level.var_85bdbe16.var_4786038c = gettime() + int(10 * 1000);
    self setmodel(#"hash_38bb346aa2def993");
    self playsound(#"hash_d8b240f851233e4");
    self playloopsound(#"hash_d3e38e2cdff435c");
    wait(10);
    self stoploopsound();
    self playsound(#"hash_165795b0c096d576");
    self setmodel("tag_origin");
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x28afce10, Offset: 0x4910
// Size: 0x1fa
function function_47bc03e4(e_player) {
    if (!isplayer(e_player)) {
        return 0;
    }
    namespace_edb23975::function_586afc1e(e_player);
    if (level flag::get(#"hash_7fa3d027663c32a9") && !zm_tungsten::function_1fd1da2b()) {
        self sethintstring(#"hash_184161b8e644a854");
        return 1;
    }
    if (level flag::get(#"hash_7fa3d027663c32a9") || zm_tungsten::function_1fd1da2b()) {
        self sethintstring(#"hash_4ffd78f80d372e1");
        return 1;
    }
    if ((isdefined(self.stub.related_parent.var_4786038c) ? self.stub.related_parent.var_4786038c : 0) < gettime()) {
        self sethintstring("");
        return 0;
    }
    if ((isdefined(e_player.var_a3210d75) ? e_player.var_a3210d75 : 0) > 0) {
        self sethintstringforplayer(e_player, #"hash_69476c1bf1ba56f");
        return 1;
    }
    self sethintstringforplayer(e_player, #"hash_2ea0a815decd1e6f");
    return 1;
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x5706dad5, Offset: 0x4b18
// Size: 0x198
function function_4b0c47c1() {
    level endon(#"end_game");
    while (true) {
        s_waitresult = self waittill(#"trigger");
        e_player = s_waitresult.activator;
        if (zm_tungsten::function_1fd1da2b()) {
            continue;
        }
        if (zm_utility::is_player_valid(e_player)) {
            e_player playsound(#"hash_15f62ef7540518b4");
            if (level flag::get(#"hash_7fa3d027663c32a9")) {
                level flag::set(#"hash_1f50a4230ca8934e");
                continue;
            }
            if (e_player namespace_edb23975::function_fac9c4ef() > 0) {
                e_player namespace_edb23975::function_aff8caac(-1);
                level.var_648bb225++;
                if (level.var_648bb225 >= getplayers().size) {
                    level.var_51d15368 setmodel(#"hash_5a97ed63dc83d26f");
                    level flag::set(#"hash_7fa3d027663c32a9");
                }
            }
        }
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 2, eflags: 0x2 linked
// Checksum 0x78339f3e, Offset: 0x4cb8
// Size: 0x9e
function function_e37354de(var_a276c861, var_19e802fa) {
    if (var_a276c861 || var_19e802fa) {
        level flag::set(#"hash_1f50a4230ca8934e");
    }
    callback::remove_on_ai_killed(&function_dccb02f);
    level.var_648bb225 = undefined;
    if (isdefined(level.var_ada9f1c6)) {
        zm_unitrigger::unregister_unitrigger(level.var_ada9f1c6);
        level.var_ada9f1c6 = undefined;
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x3ce069aa, Offset: 0x4d60
// Size: 0x294
function function_882e782f(*var_a276c861) {
    level endon(#"end_game");
    level thread namespace_c097de49::function_8f85d169();
    music::setmusicstate("gp_prerace");
    level notify(#"kill_round");
    level notify(#"kill_round_wait");
    level zm_utility::function_9ad5aeb1(0, 1, 0, 0);
    level flag::clear("spawn_zombies");
    level flag::set(#"hash_1695615ee9fcfe29");
    wait(0.1);
    level.var_e3a675a4 = 0;
    level function_371733c();
    level thread function_ec243299();
    level thread function_14256a2d();
    for (var_fee08fdb = 0; var_fee08fdb < function_a1ef346b().size; var_fee08fdb++) {
        level waittill(#"hash_6c05810d95f9ace1");
    }
    wait(0.5);
    level thread function_c07c7ebc("show");
    level flag::set(#"hash_2f702f46336d6832");
    foreach (player in function_a1ef346b()) {
        player clientfield::set("remote_killstreak_static", 1);
    }
    level thread function_2c55b43();
    level flag::wait_till(#"grand_prix_step_2_completed");
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x58616ab, Offset: 0x5000
// Size: 0x584
function function_ec243299() {
    level endon(#"end_game", #"grand_prix_step_2_completed");
    for (var_ed08d6c3 = 0; var_ed08d6c3 < function_a1ef346b().size; var_ed08d6c3++) {
        level waittill(#"hash_bcb136bf9afedc2");
    }
    wait(2);
    level flag::set(#"hash_31c8302c06f5b552");
    var_4646ff7c = struct::get_array("side_quest_gp_countdown_sigal_screen");
    level.var_579617db = [];
    foreach (point in var_4646ff7c) {
        level.var_579617db[point.script_int] = util::spawn_model("tag_origin", point.origin, point.angles);
    }
    for (var_ca3231c5 = 0; var_ca3231c5 < 3; var_ca3231c5++) {
        wait(1);
        level.var_579617db[var_ca3231c5] setmodel(#"hash_210abd506a527d7c");
        level.var_579617db[var_ca3231c5] playsound(#"hash_66deffc681f9570e");
    }
    wait(0.8);
    level.var_579617db[1] playsound(#"hash_7af167822c1d5b89");
    music::setmusicstate("gp_race");
    array::run_all(level.var_579617db, &setmodel, #"hash_3962b0086020f11c");
    arrayremovevalue(level.var_3ab17de8, undefined);
    if (isdefined(level.var_ee263952)) {
        foreach (var_514900f8 in level.var_ee263952) {
            if (isdefined(var_514900f8.script_angles)) {
                var_514900f8 rotateto(var_514900f8.script_angles, 1, 0, 0);
            }
        }
    }
    if (isdefined(level.var_78819471)) {
        level.var_78819471 hide();
        level.var_78819471 notsolid();
        level.var_78819471 removeforcenocull();
    }
    array::run_all(level.var_3ab17de8, &setbrake, 0);
    level.var_4b8c551a = 300;
    level.var_7902629 = gettime();
    foreach (e_player in function_a1ef346b()) {
        e_player thread clientfield::set_to_player("" + #"hash_1a1bf38ae538a50d", 1);
    }
    level flag::set(#"hash_3f4a32a9aa24334a");
    array::run_all(getplayers(), &setvehicledrivableendtime, int(300 * 1000) + gettime());
    while (level.var_4b8c551a > 0) {
        wait(1);
        level.var_4b8c551a -= 1;
    }
    level flag::set("grand_prix_time_out");
    wait(1);
    level flag::set("grand_prix_step_2_completed");
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x80789394, Offset: 0x5590
// Size: 0x134
function function_371733c() {
    var_4347cdf6 = struct::get_array("side_quest_gp_spawn", "targetname");
    a_players = getplayers();
    assert(var_4347cdf6.size >= a_players.size, "<unknown string>");
    for (i = 0; i < a_players.size; i++) {
        e_player = a_players[i];
        if (!isalive(e_player)) {
            continue;
        }
        if (e_player laststand::player_is_in_laststand()) {
            e_player thread zm_laststand::auto_revive(e_player);
        }
        e_player thread function_d48d77f2(function_80fdd2aa(var_4347cdf6, i));
    }
    level thread function_8a2eb37();
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x3fcebd4a, Offset: 0x56d0
// Size: 0x56c
function function_d48d77f2(s_point) {
    level endon(#"end_game", #"grand_prix_step_2_completed");
    self endon(#"death");
    level thread zm_tungsten::function_4cc5fca6();
    self clientfield::increment_to_player("" + #"hash_355304ea91d4edc8", 1);
    self thread function_c39f6bea();
    self clientfield::set("" + #"hash_1a529bb0de6717d5", 1);
    a_players = function_a1ef346b();
    foreach (player in a_players) {
        player chopper_gunner::function_24fbd61e();
    }
    level.var_fe6ca5e8 = 1;
    wait(7);
    level.var_fe6ca5e8 = undefined;
    while (self isziplining() || self function_b4813488()) {
        waitframe(1);
    }
    level notify(#"hash_6c05810d95f9ace1");
    var_5cd611bc = struct::get(s_point.target, "targetname");
    self zm_fasttravel::function_66d020b0(undefined, undefined, undefined, undefined, var_5cd611bc, undefined, "grand_prix_teleport");
    e_vehicle = spawnvehicle(#"hash_4de90753a704dbad", s_point.origin, s_point.angles);
    e_vehicle setforcenocull();
    e_vehicle val::set("gp", "takedamage", 0);
    e_vehicle.targetname = "gp_car";
    e_vehicle usevehicle(self, 0);
    e_vehicle makevehicleunusable();
    e_vehicle setbrake(1);
    self clientfield::set("" + #"hash_1a529bb0de6717d5", 0);
    if (!isdefined(level.var_3ab17de8)) {
        level.var_3ab17de8 = [];
    }
    if (!isdefined(level.var_3ab17de8)) {
        level.var_3ab17de8 = [];
    } else if (!isarray(level.var_3ab17de8)) {
        level.var_3ab17de8 = array(level.var_3ab17de8);
    }
    level.var_3ab17de8[level.var_3ab17de8.size] = e_vehicle;
    level notify(#"hash_bcb136bf9afedc2");
    self setvehicledrivableduration(int(300 * 1000));
    self setvehicledrivableendtime(int(600 * 1000) + gettime());
    self thread util::delete_on_death(e_vehicle);
    e_vehicle function_3dd87730(self);
    e_vehicle thread function_9afd667d();
    e_vehicle thread function_3594e062(level.var_181464da.var_6d6e20de);
    e_vehicle thread function_8a1c00e5();
    e_vehicle thread function_d427fe0f();
    e_vehicle thread function_de807f2f();
    self thread function_b3944074(e_vehicle, level.var_181464da.var_5c62b88d);
    level.var_252ba2b0 zm_tungsten_grandprix::function_307daa91(self, 1);
    level.var_252ba2b0 zm_tungsten_grandprix::function_1870151b(self, 3);
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x3aa00d1c, Offset: 0x5c48
// Size: 0x7c
function function_de807f2f() {
    self notify("5c8e4ef37d460e7e");
    self endon("5c8e4ef37d460e7e");
    self endon(#"death");
    s_waitresult = level waittill(#"end_game", #"game_ended");
    self thread function_39a8cd0f();
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x12591124, Offset: 0x5cd0
// Size: 0xb2
function function_c39f6bea() {
    level endon(#"end_game");
    self endon(#"death", #"disconnect");
    self.var_3487fff6 = "" + #"hash_63da9d5355659678";
    self.var_1bfa91a = "_arcade";
    self playsound(#"hash_138be05e01bc166c");
    self waittill(#"fasttravel_finished");
    self.var_3487fff6 = undefined;
    self.var_1bfa91a = undefined;
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0xf3e6525e, Offset: 0x5d90
// Size: 0x74
function function_39a8cd0f() {
    self clientfield::increment("" + #"hash_485fe8f642043f78");
    self playrumbleonentity("sr_prototype_generator_explosion");
    wait(0.5);
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 2, eflags: 0x2 linked
// Checksum 0xc0a3080b, Offset: 0x5e10
// Size: 0x416
function function_1fe4ebed(var_a276c861, var_19e802fa) {
    if (var_a276c861 || var_19e802fa) {
        level flag::set(#"grand_prix_step_2_completed");
    }
    music::setmusicstate("");
    level thread namespace_c097de49::function_8f85d169(0);
    a_players = function_a1ef346b();
    array::run_all(a_players, &clientfield::increment_to_player, "" + #"hash_355304ea91d4edc8", 1);
    array::thread_all(a_players, &function_402055f0, 0);
    array::thread_all(a_players, &function_c39f6bea);
    level.var_fe6ca5e8 = 1;
    wait(7);
    level.var_fe6ca5e8 = undefined;
    foreach (player in a_players) {
        if (isdefined(player)) {
            if (level.var_252ba2b0 zm_tungsten_grandprix::is_open(player)) {
                level.var_252ba2b0 zm_tungsten_grandprix::close(player);
            }
            player thread zm_fasttravel::function_66d020b0(undefined, undefined, undefined, undefined, {#origin:player.origin, #angles:player.angles}, undefined, "grand_prix_teleport");
        }
    }
    wait(0.5);
    level flag::set("spawn_zombies");
    level thread function_c07c7ebc("hide");
    level flag::clear(#"hash_2f702f46336d6832");
    level flag::clear(#"hash_1695615ee9fcfe29");
    foreach (player in function_a1ef346b()) {
        player clientfield::set("remote_killstreak_static", 0);
    }
    level flag::set(#"hash_4e003b0a25eefe02");
    level.var_e3a675a4 = undefined;
    level.var_4b8c551a = undefined;
    if (isdefined(level.var_3ab17de8)) {
        arrayremovevalue(level.var_3ab17de8, undefined);
        array::run_all(level.var_3ab17de8, &function_39a8cd0f);
        level.var_3ab17de8 = undefined;
    }
    if (isdefined(level.var_579617db)) {
        array::delete_all(level.var_579617db);
        level.var_579617db = undefined;
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0xb314dc11, Offset: 0x6230
// Size: 0xbc
function function_14256a2d() {
    level endon(#"end_game", #"grand_prix_step_2_completed");
    while (true) {
        waitresult = level waittill(#"hash_4847149e99d2b54");
        if (waitresult.lap === 3 && waitresult.checkpoint === 3) {
            level thread function_42c605b5();
            level flag::set(#"hash_7523f87901e2a190");
            break;
        }
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0xcebd818d, Offset: 0x62f8
// Size: 0x28c
function function_42c605b5() {
    level endon(#"end_game");
    if (!isdefined(level.var_a266b15d)) {
        var_89e55ea4 = struct::get("side_quest_gp_jump_platform", "targetname");
        level.var_a266b15d = util::spawn_model(#"hash_464f7391e364d950", var_89e55ea4.origin, var_89e55ea4.angles);
    }
    level.var_a266b15d moveto(level.var_a266b15d.origin + (0, 0, 200), 4, 0.5, 0.5);
    wait(2);
    level clientfield::set("" + #"hash_6c40bdc03cfa78bb", 1);
    var_437e629 = struct::get("scene_jump_platform_pos", "targetname");
    var_437e629 thread scene::play("p9_fxanim_zm_tungsten_crystal_stairs_bundle", "up");
    var_437e629 waittill(#"scenes_done");
    var_437e629 thread scene::play("p9_fxanim_zm_tungsten_crystal_stairs_bundle", "play");
    level flag::wait_till(#"hash_4e003b0a25eefe02");
    var_437e629 scene::delete_scene_spawned_ents();
    var_437e629 scene::stop();
    level clientfield::set("" + #"hash_6c40bdc03cfa78bb", 0);
    level clientfield::set("" + #"hash_665b17bb90845861", 4);
    if (isdefined(level.var_a266b15d)) {
        level.var_a266b15d delete();
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x433eaaf1, Offset: 0x6590
// Size: 0x148
function function_8a1c00e5() {
    level endon(#"end_game");
    self endon(#"death");
    self flag::wait_till(#"hash_47e8aeea930e0d76");
    if (isdefined(level.vol_side_quest_gp_fire_work_3)) {
        if (self istouching(level.vol_side_quest_gp_fire_work_3)) {
            level clientfield::set("" + #"hash_665b17bb90845861", 3);
        }
    }
    if (isdefined(self.owner)) {
        self.owner function_402055f0(1);
    }
    self thread function_dc71582(self.owner.var_ae881231);
    if (isdefined(level.var_e3a675a4)) {
        self thread function_89c363a(level.var_e3a675a4);
        level.var_e3a675a4++;
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x20dedc8f, Offset: 0x66e0
// Size: 0x174
function function_d427fe0f() {
    level endon(#"end_game");
    self endon(#"death");
    level flag::wait_till(#"hash_7523f87901e2a190");
    while (true) {
        if (isdefined(level.vol_side_quest_gp_fire_work_1)) {
            if (self istouching(level.vol_side_quest_gp_fire_work_1)) {
                level clientfield::set("" + #"hash_665b17bb90845861", 1);
                break;
            }
        }
        if (isdefined(level.vol_side_quest_gp_fire_work_2)) {
            if (self istouching(level.vol_side_quest_gp_fire_work_2)) {
                level clientfield::set("" + #"hash_665b17bb90845861", 2);
                break;
            }
        }
        waitframe(1);
    }
    wait(3);
    level clientfield::set("" + #"hash_665b17bb90845861", 0);
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0xa27cb8c1, Offset: 0x6860
// Size: 0x1ec
function function_dc71582(reward_tier) {
    level endon(#"end_game");
    self endon(#"death");
    switch (reward_tier) {
    case 3:
        var_6e938f0b = 50;
        self clientfield::set("" + #"hash_6324044c00c5672d", 1);
        break;
    case 2:
        var_6e938f0b = 30;
        self clientfield::set("" + #"hash_6324044c00c5672d", 2);
        break;
    case 1:
        var_6e938f0b = 20;
        self clientfield::set("" + #"hash_6324044c00c5672d", 3);
        break;
    case 0:
        var_6e938f0b = 10;
        self clientfield::set("" + #"hash_6324044c00c5672d", 4);
        break;
    default:
        var_6e938f0b = 10;
        self clientfield::set("" + #"hash_6324044c00c5672d", 4);
        break;
    }
    wait(0.8);
    self thread function_537808ec(var_6e938f0b, 1, 0.15);
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0xda2a6460, Offset: 0x6a58
// Size: 0x264
function function_89c363a(var_e3a675a4) {
    level endon(#"end_game");
    self endon(#"death");
    switch (var_e3a675a4) {
    case 0:
        var_eaa63cf9 = 1;
        var_26c96262 = 1;
        var_1d1fc2ce = 1;
        break;
    case 1:
        var_eaa63cf9 = 1;
        var_1d1fc2ce = 1;
        break;
    case 2:
        var_26c96262 = 1;
        var_1d1fc2ce = 1;
        break;
    case 3:
        var_1d1fc2ce = 1;
        break;
    default:
        break;
    }
    wait(0.8);
    if (is_true(var_1d1fc2ce)) {
        self thread function_537808ec(10, 1, 0.15);
        self clientfield::set("" + #"hash_6324044c00c5672d", 5);
    }
    if (is_true(var_26c96262)) {
        self thread function_537808ec(10, 2, 0.2);
        self clientfield::set("" + #"hash_6324044c00c5672d", 6);
    }
    if (is_true(var_eaa63cf9)) {
        self thread function_537808ec(10, 3, 0.3);
        self clientfield::set("" + #"hash_6324044c00c5672d", 7);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 3, eflags: 0x2 linked
// Checksum 0x1bfe0d3b, Offset: 0x6cc8
// Size: 0x1b8
function function_537808ec(var_6e938f0b, var_e15e9f2a, var_801f8ece) {
    level endon(#"end_game");
    self endon(#"death");
    while (var_6e938f0b > 0) {
        n_count = 1;
        if (var_6e938f0b > 1) {
            n_count = randomintrange(1, int(min(var_6e938f0b, 3)));
        }
        for (i = 0; i < n_count; i++) {
            if (isdefined(self.owner)) {
                switch (var_e15e9f2a) {
                case 1:
                    level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:self.owner, #scoreevent:"essence_pickup_small"});
                    break;
                case 2:
                    self.owner namespace_2a9f256a::function_afab250a(50);
                    break;
                case 3:
                    self.owner namespace_2a9f256a::function_a6d4221f(10);
                    break;
                }
            }
            var_6e938f0b--;
        }
        wait(var_801f8ece);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x141d3a66, Offset: 0x6e88
// Size: 0x24e
function function_619fdf5f() {
    level endon(#"end_game");
    if (!isdefined(level.var_3a2ad19b)) {
        level.var_3a2ad19b = [];
    }
    if (!isdefined(level.var_3a2ad19b)) {
        level.var_3a2ad19b = [];
    } else if (!isarray(level.var_3a2ad19b)) {
        level.var_3a2ad19b = array(level.var_3a2ad19b);
    }
    level.var_3a2ad19b[level.var_3a2ad19b.size] = #"item_zmquest_sr_ltm_food_burger";
    level flag::wait_till(#"start_zombie_round_logic");
    level.var_91f71aa[#"item_zmquest_sr_ltm_food_burger"] = &function_b087107d;
    callback::on_item_pickup(&item_pickup);
    var_4db66606 = struct::get_array("s_hamburger", "targetname");
    foreach (s_pos in var_4db66606) {
        point = function_4ba8fde(#"item_zmquest_sr_ltm_food_burger");
        if (isdefined(point)) {
            var_4f434a9b = item_drop::drop_item(0, undefined, 1, 0, point.id, s_pos.origin, s_pos.angles, 0);
            var_4f434a9b.var_dd21aec2 = 1 | 16;
            var_4f434a9b.itementry.var_fa988b4b = undefined;
        }
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0xce05eaf3, Offset: 0x70e0
// Size: 0x2c
function function_b087107d(*item) {
    if (self.health < self.var_66cb03ad) {
        return 1;
    }
    return 0;
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0xac0fd826, Offset: 0x7118
// Size: 0x290
function function_37f28f2b(*var_a276c861) {
    level endon(#"end_game");
    var_803625e6 = getentarray("e_bunny", "targetname");
    var_aebc6824 = array::random(var_803625e6);
    var_aebc6824.var_66c5aea4 = 1;
    array::thread_all(var_803625e6, &function_c9658564);
    level.var_eda01097 = arraycombine(level.var_eda01097, var_803625e6);
    level flag::wait_till(#"hash_60a7df7afef780c8");
    s_burger_boy_back_trigger = struct::get("s_burger_boy_back_trigger", "targetname");
    s_burger_boy_back_trigger zm_unitrigger::function_fac87205(#"hash_6b91ed772270bbfb", 32);
    var_d0426a23 = getent("burger_boy", "targetname");
    var_d0426a23.var_52babeb3 = getent("e_burger_boy_left_panel", "targetname");
    var_d0426a23.var_d2835a9f = getent("e_burger_boy_right_panel", "targetname");
    if (isdefined(var_d0426a23.var_52babeb3)) {
        var_d0426a23.var_52babeb3 playsound(#"hash_597557b4448dfe42");
        var_d0426a23.var_52babeb3 rotateto(var_d0426a23.var_52babeb3.angles + (0, -90, -15), 3);
    }
    if (isdefined(var_d0426a23.var_d2835a9f)) {
        var_d0426a23.var_d2835a9f rotateto(var_d0426a23.var_d2835a9f.angles + (0, 90, 15), 3);
    }
    var_d0426a23.var_d2835a9f waittill(#"rotatedone");
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x35c16dad, Offset: 0x73b0
// Size: 0x3bc
function function_c9658564() {
    level endon(#"end_game");
    var_ca57b8dd = struct::get(self.target, "targetname");
    while (true) {
        waitresult = self waittill(#"hash_81e93f0d0293b61");
        player = waitresult.attacker;
        damage = waitresult.damage;
        if (isplayer(player) && waitresult.mod === "MOD_EXPLOSIVE" && player namespace_e86ffa8::function_582d36be(5) && isdefined(damage) && damage >= 35) {
            if (is_true(self.var_66c5aea4) && isdefined(var_ca57b8dd)) {
                point = function_4ba8fde(#"hash_2aeb24fda8b1b4f2");
                if (isdefined(point)) {
                    var_6c4a7715 = item_drop::drop_item(0, undefined, 1, 0, point.id, var_ca57b8dd.origin, var_ca57b8dd.angles, 2);
                    var_6c4a7715.var_dd21aec2 = 1 | 16;
                }
                break;
            }
            if (isdefined(var_ca57b8dd)) {
                var_f0de9b92 = array::random(["full_ammo", "nuke", "insta_kill", "fire_sale"]);
                var_24a867e4 = function_ed4a5d52(var_f0de9b92);
                mdl_reward = util::spawn_model(var_24a867e4, var_ca57b8dd.origin, var_ca57b8dd.origin.angles);
                var_2077a964 = getrandomnavpoint(var_ca57b8dd.origin, 36);
                if (isvec(var_2077a964) && isdefined(mdl_reward)) {
                    n_power = length(var_2077a964 - var_ca57b8dd.origin);
                    var_4e2c4d20 = mdl_reward zm_utility::fake_physicslaunch(var_2077a964, n_power);
                    playsoundatposition(#"hash_209bab2317ec235e", var_ca57b8dd.origin);
                    wait(var_4e2c4d20);
                    if (isdefined(mdl_reward)) {
                        mdl_reward delete();
                    }
                    level zm_powerups::specific_powerup_drop(var_f0de9b92, var_2077a964);
                    break;
                }
            }
        }
    }
    waitframe(5);
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x5782733a, Offset: 0x7778
// Size: 0xde
function function_ed4a5d52(var_f0de9b92) {
    switch (var_f0de9b92) {
    case #"full_ammo":
        mdl_powerup = #"p7_zm_power_up_max_ammo";
        break;
    case #"insta_kill":
        mdl_powerup = #"p7_zm_power_up_insta_kill";
        break;
    case #"fire_sale":
        mdl_powerup = #"p7_zm_power_up_firesale";
        break;
    case #"nuke":
        mdl_powerup = #"p7_zm_power_up_nuke";
        break;
    default:
        break;
    }
    return mdl_powerup;
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 2, eflags: 0x2 linked
// Checksum 0x264d65e0, Offset: 0x7860
// Size: 0x26
function function_8abd620(var_a276c861, var_19e802fa) {
    if (var_a276c861 || var_19e802fa) {
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x79da9014, Offset: 0x7890
// Size: 0x3dc
function function_8f75cb6a(*var_a276c861) {
    level endon(#"end_game");
    var_bb9fd562 = struct::get("s_bunny_on_boy_back", "targetname");
    s_burger_boy_back_trigger = struct::get("s_burger_boy_back_trigger", "targetname");
    zm_tungsten::function_994637d8(#"hash_6de3a0458517d4ad");
    s_burger_boy_back_trigger zm_unitrigger::create(&function_602ff019, 32, &function_df46d7ea);
    level flag::wait_till(#"hash_6de3a0458517d4ad");
    level flag::clear("rbz_exfil_allowed");
    var_bb9fd562.var_af44ab5f = util::spawn_model(#"hash_7f311e8d38b7d936", var_bb9fd562.origin, var_bb9fd562.angles);
    var_bb9fd562.var_af44ab5f playsound(#"hash_638a95c1b6bb3c09");
    var_d0426a23 = getent("burger_boy", "targetname");
    if (isdefined(var_d0426a23.var_52babeb3)) {
        var_d0426a23.var_52babeb3 playsound(#"hash_6f0ad87dc9e28766");
        var_d0426a23.var_52babeb3 rotateto(var_d0426a23.var_52babeb3.angles + (0, 90, 15), 3);
    }
    if (isdefined(var_d0426a23.var_d2835a9f)) {
        var_d0426a23.var_d2835a9f rotateto(var_d0426a23.var_d2835a9f.angles + (0, -90, -15), 3);
    }
    wait(3);
    var_d0426a23 clientfield::set("" + #"hash_6e68f1a9f11ee7a7", 1);
    var_d0426a23 thread scene::play(#"hash_4c0867f03bae07a1", "play", var_d0426a23);
    level thread function_ef77607f();
    level flag::clear("spawn_zombies");
    level waittill(#"hash_405fb18663eebcb4");
    var_d0426a23 thread scene::stop(#"hash_4c0867f03bae07a1");
    var_d0426a23 clientfield::set("" + #"hash_6e68f1a9f11ee7a7", 0);
    level flag::clear(#"hash_6de3a0458517d4ad");
    level flag::set("spawn_zombies");
    level flag::set("rbz_exfil_allowed");
    if (isdefined(var_bb9fd562.var_af44ab5f)) {
        var_bb9fd562.var_af44ab5f delete();
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0xff5cec2c, Offset: 0x7c78
// Size: 0x6c
function function_602ff019(e_player) {
    if (isplayer(e_player)) {
        if (zm_tungsten::function_1fd1da2b()) {
            return false;
        } else {
            self sethintstring(#"hash_6c152e941383cb30");
            return true;
        }
    }
    return false;
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x4958ccd, Offset: 0x7cf0
// Size: 0x90
function function_df46d7ea() {
    level endon(#"end_game");
    self endon(#"death");
    while (true) {
        self waittill(#"trigger");
        level flag::set(#"hash_6de3a0458517d4ad");
        waitframe(1);
        zm_unitrigger::unregister_unitrigger(self.stub);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x506ee2bf, Offset: 0x7d88
// Size: 0x14a
function function_a7236d71() {
    level endon(#"end_game", #"hash_405fb18663eebcb4", #"cleanup_objective_bar");
    while (true) {
        foreach (player in getplayers()) {
            dis = distance2dsquared(self.origin, player.origin);
            if (isdefined(dis) && dis <= sqr(870)) {
                player healthoverlay::end_health_regen();
                continue;
            }
            player healthoverlay::restart_player_health_regen();
        }
        wait(1);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x1bebf638, Offset: 0x7ee0
// Size: 0x3cc
function function_ef77607f() {
    level endon(#"end_game", #"hash_405fb18663eebcb4");
    var_328baab5 = struct::get_array("s_portal_pos", "targetname");
    var_d0426a23 = getent("burger_boy", "targetname");
    var_d0426a23.var_57e65c03 = 0;
    var_d0426a23.var_97d37415 = util::spawn_model(#"hash_5079f3c7d659ff2", var_d0426a23.origin, var_d0426a23.angles);
    var_d0426a23.var_97d37415 setscale(1.7);
    var_d0426a23.var_97d37415 clientfield::set("" + #"hash_46bf4cc1eea0741a", 1);
    level thread function_68a91082(var_d0426a23);
    var_d0426a23 thread function_a7236d71();
    wait(3);
    var_d0426a23 thread function_aa9da0e();
    wait(7);
    level clientfield::set("" + #"hash_112d67305f861fe", 2);
    wait(7);
    var_d0426a23 function_21e8e6c8();
    var_d0426a23 thread function_b20e6cff();
    s_portal = function_80fdd2aa(var_328baab5, 2);
    s_portal thread function_12f0e19b();
    wait(30);
    level.var_ab34de1f = 1;
    level clientfield::set("" + #"hash_112d67305f861fe", 3);
    s_portal = function_80fdd2aa(var_328baab5, 3);
    s_portal thread function_12f0e19b();
    for (m = 2; m <= 2; m++) {
        s_portal = function_80fdd2aa(var_328baab5, m);
        s_portal thread function_12f0e19b(1, 0, 1);
    }
    wait(20);
    for (a = 2; a <= 3; a++) {
        s_portal = function_80fdd2aa(var_328baab5, a);
        s_portal thread function_12f0e19b(0, 1, 3);
    }
    wait(30);
    for (n = 2; n <= 3; n++) {
        s_portal = function_80fdd2aa(var_328baab5, n);
        s_portal thread function_12f0e19b(1, 0, 1);
        s_portal thread function_12f0e19b(0, 1, 3);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0xa17b7560, Offset: 0x82b8
// Size: 0x1d8
function function_68a91082(target_entity) {
    var_a2ff5983 = struct::get_array("s_teleprt_pos", "targetname");
    foreach (player in function_a1ef346b()) {
        dis = distance2dsquared(target_entity.origin, player.origin);
        if (isdefined(dis) && dis > sqr(870 + 500) && !player laststand::player_is_in_laststand() && !player flag::get_any([#"hash_686d5709e1566aa6", #"hash_1b361b950317ecb5"])) {
            n_index = zm_fasttravel::get_player_index(player);
            var_3193e2d9 = var_a2ff5983[n_index];
            player thread zm_fasttravel::function_66d020b0(undefined, undefined, undefined, undefined, var_3193e2d9, undefined, undefined, 1, 0);
        }
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 2, eflags: 0x2 linked
// Checksum 0xcba7fb2d, Offset: 0x8498
// Size: 0x9c
function function_80fdd2aa(array, n_idx) {
    foreach (element in array) {
        if (element.script_int === n_idx) {
            return element;
        }
    }
    return undefined;
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x420aaae6, Offset: 0x8540
// Size: 0x184
function function_21e8e6c8() {
    slots = namespace_85745671::function_bdb2b85b(self, self.origin, self.angles, 30, 10, undefined, 1);
    self.is_active = 1;
    self.var_b79a8ac7 = {#var_f019ea1a:1500, #slots:slots};
    level.attackables[level.attackables.size] = self;
    self.var_6332d14f = spawn("trigger_damage", self.origin + (0, 0, 20), 0, 64, 128);
    /#
        box(self.origin + (0, 0, 20), (-32, -32, -64), (32, 32, 64), self.angles, (1, 0, 0), 1, 0, 20000);
    #/
    level thread objective_manager::start_timer(120);
    self thread function_9db81f65();
    /#
        iprintlnbold("<unknown string>");
    #/
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x9e430705, Offset: 0x86d0
// Size: 0x288
function function_9db81f65() {
    level endon(#"end_game", #"hash_405fb18663eebcb4");
    wait(0.5);
    var_f15d2e26 = 1200;
    zm_sq::sndonoverride_eye_(var_f15d2e26 / 1200);
    zm_sq::function_2398ab16("cleanup_objective_bar");
    while (true) {
        result = self.var_6332d14f waittill(#"damage");
        if (!isplayer(result.attacker)) {
            var_f15d2e26 -= result.amount;
            /#
                iprintlnbold(var_f15d2e26);
            #/
            self playsound(#"hash_1ddeb8af5a217a6e");
            zm_sq::sndonoverride_eye_(var_f15d2e26 / 1200);
            if (var_f15d2e26 <= 0) {
                level flag::set(#"hash_5dec93745dff8acb");
                level notify(#"cleanup_objective_bar");
                level thread function_7b92ffd7(self);
                break;
            }
            if (math::cointoss(20) && !is_true(self.var_57e65c03)) {
                self thread function_aa9da0e();
            }
        }
    }
    playfx(#"hash_f4494f805f7d989", self gettagorigin("head_jnt"), anglestoforward(self.angles), anglestoup(self.angles));
    waitframe(5);
    if (isdefined(self.var_6332d14f)) {
        self.var_6332d14f delete();
    }
    level notify(#"hash_405fb18663eebcb4");
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x270218d4, Offset: 0x8960
// Size: 0x120
function function_b20e6cff() {
    level endon(#"end_game", #"hash_405fb18663eebcb4");
    wait(120);
    var_53313495 = struct::get("s_reward_chest", "targetname");
    namespace_58949729::function_4ec9fc99(var_53313495, "large_chest_level_5", #"p9_fxanim_zm_gp_chest_01_lrg_low_xmodel", #"p9_fxanim_zm_gp_chest_01_lrg_bundle", 3);
    self thread function_7c6752c8();
    var_53313495 thread util::delay(30, undefined, &function_3076a002);
    level notify(#"cleanup_objective_bar");
    level thread function_7b92ffd7(self);
    level notify(#"hash_405fb18663eebcb4");
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0xe76855ca, Offset: 0x8a88
// Size: 0x17c
function function_3076a002() {
    self endon(#"death");
    chest = self.scriptmodel;
    trigger = self.trigger;
    if (isdefined(chest)) {
        chest thread item_world::loop_sound("wpn_semtex_alert", 0.84);
        util::wait_network_frame(1);
    }
    wait(5);
    if (isdefined(chest)) {
        chest scene::stop();
        playfx(#"hash_131031222bb89ea", chest.origin);
        playsoundatposition(#"hash_2f1ae087d02ed33f", chest.origin);
        chest radiusdamage(chest.origin, 128, 50, 10, undefined, "MOD_EXPLOSIVE", getweapon(#"supplydrop"));
        chest delete();
    }
    if (isdefined(trigger)) {
        trigger delete();
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 3, eflags: 0x2 linked
// Checksum 0x537d619b, Offset: 0x8c10
// Size: 0x25c
function function_12f0e19b(var_5a2c0004 = 0, var_5359b8ff = 0, n_spawn_count = undefined) {
    level endon(#"end_game", #"hash_405fb18663eebcb4");
    n_count = 0;
    wait(3);
    while (true) {
        if (zombie_utility::get_current_actor_count() > level.zombie_ai_limit - 1) {
            waitframe(1);
            continue;
        }
        if (var_5a2c0004) {
            ai_type = #"spawner_bo5_mechz_sr";
        } else if (var_5359b8ff) {
            ai_type = #"hash_51edd7595ecda822";
        } else {
            ai_type = get_ai_type();
        }
        if (isdefined(ai_type)) {
            var_ac6fac3 = spawnactor(ai_type, self.origin, self.angles, "burger_boy_zombie", 1);
        }
        if (isdefined(var_ac6fac3)) {
            var_ac6fac3.var_126d7bef = 1;
            var_ac6fac3.ignore_round_spawn_failsafe = 1;
            var_ac6fac3.b_ignore_cleanup = 1;
            var_ac6fac3.ignore_enemy_count = 1;
            var_ac6fac3.no_powerups = 1;
            var_ac6fac3 pathmode("move allowed");
            var_ac6fac3.completed_emerging_into_playable_area = 1;
            var_ac6fac3.zombie_think_done = 1;
            if (is_true(level.var_ab34de1f)) {
                var_ac6fac3 namespace_85745671::function_9758722("sprint");
            }
            n_count++;
        }
        if (isdefined(n_spawn_count) && n_count >= n_spawn_count) {
            break;
        }
        wait(randomintrangeinclusive(1, 3));
    }
    /#
        iprintlnbold("<unknown string>");
    #/
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x205bbaa3, Offset: 0x8e78
// Size: 0x98
function get_ai_type() {
    var_628d63d0 = randomintrange(0, 100);
    if (var_628d63d0 > 20) {
        ai_type = array::random(array("spawner_bo5_zombie_zm_tungsten", "spawner_bo5_zombie_zm_tungsten_omega_soldier"));
        return ai_type;
    }
    if (var_628d63d0 > 5) {
        return "spawner_bo5_zombie_zm_tungsten_armor_medium";
    }
    return "spawner_bo5_zombie_zm_tungsten_armor_heavy";
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0xb3b632ed, Offset: 0x8f18
// Size: 0x34e
function function_aa9da0e() {
    level endon(#"end_game", #"hash_405fb18663eebcb4");
    var_73a44ab8 = randomintrangeinclusive(4, 6);
    self.var_57e65c03 = 1;
    self clientfield::set("" + #"hash_79077a9af52542c8", 1);
    for (i = 0; i <= var_73a44ab8; i++) {
        var_65c9209b = randomintrangeinclusive(1, 3);
        var_3927b8fb = struct::get_array(self.target, "targetname");
        var_b449a058 = array::random(var_3927b8fb);
        traceresult = groundtrace(var_b449a058.origin + (0, 0, 50), var_b449a058.origin + (0, 0, -100), 0, 0);
        if (isdefined(traceresult[#"position"])) {
            var_9917b0be = traceresult[#"position"];
            var_9917b0be = getrandomnavpoint(var_9917b0be, 50, 15);
        } else {
            waitframe(1);
            continue;
        }
        point = function_4ba8fde(#"item_zmquest_sr_ltm_food_burger");
        var_4f434a9b = item_drop::drop_item(0, undefined, 1, 0, point.id, self gettagorigin("tag_mouth"), self.angles, 0);
        var_4f434a9b.var_dd21aec2 = 1 | 16;
        var_4f434a9b.itementry.var_fa988b4b = 30;
        var_4f434a9b playsound(#"hash_3dae72c7171166b8");
        n_power = length(self gettagorigin("tag_mouth") - var_9917b0be);
        var_4e2c4d20 = var_4f434a9b zm_utility::fake_physicslaunch(var_9917b0be, n_power);
        self clientfield::increment("" + #"hash_4a1dfb77dccf6587", 1);
        wait(var_65c9209b);
    }
    self clientfield::set("" + #"hash_79077a9af52542c8", 0);
    self.var_57e65c03 = 0;
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0xc8364472, Offset: 0x9270
// Size: 0x16e
function function_7c6752c8() {
    var_89f315b8 = (0, 0, 102);
    v_position = (4188, 2542, -362);
    v_origin = self gettagorigin("tag_mouth");
    v_angles = self.angles;
    wait(5);
    point = function_4ba8fde(#"hash_4add6df00de2903a");
    var_772c2945 = item_drop::drop_item(0, undefined, 1, 0, point.id, v_origin, v_angles, 0);
    var_772c2945.var_dd21aec2 = 1 | 16;
    var_772c2945.itementry.var_fa988b4b = 35;
    var_772c2945 playsound(#"hash_3dae72c7171166b8");
    n_power = length(v_origin + var_89f315b8 - v_position);
    var_4e2c4d20 = var_772c2945 zm_utility::fake_physicslaunch(v_position, n_power);
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x957ed371, Offset: 0x93e8
// Size: 0x174
function function_7b92ffd7(entity) {
    namespace_85745671::function_b70e2a37(entity);
    level thread objective_manager::stop_timer();
    level clientfield::set("" + #"hash_112d67305f861fe", 0);
    entity thread function_4895e5f6();
    foreach (player in getplayers()) {
        player healthoverlay::restart_player_health_regen();
    }
    if (isdefined(entity.var_97d37415)) {
        entity.var_97d37415 clientfield::set("" + #"hash_46bf4cc1eea0741a", 0);
        entity.var_97d37415 thread util::delayed_delete(1);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0xf1a5baed, Offset: 0x9568
// Size: 0x94
function function_4895e5f6() {
    self clientfield::set("" + #"hash_79077a9af52542c8", 0);
    self clientfield::set("" + #"hash_3d5c2390c0768ed2", 1);
    self playsound(#"hash_1e57a07d7ae159c2");
    level thread function_e8799ac6(self);
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 2, eflags: 0x2 linked
// Checksum 0x700ea14c, Offset: 0x9608
// Size: 0x2dc
function function_e8799ac6(entity, var_7bae7a71 = 1024) {
    var_f0bfc7a8 = var_7bae7a71;
    var_17c7dbe6 = arraysortclosest(zombie_utility::get_zombie_array(), entity.origin, undefined, 0, var_f0bfc7a8);
    foreach (var_ccea7dbf in var_17c7dbe6) {
        if (isalive(var_ccea7dbf)) {
            level.zombie_total++;
            level.zombie_respawns++;
            level.zombie_total_subtract++;
            if (math::cointoss()) {
                gibserverutils::gibhead(var_ccea7dbf);
            }
            if (math::cointoss()) {
                if (math::cointoss()) {
                    gibserverutils::gibleftarm(var_ccea7dbf);
                } else {
                    gibserverutils::gibrightarm(var_ccea7dbf);
                }
            }
            if (math::cointoss()) {
                if (math::cointoss()) {
                    gibserverutils::gibleftleg(var_ccea7dbf);
                } else {
                    gibserverutils::gibrightleg(var_ccea7dbf);
                }
            }
            n_random_x = randomfloatrange(-3, 3);
            n_random_y = randomfloatrange(-3, 3);
            v_fling = 150 * vectornormalize(var_ccea7dbf.origin - entity.origin + (n_random_x, n_random_y, 500));
            var_ccea7dbf.var_d45ca662 = 1;
            var_ccea7dbf.var_98f1f37c = 1;
            var_ccea7dbf thread zm_utility::function_ffc279(v_fling, var_ccea7dbf);
        }
    }
    level thread zm_utility::function_9ad5aeb1(1, 1, 0, 0);
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 2, eflags: 0x2 linked
// Checksum 0xe56ebdbe, Offset: 0x98f0
// Size: 0xb8
function function_edc7972d(var_a276c861, var_19e802fa) {
    if (var_a276c861 || var_19e802fa) {
    }
    foreach (player in getplayers()) {
        player healthoverlay::restart_player_health_regen();
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0xd83541ac, Offset: 0x99b0
// Size: 0xfa
function item_pickup(params) {
    item = params.item;
    if (isplayer(self)) {
        if (isdefined(item.itementry.name)) {
            switch (item.itementry.name) {
            case #"item_zmquest_sr_ltm_food_burger":
                self thread function_965e8e5e(200);
                break;
            case #"hash_2aeb24fda8b1b4f2":
                level flag::set(#"hash_60a7df7afef780c8");
                break;
            case #"hash_4add6df00de2903a":
                level thread function_dc01274e();
                break;
            }
        }
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x96a1c41a, Offset: 0x9ab8
// Size: 0x80
function function_dc01274e() {
    level util::clientnotify("sndUnlockEESong");
    level thread zm_audio::sndmusicsystem_stopandflush();
    waitframe(1);
    level thread zm_audio::sndmusicsystem_playstate("ee_song");
    if (isdefined(level.var_da00670e)) {
        level thread [[ level.var_da00670e ]]();
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x6 linked
// Checksum 0xc9a09915, Offset: 0x9b40
// Size: 0x9c
function private function_7990b88f() {
    level endon(#"end_game");
    self endon(#"death", #"player_downed");
    count = 0;
    while (count <= 60) {
        self.health = math::clamp(self.health + 1, 0, self.var_66cb03ad);
        count++;
        wait(1);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0xbed68a57, Offset: 0x9be8
// Size: 0x74
function function_965e8e5e(n_health) {
    var_e873365a = self.health + n_health;
    if (var_e873365a < 0) {
        var_e873365a = 0;
    } else if (var_e873365a > self.var_66cb03ad) {
        var_e873365a = self.var_66cb03ad;
    }
    self.health = var_e873365a;
    self thread function_7990b88f();
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0xccafd3d7, Offset: 0x9c68
// Size: 0x2ac
function function_9a3e69a6(*var_a276c861) {
    e_tape = getent("vhs_tape", "targetname");
    e_tape_damage_proxy = getent("e_tape_damage_proxy", "targetname");
    while (true) {
        waitresult = e_tape_damage_proxy waittill(#"damage");
        if (isplayer(waitresult.attacker) && waitresult.mod === "MOD_GRENADE" || waitresult.mod === "MOD_GRENADE_SPLASH") {
            break;
        }
    }
    var_73a3724e = struct::get(e_tape.target, "targetname");
    if (isdefined(var_73a3724e)) {
        e_tape moveto(var_73a3724e.origin, 0.2, 0, 0);
        e_tape rotateto(var_73a3724e.angles, 0.2, 0, 0);
        e_tape playsound(#"hash_531ace2a44a3edf5");
    }
    wait(0.2);
    e_tape zm_unitrigger::function_fac87205(#"hash_492081dc2a915c05", 70);
    playsoundatposition(#"hash_75da4e417535a408", e_tape.origin);
    /#
        iprintlnbold("<unknown string>");
    #/
    if (isdefined(e_tape)) {
        e_tape delete();
    }
    var_8263605f = getent("vhs_vcr", "targetname");
    var_8263605f zm_unitrigger::function_fac87205(#"hash_6bce8f715e409b18", 64);
    var_8263605f playsound(#"hash_124b4252b2a3a211");
    /#
        iprintlnbold("<unknown string>");
    #/
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 2, eflags: 0x2 linked
// Checksum 0x42343189, Offset: 0x9f20
// Size: 0x26
function function_14f1a95a(var_a276c861, var_19e802fa) {
    if (var_a276c861 || var_19e802fa) {
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x913ce7d8, Offset: 0x9f50
// Size: 0xa4
function function_e86d6eef(*var_a276c861) {
    var_8263605f = getent("vhs_vcr", "targetname");
    s_trigger = var_8263605f zm_unitrigger::create(&function_2244edb0, 64, &function_942a2c48);
    level flag::wait_till(#"hash_25fe180b96ddb969");
    zm_unitrigger::unregister_unitrigger(s_trigger);
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x4394ea02, Offset: 0xa000
// Size: 0xa4
function function_2244edb0(e_player) {
    if (isplayer(e_player)) {
        if (!level flag::get_any([#"hash_25fe180b96ddb969", #"hash_514ccaae7a18d0fa"])) {
            self sethintstring(#"hash_58431bdb2fd8fb05");
            return true;
        } else {
            return false;
        }
    }
    return false;
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x805822aa, Offset: 0xa0b0
// Size: 0x78
function function_942a2c48() {
    level endon(#"end_game");
    while (true) {
        self waittill(#"trigger");
        level flag::set(#"hash_514ccaae7a18d0fa");
        level thread function_920c7b4b();
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x46ac9248, Offset: 0xa130
// Size: 0x394
function function_920c7b4b() {
    level endon(#"end_game", #"hash_4fe5f8878c1357da");
    var_8263605f = getent("vhs_vcr", "targetname");
    var_8263605f playsound(#"hash_101c4836e7441e61");
    var_8263605f playloopsound(#"hash_71e903f03cdd95c7");
    level.var_ca0aefec = getentarray("television_damage_proxy", "targetname");
    level.var_d6c3dbb4 = [];
    if (isarray(level.var_ca0aefec)) {
        level.var_d6c3dbb4[#"sequence1"] = array::randomize(level.var_ca0aefec);
        var_6fe4d37f = array::randomize(level.var_ca0aefec);
        level.var_d6c3dbb4[#"sequence2"] = arraycombine(level.var_d6c3dbb4[#"sequence1"], var_6fe4d37f, 1);
        var_6fe4d37f = array::randomize(level.var_ca0aefec);
        level.var_d6c3dbb4[#"sequence3"] = arraycombine(level.var_d6c3dbb4[#"sequence2"], var_6fe4d37f, 1);
    }
    function_a73a327a(2);
    wait(2);
    for (i = 1; i <= 3; i++) {
        level.var_1e36d56 = 0;
        function_33cf6f75(level.var_d6c3dbb4[#"sequence" + i], 0);
        wait(1);
        function_33cf6f75(level.var_d6c3dbb4[#"sequence" + i], undefined, 1);
        array::thread_all(level.var_ca0aefec, &function_7d36e498);
        level thread function_7921db45(i);
        level waittill(#"hash_70d8384a35c119f4");
        wait(1);
    }
    level thread function_a73a327a(2);
    var_8263605f playsound(#"hash_58111b194c4875e7");
    var_8263605f stoploopsound();
    /#
        iprintlnbold("<unknown string>");
    #/
    level flag::set(#"hash_25fe180b96ddb969");
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 3, eflags: 0x2 linked
// Checksum 0xf89b3141, Offset: 0xa4d0
// Size: 0x390
function function_33cf6f75(var_ca0aefec, var_fdea0c17 = undefined, var_2549cdb0 = undefined) {
    if (is_true(var_2549cdb0)) {
        for (i = 0; i < var_ca0aefec.size; i++) {
            s_screen = struct::get(var_ca0aefec[i].target, "targetname");
            if (isdefined(s_screen.model)) {
                s_screen.mdl = util::spawn_model(s_screen.model, s_screen.origin, s_screen.angles);
                level thread function_c690f49d(s_screen);
            }
            wait(1.5);
            if (isdefined(s_screen.mdl)) {
                s_screen.mdl stoploopsound();
                s_screen.mdl playsound(#"hash_66939a7693efd8db");
            }
            if (isdefined(s_screen.mdl)) {
                s_screen.mdl delete();
            }
        }
        return;
    }
    if (is_true(var_fdea0c17)) {
        foreach (entity in var_ca0aefec) {
            s_screen = struct::get(entity.target, "targetname");
            if (isdefined(s_screen.model) && !isdefined(s_screen.mdl)) {
                s_screen.mdl = util::spawn_model(s_screen.model, s_screen.origin, s_screen.angles);
                level thread function_c690f49d(s_screen, 1);
            }
        }
        return;
    }
    foreach (entity in var_ca0aefec) {
        s_screen = struct::get(entity.target, "targetname");
        if (isdefined(s_screen.mdl)) {
            s_screen.mdl stoploopsound();
            s_screen.mdl playsound(#"hash_66939a7693efd8db");
        }
        if (isdefined(s_screen.mdl)) {
            s_screen.mdl delete();
        }
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 2, eflags: 0x2 linked
// Checksum 0x8b13dc11, Offset: 0xa868
// Size: 0x14c
function function_c690f49d(s_screen, var_6f984799 = 0) {
    str_alias = #"hash_4af7e4baa1e9ebd5";
    if (!var_6f984799) {
        switch (s_screen.model) {
        case #"hash_3ba44d5bd7f95189":
            str_alias = #"hash_12dc213653f3d657";
            break;
        case #"hash_210abd506a527d7c":
            str_alias = #"hash_2662d7b497d59042";
            break;
        case #"hash_3962b0086020f11c":
            str_alias = #"hash_60370a4ca3a8e8c2";
            break;
        case #"hash_70991d20ad21c42d":
            str_alias = #"hash_adc4b5656362597";
            break;
        }
    }
    if (isdefined(s_screen.mdl)) {
        s_screen.mdl playsound(str_alias);
        s_screen.mdl playloopsound(#"hash_3adcb14cf7ce8ce4");
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0xe9c1828e, Offset: 0xa9c0
// Size: 0xb2
function function_7d36e498() {
    level endon(#"hash_4fe5f8878c1357da", #"end_game", #"hash_70d8384a35c119f4");
    while (true) {
        waitresult = self waittill(#"damage");
        if (isplayer(waitresult.attacker)) {
            level notify(#"hash_452cf48337ae8aff", {#entity:self});
            wait(1);
        }
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x7dbe1dc5, Offset: 0xaa80
// Size: 0x54
function function_1affbba0() {
    level endon(#"end_game");
    function_a73a327a(2);
    level flag::clear(#"hash_514ccaae7a18d0fa");
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x88d86abf, Offset: 0xaae0
// Size: 0x338
function function_7921db45(index) {
    level endon(#"end_game");
    while (true) {
        waitresult = level waittill(#"hash_452cf48337ae8aff");
        entity = waitresult.entity;
        if (entity === level.var_d6c3dbb4[#"sequence" + index][level.var_1e36d56]) {
            s_screen = struct::get(entity.target, "targetname");
            if (!isdefined(s_screen.mdl)) {
                s_screen.mdl = util::spawn_model(s_screen.model, s_screen.origin, s_screen.angles);
                level thread function_c690f49d(s_screen);
            }
            if (level.var_1e36d56 > 0 && entity != level.var_d6c3dbb4[#"sequence" + index][level.var_1e36d56 - 1]) {
                var_75afea3b = level.var_d6c3dbb4[#"sequence" + index][level.var_1e36d56 - 1];
                var_26be52fa = struct::get(var_75afea3b.target, "targetname");
                if (isdefined(var_26be52fa.mdl)) {
                    var_26be52fa.mdl stoploopsound();
                    var_26be52fa.mdl playsound(#"hash_66939a7693efd8db");
                }
                if (isdefined(var_26be52fa.mdl)) {
                    var_26be52fa.mdl delete();
                }
            }
            if (level.var_d6c3dbb4[#"sequence" + index].size - 1 === level.var_1e36d56) {
                level notify(#"hash_70d8384a35c119f4");
                break;
            }
            level.var_1e36d56++;
            continue;
        }
        level thread function_1affbba0();
        waitframe(1);
        var_8263605f = getent("vhs_vcr", "targetname");
        var_8263605f playsound(#"hash_732cf9d0eaf6f9a0");
        var_8263605f stoploopsound();
        level notify(#"hash_4fe5f8878c1357da");
        break;
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0xcf06ab52, Offset: 0xae20
// Size: 0x8a
function function_a73a327a(var_b05db174) {
    level endon(#"end_game");
    for (i = 1; i <= var_b05db174; i++) {
        function_33cf6f75(level.var_ca0aefec, 1);
        wait(1);
        function_33cf6f75(level.var_ca0aefec, 0);
        wait(1);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 2, eflags: 0x2 linked
// Checksum 0x2f409, Offset: 0xaeb8
// Size: 0x26
function function_8cf6a181(var_a276c861, var_19e802fa) {
    if (var_a276c861 || var_19e802fa) {
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x7096089e, Offset: 0xaee8
// Size: 0x47c
function function_4d5c7397(*var_a276c861) {
    callback::on_bleedout(&function_be3b6598);
    callback::on_disconnect(&function_be3b6598);
    level flag::set(#"hash_4be36d666c75b752");
    var_55c78eeb = struct::get("s_new_television", "targetname");
    var_55c78eeb.mdl = util::spawn_model(#"hash_3962b0086020f11c", var_55c78eeb.origin, var_55c78eeb.angles);
    var_55c78eeb.mdl playsound(#"hash_4af7e4baa1e9ebd5");
    var_55c78eeb.mdl playloopsound(#"hash_3adcb14cf7ce8ce4");
    var_46ae4489 = struct::get(var_55c78eeb.target, "targetname");
    level.var_72e30665 = var_46ae4489 zm_unitrigger::function_fac87205(#"hash_3f6a3a3a3ad8dd09", 32);
    var_55c78eeb.mdl setmodel(#"hash_210abd506a527d7c");
    var_55c78eeb.mdl playsound(#"hash_2662d7b497d59042");
    var_55c78eeb.mdl playloopsound(#"hash_d6ac9173e1059db");
    var_b510e160 = struct::get_array("s_little_girl", "targetname");
    level.var_6627533b = [];
    foreach (s_pos in var_b510e160) {
        if (isdefined(s_pos.script_int) && s_pos.script_int != 1) {
            if (!isdefined(level.var_6627533b)) {
                level.var_6627533b = [];
            } else if (!isarray(level.var_6627533b)) {
                level.var_6627533b = array(level.var_6627533b);
            }
            if (!isinarray(level.var_6627533b, s_pos)) {
                level.var_6627533b[level.var_6627533b.size] = s_pos;
            }
        }
    }
    level thread function_2a0666fe(level.var_72e30665);
    level thread function_dd67f40a();
    level flag::wait_till_any([#"hash_2272df43583cd34a", #"hash_2e2d9dcbebc02d13"]);
    /#
        iprintlnbold("<unknown string>");
    #/
    level flag::clear(#"hash_4be36d666c75b752");
    if (level flag::get(#"hash_2272df43583cd34a")) {
        if (isplayer(level.var_72e30665)) {
            level.var_72e30665 thread function_6f4c3279();
        }
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x23f37d40, Offset: 0xb370
// Size: 0x154
function function_6f4c3279() {
    level endon(#"end_game");
    self endon(#"death", #"disconnect");
    while (is_true(self.var_b895a3ff)) {
        wait(1);
    }
    wait(2);
    foreach (perk in level.var_b8be892e) {
        var_11868f5d = self namespace_791d0451::function_b852953c(perk);
        if (!isinarray(self.var_7341f980, perk)) {
            self namespace_791d0451::function_3fecad82(var_11868f5d);
        }
    }
    /#
        iprintlnbold("<unknown string>");
    #/
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x891df113, Offset: 0xb4d0
// Size: 0x1d2
function function_dd67f40a() {
    level endon(#"end_game", #"hash_2e2d9dcbebc02d13", #"hash_2272df43583cd34a");
    while (true) {
        var_209f99e7 = 0;
        foreach (player in getplayers()) {
            if (is_true(player.var_b895a3ff)) {
                if (!is_true(level.var_df6282df)) {
                    level thread function_c0151da7();
                    level notify(#"hash_7f462520c4a4d2dc");
                    level.var_df6282df = 1;
                }
                var_209f99e7 = 1;
                continue;
            }
            level clientfield::set("" + #"hash_1050257bf996b481", 0);
        }
        if (!var_209f99e7) {
            level notify(#"hash_1f239a8914b09591");
            function_212b0926(1, 1);
            level.var_df6282df = 0;
        }
        wait(1);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x4f650eb8, Offset: 0xb6b0
// Size: 0x112
function function_c0151da7() {
    level endon(#"end_game", #"hash_1f239a8914b09591", #"hash_2e2d9dcbebc02d13");
    level thread function_791bce0();
    for (i = 0; i < 3; i++) {
        function_f905bbc1(i);
        level waittill(#"hash_5d2dd6ae165f73df");
        if (i == 2) {
            level flag::set(#"hash_2272df43583cd34a");
            waitframe(1);
            function_212b0926(1, 0);
        } else {
            function_212b0926();
        }
        wait(1);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x5457a710, Offset: 0xb7d0
// Size: 0xd0
function function_791bce0() {
    level endon(#"end_game", #"hash_1f239a8914b09591", #"hash_2272df43583cd34a", #"hash_2e2d9dcbebc02d13");
    while (true) {
        level waittill(#"hash_764354347c05639d");
        if (isdefined(level.var_53eb5f78)) {
            level.var_53eb5f78--;
            if (level.var_53eb5f78 == 0) {
                level notify(#"hash_5d2dd6ae165f73df");
                /#
                    iprintlnbold("<unknown string>");
                #/
            }
        }
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x8f553d75, Offset: 0xb8a8
// Size: 0x2d4
function function_f905bbc1(n_num) {
    level endon(#"end_game", #"hash_1f239a8914b09591", #"hash_2e2d9dcbebc02d13");
    level.var_53eb5f78 = 3;
    var_b510e160 = struct::get_array("s_little_girl", "targetname");
    var_cdbf56b2 = function_80fdd2aa(var_b510e160, 1);
    switch (n_num) {
    case 0:
        var_3709608a = 1;
        break;
    case 1:
        var_3709608a = 5;
        break;
    case 2:
        var_3709608a = 9;
        break;
    default:
        break;
    }
    for (i = 1; i <= var_3709608a; i++) {
        s_little_girl = function_80fdd2aa(var_b510e160, i);
        if (!isdefined(s_little_girl.var_a1e4509e)) {
            s_little_girl.var_a1e4509e = util::spawn_model(#"hash_46e513123e9c645f", var_cdbf56b2.origin, var_cdbf56b2.angles);
            s_little_girl.var_a1e4509e.index = i;
            s_little_girl.var_a1e4509e val::set(#"hash_4c77d3d6044fc98b", "takedamage", 1);
            s_little_girl.var_a1e4509e thread function_7306a18a();
            if (!isdefined(level.var_e1148dd8)) {
                level.var_e1148dd8 = [];
            } else if (!isarray(level.var_e1148dd8)) {
                level.var_e1148dd8 = array(level.var_e1148dd8);
            }
            if (!isinarray(level.var_e1148dd8, s_little_girl.var_a1e4509e)) {
                level.var_e1148dd8[level.var_e1148dd8.size] = s_little_girl.var_a1e4509e;
            }
        }
    }
    wait(0.5);
    level thread function_4a4eb289();
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x395270bc, Offset: 0xbb88
// Size: 0x26c
function function_4a4eb289() {
    level endon(#"end_game", #"hash_5d2dd6ae165f73df", #"hash_1f239a8914b09591", #"hash_2272df43583cd34a", #"hash_2e2d9dcbebc02d13");
    if (!isarray(level.var_e1148dd8)) {
        return;
    }
    if (level.var_e1148dd8.size != 1) {
        while (true) {
            level.var_6627533b = array::randomize(level.var_6627533b);
            var_36a90c9e = 0;
            foreach (var_a1e4509e in level.var_e1148dd8) {
                if (!var_36a90c9e) {
                    while (true) {
                        var_f8f85893 = array::random(level.var_e1148dd8);
                        if (level.var_65bd0e4e !== var_f8f85893) {
                            level.var_65bd0e4e = var_f8f85893;
                            var_36a90c9e = 1;
                            break;
                        }
                        waitframe(1);
                    }
                }
                var_a1e4509e thread function_c226ba4a();
            }
            level waittilltimeout(2.5, #"hash_764354347c05639d");
            function_212b0926();
            wait(1);
        }
        return;
    }
    level.var_65bd0e4e = level.var_e1148dd8[0];
    level.var_65bd0e4e.var_b62c64f9 = 1;
    level clientfield::set("" + #"hash_1050257bf996b481", level.var_65bd0e4e.index);
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x70e452c3, Offset: 0xbe00
// Size: 0x18c
function function_c226ba4a() {
    level endon(#"end_game", #"hash_5d2dd6ae165f73df", #"hash_1f239a8914b09591", #"hash_2272df43583cd34a", #"hash_2e2d9dcbebc02d13");
    if (!isdefined(self.index)) {
        return;
    }
    s_little_girl = level.var_6627533b[self.index - 1];
    self clientfield::set("" + #"hash_2777a21403131281", 1);
    self moveto(s_little_girl.origin, 0.1, 0, 0);
    self waittill(#"movedone");
    waitframe(1);
    self clientfield::set("" + #"hash_2777a21403131281", 0);
    if (self === level.var_65bd0e4e) {
        self.var_b62c64f9 = 1;
        waitframe(1);
        level clientfield::set("" + #"hash_1050257bf996b481", s_little_girl.script_int);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 2, eflags: 0x2 linked
// Checksum 0x24059fe5, Offset: 0xbf98
// Size: 0x3ac
function function_212b0926(var_8046dccf = 0, b_all = 0) {
    level endon(#"end_game", #"hash_1f239a8914b09591", #"hash_2e2d9dcbebc02d13");
    var_b510e160 = struct::get_array("s_little_girl", "targetname");
    if (!var_8046dccf) {
        if (isarray(level.var_e1148dd8) && level.var_e1148dd8.size != 1) {
            foreach (var_f9e2a3db in level.var_e1148dd8) {
                if (isdefined(var_f9e2a3db)) {
                    s_little_girl = function_80fdd2aa(var_b510e160, 1);
                    if (isvec(s_little_girl.origin)) {
                        var_f9e2a3db thread function_6e359973(s_little_girl.origin);
                    }
                }
            }
        }
    } else if (!b_all) {
        if (isarray(level.var_e1148dd8)) {
            foreach (var_f9e2a3db in level.var_e1148dd8) {
                if (var_f9e2a3db !== level.var_65bd0e4e) {
                    var_f9e2a3db clientfield::set("" + #"hash_2777a21403131281", 0);
                    waitframe(1);
                    if (isdefined(var_f9e2a3db)) {
                        var_f9e2a3db delete();
                    }
                }
            }
        }
    } else if (isarray(level.var_e1148dd8)) {
        foreach (var_f9e2a3db in level.var_e1148dd8) {
            var_f9e2a3db clientfield::set("" + #"hash_2777a21403131281", 0);
            waitframe(1);
            if (isdefined(var_f9e2a3db)) {
                var_f9e2a3db delete();
            }
        }
        level.var_e1148dd8 = [];
    }
    level clientfield::set("" + #"hash_1050257bf996b481", 0);
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x43f7b2ad, Offset: 0xc350
// Size: 0xdc
function function_6e359973(v_target_pos) {
    level endon(#"end_game");
    self endon(#"death");
    self clientfield::set("" + #"hash_2777a21403131281", 1);
    self moveto(v_target_pos, 0.5, 0, 0);
    self.var_b62c64f9 = 0;
    self waittill(#"movedone");
    waitframe(1);
    self clientfield::set("" + #"hash_2777a21403131281", 0);
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x3ea2aeb, Offset: 0xc438
// Size: 0x5c
function function_be3b6598() {
    self clientfield::set_to_player("" + #"hash_1c5f8a62c31e12a5", 0);
    if (self === level.var_72e30665) {
        level flag::set(#"hash_2e2d9dcbebc02d13");
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0xac502121, Offset: 0xc4a0
// Size: 0x258
function function_7306a18a() {
    level endon(#"end_game", #"hash_2e2d9dcbebc02d13", #"hash_2272df43583cd34a", #"hash_1f239a8914b09591");
    while (true) {
        waitresult = self waittill(#"damage");
        player = waitresult.attacker;
        if (isplayer(player) && is_true(player.var_b895a3ff) && self === level.var_65bd0e4e && is_true(self.var_b62c64f9) || is_true(level.var_ec48a2e1)) {
            if (isdefined(level.var_53eb5f78) && level.var_53eb5f78 <= 1) {
                self playsoundtoplayer(#"hash_3d7f889c68e0e3a0", player);
            } else {
                self playsoundtoplayer(#"hash_2e417766f83520aa", player);
            }
            level notify(#"hash_764354347c05639d");
            if (isarray(level.var_e1148dd8) && level.var_e1148dd8.size != 1) {
                self.var_b62c64f9 = 0;
            }
            if (damagefeedback::dodamagefeedback(waitresult.weapon, player)) {
                player thread damagefeedback::update(waitresult.mod, waitresult.inflictor, undefined, waitresult.weapon, self);
            }
            /#
                iprintlnbold("<unknown string>");
            #/
        }
        wait(0.1);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0xa97f8c90, Offset: 0xc700
// Size: 0x38e
function function_2a0666fe(player) {
    level endon(#"end_game", #"hash_2e2d9dcbebc02d13", #"hash_2272df43583cd34a");
    while (true) {
        if (isalive(player) && !is_true(player.var_b895a3ff)) {
            var_3c29eed1 = function_6d122cef(player.origin);
            if (!isdefined(var_3c29eed1)) {
                waitframe(1);
                continue;
            }
            playfx(#"hash_2a291b035fc8a73d", var_3c29eed1.origin, anglestoforward(var_3c29eed1.angles), (0, 0, 1));
            /#
                iprintlnbold("<unknown string>");
            #/
            level.var_a1e4509e = util::spawn_model(#"hash_46e513123e9c645f", var_3c29eed1.origin, var_3c29eed1.angles);
            level.var_a1e4509e notsolid();
            level.var_a1e4509e clientfield::set("" + #"hash_696368486685bb5c", 1);
            level.var_a1e4509e thread function_e1db8d2d(player);
            level.var_a1e4509e thread function_8857dc69();
            level waittilltimeout(20, #"hash_7f462520c4a4d2dc");
            level.var_a1e4509e clientfield::set("" + #"hash_696368486685bb5c", 0);
            playfx(#"hash_2a291b035fc8a73d", level.var_a1e4509e.origin, anglestoforward(level.var_a1e4509e.angles), (0, 0, 1));
            foreach (player in function_a1ef346b()) {
                player clientfield::set_to_player("" + #"hash_1c5f8a62c31e12a5", 0);
            }
            waitframe(5);
            if (isdefined(level.var_a1e4509e)) {
                level.var_a1e4509e delete();
            }
            var_c894aa01 = randomintrange(120, 240);
            wait(var_c894aa01);
        }
        wait(1);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 0, eflags: 0x2 linked
// Checksum 0x8221c74b, Offset: 0xca98
// Size: 0x222
function function_8857dc69() {
    level endon(#"end_game", #"hash_2e2d9dcbebc02d13", #"hash_2272df43583cd34a");
    self endon(#"death");
    while (true) {
        a_players = function_a1ef346b();
        if (isarray(a_players)) {
            foreach (player in a_players) {
                dis = distancesquared(self.origin, player.origin);
                if (dis <= sqr(800)) {
                    player clientfield::set_to_player("" + #"hash_1c5f8a62c31e12a5", 1);
                } else {
                    player clientfield::set_to_player("" + #"hash_1c5f8a62c31e12a5", 0);
                }
                if (dis <= sqr(60)) {
                    level notify(#"hash_7f462520c4a4d2dc");
                    if (!player laststand::player_is_in_laststand()) {
                        player zm_laststand::instakill_player();
                    }
                }
            }
        }
        wait(1);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0xf3e1b577, Offset: 0xccc8
// Size: 0x198
function function_e1db8d2d(player) {
    level endon(#"end_game", #"hash_2e2d9dcbebc02d13", #"hash_2272df43583cd34a");
    self endon(#"death");
    while (true) {
        if (isalive(player) && !is_true(player.var_b895a3ff)) {
            dis = distance(self.origin, player.origin);
            n_time = dis / 30;
            if (n_time < 1) {
                n_time = 1;
            } else if (n_time > n_time) {
                n_time = n_time;
            }
            self moveto(player.origin, n_time);
            v_face_angles = vectortoangles(player.origin - self.origin);
            self rotateto((0, v_face_angles[1], 0) + (0, 90, 0), 0.5);
        }
        wait(0.5);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 1, eflags: 0x2 linked
// Checksum 0x1d4bb948, Offset: 0xce68
// Size: 0x2f2
function function_6d122cef(v_origin) {
    level endon(#"end_game", #"hash_2e2d9dcbebc02d13", #"hash_1f239a8914b09591");
    while (true) {
        var_119decd6 = randomintrange(400, 600);
        new_angles = randomintrange(1, 360);
        var_e9104764 = cos(new_angles) * var_119decd6 + v_origin[0];
        var_a3b7bcb0 = sin(new_angles) * var_119decd6 + v_origin[1];
        new_vector = (var_e9104764, var_a3b7bcb0, v_origin[2]);
        traceresult = groundtrace(new_vector, new_vector + (0, 0, -100), 0, 0);
        if (isdefined(traceresult[#"position"])) {
            var_bf1cc8e2 = traceresult[#"position"];
        }
        spawn_loc = getclosestpointonnavmesh(var_bf1cc8e2, 100, 15);
        if (isdefined(spawn_loc)) {
            zone = zm_zonemgr::get_zone_from_position(spawn_loc);
            /#
                if (isdefined(zone)) {
                    iprintlnbold(zone);
                }
            #/
            if (is_true(zm_zonemgr::zone_is_enabled(zone)) && is_true(level.zones[zone].is_active) && zm_utility::check_point_in_playable_area(spawn_loc)) {
                /#
                    iprintlnbold(spawn_loc[0] + "<unknown string>" + spawn_loc[1] + "<unknown string>" + spawn_loc[2]);
                #/
                s_spawn_loc = spawnstruct();
                s_spawn_loc.origin = spawn_loc;
                s_spawn_loc.angles = vectortoangles(v_origin - spawn_loc);
                return s_spawn_loc;
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_dbaeabbd/namespace_dbaeabbd
// Params 2, eflags: 0x2 linked
// Checksum 0x4603c4c0, Offset: 0xd168
// Size: 0x3ac
function function_ce6f66c8(var_a276c861, var_19e802fa) {
    if (var_a276c861 || var_19e802fa) {
    }
    foreach (player in getplayers()) {
        player clientfield::set_to_player("" + #"hash_1c5f8a62c31e12a5", 0);
    }
    level clientfield::set("" + #"hash_1050257bf996b481", 0);
    callback::remove_on_disconnect(&function_be3b6598);
    callback::remove_callback(#"on_player_bleedout", &function_be3b6598);
    if (isdefined(level.var_a1e4509e)) {
        level.var_a1e4509e delete();
    }
    var_c95c05d0 = getent("mannequin_girl_doll", "targetname");
    playfx(#"hash_116bd1b8ea044032", var_c95c05d0.origin, anglestoforward(var_c95c05d0.angles), anglestoup(var_c95c05d0.angles));
    if (level flag::get(#"hash_2e2d9dcbebc02d13")) {
        waitframe(1);
        function_212b0926(1, 1);
        return;
    }
    if (isdefined(level.var_65bd0e4e) && level flag::get(#"hash_2272df43583cd34a")) {
        level.var_65bd0e4e clientfield::set("" + #"hash_3215084197667777", 1);
        level.var_65bd0e4e clientfield::set("" + #"hash_2777a21403131281", 0);
        level.var_65bd0e4e moveto(level.var_65bd0e4e.origin + (0, 0, 10), 3);
        level.var_65bd0e4e waittill(#"movedone");
        level.var_65bd0e4e clientfield::set("" + #"hash_3215084197667777", 0);
        waitframe(1);
        if (isdefined(level.var_65bd0e4e)) {
            level.var_65bd0e4e delete();
        }
    }
}

/#

    // Namespace namespace_dbaeabbd/namespace_dbaeabbd
    // Params 0, eflags: 0x0
    // Checksum 0xec9f2f09, Offset: 0xd520
    // Size: 0xbc
    function function_37597f29() {
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&cmd);
    }

    // Namespace namespace_dbaeabbd/namespace_dbaeabbd
    // Params 1, eflags: 0x0
    // Checksum 0x9850d485, Offset: 0xd5e8
    // Size: 0x42a
    function cmd(cmd) {
        switch (cmd) {
        case #"hash_6ce1b9d147ae66a4":
            level thread function_ef77607f();
            break;
        case #"hash_247aab3abf6e12d0":
            level flag::set(#"hash_60a7df7afef780c8");
            break;
        case #"give_reward":
            foreach (player in function_a1ef346b()) {
                foreach (perk in level.var_b8be892e) {
                    var_11868f5d = player namespace_791d0451::function_b852953c(perk);
                    if (!isinarray(player.var_7341f980, var_11868f5d)) {
                        player namespace_791d0451::function_3fecad82(var_11868f5d);
                    }
                }
            }
            break;
        case #"hash_3a4ae233094bafaf":
            level.var_ec48a2e1 = 1;
            function_212b0926(1, 1);
            var_b510e160 = struct::get_array("<unknown string>", "<unknown string>");
            level.var_6627533b = [];
            foreach (s_pos in var_b510e160) {
                if (isdefined(s_pos.script_int) && s_pos.script_int != 1) {
                    if (!isdefined(level.var_6627533b)) {
                        level.var_6627533b = [];
                    } else if (!isarray(level.var_6627533b)) {
                        level.var_6627533b = array(level.var_6627533b);
                    }
                    if (!isinarray(level.var_6627533b, s_pos)) {
                        level.var_6627533b[level.var_6627533b.size] = s_pos;
                    }
                }
            }
            level thread function_c0151da7();
            break;
        case #"hash_1340b7323cd38cde":
            setdvar(#"hash_4f9bc320ac30703d", 1);
            break;
        case #"hash_60d9b2ec2a80c5ae":
            array::thread_all(level.var_3ab17de8, &function_7e0ee279);
            break;
        default:
            break;
        }
    }

#/
