// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\laststand.csc;
#using script_6eb177d050dd2947;
#using script_7222862da5baa189;
#using script_79b2f8ff99dd484;
#using script_72587ba89a212e22;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\util_shared.csc;
#using script_4a04e1760d0523d3;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_e51f0bc1;

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x1dd5df9, Offset: 0x240
// Size: 0xb4
function init() {
    init_clientfields();
    function_dd83b835();
    callback::on_localclient_connect(&on_localclient_connect);
    dirtybomb_usebar::register(undefined, undefined);
    encodedradio_usebar::register(undefined, undefined);
    level flag::wait_till(#"item_world_reset");
    level.var_34edd2a7 = 1;
    function_b324ff43();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0xac1c461b, Offset: 0x300
// Size: 0x3c4
function init_clientfields() {
    clientfield::register("missile", "" + #"hash_51901507983013f5", 28000, 1, "int", &function_fd43b4c0, 0, 0);
    clientfield::register("toplayer", "using_bomb", 28000, 1, "int", &function_18272d54, 0, 0);
    clientfield::register("toplayer", "killed_by_client_num", 28000, 4, "int", &function_d4209aa4, 0, 0);
    clientfield::register("toplayer", "killed_by_role", 28000, 2, "int", &function_224355c0, 0, 0);
    clientfield::register("toplayer", "to_player_notification", 28000, 5, "int", &function_cee5c029, 0, 0);
    clientfield::register("world", "wanted_client_num", 28000, 5, "int", &function_1e427c79, 0, 0);
    clientfield::register("world", "bomb_id", 28000, 2, "int", &function_50394a1c, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_732102339886b628", 28000, 1, "int", &function_9d843b2d, 0, 0);
    clientfield::register("missile", "" + #"hash_7850e541b1606b4a", 28000, 1, "int", &function_9d843b2d, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_3b8f220452f1fe4c", 28000, 1, "int", &function_14082bc6, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_3cb0242230f3f716", 28000, 2, "int", &function_d3bf8e92, 0, 0);
    clientfield::register("vehicle", "" + #"hash_508b8b3b9ba62e53", 28000, 1, "int", &function_ca974780, 0, 0);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x960a4820, Offset: 0x6d0
// Size: 0x14
function function_dd83b835() {
    namespace_681edb36::function_dd83b835();
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 0, eflags: 0x0
// Checksum 0x595b9e0a, Offset: 0x6f0
// Size: 0x19a
function function_b324ff43() {
    callback::add_weapon_type(#"hash_2e39312fd8e5cd84", &listening_device::function_9eeebbfd);
    mapname = util::get_map_name();
    if (isdefined(mapname)) {
        switch (mapname) {
        case #"mp_tundra":
            level.var_8ddf6d3d.var_151e2c9b = 1100;
            level.var_96492769.var_151e2c9b = 1100;
            break;
        case #"mp_nuketown6":
            level.var_8ddf6d3d.var_151e2c9b = 1000;
            level.var_96492769.var_151e2c9b = 1000;
            break;
        case #"hash_418ef9f1f49298e6":
            level.var_8ddf6d3d.var_151e2c9b = 900;
            level.var_96492769.var_151e2c9b = 900;
            break;
        case #"mp_apocalypse":
            level.var_8ddf6d3d.var_151e2c9b = 850;
            level.var_96492769.var_151e2c9b = 850;
            break;
        default:
            level.var_8ddf6d3d.var_151e2c9b = 1200;
            level.var_96492769.var_151e2c9b = 1200;
            break;
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x0
// Checksum 0x381c0522, Offset: 0x898
// Size: 0x7c
function on_localclient_connect(localclientnum) {
    var_2612e01d = function_1df4c3b0(localclientnum, #"hash_950d3dccba39e08");
    var_1e885680 = getuimodel(var_2612e01d, "count");
    setuimodelvalue(var_1e885680, 4);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 7, eflags: 0x0
// Checksum 0xf97c8ad4, Offset: 0x920
// Size: 0x74
function function_fd43b4c0(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        self function_c2e69953(1);
        return;
    }
    self function_c2e69953(0);
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 7, eflags: 0x4
// Checksum 0x14b68f83, Offset: 0x9a0
// Size: 0xd6
function private function_18272d54(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_53f712e3 = function_604c9983(fieldname, "fly_uranium_priming_lp");
        self thread function_6e9e7ead(fieldname);
        return;
    }
    self notify(#"hash_470a1e2ae77ad9f2");
    if (isdefined(self.var_53f712e3)) {
        function_d48752e(fieldname, self.var_53f712e3);
        self.var_53f712e3 = undefined;
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0x52993d61, Offset: 0xa80
// Size: 0x8e
function private function_6e9e7ead(localclientnum) {
    if (is_true(self.var_16778c9b)) {
        return;
    }
    self.var_16778c9b = 1;
    self waittill(#"death");
    self.var_16778c9b = 0;
    if (isdefined(self.var_53f712e3)) {
        function_d48752e(localclientnum, self.var_53f712e3);
        self.var_53f712e3 = undefined;
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 7, eflags: 0x4
// Checksum 0x2372dc5e, Offset: 0xb18
// Size: 0xe4
function private function_cee5c029(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump != 0) {
        data = self function_fb566490(fieldname, bwastimejump);
        if (isdefined(data)) {
            function_c79ecd60(fieldname, data.text0, data.var_d86d7aad, data.icon0, data.text1, data.var_66b29739, data.icon1, data.text2, data.var_9c7902e5, data.var_7d9f780e, data.text3, data.var_cab95f65);
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 7, eflags: 0x0
// Checksum 0xe375fbe0, Offset: 0xc08
// Size: 0x4c
function function_50394a1c(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level.bomb_id = bwastimejump;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 7, eflags: 0x4
// Checksum 0xc07b1ae9, Offset: 0xc60
// Size: 0x5c
function private function_d4209aa4(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == -1) {
        return;
    }
    level.var_58624fd1 = bwastimejump;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 7, eflags: 0x4
// Checksum 0xc03ad4f7, Offset: 0xcc8
// Size: 0x58
function private function_224355c0(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 0) {
        return;
    }
    level.var_7dfc60c = bwastimejump;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 7, eflags: 0x4
// Checksum 0x724d216, Offset: 0xd28
// Size: 0x58
function private function_1e427c79(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump > 25) {
        return;
    }
    level.var_f6d9803b = bwasdemojump;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x4
// Checksum 0xc7ac99ae, Offset: 0xd88
// Size: 0x596
function private function_fb566490(local_client_num, var_3f87bcc) {
    data = {};
    data.text0 = undefined;
    data.var_d86d7aad = -1;
    data.icon0 = undefined;
    data.text1 = undefined;
    data.var_66b29739 = -1;
    data.icon1 = undefined;
    data.text2 = undefined;
    data.var_9c7902e5 = -1;
    data.var_7d9f780e = undefined;
    data.text3 = undefined;
    data.var_cab95f65 = -1;
    switch (var_3f87bcc) {
    case 1:
        data.text0 = #"hash_6659fcbeb05f5fcd";
        break;
    case 2:
        data.text0 = #"hash_3cfae1a933247193";
        break;
    case 3:
        data.text0 = #"hash_9e806c0e4a84941";
        break;
    case 4:
        data.text0 = #"hash_570f97a650d32de8";
        break;
    case 5:
        data.text0 = #"hash_e9642258a6981a1";
        break;
    case 6:
        data.text0 = #"hash_7f1bd561d7dff6f1";
        break;
    case 7:
        data.text0 = #"hash_48031fac2f4e8be6";
        break;
    case 8:
        data.text0 = function_b6937957(#"hash_3763a12e14c36e62", level.bomb_id);
        break;
    case 9:
        data.text0 = function_b6937957(#"hash_76b66f2f20eb5575", level.bomb_id);
        break;
    case 10:
        data.text0 = #"hash_48e294b6d739a396";
        break;
    case 11:
        if (isdefined(level.var_58624fd1) && isdefined(level.var_7dfc60c)) {
            var_3de81fb5 = function_70873aee(local_client_num, level.var_58624fd1);
            if (!isdefined(var_3de81fb5)) {
                data = undefined;
                break;
            }
            data.text0 = #"hash_57a05e18a658b499";
            data.icon1 = #"hash_102615ce832ca8a3" + var_3de81fb5;
            attacker = function_8565908c(local_client_num, level.var_58624fd1);
            if (isdefined(attacker)) {
                data.text2 = attacker getplayername();
            } else if (isdefined(level.deadplayers[level.var_58624fd1])) {
                data.text2 = level.deadplayers[level.var_58624fd1];
            }
            data.var_7d9f780e = function_30f7f6f8(level.var_7dfc60c);
            var_5e8846d4 = self getentitynumber();
            var_c7901c77 = function_f714ed75(local_client_num, var_5e8846d4);
            data.var_66b29739 = function_ce46473d(level.var_7dfc60c, var_c7901c77, 1);
            data.var_9c7902e5 = data.var_66b29739;
        }
        break;
    case 14:
        data.text0 = #"hash_3f1e1e5e0e4d5e12";
        break;
    case 16:
        if (isdefined(level.var_f6d9803b) && level.var_f6d9803b <= 25) {
            data.text0 = #"hash_5bc837648123a58c";
            player = function_8565908c(local_client_num, level.var_f6d9803b);
            if (isdefined(player)) {
                var_4fe888f3 = function_70873aee(local_client_num, level.var_f6d9803b);
                data.icon1 = #"hash_102615ce832ca8a3" + var_4fe888f3;
                data.text2 = player getplayername();
                data.var_9c7902e5 = -1;
            }
        }
        break;
    case 17:
        data.text0 = #"hash_65a5599a49c71133";
        break;
    }
    return data;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x4
// Checksum 0x4265fc51, Offset: 0x1328
// Size: 0xd2
function private function_b6937957(var_365b725e, bomb_id) {
    string = var_365b725e;
    var_b0173f91 = "A";
    if (isdefined(bomb_id)) {
        switch (bomb_id) {
        case 0:
            var_b0173f91 = "A";
            break;
        case 1:
            var_b0173f91 = "B";
            break;
        case 2:
            var_b0173f91 = "C";
            break;
        }
    }
    string = sprintf(string, var_b0173f91);
    return string;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0x27b84893, Offset: 0x1408
// Size: 0x7c
function private function_bb229046(var_d27e5654) {
    switch (var_d27e5654) {
    case 1:
        return #"hash_7c7ec5df89677b85";
    case 2:
        return #"hash_63b124245343a63b";
    case 3:
        return #"hash_7cc89aaafecf74c7";
    }
    return undefined;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x4
// Checksum 0x80349fbd, Offset: 0x1490
// Size: 0xd2
function private function_8565908c(local_client_num, client_num) {
    players = getplayers(local_client_num);
    foreach (player in players) {
        if (isdefined(player) && player getentitynumber() == client_num) {
            return player;
        }
    }
    return undefined;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x4
// Checksum 0x81096f09, Offset: 0x1570
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

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x4
// Checksum 0xff718816, Offset: 0x1688
// Size: 0x76
function private function_f714ed75(local_client_num, client_num) {
    var_ee6a1fe4 = function_5051595f(local_client_num, client_num);
    if (isdefined(var_ee6a1fe4)) {
        return getuimodelvalue(getuimodel(var_ee6a1fe4, #"hash_7527d02194a5a1f1"));
    }
    return 0;
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x0
// Checksum 0x8a51b95d, Offset: 0x1708
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

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 2, eflags: 0x0
// Checksum 0x9ba39f1e, Offset: 0x1820
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

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 3, eflags: 0x0
// Checksum 0x60bdb2d3, Offset: 0x1878
// Size: 0xde
function function_ce46473d(var_668494d8, var_9b867835, var_b98754b) {
    if (!isdefined(var_668494d8) || !isdefined(var_9b867835) || var_668494d8 == 0 || var_9b867835 == 0) {
        return -1;
    }
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

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 1, eflags: 0x4
// Checksum 0xf908fcc3, Offset: 0x1960
// Size: 0x92
function private function_30f7f6f8(var_d27e5654) {
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

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 7, eflags: 0x4
// Checksum 0x5bc28767, Offset: 0x1a00
// Size: 0x19c
function private function_9d843b2d(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    self endon(#"death");
    level endon(#"game_ended");
    local_player = function_5c10bd79(fieldname);
    if (isdefined(local_player.var_d27e5654)) {
        var_d27e5654 = local_player.var_d27e5654;
    }
    if (bwasdemojump) {
        self flag::set("should_play_render");
        while (isdefined(self) && self flag::get("should_play_render")) {
            if (var_d27e5654 === 1 && !self function_d2503806(#"hash_312ceb838675b80")) {
                self playrenderoverridebundle(#"hash_312ceb838675b80");
                waitframe(1);
                continue;
            }
            waitframe(1);
            continue;
        }
        return;
    }
    self flag::clear("should_play_render");
    self stoprenderoverridebundle(#"hash_312ceb838675b80");
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 7, eflags: 0x4
// Checksum 0x48f3c65e, Offset: 0x1ba8
// Size: 0xc8
function private function_14082bc6(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    self endon(#"death");
    level endon(#"game_ended");
    if (bwasdemojump) {
        while (isdefined(self)) {
            if (!self function_d2503806(#"hash_312ceb838675b80")) {
                self playrenderoverridebundle(#"hash_312ceb838675b80");
                waitframe(1);
                continue;
            }
            waitframe(1);
        }
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 7, eflags: 0x4
// Checksum 0x3e557aa8, Offset: 0x1c78
// Size: 0x1ca
function private function_d3bf8e92(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    level endon(#"game_ended");
    if (isdefined(self.var_bdc8969f)) {
        self.var_bdc8969f delete();
    }
    range = undefined;
    if (bwasdemojump == 1) {
        range = 2000;
    } else if (bwasdemojump == 2) {
        range = 1500;
    } else if (bwasdemojump == 3) {
        range = 1000;
    } else {
        return;
    }
    local_player = function_5c10bd79(fieldname);
    if (isdefined(local_player.var_d27e5654)) {
        var_bdc8969f = spawn(fieldname, self.origin, "script_model");
        var_bdc8969f setmodel(#"tag_origin");
        if (local_player.var_d27e5654 == 1) {
            var_bdc8969f setcompassicon("ui_icon_minimap_spy_location_circle_friendly");
        } else {
            var_bdc8969f setcompassicon("ui_icon_minimap_spy_location_circle_enemy");
        }
        var_bdc8969f function_5e00861(range, 1);
        self.var_bdc8969f = var_bdc8969f;
    }
}

// Namespace namespace_e51f0bc1/namespace_e51f0bc1
// Params 7, eflags: 0x4
// Checksum 0x64af8337, Offset: 0x1e50
// Size: 0x74
function private function_ca974780(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        self function_811196d1(1);
        return;
    }
    self function_811196d1(0);
}

