// Atian COD Tools GSC CW decompiler test
#using script_6991584fc21f5ae8;
#using script_2c9915120c137848;
#using script_2474a362752098d2;
#using script_36fc02e86719d0f5;
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_3bbf85ab4cb9f3c2;
#using script_40f967ad5d18ea74;
#using script_3faf478d5b0850fe;
#using script_47851dbeea22fe66;
#using script_1ce46999727f2f2b;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_f25df01962c79c6;
#using script_6b6510e124bad778;
#using script_634ae70c663d1cc9;
#using script_4d8045dbc17aa3ee;
#using script_1b0b07ff57d1dde3;
#using script_350cffecd05ef6cf;
#using script_1ee011cd0961afd7;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_50fca1a24ae351;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
#using script_5549681e1669c11a;
#using script_f38dc50f0e82277;
#using script_413ab8fe25a61c50;
#using script_68cdf0ca5df5e;
#using scripts\core_common\values_shared.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\core_common\player\player_stats.gsc;
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
#using script_75d4e6ecb8f05163;

#namespace namespace_4dae815d;

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 0, eflags: 0x2 linked
// Checksum 0x6d67fa8f, Offset: 0x550
// Size: 0x3dc
function init() {
    level.var_43cd3fe5 = doa_keytrade::register();
    level.doa = spawnstruct();
    level.doa.world_state = 0;
    level.doa.var_cf250523 = &doa_player::callback_playerkilled;
    level.doa.var_abe40be4 = &doa_player::callback_playerdamage;
    level.doa.var_cd10d20a = &doa_player::callback_playerlaststand;
    level.doa.var_16a35e94 = &namespace_7f5aeb59::function_ebcb2cca;
    level.doa.var_abd5eb1e = &function_d41688e3;
    level.doa.var_99ee4341 = &function_ce7e12de;
    level.doa.var_3bc55386 = &namespace_6e90e490::function_3332c6a1;
    level.doa.var_d0b39b1a = &namespace_eccff4fb::initplayer;
    level.doa.var_502e9288 = &namespace_d2efac9a::initplayer;
    level.doa.var_318aa67a = getdvarint(#"hash_670ddb067d311f3d", 0);
    level.doa.hardcoremode = getdvarint(#"hash_47849a8681a67ce7", 0);
    namespace_13fefac0::init();
    clientfield::register("world", "world_state", 1, 3, "int");
    clientfield::register("world", "roundNumber", 1, 10, "int");
    clientfield::function_5b7d846d("DOA_GLOBALUIMODEL_WORLDSTATE", 1, 3, "int");
    clientfield::function_5b7d846d("DOA_GLOBALUIMODEL_COUNTDOWN", 1, 11, "int");
    clientfield::function_5b7d846d("DOA_GLOBALUIMODEL_ARENANUMBER", 1, 4, "int");
    clientfield::function_5b7d846d("DOA_GLOBALUIMODEL_ROUNDNUMBER", 1, 16, "int");
    mapcenter = struct::get("map_center", "targetname");
    if (isdefined(mapcenter)) {
        level.mapcenter = mapcenter.origin;
    } else {
        level.mapcenter = (0, 0, 0);
    }
    setmapcenter(level.mapcenter);
    if (!isdefined(level.doa)) {
        level.doa = spawnstruct();
    }
    level.doa.doa_bundle = getscriptbundle("doa_bundle");
    level thread function_170b90e5();
    callback::add_callback(#"menu_response", &on_menu_response);
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 1, eflags: 0x2 linked
// Checksum 0x1157684a, Offset: 0x938
// Size: 0x21a
function function_76322483(player) {
    foreach (guy in getplayers()) {
        guy closeingamemenu();
    }
    if (isdefined(player) && !is_true(level.gameended)) {
        player globallogic::gamehistoryplayerquit();
    }
    if (is_true(level.var_bc0ddd7d)) {
        return;
    }
    namespace_1e25ad94::debugmsg("=========================================== DOA END =============================================");
    level.var_bc0ddd7d = 1;
    level notify(#"end_game");
    level notify(#"exit_level");
    level notify(#"game_over");
    level flag::set("doa_game_is_over");
    namespace_ec06fe4a::function_445bad70();
    skillupdate();
    level namespace_d2efac9a::function_47498d07(1);
    level namespace_d2efac9a::function_ca76d4a();
    level namespace_d2efac9a::upload_leaderboards();
    namespace_1e25ad94::debugmsg("=========================================== EXIT LEVEL CALLED =============================================");
    exitlevel(0);
    wait(666);
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 1, eflags: 0x6 linked
// Checksum 0xd77f179a, Offset: 0xb60
// Size: 0x8c
function private on_menu_response(eventstruct) {
    if (eventstruct.response == "endround") {
        if (isdefined(level.doa.var_99ee4341)) {
            level thread [[ level.doa.var_99ee4341 ]](1);
            level waittill(#"hash_659967997e5f426e");
        }
        level thread function_76322483(self);
    }
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 0, eflags: 0x2 linked
// Checksum 0xeefe0f80, Offset: 0xbf8
// Size: 0x16c
function function_9ad4988() {
    objective_setstate(13, "invisible");
    objective_setstate(12, "invisible");
    objective_setstate(11, "invisible");
    objective_setstate(10, "invisible");
    objective_setstate(14 + 0, "invisible");
    objective_setstate(14 + 1, "invisible");
    objective_setstate(14 + 2, "invisible");
    objective_setstate(14 + 3, "invisible");
    objective_setstate(14 + 4, "invisible");
    objective_setstate(14 + 5, "invisible");
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 0, eflags: 0x2 linked
// Checksum 0xb921004c, Offset: 0xd70
// Size: 0x4ec
function function_32d5e898() {
    level.doa.world_state = 0;
    level.doa.roundnumber = 0;
    level.doa.var_4cfbc260 = 0;
    level.doa.var_997a0313 = 0;
    level.doa.var_6c58d51 = 0;
    level.doa.var_b456a02b = 0;
    level.doa.var_afae28e0 = 0;
    level.doa.var_3e7292fc = 100;
    level.doa.var_9f7a910d = undefined;
    level.doa.var_8be900a6 = undefined;
    level.doa.var_848746c8 = undefined;
    level.doa.var_a77e6349 = undefined;
    level.doa.var_1f2c7d5f = undefined;
    level.doa.var_a3e53b88 = undefined;
    level.doa.var_8f710e5d = undefined;
    level.doa.var_41adf604 = undefined;
    level.doa.var_318aa67a = getdvarint(#"hash_670ddb067d311f3d", 0);
    level.doa.hardcoremode = getdvarint(#"hash_47849a8681a67ce7", 0);
    level.var_7dcdbe16 = level.doa.var_318aa67a;
    level.doa.var_13e8f9c9 = undefined;
    level.doa.var_25f4de97 = 0;
    level.doa.var_1e31cd70 = 0;
    level.doa.gamestarttime = gettime();
    level.doa.var_bcc1fc05 = 0;
    level.doa.var_4ebe1b74 = 0;
    level.doa.var_2e2d85d4 = is_true(level.doa.hardcoremode);
    level.var_9fa19717 = 0;
    level.var_40d076a7 = 0;
    level.var_52f56101 = undefined;
    level.doa.var_af74d0b = 0;
    level.doa.var_4425d066 = undefined;
    level.doa.var_60e0f7a0 = gettime();
    level flag::clear("doa_game_is_over");
    level flag::clear("doa_round_paused");
    level flag::clear("doa_round_spawning");
    level flag::clear("doa_round_over");
    level flag::clear("doa_players_all_dead");
    level flag::clear("doa_rof_visited");
    level flag::clear("doa_roj_visited");
    level flag::clear("doa_podium_showPlaces");
    level.doa.var_a4af7793 = [];
    level.var_68de7e10 = 0;
    level.var_52f56101 = undefined;
    if (isdefined(level.doa.var_5598fe58)) {
        foreach (silverback in level.doa.var_5598fe58) {
            if (isdefined(silverback)) {
                silverback delete();
            }
        }
    }
    level.doa.var_5598fe58 = [];
    level.doa.var_65a70dc = doa_enemy::function_d7c5adee("basic_zombie");
    function_3ca3c6e4();
    function_9ad4988();
    setdvar(#"ui_busyblockingamemenu", 0);
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 0, eflags: 0x2 linked
// Checksum 0x818d57f6, Offset: 0x1268
// Size: 0x43c
function function_170b90e5() {
    if (!isdefined(level.flag) || !is_true(level.flag[#"load_main_complete"])) {
        level waittill(#"load_main_complete");
    }
    setdvar(#"compassmaxrange", 2100);
    level flag::init("doa_game_initialized", 0);
    level flag::init("doa_game_is_over", 0);
    level flag::init("doa_players_all_dead", 0);
    level flag::init("doa_round_paused", 0);
    level flag::init("doa_round_spawning", 0);
    level flag::init("doa_round_over", 0);
    level flag::init("doa_rof_visited", 0);
    level flag::init("doa_roj_visited", 0);
    level flag::init("doa_podium_showPlaces", 0);
    namespace_8c04284b::init();
    namespace_77eccc4f::init();
    namespace_a6ddb172::init();
    namespace_5a917022::init();
    namespace_1e25ad94::init();
    namespace_41cb996::init();
    doa_enemy::init();
    namespace_1c2a96f9::init();
    namespace_83eb6304::init();
    namespace_ed80aead::init();
    namespace_268747c0::init();
    namespace_6e90e490::init();
    namespace_b7d49cfd::init();
    namespace_dfc652ee::init();
    doa_player::init();
    namespace_eccff4fb::init();
    namespace_e32bb68::init();
    namespace_d2efac9a::init();
    namespace_9fc66ac::init();
    namespace_c85a46fe::init();
    doa_wild::init();
    namespace_491fa2b2::init();
    namespace_a6056a45::init();
    level thread namespace_981c1f3c::init();
    level thread namespace_e857b038::init();
    level flag::set("doa_game_initialized");
    level.doa.var_be74bf2c = -1;
    waitframe(1);
    function_d05d0fa();
    if (!is_true(getdvar(#"hash_613a0a3fd49510cd"))) {
        function_eb9e8b26(0);
        level.callbackplayermigrated = &donothing;
        level.callbackhostmigration = &donothing;
        level.callbackhostmigrationsave = &donothing;
        level.callbackprehostmigrationsave = &donothing;
    }
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x16b0
// Size: 0x4
function donothing() {
    
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 1, eflags: 0x2 linked
// Checksum 0x592783ad, Offset: 0x16c0
// Size: 0x1ac
function function_e22d3978(number = level.doa.roundnumber) {
    dx = number - level.doa.roundnumber;
    level.doa.roundnumber = number;
    level clientfield::set("roundNumber", level.doa.roundnumber);
    level clientfield::set_world_uimodel("DOA_GLOBALUIMODEL_ROUNDNUMBER", level.doa.roundnumber);
    foreach (player in getplayers()) {
        if (!isdefined(player.doa)) {
            continue;
        }
        player.doa.var_7e445455 += dx;
    }
    setroundsplayed(level.doa.roundnumber);
    namespace_9fc66ac::function_2fc07d61();
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 0, eflags: 0x2 linked
// Checksum 0xeaadcdb6, Offset: 0x1878
// Size: 0x16
function function_59a9cf1d() {
    return level.doa.world_state;
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 1, eflags: 0x2 linked
// Checksum 0x6201de3d, Offset: 0x1898
// Size: 0xdc
function function_21cd3890(state) {
    laststate = level.doa.world_state;
    level.doa.world_state = state;
    level clientfield::set("world_state", level.doa.world_state);
    level clientfield::set_world_uimodel("DOA_GLOBALUIMODEL_WORLDSTATE", level.doa.world_state);
    namespace_9fc66ac::function_65fcd877();
    level notify(#"hash_460213205489abb4", {#state:state});
    return laststate;
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 0, eflags: 0x2 linked
// Checksum 0x3c280e25, Offset: 0x1980
// Size: 0x2a4
function function_d05d0fa() {
    if (level.doa.var_be74bf2c > 0) {
        namespace_1e25ad94::debugmsg("DOA Game Reset:" + level.doa.var_be74bf2c);
    }
    level notify(#"hash_6cb87c02c41363b7");
    level.doa.var_c420eee9 = 1;
    level.doa.var_be74bf2c++;
    function_32d5e898();
    level thread function_8682e93e();
    level thread function_e591be12();
    level thread function_e60cadb8();
    namespace_dfc652ee::function_18372b20();
    namespace_491fa2b2::main();
    namespace_a6056a45::main();
    namespace_ec06fe4a::function_de70888a();
    namespace_ec06fe4a::clearallcorpses();
    function_21cd3890(0);
    function_e22d3978();
    namespace_a6ddb172::function_7a0e5387();
    level namespace_77eccc4f::main();
    level thread namespace_981c1f3c::main();
    level thread namespace_6e90e490::function_db945ce9();
    level thread doa_player::main();
    level thread namespace_8c04284b::main();
    level thread doa_enemy::main();
    level thread namespace_1c2a96f9::main();
    level thread doa_wild::main();
    level thread namespace_268747c0::main();
    level thread namespace_5a917022::main();
    level thread namespace_9fc66ac::main();
    level thread namespace_d2efac9a::main();
    level thread main();
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 0, eflags: 0x2 linked
// Checksum 0x93ef82cc, Offset: 0x1c30
// Size: 0x424
function main() {
    self notify("3e64a9e2b021ec76");
    self endon("3e64a9e2b021ec76");
    level flag::wait_till("all_players_connected");
    while (level flag::get("gameplay_started") == 0) {
        waitframe(1);
    }
    wait(0.1);
    level notify(#"hash_671684f03a58b3a3");
    level.var_9dab87f7 = gettime();
    var_8d747a1 = 1;
    level.doa.var_c420eee9 = 0;
    while (var_8d747a1) {
        waitframe(1);
        var_8d747a1 = !level flag::get("doa_players_all_dead");
        if (!var_8d747a1) {
            result = undefined;
            if (!is_true(level.doa.var_8be900a6)) {
                result = function_a511c7c4();
            }
            if (isdefined(result)) {
                var_8d747a1 = result;
                if (result) {
                    level flag::clear("doa_players_all_dead");
                }
            }
        }
    }
    player = getplayers()[0];
    if (isdefined(player) && level.var_43cd3fe5 doa_keytrade::is_open(player)) {
        level.var_43cd3fe5 doa_keytrade::close();
    }
    level flag::set("doa_game_is_over");
    level notify(#"game_over");
    level.doa.var_318aa67a = 0;
    function_21cd3890(1);
    util::wait_network_frame();
    foreach (player in getplayers()) {
        player notify(#"hash_7893364bd228d63e", {#var_cff8d1e:1});
        player namespace_7f5aeb59::function_5b373dae();
    }
    if (isdefined(level.doa.var_99ee4341)) {
        level thread [[ level.doa.var_99ee4341 ]]();
        level waittill(#"hash_659967997e5f426e");
    } else {
        wait(15);
    }
    if (isdefined(level.doa.var_a77e6349)) {
        [[ level.doa.var_a77e6349 ]]->deactivate();
        level namespace_c85a46fe::function_edfcfa44();
        level.doa.var_a77e6349 = undefined;
    }
    if (!getdvarint(#"hash_5913c79841cafe3e", 0)) {
        level.gameended = 1;
        level thread function_76322483();
        return;
    }
    level namespace_d2efac9a::function_47498d07();
    level thread function_d05d0fa();
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 0, eflags: 0x2 linked
// Checksum 0x8079b3a, Offset: 0x2060
// Size: 0x24
function function_d41688e3() {
    level flag::set("doa_players_all_dead");
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 1, eflags: 0x2 linked
// Checksum 0xbc7bd688, Offset: 0x2090
// Size: 0x198
function function_ce7e12de(var_c042523 = 0) {
    level flag::set("doa_game_is_over");
    level notify(#"game_over");
    namespace_ec06fe4a::function_445bad70();
    level thread namespace_ec06fe4a::function_de70888a(0);
    level notify(#"hash_7893364bd228d63e");
    level namespace_6e90e490::function_fa6f7ba7();
    if (var_c042523 == 0 && isdefined(level.doa.var_cb342cbc)) {
        level [[ level.doa.var_cb342cbc ]]();
    }
    function_21cd3890(1);
    level namespace_a6ddb172::function_7a0e5387(59);
    level thread namespace_9fc66ac::announce(72);
    luinotifyevent(#"force_scoreboard", 1, 0);
    wait(7);
    util::preload_frontend();
    wait(3);
    level namespace_7f5aeb59::function_67f054d7();
    level notify(#"hash_659967997e5f426e");
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 0, eflags: 0x2 linked
// Checksum 0x29a952, Offset: 0x2230
// Size: 0x410
function function_a511c7c4() {
    if (is_true(level.doa.var_41adf604)) {
        return false;
    }
    if (is_true(level.doa.hardcoremode)) {
        return false;
    }
    players = namespace_7f5aeb59::function_23e1f90f();
    if (players.size > 1) {
        return false;
    }
    player = players[0];
    if (!isdefined(player) || !isdefined(player.doa) || player.doa.score.keys <= 0) {
        return false;
    }
    player endon(#"disconnect");
    player.doa.respawning = 0;
    var_4b98f072 = spawnstruct();
    var_4b98f072.var_917afa01 = 0;
    var_4b98f072.result = 0;
    var_4b98f072.timeleft = 15;
    var_4b98f072.var_5b55ba1f = function_21cd3890(2);
    level flag::set("doa_round_paused");
    if (!level.var_43cd3fe5 doa_keytrade::is_open(player)) {
        if (!is_true(level.doa.var_318aa67a)) {
            while (is_true(player.doa.infps)) {
                waitframe(1);
            }
        }
        util::wait_network_frame(3);
        level.var_43cd3fe5 doa_keytrade::open(player, 1);
        level.var_efd3338c = 1;
    }
    player thread function_295c3381(var_4b98f072);
    while (var_4b98f072.timeleft > 0) {
        level clientfield::set_world_uimodel("DOA_GLOBALUIMODEL_COUNTDOWN", var_4b98f072.timeleft);
        wait(1);
        var_4b98f072.timeleft -= 1;
    }
    if (!isdefined(level.doa.var_6f3d327)) {
        namespace_6e90e490::function_fa6f7ba7();
    }
    level.var_43cd3fe5 doa_keytrade::close(player);
    level notify(#"hash_47730e778d03543b");
    level.var_efd3338c = undefined;
    if (var_4b98f072.result) {
        player stats::inc_stat(#"hash_64fd75a9ce18b89f", #"keys", var_4b98f072.var_917afa01 * -1);
        uploadstats(player);
        level.doa.var_8be900a6 = 1;
        function_21cd3890(var_4b98f072.var_5b55ba1f);
    }
    player clientfield::increment_to_player("controlBinding");
    level flag::clear("doa_round_paused");
    return var_4b98f072.result && player.doa.score.lives > 0;
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 1, eflags: 0x2 linked
// Checksum 0xb3d61fef, Offset: 0x2648
// Size: 0x126
function function_49592bf9(var_4b98f072) {
    level endon(#"hash_47730e778d03543b");
    self endon(#"disconnect");
    is_gamepad = self gamepadusedlast();
    setdvar(#"ui_busyblockingamemenu", !is_gamepad);
    while (true) {
        waitresult = self waittill(#"menuresponse");
        response = waitresult.response;
        if (response == "menu_second_chance_cancel") {
            var_4b98f072.result = 0;
            var_4b98f072.timeleft = 0;
            setdvar(#"ui_busyblockingamemenu", 0);
            level notify(#"hash_47730e778d03543b");
            return;
        }
    }
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 1, eflags: 0x2 linked
// Checksum 0xa70b184d, Offset: 0x2778
// Size: 0x428
function function_295c3381(var_4b98f072) {
    level endon(#"hash_47730e778d03543b");
    self endon(#"disconnect");
    var_7ce1e87 = 0;
    var_44294245 = 0;
    var_4b98f072.result = 0;
    self thread function_49592bf9(var_4b98f072);
    while (true) {
        if (self.doa.score.lives > 0 && self.doa.score.keys > 0) {
            level.var_43cd3fe5 doa_keytrade::function_8a6595db(self, hash(#"hash_66f6e25631ff2352"));
        } else if (self.doa.score.keys > 0) {
            level.var_43cd3fe5 doa_keytrade::function_8a6595db(self, hash(#"hash_1c0a5279bafa7779"));
        } else {
            level.var_43cd3fe5 doa_keytrade::function_8a6595db(self, hash(#"hash_305f779ad154229"));
        }
        if (self.doa.score.lives > 0) {
            level.var_43cd3fe5 doa_keytrade::function_3ae8b40f(self, hash(#"hash_344d11efdbb3a755"));
        } else {
            level.var_43cd3fe5 doa_keytrade::function_3ae8b40f(self, hash(""));
        }
        if (self usebuttonpressed() && self.doa.score.lives > 0) {
            var_4b98f072.result = 1;
            var_4b98f072.timeleft = 0;
            setdvar(#"ui_busyblockingamemenu", 0);
            return;
        }
        if (self secondaryoffhandbuttonpressed()) {
            var_7ce1e87 = 1;
        } else {
            if (var_7ce1e87) {
                if (self.doa.score.lives > 0) {
                    self.doa.score.lives--;
                    var_4b98f072.var_917afa01--;
                    self.doa.score.keys++;
                }
            }
            var_7ce1e87 = 0;
        }
        is_gamepad = self gamepadusedlast();
        if (is_gamepad && self fragbuttonpressed() || !is_gamepad && self meleebuttonpressed()) {
            var_44294245 = 1;
        } else {
            if (var_44294245) {
                if (self.doa.score.keys > 0 && self.doa.score.lives < 3) {
                    self.doa.score.lives++;
                    var_4b98f072.var_917afa01++;
                    self.doa.score.keys--;
                }
            }
            var_44294245 = 0;
        }
        waitframe(1);
    }
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 0, eflags: 0x2 linked
// Checksum 0xe6cd0c29, Offset: 0x2ba8
// Size: 0xec
function function_8682e93e() {
    self notify("e24c10a0d75c34f");
    self endon("e24c10a0d75c34f");
    if (level flag::get("doa_rof_visited")) {
        return;
    }
    result = level waittill(#"hash_77a8f97f2648672");
    if (result.name != "jungle_1") {
        level thread function_8682e93e();
    }
    level thread namespace_1c2a96f9::function_11463552();
    level waittill(#"hash_325440d5433be263", #"game_over");
    level thread function_8682e93e();
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 0, eflags: 0x2 linked
// Checksum 0x8a212b0f, Offset: 0x2ca0
// Size: 0x156
function function_e591be12() {
    self notify("84843d0f476812d");
    self endon("84843d0f476812d");
    level endon(#"doa_roj_visited");
    if (level flag::get("doa_roj_visited") || is_true(level.doa.hardcoremode)) {
        return;
    }
    while (true) {
        level waittill(#"hash_2282d796a1f7533a");
        if (level.doa.roundnumber > 64) {
            if (!level flag::get("doa_roj_visited")) {
                level.doa.var_848746c8 = "roj";
            }
            level waittill(#"hash_593a6814c28d14e7");
            if (level flag::get("doa_roj_visited") || is_true(level.doa.hardcoremode)) {
                return;
            }
        }
    }
}

// Namespace namespace_4dae815d/namespace_4dae815d
// Params 0, eflags: 0x2 linked
// Checksum 0x33452d8e, Offset: 0x2e00
// Size: 0x6a
function function_e60cadb8() {
    level endon(#"game_over");
    self notify("65ced3b6a35fa8f9");
    self endon("65ced3b6a35fa8f9");
    while (true) {
        level waittill(#"hash_77e4bcc14697c018");
        level.doa.var_60e0f7a0 = 0;
    }
}

