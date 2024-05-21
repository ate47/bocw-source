// Atian COD Tools GSC CW decompiler test
#using script_72401f526ba71638;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_ce9594c1;

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 0, eflags: 0x5
// Checksum 0xdca80cde, Offset: 0x170
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_49946b57ce6e712f", &preinit, undefined, undefined, #"hash_13a43d760497b54d");
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 0, eflags: 0x6 linked
// Checksum 0x51388cd7, Offset: 0x1c0
// Size: 0x300
function private preinit() {
    clientfield::register("allplayers", "fx_frenzied_guard_player_clientfield", 9000, 1, "int");
    clientfield::register("actor", "fx_frenzied_guard_actor_clientfield", 9000, 1, "int");
    namespace_1b527536::function_36e0540e(#"hash_55569355da0f0f68", 1, 60, #"field_upgrade_frenzied_guard_item_sr");
    namespace_1b527536::function_36e0540e(#"hash_43e326396554e18c", 1, 60, #"field_upgrade_frenzied_guard_1_item_sr");
    namespace_1b527536::function_36e0540e(#"hash_43e329396554e6a5", 1, 60, #"field_upgrade_frenzied_guard_2_item_sr");
    namespace_1b527536::function_36e0540e(#"hash_43e328396554e4f2", 1, 60, #"field_upgrade_frenzied_guard_3_item_sr");
    namespace_1b527536::function_36e0540e(#"hash_43e323396554dc73", 1, 60, #"field_upgrade_frenzied_guard_4_item_sr");
    namespace_1b527536::function_36e0540e(#"hash_43e322396554dac0", 1, 60, #"field_upgrade_frenzied_guard_5_item_sr");
    namespace_1b527536::function_dbd391bf(#"hash_55569355da0f0f68", &function_d798ebd7);
    namespace_1b527536::function_dbd391bf(#"hash_43e326396554e18c", &function_fd0036a5);
    namespace_1b527536::function_dbd391bf(#"hash_43e329396554e6a5", &function_f03b1d1b);
    namespace_1b527536::function_dbd391bf(#"hash_43e328396554e4f2", &function_1eacf9fe);
    namespace_1b527536::function_dbd391bf(#"hash_43e323396554dc73", &function_b1f02082);
    namespace_1b527536::function_dbd391bf(#"hash_43e322396554dac0", &function_a93e0f1e);
    callback::on_ai_killed(&function_7995eedf);
    level.var_54c1ba2b = [];
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 0, eflags: 0x2 linked
// Checksum 0x95cbb471, Offset: 0x4c8
// Size: 0x34
function repair_armor() {
    self.armor = self.maxarmor;
    self playsoundtoplayer(#"hash_493d4d80ba4199c5", self);
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 1, eflags: 0x0
// Checksum 0x84c5c1ea, Offset: 0x508
// Size: 0x16
function set_target(zombie) {
    zombie.enemy_override = self;
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 0, eflags: 0x2 linked
// Checksum 0x953ac318, Offset: 0x528
// Size: 0x2b8
function function_95558618() {
    self notify("ec0e4c58b47ccc0");
    self endon("ec0e4c58b47ccc0");
    self endon(#"death");
    while (true) {
        var_54c1ba2b = function_72d3bca6(level.var_54c1ba2b, self.origin, undefined, undefined, 2000);
        var_4eb7eef2 = 0;
        foreach (player in var_54c1ba2b) {
            if (isdefined(player.var_fa7c46f)) {
                if (distancesquared(player.origin, self.origin) <= sqr(player.var_fa7c46f)) {
                    var_4eb7eef2 = 1;
                    break;
                }
            }
        }
        if (!is_true(var_4eb7eef2)) {
            self.var_8a3828c6 = undefined;
            if (is_true(self.var_4439c2d9)) {
                self.var_4439c2d9 = undefined;
                self clientfield::set("fx_frenzied_guard_actor_clientfield", 0);
                self zombie_utility::set_zombie_run_cycle_restore_from_override();
                if (zm_utility::is_survival() && isdefined(level.var_9602c8b2)) {
                    self [[ level.var_9602c8b2 ]]();
                }
            }
        }
        if (isarray(level.var_54c1ba2b)) {
            if (level.var_54c1ba2b.size <= 0) {
                if (is_true(self.var_4439c2d9)) {
                    self.var_4439c2d9 = undefined;
                    self clientfield::set("fx_frenzied_guard_actor_clientfield", 0);
                    self zombie_utility::set_zombie_run_cycle_restore_from_override();
                    if (zm_utility::is_survival() && isdefined(level.var_9602c8b2)) {
                        self [[ level.var_9602c8b2 ]]();
                    }
                }
                return;
            }
        }
        wait(1);
    }
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 0, eflags: 0x2 linked
// Checksum 0x8a5c7fcd, Offset: 0x7e8
// Size: 0x9e
function function_c94af02b() {
    self clientfield::set("fx_frenzied_guard_player_clientfield", 0);
    self flag::decrement("zm_field_upgrade_in_use");
    arrayremovevalue(level.var_54c1ba2b, self);
    arrayremovevalue(level.var_54c1ba2b, undefined);
    self.var_fa7c46f = undefined;
    self.var_5202bab4 = undefined;
    self.var_96971e3c = undefined;
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 3, eflags: 0x2 linked
// Checksum 0xb4fa9676, Offset: 0x890
// Size: 0x234
function function_6f97b981(tier = 0, radius = 1000, duration = 10) {
    self endon(#"disconnect");
    count = 0;
    self flag::increment("zm_field_upgrade_in_use");
    while (count < duration) {
        if (!isalive(self)) {
            break;
        }
        nearbyzombies = getentitiesinradius(self.origin, radius, 15);
        foreach (zombie in nearbyzombies) {
            if (isalive(zombie) && zombie.team === level.zombie_team) {
                zombie.var_8a3828c6 = self;
                zombie thread function_95558618();
                if (tier >= 5) {
                    if (!is_true(zombie.var_4439c2d9)) {
                        zombie.var_4439c2d9 = 1;
                        zombie clientfield::set("fx_frenzied_guard_actor_clientfield", 1);
                        zombie zombie_utility::set_zombie_run_cycle_override_value("walk");
                    }
                }
            }
        }
        wait(1);
        count++;
    }
    self function_c94af02b();
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 0, eflags: 0x2 linked
// Checksum 0xd62c0101, Offset: 0xad0
// Size: 0x24
function function_feb87e34() {
    self clientfield::set("fx_frenzied_guard_player_clientfield", 1);
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 1, eflags: 0x2 linked
// Checksum 0x8175a35c, Offset: 0xb00
// Size: 0x104
function function_d798ebd7(*params) {
    self namespace_1b527536::function_460882e2(1);
    self function_feb87e34();
    if (!isdefined(level.var_54c1ba2b)) {
        level.var_54c1ba2b = [];
    } else if (!isarray(level.var_54c1ba2b)) {
        level.var_54c1ba2b = array(level.var_54c1ba2b);
    }
    if (!isinarray(level.var_54c1ba2b, self)) {
        level.var_54c1ba2b[level.var_54c1ba2b.size] = self;
    }
    self.var_fa7c46f = 1000;
    self thread function_6f97b981(0, 1000);
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 1, eflags: 0x2 linked
// Checksum 0xcb1ac5d5, Offset: 0xc10
// Size: 0x11c
function function_fd0036a5(*params) {
    self namespace_1b527536::function_460882e2(1);
    self function_feb87e34();
    self repair_armor();
    if (!isdefined(level.var_54c1ba2b)) {
        level.var_54c1ba2b = [];
    } else if (!isarray(level.var_54c1ba2b)) {
        level.var_54c1ba2b = array(level.var_54c1ba2b);
    }
    if (!isinarray(level.var_54c1ba2b, self)) {
        level.var_54c1ba2b[level.var_54c1ba2b.size] = self;
    }
    self.var_fa7c46f = 1000;
    self thread function_6f97b981(1, 1000);
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 1, eflags: 0x2 linked
// Checksum 0x6997c8cd, Offset: 0xd38
// Size: 0x124
function function_f03b1d1b(*params) {
    self namespace_1b527536::function_460882e2(1);
    self function_feb87e34();
    self repair_armor();
    if (!isdefined(level.var_54c1ba2b)) {
        level.var_54c1ba2b = [];
    } else if (!isarray(level.var_54c1ba2b)) {
        level.var_54c1ba2b = array(level.var_54c1ba2b);
    }
    if (!isinarray(level.var_54c1ba2b, self)) {
        level.var_54c1ba2b[level.var_54c1ba2b.size] = self;
    }
    self.var_fa7c46f = 1000;
    self.var_5202bab4 = 1;
    self thread function_6f97b981(2, 1000);
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 1, eflags: 0x2 linked
// Checksum 0xbc2ee954, Offset: 0xe68
// Size: 0x134
function function_1eacf9fe(*params) {
    self namespace_1b527536::function_460882e2(1);
    self function_feb87e34();
    self repair_armor();
    if (!isdefined(level.var_54c1ba2b)) {
        level.var_54c1ba2b = [];
    } else if (!isarray(level.var_54c1ba2b)) {
        level.var_54c1ba2b = array(level.var_54c1ba2b);
    }
    if (!isinarray(level.var_54c1ba2b, self)) {
        level.var_54c1ba2b[level.var_54c1ba2b.size] = self;
    }
    self.var_fa7c46f = 1000;
    self.var_5202bab4 = 1;
    self.var_96971e3c = 1;
    self thread function_6f97b981(3, 1000);
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 1, eflags: 0x2 linked
// Checksum 0xc4388775, Offset: 0xfa8
// Size: 0x134
function function_b1f02082(*params) {
    self namespace_1b527536::function_460882e2(1);
    self function_feb87e34();
    self repair_armor();
    if (!isdefined(level.var_54c1ba2b)) {
        level.var_54c1ba2b = [];
    } else if (!isarray(level.var_54c1ba2b)) {
        level.var_54c1ba2b = array(level.var_54c1ba2b);
    }
    if (!isinarray(level.var_54c1ba2b, self)) {
        level.var_54c1ba2b[level.var_54c1ba2b.size] = self;
    }
    self.var_fa7c46f = 2000;
    self.var_5202bab4 = 1;
    self.var_96971e3c = 1;
    self thread function_6f97b981(4, 2000, 15);
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 1, eflags: 0x2 linked
// Checksum 0x3fcfc1c1, Offset: 0x10e8
// Size: 0x134
function function_a93e0f1e(*params) {
    self namespace_1b527536::function_460882e2(1);
    self function_feb87e34();
    self repair_armor();
    if (!isdefined(level.var_54c1ba2b)) {
        level.var_54c1ba2b = [];
    } else if (!isarray(level.var_54c1ba2b)) {
        level.var_54c1ba2b = array(level.var_54c1ba2b);
    }
    if (!isinarray(level.var_54c1ba2b, self)) {
        level.var_54c1ba2b[level.var_54c1ba2b.size] = self;
    }
    self.var_fa7c46f = 2000;
    self.var_5202bab4 = 1;
    self.var_96971e3c = 1;
    self thread function_6f97b981(5, 2000, 15);
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 0, eflags: 0x6 linked
// Checksum 0x410da9c5, Offset: 0x1228
// Size: 0x46
function private function_1072c231() {
    if ((isdefined(self.maxarmor) ? self.maxarmor : 0) == 0) {
        return true;
    }
    if (self.armor < self.maxarmor) {
        return false;
    }
    return true;
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 0, eflags: 0x6 linked
// Checksum 0x6b04024a, Offset: 0x1278
// Size: 0x2c
function private function_d87329b7() {
    if ((isdefined(self.maxarmor) ? self.maxarmor : 0) == 0) {
        return false;
    }
    return true;
}

// Namespace namespace_ce9594c1/namespace_ce9594c1
// Params 1, eflags: 0x2 linked
// Checksum 0xb44fcabb, Offset: 0x12b0
// Size: 0x134
function function_7995eedf(s_params) {
    if (isplayer(s_params.eattacker)) {
        player = s_params.eattacker;
        if (is_true(player.var_5202bab4) && !is_true(self.var_6e9934ba)) {
            if (!player function_1072c231() && player function_d87329b7()) {
                var_2cacdde7 = 0.1 * player.maxarmor;
                var_2cacdde7 = int(var_2cacdde7);
                player.armor += math::clamp(var_2cacdde7, 0, player.maxarmor);
                player playsoundtoplayer(#"hash_271353dc9677cad3", player);
            }
        }
    }
}

