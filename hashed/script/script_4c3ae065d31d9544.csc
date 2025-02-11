#using script_2c5f2d4e7aa698c4;
#using script_64ba9fcabd6381a1;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\zm_common\zm;
#using scripts\zm_common\zm_fasttravel;
#using scripts\zm_common\zm_pack_a_punch;
#using scripts\zm_common\zm_ui_inventory;
#using scripts\zm_common\zm_utility;
#using scripts\zm_common\zm_wallbuy;
#using scripts\zm_common\zm_weapons;

#namespace namespace_c4d353e7;

// Namespace namespace_c4d353e7/namespace_c4d353e7
// Params 0, eflags: 0x0
// Checksum 0xd3fba861, Offset: 0x130
// Size: 0xc4
function init() {
    clientfield::register("world", "" + #"hide_scene_models", 1, getminbitcountfornum(2), "int", &hide_scene_models, 0, 0);
    clientfield::register("world", "" + #"hash_763dd8035e80f7c", 1, 1, "int", &function_44dc8dc9, 0, 0);
}

// Namespace namespace_c4d353e7/namespace_c4d353e7
// Params 7, eflags: 0x0
// Checksum 0x515f7c71, Offset: 0x200
// Size: 0x238
function hide_scene_models(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    var_94a3aa7c = findstaticmodelindexarray("hide_scene_models");
    var_fc98dc98 = findstaticmodelindexarray("hide_mid_scene_models");
    var_ab243151 = arraycombine(var_94a3aa7c, var_fc98dc98);
    if (bwastimejump == 1) {
        foreach (n_index in var_ab243151) {
            hidestaticmodel(n_index);
        }
        return;
    }
    if (bwastimejump == 2) {
        foreach (n_index in var_fc98dc98) {
            unhidestaticmodel(n_index);
        }
        return;
    }
    foreach (n_index in var_ab243151) {
        unhidestaticmodel(n_index);
    }
}

// Namespace namespace_c4d353e7/namespace_c4d353e7
// Params 7, eflags: 0x0
// Checksum 0x9c5a267c, Offset: 0x440
// Size: 0xcc
function function_44dc8dc9(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (!function_148ccc79(fieldname, #"hash_5e358762e4678906")) {
            function_a837926b(fieldname, #"hash_5e358762e4678906");
        }
        return;
    }
    if (function_148ccc79(fieldname, #"hash_5e358762e4678906")) {
        codestoppostfxbundlelocal(fieldname, #"hash_5e358762e4678906");
    }
}

