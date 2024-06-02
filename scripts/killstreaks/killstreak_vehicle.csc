// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\visionset_mgr_shared.csc;
#using scripts\core_common\vehicles\driving_fx.csc;
#using scripts\core_common\vehicle_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\killstreaks\killstreak_bundles.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace killstreak_vehicle;

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 0, eflags: 0x2 linked
// Checksum 0xbb23dfe8, Offset: 0x120
// Size: 0x2c
function init() {
    level._effect[#"rcbomb_stunned"] = #"hash_622d3cdb93e01de5";
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x2 linked
// Checksum 0x7f50863d, Offset: 0x158
// Size: 0x7c
function init_killstreak(bundle) {
    if (isdefined(bundle.ksvehicle)) {
        vehicle::add_vehicletype_callback(bundle.ksvehicle, &spawned, bundle);
    }
    if (isdefined(bundle.var_486124e6)) {
        visionset_mgr::register_overlay_info_style_postfx_bundle(bundle.var_486124e6, 1, 1, bundle.var_486124e6);
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 2, eflags: 0x2 linked
// Checksum 0xbc0bc251, Offset: 0x1e0
// Size: 0xbc
function spawned(localclientnum, bundle) {
    self thread demo_think(localclientnum);
    self thread stunnedhandler(localclientnum);
    self thread boost_think(localclientnum);
    self thread shutdown_think(localclientnum);
    self.driving_fx_collision_override = &ondrivingfxcollision;
    self.driving_fx_jump_landing_override = &ondrivingfxjumplanding;
    self killstreak_bundles::spawned(localclientnum, bundle);
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x2 linked
// Checksum 0x9fba2aa2, Offset: 0x2a8
// Size: 0x78
function demo_think(localclientnum) {
    self endon(#"death");
    if (!isdemoplaying()) {
        return;
    }
    for (;;) {
        level waittill(#"demo_jump", #"demo_player_switch");
        self vehicle::lights_off(localclientnum);
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x2 linked
// Checksum 0x5e0e7c3e, Offset: 0x328
// Size: 0x114
function boost_blur(localclientnum) {
    self endon(#"death");
    if (isdefined(self.owner) && self.owner function_21c0fa55()) {
        enablespeedblur(localclientnum, getdvarfloat(#"scr_rcbomb_amount", 0.1), getdvarfloat(#"scr_rcbomb_inner_radius", 0.5), getdvarfloat(#"scr_rcbomb_outer_radius", 0.75), 0, 0);
        wait(getdvarfloat(#"scr_rcbomb_duration", 1));
        disablespeedblur(localclientnum);
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x2 linked
// Checksum 0xb12a9fff, Offset: 0x448
// Size: 0x50
function boost_think(localclientnum) {
    self endon(#"death");
    for (;;) {
        self waittill(#"veh_boost");
        self boost_blur(localclientnum);
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x2 linked
// Checksum 0x274945e6, Offset: 0x4a0
// Size: 0x34
function shutdown_think(localclientnum) {
    self waittill(#"death");
    disablespeedblur(localclientnum);
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x0
// Checksum 0x6114d59, Offset: 0x4e0
// Size: 0xa0
function play_boost_fx(localclientnum) {
    self endon(#"death");
    while (true) {
        speed = self getspeed();
        if (speed > 400) {
            self playsound(localclientnum, #"mpl_veh_rc_boost");
            return;
        }
        util::server_wait(localclientnum, 0.1);
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x2 linked
// Checksum 0x1c7cf202, Offset: 0x588
// Size: 0xa0
function stunnedhandler(localclientnum) {
    self endon(#"death");
    self thread enginestutterhandler(localclientnum);
    while (true) {
        self waittill(#"stunned");
        self setstunned(1);
        self thread notstunnedhandler(localclientnum);
        self thread play_stunned_fx_handler(localclientnum);
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x2 linked
// Checksum 0xbb24b3cb, Offset: 0x630
// Size: 0x5c
function notstunnedhandler(*localclientnum) {
    self endon(#"death");
    self endon(#"stunned");
    self waittill(#"not_stunned");
    self setstunned(0);
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x2 linked
// Checksum 0xa011feb7, Offset: 0x698
// Size: 0x90
function play_stunned_fx_handler(localclientnum) {
    self endon(#"death");
    self endon(#"stunned");
    self endon(#"not_stunned");
    while (true) {
        util::playfxontag(localclientnum, level._effect[#"rcbomb_stunned"], self, "tag_origin");
        wait(0.5);
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 1, eflags: 0x2 linked
// Checksum 0xffa6b0f, Offset: 0x730
// Size: 0x70
function enginestutterhandler(localclientnum) {
    self endon(#"death");
    while (true) {
        self waittill(#"veh_engine_stutter");
        if (self function_4add50a7()) {
            function_36e4ebd4(localclientnum, "rcbomb_engine_stutter");
        }
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 5, eflags: 0x2 linked
// Checksum 0x3805ca7e, Offset: 0x7a8
// Size: 0x11c
function ondrivingfxcollision(localclientnum, player, *hip, *hitn, hit_intensity) {
    if (isdefined(hit_intensity) && hit_intensity > 15) {
        volume = driving_fx::get_impact_vol_from_speed();
        if (isdefined(self.sounddef)) {
            alias = self.sounddef + "_suspension_lg_hd";
        } else {
            alias = "veh_default_suspension_lg_hd";
        }
        id = playsound(0, alias, self.origin, volume);
        earthquake(hip, 0.7, 0.25, hitn.origin, 1500);
        hitn playrumbleonentity(hip, "damage_heavy");
    }
}

// Namespace killstreak_vehicle/killstreak_vehicle
// Params 2, eflags: 0x2 linked
// Checksum 0x9c3a3743, Offset: 0x8d0
// Size: 0x14
function ondrivingfxjumplanding(*localclientnum, *player) {
    
}

