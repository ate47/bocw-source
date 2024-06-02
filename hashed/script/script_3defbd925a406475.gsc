// Atian COD Tools GSC CW decompiler test
#using script_32f7b1a57bfeff3f;
#using script_1bf9ac5f65d7ecce;
#using script_34e087bd0f1a59b4;
#using script_76681e2a8b4ee520;
#using script_11c2c6be669b9b84;
#using script_38867f943fb86135;
#using scripts\core_common\animation_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using script_209c9c119ef6fc06;
#using scripts\core_common\lui_shared.csc;
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\easing.csc;
#using scripts\core_common\serverfield_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_fa9f53a2;

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 0, eflags: 0x2 linked
// Checksum 0x979b5bb0, Offset: 0x428
// Size: 0x444
function main() {
    clientfield::register("toplayer", "eboard_review_handle_viewmodel", 1, 2, "int", &function_8c705fab, 0, 0);
    clientfield::register("toplayer", "eboard_camera_position", 1, 5, "int", &function_75789681, 0, 0);
    clientfield::register("world", "eboard_notify_from_server", 1, 3, "int", &function_d7690f9, 0, 0);
    clientfield::register("toplayer", "set_hub_fov", 1, 9, "int", &function_bda720e2, 0, 0);
    clientfield::register("toplayer", "set_hub_dof", 1, 3, "int", &function_2b8377ef, 0, 0);
    clientfield::register("toplayer", "pstfx_t9_cp_hub_eboard_vignette", 1, 1, "int", &function_70550aed, 0, 0);
    clientfield::register("toplayer", "pstfx_t9_cp_hub_eboard_overview", 1, 1, "int", &function_de4bd542, 0, 0);
    clientfield::register("toplayer", "pstfx_teleport", 1, 3, "int", &function_abeb9b2d, 0, 0);
    clientfield::register("world", "dmg_models_and_vol_decals_burning", 1, 1, "int", &function_b79ec6c8, 0, 1);
    clientfield::register("toplayer", "set_player_pbg_bank", 1, 1, "int", &set_player_pbg_bank, 0, 0);
    clientfield::register("world", "init_notetracks_postcuba", 1, 1, "int", &function_4316ab41, 0, 0);
    clientfield::register("toplayer", "computer_terminal_switch", 1, 1, "int", &function_a1b3a24d, 0, 0);
    clientfield::register("world", "toggle_occluder", 1, 1, "int", &function_5863b8d0, 0, 0);
    clientfield::register("world", "force_stream_model", 1, 1, "int", &force_stream_model, 0, 0);
    namespace_cd80be1c::function_107f09b();
    setdvar(#"hash_373bfe7468a7b3d2", 1);
    level.var_32616828 = namespace_20a120d7::register_clientside();
}

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 7, eflags: 0x2 linked
// Checksum 0xf42bdb69, Offset: 0x878
// Size: 0x124
function function_a1b3a24d(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        function_ffe15984(fieldname);
        if (!iskeyboardconnected() && !level.var_32616828 namespace_20a120d7::is_open(fieldname)) {
            level.var_32616828 namespace_20a120d7::open(fieldname);
        }
        wait(5);
        return;
    }
    if (!iskeyboardconnected() && level.var_32616828 namespace_20a120d7::is_open(fieldname)) {
        level.var_32616828 namespace_20a120d7::close(fieldname);
    }
    function_f80646f3(fieldname);
}

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 7, eflags: 0x2 linked
// Checksum 0x73471a5b, Offset: 0x9a8
// Size: 0x222
function function_bda720e2(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    n_time = 0.5;
    var_31f0ff13 = 0.2;
    switch (bwastimejump) {
    case 1:
        self function_9298adaf(n_time);
        break;
    case 2:
        self easing::function_f95cb457(undefined, 22, var_31f0ff13, #"linear");
        break;
    case 3:
        self easing::function_f95cb457(undefined, 22, 0, #"linear");
        break;
    case 4:
        self easing::function_f95cb457(undefined, 20, n_time, #"linear");
        break;
    case 5:
        self easing::function_f95cb457(undefined, 25, n_time, #"linear");
        break;
    case 6:
        self easing::function_f95cb457(undefined, 30, n_time, #"linear");
        break;
    case 7:
        self easing::function_f95cb457(undefined, 17.2, 0, #"linear");
        break;
    }
}

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 7, eflags: 0x2 linked
// Checksum 0xe611556f, Offset: 0xbd8
// Size: 0x302
function function_2b8377ef(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    n_time = 1;
    var_31f0ff13 = 0.2;
    var_1ea96e5d = 0.5;
    switch (bwastimejump) {
    case 1:
        self function_9e574055(0);
        self function_3c54e2b8(var_31f0ff13);
        self function_9ea7b4eb(var_31f0ff13);
        self function_576abd46(0);
        break;
    case 2:
        self function_9e574055(2);
        self function_1816c600(1.5, n_time);
        self function_d7be9a9f(60, n_time);
        self function_576abd46(1);
        break;
    case 3:
        self function_9e574055(2);
        self function_1816c600(1.5, n_time);
        self function_d7be9a9f(90, n_time);
        self function_576abd46(1);
        break;
    case 4:
        self function_9e574055(2);
        self function_1816c600(1.5, var_1ea96e5d);
        self function_d7be9a9f(32, var_1ea96e5d);
        self function_576abd46(1);
        break;
    case 5:
        self function_9e574055(2);
        self function_1816c600(1.5, var_1ea96e5d);
        self function_d7be9a9f(14, var_1ea96e5d);
        self function_576abd46(1);
        break;
    }
}

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 7, eflags: 0x2 linked
// Checksum 0x6160af14, Offset: 0xee8
// Size: 0x9a
function function_d7690f9(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    switch (bwastimejump) {
    case 1:
        level notify(#"hash_7ce217c53edc8162");
        break;
    case 2:
        level notify(#"hash_3e8dc841ce47f8fd");
        break;
    }
}

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 7, eflags: 0x2 linked
// Checksum 0xa9af9f3d, Offset: 0xf90
// Size: 0xfc
function function_8c705fab(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        var_4ce74bd9 = (15, -3, 0);
        var_40779d0d = (0, 0, 0);
        namespace_a9076ee3::function_98095ab5(fieldname, var_4ce74bd9, var_40779d0d, 1, 1);
        return;
    }
    if (bwastimejump == 2) {
        var_4ce74bd9 = (15, -3, 0.5);
        var_40779d0d = (0, 0, 0);
        namespace_a9076ee3::function_98095ab5(fieldname, var_4ce74bd9, var_40779d0d, 1, 1);
        return;
    }
    namespace_a9076ee3::function_fdff8886();
}

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 7, eflags: 0x2 linked
// Checksum 0xabdd1f1, Offset: 0x1098
// Size: 0x22a
function function_75789681(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    var_a91f6be = undefined;
    var_4ef20eaa = struct::get("evidence_board_player_pos", "targetname");
    var_67367725 = var_4ef20eaa.origin;
    var_8939da60 = var_4ef20eaa.angles;
    level.var_420bb8d1 = self getcampos();
    var_a0497201 = 0.75;
    switch (bwastimejump) {
    case 28:
        break;
    case 1:
        self easing::function_b6f1c993(undefined, 5000, var_a0497201, #"linear");
        self easing::function_136edb11(undefined, 50, var_a0497201, #"linear");
        break;
    case 2:
        var_d298ff03 = self getcamangles();
        self easing::ease_camera_position(level.var_420bb8d1, var_67367725, var_a0497201, #"hash_2080bcb1cad7945c");
        self easing::ease_camera_angles((angleclamp180(var_d298ff03[0]), angleclamp180(var_d298ff03[1]), angleclamp180(var_d298ff03[2])), var_8939da60, var_a0497201, #"hash_2080bcb1cad7945c");
        break;
    }
}

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 7, eflags: 0x2 linked
// Checksum 0x788bea91, Offset: 0x12d0
// Size: 0xa4
function function_70550aed(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self postfx::playpostfxbundle("pstfx_t9_cp_hub_eboard_vignette");
        return;
    }
    if (self postfx::function_556665f2("pstfx_t9_cp_hub_eboard_vignette")) {
        self postfx::exitpostfxbundle("pstfx_t9_cp_hub_eboard_vignette");
    }
}

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 7, eflags: 0x2 linked
// Checksum 0xc2e97bd3, Offset: 0x1380
// Size: 0xa4
function function_de4bd542(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self postfx::playpostfxbundle("pstfx_t9_cp_hub_eboard_overview");
        return;
    }
    if (self postfx::function_556665f2("pstfx_t9_cp_hub_eboard_overview")) {
        self postfx::exitpostfxbundle("pstfx_t9_cp_hub_eboard_overview");
    }
}

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 7, eflags: 0x2 linked
// Checksum 0x62f77361, Offset: 0x1430
// Size: 0x54
function function_abeb9b2d(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self thread function_4902644c(bwastimejump);
}

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 1, eflags: 0x6 linked
// Checksum 0x7e74d478, Offset: 0x1490
// Size: 0x188
function private function_4902644c(newval) {
    self endon(#"death");
    self notify("22ebee5cef1e70cb");
    self endon("22ebee5cef1e70cb");
    wait(0.1);
    bundles[1] = "pstfx_t9_cp_prisoner_mkultra_transition";
    bundles[2] = "pstfx_t9_cp_prisoner_mkultra_transition_short";
    bundles[3] = "pstfx_t9_cp_prisoner_mkultra_white_transition_short";
    foreach (key, value in bundles) {
        if (newval != key && self postfx::function_556665f2(value)) {
            if (!isdefined(bundles[newval])) {
                self postfx::exitpostfxbundle(value);
            } else {
                self postfx::stoppostfxbundle(value);
            }
        }
        if (newval == key && !self postfx::function_556665f2(value)) {
            self postfx::playpostfxbundle(value);
        }
    }
}

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 7, eflags: 0x2 linked
// Checksum 0xb42933b1, Offset: 0x1620
// Size: 0x64
function function_4316ab41(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    animation::add_notetrack_func("hub_csc_utils::pstfx_eyeinject_trippiness_amount", &function_425ef8f8);
}

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 8, eflags: 0x2 linked
// Checksum 0x16d6d3b6, Offset: 0x1690
// Size: 0xcc
function function_425ef8f8(parameters, *localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self postfx::playpostfxbundle("pstfx_t9_cp_hub_mkultra_initial_inject");
    wait(0.1);
    self postfx::function_c8b5f318("pstfx_t9_cp_hub_mkultra_post_injection", "Reveal Threshold", float(bwastimejump));
    wait(0.1);
    self postfx::exitpostfxbundle("pstfx_t9_cp_hub_mkultra_initial_inject");
}

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 7, eflags: 0x2 linked
// Checksum 0xcb4ce78d, Offset: 0x1768
// Size: 0x1aa
function function_b79ec6c8(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    a_n_decals = findvolumedecalindexarray("burn_models");
    switch (bwastimejump) {
    case 0:
        foreach (n_decal in a_n_decals) {
            hidevolumedecal(n_decal);
        }
        break;
    case 1:
        foreach (n_decal in a_n_decals) {
            unhidevolumedecal(n_decal);
        }
        break;
    default:
        break;
    }
}

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 7, eflags: 0x2 linked
// Checksum 0xc2eee0a2, Offset: 0x1920
// Size: 0x84
function set_player_pbg_bank(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        setpbgactivebank(fieldname, 2);
        return;
    }
    setpbgactivebank(fieldname, 1);
}

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 7, eflags: 0x2 linked
// Checksum 0x4d2a9b3a, Offset: 0x19b0
// Size: 0xc2
function function_5863b8d0(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    switch (bwastimejump) {
    case 0:
        function_e7647ecd("hub_garage_door", 1);
        break;
    case 1:
        function_e7647ecd("hub_garage_door", 0);
        break;
    default:
        break;
    }
}

// Namespace namespace_fa9f53a2/namespace_89829bca
// Params 7, eflags: 0x2 linked
// Checksum 0x673dc7b6, Offset: 0x1a80
// Size: 0xfc
function force_stream_model(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    forcestreamxmodel(#"hash_15039b3b2f2c4e85");
    forcestreamxmodel(#"hash_35ba4c50242787e");
    forcestreamxmodel(#"hash_7dc8ab62d371da10");
    forcestreamxmodel(#"hash_28ba5edb17028c0f");
    forcestreamxmodel(#"hash_3f196e2ea622bdad");
    forcestreamxmodel(#"hash_7424c37f36535fba");
}

