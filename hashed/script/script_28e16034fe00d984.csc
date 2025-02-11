#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\easing;
#using scripts\core_common\postfx_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace objectives_ui;

// Namespace objectives_ui/objectives_ui
// Params 0, eflags: 0x5
// Checksum 0xd3759f02, Offset: 0x160
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"objectives_ui", &preinit, undefined, undefined, undefined);
}

// Namespace objectives_ui/objectives_ui
// Params 0, eflags: 0x4
// Checksum 0x2291246f, Offset: 0x1a8
// Size: 0xe4
function private preinit() {
    clientfield::register("toplayer", "show_objectives", 1, 2, "int", &show_objectives, 0, 0);
    callback::add_callback(#"on_player_spawned", &on_player_spawned);
    /#
        function_5ac4dc99("<dev string:x38>", 3);
        function_5ac4dc99("<dev string:x50>", 2);
        function_5ac4dc99("<dev string:x67>", 1);
    #/
}

// Namespace objectives_ui/objectives_ui
// Params 7, eflags: 0x4
// Checksum 0x2af37fae, Offset: 0x298
// Size: 0x6e
function private show_objectives(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self notify(#"show_objectives", {#showtype:bwastimejump});
    }
}

// Namespace objectives_ui/objectives_ui
// Params 1, eflags: 0x4
// Checksum 0x6d4030cf, Offset: 0x310
// Size: 0x12c
function private on_player_spawned(localclientnum) {
    self.var_4a858373 = createuimodel(createuimodel(function_5f72e972(#"hash_410fe12a68d6e801"), "cpObjectiveUiData"), "showHideHint");
    self.var_e64f428b = createuimodel(function_1df4c3b0(localclientnum, #"hud_items"), "globalWaypointAlpha");
    self.var_f74ea54b = createuimodel(function_1df4c3b0(localclientnum, #"hud_items"), "hideOldObjectives");
    self thread function_5c67d66(localclientnum);
    self thread function_fd86c6ac(localclientnum);
    self thread function_6311c9e8();
}

// Namespace objectives_ui/objectives_ui
// Params 1, eflags: 0x4
// Checksum 0xe29a8211, Offset: 0x448
// Size: 0x150
function private function_5c67d66(localclientnum) {
    self endon(#"death");
    setuimodelvalue(self.var_4a858373, 0);
    setuimodelvalue(self.var_e64f428b, 0);
    setuimodelvalue(self.var_f74ea54b, 0);
    while (true) {
        ret = self waittill(#"show_objectives");
        if (is_true(self.var_d52a8a6e)) {
            continue;
        }
        setuimodelvalue(self.var_f74ea54b, ret.showtype === 1);
        self thread easing::function_a037b7c9(localclientnum, self.var_e64f428b, 1, 0, #"linear");
        self thread function_cd9face2(localclientnum, isdefined(ret.showtype));
    }
}

// Namespace objectives_ui/objectives_ui
// Params 2, eflags: 0x4
// Checksum 0xf5a7f39a, Offset: 0x5a0
// Size: 0x114
function private function_cd9face2(localclientnum, var_d17dd25a) {
    self endon(#"show_objectives", #"hash_3b00cabe4586a186", #"death");
    delay = 3;
    /#
        delay = getdvarfloat(#"hash_6d102de219912e53", delay);
    #/
    if (delay > 0) {
        wait delay;
    }
    if (var_d17dd25a) {
        setuimodelvalue(self.var_4a858373, 0);
    }
    /#
        var_d17dd25a = var_d17dd25a || getdvarint(#"hash_c1cc8af3905f35a", 1) == 0;
    #/
    self thread function_aa3ed46f(localclientnum, self.var_e64f428b, var_d17dd25a);
}

// Namespace objectives_ui/objectives_ui
// Params 1, eflags: 0x4
// Checksum 0xc4de0d36, Offset: 0x6c0
// Size: 0xb8
function private function_fd86c6ac(localclientnum) {
    self endon(#"death");
    while (true) {
        self waittill(#"hash_3b00cabe4586a186");
        if (self postfx::function_556665f2("pstfx_highlight_objectives")) {
            self thread postfx::stoppostfxbundle("pstfx_highlight_objectives");
        }
        self thread easing::function_a037b7c9(localclientnum, self.var_e64f428b, 0, 0, #"linear");
    }
}

// Namespace objectives_ui/objectives_ui
// Params 3, eflags: 0x4
// Checksum 0x6241858a, Offset: 0x780
// Size: 0x154
function private function_aa3ed46f(localclientnum, uimodel, var_d17dd25a) {
    self endon(#"show_objectives", #"hash_3b00cabe4586a186", #"death");
    if (!is_true(var_d17dd25a)) {
        while (length(self util::function_ca4b4e19(localclientnum, 0)[#"move"]) < 0.2) {
            waitframe(1);
        }
    }
    if (self postfx::function_556665f2("pstfx_highlight_objectives")) {
        self thread postfx::exitpostfxbundle("pstfx_highlight_objectives");
    }
    fade_time = 2;
    /#
        fade_time = getdvarfloat(#"hash_6cdcdf6a45d1f925", fade_time);
    #/
    self thread easing::function_a037b7c9(localclientnum, uimodel, 0, fade_time, #"linear");
}

// Namespace objectives_ui/objectives_ui
// Params 0, eflags: 0x4
// Checksum 0x62a9e6f4, Offset: 0x8e0
// Size: 0xb2
function private function_6311c9e8() {
    self endon(#"death");
    while (true) {
        waitresult = self waittill(#"menuresponse");
        response = waitresult.response;
        intpayload = waitresult.intpayload;
        if (response == "objective_splash") {
            self.var_d52a8a6e = intpayload != 0;
            if (self.var_d52a8a6e) {
                self notify(#"hash_3b00cabe4586a186");
            }
        }
    }
}

