// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\core_common\lightning_chain.gsc;
#using script_62caa307a394c18c;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\aat_shared.gsc;

#namespace ammomod_deadwire;

// Namespace ammomod_deadwire/ammomod_deadwire
// Params 0, eflags: 0x2 linked
// Checksum 0xdd58fb17, Offset: 0x268
// Size: 0xa84
function init_deadwire() {
    if (!is_true(level.aat_in_use)) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_66cad2a554f4d928"))) {
        level.var_92b7028a = 1;
    }
    aat::register("ammomod_deadwire", 0.2, 0, 15, 15, 1, &result, "t7_hud_zm_aat_deadwire", "wpn_aat_dead_wire_plr", undefined, #"electrical", &function_742f2da3, #"hash_bc4e073326251a8");
    aat::register("ammomod_deadwire_1", 0.2, 0, 15, 15, 1, &result, "t7_hud_zm_aat_deadwire", "wpn_aat_dead_wire_plr", undefined, #"electrical", &function_742f2da3, #"hash_bc4e073326251a8");
    aat::register("ammomod_deadwire_2", 0.2, 0, 15, 15, 1, &result, "t7_hud_zm_aat_deadwire", "wpn_aat_dead_wire_plr", undefined, #"electrical", &function_742f2da3, #"hash_bc4e073326251a8");
    aat::register("ammomod_deadwire_3", 0.2, 0, 15, 15, 1, &result, "t7_hud_zm_aat_deadwire", "wpn_aat_dead_wire_plr", undefined, #"electrical", &function_742f2da3, #"hash_bc4e073326251a8");
    aat::register("ammomod_deadwire_4", 0.2, 0, 15, 15, 1, &result, "t7_hud_zm_aat_deadwire", "wpn_aat_dead_wire_plr", undefined, #"electrical", &function_742f2da3, #"hash_bc4e073326251a8");
    aat::register("ammomod_deadwire_5", 0.2, 0, 15, 15, 1, &result, "t7_hud_zm_aat_deadwire", "wpn_aat_dead_wire_plr", undefined, #"electrical", &function_742f2da3, #"hash_bc4e073326251a8");
    clientfield::register("actor", "zm_ammomod_deadwire_explosion", 1, 1, "counter");
    clientfield::register("vehicle", "zm_ammomod_deadwire_explosion", 1, 1, "counter");
    clientfield::register("actor", "zm_ammomod_deadwire_zap", 1, 4, "int");
    clientfield::register("vehicle", "zm_ammomod_deadwire_zap", 1, 4, "int");
    clientfield::register("toplayer", "ammomod_deadwire_proc", 1, 1, "counter");
    level.var_6f993f47 = lightning_chain::create_lightning_chain_params(0, 1, 1);
    level.var_620d4080 = lightning_chain::create_lightning_chain_params(0, 1, 1);
    level.var_8ec0ca14 = lightning_chain::create_lightning_chain_params(0, 1, 1);
    level.var_b347489f = lightning_chain::create_lightning_chain_params(0, 1, 1);
    level.var_9d477dfa = lightning_chain::create_lightning_chain_params(0, 1, 1);
    level.var_7659ca85 = lightning_chain::create_lightning_chain_params(3, 4, 144);
    level.var_6f993f47.head_gib_chance = 0;
    level.var_6f993f47.network_death_choke = 4;
    level.var_6f993f47.should_kill_enemies = 0;
    level.var_6f993f47.challenge_stat_name = #"hash_39f67003b4faaaa1";
    level.var_6f993f47.no_fx = 1;
    level.var_6f993f47.clientside_fx = 0;
    level.var_6f993f47.str_mod = "MOD_AAT";
    level.var_6f993f47.var_a9255d36 = #"hash_ff52504bb0aceb9";
    level.var_6f993f47.stun_duration = 2;
    level.var_6f993f47.tier = 0;
    level.var_620d4080.head_gib_chance = 0;
    level.var_620d4080.network_death_choke = 4;
    level.var_620d4080.should_kill_enemies = 0;
    level.var_620d4080.challenge_stat_name = #"hash_39f67003b4faaaa1";
    level.var_620d4080.no_fx = 1;
    level.var_620d4080.clientside_fx = 0;
    level.var_620d4080.str_mod = "MOD_AAT";
    level.var_620d4080.var_a9255d36 = #"hash_ff52504bb0aceb9";
    level.var_620d4080.stun_duration = 4;
    level.var_620d4080.tier = 1;
    level.var_8ec0ca14.head_gib_chance = 0;
    level.var_8ec0ca14.network_death_choke = 4;
    level.var_8ec0ca14.should_kill_enemies = 0;
    level.var_8ec0ca14.challenge_stat_name = #"hash_39f67003b4faaaa1";
    level.var_8ec0ca14.no_fx = 1;
    level.var_8ec0ca14.clientside_fx = 0;
    level.var_8ec0ca14.str_mod = "MOD_AAT";
    level.var_8ec0ca14.var_a9255d36 = #"hash_ff52504bb0aceb9";
    level.var_8ec0ca14.stun_duration = 4;
    level.var_8ec0ca14.tier = 2;
    level.var_b347489f.head_gib_chance = 0;
    level.var_b347489f.network_death_choke = 4;
    level.var_b347489f.should_kill_enemies = 0;
    level.var_b347489f.challenge_stat_name = #"hash_39f67003b4faaaa1";
    level.var_b347489f.no_fx = 1;
    level.var_b347489f.clientside_fx = 0;
    level.var_b347489f.str_mod = "MOD_AAT";
    level.var_b347489f.var_a9255d36 = #"hash_ff52504bb0aceb9";
    level.var_b347489f.stun_duration = 4;
    level.var_b347489f.tier = 3;
    level.var_9d477dfa.head_gib_chance = 0;
    level.var_9d477dfa.network_death_choke = 4;
    level.var_9d477dfa.should_kill_enemies = 0;
    level.var_9d477dfa.challenge_stat_name = #"hash_39f67003b4faaaa1";
    level.var_9d477dfa.no_fx = 1;
    level.var_9d477dfa.clientside_fx = 0;
    level.var_9d477dfa.str_mod = "MOD_AAT";
    level.var_9d477dfa.var_a9255d36 = #"hash_ff52504bb0aceb9";
    level.var_9d477dfa.stun_duration = 4;
    level.var_9d477dfa.tier = 4;
    level.var_7659ca85.head_gib_chance = 0;
    level.var_7659ca85.network_death_choke = 4;
    level.var_7659ca85.should_kill_enemies = 0;
    level.var_7659ca85.challenge_stat_name = #"hash_39f67003b4faaaa1";
    level.var_7659ca85.no_fx = 1;
    level.var_7659ca85.clientside_fx = 0;
    level.var_7659ca85.str_mod = "MOD_AAT";
    level.var_7659ca85.var_a9255d36 = #"hash_ff52504bb0aceb9";
    level.var_7659ca85.stun_duration = 4;
    level.var_7659ca85.tier = 5;
    callback::add_callback(#"hash_210adcf09e99fba1", &function_ffe2bb2f);
}

// Namespace ammomod_deadwire/ammomod_deadwire
// Params 1, eflags: 0x6 linked
// Checksum 0x7aa45a27, Offset: 0xcf8
// Size: 0xcc
function private function_832f84f6(aat_name = "ammomod_deadwire") {
    switch (aat_name) {
    case #"ammomod_deadwire":
        return 0;
    case #"ammomod_deadwire_1":
        return 1;
    case #"ammomod_deadwire_2":
        return 2;
    case #"ammomod_deadwire_3":
        return 3;
    case #"ammomod_deadwire_4":
        return 4;
    case #"ammomod_deadwire_5":
        return 5;
    }
    return 0;
}

// Namespace ammomod_deadwire/ammomod_deadwire
// Params 8, eflags: 0x2 linked
// Checksum 0x8ee194f7, Offset: 0xdd0
// Size: 0x40c
function result(*death, attacker, *mod, weapon, *var_fd90b0bb, vpoint, *shitloc, *boneindex = self.origin) {
    if (is_true(level.var_92b7028a)) {
        return;
    }
    if (!isactor(self) && !isvehicle(self)) {
        return;
    }
    if (is_true(self.aat_turned)) {
        return;
    }
    if (!aat::function_42918474(vpoint)) {
        return;
    }
    if (self.var_6f84b820 === #"elite" || self.var_6f84b820 === #"boss") {
        return;
    }
    aat_name = vpoint aat::getaatonweapon(shitloc, 1);
    tier = function_832f84f6(aat_name);
    if (tier < 4 && self.var_6f84b820 === #"special") {
        return;
    }
    if (isplayer(vpoint)) {
        vpoint clientfield::increment_to_player("ammomod_deadwire_proc", 1);
    }
    playfx("zm_weapons/fx9_aat_bul_impact_electric", boneindex);
    if (!isdefined(zombie_utility::get_zombie_var(#"tesla_head_gib_chance"))) {
        zombie_utility::set_zombie_var(#"tesla_head_gib_chance", 50);
    }
    vpoint zm_utility::function_5d356609(aat_name, tier);
    switch (tier) {
    case 0:
        level.var_6f993f47.weapon = shitloc;
        s_params = level.var_6f993f47;
        break;
    case 1:
        level.var_620d4080.weapon = shitloc;
        s_params = level.var_620d4080;
        break;
    case 2:
        level.var_8ec0ca14.weapon = shitloc;
        s_params = level.var_8ec0ca14;
        break;
    case 3:
        level.var_b347489f.weapon = shitloc;
        s_params = level.var_b347489f;
        break;
    case 4:
        level.var_9d477dfa.weapon = shitloc;
        s_params = level.var_9d477dfa;
        break;
    case 5:
        level.var_7659ca85.weapon = shitloc;
        s_params = level.var_7659ca85;
        break;
    }
    if (self.var_6f84b820 === #"special") {
        if (tier >= 4) {
            self thread function_e0e02bed(vpoint, s_params, tier);
        }
        return;
    }
    if (self.var_6f84b820 === #"normal") {
        self thread function_e0e02bed(vpoint, s_params, tier);
    }
}

// Namespace ammomod_deadwire/ammomod_deadwire
// Params 1, eflags: 0x2 linked
// Checksum 0xe652af5c, Offset: 0x11e8
// Size: 0xc2
function function_b686c867(e_attacker) {
    n_current_time = float(gettime()) / 1000;
    if (isplayer(e_attacker)) {
        if (!isdefined(e_attacker.aat_cooldown_start[#"zm_ammomod_deadwire_explosion"])) {
            return true;
        } else if (isdefined(e_attacker.aat_cooldown_start[#"zm_ammomod_deadwire_explosion"]) && n_current_time >= e_attacker.aat_cooldown_start[#"zm_ammomod_deadwire_explosion"] + 30) {
            return true;
        }
    }
    return false;
}

// Namespace ammomod_deadwire/ammomod_deadwire
// Params 3, eflags: 0x2 linked
// Checksum 0xf0d3e54f, Offset: 0x12b8
// Size: 0xdc
function function_e0e02bed(attacker, s_params, tier) {
    self endon(#"death");
    if (isdefined(self.spawn_time) && gettime() == self.spawn_time) {
        waitframe(1);
    }
    if (!aat::function_42918474(attacker)) {
        return;
    }
    if (tier >= 5 && function_b686c867(attacker)) {
        function_5e4b580b(attacker, s_params, tier);
        return;
    }
    self function_de99f2ad(attacker, self, s_params, tier);
}

// Namespace ammomod_deadwire/ammomod_deadwire
// Params 3, eflags: 0x2 linked
// Checksum 0xba95f931, Offset: 0x13a0
// Size: 0x1c4
function function_5e4b580b(player, s_params, tier) {
    if (isactor(self) || isvehicle(self)) {
        self clientfield::increment("zm_ammomod_deadwire_explosion", 1);
    }
    a_zombies = getentitiesinradius(self.origin, 144, 15);
    count = 0;
    self function_de99f2ad(player, self, s_params, tier);
    foreach (e_zombie in a_zombies) {
        if (count >= 3) {
            return;
        }
        if (e_zombie == self) {
            continue;
        }
        if (e_zombie.var_6f84b820 === #"elite" || e_zombie.var_6f84b820 === #"special") {
            continue;
        }
        e_zombie function_de99f2ad(player, self, s_params, tier, 1);
        count++;
    }
}

// Namespace ammomod_deadwire/ammomod_deadwire
// Params 5, eflags: 0x2 linked
// Checksum 0x7efb632f, Offset: 0x1570
// Size: 0x19c
function function_de99f2ad(player, var_fb0999c0, s_params, tier, var_ebf63dce = 0) {
    if (!isalive(self)) {
        return;
    }
    if (is_true(level.aat[#"ammomod_deadwire"].immune_result_indirect[self.archetype])) {
        return;
    }
    if (self == var_fb0999c0 && is_true(level.aat[#"ammomod_deadwire"].immune_result_direct[self.archetype])) {
        return;
    }
    if (self ai::is_stunned() || self flag::get(#"hash_83000b27a1fe353") || !self ai::function_28aab32a()) {
        return;
    }
    if (self.var_6f84b820 === #"elite") {
        return;
    }
    self flag::set(#"hash_83000b27a1fe353");
    self.var_9c33fa32 = player;
    self thread function_30c7f12c(player, s_params, tier, var_ebf63dce);
}

// Namespace ammomod_deadwire/ammomod_deadwire
// Params 3, eflags: 0x2 linked
// Checksum 0xb250a954, Offset: 0x1718
// Size: 0x11c
function function_13d4bcdf(*origin, player, params) {
    if (!isplayer(player) || !isalive(self)) {
        return;
    }
    tier = isdefined(params.tier) ? params.tier : 0;
    stun_duration = isdefined(params.stun_duration) ? params.stun_duration : 2;
    weapon = player getcurrentweapon();
    damage_percent = tier >= 3 ? 0.25 : 0.16;
    self thread function_2bd8c11(player, damage_percent, weapon, stun_duration);
}

// Namespace ammomod_deadwire/ammomod_deadwire
// Params 4, eflags: 0x2 linked
// Checksum 0xc375d4c0, Offset: 0x1840
// Size: 0x23e
function function_2bd8c11(player, damage_percent, weapon, stun_duration) {
    self endon(#"death", #"hash_41856bb6371c74a6", #"hash_3a0cc85cce9af776", #"hash_83000b27a1fe353");
    var_4691e777 = self.origin;
    time = 0;
    while (time <= stun_duration) {
        a_potential_targets = getentitiesinradius(self.origin, 64, 15);
        foreach (zombie in a_potential_targets) {
            if (isalive(zombie) && isplayer(player) && isdefined(var_4691e777)) {
                if (zombie == self) {
                    if (zombie.var_6f84b820 === #"special") {
                        damage = zombie.maxhealth * 0.1;
                    } else {
                        damage = zombie.maxhealth * damage_percent;
                    }
                } else {
                    damage = zombie.maxhealth * 0.1;
                }
                zombie namespace_42457a0::function_601fabe9(#"electrical", damage, var_4691e777, player, undefined, "none", "MOD_AAT", 0, weapon);
            }
            waitframe(1);
        }
        time += 1;
        wait(1);
    }
}

// Namespace ammomod_deadwire/ammomod_deadwire
// Params 4, eflags: 0x2 linked
// Checksum 0xf871d4d6, Offset: 0x1a88
// Size: 0x134
function function_30c7f12c(player, s_params, tier, *var_ebf63dce = 0) {
    self notify(#"hash_41856bb6371c74a6");
    self endon(#"death", #"hash_41856bb6371c74a6");
    waitframe(1);
    var_5c68bd89 = var_ebf63dce + 1;
    if (isactor(self) || isvehicle(self)) {
        self clientfield::set("zm_ammomod_deadwire_zap", var_5c68bd89);
    }
    if (var_ebf63dce >= 1) {
        self.tesla_damage_func = &function_13d4bcdf;
    }
    self lightning_chain::arc_damage_ent(s_params, 2, tier);
    wait(6);
    self thread function_ffe2bb2f();
}

// Namespace ammomod_deadwire/ammomod_deadwire
// Params 0, eflags: 0x2 linked
// Checksum 0x73223b05, Offset: 0x1bc8
// Size: 0xc4
function function_ffe2bb2f() {
    self endon(#"death", #"hash_41856bb6371c74a6");
    waitframe(1);
    if (self flag::get(#"hash_83000b27a1fe353")) {
        self flag::clear(#"hash_83000b27a1fe353");
        self.var_9c33fa32 = undefined;
        if (isactor(self) || isvehicle(self)) {
            self clientfield::set("zm_ammomod_deadwire_zap", 0);
        }
    }
}

// Namespace ammomod_deadwire/ammomod_deadwire
// Params 3, eflags: 0x2 linked
// Checksum 0xe05b0c2f, Offset: 0x1c98
// Size: 0x7c
function function_742f2da3(damage = 0, attacker, weapon) {
    if (self flag::get(#"hash_83000b27a1fe353")) {
        self.health = damage + 1;
        self thread function_851db518(attacker, weapon);
    }
}

// Namespace ammomod_deadwire/ammomod_deadwire
// Params 2, eflags: 0x2 linked
// Checksum 0x3fc7d39e, Offset: 0x1d20
// Size: 0xb4
function function_851db518(attacker, weapon) {
    self notify("4d0ff4a6c6cb4c74");
    self endon("4d0ff4a6c6cb4c74");
    self endon(#"death");
    self flag::wait_till_clear(#"hash_83000b27a1fe353");
    if (!zm_utility::is_magic_bullet_shield_enabled(self)) {
        self.var_fc304017 = 1;
        self kill(self.origin, attacker, undefined, weapon, undefined, 1);
    }
}

