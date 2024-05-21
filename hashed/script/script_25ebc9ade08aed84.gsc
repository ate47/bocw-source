// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_47809ab2;

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 0, eflags: 0x2 linked
// Checksum 0x59de4ff6, Offset: 0x2c0
// Size: 0x2c4
function init() {
    zm_player::register_player_damage_callback(&function_6f03042);
    clientfield::register("toplayer", "" + #"flinger_pad_fling", 1, 1, "int");
    clientfield::register("allplayers", "" + #"hash_31c153af499657fd", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_5822132672ad230f", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_6219dce209d171ed", 1, 2, "int");
    level.var_d99df9f9 = 500;
    var_97d7f69d = [];
    var_867ebaba = getentarray("flinger_pad_aimer", "targetname");
    foreach (entity in var_867ebaba) {
        if (entity.script_noteworthy === "jump_pad") {
            if (!isdefined(var_97d7f69d)) {
                var_97d7f69d = [];
            } else if (!isarray(var_97d7f69d)) {
                var_97d7f69d = array(var_97d7f69d);
            }
            if (!isinarray(var_97d7f69d, entity)) {
                var_97d7f69d[var_97d7f69d.size] = entity;
            }
            entity function_619a5c20();
        }
    }
    array::thread_all(var_97d7f69d, &function_cc21ae2e);
    callback::on_spawned(&function_c10ae9f9);
    /#
        level thread devgui_setup();
    #/
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 0, eflags: 0x2 linked
// Checksum 0x488a72d9, Offset: 0x590
// Size: 0x12e
function function_c10ae9f9() {
    self endon(#"death");
    while (true) {
        self flag::clear(#"hash_681b86c36426c957");
        while (!self zm_laststand::function_c3249e8c() && !(self laststand::player_is_in_laststand() && self zm_laststand::function_30b9cdd5())) {
            waitframe(1);
        }
        self flag::set(#"hash_681b86c36426c957");
        while (self zm_laststand::function_c3249e8c() || self laststand::player_is_in_laststand() && self zm_laststand::function_30b9cdd5() || self usebuttonpressed()) {
            waitframe(1);
        }
    }
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 0, eflags: 0x2 linked
// Checksum 0xa877e28c, Offset: 0x6c8
// Size: 0x35c
function function_cc21ae2e() {
    level flag::wait_till("start_zombie_round_logic");
    self.var_43032f5e = util::spawn_model("tag_origin", self.origin, self.angles);
    self.var_63c8edf4 = util::spawn_model("tag_origin", self.origin, self.angles);
    self.var_6f3293fb = util::spawn_model(#"hash_28eb426b6bafb85e", self.origin, self.angles);
    self.var_6f3293fb clientfield::set("" + #"hash_6219dce209d171ed", 1);
    self.var_63c8edf4 linkto(self);
    self.var_6f3293fb linkto(self);
    var_b0c3aec3 = getentarray("flinger_landing_pad", "targetname");
    foreach (flinger_landing_pad in var_b0c3aec3) {
        if (flinger_landing_pad.script_noteworthy === "landing_pad" && self.script_int === flinger_landing_pad.script_int) {
            flinger_landing_pad thread function_b4913776();
            self.landing_pad = flinger_landing_pad;
            self.var_803f2038 = "landing_pad_active" + flinger_landing_pad.script_int;
            flinger_landing_pad.var_90ddceac = self;
            flinger_landing_pad function_619a5c20();
            break;
        }
    }
    self.vol_fling = getent("flinger_vol" + self.script_int, "targetname");
    var_948355ad = self zm_unitrigger::create(&function_679a29cd, 100, &function_23ef27c);
    var_948355ad.origin = self.origin + (0, 0, 30);
    var_948355ad.cost = 500;
    var_948355ad.var_90ddceac = self;
    var_948355ad.var_b555f02e = self.var_b555f02e;
    var_948355ad.var_803f2038 = self.var_803f2038;
    var_948355ad.var_90ddceac.var_37db5cf = 1;
    self.var_2ddd9b0c = getvehiclenode("flinger_vehicle_startnode" + self.script_int, "targetname");
    self thread function_b2a2cce8();
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 0, eflags: 0x2 linked
// Checksum 0xbab4aba, Offset: 0xa30
// Size: 0xb8
function function_b2a2cce8() {
    while (true) {
        level flag::wait_till("captured_control_point" + self.var_b555f02e);
        self clientfield::set("" + #"hash_5822132672ad230f", 1);
        level flag::wait_till_clear("captured_control_point" + self.var_b555f02e);
        self clientfield::set("" + #"hash_5822132672ad230f", 0);
    }
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 1, eflags: 0x2 linked
// Checksum 0x97438eae, Offset: 0xaf0
// Size: 0x4a4
function function_679a29cd(player) {
    if (self.stub.var_90ddceac flag::get("jump_pad_quest_start")) {
        self sethintstring("");
        return 0;
    }
    if (isplayer(player)) {
        player globallogic::function_d96c031e();
        if (player flag::get(#"hash_681b86c36426c957")) {
            return 0;
        } else if (isdefined(self.stub.var_b555f02e) && !level flag::get("power_on" + self.stub.var_b555f02e)) {
            self sethintstringforplayer(player, #"hash_693242528304c52d");
            return 1;
        } else if (isdefined(self.stub.var_803f2038) && !level flag::get(self.stub.var_803f2038)) {
            self sethintstringforplayer(player, #"hash_6a411ebcdb1ae4b4");
            return 1;
        } else if (!is_true(self.stub.var_90ddceac.var_37db5cf)) {
            self sethintstringforplayer(player, #"hash_6b9dfd4a8ab2a386");
            return 1;
        } else if (level flag::get(#"hash_58d741b93fb5a331")) {
            self sethintstringforplayer(player, #"hash_344777202de67020");
            return 1;
        } else {
            switch (self.stub.var_90ddceac.script_string) {
            case #"napalm_strike":
                hint_string = player zm_utility::function_d6046228(#"hash_1c38e0fdb20ef055", #"hash_52a497d7fdd2698b");
                self sethintstringforplayer(player, hint_string, level.var_d99df9f9);
                if (!player zm_score::can_player_purchase(level.var_d99df9f9)) {
                    player globallogic::function_d1924f29(#"hash_6e3ae7967dc5d414");
                }
                break;
            case #"hash_64dce2b960119f23":
                hint_string = player zm_utility::function_d6046228(#"hash_306dab4c836b1026", #"hash_2771ace3aa8dfe02");
                self sethintstringforplayer(player, hint_string, level.var_d99df9f9);
                if (!player zm_score::can_player_purchase(level.var_d99df9f9)) {
                    player globallogic::function_d1924f29(#"hash_6e3ae7967dc5d414");
                }
                break;
            case #"chopper_gunner":
                hint_string = player zm_utility::function_d6046228(#"hash_61ac30cb1d0b9c0", #"hash_6d2d30daf8cd1ec");
                self sethintstringforplayer(player, hint_string, level.var_d99df9f9);
                if (!player zm_score::can_player_purchase(level.var_d99df9f9)) {
                    player globallogic::function_d1924f29(#"hash_6e3ae7967dc5d414");
                }
                break;
            default:
                break;
            }
            return 1;
        }
        return 0;
    }
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 0, eflags: 0x2 linked
// Checksum 0xa132e73d, Offset: 0xfa0
// Size: 0x256
function function_23ef27c() {
    level endon(#"end_game");
    while (true) {
        waitresult = self waittill(#"trigger");
        player = waitresult.activator;
        if (!is_true(self.stub.var_90ddceac.var_37db5cf)) {
            continue;
        }
        if (!level flag::get(self.stub.var_803f2038)) {
            continue;
        }
        if (!level flag::get("power_on" + self.stub.var_b555f02e)) {
            continue;
        }
        if (level flag::get(#"hash_58d741b93fb5a331")) {
            continue;
        }
        if (!isplayer(player)) {
            continue;
        }
        if (player flag::get(#"hash_681b86c36426c957")) {
            continue;
        }
        if (!player zm_score::can_player_purchase(level.var_d99df9f9)) {
            continue;
        } else {
            player zm_score::minus_to_player_score(level.var_d99df9f9);
        }
        playsoundatposition(#"hash_1d376319d5304199", self.origin);
        player thread function_d9e25369(self.stub.var_90ddceac);
        level notify(#"hash_cb2d8c59ec2fc84", {#var_b8e13043:self.stub.var_90ddceac.script_int});
        self.stub.var_90ddceac thread function_f626ab3d();
        waitframe(1);
    }
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 0, eflags: 0x2 linked
// Checksum 0xa06760e9, Offset: 0x1200
// Size: 0x6c
function function_f626ab3d() {
    self endon(#"jump_pad_quest_start");
    self.var_37db5cf = 0;
    wait(5);
    self function_7c7f1e12();
    wait(30);
    self.var_37db5cf = 1;
    self function_b858693f(self.var_b555f02e);
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 1, eflags: 0x2 linked
// Checksum 0xb9db3f91, Offset: 0x1278
// Size: 0x1d4
function function_d9e25369(var_90ddceac) {
    level endon(#"end_game");
    var_90ddceac endon(#"jump_pad_quest_start");
    a_players = function_a1ef346b();
    var_d044a2f0 = self;
    var_945f1b6c = 5;
    while (var_945f1b6c > 0) {
        if (isalive(var_d044a2f0)) {
            var_d044a2f0 thread function_c14f39dc(var_90ddceac.var_2ddd9b0c, var_90ddceac.landing_pad);
            arrayremovevalue(a_players, var_d044a2f0);
            if (a_players.size == 0) {
                return;
            }
            var_d044a2f0 = undefined;
            var_bea2fd38 = 0.25;
        } else {
            var_bea2fd38 = 0.05;
        }
        var_945f1b6c -= var_bea2fd38;
        wait(var_bea2fd38);
        foreach (player in a_players) {
            if (isalive(player) && player istouching(var_90ddceac.vol_fling)) {
                var_d044a2f0 = player;
                break;
            }
        }
    }
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 0, eflags: 0x2 linked
// Checksum 0x257641fe, Offset: 0x1458
// Size: 0x42
function function_a23af398() {
    self endon(#"hash_47017b5a7ed2b46b");
    level waittill(#"end_game");
    if (isdefined(self)) {
        self.var_62b63681 = 1;
    }
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 1, eflags: 0x2 linked
// Checksum 0x32af068e, Offset: 0x14a8
// Size: 0x104
function function_c9e3b586(*str_notify) {
    self val::reset_all(#"fling_player");
    self.is_flung = undefined;
    self.var_16735873 = 0;
    self notify(#"hash_47017b5a7ed2b46b");
    self clientfield::set_to_player("" + #"flinger_pad_fling", 0);
    self clientfield::set("" + #"hash_31c153af499657fd", 0);
    self solid();
    if (isdefined(self.var_dc3c3330)) {
        self.var_dc3c3330 delete();
    }
    self zm_utility::clear_streamer_hint();
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 2, eflags: 0x2 linked
// Checksum 0x4cf1763, Offset: 0x15b8
// Size: 0x51c
function function_c14f39dc(nd_start, var_b338b8ed) {
    self endoncallback(&function_c9e3b586, #"death");
    if (isplayer(self)) {
        self thread function_a23af398();
        self val::set(#"fling_player", "takedamage", 0);
        self function_bc82f900(#"hash_37581512bae8abf3");
        self.is_flung = 1;
        self.var_16735873 = 1;
        while (self isslamming()) {
            util::wait_network_frame();
        }
        self zm_utility::create_streamer_hint(var_b338b8ed.origin, self.angles, 1);
        self notsolid();
        if (!self inlaststand()) {
            self val::set(#"fling_player", "allow_crouch", 0);
            self val::set(#"fling_player", "allow_prone", 0);
            self val::set(#"fling_player", "allow_stand", 1);
            if (self getstance() != "stand") {
                self setstance("stand");
            }
        }
        self clientfield::set_to_player("" + #"flinger_pad_fling", 1);
        self clientfield::set("" + #"hash_31c153af499657fd", 1);
        playsoundatposition(#"hash_7ff8d8dbf89e6f0d", self.origin);
        self.var_dc3c3330 = vehicle::spawn(undefined, "player_vehicle", "fake_vehicle", nd_start.origin, nd_start.angles);
        self function_648c1f6(self.var_dc3c3330, undefined, 0, 180, 180, 180, 180, 1, 1);
        self.var_dc3c3330 setignorepauseworld(1);
        self.var_dc3c3330 vehicle::get_on_and_go_path(nd_start);
        self.var_dc3c3330 waittill(#"reached_end_node");
        self thread function_695ec0(var_b338b8ed);
        self solid();
        self thread function_b7e924cf();
        if (!self inlaststand()) {
            self val::reset(#"fling_player", "allow_crouch");
            self val::reset(#"fling_player", "allow_prone");
            self val::reset(#"fling_player", "allow_stand");
        }
        waitframe(1);
        self.is_flung = undefined;
        self.var_16735873 = 0;
        self notify(#"hash_47017b5a7ed2b46b");
        self clientfield::set_to_player("" + #"flinger_pad_fling", 0);
        self clientfield::set("" + #"hash_31c153af499657fd", 0);
        playsoundatposition(#"hash_6062a28f5bf1780", self.origin);
        self.var_dc3c3330 delete();
        self zm_utility::clear_streamer_hint();
    }
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 0, eflags: 0x2 linked
// Checksum 0x3b1b28ec, Offset: 0x1ae0
// Size: 0x3c
function function_b7e924cf() {
    wait(0.5);
    self val::reset(#"fling_player", "takedamage");
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 1, eflags: 0x2 linked
// Checksum 0x3987b88, Offset: 0x1b28
// Size: 0x15e
function function_695ec0(var_b338b8ed) {
    if (isplayer(self)) {
        var_14ddabc6 = var_b338b8ed function_a5df8834(self);
        for (var_15316677 = var_14ddabc6.origin; positionwouldtelefrag(var_15316677); var_15316677 = var_14ddabc6.origin + (randomfloatrange(-24, 24), randomfloatrange(-24, 24), 0)) {
            waitframe(1);
        }
        if (isplayer(self)) {
            self unlink();
            self setorigin(var_15316677);
        }
        if (is_true(self.var_62b63681)) {
            self val::set(#"fling_player", "freezecontrols", 1);
        }
        wait(3);
        var_14ddabc6.occupied = undefined;
    }
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 1, eflags: 0x2 linked
// Checksum 0x4acf1d58, Offset: 0x1c90
// Size: 0xec
function function_a5df8834(player) {
    a_s_spots = struct::get_array(self.target, "targetname");
    foreach (spot in a_s_spots) {
        player_id = player getentitynumber();
        if (spot.script_int === player_id) {
            var_3cb2df83 = spot;
            break;
        }
    }
    return var_3cb2df83;
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 11, eflags: 0x2 linked
// Checksum 0xb54e598e, Offset: 0x1d88
// Size: 0x84
function function_6f03042(*einflictor, *eattacker, *idamage, *idflags, *smeansofdeath, *weapon, *vpoint, *vdir, *shitloc, *psoffsettime, *boneindex) {
    if (is_true(self.is_flung)) {
        return 0;
    }
    return -1;
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 0, eflags: 0x2 linked
// Checksum 0xa64405a3, Offset: 0x1e18
// Size: 0x164
function function_b4913776() {
    level endon(#"end_game");
    self.mdl = util::spawn_model(#"hash_a1d2c05a50dd55", self.origin, self.angles);
    self.mdl.targetname = "landing_pad";
    self.var_43032f5e = util::spawn_model("tag_origin", self.origin, self.angles);
    self.var_63c8edf4 = util::spawn_model("tag_origin", self.origin, self.angles);
    self.var_43032f5e linkto(self);
    self.var_63c8edf4 linkto(self);
    level flag::wait_till("power_on" + self.var_b555f02e);
    level flag::set("landing_pad_active" + self.script_int);
    self function_726d8f3a();
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 1, eflags: 0x2 linked
// Checksum 0x835d2ab6, Offset: 0x1f88
// Size: 0x2fc
function function_726d8f3a(var_fd713d4b = 1) {
    if (!isdefined(self.var_43032f5e) || !isdefined(self.var_63c8edf4)) {
        return;
    }
    if (var_fd713d4b) {
        self.var_43032f5e setmodel(#"hash_487c692b572bc449");
        wait(0.3);
        self.var_43032f5e setmodel(#"hash_487c662b572bbf30");
        wait(0.3);
        self.var_43032f5e setmodel(#"hash_487c672b572bc0e3");
        wait(0.3);
    }
    self.var_63c8edf4 setmodel(#"hash_9b7e079e1dcd5b0");
    switch (self.script_int) {
    case 1:
        self.var_43032f5e setmodel(#"hash_2dc5f32522c37c29");
        break;
    case 2:
        self.var_43032f5e setmodel(#"hash_2dc5f02522c37710");
        break;
    case 3:
        self.var_43032f5e setmodel(#"hash_2dc5f12522c378c3");
        break;
    case 4:
        self.var_43032f5e setmodel(#"hash_2dc5f62522c38142");
        break;
    case 5:
        self.var_43032f5e setmodel(#"hash_2dc5f72522c382f5");
        break;
    case 6:
        self.var_43032f5e setmodel(#"hash_2dc5f42522c37ddc");
        break;
    default:
        break;
    }
    if (level flag::get("power_on" + self.var_90ddceac.var_b555f02e)) {
        function_b858693f(self.var_90ddceac.var_b555f02e);
    }
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 1, eflags: 0x2 linked
// Checksum 0x6f4d5097, Offset: 0x2290
// Size: 0x3a0
function function_b858693f(index) {
    var_1c9a65cd = getentarray("flinger_pad_aimer", "targetname");
    foreach (var_90ddceac in var_1c9a65cd) {
        if (var_90ddceac.var_b555f02e == index) {
            if (!isdefined(var_90ddceac.var_43032f5e) || !isdefined(var_90ddceac.var_63c8edf4) || !isdefined(var_90ddceac.var_6f3293fb)) {
                break;
            }
            switch (var_90ddceac.script_int) {
            case 1:
                var_b4fbcdc9 = #"hash_612ce7acf731e45c";
                break;
            case 2:
                var_b4fbcdc9 = #"hash_612ceaacf731e975";
                break;
            case 3:
                var_b4fbcdc9 = #"hash_612ce9acf731e7c2";
                break;
            case 4:
                var_b4fbcdc9 = #"hash_612ce4acf731df43";
                break;
            case 5:
                var_b4fbcdc9 = #"hash_612ce3acf731dd90";
                break;
            case 6:
                var_b4fbcdc9 = #"hash_612ce6acf731e2a9";
                break;
            default:
                break;
            }
            if (level flag::get(var_90ddceac.var_803f2038)) {
                var_90ddceac.var_43032f5e setmodel(#"hash_cbac724d17f7914");
                var_90ddceac.var_63c8edf4 setmodel(#"hash_229ea252394102ef");
                var_90ddceac.var_63c8edf4 stoploopsound();
                var_90ddceac.var_63c8edf4 playsound(#"hash_56bfe731349ae3ce");
            } else {
                var_90ddceac.var_43032f5e setmodel(var_b4fbcdc9);
                var_90ddceac.var_63c8edf4 setmodel(#"hash_16fb2319be7e56c7");
            }
            var_90ddceac.var_6f3293fb clientfield::set("" + #"hash_6219dce209d171ed", 2);
            if (!var_90ddceac scene::is_playing(#"hash_684bd2711559163d", "play")) {
                var_90ddceac thread scene::play(#"hash_684bd2711559163d", "play", var_90ddceac);
            }
        }
    }
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 0, eflags: 0x2 linked
// Checksum 0x8639faa1, Offset: 0x2638
// Size: 0xac
function function_7c7f1e12() {
    if (!isdefined(self.var_43032f5e) || !isdefined(self.var_63c8edf4) || !isdefined(self.var_6f3293fb)) {
        return;
    }
    self.var_43032f5e setmodel(#"hash_475b514611cd4cdd");
    self.var_63c8edf4 setmodel(#"hash_a894b6c603d3613");
    self.var_63c8edf4 playloopsound(#"hash_53528a3f2802b9d9");
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 0, eflags: 0x0
// Checksum 0xfd023432, Offset: 0x26f0
// Size: 0x1ba
function function_df6e6fce() {
    if (!isdefined(self.var_43032f5e)) {
        return;
    }
    switch (self.script_int) {
    case 1:
        self.var_43032f5e setmodel(#"hash_1730e3d42048d1b5");
        break;
    case 2:
        self.var_43032f5e setmodel(#"hash_1730e0d42048cc9c");
        break;
    case 3:
        self.var_43032f5e setmodel(#"hash_1730e1d42048ce4f");
        break;
    case 4:
        self.var_43032f5e setmodel(#"hash_1730ded42048c936");
        break;
    case 5:
        self.var_43032f5e setmodel(#"hash_1730dfd42048cae9");
        break;
    case 6:
        self.var_43032f5e setmodel(#"hash_1730dcd42048c5d0");
        break;
    default:
        break;
    }
}

// Namespace namespace_47809ab2/namespace_47809ab2
// Params 1, eflags: 0x2 linked
// Checksum 0x2f9ff9eb, Offset: 0x28b8
// Size: 0x230
function function_1f622ac(index) {
    var_97d7f69d = getentarray("flinger_pad_aimer", "targetname");
    foreach (var_90ddceac in var_97d7f69d) {
        if (var_90ddceac.var_b555f02e == index && var_90ddceac.script_noteworthy === "jump_pad") {
            var_90ddceac.var_43032f5e setmodel("tag_origin");
        }
        var_90ddceac.var_6f3293fb clientfield::set("" + #"hash_6219dce209d171ed", 1);
        var_90ddceac scene::stop(#"hash_684bd2711559163d");
    }
    var_b0c3aec3 = getentarray("flinger_landing_pad", "targetname");
    foreach (landing_pad in var_b0c3aec3) {
        if (landing_pad.var_b555f02e == index && landing_pad.script_noteworthy === "landing_pad") {
            landing_pad.var_43032f5e setmodel("tag_origin");
        }
    }
}

/#

    // Namespace namespace_47809ab2/namespace_47809ab2
    // Params 0, eflags: 0x0
    // Checksum 0x2f9e521d, Offset: 0x2af0
    // Size: 0x5c
    function devgui_setup() {
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&cmd);
    }

    // Namespace namespace_47809ab2/namespace_47809ab2
    // Params 1, eflags: 0x0
    // Checksum 0xe4179513, Offset: 0x2b58
    // Size: 0x82
    function cmd(cmd) {
        switch (cmd) {
        case #"hash_3785a966b663fa40":
            function_de5992a1();
            break;
        case #"hash_627810dd51e05760":
            function_f4d4dc3b();
            break;
        default:
            break;
        }
    }

    // Namespace namespace_47809ab2/namespace_47809ab2
    // Params 0, eflags: 0x0
    // Checksum 0xdf7b6404, Offset: 0x2be8
    // Size: 0xe8
    function function_de5992a1() {
        var_97d7f69d = getentarray("<unknown string>", "<unknown string>");
        foreach (var_90ddceac in var_97d7f69d) {
            if (isdefined(var_90ddceac.var_6f3293fb)) {
                var_90ddceac.var_6f3293fb clientfield::set("<unknown string>" + #"hash_6219dce209d171ed", 1);
            }
        }
    }

    // Namespace namespace_47809ab2/namespace_47809ab2
    // Params 0, eflags: 0x0
    // Checksum 0x864ce3cf, Offset: 0x2cd8
    // Size: 0xe0
    function function_f4d4dc3b() {
        var_97d7f69d = getentarray("<unknown string>", "<unknown string>");
        foreach (var_90ddceac in var_97d7f69d) {
            if (isdefined(var_90ddceac.var_6f3293fb)) {
                var_90ddceac.var_6f3293fb clientfield::set("<unknown string>" + #"hash_6219dce209d171ed", 0);
            }
        }
    }

#/
