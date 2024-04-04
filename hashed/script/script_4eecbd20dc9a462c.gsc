// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\scene_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_e8c18978;

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 1, eflags: 0x2 linked
// Checksum 0xbe181d5a, Offset: 0x128
// Size: 0x1c4
function preinit(*bundlename) {
    clientfield::register("toplayer", "" + #"hash_7c907650b14abbbe", 1, 1, "int", &function_d3a9eef4, 0, 0);
    clientfield::register("vehicle", "" + #"hash_4ddf67f7aa0f6884", 1, 1, "int", &function_241229f1, 0, 0);
    clientfield::register("vehicle", "" + #"hash_46646871455cab15", 1, 2, "int", &function_1da732e, 0, 0);
    clientfield::register("vehicle", "" + #"hash_6cf1a3b26118d892", 1, 1, "int", &function_d6f6757c, 0, 0);
    level.var_f7dac9d2 = getscriptbundle("killstreak_chopper_gunner");
    if (!getdvarint(#"hash_4aad305a4a7f93db", 0)) {
        level thread function_53e5abd3();
    }
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 0, eflags: 0x2 linked
// Checksum 0xd466047a, Offset: 0x2f8
// Size: 0xd4
function function_53e5abd3() {
    level endon(#"game_ended");
    wait(15);
    forcestreamxmodel(#"hash_3fac16f20eba6ba8", 8, 1);
    forcestreamxmodel(#"hash_386f767744ee5229", 8, 1);
    forcestreamxmodel(#"hash_137de4688ccc01f3", 8, 1);
    if (sessionmodeiszombiesgame()) {
        forcestreamxmodel(#"hash_25b5d5c6b086a2ea", 8, 1);
    }
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 7, eflags: 0x2 linked
// Checksum 0x1ce1e7d, Offset: 0x3d8
// Size: 0x15a
function function_d3a9eef4(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (issplitscreen() && function_65b9eb0f(fieldname)) {
            level.var_c7064907 = self;
        } else if (!isdefined(level.var_bb4264e3)) {
            level.var_bb4264e3 = self;
        }
        return;
    }
    if (isdefined(level.var_f7dac9d2.var_fa6a1c8c)) {
        postfxbundle = level.var_f7dac9d2.var_fa6a1c8c;
        if (self function_d2cb869e(postfxbundle)) {
            self codestoppostfxbundle(postfxbundle);
        }
    }
    if (isdefined(level.var_f7dac9d2.var_917dc7d4)) {
        self stoprumble(fieldname, level.var_f7dac9d2.var_917dc7d4);
    }
    level.var_bb4264e3 = undefined;
    level.var_c7064907 = undefined;
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 7, eflags: 0x2 linked
// Checksum 0xf0656303, Offset: 0x540
// Size: 0x24c
function function_241229f1(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self util::waittill_dobj(fieldname);
        if (!isdefined(self)) {
            return;
        }
        var_2d9c55a6 = function_5c10bd79(fieldname);
        if (isdefined(level.var_bb4264e3) && var_2d9c55a6 == level.var_bb4264e3) {
            player = level.var_bb4264e3;
        } else if (isdefined(level.var_c7064907)) {
            player = level.var_c7064907;
        }
        if (isdefined(player)) {
            self setsoundentcontext("plr_vehicle", "driver");
            player playrumblelooponentity(fieldname, #"hash_3c2b94894227f3cf");
            self thread scene::play(#"chopper_gunner_door_open_client");
            if (isdefined(level.var_f7dac9d2.var_fa6a1c8c)) {
                postfxbundle = level.var_f7dac9d2.var_fa6a1c8c;
                player codeplaypostfxbundle(postfxbundle);
            }
        }
        self function_1f0c7136(2);
        self setanim(#"hash_7483c325182bab52");
        wait(getanimlength(#"hash_7483c325182bab52"));
        if (isdefined(player)) {
            player stoprumble(fieldname, #"hash_3c2b94894227f3cf");
        }
        if (isdefined(self)) {
            self clearanim(#"hash_7483c325182bab52", 0.2);
        }
    }
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 7, eflags: 0x2 linked
// Checksum 0x6a88cb05, Offset: 0x798
// Size: 0x2dc
function function_1da732e(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        alarm_sound = self gettagorigin("TAG_PROBE_COCKPIT");
        util::playfxontag(fieldname, level.var_f7dac9d2.var_24b7aa85, self, "tag_body");
        if (isdefined(level.var_bb4264e3)) {
            if (isdefined(level.var_f7dac9d2.var_c6eb2a1d)) {
                level.var_bb4264e3 playrumbleonentity(fieldname, level.var_f7dac9d2.var_c6eb2a1d);
            }
            level.var_bb4264e3 playsound(fieldname, #"hash_7b6b109a826f44cf");
            waitframe(1);
            if (isdefined(level.var_bb4264e3)) {
                level.var_bb4264e3 playsound(fieldname, #"hash_733033c981df7144", alarm_sound);
            }
        } else {
            self playsound(fieldname, #"hash_2879bee00b0dbf87");
        }
        return;
    }
    if (bwastimejump == 2) {
        alarm_sound = self gettagorigin("TAG_PROBE_COCKPIT");
        util::playfxontag(fieldname, level.var_f7dac9d2.var_8334e8e, self, "tag_body");
        if (isdefined(level.var_bb4264e3)) {
            if (isdefined(level.var_f7dac9d2.var_c6eb2a1d)) {
                level.var_bb4264e3 playrumbleonentity(fieldname, level.var_f7dac9d2.var_bf7c296c);
            }
            level.var_bb4264e3 playsound(fieldname, #"hash_7b6b119a826f4682");
            waitframe(1);
            if (isdefined(level.var_bb4264e3)) {
                level.var_bb4264e3 playsound(fieldname, #"hash_733036c981df765d", alarm_sound);
            }
            return;
        }
        self playsound(fieldname, #"hash_331a5d0f62ba4e66");
    }
}

// Namespace namespace_e8c18978/namespace_e8c18978
// Params 7, eflags: 0x2 linked
// Checksum 0x918bfa16, Offset: 0xa80
// Size: 0x1b4
function function_d6f6757c(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        if (isdefined(level.var_bb4264e3)) {
            util::playfxontag(fieldname, level.var_f7dac9d2.var_1d9da603, self, "tag_deathfx");
            level.var_bb4264e3 playsound(fieldname, #"hash_7b6b129a826f4835");
            if (isdefined(level.var_f7dac9d2.var_a97fd8e0)) {
                level.var_bb4264e3 playrumbleonentity(fieldname, level.var_f7dac9d2.var_a97fd8e0);
            }
            if (isdefined(level.var_f7dac9d2.var_917dc7d4)) {
                level.var_bb4264e3 playrumblelooponentity(fieldname, level.var_f7dac9d2.var_917dc7d4);
            }
            return;
        }
        if (isdefined(level.var_f7dac9d2.var_2a77dc37)) {
            util::playfxontag(fieldname, level.var_f7dac9d2.var_2a77dc37, self, "tag_deathfx");
            playsound(fieldname, #"hash_331a5d0f62ba4e66");
        }
    }
}

