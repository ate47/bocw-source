// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using script_531a6d61ee606513;
#using script_58087978e7d5a0fd;

#namespace zm_gold_util;

// Namespace zm_gold_util/zm_gold_util
// Params 0, eflags: 0x2 linked
// Checksum 0xd534f328, Offset: 0xd8
// Size: 0x4c
function init() {
    level.zm_gold_hud = zm_gold_hud::register();
    level.zm_gold_align_satellite_hud = zm_gold_align_satellite_hud::register();
    /#
        level thread function_37597f29();
    #/
}

// Namespace zm_gold_util/zm_gold_util
// Params 0, eflags: 0x0
// Checksum 0x50f0cb11, Offset: 0x130
// Size: 0x44
function function_1aeb4889() {
    if (!level.zm_gold_hud zm_gold_hud::is_open(self)) {
        level.zm_gold_hud zm_gold_hud::open(self);
    }
}

// Namespace zm_gold_util/zm_gold_util
// Params 0, eflags: 0x0
// Checksum 0x876f3782, Offset: 0x180
// Size: 0x44
function close_hud() {
    if (level.zm_gold_hud zm_gold_hud::is_open(self)) {
        level.zm_gold_hud zm_gold_hud::close(self);
    }
}

// Namespace zm_gold_util/zm_gold_util
// Params 1, eflags: 0x2 linked
// Checksum 0x7c8c83ea, Offset: 0x1d0
// Size: 0xa4
function function_b488623(b_show) {
    if (is_true(b_show)) {
        if (!level.zm_gold_align_satellite_hud zm_gold_align_satellite_hud::is_open(self)) {
            level.zm_gold_align_satellite_hud zm_gold_align_satellite_hud::open(self);
        }
        return;
    }
    if (level.zm_gold_align_satellite_hud zm_gold_align_satellite_hud::is_open(self)) {
        level.zm_gold_align_satellite_hud zm_gold_align_satellite_hud::close(self);
    }
}

// Namespace zm_gold_util/zm_gold_util
// Params 2, eflags: 0x2 linked
// Checksum 0xefdf37e3, Offset: 0x280
// Size: 0x68
function function_13ebb331(*v_origin_or_ent, str_targetname) {
    volume = getent(str_targetname, "targetname");
    if (isdefined(volume) && self istouching(volume)) {
        return true;
    }
    return false;
}

/#

    // Namespace zm_gold_util/zm_gold_util
    // Params 0, eflags: 0x0
    // Checksum 0x2996e357, Offset: 0x2f0
    // Size: 0x7c
    function function_37597f29() {
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        level flag::wait_till("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&function_72c803d3);
    }

    // Namespace zm_gold_util/zm_gold_util
    // Params 1, eflags: 0x0
    // Checksum 0x8e7562d1, Offset: 0x378
    // Size: 0xa0
    function function_e76968e1(show) {
        foreach (player in function_a1ef346b()) {
            player function_b488623(show);
        }
    }

    // Namespace zm_gold_util/zm_gold_util
    // Params 1, eflags: 0x0
    // Checksum 0x5373bd61, Offset: 0x420
    // Size: 0x8a
    function function_72c803d3(cmd) {
        switch (cmd) {
        case #"hash_2c0a3e57a006c81d":
            function_e76968e1(1);
            break;
        case #"hash_3a2f14069605556a":
            function_e76968e1(0);
            break;
        default:
            break;
        }
    }

#/
