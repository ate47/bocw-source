// Atian COD Tools GSC CW decompiler test
#using scripts\wz_common\util.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace hud;

// Namespace hud/hud
// Params 0, eflags: 0x2 linked
// Checksum 0xda0eda8a, Offset: 0x3f0
// Size: 0x3f4
function function_9b9cecdf() {
    clientfield::function_5b7d846d("hudItems.warzone.reinsertionPassengerCount", 1, 7, "int");
    clientfield::register_clientuimodel("hudItems.alivePlayerCount", 1, 7, "int", 1);
    clientfield::register_clientuimodel("hudItems.aliveTeammateCount", 1, 7, "int", 0);
    clientfield::register_clientuimodel("hudItems.spectatorsCount", 1, 7, "int", 1);
    clientfield::register_clientuimodel("hudItems.playerKills", 1, 7, "int", 0);
    clientfield::register_clientuimodel("hudItems.playerCleanUps", 1, 7, "int", 0);
    clientfield::register_clientuimodel("presence.modeparam", 1, 7, "int", 1);
    clientfield::register_clientuimodel("hudItems.armorType", 1, 2, "int", 0);
    clientfield::register_clientuimodel("hudItems.streamerLoadFraction", 1, 5, "float", 1);
    clientfield::register_clientuimodel("hudItems.wzLoadFinished", 1, 1, "int", 1);
    clientfield::register_clientuimodel("hudItems.showReinsertionPassengerCount", 1, 1, "int", 0);
    clientfield::register_clientuimodel("hudItems.playerLivesRemaining", 7000, 4, "int", 1);
    clientfield::register_clientuimodel("hudItems.playerLivesRemainingPredicted", 7000, 4, "int", 0);
    clientfield::register_clientuimodel("hudItems.playerCanRedeploy", 7000, 1, "int");
    clientfield::register("toplayer", "realtime_multiplay", 1, 1, "int");
    clientfield::function_5b7d846d("hudItems.warzone.collapse", 7000, 21, "int");
    clientfield::function_5b7d846d("hudItems.warzone.waveRespawnTimer", 7000, 21, "int");
    clientfield::function_5b7d846d("hudItems.warzone.collapseIndex", 1, 3, "int");
    clientfield::function_5b7d846d("hudItems.warzone.collapseCount", 1, 3, "int");
    clientfield::function_5b7d846d("hudItems.warzone.reinsertionIndex", 1, 3, "int");
    clientfield::register_clientuimodel("hudItems.skydiveAltimeterVisible", 1, 1, "int");
    clientfield::function_5b7d846d("hudItems.skydiveAltimeterHeight", 1, 16, "int");
    clientfield::function_5b7d846d("hudItems.skydiveAltimeterSeaHeight", 1, 16, "int");
    callback::on_spawned(&on_player_spawned);
}

// Namespace hud/hud
// Params 0, eflags: 0x6 linked
// Checksum 0x696c8ede, Offset: 0x7f0
// Size: 0x3c
function private on_player_spawned() {
    wait(0.5);
    if (!isplayer(self)) {
        return;
    }
    self function_ed40d523();
}

// Namespace hud/hud
// Params 0, eflags: 0x2 linked
// Checksum 0x8cf622b7, Offset: 0x838
// Size: 0xec
function function_2f66bc37() {
    assert(isplayer(self));
    actionslot3 = getdvarint(#"hash_449fa75f87a4b5b4", 0) < 0 ? "flourish_callouts" : "ping_callouts";
    self setactionslot(3, actionslot3);
    actionslot4 = getdvarint(#"hash_23270ec9008cb656", 0) < 0 ? "scorestreak_wheel" : "sprays_boasts";
    self setactionslot(4, actionslot4);
}

// Namespace hud/hud
// Params 1, eflags: 0x2 linked
// Checksum 0x97f7efae, Offset: 0x930
// Size: 0x8c
function function_cb4b48d5(var_80427091 = 1) {
    assert(isplayer(self));
    if (var_80427091) {
        self setactionslot(3, "");
    }
    self setactionslot(4, "");
}

// Namespace hud/hud
// Params 0, eflags: 0x2 linked
// Checksum 0x1b53aeb5, Offset: 0x9c8
// Size: 0x14
function function_22df4165() {
    level.var_22df4165 = 1;
}

// Namespace hud/hud
// Params 0, eflags: 0x2 linked
// Checksum 0xc9cdcfaa, Offset: 0x9e8
// Size: 0x48
function function_5db32126() {
    while (true) {
        waitframe(1);
        if (is_true(level.var_22df4165)) {
            function_e91890a7();
        }
    }
}

// Namespace hud/hud
// Params 0, eflags: 0x6 linked
// Checksum 0xb5e0a98f, Offset: 0xa38
// Size: 0xec
function private function_ed40d523() {
    player = self;
    aliveteammates = 0;
    teammembers = getplayers(player.team);
    foreach (member in teammembers) {
        if (isalive(member)) {
            aliveteammates++;
        }
    }
    player clientfield::set_player_uimodel("hudItems.aliveTeammateCount", aliveteammates);
}

// Namespace hud/hud
// Params 0, eflags: 0x2 linked
// Checksum 0x9b27c06a, Offset: 0xb30
// Size: 0x152
function function_e91890a7() {
    if (!is_true(level.var_22df4165)) {
        return;
    }
    util::waittillslowprocessallowed();
    player_counts = util::function_de15dc32();
    players = getplayers();
    foreach (player in players) {
        aliveplayercount = player_counts.alive;
        player clientfield::set_player_uimodel("presence.modeparam", aliveplayercount);
        player clientfield::set_player_uimodel("hudItems.alivePlayerCount", aliveplayercount);
        player function_ed40d523();
    }
    level.var_22df4165 = undefined;
}

// Namespace hud/enter_vehicle
// Params 1, eflags: 0x20
// Checksum 0xe119c8c3, Offset: 0xc90
// Size: 0x3c
function event_handler[enter_vehicle] codecallback_entervehicle(*eventstruct) {
    if (isplayer(self)) {
        self function_cb4b48d5(0);
    }
}

// Namespace hud/exit_vehicle
// Params 1, eflags: 0x20
// Checksum 0x4dd2546, Offset: 0xcd8
// Size: 0x3c
function event_handler[exit_vehicle] codecallback_exitvehicle(*eventstruct) {
    if (isplayer(self)) {
        self function_2f66bc37();
    }
}

// Namespace hud/freefall
// Params 1, eflags: 0x20
// Checksum 0xb556243d, Offset: 0xd20
// Size: 0xc
function event_handler[freefall] function_5019e563(*eventstruct) {
    
}

// Namespace hud/parachute
// Params 1, eflags: 0x20
// Checksum 0x36df5213, Offset: 0xd38
// Size: 0xc
function event_handler[parachute] function_87b05fa3(*eventstruct) {
    
}

