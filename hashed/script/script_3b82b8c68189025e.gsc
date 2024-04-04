// Atian COD Tools GSC CW decompiler test
#using script_32399001bdb550da;
#using script_3dc93ca9902a9cda;
#using scripts\cp_common\bb.gsc;
#using script_4937c6974f43bb71;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using script_7d0013bbc05623b9;
#using script_35ae72be7b4fec10;
#using scripts\cp_common\objectives.gsc;
#using scripts\cp_common\dialogue.gsc;
#using scripts\cp_common\util.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace dialog_tree;

// Namespace dialog_tree/dialog_tree
// Params 0, eflags: 0x5
// Checksum 0x29b09891, Offset: 0x4a0
// Size: 0x34
function private autoexec __init__system__() {
    system::register("dialog_tree", &preinit, undefined, undefined, undefined);
}

// Namespace dialog_tree/dialog_tree
// Params 0, eflags: 0x6 linked
// Checksum 0xb7e97996, Offset: 0x4e0
// Size: 0x164
function private preinit() {
    clientfield::register("toplayer", "dt_set_fov", 1, 3, "int");
    clientfield::register("toplayer", "dt_set_dof", 1, 3, "int");
    clientfield::register("toplayer", "dt_set_hide_reticle_dot", 1, 1, "int");
    level.var_fb0a6829 = [];
    level.var_fb0a6829[#"default"] = 1;
    level.var_fb0a6829[#"hash_2e64a3fb2ff83fc4"] = 2;
    level.var_fb0a6829[#"zoom"] = 3;
    level.var_fb0a6829[#"more_zoom"] = 4;
    level.var_fb0a6829[#"extreme_zoom"] = 5;
    level.var_22817c8a[#"none"] = 1;
    level.var_22817c8a[#"close"] = 2;
    level.var_22817c8a[#"medium"] = 3;
}

// Namespace dialog_tree/dialog_tree
// Params 8, eflags: 0x2 linked
// Checksum 0x125192b7, Offset: 0x650
// Size: 0x1fa
function function_82b16606(enter_func = undefined, exit_func = undefined, allow_movement = 0, allow_weapon = 0, script_bundle, var_4d84ed71 = 1, timeout = 0, skippable = 1) {
    if (!isdefined(level.var_d5314f55)) {
        level.var_d5314f55 = [];
    }
    var_5bc64970 = spawnstruct();
    var_5bc64970.var_f5af9940 = 0;
    var_5bc64970.player_pos = [];
    var_5bc64970.enter_func = enter_func;
    var_5bc64970.exit_func = exit_func;
    var_5bc64970.allow_movement = allow_movement;
    var_5bc64970.allow_weapon = allow_weapon;
    var_5bc64970.var_4d84ed71 = var_4d84ed71;
    var_5bc64970.timeout = timeout;
    var_5bc64970.skippable = skippable;
    var_5bc64970.options = [];
    var_5bc64970.position = array(1224, 650);
    var_5bc64970.state_index = 0;
    var_5bc64970.var_6755136a = 0;
    var_5bc64970.var_6c2428f4 = #"hash_23c2f3c5f7013d69";
    var_5bc64970 set_scriptbundle(script_bundle);
    var_ed170ba3 = level.var_d5314f55.size;
    level.var_d5314f55[var_ed170ba3] = var_5bc64970;
    var_5bc64970.var_ec3cbc15 = 0;
    return var_5bc64970;
}

// Namespace dialog_tree/dialog_tree
// Params 1, eflags: 0x2 linked
// Checksum 0x80b628a, Offset: 0x858
// Size: 0x1a
function set_scriptbundle(bundle) {
    self.scriptbundle = bundle;
}

// Namespace dialog_tree/dialog_tree
// Params 10, eflags: 0x2 linked
// Checksum 0x67841b15, Offset: 0x880
// Size: 0x112
function function_58d27b23(var_394cd6af, var_cfef5030 = undefined, ai_anim = undefined, var_a0ee58ce = undefined, end_dialog = 0, set_flag = undefined, var_a16c9b3f = undefined, var_3fa65bba = undefined, var_d3d10c6d, var_a1a8b237 = undefined) {
    option = function_98927b7b(undefined, var_394cd6af, var_cfef5030, ai_anim, var_a0ee58ce, end_dialog, set_flag, var_a16c9b3f, undefined, var_3fa65bba, var_d3d10c6d, var_a1a8b237);
    return self function_d602cdd7(option);
}

// Namespace dialog_tree/dialog_tree
// Params 11, eflags: 0x2 linked
// Checksum 0xed629975, Offset: 0x9a0
// Size: 0xb2
function function_6bbbf87(var_9ddc06f5, var_394cd6af, var_cfef5030, ai_anim, var_a0ee58ce, end_dialog, set_flag, var_a16c9b3f, var_3fa65bba, var_d3d10c6d, var_a1a8b237 = undefined) {
    option = function_98927b7b(undefined, var_394cd6af, var_cfef5030, ai_anim, var_a0ee58ce, end_dialog, set_flag, var_a16c9b3f, var_9ddc06f5, var_3fa65bba, var_d3d10c6d, var_a1a8b237);
    return self function_d602cdd7(option);
}

// Namespace dialog_tree/dialog_tree
// Params 13, eflags: 0x2 linked
// Checksum 0x1a5b1c53, Offset: 0xa60
// Size: 0xe2
function function_7fe78745(var_84fa2307, var_c275310d, reset = 1, var_394cd6af, var_cfef5030, ai_anim, var_a0ee58ce, end_dialog, set_flag, var_a16c9b3f, var_3fa65bba, var_d3d10c6d, var_a1a8b237 = undefined) {
    option = function_98927b7b(undefined, var_394cd6af, var_cfef5030, ai_anim, var_a0ee58ce, end_dialog, set_flag, var_a16c9b3f, undefined, var_3fa65bba, var_d3d10c6d, var_a1a8b237, 0, var_84fa2307, var_c275310d, reset);
    return self function_d602cdd7(option);
}

// Namespace dialog_tree/dialog_tree
// Params 10, eflags: 0x2 linked
// Checksum 0x742cd31e, Offset: 0xb50
// Size: 0xda
function function_9e36808(var_394cd6af, var_cfef5030, ai_anim, var_a0ee58ce, end_dialog, set_flag, var_a16c9b3f, var_3fa65bba, var_d3d10c6d, var_a1a8b237 = undefined) {
    var_1307f204 = self.options.size - 1;
    option = function_98927b7b(var_1307f204, var_394cd6af, var_cfef5030, ai_anim, var_a0ee58ce, end_dialog, set_flag, var_a16c9b3f, undefined, var_3fa65bba, var_d3d10c6d, var_a1a8b237);
    option.active = 0;
    return self function_d602cdd7(option);
}

// Namespace dialog_tree/dialog_tree
// Params 11, eflags: 0x2 linked
// Checksum 0x8f7f542c, Offset: 0xc38
// Size: 0xc2
function function_ad98a815(var_1307f204, var_394cd6af, var_cfef5030, ai_anim, var_a0ee58ce, end_dialog, set_flag, var_a16c9b3f, var_3fa65bba, var_d3d10c6d, var_a1a8b237 = undefined) {
    option = function_98927b7b(var_1307f204, var_394cd6af, var_cfef5030, ai_anim, var_a0ee58ce, end_dialog, set_flag, var_a16c9b3f, undefined, var_3fa65bba, var_d3d10c6d, var_a1a8b237);
    option.active = 0;
    return self function_d602cdd7(option);
}

// Namespace dialog_tree/dialog_tree
// Params 11, eflags: 0x0
// Checksum 0x13ee37b3, Offset: 0xd08
// Size: 0xe2
function function_f5d1891(var_9ddc06f5, var_394cd6af, var_cfef5030, ai_anim, var_a0ee58ce, end_dialog, set_flag, var_a16c9b3f, var_3fa65bba, var_d3d10c6d, var_a1a8b237 = undefined) {
    var_1307f204 = self.options.size - 1;
    option = function_98927b7b(var_1307f204, var_394cd6af, var_cfef5030, ai_anim, var_a0ee58ce, end_dialog, set_flag, var_a16c9b3f, var_9ddc06f5, var_3fa65bba, var_d3d10c6d, var_a1a8b237);
    option.active = 0;
    return self function_d602cdd7(option);
}

// Namespace dialog_tree/dialog_tree
// Params 12, eflags: 0x0
// Checksum 0x5109fe73, Offset: 0xdf8
// Size: 0xca
function function_da884b08(var_1307f204, var_9ddc06f5, var_394cd6af, var_cfef5030, ai_anim, var_a0ee58ce, end_dialog, set_flag, var_a16c9b3f, var_3fa65bba, var_d3d10c6d, var_a1a8b237 = undefined) {
    option = function_98927b7b(var_1307f204, var_394cd6af, var_cfef5030, ai_anim, var_a0ee58ce, end_dialog, set_flag, var_a16c9b3f, var_9ddc06f5, var_3fa65bba, var_d3d10c6d, var_a1a8b237);
    option.active = 0;
    return self function_d602cdd7(option);
}

// Namespace dialog_tree/dialog_tree
// Params 2, eflags: 0x2 linked
// Checksum 0x333e11e7, Offset: 0xed0
// Size: 0x56
function function_6cbfa3d2(var_e728c53 = self.options.size - 1, end_dialog = 1) {
    self.options[var_e728c53].end_dialog = end_dialog;
}

// Namespace dialog_tree/dialog_tree
// Params 1, eflags: 0x0
// Checksum 0x2ab8e6a9, Offset: 0xf30
// Size: 0x42
function function_6ebd37a4(var_e728c53 = self.options.size - 1) {
    self.options[var_e728c53].important = 1;
}

// Namespace dialog_tree/dialog_tree
// Params 1, eflags: 0x0
// Checksum 0xbbebe300, Offset: 0xf80
// Size: 0x42
function function_bc7c03bf(var_e728c53 = self.options.size - 1) {
    self.options[var_e728c53].var_5741b81f = 1;
}

// Namespace dialog_tree/dialog_tree
// Params 5, eflags: 0x2 linked
// Checksum 0xb6941ff5, Offset: 0xfd0
// Size: 0x25e
function function_46f25b65(var_e728c53 = self.options.size - 1, var_a5bdf9c0 = 0, var_cfd168ce = "loop", var_2f04fa05 = 1, anims = 1) {
    self.options[var_e728c53].var_cfd168ce = var_cfd168ce;
    if (var_2f04fa05) {
        if (isdefined(self.options[var_e728c53].var_f8340c5b)) {
            if (!isarray(self.options[var_e728c53].var_f8340c5b)) {
                self.options[var_e728c53].var_f8340c5b = [self.options[var_e728c53].var_f8340c5b];
            }
            if (var_a5bdf9c0) {
                self.options[var_e728c53].var_529974ff = randomint(self.options[var_e728c53].var_f8340c5b.size);
            } else {
                self.options[var_e728c53].var_529974ff = 0;
            }
        }
    }
    if (anims) {
        if (isdefined(self.options[var_e728c53].var_25b61283)) {
            if (!isarray(self.options[var_e728c53].var_25b61283)) {
                self.options[var_e728c53].var_25b61283 = [self.options[var_e728c53].var_25b61283];
            }
            if (var_a5bdf9c0) {
                self.options[var_e728c53].var_e05c8121 = randomint(self.options[var_e728c53].var_25b61283.size);
                return;
            }
            self.options[var_e728c53].var_e05c8121 = 0;
        }
    }
}

// Namespace dialog_tree/dialog_tree
// Params 2, eflags: 0x0
// Checksum 0x92af4c7a, Offset: 0x1238
// Size: 0x5e
function function_a3a3ea7d(message, var_b5df2c8b) {
    self.var_6755136a = 1;
    if (isdefined(message)) {
        self.var_6c2428f4 = message;
    }
    if (isdefined(var_b5df2c8b)) {
        level flag::wait_till(var_b5df2c8b);
        self.var_6755136a = 0;
    }
}

// Namespace dialog_tree/dialog_tree
// Params 0, eflags: 0x0
// Checksum 0x858307b6, Offset: 0x12a0
// Size: 0xe
function function_b32b7f64() {
    self.var_6755136a = 0;
}

// Namespace dialog_tree/dialog_tree
// Params 2, eflags: 0x2 linked
// Checksum 0xd164f7e9, Offset: 0x12b8
// Size: 0x9a
function function_21780fc5(dialog_tree, var_a9b0cfdc) {
    assert(isdefined(dialog_tree) && isarray(var_a9b0cfdc) && isint(var_a9b0cfdc[0]) && isint(var_a9b0cfdc[1]), "<unknown string>");
    dialog_tree.position = var_a9b0cfdc;
}

// Namespace dialog_tree/dialog_tree
// Params 1, eflags: 0x2 linked
// Checksum 0x4ecff83c, Offset: 0x1360
// Size: 0x1a
function function_6bb91351(state_index) {
    self.state_index = state_index;
}

// Namespace dialog_tree/dialog_tree
// Params 10, eflags: 0x0
// Checksum 0x41171ec4, Offset: 0x1388
// Size: 0x160
function function_b82713b8(var_348c0b50, var_f2aae3f7, var_dfe2a95d, var_60a7aecc, stance = "stand", fov = "zoom", dof = "medium", lerptime = 2, var_6549d3f9, var_aefbf05f) {
    new_pos = spawnstruct();
    new_pos.var_348c0b50 = var_348c0b50;
    new_pos.var_f2aae3f7 = var_f2aae3f7;
    new_pos.var_9d5a3b8f = var_dfe2a95d;
    new_pos.var_60a7aecc = var_60a7aecc;
    new_pos.stance = stance;
    new_pos.origin = var_348c0b50.origin;
    new_pos.fov = fov;
    new_pos.dof = dof;
    new_pos.lerptime = lerptime;
    new_pos.var_6549d3f9 = var_6549d3f9;
    new_pos.var_aefbf05f = var_aefbf05f;
    self.player_pos[self.player_pos.size] = new_pos;
}

// Namespace dialog_tree/dialog_tree
// Params 3, eflags: 0x6 linked
// Checksum 0xf63b688c, Offset: 0x14f0
// Size: 0x17a
function private function_decf2123(var_8b3554e5, var_16f87bfa, var_66a25c9b) {
    var_3e4ad1c8 = var_8b3554e5;
    var_8b3554e5++;
    if (var_8b3554e5 >= var_16f87bfa) {
        var_8b3554e5 = 0;
        switch (var_66a25c9b) {
        case #"hash_c8920743575bcda":
            var_8b3554e5 = 1;
            break;
        case #"hash_586e0a0830a2eaaf":
            var_8b3554e5 = var_3e4ad1c8;
            break;
        case #"randomize":
            var_8b3554e5 = randomint(var_16f87bfa);
            break;
        case #"randomize_skip_first":
            var_8b3554e5 = randomint(var_16f87bfa - 1) + 1;
            break;
        }
        if (var_66a25c9b == "randomize" || var_66a25c9b == "randomize_skip_first") {
            var_b1846b51 = 0;
            if (var_66a25c9b == "randomize_skip_first") {
                var_b1846b51 = 1;
            }
            if (var_8b3554e5 == var_3e4ad1c8) {
                var_8b3554e5++;
                if (var_8b3554e5 >= var_16f87bfa) {
                    var_8b3554e5 = var_b1846b51;
                }
            }
        }
        var_8b3554e5 = math::clamp(var_8b3554e5, 0, var_16f87bfa - 1);
    }
    return var_8b3554e5;
}

// Namespace dialog_tree/dialog_tree
// Params 2, eflags: 0x6 linked
// Checksum 0x8bdf5f66, Offset: 0x1678
// Size: 0x6e4
function private function_a92530c0(var_34b21e8e, anim_struct) {
    player = self.activator;
    if (isdefined(self.player_pos) && self.player_pos.size > 0) {
        foreach (pos in self.player_pos) {
            /#
            #/
            if (!isdefined(pos.var_348c0b50)) {
                ai_pos = struct::spawn();
                ai_pos.origin = var_34b21e8e.origin;
                ai_pos.angles = var_34b21e8e.angles;
                if (isdefined(pos.var_f2aae3f7)) {
                    var_7f0ec05a = function_b8031554(var_34b21e8e, anim_struct, self.scriptbundle, pos.var_f2aae3f7);
                    if (isdefined(var_7f0ec05a)) {
                        ai_pos = var_7f0ec05a;
                    }
                }
                pos.var_348c0b50 = struct::spawn(ai_pos.origin + anglestoforward(ai_pos.angles) * 56 + anglestoright(ai_pos.angles) * -10, ai_pos.angles + (0, 180, 0));
                pos.origin = pos.var_348c0b50.origin;
            }
        }
        var_bb76606c = arraygetclosest(player.origin, self.player_pos);
        self.var_c7af782 = var_bb76606c;
        /#
        #/
        if (isdefined(var_bb76606c.stance)) {
            switch (var_bb76606c.stance) {
            case #"stand":
                self.activator val::set(#"dialog_tree", "allow_crouch", 0);
                self.activator val::set(#"dialog_tree", "allow_prone", 0);
                self.activator val::set(#"dialog_tree", "allow_stand", 1);
                break;
            case #"crouch":
                self.activator val::set(#"dialog_tree", "allow_crouch", 1);
                self.activator val::set(#"dialog_tree", "allow_prone", 0);
                self.activator val::set(#"dialog_tree", "allow_stand", 0);
                break;
            case #"prone":
                self.activator val::set(#"dialog_tree", "allow_crouch", 0);
                self.activator val::set(#"dialog_tree", "allow_prone", 1);
                self.activator val::set(#"dialog_tree", "allow_stand", 0);
                break;
            }
            player setstance(var_bb76606c.stance);
        }
        self.activator val::set(#"dialog_tree", "allow_movement", 0);
        self.activator ghost();
        self.var_bc205c58 = player util::spawn_model("tag_origin", var_bb76606c.var_348c0b50.origin, var_bb76606c.var_348c0b50.angles);
        self.var_bc205c58 dontinterpolate();
        if (isdefined(var_bb76606c.fov) && isdefined(level.var_fb0a6829[var_bb76606c.fov])) {
            player thread clientfield::set_to_player("dt_set_fov", level.var_fb0a6829[var_bb76606c.fov]);
        }
        if (isdefined(var_bb76606c.dof) && isdefined(level.var_22817c8a[var_bb76606c.dof])) {
            player thread clientfield::set_to_player("dt_set_dof", level.var_22817c8a[var_bb76606c.dof]);
        }
        if (isai(var_34b21e8e)) {
            var_34b21e8e thread ai::look_at(player);
        }
        var_39f18b85 = self.var_bc205c58 gettagorigin("tag_origin");
        if (var_39f18b85 == (0, 0, 0) || distance(player.origin, var_39f18b85) > 256) {
            player show();
        } else {
            player playerlinktoblend(self.var_bc205c58, "tag_origin", 2, 0.4, 0.4);
            self thread function_edd56700(player);
        }
        self function_2ae0f2f5(var_34b21e8e, anim_struct, var_bb76606c);
    }
}

// Namespace dialog_tree/dialog_tree
// Params 1, eflags: 0x6 linked
// Checksum 0xb38c11e2, Offset: 0x1d68
// Size: 0xc4
function private function_edd56700(player) {
    wait(2);
    if (!self.allow_movement) {
        player playerlinktodelta(self.var_bc205c58, "tag_origin", 1, 10, 10, 5, 5, 1, 1);
    } else {
        player unlink();
        self.var_bc205c58 = undefined;
        self.activator val::reset(#"dialog_tree", "allow_movement");
    }
    player show();
}

// Namespace dialog_tree/dialog_tree
// Params 4, eflags: 0x2 linked
// Checksum 0x6cc06ab7, Offset: 0x1e38
// Size: 0x1aa
function function_b8031554(var_34b21e8e, *struct, scene, shot) {
    if (isdefined(struct) && isdefined(scene) && isdefined(shot)) {
        var_96866f7f = util::spawn_anim_model(struct.model, struct.origin, struct.angles);
        var_96866f7f.animname = struct.animname;
        var_96866f7f.targetname = struct.targetname;
        var_96866f7f makefakeai();
        var_96866f7f hide();
        var_96866f7f scene::play_from_time(scene, shot, [var_96866f7f], 1, 1, 1);
        var_96866f7f dontinterpolate();
        wait(0.05);
        var_5939f953 = struct::spawn();
        var_5939f953.origin = var_96866f7f.origin;
        var_5939f953.angles = var_96866f7f gettagangles("tag_origin");
        var_5939f953.var_38d4ed7 = var_96866f7f gettagorigin("j_head");
        var_96866f7f delete();
        return var_5939f953;
    }
    return undefined;
}

// Namespace dialog_tree/dialog_tree
// Params 3, eflags: 0x6 linked
// Checksum 0xec537548, Offset: 0x1ff0
// Size: 0xec
function private function_2ae0f2f5(var_34b21e8e, struct, player_pos) {
    bundle = self.scriptbundle;
    if (isdefined(player_pos.var_7318f7f0)) {
        bundle = player_pos.var_7318f7f0;
    }
    if (isdefined(player_pos.var_aefbf05f)) {
        struct = player_pos.var_aefbf05f;
    }
    if (isdefined(bundle)) {
        if (isdefined(player_pos.var_f2aae3f7)) {
            struct scene::play(bundle, player_pos.var_f2aae3f7, [var_34b21e8e]);
        }
        if (isdefined(player_pos.var_9d5a3b8f)) {
            struct thread scene::play(bundle, player_pos.var_9d5a3b8f, [var_34b21e8e]);
        }
    }
}

// Namespace dialog_tree/dialog_tree
// Params 3, eflags: 0x6 linked
// Checksum 0x61dea120, Offset: 0x20e8
// Size: 0x16c
function private function_86a1bed2(var_34b21e8e, struct, player_pos) {
    if (isdefined(player_pos)) {
        bundle = self.scriptbundle;
        if (isai(var_34b21e8e)) {
            var_34b21e8e thread ai::look_at(undefined);
            var_34b21e8e lookatentity();
        }
        if (isdefined(player_pos.fov)) {
            self.activator thread clientfield::set_to_player("dt_set_fov", 1);
        }
        if (isdefined(player_pos.dof)) {
            self.activator thread clientfield::set_to_player("dt_set_dof", 1);
        }
        if (isdefined(player_pos.var_7318f7f0)) {
            bundle = player_pos.var_7318f7f0;
        }
        if (isdefined(player_pos.var_aefbf05f)) {
            struct = player_pos.var_aefbf05f;
        }
        if (isdefined(bundle)) {
            if (isdefined(player_pos.var_60a7aecc)) {
                struct scene::play(bundle, player_pos.var_60a7aecc, [var_34b21e8e]);
            }
        }
    }
}

// Namespace dialog_tree/dialog_tree
// Params 9, eflags: 0x2 linked
// Checksum 0x2b85c9a5, Offset: 0x2260
// Size: 0x29e
function function_cfa96cee(dialog_tree, anim_struct, timer, var_b98e33f = "dialog_wait_cancel", var_9897a186 = 80, var_a4b4cae2 = 200, var_7f8e2bfe = 0, use_offset = (6, 0, 0), var_5bab29d8 = 0) {
    if (isdefined(self) && isai(self) && !isalive(self)) {
        println("<unknown string>" + self.name + "<unknown string>");
        return;
    }
    self.radius = 2.5;
    if (self haspart("j_spine4")) {
        tagname = "j_spine4";
    } else {
        tagname = undefined;
    }
    var_c93a00f2 = #"hash_1e07715d6a5dfbe0";
    self util::create_cursor_hint(tagname, use_offset, var_c93a00f2, var_9897a186, undefined, undefined, undefined, var_a4b4cae2, var_7f8e2bfe);
    self prompts::function_92127496(1);
    self prompts::function_1a5e1da6(#"use", 1);
    msg = self waittill(#"trigger", #"death", #"hash_15ec42f1846ef9d0", #"deleted", var_b98e33f);
    if (msg._notify == "trigger") {
        return dialog_tree run(self, anim_struct, timer, msg.activator, var_5bab29d8);
    }
    self util::remove_cursor_hint();
    return;
}

// Namespace dialog_tree/dialog_tree
// Params 7, eflags: 0x2 linked
// Checksum 0xfab586a3, Offset: 0x2508
// Size: 0x13c8
function run(var_34b21e8e, anim_struct, timer, activator, var_5bab29d8 = 0, var_cf6d95c9 = 4, var_5738c83e = 0) {
    assert(isarray(self.options));
    if (!isdefined(var_34b21e8e)) {
        var_34b21e8e = level;
    }
    self.var_34b21e8e = var_34b21e8e;
    if (isdefined(activator) && isplayer(activator)) {
        self.activator = activator;
    } else {
        self.activator = getplayers()[0];
    }
    if (!isdefined(self.activator)) {
        return -1;
    }
    self.activator endon(#"death");
    globallogic_ui::function_9ed5232e("ActorOverheadNames.0.hidden", 1);
    self.activator val::set(#"dialog_tree", "show_crosshair", 0);
    if (self.var_6755136a || !savegame::function_51c242e9(1) && !var_5bab29d8) {
        var_e9ba1503 = 3;
        self.activator util::show_hint_text(self.var_6c2428f4, 0, undefined, var_e9ba1503);
        wait(var_e9ba1503);
        return -1;
    }
    var_34b21e8e notify(#"hash_4d2471e4c1a34c74");
    if (!isdefined(var_34b21e8e.var_b905c47b)) {
        var_34b21e8e.var_b905c47b = 0;
    }
    var_34b21e8e.var_b905c47b++;
    if (!isdefined(anim_struct)) {
        anim_struct = var_34b21e8e;
    }
    if (self.skippable) {
        self thread function_27059a7f(var_34b21e8e, anim_struct);
    }
    if (var_34b21e8e.var_b905c47b <= 1) {
        level flag::set("dialog_tree_active");
        level flag::set("prompts_disabled");
        namespace_61e6d095::function_28027c42(#"dialog_tree", [#"dialog_tree", #"hint_tutorial"]);
        objectives::function_9dfb43fc();
        self.var_bc62b3ce = getdvarfloat(#"hash_6b57212fd4fcdd3a");
        setdvar(#"hash_6b57212fd4fcdd3a", 0);
        self.activator val::set(#"dialog_tree", "ignoreme", 1);
        self.activator val::set(#"dialog_tree", "takedamage", 0);
        if (isai(var_34b21e8e)) {
            if (!isdefined(var_34b21e8e.animname)) {
                var_34b21e8e.animname = "generic";
            }
            var_34b21e8e val::set(#"dialog_tree", "ignoreme", 1);
            var_34b21e8e val::set(#"dialog_tree", "takedamage", 0);
        }
        self function_a92530c0(var_34b21e8e, anim_struct);
        if (!isdefined(self.var_bc205c58) && !self.allow_movement) {
            self.var_bc205c58 = util::spawn_model("tag_origin", self.activator.origin, self.activator.angles);
            if (is_true(level.var_9c0a73b)) {
                v = level.player getplayerangles();
                var_6cc1ad8d = -1 * (v[0] - 10);
                var_a9284389 = v[0] + 10;
                self.activator playerlinktodelta(self.var_bc205c58, "tag_origin", 0, 20, 20, var_6cc1ad8d, var_a9284389, 1);
            } else {
                self.activator playerlinktodelta(self.var_bc205c58, "tag_origin", 0, 20, 20, 10, 10, 1);
            }
            self.activator setstance("stand");
            self.activator val::set(#"dialog_tree", "allow_crouch", 0);
            self.activator val::set(#"dialog_tree", "allow_prone", 0);
        }
        if (!self.allow_weapon) {
            self.activator val::set(#"dialog_tree", "disable_weapons", 1);
            self.activator val::set(#"dialog_tree", "disable_offhand_weapons", 1);
        }
        self.var_f5af9940 = 0;
    }
    var_34b21e8e function_a5440f84("_dialog_vo_playing");
    var_34b21e8e function_a5440f84("_dialog_anim_playing");
    var_34b21e8e function_a5440f84("_dialog_func_running");
    var_34b21e8e function_a5440f84("_dialog_ui_animating");
    if (isdefined(self.enter_func)) {
        var_34b21e8e [[ self.enter_func ]]();
    }
    var_34b21e8e flag::wait_till_clear("_dialog_ui_animating");
    while (var_34b21e8e.var_b905c47b > 1) {
        wait(0.1);
    }
    wait(0.5);
    end_dialog = 0;
    var_f4848d2b = -1;
    if (self.var_4d84ed71) {
        namespace_82bfe441::fade(1, "FadeFast");
    }
    function_43bca3cb(self.position, self.state_index);
    globallogic_ui::function_9ed5232e("hudItems.subtitles.noAutoHide", 1);
    if (isdefined(timer) && timer > 0) {
        self.timeout = timer;
    }
    while (!end_dialog) {
        var_d9d52a9d = self function_4a2c9dcb(var_cf6d95c9);
        if (var_d9d52a9d.size < 1) {
            end_dialog = 1;
            continue;
        }
        var_34b21e8e flag::set("_dialog_ui_animating");
        namespace_61e6d095::function_9ade1d9b(#"dialog_tree", "kbmIndexSelected", -1, 1, undefined, undefined, 1);
        var_8989140b = function_8b61aa4c(var_d9d52a9d, var_34b21e8e, var_cf6d95c9);
        if (var_8989140b == -1) {
            break;
        }
        self.var_f5af9940++;
        globallogic_ui::function_9ed5232e("hudItems.subtitles.noAutoHide", 0);
        waitframe(1);
        globallogic_ui::function_9ed5232e("hudItems.subtitles.noAutoHide", 1);
        var_34b21e8e notify(#"hash_727216e12f8e4bc0");
        level notify(#"hash_727216e12f8e4bc0");
        var_34b21e8e flag::wait_till_clear("dialog_wait_for_animation");
        var_b7751c0b = self.options[var_8989140b];
        bb::function_7977c093(self.scriptbundle, self.options[var_8989140b].var_8fece7d7, getplayers()[0]);
        if (isai(var_34b21e8e)) {
            var_34b21e8e stopsounds();
        }
        if (isdefined(var_b7751c0b.set_flag)) {
            foreach (flag in var_b7751c0b.set_flag) {
                level flag::set(flag);
            }
        }
        if (isdefined(var_b7751c0b.var_3fa65bba)) {
            var_34b21e8e flag::set("_dialog_func_running");
            var_34b21e8e childthread function_a7575efe(var_b7751c0b.var_3fa65bba, var_b7751c0b.var_d3d10c6d, var_b7751c0b.var_a1a8b237);
        }
        if (isdefined(var_b7751c0b.var_f8340c5b)) {
            var_34b21e8e flag::set("_dialog_vo_playing");
            if (var_b7751c0b.var_529974ff < 0) {
                self thread function_62d48ab(var_34b21e8e, var_b7751c0b.var_f8340c5b);
            } else {
                self thread function_62d48ab(var_34b21e8e, var_b7751c0b.var_f8340c5b[var_b7751c0b.var_529974ff]);
                var_b7751c0b.var_529974ff = function_decf2123(var_b7751c0b.var_529974ff, var_b7751c0b.var_f8340c5b.size, var_b7751c0b.var_cfd168ce);
            }
        }
        anim_struct notify(#"hash_302d410c6a09c48e");
        if (isdefined(var_b7751c0b.var_25b61283) || isdefined(var_b7751c0b.var_59ae859c)) {
            var_34b21e8e flag::set("_dialog_anim_playing");
            if (var_b7751c0b.var_e05c8121 < 0) {
                self thread function_c331410b(var_34b21e8e, var_b7751c0b.var_25b61283, var_b7751c0b.var_59ae859c, anim_struct, self.scriptbundle);
            } else {
                self thread function_c331410b(var_34b21e8e, var_b7751c0b.var_25b61283[var_b7751c0b.var_e05c8121], var_b7751c0b.var_59ae859c, anim_struct, self.scriptbundle);
                var_b7751c0b.var_e05c8121 = function_decf2123(var_b7751c0b.var_e05c8121, var_b7751c0b.var_25b61283.size, var_b7751c0b.var_cfd168ce);
            }
        }
        if (is_true(var_b7751c0b.end_dialog) || self.timeout > 0) {
            end_dialog = 1;
            var_f4848d2b = var_8989140b;
        }
        var_34b21e8e flag::wait_till_clear_all(["_dialog_func_running", "_dialog_vo_playing", "_dialog_anim_playing"]);
        if (!end_dialog) {
            var_34b21e8e flag::wait_till_clear("_dialog_ui_animating");
        }
        var_34b21e8e notify(#"hash_3d888301ef5802aa");
        if (!isdefined(var_b7751c0b.var_a16c9b3f) || var_b7751c0b.var_a16c9b3f != "forever" && level flag::get(var_b7751c0b.var_a16c9b3f)) {
            if (isdefined(self.options[var_8989140b])) {
                self.options[var_8989140b].active = 0;
            }
        }
        self function_59d38639(var_8989140b);
        waitframe(1);
        if (var_5738c83e) {
            self.var_ec3cbc15 = var_8989140b;
        }
        if (is_true(var_34b21e8e.end_dialog)) {
            var_34b21e8e.end_dialog = undefined;
            break;
        }
    }
    if (var_34b21e8e.var_b905c47b <= 1) {
        if (self.var_4d84ed71) {
            namespace_82bfe441::fade(0, "FadeFast");
        }
        if (namespace_61e6d095::exists(#"dialog_tree")) {
            namespace_61e6d095::function_73c9a490(#"dialog_tree", 0);
            namespace_61e6d095::remove(#"dialog_tree");
        }
        namespace_61e6d095::function_4279fd02(#"dialog_tree");
        objectives::function_4279fd02();
        globallogic_ui::function_9ed5232e("ActorOverheadNames.0.hidden", 0);
        self.activator val::reset(#"dialog_tree", "show_crosshair");
        self.activator clientfield::set_to_player("dt_set_hide_reticle_dot", 0);
        if (isdefined(self.var_c7af782)) {
            self thread function_86a1bed2(var_34b21e8e, anim_struct, self.var_c7af782);
            self.var_c7af782 = undefined;
        }
    }
    if (isdefined(self.exit_func)) {
        var_34b21e8e childthread [[ self.exit_func ]]();
    }
    if (var_34b21e8e.var_b905c47b <= 1) {
        if (isdefined(self.var_bc62b3ce)) {
            setdvar(#"hash_6b57212fd4fcdd3a", self.var_bc62b3ce);
        }
        if (!self.allow_movement) {
            self.activator unlink();
            if (isdefined(self.var_bc205c58)) {
                self.var_bc205c58 delete();
                self.var_bc205c58 = undefined;
            }
            self.activator val::reset(#"dialog_tree", "allow_crouch");
            self.activator val::reset(#"dialog_tree", "allow_prone");
            self.activator val::reset(#"dialog_tree", "allow_stand");
            self.activator val::reset(#"dialog_tree", "allow_movement");
        }
        if (!self.allow_weapon) {
            self.activator val::reset(#"dialog_tree", "disable_weapons");
            self.activator val::reset(#"dialog_tree", "disable_offhand_weapons");
        }
        var_34b21e8e flag::clear("_dialog_vo_playing");
        var_34b21e8e flag::clear("_dialog_anim_playing");
        var_34b21e8e flag::clear("_dialog_func_running");
        self.activator val::reset(#"dialog_tree", "ignoreme");
        self.activator val::reset(#"dialog_tree", "takedamage");
        waitframe(1);
        if (isai(var_34b21e8e)) {
            var_34b21e8e val::reset(#"dialog_tree", "ignoreme");
            var_34b21e8e val::reset(#"dialog_tree", "takedamage");
        }
        self notify(#"dialog_tree_end");
        var_34b21e8e notify(#"dialog_tree_end");
        self.activator notify(#"dialog_tree_end");
        globallogic_ui::function_9ed5232e("hudItems.subtitles.noAutoHide", 0);
        level flag::clear("dialog_tree_active");
        level flag::clear("prompts_disabled");
    }
    var_34b21e8e.var_b905c47b--;
    while (var_34b21e8e.var_b905c47b > 0) {
        wait(0.1);
    }
    return var_f4848d2b;
}

// Namespace dialog_tree/dialog_tree
// Params 0, eflags: 0x0
// Checksum 0xfecacd3d, Offset: 0x38d8
// Size: 0x9c
function function_bfcc8f29() {
    if (self.var_4d84ed71) {
        namespace_82bfe441::fade(0, "FadeFast");
    }
    namespace_61e6d095::function_73c9a490(#"dialog_tree", 0);
    namespace_61e6d095::remove(#"dialog_tree");
    namespace_61e6d095::function_4279fd02(#"dialog_tree");
    objectives::function_4279fd02();
}

// Namespace dialog_tree/dialog_tree
// Params 0, eflags: 0x2 linked
// Checksum 0xa64a5b96, Offset: 0x3980
// Size: 0x2c
function function_6a2674b8() {
    var_8447108b = self function_4a2c9dcb();
    return var_8447108b.size;
}

// Namespace dialog_tree/dialog_tree
// Params 0, eflags: 0x0
// Checksum 0xec78f232, Offset: 0x39b8
// Size: 0x58
function function_a6a75a20() {
    self.var_34b21e8e flag::wait_till("waiting_on_player_choice");
    waitframe(1);
    level notify(#"dialog_tree_option_selected", {#var_70b35161:-1});
}

// Namespace dialog_tree/dialog_tree
// Params 2, eflags: 0x6 linked
// Checksum 0x8ae744aa, Offset: 0x3a18
// Size: 0x284
function private function_27059a7f(var_34b21e8e, anim_struct) {
    self.activator endon(#"death");
    self endon(#"dialog_tree_end");
    level notify(#"watch_dt_skips");
    level endon(#"watch_dt_skips");
    while (true) {
        self.activator namespace_61e6d095::function_b0bad5ff("dialog_tree_end", "watch_dt_skips");
        bb::function_7977c093(self.scriptbundle, #"hash_3c27402259e4c18e", getplayers()[0]);
        if (var_34b21e8e flag::get("_dialog_vo_playing")) {
            if (isdefined(var_34b21e8e.var_e744d1aa)) {
                if (isai(var_34b21e8e)) {
                    var_34b21e8e dialogue::function_47b06180();
                } else {
                    snd::stop(var_34b21e8e.var_e744d1aa);
                }
                var_34b21e8e.var_e744d1aa = undefined;
                var_34b21e8e notify(#"cancel speaking");
            }
        }
        if (var_34b21e8e flag::get("_dialog_anim_playing") && isdefined(var_34b21e8e._scene_object)) {
            var_45c1f22c = self function_58881e72(self.scriptbundle, var_34b21e8e._scene_object._str_shot, anim_struct);
            if (var_45c1f22c) {
                var_34b21e8e notify(#"hash_71ceced1590e6571");
                anim_struct thread scene::play_from_time(self.scriptbundle, var_34b21e8e._scene_object._str_shot, undefined, getanimlength(var_34b21e8e._scene_object._str_current_anim) - 0.25, 0, 1);
            }
        } else {
            var_34b21e8e notify(#"hash_71ceced1590e6571");
        }
        wait(0.3);
    }
}

// Namespace dialog_tree/dialog_tree
// Params 3, eflags: 0x6 linked
// Checksum 0xf72e847e, Offset: 0x3ca8
// Size: 0x564
function private function_58881e72(sb, str_shot, anim_struct) {
    a_instances = scene::get_active_scenes(sb);
    if (!isarray(a_instances)) {
        return false;
    }
    if (!isarray(a_instances[0].scene_ents)) {
        return false;
    }
    scene_ents = a_instances[0].scene_ents;
    var_4fd94186 = {#vox:"none", #scn:sb, #skipt:9999, #ent:undefined, #var_4fc15872:2.4, #var_30468601:1, #var_bd15dadd:-1};
    foreach (ent in scene_ents) {
        if (!isdefined(ent)) {
            continue;
        }
        if (isdefined(ent._scene_object._str_current_anim)) {
            if (isanimlooping(ent._scene_object._str_current_anim)) {
                continue;
            }
            if (var_4fd94186.var_bd15dadd < 0) {
                var_4fd94186.var_bd15dadd = ent getanimtime(ent._scene_object._str_current_anim);
            }
            var_45bbb227 = getanimlength(ent._scene_object._str_current_anim);
            curr_time = ent getanimtime(ent._scene_object._str_current_anim);
            if (abs(curr_time - var_4fd94186.var_bd15dadd) > 0.025) {
                /#
                    iprintln("<unknown string>" + abs(curr_time - var_4fd94186.var_bd15dadd));
                #/
                continue;
            }
            notetracks = getnotetracksindelta(ent._scene_object._str_current_anim, 0, 999);
            if (notetracks.size) {
                foreach (notetrack in notetracks) {
                    if (notetrack[5] == #"vox") {
                        ent.stop_sound = 1;
                        if (notetrack[3] > curr_time && notetrack[3] * var_45bbb227 < var_4fd94186.skipt) {
                            check_time = notetrack[3] * var_45bbb227 - 0.1;
                            if (check_time < curr_time * var_45bbb227) {
                                continue;
                            }
                            var_4fd94186.ent = ent;
                            var_4fd94186.skipt = check_time;
                            var_4fd94186.var_30468601 = check_time / var_45bbb227;
                            var_4fd94186.var_4fc15872 = notetrack[3] * var_45bbb227;
                            /#
                                var_4fd94186.vox = function_9e72a96(notetrack[6]);
                            #/
                        }
                    }
                }
            }
        }
    }
    foreach (ent in scene_ents) {
        if (is_true(ent.stop_sound)) {
            ent stopsounds();
            ent.stop_sound = undefined;
        }
    }
    if (isdefined(var_4fd94186.ent)) {
        anim_struct thread scene::play_from_time(sb, str_shot, undefined, var_4fd94186.var_30468601, 1, 1);
        return false;
    }
    return true;
}

// Namespace dialog_tree/dialog_tree
// Params 2, eflags: 0x6 linked
// Checksum 0x8fa9ca0a, Offset: 0x4218
// Size: 0x1e4
function private function_62d48ab(var_34b21e8e, var_2f04fa05) {
    var_34b21e8e endon(#"death");
    var_34b21e8e endon(#"dialog_tree_end");
    waitframe(1);
    if (!isarray(var_2f04fa05)) {
        var_2f04fa05 = [var_2f04fa05];
    }
    for (i = 0; i < var_2f04fa05.size; i++) {
        vo_line = var_2f04fa05[i];
        if (soundexists(vo_line)) {
            if (isai(var_34b21e8e)) {
                var_34b21e8e dialogue::function_47b06180();
                var_34b21e8e.var_e744d1aa = 1;
                var_34b21e8e dialogue::queue(vo_line);
            } else {
                var_34b21e8e.var_e744d1aa = snd::play(vo_line, [var_34b21e8e, "j_head"]);
                snd::function_2fdc4fb(var_34b21e8e.var_e744d1aa);
            }
            continue;
        }
        /#
            iprintlnbold(vo_line);
            self.activator waittilltimeout(1.5, #"hash_71ceced1590e6571");
        #/
    }
    var_34b21e8e notify(#"hash_48ace2900075b6e8");
    var_34b21e8e.var_e744d1aa = undefined;
    var_34b21e8e flag::clear("_dialog_vo_playing");
}

// Namespace dialog_tree/dialog_tree
// Params 1, eflags: 0x6 linked
// Checksum 0x7232ec4b, Offset: 0x4408
// Size: 0x64
function private function_d602cdd7(var_e2b4d51e) {
    assert(isarray(self.options));
    var_e728c53 = self.options.size;
    self.options[var_e728c53] = var_e2b4d51e;
    return var_e728c53;
}

// Namespace dialog_tree/dialog_tree
// Params 16, eflags: 0x6 linked
// Checksum 0x4ce63cb9, Offset: 0x4478
// Size: 0x1f6
function private function_98927b7b(parent_id, var_394cd6af, var_cfef5030, ai_anim, var_a0ee58ce, end_dialog = 0, set_flag, var_a16c9b3f, var_9ddc06f5, var_3fa65bba, var_d3d10c6d, var_a1a8b237, important = 0, var_84fa2307, var_c275310d, var_50f9a62 = 1) {
    option = spawnstruct();
    option.active = 1;
    option.parent_id = parent_id;
    option.var_8fece7d7 = var_394cd6af;
    option.var_f8340c5b = var_cfef5030;
    option.var_25b61283 = ai_anim;
    option.var_59ae859c = var_a0ee58ce;
    option.end_dialog = end_dialog;
    if (isdefined(set_flag) && !isarray(set_flag)) {
        set_flag = [set_flag];
    }
    option.set_flag = set_flag;
    option.var_a16c9b3f = var_a16c9b3f;
    option.var_9ddc06f5 = var_9ddc06f5;
    option.var_3fa65bba = var_3fa65bba;
    option.var_d3d10c6d = var_d3d10c6d;
    option.var_a1a8b237 = var_a1a8b237;
    option.important = important;
    option.var_5741b81f = 0;
    option.var_529974ff = -1;
    option.var_e05c8121 = -1;
    option.var_84fa2307 = var_84fa2307;
    option.var_c275310d = var_c275310d;
    option.var_50f9a62 = var_50f9a62;
    return option;
}

// Namespace dialog_tree/dialog_tree
// Params 2, eflags: 0x6 linked
// Checksum 0x158c5337, Offset: 0x4678
// Size: 0x152
function private function_b85d5a3a(var_d9d52a9d, var_cf6d95c9 = 4) {
    hudstrings = [];
    for (i = 0; i < var_cf6d95c9; i++) {
        if (isdefined(var_d9d52a9d[i])) {
            option = self.options[var_d9d52a9d[i]];
            var_2ebd3f57 = isdefined(option.var_9ddc06f5) && option.var_5741b81f && !level flag::get(option.var_9ddc06f5);
            hudstrings[i] = {#important:option.important, #string:option.var_8fece7d7, #locked:var_2ebd3f57};
            continue;
        }
        hudstrings[i] = {#important:0, #string:undefined, #locked:0};
    }
    return hudstrings;
}

// Namespace dialog_tree/dialog_tree
// Params 3, eflags: 0x6 linked
// Checksum 0xbeca6064, Offset: 0x47d8
// Size: 0xa4
function private function_a7575efe(func, param, var_a1a8b237) {
    self endon(#"dialog_tree_end");
    if (isdefined(var_a1a8b237)) {
        self childthread function_49048365(var_a1a8b237);
    }
    if (!isdefined(param)) {
        self [[ func ]]();
    } else {
        self [[ func ]](param);
    }
    self notify(#"hash_4501fed1970295ab");
    self flag::clear("_dialog_func_running");
}

// Namespace dialog_tree/dialog_tree
// Params 1, eflags: 0x6 linked
// Checksum 0x4ca66db6, Offset: 0x4888
// Size: 0x50
function private function_49048365(var_a1a8b237) {
    self endon(#"dialog_tree_end");
    self endon(#"hash_4501fed1970295ab");
    self waittill(#"hash_71ceced1590e6571");
    self childthread [[ var_a1a8b237 ]]();
}

// Namespace dialog_tree/dialog_tree
// Params 5, eflags: 0x6 linked
// Checksum 0x4aad74c6, Offset: 0x48e0
// Size: 0x184
function private function_c331410b(var_34b21e8e, anims, anim_loop, struct, scriptbundle) {
    self endon(#"dialog_tree_end");
    var_34b21e8e endon(#"hash_727216e12f8e4bc0");
    if (isdefined(scriptbundle) && isdefined(anims)) {
        if (!isarray(anims)) {
            anims = [anims];
        }
        self thread function_a5ba53f8(var_34b21e8e);
        for (i = 0; i < anims.size; i++) {
            self thread function_c4ae7ee0(var_34b21e8e, anims[i], struct, scriptbundle);
            self waittill(#"hash_222d1d96d3da9edb", #"hash_711653fb95598c66");
        }
    }
    var_34b21e8e notify(#"hash_12324459eb2bc76d");
    self.var_ebacf97b = undefined;
    var_34b21e8e flag::clear("_dialog_anim_playing");
    if (isdefined(scriptbundle) && isdefined(anim_loop)) {
        struct thread scene::play(scriptbundle, anim_loop, [var_34b21e8e]);
    }
}

// Namespace dialog_tree/dialog_tree
// Params 4, eflags: 0x6 linked
// Checksum 0x627df8f, Offset: 0x4a70
// Size: 0x86
function private function_c4ae7ee0(var_34b21e8e, shot_name, struct, scriptbundle) {
    self endon(#"dialog_tree_end");
    self.var_ebacf97b = shot_name;
    struct scene::play(scriptbundle, shot_name, [var_34b21e8e]);
    self notify(#"hash_222d1d96d3da9edb");
}

// Namespace dialog_tree/dialog_tree
// Params 1, eflags: 0x6 linked
// Checksum 0x1e5ad18b, Offset: 0x4b00
// Size: 0x88
function private function_a5ba53f8(var_34b21e8e) {
    self.activator endon(#"death");
    var_34b21e8e endon(#"hash_12324459eb2bc76d");
    level waittill(#"hash_3d5358602caccf41");
    var_34b21e8e flag::clear("_dialog_anim_playing");
    var_34b21e8e notify(#"hash_12324459eb2bc76d");
}

// Namespace dialog_tree/dialog_tree
// Params 1, eflags: 0x6 linked
// Checksum 0xf9edd59d, Offset: 0x4b90
// Size: 0x6c
function private function_a5440f84(flagname) {
    if (!self flag::exists(flagname)) {
        self flag::init(flagname);
        self flag::clear(flagname);
        return;
    }
    self flag::wait_till_clear(flagname);
}

// Namespace dialog_tree/dialog_tree
// Params 1, eflags: 0x6 linked
// Checksum 0x764854a3, Offset: 0x4c08
// Size: 0x244
function private function_4a2c9dcb(var_d1cccc43) {
    var_d9d52a9d = [];
    for (var_301712bf = 0; var_301712bf < self.options.size && (!isdefined(var_d1cccc43) || var_d9d52a9d.size < var_d1cccc43); var_301712bf++) {
        option = self.options[var_301712bf];
        if (isdefined(option.var_84fa2307) && option.var_84fa2307 > 0) {
            if (self.var_f5af9940 == 0 && is_true(option.var_50f9a62)) {
                self.options[var_301712bf].active = 1;
                if (isdefined(option.var_c275310d)) {
                    level flag::clear(option.var_c275310d);
                }
            }
            if (self.var_f5af9940 >= option.var_84fa2307 && option.active) {
                self.options[var_301712bf].active = 0;
                if (isdefined(option.var_c275310d)) {
                    level flag::set(option.var_c275310d);
                }
            }
        }
        if (isdefined(option.var_a16c9b3f)) {
            if (option.var_a16c9b3f != "forever" && level flag::get(option.var_a16c9b3f)) {
                self.options[var_301712bf].active = 0;
            }
        }
        if (!option.active || isdefined(option.var_9ddc06f5) && !level flag::get(option.var_9ddc06f5) && !option.var_5741b81f) {
            var_301712bf++;
            continue;
        }
        var_d9d52a9d[var_d9d52a9d.size] = var_301712bf;
    }
    return var_d9d52a9d;
}

// Namespace dialog_tree/dialog_tree
// Params 1, eflags: 0x6 linked
// Checksum 0xc5cc58b0, Offset: 0x4e58
// Size: 0xaa
function private function_59d38639(parent_id) {
    foreach (option in self.options) {
        if (isdefined(option.parent_id) && option.parent_id == parent_id) {
            option.active = 1;
        }
    }
}

// Namespace dialog_tree/dialog_tree
// Params 1, eflags: 0x6 linked
// Checksum 0xcfb1198, Offset: 0x4f10
// Size: 0x48
function private function_985e8e32(index) {
    var_4ef47508 = index + 1;
    var_51b90557 = "^S " + var_4ef47508 + " ^E";
    return var_51b90557;
}

// Namespace dialog_tree/dialog_tree
// Params 3, eflags: 0x6 linked
// Checksum 0x2d018d57, Offset: 0x4f60
// Size: 0x3cc
function private function_8b61aa4c(var_d9d52a9d, var_34b21e8e, var_cf6d95c9 = 4) {
    var_1c35d027 = function_b85d5a3a(var_d9d52a9d, var_cf6d95c9);
    index = 0;
    var_8447108b = [];
    foreach (choice in var_1c35d027) {
        if (isdefined(choice.string)) {
            namespace_61e6d095::function_f2a9266(#"dialog_tree", index, "dialogString", choice.string);
            namespace_61e6d095::function_f2a9266(#"dialog_tree", index, "important", choice.important);
            namespace_61e6d095::function_f2a9266(#"dialog_tree", index, "unImportant", choice.locked);
            namespace_61e6d095::function_f2a9266(#"dialog_tree", index, "kbmShortcut", function_985e8e32(index));
            var_8447108b[index] = choice;
            index++;
        }
    }
    namespace_61e6d095::function_9ade1d9b(#"dialog_tree", "optionSelected", 0, 1, undefined, undefined, 1);
    namespace_61e6d095::function_9ade1d9b(#"dialog_tree", "isActive", 1);
    if (isdefined(self.timeout) && self.timeout > 0) {
        waittillframeend();
        namespace_61e6d095::function_9ade1d9b(#"dialog_tree", "timeOut", self.timeout);
    }
    player = self.activator;
    assert(isplayer(player));
    var_34b21e8e flag::set("waiting_on_player_choice");
    selected = level waittill(#"dialog_tree_option_selected");
    var_34b21e8e flag::clear("waiting_on_player_choice");
    namespace_61e6d095::function_9ade1d9b(#"dialog_tree", "isActive", 0);
    if (selected.var_70b35161 < 0) {
        level thread function_310d2602(var_8447108b, var_34b21e8e, 1);
        return selected.var_70b35161;
    }
    level thread function_310d2602(var_8447108b, var_34b21e8e);
    return var_d9d52a9d[selected.var_70b35161];
}

// Namespace dialog_tree/dialog_tree
// Params 1, eflags: 0x4
// Checksum 0xbc7ea99b, Offset: 0x5338
// Size: 0x2a2
function private function_9ca575ba(var_8447108b) {
    self endon(#"death", #"dialog_tree_option_selected", #"disconnect");
    if (isdefined(var_8447108b) && isdefined(var_8447108b.size)) {
        level.waitingforresponse = 1;
        var_cf6a20f2 = -1;
        while (level.waitingforresponse) {
            var_dae97dcc = level waittill(#"dialog_tree_kbm_key_selected");
            if (var_8447108b.size > 0 && var_dae97dcc.var_70b35161 == 1) {
                var_cf6a20f2 = 0;
                level.waitingforresponse = 0;
            } else if (var_8447108b.size > 1 && var_dae97dcc.var_70b35161 == 2) {
                var_cf6a20f2 = 1;
                level.waitingforresponse = 0;
            } else if (var_8447108b.size > 2 && var_dae97dcc.var_70b35161 == 3) {
                var_cf6a20f2 = 2;
                level.waitingforresponse = 0;
            } else if (var_8447108b.size > 3 && var_dae97dcc.var_70b35161 == 4) {
                var_cf6a20f2 = 3;
                level.waitingforresponse = 0;
            }
            if (!level.waitingforresponse) {
                namespace_61e6d095::function_9ade1d9b(#"dialog_tree", "index", var_cf6a20f2, 1, undefined, undefined, 1);
                waitframe(1);
                namespace_61e6d095::function_9ade1d9b(#"dialog_tree", "kbmIndexSelected", var_cf6a20f2, 1, undefined, undefined, 1);
                waitframe(1);
                namespace_61e6d095::function_9ade1d9b(#"dialog_tree", "validateListElement", var_cf6a20f2, 1, undefined, undefined, 1);
                waitframe(1);
                level notify(#"dialog_tree_option_selected", {#var_70b35161:var_cf6a20f2});
            }
            waitframe(1);
        }
    }
}

// Namespace dialog_tree/dialog_tree
// Params 3, eflags: 0x4
// Checksum 0xa4b93fd8, Offset: 0x55e8
// Size: 0x104
function private function_cde38026(var_d27bb493, var_44b06a67, var_8447108b) {
    var_c8994f32 = var_d27bb493[0];
    var_d9161f36 = var_44b06a67[0];
    var_1e50dc81 = var_d9161f36;
    while (is_true(var_8447108b[var_1e50dc81].locked)) {
        if (var_d9161f36 < var_c8994f32) {
            var_1e50dc81--;
        } else {
            var_1e50dc81++;
        }
        if (var_1e50dc81 < 0 || var_1e50dc81 >= var_8447108b.size) {
            var_1e50dc81 = var_c8994f32;
            break;
        }
    }
    if (var_1e50dc81 != var_c8994f32) {
        namespace_61e6d095::function_9ade1d9b(#"dialog_tree", "index", var_1e50dc81, 1, undefined, undefined, 1);
    }
    return [var_1e50dc81, 0];
}

// Namespace dialog_tree/dialog_tree
// Params 3, eflags: 0x6 linked
// Checksum 0x8c2f0ab5, Offset: 0x56f8
// Size: 0xfc
function private function_310d2602(var_8447108b, var_34b21e8e, var_e2ab6781 = 0) {
    if (!var_e2ab6781) {
        namespace_61e6d095::function_9ade1d9b(#"dialog_tree", "optionSelected", 1, 1);
        wait(1.5);
    }
    if (namespace_61e6d095::exists(#"dialog_tree")) {
        for (i = var_8447108b.size - 1; i >= 0; i--) {
            namespace_61e6d095::function_7239e030(#"dialog_tree", i);
        }
    }
    var_34b21e8e flag::clear("_dialog_ui_animating");
}

// Namespace dialog_tree/dialog_tree
// Params 2, eflags: 0x6 linked
// Checksum 0xd0682850, Offset: 0x5800
// Size: 0x254
function private function_43bca3cb(position, state_index) {
    namespace_61e6d095::create(#"dialog_tree", #"hash_5ee7619b9b614d34");
    namespace_61e6d095::set_x(#"dialog_tree", position[0]);
    namespace_61e6d095::set_y(#"dialog_tree", position[1]);
    namespace_61e6d095::function_330981ed(#"dialog_tree");
    namespace_61e6d095::function_9ade1d9b(#"dialog_tree", "index", 0);
    namespace_61e6d095::function_9ade1d9b(#"dialog_tree", "timeOut", 0);
    namespace_61e6d095::function_9ade1d9b(#"dialog_tree", "stateIndex", state_index);
    namespace_61e6d095::function_9ade1d9b(#"dialog_tree", "optionSelected", 0);
    namespace_61e6d095::function_9ade1d9b(#"dialog_tree", "kbmIndexSelected", -1);
    namespace_61e6d095::function_9ade1d9b(#"dialog_tree", "isActive", 0);
    namespace_61e6d095::function_73c9a490(#"dialog_tree", 1);
    namespace_61e6d095::function_24e5fa63(#"dialog_tree", [#"ui_confirm", #"hash_3c27402259e4c18e"], 1);
    self.activator clientfield::set_to_player("dt_set_hide_reticle_dot", 1);
}

