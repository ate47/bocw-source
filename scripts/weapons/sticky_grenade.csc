// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace sticky_grenade;

// Namespace sticky_grenade/sticky_grenade
// Params 0, eflags: 0x5
// Checksum 0xc6a421a7, Offset: 0x100
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"sticky_grenade", &preinit, undefined, undefined, undefined);
}

// Namespace sticky_grenade/sticky_grenade
// Params 0, eflags: 0x6 linked
// Checksum 0xabd658a2, Offset: 0x148
// Size: 0x2a4
function private preinit() {
    callback::add_weapon_type(#"sticky_grenade", &spawned);
    callback::add_weapon_type(#"eq_sticky_grenade", &spawned);
    callback::add_weapon_type(#"hash_4b92b1a2aa3037f5", &spawned);
    callback::add_weapon_type(#"eq_cluster_semtex_grenade", &spawned);
    callback::add_weapon_type(#"hash_66401df7cd6bf292", &function_6054cc1e);
    callback::add_weapon_type(#"sig_bow_explosive", &function_117f61b8);
    callback::add_weapon_type(#"hash_494e1edad9bd44fd", &function_117f61b8);
    callback::add_weapon_type(#"hash_494e1ddad9bd434a", &function_117f61b8);
    callback::add_weapon_type(#"hash_494e18dad9bd3acb", &function_117f61b8);
    callback::add_weapon_type(#"sig_bow_quickshot", &spawned_arrow);
    callback::add_weapon_type(#"sig_bow_quickshot2", &spawned_arrow);
    callback::add_weapon_type(#"sig_bow_quickshot3", &spawned_arrow);
    callback::add_weapon_type(#"sig_bow_quickshot4", &spawned_arrow);
    callback::add_weapon_type(#"sig_bow_quickshot5", &spawned_arrow);
}

// Namespace sticky_grenade/sticky_grenade
// Params 1, eflags: 0x2 linked
// Checksum 0x9bb8933d, Offset: 0x3f8
// Size: 0x44
function spawned(localclientnum) {
    if (self isgrenadedud()) {
        return;
    }
    self thread fx_think(localclientnum, 1);
}

// Namespace sticky_grenade/sticky_grenade
// Params 1, eflags: 0x2 linked
// Checksum 0xd7f3b6c0, Offset: 0x448
// Size: 0x44
function spawned_arrow(localclientnum) {
    if (self isgrenadedud()) {
        return;
    }
    self thread fx_think(localclientnum, 2);
}

// Namespace sticky_grenade/sticky_grenade
// Params 1, eflags: 0x2 linked
// Checksum 0x5aaff78c, Offset: 0x498
// Size: 0x3c
function function_6054cc1e(localclientnum) {
    if (self isgrenadedud()) {
        return;
    }
    self thread function_c879d0fd(localclientnum);
}

// Namespace sticky_grenade/sticky_grenade
// Params 1, eflags: 0x2 linked
// Checksum 0xcac5b532, Offset: 0x4e0
// Size: 0x74
function function_117f61b8(localclientnum) {
    if (self isgrenadedud()) {
        return;
    }
    handle = self playsound(localclientnum, #"wpn_semtex_countdown");
    self thread stop_sound_on_ent_shutdown(handle);
}

// Namespace sticky_grenade/sticky_grenade
// Params 1, eflags: 0x2 linked
// Checksum 0xffd76a23, Offset: 0x560
// Size: 0x34
function stop_sound_on_ent_shutdown(handle) {
    self waittill(#"death");
    stopsound(handle);
}

// Namespace sticky_grenade/sticky_grenade
// Params 2, eflags: 0x2 linked
// Checksum 0x1abb1d6a, Offset: 0x5a0
// Size: 0x29a
function fx_think(localclientnum, var_1e60ee48) {
    self notify(#"light_disable");
    self endon(#"light_disable");
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    handle = self playsound(localclientnum, #"wpn_semtex_countdown");
    self thread stop_sound_on_ent_shutdown(handle);
    for (interval = 0.3; isdefined(self); interval = math::clamp(interval / 1.2, 0.08, 0.3)) {
        self stop_light_fx(localclientnum);
        localplayer = function_5c10bd79(localclientnum);
        if (!isdefined(localplayer)) {
            continue;
        }
        if (!localplayer isentitylinkedtotag(self, "j_head") && !localplayer isentitylinkedtotag(self, "j_elbow_le") && !localplayer isentitylinkedtotag(self, "j_spineupper")) {
            if (isdefined(self.weapon.customsettings)) {
                var_e6fbac16 = getscriptbundle(self.weapon.customsettings);
                if (isdefined(var_e6fbac16.var_b941081f) && isdefined(var_e6fbac16.var_40772cbe)) {
                    self start_light_fx(localclientnum, var_e6fbac16.var_b941081f, var_e6fbac16.var_40772cbe);
                }
            }
        }
        self fullscreen_fx(localclientnum, var_1e60ee48);
        util::server_wait(localclientnum, interval, 0.01, "player_switch");
        self util::waittill_dobj(localclientnum);
    }
}

// Namespace sticky_grenade/sticky_grenade
// Params 3, eflags: 0x2 linked
// Checksum 0xab5aef15, Offset: 0x848
// Size: 0x52
function start_light_fx(localclientnum, fx, tag) {
    self stop_light_fx(localclientnum);
    self.fx = util::playfxontag(localclientnum, fx, self, tag);
}

// Namespace sticky_grenade/sticky_grenade
// Params 1, eflags: 0x2 linked
// Checksum 0xb5d511c1, Offset: 0x8a8
// Size: 0x4e
function stop_light_fx(localclientnum) {
    if (isdefined(self.fx) && self.fx != 0) {
        stopfx(localclientnum, self.fx);
        self.fx = undefined;
    }
}

// Namespace sticky_grenade/sticky_grenade
// Params 1, eflags: 0x2 linked
// Checksum 0x489669ef, Offset: 0x900
// Size: 0x17a
function function_c879d0fd(localclientnum) {
    self notify(#"light_disable");
    self endon(#"light_disable");
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    interval = 0.3;
    if (isdefined(self.weapon.customsettings)) {
        var_e6fbac16 = getscriptbundle(self.weapon.customsettings);
        if (isdefined(var_e6fbac16.var_b941081f) && isdefined(var_e6fbac16.var_40772cbe)) {
            for (;;) {
                self stop_light_fx(localclientnum);
                self start_light_fx(localclientnum, var_e6fbac16.var_b941081f, var_e6fbac16.var_40772cbe);
                util::server_wait(localclientnum, interval, 0.01, "player_switch");
                self util::waittill_dobj(localclientnum);
                interval = math::clamp(interval / 1.2, 0.08, 0.3);
            }
        }
    }
}

// Namespace sticky_grenade/sticky_grenade
// Params 2, eflags: 0x2 linked
// Checksum 0x5453c7e2, Offset: 0xa88
// Size: 0xd8
function sticky_indicator(localclientnum, indicator) {
    stickyimagemodel = createuimodel(function_1df4c3b0(localclientnum, #"hash_6f4b11a0bee9b73d"), "stuckImageIndex");
    setuimodelvalue(stickyimagemodel, indicator);
    player = function_5c10bd79(localclientnum);
    while (isdefined(self)) {
        waitframe(1);
    }
    setuimodelvalue(stickyimagemodel, 0);
    if (isdefined(player)) {
        player notify(#"sticky_shutdown");
    }
}

// Namespace sticky_grenade/sticky_grenade
// Params 2, eflags: 0x2 linked
// Checksum 0x9ed6be65, Offset: 0xb68
// Size: 0x124
function fullscreen_fx(localclientnum, indicator) {
    if (function_1cbf351b(localclientnum)) {
        return;
    }
    if (util::is_player_view_linked_to_entity(localclientnum)) {
        return;
    }
    if (self function_ca024039()) {
        return;
    }
    parent = self getparententity();
    if (isdefined(parent) && parent function_21c0fa55()) {
        parent playrumbleonentity(localclientnum, "buzz_high");
        self playsound(localclientnum, #"wpn_semtex_alert");
        if (getdvarint(#"ui_hud_hardcore", 0) == 0) {
            self thread sticky_indicator(localclientnum, indicator);
        }
    }
}

