// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\serverfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace status_effect_suppress;

// Namespace status_effect_suppress/status_effect_suppress
// Params 0, eflags: 0x5
// Checksum 0x7c0783bc, Offset: 0xd8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"status_effect_suppress", &preinit, undefined, undefined, undefined);
}

// Namespace status_effect_suppress/status_effect_suppress
// Params 0, eflags: 0x6 linked
// Checksum 0x6d1bf79c, Offset: 0x120
// Size: 0xc4
function private preinit() {
    status_effect::register_status_effect_callback_apply(4, &suppress_apply);
    status_effect::function_5bae5120(4, &registersamanthas_bundle);
    status_effect::function_6f4eaf88(getstatuseffect("suppress"));
    serverfield::register("status_effect_suppress_field", 1, 5, "int", &function_aa232314);
    callback::on_spawned(&onplayerspawned);
}

// Namespace status_effect_suppress/status_effect_suppress
// Params 3, eflags: 0x2 linked
// Checksum 0x66f0fc7f, Offset: 0x1f0
// Size: 0x1c
function suppress_apply(*var_756fda07, *weapon, *applicant) {
    
}

// Namespace status_effect_suppress/status_effect_suppress
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x218
// Size: 0x4
function registersamanthas_bundle() {
    
}

// Namespace status_effect_suppress/status_effect_suppress
// Params 2, eflags: 0x6 linked
// Checksum 0x7f1e84c7, Offset: 0x228
// Size: 0x2c6
function private function_aa232314(oldval, newval) {
    if (!isarray(level.players)) {
        return;
    }
    if (oldval != newval) {
        if (newval) {
            self.var_dc148218 = 1;
            if (newval > 1) {
                var_4d81e7b4 = newval - 2;
                foreach (player in level.players) {
                    if (!isdefined(player)) {
                        continue;
                    }
                    if (player getentitynumber() == var_4d81e7b4) {
                        self.var_ead9cdbf = player;
                        break;
                    }
                }
            }
            var_2deafbea = function_1115bceb(#"suppress");
            self.var_14407070 = {};
            if (isdefined(var_2deafbea.var_b86e9a5e)) {
                self playlocalsound(var_2deafbea.var_b86e9a5e);
            }
            if (isdefined(var_2deafbea.var_801118b0)) {
                self playloopsound(var_2deafbea.var_801118b0);
                self.var_14407070.var_801118b0 = var_2deafbea.var_801118b0;
            }
            if (isdefined(var_2deafbea.var_36c77790)) {
                self.var_14407070.var_36c77790 = var_2deafbea.var_36c77790;
            }
            return;
        }
        self.var_dc148218 = 0;
        self.var_ead9cdbf = undefined;
        if (isdefined(self.var_14407070) && isdefined(self.var_14407070.var_36c77790)) {
            if (isplayer(self)) {
                self playlocalsound(self.var_14407070.var_36c77790);
            }
        }
        if (isdefined(self.var_14407070) && isdefined(self.var_14407070.var_801118b0)) {
            if (isplayer(self)) {
                self stoploopsound(0.5);
            }
        }
        self.var_14407070 = undefined;
    }
}

// Namespace status_effect_suppress/status_effect_suppress
// Params 0, eflags: 0x6 linked
// Checksum 0x848a9dd4, Offset: 0x4f8
// Size: 0xe
function private onplayerspawned() {
    self.var_dc148218 = 0;
}

