// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\player\player_stats.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\struct.csc;
#using script_474309807eb94f34;

#namespace activecamo;

// Namespace activecamo/activecamo_shared
// Params 0, eflags: 0x5
// Checksum 0x895f032d, Offset: 0x190
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"activecamo", &preinit, undefined, undefined, undefined);
}

// Namespace activecamo/activecamo_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x1b6bf8bd, Offset: 0x1d8
// Size: 0xd4
function private preinit() {
    callback::add_callback(#"updateactivecamo", &updateactivecamo);
    callback::on_spawned(&on_player_spawned);
    callback::on_weapon_change(&on_weapon_change);
    callback::on_localplayer_spawned(&on_local_player_spawned);
    level.var_b9b11197 = getgametypesetting(#"hash_1f3825ba2a669400");
    /#
        thread function_12e53b2d();
    #/
}

// Namespace activecamo/activecamo_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xede9ca66, Offset: 0x2b8
// Size: 0x44
function private on_local_player_spawned(localclientnum) {
    if (!self function_21c0fa55()) {
        return;
    }
    function_e3e0feb5(localclientnum, self);
}

// Namespace activecamo/activecamo_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xa37bc04b, Offset: 0x308
// Size: 0x198
function private function_e3e0feb5(localclientnum, localplayer) {
    players = getplayers(localclientnum);
    foreach (player in players) {
        if (!isdefined(player) || !player isplayer() || !isalive(player)) {
            continue;
        }
        if (player === localplayer) {
            continue;
        }
        if (!player hasdobj(localclientnum)) {
            continue;
        }
        weapon = player function_d2c2b168();
        weaponoptions = player function_e10e6c37();
        stagenum = getactivecamostage(weaponoptions);
        player function_350f0d(localclientnum, weapon, "tag_weapon_right", stagenum, 1, weaponoptions);
    }
}

// Namespace activecamo/activecamo_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x9459cdd7, Offset: 0x4a8
// Size: 0xd4
function private on_weapon_change(params) {
    if (self == level || !isplayer(self)) {
        return;
    }
    localclientnum = params.localclientnum;
    weapon = self function_d2c2b168();
    weaponoptions = self function_e10e6c37();
    stagenum = getactivecamostage(weaponoptions);
    self function_350f0d(localclientnum, weapon, "tag_weapon_right", stagenum, 1, weaponoptions);
}

// Namespace activecamo/activecamo_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x27fa7360, Offset: 0x588
// Size: 0x9c
function private on_player_spawned(localclientnum) {
    weapon = self function_d2c2b168();
    weaponoptions = self function_e10e6c37();
    stagenum = getactivecamostage(weaponoptions);
    self function_350f0d(localclientnum, weapon, "tag_weapon_right", stagenum, 1, weaponoptions);
}

// Namespace activecamo/activecamo_shared
// Params 4, eflags: 0x6 linked
// Checksum 0x6f2cdb4d, Offset: 0x630
// Size: 0x13e
function private function_451a49f4(localclientnum, var_f4eb4a50, weapon, stagenum) {
    activecamo = self init_activecamo(var_f4eb4a50, 0);
    if (isdefined(activecamo)) {
        if (!isdefined(activecamo.var_fe56592)) {
            activecamo.var_fe56592 = [];
        }
        if (!isdefined(activecamo.var_fe56592[localclientnum])) {
            activecamo.var_fe56592[localclientnum] = {};
        }
        if (!isdefined(activecamo.var_fe56592[localclientnum].var_dd54a13b)) {
            activecamo.var_fe56592[localclientnum].var_dd54a13b = [];
        }
        baseweapon = function_c14cb514(weapon);
        if (!isdefined(activecamo.var_fe56592[localclientnum].var_dd54a13b[baseweapon])) {
            activecamo.var_fe56592[localclientnum].var_dd54a13b[baseweapon] = {};
        }
        activecamo.var_fe56592[localclientnum].var_dd54a13b[baseweapon].stagenum = stagenum;
    }
    return activecamo;
}

// Namespace activecamo/activecamo_shared
// Params 3, eflags: 0x6 linked
// Checksum 0xc0ef1f69, Offset: 0x778
// Size: 0x1b4
function private function_130e0542(localclientnum, weapon, camoindex) {
    init_stage = 0;
    var_f4eb4a50 = function_13e12ab1(camoindex);
    activecamo = self init_activecamo(var_f4eb4a50, 0);
    if (isdefined(activecamo)) {
        if (isdefined(activecamo.var_13949c61.stages)) {
            var_f8bf269c = 0;
            foreach (key, stage in activecamo.var_13949c61.stages) {
                if (isdefined(stage.permanentstatname)) {
                    camo_stat = stats::get_stat_global(localclientnum, stage.permanentstatname);
                    if (isdefined(camo_stat) && camo_stat >= stage.var_e2dbd42d) {
                        var_f8bf269c = 1;
                        continue;
                    }
                }
                if (var_f8bf269c || stage.var_19b6044e === camoindex) {
                    init_stage = key;
                    break;
                }
            }
        }
        return function_451a49f4(localclientnum, var_f4eb4a50, weapon, init_stage);
    }
}

// Namespace activecamo/activecamo_shared
// Params 2, eflags: 0x6 linked
// Checksum 0x8a5cdc5, Offset: 0x938
// Size: 0x74
function private updateactivecamo(localclientnum, eventstruct) {
    stagenum = getactivecamostage(eventstruct.camooptions);
    self function_350f0d(localclientnum, eventstruct.weapon, eventstruct.tagname, stagenum, eventstruct.skiptransition, eventstruct.camooptions);
}

// Namespace activecamo/activecamo_shared
// Params 6, eflags: 0x6 linked
// Checksum 0xdebf4464, Offset: 0x9b8
// Size: 0x50c
function private function_350f0d(localclientnum, weapon, tagname, stagenum, var_d71e8c6e, camooptions) {
    var_d1460f46 = isdefined(tagname) && tagname == "tag_stowed_back";
    self function_7a55e60a(var_d1460f46);
    var_f4eb4a50 = self function_51bb743b(weapon, camooptions);
    if (!isdefined(var_f4eb4a50)) {
        function_3e27a7cb(localclientnum, tagname);
        return;
    }
    activecamo = self init_activecamo(var_f4eb4a50, 0);
    if (!isdefined(activecamo.var_13949c61.stages)) {
        function_3e27a7cb(localclientnum, tagname);
        return;
    }
    stage = activecamo.var_13949c61.stages[stagenum];
    if (!isdefined(stage)) {
        function_3e27a7cb(localclientnum, tagname);
        return;
    }
    if (!isdefined(activecamo.var_fe56592)) {
        activecamo.var_fe56592 = [];
    }
    if (!isdefined(activecamo.var_fe56592[localclientnum])) {
        activecamo.var_fe56592[localclientnum] = {};
    }
    if (!isdefined(activecamo.var_fe56592[localclientnum].var_dd54a13b)) {
        activecamo.var_fe56592[localclientnum].var_dd54a13b = [];
    }
    baseweapon = function_c14cb514(weapon);
    if (!isdefined(activecamo.var_fe56592[localclientnum].var_dd54a13b[baseweapon])) {
        activecamo.var_fe56592[localclientnum].var_dd54a13b[baseweapon] = {};
    }
    var_58bac2d = function_16d7447b(localclientnum, tagname, 1);
    if (isdefined(var_58bac2d.crob) && var_58bac2d.crob !== stage.rob) {
        function_3e27a7cb(localclientnum, tagname);
    }
    self function_a946fb86(activecamo, stagenum, var_d1460f46);
    var_5e38d32e = 1;
    if (!var_d1460f46 && self function_21c0fa55()) {
        var_5bdd03ea = isswitchingweapons(localclientnum);
        var_5e38d32e = var_5bdd03ea || var_d71e8c6e;
        if (!var_5bdd03ea) {
            var_9a7e487a = activecamo.var_fe56592[localclientnum].var_dd54a13b[baseweapon].stagenum;
            if (isdefined(var_9a7e487a)) {
                laststage = activecamo.var_13949c61.stages[var_9a7e487a];
                if (isdefined(laststage) && laststage != stage) {
                    function_e1b6707f(localclientnum, weapon, laststage, stage);
                }
            }
        }
    }
    activecamo.var_fe56592[localclientnum].var_dd54a13b[baseweapon].stagenum = stagenum;
    var_58bac2d.crob = stage.rob;
    if (isdefined(stage.rob) && tagname == "tag_weapon_right") {
        if (!self function_d2503806(stage.rob, tagname)) {
            self playrenderoverridebundle(stage.rob, tagname);
        }
        self callback::add_entity_callback(#"death", &player_on_death);
        for (layer = 1; layer <= 3; layer++) {
            self thread function_b5b4013c(stage, tagname, layer, var_5e38d32e);
        }
        self thread function_bc6005b5(stage, tagname, "Diffuse2 Alpha", stage.var_2eeeee1b * 1000, stage.diffuse2alpha, var_5e38d32e);
        self thread function_bc6005b5(stage, tagname, "Diffuse3 Alpha", stage.var_7a3e0e45 * 1000, stage.diffuse3alpha, var_5e38d32e);
    }
}

// Namespace activecamo/activecamo_shared
// Params 4, eflags: 0x6 linked
// Checksum 0xdd98f963, Offset: 0xed0
// Size: 0x154
function private function_e1b6707f(localclientnum, weapon, exitstage, enterstage) {
    if (isdefined(enterstage.var_a000b430)) {
        playsound(localclientnum, enterstage.var_a000b430);
    } else if (isdefined(exitstage.var_1c54e7b8)) {
        playsound(localclientnum, exitstage.var_1c54e7b8);
    }
    if (isdefined(weapon)) {
        fx = undefined;
        switch (weapon.weapclass) {
        case #"rocketlauncher":
        case #"mg":
        case #"rifle":
            fx = enterstage.var_69896523;
            break;
        case #"pistol":
            fx = enterstage.var_bafc7841;
            break;
        default:
            fx = enterstage.var_9828c877;
            break;
        }
        if (isdefined(fx)) {
            playviewmodelfx(localclientnum, fx, "tag_flash");
        }
    }
}

// Namespace activecamo/activecamo_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x92ca1cb4, Offset: 0x1030
// Size: 0x64
function private player_on_death(params) {
    self function_3e27a7cb(params.localclientnum, "tag_weapon_right");
    self callback::function_52ac9652(#"death", &player_on_death);
}

// Namespace activecamo/activecamo_shared
// Params 2, eflags: 0x6 linked
// Checksum 0x44229b3d, Offset: 0x10a0
// Size: 0x6e
function private function_3e27a7cb(localclientnum, tagname) {
    var_58bac2d = function_16d7447b(localclientnum, tagname, 0);
    if (isdefined(var_58bac2d.crob)) {
        self stoprenderoverridebundle(var_58bac2d.crob, tagname);
        var_58bac2d.crob = undefined;
    }
}

// Namespace activecamo/activecamo_shared
// Params 3, eflags: 0x6 linked
// Checksum 0x235d93a0, Offset: 0x1118
// Size: 0x140
function private function_a946fb86(activecamo, stagenum, var_d1460f46) {
    foreach (key, stage in activecamo.var_13949c61.stages) {
        if (key > stagenum) {
            break;
        }
        if (isdefined(stage.var_9fbd261d)) {
            if (is_true(stage.var_d04f3816) || key < stagenum && is_true(stage.var_413aa223) || key == stagenum && is_true(stage.var_2873d2ba)) {
                self function_f0d52864(stage.var_9fbd261d, var_d1460f46);
            }
        }
    }
}

// Namespace activecamo/activecamo_shared
// Params 3, eflags: 0x6 linked
// Checksum 0x99bace97, Offset: 0x1260
// Size: 0xb6
function private function_16d7447b(localclientnum, tagname, create) {
    if (!create && !isdefined(self.var_32d117a2[localclientnum][tagname])) {
        return undefined;
    }
    if (!isdefined(self.var_32d117a2)) {
        self.var_32d117a2 = [];
    }
    if (!isdefined(self.var_32d117a2[localclientnum])) {
        self.var_32d117a2[localclientnum] = [];
    }
    if (!isdefined(self.var_32d117a2[localclientnum][tagname])) {
        self.var_32d117a2[localclientnum][tagname] = {};
    }
    return self.var_32d117a2[localclientnum][tagname];
}

// Namespace activecamo/activecamo_shared
// Params 6, eflags: 0x6 linked
// Checksum 0x80ae4eb6, Offset: 0x1320
// Size: 0x18c
function private function_bc6005b5(stage, tagname, var_eb6a239c, lerptime, var_f023ca7d, var_5e38d32e) {
    self endon(#"death", #"weapon_change");
    if (!var_5e38d32e && lerptime > 0) {
        starttime = gettime();
        while (true) {
            waitframe(1);
            if (!isdefined(self) || !isplayer(self)) {
                return;
            }
            currenttime = gettime();
            lerp = (currenttime - starttime) / lerptime;
            lerp = math::clamp(lerp, 0, 1);
            var_31cfb10 = lerpfloat(0, var_f023ca7d, lerp);
            self function_78233d29(stage.rob, tagname, var_eb6a239c, var_31cfb10);
            if (lerp >= 1) {
                return;
            }
        }
    }
    self function_78233d29(stage.rob, tagname, var_eb6a239c, var_f023ca7d);
}

// Namespace activecamo/activecamo_shared
// Params 4, eflags: 0x6 linked
// Checksum 0x57f3f117, Offset: 0x14b8
// Size: 0x414
function private function_b5b4013c(stage, tagname, layer, var_5e38d32e) {
    self endon(#"death", #"weapon_change");
    var_238c3eeb = "Layer" + layer;
    var_604ae5c3 = var_238c3eeb + " Brightness";
    var_d6637dc6 = var_238c3eeb + " Fade";
    var_ea35682d = var_238c3eeb + " Tint";
    var_d1732bd2 = "robLayer" + layer;
    var_27c1d8a2 = var_d1732bd2 + "_Brightness";
    var_f5747b8 = var_d1732bd2 + "_Fade";
    var_4a72a14a = var_d1732bd2 + "_LerpTime";
    var_7fd61736 = var_d1732bd2 + "_Tint";
    lerptime = (isdefined(stage.(var_4a72a14a)) ? stage.(var_4a72a14a) : 0) * 1000;
    brightness = isdefined(stage.(var_27c1d8a2)) ? stage.(var_27c1d8a2) : 0;
    fade = isdefined(stage.(var_f5747b8)) ? stage.(var_f5747b8) : 0;
    tint = isdefined(stage.(var_7fd61736)) ? stage.(var_7fd61736) : 0;
    if (!var_5e38d32e && lerptime > 0) {
        starttime = gettime();
        while (true) {
            waitframe(1);
            if (!isdefined(self) || !isplayer(self)) {
                return;
            }
            currenttime = gettime();
            lerp = (currenttime - starttime) / lerptime;
            lerp = math::clamp(lerp, 0, 1);
            var_b9c539b7 = lerpfloat(0, brightness, lerp);
            var_a5e1ab6c = lerpfloat(0, fade, lerp);
            var_df9b6bd0 = lerpfloat(0, tint, lerp);
            self function_78233d29(stage.rob, tagname, var_604ae5c3, var_b9c539b7);
            self function_78233d29(stage.rob, tagname, var_d6637dc6, var_a5e1ab6c);
            self function_78233d29(stage.rob, tagname, var_ea35682d, var_df9b6bd0);
            if (lerp >= 1) {
                return;
            }
        }
    }
    self function_78233d29(stage.rob, tagname, var_604ae5c3, brightness);
    self function_78233d29(stage.rob, tagname, var_d6637dc6, fade);
    self function_78233d29(stage.rob, tagname, var_ea35682d, tint);
}

// Namespace activecamo/activecamo_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xc0f6f6b6, Offset: 0x18d8
// Size: 0x4b6
function private function_8a6ced15(var_f4eb4a50, forceupdate) {
    var_13949c61 = undefined;
    if (isdefined(var_f4eb4a50) && isdefined(var_f4eb4a50.name)) {
        if (!isdefined(level.activecamoinfo)) {
            level.activecamoinfo = [];
        }
        if (!forceupdate && isdefined(level.activecamoinfo[var_f4eb4a50.name])) {
            return level.activecamoinfo[var_f4eb4a50.name];
        }
        if (!isdefined(level.activecamoinfo[var_f4eb4a50.name])) {
            level.activecamoinfo[var_f4eb4a50.name] = {};
        }
        var_13949c61 = level.activecamoinfo[var_f4eb4a50.name];
        if (isdefined(var_f4eb4a50.stages)) {
            if (!isdefined(var_13949c61.stages)) {
                var_13949c61.stages = [];
            }
            var_d3daabe = 0;
            foreach (key, var_3594168e in var_f4eb4a50.stages) {
                if (is_true(var_3594168e.disabled)) {
                    var_d3daabe++;
                    continue;
                }
                if (!isdefined(var_13949c61.stages[key - var_d3daabe])) {
                    var_13949c61.stages[key - var_d3daabe] = {};
                }
                stage = var_13949c61.stages[key - var_d3daabe];
                stage.rob = var_3594168e.rob;
                if (isdefined(var_3594168e.camooption)) {
                    stage.var_19b6044e = function_8b51d9d1(var_3594168e.camooption);
                }
                stage.var_9fbd261d = var_3594168e.var_9fbd261d;
                stage.permanentstatname = var_3594168e.permanentstatname;
                stage.var_e2dbd42d = function_54f0afd2(var_3594168e);
                if (isdefined(stage.var_9fbd261d)) {
                    stage.var_d04f3816 = var_3594168e.var_d04f3816;
                    stage.var_413aa223 = var_3594168e.var_413aa223;
                    stage.var_2873d2ba = var_3594168e.var_2873d2ba;
                }
                if (is_true(level.var_b9b11197)) {
                    stage.var_1c54e7b8 = var_3594168e.var_1c54e7b8;
                    stage.var_a000b430 = var_3594168e.var_a000b430;
                }
                stage.var_bafc7841 = var_3594168e.var_bafc7841;
                stage.var_9828c877 = var_3594168e.var_9828c877;
                stage.var_69896523 = var_3594168e.var_69896523;
                for (layer = 1; layer <= 3; layer++) {
                    var_d1732bd2 = "robLayer" + layer;
                    var_4a72a14a = var_d1732bd2 + "_LerpTime";
                    var_27c1d8a2 = var_d1732bd2 + "_Brightness";
                    var_f5747b8 = var_d1732bd2 + "_Fade";
                    var_7fd61736 = var_d1732bd2 + "_Tint";
                    stage.(var_4a72a14a) = var_3594168e.(var_4a72a14a);
                    stage.(var_27c1d8a2) = var_3594168e.(var_27c1d8a2);
                    stage.(var_f5747b8) = var_3594168e.(var_f5747b8);
                    stage.(var_7fd61736) = var_3594168e.(var_7fd61736);
                }
                stage.diffuse2alpha = isdefined(var_3594168e.diffuse2alpha) ? var_3594168e.diffuse2alpha : 0;
                stage.var_2eeeee1b = isdefined(var_3594168e.var_2eeeee1b) ? var_3594168e.var_2eeeee1b : 0;
                stage.diffuse3alpha = isdefined(var_3594168e.diffuse3alpha) ? var_3594168e.diffuse3alpha : 0;
                stage.var_7a3e0e45 = isdefined(var_3594168e.var_7a3e0e45) ? var_3594168e.var_7a3e0e45 : 0;
            }
        }
    }
    return var_13949c61;
}

// Namespace activecamo/activecamo_shared
// Params 2, eflags: 0x6 linked
// Checksum 0xfcfd3dcf, Offset: 0x1d98
// Size: 0x104
function private init_activecamo(var_f4eb4a50, forceupdate) {
    if (isdefined(var_f4eb4a50)) {
        if (!isdefined(self.var_9413f8b4)) {
            self.var_9413f8b4 = [];
        }
        if (!forceupdate && isdefined(self.var_9413f8b4[var_f4eb4a50.name])) {
            return self.var_9413f8b4[var_f4eb4a50.name];
        }
        if (!isdefined(self.var_9413f8b4[var_f4eb4a50.name])) {
            self.var_9413f8b4[var_f4eb4a50.name] = {};
        }
        activecamo = self.var_9413f8b4[var_f4eb4a50.name];
        activecamo.var_13949c61 = function_8a6ced15(var_f4eb4a50, forceupdate);
        assert(isdefined(activecamo.var_13949c61));
        return activecamo;
    }
    return undefined;
}

// Namespace activecamo/activecamo_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x148a0121, Offset: 0x1ea8
// Size: 0x440
function function_6c9e0e1a(localclientnum, weaponmodel, var_3594168e, &var_49daa2f6) {
    if (!isdefined(var_3594168e.rob)) {
        return false;
    }
    stage = {};
    stage.rob = var_3594168e.rob;
    stage.diffuse2alpha = isdefined(var_3594168e.diffuse2alpha) ? var_3594168e.diffuse2alpha : 0;
    stage.var_2eeeee1b = isdefined(var_3594168e.var_2eeeee1b) ? var_3594168e.var_2eeeee1b : 0;
    stage.diffuse3alpha = isdefined(var_3594168e.diffuse3alpha) ? var_3594168e.diffuse3alpha : 0;
    stage.var_7a3e0e45 = isdefined(var_3594168e.var_7a3e0e45) ? var_3594168e.var_7a3e0e45 : 0;
    if (!weaponmodel function_d2503806(stage.rob, "tag_origin")) {
        weaponmodel playrenderoverridebundle(stage.rob, "tag_origin");
        var_49daa2f6[localclientnum] = stage.rob;
    }
    for (layer = 1; layer <= 3; layer++) {
        var_d1732bd2 = "robLayer" + layer;
        var_27c1d8a2 = var_d1732bd2 + "_Brightness";
        var_f5747b8 = var_d1732bd2 + "_Fade";
        var_7fd61736 = var_d1732bd2 + "_Tint";
        stage.(var_27c1d8a2) = isdefined(var_3594168e.(var_27c1d8a2)) ? var_3594168e.(var_27c1d8a2) : 0;
        stage.(var_f5747b8) = isdefined(var_3594168e.(var_f5747b8)) ? var_3594168e.(var_f5747b8) : 0;
        stage.(var_7fd61736) = isdefined(var_3594168e.(var_7fd61736)) ? var_3594168e.(var_7fd61736) : 0;
        var_238c3eeb = "Layer" + layer;
        var_604ae5c3 = var_238c3eeb + " Brightness";
        var_d6637dc6 = var_238c3eeb + " Fade";
        var_ea35682d = var_238c3eeb + " Tint";
        weaponmodel function_78233d29(stage.rob, "tag_origin", var_604ae5c3, stage.(var_27c1d8a2));
        weaponmodel function_78233d29(stage.rob, "tag_origin", var_d6637dc6, stage.(var_f5747b8));
        weaponmodel function_78233d29(stage.rob, "tag_origin", var_ea35682d, stage.(var_7fd61736));
    }
    diffuse2alpha = isdefined(var_3594168e.diffuse2alpha) ? var_3594168e.diffuse2alpha : 0;
    diffuse3alpha = isdefined(var_3594168e.diffuse3alpha) ? var_3594168e.diffuse3alpha : 0;
    weaponmodel function_78233d29(stage.rob, "tag_origin", "Diffuse2 Alpha", diffuse2alpha);
    weaponmodel function_78233d29(stage.rob, "tag_origin", "Diffuse3 Alpha", diffuse3alpha);
    return true;
}

// Namespace activecamo/activecamo_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x5527d096, Offset: 0x22f0
// Size: 0xa4
function function_cbfd8fd6(localclientnum) {
    if (isdefined(self.weapon)) {
        camooptions = self function_e10e6c37();
        var_f4eb4a50 = self function_51bb743b(self.weapon, camooptions);
        if (isdefined(var_f4eb4a50)) {
            stagenum = getactivecamostage(camooptions);
            self function_7721b2d5(localclientnum, var_f4eb4a50, stagenum);
        }
    }
}

// Namespace activecamo/activecamo_shared
// Params 1, eflags: 0x0
// Checksum 0x2bf1e058, Offset: 0x23a0
// Size: 0x12c
function function_e40c785a(localclientnum) {
    if (isdefined(self.weapon)) {
        camooptions = self function_e10e6c37();
        var_f4eb4a50 = self function_51bb743b(self.weapon, camooptions);
        if (isdefined(var_f4eb4a50)) {
            if (isdefined(var_f4eb4a50.stages)) {
                init_stage = 0;
                foreach (key, var_3594168e in var_f4eb4a50.stages) {
                    if (isdefined(var_3594168e.permanentstatname)) {
                        continue;
                    }
                    init_stage = key;
                    break;
                }
                self function_7721b2d5(localclientnum, var_f4eb4a50, init_stage);
            }
        }
    }
}

// Namespace activecamo/activecamo_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x679439db, Offset: 0x24d8
// Size: 0x284
function function_6efb762c(localclientnum, camoweapon, weaponoptions) {
    var_f4eb4a50 = self function_51bb743b(camoweapon, weaponoptions);
    if (isdefined(var_f4eb4a50)) {
        player = function_27673a7(localclientnum);
        activecamo = player init_activecamo(var_f4eb4a50, 0);
        if (isdefined(activecamo)) {
            baseweapon = function_c14cb514(camoweapon);
            init_stage = getactivecamostage(weaponoptions);
            if (isdefined(activecamo.var_fe56592) && isdefined(activecamo.var_fe56592[localclientnum]) && isdefined(activecamo.var_fe56592[localclientnum].var_dd54a13b[baseweapon])) {
                init_stage = activecamo.var_fe56592[localclientnum].var_dd54a13b[baseweapon].stagenum;
            } else {
                camoindex = getcamoindex(weaponoptions);
                activecamo = player function_130e0542(localclientnum, camoweapon, camoindex);
                if (isdefined(activecamo) && isdefined(activecamo.var_fe56592) && isdefined(activecamo.var_fe56592[localclientnum]) && isdefined(activecamo.var_fe56592[localclientnum].var_dd54a13b[baseweapon])) {
                    init_stage = activecamo.var_fe56592[localclientnum].var_dd54a13b[baseweapon].stagenum;
                }
            }
            if (isdefined(var_f4eb4a50.stages)) {
                var_3594168e = var_f4eb4a50.stages[init_stage];
                if (isdefined(var_3594168e.camooption)) {
                    var_19b6044e = function_8b51d9d1(var_3594168e.camooption);
                    self setcamo(var_19b6044e);
                    self setactivecamostage(init_stage);
                }
            }
            self function_7721b2d5(localclientnum, var_f4eb4a50, init_stage);
        }
    }
}

// Namespace activecamo/activecamo_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x5684d0f2, Offset: 0x2768
// Size: 0x94
function function_7721b2d5(localclientnum, var_f4eb4a50, init_stage) {
    if (isdefined(var_f4eb4a50) && isdefined(var_f4eb4a50.stages)) {
        var_3594168e = var_f4eb4a50.stages[init_stage];
        if (isdefined(var_3594168e)) {
            if (!isdefined(self.var_49daa2f6)) {
                self.var_49daa2f6 = [];
            }
            function_6c9e0e1a(localclientnum, self, var_3594168e, self.var_49daa2f6);
        }
    }
}

// Namespace activecamo/activecamo_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xa9a8cbe8, Offset: 0x2808
// Size: 0x52
function function_ada2946d(weapon) {
    var_f879230e = self function_8cbd254d();
    activecamoname = function_33ed1149(weapon, var_f879230e);
    return activecamoname;
}

// Namespace activecamo/activecamo_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xb03857f7, Offset: 0x2868
// Size: 0xae
function function_51bb743b(weapon, camooptions) {
    var_f4eb4a50 = function_edd6511(camooptions);
    if (isdefined(var_f4eb4a50)) {
        return var_f4eb4a50;
    }
    if (isdefined(weapon)) {
        activecamoname = self function_ada2946d(weapon);
        if (isdefined(activecamoname) && activecamoname != #"") {
            var_f4eb4a50 = getscriptbundle(activecamoname);
            return var_f4eb4a50;
        }
    }
    return undefined;
}

/#

    // Namespace activecamo/activecamo_shared
    // Params 0, eflags: 0x0
    // Checksum 0x45b5be3a, Offset: 0x2920
    // Size: 0x1a0
    function function_12e53b2d() {
        self notify("<unknown string>");
        self endon("<unknown string>");
        while (true) {
            var_f4eb4a50 = undefined;
            waitresult = level waittill(#"liveupdate");
            if (!isdefined(level.activecamoinfo)) {
                continue;
            }
            if (isdefined(waitresult.scriptbundlename)) {
                var_f4eb4a50 = getscriptbundle(waitresult.scriptbundlename);
                if (!isdefined(var_f4eb4a50.name)) {
                    continue;
                }
                if (!isdefined(level.activecamoinfo[var_f4eb4a50.name])) {
                    continue;
                }
                players = getplayers(0);
                foreach (player in players) {
                    activecamo = player init_activecamo(var_f4eb4a50, 1);
                }
                function_e3e0feb5(0, undefined);
            }
        }
    }

#/
