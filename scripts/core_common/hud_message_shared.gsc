// Atian COD Tools GSC CW decompiler test
#using script_6167e26342be354b;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace hud_message;

// Namespace hud_message/hud_message_shared
// Params 0, eflags: 0x5
// Checksum 0xc1dff94, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hud_message", &preinit, undefined, undefined, undefined);
}

// Namespace hud_message/hud_message_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x5946675c, Offset: 0xf8
// Size: 0x24
function private preinit() {
    callback::on_start_gametype(&init);
}

// Namespace hud_message/hud_message_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x128
// Size: 0x4
function init() {
    
}

// Namespace hud_message/hud_message_shared
// Params 1, eflags: 0x0
// Checksum 0xd2f13d60, Offset: 0x138
// Size: 0x94
function playnotifyloop(duration) {
    playnotifyloop = spawn("script_origin", (0, 0, 0));
    playnotifyloop playloopsound(#"uin_notify_data_loop");
    duration -= 4;
    if (duration < 1) {
        duration = 1;
    }
    wait(duration);
    playnotifyloop delete();
}

// Namespace hud_message/hud_message_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xb70c82dd, Offset: 0x1d8
// Size: 0xa4
function setlowermessage(text, time) {
    self notify(#"hash_6ceeeb477ece797b");
    if (isdefined(time) && time > 0) {
        self luinotifyevent(#"hash_424b9c54c8bf7a82", 2, text, int(time));
        return;
    }
    self luinotifyevent(#"hash_424b9c54c8bf7a82", 1, text);
}

// Namespace hud_message/hud_message_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x3e8f0d9, Offset: 0x288
// Size: 0x54
function clearlowermessage() {
    self endon(#"hash_6ceeeb477ece797b");
    if (!isplayer(self)) {
        return;
    }
    self luinotifyevent(#"hash_6b9a1c6794314120");
}

// Namespace hud_message/hud_message_shared
// Params 2, eflags: 0x0
// Checksum 0xba0d4b32, Offset: 0x2e8
// Size: 0x56
function isintop(players, topn) {
    for (i = 0; i < topn; i++) {
        if (isdefined(players[i]) && self == players[i]) {
            return true;
        }
    }
    return false;
}

