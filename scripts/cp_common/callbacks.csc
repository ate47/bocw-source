// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\cp\explosive_bolt.csc;
#using scripts\cp_common\callbacks.csc;
#using scripts\core_common\vehicle_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\footsteps_shared.csc;
#using scripts\core_common\exploder_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\audio_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace callback;

// Namespace callback/callbacks
// Params 0, eflags: 0x5
// Checksum 0xebad4c22, Offset: 0x110
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"callback", &preinit, undefined, undefined, undefined);
}

// Namespace callback/callbacks
// Params 0, eflags: 0x6 linked
// Checksum 0xec9f3ff8, Offset: 0x158
// Size: 0x1c
function private preinit() {
    level thread set_default_callbacks();
}

// Namespace callback/callbacks
// Params 0, eflags: 0x2 linked
// Checksum 0xa59661e2, Offset: 0x180
// Size: 0xf4
function set_default_callbacks() {
    level.callbackplayerspawned = &playerspawned;
    level.callbacklocalclientconnect = &localclientconnect;
    level.callbackcreatingcorpse = &creating_corpse;
    level.callbackentityspawned = &entityspawned;
    level.callbackplayaifootstep = &footsteps::playaifootstep;
    level.var_4564d138 = &function_e551f1ce;
    level.var_6bd86801 = &function_1786cd9e;
    level.var_bad05810 = &function_c3238310;
    level._custom_weapon_cb_func = &spawned_weapon_type;
    level.var_6b11d5f6 = &function_cbfd8fd6;
}

// Namespace callback/callbacks
// Params 1, eflags: 0x2 linked
// Checksum 0x2e987e36, Offset: 0x280
// Size: 0x9c
function localclientconnect(localclientnum) {
    println("<unknown string>" + localclientnum);
    if (isdefined(level.charactercustomizationsetup)) {
        [[ level.charactercustomizationsetup ]](localclientnum);
    }
    if (isdefined(level.weaponcustomizationiconsetup)) {
        [[ level.weaponcustomizationiconsetup ]](localclientnum);
    }
    callback(#"on_localclient_connect", localclientnum);
}

// Namespace callback/callbacks
// Params 1, eflags: 0x2 linked
// Checksum 0x30be1950, Offset: 0x328
// Size: 0xc4
function playerspawned(localclientnum) {
    self endon(#"death");
    util::function_89a98f85();
    if (isdefined(level.infraredvisionset)) {
        function_8608b950(localclientnum, level.infraredvisionset);
    }
    if (self function_21c0fa55()) {
        callback(#"on_localplayer_spawned", localclientnum);
    }
    callback(#"on_player_spawned", localclientnum);
}

// Namespace callback/callbacks
// Params 1, eflags: 0x2 linked
// Checksum 0x55b41880, Offset: 0x3f8
// Size: 0x300
function entityspawned(localclientnum) {
    self endon(#"death");
    util::function_89a98f85();
    if (!isdefined(self.type)) {
        println("<unknown string>");
        return;
    }
    if (isplayer(self)) {
        if (isdefined(level._clientfaceanimonplayerspawned)) {
            self thread [[ level._clientfaceanimonplayerspawned ]](localclientnum);
        }
    }
    if (self.type == "missile") {
        if (isdefined(level._custom_weapon_cb_func)) {
            self thread [[ level._custom_weapon_cb_func ]](localclientnum);
        }
        switch (self.weapon.name) {
        case #"explosive_bolt":
            self thread explosive_bolt::spawned(localclientnum);
            break;
        }
        return;
    }
    if (self.type == "vehicle" || self.type == "helicopter" || self.type == "plane") {
        if (isdefined(level._customvehiclecbfunc)) {
            self thread [[ level._customvehiclecbfunc ]](localclientnum);
        }
        self thread vehicle::field_toggle_exhaustfx_handler(localclientnum, undefined, 0, 1);
        self thread vehicle::field_toggle_lights_handler(localclientnum, undefined, 0, 1);
        if (self.vehicleclass == "plane" || self.vehicleclass == "helicopter") {
            self thread vehicle::aircraft_dustkick();
        }
        return;
    }
    if (self.type == "actor") {
        self enableonradar();
        if (isdefined(level._customactorcbfunc)) {
            self thread [[ level._customactorcbfunc ]](localclientnum);
        }
        self callback(#"hash_1fc6e31d0d02aa3", localclientnum);
        return;
    }
    if (self.type == "NA") {
        if (isdefined(self.weapon)) {
            if (isdefined(level.var_6b11d5f6)) {
                self thread [[ level.var_6b11d5f6 ]](localclientnum);
            }
        }
        return;
    }
    if (self function_8d8e91af()) {
        if (isdefined(level.var_9d3b5cf9)) {
            self thread [[ level.var_9d3b5cf9 ]](localclientnum);
        }
    }
}

// Namespace callback/callbacks
// Params 2, eflags: 0x2 linked
// Checksum 0x2c4a5268, Offset: 0x700
// Size: 0x14
function creating_corpse(*localclientnum, *player) {
    
}

// Namespace callback/callbacks
// Params 7, eflags: 0x0
// Checksum 0x4c6ec832, Offset: 0x720
// Size: 0x96
function callback_stunned(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.stunned = bwastimejump;
    println("<unknown string>");
    if (bwastimejump) {
        self notify(#"stunned");
        return;
    }
    self notify(#"not_stunned");
}

// Namespace callback/callbacks
// Params 7, eflags: 0x0
// Checksum 0x1bf52673, Offset: 0x7c0
// Size: 0x96
function callback_emp(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.emp = bwastimejump;
    println("<unknown string>");
    if (bwastimejump) {
        self notify(#"emp");
        return;
    }
    self notify(#"not_emp");
}

// Namespace callback/callbacks
// Params 7, eflags: 0x0
// Checksum 0xfd6f4b97, Offset: 0x860
// Size: 0x4a
function callback_proximity(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.enemyinproximity = bwastimejump;
}

// Namespace callback/callbacks
// Params 0, eflags: 0x2 linked
// Checksum 0x4c6c8271, Offset: 0x8b8
// Size: 0x138
function function_19bd6f4f() {
    for (localclientnum = 0; localclientnum < level.localplayers.size; localclientnum++) {
        foreach (luielems in level.var_a706401b) {
            foreach (luielem in luielems) {
                if ([[ luielem.var_34327e5a ]]->is_open(localclientnum)) {
                    [[ luielem.var_34327e5a ]]->close(localclientnum);
                }
            }
        }
    }
}

// Namespace callback/callbacks
// Params 0, eflags: 0x2 linked
// Checksum 0x89323061, Offset: 0x9f8
// Size: 0x24
function function_a578d98() {
    if (!level.var_4fe1773a) {
        audio::function_d3790fe();
    }
}

// Namespace callback/callbacks
// Params 0, eflags: 0x2 linked
// Checksum 0x7f58f4eb, Offset: 0xa28
// Size: 0x14
function function_e551f1ce() {
    function_19bd6f4f();
}

// Namespace callback/callbacks
// Params 0, eflags: 0x2 linked
// Checksum 0x30463cda, Offset: 0xa48
// Size: 0x14
function function_1786cd9e() {
    function_19bd6f4f();
}

// Namespace callback/callbacks
// Params 0, eflags: 0x2 linked
// Checksum 0xed14444d, Offset: 0xa68
// Size: 0x14
function function_c3238310() {
    function_a578d98();
}

