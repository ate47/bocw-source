// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\heatseekingmissile.gsc;
#using scripts\core_common\vehicle_death_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\oob.gsc;
#using scripts\killstreaks\helicopter_shared.gsc;
#using scripts\killstreaks\killstreak_vehicle.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using script_4721de209091b1a6;
#using scripts\killstreaks\remote_weapons.gsc;
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace hoverjet;

// Namespace hoverjet/hoverjet
// Params 0, eflags: 0x5
// Checksum 0xd17d5c49, Offset: 0x2b8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hoverjet", &init_shared, undefined, undefined, #"killstreaks");
}

// Namespace hoverjet/hoverjet
// Params 0, eflags: 0x6 linked
// Checksum 0x3877fff6, Offset: 0x308
// Size: 0x24c
function private init_shared() {
    remote_weapons::init_shared();
    killstreaks::register_killstreak("killstreak_hoverjet", &function_6bbdb500);
    remote_weapons::registerremoteweapon("hoverjet", #"", &function_80586c75, &function_cb79fdd4, 1);
    clientfield::register("toplayer", "" + #"hash_312f8015c2d5dff", 1, 1, "int");
    clientfield::register("toplayer", "" + #"hash_1a4b729551097abf", 1, 1, "int");
    clientfield::register("vehicle", "" + #"hoverjet_crash", 1, 1, "int");
    clientfield::register("vehicle", "" + #"hash_623d35a1d3211bdb", 1, 2, "int");
    clientfield::register("vehicle", "" + #"hash_48b649c323ba0f95", 1, 1, "int");
    clientfield::register("vehicle", "" + #"hash_228ec5a218e1d2f1", 1, 1, "int");
    clientfield::register("vehicle", "" + #"hash_3a74d4ba3c54d57b", 1, 1, "int");
}

// Namespace hoverjet/hoverjet
// Params 1, eflags: 0x2 linked
// Checksum 0x8b24bae4, Offset: 0x560
// Size: 0xb8
function function_6bbdb500(killstreaktype) {
    if (self killstreakrules::iskillstreakallowed("hoverjet", self.team) == 0) {
        return false;
    }
    killstreak_id = self killstreakrules::killstreakstart("hoverjet", self.team, undefined, 1);
    if (killstreak_id == -1) {
        return false;
    }
    self thread function_5398ca85(self.origin, 0, self.team, killstreak_id, killstreaktype);
    return true;
}

// Namespace hoverjet/hoverjet
// Params 4, eflags: 0x2 linked
// Checksum 0xdc399cc2, Offset: 0x620
// Size: 0x2ca
function function_747544ed(var_6ecb961c, var_46cd15af, var_f3828812, var_2a587e81) {
    output = spawnstruct();
    output.var_9b8c05e = isdefined(getclosestpointonnavmesh(var_6ecb961c, 10000)) ? getclosestpointonnavmesh(var_6ecb961c, 10000) : var_2a587e81;
    if (sessionmodeiswarzonegame()) {
        height = getheliheightlockheight(output.var_9b8c05e);
    } else {
        height = killstreaks::function_43f4782d() + 3000;
    }
    if (var_f3828812 > 0) {
        var_a8adc1bd = height / tan(90 - var_f3828812);
    } else {
        var_a8adc1bd = -14000;
    }
    var_ca2dc0 = output.var_9b8c05e - var_2a587e81;
    var_ca2dc0 = vectornormalize((var_ca2dc0[0], var_ca2dc0[1], 0));
    start_node = helicopter::function_9d99f54c(output.var_9b8c05e, var_ca2dc0);
    if (isdefined(start_node.origin)) {
        output.entry_start = isdefined(getclosestpointonnavvolume(start_node.origin, "navvolume_big", 10000)) ? getclosestpointonnavvolume(start_node.origin, "navvolume_big", 10000) : start_node.origin;
        var_b096c883 = output.var_9b8c05e - output.entry_start;
        var_b096c883 = vectornormalize((var_b096c883[0], var_b096c883[1], 0));
        output.var_25436c16 = (0, vectortoyaw(var_b096c883), 0);
        output.var_ced649a0 = output.var_9b8c05e + (0, 0, height) + vectorscale(var_b096c883, var_a8adc1bd * -1);
    } else {
        output.entry_start = var_6ecb961c;
        output.var_ced649a0 = var_6ecb961c;
        output.var_25436c16 = (0, var_46cd15af, 0);
    }
    return output;
}

// Namespace hoverjet/hoverjet
// Params 5, eflags: 0x2 linked
// Checksum 0xf9b8a5a1, Offset: 0x8f8
// Size: 0x50c
function function_5398ca85(position, yaw, *team, killstreak_id, killstreaktype) {
    self endon(#"emp_jammed", #"joined_team", #"joined_spectators", #"disconnect");
    player = self;
    assert(isplayer(player));
    playerentnum = player.entnum;
    bundle = killstreaks::get_script_bundle("hoverjet");
    mapcenter = isdefined(level.mapcenter) ? level.mapcenter : player.origin;
    var_da0bd6a0 = function_747544ed(yaw, team, 40, mapcenter);
    jet = spawnvehicle(bundle.ksvehicle, var_da0bd6a0.entry_start, var_da0bd6a0.var_25436c16, "dynamic_spawn_ai");
    jet clientfield::set("scorestreakActive", 1);
    jet.var_ced649a0 = var_da0bd6a0.var_ced649a0;
    jet.var_9b8c05e = var_da0bd6a0.var_9b8c05e;
    jet.is_shutting_down = 0;
    jet.team = player.team;
    jet.health = bundle.kshealth;
    jet.maxhealth = bundle.kshealth;
    jet killstreaks::configure_team(killstreaktype, killstreak_id, player, "small_vehicle");
    jet clientfield::set("enemyvehicle", 1);
    jet.killstreak_id = killstreak_id;
    jet.hardpointtype = "hoverjet";
    jet thread killstreaks::waitfortimeout("hoverjet", 60000, &stop_remote_weapon, "remote_weapon_end", "death");
    jet thread killstreaks::waitfortimecheck(60000 / 2, &ontimecheck, "remote_weapon_end", "death");
    jet.do_scripted_crash = 0;
    jet.no_free_on_death = 1;
    jet.one_remote_use = 1;
    jet.vehcheckforpredictedcrash = 1;
    jet.predictedcollisiontime = 0.2;
    jet.glasscollision_alt = 1;
    jet.damagetaken = 0;
    jet.var_50e3187f = 1;
    jet.var_e28b2990 = 1;
    jet.var_206b039a = 1;
    jet.destroyfunc = &function_8ae60573;
    jet.damagestate = 0;
    if (!isdefined(level.var_40225902)) {
        level.var_40225902 = [];
    } else if (!isarray(level.var_40225902)) {
        level.var_40225902 = array(level.var_40225902);
    }
    if (!isinarray(level.var_40225902, jet)) {
        level.var_40225902[level.var_40225902.size] = jet;
    }
    jet helicopter::function_76f530c7(bundle);
    level thread helicopter::function_eca18f00(jet, bundle.var_f90029e2, undefined, (13, -9, -8));
    jet vehicle::init_target_group();
    target_set(jet);
    jet.var_f7ffdd5 = "tag_origin";
    jet.overridevehicledamage = &function_3588c7d8;
    jet.forcewaitremotecontrol = 1;
    jet.disableremoteweaponswitch = 1;
    streamermodelhint(jet.model, 2);
    player remote_weapons::useremoteweapon(jet, "hoverjet", 1, 1, 1);
}

// Namespace hoverjet/hoverjet
// Params 0, eflags: 0x2 linked
// Checksum 0x5b665230, Offset: 0xe10
// Size: 0xd4
function function_f3dff78b() {
    jet = self;
    if (isdefined(jet) && isdefined(jet.owner)) {
        org = jet gettagorigin("tag_barrel");
        magnitude = 0.3;
        duration = 2;
        radius = 500;
        v_pos = jet.origin;
        earthquake(magnitude, duration, org, 500);
        jet playsound(#"hash_5314ffef2464b607");
    }
}

// Namespace hoverjet/hoverjet
// Params 15, eflags: 0x2 linked
// Checksum 0x23dca20a, Offset: 0xef0
// Size: 0x5fc
function function_3588c7d8(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, vpoint, vdir, shitloc, *vdamageorigin, psoffsettime, damagefromunderneath, modelindex, partname, *vsurfacenormal) {
    if (self.destroyed === 1) {
        return 0;
    }
    smeansofdeath = self killstreaks::ondamageperweapon("hoverjet", idflags, smeansofdeath, weapon, vpoint, vdir, self.maxhealth, undefined, self.maxhealth * 0.4, undefined, 0, undefined, 1, 1);
    if (smeansofdeath == 0) {
        return 0;
    }
    handleasrocketdamage = vpoint == "MOD_PROJECTILE" || vpoint == "MOD_EXPLOSIVE";
    if (vdir.statindex == level.weaponshotgunenergy.statindex || vdir.statindex == level.weaponpistolenergy.statindex) {
        handleasrocketdamage = 0;
    }
    if (handleasrocketdamage) {
        self function_f3dff78b();
    }
    vehicle::update_damage_fx_level(self.health, smeansofdeath, self.maxhealth);
    var_902cbab5 = self.health - smeansofdeath;
    bundle = killstreaks::get_script_bundle("hoverjet");
    if (self.damagestate < 1 && var_902cbab5 <= self.maxhealth * (isdefined(bundle.var_36adfd06) ? bundle.var_36adfd06 : 0.66)) {
        self.damagestate = 1;
        self clientfield::set("" + #"hash_623d35a1d3211bdb", 1);
    }
    if (self.damagestate < 2 && var_902cbab5 <= self.maxhealth * (isdefined(bundle.var_f0a5d04d) ? bundle.var_f0a5d04d : 0.33)) {
        self.damagestate = 2;
        self clientfield::set("" + #"hash_623d35a1d3211bdb", 2);
    }
    if (self.health > 0 && var_902cbab5 <= 0 && !is_true(self.destroyed)) {
        self.destroyed = 1;
        self.var_d02ddb8e = vdir;
        self notify(#"hash_410e7050279b0b25");
        if (!sessionmodeiszombiesgame() && isdefined(idflags) && (!isdefined(self.owner) || self.owner util::isenemyplayer(idflags))) {
            idflags = self [[ level.figure_out_attacker ]](idflags);
            challenges::destroyedaircraft(idflags, vdir, 1, self, 1);
            idflags challenges::addflyswatterstat(vdir, self);
        }
        if (isdefined(idamage) && idamage getentitytype() == 4) {
            if (isdefined(bundle.var_888a5ff7) && isdefined(shitloc)) {
                missilevelocity = idamage getvelocity();
                if (lengthsquared(missilevelocity) > sqr(50)) {
                    effectdir = vectornormalize(missilevelocity);
                    playfx(bundle.var_888a5ff7, shitloc, effectdir, undefined, undefined, self.team);
                }
            }
        }
        params = {#einflictor:idamage, #eattacker:idflags, #idamage:smeansofdeath, #idflags:weapon, #smeansofdeath:vpoint, #weapon:vdir, #vpoint:shitloc, #vdir:vdamageorigin, #shitloc:psoffsettime, #psoffsettime:damagefromunderneath, #damagefromunderneath:modelindex, #modelindex:partname, #partname:vsurfacenormal};
        self callback::callback(#"on_vehicle_damage", params);
        self thread function_830d6b7(shitloc, vdamageorigin, vpoint);
        return 0;
    }
    return smeansofdeath;
}

// Namespace hoverjet/hoverjet
// Params 3, eflags: 0x2 linked
// Checksum 0xb05dac11, Offset: 0x14f8
// Size: 0x1cc
function function_830d6b7(point, dir, smeansofdeath) {
    if (self.leave_by_damage_initiated === 1) {
        return;
    }
    self.leave_by_damage_initiated = 1;
    self notify(#"hash_7a12fabba51d2882");
    if (target_istarget(self)) {
        target_remove(self);
    }
    if (issentient(self)) {
        self function_60d50ea4();
    }
    self takeplayercontrol();
    if (isdefined(self.owner) && smeansofdeath !== "MOD_TRIGGER_HURT") {
        self.owner startcameratween(2.25);
        util::wait_network_frame();
        if (!isdefined(self)) {
            return;
        }
    }
    if (isdefined(self.mover)) {
        self.mover delete();
        self.mover = undefined;
    }
    self thread vehicle_death::helicopter_crash(point, dir, 2.75);
    self clientfield::set("" + #"hoverjet_crash", 1);
    self waittilltimeout(2.25, #"death");
    function_c85eb0a9();
}

// Namespace hoverjet/hoverjet
// Params 2, eflags: 0x2 linked
// Checksum 0xf7ff8c23, Offset: 0x16d0
// Size: 0x2c
function stop_remote_weapon(*attacker, *weapon) {
    self thread remote_weapons::endremotecontrolweaponuse(0);
}

// Namespace hoverjet/hoverjet
// Params 0, eflags: 0x2 linked
// Checksum 0xe054b2e2, Offset: 0x1708
// Size: 0x34
function ontimecheck() {
    self.owner namespace_f9b02f80::play_taacom_dialog("timecheck", "hoverjet", self.killstreak_id);
}

// Namespace hoverjet/hoverjet
// Params 1, eflags: 0x2 linked
// Checksum 0x49280a9f, Offset: 0x1748
// Size: 0x46
function function_51a4b25a(target) {
    if (target.isplayervehicle === 1 && target getvehoccupants().size <= 0) {
        return false;
    }
    return true;
}

// Namespace hoverjet/hoverjet
// Params 2, eflags: 0x2 linked
// Checksum 0x5def8956, Offset: 0x1798
// Size: 0xa6
function function_bde5e05f(target, weapon) {
    if (!function_51a4b25a(target)) {
        return false;
    }
    if (!isalive(target)) {
        return false;
    }
    if (!target_istarget(target) && !is_true(target.allowcontinuedlockonafterinvis)) {
        return false;
    }
    if (!heatseekingmissile::function_1b76fb42(target, weapon)) {
        return false;
    }
    return true;
}

// Namespace hoverjet/hoverjet
// Params 1, eflags: 0x2 linked
// Checksum 0x6eeb3562, Offset: 0x1848
// Size: 0xcc
function function_c077f369(weapon) {
    self endon(#"death", #"disconnect", #"stinger_irt_off");
    player = self;
    for (;;) {
        waitresult = player waittill(#"missile_fire");
        if (waitresult.weapon === weapon) {
            player heatseekingmissile::clearirtarget();
            if (isdefined(waitresult.projectile)) {
                waitresult.projectile.var_b324d423 = 1;
            }
        }
        waitframe(1);
    }
}

// Namespace hoverjet/hoverjet
// Params 1, eflags: 0x2 linked
// Checksum 0x9e769ae6, Offset: 0x1920
// Size: 0x6e
function function_5c4dbcb4(jet) {
    self endon(#"death");
    jet endon(#"death");
    self endon(#"off_spline");
    for (;;) {
        self setplayerangles(jet.angles);
        waitframe(1);
    }
}

// Namespace hoverjet/hoverjet
// Params 0, eflags: 0x2 linked
// Checksum 0x587bc97c, Offset: 0x1998
// Size: 0x5c
function function_e6b2dc3e() {
    self endon(#"death", #"off_spline");
    self waittill(#"hash_44ecf28b1fb3c4bb");
    self playsound(#"hash_12ddb7dd3e5716e2");
}

// Namespace hoverjet/hoverjet
// Params 1, eflags: 0x2 linked
// Checksum 0x49895704, Offset: 0x1a00
// Size: 0xcc
function function_8a865fc8(jet) {
    self val::set(#"hash_8110844715cf5ff", "freezecontrols");
    self thread function_5c4dbcb4(jet);
    jet thread function_e6b2dc3e();
    jet playsound(#"hash_6f66776e9247eccc");
    jet takeplayercontrol();
    self clientfield::set_to_player("" + #"hash_1a4b729551097abf", 1);
}

// Namespace hoverjet/hoverjet
// Params 1, eflags: 0x2 linked
// Checksum 0xf3bcfca, Offset: 0x1ad8
// Size: 0xcc
function function_746680dc(jet) {
    if (isdefined(jet)) {
        jet vehicle::get_off_path();
        jet setspeedimmediate(0, 1, 200);
        jet returnplayercontrol();
    }
    if (isdefined(self)) {
        self clientfield::set_to_player("" + #"hash_1a4b729551097abf", 0);
        self notify(#"off_spline");
        self val::reset(#"hash_8110844715cf5ff", "freezecontrols");
    }
}

// Namespace hoverjet/hoverjet
// Params 2, eflags: 0x2 linked
// Checksum 0x601503df, Offset: 0x1bb0
// Size: 0x5c
function function_f40c9e73(jet, startnode) {
    function_8a865fc8(jet);
    jet vehicle::get_on_and_go_path(startnode);
    function_746680dc(jet);
}

// Namespace hoverjet/hoverjet
// Params 1, eflags: 0x2 linked
// Checksum 0xab9874a3, Offset: 0x1c18
// Size: 0x17c
function function_58b50fe4(jet) {
    jet takeplayercontrol();
    self val::set(#"hash_8110844715cf5ff", "freezecontrols");
    mover = spawn("script_model", jet.origin);
    mover.angles = jet.angles;
    jet linkto(mover);
    mover moveto(jet.var_ced649a0, 3, 0, 1);
    jet playsound(#"hash_6f66776e9247eccc");
    mover waittill(#"movedone");
    mover delete();
    if (isdefined(self)) {
        self val::reset(#"hash_8110844715cf5ff", "freezecontrols");
    }
    if (isdefined(jet)) {
        jet unlink();
        jet returnplayercontrol();
    }
}

// Namespace hoverjet/hoverjet
// Params 0, eflags: 0x2 linked
// Checksum 0xdceb2bf, Offset: 0x1da0
// Size: 0x74c
function function_7725894b() {
    self endon(#"hash_7a12fabba51d2882");
    self notify(#"destintation reached");
    self notify(#"leaving");
    self.leaving = 1;
    if (!(self.destroyscoreeventgiven === 1)) {
        self.owner namespace_f9b02f80::play_taacom_dialog("timeout", "hoverjet", self.killstreakid);
    }
    self takeplayercontrol();
    helicopter::heli_reset();
    self vehclearlookat();
    mover = spawn("script_model", self.origin);
    self.mover = mover;
    mover.angles = self.angles;
    self linkto(mover);
    if (sessionmodeiswarzonegame()) {
        var_74e37e01 = getheliheightlockheight(mover.origin);
    } else {
        var_74e37e01 = killstreaks::function_43f4782d() + 3000;
    }
    deltaheight = min(abs(mover.origin[2] - var_74e37e01), 2000);
    ascendtime = 3;
    var_b85efcef = mover.origin + (0, 0, deltaheight);
    ascendspeed = deltaheight / ascendtime;
    mover rotatepitch(mover.angles[0] * -1, ascendtime / 2, 0, 1);
    mover moveto(var_b85efcef, ascendtime, 0.5, 0.5);
    mover waittill(#"movedone", #"death");
    if (!isdefined(self)) {
        mover delete();
        self.mover = undefined;
        return;
    }
    mover rotatepitch(-20, 2, 0, 1);
    mover waittill(#"rotatedone", #"death");
    if (!isdefined(self)) {
        mover delete();
        self.mover = undefined;
        return;
    }
    self playsound(#"hash_6f66776e9247eccc");
    self clientfield::set("" + #"hash_3a74d4ba3c54d57b", 1);
    var_6221de3 = int(3 * 1000);
    var_c347ff91 = gettime();
    exittime = int(10 * 1000);
    var_53a69347 = gettime();
    for (;;) {
        var_e2c617ce = gettime();
        deltatime = float(var_e2c617ce - var_53a69347) / 1000;
        forward = anglestoforward(mover.angles);
        var_471b7e06 = (var_e2c617ce - var_c347ff91) / var_6221de3;
        if (var_471b7e06 < 0) {
            var_471b7e06 = 0;
        } else if (var_471b7e06 > 1) {
            var_471b7e06 = 1;
        }
        curspeed = lerpfloat(0, 7040, var_471b7e06);
        movedelta = vectornormalize(forward) * curspeed * deltatime;
        mover.origin += movedelta;
        newpitch = mover.angles[0];
        newpitch -= 6 * deltatime;
        if (newpitch < -45) {
            newpitch = -45;
        } else if (newpitch > 0) {
            newpitch = 0;
        }
        mover.angles = (newpitch, mover.angles[1], mover.angles[2]);
        if (var_e2c617ce - var_c347ff91 > exittime) {
            break;
        }
        var_53a69347 = var_e2c617ce;
        waitframe(1);
        if (!isdefined(self) || !isalive(self)) {
            mover delete();
            self.mover = undefined;
            return;
        }
    }
    if (isdefined(self)) {
        self killstreaks::function_3696d106();
        self unlink();
    }
    mover delete();
    self.mover = undefined;
    if (isdefined(self)) {
        self clientfield::set("" + #"hash_3a74d4ba3c54d57b", 0);
        self stoploopsound(1);
        self util::death_notify_wrapper();
        if (isdefined(self.alarm_snd_ent)) {
            self.alarm_snd_ent stoploopsound();
            self.alarm_snd_ent delete();
            self.alarm_snd_ent = undefined;
        }
        assert(isdefined(self.destroyfunc));
        self [[ self.destroyfunc ]]();
    }
}

// Namespace hoverjet/hoverjet
// Params 1, eflags: 0x2 linked
// Checksum 0x27ec5d32, Offset: 0x24f8
// Size: 0x3e4
function function_80586c75(jet) {
    player = self;
    assert(isplayer(player));
    if (!jet.is_shutting_down) {
        var_f3443f81 = 40;
        jet.angles = (var_f3443f81, vectortoyaw(jet.var_ced649a0 - jet.origin), 0);
        jet usevehicle(player, 0);
        bundle = killstreaks::get_script_bundle("hoverjet");
        jet.numflares = 1;
        jet.fx_flare = bundle.var_22ab738b;
        jet thread heatseekingmissile::missiletarget_proximitydetonateincomingmissile(bundle, "death");
        jet thread vehicle::monitor_missiles_locked_on_to_me(player);
        jet thread heatseekingmissile::playlockonsoundsthread(player, #"hash_4666b0cfa119c919", #"hash_5ccac207f5c91427");
        jet.is_still_valid_target_for_stinger_override = &function_61c4894;
        jet.var_eb66cfc6 = &function_fa687280;
        jet.var_43384efb = &function_63ec1d12;
        jet thread killstreak_vehicle::function_d4896942(bundle, "hoverjet");
        jet thread killstreak_vehicle::function_31f9c728(bundle, "hoverjet", "exp_incoming_missile", "uin_hoverjet_alarm_missile_incoming");
        player.is_valid_target_for_stinger_override = &function_51a4b25a;
        player.is_still_valid_target_for_stinger_override = &function_bde5e05f;
        player.var_96e63c65 = &function_e9a13002;
        player.var_ce532710 = &function_bb75386c;
        weapon = heatseekingmissile::getappropriateplayerweapon();
        player thread heatseekingmissile::stingerirtloop(weapon);
        player thread function_c077f369(weapon);
        player clientfield::set_to_player("" + #"hash_312f8015c2d5dff", 1);
        player setplayerangles((var_f3443f81, vectortoyaw(jet.var_ced649a0 - jet.origin), 0));
        player oob::function_93bd17f6("hoverjet", 10);
        player.var_5c5fca5 = 1;
        startnode = getvehiclenode("hover_jet_path_start", "targetname");
        if (isdefined(startnode)) {
            function_f40c9e73(jet, startnode);
        } else {
            function_58b50fe4(jet);
        }
        if (isdefined(jet)) {
            jet setheliheightcap(1);
            jet.var_206b039a = undefined;
        }
        if (isdefined(player)) {
            player vehicle::set_vehicle_drivable_time_starting_now(60000);
        }
    }
}

// Namespace hoverjet/hoverjet
// Params 2, eflags: 0x2 linked
// Checksum 0xf3ec5ad, Offset: 0x28e8
// Size: 0x2c
function function_cb79fdd4(jet, *exitrequestedbyowner) {
    exitrequestedbyowner thread function_c85eb0a9();
}

// Namespace hoverjet/hoverjet
// Params 0, eflags: 0x2 linked
// Checksum 0x47199812, Offset: 0x2920
// Size: 0x224
function function_c85eb0a9() {
    jet = self;
    owner = jet.owner;
    if (jet.is_shutting_down === 1) {
        return;
    }
    jet.is_shutting_down = 1;
    if (isdefined(owner)) {
        owner clientfield::set_to_player("" + #"hash_312f8015c2d5dff", 0);
        owner oob::function_e2d18c01("hoverjet");
        owner.var_5c5fca5 = undefined;
        owner vehicle::stop_monitor_missiles_locked_on_to_me();
        owner notify(#"stinger_irt_off");
        owner heatseekingmissile::clearirtarget();
        owner.is_valid_target_for_stinger_override = undefined;
        owner.is_still_valid_target_for_stinger_override = undefined;
        owner.var_96e63c65 = undefined;
        owner.var_ce532710 = undefined;
        owner notify(#"hash_7cc112f2b6acec3a");
        owner function_746680dc(jet);
    }
    if (jet.destroyed === 1) {
        jet function_8ae60573();
        return;
    }
    if (getdvarint(#"hash_108fd41145be7bb3", 1)) {
        jet thread function_7725894b();
        return;
    }
    jet.angles = (0, 0, 0);
    jet setspeed(100, 200, 1);
    jet thread helicopter::heli_leave(undefined, 1);
    jet thread function_e441d7fa();
}

// Namespace hoverjet/hoverjet
// Params 0, eflags: 0x2 linked
// Checksum 0x3c5e1cc6, Offset: 0x2b50
// Size: 0x7e
function function_e441d7fa() {
    self endon(#"death");
    wait(sessionmodeiswarzonegame() ? 25 : 15);
    if (isalive(self)) {
        self helicopter::function_711c140b();
        self notify(#"death");
    }
}

// Namespace hoverjet/hoverjet
// Params 1, eflags: 0x2 linked
// Checksum 0x5ebe9dc, Offset: 0x2bd8
// Size: 0x64
function waitthendelete(waittime) {
    self endon(#"delete", #"death");
    wait(waittime);
    self helicopter::function_711c140b();
    self delete();
}

// Namespace hoverjet/hoverjet
// Params 1, eflags: 0x2 linked
// Checksum 0x677d6cee, Offset: 0x2c48
// Size: 0xc4
function function_8ae60573(*do_explosion) {
    self helicopter::function_e1058a3e();
    self notify(#"crash_done");
    self hide();
    killstreakrules::killstreakstop(self.killstreaktype, self.originalteam, self.killstreak_id);
    if (isdefined(self.flare_ent)) {
        self.flare_ent delete();
    }
    if (isdefined(self)) {
        self waitthendelete(0.2);
    }
}

// Namespace hoverjet/hoverjet
// Params 2, eflags: 0x2 linked
// Checksum 0x5f8c8d3e, Offset: 0x2d18
// Size: 0x6e
function function_61c4894(ent, *weapon) {
    if (isdefined(weapon.var_7132bbb7)) {
        return false;
    }
    if (is_true(weapon.destroyed)) {
        return false;
    }
    if (is_true(weapon.is_shutting_down)) {
        return false;
    }
    return true;
}

// Namespace hoverjet/hoverjet
// Params 0, eflags: 0x2 linked
// Checksum 0xfe8379fe, Offset: 0x2d90
// Size: 0x74
function function_e9a13002() {
    if (self isinvehicle()) {
        jet = self getvehicleoccupied();
        jet clientfield::set("" + #"hash_48b649c323ba0f95", 1);
    }
}

// Namespace hoverjet/hoverjet
// Params 0, eflags: 0x2 linked
// Checksum 0xab34279b, Offset: 0x2e10
// Size: 0x74
function function_bb75386c() {
    if (self isinvehicle()) {
        jet = self getvehicleoccupied();
        jet clientfield::set("" + #"hash_48b649c323ba0f95", 0);
    }
}

// Namespace hoverjet/hoverjet
// Params 0, eflags: 0x2 linked
// Checksum 0x62f4ad01, Offset: 0x2e90
// Size: 0x34
function function_fa687280() {
    self clientfield::set("" + #"hash_228ec5a218e1d2f1", 1);
}

// Namespace hoverjet/hoverjet
// Params 0, eflags: 0x2 linked
// Checksum 0xf05c30d2, Offset: 0x2ed0
// Size: 0x2c
function function_63ec1d12() {
    self clientfield::set("" + #"hash_228ec5a218e1d2f1", 0);
}

