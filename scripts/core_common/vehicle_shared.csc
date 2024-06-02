// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\vehicleriders_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\struct.csc;

#namespace vehicle;

// Namespace vehicle/vehicle_shared
// Params 0, eflags: 0x5
// Checksum 0xf0eeee99, Offset: 0xa90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"vehicle_shared", &preinit, undefined, undefined, undefined);
}

// Namespace vehicle/vehicle_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xdeebb5e4, Offset: 0xad8
// Size: 0x1204
function private preinit() {
    level._customvehiclecbfunc = &spawned_callback;
    level.var_e583fd9b = &function_2f2a656a;
    level.var_8e36d09b = &function_cc71cf1a;
    level.allvehicles = [];
    clientfield::register("vehicle", "toggle_lockon", 1, 1, "int", &field_toggle_lockon_handler, 0, 0);
    clientfield::register("vehicle", "toggle_sounds", 1, 1, "int", &field_toggle_sounds, 0, 1);
    clientfield::register("vehicle", "use_engine_damage_sounds", 1, 2, "int", &field_use_engine_damage_sounds, 0, 0);
    clientfield::register("vehicle", "toggle_treadfx", 1, 1, "int", &field_toggle_treadfx, 0, 0);
    clientfield::register("vehicle", "toggle_exhaustfx", 1, 1, "int", &field_toggle_exhaustfx_handler, 0, 0);
    clientfield::register("vehicle", "toggle_lights", 1, 2, "int", &field_toggle_lights_handler, 0, 0);
    clientfield::register("vehicle", "toggle_lights_group1", 1, 1, "int", &field_toggle_lights_group_handler1, 0, 0);
    clientfield::register("vehicle", "toggle_lights_group2", 1, 1, "int", &field_toggle_lights_group_handler2, 0, 0);
    clientfield::register("vehicle", "toggle_lights_group3", 1, 1, "int", &field_toggle_lights_group_handler3, 0, 0);
    clientfield::register("vehicle", "toggle_lights_group4", 1, 1, "int", &field_toggle_lights_group_handler4, 0, 0);
    clientfield::register("vehicle", "toggle_force_driver_taillights", 1, 1, "int", &function_7baff7f6, 0, 0);
    clientfield::register("vehicle", "toggle_ambient_anim_group1", 1, 1, "int", &field_toggle_ambient_anim_handler1, 0, 0);
    clientfield::register("vehicle", "toggle_ambient_anim_group2", 1, 1, "int", &field_toggle_ambient_anim_handler2, 0, 0);
    clientfield::register("vehicle", "toggle_ambient_anim_group3", 1, 1, "int", &field_toggle_ambient_anim_handler3, 0, 0);
    clientfield::register("vehicle", "toggle_control_bone_group1", 1, 1, "int", &function_d427b534, 0, 0);
    clientfield::register("vehicle", "toggle_control_bone_group2", 1, 1, "int", &nova_crawler_spawnerbamfterminate, 0, 0);
    clientfield::register("vehicle", "toggle_control_bone_group3", 1, 1, "int", &function_48a01e23, 0, 0);
    clientfield::register("vehicle", "toggle_control_bone_group4", 1, 1, "int", &function_6ad96295, 0, 0);
    clientfield::register("vehicle", "toggle_emp_fx", 1, 1, "int", &field_toggle_emp, 0, 0);
    clientfield::register("vehicle", "toggle_burn_fx", 1, 1, "int", &field_toggle_burn, 0, 0);
    clientfield::register("vehicle", "deathfx", 1, 2, "int", &field_do_deathfx, 0, 1);
    clientfield::register("vehicle", "vehicle_assembly_death_hint", 1, 1, "counter", &function_dacff0e7, 0, 0);
    clientfield::register("vehicle", "stopallfx", 1, 1, "int", &function_1ea3bdef, 0, 0);
    clientfield::register("vehicle", "flickerlights", 1, 2, "int", &flicker_lights, 0, 0);
    clientfield::register("vehicle", "alert_level", 1, 2, "int", &field_update_alert_level, 0, 0);
    clientfield::register("vehicle", "set_lighting_ent", 1, 1, "int", &util::field_set_lighting_ent, 0, 0);
    clientfield::register("vehicle", "stun", 1, 1, "int", &function_d7a2c2f, 0, 0);
    clientfield::register("vehicle", "use_lighting_ent", 1, 1, "int", &util::field_use_lighting_ent, 0, 0);
    clientfield::register("vehicle", "damage_level", 1, 3, "int", &field_update_damage_state, 0, 0);
    clientfield::register("vehicle", "spawn_death_dynents", 1, 2, "int", &field_death_spawn_dynents, 0, 0);
    clientfield::register("vehicle", "spawn_gib_dynents", 1, 1, "int", &field_gib_spawn_dynents, 0, 0);
    clientfield::register("vehicle", "toggle_horn_sound", 1, 1, "int", &function_2d24296, 0, 0);
    clientfield::register("vehicle", "update_malfunction", 1, 2, "int", &function_7d1d0e65, 0, 0);
    clientfield::register("vehicle", "stunned", 1, 1, "int", &callback::callback_stunned, 0, 0);
    clientfield::register("vehicle", "rocket_damage_rumble", 1, 1, "counter", &function_f8e7ae58, 0, 0);
    if (!is_true(level.var_7b05c4b5)) {
        clientfield::register_clientuimodel("vehicle.ammoCount", #"vehicle_info", #"ammocount", 1, 10, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("vehicle.ammoReloading", #"vehicle_info", #"ammoreloading", 1, 1, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("vehicle.ammoLow", #"vehicle_info", #"ammolow", 1, 1, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("vehicle.rocketAmmo", #"vehicle_info", #"rocketammo", 1, 2, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("vehicle.ammo2Count", #"vehicle_info", #"ammo2count", 1, 10, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("vehicle.ammo2Reloading", #"vehicle_info", #"ammo2reloading", 1, 1, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("vehicle.ammo2Low", #"vehicle_info", #"ammo2low", 1, 1, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("vehicle.collisionWarning", #"vehicle_info", #"collisionwarning", 1, 2, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("vehicle.enemyInReticle", #"vehicle_info", #"enemyinreticle", 1, 1, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("vehicle.missileRepulsed", #"vehicle_info", #"missilerepulsed", 1, 1, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("vehicle.incomingMissile", #"vehicle_info", #"incomingmissile", 1, 1, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("vehicle.missileLock", #"vehicle_info", #"missilelock", 1, 2, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("vehicle.malfunction", #"vehicle_info", #"malfunction", 1, 2, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("vehicle.showHoldToExitPrompt", #"vehicle_info", #"showholdtoexitprompt", 1, 1, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("vehicle.holdToExitProgress", #"vehicle_info", #"holdtoexitprogress", 1, 5, "float", undefined, 0, 0);
        clientfield::register_clientuimodel("vehicle.vehicleAttackMode", #"vehicle_info", #"vehicleattackmode", 1, 3, "int", undefined, 0, 0);
        clientfield::register_clientuimodel("vehicle.invalidLanding", #"vehicle_info", #"invalidlanding", 1, 1, "int", undefined, 0, 0);
        for (i = 0; i < 3; i++) {
            clientfield::register_clientuimodel("vehicle.bindingCooldown" + i + ".cooldown", #"vehicle_info", [#"bindingcooldown" + (isdefined(i) ? "" + i : ""), #"cooldown"], 1, 5, "float", undefined, 0, 0);
        }
    }
    clientfield::register("toplayer", "toggle_dnidamagefx", 1, 1, "int", &field_toggle_dnidamagefx, 0, 0);
    clientfield::register("toplayer", "toggle_flir_postfx", 1, 2, "int", &toggle_flir_postfxbundle, 0, 0);
    clientfield::register("toplayer", "static_postfx", 1, 1, "int", &set_static_postfxbundle, 0, 1);
    clientfield::register("vehicle", "vehUseMaterialPhysics", 1, 1, "int", &function_9facca21, 0, 0);
    clientfield::register("scriptmover", "play_flare_fx", 1, 1, "int", &play_flare_fx, 0, 0);
    clientfield::register("scriptmover", "play_flare_hit_fx", 1, 1, "int", &play_flare_hit_fx, 0, 0);
}

// Namespace vehicle/vehicle_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xd96880c6, Offset: 0x1ce8
// Size: 0x80
function add_vehicletype_callback(vehicletype, callback, data = undefined) {
    if (!isdefined(level.vehicletypecallbackarray)) {
        level.vehicletypecallbackarray = [];
    }
    if (!isdefined(level.var_1ac8f820)) {
        level.var_1ac8f820 = [];
    }
    level.vehicletypecallbackarray[vehicletype] = callback;
    level.var_1ac8f820[vehicletype] = data;
}

// Namespace vehicle/vehicle_shared
// Params 2, eflags: 0x6 linked
// Checksum 0x5bfc7062, Offset: 0x1d70
// Size: 0x9a
function private function_dd27aacd(localclientnum, vehicletype) {
    if (isdefined(vehicletype) && isdefined(level.vehicletypecallbackarray[vehicletype])) {
        if (isdefined(level.var_1ac8f820[vehicletype])) {
            self thread [[ level.vehicletypecallbackarray[vehicletype] ]](localclientnum, level.var_1ac8f820[vehicletype]);
        } else {
            self thread [[ level.vehicletypecallbackarray[vehicletype] ]](localclientnum);
        }
        return true;
    }
    return false;
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x1528b6e2, Offset: 0x1e18
// Size: 0x284
function spawned_callback(localclientnum) {
    if (isdefined(self.vehicleridersbundle)) {
        set_vehicleriders_bundle(self.vehicleridersbundle);
    }
    self callback::callback(#"on_vehicle_spawned", localclientnum);
    vehicletype = self.vehicletype;
    if (isdefined(level.vehicletypecallbackarray)) {
        if (!function_dd27aacd(localclientnum, vehicletype)) {
            function_dd27aacd(localclientnum, self.scriptvehicletype);
        }
    }
    if (!isdefined(level.var_54e78305)) {
        level.var_54e78305 = [];
    }
    if (isdefined(vehicletype) && !isdefined(level.var_54e78305[vehicletype])) {
        function_59020fad(vehicletype);
        level.var_54e78305[vehicletype] = 1;
    }
    var_d790a4e9 = 0;
    if (!isdefined(self.settings) && isdefined(self.scriptbundlesettings)) {
        self.settings = getscriptbundle(self.scriptbundlesettings);
        var_a6de9f17 = self.settings.var_a6de9f17;
    }
    if (self usessubtargets() || isdefined(var_a6de9f17)) {
        self thread watch_vehicle_damage(localclientnum, var_a6de9f17);
    }
    if (!is_true(self.settings.var_4221c285) && isdefined(self.settings.var_681129b2)) {
        self playrumblelooponentity(localclientnum, self.settings.var_681129b2);
    }
    if (!isdefined(level.allvehicles[localclientnum])) {
        level.allvehicles[localclientnum] = [];
    }
    array::add(level.allvehicles[localclientnum], self, 0);
    self callback::on_shutdown(&on_shutdown);
}

// Namespace vehicle/vehicle_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x2494d9db, Offset: 0x20a8
// Size: 0x40
function function_2f97bc52(vehicletype, callback) {
    if (!isdefined(level.var_fedb0575)) {
        level.var_fedb0575 = [];
    }
    level.var_fedb0575[vehicletype] = callback;
}

// Namespace vehicle/vehicle_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x208026ec, Offset: 0x20f0
// Size: 0x7e
function function_2f2a656a(localclientnum, vehicle) {
    if (isdefined(vehicle)) {
        vehicletype = vehicle.vehicletype;
        if (isdefined(vehicletype) && isdefined(level.var_fedb0575) && isdefined(level.var_fedb0575[vehicletype])) {
            self thread [[ level.var_fedb0575[vehicletype] ]](localclientnum, vehicle);
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x233e81af, Offset: 0x2178
// Size: 0x40
function function_cd2ede5(vehicletype, callback) {
    if (!isdefined(level.var_9b02f595)) {
        level.var_9b02f595 = [];
    }
    level.var_9b02f595[vehicletype] = callback;
}

// Namespace vehicle/vehicle_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x5e2f417b, Offset: 0x21c0
// Size: 0x7e
function function_cc71cf1a(localclientnum, vehicle) {
    if (isdefined(vehicle)) {
        vehicletype = vehicle.vehicletype;
        if (isdefined(vehicletype) && isdefined(level.var_9b02f595) && isdefined(level.var_9b02f595[vehicletype])) {
            self thread [[ level.var_9b02f595[vehicletype] ]](localclientnum, vehicle);
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe45981cd, Offset: 0x2248
// Size: 0x6c
function on_shutdown(localclientnum) {
    self function_dcec5385();
    if (isarray(level.allvehicles[localclientnum])) {
        arrayremovevalue(level.allvehicles[localclientnum], self);
    }
}

// Namespace vehicle/vehicle_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x6cabdada, Offset: 0x22c0
// Size: 0x168
function watch_vehicle_damage(localclientnum, rumble) {
    self endon(#"death");
    self.notifyonbulletimpact = 1;
    while (isdefined(self)) {
        waitresult = self waittill(#"damage");
        mod = waitresult.mod;
        subtarget = waitresult.subtarget;
        attacker = waitresult.attacker;
        if (attacker function_21c0fa55() && isdefined(subtarget) && subtarget > 0) {
            self thread function_a87e7c22(subtarget);
        }
        if (isdefined(rumble) && self function_979020fe() && (mod == "MOD_RIFLE_BULLET" || mod == "MOD_PISTOL_BULLET")) {
            occupant = function_5c10bd79(localclientnum);
            occupant playrumbleonentity(localclientnum, rumble);
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xdffecaf0, Offset: 0x2430
// Size: 0xd4
function function_f8e7ae58(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!self function_979020fe()) {
        return;
    }
    if (!isdefined(self.settings) && isdefined(self.scriptbundlesettings)) {
        self.settings = getscriptbundle(self.scriptbundlesettings);
    }
    occupant = function_5c10bd79(bwastimejump);
    occupant playrumbleonentity(bwastimejump, self.settings.var_2cc03de3);
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x204ce345, Offset: 0x2510
// Size: 0x154
function function_a87e7c22(subtarget) {
    self endon(#"death");
    time = gettime();
    if (isdefined(subtarget)) {
        if (!isdefined(self.var_d2c05029)) {
            self.var_d2c05029 = [];
        }
        if (!isdefined(self.var_d2c05029[subtarget]) || self.var_d2c05029[subtarget] <= time) {
            self.var_d2c05029[subtarget] = time + 150;
            bone = self submodelboneforsubtarget(subtarget);
            self playrenderoverridebundle(#"hash_20bdbaa0db5eb57d", bone);
            wait(0.1);
            self stoprenderoverridebundle(#"hash_20bdbaa0db5eb57d", bone);
        }
        return;
    }
    self playrenderoverridebundle(#"hash_20bdbaa0db5eb57d");
    wait(0.15);
    self stoprenderoverridebundle(#"hash_20bdbaa0db5eb57d");
}

// Namespace vehicle/vehicle_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x406915c5, Offset: 0x2670
// Size: 0x16
function kill_treads_forever() {
    self notify(#"kill_treads_forever");
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd2d44b0, Offset: 0x2690
// Size: 0x1b2
function play_exhaust(localclientnum) {
    if (!isdefined(self)) {
        return;
    }
    if (is_true(self.csf_no_exhaust)) {
        return;
    }
    if (!isdefined(self.exhaust_fx) && isdefined(self.exhaustfxname)) {
        if (!isdefined(level._effect)) {
            level._effect = [];
        }
        if (!isdefined(level._effect[self.exhaustfxname])) {
            level._effect[self.exhaustfxname] = self.exhaustfxname;
        }
        self.exhaust_fx = level._effect[self.exhaustfxname];
    }
    if (isdefined(self.exhaust_fx) && isdefined(self.exhaustfxtag1)) {
        if (isalive(self)) {
            assert(isdefined(self.exhaustfxtag1), self.vehicletype + "");
            self endon(#"death");
            self util::waittill_dobj(localclientnum);
            self.exhaust_id_left = util::playfxontag(localclientnum, self.exhaust_fx, self, self.exhaustfxtag1);
            if (!isdefined(self.exhaust_id_right) && isdefined(self.exhaustfxtag2)) {
                self.exhaust_id_right = util::playfxontag(localclientnum, self.exhaust_fx, self, self.exhaustfxtag2);
            }
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x558ff649, Offset: 0x2850
// Size: 0x9e
function stop_exhaust(localclientnum) {
    self util::waittill_dobj(localclientnum);
    waitframe(1);
    if (!isdefined(self)) {
        return;
    }
    if (isdefined(self.exhaust_id_left)) {
        stopfx(localclientnum, self.exhaust_id_left);
        self.exhaust_id_left = undefined;
    }
    if (isdefined(self.exhaust_id_right)) {
        stopfx(localclientnum, self.exhaust_id_right);
        self.exhaust_id_right = undefined;
    }
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x758d0d65, Offset: 0x28f8
// Size: 0xa0
function boost_think(localclientnum) {
    self notify("49bfafce10361788");
    self endon("49bfafce10361788");
    self endon(#"death");
    for (;;) {
        self waittill(#"veh_boost");
        self play_boost(localclientnum, 0);
        if (isinvehicle(localclientnum, self)) {
            self play_boost(localclientnum, 1);
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xec64c8f8, Offset: 0x29a0
// Size: 0x294
function play_boost(localclientnum, var_a7ba3864, duration) {
    if (var_a7ba3864) {
        var_121afd6f = self.var_9ded117e;
        var_c1da0b13 = self.var_8559c35b;
        var_74ceb128 = undefined;
    } else {
        var_121afd6f = self.var_82ecf3f7;
        var_c1da0b13 = self.var_41882855;
        var_74ceb128 = self.var_a75cf435;
    }
    if (isdefined(var_121afd6f)) {
        if (isalive(self)) {
            assert(isdefined(var_c1da0b13), self.vehicletype + "<unknown string>");
            self endon(#"death");
            self util::waittill_dobj(localclientnum);
            var_1ca9b241 = util::playfxontag(localclientnum, var_121afd6f, self, var_c1da0b13);
            if (isdefined(var_74ceb128)) {
                var_4dfb2154 = util::playfxontag(localclientnum, var_121afd6f, self, var_74ceb128);
            }
            if (var_a7ba3864) {
                self thread function_5ce3e74e(localclientnum, var_1ca9b241);
            }
            self thread kill_boost(localclientnum, var_1ca9b241, undefined, undefined, duration);
            if (isdefined(var_4dfb2154)) {
                self thread kill_boost(localclientnum, var_4dfb2154, undefined, undefined, duration);
            }
        }
    }
    if (var_a7ba3864 && isdefined(self.var_b96c7687) && isalive(self)) {
        player = function_5c10bd79(localclientnum);
        if (isplayer(player) && isalive(player)) {
            player playrumblelooponentity(localclientnum, self.var_b96c7687);
            self thread kill_boost(localclientnum, undefined, self.var_b96c7687, player, duration);
            self thread function_5ce3e74e(localclientnum, undefined, self.var_b96c7687, player);
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 5, eflags: 0x2 linked
// Checksum 0xd076cd9d, Offset: 0x2c40
// Size: 0xd4
function kill_boost(localclientnum, var_1ca9b241, var_dc0238cc, player, duration) {
    self endon(#"death");
    wait(isdefined(duration) ? duration : self.boostduration + 0.5);
    self notify(#"end_boost");
    if (isdefined(var_1ca9b241)) {
        stopfx(localclientnum, var_1ca9b241);
    }
    if (isdefined(var_dc0238cc) && isplayer(player)) {
        player stoprumble(localclientnum, var_dc0238cc);
    }
}

// Namespace vehicle/vehicle_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x2fd56f5c, Offset: 0x2d20
// Size: 0xce
function function_5ce3e74e(localclientnum, var_1ca9b241, var_dc0238cc, player) {
    self endon(#"end_boost");
    self endon(#"veh_boost");
    self endon(#"death");
    while (true) {
        if (!isinvehicle(localclientnum, self)) {
            if (isdefined(var_1ca9b241)) {
                stopfx(localclientnum, var_1ca9b241);
            }
            if (isdefined(var_dc0238cc)) {
                player stoprumble(localclientnum, var_dc0238cc);
            }
            break;
        }
        waitframe(1);
    }
}

// Namespace vehicle/vehicle_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x895ae8c, Offset: 0x2df8
// Size: 0x338
function aircraft_dustkick() {
    self endon(#"death");
    waittillframeend();
    self endon(#"kill_treads_forever");
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(self.treadfxnamearray)) {
        return;
    }
    if (isdefined(self.csf_no_tread) && self.csf_no_tread) {
        return;
    }
    while (isdefined(self)) {
        fxarray = self.treadfxnamearray;
        if (!isdefined(fxarray)) {
            wait(1);
            continue;
        }
        trace = bullettrace(self.origin, self.origin - (0, 0, 700 * 2), 0, self, 1);
        distsqr = distancesquared(self.origin, trace[#"position"]);
        if (trace[#"fraction"] < 0.01 || distsqr < sqr(0)) {
            wait(0.2);
            continue;
        } else if (trace[#"fraction"] >= 1 || distsqr > sqr(700)) {
            wait(1);
            continue;
        }
        if (sqr(0) < distsqr && distsqr < sqr(700)) {
            surfacetype = trace[#"surfacetype"];
            if (!isdefined(surfacetype)) {
                surfacetype = "dirt";
            }
            if (isdefined(fxarray[surfacetype])) {
                forward = anglestoforward(self.angles);
                playfx(0, fxarray[surfacetype], trace[#"position"], (0, 0, 1), forward);
            }
            velocity = self getvelocity();
            speed = length(velocity);
            waittime = mapfloat(10, 100, 1, 0.2, speed);
            wait(waittime);
            continue;
        }
        wait(1);
        continue;
    }
}

// Namespace vehicle/vehicle_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x74637c5, Offset: 0x3138
// Size: 0x14c
function lights_on(localclientnum, team) {
    lights_off(localclientnum);
    if (!isalive(self)) {
        return;
    }
    self endon(#"death");
    util::waittill_dobj(localclientnum);
    if (isdefined(self.lightfxnamearray)) {
        if (!isdefined(self.light_fx_handles)) {
            self.light_fx_handles = [];
        }
        for (i = 0; i < self.lightfxnamearray.size; i++) {
            self.light_fx_handles[i] = util::playfxontag(localclientnum, self.lightfxnamearray[i], self, self.lightfxtagarray[i]);
            setfxignorepause(localclientnum, self.light_fx_handles[i], 1);
            if (isdefined(team)) {
                setfxteam(localclientnum, self.light_fx_handles[i], team);
            }
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 6, eflags: 0x2 linked
// Checksum 0x71b55c88, Offset: 0x3290
// Size: 0xf2
function addanimtolist(animitem, &liston, &listoff, playwhenoff, id, maxid) {
    if (isdefined(animitem) && id <= maxid) {
        if (playwhenoff === 1) {
            if (!isdefined(listoff)) {
                listoff = [];
            } else if (!isarray(listoff)) {
                listoff = array(listoff);
            }
            listoff[listoff.size] = animitem;
            return;
        }
        if (!isdefined(liston)) {
            liston = [];
        } else if (!isarray(liston)) {
            liston = array(liston);
        }
        liston[liston.size] = animitem;
    }
}

// Namespace vehicle/vehicle_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x2cd8a432, Offset: 0x3390
// Size: 0x4ec
function ambient_anim_toggle(localclientnum, groupid, ison) {
    if (!isdefined(self.scriptbundlesettings)) {
        return;
    }
    settings = getscriptbundle(self.scriptbundlesettings);
    if (!isdefined(settings)) {
        return;
    }
    self endon(#"death");
    util::waittill_dobj(localclientnum);
    liston = [];
    listoff = [];
    switch (groupid) {
    case 1:
        addanimtolist(settings.ambient_group1_anim1, liston, listoff, settings.ambient_group1_off1, 1, settings.ambient_group1_numslots);
        addanimtolist(settings.ambient_group1_anim2, liston, listoff, settings.ambient_group1_off2, 2, settings.ambient_group1_numslots);
        addanimtolist(settings.ambient_group1_anim3, liston, listoff, settings.ambient_group1_off3, 3, settings.ambient_group1_numslots);
        addanimtolist(settings.ambient_group1_anim4, liston, listoff, settings.ambient_group1_off4, 4, settings.ambient_group1_numslots);
        break;
    case 2:
        addanimtolist(settings.ambient_group2_anim1, liston, listoff, settings.ambient_group2_off1, 1, settings.ambient_group2_numslots);
        addanimtolist(settings.ambient_group2_anim2, liston, listoff, settings.ambient_group2_off2, 2, settings.ambient_group2_numslots);
        addanimtolist(settings.ambient_group2_anim3, liston, listoff, settings.ambient_group2_off3, 3, settings.ambient_group2_numslots);
        addanimtolist(settings.ambient_group2_anim4, liston, listoff, settings.ambient_group2_off4, 4, settings.ambient_group2_numslots);
        break;
    case 3:
        addanimtolist(settings.ambient_group3_anim1, liston, listoff, settings.ambient_group3_off1, 1, settings.ambient_group3_numslots);
        addanimtolist(settings.ambient_group3_anim2, liston, listoff, settings.ambient_group3_off2, 2, settings.ambient_group3_numslots);
        addanimtolist(settings.ambient_group3_anim3, liston, listoff, settings.ambient_group3_off3, 3, settings.ambient_group3_numslots);
        addanimtolist(settings.ambient_group3_anim4, liston, listoff, settings.ambient_group3_off4, 4, settings.ambient_group3_numslots);
        break;
    case 4:
        addanimtolist(settings.ambient_group4_anim1, liston, listoff, settings.ambient_group4_off1, 1, settings.ambient_group4_numslots);
        addanimtolist(settings.ambient_group4_anim2, liston, listoff, settings.ambient_group4_off2, 2, settings.ambient_group4_numslots);
        addanimtolist(settings.ambient_group4_anim3, liston, listoff, settings.ambient_group4_off3, 3, settings.ambient_group4_numslots);
        addanimtolist(settings.ambient_group4_anim4, liston, listoff, settings.ambient_group4_off4, 4, settings.ambient_group4_numslots);
        break;
    }
    if (ison) {
        weighton = 1;
        weightoff = 0;
    } else {
        weighton = 0;
        weightoff = 1;
    }
    for (i = 0; i < liston.size; i++) {
        self setanim(liston[i], weighton, 0.2, 1);
    }
    for (i = 0; i < listoff.size; i++) {
        self setanim(listoff[i], weightoff, 0.2, 1);
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x77867ce3, Offset: 0x3888
// Size: 0x5c
function field_toggle_ambient_anim_handler1(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self ambient_anim_toggle(fieldname, 1, bwastimejump);
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x98a288e5, Offset: 0x38f0
// Size: 0x5c
function field_toggle_ambient_anim_handler2(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self ambient_anim_toggle(fieldname, 2, bwastimejump);
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x46bc25a6, Offset: 0x3958
// Size: 0x5c
function field_toggle_ambient_anim_handler3(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self ambient_anim_toggle(fieldname, 3, bwastimejump);
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x0
// Checksum 0x8d080360, Offset: 0x39c0
// Size: 0x5c
function field_toggle_ambient_anim_handler4(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self ambient_anim_toggle(fieldname, 4, bwastimejump);
}

// Namespace vehicle/vehicle_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x975eed32, Offset: 0x3a28
// Size: 0x92
function function_7927d9b1(settings, groupid) {
    switch (groupid) {
    case 1:
        return settings.setup_lgt_glowyriver;
    case 2:
        return settings.var_aaf4ef8c;
    case 3:
        return settings.var_98404a23;
    case 4:
        return settings.var_8e9936d5;
    }
}

// Namespace vehicle/vehicle_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x799e8c71, Offset: 0x3ac8
// Size: 0x190
function function_34105b89(localclientnum, groupid, ison) {
    if (!isdefined(self.scriptbundlesettings)) {
        return;
    }
    settings = getscriptbundle(self.scriptbundlesettings);
    if (!isdefined(settings)) {
        return;
    }
    num_slots = settings.var_e08bc957;
    if (isdefined(num_slots) && groupid > num_slots) {
        return;
    }
    self endon(#"death");
    util::waittill_dobj(localclientnum);
    bone_group = function_7927d9b1(settings, groupid);
    if (!isarray(bone_group)) {
        return;
    }
    foreach (var_b969bea7 in bone_group) {
        if (isdefined(var_b969bea7) && isdefined(var_b969bea7.var_f08513a)) {
            self function_d309e55a(var_b969bea7.var_f08513a, ison);
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x4112000d, Offset: 0x3c60
// Size: 0x5c
function function_d427b534(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self function_34105b89(fieldname, 1, bwastimejump);
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x27b82b2b, Offset: 0x3cc8
// Size: 0x5c
function nova_crawler_spawnerbamfterminate(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self function_34105b89(fieldname, 2, bwastimejump);
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xf2ed50d4, Offset: 0x3d30
// Size: 0x5c
function function_48a01e23(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self function_34105b89(fieldname, 3, bwastimejump);
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xf7506169, Offset: 0x3d98
// Size: 0x5c
function function_6ad96295(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self function_34105b89(fieldname, 4, bwastimejump);
}

// Namespace vehicle/enter_vehicle
// Params 1, eflags: 0x20
// Checksum 0x4f1d78db, Offset: 0x3e00
// Size: 0x1ec
function event_handler[enter_vehicle] codecallback_vehicleenter(eventstruct) {
    if (!isplayer(self)) {
        return;
    }
    vehicle = eventstruct.vehicle;
    localclientnum = eventstruct.localclientnum;
    var_6c2c0da5 = eventstruct.var_6c2c0da5;
    if (is_true(var_6c2c0da5)) {
        return;
    }
    if (vehicle isvehicle()) {
        seatindex = vehicle getoccupantseat(localclientnum, self);
        if (!isdefined(seatindex)) {
            return;
        }
        var_fd110a27 = vehicle function_a3f90231(seatindex);
        if (!isdefined(var_fd110a27)) {
            return;
        }
        var_8730ee3e = getscriptbundle(var_fd110a27);
        if (isdefined(var_8730ee3e)) {
            if (is_true(var_8730ee3e.zmenhancedstatejukeinit)) {
                if (!isdefined(vehicle.t_sarah_foy_objective__indicator_)) {
                    vehicle.t_sarah_foy_objective__indicator_ = [];
                }
                if (is_true(vehicle.t_sarah_foy_objective__indicator_[seatindex])) {
                    return;
                }
                vehicle.t_sarah_foy_objective__indicator_[seatindex] = 1;
            }
            animation = var_8730ee3e.vehicleenteranim;
            if (isdefined(animation)) {
                vehicle setanimrestart(animation, 1, 0, isdefined(vehicle.var_7d3d0f72) ? vehicle.var_7d3d0f72 : 1);
            }
        }
    }
}

// Namespace vehicle/change_seat
// Params 1, eflags: 0x20
// Checksum 0xa56dbf14, Offset: 0x3ff8
// Size: 0x1ec
function event_handler[change_seat] function_124469f4(eventstruct) {
    if (!isplayer(self)) {
        return;
    }
    vehicle = eventstruct.vehicle;
    localclientnum = eventstruct.localclientnum;
    var_6c2c0da5 = eventstruct.var_6c2c0da5;
    if (is_true(var_6c2c0da5)) {
        return;
    }
    if (vehicle isvehicle()) {
        seatindex = vehicle getoccupantseat(localclientnum, self);
        if (!isdefined(seatindex)) {
            return;
        }
        var_fd110a27 = vehicle function_a3f90231(seatindex);
        if (!isdefined(var_fd110a27)) {
            return;
        }
        var_8730ee3e = getscriptbundle(var_fd110a27);
        if (isdefined(var_8730ee3e)) {
            if (!is_true(var_8730ee3e.var_8d496bb1)) {
                return;
            }
            if (is_true(var_8730ee3e.zmenhancedstatejukeinit)) {
                if (!isdefined(vehicle.t_sarah_foy_objective__indicator_)) {
                    vehicle.t_sarah_foy_objective__indicator_ = [];
                }
                if (is_true(vehicle.t_sarah_foy_objective__indicator_[seatindex])) {
                    return;
                }
                vehicle.t_sarah_foy_objective__indicator_[seatindex] = 1;
            }
            animation = var_8730ee3e.vehicleenteranim;
            if (isdefined(animation)) {
                vehicle setanimrestart(animation, 1, 0, 1);
            }
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x41f6f6f2, Offset: 0x41f0
// Size: 0x356
function lights_group_toggle(localclientnum, groupid, ison) {
    if (!isdefined(self.scriptbundlesettings)) {
        return;
    }
    settings = getscriptbundle(self.scriptbundlesettings);
    if (!isdefined(settings) || !isdefined(settings.lightgroups_numgroups)) {
        return;
    }
    self endon(#"death");
    if (isdefined(self.lightfxgroups) && isdefined(self.lightfxgroups[groupid])) {
        foreach (fx_handle in self.lightfxgroups[groupid]) {
            if (isdefined(fx_handle)) {
                stopfx(localclientnum, fx_handle);
            }
        }
    }
    if (!ison) {
        return;
    }
    util::waittill_dobj(localclientnum);
    if (!isdefined(self.lightfxgroups)) {
        self.lightfxgroups = [];
    }
    if (!isdefined(self.lightfxgroups[groupid])) {
        self.lightfxgroups[groupid] = [];
    }
    fxlist = [];
    taglist = [];
    switch (groupid) {
    case 0:
        function_670a62e7(settings.lightgroups_1_slots, fxlist, taglist);
        break;
    case 1:
        function_670a62e7(settings.lightgroups_2_slots, fxlist, taglist);
        break;
    case 2:
        function_670a62e7(settings.lightgroups_3_slots, fxlist, taglist);
        break;
    case 3:
        function_670a62e7(settings.lightgroups_4_slots, fxlist, taglist);
        break;
    }
    for (i = 0; i < fxlist.size; i++) {
        fx_handle = util::playfxontag(localclientnum, fxlist[i], self, taglist[i]);
        if (!isdefined(self.lightfxgroups[groupid])) {
            self.lightfxgroups[groupid] = [];
        } else if (!isarray(self.lightfxgroups[groupid])) {
            self.lightfxgroups[groupid] = array(self.lightfxgroups[groupid]);
        }
        self.lightfxgroups[groupid][self.lightfxgroups[groupid].size] = fx_handle;
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xdd032fc5, Offset: 0x4550
// Size: 0x5c
function field_toggle_lights_group_handler1(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self lights_group_toggle(fieldname, 0, bwastimejump);
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x3bf6c9d6, Offset: 0x45b8
// Size: 0x5c
function field_toggle_lights_group_handler2(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self lights_group_toggle(fieldname, 1, bwastimejump);
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xb3205b94, Offset: 0x4620
// Size: 0x5c
function field_toggle_lights_group_handler3(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self lights_group_toggle(fieldname, 2, bwastimejump);
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xbb7d2205, Offset: 0x4688
// Size: 0x5c
function field_toggle_lights_group_handler4(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self lights_group_toggle(fieldname, 3, bwastimejump);
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x9e7ef3e4, Offset: 0x46f0
// Size: 0x74
function function_7baff7f6(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self function_e1a2a256(1);
        return;
    }
    self function_e1a2a256(0);
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd66024fc, Offset: 0x4770
// Size: 0x7e
function delete_alert_lights(localclientnum) {
    if (isdefined(self.alert_light_fx_handles)) {
        for (i = 0; i < self.alert_light_fx_handles.size; i++) {
            if (isdefined(self.alert_light_fx_handles[i])) {
                stopfx(localclientnum, self.alert_light_fx_handles[i]);
            }
        }
    }
    self.alert_light_fx_handles = undefined;
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xff50c5d9, Offset: 0x47f8
// Size: 0x94
function lights_off(localclientnum) {
    if (isdefined(self.light_fx_handles)) {
        for (i = 0; i < self.light_fx_handles.size; i++) {
            if (isdefined(self.light_fx_handles[i])) {
                stopfx(localclientnum, self.light_fx_handles[i]);
            }
        }
    }
    self.light_fx_handles = undefined;
    delete_alert_lights(localclientnum);
}

// Namespace vehicle/vehicle_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xa8454d81, Offset: 0x4898
// Size: 0x2f4
function lights_flicker(localclientnum, duration = 8, var_5db078ba = 1) {
    self notify("28f070328d3b8709");
    self endon("28f070328d3b8709");
    self endon(#"cancel_flicker");
    self endon(#"death");
    if (!isdefined(self.scriptbundlesettings)) {
        return;
    }
    state = 1;
    durationleft = gettime() + int(duration * 1000);
    settings = getscriptbundle(self.scriptbundlesettings);
    if (!isdefined(settings) || !isdefined(settings.lightgroups_numgroups)) {
        while (durationleft > gettime()) {
            if (randomint(4) == 0) {
                state = !state;
                if (state) {
                    self lights_on(localclientnum);
                } else {
                    self lights_off(localclientnum);
                }
            }
            waitframe(1);
        }
    } else {
        while (durationleft > gettime()) {
            state = !state;
            self lights_group_toggle(localclientnum, randomint(settings.lightgroups_numgroups), state);
            waitframe(1);
        }
        if (var_5db078ba) {
            for (i = 0; i < settings.lightgroups_numgroups; i++) {
                self lights_group_toggle(localclientnum, i, 0);
            }
        }
    }
    if (var_5db078ba) {
        self lights_off(localclientnum);
        if (isdefined(settings) && isdefined(settings.lightgroups_numgroups)) {
            for (i = 0; i < settings.lightgroups_numgroups; i++) {
                self lights_group_toggle(localclientnum, i, 0);
            }
        }
        return;
    }
    if (!state) {
        self lights_on(localclientnum);
        if (isdefined(settings) && isdefined(settings.lightgroups_numgroups)) {
            for (i = 0; i < settings.lightgroups_numgroups; i++) {
                self lights_group_toggle(localclientnum, i, 1);
            }
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x893cccf8, Offset: 0x4b98
// Size: 0x64
function field_toggle_emp(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self thread toggle_fx_bundle(fieldname, "emp_base", bwastimejump == 1);
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xba8860b7, Offset: 0x4c08
// Size: 0x64
function field_toggle_burn(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self thread toggle_fx_bundle(fieldname, "burn_base", bwastimejump == 1);
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xf961e161, Offset: 0x4c78
// Size: 0xee
function flicker_lights(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 0) {
        self notify(#"cancel_flicker");
        self lights_off(fieldname);
        return;
    }
    if (bwastimejump == 1) {
        self thread lights_flicker(fieldname);
        return;
    }
    if (bwastimejump == 2) {
        self thread lights_flicker(fieldname, 20);
        return;
    }
    if (bwastimejump == 3) {
        self notify(#"cancel_flicker");
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x29fa6392, Offset: 0x4d70
// Size: 0x154
function function_1ea3bdef(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self util::waittill_dobj(fieldname);
    if (isdefined(self)) {
        function_c45d231e(fieldname, self, 1);
        self thread function_e5f88559(fieldname, "emp_base");
        self thread function_e5f88559(fieldname, "burn_base");
        self thread function_e5f88559(fieldname, "smolder");
        self thread function_e5f88559(fieldname, "death");
        self thread function_e5f88559(fieldname, "empdeath");
        if (bwastimejump) {
            self lights_off(fieldname);
        }
        self thread stop_exhaust(fieldname);
    }
}

// Namespace vehicle/vehicle_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x19f829e6, Offset: 0x4ed0
// Size: 0x124
function function_e5f88559(localclientnum, name) {
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(self.fx_handles)) {
        self.fx_handles = [];
    }
    if (isdefined(self.fx_handles[name])) {
        handle = self.fx_handles[name];
        if (isdefined(handle)) {
            if (isarray(handle)) {
                foreach (handleelement in handle) {
                    stopfx(localclientnum, handleelement);
                }
                return;
            }
            stopfx(localclientnum, handle);
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xcfa5ddf1, Offset: 0x5000
// Size: 0x19c
function toggle_fx_bundle(localclientnum, name, turnon) {
    if (!isdefined(self.settings) && isdefined(self.scriptbundlesettings)) {
        self.settings = getscriptbundle(self.scriptbundlesettings);
    }
    if (!isdefined(self.settings)) {
        return;
    }
    self endon(#"death");
    self notify("end_toggle_field_fx_" + name);
    self endon("end_toggle_field_fx_" + name);
    util::waittill_dobj(localclientnum);
    self function_e5f88559(localclientnum, name);
    if (turnon) {
        for (i = 1; ; i++) {
            fx = self.settings.(name + "_fx_" + i);
            if (!isdefined(fx)) {
                return;
            }
            tag = self.settings.(name + "_tag_" + i);
            delay = self.settings.(name + "_delay_" + i);
            self thread delayed_fx_thread(localclientnum, name, fx, tag, delay);
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 5, eflags: 0x2 linked
// Checksum 0xca7bb1fb, Offset: 0x51a8
// Size: 0x12e
function delayed_fx_thread(localclientnum, name, fx, tag, delay) {
    self endon(#"death");
    self endon("end_toggle_field_fx_" + name);
    if (!isdefined(tag)) {
        return;
    }
    if (isdefined(delay) && delay > 0) {
        wait(delay);
    }
    fx_handle = util::playfxontag(localclientnum, fx, self, tag);
    if (!isdefined(self.fx_handles[name])) {
        self.fx_handles[name] = [];
    } else if (!isarray(self.fx_handles[name])) {
        self.fx_handles[name] = array(self.fx_handles[name]);
    }
    self.fx_handles[name][self.fx_handles[name].size] = fx_handle;
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xbb706319, Offset: 0x52e0
// Size: 0x1a4
function field_toggle_sounds(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (self.vehicleclass === "helicopter") {
        if (bwastimejump) {
            self notify(#"stop_heli_sounds");
            self.should_not_play_sounds = 1;
        } else {
            self notify(#"play_heli_sounds");
            self.should_not_play_sounds = 0;
        }
    }
    if (bwastimejump) {
        self disablevehiclesounds();
        self function_dcec5385();
        if (is_true(self.settings.var_4221c285) && isdefined(self.settings.var_681129b2)) {
            self stoprumble(fieldname, self.settings.var_681129b2);
        }
        return;
    }
    self enablevehiclesounds();
    if (is_true(self.settings.var_4221c285) && isdefined(self.settings.var_681129b2)) {
        self playrumblelooponentity(fieldname, self.settings.var_681129b2);
    }
}

// Namespace vehicle/vehicle_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x9218c540, Offset: 0x5490
// Size: 0x34
function private function_dcec5385() {
    self function_f753359a();
    self function_3aa94f97();
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x4b2e2823, Offset: 0x54d0
// Size: 0x64
function field_toggle_dnidamagefx(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self thread postfx::playpostfxbundle(#"pstfx_dni_vehicle_dmg");
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x26d0d7b0, Offset: 0x5540
// Size: 0x1cc
function toggle_flir_postfxbundle(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    player = self;
    if (bwastimejump == fieldname) {
        return;
    }
    if (!isdefined(player) || !player function_21c0fa55()) {
        return;
    }
    if (bwastimejump == 0) {
        if (fieldname == 1) {
            player thread postfx::stoppostfxbundle("pstfx_infrared");
        } else if (fieldname == 2) {
            player thread postfx::stoppostfxbundle("pstfx_flir");
        }
        update_ui_fullscreen_filter_model(binitialsnap, 0);
        return;
    }
    if (bwastimejump == 1) {
        if (player shouldchangescreenpostfx(binitialsnap)) {
            player thread postfx::playpostfxbundle(#"pstfx_infrared");
            update_ui_fullscreen_filter_model(binitialsnap, 2);
        }
        return;
    }
    if (bwastimejump == 2) {
        should_change = 1;
        if (player shouldchangescreenpostfx(binitialsnap)) {
            player thread postfx::playpostfxbundle(#"pstfx_flir");
            update_ui_fullscreen_filter_model(binitialsnap, 1);
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xa1960ffe, Offset: 0x5718
// Size: 0x8a
function shouldchangescreenpostfx(localclientnum) {
    player = self;
    assert(isdefined(player));
    if (function_1cbf351b(localclientnum)) {
        killcamentity = function_93e0f729(localclientnum);
        if (isdefined(killcamentity) && killcamentity != player) {
            return false;
        }
    }
    return true;
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x77500c6e, Offset: 0x57b0
// Size: 0x274
function set_static_postfxbundle(*localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    player = self;
    if (bwastimejump == fieldname) {
        return;
    }
    if (!isdefined(player) || !player function_21c0fa55()) {
        return;
    }
    if (bwastimejump == 0) {
        if (player postfx::function_556665f2(#"pstfx_static")) {
            player thread postfx::stoppostfxbundle(#"pstfx_static");
        }
        if (player postfx::function_556665f2(#"hash_15d46f4ad6539103")) {
            player thread postfx::stoppostfxbundle(#"hash_15d46f4ad6539103");
        }
        return;
    }
    if (bwastimejump == 1) {
        var_8efa62c3 = 1;
        vehicle = getplayervehicle(player);
        if (isdefined(vehicle)) {
            if (vehicle.vehicletype == #"veh_hawk_player_mp" || vehicle.vehicletype == #"veh_hawk_player_far_range_mp" || vehicle.vehicletype == #"veh_hawk_player_wz" || vehicle.vehicletype == #"veh_hawk_player_far_range_wz") {
                if (player postfx::function_556665f2(#"hash_15d46f4ad6539103") == 0) {
                    player thread postfx::playpostfxbundle(#"hash_15d46f4ad6539103");
                }
                var_8efa62c3 = 0;
            }
        }
        if (var_8efa62c3 && player postfx::function_556665f2(#"pstfx_static") == 0) {
            player thread postfx::playpostfxbundle(#"pstfx_static");
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x50983a84, Offset: 0x5a30
// Size: 0x74
function update_ui_fullscreen_filter_model(localclientnum, vision_set_value) {
    model = getuimodel(function_1df4c3b0(localclientnum, #"vehicle"), "fullscreenFilter");
    if (isdefined(model)) {
        setuimodelvalue(model, vision_set_value);
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xcdb924aa, Offset: 0x5ab0
// Size: 0x20c
function field_toggle_treadfx(*localclientnum, *oldval, newval, bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (self.vehicleclass === "helicopter" || self.vehicleclass === "plane") {
        println("<unknown string>");
        if (fieldname) {
            if (isdefined(self.csf_no_tread)) {
                self.csf_no_tread = 0;
            }
            self kill_treads_forever();
            self thread aircraft_dustkick();
        } else if (isdefined(bwastimejump) && bwastimejump) {
            self.csf_no_tread = 1;
        } else {
            self kill_treads_forever();
        }
        return;
    }
    if (fieldname) {
        println("<unknown string>");
        if (isdefined(bwastimejump) && bwastimejump) {
            println("<unknown string>" + self getentitynumber());
            self.csf_no_tread = 1;
        } else {
            println("<unknown string>" + self getentitynumber());
            self kill_treads_forever();
        }
        return;
    }
    println("<unknown string>");
    if (isdefined(self.csf_no_tread)) {
        self.csf_no_tread = 0;
    }
    self kill_treads_forever();
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x70336cdc, Offset: 0x5cc8
// Size: 0xea
function field_use_engine_damage_sounds(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (self.vehicleclass === "helicopter") {
        switch (bwastimejump) {
        case 0:
            self.engine_damage_low = 0;
            self.engine_damage_high = 0;
            break;
        case 1:
            self.engine_damage_low = 1;
            self.engine_damage_high = 0;
            break;
        case 1:
            self.engine_damage_low = 0;
            self.engine_damage_high = 1;
            break;
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xa9a4a28f, Offset: 0x5dc0
// Size: 0x8a
function private function_cc6f861b(localclientnum) {
    self function_3aa94f97();
    if (is_true(self.var_6aedef46)) {
        self.var_5a428a07 = self playsound(localclientnum, self.hornsound);
        return;
    }
    self.var_76660b3a = self playloopsound(self.hornsound);
}

// Namespace vehicle/vehicle_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x55a07ab4, Offset: 0x5e58
// Size: 0x36
function private function_3aa94f97() {
    if (isdefined(self.var_5a428a07)) {
        stopsound(self.var_5a428a07);
        self.var_5a428a07 = undefined;
    }
}

// Namespace vehicle/vehicle_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x56afcc50, Offset: 0x5e98
// Size: 0x36
function private function_f753359a() {
    if (isdefined(self.var_76660b3a)) {
        self stoploopsound(self.var_76660b3a);
        self.var_76660b3a = undefined;
    }
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xde64e8d4, Offset: 0x5ed8
// Size: 0x86
function private function_27b19317(localclientnum) {
    if (!self function_4add50a7()) {
        return false;
    }
    if (function_65b9eb0f(localclientnum)) {
        return false;
    }
    if (is_true(self.var_304cf9da)) {
        return false;
    }
    if (is_true(self.var_6aedef46)) {
        return false;
    }
    return true;
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x6 linked
// Checksum 0x87ee8802, Offset: 0x5f68
// Size: 0x9c
function private function_2d24296(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (self function_27b19317(fieldname)) {
        return;
    }
    if (!isdefined(self.hornsound)) {
        return;
    }
    if (bwastimejump) {
        self function_cc6f861b(fieldname);
        return;
    }
    self function_f753359a();
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x22c104ba, Offset: 0x6010
// Size: 0x842
function function_7d1d0e65(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self.settings) && isdefined(self.scriptbundlesettings)) {
        self.settings = getscriptbundle(self.scriptbundlesettings);
    }
    if (!isdefined(self.settings) || !isdefined(self.settings.malfunction_effects)) {
        return;
    }
    if (!isdefined(self.fx_handles)) {
        self.fx_handles = [];
    }
    if (!isdefined(self.fx_handles[#"malfunction"])) {
        self.fx_handles[#"malfunction"] = [];
    }
    foreach (handle in self.fx_handles[#"malfunction"]) {
        stopfx(binitialsnap, handle);
    }
    self.fx_handles[#"malfunction"] = [];
    if (bwastimejump) {
        foreach (var_b5ddf091 in self.settings.malfunction_effects) {
            tag = var_b5ddf091.var_454a4e08;
            effect = var_b5ddf091.transition;
            if (isdefined(var_b5ddf091.transition) && isdefined(var_b5ddf091.var_454a4e08)) {
                util::playfxontag(binitialsnap, var_b5ddf091.transition, self, var_b5ddf091.var_454a4e08);
            }
            switch (bwastimejump) {
            case 0:
                break;
            case 1:
                if (isdefined(var_b5ddf091.warning) && isdefined(var_b5ddf091.tag_warning)) {
                    handle = util::playfxontag(binitialsnap, var_b5ddf091.warning, self, var_b5ddf091.tag_warning);
                    if (!isdefined(self.fx_handles[#"malfunction"])) {
                        self.fx_handles[#"malfunction"] = [];
                    } else if (!isarray(self.fx_handles[#"malfunction"])) {
                        self.fx_handles[#"malfunction"] = array(self.fx_handles[#"malfunction"]);
                    }
                    self.fx_handles[#"malfunction"][self.fx_handles[#"malfunction"].size] = handle;
                }
                break;
            case 2:
                if (isdefined(var_b5ddf091.active) && isdefined(var_b5ddf091.var_2f451e59)) {
                    handle = util::playfxontag(binitialsnap, var_b5ddf091.active, self, var_b5ddf091.var_2f451e59);
                    if (!isdefined(self.fx_handles[#"malfunction"])) {
                        self.fx_handles[#"malfunction"] = [];
                    } else if (!isarray(self.fx_handles[#"malfunction"])) {
                        self.fx_handles[#"malfunction"] = array(self.fx_handles[#"malfunction"]);
                    }
                    self.fx_handles[#"malfunction"][self.fx_handles[#"malfunction"].size] = handle;
                }
                break;
            case 3:
                if (isdefined(var_b5ddf091.fatal) && isdefined(var_b5ddf091.var_ceeccc7a)) {
                    handle = util::playfxontag(binitialsnap, var_b5ddf091.fatal, self, var_b5ddf091.var_ceeccc7a);
                    if (!isdefined(self.fx_handles[#"malfunction"])) {
                        self.fx_handles[#"malfunction"] = [];
                    } else if (!isarray(self.fx_handles[#"malfunction"])) {
                        self.fx_handles[#"malfunction"] = array(self.fx_handles[#"malfunction"]);
                    }
                    self.fx_handles[#"malfunction"][self.fx_handles[#"malfunction"].size] = handle;
                }
                break;
            }
        }
    }
    if (bwastimejump != fieldname) {
        var_ca456b21 = "uin_chopper_alarm_warning";
        var_b10574a9 = "uin_chopper_alarm_critical";
        switch (fieldname) {
        case 0:
        case 1:
            if (isdefined(self.var_30141f5c)) {
                self stoploopsound(self.var_30141f5c);
                self.var_30141f5c = undefined;
            }
            break;
        case 2:
        case 3:
            if (bwastimejump != 2 && bwastimejump != 3 && isdefined(self.var_30141f5c)) {
                self stoploopsound(self.var_30141f5c);
                self.var_30141f5c = undefined;
            }
            break;
        }
        switch (bwastimejump) {
        case 0:
            break;
        case 1:
            self.var_30141f5c = self playloopsound(var_ca456b21);
            break;
        case 2:
        case 3:
            if (fieldname != 2 && fieldname != 3) {
                self.var_30141f5c = self playloopsound(var_b10574a9);
            }
            break;
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xd60f88b3, Offset: 0x6860
// Size: 0xf4
function field_do_deathfx(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    self endon(#"death");
    if (newval) {
        self stop_stun_fx(localclientnum);
        self notify(#"vehicle_death_fx");
    }
    if (newval == 2) {
        self field_do_empdeathfx(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    } else {
        self field_do_standarddeathfx(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    }
    self thread function_18758bfa(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
}

// Namespace vehicle/vehicle_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xe5c979bc, Offset: 0x6960
// Size: 0x1bc
function private function_724c261b(localclientnum, var_9ea6f38a) {
    if (!isdefined(var_9ea6f38a)) {
        return;
    }
    if (isdefined(var_9ea6f38a.var_d6402306)) {
        if (isdefined(var_9ea6f38a.var_77369946)) {
            handle = util::playfxontag(localclientnum, var_9ea6f38a.var_d6402306, self, var_9ea6f38a.var_77369946);
        } else {
            handle = playfx(localclientnum, var_9ea6f38a.var_d6402306, self.origin);
        }
        setfxignorepause(localclientnum, handle, 1);
        if (!isdefined(self.fx_handles[#"smolder"])) {
            self.fx_handles[#"smolder"] = [];
        } else if (!isarray(self.fx_handles[#"smolder"])) {
            self.fx_handles[#"smolder"] = array(self.fx_handles[#"smolder"]);
        }
        self.fx_handles[#"smolder"][self.fx_handles[#"smolder"].size] = handle;
    }
    if (isdefined(var_9ea6f38a.var_2ddda1c6)) {
        self playsound(localclientnum, var_9ea6f38a.var_2ddda1c6);
    }
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xcaba831f, Offset: 0x6b28
// Size: 0x108
function private function_5ec745e3(localclientnum) {
    if (!isdefined(self.settings) && isdefined(self.scriptbundlesettings)) {
        self.settings = getscriptbundle(self.scriptbundlesettings);
    }
    if (!isdefined(self.settings)) {
        return;
    }
    if (!isdefined(self.settings.var_24cedff1)) {
        return;
    }
    foreach (var_9ea6f38a in self.settings.var_24cedff1) {
        self function_724c261b(localclientnum, var_9ea6f38a);
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xe1590edb, Offset: 0x6c38
// Size: 0x42c
function function_18758bfa(localclientnum, *oldval, newval, *bnewent, binitialsnap, *fieldname, *bwastimejump) {
    if (fieldname && !bwastimejump) {
        self endon(#"death");
        if (isdefined(self.var_6e8da11c) && self.var_6e8da11c > 0) {
            wait(self.var_6e8da11c);
        }
        if (!isdefined(self.fx_handles)) {
            self.fx_handles = [];
        }
        if (!isdefined(self.fx_handles[#"smolder"])) {
            self.fx_handles[#"smolder"] = [];
        }
        if (isdefined(self.var_8a037014) && self.var_8a037014 != "") {
            if (isdefined(self.var_20eae439) && self.var_20eae439 != "") {
                handle = util::playfxontag(binitialsnap, self.var_8a037014, self, self.var_20eae439);
            } else {
                handle = playfx(binitialsnap, self.var_8a037014, self.origin);
            }
            setfxignorepause(binitialsnap, handle, 1);
            if (!isdefined(self.fx_handles[#"smolder"])) {
                self.fx_handles[#"smolder"] = [];
            } else if (!isarray(self.fx_handles[#"smolder"])) {
                self.fx_handles[#"smolder"] = array(self.fx_handles[#"smolder"]);
            }
            self.fx_handles[#"smolder"][self.fx_handles[#"smolder"].size] = handle;
        }
        self function_5ec745e3(binitialsnap);
        if (isdefined(self.var_68f20b20) && self.var_68f20b20 != "") {
            self playsound(binitialsnap, self.var_68f20b20);
        }
        if (isdefined(handle) && isdefined(self.var_b321fcb3) && self.var_b321fcb3 > 0) {
            wait(self.var_b321fcb3);
            if (isfxplaying(binitialsnap, handle)) {
                stopfx(binitialsnap, handle);
                arrayremovevalue(self.fx_handles[#"smolder"], handle, 0);
            }
        }
        return;
    }
    if (isdefined(self.fx_handles) && isdefined(self.fx_handles[#"smolder"])) {
        foreach (handle in self.fx_handles[#"smolder"]) {
            stopfx(binitialsnap, handle);
        }
        self.fx_handles[#"smolder"] = [];
    }
}

// Namespace vehicle/vehicle_shared
// Params 2, eflags: 0x6 linked
// Checksum 0x5588a14, Offset: 0x7070
// Size: 0x204
function private function_fc7e495f(localclientnum, var_47bcd3d1) {
    if (!isdefined(var_47bcd3d1)) {
        return;
    }
    self endon(#"death");
    if (isdefined(var_47bcd3d1.var_ad486dc4) && var_47bcd3d1.var_ad486dc4 > 0) {
        wait(var_47bcd3d1.var_ad486dc4);
    }
    if (isdefined(var_47bcd3d1.var_82aeef56)) {
        if (isdefined(var_47bcd3d1.var_e9927fbf)) {
            handle = util::playfxontag(localclientnum, var_47bcd3d1.var_82aeef56, self, var_47bcd3d1.var_e9927fbf);
        } else {
            handle = playfx(localclientnum, var_47bcd3d1.var_82aeef56, self.origin);
        }
        setfxignorepause(localclientnum, handle, 1);
        if (!isdefined(self.fx_handles[#"death"])) {
            self.fx_handles[#"death"] = [];
        } else if (!isarray(self.fx_handles[#"death"])) {
            self.fx_handles[#"death"] = array(self.fx_handles[#"death"]);
        }
        self.fx_handles[#"death"][self.fx_handles[#"death"].size] = handle;
    }
    if (isdefined(var_47bcd3d1.var_346b417d)) {
        self playsound(localclientnum, var_47bcd3d1.var_346b417d);
    }
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xc24cc2e0, Offset: 0x7280
// Size: 0x108
function private function_eea2c7ff(localclientnum) {
    if (!isdefined(self.settings) && isdefined(self.scriptbundlesettings)) {
        self.settings = getscriptbundle(self.scriptbundlesettings);
    }
    if (!isdefined(self.settings)) {
        return;
    }
    if (!isdefined(self.settings.var_b3fbebad)) {
        return;
    }
    foreach (var_47bcd3d1 in self.settings.var_b3fbebad) {
        self thread function_fc7e495f(localclientnum, var_47bcd3d1);
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x10c44774, Offset: 0x7390
// Size: 0x304
function field_do_standarddeathfx(localclientnum, *oldval, newval, *bnewent, binitialsnap, *fieldname, *bwastimejump) {
    if (fieldname && !bwastimejump) {
        self endon(#"death");
        util::waittill_dobj(binitialsnap);
        if (!isdefined(self.fx_handles)) {
            self.fx_handles = [];
        }
        if (!isdefined(self.fx_handles[#"death"])) {
            self.fx_handles[#"death"] = [];
        }
        if (isdefined(self.deathfxname)) {
            if (isdefined(self.deathfxtag) && self.deathfxtag != "") {
                handle = util::playfxontag(binitialsnap, self.deathfxname, self, self.deathfxtag);
            } else {
                handle = playfx(binitialsnap, self.deathfxname, self.origin);
            }
            setfxignorepause(binitialsnap, handle, 1);
            if (!isdefined(self.fx_handles[#"death"])) {
                self.fx_handles[#"death"] = [];
            } else if (!isarray(self.fx_handles[#"death"])) {
                self.fx_handles[#"death"] = array(self.fx_handles[#"death"]);
            }
            self.fx_handles[#"death"][self.fx_handles[#"death"].size] = handle;
        }
        self function_eea2c7ff(binitialsnap);
        self playsound(binitialsnap, self.deathfxsound);
        if (isdefined(self.deathquakescale) && self.deathquakescale > 0) {
            earthquake(binitialsnap, self.deathquakescale, self.deathquakeduration, self.origin, self.deathquakeradius);
        }
        if (isdefined(self.var_d0569e25) && self.var_d0569e25 != "") {
            self playrumbleonentity(binitialsnap, self.var_d0569e25);
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xbdcabc7c, Offset: 0x76a0
// Size: 0x374
function field_do_empdeathfx(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    if (!isdefined(self.settings) && isdefined(self.scriptbundlesettings)) {
        self.settings = getscriptbundle(self.scriptbundlesettings);
    }
    if (!isdefined(self.settings)) {
        self field_do_standarddeathfx(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
        return;
    }
    if (newval && !binitialsnap) {
        self endon(#"death");
        util::waittill_dobj(localclientnum);
        if (!isdefined(self.fx_handles)) {
            self.fx_handles = [];
        }
        if (!isdefined(self.fx_handles[#"empdeath"])) {
            self.fx_handles[#"empdeath"] = [];
        }
        s = self.settings;
        if (isdefined(s.emp_death_fx_1)) {
            if (isdefined(s.emp_death_tag_1) && s.emp_death_tag_1 != "") {
                handle = util::playfxontag(localclientnum, s.emp_death_fx_1, self, s.emp_death_tag_1);
            } else {
                handle = playfx(localclientnum, s.emp_death_tag_1, self.origin);
            }
            setfxignorepause(localclientnum, handle, 1);
            if (!isdefined(self.fx_handles[#"empdeath"])) {
                self.fx_handles[#"empdeath"] = [];
            } else if (!isarray(self.fx_handles[#"empdeath"])) {
                self.fx_handles[#"empdeath"] = array(self.fx_handles[#"empdeath"]);
            }
            self.fx_handles[#"empdeath"][self.fx_handles[#"empdeath"].size] = handle;
        }
        if (isdefined(s.emp_death_sound_1)) {
            self playsound(localclientnum, s.emp_death_sound_1);
        }
        if (isdefined(self.deathquakescale) && self.deathquakescale > 0) {
            earthquake(localclientnum, self.deathquakescale * 0.25, self.deathquakeduration * 2, self.origin, self.deathquakeradius);
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xe79c64aa, Offset: 0x7a20
// Size: 0xfa
function private function_245fd53b(localclientnum) {
    self endon(#"death");
    starttime = self getclienttime();
    var_d183f050 = getservertime(localclientnum);
    while (true) {
        self function_43d26f48();
        waitframe(1);
        currenttime = self getclienttime();
        var_5710f35c = getservertime(localclientnum);
        if (var_5710f35c < var_d183f050) {
            break;
        }
        elapsedtime = currenttime - starttime;
        if (elapsedtime >= 5000) {
            break;
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x8c387fc4, Offset: 0x7b28
// Size: 0x54
function function_dacff0e7(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self thread function_245fd53b(bwastimejump);
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xb36c6033, Offset: 0x7b88
// Size: 0x1ca
function field_update_alert_level(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    delete_alert_lights(fieldname);
    if (!isdefined(self.scriptbundlesettings)) {
        return;
    }
    if (!isdefined(self.alert_light_fx_handles)) {
        self.alert_light_fx_handles = [];
    }
    settings = getscriptbundle(self.scriptbundlesettings);
    switch (bwastimejump) {
    case 0:
        break;
    case 1:
        if (isdefined(settings.unawarelightfx1)) {
            self.alert_light_fx_handles[0] = util::playfxontag(fieldname, settings.unawarelightfx1, self, settings.lighttag1);
        }
        break;
    case 2:
        if (isdefined(settings.alertlightfx1)) {
            self.alert_light_fx_handles[0] = util::playfxontag(fieldname, settings.alertlightfx1, self, settings.lighttag1);
        }
        break;
    case 3:
        if (isdefined(settings.combatlightfx1)) {
            self.alert_light_fx_handles[0] = util::playfxontag(fieldname, settings.combatlightfx1, self, settings.lighttag1);
        }
        break;
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xcc5d15fb, Offset: 0x7d60
// Size: 0xc4
function field_toggle_exhaustfx_handler(localclientnum, *oldval, newval, bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (fieldname) {
        if (isdefined(bwastimejump) && bwastimejump) {
            self.csf_no_exhaust = 1;
        } else {
            self stop_exhaust(binitialsnap);
        }
        return;
    }
    if (isdefined(self.csf_no_exhaust)) {
        self.csf_no_exhaust = 0;
    }
    self stop_exhaust(binitialsnap);
    self play_exhaust(binitialsnap);
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x8c66fa71, Offset: 0x7e30
// Size: 0xec
function field_toggle_lights_handler(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self lights_off(fieldname);
        return;
    }
    if (bwastimejump == 2) {
        self lights_on(fieldname, #"allies");
        return;
    }
    if (bwastimejump == 3) {
        self lights_on(fieldname, #"axis");
        return;
    }
    self lights_on(fieldname);
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x98c9508b, Offset: 0x7f28
// Size: 0x3c
function field_toggle_lockon_handler(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    
}

// Namespace vehicle/vehicle_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x3717801a, Offset: 0x7f70
// Size: 0x9c
function function_670a62e7(var_96ceb3eb, &fxlist, &taglist) {
    if (isdefined(var_96ceb3eb) && isarray(var_96ceb3eb)) {
        for (i = 0; i < var_96ceb3eb.size; i++) {
            addfxandtagtolists(var_96ceb3eb[i].fx, var_96ceb3eb[i].tag, fxlist, taglist, i, var_96ceb3eb.size - 1);
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 6, eflags: 0x2 linked
// Checksum 0x54f5eccf, Offset: 0x8018
// Size: 0x122
function addfxandtagtolists(fx, tag, &fxlist, &taglist, id, maxid) {
    if (isdefined(fx) && isdefined(tag) && isint(id) && isint(maxid) && id <= maxid) {
        if (!isdefined(fxlist)) {
            fxlist = [];
        } else if (!isarray(fxlist)) {
            fxlist = array(fxlist);
        }
        fxlist[fxlist.size] = fx;
        if (!isdefined(taglist)) {
            taglist = [];
        } else if (!isarray(taglist)) {
            taglist = array(taglist);
        }
        taglist[taglist.size] = tag;
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x909a276f, Offset: 0x8148
// Size: 0xb4
function function_d7a2c2f(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    if (bwastimejump) {
        self notify(#"light_disable");
        self stop_stun_fx(fieldname);
        self start_stun_fx(fieldname);
        return;
    }
    self stop_stun_fx(fieldname);
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x7252c2c5, Offset: 0x8208
// Size: 0xdc
function start_stun_fx(localclientnum) {
    stunfx = isdefined(self.global_zm_specialty_staminup_drankdie) ? self.global_zm_specialty_staminup_drankdie : #"killstreaks/fx_agr_emp_stun";
    _exp_special_web_dissolve = isdefined(self.stunfxtag) ? self.stunfxtag : "tag_origin";
    var_6dc7131c = isdefined(self.var_c254489e) ? self.var_c254489e : #"veh_talon_shutdown";
    self.stun_fx = util::playfxontag(localclientnum, stunfx, self, _exp_special_web_dissolve);
    playsound(localclientnum, var_6dc7131c, self.origin);
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xfb5c2dd, Offset: 0x82f0
// Size: 0x3e
function stop_stun_fx(localclientnum) {
    if (isdefined(self.stun_fx)) {
        stopfx(localclientnum, self.stun_fx);
        self.stun_fx = undefined;
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x6c8c9d1d, Offset: 0x8338
// Size: 0x2fc
function field_update_damage_state(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self.scriptbundlesettings)) {
        return;
    }
    settings = getscriptbundle(self.scriptbundlesettings);
    if (isdefined(self.damage_state_fx_handles)) {
        foreach (fx_handle in self.damage_state_fx_handles) {
            if (isdefined(fx_handle)) {
                stopfx(fieldname, fx_handle);
            }
        }
    }
    self.damage_state_fx_handles = [];
    fxlist = [];
    taglist = [];
    sound = undefined;
    if (bwastimejump > 0) {
        var_c0e21df2 = "damagestate_lv" + bwastimejump;
        numslots = settings.(var_c0e21df2 + "_numslots");
        for (fxindex = 1; isdefined(numslots) && fxindex <= numslots; fxindex++) {
            addfxandtagtolists(settings.(var_c0e21df2 + "_fx" + fxindex), settings.(var_c0e21df2 + "_tag" + fxindex), fxlist, taglist, fxindex, numslots);
        }
        sound = settings.(var_c0e21df2 + "_sound");
    }
    for (i = 0; i < fxlist.size; i++) {
        fx_handle = util::playfxontag(fieldname, fxlist[i], self, taglist[i]);
        if (!isdefined(self.damage_state_fx_handles)) {
            self.damage_state_fx_handles = [];
        } else if (!isarray(self.damage_state_fx_handles)) {
            self.damage_state_fx_handles = array(self.damage_state_fx_handles);
        }
        self.damage_state_fx_handles[self.damage_state_fx_handles.size] = fx_handle;
    }
    if (isdefined(self) && isdefined(sound)) {
        self playsound(fieldname, sound);
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xc459027f, Offset: 0x8640
// Size: 0x61e
function field_death_spawn_dynents(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self.scriptbundlesettings)) {
        return;
    }
    settings = getscriptbundle(self.scriptbundlesettings);
    if (fieldname == 0) {
        velocity = self getvelocity();
        numdynents = isdefined(settings.death_dynent_count) ? settings.death_dynent_count : 0;
        for (i = 0; i < numdynents; i++) {
            model = settings.("death_dynmodel" + i);
            if (!isdefined(model)) {
                continue;
            }
            gibpart = settings.("death_dynent_gib" + i);
            if (self.gibbed === 1 && gibpart === 1) {
                continue;
            }
            pitch = isdefined(settings.("death_dynent_force_pitch" + i)) ? settings.("death_dynent_force_pitch" + i) : 0;
            yaw = isdefined(settings.("death_dynent_force_yaw" + i)) ? settings.("death_dynent_force_yaw" + i) : 0;
            angles = (randomfloatrange(pitch - 15, pitch + 15), randomfloatrange(yaw - 20, yaw + 20), randomfloatrange(-20, 20));
            direction = anglestoforward(self.angles + angles);
            minscale = isdefined(settings.("death_dynent_force_minscale" + i)) ? settings.("death_dynent_force_minscale" + i) : 0;
            maxscale = isdefined(settings.("death_dynent_force_maxscale" + i)) ? settings.("death_dynent_force_maxscale" + i) : 0;
            force = direction * randomfloatrange(minscale, maxscale);
            offset = (isdefined(settings.("death_dynent_offsetX" + i)) ? settings.("death_dynent_offsetX" + i) : 0, isdefined(settings.("death_dynent_offsetY" + i)) ? settings.("death_dynent_offsetY" + i) : 0, isdefined(settings.("death_dynent_offsetZ" + i)) ? settings.("death_dynent_offsetZ" + i) : 0);
            switch (bwastimejump) {
            case 0:
                break;
            case 1:
                fx = settings.("death_dynent_fx" + i);
                break;
            case 2:
                fx = settings.("death_dynent_elec_fx" + i);
                break;
            case 3:
                fx = settings.("death_dynent_fire_fx" + i);
                break;
            }
            offset = rotatepoint(offset, self.angles);
            hitoffset = (randomfloatrange(-5, 5), randomfloatrange(-5, 5), randomfloatrange(-5, 5));
            hitoffset = rotatepoint(hitoffset, self.angles);
            if (bwastimejump > 1 && isdefined(fx)) {
                dynent = createdynentandlaunch(fieldname, model, self.origin + offset, self.angles, self.origin + hitoffset, force, fx);
                continue;
            }
            if (bwastimejump == 1 && isdefined(fx)) {
                dynent = createdynentandlaunch(fieldname, model, self.origin + offset, self.angles, self.origin + hitoffset, force, fx);
                continue;
            }
            dynent = createdynentandlaunch(fieldname, model, self.origin + offset, self.angles, self.origin + hitoffset, force);
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xcf48cebd, Offset: 0x8c68
// Size: 0x534
function field_gib_spawn_dynents(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self.scriptbundlesettings)) {
        return;
    }
    settings = getscriptbundle(self.scriptbundlesettings);
    if (bwastimejump == 0) {
        velocity = self getvelocity();
        numdynents = 2;
        for (i = 0; i < numdynents; i++) {
            model = settings.("servo_gib_model" + i);
            if (!isdefined(model)) {
                return;
            }
            self.gibbed = 1;
            origin = self.origin;
            angles = self.angles;
            hidetag = settings.("servo_gib_tag" + i);
            if (isdefined(hidetag)) {
                origin = self gettagorigin(hidetag);
                angles = self gettagangles(hidetag);
            }
            pitch = isdefined(settings.("servo_gib_force_pitch" + i)) ? settings.("servo_gib_force_pitch" + i) : 0;
            yaw = isdefined(settings.("servo_gib_force_yaw" + i)) ? settings.("servo_gib_force_yaw" + i) : 0;
            relative_angles = (randomfloatrange(pitch - 5, pitch + 5), randomfloatrange(yaw - 5, yaw + 5), randomfloatrange(-5, 5));
            direction = anglestoforward(angles + relative_angles);
            minscale = isdefined(settings.("servo_gib_force_minscale" + i)) ? settings.("servo_gib_force_minscale" + i) : 0;
            maxscale = isdefined(settings.("servo_gib_force_maxscale" + i)) ? settings.("servo_gib_force_maxscale" + i) : 0;
            force = direction * randomfloatrange(minscale, maxscale);
            offset = (isdefined(settings.("servo_gib_offsetX" + i)) ? settings.("servo_gib_offsetX" + i) : 0, isdefined(settings.("servo_gib_offsetY" + i)) ? settings.("servo_gib_offsetY" + i) : 0, isdefined(settings.("servo_gib_offsetZ" + i)) ? settings.("servo_gib_offsetZ" + i) : 0);
            fx = settings.("servo_gib_fx" + i);
            offset = rotatepoint(offset, angles);
            if (isdefined(fx)) {
                dynent = createdynentandlaunch(bwastimejump, model, origin + offset, angles, (0, 0, 0), velocity * 0.8, fx);
            } else {
                dynent = createdynentandlaunch(bwastimejump, model, origin + offset, angles, (0, 0, 0), velocity * 0.8);
            }
            if (isdefined(dynent)) {
                hitoffset = (randomfloatrange(-5, 5), randomfloatrange(-5, 5), randomfloatrange(-5, 5));
                launchdynent(dynent, force, hitoffset);
            }
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 0, eflags: 0x1
// Checksum 0xad79ec35, Offset: 0x91a8
// Size: 0x84
function autoexec build_damage_filter_list() {
    if (!isdefined(level.vehicle_damage_filters)) {
        level.vehicle_damage_filters = [];
    }
    level.vehicle_damage_filters[0] = "generic_filter_vehicle_damage";
    level.vehicle_damage_filters[1] = "generic_filter_sam_damage";
    level.vehicle_damage_filters[2] = "generic_filter_f35_damage";
    level.vehicle_damage_filters[3] = "generic_filter_vehicle_damage_sonar";
    level.vehicle_damage_filters[4] = "generic_filter_rts_vehicle_damage";
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x0
// Checksum 0xf90e3687, Offset: 0x9238
// Size: 0x40
function init_damage_filter(materialid) {
    level.localplayers[0].damage_filter_intensity = 0;
    materialname = level.vehicle_damage_filters[materialid];
}

// Namespace vehicle/vehicle_shared
// Params 2, eflags: 0x0
// Checksum 0xc048cec3, Offset: 0x9280
// Size: 0x2e
function damage_filter_enable(*localclientnum, *materialid) {
    level.localplayers[0].damage_filter_intensity = 0;
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x0
// Checksum 0x2f7700a4, Offset: 0x92b8
// Size: 0x3a
function damage_filter_disable(*localclientnum) {
    level notify(#"damage_filter_off");
    level.localplayers[0].damage_filter_intensity = 0;
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x0
// Checksum 0x3ced9218, Offset: 0x9300
// Size: 0xfc
function damage_filter_off(*localclientnum) {
    level endon(#"damage_filter");
    level endon(#"damage_filter_off");
    level endon(#"damage_filter_heavy");
    if (!isdefined(level.localplayers[0].damage_filter_intensity)) {
        return;
    }
    while (level.localplayers[0].damage_filter_intensity > 0) {
        level.localplayers[0].damage_filter_intensity = level.localplayers[0].damage_filter_intensity - 0.0505061;
        if (level.localplayers[0].damage_filter_intensity < 0) {
            level.localplayers[0].damage_filter_intensity = 0;
        }
        wait(0.016667);
    }
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x0
// Checksum 0x5d0c93db, Offset: 0x9408
// Size: 0xf0
function damage_filter_light(*localclientnum) {
    level endon(#"damage_filter_off");
    level endon(#"damage_filter_heavy");
    level notify(#"damage_filter");
    while (level.localplayers[0].damage_filter_intensity < 0.5) {
        level.localplayers[0].damage_filter_intensity = level.localplayers[0].damage_filter_intensity + 0.083335;
        if (level.localplayers[0].damage_filter_intensity > 0.5) {
            level.localplayers[0].damage_filter_intensity = 0.5;
        }
        wait(0.016667);
    }
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x0
// Checksum 0x6813f871, Offset: 0x9500
// Size: 0xcc
function damage_filter_heavy(*localclientnum) {
    level endon(#"damage_filter_off");
    level notify(#"damage_filter_heavy");
    while (level.localplayers[0].damage_filter_intensity < 1) {
        level.localplayers[0].damage_filter_intensity = level.localplayers[0].damage_filter_intensity + 0.083335;
        if (level.localplayers[0].damage_filter_intensity > 1) {
            level.localplayers[0].damage_filter_intensity = 1;
        }
        wait(0.016667);
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xa9fbf099, Offset: 0x95d8
// Size: 0x64
function function_9facca21(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self function_3f24c5a(bwastimejump);
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x380d1ed4, Offset: 0x9648
// Size: 0xbe
function play_flare_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_26fb93b4 = util::playfxontag(fieldname, #"hash_3905863dd0908e4a", self, "tag_origin");
    }
    if (bwastimejump == 0) {
        if (isdefined(self.var_26fb93b4)) {
            stopfx(fieldname, self.var_26fb93b4);
            self.var_26fb93b4 = undefined;
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xd811e6f9, Offset: 0x9710
// Size: 0xbe
function play_flare_hit_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_b4178826 = util::playfxontag(fieldname, #"hash_1e747bdc27127b91", self, "tag_origin");
    }
    if (bwastimejump == 0) {
        if (isdefined(self.var_b4178826)) {
            stopfx(fieldname, self.var_b4178826);
            self.var_b4178826 = undefined;
        }
    }
}

// Namespace vehicle/vehicle_shared
// Params 1, eflags: 0x0
// Checksum 0x9d82566, Offset: 0x97d8
// Size: 0x36
function set_static_amount(*staticamount) {
    driverlocalclient = self getlocalclientdriver();
    if (isdefined(driverlocalclient)) {
    }
}

