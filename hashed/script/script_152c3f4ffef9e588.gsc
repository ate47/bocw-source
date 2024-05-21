// Atian COD Tools GSC CW decompiler test
#using script_c8d806d2487b617;
#using script_1f41849126bfc83d;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_26187575f84f8d07;
#using scripts\core_common\perks.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace radiation;

// Namespace radiation/radiation
// Params 0, eflags: 0x5
// Checksum 0x5bb788e4, Offset: 0x118
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"radiation", &preinit, undefined, undefined, undefined);
}

// Namespace radiation/radiation
// Params 0, eflags: 0x6 linked
// Checksum 0xcb217c3e, Offset: 0x160
// Size: 0x9c
function private preinit() {
    if (!namespace_956bd4dd::function_ab99e60c()) {
        return;
    }
    level thread function_1e3ac913();
    callback::on_spawned(&_on_player_spawned);
    callback::on_player_killed(&function_9dece272);
    clientfield::register("toplayer", "ftdb_inZone", 1, 1, "int");
}

// Namespace radiation/radiation
// Params 0, eflags: 0x6 linked
// Checksum 0x40bd8366, Offset: 0x208
// Size: 0xf6
function private function_3c3e40b6() {
    if (!isdefined(level.radiation)) {
        assertmsg("<unknown string>");
        return;
    }
    if (level.radiation.levels.size <= 0) {
        assertmsg("<unknown string>");
        return;
    }
    self.radiation = {};
    self.radiation.var_abd7d46a = level.radiation.levels[0].maxhealth;
    self.radiation.var_32adf91d = 0;
    self.radiation.sickness = [];
    self.radiation.var_393e0e31 = 0;
    self.radiation.var_f1c51b06 = 0;
    self.radiation.var_1389a65a = 0;
}

// Namespace radiation/radiation
// Params 0, eflags: 0x6 linked
// Checksum 0x51449809, Offset: 0x308
// Size: 0x5c
function private _on_player_spawned() {
    if (!namespace_956bd4dd::function_ab99e60c()) {
        return;
    }
    assert(isplayer(self));
    self function_3c3e40b6();
}

// Namespace radiation/radiation
// Params 1, eflags: 0x6 linked
// Checksum 0xdd0c1034, Offset: 0x370
// Size: 0x6c
function private function_9dece272(*params) {
    if (!namespace_956bd4dd::function_ab99e60c()) {
        return;
    }
    assert(isplayer(self));
    self clientfield::set_to_player("ftdb_inZone", 0);
}

// Namespace radiation/radiation
// Params 1, eflags: 0x2 linked
// Checksum 0x96129e80, Offset: 0x3e8
// Size: 0x4e
function function_c9c6dda1(player) {
    if (!isplayer(player)) {
        assert(0);
        return;
    }
    return player.radiation.var_32adf91d;
}

// Namespace radiation/radiation
// Params 0, eflags: 0x6 linked
// Checksum 0x48d7a57c, Offset: 0x440
// Size: 0x79e
function private function_1e3ac913() {
    level endon(#"game_ended");
    updatepass = 0;
    while (true) {
        foreach (index, player in getplayers()) {
            if (index % 10 == updatepass) {
                if (!isdefined(player.radiation)) {
                    continue;
                }
                var_56bea7c = 0;
                if (player.sessionstate != "playing" || !isalive(player)) {
                    player.radiation.var_abd7d46a = level.radiation.levels[0].maxhealth;
                    var_56bea7c = player.radiation.var_32adf91d != 0;
                    player.radiation.var_32adf91d = 0;
                    player.radiation.var_f1c51b06 = 0;
                    if (var_56bea7c) {
                        player thread function_6ade1bbf(0);
                        player function_3c1f8280();
                    }
                    continue;
                }
                var_4a68766 = player namespace_b77e8eb1::function_8e4e3bb2();
                if (var_4a68766) {
                    player clientfield::set_to_player("ftdb_inZone", 1);
                } else {
                    player clientfield::set_to_player("ftdb_inZone", 0);
                }
                var_cad9861a = 0;
                if (var_4a68766) {
                    if (gettime() >= player.radiation.var_f1c51b06 + level.var_a6cec0dc) {
                        var_2f42039 = 1;
                        if (isdefined(level.var_2632202d)) {
                            var_2f42039 = player [[ level.var_2632202d ]]();
                        }
                        var_cad9861a = level.var_ee660ce0 * (1 + var_2f42039);
                        if (isdefined(level.var_c3a003ad)) {
                            var_cad9861a = player [[ level.var_c3a003ad ]](var_cad9861a);
                        }
                        player.radiation.var_abd7d46a -= var_cad9861a;
                        while (player.radiation.var_abd7d46a < 0 && player.radiation.var_32adf91d < level.var_c43aac04) {
                            player.radiation.var_32adf91d++;
                            player.radiation.var_abd7d46a += level.radiation.levels[player.radiation.var_32adf91d].maxhealth;
                            var_56bea7c = 1;
                        }
                        if (player.radiation.var_abd7d46a < 0) {
                            player.radiation.var_abd7d46a = 0;
                        }
                        if (var_56bea7c) {
                            var_76f7b10e = 0;
                            if (player.radiation.var_32adf91d == 1) {
                                player luinotifyevent(#"hash_7adc508fd96535c9", 0);
                                var_76f7b10e = 3.5;
                            }
                            if (isdefined(level.var_df8a7ea7)) {
                                player [[ level.var_df8a7ea7 ]]();
                            }
                            player thread function_6ade1bbf(var_76f7b10e);
                        }
                        player function_3c1f8280();
                        player.radiation.var_f1c51b06 = gettime();
                    }
                }
                if (var_cad9861a <= 0) {
                    if (player.radiation.var_32adf91d == 0 && player.radiation.var_abd7d46a >= level.radiation.levels[0].maxhealth) {
                        if (is_true(player.var_cfc4949c)) {
                            player.var_cfc4949c = undefined;
                            player thread function_6ade1bbf(0);
                        }
                        player function_3c1f8280();
                        continue;
                    }
                    if (gettime() >= player.radiation.var_f1c51b06 + level.var_bb0c0222) {
                        var_4a34487 = 0;
                        if (isdefined(level.var_11f2d0c5)) {
                            var_4a34487 = player [[ level.var_11f2d0c5 ]]();
                        }
                        var_ac8e5dcc = level.var_f569833a * (1 - var_4a34487);
                        player.radiation.var_abd7d46a += var_ac8e5dcc;
                        while (player.radiation.var_32adf91d > 0 && player.radiation.var_abd7d46a > level.radiation.levels[player.radiation.var_32adf91d].maxhealth) {
                            player.radiation.var_abd7d46a -= level.radiation.levels[player.radiation.var_32adf91d].maxhealth;
                            player.radiation.var_32adf91d--;
                            var_56bea7c = 1;
                        }
                        if (player.radiation.var_abd7d46a > level.radiation.levels[player.radiation.var_32adf91d].maxhealth) {
                            player.radiation.var_abd7d46a = level.radiation.levels[player.radiation.var_32adf91d].maxhealth;
                        }
                        player function_3c1f8280();
                        if (var_56bea7c) {
                            player thread function_6ade1bbf(0);
                        }
                        player.radiation.var_f1c51b06 = gettime();
                    }
                }
                player function_9b065f90();
            }
        }
        updatepass = (updatepass + 1) % 10;
        waitframe(1);
    }
}

// Namespace radiation/radiation
// Params 0, eflags: 0x2 linked
// Checksum 0xd52928f6, Offset: 0xbe8
// Size: 0x96
function function_9b065f90() {
    if (self.radiation.var_32adf91d == level.var_4fdf11d8) {
        if (gettime() >= self.radiation.var_1389a65a + level.var_77a24482) {
            self dodamage(level.var_f87355e5, self.origin, undefined, undefined, "none", "MOD_DEATH_CIRCLE", 0, level.weaponnone);
            self.radiation.var_1389a65a = gettime();
        }
    }
}

// Namespace radiation/radiation
// Params 1, eflags: 0x2 linked
// Checksum 0xef187976, Offset: 0xc88
// Size: 0x2d4
function function_6ade1bbf(timedelay) {
    self endon(#"death", #"disconnect");
    level endon(#"game_ended");
    wait(timedelay);
    if (!isdefined(self.radiation.var_32adf91d)) {
        return;
    }
    if (self.radiation.var_32adf91d == level.var_4fdf11d8) {
        namespace_6615ea91::function_59621e3c(self, #"dot");
    }
    if (self.radiation.var_32adf91d >= 2) {
        self.heal.var_c8777194 = 1;
        self.n_regen_delay = 9;
        namespace_6615ea91::function_59621e3c(self, #"hash_53d8a06b13ec49d9");
    } else {
        self.n_regen_delay = 1;
    }
    if (self.radiation.var_32adf91d >= 1) {
        self function_e6f9e3cd();
        self perks::perk_reset_all();
        self function_b5feff95(#"specialty_sprint");
        self function_b5feff95(#"specialty_sprintreload");
        self function_b5feff95(#"specialty_forwardspawninteract");
        self function_b5feff95(#"specialty_slide");
        self function_b5feff95(#"specialty_sprintheal");
        self perks::perk_setperk(#"specialty_sprint");
        self perks::perk_setperk(#"specialty_sprintreload");
        self perks::perk_setperk(#"specialty_forwardspawninteract");
        self perks::perk_setperk(#"specialty_slide");
        self perks::perk_setperk(#"specialty_sprintheal");
        namespace_6615ea91::function_59621e3c(self, #"disable_perks");
        return;
    }
    if (isdefined(level.var_eada15e7)) {
        self [[ level.var_eada15e7 ]]();
    }
}

// Namespace radiation/radiation
// Params 0, eflags: 0x2 linked
// Checksum 0xe71b2794, Offset: 0xf68
// Size: 0xb4
function function_3c1f8280() {
    namespace_6615ea91::function_137e7814(self, self.radiation.var_32adf91d);
    var_60ece81c = level.radiation.levels[self.radiation.var_32adf91d].maxhealth;
    percenthealth = self.radiation.var_abd7d46a / var_60ece81c;
    namespace_6615ea91::function_835a6746(self, percenthealth);
    namespace_6615ea91::function_36a2c924(self, 1 - percenthealth);
}

// Namespace radiation/radiation
// Params 1, eflags: 0x4
// Checksum 0xa3aa43b4, Offset: 0x1028
// Size: 0xa0
function private function_770871f5(player) {
    foreach (sickness, var_46bdb64c in player.radiation.sickness) {
        function_f68871f2(player, sickness);
    }
}

// Namespace radiation/radiation
// Params 2, eflags: 0x6 linked
// Checksum 0xb09f3d2e, Offset: 0x10d0
// Size: 0x114
function private function_f68871f2(player, sickness) {
    if (!isplayer(player)) {
        assert(0);
        return;
    }
    if (!ishash(sickness)) {
        assert(0);
        return;
    }
    var_46bdb64c = level.radiation.sickness[sickness];
    if (isdefined(var_46bdb64c.var_dad6905e)) {
        player [[ var_46bdb64c.var_dad6905e ]]();
    }
    player.radiation.sickness[sickness] = undefined;
    arrayremovevalue(player.radiation.sickness, undefined, 1);
    namespace_6615ea91::function_5cf1c0a(player, sickness);
}

