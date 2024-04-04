// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace trapd;

// Namespace trapd/trapd
// Params 0, eflags: 0x5
// Checksum 0xd329d9df, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"trapd", &preinit, undefined, undefined, undefined);
}

// Namespace trapd/trapd
// Params 0, eflags: 0x4
// Checksum 0x3178480c, Offset: 0x118
// Size: 0x64
function private preinit() {
    callback::add_weapon_type(#"mine_trapd", &function_9f6d38cf);
    callback::add_weapon_type(#"claymore_trapd", &function_9f6d38cf);
}

// Namespace trapd/trapd
// Params 1, eflags: 0x0
// Checksum 0xf651c4e6, Offset: 0x188
// Size: 0x24
function function_9f6d38cf(localclientnum) {
    self thread fx_think(localclientnum);
}

// Namespace trapd/trapd
// Params 1, eflags: 0x0
// Checksum 0xad8800bb, Offset: 0x1b8
// Size: 0xf8
function fx_think(localclientnum) {
    self notify(#"light_disable");
    self endon(#"light_disable");
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    for (;;) {
        self stop_light_fx(localclientnum);
        localplayer = function_5c10bd79(localclientnum);
        self start_light_fx(localclientnum);
        util::server_wait(localclientnum, 0.3, 0.01, "player_switch");
        self util::waittill_dobj(localclientnum);
    }
}

// Namespace trapd/trapd
// Params 1, eflags: 0x0
// Checksum 0xeb84fc44, Offset: 0x2b8
// Size: 0x3a
function start_light_fx(localclientnum) {
    self.fx = util::playfxontag(localclientnum, "weapon/fx8_equip_light_os", self, "tag_fx");
}

// Namespace trapd/trapd
// Params 1, eflags: 0x0
// Checksum 0x574a6c06, Offset: 0x300
// Size: 0x4e
function stop_light_fx(localclientnum) {
    if (isdefined(self.fx) && self.fx != 0) {
        stopfx(localclientnum, self.fx);
        self.fx = undefined;
    }
}

