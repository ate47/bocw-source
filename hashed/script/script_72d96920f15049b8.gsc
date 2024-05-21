// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\heatseekingmissile.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\killstreaks\killstreak_bundles.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\killstreaks\killstreak_vehicle.gsc;
#using script_4721de209091b1a6;
#using scripts\killstreaks\helicopter_shared.gsc;
#using scripts\core_common\vehicle_death_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\oob.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\battlechatter.gsc;
#using scripts\core_common\audio_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_e8c18978;

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 1, eflags: 0x2 linked
// Checksum 0xcfd3078, Offset: 0x380
// Size: 0x14e
function preinit(bundlename) {
    profilestart();
    level.var_b3e433ae = [];
    clientfield::register("toplayer", "" + #"hash_7c907650b14abbbe", 1, 1, "int");
    clientfield::register("vehicle", "" + #"hash_4ddf67f7aa0f6884", 1, 1, "int");
    clientfield::register("vehicle", "" + #"hash_46646871455cab15", 1, 2, "int");
    clientfield::register("vehicle", "" + #"hash_6cf1a3b26118d892", 1, 1, "int");
    init_shared();
    killstreaks::register_killstreak(bundlename, &activatemaingunner);
    profilestop();
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 0, eflags: 0x2 linked
// Checksum 0xca8761a8, Offset: 0x4d8
// Size: 0xb4
function function_3675de8b() {
    scene::add_scene_func(#"chopper_gunner_door_open", &function_294e90d4, "play");
    scene::add_scene_func(#"chopper_gunner_door_open", &function_4e4267e0, "done");
    bundle = killstreaks::get_script_bundle("chopper_gunner");
    assert(isdefined(bundle));
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 1, eflags: 0x2 linked
// Checksum 0x2dcac600, Offset: 0x598
// Size: 0xa8
function function_d887d24d(var_e7230502) {
    if (!isdefined(level.var_b3e433ae)) {
        level.var_b3e433ae = [];
    } else if (!isarray(level.var_b3e433ae)) {
        level.var_b3e433ae = array(level.var_b3e433ae);
    }
    if (!isinarray(level.var_b3e433ae, var_e7230502)) {
        level.var_b3e433ae[level.var_b3e433ae.size] = var_e7230502;
    }
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 1, eflags: 0x2 linked
// Checksum 0xcc11049e, Offset: 0x648
// Size: 0x1072
function function_5160bb1e(killstreaktype) {
    assert(!isdefined(level.chopper_gunner));
    profilestart();
    if (is_true(self.isplanting) || is_true(self.isdefusing) || self util::isusingremote() || self iswallrunning() || self oob::isoutofbounds()) {
        profilestop();
        return 0;
    }
    killstreak_id = self killstreakrules::killstreakstart("chopper_gunner", self.team, undefined, 1);
    if (killstreak_id == -1) {
        profilestop();
        return 0;
    }
    bundle = killstreaks::get_script_bundle("chopper_gunner");
    assert(isdefined(bundle));
    spawnpos = level.mapcenter + (0, bundle.var_42d6fcc1, bundle.var_4325e427);
    level.chopper_gunner = spawnvehicle(bundle.ksvehicle, spawnpos, (0, 0, 0), "chopper_gunner");
    level.chopper_gunner.identifier_weapon = getweapon("chopper_gunner");
    level.chopper_gunner killstreaks::configure_team(killstreaktype, killstreak_id, self, "helicopter");
    level.chopper_gunner.killstreak_id = killstreak_id;
    level.chopper_gunner.destroyfunc = &function_f1d43cb2;
    level.chopper_gunner.hardpointtype = "chopper_gunner";
    level.chopper_gunner clientfield::set("enemyvehicle", 1);
    level.chopper_gunner vehicle::init_target_group();
    level.chopper_gunner.killstreak_timer_started = 0;
    level.chopper_gunner.allowdeath = 0;
    level.chopper_gunner.var_c31213a5 = 1;
    level.chopper_gunner.playermovedrecently = 0;
    level.chopper_gunner.soundmod = "default_loud";
    if (isdefined(level.registerwithhackertool)) {
        level.chopper_gunner [[ level.registerwithhackertool ]](50, 10000);
    }
    level.chopper_gunner.usage = [];
    level.destructible_callbacks[#"turret_destroyed"] = &function_aecfdb77;
    level.chopper_gunner.shuttingdown = 0;
    level.chopper_gunner.completely_shutdown = 0;
    level.chopper_gunner thread heatseekingmissile::playlockonsoundsthread(self, #"hash_fa62d8cec85b1a0", #"hash_1683ed70beb3f2");
    level.chopper_gunner.maxhealth = isdefined(killstreak_bundles::get_max_health("chopper_gunner")) ? killstreak_bundles::get_max_health("chopper_gunner") : 5000;
    level.chopper_gunner.original_health = level.chopper_gunner.maxhealth;
    level.chopper_gunner.health = level.chopper_gunner.maxhealth;
    level.chopper_gunner.damagestate = 0;
    level.chopper_gunner helicopter::function_76f530c7(bundle);
    level.chopper_gunner setcandamage(1);
    target_set(level.chopper_gunner, (0, 0, -100));
    target_setallowhighsteering(level.chopper_gunner, 1);
    level.chopper_gunner.numflares = 1;
    level.chopper_gunner.fx_flare = bundle.var_22ab738b;
    level.chopper_gunner helicopter::create_flare_ent((0, 0, -150));
    level.chopper_gunner thread heatseekingmissile::missiletarget_proximitydetonateincomingmissile(bundle, "death");
    level.chopper_gunner.is_still_valid_target_for_stinger_override = &function_c2bfa7e1;
    level.chopper_gunner thread killstreak_vehicle::function_d4896942(bundle, "chopper_gunner");
    level.chopper_gunner thread killstreak_vehicle::function_31f9c728(bundle, "chopper_gunner", "exp_incoming_missile", "uin_ac130_alarm_missile_incoming");
    level.chopper_gunner setrotorspeed(1);
    level thread helicopter::function_eca18f00(level.chopper_gunner, bundle.var_f90029e2);
    level.chopper_gunner util::make_sentient();
    level.chopper_gunner.maxvisibledist = 16384;
    level.chopper_gunner function_53d3b37a(bundle);
    level.chopper_gunner.totalrockethits = 0;
    level.chopper_gunner.turretrockethits = 0;
    level.chopper_gunner.overridevehicledamage = &function_77784598;
    self thread namespace_f9b02f80::play_killstreak_start_dialog("chopper_gunner", self.team, killstreak_id);
    level.chopper_gunner namespace_f9b02f80::play_pilot_dialog_on_owner("arrive", "chopper_gunner", killstreak_id);
    level.chopper_gunner thread killstreaks::player_killstreak_threat_tracking("chopper_gunner", 0.866025);
    self stats::function_e24eec31(bundle.ksweapon, #"used", 1);
    self clientfield::set_to_player("" + #"hash_7c907650b14abbbe", 1);
    profilestop();
    if (sessionmodeiszombiesgame() && is_true(level.var_68e3cf24) && !is_true(level.var_d5ad2e35)) {
        assert(isdefined(self.chopper_zone), "<unknown string>");
        a_startnodes = getvehiclenodearray("chopper_gunner_path_start_multi", "targetname");
        foreach (node in a_startnodes) {
            if (node.script_noteworthy === self.chopper_zone) {
                startnode = node;
                break;
            }
        }
    } else if (sessionmodeiszombiesgame() && !isdefined(level.var_97e461d4) && util::get_game_type() === #"zsurvival") {
        a_startnodes = getvehiclenodearray("chopper_gunner_path_start_multi", "targetname");
        foreach (node in a_startnodes) {
            if (issubstr(node.script_noteworthy, "defend")) {
                startnode = node;
                break;
            }
        }
    } else {
        startnode = getvehiclenode("chopper_gunner_path_start", "targetname");
    }
    assert(isdefined(startnode), "<unknown string>");
    if (sessionmodeiswarzonegame() && !is_true(level.var_29cfe9dd) || is_true(level.var_d5ad2e35)) {
        if (sessionmodeiszombiesgame()) {
            height = isdefined(level.var_1beaaeca) ? level.var_1beaaeca : 3500;
            height += isdefined(level.var_fba637a5) ? level.var_fba637a5 : 0;
            angle_offset = isdefined(level.var_32e48553) ? level.var_32e48553 : (0, 45, 0);
            var_77e38a57 = level.var_981cf9cf;
            position = self.origin;
            if (self.origin[2] < 1000) {
                position = (self.origin[0], self.origin[1], 1000);
            }
            yaw = function_26e7fb55(position, height, angle_offset);
            angle_offset = (angle_offset[0], yaw, angle_offset[2]);
            level.chopper_gunner vehicle::function_3f76e204(startnode, position, self.angles, height, angle_offset, var_77e38a57);
            var_e31d6cb1 = position;
        } else {
            position = self.origin;
            clampdistance = isdefined(level.var_e8fd1435) ? level.var_e8fd1435 : 0;
            /#
                var_9972a46c = getdvarint(#"hash_3214d6c00531a24f", 0);
                if (var_9972a46c) {
                    clampdistance = var_9972a46c;
                }
            #/
            if (clampdistance) {
                var_ceaada96 = distance2d(position, level.mapcenter);
                if (var_ceaada96 > clampdistance) {
                    tocenter = vectornormalize(level.mapcenter - position);
                    tocenter = (tocenter[0], tocenter[1], 0);
                    var_a338f16a = isdefined(level.var_782b91f2) ? level.var_782b91f2 : 1;
                    /#
                        var_bd2c37fd = getdvarint(#"hash_11189a015da61a14", 0);
                        if (var_bd2c37fd) {
                            var_a338f16a = var_bd2c37fd;
                        }
                    #/
                    position += vectorscale(tocenter, var_ceaada96 * var_a338f16a);
                }
            }
            trace = bullettrace(position + (0, 0, 10000), position - (0, 0, 10000), 0, undefined);
            targetpoint = trace[#"fraction"] > 1 ? (position[0], position[1], 0) : trace[#"position"];
            var_b0490eb9 = getheliheightlockheight(position);
            groundheight = targetpoint[2];
            height = groundheight + (var_b0490eb9 - groundheight) * bundle.var_ff73e08c;
            pivot = struct::get("chopper_gunner_pivot", "targetname");
            yaw = function_26e7fb55(position, var_b0490eb9, self.angles);
            location = {#origin:position, #yaw:yaw};
            level.chopper_gunner vehicle::function_bb9b43a9(startnode, pivot.origin, pivot.angles, location, height);
            var_e31d6cb1 = position;
        }
    } else {
        var_e31d6cb1 = level.mapcenter;
    }
    /#
        heightoverride = getdvarint(#"hash_4536100039d07f70", 0);
        if (heightoverride > 0) {
            level.chopper_gunner pathmove(startnode, (startnode.origin[0], startnode.origin[1], heightoverride), startnode.angles);
        }
    #/
    level.chopper_gunner thread vehicle::get_on_and_go_path(startnode);
    level.chopper_gunner thread function_696b3380();
    level.chopper_gunner killstreakrules::function_2e6ff61a("chopper_gunner", killstreak_id, {#origin:var_e31d6cb1, #team:level.chopper_gunner.team});
    if (level.gameended === 1) {
        return 0;
    }
    result = self function_dede0607(1, killstreaktype);
    return result;
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 3, eflags: 0x6 linked
// Checksum 0x36dbd046, Offset: 0x16c8
// Size: 0x1b8
function private function_26e7fb55(var_d44b8c3e, var_1838351, startangles) {
    startforward = anglestoforward(startangles);
    startforward = (startforward[0], startforward[1], 0);
    var_51cabd75 = 180 / 30;
    var_c8e01926 = undefined;
    var_37db735d = [];
    var_51c6fb78 = 0;
    forward = startforward;
    angles = startangles;
    var_f4f791a2 = startangles[1];
    while (var_51c6fb78 < var_51cabd75) {
        var_59a518e1 = [];
        var_90aa61b = var_d44b8c3e + vectorscale(forward, -24000);
        var_b0490eb9 = getheliheightlockheight(var_90aa61b);
        var_35637e22 = var_b0490eb9 - var_1838351;
        if (var_35637e22 < 2000) {
            return angles[1];
        }
        if (!isdefined(var_c8e01926) || var_35637e22 < var_c8e01926) {
            var_c8e01926 = var_35637e22;
            var_f4f791a2 = angles[1];
        }
        angles += (0, 30, 0);
        forward = anglestoforward(angles);
        var_51c6fb78++;
        waitframe(1);
    }
    return var_f4f791a2;
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 0, eflags: 0x2 linked
// Checksum 0x6a92c761, Offset: 0x1888
// Size: 0x142
function function_696b3380() {
    self endon(#"death");
    var_c6ac5940 = 1;
    while (true) {
        if (!var_c6ac5940 && randomint(100) < 10) {
            offsettime = 0.5;
            self pathvariableoffset((0, 0, 90), offsettime);
            wait(offsettime - 0.1);
            var_c6ac5940 = 1;
            continue;
        }
        offsettime = randomfloatrange(1, 3);
        var_fbe7ba4a = randomintrange(0, 30);
        var_24962759 = randomintrange(0, 50);
        self pathvariableoffset((0, var_fbe7ba4a, var_24962759), offsettime);
        var_c6ac5940 = 0;
        wait(offsettime * 2);
    }
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 2, eflags: 0x2 linked
// Checksum 0x9dbb998, Offset: 0x19d8
// Size: 0x5b8
function function_dede0607(*isowner, killstreaktype) {
    assert(isplayer(self));
    choppergunner = level.chopper_gunner;
    self forcestreambundle(#"chopper_gunner_door_open");
    streamermodelhint(choppergunner.model, 7);
    self util::setusingremote("chopper_gunner");
    result = self killstreaks::init_ride_killstreak("chopper_gunner");
    if (result != "success") {
        if (result != "disconnect") {
            self killstreaks::clear_using_remote();
            killstreakslot = self killstreaks::function_a2c375bb(killstreaktype);
            self killstreaks::function_a831f92c(killstreakslot, 0, 0);
        }
        choppergunner.failed2enter = 1;
        choppergunner function_71c46904(0);
        choppergunner function_f1d43cb2();
        return false;
    }
    if (isdefined(level.var_80f71aee)) {
        self [[ level.var_80f71aee ]]();
    }
    self.var_5c5fca5 = 1;
    bundle = killstreaks::get_script_bundle("chopper_gunner");
    assert(isdefined(bundle));
    choppergunner clientfield::set("" + #"hash_4ddf67f7aa0f6884", 1);
    choppergunner thread scene::play(#"chopper_gunner_door_open");
    choppergunner setanim(#"hash_7483c325182bab52");
    var_df4a5052 = choppergunner waittilltimeout(getanimlength(#"hash_7483c325182bab52") - float(function_60d95f53()) / 1000, #"hash_623a20b6b2608171");
    choppergunner clearanim(#"hash_7483c325182bab52", 0.2);
    choppergunner clientfield::set("" + #"hash_4ddf67f7aa0f6884", 0);
    if (var_df4a5052._notify == #"hash_623a20b6b2608171") {
        choppergunner thread scene::stop(#"chopper_gunner_door_open");
        if (sessionmodeiszombiesgame()) {
            choppergunner clientfield::set("" + #"hash_164696e86d29988d", 1);
        }
    }
    if (!isdefined(self) || var_df4a5052._notify != #"timeout") {
        function_cf58dcdd();
        return false;
    }
    choppergunner usevehicle(self, 2);
    choppergunner.usage[self.entnum] = 1;
    choppergunner thread audio::sndupdatevehiclecontext(1);
    choppergunner thread vehicle::monitor_missiles_locked_on_to_me(self);
    if (choppergunner.killstreak_timer_started) {
        self vehicle::set_vehicle_drivable_time(choppergunner.killstreak_duration, choppergunner.killstreak_end_time);
    } else {
        duration = isdefined(bundle.ksduration) ? bundle.ksduration : 60000;
        self vehicle::set_vehicle_drivable_time(duration, gettime() + duration);
    }
    if (!is_true(level.var_f717967)) {
        choppergunner thread watchplayerexitrequestthread(self);
    }
    self thread watchplayerteamchangethread(choppergunner);
    self setmodellodbias(isdefined(level.mothership_lod_bias) ? level.mothership_lod_bias : 8);
    self givededicatedshadow(choppergunner);
    self thread function_9bdafd36();
    return true;
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 1, eflags: 0x6 linked
// Checksum 0x3ae32b3c, Offset: 0x1f98
// Size: 0x82
function private function_9bdafd36(var_8d7be67c = 1.5) {
    self endon(#"disconnect", #"gunner_left");
    wait(var_8d7be67c);
    self.var_49f5e483 = self util::create_streamer_hint(self.origin, self.angles, 0.5, undefined, 0, 0);
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 1, eflags: 0x2 linked
// Checksum 0x6653ed66, Offset: 0x2028
// Size: 0xae
function function_294e90d4(ents) {
    ents[#"gunner"] hidefromplayer(level.chopper_gunner.owner);
    ents[#"fakearms"] hide();
    ents[#"fakearms"] showtoplayer(level.chopper_gunner.owner);
    level.chopper_gunner.gunner = ents[#"gunner"];
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 1, eflags: 0x2 linked
// Checksum 0x8b187581, Offset: 0x20e0
// Size: 0x34
function function_4e4267e0(ents) {
    ents[#"gunner"] linkto(level.chopper_gunner);
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 0, eflags: 0x2 linked
// Checksum 0x2c2e13bc, Offset: 0x2120
// Size: 0x4c
function init_shared() {
    callback::on_connect(&onplayerconnect);
    level.chopper_gunner = undefined;
    if (!isdefined(level.var_e8fd1435)) {
        level.var_e8fd1435 = 5000;
    }
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 0, eflags: 0x2 linked
// Checksum 0x18ef0ed4, Offset: 0x2178
// Size: 0x2a
function onplayerconnect() {
    if (!isdefined(self.entnum)) {
        self.entnum = self getentitynumber();
    }
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 1, eflags: 0x2 linked
// Checksum 0xd03665e8, Offset: 0x21b0
// Size: 0x150
function activatemaingunner(killstreaktype) {
    attempts = 0;
    while (isdefined(level.chopper_gunner)) {
        if (!self killstreakrules::iskillstreakallowed("chopper_gunner", self.team)) {
            return 0;
        }
        if (isdefined(level.var_4cc7833a[#"chopper_gunner"])) {
            if (!self [[ level.var_4cc7833a[#"chopper_gunner"] ]]()) {
                return 0;
            }
        }
        attempts++;
        if (attempts > 50) {
            return 0;
        }
        wait(0.1);
    }
    self val::set(#"hash_183e74582795a108", "freezecontrols");
    result = self [[ level.var_2d4792e7 ]](killstreaktype);
    self val::reset(#"hash_183e74582795a108", "freezecontrols");
    if (level.gameended) {
        return 1;
    }
    if (!isdefined(result)) {
        return 0;
    }
    return result;
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 1, eflags: 0x2 linked
// Checksum 0x379e6cb1, Offset: 0x2308
// Size: 0x70
function function_71c46904(var_2921b547) {
    if (!isdefined(self)) {
        return;
    }
    if (self.var_957d409b === 1) {
        return;
    }
    profilestart();
    killstreakrules::killstreakstop(self.killstreaktype, self.originalteam, self.killstreak_id, var_2921b547);
    self.var_957d409b = 1;
    level.chopper_gunner = undefined;
    profilestop();
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 0, eflags: 0x2 linked
// Checksum 0x4d9ef5f7, Offset: 0x2380
// Size: 0x34
function function_31d18ab9() {
    self endon(#"death");
    wait(5);
    self function_71c46904();
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 1, eflags: 0x2 linked
// Checksum 0xc6588fdc, Offset: 0x23c0
// Size: 0xc4
function function_f1d43cb2(doexplosion) {
    if (is_true(doexplosion)) {
        self.var_f91f1564 = 1;
        self function_71c46904();
        function_cf58dcdd(self.owner, 0);
        self helicopter::function_e1058a3e();
        self notify(#"crash_done");
    }
    assert(self.var_957d409b === 1);
    self function_bc344300();
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 0, eflags: 0x2 linked
// Checksum 0xf2156ee1, Offset: 0x2490
// Size: 0x84
function function_bc344300() {
    if (isdefined(self.flare_ent)) {
        self.flare_ent delete();
    }
    if (isdefined(self.gunner)) {
        self.gunner delete();
    }
    self helicopter::function_711c140b();
    self deletedelay();
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 0, eflags: 0x2 linked
// Checksum 0xfcc1c4d6, Offset: 0x2520
// Size: 0x6c
function ontimeoutcallback() {
    if (!is_true(level.var_43da6545) && isdefined(level.chopper_gunner) && isdefined(level.chopper_gunner.owner)) {
        function_cf58dcdd(level.chopper_gunner.owner);
    }
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 0, eflags: 0x2 linked
// Checksum 0x11234139, Offset: 0x2598
// Size: 0x34
function ontimecheck() {
    self namespace_f9b02f80::play_pilot_dialog_on_owner("timecheck", "chopper_gunner", self.killstreak_id);
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 2, eflags: 0x2 linked
// Checksum 0xcb28450, Offset: 0x25d8
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

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 1, eflags: 0x2 linked
// Checksum 0xc4c15fd4, Offset: 0x2658
// Size: 0x104
function watchplayerteamchangethread(choppergunner) {
    choppergunner notify(#"hash_1c0d4b0d44e3517");
    choppergunner endon(#"hash_1c0d4b0d44e3517", #"death");
    assert(isplayer(self));
    player = self;
    player endon(#"gunner_left");
    player waittill(#"joined_team", #"disconnect", #"joined_spectators");
    ownerleft = choppergunner.ownerentnum == player.entnum;
    level thread function_cf58dcdd(player);
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 1, eflags: 0x2 linked
// Checksum 0xfc74a847, Offset: 0x2768
// Size: 0x1f2
function watchplayerexitrequestthread(player) {
    player notify(#"watchplayerexitrequestthread_singleton");
    player endon(#"watchplayerexitrequestthread_singleton");
    assert(isplayer(player));
    level endon(#"game_ended");
    player endon(#"disconnect", #"gunner_left");
    self endon(#"death");
    var_f6263fe2 = getdvarfloat(#"hash_2ed1b7031dae0df7", 0.5);
    while (true) {
        timeused = 0;
        player function_7deaa2a4(timeused);
        player function_9d62ff6c();
        while (player usebuttonpressed() && player killstreaks::function_59e2c378()) {
            timeused += 0.05;
            player function_7deaa2a4(timeused / var_f6263fe2);
            if (timeused > var_f6263fe2) {
                self namespace_f9b02f80::play_pilot_dialog_on_owner("remoteOperatorRemoved", "chopper_gunner", self.killstreak_id);
                player thread function_cf58dcdd(player);
                return;
            }
            waitframe(1);
        }
        waitframe(1);
    }
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 3, eflags: 0x2 linked
// Checksum 0xb09d4d3a, Offset: 0x2968
// Size: 0x1f4
function function_bfb33872(choppergunner, eattacker, weapon) {
    if (target_istarget(choppergunner)) {
        target_remove(choppergunner);
    }
    if (issentient(choppergunner)) {
        choppergunner function_60d50ea4();
    }
    choppergunner.shuttingdown = 1;
    eattacker = self [[ level.figure_out_attacker ]](eattacker);
    if (isdefined(eattacker) && (!isdefined(choppergunner.owner) || choppergunner.owner util::isenemyplayer(eattacker))) {
        luinotifyevent(#"player_callout", 2, #"hash_5f3bf967cd47a97f", eattacker.entnum);
        challenges::destroyedaircraft(eattacker, weapon, 1, choppergunner, 1);
        eattacker challenges::addflyswatterstat(weapon, choppergunner);
        choppergunner killstreaks::function_73566ec7(eattacker, weapon, choppergunner.owner);
        choppergunner namespace_f9b02f80::play_destroyed_dialog_on_owner("chopper_gunner", choppergunner.killstreak_id);
        eattacker battlechatter::function_eebf94f6("chopper_gunner");
        eattacker stats::function_e24eec31(weapon, #"hash_3f3d8a93c372c67d", 1);
    }
    choppergunner thread function_80ae938e();
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 6, eflags: 0x2 linked
// Checksum 0x183a8ebd, Offset: 0x2b68
// Size: 0x4c
function function_aecfdb77(*brokennotify, eattacker, weapon, *pieceindex, *dir, *mod) {
    function_bfb33872(self, dir, mod);
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 2, eflags: 0x2 linked
// Checksum 0x26e49d41, Offset: 0x2bc0
// Size: 0x350
function function_cf58dcdd(player, var_a6648780 = 1) {
    profilestart();
    if (isbot(player)) {
        player ai::set_behavior_attribute("control", "commander");
    }
    if (isdefined(player)) {
        player vehicle::stop_monitor_missiles_locked_on_to_me();
        if (is_true(player.usingvehicle)) {
            player unlink();
        }
        player setmodellodbias(0);
        player givededicatedshadow(player);
        player function_66b6e720(#"chopper_gunner_door_open");
        player notify(#"gunner_left");
        if (isdefined(player.var_49f5e483)) {
            player.var_49f5e483 thread util::delayed_delete(3);
        }
        player.var_5c5fca5 = undefined;
        player killstreaks::clear_using_remote();
        player clientfield::set_to_player("" + #"hash_7c907650b14abbbe", 0);
        if (isdefined(level.var_399dc69a)) {
            player [[ level.var_399dc69a ]]();
        }
    }
    if (!isdefined(level.chopper_gunner) || level.chopper_gunner.completely_shutdown === 1) {
        profilestop();
        return;
    }
    level.chopper_gunner clientfield::set("vehicletransition", 0);
    level.chopper_gunner.shuttingdown = 1;
    level.chopper_gunner notify(#"gunner_left");
    level.chopper_gunner.hardpointtype = "chopper_gunner";
    level.chopper_gunner thread function_31d18ab9();
    level.chopper_gunner vehicle::get_off_path();
    level.chopper_gunner thread audio::sndupdatevehiclecontext(0);
    if (var_a6648780) {
        planedir = anglestoforward(level.chopper_gunner.angles);
        var_15f570c1 = level.chopper_gunner.origin + vectorscale(planedir, 30000);
        level.chopper_gunner thread helicopter::heli_leave(var_15f570c1, 1);
    }
    level.chopper_gunner.completely_shutdown = 1;
    level.chopper_gunner.shuttingdown = 0;
    profilestop();
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 0, eflags: 0x2 linked
// Checksum 0xcabe0ed5, Offset: 0x2f18
// Size: 0xc4
function function_ece62582() {
    if (isdefined(self) && isdefined(self.owner)) {
        org = self gettagorigin("tag_barrel");
        magnitude = 0.3;
        duration = 2;
        radius = 500;
        v_pos = self.origin;
        earthquake(magnitude, duration, org, 500);
        self playsound(#"hash_5314ffef2464b607");
    }
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 15, eflags: 0x2 linked
// Checksum 0x985ba02c, Offset: 0x2fe8
// Size: 0x714
function function_77784598(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, vpoint, vdir, shitloc, *vdamageorigin, psoffsettime, damagefromunderneath, modelindex, partname, *vsurfacenormal) {
    if (vpoint == "MOD_TRIGGER_HURT") {
        return 0;
    }
    if (self.shuttingdown) {
        return 0;
    }
    smeansofdeath = self killstreaks::ondamageperweapon("chopper_gunner", idflags, smeansofdeath, weapon, vpoint, vdir, self.maxhealth, undefined, self.maxhealth * 0.4, undefined, 0, undefined, 1, 1);
    if (smeansofdeath == 0) {
        return 0;
    }
    handleasrocketdamage = vpoint == "MOD_PROJECTILE" || vpoint == "MOD_EXPLOSIVE";
    if (handleasrocketdamage) {
        self function_ece62582();
        self playsound(#"hash_ddcd9d25e056016");
    }
    var_902cbab5 = self.health - smeansofdeath;
    if (self.damagestate < 1 && var_902cbab5 <= self.maxhealth * 0.75) {
        var_5aca61fb = "damaged";
        self.damagestate = 1;
        if (isdefined(self.var_5efaff3e)) {
            self clientfield::set("" + #"hash_46646871455cab15", 1);
        }
    }
    if (self.damagestate < 2 && self.health <= self.maxhealth * 0.35) {
        var_5aca61fb = "damaged1";
        self.damagestate = 2;
        if (isdefined(self.var_ba5009c3)) {
            self clientfield::set("" + #"hash_46646871455cab15", 2);
        }
    }
    if (isdefined(var_5aca61fb)) {
        self namespace_f9b02f80::play_pilot_dialog_on_owner(var_5aca61fb, "chopper_gunner", self.killstreak_id);
    }
    if (self.health > 0 && var_902cbab5 <= 0 && !self.shuttingdown) {
        self.shuttingdown = 1;
        self notify(#"hash_410e7050279b0b25");
        if (!sessionmodeiszombiesgame() && !isdefined(self.destroyscoreeventgiven) && isdefined(idflags) && (!isdefined(self.owner) || self.owner util::isenemyplayer(idflags))) {
            idflags = self [[ level.figure_out_attacker ]](idflags);
            luinotifyevent(#"player_callout", 2, #"hash_5f3bf967cd47a97f", idflags.entnum);
            self namespace_f9b02f80::play_destroyed_dialog_on_owner("chopper_gunner", self.killstreak_id);
            idflags battlechatter::function_eebf94f6("chopper_gunner");
            challenges::destroyedaircraft(idflags, vdir, 1, self, 1);
            idflags challenges::addflyswatterstat(vdir, self);
            idflags stats::function_e24eec31(vdir, #"hash_3f3d8a93c372c67d", 1);
            self.destroyscoreeventgiven = 1;
        }
        if (isdefined(self.owner)) {
            if (isdefined(vdir)) {
                self.owner killstreaks::function_4aad9803("chopper_gunner", self.killstreak_id, vdir);
            }
            self.owner killstreaks::function_e9873ef7("chopper_gunner", self.killstreak_id, #"hash_47e685e10dcee57");
        }
        if (isdefined(idamage) && idamage getentitytype() == 4) {
            bundle = killstreaks::get_script_bundle("chopper_gunner");
            if (isdefined(bundle.var_888a5ff7) && isdefined(shitloc)) {
                var_74d40edb = idamage getvelocity();
                if (lengthsquared(var_74d40edb) > sqr(50)) {
                    var_29edfc10 = vectornormalize(var_74d40edb);
                    playfx(bundle.var_888a5ff7, shitloc, var_29edfc10, undefined, undefined, self.team);
                }
            }
        }
        self.var_d02ddb8e = vdir;
        params = {#einflictor:idamage, #eattacker:idflags, #idamage:smeansofdeath, #idflags:weapon, #smeansofdeath:vpoint, #weapon:vdir, #vpoint:shitloc, #vdir:vdamageorigin, #shitloc:psoffsettime, #psoffsettime:damagefromunderneath, #damagefromunderneath:modelindex, #modelindex:partname, #partname:vsurfacenormal};
        self callback::callback(#"on_vehicle_damage", params);
        self thread function_80ae938e(shitloc, vdamageorigin);
        return 0;
    }
    return smeansofdeath;
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 2, eflags: 0x2 linked
// Checksum 0xa7179100, Offset: 0x3708
// Size: 0x114
function function_80ae938e(point, dir) {
    if (self.leave_by_damage_initiated === 1) {
        return;
    }
    self.leave_by_damage_initiated = 1;
    if (target_istarget(self)) {
        target_remove(self);
    }
    if (issentient(self)) {
        self function_60d50ea4();
    }
    self thread vehicle_death::helicopter_crash(point, dir, 2.75);
    self clientfield::set("" + #"hash_6cf1a3b26118d892", 1);
    self waittilltimeout(2.25, #"death");
    function_cf58dcdd(self.owner, 0);
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 1, eflags: 0x2 linked
// Checksum 0x2611a6e7, Offset: 0x3828
// Size: 0x144
function function_53d3b37a(bundle) {
    if (isdefined(level.var_fcad39fb)) {
        self.killstreak_duration = level.var_fcad39fb;
    } else {
        self.killstreak_duration = isdefined(bundle.ksduration) ? bundle.ksduration : 60000;
    }
    self.killstreak_end_time = gettime() + self.killstreak_duration;
    self.killstreakendtime = int(self.killstreak_end_time);
    self thread killstreaks::waitfortimeout("chopper_gunner", self.killstreak_duration, &ontimeoutcallback, "delete", "death");
    self thread killstreaks::waitfortimecheck(self.killstreak_duration / 2, &ontimecheck, "delete", "death", "gunner_left");
    self.killstreak_timer_started = 1;
    self updatedrivabletimeforalloccupants(self.killstreak_duration, self.killstreak_end_time);
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 2, eflags: 0x2 linked
// Checksum 0x6d4604e, Offset: 0x3978
// Size: 0x3c
function updatedrivabletimeforalloccupants(duration_ms, end_time_ms) {
    if (isdefined(self.owner)) {
        self.owner vehicle::set_vehicle_drivable_time(duration_ms, end_time_ms);
    }
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 0, eflags: 0x2 linked
// Checksum 0xac2a5698, Offset: 0x39c0
// Size: 0x64
function function_631f02c5() {
    self endon(#"killed");
    self.var_a1719a05 = (isdefined(self.var_a1719a05) ? self.var_a1719a05 : 0) + 1;
    wait(2.5);
    if (!isdefined(self)) {
        return;
    }
    self function_568f6426();
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 0, eflags: 0x2 linked
// Checksum 0xb10bd076, Offset: 0x3a30
// Size: 0x10c
function function_568f6426() {
    switch (self.var_a1719a05) {
    case 0:
        break;
    case 1:
        dialogkey = "kill1";
        break;
    case 2:
        dialogkey = "kill2";
        break;
    case 3:
        dialogkey = "kill3";
        break;
    default:
        dialogkey = "killMultiple";
        break;
    }
    self.var_a1719a05 = 0;
    if (isdefined(dialogkey) && self.owner.killstreakdialogqueue.size === 0) {
        self namespace_f9b02f80::play_pilot_dialog_on_owner(dialogkey, "chopper_gunner", self.killstreak_id);
    }
}

