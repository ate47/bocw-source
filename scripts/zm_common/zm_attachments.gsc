// Atian COD Tools GSC CW decompiler test
#using script_24c32478acf44108;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\core_common\ai\zombie_death.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace zm_attachments;

// Namespace zm_attachments/zm_attachments
// Params 0, eflags: 0x5
// Checksum 0x63e7100e, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_attachments", &preinit, undefined, undefined, undefined);
}

// Namespace zm_attachments/zm_attachments
// Params 0, eflags: 0x6 linked
// Checksum 0xdcecf52a, Offset: 0xf8
// Size: 0xbc
function private preinit() {
    namespace_9ff9f642::register_burn(#"hash_72a155025f3da562", 100, 3);
    namespace_9ff9f642::register_slowdown(#"hash_1c9af7bb427952d", 0.85, 1);
    namespace_9ff9f642::register_slowdown(#"hash_1d07249a2211a81d", 0.9, 1);
    namespace_9ff9f642::register_slowdown(#"hash_721bfbe781c0d680", 0.95, 1);
}

// Namespace zm_attachments/zm_attachments
// Params 0, eflags: 0x0
// Checksum 0xe8d0374a, Offset: 0x1c0
// Size: 0xc4
function function_9f8d8c38() {
    if (isdefined(self.var_6f84b820)) {
        switch (self.var_6f84b820) {
        case #"normal":
            var_3e5502b5 = #"hash_1c9af7bb427952d";
            break;
        case #"special":
            var_3e5502b5 = #"hash_1d07249a2211a81d";
            break;
        case #"elite":
            var_3e5502b5 = #"hash_721bfbe781c0d680";
            break;
        }
        if (isdefined(var_3e5502b5)) {
            self thread namespace_9ff9f642::slowdown(var_3e5502b5);
        }
    }
}

// Namespace zm_attachments/zm_attachments
// Params 3, eflags: 0x0
// Checksum 0x8419f4ca, Offset: 0x290
// Size: 0x1cc
function dragons_breath(e_attacker, n_damage, weapon) {
    if (!isdefined(self.var_f6291271)) {
        self.var_f6291271 = [];
    } else if (!isarray(self.var_f6291271)) {
        self.var_f6291271 = array(self.var_f6291271);
    }
    if (isinarray(self.var_f6291271, e_attacker)) {
        if (self.archetype === #"zombie" && n_damage > self.health) {
            self.var_b364c165 = 1;
        }
        return n_damage;
    }
    if (!isdefined(self.var_f6291271)) {
        self.var_f6291271 = [];
    } else if (!isarray(self.var_f6291271)) {
        self.var_f6291271 = array(self.var_f6291271);
    }
    self.var_f6291271[self.var_f6291271.size] = e_attacker;
    self thread function_ddda26e(e_attacker);
    if (self.archetype === #"zombie") {
        n_damage += 100;
        if (n_damage < self.health) {
            self namespace_9ff9f642::burn(#"hash_72a155025f3da562", e_attacker, weapon);
        } else {
            self.var_b364c165 = 1;
        }
    } else {
        n_damage += 200;
    }
    return n_damage;
}

// Namespace zm_attachments/zm_attachments
// Params 1, eflags: 0x6 linked
// Checksum 0xa73b107f, Offset: 0x468
// Size: 0x44
function private function_ddda26e(e_attacker) {
    self endon(#"death");
    waitframe(5);
    arrayremovevalue(self.var_f6291271, e_attacker);
}

// Namespace zm_attachments/zm_attachments
// Params 1, eflags: 0x0
// Checksum 0x7330ea78, Offset: 0x4b8
// Size: 0xa4
function function_82bca1c7(e_attacker) {
    if (e_attacker playerads() == 1) {
        if (self.var_6f84b820 === #"normal" && math::cointoss(10) && distancesquared(self.origin, e_attacker.origin) < 40000) {
            self ai::stun(2);
        }
    }
}

