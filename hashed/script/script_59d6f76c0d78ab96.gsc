// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using script_544e81d6e48b88c0;
#using script_13da4e6b98ca81a1;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\audio_shared.csc;

#namespace spectate_view;

// Namespace spectate_view/spectate_view
// Params 0, eflags: 0x5
// Checksum 0x9139301, Offset: 0xe0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"spectate_view", &preinit, undefined, undefined, undefined);
}

// Namespace spectate_view/spectate_view
// Params 0, eflags: 0x6 linked
// Checksum 0x1d0073e5, Offset: 0x128
// Size: 0x54
function private preinit() {
    callback::add_callback(#"territory", &function_59941838);
    callback::function_a880899e(&function_a880899e);
}

// Namespace spectate_view/spectate_view
// Params 2, eflags: 0x6 linked
// Checksum 0xebd73744, Offset: 0x188
// Size: 0x34
function private function_59941838(*local_client_num, *eventstruct) {
    namespace_99c84a33::function_bb3bbc2c("overhead_spectate_cam", 64);
}

// Namespace spectate_view/spectate_view
// Params 1, eflags: 0x2 linked
// Checksum 0xcdfa11c7, Offset: 0x1c8
// Size: 0x7c
function function_a880899e(eventparams) {
    localclientnum = eventparams.localclientnum;
    if (!codcaster::function_b8fe9b52(localclientnum)) {
        if (eventparams.enabled) {
            self codeplaypostfxbundle("pstfx_spawn_cam");
            return;
        }
        self codestoppostfxbundle("pstfx_spawn_cam");
    }
}

