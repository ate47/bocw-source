// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_12a6a726;

// Namespace namespace_12a6a726/namespace_12a6a726
// Params 0, eflags: 0x5
// Checksum 0x32fac17f, Offset: 0xe0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_72a9f15f4124442", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_12a6a726/namespace_12a6a726
// Params 0, eflags: 0x2 linked
// Checksum 0x95e11e94, Offset: 0x128
// Size: 0xfc
function preinit() {
    if (!zm_utility::is_survival()) {
        return;
    }
    if (is_true(getgametypesetting(#"hash_1e1a5ebefe2772ba"))) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_49c3a9d150ecbb16")) && !getdvarint(#"hash_730311c63805303a", 0)) {
        return;
    }
    clientfield::register("scriptmover", "sr_supply_drop_chest_fx", 1, 2, "int", &sr_supply_drop_chest_fx, 0, 0);
}

// Namespace namespace_12a6a726/namespace_12a6a726
// Params 7, eflags: 0x2 linked
// Checksum 0xd7958dfc, Offset: 0x230
// Size: 0x2d4
function sr_supply_drop_chest_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self)) {
        return;
    }
    self util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    if (bwastimejump == 1) {
        self.var_aa4114ee = function_239993de(fieldname, #"hash_23c80cc2126820b2", self, "tag_origin");
        self.var_4b0f392d = self playloopsound(#"hash_52036cf3cfe2b967");
        playsound(fieldname, #"hash_1f3fbd4b941aceed", self.origin + (0, 0, 35));
        function_239993de(fieldname, #"hash_64f736260391468a", self, "tag_origin");
        return;
    }
    if (bwastimejump == 2) {
        self.n_fx = function_239993de(fieldname, #"hash_755eec380d6c4e4a", self, "tag_origin");
        self playsound(fieldname, #"hash_259adbb44db3fea8");
        self.var_3dec4e8f = self playloopsound(#"hash_5a60a8ef6b7d6df1");
        return;
    }
    if (bwastimejump == 3) {
        if (isdefined(self.n_fx)) {
            stopfx(fieldname, self.n_fx);
        }
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
        function_239993de(fieldname, #"hash_160e892a069e168e", self, "tag_origin");
        self playsound(fieldname, #"hash_2d72791853c13b5");
    }
}

