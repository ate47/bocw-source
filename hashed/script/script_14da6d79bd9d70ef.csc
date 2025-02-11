#using scripts\core_common\clientfield_shared;
#using scripts\core_common\postfx_shared;
#using scripts\core_common\system_shared;

#namespace namespace_2872eab3;

// Namespace namespace_2872eab3/namespace_2872eab3
// Params 0, eflags: 0x5
// Checksum 0xb6af3044, Offset: 0x168
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_233c0e90ddf8f839", &_preload, undefined, undefined, undefined);
}

// Namespace namespace_2872eab3/namespace_2872eab3
// Params 0, eflags: 0x4
// Checksum 0xfe0baa44, Offset: 0x1b0
// Size: 0x14
function private _preload() {
    function_bc948200();
}

// Namespace namespace_2872eab3/namespace_2872eab3
// Params 0, eflags: 0x0
// Checksum 0x1c8a3c7c, Offset: 0x1d0
// Size: 0x94
function function_bc948200() {
    clientfield::register("toplayer", "cctv_postfx", 1, 1, "int", &function_3a6306b1, 0, 1);
    clientfield::register("toplayer", "cull_outside_nuke_room", 1, 1, "int", &function_e9459dfe, 0, 1);
}

// Namespace namespace_2872eab3/namespace_2872eab3
// Params 7, eflags: 0x4
// Checksum 0x2b5f20c0, Offset: 0x270
// Size: 0x2a4
function private function_3a6306b1(localclientnum, *oldval, newval, bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    if (fieldname == 1) {
        if (self postfx::function_556665f2("pstfx_t9_cp_nic_revolucion_crt_on_fx")) {
            self postfx::stoppostfxbundle("pstfx_t9_cp_nic_revolucion_crt_on_fx");
        }
        self postfx::playpostfxbundle("pstfx_t9_cp_nic_revolucion_crt_on_fx");
        if (self function_d2cb869e("pstfx_t9_cp_crt_camera_fx")) {
            codestoppostfxbundlelocal(binitialsnap, "pstfx_t9_cp_crt_camera_fx");
        }
        function_a837926b(binitialsnap, "pstfx_t9_cp_crt_camera_fx");
        if (self function_d2cb869e("pstfx_t9_cp_crt_camera_fx")) {
            codestoppostfxbundlelocal(binitialsnap, "pstfx_t9_cp_crt_camera_fx");
        }
        function_a837926b(binitialsnap, "pstfx_t9_cp_crt_camera_fx");
        if (self function_d2cb869e("pstfx_t9_cp_crt_camera_fx")) {
            function_4238734d(binitialsnap, "pstfx_t9_cp_crt_camera_fx", "Cubic Distortion", 0.5);
            function_4238734d(binitialsnap, "pstfx_t9_cp_crt_camera_fx", "Lens Scale", 0.875);
        }
        return;
    }
    if (self function_d2cb869e("pstfx_t9_cp_crt_camera_fx")) {
        codestoppostfxbundlelocal(binitialsnap, "pstfx_t9_cp_crt_camera_fx");
        if (!bwastimejump) {
            if (self postfx::function_556665f2("pstfx_t9_cp_nic_revolucion_crt_off_fx")) {
                self postfx::stoppostfxbundle("pstfx_t9_cp_nic_revolucion_crt_off_fx");
            }
            self postfx::playpostfxbundle("pstfx_t9_cp_nic_revolucion_crt_off_fx");
        }
    }
}

// Namespace namespace_2872eab3/namespace_2872eab3
// Params 7, eflags: 0x4
// Checksum 0x2c7804ff, Offset: 0x520
// Size: 0x84
function private function_e9459dfe(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        function_93620041(fieldname, "cull_outside_nuke_room");
        return;
    }
    function_9362afb8(fieldname, "cull_outside_nuke_room");
}

