// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\battlechatter.gsc;
#using scripts\weapons\deployable.gsc;
#using scripts\core_common\visionset_mgr_shared.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\vehicles\rcxd.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\vehicle_death_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\oob.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\killstreaks\remote_weapons.gsc;
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\killstreaks\killstreak_hacking.gsc;
#using script_4721de209091b1a6;
#using scripts\killstreaks\killstreak_bundles.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\audio_shared.gsc;
#using scripts\abilities\ability_player.gsc;

#namespace killstreak_vehicle;

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x0
// Checksum 0xbc404562, Offset: 0x270
// Size: 0x194
function init_killstreak(bundle) {
    killstreaks::register_bundle(bundle, &activate_vehicle);
    remote_weapons::registerremoteweapon(bundle.ksweapon.name, #"", &function_c9aa9ee5, &function_8cb72281, 0);
    remote_weapons::registerremoteweapon(bundle.var_fc0c8eae.name, #"", &function_c9aa9ee5, &function_8cb72281, 0);
    vehicle::add_main_callback(bundle.ksvehicle, &init_vehicle);
    deployable::register_deployable(bundle.ksweapon, undefined, undefined);
    deployable::register_deployable(bundle.var_fc0c8eae, undefined, undefined);
    level.killstreaks[bundle.var_d3413870].var_b6c17aab = 1;
    if (isdefined(bundle.var_486124e6)) {
        visionset_mgr::register_info("overlay", bundle.var_486124e6, 1, 1, 1, 1);
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x0
// Checksum 0x18e48469, Offset: 0x410
// Size: 0x134
function init_vehicle(var_19e1140) {
    vehicle = self;
    vehicle clientfield::set("enemyvehicle", 1);
    vehicle clientfield::set("scorestreakActive", 1);
    vehicle.allowfriendlyfiredamageoverride.vehicle = &function_e9da8b7d;
    vehicle enableaimassist();
    vehicle setdrawinfrared(1);
    vehicle.delete_on_death.vehicle = 1;
    vehicle.death_enter_cb.vehicle = &function_3c6cec8b;
    vehicle.disableremoteweaponswitch.vehicle = 1;
    vehicle.overridevehicledamage.vehicle = &on_damage;
    vehicle.overridevehiclekilled.vehicle = &on_death;
    vehicle.watch_remote_weapon_death.vehicle = 1;
    vehicle.watch_remote_weapon_death_duration.vehicle = 0.3;
    vehicle.var_19e1140 = var_19e1140;
    vehicle util::make_sentient();
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 0, eflags: 0x0
// Checksum 0xc460546c, Offset: 0x550
// Size: 0xda
function function_3c6cec8b() {
    remote_controlled = is_true(self.control_initiated) || is_true(self.controlled);
    if (remote_controlled) {
        notifystring = undefined;
        notifystring = self waittill(#"remote_weapon_end", #"shutdown");
        if (notifystring._notify == "remote_weapon_end") {
            self waittill(#"shutdown");
        } else {
            self waittill(#"remote_weapon_end");
        }
    } else {
        self waittill(#"shutdown");
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x0
// Checksum 0x94fc9819, Offset: 0x638
// Size: 0xa4
function function_aba709c3(*hacker) {
    vehicle = self;
    vehicle clientfield::set("toggle_lights", 1);
    vehicle.owner unlink();
    vehicle clientfield::set("vehicletransition", 0);
    vehicle.owner killstreaks::clear_using_remote();
    vehicle makevehicleunusable();
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x0
// Checksum 0xb9b81be2, Offset: 0x6e8
// Size: 0xdc
function function_2df6e3bf(hacker) {
    killstreak_type = level.var_8997324c[self];
    bundle = level.killstreaks[killstreak_type].script_bundle;
    weapon = level.killstreaks[killstreak_type].weapon;
    vehicle = self;
    hacker remote_weapons::useremoteweapon(vehicle, weapon, 1, 0);
    vehicle makevehicleunusable();
    vehicle killstreaks::set_killstreak_delay_killcam(killstreak_type);
    vehicle killstreak_hacking::set_vehicle_drivable_time_starting_now(vehicle);
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x0
// Checksum 0x899a9480, Offset: 0x7d0
// Size: 0x4c
function function_fff56140(owner) {
    self endon(#"shutdown");
    self killstreaks::function_fff56140(owner, &function_822e1f64);
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 2, eflags: 0x0
// Checksum 0xb7f7364f, Offset: 0x828
// Size: 0x2c
function function_5e2ea3ef(owner, *ishacked) {
    self thread function_fff56140(ishacked);
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x0
// Checksum 0x397cb147, Offset: 0x860
// Size: 0x7e
function can_activate(placement) {
    if (!isdefined(placement)) {
        return 0;
    }
    if (!self isonground()) {
        return 0;
    }
    if (self util::isusingremote()) {
        return 0;
    }
    if (killstreaks::is_interacting_with_object()) {
        return 0;
    }
    if (self oob::istouchinganyoobtrigger()) {
        return 0;
    }
    return 1;
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x0
// Checksum 0x62d6fd34, Offset: 0x8e8
// Size: 0x508
function activate_vehicle(type) {
    /#
        assert(isplayer(self));
    #/
    player = self;
    if (!player killstreakrules::iskillstreakallowed(type, player.team)) {
        return 0;
    }
    if (player usebuttonpressed()) {
        return 0;
    }
    bundle = level.killstreaks[type].script_bundle;
    weapon = level.killstreaks[type].weapon;
    if (isdefined(weapon) && is_true(weapon.deployable) && !deployable::function_b3d993e9(weapon, 1)) {
        return 0;
    }
    killstreak_id = player killstreakrules::killstreakstart(type, player.team, 0, 1);
    if (killstreak_id == -1) {
        return 0;
    }
    vehicle = spawnvehicle(bundle.ksvehicle, player.var_b8878ba9, player.var_ddc03e10, type, 0, player);
    vehicle setowner(player);
    vehicle deployable::function_dd266e08(player);
    vehicle killstreaks::configure_team(type, killstreak_id, player, "small_vehicle", undefined, &function_5e2ea3ef);
    vehicle killstreak_hacking::enable_hacking(type, &function_aba709c3, &function_2df6e3bf);
    vehicle.damagetaken.vehicle = 0;
    vehicle.abandoned.vehicle = 0;
    vehicle.killstreak_id = killstreak_id;
    vehicle.activatingkillstreak.vehicle = 1;
    vehicle ghost();
    vehicle thread watch_shutdown(player, type);
    vehicle.health.vehicle = bundle.kshealth;
    vehicle.maxhealth.vehicle = bundle.kshealth;
    vehicle.hackedhealth.vehicle = bundle.kshackedhealth;
    vehicle.hackedhealthupdatecallback.vehicle = &function_f07460c5;
    vehicle.ignore_vehicle_underneath_splash_scalar.vehicle = 1;
    if (isdefined(weapon)) {
        vehicle setweapon(weapon);
        vehicle.weapon = weapon;
    }
    vehicle killstreak_bundles::spawned(bundle);
    self thread namespace_f9b02f80::play_killstreak_start_dialog(type, self.team, killstreak_id);
    self stats::function_e24eec31(weapon, #"used", 1);
    if (isdefined(vehicle.var_19e1140)) {
        vehicle [[ vehicle.var_19e1140 ]]();
    }
    remote_weapons::useremoteweapon(vehicle, weapon.name, 1, 0);
    if (!isdefined(player) || !isalive(player) || is_true(player.laststand)) {
        if (isdefined(vehicle)) {
            vehicle notify(#"remote_weapon_shutdown");
            vehicle function_1f46c433();
        }
        return 0;
    }
    if (!isdefined(vehicle)) {
        return 0;
    }
    vehicle show();
    vehicle.activatingkillstreak.vehicle = 0;
    target_set(vehicle);
    ability_player::function_c22f319e(weapon);
    vehicle thread watch_game_ended();
    vehicle.var_99178ae6.vehicle = player util::create_streamer_hint(player.origin, player.angles, 1, undefined, 0, 0);
    vehicle waittill(#"death");
    vehicle function_11fa7e00(type, vehicle.originalteam, killstreak_id);
    return 1;
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 4, eflags: 0x0
// Checksum 0xba42784e, Offset: 0xdf8
// Size: 0x62
function function_11fa7e00(killstreak_type, original_team, killstreak_id, start_cooldown) {
    if (self.var_b8f3aeed !== 1) {
        self killstreakrules::killstreakstop(killstreak_type, original_team, killstreak_id, start_cooldown);
        self.var_b8f3aeed = 1;
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x0
// Checksum 0x644c6e86, Offset: 0xe68
// Size: 0x3e
function function_f07460c5(*hacker) {
    vehicle = self;
    if (vehicle.health > vehicle.hackedhealth) {
        vehicle.health.vehicle = vehicle.hackedhealth;
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x0
// Checksum 0x60468e1d, Offset: 0xeb0
// Size: 0x1cc
function function_c9aa9ee5(vehicle) {
    player = self;
    vehicle usevehicle(player, 0);
    vehicle clientfield::set("vehicletransition", 1);
    vehicle thread audio::sndupdatevehiclecontext(1);
    vehicle thread watch_timeout();
    vehicle thread function_2cee4434();
    vehicle thread function_22528515();
    vehicle thread watch_water();
    player vehicle::set_vehicle_drivable_time_starting_now(int(vehicle.var_22a05c26.ksduration));
    if (isdefined(vehicle.var_22a05c26.var_486124e6)) {
        visionset_mgr::activate("overlay", vehicle.var_22a05c26.var_486124e6, player, 1, 90000, 1);
    }
    if (isbot(self)) {
        if (isdefined(vehicle.killstreaktype) && (vehicle.killstreaktype == "recon_car" || vehicle.killstreaktype == "inventory_recon_car")) {
            self thread function_88d23aaa(vehicle);
        }
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x0
// Checksum 0xdebbe792, Offset: 0x1088
// Size: 0x66
function function_88d23aaa(vehicle) {
    var_8eaf8b3c = vehicle.overridevehiclekilled;
    vehicle thread rcxd::function_91ea9492();
    vehicle vehicle_ai::get_state_callbacks("death").update_func = undefined;
    vehicle.overridevehiclekilled = var_8eaf8b3c;
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 2, eflags: 0x0
// Checksum 0xba7a8575, Offset: 0x10f8
// Size: 0xe4
function function_8cb72281(vehicle, exitrequestedbyowner) {
    if (exitrequestedbyowner == 0) {
        vehicle thread audio::sndupdatevehiclecontext(0);
    }
    if (isdefined(vehicle.var_22a05c26.var_486124e6)) {
        visionset_mgr::deactivate("overlay", vehicle.var_22a05c26.var_486124e6, vehicle.owner);
    }
    vehicle clientfield::set("vehicletransition", 0);
    function_68a07849(vehicle.weapon, self.remoteowner);
    if (exitrequestedbyowner == 0) {
        vehicle function_1f46c433();
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 0, eflags: 0x0
// Checksum 0xf13fa633, Offset: 0x11e8
// Size: 0x12c
function function_2cee4434() {
    vehicle = self;
    vehicle endon(#"shutdown", #"death");
    while (is_true(level.var_46f4865d)) {
        waitframe(1);
    }
    while (vehicle.activatingkillstreak) {
        waitframe(1);
    }
    while (!(isdefined(vehicle.owner) && (vehicle.owner attackbuttonpressed() || vehicle.owner vehicleattackbuttonpressed()) && vehicle.owner killstreaks::function_59e2c378())) {
        waitframe(1);
    }
    if (isdefined(vehicle.var_62b033f0)) {
        vehicle thread [[ vehicle.var_62b033f0 ]]();
    }
    vehicle function_1f46c433();
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 0, eflags: 0x0
// Checksum 0xb50b5c33, Offset: 0x1320
// Size: 0xda
function watch_exit() {
    vehicle = self;
    vehicle endon(#"shutdown", #"death");
    while (1) {
        timeused = 0;
        while (vehicle.owner usebuttonpressed() && vehicle.owner killstreaks::function_59e2c378()) {
            timeused = timeused + level.var_9fee970c;
            if (timeused >= 250) {
                vehicle function_1f46c433();
                return;
            }
            waitframe(1);
        }
        waitframe(1);
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 0, eflags: 0x0
// Checksum 0x3ab55049, Offset: 0x1408
// Size: 0xd4
function function_e99d09a3() {
    self endon(#"shutdown");
    inwater = 0;
    while (!inwater) {
        wait(0.5);
        trace = physicstrace(self.origin + vectorscale((0, 0, 1), 10), self.origin + vectorscale((0, 0, 1), 6), vectorscale((-1, -1, -1), 2), vectorscale((1, 1, 1), 2), self, 4);
        inwater = trace[#"fraction"] < 1;
    }
    self function_822e1f64();
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 0, eflags: 0x0
// Checksum 0xb472f1b7, Offset: 0x14e8
// Size: 0x11c
function watch_water() {
    self endon(#"shutdown");
    var_8a7edebd = isdefined(self.var_f3c54d1d) ? self.var_f3c54d1d : 10;
    inwater = 0;
    while (!inwater) {
        wait(0.5);
        depth = getwaterheight(self.origin) - self.origin[2];
        inwater = depth > var_8a7edebd;
    }
    if (isdefined(self.owner) && isdefined(self.var_22a05c26.var_d3413870)) {
        self.owner killstreaks::function_e9873ef7(self.var_22a05c26.var_d3413870, self.killstreak_id, #"hash_614e3e677f840d98");
    }
    self function_822e1f64();
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 0, eflags: 0x0
// Checksum 0x4fb1e98c, Offset: 0x1610
// Size: 0x5c
function watch_timeout() {
    vehicle = self;
    bundle = vehicle.var_22a05c26;
    vehicle thread killstreaks::waitfortimeout(bundle.var_d3413870, bundle.ksduration, &function_1f46c433, "shutdown");
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 0, eflags: 0x0
// Checksum 0xe074956b, Offset: 0x1678
// Size: 0x34
function function_822e1f64() {
    vehicle = self;
    vehicle.abandoned.vehicle = 1;
    vehicle function_1f46c433();
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 0, eflags: 0x0
// Checksum 0xf2d71917, Offset: 0x16b8
// Size: 0x28
function function_1f46c433() {
    vehicle = self;
    vehicle notify(#"shutdown");
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 2, eflags: 0x0
// Checksum 0x41fcbaa4, Offset: 0x16e8
// Size: 0x44
function function_68a07849(weapon, driver) {
    if (isdefined(driver)) {
        var_4dd90b81 = 0;
        driver ability_player::function_f2250880(weapon, var_4dd90b81);
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 2, eflags: 0x0
// Checksum 0x7a2d033b, Offset: 0x1738
// Size: 0x204
function watch_shutdown(driver, *killstreaktype) {
    vehicle = self;
    vehicle endon(#"death");
    vehicle waittill(#"shutdown");
    bundle = vehicle.var_22a05c26;
    if (isdefined(vehicle.var_99178ae6)) {
        vehicle.var_99178ae6 thread util::delayed_delete(3);
    }
    if (isdefined(vehicle.activatingkillstreak) && vehicle.activatingkillstreak) {
        vehicle notify(#"remote_weapon_shutdown");
        vehicle function_11fa7e00(bundle.var_d3413870, vehicle.originalteam, vehicle.killstreak_id, 0);
        vehicle function_1f46c433();
        vehicle function_cb48cddd();
    } else if (level.gameended === 1) {
        vehicle function_11fa7e00(bundle.var_d3413870, vehicle.originalteam, vehicle.killstreak_id);
        if (isdefined(vehicle)) {
            vehicle function_cb48cddd();
        }
    } else {
        if (isdefined(vehicle.var_c1524340)) {
            vehicle thread [[ vehicle.var_c1524340 ]]();
        } else {
            vehicle thread function_584fb7a3();
        }
        vehicle notify(#"remote_weapon_shutdown");
    }
    function_68a07849(vehicle.weapon, killstreaktype);
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 0, eflags: 0x0
// Checksum 0x1fa80eb, Offset: 0x1948
// Size: 0xec
function function_584fb7a3() {
    vehicle = self;
    vehicle endon(#"death");
    if (!is_true(vehicle.remote_weapon_end)) {
        vehicle waittill(#"remote_weapon_end", #"hash_59b25025ce93a142");
    }
    attacker = isdefined(vehicle.owner) ? vehicle.owner : undefined;
    vehicle dodamage(vehicle.health + 1, vehicle.origin + vectorscale((0, 0, 1), 10), attacker, attacker, "none", "MOD_EXPLOSIVE", 0);
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 0, eflags: 0x0
// Checksum 0x5190abfd, Offset: 0x1a40
// Size: 0xd8
function function_22528515() {
    vehicle = self;
    vehicle endon(#"shutdown");
    while (1) {
        waitresult = undefined;
        waitresult = vehicle waittill(#"touch");
        ent = waitresult.entity;
        if (isdefined(ent.classname) && (ent.classname == "trigger_hurt" || ent.classname == "trigger_out_of_bounds" && vehicle.var_a6ab9a09 !== 1)) {
            vehicle function_1f46c433();
        }
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 15, eflags: 0x0
// Checksum 0x3eabcd15, Offset: 0x1b20
// Size: 0x1ac
function on_damage(*einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, *vpoint, *vdir, *shitloc, *vdamageorigin, *psoffsettime, *damagefromunderneath, *modelindex, *partname, *vsurfacenormal) {
    if (is_true(self.activatingkillstreak)) {
        return 0;
    }
    if (!isdefined(psoffsettime) || !isdefined(self.owner) || psoffsettime != self.owner) {
        bundle = self.var_22a05c26;
        damagefromunderneath = killstreaks::ondamageperweapon(bundle.var_d3413870, psoffsettime, damagefromunderneath, modelindex, partname, vsurfacenormal, self.maxhealth, undefined, self.maxhealth * 0.4, undefined, 0, undefined, 1, 1);
    }
    if (isdefined(psoffsettime) && isdefined(psoffsettime.team) && util::function_fbce7263(psoffsettime.team, self.team)) {
        if (vsurfacenormal.isemp) {
            self.damage_on_death = 0;
            self.died_by_emp = 1;
            damagefromunderneath = self.health + 1;
        }
    }
    return damagefromunderneath;
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 8, eflags: 0x0
// Checksum 0x289f2ead, Offset: 0x1cd8
// Size: 0x2cc
function on_death(*einflictor, eattacker, *idamage, *smeansofdeath, weapon, *vdir, *shitloc, *psoffsettime) {
    vehicle = self;
    player = vehicle.owner;
    if (isdefined(player)) {
        player endon(#"disconnect", #"joined_team", #"joined_spectators");
    }
    bundle = self.var_22a05c26;
    var_7d4f75e = isdefined(vehicle.var_7d4f75e) ? vehicle.var_7d4f75e : 0;
    var_a9911aeb = bundle.var_d3413870;
    var_a8527b41 = vehicle.originalteam;
    var_ebe66d84 = vehicle.killstreak_id;
    vehicle killstreaks::function_67bc25ec();
    vehicle clientfield::set("enemyvehicle", 0);
    if (isdefined(vehicle.var_a0f50ca8)) {
        vehicle thread [[ vehicle.var_a0f50ca8 ]]();
    }
    if (isdefined(vehicle.var_99178ae6)) {
        vehicle.var_99178ae6 thread util::delayed_delete(3);
    }
    vehicle explode(shitloc, psoffsettime);
    var_2105be53 = isdefined(vehicle.var_20c65a3e) ? vehicle.var_20c65a3e : vehicle.died_by_emp === 1 ? 0.2 : 0.2;
    if (isdefined(player)) {
        player val::set(#"hash_7412aa1ce117e2a5", "freezecontrols");
        vehicle thread function_de865657(var_2105be53);
        wait(0.2);
        if (isdefined(player)) {
            player val::reset(#"hash_7412aa1ce117e2a5", "freezecontrols");
        }
    } else {
        vehicle thread function_de865657(var_2105be53);
    }
    if (isdefined(vehicle)) {
        vehicle function_1f46c433();
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 0, eflags: 0x0
// Checksum 0x97921e16, Offset: 0x1fb0
// Size: 0x64
function watch_game_ended() {
    vehicle = self;
    vehicle endon(#"death");
    level waittill(#"game_ended");
    vehicle.selfdestruct.vehicle = 1;
    vehicle function_822e1f64();
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x0
// Checksum 0xbc153eaa, Offset: 0x2020
// Size: 0x4a
function function_de865657(waittime) {
    self endon(#"death");
    wait(waittime);
    self ghost();
    self.var_4217cfcb = 1;
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 0, eflags: 0x0
// Checksum 0x35c25662, Offset: 0x2078
// Size: 0xbc
function vehicle_death() {
    self vehicle_death::death_fx();
    self thread vehicle_death::death_radius_damage();
    self thread vehicle_death::set_death_model(self.deathmodel, self.modelswapdelay);
    self vehicle::toggle_tread_fx(0);
    self vehicle::toggle_exhaust_fx(0);
    self vehicle::toggle_sounds(0);
    self vehicle::lights_off();
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 2, eflags: 0x0
// Checksum 0xe9fa6f3f, Offset: 0x2140
// Size: 0x3b0
function explode(attacker, weapon) {
    self endon(#"death");
    owner = self.owner;
    if (!isdefined(attacker) && isdefined(owner)) {
        attacker = owner;
    }
    attacker = self [[ level.figure_out_attacker ]](attacker);
    self vehicle_death();
    var_d3213f00 = 0;
    var_3906173b = isdefined(weapon) && weapon.name === "gadget_icepick";
    if (!is_true(self.abandoned) && isplayer(attacker)) {
        bundle = self.var_22a05c26;
        if (util::function_fbce7263(self.team, attacker.team)) {
            var_d3213f00 = 1;
            if (isdefined(bundle)) {
                attacker challenges::destroy_killstreak_vehicle(weapon, self, bundle.var_ebc402ca);
                self killstreaks::function_73566ec7(attacker, weapon, owner);
                luinotifyevent(#"player_callout", 2, bundle.var_cbe3d7de, attacker.entnum);
                if (isdefined(weapon) && weapon.isvalid) {
                    level.globalkillstreaksdestroyed++;
                    attacker stats::function_e24eec31(self.weapon, #"destroyed", 1);
                    attacker stats::function_e24eec31(self.weapon, #"destroyed_controlled_killstreak", 1);
                    self.owner killstreaks::function_4aad9803(bundle.var_d3413870, self.killstreak_id, weapon);
                }
                if (!var_3906173b) {
                    self namespace_f9b02f80::play_destroyed_dialog_on_owner(bundle.var_d3413870, self.killstreak_id);
                    attacker battlechatter::function_eebf94f6(bundle.var_d3413870, weapon);
                }
                self.owner killstreaks::function_e9873ef7(bundle.var_d3413870, self.killstreak_id, #"hash_47e685e10dcee57");
            }
        }
    }
    if (oob::istouchinganyoobtrigger() && !var_d3213f00 && !var_3906173b) {
        self.owner killstreaks::function_e9873ef7(bundle.var_d3413870, self.killstreak_id, #"hash_7e23b3e299f4835b");
    }
    if (isdefined(bundle) && isdefined(bundle.var_bb6c29b4) && isdefined(weapon) && weapon == getweapon(#"shock_rifle")) {
        playfx(bundle.var_bb6c29b4, self.origin);
    }
    return var_d3213f00;
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 4, eflags: 0x0
// Checksum 0x5cdd92f8, Offset: 0x24f8
// Size: 0x70
function function_e9da8b7d(einflictor, eattacker, *smeansofdeath, *weapon) {
    if (isdefined(weapon) && weapon == self.owner) {
        return 1;
    }
    if (isdefined(smeansofdeath) && smeansofdeath islinkedto(self)) {
        return 1;
    }
    return 0;
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 0, eflags: 0x0
// Checksum 0x1759254a, Offset: 0x2570
// Size: 0x76
function function_e94c2667() {
    startheight = 50;
    switch (self getstance()) {
    case #"crouch":
        startheight = 30;
        break;
    case #"prone":
        startheight = 15;
        break;
    }
    return startheight;
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 2, eflags: 0x0
// Checksum 0x455d65de, Offset: 0x25f0
// Size: 0x40e
function function_d75fbe15(origin, angles) {
    startheight = function_e94c2667();
    mins = vectorscale((-1, -1, 0), 5);
    maxs = (5, 5, 10);
    startpoints = [];
    startangles = [];
    wheelcounts = [];
    testcheck = [];
    largestcount = 0;
    largestcountindex = 0;
    testangles = [];
    testangles[0] = (0, 0, 0);
    testangles[1] = vectorscale((0, 1, 0), 20);
    testangles[2] = vectorscale((0, -1, 0), 20);
    testangles[3] = vectorscale((0, 1, 0), 45);
    testangles[4] = vectorscale((0, -1, 0), 45);
    heightoffset = 5;
    for (i = 0; i < testangles.size; i++) {
        testcheck[i] = 0;
        startangles[i] = (0, angles[1], 0);
        startpoint = origin + vectorscale(anglestoforward(startangles[i] + testangles[i]), 70);
        endpoint = startpoint - vectorscale((0, 0, 1), 100);
        startpoint = startpoint + (0, 0, startheight);
        mask = 1 & 2;
        trace = physicstrace(startpoint, endpoint, mins, maxs, self, mask);
        if (isdefined(trace[#"entity"]) && isplayer(trace[#"entity"])) {
            wheelcounts[i] = 0;
        } else {
            startpoints[i] = trace[#"position"] + (0, 0, heightoffset);
            wheelcounts[i] = function_c82e14d2(startpoints[i], startangles[i], heightoffset);
            if (positionwouldtelefrag(startpoints[i])) {
                continue;
            }
            if (largestcount < wheelcounts[i]) {
                largestcount = wheelcounts[i];
                largestcountindex = i;
            }
            if (wheelcounts[i] >= 3) {
                testcheck[i] = 1;
                if (function_b4682bd6(startpoints[i], startangles[i])) {
                    placement = spawnstruct();
                    placement.origin.placement = startpoints[i];
                    placement.angles.placement = startangles[i];
                    return placement;
                }
            }
        }
    }
    for (i = 0; i < testangles.size; i++) {
        if (!testcheck[i]) {
            if (wheelcounts[i] >= 2) {
                if (function_b4682bd6(startpoints[i], startangles[i])) {
                    placement = spawnstruct();
                    placement.origin.placement = startpoints[i];
                    placement.angles.placement = startangles[i];
                    return placement;
                }
            }
        }
    }
    return undefined;
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 3, eflags: 0x0
// Checksum 0xee88a2e2, Offset: 0x2a08
// Size: 0x1ce
function function_c82e14d2(origin, angles, heightoffset) {
    forward = 13;
    side = 10;
    wheels = [];
    wheels[0] = (forward, side, 0);
    wheels[1] = (forward, -1 * side, 0);
    wheels[2] = (-1 * forward, -1 * side, 0);
    wheels[3] = (-1 * forward, side, 0);
    height = 5;
    touchcount = 0;
    yawangles = (0, angles[1], 0);
    for (i = 0; i < 4; i++) {
        wheel = rotatepoint(wheels[i], yawangles);
        startpoint = origin + wheel;
        endpoint = startpoint + (0, 0, -1 * height - heightoffset);
        startpoint = startpoint + (0, 0, height - heightoffset);
        trace = bullettrace(startpoint, endpoint, 0, self);
        if (trace[#"fraction"] < 1) {
            touchcount++;
        }
    }
    return touchcount;
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 2, eflags: 0x0
// Checksum 0x2828e4f7, Offset: 0x2be0
// Size: 0x1f6
function function_b4682bd6(origin, *angles) {
    liftedorigin = angles + vectorscale((0, 0, 1), 5);
    size = 12;
    height = 15;
    mins = (-1 * size, -1 * size, 0);
    maxs = (size, size, height);
    absmins = liftedorigin + mins;
    absmaxs = liftedorigin + maxs;
    if (boundswouldtelefrag(absmins, absmaxs)) {
        return 0;
    }
    startheight = function_e94c2667();
    mask = 1 & 2 & 4;
    trace = physicstrace(liftedorigin, angles + (0, 0, 1), mins, maxs, self, mask);
    if (trace[#"fraction"] < 1) {
        return 0;
    }
    size = 2.5;
    height = size * 2;
    mins = (-1 * size, -1 * size, 0);
    maxs = (size, size, height);
    sweeptrace = physicstrace(self.origin + (0, 0, startheight), liftedorigin, mins, maxs, self, mask);
    if (sweeptrace[#"fraction"] < 1) {
        return 0;
    }
    return 1;
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 3, eflags: 0x0
// Checksum 0xabf5a172, Offset: 0x2de0
// Size: 0xfa
function function_d4896942(bundle, killstreakname, var_9be50a25) {
    self endon(#"death", var_9be50a25);
    self.var_7132bbb7 = undefined;
    while (1) {
        self waittill(#"flare_deployed");
        self playsound(#"hash_713a3ce01967434e");
        self.var_7132bbb7 = 1;
        self namespace_f9b02f80::play_pilot_dialog_on_owner("damageEvaded", killstreakname, self.killstreak_id);
        self.var_b6286a42 = gettime() + 5000;
        wait(isdefined(bundle.var_2eeb71d2) ? bundle.var_2eeb71d2 : 5);
        self.var_7132bbb7 = undefined;
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 5, eflags: 0x0
// Checksum 0x339ed086, Offset: 0x2ee8
// Size: 0xd0
function function_31f9c728(bundle, killstreakname, var_61bbac7a, var_2f984f68, var_9be50a25) {
    self endon(#"death", var_9be50a25);
    while (1) {
        waitresult = undefined;
        waitresult = self waittill(#"stinger_fired_at_me");
        if (isdefined(waitresult.projectile)) {
            self childthread function_849819e9(waitresult.projectile, bundle, killstreakname, var_61bbac7a);
            self childthread function_6650cc9c(waitresult.projectile, bundle, killstreakname, var_2f984f68);
        }
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 4, eflags: 0x0
// Checksum 0xc119d5a, Offset: 0x2fc0
// Size: 0x1dc
function function_849819e9(missile, bundle, killstreakname, var_61bbac7a) {
    /#
        assert(isentity(missile));
    #/
    /#
        assert(isstruct(bundle));
    #/
    /#
        assert(isdefined(var_61bbac7a));
    #/
    if (!isdefined(self)) {
        return;
    }
    missile endon(#"death");
    var_d1fb4ef3 = isdefined(bundle.var_7d5e1fc0) ? bundle.var_7d5e1fc0 : 0.75;
    while (isdefined(self.owner) && self.owner util::function_63d27d4e(killstreakname)) {
        dist = distance(missile.origin, self.origin);
        velocity = missile getvelocity();
        var_d794a748 = vectornormalize(velocity);
        missile_speed = vectordot(var_d794a748, velocity);
        if (missile_speed > 0) {
            if (dist < missile_speed * var_d1fb4ef3) {
                self playsoundtoplayer(var_61bbac7a, self.owner);
                return;
            }
        }
        wait(0.1);
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 4, eflags: 0x0
// Checksum 0x12c72749, Offset: 0x31a8
// Size: 0x2e0
function function_6650cc9c(missile, bundle, killstreakname, var_2f984f68) {
    /#
        assert(isentity(missile));
    #/
    /#
        assert(isstruct(bundle));
    #/
    /#
        assert(isdefined(var_2f984f68));
    #/
    if (!isdefined(self)) {
        return;
    }
    missile endon(#"death");
    wait(0.2);
    if (isdefined(self.var_b6286a42) && self.var_b6286a42 < gettime()) {
        self namespace_f9b02f80::play_pilot_dialog_on_owner("incomingMissile", killstreakname, self.killstreak_id);
        self.var_b6286a42 = gettime() + 5000;
    }
    neardist = isdefined(bundle.var_4004fbc) ? bundle.var_4004fbc : 10;
    fardist = isdefined(bundle.var_364ccfdc) ? bundle.var_364ccfdc : 100;
    range = fardist - neardist;
    if (range < 0) {
        return;
    }
    var_6f2344f0 = isdefined(bundle.var_9fb2ddca) ? bundle.var_9fb2ddca : 0.05;
    var_cd12ce4c = isdefined(bundle.var_6e3967de) ? bundle.var_6e3967de : 0.05;
    dist = undefined;
    while (isdefined(self.owner) && self.owner util::function_63d27d4e(killstreakname)) {
        old_dist = dist;
        dist = distance(missile.origin, self.origin);
        var_38fa5914 = isdefined(old_dist) && dist < old_dist;
        if (var_38fa5914) {
            self playsoundtoplayer(var_2f984f68, self.owner);
        }
        var_6ce65309 = (dist - neardist) / range;
        beep_interval = lerpfloat(var_6f2344f0, var_cd12ce4c, var_6ce65309);
        wait(beep_interval);
    }
}
