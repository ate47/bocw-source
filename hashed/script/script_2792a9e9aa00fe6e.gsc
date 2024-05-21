// Atian COD Tools GSC CW decompiler test
#using script_24f8d3e335c86c5a;
#using script_1f60f29863707208;
#using scripts\zm\zm_platinum_ww_quest.csc;
#using script_14b99732aeac3ca6;
#using script_3dcf1dc8f679581e;
#using script_5cd3f24eb1709844;
#using script_3a266261121385ee;
#using script_433016448b3d07bc;
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

#namespace namespace_54685ebd;

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 0, eflags: 0x2 linked
// Checksum 0x3c9157a0, Offset: 0x178
// Size: 0x10c
function init() {
    clientfield::register("world", "" + #"hash_1c39840b9d4a1796", 24000, 1, "int", &function_1eabdf8e, 0, 0);
    clientfield::register("world", "" + #"hash_9472de3e8d1f6e1", 24000, 1, "int", &function_3bb686a9, 0, 0);
    clientfield::register("world", "" + #"hash_6f9aa7ac9543a791", 24000, 1, "int", &function_d3e5f256, 0, 0);
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 7, eflags: 0x2 linked
// Checksum 0x55cf6b33, Offset: 0x290
// Size: 0xfe
function function_1eabdf8e(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        var_f5c1bd65 = struct::get("fuse_box_loc", "targetname");
        level.var_bb84f715 = playfx(fieldname, #"hash_3b9fd592c82308fa", var_f5c1bd65.origin, anglestoforward(var_f5c1bd65.angles), (0, 0, 1));
        return;
    }
    if (isdefined(level.var_bb84f715)) {
        stopfx(fieldname, level.var_bb84f715);
        level.var_bb84f715 = undefined;
    }
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 7, eflags: 0x2 linked
// Checksum 0x4686ec6c, Offset: 0x398
// Size: 0x126
function function_3bb686a9(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        var_c2e428e = struct::get("switch_spark_loc", "targetname");
        level.var_c76e5c41 = playfx(fieldname, #"hash_179a76b8d709e8bb", var_c2e428e.origin, anglestoforward(var_c2e428e.angles), (0, 0, 1));
        playsound(fieldname, #"hash_487cbd8d6e939533", var_c2e428e.origin);
        return;
    }
    if (isdefined(level.var_c76e5c41)) {
        stopfx(fieldname, level.var_c76e5c41);
        level.var_c76e5c41 = undefined;
    }
}

// Namespace namespace_54685ebd/namespace_54685ebd
// Params 7, eflags: 0x2 linked
// Checksum 0x4470d193, Offset: 0x4c8
// Size: 0xec
function function_d3e5f256(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        var_a546a03e = struct::get("fuse_box_loc", "targetname");
        level.var_f9a78d10 = playfx(fieldname, #"hash_179a76b8d709e8bb", var_a546a03e.origin, anglestoforward(var_a546a03e.angles), (0, 0, 1));
        playsound(fieldname, #"hash_487cbd8d6e939533", var_a546a03e.origin);
    }
}

