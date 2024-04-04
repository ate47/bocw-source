// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace world_event_black_chest;

// Namespace world_event_black_chest/world_event_black_chest
// Params 0, eflags: 0x5
// Checksum 0x4d1bca76, Offset: 0x100
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_24e8e2e7c9881782", &preinit, undefined, undefined, undefined);
}

// Namespace world_event_black_chest/world_event_black_chest
// Params 0, eflags: 0x2 linked
// Checksum 0x5ac45588, Offset: 0x148
// Size: 0x144
function preinit() {
    if (!zm_utility::is_survival()) {
        return;
    }
    if (is_true(getgametypesetting(#"hash_1e1a5ebefe2772ba"))) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_3626be8164d82cbc")) && !getdvarint(#"hash_730311c63805303a", 0)) {
        return;
    }
    clientfield::register("scriptmover", "sr_black_chest_fx", 1, 2, "int", &function_f1dc3a2c, 0, 0);
    clientfield::register("scriptmover", "sr_black_chest_swarm_fx", 1, 3, "int", &function_372485e9, 0, 0);
}

// Namespace world_event_black_chest/world_event_black_chest
// Params 7, eflags: 0x2 linked
// Checksum 0x6210d0b, Offset: 0x298
// Size: 0x43c
function function_f1dc3a2c(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self)) {
        return;
    }
    self util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    if (bwastimejump == 1) {
        self.var_aa4114ee = function_239993de(fieldname, #"hash_64b0865c260e817", self, "tag_origin");
        self.var_4b0f392d = self playloopsound(#"hash_3b6ec57280c13f40");
        return;
    }
    if (bwastimejump == 2) {
        playsound(fieldname, #"hash_265dc7bbebe2c9a5", self.origin + (0, 0, 20));
        if (isdefined(self.var_4b0f392d)) {
            self stoploopsound(self.var_4b0f392d);
            self.var_4b0f392d = undefined;
        }
        self.var_3dec4e8f = self playloopsound(#"hash_7391c95dbcf9cfc2");
        playsound(fieldname, #"hash_779a84be63566050", self.origin + (0, 0, 20));
        self.var_65297126 = function_239993de(fieldname, #"hash_27ce04be3dbc0401", self, "tag_origin");
        self.var_6a713ba5 = function_239993de(fieldname, #"hash_27ce02be3dbc009b", self, "tag_origin");
        self.var_29313552 = function_239993de(fieldname, #"hash_27ce03be3dbc024e", self, "tag_origin");
        return;
    }
    if (bwastimejump == 3) {
        if (isdefined(self.var_65297126)) {
            killfx(fieldname, self.var_65297126);
            self.var_65297126 = undefined;
            playsound(fieldname, #"hash_1cd1dad84277f521", self.origin + (0, 0, 20));
            return;
        }
        if (isdefined(self.var_6a713ba5)) {
            killfx(fieldname, self.var_6a713ba5);
            self.var_6a713ba5 = undefined;
            playsound(fieldname, #"hash_1cd1d7d84277f008", self.origin + (0, 0, 20));
            return;
        }
        if (isdefined(self.var_29313552)) {
            killfx(fieldname, self.var_29313552);
            self.var_29313552 = undefined;
            if (isdefined(self.var_aa4114ee)) {
                stopfx(fieldname, self.var_aa4114ee);
            }
            if (isdefined(self.var_4b0f392d)) {
                self stoploopsound(self.var_4b0f392d);
                self.var_4b0f392d = undefined;
            }
            if (isdefined(self.var_3dec4e8f)) {
                self stoploopsound(self.var_3dec4e8f);
                self.var_3dec4e8f = undefined;
            }
            function_239993de(fieldname, #"hash_77bddd3682fbdda5", self, "tag_origin");
            self playsound(fieldname, #"hash_24989877bfd5a764");
        }
    }
}

// Namespace world_event_black_chest/world_event_black_chest
// Params 7, eflags: 0x6 linked
// Checksum 0x4f232fb6, Offset: 0x6e0
// Size: 0x1da
function private function_372485e9(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    if (isdefined(self.var_d61d7100)) {
        stopfx(fieldname, self.var_d61d7100);
    }
    fx = undefined;
    switch (bwastimejump) {
    case 1:
        fx = #"hash_6056afc2dadb83c6";
        self.var_af4484a7 = 0;
        break;
    case 2:
        fx = #"hash_45d44373b029b4c8";
        break;
    case 3:
        fx = #"hash_45a53073b00223bd";
        break;
    case 4:
        fx = #"hash_68a705e07e5e43f3";
        break;
    }
    self.var_9e8d031c = bwastimejump;
    if (!isdefined(fx)) {
        return;
    }
    if (!isdefined(self.var_af4484a7)) {
        self.var_af4484a7 = 1;
        self callback::on_shutdown(&function_5dbf2fbf);
    }
    self.var_d61d7100 = util::playfxontag(fieldname, fx, self, "tag_origin");
}

// Namespace world_event_black_chest/world_event_black_chest
// Params 1, eflags: 0x6 linked
// Checksum 0x900946b9, Offset: 0x8c8
// Size: 0xa4
function private function_5dbf2fbf(localclientnum) {
    if (isdefined(self) && self hasdobj(localclientnum) && isvec(self.origin) && is_true(self.var_af4484a7)) {
        fx = #"hash_6056afc2dadb83c6";
        playfx(localclientnum, fx, self.origin);
    }
}

