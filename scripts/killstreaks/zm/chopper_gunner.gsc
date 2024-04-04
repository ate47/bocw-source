// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_player.gsc;
#using script_7bdcff4f92f3d220;
#using script_61828ad9e71c6616;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\item_world.gsc;
#using script_72d96920f15049b8;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace chopper_gunner;

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x5
// Checksum 0x735b9946, Offset: 0x1c0
// Size: 0x54
function private autoexec __init__system__() {
    system::register(#"chopper_gunner", &preinit, undefined, &function_3675de8b, #"killstreaks");
}

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x6 linked
// Checksum 0x1ac8b633, Offset: 0x220
// Size: 0x15e
function private preinit() {
    profilestart();
    clientfield::register("vehicle", "" + #"hash_164696e86d29988d", 1, 1, "int");
    clientfield::register("toplayer", "" + #"hash_dae8b06d746fac5", 8000, 1, "int");
    level.var_2d4792e7 = &function_5160bb1e;
    level.var_80f71aee = &function_425e60e5;
    level.var_399dc69a = &function_6c2b8199;
    level.var_fcad39fb = int(30 * 1000);
    namespace_e8c18978::preinit("killstreak_chopper_gunner" + "_zm");
    zm_player::register_player_damage_callback(&function_728f72a5);
    callback::on_ai_killed(&on_ai_killed);
    profilestop();
}

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x6 linked
// Checksum 0xf92a0667, Offset: 0x388
// Size: 0xe4
function private function_3675de8b() {
    killstreaks::function_7b6102ed("chopper_gunner");
    killstreaks::function_353a9ccd("chopper_gunner", &function_e08f14b3);
    killstreaks::function_39c0c22a("chopper_gunner", &function_7948e616);
    killstreaks::function_7b6102ed("inventory_chopper_gunner");
    killstreaks::function_353a9ccd("inventory_chopper_gunner", &function_e08f14b3);
    killstreaks::function_39c0c22a("inventory_chopper_gunner", &function_7948e616);
    namespace_e8c18978::function_3675de8b();
}

// Namespace chopper_gunner/chopper_gunner
// Params 1, eflags: 0x2 linked
// Checksum 0xd007b8f0, Offset: 0x478
// Size: 0xcc
function on_ai_killed(params) {
    if (isdefined(level.chopper_gunner) && level.chopper_gunner.owner === params.eattacker && params.weapon === getweapon(#"hash_1734871fef9c0549")) {
        level.chopper_gunner endon(#"killed", #"death");
        params.eattacker endon(#"gunner_left");
        level.chopper_gunner namespace_e8c18978::function_631f02c5();
    }
}

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x2 linked
// Checksum 0x3c929668, Offset: 0x550
// Size: 0x44
function function_7948e616() {
    if (function_e08f14b3()) {
        self.var_baf4657c = 1;
        self killstreakrules::function_65739e7b("chopper_gunner");
        return false;
    }
    return true;
}

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x2 linked
// Checksum 0xeff042b4, Offset: 0x5a0
// Size: 0x8c
function function_e08f14b3() {
    if (isdefined(level.chopper_gunner)) {
        return true;
    }
    if (is_true(level.chopper_gunner.shuttingdown)) {
        return true;
    }
    if (isdefined(level.var_a246c3cf)) {
        if (float(gettime() - level.var_a246c3cf) / 1000 < 15) {
            return true;
        }
    }
    return false;
}

// Namespace chopper_gunner/chopper_gunner
// Params 1, eflags: 0x6 linked
// Checksum 0xadd7dd98, Offset: 0x638
// Size: 0x388
function private function_5160bb1e(killstreaktype) {
    player = self;
    player endon(#"disconnect");
    level endon(#"end_game");
    assert(!isdefined(level.chopper_gunner));
    if (!player killstreakrules::function_71e94a3b()) {
        player.var_baf4657c = 1;
        player killstreakrules::function_65739e7b("chopper_gunner");
        return;
    }
    if (!function_7948e616()) {
        player.var_baf4657c = 1;
        player killstreakrules::function_65739e7b("chopper_gunner");
        return;
    }
    if (player flag::get(#"hash_9f062ac608bb7e4")) {
        return;
    }
    if (level flag::get(#"hash_6868b1aab2d20ef4")) {
        return;
    }
    player.var_1bee6f4b = 1;
    if (zm_utility::function_c200446c() && isdefined(level.deathcircle)) {
        player clientfield::increment("deathcircleopacityflag");
    }
    player thread killstreakrules::function_24241971();
    player thread function_48170f5e();
    if (zm_utility::is_survival() && !level flag::get(#"objective_locked")) {
        if (!level flag::get(#"hash_3070ff342f14b371")) {
            level.var_d5ad2e35 = 1;
        }
        player.chopper_zone = player function_e6d10d94();
    } else {
        level.var_d5ad2e35 = undefined;
        player.chopper_zone = player function_e6d10d94();
        if (zm_utility::is_survival()) {
            if (!isdefined(player.chopper_zone)) {
                level.var_d5ad2e35 = 1;
            }
        }
    }
    player thread function_8afd7b25();
    if (!player isonground()) {
        var_d6940e18 = 0;
    } else {
        var_d6940e18 = namespace_e8c18978::function_5160bb1e(killstreaktype);
    }
    if (var_d6940e18) {
        player.var_b23648ce = gettime();
        if (isbot(player)) {
            player thread function_25d9a09f(level.chopper_gunner);
        }
    } else {
        player notify(#"hash_44a9bac1e035f9a3");
        player val::reset(#"chopper_gunner", "ignoreme");
    }
    return var_d6940e18;
}

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x2 linked
// Checksum 0xa63ba414, Offset: 0x9c8
// Size: 0x34
function function_425e60e5() {
    self clientfield::set_to_player("" + #"hash_dae8b06d746fac5", 1);
}

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x2 linked
// Checksum 0xeb2ea452, Offset: 0xa08
// Size: 0x3c
function function_6c2b8199() {
    level.var_a246c3cf = gettime();
    self clientfield::set_to_player("" + #"hash_dae8b06d746fac5", 0);
}

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x2 linked
// Checksum 0x92a0a26, Offset: 0xa50
// Size: 0x11c
function function_e6d10d94() {
    if (isdefined(level.var_97e461d4)) {
        return level.var_97e461d4;
    }
    if (isarray(level.var_b3e433ae)) {
        foreach (var_afdd39ed in level.var_b3e433ae) {
            var_7aad75a5 = getent(var_afdd39ed, "targetname");
            if (isdefined(var_7aad75a5)) {
                if (istouching(self.origin, var_7aad75a5)) {
                    return var_afdd39ed;
                }
            }
        }
    }
    if (isdefined(level.var_fd959dcf)) {
        return level.var_fd959dcf;
    }
}

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x2 linked
// Checksum 0x5362b309, Offset: 0xb78
// Size: 0xa4
function function_24fbd61e() {
    if (is_true(self.var_1bee6f4b)) {
        if (isdefined(self.var_b23648ce)) {
            time = gettime();
            time = float(time - self.var_b23648ce) / 1000;
            if (time <= 5) {
                self thread function_bfba820f();
            }
        }
        namespace_e8c18978::function_cf58dcdd(self, 1);
    }
}

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x2 linked
// Checksum 0x78dac5b0, Offset: 0xc28
// Size: 0xf4
function function_bfba820f() {
    self endon(#"death");
    var_1120bf0 = self.inventory.items[17];
    count = 0;
    while (var_1120bf0.networkid != 32767 || count > 300) {
        var_1120bf0 = self.inventory.items[17];
        count++;
        waitframe(1);
    }
    if (var_1120bf0.networkid == 32767) {
        itempoint = function_4ba8fde(#"item_survival_scorestreak_chopper_gunner");
        if (isdefined(itempoint)) {
            item_world::function_de2018e3(itempoint, self, 17);
        }
    }
}

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x2 linked
// Checksum 0xf4538ebc, Offset: 0xd28
// Size: 0x194
function function_48170f5e() {
    level endon(#"end_game");
    self endon(#"disconnect", #"hash_44a9bac1e035f9a3");
    self waittill(#"using_remote");
    waitresult = self waittilltimeout(0, #"gunner_left");
    if (waitresult._notify != "timeout") {
        return;
    }
    self thread val::set_for_time(30, #"chopper_gunner", "ignoreme", 1);
    self thread val::set_for_time(30, #"chopper_gunner", "takedamage", 0);
    self waittill(#"gunner_left");
    wait(2);
    if (isplayer(self)) {
        self.var_1bee6f4b = undefined;
        self val::reset(#"chopper_gunner", "ignoreme");
        self val::reset(#"chopper_gunner", "takedamage");
    }
}

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x2 linked
// Checksum 0x7ad4c43e, Offset: 0xec8
// Size: 0x12c
function function_8afd7b25() {
    level endon(#"end_game");
    self endon(#"disconnect", #"gunner_left");
    if (!is_true(self.laststand)) {
        self waittill(#"player_downed");
    }
    if (isplayer(self)) {
        self.var_1bee6f4b = undefined;
        self val::reset(#"chopper_gunner", "ignoreme");
        self val::reset(#"chopper_gunner", "takedamage");
    }
    choppergunner = level.chopper_gunner;
    if (isdefined(choppergunner)) {
        choppergunner notify(#"hash_623a20b6b2608171");
    }
    level thread namespace_e8c18978::function_cf58dcdd(self, 1);
}

// Namespace chopper_gunner/chopper_gunner
// Params 1, eflags: 0x2 linked
// Checksum 0x53dd6f33, Offset: 0x1000
// Size: 0x294
function function_25d9a09f(vehicle) {
    vehicle endon(#"hash_6668be249f2eab45");
    self endon(#"disconnect");
    waitframe(1);
    while (self isremotecontrolling()) {
        enemies = getaiteamarray(level.zombie_team);
        enemies = array::randomize(enemies);
        foreach (potentialenemy in enemies) {
            if (isalive(potentialenemy)) {
                enemy = potentialenemy;
                break;
            }
        }
        if (isdefined(enemy)) {
            vectorfromenemy = vectornormalize(((vehicle.origin - enemy.origin)[0], (vehicle.origin - enemy.origin)[1], 0));
            vehicle turretsettarget(0, enemy);
            vehicle waittilltimeout(1, #"turret_on_target");
            vehicle vehicle_ai::fire_for_time(2 + randomfloat(0.8), 0, enemy);
            vehicle vehicle_ai::fire_for_rounds(1, 1, enemy);
            vehicle turretcleartarget(0);
            vehicle turretsettargetangles(0, (15, 0, 0));
            if (isdefined(enemy)) {
                wait(2 + randomfloat(0.5));
            }
        }
        wait(0.1);
    }
}

// Namespace chopper_gunner/chopper_gunner
// Params 10, eflags: 0x6 linked
// Checksum 0xc38ec719, Offset: 0x12a0
// Size: 0x92
function private function_728f72a5(*einflictor, eattacker, *idamage, *idflags, *smeansofdeath, weapon, *vpoint, *vdir, *shitloc, *psoffsettime) {
    if (shitloc === self && psoffsettime == getweapon(#"hash_1734871fef9c0549")) {
        return 0;
    }
    return -1;
}

