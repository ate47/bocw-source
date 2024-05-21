// Atian COD Tools GSC CW decompiler test
#using script_3751b21462a54a7d;
#using script_6990cca6577c3abc;
#using scripts\zm\ai\zm_ai_mimic.gsc;
#using scripts\zm\ai\zm_ai_abom.gsc;
#using scripts\zm_common\zm_player.gsc;
#using script_58860a35d0555f74;
#using script_44c2a1259e14bef1;
#using script_76a8f964e4309959;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\zm\zm_ai_raz.gsc;
#using scripts\zm\ai\zm_ai_avogadro.gsc;
#using scripts\zm\ai\zm_ai_soa.gsc;
#using scripts\zm\ai\zm_ai_mechz.gsc;
#using script_2ddf7d76494fb52;
#using script_4acbbbcdc7ef16a0;
#using scripts\zm\zm_tungsten.gsc;
#using scripts\zm_common\zm_fasttravel.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using script_72401f526ba71638;
#using scripts\zm_common\zm_weapons.gsc;
#using script_3a88f428c6d8ef90;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\zm_common\zm_sq.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\killstreaks\killstreak_vehicle.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using script_48f7c4ab73137f8;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using script_20683aa2e054ec89;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\damagefeedback_shared.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;

#namespace namespace_95c839d1;

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x6b47c4a, Offset: 0xdd8
// Size: 0x834
function init() {
    clientfield::register("world", "" + #"hash_2d23097ea9cdf1ec", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_33b8059f5b3f18b1", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_d92501ab1efcdd", 28000, getminbitcountfornum(3), "int");
    clientfield::register("scriptmover", "" + #"hash_2fc89133ccd7b0df", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_399e2afd773621df", 28000, getminbitcountfornum(5), "int");
    clientfield::register("scriptmover", "" + #"hash_43c4039b38b89f56", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_4e6fb90b199f15be", 28000, 1, "int");
    clientfield::register("actor", "" + #"hash_30c23067d05386c1", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_9ef13a567692f32", 28000, getminbitcountfornum(2), "int");
    clientfield::register("scriptmover", "" + #"hash_25155d60768d46e4", 28000, 1, "int");
    clientfield::register("vehicle", "" + #"hash_469f6acd46f13b91", 28000, getminbitcountfornum(3), "int");
    clientfield::register("scriptmover", "" + #"hash_1e031a294b1db7de", 28000, getminbitcountfornum(2), "int");
    clientfield::register("scriptmover", "" + #"hash_4259da501d7deb09", 28000, getminbitcountfornum(2), "int");
    clientfield::register("scriptmover", "" + #"hash_1c5cfe17e34e65aa", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_1875c2a7206c5167", 28000, 1, "int");
    clientfield::register("toplayer", "" + #"hash_159dc2bca63111fc", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_5c06c72dd28da75a", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_442272758f2bf947", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_5b501a097c44b478", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_665a7e18e3f5f896", 28000, getminbitcountfornum(2), "int");
    clientfield::register("scriptmover", "" + #"hash_196f85a0e323cdeb", 28000, getminbitcountfornum(2), "int");
    clientfield::register("world", "" + #"hash_6c47531bdf01d52c", 28000, 1, "int");
    clientfield::register("world", "" + #"hash_78e149e0b7cb80e8", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_6cc7dece6cee40e1", 28000, 1, "int");
    level.var_87a3c4d1 = zm_roots_health_bar::register();
    level.var_75a7d6 = struct::get(#"hash_5d6c93a20ed01a31");
    level.var_75a7d6.var_c20e460e = spawnstruct();
    foreach (struct in struct::get_array(level.var_75a7d6.target)) {
        if (struct.var_fdd68e6f === #"stand") {
            level.var_75a7d6.s_boss = struct;
        }
        if (struct.var_fdd68e6f === #"hash_415e056a9db2491e" || struct.var_fdd68e6f === #"hash_413c156a9d957de8") {
            level thread function_bc175096(struct);
        }
    }
    if (!zm_utility::is_ee_enabled()) {
        return;
    }
    level thread function_f11e26f9();
    /#
        level thread devgui_setup();
    #/
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x6444bf8b, Offset: 0x1618
// Size: 0xa4
function function_f11e26f9() {
    level endon(#"end_game", #"hash_2145c074d359b87d");
    level flag::wait_till(#"hash_5c1b510c0cd18144");
    level thread function_6a3704cb(level.var_75a7d6.s_boss);
    level thread function_bb7202a2();
    level thread function_e324aad2();
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x3e3c60f4, Offset: 0x16c8
// Size: 0x1c84
function function_79868b3b(b_skipped) {
    level flag::set(#"hash_2145c074d359b87d");
    level flag::clear(#"hash_21921ed511559aa3");
    level flag::set(#"pause_round_timeout");
    level flag::set(#"hold_round_end");
    level flag::clear(#"spawn_zombies");
    level flag::set(#"hash_5fff608f0c23a53f");
    level flag::set(#"hash_14ac8b5a5e403984");
    level.var_43fb4347 = "sprint";
    callback::on_ai_spawned(&on_ai_spawned);
    n_players = getplayers().size;
    if (n_players < 1) {
        n_players = 1;
    } else if (n_players > 4) {
        n_players = 4;
    }
    switch (n_players) {
    case 1:
        var_772164a6 = 15;
        var_3887bcb7 = 10;
        break;
    case 2:
        var_772164a6 = 17;
        var_3887bcb7 = 15;
        break;
    case 3:
        var_772164a6 = 19;
        var_3887bcb7 = 20;
        break;
    case 4:
        var_772164a6 = 21;
        var_3887bcb7 = 25;
        break;
    }
    level.var_75a7d6.var_772164a6 = var_772164a6;
    level.var_75a7d6.var_c20e460e.var_3887bcb7 = var_3887bcb7;
    level.var_75a7d6.var_cd0c8367 = [];
    level.var_75a7d6.var_e97bb91a = [];
    level.var_75a7d6.var_6359299f = [];
    level thread zm_utility::function_9ad5aeb1(0, 1, 0, 0);
    level clientfield::set("" + #"hash_5a36f05cbdf2580", 5);
    level thread namespace_297ae820::function_3528419f(1);
    exploder::exploder("lgt_env_boss_left_arm_long");
    exploder::exploder("lgt_env_boss_right_arm_long");
    function_e324aad2();
    level.var_dbf9c70d = &function_dbf9c70d;
    vol_forced = getent("vol_end_fight_forced", "targetname");
    if (isdefined(vol_forced)) {
        namespace_1fd59e39::function_4a05e25f(vol_forced);
    }
    level.var_97e461d4 = "end_fight_chopper_gunner";
    level clientfield::set("" + #"hash_2d23097ea9cdf1ec", 1);
    level.var_75a7d6.var_e890a8bc = [];
    level.var_75a7d6.var_8f1d54b1 = [];
    level.var_75a7d6.var_fc32fb8d = [];
    level.var_75a7d6.var_1aa34baf = [];
    level.var_75a7d6.var_4b6d9c4a = [];
    level.var_75a7d6.var_df953d57 = [];
    level.var_75a7d6.var_1ec89ecd[#"ground"] = 0;
    level.var_75a7d6.var_1ec89ecd[#"mine"] = 0;
    level.var_75a7d6.var_1ec89ecd[#"frost"] = 0;
    level.var_75a7d6.var_1ec89ecd[#"eyes"] = 0;
    level.var_75a7d6.var_815eeaa4[#"zombie"] = [];
    level.var_75a7d6.var_815eeaa4[#"tormentor"] = [];
    level.var_75a7d6.var_815eeaa4[#"tempest"] = [];
    level.var_75a7d6.var_815eeaa4[#"hash_643d498546885532"] = [];
    level.var_75a7d6.var_815eeaa4[#"raz"] = [];
    level.var_75a7d6.var_815eeaa4[#"mechz"] = [];
    level.var_75a7d6.var_c20e460e.var_529d63dd = [];
    level.var_75a7d6.var_c20e460e.var_8a337eba = 0;
    level thread function_60c68651();
    foreach (struct in struct::get_array(level.var_75a7d6.target)) {
        if (isdefined(struct.var_fdd68e6f)) {
            switch (struct.var_fdd68e6f) {
            case #"hash_3bffc6cd547d8d78":
                level.var_75a7d6.var_101a7fee = struct;
                level.var_75a7d6.var_101a7fee.var_a56afaf6 = function_5db5dfb(level.var_75a7d6.var_101a7fee);
                break;
            case #"hash_3b99decd5427030e":
                level.var_75a7d6.var_9ec26d20 = struct;
                level.var_75a7d6.var_9ec26d20.var_a56afaf6 = function_5db5dfb(level.var_75a7d6.var_9ec26d20);
                break;
            case #"frost":
                if (!isdefined(level.var_75a7d6.var_64e1d42a)) {
                    level.var_75a7d6.var_64e1d42a = [];
                } else if (!isarray(level.var_75a7d6.var_64e1d42a)) {
                    level.var_75a7d6.var_64e1d42a = array(level.var_75a7d6.var_64e1d42a);
                }
                level.var_75a7d6.var_64e1d42a[level.var_75a7d6.var_64e1d42a.size] = struct;
                break;
            case #"mine":
                if (!isdefined(level.var_75a7d6.var_97f69bd4)) {
                    level.var_75a7d6.var_97f69bd4 = [];
                } else if (!isarray(level.var_75a7d6.var_97f69bd4)) {
                    level.var_75a7d6.var_97f69bd4 = array(level.var_75a7d6.var_97f69bd4);
                }
                level.var_75a7d6.var_97f69bd4[level.var_75a7d6.var_97f69bd4.size] = struct;
                break;
            case #"portal":
                level.var_75a7d6.var_be9eb6ec = struct;
                break;
            case #"float":
                if (!isdefined(level.var_75a7d6.var_c20e460e.var_529d63dd)) {
                    level.var_75a7d6.var_c20e460e.var_529d63dd = [];
                } else if (!isarray(level.var_75a7d6.var_c20e460e.var_529d63dd)) {
                    level.var_75a7d6.var_c20e460e.var_529d63dd = array(level.var_75a7d6.var_c20e460e.var_529d63dd);
                }
                level.var_75a7d6.var_c20e460e.var_529d63dd[level.var_75a7d6.var_c20e460e.var_529d63dd.size] = struct;
                break;
            case #"hash_10c37584f73ee50b":
            case #"spawn":
                var_9893d55e = [#"zombie", #"tormentor", #"tempest", #"hash_643d498546885532", #"raz", #"mimic", #"mechz", #"abom"];
                if (isstring(struct.blacklist)) {
                    var_d7cf1504 = strtok(struct.blacklist, ", ");
                    if (isarray(var_d7cf1504)) {
                        foreach (var_929141c6 in var_d7cf1504) {
                            arrayremovevalue(var_9893d55e, var_929141c6);
                        }
                    }
                }
                if (struct.var_fdd68e6f == #"spawn") {
                    foreach (var_791e9349 in var_9893d55e) {
                        if (!isdefined(level.var_75a7d6.var_815eeaa4[var_791e9349])) {
                            level.var_75a7d6.var_815eeaa4[var_791e9349] = [];
                        } else if (!isarray(level.var_75a7d6.var_815eeaa4[var_791e9349])) {
                            level.var_75a7d6.var_815eeaa4[var_791e9349] = array(level.var_75a7d6.var_815eeaa4[var_791e9349]);
                        }
                        level.var_75a7d6.var_815eeaa4[var_791e9349][level.var_75a7d6.var_815eeaa4[var_791e9349].size] = struct;
                    }
                } else {
                    foreach (var_791e9349 in var_9893d55e) {
                        if (!isdefined(level.var_75a7d6.var_1d10f036[var_791e9349])) {
                            level.var_75a7d6.var_1d10f036[var_791e9349] = [];
                        } else if (!isarray(level.var_75a7d6.var_1d10f036[var_791e9349])) {
                            level.var_75a7d6.var_1d10f036[var_791e9349] = array(level.var_75a7d6.var_1d10f036[var_791e9349]);
                        }
                        level.var_75a7d6.var_1d10f036[var_791e9349][level.var_75a7d6.var_1d10f036[var_791e9349].size] = struct;
                    }
                }
                break;
            case #"hash_413c156a9d957de8":
            case #"hash_415e056a9db2491e":
                var_1280faf3 = struct.var_1280faf3;
                if (isvehicle(var_1280faf3)) {
                    zm_sq::function_266d66eb(#"hash_380134b80e0ab939", var_1280faf3, 0, undefined, #"cannon", undefined, &function_ab16ea40);
                }
                foreach (var_51e7d54e in struct::get_array(struct.target)) {
                    if (var_51e7d54e.var_fdd68e6f === #"mount") {
                        s_unitrigger = var_51e7d54e zm_unitrigger::create(&function_401c03c5, 96);
                        zm_unitrigger::function_89380dda(s_unitrigger, 0);
                        s_unitrigger.var_98bf27a1 = struct;
                        var_51e7d54e.var_98bf27a1 = struct;
                        level thread function_38e2dcaa(var_51e7d54e);
                        break;
                    }
                }
                break;
            case #"warp":
                if (!isdefined(level.var_75a7d6.var_62b6205d)) {
                    level.var_75a7d6.var_62b6205d = [];
                } else if (!isarray(level.var_75a7d6.var_62b6205d)) {
                    level.var_75a7d6.var_62b6205d = array(level.var_75a7d6.var_62b6205d);
                }
                level.var_75a7d6.var_62b6205d[level.var_75a7d6.var_62b6205d.size] = struct;
                break;
            case #"hash_38777979a8348e98":
                level.var_75a7d6.var_b62c0fab = struct;
                break;
            case #"hash_1f6d12a9a1fb37b6":
                if (!isdefined(level.var_75a7d6.var_4d537044)) {
                    level.var_75a7d6.var_4d537044 = [];
                } else if (!isarray(level.var_75a7d6.var_4d537044)) {
                    level.var_75a7d6.var_4d537044 = array(level.var_75a7d6.var_4d537044);
                }
                level.var_75a7d6.var_4d537044[level.var_75a7d6.var_4d537044.size] = struct;
                break;
            case #"impact":
                if (!isdefined(level.var_75a7d6.var_58004de6)) {
                    level.var_75a7d6.var_58004de6 = [];
                } else if (!isarray(level.var_75a7d6.var_58004de6)) {
                    level.var_75a7d6.var_58004de6 = array(level.var_75a7d6.var_58004de6);
                }
                level.var_75a7d6.var_58004de6[level.var_75a7d6.var_58004de6.size] = struct;
                for (var_d2ee34ea = struct; true; var_d2ee34ea = var_d2ee34ea.s_next) {
                    mdl_clip = getent(var_d2ee34ea.target, "targetname");
                    if (isdefined(mdl_clip)) {
                        var_d2ee34ea.mdl_clip = mdl_clip;
                        var_d2ee34ea.mdl_clip notsolid();
                    }
                    var_70a0a8d3 = struct::get_array(var_d2ee34ea.target);
                    foreach (var_539fda25 in var_70a0a8d3) {
                        if (isdefined(var_539fda25.var_fdd68e6f)) {
                            switch (var_539fda25.var_fdd68e6f) {
                            case #"impact":
                                var_d2ee34ea.s_next = var_539fda25;
                                break;
                            case #"hash_5644b3f69f4e3ee5":
                                if (!isdefined(var_d2ee34ea.var_255e01f1)) {
                                    var_d2ee34ea.var_255e01f1 = [];
                                } else if (!isarray(var_d2ee34ea.var_255e01f1)) {
                                    var_d2ee34ea.var_255e01f1 = array(var_d2ee34ea.var_255e01f1);
                                }
                                var_d2ee34ea.var_255e01f1[var_d2ee34ea.var_255e01f1.size] = var_539fda25;
                                break;
                            }
                        }
                    }
                    if (!isstruct(var_d2ee34ea.s_next)) {
                        break;
                    }
                }
                break;
            }
        }
    }
    level.var_75a7d6.var_64e1d42a = array::sort_by_script_int(level.var_75a7d6.var_64e1d42a, 1);
    level.var_75a7d6.var_97f69bd4 = array::sort_by_script_int(level.var_75a7d6.var_97f69bd4, 1);
    level.var_75a7d6.var_c20e460e.var_529d63dd = array::sort_by_script_int(level.var_75a7d6.var_c20e460e.var_529d63dd, 1);
    level.var_75a7d6.var_c20e460e.var_6615b9fe = array::randomize(arraycopy(level.var_75a7d6.var_c20e460e.var_529d63dd));
    level.var_75a7d6.var_62b6205d = array::sort_by_script_int(level.var_75a7d6.var_62b6205d, 1);
    level.var_75a7d6.var_4d537044 = array::sort_by_script_int(level.var_75a7d6.var_4d537044, 1);
    level.var_75a7d6 flag::set(#"hash_15ced8000939a79b");
    level.var_75a7d6 flag::set(#"hash_71a8b0cba966f837");
    level thread function_658da77b();
    if (b_skipped) {
        return;
    }
    var_92bcfbc2 = level.var_75a7d6.var_c20e460e.var_529d63dd[0];
    if (isstruct(var_92bcfbc2)) {
        var_92bcfbc2 flag::set(#"disabled");
    }
    function_bb7202a2();
    level.var_75a7d6.var_c20e460e.var_2644aca3 clientfield::set("" + #"hash_25155d60768d46e4", 1);
    callback::on_ai_spawned(&function_1f80b24d);
    foreach (ai_zombie in getaiteamarray(level.zombie_team)) {
        if (isalive(ai_zombie)) {
            ai_zombie thread function_1f80b24d();
        }
    }
    callback::on_ai_killed(&function_e543d649);
    zm_sq::function_266d66eb(#"hash_1c8b4e14ac690a43", level.var_75a7d6.var_c20e460e.var_2644aca3, 0, #"hash_90d41432e6bd428", #"maxis", undefined, &function_a4650866);
    function_4ba59ffe();
    level thread function_768e1bba();
    level.var_75a7d6.var_8d31700f = int(4000);
    level.var_75a7d6.var_3f956940 = level.var_75a7d6.var_8d31700f;
    level.var_75a7d6.var_79aa3ebd = function_5f36e356(100000, 240000);
    level.var_75a7d6.var_6a7d3d39 = int(level.var_75a7d6.var_79aa3ebd * 2);
    level.var_75a7d6.var_9b4b863f = level.var_75a7d6.var_6a7d3d39;
    foreach (e_player in getplayers()) {
        level.var_87a3c4d1 zm_roots_health_bar::set_health(e_player, 1);
        level.var_87a3c4d1 zm_roots_health_bar::set_armor(e_player, 1);
        level.var_87a3c4d1 zm_roots_health_bar::function_74adcd8a(e_player, 1);
        if (!level.var_87a3c4d1 zm_roots_health_bar::is_open(e_player)) {
            level.var_87a3c4d1 zm_roots_health_bar::open(e_player);
        }
    }
    function_6a3704cb(level.var_75a7d6.s_boss);
    foreach (var_a07ea3db in [#"left", #"right"]) {
        level thread function_7ed3f4dd(var_a07ea3db);
    }
    callback::on_spawned(&function_775a15ec);
    callback::on_player_killed(&function_da1d0aae);
    foreach (e_player in function_a1ef346b()) {
        e_player thread function_775a15ec();
    }
    level thread function_85f68dd4();
    level.var_75a7d6 flag::wait_till(#"defeated");
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0xf96fc9f3, Offset: 0x3358
// Size: 0x774
function function_ec198408(b_skipped, *var_19e802fa) {
    level.var_75a7d6 flag::set(#"defeated");
    zm_utility::function_3e549e65();
    level.var_57cc29f3 = &function_57cc29f3;
    callback::on_spawned(&function_e954999a);
    function_480e30e5();
    foreach (e_player in getplayers()) {
        if (level.var_87a3c4d1 zm_roots_health_bar::is_open(e_player)) {
            level.var_87a3c4d1 zm_roots_health_bar::close(e_player);
        }
    }
    zm_sq::objective_complete(#"cannon");
    zm_sq::objective_complete(#"maxis");
    callback::remove_on_ai_spawned(&function_1f80b24d);
    callback::remove_on_ai_killed(&function_e543d649);
    foreach (ai_zombie in getaiteamarray(level.zombie_team)) {
        if (isdefined(ai_zombie)) {
            ai_zombie notify(#"hash_6c8affb0cdce9e5");
            ai_zombie clientfield::set("" + #"hash_30c23067d05386c1", 0);
        }
    }
    function_9a39a4c();
    if (isdefined(level.var_75a7d6.var_c20e460e.var_2644aca3)) {
        level.var_75a7d6.var_c20e460e.var_2644aca3 clientfield::set("" + #"hash_9ef13a567692f32", 1);
    }
    if (isdefined(level.var_75a7d6.var_a17b2556) && isdefined(level.var_75a7d6.var_b9f89aa6)) {
        level.var_75a7d6.var_a17b2556 clientfield::set("" + #"hash_399e2afd773621df", 4);
        level.var_75a7d6.var_b9f89aa6 clientfield::set("" + #"hash_399e2afd773621df", 4);
        level thread function_a39582f9(3);
    }
    if (!var_19e802fa) {
        boss_outro();
    } else {
        level clientfield::set("" + #"hash_5a36f05cbdf2580", 6);
    }
    level clientfield::set("" + #"hash_2d23097ea9cdf1ec", 0);
    level flag::set(#"main_quest_completed");
    level.var_75a7d6 notify(#"hash_21eabf998a71487a");
    level thread zm_utility::function_9ad5aeb1(0, 0, 1, 0);
    if (isdefined(level.var_75a7d6.mdl_head)) {
        level.var_75a7d6.mdl_head delete();
    }
    if (isdefined(level.var_75a7d6.mdl_body)) {
        level.var_75a7d6.mdl_body delete();
    }
    if (isarray(level.var_75a7d6.var_e890a8bc)) {
        foreach (var_ce34262e in level.var_75a7d6.var_e890a8bc) {
            if (isdefined(var_ce34262e)) {
                var_ce34262e deletedelay();
            }
        }
    }
    function_968e2ead();
    function_df782b45();
    if (isdefined(level.var_75a7d6.var_c20e460e.var_2644aca3)) {
        level.var_75a7d6.var_c20e460e.var_2644aca3 delete();
    }
    if (isdefined(level.var_75a7d6.var_c20e460e.mdl_anchor)) {
        level.var_75a7d6.var_c20e460e.mdl_anchor delete();
    }
    level.var_75a7d6.var_b9f89aa6 clientfield::set("" + #"hash_399e2afd773621df", 0);
    if (isdefined(level.var_75a7d6.var_a17b2556)) {
        level.var_75a7d6.var_a17b2556 delete();
    }
    if (isdefined(level.var_75a7d6.var_b9f89aa6)) {
        level.var_75a7d6.var_b9f89aa6 scene::stop(1);
        if (isdefined(level.var_75a7d6.var_b9f89aa6)) {
            level.var_75a7d6.var_b9f89aa6 delete();
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x2fbef4f8, Offset: 0x3ad8
// Size: 0x10
function function_57cc29f3(*e_player) {
    return true;
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x1f6ed936, Offset: 0x3af0
// Size: 0x194
function function_dbf9c70d() {
    self endon(#"disconnect");
    vol_forced = getent("vol_end_fight_forced", "targetname");
    if (isdefined(vol_forced)) {
        if (level.var_75a7d6 flag::get(#"intermission") && isarray(level.var_75a7d6.var_62b6205d) && !self istouching(vol_forced)) {
            return array::random(level.var_75a7d6.var_62b6205d);
        }
        s_spawn = zm_player::check_for_valid_spawn_near_team(self, 1);
        if (isvec(s_spawn.origin) && istouching(s_spawn.origin, vol_forced)) {
            return s_spawn;
        }
    }
    if (isarray(level.var_75a7d6.var_4d537044)) {
        return array::random(level.var_75a7d6.var_4d537044);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xa7d4d5f, Offset: 0x3c90
// Size: 0xac
function function_85f68dd4() {
    level endon(#"end_game");
    level thread namespace_c097de49::function_8f85d169();
    music::setmusicstate("boss_part1");
    wait(2);
    level thread play_intro_vo();
    wait(5);
    level thread function_4346157c();
    wait(1);
    level thread function_2dc91d9f();
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x8f689d80, Offset: 0x3d48
// Size: 0xb4
function play_intro_vo() {
    level endon(#"end_game");
    level zm_vo::function_7622cb70(#"hash_3afdc6bb5d5fd312");
    wait(1);
    level function_fee3db9("bf_intro_fskn_2");
    wait(3);
    level zm_vo::function_7622cb70(#"hash_16988f895a9e8803");
    wait(1);
    level.var_75a7d6 flag::set(#"hash_287677ffb745b0e2");
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x777de456, Offset: 0x3e08
// Size: 0xd8
function function_480e30e5() {
    foreach (e_player in getplayers()) {
        if (e_player.sessionstate === "spectator") {
            e_player thread [[ level.spawnplayer ]]();
            continue;
        }
        if (e_player laststand::player_is_in_laststand()) {
            e_player thread zm_laststand::auto_revive(e_player);
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x68d15b40, Offset: 0x3ee8
// Size: 0x1e4
function function_e324aad2() {
    if (level.var_75a7d6 flag::get(#"hash_63ecc9843447325b")) {
        return;
    }
    level.var_75a7d6 flag::set(#"hash_63ecc9843447325b");
    foreach (struct in struct::get_array(level.var_75a7d6.target)) {
        if (struct.var_fdd68e6f === #"capture") {
            level.var_75a7d6.var_a17b2556 = util::spawn_model(#"hash_705f86d0aeb3ebdb", struct.origin, struct.angles);
            level.var_75a7d6.var_b9f89aa6 = util::spawn_model(#"hash_43a78e1e93887332", struct.origin, struct.angles);
            a_ents[#"eye"] = level.var_75a7d6.var_b9f89aa6;
            level.var_75a7d6.var_b9f89aa6 scene::init(#"hash_66fb9111d689a98e", a_ents);
            break;
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x8603b654, Offset: 0x40d8
// Size: 0x56c
function function_6a3704cb(s_spawn) {
    if (!isstruct(s_spawn) || level.var_75a7d6 flag::get(#"spawned")) {
        return;
    }
    level.var_75a7d6 flag::set(#"spawned");
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated");
    level.var_75a7d6.mdl_body = util::spawn_model(#"hash_b7cea188cbd2e02", s_spawn.origin, s_spawn.angles);
    level.var_75a7d6.mdl_body setforcenocull();
    level.var_75a7d6.mdl_body clientfield::set("" + #"hash_2fc89133ccd7b0df", 1);
    level.var_75a7d6.mdl_body clientfield::set("" + #"hash_33b8059f5b3f18b1", 1);
    level.var_75a7d6.mdl_body clientfield::set("" + #"hash_d92501ab1efcdd", 1);
    foreach (str_tag in ["j_tentacle_root_le", "j_tentacle_root_ri", "j_spineupper_tentacle_root", "j_spinelower_tentacle_root"]) {
        level.var_75a7d6.mdl_body hidepart(str_tag, "", 1);
    }
    level.var_75a7d6.mdl_anchor = util::spawn_model(#"tag_origin", level.var_75a7d6.mdl_body gettagorigin("j_head"), level.var_75a7d6.mdl_body gettagangles("j_head"));
    level.var_75a7d6.mdl_anchor linkto(level.var_75a7d6.mdl_body, "j_head");
    level.var_75a7d6.mdl_anchor setforcenocull();
    level.var_75a7d6.mdl_head = util::spawn_model(#"hash_49275da2ee5d6c3f", level.var_75a7d6.mdl_body gettagorigin("j_head"), level.var_75a7d6.mdl_body gettagangles("j_head"));
    level.var_75a7d6.mdl_head setforcenocull();
    level.var_75a7d6.mdl_head linkto(level.var_75a7d6.mdl_anchor);
    level.var_75a7d6.mdl_head clientfield::set("" + #"hash_2fc89133ccd7b0df", 1);
    a_ents = [];
    a_ents[#"boss"] = level.var_75a7d6.mdl_body;
    s_spawn thread scene::play(#"hash_5ffc9256a4340dcb", "idle_both_arms", a_ents);
    a_ents = [];
    a_ents[#"head"] = level.var_75a7d6.mdl_head;
    level.var_75a7d6.mdl_anchor thread scene::play(#"hash_4dae4f482421b3ed", "idle", a_ents);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0x674bccb3, Offset: 0x4650
// Size: 0x18a
function function_5f36e356(n_health_min, n_health_max) {
    n_round = level.round_number;
    if (!isdefined(n_round)) {
        n_round = 20;
    }
    if (n_round < 20) {
        n_round = 20;
    } else if (n_round > 50) {
        n_round = 50;
    }
    n_percent = 1 - (50 - n_round) / 30;
    if (n_percent < 0) {
        n_percent = 0;
    } else if (n_percent > 1) {
        n_percent = 1;
    }
    n_players = getplayers().size;
    if (n_players < 1) {
        n_players = 1;
    } else if (n_players > 4) {
        n_players = 4;
    }
    var_1bb081d7 = 1 + (n_players - 1) * 0.5;
    if (n_health_min < n_health_max) {
        var_c835c552 = int(lerpfloat(n_health_min, n_health_max, n_percent) * var_1bb081d7);
    } else {
        var_c835c552 = int(n_health_min * var_1bb081d7);
    }
    return var_c835c552;
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 13, eflags: 0x2 linked
// Checksum 0x28581883, Offset: 0x47e8
// Size: 0x3b2
function get_weapon_damage(inflictor, attacker, damage, flags, meansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype) {
    if (weapon.offhandslot === "Tactical grenade" || weapon.offhandslot === "Lethal grenade" || weapon.offhandslot === "Special" || killstreaks::is_killstreak_weapon(weapon)) {
        if (!zm_equipment::function_4f51b6ea(weapon, meansofdeath) && meansofdeath !== "MOD_MELEE") {
            damage = zm_equipment::function_379f6b5d(damage);
            if (killstreaks::is_killstreak_weapon(weapon)) {
                damage *= 0.5;
                if (weapon.firetype === "Minigun") {
                    damage *= 0.5;
                }
            } else {
                damage *= 0.1;
            }
        }
    }
    item = attacker item_inventory::function_230ceec4(weapon);
    if (isdefined(item)) {
        var_528363fd = self namespace_b61a349a::function_b3496fde(inflictor, attacker, damage, flags, meansofdeath, weapon, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype);
        damage += var_528363fd;
        if (meansofdeath != "MOD_MELEE") {
            var_4d1602de = zm_weapons::function_d85e6c3a(item.itementry);
            damage *= var_4d1602de;
            if (isdefined(item.paplv)) {
                var_645b8bb = zm_weapons::function_896671d5(item.itementry.weapon, item.paplv);
                if (isplayer(attacker)) {
                    if (namespace_6fc19861::function_1b662278(weapon) && meansofdeath !== "MOD_EXPLOSIVE" || namespace_6fc19861::function_565c848a(weapon)) {
                        var_645b8bb = attacker namespace_6fc19861::function_e5469f27(weapon, namespace_6fc19861::function_565c848a(weapon));
                    }
                }
                if (isdefined(var_645b8bb)) {
                    damage *= var_645b8bb;
                }
            }
        }
    } else {
        var_fd72ea28 = self namespace_b61a349a::function_b3496fde(inflictor, attacker, damage, flags, meansofdeath, weapon, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype);
        damage += var_fd72ea28;
    }
    damage = namespace_1b527536::actor_damage_override(inflictor, attacker, damage, flags, meansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype);
    if (zm_weapons::is_wonder_weapon(weapon)) {
        damage *= 0.3;
    }
    return int(damage);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0xd041816f, Offset: 0x4ba8
// Size: 0x8c
function function_51846e52(meansofdeath, weapon) {
    if (meansofdeath === "MOD_HEAD_SHOT" || meansofdeath === "MOD_RIFLE_BULLET" || meansofdeath === "MOD_PISTOL_BULLET") {
        var_6e859516 = 1500;
    } else if (weapon.guidedmissiletype === "Ballistic") {
        var_6e859516 = 1500;
    } else {
        var_6e859516 = 3000;
    }
    return var_6e859516;
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x61158e5a, Offset: 0x4c40
// Size: 0xac4
function function_7ed3f4dd(var_a07ea3db) {
    if (!isdefined(var_a07ea3db)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated");
    switch (var_a07ea3db) {
    case #"left":
        str_tag = "j_shoulder_le";
        var_3d9f256d = "tag_fx_crystal_shoulder_le";
        break;
    case #"right":
        str_tag = "j_shoulder_ri";
        var_3d9f256d = "tag_fx_crystal_shoulder_ri";
        break;
    case #"stomach":
        str_tag = "tag_fx_crystal_belly";
        var_3d9f256d = "tag_fx_crystal_belly";
        break;
    case #"head":
        str_tag = "j_head";
        var_3d9f256d = "tag_head_crystal_fx";
        break;
    }
    if (!isdefined(str_tag) || str_tag == "") {
        return;
    }
    while (true) {
        var_ce34262e = spawncollision(#"hash_45a1036c3bd2f2da", "roots_shoot", level.var_75a7d6.mdl_body gettagorigin(str_tag), (0, 0, 0));
        if (isdefined(var_ce34262e)) {
            break;
        }
        waitframe(1);
    }
    var_ce34262e endon(#"death");
    if (!isdefined(level.var_75a7d6.var_e890a8bc)) {
        level.var_75a7d6.var_e890a8bc = [];
    } else if (!isarray(level.var_75a7d6.var_e890a8bc)) {
        level.var_75a7d6.var_e890a8bc = array(level.var_75a7d6.var_e890a8bc);
    }
    level.var_75a7d6.var_e890a8bc[level.var_75a7d6.var_e890a8bc.size] = var_ce34262e;
    var_ce34262e setteam(#"axis");
    var_ce34262e linkto(level.var_75a7d6.mdl_body, str_tag);
    var_ce34262e flag::set(#"is_weakpoint");
    var_ce34262e val::set(#"hash_1e031a294b1db7de", "allowdeath", 0);
    var_ce34262e val::set(#"hash_1e031a294b1db7de", "takedamage", 1);
    var_ce34262e.health = 1;
    var_a8c53cf5 = 0;
    var_7c8baf2 = level.var_75a7d6.var_79aa3ebd;
    var_fd8ded06 = {#maxhealth:1000, #health:1000};
    var_90796363 = 0;
    function_773cc50a(var_a07ea3db, 1);
    while (!var_90796363) {
        s_waitresult = var_ce34262e waittill(#"damage");
        e_attacker = s_waitresult.attacker;
        var_9b676843 = isdefined(e_attacker) && e_attacker flag::get(#"hash_737ee671a33a84b7");
        if (isplayer(e_attacker) || var_9b676843) {
            damage = s_waitresult.amount;
            weapon = s_waitresult.weapon;
            inflictor = s_waitresult.inflictor;
            flags = s_waitresult.flags;
            meansofdeath = s_waitresult.mod;
            var_fd90b0bb = s_waitresult.var_fd90b0bb;
            vpoint = s_waitresult.position;
            vdir = s_waitresult.direction;
            shitloc = s_waitresult.shitloc;
            psoffsettime = s_waitresult.psoffsettime;
            boneindex = s_waitresult.boneindex;
            surfacetype = s_waitresult.surfacetype;
            if (!var_9b676843) {
                damage = var_ce34262e get_weapon_damage(inflictor, e_attacker, damage, flags, meansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype);
                if (!zm_weapons::is_wonder_weapon(weapon)) {
                    var_6e859516 = function_51846e52(meansofdeath, weapon);
                    if (isdefined(var_6e859516) && damage > var_6e859516) {
                        damage = var_6e859516;
                    }
                }
            }
            var_982513ee = 0;
            var_db2a8c7a = 3;
            if (var_9b676843) {
                if (var_a8c53cf5) {
                    var_db2a8c7a = 2;
                } else {
                    var_982513ee = 1;
                    level thread function_f83c329c(#"hash_34751c9f81d0e94f", 0, 0.5, {#str_id:#"hash_34751c9f81d0e94f", #n_time:60}, 0);
                }
            } else if (var_a8c53cf5) {
                var_982513ee = 1;
            }
            if (var_982513ee) {
                var_db2a8c7a = 4;
                damage = 0;
            }
            var_51de3a6c = 0;
            if (!var_982513ee) {
                if (!var_a8c53cf5) {
                    level.var_75a7d6.var_9b4b863f = int(max(level.var_75a7d6.var_9b4b863f - damage, 0));
                    function_f3ac29fc();
                    var_7c8baf2 = int(max(var_7c8baf2 - damage, 0));
                    if (var_7c8baf2 <= 0) {
                        var_51de3a6c = 1;
                        function_773cc50a(var_a07ea3db, 2);
                        if (isdefined(var_3d9f256d)) {
                            level.var_75a7d6.mdl_body hidepart(var_3d9f256d, "", 1);
                        }
                        foreach (e_player in getplayers()) {
                            e_player function_bc82f900(#"hash_7a31ddffe230057b");
                        }
                    }
                } else {
                    level.var_75a7d6.var_3f956940 = int(max(level.var_75a7d6.var_3f956940 - 25, 0));
                    function_73f95a0c();
                    var_fd8ded06.health = int(max(var_fd8ded06.health - 25, 0));
                    if (var_fd8ded06.health <= 0) {
                        var_90796363 = 1;
                        var_51de3a6c = 1;
                    } else {
                        level thread function_a617da35(var_fd8ded06);
                    }
                }
            }
            e_player = e_attacker;
            if (!isplayer(e_player)) {
                e_player = e_attacker getseatoccupant(0);
            }
            if (isplayer(e_player)) {
                if (!var_982513ee) {
                    var_fa2da0a = undefined;
                    if (!var_a8c53cf5) {
                        flags = 2048;
                        var_fa2da0a = "armor";
                        if (var_51de3a6c) {
                            var_a8c53cf5 = 1;
                            var_ce34262e.var_426947c4 = 1;
                            var_fa2da0a = "armorBroke";
                        } else {
                            var_ce34262e.var_426947c4 = undefined;
                        }
                    }
                    e_player thread damagefeedback::update(meansofdeath, e_player, var_fa2da0a, weapon, var_ce34262e, psoffsettime, shitloc, var_51de3a6c, flags, 0);
                }
                level thread hud::function_c9800094(e_player, vpoint, damage, var_db2a8c7a);
            }
        }
    }
    var_fd8ded06 notify(#"destroyed");
    level thread function_29c5c96a(var_a07ea3db);
    arrayremovevalue(level.var_75a7d6.var_e890a8bc, var_ce34262e);
    if (isdefined(var_ce34262e)) {
        var_ce34262e deletedelay();
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xbca1ea0e, Offset: 0x5710
// Size: 0x118
function function_f3ac29fc() {
    var_867fbcae = level.var_75a7d6.var_9b4b863f / level.var_75a7d6.var_6a7d3d39;
    foreach (e_player in getplayers()) {
        if (level.var_87a3c4d1 zm_roots_health_bar::is_open(e_player)) {
            level.var_87a3c4d1 zm_roots_health_bar::set_armor(e_player, var_867fbcae);
            if (var_867fbcae <= 0) {
                level.var_87a3c4d1 zm_roots_health_bar::function_74adcd8a(e_player, 0);
            }
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xfdf7cda3, Offset: 0x5830
// Size: 0x1a8
function function_73f95a0c() {
    var_867fbcae = level.var_75a7d6.var_3f956940 / level.var_75a7d6.var_8d31700f;
    if (var_867fbcae <= 0) {
        foreach (e_player in getplayers()) {
            if (level.var_87a3c4d1 zm_roots_health_bar::is_open(e_player)) {
                level.var_87a3c4d1 zm_roots_health_bar::close(e_player);
            }
        }
        return;
    }
    foreach (e_player in getplayers()) {
        if (level.var_87a3c4d1 zm_roots_health_bar::is_open(e_player)) {
            level.var_87a3c4d1 zm_roots_health_bar::set_health(e_player, var_867fbcae);
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xa7966b8c, Offset: 0x59e0
// Size: 0x1a6
function function_a617da35(var_fd8ded06) {
    if (!isstruct(var_fd8ded06)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated");
    var_fd8ded06 notify(#"regen");
    var_fd8ded06 endon(#"regen", #"destroyed");
    wait(2);
    level thread function_6074ced6();
    var_f4fd3a25 = 1000 / 3 / float(function_60d95f53()) / 1000;
    while (var_fd8ded06.health < var_fd8ded06.maxhealth) {
        var_e852d8c3 = var_f4fd3a25;
        if (var_fd8ded06.health + var_e852d8c3 > var_fd8ded06.maxhealth) {
            var_e852d8c3 = var_fd8ded06.maxhealth - var_fd8ded06.health;
        }
        level.var_75a7d6.var_3f956940 += var_e852d8c3;
        var_fd8ded06.health += var_e852d8c3;
        function_73f95a0c();
        waitframe(1);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xb7c76932, Offset: 0x5b90
// Size: 0x174
function function_6074ced6() {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated");
    if (level.var_75a7d6 flag::get(#"hash_2df8e5e552b6acc4")) {
        return;
    }
    level.var_75a7d6 flag::set(#"hash_2df8e5e552b6acc4");
    level function_f83c329c(#"hash_68fef8aec4a2ac38", 0, 0, {#str_id:#"hash_68fef8aec4a2ac38", #n_time:5}, 0);
    wait(0.5);
    level function_f83c329c(#"hash_3c3b7fabf09654bf", 1, 0, {#str_id:#"hash_3c3b7fabf09654bf", #n_time:60});
    level.var_75a7d6 flag::clear(#"hash_2df8e5e552b6acc4");
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xf4169ccb, Offset: 0x5d10
// Size: 0xc42
function function_29c5c96a(var_a07ea3db) {
    if (!isdefined(var_a07ea3db)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated");
    level.var_75a7d6 notify(#"hash_5aa439133f7cf591");
    level.var_75a7d6 endon(#"hash_5aa439133f7cf591");
    level thread function_e788990d();
    level thread function_b17579();
    level thread function_b852652a();
    switch (var_a07ea3db) {
    case #"left":
        str_shot = "left_arm_break";
        str_flag = #"hash_12678fff6a404d29";
        var_fae691b = ["j_elbow_le", "j_shouldertwist_le", "j_shoulder_skin_le"];
        var_ae4e0e20 = ["j_tentacle_root_le"];
        level.var_75a7d6 flag::clear(#"hash_25f8eaaceeb93d67");
        level.var_75a7d6 flag::clear(#"hash_1bd28fc130c9aad2");
        level.var_75a7d6.mdl_body clientfield::set("" + #"hash_d92501ab1efcdd", 2);
        exploder::kill_exploder("lgt_env_boss_left_arm_long");
        exploder::exploder("lgt_env_boss_left_arm_short");
        function_968e2ead();
        if (level.var_75a7d6 flag::get(#"hash_48bc8345fad29b74")) {
            level thread function_3d5eabf(str_shot);
            return;
        }
        var_f0d1671b = #"mine";
        level.var_75a7d6.var_a17b2556 clientfield::set("" + #"hash_399e2afd773621df", 1);
        level.var_75a7d6.var_b9f89aa6 clientfield::set("" + #"hash_399e2afd773621df", 1);
        level thread function_a39582f9(1);
        break;
    case #"right":
        str_shot = "right_arm_break";
        str_flag = #"hash_48bc8345fad29b74";
        var_fae691b = ["j_elbow_ri", "j_shouldertwist_ri", "j_shoulder_skin_ri"];
        var_ae4e0e20 = ["j_tentacle_root_ri"];
        level.var_75a7d6 flag::clear(#"hash_25f8eaaceeb93d67");
        level.var_75a7d6 flag::clear(#"hash_1bd28fc130c9aad2");
        level.var_75a7d6.mdl_body clientfield::set("" + #"hash_d92501ab1efcdd", 3);
        exploder::kill_exploder("lgt_env_boss_right_arm_long");
        exploder::exploder("lgt_env_boss_right_arm_short");
        if (level.var_75a7d6 flag::get(#"hash_12678fff6a404d29")) {
            level thread function_3d5eabf(str_shot);
            return;
        }
        var_f0d1671b = #"frost";
        level.var_75a7d6.var_a17b2556 clientfield::set("" + #"hash_399e2afd773621df", 1);
        level.var_75a7d6.var_b9f89aa6 clientfield::set("" + #"hash_399e2afd773621df", 1);
        level thread function_a39582f9(1);
        break;
    case #"stomach":
        str_shot = "stomach_break";
        str_flag = #"hash_17c454e32450dd92";
        var_ae4e0e20 = ["j_spineupper_tentacle_root", "j_spinelower_tentacle_root"];
        level thread function_315805c0();
        level.var_75a7d6 notify(#"hash_21eabf998a71487a");
        level thread function_658da77b(1);
        level thread function_4b5e11a8(60);
        level.var_75a7d6.var_a17b2556 clientfield::set("" + #"hash_399e2afd773621df", 3);
        level.var_75a7d6.var_b9f89aa6 clientfield::set("" + #"hash_399e2afd773621df", 3);
        level thread function_a39582f9(2);
        break;
    case #"head":
        level.var_75a7d6 flag::set(#"defeated");
        return;
    }
    if (isdefined(str_flag)) {
        level.var_75a7d6 flag::set(str_flag);
    }
    if (level.var_75a7d6 flag::get_all([#"hash_12678fff6a404d29", #"hash_48bc8345fad29b74"])) {
        level.var_75a7d6 flag::set(#"hash_4ae068100a9d8c76");
    }
    if (isdefined(str_shot)) {
        function_773cc50a(var_a07ea3db, 0);
        if (isarray(var_fae691b)) {
            foreach (str_tag in var_fae691b) {
                level.var_75a7d6.mdl_body hidepart(str_tag, "", 1);
            }
        }
        if (isarray(var_ae4e0e20)) {
            foreach (str_tag in var_ae4e0e20) {
                level.var_75a7d6.mdl_body showpart(str_tag, "", 1);
            }
        }
        foreach (e_player in getplayers()) {
            e_player function_bc82f900(#"hash_2933dbe91eb483ab");
        }
        a_ents[#"boss"] = level.var_75a7d6.mdl_body;
        level.var_75a7d6.s_boss scene::play(#"hash_5ffc9256a4340dcb", str_shot, a_ents);
        level thread function_a3a141fe();
    }
    if (level.var_75a7d6 flag::get(#"hash_4ae068100a9d8c76")) {
        level.var_75a7d6.var_6a7d3d39 = level.var_75a7d6.var_79aa3ebd;
        level.var_75a7d6.var_9b4b863f = level.var_75a7d6.var_6a7d3d39;
        function_f3ac29fc();
        foreach (e_player in getplayers()) {
            if (level.var_87a3c4d1 zm_roots_health_bar::is_open(e_player)) {
                level.var_87a3c4d1 zm_roots_health_bar::function_74adcd8a(e_player, 1);
            }
        }
    }
    if (!level.var_75a7d6 flag::get(#"hash_30aaa6a4e90a9527")) {
        if (level.var_75a7d6 flag::get(#"hash_17c454e32450dd92")) {
            level thread function_7ed3f4dd(#"head");
        }
        if (!isdefined(var_f0d1671b)) {
            level thread function_4346157c();
            return;
        }
        switch (var_f0d1671b) {
        case #"mine":
            level thread function_a6da15be();
            break;
        case #"frost":
            level thread function_ecf643d2();
            break;
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x3b0ec899, Offset: 0x6960
// Size: 0x84
function function_4b5e11a8(n_time) {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated");
    wait(n_time);
    level.var_75a7d6 notify(#"hash_21eabf998a71487a");
    function_6c567aad();
    level thread function_658da77b();
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x89e5d2ad, Offset: 0x69f0
// Size: 0x4c
function function_968e2ead() {
    mdl_clip = getent("end_fight_stand_clip_le", "targetname");
    if (isdefined(mdl_clip)) {
        mdl_clip delete();
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x23c42284, Offset: 0x6a48
// Size: 0x4c
function function_df782b45() {
    mdl_clip = getent("end_fight_stand_clip_main", "targetname");
    if (isdefined(mdl_clip)) {
        mdl_clip delete();
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xdec4e691, Offset: 0x6aa0
// Size: 0x8a
function function_2c0b8bf0(var_a07ea3db) {
    if (!isdefined(var_a07ea3db)) {
        return;
    }
    switch (var_a07ea3db) {
    case #"left":
        return "tag_fx_crystal_shoulder_le";
    case #"right":
        return "tag_fx_crystal_shoulder_ri";
    case #"stomach":
        return "tag_fx_crystal_belly";
    case #"head":
        return "tag_head_crystal_fx";
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0x3511a529, Offset: 0x6b38
// Size: 0x214
function function_773cc50a(var_a07ea3db, n_cf) {
    if (!isdefined(n_cf)) {
        return;
    }
    str_tag = function_2c0b8bf0(var_a07ea3db);
    if (!isdefined(str_tag)) {
        return;
    }
    mdl_fx = level.var_75a7d6.var_8f1d54b1[var_a07ea3db];
    if (!isdefined(mdl_fx) && n_cf > 0) {
        level.var_75a7d6.var_8f1d54b1[var_a07ea3db] = util::spawn_model(#"tag_origin", level.var_75a7d6.mdl_body gettagorigin(str_tag), level.var_75a7d6.mdl_body gettagangles(str_tag));
        mdl_fx = level.var_75a7d6.var_8f1d54b1[var_a07ea3db];
        mdl_fx linkto(level.var_75a7d6.mdl_body, str_tag);
    }
    if (isdefined(mdl_fx)) {
        str_cf = "" + #"hash_1e031a294b1db7de";
        if (var_a07ea3db == #"head") {
            str_cf = "" + #"hash_4259da501d7deb09";
        }
        mdl_fx clientfield::set(str_cf, n_cf);
        if (n_cf <= 0) {
            level thread function_d1acf958(var_a07ea3db);
            level.var_75a7d6.var_8f1d54b1[var_a07ea3db] = undefined;
            mdl_fx thread util::delayed_delete(1);
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x1ef86584, Offset: 0x6d58
// Size: 0xe8
function function_3f9ee018() {
    foreach (var_a07ea3db in [#"left", #"right", #"stomach", #"head"]) {
        function_773cc50a(var_a07ea3db, 0);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xe5b9a7ef, Offset: 0x6e48
// Size: 0x9c
function function_d1acf958(var_a07ea3db) {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"hash_610f67b9b5f9b320");
    for (i = 0; i < 20; i++) {
        level thread function_4a0ebe24(var_a07ea3db);
        wait(randomfloatrange(0.1, 0.2));
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x6b3c595c, Offset: 0x6ef0
// Size: 0x644
function function_4a0ebe24(var_a07ea3db) {
    str_tag = function_2c0b8bf0(var_a07ea3db);
    if (!isdefined(str_tag)) {
        return;
    }
    v_start = level.var_75a7d6.mdl_body gettagorigin(str_tag);
    if (var_a07ea3db == #"left" || var_a07ea3db == #"right") {
        v_start -= (0, 0, randomfloatrange(50, 250));
    }
    v_end = level.var_75a7d6.var_b9f89aa6 gettagorigin("tag_fx");
    n_total_time = distance(v_start, v_end) / 1000;
    if (n_total_time <= 0) {
        return;
    }
    mdl_fx = util::spawn_model(#"tag_origin", v_start);
    mdl_fx endon(#"death");
    mdl_fx clientfield::set("" + #"hash_1c5cfe17e34e65aa", 1);
    if (var_a07ea3db == #"stomach") {
        mdl_fx moveto(v_end, n_total_time);
        mdl_fx waittill(#"movedone");
    } else {
        var_f8c30dac = undefined;
        var_8a4df751 = undefined;
        v_facing = vectortoangles(v_end - v_start);
        v_right = anglestoright(v_facing);
        v_up = anglestoup(v_facing);
        var_6ff1e8c = 1000;
        var_58fa6e59 = 2000;
        var_b8005499 = 0;
        var_d0d079ca = 500;
        switch (var_a07ea3db) {
        case #"left":
            var_6ff1e8c *= -1;
            var_58fa6e59 *= -1;
            break;
        case #"head":
            var_f8c30dac = 0;
            break;
        }
        if (!isdefined(var_f8c30dac)) {
            if (var_6ff1e8c == var_58fa6e59) {
                var_f8c30dac = var_6ff1e8c;
            } else if (var_6ff1e8c < var_58fa6e59) {
                var_f8c30dac = randomfloatrange(var_6ff1e8c, var_58fa6e59);
            } else {
                var_f8c30dac = randomfloatrange(var_58fa6e59, var_6ff1e8c);
            }
        }
        if (!isdefined(var_8a4df751)) {
            if (var_b8005499 == var_d0d079ca) {
                var_8a4df751 = var_b8005499;
            } else if (var_b8005499 < var_d0d079ca) {
                var_8a4df751 = randomfloatrange(var_b8005499, var_d0d079ca);
            } else {
                var_8a4df751 = randomfloatrange(var_d0d079ca, var_b8005499);
            }
        }
        var_480c0d5e = randomfloatrange(0.1, 0.2);
        var_422b06ce = randomfloatrange(0.4, 0.5);
        n_start_time = gettime();
        while (true) {
            n_time_passed = float(gettime() - n_start_time) / 1000;
            n_time_left = n_total_time - n_time_passed;
            if (n_time_left <= 0) {
                break;
            }
            n_percent = n_time_passed / n_total_time;
            if (n_percent < 0) {
                n_percent = 0;
            } else if (n_percent > 1) {
                n_percent = 1;
            }
            var_2738d349 = v_end;
            if (n_percent <= var_480c0d5e) {
                var_32b2288d = n_percent / var_480c0d5e;
                var_d7015271 = lerpfloat(0, var_f8c30dac, var_32b2288d);
                var_5b6e1d07 = lerpfloat(0, var_8a4df751, var_32b2288d);
            } else if (n_percent <= var_422b06ce) {
                var_32b2288d = (n_percent - var_480c0d5e) / var_422b06ce;
                var_d7015271 = lerpfloat(var_f8c30dac, 0, var_32b2288d);
                var_5b6e1d07 = lerpfloat(var_8a4df751, 0, var_32b2288d);
            } else {
                var_d7015271 = 0;
                var_5b6e1d07 = 0;
            }
            var_2738d349 += v_right * var_d7015271;
            var_2738d349 += v_up * var_5b6e1d07;
            mdl_fx moveto(var_2738d349, n_time_left);
            waitframe(1);
        }
    }
    mdl_fx clientfield::set("" + #"hash_1c5cfe17e34e65aa", 0);
    wait(1);
    mdl_fx delete();
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x7151ec3, Offset: 0x7540
// Size: 0x1f0
function function_a39582f9(n_level = 1) {
    var_433eb1d7 = level.var_75a7d6.var_b9f89aa6;
    if (!isdefined(var_433eb1d7)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"hash_77857ae271f589c7");
    var_433eb1d7 endon(#"death");
    level.var_75a7d6.var_307f9dcc = n_level;
    if (level.var_75a7d6 flag::get(#"hash_76938fcd446f94b5")) {
        return;
    }
    level.var_75a7d6 flag::set(#"hash_76938fcd446f94b5");
    a_ents[#"eye"] = var_433eb1d7;
    while (true) {
        if (!isdefined(level.var_75a7d6.var_307f9dcc)) {
            return;
        }
        switch (level.var_75a7d6.var_307f9dcc) {
        case 1:
            str_shot = "Shot 1";
            break;
        case 2:
            str_shot = "Shot 2";
            break;
        case 3:
            str_shot = "Shot 3";
            break;
        }
        if (!isdefined(str_shot)) {
            return;
        }
        var_433eb1d7 scene::play(#"hash_66fb9111d689a98e", str_shot, a_ents);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x7b7584d5, Offset: 0x7738
// Size: 0x1fc
function function_768e1bba() {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated");
    level.var_75a7d6 flag::wait_till_any([#"hash_12678fff6a404d29", #"hash_48bc8345fad29b74"]);
    level.var_75a7d6 flag::increment(#"priority_vo");
    wait(2);
    level function_f83c329c(#"hash_6c4553137f1098ec", 0, 0, undefined, 0, 1);
    wait(2);
    level function_fee3db9("bf_fsnrtv75_fskn_0", 1);
    level.var_75a7d6 flag::decrement(#"priority_vo");
    level.var_75a7d6 flag::wait_till(#"hash_17c454e32450dd92");
    level.var_75a7d6 flag::increment(#"priority_vo");
    wait(2);
    level function_f83c329c(#"hash_6c4553137f1098ec", 0, 0, undefined, 0, 1);
    wait(2);
    level function_fee3db9("bf_fsnrtv25_fskn_0", 1);
    level.var_75a7d6 flag::decrement(#"priority_vo");
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xa7e10b81, Offset: 0x7940
// Size: 0x83e
function function_60c68651() {
    level.var_75a7d6.var_a6d734ec = [];
    foreach (str_id in [#"ground", #"frost", #"mine", #"eyes", #"hash_3ae5c3c2322b1c03", #"hash_34751c9f81d0e94f", #"hash_68fef8aec4a2ac38", #"hash_6c4553137f1098ec", #"hash_3c3b7fabf09654bf", #"hash_7a617db243a2fb6f", #"hash_2543c53a17547f61", #"hash_1b81e1ba19f7f9be", #"hash_1b88d2ba19fdfeef", #"hash_1b714dba19ea3e0f"]) {
        switch (str_id) {
        case #"ground":
            a_str_vo = ["bf_electric_fskn_0", "bf_electric_fskn_1", "bf_electric_fskn_2", "bf_electric_fskn_3", "bf_electric_fskn_4"];
            break;
        case #"frost":
            a_str_vo = ["frost_blast_0", "frost_blast_1", "frost_blast_2", "frost_blast_3", "frost_blast_4"];
            break;
        case #"mine":
            a_str_vo = ["energy_mine_0", "energy_mine_1", "energy_mine_2", "energy_mine_3", "energy_mine_4"];
            break;
        case #"eyes":
            a_str_vo = ["eyebeam_0", "eyebeam_1", "eyebeam_2", "eyebeam_3", "eyebeam_4"];
            break;
        case #"hash_3ae5c3c2322b1c03":
            a_str_vo = [#"hash_1139311a3d32dce0", #"hash_1139341a3d32e1f9", #"hash_1139331a3d32e046", #"hash_1139361a3d32e55f", #"hash_1139351a3d32e3ac"];
            break;
        case #"hash_34751c9f81d0e94f":
            a_str_vo = [#"hash_691134558077e6dc", #"hash_691137558077ebf5", #"hash_691136558077ea42"];
            break;
        case #"hash_68fef8aec4a2ac38":
            a_str_vo = [#"hash_4f9857b4179d2b4b", #"hash_4f9858b4179d2cfe", #"hash_4f9859b4179d2eb1", #"hash_4f985ab4179d3064", #"hash_4f985bb4179d3217"];
            break;
        case #"hash_6c4553137f1098ec":
            a_str_vo = [#"hash_5420ae71d07e0a9d", #"hash_5420ab71d07e0584", #"hash_5420ac71d07e0737", #"hash_5420a971d07e021e", #"hash_5420aa71d07e03d1"];
            break;
        case #"hash_3c3b7fabf09654bf":
            a_str_vo = ["hregen_fskn_0", "hregen_fskn_1", "hregen_fskn_2", "hregen_fskn_3", "hregen_fskn_4"];
            break;
        case #"hash_7a617db243a2fb6f":
            a_str_vo = ["end_fight_maxis_move_01", "end_fight_maxis_move_02", "end_fight_maxis_move_03", "end_fight_maxis_move_04"];
            break;
        case #"hash_2543c53a17547f61":
            a_str_vo = ["end_fight_maxis_taunt_100_01", "end_fight_maxis_taunt_100_02", "end_fight_maxis_taunt_100_03"];
            break;
        case #"hash_1b81e1ba19f7f9be":
            a_str_vo = ["end_fight_maxis_taunt_75_01", "end_fight_maxis_taunt_75_02", "end_fight_maxis_taunt_75_03"];
            break;
        case #"hash_1b88d2ba19fdfeef":
            a_str_vo = ["end_fight_maxis_taunt_50_01", "end_fight_maxis_taunt_50_02", "end_fight_maxis_taunt_50_03"];
            break;
        case #"hash_1b714dba19ea3e0f":
            a_str_vo = ["end_fight_maxis_taunt_25_01", "end_fight_maxis_taunt_25_02", "end_fight_maxis_taunt_25_03"];
            break;
        }
        if (isdefined(a_str_vo)) {
            level.var_75a7d6.a_str_vo[str_id][#"all"] = array::randomize(a_str_vo);
            level.var_75a7d6.a_str_vo[str_id][#"remaining"] = arraycopy(level.var_75a7d6.a_str_vo[str_id][#"all"]);
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 6, eflags: 0x2 linked
// Checksum 0x93660ca5, Offset: 0x8188
// Size: 0x3b4
function function_f83c329c(str_id, var_2adc0309 = 0, n_delay = 0.5, var_591caa3e, var_127a2393 = 1, var_a78cf3d4 = 0) {
    if (!(isdefined(str_id) && isdefined(level.var_75a7d6.a_str_vo[str_id]))) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated");
    if (n_delay > 0) {
        wait(n_delay);
    }
    if (!level.var_75a7d6 flag::get(#"hash_287677ffb745b0e2")) {
        return;
    }
    if (!var_a78cf3d4 && level.var_75a7d6 flag::get(#"priority_vo")) {
        return;
    }
    if (!var_2adc0309 && function_ef8d1319()) {
        return;
    }
    if (level.var_75a7d6.a_str_vo[str_id][#"remaining"].size <= 0) {
        if (!var_127a2393) {
            return;
        } else {
            level.var_75a7d6.a_str_vo[str_id][#"remaining"] = arraycopy(level.var_75a7d6.a_str_vo[str_id][#"all"]);
        }
    }
    str_vo = level.var_75a7d6.a_str_vo[str_id][#"remaining"][0];
    var_cb85d3b5 = var_591caa3e.str_id;
    n_cooldown = var_591caa3e.n_time;
    b_cooldown = isdefined(var_cb85d3b5) && isdefined(n_cooldown) && n_cooldown > 0;
    if (b_cooldown) {
        if (is_true(level.var_75a7d6.var_a6d734ec[var_cb85d3b5])) {
            return;
        }
        if (!isdefined(level.var_75a7d6.var_a6d734ec[var_cb85d3b5])) {
            level.var_75a7d6.var_a6d734ec[var_cb85d3b5] = 0;
        }
        level.var_75a7d6.var_a6d734ec[var_cb85d3b5]++;
    }
    arrayremoveindex(level.var_75a7d6.a_str_vo[str_id][#"remaining"], 0);
    if (var_2adc0309) {
        level function_fee3db9(str_vo);
    } else {
        level zm_vo::function_7622cb70(str_vo, 0, 0);
    }
    if (b_cooldown) {
        level thread function_dbbcebc8(var_cb85d3b5, n_cooldown);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xd336bc28, Offset: 0x8548
// Size: 0xb4
function function_ef8d1319() {
    foreach (e_player in getplayers()) {
        if (zm_vo::is_player_speaking(e_player) || zm_vo::function_c10c4064(e_player)) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0xbb6629a0, Offset: 0x8608
// Size: 0x70
function function_dbbcebc8(var_cb85d3b5, n_cooldown) {
    wait(n_cooldown);
    level.var_75a7d6.var_a6d734ec[var_cb85d3b5] = int(max(0, level.var_75a7d6.var_a6d734ec[var_cb85d3b5] - 1));
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0xbffaca7d, Offset: 0x8680
// Size: 0x194
function function_fee3db9(str_shot, var_a78cf3d4 = 0) {
    if (!isdefined(str_shot)) {
        return;
    }
    if (!var_a78cf3d4 && level.var_75a7d6 flag::get_any([#"priority_vo", #"hash_4e953b3843bae375"])) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 flag::increment(#"hash_4e953b3843bae375");
    a_ents[#"head"] = level.var_75a7d6.mdl_head;
    level.var_75a7d6.mdl_anchor scene::play(#"hash_4dae4f482421b3ed", str_shot, a_ents);
    level.var_75a7d6.mdl_anchor thread scene::play(#"hash_4dae4f482421b3ed", "idle", a_ents);
    waitframe(1);
    level.var_75a7d6 flag::decrement(#"hash_4e953b3843bae375");
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x829873e5, Offset: 0x8820
// Size: 0x13a4
function function_3d5eabf(str_shot) {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated");
    level.var_75a7d6 flag::set(#"hash_12678fff6a404d29");
    level.var_75a7d6 flag::set(#"hash_48bc8345fad29b74");
    level.var_75a7d6 flag::set(#"hash_4ae068100a9d8c76");
    foreach (var_ce34262e in level.var_75a7d6.var_e890a8bc) {
        if (isdefined(var_ce34262e)) {
            var_ce34262e deletedelay();
        }
    }
    function_3f9ee018();
    var_fae691b = ["j_elbow_le", "j_shouldertwist_le", "j_shoulder_skin_le", "j_elbow_ri", "j_shouldertwist_ri", "j_shoulder_skin_ri", "tag_fx_crystal_shoulder_le", "tag_fx_crystal_shoulder_ri"];
    foreach (var_676e0814 in var_fae691b) {
        level.var_75a7d6.mdl_body hidepart(var_676e0814, "", 1);
    }
    var_ae4e0e20 = ["j_tentacle_root_le", "j_tentacle_root_ri"];
    foreach (var_eabfe72c in var_ae4e0e20) {
        level.var_75a7d6.mdl_body showpart(var_eabfe72c, "", 1);
    }
    foreach (e_player in getplayers()) {
        e_player function_bc82f900(#"hash_2933dbe91eb483ab");
    }
    level.var_75a7d6 notify(#"hash_5aa439133f7cf591");
    level thread function_e788990d();
    level thread function_b17579();
    level thread function_b852652a();
    level.var_75a7d6.mdl_body clientfield::set("" + #"hash_d92501ab1efcdd", 0);
    function_968e2ead();
    level.var_75a7d6.var_a17b2556 clientfield::set("" + #"hash_399e2afd773621df", 2);
    level.var_75a7d6.var_b9f89aa6 clientfield::set("" + #"hash_399e2afd773621df", 2);
    level thread function_a39582f9(1);
    zm_zonemgr::enable_zone("zone_intermission");
    level flag::set(#"in_dark_side");
    level.var_7aa0d894 = 1;
    if (isarray(level.var_bced5d3c)) {
        foreach (vehicle in level.var_bced5d3c) {
            if (isalive(vehicle)) {
                vehicle kill();
            }
        }
    }
    level thread function_bf51b2c6(str_shot);
    var_92bcfbc2 = level.var_75a7d6.var_c20e460e.var_529d63dd[0];
    if (isstruct(var_92bcfbc2)) {
        var_92bcfbc2 flag::clear(#"disabled");
    }
    wait(2);
    level thread function_f83c329c(#"hash_6c4553137f1098ec", 0, 0, undefined, 0);
    wait(3);
    level.var_75a7d6 flag::wait_till(#"hash_363e22e57480b98d");
    music::setmusicstate("boss_intermission");
    level thread function_fee3db9("intermission_enough", 1);
    var_abe648f0 = {#origin:level.var_75a7d6.s_boss.origin, #radius:9999, #n_start:0, #var_efc4d374:0.4, #n_duration:4};
    level thread function_a7978694(var_abe648f0);
    callback::on_spawned(&function_9ae7cdd5);
    foreach (e_player in function_a1ef346b()) {
        e_player thread function_9ae7cdd5();
    }
    function_480e30e5();
    wait(0.5);
    a_ents[#"boss"] = level.var_75a7d6.mdl_body;
    level.var_75a7d6.s_boss thread scene::play(#"hash_5ffc9256a4340dcb", "beam_intro", a_ents);
    wait(1.5);
    level clientfield::set("" + #"hash_5a36f05cbdf2580", 7);
    level thread lui::screen_fade(2, 0.1, 0, (1, 1, 1), undefined, undefined, 1);
    wait(2);
    level lui::screen_fade_out(0, (0, 0, 0), undefined, 1);
    level.var_75a7d6 flag::set(#"intermission");
    level.var_75a7d6 flag::set(#"hash_2c72f33c763d5790");
    var_abe648f0 notify(#"stop");
    level.var_75a7d6 notify(#"hash_21eabf998a71487a");
    level thread zm_utility::function_9ad5aeb1(0, 1, 0, 0);
    foreach (e_player in getplayers()) {
        if (level.var_87a3c4d1 zm_roots_health_bar::is_open(e_player)) {
            level.var_87a3c4d1 zm_roots_health_bar::close(e_player);
        }
    }
    zm_sq::objective_complete(#"maxis");
    level.var_75a7d6.var_c20e460e.var_2644aca3 clientfield::set("" + #"hash_25155d60768d46e4", 0);
    wait(1);
    if (isarray(level.var_75a7d6.var_62b6205d)) {
        foreach (i, e_player in function_a1ef346b()) {
            s_teleport = level.var_75a7d6.var_62b6205d[i];
            if (isstruct(s_teleport)) {
                e_player setorigin(s_teleport.origin);
                e_player setplayerangles(s_teleport.angles);
            }
        }
    }
    level thread function_a3a141fe();
    wait(2);
    level thread zm_utility::function_9ad5aeb1(0, 1, 0, 0);
    level zm_vo::function_d6f8bbd9(#"hash_61e6a8ba57ce80bf", 0, getplayers());
    level.var_75a7d6 flag::set(#"hash_196a9e138aead1fd");
    level clientfield::set("" + #"hash_5a36f05cbdf2580", 8);
    level lui::screen_fade_in(0, (1, 1, 1));
    level lui::screen_fade_in(0, (0, 0, 0));
    wait(2);
    level zm_vo::function_d6f8bbd9(#"hash_61e6a9ba57ce8272", 0, getplayers());
    level thread function_151b84df();
    level thread zm_tungsten::function_4cc5fca6();
    level zm_vo::function_7622cb70(#"hash_1c3c016ac370822e");
    level clientfield::set("" + #"hash_5a36f05cbdf2580", 9);
    callback::remove_on_spawned(&function_9ae7cdd5);
    level.var_75a7d6 notify(#"hash_282133e71284d937");
    var_267ff905 = level.var_75a7d6.var_4d537044;
    if (isarray(var_267ff905)) {
        foreach (i, e_player in function_a1ef346b()) {
            s_return = var_267ff905[i];
            if (isstruct(s_return)) {
                level thread function_d0abbc0a(e_player, s_return);
            }
        }
    }
    wait(1);
    level.var_75a7d6 flag::set(#"hash_1410e6fe1e67d4fd");
    level.var_75a7d6.var_c20e460e.var_2644aca3 clientfield::set("" + #"hash_25155d60768d46e4", 1);
    wait(3);
    level thread function_fee3db9("intermission_5", 1);
    wait(3);
    music::setmusicstate("boss_part2");
    level.var_75a7d6 flag::clear(#"intermission");
    level.var_7aa0d894 = undefined;
    level flag::clear(#"in_dark_side");
    foreach (e_player in getplayers()) {
        level.var_87a3c4d1 zm_roots_health_bar::function_74adcd8a(e_player, 1);
        if (!level.var_87a3c4d1 zm_roots_health_bar::is_open(e_player)) {
            level.var_87a3c4d1 zm_roots_health_bar::open(e_player);
        }
    }
    level.var_75a7d6.var_3f956940 = int(level.var_75a7d6.var_8d31700f - 2000);
    function_73f95a0c();
    level.var_75a7d6.var_6a7d3d39 = level.var_75a7d6.var_79aa3ebd;
    level.var_75a7d6.var_9b4b863f = level.var_75a7d6.var_6a7d3d39;
    function_f3ac29fc();
    level thread function_7ed3f4dd(#"stomach");
    e_target = function_8407e36d();
    if (isdefined(e_target)) {
        level thread function_f68fc7a0(e_target, 0);
    } else {
        level thread function_4346157c(undefined, 0);
    }
    zm_sq::function_266d66eb(#"hash_1c8b4e14ac690a43", level.var_75a7d6.var_c20e460e.var_2644aca3, 0, #"hash_90d41432e6bd428", #"maxis", undefined, &function_a4650866);
    function_4ba59ffe();
    level.var_75a7d6 flag::clear(#"hash_15ced8000939a79b");
    level.var_75a7d6 flag::clear(#"hash_71a8b0cba966f837");
    level.var_75a7d6 flag::clear(#"hash_88667c18a4cff07");
    level.var_75a7d6 flag::clear(#"hash_1bd28fc130c9aad2");
    level.var_75a7d6 flag::clear(#"hash_25f8eaaceeb93d67");
    level thread function_658da77b();
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x9249f94b, Offset: 0x9bd0
// Size: 0xec
function function_bf51b2c6(str_shot) {
    if (!isdefined(str_shot)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated");
    a_ents[#"boss"] = level.var_75a7d6.mdl_body;
    level.var_75a7d6.s_boss scene::play(#"hash_5ffc9256a4340dcb", str_shot, a_ents);
    level thread function_a3a141fe();
    waitframe(1);
    level.var_75a7d6 flag::set(#"hash_363e22e57480b98d");
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x4eb1590b, Offset: 0x9cc8
// Size: 0x27c
function function_9ae7cdd5() {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_282133e71284d937");
    self endon(#"death");
    self callback::function_d8abfc3d(#"on_player_killed", &function_3f4e7d9c);
    self val::set(#"hash_135155741ee551dc", "allowdeath", 0);
    level.var_75a7d6 flag::wait_till(#"hash_2c72f33c763d5790");
    self.var_f22c83f5 = 1;
    self.var_f4e33249 = 1;
    self val::set(#"hash_135155741ee551dc", "takedamage", 0);
    self val::set(#"hash_135155741ee551dc", "ignoreme", 1);
    self clientfield::set_to_player("" + #"hash_721d42a28d7461ea", 1);
    if (!level.var_75a7d6 flag::get(#"hash_196a9e138aead1fd")) {
        self val::set(#"hash_135155741ee551dc", "freezecontrols", 1);
        self val::set(#"hash_135155741ee551dc", "show_crosshair", 0);
        level.var_75a7d6 flag::wait_till(#"hash_196a9e138aead1fd");
        self val::reset(#"hash_135155741ee551dc", "freezecontrols");
        self val::reset(#"hash_135155741ee551dc", "show_crosshair");
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x4073aaf2, Offset: 0x9f50
// Size: 0x24
function function_3f4e7d9c(*s_params) {
    function_c618b503(self);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x3335b51c, Offset: 0x9f80
// Size: 0xac
function function_c618b503(e_player) {
    if (!isdefined(e_player)) {
        return;
    }
    e_player callback::function_52ac9652(#"on_player_killed", &function_3f4e7d9c);
    e_player val::reset_all(#"hash_135155741ee551dc");
    e_player.var_f22c83f5 = undefined;
    e_player.var_f4e33249 = undefined;
    e_player clientfield::set_to_player("" + #"hash_721d42a28d7461ea", 0);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x7d8bb62d, Offset: 0xa038
// Size: 0x164
function function_151b84df() {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated");
    wait(2);
    s_portal = level.var_75a7d6.var_b62c0fab;
    if (isstruct(s_portal)) {
        mdl_portal = util::spawn_model(#"tag_origin", s_portal.origin, s_portal.angles);
        mdl_portal clientfield::set("" + #"hash_442272758f2bf947", 1);
        level.var_75a7d6 flag::wait_till(#"hash_1410e6fe1e67d4fd");
        mdl_portal clientfield::set("" + #"hash_442272758f2bf947", 1);
        wait(1);
        if (isdefined(mdl_portal)) {
            mdl_portal delete();
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0x44827b14, Offset: 0xa1a8
// Size: 0xac
function function_d0abbc0a(e_player, s_return) {
    if (!isdefined(e_player) || !isstruct(s_return)) {
        return;
    }
    level endon(#"end_game");
    e_player endon(#"disconnect");
    e_player zm_fasttravel::function_66d020b0(undefined, undefined, undefined, undefined, s_return, undefined, undefined, 1);
    function_c618b503(e_player);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x4aee293, Offset: 0xa260
// Size: 0x144
function function_315805c0() {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_4662a2496f03b94");
    s_fx = level.var_75a7d6.var_be9eb6ec;
    if (isstruct(s_fx) && !level.var_75a7d6 flag::get(#"hash_54846992148a189f")) {
        level.var_75a7d6 flag::set(#"hash_54846992148a189f");
        level.var_75a7d6.var_89324ead = util::spawn_model(#"tag_origin", s_fx.origin, s_fx.angles);
        level.var_75a7d6.var_89324ead clientfield::set("" + #"hash_5b501a097c44b478", 1);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x5f620c38, Offset: 0xa3b0
// Size: 0xbc
function function_6c567aad() {
    level.var_75a7d6 notify(#"hash_4662a2496f03b94");
    level.var_75a7d6 flag::clear(#"hash_54846992148a189f");
    if (isdefined(level.var_75a7d6.var_89324ead)) {
        level.var_75a7d6.var_89324ead clientfield::set("" + #"hash_5b501a097c44b478", 0);
        level.var_75a7d6.var_89324ead thread util::delayed_delete(1);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x3d673304, Offset: 0xa478
// Size: 0x124
function function_a3a141fe() {
    str_idle = "idle_both_arms";
    if (level.var_75a7d6 flag::get(#"hash_4ae068100a9d8c76")) {
        str_idle = "idle_no_arms";
    } else if (level.var_75a7d6 flag::get(#"hash_12678fff6a404d29")) {
        str_idle = "idle_right_arm";
    } else if (level.var_75a7d6 flag::get(#"hash_48bc8345fad29b74")) {
        str_idle = "idle_left_arm";
    }
    if (isdefined(str_idle)) {
        a_ents[#"boss"] = level.var_75a7d6.mdl_body;
        level.var_75a7d6.s_boss thread scene::play(#"hash_5ffc9256a4340dcb", str_idle, a_ents);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0x3c777dbe, Offset: 0xa5a8
// Size: 0xa28
function function_4346157c(var_9161d39c = #"", b_play_vo = 1) {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591", #"hash_35eefe12894036fd");
    if (var_9161d39c != #"") {
        if (!isdefined(level.var_75a7d6.var_9d7dfc4c) && !level.var_75a7d6 flag::get(#"hash_4ae068100a9d8c76")) {
            level thread function_42baf70a();
        }
        var_190b1087 = 13;
        if (level.var_75a7d6 flag::get(#"hash_17c454e32450dd92")) {
            var_190b1087 = 7;
        } else if (level.var_75a7d6 flag::get(#"hash_4ae068100a9d8c76")) {
            var_190b1087 = 10;
        }
        /#
            if (isdefined(level.var_75a7d6.var_9d7dfc4c)) {
                var_190b1087 = 2;
            }
        #/
        wait(var_190b1087);
    }
    level.var_75a7d6 notify(#"hash_580c593762794508");
    if (!isdefined(level.var_75a7d6.var_9d7dfc4c)) {
        var_60cde293 = function_eadf62a1();
        var_abef106b = var_60cde293.var_abef106b;
        if (isarray(var_abef106b) && var_abef106b.size > 0) {
            str_side = array::random(var_abef106b);
            if (isdefined(str_side)) {
                level thread function_360256d0(str_side, b_play_vo);
                return;
            }
        }
    }
    var_acd1a5c4 = [];
    var_2cb97f5a = var_60cde293.var_2cb97f5a;
    if (isarray(var_2cb97f5a)) {
        if (level.var_75a7d6.var_9d7dfc4c === #"hash_35eefe12894036fd" || !level.var_75a7d6 flag::get_any([#"hash_12678fff6a404d29", #"hash_48bc8345fad29b74"]) || var_9161d39c != #"ground" || level.var_75a7d6.var_1ec89ecd[#"ground"] + 1 <= 1) {
            var_acd1a5c4 = arraycombine(var_acd1a5c4, var_2cb97f5a);
        }
    }
    if (level.var_75a7d6.var_9d7dfc4c === #"hash_11bc100a0e014371" || level.var_75a7d6 flag::get(#"hash_12678fff6a404d29") && (var_9161d39c != #"mine" || level.var_75a7d6.var_1ec89ecd[#"mine"] + 1 <= 1)) {
        if (!isdefined(var_acd1a5c4)) {
            var_acd1a5c4 = [];
        } else if (!isarray(var_acd1a5c4)) {
            var_acd1a5c4 = array(var_acd1a5c4);
        }
        var_acd1a5c4[var_acd1a5c4.size] = #"mine";
    }
    if (level.var_75a7d6.var_9d7dfc4c === #"hash_3d123fac1908cd30" || level.var_75a7d6 flag::get(#"hash_48bc8345fad29b74") && (var_9161d39c != #"frost" || level.var_75a7d6.var_1ec89ecd[#"frost"] + 1 <= 1)) {
        if (!isdefined(var_acd1a5c4)) {
            var_acd1a5c4 = [];
        } else if (!isarray(var_acd1a5c4)) {
            var_acd1a5c4 = array(var_acd1a5c4);
        }
        var_acd1a5c4[var_acd1a5c4.size] = #"frost";
    }
    if (level.var_75a7d6.var_9d7dfc4c === #"hash_4a50cd145965b8cd" || level.var_75a7d6 flag::get(#"hash_4ae068100a9d8c76") && (var_9161d39c != #"eyes" || level.var_75a7d6.var_1ec89ecd[#"eyes"] + 1 <= 1)) {
        var_407a52db = function_8407e36d();
        if (isdefined(var_407a52db)) {
            if (!isdefined(var_acd1a5c4)) {
                var_acd1a5c4 = [];
            } else if (!isarray(var_acd1a5c4)) {
                var_acd1a5c4 = array(var_acd1a5c4);
            }
            var_acd1a5c4[var_acd1a5c4.size] = #"eyes";
        }
    }
    var_b5714783 = array::random(var_acd1a5c4);
    /#
        if (isdefined(level.var_75a7d6.var_9d7dfc4c)) {
            switch (level.var_75a7d6.var_9d7dfc4c) {
            case #"hash_35eefe12894036fd":
                if (isinarray(var_acd1a5c4, #"hash_3bffc6cd547d8d78") || isinarray(var_acd1a5c4, #"hash_3b99decd5427030e")) {
                    var_b5714783 = array::random(var_2cb97f5a);
                }
                break;
            case #"hash_11bc100a0e014371":
                if (isinarray(var_acd1a5c4, #"mine")) {
                    var_b5714783 = #"mine";
                }
                break;
            case #"hash_3d123fac1908cd30":
                if (isinarray(var_acd1a5c4, #"frost")) {
                    var_b5714783 = #"frost";
                }
                break;
            case #"hash_4a50cd145965b8cd":
                if (isinarray(var_acd1a5c4, #"eyes")) {
                    var_b5714783 = #"eyes";
                }
                break;
            }
        }
    #/
    if (isdefined(var_b5714783)) {
        switch (var_b5714783) {
        case #"hash_3b99decd5427030e":
        case #"hash_3bffc6cd547d8d78":
            level thread function_360256d0(var_b5714783, b_play_vo);
            arrayremovevalue(var_acd1a5c4, #"hash_3bffc6cd547d8d78");
            arrayremovevalue(var_acd1a5c4, #"hash_3b99decd5427030e");
            var_b5714783 = #"ground";
            break;
        case #"mine":
            level thread function_a6da15be(b_play_vo);
            break;
        case #"frost":
            level thread function_ecf643d2(b_play_vo);
            break;
        case #"eyes":
            level thread function_f68fc7a0(var_407a52db, b_play_vo);
            break;
        }
        if (var_9161d39c == var_b5714783) {
            level.var_75a7d6.var_1ec89ecd[var_b5714783]++;
            arrayremovevalue(var_acd1a5c4, var_b5714783);
        }
        foreach (var_b5714783 in var_acd1a5c4) {
            level.var_75a7d6.var_1ec89ecd[var_b5714783] = 0;
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xf6bd8a7e, Offset: 0xafd8
// Size: 0x112
function function_42baf70a() {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591", #"hash_580c593762794508");
    while (true) {
        wait(3);
        var_60cde293 = function_eadf62a1();
        var_abef106b = var_60cde293.var_abef106b;
        if (isarray(var_abef106b) && var_abef106b.size > 0) {
            str_side = array::random(var_abef106b);
            if (isdefined(str_side)) {
                level.var_75a7d6 notify(#"hash_35eefe12894036fd");
                level thread function_360256d0(str_side);
                return;
            }
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x7fec717b, Offset: 0xb0f8
// Size: 0x324
function function_eadf62a1() {
    if (level.var_75a7d6 flag::get(#"hash_4ae068100a9d8c76")) {
        return;
    }
    var_2cb97f5a = [];
    if (!level.var_75a7d6 flag::get(#"hash_12678fff6a404d29")) {
        if (!isdefined(var_2cb97f5a)) {
            var_2cb97f5a = [];
        } else if (!isarray(var_2cb97f5a)) {
            var_2cb97f5a = array(var_2cb97f5a);
        }
        var_2cb97f5a[var_2cb97f5a.size] = #"hash_3bffc6cd547d8d78";
    }
    if (!level.var_75a7d6 flag::get(#"hash_48bc8345fad29b74")) {
        if (!isdefined(var_2cb97f5a)) {
            var_2cb97f5a = [];
        } else if (!isarray(var_2cb97f5a)) {
            var_2cb97f5a = array(var_2cb97f5a);
        }
        var_2cb97f5a[var_2cb97f5a.size] = #"hash_3b99decd5427030e";
    }
    var_abef106b = [];
    foreach (str_side in var_2cb97f5a) {
        var_7434cb7d = function_d9cc7790(str_side);
        if (isstruct(var_7434cb7d)) {
            var_f07b30d6 = 0;
            foreach (e_player in function_a1ef346b(undefined, var_7434cb7d.origin, 350)) {
                if (zm_utility::is_player_valid(e_player)) {
                    if (!isdefined(var_abef106b)) {
                        var_abef106b = [];
                    } else if (!isarray(var_abef106b)) {
                        var_abef106b = array(var_abef106b);
                    }
                    var_abef106b[var_abef106b.size] = str_side;
                    var_f07b30d6 = 1;
                }
            }
            if (var_f07b30d6) {
            }
        }
    }
    return {#var_2cb97f5a:var_2cb97f5a, #var_abef106b:var_abef106b};
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0xd3f2d47e, Offset: 0xb428
// Size: 0x1d4
function function_360256d0(str_side, b_play_vo = 1) {
    if (!isdefined(str_side)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    var_7434cb7d = function_d9cc7790(str_side);
    if (!isstruct(var_7434cb7d)) {
        return;
    }
    level.var_75a7d6 flag::clear(#"hash_6807f54ba604f6ab");
    level thread function_85fbdab6(str_side);
    if (b_play_vo) {
        level thread function_f83c329c(#"ground", 1, 0.5, {#str_id:#"hash_7522c865a93cc31", #n_time:30});
    }
    level waittilltimeout(10, #"hash_4bf628b758247885");
    level thread function_7321121b(var_7434cb7d);
    level.var_75a7d6 flag::wait_till_timeout(10, #"hash_6807f54ba604f6ab");
    level thread function_4346157c(#"ground");
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xac3368bd, Offset: 0xb608
// Size: 0x72
function function_d9cc7790(str_side) {
    if (!isdefined(str_side)) {
        return;
    }
    switch (str_side) {
    case #"hash_3bffc6cd547d8d78":
        return level.var_75a7d6.var_101a7fee;
    case #"hash_3b99decd5427030e":
        return level.var_75a7d6.var_9ec26d20;
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x3ca41911, Offset: 0xb688
// Size: 0x15c
function function_85fbdab6(str_side) {
    if (!isdefined(str_side)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    switch (str_side) {
    case #"hash_3bffc6cd547d8d78":
        str_shot = "smash_left_arm";
        break;
    case #"hash_3b99decd5427030e":
        str_shot = "smash_right_arm";
        break;
    }
    if (isdefined(str_shot)) {
        a_ents[#"boss"] = level.var_75a7d6.mdl_body;
        level.var_75a7d6.s_boss scene::play(#"hash_5ffc9256a4340dcb", str_shot, a_ents);
        level thread function_a3a141fe();
        level.var_75a7d6 flag::set(#"hash_6807f54ba604f6ab");
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xbcde55f7, Offset: 0xb7f0
// Size: 0x3ee
function function_5db5dfb(var_7434cb7d) {
    if (!isstruct(var_7434cb7d)) {
        return;
    }
    var_f0816cbc = var_7434cb7d.origin;
    var_a56afaf6 = [];
    for (i = 0; i < 7; i++) {
        for (j = 0; j < 5; j++) {
            var_296670f2 = 90 - j * 45;
            n_dist = 250 + 300 * (i + 1);
            var_a6ddbc10 = var_f0816cbc + (sin(var_296670f2) * n_dist, cos(var_296670f2) * n_dist, 0);
            a_result = function_9cc082d2(var_a6ddbc10 + (0, 0, 256), 1024);
            v_navmesh = a_result[#"point"];
            if (isvec(v_navmesh)) {
                var_943c7562 = {#origin:v_navmesh, #a_v_points:[v_navmesh]};
                var_49b29c16 = anglestoright(vectortoangles(v_navmesh - var_f0816cbc)) * 128;
                var_8efdecd9 = var_a6ddbc10 + var_49b29c16;
                var_8631b9c0 = var_a6ddbc10 - var_49b29c16;
                foreach (var_8487602c in [var_8efdecd9, var_8631b9c0]) {
                    a_result = function_9cc082d2(var_8487602c + (0, 0, 256), 1024);
                    v_navmesh = a_result[#"point"];
                    if (isvec(v_navmesh)) {
                        if (!isdefined(var_943c7562.a_v_points)) {
                            var_943c7562.a_v_points = [];
                        } else if (!isarray(var_943c7562.a_v_points)) {
                            var_943c7562.a_v_points = array(var_943c7562.a_v_points);
                        }
                        var_943c7562.a_v_points[var_943c7562.a_v_points.size] = v_navmesh;
                    }
                }
                if (!isdefined(var_a56afaf6[i])) {
                    var_a56afaf6[i] = [];
                } else if (!isarray(var_a56afaf6[i])) {
                    var_a56afaf6[i] = array(var_a56afaf6[i]);
                }
                var_a56afaf6[i][var_a56afaf6[i].size] = var_943c7562;
            }
        }
    }
    return var_a56afaf6;
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xb5919d7, Offset: 0xbbe8
// Size: 0x660
function function_7321121b(var_7434cb7d) {
    if (!isstruct(var_7434cb7d)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    var_f0816cbc = var_7434cb7d.origin;
    playfx(#"hash_7a69021eca63c8a8", var_f0816cbc, anglestoforward((0, 0, 0)), anglestoup((0, 0, 0)));
    playrumbleonposition(#"hash_5a9dc570c6066eef", var_f0816cbc);
    foreach (e_player in function_a1ef346b(undefined, var_f0816cbc, 250)) {
        if (zm_utility::is_player_valid(e_player)) {
            e_player dodamage(666, var_f0816cbc);
        }
    }
    foreach (e_player in function_a1ef346b(undefined, var_f0816cbc, 350)) {
        if (zm_utility::is_player_valid(e_player)) {
            e_player dodamage(100, var_f0816cbc, undefined, undefined, undefined, "MOD_EXPLOSIVE");
        }
    }
    var_a56afaf6 = var_7434cb7d.var_a56afaf6;
    if (isarray(var_a56afaf6)) {
        foreach (var_cdc928cc in var_a56afaf6) {
            wait(0.5);
            foreach (var_943c7562 in var_cdc928cc) {
                a_v_points = var_943c7562.a_v_points;
                if (isarray(a_v_points)) {
                    var_722ef4d7 = [];
                    foreach (v_point in a_v_points) {
                        if (isvec(v_point)) {
                            playfx(#"hash_122277729dcbecd2", v_point);
                            playsoundatposition(#"hash_722c8e8bcd6a9ad6", v_point);
                            foreach (e_player in function_a1ef346b(undefined, v_point, 150)) {
                                if (zm_utility::is_player_valid(e_player)) {
                                    if (!isdefined(var_722ef4d7)) {
                                        var_722ef4d7 = [];
                                    } else if (!isarray(var_722ef4d7)) {
                                        var_722ef4d7 = array(var_722ef4d7);
                                    }
                                    if (!isinarray(var_722ef4d7, e_player)) {
                                        var_722ef4d7[var_722ef4d7.size] = e_player;
                                    }
                                }
                            }
                        }
                    }
                    v_center = var_943c7562.origin;
                    if (isvec(v_center)) {
                        playrumbleonposition(#"hash_279c4d5749de63bc", v_center);
                        foreach (e_player in var_722ef4d7) {
                            e_player dodamage(100, v_center, undefined, undefined, undefined, "MOD_EXPLOSIVE");
                        }
                    }
                }
            }
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x6afeb827, Offset: 0xc250
// Size: 0x2e4
function function_ecf643d2(b_play_vo = 1) {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    s_config = level.var_75a7d6.var_64e1d42a[0];
    level thread function_9042d18c();
    if (b_play_vo) {
        var_591caa3e = {#str_id:#"hash_7522c865a93cc31", #n_time:30};
        if (!level.var_75a7d6 flag::get(#"hash_222fadd3d299cd5f")) {
            level.var_75a7d6 flag::set(#"hash_222fadd3d299cd5f");
            var_591caa3e = undefined;
        }
        level thread function_f83c329c(#"frost", 1, 0.5, var_591caa3e);
    }
    a_s_spawns = struct::get_array(s_config.target);
    a_s_spawns = array::randomize(a_s_spawns);
    foreach (s_spawn in a_s_spawns) {
        level thread function_9df1d3c8(s_spawn);
    }
    wait(3);
    foreach (s_spawn in a_s_spawns) {
        s_spawn notify(#"activate");
    }
    wait(10);
    level thread function_6c54dff5();
    level thread function_4346157c(#"frost");
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x9621138e, Offset: 0xc540
// Size: 0xe4
function function_9042d18c() {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    a_ents[#"boss"] = level.var_75a7d6.mdl_body;
    level.var_75a7d6.s_boss scene::play(#"hash_5ffc9256a4340dcb", "frost_intro", a_ents);
    level.var_75a7d6.s_boss thread scene::play(#"hash_5ffc9256a4340dcb", "frost_loop", a_ents);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x66e8d343, Offset: 0xc630
// Size: 0xc4
function function_6c54dff5() {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    a_ents[#"boss"] = level.var_75a7d6.mdl_body;
    level.var_75a7d6.s_boss scene::play(#"hash_5ffc9256a4340dcb", "frost_outro", a_ents);
    level thread function_a3a141fe();
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x7204cc1f, Offset: 0xc700
// Size: 0x314
function function_9df1d3c8(s_spawn) {
    if (!isstruct(s_spawn)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    var_4e1bd1ba = util::spawn_model(#"tag_origin", s_spawn.origin, s_spawn.angles);
    var_4e1bd1ba endon(#"death");
    if (!isdefined(level.var_75a7d6.var_1aa34baf)) {
        level.var_75a7d6.var_1aa34baf = [];
    } else if (!isarray(level.var_75a7d6.var_1aa34baf)) {
        level.var_75a7d6.var_1aa34baf = array(level.var_75a7d6.var_1aa34baf);
    }
    level.var_75a7d6.var_1aa34baf[level.var_75a7d6.var_1aa34baf.size] = var_4e1bd1ba;
    var_4e1bd1ba flag::set(#"hash_2a8f13a829d42a07");
    var_4e1bd1ba clientfield::set("" + #"hash_1875c2a7206c5167", 1);
    s_spawn waittilltimeout(10, #"activate");
    var_4e1bd1ba flag::set(#"hash_6b60ff3b039d7e7e");
    s_dest = struct::get(s_spawn.target);
    var_4e1bd1ba moveto(s_dest.origin, 10);
    var_4e1bd1ba waittill(#"movedone");
    var_4e1bd1ba clientfield::set("" + #"hash_1875c2a7206c5167", 0);
    var_4e1bd1ba flag::clear(#"hash_2a8f13a829d42a07");
    var_4e1bd1ba flag::clear(#"hash_6b60ff3b039d7e7e");
    wait(1);
    arrayremovevalue(level.var_75a7d6.var_1aa34baf, var_4e1bd1ba);
    var_4e1bd1ba delete();
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x58eadf93, Offset: 0xca20
// Size: 0x238
function function_e788990d() {
    if (isarray(level.var_75a7d6.var_1aa34baf)) {
        var_1aa34baf = arraycopy(level.var_75a7d6.var_1aa34baf);
        level.var_75a7d6.var_1aa34baf = [];
        foreach (var_4e1bd1ba in var_1aa34baf) {
            if (isdefined(var_4e1bd1ba)) {
                var_4e1bd1ba flag::clear(#"hash_2a8f13a829d42a07");
                var_4e1bd1ba flag::clear(#"hash_6b60ff3b039d7e7e");
                var_4e1bd1ba clientfield::set("" + #"hash_1875c2a7206c5167", 0);
                var_4e1bd1ba thread util::delayed_delete(1);
            }
        }
    }
    foreach (e_player in getplayers()) {
        e_player clientfield::set_to_player("" + #"hash_159dc2bca63111fc", 0);
        e_player val::reset_all(#"hash_1875c2a7206c5167");
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xb472a877, Offset: 0xcc60
// Size: 0x3ae
function function_775a15ec() {
    self notify("45d887f55077ea3c");
    self endon("45d887f55077ea3c");
    self endon(#"death");
    self clientfield::set_to_player("" + #"hash_159dc2bca63111fc", 0);
    self val::reset_all(#"hash_1875c2a7206c5167");
    var_855b4886 = 0;
    var_61c960ef = 0;
    while (true) {
        var_17f4a48e = 0;
        var_67c43623 = 0;
        foreach (var_4e1bd1ba in level.var_75a7d6.var_1aa34baf) {
            if (isdefined(var_4e1bd1ba) && var_4e1bd1ba flag::get_any([#"hash_2a8f13a829d42a07", #"hash_6b60ff3b039d7e7e"])) {
                n_dist = distancesquared(self.origin, var_4e1bd1ba.origin);
                if (var_4e1bd1ba flag::get(#"hash_2a8f13a829d42a07") && !var_17f4a48e && n_dist <= sqr(250)) {
                    var_17f4a48e = 1;
                }
                if (var_4e1bd1ba flag::get(#"hash_6b60ff3b039d7e7e") && !var_67c43623 && n_dist <= sqr(250)) {
                    var_67c43623 = 1;
                }
                if (var_17f4a48e && var_67c43623) {
                    break;
                }
            }
        }
        if (var_17f4a48e) {
            if (!var_855b4886) {
                var_855b4886 = 1;
                self clientfield::set_to_player("" + #"hash_159dc2bca63111fc", 1);
            }
        } else if (var_855b4886) {
            var_855b4886 = 0;
            self clientfield::set_to_player("" + #"hash_159dc2bca63111fc", 0);
        }
        if (var_67c43623) {
            if (!var_61c960ef) {
                var_61c960ef = 1;
                self val::set(#"hash_1875c2a7206c5167", "allow_sprint", 0);
                self val::set(#"hash_1875c2a7206c5167", "move_speed_scale", 0.5);
            }
        } else if (var_61c960ef) {
            var_61c960ef = 0;
            self val::reset_all(#"hash_1875c2a7206c5167");
        }
        waitframe(1);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xdb7bc741, Offset: 0xd018
// Size: 0x54
function function_da1d0aae(*s_params) {
    self clientfield::set_to_player("" + #"hash_159dc2bca63111fc", 0);
    self val::reset_all(#"hash_1875c2a7206c5167");
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x39b1ef82, Offset: 0xd078
// Size: 0x1ec
function function_a6da15be(b_play_vo = 1) {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    s_config = level.var_75a7d6.var_97f69bd4[0];
    level thread function_3ac42e92();
    if (b_play_vo) {
        var_591caa3e = {#str_id:#"hash_7522c865a93cc31", #n_time:30};
        if (!level.var_75a7d6 flag::get(#"hash_312af0ec2a927f58")) {
            level.var_75a7d6 flag::set(#"hash_312af0ec2a927f58");
            var_591caa3e = undefined;
        }
        level thread function_f83c329c(#"mine", 1, 0.5, var_591caa3e);
    }
    wait(3);
    a_s_spawns = struct::get_array(s_config.target);
    a_s_spawns = array::randomize(a_s_spawns);
    level thread function_30d13387(a_s_spawns);
    wait(10);
    level thread function_4346157c(#"mine");
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xedb9ebb4, Offset: 0xd270
// Size: 0x13c
function function_3ac42e92() {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    a_ents[#"boss"] = level.var_75a7d6.mdl_body;
    level.var_75a7d6.s_boss scene::play(#"hash_5ffc9256a4340dcb", "mine_intro", a_ents);
    level.var_75a7d6.s_boss thread scene::play(#"hash_5ffc9256a4340dcb", "mine_loop", a_ents);
    wait(1);
    level.var_75a7d6.s_boss scene::play(#"hash_5ffc9256a4340dcb", "mine_outro", a_ents);
    level thread function_a3a141fe();
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xc7e1f2cf, Offset: 0xd3b8
// Size: 0x1b8
function function_30d13387(a_s_spawns) {
    if (!isarray(a_s_spawns)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    foreach (s_spawn in a_s_spawns) {
        b_safe = 1;
        foreach (e_player in function_a1ef346b(undefined, s_spawn.origin, 500)) {
            if (zm_utility::is_player_valid(e_player)) {
                b_safe = 0;
                break;
            }
        }
        if (b_safe) {
            level thread function_15e00116(s_spawn);
            wait(0.2);
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x5addf193, Offset: 0xd578
// Size: 0x598
function function_15e00116(s_spawn) {
    if (!isstruct(s_spawn)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    var_8c50f796 = util::spawn_model(#"tag_origin", s_spawn.origin, s_spawn.angles);
    var_8c50f796 endon(#"death");
    if (!isdefined(level.var_75a7d6.var_4b6d9c4a)) {
        level.var_75a7d6.var_4b6d9c4a = [];
    } else if (!isarray(level.var_75a7d6.var_4b6d9c4a)) {
        level.var_75a7d6.var_4b6d9c4a = array(level.var_75a7d6.var_4b6d9c4a);
    }
    level.var_75a7d6.var_4b6d9c4a[level.var_75a7d6.var_4b6d9c4a.size] = var_8c50f796;
    while (true) {
        var_8c50f796.var_7e2d3fc6 = spawncollision(#"hash_54ae3ca6346eae5f", "", var_8c50f796.origin + (0, 0, 130), var_8c50f796.angles);
        if (isdefined(var_8c50f796.var_7e2d3fc6)) {
            break;
        }
        waitframe(1);
    }
    var_8c50f796.var_7e2d3fc6 setteam(level.zombie_team);
    var_8c50f796.var_7e2d3fc6 linkto(var_8c50f796);
    var_8c50f796 clientfield::set("" + #"hash_5c06c72dd28da75a", 1);
    level thread function_91fec1bb(var_8c50f796);
    level thread function_dfcf55a9(var_8c50f796);
    level thread function_edcb998b(var_8c50f796);
    level thread function_963a5888(var_8c50f796);
    if (isdefined(s_spawn.target)) {
        s_target = struct::get(s_spawn.target);
        n_move_time = distance(s_spawn.origin, s_target.origin) / 170;
        if (n_move_time <= 0) {
            return;
        }
        for (s_dest = s_target; true; s_dest = s_target) {
            var_8c50f796 moveto(s_dest.origin, n_move_time);
            var_8c50f796 waittill(#"movedone");
            if (s_dest == s_target) {
                s_dest = s_spawn;
                continue;
            }
        }
        return;
    }
    while (true) {
        a_e_players = [];
        foreach (e_player in function_a1ef346b()) {
            if (zm_utility::is_player_valid(e_player)) {
                if (!isdefined(a_e_players)) {
                    a_e_players = [];
                } else if (!isarray(a_e_players)) {
                    a_e_players = array(a_e_players);
                }
                a_e_players[a_e_players.size] = e_player;
            }
        }
        if (isarray(a_e_players) && a_e_players.size > 0) {
            e_closest = arraygetclosest(var_8c50f796.origin, a_e_players);
            var_947b4032 = e_closest.origin;
            if (isvec(var_947b4032)) {
                n_move_time = distance(var_8c50f796.origin, var_947b4032) / 170;
                v_dest = var_947b4032;
                if (n_move_time <= 0) {
                    v_dest = var_8c50f796.origin;
                    n_move_time = 0.1;
                }
                var_8c50f796 moveto(v_dest, n_move_time);
            }
        }
        wait(0.1);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xd65b0cb7, Offset: 0xdb18
// Size: 0x39c
function function_91fec1bb(var_8c50f796) {
    var_7e2d3fc6 = var_8c50f796.var_7e2d3fc6;
    if (!isdefined(var_7e2d3fc6)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    var_8c50f796 endon(#"death", #"deactivate");
    var_7e2d3fc6 endon(#"death");
    var_7e2d3fc6 val::set(#"energy_mine", "allowdeath", 0);
    var_7e2d3fc6 val::set(#"energy_mine", "takedamage", 1);
    var_7e2d3fc6.health = 1;
    n_health = function_5f36e356(10000, 20000);
    while (true) {
        s_waitresult = var_7e2d3fc6 waittill(#"damage");
        e_attacker = s_waitresult.attacker;
        if (isplayer(e_attacker)) {
            damage = s_waitresult.amount;
            weapon = s_waitresult.weapon;
            inflictor = s_waitresult.inflictor;
            flags = s_waitresult.flags;
            meansofdeath = s_waitresult.mod;
            var_fd90b0bb = s_waitresult.var_fd90b0bb;
            vpoint = s_waitresult.position;
            vdir = s_waitresult.direction;
            shitloc = s_waitresult.shitloc;
            psoffsettime = s_waitresult.psoffsettime;
            boneindex = s_waitresult.boneindex;
            surfacetype = s_waitresult.surfacetype;
            damage = var_7e2d3fc6 get_weapon_damage(inflictor, e_attacker, damage, flags, meansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype);
            if (!zm_weapons::is_wonder_weapon(weapon)) {
                var_6e859516 = function_51846e52(meansofdeath, weapon);
                if (isdefined(var_6e859516) && damage > var_6e859516) {
                    damage = var_6e859516;
                }
            }
            n_health -= damage;
            var_51de3a6c = n_health <= 0;
            e_attacker thread damagefeedback::update(meansofdeath, e_attacker, undefined, weapon, var_7e2d3fc6, psoffsettime, shitloc, var_51de3a6c, flags, 0);
            level thread hud::function_c9800094(e_attacker, vpoint, damage, 1);
            if (var_51de3a6c) {
                break;
            }
        }
    }
    level thread function_31a8910(var_8c50f796, 0);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xba531a3c, Offset: 0xdec0
// Size: 0x9c
function function_dfcf55a9(var_8c50f796) {
    if (!isdefined(var_8c50f796)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    var_8c50f796 endon(#"death", #"deactivate");
    wait(10);
    level thread function_31a8910(var_8c50f796);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x3393c79a, Offset: 0xdf68
// Size: 0x142
function function_edcb998b(var_8c50f796) {
    if (!isdefined(var_8c50f796)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    var_8c50f796 endon(#"death", #"deactivate");
    while (true) {
        foreach (e_player in function_a1ef346b(undefined, var_8c50f796.origin, 64)) {
            if (zm_utility::is_player_valid(e_player)) {
                level thread function_31a8910(var_8c50f796);
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0x6df7d7d4, Offset: 0xe0b8
// Size: 0x26c
function function_31a8910(var_8c50f796, var_f46abcf1 = 1) {
    if (!isdefined(var_8c50f796)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    var_8c50f796 endon(#"death");
    var_8c50f796 notify(#"deactivate");
    if (isdefined(var_8c50f796.var_7e2d3fc6)) {
        var_8c50f796.var_7e2d3fc6 deletedelay();
    }
    playfx(#"hash_3c469c72db197b13", var_8c50f796.origin, anglestoforward(var_8c50f796.angles), anglestoup(var_8c50f796.angles));
    var_8c50f796 clientfield::set("" + #"hash_5c06c72dd28da75a", 0);
    if (var_f46abcf1) {
        playrumbleonposition(#"hash_35da66e38e176e1f", var_8c50f796.origin);
        foreach (e_player in function_a1ef346b(undefined, var_8c50f796.origin, 250)) {
            if (zm_utility::is_player_valid(e_player)) {
                e_player dodamage(200, var_8c50f796.origin, undefined, undefined, undefined, "MOD_EXPLOSIVE");
            }
        }
    }
    wait(1);
    var_8c50f796 delete();
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x437991bd, Offset: 0xe330
// Size: 0x1ba
function function_963a5888(var_8c50f796) {
    if (!isdefined(var_8c50f796)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    var_8c50f796 endon(#"death", #"deactivate");
    while (true) {
        foreach (e_player in function_a1ef346b(undefined, var_8c50f796.origin, 250)) {
            if (zm_utility::is_player_valid(e_player) && !e_player flag::get(#"hash_6dd3b2d364bd2677")) {
                e_player dodamage(25, var_8c50f796.origin, undefined, undefined, undefined, "MOD_EXPLOSIVE");
                e_player flag::set(#"hash_6dd3b2d364bd2677");
                level thread function_7c38a1c4(e_player);
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xcbb83a03, Offset: 0xe4f8
// Size: 0x3c
function function_7c38a1c4(e_player) {
    wait(0.5);
    if (isdefined(e_player)) {
        e_player flag::clear(#"hash_6dd3b2d364bd2677");
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xa348e88f, Offset: 0xe540
// Size: 0x140
function function_b17579() {
    var_4b6d9c4a = arraycopy(level.var_75a7d6.var_4b6d9c4a);
    level.var_75a7d6.var_4b6d9c4a = [];
    foreach (var_8c50f796 in var_4b6d9c4a) {
        if (isdefined(var_8c50f796)) {
            var_8c50f796 notify(#"deactivate");
            if (isdefined(var_8c50f796.var_7e2d3fc6)) {
                var_8c50f796.var_7e2d3fc6 deletedelay();
            }
            var_8c50f796 clientfield::set("" + #"hash_5c06c72dd28da75a", 0);
            var_8c50f796 thread util::delayed_delete(1);
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0x4cac0a8e, Offset: 0xe688
// Size: 0x2dc
function function_f68fc7a0(e_target, b_play_vo = 1) {
    if (!isdefined(e_target)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    level.var_75a7d6 flag::clear(#"hash_30c93e279eb03e9c");
    level thread function_a25101c(e_target);
    if (b_play_vo) {
        var_591caa3e = {#str_id:#"hash_7522c865a93cc31", #n_time:30};
        if (!level.var_75a7d6 flag::get(#"hash_731fdd93c792799c")) {
            level.var_75a7d6 flag::set(#"hash_731fdd93c792799c");
            var_591caa3e = undefined;
        }
        level thread function_f83c329c(#"eyes", 1, 0.5, var_591caa3e);
    }
    a_ents[#"boss"] = level.var_75a7d6.mdl_body;
    level.var_75a7d6.s_boss scene::play(#"hash_5ffc9256a4340dcb", "beam_intro", a_ents);
    level.var_75a7d6.s_boss thread scene::play(#"hash_5ffc9256a4340dcb", "beam_loop", a_ents);
    level.var_75a7d6 flag::set(#"hash_30c93e279eb03e9c");
    wait(5);
    level thread function_b852652a();
    level.var_75a7d6.s_boss scene::play(#"hash_5ffc9256a4340dcb", "beam_outro", a_ents);
    level thread function_a3a141fe();
    level thread function_4346157c(#"eyes");
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xef03a4c0, Offset: 0xe970
// Size: 0x418
function function_8407e36d() {
    a_e_players = [];
    foreach (e_player in function_a1ef346b()) {
        if (zm_utility::is_player_valid(e_player)) {
            if (!isdefined(a_e_players)) {
                a_e_players = [];
            } else if (!isarray(a_e_players)) {
                a_e_players = array(a_e_players);
            }
            a_e_players[a_e_players.size] = e_player;
        }
    }
    a_e_players = array::randomize(a_e_players);
    n_players = a_e_players.size;
    if (n_players > 0) {
        if (n_players <= 1) {
            e_target = a_e_players[0];
        } else {
            e_target = undefined;
            var_ab7bc2c6 = -1;
            foreach (var_bb8c6cc9 in a_e_players) {
                if (distance2dsquared(level.var_75a7d6.s_boss.origin, var_bb8c6cc9.origin) >= sqr(1024) && level.var_75a7d6.s_boss math::get_dot_forward(var_bb8c6cc9.origin, 1) >= 0.6) {
                    var_b500b370 = [];
                    foreach (e_player in function_a1ef346b(undefined, var_bb8c6cc9.origin, 250)) {
                        if (zm_utility::is_player_valid(e_player)) {
                            if (!isdefined(var_b500b370)) {
                                var_b500b370 = [];
                            } else if (!isarray(var_b500b370)) {
                                var_b500b370 = array(var_b500b370);
                            }
                            var_b500b370[var_b500b370.size] = e_player;
                        }
                    }
                    arrayremovevalue(var_b500b370, var_bb8c6cc9);
                    if (var_b500b370.size > var_ab7bc2c6) {
                        var_ab7bc2c6 = var_b500b370.size;
                        e_target = var_bb8c6cc9;
                    }
                }
            }
        }
        if (isdefined(e_target) && distance2dsquared(level.var_75a7d6.s_boss.origin, e_target.origin) >= sqr(1024) && level.var_75a7d6.s_boss math::get_dot_forward(e_target.origin, 1) >= 0.6) {
            return e_target;
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x2c859e51, Offset: 0xed90
// Size: 0x590
function function_a25101c(e_target) {
    var_faf3b547 = e_target.origin;
    if (!isvec(var_faf3b547)) {
        return;
    }
    var_faf3b547 = getclosestpointonnavmesh(var_faf3b547, 1024);
    if (!isvec(var_faf3b547)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591", #"hash_308e76fae63e354c");
    var_f36dbf1b = util::spawn_model(#"tag_origin", var_faf3b547);
    if (!isdefined(level.var_75a7d6.var_df953d57)) {
        level.var_75a7d6.var_df953d57 = [];
    } else if (!isarray(level.var_75a7d6.var_df953d57)) {
        level.var_75a7d6.var_df953d57 = array(level.var_75a7d6.var_df953d57);
    }
    level.var_75a7d6.var_df953d57[level.var_75a7d6.var_df953d57.size] = var_f36dbf1b;
    v_spacing = anglestoright(vectortoangles(var_faf3b547 - level.var_75a7d6.mdl_body gettagorigin("j_head"))) * 32;
    var_b63f9f4f = util::spawn_model(#"tag_origin", var_faf3b547 - v_spacing);
    if (!isdefined(level.var_75a7d6.var_df953d57)) {
        level.var_75a7d6.var_df953d57 = [];
    } else if (!isarray(level.var_75a7d6.var_df953d57)) {
        level.var_75a7d6.var_df953d57 = array(level.var_75a7d6.var_df953d57);
    }
    level.var_75a7d6.var_df953d57[level.var_75a7d6.var_df953d57.size] = var_b63f9f4f;
    var_586de175 = util::spawn_model(#"tag_origin", var_faf3b547 + v_spacing);
    if (!isdefined(level.var_75a7d6.var_df953d57)) {
        level.var_75a7d6.var_df953d57 = [];
    } else if (!isarray(level.var_75a7d6.var_df953d57)) {
        level.var_75a7d6.var_df953d57 = array(level.var_75a7d6.var_df953d57);
    }
    level.var_75a7d6.var_df953d57[level.var_75a7d6.var_df953d57.size] = var_586de175;
    level thread function_260cd6e6(var_b63f9f4f, var_586de175);
    while (true) {
        if (isvec(e_target.origin)) {
            v_navmesh = getclosestpointonnavmesh(e_target.origin, 1024);
            if (isvec(v_navmesh) && distance2dsquared(level.var_75a7d6.s_boss.origin, e_target.origin) >= sqr(1024) && level.var_75a7d6.s_boss math::get_dot_forward(v_navmesh, 1) >= 0.6) {
                var_faf3b547 = v_navmesh;
            }
        }
        v_spacing = anglestoright(vectortoangles(var_faf3b547 - level.var_75a7d6.mdl_body gettagorigin("j_head"))) * 32;
        var_f36dbf1b moveto(var_faf3b547, 1);
        var_b63f9f4f moveto(var_faf3b547 - v_spacing, 1);
        var_586de175 moveto(var_faf3b547 + v_spacing, 1);
        wait(0.2);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0x914f257e, Offset: 0xf328
// Size: 0x598
function function_260cd6e6(var_b63f9f4f, var_586de175) {
    if (!(isdefined(var_b63f9f4f) && isdefined(var_586de175))) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591", #"hash_308e76fae63e354c");
    var_b63f9f4f endon(#"death");
    var_586de175 endon(#"death");
    level.var_75a7d6.var_97a7fa13 = util::spawn_model(#"tag_origin", var_b63f9f4f.origin);
    level.var_75a7d6.var_97a7fa13 endon(#"death");
    level thread function_fc7c8eaf(#"left", level.var_75a7d6.var_97a7fa13);
    level thread function_7123b990(level.var_75a7d6.var_97a7fa13);
    level.var_75a7d6.var_30d513af = util::spawn_model(#"tag_origin", var_586de175.origin);
    level.var_75a7d6.var_30d513af endon(#"death");
    level thread function_fc7c8eaf(#"right", level.var_75a7d6.var_30d513af);
    var_97a7fa13 = level.var_75a7d6.var_97a7fa13;
    var_30d513af = level.var_75a7d6.var_30d513af;
    var_97a7fa13.origin = var_b63f9f4f.origin;
    var_30d513af.origin = var_586de175.origin;
    while (true) {
        var_d6701dd5 = var_b63f9f4f.origin;
        var_91d0f678 = var_586de175.origin;
        var_fcf361b6 = bullettrace(level.var_75a7d6.mdl_body gettagorigin("tag_eye_fx_le"), var_d6701dd5, 0, undefined);
        var_33849f98 = bullettrace(level.var_75a7d6.mdl_body gettagorigin("tag_eye_fx_ri"), var_91d0f678, 0, undefined);
        var_5e5262ae = var_fcf361b6[#"entity"];
        var_b3317ca3 = var_33849f98[#"entity"];
        var_eb864879 = 0;
        if (var_5e5262ae === level.var_75a7d6.var_a17b2556 || var_b3317ca3 === level.var_75a7d6.var_a17b2556) {
            var_35b0ea35 = var_fcf361b6[#"position"];
            var_17ac2be8 = var_33849f98[#"position"];
            if (var_5e5262ae !== level.var_75a7d6.var_a17b2556) {
                var_35b0ea35 = var_17ac2be8;
            }
            if (var_b3317ca3 !== level.var_75a7d6.var_a17b2556) {
                var_17ac2be8 = var_35b0ea35;
            }
            if (isvec(var_35b0ea35) && isvec(var_17ac2be8)) {
                var_eb864879 = 1;
                var_d6701dd5 = var_35b0ea35;
                var_91d0f678 = var_17ac2be8;
            }
        }
        if (!var_eb864879) {
            var_bb4f4d61 = getclosestpointonnavmesh(var_d6701dd5, 1024);
            var_cf4fdcae = getclosestpointonnavmesh(var_91d0f678, 1024);
            if (!isvec(var_bb4f4d61)) {
                var_bb4f4d61 = var_cf4fdcae;
            }
            if (!isvec(var_cf4fdcae)) {
                var_cf4fdcae = var_bb4f4d61;
            }
            if (isvec(var_bb4f4d61) && isvec(var_cf4fdcae)) {
                var_d6701dd5 = var_bb4f4d61;
                var_91d0f678 = var_cf4fdcae;
            }
        }
        var_97a7fa13 moveto(var_d6701dd5, 0.05);
        var_30d513af moveto(var_91d0f678, 0.05);
        var_97a7fa13 waittill(#"movedone");
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0xc4dd033f, Offset: 0xf8c8
// Size: 0x114
function function_fc7c8eaf(str_side, mdl_beam) {
    if (!(isdefined(str_side) && isdefined(mdl_beam))) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591", #"hash_308e76fae63e354c");
    mdl_beam endon(#"death");
    level.var_75a7d6 flag::wait_till(#"hash_30c93e279eb03e9c");
    n_cf = 1;
    if (str_side === #"right") {
        n_cf = 2;
    }
    mdl_beam clientfield::set("" + #"hash_665a7e18e3f5f896", n_cf);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x5cb06e2d, Offset: 0xf9e8
// Size: 0x21a
function function_7123b990(mdl_beam) {
    if (!isdefined(mdl_beam)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591", #"hash_308e76fae63e354c");
    mdl_beam endon(#"death");
    level.var_75a7d6 flag::wait_till(#"hash_30c93e279eb03e9c");
    while (true) {
        foreach (e_player in function_a1ef346b(undefined, mdl_beam.origin, 150)) {
            if (zm_utility::is_player_valid(e_player) && !e_player flag::get(#"hash_6fc6431ba8b80ea9")) {
                if (bullettracepassed(mdl_beam.origin, e_player.origin + (0, 0, 16), 0, e_player)) {
                    e_player dodamage(25, mdl_beam.origin, undefined, undefined, undefined, "MOD_EXPLOSIVE");
                    e_player flag::set(#"hash_6fc6431ba8b80ea9");
                    level thread function_94a67382(e_player);
                }
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x1c70ef9e, Offset: 0xfc10
// Size: 0x3c
function function_94a67382(e_player) {
    wait(0.25);
    if (isdefined(e_player)) {
        e_player flag::clear(#"hash_6fc6431ba8b80ea9");
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xeef981a5, Offset: 0xfc58
// Size: 0x222
function function_b852652a() {
    level.var_75a7d6 notify(#"hash_308e76fae63e354c");
    level.var_75a7d6 flag::clear(#"hash_30c93e279eb03e9c");
    if (isdefined(level.var_75a7d6.var_97a7fa13)) {
        level.var_75a7d6.var_97a7fa13 clientfield::set("" + #"hash_665a7e18e3f5f896", 0);
        level.var_75a7d6.var_97a7fa13 thread util::delayed_delete(1);
        level.var_75a7d6.var_97a7fa13 = undefined;
    }
    if (isdefined(level.var_75a7d6.var_30d513af)) {
        level.var_75a7d6.var_30d513af clientfield::set("" + #"hash_665a7e18e3f5f896", 0);
        level.var_75a7d6.var_30d513af thread util::delayed_delete(1);
        level.var_75a7d6.var_30d513af = undefined;
    }
    if (isarray(level.var_75a7d6.var_df953d57)) {
        foreach (var_121fd991 in level.var_75a7d6.var_df953d57) {
            if (isdefined(var_121fd991)) {
                var_121fd991 delete();
            }
        }
    }
    level.var_75a7d6.var_df953d57 = [];
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x0
// Checksum 0x2e115ac8, Offset: 0xfe88
// Size: 0x38
function function_3d66224b(n_position = 0) {
    return level.var_75a7d6.var_c20e460e.var_529d63dd[n_position];
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x5911e785, Offset: 0xfec8
// Size: 0x354
function function_bb7202a2() {
    if (level.var_75a7d6.var_c20e460e flag::get(#"spawned")) {
        return;
    }
    level.var_75a7d6.var_c20e460e flag::set(#"spawned");
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated");
    foreach (struct in struct::get_array(level.var_75a7d6.target)) {
        if (struct.var_fdd68e6f === #"float" && struct.script_int === 0) {
            level.var_75a7d6.var_c20e460e.var_135e3159 = struct;
            level.var_75a7d6.var_c20e460e.mdl_anchor = util::spawn_model(#"tag_origin", struct.origin, struct.angles);
            level.var_75a7d6.var_c20e460e.mdl_anchor setforcenocull();
            level.var_75a7d6.var_c20e460e.var_2644aca3 = util::spawn_model(#"hash_372a3e033a18dfed");
            level.var_75a7d6.var_c20e460e.var_2644aca3 setforcenocull();
            level.var_75a7d6.var_c20e460e.var_2644aca3 setteam(#"allies");
            level.var_75a7d6.var_c20e460e.var_2644aca3 clientfield::set("" + #"hash_9ef13a567692f32", 1);
            function_9965670d();
            a_ents[#"maxis"] = level.var_75a7d6.var_c20e460e.var_2644aca3;
            level.var_75a7d6.var_c20e460e.mdl_anchor thread scene::play(#"hash_5b405bfccbbf2def", "charging_loop", a_ents);
            break;
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x823cb561, Offset: 0x10228
// Size: 0x11e
function function_a4650866(*var_2644aca3) {
    if (!level.var_75a7d6 flag::get(#"intermission")) {
        var_e9abcfcb = level.var_75a7d6.var_1f6f9128;
        if (isarray(var_e9abcfcb)) {
            var_33353957 = 0;
            foreach (var_98bf27a1 in var_e9abcfcb) {
                if (var_98bf27a1 flag::get(#"charged")) {
                    var_33353957 = 1;
                    break;
                }
            }
            if (!var_33353957) {
                return true;
            }
        }
    }
    return false;
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xe47e1cf4, Offset: 0x10350
// Size: 0x11c
function function_2dc91d9f() {
    level endon(#"end_game");
    level.var_75a7d6.var_c20e460e endon(#"stop_think");
    if (!level.var_75a7d6.var_c20e460e flag::get(#"hash_382481ac36f5fbaa")) {
        var_135e3159 = level.var_75a7d6.var_c20e460e.var_529d63dd[3];
        if (isstruct(var_135e3159)) {
            function_91b8984b(var_135e3159.origin, var_135e3159.angles, var_135e3159);
            if (!level.var_75a7d6.var_c20e460e flag::get(#"hash_382481ac36f5fbaa")) {
                level thread function_cdc05f45();
            }
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0x582f9740, Offset: 0x10478
// Size: 0x1e0
function function_cdc05f45(var_973c5c71 = 0, var_bad95e69 = 1) {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated");
    level.var_75a7d6.var_c20e460e endon(#"stop_think");
    if (level.var_75a7d6 flag::get(#"defeated")) {
        return;
    }
    while (true) {
        if (var_973c5c71) {
            var_973c5c71 = 0;
        } else {
            wait(60);
            if (!level.var_75a7d6 flag::get(#"intermission")) {
                level thread function_f83c329c(#"hash_7a617db243a2fb6f", 0, 0.5, {#str_id:#"hash_711ebafa8fd9f78b", #n_time:5});
            }
        }
        var_135e3159 = function_83ffaa02();
        if (!function_8a1f5c87(var_135e3159.origin)) {
            function_7c6aaab3(1, 0);
        }
        function_91b8984b(var_135e3159.origin, var_135e3159.angles, var_135e3159, undefined, undefined, var_bad95e69);
        var_bad95e69 = 1;
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xd85f115c, Offset: 0x10660
// Size: 0xd0
function function_8a1f5c87(v_dest) {
    v_start = level.var_75a7d6.var_c20e460e.var_2644aca3.origin;
    if (!isvec(v_start) || !isvec(v_dest)) {
        return false;
    }
    a_trace = bullettrace(v_start, v_dest, 0, level.var_75a7d6.var_c20e460e.var_2644aca3);
    return a_trace[#"entity"] !== level.var_75a7d6.var_a17b2556;
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0xab5f5a0f, Offset: 0x10738
// Size: 0x114
function function_7c6aaab3(var_bad95e69 = 1, var_58a45754 = 0) {
    a_s_safe = [level.var_75a7d6.var_c20e460e.var_529d63dd[1], level.var_75a7d6.var_c20e460e.var_529d63dd[4]];
    s_safe = arraygetclosest(level.var_75a7d6.var_c20e460e.var_2644aca3.origin, a_s_safe);
    if (isstruct(s_safe)) {
        function_91b8984b(s_safe.origin, s_safe.angles, undefined, undefined, 400, var_bad95e69, var_58a45754);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x96aef725, Offset: 0x10858
// Size: 0x466
function function_83ffaa02() {
    if (level.var_75a7d6.var_c20e460e.var_6615b9fe.size <= 0) {
        level.var_75a7d6.var_c20e460e.var_6615b9fe = array::randomize(arraycopy(level.var_75a7d6.var_c20e460e.var_6615b9fe));
        arrayremovevalue(level.var_75a7d6.var_c20e460e.var_6615b9fe, level.var_75a7d6.var_c20e460e.var_135e3159);
    }
    foreach (var_135e3159 in level.var_75a7d6.var_c20e460e.var_6615b9fe) {
        if (var_135e3159 !== level.var_75a7d6.var_c20e460e.var_135e3159 && !var_135e3159 flag::get(#"disabled") && function_8a1f5c87(var_135e3159.origin)) {
            arrayremovevalue(level.var_75a7d6.var_c20e460e.var_6615b9fe, var_135e3159);
            return var_135e3159;
        }
    }
    var_529d63dd = array::randomize(arraycopy(level.var_75a7d6.var_c20e460e.var_529d63dd));
    foreach (var_135e3159 in level.var_75a7d6.var_c20e460e.var_6615b9fe) {
        arrayremovevalue(var_529d63dd, var_135e3159);
    }
    foreach (var_135e3159 in var_529d63dd) {
        if (var_135e3159 !== level.var_75a7d6.var_c20e460e.var_135e3159 && !var_135e3159 flag::get(#"disabled") && function_8a1f5c87(var_135e3159.origin)) {
            arrayremovevalue(level.var_75a7d6.var_c20e460e.var_6615b9fe, var_135e3159);
            return var_135e3159;
        }
    }
    foreach (var_135e3159 in var_529d63dd) {
        if (!var_135e3159 flag::get(#"disabled")) {
            arrayremovevalue(level.var_75a7d6.var_c20e460e.var_6615b9fe, var_135e3159);
            return var_135e3159;
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 7, eflags: 0x2 linked
// Checksum 0x165e8ba2, Offset: 0x10cc8
// Size: 0x5d4
function function_91b8984b(v_dest, v_angles, var_135e3159, var_2dba142c = 0, n_speed = 300, var_bad95e69 = 1, var_58a45754 = 1) {
    if (!isvec(v_dest) || !isvec(v_angles)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6.var_c20e460e notify(#"hash_388517c42129d55c");
    level.var_75a7d6.var_c20e460e endon(#"hash_388517c42129d55c");
    mdl_anchor = level.var_75a7d6.var_c20e460e.mdl_anchor;
    var_2644aca3 = level.var_75a7d6.var_c20e460e.var_2644aca3;
    a_ents[#"maxis"] = var_2644aca3;
    var_b2def274 = getanimlength(#"hash_7561312f18595cfa");
    var_9b0fc1bf = getanimlength(#"hash_e3ddb6bca42ba1f");
    var_90a7fa47 = level.var_75a7d6.var_c20e460e flag::get(#"moving");
    level.var_75a7d6.var_c20e460e flag::set(#"moving");
    if (!var_90a7fa47 && var_bad95e69) {
        mdl_anchor scene::play(#"hash_5b405bfccbbf2def", "charging_out", a_ents);
    }
    if (isstruct(var_135e3159)) {
        level.var_75a7d6.var_c20e460e.var_135e3159 = var_135e3159;
    }
    mdl_anchor thread scene::play(#"hash_5b405bfccbbf2def", "move_in", a_ents);
    n_move_time = distance(mdl_anchor.origin, v_dest) / n_speed;
    var_f7607c14 = 0;
    if (n_move_time > 0) {
        if (n_move_time >= 1) {
            var_f7607c14 = 1;
        }
        var_50be58cf = 0.5;
        var_8789d7b1 = 0.5;
        if (var_50be58cf + var_8789d7b1 >= n_move_time) {
            var_50be58cf = 0;
            var_8789d7b1 = 0;
        }
    }
    var_e425c762 = v_angles;
    if (var_f7607c14) {
        var_e425c762 = vectortoangles(v_dest - mdl_anchor.origin);
    }
    mdl_anchor rotateto(var_e425c762, var_b2def274, 0.2, 0.2);
    mdl_anchor waittill(#"rotatedone");
    mdl_anchor flag::wait_till_clear(#"scene");
    if (n_move_time > 0) {
        var_818c24ea = n_move_time - var_9b0fc1bf;
        if (var_818c24ea > 0) {
            mdl_anchor thread scene::play(#"hash_5b405bfccbbf2def", "move_loop", a_ents);
        }
        mdl_anchor moveto(v_dest, n_move_time, var_50be58cf, var_8789d7b1);
        if (var_818c24ea > 0) {
            wait(var_818c24ea);
        }
    }
    mdl_anchor thread scene::play(#"hash_5b405bfccbbf2def", "move_out", a_ents);
    mdl_anchor rotateto(v_angles, var_9b0fc1bf, 0.2, 0.2);
    mdl_anchor waittill(#"rotatedone");
    mdl_anchor flag::wait_till_clear(#"scene");
    if (var_58a45754) {
        if (!var_2dba142c) {
            mdl_anchor scene::play(#"hash_5b405bfccbbf2def", "charging_in", a_ents);
            mdl_anchor thread scene::play(#"hash_5b405bfccbbf2def", "charging_loop", a_ents);
        } else {
            mdl_anchor thread scene::play(#"hash_5b405bfccbbf2def", "charged_loop", a_ents);
            wait(0.5);
        }
    }
    level.var_75a7d6.var_c20e460e flag::clear(#"moving");
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x9ab629e0, Offset: 0x112a8
// Size: 0x296
function function_1f80b24d() {
    self notify("b40c379548aa51d");
    self endon("b40c379548aa51d");
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated");
    self endon(#"death", #"hash_6c8affb0cdce9e5");
    self flag::clear(#"hash_5d6df1818897df5c");
    self flag::clear(#"hash_21fe92f29511661c");
    if (self.team !== level.zombie_team) {
        return;
    }
    while (true) {
        var_2644aca3 = level.var_75a7d6.var_c20e460e.var_2644aca3;
        if (level.var_75a7d6.var_c20e460e flag::get(#"hash_f6fa640d2850acd") && isdefined(var_2644aca3) && distance2dsquared(self.origin, var_2644aca3.origin) <= sqr(256)) {
            self flag::clear(#"hash_21fe92f29511661c");
            if (!self flag::get(#"hash_5d6df1818897df5c")) {
                self flag::set(#"hash_5d6df1818897df5c");
                self clientfield::set("" + #"hash_30c23067d05386c1", 1);
            }
        } else if (self flag::get(#"hash_5d6df1818897df5c") && !self flag::get(#"hash_21fe92f29511661c")) {
            self flag::set(#"hash_21fe92f29511661c");
            level thread function_84d95ae(self);
        }
        waitframe(1);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x3116b408, Offset: 0x11548
// Size: 0x10c
function function_84d95ae(ai_zombie) {
    if (!isalive(ai_zombie)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated");
    ai_zombie endon(#"death", #"hash_6c8affb0cdce9e5", #"hash_5d6df1818897df5c");
    wait(1);
    if (ai_zombie flag::get(#"hash_21fe92f29511661c")) {
        ai_zombie clientfield::set("" + #"hash_30c23067d05386c1", 0);
        ai_zombie flag::clear(#"hash_5d6df1818897df5c");
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x45fc9175, Offset: 0x11660
// Size: 0x23c
function function_e543d649(s_params) {
    if (self.team !== level.zombie_team) {
        return;
    }
    self notify(#"hash_6c8affb0cdce9e5");
    self clientfield::set("" + #"hash_30c23067d05386c1", 0);
    if (isplayer(s_params.eattacker)) {
        var_2644aca3 = level.var_75a7d6.var_c20e460e.var_2644aca3;
        if (!isdefined(var_2644aca3)) {
            return;
        }
        if (self flag::get(#"hash_5d6df1818897df5c") && level.var_75a7d6.var_c20e460e.var_8a337eba < level.var_75a7d6.var_c20e460e.var_3887bcb7) {
            var_8a337eba = 1;
            if (self.var_6f84b820 === #"special") {
                var_8a337eba = 5;
            } else if (self.var_6f84b820 === #"elite") {
                var_8a337eba = 10;
            }
            level.var_75a7d6.var_c20e460e.var_8a337eba = int(min(level.var_75a7d6.var_c20e460e.var_3887bcb7, level.var_75a7d6.var_c20e460e.var_8a337eba + var_8a337eba));
            function_4ba59ffe();
            level thread function_1c6d2370();
            for (i = 0; i < var_8a337eba; i++) {
                level thread function_8c6bf36e(var_2644aca3, self);
                wait(0.2);
            }
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x8742781d, Offset: 0x118a8
// Size: 0x2da
function function_90051ca0() {
    var_e9abcfcb = arraycopy(level.var_75a7d6.var_1f6f9128);
    arrayremovevalue(var_e9abcfcb, level.var_75a7d6.var_c20e460e.var_3b85c6cf);
    foreach (var_98bf27a1 in var_e9abcfcb) {
        if (!var_98bf27a1 flag::get(#"charged") && function_8a1f5c87(var_98bf27a1.mdl_charge.origin)) {
            return var_98bf27a1;
        }
    }
    if (isdefined(level.var_75a7d6.var_c20e460e.var_3b85c6cf) && !level.var_75a7d6.var_c20e460e.var_3b85c6cf flag::get(#"charged") && function_8a1f5c87(level.var_75a7d6.var_c20e460e.var_3b85c6cf.mdl_charge.origin)) {
        return level.var_75a7d6.var_c20e460e.var_3b85c6cf;
    }
    if (isdefined(level.var_75a7d6.var_c20e460e.var_3b85c6cf) && !level.var_75a7d6.var_c20e460e.var_3b85c6cf flag::get(#"charged")) {
        return level.var_75a7d6.var_c20e460e.var_3b85c6cf;
    }
    foreach (var_98bf27a1 in var_e9abcfcb) {
        if (!var_98bf27a1 flag::get(#"charged")) {
            return var_98bf27a1;
        }
    }
    return undefined;
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xf5895fa6, Offset: 0x11b90
// Size: 0x57c
function function_1c6d2370() {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated");
    if (level.var_75a7d6 flag::get(#"defeated") || level.var_75a7d6.var_c20e460e flag::get(#"hash_382481ac36f5fbaa") || level.var_75a7d6.var_c20e460e.var_8a337eba < level.var_75a7d6.var_c20e460e.var_3887bcb7) {
        return;
    }
    level.var_75a7d6.var_c20e460e.var_2644aca3 clientfield::set("" + #"hash_9ef13a567692f32", 2);
    function_9a39a4c();
    var_98bf27a1 = function_90051ca0();
    if (!isstruct(var_98bf27a1)) {
        return;
    }
    mdl_charge = var_98bf27a1.mdl_charge;
    if (!isdefined(mdl_charge)) {
        return;
    }
    level.var_75a7d6.var_c20e460e.var_3b85c6cf = var_98bf27a1;
    level.var_75a7d6.var_c20e460e flag::set(#"hash_382481ac36f5fbaa");
    level.var_75a7d6.var_c20e460e notify(#"stop_think");
    level.var_75a7d6.var_c20e460e notify(#"hash_388517c42129d55c");
    level thread function_35058c30();
    var_bad95e69 = 1;
    n_speed = undefined;
    if (!function_8a1f5c87(mdl_charge.origin)) {
        function_7c6aaab3(1, 0);
        var_bad95e69 = 0;
        n_speed = 400;
    }
    function_91b8984b(mdl_charge.origin, mdl_charge.angles, undefined, 1, n_speed, var_bad95e69);
    a_ents[#"maxis"] = level.var_75a7d6.var_2644aca3;
    level.var_75a7d6.var_c20e460e.mdl_anchor scene::play(#"hash_5b405bfccbbf2def", "cannon_in", a_ents);
    level.var_75a7d6.var_c20e460e.mdl_anchor thread scene::play(#"hash_5b405bfccbbf2def", "cannon_loop", a_ents);
    var_1280faf3 = var_98bf27a1.var_1280faf3;
    if (isdefined(var_1280faf3)) {
        var_1280faf3 clientfield::set("" + #"hash_469f6acd46f13b91", 1);
        var_1280faf3 playsound(#"hash_6ab009ae4142d4ec");
    }
    wait(1);
    var_98bf27a1 flag::set(#"charged");
    level thread function_57858b58(var_98bf27a1);
    level.var_75a7d6.var_c20e460e.var_2644aca3 clientfield::set("" + #"hash_9ef13a567692f32", 1);
    level.var_75a7d6.var_c20e460e.var_8a337eba = 0;
    function_4ba59ffe();
    level thread function_f83c329c(#"hash_3ae5c3c2322b1c03", 0, 0, {#str_id:#"hash_3ae5c3c2322b1c03", #n_time:30});
    level.var_75a7d6.var_c20e460e.mdl_anchor scene::play(#"hash_5b405bfccbbf2def", "cannon_out", a_ents);
    level.var_75a7d6.var_c20e460e flag::clear(#"hash_382481ac36f5fbaa");
    function_9965670d();
    level thread function_cdc05f45(1, 0);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x3e0ba54b, Offset: 0x12118
// Size: 0x1dc
function function_35058c30() {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"intermission");
    if (!level.var_75a7d6 flag::get(#"hash_287677ffb745b0e2") || level.var_75a7d6 flag::get_any([#"defeated", #"intermission"]) || level.var_75a7d6.var_c20e460e flag::get(#"hash_58ea62b85fb9afed")) {
        return;
    }
    wait(1);
    if (!level.var_75a7d6.var_c20e460e flag::get(#"hash_58ea62b85fb9afed") && level.var_75a7d6.var_c20e460e flag::get(#"hash_382481ac36f5fbaa") && !function_ef8d1319()) {
        level.var_75a7d6.var_c20e460e flag::set(#"hash_58ea62b85fb9afed");
        level thread zm_vo::function_7622cb70(#"hash_48a6eabf092e71b1");
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0x89a26a42, Offset: 0x12300
// Size: 0x1a4
function function_8c6bf36e(var_2644aca3, var_a132edb9) {
    if (!(isdefined(var_2644aca3) && isdefined(var_a132edb9))) {
        return;
    }
    v_start = var_a132edb9 getcentroid();
    if (!isdefined(v_start)) {
        v_start = var_a132edb9.origin;
    }
    if (isvec(v_start)) {
        mdl_fx = util::spawn_model(#"tag_origin", v_start);
        if (isdefined(var_2644aca3)) {
            mdl_fx clientfield::set("" + #"hash_4e6fb90b199f15be", 1);
            v_end = var_2644aca3 getcentroid();
            if (!isdefined(v_end)) {
                v_end = var_2644aca3.origin;
            }
            if (isvec(v_end)) {
                mdl_fx moveto(v_end, 1);
                mdl_fx waittill(#"movedone");
            }
            mdl_fx clientfield::set("" + #"hash_4e6fb90b199f15be", 0);
        }
        mdl_fx thread util::delayed_delete(1);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xe24b5f98, Offset: 0x124b0
// Size: 0xc4
function function_4ba59ffe() {
    if (!level.var_75a7d6 flag::get(#"intermission")) {
        n_progress = max(0.025, level.var_75a7d6.var_c20e460e.var_8a337eba / level.var_75a7d6.var_c20e460e.var_3887bcb7);
        if (n_progress < 0) {
            n_progress = 0;
        } else if (n_progress > 1) {
            n_progress = 1;
        }
        zm_sq::sndonoverride_eye_(n_progress);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x39e59c1e, Offset: 0x12580
// Size: 0x9c
function function_9965670d() {
    level.var_75a7d6.var_c20e460e flag::set(#"hash_f6fa640d2850acd");
    if (isdefined(level.var_75a7d6.var_c20e460e.var_2644aca3)) {
        level.var_75a7d6.var_c20e460e.var_2644aca3 clientfield::set("" + #"hash_43c4039b38b89f56", 1);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x4533785b, Offset: 0x12628
// Size: 0x94
function function_9a39a4c() {
    level.var_75a7d6.var_c20e460e flag::clear(#"hash_f6fa640d2850acd");
    if (isdefined(level.var_75a7d6.var_c20e460e.var_2644aca3)) {
        level.var_75a7d6.var_c20e460e.var_2644aca3 clientfield::set("" + #"hash_43c4039b38b89f56", 0);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x99e0f43f, Offset: 0x126c8
// Size: 0x3c4
function function_bc175096(var_98bf27a1) {
    if (!zm_utility::is_ee_enabled() || !isdefined(var_98bf27a1.target)) {
        return;
    }
    if (!isdefined(level.var_75a7d6.var_1f6f9128)) {
        level.var_75a7d6.var_1f6f9128 = [];
    } else if (!isarray(level.var_75a7d6.var_1f6f9128)) {
        level.var_75a7d6.var_1f6f9128 = array(level.var_75a7d6.var_1f6f9128);
    }
    level.var_75a7d6.var_1f6f9128[level.var_75a7d6.var_1f6f9128.size] = var_98bf27a1;
    var_5d0628dc = getent(var_98bf27a1.target, "targetname");
    if (isspawner(var_5d0628dc)) {
        while (true) {
            var_98bf27a1.var_1280faf3 = var_5d0628dc spawnfromspawner(undefined, 1, 1, 1);
            if (isdefined(var_98bf27a1.var_1280faf3)) {
                break;
            }
            waitframe(1);
        }
    }
    var_1280faf3 = var_98bf27a1.var_1280faf3;
    var_1280faf3 endon(#"death");
    var_1280faf3.var_98bf27a1 = var_98bf27a1;
    var_1280faf3 makeunusable();
    var_1280faf3 callback::function_d8abfc3d(#"hash_666d48a558881a36", &function_733c1a3f);
    var_1280faf3 callback::function_d8abfc3d(#"hash_55f29e0747697500", &function_bc6c4c25);
    var_1280faf3 flag::set(#"hash_737ee671a33a84b7");
    var_1280faf3 setteam(#"allies");
    var_1280faf3 val::set(#"hash_3a9e9a3f3f770d4a", "allowdeath", 0);
    var_1280faf3 val::set(#"hash_3a9e9a3f3f770d4a", "takedamage", 1);
    var_1280faf3.health = 1;
    foreach (struct in struct::get_array(var_98bf27a1.target)) {
        if (struct.var_fdd68e6f === #"charge") {
            var_98bf27a1.mdl_charge = util::spawn_model(#"tag_origin", struct.origin, struct.angles);
            var_98bf27a1.mdl_charge linkto(var_1280faf3, "tag_flash");
            break;
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xb7288f0f, Offset: 0x12a98
// Size: 0xca
function function_ab16ea40(var_1280faf3) {
    var_98bf27a1 = var_1280faf3.var_98bf27a1;
    if (!level.var_75a7d6 flag::get(#"intermission") && isstruct(var_98bf27a1) && var_98bf27a1 flag::get(#"charged") && !isplayer(var_1280faf3 getseatoccupant(0))) {
        return true;
    }
    return false;
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xc387300e, Offset: 0x12b70
// Size: 0x204
function function_733c1a3f(s_params) {
    self makeusable();
    e_player = s_params.player;
    if (isplayer(e_player)) {
        e_player.var_f22c83f5 = 1;
    }
    if (!level.var_75a7d6 flag::get_any([#"defeated", #"intermission", #"hash_4e953b3843bae375"])) {
        str_vo = #"hash_2543c53a17547f61";
        if (level.var_75a7d6 flag::get(#"hash_17c454e32450dd92")) {
            str_vo = #"hash_1b714dba19ea3e0f";
        } else if (level.var_75a7d6 flag::get(#"hash_4ae068100a9d8c76")) {
            str_vo = #"hash_1b88d2ba19fdfeef";
        } else if (level.var_75a7d6 flag::get_any([#"hash_12678fff6a404d29", #"hash_48bc8345fad29b74"])) {
            str_vo = #"hash_1b81e1ba19f7f9be";
        }
        level thread function_f83c329c(str_vo, 0, 0.5, {#str_id:#"hash_711ebafa8fd9f78b", #n_time:10}, 0);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xfbfb9ff3, Offset: 0x12d80
// Size: 0x76
function function_bc6c4c25(s_params) {
    self makeunusable();
    e_player = s_params.player;
    if (isplayer(e_player)) {
        e_player val::reset_all(#"hash_41e0ea13e56b1f40");
        e_player.var_f22c83f5 = undefined;
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x6307b1ac, Offset: 0x12e00
// Size: 0x14e
function function_401c03c5(e_player) {
    var_98bf27a1 = self.stub.var_98bf27a1;
    var_1280faf3 = var_98bf27a1.var_1280faf3;
    if (isvehicle(var_1280faf3) && zm_utility::is_player_valid(e_player)) {
        var_734a260 = var_1280faf3 getseatoccupant(0);
        if (!isplayer(var_734a260)) {
            if (var_98bf27a1 flag::get(#"charged")) {
                self sethintstringforplayer(e_player, #"hash_1902e860cf0c6134");
            } else {
                self sethintstringforplayer(e_player, #"hash_65d561f7532ae5ba");
            }
            return true;
        }
    }
    self sethintstringforplayer(e_player, #"");
    return false;
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x2cad1016, Offset: 0x12f58
// Size: 0x150
function function_38e2dcaa(s_interact) {
    var_98bf27a1 = s_interact.var_98bf27a1;
    if (!isdefined(var_98bf27a1)) {
        return;
    }
    while (true) {
        s_waitresult = s_interact waittill(#"trigger_activated");
        e_player = s_waitresult.e_who;
        if (var_98bf27a1 flag::get(#"charged") && zm_utility::is_player_valid(e_player)) {
            var_1280faf3 = var_98bf27a1.var_1280faf3;
            if (isvehicle(var_1280faf3)) {
                var_734a260 = var_1280faf3 getseatoccupant(0);
                if (!isplayer(var_734a260)) {
                    var_1280faf3 usevehicle(e_player, 0);
                    var_1280faf3 playsound(#"hash_5abf8b261a1c3fb2");
                }
            }
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x16146a08, Offset: 0x130b0
// Size: 0x52c
function function_57858b58(var_98bf27a1) {
    var_1280faf3 = var_98bf27a1.var_1280faf3;
    if (!isdefined(var_1280faf3)) {
        return;
    }
    var_1280faf3 endon(#"death");
    var_1280faf3 disabledriverfiring(0);
    while (!var_1280faf3 isdriverfiring()) {
        waitframe(1);
    }
    var_3ef4b5cf = var_1280faf3 getseatoccupant(0);
    if (isplayer(var_3ef4b5cf)) {
        var_3ef4b5cf val::set(#"hash_41e0ea13e56b1f40", "ignoreme", 1);
        var_3ef4b5cf val::set(#"hash_41e0ea13e56b1f40", "takedamage", 0);
        var_3ef4b5cf val::set(#"hash_41e0ea13e56b1f40", "allowdeath", 0);
    }
    var_1280faf3 disabledriverfiring(1);
    var_1280faf3 makeunusable();
    var_1280faf3 clientfield::set("" + #"hash_469f6acd46f13b91", 2);
    var_abe648f0 = {#origin:var_1280faf3.origin, #radius:1024, #n_start:0, #var_efc4d374:0.3, #n_duration:2};
    level thread function_a7978694(var_abe648f0);
    var_1280faf3 playsound(#"hash_1b48225ef68f87b2");
    wait(2);
    var_abe648f0 notify(#"stop");
    var_abe648f0 struct::delete();
    var_1280faf3 clientfield::set("" + #"hash_469f6acd46f13b91", 3);
    var_abe648f0 = {#origin:var_1280faf3.origin, #radius:1024, #n_start:0.4};
    level thread function_a7978694(var_abe648f0);
    level thread function_cd50501e(var_1280faf3);
    level thread function_2bc1ab1(var_1280faf3.origin);
    wait(5);
    var_98bf27a1 flag::clear(#"charged");
    var_1280faf3 notify(#"stop_damage");
    var_abe648f0 notify(#"stop");
    var_abe648f0 struct::delete();
    var_1280faf3 clientfield::set("" + #"hash_469f6acd46f13b91", 0);
    var_abe648f0 = {#origin:var_1280faf3.origin, #radius:1024, #n_start:0.4, #var_efc4d374:0, #n_duration:1, #var_2d65be8d:1};
    level thread function_a7978694(var_abe648f0);
    level thread function_2bc1ab1(var_1280faf3.origin);
    wait(1);
    var_3ef4b5cf = var_1280faf3 getseatoccupant(0);
    if (isplayer(var_3ef4b5cf)) {
        var_1280faf3 usevehicle(var_3ef4b5cf, 0);
        var_1280faf3 playsound(#"hash_14c2e1af25683524");
    }
    level thread function_1c6d2370();
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x0
// Checksum 0xb9ecf1a8, Offset: 0x135e8
// Size: 0xe4
function function_866fc84d(var_98bf27a1) {
    if (!isstruct(var_98bf27a1)) {
        return;
    }
    level endon(#"end_game");
    level.var_75a7d6 endon(#"defeated", #"hash_5aa439133f7cf591");
    var_98bf27a1 flag::wait_till_clear(#"charged");
    level thread function_f83c329c(#"hash_68fef8aec4a2ac38", 0, 0.5, {#str_id:#"hash_68fef8aec4a2ac38", #n_time:30}, 0);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xa246b9e6, Offset: 0x136d8
// Size: 0x37e
function function_cd50501e(var_1280faf3) {
    if (!isdefined(var_1280faf3)) {
        return;
    }
    var_1280faf3 endon(#"death", #"stop_damage");
    while (true) {
        var_deda81c2 = var_1280faf3 gettagorigin("tag_flash");
        var_f2658966 = anglestoforward(var_1280faf3 gettagangles("tag_flash"));
        var_b700f817 = undefined;
        var_a9f2d396 = 0;
        foreach (var_ce34262e in level.var_75a7d6.var_e890a8bc) {
            var_1ec33c70 = var_ce34262e.origin;
            if (isvec(var_1ec33c70)) {
                n_dot = vectordot(anglestoforward(vectortoangles(var_1ec33c70 - var_deda81c2)), var_f2658966);
                if (n_dot > 0 && n_dot >= 0.99 && n_dot > var_a9f2d396) {
                    var_b700f817 = var_ce34262e;
                    var_a9f2d396 = n_dot;
                }
            }
        }
        if (!isdefined(var_b700f817)) {
            v_start = var_deda81c2 + var_f2658966 * 256;
            v_end = var_deda81c2 + var_f2658966 * 2048;
            a_trace = bullettrace(v_start, v_end, 0, undefined);
            if (isarray(a_trace)) {
                var_fd92bc1 = a_trace[#"entity"];
                if (isdefined(var_fd92bc1) && var_fd92bc1 flag::get(#"is_weakpoint")) {
                    var_b700f817 = var_fd92bc1;
                }
            }
        }
        if (isdefined(var_b700f817) && !var_b700f817 flag::get(#"damage_cooldown")) {
            var_b700f817 dodamage(9999, var_deda81c2, var_1280faf3, var_1280faf3, "none", "MOD_UNKNOWN", 0, getweapon(#"hash_44b6ac9de3d37ee1"));
            var_b700f817 flag::set(#"damage_cooldown");
            level thread function_ea336b90(var_b700f817);
        }
        waitframe(1);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x2df8177, Offset: 0x13a60
// Size: 0x3c
function function_ea336b90(var_ce34262e) {
    wait(0.1);
    if (isdefined(var_ce34262e)) {
        var_ce34262e flag::clear(#"damage_cooldown");
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x1eee7ce6, Offset: 0x13aa8
// Size: 0x180
function function_2bc1ab1(v_center) {
    if (!isvec(v_center)) {
        return;
    }
    level function_e8799ac6(v_center, 512);
    var_eb5353bb = arraysortclosest(getaiarray(), v_center, undefined, 0, 512);
    foreach (var_4e7c260f in var_eb5353bb) {
        if (isalive(var_4e7c260f) && !is_true(var_4e7c260f.var_c71090dd) && var_4e7c260f.team === level.zombie_team && (!isdefined(var_4e7c260f.allowdeath) || var_4e7c260f.allowdeath)) {
            var_4e7c260f kill(undefined, undefined, undefined, undefined, undefined, 1);
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0xaa0f1a20, Offset: 0x13c30
// Size: 0x2c0
function function_e8799ac6(v_center, n_radius = 512) {
    if (!isvec(v_center)) {
        return;
    }
    var_17c7dbe6 = arraysortclosest(zombie_utility::get_zombie_array(), v_center, undefined, 0, n_radius);
    foreach (var_ccea7dbf in var_17c7dbe6) {
        if (isalive(var_ccea7dbf) && !is_true(var_ccea7dbf.var_c71090dd)) {
            if (math::cointoss()) {
                gibserverutils::gibhead(var_ccea7dbf);
            }
            if (math::cointoss()) {
                if (math::cointoss()) {
                    gibserverutils::gibleftarm(var_ccea7dbf);
                } else {
                    gibserverutils::gibrightarm(var_ccea7dbf);
                }
            }
            if (math::cointoss()) {
                if (math::cointoss()) {
                    gibserverutils::gibleftleg(var_ccea7dbf);
                } else {
                    gibserverutils::gibrightleg(var_ccea7dbf);
                }
            }
            n_random_x = randomfloatrange(-3, 3);
            n_random_y = randomfloatrange(-3, 3);
            v_fling = 200 * vectornormalize(var_ccea7dbf.origin - v_center + (n_random_x, n_random_y, 100));
            var_ccea7dbf.var_c71090dd = 1;
            var_ccea7dbf.var_d45ca662 = 1;
            var_ccea7dbf.var_98f1f37c = 1;
            var_ccea7dbf thread zm_utility::function_ffc279(v_fling, var_ccea7dbf);
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xabfc87ae, Offset: 0x13ef8
// Size: 0x232
function function_a7978694(var_abe648f0) {
    v_origin = var_abe648f0.origin;
    n_radius = var_abe648f0.radius;
    n_start = var_abe648f0.n_start;
    if (!(isdefined(n_radius) && isdefined(v_origin) && isdefined(n_start))) {
        return;
    }
    var_abe648f0 endon(#"stop");
    var_efc4d374 = var_abe648f0.var_efc4d374;
    n_duration = var_abe648f0.n_duration;
    n_start_time = gettime();
    while (true) {
        if (!isdefined(n_duration)) {
            earthquake(n_start, float(function_60d95f53()) / 1000, v_origin, n_radius);
        } else {
            n_percent = float(gettime() - n_start_time) / 1000 / n_duration;
            if (n_percent < 0) {
                n_percent = 0;
            } else if (n_percent > 1) {
                n_percent = 1;
            }
            n_earthquake = lerpfloat(n_start, var_efc4d374, n_percent);
            if (n_earthquake > 0) {
                earthquake(n_earthquake, float(function_60d95f53()) / 1000, v_origin, n_radius);
            }
            if (is_true(var_abe648f0.var_2d65be8d) && n_earthquake >= 1) {
                var_abe648f0 struct::delete();
                break;
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xe7e3fc87, Offset: 0x14138
// Size: 0x6a
function on_ai_spawned() {
    self endon(#"death");
    if (self.team !== level.zombie_team) {
        return;
    }
    if (level.round_number < 20) {
        self.maxhealth = self zm_ai_utility::function_b5fe98(20);
        self.health = self.maxhealth;
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x6c650039, Offset: 0x141b0
// Size: 0x72e
function function_658da77b(var_41ca011b = 0) {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"hash_21eabf998a71487a");
    n_players = getplayers().size;
    if (n_players < 1) {
        n_players = 1;
    } else if (n_players > 4) {
        n_players = 4;
    }
    switch (n_players) {
    case 1:
        var_b9420427 = 1;
        if (var_41ca011b) {
            var_b9420427 = 0.5;
        }
        break;
    case 2:
        var_b9420427 = 1;
        if (var_41ca011b) {
            var_b9420427 = 0.5;
        }
        break;
    case 3:
        var_b9420427 = 0.5;
        if (var_41ca011b) {
            var_b9420427 = 0.5;
        }
        break;
    case 4:
        var_b9420427 = 0.5;
        if (var_41ca011b) {
            var_b9420427 = 0.5;
        }
        break;
    }
    while (true) {
        var_1c869e1 = getaicount();
        if (!level.var_75a7d6 flag::get(#"hash_1e2734204ab845a2") && var_1c869e1 < getailimit() && var_1c869e1 < level.zombie_ai_limit && var_1c869e1 < level.var_75a7d6.var_772164a6) {
            var_949e9e59 = function_544d0383(var_41ca011b);
            if (isstruct(var_949e9e59)) {
                str_ai = var_949e9e59.str_ai;
                s_spawn = var_949e9e59.s_spawn;
                if (isdefined(str_ai) && isdefined(s_spawn)) {
                    switch (str_ai) {
                    case #"abom":
                        ai_spawned = zm_ai_abom::spawn_single(1, s_spawn);
                        break;
                    case #"mechz":
                        ai_spawned = namespace_6f90aa12::spawn_single(1, s_spawn);
                        break;
                    case #"hash_643d498546885532":
                        ai_spawned = zm_ai_soa::function_e803632f(1, s_spawn);
                        break;
                    case #"tempest":
                        ai_spawned = zm_ai_avogadro::spawn_single(1, s_spawn);
                        break;
                    case #"tormentor":
                        ai_spawned = namespace_abfee9ba::spawn_single(1, s_spawn);
                        break;
                    case #"raz":
                        ai_spawned = namespace_ac4eb28f::spawn_single(1, s_spawn);
                        break;
                    case #"mimic":
                        ai_spawned = zm_ai_mimic::spawn_single(s_spawn);
                        break;
                    case #"zombie":
                        sp_zombie = zm_tungsten::function_ddc13fd6();
                        if (isdefined(sp_zombie)) {
                            ai_spawned = zombie_utility::spawn_zombie(sp_zombie, undefined, s_spawn);
                        }
                        break;
                    }
                    if (isdefined(ai_spawned)) {
                        level thread function_6ea14df0(str_ai);
                        if (str_ai == #"zombie") {
                            function_1eaaceab(level.var_75a7d6.var_6359299f);
                            if (!isdefined(level.var_75a7d6.var_6359299f)) {
                                level.var_75a7d6.var_6359299f = [];
                            } else if (!isarray(level.var_75a7d6.var_6359299f)) {
                                level.var_75a7d6.var_6359299f = array(level.var_75a7d6.var_6359299f);
                            }
                            level.var_75a7d6.var_6359299f[level.var_75a7d6.var_6359299f.size] = ai_spawned;
                        } else {
                            function_1eaaceab(level.var_75a7d6.var_cd0c8367);
                            if (!isdefined(level.var_75a7d6.var_cd0c8367)) {
                                level.var_75a7d6.var_cd0c8367 = [];
                            } else if (!isarray(level.var_75a7d6.var_cd0c8367)) {
                                level.var_75a7d6.var_cd0c8367 = array(level.var_75a7d6.var_cd0c8367);
                            }
                            level.var_75a7d6.var_cd0c8367[level.var_75a7d6.var_cd0c8367.size] = ai_spawned;
                            if (str_ai == #"mechz" || str_ai == #"abom") {
                                function_1eaaceab(level.var_75a7d6.var_e97bb91a);
                                if (!isdefined(level.var_75a7d6.var_e97bb91a)) {
                                    level.var_75a7d6.var_e97bb91a = [];
                                } else if (!isarray(level.var_75a7d6.var_e97bb91a)) {
                                    level.var_75a7d6.var_e97bb91a = array(level.var_75a7d6.var_e97bb91a);
                                }
                                level.var_75a7d6.var_e97bb91a[level.var_75a7d6.var_e97bb91a.size] = ai_spawned;
                            }
                        }
                    }
                }
            }
        }
        wait(var_b9420427);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x3d71236e, Offset: 0x148e8
// Size: 0x5fa
function function_a831c582(str_ai) {
    if (!isdefined(str_ai)) {
        return;
    }
    n_players = getplayers().size;
    if (n_players < 1) {
        n_players = 1;
    } else if (n_players > 4) {
        n_players = 4;
    }
    switch (str_ai) {
    case #"abom":
        switch (n_players) {
        case 1:
            n_time = 180;
            break;
        case 2:
            n_time = 180;
            break;
        case 3:
            n_time = 120;
            break;
        case 4:
            n_time = 120;
            break;
        }
        return {#str_flag:#"hash_15ced8000939a79b", #n_time:n_time};
    case #"mechz":
        switch (n_players) {
        case 1:
            n_time = 180;
            break;
        case 2:
            n_time = 180;
            break;
        case 3:
            n_time = 120;
            break;
        case 4:
            n_time = 120;
            break;
        }
        return {#str_flag:#"hash_71a8b0cba966f837", #n_time:n_time};
    case #"hash_643d498546885532":
        switch (n_players) {
        case 1:
            n_time = 60;
            break;
        case 2:
            n_time = 60;
            break;
        case 3:
            n_time = 30;
            break;
        case 4:
            n_time = 30;
            break;
        }
        return {#str_flag:#"hash_25f8eaaceeb93d67", #n_time:n_time};
    case #"tempest":
        switch (n_players) {
        case 1:
            n_time = 120;
            break;
        case 2:
            n_time = 120;
            break;
        case 3:
            n_time = 60;
            break;
        case 4:
            n_time = 60;
            break;
        }
        return {#str_flag:#"hash_1bd28fc130c9aad2", #n_time:n_time};
    case #"tormentor":
        switch (n_players) {
        case 1:
            n_time = 10;
            break;
        case 2:
            n_time = 10;
            break;
        case 3:
            n_time = 5;
            break;
        case 4:
            n_time = 5;
            break;
        }
        return {#str_flag:#"hash_3cd746b1b8037a98", #n_time:n_time};
    case #"raz":
        switch (n_players) {
        case 1:
            n_time = 60;
            break;
        case 2:
            n_time = 60;
            break;
        case 3:
            n_time = 30;
            break;
        case 4:
            n_time = 30;
            break;
        }
        return {#str_flag:#"hash_88667c18a4cff07", #n_time:n_time};
    case #"mimic":
        switch (n_players) {
        case 1:
            n_time = 60;
            break;
        case 2:
            n_time = 60;
            break;
        case 3:
            n_time = 30;
            break;
        case 4:
            n_time = 30;
            break;
        }
        return {#str_flag:#"hash_51c765cb33419613", #n_time:n_time};
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xe5a768d2, Offset: 0x14ef0
// Size: 0xb4
function function_6ea14df0(str_ai) {
    level endon(#"end_game");
    var_591caa3e = function_a831c582(str_ai);
    str_flag = var_591caa3e.str_flag;
    n_time = var_591caa3e.n_time;
    if (!(isdefined(str_flag) && isdefined(n_time))) {
        return;
    }
    level.var_75a7d6 flag::set(str_flag);
    wait(n_time);
    level.var_75a7d6 flag::clear(str_flag);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 2, eflags: 0x2 linked
// Checksum 0xbd156b36, Offset: 0x14fb0
// Size: 0xa4
function get_spawn(str_ai, var_41ca011b = 0) {
    if (!isdefined(str_ai)) {
        return;
    }
    var_815eeaa4 = level.var_75a7d6.var_815eeaa4;
    if (var_41ca011b) {
        var_815eeaa4 = level.var_75a7d6.var_1d10f036;
    }
    a_s_spawns = var_815eeaa4[str_ai];
    if (isarray(a_s_spawns)) {
        return array::random(a_s_spawns);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x581f1e29, Offset: 0x15060
// Size: 0xdf6
function function_544d0383(var_41ca011b = 0) {
    n_players = getplayers().size;
    if (n_players < 1) {
        n_players = 1;
    } else if (n_players > 4) {
        n_players = 4;
    }
    switch (n_players) {
    case 1:
        var_b849ca6e = 2;
        var_48857b80 = 1;
        break;
    case 2:
        var_b849ca6e = 2;
        var_48857b80 = 1;
        break;
    case 3:
        var_b849ca6e = 3;
        var_48857b80 = 1;
        break;
    case 4:
        var_b849ca6e = 3;
        var_48857b80 = 1;
        break;
    }
    function_1eaaceab(level.var_75a7d6.var_cd0c8367);
    if (level.var_75a7d6.var_cd0c8367.size < var_b849ca6e) {
        function_1eaaceab(level.var_75a7d6.var_e97bb91a);
        if (level.var_75a7d6.var_e97bb91a.size < var_48857b80) {
            if (math::cointoss(5)) {
                var_591caa3e = function_a831c582(#"abom");
                str_flag = var_591caa3e.str_flag;
                if (!isdefined(str_flag) || !level.var_75a7d6 flag::get(str_flag)) {
                    switch (n_players) {
                    case 1:
                        var_c663e5dc = 1;
                        break;
                    case 2:
                        var_c663e5dc = 1;
                        break;
                    case 3:
                        var_c663e5dc = 2;
                        break;
                    case 4:
                        var_c663e5dc = 2;
                        break;
                    }
                    if (isdefined(var_c663e5dc) && getaiarchetypearray(#"abom").size < var_c663e5dc) {
                        s_spawn = get_spawn(#"abom", var_41ca011b);
                        if (isstruct(s_spawn)) {
                            return {#str_ai:#"abom", #s_spawn:s_spawn};
                        }
                    }
                }
            }
            if (math::cointoss(5)) {
                var_591caa3e = function_a831c582(#"mechz");
                str_flag = var_591caa3e.str_flag;
                if (!isdefined(str_flag) || !level.var_75a7d6 flag::get(str_flag)) {
                    switch (n_players) {
                    case 1:
                        var_5211199d = 1;
                        break;
                    case 2:
                        var_5211199d = 1;
                        break;
                    case 3:
                        var_5211199d = 2;
                        break;
                    case 4:
                        var_5211199d = 2;
                        break;
                    }
                    if (isdefined(var_5211199d) && getaiarchetypearray(#"mechz").size < var_5211199d) {
                        s_spawn = get_spawn(#"mechz", var_41ca011b);
                        if (isstruct(s_spawn)) {
                            return {#str_ai:#"mechz", #s_spawn:s_spawn};
                        }
                    }
                }
            }
        }
        if (math::cointoss(5)) {
            var_591caa3e = function_a831c582(#"hash_643d498546885532");
            str_flag = var_591caa3e.str_flag;
            if (!isdefined(str_flag) || !level.var_75a7d6 flag::get(str_flag)) {
                switch (n_players) {
                case 1:
                    var_1010e70f = 1;
                    break;
                case 2:
                    var_1010e70f = 1;
                    break;
                case 3:
                    var_1010e70f = 2;
                    break;
                case 4:
                    var_1010e70f = 2;
                    break;
                }
                if (isdefined(var_1010e70f) && getaiarchetypearray(#"soa").size < var_1010e70f) {
                    s_spawn = get_spawn(#"hash_643d498546885532", var_41ca011b);
                    if (isstruct(s_spawn)) {
                        return {#str_ai:#"hash_643d498546885532", #s_spawn:s_spawn};
                    }
                }
            }
        }
        if (math::cointoss(0)) {
            var_591caa3e = function_a831c582(#"tempest");
            str_flag = var_591caa3e.str_flag;
            if (!isdefined(str_flag) || !level.var_75a7d6 flag::get(str_flag)) {
                switch (n_players) {
                case 1:
                    var_73489a82 = 1;
                    break;
                case 2:
                    var_73489a82 = 1;
                    break;
                case 3:
                    var_73489a82 = 2;
                    break;
                case 4:
                    var_73489a82 = 2;
                    break;
                }
                if (isdefined(var_73489a82) && getaiarchetypearray(#"avogadro").size < var_73489a82) {
                    s_spawn = get_spawn(#"tempest", var_41ca011b);
                    if (isstruct(s_spawn)) {
                        return {#str_ai:#"tempest", #s_spawn:s_spawn};
                    }
                }
            }
        }
        if (math::cointoss(5)) {
            var_591caa3e = function_a831c582(#"tormentor");
            str_flag = var_591caa3e.str_flag;
            if (!isdefined(str_flag) || !level.var_75a7d6 flag::get(str_flag)) {
                switch (n_players) {
                case 1:
                    var_60625635 = 1;
                    break;
                case 2:
                    var_60625635 = 1;
                    break;
                case 3:
                    var_60625635 = 2;
                    break;
                case 4:
                    var_60625635 = 2;
                    break;
                }
                if (isdefined(var_60625635) && getaiarchetypearray(#"tormentor").size < var_60625635) {
                    s_spawn = get_spawn(#"tormentor", var_41ca011b);
                    if (isstruct(s_spawn)) {
                        return {#str_ai:#"tormentor", #s_spawn:s_spawn};
                    }
                }
            }
        }
        if (math::cointoss(5)) {
            var_591caa3e = function_a831c582(#"raz");
            str_flag = var_591caa3e.str_flag;
            if (!isdefined(str_flag) || !level.var_75a7d6 flag::get(str_flag)) {
                switch (n_players) {
                case 1:
                    var_cd1a1fde = 1;
                    break;
                case 2:
                    var_cd1a1fde = 1;
                    break;
                case 3:
                    var_cd1a1fde = 2;
                    break;
                case 4:
                    var_cd1a1fde = 2;
                    break;
                }
                if (isdefined(var_cd1a1fde) && getaiarchetypearray(#"raz").size < var_cd1a1fde) {
                    s_spawn = get_spawn(#"raz", var_41ca011b);
                    if (isstruct(s_spawn)) {
                        return {#str_ai:#"raz", #s_spawn:s_spawn};
                    }
                }
            }
        }
        if (math::cointoss(5)) {
            var_591caa3e = function_a831c582(#"mimic");
            str_flag = var_591caa3e.str_flag;
            if (!isdefined(str_flag) || !level.var_75a7d6 flag::get(str_flag)) {
                switch (n_players) {
                case 1:
                    var_aa963e5b = 1;
                    break;
                case 2:
                    var_aa963e5b = 1;
                    break;
                case 3:
                    var_aa963e5b = 2;
                    break;
                case 4:
                    var_aa963e5b = 2;
                    break;
                }
                if (isdefined(var_aa963e5b) && getaiarchetypearray(#"mimic").size < var_aa963e5b) {
                    s_spawn = get_spawn(#"mimic", var_41ca011b);
                    if (isstruct(s_spawn)) {
                        return {#str_ai:#"mimic", #s_spawn:s_spawn};
                    }
                }
            }
        }
    }
    s_spawn = get_spawn(#"zombie", var_41ca011b);
    if (isstruct(s_spawn)) {
        return {#str_ai:#"zombie", #s_spawn:s_spawn};
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x0
// Checksum 0xf4e46fd8, Offset: 0x15e60
// Size: 0x44
function function_4cc9e609() {
    if (isdefined(level.var_75a7d6.var_772164a6)) {
        level.var_75a7d6.var_772164a6--;
        function_886e403b();
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x0
// Checksum 0x2f6baa55, Offset: 0x15eb0
// Size: 0x30
function function_a0f1fc1d() {
    if (isdefined(level.var_75a7d6.var_772164a6)) {
        level.var_75a7d6.var_772164a6++;
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x2762e8e7, Offset: 0x15ee8
// Size: 0x256
function function_886e403b() {
    if (getaicount() >= level.var_75a7d6.var_772164a6) {
        var_d83a65d4 = 0;
        function_1eaaceab(level.var_75a7d6.var_6359299f);
        foreach (ai_zombie in level.var_75a7d6.var_6359299f) {
            if (isalive(ai_zombie)) {
                b_can_see = 0;
                foreach (e_player in function_a1ef346b()) {
                    if (e_player zm_utility::is_player_looking_at(ai_zombie.origin, undefined, 0, e_player)) {
                        b_can_see = 1;
                        break;
                    }
                }
                if (!b_can_see) {
                    ai_cleanup = ai_zombie;
                    break;
                }
                var_d83a65d4++;
                if (var_d83a65d4 % 5 == 0) {
                    waitframe(1);
                }
            }
        }
        if (!isdefined(ai_cleanup)) {
            function_1eaaceab(level.var_75a7d6.var_6359299f);
            ai_cleanup = array::random(level.var_75a7d6.var_6359299f);
        }
        if (isdefined(ai_cleanup)) {
            ai_cleanup deletedelay();
            while (isdefined(ai_cleanup)) {
                waitframe(1);
            }
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x320e8a74, Offset: 0x16148
// Size: 0xa64
function boss_outro() {
    level endon(#"end_game");
    level.var_f3b7c276 = &function_c835e3c4;
    level.var_a69fc817 = 1;
    level clientfield::set("" + #"hash_5a36f05cbdf2580", 11);
    level.var_75a7d6.var_9f7af8ca = [];
    foreach (var_ce34262e in level.var_75a7d6.var_e890a8bc) {
        if (isdefined(var_ce34262e)) {
            var_ce34262e deletedelay();
        }
    }
    function_3f9ee018();
    var_fae691b = ["j_elbow_le", "j_shouldertwist_le", "j_shoulder_skin_le", "j_elbow_ri", "j_shouldertwist_ri", "j_shoulder_skin_ri", "tag_fx_crystal_shoulder_le", "tag_fx_crystal_shoulder_ri", "tag_fx_crystal_belly", "tag_head_crystal_fx"];
    foreach (var_676e0814 in var_fae691b) {
        level.var_75a7d6.mdl_body hidepart(var_676e0814, "", 1);
    }
    var_ae4e0e20 = ["j_tentacle_root_le", "j_tentacle_root_ri", "j_spineupper_tentacle_root", "j_spinelower_tentacle_root"];
    foreach (var_eabfe72c in var_ae4e0e20) {
        level.var_75a7d6.mdl_body showpart(var_eabfe72c, "", 1);
    }
    foreach (e_player in getplayers()) {
        e_player function_bc82f900(#"hash_2933dbe91eb483ab");
    }
    level.var_75a7d6 flag::function_c58ecb49(#"priority_vo");
    level thread function_315805c0();
    level.var_75a7d6 notify(#"hash_21eabf998a71487a");
    level thread function_658da77b(1);
    level.var_75a7d6 notify(#"hash_5aa439133f7cf591");
    level thread function_e788990d();
    level thread function_b17579();
    level thread function_b852652a();
    level.var_75a7d6.mdl_body clientfield::set("" + #"hash_d92501ab1efcdd", 0);
    if (!level.var_75a7d6 flag::get(#"hash_12678fff6a404d29")) {
        exploder::kill_exploder("lgt_env_boss_left_arm_long");
        exploder::exploder("lgt_env_boss_left_arm_short");
    }
    if (!level.var_75a7d6 flag::get(#"hash_48bc8345fad29b74")) {
        exploder::kill_exploder("lgt_env_boss_right_arm_long");
        exploder::exploder("lgt_env_boss_right_arm_short");
    }
    function_968e2ead();
    level.var_75a7d6.var_c20e460e notify(#"stop_think");
    var_1bb57bae = level.var_75a7d6.var_c20e460e.var_529d63dd[3];
    if (level.var_75a7d6.var_c20e460e.var_135e3159 !== var_1bb57bae) {
        level thread function_91b8984b(var_1bb57bae.origin, var_1bb57bae.angles);
    }
    level thread zm_vo::function_d6f8bbd9(#"hash_1bcfa276c21b734c", 1, getplayers());
    a_ents[#"boss"] = level.var_75a7d6.mdl_body;
    level.var_75a7d6.s_boss scene::play(#"hash_5ffc9256a4340dcb", "head_break", a_ents);
    music::setmusicstate("boss_outro");
    level thread function_64a4bf62();
    scene::add_scene_func(#"hash_2df6760d47b5c6ef", &function_4d5c5f2, "vignette_start");
    scene::add_scene_func(#"hash_2df6760d47b5c6ef", &function_38c740f4, "shot_01");
    scene::add_scene_func(#"hash_2df6760d47b5c6ef", &function_2f062d72, "shot_02");
    scene::add_scene_func(#"hash_2df6760d47b5c6ef", &function_1d4489ef, "shot_03");
    scene::add_scene_func(#"hash_2df6760d47b5c6ef", &function_3585613, "shot_04");
    scene::add_scene_func(#"hash_2df6760d47b5c6ef", &function_f199b296, "shot_05");
    scene::add_scene_func(#"hash_2df6760d47b5c6ef", &function_f1261395, "vignette_end");
    a_ents = [];
    a_ents[#"boss"] = level.var_75a7d6.mdl_body;
    a_ents[#"maxis"] = level.var_75a7d6.var_c20e460e.var_2644aca3;
    level scene::play(#"hash_2df6760d47b5c6ef", a_ents);
    level.var_75a7d6.var_a17b2556 clientfield::set("" + #"hash_399e2afd773621df", 5);
    level.var_75a7d6.var_b9f89aa6 clientfield::set("" + #"hash_399e2afd773621df", 5);
    wait(5);
    level clientfield::set("" + #"hash_5a36f05cbdf2580", 6);
    level zm_vo::function_7622cb70(#"hash_b4585c0ad32814");
    wait(3);
    level flag::set(#"hash_16783a54b8777dc");
    level lui::screen_fade_out(3, (0, 0, 0));
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xe8effb35, Offset: 0x16bb8
// Size: 0x20c
function function_4d5c5f2(*a_ents) {
    var_da05d30e[#"head"] = level.var_75a7d6.mdl_head;
    level.var_75a7d6.mdl_anchor thread scene::play(#"hash_c1a40f41ec49882", "vignette_start", var_da05d30e);
    level waittill(#"hash_50262659f48fa243");
    level clientfield::set("" + #"hash_5a36f05cbdf2580", 10);
    level thread zm_vo::function_7622cb70(#"hash_b4555c0ad322fb");
    level waittill(#"hash_50262759f48fa3f6");
    level thread zm_vo::function_7622cb70(#"hash_b4565c0ad324ae");
    level waittill(#"hash_50262859f48fa5a9");
    foreach (e_player in function_a1ef346b()) {
        if (zm_utility::is_player_valid(e_player)) {
            e_player dodamage(666, e_player.origin);
        }
    }
    level thread zm_vo::function_7622cb70(#"hash_b4575c0ad32661");
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x4e4b5caa, Offset: 0x16dd0
// Size: 0x538
function function_38c740f4(*a_ents) {
    level.var_75a7d6.var_c20e460e.var_2644aca3 clientfield::set("" + #"hash_25155d60768d46e4", 0);
    level.var_75a7d6.var_c20e460e.var_2644aca3 sethighdetail(1);
    var_da05d30e[#"head"] = level.var_75a7d6.mdl_head;
    level.var_75a7d6.mdl_anchor thread scene::play(#"hash_c1a40f41ec49882", "shot_01", var_da05d30e);
    level.var_75a7d6 flag::set(#"hash_1806d32585449c58");
    level clientfield::set("" + #"hash_763dd8035e80f7c", 1);
    level clientfield::set("" + #"hash_1fb207d10fbe27ce", 1);
    level clientfield::set("" + #"hash_5a36f05cbdf2580", 13);
    level.var_f3b7c276 = undefined;
    level.var_75a7d6 notify(#"hash_1c0cb374de1cb6db");
    callback::remove_on_spawned(&function_b5db06b1);
    level.var_75a7d6 notify(#"hash_40ddf92b93b3b8fd");
    level.var_75a7d6 notify(#"hash_65bfb575e5f27617");
    level.var_75a7d6 notify(#"hash_21eabf998a71487a");
    level thread zm_utility::function_9ad5aeb1(0, 0, 1, 0);
    var_a347ab1 = level.var_75a7d6.var_4d537044;
    foreach (i, e_player in getplayers()) {
        function_c69bc55b(e_player);
        e_player function_230fb4b1();
        e_player clientfield::set("zmbLastStand", 0);
        e_player clientfield::set("zm_last_stand_postfx", 0);
        e_player zm_utility::set_max_health();
        e_player val::set(#"outro", "takedamage", 0);
        e_player val::set(#"outro", "allowdeath", 0);
        if (level.var_87a3c4d1 zm_roots_health_bar::is_open(e_player)) {
            level.var_87a3c4d1 zm_roots_health_bar::close(e_player);
        }
        if (isarray(var_a347ab1)) {
            s_teleport = var_a347ab1[i];
            v_teleport = s_teleport.origin;
            if (isvec(v_teleport)) {
                e_player setorigin(v_teleport);
                if (isdefined(level.var_75a7d6.mdl_body) && level.var_75a7d6.mdl_body haspart("j_spine4")) {
                    var_1979248a = level.var_75a7d6.mdl_body gettagorigin("j_spine4");
                    if (isvec(var_1979248a)) {
                        e_player setplayerangles(vectortoangles(var_1979248a - v_teleport));
                    }
                }
            }
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x9e7a86e6, Offset: 0x17310
// Size: 0x74
function function_2f062d72(*a_ents) {
    var_da05d30e[#"head"] = level.var_75a7d6.mdl_head;
    level.var_75a7d6.mdl_anchor thread scene::play(#"hash_c1a40f41ec49882", "shot_02", var_da05d30e);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xc5c5a68e, Offset: 0x17390
// Size: 0x74
function function_1d4489ef(*a_ents) {
    var_da05d30e[#"head"] = level.var_75a7d6.mdl_head;
    level.var_75a7d6.mdl_anchor thread scene::play(#"hash_c1a40f41ec49882", "shot_03", var_da05d30e);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x83e4f196, Offset: 0x17410
// Size: 0x74
function function_3585613(*a_ents) {
    var_da05d30e[#"head"] = level.var_75a7d6.mdl_head;
    level.var_75a7d6.mdl_anchor thread scene::play(#"hash_c1a40f41ec49882", "shot_04", var_da05d30e);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xb9f8b346, Offset: 0x17490
// Size: 0x74
function function_f199b296(*a_ents) {
    var_da05d30e[#"head"] = level.var_75a7d6.mdl_head;
    level.var_75a7d6.mdl_anchor thread scene::play(#"hash_c1a40f41ec49882", "shot_05", var_da05d30e);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xeebc283c, Offset: 0x17510
// Size: 0x444
function function_f1261395(*a_ents) {
    var_da05d30e[#"head"] = level.var_75a7d6.mdl_head;
    level.var_75a7d6.mdl_anchor thread scene::play(#"hash_c1a40f41ec49882", "vignette_end", var_da05d30e);
    level thread lui::screen_fade_in(1, (1, 1, 1));
    level clientfield::set("" + #"hash_763dd8035e80f7c", 0);
    level clientfield::set("" + #"hash_1fb207d10fbe27ce", 0);
    level.var_75a7d6.mdl_body playsound(#"hash_5c8a35cd1fd3a5eb");
    level flag::set(#"main_quest_completed");
    if (isdefined(level.var_75a7d6.var_c20e460e.var_2644aca3)) {
        level.var_75a7d6.var_c20e460e.var_2644aca3 hide();
    }
    level thread function_a854e962();
    level thread function_eb4af590();
    level thread zm_utility::function_9ad5aeb1(0, 1, 0, 0);
    level waittill(#"hash_3a2628f365b5fdda");
    level.var_75a7d6.mdl_body playsound(#"hash_185ff25449560e2e");
    level.var_75a7d6.mdl_body clientfield::set("" + #"hash_6cc7dece6cee40e1", 1);
    level waittill(#"hash_42923ed5ab4264f");
    level.var_75a7d6.mdl_body clientfield::set("" + #"hash_33b8059f5b3f18b1", 0);
    level.var_75a7d6.mdl_body clientfield::set("" + #"hash_d92501ab1efcdd", 0);
    level.var_75a7d6.mdl_body clientfield::set("" + #"hash_2fc89133ccd7b0df", 0);
    level.var_75a7d6.mdl_head clientfield::set("" + #"hash_2fc89133ccd7b0df", 0);
    function_6c567aad();
    level.var_75a7d6.mdl_body playsound(#"hash_10f1bb5bbeca1d49");
    level thread function_d122270f();
    wait(3);
    level.var_75a7d6.mdl_body clientfield::set("" + #"hash_6cc7dece6cee40e1", 0);
    wait(1);
    level clientfield::set("" + #"hash_78e149e0b7cb80e8", 0);
    wait(2);
    function_df782b45();
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x2610efe2, Offset: 0x17960
// Size: 0x148
function function_d122270f() {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"hash_610f67b9b5f9b320");
    foreach (str_id in array::randomize([#"left", #"right", #"stomach", #"head"])) {
        level thread function_d1acf958(str_id);
        wait(randomfloatrange(0.1, 0.2));
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x2409089a, Offset: 0x17ab0
// Size: 0x144
function function_e954999a() {
    if (level.var_87a3c4d1 zm_roots_health_bar::is_open(self)) {
        level.var_87a3c4d1 zm_roots_health_bar::close(self);
    }
    if (level.var_75a7d6 flag::get(#"hash_1806d32585449c58")) {
        function_c69bc55b(self);
        self function_230fb4b1();
        self clientfield::set("zmbLastStand", 0);
        self clientfield::set("zm_last_stand_postfx", 0);
        self zm_utility::set_max_health();
        self val::set(#"outro", "takedamage", 0);
        self val::set(#"outro", "allowdeath", 0);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 10, eflags: 0x2 linked
// Checksum 0x38cfb373, Offset: 0x17c00
// Size: 0x40c
function function_c835e3c4(*einflictor, *eattacker, *idamage, *smeansofdeath, *weapon, *var_fd90b0bb, *vdir, *shitloc, *psoffsettime, *deathanimduration) {
    self flag::set(#"hash_2a03bf51cb24c450");
    function_c69bc55b(self);
    self.var_65c4e049 = self zm_laststand::function_618fd37e();
    self zm_laststand::function_3d685b5f(0);
    var_c84f9a30 = [#"hash_38c08136902fd553", #"hash_59dbecf72baaa96f", #"hash_59dbedf72baaab22", #"hash_59dbeef72baaacd5", #"hash_59dbe7f72baaa0f0", #"hash_59dbe8f72baaa2a3"];
    foreach (var_66172c0 in var_c84f9a30) {
        self namespace_791d0451::function_4c1d0e25(var_66172c0);
    }
    if (self isskydiving()) {
        self function_8cf53a19();
    }
    self disableweaponcycling();
    self zm_laststand::registerfxanim_warehouse_explo(1);
    clientfield::set_world_uimodel("PlayerList.client" + self.entnum + ".playerIsDowned", 1);
    self allowjump(0);
    self zm_utility::clear_is_drinking();
    self disableoffhandweapons();
    self disableoffhandspecial();
    if (self isusingoffhand()) {
        self forceoffhandend();
    }
    if (isdefined(level._zombie_minigun_powerup_last_stand_func)) {
        self thread [[ level._zombie_minigun_powerup_last_stand_func ]]();
    }
    if (isdefined(level._zombie_tesla_powerup_last_stand_func)) {
        self thread [[ level._zombie_tesla_powerup_last_stand_func ]]();
    }
    self clientfield::set("zm_last_stand_postfx", 1);
    self.var_bd4dd069 = gettime();
    self.health = 1;
    self.laststand = 1;
    self val::set(#"laststand", "ignoreme");
    self zm_laststand::laststand_disable_player_weapons();
    self zm_laststand::laststand_give_pistol();
    if (isdefined(self.var_c4890291)) {
        self.var_c4890291 = [];
    }
    self thread function_cd0a15b5(60);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x47e3fecd, Offset: 0x18018
// Size: 0x248
function function_cd0a15b5(delay) {
    self endoncallback(&function_230fb4b1, #"player_revived", #"zombified", #"disconnect", #"instakill_player", #"fake_death", #"hash_3e64b05a1f125db8");
    level endoncallback(&function_20bc0a74, #"end_game", #"round_reset", #"hash_65bfb575e5f27617");
    self clientfield::set("zmbLastStand", 1);
    self.bleedout_time = delay;
    if (!level.var_ff482f76 zm_laststand_client::is_open(self)) {
        level.var_ff482f76 zm_laststand_client::open(self, 0);
    }
    level.var_ff482f76 zm_laststand_client::set_revive_progress(self, 0);
    while (self.bleedout_time > 0) {
        if (!level.var_ff482f76 zm_laststand_client::is_open(self)) {
            level.var_ff482f76 zm_laststand_client::open(self, 0);
            level.var_ff482f76 zm_laststand_client::set_revive_progress(self, 0);
        }
        self.bleedout_time -= 0.2;
        bleedoutprogress = self.bleedout_time / delay;
        level clientfield::set("laststand_update" + self getentitynumber(), bleedoutprogress);
        level.var_ff482f76 zm_laststand_client::set_bleedout_progress(self, bleedoutprogress);
        wait(0.2);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xf4971d21, Offset: 0x18268
// Size: 0x8c
function function_230fb4b1(*notifyhash) {
    if (isplayer(self) && isdefined(level.var_ff482f76) && level.var_ff482f76 zm_laststand_client::is_open(self)) {
        level.var_ff482f76 zm_laststand_client::close(self);
    }
    self laststand::function_f5714974();
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x5cd7006, Offset: 0x18300
// Size: 0xa8
function function_20bc0a74(*notifyhash) {
    a_e_players = getplayers();
    foreach (player in a_e_players) {
        player function_230fb4b1();
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x191782ef, Offset: 0x183b0
// Size: 0x3d0
function function_6096239d() {
    level endon(#"end_game");
    self endon(#"death");
    if (!isplayer(self)) {
        self notify(#"hash_3e64b05a1f125db8");
        return;
    }
    self flag::clear(#"hash_2a03bf51cb24c450");
    clientfield::set_world_uimodel("PlayerList.client" + self.entnum + ".playerIsDowned", 0);
    self.var_1bee6f4b = undefined;
    self val::reset(#"chopper_gunner", "ignoreme");
    self val::reset(#"chopper_gunner", "takedamage");
    self val::reset(#"remote_missile", "ignoreme");
    self val::reset(#"remote_missile", "takedamage");
    self reviveplayer();
    self zm_utility::set_max_health();
    self clientfield::set("zmbLastStand", 0);
    self clientfield::set("zm_last_stand_postfx", 0);
    self val::set("zm_laststand", "allowdeath", 0);
    self util::delay(2, "death", &val::reset, "zm_laststand", "allowdeath");
    self util::delay(2, "death", &val::reset, "laststand", "ignoreme");
    self.laststand = undefined;
    self.var_d1e03242 = undefined;
    self setmovespeedscale(1);
    self allowjump(1);
    self notify(#"hash_3e64b05a1f125db8");
    if (isdefined(self.var_65c4e049)) {
        self zm_laststand::function_3d685b5f(self.var_65c4e049);
    }
    waitframe(1);
    if (isdefined(self)) {
        self thread zm_laststand::laststand_enable_player_weapons();
    }
    if (getplayers().size == 1) {
        ais = getactorarray();
        foreach (ai in ais) {
            zm_utility::get_closest_valid_player(ai.origin, undefined, 1);
        }
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x6b7ca4cd, Offset: 0x18788
// Size: 0xf0
function function_96a74deb() {
    level endon(#"end_game");
    wait(4);
    gestures::function_ba4529d4(#"hash_114ba314a93a4562");
    callback::on_spawned(&function_b5db06b1);
    foreach (e_player in function_a1ef346b()) {
        e_player thread function_b5db06b1();
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x149b654d, Offset: 0x18880
// Size: 0xdc
function function_c69bc55b(e_player) {
    if (!isdefined(e_player)) {
        return;
    }
    e_player notify(#"hash_40ddf92b93b3b8fd");
    e_player callback::function_52ac9652(#"on_player_killed", &function_cb6da13c);
    e_player flag::clear(#"hash_ed78dbda7cf8228");
    e_player val::reset_all(#"hash_48aef5b4fba4687c");
    if (e_player isgestureplaying(#"hash_114ba314a93a4562")) {
        e_player stopgestureviewmodel(#"hash_114ba314a93a4562");
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x972a2f5b, Offset: 0x18968
// Size: 0x286
function function_b5db06b1() {
    self notify("5a1b49ab163dcd41");
    self endon("5a1b49ab163dcd41");
    level endon(#"end_game");
    level.var_75a7d6 endon(#"hash_40ddf92b93b3b8fd");
    self endon(#"death", #"hash_40ddf92b93b3b8fd");
    self callback::function_d8abfc3d(#"on_player_killed", &function_cb6da13c);
    self val::set(#"hash_48aef5b4fba4687c", "allow_sprint", 0);
    self val::set(#"hash_48aef5b4fba4687c", "move_speed_scale", 0.5);
    while (true) {
        var_35f9203c = 0;
        if (self isfiring() || self isreloading() || !self gestures::function_8cc27b6d(#"hash_114ba314a93a4562")) {
            self flag::set(#"hash_ed78dbda7cf8228");
            self thread function_fce96674();
        } else if (zm_utility::is_player_valid(self) && !self flag::get(#"hash_ed78dbda7cf8228")) {
            var_35f9203c = 1;
            if (!self isgestureplaying(#"hash_114ba314a93a4562")) {
                self playgestureviewmodel(#"hash_114ba314a93a4562");
            }
        }
        if (!var_35f9203c && self isgestureplaying(#"hash_114ba314a93a4562")) {
            self stopgestureviewmodel(#"hash_114ba314a93a4562");
        }
        waitframe(1);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x66838e4d, Offset: 0x18bf8
// Size: 0x54
function function_fce96674() {
    self notify("232a1d48b269098e");
    self endon("232a1d48b269098e");
    self endon(#"death");
    wait(2);
    self flag::clear(#"hash_ed78dbda7cf8228");
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0xb5aaa50b, Offset: 0x18c58
// Size: 0x54
function function_cb6da13c(*s_params) {
    self callback::function_52ac9652(#"on_player_killed", &function_cb6da13c);
    function_c69bc55b(self);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xc0b6a761, Offset: 0x18cb8
// Size: 0xfc
function function_64a4bf62() {
    level endon(#"end_game");
    foreach (var_d2ee34ea in level.var_75a7d6.var_58004de6) {
        level thread function_26a3bcef(var_d2ee34ea);
    }
    level.var_75a7d6 waittilltimeout(20, #"hash_46e83a86017495a9");
    wait(1);
    level clientfield::set("" + #"hash_6c47531bdf01d52c", 1);
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 1, eflags: 0x2 linked
// Checksum 0x5357d472, Offset: 0x18dc0
// Size: 0x336
function function_26a3bcef(var_d2ee34ea) {
    if (!isstruct(var_d2ee34ea)) {
        return;
    }
    level endon(#"end_game");
    b_first = 1;
    while (true) {
        mdl_clip = var_d2ee34ea.mdl_clip;
        if (isdefined(mdl_clip)) {
            var_255e01f1 = var_d2ee34ea.var_255e01f1;
            if (isarray(var_255e01f1)) {
                foreach (i, e_player in function_a1ef346b()) {
                    if (e_player istouching(mdl_clip)) {
                        var_2561ecde = var_255e01f1[i];
                        if (isvec(var_2561ecde.origin)) {
                            e_player setorigin(var_2561ecde.origin);
                        }
                    }
                }
            }
            mdl_clip solid();
            mdl_clip disconnectpaths();
        }
        mdl_crystal = util::spawn_model(#"hash_e4acd0d27d95fd0", var_d2ee34ea.origin + (0, 0, 4096), var_d2ee34ea.angles);
        if (!isdefined(level.var_75a7d6.var_9f7af8ca)) {
            level.var_75a7d6.var_9f7af8ca = [];
        } else if (!isarray(level.var_75a7d6.var_9f7af8ca)) {
            level.var_75a7d6.var_9f7af8ca = array(level.var_75a7d6.var_9f7af8ca);
        }
        level.var_75a7d6.var_9f7af8ca[level.var_75a7d6.var_9f7af8ca.size] = mdl_crystal;
        mdl_crystal notsolid();
        mdl_crystal.mdl_clip = mdl_clip;
        level thread function_d426b29d(var_d2ee34ea, mdl_crystal, b_first);
        if (!isstruct(var_d2ee34ea.s_next)) {
            break;
        }
        n_wait = 1;
        if (!b_first) {
            b_first = 0;
            n_wait = 3;
        }
        wait(n_wait);
        var_d2ee34ea = var_d2ee34ea.s_next;
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 3, eflags: 0x2 linked
// Checksum 0x3ac52568, Offset: 0x19100
// Size: 0x2b4
function function_d426b29d(var_d2ee34ea, mdl_crystal, b_first = 0) {
    if (!(isdefined(var_d2ee34ea) && isdefined(mdl_crystal))) {
        return;
    }
    level endon(#"end_game");
    mdl_crystal endon(#"death");
    if (b_first) {
        b_first = !level.var_75a7d6 flag::get(#"hash_3741b540fe013684");
        level.var_75a7d6 flag::set(#"hash_3741b540fe013684");
    }
    mdl_crystal clientfield::set("" + #"hash_196f85a0e323cdeb", 1);
    mdl_crystal moveto(var_d2ee34ea.origin, 1);
    mdl_crystal waittill(#"movedone");
    mdl_crystal clientfield::set("" + #"hash_196f85a0e323cdeb", 2);
    foreach (e_player in getplayers()) {
        e_player function_bc82f900(#"hash_eb686a42b133d2a");
    }
    if (is_true(var_d2ee34ea.var_8046dccf)) {
        level.var_75a7d6 notify(#"hash_46e83a86017495a9");
    }
    if (b_first) {
        level clientfield::set("" + #"hash_78e149e0b7cb80e8", 1);
        wait(1);
        level thread function_96a74deb();
        level thread function_3fcf0dd8();
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xcd00d6db, Offset: 0x193c0
// Size: 0x19a
function function_3fcf0dd8() {
    level endon(#"end_game");
    level.var_75a7d6 endon(#"hash_1c0cb374de1cb6db");
    wait(2);
    while (true) {
        foreach (e_player in function_a1ef346b()) {
            var_7abeeb7b = e_player.origin;
            if (isarray(level.var_75a7d6.var_9f7af8ca)) {
                var_a737f570 = arraygetclosest(e_player.origin, level.var_75a7d6.var_9f7af8ca);
                if (isvec(var_a737f570.origin)) {
                    var_7abeeb7b = var_a737f570.origin;
                }
            }
            e_player dodamage(10, var_7abeeb7b);
            e_player playsound(#"hash_138fba0237073649");
        }
        wait(1);
    }
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0x95665ed9, Offset: 0x19568
// Size: 0x17c
function function_a854e962() {
    level endon(#"end_game");
    foreach (e_player in function_a1ef346b()) {
        if (e_player flag::get(#"hash_2a03bf51cb24c450")) {
            e_player thread function_6096239d();
        }
    }
    foreach (e_player in getplayers()) {
        e_player thread function_230fb4b1();
        e_player thread namespace_32e85820::heal_player();
    }
    level thread namespace_32e85820::function_27b2aab7();
}

// Namespace namespace_95c839d1/namespace_95c839d1
// Params 0, eflags: 0x2 linked
// Checksum 0xfe827de5, Offset: 0x196f0
// Size: 0x198
function function_eb4af590() {
    level endon(#"end_game");
    level clientfield::set("" + #"hash_6c47531bdf01d52c", 0);
    wait(3);
    foreach (mdl_crystal in level.var_75a7d6.var_9f7af8ca) {
        if (isdefined(mdl_crystal)) {
            mdl_crystal clientfield::set("" + #"hash_196f85a0e323cdeb", 0);
            mdl_clip = mdl_crystal.mdl_clip;
            if (isdefined(mdl_clip)) {
                mdl_clip connectpaths();
                mdl_clip delete();
            }
            mdl_crystal setmodel(#"p9_fxanim_zm_tungsten_dark_aether_crystal_mod");
            mdl_crystal thread scene::play(#"hash_4b3d6ea055c23e20", mdl_crystal);
            wait(0.5);
        }
    }
}

/#

    // Namespace namespace_95c839d1/namespace_95c839d1
    // Params 0, eflags: 0x0
    // Checksum 0xfc51379b, Offset: 0x19890
    // Size: 0xe4
    function function_14a35d6f() {
        a_e_players = function_a1ef346b();
        var_a347ab1 = struct::get_array(#"hash_5c9e57cec1f8655b");
        for (i = 0; i < a_e_players.size; i++) {
            e_player = a_e_players[i];
            s_teleport = var_a347ab1[i];
            if (isdefined(e_player) && isdefined(s_teleport)) {
                e_player setorigin(s_teleport.origin);
                e_player setplayerangles(s_teleport.angles);
            }
        }
    }

    // Namespace namespace_95c839d1/namespace_95c839d1
    // Params 0, eflags: 0x0
    // Checksum 0xd4afb59c, Offset: 0x19980
    // Size: 0xbc
    function devgui_setup() {
        util::add_debug_command("end_fight_stand_clip_le");
        util::add_debug_command("zmbLastStand");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&function_6361fb61);
    }

    // Namespace namespace_95c839d1/namespace_95c839d1
    // Params 1, eflags: 0x0
    // Checksum 0x227ac759, Offset: 0x19a48
    // Size: 0x142
    function function_6361fb61(str_cmd) {
        if (!isdefined(str_cmd)) {
            return;
        }
        switch (str_cmd) {
        case #"hash_1a1d15f1da1fd948":
            level.var_75a7d6.var_9d7dfc4c = undefined;
            break;
        case #"hash_11bc100a0e014371":
        case #"hash_35eefe12894036fd":
        case #"hash_3d123fac1908cd30":
        case #"hash_4a50cd145965b8cd":
            level.var_75a7d6.var_9d7dfc4c = str_cmd;
            break;
        case #"hash_2a7935567fe375b4":
            if (level flag::get(#"hash_2145c074d359b87d")) {
                level.var_75a7d6.var_c20e460e.var_8a337eba = level.var_75a7d6.var_c20e460e.var_3887bcb7;
                function_4ba59ffe();
                level thread function_1c6d2370();
            }
            break;
        }
    }

#/
