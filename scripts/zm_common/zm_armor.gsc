// Atian COD Tools GSC CW decompiler test
#using script_437ce686d29bb81b;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_net.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\callbacks.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai\systems\gib.gsc;

#namespace zm_armor;

// Namespace zm_armor/zm_armor
// Params 0, eflags: 0x5
// Checksum 0xf40deef, Offset: 0x108
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_armor", &preinit, undefined, undefined, undefined);
}

// Namespace zm_armor/zm_armor
// Params 0, eflags: 0x6 linked
// Checksum 0x99742dd1, Offset: 0x150
// Size: 0x24
function private preinit() {
    callback::on_connect(&on_connect);
}

// Namespace zm_armor/zm_armor
// Params 0, eflags: 0x2 linked
// Checksum 0x94d5b53a, Offset: 0x180
// Size: 0x2c
function on_connect() {
    callback::function_d8abfc3d("equip_armor", &function_83fbb13c);
}

// Namespace zm_armor/zm_armor
// Params 1, eflags: 0x6 linked
// Checksum 0x2a20edf, Offset: 0x1b8
// Size: 0xfc
function private function_83fbb13c(params) {
    if (!isdefined(params.tier)) {
        return;
    }
    if (namespace_cf6efd05::function_85b812c9()) {
        return;
    }
    switch (params.tier) {
    case 1:
        var_ee3c60e = #"hash_3f4dec20d8ee78d3";
        break;
    case 2:
        var_ee3c60e = #"hash_3f4ded20d8ee7a86";
        break;
    case 3:
        var_ee3c60e = #"hash_3f4dee20d8ee7c39";
        break;
    }
    if (isdefined(var_ee3c60e)) {
        level thread popups::displayteammessagetoteam(var_ee3c60e, self, self.team);
    }
}

// Namespace zm_armor/zm_armor
// Params 2, eflags: 0x0
// Checksum 0x78445a89, Offset: 0x2c0
// Size: 0x94
function register(var_7c8fcded, is_permanent = 1) {
    if (!isdefined(level.var_9555ebfb)) {
        level.var_9555ebfb = [];
    } else if (!isarray(level.var_9555ebfb)) {
        level.var_9555ebfb = array(level.var_9555ebfb);
    }
    level.var_9555ebfb[var_7c8fcded] = is_permanent;
}

// Namespace zm_armor/zm_armor
// Params 0, eflags: 0x0
// Checksum 0x957f4bf, Offset: 0x360
// Size: 0x15c
function function_49f4b6ee() {
    self.var_9555ebfb = [];
    if (!isdefined(level.var_9555ebfb)) {
        return;
    }
    a_keys = getarraykeys(level.var_9555ebfb);
    foreach (key in a_keys) {
        if (level.var_9555ebfb[key]) {
            self.var_9555ebfb[key] = 0;
        }
    }
    foreach (key in a_keys) {
        if (!level.var_9555ebfb[key]) {
            self.var_9555ebfb[key] = 0;
        }
    }
}

// Namespace zm_armor/zm_armor
// Params 4, eflags: 0x0
// Checksum 0x12f68fdf, Offset: 0x4c8
// Size: 0x138
function add(var_7c8fcded, var_3ed63752, var_28066539, var_df7ee5d1 = #"hash_2082da6662372184") {
    var_4812bba2 = 0;
    if (isdefined(var_28066539)) {
        var_d7de78d3 = var_28066539 - self get(var_7c8fcded);
        if (var_3ed63752 <= var_d7de78d3) {
            self.armor += var_3ed63752;
            var_4812bba2 = var_3ed63752;
        } else {
            self.armor += var_d7de78d3;
            var_4812bba2 = var_d7de78d3;
        }
    } else {
        self.armor += var_3ed63752;
        var_4812bba2 = var_3ed63752;
    }
    if (var_4812bba2 > 0) {
        self playsound(var_df7ee5d1);
    }
    var_4812bba2 += self get(var_7c8fcded);
    self.var_9555ebfb[var_7c8fcded] = var_4812bba2;
}

// Namespace zm_armor/zm_armor
// Params 2, eflags: 0x2 linked
// Checksum 0xdfd4b8c1, Offset: 0x608
// Size: 0x1b4
function remove(var_7c8fcded, var_2cd89ceb = 0) {
    if (isdefined(self.var_9555ebfb[var_7c8fcded]) && self.var_9555ebfb[var_7c8fcded] > 0) {
        if (var_2cd89ceb) {
            self.armor -= self.var_9555ebfb[var_7c8fcded];
            a_keys = getarraykeys(level.var_9555ebfb);
            var_d42adc5 = 0;
            foreach (key in a_keys) {
                if (key !== var_7c8fcded && level.var_9555ebfb[key]) {
                    var_d42adc5 += get(key);
                }
            }
            var_d42adc5 = min(var_d42adc5, 100);
            self.armor = int(max(var_d42adc5, self.armor));
        }
        self.var_9555ebfb[var_7c8fcded] = 0;
    }
}

// Namespace zm_armor/zm_armor
// Params 1, eflags: 0x2 linked
// Checksum 0xdfb809cb, Offset: 0x7c8
// Size: 0x30
function get(var_7c8fcded) {
    if (isdefined(self.var_9555ebfb[var_7c8fcded])) {
        return self.var_9555ebfb[var_7c8fcded];
    }
    return 0;
}

// Namespace zm_armor/zm_armor
// Params 3, eflags: 0x0
// Checksum 0xb400df8b, Offset: 0x800
// Size: 0x2fa
function damage(n_damage, mod_type, e_attacker) {
    if (self.armor <= 0) {
        return n_damage;
    }
    var_ee47fd1b = int(self.armor * 2);
    a_keys = getarraykeys(self.var_9555ebfb);
    if (n_damage > var_ee47fd1b) {
        foreach (key in a_keys) {
            self remove(key, 1);
        }
        self.armor = 0;
        self playsound(#"hash_2817ca3f96127e62");
        return (n_damage - var_ee47fd1b);
    }
    if (n_damage > 0) {
        var_ee47fd1b = int(max(1, n_damage / 2));
    } else {
        var_ee47fd1b = 0;
    }
    self.armor -= var_ee47fd1b;
    var_c5aebd9f = 0;
    for (n_index = 0; var_c5aebd9f < var_ee47fd1b && n_index < a_keys.size; n_index++) {
        str_armor = a_keys[n_index];
        var_2a0d4230 = self get(str_armor);
        if (var_2a0d4230 > var_ee47fd1b) {
            var_34ada56f = var_2a0d4230 - var_ee47fd1b - var_c5aebd9f;
            self.var_9555ebfb[str_armor] = var_34ada56f;
            var_c5aebd9f += var_ee47fd1b;
            n_index++;
            continue;
        }
        if (var_2a0d4230 > 0) {
            var_c5aebd9f += var_2a0d4230;
            self remove(str_armor);
            if (self.armor <= 0) {
                self playsound(#"hash_2817ca3f96127e62");
            }
            n_index++;
            continue;
        }
    }
    self notify(#"damage_armor", {#mod:mod_type, #attacker:e_attacker});
    return 0;
}

