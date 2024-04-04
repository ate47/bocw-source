// Atian COD Tools GSC CW decompiler test
#using script_774302f762d76254;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\zm_common\gametypes\zm_gametype.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\globallogic\globallogic_shared.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;

#namespace doa;

// Namespace doa/doa
// Params 0, eflags: 0x1
// Checksum 0xac43ba3f, Offset: 0x190
// Size: 0x34
function autoexec function_aeb1baea() {
    level.var_f18a6bd6 = &function_5e443ed1;
    waittillframeend();
    level.var_f18a6bd6 = &function_5e443ed1;
}

// Namespace doa/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xc6b75b96, Offset: 0x1d0
// Size: 0xac
function event_handler[gametype_init] main(*eventstruct) {
    level.var_6877b1e9 = 1;
    zm_gametype::main();
    level.var_26be8a4f = 1;
    level.onspawnplayerunified = undefined;
    level.onspawnplayer = &spawning::onspawnplayer;
    level.onplayerdisconnect = &globallogic::blank;
    callback::on_spawned(&on_player_spawned);
    level thread namespace_4dae815d::init();
}

// Namespace doa/doa
// Params 0, eflags: 0x0
// Checksum 0xe701a217, Offset: 0x288
// Size: 0x15c
function function_5e443ed1() {
    level._loadstarted = 1;
    level.takelivesondeath = 0;
    level thread onallplayersready();
    level.aitriggerspawnflags = getaitriggerflags();
    level.vehicletriggerspawnflags = getvehicletriggerflags();
    level.var_82dda526 = 1;
    level.var_869c7fba = 1;
    level.teambased = 0;
    level.defaultclass = "CLASS_CUSTOM1";
    level.weaponnone = getweapon(#"none");
    level.weaponnull = getweapon(#"weapon_null");
    level.numlives = 1;
    level.custommayspawnlogic = &mayspawn;
    level.graceperiod = 1410065407;
    system::function_c11b0642();
    level flag::set(#"load_main_complete");
}

// Namespace doa/doa
// Params 0, eflags: 0x0
// Checksum 0xb091dfe3, Offset: 0x3f0
// Size: 0x8
function mayspawn() {
    return true;
}

// Namespace doa/doa
// Params 0, eflags: 0x0
// Checksum 0x626ede0, Offset: 0x400
// Size: 0x27c
function onallplayersready() {
    level endon(#"game_ended");
    while (!getnumexpectedplayers(1)) {
        wait(0.1);
    }
    level.var_3fd55ae0 = 0;
    level.var_5c6783e9 = getnumexpectedplayers(1);
    player_count_actual = 0;
    while (player_count_actual < getnumexpectedplayers(1)) {
        players = getplayers();
        player_count_actual = 0;
        foreach (player in players) {
            player.var_200b0850 = 1;
            if ((player.sessionstate == "playing" || player.sessionstate == "spectator") && !isbot(player)) {
                player_count_actual++;
            }
        }
        println("<unknown string>" + getnumconnectedplayers() + "<unknown string>" + getnumexpectedplayers(1));
        wait(0.1);
    }
    setinitialplayersconnected();
    level flag::set("all_players_connected");
    function_9a8ab40f();
    level util::streamer_wait();
    level flag::set("gameplay_started");
    level clientfield::set("gameplay_started", 1);
}

// Namespace doa/doa
// Params 1, eflags: 0x0
// Checksum 0x9743f7bb, Offset: 0x688
// Size: 0x3c
function function_d797f41f(n_waittime = 1) {
    wait(n_waittime);
    music::setmusicstate("none");
}

// Namespace doa/doa
// Params 0, eflags: 0x0
// Checksum 0x516e16ba, Offset: 0x6d0
// Size: 0xce
function function_9a8ab40f() {
    do {
        wait(0.1);
        var_183929a8 = 0;
        a_players = getplayers();
        foreach (player in a_players) {
            if (!player isloadingcinematicplaying()) {
                var_183929a8++;
            }
        }
    } while (a_players.size > var_183929a8);
}

// Namespace doa/doa
// Params 0, eflags: 0x0
// Checksum 0x7f5bbefe, Offset: 0x7a8
// Size: 0x54
function on_player_spawned() {
    self val::reset(#"hash_5bb0dd6b277fc20c", "freezecontrols");
    self val::reset(#"hash_5bb0dd6b277fc20c", "disablegadgets");
}

// Namespace doa/doa
// Params 2, eflags: 0x0
// Checksum 0x54fd74b3, Offset: 0x808
// Size: 0xdc
function default_onspawnspectator(origin, angles) {
    if (isdefined(origin) && isdefined(angles)) {
        self spawn(origin, angles);
        return;
    }
    if (isdefined(level.doa.var_39e3fa99)) {
        spawnpoint = [[ level.doa.var_39e3fa99 ]]->getcenter();
    } else {
        arenas = struct::get_array("arena_center", "targetname");
        spawnpoint = arenas[0];
    }
    self spawn(spawnpoint.origin, spawnpoint.angles);
}

