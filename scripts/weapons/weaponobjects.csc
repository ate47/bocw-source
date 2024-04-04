// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\renderoverridebundle.csc;
#using script_13da4e6b98ca81a1;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace weaponobjects;

// Namespace weaponobjects/weaponobjects
// Params 2, eflags: 0x2 linked
// Checksum 0x2c0add0c, Offset: 0x178
// Size: 0x44c
function init_shared(friendly_rob, var_4885f19e) {
    callback::on_localplayer_spawned(&on_localplayer_spawned);
    clientfield::register("toplayer", "proximity_alarm", 1, 3, "int", &proximity_alarm_changed, 0, 1);
    clientfield::register("missile", "retrievable", 1, 1, "int", &retrievable_changed, 0, 1);
    clientfield::register("scriptmover", "retrievable", 1, 1, "int", &retrievable_changed, 0, 0);
    clientfield::register("missile", "enemyequip", 1, 2, "int", &enemyequip_changed, 0, 1);
    clientfield::register("scriptmover", "enemyequip", 1, 2, "int", &enemyequip_changed, 0, 0);
    clientfield::register("missile", "teamequip", 1, 1, "int", &teamequip_changed, 0, 1);
    clientfield::register_clientuimodel("hudItems.proximityAlarm", #"hash_6f4b11a0bee9b73d", #"proximityalarm", 1, 3, "int", undefined, 0, 0);
    clientfield::register("missile", "friendlyequip", 1, 1, "int", &friendly_outline, 0, 1);
    clientfield::register("scriptmover", "friendlyequip", 1, 1, "int", &friendly_outline, 0, 0);
    level._effect[#"powerlight"] = #"weapon/fx8_equip_light_os";
    if (getgametypesetting(#"hash_48670d9509071424") && false) {
        level.var_58253868 = friendly_rob;
    }
    if (isdefined(var_4885f19e)) {
        function_6aae3df3(var_4885f19e);
    }
    level.var_420d7d7e = var_4885f19e;
    level.var_4de4699b = #"rob_sonar_set_enemy";
    if (!isdefined(level.retrievable)) {
        level.retrievable = [];
    }
    if (!isdefined(level.enemyequip)) {
        level.enemyequip = [];
    }
    if (isdefined(level.var_58253868)) {
        renderoverridebundle::function_f72f089c(#"hash_66ac79c57723c169", level.var_58253868, &function_6a5648dc, undefined, undefined, 1);
    }
    if (isdefined(level.var_420d7d7e)) {
        renderoverridebundle::function_f72f089c(#"hash_691f7dc47ae8aa08", level.var_420d7d7e, &function_232f3acf, undefined, level.var_4de4699b, 1);
    }
}

// Namespace weaponobjects/weaponobjects
// Params 1, eflags: 0x2 linked
// Checksum 0x4864e3a1, Offset: 0x5d0
// Size: 0x3c
function on_localplayer_spawned(local_client_num) {
    if (!self function_21c0fa55()) {
        return;
    }
    self thread watch_perks_changed(local_client_num);
}

// Namespace weaponobjects/weaponobjects
// Params 7, eflags: 0x2 linked
// Checksum 0x95868a9a, Offset: 0x618
// Size: 0x5c
function proximity_alarm_changed(local_client_num, oldval, newval, bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    update_sound(bnewent, bwastimejump, fieldname, binitialsnap);
}

// Namespace weaponobjects/weaponobjects
// Params 4, eflags: 0x2 linked
// Checksum 0x8a691f1c, Offset: 0x680
// Size: 0xf4
function update_sound(local_client_num, *bnewent, newval, oldval) {
    if (newval == 2) {
        if (!isdefined(self._proximity_alarm_snd_ent)) {
            self._proximity_alarm_snd_ent = spawn(bnewent, self.origin, "script_origin");
            self thread sndproxalert_entcleanup(bnewent, self._proximity_alarm_snd_ent);
        }
        return;
    }
    if (newval == 1) {
        return;
    }
    if (newval == 0 && isdefined(oldval) && oldval != newval) {
        if (isdefined(self._proximity_alarm_snd_ent)) {
            self._proximity_alarm_snd_ent stopallloopsounds(0.5);
        }
    }
}

// Namespace weaponobjects/weaponobjects
// Params 7, eflags: 0x2 linked
// Checksum 0x94cffab, Offset: 0x780
// Size: 0x54
function teamequip_changed(local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self updateteamequipment(fieldname, bwastimejump);
}

// Namespace weaponobjects/weaponobjects
// Params 2, eflags: 0x2 linked
// Checksum 0x86d189ba, Offset: 0x7e0
// Size: 0x2c
function updateteamequipment(local_client_num, *newval) {
    self checkteamequipment(newval);
}

// Namespace weaponobjects/weaponobjects
// Params 7, eflags: 0x2 linked
// Checksum 0x9a9de724, Offset: 0x818
// Size: 0x74
function retrievable_changed(local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self util::add_remove_list(level.retrievable, bwastimejump);
    self updateretrievable(fieldname, bwastimejump);
}

// Namespace weaponobjects/weaponobjects
// Params 2, eflags: 0x2 linked
// Checksum 0x87a2b82e, Offset: 0x898
// Size: 0x32
function updateretrievable(*local_client_num, *newval) {
    if (self function_b9b8fbc7()) {
    }
}

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x2 linked
// Checksum 0x548b7521, Offset: 0x8d8
// Size: 0x72
function function_f89c4b81() {
    if (isdefined(self.weapon) && self.weapon.statname == #"ac130") {
        return false;
    }
    if (isdefined(self.weapon) && self.weapon.statname == #"tr_flechette_t8") {
        return false;
    }
    return true;
}

// Namespace weaponobjects/weaponobjects
// Params 7, eflags: 0x2 linked
// Checksum 0x1bf5d500, Offset: 0x958
// Size: 0x94
function enemyequip_changed(local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    bwastimejump = bwastimejump != 0;
    if (self function_f89c4b81()) {
        self util::add_remove_list(level.enemyequip, bwastimejump);
        self updateenemyequipment(fieldname, bwastimejump);
    }
}

// Namespace weaponobjects/weaponobjects
// Params 2, eflags: 0x2 linked
// Checksum 0x71195dca, Offset: 0x9f8
// Size: 0x134
function function_6a5648dc(local_client_num, *bundle) {
    if (codcaster::function_b8fe9b52(bundle)) {
        return true;
    }
    if (!self function_e9fc6a64() || self.team === #"none") {
        return false;
    }
    if (is_true(level.vision_pulse[bundle])) {
        return false;
    }
    player = function_5c10bd79(bundle);
    if (self == player) {
        return false;
    }
    if (player.var_33b61b6f === 1) {
        return false;
    }
    type = self.type;
    if ((type == "missile" || type == "scriptmover") && self clientfield::get("friendlyequip") === 0) {
        return false;
    }
    return true;
}

// Namespace weaponobjects/weaponobjects
// Params 2, eflags: 0x2 linked
// Checksum 0x60198283, Offset: 0xb38
// Size: 0x17c
function function_232f3acf(local_client_num, bundle) {
    if (codcaster::function_b8fe9b52(local_client_num)) {
        return true;
    }
    if (self function_e9fc6a64() && self.team !== #"none") {
        return false;
    }
    if (self.var_6abc296 === 1) {
        return true;
    }
    type = self.type;
    if ((type == "missile" || type == "scriptmover") && self clientfield::get("enemyequip") === 0) {
        return false;
    }
    if (sessionmodeiswarzonegame()) {
        if (function_5778f82(local_client_num, #"specialty_showenemyequipment") && is_true(self.var_f19b4afd)) {
            return true;
        }
    } else {
        if (function_5778f82(local_client_num, #"specialty_showenemyequipment")) {
            return true;
        }
        bundle.var_1a5b7293 = 1;
    }
    return false;
}

// Namespace weaponobjects/weaponobjects
// Params 2, eflags: 0x2 linked
// Checksum 0x729ca1e4, Offset: 0xcc0
// Size: 0x15c
function updateenemyequipment(local_client_num, *newval) {
    if (codcaster::function_b8fe9b52(newval)) {
        var_7eda7144 = self codcaster::is_friendly(newval) ? #"friendly" : #"enemy";
        robkey = self codcaster::is_friendly(newval) ? #"hash_2476e7ae62469f70" : #"hash_2476eaae6246a489";
        self renderoverridebundle::function_c8d97b8e(newval, var_7eda7144, robkey);
        return;
    }
    if (isdefined(level.var_58253868)) {
        self renderoverridebundle::function_c8d97b8e(newval, #"friendly", #"hash_66ac79c57723c169");
    }
    if (isdefined(level.var_420d7d7e)) {
        self renderoverridebundle::function_c8d97b8e(newval, #"enemy", #"hash_691f7dc47ae8aa08");
    }
}

// Namespace weaponobjects/weaponobjects
// Params 7, eflags: 0x2 linked
// Checksum 0x70173cf4, Offset: 0xe28
// Size: 0x84
function friendly_outline(local_client_num, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdefined(level.var_58253868)) {
        self renderoverridebundle::function_c8d97b8e(bwastimejump, #"friendly", #"hash_66ac79c57723c169");
    }
}

// Namespace weaponobjects/weaponobjects
// Params 1, eflags: 0x2 linked
// Checksum 0x56de79ae, Offset: 0xeb8
// Size: 0x10e
function watch_perks_changed(local_client_num) {
    self notify(#"watch_perks_changed");
    self endon(#"watch_perks_changed");
    self endon(#"death");
    self endon(#"disconnect");
    while (isdefined(self)) {
        waitframe(1);
        util::clean_deleted(level.retrievable);
        util::clean_deleted(level.enemyequip);
        array::thread_all(level.retrievable, &updateretrievable, local_client_num, 1);
        array::thread_all(level.enemyequip, &updateenemyequipment, local_client_num, 1);
        self waittill(#"perks_changed");
    }
}

// Namespace weaponobjects/weaponobjects
// Params 1, eflags: 0x2 linked
// Checksum 0x1807ed64, Offset: 0xfd0
// Size: 0x11e
function checkteamequipment(localclientnum) {
    if (!isdefined(self.owner)) {
        return;
    }
    if (!isdefined(self.equipmentoldteam)) {
        self.equipmentoldteam = self.team;
    }
    if (!isdefined(self.equipmentoldownerteam)) {
        self.equipmentoldownerteam = self.owner.team;
    }
    var_fd9de919 = function_73f4b33(localclientnum);
    if (!isdefined(self.equipmentoldwatcherteam)) {
        self.equipmentoldwatcherteam = var_fd9de919;
    }
    if (self.equipmentoldteam != self.team || self.equipmentoldownerteam != self.owner.team || self.equipmentoldwatcherteam != var_fd9de919) {
        self.equipmentoldteam = self.team;
        self.equipmentoldownerteam = self.owner.team;
        self.equipmentoldwatcherteam = var_fd9de919;
        self notify(#"team_changed");
    }
}

// Namespace weaponobjects/weaponobjects
// Params 1, eflags: 0x2 linked
// Checksum 0xfe5ded3b, Offset: 0x10f8
// Size: 0xac
function equipmentteamobject(localclientnum) {
    if (is_true(level.disable_equipment_team_object)) {
        return;
    }
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    waitframe(1);
    fx_handle = self playflarefx(localclientnum);
    self thread equipmentwatchteamfx(localclientnum, fx_handle);
    self thread equipmentwatchplayerteamchanged(localclientnum, fx_handle);
}

// Namespace weaponobjects/weaponobjects
// Params 1, eflags: 0x2 linked
// Checksum 0xeb4bfa3b, Offset: 0x11b0
// Size: 0x122
function playflarefx(localclientnum) {
    self endon(#"death");
    level endon(#"player_switch");
    if (!isdefined(self.var_7701a848)) {
        self.var_7701a848 = "tag_origin";
    }
    if (!isdefined(self.equipmentfriendfx)) {
        self.equipmentfriendfx = level._effect[#"powerlightgreen"];
    }
    if (!isdefined(self.equipmentenemyfx)) {
        self.equipmentenemyfx = level._effect[#"powerlight"];
    }
    if (self function_ca024039()) {
        fx_handle = util::playfxontag(localclientnum, self.equipmentfriendfx, self, self.var_7701a848);
    } else {
        fx_handle = util::playfxontag(localclientnum, self.equipmentenemyfx, self, self.var_7701a848);
    }
    return fx_handle;
}

// Namespace weaponobjects/weaponobjects
// Params 2, eflags: 0x2 linked
// Checksum 0x7822e84d, Offset: 0x12e0
// Size: 0xb4
function equipmentwatchteamfx(localclientnum, fxhandle) {
    msg = self waittill(#"death", #"team_changed", #"player_switch");
    if (isdefined(fxhandle)) {
        stopfx(localclientnum, fxhandle);
    }
    waittillframeend();
    if (msg._notify != "death" && isdefined(self)) {
        self thread equipmentteamobject(localclientnum);
    }
}

// Namespace weaponobjects/weaponobjects
// Params 2, eflags: 0x2 linked
// Checksum 0x8d2dc8df, Offset: 0x13a0
// Size: 0xea
function equipmentwatchplayerteamchanged(localclientnum, *fxhandle) {
    self endon(#"death");
    self notify(#"team_changed_watcher");
    self endon(#"team_changed_watcher");
    watcherplayer = function_5c10bd79(fxhandle);
    while (true) {
        waitresult = level waittill(#"team_changed");
        player = function_5c10bd79(waitresult.localclientnum);
        if (watcherplayer == player) {
            self notify(#"team_changed");
        }
    }
}

// Namespace weaponobjects/weaponobjects
// Params 2, eflags: 0x2 linked
// Checksum 0x5f60aaf3, Offset: 0x1498
// Size: 0xac
function sndproxalert_entcleanup(*localclientnum, ent) {
    level waittill(#"snddede", #"demo_jump", #"player_switch", #"killcam_begin", #"killcam_end");
    if (isdefined(ent)) {
        ent stopallloopsounds(0.5);
        ent delete();
    }
}

