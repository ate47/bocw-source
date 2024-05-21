// Atian COD Tools GSC CW decompiler test
#using script_1d0f884737f7cbe8;
#using scripts\weapons\weapons.gsc;
#using scripts\weapons\heatseekingmissile.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using script_4721de209091b1a6;
#using scripts\killstreaks\killstreak_detect.gsc;
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\killstreaks\airsupport.gsc;
#using scripts\core_common\killcam_shared.gsc;
#using scripts\core_common\influencers_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace napalm_strike;

// Namespace napalm_strike/namespace_b00a727a
// Params 2, eflags: 0x2 linked
// Checksum 0xb4dc9451, Offset: 0x280
// Size: 0x1a0
function init_shared(bundlename, var_b083dcd0) {
    assert(!isdefined(var_b083dcd0) || isfunctionptr(var_b083dcd0));
    killstreaks::register_killstreak(bundlename, isdefined(var_b083dcd0) ? var_b083dcd0 : &function_aad649e1);
    clientfield::register("scriptmover", "" + #"hash_72f92383f772d276", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_3d8e05debfa62f2d", 1, 1, "int");
    clientfield::register("missile", "" + #"hash_77346335cbe9ecde", 1, 1, "int");
    level.var_ea918548 = scene::get_all_shot_names(#"p9_fxanim_mp_napalm_strike_spin");
    level.napalmstrike = {#var_cf856437:[], #var_9bac810c:[], #affectedplayers:[]};
}

// Namespace napalm_strike/namespace_b00a727a
// Params 1, eflags: 0x2 linked
// Checksum 0x411fc580, Offset: 0x428
// Size: 0x6a
function function_aad649e1(killstreaktype) {
    if (self killstreakrules::iskillstreakallowed(killstreaktype, self.team) == 0) {
        return 0;
    }
    result = self function_7ae3f138(killstreaktype);
    return is_true(result);
}

// Namespace napalm_strike/namespace_b00a727a
// Params 0, eflags: 0x2 linked
// Checksum 0xc5e11c08, Offset: 0x4a0
// Size: 0xac
function function_3457a31e() {
    bundlename = sessionmodeiszombiesgame() ? "napalm_strike_zm" : "napalm_strike";
    killstreakbundle = killstreaks::get_script_bundle(bundlename);
    var_182ab4c4 = killstreakbundle.var_36ae071d;
    var_60663537 = killstreakbundle.var_2df25e4a * var_182ab4c4;
    self beginlocationnapalmselection("lui_napalm_strike", var_60663537 / 2);
}

// Namespace napalm_strike/namespace_b00a727a
// Params 1, eflags: 0x2 linked
// Checksum 0x6cbbf20e, Offset: 0x558
// Size: 0x18a
function function_7ae3f138(killstreaktype) {
    params = killstreaks::get_script_bundle(killstreaktype);
    self airsupport::function_9e2054b0(&function_3457a31e);
    locations = [];
    if (is_true(params.var_7436c1c5) && !is_true(self.pers[#"hash_10c1dad9bcbe13a4"])) {
        self thread airsupport::singleradarsweep();
    }
    location = self airsupport::waitforlocationselection();
    if (!isdefined(self)) {
        return 0;
    }
    if (!isdefined(location.origin) || self killstreakrules::iskillstreakallowed(killstreaktype, self.team) == 0) {
        self.pers[#"hash_10c1dad9bcbe13a4"] = 1;
        self notify(#"cancel_selection");
        return 0;
    }
    self.pers[#"hash_10c1dad9bcbe13a4"] = 0;
    return self airsupport::function_83904681(location, &function_3d070ab6, killstreaktype);
}

// Namespace napalm_strike/namespace_b00a727a
// Params 3, eflags: 0x2 linked
// Checksum 0x2fc07047, Offset: 0x6f0
// Size: 0x78
function function_3d070ab6(location, killstreak_id, killstreaktype) {
    team = self.team;
    level influencers::create_enemy_influencer("artillery", location.origin, team);
    self thread function_88e2e18a(killstreaktype, location, team, killstreak_id, 1);
    return true;
}

// Namespace napalm_strike/namespace_b00a727a
// Params 6, eflags: 0x2 linked
// Checksum 0x98fedc3c, Offset: 0x770
// Size: 0x5e4
function function_88e2e18a(killstreaktype, location, team, killstreak_id, startdelay, var_e0d1e239 = "napalm_strike_path_start") {
    bundlename = sessionmodeiszombiesgame() ? "napalm_strike_zm" : "napalm_strike";
    self endon(#"disconnect");
    if (isdefined(startdelay)) {
        wait(startdelay);
    }
    if (isdefined(killstreak_id)) {
        level.napalmstrike.var_cf856437[killstreak_id] = 1;
    }
    if (is_true(level.var_dfdeb3ed)) {
        position = location.origin;
        targetpoint = position;
    } else {
        position = location.origin;
        if (isdefined(location.height)) {
            height = location.origin[2] + location.height;
        }
        trace = bullettrace(position + (0, 0, 10000), position - (0, 0, 10000), 0, undefined, 1);
        targetpoint = trace[#"fraction"] > 1 ? (position[0], position[1], 0) : trace[#"position"];
        /#
            if (getdvarint(#"hash_2cb865fc68c3cb44", 0)) {
                sphere(targetpoint, 20, (0, 1, 0), 1, 1, 10, 400);
            }
        #/
        if (!isdefined(height)) {
            if (sessionmodeiswarzonegame()) {
                var_b0490eb9 = getheliheightlockheight(position);
                groundheight = targetpoint[2];
                bundle = killstreaks::get_script_bundle(bundlename);
                height = groundheight + (var_b0490eb9 - groundheight) * (isdefined(level.var_5915ecb1) ? level.var_5915ecb1 : bundle.var_ff73e08c);
            } else {
                height = killstreaks::function_43f4782d();
                height += 3400 + randomfloatrange(-100, 100);
                traceheight = trace[#"position"][2];
                height += traceheight - level.mapcenter[2];
            }
        }
    }
    killstreakbundle = killstreaks::get_script_bundle(bundlename);
    planeoffset = killstreakbundle.var_aadafb41 / 2;
    startnodes = getvehiclenodearray(var_e0d1e239, "targetname");
    assert(startnodes.size, "<unknown string>");
    pivot = struct::get("napalm_strike_pivot", "targetname");
    foreach (index, startnode in startnodes) {
        plane = spawnplane(startnode, self, killstreak_id, killstreakbundle, killstreaktype);
        dosound = 0;
        if (index == 0) {
            plane clientfield::set("" + #"hash_3d8e05debfa62f2d", 1);
            if (isdefined(killstreak_id)) {
                plane killstreakrules::function_2e6ff61a(bundlename, killstreak_id, {#origin:position, #team:team});
            }
            plane namespace_f9b02f80::play_pilot_dialog_on_owner("arrive", bundlename, killstreak_id);
            plane thread function_6f537b95(killstreak_id);
            dosound = 1;
        }
        self thread function_888e0e9f(killstreaktype, killstreak_id, plane, startnode, pivot, location, height, targetpoint, team, dosound);
    }
    level thread function_e3bc95f2(killstreakbundle);
    location waittill(#"hash_33e766cf85525f6e", #"hash_dce0602346144a3");
}

// Namespace napalm_strike/namespace_b00a727a
// Params 1, eflags: 0x6 linked
// Checksum 0x99865f23, Offset: 0xd60
// Size: 0x64
function private function_6f537b95(killstreak_id) {
    bundlename = sessionmodeiszombiesgame() ? "napalm_strike_zm" : "napalm_strike";
    wait(9);
    self namespace_f9b02f80::play_pilot_dialog_on_owner("waveStartFinal", bundlename, killstreak_id);
}

// Namespace napalm_strike/namespace_b00a727a
// Params 5, eflags: 0x6 linked
// Checksum 0xe3529443, Offset: 0xdd0
// Size: 0x378
function private spawnplane(startnode, owner, killstreak_id, killstreakbundle, killstreaktype) {
    bundlename = sessionmodeiszombiesgame() ? "napalm_strike_zm" : "napalm_strike";
    startposition = startnode.origin;
    angles = startnode.angles;
    fakevehicle = spawnvehicle("fake_vehicle", startposition, angles);
    plane = spawn("script_model", startposition);
    plane function_a7d56780(killstreakbundle);
    plane.fakevehicle = fakevehicle;
    plane.angles = angles;
    plane linkto(fakevehicle);
    plane.weapon = getweapon(bundlename);
    plane setweapon(plane.weapon);
    plane setowner(owner);
    plane.owner = owner;
    team = owner.team;
    plane.team = team;
    plane setteam(team);
    plane.targetname = "napalm_strike";
    plane playloopsound(#"hash_44d9bd79e59735d5");
    plane playsound(#"hash_77c59806b7c6a576");
    plane setmodel(#"hash_8cd82152094d2a0");
    plane setforcenocull();
    fakevehicle setforcenocull();
    /#
        if (getdvarint(#"hash_7c99a42d0ce68a43", 0)) {
            plane setmodel(#"hash_73996bebb80b8515");
        }
    #/
    plane thread killstreaks::function_5a7ecb6b();
    plane setdrawinfrared(1);
    plane util::make_sentient();
    plane killstreaks::configure_team(killstreaktype, killstreak_id, owner);
    plane killstreaks::function_2b6aa9e8(bundlename, &function_5e2b9745, &function_7f88b108);
    killstreak_detect::killstreaktargetset(plane);
    plane thread heatseekingmissile::missiletarget_proximitydetonateincomingmissile(killstreakbundle, "death", undefined, 1);
    return plane;
}

// Namespace napalm_strike/namespace_b00a727a
// Params 6, eflags: 0x2 linked
// Checksum 0x78ba4ad7, Offset: 0x1150
// Size: 0x180
function cleanup(killstreaktype, plane, killstreak_id, team, owner, location) {
    bundlename = sessionmodeiszombiesgame() ? "napalm_strike_zm" : "napalm_strike";
    self waittill(#"hash_2c86e26fe6108f12", #"death", #"reached_end_node");
    if (isdefined(plane)) {
        plane thread killstreaks::function_3696d106();
    }
    if (isdefined(level.napalmstrike.var_cf856437[killstreak_id])) {
        owner killstreakrules::killstreakstop(killstreaktype, team, killstreak_id);
        arrayremoveindex(level.napalmstrike.var_cf856437, killstreak_id, 1);
    }
    self waittilltimeout(3, #"death");
    if (isdefined(self)) {
        self delete();
    }
    if (isdefined(plane)) {
        plane delete();
    }
    location notify(#"hash_dce0602346144a3");
}

// Namespace napalm_strike/namespace_b00a727a
// Params 10, eflags: 0x6 linked
// Checksum 0x11ac7a49, Offset: 0x12d8
// Size: 0x10c
function private function_888e0e9f(killstreaktype, killstreak_id, plane, startnode, pivot, location, height, targetpoint, team, dosound) {
    fakevehicle = plane.fakevehicle;
    fakevehicle thread cleanup(killstreaktype, plane, killstreak_id, team, self, location);
    if (!is_true(level.var_dfdeb3ed)) {
        fakevehicle vehicle::function_bb9b43a9(startnode, pivot.origin, pivot.angles, location, height);
    }
    fakevehicle thread vehicle::get_on_and_go_path(startnode);
    fakevehicle function_c248485(plane, targetpoint, team, self, dosound, location);
}

// Namespace napalm_strike/namespace_b00a727a
// Params 6, eflags: 0x6 linked
// Checksum 0xc6c6384a, Offset: 0x13f0
// Size: 0x398
function private function_c248485(plane, targetpoint, team, owner, dosound = 0, location) {
    self endon(#"death");
    bundlename = sessionmodeiszombiesgame() ? "napalm_strike_zm" : "napalm_strike";
    killstreakbundle = killstreaks::get_script_bundle(bundlename);
    plane.var_42d5aa88 = [];
    for (i = 0; i < killstreakbundle.var_2df25e4a; i++) {
        var_5496c504 = util::spawn_model(#"hash_5958f8fe5e577540", self.origin);
        var_5496c504 ghost();
        var_5496c504 notsolid();
        plane.var_42d5aa88[i] = var_5496c504;
        waitframe(1);
    }
    plane clientfield::set("" + #"hash_72f92383f772d276", 1);
    self waittill(#"drop_bombs");
    if (dosound) {
        plane playsound(#"hash_699143303b7cad0f");
    }
    var_1d6434c4 = 1;
    var_c3aa02d8 = 1;
    var_11839b05 = killstreakbundle.var_dda871d7;
    for (i = 0; i < killstreakbundle.var_2df25e4a; i++) {
        right = anglestoright((0, plane.angles[1], 0));
        var_b42586df = vectorscale(right, randomfloatrange(var_11839b05 * -1, var_11839b05));
        if (isdefined(owner)) {
            owner thread function_c4cbfac7(plane, team, killstreakbundle, var_b42586df, var_1d6434c4, var_c3aa02d8, location, plane.var_1bb01d48[i], plane.var_42d5aa88[i]);
        } else {
            if (isdefined(plane.var_1bb01d48[i])) {
                plane.var_1bb01d48[i] delete();
            }
            if (isdefined(plane.var_42d5aa88[i])) {
                plane.var_42d5aa88[i] delete();
            }
            continue;
        }
        if (dosound && i == killstreakbundle.var_2df25e4a / 2) {
            playsoundatposition(#"hash_18c79f680760b8c8", targetpoint);
        }
        var_1d6434c4 -= killstreakbundle.var_4bb1a46b;
        var_c3aa02d8 -= killstreakbundle.var_ea6e191e;
        wait(killstreakbundle.var_582f5ef7);
    }
}

// Namespace napalm_strike/namespace_b00a727a
// Params 9, eflags: 0x6 linked
// Checksum 0x41d49e75, Offset: 0x1790
// Size: 0x464
function private function_c4cbfac7(plane, team, killstreakbundle, var_8be94730, var_1d6434c4, var_c3aa02d8, location, killcament, var_5496c504) {
    bombspeedscale = killstreakbundle.var_e72831e2;
    forwardspeed = bombspeedscale * 4800 * var_1d6434c4;
    angles = (0, plane.angles[1], 0);
    forward = anglestoforward(angles);
    bombvelocity = vectorscale(forward, forwardspeed) + (0, 0, killstreakbundle.var_b938e27c * -1 * var_c3aa02d8);
    startposition = plane.origin + (0, 0, -40) + var_8be94730;
    weapon = getweapon("napalm_strike");
    bomb = self magicmissile(weapon, startposition, bombvelocity);
    if (!isdefined(bomb)) {
        var_5496c504 deletedelay();
        return;
    }
    bomb thread function_4947d695();
    var_5496c504.origin = bomb.origin;
    var_5496c504.angles = bomb.angles;
    var_5496c504 linkto(bomb);
    var_5496c504 show();
    bomb ghost();
    bomb.angles = angles;
    bomb.soundmod = "heli";
    bomb playsound(#"hash_136cf29747992813");
    bomb.team = team;
    bomb setteam(team);
    bomb.killcament = killcament;
    bomb.takedamage = 0;
    bomb.killstreakid = plane.killstreakid;
    bomb.var_813987b5 = plane.birthtime;
    shot = level.var_ea918548[randomint(level.var_ea918548.size)];
    bomb thread scene::play(#"p9_fxanim_mp_napalm_strike_spin", shot, array(var_5496c504));
    killcament unlink();
    killcament linkto(bomb);
    result = bomb waittill(#"projectile_impact_explode", #"entitydeleted");
    location notify(#"hash_33e766cf85525f6e");
    if (isdefined(var_5496c504)) {
        var_5496c504 deletedelay();
    }
    if (isdefined(bomb)) {
        bomb scene::stop(#"p9_fxanim_mp_napalm_strike_spin");
    }
    if (level.gameended) {
        return;
    }
    if (result._notify == "projectile_impact_explode") {
        bomb clientfield::set("" + #"hash_77346335cbe9ecde", 1);
        level function_77ba1651(result.position, self, result.normal, forward, bomb.killcament, team);
    }
}

// Namespace napalm_strike/namespace_b00a727a
// Params 0, eflags: 0x2 linked
// Checksum 0xc97bb782, Offset: 0x1c00
// Size: 0x44
function function_4947d695() {
    self endon(#"death");
    self notsolid();
    wait(1);
    self solid();
}

// Namespace napalm_strike/namespace_b00a727a
// Params 1, eflags: 0x2 linked
// Checksum 0xf513075f, Offset: 0x1c50
// Size: 0x18c
function function_a7d56780(killstreakbundle) {
    bundlename = sessionmodeiszombiesgame() ? "napalm_strike_zm" : "napalm_strike";
    self.var_1bb01d48 = [];
    var_7ab8be7d = (self.angles[0] + 30, self.angles[1], self.angles[2]);
    killcamforward = anglestoforward(var_7ab8be7d);
    for (i = 0; i < killstreakbundle.var_2df25e4a; i++) {
        killcament = spawn("script_model", self.origin + vectorscale(killcamforward, -1500));
        killcament setweapon(getweapon(bundlename));
        killcament util::deleteaftertime(killstreakbundle.var_b5f47b94 + 10);
        killcament.starttime = gettime();
        killcament.angles = var_7ab8be7d;
        killcament linkto(self);
        self.var_1bb01d48[i] = killcament;
    }
}

// Namespace napalm_strike/namespace_b00a727a
// Params 6, eflags: 0x6 linked
// Checksum 0x2125e277, Offset: 0x1de8
// Size: 0x314
function private function_77ba1651(position, owner, normal, direction, killcament, team) {
    bundlename = sessionmodeiszombiesgame() ? "napalm_strike_zm" : "napalm_strike";
    originalposition = position;
    var_493d36f9 = normal;
    killstreakbundle = killstreaks::get_script_bundle(bundlename);
    var_8a11dbc7 = killstreakbundle.var_36ae071d / 2;
    if (normal[2] < 0.5) {
        var_36c22d1d = position + vectorscale(var_493d36f9, 2);
        var_8ae62b02 = var_36c22d1d - (0, 0, 20);
        var_69d15ad0 = physicstrace(var_36c22d1d, var_8ae62b02, (-0.5, -0.5, -0.5), (0.5, 0.5, 0.5), self, 1 | 4);
        if (var_69d15ad0[#"fraction"] < 1) {
            position = var_36c22d1d;
            if (var_69d15ad0[#"fraction"] > 0) {
                normal = var_69d15ad0[#"normal"];
            } else {
                normal = (0, 0, 1);
            }
        }
    }
    if (normal[2] < 0.5) {
        wall_normal = normal;
        var_36c22d1d = originalposition + vectorscale(var_493d36f9, 8);
        var_8ae62b02 = var_36c22d1d - (0, 0, var_8a11dbc7);
        var_69d15ad0 = physicstrace(var_36c22d1d, var_8ae62b02, (-3, -3, -3), (3, 3, 3), self, 1 | 4);
        var_693f108f = var_69d15ad0[#"fraction"] * var_8a11dbc7;
        if (var_693f108f > 10) {
            var_e76400c0 = originalposition;
            wallnormal = var_493d36f9;
        }
        if (var_69d15ad0[#"fraction"] < 1) {
            position = var_69d15ad0[#"position"];
            if (var_69d15ad0[#"fraction"] > 0) {
                normal = var_69d15ad0[#"normal"];
            } else {
                normal = (0, 0, 1);
            }
        }
    }
    level function_985141f2(owner, position, normal, direction, killcament, team, killstreakbundle);
}

// Namespace napalm_strike/namespace_b00a727a
// Params 7, eflags: 0x2 linked
// Checksum 0xe585819a, Offset: 0x2108
// Size: 0x740
function function_985141f2(owner, startpos, normal, direction, killcament, team, killstreakbundle) {
    var_57a970a6 = killstreakbundle.var_36ae071d;
    colorarray = [];
    colorarray[colorarray.size] = (0.9, 0.2, 0.2);
    colorarray[colorarray.size] = (0.2, 0.9, 0.2);
    colorarray[colorarray.size] = (0.2, 0.2, 0.9);
    colorarray[colorarray.size] = (0.9, 0.9, 0.9);
    locations = [];
    locations[#"loc"] = [];
    locations[#"normal"] = [];
    locations[#"point"] = [];
    locations[#"surfacetype"] = [];
    fxcount = killstreakbundle.var_804c11a3;
    function_f712ec5e();
    fxlength = var_57a970a6 / fxcount;
    startpos += vectorscale(direction * -1, var_57a970a6 / 2 - fxlength / 2);
    for (fxindex = 0; fxindex < fxcount; fxindex++) {
        locations[#"point"][fxindex] = startpos + vectorscale(direction, fxlength * fxindex);
    }
    var_1cac1ca8 = normal[2] > 0.5;
    for (count = 0; count < fxcount; count++) {
        tracepoint = locations[#"point"][count];
        trace = bullettrace(tracepoint + (0, 0, killstreakbundle.var_df0b598c), tracepoint - (0, 0, killstreakbundle.var_1b97cd46), 0, undefined, 1);
        if (trace[#"fraction"] < 1) {
            locations[#"loc"][count] = trace[#"position"];
            locations[#"normal"][count] = trace[#"normal"];
            locations[#"surfacetype"][count] = trace[#"surfacetype"];
        }
    }
    var_54715763 = getweapon(#"hash_72c14c150086340c");
    var_b366de9c = getweapon(#"hash_78a35da92bd92644");
    fireduration = killstreakbundle.var_b5f47b94;
    firesound = spawn("script_origin", startpos);
    firesound playloopsound(#"hash_8e00d255f2085d5");
    killcament unlink();
    var_ab1069fa = startpos + vectorscale(anglestoforward(killcament.angles), -500);
    killcament moveto(var_ab1069fa, 4, 0, 1);
    level thread function_660d94c3(firesound, killcament, fireduration);
    damageendtime = int(gettime() + fireduration * 1000);
    var_b1dd2ca0 = getarraykeys(locations[#"loc"]);
    foreach (lockey in var_b1dd2ca0) {
        position = locations[#"loc"][lockey];
        if (isunderwater(position)) {
            continue;
        }
        fxnormal = locations[#"normal"][lockey];
        if (fxnormal[2] < 0.2) {
            var_8866515 = (0, 0, 1);
        } else {
            var_8866515 = direction;
        }
        damageposition = position + vectorscale(fxnormal, 10);
        var_acf59456 = {#damageendtime:damageendtime, #damageposition:damageposition, #killcament:killcament, #owner:owner, #team:team};
        level.napalmstrike.var_9bac810c[level.napalmstrike.var_9bac810c.size] = var_acf59456;
        /#
            if (getdvarint(#"hash_2cb865fc68c3cb44", 0)) {
                sphere(damageposition, 70, (1, 0, 0), 0.3, 1, 10, 200);
            }
        #/
        weapon = locations[#"surfacetype"][lockey] == "water" ? var_b366de9c : var_54715763;
        spawntimedfx(weapon, position, var_8866515, fireduration, team, 0);
        wait(0.25);
    }
}

// Namespace napalm_strike/namespace_b00a727a
// Params 3, eflags: 0x6 linked
// Checksum 0xb1aae378, Offset: 0x2850
// Size: 0x84
function private function_660d94c3(firesound, killcament, fireduration) {
    level waittilltimeout(fireduration, #"game_ended");
    firesound thread stopfiresound();
    if (isdefined(killcament)) {
        killcament delete();
    }
    level function_f712ec5e();
}

// Namespace napalm_strike/namespace_b00a727a
// Params 0, eflags: 0x6 linked
// Checksum 0xdd4dd1b3, Offset: 0x28e0
// Size: 0xd4
function private function_f712ec5e() {
    time = gettime();
    foreach (key, var_93057333 in level.napalmstrike.var_9bac810c) {
        if (var_93057333.damageendtime < time) {
            level.napalmstrike.var_9bac810c[key] = undefined;
        }
    }
    arrayremovevalue(level.napalmstrike.var_9bac810c, undefined);
}

// Namespace napalm_strike/namespace_b00a727a
// Params 1, eflags: 0x4
// Checksum 0x8c6725fa, Offset: 0x29c0
// Size: 0x2c
function private function_a4b1f727(position) {
    return getwaterheight(position) - position[2];
}

// Namespace napalm_strike/namespace_b00a727a
// Params 1, eflags: 0x4
// Checksum 0xd6ccdeae, Offset: 0x29f8
// Size: 0x24
function private function_3b402cdd(water_depth) {
    return 0 < water_depth && water_depth < 24;
}

// Namespace napalm_strike/namespace_b00a727a
// Params 1, eflags: 0x6 linked
// Checksum 0xef759b75, Offset: 0x2a28
// Size: 0x42
function private isunderwater(position) {
    water_depth = getwaterheight(position) - position[2];
    return water_depth >= 24;
}

// Namespace napalm_strike/namespace_b00a727a
// Params 1, eflags: 0x6 linked
// Checksum 0xfed4828a, Offset: 0x2a78
// Size: 0x626
function private function_e3bc95f2(killstreakbundle) {
    if (is_true(level.napalmstrike.damagewatcher)) {
        return;
    }
    level.napalmstrike.damagewatcher = 1;
    level endon(#"game_ended");
    var_e9c2375d = killstreakbundle.var_95280bcc;
    var_4122ca21 = 0;
    var_54715763 = getweapon(#"hash_72c14c150086340c");
    while (level.napalmstrike.var_cf856437.size || level.napalmstrike.var_9bac810c.size) {
        var_e5a58a70 = [];
        var_d98685bf = [];
        foreach (var_93057333 in level.napalmstrike.var_9bac810c) {
            position = var_93057333.damageposition;
            playertargets = level getpotentialtargets(var_93057333, var_e9c2375d);
            foreach (player in playertargets) {
                trace = bullettrace(position, player getshootatpos(), 0, player);
                if (trace[#"fraction"] == 1) {
                    var_e5a58a70[player getentitynumber()] = player;
                    player.var_93057333 = var_93057333;
                }
            }
            if (var_4122ca21 <= 0) {
                var_9d1e202b = level weapons::function_356292be(var_93057333.owner, position, var_e9c2375d);
                foreach (target in var_9d1e202b) {
                    trace = bullettrace(position, target getshootatpos(), 0, target);
                    if (trace[#"fraction"] == 1) {
                        var_d98685bf[var_d98685bf.size] = target;
                    }
                }
                var_4122ca21 = killstreakbundle.var_d386b690;
            }
        }
        foreach (player in var_e5a58a70) {
            player thread function_4cf0607d(var_93057333, var_54715763, killstreakbundle);
        }
        foreach (entity in var_d98685bf) {
            entity thread function_2f66cd96(var_93057333, var_54715763, killstreakbundle);
        }
        foreach (entitynumber, player in level.napalmstrike.affectedplayers) {
            if (!isdefined(var_e5a58a70[entitynumber])) {
                player function_1db9aa5e();
            }
        }
        level.napalmstrike.affectedplayers = var_e5a58a70;
        wait(killstreakbundle.var_f5f02f46);
        var_4122ca21 -= killstreakbundle.var_f5f02f46;
        level function_f712ec5e();
    }
    foreach (player in level.napalmstrike.affectedplayers) {
        player function_1db9aa5e();
    }
    level.napalmstrike.damagewatcher = undefined;
    level.napalmstrike.affectedplayers = [];
}

// Namespace napalm_strike/namespace_b00a727a
// Params 0, eflags: 0x2 linked
// Checksum 0xb6433749, Offset: 0x30a8
// Size: 0x4c
function function_1db9aa5e() {
    params = getstatuseffect("dot_napalm_strike");
    self status_effect::function_408158ef(params.setype, params.var_18d16a6b);
}

// Namespace napalm_strike/namespace_b00a727a
// Params 0, eflags: 0x6 linked
// Checksum 0x10d90d87, Offset: 0x3100
// Size: 0x54
function private stopfiresound() {
    firesound = self;
    firesound stoploopsound(2);
    wait(0.5);
    if (isdefined(firesound)) {
        firesound delete();
    }
}

// Namespace napalm_strike/namespace_b00a727a
// Params 2, eflags: 0x6 linked
// Checksum 0xb5580aee, Offset: 0x3160
// Size: 0x230
function private getpotentialtargets(var_93057333, var_e9c2375d) {
    position = var_93057333.damageposition;
    if (level.friendlyfire) {
        players = function_a1ef346b(undefined, position, var_e9c2375d);
    } else {
        players = function_f6f34851(var_93057333.team, position, var_e9c2375d);
        owner = var_93057333.owner;
        if (isdefined(owner) && distancesquared(owner.origin, position) < var_e9c2375d * var_e9c2375d) {
            players[players.size] = owner;
        }
    }
    potentialtargets = [];
    foreach (player in players) {
        potentialtargets[player getentitynumber()] = player;
    }
    if (sessionmodeiszombiesgame()) {
        zombies = getentitiesinradius(position, var_e9c2375d, 15);
        foreach (zombie in zombies) {
            potentialtargets[zombie getentitynumber()] = zombie;
        }
    }
    return potentialtargets;
}

// Namespace napalm_strike/namespace_b00a727a
// Params 3, eflags: 0x2 linked
// Checksum 0xac0a898, Offset: 0x3398
// Size: 0xcc
function function_4cf0607d(var_93057333, weapon, killstreakbundle) {
    self endon(#"death");
    if (candofiredamage(self, killstreakbundle.var_f5f02f46)) {
        params = getstatuseffect("dot_napalm_strike");
        params.killcament = var_93057333.killcament;
        self status_effect::status_effect_apply(params, weapon, var_93057333.owner, 0, undefined, undefined, var_93057333.damageposition);
        self thread sndfiredamage();
    }
}

// Namespace napalm_strike/namespace_b00a727a
// Params 3, eflags: 0x2 linked
// Checksum 0xca4690c1, Offset: 0x3470
// Size: 0xbc
function function_2f66cd96(var_93057333, weapon, killstreakbundle) {
    self endon(#"death");
    if (candofiredamage(self, killstreakbundle.var_d386b690)) {
        var_341dfe48 = int(killstreakbundle.var_cb733212 * killstreakbundle.var_d386b690);
        self dodamage(var_341dfe48, self.origin, var_93057333.owner, weapon, "none", "MOD_BURNED", 0, weapon);
    }
}

// Namespace napalm_strike/namespace_b00a727a
// Params 2, eflags: 0x6 linked
// Checksum 0x287a3fdd, Offset: 0x3538
// Size: 0xbc
function private candofiredamage(victim, resetfiretime) {
    if (isplayer(victim) && victim depthofplayerinwater() >= 1) {
        return false;
    }
    entnum = victim getentitynumber();
    if (!isdefined(level.var_b0b0650e[entnum])) {
        level.var_b0b0650e[entnum] = 1;
        level thread resetfiredamage(entnum, resetfiretime);
        return true;
    }
    return false;
}

// Namespace napalm_strike/namespace_b00a727a
// Params 2, eflags: 0x6 linked
// Checksum 0xd86a11cd, Offset: 0x3600
// Size: 0x40
function private resetfiredamage(entnum, time) {
    if (time > 0.05) {
        wait(time - 0.05);
    }
    level.var_b0b0650e[entnum] = undefined;
}

// Namespace napalm_strike/namespace_b00a727a
// Params 0, eflags: 0x6 linked
// Checksum 0xaeb64cc4, Offset: 0x3648
// Size: 0x13e
function private sndfiredamage() {
    self notify(#"sndfire");
    self endon(#"sndfire", #"death");
    if (!isdefined(self.sndfireent)) {
        self.sndfireent = spawn("script_origin", self.origin);
        self.sndfireent linkto(self, "tag_origin");
        self.sndfireent playsound(#"chr_burn_start");
        self thread sndfiredamage_deleteent(self.sndfireent);
    }
    self.sndfireent playloopsound(#"chr_burn_start_loop", 0.5);
    wait(3);
    if (isdefined(self.sndfireent)) {
        self.sndfireent delete();
        self.sndfireent = undefined;
    }
}

// Namespace napalm_strike/namespace_b00a727a
// Params 1, eflags: 0x6 linked
// Checksum 0xea155e1b, Offset: 0x3790
// Size: 0x3c
function private sndfiredamage_deleteent(ent) {
    self waittill(#"death");
    if (isdefined(ent)) {
        ent delete();
    }
}

// Namespace napalm_strike/namespace_b00a727a
// Params 2, eflags: 0x6 linked
// Checksum 0x9bea6eb1, Offset: 0x37d8
// Size: 0x11c
function private function_5e2b9745(*attacker, *weapon) {
    bundlename = sessionmodeiszombiesgame() ? "napalm_strike_zm" : "napalm_strike";
    self playsound(#"exp_veh_large");
    bundle = killstreaks::get_script_bundle(bundlename);
    if (isdefined(bundle.ksexplosionfx)) {
        playfxontag(bundle.ksexplosionfx, self, "tag_origin");
    }
    self setmodel(#"tag_origin");
    self unlink();
    wait(0.5);
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace napalm_strike/namespace_b00a727a
// Params 2, eflags: 0x6 linked
// Checksum 0xebb37b5, Offset: 0x3900
// Size: 0x9c
function private function_7f88b108(*attacker, *weapon) {
    bundlename = sessionmodeiszombiesgame() ? "napalm_strike_zm" : "napalm_strike";
    bundle = killstreaks::get_script_bundle(bundlename);
    if (isdefined(bundle.fxlowhealth)) {
        playfxontag(bundle.fxlowhealth, self, "tag_origin");
    }
}

