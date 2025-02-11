#using script_38867f943fb86135;
#using script_434ad8f6a6f08f0;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\easing;
#using scripts\core_common\flag_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\postfx_shared;
#using scripts\core_common\serverfield_shared;
#using scripts\core_common\util_shared;
#using scripts\cp_common\util;

#namespace cp_rus_duga;

// Namespace cp_rus_duga/level_init
// Params 1, eflags: 0x20
// Checksum 0x596b85bb, Offset: 0x328
// Size: 0x124
function event_handler[level_init] main(*eventstruct) {
    setsaveddvar(#"enable_global_wind", 1);
    setsaveddvar(#"wind_global_vector", "88 0 0");
    setsaveddvar(#"wind_global_low_altitude", 0);
    setsaveddvar(#"wind_global_hi_altitude", 10000);
    setsaveddvar(#"wind_global_low_strength_percent", 100);
    init_clientfields();
    callback::on_localplayer_spawned(&onlocalplayerspawned);
    load::main();
    util::waitforclient(0);
}

// Namespace cp_rus_duga/cp_rus_duga
// Params 0, eflags: 0x0
// Checksum 0xde5f37c5, Offset: 0x458
// Size: 0x2fc
function init_clientfields() {
    clientfield::register("toplayer", "pstfx_slow_motion", 1, 1, "int", &function_91f74051, 0, 1);
    clientfield::register("toplayer", "pstfx_player_stabbed", 1, 1, "int", &function_405b4be7, 0, 1);
    clientfield::register("toplayer", "pstfx_player_executed", 1, 1, "int", &function_971c41cf, 0, 1);
    clientfield::register("toplayer", "pstfx_player_rpg_explosion", 1, 1, "int", &function_e1607d1a, 0, 1);
    clientfield::register("toplayer", "pstfx_chromatic_aberration", 1, 1, "int", &pstfx_chromatic_aberration, 0, 0);
    clientfield::register("toplayer", "clf_pstfx_burn_safehouse", 1, 1, "int", &function_3a7543ef, 0, 0);
    clientfield::register("world", "dmg_models_and_vol_decals_burning", 1, 1, "int", &function_b79ec6c8, 0, 1);
    clientfield::register("world", "dmg_setdress_rpg_ambush", 1, 1, "int", &function_1b845c2d, 0, 1);
    clientfield::register("world", "stream_intro_truck", 1, 1, "int", &stream_intro_truck, 0, 0);
    clientfield::register("toplayer", "force_stream_weapons", 1, 1, "int", &force_stream_weapons, 1, 1);
    serverfield::register("sf_jp_sku", 1, 1, "int");
}

// Namespace cp_rus_duga/cp_rus_duga
// Params 1, eflags: 0x0
// Checksum 0x9b68d3ea, Offset: 0x760
// Size: 0x8c
function onlocalplayerspawned(*localclientnum) {
    wait 2;
    if (function_91ba5040()) {
        self serverfield::set("sf_jp_sku", 1);
    }
    /#
        if (getdvarint(#"hash_17b8efdfd81acc66", 0)) {
            self serverfield::set("<dev string:x38>", 1);
        }
    #/
}

// Namespace cp_rus_duga/cp_rus_duga
// Params 7, eflags: 0x0
// Checksum 0xdd588ff1, Offset: 0x7f8
// Size: 0x84
function function_91f74051(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump > 0) {
        self postfx::playpostfxbundle("pstfx_slow_motion");
        return;
    }
    self postfx::stoppostfxbundle("pstfx_slow_motion");
}

// Namespace cp_rus_duga/cp_rus_duga
// Params 7, eflags: 0x0
// Checksum 0x2a41f71d, Offset: 0x888
// Size: 0x84
function function_405b4be7(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump > 0) {
        self postfx::playpostfxbundle("pstfx_bundle_blood_t9_cp");
        return;
    }
    self postfx::stoppostfxbundle("pstfx_bundle_blood_t9_cp");
}

// Namespace cp_rus_duga/cp_rus_duga
// Params 7, eflags: 0x0
// Checksum 0xa858d243, Offset: 0x918
// Size: 0x9c
function function_971c41cf(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump > 0) {
        self postfx::playpostfxbundle("pstfx_bundle_blood_t9_cp");
        self thread namespace_e1ccb37b::execution();
        return;
    }
    self postfx::stoppostfxbundle("pstfx_bundle_blood_t9_cp");
}

// Namespace cp_rus_duga/cp_rus_duga
// Params 7, eflags: 0x0
// Checksum 0xa6c68561, Offset: 0x9c0
// Size: 0x84
function function_e1607d1a(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump > 0) {
        self postfx::playpostfxbundle("pstfx_head_trauma");
        return;
    }
    self postfx::stoppostfxbundle("pstfx_head_trauma");
}

// Namespace cp_rus_duga/cp_rus_duga
// Params 7, eflags: 0x0
// Checksum 0x9c495876, Offset: 0xa50
// Size: 0xc4
function pstfx_chromatic_aberration(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        if (self postfx::function_556665f2("pstfx_catseye_interactive_cinematic")) {
            self postfx::stoppostfxbundle("pstfx_catseye_interactive_cinematic");
        }
        self postfx::playpostfxbundle("pstfx_catseye_interactive_cinematic");
        return;
    }
    self postfx::exitpostfxbundle("pstfx_catseye_interactive_cinematic");
}

// Namespace cp_rus_duga/cp_rus_duga
// Params 7, eflags: 0x4
// Checksum 0xfe89aa37, Offset: 0xb20
// Size: 0x9c
function private function_3a7543ef(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (self postfx::function_556665f2("pstfx_burn_safehouse")) {
        self postfx::stoppostfxbundle("pstfx_burn_safehouse");
    }
    self postfx::playpostfxbundle("pstfx_burn_safehouse");
}

// Namespace cp_rus_duga/cp_rus_duga
// Params 7, eflags: 0x0
// Checksum 0x5e09a15a, Offset: 0xbc8
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

// Namespace cp_rus_duga/cp_rus_duga
// Params 7, eflags: 0x0
// Checksum 0x743d150f, Offset: 0xd80
// Size: 0x3d2
function function_1b845c2d(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    a_n_decals = findvolumedecalindexarray("rpg_ambush_dmg_setdress");
    var_a12aeb44 = findstaticmodelindexarray("rpg_ambush_dmg_setdress");
    var_747b0bc3 = findstaticmodelindexarray("rpg_ambush_pre_setdress");
    switch (bwastimejump) {
    case 0:
        foreach (n_decal in a_n_decals) {
            hidevolumedecal(n_decal);
        }
        foreach (var_4efbb237 in var_a12aeb44) {
            hidestaticmodel(var_4efbb237);
        }
        foreach (var_4efbb237 in var_747b0bc3) {
            unhidestaticmodel(var_4efbb237);
        }
        break;
    case 1:
        foreach (n_decal in a_n_decals) {
            unhidevolumedecal(n_decal);
        }
        foreach (var_4efbb237 in var_a12aeb44) {
            unhidestaticmodel(var_4efbb237);
        }
        foreach (var_4efbb237 in var_747b0bc3) {
            hidestaticmodel(var_4efbb237);
        }
        break;
    default:
        break;
    }
}

// Namespace cp_rus_duga/cp_rus_duga
// Params 7, eflags: 0x0
// Checksum 0xd6d866a4, Offset: 0x1160
// Size: 0x7c
function stream_intro_truck(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        forcestreamxmodel("veh_t9_civ_us_truck_4x4_cp_duga");
        return;
    }
    stopforcestreamingxmodel("veh_t9_civ_us_truck_4x4_cp_duga");
}

// Namespace cp_rus_duga/cp_rus_duga
// Params 7, eflags: 0x0
// Checksum 0xea035d6e, Offset: 0x11e8
// Size: 0xd4
function force_stream_weapons(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    weapons = [];
    switch (bwasdemojump) {
    default:
        weapons[weapons.size] = getweapon(#"ar_damage_t9", "scope4x", "stalker", "fastreload", "speedgrip");
        break;
    }
    self thread util::force_stream_weapons(fieldname, weapons);
}

