// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\aat_shared.gsc;

#namespace ammomod_napalmburst;

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 0, eflags: 0x2 linked
// Checksum 0xdc47c2e0, Offset: 0x260
// Size: 0x3dc
function init_napalmburst() {
    if (!is_true(level.aat_in_use)) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_10de3b1cea667398"))) {
        level.var_172a89cd = 1;
    }
    aat::register("ammomod_napalmburst", 0.15, 0, 3, 3, 1, &result, "t7_hud_zm_aat_blastfurnace", "wpn_aat_blast_furnace_plr", undefined, #"fire", undefined, #"hash_25c5cf4ba6d26606");
    aat::register("ammomod_napalmburst_1", 0.15, 0, 3, 3, 1, &result, "t7_hud_zm_aat_blastfurnace", "wpn_aat_blast_furnace_plr", undefined, #"fire", undefined, #"hash_25c5cf4ba6d26606");
    aat::register("ammomod_napalmburst_2", 0.15, 0, 3, 3, 1, &result, "t7_hud_zm_aat_blastfurnace", "wpn_aat_blast_furnace_plr", undefined, #"fire", undefined, #"hash_25c5cf4ba6d26606");
    aat::register("ammomod_napalmburst_3", 0.15, 0, 3, 3, 1, &result, "t7_hud_zm_aat_blastfurnace", "wpn_aat_blast_furnace_plr", undefined, #"fire", undefined, #"hash_25c5cf4ba6d26606");
    aat::register("ammomod_napalmburst_4", 0.15, 0, 3, 3, 1, &result, "t7_hud_zm_aat_blastfurnace", "wpn_aat_blast_furnace_plr", undefined, #"fire", undefined, #"hash_25c5cf4ba6d26606");
    aat::register("ammomod_napalmburst_5", 0.15, 0, 3, 3, 1, &result, "t7_hud_zm_aat_blastfurnace", "wpn_aat_blast_furnace_plr", undefined, #"fire", undefined, #"hash_25c5cf4ba6d26606");
    clientfield::register("actor", "zm_ammomod_napalmburst_explosion", 1, 1, "counter");
    clientfield::register("vehicle", "zm_ammomod_napalmburst_explosion", 1, 1, "counter");
    clientfield::register("actor", "zm_ammomod_napalmburst_burn", 1, 1, "int");
    clientfield::register("vehicle", "zm_ammomod_napalmburst_burn", 1, 1, "int");
    clientfield::register("toplayer", "ammomod_napalmburst_proc", 1, 1, "counter");
    level.var_da1321f4 = &function_80b0dbe5;
}

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 1, eflags: 0x6 linked
// Checksum 0x147782cc, Offset: 0x648
// Size: 0xdc
function private function_e8018847(aat_name = "ammomod_napalmburst") {
    switch (aat_name) {
    case #"ammomod_napalmburst":
    default:
        return 0;
    case #"ammomod_napalmburst_1":
        return 1;
    case #"ammomod_napalmburst_2":
        return 2;
    case #"ammomod_napalmburst_3":
        return 3;
    case #"ammomod_napalmburst_4":
        return 4;
    case #"ammomod_napalmburst_5":
        return 5;
    }
    return 0;
}

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 8, eflags: 0x2 linked
// Checksum 0x80fabf, Offset: 0x730
// Size: 0x304
function result(death, attacker, mod, weapon, var_fd90b0bb, vpoint, *shitloc, *boneindex = self.origin) {
    waitframe(1);
    if (is_true(level.var_172a89cd)) {
        return;
    }
    if (!isactor(self) && !isvehicle(self)) {
        return;
    }
    if (is_true(self.aat_turned)) {
        return;
    }
    if (!isplayer(weapon)) {
        return;
    }
    if (self.var_6f84b820 === #"elite" || self.var_6f84b820 === #"boss") {
        return;
    }
    aat_name = weapon aat::getaatonweapon(vpoint, 1);
    tier = function_e8018847(aat_name);
    if (tier < 4 && self.var_6f84b820 === #"special") {
        return;
    }
    weapon clientfield::increment_to_player("ammomod_napalmburst_proc", 1);
    playfx("zm_weapons/fx9_aat_bul_impact_fire", boneindex);
    weapon zm_utility::function_5d356609(aat_name, tier);
    if (is_true(mod) && function_4f7f29ab(weapon) && tier >= 5) {
        level thread function_c8e3a0dc(self, self.origin, weapon, var_fd90b0bb, vpoint, shitloc);
        return;
    }
    if (self.var_6f84b820 === #"special") {
        if (tier >= 4) {
            self thread function_80b0dbe5(weapon, vpoint, tier);
            self thread function_be5234be(weapon, var_fd90b0bb, vpoint, shitloc, tier);
        }
        return;
    }
    if (self.var_6f84b820 === #"normal") {
        self thread function_80b0dbe5(weapon, vpoint, tier);
        self thread function_be5234be(weapon, var_fd90b0bb, vpoint, shitloc, tier);
    }
}

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 1, eflags: 0x6 linked
// Checksum 0x9862234d, Offset: 0xa40
// Size: 0xc2
function private function_4f7f29ab(e_attacker) {
    n_current_time = float(gettime()) / 1000;
    if (isplayer(e_attacker)) {
        if (!isdefined(e_attacker.aat_cooldown_start[#"zm_ammomod_napalmburst_explosion"])) {
            return true;
        } else if (isdefined(e_attacker.aat_cooldown_start[#"zm_ammomod_napalmburst_explosion"]) && n_current_time >= e_attacker.aat_cooldown_start[#"zm_ammomod_napalmburst_explosion"] + 30) {
            return true;
        }
    }
    return false;
}

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 6, eflags: 0x2 linked
// Checksum 0xe5e176f4, Offset: 0xb10
// Size: 0x280
function function_c8e3a0dc(var_4589e270, var_23255fc5, e_attacker, *mod, w_weapon, var_fd90b0bb) {
    if (isdefined(var_23255fc5)) {
        var_23255fc5 thread clientfield::increment("zm_ammomod_napalmburst_explosion");
        if (isactor(var_23255fc5)) {
            var_23255fc5 zombie_death_gib(mod, w_weapon, var_fd90b0bb);
        }
    }
    n_range = 144;
    if (isplayer(mod)) {
        mod.aat_cooldown_start[#"zm_ammomod_napalmburst_explosion"] = float(gettime()) / 1000;
    }
    a_potential_targets = getentitiesinradius(e_attacker, 144, 15);
    count = 0;
    foreach (zombie in a_potential_targets) {
        if (!isalive(zombie)) {
            continue;
        }
        if (count >= 5) {
            return;
        }
        if (var_23255fc5 === zombie) {
            continue;
        }
        if (isalive(zombie) && (zombie.var_6f84b820 === #"normal" || zombie.archetype === #"zombie_dog")) {
            zombie thread function_80b0dbe5(mod, w_weapon, 5);
            zombie thread function_be5234be(mod, undefined, w_weapon, var_fd90b0bb, 5);
        }
        count++;
        util::wait_network_frame();
    }
}

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 3, eflags: 0x2 linked
// Checksum 0x44ea484a, Offset: 0xd98
// Size: 0x296
function function_80b0dbe5(e_attacker, w_weapon, tier) {
    self notify(#"hash_8ba8465d56bb40e");
    self endon(#"hash_8ba8465d56bb40e", #"death");
    self function_74816787();
    var_70ab6bc = self.maxhealth * 0.05;
    var_9b6cf9b5 = self.maxhealth * 0.1;
    if (tier >= 3) {
        var_70ab6bc *= 2;
        var_9b6cf9b5 *= 2;
    }
    i = 0;
    var_9fa954e6 = 5;
    if (tier >= 2) {
        var_9fa954e6 = 10;
    }
    var_2c5684be = 0;
    while (i <= var_9fa954e6) {
        if (tier >= 1 && !var_2c5684be) {
            if (var_9b6cf9b5 >= self.health && w_weapon.name !== #"hero_flamethrower") {
                self.var_9b0f545e = 1;
            }
            self dodamage(var_9b6cf9b5, self.origin, e_attacker, undefined, "none", "MOD_AAT", 0, w_weapon);
            var_2c5684be = 1;
        } else {
            if (var_70ab6bc >= self.health && w_weapon.name !== #"hero_flamethrower") {
                self.var_9b0f545e = 1;
            }
            self dodamage(var_70ab6bc, self.origin, e_attacker, undefined, "none", "MOD_AAT", 0, w_weapon);
        }
        i++;
        wait(1);
    }
    if (self ishidden()) {
        while (self ishidden()) {
            wait(1);
        }
        wait(1);
    }
    self function_68364c40();
    self notify(#"hash_1a322c9f227ee");
    self.var_e7dcb25b = undefined;
}

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 0, eflags: 0x2 linked
// Checksum 0xe6e9ba44, Offset: 0x1038
// Size: 0x58
function function_74816787() {
    if (!isdefined(self.var_2290a541)) {
        self.var_2290a541 = 0;
    }
    if (self.var_2290a541 == 0) {
        self thread clientfield::set("zm_ammomod_napalmburst_burn", 1);
    }
    self.var_2290a541++;
}

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 0, eflags: 0x2 linked
// Checksum 0xade8717e, Offset: 0x1098
// Size: 0x54
function function_68364c40() {
    if (isdefined(self.var_2290a541)) {
        self.var_2290a541--;
        if (self.var_2290a541 <= 0) {
            self.var_2290a541 = 0;
            self thread clientfield::set("zm_ammomod_napalmburst_burn", 0);
        }
    }
}

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 5, eflags: 0x2 linked
// Checksum 0x51afefa3, Offset: 0x10f8
// Size: 0x114
function function_be5234be(attacker, mod, weapon, var_fd90b0bb, tier = 0) {
    self notify(#"hash_382c4508f36af706");
    self endon(#"hash_382c4508f36af706", #"hash_1a322c9f227ee");
    self waittill(#"death");
    if (isdefined(self)) {
        if (is_true((isdefined(self.var_2290a541) ? self.var_2290a541 : 0) > 0) && function_4f7f29ab(attacker) && tier == 5) {
            level thread function_c8e3a0dc(self, self.origin, attacker, mod, weapon, var_fd90b0bb);
        }
    }
}

// Namespace ammomod_napalmburst/ammomod_napalmburst
// Params 3, eflags: 0x2 linked
// Checksum 0x58207c2d, Offset: 0x1218
// Size: 0xcc
function zombie_death_gib(*e_attacker, w_weapon, var_fd90b0bb) {
    var_c3317960 = gibserverutils::function_de4d9d(w_weapon, var_fd90b0bb);
    self clientfield::set("zm_ammomod_napalmburst_burn", 1);
    gibserverutils::gibhead(self, var_c3317960);
    if (math::cointoss()) {
        gibserverutils::gibleftarm(self, var_c3317960);
    } else {
        gibserverutils::gibrightarm(self, var_c3317960);
    }
    gibserverutils::giblegs(self, var_c3317960);
}

