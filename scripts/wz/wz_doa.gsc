// Atian COD Tools GSC CW decompiler test
#using script_67c9a990c0db216c;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using script_5133d88c555e460;
#using script_36fc02e86719d0f5;
#using script_2a5bf5b4a00cee0d;
#using script_3bbf85ab4cb9f3c2;
#using script_3faf478d5b0850fe;
#using script_47851dbeea22fe66;
#using script_1ce46999727f2f2b;
#using script_164a456ce05c3483;
#using script_717759a5d2a40e63;
#using script_5f20d3b434d24884;
#using script_774302f762d76254;
#using script_6b6510e124bad778;
#using script_16910aff9d97c520;
#using script_634ae70c663d1cc9;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_350cffecd05ef6cf;
#using script_17dcb1172e441bf6;
#using script_5549681e1669c11a;
#using script_f38dc50f0e82277;
#using script_68cdf0ca5df5e;
#using scripts\core_common\globallogic\globallogic_vehicle.gsc;
#using script_413ab8fe25a61c50;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\serverfield_shared.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\load_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using script_4780230832eb22a9;

#namespace wz_doa;

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0xa9fe0aa5, Offset: 0xf30
// Size: 0x23c
function function_b4fdccf1() {
    setclearanceceiling(142);
    setsaveddvar(#"hash_61cbea77be1b7b36", 1);
    setsaveddvar(#"hash_53fc4669dcc6b181", 0);
    setsaveddvar(#"ik_enable_ai_terrain", 0);
    setsaveddvar(#"hkai_maxpathlengthchecksenabled", 1);
    setsaveddvar(#"hkai_navmeshusehierarchialpathfind", 1);
    setsaveddvar(#"player_strafespeedscale", 1);
    setsaveddvar(#"player_backspeedscale", 1);
    setsaveddvar(#"hash_5784cae91fb32baa", 0);
    setsaveddvar(#"ai_threatsight", 0);
    setsaveddvar(#"ai_secondarythreats", 0);
    setsaveddvar(#"ai_threatupdateinterval", 0);
    setsaveddvar(#"hash_61eba98da1c9944a", 0);
    setsaveddvar(#"sv_assistworkers", 0);
    if (!is_true(getdvar(#"hash_613a0a3fd49510cd"))) {
        setsaveddvar(#"hash_5b054b4a96c8fed0", 0);
    }
}

// Namespace wz_doa/level_init
// Params 1, eflags: 0x20
// Checksum 0x6d333099, Offset: 0x1178
// Size: 0x200
function event_handler[level_init] main(*eventstruct) {
    level thread lui::add_luimenu("full_screen_movie", &full_screen_movie::register);
    level.var_fb6c6113 = 0;
    serverfield::register("crab_behavior", 1, 1, "int", &function_bfd9c561);
    level callback::add_callback(#"on_host_migration_end", &hostmigration);
    /#
        assert(isdefined(level.var_f18a6bd6), "arena_hold_banner_presentation");
    #/
    load::main();
    level.callbackvehicleradiusdamage = &globallogic_vehicle::callback_vehicleradiusdamage;
    level.var_2511b5f1 = 1;
    level.var_3146aa25 = 1;
    level.var_5495fbf1 = 0;
    level.friendlyfire = 0;
    level.trackweaponstats = 0;
    level.var_6e2d52c5 = 1;
    level.var_20ad5db3 = sessionmodeiszombiesgame();
    level.var_4f69a0e8 = sessionmodeiswarzonegame();
    level.var_8cff5775.var_16411829 = [];
    function_b4fdccf1();
    level flag::wait_till("doa_game_initialized");
    function_725dd341();
    level waittill(#"hash_671684f03a58b3a3");
    level.var_8e3a3faf = 0;
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0xa46f91a5, Offset: 0x1380
// Size: 0x1c
function hostmigration(*params) {
    function_b4fdccf1();
}

// Namespace wz_doa/wz_doa
// Params 2, eflags: 0x2 linked
// Checksum 0x264aaca8, Offset: 0x13a8
// Size: 0x40
function function_bfd9c561(*oldval, newval) {
    if (!isplayer(self)) {
        return;
    }
    level.var_fb6c6113 = newval;
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x774dbb11, Offset: 0x13f0
// Size: 0x73c
function function_725dd341() {
    var_3177c2d3 = array({#shutdown:&function_ffeaed15, #activation:&function_863ffeba, #name:"island"}, {#shutdown:&function_f1ec9045, #activation:&function_529acb04, #name:"jungle"}, {#shutdown:&function_8025b684, #activation:&function_15692944, #name:"cartel"}, {#shutdown:&function_682069ef, #activation:&function_7773730f, #name:"mausoleum"}, {#shutdown:&function_6d60789, #activation:&function_d723726a, #name:"graveyard"}, {#shutdown:&function_6800d147, #activation:&function_f7295a2d, #name:"temple"}, {#shutdown:&function_507356f3, #activation:&function_eb41fd02, #name:"watertemple"}, {#shutdown:&function_e68b172f, #activation:&function_79604b5e, #name:"geothermal"}, {#shutdown:&function_d9967798, #activation:&function_8ff5e09, #name:"wintercave"}, {#shutdown:&function_ef053c43, #activation:&function_4eaa5cb4, #name:"icecave"}, {#shutdown:&function_cd588c9f, #activation:&function_db874c99, #name:"bloodlake"}, {#shutdown:&function_d70d8d1, #activation:&function_b5abde0c, #name:"witchwood"}, {#shutdown:&function_e584ce9d, #activation:&function_a077af19, #name:"alpine"}, {#shutdown:&function_f66db708, #activation:&function_a80babc3, #name:"frontyard"}, {#shutdown:&function_a9f65217, #activation:&function_c32a6622, #name:"greatroom"}, {#shutdown:&function_7519f916, #activation:&function_e26b3847, #name:"boss"});
    foreach (entry in var_3177c2d3) {
        arena = namespace_8c04284b::function_85c7d70e(entry.name);
        [[ arena ]]->function_b6954aba(entry.activation);
        [[ arena ]]->function_774497ee(entry.shutdown);
    }
    var_46058269 = namespace_3e8ab514::function_d5e7454f("jungle_1");
    [[ var_46058269 ]]->function_b6954aba(&function_89315f8a);
    [[ var_46058269 ]]->function_774497ee(&function_1f77ea0e);
    arena = namespace_8c04284b::function_85c7d70e("island");
    var_ec67aff2 = [[ arena ]]->function_ffcf1d1();
    level thread namespace_ec06fe4a::function_87612422(var_ec67aff2, vectorscale((0, 1, 0), 180), 100, 20, [[ var_46058269 ]]->function_c8fbcc3f(0));
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0xa2e86303, Offset: 0x1b38
// Size: 0x31c
function function_d85a809b(section) {
    self notify("5f861f6c2368fed1");
    self endon("5f861f6c2368fed1");
    level endon(#"game_over", #"hash_77e4bcc14697c018");
    if (section.id != 1) {
        if (!level flag::get("doa_wild_section_j2_visited")) {
            level waittill(#"hash_6e03ec8ec4c30df4");
        }
    }
    vehiclespawners = getentarray("jungle1_wild_vehicle", "targetname");
    while (isdefined(level.var_8cff5775.var_182fb75a)) {
        wait(1);
    }
    foreach (vehicle in vehiclespawners) {
        veh = vehicle spawner::spawn(1, "wild_vehicle", vehicle.origin, vehicle.angles);
        if (isdefined(veh)) {
            veh makeusable();
            if (!isdefined(level.var_8cff5775.var_16411829)) {
                level.var_8cff5775.var_16411829 = [];
            } else if (!isarray(level.var_8cff5775.var_16411829)) {
                level.var_8cff5775.var_16411829 = array(level.var_8cff5775.var_16411829);
            }
            level.var_8cff5775.var_16411829[level.var_8cff5775.var_16411829.size] = veh;
        }
    }
    level waittill(#"hash_74fd1181cad87802");
    foreach (veh in level.var_8cff5775.var_16411829) {
        if (isdefined(veh)) {
            veh delete();
        }
    }
    level.var_8cff5775.var_16411829 = [];
    thread function_d85a809b(section);
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x0
// Checksum 0xeaeb1dad, Offset: 0x1e60
// Size: 0x1c8
function function_7957254c() {
    self endon(#"death");
    self notify("41595a182f294c71");
    self endon("41595a182f294c71");
    self solid();
    self function_df3a1348();
    self disconnectpaths(0, 0);
    while (1) {
        result = undefined;
        result = self waittill(#"enter_vehicle", #"exit_vehicle");
        if (result._notify === #"exit_vehicle") {
            disconnect = 1;
            while (self getspeed() > 1) {
                result = undefined;
                result = self waittilltimeout(float(function_60d95f53()) / 1000, #"enter_vehicle");
                if (result._notify === #"enter_vehicle") {
                    disconnect = 0;
                    break;
                }
            }
            if (disconnect) {
                self disconnectpaths(0, 0);
            }
        } else if (result._notify === #"enter_vehicle") {
            self connectpaths();
        }
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0x98d3bc52, Offset: 0x2030
// Size: 0x16c
function function_89315f8a(section) {
    /#
        assert(level.var_8cff5775.var_16411829.size == 0);
    #/
    level thread function_d85a809b(section);
    if (section.id == 2) {
        objective_setstate(12, "invisible");
    }
    if (section.id == 3) {
        trig = getent("skeleton_cave_warp", "targetname");
        if (isdefined(trig)) {
            trig thread function_4b556c52();
        }
        result = undefined;
        result = level waittill(#"hash_245c04a2fa4ed1d0");
        var_d8e073bd = result.ai;
        var_4c610a3f = getent("giant_skeleton_throne", "targetname");
        level thread function_4ab4dc9f(var_d8e073bd, var_4c610a3f);
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x13fb5537, Offset: 0x21a8
// Size: 0x1ac
function function_4b556c52() {
    self notify("17c0ce2e85a669f2");
    self endon("17c0ce2e85a669f2");
    self endon(#"death");
    result = undefined;
    result = self waittill(#"trigger");
    if (isplayer(result.activator)) {
        i = 0;
        var_876d2ae2 = struct::get_array("skeleton_cave_warp_spot", "targetname");
        /#
            assert(var_876d2ae2.size >= 3);
        #/
        foreach (player in getplayers()) {
            if (player === result.activator) {
                continue;
            }
            player setorigin(var_876d2ae2[i].origin);
            player setplayerangles(var_876d2ae2[i].angles);
            i++;
        }
    } else {
        self thread function_4b556c52();
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0xca8425bb, Offset: 0x2360
// Size: 0x1e6
function function_43cc18d2() {
    self endon(#"death");
    level endon(#"game_over", #"hash_77e4bcc14697c018");
    models = [];
    foreach (generator in level.var_8cff5775.var_8acd67ef) {
        if (!isdefined(models)) {
            models = [];
        } else if (!isarray(models)) {
            models = array(models);
        }
        models[models.size] = [[ generator ]]->getmodel();
    }
    var_27d6c1c7 = arraysortclosest(models, self.origin, 2);
    models = [];
    while (1) {
        function_1eaaceab(var_27d6c1c7);
        if (var_27d6c1c7.size != 2) {
            break;
        }
        result = undefined;
        result = self waittilltimeout(1, #"damage");
        if (result._notify != #"timeout") {
            break;
        }
    }
    var_27d6c1c7 = [];
    self notify(#"hash_324ed30049158b16");
}

// Namespace wz_doa/wz_doa
// Params 2, eflags: 0x2 linked
// Checksum 0xc523131e, Offset: 0x2550
// Size: 0x244
function function_4ab4dc9f(var_d8e073bd, var_4c610a3f) {
    level endon(#"game_over", #"hash_77e4bcc14697c018");
    if (isdefined(var_d8e073bd) && isdefined(var_4c610a3f)) {
        var_d8e073bd endon(#"death");
        var_d8e073bd thread function_43cc18d2();
        var_73eec401 = "ai_t9_zm_doa_giant_skel_throne_sit_idle";
        var_26d497ed = "ai_t9_zm_doa_giant_skel_throne_sit_stand";
        var_d8e073bd.ignoreall.var_d8e073bd = 1;
        tagorigin = var_4c610a3f gettagorigin("tag_throne_animate");
        var_13e23952 = var_4c610a3f gettagangles("tag_throne_animate");
        tagorigin = var_4c610a3f.origin;
        var_13e23952 = var_4c610a3f.angles;
        var_d8e073bd forceteleport(tagorigin, var_13e23952);
        while (1) {
            var_d8e073bd animscripted(var_73eec401, tagorigin, var_13e23952, var_73eec401, "normal", undefined, 1, 0.2);
            result = undefined;
            result = var_d8e073bd waittill(var_73eec401, #"hash_324ed30049158b16");
            if (result._notify == #"hash_324ed30049158b16") {
                namespace_9fc66ac::function_5e3127a5(undefined, "bossfight_00");
                break;
            }
        }
        var_d8e073bd animscripted(var_26d497ed, tagorigin, var_13e23952, var_26d497ed, "normal", undefined, 1, 0.2);
        var_d8e073bd.ignoreall.var_d8e073bd = 0;
    }
    while (isdefined(var_d8e073bd)) {
        wait(0.5);
    }
    namespace_9fc66ac::function_5e3127a5(undefined, "doa_bossdefeated");
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0x93b69cb5, Offset: 0x27a0
// Size: 0xb2
function function_1f77ea0e(*var_5f148163) {
    foreach (veh in level.var_8cff5775.var_16411829) {
        if (isdefined(veh)) {
            veh delete();
        }
    }
    level.var_8cff5775.var_16411829 = [];
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x9d3d422d, Offset: 0x2860
// Size: 0xb8
function function_ffeaed15() {
    level.var_7dcdbe16 = undefined;
    level.var_8cff5775.var_13e8f9c9 = undefined;
    foreach (player in getplayers()) {
        player clientfield::set_to_player("cutscene", 0);
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0x24a54520, Offset: 0x2920
// Size: 0x80
function function_bd65dc78(var_cec7d4d0) {
    var_e1dd1170 = int(var_cec7d4d0 / 4);
    if (var_cec7d4d0 % 4 == 0) {
        var_e1dd1170 = math::clamp(var_e1dd1170 - 1, 0, var_e1dd1170);
    }
    level thread namespace_8c04284b::function_41e097fc(var_e1dd1170);
    return var_e1dd1170;
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x677e3dca, Offset: 0x29a8
// Size: 0x550
function function_9dbdc114() {
    level endon(#"hash_66786792448addbf", #"game_over", #"hash_62332fcf2ebc16d1");
    level namespace_a6ddb172::function_7a0e5387(57);
    var_7f432780 = array::randomize(struct::get_array("island_fate_rock_loc", "targetname"));
    var_fe92efd8 = array::randomize(level.var_8cff5775.var_fe92efd8);
    for (i = 0; i < var_7f432780.size; i++) {
        /#
            assert(i < var_fe92efd8.size);
        #/
        var_7f2666c4 = var_fe92efd8[i];
        model = var_7f2666c4.model;
        var_ea5e17f4 = namespace_ec06fe4a::function_e22ae9b3(var_7f432780[i].origin + vectorscale((0, 0, 1), 1500), model);
        if (isdefined(var_ea5e17f4)) {
            var_ea5e17f4 solid();
            var_ea5e17f4.data = var_7f2666c4;
            var_ea5e17f4.context.var_ea5e17f4 = 1;
            var_ea5e17f4.dest.var_ea5e17f4 = var_7f432780[i].origin;
            var_ea5e17f4.angles.var_ea5e17f4 = var_7f2666c4.var_d75b5b21 + (0, randomint(180), 0);
            var_ea5e17f4.objectiveid.var_ea5e17f4 = 14 + i;
            var_ea5e17f4 thread namespace_1c2a96f9::function_e4867f1d(var_7f2666c4);
            var_7f432780[i].model = var_ea5e17f4;
            objective_onentity(var_ea5e17f4.objectiveid, var_ea5e17f4);
            objective_setstate(var_ea5e17f4.objectiveid, "active");
            namespace_1e25ad94::function_f5f0c0f8("$$$ ROCK " + i + " set to model: " + model + " and assigned to fate: " + var_7f2666c4.var_c8386627);
        }
    }
    timeout = 45000 + gettime();
    warning = timeout - 15000;
    lasttime = gettime();
    var_f5a8d3a4 = 0;
    level thread namespace_9fc66ac::announce(8);
    while (!var_f5a8d3a4) {
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
        var_f5a8d3a4 = 1;
        foreach (player in namespace_7f5aeb59::function_23e1f90f()) {
            if (!isdefined(player.var_8cff5775.rof)) {
                var_f5a8d3a4 = 0;
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
            var_7f432780[i].model moveto(var_7f432780[i].model.origin + vectorscale((0, 0, 1), 1500), 1);
            wait(0.2);
            if (isdefined(var_7f432780[i].model)) {
                var_7f432780[i].model delete();
            }
        }
    }
    level thread namespace_9fc66ac::announce(9);
    return var_f5a8d3a4;
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0xa8f07754, Offset: 0x2f00
// Size: 0x10d0
function function_863ffeba() {
    self notify("2cea388dce33d2d4");
    self endon("2cea388dce33d2d4");
    level endon(#"hash_66786792448addbf", #"game_over", #"hash_62332fcf2ebc16d1");
    level thread function_a14d2338();
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(28 + (getplayers().size - 1) * getdvarint(#"hash_f59b123b8f7c868", 4) + level.var_8cff5775.var_6c58d51 * 8);
    while (1) {
        level waittill(#"hash_9bcb41ff819f6bc");
        level.var_8cff5775.var_c003ac17 = undefined;
        if (level.var_8cff5775.roundnumber == 1) {
            if (getplayers().size == 1 && getdvarint(#"hash_29afb60660d7bc06", 0)) {
                level.var_8cff5775.var_98e0f258 = 1;
                level.var_8cff5775.var_a87ecf08 = 1;
                player = getplayers()[0];
                var_b0fa9a8d = player stats::get_stat(#"hash_64fd75a9ce18b89f", #"hash_5a6bd78423046ffb");
                var_76fa0c6b = player stats::get_stat(#"hash_7eb2e5e9d5a52fbe", 0, #"hash_1ba322b9218ca4e8");
                var_f0ac2041 = var_b0fa9a8d < var_76fa0c6b ? var_b0fa9a8d : var_76fa0c6b;
                if (var_f0ac2041 > 4) {
                    maxrounds = level.var_8cff5775.var_422d359d.size * 4;
                    if (var_f0ac2041 > maxrounds) {
                        var_f0ac2041 = maxrounds;
                    }
                    if (var_f0ac2041 > 20) {
                        var_daaab86b = array("slideways", "snaketemple", "eggxit_1");
                        if (var_f0ac2041 > 39) {
                            var_daaab86b = array("slideways", "nukebunker", "crypt", "snaketemple", "eggxit_1");
                        }
                        foreach (item in var_daaab86b) {
                            room = namespace_5a917022::function_c8892b0f(item);
                            if (isdefined(room)) {
                                room.var_5250d109.room = 1;
                            }
                        }
                        level flag::set("doa_round_paused");
                        level notify(#"hash_1cf1c429bb1c9a07");
                        level notify(#"hash_3afec527659c7cd9");
                        level waittill(#"hash_28b51ed78ee920f1");
                        origin = [[ level.var_8cff5775.var_39e3fa99 ]]->function_ffcf1d1();
                        level namespace_dfc652ee::function_ad7ac41b(origin, 1, 72, 41, 1);
                        var_8f6bf9fe = function_9dbdc114();
                        if (var_8f6bf9fe == 0) {
                        }
                        level flag::clear("doa_round_paused");
                    }
                    var_e1dd1170 = level function_bd65dc78(var_f0ac2041);
                    extralives = int(var_e1dd1170 / 6);
                    player.var_8cff5775.score.lives = player.var_8cff5775.score.lives + extralives;
                    var_3961fa26 = int(var_e1dd1170 / 5);
                    player.var_8cff5775.score.bombs = player.var_8cff5775.score.bombs + var_3961fa26;
                    var_840025ed = int(var_e1dd1170 / 5);
                    player.var_8cff5775.score.boosts = player.var_8cff5775.score.boosts + var_840025ed;
                    return;
                }
            }
            level.var_8cff5775.var_13e8f9c9 = "walk";
            function_2a6cdb09();
            level thread namespace_9fc66ac::announce(1);
            origin = [[ level.var_8cff5775.var_39e3fa99 ]]->function_ffcf1d1();
            level namespace_dfc652ee::function_ad7ac41b(origin, 1, 72, 14, 1);
            level thread namespace_6e90e490::function_c28bc3eb(14, 1, 5);
            if (!is_true(level.var_8cff5775.var_318aa67a)) {
                level thread namespace_6e90e490::function_c28bc3eb(9, 1, 15);
            }
        }
        if (level.var_8cff5775.roundnumber == 2) {
            level.var_8cff5775.var_13e8f9c9 = undefined;
            level thread namespace_6e90e490::function_c28bc3eb(10, 1, 15);
        }
        if (level.var_8cff5775.roundnumber == 3) {
            namespace_1e25ad94::function_f5f0c0f8("Arena (" + [[ level.var_8cff5775.var_39e3fa99 ]]->getname() + ") special event triggered at: " + gettime() + " RoundNumber: " + level.var_8cff5775.roundnumber);
            level.var_8cff5775.var_cfa10fcf = 3;
            level.var_8cff5775.var_c003ac17 = 1;
            level thread namespace_6e90e490::function_c28bc3eb(11, 1, 15);
        }
        if (level.var_8cff5775.roundnumber == 4) {
            changeadvertisedstatus(0, 1);
            var_46058269 = namespace_3e8ab514::function_d5e7454f("jungle_1");
            var_ec67aff2 = [[ var_46058269 ]]->function_70111aa4(0);
            level thread namespace_ec06fe4a::function_87612422(var_ec67aff2.origin, var_ec67aff2.angles, 0.25, 9999999, [[ var_46058269 ]]->function_c8fbcc3f(0));
            if (isdefined(level.var_8cff5775.var_39e3fa99) && !is_true(level.var_8cff5775.var_318aa67a)) {
                var_65bccf6 = namespace_dfc652ee::function_57160cba(3);
                [[ var_65bccf6 ]]->function_772950ea(1);
                var_9e20508c = getplayers().size;
                var_4b444556 = undefined;
                while (var_9e20508c) {
                    var_2a572302 = 5;
                    spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_fdea25f1();
                    if (isdefined(var_4b444556)) {
                        distsq = distancesquared(spot.origin, var_4b444556.origin);
                        while (distsq < function_a3f6cdac(60) && var_2a572302 > 0) {
                            spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_fdea25f1();
                            distsq = distancesquared(spot.origin, var_4b444556.origin);
                            var_2a572302--;
                        }
                    }
                    var_4b444556 = spot;
                    namespace_dfc652ee::function_83aea294(spot.origin, 1, 128, var_65bccf6, undefined, 1);
                    var_9e20508c--;
                }
                [[ var_65bccf6 ]]->function_772950ea(0);
            }
            level.var_8cff5775.var_72b32209 = getplayers().size;
            if (!is_true(level.var_8cff5775.hardcoremode)) {
                level flag::set("arena_hold_presentation");
                level flag::set("arena_hold_banner_presentation");
                level waittill(#"hash_de33bd076cde122");
                namespace_ec06fe4a::function_445bad70(1);
                level.var_7dcdbe16 = 1;
                foreach (player in getplayers()) {
                    player notify(#"hash_7893364bd228d63e");
                    player notify(#"hash_562d458e34274132");
                    if (!isalive(player) || is_true(player.var_8cff5775.var_70c50ae0)) {
                        player namespace_7f5aeb59::function_513831e1();
                    }
                }
                wait(1.2);
                namespace_ec06fe4a::function_445bad70(1);
                var_a3f4cb78 = [[ level.var_8cff5775.var_39e3fa99 ]]->function_51dd0a59();
                spots = [[ level.var_8cff5775.var_39e3fa99 ]]->function_8054e011();
                var_dbfa4ffb = [];
                foreach (spot in spots) {
                    distsq = distancesquared(spot.origin, var_a3f4cb78.origin);
                    if (distsq < function_a3f6cdac(160)) {
                        continue;
                    }
                    distsq = distancesquared(spot.origin, [[ level.var_8cff5775.var_39e3fa99 ]]->function_ffcf1d1());
                    if (distsq < function_a3f6cdac(160)) {
                        continue;
                    }
                    var_dbfa4ffb[var_dbfa4ffb.size] = spot;
                }
                foreach (player in getplayers()) {
                    if (!isalive(player) || is_true(player.var_8cff5775.var_70c50ae0)) {
                        player namespace_7f5aeb59::function_513831e1();
                    }
                    moveme = 0;
                    distsq = distancesquared(player.origin, var_a3f4cb78.origin);
                    if (distsq < function_a3f6cdac(160)) {
                        moveme = 1;
                    }
                    distsq = distancesquared(player.origin, [[ level.var_8cff5775.var_39e3fa99 ]]->function_ffcf1d1());
                    if (distsq < function_a3f6cdac(160)) {
                        moveme = 1;
                    }
                    if (moveme) {
                        spot = arraysortclosest(var_dbfa4ffb, player.origin, 1, 160)[0];
                        arrayremoveindex(var_dbfa4ffb, 0);
                        player setorigin(spot.origin);
                    }
                    player clientfield::set_to_player("cutscene", 1);
                }
                level thread function_ae378de8();
                if (!is_true(level.var_e5d89122)) {
                    level thread function_dc41b38();
                    level waittill(#"hash_5579b42bba29dd0f");
                    var_46058269 = namespace_3e8ab514::function_d5e7454f("jungle_1");
                    var_ec67aff2 = [[ var_46058269 ]]->function_70111aa4(0);
                    level thread namespace_ec06fe4a::function_87612422(var_ec67aff2.origin, var_ec67aff2.angles, 0.5, 999999, [[ var_46058269 ]]->function_c8fbcc3f(0));
                }
            }
        }
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0xad3dd1cc, Offset: 0x3fd8
// Size: 0x16
function function_f1ec9045() {
    level.var_8cff5775.var_13e8f9c9 = undefined;
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x3b4af35f, Offset: 0x3ff8
// Size: 0x1bc
function function_529acb04() {
    self notify("781f7dce3f4b7ae3");
    self endon("781f7dce3f4b7ae3");
    level endon(#"hash_66786792448addbf", #"hash_7b68a1d715669022", #"game_over", #"hash_62332fcf2ebc16d1");
    if (level.var_8cff5775.var_6c58d51 == 0) {
        level.var_8cff5775.var_13e8f9c9 = "run";
    }
    level.var_8cff5775.var_a5ade8f8 = 40;
    level thread function_a14d2338(8);
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(40);
    while (1) {
        level waittill(#"hash_9bcb41ff819f6bc");
        if (level.var_8cff5775.roundnumber == 5) {
            foreach (player in getplayers()) {
                player namespace_6e90e490::function_55775bbc(6);
            }
        }
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x5cfb022a, Offset: 0x41c0
// Size: 0x3c
function function_15692944() {
    level thread function_a14d2338();
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(40);
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x4208
// Size: 0x4
function function_8025b684() {
    
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0xfc951e1f, Offset: 0x4218
// Size: 0xb4
function function_7773730f() {
    level.var_8cff5775.var_a5ade8f8 = 40;
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(28 + (getplayers().size - 1) * getdvarint(#"hash_f59b123b8f7c868", 4) + level.var_8cff5775.var_6c58d51 * 8);
    setdvar(#"hash_2b73855c34966f6b", 8);
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x9e3cfc04, Offset: 0x42d8
// Size: 0x7c
function function_682069ef() {
    setdvar(#"hash_4c0888d26878c503", 3);
    setdvar(#"hash_2b73855c34966f6b", 12);
    setdvar(#"hash_6bb8a71eee3d3d15", 47);
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x7dccc88e, Offset: 0x4360
// Size: 0x2b2
function function_b11eca29() {
    if (is_true(level.var_8cff5775.hardcoremode)) {
        return;
    }
    self notify("5e0ca8e14871ce47");
    self endon("5e0ca8e14871ce47");
    var_750f1960 = struct::get("rof_keyspawn_loc", "targetname");
    while (isdefined(level.var_8cff5775.var_a77e6349)) {
        while (1) {
            result = undefined;
            result = level waittilltimeout(1, #"hash_3bbf4237ccea5dd5");
            if (result._notify == #"hash_3bbf4237ccea5dd5") {
                return;
            }
            var_c5f022a9 = 0;
            foreach (player in namespace_7f5aeb59::function_23e1f90f()) {
                if (player.var_8cff5775.score.keys > 0) {
                    var_c5f022a9++;
                }
            }
            var_85170f71 = 1;
            if (var_c5f022a9 >= var_85170f71) {
                continue;
            }
            if (!isdefined(var_750f1960.var_3a6f3e1f)) {
                var_750f1960.var_3a6f3e1f.var_750f1960 = 1;
                if (isdefined(level.var_8cff5775.var_a77e6349)) {
                    [[ level.var_8cff5775.var_a77e6349 ]]->function_39d2eb74(var_750f1960, "zombietron_skeleton_key", 100, 1, 1);
                }
                while (!isdefined(var_750f1960.pickups)) {
                    waitframe(1);
                }
            }
            arrayremovevalue(var_750f1960.pickups, undefined);
            if (var_750f1960.pickups.size > 0) {
                continue;
            }
            var_750f1960.activated.var_750f1960 = 0;
            var_750f1960.var_e3d90223.var_750f1960 = 1;
            var_750f1960.norespawn.var_750f1960 = 0;
            var_750f1960.var_a3192b0f.var_750f1960 = 0;
            var_750f1960.count.var_750f1960 = 1;
            while (var_750f1960.pickups.size == 0) {
                waitframe(1);
            }
        }
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x2f867d0f, Offset: 0x4620
// Size: 0x4b8
function function_d723726a() {
    level endon(#"game_over");
    self notify("4277b50635822e3c");
    self endon("4277b50635822e3c");
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(40);
    var_72bee225 = level.var_8cff5775.var_6c58d51 == 0;
    level waittill(#"hash_2a3cff0bb22ed26d");
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_68400720(0);
    if (level flag::get("doa_rof_visited")) {
        var_72bee225 = 0;
        [[ level.var_8cff5775.var_39e3fa99 ]]->function_cb179d87(undefined);
        [[ level.var_8cff5775.var_39e3fa99 ]]->function_68400720(1);
    } else {
        level.var_8cff5775.var_6b57e2f = &function_9e356c78;
        var_46058269 = namespace_3e8ab514::function_d5e7454f("jungle_1");
        var_ec67aff2 = [[ var_46058269 ]]->function_70111aa4(2);
        level thread namespace_ec06fe4a::function_87612422(var_ec67aff2.origin, var_ec67aff2.angles, 0.1, 999999, [[ var_46058269 ]]->function_c8fbcc3f(2));
    }
    result = undefined;
    result = level waittill(#"hash_2fa3a8c87dfbde5c", #"hash_3b78590473351869");
    foreach (player in namespace_7f5aeb59::function_23e1f90f()) {
        player notify(#"hash_279998c5df86c04d");
    }
    if (!is_true(level.var_e5d89122)) {
        if (var_72bee225) {
            level waittill(#"hash_62332fcf2ebc16d1", #"hash_2a3cff0bb22ed26d");
            /#
                assert(isdefined(level.var_8cff5775.var_a77e6349));
            #/
            if (isdefined(level.var_8cff5775.var_a77e6349)) {
                [[ level.var_8cff5775.var_a77e6349 ]]->function_1137c8bb();
            }
            level thread function_96372153();
            level thread function_b11eca29();
            if (is_true(level.var_8cff5775.hardcoremode)) {
                var_dfb0558b = [[ level.var_8cff5775.var_a77e6349 ]]->function_ef5ade99();
                foreach (exit in var_dfb0558b) {
                    if (exit.targetname !== #"hash_5c7a54138393acbc") {
                        if (isdefined(exit.trigger)) {
                            exit.trigger delete();
                        }
                        exit notify(#"hash_7bf2519960a3852a");
                        exit namespace_83eb6304::turnofffx("teleporter_dungeon_light");
                        exit clientfield::set("set_icon", 0);
                        exit thread function_ec356b51();
                    }
                }
            }
        }
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x4ae0
// Size: 0x4
function function_6d60789() {
    
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x2d9981d8, Offset: 0x4af0
// Size: 0xf2
function function_96372153() {
    if (is_true(level.var_8cff5775.hardcoremode)) {
        return;
    }
    blocker = getent("ROF_backblocker", "targetname");
    var_63a73314 = blocker.origin;
    blocker.origin.blocker = blocker.origin + vectorscale((0, 0, 1), 160);
    blocker solid();
    blocker disconnectpaths();
    level waittill(#"game_over");
    blocker connectpaths();
    blocker.origin = var_63a73314;
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x8689186c, Offset: 0x4bf0
// Size: 0x8c
function function_f7295a2d() {
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(26 + (getplayers().size - 1) * getdvarint(#"hash_f59b123b8f7c868", 4) + level.var_8cff5775.var_6c58d51 * 8);
    level thread function_9dfe2f0b();
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x888bc216, Offset: 0x4c88
// Size: 0x54
function function_6800d147() {
    setdvar(#"hash_4c0888d26878c503", 3);
    setdvar(#"hash_6bb8a71eee3d3d15", 47);
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x1ea28063, Offset: 0x4ce8
// Size: 0x78
function function_eb41fd02() {
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(36 + (getplayers().size - 1) * getdvarint(#"hash_f59b123b8f7c868", 4) + level.var_8cff5775.var_6c58d51 * 8);
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x4d68
// Size: 0x4
function function_507356f3() {
    
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x4fbda13f, Offset: 0x4d78
// Size: 0x8c
function function_79604b5e() {
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(32 + (getplayers().size - 1) * getdvarint(#"hash_f59b123b8f7c868", 4) + level.var_8cff5775.var_6c58d51 * 8);
    level thread function_821f3d71();
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x4e10
// Size: 0x4
function function_e68b172f() {
    
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x512d53d3, Offset: 0x4e20
// Size: 0x6c
function function_a2bf31a9() {
    self endon(#"death");
    level waittill(#"game_over", #"hash_66786792448addbf", #"hash_770d5565510bda45");
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace wz_doa/wz_doa
// Params 6, eflags: 0x2 linked
// Checksum 0x447709a7, Offset: 0x4e98
// Size: 0x1ae
function function_231e7cd8(fxname, *type, min = 0.6, max = 2, stop = 1, delay = 4) {
    self notify("6fbe54e45f77256e");
    self endon("6fbe54e45f77256e");
    self endon(#"death");
    if (isdefined(self.script_noteworthy)) {
        type = self.script_noteworthy;
        stop = 0;
        delay = 0;
        var_47242ffa = 3;
    }
    if (delay) {
        wait(delay);
    }
    while (1) {
        self namespace_83eb6304::function_3ecfde67(type);
        delay = randomfloatrange(min, max);
        /#
        #/
        result = undefined;
        result = self waittilltimeout(delay, #"hash_39217b78c4c579e0");
        if (stop || result._notify == #"hash_39217b78c4c579e0") {
            if (isdefined(var_47242ffa)) {
                wait(var_47242ffa);
            }
            self namespace_83eb6304::turnofffx(type);
        }
        if (result._notify != #"timeout") {
            return;
        }
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x5c5057ae, Offset: 0x5050
// Size: 0x8da
function function_821f3d71() {
    self notify("2d828df271fffe90");
    self endon("2d828df271fffe90");
    level endon(#"game_over", #"hash_66786792448addbf", #"hash_770d5565510bda45");
    var_99cb14eb = getent("geothermal_pool", "targetname");
    var_3a602ebe = struct::get_array("geothermal_pool_fx_warn", "targetname");
    var_83a77edd = struct::get_array("geothermal_pool_fx_death", "targetname");
    foreach (var_f2c21fb9 in var_3a602ebe) {
        var_f2c21fb9.var_f3b82c6d.var_f2c21fb9 = namespace_ec06fe4a::function_e22ae9b3(var_f2c21fb9.origin, undefined, undefined, "geothermal fxlocModel");
        if (isdefined(var_f2c21fb9.var_f3b82c6d)) {
            var_f2c21fb9.var_f3b82c6d.script_noteworthy = var_f2c21fb9.script_noteworthy;
            var_f2c21fb9.var_f3b82c6d thread function_a2bf31a9();
        }
    }
    foreach (var_f2c21fb9 in var_83a77edd) {
        var_f2c21fb9.var_f3b82c6d.var_f2c21fb9 = namespace_ec06fe4a::function_e22ae9b3(var_f2c21fb9.origin, undefined, undefined, "geothermal fxlocModel");
        if (isdefined(var_f2c21fb9.var_f3b82c6d)) {
            var_f2c21fb9.var_f3b82c6d.script_noteworthy = var_f2c21fb9.script_noteworthy;
            var_f2c21fb9.var_f3b82c6d thread function_a2bf31a9();
        }
    }
    var_35a2ef3d = namespace_ec06fe4a::function_e22ae9b3(var_99cb14eb.origin, undefined, undefined, "geothermal trigModel");
    var_35a2ef3d thread namespace_ec06fe4a::function_d55f042c(level, "game_over");
    var_35a2ef3d thread namespace_ec06fe4a::function_d55f042c(level, "teleporter_taken");
    var_35a2ef3d thread namespace_ec06fe4a::function_d55f042c(level, "arena_switching");
    var_76feb3c3 = namespace_ec06fe4a::function_e22ae9b3(var_99cb14eb.origin, undefined, undefined, "geothermal trigModel");
    var_76feb3c3 thread namespace_ec06fe4a::function_d55f042c(level, "game_over");
    var_76feb3c3 thread namespace_ec06fe4a::function_d55f042c(level, "teleporter_taken");
    var_76feb3c3 thread namespace_ec06fe4a::function_d55f042c(level, "arena_switching");
    while (1) {
        util::wait_network_frame();
        var_99cb14eb triggerenable(0);
        var_35a2ef3d namespace_e32bb68::function_ae271c0b("zmb_water_geyser_sm_warn");
        var_76feb3c3 namespace_e32bb68::function_ae271c0b("zmb_water_geyser_active");
        foreach (var_f2c21fb9 in var_83a77edd) {
            var_f2c21fb9.var_f3b82c6d notify(#"hash_39217b78c4c579e0");
        }
        foreach (var_f2c21fb9 in var_3a602ebe) {
            var_f2c21fb9.var_f3b82c6d notify(#"hash_39217b78c4c579e0");
        }
        wait(randomintrange(12, 20));
        var_35a2ef3d namespace_e32bb68::function_3a59ec34("zmb_water_geyser_sm_warn");
        foreach (var_f2c21fb9 in var_3a602ebe) {
            var_f2c21fb9.var_f3b82c6d thread function_231e7cd8("water_geyser_sm", "warn", 2, 4);
        }
        result = undefined;
        result = level waittilltimeout(randomintrange(10, 16), #"hash_2282d796a1f7533a");
        if (result._notify === #"hash_2282d796a1f7533a") {
            continue;
        }
        skip = 0;
        foreach (player in getplayers()) {
            if (is_true(player.var_d57eeb7f)) {
                skip = 1;
                break;
            }
        }
        if (skip) {
            continue;
        }
        var_35a2ef3d namespace_e32bb68::function_ae271c0b("zmb_water_geyser_sm_warn");
        var_76feb3c3 namespace_e32bb68::function_3a59ec34("zmb_water_geyser_active");
        foreach (var_f2c21fb9 in var_83a77edd) {
            var_f2c21fb9.var_f3b82c6d thread function_231e7cd8("water_geyser", "active", 0.4, 1.4, 0, 0);
        }
        var_99cb14eb triggerenable(1);
        var_f814e245 = randomintrange(9, 15);
        skip = 0;
        while (var_f814e245 > 0 && !skip) {
            foreach (player in getplayers()) {
                if (is_true(player.var_d57eeb7f)) {
                    skip = 1;
                    break;
                }
            }
            var_f814e245 = var_f814e245 - 1;
            wait(1);
        }
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x47821dcf, Offset: 0x5938
// Size: 0xdc
function function_8ff5e09() {
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(30 + (getplayers().size - 1) * getdvarint(#"hash_f59b123b8f7c868", 4) + level.var_8cff5775.var_6c58d51 * 8);
    level waittill(#"hash_de33bd076cde122");
    if (level flag::get("doa_wild_section_j2_visited")) {
        var_72bee225 = 0;
        [[ level.var_8cff5775.var_39e3fa99 ]]->function_cb179d87(undefined);
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0xa5a7483b, Offset: 0x5a20
// Size: 0x24
function function_d9967798() {
    level flag::set("doa_wild_section_j2_visited");
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0xeff62ff5, Offset: 0x5a50
// Size: 0x124
function function_ef053c43() {
    if (isdefined(level.var_8cff5775.var_4e7fa15)) {
        setsaveddvar(#"hash_70e9b7babe37bd", level.var_8cff5775.var_4e7fa15.var_68196321);
        setsaveddvar(#"hash_49d79caf54cdbf0e", level.var_8cff5775.var_4e7fa15.var_64e8274c);
        setsaveddvar(#"hash_334540b72330f0d0", level.var_8cff5775.var_4e7fa15.var_751c4256);
        level.var_8cff5775.var_4e7fa15 = undefined;
    }
    setdvar(#"hash_4c0888d26878c503", 3);
    setdvar(#"hash_6bb8a71eee3d3d15", 47);
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x6da843ea, Offset: 0x5b80
// Size: 0x300
function function_4eaa5cb4() {
    level endon(#"game_over", #"hash_66786792448addbf", #"hash_770d5565510bda45");
    self notify("5c37d0beccb60d1e");
    self endon("5c37d0beccb60d1e");
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(32 + (getplayers().size - 1) * getdvarint(#"hash_f59b123b8f7c868", 4) + level.var_8cff5775.var_6c58d51 * 8);
    setdvar(#"hash_6bb8a71eee3d3d15", 70);
    setdvar(#"hash_4c0888d26878c503", 2);
    var_736dd93a = getdvar(#"hash_70e9b7babe37bd");
    var_b2f4c996 = getdvar(#"hash_49d79caf54cdbf0e");
    var_2e3fc95e = getdvar(#"hash_334540b72330f0d0");
    level.var_8cff5775.var_4e7fa15 = {#var_751c4256:var_2e3fc95e, #var_64e8274c:var_b2f4c996, #var_68196321:var_736dd93a};
    while (1) {
        setsaveddvar(#"hash_70e9b7babe37bd", 0.8);
        setsaveddvar(#"hash_49d79caf54cdbf0e", 20);
        setsaveddvar(#"hash_334540b72330f0d0", 60);
        result = undefined;
        result = level waittill(#"hash_7270a59e1f502d96");
        setsaveddvar(#"hash_70e9b7babe37bd", var_736dd93a);
        setsaveddvar(#"hash_49d79caf54cdbf0e", var_b2f4c996);
        setsaveddvar(#"hash_334540b72330f0d0", var_2e3fc95e);
        level waittill(#"hash_7dd47c99b7707b1c");
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x2c77fd7d, Offset: 0x5e88
// Size: 0x19a
function function_db874c99() {
    level.var_8cff5775.var_a5ade8f8 = 40;
    var_b282ad2f = struct::get_array("bloodlake_loot_spot", "targetname");
    foreach (item in var_b282ad2f) {
        item = namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4(item.script_noteworthy), item.origin, item.angles, undefined, 1);
        if (isdefined(item)) {
            item notify(#"hash_7f9371cb3ad42bb3");
            item notify(#"hash_2a866f50cc161ca8");
        }
    }
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(40);
    var_94f3b914 = namespace_ff8b8430::function_251ee3bd("blood_riser");
    [[ var_94f3b914 ]]->function_7edd7727(6);
    level.var_8cff5775.var_65a70dc = var_94f3b914;
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x59caa59e, Offset: 0x6030
// Size: 0x2a
function function_cd588c9f() {
    level.var_8cff5775.var_65a70dc = namespace_ff8b8430::function_d7c5adee("basic_zombie");
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x730e56b5, Offset: 0x6068
// Size: 0xe2
function function_b5abde0c() {
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(32 + (getplayers().size - 1) * getdvarint(#"hash_f59b123b8f7c868", 4) + level.var_8cff5775.var_6c58d51 * 8);
    /#
        assert(level.var_8cff5775.var_65a70dc != function_d7c5adee("zombietron_extra_life"), "wolf_hellhound");
    #/
    level.var_8cff5775.var_65a70dc = namespace_ff8b8430::function_d7c5adee("basic_zombie");
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x6158
// Size: 0x4
function function_d70d8d1() {
    
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0xe3ee7987, Offset: 0x6168
// Size: 0x78
function function_a077af19() {
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(32 + (getplayers().size - 1) * getdvarint(#"hash_f59b123b8f7c868", 4) + level.var_8cff5775.var_6c58d51 * 8);
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x61e8
// Size: 0x4
function function_e584ce9d() {
    
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x32064566, Offset: 0x61f8
// Size: 0x3b0
function function_a80babc3() {
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(28 + (getplayers().size - 1) * getdvarint(#"hash_f59b123b8f7c868", 4) + level.var_8cff5775.var_6c58d51 * 8);
    var_36a503f5 = struct::get_array("frontyard_mowers");
    foreach (var_30f23074 in var_36a503f5) {
        /#
            assert(!isdefined(var_30f23074.var_92595434), "face enemy");
        #/
        if (isdefined(var_30f23074.var_92595434)) {
            continue;
        }
        args = strtok(var_30f23074.script_noteworthy, ";");
        modelname = args[0];
        scale = float(args[1]);
        speed = 4;
        if (args.size > 2) {
            speed = float(args[2]);
        }
        var_30f23074.var_92595434.var_30f23074 = namespace_ec06fe4a::function_e22ae9b3(var_30f23074.origin, modelname, var_30f23074.angles, "frontyard_lawnMower");
        if (isdefined(var_30f23074.var_92595434)) {
            trigger = namespace_ec06fe4a::function_b5731057("trigger_box", (0, 0, 0), 1 & 2 & 4 & 4096 & 512, 82, 50, 60);
            if (!isdefined(trigger)) {
                var_30f23074.var_92595434 delete();
            } else {
                trigger.var_f83032a3.trigger = "frontyard_lawnMowerTrigger";
                trigger.angles.trigger = var_30f23074.angles;
                trigger.origin.trigger = var_30f23074.origin;
                trigger.owner.trigger = var_30f23074.var_92595434;
                var_30f23074.trigger = trigger;
                var_30f23074.var_92595434.target = var_30f23074.target;
                var_30f23074.var_92595434.speed = speed;
                var_30f23074.var_92595434.trigger = trigger;
                var_30f23074.type.var_30f23074 = #"hash_1af42a1c565c45de";
                trigger thread namespace_ec06fe4a::function_73d79e7d(var_30f23074.var_92595434);
                trigger thread function_577f978a();
                var_30f23074.var_92595434 setscale(scale);
                var_30f23074.var_92595434 thread function_2d612a87();
            }
        }
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x7ea08110, Offset: 0x65b0
// Size: 0x228
function function_577f978a() {
    self endon(#"death");
    while (1) {
        result = undefined;
        result = self waittill(#"trigger");
        guy = result.activator;
        if (!isdefined(guy)) {
            continue;
        }
        if (is_true(guy.boss)) {
            continue;
        }
        if (is_true(guy.var_f055aa9b)) {
            continue;
        }
        if (is_true(guy.laststand)) {
            continue;
        }
        if (!isalive(guy)) {
            continue;
        }
        if (!isdefined(guy.var_a138f7e0)) {
            guy.var_a138f7e0.guy = 0;
        }
        time = gettime();
        if (guy.var_a138f7e0 > gettime()) {
            continue;
        }
        guy.var_a138f7e0.guy = time + 250;
        if (isplayer(guy)) {
            guy dodamage(guy.health + 100, guy.origin);
            guy playrumbleonentity("damage_light");
        } else if (!is_true(guy.var_e66cd6fb)) {
            guy.var_f055aa9b.guy = 1;
            guy thread namespace_ec06fe4a::function_b4ff2191(vectorscale((0, 0, 1), 220), 180);
            guy namespace_e32bb68::function_3a59ec34("zmb_ragdoll_launched");
        } else {
            guy thread namespace_ed80aead::function_586ef822();
        }
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x7f739672, Offset: 0x67e0
// Size: 0x1c8
function function_2d612a87() {
    self endon(#"death");
    target = struct::get(self.target);
    while (1) {
        for (var_afd55d27 = randomint(6); var_afd55d27; var_afd55d27--) {
            self.trigger triggerenable(1);
            self moveto(target.origin, self.speed, 0.5, 0.5);
            self namespace_83eb6304::function_3ecfde67("lawn_mower");
            self waittill(#"movedone");
            self.trigger triggerenable(0);
            self namespace_83eb6304::turnofffx("lawn_mower");
            wait(1);
            self rotateto(self.angles + vectorscale((0, 1, 0), 180), 4);
            self waittill(#"rotatedone");
            target = struct::get(target.target);
        }
        wait(randomintrange(5, 12));
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x3d9fdbdb, Offset: 0x69b0
// Size: 0xf2
function function_f66db708() {
    var_36a503f5 = struct::get_array("frontyard_mowers");
    foreach (var_30f23074 in var_36a503f5) {
        if (isdefined(var_30f23074.trigger)) {
            var_30f23074.trigger delete();
            var_30f23074.trigger = undefined;
        }
        if (isdefined(var_30f23074.var_92595434)) {
            var_30f23074.var_92595434 delete();
            var_30f23074.var_92595434 = undefined;
        }
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x4498c76a, Offset: 0x6ab0
// Size: 0x22c
function function_c32a6622() {
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(26 + (getplayers().size - 1) * getdvarint(#"hash_f59b123b8f7c868", 4) + level.var_8cff5775.var_6c58d51 * 8);
    setdvar(#"hash_6bb8a71eee3d3d15", 90);
    setdvar(#"hash_4c0888d26878c503", 2);
    level waittill(#"hash_2a3cff0bb22ed26d");
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_68400720(0);
    if (level.var_8cff5775.var_6c58d51 > 0) {
        [[ level.var_8cff5775.var_39e3fa99 ]]->function_cb179d87(undefined);
        [[ level.var_8cff5775.var_39e3fa99 ]]->function_68400720(1);
    }
    result = undefined;
    result = level waittill(#"hash_2fa3a8c87dfbde5c", #"hash_3b78590473351869");
    if (result._notify == "waiting_on_player_exit_DecideChoice") {
        var_46058269 = namespace_3e8ab514::function_d5e7454f("jungle_1");
        var_ec67aff2 = [[ var_46058269 ]]->function_70111aa4(3);
        level thread namespace_ec06fe4a::function_87612422(var_ec67aff2.origin, var_ec67aff2.angles, 0.1, 999999, [[ var_46058269 ]]->function_c8fbcc3f(3));
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x95198783, Offset: 0x6ce8
// Size: 0x54
function function_a9f65217() {
    setdvar(#"hash_4c0888d26878c503", 3);
    setdvar(#"hash_6bb8a71eee3d3d15", 47);
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0x37a1f550, Offset: 0x6d48
// Size: 0x154
function function_86431fee(var_2c7cecea) {
    self endon(#"death");
    var_4c5fe7c6 = var_2c7cecea.origin + vectorscale((0, 0, 1), 450);
    anchor = namespace_ec06fe4a::function_e22ae9b3(var_2c7cecea.origin);
    anchor enablelinkto();
    anchor thread namespace_ec06fe4a::function_d55f042c(self, "death");
    while (1) {
        distsq = distancesquared(self.origin, var_2c7cecea.origin);
        if (distsq > function_a3f6cdac(800)) {
            self.origin = var_4c5fe7c6;
            self moveto(var_2c7cecea.origin, 0.4);
            wait(0.4);
            self linkto(anchor);
            return;
        }
        wait(0.2);
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0x762f389a, Offset: 0x6ea8
// Size: 0x2cc
function function_657374c9(player) {
    if (player.var_8cff5775.score.bombs <= player.var_8cff5775.score.boosts && player.var_8cff5775.score.bombs != player namespace_eccff4fb::function_4091beb5()) {
        level thread namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_nuke"), player.origin, undefined, undefined, 1, undefined, undefined, undefined, player, 224);
    } else if (player.var_8cff5775.score.boosts <= player.var_8cff5775.score.bombs && player.var_8cff5775.score.boosts != player namespace_eccff4fb::function_fd3d9ee0()) {
        level thread namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_boost"), player.origin, undefined, undefined, 1, undefined, undefined, undefined, player, 224);
    } else if (player.var_8cff5775.score.lives < player namespace_eccff4fb::function_77cbfb85()) {
        level thread namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_extra_life"), player.origin, undefined, undefined, 1, undefined, undefined, undefined, player, 224);
    } else {
        level thread namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_chicken"), player.origin, undefined, undefined, 1, undefined, undefined, undefined, player);
        wait(0.5);
        level thread namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_chicken"), player.origin, undefined, undefined, 1, undefined, undefined, undefined, player);
        wait(0.5);
        level thread namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_chicken"), player.origin, undefined, undefined, 1, undefined, undefined, undefined, player);
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0xa68d62, Offset: 0x7180
// Size: 0xe4
function function_2a5de85d() {
    playercount = getplayers().size;
    self.var_95b43d0 = 2 + 2 * playercount + level.var_8cff5775.var_6c58d51 * playercount;
    self.var_d6118311 = 10;
    self.locked = 1;
    self.var_8cc3e0f9 = &function_657374c9;
    level.var_8cff5775.var_b8ef1466[level.var_8cff5775.var_b8ef1466.size] = self;
    self waittill(#"death");
    arrayremovevalue(level.var_8cff5775.var_b8ef1466, self);
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0xd53cd035, Offset: 0x7270
// Size: 0xd6c
function function_e26b3847() {
    level endon(#"exit_level", #"end_game", #"game_over");
    var_77f9aad3 = gettime();
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(28 + (getplayers().size - 1) * getdvarint(#"hash_f59b123b8f7c868", 4) + level.var_8cff5775.var_6c58d51 * 8);
    var_2c7cecea = struct::get("fidolina_egg", "targetname");
    if (isdefined(var_2c7cecea)) {
        var_35b85488 = namespace_ec06fe4a::function_e22ae9b3(var_2c7cecea.origin, "zombietron_egg", var_2c7cecea.angles, "fidolina_egg");
        if (isdefined(var_35b85488)) {
            var_35b85488 setscale(4);
        }
    }
    level flag::set("arena_hold_presentation");
    level waittill(#"hash_de33bd076cde122");
    level notify(#"hash_4a13bd350867b4ae");
    level flag::clear("arena_hold_presentation");
    level.var_8cff5775.var_41adf604 = 1;
    foreach (player in getplayers()) {
        player.var_8cff5775.var_2d965438 = 0;
    }
    var_5598fe58 = 1 + level.var_8cff5775.var_6c58d51;
    level namespace_a6ddb172::function_7a0e5387(61);
    namespace_9fc66ac::function_5e3127a5(undefined, "bossfight_01");
    wait(6);
    level namespace_8c04284b::function_3d25cb06();
    level thread namespace_8c04284b::function_81282ad3(5, 1);
    level thread namespace_8c04284b::function_16902251();
    level thread namespace_8c04284b::function_e1916608();
    level thread namespace_ff8b8430::function_7495bd30();
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_4aca7529(0);
    org = namespace_ec06fe4a::function_e22ae9b3((0, 0, 0));
    if (isdefined(org)) {
        org thread namespace_ec06fe4a::function_d55f042c(level, "game_over");
    }
    while (var_5598fe58 > 0) {
        var_5598fe58--;
        spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_fdea25f1();
        if (isdefined(org)) {
            org.origin.org = spot.origin;
            org namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
            earthquake(0.5, 0.75, org.origin, 1000);
            org namespace_83eb6304::function_3ecfde67("lightningStrike");
            wait(1);
            earthquake(0.5, 0.75, org.origin, 1000);
            org namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
            org namespace_83eb6304::function_3ecfde67("lightningStrike");
        }
        var_9139aa08 = namespace_58e19d6::function_6ae08d6c(spot.origin);
        if (isdefined(var_9139aa08)) {
            /#
                if (is_true(level.var_a095060b)) {
                    var_9139aa08 thread function_3b3bb5c(0.1, 600);
                }
            #/
            wait(0.1);
            var_9139aa08 thread namespace_58e19d6::function_27adf2ff(0);
            var_9139aa08 namespace_ec06fe4a::function_2f4b0f9(var_9139aa08.health);
            var_9139aa08 callback::function_d8abfc3d(#"on_ai_killed", &function_9002816a);
            if (var_5598fe58 > 0) {
                wait(10);
            }
        }
    }
    if (isdefined(org)) {
        org delete();
    }
    while (level.var_8cff5775.var_5598fe58.size > 0) {
        wait(1);
    }
    namespace_9fc66ac::function_5e3127a5(undefined, "doa_bossdefeated");
    level notify(#"round_over");
    level notify(#"hash_7b68a1d715669022");
    level flag::clear("doa_round_spawning");
    level flag::set("doa_round_over");
    level.var_8cff5775.var_41adf604 = undefined;
    level thread namespace_ec06fe4a::function_de70888a();
    namespace_ec06fe4a::function_b6b79fd1();
    level namespace_7f5aeb59::function_67f054d7();
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_464d882c();
    if (!is_true(level.var_8cff5775.hardcoremode)) {
        var_69f5de55 = struct::get("boss_armory_shop", "targetname");
        if (!isdefined(var_69f5de55)) {
            var_69f5de55 = [[ level.var_8cff5775.var_39e3fa99 ]]->function_fdea25f1();
        }
        if (isdefined(var_69f5de55)) {
            var_8f886383 = namespace_ec06fe4a::function_e22ae9b3(var_69f5de55.origin, "p7_shopping_cart_plastic", var_69f5de55.angles, "armory_shop");
            if (isdefined(var_8f886383)) {
                var_8f886383 thread function_2a5de85d();
                if (isdefined(var_69f5de55.modelscale)) {
                    var_8f886383 setscale(var_69f5de55.modelscale);
                } else {
                    var_8f886383 setscale(2);
                }
            }
        }
    }
    if (isdefined(var_35b85488)) {
        var_35b85488 delete();
    }
    var_2c7cecea = struct::get("fidolina_egg_hatch", "targetname");
    var_ae0093c9 = namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_egg"), var_2c7cecea.origin, var_2c7cecea.angles, 1, 1);
    if (isdefined(var_ae0093c9)) {
        var_ae0093c9 setscale(4);
        var_ae0093c9 thread function_86431fee(var_2c7cecea);
        var_ae0093c9.var_94a6a59e.var_ae0093c9 = namespace_dfc652ee::function_6265bde4("zombietron_chicken");
        level thread function_99072b0f(var_ae0093c9);
    }
    level util::set_lighting_state(0, 0);
    level clientfield::set("setTOD", 0);
    level namespace_7f5aeb59::function_836aeb74();
    level namespace_a6ddb172::function_7a0e5387(62);
    foreach (player in getplayers()) {
        if (!isdefined(player.var_f5602976) || !isdefined(player.var_8cff5775)) {
            continue;
        }
        if (player namespace_d2efac9a::function_4226df4b() && player.var_f5602976 <= var_77f9aad3) {
            player giveachievement(#"doa_achievement_fidolina");
            if (player.var_8cff5775.var_2d965438 === 0) {
                player namespace_d2efac9a::function_267c2183();
            }
        }
        player namespace_d2efac9a::function_4ac57fbe();
    }
    for (i = 0; i <= 3; i++) {
        spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_fdea25f1();
        level namespace_dfc652ee::function_68442ee7(spot.origin, 50, 128, 1);
        wait(1);
    }
    wait(10);
    for (i = 0; i <= 3; i++) {
        spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_fdea25f1();
        level namespace_dfc652ee::function_68442ee7(spot.origin, 50, 128, 1);
        wait(1);
    }
    wait(10);
    flag::set("arena_pauseAdvancement");
    level notify(#"hash_7b68a1d715669022");
    level thread namespace_8c04284b::function_3f18205d();
    level waittill(#"hash_770d5565510bda45");
    level thread namespace_7f5aeb59::function_67f054d7();
    level notify(#"hash_352e6b62a3ee888b");
    level thread namespace_dfc652ee::function_19fa261e();
    if (isdefined(var_8f886383)) {
        var_8f886383 delete();
    }
    function_1ae998fb();
    flag::clear("arena_pauseAdvancement");
    var_94f3b914 = namespace_ff8b8430::function_251ee3bd("wolf_hellhound");
    [[ var_94f3b914 ]]->function_7edd7727(6);
    var_94f3b914 = namespace_ff8b8430::function_251ee3bd("skeleton");
    [[ var_94f3b914 ]]->function_7edd7727(6);
    var_94f3b914 = namespace_ff8b8430::function_251ee3bd("steiner");
    [[ var_94f3b914 ]]->function_7edd7727(3);
    if (is_true(level.var_8cff5775.hardcoremode)) {
        var_94f3b914 = namespace_ff8b8430::function_251ee3bd("demon");
        [[ var_94f3b914 ]]->function_7edd7727(6);
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x0
// Checksum 0x5d131ca2, Offset: 0x7fe8
// Size: 0xc
function donothing(*unused) {
    
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0x75e653e5, Offset: 0x8000
// Size: 0x1e8
function function_99072b0f(var_ae0093c9) {
    self notify("6978784ee8a00cdb");
    self endon("6978784ee8a00cdb");
    level endon(#"game_over");
    result = undefined;
    result = level waittill(#"hash_1ebd993fc32acc25");
    if (result.var_d3558104 !== var_ae0093c9) {
        level thread function_99072b0f(var_ae0093c9);
    }
    result.var_94a6a59e setscale(4);
    result.var_94a6a59e notify(#"hash_2a866f50cc161ca8");
    result.var_94a6a59e.var_54dddc17 = level;
    result.var_94a6a59e.var_1ad5202b = 1;
    level namespace_a6ddb172::function_7a0e5387(60);
    namespace_9fc66ac::function_5e3127a5(undefined, "doa_fidosaved");
    foreach (player in getplayers()) {
        wait(randomfloatrange(1, 2));
        if (isdefined(player)) {
            player thread namespace_6e90e490::function_47e11416(4, undefined, 1);
        }
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x81f0
// Size: 0x4
function function_7519f916() {
    
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0xbc2114ed, Offset: 0x8200
// Size: 0x54
function function_9002816a() {
    origin = self.origin;
    level thread namespace_dfc652ee::function_d06cbfe8(origin, randomintrange(20, 30), 32, 1);
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0x910c55f7, Offset: 0x8260
// Size: 0x9c
function function_1ae998fb(movie = "wz_doa_outro") {
    namespace_ec06fe4a::function_445bad70(1);
    level thread lui::play_movie(hash(movie), "fullscreen", 0, 0, 1);
    level waittill(#"movie_done");
    namespace_ec06fe4a::function_445bad70(0);
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0x7f7d440a, Offset: 0x8308
// Size: 0x94
function function_a14d2338(var_f1280ed2) {
    if (!isdefined(level.var_8cff5775)) {
        return;
    }
    if (getplayers().size > 1 || level.var_8cff5775.var_6c58d51 > 0) {
        return;
    }
    if (is_true(level.var_fb6c6113)) {
        return;
    }
    level thread function_89106e27(var_f1280ed2);
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0xcc243cf4, Offset: 0x83a8
// Size: 0x2b4
function function_89106e27(var_f1280ed2 = 2) {
    targetname = [[ level.var_8cff5775.var_39e3fa99 ]]->getname() + "_tutorial";
    spot = struct::get(targetname, "targetname");
    if (!isdefined(spot)) {
        return;
    }
    var_9958214e = namespace_ec06fe4a::function_e22ae9b3(spot.origin, spot.script_noteworthy, spot.angles, targetname + "_" + spot.script_noteworthy);
    var_9958214e.takedamage.var_9958214e = 0;
    var_9958214e.var_8cff5775.var_9958214e = spawnstruct();
    var_9958214e.var_8cff5775.var_92b57f62 = 0;
    var_9958214e.var_8cff5775.var_578b6ad4 = 0;
    var_9958214e clientfield::set("setTutorialEnt", 1);
    var_9958214e thread namespace_ec06fe4a::function_d55f042c(level, "arena_switching");
    var_9958214e thread namespace_ec06fe4a::function_d55f042c(level, "game_over");
    var_9958214e thread namespace_ec06fe4a::function_d55f042c(level, "wild_taken");
    var_9958214e thread namespace_ec06fe4a::function_d55f042c(level, "advancedStart");
    if (randomint(100) > 50) {
        sword = namespace_ec06fe4a::function_e22ae9b3(var_9958214e.origin, "zombietron_crab_pirate_sword", var_9958214e.angles, targetname + "_sword");
        if (isdefined(sword)) {
            var_9958214e enablelinkto();
            sword thread namespace_ec06fe4a::function_d55f042c(var_9958214e, "death");
            sword linkto(var_9958214e, "tag_crab_animate", (23, -26, -12), vectorscale((0, -1, 0), 12));
        }
    }
    wait(var_f1280ed2);
    if (isdefined(var_9958214e)) {
        var_9958214e function_b64568e2();
    }
}

// Namespace wz_doa/wz_doa
// Params 2, eflags: 0x2 linked
// Checksum 0x69dcbd00, Offset: 0x8668
// Size: 0xfa
function function_520814d5(player, var_8028986b) {
    if (!isdefined(self) || !isdefined(self.var_8cff5775)) {
        return 0;
    }
    if (!isdefined(level.var_8cff5775.var_39e3fa99)) {
        return 0;
    }
    if (level.var_8cff5775.roundnumber < var_8028986b) {
        return 0;
    }
    if (is_true(self.var_8cff5775.var_91fab440)) {
        return 0;
    }
    if (gettime() < self.var_8cff5775.var_578b6ad4) {
        return 0;
    }
    if (isdefined(player) && distancesquared(self.origin, player.origin) > function_a3f6cdac(160)) {
        return 0;
    }
    return 1;
}

// Namespace wz_doa/wz_doa
// Params 2, eflags: 0x2 linked
// Checksum 0x103a4181, Offset: 0x8770
// Size: 0x84
function function_762b14b0(var_acbf7fe7, var_25f4de97 = 0) {
    level.var_8cff5775.var_1e31cd70 = level.var_8cff5775.var_1e31cd70 & var_25f4de97;
    self namespace_83eb6304::function_3ecfde67("crab_bubbles");
    self thread namespace_6e90e490::function_47e11416(var_acbf7fe7, 5, 1);
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0xdac9d49e, Offset: 0x8800
// Size: 0xfa
function function_30e6e8e9(var_8028986b = 1) {
    if (level.var_8cff5775.var_1e31cd70 & 2) {
        return;
    }
    self notify("b0010c87288ee3c");
    self endon("b0010c87288ee3c");
    self endon(#"death");
    while (1) {
        wait(1);
        player = getplayers()[0];
        if (!function_520814d5(player, var_8028986b)) {
            continue;
        }
        if (level.var_8cff5775.var_25f4de97 & 0) {
            continue;
        }
        self function_762b14b0(26, 2);
        return;
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0x9e29cdc9, Offset: 0x8908
// Size: 0x102
function function_c139c0cd(var_8028986b = 1) {
    if (level.var_8cff5775.var_1e31cd70 & 4) {
        return;
    }
    self notify("138360a5b9bf2a44");
    self endon("138360a5b9bf2a44");
    self endon(#"death");
    while (1) {
        wait(1);
        player = getplayers()[0];
        if (!function_520814d5(player, var_8028986b)) {
            continue;
        }
        if (player.var_8cff5775.score.var_194c59ae != 1) {
            continue;
        }
        self function_762b14b0(22, 4);
        return;
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0xf2974dab, Offset: 0x8a18
// Size: 0xf0
function function_5f282dbb(var_8028986b = 1) {
    self notify("176b63e5dbf0b460");
    self endon("176b63e5dbf0b460");
    self endon(#"death");
    while (1) {
        wait(1);
        player = getplayers()[0];
        if (!function_520814d5(player, var_8028986b)) {
            continue;
        }
        var_dfb0558b = [[ level.var_8cff5775.var_39e3fa99 ]]->function_dfb49846();
        if (var_dfb0558b.size == 0) {
            continue;
        }
        self function_762b14b0(23);
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0x4d24bfbe, Offset: 0x8b10
// Size: 0xd0
function function_6b8cf507(var_8028986b = 1) {
    self notify("165ae79fcff36995");
    self endon("165ae79fcff36995");
    self endon(#"death");
    while (1) {
        wait(1);
        player = getplayers()[0];
        if (!function_520814d5(player, var_8028986b)) {
            continue;
        }
        if (!isdefined(level.var_8cff5775.var_ad142a82)) {
            continue;
        }
        self function_762b14b0(21);
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0xe3cfbf84, Offset: 0x8be8
// Size: 0xd0
function function_b5812513(var_8028986b = 1) {
    self notify("12f3466cf5e4b8df");
    self endon("12f3466cf5e4b8df");
    self endon(#"death");
    while (1) {
        wait(1);
        player = getplayers()[0];
        if (!function_520814d5(player, var_8028986b)) {
            continue;
        }
        if (!isdefined(level.var_8cff5775.var_6c225512)) {
            continue;
        }
        self function_762b14b0(24);
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0x800431c0, Offset: 0x8cc0
// Size: 0x102
function function_3346623b(var_8028986b = 1) {
    if (level.var_8cff5775.var_1e31cd70 & 8) {
        return;
    }
    self notify("a9a33e125952244");
    self endon("a9a33e125952244");
    self endon(#"death");
    while (1) {
        wait(1);
        player = getplayers()[0];
        if (!function_520814d5(player, var_8028986b)) {
            continue;
        }
        if (player.var_8cff5775.score.keys == 0) {
            continue;
        }
        self function_762b14b0(25, 8);
        return;
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0x98132107, Offset: 0x8dd0
// Size: 0xfa
function function_aa9cc9d2(var_8028986b = 1) {
    if (level.var_8cff5775.var_1e31cd70 & 16) {
        return;
    }
    self notify("9f7bc6fceaf3928");
    self endon("9f7bc6fceaf3928");
    self endon(#"death");
    while (1) {
        wait(1);
        player = getplayers()[0];
        if (!function_520814d5(player, var_8028986b)) {
            continue;
        }
        if (!isdefined(level.var_8cff5775.var_1311d8f5)) {
            continue;
        }
        self function_762b14b0(32, 16);
        return;
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0xb06a42d2, Offset: 0x8ed8
// Size: 0x162
function function_249cea33(var_8028986b = 1) {
    if (level.var_8cff5775.var_1e31cd70 & 32) {
        return;
    }
    if (is_true(level.var_8cff5775.var_318aa67a)) {
        return;
    }
    self notify("5da66f5fb2457137");
    self endon("5da66f5fb2457137");
    self endon(#"death");
    while (1) {
        wait(1);
        player = getplayers()[0];
        if (!function_520814d5(player, var_8028986b)) {
            continue;
        }
        if (is_true(player.var_8cff5775.var_3e81d24c) == 0) {
            continue;
        }
        if (!util::within_fov(player.origin, player.angles, self.origin, 0.7)) {
            continue;
        }
        self function_762b14b0(27, 32);
        return;
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0xce4dceec, Offset: 0x9048
// Size: 0x122
function function_6b42d44(var_8028986b = 1) {
    if (level.var_8cff5775.var_1e31cd70 & 64) {
        return;
    }
    self notify("17ad8c4d3b9949dc");
    self endon("17ad8c4d3b9949dc");
    self endon(#"death");
    while (1) {
        wait(1);
        player = getplayers()[0];
        if (!function_520814d5(player, var_8028986b)) {
            continue;
        }
        if (level.var_8cff5775.var_25f4de97 & 0) {
            continue;
        }
        if (player.var_8cff5775.var_fd5fcb75 == player.var_8cff5775.var_ed8fde10) {
            continue;
        }
        self function_762b14b0(28, 64);
        return;
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0x7da5e164, Offset: 0x9178
// Size: 0x11a
function function_22c260e(var_8028986b = 1) {
    if (level.var_8cff5775.var_1e31cd70 & 128) {
        return;
    }
    self notify("2a6d4c639df16f89");
    self endon("2a6d4c639df16f89");
    self endon(#"death");
    while (1) {
        wait(1);
        player = getplayers()[0];
        if (!function_520814d5(player, var_8028986b)) {
            continue;
        }
        if (player.var_8cff5775.score.bombs == 0) {
            continue;
        }
        if (level.var_8cff5775.var_25f4de97 & 0) {
            continue;
        }
        self function_762b14b0(30, 128);
        return;
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0x413542bf, Offset: 0x92a0
// Size: 0x11a
function function_13471cec(var_8028986b = 1) {
    if (level.var_8cff5775.var_1e31cd70 & 256) {
        return;
    }
    self notify("45c2afdc6a198093");
    self endon("45c2afdc6a198093");
    self endon(#"death");
    while (1) {
        wait(1);
        player = getplayers()[0];
        if (!function_520814d5(player, var_8028986b)) {
            continue;
        }
        if (player.var_8cff5775.score.boosts == 0) {
            continue;
        }
        if (level.var_8cff5775.var_25f4de97 & 0) {
            continue;
        }
        self function_762b14b0(31, 256);
        return;
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0xf5b5ef1b, Offset: 0x93c8
// Size: 0xda
function function_570d7b0b(var_8028986b = 1) {
    if (level.var_8cff5775.var_1e31cd70 & 512) {
        return;
    }
    self notify("3a2ef2c8f3eec199");
    self endon("3a2ef2c8f3eec199");
    self endon(#"death");
    while (1) {
        wait(1);
        player = getplayers()[0];
        if (!function_520814d5(player, var_8028986b)) {
            continue;
        }
        self function_762b14b0(29, 512);
        return;
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0xa5a3ab80, Offset: 0x94b0
// Size: 0xfa
function function_b170f79d(var_8028986b = 1) {
    if (level.var_8cff5775.var_1e31cd70 & 1024) {
        return;
    }
    self notify("59737f14f87a6c16");
    self endon("59737f14f87a6c16");
    self endon(#"death");
    while (1) {
        wait(1);
        player = getplayers()[0];
        if (!function_520814d5(player, var_8028986b)) {
            continue;
        }
        if (level.var_8cff5775.var_5598fe58.size == 0) {
            continue;
        }
        self function_762b14b0(33, 1024);
        return;
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0x636ac39, Offset: 0x95b8
// Size: 0x102
function function_be3d7906(var_8028986b = 1) {
    if (level.var_8cff5775.var_1e31cd70 & 2048) {
        return;
    }
    self notify("1257e27f508a1efe");
    self endon("1257e27f508a1efe");
    self endon(#"death");
    while (1) {
        wait(1);
        player = getplayers()[0];
        if (!function_520814d5(player, var_8028986b)) {
            continue;
        }
        if (!is_true(level.var_8cff5775.var_c003ac17)) {
            continue;
        }
        self function_762b14b0(34, 2048);
        return;
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0xbb08d3b2, Offset: 0x96c8
// Size: 0xd8
function function_e8a512e2(var_8028986b = 1) {
    self notify("18affa4f4df68790");
    self endon("18affa4f4df68790");
    self endon(#"death");
    while (1) {
        wait(1);
        player = getplayers()[0];
        if (!function_520814d5(player, var_8028986b)) {
            continue;
        }
        self namespace_83eb6304::function_3ecfde67("crab_bubbles");
        self thread namespace_6e90e490::function_47e11416(7, 5);
    }
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0xa3e4ac58, Offset: 0x97a8
// Size: 0xe4
function function_880094bd(*var_8028986b) {
    self notify("5fbfd84b34c3e6d7");
    self endon("5fbfd84b34c3e6d7");
    self endon(#"death");
    wait(6);
    player = getplayers()[0];
    if (distancesquared(self.origin, player.origin) > function_a3f6cdac(256)) {
        self namespace_83eb6304::function_3ecfde67("crab_bubbles");
        self thread namespace_6e90e490::function_47e11416(8, 5, 1, 1);
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0xd818bb99, Offset: 0x9898
// Size: 0x1ac
function function_b64568e2() {
    if (!isdefined(self) || getplayers().size > 1) {
        return;
    }
    self function_880094bd();
    self thread function_be3d7906();
    self thread function_b5812513();
    self thread function_6b8cf507();
    self thread function_b170f79d(5);
    self thread function_5f282dbb();
    self thread function_aa9cc9d2(9);
    self thread function_3346623b(1);
    self thread function_30e6e8e9(1);
    self thread function_c139c0cd(2);
    self thread function_6b42d44(2);
    self thread function_22c260e(3);
    self thread function_13471cec(4);
    self thread function_249cea33(4);
    self thread function_570d7b0b(5);
    self thread function_e8a512e2();
}

// Namespace wz_doa/wz_doa
// Params 1, eflags: 0x2 linked
// Checksum 0x719c9b64, Offset: 0x9a50
// Size: 0x3c
function function_9e356c78(*name) {
    level namespace_a6ddb172::function_7a0e5387(49);
    level thread namespace_9fc66ac::announce(10);
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x6025868e, Offset: 0x9a98
// Size: 0xd6
function function_9dfe2f0b() {
    self notify("70d70b2cc2099c26");
    self endon("70d70b2cc2099c26");
    level endon(#"hash_66786792448addbf", #"hash_7b68a1d715669022");
    var_94f3b914 = namespace_ff8b8430::function_251ee3bd("smoke_zombie");
    while (1) {
        level waittill(#"hash_46fa6c5088941b95", #"hash_c1cceae4479f2e5");
        if ([[ level.var_8cff5775.var_39e3fa99 ]]->ispaused()) {
            continue;
        }
        level thread namespace_77eccc4f::function_d1603826(var_94f3b914);
        wait(10);
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0xe8c8650c, Offset: 0x9b78
// Size: 0x168
function function_3e4c2ba0() {
    self endon(#"death");
    var_1736b9f0 = 0;
    while (1) {
        if (randomint(100) < 4) {
            self namespace_83eb6304::function_3ecfde67("teleporter_disabled");
            self namespace_e32bb68::function_3a59ec34("evt_doa_teleporter_spark");
        }
        if (randomint(100) < 2) {
            self namespace_83eb6304::function_3ecfde67("hazard_electric");
            self namespace_e32bb68::function_3a59ec34("evt_doa_teleporter_spark");
        }
        if (!var_1736b9f0 && randomint(100) > 95) {
            self namespace_83eb6304::function_3ecfde67("teleporter_dungeon_light");
            var_1736b9f0 = 1;
        } else if (var_1736b9f0) {
            var_1736b9f0 = 0;
            self namespace_83eb6304::turnofffx("teleporter_dungeon_light");
        }
        wait(0.1);
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x845e480f, Offset: 0x9ce8
// Size: 0x188
function function_a14b5631() {
    self notify(#"hash_7bf2519960a3852a");
    self endon(#"death");
    self rotateto(self.var_c9f66f0d, 4, 0, 3.8);
    self waittilltimeout(4, #"rotatedone");
    wait(randomfloatrange(2, 3));
    while (isdefined(self)) {
        angle = (0, randomfloatrange(40, 180) * -1, 0);
        var_319d6066 = randomfloatrange(4, 8);
        self rotateto(self.angles + angle, var_319d6066, randomfloatrange(var_319d6066 * 0.15, var_319d6066 * 0.25), randomfloatrange(var_319d6066 * 0.25, var_319d6066 * 0.45));
        wait(randomfloatrange(var_319d6066, var_319d6066 * 2));
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x976c8965, Offset: 0x9e78
// Size: 0xd4
function function_ec356b51() {
    self thread function_a14b5631();
    self setmodel("zombietron_teleporter_damaged");
    self namespace_83eb6304::function_3ecfde67("wild_portal_radial_burst");
    self namespace_83eb6304::function_3ecfde67("electrical_fire");
    self namespace_e32bb68::function_3a59ec34("evt_doa_teleporter_wilds_burst");
    self namespace_e32bb68::function_ae271c0b("evt_doa_teleporter_lp");
    self thread function_3e4c2ba0();
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x14d58924, Offset: 0x9f58
// Size: 0x1e8
function function_dc41b38() {
    result = undefined;
    result = level waittill(#"hash_3004b3af4b0e5aa0");
    var_ad142a82 = result.var_ad142a82;
    var_ad142a82 endon(#"death");
    var_ad142a82.malfunction.var_ad142a82 = 1;
    level waittill(#"hash_53cf824d8cd53237");
    var_ad142a82 thread function_ec356b51();
    wait(5);
    foreach (player in getplayers()) {
        player clientfield::set_to_player("cutscene", 0);
    }
    level.var_7dcdbe16 = undefined;
    level notify(#"hash_5579b42bba29dd0f");
    namespace_ec06fe4a::function_445bad70(0);
    while (1) {
        if (!isdefined(var_ad142a82.trigger)) {
            waitframe(1);
            continue;
        }
        result = undefined;
        result = var_ad142a82.trigger waittill(#"trigger");
        if (isdefined(result.activator)) {
            player = result.activator;
            player thread namespace_6e90e490::function_47e11416(10);
        }
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x3c1d61b2, Offset: 0xa148
// Size: 0x10f4
function function_ae378de8() {
    streamermodelhint("c_zom_doa_simianaut_body", 20);
    streamermodelhint("c_zom_doa_simianaut_wig", 20);
    streamermodelhint("c_zom_doa_simianaut_glasses", 20);
    streamermodelhint("zombietron_spoon", 20);
    wait(1);
    var_a3f4cb78 = [[ level.var_8cff5775.var_39e3fa99 ]]->function_51dd0a59();
    var_9139aa08 = namespace_58e19d6::function_6ae08d6c(var_a3f4cb78.origin);
    var_9139aa08.ignoreall.var_9139aa08 = 1;
    var_9139aa08.takedamage.var_9139aa08 = 0;
    var_9139aa08.var_8f5d982f.var_9139aa08 = 1;
    var_9139aa08.var_6e5b38d9.var_9139aa08 = 99999999;
    var_9139aa08 clientfield::set("show_health_bar", 0);
    var_9139aa08 namespace_58e19d6::function_27adf2ff(0, 0);
    var_9139aa08 thread namespace_ec06fe4a::function_d55f042c(level, "arena_switching");
    var_9139aa08 thread namespace_ec06fe4a::function_d55f042c(level, "game_over");
    var_9139aa08 thread namespace_ec06fe4a::function_d55f042c(level, "wild_taken");
    var_9139aa08 namespace_ec06fe4a::function_8c808737();
    var_9139aa08 pathmode("dont move");
    var_9139aa08 orientmode("face enemy");
    if (is_true(level.var_8cff5775.var_318aa67a)) {
        foreach (player in getplayers()) {
            var_993aabe1 = var_a3f4cb78.origin - player.origin;
            v_angles = vectortoangles(var_993aabe1);
            player setplayerangles(v_angles);
        }
    }
    org = spawn("script_model", var_a3f4cb78.origin);
    org setmodel("tag_origin");
    org thread namespace_ec06fe4a::function_d55f042c(level, "game_over");
    org thread namespace_ec06fe4a::function_d55f042c(level, "arena_switching");
    org thread namespace_ec06fe4a::function_d55f042c(level, "wild_taken");
    earthquake(0.5, 0.75, var_a3f4cb78.origin, 1000);
    org namespace_83eb6304::function_3ecfde67("lightningStrike");
    org namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
    wait(randomfloat(1.2));
    org namespace_83eb6304::function_3ecfde67("lightningStrike");
    org namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
    wait(randomfloat(2));
    org namespace_83eb6304::function_3ecfde67("lightningStrike");
    org namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
    waitframe(1);
    org namespace_83eb6304::function_3ecfde67("lightningStrike");
    org namespace_83eb6304::function_3ecfde67("wild_portal");
    wait(randomfloat(1));
    org namespace_83eb6304::function_3ecfde67("lightningStrike");
    org namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
    earthquake(0.5, 0.75, var_a3f4cb78.origin, 1000);
    var_f8999e14 = struct::get("island_cutscene_camloc", "targetname");
    if (isdefined(var_9139aa08)) {
        angle = vectortoangles(var_f8999e14.origin - var_9139aa08.origin);
        angles = (var_9139aa08.angles[0], angle[1], var_9139aa08.angles[2]);
        var_9139aa08 dontinterpolate();
        var_9139aa08 forceteleport(var_a3f4cb78.origin, angles);
        org.angles = angles;
        var_9139aa08 linkto(org);
        var_9139aa08 namespace_ec06fe4a::function_4f72130c();
        var_9139aa08 namespace_58e19d6::function_27adf2ff(1, 0);
        wait(0.5);
        org namespace_83eb6304::function_3ecfde67("lightningStrike");
        org namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
    }
    if (isdefined(var_9139aa08)) {
        var_9139aa08 thread namespace_6e90e490::function_47e11416(11, 3, 1);
        level thread namespace_dfc652ee::function_ad7ac41b(var_9139aa08.origin, 20, 700, 1);
        var_9139aa08.var_ba88972.var_9139aa08 = 1;
        var_9139aa08 waittilltimeout(2, #"hash_73d8763ded66b7c9", #"death");
    }
    if (isdefined(var_9139aa08)) {
        var_9139aa08.var_ba88972 = undefined;
        org namespace_83eb6304::function_3ecfde67("lightningStrike");
        org namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
        level flag::clear("arena_hold_presentation");
        wait(3.1);
    }
    if (isdefined(var_9139aa08)) {
        var_9139aa08 thread namespace_6e90e490::function_47e11416(11, 3, 1);
        org namespace_83eb6304::function_3ecfde67("lightningStrike");
        org namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
        wait(1.25);
    }
    if (isdefined(var_9139aa08)) {
        var_26e4879c = [[ level.var_8cff5775.var_39e3fa99 ]]->function_ffcf1d1() + vectorscale((0, 0, 1), 20);
        var_ac21a084 = namespace_ec06fe4a::function_e22ae9b3(var_9139aa08 gettagorigin("j_wrist_le"), "zombietron_silverback_bomb", (0, 0, 0), "zombietron_silverback_bomb");
        v1 = 0.77;
        var_812cd671 = 440;
        var_5e2edb24 = 1.1;
        v2 = 0.4;
        var_60c0e048 = 0.55;
        var_83565ce3 = 0.2;
        var_730384cd = 0.25;
        velocity = (var_26e4879c - var_ac21a084.origin) * v1;
        velocity = (velocity[0], velocity[1], var_812cd671);
        var_ac21a084 movegravity(velocity, var_5e2edb24);
        wait(var_5e2edb24);
        var_ac21a084 namespace_e32bb68::function_3a59ec34("evt_doa_pickup_barrel_active_impact");
        var_ac21a084 movegravity(velocity * v2, var_60c0e048);
        wait(var_60c0e048);
        var_ac21a084 namespace_e32bb68::function_3a59ec34("evt_doa_pickup_barrel_active_impact");
        var_ac21a084 movegravity(velocity * var_83565ce3, var_730384cd);
        wait(var_730384cd);
        var_ac21a084 namespace_e32bb68::function_3a59ec34("evt_doa_pickup_barrel_active_impact");
        var_ac21a084 thread namespace_ec06fe4a::function_f506b4c7();
        wait(1);
    }
    if (isdefined(var_9139aa08)) {
        level.var_8cff5775.var_537a3e29[level.var_8cff5775.var_537a3e29.size] = var_9139aa08;
        var_9139aa08 thread namespace_6e90e490::function_47e11416(11, 3, 1);
        var_9139aa08.var_ba88972.var_9139aa08 = 1;
        var_9139aa08 waittilltimeout(2, #"hash_73d8763ded66b7c9", #"death");
        wait(3.1);
    }
    if (isdefined(var_9139aa08)) {
        var_9139aa08.var_ba88972 = undefined;
        org namespace_83eb6304::function_3ecfde67("lightningStrike");
        org namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
        var_9139aa08 thread namespace_6e90e490::function_47e11416(11, 3, 1);
    }
    wait(3.1);
    if (isdefined(var_9139aa08)) {
        fxorg = namespace_ec06fe4a::function_e22ae9b3(var_9139aa08 gettagorigin("tag_eye"), "tag_origin");
        org namespace_83eb6304::function_3ecfde67("lightningStrike");
        org namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
        wait(0.1);
    }
    if (isdefined(var_9139aa08)) {
        var_9139aa08 unlink();
        var_9139aa08.var_febfd0.angles = var_9139aa08.angles;
        var_9139aa08.var_febfd0.origin = var_9139aa08.origin;
        var_9139aa08 linkto(var_9139aa08.var_febfd0);
        destination = var_9139aa08.var_febfd0.origin + vectorscale((0, 0, -1), 400);
        var_9139aa08.var_febfd0 thread function_dbe90b58();
        var_9139aa08.var_febfd0 moveto(destination, 5, 4);
    }
    if (isdefined(fxorg)) {
        fxorg.targetname.fxorg = "tesla_trail";
        fxorg namespace_83eb6304::function_3ecfde67("tesla_trail");
        fxorg moveto(var_ac21a084.origin + vectorscale((0, 0, 1), 42), 0.6);
        fxorg waittilltimeout(0.6, #"movedone");
        fxorg namespace_83eb6304::function_3ecfde67("hazard_electric");
        var_ac21a084 namespace_83eb6304::function_3ecfde67("bombFuse");
        var_ac21a084 namespace_e32bb68::function_3a59ec34("evt_doa_teleporter_bomb_fuse_lp");
        wait(1.5);
        var_ac21a084 hidepart("tag_fuse");
        wait(1.2);
        fxorg delete();
    } else {
        wait(3);
    }
    if (isdefined(var_9139aa08)) {
        var_9139aa08 playsound("zmb_doa_ai_silverback_vocal_roar_short");
        wait(1);
    }
    if (isdefined(var_9139aa08) && isdefined(org)) {
        org namespace_83eb6304::function_3ecfde67("lightningStrike");
        org namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
        var_9139aa08.var_febfd0 waittilltimeout(1, #"movedone");
        org namespace_83eb6304::function_3ecfde67("lightningStrike");
        org namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
        if (isdefined(var_9139aa08)) {
            var_9139aa08 playsound("zmb_doa_ai_silverback_vocal_roar_short");
        }
        waitframe(1);
    }
    if (isdefined(var_9139aa08)) {
        var_9139aa08 delete();
    }
    if (isdefined(org)) {
        org namespace_83eb6304::function_3ecfde67("wild_portal_radial_burst");
        org namespace_e32bb68::function_3a59ec34("evt_doa_teleporter_wilds_burst");
        wait(1);
        org namespace_83eb6304::function_3ecfde67("lightningStrike");
        org namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
        if (isdefined(org)) {
            org delete();
        }
    }
    wait(1);
    level flag::clear("arena_hold_banner_presentation");
    level notify(#"hash_53cf824d8cd53237");
    if (isdefined(var_ac21a084)) {
        var_ac21a084 namespace_83eb6304::function_3ecfde67("monkey_detonate");
        var_ac21a084 namespace_83eb6304::turnofffx("bombFuse");
        var_ac21a084 namespace_e32bb68::function_ae271c0b("evt_doa_teleporter_bomb_fuse_lp");
        var_ac21a084 namespace_e32bb68::function_3a59ec34("evt_doa_teleporter_bomb_explo");
        var_ac21a084 namespace_ec06fe4a::function_8c808737();
        var_ac21a084 thread namespace_ec06fe4a::function_52afe5df(0.5);
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0xadb36bae, Offset: 0xb248
// Size: 0xa2
function function_dbe90b58() {
    self endon(#"death");
    dir = 180;
    time = 0.4;
    while (1) {
        self rotateto(self.angles + (0, dir, 0), time);
        wait(time);
        time = math::clamp(time * 0.78, 0.05, 1);
    }
}

// Namespace wz_doa/wz_doa
// Params 0, eflags: 0x2 linked
// Checksum 0x46c2fc53, Offset: 0xb2f8
// Size: 0x198
function function_2a6cdb09() {
    players = getplayers();
    foreach (player in players) {
        player.var_8cff5775.var_57b93c27 = 1;
        if (sessionmodeisonlinegame() == 0) {
            continue;
        }
        if (player stats::function_f94325d3() == 0) {
            continue;
        }
        player.var_8cff5775.var_25f4de97 = player stats::get_stat(#"hash_64fd75a9ce18b89f", #"hash_191ee9b05c5a28d0");
        var_515ca345 = player stats::get_stat(#"hash_64fd75a9ce18b89f", #"hash_37fcc31e34bbeb9e");
        if (!isdefined(var_515ca345) || var_515ca345 > 0) {
            player.var_8cff5775.var_57b93c27 = 0;
        } else {
            uploadstats(player);
        }
    }
}
