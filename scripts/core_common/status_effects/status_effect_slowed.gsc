// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\contracts_shared.gsc;

#namespace status_effect_slowed;

// Namespace status_effect_slowed/status_effect_slowed
// Params 0, eflags: 0x5
// Checksum 0x20dbffa5, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"status_effect_slowed", &preinit, undefined, undefined, undefined);
}

// Namespace status_effect_slowed/status_effect_slowed
// Params 0, eflags: 0x6 linked
// Checksum 0xf1e4fc99, Offset: 0xf0
// Size: 0x6c
function private preinit() {
    status_effect::register_status_effect_callback_apply(2, &slowed_apply);
    status_effect::function_5bae5120(2, &function_6fe78d40);
    status_effect::function_6f4eaf88(getstatuseffect("slowed"));
}

// Namespace status_effect_slowed/status_effect_slowed
// Params 3, eflags: 0x2 linked
// Checksum 0x68bc351e, Offset: 0x168
// Size: 0xf2
function slowed_apply(var_756fda07, weapon, applicant) {
    self.owner.var_23ed81d6 = gettime() + int(var_756fda07.var_77449e9);
    self.owner.var_a010bd8f = applicant;
    self.owner.var_9060b065 = weapon;
    if (!isdefined(applicant) || self.owner == applicant) {
        return;
    }
    var_c94d654b = applicant getentitynumber();
    applicant contracts::increment_contract(#"hash_1745d692d02f23be");
    if (!isdefined(self.owner.var_a4332cab)) {
        self.owner.var_a4332cab = [];
    }
}

// Namespace status_effect_slowed/status_effect_slowed
// Params 0, eflags: 0x2 linked
// Checksum 0x1029aef9, Offset: 0x268
// Size: 0x5e
function function_6fe78d40() {
    if (isdefined(self.owner) && isdefined(self.owner.var_a010bd8f) && isdefined(self.owner.var_a010bd8f.var_9d19aa30)) {
        self.owner.var_a010bd8f.var_9d19aa30 = 0;
    }
}

