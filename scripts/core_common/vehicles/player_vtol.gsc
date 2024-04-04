// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\turret_shared.gsc;
#using scripts\core_common\targetting_delay.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\killstreaks\airsupport.gsc;
#using scripts\weapons\heatseekingmissile.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace player_vtol;

// Namespace player_vtol/player_vtol
// Params 0, eflags: 0x5
// Checksum 0x63f5a619, Offset: 0xf8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"player_vtol", &preinit, undefined, undefined, undefined);
}

// Namespace player_vtol/player_vtol
// Params 0, eflags: 0x6 linked
// Checksum 0x5e521a2d, Offset: 0x140
// Size: 0x2c
function private preinit() {
    vehicle::add_main_callback("player_vtol", &function_1b39ded0);
}

// Namespace player_vtol/player_vtol
// Params 0, eflags: 0x2 linked
// Checksum 0x6262085a, Offset: 0x178
// Size: 0xdc
function function_1b39ded0() {
    self function_803e9bf3(1);
    self.numflares = 1;
    self.var_fc0dee44 = 10000;
    bundle = killstreaks::get_script_bundle("hoverjet");
    self thread heatseekingmissile::missiletarget_proximitydetonateincomingmissile(bundle, "death", "dodge_missile", 1);
    self.var_51e39f11 = [];
    self thread function_7d2e878c();
    self thread function_fcc7ca52();
    self thread targetting_delay::function_7e1a12ce(self.var_fc0dee44);
}

// Namespace player_vtol/player_vtol
// Params 0, eflags: 0x2 linked
// Checksum 0x78b478e7, Offset: 0x260
// Size: 0xa8
function function_fcc7ca52() {
    self endon(#"death");
    for (;;) {
        params = self waittill(#"gunner_weapon_fired");
        if (params.gunner_index === 1) {
            self turretsettarget(2, self turretgettarget(1));
            self fireweapon(2, undefined, undefined, self);
        }
    }
}

// Namespace player_vtol/event_5fafee73
// Params 0, eflags: 0x20
// Checksum 0x9332faec, Offset: 0x310
// Size: 0x12c
function event_handler[event_5fafee73] function_49e8c140() {
    if (target_istarget(self)) {
        target_remove(self);
    }
    foreach (missile in self.var_51e39f11) {
        if (isdefined(missile)) {
            missile missile_settarget(undefined);
        }
    }
    self.var_51e39f11 = [];
    self notify(#"dodge_missile");
    bundle = killstreaks::get_script_bundle("hoverjet");
    self thread heatseekingmissile::missiletarget_proximitydetonateincomingmissile(bundle, "death", "dodge_missile", 1);
}

// Namespace player_vtol/event_a1da12f0
// Params 0, eflags: 0x20
// Checksum 0x84c13e09, Offset: 0x448
// Size: 0x1c
function event_handler[event_a1da12f0] function_9d2a2309() {
    target_set(self);
}

// Namespace player_vtol/player_vtol
// Params 0, eflags: 0x2 linked
// Checksum 0xe48cb87b, Offset: 0x470
// Size: 0xc4
function function_7d2e878c() {
    level endon(#"game_ended");
    self endon(#"death");
    for (;;) {
        waitresult = self waittill(#"stinger_fired_at_me");
        if (!isdefined(self.var_51e39f11)) {
            self.var_51e39f11 = [];
        } else if (!isarray(self.var_51e39f11)) {
            self.var_51e39f11 = array(self.var_51e39f11);
        }
        self.var_51e39f11[self.var_51e39f11.size] = waitresult.projectile;
    }
}

// Namespace player_vtol/player_vtol
// Params 1, eflags: 0x0
// Checksum 0xf43e6ce2, Offset: 0x540
// Size: 0x54
function function_ff2361d1(target) {
    self waittill(#"death");
    if (isdefined(target) && isdefined(target.var_51e39f11)) {
        arrayremovevalue(target.var_51e39f11, self);
    }
}

