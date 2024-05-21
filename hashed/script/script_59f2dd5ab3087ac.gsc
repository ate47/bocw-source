// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace weapon_cache;

// Namespace weapon_cache/weapon_cache
// Params 0, eflags: 0x5
// Checksum 0xb1d67853, Offset: 0x178
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"weapon_cache", &preinit, undefined, undefined, undefined);
}

// Namespace weapon_cache/weapon_cache
// Params 0, eflags: 0x6 linked
// Checksum 0x463f6420, Offset: 0x1c0
// Size: 0x17c
function private preinit() {
    if (!is_true(getgametypesetting(#"hash_6143c4e1e18f08fd"))) {
        return;
    }
    clientfield::register("scriptmover", "register_weapon_cache", 1, 1, "int", &register_weapon_cache, 0, 0);
    clientfield::register("toplayer", "weapon_cache_ammo_cooldown", 1, 1, "int", &function_ce75a340, 0, 0);
    clientfield::register("toplayer", "weapon_cache_cac_cooldown", 1, 1, "int", &weapon_cache_cac_cooldown, 0, 0);
    callback::on_localplayer_spawned(&on_localplayer_spawned);
    callback::on_localclient_connect(&_on_localclient_connect);
    level.var_745f6ccb = [];
    level.var_2e44d000 = [];
    level.var_a979e61b = &function_a979e61b;
}

// Namespace weapon_cache/weapon_cache
// Params 1, eflags: 0x6 linked
// Checksum 0xb5dffa62, Offset: 0x348
// Size: 0x7c
function private _on_localclient_connect(localclientnum) {
    level.var_745f6ccb[localclientnum] = 0;
    level.var_2e44d000[localclientnum] = 0;
    setuimodelvalue(createuimodel(function_1df4c3b0(localclientnum, #"hash_6f4b11a0bee9b73d"), "weaponCachePromptState"), 1);
}

// Namespace weapon_cache/weapon_cache
// Params 1, eflags: 0x6 linked
// Checksum 0xa83318fc, Offset: 0x3d0
// Size: 0x3c
function private on_localplayer_spawned(localclientnum) {
    if (self function_da43934d()) {
        self thread function_e18d0975(localclientnum);
    }
}

// Namespace weapon_cache/weapon_cache
// Params 7, eflags: 0x6 linked
// Checksum 0x8def42e6, Offset: 0x418
// Size: 0x8c
function private register_weapon_cache(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level.var_b5f67dff)) {
        level.var_b5f67dff = [];
    }
    arrayremovevalue(level.var_b5f67dff, undefined, 0);
    level.var_b5f67dff[level.var_b5f67dff.size] = self;
}

// Namespace weapon_cache/weapon_cache
// Params 7, eflags: 0x6 linked
// Checksum 0xe4622382, Offset: 0x4b0
// Size: 0x298
function private function_ce75a340(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self)) {
        return;
    }
    self util::waittill_dobj(fieldname);
    if (!isdefined(self) || !self isplayer() || !self function_da43934d() || !isdefined(level.var_b5f67dff)) {
        return;
    }
    arrayremovevalue(level.var_b5f67dff, undefined, 0);
    foreach (weapon_cache in level.var_b5f67dff) {
        level.var_2e44d000[fieldname] = bwastimejump;
        function_f3b7c879(fieldname);
        if (bwastimejump == 1) {
            if (!isdefined(weapon_cache.var_1563bf09)) {
                weapon_cache.var_1563bf09 = util::getnextobjid(fieldname);
                objective_add(fieldname, weapon_cache.var_1563bf09, "active", #"hash_60b265ded94ea645", weapon_cache.origin, self.team, self);
            } else {
                objective_setstate(fieldname, weapon_cache.var_1563bf09, "active");
            }
            weapon_cache thread updateprogress(fieldname, weapon_cache.var_1563bf09, 60);
            continue;
        }
        if (isdefined(weapon_cache.var_1563bf09)) {
            weapon_cache notify(#"hash_21d2c3e2020a95a3");
            objective_setprogress(fieldname, weapon_cache.var_1563bf09, 1);
            objective_setstate(fieldname, weapon_cache.var_1563bf09, "invisible");
        }
    }
}

// Namespace weapon_cache/weapon_cache
// Params 3, eflags: 0x2 linked
// Checksum 0x86ebc60, Offset: 0x750
// Size: 0xfc
function updateprogress(localclientnum, obj_id, cooldowntime) {
    self endon(#"hash_21d2c3e2020a95a3");
    level endon(#"disconnect", #"game_ended");
    endtime = cooldowntime - 4;
    for (progress = 0; progress < endtime; progress += 0.15) {
        percent = min(1, progress / endtime);
        objective_setprogress(localclientnum, obj_id, percent);
        wait(0.15);
    }
    if (!isdefined(self)) {
        objective_delete(localclientnum, obj_id);
    }
}

// Namespace weapon_cache/weapon_cache
// Params 7, eflags: 0x6 linked
// Checksum 0x32dcdea8, Offset: 0x858
// Size: 0x298
function private weapon_cache_cac_cooldown(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self)) {
        return;
    }
    self util::waittill_dobj(fieldname);
    if (!isdefined(self) || !self isplayer() || !self function_da43934d() || !isdefined(level.var_b5f67dff)) {
        return;
    }
    arrayremovevalue(level.var_b5f67dff, undefined, 0);
    foreach (weapon_cache in level.var_b5f67dff) {
        level.var_745f6ccb[fieldname] = bwastimejump;
        function_f3b7c879(fieldname);
        if (bwastimejump == 1) {
            if (!isdefined(weapon_cache.var_decd4745)) {
                weapon_cache.var_decd4745 = util::getnextobjid(fieldname);
                objective_add(fieldname, weapon_cache.var_decd4745, "active", #"hash_53b2e93d1661a0a4", weapon_cache.origin, self.team, self);
            } else {
                objective_setstate(fieldname, weapon_cache.var_decd4745, "active");
            }
            weapon_cache thread updateprogress(fieldname, weapon_cache.var_decd4745, 120);
            continue;
        }
        if (isdefined(weapon_cache.var_decd4745)) {
            weapon_cache notify(#"hash_21d2c3e2020a95a3");
            objective_setprogress(fieldname, weapon_cache.var_decd4745, 1);
            objective_setstate(fieldname, weapon_cache.var_decd4745, "invisible");
        }
    }
}

// Namespace weapon_cache/weapon_cache
// Params 1, eflags: 0x6 linked
// Checksum 0x616ba8fa, Offset: 0xaf8
// Size: 0xd4
function private function_a979e61b(localclientnum) {
    if (getdvarint(#"hash_48fb7bd68329f4e1", 0) == 0) {
        return;
    }
    if (!isalive(self)) {
        return;
    }
    if (self.weapon.statname === #"ultimate_turret") {
        return 0;
    }
    weapon_cache = function_2cf636b5(localclientnum);
    if (!isdefined(weapon_cache)) {
        return 0;
    }
    if (level.var_745f6ccb[localclientnum] == 0) {
        function_cfade99b(localclientnum);
        return 1;
    }
    return 0;
}

// Namespace weapon_cache/weapon_cache
// Params 1, eflags: 0x2 linked
// Checksum 0xf9fde161, Offset: 0xbd8
// Size: 0xb0
function function_e18d0975(localclientnum) {
    self endon(#"shutdown", #"death");
    self notify("5fa89c4a37364797");
    self endon("5fa89c4a37364797");
    var_bd0cdac3 = "weapon_cache_cac_request";
    var_b784f644 = var_bd0cdac3 + localclientnum;
    while (true) {
        util::waittill_any_ents(self, var_bd0cdac3, level, var_b784f644);
        self function_a979e61b(localclientnum);
    }
}

// Namespace weapon_cache/weapon_cache
// Params 1, eflags: 0x6 linked
// Checksum 0x8130765c, Offset: 0xc90
// Size: 0x134
function private function_2cf636b5(localclientnum) {
    if (!isdefined(level.var_b5f67dff)) {
        return undefined;
    }
    playerorigin = getlocalclienteyepos(localclientnum);
    foreach (weapon_cache in level.var_b5f67dff) {
        if (!isdefined(weapon_cache)) {
            continue;
        }
        if (distance2dsquared(playerorigin, weapon_cache.origin) > sqr(96) || abs(playerorigin[2] - weapon_cache.origin[2]) > 96) {
            continue;
        }
        return weapon_cache;
    }
}

// Namespace weapon_cache/weapon_cache
// Params 1, eflags: 0x6 linked
// Checksum 0x20e08c16, Offset: 0xdd0
// Size: 0x14c
function private function_f3b7c879(localclientnum) {
    huditemsmodel = function_1df4c3b0(localclientnum, #"hash_6f4b11a0bee9b73d");
    var_56436909 = getuimodel(huditemsmodel, "weaponCachePromptState");
    var_559f3f0d = is_true(level.var_2e44d000[localclientnum]);
    var_1d992cd3 = is_true(level.var_745f6ccb[localclientnum]);
    if (var_559f3f0d && var_1d992cd3) {
        setuimodelvalue(var_56436909, 0);
        return;
    }
    if (var_559f3f0d) {
        setuimodelvalue(var_56436909, 1);
        return;
    }
    if (var_1d992cd3) {
        setuimodelvalue(var_56436909, 1);
        return;
    }
    setuimodelvalue(var_56436909, 1);
}

