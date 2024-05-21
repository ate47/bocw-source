// Atian COD Tools GSC CW decompiler test
#using script_1d0f884737f7cbe8;
#using scripts\mp_common\util.gsc;
#using scripts\core_common\battlechatter.gsc;
#using scripts\weapons\heatseekingmissile.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\targetting_delay.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\killcam_shared.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using script_4721de209091b1a6;
#using scripts\killstreaks\killstreak_bundles.gsc;
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\killstreaks\airsupport.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using script_396f7d71538c9677;
#using script_3819e7a1427df6d2;

#namespace straferun;

// Namespace straferun/straferun
// Params 0, eflags: 0x5
// Checksum 0x6b170032, Offset: 0x5c8
// Size: 0x64
function private autoexec __init__system__() {
    system::register(#"straferun", &preinit, &postinit, &function_3675de8b, #"killstreaks");
}

// Namespace straferun/straferun
// Params 0, eflags: 0x6 linked
// Checksum 0x242a2228, Offset: 0x638
// Size: 0x22c
function private preinit() {
    level.straferunnumrockets = 2;
    level.var_e8d7c111 = 8;
    level.straferunrocketdelay = 0.35;
    level.straferungunlookahead = 4000;
    level.straferungunoffset = -800;
    level.straferungunradius = 500;
    level.straferunexitunits = 20000;
    level.straferunmaxstrafes = 4;
    level.straferunflaredelay = 2;
    level.straferunshellshockduration = 2.5;
    level.straferunshellshockradius = 512;
    level.straferunkillsbeforeexit = 10;
    level.straferunnumkillcams = 5;
    level.straferunmodel = "veh_t6_air_a10f";
    level.straferunmodelenemy = #"hash_771795fd7b9b3033";
    level.straferunvehicle = "vehicle_straferun_mp";
    level.straferungunweapon = getweapon(#"straferun_gun");
    level.straferungunsound = "wpn_a10_shot_loop_npc";
    level.straferunrocketweapon = getweapon(#"straferun_rockets");
    level.straferunrockettags = [];
    level.straferunrockettags[0] = "tag_attach_hardpoint_1";
    level.straferunrockettags[1] = "tag_attach_hardpoint_9";
    level.straferunrockettags[2] = "tag_attach_hardpoint_2";
    level.straferunrockettags[3] = "tag_attach_hardpoint_8";
    level.straferunexplodesound = "evt_helicopter_midair_exp";
    level.straferunshellshock = "straferun";
    createkillcams(level.straferunnumkillcams, level.straferunnumrockets);
    killcam::function_2f7579f(#"straferun_gun");
}

// Namespace straferun/straferun
// Params 0, eflags: 0x6 linked
// Checksum 0xe06f73c3, Offset: 0x870
// Size: 0x1c4
function private postinit() {
    bundle_name = killstreaks::function_e2c3bda3("straferun", "killstreak_straferun");
    killstreaks::register_killstreak(bundle_name, &usekillstreakstraferun);
    level.var_14fa3231 = [];
    var_99f22d3c = level.var_14fa3231;
    var_99f22d3c[var_99f22d3c.size] = {#targetname:"chopper", #var_d3413870:"helicopter_comlink", #var_4c13f1ac:"inventory_helicopter_comlink"};
    var_99f22d3c[var_99f22d3c.size] = {#targetname:"chopper", #var_d3413870:"supply_drop", #var_4c13f1ac:"inventory_supply_drop"};
    var_99f22d3c[var_99f22d3c.size] = {#targetname:"chopper_gunner"};
    var_99f22d3c[var_99f22d3c.size] = {#targetname:"napalm_strike"};
    var_99f22d3c[var_99f22d3c.size] = {#targetname:"uav"};
    var_99f22d3c[var_99f22d3c.size] = {#targetname:"counteruav"};
    level.var_53bed697 = [];
}

// Namespace straferun/straferun
// Params 0, eflags: 0x2 linked
// Checksum 0x1a5c56d6, Offset: 0xa40
// Size: 0x48
function function_3675de8b() {
    if (isdefined(level.var_1b900c1d)) {
        [[ level.var_1b900c1d ]](getweapon("straferun"), &function_bff5c062);
    }
}

// Namespace straferun/straferun
// Params 2, eflags: 0x2 linked
// Checksum 0xeabc45da, Offset: 0xa90
// Size: 0x64
function function_bff5c062(var_c4b91241, attackingplayer) {
    var_c4b91241 killstreaks::function_73566ec7(attackingplayer, getweapon(#"gadget_icepick"), var_c4b91241.owner);
    var_c4b91241 thread explode();
}

// Namespace straferun/straferun
// Params 1, eflags: 0x2 linked
// Checksum 0x9217356d, Offset: 0xb00
// Size: 0x16a
function usekillstreakstraferun(hardpointtype) {
    bundle = killstreaks::get_script_bundle("straferun");
    if (self killstreakrules::iskillstreakallowed(hardpointtype, self.team) == 0) {
        return 0;
    }
    self airsupport::function_9e2054b0(&beginlocationselection);
    if (is_true(bundle.var_7436c1c5) && !is_true(self.pers[#"hash_7b70f0ba82b19814"])) {
        self thread airsupport::singleradarsweep();
    }
    location = self airsupport::waitforlocationselection();
    if (!isdefined(self)) {
        return 0;
    }
    if (!isdefined(location.origin)) {
        self.pers[#"hash_7b70f0ba82b19814"] = 1;
        return 0;
    }
    self.pers[#"hash_7b70f0ba82b19814"] = 0;
    return self airsupport::function_83904681(location, &function_3d070ab6, hardpointtype);
}

// Namespace straferun/straferun
// Params 0, eflags: 0x2 linked
// Checksum 0xf2282886, Offset: 0xc78
// Size: 0x6c
function beginlocationselection() {
    bundle = killstreaks::get_script_bundle("straferun");
    self beginlocationairstrikeselection("lui_napalm_strike", (isdefined(bundle.var_a2daa406) ? bundle.var_a2daa406 : 3000) * 0.5);
}

// Namespace straferun/straferun
// Params 3, eflags: 0x2 linked
// Checksum 0x7e53ab1, Offset: 0xcf0
// Size: 0x82
function function_3d070ab6(location, killstreak_id, hardpointtype) {
    profilestart();
    killstreak_started = self function_db619336(hardpointtype, killstreak_id, location);
    if (!killstreak_started && killstreak_id != -1) {
        killstreakrules::killstreakstop(hardpointtype, self.team, killstreak_id);
    }
    profilestop();
    return killstreak_started;
}

// Namespace straferun/straferun
// Params 3, eflags: 0x2 linked
// Checksum 0x8f8169bf, Offset: 0xd80
// Size: 0x348
function function_db619336(hardpointtype, killstreak_id, location) {
    if (sessionmodeiswarzonegame()) {
        position = location.origin;
        trace = bullettrace(position + (0, 0, 10000), position - (0, 0, 10000), 0, undefined);
        targetpoint = trace[#"fraction"] > 1 ? (position[0], position[1], 0) : trace[#"position"];
        var_b0490eb9 = getheliheightlockheight(position);
        groundheight = trace[#"position"][2];
        bundle = killstreaks::get_script_bundle("straferun");
        heightoverride = groundheight + (var_b0490eb9 - groundheight) * bundle.var_ff73e08c;
    }
    planea = function_1e30e51e(hardpointtype, killstreak_id, location, #"hash_1dfff61be0d43f2d", "warthog_strafe1_a_start", "warthog_strafe1_pivot_a", (0, 0, 0), heightoverride);
    if (!isdefined(planea)) {
        return false;
    }
    planeb = function_1e30e51e(hardpointtype, killstreak_id, location, #"hash_1dfff31be0d43a14", "warthog_strafe1_b_start", "warthog_strafe1_pivot_b", (200, 200, 50), heightoverride);
    if (!isdefined(planeb)) {
        planea thread explode();
        return false;
    }
    planea.var_14494df9 = 1;
    planea.var_3971b935 = planeb;
    planeb.pilotindex = planea.pilotindex;
    if (!isdefined(level.var_fda44f3d)) {
        level.var_fda44f3d = [];
    }
    if (!isdefined(level.var_996bc142)) {
        level.var_996bc142 = [];
    }
    if (!isdefined(level.var_32934cf9)) {
        level.var_32934cf9 = [];
    }
    level.var_fda44f3d[killstreak_id] = killstreak_id;
    level.var_996bc142[killstreak_id] = 2;
    level.var_32934cf9[killstreak_id] = 0;
    self stats::function_e24eec31(getweapon(#"straferun"), #"used", 1);
    planea thread function_51f5c557(self);
    return true;
}

// Namespace straferun/straferun
// Params 8, eflags: 0x2 linked
// Checksum 0x96240419, Offset: 0x10d0
// Size: 0x8c0
function function_1e30e51e(hardpointtype, killstreak_id, location, var_a6b1bda0, start_node_name, var_9c00e6d8, var_49d19de7, var_e4c839a6) {
    startnode = getvehiclenode(start_node_name, "targetname");
    if (!isdefined(startnode)) {
        startnode = getvehiclenode("warthog_start", "targetname");
    }
    if (!isdefined(startnode)) {
        println("kill3");
        return undefined;
    }
    /#
        if (level.var_5bd68a8f === 1) {
            return undefined;
        }
    #/
    plane = spawnvehicle(level.straferunvehicle, startnode.origin, (0, 0, 0), "straferun");
    if (!isdefined(plane)) {
        println("<unknown string>");
        return undefined;
    }
    plane clientfield::set("scorestreakActive", 1);
    plane.var_739aa202 = var_a6b1bda0;
    var_6f0661aa = plane.var_739aa202 == #"hash_1dfff61be0d43f2d";
    plane.attackers = [];
    plane.attackerdata = [];
    plane.attackerdamage = [];
    plane.flareattackerdamage = [];
    plane killstreaks::configure_team(hardpointtype, killstreak_id, self);
    plane setenemymodel(level.straferunmodelenemy);
    plane makevehicleunusable();
    plane thread cleanupondeath(plane.team, hardpointtype);
    plane.health = 999999;
    plane.maxhealth = 999999;
    plane clientfield::set("enemyvehicle", 1);
    plane.targetname = "strafePlane";
    plane.identifier_weapon = getweapon("straferun");
    plane.numstrafes = 0;
    plane.numflares = 1;
    plane.soundmod = "straferun";
    plane setdrawinfrared(1);
    plane setforcenocull();
    self.straferunkills = 0;
    self.straferunbda = 0;
    plane thread function_d4896942();
    target_set(plane, (0, 0, 0));
    plane.gunsoundentity = spawn("script_model", plane gettagorigin("tag_flash"));
    plane.gunsoundentity linkto(plane, "tag_flash", (0, 0, 0), (0, 0, 0));
    if (!issentient(plane)) {
        plane util::make_sentient();
        plane.ignoreme = 1;
    }
    plane.killcament = spawn("script_model", plane.origin + (0, 0, 700));
    plane.killcament setfovforkillcam(25);
    plane.killcament.angles = (15, 0, 0);
    plane.killcament.starttime = gettime();
    offset_x = getdvarint(#"hash_6354a081bacd5b72", -600);
    offset_y = getdvarint(#"hash_6354a181bacd5d25", 0);
    offset_z = getdvarint(#"hash_63549e81bacd580c", 200);
    offset_pitch = getdvarint(#"hash_53fdb5b01cf6f7dc", 8);
    plane.killcament linkto(plane, "tag_origin", (offset_x, offset_y, offset_z), (offset_pitch, 0, 0));
    plane.killcament setweapon(level.straferungunweapon);
    plane resetkillcams();
    plane thread watchforotherkillstreaks();
    bundle = getscriptbundle(killstreaks::function_e2c3bda3("straferun", "killstreak_straferun"));
    plane thread watchforkills();
    plane thread watchdamage(bundle);
    plane thread dostraferuns(bundle, var_a6b1bda0, hardpointtype);
    pivot = struct::get(var_9c00e6d8, "targetname");
    if (isdefined(pivot)) {
        var_1c847d0f = pivot.origin;
        var_dda93e6c = pivot.angles;
    }
    if (!isdefined(var_1c847d0f)) {
        var_1c847d0f = level.mapcenter;
    }
    if (!isdefined(var_dda93e6c)) {
        var_dda93e6c = (0, 90, 0);
    }
    var_b818f98a = structcopy(location);
    var_b818f98a.origin += var_49d19de7;
    plane vehicle::function_bb9b43a9(startnode, var_1c847d0f, var_dda93e6c, var_b818f98a, var_e4c839a6);
    plane.killbox = [];
    plane.killbox[#"origin"] = var_b818f98a.origin;
    plane.killbox[#"angles"] = (0, var_b818f98a.yaw, 0);
    plane thread vehicle::get_on_and_go_path(startnode);
    plane thread heatseekingmissile::missiletarget_proximitydetonateincomingmissile(bundle, "death");
    plane thread watchforownerexit(self);
    plane thread targetting_delay::function_7e1a12ce(12000);
    if (var_6f0661aa) {
        plane killstreakrules::function_2e6ff61a(hardpointtype, killstreak_id, {#origin:var_b818f98a.origin, #team:plane.team});
        util::function_a3f7de13(21, self.team, self getentitynumber(), level.killstreaks[#"straferun"].uiname);
    }
    aiutility::addaioverridedamagecallback(plane, &function_16abaea4);
    if (var_6f0661aa) {
        plane killstreaks::function_b182645e(self, hardpointtype);
    }
    return plane;
}

// Namespace straferun/straferun
// Params 16, eflags: 0x2 linked
// Checksum 0x4b259993, Offset: 0x1998
// Size: 0xfa
function function_16abaea4(*inflictor, attacker, damage, idflags, meansofdeath, weapon, *var_fd90b0bb, *point, *dir, *hitloc, *vdamageorigin, *psoffsettime, *damagefromunderneath, *modelindex, *partname, *vsurfacenormal) {
    chargelevel = 0;
    weapon_damage = killstreak_bundles::get_weapon_damage("straferun", self.maxhealth, psoffsettime, vsurfacenormal, partname, damagefromunderneath, modelindex, chargelevel);
    if (!isdefined(weapon_damage)) {
        weapon_damage = killstreaks::get_old_damage(psoffsettime, vsurfacenormal, partname, damagefromunderneath, 1);
    }
    return weapon_damage;
}

// Namespace straferun/straferun
// Params 0, eflags: 0x0
// Checksum 0x218f4663, Offset: 0x1aa0
// Size: 0xac
function playcontrail() {
    self endon(#"death");
    wait(0.1);
    params = getscriptbundle(killstreaks::function_e2c3bda3("straferun", "killstreak_straferun"));
    playfxontag(params.var_47592079, self, "tag_origin");
    self playloopsound(#"veh_a10_engine_loop", 1);
}

// Namespace straferun/straferun
// Params 2, eflags: 0x2 linked
// Checksum 0xdb9e6532, Offset: 0x1b58
// Size: 0x16e
function cleanupondeath(team, hardpointtype) {
    self waittill(#"death");
    if (self.var_14494df9 === 1 && isdefined(self.var_3971b935)) {
        self.var_3971b935.var_14494df9 = 1;
    }
    var_e130ebce = 1;
    if (isdefined(level.var_996bc142[self.killstreakid])) {
        level.var_996bc142[self.killstreakid]--;
        if (level.var_996bc142[self.killstreakid] > 0) {
            var_e130ebce = 0;
        }
    }
    if (var_e130ebce && !isdefined(level.var_fda44f3d[self.killstreakid])) {
        var_e130ebce = 0;
    }
    if (var_e130ebce) {
        killstreakrules::killstreakstop(hardpointtype, team, self.killstreakid);
        level.var_fda44f3d[self.killstreakid] = undefined;
        level.var_53bed697[self.killstreakid] = undefined;
    }
    if (isdefined(self.gunsoundentity)) {
        self.gunsoundentity stoploopsound();
        self.gunsoundentity delete();
        self.gunsoundentity = undefined;
    }
}

// Namespace straferun/straferun
// Params 1, eflags: 0x2 linked
// Checksum 0x6d4d5027, Offset: 0x1cd0
// Size: 0x3a2
function watchdamage(bundle) {
    self endon(#"death");
    self.maxhealth = 999999;
    self.health = self.maxhealth;
    self.maxhealth = isdefined(bundle.kshealth) ? bundle.kshealth : 100;
    low_health = 0;
    damage_taken = 0;
    for (;;) {
        waitresult = self waittill(#"damage");
        attacker = waitresult.attacker;
        mod = waitresult.mod;
        damage = waitresult.amount;
        weapon = waitresult.weapon;
        if (!isdefined(attacker) || !isplayer(attacker)) {
            continue;
        }
        /#
            self.damage_debug = damage + "<unknown string>" + weapon.name + "<unknown string>";
        #/
        if (!isdefined(weapon) || weapon.rootweapon != getweapon(#"tr_flechette_t8")) {
            if (mod == "MOD_PROJECTILE" || mod == "MOD_PROJECTILE_SPLASH" || mod == "MOD_EXPLOSIVE") {
                damage += isdefined(bundle.kshealth) ? bundle.kshealth : 100;
            }
        }
        if (!issentient(self) && damage > 0) {
            self.attacker = attacker;
        }
        damage_taken += damage;
        if (damage_taken >= (isdefined(bundle.kshealth) ? bundle.kshealth : 100)) {
            self thread explode();
            self.var_d02ddb8e = weapon;
            var_d63ac213 = 0;
            if (isdefined(level.var_32934cf9[self.killstreakid])) {
                level.var_32934cf9[self.killstreakid]++;
                if (level.var_32934cf9[self.killstreakid] >= 2) {
                    var_d63ac213 = 1;
                }
            }
            if (self.owner util::isenemyplayer(attacker)) {
                self killstreaks::function_73566ec7(attacker, weapon, self.owner);
                challenges::destroyedaircraft(attacker, weapon, 0, self, 1);
                attacker challenges::addflyswatterstat(weapon, self);
                if (var_d63ac213) {
                    attacker battlechatter::function_eebf94f6("straferun", weapon);
                    self namespace_f9b02f80::play_destroyed_dialog_on_owner("straferun", self.killstreakid);
                }
            }
            return;
        }
    }
}

// Namespace straferun/straferun
// Params 0, eflags: 0x2 linked
// Checksum 0xc93d5fe, Offset: 0x2080
// Size: 0x13e
function watchforotherkillstreaks() {
    self endon(#"death");
    for (;;) {
        waitresult = level waittill(#"killstreak_started");
        killstreaktype = waitresult.killstreaktype;
        teamname = waitresult.team;
        attacker = waitresult.attacker;
        if (!isdefined(self.owner)) {
            self thread explode();
            return;
        }
        if (killstreaktype == "emp") {
            if (self.owner util::isenemyplayer(attacker)) {
                self thread explode();
                attacker challenges::addflyswatterstat(killstreaktype, self);
                return;
            }
            continue;
        }
        if (killstreaktype == "missile_swarm") {
            if (self.owner util::isenemyplayer(attacker)) {
                self.leavenexttime = 1;
            }
        }
    }
}

// Namespace straferun/straferun
// Params 0, eflags: 0x2 linked
// Checksum 0x14041235, Offset: 0x21c8
// Size: 0x5e
function watchforkills() {
    self endon(#"death");
    for (;;) {
        waitresult = self waittill(#"killed");
        if (isplayer(waitresult.victim)) {
        }
    }
}

// Namespace straferun/straferun
// Params 1, eflags: 0x2 linked
// Checksum 0x46303a7a, Offset: 0x2230
// Size: 0x62
function watchforownerexit(owner) {
    self endon(#"death");
    owner waittill(#"disconnect", #"joined_team", #"joined_spectators");
    self.leavenexttime = 1;
}

// Namespace straferun/straferun
// Params 0, eflags: 0x0
// Checksum 0xc4134a7b, Offset: 0x22a0
// Size: 0x24
function addstraferunkill() {
    if (!isdefined(self.straferunkills)) {
        self.straferunkills = 0;
    }
    self.straferunkills++;
}

// Namespace straferun/straferun
// Params 3, eflags: 0x2 linked
// Checksum 0xf753810f, Offset: 0x22d0
// Size: 0x410
function dostraferuns(bundle, var_a6b1bda0, hardpointtype) {
    self endon(#"death");
    self.var_23493b54 = 0;
    for (;;) {
        waitresult = self waittill(#"noteworthy");
        noteworthy = waitresult.noteworthy;
        noteworthynode = waitresult.noteworthy_node;
        if (noteworthy == "strafe_start") {
            self.straferungunlookahead = level.straferungunlookahead;
            self.straferungunradius = level.straferungunradius;
            self.straferungunoffset = level.straferungunoffset;
            self.var_90110858 = 0;
            /#
                self.straferungunlookahead = getdvarint(#"scr_straferunlookahead", level.straferungunlookahead);
                self.straferungunradius = getdvarint(#"scr_straferunradius", level.straferungunradius);
                self.straferungunoffset = getdvarint(#"scr_straferunoffset", level.straferungunoffset);
            #/
            if (isdefined(noteworthynode)) {
                if (isdefined(noteworthynode.script_parameters)) {
                    self.straferungunlookahead = float(noteworthynode.script_parameters);
                }
                if (isdefined(noteworthynode.script_radius)) {
                    self.straferungunradius = float(noteworthynode.script_radius);
                }
                if (isdefined(noteworthynode.script_float)) {
                    self.straferungunoffset = float(noteworthynode.script_float);
                }
            }
            if (isdefined(self.owner)) {
                if (isdefined(bundle.var_d483e967) ? bundle.var_d483e967 : 0) {
                    self thread function_ec6320ce(bundle, var_a6b1bda0);
                } else {
                    self thread startstrafe();
                }
            }
            if (true) {
                self thread firerockets();
            }
            continue;
        }
        if (noteworthy == "strafe_stop") {
            if (!(isdefined(bundle.var_d483e967) ? bundle.var_d483e967 : 0)) {
                self stopstrafe();
            }
            continue;
        }
        if (noteworthy == "strafe_leave") {
            if (self shouldleavemap()) {
                self thread leavemap(hardpointtype);
            }
            continue;
        }
        if (noteworthy == "fire_rockets") {
            if (true) {
                self thread firerockets();
            }
            continue;
        }
        if (noteworthy == "wave_start") {
            if (isdefined(self) && self.var_14494df9 === 1 && !is_true(self.leavenexttime)) {
                if (self.numstrafes == level.straferunmaxstrafes - 1) {
                    self namespace_f9b02f80::play_pilot_dialog_on_owner("waveStartFinal", "straferun", self.killstreakid);
                    continue;
                }
                self namespace_f9b02f80::play_pilot_dialog_on_owner("waveStart", "straferun", self.killstreakid);
            }
        }
    }
}

// Namespace straferun/straferun
// Params 0, eflags: 0x2 linked
// Checksum 0xf20c1b73, Offset: 0x26e8
// Size: 0x90
function function_d4896942() {
    self endon(#"death", #"strafe_stop");
    while (true) {
        self waittill(#"flare_deployed");
        if (!is_true(self.leavenexttime)) {
            self namespace_f9b02f80::play_pilot_dialog_on_owner("damageEvaded", "straferun", self.killstreakid);
        }
    }
}

// Namespace straferun/straferun
// Params 0, eflags: 0x2 linked
// Checksum 0x20fbd933, Offset: 0x2780
// Size: 0x36a
function startstrafe() {
    self endon(#"death", #"strafe_stop");
    if (isdefined(self.strafing)) {
        iprintlnbold("TRYING TO STRAFE WHEN ALREADY STRAFING!\n");
        return;
    }
    self.strafing = 1;
    count = 0;
    weaponshoottime = level.straferungunweapon.firetime;
    for (;;) {
        gunorigin = self gettagorigin("tag_flash");
        gunorigin += (0, 0, self.straferungunoffset);
        forward = anglestoforward(self.angles);
        forwardnoz = vectornormalize((forward[0], forward[1], 0));
        right = vectorcross(forwardnoz, (0, 0, 1));
        perfectattackstartvector = gunorigin + vectorscale(forwardnoz, self.straferungunlookahead);
        attackstartvector = perfectattackstartvector + vectorscale(right, randomfloatrange(0 - self.straferungunradius, self.straferungunradius));
        trace = bullettrace(attackstartvector, (attackstartvector[0], attackstartvector[1], -500), 0, self, 0);
        self turretsettarget(0, trace[#"position"]);
        self fireweapon();
        self shellshockplayers(trace[#"position"]);
        /#
            if (getdvarint(#"scr_devstraferunbulletsdebugdraw", 0)) {
                time = 300;
                airsupport::debug_line(attackstartvector, trace[#"position"] - (0, 0, 20), (1, 0, 0), time, 0);
                if (count % 30 == 0) {
                    trace = bullettrace(perfectattackstartvector, (perfectattackstartvector[0], perfectattackstartvector[1], -100000), 0, self, 0, 1);
                    airsupport::debug_line(trace[#"position"] + (0, 0, 20), trace[#"position"] - (0, 0, 20), (0, 0, 1), time, 0);
                }
            }
        #/
        count++;
        wait(weaponshoottime);
    }
}

// Namespace straferun/straferun
// Params 2, eflags: 0x2 linked
// Checksum 0x697d6b36, Offset: 0x2af8
// Size: 0x40c
function function_ec6320ce(bundle, var_a6b1bda0) {
    self endon(#"death");
    if (isdefined(self.strafing)) {
        iprintlnbold("TRYING TO STRAFE WHEN ALREADY STRAFING!\n");
        return;
    }
    self.strafing = 1;
    self.var_23493b54++;
    var_6a6f2e87 = self.killbox[#"origin"];
    trace_results = bullettrace((var_6a6f2e87[0], var_6a6f2e87[1], 5000), (var_6a6f2e87[0], var_6a6f2e87[1], -5000), 0, undefined, 0, 1);
    var_6a6f2e87 = (var_6a6f2e87[0], var_6a6f2e87[1], trace_results[#"position"][2]);
    var_5455cb95 = anglestoforward((0, self.angles[1], 0));
    var_f6fe02b9 = vectorcross(var_5455cb95, (0, 0, 1));
    var_b01435f6 = vectorscale(var_5455cb95, isdefined(bundle.var_a2daa406) ? bundle.var_a2daa406 : 1000);
    var_9ec4e10e = var_6a6f2e87 - var_b01435f6 * 0.5;
    var_d7e70604 = bundle.var_66cb3945;
    weaponshoottime = max(level.straferungunweapon.firetime, 0.05);
    var_acb6bcc8 = gettime();
    var_6703392b = isdefined(bundle.var_e479aa7d) ? bundle.var_e479aa7d : 1000;
    for (;;) {
        gunorigin = self gettagorigin("tag_flash");
        gunorigin += (0, 0, self.straferungunoffset);
        var_af2dc9d2 = (gettime() - var_acb6bcc8) / var_6703392b;
        if (var_af2dc9d2 > 1) {
            break;
        }
        var_47f1292b = var_9ec4e10e + vectorscale(var_b01435f6, var_af2dc9d2);
        var_b3a734d8 = isdefined(bundle.var_a6bb5503) ? bundle.var_a6bb5503 : level.straferungunradius;
        if (var_a6b1bda0 == #"hash_1dfff61be0d43f2d") {
            var_47f1292b += vectorscale(var_f6fe02b9, var_d7e70604 + randomfloatrange(var_b3a734d8 * -1, var_b3a734d8));
        } else {
            var_47f1292b -= vectorscale(var_f6fe02b9, var_d7e70604 + randomfloatrange(var_b3a734d8 * -1, var_b3a734d8));
        }
        /#
            if (getdvarint(#"scr_devstraferunbulletsdebugdraw", 0)) {
                sphere(var_47f1292b, 10, (1, 0, 0), 0.8, 0, 20, 180);
            }
        #/
        self turretsettarget(0, var_47f1292b);
        self fireweapon();
        self shellshockplayers(var_47f1292b);
        wait(weaponshoottime);
    }
    self stopstrafe();
}

// Namespace straferun/straferun
// Params 0, eflags: 0x2 linked
// Checksum 0x15da0476, Offset: 0x2f10
// Size: 0x2a0
function firerockets() {
    if (!isdefined(self.var_577f39f7)) {
        self.var_577f39f7 = 0;
    }
    if (self.var_577f39f7 >= level.var_e8d7c111) {
        return;
    }
    self notify(#"firing_rockets");
    self endon(#"death", #"strafe_stop", #"firing_rockets");
    if (isdefined(self.owner)) {
        self.owner endon(#"disconnect");
    }
    forward = anglestoforward(self.angles);
    for (rocketindex = 0; rocketindex < level.straferunnumrockets; rocketindex++) {
        if (self.var_577f39f7 >= level.var_e8d7c111) {
            return;
        }
        best_target = self function_f7055dec();
        if (!isdefined(best_target)) {
            return;
        }
        rockettag = level.straferunrockettags[rocketindex % level.straferunrockettags.size];
        rocketorigin = self gettagorigin(rockettag);
        targetorigin = deadrecontargetorigin(rocketorigin, best_target);
        rocketorigin = self gettagorigin(rockettag);
        rocket = magicbullet(level.straferunrocketweapon, rocketorigin, rocketorigin + forward, self);
        self.var_577f39f7++;
        rocket missile_settarget(best_target, (0, 0, 0));
        rocket.soundmod = "straferun";
        rocket attachkillcamtorocket(level.straferunkillcams[self.var_739aa202].rockets[rocketindex], best_target, targetorigin);
        /#
            if (getdvarint(#"scr_devstraferunkillcamsdebugdraw", 0)) {
                rocket thread airsupport::debug_draw_bomb_path(undefined, (0, 0.5, 0), 400);
            }
        #/
        wait(level.straferunrocketdelay);
    }
}

// Namespace straferun/straferun
// Params 0, eflags: 0x2 linked
// Checksum 0xc8fa0ff7, Offset: 0x31b8
// Size: 0xd8
function stopstrafe() {
    self notify(#"strafe_stop");
    self.strafing = undefined;
    self thread resetkillcams(3);
    self turretcleartarget(0);
    owner = self.owner;
    if (!isdefined(owner)) {
        return;
    }
    if (self.var_14494df9 === 1) {
        self thread function_1fb394ba(owner);
    }
    self.gunsoundentity stoploopsound();
    self.gunsoundentity playsound(#"wpn_a10_shot_decay_npc");
    self.numstrafes++;
}

// Namespace straferun/straferun
// Params 1, eflags: 0x2 linked
// Checksum 0x2cc0de6a, Offset: 0x3298
// Size: 0x250
function function_1fb394ba(owner) {
    self endon(#"death", #"hacked", #"hash_410e7050279b0b25");
    owner endon(#"death");
    wait(1);
    if (!isdefined(self) || !isdefined(owner)) {
        return;
    }
    if (owner.("straferun" + "_killAircraft") === 1) {
        bdadialog = "killAircraft";
    } else if (owner.("straferun" + "_killGroundVehicle") === 1) {
        bdadialog = "killGroundVehicle";
    } else if (owner.straferunbda == 0) {
        if (owner.("straferun" + "_hitconfirmed") === 1) {
            bdadialog = "hitConfirmed_p0";
        } else {
            bdadialog = "killNone";
        }
    } else if (owner.straferunbda == 1) {
        bdadialog = "kill1";
    } else if (owner.straferunbda == 2) {
        bdadialog = "kill2";
    } else if (owner.straferunbda == 3) {
        bdadialog = "kill3";
    } else if (owner.straferunbda > 3) {
        bdadialog = "killMultiple";
    }
    if (isdefined(bdadialog) && !is_true(self.leavenexttime)) {
        self namespace_f9b02f80::play_pilot_dialog_on_owner(bdadialog, "straferun", self.killstreakid);
    }
    owner.straferunbda = 0;
    owner.("straferun" + "_killAircraft") = undefined;
    owner.("straferun" + "_killGroundVehicle") = undefined;
    owner.("straferun" + "_hitconfirmed") = undefined;
}

// Namespace straferun/straferun
// Params 1, eflags: 0x2 linked
// Checksum 0x7cb08033, Offset: 0x34f0
// Size: 0x8c
function function_51f5c557(owner) {
    self endon(#"death", #"hacked", #"hash_410e7050279b0b25");
    wait(0.3);
    if (!isdefined(self) || !isdefined(owner)) {
        return;
    }
    namespace_f9b02f80::play_pilot_dialog_on_owner("arrive", "straferun", self.killstreakid);
}

// Namespace straferun/straferun
// Params 0, eflags: 0x2 linked
// Checksum 0xeff5fd05, Offset: 0x3588
// Size: 0x76
function shouldleavemap() {
    if (isdefined(self.leavenexttime) && self.leavenexttime) {
        return true;
    }
    if (self.numstrafes >= level.straferunmaxstrafes) {
        return true;
    }
    if (!isdefined(self.owner) || self.owner.straferunkills >= level.straferunkillsbeforeexit) {
        return true;
    }
    return false;
}

// Namespace straferun/straferun
// Params 1, eflags: 0x2 linked
// Checksum 0xc2c2dbc4, Offset: 0x3608
// Size: 0x26c
function leavemap(hardpointtype) {
    self unlinkkillcams();
    exitorigin = self.origin + vectorscale(anglestoforward(self.angles), level.straferunexitunits);
    self setyawspeed(5, 999, 999);
    self setgoal(exitorigin, 1);
    var_f3b82c6d = util::spawn_model(self.model, self.origin, self.angles);
    var_f3b82c6d linkto(self);
    if (isdefined(level.var_fda44f3d[self.killstreakid])) {
        killstreakrules::killstreakstop(hardpointtype, self.team, self.killstreakid);
        level.var_fda44f3d[self.killstreakid] = undefined;
    }
    if (isdefined(self.killcament)) {
        self.killcament unlink();
    }
    wait(2);
    if (!isdefined(self)) {
        if (isdefined(var_f3b82c6d)) {
            var_f3b82c6d delete();
        }
        return;
    }
    self ghost();
    if (isdefined(var_f3b82c6d)) {
        var_f3b82c6d thread killstreaks::function_3696d106();
    }
    if (self.var_14494df9 === 1) {
        self namespace_f9b02f80::play_taacom_dialog_response_on_owner("timeoutConfirmed", "straferun", self.killstreakid);
    }
    wait(3);
    if (isdefined(self)) {
        if (isdefined(self.killcament)) {
            self.killcament delete();
            self.killcament = undefined;
        }
        self delete();
    }
    if (isdefined(var_f3b82c6d)) {
        var_f3b82c6d delete();
    }
}

// Namespace straferun/straferun
// Params 0, eflags: 0x2 linked
// Checksum 0x17504d08, Offset: 0x3880
// Size: 0x184
function explode() {
    self endon(#"delete");
    self ghost();
    forward = self.origin + (0, 0, 100) - self.origin;
    params = getscriptbundle(killstreaks::function_e2c3bda3("straferun", "killstreak_straferun"));
    if (isdefined(params.var_5ebb3c10)) {
        playfxontag(params.var_5ebb3c10, self, isdefined(params.var_5b2583e1) ? params.var_5b2583e1 : "tag_origin");
    }
    self playsound(level.straferunexplodesound);
    if (isdefined(self.killcament)) {
        self.killcament unlink();
    }
    wait(0.1);
    if (isdefined(self)) {
        if (isdefined(self.killcament)) {
            self.killcament delete();
            self.killcament = undefined;
        }
        self delete();
    }
}

// Namespace straferun/straferun
// Params 1, eflags: 0x2 linked
// Checksum 0x4a3f6dde, Offset: 0x3a10
// Size: 0xa6
function cantargetentity(entity) {
    heli_centroid = self.origin + (0, 0, -160);
    heli_forward_norm = anglestoforward(self.angles);
    heli_turret_point = heli_centroid + 144 * heli_forward_norm;
    visible_amount = entity sightconetrace(heli_turret_point, self);
    if (visible_amount < level.heli_target_recognition) {
        return false;
    }
    return true;
}

// Namespace straferun/straferun
// Params 1, eflags: 0x0
// Checksum 0xf1434de7, Offset: 0x3ac0
// Size: 0x1fa
function cantargetplayer(player) {
    if (!isalive(player) || player.sessionstate != "playing") {
        return 0;
    }
    if (player === self.owner) {
        return 0;
    }
    if (player airsupport::cantargetplayerwithspecialty() == 0) {
        return 0;
    }
    if (!isdefined(player.team)) {
        return 0;
    }
    if (level.teambased && player.team == self.team) {
        return 0;
    }
    if (player.team == #"spectator") {
        return 0;
    }
    if (isdefined(player.spawntime) && float(gettime() - player.spawntime) / 1000 <= level.heli_target_spawnprotection) {
        return 0;
    }
    if (!targetinfrontofplane(player)) {
        return 0;
    }
    if (player isinmovemode("noclip")) {
        return 0;
    }
    var_2910def0 = self targetting_delay::function_1c169b3a(player);
    self targetting_delay::function_a4d6d6d8(player, int((isdefined(level.straferunrocketdelay) ? level.straferunrocketdelay : 0.35) * 1000));
    if (!var_2910def0) {
        return 0;
    }
    return cantargetentity(player);
}

// Namespace straferun/straferun
// Params 1, eflags: 0x0
// Checksum 0x95f415cf, Offset: 0x3cc8
// Size: 0x8a
function cantargetactor(actor) {
    if (!isdefined(actor)) {
        return 0;
    }
    if (actor.team == self.team) {
        return 0;
    }
    if (isdefined(actor.script_owner) && self.owner === actor.script_owner) {
        return 0;
    }
    if (!targetinfrontofplane(actor)) {
        return 0;
    }
    return cantargetentity(actor);
}

// Namespace straferun/straferun
// Params 1, eflags: 0x2 linked
// Checksum 0x2b4f594d, Offset: 0x3d60
// Size: 0x98
function targetinfrontofplane(target) {
    forward_dir = anglestoforward(self.angles);
    target_delta = vectornormalize(target.origin - self.origin);
    dot = vectordot(forward_dir, target_delta);
    if (dot < 0.5) {
        return true;
    }
    return true;
}

// Namespace straferun/straferun
// Params 0, eflags: 0x2 linked
// Checksum 0x45ea3d88, Offset: 0x3e00
// Size: 0x29c
function function_f7055dec() {
    if (!isdefined(level.var_53bed697[self.killstreakid])) {
        level.var_53bed697[self.killstreakid] = [];
    }
    var_e0345575 = level.var_53bed697[self.killstreakid];
    now = gettime();
    var_6a3a9bb1 = sqr(8000);
    foreach (var_e53a042f in level.var_14fa3231) {
        var_61203702 = getentarray(var_e53a042f.targetname, "targetname");
        if (var_61203702.size == 0) {
            continue;
        }
        foreach (var_62e5f4cc in var_61203702) {
            if (isdefined(var_e53a042f.var_d3413870) && !(var_62e5f4cc.killstreaktype === var_e53a042f.var_d3413870 || var_62e5f4cc.killstreaktype === var_e53a042f.var_4c13f1ac)) {
                continue;
            }
            var_4ef4e267 = var_62e5f4cc getentitynumber();
            if (isdefined(var_e0345575[var_4ef4e267]) && var_e0345575[var_4ef4e267] + 2000 > now) {
                continue;
            }
            if (distance2dsquared(self.killbox[#"origin"], var_62e5f4cc.origin) > var_6a3a9bb1) {
                continue;
            }
            if (!util::function_fbce7263(self.team, var_62e5f4cc.team)) {
                continue;
            }
            var_e0345575[var_4ef4e267] = now;
            return var_62e5f4cc;
        }
    }
    return undefined;
}

// Namespace straferun/straferun
// Params 2, eflags: 0x2 linked
// Checksum 0xa0538c1, Offset: 0x40a8
// Size: 0xa2
function deadrecontargetorigin(rocket_start, target) {
    target_velocity = target getvelocity();
    missile_speed = 7000;
    target_delta = target.origin - rocket_start;
    target_dist = length(target_delta);
    time_to_target = target_dist / missile_speed;
    return target.origin + target_velocity * time_to_target;
}

// Namespace straferun/straferun
// Params 1, eflags: 0x2 linked
// Checksum 0x8a15c66, Offset: 0x4158
// Size: 0xd0
function shellshockplayers(origin) {
    if (!isdefined(self.team)) {
        return;
    }
    var_dea37f82 = function_f6f34851(self.team, origin, level.straferunshellshockradius);
    foreach (player in var_dea37f82) {
        player thread straferunshellshock(self);
    }
}

// Namespace straferun/straferun
// Params 1, eflags: 0x2 linked
// Checksum 0x85a6e872, Offset: 0x4230
// Size: 0xd2
function straferunshellshock(straferun) {
    self endon(#"disconnect");
    if (isdefined(self.beingstraferunshellshocked) && self.beingstraferunshellshocked) {
        return;
    }
    self.beingstraferunshellshocked = 1;
    params = getstatuseffect("deaf_straferun");
    self status_effect::status_effect_apply(params, level.straferunrocketweapon, straferun.owner, 0, int(level.straferunshellshockduration * 1000));
    wait(level.straferunshellshockduration + 1);
    self.beingstraferunshellshocked = 0;
}

// Namespace straferun/straferun
// Params 2, eflags: 0x2 linked
// Checksum 0x1c15f264, Offset: 0x4310
// Size: 0x190
function createkillcams(*numkillcams, numrockets) {
    if (!isdefined(level.straferunkillcams)) {
        level.straferunkillcams = [];
        level.straferunkillcams[#"hash_1dfff61be0d43f2d"] = spawnstruct();
        level.straferunkillcams[#"hash_1dfff31be0d43a14"] = spawnstruct();
        level.straferunkillcams[#"hash_1dfff61be0d43f2d"].rockets = [];
        level.straferunkillcams[#"hash_1dfff31be0d43a14"].rockets = [];
        for (i = 0; i < numrockets; i++) {
            level.straferunkillcams[#"hash_1dfff61be0d43f2d"].rockets[level.straferunkillcams[#"hash_1dfff61be0d43f2d"].rockets.size] = createkillcament();
            level.straferunkillcams[#"hash_1dfff31be0d43a14"].rockets[level.straferunkillcams[#"hash_1dfff31be0d43a14"].rockets.size] = createkillcament();
        }
    }
}

// Namespace straferun/straferun
// Params 1, eflags: 0x2 linked
// Checksum 0x88cf8ace, Offset: 0x44a8
// Size: 0xbc
function resetkillcams(time) {
    self endon(#"death");
    assert(isdefined(self.var_739aa202));
    if (isdefined(time)) {
        wait(time);
    }
    for (i = 0; i < level.straferunkillcams[self.var_739aa202].rockets.size; i++) {
        level.straferunkillcams[self.var_739aa202].rockets[i] resetrocketkillcament(self, i);
    }
}

// Namespace straferun/straferun
// Params 0, eflags: 0x2 linked
// Checksum 0xf12008a8, Offset: 0x4570
// Size: 0x104
function unlinkkillcams() {
    numrockets = level.straferunkillcams[#"hash_1dfff61be0d43f2d"].rockets.size;
    assert(level.straferunkillcams[#"hash_1dfff61be0d43f2d"].rockets.size == level.straferunkillcams[#"hash_1dfff31be0d43a14"].rockets.size);
    for (i = 0; i < numrockets; i++) {
        level.straferunkillcams[#"hash_1dfff61be0d43f2d"].rockets[i] unlink();
        level.straferunkillcams[#"hash_1dfff31be0d43a14"].rockets[i] unlink();
    }
}

// Namespace straferun/straferun
// Params 0, eflags: 0x2 linked
// Checksum 0xa4bf4e7c, Offset: 0x4680
// Size: 0x60
function createkillcament() {
    killcament = spawn("script_model", (0, 0, 0));
    killcament.targetname = "createKillcamEnt";
    killcament setfovforkillcam(25);
    return killcament;
}

// Namespace straferun/straferun
// Params 1, eflags: 0x0
// Checksum 0xcd5a7540, Offset: 0x46e8
// Size: 0x10c
function resetkillcament(parent) {
    self notify(#"reset");
    parent endon(#"death");
    offset_x = getdvarint(#"scr_killcamplaneoffsetx", -3000);
    offset_y = getdvarint(#"scr_killcamplaneoffsety", 0);
    offset_z = getdvarint(#"scr_killcamplaneoffsetz", 740);
    self linkto(parent, "tag_origin", (offset_x, offset_y, offset_z), (10, 0, 0));
    self thread unlinkwhenparentdies(parent);
}

// Namespace straferun/straferun
// Params 2, eflags: 0x2 linked
// Checksum 0x5691cb98, Offset: 0x4800
// Size: 0x134
function resetrocketkillcament(parent, rocketindex) {
    self notify(#"reset");
    parent endon(#"death");
    offset_x = getdvarint(#"scr_killcamplaneoffsetx", -3000);
    offset_y = getdvarint(#"scr_killcamplaneoffsety", 0);
    offset_z = getdvarint(#"scr_killcamplaneoffsetz", 740);
    rockettag = level.straferunrockettags[rocketindex % level.straferunrockettags.size];
    self linkto(parent, rockettag, (offset_x, offset_y, offset_z), (10, 0, 0));
    self thread unlinkwhenparentdies(parent);
}

// Namespace straferun/straferun
// Params 1, eflags: 0x0
// Checksum 0x6832fc96, Offset: 0x4940
// Size: 0x3c
function deletewhenparentdies(parent) {
    parent waittill(#"death");
    self delete();
}

// Namespace straferun/straferun
// Params 1, eflags: 0x2 linked
// Checksum 0x99fb1d69, Offset: 0x4988
// Size: 0x5c
function unlinkwhenparentdies(parent) {
    self endon(#"reset", #"unlink");
    parent waittill(#"death");
    self unlink();
}

// Namespace straferun/straferun
// Params 3, eflags: 0x2 linked
// Checksum 0x4c0eb329, Offset: 0x49f0
// Size: 0x1bc
function attachkillcamtorocket(killcament, selectedtarget, targetorigin) {
    offset_x = getdvarint(#"scr_killcamrocketoffsetx", -400);
    offset_y = getdvarint(#"scr_killcamrocketoffsety", 0);
    offset_z = getdvarint(#"scr_killcamrocketoffsetz", 110);
    self.killcament = killcament;
    forward = vectorscale(anglestoforward(self.angles), offset_x);
    right = vectorscale(anglestoright(self.angles), offset_y);
    up = vectorscale(anglestoup(self.angles), offset_z);
    killcament unlink();
    killcament.angles = (0, 0, 0);
    killcament.origin = self.origin;
    killcament linkto(self, "", (offset_x, offset_y, offset_z), (9, 0, 0));
    killcament thread unlinkwhenclose(selectedtarget, targetorigin, self);
}

// Namespace straferun/straferun
// Params 3, eflags: 0x2 linked
// Checksum 0x83512b9, Offset: 0x4bb8
// Size: 0x118
function unlinkwhenclose(selectedtarget, targetorigin, plane) {
    plane endon(#"death");
    self notify(#"unlink_when_close");
    self endon(#"unlink_when_close");
    distsqr = 1000000;
    while (true) {
        if (isdefined(selectedtarget)) {
            if (distancesquared(self.origin, selectedtarget.origin) < distsqr) {
                self unlink();
                self.angles = (0, 0, 0);
                return;
            }
        } else if (distancesquared(self.origin, targetorigin) < distsqr) {
            self unlink();
            self.angles = (0, 0, 0);
            return;
        }
        wait(0.1);
    }
}

