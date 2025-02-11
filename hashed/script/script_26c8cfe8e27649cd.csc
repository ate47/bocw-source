#using scripts\core_common\clientfield_shared;
#using scripts\core_common\postfx_shared;
#using scripts\core_common\system_shared;

#namespace namespace_379d0dc2;

// Namespace namespace_379d0dc2/namespace_379d0dc2
// Params 0, eflags: 0x5
// Checksum 0x1657f641, Offset: 0xe0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"exfil", &_preload, undefined, undefined, undefined);
}

// Namespace namespace_379d0dc2/namespace_379d0dc2
// Params 0, eflags: 0x4
// Checksum 0xae7dff41, Offset: 0x128
// Size: 0x4c
function private _preload() {
    clientfield::register("toplayer", "skyhook_speedblur", 1, 1, "int", &function_f343c90c, 0, 0);
}

// Namespace namespace_379d0dc2/namespace_379d0dc2
// Params 7, eflags: 0x4
// Checksum 0x1dc31bed, Offset: 0x180
// Size: 0xfc
function private function_f343c90c(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    if (bwastimejump == 1) {
        if (self postfx::function_556665f2("pstfx_cp_skyhook_speedblur")) {
            self postfx::stoppostfxbundle("pstfx_cp_skyhook_speedblur");
        }
        self postfx::playpostfxbundle("pstfx_cp_skyhook_speedblur");
        return;
    }
    if (self postfx::function_556665f2("pstfx_cp_skyhook_speedblur")) {
        self postfx::exitpostfxbundle("pstfx_cp_skyhook_speedblur");
    }
}

