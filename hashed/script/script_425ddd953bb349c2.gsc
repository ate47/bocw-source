// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_7ec6ae9f;

// Namespace namespace_7ec6ae9f/namespace_9c181b10
// Params 0, eflags: 0x5
// Checksum 0xde2a4be7, Offset: 0xf0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_2ff0859bce056c66", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_7ec6ae9f/namespace_9c181b10
// Params 0, eflags: 0x6 linked
// Checksum 0x61d3f89, Offset: 0x138
// Size: 0x11c
function private preinit() {
    if (!zm_utility::is_survival()) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_4bf87ef3ad101bb4")) && !getdvarint(#"hash_730311c63805303a", 0)) {
        return;
    }
    clientfield::register("allplayers", "phase_rift_player_fx", 1, 2, "int", &phase_rift_player_fx, 0, 0);
    clientfield::register("toplayer", "" + #"hash_1b01e37683714902", 1, 1, "int", &function_1f107cad, 0, 0);
}

// Namespace namespace_7ec6ae9f/namespace_9c181b10
// Params 7, eflags: 0x2 linked
// Checksum 0x2c8a420c, Offset: 0x260
// Size: 0x1bc
function phase_rift_player_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self) || !self hasdobj(fieldname)) {
        return;
    }
    if (bwastimejump == 1) {
        v_loc = self gettagorigin("j_spine4");
        v_ang = self gettagangles("j_spine4");
        if (isdefined(v_ang)) {
            v_forward = anglestoforward(v_ang);
        }
        if (isdefined(v_loc) && isdefined(v_forward)) {
            self.var_c9e8cfb3 = playfx(fieldname, #"hash_2563ac540861f176", v_loc, v_forward);
        }
        return;
    }
    if (bwastimejump == 2) {
        if (isdefined(self.var_c9e8cfb3)) {
            stopfx(fieldname, self.var_c9e8cfb3);
        }
        self.var_c9e8cfb3 = util::playfxontag(fieldname, #"hash_486b7f0cb02282b4", self, "j_spine4");
        return;
    }
    if (isdefined(self.var_c9e8cfb3)) {
        stopfx(fieldname, self.var_c9e8cfb3);
    }
}

// Namespace namespace_7ec6ae9f/namespace_9c181b10
// Params 7, eflags: 0x6 linked
// Checksum 0xe63e7322, Offset: 0x428
// Size: 0x10c
function private function_1f107cad(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        if (!isdefined(self.var_b1f90780)) {
            self playsound(fieldname, #"hash_704c327b669dff9e");
            self.var_b1f90780 = self playloopsound(#"hash_4cc35edd344bf722");
        }
        return;
    }
    if (isdefined(self.var_b1f90780)) {
        self stoploopsound(self.var_b1f90780);
        self.var_b1f90780 = undefined;
        self playsound(fieldname, #"hash_55d8e246e77e9026");
    }
}

