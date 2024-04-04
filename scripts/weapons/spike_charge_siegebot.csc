// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace spike_charge_siegebot;

// Namespace spike_charge_siegebot/spike_charge_siegebot
// Params 0, eflags: 0x5
// Checksum 0x305d749a, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"spike_charge_siegebot", &preinit, undefined, undefined, undefined);
}

// Namespace spike_charge_siegebot/spike_charge_siegebot
// Params 0, eflags: 0x4
// Checksum 0x7b4edc6d, Offset: 0x108
// Size: 0x11c
function private preinit() {
    level._effect[#"spike_charge_siegebot_light"] = #"light/fx_light_red_spike_charge_os";
    callback::add_weapon_type(#"spike_charge_siegebot", &spawned);
    callback::add_weapon_type(#"spike_charge_siegebot_theia", &spawned);
    callback::add_weapon_type(#"siegebot_launcher_turret", &spawned);
    callback::add_weapon_type(#"siegebot_launcher_turret_theia", &spawned);
    callback::add_weapon_type(#"siegebot_javelin_turret", &spawned);
}

// Namespace spike_charge_siegebot/spike_charge_siegebot
// Params 1, eflags: 0x0
// Checksum 0xbcd7a46f, Offset: 0x230
// Size: 0x24
function spawned(localclientnum) {
    self thread fx_think(localclientnum);
}

// Namespace spike_charge_siegebot/spike_charge_siegebot
// Params 1, eflags: 0x0
// Checksum 0x7bc9dc3a, Offset: 0x260
// Size: 0x132
function fx_think(localclientnum) {
    self notify(#"light_disable");
    self endon(#"death");
    self endon(#"light_disable");
    self util::waittill_dobj(localclientnum);
    for (interval = 0.3; ; interval = math::clamp(interval / 1.2, 0.08, 0.3)) {
        self stop_light_fx(localclientnum);
        self start_light_fx(localclientnum);
        self playsound(localclientnum, #"wpn_semtex_alert");
        util::server_wait(localclientnum, interval, 0.01, "player_switch");
        self util::waittill_dobj(localclientnum);
    }
}

// Namespace spike_charge_siegebot/spike_charge_siegebot
// Params 1, eflags: 0x0
// Checksum 0xea860954, Offset: 0x3a0
// Size: 0x4a
function start_light_fx(localclientnum) {
    self.fx = util::playfxontag(localclientnum, level._effect[#"spike_charge_siegebot_light"], self, "tag_fx");
}

// Namespace spike_charge_siegebot/spike_charge_siegebot
// Params 1, eflags: 0x0
// Checksum 0x914c8c43, Offset: 0x3f8
// Size: 0x4e
function stop_light_fx(localclientnum) {
    if (isdefined(self.fx) && self.fx != 0) {
        stopfx(localclientnum, self.fx);
        self.fx = undefined;
    }
}

