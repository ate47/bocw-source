// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_364bfa7e;

// Namespace namespace_364bfa7e/namespace_364bfa7e
// Params 0, eflags: 0x5
// Checksum 0xb1d67853, Offset: 0x178
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_4628a9543d238978", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_364bfa7e/namespace_364bfa7e
// Params 0, eflags: 0x6 linked
// Checksum 0x463f6420, Offset: 0x1c0
// Size: 0x17c
function private function_70a657d8() {
    if (!is_true(getgametypesetting(#"hash_6143c4e1e18f08fd"))) {
        return;
    }
    clientfield::register("scriptmover", "register_weapon_cache", 1, 1, "int", &function_5c346ca, 0, 0);
    clientfield::register("toplayer", "weapon_cache_ammo_cooldown", 1, 1, "int", &function_ce75a340, 0, 0);
    clientfield::register("toplayer", "weapon_cache_cac_cooldown", 1, 1, "int", &function_32e7acec, 0, 0);
    callback::on_localplayer_spawned(&on_localplayer_spawned);
    callback::on_localclient_connect(&_on_localclient_connect);
    level.var_745f6ccb = [];
    level.var_2e44d000 = [];
    level.var_a979e61b = &function_a979e61b;
}

// Namespace namespace_364bfa7e/namespace_364bfa7e
// Params 1, eflags: 0x6 linked
// Checksum 0xb5dffa62, Offset: 0x348
// Size: 0x7c
function private _on_localclient_connect(localclientnum) {
    level.var_745f6ccb[localclientnum] = 0;
    level.var_2e44d000[localclientnum] = 0;
    setuimodelvalue(createuimodel(function_1df4c3b0(localclientnum, #"hash_6f4b11a0bee9b73d"), "weaponCachePromptState"), 1);
}

// Namespace namespace_364bfa7e/namespace_364bfa7e
// Params 1, eflags: 0x6 linked
// Checksum 0xa83318fc, Offset: 0x3d0
// Size: 0x3c
function private on_localplayer_spawned(localclientnum) {
    if (self function_da43934d()) {
        self thread function_e18d0975(localclientnum);
    }
}

// Namespace namespace_364bfa7e/namespace_364bfa7e
// Params 7, eflags: 0x6 linked
// Checksum 0x8def42e6, Offset: 0x418
// Size: 0x8c
function private function_5c346ca(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level.var_b5f67dff)) {
        level.var_b5f67dff = [];
    }
    arrayremovevalue(level.var_b5f67dff, undefined, 0);
    level.var_b5f67dff[level.var_b5f67dff.size] = self;
}

// Namespace namespace_364bfa7e/namespace_364bfa7e
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
    foreach (var_364bfa7e in level.var_b5f67dff) {
        level.var_2e44d000[fieldname] = bwastimejump;
        function_f3b7c879(fieldname);
        if (bwastimejump == 1) {
            if (!isdefined(var_364bfa7e.var_1563bf09)) {
                var_364bfa7e.var_1563bf09.var_364bfa7e = util::getnextobjid(fieldname);
                objective_add(fieldname, var_364bfa7e.var_1563bf09, "active", #"hash_60b265ded94ea645", var_364bfa7e.origin, self.team, self);
            } else {
                objective_setstate(fieldname, var_364bfa7e.var_1563bf09, "active");
            }
            var_364bfa7e thread function_366dfc57(fieldname, var_364bfa7e.var_1563bf09, 60);
        } else if (isdefined(var_364bfa7e.var_1563bf09)) {
            var_364bfa7e notify(#"hash_21d2c3e2020a95a3");
            objective_setprogress(fieldname, var_364bfa7e.var_1563bf09, 1);
            objective_setstate(fieldname, var_364bfa7e.var_1563bf09, "invisible");
        }
    }
}

// Namespace namespace_364bfa7e/namespace_364bfa7e
// Params 3, eflags: 0x2 linked
// Checksum 0x86ebc60, Offset: 0x750
// Size: 0xfc
function function_366dfc57(localclientnum, obj_id, cooldowntime) {
    self endon(#"hash_21d2c3e2020a95a3");
    level endon(#"disconnect", #"game_ended");
    endtime = cooldowntime - 4;
    progress = 0;
    while (progress < endtime) {
        percent = min(1, progress / endtime);
        objective_setprogress(localclientnum, obj_id, percent);
        wait(0.15);
        progress = progress + 0.15;
    }
    if (!isdefined(self)) {
        objective_delete(localclientnum, obj_id);
    }
}

// Namespace namespace_364bfa7e/namespace_364bfa7e
// Params 7, eflags: 0x6 linked
// Checksum 0x32dcdea8, Offset: 0x858
// Size: 0x298
function private function_32e7acec(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self)) {
        return;
    }
    self util::waittill_dobj(fieldname);
    if (!isdefined(self) || !self isplayer() || !self function_da43934d() || !isdefined(level.var_b5f67dff)) {
        return;
    }
    arrayremovevalue(level.var_b5f67dff, undefined, 0);
    foreach (var_364bfa7e in level.var_b5f67dff) {
        level.var_745f6ccb[fieldname] = bwastimejump;
        function_f3b7c879(fieldname);
        if (bwastimejump == 1) {
            if (!isdefined(var_364bfa7e.var_decd4745)) {
                var_364bfa7e.var_decd4745.var_364bfa7e = util::getnextobjid(fieldname);
                objective_add(fieldname, var_364bfa7e.var_decd4745, "active", #"hash_53b2e93d1661a0a4", var_364bfa7e.origin, self.team, self);
            } else {
                objective_setstate(fieldname, var_364bfa7e.var_decd4745, "active");
            }
            var_364bfa7e thread function_366dfc57(fieldname, var_364bfa7e.var_decd4745, 120);
        } else if (isdefined(var_364bfa7e.var_decd4745)) {
            var_364bfa7e notify(#"hash_21d2c3e2020a95a3");
            objective_setprogress(fieldname, var_364bfa7e.var_decd4745, 1);
            objective_setstate(fieldname, var_364bfa7e.var_decd4745, "invisible");
        }
    }
}

// Namespace namespace_364bfa7e/namespace_364bfa7e
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
    var_364bfa7e = function_2cf636b5(localclientnum);
    if (!isdefined(var_364bfa7e)) {
        return 0;
    }
    if (level.var_745f6ccb[localclientnum] == 0) {
        function_cfade99b(localclientnum);
        return 1;
    }
    return 0;
}

// Namespace namespace_364bfa7e/namespace_364bfa7e
// Params 1, eflags: 0x2 linked
// Checksum 0xf9fde161, Offset: 0xbd8
// Size: 0xb0
function function_e18d0975(localclientnum) {
    self endon(#"shutdown", #"death");
    self notify("5fa89c4a37364797");
    self endon("5fa89c4a37364797");
    var_bd0cdac3 = "weapon_cache_cac_request";
    var_b784f644 = var_bd0cdac3 + localclientnum;
    while (1) {
        util::waittill_any_ents(self, var_bd0cdac3, level, var_b784f644);
        self function_a979e61b(localclientnum);
    }
}

// Namespace namespace_364bfa7e/namespace_364bfa7e
// Params 1, eflags: 0x6 linked
// Checksum 0x8130765c, Offset: 0xc90
// Size: 0x134
function private function_2cf636b5(localclientnum) {
    if (!isdefined(level.var_b5f67dff)) {
        return undefined;
    }
    playerorigin = getlocalclienteyepos(localclientnum);
    foreach (var_364bfa7e in level.var_b5f67dff) {
        if (!isdefined(var_364bfa7e)) {
            continue;
        }
        if (distance2dsquared(playerorigin, var_364bfa7e.origin) > function_a3f6cdac(96) || abs(playerorigin[2] - var_364bfa7e.origin[2]) > 96) {
            continue;
        }
        return var_364bfa7e;
    }
}

// Namespace namespace_364bfa7e/namespace_364bfa7e
// Params 1, eflags: 0x6 linked
// Checksum 0x20e08c16, Offset: 0xdd0
// Size: 0x14c
function private function_f3b7c879(localclientnum) {
    var_acc39f5a = function_1df4c3b0(localclientnum, #"hash_6f4b11a0bee9b73d");
    var_56436909 = getuimodel(var_acc39f5a, "weaponCachePromptState");
    var_559f3f0d = is_true(level.var_2e44d000[localclientnum]);
    var_1d992cd3 = is_true(level.var_745f6ccb[localclientnum]);
    if (var_559f3f0d && var_1d992cd3) {
        setuimodelvalue(var_56436909, 0);
    } else if (var_559f3f0d) {
        setuimodelvalue(var_56436909, 1);
    } else if (var_1d992cd3) {
        setuimodelvalue(var_56436909, 1);
    } else {
        setuimodelvalue(var_56436909, 1);
    }
}

