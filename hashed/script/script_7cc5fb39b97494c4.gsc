// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weapons.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\serverfield_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_e10de4ad;

// Namespace namespace_e10de4ad
// Method(s) 47 Total 47
class class_9e71c1a2 {

    // Namespace class_9e71c1a2/namespace_435e13ec
    // Params 0, eflags: 0xa linked
    // Checksum 0x25fe25f5, Offset: 0x2aa8
    // Size: 0xc2
    __constructor() {
        self.var_dc5b4677 = [];
        self.var_63e8057 = [];
        self.var_884c51e = [];
        self.var_6697e3b5 = [];
        self.var_bb0d53c3 = [];
        self.var_a4ea555f = [];
        self.var_1d21e4f3[#"allies"] = 0;
        self.var_1d21e4f3[#"axis"] = 0;
        self.var_1c4a269e = 0;
        self.var_7529951f = 0;
        self.var_fcc5a4dd = 0;
        self.var_678a6f36 = 0;
        self.var_d411c5b6 = 1;
        self.var_8ddd8026 = 1;
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 0, eflags: 0x82 linked class_linked
    // Checksum 0x80f724d1, Offset: 0x2b78
    // Size: 0x4
    function __destructor() {
        
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 2, eflags: 0x2 linked
    // Checksum 0x91afe298, Offset: 0x2d10
    // Size: 0x2d0
    function function_70bcd27(s_minigame, s_bundle) {
        self.m_s_bundle = s_bundle;
        self.var_b5a03b21 = s_minigame;
        self.var_b5a03b21.var_ff3c99c5 = self;
        self.m_str_identifier = s_minigame.str_identifier;
        self.var_2be76207 = util::get_team_mapping(s_minigame.script_team);
        self.var_9e3fdeff = s_minigame.var_730d113a;
        switch (tolower(s_minigame.var_4e0f62f3)) {
        case #"open":
            self.var_8b53fab0 = 0;
            break;
        case #"exclusive":
            self.var_8b53fab0 = 1;
            break;
        case #"hash_65a466c611c44a94":
            self.var_8b53fab0 = 2;
            break;
        }
        self.var_6dfc35a = isdefined(s_minigame.var_3b6bc456) ? s_minigame.var_3b6bc456 : 0;
        if (is_true(s_minigame.var_a92a2cc0)) {
            self.var_fcc5a4dd = 1;
        }
        if (isdefined(self.var_b5a03b21.var_5ebe1cc1)) {
            self.var_d411c5b6 = self.var_b5a03b21.var_5ebe1cc1;
        }
        self.var_678a6f36 = is_true(s_minigame.var_3093fd62);
        if (isdefined(s_minigame.target)) {
            a_s_targets = struct::get_array(s_minigame.target);
            foreach (s_target in a_s_targets) {
                if (s_target scene::function_9503138e()) {
                    if (!isdefined(self.var_a4ea555f)) {
                        self.var_a4ea555f = [];
                    } else if (!isarray(self.var_a4ea555f)) {
                        self.var_a4ea555f = array(self.var_a4ea555f);
                    }
                    self.var_a4ea555f[self.var_a4ea555f.size] = s_target;
                }
            }
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 3, eflags: 0x2 linked
    // Checksum 0x8b00fbd7, Offset: 0x4c10
    // Size: 0x9c
    function function_1633032e(e_player, var_e992b321, b_success) {
        if (scene::function_9730988a(var_e992b321.var_f8f0466c.scriptbundlename, "fail") && !b_success) {
            var_e992b321.var_f8f0466c scene::play("fail", e_player);
        } else {
            var_e992b321.var_f8f0466c scene::play("stop", e_player);
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0xe20470df, Offset: 0x3d30
    // Size: 0xb6
    function function_225651c4(var_e992b321) {
        self endon(#"interact", #"disabled");
        var_e992b321.mdl_gameobject endon(#"death");
        var_29b8f3d0 = undefined;
        var_29b8f3d0 = var_e992b321.mdl_gameobject waittill(#"gameobject_end_use_player");
        self notify(#"interact", {#var_e992b321:var_e992b321, #e_player:var_29b8f3d0.player});
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0xc9f9b492, Offset: 0x2bb0
    // Size: 0xc
    function function_27940f1f(*team) {
        
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0x661ea13, Offset: 0x5cc0
    // Size: 0x15c
    function function_2e32e924(e_player) {
        if (isdefined(e_player)) {
            arrayremovevalue(self.var_63e8057, undefined);
            if (isinarray(self.var_884c51e, e_player)) {
                arrayremovevalue(self.var_884c51e, e_player, 0);
            }
            if (!self.var_b5a03b21 flag::get("enabled")) {
                if (!isdefined(self.var_6697e3b5)) {
                    self.var_6697e3b5 = [];
                } else if (!isarray(self.var_6697e3b5)) {
                    self.var_6697e3b5 = array(self.var_6697e3b5);
                }
                if (!isinarray(self.var_6697e3b5, e_player)) {
                    self.var_6697e3b5[self.var_6697e3b5.size] = e_player;
                }
            }
            if (self.var_63e8057.size == 1 && isdefined(self.var_63e8057[0].mdl_gameobject)) {
                self.var_63e8057[0].mdl_gameobject gameobjects::show_waypoint(e_player);
            }
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 0, eflags: 0x2 linked
    // Checksum 0x80f724d1, Offset: 0x2b88
    // Size: 0x4
    function function_2f0acccd() {
        
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0xda06cd86, Offset: 0x4cb8
    // Size: 0x90
    function function_37b8d51b(e_player) {
        if (!self.var_b5a03b21 flag::get("enabled")) {
            return 0;
        }
        if (!isalive(e_player)) {
            return 0;
        }
        if (e_player laststand::player_is_in_laststand()) {
            return 0;
        }
        if (!self.var_7529951f && self function_d04f90d8(e_player)) {
            return 0;
        }
        return 1;
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 3, eflags: 0x2 linked
    // Checksum 0x3c7b38b4, Offset: 0x4950
    // Size: 0x2b6
    function function_422aeb75(e_player, var_e992b321, b_success) {
        if (isdefined(e_player)) {
            [[ self ]]->_stop(e_player);
            if (self.var_fcc5a4dd && isdefined(var_e992b321.mdl_gameobject)) {
                var_e992b321.mdl_gameobject gameobjects::show_waypoint(e_player);
                n_objective_id = var_e992b321.mdl_gameobject.objectiveid;
                objective_clearplayerusing(n_objective_id, e_player);
                objective_setgamemodeflags(n_objective_id, 0);
                objective_clearentity(n_objective_id);
            }
            e_player val::reset(#"hash_3d4fb52e39f65c78", "freezecontrols");
            e_player val::reset(#"hash_3d4fb52e39f65c78", "freezecontrols_allowlook");
            gameobjects::remove_player_use_modifiers(e_player);
            e_player endon(#"death");
            if (self.var_d411c5b6) {
                function_dd517e14(e_player, undefined);
                e_player weapons::function_d571ac59();
                if (self function_bb600dc2(e_player, b_success)) {
                    e_player waittill(#"weapon_change_complete", #"death");
                }
            } else if (isdefined(var_e992b321.var_f8f0466c) && isalive(e_player) && !e_player inlaststand()) {
                if (is_true(self.var_b5a03b21.var_b0dfc0a2)) {
                    self thread function_1633032e(e_player, var_e992b321, b_success);
                } else {
                    self function_1633032e(e_player, var_e992b321, b_success);
                }
            } else if (e_player inlaststand()) {
                var_e992b321.var_f8f0466c scene::stop();
            }
            e_player.var_f4f7edb2 = undefined;
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0xe0cf708f, Offset: 0x5b48
    // Size: 0x170
    function function_49c02476(e_player) {
        if (isdefined(e_player)) {
            if (isinarray(self.var_6697e3b5, e_player)) {
                arrayremovevalue(self.var_6697e3b5, e_player, 0);
            }
            if (!isdefined(self.var_884c51e)) {
                self.var_884c51e = [];
            } else if (!isarray(self.var_884c51e)) {
                self.var_884c51e = array(self.var_884c51e);
            }
            if (!isinarray(self.var_884c51e, e_player)) {
                self.var_884c51e[self.var_884c51e.size] = e_player;
            }
            foreach (var_e992b321 in self.var_63e8057) {
                if (isdefined(var_e992b321) && isdefined(var_e992b321.mdl_gameobject)) {
                    var_e992b321.mdl_gameobject gameobjects::hide_waypoint(e_player);
                }
            }
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0x18629097, Offset: 0x5988
    // Size: 0x64
    function reset(str_team) {
        arrayremovevalue(self.var_bb0d53c3, str_team);
        if (!self.var_bb0d53c3.size) {
            self.var_b5a03b21 flag::clear("playing");
        }
        [[ self ]]->function_27940f1f(str_team);
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0xe4671a2a, Offset: 0x4370
    // Size: 0x3c
    function function_5ce6ff92(e_player) {
        if (isfunctionptr(level.var_84bcc5b0)) {
            e_player [[ level.var_84bcc5b0 ]](self);
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0x5c7f1dcd, Offset: 0x2c28
    // Size: 0xc
    function function_6084622f(*e_player) {
        
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0x5744022a, Offset: 0x2be0
    // Size: 0xc
    function function_613e65ee(*e_player) {
        
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0xc2259fa4, Offset: 0x43b8
    // Size: 0x38
    function function_673813fe(e_player) {
        if (isfunctionptr(level.var_e30ae574)) {
            e_player [[ level.var_e30ae574 ]]();
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 0, eflags: 0x2 linked
    // Checksum 0x960fd86b, Offset: 0x5208
    // Size: 0xb8
    function function_699f084d() {
        if (is_true(self.var_b5a03b21.var_459e9174)) {
            self function_c6a410ce();
        }
        while (1) {
            s_notify = undefined;
            s_notify = self.var_b5a03b21 waittill(#"hash_58b8542ed702b2a5");
            if (s_notify.var_36c9fd16) {
                self function_c6a410ce();
            } else {
                self.var_63e8057[0] gameobjects::hide_waypoint();
            }
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0x6038521a, Offset: 0x5e28
    // Size: 0xa0
    function function_70a50147(str_team) {
        foreach (e_player in getplayers(str_team)) {
            self function_49c02476(e_player);
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0x323b2371, Offset: 0x2b98
    // Size: 0xc
    function _start(*e_player) {
        
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 0, eflags: 0x2 linked
    // Checksum 0x5d2f69c2, Offset: 0x5890
    // Size: 0xf0
    function disable() {
        self.var_b5a03b21 flag::clear("enabled");
        self notify(#"disabled");
        self.var_b5a03b21 notify(#"disabled");
        foreach (var_e992b321 in self.var_63e8057) {
            if (isdefined(var_e992b321) && isdefined(var_e992b321.mdl_gameobject)) {
                var_e992b321.mdl_gameobject gameobjects::disable_object();
            }
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 2, eflags: 0x2 linked
    // Checksum 0x52e17f13, Offset: 0x3838
    // Size: 0x154
    function failure(var_f8d01c02, e_player) {
        self.var_b5a03b21 flag::set("fail");
        foreach (var_e992b321 in self.var_63e8057) {
            if (isdefined(var_e992b321) && isdefined(var_e992b321.mdl_gameobject)) {
                var_e992b321.mdl_gameobject gameobjects::enable_object();
            }
        }
        [[ self ]]->function_6084622f(e_player);
        self function_dc915c86(#"hash_6856d0c15df481c5", e_player);
        if (is_true(self.var_b5a03b21.var_8f001ddb)) {
            self thread clean_up(0, 0, var_f8d01c02);
            return 1;
        }
        return 0;
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 3, eflags: 0x2 linked
    // Checksum 0x142ae797, Offset: 0x53d0
    // Size: 0x2a2
    function clean_up(*var_a6bdeb0a, *b_success, *var_f8d01c02) {
        self.var_b5a03b21 flag::set("complete");
        self disable();
        if (!sessionmodeiscampaigngame() || !isdefined(level.var_3626dfc)) {
            foreach (var_e992b321 in self.var_63e8057) {
                if (isdefined(var_e992b321)) {
                    if (isdefined(var_e992b321.mdl_gameobject)) {
                        var_e992b321.mdl_gameobject gameobjects::destroy_object(1);
                    }
                    if (isstruct(var_e992b321) && var_e992b321 != self.var_b5a03b21) {
                        var_e992b321 struct::delete();
                    }
                }
            }
        } else {
            foreach (var_e992b321 in self.var_63e8057) {
                ent = var_e992b321;
                if (isdefined(var_e992b321.ent)) {
                    ent = var_e992b321.ent;
                }
                if (isentity(ent)) {
                    var_e992b321 thread [[ level.var_3626dfc ]](#"use");
                    if (isdefined(ent.var_645eee83)) {
                        ent.var_645eee83 = undefined;
                    }
                    if (isdefined(ent.var_e992b321)) {
                        ent.var_e992b321 = undefined;
                    }
                }
                if (isstruct(var_e992b321) && var_e992b321 != self.var_b5a03b21) {
                    var_e992b321 struct::delete();
                }
            }
        }
        self.var_63e8057 = [];
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0xb0833e20, Offset: 0x2bf8
    // Size: 0xc
    function _stop(*e_player) {
        
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0x53de078d, Offset: 0x2fe8
    // Size: 0x6a8
    function function_8650ea49(*s_minigame) {
        if (isdefined(self.var_b5a03b21.var_59c2c51d)) {
            var_f7e61134 = getentarray(self.var_b5a03b21.var_59c2c51d, "script_minigame_interact");
            var_4d8ab49e = struct::get_array(self.var_b5a03b21.var_59c2c51d, "script_minigame_interact");
            var_4d8ab49e = array::filter(var_4d8ab49e, 0, &namespace_e10de4ad::function_ad13b048);
            self.var_63e8057 = arraycombine(var_f7e61134, var_4d8ab49e, 0, 0);
        } else {
            self.var_63e8057 = array(self.var_b5a03b21);
        }
        if (isdefined(self.var_b5a03b21.script_gameobject)) {
            var_5f7d7d0d = self.var_b5a03b21.script_gameobject;
        } else {
            var_5f7d7d0d = self.m_s_bundle.gameobject;
        }
        str_objective = undefined;
        if (isdefined(self.var_b5a03b21.script_objective_override)) {
            str_objective = self.var_b5a03b21.script_objective_override;
        }
        if (self.var_2be76207 == #"any") {
            var_2b5577a7 = #"any";
        } else if (self.var_678a6f36) {
            var_2b5577a7 = self.var_2be76207;
        } else {
            var_2b5577a7 = util::get_enemy_team(self.var_2be76207);
        }
        if (!sessionmodeiscampaigngame() || !isdefined(level.var_6a7fb742)) {
            foreach (var_e992b321 in self.var_63e8057) {
                var_e992b321.var_3093fd62.var_e992b321 = self.var_678a6f36;
                var_e992b321 gameobjects::init_game_objects(var_5f7d7d0d, var_2b5577a7, undefined, undefined, undefined, str_objective);
                if (!self.var_678a6f36 && self.var_2be76207 != #"any") {
                    var_e992b321.mdl_gameobject gameobjects::allow_use(#"hash_33c49a99551acae7");
                    var_e992b321.mdl_gameobject gameobjects::set_visible(#"hash_33c49a99551acae7");
                }
                var_e992b321.mdl_gameobject.s_minigame = self.var_b5a03b21;
                var_e992b321.mdl_gameobject.b_reusable = 1;
                var_e992b321.mdl_gameobject.b_auto_reenable = 0;
                var_e992b321.mdl_gameobject gameobjects::disable_object();
                if (isdefined(self.var_b5a03b21.var_4cd30731)) {
                    var_e992b321 gameobjects::set_key_object(self.var_b5a03b21.var_4cd30731);
                    if (is_true(self.var_b5a03b21.script_destroy_keys_after_use)) {
                        var_e992b321 gameobjects::function_e7e3d146();
                    }
                }
            }
            if (self.var_63e8057.size > 1) {
                self thread function_a5f97adb();
            }
        } else {
            foreach (var_e992b321 in self.var_63e8057) {
                ent = var_e992b321;
                if (isdefined(var_e992b321.ent)) {
                    ent = var_e992b321.ent;
                }
                if (isentity(ent)) {
                    bundle = getscriptbundle(var_5f7d7d0d);
                    image = undefined;
                    if (isdefined(bundle.objective)) {
                        image = function_b91948e(bundle.objective);
                        if (image == #"") {
                            image = undefined;
                        }
                    }
                    var_4d98c3ce = bundle.str_hint;
                    var_de6f0004 = isdefined(bundle.n_trigger_use_time) ? bundle.n_trigger_use_time : 0;
                    ent.var_645eee83.ent = self;
                    ent.var_e992b321 = var_e992b321;
                    ent thread [[ level.var_6a7fb742 ]](#"use", {#var_67eb3347:&namespace_e10de4ad::function_eb28f36, #var_c9643122:1, #complete_callback:&namespace_e10de4ad::function_76974d96, #var_531201f1:&namespace_e10de4ad::function_cc2939a2, #var_be77841a:0, #var_de6f0004:var_de6f0004, #var_87c991f3:40, #var_754bedbb:0, #offset:var_e992b321.var_80778410, #var_71b9f0c0:200, #image:image, #var_4d98c3ce:var_4d98c3ce});
                }
            }
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 2, eflags: 0x2 linked
    // Checksum 0x8a185143, Offset: 0x2c78
    // Size: 0x8c
    function run(s_minigame, s_bundle) {
        self function_70bcd27(s_minigame, s_bundle);
        self function_8650ea49(s_bundle);
        [[ self ]]->function_2f0acccd();
        if (is_true(self.var_b5a03b21.script_enable_on_start)) {
            self thread enable();
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 2, eflags: 0x2 linked
    // Checksum 0xf812edcf, Offset: 0x2c58
    // Size: 0x14
    function function_89999e9c(*player, *stream) {
        
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0xb827da30, Offset: 0x4d98
    // Size: 0x46
    function function_904b9a29(var_f8d01c02) {
        s_result = undefined;
        s_result = self waittill(#"complete", "complete_" + var_f8d01c02);
        return s_result.b_success;
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0x397c2acf, Offset: 0x2c40
    // Size: 0xc
    function function_91ef58fb(*var_f8d01c02) {
        
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0x6714e4df, Offset: 0x3df0
    // Size: 0xe8
    function can_use(e_player) {
        if (!self.var_b5a03b21 flag::get("enabled")) {
            return 0;
        }
        if (!isalive(e_player) || is_true(e_player.var_f4f7edb2) || e_player scene::is_igc_active()) {
            return 0;
        }
        if (self.var_8b53fab0 == 2 && isinarray(self.var_bb0d53c3, e_player.team)) {
            return 0;
        }
        if (e_player getstance() == "prone") {
            return 0;
        }
        return 1;
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 3, eflags: 0x2 linked
    // Checksum 0x624352a3, Offset: 0x5a40
    // Size: 0x100
    function complete(e_player, b_success, team) {
        if (self.var_8b53fab0 == 2 && isdefined(team)) {
            str_notify = "complete_" + team;
        } else {
            str_notify = "complete";
        }
        if (b_success && isdefined(team)) {
            self.var_1d21e4f3[team] = 1;
        }
        self notify(str_notify, {#b_success:b_success});
        level notify(#"hash_3a50173c7262e762", {#team:team, #b_success:b_success, #var_e10de4ad:self, #e_player:e_player});
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 2, eflags: 0x2 linked
    // Checksum 0xe2f4d382, Offset: 0x46c0
    // Size: 0x284
    function function_97132cce(e_player, var_e992b321) {
        if (isdefined(e_player)) {
            gameobjects::apply_player_use_modifiers(e_player);
            e_player.var_f4f7edb2.e_player = 1;
            e_player.var_97c1c267.e_player = self.var_b5a03b21;
            self.var_b5a03b21.last_player = e_player;
            if (is_true(self.var_1c4a269e)) {
                e_player val::set(#"hash_3d4fb52e39f65c78", "freezecontrols");
            } else {
                e_player val::set(#"hash_3d4fb52e39f65c78", "freezecontrols_allowlook");
            }
            if (isdefined(var_e992b321.var_4c3fc3ed)) {
                if (!isdefined(var_e992b321.var_f8f0466c)) {
                    var_a64cfd9c = struct::get_script_bundle_instances("scene", array(var_e992b321.var_4c3fc3ed, "script_minigame_scene"));
                    /#
                        assert(var_a64cfd9c.size == 1, "<unknown string>");
                    #/
                    var_e992b321.var_f8f0466c.var_e992b321 = var_a64cfd9c[0];
                }
                var_21f2d623 = "start";
                if (scene::function_9730988a(var_e992b321.var_f8f0466c.scriptbundlename, "restart")) {
                    if (is_true(var_e992b321.var_f8f0466c.var_575fa471)) {
                        var_21f2d623 = "restart";
                    } else {
                        var_e992b321.var_f8f0466c.var_575fa471 = 1;
                    }
                }
                var_e992b321.var_f8f0466c thread scene::play(var_21f2d623, e_player);
                e_player waittilltimeout(15, #"weapon_change_complete", #"hash_8e3165e139c9b54");
            } else if (self.var_d411c5b6) {
                function_dd517e14(e_player, self.m_s_bundle.weapon, 1);
            }
            [[ self ]]->_start(e_player);
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 0, eflags: 0x2 linked
    // Checksum 0xe52bfecf, Offset: 0x3998
    // Size: 0x390
    function function_97aa68af() {
        self endon(#"disabled");
        var_b90f0ac2 = undefined;
        while (1) {
            foreach (var_e992b321 in self.var_63e8057) {
                if (isdefined(var_e992b321) && isdefined(var_e992b321.mdl_gameobject)) {
                    b_show_objective = !isdefined(var_b90f0ac2) || var_e992b321.mdl_gameobject !== var_b90f0ac2 || !self.var_fcc5a4dd;
                    var_b90f0ac2 = undefined;
                    var_e992b321.mdl_gameobject gameobjects::enable_object(undefined, b_show_objective);
                    self thread function_225651c4(var_e992b321);
                }
            }
            var_29b8f3d0 = undefined;
            var_29b8f3d0 = self waittill(#"interact");
            e_player = var_29b8f3d0.e_player;
            var_67f3d9ac = var_29b8f3d0.var_e992b321;
            var_67f3d9ac.var_1754f288.var_67f3d9ac = 1;
            var_b90f0ac2 = var_67f3d9ac.mdl_gameobject;
            foreach (var_e992b321 in self.var_63e8057) {
                if (isdefined(var_e992b321) && isdefined(var_e992b321.mdl_gameobject)) {
                    var_ffd61eb5 = var_e992b321 !== var_67f3d9ac || !self.var_fcc5a4dd;
                    var_e992b321.mdl_gameobject gameobjects::disable_object(undefined, var_ffd61eb5);
                }
            }
            if (self.var_fcc5a4dd) {
                var_67f3d9ac.mdl_gameobject gameobjects::hide_waypoint(e_player);
                n_objective_id = var_67f3d9ac.mdl_gameobject.objectiveid;
                self.var_3e29294f = objective_team(n_objective_id);
                objective_setplayerusing(n_objective_id, e_player);
                objective_setteam(n_objective_id, e_player.team);
                objective_setgamemodeflags(n_objective_id, 1);
                objective_onentity(n_objective_id, e_player);
            }
            var_f8d01c02 = e_player.team;
            if (self can_use(e_player)) {
                self thread function_e43bda22(e_player, var_f8d01c02, var_67f3d9ac);
                if (self.var_8b53fab0 == 1) {
                    self function_904b9a29(var_f8d01c02);
                }
            }
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0x8f323656, Offset: 0x5ed0
    // Size: 0xa0
    function function_9e6bea30(str_team) {
        foreach (e_player in getplayers(str_team)) {
            self function_2e32e924(e_player);
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 2, eflags: 0x2 linked
    // Checksum 0xf9b9cb92, Offset: 0x3698
    // Size: 0x196
    function success(var_f8d01c02, e_player) {
        self.var_b5a03b21 flag::set("success");
        if (isdefined(self.var_b5a03b21.script_flag_set)) {
            util::function_aebdb74f(self.var_b5a03b21.script_flag_set);
        }
        if (!is_true(self.var_7f74e09b)) {
            foreach (s_scene in self.var_a4ea555f) {
                s_scene thread scene::play();
            }
        }
        [[ self ]]->function_e28586b3(e_player);
        self function_dc915c86(#"hash_46eb32e6146cbc38", e_player);
        if (is_true(self.var_b5a03b21.script_delete)) {
            self thread clean_up(0, 1, var_f8d01c02);
            return 1;
        }
        self.var_1d21e4f3[var_f8d01c02] = 0;
        return 0;
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2468aa09, Offset: 0x2bc8
    // Size: 0xc
    function function_a466ed26(*e_player) {
        
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 0, eflags: 0x2 linked
    // Checksum 0xcd709f1b, Offset: 0x4e50
    // Size: 0x3b0
    function function_a5f97adb() {
        var_27e76749 = 0;
        while (1) {
            if (isdefined(self.var_b5a03b21.var_4cd30731) && is_true(self.var_b5a03b21.var_4cd30731.script_toggle_lock_visibility)) {
                if (!is_true(self.var_b5a03b21.var_459e9174) && !var_27e76749) {
                    var_27e76749 = 1;
                } else if (is_true(self.var_b5a03b21.var_459e9174) && var_27e76749) {
                    var_27e76749 = 0;
                }
            }
            foreach (e_player in getplayers(self.var_2be76207)) {
                if (isinarray(self.var_884c51e, e_player)) {
                    continue;
                }
                if (!self.var_b5a03b21 flag::get("enabled") && !isinarray(self.var_6697e3b5, e_player)) {
                    continue;
                }
                if (self.var_b5a03b21 flag::get("playing")) {
                    foreach (var_e992b321 in self.var_63e8057) {
                        if (is_true(var_e992b321.var_1754f288)) {
                            var_e992b321.mdl_gameobject gameobjects::show_waypoint(e_player);
                        } else {
                            var_e992b321.mdl_gameobject gameobjects::hide_waypoint(e_player);
                        }
                    }
                } else {
                    var_dbfda451 = array::get_all_closest(e_player.origin, self.var_63e8057);
                    if (!var_27e76749) {
                        var_1bfdf9f9 = array::pop_front(var_dbfda451, 0).mdl_gameobject;
                        var_1bfdf9f9 gameobjects::show_waypoint(e_player);
                    }
                    foreach (var_e992b321 in var_dbfda451) {
                        var_e992b321.mdl_gameobject gameobjects::hide_waypoint(e_player);
                    }
                }
            }
            wait(0.25);
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 2, eflags: 0x2 linked
    // Checksum 0x1c14debf, Offset: 0x4de8
    // Size: 0x5c
    function function_bb600dc2(e_player, b_success) {
        if (!isalive(e_player) || e_player inlaststand() || !b_success) {
            return 0;
        }
        return 1;
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 0, eflags: 0x2 linked
    // Checksum 0x3a9a3d1e, Offset: 0x5680
    // Size: 0x204
    function enable() {
        if (self.var_b5a03b21 flag::get("enabled")) {
            return;
        }
        if (is_true(self.var_8ddd8026)) {
            self.var_8ddd8026 = undefined;
            self.var_b5a03b21 util::function_fb80e9ca();
        }
        self reset();
        level flag::wait_till("all_players_connected");
        self.var_b5a03b21 flag::set("enabled");
        self thread function_97aa68af();
        foreach (var_e992b321 in self.var_63e8057) {
            if (isdefined(var_e992b321) && isdefined(var_e992b321.mdl_gameobject)) {
                var_e992b321.mdl_gameobject gameobjects::enable_object();
            }
        }
        if (self.var_63e8057.size == 1) {
            if (isdefined(self.var_b5a03b21.var_4cd30731) && is_true(self.var_b5a03b21.var_4cd30731.script_toggle_lock_visibility)) {
                self thread function_699f084d();
            } else {
                self function_c6a410ce();
            }
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 0, eflags: 0x2 linked
    // Checksum 0x860b07ac, Offset: 0x52c8
    // Size: 0x100
    function function_c6a410ce() {
        if (self.var_678a6f36) {
            var_d045c932 = #"any";
        } else {
            var_d045c932 = self.var_2be76207;
        }
        var_6678b09c = getplayers(var_d045c932);
        var_6678b09c = array::exclude(var_6678b09c, self.var_884c51e);
        foreach (e_player in var_6678b09c) {
            self.var_63e8057[0] gameobjects::show_waypoint(e_player);
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 2, eflags: 0x2 linked
    // Checksum 0x3f49db19, Offset: 0x43f8
    // Size: 0x12c
    function function_c72c3d4c(e_player, var_f8d01c02) {
        self endon(#"complete", "complete" + var_f8d01c02);
        waitframe(1);
        while (self function_37b8d51b(e_player) && e_player isswitchingweapons()) {
            waitframe(1);
        }
        [[ self ]]->function_a466ed26(e_player);
        while (self function_37b8d51b(e_player)) {
            [[ self ]]->function_613e65ee(e_player);
            waitframe(1);
        }
        function_d04f90d8(e_player);
        b_success = [[ self ]]->function_91ef58fb(var_f8d01c02);
        if (b_success) {
            self complete(e_player, 1, var_f8d01c02);
            return;
        }
        self complete(e_player, 0, var_f8d01c02);
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0xc421e8d9, Offset: 0x4210
    // Size: 0x158
    function function_c8ad03f4(e_player) {
        e_player endon(#"disconnect");
        if (!isdefined(e_player.var_ff7ce13b)) {
            e_player.var_ff7ce13b.e_player = [];
        }
        if (!isdefined(e_player.var_ff7ce13b[self.m_s_bundle.type])) {
            e_player.var_ff7ce13b[self.m_s_bundle.type] = 0;
        }
        if (!e_player.var_ff7ce13b[self.m_s_bundle.type] && isdefined(self.var_b4563cfa)) {
            function_5ce6ff92(e_player);
            s_waitresult = undefined;
            s_waitresult = e_player waittill(#"hash_5c86d24696b7e27", #"hash_226f6717c97d10d6", #"death", #"entering_last_stand");
            function_673813fe(e_player);
            if (s_waitresult._notify === "minigame_tutorial_complete") {
                e_player.var_ff7ce13b[self.m_s_bundle.type] = 1;
            }
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0x9f7d3796, Offset: 0x4d50
    // Size: 0x40
    function function_d04f90d8(e_player) {
        if (e_player stancebuttonpressed()) {
            e_player notify(#"hash_226f6717c97d10d6");
            return 1;
        }
        return 0;
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 2, eflags: 0x42 linked
    // Checksum 0x6200e0d9, Offset: 0x5f78
    // Size: 0x148
    function function_dc915c86(var_f0539892, ...) {
        if (isdefined(self.var_b5a03b21.var_bb0149e5) && isdefined(self.var_b5a03b21.var_bb0149e5[var_f0539892])) {
            foreach (s_callback in self.var_b5a03b21.var_bb0149e5[var_f0539892]) {
                a_args = arraycombine(vararg, s_callback.params, 1, 0);
                if (s_callback.b_thread) {
                    util::single_thread_argarray(self.var_b5a03b21, s_callback.func, a_args);
                } else {
                    util::single_func_argarray(self.var_b5a03b21, s_callback.func, a_args);
                }
            }
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 3, eflags: 0x2 linked
    // Checksum 0x7c600998, Offset: 0x4530
    // Size: 0x184
    function function_dd517e14(e_player, weapon, var_e689a5b8) {
        if (isdefined(self.var_43773582)) {
            if (self.var_43773582 === weapon) {
                return;
            }
            e_player takeweapon(self.var_43773582);
        }
        self.var_43773582 = weapon;
        if (!isdefined(level.var_f425c7f3)) {
            level.var_f425c7f3 = [];
        } else if (!isarray(level.var_f425c7f3)) {
            level.var_f425c7f3 = array(level.var_f425c7f3);
        }
        if (!isinarray(level.var_f425c7f3, weapon)) {
            level.var_f425c7f3[level.var_f425c7f3.size] = weapon;
        }
        if (isdefined(weapon)) {
            e_player giveweapon(weapon);
            e_player switchtoweapon(weapon, 1);
            if (is_true(var_e689a5b8)) {
                e_player endon(#"death");
                e_player waittill(#"weapon_change_complete");
            }
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0xbc7a3288, Offset: 0x59f8
    // Size: 0x3c
    function function_e25c39ec(e_player) {
        if (isdefined(self.var_63e8057[0])) {
            self.var_63e8057[0] gameobjects::function_f4ccb04c(e_player);
        }
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 1, eflags: 0x2 linked
    // Checksum 0x7f1eca91, Offset: 0x2c10
    // Size: 0xc
    function function_e28586b3(*e_player) {
        
    }

    // Namespace namespace_9e71c1a2/namespace_435e13ec
    // Params 3, eflags: 0x2 linked
    // Checksum 0xd3dec5e2, Offset: 0x3ee0
    // Size: 0x324
    function function_e43bda22(e_player, var_f8d01c02, var_e992b321) {
        self.var_b5a03b21 flag::set("playing");
        self.var_b5a03b21 flag::clear("success");
        self.var_b5a03b21 flag::clear("fail");
        if (isdefined(self.var_b5a03b21.script_flag_set_start)) {
            util::function_aebdb74f(self.var_b5a03b21.script_flag_set_start);
        }
        if (!isdefined(self.var_bb0d53c3)) {
            self.var_bb0d53c3 = [];
        } else if (!isarray(self.var_bb0d53c3)) {
            self.var_bb0d53c3 = array(self.var_bb0d53c3);
        }
        if (!isinarray(self.var_bb0d53c3, var_f8d01c02)) {
            self.var_bb0d53c3[self.var_bb0d53c3.size] = var_f8d01c02;
        }
        self function_49c02476(e_player);
        self function_dc915c86(#"hash_49f6733137002be7", e_player);
        if (isbot(e_player)) {
            e_player thread namespace_e10de4ad::function_ab30c8b9(self.var_b5a03b21);
        }
        self function_97132cce(e_player, var_e992b321);
        self thread function_c8ad03f4(e_player);
        self thread function_c72c3d4c(e_player, var_f8d01c02);
        b_success = self function_904b9a29(var_f8d01c02);
        self.var_b5a03b21 flag::clear("playing");
        var_e992b321.var_1754f288 = undefined;
        if (isdefined(self.var_3e29294f)) {
            if (isdefined(var_e992b321.mdl_gameobject)) {
                objective_setteam(var_e992b321.mdl_gameobject.objectiveid, self.var_3e29294f);
            }
            self.var_3e29294f = undefined;
        }
        self function_422aeb75(e_player, var_e992b321, b_success);
        if (b_success) {
            b_delete = self success(var_f8d01c02, e_player);
        } else {
            b_delete = self failure(var_f8d01c02, e_player);
        }
        if (b_delete) {
            return;
        }
        self reset(var_f8d01c02);
        self function_2e32e924(e_player);
    }

}

// Namespace namespace_e10de4ad/createstruct
// Params 1, eflags: 0x26 linked
// Checksum 0x92098603, Offset: 0x288
// Size: 0x22c
function private event_handler[createstruct] function_e0a8e4ba(struct) {
    foreach (var_8041af38, k in [0:"script_minigame_interact"]) {
        if (!isdefined(level.var_41204f29)) {
            level.var_41204f29 = [];
        } else if (!isarray(level.var_41204f29)) {
            level.var_41204f29 = array(level.var_41204f29);
        }
        if (!isinarray(level.var_41204f29, tolower(k))) {
            level.var_41204f29[level.var_41204f29.size] = tolower(k);
        }
    }
    level.var_5e990e96 = arraycopy(level.var_41204f29);
    if (isdefined(level.struct)) {
        temp = arraycopy(level.struct);
        level.struct = [];
        foreach (struct in temp) {
            struct::init(struct);
        }
    }
    function_6c07201b("CreateStruct", &function_e0a8e4ba);
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 0, eflags: 0x5
// Checksum 0x15aab6db, Offset: 0x4c0
// Size: 0x44
function private autoexec __init__system__() {
    system::register("minigames", &function_70a657d8, &postinit, undefined, undefined);
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 0, eflags: 0x6 linked
// Checksum 0xdce31adb, Offset: 0x510
// Size: 0xa4
function private function_70a657d8() {
    if (!isdefined(level.var_b6bac679)) {
        level.var_b6bac679 = [];
    }
    if (!isdefined(level.var_1e600ced)) {
        level.var_1e600ced = [];
    }
    if (!isdefined(level.var_f425c7f3)) {
        level.var_f425c7f3 = [];
    }
    function_71699fe2();
    serverfield::register("minigame_progress", 1, 3, "int", &function_98fbeac1);
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 0, eflags: 0x6 linked
// Checksum 0x13626655, Offset: 0x5c0
// Size: 0x24
function private postinit() {
    function_e6adabd1();
    function_374e4d47();
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 1, eflags: 0x0
// Checksum 0x45d34511, Offset: 0x5f0
// Size: 0x10a
function function_fef35085(kvp) {
    var_b6bac679 = self function_358b4546(kvp);
    foreach (s_minigame in var_b6bac679) {
        if (s_minigame flag::get("complete")) {
            continue;
        }
        /#
            assert(isdefined(s_minigame.var_ff3c99c5), "<unknown string>");
        #/
        [[ s_minigame.var_ff3c99c5 ]]->clean_up(1);
        s_minigame.var_ff3c99c5 = undefined;
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 2, eflags: 0x0
// Checksum 0x62007264, Offset: 0x708
// Size: 0x108
function function_903cc131(kvp, e_player) {
    var_b6bac679 = self function_358b4546(kvp);
    foreach (s_minigame in var_b6bac679) {
        if (s_minigame flag::get("complete")) {
            continue;
        }
        /#
            assert(isdefined(s_minigame.var_ff3c99c5), "<unknown string>");
        #/
        [[ s_minigame.var_ff3c99c5 ]]->function_e25c39ec(e_player);
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 3, eflags: 0x2 linked
// Checksum 0xdaa4db5e, Offset: 0x818
// Size: 0x114
function function_c09ff52(kvp, team, e_player) {
    var_b6bac679 = self function_358b4546(kvp);
    foreach (s_minigame in var_b6bac679) {
        if (s_minigame flag::get("complete")) {
            continue;
        }
        /#
            assert(isdefined(s_minigame.var_ff3c99c5), "<unknown string>");
        #/
        [[ s_minigame.var_ff3c99c5 ]]->complete(e_player, 0, team);
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 3, eflags: 0x2 linked
// Checksum 0xd479d103, Offset: 0x938
// Size: 0x114
function function_d6209a68(kvp, team, e_player) {
    var_b6bac679 = self function_358b4546(kvp);
    foreach (s_minigame in var_b6bac679) {
        if (s_minigame flag::get("complete")) {
            continue;
        }
        /#
            assert(isdefined(s_minigame.var_ff3c99c5), "<unknown string>");
        #/
        [[ s_minigame.var_ff3c99c5 ]]->complete(e_player, 1, team);
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 2, eflags: 0x0
// Checksum 0x1eaf548b, Offset: 0xa58
// Size: 0x124
function function_9f42562e(kvp, *b_success) {
    var_b6bac679 = self function_358b4546(b_success);
    foreach (s_minigame in var_b6bac679) {
        if (s_minigame flag::get("complete") || !s_minigame flag::get("enabled")) {
            continue;
        }
        /#
            assert(isdefined(s_minigame.var_ff3c99c5), "<unknown string>");
        #/
        [[ s_minigame.var_ff3c99c5 ]]->disable();
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 1, eflags: 0x2 linked
// Checksum 0x8b3d9d70, Offset: 0xb88
// Size: 0x11c
function function_fa6cc037(kvp) {
    var_b6bac679 = self function_358b4546(kvp);
    foreach (s_minigame in var_b6bac679) {
        if (s_minigame flag::get("complete") || s_minigame flag::get("enabled")) {
            continue;
        }
        /#
            assert(isdefined(s_minigame.var_ff3c99c5), "<unknown string>");
        #/
        [[ s_minigame.var_ff3c99c5 ]]->enable();
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 2, eflags: 0x0
// Checksum 0x11f48443, Offset: 0xcb0
// Size: 0x108
function function_15491eef(kvp, team) {
    var_b6bac679 = self function_358b4546(kvp);
    foreach (s_minigame in var_b6bac679) {
        if (s_minigame flag::get("complete")) {
            continue;
        }
        /#
            assert(isdefined(s_minigame.var_ff3c99c5), "<unknown string>");
        #/
        [[ s_minigame.var_ff3c99c5 ]]->reset(team);
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 2, eflags: 0x0
// Checksum 0xe9846ae8, Offset: 0xdc0
// Size: 0x108
function function_f214347f(kvp, e_player) {
    var_b6bac679 = self function_358b4546(kvp);
    foreach (s_minigame in var_b6bac679) {
        if (s_minigame flag::get("complete")) {
            continue;
        }
        /#
            assert(isdefined(s_minigame.var_ff3c99c5), "<unknown string>");
        #/
        [[ s_minigame.var_ff3c99c5 ]]->function_49c02476(e_player);
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 2, eflags: 0x0
// Checksum 0xe78a4068, Offset: 0xed0
// Size: 0x108
function function_326c59f1(kvp, e_player) {
    var_b6bac679 = self function_358b4546(kvp);
    foreach (s_minigame in var_b6bac679) {
        if (s_minigame flag::get("complete")) {
            continue;
        }
        /#
            assert(isdefined(s_minigame.var_ff3c99c5), "<unknown string>");
        #/
        [[ s_minigame.var_ff3c99c5 ]]->function_2e32e924(e_player);
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 2, eflags: 0x0
// Checksum 0x16dd2458, Offset: 0xfe0
// Size: 0x108
function function_382e90e0(kvp, str_team) {
    var_b6bac679 = self function_358b4546(kvp);
    foreach (s_minigame in var_b6bac679) {
        if (s_minigame flag::get("complete")) {
            continue;
        }
        /#
            assert(isdefined(s_minigame.var_ff3c99c5), "<unknown string>");
        #/
        [[ s_minigame.var_ff3c99c5 ]]->function_70a50147(str_team);
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 2, eflags: 0x0
// Checksum 0x1e51891f, Offset: 0x10f0
// Size: 0x108
function function_1d72032b(kvp, str_team) {
    var_b6bac679 = self function_358b4546(kvp);
    foreach (s_minigame in var_b6bac679) {
        if (s_minigame flag::get("complete")) {
            continue;
        }
        /#
            assert(isdefined(s_minigame.var_ff3c99c5), "<unknown string>");
        #/
        [[ s_minigame.var_ff3c99c5 ]]->function_9e6bea30(str_team);
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 4, eflags: 0x40
// Checksum 0x6d0f20bd, Offset: 0x1200
// Size: 0x25a
function function_eced5dc3(kvp, var_72b833ec, b_thread = 0, ...) {
    var_b6bac679 = self function_358b4546(kvp);
    foreach (s_minigame in var_b6bac679) {
        if (!isdefined(s_minigame.var_bb0149e5)) {
            s_minigame.var_bb0149e5.s_minigame = [];
        }
        if (!isdefined(s_minigame.var_bb0149e5[#"hash_49f6733137002be7"])) {
            s_minigame.var_bb0149e5[#"hash_49f6733137002be7"] = [];
        }
        var_1c8482a6 = {#params:vararg, #b_thread:b_thread, #func:var_72b833ec};
        if (!isdefined(s_minigame.var_bb0149e5[#"hash_49f6733137002be7"])) {
            s_minigame.var_bb0149e5[#"hash_49f6733137002be7"] = [];
        } else if (!isarray(s_minigame.var_bb0149e5[#"hash_49f6733137002be7"])) {
            s_minigame.var_bb0149e5[#"hash_49f6733137002be7"] = array(s_minigame.var_bb0149e5[#"hash_49f6733137002be7"]);
        }
        if (!isinarray(s_minigame.var_bb0149e5[#"hash_49f6733137002be7"], var_1c8482a6)) {
            s_minigame.var_bb0149e5[#"hash_49f6733137002be7"][s_minigame.var_bb0149e5[#"hash_49f6733137002be7"].size] = var_1c8482a6;
        }
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 4, eflags: 0x40
// Checksum 0x2c32163b, Offset: 0x1468
// Size: 0x25a
function function_b4d0d537(kvp, var_248486f4, b_thread = 0, ...) {
    var_b6bac679 = self function_358b4546(kvp);
    foreach (s_minigame in var_b6bac679) {
        if (!isdefined(s_minigame.var_bb0149e5)) {
            s_minigame.var_bb0149e5.s_minigame = [];
        }
        if (!isdefined(s_minigame.var_bb0149e5[#"hash_46eb32e6146cbc38"])) {
            s_minigame.var_bb0149e5[#"hash_46eb32e6146cbc38"] = [];
        }
        var_89d033d3 = {#params:vararg, #b_thread:b_thread, #func:var_248486f4};
        if (!isdefined(s_minigame.var_bb0149e5[#"hash_46eb32e6146cbc38"])) {
            s_minigame.var_bb0149e5[#"hash_46eb32e6146cbc38"] = [];
        } else if (!isarray(s_minigame.var_bb0149e5[#"hash_46eb32e6146cbc38"])) {
            s_minigame.var_bb0149e5[#"hash_46eb32e6146cbc38"] = array(s_minigame.var_bb0149e5[#"hash_46eb32e6146cbc38"]);
        }
        if (!isinarray(s_minigame.var_bb0149e5[#"hash_46eb32e6146cbc38"], var_89d033d3)) {
            s_minigame.var_bb0149e5[#"hash_46eb32e6146cbc38"][s_minigame.var_bb0149e5[#"hash_46eb32e6146cbc38"].size] = var_89d033d3;
        }
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 4, eflags: 0x40
// Checksum 0xec661ffd, Offset: 0x16d0
// Size: 0x25a
function function_a8acdae1(kvp, var_1ea9b69a, b_thread = 0, ...) {
    var_b6bac679 = self function_358b4546(kvp);
    foreach (s_minigame in var_b6bac679) {
        if (!isdefined(s_minigame.var_bb0149e5)) {
            s_minigame.var_bb0149e5.s_minigame = [];
        }
        if (!isdefined(s_minigame.var_bb0149e5[#"hash_6856d0c15df481c5"])) {
            s_minigame.var_bb0149e5[#"hash_6856d0c15df481c5"] = [];
        }
        var_dfab6f1b = {#params:vararg, #b_thread:b_thread, #func:var_1ea9b69a};
        if (!isdefined(s_minigame.var_bb0149e5[#"hash_6856d0c15df481c5"])) {
            s_minigame.var_bb0149e5[#"hash_6856d0c15df481c5"] = [];
        } else if (!isarray(s_minigame.var_bb0149e5[#"hash_6856d0c15df481c5"])) {
            s_minigame.var_bb0149e5[#"hash_6856d0c15df481c5"] = array(s_minigame.var_bb0149e5[#"hash_6856d0c15df481c5"]);
        }
        if (!isinarray(s_minigame.var_bb0149e5[#"hash_6856d0c15df481c5"], var_dfab6f1b)) {
            s_minigame.var_bb0149e5[#"hash_6856d0c15df481c5"][s_minigame.var_bb0149e5[#"hash_6856d0c15df481c5"].size] = var_dfab6f1b;
        }
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 1, eflags: 0x2 linked
// Checksum 0x4780dc8f, Offset: 0x1938
// Size: 0x88
function function_7dc9b185(str_type = undefined) {
    if (isdefined(str_type)) {
        var_b6bac679 = level.var_1e600ced[str_type];
    } else {
        var_b6bac679 = level.var_b6bac679;
    }
    if (isdefined(self) && isdefined(var_b6bac679) && isinarray(var_b6bac679, self)) {
        return 1;
    }
    return 0;
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 2, eflags: 0x0
// Checksum 0x9e270521, Offset: 0x19c8
// Size: 0xda
function function_ee73e88e(var_4ebba909, kvp) {
    var_b6bac679 = [];
    if (isdefined(var_4ebba909)) {
        var_b6bac679 = level.var_1e600ced[var_4ebba909];
    } else {
        var_b6bac679 = level.var_b6bac679;
    }
    if (var_b6bac679.size > 0 && isdefined(kvp)) {
        if (isarray(kvp)) {
            str_value = kvp[0];
            str_key = kvp[1];
        } else {
            str_value = kvp;
            str_key = "targetname";
        }
        var_b6bac679 = function_7b8e26b3(var_b6bac679, str_value, str_key);
    }
    return var_b6bac679;
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 1, eflags: 0x2 linked
// Checksum 0x14725028, Offset: 0x1ab0
// Size: 0xfc
function function_7afabfe2(kvp) {
    var_b6bac679 = self function_358b4546(kvp);
    /#
        assert(var_b6bac679.size == 1, "<unknown string>");
    #/
    foreach (s_minigame in var_b6bac679) {
        /#
            assert(isdefined(s_minigame.var_ff3c99c5), "<unknown string>");
        #/
        return s_minigame.var_ff3c99c5.var_8b53fab0;
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 1, eflags: 0x0
// Checksum 0x743e7097, Offset: 0x1bb8
// Size: 0xfc
function function_839316c5(kvp) {
    var_b6bac679 = self function_358b4546(kvp);
    /#
        assert(var_b6bac679.size == 1, "<unknown string>");
    #/
    foreach (s_minigame in var_b6bac679) {
        /#
            assert(isdefined(s_minigame.var_ff3c99c5), "<unknown string>");
        #/
        return s_minigame.var_ff3c99c5.var_9e3fdeff;
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 1, eflags: 0x0
// Checksum 0x55365721, Offset: 0x1cc0
// Size: 0xfc
function function_7dcd3a3b(kvp) {
    var_b6bac679 = self function_358b4546(kvp);
    /#
        assert(var_b6bac679.size == 1, "<unknown string>");
    #/
    foreach (s_minigame in var_b6bac679) {
        /#
            assert(isdefined(s_minigame.var_ff3c99c5), "<unknown string>");
        #/
        return s_minigame.var_ff3c99c5.var_6dfc35a;
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 1, eflags: 0x0
// Checksum 0xfd12d1c4, Offset: 0x1dc8
// Size: 0xfc
function function_6f5dfae7(kvp) {
    var_b6bac679 = self function_358b4546(kvp);
    /#
        assert(var_b6bac679.size == 1, "<unknown string>");
    #/
    foreach (s_minigame in var_b6bac679) {
        /#
            assert(isdefined(s_minigame.var_ff3c99c5), "<unknown string>");
        #/
        return s_minigame.var_ff3c99c5.var_63e8057;
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 1, eflags: 0x0
// Checksum 0x3d7ebce4, Offset: 0x1ed0
// Size: 0xd8
function function_c68ebedc(kvp) {
    var_b6bac679 = self function_358b4546(kvp);
    foreach (s_minigame in var_b6bac679) {
        if (s_minigame flag::get("complete")) {
            continue;
        }
        s_minigame flag::wait_till("success");
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 1, eflags: 0x0
// Checksum 0x7559fe19, Offset: 0x1fb0
// Size: 0xd8
function function_b3798a53(kvp) {
    var_b6bac679 = self function_358b4546(kvp);
    foreach (s_minigame in var_b6bac679) {
        if (s_minigame flag::get("complete")) {
            continue;
        }
        s_minigame flag::wait_till("fail");
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 1, eflags: 0x0
// Checksum 0x74155f7b, Offset: 0x2090
// Size: 0xd8
function function_3c605058(kvp) {
    var_b6bac679 = self function_358b4546(kvp);
    foreach (s_minigame in var_b6bac679) {
        if (s_minigame flag::get("complete")) {
            continue;
        }
        s_minigame flag::wait_till("playing");
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 2, eflags: 0x2 linked
// Checksum 0x4fe77b8f, Offset: 0x2170
// Size: 0x1ae
function function_63673f23(s_minigame, str_type) {
    if (!isdefined(level.var_b6bac679)) {
        level.var_b6bac679 = [];
    } else if (!isarray(level.var_b6bac679)) {
        level.var_b6bac679 = array(level.var_b6bac679);
    }
    level.var_b6bac679[level.var_b6bac679.size] = s_minigame;
    if (!isdefined(level.var_1e600ced[str_type])) {
        level.var_1e600ced[str_type] = [];
    } else if (!isarray(level.var_1e600ced[str_type])) {
        level.var_1e600ced[str_type] = array(level.var_1e600ced[str_type]);
    }
    level.var_1e600ced[str_type][level.var_1e600ced[str_type].size] = s_minigame;
    s_minigame init_flags();
    if (isdefined(s_minigame.targetname)) {
        s_minigame.str_identifier.s_minigame = s_minigame.targetname + "_" + level.var_1e600ced[str_type].size;
    } else {
        s_minigame.str_identifier.s_minigame = str_type + "_" + level.var_1e600ced[str_type].size;
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 0, eflags: 0x6 linked
// Checksum 0x1f49f50e, Offset: 0x2328
// Size: 0x13c
function private function_71699fe2() {
    foreach (str_type in array("threerings", "hackdoor", "spinners", "cryptopad", "lockpick")) {
        foreach (s_minigame in struct::get_script_bundle_instances("minigame_" + str_type)) {
            function_63673f23(s_minigame, str_type);
        }
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 0, eflags: 0x6 linked
// Checksum 0x55a36a00, Offset: 0x2470
// Size: 0x11c
function private init_flags() {
    self flag::init("playing");
    self flag::init("enabled");
    self flag::init("success");
    self flag::init("fail");
    self flag::init("complete");
    if (isdefined(self.script_flag_true)) {
        util::create_flags_and_return_tokens(self.script_flag_true);
    }
    if (isdefined(self.script_flag_set_start)) {
        util::create_flags_and_return_tokens(self.script_flag_set_start);
    }
    if (isdefined(self.script_flag_set)) {
        util::create_flags_and_return_tokens(self.script_flag_set);
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 0, eflags: 0x6 linked
// Checksum 0x40d55dfa, Offset: 0x2598
// Size: 0xf4
function private function_e6adabd1() {
    waittillframeend();
    foreach (s_minigame in level.var_b6bac679) {
        s_bundle = getscriptbundle(s_minigame.scriptbundlename);
        var_ff3c99c5 = [[ level.var_51e24470[s_bundle.type] ]]();
        [[ var_ff3c99c5 ]]->run(s_minigame, s_bundle);
    }
    level flag::set(#"hash_ead1c2fc78eb61c");
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 0, eflags: 0x6 linked
// Checksum 0xcc44e251, Offset: 0x2698
// Size: 0x1a0
function private function_374e4d47() {
    foreach (var_7418aa09 in trigger::get_all()) {
        var_178e6cb5 = [];
        foreach (s_minigame in level.var_b6bac679) {
            if (isdefined(var_7418aa09) && isdefined(var_7418aa09.target) && var_7418aa09.target === s_minigame.targetname) {
                if (!isdefined(var_178e6cb5)) {
                    var_178e6cb5 = [];
                } else if (!isarray(var_178e6cb5)) {
                    var_178e6cb5 = array(var_178e6cb5);
                }
                var_178e6cb5[var_178e6cb5.size] = s_minigame;
            }
        }
        if (var_178e6cb5.size) {
            var_7418aa09 thread function_cfb72f6(var_178e6cb5);
        }
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 1, eflags: 0x6 linked
// Checksum 0xfe429abd, Offset: 0x2840
// Size: 0x4c
function private function_cfb72f6(var_178e6cb5) {
    self endon(#"death");
    self trigger::wait_till();
    var_178e6cb5 function_fa6cc037();
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 1, eflags: 0x6 linked
// Checksum 0xfe181db, Offset: 0x2898
// Size: 0x124
function private function_ab30c8b9(s_minigame) {
    self endon(#"death", #"entering_last_stand");
    level endon(#"game_ended");
    var_d5d783f8 = [4:12, 3:10, 2:8, 1:6];
    playtime = var_d5d783f8[s_minigame.var_ff3c99c5.var_9e3fdeff];
    playtime = playtime + randomfloatrange(-1, 1);
    wait(playtime);
    if (isdefined(s_minigame)) {
        team = s_minigame function_7afabfe2() == 2 ? self.team : undefined;
        s_minigame function_d6209a68(undefined, team, self);
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 1, eflags: 0x2 linked
// Checksum 0x7cb52ceb, Offset: 0x29c8
// Size: 0x36
function function_cc2939a2(var_248cbbcf) {
    if (isdefined(self.var_645eee83)) {
        return [[ self.var_645eee83 ]]->can_use(var_248cbbcf.player);
    }
    return 0;
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 1, eflags: 0x2 linked
// Checksum 0x9482655d, Offset: 0x2a08
// Size: 0x54
function function_76974d96(var_248cbbcf) {
    if (isdefined(self.var_645eee83)) {
        thread [[ self.var_645eee83 ]]->function_e43bda22(var_248cbbcf.player, var_248cbbcf.player getteam(), self.var_e992b321);
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 1, eflags: 0x2 linked
// Checksum 0x5e9edaf3, Offset: 0x2a68
// Size: 0x38
function function_eb28f36(var_248cbbcf) {
    if (isdefined(self.var_645eee83)) {
        thread [[ self.var_645eee83 ]]->function_89999e9c(var_248cbbcf.player, 1);
    }
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 2, eflags: 0x6 linked
// Checksum 0xfe82c1b0, Offset: 0x69c0
// Size: 0x148
function private function_358b4546(kvp, str_type = undefined) {
    var_b6bac679 = [];
    if (isdefined(kvp)) {
        if (isarray(kvp)) {
            str_value = kvp[0];
            str_key = kvp[1];
        } else {
            str_value = kvp;
            str_key = "targetname";
        }
        var_b6bac679 = struct::get_array(str_value, str_key);
    } else {
        var_b6bac679 = self;
        if (!isdefined(var_b6bac679)) {
            var_b6bac679 = [];
        } else if (!isarray(var_b6bac679)) {
            var_b6bac679 = array(var_b6bac679);
        }
    }
    var_b6bac679 = array::filter(var_b6bac679, 0, &function_e154102f, str_type);
    /#
        assert(var_b6bac679.size, "<unknown string>");
    #/
    return var_b6bac679;
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 2, eflags: 0x6 linked
// Checksum 0x633511a, Offset: 0x6b10
// Size: 0x2a
function private function_e154102f(var_ac1d69cd, str_type) {
    return var_ac1d69cd function_7dc9b185(str_type);
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 2, eflags: 0x6 linked
// Checksum 0xa635155b, Offset: 0x6b48
// Size: 0x2c
function private function_ad13b048(var_ac1d69cd, str_type) {
    return !var_ac1d69cd function_7dc9b185(str_type);
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 4, eflags: 0x0
// Checksum 0xf8fe5221, Offset: 0x6b80
// Size: 0x44
function function_27a6b226(*var_92e792ba, *var_72b833ec, *var_248486f4, *var_1ea9b69a) {
    /#
        assert("<unknown string>");
    #/
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 7, eflags: 0x0
// Checksum 0x142b89c5, Offset: 0x6bd0
// Size: 0x5c
function function_7a0057f8(*dud, *var_e66d95c, *var_208a7da3, *var_e71d96e, *var_20b57df5, *var_ecf31671, *var_c722cad1) {
    /#
        assert("<unknown string>");
    #/
}

// Namespace namespace_e10de4ad/namespace_435e13ec
// Params 2, eflags: 0x2 linked
// Checksum 0x7bdfa47c, Offset: 0x6c38
// Size: 0xfc
function function_98fbeac1(*oldval, newval) {
    e_player = self;
    if (is_true(e_player.var_f4f7edb2) && e_player == e_player.var_97c1c267.last_player) {
        s_minigame = e_player.var_97c1c267;
        var_847964c = float(newval) / float(8 - 1);
        s_minigame.var_ff3c99c5 notify(#"hash_31b0e663a554dde6", {#var_477d921d:var_847964c, #var_e10de4ad:e_player.var_97c1c267, #e_player:e_player});
    }
}
