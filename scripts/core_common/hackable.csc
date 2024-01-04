// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace hackable;

// Namespace hackable/hackable
// Params 0, eflags: 0x5
// Checksum 0xbdbd323d, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hackable", &init, undefined, undefined, undefined);
}

// Namespace hackable/hackable
// Params 0, eflags: 0x0
// Checksum 0x22f6dbe2, Offset: 0xd8
// Size: 0x24
function init() {
    callback::on_localclient_connect(&on_player_connect);
}

// Namespace hackable/hackable
// Params 1, eflags: 0x0
// Checksum 0x548a329, Offset: 0x108
// Size: 0xc
function on_player_connect(*localclientnum) {
    
}

// Namespace hackable/hackable
// Params 2, eflags: 0x0
// Checksum 0x8f671843, Offset: 0x120
// Size: 0x4c
function set_hacked_ent(*local_client_num, ent) {
    if (ent !== self.hacked_ent) {
        if (isdefined(self.hacked_ent)) {
        }
        self.hacked_ent = ent;
        if (isdefined(self.hacked_ent)) {
        }
    }
}

