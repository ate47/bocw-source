// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_14c21b91;

// Namespace namespace_14c21b91/namespace_14c21b91
// Params 0, eflags: 0x5
// Checksum 0x25bc71, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_e77f876300a38be", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_14c21b91/namespace_14c21b91
// Params 0, eflags: 0x6 linked
// Checksum 0xdb3d7115, Offset: 0xd8
// Size: 0x24
function private preinit() {
    callback::on_end_game(&on_end_game);
}

// Namespace namespace_14c21b91/gametype_start
// Params 1, eflags: 0x20
// Checksum 0xf0ef958a, Offset: 0x108
// Size: 0x4c
function event_handler[gametype_start] codecallback_startgametype(*eventstruct) {
    if (sessionmodeismultiplayergame() && function_8f29c880()) {
        function_3ae87223();
    }
}

// Namespace namespace_14c21b91/namespace_14c21b91
// Params 1, eflags: 0x2 linked
// Checksum 0x33ed560f, Offset: 0x160
// Size: 0x4c
function on_end_game(*localclientnum) {
    if (sessionmodeismultiplayergame() && function_8f29c880()) {
        function_8871747f();
    }
}

