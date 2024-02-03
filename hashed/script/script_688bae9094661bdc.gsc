// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\gametypes\battlechatter.gsc;
#using script_268625b0934ee2ce;
#using script_1883fa4e60abbf9f;
#using script_7e3221b6c80d8cc4;
#using script_6c5ee33879e077f8;
#using script_3ad66e3076c279ab;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_42e8ee8721f5e6ef;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\util_shared.gsc;

#namespace manager;

// Namespace manager/manager
// Params 2, eflags: 0x0
// Checksum 0xd4f6b558, Offset: 0x188
// Size: 0x14
function function_aec6058a(*ent, *vol) {
    
}

#namespace namespace_393f6012;

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x5
// Checksum 0xd2a7c697, Offset: 0x1a8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"stealth", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x6 linked
// Checksum 0x9c9c035b, Offset: 0x1f0
// Size: 0x34
function private function_70a657d8() {
    callback::on_ai_spawned(&on_ai_spawned);
    main();
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x9275f69b, Offset: 0x230
// Size: 0x154
function main() {
    function_f9682fd();
    /#
        assert(isdefined(level.stealth), "<unknown string>");
    #/
    level.stealth.var_b33db208 = undefined;
    level.stealth.var_eeb7f65 = &function_49c56f93;
    level.stealth.var_9695fef8 = undefined;
    level.stealth.var_934611fa = &function_fc882f9f;
    level.stealth.var_f9afefcc = &function_3c3f1684;
    level.stealth.var_32a3a19 = &function_7f381bc5;
    level.stealth.var_c080ba35 = &function_ce6c37c0;
    var_cb867b36 = [];
    var_cb867b36[var_cb867b36.size] = #"hash_4f5d6c44d95415a7";
    var_cb867b36[var_cb867b36.size] = #"hash_55d9a1cd61f046";
    namespace_bec1e8ca::function_c5dda35e("stealth", var_cb867b36);
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x8b6bda52, Offset: 0x390
// Size: 0x1a
function function_49c56f93() {
    return self function_b9ab269e();
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x6 linked
// Checksum 0xf072d241, Offset: 0x3b8
// Size: 0x6c
function private on_ai_spawned() {
    if (!isdefined(self.var_d6319e36) && is_true(self.var_396e9b9)) {
        self.var_d6319e36 = "_default";
    }
    if (isdefined(self.var_d6319e36)) {
        self namespace_b2b86d39::function_d8eafaa4("do_stealth");
    }
}

// Namespace namespace_393f6012/manager
// Params 3, eflags: 0x2 linked
// Checksum 0x940c5c9c, Offset: 0x430
// Size: 0x138
function function_ce6c37c0(enabled, *var_901d9fb2, *var_4a9f6f96) {
    if (var_4a9f6f96) {
        foreach (player in getplayers()) {
            player thread namespace_7a865494::function_3e0fb8b7();
        }
    } else {
        foreach (player in getplayers()) {
            player thread namespace_7a865494::function_1a351a0c();
        }
    }
}

// Namespace namespace_393f6012/manager
// Params 1, eflags: 0x2 linked
// Checksum 0x1ef593e2, Offset: 0x570
// Size: 0x2e2
function function_3c3f1684(statename) {
    var_8c0a9bbb = 1;
    var_f0ed2edb = 1;
    if (!isdefined(statename)) {
        statename = self.stealth.var_68585806;
    }
    if (isdefined(self.stealth.var_ca6e71c9)) {
        var_8c0a9bbb = var_8c0a9bbb * self.stealth.var_ca6e71c9;
    }
    if (isdefined(self.stealth.var_df7e80b7)) {
        var_f0ed2edb = var_f0ed2edb * self.stealth.var_df7e80b7;
    }
    if (isdefined(level.stealth.var_ca6e71c9)) {
        var_8c0a9bbb = var_8c0a9bbb * level.stealth.var_ca6e71c9;
    }
    if (isdefined(level.stealth.var_df7e80b7)) {
        var_f0ed2edb = var_f0ed2edb * level.stealth.var_df7e80b7;
    }
    var_218126c3 = level.player.maxvisibledist;
    var_bb0a10d2 = min(200, var_218126c3 * 0.33);
    switch (statename) {
    case #"hash_5689f41e8c0ad00":
    case #"investigate":
        self.threatsightratemin = 0.6 * var_8c0a9bbb;
        self.threatsightratemax = 0.5 * var_8c0a9bbb;
        break;
    case #"investigate_grace_period":
        self.threatsightratemin = 1 * var_8c0a9bbb;
        self.threatsightratemax = 0.8 * var_8c0a9bbb;
        break;
    case #"combat_hunt":
        self.threatsightratemin = 1 * var_8c0a9bbb;
        self.threatsightratemax = 0.8 * var_8c0a9bbb;
        break;
    default:
        self.threatsightratemin = 0.6 * var_8c0a9bbb;
        self.threatsightratemax = 0.4 * var_8c0a9bbb;
        break;
    }
    self.threatsightdistmin = min(var_bb0a10d2, var_218126c3) * var_f0ed2edb;
    self.threatsightdistmax = max(self.threatsightdistmin, var_218126c3 * var_f0ed2edb);
}

// Namespace namespace_393f6012/manager
// Params 3, eflags: 0x2 linked
// Checksum 0xebaa2e63, Offset: 0x860
// Size: 0x97c
function function_7f381bc5(var_56a7a731, maxthreat, var_2107b994) {
    var_999aef6a = 180;
    var_4d4a8597 = 0.01;
    var_f41a2c65 = 0.05;
    var_c7f21015 = 0.125;
    self endon(#"disconnect");
    self endon(#"death");
    self notify(#"hash_6a6244d9018bae16");
    self endon(#"hash_6a6244d9018bae16");
    /#
        if (!isdefined(var_2107b994)) {
            var_2107b994 = 0;
        }
    #/
    aliases = [2:"ui_stealth_threat_high_lp", 1:"ui_stealth_threat_med_lp", 0:"ui_stealth_threat_low_lp"];
    if (!getdvarint(#"hash_28758912434b7866", 0)) {
        maxthreat = 0;
    }
    if (!isdefined(self.stealth.var_728ac6b1) && var_56a7a731 && maxthreat > 0) {
        self.stealth.var_728ac6b1 = [];
        self.stealth.var_1ae70b7f = 0;
        self.stealth.var_9331310 = 0;
        foreach (index, alias in aliases) {
            snd_ent = spawn("script_origin", self.origin);
            if (!isplayer(self)) {
                self thread util::delete_on_death(snd_ent);
            }
            snd_ent linkto(self);
            snd_ent.isplaying = 0;
            self.stealth.var_728ac6b1[alias] = snd_ent;
        }
    }
    /#
        if (var_2107b994) {
            debug2dtext((32, 492, 0), "<unknown string>" + maxthreat + "<unknown string>" + var_56a7a731 + "<unknown string>", (1, 1, 1), 1.5);
        }
    #/
    if (isdefined(self.stealth.var_728ac6b1)) {
        self.stealth.var_9331310 = self.stealth.var_9331310 - self.stealth.var_9331310 * var_c7f21015;
        self.stealth.var_9331310 = self.stealth.var_9331310 + maxthreat * var_c7f21015;
        if (self.stealth.var_9331310 < 0.0001) {
            self.stealth.var_9331310 = 0;
        }
        maxthreat = self.stealth.var_9331310;
    }
    while (isdefined(self.stealth.var_728ac6b1)) {
        index = 0;
        var_7fe1c557 = 0;
        if (maxthreat > 0) {
            if (maxthreat < var_f41a2c65) {
                var_9afcb603 = math::clamp(maxthreat, 0, var_f41a2c65);
                var_4cda4e44 = var_9afcb603 / var_f41a2c65;
                var_61543340 = 1 - var_4d4a8597;
                var_e425bbd0 = var_4d4a8597 + var_61543340 * var_4cda4e44;
                self.stealth.var_1ae70b7f = var_e425bbd0;
            } else {
                self.stealth.var_1ae70b7f = 1;
            }
        } else {
            self.stealth.var_1ae70b7f = 0;
            self.stealth.var_9331310 = 0;
        }
        self.stealth.var_1ae70b7f = math::clamp(self.stealth.var_1ae70b7f, 0, 1);
        /#
            if (var_2107b994) {
                debug2dtext((32, 508, 0), "<unknown string>" + self.stealth.var_9331310, (1, 1, 1), 1.5);
                debug2dtext((32, 524, 0), "<unknown string>" + self.stealth.var_1ae70b7f, (1, 1, 1), 1.5);
            }
        #/
        foreach (alias, snd_ent in self.stealth.var_728ac6b1) {
            coef = 1;
            switch (index) {
            case 0:
                if (maxthreat < 0.75) {
                    coef = cos(var_999aef6a * maxthreat * 0.666);
                } else {
                    coef = 0;
                }
                break;
            case 1:
                if (maxthreat < 0.75) {
                    coef = sin(var_999aef6a * maxthreat * 0.666);
                } else if (maxthreat < 1) {
                    coef = sin(var_999aef6a * (1 - maxthreat) * 2);
                } else {
                    coef = 0;
                }
                break;
            case 2:
                if (maxthreat < 0.75) {
                    coef = 0;
                } else {
                    coef = cos(var_999aef6a * (1 - maxthreat) * 2);
                }
                break;
            }
            vol = math::clamp(self.stealth.var_1ae70b7f * coef, 0, 1);
            if (vol > 0) {
                var_7fe1c557 = 1;
                if (snd_ent.isplaying == 0) {
                    snd_ent.isplaying = 1;
                }
            } else if (snd_ent.isplaying == 1) {
                snd_ent.isplaying = 0;
            }
            /#
                if (var_2107b994) {
                    debug2dtext((32, 540 + index * 16, 0), "<unknown string>" + index + "<unknown string>" + vol, (1, 1, 1), 1.5);
                    debug2dtext((384, 540 + index * 16, 0), "<unknown string>" + coef, (1, 1, 1), 1.5);
                }
            #/
            index++;
        }
        if (!var_7fe1c557) {
            foreach (alias, snd_ent in self.stealth.var_728ac6b1) {
                snd_ent stoploopsound();
                snd_ent delete();
            }
            self.stealth.var_728ac6b1 = undefined;
            self.stealth.var_1ae70b7f = undefined;
            self.stealth.var_9331310 = undefined;
        }
        wait(0.05);
    }
}

// Namespace namespace_393f6012/manager
// Params 7, eflags: 0x2 linked
// Checksum 0xf1712749, Offset: 0x11e8
// Size: 0x206
function function_fc882f9f(*var_47983f3e, eventtype, modifier, *delay, *eventstruct, *force, *var_9c201ccd) {
    /#
        assert(isdefined(force));
    #/
    alias = undefined;
    responses = undefined;
    switch (force) {
    case #"idle":
    case #"idle_alert":
        self.stealth.var_db0aaa4f = 0;
        var_9c201ccd = "callin";
        if (math::cointoss()) {
            var_9c201ccd = "checkin";
        }
        if (var_9c201ccd == "checkin") {
            self.checkin = 1;
        } else {
            self.stealth.callin = 1;
        }
        break;
    case #"radio":
        break;
    case #"investigate":
        var_9c201ccd = "update";
        if (!is_true(self.stealth.var_db0aaa4f)) {
            var_2a1d88cd = "callin";
            self.stealth.callin = 1;
            self.stealth.var_db0aaa4f = 1;
        } else {
            self.update = 1;
        }
        break;
    case #"hunt":
        self.stealth.var_db0aaa4f = 0;
        break;
    }
    self battlechatter::function_4e7b6f6d("stealth", force, var_9c201ccd);
    return 0;
}

