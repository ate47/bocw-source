// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\visionset_mgr_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using script_396f7d71538c9677;
#using script_725554a59d6a75b9;
#using scripts\core_common\system_shared.gsc;

#namespace drown;

// Namespace drown/drown
// Params 0, eflags: 0x5
// Checksum 0x12688f2b, Offset: 0x128
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"drown", &preinit, undefined, undefined, undefined);
}

// Namespace drown/drown
// Params 0, eflags: 0x6 linked
// Checksum 0xc0bd8fcb, Offset: 0x170
// Size: 0x11c
function private preinit() {
    callback::on_spawned(&function_27777812);
    callback::on_player_killed(&function_1ef50162);
    callback::add_callback(#"on_end_game", &function_c621d98c);
    level.drown_pre_damage_stage_time = 2000;
    if (!isdefined(level.vsmgr_prio_overlay_drown_blur)) {
        level.vsmgr_prio_overlay_drown_blur = 10;
    }
    visionset_mgr::register_info("overlay", "drown_blur", 1, level.vsmgr_prio_overlay_drown_blur, 1, 1, &visionset_mgr::ramp_in_out_thread_per_player, 1);
    clientfield::register("toplayer", "drown_stage", 1, 3, "int");
}

// Namespace drown/drown
// Params 0, eflags: 0x2 linked
// Checksum 0xe1df6848, Offset: 0x298
// Size: 0x6a
function activate_player_health_visionset() {
    self deactivate_player_health_visionset();
    if (!self.drown_vision_set) {
        visionset_mgr::activate("overlay", "drown_blur", self, 0.1, 0.25, 0.1);
        self.drown_vision_set = 1;
    }
}

// Namespace drown/drown
// Params 0, eflags: 0x2 linked
// Checksum 0x5209962b, Offset: 0x310
// Size: 0x4e
function deactivate_player_health_visionset() {
    if (!isdefined(self.drown_vision_set) || self.drown_vision_set) {
        visionset_mgr::deactivate("overlay", "drown_blur", self);
        self.drown_vision_set = 0;
    }
}

// Namespace drown/drown
// Params 0, eflags: 0x2 linked
// Checksum 0xc66e2b8e, Offset: 0x368
// Size: 0x4c
function function_27777812() {
    self callback::add_callback(#"underwater", &function_84845e32);
    self deactivate_player_health_visionset();
}

// Namespace drown/drown
// Params 1, eflags: 0x2 linked
// Checksum 0xeef21fa9, Offset: 0x3c0
// Size: 0x24
function function_c621d98c(params) {
    self function_1ef50162(params);
}

// Namespace drown/drown
// Params 1, eflags: 0x2 linked
// Checksum 0xa65c89f9, Offset: 0x3f0
// Size: 0x3c
function function_84845e32(params) {
    if (!isdefined(self.playerrole)) {
        return;
    }
    if (params.underwater) {
        thread watch_player_drowning();
    }
}

// Namespace drown/drown
// Params 0, eflags: 0x2 linked
// Checksum 0xd2ac445f, Offset: 0x438
// Size: 0x60c
function watch_player_drowning() {
    self endon(#"disconnect", #"death");
    level endon(#"game_ended");
    self clientfield::set_to_player("drown_stage", 0);
    self.lastwaterdamagetime = self getlastoutwatertime();
    self.drownstage = 0;
    var_c1e8fa5d = 4000;
    underwaterbreathtime = 1000;
    underwaterbreathtime = int(battlechatter::mpdialog_value("underwaterBreathTime", 1) * 1000);
    exertbuffer = battlechatter::mpdialog_value("playerExertBuffer", 1);
    while (true) {
        waitframe(1);
        underwater = (game.state == #"pregame" || game.state == #"playing") && self isplayerunderwater();
        var_790acff6 = is_true(level.var_8e910e84) && self inlaststand() && getwaterheight(self.origin) > self.origin[2] + self getplayerviewheight();
        underwater |= var_790acff6;
        if (var_790acff6) {
            self dodamage(5000, self.origin, undefined, undefined, undefined, "MOD_DROWN", 6);
            continue;
        }
        if (underwater && !is_true(self.var_f07d3654)) {
            if (!is_true(self.wasunderwater)) {
                self.wasunderwater = 1;
                self.var_cdefe788 = gettime();
                if (!sessionmodeiszombiesgame()) {
                    self stopsounds();
                }
            }
            n_swimtime = int(self.playerrole.swimtime * 1000);
            if (self hasperk(#"hash_4ef368f54cd86ab7")) {
                n_swimtime = int(n_swimtime * 1.5);
            }
            if (gettime() - self.lastwaterdamagetime > n_swimtime - var_c1e8fa5d && self.drownstage == 0) {
                self thread battlechatter::pain_vox("MOD_DROWN");
                var_c1e8fa5d -= int(self.playerrole.var_f0886300 * 1000);
            }
            if (gettime() - self.lastwaterdamagetime > n_swimtime - level.drown_pre_damage_stage_time && self.drownstage == 0) {
                self.drownstage++;
                self clientfield::set_to_player("drown_stage", self.drownstage);
            }
            if (gettime() - self.lastwaterdamagetime > n_swimtime) {
                self.lastwaterdamagetime += int(self.playerrole.var_f0886300 * 1000);
                self dodamage(self.playerrole.swimdamage, self.origin, undefined, undefined, undefined, "MOD_DROWN", 6);
                self activate_player_health_visionset();
                if (self.drownstage < 4) {
                    self.drownstage++;
                    self clientfield::set_to_player("drown_stage", self.drownstage);
                }
            }
            continue;
        }
        if (is_true(self.wasunderwater)) {
            if (self.drownstage > 0) {
                thread battlechatter::function_e9f06034(self, 1);
            } else if (gettime() > (isdefined(self.var_cdefe788) ? self.var_cdefe788 : 0) + underwaterbreathtime) {
                thread battlechatter::function_e9f06034(self, 0);
            }
        }
        self.drownstage = 0;
        self clientfield::set_to_player("drown_stage", 0);
        self.lastwaterdamagetime = self getlastoutwatertime();
        self deactivate_player_health_visionset();
        var_c1e8fa5d = 4000;
        self.wasunderwater = 0;
        return;
    }
}

// Namespace drown/drown
// Params 1, eflags: 0x2 linked
// Checksum 0x8bb34d3e, Offset: 0xa50
// Size: 0x54
function function_1ef50162(*params) {
    self.drownstage = 0;
    self clientfield::set_to_player("drown_stage", 0);
    self.wasunderwater = 0;
    self deactivate_player_health_visionset();
}

// Namespace drown/drown
// Params 0, eflags: 0x0
// Checksum 0x5e449887, Offset: 0xab0
// Size: 0x3e
function is_player_drowning() {
    drowning = 1;
    if (!isdefined(self.drownstage) || self.drownstage == 0) {
        drowning = 0;
    }
    return drowning;
}

