// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\util.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using script_59f62971655f7103;

#namespace blood;

// Namespace blood/namespace_5d18774f
// Params 0, eflags: 0x5
// Checksum 0x4dcae982, Offset: 0x490
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"blood", &preload, &postload, undefined, undefined);
}

// Namespace blood/namespace_5d18774f
// Params 0, eflags: 0x2 linked
// Checksum 0xa79a5, Offset: 0x4e8
// Size: 0xec
function preload() {
    clientfield::register("toplayer", "player_death_shield", 1, 1, "int", &function_2b83fc6e, 0, 0);
    clientfield::register("toplayer", "player_death_gesture", 1, 1, "int", &function_11057a7d, 0, 0);
    clientfield::register("world", "" + #"hash_7dc38a630ed68eb3", 1, 1, "int", &function_100ac98f, 0, 0);
}

// Namespace blood/namespace_5d18774f
// Params 0, eflags: 0x2 linked
// Checksum 0xa30a14f0, Offset: 0x5e0
// Size: 0x6c
function postload() {
    function_dd830dee();
    callback::on_localplayer_spawned(&function_e79ccfd8);
    callback::on_localclient_connect(&localclient_connect);
    level.var_f771ff42 = util::is_mature();
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x2 linked
// Checksum 0xdfe5ffb0, Offset: 0x658
// Size: 0x2c
function getsplatter(localclientnum) {
    return level.blood.var_de10c136.var_51036e02[localclientnum];
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0x9e50572e, Offset: 0x690
// Size: 0x24
function private localclient_connect(localclientnum) {
    level thread player_splatter(localclientnum);
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0x5610be15, Offset: 0x6c0
// Size: 0x2ac
function private function_e79ccfd8(localclientnum) {
    if (!self function_21c0fa55()) {
        return;
    }
    if (function_148ccc79(localclientnum, #"hash_4a1db95d40ab50d")) {
        codestoppostfxbundlelocal(localclientnum, #"hash_4a1db95d40ab50d");
    }
    if (function_148ccc79(localclientnum, #"hash_1502559766b0e08f")) {
        codestoppostfxbundlelocal(localclientnum, #"hash_1502559766b0e08f");
    }
    self.pstfx_blood = #"hash_44dcb6ac5e8787e0";
    self.wound_rob = "rob_wound_blood_splatter";
    self.var_a3b3e5cc = 0;
    self.var_82dad7be = self battlechatter::get_player_dialog_alias("exertBreatheHurt");
    function_162fe6ec(localclientnum);
    self.var_9861062 = 0;
    if (level.blood.rob.stage == 0) {
        self.var_28fdff3c = 1;
        self.var_dff3bb2c = 1;
    } else {
        self.var_28fdff3c = 0;
        self.var_dff3bb2c = 0;
    }
    self.stage2amount = 0;
    self.stage3amount = 0;
    self.lastbloodupdate = 0;
    if (isdefined(level.blood.soundhandle)) {
        function_d48752e(localclientnum, level.blood.soundhandle);
        level.blood.soundhandle = undefined;
    }
    level thread wait_game_ended(localclientnum);
    if (self function_d2cb869e("rob_wound_blood_splatter")) {
        self stoprenderoverridebundle("rob_wound_blood_splatter");
    }
    if (self function_d2cb869e("rob_wound_blood_splatter_reaper")) {
        self stoprenderoverridebundle("rob_wound_blood_splatter_reaper");
    }
    self thread function_87544c4a(localclientnum);
    self thread function_493a8fbc(localclientnum);
}

// Namespace blood/namespace_5d18774f
// Params 3, eflags: 0x6 linked
// Checksum 0xccf4fab4, Offset: 0x978
// Size: 0xb4
function private setcontrollerlightbarcolorpulsing(localclientnum, color, pulserate) {
    curcolor = color * 0.2;
    scale = gettime() % pulserate / pulserate * 0.5;
    if (scale > 1) {
        scale = (scale - 2) * -1;
    }
    curcolor += color * 0.8 * scale;
    setcontrollerlightbarcolor(localclientnum, curcolor);
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0x7c4216ed, Offset: 0xa38
// Size: 0x3c
function private enter_critical_health(localclientnum) {
    self thread play_critical_health_rumble(localclientnum);
    self thread play_breath(localclientnum);
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0x9e8117dd, Offset: 0xa80
// Size: 0x168
function private play_critical_health_rumble(localclientnum) {
    self endon(#"death", #"hash_6bf3273fdaffc859", #"disconnect", #"critical_health_end", #"spawned");
    var_cf155b98 = "new_health_stage_critical_cp";
    while (true) {
        self waittill(#"pulse_blood");
        self playrumbleonentity(localclientnum, var_cf155b98);
        name = self getmpdialogname();
        if (!isdefined(name)) {
            name = #"human";
        }
        if (name == #"reaper") {
            sound = #"hash_14e9bc45552b1ab9";
        } else {
            sound = #"hash_318f22e4d70ee6d3";
        }
        if (!is_true(self.var_e9dd2ca0)) {
            self playsound(localclientnum, sound);
        }
    }
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0xd4022df3, Offset: 0xbf0
// Size: 0x11e
function private play_breath(localclientnum) {
    self endon(#"death", #"hash_6bf3273fdaffc859", #"disconnect", #"game_ended", #"critical_health_end");
    self.var_82dad7be = isdefined(self.var_82dad7be) ? self.var_82dad7be : self battlechatter::get_player_dialog_alias("exertBreatheHurt");
    while (true) {
        if (isdefined(self.var_82dad7be)) {
            var_a1b836dd = self playsound(localclientnum, self.var_82dad7be);
        }
        if (!isdefined(var_a1b836dd)) {
            return;
        }
        while (isdefined(var_a1b836dd) && soundplaying(var_a1b836dd)) {
            wait(0.1);
        }
        wait(2);
    }
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0x2ecff939, Offset: 0xd18
// Size: 0xb8
function private wait_game_ended(localclientnum) {
    if (!isdefined(level.watching_blood_game_ended)) {
        level.watching_blood_game_ended = [];
    }
    if (level.watching_blood_game_ended[localclientnum] === 1) {
        return;
    }
    level.watching_blood_game_ended[localclientnum] = 1;
    level waittill(#"game_ended");
    localplayer = function_5c10bd79(localclientnum);
    if (isdefined(localplayer)) {
        localplayer notify(#"critical_health_end");
    }
    level.watching_blood_game_ended[localclientnum] = 0;
}

// Namespace blood/namespace_5d18774f
// Params 2, eflags: 0x6 linked
// Checksum 0xcda48c50, Offset: 0xdd8
// Size: 0x20c
function private function_f192f00b(localclientnum, rob) {
    self notify("4d57e1325d19c200");
    self endon("4d57e1325d19c200");
    self endon(#"death", #"hash_6bf3273fdaffc859");
    if (function_148ccc79(localclientnum, rob)) {
        self function_78233d29(rob, "", "U Offset", randomfloatrange(0, 1));
        self function_78233d29(rob, "", "V Offset", randomfloatrange(0, 1));
        self function_78233d29(rob, "", "Threshold", 1);
    }
    wait(float(level.blood.rob.hold_time) / 1000);
    if (function_148ccc79(localclientnum, rob)) {
        self thread ramprobsetting(localclientnum, 1, 0, level.blood.rob.fade_time, "Threshold");
    }
    wait(float(level.blood.rob.fade_time) / 1000);
    if (function_148ccc79(localclientnum, rob)) {
        self stoprenderoverridebundle(rob);
    }
}

// Namespace blood/namespace_5d18774f
// Params 5, eflags: 0x2 linked
// Checksum 0xeb7dff90, Offset: 0xff0
// Size: 0xa4
function ramprobsetting(localclientnum, from, to, ramptime, key) {
    self endon(#"death", #"hash_6bf3273fdaffc859");
    self notify("rampROBsetting" + key);
    self endon("rampROBsetting" + key);
    util::lerp_generic(localclientnum, ramptime, &function_1126eb8c, from, to, key, self.wound_rob);
}

// Namespace blood/namespace_5d18774f
// Params 8, eflags: 0x2 linked
// Checksum 0x97a959f9, Offset: 0x10a0
// Size: 0xc4
function function_1126eb8c(*currenttime, elapsedtime, *localclientnum, duration, stagefrom, stageto, key, rob) {
    percent = localclientnum / duration;
    amount = stageto * percent + stagefrom * (1 - percent);
    if (isdefined(self) && self function_d2cb869e(rob)) {
        self function_78233d29(rob, "", key, amount);
    }
}

// Namespace blood/namespace_5d18774f
// Params 2, eflags: 0x0
// Checksum 0x3ace3dbe, Offset: 0x1170
// Size: 0x27c
function function_672c739(localclientnum, shockrifle) {
    if (is_true(shockrifle)) {
        function_4238734d(localclientnum, #"hash_4a1db95d40ab50d", "Enable Tint", 0.9);
        function_4238734d(localclientnum, #"hash_4a1db95d40ab50d", "Tint Color R", 4);
        function_4238734d(localclientnum, #"hash_4a1db95d40ab50d", "Tint Color G", 4);
        function_4238734d(localclientnum, #"hash_4a1db95d40ab50d", "Tint Color B", 4);
        return;
    }
    if (util::function_2c435484()) {
        function_4238734d(localclientnum, #"hash_4a1db95d40ab50d", "Enable Tint", 1);
        function_4238734d(localclientnum, #"hash_4a1db95d40ab50d", "Tint Color R", 0.15);
        function_4238734d(localclientnum, #"hash_4a1db95d40ab50d", "Tint Color G", 0.13);
        function_4238734d(localclientnum, #"hash_4a1db95d40ab50d", "Tint Color B", 0.24);
        return;
    }
    function_4238734d(localclientnum, #"hash_4a1db95d40ab50d", "Enable Tint", 1);
    function_4238734d(localclientnum, #"hash_4a1db95d40ab50d", "Tint Color R", 0.3);
    function_4238734d(localclientnum, #"hash_4a1db95d40ab50d", "Tint Color G", 0.025);
    function_4238734d(localclientnum, #"hash_4a1db95d40ab50d", "Tint Color B", 0);
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0xeb7d2b05, Offset: 0x13f8
// Size: 0x68
function private function_27d3ba05(localclientnum) {
    if (function_92beaa28(localclientnum) && !function_d17ae3cc(localclientnum)) {
        return false;
    }
    if (level.var_4ecf5754 === #"silent_film") {
        return false;
    }
    return true;
}

// Namespace blood/namespace_5d18774f
// Params 5, eflags: 0x6 linked
// Checksum 0x4c234a56, Offset: 0x1468
// Size: 0xbc
function private function_47d0632f(localclientnum, damage, death, dot, shockrifle) {
    splatter = getsplatter(localclientnum);
    splatter.shockrifle = shockrifle;
    splatter.var_120a7b2c++;
    var_cd141ca2 = splatter.var_120a7b2c % 4;
    if (function_27d3ba05(localclientnum)) {
        level thread splatter_postfx(localclientnum, self, damage, var_cd141ca2, death, dot);
    }
}

// Namespace blood/namespace_5d18774f
// Params 3, eflags: 0x6 linked
// Checksum 0x838054ee, Offset: 0x1530
// Size: 0x17c
function private update_damage_effects(localclientnum, damage, death) {
    if (is_true(self.dot_no_splatter) && damage < 10 && damage > 0) {
        self.dot_no_splatter = 0;
    } else if (self.dot_damaged === 1 && damage > 0) {
        function_47d0632f(localclientnum, damage, death, 1, 0);
        self.dot_damaged = 0;
    } else if (damage > 0) {
        function_47d0632f(localclientnum, damage, death, 0, 0);
    }
    if (damage > level.blood.rob.damage_threshold) {
        if (!self function_d2503806(self.wound_rob)) {
            self playrenderoverridebundle(self.wound_rob);
        }
        if (self function_d2503806(self.wound_rob)) {
            self thread function_f192f00b(localclientnum, self.wound_rob);
        }
    }
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0x7e0fd9d8, Offset: 0x16b8
// Size: 0x452
function private player_splatter(localclientnum) {
    level notify("player_splatter" + localclientnum);
    level endon("player_splatter" + localclientnum);
    while (true) {
        level waittill(#"splatters_active");
        while (true) {
            splatter = getsplatter(localclientnum);
            blur = 0;
            opacity = 0;
            for (i = 0; i < 4; i++) {
                if (isdefined(splatter.splatters[i][#"blur amount"]) && splatter.splatters[i][#"blur amount"] > blur) {
                    blur = splatter.splatters[i][#"blur amount"];
                }
                if (isdefined(splatter.splatters[i][#"opacity"]) && splatter.splatters[i][#"opacity"] > opacity) {
                    opacity = splatter.splatters[i][#"opacity"];
                }
            }
            if (blur > 0 || opacity > 0) {
                splatter.var_9e4cc220 = 1;
                local_player = function_5c10bd79(localclientnum);
                if (!local_player function_d2cb869e(#"hash_4a1db95d40ab50d")) {
                    function_a837926b(localclientnum, #"hash_4a1db95d40ab50d");
                    function_4238734d(localclientnum, #"hash_4a1db95d40ab50d", "Inner Mask", 0.1);
                    function_4238734d(localclientnum, #"hash_4a1db95d40ab50d", "Outer Mask", 0.8);
                }
                if (!local_player function_d2cb869e(#"hash_1502559766b0e08f")) {
                    function_a837926b(localclientnum, #"hash_1502559766b0e08f");
                }
                if (local_player function_d2cb869e(#"hash_4a1db95d40ab50d")) {
                    function_4238734d(localclientnum, #"hash_4a1db95d40ab50d", "Blur", blur);
                }
                if (local_player function_d2cb869e(#"hash_1502559766b0e08f")) {
                    function_4238734d(localclientnum, #"hash_1502559766b0e08f", "Opacity", opacity);
                }
            } else if (is_true(splatter.var_9e4cc220)) {
                splatter.var_9e4cc220 = 0;
                local_player = function_5c10bd79(localclientnum);
                if (function_148ccc79(localclientnum, #"hash_4a1db95d40ab50d")) {
                    codestoppostfxbundlelocal(localclientnum, #"hash_4a1db95d40ab50d");
                }
                if (function_148ccc79(localclientnum, #"hash_1502559766b0e08f") && is_false(local_player.var_a3b3e5cc)) {
                    function_24cd4cfb(localclientnum, #"hash_1502559766b0e08f");
                }
            } else {
                break;
            }
            waitframe(1);
        }
    }
}

// Namespace blood/namespace_5d18774f
// Params 3, eflags: 0x6 linked
// Checksum 0xa4bcb0e6, Offset: 0x1b18
// Size: 0xaa
function private function_b51756a0(localclientnum, splatter, damage) {
    if (damage > level.blood.var_de10c136.dot.var_6264f8dd) {
        return true;
    }
    if (!isdefined(splatter.var_90495387)) {
        return true;
    }
    if (getservertime(localclientnum) - splatter.var_90495387 < level.blood.var_de10c136.dot.var_372dff4b) {
        return false;
    }
    return true;
}

// Namespace blood/namespace_5d18774f
// Params 6, eflags: 0x6 linked
// Checksum 0x9aebd74a, Offset: 0x1bd0
// Size: 0x43c
function private splatter_postfx(localclientnum, player, damage, var_cd141ca2, death, dot) {
    level notify(localclientnum + "splatter_postfx" + var_cd141ca2);
    level endon(localclientnum + "splatter_postfx" + var_cd141ca2);
    blur = 0;
    opacity = 0;
    var_587ce5b0 = 0;
    var_49774f1 = 0;
    hold_time = 0;
    splatter = getsplatter(localclientnum);
    if (dot && !death) {
        splatter.var_90495387 = getservertime(localclientnum);
        blur = level.blood.var_de10c136.dot.blur;
        opacity = level.blood.var_de10c136.dot.opacity;
        var_587ce5b0 = level.blood.var_de10c136.dot.var_587ce5b0;
        hold_time = level.blood.var_de10c136.dot.hold_time;
    } else if (function_b51756a0(localclientnum, splatter, damage)) {
        for (i = level.blood.var_de10c136.damage_ranges - 1; i >= 0; i--) {
            if (damage > level.blood.var_de10c136.range[i].start || level.blood.scriptbundle.var_3e1e9389 - 1 == i && death) {
                blur = level.blood.var_de10c136.range[i].blur;
                opacity = level.blood.var_de10c136.range[i].opacity;
                var_587ce5b0 = level.blood.var_de10c136.var_587ce5b0[i];
                var_49774f1 = level.blood.var_de10c136.var_49774f1[i];
                hold_time = level.blood.var_de10c136.hold_time[i];
                break;
            }
        }
    }
    if (isdefined(level.var_7db2b064) && [[ level.var_7db2b064 ]](localclientnum, player, damage)) {
        blur = 0;
        opacity = 0;
        var_587ce5b0 = 0;
        var_49774f1 = 0;
        hold_time = 0;
    }
    level thread rampvalue(localclientnum, 0, opacity, var_587ce5b0, var_cd141ca2, "Opacity");
    level thread rampvalue(localclientnum, 0, blur, var_587ce5b0, var_cd141ca2, "Blur Amount");
    wait(float(var_587ce5b0) / 1000);
    wait(float(hold_time) / 1000);
    level thread rampvalue(localclientnum, opacity, 0, var_49774f1, var_cd141ca2, "Opacity");
    level thread rampvalue(localclientnum, blur, 0, var_49774f1, var_cd141ca2, "Blur Amount");
}

// Namespace blood/namespace_5d18774f
// Params 6, eflags: 0x2 linked
// Checksum 0xb55887b5, Offset: 0x2018
// Size: 0x9c
function rampvalue(localclientnum, stagefrom, stageto, ramptime, var_cd141ca2, key) {
    level notify(localclientnum + "rampValue" + var_cd141ca2 + key);
    level endon(localclientnum + "rampValue" + var_cd141ca2 + key);
    util::lerp_generic(localclientnum, ramptime, &function_441ef0ca, stagefrom, stageto, var_cd141ca2, key);
}

// Namespace blood/namespace_5d18774f
// Params 8, eflags: 0x2 linked
// Checksum 0xe049b1f, Offset: 0x20c0
// Size: 0x138
function function_441ef0ca(*currenttime, elapsedtime, localclientnum, duration, stagefrom, stageto, var_cd141ca2, key) {
    percent = 1;
    if (duration > 0) {
        percent = elapsedtime / duration;
    }
    amount = stageto * percent + stagefrom * (1 - percent);
    splatter = getsplatter(localclientnum);
    if (!isdefined(splatter.splatters[var_cd141ca2][key])) {
        splatter.splatters[var_cd141ca2][key] = 0;
    }
    send_notify = amount > 0 && splatter.splatters[var_cd141ca2][key] == 0;
    splatter.splatters[var_cd141ca2][key] = amount;
    if (send_notify) {
        level notify(#"splatters_active");
    }
}

// Namespace blood/namespace_5d18774f
// Params 0, eflags: 0x6 linked
// Checksum 0x4824718a, Offset: 0x2200
// Size: 0x8a
function private player_base_health() {
    if (!self function_700ca4f5()) {
        return 150;
    }
    basehealth = self getplayerspawnhealth();
    basehealth += isdefined(level.var_90bb9821) ? level.var_90bb9821 : 0;
    if (isdefined(self.var_ee9b8af0)) {
        basehealth = self.var_ee9b8af0;
    }
    return basehealth;
}

// Namespace blood/namespace_5d18774f
// Params 0, eflags: 0x6 linked
// Checksum 0x82346ada, Offset: 0x2298
// Size: 0x13a
function private function_55d01d42() {
    assert(self function_700ca4f5());
    character_index = self getcharacterbodytype();
    fields = getcharacterfields(character_index, currentsessionmode());
    if (isdefined(fields) && (isdefined(fields.digitalblood) ? fields.digitalblood : 0)) {
        self.pstfx_blood = #"hash_21152915158b09dd";
        self.wound_rob = "rob_wound_blood_splatter_reaper";
        return;
    }
    if (util::is_mature()) {
        self.pstfx_blood = #"hash_2fe01f2d9cd2c4c";
        self.wound_rob = "rob_wound_blood_splatter";
        return;
    }
    self.pstfx_blood = #"hash_44dcb6ac5e8787e0";
    self.wound_rob = "rob_wound_blood_splatter";
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0xb9ee25e0, Offset: 0x23e0
// Size: 0x39e
function private function_87544c4a(localclientnum) {
    self endon(#"disconnect", #"death", #"hash_6bf3273fdaffc859");
    self util::function_6d0694af();
    basehealth = player_base_health();
    priorplayerhealth = renderhealthoverlayhealth(localclientnum, isdefined(self.prop) ? 0 : basehealth);
    var_a234f6c2 = basehealth * priorplayerhealth;
    var_4cdccc55 = util::is_mature();
    self function_55d01d42();
    self thread function_8d8880(localclientnum);
    while (true) {
        forceupdate = 0;
        if (util::is_mature() != var_4cdccc55) {
            forceupdate = 1;
            self function_436ee4c2(localclientnum, #"hash_2fe01f2d9cd2c4c");
            self function_436ee4c2(localclientnum, #"hash_44dcb6ac5e8787e0");
            var_4cdccc55 = util::is_mature();
            self function_55d01d42();
        }
        render = renderhealthoverlay(localclientnum);
        if (render) {
            profilestart();
            basehealth = player_base_health();
            playerhealth = renderhealthoverlayhealth(localclientnum, isdefined(self.prop) ? 0 : basehealth);
            var_406028bf = basehealth * playerhealth;
            damageamount = var_a234f6c2 - var_406028bf;
            update_damage_effects(localclientnum, damageamount, playerhealth == 0);
            shouldenabledoverlay = 0;
            if (playerhealth < 1 || is_true(level.var_99aec053)) {
                shouldenabledoverlay = 1;
            } else if (is_true(self.blood_enabled)) {
                self function_436ee4c2(localclientnum, self.pstfx_blood);
            }
            priorplayerhealth = playerhealth;
            var_a234f6c2 = var_406028bf;
            if (!is_true(self.blood_enabled) && shouldenabledoverlay) {
                self function_70299400(localclientnum);
            }
            self function_9a8dc0ec(localclientnum, var_406028bf, forceupdate);
            profilestop();
        } else if (is_true(self.blood_enabled)) {
            self function_436ee4c2(localclientnum, self.pstfx_blood);
        }
        waitframe(1);
    }
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0x84600bbd, Offset: 0x2788
// Size: 0x23a
function private function_8d8880(localclientnum) {
    self endon(#"disconnect", #"death", #"hash_6bf3273fdaffc859");
    if (!level.blood.var_f5479429) {
        return;
    }
    while (true) {
        waitframe(1);
        if (is_true(self.blood_enabled)) {
            for (pulse = 0; pulse < 2; pulse++) {
                self notify(#"pulse_blood");
                self thread function_c0cdd1f2(localclientnum, 0, 1, level.blood.var_f2de135e.var_562c41de[pulse], #"damage pulse", self.pstfx_blood);
                wait(float(level.blood.var_f2de135e.var_562c41de[pulse]) / 1000);
                wait(float(level.blood.var_f2de135e.var_18f673f1[pulse]) / 1000);
                self thread function_c0cdd1f2(localclientnum, 1, 0, level.blood.var_f2de135e.var_92fc0d45[pulse], #"damage pulse", self.pstfx_blood);
                wait(float(level.blood.var_f2de135e.var_92fc0d45[pulse]) / 1000);
                wait(float(level.blood.var_f2de135e.var_5b5500f7[pulse]) / 1000);
            }
        }
    }
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0xfcc9f05a, Offset: 0x29d0
// Size: 0x9c
function private function_493a8fbc(localclientnum) {
    self endon(#"entitydeleted");
    self waittill(#"death", #"hash_6bf3273fdaffc859");
    self function_436ee4c2(localclientnum, self.pstfx_blood);
    waittillframeend();
    self callback::on_shutdown(&function_2a16507);
    self function_163791a7(localclientnum);
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0x74769d2a, Offset: 0x2a78
// Size: 0x27c
function private function_163791a7(localclientnum) {
    self endon(#"dead", #"entitydeleted");
    self.var_a3b3e5cc = 1;
    var_3d2a4b86 = 4;
    self codeplaypostfxbundle(self.pstfx_blood);
    self codeplaypostfxbundle(#"hash_1502559766b0e08f");
    self codeplaypostfxbundle(#"hash_5b630a217af16732");
    self function_116b95e5(#"hash_1502559766b0e08f", "Opacity", 1);
    self thread function_c0cdd1f2(localclientnum, 0, 1, 2000, "Blur Amount", #"hash_5b630a217af16732");
    self function_116b95e5(self.pstfx_blood, "Desaturation", 0);
    self function_116b95e5(self.pstfx_blood, "Damage Pulse", 1);
    self function_116b95e5(self.pstfx_blood, "Fade", level.blood.fade[var_3d2a4b86]);
    self function_116b95e5(self.pstfx_blood, "Opacity", level.blood.opacity[var_3d2a4b86]);
    self function_116b95e5(self.pstfx_blood, "Vignette Darkening Amount", level.blood.var_4c8629ad[var_3d2a4b86]);
    self function_116b95e5(self.pstfx_blood, "Vignette Darkening Factor", level.blood.var_ea220db3[var_3d2a4b86]);
    self function_116b95e5(self.pstfx_blood, "Blur", level.blood.blur[var_3d2a4b86]);
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0x48e35cd0, Offset: 0x2d00
// Size: 0x54
function private function_2a16507(localclientnum) {
    self endon(#"entitydeleted");
    self notify(#"dead");
    self function_436ee4c2(localclientnum, self.pstfx_blood);
}

// Namespace blood/namespace_5d18774f
// Params 3, eflags: 0x6 linked
// Checksum 0x593a730b, Offset: 0x2d60
// Size: 0x6e
function private function_1cf17bbc(*localclientnum, new_blood_stage, *prior_blood_stage) {
    if (prior_blood_stage >= level.blood.rob.stage) {
        self.var_28fdff3c = 1;
    } else {
        self.var_28fdff3c = 0;
    }
    self.var_dff3bb2c = self.var_28fdff3c;
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0x6453e123, Offset: 0x2dd8
// Size: 0xfe
function private function_62b7e00d(localclientnum) {
    if (isdefined(level.blood.soundhandle)) {
        return;
    }
    level.blood.soundhandle = function_604c9983(localclientnum, level.blood.var_d8dc9013);
    waitresult = self waittill(#"death", #"hash_6bf3273fdaffc859", #"disconnect", #"critical_health_end");
    if (isdefined(level.blood.soundhandle)) {
        function_d48752e(localclientnum, level.blood.soundhandle);
        level.blood.soundhandle = undefined;
    }
}

// Namespace blood/namespace_5d18774f
// Params 4, eflags: 0x6 linked
// Checksum 0x7e76ff34, Offset: 0x2ee0
// Size: 0x1b6
function private function_e91b92e2(localclientnum, new_blood_stage, *prior_blood_stage, playerhealth) {
    if (prior_blood_stage == 4) {
        self.var_9861062 = 1;
        self enter_critical_health(new_blood_stage);
        if (is_true(self.blood_enabled)) {
            self function_116b95e5(self.pstfx_blood, #"damage pulse", 1);
        }
        if (playerhealth > 0) {
            playsound(new_blood_stage, level.blood.var_8691ed16, (0, 0, 0));
            self thread function_62b7e00d(new_blood_stage);
        }
    } else if (self.var_9861062) {
        if (isdefined(level.blood.soundhandle)) {
            if (playerhealth > 0) {
                playsound(new_blood_stage, level.blood.var_dad052de, (0, 0, 0));
            }
        }
        self.var_9861062 = 0;
        if (is_true(self.blood_enabled)) {
            self function_116b95e5(self.pstfx_blood, #"damage pulse", 0);
        }
    }
    if (prior_blood_stage < 4) {
        self notify(#"critical_health_end");
    }
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0xad020788, Offset: 0x30a0
// Size: 0xcc
function private function_56419db8(stage) {
    var_f2de135e = level.blood.var_f2de135e;
    for (pulse = 0; pulse < 2; pulse++) {
        var_f2de135e.var_562c41de[pulse] = var_f2de135e.time_in[pulse][stage];
        var_f2de135e.var_18f673f1[pulse] = var_f2de135e.var_a79aba98[pulse][stage];
        var_f2de135e.var_92fc0d45[pulse] = var_f2de135e.time_out[pulse][stage];
        var_f2de135e.var_5b5500f7[pulse] = var_f2de135e.var_97aa6fd2[pulse][stage];
    }
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0xcf33a7d0, Offset: 0x3178
// Size: 0x8c
function private play_new_stage_rumble(localclientnum) {
    self endon(#"death", #"hash_6bf3273fdaffc859", #"disconnect");
    for (i = 0; i < 2; i++) {
        self playrumbleonentity(localclientnum, "new_health_stage_cp");
        wait(0.4);
    }
}

// Namespace blood/namespace_5d18774f
// Params 3, eflags: 0x6 linked
// Checksum 0xc0ead529, Offset: 0x3210
// Size: 0x44
function private function_5a719e5(localclientnum, new_blood_stage, prior_blood_stage) {
    if (new_blood_stage > 0) {
        if (new_blood_stage > prior_blood_stage) {
            self thread play_new_stage_rumble(localclientnum);
        }
    }
}

// Namespace blood/namespace_5d18774f
// Params 3, eflags: 0x6 linked
// Checksum 0x24592059, Offset: 0x3260
// Size: 0x1bc
function private update_lightbar(localclientnum, new_blood_stage, prior_blood_stage) {
    if (new_blood_stage > 0) {
        switch (new_blood_stage) {
        case 1:
            setcontrollerlightbarcolorpulsing(localclientnum, (1, 1, 0), 2400);
            break;
        case 2:
            setcontrollerlightbarcolorpulsing(localclientnum, (1, 0.66, 0), 1800);
            break;
        case 3:
            setcontrollerlightbarcolorpulsing(localclientnum, (1, 0.33, 0), 1200);
            break;
        case 4:
            setcontrollerlightbarcolorpulsing(localclientnum, (1, 0, 0), 600);
            break;
        default:
            setcontrollerlightbarcolor(localclientnum);
            break;
        }
        return;
    }
    if (new_blood_stage != prior_blood_stage) {
        if (isdefined(level.controllercolor) && isdefined(level.controllercolor[localclientnum])) {
            setcontrollerlightbarcolor(localclientnum, level.controllercolor[localclientnum]);
            return;
        }
        setcontrollerlightbarcolor(localclientnum);
    }
}

// Namespace blood/namespace_5d18774f
// Params 3, eflags: 0x6 linked
// Checksum 0x95962ef0, Offset: 0x3428
// Size: 0x27e
function private function_9a8dc0ec(localclientnum, playerhealth, forceupdate) {
    if (!isdefined(self.last_blood_stage)) {
        self.last_blood_stage = 0;
    }
    prior_blood_stage = self.last_blood_stage;
    new_blood_stage = 0;
    if (!is_true(self.nobloodoverlay)) {
        if (playerhealth <= level.blood.threshold[1] && playerhealth > 0) {
            if (playerhealth <= level.blood.threshold[3]) {
                new_blood_stage = playerhealth <= level.blood.threshold[4] ? 4 : 3;
            } else {
                new_blood_stage = playerhealth <= level.blood.threshold[2] ? 2 : 1;
            }
        }
    }
    self update_lightbar(localclientnum, new_blood_stage, prior_blood_stage);
    if (new_blood_stage != prior_blood_stage || forceupdate) {
        ramptime = prior_blood_stage < new_blood_stage ? level.blood.var_587ce5b0 : level.blood.var_49774f1;
        self thread function_8fe966f4(localclientnum, prior_blood_stage, new_blood_stage, ramptime, self.pstfx_blood);
        if (is_true(self.blood_enabled)) {
            self function_116b95e5(self.pstfx_blood, #"hash_3886e6a5c0c3df4c", level.blood.blood_boost[new_blood_stage]);
        }
        self function_56419db8(new_blood_stage);
        self function_5a719e5(localclientnum, new_blood_stage, prior_blood_stage);
        self function_1cf17bbc(localclientnum, new_blood_stage, prior_blood_stage);
        self function_e91b92e2(localclientnum, new_blood_stage, prior_blood_stage, playerhealth);
    }
    self.last_blood_stage = new_blood_stage;
    /#
    #/
}

// Namespace blood/namespace_5d18774f
// Params 5, eflags: 0x2 linked
// Checksum 0xfb42838d, Offset: 0x36b0
// Size: 0x684
function function_8fe966f4(localclientnum, var_bfd952c7, new_stage, ramptime, postfx) {
    self endon(#"dead", #"hash_6d50f64fe99aed76");
    self notify(#"hash_224e2e71d8e6add3");
    self endon(#"hash_224e2e71d8e6add3");
    localplayer = function_5c10bd79(localclientnum);
    if (!isdefined(localplayer)) {
        return;
    }
    starttime = localplayer getclienttime();
    var_d183f050 = getservertime(localclientnum);
    var_e9d8aaf5 = level.blood.var_e9d8aaf5;
    var_5831bf35 = level.blood.var_5831bf35;
    currenttime = starttime;
    for (elapsedtime = 0; elapsedtime < ramptime; elapsedtime = currenttime - starttime) {
        var_a0b59ea2 = elapsedtime / ramptime;
        var_3198c720 = 1 - var_a0b59ea2;
        if (is_true(self.blood_enabled)) {
            self function_116b95e5(postfx, #"fade", level.blood.fade[var_bfd952c7] * var_3198c720 + level.blood.fade[new_stage] * var_a0b59ea2);
            self function_116b95e5(postfx, #"opacity", level.blood.opacity[var_bfd952c7] * var_3198c720 + level.blood.opacity[new_stage] * var_a0b59ea2);
            self function_116b95e5(postfx, #"vignette darkening amount", level.blood.var_4c8629ad[var_bfd952c7] * var_3198c720 + level.blood.var_4c8629ad[new_stage] * var_a0b59ea2);
            self function_116b95e5(postfx, #"vignette darkening factor", level.blood.var_ea220db3[var_bfd952c7] * var_3198c720 + level.blood.var_ea220db3[new_stage] * var_a0b59ea2);
            self function_116b95e5(postfx, #"blur", level.blood.blur[var_bfd952c7] * var_3198c720 + level.blood.blur[new_stage] * var_a0b59ea2);
            if (var_e9d8aaf5) {
                self function_116b95e5(postfx, #"refraction", level.blood.refraction[var_bfd952c7] * var_3198c720 + level.blood.refraction[new_stage] * var_a0b59ea2);
            }
            if (var_5831bf35) {
                self function_116b95e5(postfx, #"desaturation", level.blood.desaturation[var_bfd952c7] * var_3198c720 + level.blood.desaturation[new_stage] * var_a0b59ea2);
            }
        }
        waitframe(1);
        localplayer = function_5c10bd79(localclientnum);
        if (!isdefined(localplayer)) {
            return;
        }
        currenttime = localplayer getclienttime();
        var_5710f35c = getservertime(localclientnum);
        if (var_5710f35c < var_d183f050) {
            return;
        }
    }
    if (is_true(self.blood_enabled)) {
        self function_116b95e5(postfx, #"fade", level.blood.fade[new_stage]);
        self function_116b95e5(postfx, #"opacity", level.blood.opacity[new_stage]);
        self function_116b95e5(postfx, #"vignette darkening amount", level.blood.var_4c8629ad[new_stage]);
        self function_116b95e5(postfx, #"vignette darkening factor", level.blood.var_ea220db3[new_stage]);
        self function_116b95e5(postfx, #"blur", level.blood.blur[new_stage]);
        if (var_e9d8aaf5) {
            self function_116b95e5(postfx, #"refraction", level.blood.refraction[new_stage]);
        }
        if (var_5831bf35) {
            self function_116b95e5(postfx, #"desaturation", level.blood.desaturation[new_stage]);
        }
    }
}

// Namespace blood/namespace_5d18774f
// Params 6, eflags: 0x2 linked
// Checksum 0xe8c78c47, Offset: 0x3d40
// Size: 0x26c
function function_c0cdd1f2(localclientnum, stagefrom, stageto, ramptime, key, postfx) {
    self endon(#"death", #"hash_6bf3273fdaffc859", #"hash_6d50f64fe99aed76");
    var_97b5c837 = "rampPostFx" + key + postfx;
    self notify(var_97b5c837);
    self endon(var_97b5c837);
    localplayer = function_5c10bd79(localclientnum);
    if (!isdefined(localplayer)) {
        return;
    }
    starttime = localplayer getclienttime();
    var_d183f050 = getservertime(localclientnum);
    currenttime = starttime;
    for (elapsedtime = 0; elapsedtime < ramptime; elapsedtime = currenttime - starttime) {
        percent = elapsedtime / ramptime;
        amount = stageto * percent + stagefrom * (1 - percent);
        if (is_true(self.blood_enabled) || is_true(self.var_a3b3e5cc)) {
            self function_116b95e5(postfx, key, amount);
        }
        waitframe(1);
        localplayer = function_5c10bd79(localclientnum);
        if (!isdefined(localplayer)) {
            return;
        }
        currenttime = localplayer getclienttime();
        var_5710f35c = getservertime(localclientnum);
        if (var_5710f35c < var_d183f050) {
            return;
        }
    }
    if (is_true(self.blood_enabled) || is_true(self.var_a3b3e5cc)) {
        self function_116b95e5(postfx, key, stageto);
    }
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0x746bf2f4, Offset: 0x3fb8
// Size: 0x8c
function private function_70299400(*localclientnum) {
    if (level.var_4ecf5754 === #"silent_film") {
        return;
    }
    self.blood_enabled = 1;
    if (is_true(self.blood_enabled)) {
        if (!self function_d2cb869e(self.pstfx_blood)) {
            self codeplaypostfxbundle(self.pstfx_blood);
        }
    }
}

// Namespace blood/namespace_5d18774f
// Params 2, eflags: 0x6 linked
// Checksum 0xe4f6e598, Offset: 0x4050
// Size: 0x294
function private function_436ee4c2(localclientnum, pstfx_blood) {
    self notify(#"hash_6d50f64fe99aed76");
    if (isdefined(self)) {
        if (self function_d2cb869e(pstfx_blood)) {
            self codestoppostfxbundle(pstfx_blood);
        }
        if (self function_d2cb869e(#"hash_5b630a217af16732")) {
            self codestoppostfxbundle(#"hash_5b630a217af16732");
        }
        if (self function_d2cb869e(#"hash_4a1db95d40ab50d")) {
            self codestoppostfxbundle(#"hash_4a1db95d40ab50d");
        }
        if (self function_d2cb869e(#"hash_1502559766b0e08f")) {
            self codestoppostfxbundle(#"hash_1502559766b0e08f");
        }
        self.blood_enabled = 0;
        self.var_a3b3e5cc = 0;
    } else {
        if (function_148ccc79(localclientnum, pstfx_blood)) {
            codestoppostfxbundlelocal(localclientnum, pstfx_blood);
        }
        if (function_148ccc79(localclientnum, #"hash_5b630a217af16732")) {
            codestoppostfxbundlelocal(localclientnum, #"hash_5b630a217af16732");
        }
        if (function_148ccc79(localclientnum, #"hash_4a1db95d40ab50d")) {
            codestoppostfxbundlelocal(localclientnum, #"hash_4a1db95d40ab50d");
        }
        if (function_148ccc79(localclientnum, #"hash_1502559766b0e08f")) {
            codestoppostfxbundlelocal(localclientnum, #"hash_1502559766b0e08f");
        }
    }
    if (!isdefined(self)) {
        if (isdefined(level.controllercolor) && isdefined(level.controllercolor[localclientnum])) {
            setcontrollerlightbarcolor(localclientnum, level.controllercolor[localclientnum]);
            return;
        }
        setcontrollerlightbarcolor(localclientnum);
    }
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0xa237f13a, Offset: 0x42f0
// Size: 0x1b56
function private function_dd830dee(var_3942c692) {
    level.blood = spawnstruct();
    if (isdefined(var_3942c692)) {
        level.blood.scriptbundle = getscriptbundle(var_3942c692);
    } else if (sessionmodeiswarzonegame()) {
        level.blood.scriptbundle = getscriptbundle("wz_blood_settings");
    } else {
        level.blood.scriptbundle = getgametypesetting(#"hardcoremode") ? getscriptbundle("hardcore_blood_settings") : getscriptbundle("cp_blood_settings");
    }
    assert(isdefined(level.blood.scriptbundle));
    if (!isdefined(level.blood.var_e9d8aaf5)) {
        level.blood.var_e9d8aaf5 = isdefined(level.blood.scriptbundle.var_e9d8aaf5) ? level.blood.scriptbundle.var_e9d8aaf5 : 0;
    }
    level.blood.refraction = [];
    if (!isdefined(level.blood.refraction[0])) {
        level.blood.refraction[0] = isdefined(level.blood.scriptbundle.var_9e65e691) ? level.blood.scriptbundle.var_9e65e691 : 0;
    }
    if (!isdefined(level.blood.refraction[1])) {
        level.blood.refraction[1] = isdefined(level.blood.scriptbundle.var_49ddbdf6) ? level.blood.scriptbundle.var_49ddbdf6 : 0;
    }
    if (!isdefined(level.blood.refraction[2])) {
        level.blood.refraction[2] = isdefined(level.blood.scriptbundle.var_83022fca) ? level.blood.scriptbundle.var_83022fca : 0;
    }
    if (!isdefined(level.blood.refraction[3])) {
        level.blood.refraction[3] = isdefined(level.blood.scriptbundle.var_90b9cb39) ? level.blood.scriptbundle.var_90b9cb39 : 0;
    }
    if (!isdefined(level.blood.refraction[4])) {
        level.blood.refraction[4] = isdefined(level.blood.scriptbundle.var_e790f8e6) ? level.blood.scriptbundle.var_e790f8e6 : 0;
    }
    if (!isdefined(level.blood.var_5831bf35)) {
        level.blood.var_5831bf35 = isdefined(level.blood.scriptbundle.var_5831bf35) ? level.blood.scriptbundle.var_5831bf35 : 0;
    }
    level.blood.desaturation = [];
    if (!isdefined(level.blood.desaturation[0])) {
        level.blood.desaturation[0] = isdefined(level.blood.scriptbundle.var_39a52851) ? level.blood.scriptbundle.var_39a52851 : 0;
    }
    if (!isdefined(level.blood.desaturation[1])) {
        level.blood.desaturation[1] = isdefined(level.blood.scriptbundle.var_53df5cdd) ? level.blood.scriptbundle.var_53df5cdd : 0;
    }
    if (!isdefined(level.blood.desaturation[2])) {
        level.blood.desaturation[2] = isdefined(level.blood.scriptbundle.var_56136145) ? level.blood.scriptbundle.var_56136145 : 0;
    }
    if (!isdefined(level.blood.desaturation[3])) {
        level.blood.desaturation[3] = isdefined(level.blood.scriptbundle.var_285085c0) ? level.blood.scriptbundle.var_285085c0 : 0;
    }
    if (!isdefined(level.blood.desaturation[4])) {
        level.blood.desaturation[4] = isdefined(level.blood.scriptbundle.var_3c8fae3e) ? level.blood.scriptbundle.var_3c8fae3e : 0;
    }
    level.blood.blood_boost = [];
    if (!isdefined(level.blood.blood_boost[0])) {
        level.blood.blood_boost[0] = isdefined(level.blood.scriptbundle.var_fd86eebc) ? level.blood.scriptbundle.var_fd86eebc : 0;
    }
    if (!isdefined(level.blood.blood_boost[1])) {
        level.blood.blood_boost[1] = isdefined(level.blood.scriptbundle.var_e741c232) ? level.blood.scriptbundle.var_e741c232 : 0;
    }
    if (!isdefined(level.blood.blood_boost[2])) {
        level.blood.blood_boost[2] = isdefined(level.blood.scriptbundle.var_e11b35e5) ? level.blood.scriptbundle.var_e11b35e5 : 0;
    }
    if (!isdefined(level.blood.blood_boost[3])) {
        level.blood.blood_boost[3] = isdefined(level.blood.scriptbundle.var_cadf096d) ? level.blood.scriptbundle.var_cadf096d : 0;
    }
    if (!isdefined(level.blood.blood_boost[4])) {
        level.blood.blood_boost[4] = isdefined(level.blood.scriptbundle.var_c3ad7b0a) ? level.blood.scriptbundle.var_c3ad7b0a : 0;
    }
    level.blood.blur = [];
    if (!isdefined(level.blood.blur[0])) {
        level.blood.blur[0] = isdefined(level.blood.scriptbundle.var_d4e546df) ? level.blood.scriptbundle.var_d4e546df : 0;
    }
    if (!isdefined(level.blood.blur[1])) {
        level.blood.blur[1] = isdefined(level.blood.scriptbundle.var_e6a76a63) ? level.blood.scriptbundle.var_e6a76a63 : 0;
    }
    if (!isdefined(level.blood.blur[2])) {
        level.blood.blur[2] = isdefined(level.blood.scriptbundle.var_b9320f69) ? level.blood.scriptbundle.var_b9320f69 : 0;
    }
    if (!isdefined(level.blood.blur[3])) {
        level.blood.blur[3] = isdefined(level.blood.scriptbundle.var_9af9d2f9) ? level.blood.scriptbundle.var_9af9d2f9 : 0;
    }
    if (!isdefined(level.blood.blur[4])) {
        level.blood.blur[4] = isdefined(level.blood.scriptbundle.var_acaf7664) ? level.blood.scriptbundle.var_acaf7664 : 0;
    }
    level.blood.opacity = [];
    if (!isdefined(level.blood.opacity[0])) {
        level.blood.opacity[0] = isdefined(level.blood.scriptbundle.var_a05e6a18) ? level.blood.scriptbundle.var_a05e6a18 : 0;
    }
    if (!isdefined(level.blood.opacity[1])) {
        level.blood.opacity[1] = isdefined(level.blood.scriptbundle.var_920ccd75) ? level.blood.scriptbundle.var_920ccd75 : 0;
    }
    if (!isdefined(level.blood.opacity[2])) {
        level.blood.opacity[2] = isdefined(level.blood.scriptbundle.var_54f2533d) ? level.blood.scriptbundle.var_54f2533d : 0;
    }
    if (!isdefined(level.blood.opacity[3])) {
        level.blood.opacity[3] = isdefined(level.blood.scriptbundle.var_467fb658) ? level.blood.scriptbundle.var_467fb658 : 0;
    }
    if (!isdefined(level.blood.opacity[4])) {
        level.blood.opacity[4] = isdefined(level.blood.scriptbundle.var_ed5b8411) ? level.blood.scriptbundle.var_ed5b8411 : 0;
    }
    level.blood.threshold = [];
    if (!isdefined(level.blood.threshold[0])) {
        level.blood.threshold[0] = isdefined(level.blood.scriptbundle.var_4e06fd93) ? level.blood.scriptbundle.var_4e06fd93 : 0;
    }
    if (!isdefined(level.blood.threshold[1])) {
        level.blood.threshold[1] = isdefined(level.blood.scriptbundle.var_3bc4590e) ? level.blood.scriptbundle.var_3bc4590e : 0;
    }
    if (!isdefined(level.blood.threshold[2])) {
        level.blood.threshold[2] = isdefined(level.blood.scriptbundle.var_bc1cd9c5) ? level.blood.scriptbundle.var_bc1cd9c5 : 0;
    }
    if (!isdefined(level.blood.threshold[3])) {
        level.blood.threshold[3] = isdefined(level.blood.scriptbundle.var_91558437) ? level.blood.scriptbundle.var_91558437 : 0;
    }
    if (!isdefined(level.blood.threshold[4])) {
        level.blood.threshold[4] = isdefined(level.blood.scriptbundle.var_7f6fe064) ? level.blood.scriptbundle.var_7f6fe064 : 0;
    }
    level.blood.fade = [];
    if (!isdefined(level.blood.fade[0])) {
        level.blood.fade[0] = isdefined(level.blood.scriptbundle.var_5eab69fa) ? level.blood.scriptbundle.var_5eab69fa : 0;
    }
    if (!isdefined(level.blood.fade[1])) {
        level.blood.fade[1] = isdefined(level.blood.scriptbundle.var_83dbb45a) ? level.blood.scriptbundle.var_83dbb45a : 0;
    }
    if (!isdefined(level.blood.fade[2])) {
        level.blood.fade[2] = isdefined(level.blood.scriptbundle.var_720a10b7) ? level.blood.scriptbundle.var_720a10b7 : 0;
    }
    if (!isdefined(level.blood.fade[3])) {
        level.blood.fade[3] = isdefined(level.blood.scriptbundle.var_f1f39088) ? level.blood.scriptbundle.var_f1f39088 : 0;
    }
    if (!isdefined(level.blood.fade[4])) {
        level.blood.fade[4] = isdefined(level.blood.scriptbundle.var_2945ff2c) ? level.blood.scriptbundle.var_2945ff2c : 0;
    }
    level.blood.var_4c8629ad = [];
    if (!isdefined(level.blood.var_4c8629ad[0])) {
        level.blood.var_4c8629ad[0] = isdefined(level.blood.scriptbundle.var_43305756) ? level.blood.scriptbundle.var_43305756 : 0;
    }
    if (!isdefined(level.blood.var_4c8629ad[1])) {
        level.blood.var_4c8629ad[1] = isdefined(level.blood.scriptbundle.var_517af3eb) ? level.blood.scriptbundle.var_517af3eb : 0;
    }
    if (!isdefined(level.blood.var_4c8629ad[2])) {
        level.blood.var_4c8629ad[2] = isdefined(level.blood.scriptbundle.var_6ec52e7f) ? level.blood.scriptbundle.var_6ec52e7f : 0;
    }
    if (!isdefined(level.blood.var_4c8629ad[3])) {
        level.blood.var_4c8629ad[3] = isdefined(level.blood.scriptbundle.var_7cfacaea) ? level.blood.scriptbundle.var_7cfacaea : 0;
    }
    if (!isdefined(level.blood.var_4c8629ad[4])) {
        level.blood.var_4c8629ad[4] = isdefined(level.blood.scriptbundle.var_fd0b4b01) ? level.blood.scriptbundle.var_fd0b4b01 : 0;
    }
    level.blood.var_ea220db3 = [];
    if (!isdefined(level.blood.var_ea220db3[0])) {
        level.blood.var_ea220db3[0] = isdefined(level.blood.scriptbundle.var_79c59717) ? level.blood.scriptbundle.var_79c59717 : 0;
    }
    if (!isdefined(level.blood.var_ea220db3[1])) {
        level.blood.var_ea220db3[1] = isdefined(level.blood.scriptbundle.var_a403eb93) ? level.blood.scriptbundle.var_a403eb93 : 0;
    }
    if (!isdefined(level.blood.var_ea220db3[2])) {
        level.blood.var_ea220db3[2] = isdefined(level.blood.scriptbundle.var_95514e2e) ? level.blood.scriptbundle.var_95514e2e : 0;
    }
    if (!isdefined(level.blood.var_ea220db3[3])) {
        level.blood.var_ea220db3[3] = isdefined(level.blood.scriptbundle.var_bf94a2b4) ? level.blood.scriptbundle.var_bf94a2b4 : 0;
    }
    if (!isdefined(level.blood.var_ea220db3[4])) {
        level.blood.var_ea220db3[4] = isdefined(level.blood.scriptbundle.var_3fe4235d) ? level.blood.scriptbundle.var_3fe4235d : 0;
    }
    function_f50652a9();
    function_b0e51f43();
    function_6ad98c9c();
    level.blood.rob = spawnstruct();
    if (!isdefined(level.blood.rob.stage)) {
        level.blood.rob.stage = isdefined(level.blood.scriptbundle.rob_stage) ? level.blood.scriptbundle.rob_stage : 0;
    }
    if (!isdefined(level.blood.rob.hold_time)) {
        level.blood.rob.hold_time = isdefined(level.blood.scriptbundle.var_ae06158b) ? level.blood.scriptbundle.var_ae06158b : 0;
    }
    if (!isdefined(level.blood.rob.fade_time)) {
        level.blood.rob.fade_time = isdefined(level.blood.scriptbundle.var_356550c9) ? level.blood.scriptbundle.var_356550c9 : 0;
    }
    if (!isdefined(level.blood.rob.damage_threshold)) {
        level.blood.rob.damage_threshold = isdefined(level.blood.scriptbundle.var_8635c7a1) ? level.blood.scriptbundle.var_8635c7a1 : 0;
    }
    if (!isdefined(level.blood.var_f5479429)) {
        level.blood.var_f5479429 = isdefined(level.blood.scriptbundle.var_f5479429) ? level.blood.scriptbundle.var_f5479429 : 0;
    }
    level.blood.var_587ce5b0 = level.blood.scriptbundle.var_587ce5b0;
    level.blood.var_49774f1 = level.blood.scriptbundle.var_49774f1;
    if (!isdefined(level.blood.var_f5479429)) {
        level.blood.var_f5479429 = isdefined(level.blood.scriptbundle.var_f5479429) ? level.blood.scriptbundle.var_f5479429 : 0;
    }
    if (!isdefined(level.blood.var_8691ed16)) {
        level.blood.var_8691ed16 = isdefined(level.blood.scriptbundle.var_8691ed16) ? level.blood.scriptbundle.var_8691ed16 : "";
    }
    if (!isdefined(level.blood.var_d8dc9013)) {
        level.blood.var_d8dc9013 = isdefined(level.blood.scriptbundle.var_d8dc9013) ? level.blood.scriptbundle.var_d8dc9013 : "";
    }
    if (!isdefined(level.blood.var_dad052de)) {
        level.blood.var_dad052de = isdefined(level.blood.scriptbundle.var_dad052de) ? level.blood.scriptbundle.var_dad052de : "";
    }
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0x9de9ee37, Offset: 0x5e50
// Size: 0x8c
function private function_162fe6ec(localclientnum) {
    splatter = spawnstruct();
    splatter.splatters = [];
    for (j = 0; j < 4; j++) {
        splatter.splatters[j] = [];
    }
    splatter.var_120a7b2c = 0;
    level.blood.var_de10c136.var_51036e02[localclientnum] = splatter;
}

// Namespace blood/namespace_5d18774f
// Params 0, eflags: 0x6 linked
// Checksum 0xcd2dba21, Offset: 0x5ee8
// Size: 0xb5a
function private function_b0e51f43() {
    level.blood.var_de10c136 = spawnstruct();
    level.blood.var_de10c136.localclients = [];
    for (i = 0; i < getmaxlocalclients(); i++) {
        function_162fe6ec(i);
    }
    if (!isdefined(level.blood.var_de10c136.enabled)) {
        level.blood.var_de10c136.enabled = isdefined(level.blood.scriptbundle.var_f70c3e8d) ? level.blood.scriptbundle.var_f70c3e8d : 0;
    }
    if (!isdefined(level.blood.var_de10c136.damage_ranges)) {
        level.blood.var_de10c136.damage_ranges = isdefined(level.blood.scriptbundle.damage_ranges) ? level.blood.scriptbundle.damage_ranges : 1;
    }
    if (!isdefined(level.blood.var_de10c136.var_3e1e9389)) {
        level.blood.var_de10c136.var_3e1e9389 = isdefined(level.blood.scriptbundle.var_3e1e9389) ? level.blood.scriptbundle.var_3e1e9389 : 1;
    }
    level.blood.var_de10c136.range = [];
    level.blood.var_de10c136.var_587ce5b0 = [];
    level.blood.var_de10c136.var_49774f1 = [];
    level.blood.var_de10c136.hold_time = [];
    for (i = 0; i < level.blood.var_de10c136.damage_ranges; i++) {
        level.blood.var_de10c136.range[i] = spawnstruct();
        if (i > 0) {
            if (!isdefined(level.blood.var_de10c136.range[i].start)) {
                level.blood.var_de10c136.range[i].start = isdefined(level.blood.scriptbundle.("damage_range_start_" + i)) ? level.blood.scriptbundle.("damage_range_start_" + i) : level.blood.var_de10c136.range[i - 1].start;
            }
        } else if (!isdefined(level.blood.var_de10c136.range[i].start)) {
            level.blood.var_de10c136.range[i].start = isdefined(level.blood.scriptbundle.("damage_range_start_" + i)) ? level.blood.scriptbundle.("damage_range_start_" + i) : 0;
        }
        if (!isdefined(level.blood.var_de10c136.range[i].blur)) {
            level.blood.var_de10c136.range[i].blur = isdefined(level.blood.scriptbundle.("damage_range_blur_" + i)) ? level.blood.scriptbundle.("damage_range_blur_" + i) : 0;
        }
        if (!isdefined(level.blood.var_de10c136.range[i].opacity)) {
            level.blood.var_de10c136.range[i].opacity = isdefined(level.blood.scriptbundle.("damage_range_opacity_" + i)) ? level.blood.scriptbundle.("damage_range_opacity_" + i) : 0;
        }
        if (!isdefined(level.blood.var_de10c136.var_587ce5b0[i])) {
            level.blood.var_de10c136.var_587ce5b0[i] = isdefined(level.blood.scriptbundle.("hit_flash_ramp_in_time_" + i)) ? level.blood.scriptbundle.("hit_flash_ramp_in_time_" + i) : 0;
        }
        if (!isdefined(level.blood.var_de10c136.var_49774f1[i])) {
            level.blood.var_de10c136.var_49774f1[i] = isdefined(level.blood.scriptbundle.("hit_flash_ramp_out_time_" + i)) ? level.blood.scriptbundle.("hit_flash_ramp_out_time_" + i) : 0;
        }
        if (!isdefined(level.blood.var_de10c136.hold_time[i])) {
            level.blood.var_de10c136.hold_time[i] = isdefined(level.blood.scriptbundle.("hit_flash_hold_time_" + i)) ? level.blood.scriptbundle.("hit_flash_hold_time_" + i) : 0;
        }
    }
    level.blood.var_de10c136.dot = spawnstruct();
    if (!isdefined(level.blood.var_de10c136.dot.blur)) {
        level.blood.var_de10c136.dot.blur = isdefined(level.blood.scriptbundle.("dot_blur")) ? level.blood.scriptbundle.("dot_blur") : 0;
    }
    if (!isdefined(level.blood.var_de10c136.dot.opacity)) {
        level.blood.var_de10c136.dot.opacity = isdefined(level.blood.scriptbundle.("dot_opacity")) ? level.blood.scriptbundle.("dot_opacity") : 0;
    }
    if (!isdefined(level.blood.var_de10c136.dot.var_587ce5b0)) {
        level.blood.var_de10c136.dot.var_587ce5b0 = isdefined(level.blood.scriptbundle.("dot_hit_flash_ramp_in_time")) ? level.blood.scriptbundle.("dot_hit_flash_ramp_in_time") : 0;
    }
    if (!isdefined(level.blood.var_de10c136.dot.var_49774f1)) {
        level.blood.var_de10c136.dot.var_49774f1 = isdefined(level.blood.scriptbundle.("dot_hit_flash_ramp_out_time")) ? level.blood.scriptbundle.("dot_hit_flash_ramp_out_time") : 0;
    }
    if (!isdefined(level.blood.var_de10c136.dot.hold_time)) {
        level.blood.var_de10c136.dot.hold_time = isdefined(level.blood.scriptbundle.("dot_hit_flash_hold_time")) ? level.blood.scriptbundle.("dot_hit_flash_hold_time") : 0;
    }
    if (!isdefined(level.blood.var_de10c136.dot.var_6264f8dd)) {
        level.blood.var_de10c136.dot.var_6264f8dd = isdefined(level.blood.scriptbundle.("dot_ignore_damage_threshold")) ? level.blood.scriptbundle.("dot_ignore_damage_threshold") : 0;
    }
    if (!isdefined(level.blood.var_de10c136.dot.var_372dff4b)) {
        level.blood.var_de10c136.dot.var_372dff4b = isdefined(level.blood.scriptbundle.("dot_ignore_damage_time")) ? level.blood.scriptbundle.("dot_ignore_damage_time") : 0;
    }
}

// Namespace blood/namespace_5d18774f
// Params 0, eflags: 0x6 linked
// Checksum 0x81ddb3e2, Offset: 0x6a50
// Size: 0x1b30
function private function_f50652a9() {
    level.blood.var_f2de135e = spawnstruct();
    level.blood.var_f2de135e.time_in = [];
    level.blood.var_f2de135e.var_a79aba98 = [];
    level.blood.var_f2de135e.time_out = [];
    level.blood.var_f2de135e.var_97aa6fd2 = [];
    level.blood.var_f2de135e.var_562c41de = [];
    level.blood.var_f2de135e.var_18f673f1 = [];
    level.blood.var_f2de135e.var_92fc0d45 = [];
    level.blood.var_f2de135e.var_5b5500f7 = [];
    level.blood.var_f2de135e.time_in[0] = [];
    if (!isdefined(level.blood.var_f2de135e.time_in[0][0])) {
        level.blood.var_f2de135e.time_in[0][0] = isdefined(level.blood.scriptbundle.var_b3272558) ? level.blood.scriptbundle.var_b3272558 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.time_in[0][1])) {
        level.blood.var_f2de135e.time_in[0][1] = isdefined(level.blood.scriptbundle.var_d014df1f) ? level.blood.scriptbundle.var_d014df1f : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.time_in[0][2])) {
        level.blood.var_f2de135e.time_in[0][2] = isdefined(level.blood.scriptbundle.var_bdca3a8a) ? level.blood.scriptbundle.var_bdca3a8a : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.time_in[0][3])) {
        level.blood.var_f2de135e.time_in[0][3] = isdefined(level.blood.scriptbundle.var_ab891608) ? level.blood.scriptbundle.var_ab891608 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.time_in[0][4])) {
        level.blood.var_f2de135e.time_in[0][4] = isdefined(level.blood.scriptbundle.var_996371bd) ? level.blood.scriptbundle.var_996371bd : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_562c41de[0])) {
        level.blood.var_f2de135e.var_562c41de[0] = level.blood.var_f2de135e.time_in[0][0];
    }
    level.blood.var_f2de135e.time_in[1] = [];
    if (!isdefined(level.blood.var_f2de135e.time_in[1][0])) {
        level.blood.var_f2de135e.time_in[1][0] = isdefined(level.blood.scriptbundle.var_8623b2d2) ? level.blood.scriptbundle.var_8623b2d2 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.time_in[1][1])) {
        level.blood.var_f2de135e.time_in[1][1] = isdefined(level.blood.scriptbundle.var_7862174f) ? level.blood.scriptbundle.var_7862174f : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.time_in[1][2])) {
        level.blood.var_f2de135e.time_in[1][2] = isdefined(level.blood.scriptbundle.var_d2b4cbf3) ? level.blood.scriptbundle.var_d2b4cbf3 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.time_in[1][3])) {
        level.blood.var_f2de135e.time_in[1][3] = isdefined(level.blood.scriptbundle.var_bcf6a077) ? level.blood.scriptbundle.var_bcf6a077 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.time_in[1][4])) {
        level.blood.var_f2de135e.time_in[1][4] = isdefined(level.blood.scriptbundle.var_af1f04c8) ? level.blood.scriptbundle.var_af1f04c8 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_562c41de[1])) {
        level.blood.var_f2de135e.var_562c41de[1] = level.blood.var_f2de135e.time_in[1][0];
    }
    level.blood.var_f2de135e.var_a79aba98[0] = [];
    if (!isdefined(level.blood.var_f2de135e.var_a79aba98[0][0])) {
        level.blood.var_f2de135e.var_a79aba98[0][0] = isdefined(level.blood.scriptbundle.var_a647a17d) ? level.blood.scriptbundle.var_a647a17d : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_a79aba98[0][1])) {
        level.blood.var_f2de135e.var_a79aba98[0][1] = isdefined(level.blood.scriptbundle.var_2fc5ae5) ? level.blood.scriptbundle.var_2fc5ae5 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_a79aba98[0][2])) {
        level.blood.var_f2de135e.var_a79aba98[0][2] = isdefined(level.blood.scriptbundle.var_10be7669) ? level.blood.scriptbundle.var_10be7669 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_a79aba98[0][3])) {
        level.blood.var_f2de135e.var_a79aba98[0][3] = isdefined(level.blood.scriptbundle.var_9147f772) ? level.blood.scriptbundle.var_9147f772 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_a79aba98[0][4])) {
        level.blood.var_f2de135e.var_a79aba98[0][4] = isdefined(level.blood.scriptbundle.var_5f8a13f7) ? level.blood.scriptbundle.var_5f8a13f7 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_18f673f1[0])) {
        level.blood.var_f2de135e.var_18f673f1[0] = level.blood.var_f2de135e.var_a79aba98[0][0];
    }
    level.blood.var_f2de135e.var_a79aba98[1] = [];
    if (!isdefined(level.blood.var_f2de135e.var_a79aba98[1][0])) {
        level.blood.var_f2de135e.var_a79aba98[1][0] = isdefined(level.blood.scriptbundle.var_96868f33) ? level.blood.scriptbundle.var_96868f33 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_a79aba98[1][1])) {
        level.blood.var_f2de135e.var_a79aba98[1][1] = isdefined(level.blood.scriptbundle.var_16780f18) ? level.blood.scriptbundle.var_16780f18 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_a79aba98[1][2])) {
        level.blood.var_f2de135e.var_a79aba98[1][2] = isdefined(level.blood.scriptbundle.var_48c373ae) ? level.blood.scriptbundle.var_48c373ae : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_a79aba98[1][3])) {
        level.blood.var_f2de135e.var_a79aba98[1][3] = isdefined(level.blood.scriptbundle.var_38fed425) ? level.blood.scriptbundle.var_38fed425 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_a79aba98[1][4])) {
        level.blood.var_f2de135e.var_a79aba98[1][4] = isdefined(level.blood.scriptbundle.var_6b3d38a1) ? level.blood.scriptbundle.var_6b3d38a1 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_18f673f1[1])) {
        level.blood.var_f2de135e.var_18f673f1[1] = level.blood.var_f2de135e.var_a79aba98[1][0];
    }
    level.blood.var_f2de135e.time_out[0] = [];
    if (!isdefined(level.blood.var_f2de135e.time_out[0][0])) {
        level.blood.var_f2de135e.time_out[0][0] = isdefined(level.blood.scriptbundle.var_54f5763f) ? level.blood.scriptbundle.var_54f5763f : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.time_out[0][1])) {
        level.blood.var_f2de135e.time_out[0][1] = isdefined(level.blood.scriptbundle.var_7cedbf3) ? level.blood.scriptbundle.var_7cedbf3 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.time_out[0][2])) {
        level.blood.var_f2de135e.time_out[0][2] = isdefined(level.blood.scriptbundle.var_3959bf08) ? level.blood.scriptbundle.var_3959bf08 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.time_out[0][3])) {
        level.blood.var_f2de135e.time_out[0][3] = isdefined(level.blood.scriptbundle.var_3e6f492f) ? level.blood.scriptbundle.var_3e6f492f : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.time_out[0][4])) {
        level.blood.var_f2de135e.time_out[0][4] = isdefined(level.blood.scriptbundle.var_704a2ce8) ? level.blood.scriptbundle.var_704a2ce8 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_92fc0d45[0])) {
        level.blood.var_f2de135e.var_92fc0d45[0] = level.blood.var_f2de135e.time_out[0][0];
    }
    level.blood.var_f2de135e.time_out[1] = [];
    if (!isdefined(level.blood.var_f2de135e.time_out[1][0])) {
        level.blood.var_f2de135e.time_out[1][0] = isdefined(level.blood.scriptbundle.var_50fd2cd8) ? level.blood.scriptbundle.var_50fd2cd8 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.time_out[1][1])) {
        level.blood.var_f2de135e.time_out[1][1] = isdefined(level.blood.scriptbundle.var_b2c3f064) ? level.blood.scriptbundle.var_b2c3f064 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.time_out[1][2])) {
        level.blood.var_f2de135e.time_out[1][2] = isdefined(level.blood.scriptbundle.var_855a1591) ? level.blood.scriptbundle.var_855a1591 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.time_out[1][3])) {
        level.blood.var_f2de135e.time_out[1][3] = isdefined(level.blood.scriptbundle.var_9731393f) ? level.blood.scriptbundle.var_9731393f : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.time_out[1][4])) {
        level.blood.var_f2de135e.time_out[1][4] = isdefined(level.blood.scriptbundle.var_e9dd5e9a) ? level.blood.scriptbundle.var_e9dd5e9a : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_92fc0d45[1])) {
        level.blood.var_f2de135e.var_92fc0d45[1] = level.blood.var_f2de135e.time_out[1][0];
    }
    level.blood.var_f2de135e.var_97aa6fd2[0] = [];
    if (!isdefined(level.blood.var_f2de135e.var_97aa6fd2[0][0])) {
        level.blood.var_f2de135e.var_97aa6fd2[0][0] = isdefined(level.blood.scriptbundle.var_9e799d8c) ? level.blood.scriptbundle.var_9e799d8c : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_97aa6fd2[0][1])) {
        level.blood.var_f2de135e.var_97aa6fd2[0][1] = isdefined(level.blood.scriptbundle.var_8bb8f80b) ? level.blood.scriptbundle.var_8bb8f80b : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_97aa6fd2[0][2])) {
        level.blood.var_f2de135e.var_97aa6fd2[0][2] = isdefined(level.blood.scriptbundle.var_7205c4a5) ? level.blood.scriptbundle.var_7205c4a5 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_97aa6fd2[0][3])) {
        level.blood.var_f2de135e.var_97aa6fd2[0][3] = isdefined(level.blood.scriptbundle.var_619e23d6) ? level.blood.scriptbundle.var_619e23d6 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_97aa6fd2[0][4])) {
        level.blood.var_f2de135e.var_97aa6fd2[0][4] = isdefined(level.blood.scriptbundle.var_56f00e7a) ? level.blood.scriptbundle.var_56f00e7a : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_5b5500f7[0])) {
        level.blood.var_f2de135e.var_5b5500f7[0] = level.blood.var_f2de135e.var_97aa6fd2[0][0];
    }
    level.blood.var_f2de135e.var_97aa6fd2[1] = [];
    if (!isdefined(level.blood.var_f2de135e.var_97aa6fd2[1][0])) {
        level.blood.var_f2de135e.var_97aa6fd2[1][0] = isdefined(level.blood.scriptbundle.var_ff41f2f5) ? level.blood.scriptbundle.var_ff41f2f5 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_97aa6fd2[1][1])) {
        level.blood.var_f2de135e.var_97aa6fd2[1][1] = isdefined(level.blood.scriptbundle.var_f0f35658) ? level.blood.scriptbundle.var_f0f35658 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_97aa6fd2[1][2])) {
        level.blood.var_f2de135e.var_97aa6fd2[1][2] = isdefined(level.blood.scriptbundle.var_9cf6ae3c) ? level.blood.scriptbundle.var_9cf6ae3c : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_97aa6fd2[1][3])) {
        level.blood.var_f2de135e.var_97aa6fd2[1][3] = isdefined(level.blood.scriptbundle.var_1ca22db5) ? level.blood.scriptbundle.var_1ca22db5 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_97aa6fd2[1][4])) {
        level.blood.var_f2de135e.var_97aa6fd2[1][4] = isdefined(level.blood.scriptbundle.var_6530117) ? level.blood.scriptbundle.var_6530117 : 0;
    }
    if (!isdefined(level.blood.var_f2de135e.var_5b5500f7[1])) {
        level.blood.var_f2de135e.var_5b5500f7[1] = level.blood.var_f2de135e.var_97aa6fd2[1][0];
    }
}

// Namespace blood/namespace_5d18774f
// Params 7, eflags: 0x2 linked
// Checksum 0xf32d5ab1, Offset: 0x8588
// Size: 0x56
function function_11057a7d(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        self notify(#"hash_6bf3273fdaffc859");
    }
}

// Namespace blood/namespace_5d18774f
// Params 0, eflags: 0x2 linked
// Checksum 0x7665b406, Offset: 0x85e8
// Size: 0x158
function function_6ad98c9c() {
    level.blood.gameskill = 1;
    if (!isdefined(level.blood.var_286fcc75)) {
        level.blood.var_286fcc75 = [];
        level.blood.var_286fcc75[0] = getscriptbundle(#"gamedifficulty_recruit");
        level.blood.var_286fcc75[1] = getscriptbundle(#"gamedifficulty_regular");
        level.blood.var_286fcc75[2] = getscriptbundle(#"gamedifficulty_hardened");
        level.blood.var_286fcc75[3] = getscriptbundle(#"gamedifficulty_veteran");
        level.blood.var_286fcc75[4] = getscriptbundle(#"gamedifficulty_realistic");
    }
}

// Namespace blood/namespace_5d18774f
// Params 7, eflags: 0x2 linked
// Checksum 0x69458419, Offset: 0x8748
// Size: 0x5c
function function_2b83fc6e(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        self thread function_17323bb3(fieldname);
    }
}

// Namespace blood/namespace_5d18774f
// Params 1, eflags: 0x6 linked
// Checksum 0x5abf4311, Offset: 0x87b0
// Size: 0x134
function private function_17323bb3(localclientnum) {
    self notify("7fdb2f58d63647d4");
    self endon("7fdb2f58d63647d4");
    self endon(#"death", #"hash_6bf3273fdaffc859", #"disconnect");
    gameskill = util::function_5a407dc8(localclientnum);
    shieldtime = level.blood.var_286fcc75[gameskill].player_deathinvulnerabletime;
    ramptime = 0.25;
    while (!isdefined(self.pstfx_blood)) {
        waitframe(1);
    }
    self function_116b95e5(self.pstfx_blood, #"desaturation", 1);
    wait(shieldtime);
    self thread function_c0cdd1f2(localclientnum, 1, 0, ramptime, #"desaturation", self.pstfx_blood);
}

// Namespace blood/namespace_5d18774f
// Params 7, eflags: 0x2 linked
// Checksum 0x3fe7de57, Offset: 0x88f0
// Size: 0xd4
function function_100ac98f(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        function_dd830dee(#"injured_blood_settings");
        level.var_99aec053 = 1;
        return;
    }
    function_dd830dee();
    level.var_99aec053 = undefined;
    if (function_148ccc79(fieldname, "rob_wound_blood_splatter")) {
        codestoppostfxbundlelocal(fieldname, "rob_wound_blood_splatter");
    }
}

