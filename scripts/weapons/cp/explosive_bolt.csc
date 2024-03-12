// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\math_shared.csc;

#namespace explosive_bolt;

// Namespace explosive_bolt/explosive_bolt
// Params 0, eflags: 0x0
// Checksum 0x157522ad, Offset: 0xc0
// Size: 0x2c
function main() {
    level._effect[#"crossbow_light"] = #"weapon/fx8_equip_light_os";
}

// Namespace explosive_bolt/explosive_bolt
// Params 1, eflags: 0x2 linked
// Checksum 0x14b51af, Offset: 0xf8
// Size: 0x3c
function spawned(localclientnum) {
    if (self isgrenadedud()) {
        return;
    }
    self thread fx_think(localclientnum);
}

// Namespace explosive_bolt/explosive_bolt
// Params 1, eflags: 0x2 linked
// Checksum 0xf40234a3, Offset: 0x140
// Size: 0x132
function fx_think(localclientnum) {
    self notify(#"light_disable");
    self endon(#"death");
    self endon(#"light_disable");
    self util::waittill_dobj(localclientnum);
    for (interval = 0.3; ; interval = math::clamp(interval / 1.2, 0.08, 0.3)) {
        self stop_light_fx(localclientnum);
        self start_light_fx(localclientnum);
        self fullscreen_fx(localclientnum);
        self playsound(localclientnum, #"wpn_semtex_alert");
        util::server_wait(localclientnum, interval, 0.01, "player_switch");
    }
}

// Namespace explosive_bolt/explosive_bolt
// Params 1, eflags: 0x2 linked
// Checksum 0x7e110925, Offset: 0x280
// Size: 0x4a
function start_light_fx(localclientnum) {
    self.fx = util::playfxontag(localclientnum, level._effect[#"crossbow_light"], self, "tag_origin");
}

// Namespace explosive_bolt/explosive_bolt
// Params 1, eflags: 0x2 linked
// Checksum 0x776dbf39, Offset: 0x2d8
// Size: 0x4e
function stop_light_fx(localclientnum) {
    if (isdefined(self.fx) && self.fx != 0) {
        stopfx(localclientnum, self.fx);
        self.fx = undefined;
    }
}

// Namespace explosive_bolt/explosive_bolt
// Params 1, eflags: 0x2 linked
// Checksum 0x92c4c9c8, Offset: 0x330
// Size: 0x9c
function fullscreen_fx(localclientnum) {
    if (util::is_player_view_linked_to_entity(localclientnum)) {
        return;
    }
    if (self function_e9fc6a64()) {
        return;
    }
    parent = self getparententity();
    if (isdefined(parent) && parent function_21c0fa55()) {
        parent playrumbleonentity(localclientnum, "buzz_high");
    }
}

