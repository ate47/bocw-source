// Atian COD Tools GSC CW decompiler test
#using script_4a04e1760d0523d3;
#using scripts\core_common\postfx_shared.csc;
#using script_13da4e6b98ca81a1;
#using scripts\core_common\callbacks_shared.csc;
#using script_401d77c41b3c6f39;
#using script_6e7c13e89a2e0e81;
#using script_4a55d8dd1b0d927e;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\dogtags.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\mp_common\gametypes\globallogic_score.csc;
#using scripts\core_common\struct.csc;

#namespace spy;

// Namespace spy/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xae43a9bf, Offset: 0x3a8
// Size: 0xae4
function event_handler[gametype_init] main(*eventstruct) {
    level thread namespace_e51f0bc1::init();
    if (!isdefined(level.var_44018194)) {
        hud_spy::register();
        level.var_af25ea23 = 1;
    }
    namespace_b77e8eb1::init();
    dogtags::init();
    level.var_ba243d66 = #"hash_570a24781e04172d";
    level.var_febab1ea = #"axis_base";
    level.var_f2d68e02 = &function_f2d68e02;
    level.var_1d16b8a = &function_1d16b8a;
    clientfield::register_clientuimodel("hudItems.radiationVestHealth", #"hash_6f4b11a0bee9b73d", #"hash_347090a9ef988900", 1, 5, "float", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.armorType", #"hash_6f4b11a0bee9b73d", #"armortype", 1, 2, "int", undefined, 0, 0);
    clientfield::function_5b7d846d("hudItems.spyMatchData.playerCount", #"hash_6080ee301f3f0c61", #"playercount", 1, 5, "int", undefined, 0, 0);
    clientfield::function_5b7d846d("hudItems.spyMatchData.deadPlayerCount", #"hash_6080ee301f3f0c61", #"hash_4564cd07c489a395", 1, 5, "int", undefined, 0, 0);
    clientfield::function_5b7d846d("hudItems.spyMatchData.playerAssignedIDCounter", #"hash_6080ee301f3f0c61", #"hash_290a3189b0fa7673", 1, 5, "counter", undefined, 0, 0);
    for (i = 1; i <= 25; i++) {
        clientfield::function_5b7d846d("hudItems.spyMatchData." + i + ".spyRole", #"hash_6080ee301f3f0c61", [hash(isdefined(i) ? "" + i : ""), #"hash_7527d02194a5a1f1"], 1, 2, "int", undefined, 0, 0);
        clientfield::function_5b7d846d("hudItems.spyMatchData." + i + ".isConnected", #"hash_6080ee301f3f0c61", [hash(isdefined(i) ? "" + i : ""), #"hash_3d1196b43432f700"], 1, 1, "int", undefined, 0, 0);
        clientfield::function_5b7d846d("hudItems.spyMatchData." + i + ".clientNum", #"hash_6080ee301f3f0c61", [hash(isdefined(i) ? "" + i : ""), #"clientnum"], 1, 5, "int", undefined, 0, 0);
        clientfield::function_5b7d846d("hudItems.spyMatchData." + i + ".talkInPrivateChannel", #"hash_6080ee301f3f0c61", [hash(isdefined(i) ? "" + i : ""), #"hash_692b144aab751bce"], 1, 1, "int", undefined, 0, 0);
        clientfield::function_5b7d846d("hudItems.spyMatchData." + i + ".identityIsKnown", #"hash_6080ee301f3f0c61", [hash(isdefined(i) ? "" + i : ""), #"hash_9d33ce88844c17e"], 1, 1, "int", undefined, 0, 0);
        clientfield::function_5b7d846d("hudItems.spyMatchData." + i + ".isAlive", #"hash_6080ee301f3f0c61", [hash(isdefined(i) ? "" + i : ""), #"isalive"], 1, 1, "int", undefined, 0, 0);
        clientfield::function_5b7d846d("hudItems.spyMatchData." + i + ".isWanted", #"hash_6080ee301f3f0c61", [hash(isdefined(i) ? "" + i : ""), #"hash_4ea36fff67aa12de"], 1, 1, "int", undefined, 0, 0);
        clientfield::function_5b7d846d("hudItems.spyMatchData." + i + ".detonations", #"hash_6080ee301f3f0c61", [hash(isdefined(i) ? "" + i : ""), #"hash_dcca75fef649c79"], 1, 4, "int", undefined, 0, 0);
    }
    clientfield::register("toplayer", "spyRole", 28000, 2, "int", &function_bfe357f0, 0, 0);
    clientfield::register("world", "corpse_observer_client_num", 28000, 5, "int", &function_ea30f3cf, 0, 0);
    clientfield::register("allplayers", "corpse_client_num", 28000, 5, "int", &function_f8e1b7, 0, 0);
    clientfield::register("world", "body_identity", 28000, 2, "int", &function_283e9b58, 0, 0);
    clientfield::register("world", "corpse_observer_role", 28000, 2, "int", &function_a68a87e7, 0, 0);
    clientfield::register("toplayer", "show_spy_keyline", 28000, 2, "int", &function_e2fff1e7, 0, 0);
    clientfield::register("allplayers", "record_operative_elims", 28000, 6, "int", &function_bf0fc43e, 0, 0);
    clientfield::register("allplayers", "record_investigator_elims", 28000, 3, "int", &function_37a1eba0, 0, 0);
    clientfield::register("allplayers", "record_spy_elims", 28000, 5, "int", &function_f54128a2, 0, 0);
    clientfield::register("toplayer", "show_spy_numbers_fx", 28000, 1, "int", &function_16694e81, 0, 0);
    callback::on_player_corpse(&on_player_corpse);
    level.deadplayers = [];
    level.var_3866f854 = [];
    setdvar(#"hash_79c9c84661796289", 1);
    setdvar(#"hash_6bca15a5b1ca32cf", 1);
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0x73606867, Offset: 0xe98
// Size: 0x68
function function_f2d68e02(event_type) {
    if (event_type == 0) {
        return #"hash_5f78d5e3552127e2";
    }
    if (event_type == 1) {
        return #"hash_3c0503b74cf2909a";
    }
    return level.ping.types[event_type].objective;
}

// Namespace spy/spy
// Params 2, eflags: 0x0
// Checksum 0x8e674e8d, Offset: 0xf08
// Size: 0x1a
function function_1d16b8a(*local_client_num, *var_56bcf423) {
    return "";
}

// Namespace spy/spy
// Params 2, eflags: 0x0
// Checksum 0xdb08560d, Offset: 0xf30
// Size: 0x166
function on_player_corpse(*localclientnum, params) {
    assert(isdefined(params.playername));
    assert(isdefined(params.playernum));
    if (!isdefined(level.deadplayers)) {
        level.deadplayers = [];
    }
    level.deadplayers[params.playernum] = params.playername;
    player = params.player;
    if (isdefined(player.var_54d9d1ec) && isdefined(player.var_27a6fded)) {
        foreach (var_a0375b77 in player.var_54d9d1ec) {
            if (isdefined(player.var_27a6fded[var_a0375b77])) {
                level.var_3866f854[params.playernum][var_a0375b77] = player.var_27a6fded;
            }
        }
    }
}

// Namespace spy/spy
// Params 7, eflags: 0x0
// Checksum 0xbef7813b, Offset: 0x10a0
// Size: 0x58
function function_ea30f3cf(*local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump > 25) {
        return;
    }
    level.var_78904b18 = bwastimejump;
}

// Namespace spy/spy
// Params 7, eflags: 0x0
// Checksum 0x7f2b6174, Offset: 0x1100
// Size: 0x58
function function_a68a87e7(*local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 0) {
        return;
    }
    level.var_9b867835 = bwastimejump;
}

// Namespace spy/spy
// Params 7, eflags: 0x0
// Checksum 0xc6aa3486, Offset: 0x1160
// Size: 0x58
function function_283e9b58(*local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 0) {
        return;
    }
    level.var_d47b6a0b = bwastimejump;
}

// Namespace spy/spy
// Params 7, eflags: 0x0
// Checksum 0xd234cde2, Offset: 0x11c0
// Size: 0x43a
function function_f8e1b7(local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump > 25) {
        return;
    }
    level.var_7eb157a7 = bwastimejump;
    if (!isdefined(level.var_78904b18) || !isdefined(level.var_d47b6a0b) || level.var_d47b6a0b == 3) {
        return;
    }
    var_493fffa1 = undefined;
    var_d35e9a2 = undefined;
    var_d5c64c00 = -1;
    var_7bc93714 = #"hash_178cac301a36cf2";
    var_603e6dd8 = #"hash_473f17e761b0de5b";
    if (level.var_78904b18 <= 25) {
        var_81131a47 = function_70873aee(fieldname, level.var_78904b18);
        if (isdefined(var_81131a47)) {
            var_493fffa1 = #"hash_102615ce832ca8a3" + var_81131a47;
        }
        var_5e8846d4 = self getentitynumber();
        var_c7901c77 = function_f714ed75(fieldname, var_5e8846d4);
        var_23bebb9 = function_8565908c(fieldname, level.var_78904b18);
        var_d35e9a2 = "";
        if (isdefined(var_23bebb9)) {
            var_d35e9a2 = var_23bebb9 getplayername();
        } else if (isdefined(level.deadplayers[level.var_78904b18])) {
            var_d35e9a2 = level.deadplayers[level.var_78904b18];
        }
        if (isdefined(level.var_9b867835)) {
            var_88117a25 = function_5051595f(fieldname, level.var_78904b18);
            var_d9b31f6d = 0;
            if (isdefined(var_88117a25)) {
                var_d9b31f6d = getuimodelvalue(getuimodel(var_88117a25, #"hash_9d33ce88844c17e"));
            }
            if (level.var_78904b18 == var_5e8846d4) {
                var_d5c64c00 = 6;
            } else {
                var_d5c64c00 = function_ce46473d(level.var_9b867835, var_c7901c77, var_d9b31f6d);
            }
        } else {
            var_d5c64c00 = -1;
        }
        var_7bc93714 = #"hash_1380f38b1a748dfe";
        var_603e6dd8 = undefined;
    }
    var_30c494d1 = function_70873aee(fieldname, level.var_7eb157a7);
    if (isdefined(var_30c494d1)) {
        var_6ede17a0 = #"hash_102615ce832ca8a3" + var_30c494d1;
    }
    corpse_name = "";
    var_701cb7a4 = function_30f7f6f8(level.var_d47b6a0b);
    var_dc321c79 = function_ce46473d(level.var_d47b6a0b, var_c7901c77, 1);
    if (isdefined(level.deadplayers[level.var_7eb157a7])) {
        corpse_name = level.deadplayers[level.var_7eb157a7];
    }
    function_c79ecd60(fieldname, var_d35e9a2, var_d5c64c00, var_493fffa1, var_7bc93714, -1, var_6ede17a0, corpse_name, var_dc321c79, var_701cb7a4, var_603e6dd8, -1, 1);
    level.var_d47b6a0b = undefined;
    level.var_7eb157a7 = undefined;
    level.var_9b867835 = undefined;
    level.var_78904b18 = undefined;
}

// Namespace spy/spy
// Params 2, eflags: 0x4
// Checksum 0xa05509d7, Offset: 0x1608
// Size: 0x110
function private function_70873aee(local_client_num, client_num) {
    var_22f25e2d = function_1df4c3b0(local_client_num, #"hash_6080ee301f3f0c61");
    for (index = 0; index < 25; index++) {
        playermodel = getuimodel(var_22f25e2d, hash(isdefined(index) ? "" + index : ""));
        if (isdefined(playermodel)) {
            var_ef8e260c = getuimodel(playermodel, #"clientnum");
            playerclientnum = getuimodelvalue(var_ef8e260c);
            if (playerclientnum == client_num) {
                return index;
            }
        }
    }
    return undefined;
}

// Namespace spy/spy
// Params 2, eflags: 0x0
// Checksum 0x5b28512e, Offset: 0x1720
// Size: 0xd2
function function_8565908c(local_client_num, client_num) {
    players = getplayers(local_client_num);
    foreach (player in players) {
        if (isdefined(player) && player getentitynumber() == client_num) {
            return player;
        }
    }
    return undefined;
}

// Namespace spy/spy
// Params 2, eflags: 0x4
// Checksum 0xfb7e5d9d, Offset: 0x1800
// Size: 0x6a
function private function_f714ed75(local_client_num, client_num) {
    var_ee6a1fe4 = function_5051595f(local_client_num, client_num);
    return getuimodelvalue(getuimodel(var_ee6a1fe4, #"hash_7527d02194a5a1f1"));
}

// Namespace spy/spy
// Params 2, eflags: 0x0
// Checksum 0x7c63a810, Offset: 0x1878
// Size: 0x110
function function_5051595f(local_client_num, client_num) {
    var_22f25e2d = function_1df4c3b0(local_client_num, #"hash_6080ee301f3f0c61");
    for (index = 0; index < 25; index++) {
        playermodel = getuimodel(var_22f25e2d, hash(isdefined(index) ? "" + index : ""));
        if (isdefined(playermodel)) {
            var_ef8e260c = getuimodel(playermodel, #"clientnum");
            playerclientnum = getuimodelvalue(var_ef8e260c);
            if (playerclientnum == client_num) {
                return playermodel;
            }
        }
    }
    return undefined;
}

// Namespace spy/spy
// Params 1, eflags: 0x0
// Checksum 0xf16bcebe, Offset: 0x1990
// Size: 0x92
function function_30f7f6f8(var_d27e5654) {
    switch (var_d27e5654) {
    case 1:
        return #"hash_6ba53a7edd3e9e8f";
    case 2:
        return #"hash_30aa21feb2c3d1b1";
    case 3:
        return #"hash_6faacb106ef0ae85";
    default:
        return undefined;
    }
}

// Namespace spy/spy
// Params 2, eflags: 0x0
// Checksum 0xa634f298, Offset: 0x1a30
// Size: 0x4a
function function_8c4ed692(var_d790eb21, var_46c0f051) {
    if (var_d790eb21 == var_46c0f051) {
        return true;
    }
    if (var_d790eb21 != 1 && var_46c0f051 != 1) {
        return true;
    }
    return false;
}

// Namespace spy/spy
// Params 3, eflags: 0x0
// Checksum 0xe65e6258, Offset: 0x1a88
// Size: 0xa6
function function_ce46473d(var_668494d8, var_9b867835, var_b98754b) {
    var_9d569de1 = function_8c4ed692(var_668494d8, var_9b867835);
    if (var_9d569de1 && var_668494d8 == 1) {
        return 3;
    }
    if (var_9b867835 == 1) {
        return 0;
    }
    if (isdefined(var_b98754b) && var_b98754b == 1) {
        if (var_9d569de1 == 1) {
            return 3;
        } else {
            return 0;
        }
    }
    return -1;
}

// Namespace spy/spy
// Params 7, eflags: 0x0
// Checksum 0x89aca045, Offset: 0x1b38
// Size: 0x1c2
function function_bfe357f0(*local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.var_d27e5654 = bwastimejump;
    if (self.var_d27e5654 == 3) {
        self.var_ee9b8af0 = int(isdefined(getgametypesetting(#"investigatormaxhealth")) ? getgametypesetting(#"investigatormaxhealth") : 301);
        return;
    }
    if (self.var_d27e5654 == 2) {
        self.var_ee9b8af0 = int(isdefined(getgametypesetting(#"operativemaxhealth")) ? getgametypesetting(#"operativemaxhealth") : 175);
        return;
    }
    if (self.var_d27e5654 == 1) {
        self.var_ee9b8af0 = int(isdefined(getgametypesetting(#"doubleagentmaxhealth")) ? getgametypesetting(#"doubleagentmaxhealth") : 175);
    }
}

// Namespace spy/spy
// Params 7, eflags: 0x0
// Checksum 0xce8ba2dd, Offset: 0x1d08
// Size: 0x2b0
function function_e2fff1e7(local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        var_22f25e2d = function_1df4c3b0(fieldname, #"hash_6080ee301f3f0c61");
        for (index = 0; index < 25; index++) {
            playermodel = getuimodel(var_22f25e2d, hash(isdefined(index) ? "" + index : ""));
            if (isdefined(playermodel)) {
                playerrole = getuimodelvalue(getuimodel(playermodel, #"hash_7527d02194a5a1f1"));
                if (playerrole == 1) {
                    clientnum = getuimodelvalue(getuimodel(playermodel, #"clientnum"));
                    player = function_8565908c(fieldname, clientnum);
                    if (isdefined(player) && player != self) {
                        player function_d3530328();
                        player playrenderoverridebundle("rob_sonar_set_friendly_spy_mp");
                    }
                }
            }
        }
        return;
    }
    self function_8a561cb1();
    foreach (player in getplayers(fieldname)) {
        if (player function_d2503806("rob_sonar_set_friendly_spy_mp")) {
            player stoprenderoverridebundle("rob_sonar_set_friendly_spy_mp");
        }
    }
}

// Namespace spy/spy
// Params 7, eflags: 0x0
// Checksum 0x824abbc7, Offset: 0x1fc0
// Size: 0xd4
function function_bf0fc43e(local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump <= 0) {
        return;
    }
    playermodel = function_5051595f(fieldname, self getentitynumber());
    if (!isdefined(playermodel)) {
        return;
    }
    var_ce427284 = getuimodel(playermodel, #"hash_68ca8998bc9193fa");
    setuimodelvalue(var_ce427284, bwastimejump - 1);
}

// Namespace spy/spy
// Params 7, eflags: 0x0
// Checksum 0x4cd15da, Offset: 0x20a0
// Size: 0xd4
function function_37a1eba0(local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump <= 0) {
        return;
    }
    playermodel = function_5051595f(fieldname, self getentitynumber());
    if (!isdefined(playermodel)) {
        return;
    }
    var_2bb3324f = getuimodel(playermodel, #"hash_2264183a7679593c");
    setuimodelvalue(var_2bb3324f, bwastimejump - 1);
}

// Namespace spy/spy
// Params 7, eflags: 0x0
// Checksum 0x6569ccc, Offset: 0x2180
// Size: 0xd4
function function_f54128a2(local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump <= 0) {
        return;
    }
    playermodel = function_5051595f(fieldname, self getentitynumber());
    if (!isdefined(playermodel)) {
        return;
    }
    var_a4a5c98f = getuimodel(playermodel, #"hash_297fd6e15ec7493f");
    setuimodelvalue(var_a4a5c98f, bwastimejump - 1);
}

// Namespace spy/spy
// Params 7, eflags: 0x0
// Checksum 0xc1972f4a, Offset: 0x2260
// Size: 0x164
function function_16694e81(local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        if (!self postfx::function_556665f2("pstfx_mason_numbers")) {
            self postfx::playpostfxbundle("pstfx_mason_numbers");
            playsound(fieldname, #"hash_3a5560ecf23b047e");
        }
        if (!self postfx::function_556665f2("pstfx_mason_numbers_add")) {
            self postfx::playpostfxbundle("pstfx_mason_numbers_add");
        }
        return;
    }
    if (self postfx::function_556665f2("pstfx_mason_numbers")) {
        self postfx::exitpostfxbundle("pstfx_mason_numbers");
    }
    if (self postfx::function_556665f2("pstfx_mason_numbers_add")) {
        self postfx::exitpostfxbundle("pstfx_mason_numbers_add");
    }
}

