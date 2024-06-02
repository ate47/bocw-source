// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\gametypes\battlechatter.gsc;
#using script_268625b0934ee2ce;
#using scripts\core_common\stealth\utility.gsc;
#using scripts\core_common\stealth\debug.gsc;
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
function scalevolume(*ent, *vol) {
    
}

#namespace namespace_393f6012;

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x5
// Checksum 0xd2a7c697, Offset: 0x1a8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"stealth", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x6 linked
// Checksum 0x9c9c035b, Offset: 0x1f0
// Size: 0x34
function private preinit() {
    callback::on_ai_spawned(&on_ai_spawned);
    main();
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x9275f69b, Offset: 0x230
// Size: 0x154
function main() {
    function_f9682fd();
    assert(isdefined(level.stealth), "<unknown string>");
    level.stealth.fnplayerlootenabled = undefined;
    level.stealth.fngetcorpseorigin = &get_corpse_origin;
    level.stealth.fnsetbattlechatter = undefined;
    level.stealth.fnaddeventplaybcs = &addeventplaybcs;
    level.stealth.fnthreatsightsetstateparameters = &threat_sight_set_state_parameters;
    level.stealth.fnthreatsightplayersightaudio = &threat_sight_player_sight_audio;
    level.stealth.fnsetstealthmode = &set_stealth_mode_sp;
    var_cb867b36 = [];
    var_cb867b36[var_cb867b36.size] = #"hash_4f5d6c44d95415a7";
    var_cb867b36[var_cb867b36.size] = #"hash_55d9a1cd61f046";
    battlechatter_table::function_c5dda35e("stealth", var_cb867b36);
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x2 linked
// Checksum 0x8b6bda52, Offset: 0x390
// Size: 0x1a
function get_corpse_origin() {
    return self getcorpsephysicsorigin();
}

// Namespace namespace_393f6012/manager
// Params 0, eflags: 0x6 linked
// Checksum 0xf072d241, Offset: 0x3b8
// Size: 0x6c
function private on_ai_spawned() {
    if (!isdefined(self.script_stealthgroup) && is_true(self.script_stealth)) {
        self.script_stealthgroup = "_default";
    }
    if (isdefined(self.script_stealthgroup)) {
        self namespace_b2b86d39::stealth_call_thread("do_stealth");
    }
}

// Namespace namespace_393f6012/manager
// Params 3, eflags: 0x2 linked
// Checksum 0x940c5c9c, Offset: 0x430
// Size: 0x138
function set_stealth_mode_sp(enabled, *musichidden, *musicspotted) {
    if (musicspotted) {
        foreach (player in getplayers()) {
            player thread stealth_player::ambient_player_thread();
        }
        return;
    }
    foreach (player in getplayers()) {
        player thread stealth_player::ambient_player_stop();
    }
}

// Namespace namespace_393f6012/manager
// Params 1, eflags: 0x2 linked
// Checksum 0x1ef593e2, Offset: 0x570
// Size: 0x2e2
function threat_sight_set_state_parameters(statename) {
    var_8c0a9bbb = 1;
    distscale = 1;
    if (!isdefined(statename)) {
        statename = self.stealth.threat_sight_state;
    }
    if (isdefined(self.stealth.threatsightratescale)) {
        var_8c0a9bbb *= self.stealth.threatsightratescale;
    }
    if (isdefined(self.stealth.threatsightdistscale)) {
        distscale *= self.stealth.threatsightdistscale;
    }
    if (isdefined(level.stealth.threatsightratescale)) {
        var_8c0a9bbb *= level.stealth.threatsightratescale;
    }
    if (isdefined(level.stealth.threatsightdistscale)) {
        distscale *= level.stealth.threatsightdistscale;
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
    self.threatsightdistmin = min(var_bb0a10d2, var_218126c3) * distscale;
    self.threatsightdistmax = max(self.threatsightdistmin, var_218126c3 * distscale);
}

// Namespace namespace_393f6012/manager
// Params 3, eflags: 0x2 linked
// Checksum 0xebaa2e63, Offset: 0x860
// Size: 0x97c
function threat_sight_player_sight_audio(anycansee, maxthreat, var_2107b994) {
    var_999aef6a = 180;
    var_4d4a8597 = 0.01;
    var_f41a2c65 = 0.05;
    var_c7f21015 = 0.125;
    self endon(#"disconnect");
    self endon(#"death");
    self notify(#"threat_sight_player_sight_audio");
    self endon(#"threat_sight_player_sight_audio");
    /#
        if (!isdefined(var_2107b994)) {
            var_2107b994 = 0;
        }
    #/
    aliases = ["ui_stealth_threat_low_lp", "ui_stealth_threat_med_lp", "ui_stealth_threat_high_lp"];
    if (!getdvarint(#"hash_28758912434b7866", 0)) {
        maxthreat = 0;
    }
    if (!isdefined(self.stealth.threat_sight_snd_ent) && anycansee && maxthreat > 0) {
        self.stealth.threat_sight_snd_ent = [];
        self.stealth.threat_sight_snd_vol = 0;
        self.stealth.threat_sight_snd_threat = 0;
        foreach (index, alias in aliases) {
            snd_ent = spawn("script_origin", self.origin);
            if (!isplayer(self)) {
                self thread util::delete_on_death(snd_ent);
            }
            snd_ent linkto(self);
            snd_ent.isplaying = 0;
            self.stealth.threat_sight_snd_ent[alias] = snd_ent;
        }
    }
    /#
        if (var_2107b994) {
            debug2dtext((32, 492, 0), "<unknown string>" + maxthreat + "<unknown string>" + anycansee + "<unknown string>", (1, 1, 1), 1.5);
        }
    #/
    if (isdefined(self.stealth.threat_sight_snd_ent)) {
        self.stealth.threat_sight_snd_threat -= self.stealth.threat_sight_snd_threat * var_c7f21015;
        self.stealth.threat_sight_snd_threat += maxthreat * var_c7f21015;
        if (self.stealth.threat_sight_snd_threat < 0.0001) {
            self.stealth.threat_sight_snd_threat = 0;
        }
        maxthreat = self.stealth.threat_sight_snd_threat;
    }
    while (isdefined(self.stealth.threat_sight_snd_ent)) {
        index = 0;
        var_7fe1c557 = 0;
        if (maxthreat > 0) {
            if (maxthreat < var_f41a2c65) {
                var_9afcb603 = math::clamp(maxthreat, 0, var_f41a2c65);
                mu = var_9afcb603 / var_f41a2c65;
                vol_delta = 1 - var_4d4a8597;
                vol_lerp = var_4d4a8597 + vol_delta * mu;
                self.stealth.threat_sight_snd_vol = vol_lerp;
            } else {
                self.stealth.threat_sight_snd_vol = 1;
            }
        } else {
            self.stealth.threat_sight_snd_vol = 0;
            self.stealth.threat_sight_snd_threat = 0;
        }
        self.stealth.threat_sight_snd_vol = math::clamp(self.stealth.threat_sight_snd_vol, 0, 1);
        /#
            if (var_2107b994) {
                debug2dtext((32, 508, 0), "<unknown string>" + self.stealth.threat_sight_snd_threat, (1, 1, 1), 1.5);
                debug2dtext((32, 524, 0), "<unknown string>" + self.stealth.threat_sight_snd_vol, (1, 1, 1), 1.5);
            }
        #/
        foreach (alias, snd_ent in self.stealth.threat_sight_snd_ent) {
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
            vol = math::clamp(self.stealth.threat_sight_snd_vol * coef, 0, 1);
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
            foreach (alias, snd_ent in self.stealth.threat_sight_snd_ent) {
                snd_ent stoploopsound();
                snd_ent delete();
            }
            self.stealth.threat_sight_snd_ent = undefined;
            self.stealth.threat_sight_snd_vol = undefined;
            self.stealth.threat_sight_snd_threat = undefined;
        }
        wait(0.05);
    }
}

// Namespace namespace_393f6012/manager
// Params 7, eflags: 0x2 linked
// Checksum 0xf1712749, Offset: 0x11e8
// Size: 0x206
function addeventplaybcs(*eventaction, eventtype, modifier, *delay, *eventstruct, *force, *var_9c201ccd) {
    assert(isdefined(force));
    alias = undefined;
    responses = undefined;
    switch (force) {
    case #"idle":
    case #"idle_alert":
        self.stealth.investigatecallin = 0;
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
        if (!is_true(self.stealth.investigatecallin)) {
            var_2a1d88cd = "callin";
            self.stealth.callin = 1;
            self.stealth.investigatecallin = 1;
        } else {
            self.update = 1;
        }
        break;
    case #"hunt":
        self.stealth.investigatecallin = 0;
        break;
    }
    self battlechatter::function_4e7b6f6d("stealth", force, var_9c201ccd);
    return false;
}

