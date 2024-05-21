// Atian COD Tools GSC CW decompiler test
#using script_4052585f7ae90f3a;
#using script_35ae72be7b4fec10;
#using script_13114d8a31c6152a;
#using script_5513c8efed5ff300;
#using scripts\cp_common\ui\interactive_map.gsc;
#using script_5c15c1ec5f38f19c;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using scripts\cp_common\skipto.gsc;
#using script_32399001bdb550da;
#using scripts\cp_common\util.gsc;
#using script_1b9f100b85b7e21d;
#using script_4ae261b2785dda9f;
#using scripts\cp_common\load.gsc;
#using script_1478fbd17fe393cf;
#using scripts\cp_common\dialogue.gsc;
#using scripts\cp_common\collectibles.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\statemachine_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_fa335fda;

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 2, eflags: 0x2 linked
// Checksum 0x6bdaaa04, Offset: 0x9d8
// Size: 0x67c
function function_12624bb8(var_9e3df858, var_7b80750a) {
    player = self;
    /#
        function_5ac4dc99("icon_new_evidence_", 0);
        function_cd140ee9("icon_new_evidence_", &function_31c143a8);
        util::init_dvar("Index", 0, &function_97c5cb9a);
        level.var_5bd2109 = getdvarint(#"hash_1fe50f2a47161399", 0) > 0;
        level.var_99e01934 = getdvarint(#"hash_4ea6d647c6120234", 0) > 0;
    #/
    collectibles::add_callback(#"hash_2bfb881b2d0ed7f7", &function_b3f7df56);
    var_98901c49 = statemachine::create("eboard_state_machine", player, "eboard_state_change");
    function_fa4f5603(var_98901c49, var_9e3df858);
    var_98901c49 statemachine::add_state("board_default_state", &function_6d01a6c8, undefined, &function_964c7ad2, &function_361f6bd8);
    var_98901c49 statemachine::add_state("board_overview", &function_bdf71927, &function_f77a1784, &function_559b452b, &function_361f6bd8);
    var_98901c49 statemachine::add_state("board_mission_detail", &function_5b9bb291, &function_c7ffe282, &function_96e31558, &function_361f6bd8);
    var_98901c49 statemachine::add_state("board_evidence_review", &function_e2e9758c, &function_109f3f2, &function_3db40935, &function_361f6bd8);
    var_98901c49 statemachine::add_state("board_review_suspects", &function_de709256, &function_35a396ee, &function_3740b568, &function_361f6bd8);
    var_98901c49 statemachine::add_state("board_decrypt_floppy", &function_e6734894, &function_d4497273, &function_dd090dfe, &function_361f6bd8);
    var_98901c49 statemachine::add_state("board_evidence_callback", &function_c4deb1a2, &function_b00f82b, &function_340179ff, &function_361f6bd8);
    var_98901c49 statemachine::add_interrupt_connection("board_default_state", "board_overview", "eboard_enter_overview");
    var_98901c49 statemachine::add_interrupt_connection("board_overview", "board_default_state", "evidence_board_closed");
    var_98901c49 statemachine::add_interrupt_connection("board_overview", "board_mission_detail", "evidence_board_mission_selected");
    var_98901c49 statemachine::add_interrupt_connection("board_mission_detail", "board_overview", "eboard_exit_current_menu");
    var_98901c49 statemachine::add_interrupt_connection("board_mission_detail", "board_evidence_review", "evidence_board_review_selected");
    var_98901c49 statemachine::add_interrupt_connection("board_evidence_review", "board_mission_detail", "eboard_exit_current_menu");
    var_98901c49 statemachine::add_interrupt_connection("board_mission_detail", "board_review_suspects", "evidence_board_review_suspects_selected");
    var_98901c49 statemachine::add_interrupt_connection("board_review_suspects", "board_mission_detail", "eboard_exit_current_menu");
    var_98901c49 statemachine::add_interrupt_connection("board_mission_detail", "board_decrypt_floppy", "evidence_board_decrypt_floppy_selected");
    var_98901c49 statemachine::add_interrupt_connection("board_decrypt_floppy", "board_mission_detail", "eboard_exit_current_menu");
    var_98901c49 statemachine::add_interrupt_connection("board_evidence_review", "board_evidence_callback", "evidence_board_evidence_callback_execute");
    var_98901c49 statemachine::add_interrupt_connection("board_evidence_callback", "board_evidence_review", "evidence_board_evidence_callback_finished");
    var_98901c49 statemachine::add_interrupt_connection("board_decrypt_floppy", "board_evidence_callback", "evidence_board_evidence_callback_execute");
    var_98901c49 statemachine::add_interrupt_connection("board_evidence_callback", "board_decrypt_floppy", "evidence_board_evidence_floppy_callback_finished");
    player thread function_e0cfa93c(var_7b80750a);
}

/#

    // Namespace namespace_fa335fda/namespace_f784b4da
    // Params 1, eflags: 0x4
    // Checksum 0x37b67fa0, Offset: 0x1060
    // Size: 0x54
    function private function_31c143a8(params) {
        assert(params.name == "icon_new_evidence_");
        level.var_47df5f11 = params.value > 0;
    }

    // Namespace namespace_fa335fda/namespace_f784b4da
    // Params 1, eflags: 0x4
    // Checksum 0x1e744402, Offset: 0x10c0
    // Size: 0x204
    function private function_97c5cb9a(params) {
        assert(params.name == "Index");
        if (params.value) {
            var_cf1f3586 = ["<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>"];
            foreach (mission_name in var_cf1f3586) {
                if (is_true(savegame::function_2ee66e93(mission_name + "<unknown string>"))) {
                    savegame::set_player_data(mission_name + "<unknown string>", 0);
                }
            }
            setdvar(#"hash_432a49c2505fa5fe", 0);
        }
    }

#/

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 2, eflags: 0x6 linked
// Checksum 0x30185528, Offset: 0x12d0
// Size: 0x892
function private function_fa4f5603(statemachine, var_9e3df858) {
    blackboard = {};
    /#
        blackboard.var_9e3df858 = var_9e3df858;
    #/
    var_e55cb845 = struct::get("darkening_plane_origin", "targetname");
    var_1bfff22b = spawn("script_model", var_e55cb845.origin);
    var_1bfff22b.angles = var_e55cb845.angles;
    var_1bfff22b setmodel("p9_sr_evidence_board_darkening_multiply_01");
    var_1bfff22b hide();
    blackboard.var_1bfff22b = var_1bfff22b;
    var_b6e3d0a = getscriptbundle(#"evidenceboardlist");
    var_625dd793 = undefined;
    foreach (var_f2dfb976 in var_b6e3d0a.var_c8099c2) {
        if (var_f2dfb976.var_4c5c8430 == var_9e3df858) {
            foreach (mapentry in var_f2dfb976.var_bd48fa38) {
                if (!isdefined(var_625dd793)) {
                    var_625dd793 = [];
                } else if (!isarray(var_625dd793)) {
                    var_625dd793 = array(var_625dd793);
                }
                var_625dd793[var_625dd793.size] = mapentry.var_3a61b479;
            }
            break;
        }
    }
    assert(isdefined(var_625dd793), "<unknown string>" + var_9e3df858);
    blackboard.var_3cb3ede5 = function_89f058b1(var_b6e3d0a.var_48be729c, var_625dd793);
    foreach (var_f1036742 in blackboard.var_3cb3ede5) {
        if (is_true(var_f1036742.var_32a51de2)) {
            if (var_9e3df858 != "post_takedown" && var_f1036742.var_dade7c7f.size > 0) {
                if (!isdefined(var_625dd793)) {
                    var_625dd793 = [];
                } else if (!isarray(var_625dd793)) {
                    var_625dd793 = array(var_625dd793);
                }
                if (!isinarray(var_625dd793, var_f1036742.var_8ca1d4a)) {
                    var_625dd793[var_625dd793.size] = var_f1036742.var_8ca1d4a;
                }
            }
        } else if (savegame::function_1b212e67(var_f1036742.var_8ca1d4a)) {
            if (var_f1036742.var_8ca1d4a == "cp_nam_prisoner" || var_f1036742.var_8ca1d4a == "cp_rus_duga" || var_f1036742.var_8ca1d4a == "cp_rus_siege") {
                continue;
            }
            if (!isdefined(var_625dd793)) {
                var_625dd793 = [];
            } else if (!isarray(var_625dd793)) {
                var_625dd793 = array(var_625dd793);
            }
            if (!isinarray(var_625dd793, var_f1036742.var_8ca1d4a)) {
                var_625dd793[var_625dd793.size] = var_f1036742.var_8ca1d4a;
            }
        }
        /#
            if (blackboard.var_9e3df858 == "<unknown string>" && var_f1036742.var_8ca1d4a == "<unknown string>") {
                var_f1036742.var_e4f432d9 = undefined;
            }
        #/
    }
    blackboard.var_6133402 = getent("mdl_bulb_left", "script_noteworthy");
    blackboard.var_1ee78eb4 = getent("mdl_bulb_right", "script_noteworthy");
    blackboard.var_3c3d8c0b = [];
    var_d771858a = function_f98394d8(var_625dd793, blackboard.var_3cb3ede5);
    foreach (e in var_d771858a) {
        if (e.classname == "trigger_multiple") {
            if (!isdefined(blackboard.var_3c3d8c0b)) {
                blackboard.var_3c3d8c0b = [];
            } else if (!isarray(blackboard.var_3c3d8c0b)) {
                blackboard.var_3c3d8c0b = array(blackboard.var_3c3d8c0b);
            }
            blackboard.var_3c3d8c0b[blackboard.var_3c3d8c0b.size] = e;
            continue;
        }
        e show();
    }
    function_1e294fd9(var_625dd793, blackboard.var_3cb3ede5);
    function_580e9a17(var_625dd793, blackboard.var_3cb3ede5);
    blackboard.var_625dd793 = var_625dd793;
    var_a5519791 = struct::get("evidence_board_player_pos", "targetname");
    blackboard.var_f9e7327d = util::spawn_model("tag_origin", var_a5519791.origin + (0, 0, -60), var_a5519791.angles);
    blackboard.var_33e067df = 0.75;
    blackboard.var_8e1686c8 = 0.25;
    blackboard.var_f3592501 = 0.5;
    blackboard.var_b2257d78 = 0.5;
    var_ab72a295 = struct::get("hint_evidence_board", "targetname");
    var_63754fbc = util::spawn_model("tag_origin", var_ab72a295.origin);
    blackboard.var_63754fbc = var_63754fbc;
    blackboard.var_7117f05e = [#"menu/recruit", #"menu/regular", #"hash_5eb0fe85b0c234b0", #"menu/veteran", #"menu/heroic"];
    statemachine.blackboard = blackboard;
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 2, eflags: 0x6 linked
// Checksum 0xec3fcd13, Offset: 0x1b70
// Size: 0x420
function private function_89f058b1(var_67e21ca2, *var_625dd793) {
    var_3cb3ede5 = [];
    foreach (var_eeb11904 in var_625dd793) {
        if (isdefined(var_eeb11904.var_8ca1d4a) && var_eeb11904.var_8ca1d4a != #"cp_ger_hub8") {
            if (isdefined(var_eeb11904.collectiblelist)) {
                collectibles = var_eeb11904.collectiblelist;
                var_eeb11904.var_9c01f410 = [];
                var_eeb11904.var_dade7c7f = [];
                var_eeb11904.var_1ccfca62 = 0;
                var_eeb11904.var_1ca68c21 = 0;
                foreach (index, item in collectibles) {
                    collectible = getscriptbundle(item.collectible);
                    var_be645ac2 = isdefined(collectible.callback) && collectible.callback == #"chaos_floppy_disk";
                    collectible.var_2a51713 = index;
                    if (collectible.var_4292acd3 === 1 && !var_be645ac2) {
                        var_eeb11904.var_1ccfca62++;
                        isunlocked = collectibles::function_1fe63475(var_eeb11904.var_8ca1d4a, index);
                        /#
                            if (level.var_5bd2109) {
                                isunlocked = 1;
                            }
                        #/
                        collectible.isunlocked = isunlocked;
                        if (isunlocked && (isdefined(collectible.var_5eeb1ad0) ? collectible.var_5eeb1ad0 : "") != "") {
                            assert(!isdefined(collectible.callback), "<unknown string>");
                            collectible.callback = #"hash_2bfb881b2d0ed7f7";
                        }
                        if (!var_eeb11904.var_1ca68c21) {
                            if (isunlocked && collectibles::function_ee216b9e(var_eeb11904.var_8ca1d4a, collectible.var_2a51713)) {
                                var_eeb11904.var_1ca68c21 = 1;
                            }
                        }
                        if (!isdefined(var_eeb11904.var_dade7c7f)) {
                            var_eeb11904.var_dade7c7f = [];
                        } else if (!isarray(var_eeb11904.var_dade7c7f)) {
                            var_eeb11904.var_dade7c7f = array(var_eeb11904.var_dade7c7f);
                        }
                        var_eeb11904.var_dade7c7f[var_eeb11904.var_dade7c7f.size] = collectible;
                    }
                    if (!isdefined(var_eeb11904.var_9c01f410)) {
                        var_eeb11904.var_9c01f410 = [];
                    } else if (!isarray(var_eeb11904.var_9c01f410)) {
                        var_eeb11904.var_9c01f410 = array(var_eeb11904.var_9c01f410);
                    }
                    var_eeb11904.var_9c01f410[var_eeb11904.var_9c01f410.size] = collectible;
                }
            }
            var_3cb3ede5[var_eeb11904.var_8ca1d4a] = var_eeb11904;
        }
    }
    return var_3cb3ede5;
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0xf6c09e74, Offset: 0x1f98
// Size: 0xba
function private function_eaf23d80(clusterdata) {
    assert(isdefined(clusterdata));
    foreach (collectible in clusterdata.var_dade7c7f) {
        if (is_true(collectible.isunlocked)) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 2, eflags: 0x6 linked
// Checksum 0x3629be30, Offset: 0x2060
// Size: 0x9a
function private function_f98394d8(var_625dd793, var_3cb3ede5) {
    var_d771858a = [];
    for (i = 0; i < var_625dd793.size; i++) {
        var_663c51cb = var_625dd793[i];
        assert(isstring(var_663c51cb));
        var_d771858a = function_e768ae1e(var_d771858a, var_663c51cb, var_3cb3ede5);
    }
    return var_d771858a;
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 3, eflags: 0x6 linked
// Checksum 0x74306557, Offset: 0x2108
// Size: 0x2ba
function private function_e768ae1e(var_d771858a, var_663c51cb, var_3cb3ede5) {
    var_6711328d = getentarray("mdl_" + var_663c51cb + "_first_items", "script_noteworthy");
    foreach (e in var_6711328d) {
        if (!isdefined(var_d771858a)) {
            var_d771858a = [];
        } else if (!isarray(var_d771858a)) {
            var_d771858a = array(var_d771858a);
        }
        var_d771858a[var_d771858a.size] = e;
    }
    t = getent(var_663c51cb, "script_noteworthy");
    if (!isdefined(var_d771858a)) {
        var_d771858a = [];
    } else if (!isarray(var_d771858a)) {
        var_d771858a = array(var_d771858a);
    }
    var_d771858a[var_d771858a.size] = t;
    var_181973be = var_3cb3ede5[var_663c51cb].var_9c01f410;
    if (isdefined(var_181973be)) {
        foreach (var_f1036742 in var_181973be) {
            if (isdefined(var_f1036742.isunlocked) && var_f1036742.isunlocked == 0) {
                continue;
            }
            if (isdefined(var_f1036742.tagname)) {
                e = getent(var_f1036742.tagname, "script_noteworthy");
                if (!isdefined(var_d771858a)) {
                    var_d771858a = [];
                } else if (!isarray(var_d771858a)) {
                    var_d771858a = array(var_d771858a);
                }
                var_d771858a[var_d771858a.size] = e;
            }
        }
    }
    return var_d771858a;
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 2, eflags: 0x6 linked
// Checksum 0xac84a19f, Offset: 0x23d0
// Size: 0x1a0
function private function_1e294fd9(var_625dd793, var_3cb3ede5) {
    foreach (mapname in var_625dd793) {
        clusterdata = var_3cb3ede5[mapname];
        var_4ff3b76c = getent(clusterdata.var_4ff3b76c, "script_noteworthy");
        var_4ff3b76c show();
        var_f215acc = 1;
        if (function_8c91b796(clusterdata)) {
            var_f215acc = 0;
        } else if (function_1447e257(clusterdata)) {
            var_f215acc = 0;
        }
        if (var_f215acc) {
            if (savegame::function_ac15668a(mapname)) {
                var_4ff3b76c setmodel(clusterdata.var_711c13dc);
            } else {
                var_4ff3b76c setmodel(clusterdata.var_653c7d7d);
            }
            continue;
        }
        var_4ff3b76c setmodel(clusterdata.var_839276ad);
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 2, eflags: 0x6 linked
// Checksum 0xb63743f0, Offset: 0x2578
// Size: 0x1c8
function private function_580e9a17(var_625dd793, var_3cb3ede5) {
    foreach (mapname in var_625dd793) {
        clusterdata = var_3cb3ede5[mapname];
        var_d65f7c8b = !is_true(clusterdata.var_32a51de2) && !function_1447e257(clusterdata) && !savegame::function_ac15668a(mapname);
        /#
            if (is_true(level.var_99e01934)) {
                var_d65f7c8b = 1;
            }
        #/
        if (var_d65f7c8b) {
            function_a548b274(clusterdata);
        } else {
            function_5fbd9a9c(clusterdata);
        }
        var_29af538f = clusterdata.var_1ca68c21;
        /#
            if (is_true(level.var_99e01934)) {
                var_29af538f = 1;
            }
        #/
        if (var_29af538f) {
            function_a40db718(clusterdata);
            continue;
        }
        function_50542db7(clusterdata);
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x2cc8c345, Offset: 0x2748
// Size: 0x9a
function private function_a548b274(clusterdata) {
    if (isdefined(clusterdata.var_8349c453)) {
        return;
    }
    assert(isdefined(clusterdata.var_f8097243));
    iconstruct = struct::get(clusterdata.var_f8097243);
    if (isdefined(iconstruct)) {
        clusterdata.var_8349c453 = spawn("script_origin", iconstruct.origin);
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0xc4b168ae, Offset: 0x27f0
// Size: 0x34
function private function_5fbd9a9c(clusterdata) {
    if (isdefined(clusterdata.var_8349c453)) {
        clusterdata.var_8349c453 delete();
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x8dea0aa4, Offset: 0x2830
// Size: 0x9a
function private function_a40db718(clusterdata) {
    if (isdefined(clusterdata.var_1a7f654)) {
        return;
    }
    assert(isdefined(clusterdata.var_212ee626));
    iconstruct = struct::get(clusterdata.var_212ee626);
    if (isdefined(iconstruct)) {
        clusterdata.var_1a7f654 = spawn("script_origin", iconstruct.origin);
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x66a3bf12, Offset: 0x28d8
// Size: 0x34
function private function_50542db7(clusterdata) {
    if (isdefined(clusterdata.var_1a7f654)) {
        clusterdata.var_1a7f654 delete();
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x2ba6cf8, Offset: 0x2918
// Size: 0x46
function private function_1447e257(clusterdata) {
    return is_true(clusterdata.var_e4f432d9) && !savegame::function_ac15668a(clusterdata.var_d7ba74ee);
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x84591ad8, Offset: 0x2968
// Size: 0x3e
function private function_8c91b796(clusterdata) {
    return is_true(clusterdata.var_32a51de2) && !function_eaf23d80(clusterdata);
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0xe91fbb07, Offset: 0x29b0
// Size: 0xec
function private function_e0cfa93c(var_7b80750a) {
    player = self;
    assert(isplayer(player));
    player endon(#"death");
    level.player flag::wait_till(level.var_d7d201ba);
    if (isdefined(var_7b80750a)) {
        level waittill(var_7b80750a);
    }
    statemachine = player function_1bb19090();
    statemachine statemachine::set_state("board_default_state");
    player thread function_e8e65a88(statemachine, "board_default_state");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 2, eflags: 0x6 linked
// Checksum 0x3885cfe3, Offset: 0x2aa8
// Size: 0x288
function private function_e8e65a88(statemachine, initialstate) {
    player = self;
    assert(isplayer(player));
    player endon(#"death");
    blackboard = statemachine.blackboard;
    blackboard.var_481d0fb1 = [initialstate];
    while (true) {
        player waittill(#"hash_4e26526624ef0227");
        assert(isdefined(statemachine.current_state) && isdefined(statemachine.next_state));
        blackboard.var_68768c5 = statemachine.current_state.name;
        if (!isinarray(blackboard.var_481d0fb1, statemachine.next_state.name)) {
            array::add(blackboard.var_481d0fb1, statemachine.next_state.name);
        } else {
            assert(blackboard.var_481d0fb1[blackboard.var_481d0fb1.size - 1] == statemachine.current_state.name && blackboard.var_481d0fb1[blackboard.var_481d0fb1.size - 2] == statemachine.next_state.name);
            blackboard.var_481d0fb1[blackboard.var_481d0fb1.size - 1] = undefined;
        }
        /#
            if (is_true(level.var_47df5f11)) {
                println("<unknown string>");
                for (i = 0; i < blackboard.var_481d0fb1.size; i++) {
                    println("<unknown string>" + i + "<unknown string>" + blackboard.var_481d0fb1[i]);
                }
            }
        #/
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 0, eflags: 0x6 linked
// Checksum 0xa16676a0, Offset: 0x2d38
// Size: 0x152
function private function_305352b5() {
    player = self;
    assert(isplayer(player));
    statemachine = player function_1bb19090();
    var_fe7185f8 = statemachine.blackboard.var_68768c5;
    /#
        if (isinarray(statemachine.blackboard.var_481d0fb1, var_fe7185f8)) {
            blackboard = statemachine.blackboard;
            assert(blackboard.var_481d0fb1[blackboard.var_481d0fb1.size - 1] == statemachine.current_state.name && blackboard.var_481d0fb1[blackboard.var_481d0fb1.size - 2] == var_fe7185f8);
        }
    #/
    return isinarray(statemachine.blackboard.var_481d0fb1, var_fe7185f8);
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 0, eflags: 0x6 linked
// Checksum 0x6c85b3ee, Offset: 0x2e98
// Size: 0x152
function private function_a997529d() {
    player = self;
    assert(isplayer(player));
    statemachine = player function_1bb19090();
    /#
        if (isinarray(statemachine.blackboard.var_481d0fb1, statemachine.next_state.name)) {
            blackboard = statemachine.blackboard;
            assert(blackboard.var_481d0fb1[blackboard.var_481d0fb1.size - 1] == statemachine.current_state.name && blackboard.var_481d0fb1[blackboard.var_481d0fb1.size - 2] == statemachine.next_state.name);
        }
    #/
    return isinarray(statemachine.blackboard.var_481d0fb1, statemachine.next_state.name);
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 0, eflags: 0x6 linked
// Checksum 0x24bcc1da, Offset: 0x2ff8
// Size: 0xa4
function private function_1bb19090() {
    player = self;
    assert(isplayer(player));
    assert(isdefined(player.state_machines));
    assert(isdefined(player.state_machines[#"hash_5e510c4549b3ff60"]));
    return player.state_machines[#"hash_5e510c4549b3ff60"];
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0xa0a2882f, Offset: 0x30a8
// Size: 0x2e
function private function_361f6bd8(*params) {
    assertmsg("<unknown string>");
    return false;
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x47825f1e, Offset: 0x30e0
// Size: 0x12c
function private function_6d01a6c8(*params) {
    player = self;
    assert(isplayer(player));
    /#
        player function_fc845aca();
    #/
    level.statemachine = player function_1bb19090();
    level.statemachine.blackboard.var_63754fbc util::create_cursor_hint("tag_origin", (0, 0, 0), #"hash_400e97432023f9f3", 160, undefined, &function_b0a92909);
    player thread clientfield::set_to_player("set_hub_fov", 2);
    player thread clientfield::set_to_player("pstfx_t9_cp_hub_eboard_vignette", 0);
    player thread clientfield::set_to_player("pstfx_t9_cp_hub_eboard_overview", 0);
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x9237b9f3, Offset: 0x3218
// Size: 0x8c
function private function_964c7ad2(*params) {
    player = self;
    assert(isplayer(player));
    assert(!level flag::get("<unknown string>"));
    /#
        player function_d530ce5a();
    #/
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0xdf958291, Offset: 0x32b0
// Size: 0xa4
function private function_b0a92909(params) {
    assert(isdefined(params.player));
    /#
        statemachine = params.player function_1bb19090();
        assert(statemachine.current_state.name == "<unknown string>");
    #/
    params.player notify(#"hash_3f23a5dfb4a181d");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 0, eflags: 0x6 linked
// Checksum 0x2f121fe3, Offset: 0x3360
// Size: 0x16c
function private function_5501ae88() {
    player = self;
    player endon(#"death");
    if (!savegame::function_2ee66e93("ExamineEvidenceHintShown", 0)) {
        wait(0.5);
        player hint_tutorial::function_4c2d4fc4(#"hash_12271ba90c5284d8", #"hash_6de0c50ffde2d869", 4);
        player hint_tutorial::function_df08d48(5);
        namespace_61e6d095::function_46df0bc7(#"hint_tutorial", 999);
        namespace_61e6d095::function_d3c3e5c3(#"hint_tutorial", [#"dialog_tree", #"computer"]);
        savegame::set_player_data("ExamineEvidenceHintShown", 1);
        waitframe(1);
        player hint_tutorial::pause(undefined, undefined, 2, undefined, undefined, 1);
        wait(0.5);
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0xc54387fb, Offset: 0x34d8
// Size: 0x23c
function private function_587e1291(blackboard) {
    player = self;
    player endon(#"death");
    if (!savegame::function_2ee66e93("SideMissionUnlockedHintShown", 0)) {
        var_e0e794c5 = 0;
        foreach (mapname in blackboard.var_625dd793) {
            clusterdata = blackboard.var_3cb3ede5[mapname];
            if (is_true(clusterdata.var_32a51de2)) {
                var_e0e794c5 = 1;
                break;
            }
        }
        if (!var_e0e794c5) {
            return;
        }
        wait(0.5);
        player hint_tutorial::function_4c2d4fc4(#"hash_3012969fa356381", #"hash_39bac5818104980f");
        player hint_tutorial::function_df08d48(5);
        namespace_61e6d095::function_46df0bc7(#"hint_tutorial", 999);
        namespace_61e6d095::function_d3c3e5c3(#"hint_tutorial", [#"dialog_tree", #"computer"]);
        savegame::set_player_data("SideMissionUnlockedHintShown", 1);
        waitframe(1);
        player hint_tutorial::pause(undefined, undefined, 2, undefined, undefined, 1);
        wait(0.5);
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x40c41a10, Offset: 0x3720
// Size: 0xac4
function private function_bdf71927(*params) {
    player = self;
    assert(isplayer(player));
    player endon(#"death");
    /#
        player function_fc845aca();
    #/
    statemachine = player function_1bb19090();
    blackboard = statemachine.blackboard;
    player clientfield::set_to_player("pstfx_t9_cp_hub_eboard_vignette", 1);
    player clientfield::set_to_player("pstfx_t9_cp_hub_eboard_overview", 1);
    if (player function_305352b5()) {
        player function_3ab14abb();
        level thread namespace_4ed3ce47::function_d2bce2b8();
        player thread namespace_4ed3ce47::function_acc6feb9();
        level thread namespace_4ed3ce47::function_7edafa59("evidence_board_main");
        level flag::set("flag_player_used_evidence_board");
        level flag::set("flag_player_using_evidence_board");
        foreach (var_3d43d7b8 in level.a_ai_allies) {
            if (isdefined(var_3d43d7b8[0])) {
                var_3d43d7b8[0] notify(#"kill_dialog");
            }
        }
        player hide();
        player setstance("stand");
        player val::set(#"hash_6f8f850d83573a8f", "allow_prone", 0);
        player val::set(#"hash_6f8f850d83573a8f", "allow_crouch", 0);
        player function_44d63ecd(0, 0.5);
        player function_d50da7b8(blackboard);
        player.var_c9b94b07 = player function_43ee4470();
        player setcinematicmotionoverride("cinematicmotion_static");
        player function_5501ae88();
        player function_587e1291(blackboard);
        player interactive_map::open(#"hash_79bcfa1ce8d9fd7f", undefined, undefined, 0, undefined, undefined, undefined, undefined, undefined, 1);
        player interactive_map::function_23036faa(#"cursor", "year", 0);
        player interactive_map::function_23036faa(#"cursor", "player", #"");
        player interactive_map::function_23036faa(#"cursor", "progress", 0);
        player interactive_map::function_23036faa(#"cursor", "collectibleCount", 0);
        player interactive_map::function_23036faa(#"cursor", "missionState", -1);
        player interactive_map::function_59b2a130(blackboard.var_3c3d8c0b);
        var_96b6affa = {#var_4ac77177:0, #var_de6f0004:0, #var_4d98c3ce:#"hash_6c7bb285599937ba", #complete_callback:&function_fb5a7ab1, #var_be77841a:0, #var_531201f1:&function_4b717253};
        foreach (trigger in blackboard.var_3c3d8c0b) {
            trigger.var_f90e2591 = &function_e976f5d3;
            trigger.var_938b0e9b = &function_cab79d7e;
            clusterdata = blackboard.var_3cb3ede5[trigger.script_noteworthy];
            if (function_1447e257(clusterdata)) {
                trigger.var_d9b5c896 = isdefined(clusterdata.var_c4ac97e4) ? clusterdata.var_c4ac97e4 : clusterdata.levelname;
                trigger.var_94ca2a30 = isdefined(clusterdata.var_bd8e2ffe) ? clusterdata.var_bd8e2ffe : clusterdata.var_2dd3e7b0;
            } else {
                trigger.var_d9b5c896 = clusterdata.levelname;
                trigger.var_94ca2a30 = clusterdata.var_2dd3e7b0;
            }
            trigger interactive_map::function_b5c2702b(#"confirm", var_96b6affa);
        }
        player interactive_map::function_879505e1(1, #"hash_181a347630cebe70");
        player interactive_map::function_835fb58e(1);
    }
    function_580e9a17(blackboard.var_625dd793, blackboard.var_3cb3ede5);
    assert(!isdefined(blackboard.var_48b0cd0f));
    blackboard.var_48b0cd0f = [];
    foreach (mapdata in blackboard.var_3cb3ede5) {
        if (isdefined(mapdata.var_8349c453)) {
            uid = hash("icon_next_mission_" + mapdata.var_8ca1d4a);
            namespace_61e6d095::create(uid, #"hash_21d9a29850806057");
            namespace_61e6d095::function_d3c3e5c3(uid, #"interactive_map");
            namespace_61e6d095::set_state(uid, 0);
            namespace_61e6d095::set_ent(uid, mapdata.var_8349c453);
            if (!isdefined(blackboard.var_48b0cd0f)) {
                blackboard.var_48b0cd0f = [];
            } else if (!isarray(blackboard.var_48b0cd0f)) {
                blackboard.var_48b0cd0f = array(blackboard.var_48b0cd0f);
            }
            blackboard.var_48b0cd0f[blackboard.var_48b0cd0f.size] = uid;
        }
        if (isdefined(mapdata.var_1a7f654)) {
            uid = hash("icon_new_evidence_" + mapdata.var_8ca1d4a);
            namespace_61e6d095::create(uid, #"hash_21d9a29850806057");
            namespace_61e6d095::function_d3c3e5c3(uid, #"interactive_map");
            if (is_true(mapdata.var_32a51de2)) {
                namespace_61e6d095::set_state(uid, 2);
            } else {
                namespace_61e6d095::set_state(uid, 1);
            }
            namespace_61e6d095::set_ent(uid, mapdata.var_1a7f654);
            if (!isdefined(blackboard.var_48b0cd0f)) {
                blackboard.var_48b0cd0f = [];
            } else if (!isarray(blackboard.var_48b0cd0f)) {
                blackboard.var_48b0cd0f = array(blackboard.var_48b0cd0f);
            }
            blackboard.var_48b0cd0f[blackboard.var_48b0cd0f.size] = uid;
        }
    }
    player val::set(#"eboard", "show_hud", 0);
    namespace_c8e236da::removelist();
    self function_5f8cfb0f(0);
    namespace_c8e236da::function_ebf737f8(#"hash_70ea6473ebf66053");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 0, eflags: 0x6 linked
// Checksum 0x920680d7, Offset: 0x41f0
// Size: 0x54
function private function_3ab14abb() {
    player = self;
    player clientfield::set_to_player("set_hub_dof", 1);
    player clientfield::set_to_player("set_hub_fov", 4);
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x687150c4, Offset: 0x4250
// Size: 0x1ac
function private function_d50da7b8(blackboard) {
    player = self;
    assert(isplayer(player));
    player endon(#"death");
    player val::set(#"hash_5f70dbe5f8e16583", "freezecontrols", 1);
    player stopgestureviewmodel("dem_lowreadyup", blackboard.var_33e067df);
    player playerlinktoblend(blackboard.var_f9e7327d, "tag_origin", blackboard.var_33e067df, blackboard.var_8e1686c8, blackboard.var_f3592501, blackboard.var_33e067df, blackboard.var_8e1686c8, blackboard.var_f3592501);
    wait(blackboard.var_33e067df);
    waitframe(1);
    playerpos = player getplayercamerapos();
    playerangles = player getplayerangles();
    player camerasetposition(playerpos, playerangles);
    player cameraactivate(1);
    waitframe(1);
    player val::reset_all(#"hash_5f70dbe5f8e16583");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x3961d9cd, Offset: 0x4408
// Size: 0xc0
function private function_f77a1784(*params) {
    player = self;
    assert(isplayer(player));
    player endon(#"death", #"hash_4e26526624ef0227");
    player namespace_61e6d095::function_b0bad5ff("eboard_state_change");
    player function_44d63ecd(1, 0.8);
    player notify(#"hash_3daf27ede70cbb90");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0xc549032b, Offset: 0x44d0
// Size: 0x48
function private function_fb5a7ab1(*var_5a02549b) {
    player = getplayers()[0];
    player notify(#"hash_7ce217c53edc8162");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x855e21fc, Offset: 0x4520
// Size: 0x2c
function private function_4b717253(*var_5a02549b) {
    return !namespace_61e6d095::should_hide(#"interactive_map");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 0, eflags: 0x6 linked
// Checksum 0x7b3c48a4, Offset: 0x4558
// Size: 0x40c
function private function_e976f5d3() {
    missionname = self.script_noteworthy;
    player = getplayers()[0];
    statemachine = player function_1bb19090();
    blackboard = statemachine.blackboard;
    blackboard.var_c5bde695 = missionname;
    evidence = blackboard.var_3cb3ede5[missionname];
    assert(isdefined(evidence));
    interactive_map::function_23036faa(#"cursor", "missionState", -1);
    interactive_map::function_23036faa(#"cursor", "isSideMission", evidence.var_32a51de2);
    interactive_map::function_23036faa(#"cursor", "year", evidence.var_2200aced);
    if (function_1447e257(evidence)) {
        interactive_map::function_23036faa(#"cursor", "player", isdefined(evidence.var_fcfeae68) ? evidence.var_fcfeae68 : #"");
    } else {
        interactive_map::function_23036faa(#"cursor", "player", evidence.var_4d8b459b);
    }
    interactive_map::function_23036faa(#"cursor", "progress", 0.4);
    if (isdefined(evidence.var_8349c453)) {
        interactive_map::function_23036faa(#"cursor", "missionState", 0);
    }
    if (isdefined(evidence.var_1a7f654)) {
        if (evidence.var_32a51de2 === 1) {
            interactive_map::function_23036faa(#"cursor", "missionState", 2);
        } else {
            interactive_map::function_23036faa(#"cursor", "missionState", 1);
        }
    }
    if (isdefined(evidence.var_dade7c7f) && isdefined(evidence.var_8ca1d4a)) {
        var_61b3cfd0 = collectibles::function_9f976c54(evidence.var_8ca1d4a);
        assert(var_61b3cfd0 < 8);
        var_68c47b96 = collectibles::function_7be39f53(evidence.var_8ca1d4a);
        assert(var_68c47b96 < 8);
        var_2ed2359a = var_61b3cfd0;
        var_2ed2359a |= var_68c47b96 << 3;
        interactive_map::function_23036faa(#"cursor", "collectibleCount", var_2ed2359a);
    } else {
        interactive_map::function_23036faa(#"cursor", "collectibleCount", 0);
    }
    level thread namespace_4ed3ce47::function_7edafa59("evidence_board_mission");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 0, eflags: 0x6 linked
// Checksum 0x5e0f5b86, Offset: 0x4970
// Size: 0x174
function private function_cab79d7e() {
    player = getplayers()[0];
    statemachine = player function_1bb19090();
    statemachine.blackboard.var_c5bde695 = undefined;
    interactive_map::function_23036faa(#"cursor", "year", 0);
    interactive_map::function_23036faa(#"cursor", "player", #"");
    interactive_map::function_23036faa(#"cursor", "progress", 0);
    interactive_map::function_23036faa(#"cursor", "collectibleCount", 0);
    interactive_map::function_23036faa(#"cursor", "missionState", -1);
    level notify(#"hash_7c11efb940bfa7e2");
    level thread namespace_4ed3ce47::function_7edafa59("evidence_board_main");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x916aa4d1, Offset: 0x4af0
// Size: 0x15c
function private function_559b452b(*params) {
    player = self;
    assert(isplayer(player));
    /#
        player function_d530ce5a();
    #/
    namespace_c8e236da::removelist();
    statemachine = player function_1bb19090();
    blackboard = statemachine.blackboard;
    foreach (uid in blackboard.var_48b0cd0f) {
        namespace_61e6d095::remove(uid);
    }
    blackboard.var_48b0cd0f = undefined;
    if (player function_a997529d()) {
        player thread function_22ec525a(blackboard);
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x520ebb79, Offset: 0x4c58
// Size: 0x204
function private function_22ec525a(blackboard) {
    player = self;
    assert(isplayer(player));
    player endon(#"death");
    blackboard.var_c5bde695 = undefined;
    player val::set(#"eboard", "show_hud", 1);
    namespace_c8e236da::removelist();
    interactive_map::close();
    level thread namespace_4ed3ce47::function_7edafa59("ambient");
    level thread namespace_4ed3ce47::function_dd520714();
    player thread namespace_4ed3ce47::function_4612c96a();
    player show();
    player cameraactivate(0);
    if (isdefined(player.var_c9b94b07)) {
        player setcinematicmotionoverride(player.var_c9b94b07);
        player.var_c9b94b07 = undefined;
    } else {
        player clearcinematicmotionoverride();
    }
    waitframe(1);
    player unlink();
    player playgestureviewmodel("dem_lowreadyup", undefined, undefined, 1);
    player val::reset_all(#"hash_6f8f850d83573a8f");
    level flag::clear("flag_player_using_evidence_board");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0xeba1e653, Offset: 0x4e68
// Size: 0xa0c
function private function_5b9bb291(*params) {
    player = self;
    assert(isplayer(player));
    /#
        player function_fc845aca();
    #/
    statemachine = player function_1bb19090();
    blackboard = statemachine.blackboard;
    assert(isdefined(blackboard.var_c5bde695));
    evidence = blackboard.var_3cb3ede5[blackboard.var_c5bde695];
    assert(!namespace_61e6d095::exists(#"hash_3ccc1702bc979da8"));
    namespace_61e6d095::create(#"hash_3ccc1702bc979da8", #"hash_4130605c2e66825d");
    namespace_61e6d095::function_d3c3e5c3(#"hash_3ccc1702bc979da8", #"interactive_map");
    var_9f97b0c5 = isdefined(evidence.var_ba2153ee) && evidence.var_ba2153ee == 1;
    namespace_61e6d095::function_9ade1d9b(#"hash_3ccc1702bc979da8", "AlignRight", var_9f97b0c5);
    namespace_61e6d095::function_9ade1d9b(#"hash_3ccc1702bc979da8", "MapName", blackboard.var_c5bde695);
    namespace_61e6d095::function_9ade1d9b(#"hash_3ccc1702bc979da8", "Year", evidence.var_2200aced);
    namespace_61e6d095::function_9ade1d9b(#"hash_3ccc1702bc979da8", "HasNewEvidence", is_true(evidence.var_1ca68c21));
    var_6f3b6154 = function_1447e257(evidence);
    if (var_6f3b6154) {
        namespace_61e6d095::function_9ade1d9b(#"hash_3ccc1702bc979da8", "CanPlayMission", 0);
        namespace_61e6d095::function_9ade1d9b(#"hash_3ccc1702bc979da8", "LevelName", isdefined(evidence.var_c4ac97e4) ? evidence.var_c4ac97e4 : evidence.levelname);
        namespace_61e6d095::function_9ade1d9b(#"hash_3ccc1702bc979da8", "LevelDifficulty", "");
        namespace_61e6d095::function_9ade1d9b(#"hash_3ccc1702bc979da8", "LongDescription", isdefined(evidence.var_c8c2549a) ? evidence.var_c8c2549a : evidence.var_47b1727b);
        namespace_61e6d095::function_9ade1d9b(#"hash_3ccc1702bc979da8", "LevelPresence", isdefined(evidence.var_fcfeae68) ? evidence.var_fcfeae68 : evidence.var_4d8b459b);
    } else {
        namespace_61e6d095::function_9ade1d9b(#"hash_3ccc1702bc979da8", "CanPlayMission", 1);
        namespace_61e6d095::function_9ade1d9b(#"hash_3ccc1702bc979da8", "LevelName", evidence.levelname);
        namespace_61e6d095::function_9ade1d9b(#"hash_3ccc1702bc979da8", "LevelDifficulty", "");
        namespace_61e6d095::function_9ade1d9b(#"hash_3ccc1702bc979da8", "LongDescription", evidence.var_47b1727b);
        namespace_61e6d095::function_9ade1d9b(#"hash_3ccc1702bc979da8", "LevelPresence", evidence.var_4d8b459b);
    }
    missiondata = savegame::function_6440b06b(#"persistent", blackboard.var_c5bde695);
    if (is_true(missiondata.complete) && isdefined(missiondata.var_8757a567)) {
        var_4a19e561 = blackboard.var_7117f05e[missiondata.var_8757a567];
        namespace_61e6d095::function_9ade1d9b(#"hash_3ccc1702bc979da8", "LevelDifficulty", var_4a19e561);
    }
    namespace_61e6d095::function_9ade1d9b(#"hash_3ccc1702bc979da8", "LastSelectedButton", isdefined(blackboard.var_bcb26d08) ? blackboard.var_bcb26d08 : -1);
    if (isdefined(evidence.var_4458275e)) {
        var_84c8fadd = 0;
        for (var_d871a85c = 0; var_d871a85c < evidence.var_4458275e.size; var_d871a85c++) {
            if (player_decision::function_6efc0ff8(blackboard.var_c5bde695, var_d871a85c)) {
                var_e8c1b531 = evidence.var_4458275e[var_d871a85c];
                namespace_61e6d095::function_f2a9266(#"hash_3ccc1702bc979da8", var_84c8fadd, "IsPrimaryObjective", var_e8c1b531.var_9e5dab66 === 1);
                namespace_61e6d095::function_f2a9266(#"hash_3ccc1702bc979da8", var_84c8fadd, "IsEvilObjective", var_e8c1b531.var_49a52230 === 1);
                namespace_61e6d095::function_f2a9266(#"hash_3ccc1702bc979da8", var_84c8fadd, "Index", var_e8c1b531.itemindex);
                namespace_61e6d095::function_f2a9266(#"hash_3ccc1702bc979da8", var_84c8fadd, "Title", var_e8c1b531.title);
                var_84c8fadd++;
            }
        }
    }
    namespace_61e6d095::function_73c9a490(#"hash_3ccc1702bc979da8", 0);
    player clientfield::set_to_player("set_hub_dof", 4);
    player clientfield::set_to_player("set_hub_fov", 1);
    namespace_c8e236da::removelist();
    var_5c5bb311 = is_true(savegame::function_2ee66e93(blackboard.var_c5bde695 + "_intro_vo_played"));
    if (player function_305352b5()) {
        level thread namespace_4ed3ce47::function_6fe99ae0();
        namespace_61e6d095::function_df0d7a85(#"hash_3ccc1702bc979da8", [#"interactive_map"]);
        player clientfield::set_to_player("set_player_pbg_bank", 1);
        if (isdefined(evidence.var_89616eaa)) {
            level scene::play("scene_hub_eboard_handler", evidence.var_89616eaa);
        }
        if (isdefined(evidence.var_8f98dad8)) {
            level thread scene::play("scene_hub_eboard_handler", evidence.var_8f98dad8);
        }
        if (isdefined(evidence.var_d832c7fb) && evidence.var_d832c7fb.size > 0 && !var_5c5bb311) {
            player thread function_93dd1a56(evidence.var_d832c7fb);
            savegame::set_player_data(blackboard.var_c5bde695 + "_intro_vo_played", 1);
        }
        level clientfield::set("eboard_notify_from_server", 1);
    }
    namespace_61e6d095::function_73c9a490(#"hash_3ccc1702bc979da8", 1);
    if (var_5c5bb311) {
        namespace_c8e236da::function_ebf737f8(#"hash_21282e1a3a54e697");
        self function_5f8cfb0f(1);
    } else {
        self function_5f8cfb0f(0);
    }
    namespace_c8e236da::function_ebf737f8(#"hash_70ea6473ebf66053");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x67a8313, Offset: 0x5880
// Size: 0xd8
function private function_93dd1a56(var_ed4d2551) {
    self endon(#"death", #"hash_4e26526624ef0227");
    foreach (vox in var_ed4d2551) {
        self dialogue::radio(vox.vox);
        wait(randomfloatrange(0.5, 0.8));
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 0, eflags: 0x6 linked
// Checksum 0x68c1e595, Offset: 0x5960
// Size: 0x110
function private function_d2acd9a1() {
    player = self;
    player endon(#"death");
    while (true) {
        player waittill(#"hash_278b9a3955f6e5a");
        statemachine = player function_1bb19090();
        blackboard = statemachine.blackboard;
        assert(isdefined(blackboard.var_c5bde695));
        evidence = blackboard.var_3cb3ede5[blackboard.var_c5bde695];
        if (isdefined(evidence.var_d832c7fb) && evidence.var_d832c7fb.size > 0) {
            player function_93dd1a56(evidence.var_d832c7fb);
        }
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0xfc99a35c, Offset: 0x5a78
// Size: 0x708
function private function_c7ffe282(*params) {
    player = self;
    assert(isplayer(player));
    player endon(#"death", #"hash_4e26526624ef0227");
    player childthread function_e14ba795();
    if (namespace_c8e236da::function_295a2a9e(#"hash_21282e1a3a54e697")) {
        player childthread function_d2acd9a1();
    }
    while (true) {
        option = level waittill(#"evidence_board_option_selected");
        if (!namespace_61e6d095::exists(#"hash_3ccc1702bc979da8")) {
            continue;
        }
        statemachine = player function_1bb19090();
        blackboard = statemachine.blackboard;
        blackboard.var_bcb26d08 = option.var_70b35161;
        if (option.var_70b35161 == 1) {
            assert(isdefined(blackboard.var_c5bde695));
            evidence = blackboard.var_3cb3ede5[blackboard.var_c5bde695];
            if (isdefined(evidence.var_dade7c7f) && evidence.var_dade7c7f.size > 0) {
                player notify(#"hash_3ee5ee530fc0a790");
                break;
            }
            continue;
        }
        if (option.var_70b35161 == 0) {
            assert(isdefined(blackboard.var_c5bde695));
            safehouse = savegame::function_8136eb5a();
            nextmission = blackboard.var_c5bde695;
            var_cc500e2b = function_2717b55f(nextmission);
            savegame::set_player_data("previous_safehouse", safehouse);
            var_a71d5880 = savegame::function_6440b06b(#"persistent", nextmission);
            namespace_61e6d095::function_73c9a490(#"hash_3ccc1702bc979da8", 0);
            if (nextmission == "cp_nic_revolucion" && !is_true(var_a71d5880.complete)) {
                player thread globallogic_ui::function_4e49c51d(#"hash_53f4004442386d39", #"hash_4f8c4e1b714e2e90", 0, &function_1c9f3744, &function_5058b4e9, nextmission);
            } else if (isdefined(var_cc500e2b) && is_true(var_cc500e2b.var_32a51de2)) {
                var_a71d5880 = savegame::function_6440b06b(#"persistent", nextmission);
                if (is_true(var_a71d5880.complete)) {
                    function_9f6854a1(nextmission);
                } else if (nextmission == "cp_sidemission_takedown") {
                    if (!is_true(player_decision::function_ee124ba3())) {
                        player thread globallogic_ui::function_4e49c51d(#"hash_7f4487a7da679130", #"hash_746b9b6a5211589d", 0, &function_9f6854a1, &function_5058b4e9, nextmission);
                    } else {
                        function_9f6854a1(nextmission);
                    }
                } else if (nextmission == "cp_sidemission_tundra") {
                    var_a24e9150 = savegame::function_2ee66e93(#"hash_470832ca3fa7ae83", []);
                    var_8f36ce4a = 0;
                    foreach (var_7253f96e in var_a24e9150) {
                        if (is_true(var_7253f96e.ismarked)) {
                            var_8f36ce4a++;
                        }
                    }
                    if (var_8f36ce4a < 3) {
                        player thread globallogic_ui::function_4e49c51d(#"hash_1c8813eba3d3c667", #"hash_67bdd3726f291f0e", 1, undefined, &function_5058b4e9, nextmission);
                    } else {
                        player thread globallogic_ui::function_4e49c51d(#"hash_1c8813eba3d3c667", #"hash_2db99449b922dd5c", 0, &function_9f6854a1, &function_5058b4e9, nextmission);
                    }
                }
            } else {
                function_1c9f3744(nextmission);
            }
            continue;
        }
        if (option.var_70b35161 == 3) {
            assert(blackboard.var_c5bde695 == "<unknown string>");
            player notify(#"hash_2c777238a293b545");
            break;
        }
        if (option.var_70b35161 == 4) {
            assert(blackboard.var_c5bde695 == "<unknown string>");
            player notify(#"hash_2985d911ba4185c8");
            break;
        }
        assertmsg("<unknown string>" + option.var_70b35161);
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x3bccaebe, Offset: 0x6188
// Size: 0x34
function private function_5058b4e9(*params) {
    namespace_61e6d095::function_73c9a490(#"hash_3ccc1702bc979da8", 1);
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x6bfcacfb, Offset: 0x61c8
// Size: 0x5c
function private function_1c9f3744(nextmission) {
    player = getplayers()[0];
    player notify(#"hash_3ac28b014653cac6");
    skipto::function_1c2dfc20(nextmission);
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x24e532f8, Offset: 0x6230
// Size: 0x1a4
function private function_9f6854a1(nextmission) {
    self notify("18d00d06dc4ed404");
    self endon("18d00d06dc4ed404");
    self endon(#"disconnect");
    player = self;
    assert(isplayer(player));
    player notify(#"hash_3ac28b014653cac6");
    if (!isdefined(nextmission)) {
        statemachine = player function_1bb19090();
        blackboard = statemachine.blackboard;
        assert(isdefined(blackboard.var_c5bde695));
        nextmission = blackboard.var_c5bde695;
    }
    safehouse = savegame::function_8136eb5a();
    if (player stats::get_stat(#"hash_1e7fdd28f2a28f78", nextmission, #"missionindex") <= 0) {
        player stats::set_stat(#"hash_1e7fdd28f2a28f78", nextmission, #"missionindex", getmaporder(safehouse) + 1);
    }
    skipto::function_1c2dfc20(nextmission);
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0xb5f841e0, Offset: 0x63e0
// Size: 0x27c
function private function_96e31558(*params) {
    player = self;
    assert(isplayer(player));
    player endon(#"death");
    player notify(#"hash_3ac28b014653cac6");
    /#
        player function_d530ce5a();
    #/
    namespace_c8e236da::removelist();
    assert(namespace_61e6d095::exists(#"hash_3ccc1702bc979da8"));
    namespace_61e6d095::function_73c9a490(#"hash_3ccc1702bc979da8", 0);
    namespace_61e6d095::remove(#"hash_3ccc1702bc979da8");
    statemachine = player function_1bb19090();
    if (player function_a997529d()) {
        statemachine.blackboard.var_bcb26d08 = undefined;
        player clientfield::set_to_player("set_player_pbg_bank", 0);
        level clientfield::set("eboard_notify_from_server", 2);
        level thread namespace_4ed3ce47::function_f60575fd();
        level scene::stop("scene_hub_eboard_handler");
        player function_3ab14abb();
        player clientfield::set_to_player("eboard_camera_position", 2);
        wait(statemachine.blackboard.var_b2257d78);
        player clientfield::set_to_player("eboard_camera_position", 28);
        namespace_61e6d095::function_f96376c5(#"hash_3ccc1702bc979da8");
    }
    player thread function_7dfbe539();
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 0, eflags: 0x6 linked
// Checksum 0x596eabad, Offset: 0x6668
// Size: 0x3c
function private function_7dfbe539() {
    player = self;
    util::wait_network_frame();
    player dialogue::function_9e580f95();
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x1054848f, Offset: 0x66b0
// Size: 0x21c
function private function_de709256(*params) {
    player = self;
    assert(isplayer(player));
    /#
        player function_fc845aca();
    #/
    statemachine = player function_1bb19090();
    blackboard = statemachine.blackboard;
    assert(isdefined(blackboard.var_c5bde695));
    evidence = blackboard.var_3cb3ede5[blackboard.var_c5bde695];
    namespace_61e6d095::function_df0d7a85(#"hash_34f10865afcf9af7", [#"interactive_map"]);
    var_fc34020f = savegame::function_ac15668a(blackboard.var_c5bde695);
    namespace_46c3c08e::function_eadf5d0b(var_fc34020f);
    waitframe(1);
    player clientfield::set_to_player("eboard_review_handle_viewmodel", 2);
    namespace_c8e236da::removelist();
    if (!var_fc34020f) {
        namespace_c8e236da::function_ebf737f8(#"hash_7711aac8b3b77847");
    }
    namespace_c8e236da::function_ebf737f8(#"hash_70ea6473ebf66053");
    namespace_c8e236da::function_ebf737f8(#"hash_545a24d4a3a88817");
    namespace_c8e236da::function_ebf737f8(#"hash_700b367af088c0c3");
    blackboard.var_1bfff22b show();
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x689d8ffa, Offset: 0x68d8
// Size: 0x210
function private function_35a396ee(*params) {
    player = self;
    assert(isplayer(player));
    player endon(#"death", #"hash_4e26526624ef0227");
    player childthread function_e14ba795();
    var_26d73535 = namespace_46c3c08e::function_f9edf6c2();
    statemachine = player function_1bb19090();
    var_fc34020f = savegame::function_ac15668a(statemachine.blackboard.var_c5bde695);
    assert(var_26d73535 > 0);
    current_index = 0;
    while (true) {
        result = player waittillmatch({#menu:#"hash_20ed03061e0850f3"}, #"menuresponse");
        if (!namespace_61e6d095::exists(#"hash_34f10865afcf9af7")) {
            continue;
        }
        if (result.response == #"hash_7fff5f0605764d7") {
            player thread function_54e62ef2(current_index, result.intpayload);
            current_index = result.intpayload;
            continue;
        }
        if (result.response == #"hash_79587d9fe84f7a23") {
            if (!var_fc34020f) {
                namespace_46c3c08e::function_407ee527(current_index);
            }
        }
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 2, eflags: 0x6 linked
// Checksum 0x91f85353, Offset: 0x6af0
// Size: 0x4c
function private function_54e62ef2(*oldindex, *newindex) {
    player = self;
    assert(isplayer(player));
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 0, eflags: 0x4
// Checksum 0x4e216264, Offset: 0x6b48
// Size: 0x40
function private function_85225ecb() {
    player = getplayers()[0];
    player notify(#"hash_6508d37e574b09be");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 0, eflags: 0x6 linked
// Checksum 0xa4d27557, Offset: 0x6b90
// Size: 0x13a
function private function_3740b568() {
    player = self;
    assert(isplayer(player));
    player endon(#"death");
    player notify(#"hash_3ac28b014653cac6");
    namespace_46c3c08e::function_2340e15a();
    player clientfield::set_to_player("eboard_review_handle_viewmodel", 0);
    waitframe(1);
    namespace_61e6d095::function_f96376c5(#"hash_34f10865afcf9af7");
    statemachine = player function_1bb19090();
    blackboard = statemachine.blackboard;
    assert(isdefined(blackboard.var_c5bde695));
    blackboard.var_1bfff22b hide();
    waitframe(1);
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0xbe7c2fd1, Offset: 0x6cd8
// Size: 0x72c
function private function_e6734894(*params) {
    player = self;
    assert(isplayer(player));
    /#
        player function_fc845aca();
    #/
    statemachine = player function_1bb19090();
    blackboard = statemachine.blackboard;
    assert(isdefined(blackboard.var_c5bde695) && blackboard.var_c5bde695 == "<unknown string>");
    evidence = blackboard.var_3cb3ede5[blackboard.var_c5bde695];
    foreach (var_38d97d58 in evidence.var_9c01f410) {
        if (isdefined(var_38d97d58.callback) && var_38d97d58.callback == #"chaos_floppy_disk") {
            var_7fb2f6df = var_38d97d58;
            break;
        }
    }
    assert(isdefined(var_7fb2f6df));
    blackboard.var_7fb2f6df = var_7fb2f6df;
    var_fc34020f = savegame::function_ac15668a(blackboard.var_c5bde695);
    var_ccb596bd = player_decision::function_ee124ba3();
    if (var_ccb596bd) {
        hinttext = #"hash_7297c1617beaa420";
    } else if (var_fc34020f) {
        hinttext = #"hash_4633544551d3491a";
    } else {
        hinttext = #"hash_2879a6ccf4f083c8";
    }
    blackboard.var_9b52b1bf = !var_fc34020f || var_ccb596bd;
    assert(!namespace_61e6d095::exists(#"hash_afc09dfd34bcde0"));
    namespace_61e6d095::create(#"hash_afc09dfd34bcde0", #"hash_102694e2bfda6f95");
    namespace_61e6d095::function_d3c3e5c3(#"hash_afc09dfd34bcde0", #"interactive_map");
    namespace_61e6d095::function_9ade1d9b(#"hash_afc09dfd34bcde0", "evidenceEarnedCount", 0);
    namespace_61e6d095::function_9ade1d9b(#"hash_afc09dfd34bcde0", "evidenceTotalCount", 0);
    var_625081d5 = 0;
    namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", var_625081d5, "Ref", var_7fb2f6df.name);
    namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", var_625081d5, "Title", var_7fb2f6df.title);
    namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", var_625081d5, "SubTitle", var_7fb2f6df.subtitle);
    namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", var_625081d5, "Description", var_7fb2f6df.description);
    namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", var_625081d5, "Thumbnail", var_7fb2f6df.thumbnail);
    namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", var_625081d5, "IsUnlocked", 1);
    namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", var_625081d5, "UnlockType", var_7fb2f6df.var_1d226975);
    namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", var_625081d5, "UnlockMap", var_7fb2f6df.var_ed968ffd);
    namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", var_625081d5, "Hint", hinttext);
    namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", var_625081d5, "IsCompleted", var_fc34020f || var_ccb596bd);
    player clientfield::set_to_player("set_hub_dof", 1);
    player clientfield::set_to_player("set_hub_fov", 1);
    var_7fb2f6df.isunlocked = 1;
    function_aa81758f(var_7fb2f6df, 0);
    player clientfield::set_to_player("eboard_review_handle_viewmodel", 1);
    blackboard.var_1bfff22b show();
    namespace_61e6d095::function_73c9a490(#"hash_afc09dfd34bcde0", 1);
    namespace_c8e236da::removelist();
    if (blackboard.var_9b52b1bf) {
        if (var_ccb596bd) {
            namespace_c8e236da::function_ebf737f8(#"hash_7f24e58a797a8ecb");
        } else {
            namespace_c8e236da::function_ebf737f8(#"hash_1dcd987d46fd8a85");
        }
    }
    namespace_c8e236da::function_ebf737f8(#"hash_70ea6473ebf66053");
    namespace_c8e236da::function_ebf737f8(#"hash_545a24d4a3a88817");
    namespace_c8e236da::function_ebf737f8(#"hash_700b367af088c0c3");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0xcdf69a08, Offset: 0x7410
// Size: 0x178
function private function_d4497273(*params) {
    player = self;
    assert(isplayer(player));
    player endon(#"death", #"hash_4e26526624ef0227");
    player childthread function_e14ba795();
    statemachine = player function_1bb19090();
    blackboard = statemachine.blackboard;
    current_index = isdefined(blackboard.var_bcd1e3f9) ? blackboard.var_bcd1e3f9 : 0;
    while (true) {
        result = player waittillmatch({#menu:#"hash_20ed03061e0850f3", #response:#"hash_79587d9fe84f7a23"}, #"menuresponse");
        if (blackboard.var_9b52b1bf) {
            player thread function_85113485();
        }
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 0, eflags: 0x6 linked
// Checksum 0x72d06a41, Offset: 0x7590
// Size: 0xd8
function private function_85113485() {
    player = self;
    assert(isplayer(player));
    statemachine = player function_1bb19090();
    blackboard = statemachine.blackboard;
    assert(isdefined(blackboard.var_7fb2f6df));
    player notify(#"hash_7a4583c1e3b9ee99", {#var_ea190649:blackboard.var_7fb2f6df, #var_8a547b69:"evidence_board_evidence_floppy_callback_finished"});
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 0, eflags: 0x4
// Checksum 0x11364c9e, Offset: 0x7670
// Size: 0x50
function private function_e8205381() {
    player = self;
    assert(isplayer(player));
    player notify(#"hash_333d48f5d81e9a37");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0xf24b9a79, Offset: 0x76c8
// Size: 0x1ec
function private function_dd090dfe(*params) {
    player = self;
    assert(isplayer(player));
    player endon(#"death");
    player notify(#"hash_3ac28b014653cac6");
    /#
        player function_d530ce5a();
    #/
    statemachine = player function_1bb19090();
    blackboard = statemachine.blackboard;
    if (player function_a997529d()) {
        blackboard.var_1bfff22b hide();
        function_aa81758f(blackboard.var_7fb2f6df, 1);
        blackboard.var_7fb2f6df = undefined;
        player clientfield::set_to_player("eboard_review_handle_viewmodel", 0);
        assert(namespace_61e6d095::exists(#"hash_afc09dfd34bcde0"));
        namespace_61e6d095::remove(#"hash_afc09dfd34bcde0");
        namespace_c8e236da::removelist();
        waitframe(1);
        return;
    }
    if (namespace_61e6d095::exists(#"hash_afc09dfd34bcde0")) {
        namespace_61e6d095::remove(#"hash_afc09dfd34bcde0");
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0xa56d9fe6, Offset: 0x78c0
// Size: 0x44
function private function_c4deb1a2(*params) {
    namespace_c8e236da::removelist();
    waitframe(1);
    namespace_c8e236da::function_ebf737f8(#"hash_70ea6473ebf66053");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0xadf789a7, Offset: 0x7910
// Size: 0x238
function private function_b00f82b(params) {
    player = self;
    assert(isplayer(player));
    player endon(#"death");
    statemachine = player function_1bb19090();
    blackboard = statemachine.blackboard;
    if (isdefined(params.var_ea190649)) {
        var_38d97d58 = params.var_ea190649;
    } else {
        assert(isdefined(blackboard.var_c5bde695));
        assert(isdefined(blackboard.var_bcd1e3f9));
        evidence = blackboard.var_3cb3ede5[blackboard.var_c5bde695];
        assert(isdefined(evidence.var_dade7c7f) && isdefined(evidence.var_dade7c7f[blackboard.var_bcd1e3f9]));
        var_38d97d58 = evidence.var_dade7c7f[blackboard.var_bcd1e3f9];
    }
    assert(collectibles::function_606a97af(var_38d97d58.callback));
    player clientfield::set_to_player("eboard_review_handle_viewmodel", 0);
    collectibles::function_f539a1fa(var_38d97d58.callback, var_38d97d58);
    while (player namespace_61e6d095::function_70217795()) {
        waitframe(1);
    }
    if (isdefined(params.var_8a547b69)) {
        player notify(params.var_8a547b69);
        return;
    }
    player notify(#"hash_72eb7f4ec9c1828c");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x1196f7d9, Offset: 0x7b50
// Size: 0x74
function private function_340179ff(*params) {
    namespace_c8e236da::removelist();
    player = self;
    assert(isplayer(player));
    player clientfield::set_to_player("eboard_review_handle_viewmodel", 1);
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x90d558bc, Offset: 0x7bd0
// Size: 0x7fc
function private function_e2e9758c(*params) {
    player = self;
    assert(isplayer(player));
    /#
        player function_fc845aca();
    #/
    statemachine = player function_1bb19090();
    blackboard = statemachine.blackboard;
    assert(isdefined(blackboard.var_c5bde695));
    if (player function_305352b5()) {
        evidence = blackboard.var_3cb3ede5[blackboard.var_c5bde695];
        assert(isdefined(evidence.var_dade7c7f) && evidence.var_dade7c7f.size > 0);
        assert(!namespace_61e6d095::exists(#"hash_afc09dfd34bcde0"));
        namespace_61e6d095::create(#"hash_afc09dfd34bcde0", #"hash_102694e2bfda6f95");
        namespace_61e6d095::function_d3c3e5c3(#"hash_afc09dfd34bcde0", #"interactive_map");
        var_2a015e7e = collectibles::function_5d5166dd(evidence.var_8ca1d4a);
        var_f8f020e3 = collectibles::function_99c4aa1(evidence.var_8ca1d4a);
        namespace_61e6d095::function_9ade1d9b(#"hash_afc09dfd34bcde0", "evidenceEarnedCount", var_2a015e7e);
        namespace_61e6d095::function_9ade1d9b(#"hash_afc09dfd34bcde0", "evidenceTotalCount", var_f8f020e3);
        foreach (index, collectible in evidence.var_dade7c7f) {
            namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", index, "Ref", collectible.name);
            namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", index, "Title", collectible.title);
            namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", index, "SubTitle", collectible.subtitle);
            namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", index, "UnlockType", collectible.var_1d226975);
            namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", index, "UnlockMap", collectible.var_ed968ffd);
            namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", index, "Hint", #"");
            var_779873c0 = isdefined(collectible.var_779873c0) ? collectible.var_779873c0 : 0;
            if (var_779873c0 == 0) {
                namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", index, "Description", collectible.description);
            } else if (var_779873c0 == 1) {
                var_ad094026 = namespace_70eba6e6::function_b6a02677();
                if (var_ad094026 == 1) {
                    description = collectible.var_929642ed;
                } else if (var_ad094026 == 2) {
                    description = collectible.var_99e879f5;
                } else if (var_ad094026 == 3) {
                    description = collectible.var_3fe4f91e;
                } else {
                    description = collectible.var_95e66f2a;
                }
                namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", index, "Description", description);
            }
            namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", index, "Thumbnail", collectible.thumbnail);
            namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", index, "IsUnlocked", collectible.isunlocked);
            isnew = collectibles::function_ee216b9e(evidence.var_8ca1d4a, collectible.var_2a51713);
            namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", index, "IsNew", isnew);
        }
        if (function_1447e257(evidence)) {
            namespace_61e6d095::function_9ade1d9b(#"hash_afc09dfd34bcde0", "text", isdefined(evidence.var_c4ac97e4) ? evidence.var_c4ac97e4 : evidence.levelname);
        } else {
            namespace_61e6d095::function_9ade1d9b(#"hash_afc09dfd34bcde0", "text", evidence.levelname);
        }
        player clientfield::set_to_player("set_hub_dof", 1);
        player clientfield::set_to_player("set_hub_fov", 1);
        player clientfield::set_to_player("eboard_review_handle_viewmodel", 1);
        blackboard.var_1bfff22b show();
    }
    if (namespace_61e6d095::exists(#"hash_afc09dfd34bcde0")) {
        namespace_61e6d095::function_73c9a490(#"hash_afc09dfd34bcde0", 1);
    }
    namespace_c8e236da::removelist();
    namespace_c8e236da::function_ebf737f8(#"hash_70ea6473ebf66053");
    namespace_c8e236da::function_ebf737f8(#"hash_545a24d4a3a88817");
    namespace_c8e236da::function_ebf737f8(#"hash_700b367af088c0c3");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x9c9e6ddb, Offset: 0x83d8
// Size: 0x210
function private function_109f3f2(*params) {
    player = self;
    assert(isplayer(player));
    player endon(#"death", #"hash_4e26526624ef0227");
    player childthread function_e14ba795();
    statemachine = player function_1bb19090();
    blackboard = statemachine.blackboard;
    evidence = blackboard.var_3cb3ede5[blackboard.var_c5bde695];
    var_75c8057d = evidence.var_dade7c7f.size;
    if (!isdefined(blackboard.var_bcd1e3f9)) {
        blackboard.var_bcd1e3f9 = 0;
    }
    while (true) {
        result = player waittillmatch({#menu:#"hash_20ed03061e0850f3"}, #"menuresponse");
        if (!namespace_61e6d095::exists(#"hash_afc09dfd34bcde0")) {
            continue;
        }
        if (result.response == #"hash_7fff5f0605764d7") {
            player thread function_9019d1f0(blackboard.var_bcd1e3f9, result.intpayload);
            blackboard.var_bcd1e3f9 = result.intpayload;
            continue;
        }
        if (result.response == #"hash_79587d9fe84f7a23") {
            player thread function_57c5b410(blackboard.var_bcd1e3f9);
        }
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 2, eflags: 0x6 linked
// Checksum 0x94b7ea58, Offset: 0x85f0
// Size: 0x384
function private function_9019d1f0(oldindex, newindex) {
    player = self;
    assert(isplayer(player));
    namespace_61e6d095::function_9ade1d9b(#"hash_afc09dfd34bcde0", "count", newindex);
    statemachine = player function_1bb19090();
    blackboard = statemachine.blackboard;
    assert(isdefined(blackboard.var_c5bde695));
    evidence = blackboard.var_3cb3ede5[blackboard.var_c5bde695];
    assert(isdefined(evidence.var_dade7c7f) && isdefined(evidence.var_dade7c7f[newindex]));
    var_38d97d58 = evidence.var_dade7c7f[newindex];
    if (is_true(var_38d97d58.isunlocked) && collectibles::function_606a97af(var_38d97d58.callback)) {
        if (var_38d97d58.callback == #"hash_2bfb881b2d0ed7f7") {
            if (namespace_c8e236da::function_295a2a9e(#"hash_6b58b12eb08e0288")) {
                namespace_c8e236da::function_bf642b41(0);
            }
            if (!namespace_c8e236da::function_295a2a9e(#"hash_2d06159224a47a18")) {
                namespace_c8e236da::function_abdf062(0, #"hash_2d06159224a47a18");
            }
        } else {
            if (namespace_c8e236da::function_295a2a9e(#"hash_2d06159224a47a18")) {
                namespace_c8e236da::function_bf642b41(0);
            }
            if (!namespace_c8e236da::function_295a2a9e(#"hash_6b58b12eb08e0288")) {
                namespace_c8e236da::function_abdf062(0, #"hash_6b58b12eb08e0288");
            }
        }
    } else if (namespace_c8e236da::function_295a2a9e(#"hash_6b58b12eb08e0288") || namespace_c8e236da::function_295a2a9e(#"hash_2d06159224a47a18")) {
        namespace_c8e236da::function_bf642b41(0);
    }
    if (oldindex >= 0) {
        namespace_61e6d095::function_f2a9266(#"hash_afc09dfd34bcde0", oldindex, "IsNew", 0);
    }
    if (is_true(var_38d97d58.isunlocked)) {
        collectibles::function_55fb73ea(evidence.var_8ca1d4a, var_38d97d58.var_2a51713);
    }
    player thread function_1ec0078f(newindex, blackboard);
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x1c089420, Offset: 0x8980
// Size: 0x160
function private function_57c5b410(index) {
    player = self;
    assert(isplayer(player));
    statemachine = player function_1bb19090();
    blackboard = statemachine.blackboard;
    assert(isdefined(blackboard.var_c5bde695));
    evidence = blackboard.var_3cb3ede5[blackboard.var_c5bde695];
    assert(isdefined(evidence.var_dade7c7f) && isdefined(evidence.var_dade7c7f[index]));
    var_38d97d58 = evidence.var_dade7c7f[index];
    if (is_true(var_38d97d58.isunlocked) && collectibles::function_606a97af(var_38d97d58.callback)) {
        player notify(#"hash_7a4583c1e3b9ee99");
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 0, eflags: 0x4
// Checksum 0xa36345b8, Offset: 0x8ae8
// Size: 0x50
function private function_5ad666ce() {
    player = self;
    assert(isplayer(player));
    player notify(#"hash_57c28d19fe61af2f");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 2, eflags: 0x6 linked
// Checksum 0xcb8f021b, Offset: 0x8b40
// Size: 0x11c
function private function_1ec0078f(index, blackboard) {
    player = self;
    assert(isplayer(player));
    self notify("79e3bb6b157e8ca7");
    self endon("79e3bb6b157e8ca7");
    player endon(#"death", #"hash_206b23ce56f8caf7");
    evidence = blackboard.var_3cb3ede5[blackboard.var_c5bde695];
    if (isdefined(blackboard.var_bcd1e3f9)) {
        data = evidence.var_dade7c7f[blackboard.var_bcd1e3f9];
        function_aa81758f(data, 1);
    }
    data = evidence.var_dade7c7f[index];
    function_aa81758f(data, 0);
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0xb895b211, Offset: 0x8c68
// Size: 0x324
function private function_3db40935(*params) {
    player = self;
    assert(isplayer(player));
    player endon(#"death");
    player notify(#"hash_3ac28b014653cac6");
    /#
        player function_d530ce5a();
    #/
    statemachine = player function_1bb19090();
    blackboard = statemachine.blackboard;
    if (player function_a997529d()) {
        blackboard.var_1bfff22b hide();
        player notify(#"hash_206b23ce56f8caf7");
        evidence = blackboard.var_3cb3ede5[blackboard.var_c5bde695];
        if (isdefined(blackboard.var_bcd1e3f9)) {
            data = evidence.var_dade7c7f[blackboard.var_bcd1e3f9];
            function_aa81758f(data, 1);
        }
        if (evidence.var_1ca68c21) {
            var_4eaf209f = 0;
            foreach (var_38d97d58 in evidence.var_dade7c7f) {
                if (collectibles::function_ee216b9e(evidence.var_8ca1d4a, var_38d97d58.var_2a51713)) {
                    var_4eaf209f = 1;
                    break;
                }
            }
            evidence.var_1ca68c21 = var_4eaf209f;
        }
        assert(namespace_61e6d095::exists(#"hash_afc09dfd34bcde0"));
        namespace_61e6d095::remove(#"hash_afc09dfd34bcde0");
        blackboard.var_bcd1e3f9 = undefined;
        player clientfield::set_to_player("eboard_review_handle_viewmodel", 0);
        namespace_c8e236da::removelist();
        waitframe(1);
        return;
    }
    if (namespace_61e6d095::exists(#"hash_afc09dfd34bcde0")) {
        namespace_61e6d095::function_73c9a490(#"hash_afc09dfd34bcde0", 0);
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 2, eflags: 0x6 linked
// Checksum 0x2198f0b0, Offset: 0x8f98
// Size: 0xac
function private function_aa81758f(var_520cb95d, isvisible) {
    assert(isdefined(var_520cb95d.isunlocked));
    if (var_520cb95d.isunlocked) {
        var_afbac09f = getent(var_520cb95d.tagname, "script_noteworthy");
        if (isdefined(var_afbac09f)) {
            if (isvisible) {
                var_afbac09f show();
                return;
            }
            var_afbac09f hide();
        }
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x6 linked
// Checksum 0x3826b0e9, Offset: 0x9050
// Size: 0x1bc
function private function_b3f7df56(var_38d97d58) {
    player = getplayers()[0];
    player endon(#"death");
    assert(isdefined(var_38d97d58.var_5eeb1ad0));
    namespace_c8e236da::function_ebf737f8(#"hash_412ac8802ccc592d");
    namespace_61e6d095::create(#"hash_2ee86a814f89b7c1", #"hash_6ad4f1126c3ec0e1");
    namespace_61e6d095::function_d3c3e5c3(#"hash_2ee86a814f89b7c1", #"interactive_map");
    namespace_61e6d095::function_9ade1d9b(#"hash_2ee86a814f89b7c1", "title", var_38d97d58.var_812bb4e9, 0);
    namespace_61e6d095::function_9ade1d9b(#"hash_2ee86a814f89b7c1", "subtitle", var_38d97d58.var_305bd749, 0);
    namespace_61e6d095::function_9ade1d9b(#"hash_2ee86a814f89b7c1", "text", var_38d97d58.var_5eeb1ad0, 0);
    namespace_61e6d095::function_b0bad5ff();
    namespace_61e6d095::remove(#"hash_2ee86a814f89b7c1");
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 0, eflags: 0x6 linked
// Checksum 0x197f6165, Offset: 0x9218
// Size: 0xe4
function private function_e14ba795() {
    player = self;
    assert(isplayer(player));
    player endon(#"death", #"hash_3ac28b014653cac6");
    level endon(#"hash_46f3e63cfcb00995");
    while (true) {
        while (player namespace_61e6d095::function_70217795()) {
            waitframe(1);
        }
        player namespace_61e6d095::function_b0bad5ff(undefined, "flag_player_using_evidence_board");
        player notify(#"hash_6216ed611b03c897");
        wait(0.5);
    }
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x2 linked
// Checksum 0xc9f2763e, Offset: 0x9308
// Size: 0x5c
function function_5f8cfb0f(var_88e62a80) {
    if (self gamepadusedlast()) {
        namespace_c8e236da::function_ebf737f8(#"hash_1bf05148cc28df3c");
    }
    self thread function_f1d97432(var_88e62a80);
}

// Namespace namespace_fa335fda/namespace_f784b4da
// Params 1, eflags: 0x2 linked
// Checksum 0xc4ff5869, Offset: 0x9370
// Size: 0x13e
function function_f1d97432(var_88e62a80) {
    self endon(#"death", #"hash_3daf27ede70cbb90", #"hash_6216ed611b03c897", #"hash_3ee5ee530fc0a790");
    isusinggamepad = self gamepadusedlast();
    while (true) {
        var_92e26cfc = self gamepadusedlast();
        if (var_92e26cfc != isusinggamepad) {
            isusinggamepad = var_92e26cfc;
            if (isusinggamepad) {
                if (!namespace_c8e236da::function_295a2a9e(#"hash_1bf05148cc28df3c")) {
                    namespace_c8e236da::function_abdf062(var_88e62a80, #"hash_1bf05148cc28df3c");
                }
            } else if (namespace_c8e236da::function_295a2a9e(#"hash_1bf05148cc28df3c")) {
                namespace_c8e236da::function_bf642b41(var_88e62a80);
            }
        }
        waitframe(1);
    }
}

/#

    // Namespace namespace_fa335fda/namespace_f784b4da
    // Params 0, eflags: 0x4
    // Checksum 0xde09d9f4, Offset: 0x94b8
    // Size: 0xac
    function private function_fc845aca() {
        player = self;
        assert(isplayer(player));
        if (is_true(level.var_47df5f11)) {
            statemachine = player function_1bb19090();
            println("<unknown string>" + statemachine.current_state.name);
        }
    }

    // Namespace namespace_fa335fda/namespace_f784b4da
    // Params 0, eflags: 0x4
    // Checksum 0x59a7b053, Offset: 0x9570
    // Size: 0xac
    function private function_d530ce5a() {
        player = self;
        assert(isplayer(player));
        if (is_true(level.var_47df5f11)) {
            statemachine = player function_1bb19090();
            println("<unknown string>" + statemachine.current_state.name);
        }
    }

#/
