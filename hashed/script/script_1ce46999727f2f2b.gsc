// Atian COD Tools GSC CW decompiler test
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_3bbf85ab4cb9f3c2;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_6b6510e124bad778;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_350cffecd05ef6cf;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
#using script_f38dc50f0e82277;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_eccff4fb;

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x2 linked
// Checksum 0x71c5c8eb, Offset: 0x278
// Size: 0x244
function init() {
    level.var_8cff5775.var_aeb69827 = array(0, 0, 22, 40, 80, 160, 350, 850, 1500, 2800, 4800);
    if (is_true(level.var_8cff5775.hardcoremode)) {
        level.var_8cff5775.var_aeb69827 = array(0, 0, 80, 160, 320, 640, 1280, 2040, 3800, 5000, 5000);
    }
    level.var_8cff5775.var_88be0b68 = 0;
    foreach (item in level.var_8cff5775.var_aeb69827) {
        level.var_8cff5775.var_88be0b68 = level.var_8cff5775.var_88be0b68 + item;
    }
    level.var_8cff5775.var_c3842d93 = array(0);
    total = 0;
    for (i = 1; i <= 9; i++) {
        next = level.var_8cff5775.var_aeb69827[i + 1];
        level.var_8cff5775.var_c3842d93[level.var_8cff5775.var_c3842d93.size] = total + next;
        total = total + next;
    }
    callback::on_ai_killed(&function_41ce2473);
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 1, eflags: 0x2 linked
// Checksum 0xcea394c7, Offset: 0x4c8
// Size: 0x54
function function_4c9d8712(var_49838c63) {
    /#
        assert(var_49838c63 < level.var_8cff5775.var_c3842d93.size);
    #/
    return level.var_8cff5775.var_c3842d93[var_49838c63];
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x2 linked
// Checksum 0x11cacfd1, Offset: 0x528
// Size: 0x78
function function_6afc9118() {
    profilestart();
    self.var_8cff5775.score = spawnstruct();
    self.var_8cff5775.var_e46a9e57 = spawnstruct();
    self resetplayer();
    self.var_8cff5775.score.var_4e33830e = 1;
    profilestop();
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x2 linked
// Checksum 0x551a5189, Offset: 0x5a8
// Size: 0x26c
function resetplayer() {
    self.var_8cff5775.score.points = 0;
    self.var_8cff5775.score.var_1397c196 = 0;
    self.var_8cff5775.score.var_96798a01 = 0;
    self.var_8cff5775.score.kills = 0;
    self.var_8cff5775.score.killstotal = 0;
    self.var_8cff5775.score.var_194c59ae = 1;
    self.var_8cff5775.score.var_33ae24 = 0;
    self.var_8cff5775.score.var_c31799a1 = 0;
    self.var_8cff5775.score.var_98425e00 = 0;
    self.var_8cff5775.score.var_a928c52e = 0;
    self.var_8cff5775.score.var_e49e3de7 = function_4c9d8712(self.var_8cff5775.score.var_194c59ae);
    self.var_8cff5775.score.var_6ec1ad9d = 0;
    self.var_8cff5775.score.deaths = 0;
    self.var_8cff5775.score.var_267d0586 = 0;
    self.var_8cff5775.score.keys = 0;
    self.var_8cff5775.score.bombs = 1;
    self.var_8cff5775.score.boosts = 2;
    self.var_8cff5775.score.lives = 3;
    self.var_8cff5775.score.var_5eac81d0 = 200000;
    if (is_true(level.var_8cff5775.hardcoremode)) {
        self.var_8cff5775.score.var_5eac81d0 = 1000000;
    }
    namespace_d2efac9a::function_d717ee7b();
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x0
// Checksum 0x374517c, Offset: 0x820
// Size: 0x45e
function function_4ae6488b() {
    self notify("6e6760a4e3171ad6");
    self endon("6e6760a4e3171ad6");
    self endon(#"disconnect");
    level endon(#"game_over");
    self.var_8cff5775.score.var_b5acb7a2 = 0;
    self.var_8cff5775.score.var_14b9da0e = 0;
    self.var_8cff5775.score.var_a4105a25 = 0;
    for (i = 0; i < 60; i++) {
        var_49787e19[i] = 0;
    }
    self.var_8cff5775.score.var_8bd11e9c = 0;
    self.var_8cff5775.score.var_2b624d62 = 0;
    self.var_8cff5775.score.var_ccfd3a86 = 0;
    for (i = 0; i < 60; i++) {
        var_bf384b50[i] = 0;
    }
    idx = 0;
    var_18f7f8fe = idx + 1;
    loops = 0;
    var_6399b44b = 0;
    var_9225fc4e = 0;
    var_fd869b30 = 0;
    var_cd4c12da = 0;
    var_b02085c8 = 0;
    var_e7a7a8d9 = self.var_8cff5775.score.points;
    var_86cc83fe = self.var_8cff5775.score.killstotal;
    while (1) {
        wait(1);
        var_d7ab2705 = self.var_8cff5775.score.points - var_e7a7a8d9;
        var_e7a7a8d9 = self.var_8cff5775.score.points;
        var_ebf015ab = self.var_8cff5775.score.killstotal - var_86cc83fe;
        var_86cc83fe = self.var_8cff5775.score.killstotal;
        if (level.var_8cff5775.var_358fbdc8 != 0) {
            continue;
        }
        if (isdefined(level.var_8cff5775.var_6f3d327)) {
            continue;
        }
        if (level flag::get("doa_round_spawning") == 0) {
            continue;
        }
        var_49787e19[idx] = var_d7ab2705;
        var_6399b44b = var_6399b44b - var_49787e19[var_18f7f8fe];
        var_6399b44b = var_6399b44b + var_49787e19[idx];
        var_bf384b50[idx] = var_ebf015ab;
        var_9225fc4e = var_9225fc4e - var_bf384b50[var_18f7f8fe];
        var_9225fc4e = var_9225fc4e + var_bf384b50[idx];
        idx = (idx + 1) % 60;
        var_18f7f8fe = (idx + 1) % 60;
        var_b02085c8++;
        if (var_6399b44b > self.var_8cff5775.score.var_a4105a25) {
            self.var_8cff5775.score.var_a4105a25 = var_6399b44b;
        }
        if (var_9225fc4e > self.var_8cff5775.score.var_ccfd3a86) {
            self.var_8cff5775.score.var_ccfd3a86 = var_9225fc4e;
        }
        self.var_8cff5775.score.var_b5acb7a2 = var_6399b44b;
        self.var_8cff5775.score.var_8bd11e9c = var_9225fc4e;
        var_fd869b30 = var_fd869b30 + var_6399b44b;
        var_cd4c12da = var_cd4c12da + var_9225fc4e;
        self.var_8cff5775.score.var_14b9da0e = var_fd869b30 / var_b02085c8;
        self.var_8cff5775.score.var_2b624d62 = var_cd4c12da / var_b02085c8;
    }
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 2, eflags: 0x2 linked
// Checksum 0x8d5f086d, Offset: 0xc88
// Size: 0xc4
function function_6c15a74e(amount = 1, var_96326d51 = 1) {
    self.var_8cff5775.score.keys = self.var_8cff5775.score.keys + amount;
    /#
        assert(self.var_8cff5775.score.keys <= self function_9d6bf0a9(), "<unknown string>");
    #/
    namespace_d2efac9a::function_6c15a74e(amount, var_96326d51);
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 2, eflags: 0x2 linked
// Checksum 0x2aa833b1, Offset: 0xd58
// Size: 0xb4
function function_849a9028(amount = 1, var_96326d51 = 1) {
    self.var_8cff5775.score.keys = self.var_8cff5775.score.keys - amount;
    /#
        assert(self.var_8cff5775.score.keys >= 0, "<unknown string>");
    #/
    namespace_d2efac9a::function_849a9028(amount, var_96326d51);
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 2, eflags: 0x2 linked
// Checksum 0x2d784d55, Offset: 0xe18
// Size: 0x1f2
function function_70d75028(*type, score = 100) {
    if (!isdefined(self.var_8cff5775.score)) {
        return;
    }
    var_194c59ae = self.var_8cff5775.score.var_194c59ae;
    if (is_true(self.var_8cff5775.var_3e81d24c) && level.var_8cff5775.var_358fbdc8 == 0 && !is_true(level.var_8cff5775.var_318aa67a)) {
        if (var_194c59ae < 4) {
            var_194c59ae = 4;
        }
    }
    self.var_8cff5775.score.var_1397c196 = self.var_8cff5775.score.var_1397c196 + score * var_194c59ae;
    if (self.var_8cff5775.score.var_1397c196 > 500000000) {
        self.var_8cff5775.score.var_1397c196 = 500000000;
    }
    self.var_8cff5775.score.var_96798a01 = self.var_8cff5775.score.var_96798a01 + score * self.var_8cff5775.score.var_194c59ae;
    self.var_8cff5775.var_e46a9e57.var_8f4c7e23 = self.var_8cff5775.var_e46a9e57.var_8f4c7e23 + score * self.var_8cff5775.score.var_194c59ae;
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 2, eflags: 0x2 linked
// Checksum 0x2dfe863b, Offset: 0x1018
// Size: 0x3be
function function_9e8690e0(item, type) {
    if (!isdefined(self.var_8cff5775.score)) {
        return;
    }
    score = 0;
    var_98425e00 = 0.2;
    switch (type) {
    case 1:
        score = 500;
        var_98425e00 = 1;
        break;
    case 2:
        score = 250;
        break;
    case 3:
        score = 150;
        break;
    case 5:
        score = 100;
        break;
    case 4:
        score = 75;
        break;
    case 7:
        score = 50;
        break;
    case 6:
        score = 25;
        break;
    case 8:
        var_6cec06ef = int(math::clamp(item.scale, 1, 10));
        score = 250 * var_6cec06ef;
        var_98425e00 = item.var_d34e5888;
        self.headshots++;
        self.var_8cff5775.score.var_c31799a1++;
        self.var_8cff5775.score.var_33ae24++;
        if (item.scale > 8.5) {
            self thread namespace_6e90e490::function_47e11416(4);
        }
        break;
    }
    var_194c59ae = self.var_8cff5775.score.var_194c59ae;
    if (is_true(self.var_8cff5775.var_3e81d24c) && level.var_8cff5775.var_358fbdc8 == 0 && !is_true(level.var_8cff5775.var_318aa67a)) {
        if (var_194c59ae < 4) {
            var_194c59ae = 4;
        }
    }
    self.var_8cff5775.score.var_1397c196 = self.var_8cff5775.score.var_1397c196 + score * var_194c59ae;
    self.var_8cff5775.score.var_96798a01 = self.var_8cff5775.score.var_96798a01 + score * var_194c59ae;
    self.var_8cff5775.var_e46a9e57.var_8f4c7e23 = self.var_8cff5775.var_e46a9e57.var_8f4c7e23 + score * var_194c59ae;
    if (self.var_8cff5775.score.var_1397c196 > 500000000) {
        self.var_8cff5775.score.var_1397c196 = 500000000;
    }
    self.var_8cff5775.score.var_a928c52e = self.var_8cff5775.score.var_a928c52e + var_98425e00;
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x2 linked
// Checksum 0x80bd4b91, Offset: 0x13e0
// Size: 0x7c
function function_f6ac4585() {
    self.var_8cff5775.score.deaths++;
    self.var_8cff5775.score.var_267d0586++;
    self.var_8cff5775.var_e46a9e57.var_dded67ba++;
    if (!is_true(level.var_40d076a7)) {
        self thread function_1dd66aa1();
    }
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x2 linked
// Checksum 0xd43908b1, Offset: 0x1468
// Size: 0x696
function function_1dd66aa1() {
    self notify("d2a984f7d17f687");
    self endon("d2a984f7d17f687");
    self endon(#"disconnect");
    self.var_8cff5775.var_ecfd5bbd = 1;
    var_7c851994 = self.origin;
    var_8508d81d = math::clamp(int(self.var_8cff5775.score.var_98425e00 / 5), 0, 30);
    var_84128236 = 2;
    if (var_8508d81d > 0) {
        var_70c7d050 = int(self.var_8cff5775.score.var_98425e00 / var_8508d81d);
        var_817e0b00 = function_4c9d8712(self.var_8cff5775.score.var_194c59ae - 1);
        var_6f324de4 = var_70c7d050;
        if (is_true(level.var_8cff5775.hardcoremode)) {
            while (var_8508d81d > 0) {
                level namespace_dfc652ee::function_b8f6a8cd(undefined, var_7c851994, 1, undefined, 1);
                waitframe(1);
                var_8508d81d--;
            }
            self.var_8cff5775.score.var_98425e00 = 0;
            self.var_8cff5775.score.var_194c59ae = self namespace_1c2a96f9::function_d438e371() ? 2 : 1;
            self.var_8cff5775.score.var_6ec1ad9d = 0;
        } else {
            while (self.var_8cff5775.score.var_98425e00 > 0 && is_true(self.laststand)) {
                decrement = int(self.var_8cff5775.score.var_194c59ae * self.var_8cff5775.score.var_194c59ae * self.var_8cff5775.score.var_194c59ae / 9) + self.var_8cff5775.score.var_194c59ae;
                self.var_8cff5775.score.var_98425e00 = self.var_8cff5775.score.var_98425e00 - decrement;
                if (self.var_8cff5775.score.var_98425e00 < 0) {
                    self.var_8cff5775.score.var_98425e00 = 0;
                }
                var_6f324de4 = var_6f324de4 - decrement;
                if (var_6f324de4 <= 0) {
                    var_6f324de4 = var_70c7d050;
                    level namespace_dfc652ee::function_b8f6a8cd(undefined, var_7c851994, 1, undefined, 1);
                }
                if (self.var_8cff5775.score.var_98425e00 <= var_817e0b00) {
                    self.var_8cff5775.score.var_194c59ae--;
                    if (self.var_8cff5775.score.var_194c59ae < 1) {
                        self.var_8cff5775.score.var_194c59ae = 1;
                    }
                    if (self namespace_1c2a96f9::function_d438e371() && self.var_8cff5775.score.var_194c59ae < 2) {
                        self.var_8cff5775.score.var_194c59ae = 2;
                        self.var_8cff5775.score.var_98425e00 = function_4c9d8712(1);
                        break;
                    }
                    self.var_8cff5775.score.var_e49e3de7 = function_4c9d8712(self.var_8cff5775.score.var_194c59ae);
                    var_817e0b00 = function_4c9d8712(self.var_8cff5775.score.var_194c59ae - 1);
                    self.var_8cff5775.score.var_6ec1ad9d = var_817e0b00;
                }
                waitframe(1);
            }
        }
    }
    if (self.var_8cff5775.score.var_98425e00 <= 0) {
        self.var_8cff5775.score.var_98425e00 = 0;
        self.var_8cff5775.score.var_194c59ae = self namespace_1c2a96f9::function_d438e371() ? 2 : 1;
        self.var_8cff5775.score.var_6ec1ad9d = 0;
    }
    self.var_8cff5775.score.var_a928c52e = self.var_8cff5775.score.var_98425e00;
    self.var_8cff5775.score.var_e49e3de7 = function_4c9d8712(self.var_8cff5775.score.var_194c59ae);
    if (self.var_8cff5775.score.var_6ec1ad9d == self.var_8cff5775.score.var_e49e3de7) {
        self.var_8cff5775.score.var_6ec1ad9d = self.var_8cff5775.score.var_e49e3de7 - 1;
    }
    self.var_8cff5775.var_ecfd5bbd = undefined;
    self notify(#"hash_4e4e55afb99d1a6b");
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 1, eflags: 0x2 linked
// Checksum 0x9ff04a9d, Offset: 0x1b08
// Size: 0x206
function function_41ce2473(parms) {
    if (isdefined(parms.eattacker) && isplayer(parms.eattacker)) {
        parms.eattacker.var_8cff5775.score.kills++;
        parms.eattacker.var_8cff5775.score.killstotal++;
        parms.eattacker.var_8cff5775.var_e46a9e57.var_832beab2++;
        if (parms.eattacker.kills < 1048576 - 1) {
            parms.eattacker.kills++;
        }
        time = gettime();
        parms.eattacker.var_8cff5775.var_9f897c4d = time;
        if (!is_true(self.shieldhit)) {
            parms.eattacker.var_8cff5775.var_de92b533 = 1;
            parms.eattacker.var_8cff5775.var_e45f072b = time;
            if (parms.eattacker.var_8cff5775.var_b8232cd0 === level.var_8cff5775.roundnumber) {
                parms.eattacker.var_8cff5775.var_c739e4eb = parms.eattacker.var_8cff5775.var_c739e4eb + 1;
            } else {
                parms.eattacker.var_8cff5775.var_b8232cd0 = level.var_8cff5775.roundnumber;
                parms.eattacker.var_8cff5775.var_c739e4eb = 1;
            }
        }
    }
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x2 linked
// Checksum 0x323bfc0d, Offset: 0x1d18
// Size: 0x1a
function function_5ce79923() {
    return self.var_8cff5775.score.points;
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 1, eflags: 0x2 linked
// Checksum 0x723ccde9, Offset: 0x1d40
// Size: 0x144
function function_f3b382da(me) {
    players = namespace_7f5aeb59::function_23e1f90f();
    if (players.size == 1) {
        return 0;
    }
    if (me.var_8cff5775.score.points == 0) {
        return 0;
    }
    if (me.var_8cff5775.score.points == 500000000) {
        return 1;
    }
    foreach (guy in players) {
        if (guy == me) {
            continue;
        }
        if (guy.var_8cff5775.score.points >= me.var_8cff5775.score.points) {
            return 0;
        }
    }
    return 1;
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x2 linked
// Checksum 0xdd076655, Offset: 0x1e90
// Size: 0x2b2
function function_619ae3a0() {
    self endon(#"disconnect");
    var_ca445d97 = self function_77cbfb85() - self.var_8cff5775.score.lives;
    var_6bd539e9 = self function_4091beb5() - self.var_8cff5775.score.bombs;
    var_4c3457f5 = self function_fd3d9ee0() - self.var_8cff5775.score.boosts;
    var_363e80d7 = self function_9d6bf0a9() - self.var_8cff5775.score.keys;
    self namespace_83eb6304::function_3ecfde67("lightningStrike");
    self namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
    while (var_ca445d97 && isdefined(self)) {
        level thread namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_extra_life"), self.origin, undefined, undefined, 1, undefined, undefined, undefined, self);
        var_ca445d97--;
        wait(1);
    }
    while (var_6bd539e9 && isdefined(self)) {
        level thread namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_nuke"), self.origin, undefined, undefined, 1, undefined, undefined, undefined, self);
        var_6bd539e9--;
        wait(1);
    }
    while (var_4c3457f5 && isdefined(self)) {
        level thread namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_boost"), self.origin, undefined, undefined, 1, undefined, undefined, undefined, self);
        var_4c3457f5--;
        wait(1);
    }
    while (var_363e80d7 && isdefined(self)) {
        level thread namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_skeleton_key"), self.origin, undefined, undefined, 1, undefined, undefined, undefined, self);
        var_363e80d7--;
        wait(1);
    }
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x2 linked
// Checksum 0xf81c0690, Offset: 0x2150
// Size: 0x90
function function_8ff4d53f() {
    foreach (player in getplayers()) {
        player thread function_619ae3a0();
    }
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x2 linked
// Checksum 0xdf092ee, Offset: 0x21e8
// Size: 0x81a
function function_7752515d() {
    if (!isdefined(self.var_8cff5775) || !isdefined(self.var_8cff5775.score)) {
        return;
    }
    if (!is_true(self.var_8cff5775.var_ecfd5bbd) && self.var_8cff5775.score.var_98425e00 < self.var_8cff5775.score.var_a928c52e) {
        delta = self.var_8cff5775.score.var_a928c52e - self.var_8cff5775.score.var_98425e00;
        if (delta >= self.var_8cff5775.score.var_194c59ae) {
            increment = self.var_8cff5775.score.var_194c59ae;
        } else {
            increment = 0.05;
        }
        self.var_8cff5775.score.var_98425e00 = self.var_8cff5775.score.var_98425e00 + increment;
        if (self.var_8cff5775.score.var_98425e00 > level.var_8cff5775.var_88be0b68) {
            self.var_8cff5775.score.var_98425e00 = level.var_8cff5775.var_88be0b68;
            if (!is_true(level.var_8cff5775.var_9da5bdfd)) {
                level.var_8cff5775.var_9da5bdfd = 1;
                level thread function_8ff4d53f();
                level namespace_a6ddb172::function_7a0e5387(58);
                namespace_7f5aeb59::function_f8645db3(getdvarint(#"hash_654342a2b1ff63d4", 2500));
            }
        }
        if (self.var_8cff5775.score.var_98425e00 > self.var_8cff5775.score.var_e49e3de7) {
            if (self.var_8cff5775.score.var_194c59ae <= 9) {
                self.var_8cff5775.score.var_6ec1ad9d = self.var_8cff5775.score.var_e49e3de7;
                self.var_8cff5775.score.var_e49e3de7 = function_4c9d8712(self.var_8cff5775.score.var_194c59ae + 1);
            }
            self.var_8cff5775.score.var_194c59ae++;
            if (self.var_8cff5775.score.var_194c59ae >= 9) {
                self.var_8cff5775.score.var_194c59ae = 9;
            }
            self namespace_d2efac9a::function_a9f863ca(self.var_8cff5775.score.var_194c59ae);
        }
    }
    if (self.var_8cff5775.score.points < self.var_8cff5775.score.var_1397c196) {
        delta = self.var_8cff5775.score.var_1397c196 - self.var_8cff5775.score.points;
        frac = int(0.025 * delta);
        frac = int(frac / 25) * 25;
        if (frac < 25) {
            frac = 25;
        }
        self.var_8cff5775.score.points = self.var_8cff5775.score.points + frac;
        if (self.var_8cff5775.score.points > self.var_8cff5775.score.var_1397c196) {
            self.var_8cff5775.score.points = self.var_8cff5775.score.var_1397c196;
        }
        if (self.var_8cff5775.score.points > self.var_8cff5775.score.var_5eac81d0) {
            if (self.var_8cff5775.score.lives < self function_77cbfb85()) {
                level namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_extra_life"), self.origin, undefined, undefined, 1, undefined, undefined, undefined, self);
            } else {
                roll = randomint(100);
                if (roll < 30 && namespace_ec06fe4a::function_38de0ce8() <= 44) {
                    level namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_skeleton_fb"), self.origin, undefined, undefined, 1, undefined, undefined, undefined, self);
                } else if (roll < 60) {
                    level namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_boxing_glove"), self.origin, undefined, undefined, 1, undefined, undefined, undefined, self);
                } else {
                    level namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4("zombietron_coat_of_arms"), self.origin, undefined, undefined, 1, undefined, undefined, undefined, self);
                }
            }
            if (self namespace_1c2a96f9::function_b01c3b20()) {
                self.var_8cff5775.score.var_5eac81d0 = self.var_8cff5775.score.var_5eac81d0 + (is_true(level.var_8cff5775.hardcoremode) ? 250000 : 150000);
            } else {
                self.var_8cff5775.score.var_5eac81d0 = self.var_8cff5775.score.var_5eac81d0 + (is_true(level.var_8cff5775.hardcoremode) ? 1000000 : 200000);
            }
        }
    }
    if (self.var_8cff5775.score.points > 500000000) {
        self.var_8cff5775.score.points = 500000000;
    }
    self.score = int(self.var_8cff5775.score.points / 25);
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x2 linked
// Checksum 0x14ff88df, Offset: 0x2a10
// Size: 0x28
function function_77cbfb85() {
    if (self namespace_1c2a96f9::function_b01c3b20()) {
        return 10;
    }
    return 9;
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x2 linked
// Checksum 0x59cf4997, Offset: 0x2a40
// Size: 0x28
function function_4091beb5() {
    if (self namespace_1c2a96f9::function_8a19ece()) {
        return 10;
    }
    return 9;
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x2 linked
// Checksum 0x4f01dcbb, Offset: 0x2a70
// Size: 0x28
function function_9d6bf0a9() {
    if (self namespace_1c2a96f9::function_d438e371()) {
        return 10;
    }
    return 9;
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x2 linked
// Checksum 0x5c510c43, Offset: 0x2aa0
// Size: 0x28
function function_fd3d9ee0() {
    if (self namespace_1c2a96f9::function_d17f9bcb()) {
        return 10;
    }
    return 9;
}
