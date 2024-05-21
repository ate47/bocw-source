// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\heatseekingmissile.gsc;
#using scripts\weapons\hacker_tool.gsc;
#using scripts\killstreaks\remote_weapons.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\killstreaks\killstreak_hacking.gsc;
#using scripts\killstreaks\killstreak_bundles.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\killstreaks\killstreak_vehicle.gsc;
#using script_4721de209091b1a6;
#using scripts\killstreaks\helicopter_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\oob.gsc;
#using scripts\core_common\killcam_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\battlechatter.gsc;
#using scripts\core_common\audio_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace ac130_shared;

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x82cecc9, Offset: 0x488
// Size: 0xee
function preinit(var_9dedc222) {
    profilestart();
    init_shared();
    killstreaks::register_killstreak(var_9dedc222, &activatemaingunner);
    killstreaks::function_94c74046("ac130");
    killcam::function_4789a39a(#"hash_17df39d53492b0bf", &function_91ba5c69);
    killcam::function_4789a39a(#"hash_7b24d0d0d2823bca", &function_91ba5c69);
    killcam::function_4789a39a(#"ac130_chaingun", &function_91ba5c69);
    profilestop();
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xbb18eb5c, Offset: 0x580
// Size: 0x100
function function_3675de8b() {
    bundle = killstreaks::get_script_bundle("ac130");
    assert(isdefined(bundle));
    var_d57617dd = isdefined(bundle.var_dff95af) ? bundle.var_dff95af : 300;
    level.var_89350618 = killstreaks::function_f3875fb0(level.var_98fe5b4a, isdefined(level.var_b34c8ec8) ? level.var_b34c8ec8 : 9000, var_d57617dd, 1);
    if (isdefined(level.var_1b900c1d)) {
        [[ level.var_1b900c1d ]](getweapon("ac130"), &function_bff5c062);
    }
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xfd3d3989, Offset: 0x688
// Size: 0xa82
function spawnac130(killstreaktype) {
    player = self;
    assert(!isdefined(level.ac130));
    profilestart();
    if (is_true(player.isplanting) || is_true(player.isdefusing) || player util::isusingremote() || player iswallrunning() || player oob::isoutofbounds()) {
        profilestop();
        return 0;
    }
    killstreak_id = player killstreakrules::killstreakstart("ac130", player.team, undefined, 1);
    if (killstreak_id == -1) {
        profilestop();
        return 0;
    }
    bundle = killstreaks::get_script_bundle("ac130");
    assert(isdefined(bundle));
    spawnpos = level.mapcenter + (5000, 5000, 8000);
    level.ac130 = spawnvehicle(bundle.ksvehicle, spawnpos, (0, 0, 0), "ac130");
    level.ac130.identifier_weapon = getweapon("ac130");
    level.ac130 killstreaks::configure_team(killstreaktype, killstreak_id, player, "helicopter");
    level.ac130 killstreak_hacking::enable_hacking("ac130", &hackedprefunction, &hackedpostfunction);
    level.ac130.killstreak_id = killstreak_id;
    level.ac130.destroyfunc = &function_a51c391f;
    level.ac130.hardpointtype = "ac130";
    level.ac130 clientfield::set("enemyvehicle", 1);
    level.ac130 vehicle::init_target_group();
    level.ac130.killstreak_timer_started = 0;
    level.ac130.allowdeath = 0;
    level.ac130 setforcenocull();
    level.ac130.playermovedrecently = 0;
    level.ac130.soundmod = "default_loud";
    level.ac130 hacker_tool::registerwithhackertool(50, 10000);
    level.ac130.usage = [];
    level.destructible_callbacks[#"turret_destroyed"] = &vtoldestructiblecallback;
    level.ac130.shuttingdown = 0;
    level.ac130.completely_shutdown = 0;
    level.ac130 thread heatseekingmissile::playlockonsoundsthread(self, #"hash_fa62d8cec85b1a0", #"hash_1683ed70beb3f2");
    level.ac130 thread helicopter::wait_for_killed();
    level.ac130.maxhealth = isdefined(killstreak_bundles::get_max_health("ac130")) ? killstreak_bundles::get_max_health("ac130") : 5000;
    level.ac130.original_health = level.ac130.maxhealth;
    level.ac130.health = level.ac130.maxhealth;
    level.ac130.damagetaken = 0;
    level.ac130 thread helicopter::heli_health("ac130");
    level.ac130 setcandamage(1);
    target_set(level.ac130, (0, 0, -100));
    target_setallowhighsteering(level.ac130, 1);
    level.ac130.numflares = 1;
    level.ac130.fx_flare = bundle.var_22ab738b;
    level.ac130 helicopter::create_flare_ent((0, 0, -25));
    level.ac130 thread heatseekingmissile::missiletarget_proximitydetonateincomingmissile(bundle, "death");
    level.ac130.is_still_valid_target_for_stinger_override = &function_c2bfa7e1;
    level.ac130 thread killstreak_vehicle::function_d4896942(bundle, "ac130", "ac130_shutdown");
    level.ac130 thread killstreak_vehicle::function_31f9c728(bundle, "ac130", "exp_incoming_missile", "uin_ac130_alarm_missile_incoming", "ac130_shutdown");
    level.ac130 setrotorspeed(1);
    level.ac130 util::make_sentient();
    level.ac130.maxvisibledist = 16384;
    level.ac130 function_53d3b37a(bundle);
    level.ac130.totalrockethits = 0;
    level.ac130.turretrockethits = 0;
    level.ac130.overridevehicledamage = &function_dea7ec6a;
    level.ac130.hackedhealthupdatecallback = &function_7cdff810;
    level.ac130.detonateviaemp = &helicoptedetonateviaemp;
    player thread namespace_f9b02f80::play_killstreak_start_dialog("ac130", player.team, killstreak_id);
    level.ac130 namespace_f9b02f80::play_pilot_dialog_on_owner("arrive", "ac130", killstreak_id);
    level.ac130 thread killstreaks::player_killstreak_threat_tracking("ac130", 0.984808);
    level.ac130 thread function_e187e17b();
    player stats::function_e24eec31(bundle.ksweapon, #"used", 1);
    player thread waitforvtolshutdownthread(level.ac130);
    var_e47f3d4a = getdvarfloat(#"hash_29a9f2bae7599f46", -27);
    radius = isdefined(bundle.var_1f9faa0c) ? bundle.var_1f9faa0c : isdefined(level.var_8db9ea19) ? level.var_8db9ea19 : 12000;
    level.ac130.var_9d44b193 = bundle.var_693dc1fb;
    if (sessionmodeiswarzonegame()) {
        var_b0490eb9 = getheliheightlockheight(player.origin);
        trace = groundtrace((player.origin[0], player.origin[1], var_b0490eb9), player.origin - (0, 0, 5000), 0, level.ac130);
        groundheight = trace[#"position"][2];
        var_b7d4ae34 = groundheight + (var_b0490eb9 - groundheight) * bundle.var_ff73e08c;
        level.var_89350618.origin = (player.origin[0], player.origin[1], var_b7d4ae34);
        level.var_e2a77deb = player.origin;
    }
    if (isdefined(level.var_def002d)) {
        level.ac130 killstreaks::function_d7123898(level.var_89350618, level.var_def002d, 1, var_e47f3d4a);
    } else {
        level.ac130 killstreaks::function_67d553c4(level.var_89350618, radius, 0, 1, var_e47f3d4a);
    }
    profilestop();
    if (level.gameended === 1) {
        return 0;
    }
    result = player function_4d980695(1, killstreaktype);
    return result;
}

// Namespace ac130_shared/ac130_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x59ff2f12, Offset: 0x1118
// Size: 0x458
function function_4d980695(*isowner, killstreaktype) {
    assert(isplayer(self));
    player = self;
    player util::setusingremote("ac130");
    player.ignoreempjammed = 1;
    result = player killstreaks::init_ride_killstreak("ac130");
    player.ignoreempjammed = 0;
    if (result != "success") {
        if (result != "disconnect") {
            player killstreaks::clear_using_remote();
            killstreakslot = player killstreaks::function_a2c375bb(killstreaktype);
            player killstreaks::function_a831f92c(killstreakslot, 0, 0);
        }
        level.ac130.failed2enter = 1;
        level.ac130 notify(#"ac130_shutdown");
        return false;
    }
    bundle = killstreaks::get_script_bundle("ac130");
    assert(isdefined(bundle));
    var_fbc8efd2 = 1;
    if (isdefined(level.var_36cf2603)) {
        var_fbc8efd2 = level.var_36cf2603;
    }
    level.ac130 usevehicle(player, var_fbc8efd2);
    level.ac130.usage[player.entnum] = 1;
    level.ac130 thread audio::sndupdatevehiclecontext(1);
    level.ac130 thread vehicle::monitor_missiles_locked_on_to_me(player);
    level.ac130 thread function_5cdcce1e(player);
    if (level.ac130.killstreak_timer_started) {
        player vehicle::set_vehicle_drivable_time(level.ac130.killstreak_duration, level.ac130.killstreak_end_time);
    } else {
        duration = isdefined(bundle.ksduration) ? bundle.ksduration : 60000;
        player vehicle::set_vehicle_drivable_time(duration, gettime() + duration);
    }
    if (!is_true(level.var_dab73f4a)) {
        level.ac130 thread watchplayerexitrequestthread(player);
    }
    player thread watchplayerteamchangethread(level.ac130);
    player setmodellodbias(isdefined(level.mothership_lod_bias) ? level.mothership_lod_bias : 8);
    player givededicatedshadow(level.ac130);
    player clientfield::set_player_uimodel("vehicle.inAC130", 1);
    player clientfield::set_to_player("inAC130", 1);
    player killstreaks::thermal_glow(1);
    player thread function_41f0e35b(level.ac130);
    if (isdefined(level.var_a93e4b60)) {
        level [[ level.var_a93e4b60 ]](player);
    }
    return true;
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xece72fe6, Offset: 0x1578
// Size: 0xf4
function init_shared() {
    callback::on_connect(&onplayerconnect);
    level thread waitforgameendthread();
    level.ac130 = undefined;
    clientfield::register_clientuimodel("vehicle.selectedWeapon", 1, 2, "int", 0);
    clientfield::register_clientuimodel("vehicle.flareCount", 1, 2, "int", 0);
    clientfield::register_clientuimodel("vehicle.inAC130", 1, 1, "int", 0);
    clientfield::register("toplayer", "inAC130", 1, 1, "int");
}

// Namespace ac130_shared/ac130_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xfaea99d, Offset: 0x1678
// Size: 0x7c
function function_bff5c062(var_2f03ffd6, attackingplayer) {
    var_2f03ffd6 killstreaks::function_73566ec7(attackingplayer, getweapon(#"gadget_icepick"), var_2f03ffd6.owner);
    var_2f03ffd6.destroyscoreeventgiven = 1;
    function_8721028e(var_2f03ffd6.owner, 1);
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xe936dd0d, Offset: 0x1700
// Size: 0x2a
function onplayerconnect() {
    if (!isdefined(self.entnum)) {
        self.entnum = self getentitynumber();
    }
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe7e4871, Offset: 0x1738
// Size: 0x118
function activatemaingunner(killstreaktype) {
    player = self;
    attempts = 0;
    while (isdefined(level.ac130)) {
        if (!player killstreakrules::iskillstreakallowed("ac130", player.team)) {
            return 0;
        }
        attempts++;
        if (attempts > 50) {
            return 0;
        }
        wait(0.1);
    }
    player val::set(#"spawnac130", "freezecontrols");
    result = player [[ level.var_f987766c ]](killstreaktype);
    player val::reset(#"spawnac130", "freezecontrols");
    if (level.gameended) {
        return 1;
    }
    if (!isdefined(result)) {
        return 0;
    }
    return result;
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x9996637, Offset: 0x1858
// Size: 0xd4
function hackedprefunction(*hacker) {
    heligunner = self;
    heligunner.owner unlink();
    level.ac130 clientfield::set("vehicletransition", 0);
    heligunner.owner setmodellodbias(0);
    heligunner.owner notify(#"gunner_left");
    heligunner.owner killstreaks::clear_using_remote();
    heligunner.owner vehicle::stop_monitor_missiles_locked_on_to_me();
    heligunner makevehicleunusable();
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x16c45077, Offset: 0x1938
// Size: 0x1ca
function hackedpostfunction(hacker) {
    heligunner = self;
    heligunner clientfield::set("enemyvehicle", 2);
    heligunner makevehicleusable();
    heligunner usevehicle(hacker, 1);
    level.ac130 clientfield::set("vehicletransition", 1);
    heligunner thread vehicle::monitor_missiles_locked_on_to_me(hacker);
    heligunner thread watchplayerexitrequestthread(hacker);
    hacker setmodellodbias(isdefined(level.mothership_lod_bias) ? level.mothership_lod_bias : 8);
    heligunner.owner givededicatedshadow(level.ac130);
    hacker thread watchplayerteamchangethread(heligunner);
    hacker killstreaks::set_killstreak_delay_killcam("ac130");
    if (heligunner.killstreak_timer_started) {
        heligunner.killstreak_duration = heligunner killstreak_hacking::get_hacked_timeout_duration_ms();
        heligunner.killstreak_end_time = hacker killstreak_hacking::set_vehicle_drivable_time_starting_now(heligunner);
        heligunner.killstreakendtime = int(heligunner.killstreak_end_time);
        return;
    }
    heligunner.killstreak_timer_start_using_hacked_time = 1;
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xcfee69aa, Offset: 0x1b10
// Size: 0xe6
function function_e187e17b() {
    self endon(#"death");
    for (;;) {
        params = self waittill(#"gunner_weapon_fired");
        if (isdefined(params.projectiles) && isdefined(self.killstreak_id)) {
            foreach (projectile in params.projectiles) {
                if (isdefined(projectile)) {
                    projectile.killstreakid = self.killstreak_id;
                }
            }
        }
    }
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xe18af60, Offset: 0x1c00
// Size: 0x82
function function_7cdff810() {
    ac130 = self;
    if (ac130.shuttingdown == 1) {
        return;
    }
    hackedhealth = killstreak_bundles::get_hacked_health("ac130");
    assert(isdefined(hackedhealth));
    if (ac130.health > hackedhealth) {
        ac130.health = hackedhealth;
    }
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x91f2381a, Offset: 0x1c90
// Size: 0x6c
function waitforgameendthread() {
    level waittill(#"game_ended");
    if (isdefined(level.ac130) && isdefined(level.ac130.owner)) {
        function_8721028e(level.ac130.owner);
    }
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xcd06c04d, Offset: 0x1d08
// Size: 0x1b2
function waitforvtolshutdownthread(ac130) {
    waitresult = ac130 waittill(#"ac130_shutdown");
    if (!isdefined(ac130)) {
        return;
    }
    if (ac130.completely_shutdown !== 1) {
        attacker = waitresult.attacker;
        if (isdefined(attacker)) {
            luinotifyevent(#"player_callout", 2, #"hash_20aa28bee9cfdd61", attacker.entnum);
        }
        if (target_istarget(ac130)) {
            target_remove(ac130);
        }
        if (issentient(ac130)) {
            ac130 function_60d50ea4();
        }
        if (isdefined(ac130.flare_ent)) {
            ac130.flare_ent delete();
            ac130.flare_ent = undefined;
        }
        ac130 function_cc756b8d();
        function_8721028e(ac130.owner);
    }
    assert(ac130.var_957d409b === 1);
    ac130 deletedelay();
    ac130 = undefined;
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x79a6f896, Offset: 0x1ec8
// Size: 0x68
function function_cc756b8d() {
    if (!isdefined(self)) {
        return;
    }
    if (self.var_957d409b === 1) {
        return;
    }
    profilestart();
    killstreakrules::killstreakstop(self.killstreaktype, self.originalteam, self.killstreak_id);
    self.var_957d409b = 1;
    level.ac130 = undefined;
    profilestop();
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x62f719d2, Offset: 0x1f38
// Size: 0x64
function function_31d18ab9() {
    self endon(#"death");
    self killstreakrules::function_d9f8f32b(self.killstreaktype);
    wait(isdefined(5) ? 5 : 0);
    self function_cc756b8d();
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x46b5710e, Offset: 0x1fa8
// Size: 0x28
function function_a51c391f() {
    ac130 = self;
    ac130 notify(#"ac130_shutdown");
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x388682f6, Offset: 0x1fd8
// Size: 0x6c
function ontimeoutcallback() {
    if (!is_true(level.var_43da6545) && isdefined(level.ac130)) {
        level.ac130 notify(#"hash_70be1b524e0ab533");
        function_8721028e(level.ac130.owner);
    }
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xcda4f45e, Offset: 0x2050
// Size: 0x34
function ontimecheck() {
    self namespace_f9b02f80::play_pilot_dialog_on_owner("timecheck", "ac130", self.killstreak_id);
}

// Namespace ac130_shared/ac130_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x4764a979, Offset: 0x2090
// Size: 0x74
function function_c2bfa7e1(ent, *weapon) {
    if (isdefined(weapon.var_7132bbb7)) {
        return false;
    }
    if (weapon.leaving === 1) {
        return true;
    }
    if (weapon.shuttingdown === 1) {
        return false;
    }
    if (weapon.completely_shutdown === 1) {
        return false;
    }
    return true;
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x11c6d471, Offset: 0x2110
// Size: 0x138
function watchplayerteamchangethread(ac130) {
    ac130 notify(#"mothership_team_change");
    ac130 endon(#"mothership_team_change");
    assert(isplayer(self));
    player = self;
    player endon(#"gunner_left");
    player waittill(#"joined_team", #"disconnect", #"joined_spectators");
    ownerleft = 1;
    if (isdefined(player)) {
        ownerleft = !isdefined(ac130.ownerentnum) || ac130.ownerentnum == player.entnum;
        player thread function_8721028e(player);
    }
    if (isdefined(ac130)) {
        if (ownerleft) {
            ac130 notify(#"ac130_shutdown");
        }
    }
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xb3a7739f, Offset: 0x2250
// Size: 0x23a
function watchplayerexitrequestthread(player) {
    player notify(#"watchplayerexitrequestthread_singleton");
    player endon(#"watchplayerexitrequestthread_singleton");
    assert(isplayer(player));
    ac130 = self;
    level endon(#"game_ended");
    player endon(#"disconnect", #"gunner_left");
    ac130 endon(#"death");
    var_f6263fe2 = getdvarfloat(#"hash_2ed1b7031dae0df7", 0.5);
    while (true) {
        timeused = 0;
        player function_7deaa2a4(timeused);
        player function_9d62ff6c();
        while (player usebuttonpressed() && player killstreaks::function_59e2c378()) {
            timeused += float(function_60d95f53()) / 1000;
            player function_7deaa2a4(timeused / var_f6263fe2);
            if (timeused > var_f6263fe2) {
                ac130 namespace_f9b02f80::play_pilot_dialog_on_owner("remoteOperatorRemoved", "ac130", ac130.killstreak_id);
                player thread function_8721028e(player, 0, 1);
                return;
            }
            waitframe(1);
        }
        waitframe(1);
    }
}

// Namespace ac130_shared/ac130_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x654465cc, Offset: 0x2498
// Size: 0x156
function cantargetplayer(player, *hardpointtype) {
    if (!isalive(hardpointtype) || hardpointtype.sessionstate != "playing") {
        return false;
    }
    if (hardpointtype.ignoreme === 1) {
        return false;
    }
    if (hardpointtype isnotarget()) {
        return false;
    }
    if (hardpointtype hasperk(#"hash_37f82f1d672c4870")) {
        return false;
    }
    if (!isdefined(hardpointtype.team)) {
        return false;
    }
    if (!util::function_fbce7263(hardpointtype.team, self.team)) {
        return false;
    }
    if (hardpointtype.team == #"spectator") {
        return false;
    }
    if (isdefined(hardpointtype.spawntime) && float(gettime() - hardpointtype.spawntime) / 1000 <= level.heli_target_spawnprotection) {
        return false;
    }
    return true;
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd53d6b5a, Offset: 0x25f8
// Size: 0x22a
function function_7ec0bdc(owner) {
    self endon(#"death", #"ac130_shutdown");
    owner endon(#"disconnect");
    targets = [];
    players = level.players;
    for (i = 0; i < players.size; i++) {
        player = players[i];
        if (self cantargetplayer(player)) {
            if (isdefined(player)) {
                targets[targets.size] = player;
            }
        }
    }
    if (targets.size == 1) {
        return targets[0];
    }
    if (targets.size > 1) {
        foreach (target in targets) {
            self killstreaks::update_player_threat(target);
        }
        highest = 0;
        currenttarget = undefined;
        foreach (target in targets) {
            if (isdefined(target.threatlevel) && target.threatlevel > highest) {
                highest = target.threatlevel;
                currenttarget = target;
            }
        }
        return currenttarget;
    }
    return undefined;
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2c754e20, Offset: 0x2830
// Size: 0x148
function function_a514a080(player) {
    self endon(#"death", #"ac130_shutdown", #"hash_70be1b524e0ab533");
    player endon(#"disconnect");
    self.var_7917e5a1 = 1;
    turretindex = 1;
    while (true) {
        target = function_7ec0bdc(player);
        if (isalive(target)) {
            self turretsettarget(0, target);
            weapon = self seatgetweapon(turretindex);
            self vehicle_ai::fire_for_rounds(weapon.clipsize, turretindex, target);
            turretindex++;
            if (turretindex > 3) {
                turretindex = 1;
                wait(2);
            }
        }
        wait(randomintrange(1, 2));
    }
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe98ac1e, Offset: 0x2980
// Size: 0xfc
function function_41f0e35b(ac130) {
    ac130 endon(#"death", #"ac130_shutdown");
    self endon(#"disconnect");
    wait(0.1);
    var_74a46de6 = ac130 function_90d45d34(0);
    view_pos = self getplayercamerapos();
    var_a120a51b = level.mapcenter;
    if (isdefined(level.var_e2a77deb)) {
        var_a120a51b = level.var_e2a77deb;
    }
    self setplayerangles(vectortoangles(var_a120a51b - view_pos) - var_74a46de6);
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x95f72128, Offset: 0x2a88
// Size: 0x338
function function_5cdcce1e(player) {
    ac130 = self;
    ac130 endon(#"delete", #"ac130_shutdown");
    player endon(#"disconnect", #"joined_team", #"joined_spectator", #"changed_specialist");
    var_2990ddbd = -1;
    while (true) {
        ammo_in_clip = ac130 function_e2d89efe(1);
        player clientfield::set_player_uimodel("vehicle.rocketAmmo", ammo_in_clip);
        var_a4a44abc = ac130 function_fde0d99e(1);
        player clientfield::set_player_uimodel("vehicle.bindingCooldown0.cooldown", 1 - var_a4a44abc);
        ammo_in_clip = ac130 function_e2d89efe(2);
        player clientfield::set_player_uimodel("vehicle.ammoCount", ammo_in_clip);
        var_a4a44abc = ac130 function_fde0d99e(2);
        player clientfield::set_player_uimodel("vehicle.bindingCooldown1.cooldown", 1 - var_a4a44abc);
        ammo_in_clip = ac130 function_e2d89efe(3);
        player clientfield::set_player_uimodel("vehicle.ammo2Count", ammo_in_clip);
        var_a4a44abc = ac130 function_fde0d99e(3);
        player clientfield::set_player_uimodel("vehicle.bindingCooldown2.cooldown", 1 - var_a4a44abc);
        player clientfield::set_player_uimodel("vehicle.flareCount", ac130.numflares);
        seat_index = int(max(0, isdefined(ac130 getoccupantseat(player)) ? ac130 getoccupantseat(player) : 0));
        player clientfield::set_player_uimodel("vehicle.selectedWeapon", seat_index);
        if (var_2990ddbd != seat_index && isdefined(ac130.killstreak_duration) && isdefined(ac130.killstreak_end_time)) {
            ac130 updatedrivabletimeforalloccupants(ac130.killstreak_duration, ac130.killstreak_end_time);
            var_2990ddbd = seat_index;
        }
        wait(0.1);
    }
}

// Namespace ac130_shared/ac130_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x329dd78b, Offset: 0x2dc8
// Size: 0x21c
function mainturretdestroyed(ac130, eattacker, weapon) {
    ac130.owner iprintlnbold(#"hash_bbc64fd3a1e88d");
    if (target_istarget(ac130)) {
        target_remove(ac130);
    }
    if (issentient(ac130)) {
        ac130 function_60d50ea4();
    }
    ac130.shuttingdown = 1;
    eattacker = self [[ level.figure_out_attacker ]](eattacker);
    if (isdefined(eattacker) && (!isdefined(ac130.owner) || ac130.owner util::isenemyplayer(eattacker))) {
        luinotifyevent(#"player_callout", 2, #"hash_bbc64fd3a1e88d", eattacker.entnum);
        challenges::destroyedaircraft(eattacker, weapon, 1, ac130, 1);
        eattacker challenges::addflyswatterstat(weapon, ac130);
        ac130 killstreaks::function_73566ec7(eattacker, weapon, ac130.owner);
        ac130 namespace_f9b02f80::play_destroyed_dialog_on_owner("ac130", ac130.killstreak_id);
        eattacker battlechatter::function_eebf94f6("ac130");
        eattacker stats::function_e24eec31(weapon, #"hash_3f3d8a93c372c67d", 1);
    }
    ac130 thread function_46d0e4e5();
}

// Namespace ac130_shared/ac130_shared
// Params 6, eflags: 0x2 linked
// Checksum 0xebad70f9, Offset: 0x2ff0
// Size: 0x84
function vtoldestructiblecallback(*brokennotify, eattacker, weapon, *pieceindex, *dir, *mod) {
    ac130 = self;
    ac130 endon(#"delete", #"ac130_shutdown");
    mainturretdestroyed(ac130, dir, mod);
}

// Namespace ac130_shared/ac130_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x6a89c63a, Offset: 0x3080
// Size: 0x41e
function function_8721028e(player, var_dbcb1965 = 0, var_c3b5f258 = 0) {
    if (isbot(player)) {
        player ai::set_behavior_attribute("control", "commander");
    }
    if (!isdefined(level.ac130) || level.ac130.completely_shutdown === 1) {
        return;
    }
    profilestart();
    if (!is_true(level.ac130.var_7917e5a1)) {
        if (isdefined(player)) {
            player vehicle::stop_monitor_missiles_locked_on_to_me();
        }
        if (isdefined(player) && isdefined(level.ac130) && isdefined(level.ac130.owner)) {
            if (isdefined(player.usingvehicle) && player.usingvehicle) {
                player unlink();
                level.ac130 clientfield::set("vehicletransition", 0);
                player clientfield::set_player_uimodel("vehicle.inAC130", 0);
                player clientfield::set_to_player("inAC130", 0);
                player killstreaks::thermal_glow(0);
                if (isdefined(level.var_be43874e)) {
                    level [[ level.var_be43874e ]](player);
                }
            }
        }
    }
    if (!var_c3b5f258) {
        level.ac130.shuttingdown = 1;
        level.ac130.hardpointtype = "ac130";
        level.ac130 unlink();
        planedir = anglestoforward(level.ac130.angles);
        var_15f570c1 = level.ac130.origin + vectorscale(planedir, level.ac130.var_9d44b193);
        level.ac130 thread function_31d18ab9();
        if (var_dbcb1965) {
            var_15f570c1 += (0, 0, -8000);
        }
        level.ac130 thread helicopter::heli_leave(var_15f570c1, 1);
        level.ac130 thread audio::sndupdatevehiclecontext(0);
        if (var_dbcb1965) {
            level.ac130 thread function_60e3edcc();
        }
    }
    if (!is_true(level.ac130.var_7917e5a1) && isdefined(player)) {
        player setmodellodbias(0);
        player givededicatedshadow(player);
        player notify(#"gunner_left");
        player killstreaks::clear_using_remote();
    }
    if (!var_c3b5f258) {
        level.ac130.completely_shutdown = 1;
        level.ac130.shuttingdown = 0;
    }
    if (var_c3b5f258) {
        level.ac130 thread function_a514a080(player);
    }
    profilestop();
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x3290df8d, Offset: 0x34a8
// Size: 0xd4
function function_c4aa4bb2() {
    ac130 = self;
    if (isdefined(ac130) && isdefined(ac130.owner)) {
        org = ac130 gettagorigin("tag_barrel");
        magnitude = 0.3;
        duration = 2;
        radius = 500;
        v_pos = ac130.origin;
        earthquake(magnitude, duration, org, 500);
        ac130 playsound(#"hash_5314ffef2464b607");
    }
}

// Namespace ac130_shared/ac130_shared
// Params 15, eflags: 0x2 linked
// Checksum 0x6a93b1ad, Offset: 0x3588
// Size: 0x73c
function function_dea7ec6a(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, vpoint, vdir, shitloc, *vdamageorigin, psoffsettime, damagefromunderneath, modelindex, partname, *vsurfacenormal) {
    ac130 = self;
    if (vpoint == "MOD_TRIGGER_HURT") {
        return 0;
    }
    if (ac130.shuttingdown) {
        return 0;
    }
    smeansofdeath = self killstreaks::ondamageperweapon("ac130", idflags, smeansofdeath, weapon, vpoint, vdir, ac130.maxhealth, undefined, ac130.maxhealth * 0.4, undefined, 0, undefined, 1, 1);
    if (smeansofdeath == 0) {
        return 0;
    }
    handleasrocketdamage = vpoint == "MOD_PROJECTILE" || vpoint == "MOD_EXPLOSIVE";
    if (vdir.statindex === level.weaponshotgunenergy.statindex || vdir.statindex === level.weaponpistolenergy.statindex) {
        handleasrocketdamage = 0;
    }
    if (handleasrocketdamage) {
        ac130 function_c4aa4bb2();
        ac130 playsound(#"hash_ddcd9d25e056016");
    }
    var_902cbab5 = self.health - smeansofdeath;
    if (!is_true(self.var_5b3f091f) && var_902cbab5 <= self.maxhealth * 0.75) {
        self namespace_f9b02f80::play_pilot_dialog_on_owner("damaged", "ac130", self.killstreak_id);
        self.var_5b3f091f = 1;
    } else if (!is_true(self.var_7e6efe74) && self.health <= self.maxhealth * 0.25) {
        self namespace_f9b02f80::play_pilot_dialog_on_owner("damaged1", "ac130", self.killstreak_id);
        self.var_7e6efe74 = 1;
    }
    var_a07db9e0 = self.maxhealth * 0.75;
    var_c5d67baf = self.maxhealth * 0.5;
    if (self.health > var_a07db9e0 && var_902cbab5 <= var_a07db9e0) {
        self thread function_d55529();
    } else if (self.health > var_c5d67baf && var_902cbab5 <= var_c5d67baf) {
        self thread function_ae354bc7();
    }
    if (self.health > 0 && var_902cbab5 <= 0 && !ac130.shuttingdown) {
        ac130.shuttingdown = 1;
        ac130 notify(#"hash_410e7050279b0b25");
        if (!isdefined(ac130.destroyscoreeventgiven) && isdefined(idflags) && (!isdefined(ac130.owner) || ac130.owner util::isenemyplayer(idflags))) {
            idflags = self [[ level.figure_out_attacker ]](idflags);
            luinotifyevent(#"player_callout", 2, #"hash_bbc64fd3a1e88d", idflags.entnum);
            ac130 namespace_f9b02f80::play_destroyed_dialog_on_owner("ac130", ac130.killstreak_id);
            idflags battlechatter::function_eebf94f6("ac130");
            challenges::destroyedaircraft(idflags, vdir, 1, ac130, 1);
            idflags challenges::addflyswatterstat(vdir, ac130);
            idflags stats::function_e24eec31(vdir, #"hash_3f3d8a93c372c67d", 1);
            ac130.destroyscoreeventgiven = 1;
        }
        if (isdefined(idamage) && idamage getentitytype() == 4) {
            bundle = killstreaks::get_script_bundle("ac130");
            if (isdefined(bundle.var_888a5ff7) && isdefined(shitloc)) {
                var_74d40edb = idamage getvelocity();
                if (lengthsquared(var_74d40edb) > sqr(50)) {
                    var_29edfc10 = vectornormalize(var_74d40edb);
                    playfx(bundle.var_888a5ff7, shitloc, var_29edfc10, undefined, undefined, self.team);
                }
            }
        }
        ac130.var_d02ddb8e = vdir;
        params = {#einflictor:idamage, #eattacker:idflags, #idamage:smeansofdeath, #idflags:weapon, #smeansofdeath:vpoint, #weapon:vdir, #vpoint:shitloc, #vdir:vdamageorigin, #shitloc:psoffsettime, #psoffsettime:damagefromunderneath, #damagefromunderneath:modelindex, #modelindex:partname, #partname:vsurfacenormal};
        self callback::callback(#"on_vehicle_damage", params);
        ac130 thread function_46d0e4e5();
        return 0;
    }
    return smeansofdeath;
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x8b9499d3, Offset: 0x3cd0
// Size: 0x10c
function function_46d0e4e5() {
    ac130 = self;
    ac130 endon(#"death");
    if (self.leave_by_damage_initiated === 1) {
        return;
    }
    self.leave_by_damage_initiated = 1;
    if (target_istarget(ac130)) {
        target_remove(ac130);
    }
    if (issentient(ac130)) {
        ac130 function_60d50ea4();
    }
    ac130 thread remote_weapons::do_static_fx();
    ac130 waittilltimeout(0.5, #"static_fx_done");
    var_dbcb1965 = 1;
    function_8721028e(ac130.owner, var_dbcb1965);
}

// Namespace ac130_shared/ac130_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x8aff2ede, Offset: 0x3de8
// Size: 0x34
function helicoptedetonateviaemp(attacker, weapon) {
    mainturretdestroyed(level.ac130, attacker, weapon);
}

// Namespace ac130_shared/ac130_shared
// Params 2, eflags: 0x0
// Checksum 0xe44162dc, Offset: 0x3e28
// Size: 0x39a
function function_cd679760(startnode, destnodes) {
    self notify(#"flying");
    self endon(#"flying", #"crashing", #"leaving", #"death");
    bundle = killstreaks::get_script_bundle("ac130");
    assert(isdefined(bundle));
    nextnode = getent(startnode.target, "targetname");
    assert(isdefined(nextnode), "<unknown string>");
    self setspeed(150, 80);
    self setneargoalnotifydist(100);
    self setgoal(nextnode.origin + (0, 0, 0), 1);
    self waittill(#"near_goal");
    firstpass = 1;
    if (!self.playermovedrecently) {
        node = self updateareanodes(destnodes, 0);
        level.ac130.currentnode = node;
        targetnode = getent(node.target, "targetname");
        traveltonode(targetnode);
        if (isdefined(targetnode.script_airspeed) && isdefined(targetnode.script_accel)) {
            heli_speed = targetnode.script_airspeed;
            heli_accel = targetnode.script_accel;
        } else {
            heli_speed = 150 + randomint(20);
            heli_accel = 40 + randomint(10);
        }
        self setspeed(heli_speed, heli_accel);
        self setgoal(targetnode.origin + (0, 0, 0), 1);
        self setgoalyaw(targetnode.angles[1]);
    }
    if (!isdefined(targetnode) || !isdefined(targetnode.script_delay)) {
        self waittill(#"near_goal");
        waittime = 10 + randomint(5);
    } else {
        self waittill(#"goal");
        waittime = targetnode.script_delay;
    }
    if (firstpass) {
        profilestart();
        self function_53d3b37a(bundle);
        profilestop();
        firstpass = 0;
    }
    wait(waittime);
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe7679ca, Offset: 0x41d0
// Size: 0x144
function function_53d3b37a(bundle) {
    self.killstreak_duration = isdefined(bundle.ksduration) ? bundle.ksduration : self.killstreak_timer_start_using_hacked_time === 1 ? self killstreak_hacking::get_hacked_timeout_duration_ms() : 60000;
    self.killstreak_end_time = gettime() + self.killstreak_duration;
    self.killstreakendtime = int(self.killstreak_end_time);
    self thread killstreaks::waitfortimeout("ac130", self.killstreak_duration, &ontimeoutcallback, "delete", "death");
    self thread killstreaks::waitfortimecheck(self.killstreak_duration / 2, &ontimecheck, "delete", "death");
    self.killstreak_timer_started = 1;
    self updatedrivabletimeforalloccupants(self.killstreak_duration, self.killstreak_end_time);
}

// Namespace ac130_shared/ac130_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x815dbdc3, Offset: 0x4320
// Size: 0x3c
function updatedrivabletimeforalloccupants(duration_ms, end_time_ms) {
    if (isdefined(self.owner)) {
        self.owner vehicle::set_vehicle_drivable_time(duration_ms, end_time_ms);
    }
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x0
// Checksum 0x8be3fb93, Offset: 0x4368
// Size: 0x2e8
function watchlocationchangethread(destnodes) {
    player = self;
    player endon(#"disconnect", #"gunner_left");
    ac130 = level.ac130;
    bundle = killstreaks::get_script_bundle("ac130");
    assert(isdefined(bundle));
    ac130 endon(#"delete", #"ac130_shutdown");
    player thread setplayermovedrecentlythread();
    player.moves = 0;
    while (true) {
        ac130 waittill(#"goal");
        if (player.moves > 0) {
            waittime = randomintrange(bundle.var_efac0f7a, bundle.var_18d458d2);
            wait(float(waittime) / 1000);
        }
        player.moves++;
        node = self updateareanodes(destnodes, 1);
        ac130.currentnode = node;
        targetnode = getent(node.target, "targetname");
        player playlocalsound(#"mpl_cgunner_nav");
        ac130 traveltonode(targetnode);
        if (isdefined(targetnode.script_airspeed) && isdefined(targetnode.script_accel)) {
            heli_speed = targetnode.script_airspeed;
            heli_accel = targetnode.script_accel;
        } else {
            heli_speed = 80 + randomint(20);
            heli_accel = 40 + randomint(10);
        }
        ac130 setspeed(heli_speed, heli_accel);
        ac130 setgoal(targetnode.origin + (0, 0, 0), 1);
        ac130 setgoalyaw(targetnode.angles[1]);
    }
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x282f0255, Offset: 0x4658
// Size: 0xd6
function setplayermovedrecentlythread() {
    player = self;
    player endon(#"disconnect", #"gunner_left");
    ac130 = level.ac130;
    ac130 endon(#"delete", #"ac130_shutdown");
    mymove = self.moves;
    level.ac130.playermovedrecently = 1;
    wait(100);
    if (mymove === self.moves && isdefined(level.ac130)) {
        level.ac130.playermovedrecently = 0;
    }
}

// Namespace ac130_shared/ac130_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x89208c3f, Offset: 0x4738
// Size: 0x416
function updateareanodes(areanodes, forcemove) {
    validenemies = [];
    foreach (node in areanodes) {
        node.validplayers = [];
        node.nodescore = 0;
    }
    foreach (player in level.players) {
        if (!isalive(player)) {
            continue;
        }
        if (player.team == self.team) {
            continue;
        }
        foreach (node in areanodes) {
            if (distancesquared(player.origin, node.origin) > 1048576) {
                continue;
            }
            node.validplayers[node.validplayers.size] = player;
        }
    }
    bestnode = undefined;
    foreach (node in areanodes) {
        if (isdefined(level.ac130.currentnode) && node == level.ac130.currentnode) {
            continue;
        }
        helinode = getent(node.target, "targetname");
        foreach (player in node.validplayers) {
            node.nodescore += 1;
            if (bullettracepassed(player.origin + (0, 0, 32), helinode.origin, 0, player)) {
                node.nodescore += 3;
            }
        }
        if (forcemove && distancesquared(level.ac130.origin, helinode.origin) < 40000) {
            node.nodescore = -1;
        }
        if (!isdefined(bestnode) || node.nodescore > bestnode.nodescore) {
            bestnode = node;
        }
    }
    return bestnode;
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xb0c46f53, Offset: 0x4b58
// Size: 0x28a
function traveltonode(goalnode) {
    originoffets = getoriginoffsets(goalnode);
    if (originoffets[#"start"] != self.origin) {
        if (isdefined(goalnode.script_airspeed) && isdefined(goalnode.script_accel)) {
            heli_speed = goalnode.script_airspeed;
            heli_accel = goalnode.script_accel;
        } else {
            heli_speed = 30 + randomint(20);
            heli_accel = 15 + randomint(15);
        }
        self setspeed(heli_speed, heli_accel);
        self setgoal(originoffets[#"start"] + (0, 0, 30), 0);
        self setgoalyaw(goalnode.angles[1]);
        self waittill(#"goal");
    }
    if (originoffets[#"end"] != goalnode.origin) {
        if (isdefined(goalnode.script_airspeed) && isdefined(goalnode.script_accel)) {
            heli_speed = goalnode.script_airspeed;
            heli_accel = goalnode.script_accel;
        } else {
            heli_speed = 30 + randomint(20);
            heli_accel = 15 + randomint(15);
        }
        self setspeed(heli_speed, heli_accel);
        self setgoal(originoffets[#"end"] + (0, 0, 30), 0);
        self setgoalyaw(goalnode.angles[1]);
        self waittill(#"goal");
    }
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2504c8c8, Offset: 0x4df0
// Size: 0x214
function getoriginoffsets(goalnode) {
    startorigin = self.origin;
    endorigin = goalnode.origin;
    numtraces = 0;
    maxtraces = 40;
    traceoffset = (0, 0, -196);
    for (traceorigin = bullettrace(startorigin + traceoffset, endorigin + traceoffset, 0, self); distancesquared(traceorigin[#"position"], endorigin + traceoffset) > 10 && numtraces < maxtraces; traceorigin = bullettrace(startorigin + traceoffset, endorigin + traceoffset, 0, self)) {
        println("<unknown string>" + distancesquared(traceorigin[#"position"], endorigin + traceoffset));
        if (startorigin[2] < endorigin[2]) {
            startorigin += (0, 0, 128);
        } else if (startorigin[2] > endorigin[2]) {
            endorigin += (0, 0, 128);
        } else {
            startorigin += (0, 0, 128);
            endorigin += (0, 0, 128);
        }
        numtraces++;
    }
    offsets = [];
    offsets[#"start"] = startorigin;
    offsets[#"end"] = endorigin;
    return offsets;
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe2138059, Offset: 0x5010
// Size: 0xe4
function function_631f02c5(var_f9e67747) {
    self endon(#"killed");
    if (var_f9e67747 == 0) {
        self.primarykill = (isdefined(self.primarykill) ? self.primarykill : 0) + 1;
    } else if (var_f9e67747 == 1) {
        self.secondarykill = (isdefined(self.secondarykill) ? self.secondarykill : 0) + 1;
    } else {
        self.tertiarykill = (isdefined(self.tertiarykill) ? self.tertiarykill : 0) + 1;
    }
    wait(2.5);
    if (!isdefined(self)) {
        return;
    }
    self function_568f6426(var_f9e67747);
}

// Namespace ac130_shared/ac130_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x27c953c6, Offset: 0x5100
// Size: 0x114
function function_568f6426(var_f9e67747) {
    if (var_f9e67747 == 0) {
        kills = self.primarykill;
        prefix = "kill";
        self.primarykill = 0;
    } else if (var_f9e67747 == 1) {
        kills = self.secondarykill;
        prefix = "secondaryKill";
        self.secondarykill = 0;
    } else {
        kills = self.tertiarykill;
        prefix = "tertiaryKill";
        self.tertiarykill = 0;
    }
    if (kills > 3) {
        dialogkey = prefix + "Multiple";
    } else if (kills > 0) {
        dialogkey = prefix + kills;
    }
    if (isdefined(dialogkey)) {
        self namespace_f9b02f80::play_pilot_dialog_on_owner(dialogkey, "ac130", self.killstreak_id);
    }
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x3460b2f0, Offset: 0x5220
// Size: 0xbc
function function_d55529() {
    self endon(#"death");
    bundle = killstreaks::get_script_bundle("ac130");
    playfxontag(bundle.var_545fa8c2, self, "tag_fx_engine3");
    self playsound(level.heli_sound[#"crash"]);
    wait(0.1);
    playfxontag(bundle.var_545fa8c2, self, "tag_fx_engine4");
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xed37de8c, Offset: 0x52e8
// Size: 0xbc
function function_ae354bc7() {
    self endon(#"death");
    bundle = killstreaks::get_script_bundle("ac130");
    playfxontag(bundle.var_465c35a5, self, "tag_fx_engine1");
    self playsound(level.heli_sound[#"crash"]);
    wait(0.1);
    playfxontag(bundle.var_465c35a5, self, "tag_fx_engine6");
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb43b024a, Offset: 0x53b0
// Size: 0xdc
function function_cd29787b() {
    bundle = killstreaks::get_script_bundle("ac130");
    playfxontag(bundle.ksexplosionfx, self, "tag_body_animate");
    if (isdefined(bundle.var_bb6c29b4) && isdefined(self.var_d02ddb8e) && self.var_d02ddb8e == getweapon(#"shock_rifle")) {
        playfxontag(bundle.var_bb6c29b4, self, "tag_body_animate");
    }
    self playsound("exp_ac130");
}

// Namespace ac130_shared/ac130_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x99e73041, Offset: 0x5498
// Size: 0x20c
function function_60e3edcc() {
    plane = self;
    plane endon(#"death");
    wait(randomfloatrange(0.1, 0.2));
    if (false) {
        goalx = randomfloatrange(650, 700);
        goaly = randomfloatrange(650, 700);
        if (randomintrange(0, 2) > 0) {
            goalx *= -1;
        }
        if (randomintrange(0, 2) > 0) {
            goaly *= -1;
        }
        var_8518e93e = randomfloatrange(3, 4);
        plane setplanebarrelroll(randomfloatrange(0.0833333, 0.111111), randomfloatrange(4, 5));
        plane_speed = plane getspeedmph();
        wait(0.7);
        plane setspeed(plane_speed * 1.5, 300);
        wait(var_8518e93e - 0.7);
    }
    plane function_cd29787b();
    wait(0.1);
    plane ghost();
    wait(0.5);
}

// Namespace ac130_shared/ac130_shared
// Params 3, eflags: 0x0
// Checksum 0xc91b6512, Offset: 0x56b0
// Size: 0x7c
function function_8920217c(var_eef27eea = 0, var_dc40d987 = 0, var_c06eaeb5 = 0) {
    level.var_98fe5b4a = [var_eef27eea, var_dc40d987];
    level.var_b34c8ec8 = var_c06eaeb5;
}

// Namespace ac130_shared/ac130_shared
// Params 3, eflags: 0x0
// Checksum 0x5cacfec0, Offset: 0x5738
// Size: 0xe0
function function_672f2acd(var_eb87911a, var_c3c587fa, var_a382eb14) {
    assert(isdefined(level.var_89350618));
    level.var_98fe5b4a = [var_eb87911a[0], var_eb87911a[1]];
    level.var_b34c8ec8 = var_eb87911a[2];
    level.var_89350618.origin = var_eb87911a;
    level.var_e2a77deb = var_c3c587fa;
    if (!isdefined(level.var_e2a77deb)) {
        level.var_e2a77deb = (var_eb87911a[0], var_eb87911a[1], 0);
    }
    level.var_def002d = var_a382eb14;
}

// Namespace ac130_shared/ac130_shared
// Params 2, eflags: 0x6 linked
// Checksum 0x3d574a64, Offset: 0x5820
// Size: 0x54
function private function_91ba5c69(*attacker, *inflictor) {
    if (isdefined(level.ac130) && is_true(level.ac130.var_7917e5a1)) {
        return level.ac130;
    }
}

