// Atian COD Tools GSC CW decompiler test
#using script_140d5347de8af85c;
#using scripts\core_common\easing.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace action_utility;

// Namespace action_utility/action_utility
// Params 0, eflags: 0x5
// Checksum 0xcdbb6c0f, Offset: 0x100
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"action_utility", &preinit, undefined, undefined, undefined);
}

// Namespace action_utility/action_utility
// Params 0, eflags: 0x6 linked
// Checksum 0xfd85a0ea, Offset: 0x148
// Size: 0xdc
function private preinit() {
    clientfield::register("scriptmover", "link_to_camera", 1, 2, "int", &link_to_camera, 0, 0);
    clientfield::register("actor", "link_to_camera", 1, 2, "int", &link_to_camera, 0, 0);
    clientfield::register("toplayer", "fake_ads", 1, 1, "int", &fake_ads, 0, 0);
}

// Namespace action_utility/action_utility
// Params 7, eflags: 0x6 linked
// Checksum 0xe710e11d, Offset: 0x230
// Size: 0xb4
function private link_to_camera(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    player = function_5c10bd79(binitialsnap);
    if (bwastimejump) {
        self thread function_bd9c7275(fieldname, bwastimejump);
        return;
    }
    self notify(#"hash_97425a408a077df");
    self function_a052b638();
}

// Namespace action_utility/action_utility
// Params 7, eflags: 0x6 linked
// Checksum 0x4e47e452, Offset: 0x2f0
// Size: 0x14c
function private fake_ads(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self notify("2e682ee9f9b29c84");
    self endon("2e682ee9f9b29c84");
    if (bwastimejump && bwastimejump != fieldname) {
        self easing::function_f95cb457(undefined, 20.64, 0.2, #"sine");
        return;
    }
    if (!bwastimejump && bwastimejump != fieldname) {
        self easing::function_f95cb457(undefined, 14.64, 0.2, #"sine");
        while (true) {
            result = self waittill(#"hash_133229f708f5d10");
            if (result.target_value === 14.64) {
                self function_9298adaf(binitialsnap);
                break;
            }
        }
    }
}

// Namespace action_utility/action_utility
// Params 2, eflags: 0x6 linked
// Checksum 0x223fb46b, Offset: 0x448
// Size: 0x124
function private function_bd9c7275(oldtype, newtype) {
    self notify(#"hash_97425a408a077df");
    self endon(#"hash_97425a408a077df");
    if (is_true(oldtype) && is_true(newtype) && oldtype != newtype) {
        self function_a052b638();
    }
    if ((isdefined(newtype) ? newtype : 1) == 2) {
        self linktocamera(4, (0, 0, 0));
    } else {
        self linktocamera(4, (0, 0, -60));
    }
    self waittill(#"death", #"entitydeleted");
    self function_a052b638();
}

