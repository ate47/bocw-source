// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace nightingale;

// Namespace nightingale/nightingale
// Params 0, eflags: 0x5
// Checksum 0x271b4096, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"nightingale", &preinit, undefined, undefined, undefined);
}

// Namespace nightingale/nightingale
// Params 0, eflags: 0x6 linked
// Checksum 0x1151853b, Offset: 0x110
// Size: 0x154
function private preinit() {
    clientfield::register("scriptmover", "" + #"hash_7cc71113338444c4", 1, 1, "int", &function_17982c67, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_7c2ee5bfa7cad803", 1, 1, "int", &function_52240d18, 0, 0);
    if (!isdefined(level.var_17d9f80)) {
        level.var_17d9f80 = [];
    }
    callback::add_weapon_type(#"nightingale", &function_85f37224);
    level.var_4977c64a = getweapon(#"nightingale");
    level.nightingale_custom_settings = getscriptbundle(level.var_4977c64a.customsettings);
}

// Namespace nightingale/nightingale
// Params 1, eflags: 0x6 linked
// Checksum 0xab468955, Offset: 0x270
// Size: 0x4c
function private function_85f37224(*localclientnum) {
    arrayremovevalue(level.var_17d9f80, undefined, 1);
    level.var_17d9f80[self getentitynumber()] = self;
}

// Namespace nightingale/nightingale
// Params 7, eflags: 0x2 linked
// Checksum 0x80aff95c, Offset: 0x2c8
// Size: 0xe4
function function_17982c67(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        team = function_73f4b33(fieldname);
        self.identifier_weapon = level.var_4977c64a;
        if (team === self.team) {
            self function_1f0c7136(1);
        } else {
            self function_525db0b1(1);
        }
        level.var_17d9f80[self getentitynumber()] = self;
    }
}

// Namespace nightingale/nightingale
// Params 7, eflags: 0x2 linked
// Checksum 0x3baecd99, Offset: 0x3b8
// Size: 0x106
function function_52240d18(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        fx = level.nightingale_custom_settings.activefx;
        if (isdefined(fx)) {
            tag = isdefined(level.nightingale_custom_settings.var_8751c5bd) ? level.nightingale_custom_settings.var_8751c5bd : "tag_origin";
            self.activefx = util::playfxontag(fieldname, fx, self, tag);
        }
        return;
    }
    if (isdefined(self.activefx)) {
        stopfx(fieldname, self.activefx);
        self.activefx = undefined;
    }
}

