// Atian COD Tools GSC CW decompiler test
#using script_22caeaa9257194b8;
#using script_3919f386abede84;
#using script_2529b6df09e4d9d1;
#using script_45a1c6f3704b3b15;
#using script_68364cfa1098cdd4;
#using scripts\weapons\cp\weaponobjects.gsc;
#using script_691641bee32b9cd5;
#using scripts\cp_common\spawn_manager.gsc;
#using scripts\cp_common\skipto.gsc;
#using scripts\cp_common\oed.gsc;
#using scripts\cp_common\gamedifficulty.gsc;
#using scripts\cp_common\devgui.gsc;
#using scripts\cp_common\debug.gsc;
#using scripts\cp_common\challenges.gsc;
#using scripts\cp_common\art.gsc;
#using scripts\cp_common\util.gsc;
#using script_5a9516c83d1ec8fc;
#using scripts\cp_common\gametypes\globallogic.gsc;
#using scripts\core_common\scriptmodels_shared.gsc;
#using scripts\core_common\status_effects\status_effects.gsc;
#using scripts\weapons\antipersonnelguidance.gsc;
#using scripts\core_common\vehicle_drivable_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\tweakables_shared.gsc;
#using scripts\core_common\turret_shared.gsc;
#using scripts\core_common\traps_deployable.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\string_shared.gsc;
#using scripts\core_common\serverfaceanim_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\oob.gsc;
#using script_7cc5fb39b97494c4;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\load_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\containers_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\clientids_shared.gsc;
#using scripts\core_common\audio_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace load;

// Namespace load/createstruct
// Params 1, eflags: 0x26 linked
// Checksum 0x685680c, Offset: 0x398
// Size: 0x23c
function private event_handler[createstruct] function_e0a8e4ba(struct) {
    foreach (var_55e4dfcf, k in ["script_objective", "script_likelyenemy"]) {
        if (!isdefined(level.var_41204f29)) {
            level.var_41204f29 = [];
        } else if (!isarray(level.var_41204f29)) {
            level.var_41204f29 = array(level.var_41204f29);
        }
        if (!isinarray(level.var_41204f29, tolower(k))) {
            level.var_41204f29[level.var_41204f29.size] = tolower(k);
        }
    }
    level.var_5e990e96 = arraycopy(level.var_41204f29);
    if (isdefined(level.struct)) {
        temp = arraycopy(level.struct);
        level.struct = [];
        foreach (struct in temp) {
            struct::init(struct);
        }
    }
    function_6c07201b("CreateStruct", &function_e0a8e4ba);
}

// Namespace load/load
// Params 0, eflags: 0x1
// Checksum 0xc18072e0, Offset: 0x5e0
// Size: 0x3c
function autoexec function_aeb1baea() {
    assert(!isdefined(level.var_f18a6bd6));
    level.var_f18a6bd6 = &function_5e443ed1;
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0x3702db1c, Offset: 0x628
// Size: 0x36c
function function_5e443ed1() {
    assert(isdefined(level.first_frame), "<unknown string>");
    if (is_true(level._loadstarted)) {
        return;
    }
    level._loadstarted = 1;
    function_fbb2b180();
    setdvar(#"hash_2b7eabe1e310b191", 0);
    setdvar(#"g_speed", 160);
    setdvar(#"ik_terrain_vel_min", 120);
    setdvar(#"ik_terrain_vel_max", 150);
    var_4a3ec1d1 = getgametypesetting(#"hash_72a2919d2ac65850");
    setdvar(#"hash_7188be5be867a9ba", var_4a3ec1d1);
    setdvar(#"hash_862358d532e674c", var_4a3ec1d1);
    level.aitriggerspawnflags = getaitriggerflags();
    level.vehicletriggerspawnflags = getvehicletriggerflags();
    level flag::init("wait_and_revive");
    level flag::init("instant_revive");
    util::registerclientsys("lsm");
    level thread register_clientfields();
    setup_traversals();
    level thread onallplayersready();
    gamedifficulty::setskill(undefined, level.var_648a2ef0);
    system::function_c11b0642();
    art_review();
    level.growing_hitmarker = 1;
    level.var_6454ed48 = 0;
    level flag::set(#"load_main_complete");
    level flag::set("draft_complete");
    level.var_f320af85 = &function_e029c994;
    if (isdefined(level.var_b28c2c3a) && isdefined(level.var_46d8992a)) {
        if (level.var_b28c2c3a == level.var_46d8992a) {
            world.var_b86bf11e = undefined;
        }
    }
    level thread function_c9740807();
    level thread function_2dd7fc9e();
}

// Namespace load/load
// Params 0, eflags: 0x6 linked
// Checksum 0x4ee01180, Offset: 0x9a0
// Size: 0xe4
function private function_fbb2b180() {
    function_3ca3c6e4();
    resetglass();
    if (isdefined(level.var_82eb1dab)) {
        foreach (deathmodel in level.var_82eb1dab) {
            deathmodel delete();
        }
        level.var_82eb1dab = undefined;
    }
    level flag::set(#"hash_507a4486c4a79f1d");
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0x762d38a2, Offset: 0xa90
// Size: 0xc4
function function_2dd7fc9e() {
    level flag::wait_till("all_players_spawned");
    setdvar(#"ui_allowdisplaycontinue", 1);
    if (isloadingcinematicplaying()) {
        do {
            waitframe(1);
        } while (isloadingcinematicplaying());
    } else {
        wait(1);
    }
    level util::streamer_wait(undefined, 2, 45);
    level flag::set(#"loaded");
}

// Namespace load/load
// Params 0, eflags: 0x0
// Checksum 0xdb92d837, Offset: 0xb60
// Size: 0x24
function function_bc5d59fb() {
    setdvar(#"ui_allowdisplaycontinue", 0);
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0x186e2777, Offset: 0xb90
// Size: 0x1c
function function_ba5622e() {
    util::function_49cd62a8("level_is_go");
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0xf0cd81e9, Offset: 0xbb8
// Size: 0x64
function function_eb7b7382() {
    level flag::wait_till(#"loaded");
    level flag::wait_till(#"hash_321357f5b78401ef");
    level flag::set("level_is_go");
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0x5197e931, Offset: 0xc28
// Size: 0x10c
function function_c9740807() {
    player = getplayers()[0];
    if (isplayer(player) && player util::function_a1d6293()) {
        return;
    }
    checkpointcreate();
    checkpointcommit();
    flag::wait_till("all_players_spawned");
    wait(0.5);
    player = getplayers()[0];
    if (isplayer(player) && player util::function_a1d6293()) {
        return;
    }
    checkpointcreate();
    checkpointcommit();
}

// Namespace load/load
// Params 3, eflags: 0x2 linked
// Checksum 0xd302454c, Offset: 0xd40
// Size: 0x34
function function_e029c994(player, *target, *weapon) {
    return !weapon oob::isoutofbounds();
}

// Namespace load/load
// Params 0, eflags: 0x0
// Checksum 0x9d58a8e, Offset: 0xd80
// Size: 0x114
function player_fake_death() {
    level notify(#"fake_death");
    self notify(#"fake_death");
    self takeallweapons();
    self allowstand(0);
    self allowcrouch(0);
    self allowprone(1);
    self val::set(#"fakedeath", "ignoreme", 1);
    self val::set(#"fakedeath", "takedamage", 0);
    wait(1);
    self val::set(#"fakedeath", "freezecontrols", 1);
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0xbddc31f3, Offset: 0xea0
// Size: 0xae
function init_traverse() {
    point = getent(self.target, "targetname");
    if (isdefined(point)) {
        self.traverse_height = point.origin[2];
        point delete();
        return;
    }
    point = struct::get(self.target, "targetname");
    if (isdefined(point)) {
        self.traverse_height = point.origin[2];
    }
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0xba5aa797, Offset: 0xf58
// Size: 0x84
function setup_traversals() {
    potential_traverse_nodes = getallnodes();
    for (i = 0; i < potential_traverse_nodes.size; i++) {
        node = potential_traverse_nodes[i];
        if (node.type == #"begin") {
            node init_traverse();
        }
    }
}

// Namespace load/load
// Params 1, eflags: 0x2 linked
// Checksum 0x5f99a18c, Offset: 0xfe8
// Size: 0x2a
function function_f97a8023(mission_name) {
    if (!isdefined(mission_name)) {
        return 0;
    }
    return function_dd83f1b6(mission_name);
}

// Namespace load/load
// Params 2, eflags: 0x2 linked
// Checksum 0x2d5d24b, Offset: 0x1020
// Size: 0x6c
function function_c9154eb7(var_83104433, var_585e39fb) {
    if (isdefined(var_83104433)) {
        if (!isdefined(var_585e39fb)) {
            var_585e39fb = skipto::function_455cb6c5(var_83104433);
        }
        function_cc51116c(var_83104433, var_585e39fb);
        return;
    }
    globallogic::function_7b994f00();
}

// Namespace load/load
// Params 2, eflags: 0x0
// Checksum 0x1f7fe1c6, Offset: 0x1098
// Size: 0x12c
function function_d44ed07e(var_83104433 = skipto::function_60ca00f5(), var_585e39fb) {
    if (is_true(level.var_d89799d7)) {
        function_ff52baa2();
    }
    if (isdefined(var_585e39fb)) {
        skipto::function_8722a51a(var_585e39fb, 1);
    }
    var_7c9eb9c6 = getrootmapname(var_83104433);
    level flag::clear("switchmap_preload_finished");
    level.var_d89799d7 = 1;
    level util::delay("switchmap_preload_finished", "cancel_preload", &flag::set, "switchmap_preload_finished");
    switchmap_preload(var_7c9eb9c6, level.gametype);
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0x30447f27, Offset: 0x11d0
// Size: 0x54
function function_ff52baa2() {
    level notify(#"cancel_preload");
    function_227b0384();
    level.var_d89799d7 = undefined;
    level flag::clear("switchmap_preload_finished");
}

// Namespace load/load
// Params 2, eflags: 0x2 linked
// Checksum 0xacf63574, Offset: 0x1230
// Size: 0x18c
function function_cc51116c(var_83104433, var_585e39fb = "") {
    skipto::function_8722a51a(var_585e39fb, 1);
    var_31924550 = getuimodel(function_5f72e972(#"hash_31e97ba41cad1834"), "transitionMapIdOverride");
    setuimodelvalue(var_31924550, hash(var_83104433));
    if (is_true(level.var_d89799d7)) {
        util::wait_network_frame(1);
        level flag::wait_till_timeout(25, "switchmap_preload_finished");
        level.var_d89799d7 = undefined;
        switchmap_switch();
        return;
    }
    level.var_d89799d7 = undefined;
    var_7c9eb9c6 = getrootmapname(var_83104433);
    switchmap_load(var_7c9eb9c6, level.gametype);
    util::wait_network_frame(1);
    switchmap_switch();
}

// Namespace load/load
// Params 1, eflags: 0x0
// Checksum 0x75de3c9d, Offset: 0x13c8
// Size: 0x4c0
function player_intermission(var_1ed3b46b = 1) {
    self closeingamemenu();
    level endon(#"hash_1ef9c6a01f34e17d", #"stop_intermission");
    self endon(#"death");
    self notify(#"_zombie_game_over");
    if (is_true(var_1ed3b46b)) {
        self.sessionstate = "intermission";
    }
    self.spectatorclient = -1;
    self.archivetime = 0;
    self.psoffsettime = 0;
    self.friendlydamage = undefined;
    points = struct::get_array("intermission", "targetname");
    if (!isdefined(points) || points.size == 0) {
        points = getentarray("info_intermission", "classname");
        if (points.size < 1) {
            println("<unknown string>");
            return;
        }
    }
    org = undefined;
    while (true) {
        points = array::randomize(points);
        for (i = 0; i < points.size; i++) {
            point = points[i];
            if (!isdefined(org)) {
                self spawn(point.origin, point.angles);
            }
            if (isdefined(points[i].target)) {
                if (!isdefined(org)) {
                    org = spawn("script_model", self.origin + (0, 0, -60));
                    org setmodel(#"tag_origin");
                }
                org.origin = points[i].origin;
                org.angles = points[i].angles;
                for (j = 0; j < getplayers().size; j++) {
                    player = getplayers()[j];
                    player camerasetposition(org);
                    player camerasetlookat();
                    player cameraactivate(1);
                }
                speed = 20;
                if (isdefined(points[i].speed)) {
                    speed = points[i].speed;
                }
                target_point = isdefined(struct::get(points[i].target, "targetname")) ? struct::get(points[i].target, "targetname") : getent(points[i].target, "targetname");
                dist = distance(points[i].origin, target_point.origin);
                time = dist / speed;
                var_91c3f3c4 = time * 0.25;
                if (var_91c3f3c4 > 1) {
                    var_91c3f3c4 = 1;
                }
                org moveto(target_point.origin, time, var_91c3f3c4, var_91c3f3c4);
                org rotateto(target_point.angles, time, var_91c3f3c4, var_91c3f3c4);
                wait(time);
                continue;
            }
            wait(5);
        }
    }
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0x2235ceb6, Offset: 0x1890
// Size: 0x234
function onallplayersready() {
    level flag::init("start_coop_logic");
    /#
        println("<unknown string>" + getnumexpectedplayers());
        var_f884532 = 0;
    #/
    do {
        waitframe(1);
        var_72e2b734 = getnumconnectedplayers();
        var_73f084c = getnumexpectedplayers(1);
        player_count_actual = 0;
        for (i = 0; i < level.players.size; i++) {
            if (level.players[i].sessionstate == "playing" || level.players[i].sessionstate == "spectator") {
                player_count_actual++;
            }
        }
        /#
            if (var_f884532 % 10 == 0) {
                println("<unknown string>" + var_72e2b734 + "<unknown string>" + var_73f084c);
                println("<unknown string>" + player_count_actual + "<unknown string>" + level.players.size);
            }
            var_f884532++;
        #/
    } while (var_72e2b734 < var_73f084c || player_count_actual < var_73f084c);
    setinitialplayersconnected();
    /#
        printtoprightln("<unknown string>", (1, 1, 1));
    #/
    level flag::set("all_players_connected");
    level flag::set("start_coop_logic");
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x1ad0
// Size: 0x4
function register_clientfields() {
    
}

