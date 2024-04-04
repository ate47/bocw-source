// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\archetype_mimic.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace zm_ai_mimic;

// Namespace zm_ai_mimic/zm_ai_mimic
// Params 0, eflags: 0x5
// Checksum 0xe43c62c0, Offset: 0x138
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_ai_mimic", &preinit, undefined, undefined, undefined);
}

// Namespace zm_ai_mimic/zm_ai_mimic
// Params 0, eflags: 0x6 linked
// Checksum 0x977ca8f1, Offset: 0x180
// Size: 0xdc
function private preinit() {
    clientfield::register("actor", "mimic_show_on_minimap", 16000, 1, "int", &function_78505cdf, 0, 0);
    clientfield::register("actor", "mimic_cleanup_teleport", 16000, 1, "counter", &mimic_cleanup_teleport, 0, 0);
    clientfield::register("toplayer", "mimic_range_hit", 16000, 1, "counter", &function_4bc65819, 0, 0);
}

// Namespace zm_ai_mimic/zm_ai_mimic
// Params 7, eflags: 0x2 linked
// Checksum 0x1d6d6284, Offset: 0x268
// Size: 0x74
function function_78505cdf(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        self function_811196d1(1);
        return;
    }
    self function_811196d1(0);
}

// Namespace zm_ai_mimic/zm_ai_mimic
// Params 7, eflags: 0x2 linked
// Checksum 0xe1af24b5, Offset: 0x2e8
// Size: 0x6c
function mimic_cleanup_teleport(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (isdefined(self)) {
        util::playfxontag(bwasdemojump, #"hash_784a8bc7b9b17876", self, "tag_origin");
    }
}

// Namespace zm_ai_mimic/zm_ai_mimic
// Params 7, eflags: 0x2 linked
// Checksum 0x805f0fa3, Offset: 0x360
// Size: 0xcc
function function_4bc65819(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    util::waittill_dobj(bwasdemojump);
    if (!isdefined(self)) {
        return;
    }
    self endon(#"death");
    if (!self function_d2cb869e(#"hash_58e9d4772527f71a")) {
        self codeplaypostfxbundle(#"hash_58e9d4772527f71a");
    }
    self thread function_119c2eb0();
}

// Namespace zm_ai_mimic/zm_ai_mimic
// Params 0, eflags: 0x2 linked
// Checksum 0xc25c2a8f, Offset: 0x438
// Size: 0x54
function function_119c2eb0() {
    self notify("3987c1b16f6c185b");
    self endon("3987c1b16f6c185b");
    self waittilltimeout(1, #"death");
    self codestoppostfxbundle(#"hash_58e9d4772527f71a");
}

