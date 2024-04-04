// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace status_effect_wound;

// Namespace status_effect_wound/status_effect_wound
// Params 0, eflags: 0x5
// Checksum 0x3ad8feef, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"status_effect_wound", &preinit, undefined, undefined, undefined);
}

// Namespace status_effect_wound/status_effect_wound
// Params 0, eflags: 0x6 linked
// Checksum 0xfaba60c9, Offset: 0x110
// Size: 0x6c
function private preinit() {
    status_effect::register_status_effect_callback_apply(6, &wound_apply);
    status_effect::function_5bae5120(6, &wound_end);
    status_effect::function_6f4eaf88(getstatuseffect("wound"));
}

// Namespace status_effect_wound/status_effect_wound
// Params 3, eflags: 0x2 linked
// Checksum 0x786997d6, Offset: 0x188
// Size: 0x1ec
function wound_apply(var_756fda07, *weapon, *applicant) {
    self.var_f031d238 = applicant.var_6406d0cd;
    self.var_4a3f5865 = applicant.var_18d16a6b;
    if (!isdefined(applicant.var_752c0834)) {
        return;
    }
    healthreduction = applicant.var_752c0834;
    if (self.owner.maxhealth - healthreduction < applicant.var_8ea635df) {
        healthreduction = self.owner.maxhealth - applicant.var_8ea635df;
    }
    var_da1d7911 = [];
    var_da1d7911[0] = {#name:"cleanse_buff", #var_b861a047:undefined};
    if (self.owner.health > 0) {
        self.owner player::function_2a67df65(self.var_4a3f5865, healthreduction * -1, var_da1d7911);
    }
    self.var_18d16a6b = applicant.var_18d16a6b;
    if (self.owner.health > self.owner.var_66cb03ad) {
        var_1a197232 = !isdefined(self.owner.var_abe2db87);
        if (var_1a197232) {
            self.owner.health = self.owner.var_66cb03ad;
        }
    }
    if (self.endtime > 0) {
        self thread function_f6fec56f();
        self thread function_a54d41f7(self.endtime - self.duration);
    }
}

// Namespace status_effect_wound/status_effect_wound
// Params 1, eflags: 0x2 linked
// Checksum 0x50506bf7, Offset: 0x380
// Size: 0xca
function function_a54d41f7(starttime) {
    self notify(#"hash_77a943337c92549a");
    self endon(#"hash_77a943337c92549a", #"endstatuseffect");
    for (var_1420e67b = self.endtime; self.endtime > gettime(); var_1420e67b = self.endtime) {
        waitframe(1);
        if (self.endtime != var_1420e67b) {
            timesincestart = gettime() - starttime;
            self.owner function_eb1cd20(starttime, self.duration + timesincestart, self.namehash);
        }
    }
}

// Namespace status_effect_wound/status_effect_wound
// Params 0, eflags: 0x6 linked
// Checksum 0x6491a2ed, Offset: 0x458
// Size: 0xf0
function private function_f6fec56f() {
    self notify(#"hash_35c63d8ef4b4825");
    self endon(#"hash_35c63d8ef4b4825", #"endstatuseffect");
    while (true) {
        waitresult = self.owner waittill(#"fully_healed", #"death", #"disconnect", #"healing_disabled");
        if (waitresult._notify != "fully_healed") {
            return;
        }
        if (isdefined(self.var_f031d238)) {
            self.owner playsoundtoplayer(self.var_f031d238, self.owner);
        }
    }
}

// Namespace status_effect_wound/status_effect_wound
// Params 0, eflags: 0x2 linked
// Checksum 0xf62d449f, Offset: 0x550
// Size: 0x24
function wound_end() {
    self.owner player::function_b933de24(self.var_4a3f5865);
}

