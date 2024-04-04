// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace music;

// Namespace music/music_shared
// Params 0, eflags: 0x5
// Checksum 0x3bcb7100, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"music", &preinit, undefined, undefined, undefined);
}

// Namespace music/music_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x9c6e15ac, Offset: 0xe8
// Size: 0x64
function private preinit() {
    level.activemusicstate = "";
    level.nextmusicstate = "";
    level.musicstates = [];
    util::register_system(#"musiccmd", &musiccmdhandler);
}

// Namespace music/music_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x35338c5f, Offset: 0x158
// Size: 0x6c
function musiccmdhandler(*clientnum, state, *oldstate) {
    if (oldstate != "death") {
        level._lastmusicstate = oldstate;
    }
    oldstate = tolower(oldstate);
    soundsetmusicstate(oldstate);
}

