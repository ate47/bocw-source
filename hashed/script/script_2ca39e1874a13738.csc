#using scripts\core_common\clientfield_shared;
#using scripts\core_common\easing;
#using scripts\core_common\struct;

#namespace namespace_c8bf7287;

// Namespace namespace_c8bf7287/namespace_c8bf7287
// Params 0, eflags: 0x0
// Checksum 0xc85bd32b, Offset: 0xf8
// Size: 0x4c
function preload() {
    clientfield::register("toplayer", "survey_equipment_focal_length_toggle", 1, 4, "int", &survey_equipment_focal_length_toggle, 0, 0);
}

// Namespace namespace_c8bf7287/namespace_c8bf7287
// Params 0, eflags: 0x0
// Checksum 0xdbbc6ad6, Offset: 0x150
// Size: 0x2c
function postload() {
    level.var_3d614c46 = struct::get("survey_camera", "targetname");
}

// Namespace namespace_c8bf7287/namespace_c8bf7287
// Params 7, eflags: 0x4
// Checksum 0x9b6c121f, Offset: 0x188
// Size: 0x4c2
function private survey_equipment_focal_length_toggle(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    var_3c6d56f4 = self function_82f1cbd2();
    switch (bwastimejump) {
    case 0:
        self easing::function_f95cb457(var_3c6d56f4, 20 + (bwastimejump - 1) * 3, 0.15, #"linear");
        break;
    case 1:
        self easing::function_f95cb457(var_3c6d56f4, 20 + (bwastimejump - 1) * 3, 0.15, #"linear");
        break;
    case 2:
        self easing::function_f95cb457(var_3c6d56f4, 20 + (bwastimejump - 1) * 3, 0.15, #"linear");
        break;
    case 3:
        self easing::function_f95cb457(var_3c6d56f4, 20 + (bwastimejump - 1) * 3, 0.15, #"linear");
        break;
    case 4:
        self easing::function_f95cb457(var_3c6d56f4, 20 + (bwastimejump - 1) * 3, 0.15, #"linear");
        break;
    case 5:
        self easing::function_f95cb457(var_3c6d56f4, 20 + (bwastimejump - 1) * 3, 0.15, #"linear");
        break;
    case 6:
        self easing::function_f95cb457(var_3c6d56f4, 20 + (bwastimejump - 1) * 3, 0.15, #"linear");
        break;
    case 7:
        self easing::function_f95cb457(var_3c6d56f4, 20 + (bwastimejump - 1) * 3, 0.15, #"linear");
        break;
    case 8:
        self easing::function_f95cb457(var_3c6d56f4, 20 + (bwastimejump - 1) * 3, 0.15, #"linear");
        break;
    case 9:
        self easing::function_f95cb457(var_3c6d56f4, 20 + (bwastimejump - 1) * 3, 0.15, #"linear");
        break;
    case 10:
        self easing::function_f95cb457(var_3c6d56f4, 20 + (bwastimejump - 1) * 3, 0.15, #"linear");
        break;
    case 11:
        self easing::function_f95cb457(var_3c6d56f4, 20 + (bwastimejump - 1) * 3, 0.15, #"linear");
        break;
    default:
        self function_9298adaf(0.1);
        break;
    }
}

