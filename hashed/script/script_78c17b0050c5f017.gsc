// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\ai\systems\fx_character.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_2303c104;

// Namespace namespace_2303c104/namespace_2303c104
// Params 0, eflags: 0x5
// Checksum 0x3a37b9f7, Offset: 0x158
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_1e60252f388011fb", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 0, eflags: 0x0
// Checksum 0xb521cfc8, Offset: 0x1a0
// Size: 0x144
function function_70a657d8() {
    if (!zm_utility::is_survival()) {
        return;
    }
    if (is_true(getgametypesetting(#"hash_1e1a5ebefe2772ba"))) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_7029ea8551fb906f")) && !getdvarint(#"hash_730311c63805303a", 0)) {
        return;
    }
    clientfield::register("actor", "sr_horde_hunt_fx", 1, 1, "int", &function_4d144c6a, 0, 0);
    clientfield::register("world", "sr_horde_hunt_decals", 1, 2, "int", &function_b7e9f79d, 0, 0);
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 7, eflags: 0x0
// Checksum 0x671ead85, Offset: 0x2f0
// Size: 0x144
function function_4d144c6a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1 && isdefined(self)) {
        self util::waittill_dobj(fieldname);
        if (!isdefined(self)) {
            return;
        }
        function_239993de(fieldname, #"hash_6258a90cdd74e1e0", self, "tag_origin");
        if (self.var_44ac8cdd === 1 && isdefined(self.var_a0bf769b)) {
            stopfx(fieldname, self.var_a0bf769b);
            self.var_a0bf769b = util::playfxontag(fieldname, #"zm_ai/fx9_mech_head_light", self, "tag_headlamp_FX");
            fxclientutils::stopfxbundle(fieldname, self, self.fxdef);
            fxclientutils::playfxbundle(fieldname, self, self.fxdef);
        }
    }
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 7, eflags: 0x0
// Checksum 0x4382902a, Offset: 0x440
// Size: 0x128
function function_b7e9f79d(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        str_targetname = "hordehunt_corpses_1";
    } else if (bwastimejump == 2) {
        str_targetname = "hordehunt_corpses_2";
    } else {
        str_targetname = "hordehunt_corpses_3";
    }
    a_n_decals = findvolumedecalindexarray(str_targetname);
    foreach (n_decal in a_n_decals) {
        unhidevolumedecal(n_decal);
    }
}
