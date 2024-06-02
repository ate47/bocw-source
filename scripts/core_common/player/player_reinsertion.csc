// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace player_reinsertion;

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x5
// Checksum 0xbf6f4d24, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"player_reinsertion", &preinit, undefined, undefined, undefined);
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x4
// Checksum 0x1e1a2a6b, Offset: 0xd8
// Size: 0x18
function private preinit() {
    if (level.var_f2814a96 !== 0) {
        return;
    }
}

