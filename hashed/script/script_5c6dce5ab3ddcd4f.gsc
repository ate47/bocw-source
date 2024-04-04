// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace paintshop;

// Namespace paintshop/paintshop
// Params 0, eflags: 0x5
// Checksum 0x46555eae, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"paintshop", &preinit, undefined, undefined, undefined);
}

// Namespace paintshop/paintshop
// Params 0, eflags: 0x6 linked
// Checksum 0xd6d37178, Offset: 0xd8
// Size: 0x44
function private preinit() {
    if (getdvarint(#"hash_2728dd57f235e6e5", 0)) {
        callback::on_spawned(&on_player_spawned);
    }
}

// Namespace paintshop/paintshop
// Params 1, eflags: 0x6 linked
// Checksum 0xedced56, Offset: 0x128
// Size: 0xd4
function private on_player_spawned(localclientnum) {
    spawned_player = self;
    local_player = function_5c10bd79(localclientnum);
    if (spawned_player.team == local_player.team || function_b37afded(spawned_player.team, local_player.team)) {
        if (function_5020f5d1(localclientnum) < function_5ada7356()) {
            spawned_player function_2bbc8349(localclientnum, 1);
        }
        return;
    }
    spawned_player function_2bbc8349(localclientnum, 0);
}

// Namespace paintshop/paintshop
// Params 2, eflags: 0x2 linked
// Checksum 0xe346c621, Offset: 0x208
// Size: 0x8c
function function_2bbc8349(localclientnum, enable) {
    if (!getdvarint(#"hash_2728dd57f235e6e5", 0)) {
        return;
    }
    if (isdefined(localclientnum) && isdefined(self) && isdefined(enable) && isplayer(self)) {
        player = self;
        player function_8f214149(localclientnum, enable);
    }
}

