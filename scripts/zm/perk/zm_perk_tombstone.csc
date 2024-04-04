// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\zm_common\zm_perks.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace zm_perk_tombstone;

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x5
// Checksum 0x58051e98, Offset: 0x1e8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_perk_tombstone", &preinit, undefined, undefined, undefined);
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x6 linked
// Checksum 0xa70618f4, Offset: 0x230
// Size: 0xb4
function private preinit() {
    function_27473e44();
    clientfield::register_clientuimodel("hud_items.tombstonePerkAvailable", #"hash_6f4b11a0bee9b73d", #"hash_3031b17444967abf", 1, 3, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hud_items.tombstoneReviveTimerShorten", #"hash_6f4b11a0bee9b73d", #"hash_5c596a46083394e3", 1, 1, "int", undefined, 0, 0);
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x71826158, Offset: 0x2f0
// Size: 0xec
function function_27473e44() {
    zm_perks::register_perk_clientfields(#"hash_38c08136902fd553", &client_field_func, &function_f71e2d8f);
    zm_perks::register_perk_effects(#"hash_38c08136902fd553", "tombstone_light");
    zm_perks::register_perk_init_thread(#"hash_38c08136902fd553", &init_staminup);
    zm_perks::function_f3c80d73("zombie_perk_bottle_tombstone");
    callback::on_spawned(&on_spawned);
    function_12f0cc0d("xanim_pb_tombstone_idle");
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x1b39b334, Offset: 0x3e8
// Size: 0x3c
function init_staminup() {
    if (is_true(level.enable_magic)) {
        level._effect[#"tombstone_light"] = "maps/zm_gold/fx9_sur_machine_tombstone_eye_smk";
    }
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0xc54fce12, Offset: 0x430
// Size: 0x10c
function client_field_func() {
    clientfield::register("allplayers", "" + #"hash_46072c670fdaf2fa", 8000, 1, "int", &function_e32c696e, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_2897f04212a28873", 8000, 1, "int", &function_2f3a5c2, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_5d96e4c9a397fa0", 8000, 1, "int", &function_e2f686a3, 0, 0);
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x548
// Size: 0x4
function function_f71e2d8f() {
    
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 7, eflags: 0x2 linked
// Checksum 0x3c32814a, Offset: 0x558
// Size: 0x3bc
function function_e32c696e(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (!isdefined(level.var_929ed5c3)) {
        level.var_929ed5c3 = [];
    }
    var_47c85523 = self getentitynumber();
    if (!isdefined(level.var_929ed5c3[var_47c85523])) {
        level.var_929ed5c3[var_47c85523] = spawnstruct();
    }
    if (bwastimejump) {
        self zm_utility::function_88c3a609();
        if (zm_utility::function_f8796df3(fieldname)) {
            self playrenderoverridebundle(#"hash_280405958d740589");
            if (self postfx::function_556665f2(#"hash_3541c7bff1f76832")) {
                self postfx::stoppostfxbundle(#"hash_3541c7bff1f76832");
            }
            self postfx::playpostfxbundle(#"hash_3541c7bff1f76832");
            if (!isdefined(level.var_929ed5c3[var_47c85523].var_70064d7) && self function_da43934d()) {
                level.var_929ed5c3[var_47c85523].var_70064d7 = playfxoncamera(fieldname, #"hash_12ee2927874461e5", (0, 0, 0), (1, 0, 0), (0, 0, 1));
            }
            self thread function_222efb26(fieldname);
        } else {
            self playrenderoverridebundle(#"hash_6b8215cb4fa935e4");
            if (!isdefined(level.var_929ed5c3[var_47c85523].var_ecb39b1e)) {
                level.var_929ed5c3[var_47c85523].var_ecb39b1e = util::playfxontag(fieldname, #"hash_803ea6a2550a53a", self, "j_head");
            }
            if (!isdefined(level.var_929ed5c3[var_47c85523].var_7163a06c)) {
                level.var_929ed5c3[var_47c85523].var_7163a06c = util::playfxontag(fieldname, #"hash_ee42b8ead6d79d1", self, "j_spine4");
            }
        }
        if (!isdefined(level.var_929ed5c3[var_47c85523].var_44c08b39)) {
            self playsound(fieldname, #"hash_9439f12723cfe43", self.origin + (0, 0, 75));
            level.var_929ed5c3[var_47c85523].var_44c08b39 = self playloopsound(#"hash_239f90b280cde695", undefined, (0, 0, 75));
        }
        self.var_2642dd3d = 1;
        return;
    }
    self function_acf463c0(fieldname);
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 1, eflags: 0x2 linked
// Checksum 0x70fb9cd9, Offset: 0x920
// Size: 0x24
function on_spawned(localclientnum) {
    self function_acf463c0(localclientnum);
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 1, eflags: 0x2 linked
// Checksum 0xb1013d16, Offset: 0x950
// Size: 0x31e
function function_acf463c0(localclientnum) {
    var_47c85523 = self getentitynumber();
    self notify(#"hash_3f0adb1cfeb5ef46");
    if (self function_d2503806(#"hash_280405958d740589") && self function_21c0fa55()) {
        self stoprenderoverridebundle(#"hash_280405958d740589");
    }
    if (self function_d2503806(#"hash_6b8215cb4fa935e4")) {
        self stoprenderoverridebundle(#"hash_6b8215cb4fa935e4");
    }
    self zm_utility::function_6c91d22b();
    if (self postfx::function_556665f2(#"hash_3541c7bff1f76832") && self function_21c0fa55()) {
        self postfx::exitpostfxbundle(#"hash_3541c7bff1f76832");
    }
    if (isdefined(level.var_929ed5c3[var_47c85523].var_70064d7)) {
        stopfx(localclientnum, level.var_929ed5c3[var_47c85523].var_70064d7);
        level.var_929ed5c3[var_47c85523].var_70064d7 = undefined;
    }
    if (isdefined(level.var_929ed5c3[var_47c85523].var_ecb39b1e)) {
        stopfx(localclientnum, level.var_929ed5c3[var_47c85523].var_ecb39b1e);
        level.var_929ed5c3[var_47c85523].var_ecb39b1e = undefined;
    }
    if (isdefined(level.var_929ed5c3[var_47c85523].var_7163a06c)) {
        stopfx(localclientnum, level.var_929ed5c3[var_47c85523].var_7163a06c);
        level.var_929ed5c3[var_47c85523].var_7163a06c = undefined;
    }
    if (isdefined(level.var_929ed5c3[var_47c85523].var_44c08b39)) {
        self playsound(localclientnum, #"hash_a486150b3965756", self.origin + (0, 0, 75));
        self stoploopsound(level.var_929ed5c3[var_47c85523].var_44c08b39);
        level.var_929ed5c3[var_47c85523].var_44c08b39 = undefined;
    }
    self.var_2642dd3d = undefined;
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 1, eflags: 0x6 linked
// Checksum 0x7be41176, Offset: 0xc78
// Size: 0x14e
function private function_222efb26(*localclientnum) {
    self notify("19cb22963ee837a1");
    self endon("19cb22963ee837a1");
    self endon(#"death", #"hash_3f0adb1cfeb5ef46");
    while (true) {
        var_b1b72524 = self isplayerads();
        if (self function_d2503806(#"hash_280405958d740589") && var_b1b72524) {
            self stoprenderoverridebundle(#"hash_280405958d740589");
            self zm_utility::function_6c91d22b();
        } else if (!self function_d2503806(#"hash_280405958d740589") && !var_b1b72524) {
            self zm_utility::function_88c3a609();
            self playrenderoverridebundle(#"hash_280405958d740589");
        }
        waitframe(1);
    }
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 7, eflags: 0x2 linked
// Checksum 0xb9f1c984, Offset: 0xdd0
// Size: 0x24a
function function_2f3a5c2(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (isdefined(self.eye_fx)) {
        deletefx(fieldname, self.eye_fx, 1);
        self.eye_fx = undefined;
    }
    if (isdefined(self.var_212f2fe0)) {
        self stoploopsound(self.var_212f2fe0);
        self.var_212f2fe0 = undefined;
        self playsound(fieldname, #"hash_6ece13844ae6d9c4");
    }
    if (bwastimejump) {
        switch (self.model) {
        case #"hash_4bee36a9434de051":
        default:
            str_fx = #"hash_719c2cabe9153a26";
            break;
        case #"hash_4bee33a9434ddb38":
            str_fx = #"hash_73c4fd152aecf624";
            break;
        case #"hash_4bee34a9434ddceb":
            str_fx = #"hash_56b93c93cc14dacf";
            break;
        case #"hash_4bee39a9434de56a":
            str_fx = #"hash_749676da3b26efc8";
            break;
        }
        self.eye_fx = util::playfxontag(fieldname, str_fx, self, "tag_origin");
        self playsound(fieldname, #"hash_584010eeca733f75");
        self.var_212f2fe0 = self playloopsound(#"hash_4bf005ee9faa6c5a");
    }
}

// Namespace zm_perk_tombstone/zm_perk_tombstone
// Params 7, eflags: 0x2 linked
// Checksum 0x79e67676, Offset: 0x1028
// Size: 0x12a
function function_e2f686a3(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self util::waittill_dobj(fieldname);
    if (isdefined(self.smoke_fx)) {
        deletefx(fieldname, self.smoke_fx, 0);
        self.smoke_fx = undefined;
    }
    if (isdefined(self.smoke_sfx)) {
        self stoploopsound(self.smoke_sfx);
        self.smoke_sfx = undefined;
    }
    if (bwastimejump && isdefined(self)) {
        self.smoke_fx = util::playfxontag(fieldname, #"hash_75c8e387ce756315", self, "tag_origin");
        self.smoke_sfx = self playloopsound(#"hash_3d5c6d04514fbbcd");
    }
}

