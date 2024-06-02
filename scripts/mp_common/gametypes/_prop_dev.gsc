// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\bots\bot.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\hud_util_shared.gsc;
#using scripts\core_common\hostmigration_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\killstreaks\mp\killstreaks.gsc;
#using scripts\mp_common\gametypes\prop.gsc;
#using scripts\mp_common\gametypes\spawnlogic.gsc;
#using scripts\mp_common\gametypes\spawning.gsc;
#using scripts\mp_common\gametypes\_prop_controls.gsc;
#using scripts\mp_common\gametypes\globallogic_utils.gsc;
#using scripts\mp_common\gametypes\globallogic_spawn.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using script_1cc417743d7c262d;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\core_common\dogtags.gsc;
#using scripts\mp_common\util.gsc;

#namespace prop_dev;

/#

    // Namespace prop_dev/_prop_dev
    // Params 2, eflags: 0x0
    // Checksum 0x8cf7e011, Offset: 0x118
    // Size: 0x94
    function adddevguicommand(path, var_c669188) {
        pathstr = "<unknown string>" + path + "<unknown string>";
        cmdstr = "<unknown string>" + var_c669188 + "<unknown string>";
        debugcommand = "<unknown string>" + pathstr + "<unknown string>" + cmdstr;
        adddebugcommand(debugcommand);
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0x78ca1207, Offset: 0x1b8
    // Size: 0x185e
    function propdevgui() {
        var_6631295a = 0;
        var_e68b7091 = 0;
        var_28c934a0 = 0;
        var_27e85424 = 0;
        var_e535ed97 = 0;
        var_f4098dd1 = 0;
        var_94dbbfd9 = 0;
        var_b948ae6c = 0;
        minigame_on = getdvarint(#"scr_prop_minigame", 1);
        server_hud = getdvarint(#"scr_ph_useprophudserver", 1);
        var_f6fe53f9 = getdvarfloat(#"player_swimdamage", 10);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 1);
        function_5ac4dc99("<unknown string>", 1);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", 0);
        setdvar(#"hash_4424a07b5272599a", 0);
        setdvar(#"hash_34a3e2c00f7cd27f", 0);
        setdvar(#"hash_3fd977c7de8de72b", 0);
        setdvar(#"hash_5fea18fb5a6e0027", 0);
        setdvar(#"hash_69637702c083dc28", 0);
        setdvar(#"hash_2a03924a528ff9a8", 0);
        setdvar(#"hash_740b6f4a4aa58f21", 0);
        setdvar(#"hash_7115842bdfa67a2b", 0);
        if (getdvarint(#"hash_70c6c4a3e9254926", 0) != 0) {
            adddebugcommand("<unknown string>");
        }
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>" + 4 + "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>" + 0.25 + "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        adddevguicommand("<unknown string>", "<unknown string>");
        while (true) {
            if (is_true(level.prematch_over)) {
                level.allow_teamchange = getdvarint(#"hash_7f436a7b31a003f3", 0);
                level.var_a7997034 = getdvarint(#"hash_4819c54cbad5ed87", 0) != 0;
            }
            if (getdvarint(#"scr_ph_useprophudserver", 0) != server_hud && isdefined(level.players)) {
                server_hud = getdvarint(#"scr_ph_useprophudserver", 0);
                if (!isdefined(level.players[0].changepropkey)) {
                    iprintlnbold("<unknown string>");
                } else {
                    foreach (player in level.players) {
                        if (isdefined(player.team) && player util::isprop()) {
                            player prop_controls::propabilitykeysvisible(server_hud, 1);
                        }
                    }
                    level.elim_hud.alpha = server_hud;
                }
            }
            if (getdvarint(#"hash_2c678eea20875ddd", 0) != var_28c934a0 && isdefined(level.players)) {
                foreach (player in level.players) {
                    if (player util::isprop()) {
                        var_28c934a0 = getdvarint(#"hash_2c678eea20875ddd", 0);
                        player.var_f18a4260 = !is_true(player.var_f18a4260);
                        player iprintlnbold(player.var_f18a4260 ? "<unknown string>" : "<unknown string>");
                    }
                }
            }
            if (getdvarint(#"hash_4aab269ba89e7cb6", 0) != var_27e85424 && isdefined(level.players)) {
                foreach (player in level.players) {
                    if (player util::isprop()) {
                        var_27e85424 = getdvarint(#"hash_4aab269ba89e7cb6", 0);
                        player.var_7ddbf78d = !is_true(player.var_7ddbf78d);
                        player iprintlnbold(player.var_7ddbf78d ? "<unknown string>" : "<unknown string>");
                    }
                }
            }
            if (getdvarint(#"hash_53ee83feb4db4606", 0) != var_e535ed97 && isdefined(level.players)) {
                foreach (player in level.players) {
                    if (player util::isprop()) {
                        var_e535ed97 = getdvarint(#"hash_53ee83feb4db4606", 0);
                        player.var_d0e95c44 = !is_true(player.var_d0e95c44);
                        player iprintlnbold(player.var_d0e95c44 ? "<unknown string>" : "<unknown string>");
                    }
                }
            }
            if (getdvarint(#"hash_62162f1f94cbba77", 0) != var_f4098dd1) {
                var_f4098dd1 = getdvarint(#"hash_62162f1f94cbba77", 0);
                if (var_f4098dd1) {
                    setdvar(#"doublejump_time_before_recharge", 1);
                    setdvar(#"doublejump_time_before_recharge_fast", 1);
                    setdvar(#"playerenergy_restrate", 10000);
                } else {
                    setdvar(#"doublejump_time_before_recharge", 1600);
                    setdvar(#"doublejump_time_before_recharge_fast", 1000);
                    setdvar(#"playerenergy_restrate", 400);
                    iprintlnbold(var_f4098dd1 ? "<unknown string>" : "<unknown string>");
                }
            }
            if (getdvarint(#"hash_618be616410fad95", 0) != var_94dbbfd9 && isdefined(level.players)) {
                foreach (player in level.players) {
                    if (player prop::function_84793f03()) {
                        var_94dbbfd9 = getdvarint(#"hash_618be616410fad95", 0);
                        player.var_8df5658d = !is_true(player.var_8df5658d);
                        player iprintlnbold(player.var_8df5658d ? "<unknown string>" : "<unknown string>");
                    }
                }
            }
            isremoved = getdvarint(#"hash_21d7ba8da36d4023", 0);
            if (isremoved != var_6631295a) {
                var_6631295a = isremoved;
                function_ad983215(!isremoved);
            }
            var_90cd8304 = getdvarint(#"hash_34a3e2c00f7cd27f", 0);
            if (var_90cd8304 != var_e68b7091) {
                var_e68b7091 = var_90cd8304;
                result = function_fd3c3ed0(var_90cd8304);
                if (!result) {
                    var_e68b7091 = !var_90cd8304;
                }
                if (var_e68b7091) {
                    level.drown_damage = 0;
                } else {
                    level.drown_damage = var_f6fe53f9;
                }
            }
            if (getdvarint(#"hash_3fd977c7de8de72b", 0) != 0) {
                function_cb8ecc99();
                setdvar(#"hash_3fd977c7de8de72b", 0);
            }
            if (getdvarint(#"hash_5fea18fb5a6e0027", 0) != 0) {
                function_2b23b2b6();
                setdvar(#"hash_5fea18fb5a6e0027", 0);
            }
            if (getdvarint(#"hash_69637702c083dc28", 0) != 0) {
                function_f2e19297();
                setdvar(#"hash_69637702c083dc28", 0);
            }
            if (getdvarint(#"hash_7115842bdfa67a2b", 0) != 0) {
                if (isdefined(level.players) && isdefined(level.players[0])) {
                    level thread prop::function_c4aeb146(#"score_last_alive", level.players[0]);
                }
                setdvar(#"hash_7115842bdfa67a2b", 0);
            }
            if (getdvarint(#"hash_34e9a7fac83d28a6", 0) != 0) {
                function_ad8cc361();
            }
            if (getdvarint(#"hash_7b2608d6176b79f4", 0)) {
                function_38964c72();
            }
            if (getdvarint(#"hash_4424a07b5272599a", 0) != 0) {
                function_89b4b4c();
                setdvar(#"hash_4424a07b5272599a", 0);
            }
            if (getdvarint(#"hash_84008139ad85e21", 0) != 0) {
                if (isdefined(level.players) && isdefined(level.players[0])) {
                    level.players[0] prop_controls::canlock();
                }
            }
            if (getdvarint(#"hash_2fa05819a4eeb99b", 0) != 0 || getdvarint(#"hash_84008139ad85e21", 0) != 0) {
                function_1f3923fa();
            }
            if (getdvarint(#"hash_2a03924a528ff9a8", 0) != 0) {
                function_5e0d41c4();
                setdvar(#"hash_2a03924a528ff9a8", 0);
            }
            if (getdvarint(#"hash_740b6f4a4aa58f21", 0) != 0) {
                function_5646cd5c();
                setdvar(#"hash_740b6f4a4aa58f21", 0);
            }
            if (getdvarint(#"hash_2441330d88677536", 0) != 0 && isdefined(level.players)) {
                level notify(#"cancelcountdown");
                setdvar(#"hash_2441330d88677536", 0);
            }
            if (getdvarint(#"hash_7da18bcec6fafe7f", 0) != 0) {
                function_34a7562e();
            }
            if (getdvarint(#"hash_745b5ef88dd291e1", 0) != 0) {
                showplayers();
            }
            if (getdvarint(#"hash_3c0e90252ca92099", 0) != 0) {
                showtargets();
            }
            if (getdvarint(#"scr_prop_minigame", 1) != minigame_on && isdefined(level.players) && level.players.size > 0) {
                minigame_on = getdvarint(#"scr_prop_minigame", 1);
                iprintlnbold(minigame_on ? "<unknown string>" : "<unknown string>");
            }
            if (getdvarint(#"hash_6132db0becb8f98", 0) != var_b948ae6c && isdefined(level.players) && level.players.size > 0) {
                var_b948ae6c = getdvarint(#"hash_6132db0becb8f98", 0);
                if (var_b948ae6c == 2) {
                    iprintlnbold("<unknown string>");
                } else if (var_b948ae6c == 1) {
                    iprintlnbold("<unknown string>");
                } else {
                    iprintlnbold("<unknown string>");
                }
            }
            waitframe(1);
        }
    }

    // Namespace prop_dev/_prop_dev
    // Params 1, eflags: 0x0
    // Checksum 0x466d28b, Offset: 0x1a20
    // Size: 0xf4
    function function_ad983215(enabled) {
        setdvar(#"com_statmon", enabled);
        setdvar(#"con_minicon", enabled);
        setdvar(#"cg_drawfps", enabled);
        setdvar(#"cg_drawtime", enabled);
        setdvar(#"cg_drawviewpos", enabled);
        setdvar(#"hash_173fd7265ae0b7b1", enabled);
        setdvar(#"hash_2d3acd259cd6aca6", enabled);
    }

    // Namespace prop_dev/_prop_dev
    // Params 1, eflags: 0x0
    // Checksum 0x62438ee6, Offset: 0x1b20
    // Size: 0xda
    function function_fd3c3ed0(enabled) {
        if (!isdefined(level.players) || level.players.size == 0) {
            return 0;
        }
        player = level.players[0];
        if (!isdefined(player) || !isalive(player) || isdefined(player.placementoffset) || !isdefined(player.prop)) {
            return 0;
        }
        if (enabled) {
            player function_673195f3();
        } else {
            player function_401f47cd();
        }
        return 1;
    }

    // Namespace prop_dev/_prop_dev
    // Params 5, eflags: 0x0
    // Checksum 0xe5ebb063, Offset: 0x1c08
    // Size: 0x78
    function function_9cd2eb63(color, label, value, text, var_e1fb743e) {
        hudelem = prop_controls::addupperrighthudelem(label, value, text, var_e1fb743e);
        hudelem.alpha = 0.5;
        hudelem.color = color;
        return hudelem;
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0x5108df96, Offset: 0x1c88
    // Size: 0x1c4
    function function_673195f3() {
        self prop_controls::cleanuppropcontrolshud();
        self prop_controls::function_1e25f968();
        if (self issplitscreen()) {
            self.currenthudy = -10;
        } else {
            self.currenthudy = -80;
        }
        self.var_5f51d2ee = function_1eca597a(self.prop.info.modelname);
        white = (1, 1, 1);
        red = (1, 0, 0);
        green = (0, 1, 0);
        blue = (0, 0.5, 1);
        self.var_28df7051 = array(self.placementmodel, self.var_3634d14e, self.var_a2614669, self.var_5ee5df03, self.var_66df6677, self.var_ec9a93, self.var_811d1afa, self.var_d7336ed8, self.var_334e2710, self.var_faa235b5, self.var_35eb52f1, self.var_a2f59097);
        self.placementindex = 0;
        self function_8d3ffd86();
        self thread function_c3c92269();
        self thread function_4a5dac11();
        self thread function_1e509052();
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0x253fe1, Offset: 0x1e58
    // Size: 0x184
    function function_401f47cd() {
        self notify(#"hash_3ecc0277d544b441");
        prop_controls::safedestroy(self.placementmodel);
        prop_controls::safedestroy(self.var_3634d14e);
        prop_controls::safedestroy(self.var_a2614669);
        prop_controls::safedestroy(self.var_5ee5df03);
        prop_controls::safedestroy(self.var_66df6677);
        prop_controls::safedestroy(self.var_ec9a93);
        prop_controls::safedestroy(self.var_811d1afa);
        prop_controls::safedestroy(self.var_d7336ed8);
        prop_controls::safedestroy(self.var_334e2710);
        prop_controls::safedestroy(self.var_faa235b5);
        prop_controls::safedestroy(self.var_35eb52f1);
        prop_controls::safedestroy(self.var_a2f59097);
        self function_cc5afb75();
        self prop_controls::propcontrolshud();
        self prop_controls::setupkeybindings();
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0xae98ac8, Offset: 0x1fe8
    // Size: 0x6c
    function function_1e509052() {
        self endon(#"game_ended", #"disconnect", #"hash_3ecc0277d544b441");
        self waittill(#"death");
        setdvar(#"hash_34a3e2c00f7cd27f", 0);
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0xb3c47ba, Offset: 0x2060
    // Size: 0xae
    function function_c3c92269() {
        self endon(#"hash_3ecc0277d544b441");
        while (true) {
            debugaxis(self.origin, self.angles, 100, 1, 0, 1);
            box(self.origin, self getmins(), self getmaxs(), self.angles[1], (1, 0, 1), 1, 0, 1);
            waitframe(1);
        }
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0xbf6755e1, Offset: 0x2118
    // Size: 0x1a8
    function function_4a5dac11() {
        self endon(#"hash_3ecc0277d544b441");
        self function_ea8e45a8(0);
        while (true) {
            waitresult = self waittill(#"up", #"down", #"left", #"right", #"shot");
            msg = waitresult._notify;
            if (!isdefined(msg)) {
                continue;
            }
            if (msg == "<unknown string>") {
                self function_92f23bcd(-1);
                continue;
            }
            if (msg == "<unknown string>") {
                self function_92f23bcd(1);
                continue;
            }
            if (msg == "<unknown string>") {
                self function_cdf89a29(1);
                continue;
            }
            if (msg == "<unknown string>") {
                self function_cdf89a29(-1);
                continue;
            }
            if (msg == "<unknown string>") {
                function_77511c75();
            }
        }
    }

    // Namespace prop_dev/_prop_dev
    // Params 1, eflags: 0x0
    // Checksum 0xe45874d0, Offset: 0x22c8
    // Size: 0x68
    function function_92f23bcd(val) {
        self endon(#"letgo");
        function_ea8e45a8(val);
        wait(0.5);
        while (true) {
            function_ea8e45a8(val);
            wait(0.05);
        }
    }

    // Namespace prop_dev/_prop_dev
    // Params 1, eflags: 0x0
    // Checksum 0x54e1f1f7, Offset: 0x2338
    // Size: 0xde
    function function_ea8e45a8(val) {
        hudelem = self.var_28df7051[self.placementindex];
        hudelem.alpha = 0.5;
        hudelem.fontscale = 1;
        self.placementindex += val;
        if (self.placementindex >= self.var_28df7051.size) {
            self.placementindex = 0;
        } else if (self.placementindex < 0) {
            self.placementindex = self.var_28df7051.size - 1;
        }
        hudelem = self.var_28df7051[self.placementindex];
        hudelem.alpha = 1;
        hudelem.fontscale = 1.3;
    }

    // Namespace prop_dev/_prop_dev
    // Params 1, eflags: 0x0
    // Checksum 0x40836b48, Offset: 0x2420
    // Size: 0x68
    function function_cdf89a29(val) {
        self endon(#"letgo");
        function_75154360(val);
        wait(0.05);
        while (true) {
            function_75154360(val);
            wait(0.05);
        }
    }

    // Namespace prop_dev/_prop_dev
    // Params 1, eflags: 0x0
    // Checksum 0x70feaab6, Offset: 0x2490
    // Size: 0x72
    function function_5ee4d3a8(inval) {
        tempindex = self.var_5f51d2ee + inval;
        if (tempindex >= level.propindex.size) {
            tempindex = 0;
        } else if (tempindex < 0) {
            tempindex = level.propindex.size - 1;
        }
        self.var_5f51d2ee = tempindex;
    }

    // Namespace prop_dev/_prop_dev
    // Params 1, eflags: 0x0
    // Checksum 0x8541e5ae, Offset: 0x2510
    // Size: 0x86
    function function_1eca597a(var_8ba3b403) {
                for (index = 0; index < level.propindex.size; index++) {
            if (level.proplist[level.propindex[index][0]][level.propindex[index][1]].modelname == var_8ba3b403) {
                return index;
            }
        }
    }

    // Namespace prop_dev/_prop_dev
    // Params 1, eflags: 0x0
    // Checksum 0x1ba580e2, Offset: 0x25a0
    // Size: 0xed4
    function function_75154360(val) {
        hudelem = self.var_28df7051[self.placementindex];
        if (hudelem == self.placementmodel) {
            function_5ee4d3a8(val);
            self.prop.info = level.proplist[level.propindex[self.var_5f51d2ee][0]][level.propindex[self.var_5f51d2ee][1]];
            prop_controls::propchangeto(self.prop.info);
            self.placementmodel settext("<unknown string>" + self.var_5f51d2ee + "<unknown string>" + self.prop.info.modelname);
            self.var_3634d14e settext("<unknown string>" + self.prop.info.propsizetext);
            self.var_a2614669 setvalue(self.prop.info.propsize);
            self.var_5ee5df03 setvalue(self.prop.info.propscale);
            self.var_66df6677 setvalue(self.prop.info.xyzoffset[0]);
            self.var_ec9a93 setvalue(self.prop.info.xyzoffset[1]);
            self.var_811d1afa setvalue(self.prop.info.xyzoffset[2]);
            self.var_d7336ed8 setvalue(self.prop.info.anglesoffset[0]);
            self.var_334e2710 setvalue(self.prop.info.anglesoffset[1]);
            self.var_faa235b5 setvalue(self.prop.info.anglesoffset[2]);
            self.var_35eb52f1 setvalue(self.prop.info.propheight);
            self.var_a2f59097 setvalue(self.prop.info.proprange);
            return;
        }
        if (hudelem == self.var_3634d14e || hudelem == self.var_a2614669) {
            sizes = array("<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>");
            index = 0;
            for (i = 0; i < sizes.size; i++) {
                if (sizes[i] == self.prop.info.propsizetext) {
                    index = i;
                    break;
                }
            }
            index += val;
            if (index < 0) {
                index = sizes.size - 1;
            } else if (index >= sizes.size) {
                index = 0;
            }
            self.prop.info.propsizetext = sizes[index];
            self.prop.info.propsize = prop::getpropsize(self.prop.info.propsizetext);
            self.var_3634d14e settext("<unknown string>" + self.prop.info.propsizetext);
            self.var_a2614669 setvalue(self.prop.info.propsize);
            self.health = self.prop.info.propsize;
            self.maxhealth = self.health;
            return;
        }
        if (hudelem == self.var_5ee5df03) {
            var_dfa19677 = 0.1;
            var_34b4cc47 = 10;
            var_59913b42 = 0.01;
            self.prop.info.propscale += var_59913b42 * val;
            self.prop.info.propscale = math::clamp(self.prop.info.propscale, var_dfa19677, var_34b4cc47);
            self.prop setscale(self.prop.info.propscale);
            self.var_5ee5df03 setvalue(self.prop.info.propscale);
            return;
        }
        if (hudelem == self.var_66df6677) {
            self.prop unlink();
            self.prop.info.xyzoffset = (self.prop.info.xyzoffset[0] + val, self.prop.info.xyzoffset[1], self.prop.info.xyzoffset[2]);
            self.prop.xyzoffset = self.prop.info.xyzoffset;
            self.var_66df6677 setvalue(self.prop.info.xyzoffset[0]);
            function_c2ab2206();
            return;
        }
        if (hudelem == self.var_ec9a93) {
            self.prop unlink();
            self.prop.info.xyzoffset = (self.prop.info.xyzoffset[0], self.prop.info.xyzoffset[1] + val, self.prop.info.xyzoffset[2]);
            self.prop.xyzoffset = self.prop.info.xyzoffset;
            self.var_ec9a93 setvalue(self.prop.info.xyzoffset[1]);
            function_c2ab2206();
            return;
        }
        if (hudelem == self.var_811d1afa) {
            self.prop unlink();
            self.prop.info.xyzoffset = (self.prop.info.xyzoffset[0], self.prop.info.xyzoffset[1], self.prop.info.xyzoffset[2] + val);
            self.prop.xyzoffset = self.prop.info.xyzoffset;
            self.var_811d1afa setvalue(self.prop.info.xyzoffset[2]);
            function_c2ab2206();
            return;
        }
        if (hudelem == self.var_d7336ed8) {
            self.prop unlink();
            self.prop.info.anglesoffset = (self.prop.info.anglesoffset[0] + val, self.prop.info.anglesoffset[1], self.prop.info.anglesoffset[2]);
            self.prop.anglesoffset = self.prop.info.anglesoffset;
            self.var_d7336ed8 setvalue(self.prop.info.anglesoffset[0]);
            function_c2ab2206();
            return;
        }
        if (hudelem == self.var_334e2710) {
            self.prop unlink();
            self.prop.info.anglesoffset = (self.prop.info.anglesoffset[0], self.prop.info.anglesoffset[1] + val, self.prop.info.anglesoffset[2]);
            self.prop.anglesoffset = self.prop.info.anglesoffset;
            self.var_334e2710 setvalue(self.prop.info.anglesoffset[1]);
            function_c2ab2206();
            return;
        }
        if (hudelem == self.var_faa235b5) {
            self.prop unlink();
            self.prop.info.anglesoffset = (self.prop.info.anglesoffset[0], self.prop.info.anglesoffset[1], self.prop.info.anglesoffset[2] + val);
            self.prop.anglesoffset = self.prop.info.anglesoffset;
            self.var_faa235b5 setvalue(self.prop.info.anglesoffset[2]);
            function_c2ab2206();
            return;
        }
        if (hudelem == self.var_35eb52f1) {
            adjust = 10;
            self.prop.info.propheight += adjust * val;
            self.prop.info.propheight = math::clamp(self.prop.info.propheight, -30, 40);
            self.thirdpersonheightoffset = self.prop.info.propheight;
            self setclientthirdperson(1);
            self.var_35eb52f1 setvalue(self.prop.info.propheight);
            return;
        }
        if (hudelem == self.var_a2f59097) {
            adjust = 10;
            self.prop.info.proprange += adjust * val;
            self.prop.info.proprange = math::clamp(self.prop.info.proprange, 50, 360);
            self.thirdpersonrange = self.prop.info.proprange;
            self setclientthirdperson(1);
            self.var_a2f59097 setvalue(self.prop.info.proprange);
        }
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0x82fae659, Offset: 0x3480
    // Size: 0x74
    function function_c2ab2206() {
        self.prop.origin = self.propent.origin;
        self prop::applyxyzoffset();
        self prop::applyanglesoffset();
        self.prop linkto(self.propent);
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0xca398533, Offset: 0x3500
    // Size: 0x1e4
    function function_8d3ffd86() {
        self prop_controls::notifyonplayercommand("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommand("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommand("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommand("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommand("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommand("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommand("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommand("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommand("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommand("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommand("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommand("<unknown string>", "<unknown string>");
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0xb2d80fbe, Offset: 0x36f0
    // Size: 0x1e4
    function function_cc5afb75() {
        self prop_controls::notifyonplayercommandremove("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommandremove("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommandremove("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommandremove("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommandremove("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommandremove("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommandremove("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommandremove("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommandremove("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommandremove("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommandremove("<unknown string>", "<unknown string>");
        self prop_controls::notifyonplayercommandremove("<unknown string>", "<unknown string>");
    }

    // Namespace prop_dev/_prop_dev
    // Params 1, eflags: 0x0
    // Checksum 0xd1b145e, Offset: 0x38e0
    // Size: 0x4a
    function function_cbef3d63(vec) {
        return isdefined(vec) && (vec[0] != 0 || vec[1] != 0 || vec[2] != 0);
    }

    // Namespace prop_dev/_prop_dev
    // Params 1, eflags: 0x0
    // Checksum 0x74231de2, Offset: 0x3938
    // Size: 0x48
    function function_a840713e(propinfo) {
        return isdefined(propinfo.propheight) && propinfo.propheight != prop::getthirdpersonheightoffsetforsize(propinfo.propsize);
    }

    // Namespace prop_dev/_prop_dev
    // Params 1, eflags: 0x0
    // Checksum 0xca8358eb, Offset: 0x3988
    // Size: 0x48
    function function_7a3672a6(propinfo) {
        return isdefined(propinfo.proprange) && propinfo.proprange != prop::getthirdpersonrangeforsize(propinfo.propsize);
    }

    // Namespace prop_dev/_prop_dev
    // Params 2, eflags: 0x0
    // Checksum 0xc8785608, Offset: 0x39d8
    // Size: 0x24c
    function function_2dc5c497(file, propinfo) {
        propstr = "<unknown string>" + propinfo.modelname + "<unknown string>" + propinfo.propsizetext + "<unknown string>" + propinfo.propscale;
        if (function_cbef3d63(propinfo.xyzoffset)) {
            propstr += "<unknown string>" + propinfo.xyzoffset[0] + "<unknown string>" + propinfo.xyzoffset[1] + "<unknown string>" + propinfo.xyzoffset[2];
        } else {
            propstr += "<unknown string>";
        }
        if (function_cbef3d63(propinfo.anglesoffset)) {
            propstr += "<unknown string>" + propinfo.anglesoffset[0] + "<unknown string>" + propinfo.anglesoffset[1] + "<unknown string>" + propinfo.anglesoffset[2];
        } else {
            propstr += "<unknown string>";
        }
        if (function_a840713e(propinfo)) {
            propstr += "<unknown string>" + propinfo.propheight;
        } else {
            propstr += "<unknown string>" + prop::getthirdpersonheightoffsetforsize(propinfo.propsize);
        }
        if (function_7a3672a6(propinfo)) {
            propstr += "<unknown string>" + propinfo.proprange;
        } else {
            propstr += "<unknown string>" + prop::getthirdpersonrangeforsize(propinfo.propsize);
        }
        fprintln(file, propstr);
    }

    // Namespace prop_dev/_prop_dev
    // Params 2, eflags: 0x0
    // Checksum 0x39a210ac, Offset: 0x3c30
    // Size: 0x54
    function function_8639a7b0(file, propinfo) {
        propstr = "<unknown string>" + propinfo.modelname + "<unknown string>";
        fprintln(file, propstr);
    }

    // Namespace prop_dev/_prop_dev
    // Params 2, eflags: 0x0
    // Checksum 0xf98fb457, Offset: 0x3c90
    // Size: 0x124
    function function_62b9b9ac(file, propsizetext) {
        foreach (sizetype in level.proplist) {
            foreach (propinfo in sizetype) {
                if (propinfo.propsizetext == propsizetext) {
                    function_2dc5c497(file, propinfo);
                }
            }
        }
    }

    // Namespace prop_dev/_prop_dev
    // Params 2, eflags: 0x0
    // Checksum 0xe6999ddc, Offset: 0x3dc0
    // Size: 0x124
    function plaza_dom_point_neutral_b_secured(file, propsizetext) {
        foreach (sizetype in level.proplist) {
            foreach (propinfo in sizetype) {
                if (propinfo.propsizetext == propsizetext) {
                    function_8639a7b0(file, propinfo);
                }
            }
        }
    }

    // Namespace prop_dev/_prop_dev
    // Params 2, eflags: 0x0
    // Checksum 0x48688aac, Offset: 0x3ef0
    // Size: 0x314
    function function_79d57521(file, var_7723a9cd) {
        var_7e52c89c = var_7723a9cd + "<unknown string>";
        var_44c49e4e = var_7723a9cd + "<unknown string>";
        var_473e8b8d = var_7723a9cd + "<unknown string>";
        var_ca180226 = level.script + "<unknown string>";
        var_19494914 = level.script + "<unknown string>";
        var_155d523d = "<unknown string>";
        var_7770e500 = "<unknown string>";
        var_d6ade535 = "<unknown string>";
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>" + var_7e52c89c + "<unknown string>");
        fprintln(file, "<unknown string>" + var_44c49e4e + "<unknown string>");
        fprintln(file, "<unknown string>" + var_473e8b8d + "<unknown string>" + var_155d523d);
        fprintln(file, "<unknown string>" + var_7e52c89c + "<unknown string>" + var_d6ade535);
        fprintln(file, "<unknown string>" + var_44c49e4e + "<unknown string>" + var_7770e500);
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>" + var_ca180226 + "<unknown string>" + var_7723a9cd);
        fprintln(file, "<unknown string>" + var_19494914 + "<unknown string>" + var_44c49e4e + "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0xcd92a02d, Offset: 0x4210
    // Size: 0x3ac
    function function_cb8ecc99() {
        platform = "<unknown string>";
        if (level.orbis) {
            platform = "<unknown string>";
        } else if (level.durango) {
            platform = "<unknown string>";
        }
        var_7723a9cd = level.script + "<unknown string>";
        var_7e52c89c = var_7723a9cd + "<unknown string>";
        var_b522696f = "<unknown string>" + platform + "<unknown string>";
        var_d6ade535 = "<unknown string>";
        file = openfile(var_7e52c89c, "<unknown string>");
        if (file == -1) {
            iprintlnbold("<unknown string>" + var_b522696f + var_7e52c89c + "<unknown string>");
            println("<unknown string>" + var_b522696f + var_7e52c89c + "<unknown string>");
            return;
        }
        function_79d57521(file, var_7723a9cd);
        fprintln(file, "<unknown string>");
        function_62b9b9ac(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        function_62b9b9ac(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        function_62b9b9ac(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        function_62b9b9ac(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        function_62b9b9ac(file, "<unknown string>");
        iprintlnbold("<unknown string>" + var_b522696f + var_7e52c89c + "<unknown string>" + var_d6ade535);
        println("<unknown string>" + var_b522696f + var_7e52c89c + "<unknown string>" + var_d6ade535);
        closefile(file);
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0x8abd050b, Offset: 0x45c8
    // Size: 0x394
    function function_2b23b2b6() {
        platform = "<unknown string>";
        if (level.orbis) {
            platform = "<unknown string>";
        } else if (level.durango) {
            platform = "<unknown string>";
        }
        var_7723a9cd = level.script + "<unknown string>";
        var_7e52c89c = var_7723a9cd + "<unknown string>";
        var_b522696f = "<unknown string>" + platform + "<unknown string>";
        var_d6ade535 = "<unknown string>";
        file = openfile(var_7e52c89c, "<unknown string>");
        if (file == -1) {
            iprintlnbold("<unknown string>" + var_b522696f + var_7e52c89c + "<unknown string>");
            println("<unknown string>" + var_b522696f + var_7e52c89c + "<unknown string>");
            return;
        }
        fprintln(file, "<unknown string>");
        plaza_dom_point_neutral_b_secured(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        plaza_dom_point_neutral_b_secured(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        plaza_dom_point_neutral_b_secured(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        plaza_dom_point_neutral_b_secured(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        plaza_dom_point_neutral_b_secured(file, "<unknown string>");
        iprintlnbold("<unknown string>" + var_b522696f + var_7e52c89c + "<unknown string>" + var_d6ade535);
        println("<unknown string>" + var_b522696f + var_7e52c89c + "<unknown string>" + var_d6ade535);
        closefile(file);
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0xa1070e86, Offset: 0x4968
    // Size: 0xc34
    function function_f2e19297() {
        platform = "<unknown string>";
        if (level.orbis) {
            platform = "<unknown string>";
        } else if (level.durango) {
            platform = "<unknown string>";
        }
        var_7723a9cd = level.script + "<unknown string>";
        var_7e52c89c = var_7723a9cd + "<unknown string>";
        var_44c49e4e = var_7723a9cd + "<unknown string>";
        var_473e8b8d = var_7723a9cd + "<unknown string>";
        var_ca180226 = level.script + "<unknown string>";
        var_19494914 = level.script + "<unknown string>";
        var_b522696f = "<unknown string>" + platform + "<unknown string>";
        var_155d523d = "<unknown string>";
        var_7770e500 = "<unknown string>";
        var_d6ade535 = "<unknown string>";
        file = openfile(var_7e52c89c, "<unknown string>");
        if (file == -1) {
            iprintlnbold("<unknown string>" + var_b522696f + var_7e52c89c + "<unknown string>");
            println("<unknown string>" + var_b522696f + var_7e52c89c + "<unknown string>");
            return;
        }
        function_79d57521(file, var_7723a9cd);
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        closefile(file);
        file = openfile(var_44c49e4e, "<unknown string>");
        if (file == -1) {
            iprintlnbold("<unknown string>" + var_b522696f + var_44c49e4e + "<unknown string>");
            println("<unknown string>" + var_b522696f + var_44c49e4e + "<unknown string>");
            return;
        }
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        closefile(file);
        file = openfile(var_473e8b8d, "<unknown string>");
        if (file == -1) {
            iprintlnbold("<unknown string>" + var_b522696f + var_473e8b8d + "<unknown string>");
            println("<unknown string>" + var_b522696f + var_473e8b8d + "<unknown string>");
            return;
        }
        fprintln(file, "<unknown string>" + var_7e52c89c);
        fprintln(file, "<unknown string>" + var_44c49e4e);
        closefile(file);
        iprintlnbold("<unknown string>" + var_b522696f);
        println("<unknown string>" + var_b522696f);
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0x1906358, Offset: 0x55a8
    // Size: 0x35e
    function function_77511c75() {
        player = level.players[0];
        if (!isdefined(player) || !isalive(player) || !is_true(player.hasspawned)) {
            return;
        }
        if (isdefined(level.players[1])) {
            enemybot = level.players[1];
        } else {
            enemybot = bot::add_bot(util::getotherteam(player.team));
            enemybot.ignoreall = 1;
            enemybot bot::function_bab12815(enemybot.origin);
        }
        if (!isdefined(enemybot.pers[#"participation"])) {
            enemybot.pers[#"participation"] = 0;
        }
        if (!isdefined(enemybot.hits)) {
            enemybot.hits = 0;
        }
        player.health = player.maxhealth;
        weapon = getweapon("<unknown string>");
        end = player.origin;
        dir = anglestoforward(player.angles);
        start = end + dir * 100 + (0, 0, 30);
        magicbullet(weapon, start, end, enemybot);
        dirback = -1 * dir;
        start = end + dirback * 100 + (0, 0, 30);
        magicbullet(weapon, start, end, enemybot);
        dirright = anglestoright(player.angles);
        start = end + dirright * 100 + (0, 0, 30);
        magicbullet(weapon, start, end, enemybot);
        dirleft = -1 * dirright;
        start = end + dirleft * 100 + (0, 0, 30);
        magicbullet(weapon, start, end, enemybot);
        start = end + (0, 0, 100);
        magicbullet(weapon, start, end, enemybot);
        player waittilltimeout(0.3, #"damage");
        wait(0.05);
        player.health = player.maxhealth;
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0x88638f42, Offset: 0x5910
    // Size: 0xf8
    function function_ad8cc361() {
        if (!isdefined(level.players)) {
            return;
        }
        foreach (player in level.players) {
            if (isdefined(player) && isdefined(player.team) && player.team == game.defenders) {
                print3d(player.origin + (0, 0, 50), "<unknown string>" + player.health);
            }
        }
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0x1395dfd1, Offset: 0x5a10
    // Size: 0x120
    function function_34a7562e() {
        if (!isdefined(level.players)) {
            return;
        }
        foreach (player in level.players) {
            velocity = player getvelocity();
            var_a79358cf = (velocity[0], velocity[1], 0);
            speed = length(var_a79358cf);
            print3d(player.origin + (0, 0, 50), "<unknown string>" + speed);
        }
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0x2e6eec58, Offset: 0x5b38
    // Size: 0xc8
    function function_38964c72() {
        if (!isdefined(level.players)) {
            return;
        }
        foreach (player in level.players) {
            if (isdefined(player) && isdefined(player.prop)) {
                player prop_controls::get_ground_normal(player.prop, 1);
            }
        }
    }

    // Namespace prop_dev/_prop_dev
    // Params 3, eflags: 0x0
    // Checksum 0x2d88b842, Offset: 0x5c08
    // Size: 0x294
    function function_ed0598d(propinfo, origin, angles) {
        propent = spawn("<unknown string>", origin);
        propent setcontents(0);
        propent notsolid();
        propent setplayercollision(0);
        prop = spawn("<unknown string>", propent.origin);
        prop.angles = angles;
        prop setmodel(propinfo.modelname);
        prop setscale(propinfo.propscale);
        prop setcandamage(1);
        prop.xyzoffset = propinfo.xyzoffset;
        prop.anglesoffset = propinfo.anglesoffset;
        prop.health = 1;
        prop setplayercollision(0);
        forward = anglestoforward(angles) * prop.xyzoffset[0];
        right = anglestoright(angles) * prop.xyzoffset[1];
        up = anglestoup(angles) * prop.xyzoffset[2];
        prop.origin += forward;
        prop.origin += right;
        prop.origin += up;
        prop.angles += prop.anglesoffset;
        prop linkto(propent);
        propent.prop = prop;
        propent.propinfo = propinfo;
        return propent;
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0xca37d1b6, Offset: 0x5ea8
    // Size: 0x29c
    function function_89b4b4c() {
        player = level.players[0];
        angles = player.angles;
        dir = anglestoforward(angles);
        startorigin = player.origin + (0, 0, 100);
        origin = startorigin;
        if (!isdefined(level.var_98714fa7)) {
            level.var_98714fa7 = [];
            foreach (category in level.proplist) {
                foreach (propinfo in category) {
                    level.var_98714fa7[level.var_98714fa7.size] = function_ed0598d(propinfo, origin, angles);
                    origin += dir * 60;
                }
            }
        } else {
            level notify(#"hash_23283189fad4c217");
            foreach (propent in level.var_98714fa7) {
                propent.origin = origin;
                origin += dir * 60;
            }
        }
        level thread function_bd50e1aa(startorigin, dir, 60, level.var_98714fa7.size);
    }

    // Namespace prop_dev/_prop_dev
    // Params 4, eflags: 0x0
    // Checksum 0xf015f154, Offset: 0x6150
    // Size: 0x13e
    function function_bd50e1aa(startorigin, fwd, var_54290641, var_aba10381) {
        level endon(#"hash_23283189fad4c217");
        var_610d90b1 = fwd * var_54290641;
        left = (fwd[1] * -1, fwd[0], 0);
        leftoffset = left * var_54290641;
        upoffset = (0, 0, 1) * var_54290641;
        while (true) {
            origin = startorigin;
            for (i = 0; i < var_aba10381; i++) {
                line(origin, origin + leftoffset, (0, 1, 0));
                line(origin, origin + upoffset, (0, 0, 1));
                origin += var_610d90b1;
            }
            line(startorigin, origin, (1, 0, 0));
            waitframe(1);
        }
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0x1485328d, Offset: 0x6298
    // Size: 0x344
    function function_1f3923fa() {
        if (!isdefined(level.var_f8f7808e)) {
            return;
        }
        color = (0, 1, 0);
        if (!level.var_f8f7808e.success) {
            color = (1, 0, 0);
        }
        print3d(level.var_f8f7808e.playerorg + (0, 0, 50), level.var_f8f7808e.type);
        box(level.var_f8f7808e.playerorg, level.var_f8f7808e.playermins, level.var_f8f7808e.playermaxs, level.var_f8f7808e.playerangles[1], color);
        if (isdefined(level.var_f8f7808e.origin1)) {
            sphere(level.var_f8f7808e.origin1, 5, color);
            line(level.var_f8f7808e.playerorg, level.var_f8f7808e.origin1);
            if (isdefined(level.var_f8f7808e.text1)) {
                print3d(level.var_f8f7808e.origin1 + (0, 0, -10), level.var_f8f7808e.text1);
            }
        }
        if (isdefined(level.var_f8f7808e.origin2)) {
            sphere(level.var_f8f7808e.origin2, 5, color);
            line(level.var_f8f7808e.playerorg, level.var_f8f7808e.origin2);
            if (isdefined(level.var_f8f7808e.text2)) {
                print3d(level.var_f8f7808e.origin2 + (0, 0, 10), level.var_f8f7808e.text2);
            }
        }
        if (isdefined(level.var_f8f7808e.origin3)) {
            sphere(level.var_f8f7808e.origin3, 5, color);
            line(level.var_f8f7808e.playerorg, level.var_f8f7808e.origin3);
            if (isdefined(level.var_f8f7808e.text3)) {
                print3d(level.var_f8f7808e.origin3 + (0, 0, 30), level.var_f8f7808e.text3);
            }
        }
    }

    // Namespace prop_dev/_prop_dev
    // Params 4, eflags: 0x0
    // Checksum 0x290901e4, Offset: 0x65e8
    // Size: 0x15c
    function function_cded003e(propinfo, origin, angles, team) {
        var_6e55957c = spawn("<unknown string>", origin);
        var_6e55957c.targetname = "<unknown string>";
        var_6e55957c setmodel(propinfo.modelname);
        var_6e55957c setscale(propinfo.propscale);
        var_6e55957c.angles = angles;
        var_6e55957c setcandamage(1);
        var_6e55957c.fakehealth = 50;
        var_6e55957c.health = 99999;
        var_6e55957c.maxhealth = 99999;
        var_6e55957c thread prop::function_aa8db165(&prop_controls::damageclonewatch);
        var_6e55957c setplayercollision(0);
        var_6e55957c makesentient();
        var_6e55957c setteam(team);
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0x4e081dd0, Offset: 0x6750
    // Size: 0x250
    function function_5646cd5c() {
        player = level.players[0];
        angles = player.angles;
        dir = anglestoforward(angles);
        origin = player.origin + (0, 0, 100);
        if (isdefined(level.var_2ebdcb74)) {
            foreach (clone in level.var_2ebdcb74) {
                clone prop_controls::function_d1a1cc8d();
            }
        }
        level.var_2ebdcb74 = [];
        foreach (category in level.proplist) {
            foreach (propinfo in category) {
                level.var_2ebdcb74[level.var_2ebdcb74.size] = function_cded003e(propinfo, origin, angles, util::getotherteam(player.team));
                origin += dir * 60;
            }
        }
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0x995de327, Offset: 0x69a8
    // Size: 0x100
    function function_5e0d41c4() {
        player = level.players[0];
        angles = player.angles;
        dir = anglestoforward(angles);
        origin = player.origin + dir * (0, 0, 100);
        propinfo = prop::getnextprop(player);
        if (!isdefined(level.var_2ebdcb74)) {
            level.var_2ebdcb74 = [];
        }
        level.var_2ebdcb74[level.var_2ebdcb74.size] = function_cded003e(propinfo, origin, angles, util::getotherteam(player.team));
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0x51c86f38, Offset: 0x6ab0
    // Size: 0xe8
    function showplayers() {
        if (!isdefined(level.players)) {
            return;
        }
        foreach (player in level.players) {
            box(player.origin, player getmins(), player getmaxs(), player.angles[1], (1, 0, 1), 1, 0, 1);
        }
    }

    // Namespace prop_dev/_prop_dev
    // Params 0, eflags: 0x0
    // Checksum 0x30acee3e, Offset: 0x6ba0
    // Size: 0xd4
    function showtargets() {
        if (!isdefined(level.var_1103f74e) || !isdefined(level.var_1103f74e.targets)) {
            return;
        }
        for (i = 0; i < level.var_1103f74e.targets.size; i++) {
            target = level.var_1103f74e.targets[i];
            if (isdefined(target)) {
                print3d(target.origin + (0, 0, 30), "<unknown string>" + target.fakehealth);
            }
        }
    }

#/
