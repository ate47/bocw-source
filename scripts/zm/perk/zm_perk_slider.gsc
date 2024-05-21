// Atian COD Tools GSC CW decompiler test
#using script_4dc6a9b234b838e1;
#using script_2f9a68261f6a17be;
#using script_6951ea86fdae9ae0;
#using scripts\zm_common\trials\zm_trial_restrict_loadout.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using scripts\zm_common\zm_challenges.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using script_62caa307a394c18c;
#using script_5f261a5d57de5f7c;
#using scripts\core_common\throttle_shared.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace zm_perk_slider;

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x5
// Checksum 0x255b04cd, Offset: 0x2e0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_perk_slider", &preinit, &postinit, undefined, undefined);
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x6 linked
// Checksum 0x45f29fee, Offset: 0x338
// Size: 0xb4
function private preinit() {
    if (!is_true(getgametypesetting(#"hash_4b8929fb898a9e80"))) {
        return;
    }
    level.var_bc9564f4 = new class_c6c0e94();
    [[ level.var_bc9564f4 ]]->initialize(#"hash_184ea4de3979541", 1, float(function_60d95f53()) / 1000);
    enable_slider_perk_for_level();
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x3f8
// Size: 0x4
function private postinit() {
    
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x2 linked
// Checksum 0x9d33a523, Offset: 0x408
// Size: 0x1dc
function enable_slider_perk_for_level() {
    zm_perks::register_perk_basic_info(#"hash_3417450e1347185", #"perk_slider", 2000, #"zombie/perk_slider", getweapon("zombie_perk_bottle_slider"), undefined, #"zmperksphdslider");
    zm_perks::register_perk_precache_func(#"hash_3417450e1347185", &function_1781c013);
    zm_perks::register_perk_clientfields(#"hash_3417450e1347185", &function_5ba17a72, &function_90f58801);
    zm_perks::register_perk_machine(#"hash_3417450e1347185", &function_ef14badb, &init_slider);
    zm_perks::register_perk_host_migration_params(#"hash_3417450e1347185", "vending_slider", "slider_light");
    zm_perks::register_perk_threads(#"hash_3417450e1347185", &function_1d4d3034, &function_ae56fb1a);
    zm_perks::register_perk_damage_override_func(&function_9e712df);
    function_cd140ee9(#"sv_paused", &function_780bf8d3);
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x5f0
// Size: 0x4
function init_slider() {
    
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x2 linked
// Checksum 0x5a517ce7, Offset: 0x600
// Size: 0x106
function function_1781c013() {
    level._effect[#"slider_light"] = "zombie/fx9_perk_phd_slider";
    level.machine_assets[#"hash_3417450e1347185"] = spawnstruct();
    level.machine_assets[#"hash_3417450e1347185"].weapon = getweapon("zombie_perk_bottle_slider");
    level.machine_assets[#"hash_3417450e1347185"].off_model = "p9_sur_machine_phd_slider";
    level.machine_assets[#"hash_3417450e1347185"].on_model = "p9_sur_machine_phd_slider";
    level.machine_assets[#"hash_3417450e1347185"].power_on_callback = &function_c60d9d72;
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x2 linked
// Checksum 0x5ca1ac95, Offset: 0x710
// Size: 0xa4
function function_5ba17a72() {
    clientfield::register("toplayer", "slide_fx", 17000, 1, "int");
    if (zm_utility::is_classic()) {
        clientfield::register("scriptmover", "phd_slider_machine_rob_poweron", 17000, 1, "int");
        clientfield::register("scriptmover", "phd_slider_machine_rob_purchase", 17000, 1, "counter");
    }
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 1, eflags: 0x2 linked
// Checksum 0xafc501a0, Offset: 0x7c0
// Size: 0xc
function function_90f58801(*state) {
    
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x2 linked
// Checksum 0x70b2e18e, Offset: 0x7d8
// Size: 0x54
function function_c60d9d72() {
    level endon(#"end_game");
    self.use_func = &function_5fd3f2ba;
    self clientfield::set("phd_slider_machine_rob_poweron", 1);
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 1, eflags: 0x2 linked
// Checksum 0x782cb7cc, Offset: 0x838
// Size: 0x44
function function_5fd3f2ba(*player) {
    self endon(#"death");
    self clientfield::increment("phd_slider_machine_rob_purchase", 1);
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 4, eflags: 0x2 linked
// Checksum 0x513ff967, Offset: 0x888
// Size: 0x9a
function function_ef14badb(use_trigger, perk_machine, bump_trigger, *collision) {
    perk_machine.script_sound = "mus_perks_phd_jingle";
    perk_machine.script_string = "phd_slider_perk";
    perk_machine.script_label = "mus_perks_phd_sting";
    perk_machine.target = "vending_slider";
    bump_trigger.script_string = "phd_slider_perk";
    bump_trigger.targetname = "vending_slider";
    if (isdefined(collision)) {
        collision.script_string = "phd_slider_perk";
    }
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x2 linked
// Checksum 0x67966aea, Offset: 0x930
// Size: 0x4c
function function_1d4d3034() {
    self thread function_dc9a257a();
    if (namespace_e86ffa8::function_582d36be(5)) {
        self thread function_815172d1();
    }
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 4, eflags: 0x2 linked
// Checksum 0xadb127b7, Offset: 0x988
// Size: 0x46
function function_ae56fb1a(*b_pause, *str_perk, *str_result, *n_slot) {
    self notify(#"hash_6939dd7af68cec");
    self notify(#"hash_19d583212e9b3200");
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x2 linked
// Checksum 0x49af0b9a, Offset: 0x9d8
// Size: 0x1a8
function function_dc9a257a() {
    self notify(#"hash_6939dd7af68cec");
    self endon(#"disconnect", #"hash_6939dd7af68cec");
    self.var_287f4e8 = undefined;
    while (true) {
        self waittill(#"slide_begin");
        v_start_position = self.origin;
        self.var_4fe0aa35 = 1;
        tag_fx = self haspart("tag_fx") ? "tag_fx" : "tag_origin";
        self clientfield::set_to_player("slide_fx", 1);
        self playsound(#"hash_80b7cd28685b769");
        self.var_f354086e = 0;
        self thread function_d2991c92(v_start_position);
        self waittill(#"slide_end");
        self clientfield::set_to_player("slide_fx", 0);
        self.var_4fe0aa35 = undefined;
        self.var_287f4e8 = undefined;
        self stopsound(#"hash_80b7cd28685b769");
        self playsound(#"hash_66ded3093973b658");
    }
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 1, eflags: 0x2 linked
// Checksum 0x6f1efc81, Offset: 0xb88
// Size: 0x1b0
function function_d2991c92(v_start_position) {
    self endon(#"death", #"hash_6939dd7af68cec");
    while (self issliding()) {
        n_distance = distance(v_start_position, self.origin);
        self.var_f354086e += n_distance;
        if (self.var_f354086e >= 32) {
            nearbyzombies = self getenemiesinradius(self.origin, 64);
            nearbyzombies = arraysortclosest(nearbyzombies, self.origin);
            if (isarray(nearbyzombies) && nearbyzombies.size >= 1) {
                if (isalive(nearbyzombies[0])) {
                    var_b61c0138 = bullettracepassed(self.origin, nearbyzombies[0].origin, 0, nearbyzombies[0]);
                    if (var_b61c0138) {
                        self setvelocity((0, 0, 0));
                        self slide_explosion(self.var_f354086e);
                        return;
                    }
                }
            }
        }
        waitframe(1);
    }
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 2, eflags: 0x2 linked
// Checksum 0x9c0f0ac6, Offset: 0xd40
// Size: 0x14c
function slide_explosion(var_980edc69, var_8b77e4de = 0) {
    var_a25d1f0 = 0;
    explosion_radius = 0;
    if (var_980edc69 < 64) {
        explosion_radius = 64;
        var_a25d1f0 = 150;
    } else if (var_980edc69 < 128 && var_980edc69 >= 64) {
        explosion_radius = 96;
        var_a25d1f0 = 200;
    } else if (var_980edc69 < 256 && var_980edc69 >= 128) {
        explosion_radius = 128;
        var_a25d1f0 = 250;
    } else if (var_980edc69 < 512 && var_980edc69 >= 256) {
        explosion_radius = 256;
        var_a25d1f0 = 300;
    } else if (var_980edc69 >= 512) {
        explosion_radius = 256;
        var_a25d1f0 = 350;
    }
    if (!is_true(self.var_287f4e8)) {
        self thread function_4d806c6a(var_a25d1f0, explosion_radius, var_8b77e4de);
    }
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 3, eflags: 0x2 linked
// Checksum 0x24b3141f, Offset: 0xe98
// Size: 0x9b2
function function_4d806c6a(var_a25d1f0 = 25, explosion_radius = 64, var_8b77e4de = 0) {
    self endon(#"death");
    self notify("1fac30e743545f61");
    self endon("1fac30e743545f61");
    self.var_287f4e8 = 1;
    if (self isinvehicle()) {
        var_b498a002 = 128;
        vehicle = self getvehicleoccupied();
        trace = groundtrace(vehicle.origin + (0, 0, var_b498a002), vehicle.origin - (0, 0, var_b498a002), 0, vehicle, 1, 1);
    } else {
        var_b498a002 = 64;
        trace = groundtrace(self.origin + (0, 0, var_b498a002), self.origin - (0, 0, var_b498a002), 0, self, 1, 1);
    }
    if (isdefined(trace[#"position"])) {
        var_55f73ce6 = trace[#"position"];
    } else {
        var_55f73ce6 = (self.origin[0], self.origin[1], self.origin[2] + 16);
    }
    forward = anglestoforward(self.angles);
    forward = vectornormalize(forward);
    forward = vectorscale(forward, 64);
    var_55f73ce6 += forward;
    var_c37cb40 = 1;
    switch (explosion_radius) {
    case 64:
        playfx(#"hash_7d2bc89d5f26531", var_55f73ce6, forward, (0, 0, 1));
        playsoundatposition(#"hash_e74488608c9e54b", var_55f73ce6 + (0, 0, 30));
        break;
    case 96:
        var_c37cb40 = 2;
        playfx(#"hash_7dd3089d5fb7ed2", var_55f73ce6, forward, (0, 0, 1));
        playsoundatposition(#"hash_20bca686136afed1", var_55f73ce6 + (0, 0, 30));
        break;
    case 128:
        var_c37cb40 = 2;
        playfx(#"hash_7e74089d603ee87", var_55f73ce6, forward, (0, 0, 1));
        playsoundatposition(#"hash_20bca686136afed1", var_55f73ce6 + (0, 0, 30));
        break;
    case 256:
        var_c37cb40 = 2;
        playfx(#"hash_2cf4993681bf5b51", var_55f73ce6, forward, (0, 0, 1));
        playsoundatposition(#"hash_2b37bc8619de96ec", var_55f73ce6 + (0, 0, 30));
        break;
    }
    if (isarray(level.var_eda01097)) {
        arrayremovevalue(level.var_eda01097, undefined);
        if (level.var_eda01097.size != 0) {
            foreach (entity in level.var_eda01097) {
                if (isvec(entity.origin) && distance2d(self.origin, entity.origin) < explosion_radius && var_8b77e4de) {
                    entity notify(#"hash_81e93f0d0293b61", {#mod:"MOD_EXPLOSIVE", #damage:var_a25d1f0, #attacker:self});
                }
            }
        }
    }
    nearbyzombies = self getenemiesinradius(self.origin, explosion_radius);
    nearbyzombies = arraysortclosest(nearbyzombies, self.origin);
    var_b61c0138 = 1;
    foreach (i, zombie in nearbyzombies) {
        if (i > nearbyzombies.size / 2) {
            if (isalive(zombie) && isvec(zombie.origin) && isvec(self.origin)) {
                var_b61c0138 = bullettracepassed(self.origin, zombie.origin, 0, zombie);
            }
        }
        if (isalive(zombie) && var_b61c0138) {
            var_4ce7aa6d = 0;
            if (zm_utility::is_survival()) {
                var_a25d1f0 = zm_equipment::function_739fbb72(var_a25d1f0, undefined, zombie.var_6f84b820, zombie.maxhealth);
            } else {
                var_a25d1f0 = zm_equipment::function_379f6b5d(var_a25d1f0, undefined, zombie.var_6f84b820, zombie.maxhealth);
            }
            if (var_a25d1f0 >= zombie.health) {
                if (zombie.var_6f84b820 === #"normal") {
                    var_4ce7aa6d = 1;
                }
                zombie.var_390850ac = 1;
            }
            zombie namespace_42457a0::function_601fabe9(#"explosive", var_a25d1f0, zombie.origin, self, undefined, "none", "MOD_UNKNOWN", 0, level.weaponnone);
            if (var_4ce7aa6d) {
                zombie namespace_cc411409::ragdoll_launch(var_55f73ce6, var_c37cb40);
                zombie thread function_3fb4ce3b();
            } else if (var_8b77e4de) {
                zombie zombie_utility::setup_zombie_knockdown(var_55f73ce6);
            }
        }
        dummy_struct = {};
        [[ level.var_bc9564f4 ]]->waitinqueue(dummy_struct);
    }
    if (var_8b77e4de) {
        nearbyzombies = self getenemiesinradius(self.origin, explosion_radius * 2);
        foreach (zombie in nearbyzombies) {
            if (isalive(zombie) && !is_true(zombie.var_390850ac)) {
                zombie zombie_utility::setup_zombie_knockdown(var_55f73ce6);
            }
        }
    }
    self.var_287f4e8 = undefined;
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x2 linked
// Checksum 0x2fa34ed6, Offset: 0x1858
// Size: 0x84
function function_3fb4ce3b() {
    util::wait_network_frame();
    if (isdefined(self)) {
        if (self.health < -300) {
            if (math::cointoss()) {
                gibserverutils::annihilate(self);
            } else {
                self zombie_utility::gib_random_parts();
            }
            return;
        }
        self zombie_utility::gib_random_parts();
    }
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 10, eflags: 0x2 linked
// Checksum 0xd9309208, Offset: 0x18e8
// Size: 0xc2
function function_9e712df(*einflictor, *eattacker, *idamage, *idflags, smeansofdeath, *sweapon, *vpoint, *vdir, *shitloc, *psoffsettime) {
    if (self namespace_e86ffa8::function_582d36be(1) && self issliding()) {
        if (psoffsettime == "MOD_TRIGGER_HURT" || psoffsettime == "MOD_BURNED" || psoffsettime == "MOD_DOT") {
            return 0;
        }
    }
}

// Namespace zm_perk_slider/enter_vehicle
// Params 1, eflags: 0x20
// Checksum 0xaa1521b, Offset: 0x19b8
// Size: 0x54
function event_handler[enter_vehicle] codecallback_entervehicle(eventstruct) {
    if (zm_utility::is_survival() && isplayer(self)) {
        self thread function_55fdc82d(eventstruct.vehicle);
    }
}

// Namespace zm_perk_slider/exit_vehicle
// Params 1, eflags: 0x20
// Checksum 0xaf25ecb7, Offset: 0x1a18
// Size: 0x4e
function event_handler[exit_vehicle] codecallback_exitvehicle(*eventstruct) {
    if (zm_utility::is_survival() && isplayer(self)) {
        self notify(#"hash_49c8852035063bfd");
    }
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 1, eflags: 0x2 linked
// Checksum 0xef3ed4d1, Offset: 0x1a70
// Size: 0x92
function function_55fdc82d(vehicle) {
    self endon(#"death", #"disconnect", #"hash_49c8852035063bfd");
    while (true) {
        vehicle waittill(#"veh_inair");
        self.var_6d563065 = 1;
        vehicle waittill(#"veh_landed");
        self.var_6d563065 = undefined;
    }
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 0, eflags: 0x2 linked
// Checksum 0x4b37bdc8, Offset: 0x1b10
// Size: 0x3ac
function function_815172d1() {
    self endon(#"death", #"disconnect", #"hash_19d583212e9b3200");
    var_be3643e6 = 0;
    while (true) {
        if (isplayer(self)) {
            self.var_e9571d8b = undefined;
            onground = 1;
            if (self isinvehicle()) {
                if (is_true(self.var_6d563065)) {
                    onground = 0;
                }
            } else if (!isdefined(self getgroundent())) {
            }
            for (onground = 0; isplayer(self) && !onground && !self isparachuting(); onground = 0) {
                if (!var_be3643e6) {
                    var_be3643e6 = 1;
                    self.var_af850774 = 0;
                    var_62a70da1 = self.origin[2];
                } else if (var_62a70da1 < self.origin[2]) {
                    var_62a70da1 = self.origin[2];
                }
                waitframe(1);
                onground = 1;
                if (self isinvehicle()) {
                    if (is_true(self.var_6d563065)) {
                        onground = 0;
                    }
                    continue;
                }
                if (!isdefined(self getgroundent())) {
                }
            }
            if (self isparachuting()) {
                var_be3643e6 = 0;
            }
            if (var_be3643e6 && !self isparachuting()) {
                self.var_e9571d8b = max(0, var_62a70da1 - self.origin[2]);
                var_be3643e6 = 0;
                if (self.var_e9571d8b > 128) {
                    if (self.var_e9571d8b >= 128 && self.var_e9571d8b < 128 + 32) {
                        self slide_explosion(64, 1);
                    } else if (self.var_e9571d8b >= 128 + 32 && self.var_e9571d8b < 128 + 32 * 2) {
                        self slide_explosion(128, 1);
                    } else if (self.var_e9571d8b >= 128 + 32 * 2 && self.var_e9571d8b < 128 + 32 * 3) {
                        self slide_explosion(256, 1);
                    } else if (self.var_e9571d8b >= 128 + 32 * 3) {
                        self slide_explosion(512, 1);
                    }
                }
                waitframe(1);
            }
        }
        waitframe(1);
    }
}

// Namespace zm_perk_slider/zm_perk_slider
// Params 1, eflags: 0x2 linked
// Checksum 0x63ced9, Offset: 0x1ec8
// Size: 0x1da
function function_780bf8d3(dvar) {
    if (is_true(dvar.value)) {
        foreach (player in getplayers()) {
            if (is_true(player.var_4fe0aa35)) {
                player.var_fd7683a7 = player.origin;
            }
        }
        return;
    }
    util::wait_network_frame(2);
    foreach (player in getplayers()) {
        if (isdefined(player.var_fd7683a7)) {
            var_201425ca = bullettracepassed(player.var_fd7683a7, player.origin, 0, player, undefined, 0, 1, 1);
            if (!var_201425ca) {
                player setorigin(player.var_fd7683a7);
            }
            player.var_fd7683a7 = undefined;
        }
    }
}

