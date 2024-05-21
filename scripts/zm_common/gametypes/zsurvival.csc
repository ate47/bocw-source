// Atian COD Tools GSC CW decompiler test
#using script_45ed9e2916a5d657;
#using script_5ee86fb478309acf;
#using script_38dc72b5220a1a67;
#using script_6ab561804b7b209f;
#using script_4113a979dc70041c;
#using script_a9c40f57b84dba8;
#using script_2c5f2d4e7aa698c4;
#using script_5f1767799baab208;
#using script_3c5debb5416fb2b0;
#using script_3a97cf7fe4b3bc97;
#using script_7c1ce8053e1f767a;
#using script_35347d750c565866;
#using script_54b939ad79f46602;
#using script_78c17b0050c5f017;
#using script_3c0e0fe36a7ec024;
#using script_3dc7e0c7f9c90bdb;
#using script_425ddd953bb349c2;
#using script_5babdf0966c36f0c;
#using scripts\zm_common\objective_manager.csc;
#using script_9308fee11923a60;
#using script_3a30122e78de2f6c;
#using script_7ccd314d69366639;
#using script_d85a41a4c7247ce;
#using script_1c5cce12dd83e08;
#using script_2ae7c487149cc862;
#using script_461a5eb3081800a3;
#using script_41e32418d719f2dd;
#using script_4ed01237ecbd380f;
#using script_5665e7d917abc3fc;
#using script_2bdd098a8215ac9f;
#using script_71cdde87963901ec;
#using script_62c40d9a3acec9b1;
#using script_1103c28492840e5f;
#using script_37ec43096fb284a3;
#using script_60793766a26de8df;
#using script_11cc3a9267cf7ac7;
#using script_44c87b4589ee1f93;
#using script_581877678e31274c;
#using script_eff00f787d80cdf;
#using script_6243781aa5394e62;
#using script_53d55f01b3a5be93;
#using script_391889b7ff93ef7e;
#using scripts\zm_common\zm_intel.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\item_world.csc;
#using scripts\core_common\map.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace zsurvival;

// Namespace zsurvival/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xfb010752, Offset: 0x528
// Size: 0x9a4
function event_handler[gametype_init] main(*eventstruct) {
    level.is_survival = 1;
    level.aat_in_use = 1;
    setdvar(#"st_grass", 1);
    setdvar(#"hash_11a23659adb39e95", 1);
    setdvar(#"hash_5e3c0f05d2935beb", 1);
    callback::on_localclient_connect(&on_player_connect);
    if (is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
        level.var_3a2ad19b = [#"item_zmquest_sr_ltm_food_banana", #"item_zmquest_sr_ltm_food_burger", #"item_zmquest_sr_ltm_food_canned_corn", #"item_zmquest_sr_ltm_food_cauliflower", #"item_zmquest_sr_ltm_food_cheese", #"item_zmquest_sr_ltm_food_chicken_soup", #"item_zmquest_sr_ltm_food_chips", #"item_zmquest_sr_ltm_food_cookie", #"item_zmquest_sr_ltm_food_croissant", #"item_zmquest_sr_ltm_food_pizza_full", #"item_zmquest_sr_ltm_food_pizza_slice", #"item_zmquest_sr_ltm_food_poutine"];
    }
    level.var_13339abf = array(#"ammo_small_caliber_item_t9_sr", #"ammo_ar_item_t9_sr", #"ammo_large_caliber_item_t9_sr", #"ammo_sniper_item_t9_sr", #"ammo_shotgun_item_t9_sr", #"ammo_special_item_t9_sr");
    clientfield::register_clientuimodel("hudItems.streamerLoadFraction", #"hash_6f4b11a0bee9b73d", #"streamerloadfraction", 1, 5, "float", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.wzLoadFinished", #"hash_6f4b11a0bee9b73d", #"wzloadfinished", 1, 1, "int", undefined, 0, 0);
    clientfield::function_5b7d846d("hudItems.warzone.reinsertionPassengerCount", #"hash_593f03dd48d5bc1f", #"reinsertionpassengercount", 1, 7, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.alivePlayerCount", #"hash_6f4b11a0bee9b73d", #"aliveplayercount", 1, 7, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.aliveTeammateCount", #"hash_6f4b11a0bee9b73d", #"aliveteammatecount", 1, 7, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.spectatorsCount", #"hash_6f4b11a0bee9b73d", #"spectatorscount", 1, 7, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.playerKills", #"hash_6f4b11a0bee9b73d", #"playerkills", 1, 9, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.playerCleanUps", #"hash_6f4b11a0bee9b73d", #"playercleanups", 1, 7, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("presence.modeparam", #"hash_3645501c8ba141af", #"modeparam", 1, 7, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.showReinsertionPassengerCount", #"hash_6f4b11a0bee9b73d", #"showreinsertionpassengercount", 1, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.playerLivesRemaining", #"hash_6f4b11a0bee9b73d", #"playerlivesremaining", 1, 3, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.playerCanRedeploy", #"hash_6f4b11a0bee9b73d", #"playercanredeploy", 1, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.zombiesSurvivalRespawn", #"hash_6f4b11a0bee9b73d", #"hash_130bf6c6767308c2", 1, 1, "int", undefined, 0, 0);
    clientfield::function_5b7d846d("hudItems.warzone.collapse", #"hash_593f03dd48d5bc1f", #"collapse", 1, 21, "int", undefined, 0, 0);
    clientfield::function_5b7d846d("hudItems.warzone.waveRespawnTimer", #"hash_593f03dd48d5bc1f", #"waverespawntimer", 1, 21, "int", undefined, 0, 0);
    clientfield::function_5b7d846d("hudItems.warzone.collapseIndex", #"hash_593f03dd48d5bc1f", #"collapseindex", 1, 3, "int", undefined, 0, 0);
    clientfield::function_5b7d846d("hudItems.warzone.collapseCount", #"hash_593f03dd48d5bc1f", #"collapsecount", 1, 3, "int", undefined, 0, 0);
    clientfield::function_5b7d846d("hudItems.warzone.reinsertionIndex", #"hash_593f03dd48d5bc1f", #"reinsertionindex", 1, 3, "int", undefined, 0, 0);
    clientfield::register("world", "set_objective_fog", 1, 2, "int", &set_objective_fog, 0, 0);
    clientfield::function_5b7d846d("hudItems.team1.roundsWon", #"hash_410fe12a68d6e801", [#"team1", #"roundswon"], 1, 4, "int", undefined, 0, 0);
    clientfield::function_5b7d846d("hudItems.team2.roundsWon", #"hash_410fe12a68d6e801", [#"team2", #"roundswon"], 1, 4, "int", undefined, 0, 0);
    zm_intel::function_88645994(#"zmintel_list_survival_document_drops", #"zmintel_list_survival_darkaether_computer", #"zmintel_list_survival_radio_transmissions_requiem", #"zmintel_list_survival_radio_transmissions_maxis", #"zmintel_list_survival_radio_transmissions_omega");
    setsoundcontext("ambience_swap", "zsurvival");
    setsoundcontext("dark_aether", "inactive");
}

// Namespace zsurvival/zsurvival
// Params 1, eflags: 0x2 linked
// Checksum 0x83532d5, Offset: 0xed8
// Size: 0x9c
function on_player_connect(localclientnum) {
    player = function_27673a7(localclientnum);
    if (!isdefined(player)) {
        return;
    }
    player function_12a6f77e();
    if (is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
        player setenemyglobalscrambler(1);
    }
}

// Namespace zsurvival/zsurvival
// Params 7, eflags: 0x2 linked
// Checksum 0x6cb70b23, Offset: 0xf80
// Size: 0x1b4
function set_objective_fog(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    switch (wasdemojump) {
    case 0:
        var_92d85419 = level.var_6465f02d;
        var_312d65d1 = level.var_68f7ce2e;
        level.var_68f7ce2e = 2;
        n_time = 3;
        break;
    case 1:
        var_92d85419 = 1;
        var_312d65d1 = 2;
        level.var_68f7ce2e = 4;
        n_time = 10;
        break;
    case 2:
        var_92d85419 = 1;
        var_312d65d1 = 2;
        level.var_68f7ce2e = 8;
        n_time = 10;
        break;
    }
    setpbgactivebank(fieldname, level.var_68f7ce2e);
    setexposureactivebank(fieldname, level.var_68f7ce2e);
    e_player = getlocalplayers()[fieldname];
    e_player thread function_33593a44(fieldname, var_312d65d1, level.var_68f7ce2e, n_time, var_92d85419);
}

// Namespace zsurvival/zsurvival
// Params 5, eflags: 0x6 linked
// Checksum 0x9ed85023, Offset: 0x1140
// Size: 0x188
function private function_33593a44(localclientnum, var_312d65d1, var_68f7ce2e, n_time = 3, var_92d85419 = 1) {
    self notify("79c63250a9c6d65b");
    self endon("79c63250a9c6d65b");
    n_blend = 0;
    var_8a727807 = 1;
    n_increment = 1 / n_time / 0.016;
    if (var_312d65d1 == 2) {
        level.var_6465f02d = var_92d85419;
        while (n_blend < var_92d85419) {
            function_be93487f(localclientnum, var_312d65d1 | var_68f7ce2e, 0, var_8a727807 - n_blend, n_blend, 0);
            n_blend += n_increment;
            waitframe(1);
        }
        return;
    }
    if (var_312d65d1 == 4 || var_312d65d1 == 8) {
        while (n_blend < var_8a727807) {
            function_be93487f(localclientnum, var_312d65d1 | var_68f7ce2e, 0, n_blend, var_92d85419 - n_blend, 0);
            n_blend += n_increment;
            waitframe(1);
        }
    }
}

// Namespace zsurvival/zsurvival
// Params 1, eflags: 0x4
// Checksum 0x3d0f0c35, Offset: 0x12d0
// Size: 0x3c
function private _on_localplayer_spawned(localclientnum) {
    if (self function_da43934d()) {
        self thread function_13a420b1(localclientnum);
    }
}

// Namespace zsurvival/zsurvival
// Params 1, eflags: 0x6 linked
// Checksum 0x10e00e3e, Offset: 0x1318
// Size: 0x8a
function private function_491c852e(item) {
    switch (item) {
    case #"trip_wire_wz_item":
        return 1;
    case #"concertina_wire_wz_item":
        return 2;
    case #"cymbal_monkey_wz_item":
        return 3;
    case #"ultimate_turret_wz_item":
        return 4;
    }
}

// Namespace zsurvival/zsurvival
// Params 1, eflags: 0x6 linked
// Checksum 0xe69daa80, Offset: 0x13b0
// Size: 0x120
function private function_13a420b1(localclientnum) {
    self endon(#"shutdown", #"death");
    self notify("6007782aeca15ccf");
    self endon("6007782aeca15ccf");
    clientdata = item_world::function_a7e98a1a(localclientnum);
    var_6e77adc6 = "inventory_craft" + localclientnum;
    while (true) {
        waitresult = level waittill(var_6e77adc6);
        if (waitresult._notify === var_6e77adc6) {
            item = waitresult.item;
            cost = waitresult.cost;
            item = function_491c852e(item);
            function_97fedb0d(localclientnum, 13, item, cost);
        }
    }
}

