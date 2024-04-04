// Atian COD Tools GSC CW decompiler test
#using script_62c72c96978f9b04;
#using scripts\zm_common\objective_manager.csc;
#using script_4ed01237ecbd380f;
#using script_2bdd098a8215ac9f;
#using script_538e87197f25d67;
#using script_5665e7d917abc3fc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_73df937d;

// Namespace namespace_73df937d/namespace_73df937d
// Params 0, eflags: 0x5
// Checksum 0xc43e2d53, Offset: 0x158
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_5ff56dba9074b0b4", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_73df937d/namespace_73df937d
// Params 0, eflags: 0x2 linked
// Checksum 0xa3c52749, Offset: 0x1a0
// Size: 0x4c
function preinit() {
    level clientfield::register("scriptmover", "safehouse_claim_fx", 1, 1, "int", &safehouse_claim_fx, 0, 0);
}

// Namespace namespace_73df937d/namespace_73df937d
// Params 7, eflags: 0x2 linked
// Checksum 0x37097271, Offset: 0x1f8
// Size: 0x15c
function safehouse_claim_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.fxid = function_239993de(fieldname, "sr/fx9_safehouse_orb_idle", self, "tag_origin");
        if (!isdefined(self.var_94ebeb0a)) {
            self.var_94ebeb0a = self playloopsound(#"hash_53c30ccf24ec3701");
        }
        return;
    }
    if (isdefined(self.fxid)) {
        killfx(fieldname, self.fxid);
    }
    if (isdefined(self.var_94ebeb0a)) {
        self stoploopsound(self.var_94ebeb0a);
        self.var_94ebeb0a = undefined;
    }
    playfx(fieldname, "sr/fx9_safehouse_orb_activate", self.origin);
    playsound(fieldname, #"hash_71e3b0dd2c4a7490", self.origin);
}

