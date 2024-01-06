// Atian COD Tools GSC CW decompiler test
#using script_140d5347de8af85c;
#using script_65fbfb5ecb1f899e;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_594b67e;

// Namespace namespace_594b67e/namespace_594b67e
// Params 0, eflags: 0x5
// Checksum 0xcdbb6c0f, Offset: 0x100
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_208cc96e397aed88", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_594b67e/namespace_594b67e
// Params 0, eflags: 0x6 linked
// Checksum 0xfd85a0ea, Offset: 0x148
// Size: 0xdc
function private function_70a657d8() {
    clientfield::register("scriptmover", "link_to_camera", 1, 2, "int", &link_to_camera, 0, 0);
    clientfield::register("actor", "link_to_camera", 1, 2, "int", &link_to_camera, 0, 0);
    clientfield::register("toplayer", "fake_ads", 1, 1, "int", &fake_ads, 0, 0);
}

// Namespace namespace_594b67e/namespace_594b67e
// Params 7, eflags: 0x6 linked
// Checksum 0xe710e11d, Offset: 0x230
// Size: 0xb4
function private link_to_camera(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    player = function_5c10bd79(binitialsnap);
    if (bwastimejump) {
        self thread function_bd9c7275(fieldname, bwastimejump);
    } else {
        self notify(#"hash_97425a408a077df");
        self function_a052b638();
    }
}

// Namespace namespace_594b67e/namespace_594b67e
// Params 7, eflags: 0x6 linked
// Checksum 0x4e47e452, Offset: 0x2f0
// Size: 0x14c
function private fake_ads(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self notify("2e682ee9f9b29c84");
    self endon("2e682ee9f9b29c84");
    if (bwastimejump && bwastimejump != fieldname) {
        self namespace_ca99987f::function_f95cb457(undefined, 20.64, 0.2, #"sine");
    } else if (!bwastimejump && bwastimejump != fieldname) {
        self namespace_ca99987f::function_f95cb457(undefined, 14.64, 0.2, #"sine");
        while (1) {
            result = undefined;
            result = self waittill(#"hash_133229f708f5d10");
            if (result.target_value === 14.64) {
                self function_9298adaf(binitialsnap);
                break;
            }
        }
    }
}

// Namespace namespace_594b67e/namespace_594b67e
// Params 2, eflags: 0x6 linked
// Checksum 0x223fb46b, Offset: 0x448
// Size: 0x124
function private function_bd9c7275(var_192ca300, var_f8c670cd) {
    self notify(#"hash_97425a408a077df");
    self endon(#"hash_97425a408a077df");
    if (is_true(var_192ca300) && is_true(var_f8c670cd) && var_192ca300 != var_f8c670cd) {
        self function_a052b638();
    }
    if ((isdefined(var_f8c670cd) ? var_f8c670cd : 1) == 2) {
        self linktocamera(4, (0, 0, 0));
    } else {
        self linktocamera(4, vectorscale((0, 0, -1), 60));
    }
    self waittill(#"death", #"hash_29b88049dcac8bb3");
    self function_a052b638();
}

