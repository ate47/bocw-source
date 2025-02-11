#using script_47dddf783a64e129;
#using scripts\core_common\clientfield_shared;

#namespace cp_rus_yamantau_flashlight;

// Namespace cp_rus_yamantau_flashlight/cp_rus_yamantau_flashlight
// Params 0, eflags: 0x0
// Checksum 0x1f3157b8, Offset: 0x110
// Size: 0x94
function preload() {
    clientfield::register("toplayer", "cp_rus_yamantau_flashlight", 1, 2, "int", &function_70723e25, 0, 0);
    clientfield::register("actor", "set_flashlight_fx", 1, 1, "int", &set_flashlight_fx, 0, 0);
}

// Namespace cp_rus_yamantau_flashlight/cp_rus_yamantau_flashlight
// Params 0, eflags: 0x0
// Checksum 0x1d3717f2, Offset: 0x1b0
// Size: 0x2c
function postload() {
    level._effect[#"hash_2b8b4be2cb5925ab"] = #"hash_670a56e843776b6f";
}

// Namespace cp_rus_yamantau_flashlight/cp_rus_yamantau_flashlight
// Params 7, eflags: 0x0
// Checksum 0x80104f55, Offset: 0x1e8
// Size: 0x126
function function_70723e25(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (isdefined(level.var_d392b4d1)) {
            stopfx(fieldname, level.var_d392b4d1);
            level.var_d392b4d1 = undefined;
        }
        n_offset = 4;
        if (bwastimejump == 2) {
            n_offset = 0;
        }
        level.var_d392b4d1 = playfxoncamera(fieldname, level._effect[#"hash_2b8b4be2cb5925ab"], (0, n_offset, 1.5), (1, 0, -0.1), (0, 0, 1));
        return;
    }
    stopfx(fieldname, level.var_d392b4d1);
    level.var_d392b4d1 = undefined;
}

// Namespace cp_rus_yamantau_flashlight/cp_rus_yamantau_flashlight
// Params 7, eflags: 0x0
// Checksum 0xa22fa6b4, Offset: 0x318
// Size: 0x6c
function set_flashlight_fx(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    flashlightfx = "maps/cp_rus_yamantau/fx9_yam_flashlight_ai";
    self flashlight::function_69258685(bwasdemojump, flashlightfx);
}

