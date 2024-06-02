// Atian COD Tools GSC CW decompiler test
#using script_348e9eb082638f90;
#using script_13da4e6b98ca81a1;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\serverfield_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace scream;

// Namespace scream/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x48a9ec8e, Offset: 0x258
// Size: 0x31c
function event_handler[gametype_init] main(*eventstruct) {
    level.var_433dea4 = 1;
    level.var_d98eed82 = #"hash_7004ef7271235614";
    level.var_373c2e89 = #"hash_2ec26772dd39fa83";
    level.scream_deathmatch_timer = scream_deathmatch_timer::register();
    callback::on_spawned(&on_player_spawned);
    clientfield::register("toplayer", "scream_slasher_postfx", 17000, 1, "int", &function_9b21dea8, 0, 0);
    clientfield::register("allplayers", "scream_role_assignment", 17000, 2, "int", &function_5a4b8269, 0, 0);
    clientfield::register("allplayers", "scream_underscores", 17000, 1, "int", &function_b5673685, 0, 0);
    clientfield::register("scriptmover", "scream_scrambler", 17000, 1, "int", &function_994883d0, 0, 0);
    clientfield::register_clientuimodel("hudItems.alivePlayerCount", #"hash_6f4b11a0bee9b73d", #"aliveplayercount", 17000, 4, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.aliveTeammateCount", #"hash_6f4b11a0bee9b73d", #"aliveteammatecount", 1, 4, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.screamSlasherClientNum0", #"hash_6f4b11a0bee9b73d", #"hash_43a11e70b97fcf39", 17000, 7, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.screamSlasherClientNum1", #"hash_6f4b11a0bee9b73d", #"hash_43a11d70b97fcd86", 17000, 7, "int", undefined, 0, 0);
    serverfield::register("scream_slasher_chasing_vo", 17000, 1, "int");
    function_f2817d0c();
}

// Namespace scream/scream
// Params 1, eflags: 0x0
// Checksum 0xde69b344, Offset: 0x580
// Size: 0xbc
function on_player_spawned(localclientnum) {
    islocalclient = self function_da43934d();
    if (self.var_4adf3a85 === 2) {
        if (islocalclient) {
            self thread function_20d6d0e5(localclientnum);
        } else {
            self thread function_31e861fe(localclientnum);
        }
        return;
    }
    if (self.var_4adf3a85 === 1) {
        if (islocalclient) {
            self thread function_9a00f210(localclientnum);
            return;
        }
        self thread function_874de2c1(localclientnum);
    }
}

// Namespace scream/scream
// Params 7, eflags: 0x0
// Checksum 0xebda41a1, Offset: 0x648
// Size: 0x114
function function_5a4b8269(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!bwastimejump) {
        return;
    }
    islocalclient = self function_da43934d();
    if (bwastimejump == 1) {
        self.var_4adf3a85 = 1;
        if (islocalclient) {
            self thread function_9a00f210(fieldname);
        } else {
            self thread function_874de2c1(fieldname);
        }
        return;
    }
    if (bwastimejump == 2) {
        self.var_4adf3a85 = 2;
        if (islocalclient) {
            self thread function_20d6d0e5(fieldname);
            return;
        }
        self thread function_31e861fe(fieldname);
    }
}

// Namespace scream/scream
// Params 7, eflags: 0x0
// Checksum 0xfebbec5f, Offset: 0x768
// Size: 0x19e
function function_9b21dea8(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        postfx = #"hash_3ffcd14aabd4005d";
        if (!self function_da43934d() || function_65b9eb0f(fieldname) || game.state == #"postgame") {
            postfx = #"hash_6148cfc4d39c2456";
        }
        if (!self postfx::function_556665f2(postfx)) {
            self postfx::playpostfxbundle(postfx);
        }
        if (!isdefined(self.var_ba8712f8)) {
            self.var_ba8712f8 = self playloopsound(#"hash_6caafa8984ce2899");
        }
        return;
    }
    self postfx::stoppostfxbundle(#"hash_3ffcd14aabd4005d");
    self postfx::stoppostfxbundle(#"hash_6148cfc4d39c2456");
    if (isdefined(self.var_ba8712f8)) {
        self stoploopsound(self.var_ba8712f8);
        self.var_ba8712f8 = undefined;
    }
}

// Namespace scream/scream
// Params 1, eflags: 0x0
// Checksum 0x6ac6900b, Offset: 0x910
// Size: 0x1ec
function function_20d6d0e5(localclientnum) {
    self notify("22d2c3510f9d7d4d");
    self endon("22d2c3510f9d7d4d");
    level endon(#"game_ended");
    self endon(#"death");
    self.var_98524ca2 = 0;
    while (true) {
        var_41c3055b = 0;
        var_85efa2fd = getenemyplayers(localclientnum, self.team, self.origin, 8015);
        foreach (var_24153654 in var_85efa2fd) {
            waitframe(1);
            canseeplayer = self canseeplayer(var_24153654);
            if (canseeplayer) {
                var_41c3055b = 1;
                break;
            }
        }
        if (var_41c3055b && self.var_98524ca2 !== 1) {
            self.var_98524ca2 = 1;
            if (game.state === #"playing") {
                playsound(localclientnum, #"hash_52643e8998135dc8");
            }
            self docooldown(10);
        } else if (!var_41c3055b) {
            self.var_98524ca2 = 0;
        }
        waitframe(1);
    }
}

// Namespace scream/scream
// Params 1, eflags: 0x0
// Checksum 0xdf6017bc, Offset: 0xb08
// Size: 0x2c6
function function_9a00f210(localclientnum) {
    self notify("385a892db745d6ec");
    self endon("385a892db745d6ec");
    level endon(#"game_ended");
    self endon(#"death");
    self.var_80b4d848 = 0;
    while (true) {
        var_5423ce61 = 0;
        survivors = getenemyplayers(localclientnum, self.team, self.origin, 1015);
        foreach (survivor in survivors) {
            waitframe(1);
            canseeplayer = self canseeplayer(survivor);
            if (canseeplayer) {
                var_5423ce61 = 1;
                break;
            }
        }
        if (var_5423ce61 && self.var_80b4d848 !== 1) {
            self.var_80b4d848 = 1;
            if (game.state === #"playing" && !is_true(self.var_f9cc5c06)) {
                if (!isdefined(self.var_354f4d95)) {
                    self.var_354f4d95 = self playloopsound(#"hash_7cac75bfad504a7d");
                }
                self serverfield::set("scream_slasher_chasing_vo", 1);
            }
            self docooldown(5);
        } else if (!var_5423ce61 && self.var_80b4d848 === 1) {
            self.var_80b4d848 = 0;
            if (isdefined(self.var_354f4d95)) {
                self stoploopsound(self.var_354f4d95);
                self.var_354f4d95 = undefined;
            }
            self docooldown(3);
            self serverfield::set("scream_slasher_chasing_vo", 0);
        }
        waitframe(1);
    }
}

// Namespace scream/scream
// Params 1, eflags: 0x4
// Checksum 0x49d41ff1, Offset: 0xdd8
// Size: 0x1da
function private canseeplayer(player) {
    if (!isplayer(player) || !function_56e2eaa8(player) || !isalive(player) || is_true(player function_bee2bbc7())) {
        return false;
    }
    if (!isplayer(self) || !function_56e2eaa8(self) || !isalive(self)) {
        return false;
    }
    playereye = player function_dbd63244();
    selfeye = self function_dbd63244();
    if (!isdefined(playereye) || !isdefined(selfeye)) {
        return false;
    }
    var_e5fb6a0 = self function_a6a764a9(playereye, 1);
    if (!function_518c5cac(var_e5fb6a0)) {
        return false;
    }
    sighttrace = bullettrace(selfeye, playereye, 1, player);
    if (!isdefined(sighttrace[#"fraction"]) || sighttrace[#"fraction"] < 1) {
        return false;
    }
    return true;
}

// Namespace scream/scream
// Params 0, eflags: 0x4
// Checksum 0x13c6f6de, Offset: 0xfc0
// Size: 0x132
function private function_dbd63244() {
    if (!isplayer(self)) {
        return;
    }
    if (self function_21c0fa55()) {
        return self geteye();
    }
    if (isdefined(self.origin)) {
        stance = self getstance();
        switch (stance) {
        case #"prone":
            return (self.origin + (0, 0, 11));
        case #"crouch":
            return (self.origin + (0, 0, 40));
        case #"stand":
            return (self.origin + (0, 0, 60));
        default:
            return (self.origin + (0, 0, 60));
        }
    }
}

// Namespace scream/scream
// Params 1, eflags: 0x4
// Checksum 0xfe282a79, Offset: 0x1100
// Size: 0x7a
function private function_518c5cac(pos) {
    if (!isdefined(pos)) {
        return false;
    }
    if (pos[0] < -0.9 || pos[0] > 0.9) {
        return false;
    }
    if (pos[1] < -0.9 || pos[1] > 0.9) {
        return false;
    }
    return true;
}

// Namespace scream/scream
// Params 1, eflags: 0x4
// Checksum 0x8c6c89cc, Offset: 0x1188
// Size: 0x8c
function private docooldown(cooldown) {
    self notify("4f0a979f44c4dbaf");
    self endon("4f0a979f44c4dbaf");
    level endon(#"game_ended");
    self endon(#"death", #"disconnect");
    if (!isplayer(self) || !isdefined(cooldown)) {
        return;
    }
    wait(cooldown);
}

// Namespace scream/scream
// Params 7, eflags: 0x0
// Checksum 0x76ae48dc, Offset: 0x1220
// Size: 0x226
function function_b5673685(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death", #"disconnect");
    waitframe(1);
    localplayer = function_27673a7(fieldname);
    if (bwastimejump) {
        if (self.var_4adf3a85 === 1) {
            if (self.var_4adf3a85 !== localplayer.var_4adf3a85) {
                self.var_722de377 = self playloopsound(#"hash_e8812b87d1132a0");
                self.var_b598d563 = self playloopsound(#"hash_4d880266909291e6");
            }
        } else {
            self.var_722de377 = self playloopsound(#"hash_1871946a692288d");
        }
        if (!self function_da43934d()) {
            if (self.var_4adf3a85 === localplayer.var_4adf3a85) {
                self function_9974c822("cmn_teammate_duck");
                self callback::add_entity_callback(#"death", &function_e450e3e1);
            }
        }
        return;
    }
    self.var_f9cc5c06 = 1;
    if (isdefined(self.var_722de377)) {
        self stoploopsound(self.var_722de377);
        self.var_722de377 = undefined;
    }
    if (isdefined(self.var_354f4d95)) {
        self stoploopsound(self.var_354f4d95);
        self.var_354f4d95 = undefined;
    }
}

// Namespace scream/scream
// Params 1, eflags: 0x0
// Checksum 0xd589b201, Offset: 0x1450
// Size: 0x5c
function function_e450e3e1(*params) {
    self function_5dcc74d1("cmn_teammate_duck");
    self callback::function_52ac9652(#"death", &function_e450e3e1);
}

// Namespace scream/scream
// Params 1, eflags: 0x4
// Checksum 0xe9ca6f08, Offset: 0x14b8
// Size: 0x124
function private function_31e861fe(localclientnum) {
    if (codcaster::function_b8fe9b52(localclientnum)) {
        return;
    }
    self endon(#"death");
    waitframe(1);
    self util::waittill_dobj(localclientnum);
    if (!isalive(self) || function_1cbf351b(localclientnum)) {
        return;
    }
    localplayer = function_27673a7(localclientnum);
    localplayer util::waittill_dobj(localclientnum);
    if (self.var_4adf3a85 === 2 && localplayer.var_4adf3a85 === 2) {
        if (!self function_d2503806(#"hash_22fde24969b439e2")) {
            self playrenderoverridebundle(#"hash_22fde24969b439e2");
        }
    }
}

// Namespace scream/scream
// Params 1, eflags: 0x4
// Checksum 0xe048016c, Offset: 0x15e8
// Size: 0x20c
function private function_874de2c1(localclientnum) {
    if (codcaster::function_b8fe9b52(localclientnum)) {
        return;
    }
    self endon(#"death");
    waitframe(1);
    self util::waittill_dobj(localclientnum);
    if (!isalive(self)) {
        return;
    }
    localplayer = function_27673a7(localclientnum);
    localplayer util::waittill_dobj(localclientnum);
    if (self.var_4adf3a85 === 1) {
        if (localplayer.var_4adf3a85 === 2) {
            if (!function_1cbf351b(localclientnum) && !self function_d2503806(#"hash_535cb58381c2c55")) {
                self playrenderoverridebundle(#"hash_535cb58381c2c55");
            }
        } else if (localplayer.var_4adf3a85 === 1) {
            if (!function_1cbf351b(localclientnum) && !self function_d2503806(#"hash_22fde24969b439e2")) {
                self playrenderoverridebundle(#"hash_22fde24969b439e2");
            }
        }
    }
    if (!function_1cbf351b(localclientnum)) {
        playtagfxset(localclientnum, #"hash_41999f768d536636", self);
        playtagfxset(localclientnum, #"hash_73ec7c7e25dbdd22", self);
    }
}

// Namespace scream/scream
// Params 7, eflags: 0x0
// Checksum 0x8df3e3f, Offset: 0x1800
// Size: 0xb4
function function_994883d0(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump && !function_1cbf351b(fieldname)) {
        function_e5a9ae33(fieldname, self getentitynumber(), 20000);
        return;
    }
    function_4236032b(fieldname, self getentitynumber());
}

// Namespace scream/scream
// Params 0, eflags: 0x0
// Checksum 0x74d42e9a, Offset: 0x18c0
// Size: 0x5c
function function_f2817d0c() {
    forcestreambundle(#"hash_3ffcd14aabd4005d");
    forcestreambundle(#"hash_6148cfc4d39c2456");
    forcestreammaterial("mtl_postfx_ghostface_killa");
}

