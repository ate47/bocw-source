// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_4ea0b0e1;

// Namespace namespace_4ea0b0e1/namespace_4ea0b0e1
// Params 0, eflags: 0x5
// Checksum 0xfc57704c, Offset: 0xf0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_3092c343f49326ae", &_preload, undefined, undefined, undefined);
}

// Namespace namespace_4ea0b0e1/namespace_4ea0b0e1
// Params 0, eflags: 0x6 linked
// Checksum 0xcd990676, Offset: 0x138
// Size: 0x14
function private _preload() {
    function_bc948200();
}

// Namespace namespace_4ea0b0e1/namespace_4ea0b0e1
// Params 0, eflags: 0x2 linked
// Checksum 0xdd404348, Offset: 0x158
// Size: 0x4c
function function_bc948200() {
    clientfield::register("toplayer", "return_to_combat_postfx", 1, 1, "int", &function_f343c90c, 0, 0);
}

// Namespace namespace_4ea0b0e1/namespace_4ea0b0e1
// Params 7, eflags: 0x6 linked
// Checksum 0x241b862e, Offset: 0x1b0
// Size: 0xfc
function private function_f343c90c(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    if (bwastimejump == 1) {
        if (self postfx::function_556665f2("pstfx_t9_cp_sepia")) {
            self postfx::stoppostfxbundle("pstfx_t9_cp_sepia");
        }
        self postfx::playpostfxbundle("pstfx_t9_cp_sepia");
        return;
    }
    if (self postfx::function_556665f2("pstfx_t9_cp_sepia")) {
        self postfx::stoppostfxbundle("pstfx_t9_cp_sepia");
    }
}

