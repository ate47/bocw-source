// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\deployable.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreak_vehicle.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\killstreaks\remote_weapons.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\killstreaks\killstreak_detect.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace recon_car;

// Namespace recon_car/recon_car
// Params 0, eflags: 0x5
// Checksum 0x8f0c4bb3, Offset: 0x1e8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register("recon_car", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x6 linked
// Checksum 0x8c05ce8, Offset: 0x230
// Size: 0xf4
function private preinit() {
    level.var_bced5d3c = [];
    level.var_85baa7a3 = getweapon(#"recon_car_zm");
    if (!is_true(getgametypesetting(#"hash_45aec06707484fef"))) {
        return 0;
    }
    killstreak_detect::init_shared();
    remote_weapons::init_shared();
    killstreaks::function_b5b6ef3e(&init_killstreak);
    clientfield::register("vehicle", "" + #"hash_5b4b44738e08c9b9", 28000, 1, "counter");
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0xe31c5858, Offset: 0x330
// Size: 0xd4
function init_killstreak() {
    bundle = getscriptbundle("killstreak_recon_car_zm");
    killstreak_vehicle::init_killstreak(bundle);
    deployable::register_deployable(getweapon(#"recon_car_zm"), &function_b5006cfa, undefined, undefined, #"hash_37605398dce96965");
    callback::on_weapon_change(&function_93426c92);
    vehicle::add_main_callback("vehicle_t9_rcxd_racing_zm", &function_d1661ada);
}

// Namespace recon_car/recon_car
// Params 1, eflags: 0x6 linked
// Checksum 0x2da16b5e, Offset: 0x410
// Size: 0xac
function private function_93426c92(params) {
    if (params.weapon === level.var_85baa7a3) {
        self val::set(#"recon_car", "disable_weapon_cycling", 1);
        self.var_7388509e = 1;
        return;
    }
    if (is_true(self.var_7388509e)) {
        self.var_7388509e = undefined;
        self val::reset(#"recon_car", "disable_weapon_cycling");
    }
}

// Namespace recon_car/recon_car
// Params 3, eflags: 0x2 linked
// Checksum 0xb46c8bdf, Offset: 0x4c8
// Size: 0x9e
function function_b5006cfa(v_origin, *v_angles, *player) {
    if (zm_utility::is_classic()) {
        if (zm_utility::check_point_in_playable_area(player) && zm_utility::check_point_in_enabled_zone(player) && ispointonnavmesh(player)) {
            return true;
        }
    } else if (ispointonnavmesh(player)) {
        return true;
    }
    return false;
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0x4d9a6416, Offset: 0x570
// Size: 0x30c
function function_d1661ada() {
    self killstreak_vehicle::init_vehicle(&function_d4789bf5);
    self util::make_sentient();
    self.var_7d4f75e = 1;
    self.ignore_death_jolt = 1;
    self.var_92043a49 = 1;
    self.var_20c65a3e = 0;
    self.var_f3c54d1d = 20;
    self disabledriverfiring(1);
    self.var_c1524340 = &function_584fb7a3;
    if (!isdefined(level.var_bced5d3c)) {
        level.var_bced5d3c = [];
    } else if (!isarray(level.var_bced5d3c)) {
        level.var_bced5d3c = array(level.var_bced5d3c);
    }
    if (!isinarray(level.var_bced5d3c, self)) {
        level.var_bced5d3c[level.var_bced5d3c.size] = self;
    }
    self.var_a6ab9a09 = 1;
    self.var_5ab0177c = 1;
    self.var_604ba53e = &killstreak_vehicle::function_822e1f64;
    if (level.script === "zm_silver") {
        self.var_3e5e70e5 = 1;
    }
    bundle = killstreaks::get_script_bundle("recon_car");
    if (is_true(bundle.var_dad2e3a2)) {
        self.predictedcollisiontime = 0.1;
        self thread function_819fff9d();
    }
    if (isdefined(bundle.var_1c30ba81)) {
        self.var_a0f50ca8 = &function_2087b17f;
    }
    self.var_62b033f0 = &function_76817ccc;
    self thread function_f3170551();
    self thread function_5d0ef633();
    self thread function_fdcfd41d();
    while (!isplayer(self.owner) && isalive(self)) {
        waitframe(1);
    }
    self thread function_3f390797();
    if (isplayer(self.owner)) {
        self.owner thread function_48170f5e(self);
    }
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0x1081a2ba, Offset: 0x888
// Size: 0x1f6
function function_fdcfd41d() {
    self endon(#"death", #"shutdown");
    while (true) {
        var_d39fdf94 = getaiarchetypearray(#"hulk");
        var_d39fdf94 = arraysortclosest(var_d39fdf94, self.origin, undefined, 0, 1000);
        foreach (ai_hulk in var_d39fdf94) {
            if (isalive(ai_hulk)) {
                var_a3a77704 = ai_hulk gettagorigin("j_ball_le");
                var_feafc7a2 = ai_hulk gettagorigin("j_ball_ri");
                if (isdefined(var_a3a77704) && distancesquared(self.origin, var_a3a77704) <= 2025 || isdefined(var_feafc7a2) && distancesquared(self.origin, var_feafc7a2) <= 2025) {
                    self notify(#"veh_predictedcollision", {#target:ai_hulk});
                    return;
                }
            }
        }
        waitframe(1);
    }
}

// Namespace recon_car/recon_car
// Params 1, eflags: 0x2 linked
// Checksum 0x4408bb50, Offset: 0xa88
// Size: 0x1ac
function function_48170f5e(vehicle) {
    level endon(#"end_game");
    self endon(#"disconnect");
    self val::set(#"recon_car", "ignoreme", 1);
    self val::set(#"recon_car", "takedamage", 0);
    self val::set(#"recon_car", "disable_weapon_cycling", 1);
    vehicle waittill(#"death", #"shutdown");
    if (isplayer(self)) {
        self sethintstring("");
        self val::reset(#"recon_car", "disable_weapon_cycling");
    }
    wait(2);
    if (isplayer(self)) {
        self val::reset(#"recon_car", "ignoreme");
        self val::reset(#"recon_car", "takedamage");
    }
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0xae0b5636, Offset: 0xc40
// Size: 0xd4
function function_3f390797() {
    self endon(#"death", #"shutdown");
    if (isplayer(self.owner)) {
        util::waittill_any_ents(self.owner, #"hash_217479a2ecb64b4", level, #"hash_345e9169ebba28fb");
    } else {
        level waittill(#"hash_345e9169ebba28fb", #"hash_23d445a634bedeae", #"in_dark_side");
    }
    self.selfdestruct = 1;
    self killstreak_vehicle::function_822e1f64();
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0xb6a14f0a, Offset: 0xd20
// Size: 0x60
function function_5d0ef633() {
    self endon(#"death", #"shutdown");
    while (true) {
        wait(1.5);
        if (isdefined(self.owner)) {
            self function_86e8d9af();
        }
    }
}

// Namespace recon_car/recon_car
// Params 1, eflags: 0x2 linked
// Checksum 0x445797fb, Offset: 0xd88
// Size: 0x28c
function function_86e8d9af(n_radius = 200) {
    self endon(#"death", #"shutdown");
    if (is_true(self.var_38ae4622)) {
        self notify(#"hash_2eef2b24309bc112");
    }
    self clientfield::increment("" + #"hash_5b4b44738e08c9b9");
    a_zombies = self.owner getenemiesinradius(self.origin, n_radius);
    foreach (ai_zombie in a_zombies) {
        if (isalive(ai_zombie)) {
            if (ai_zombie.var_6f84b820 === #"normal") {
                v_dir = vectornormalize(ai_zombie.origin - self.origin);
                v_launch = v_dir * randomintrange(80, 100) + (0, 0, 150);
                ai_zombie zm_utility::function_ffc279(v_launch, self.owner, ai_zombie.health, self.weapon);
                continue;
            }
            ai_zombie thread ai::stun();
        }
    }
    self radiusdamage(self.origin, n_radius, self.radiusdamagemax, self.radiusdamagemin, self.owner, "MOD_UNKNOWN", self.weapon);
    glassradiusdamage(self.origin, n_radius, self.radiusdamagemax, self.radiusdamagemin, "MOD_UNKNOWN");
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x6 linked
// Checksum 0x1f433665, Offset: 0x1020
// Size: 0x104
function private function_584fb7a3() {
    vehicle = self;
    vehicle endon(#"death");
    if (!is_true(vehicle.remote_weapon_end)) {
        vehicle waittill(#"remote_weapon_end", #"hash_59b25025ce93a142");
    }
    attacker = isdefined(vehicle.owner) ? vehicle.owner : undefined;
    vehicle.takedamage = 1;
    vehicle.allowdeath = 1;
    vehicle dodamage(vehicle.health + 666, vehicle.origin + (0, 0, 10), attacker, attacker, "none", "MOD_EXPLOSIVE", 8192);
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0x56fb861c, Offset: 0x1130
// Size: 0x12
function function_d4789bf5() {
    self.var_99c7a1bc = self.weapon;
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0x824e28b5, Offset: 0x1150
// Size: 0x128
function function_819fff9d() {
    self endon(#"death");
    for (;;) {
        waitresult = self waittill(#"veh_predictedcollision");
        if ((isplayer(waitresult.target) || isai(waitresult.target)) && util::function_fbce7263(self.team, waitresult.target.team)) {
            if (isdefined(self.owner) && isdefined(self.var_22a05c26.var_d3413870)) {
                self.owner killstreaks::function_e9873ef7(self.var_22a05c26.var_d3413870, self.killstreak_id, #"hash_20e53d0989f408e6");
            }
            self killstreak_vehicle::function_1f46c433();
        }
    }
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0x4640668e, Offset: 0x1280
// Size: 0x128
function function_f3170551() {
    self endon(#"death");
    for (;;) {
        waitresult = self waittill(#"veh_landed");
        bundle = killstreaks::get_script_bundle("recon_car");
        if (isdefined(bundle.var_b771831a)) {
            a_trace = groundtrace(self.origin + (0, 0, 70), self.origin + (0, 0, -100), 0, self);
            str_fx = self getfxfromsurfacetable(bundle.var_b771831a, a_trace[#"surfacetype"]);
            playfx(str_fx, a_trace[#"position"], (0, 0, 1));
        }
    }
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0x4506fc9f, Offset: 0x13b0
// Size: 0x164
function function_2087b17f() {
    bundle = killstreaks::get_script_bundle("recon_car");
    arrayremovevalue(level.var_bced5d3c, self);
    trace = groundtrace(self.origin + (0, 0, 70), self.origin + (0, 0, -100), 0, self);
    explosionfx = self getfxfromsurfacetable(bundle.var_1c30ba81, trace[#"surfacetype"]);
    if (isdefined(explosionfx)) {
        fxorigin = self gettagorigin("tag_body");
        if (!isdefined(fxorigin)) {
            fxorigin = self.origin;
        }
        playfx(explosionfx, fxorigin, (0, 0, 1));
    }
    playsoundatposition(#"hash_7723f91638b2361f", self.origin + (0, 0, 25));
}

// Namespace recon_car/recon_car
// Params 0, eflags: 0x2 linked
// Checksum 0x457cacb0, Offset: 0x1520
// Size: 0x64
function function_76817ccc() {
    if (isdefined(self.owner) && isdefined(self.var_22a05c26.var_d3413870)) {
        self.owner killstreaks::function_e9873ef7(self.var_22a05c26.var_d3413870, self.killstreak_id, #"hash_b7109f8dd0ceb9");
    }
}

// Namespace recon_car/recon_car
// Params 1, eflags: 0x2 linked
// Checksum 0xd38fac98, Offset: 0x1590
// Size: 0x72
function function_8030f1bd(zombie) {
    arrayremovevalue(level.var_bced5d3c, undefined);
    if (level.var_bced5d3c.size > 0) {
        var_3e90a437 = arraygetclosest(zombie.origin, level.var_bced5d3c, 1000);
    }
    return var_3e90a437;
}

