// Atian COD Tools GSC CW decompiler test
#using script_2792a9e9aa00fe6e;
#using script_24f8d3e335c86c5a;
#using script_2fbd61c3675dc7ca;
#using script_1f60f29863707208;
#using scripts\zm\zm_platinum_ww_quest.csc;
#using script_14b99732aeac3ca6;
#using script_3dcf1dc8f679581e;
#using script_5cd3f24eb1709844;
#using script_3a266261121385ee;
#using script_433016448b3d07bc;
#using script_581877678e31274c;
#using script_179ba564f65e92c5;
#using script_42fe6daed87beaf5;
#using scripts\zm\archetype\archetype_zod_companion.csc;
#using scripts\zm_common\zm_ping.csc;
#using script_2c5f2d4e7aa698c4;
#using scripts\zm_common\zm_fasttravel.csc;
#using scripts\zm_common\zm_utility.csc;
#using scripts\zm_common\zm_intel.csc;
#using script_68732f44626820ed;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\animation_shared.csc;

#namespace zm_platinum;

// Namespace zm_platinum/zm_platinum
// Params 0, eflags: 0x1
// Checksum 0x7167467d, Offset: 0x910
// Size: 0x14
function autoexec opt_in() {
    level.aat_in_use = 1;
}

// Namespace zm_platinum/level_init
// Params 1, eflags: 0x20
// Checksum 0x7e41d335, Offset: 0x930
// Size: 0xd8a
function event_handler[level_init] main(*eventstruct) {
    zm_ping::function_5ae4a10c(undefined, "platinum_rappel_obj", #"hash_337db80f69d05548", #"hash_5b20033c44a4321f", #"hash_2f664e8e6f88f16");
    zm_ping::function_5ae4a10c(undefined, "platinum_zipline_obj", #"hash_6d0057fa066d6733", #"hash_5b20033c44a4321f", #"hash_2f664e8e6f88f16");
    zm_ping::function_5ae4a10c("p9_zm_platinum_radio_call_boxes_on", "platinum_klaus_radio_obj", #"hash_5c2213d2d79e1e90", #"hash_5b20033c44a4321f", #"hash_5f505b6863b30787");
    zm_ping::function_5ae4a10c("p9_zm_platinum_radio_call_boxes_off", "platinum_klaus_radio_obj", #"hash_5c2213d2d79e1e90", #"hash_5b20033c44a4321f", #"hash_5f505b6863b30787");
    zm_ping::function_5ae4a10c("p9_fxanim_zm_platinum_zipline_cable_mod", "platinum_rappel_cable_obj", #"hash_337db80f69d05548", undefined, #"hash_2f664e8e6f88f16", undefined, -800);
    zm_ping::function_5ae4a10c("p9_fxanim_zm_platinum_zipline_mod", "platinum_zipline_door_obj", #"hash_50ac7af2c5bc8257", #"hash_5f3108a8ed351288", #"hash_74b8c57369bfb24b");
    zm_ping::function_5ae4a10c("p9_fxanim_zm_platinum_rappel_mod", "platinum_rappel_door_obj", #"hash_59bd96ed40a5975e", undefined, #"hash_6e7ff1a0f66deab4");
    zm_ping::function_5ae4a10c("p9_zm_platinum_collider_device_skeleton", "platinum_ur_device_obj", #"hash_73929fe92df91172", #"hash_5b20033c44a4321f", #"hash_e7905885b49ce78", 0, 0);
    clientfield::register_clientuimodel("player_lives", #"zm_hud", #"player_lives", 1, 2, "int", undefined, 0, 0);
    clientfield::register("toplayer", "" + #"hash_7c5d3ac35353f95c", 24000, 1, "int", &function_949d138a, 0, 0);
    clientfield::register("toplayer", "" + #"hash_3c8a07f3b4eaf129", 1, 1, "int", &function_184a5cfd, 0, 0);
    clientfield::register("toplayer", "" + #"hash_4be33f9c734f0cb9", 1, 2, "int", &namespace_99d0d95e::function_2f3017ad, 0, 0);
    clientfield::register("world", "" + #"hash_7d7dcebcb0511b14", 1, 1, "int", &function_84e68eed, 0, 0);
    clientfield::register("toplayer", "" + #"hash_6e5cc4162abd613f", 24000, 1, "int", &function_7c8f93fb, 0, 0);
    clientfield::register("actor", "" + #"hash_15e37ba2a31217b8", 24000, 1, "int", &function_fb022f13, 0, 0);
    clientfield::register("world", "" + #"hash_228f0acdd4255cb", 24000, 1, "int", &function_42400110, 0, 0);
    clientfield::register("world", "" + #"hash_3a84ac42abd608d2", 24000, 1, "int", &function_37097923, 0, 0);
    clientfield::register("actor", "" + #"hash_3e4641a9ea00d061", 24000, 1, "int", &function_eff937db, 0, 0);
    clientfield::register("world", "" + #"hash_600dd9c10bd3447b", 24000, 2, "int", &function_24c94faf, 0, 0);
    clientfield::register("actor", "" + #"hash_703543ca871a0f75", 24000, 2, "int", &function_da37c6e9, 0, 0);
    clientfield::register("world", "" + #"hash_2a93d12c263f2d68", 24000, getminbitcountfornum(7), "int", &namespace_99d0d95e::function_ec54a907, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_19a76e1eb767b16b", 1, 1, "int", &function_a99cb447, 0, 0);
    clientfield::register("toplayer", "" + #"hash_46bbaae5eb8a7080", 24000, 1, "int", &function_1b724bbd, 0, 0);
    clientfield::register("world", "" + #"hash_2971ea22ea5a646a", 1, 3, "int", &function_36b5330c, 0, 0);
    clientfield::register("world", "" + #"hash_6eb96d2ad043aa56", 1, 1, "int", &function_927a773e, 0, 0);
    clientfield::register("world", "" + #"hash_7b3ada6e5b1cf81e", 1, 1, "int", &function_167fc35, 0, 0);
    clientfield::register("world", "" + #"hash_56c7e620d1de163a", 1, 1, "counter", &function_33082eb4, 0, 0);
    clientfield::register("toplayer", "fogofwareffects", 1, getminbitcountfornum(2), "int", undefined, 0, 1);
    clientfield::register("vehicle", "" + #"hash_315d8062badb2345", 24000, getminbitcountfornum(2), "int", &function_d563caa1, 0, 0);
    clientfield::register("allplayers", "" + #"hash_1fb207d10fbe27ce", 24000, 1, "int", &function_51ee271b, 0, 0);
    clientfield::register("allplayers", "" + #"hash_73227fdae7d9bc0e", 28000, 2, "int", &function_1a91c8d3, 0, 0);
    callback::on_localclient_connect(&on_localclient_connect);
    util::register_system(#"platmusunlock", &function_20daf01);
    level.setupcustomcharacterexerts = &setup_personality_character_exerts;
    level.var_d0ab70a2 = #"hash_499ec58230cbe8b6";
    level.var_59815895 = 1600;
    level.var_49ba13b2 = 3100;
    level.var_40753b66 = 0;
    level.var_674a073f = 0.85;
    level.var_6663d08b = 1;
    setdvar(#"hash_64d8f355a9e6daa5", 1);
    setdvar(#"hash_b3395a8d3abf84a", 1);
    setdvar(#"hash_75a2e23bc66a08a7", 0);
    setdvar(#"hash_2d56e13848a82d14", 0);
    setdvar(#"hash_384191a42356d34", 1);
    setdvar(#"hash_5e3c0f05d2935beb", 1);
    zm_intel::function_88645994(#"hash_4eeb1c7447479151", #"hash_5efbc7b901eeb16c", undefined, undefined, #"hash_62c9a6dffc5a51c2");
    load::main();
    namespace_958b287a::init();
    namespace_b574e135::init();
    namespace_178eb32b::init();
    zm_platinum_ww_quest::init();
    namespace_1fc8f2e3::init();
    namespace_4e8d47b1::init();
    namespace_7a518726::init();
    namespace_54685ebd::init();
    namespace_99d0d95e::init();
    namespace_bce659ef::init();
    util::waitforclient(0);
    setsoundcontext("dark_aether", "inactive");
    namespace_b574e135::function_dcf22669();
    animation::add_notetrack_func("klausLeaveAudio", &function_8ba39ad0);
    level.var_bb1f7e1e.var_19f55f0 = #"hash_1501143ad2865b6e";
}

// Namespace zm_platinum/zm_platinum
// Params 0, eflags: 0x2 linked
// Checksum 0x5daddf61, Offset: 0x16c8
// Size: 0x282
function setup_personality_character_exerts() {
    level.exert_sounds[1][#"playerbreathinsound"] = "vox_plr_1_exert_sniper_hold";
    level.exert_sounds[2][#"playerbreathinsound"] = "vox_plr_2_exert_sniper_hold";
    level.exert_sounds[3][#"playerbreathinsound"] = "vox_plr_3_exert_sniper_hold";
    level.exert_sounds[4][#"playerbreathinsound"] = "vox_plr_4_exert_sniper_hold";
    level.exert_sounds[1][#"playerbreathoutsound"] = "vox_plr_1_exert_sniper_exhale";
    level.exert_sounds[2][#"playerbreathoutsound"] = "vox_plr_2_exert_sniper_exhale";
    level.exert_sounds[3][#"playerbreathoutsound"] = "vox_plr_3_exert_sniper_exhale";
    level.exert_sounds[4][#"playerbreathoutsound"] = "vox_plr_4_exert_sniper_exhale";
    level.exert_sounds[1][#"playerbreathgaspsound"] = "vox_plr_1_exert_sniper_gasp";
    level.exert_sounds[2][#"playerbreathgaspsound"] = "vox_plr_2_exert_sniper_gasp";
    level.exert_sounds[3][#"playerbreathgaspsound"] = "vox_plr_3_exert_sniper_gasp";
    level.exert_sounds[4][#"playerbreathgaspsound"] = "vox_plr_4_exert_sniper_gasp";
    level.exert_sounds[1][#"meleeswipesoundplayer"] = "vox_plr_1_exert_punch_give";
    level.exert_sounds[2][#"meleeswipesoundplayer"] = "vox_plr_2_exert_punch_give";
    level.exert_sounds[3][#"meleeswipesoundplayer"] = "vox_plr_3_exert_punch_give";
    level.exert_sounds[4][#"meleeswipesoundplayer"] = "vox_plr_4_exert_punch_give";
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0x4babec85, Offset: 0x1958
// Size: 0x9c
function function_51ee271b(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (self == function_5c10bd79(fieldname)) {
        if (bwasdemojump) {
            util::function_8eb5d4b0(1600, 0);
            return;
        }
        util::function_8eb5d4b0(3100, 0.85);
    }
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0xc2cb375c, Offset: 0x1a00
// Size: 0x15e
function function_949d138a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwasdemojump) {
        if (self postfx::function_556665f2(#"hash_7c5d3ac35353f95c")) {
            self postfx::stoppostfxbundle(#"hash_7c5d3ac35353f95c");
            self notify(#"hash_31ca7d9fa1b055e0");
        }
        self postfx::playpostfxbundle(#"hash_7c5d3ac35353f95c");
        var_3f79908d = playtagfxset(fieldname, "fx9_stakeout_screen_drop_distort", self);
        self thread function_f524c7a5(fieldname, var_3f79908d);
        return;
    }
    self postfx::exitpostfxbundle(#"hash_7c5d3ac35353f95c");
    self notify(#"hash_31ca7d9fa1b055e0");
}

// Namespace zm_platinum/zm_platinum
// Params 2, eflags: 0x2 linked
// Checksum 0x77798519, Offset: 0x1b68
// Size: 0xd8
function function_f524c7a5(localclientnum, var_3f79908d) {
    self notify("5060c58526bc721c");
    self endon("5060c58526bc721c");
    self waittill(#"death", #"hash_31ca7d9fa1b055e0");
    foreach (fxid in var_3f79908d) {
        stopfx(localclientnum, fxid);
    }
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0xa13e4ee7, Offset: 0x1c48
// Size: 0x7c
function function_184a5cfd(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        function_f58e42ae(fieldname, 1);
        return;
    }
    function_f58e42ae(fieldname, 0);
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0x87940781, Offset: 0x1cd0
// Size: 0x310
function function_84e68eed(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    var_30b095e = getent(fieldname, "phase_wall_01", "targetname");
    var_de143f71 = getent(fieldname, "phase_wall_02", "targetname");
    var_2b25faad = getentarray(fieldname, "phase_wall_03", "targetname");
    if (bwastimejump) {
        var_30b095e playrenderoverridebundle(#"hash_2dfe51d749f2c11f");
        var_30b095e function_78233d29(#"hash_2dfe51d749f2c11f", "", "Scale", 1);
        var_de143f71 playrenderoverridebundle(#"hash_3457ea7a9eeaa055");
        var_de143f71 function_78233d29(#"hash_3457ea7a9eeaa055", "", "Scale", 1);
        foreach (phase_wall in var_2b25faad) {
            phase_wall playrenderoverridebundle(#"hash_2dfe51d749f2c11f");
            phase_wall function_78233d29(#"hash_2dfe51d749f2c11f", "", "Scale", 1);
        }
        return;
    }
    var_30b095e stoprenderoverridebundle(#"hash_2dfe51d749f2c11f");
    var_de143f71 stoprenderoverridebundle(#"hash_3457ea7a9eeaa055");
    foreach (phase_wall in var_2b25faad) {
        phase_wall stoprenderoverridebundle(#"hash_2dfe51d749f2c11f");
    }
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0xe34a885e, Offset: 0x1fe8
// Size: 0x5ca
function function_36b5330c(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    var_8cbaf960 = struct::get_array("pl_zipline_arm");
    switch (bwasdemojump) {
    case 1:
        foreach (var_bb21be70 in var_8cbaf960) {
            var_bb21be70.var_cc1c5020 = util::spawn_model(fieldname, var_bb21be70.model, var_bb21be70.origin, var_bb21be70.angles);
        }
        break;
    case 2:
        foreach (var_bb21be70 in var_8cbaf960) {
            if (var_bb21be70.script_noteworthy === "rooftop") {
                if (!isdefined(var_bb21be70.var_cc1c5020)) {
                    var_bb21be70.var_cc1c5020 = util::spawn_model(fieldname, var_bb21be70.model, var_bb21be70.origin, var_bb21be70.angles);
                }
                var_bb21be70.var_cc1c5020.var_fc558e74 = "platinum_zipline_obj";
                var_bb21be70.var_cc1c5020 function_619a5c20();
            }
        }
        break;
    case 3:
        foreach (var_bb21be70 in var_8cbaf960) {
            if (var_bb21be70.script_noteworthy === "hotel") {
                if (!isdefined(var_bb21be70.var_cc1c5020)) {
                    var_bb21be70.var_cc1c5020 = util::spawn_model(fieldname, var_bb21be70.model, var_bb21be70.origin, var_bb21be70.angles);
                }
                var_bb21be70.var_cc1c5020.var_fc558e74 = "platinum_zipline_obj";
                var_bb21be70.var_cc1c5020 function_619a5c20();
            }
        }
        break;
    case 4:
        foreach (var_bb21be70 in var_8cbaf960) {
            if (var_bb21be70.script_noteworthy === "korber") {
                if (!isdefined(var_bb21be70.var_cc1c5020)) {
                    var_bb21be70.var_cc1c5020 = util::spawn_model(fieldname, var_bb21be70.model, var_bb21be70.origin, var_bb21be70.angles);
                }
                var_bb21be70.var_cc1c5020.var_fc558e74 = "platinum_zipline_obj";
                var_bb21be70.var_cc1c5020 function_619a5c20();
            }
        }
        break;
    case 0:
        foreach (var_bb21be70 in var_8cbaf960) {
            if (var_bb21be70.script_noteworthy === "westberlin") {
                if (!isdefined(var_bb21be70.var_cc1c5020)) {
                    var_bb21be70.var_cc1c5020 = util::spawn_model(fieldname, var_bb21be70.model, var_bb21be70.origin, var_bb21be70.angles);
                }
                var_bb21be70.var_cc1c5020.var_fc558e74 = "platinum_zipline_obj";
                var_bb21be70.var_cc1c5020 function_619a5c20();
                continue;
            }
            if (!isdefined(var_bb21be70.script_noteworthy)) {
                if (!isdefined(var_bb21be70.var_cc1c5020)) {
                    var_bb21be70.var_cc1c5020 = util::spawn_model(fieldname, var_bb21be70.model, var_bb21be70.origin, var_bb21be70.angles);
                }
                var_bb21be70.var_cc1c5020.var_fc558e74 = "platinum_rappel_obj";
                var_bb21be70.var_cc1c5020 function_619a5c20();
            }
        }
        break;
    }
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0x79e174e0, Offset: 0x25c0
// Size: 0x9c
function function_a99cb447(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        self zm_utility::set_compass_icon(fieldname, 0, 1, 0, 0, undefined, 0);
        return;
    }
    self zm_utility::set_compass_icon(fieldname, 1, 0, 0, 0, undefined, 0);
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0x78ef3846, Offset: 0x2668
// Size: 0x94
function function_7c8f93fb(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self postfx::playpostfxbundle(#"hash_1369517be3984a32");
        return;
    }
    self postfx::stoppostfxbundle(#"hash_1369517be3984a32");
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0x479fb452, Offset: 0x2708
// Size: 0x254
function function_fb022f13(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self notify("18ccbe7546f38741");
    self endon("18ccbe7546f38741");
    if (!isalive(self)) {
        return;
    }
    self endon(#"death");
    self util::waittill_dobj(bwastimejump);
    self.is_on_fire = 1;
    fire_tag = "j_spinelower";
    if (!isdefined(self gettagorigin(fire_tag))) {
        fire_tag = "tag_origin";
    }
    util::playfxontag(bwastimejump, #"hash_1b72309df6d1e6a0", self, fire_tag);
    wait(1);
    tagarray = [];
    tagarray[0] = "J_Elbow_LE";
    tagarray[1] = "J_Elbow_RI";
    tagarray[2] = "J_Knee_RI";
    tagarray[3] = "J_Knee_LE";
    tagarray = array::randomize(tagarray);
    util::playfxontag(bwastimejump, #"hash_17be30621c722c85", self, tagarray[0]);
    wait(1);
    tagarray[0] = "J_Wrist_RI";
    tagarray[1] = "J_Wrist_LE";
    if (!is_true(self.missinglegs)) {
        tagarray[2] = "J_Ankle_RI";
        tagarray[3] = "J_Ankle_LE";
    }
    tagarray = array::randomize(tagarray);
    util::playfxontag(bwastimejump, #"hash_17be30621c722c85", self, tagarray[0]);
    util::playfxontag(bwastimejump, #"hash_17be30621c722c85", self, tagarray[1]);
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0x486e9a85, Offset: 0x2968
// Size: 0xbc
function function_42400110(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        e_player = function_5c10bd79(fieldname);
        e_player thread function_33593a44(fieldname, 1, 2);
        return;
    }
    e_player = function_5c10bd79(fieldname);
    e_player thread function_33593a44(fieldname, 2, 1);
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0x78ad986, Offset: 0x2a30
// Size: 0x2ac
function function_37097923(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (!isdefined(level.var_9b14fb5c)) {
        level.var_9b14fb5c = [];
    } else if (!isarray(level.var_9b14fb5c)) {
        level.var_9b14fb5c = array(level.var_9b14fb5c);
    }
    if (bwasdemojump == 1) {
        var_194f1b3f = struct::get_array("falling_dust_loc", "targetname");
        foreach (loc in var_194f1b3f) {
            fx = playfx(fieldname, #"hash_180b445d83add766", loc.origin);
            if (!isdefined(level.var_9b14fb5c)) {
                level.var_9b14fb5c = [];
            } else if (!isarray(level.var_9b14fb5c)) {
                level.var_9b14fb5c = array(level.var_9b14fb5c);
            }
            level.var_9b14fb5c[level.var_9b14fb5c.size] = fx;
        }
        return;
    }
    foreach (fx in level.var_9b14fb5c) {
        if (isdefined(fx)) {
            stopfx(fieldname, fx);
            arrayremovevalue(level.var_9b14fb5c, fx);
        }
    }
    level.var_9b14fb5c = [];
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0x14eb1ea8, Offset: 0x2ce8
// Size: 0x17c
function function_24c94faf(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        var_27fa6f1c = struct::get("ghost_train_trash_fx_pos_south", "targetname");
        level.var_f7cc40a3 = playfx(fieldname, #"hash_6168181302e095c5", var_27fa6f1c.origin);
        return;
    }
    if (bwasdemojump == 2) {
        var_447ca555 = struct::get("ghost_train_trash_fx_pos_north", "targetname");
        level.var_45f6f59b = playfx(fieldname, #"hash_53943959c5d3bbbd", var_447ca555.origin);
        return;
    }
    if (isdefined(level.var_f7cc40a3)) {
        stopfx(fieldname, level.var_f7cc40a3);
    }
    if (isdefined(level.var_45f6f59b)) {
        stopfx(fieldname, level.var_45f6f59b);
    }
}

// Namespace zm_platinum/zm_platinum
// Params 4, eflags: 0x6 linked
// Checksum 0x66967529, Offset: 0x2e70
// Size: 0x184
function private function_33593a44(localclientnum, var_312d65d1, var_68f7ce2e, n_time = 3) {
    self notify("5111286a5e237a6c");
    self endon("5111286a5e237a6c");
    n_blend = 0;
    n_increment = 1 / n_time / 0.05;
    if (var_312d65d1 == 1 && var_68f7ce2e == 2) {
        while (n_blend < 1) {
            function_be93487f(localclientnum, var_312d65d1 | var_68f7ce2e, 1 - n_blend, n_blend, 0, 0);
            n_blend += n_increment;
            wait(0.05);
        }
        return;
    }
    if (var_312d65d1 == 2 && var_68f7ce2e == 1) {
        while (n_blend < 1) {
            function_be93487f(localclientnum, var_312d65d1 | var_68f7ce2e, n_blend, 1 - n_blend, 0, 0);
            n_blend += n_increment;
            wait(0.05);
        }
    }
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0xecda9b17, Offset: 0x3000
// Size: 0x74
function function_eff937db(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self function_c2e69953(1);
        return;
    }
    self function_c2e69953(0);
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0x724619fd, Offset: 0x3080
// Size: 0x2ee
function function_da37c6e9(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(self)) {
        if (bwastimejump == 1) {
            if (!isdefined(self.var_491e4e07)) {
                self.var_491e4e07 = util::playfxontag(fieldname, #"hash_46180986e919ffce", self, "eye_fire_le_fx");
            }
            if (!isdefined(self.var_2efd19f9)) {
                self.var_2efd19f9 = util::playfxontag(fieldname, #"hash_46180986e919ffce", self, "eye_fire_ri_fx");
            }
            if (self.aitype == "spawner_zm_mannequin_ally_upgraded_03") {
                self stoprenderoverridebundle("rob_klaus_quiet");
                self stoprenderoverridebundle("rob_klaus_talking_punk");
            } else {
                self playrenderoverridebundle("rob_zmb_klaus_eyes_red");
                self playrenderoverridebundle("rob_klaus_quiet");
                self stoprenderoverridebundle("rob_klaus_talking");
            }
            return;
        }
        if (bwastimejump == 2) {
            self stoprenderoverridebundle("rob_klaus_quiet");
            if (self.aitype == "spawner_zm_mannequin_ally_upgraded_03") {
                self playrenderoverridebundle("rob_klaus_talking_punk");
            } else {
                self playrenderoverridebundle("rob_klaus_talking");
            }
            return;
        }
        self stoprenderoverridebundle("rob_zmb_klaus_eyes_red");
        self stoprenderoverridebundle("rob_klaus_quiet");
        self stoprenderoverridebundle("rob_klaus_talking");
        self stoprenderoverridebundle("rob_klaus_talking_punk");
        if (isdefined(self.var_491e4e07)) {
            killfx(fieldname, self.var_491e4e07);
            self.var_491e4e07 = undefined;
        }
        if (isdefined(self.var_2efd19f9)) {
            killfx(fieldname, self.var_2efd19f9);
            self.var_2efd19f9 = undefined;
        }
    }
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0x2e4c7722, Offset: 0x3378
// Size: 0x8c
function function_927a773e(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        function_3385d776(#"hash_6e2a5061e8edcae4");
        return;
    }
    function_c22a1ca2(#"hash_6e2a5061e8edcae4");
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0x3984414d, Offset: 0x3410
// Size: 0x10c
function function_167fc35(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        forcestreamxmodel(#"p9_fxp_zm_teleport_tunnel");
        forcestreamxmodel(#"p9_fxp_zm_teleport_tunnel_edge");
        function_3385d776(#"zombie/fx9_aether_tear_portal_tunnel_1p");
        return;
    }
    stopforcestreamingxmodel(#"p9_fxp_zm_teleport_tunnel");
    stopforcestreamingxmodel(#"p9_fxp_zm_teleport_tunnel_edge");
    function_c22a1ca2(#"zombie/fx9_aether_tear_portal_tunnel_1p");
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0xf3145c30, Offset: 0x3528
// Size: 0x104
function function_33082eb4(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    e_player = function_5c10bd79(bwastimejump);
    if (isdefined(e_player)) {
        if (e_player postfx::function_556665f2(#"hash_7fbc9bc489aea188")) {
            e_player postfx::stoppostfxbundle(#"hash_7fbc9bc489aea188");
        }
        e_player postfx::playpostfxbundle(#"hash_7fbc9bc489aea188");
        e_player playsound(bwastimejump, #"hash_56a9d9da20064c3f");
        function_5ea2c6e3("zm_silver_darkaether_leadin", 7);
    }
}

// Namespace zm_platinum/zm_platinum
// Params 1, eflags: 0x2 linked
// Checksum 0x81f4588f, Offset: 0x3638
// Size: 0x24
function on_localclient_connect(localclientnum) {
    level thread function_347f52dd(localclientnum);
}

// Namespace zm_platinum/zm_platinum
// Params 1, eflags: 0x6 linked
// Checksum 0x3cc06020, Offset: 0x3668
// Size: 0xf4
function private function_347f52dd(localclientnum) {
    self notify("75f7b2f29a47cb00");
    self endon("75f7b2f29a47cb00");
    var_ef2f4cec = spawnstruct();
    var_ef2f4cec.var_e450444f = 0;
    while (true) {
        currentplayer = function_5c10bd79(localclientnum);
        if (!isdefined(currentplayer)) {
            waitframe(1);
            continue;
        }
        b_state = currentplayer clientfield::get_to_player("fogofwareffects");
        if (var_ef2f4cec.var_e450444f !== b_state) {
            var_ef2f4cec function_d45dd62(localclientnum, b_state, currentplayer);
            var_ef2f4cec.var_e450444f = b_state;
        }
        waitframe(1);
    }
}

// Namespace zm_platinum/zm_platinum
// Params 3, eflags: 0x6 linked
// Checksum 0x1c3dcb13, Offset: 0x3768
// Size: 0x2de
function private function_d45dd62(localclientnum, b_state, currentplayer) {
    if (b_state == 1) {
        if (!isdefined(currentplayer.var_103fdf58)) {
            playsound(localclientnum, #"hash_7b5289d48cc02d77", (0, 0, 0));
            currentplayer.var_103fdf58 = currentplayer playloopsound("evt_sr_phase_player_lp");
        }
        if (function_148ccc79(localclientnum, #"hash_8766a03724ee783")) {
            codestoppostfxbundlelocal(localclientnum, #"hash_8766a03724ee783");
        }
        if (!function_148ccc79(localclientnum, #"hash_2964f82e2c05c8b8")) {
            function_a837926b(localclientnum, #"hash_2964f82e2c05c8b8");
            self.var_7bd7bdc8 = #"hash_2964f82e2c05c8b8";
        }
        return;
    }
    if (b_state == 2) {
        if (isdefined(currentplayer.var_103fdf58)) {
            playsound(localclientnum, #"hash_37b1613c2cb4c8f3", (0, 0, 0));
            currentplayer stoploopsound(currentplayer.var_103fdf58);
            currentplayer.var_103fdf58 = undefined;
        }
        if (function_148ccc79(localclientnum, #"hash_2964f82e2c05c8b8")) {
            codestoppostfxbundlelocal(localclientnum, #"hash_2964f82e2c05c8b8");
        }
        if (!function_148ccc79(localclientnum, #"hash_8766a03724ee783")) {
            function_a837926b(localclientnum, #"hash_8766a03724ee783");
            self.var_7bd7bdc8 = #"hash_8766a03724ee783";
        }
        return;
    }
    if (isdefined(currentplayer.var_103fdf58)) {
        playsound(localclientnum, #"hash_37b1613c2cb4c8f3", (0, 0, 0));
        currentplayer stoploopsound(currentplayer.var_103fdf58);
        currentplayer.var_103fdf58 = undefined;
    }
    if (isdefined(self.var_7bd7bdc8)) {
        if (function_148ccc79(localclientnum, self.var_7bd7bdc8)) {
            function_24cd4cfb(localclientnum, self.var_7bd7bdc8);
        }
        self.var_7bd7bdc8 = undefined;
    }
}

// Namespace zm_platinum/zm_platinum
// Params 1, eflags: 0x2 linked
// Checksum 0x4d4ddc68, Offset: 0x3a50
// Size: 0x3c
function function_8ba39ad0(*params) {
    if (isdefined(self)) {
        playsound(0, #"hash_33e836ad83f1c0af", self.origin);
    }
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0x53fca202, Offset: 0x3a98
// Size: 0x9c
function function_d563caa1(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        playtagfxset(fieldname, #"hash_731f457f0cf968ab", self);
        return;
    }
    if (bwastimejump == 2) {
        self setanim("v_cin_t9_zm_berlin_exfil_heli");
    }
}

// Namespace zm_platinum/zm_platinum
// Params 3, eflags: 0x2 linked
// Checksum 0xc4bcf800, Offset: 0x3b40
// Size: 0x104
function function_20daf01(localclientnum, state, *oldstate) {
    if (!isdefined(oldstate)) {
        return;
    }
    var_8c7054cc = undefined;
    switch (oldstate) {
    case #"unlockdia1":
        var_8c7054cc = #"musictrack_zm_platinum_berlin";
        break;
    case #"unlocksqueak":
        var_8c7054cc = #"musictrack_zm_platinum_acidbunny";
        break;
    case #"unlockdia2":
        var_8c7054cc = #"musictrack_zm_platinum_whatawaits";
        break;
    case #"unlockshatter":
        var_8c7054cc = #"musictrack_zm_platinum_wrath";
        break;
    }
    if (isdefined(var_8c7054cc)) {
        function_2cca7b47(state, var_8c7054cc);
    }
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0xb43f92c5, Offset: 0x3c50
// Size: 0x94
function function_1b724bbd(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (isdefined(self)) {
        if (bwasdemojump) {
            forcestreamxmodel(#"p7_zm_der_pswitch_handle");
            return;
        }
        stopforcestreamingxmodel(#"p7_zm_der_pswitch_handle");
    }
}

// Namespace zm_platinum/zm_platinum
// Params 7, eflags: 0x2 linked
// Checksum 0xf9931ab, Offset: 0x3cf0
// Size: 0x20c
function function_1a91c8d3(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isalive(self) || self !== function_5c10bd79(binitialsnap)) {
        return;
    }
    if (bwastimejump) {
        gender = "male";
        if (bwastimejump == 2) {
            gender = "fem";
            function_12f0cc0d("xanim_mm_brawler_" + gender + "_standjump_fall_loop");
        }
        function_12f0cc0d("xanim_mm_brawler_" + gender + "_stand_idle");
        function_12f0cc0d("xanim_mm_brawler_" + gender + "_standjump_fall_loop_idle");
        function_12f0cc0d("xanim_mm_brawler_" + gender + "_standjump_land_2f_up");
        return;
    }
    gender = "male";
    if (fieldname == 2) {
        gender = "fem";
        function_4b51b406("xanim_mm_brawler_" + gender + "_standjump_fall_loop");
    }
    function_4b51b406("xanim_mm_brawler_" + gender + "_stand_idle");
    function_4b51b406("xanim_mm_brawler_" + gender + "_standjump_fall_loop_idle");
    function_4b51b406("xanim_mm_brawler_" + gender + "_standjump_land_2f_up");
}

